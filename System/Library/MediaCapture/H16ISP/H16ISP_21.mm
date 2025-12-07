void sub_22497BABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  Matrix<float>::~Matrix(&a51);
  v55 = *(v53 - 256);
  if (v55)
  {
    MEMORY[0x22AA55B40](v55, 0x1000C8052888210);
  }

  Matrix<float>::~Matrix(v53 - 248);
  _Unwind_Resume(a1);
}

void CalibrateRgbIr::SaveDebugPlist(id *this)
{
  if ((~gDbgLvl & 0x11) == 0)
  {
    v1 = this[126];
    if (byte_27D6F284F >= 0)
    {
      v2 = byte_27D6F284F;
    }

    else
    {
      v2 = qword_27D6F2840;
    }

    v3 = &v17;
    std::string::basic_string[abi:nn200100](&v17, v2 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v3 = v17.__r_.__value_.__r.__words[0];
    }

    if (v2)
    {
      if (byte_27D6F284F >= 0)
      {
        v4 = &gOutputDirName;
      }

      else
      {
        v4 = gOutputDirName;
      }

      memmove(v3, v4, v2);
    }

    *(&v3->__r_.__value_.__l.__data_ + v2) = 47;
    if (gCurrFrameId[23] >= 0)
    {
      v5 = gCurrFrameId;
    }

    else
    {
      v5 = *gCurrFrameId;
    }

    if (gCurrFrameId[23] >= 0)
    {
      v6 = gCurrFrameId[23];
    }

    else
    {
      v6 = *&gCurrFrameId[8];
    }

    v7 = std::string::append(&v17, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v18, "_Debug.plist", 0xCuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    CreateDirForFile(__p);
    v11 = MEMORY[0x277CCACA8];
    v12 = SHIBYTE(v20);
    v13 = __p[0];
    v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v11 stringWithCString:v15 encoding:v14];
    [v1 writeToFile:v16 atomically:1];

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22497BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v29;

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::ReleaseLocalResources(CalibrateRgbIr *this)
{
  v2 = *(this + 248);
  v17 = *(this + 232);
  v18 = v2;
  v20 = *(this + 35);
  v19 = *(this + 264);
  v21 = *(this + 18);
  v22 = *(this + 38);
  v24 = *(this + 41);
  v23 = *(this + 312);
  v3 = *(this + 22);
  v25 = *(this + 21);
  v4 = *(this + 23);
  v5 = *(this + 24);
  v29 = *(this + 50);
  v28 = v5;
  v27 = v4;
  v26 = v3;
  v6 = *(this + 408);
  v7 = *(this + 424);
  v8 = *(this + 440);
  v33 = *(this + 57);
  v31 = v7;
  v32 = v8;
  v30 = v6;
  ReleaseCamParams(&v17);
  v9 = *(this + 1);
  v17 = *this;
  v18 = v9;
  v19 = *(this + 2);
  v20 = *(this + 6);
  v21 = *(this + 56);
  v22 = *(this + 9);
  v23 = *(this + 5);
  v24 = *(this + 12);
  v25 = *(this + 104);
  v10 = *(this + 120);
  v11 = *(this + 136);
  v12 = *(this + 152);
  v29 = *(this + 21);
  v28 = v12;
  v27 = v11;
  v26 = v10;
  v13 = *(this + 11);
  v14 = *(this + 12);
  v15 = *(this + 13);
  v33 = *(this + 28);
  v31 = v14;
  v32 = v15;
  v30 = v13;
  return ReleaseCamParams(&v17);
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CalibrateRgbIr::PrepareXyzWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, _DWORD *a7)
{
  if (a6)
  {
    if (a7)
    {
      v8 = *(a2 + 188) * *(a2 + 184);
      Matrix<float>::Matrix(v44, 2, v8);
      if (v46 && v47)
      {
        if (v46 != 1)
        {
          v9 = *(a2 + 184);
          if (v9)
          {
            v10 = 0;
            v11 = __src;
            v12 = (__src + 4 * v47);
            v13 = *(a2 + 48);
            v14 = *(a2 + 8) / v13;
            v15 = *(a2 + 188);
            v16 = *(a2 + 16) / v13;
            do
            {
              if (v15)
              {
                v17 = 0;
                do
                {
                  v18 = v13 * (v10 + 0.5 - v14);
                  *v11++ = v18;
                  v19 = v13 * (v17 + 0.5 - v16);
                  *v12++ = v19;
                  ++v17;
                }

                while (v15 != v17);
              }

              ++v10;
            }

            while (v10 != v9);
          }

          Matrix<float>::Matrix(&v40, 2, v8);
          v40 = &unk_283814CF8;
          memcpy(__dst, __src, 4 * v47 * v46);
          Matrix<float>::Matrix(v36, *(a2 + 188), *(a2 + 184));
          Matrix<float>::Matrix(v32, *(a2 + 188), *(a2 + 184));
          if (v42 && v43)
          {
            if (v42 != 1)
            {
              v20 = v39;
              if (v39)
              {
                v21 = 0;
                v22 = v38;
                v23 = __dst;
                v24 = __dst + 4 * v43;
                v25 = *(a2 + 48);
                v26 = v34;
                do
                {
                  if (v22)
                  {
                    v27 = 0;
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    v31 = v35;
                    do
                    {
                      *(v37 + 4 * v21 + 4 * v28) = v23[v30] / v25;
                      if (v30 >= v26 || v21 >= v31)
                      {
                        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
                      }

                      *(v33 + 4 * v21 + 4 * v29) = *&v24[4 * v30++] / v25;
                      v29 += v31;
                      v28 += v20;
                      v27 -= 4;
                    }

                    while (v22 != v30);
                    v24 -= v27;
                    v23 = (v23 - v27);
                  }

                  ++v21;
                }

                while (v21 != v20);
              }

              operator new[]();
            }

            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    CalibrateRgbIr::PrepareXyzWorld();
  }

  CalibrateRgbIr::PrepareXyzWorld();
}

void sub_22497C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);
  Matrix<float>::~Matrix(va2);
  _Unwind_Resume(a1);
}

BOOL isPixelInRoi(_DWORD *a1, double *a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *&a3;
  result = 0;
  if (*a2 <= v3 && *a2 + a2[2] > v3)
  {
    LODWORD(v3) = a1[1];
    v4 = *&v3;
    v5 = a2[1];
    if (v5 <= v4 && v5 + a2[3] > v4)
    {
      return 1;
    }
  }

  return result;
}

BOOL CalibrateRgbIr::ValidateResults(CalibrateRgbIr *this, float a2, float a3)
{
  v3 = vceqq_f32(vdupq_lane_s64(__SPAIR64__(LODWORD(a3), LODWORD(a2)), 0), xmmword_2249D2BB0);
  v4 = vaddvq_s32(vandq_s8(v3, xmmword_2249D2BA0));
  if (vmaxv_u16(vmovn_s32(v3)))
  {
    NSLog(&cfstr_RgbIrCalibErro.isa, a2, a3);
  }

  return (v4 & 0xF) == 0;
}

void GridArea::GridArea(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, unsigned int a5)
{
  *(a1 + 24) = *a2;
  v5 = *(a3 + 8);
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 44) = v5;
  GridArea::PrepareGrid(a1, a2, a3, a4, a5);
}

void SaveToFile<float,float>(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  v57[19] = *MEMORY[0x277D85DE8];
  if ((gDbgLvl & 4) != 0)
  {
    if (a8)
    {
      v14 = a8;
    }

    else
    {
      v14 = a3 * a2;
    }

    if (byte_27D6F284F >= 0)
    {
      v15 = byte_27D6F284F;
    }

    else
    {
      v15 = qword_27D6F2840;
    }

    v16 = &v55;
    std::string::basic_string[abi:nn200100](&v55, v15 + 1);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v55.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (byte_27D6F284F >= 0)
      {
        v17 = &gOutputDirName;
      }

      else
      {
        v17 = gOutputDirName;
      }

      memmove(v16, v17, v15);
    }

    *(&v16->__r_.__value_.__l.__data_ + v15) = 47;
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = *a5;
    }

    if (v18 >= 0)
    {
      v20 = *(a5 + 23);
    }

    else
    {
      v20 = *(a5 + 8);
    }

    v21 = std::string::append(&v55, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v53 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (CreateDirForFile(__p))
    {
      goto LABEL_59;
    }

    v57[6] = 0;
    v23 = MEMORY[0x277D82860] + 64;
    v57[0] = MEMORY[0x277D82860] + 64;
    v24 = MEMORY[0x277D82810];
    v25 = *(MEMORY[0x277D82810] + 16);
    v55.__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
    *(v55.__r_.__value_.__r.__words + *(v55.__r_.__value_.__r.__words[0] - 24)) = v25;
    v26 = (&v55 + *(v55.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v26, &v55.__r_.__value_.__r.__words[1]);
    v27 = MEMORY[0x277D82860] + 24;
    v26[1].__vftable = 0;
    v26[1].__fmtflags_ = -1;
    v55.__r_.__value_.__r.__words[0] = v27;
    v57[0] = v23;
    MEMORY[0x22AA55890](&v55.__r_.__value_.__r.__words[1]);
    if (a6)
    {
      std::ofstream::open();
      if (!v56)
      {
        goto LABEL_58;
      }

      if (a2 && v14)
      {
        LODWORD(v28) = 0;
        v29 = 0;
        v30 = (a4 >> 2) - a3;
        do
        {
          if (a3)
          {
            v31 = 1;
            do
            {
              LODWORD(v54.__locale_) = *a1;
              std::ostream::write();
              ++a1;
              v32 = v31 + 1;
              if (v31 >= a3)
              {
                break;
              }

              v33 = v29 + v31++;
            }

            while (v33 < v14);
            v29 = v29 + v32 - 1;
          }

          v28 = (v28 + 1);
          a1 += v30;
        }

        while (v28 < a2 && v29 < v14);
      }
    }

    else
    {
      std::ofstream::open();
      if (!v56)
      {
        goto LABEL_58;
      }

      *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 16) = 10;
      if (a2)
      {
        v35 = 0;
        LODWORD(v36) = 0;
        v37 = 0;
        v50 = a4 >> 2;
        v38 = a3 - 1;
        while (1)
        {
          v48 = v36;
          v49 = v35;
          if (v38)
          {
            break;
          }

LABEL_53:
          v44 = std::ostream::operator<<();
          std::ios_base::getloc((v44 + *(*v44 - 24)));
          v45 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
          (v45->__vftable[2].~facet_0)(v45, 10);
          std::locale::~locale(&v54);
          std::ostream::put();
          std::ostream::flush();
          ++v37;
          v36 = (v48 + 1);
          v35 = v49 + v50;
          if (v36 >= a2)
          {
            goto LABEL_54;
          }
        }

        if (v14 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v14;
        }

        v40 = 1;
        while (v39 != v37)
        {
          v41 = std::ostream::operator<<();
          if (a7)
          {
            std::ios_base::getloc((v41 + *(*v41 - 24)));
            v42 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
            (v42->__vftable[2].~facet_0)(v42, 10);
            std::locale::~locale(&v54);
            std::ostream::put();
            std::ostream::flush();
          }

          else
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ",", 1);
          }

          ++v37;
          ++v35;
          if (v38 <= v40++)
          {
            goto LABEL_53;
          }
        }

        v47 = std::filebuf::close();
        v24 = MEMORY[0x277D82810];
        if (v47)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

LABEL_54:
    v46 = std::filebuf::close();
    v24 = MEMORY[0x277D82810];
    if (!v46)
    {
LABEL_57:
      std::ios_base::clear((&v55 + *(v55.__r_.__value_.__r.__words[0] - 24)), *(&v55 + *(v55.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
    }

LABEL_58:
    v55.__r_.__value_.__r.__words[0] = *v24;
    *(v55.__r_.__value_.__r.__words + *(v55.__r_.__value_.__r.__words[0] - 24)) = v24[3];
    MEMORY[0x22AA558A0](&v55.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x22AA55B20](v57);
LABEL_59:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22497CEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::ofstream::~ofstream(&a23, MEMORY[0x277D82810]);
  MEMORY[0x22AA55B20](a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x22AA558A0](a1 + 1);

  return std::ostream::~ostream();
}

void BuildHistogram<float,float>(float *a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v6 = a2;
  if (a3)
  {
    bzero(a2, 4 * a3);
  }

  if (a4)
  {
    v8 = a4;
    do
    {
      v9 = *a1++;
      v10 = vcvtmd_u64_f64(v9 / (1.0 / (a3 - 1)));
      if (v10 >= a3)
      {
        v10 = a3 - 1;
      }

      ++v6[v10];
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += *v6;
      *v6++ = v11;
      --v12;
    }

    while (v12);
  }
}

uint64_t Matrix<float>::Matrix(uint64_t a1, int a2, int a3, float a4)
{
  *a1 = &unk_283812D20;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t Matrix<unsigned char>::Matrix(uint64_t a1, int a2, int a3)
{
  *a1 = &unk_283814CC8;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = 0;
  return a1;
}

void Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  Matrix<unsigned char>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283814CC8;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void OneDimensionHorizontalFilterWithPadding()
{
  __assert_rtn("OneDimensionHorizontalFilterWithPadding", "CalibrateRgbIr.mm", 2468, "filter.Rows() == 1");
}

{
  __assert_rtn("OneDimensionHorizontalFilterWithPadding", "CalibrateRgbIr.mm", 2470, "(filterSize % 2) == 1");
}

void OneDimensionVerticalFilterWithPadding()
{
  __assert_rtn("OneDimensionVerticalFilterWithPadding", "CalibrateRgbIr.mm", 2493, "filter.Rows() == 1");
}

{
  __assert_rtn("OneDimensionVerticalFilterWithPadding", "CalibrateRgbIr.mm", 2495, "(filterSize % 2) == 1");
}

void CalibrateRgbIr::PrepareGridCalculation(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "PrepareGridCalculation";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Error creating textures => Aborting Rgb-Ir run\n", &v1, 0xCu);
}

void CalibrateRgbIr::PrepareGridCalculation()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "RGB-IR: %s: Invalid input: rows: %u, cols: %u.\n", v3, 0x18u);
}

void CalibrateRgbIr::ApplyGaussian2DFilter()
{
  __assert_rtn("ApplyGaussian2DFilter", "CalibrateRgbIr.mm", 1206, "input.Cols() == output.Cols() && input.Rows() == output.Rows()");
}

{
  __assert_rtn("ApplyGaussian2DFilter", "CalibrateRgbIr.mm", 1208, "input.Cols() >= relevantWidth");
}

void CalibrateRgbIr::PrepareXyzWorld()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 numOfGoodPts is %d < 256 => Aborting Rgb-Ir run\n", v1, 0x12u);
}

{
  __assert_rtn("PrepareXyzWorld", "CalibrateRgbIr.mm", 2162, "goodIdxRoiMask");
}

{
  __assert_rtn("PrepareXyzWorld", "CalibrateRgbIr.mm", 2161, "goodIdx");
}

void vDSPImgfir<float>()
{
  __assert_rtn("vDSPImgfir", "VdspSpecialization.hpp", 543, "nRows2%2 == 1");
}

{
  __assert_rtn("vDSPImgfir", "VdspSpecialization.hpp", 542, "nCols2%2 == 1");
}

uint64_t SaveToFile(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26[19] = *MEMORY[0x277D85DE8];
  if ((gDbgLvl & 4) != 0)
  {
    v3 = result;
    v26[6] = 0;
    v4 = MEMORY[0x277D82860] + 64;
    v26[0] = MEMORY[0x277D82860] + 64;
    v5 = MEMORY[0x277D82810];
    v6 = *(MEMORY[0x277D82810] + 16);
    v24 = *(MEMORY[0x277D82810] + 8);
    *(&v25[-1] + *(v24 - 24)) = v6;
    v7 = (&v25[-1] + *(v24 - 24));
    std::ios_base::init(v7, v25);
    v8 = MEMORY[0x277D82860] + 24;
    v7[1].__vftable = 0;
    v7[1].__fmtflags_ = -1;
    v24 = v8;
    v26[0] = v4;
    MEMORY[0x22AA55890](v25);
    if (byte_27D6F284F >= 0)
    {
      v9 = byte_27D6F284F;
    }

    else
    {
      v9 = qword_27D6F2840;
    }

    v10 = &v21;
    std::string::basic_string[abi:nn200100](&v21, v9 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v21.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (byte_27D6F284F >= 0)
      {
        v11 = &gOutputDirName;
      }

      else
      {
        v11 = gOutputDirName;
      }

      memmove(v10, v11, v9);
    }

    *(&v10->__r_.__value_.__l.__data_ + v9) = 47;
    v12 = *(v3 + 23);
    if (v12 >= 0)
    {
      v13 = v3;
    }

    else
    {
      v13 = *v3;
    }

    if (v12 >= 0)
    {
      v14 = *(v3 + 23);
    }

    else
    {
      v14 = *(v3 + 8);
    }

    v15 = std::string::append(&v21, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v23 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (!CreateDirForFile(__p))
    {
      std::ofstream::open();
      if (v25[15])
      {
        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v25[-1] + *(v24 - 24)), *(&v25[3] + *(v24 - 24)) | 4);
        }
      }

      else
      {
        v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Could not open file [", 21);
        if (v23 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        if (v23 >= 0)
        {
          v19 = HIBYTE(v23);
        }

        else
        {
          v19 = __p[1];
        }

        v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, v18, v19);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, "] for writing.\n", 15);
      }
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    v24 = *v5;
    *(&v25[-1] + *(v24 - 24)) = v5[3];
    MEMORY[0x22AA558A0](v25);
    std::ostream::~ostream();
    return MEMORY[0x22AA55B20](v26);
  }

  return result;
}

void sub_22497DA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a23);
  _Unwind_Resume(a1);
}

uint64_t CreateDirForFile(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v9])
  {
    goto LABEL_11;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:&stru_28381ECE0];

  if (v5)
  {
LABEL_10:
    if (![v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
LABEL_13:
    v6 = v2;
    goto LABEL_14;
  }

  v6 = [v2 stringByDeletingLastPathComponent];

  if (![v3 fileExistsAtPath:v6 isDirectory:&v9] || (v9 & 1) == 0)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

void sub_22497DBC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x22AA558A0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](a1 + 52);
  return a1;
}

void SaveToFileWithPrefix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gCurrFrameId[23] >= 0)
  {
    v6 = gCurrFrameId[23];
  }

  else
  {
    v6 = *&gCurrFrameId[8];
  }

  v7 = &v14;
  std::string::basic_string[abi:nn200100](&v14, v6 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v14.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (gCurrFrameId[23] >= 0)
    {
      v8 = gCurrFrameId;
    }

    else
    {
      v8 = *gCurrFrameId;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  SaveToFile(__p, a2, a3);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22497DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CreateDir(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v6] && (v6 & 1) != 0 || (objc_msgSend(v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, 0, 0) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t InitCamParams(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t ReleaseCamParams(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    MEMORY[0x22AA55B60](v2, 0x1000C4052888210);
    *(a1 + 40) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = MEMORY[0x22AA55B60](result, 0x1000C4052888210);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t GetFileSize(uint64_t *a1)
{
  v12[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10, a1, 6);
  if (v11[15])
  {
    std::istream::tellg();
    v2 = v9;
  }

  else
  {
    v3 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to open file ", 20);
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, v5, v6);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ".\n", 2);
    v2 = 0;
  }

  v10[0] = *MEMORY[0x277D82808];
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x22AA558A0](v11);
  std::istream::~istream();
  MEMORY[0x22AA55B20](v12);
  return v2;
}

void sub_22497E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ifstream::~ifstream(&a26, MEMORY[0x277D82808]);
  MEMORY[0x22AA55B20](&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x22AA55890](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22497E294(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

uint64_t SavePixelBufferWithMetadataToFile(__CVBuffer *a1, const void **a2)
{
  v36[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v32;
  std::string::basic_string[abi:nn200100](v32, v4 + 4);
  if (v33 < 0)
  {
    v5 = v32[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".raw");
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  std::ofstream::basic_ofstream(&v34, v32, 4);
  if (v35[15])
  {
    if (CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      NSLog(&cfstr_RgbIrCalibS.isa, "Could not lock pixel buffer.");
      v8 = 4294967294;
    }

    else
    {
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
          CVPixelBufferGetWidthOfPlane(a1, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
          if (HeightOfPlane)
          {
            v14 = BaseAddressOfPlane;
            do
            {
              std::ostream::write();
              v14 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }
        }
      }

      else
      {
        Height = CVPixelBufferGetHeight(a1);
        CVPixelBufferGetWidth(a1);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        if (Height)
        {
          v18 = BaseAddress;
          do
          {
            std::ostream::write();
            v18 += BytesPerRow;
            --Height;
          }

          while (Height);
        }
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v35[-1] + *(v34 - 24)), *(&v35[3] + *(v34 - 24)) | 4);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      v19 = CVBufferGetAttachments(a1, kCVAttachmentMode_ShouldPropagate);
      v20 = MEMORY[0x277CCACA8];
      if (*(a2 + 23) >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = a2[1];
      }

      v22 = __p;
      std::string::basic_string[abi:nn200100](__p, v21 + 6);
      if (v31 < 0)
      {
        v22 = __p[0];
      }

      if (v21)
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        memmove(v22, v23, v21);
      }

      strcpy(v22 + v21, ".plist");
      v24 = v31;
      v25 = __p[0];
      v26 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
      if (v24 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = v25;
      }

      v28 = [v20 stringWithCString:v27 encoding:v26];
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      [v19 writeToFile:v28 atomically:1];

      v8 = 0;
    }
  }

  else
  {
    v9 = v32;
    if (v33 < 0)
    {
      v9 = v32[0];
    }

    NSLog(&cfstr_RgbIrCalibCoul.isa, v9);
    v8 = 0xFFFFFFFFLL;
  }

  v34 = *MEMORY[0x277D82810];
  *(&v35[-1] + *(v34 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x22AA558A0](v35);
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](v36);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  return v8;
}

void sub_22497E6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::ofstream::~ofstream(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x22AA55890](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22497E920(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

uint64_t PrepareVImgBuffersFromCVPixBuffer(__CVBuffer *a1, vImage_Buffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    return 0xFFFFFFFFLL;
  }

  a2->data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  a2->height = Height;
  a2->width = Width;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  result = 0;
  a2->rowBytes = BytesPerRowOfPlane;
  return result;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x22AA558A0](a1 + 2);

  return std::istream::~istream();
}

void PearlIRIsf::~PearlIRIsf(PearlIRIsf *this)
{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x22AA55B60);
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

double Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    v5 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v5;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v7);
    *&v5 = v7;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  return *&v5;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

double Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  if (*(a1 + 1) == 1)
  {
    v5 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v5;
  }

  else
  {
    a2();
    *&v5 = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

  return *&v5;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  memset(v10, 0, sizeof(v10));
  v6 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v10);
      v6 = v8;
      if (!v8)
      {
        return DERParseBoolean(&v10[1] + 1, a4);
      }
    }
  }

  return v6;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v8);
      if (!v7)
      {
        if (DERParseInteger(&v8[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v8);
      if (!v7)
      {
        if (DERParseInteger64(&v8[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v10);
    if (v8)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v9 = v12;
      *a4 = *(&v11 + 1);
      *a5 = v9;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, &v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(&v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, (a3 + 88)))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6_2(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, BOOL *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(v18, 0xA0uLL);
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v18, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v18))
      {
        if (v19[0])
        {
          DERImg4DecodeContentFindItemWithTag(v19, 0x2000000000000010, &v17);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v17, 0x2000000000000011, &v16);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v16, a2, &v15);
                if (v14)
                {
                  return;
                }

                *a5 = v15 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v16, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = a1 + 7;
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = a1 + 9;
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = a1 + 9;
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t (**a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v14 = a3[1];
  if (v14 && (v15 = (v14)(a2, a6)) != 0 && !memcmp((a2 + 328), v15, **(a4 + 32)))
  {
    v16 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v20, &v21, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v20, v21, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v16 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v17 = a3[2];
    v18 = (a2 + 40);
    v19 = a1 | 0xE000000000000000;
    if (v17)
    {
      result = (v17)(v18, v19, 0x2000000000000011, v22, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v18, v19, 0x2000000000000011uLL, v22);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v22[1] + 8);
  }

  if (v16)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a5 != 4096 && a5 != 3072)
  {
    return 0xFFFFFFFFLL;
  }

  v13[2] = 0;
  v13[3] = 0;
  v6 = (a5 + 63) >> 6;
  MEMORY[0x28223BE20](a1);
  v8 = (v12 - v7);
  bzero(v12 - v7, v7);
  *v8 = v6;
  v9 = *(a1 + 8);
  v13[0] = *a1;
  v13[1] = v9;
  memset(v12, 0, sizeof(v12));
  if (DERParseSequenceToObject(v13, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v12, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v8, *(&v12[0] + 1), *&v12[0]))
  {
    return 0xFFFFFFFFLL;
  }

  if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
  {
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  LOBYTE(v12[0]) = 0;
  v11 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v11 && (v12[0] & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    if (*v10)
                    {
                      result = 0xFFFFFFFFLL;
                      if (a2 == 516 && **v10 == a6)
                      {
                        if (a1 >= 0xFFFFFFFFFFFFFE00)
                        {
                          __break(0x5513u);
                        }

                        else
                        {
                          MEMORY[0x28223BE20](0xFFFFFFFFLL);
                          bzero(&v12, 0x638uLL);
                          v11 = 64;
                          result = ccrsa_pub_init(&v11, 0x200uLL, a1);
                          if (!result)
                          {
                            if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
                            {
                              result = ccrsa_verify_pkcs1v15_digest();
                              if (!result)
                              {
                                if (cc_cmp_safe())
                                {
                                  return 0xFFFFFFFFLL;
                                }

                                return 0;
                              }
                            }

                            else
                            {
                              v13 = 0;
                              LODWORD(result) = ccrsa_verify_pkcs1v15();
                              if (!result && (v13 & 1) != 0)
                              {
                                return 0;
                              }

                              if (result)
                              {
                                return result;
                              }

                              else
                              {
                                return 0xFFFFFFFFLL;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      return 0xFFFFFFFFLL;
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

  return result;
}

uint64_t ccrsa_pub_init(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return MEMORY[0x282201880]();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    verify_ecdsa_sig(v12, v10, v11);
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

void verify_ecdsa_sig(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[7] = 0;
  ccec_x963_import_pub_size();
  if (ccec_keysize_is_supported())
  {
    cp = ccec_get_cp();
    v5 = *cp;
    if (*cp >> 61 || !is_mul_ok(8 * v5, 3uLL))
    {
      __break(0x550Cu);
    }

    else
    {
      v6 = 24 * v5;
      v7 = __CFADD__(v6, 16);
      v8 = v6 + 16;
      if (!v7)
      {
        v7 = __CFADD__(v8, 16);
        v9 = v8 + 16;
        if (!v7)
        {
          v10 = cp;
          v11 = v9 - 1;
          MEMORY[0x28223BE20](cp);
          v13 = &v14[-v12];
          bzero(&v14[-v12], v12);
          if (v11 < 0x10)
          {
            __break(1u);
          }

          else
          {
            *v13 = v10;
            if (!MEMORY[0x22AA55DB0](v10, a1[1], *a1, v13))
            {
              ccec_verify();
            }
          }

          return;
        }
      }
    }

    __break(0x5500u);
  }
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = 0;
  v9 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v11, 0x20uLL, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(&v12 + 1))
  {
    result = DEROidCompare(&v11, &oidEcPubKey);
    if ((result & 1) == 0)
    {
      if (*(&v12 + 1) != 2 || *v12 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v12 == -1)
      {
        __break(0x5513u);
        return result;
      }

      if (*(v12 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!DEROidCompare(&v11, *(a3 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3)(*a2, a2[1], v13, **(a3 + 32), a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (DERParseBitString((a2 + 4), &v8, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(a3 + 16))(*a1, a1[1], v8, v9, v13, **(a3 + 32), a3, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
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

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x277D85DE8];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x277D85DE8];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

void H16ISPGraphExclaveANDKNode::onMessageProcessing(int a1, _DWORD *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "onMessageProcessing";
    v7 = 1024;
    v8 = a1;
    _os_log_error_impl(&dword_2247DB000, v4, OS_LOG_TYPE_ERROR, "%s - Failed to run ANDK algorithm, ret=0x%X\n", &v5, 0x12u);
  }

  *a2 = a1;
}

void H16ISPGraphExclaveANDKNode::onMessageProcessing(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "onMessageProcessing";
    _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - ANDK Graph Node Message invalid\n", &v3, 0xCu);
  }

  *a1 = -536870206;
}

void H16ISPGraphExclaveRGBANDKNode::runANDKAlgorithm(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "EK ANDK RunKit Command failed, ret=%d\n", v2, 8u);
}

void DisjointSet::SetRoot()
{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 109, "nRoot <= i");
}

{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 105, "nRoot <= i");
}

void H16ISP::H16ISPGraphExclaveEyeReliefNode::onMessageProcessing(int a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "onMessageProcessing";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "[Exclaves] H16ISPGraphExclaveEyeReliefNode::%s EK Runkit ER Runkit failed for reqid 0x%08X ret %d\n", &v3, 0x18u);
}

void H16ISP::H16ISPFrameReceiverBufferPool::PreMapClientSurface()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ISP_PreMapClientSurface failed: 0x%08X\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to create pixel buffer, res=0x%08x\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to allocate buffer, res=0x%08x\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Cannot allocate buffer, buffer pool is uninitialized and automatic allocation mode is enabled, res=0x%08x\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Pixel buffer reference is null, res=0x%08x\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to allocate buffer, result=0x%08X\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to set buffer configuration, result=0x%08X\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pH16ISPDevice->ISP_SendBuffers failed, result=0x%08X\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::setBufferConfig()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - SetSharedBufferPoolInfo error: res=0x%08X\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to allocate buffer ret=0x%08x\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to set buffer configuration ret=0x%08x\n", v2, v3, v4, v5, v6);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - failed to send %u buffers ret=0x%08x\n", v3, 0x18u);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::InitiateShutdown()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ReturnAllSharedBuffersInPool failed, result=0x%08X\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::SendBuffer()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pH16ISPDevice->ISP_SendBuffers failed, result=0x%08X\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - failed to run face kit first pass err=%u reqid=0x%08x\n", v3, 0x18u);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - unrecognized confidence level=%u\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - unrecognized failure type=%u\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to copy decoded face tracking output cvaret=%d\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to create result dictionary for reqid=0x%08x\n", v2, v3, v4, v5, v6);
}

void convertExpressionActivation()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - unrecognized activation expression=%u\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "updateEnabledObjects";
  _os_log_debug_impl(&dword_2247DB000, log, OS_LOG_TYPE_DEBUG, "%s - Updating the enabled objects array!\n", &v1, 0xCu);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Face Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315650;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Head Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315650;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Hand Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::onMessageProcessing(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "onMessageProcessing";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Skipped processing object detection algorithm!\n", &v3, 0xCu);
  }

  *a1 = 0;
}

void H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::InvokeEKRunKit(_DWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "InvokeEKRunKit";
    v5 = 1024;
    v6 = 0;
    _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: IR EK Object Detection RunKit failed, EK result=%{BOOL}d\n", &v3, 0x12u);
  }

  *a1 = -536870166;
}

void H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary()
{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachFacesDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate face dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachHeadsDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate head dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachHumanHandsDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate hand dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachHumanFullBodiesDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate human full body dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachHumanBodiesDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate human body dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachCatBodiesDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate cat body dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachCatHeadsDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate cat head dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachDogBodiesDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate dog body dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "AttachDogHeadsDict";
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate dog head dictionary! Skipping!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "GenerateRGBObjectDictionary";
    _os_log_impl(&dword_2247DB000, v0, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Could not allocate memory for detected objects info dictionary!\n", &v2, 0xCu);
  }
}

void H16ISP::ProjectorManager::applyUserDefinedType()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  LOWORD(v3) = 1024;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_3_1(&dword_2247DB000, v0, v1, "User defined projector mode: mode %d - pulse %d is not a number\n", v2, v3);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISP::ProjectorManager::applyUserDefinedType(const __CFArray *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109632;
  v4[1] = a2;
  v5 = 2048;
  Count = CFArrayGetCount(a1);
  v7 = 1024;
  v8 = 6;
  _os_log_error_impl(&dword_2247DB000, a3, OS_LOG_TYPE_ERROR, "User defined projector mode: mode %d has %ld parameters. Expecting %d\n", v4, 0x18u);
}

void H16ISP::ProjectorManager::applyUserDefinedType(_WORD *a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = *a1;
  OUTLINED_FUNCTION_3_1(&dword_2247DB000, a2, a3, "User defined projector mode: Failed to add LUT entry for user-defined mode %d - actually mode %d\n", 67109376, v3);
}

void H16ISP::ProjectorManager::applyUserDefinedType(const __CFArray *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  Count = CFArrayGetCount(a1);
  v5 = 1024;
  v6 = 64;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "User defined projector mode: sequence length (%ld) over maximum (%d)\n", &v3, 0x12u);
}

void FLD::GetAFEDelayV()
{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 130, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 113, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 96, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 78, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 61, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 138, "false");
}

void FLD::GetAFEAddress()
{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 175, "afeGeom.cellCountY >= delayV + 1");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 176, "afeGeom.cellStartY < afeGeom.cellCountY");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 192, "false");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 222, "false");
}

void FLD::GetInputAFE()
{
  __assert_rtn("GetInputAFE", "FLD.cpp", 366, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 367, "afeGeom.initV == 2");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 360, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 361, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 356, "afeGeom.initV == 2 || afeGeom.initV == 3");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 355, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 348, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 461, "input.afeStride > 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 347, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 372, "false");
}

void FLD::ComputeBinnedXtalk()
{
  __assert_rtn("nextH", "FLD.cpp", 276, "false");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 609, "h <= NROWSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 610, "w <= NCOLSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 543, "false");
}

void FLD::ComputeBinnedXtalkNeon()
{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 797, "h <= NROWSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 798, "w <= NCOLSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 653, "false");
}

void FLD::Process()
{
  __assert_rtn("Process", "FLD.cpp", 968, "false");
}

{
  __assert_rtn("Process", "FLD.cpp", 915, "pAfe != nullptr");
}

{
  __assert_rtn("Process", "FLD.cpp", 914, "pContext != nullptr");
}

void H16ISP::createPixelBufferPool(H16ISP *this, int a2, int a3, int a4, CVPixelBufferPoolRef *a5, __CVPixelBufferPool **a6)
{
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v9 = Mutable;
  v10 = OUTLINED_FUNCTION_0_1();
  v13 = CFNumberCreate(v10, v11, v12);
  if (!v13)
  {
    v28 = v9;
LABEL_15:
    CFRelease(v28);
    return;
  }

  v14 = v13;
  v15 = OUTLINED_FUNCTION_0_1();
  v18 = CFNumberCreate(v15, v16, v17);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v19 = OUTLINED_FUNCTION_0_1();
  v22 = CFNumberCreate(v19, v20, v21);
  if (!v22)
  {
LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v23 = OUTLINED_FUNCTION_0_1();
  v26 = CFNumberCreate(v23, v24, v25);
  if (!v26)
  {
LABEL_20:
    v28 = 0;
    goto LABEL_8;
  }

  v27 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = v27;
  if (v27)
  {
    CFDictionarySetValue(v27, *MEMORY[0x277CC4DE8], v9);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4E30], v14);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4EC8], v18);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4DD8], v22);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4E50], v26);
    CVPixelBufferPoolCreate(v7, 0, v28, a5);
  }

LABEL_8:
  CFRelease(v9);
  CFRelease(v14);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v28)
  {
    goto LABEL_15;
  }
}

void H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onMessageProcessing(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "onMessageProcessing";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "[Exclaves] H16ISPGraphAttentionDetectionNode::%s AD RunKit failed, ret=%d\n", &v2, 0x12u);
}

void AppleH16PhotonDetectorDevice::ReadCalibrationData(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "ReadCalibrationData";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - Invalid buffer passed to read photon detector calibration data\n", &v1, 0xCu);
}

uint64_t H16ISPCaptureDeviceRelinquishStreams(uint64_t a1, __CFString *a2)
{
  result = 4294954516;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(7u, DerivedStorage, 0, 0, 0, a2, 0);
    pthread_mutex_lock((DerivedStorage + 32));
    if (*DerivedStorage)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = os_log_create("com.apple.isp", "plugin");
      }

      if (OUTLINED_FUNCTION_41())
      {
        OUTLINED_FUNCTION_36();
        _os_log_error_impl(v36, v37, v38, v39, v40, 0xCu);
      }

      pthread_mutex_unlock((DerivedStorage + 32));
      return 4294954511;
    }

    else
    {
      LockStreamMutexes(*(DerivedStorage + 120));
      if (CFArrayGetCount(a2))
      {
        v6 = 0;
        v7 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(a2, v6);
          FigCaptureStreamGetFigBaseObject();
          v8 = CMBaseObjectGetDerivedStorage();
          if (*(v8 + 160))
          {
            break;
          }

          if (*(v8 + 1))
          {
            ++v7;
          }

          if (++v6 >= CFArrayGetCount(a2))
          {
            goto LABEL_17;
          }
        }

        UnlockStreamMutexes(*(DerivedStorage + 120));
        pthread_mutex_unlock((DerivedStorage + 32));
        return 4294954516;
      }

      else
      {
        v7 = 0;
LABEL_17:
        theArray = a2;
        if (CFArrayGetCount(*(DerivedStorage + 120)))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            CFArrayGetValueAtIndex(*(DerivedStorage + 120), v9);
            FigCaptureStreamGetFigBaseObject();
            v11 = CMBaseObjectGetDerivedStorage();
            if (*(v11 + 1) || *(v11 + 2))
            {
              ++v10;
            }

            ++v9;
          }

          while (v9 < CFArrayGetCount(*(DerivedStorage + 120)));
        }

        else
        {
          v10 = 0;
        }

        if (v7 == v10)
        {
          v12 = *(DerivedStorage + 216);
          if (v12)
          {
            MEMORY[0x22AA55B60](v12, 0x1000C40488540DALL);
            *(DerivedStorage + 216) = 0;
            H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(DerivedStorage + 24));
          }
        }

        v13 = theArray;
        if (CFArrayGetCount(theArray))
        {
          v14 = 0;
          v15 = MEMORY[0x277D86220];
          v41 = DerivedStorage;
          do
          {
            CFArrayGetValueAtIndex(v13, v14);
            FigCaptureStreamGetFigBaseObject();
            v16 = CMBaseObjectGetDerivedStorage();
            if (!*v16)
            {
              v17 = v16;
              if (v16[1])
              {
                v18 = 0;
                v16[1] = 0;
                v16[4605] = 1;
                do
                {
                  v19 = &v17[v18];
                  if (*&v17[v18 + 856])
                  {
                    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v20 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
                    }

                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      v21 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v21, v22, v23, "%s - primaryScalerOutput initialClientBuffers weren't released\n", v24, 0xCu);
                    }

                    CVPixelBufferRelease(v19[107]);
                    v19[107] = 0;
                  }

                  if (v19[132])
                  {
                    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v25 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
                    }

                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      v26 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v26, v27, v28, "%s - secondaryScalerOutput initialClientBuffers weren't released\n", v29, 0xCu);
                    }

                    CVPixelBufferRelease(v19[132]);
                    v19[132] = 0;
                  }

                  v30 = &v17[v18];
                  if (*&v17[v18 + 1256])
                  {
                    v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v31 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
                    }

                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      v32 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v32, v33, v34, "%s - intermediateTapOutput initialClientBuffers weren't released\n", v35, 0xCu);
                    }

                    CVPixelBufferRelease(v30[157]);
                    v30[157] = 0;
                  }

                  v18 += 8;
                }

                while (v18 != 32);
                DerivedStorage = v41;
                H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(v41 + 24), *(v17 + 39));
                SavePFLFile(v41);
                v13 = theArray;
              }

              H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(DerivedStorage + 24), *(v17 + 39), 0, 0);
            }

            ++v14;
          }

          while (v14 < CFArrayGetCount(v13));
        }

        UnlockStreamMutexes(*(DerivedStorage + 120));
        pthread_mutex_unlock((DerivedStorage + 32));
        return 0;
      }
    }
  }

  return result;
}

void CopySupportedFormatsArray(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "ANSTFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "HITHFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "ANSTThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void SetMaximumAllowedFrameRate()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void SetFormatIndex()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetExternalSyncFrameRateRational()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void StillImageCaptureNow()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetTemporalNoiseReductionConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetFaceDetectionEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAFWindowParams()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void RawImageProcessGo()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetDeviceOrientation()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAWB1stGainManual()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetVideoOutputHandlers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetVideoOutputsEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetVideoOutputsEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void SetVideoOutputConfigurations()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetVideoOutputConfigurations(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

uint64_t SetVideoOutputConfigurations(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  return a3 & 1;
}

void CopyVideoOutputConfigurations()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyGeometricDistortionCorrectedRects()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetVibeMitigationEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSynchronizedStreamsSlaveConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetColorSpace()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAPSMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void CopyAPSMode()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHighCurrentTorchEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAFCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAFCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSphereCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopySphereCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSphereEndStopCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopySphereEndStopCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAPSSphereInterCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSSphereInterCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetKeypointDetectionConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSceneClassifierVersion()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetLumaHistogramEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetAutoExposureTables()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void TimeMachineSuspendNow()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyTimeMachinePTSRange()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetContentAwareEnhancement()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetContentAwareAWBEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyNRSharpeningConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSOffsetEstimatorInfo()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetStreamingTuningProfile()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetLTMCurve()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLSCStrength()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTimeLapseCaptureConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHDRImageStatisticsEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyTOFAutoFocusEstimatorResults()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyAutoFocusDriverShortStats()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetLocalHistogramsEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetDynamicVoltageEnable()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EnableIRFramesToPDE()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetSIFROverrideMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetSplitPDOverrideMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetAPSActuator()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetMasterSlaveAPSFocus()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMasterSlaveContrastFocus()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLPDPFilterEnable()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHighSpeedOutputLevel()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLinkFrequencyIndex()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTestPattern()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSPosition()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetRawImageProcessStillFlowEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetReplayFrame()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetJasperBuiltInSequence()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetTimeOfFlightConfiguration()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetObjectDetectionConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetHDRFusionEnable()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSwitchingFormatIndex()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSwitchingFormatIndex(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void SetActiveNondisruptiveSwitchingFormats()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyFlashCalibrationData()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetFocusBehavior()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetExclaveTestSuite()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMainToSIFRFrameRateRatio()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAWBTemporalStabilizationEnabled()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void CopyDCNUCVPixelBuffer()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetExternalSyncModeEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMLVNRConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetPrimaryFrameSkip(uint64_t a1, CFArrayRef *a2)
{
  CFArrayGetCount(*a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void SetPrimaryFrameSkip()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetActiveNondisruptiveStreamingFormats()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyStreamSensorRawOutputBufferPoolRequirements()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetStreamSensorRawOutputBufferPools()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetStreamSensorRawOutputRetainedBufferCounts()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyCalibratedRotationAngle()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTorchBeamWidth(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void SetMultiIlluminantWhiteBalanceEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMaximumFrameRateForBufferAllocation(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void SetMaximumFrameRateForBufferAllocation(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void SetSIFRControlMode()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetCameraControlsCacheExpiryDuration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetCameraControlsCacheExpiryDuration(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void StartJasperForInternalStreaming()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureStreamStartInternal()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureStreamStartInternal(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void StopJasperForInternalStreaming()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureStreamStopInternal()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetDefaultFormatIndexConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyGroupExtrinsics(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void SetGroupSynchronizationPrimary()
{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupMinSkippingRatio()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupMaxSlaveStreams()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupMaxSlaveTimeMachines()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMidFrameSynchronizationEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupNondisruptiveSwitchingFormatIndices()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetAWBStatisticsAveragingEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAEMatchIntegrationTimes()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetSynchronizedStreamsSensorRawOutputBufferPools()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetGroupAEWindowParams()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupAFWindowParams()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupROIForCameraControls()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupLumaHistogramROI()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void GroupStillImageCaptureNow()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetMultiCamConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetTOFAutoFocusEnabled()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetDARTCacheParameters()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetSensorAgileClockingEnable()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetProcessingSessionDefaultProcessingParameters()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPProcessingSessionCreate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void LogCaptureDeviceEvent()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPCaptureDeviceCreate_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPCaptureDeviceCreate_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_6()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_7()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureDeviceCreate_cold_10()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_11()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_12()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_13()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureDeviceCreate_cold_14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_15()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_16()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_17()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureDeviceCreate_cold_18()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_19()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_20()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_21()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_22()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_23()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_24()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_25()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_26()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_27()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_30()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_31()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_32()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_33()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ExclaveInitFlickerTimer()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void InitSupportedFormatsForCaptureStream(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "InitSupportedFormatsForCaptureStream";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void H16ISPCaptureDeviceInvalidate()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceInvalidate(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0);
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MyH16ISPDeviceMessageNotification()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MyH16ISPServicesRemoteNotification()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MyH16ISPFrameReceivedProc()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPDebugDepthFrameFileWriter()
{
  if (__cxa_guard_acquire(byte_2810037F8))
  {
    _MergedGlobals = dispatch_queue_create("Debug PCE Depth Writer", MEMORY[0x277D85CD8]);

    __cxa_guard_release(byte_2810037F8);
  }
}

void LightSourceMaskInfoAttach()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void LightSourceMaskVersatileBayerPatternAttach()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ImageRegistrationInfoAttach()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetMinimumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMaximumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMinimumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMinimumAutoExposureFrameRate()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMaximumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMaximumAutoExposureFrameRate()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetTargetFrameRate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ApplyNoiseReductionConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}