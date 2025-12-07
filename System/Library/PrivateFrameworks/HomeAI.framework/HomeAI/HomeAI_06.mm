void sub_22D229674(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::operator=(cv::Mat *this, cv::Mat *a2)
{
  if (this != a2)
  {
    v4 = *(a2 + 3);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    v5 = *(this + 3);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(this);
    }

    *(this + 2) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    if (*(this + 1) <= 0)
    {
      *(this + 3) = 0;
      *this = *a2;
    }

    else
    {
      v6 = 0;
      v7 = *(this + 8);
      do
      {
        *(v7 + 4 * v6++) = 0;
        v8 = *(this + 1);
      }

      while (v6 < v8);
      *(this + 3) = 0;
      *this = *a2;
      if (v8 > 2)
      {
        goto LABEL_15;
      }
    }

    v9 = *(a2 + 1);
    if (v9 <= 2)
    {
      *(this + 1) = v9;
      *(this + 1) = *(a2 + 1);
      v10 = *(a2 + 9);
      v11 = *(this + 9);
      *v11 = *v10;
      v11[1] = v10[1];
LABEL_16:
      *(this + 2) = *(a2 + 2);
      *(this + 6) = *(a2 + 6);
      *(this + 1) = *(a2 + 1);
      *(this + 7) = *(a2 + 7);
      return this;
    }

LABEL_15:
    cv::Mat::copySize(this, a2);
    goto LABEL_16;
  }

  return this;
}

void *anonymous namespace::calcSharrDeriv(_anonymous_namespace_ *this, const cv::Mat *a2, cv::Mat *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v85 = v4;
  v95 = *MEMORY[0x277D85DE8];
  v10 = v3[2];
  v11 = v3[3];
  v84 = v3;
  v12 = *v3;
  if ((v12 & 7) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v91, "depth == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(&v90, "calcSharrDeriv");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(v92, -215, &v91, &v90, &__p, 53);
    cv::error(v92, v13);
  }

  v14 = ((v12 >> 3) & 0x1FF) + 1;
  v15 = (16 * v14 + 4091) & 0xFFF;
  v17 = *(v4 + 4) <= 2 && *(v4 + 8) == v10 && *(v4 + 12) == v11;
  if (!v17 || ((*v4 & 0xFFF) == v15 ? (v18 = *(v4 + 16) == 0) : (v18 = 1), v18))
  {
    v92[0] = v3[2];
    v92[1] = v11;
    cv::Mat::create(v4, 2, v92, v15, v5, v6);
  }

  v19 = (v14 * (v11 + 2) + 15) & 0xFFFFFFF0;
  v20 = 2 * v19 + 64;
  *v92 = v94;
  v93 = 2056;
  result = v94;
  if (v20 >= 0x809)
  {
    v93 = v20;
    operator new[]();
  }

  if (v10 >= 1)
  {
    v22 = 0;
    v23 = (v14 * v11);
    v24 = (&v94[v14 + 7] + 1) & 0xFFFFFFFFFFFFFFF0;
    v25 = 2 * v19;
    v26 = v10 - 2;
    v82 = (v10 - 1);
    v81 = v10 != 1;
    if (v10 == 1)
    {
      v26 = 0;
    }

    v80 = v26;
    v27 = v11 - 2;
    v28 = v23 - 8;
    if (v11 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = ((v12 >> 3) & 0x1FF) + 1;
    }

    v30 = v24 + 2 * v23;
    if (v11 <= 1)
    {
      v27 = 0;
    }

    v31 = v14 * v27;
    v79 = v24 + v25;
    v32 = v24 + v25 + 2 * v23;
    v33 = v24 + v25 + 2 * v31;
    v34 = v24 + v25 + 2 * v29;
    v35 = 2 * ((v12 >> 3) & 0x1FF);
    v36 = v35 ^ 0xFFFFFFFFFFFFFFFELL;
    v37 = v24 + (v35 ^ 0xFFFFFFFFFFFFFFFELL);
    v78 = (v12 >> 3) & 0x1FF;
    v38 = v25 - v35 - 2;
    v39 = v24 + v38;
    v40 = v35 + 2;
    v7.n128_u64[0] = 0x3000300030003;
    v7.n128_u64[1] = 0x3000300030003;
    v8.n128_u64[0] = 0xA000A000A000ALL;
    v8.n128_u64[1] = 0xA000A000A000ALL;
    v9.n128_u64[0] = 0xA0A0A0A0A0A0A0ALL;
    v41 = v35 + 2 + v25;
    v77 = v24 + 2;
    v76 = v24 + 2 + v25;
    v42 = v24 + 2 * v31;
    v86 = (&v94[v14 + 7] + 1) & 0xFFFFFFFFFFFFFFF0;
    v43 = v24 + 2 * v29;
    v83 = v10;
    do
    {
      v44 = v22;
      v45 = v22 - 1;
      if (!v22)
      {
        v45 = v81;
      }

      v46 = *(v84 + 2);
      v47 = **(v84 + 9);
      v48 = v47 * v45;
      ++v22;
      v49 = v80;
      if (v44 < v82)
      {
        v49 = v22;
      }

      v50 = v47 * v49;
      v87 = **(v85 + 9);
      v88 = *(v85 + 2);
      if (v23 >= 8)
      {
        v52 = 0;
        v53 = v86;
        do
        {
          v54 = *(v46 + v48 + v52);
          v55 = *(v46 + v50 + v52);
          *v53 = vmlal_u8(vmulq_s16(vaddl_u8(v55, v54), v7), *(v46 + v47 * v44 + v52), 0xA0A0A0A0A0A0A0ALL);
          *(v53 + v25) = vsubl_u8(v55, v54);
          v52 += 8;
          ++v53;
        }

        while (v52 <= v28);
        v51 = v52;
      }

      else
      {
        v51 = 0;
      }

      if (v51 < v23)
      {
        v56 = 0;
        v57 = v79 + 2 * v51;
        v58 = v86 + 2 * v51;
        v59 = v46 + v51 + v47 * v44;
        v60 = v46 + v50 + v51;
        v61 = v46 + v48 + v51;
        v62 = v23 - v51;
        do
        {
          v63 = *(v61 + v56);
          v64 = *(v60 + v56);
          *(v58 + 2 * v56) = 3 * (v64 + v63) + 10 * *(v59 + v56);
          *(v57 + 2 * v56++) = v64 - v63;
        }

        while (v62 != v56);
      }

      v65 = 0;
      do
      {
        *(v37 + v65) = *(v43 + v65);
        *(v30 + v65) = *(v42 + v65);
        *(v39 + v65) = *(v34 + v65);
        *(v32 + v65) = *(v33 + v65);
        v65 += 2;
      }

      while (v40 != v65);
      if (v23 >= 8)
      {
        v67 = 0;
        v68 = (v88 + v87 * v44 + 16);
        v69 = v86;
        do
        {
          v70 = vsubq_s16(*(v69 + v40), *(v69 + v36));
          v71 = vmlaq_s16(vmulq_s16(*(v69 + v25), v8), vaddq_s16(*(v69 + v38), *(v69 + v41)), v7);
          v96.val[1] = vextq_s8(v71, v71, 8uLL).u64[0];
          v96.val[0] = vextq_s8(v70, v70, 8uLL).u64[0];
          v72 = v68 - 8;
          vst2_s16(v72, v70);
          vst2_s16(v68, v96);
          v67 += 8;
          v69 += 16;
          v68 += 16;
        }

        while (v67 <= v28);
        v66 = v67;
      }

      else
      {
        v66 = 0;
      }

      if (v66 < v23)
      {
        v73 = 0;
        v74 = (v88 + v87 * v44 + 4 * v66 + 2);
        do
        {
          v75 = 3 * (*(v39 + 2 * v66 + 2 * v73) + *(v76 + 2 * (v78 + v66) + 2 * v73)) + 10 * *(v79 + 2 * v66 + 2 * v73);
          *(v74 - 1) = *(v77 + 2 * (v78 + v66) + 2 * v73) - *(v37 + 2 * v66 + 2 * v73);
          *v74 = v75;
          v74 += 2;
          ++v73;
        }

        while (v23 - v66 != v73);
      }
    }

    while (v22 != v83);
    result = *v92;
  }

  if (result != v94)
  {
    if (result)
    {
      return MEMORY[0x2318CB180](result, 0x1000C80BDFB0063, v7, v8, v9);
    }
  }

  return result;
}

void sub_22D229DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, std::exception a42)
{
  cv::Exception::~Exception(&a42);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void cv::calcOpticalFlowPyrLK(void (***a1)(uint64_t *__return_ptr), void (***a2)(uint64_t *__return_ptr), void (***a3)(void *__return_ptr, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, signed int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned int a17, int a18, double a19, int a20)
{
  v191[2] = *MEMORY[0x277D85DE8];
  (**a3)(v179, a3, 0xFFFFFFFFLL, a9, a10, a11, a12, a13, a14, a15, a16);
  if (a8 < 0 || a7->i32[0] < 3 || a7->i32[1] <= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v158, "maxLevel >= 0 && winSize.width > 2 && winSize.height > 2");
    std::string::basic_string[abi:ne200100]<0>(&v149, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, &v158, &v149, __p, 842);
    cv::error(&v167, v28);
  }

  v29 = cv::Mat::checkVector(v179, 2, 5, 1);
  v30 = v29;
  if ((v29 & 0x80000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v158, "(npoints = prevPtsMat.checkVector(2, CV_32F, true)) >= 0");
    std::string::basic_string[abi:ne200100]<0>(&v149, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, &v158, &v149, __p, 845);
    cv::error(&v167, v31);
  }

  if (!v29)
  {
    (*(*a4 + 152))(a4);
    (*(*a5 + 152))(a5);
    (*(*a6 + 152))(a6);
    goto LABEL_223;
  }

  if ((a20 & 4) == 0)
  {
    v167 = vrev64_s32(*v185);
    (*(*a4 + 128))(a4, &v167, v179[0] & 0xFFF, 0xFFFFFFFFLL, 1, 0);
  }

  (**a4)(&v158, a4, 0xFFFFFFFFLL);
  if (cv::Mat::checkVector(&v158, 2, 5, 1) != v30)
  {
    std::string::basic_string[abi:ne200100]<0>(&v149, "nextPtsMat.checkVector(2, CV_32F, true) == npoints");
    std::string::basic_string[abi:ne200100]<0>(__p, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v135, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, &v149, __p, v135, 859);
    cv::error(&v167, v32);
  }

  v121 = v159;
  v122 = v180;
  (*(*a5 + 136))(a5, v30, 1, 0, 0xFFFFFFFFLL, 1, 0);
  (**a5)(&v149, a5, 0xFFFFFFFFLL);
  v146 = &__p[8];
  v147 = v148;
  v148[1] = 0;
  v148[0] = 0;
  *__p = 1124007936;
  memset(&__p[4], 0, 60);
  if ((BYTE1(v149) & 0x40) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v135, "statusMat.isContinuous()");
    std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, v135, v188, &v127, 866);
    cv::error(&v167, v33);
  }

  v34 = v150;
  if (v30 >= 1)
  {
    memset(v150, 1, v30);
  }

  if (!(*(*a6 + 112))(a6))
  {
    v120 = 0;
    goto LABEL_47;
  }

  (*(*a6 + 136))(a6, v30, 1, 5, 0xFFFFFFFFLL, 1, 0);
  (**a6)(&v167, a6, 0xFFFFFFFFLL);
  if (v170)
  {
    atomic_fetch_add(v170, 1u);
  }

  if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  *&__p[16] = 0;
  memset(&__p[32], 0, 24);
  if (*__p <= 0)
  {
    *&__p[24] = 0;
    *__p = v167;
  }

  else
  {
    v35 = 0;
    v36 = v146;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&__p[4]);
    *&__p[24] = 0;
    *__p = v167;
    if (*&__p[4] > 2)
    {
      goto LABEL_32;
    }
  }

  if (SHIDWORD(v167) <= 2)
  {
    *&__p[4] = HIDWORD(v167);
    *&__p[8] = v168;
    v37 = v174;
    v38 = v147;
    *v147 = *v174;
    v38[1] = v37[1];
    goto LABEL_33;
  }

LABEL_32:
  cv::Mat::copySize(__p, &v167);
LABEL_33:
  *&__p[40] = v171;
  *&__p[24] = v170;
  *&__p[16] = v169;
  *&__p[56] = v172;
  if (v170 && atomic_fetch_add(v170, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v167);
  }

  v169 = 0;
  v171 = 0uLL;
  *(&v170 + 1) = 0;
  if (SHIDWORD(v167) >= 1)
  {
    v39 = 0;
    v40 = v173;
    do
    {
      *(v40 + v39++) = 0;
    }

    while (v39 < SHIDWORD(v167));
  }

  *&v170 = 0;
  if (v174)
  {
    v41 = v174 == &v175;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    free(v174);
  }

  if ((__p[1] & 0x40) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v135, "errMat.isContinuous()");
    std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, v135, v188, &v127, 877);
    cv::error(&v167, v42);
  }

  v120 = *&__p[16];
LABEL_47:
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  if (((*a1)[5])(a1) != 327680)
  {
    v48 = 1;
    v47 = 1;
    goto LABEL_67;
  }

  ((*a1)[1])(a1, &v142);
  v43 = -1431655765 * ((v143 - v142) >> 5);
  if (v43 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v135, "levels1 >= 0");
    std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, v135, v188, &v127, 892);
    cv::error(&v167, v44);
  }

  v45 = v43 - 1;
  if ((v45 & 0x80000001) == 1)
  {
    v46 = v142;
    if (((v142->i32[0] >> 2) & 0x3FE | 1) != ((v142[12].i32[0] >> 3) & 0x1FF) || (v142[12].i32[0] & 7) != 3)
    {
      v47 = 1;
      goto LABEL_59;
    }

    v45 = v45 >> 1;
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  if (v45 >= 1)
  {
    v46 = v142;
LABEL_59:
    v126[0] = 0;
    v124[0] = 0;
    cv::Mat::locateROI(&v46[12 * v47], v126, v124);
    if (SLODWORD(v124[0]) < a7->i32[0] || (v49 = a7->i32[1], SHIDWORD(v124[0]) < v49) || (v50 = &v142[12 * v47], a7->i32[0] + LODWORD(v124[0]) + v50[1].i32[1] > SLODWORD(v126[0])) || v49 + HIDWORD(v124[0]) + v50[1].i32[0] > SHIDWORD(v126[0]))
    {
      std::string::basic_string[abi:ne200100]<0>(v135, "ofs.x >= winSize.width && ofs.y >= winSize.height && ofs.x + prevPyr[lvlStep1].cols + winSize.width <= fullSize.width && ofs.y + prevPyr[lvlStep1].rows + winSize.height <= fullSize.height");
      std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
      std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
      cv::Exception::Exception(&v167, -215, v135, v188, &v127, 908);
      cv::error(&v167, v51);
    }
  }

  if (v45 < a8)
  {
    a8 = v45;
  }

  v48 = v45 >> 31;
LABEL_67:
  v119 = v34;
  if (((*a2)[5])(a2) != 327680)
  {
    v60 = 1;
    v123 = 1;
    if (!v48)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  ((*a2)[1])(a2, &v139);
  v54 = -1431655765 * ((v140 - v139) >> 5);
  if (v54 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v135, "levels2 >= 0");
    std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, v135, v188, &v127, 920);
    cv::error(&v167, v55);
  }

  v56 = v54 - 1;
  if ((v56 & 0x80000001) == 1)
  {
    v57 = v139;
    v58 = a7;
    if (((*v139 >> 2) & 0x3FE | 1) != ((v139[24] >> 3) & 0x1FF) || (v139[24] & 7) != 3)
    {
      v59 = 1;
      goto LABEL_81;
    }

    v56 = v56 >> 1;
    v59 = 2;
  }

  else
  {
    v58 = a7;
    v59 = 1;
  }

  if (v56 < 1)
  {
    goto LABEL_86;
  }

  v57 = v139;
LABEL_81:
  v126[0] = 0;
  v124[0] = 0;
  cv::Mat::locateROI(&v57[24 * v59], v126, v124);
  if (SLODWORD(v124[0]) < v58->i32[0] || (v61 = v58->i32[1], SHIDWORD(v124[0]) < v61) || (v62 = &v139[24 * v59], v58->i32[0] + LODWORD(v124[0]) + v62[3] > SLODWORD(v126[0])) || v61 + HIDWORD(v124[0]) + v62[2] > SHIDWORD(v126[0]))
  {
    std::string::basic_string[abi:ne200100]<0>(v135, "ofs.x >= winSize.width && ofs.y >= winSize.height && ofs.x + nextPyr[lvlStep2].cols + winSize.width <= fullSize.width && ofs.y + nextPyr[lvlStep2].rows + winSize.height <= fullSize.height");
    std::string::basic_string[abi:ne200100]<0>(v188, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(&v127, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v167, -215, v135, v188, &v127, 936);
    cv::error(&v167, v63);
  }

LABEL_86:
  if (v56 < a8)
  {
    a8 = v56;
  }

  v60 = v56 >> 31;
  v123 = v59;
  a7 = v58;
  if (!v48)
  {
LABEL_89:
    if (!v60)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_75:
  cv::_OutputArray::_OutputArray(&v167, &v142);
  *v135 = *a7;
  a8 = cv::buildOpticalFlowPyramid(a1, &v167, v135, a8, 0, 4u, 0, 1);
  if (!v60)
  {
    goto LABEL_91;
  }

LABEL_90:
  cv::_OutputArray::_OutputArray(&v167, &v139);
  *v135 = *a7;
  a8 = cv::buildOpticalFlowPyramid(a2, &v167, v135, a8, 0, 4u, 0, 1);
LABEL_91:
  v64 = a19;
  v65 = a18 & ~(a18 >> 31);
  if (v65 >= 100)
  {
    v65 = 100;
  }

  if (a17)
  {
    v66 = v65;
  }

  else
  {
    v66 = 30;
  }

  if (a19 < 0.0)
  {
    v64 = 0.0;
  }

  if (v64 > 10.0)
  {
    v64 = 10.0;
  }

  v136 = &v135[8];
  v137 = v138;
  if ((a17 & 2) != 0)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0.01;
  }

  v138[0] = 0;
  v138[1] = 0;
  *v135 = 1124007936;
  memset(&v135[4], 0, 60);
  if (v47 == 1)
  {
    v68 = (16 * (v142->i32[0] >> 3)) | 0xB;
    *v188 = vadd_s32(vrev64_s32(vadd_s32(*a7, *a7)), v142[1]);
    cv::Mat::create(v135, 2, v188, v68, v52, v53);
  }

  if ((a8 & 0x80000000) == 0)
  {
    v69 = v67 * v67;
    v70 = (a17 | (v66 << 32));
    v71 = a9;
    v72 = a8;
    while (1)
    {
      v189 = &v188[8];
      v190 = v191;
      v191[0] = 0;
      v191[1] = 0;
      *v188 = 1124007936;
      v73.n128_u64[1] = 0;
      memset(&v188[4], 0, 60);
      if (v47 == 1)
      {
        *&v74 = *a7;
        DWORD2(v74) = HIDWORD(**&v142[12 * v72 + 8]);
        HIDWORD(v74) = **&v142[12 * v72 + 8];
        v75 = DWORD2(v74) + 2 * *a7;
        LODWORD(v168) = HIDWORD(v74) + 2 * HIDWORD(*a7);
        HIDWORD(v168) = v75;
        v169 = *&v135[16];
        *&v170 = 0;
        v173 = &v168;
        v174 = &v175;
        HIDWORD(v167) = 2;
        LODWORD(v167) = *v135 & 0xFFF | 0x42FF4000;
        v175 = ((((*v135 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v135[0] & 7))) & 3)) * v75;
        v176 = (((*v135 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (v135[0] & 7))) & 3);
        v172 = 0;
        *(&v171 + 1) = *&v135[16] + v175 * v168;
        *(&v170 + 1) = *&v135[16];
        *&v171 = *(&v171 + 1);
        *v126 = v74;
        cv::Mat::Mat(&v127, &v167, v126);
        if (v129)
        {
          atomic_fetch_add(v129, 1u);
        }

        if (*&v188[24] && atomic_fetch_add(*&v188[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v188);
        }

        *&v188[16] = 0;
        memset(&v188[32], 0, 24);
        if (*&v188[4] <= 0)
        {
          *&v188[24] = 0;
          *v188 = v127;
        }

        else
        {
          v77 = 0;
          v78 = v189;
          do
          {
            *&v78[4 * v77++] = 0;
          }

          while (v77 < *&v188[4]);
          *&v188[24] = 0;
          *v188 = v127;
          if (*&v188[4] > 2)
          {
LABEL_131:
            cv::Mat::copySize(v188, &v127);
            goto LABEL_132;
          }
        }

        if (SDWORD1(v127) > 2)
        {
          goto LABEL_131;
        }

        *&v188[4] = DWORD1(v127);
        *&v188[8] = *(&v127 + 1);
        v83 = v133;
        v84 = v190;
        *v190 = *v133;
        v84[1] = v83[1];
LABEL_132:
        *&v188[40] = v130;
        *&v188[24] = v129;
        *&v188[16] = v128;
        *&v188[56] = v131;
        if (v129 && atomic_fetch_add(v129, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v127);
        }

        v128 = 0;
        v130 = 0uLL;
        *(&v129 + 1) = 0;
        if (SDWORD1(v127) >= 1)
        {
          v85 = 0;
          v86 = v132;
          do
          {
            *(v86 + 4 * v85++) = 0;
          }

          while (v85 < SDWORD1(v127));
        }

        *&v129 = 0;
        if (v133)
        {
          v87 = v133 == &v134;
        }

        else
        {
          v87 = 1;
        }

        if (!v87)
        {
          free(v133);
        }

        cv::_InputArray::_InputArray(&v127, v188);
        cv::_OutputArray::_OutputArray(v126, &v167);
        *v124 = 0u;
        v125 = 0u;
        cv::copyMakeBorder(&v127);
        if (v170 && atomic_fetch_add(v170, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v167);
        }

        v169 = 0;
        v171 = 0uLL;
        *(&v170 + 1) = 0;
        if (SHIDWORD(v167) >= 1)
        {
          v88 = 0;
          v89 = v173;
          do
          {
            *(v89 + v88++) = 0;
          }

          while (v88 < SHIDWORD(v167));
        }

        *&v170 = 0;
        if (v174)
        {
          v90 = v174 == &v175;
        }

        else
        {
          v90 = 1;
        }

        if (!v90)
        {
          free(v174);
        }

        goto LABEL_159;
      }

      v79 = &v142[12 * ((2 * v72) | 1)];
      if (v188 != v79)
      {
        break;
      }

LABEL_159:
      v93 = a7;
      v94 = v72 * v47;
      v95 = v142[12 * v94 + 8];
      v96 = v72 * v123;
      if (v95[1] != *(*&v139[24 * v72 * v123 + 16] + 4) || *v95 != **&v139[24 * v72 * v123 + 16])
      {
        std::string::basic_string[abi:ne200100]<0>(&v127, "prevPyr[level * lvlStep1].size() == nextPyr[level * lvlStep2].size()");
        std::string::basic_string[abi:ne200100]<0>(v126, "calcOpticalFlowPyrLK");
        std::string::basic_string[abi:ne200100]<0>(v124, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
        cv::Exception::Exception(&v167, -215, &v127, v126, v124, 979);
        cv::error(&v167, v98);
      }

      if (((v139[24 * v96] ^ v142[12 * v94].i32[0]) & 0xFFF) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&v127, "prevPyr[level * lvlStep1].type() == nextPyr[level * lvlStep2].type()");
        std::string::basic_string[abi:ne200100]<0>(v126, "calcOpticalFlowPyrLK");
        std::string::basic_string[abi:ne200100]<0>(v124, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
        cv::Exception::Exception(&v167, -215, &v127, v126, v124, 980);
        cv::error(&v167, v99);
      }

      LODWORD(v127) = 0;
      DWORD1(v127) = v30;
      v167 = &unk_284055B70;
      v168 = &v142[12 * v94];
      *&v170 = v188;
      v169 = &v139[24 * v96];
      *(&v170 + 1) = v122;
      *&v171 = v121;
      *(&v171 + 1) = v119;
      v172 = v120;
      a7 = v93;
      v173 = *v93;
      v174 = v70;
      v175 = *&v69;
      v176 = __PAIR64__(a8, v72);
      v177 = a20;
      v178 = v71;
      v73.n128_u64[0] = -1.0;
      cv::parallel_for_(&v127, &v167, v73);
      cv::BaseRowFilter::~BaseRowFilter(&v167);
      if (*&v188[24] && atomic_fetch_add(*&v188[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v188);
      }

      *&v188[16] = 0;
      memset(&v188[32], 0, 24);
      if (*&v188[4] >= 1)
      {
        v100 = 0;
        v101 = v189;
        do
        {
          *&v101[4 * v100++] = 0;
        }

        while (v100 < *&v188[4]);
      }

      *&v188[24] = 0;
      if (v190)
      {
        v102 = v190 == v191;
      }

      else
      {
        v102 = 1;
      }

      if (!v102)
      {
        free(v190);
      }

      if (v72-- <= 0)
      {
        goto LABEL_179;
      }
    }

    v80 = v79[3];
    if (v80)
    {
      atomic_fetch_add(v80, 1u);
      if (*&v188[24])
      {
        if (atomic_fetch_add(*&v188[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v188);
        }
      }
    }

    *&v188[16] = 0;
    memset(&v188[32], 0, 24);
    if (*&v188[4] <= 0)
    {
      *&v188[24] = 0;
      *v188 = v79->i32[0];
    }

    else
    {
      v81 = 0;
      v82 = v189;
      do
      {
        *&v82[4 * v81++] = 0;
      }

      while (v81 < *&v188[4]);
      *&v188[24] = 0;
      *v188 = v79->i32[0];
      if (*&v188[4] > 2)
      {
        goto LABEL_157;
      }
    }

    if (v79->i32[1] <= 2)
    {
      *&v188[4] = v79->i32[1];
      *&v188[8] = v79[1];
      v91 = v79[9];
      v92 = v190;
      *v190 = *v91;
      v92[1] = v91[1];
LABEL_158:
      *&v188[32] = *v79[4].i8;
      *&v188[48] = v79[6];
      v73 = *v79[2].i8;
      *&v188[16] = v73;
      *&v188[56] = v79[7];
      goto LABEL_159;
    }

LABEL_157:
    cv::Mat::copySize(v188, v79);
    goto LABEL_158;
  }

LABEL_179:
  if (*&v135[24] && atomic_fetch_add(*&v135[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v135);
  }

  *&v135[16] = 0;
  memset(&v135[32], 0, 24);
  if (*&v135[4] >= 1)
  {
    v104 = 0;
    v105 = v136;
    do
    {
      *&v105[4 * v104++] = 0;
    }

    while (v104 < *&v135[4]);
  }

  *&v135[24] = 0;
  if (v137)
  {
    v106 = v137 == v138;
  }

  else
  {
    v106 = 1;
  }

  if (!v106)
  {
    free(v137);
  }

  v167 = &v139;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&v167);
  v167 = &v142;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&v167);
  if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  *&__p[16] = 0;
  memset(&__p[32], 0, 24);
  if (*&__p[4] >= 1)
  {
    v107 = 0;
    v108 = v146;
    do
    {
      *&v108[4 * v107++] = 0;
    }

    while (v107 < *&__p[4]);
  }

  *&__p[24] = 0;
  if (v147)
  {
    v109 = v147 == v148;
  }

  else
  {
    v109 = 1;
  }

  if (!v109)
  {
    free(v147);
  }

  if (v151 && atomic_fetch_add(v151, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v149);
  }

  v150 = 0;
  v152 = 0;
  v154 = 0;
  v153 = 0;
  if (SDWORD1(v149) >= 1)
  {
    v110 = 0;
    v111 = v155;
    do
    {
      *(v111 + 4 * v110++) = 0;
    }

    while (v110 < SDWORD1(v149));
  }

  v151 = 0;
  if (v156)
  {
    v112 = v156 == &v157;
  }

  else
  {
    v112 = 1;
  }

  if (!v112)
  {
    free(v156);
  }

  if (v160 && atomic_fetch_add(v160, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v158);
  }

  v159 = 0;
  v161 = 0;
  v163 = 0;
  v162 = 0;
  if (SDWORD1(v158) >= 1)
  {
    v113 = 0;
    v114 = v164;
    do
    {
      *(v114 + 4 * v113++) = 0;
    }

    while (v113 < SDWORD1(v158));
  }

  v160 = 0;
  if (v165)
  {
    v115 = v165 == &v166;
  }

  else
  {
    v115 = 1;
  }

  if (!v115)
  {
    free(v165);
  }

LABEL_223:
  if (v181 && atomic_fetch_add(v181, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v179);
  }

  v180 = 0;
  v182 = 0;
  v184 = 0;
  v183 = 0;
  if (SHIDWORD(v179[0]) >= 1)
  {
    v116 = 0;
    v117 = v185;
    do
    {
      v117->i32[v116++] = 0;
    }

    while (v116 < SHIDWORD(v179[0]));
  }

  v181 = 0;
  if (v186)
  {
    v118 = v186 == &v187;
  }

  else
  {
    v118 = 1;
  }

  if (!v118)
  {
    free(v186);
  }
}

void sub_22D22B644(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::detail::LKTrackerInvoker::~LKTrackerInvoker(cv::detail::LKTrackerInvoker *this)
{
  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::convertAndUnrollScalar(cv *this, const cv::Mat *a2, _BYTE *a3, unsigned __int8 *a4)
{
  v6 = a2;
  v8 = *(this + 1);
  if (v8 >= 3)
  {
    v10 = *(this + 8);
    v9 = 1;
    do
    {
      v11 = *v10++;
      v9 *= v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = *(this + 3) * *(this + 2);
  }

  v12 = (a2 >> 3) & 0x1FF;
  ConvertFunc = cv::getConvertFunc((*this & 7), a2);
  v14 = *(this + 2);
  if (v12 < v9)
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v9;
  }

  v26[0] = v15;
  v26[1] = 1;
  ConvertFunc(v14, 0, 0, 0, a3, 0, v26, 0);
  v16 = v6 & 7;
  v17 = (v12 + 1) << ((0xFA50u >> (2 * (v6 & 7))) & 3);
  if (v12 >= v9)
  {
    if (v9 != 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v25, "scn == 1");
      std::string::basic_string[abi:ne200100]<0>(&v24, "convertAndUnrollScalar");
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v26, -215, &v25, &v24, &__p, 976);
      cv::error(v26, v18);
    }

    v19 = (0x88442211uLL >> (4 * v16)) & 0xF;
    v20 = v17 - v19;
    if (v17 > v19)
    {
      v21 = a3;
      do
      {
        v21[v19] = *v21;
        ++v21;
        --v20;
      }

      while (v20);
    }
  }

  if (v17 * a4 > v17)
  {
    v22 = (a4 - 1) * v17;
    do
    {
      a3[v17] = *a3;
      ++a3;
      --v22;
    }

    while (v22);
  }
}

void sub_22D22BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
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

void cv::binary_op(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v189[507] = *MEMORY[0x277D85DE8];
  v13 = (*(*v1 + 40))(v1);
  v14 = (*(*v11 + 40))(v11);
  (**v12)(&v164, v12, 0xFFFFFFFFLL);
  (**v11)(&v153, v11, 0xFFFFFFFFLL);
  v15 = (*(*v7 + 88))(v7);
  v17 = v15;
  if (SHIDWORD(v164) > 2)
  {
    goto LABEL_27;
  }

  if (SHIDWORD(v153) > 2)
  {
    goto LABEL_27;
  }

  if (v13 != v14)
  {
    goto LABEL_27;
  }

  if (v172[1] != v161[1])
  {
    goto LABEL_27;
  }

  v18 = *v172;
  if (*v172 != *v161)
  {
    goto LABEL_27;
  }

  v16 = (v164 & 0xFFF);
  if (((v16 == (v153 & 0xFFF)) & v15) != 1)
  {
    goto LABEL_27;
  }

  v181[0] = v172[1];
  v181[1] = v18;
  (*(*v9 + 128))(v9, v181);
  (**v9)(v181, v9, 0xFFFFFFFFLL);
  if (v3)
  {
    v19 = *v5;
    if (SHIDWORD(v164) < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v173 + 2 * HIDWORD(v164) - 2);
    }
  }

  else
  {
    v19 = v5[v164 & 7];
    v20 = ((v164 >> 3) & 0x1FF) + 1;
  }

  v21 = v166;
  v22 = v165;
  if ((v164 & v153 & v181[0] & 0x4000) != 0 && v165 * v166 == v165 * v166)
  {
    v21 = v165 * v166;
    v22 = 1;
  }

  v23 = v21 * v20;
  if (v23 != v23)
  {
    if (v184 && atomic_fetch_add(v184, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v181);
    }

    v183 = 0;
    *(&v184 + 1) = 0;
    v185 = 0uLL;
    if (v181[1] >= 1)
    {
      v24 = 0;
      v25 = v187;
      do
      {
        v25[v24++] = 0;
      }

      while (v24 < v181[1]);
    }

    *&v184 = 0;
    if (v188)
    {
      v26 = v188 == v189;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      free(v188);
    }

LABEL_27:
    if ((v13 == 0x20000) != (v14 == 0x20000))
    {
      goto LABEL_37;
    }

    v27 = v172;
    v28 = *(v172 - 1);
    v29 = v161;
    if (v28 != *(v161 - 1))
    {
      goto LABEL_37;
    }

    if (v28 == 2)
    {
      if (*v172 != *v161 || v172[1] != v161[1])
      {
        goto LABEL_37;
      }
    }

    else if (v28 >= 1)
    {
      do
      {
        v31 = *v27++;
        v30 = v31;
        v32 = *v29++;
        if (v30 != v32)
        {
          goto LABEL_37;
        }
      }

      while (--v28);
    }

    if (((v153 ^ v164) & 0xFFF) == 0)
    {
      v46 = 0;
      goto LABEL_77;
    }

LABEL_37:
    v33 = v153 & 0xFFF;
    if (SHIDWORD(v164) < 3)
    {
      v34 = v164;
      if (v166 == 1 || v165 == 1)
      {
        v36 = v13 != 0x20000 && v14 == 0x20000;
        v37 = v36;
        if ((v164 & 0x4000) != 0 && !v37)
        {
          v38 = (v33 >> 3) + 1;
          v39 = *v172;
          v40 = v172[1];
          v41 = v40 == v38;
          if (*v172 != 1)
          {
            v41 = 0;
          }

          v42 = v39 == v38 || *v172 == 1;
          if (v40 != 1)
          {
            v42 = 0;
          }

          if (v42 || v41 || v40 == 1 && v39 == 4 && v33 <= 0x1F && (v164 & 0xFFF) == 6)
          {
            cv::swap(&v164, &v153, v16);
            v46 = 1;
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      v34 = v164;
    }

    if (SHIDWORD(v153) > 2)
    {
      goto LABEL_76;
    }

    v43 = v154 == 1 || v155 == 1;
    v44 = !v43 || (v153 & 0x4000) == 0;
    if (v44 || v13 == 0x20000 && v14 != 0x20000)
    {
      goto LABEL_76;
    }

    v124 = (v34 >> 3) & 0x1FF;
    v125 = *v161;
    v126 = v161[1];
    v127 = v126 == v124 + 1;
    if (*v161 != 1)
    {
      v127 = 0;
    }

    v128 = v125 == v124 + 1 || *v161 == 1;
    if (v126 != 1)
    {
      v128 = 0;
    }

    v46 = 1;
    if (!v128 && !v127 && (v126 != 1 || v125 != 4 || v33 != 6 || v124 >= 4))
    {
LABEL_76:
      std::string::basic_string[abi:ne200100]<0>(v148, "The operation is neither 'array op array' (where arrays have the same size and type), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(v140, "binary_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v181, -209, v148, v140, __p, 1029);
      cv::error(v181, v45);
    }

LABEL_77:
    v47 = v3;
    if (SHIDWORD(v164) < 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(v173 + HIDWORD(v164) - 1);
    }

    v151[1] = 0;
    v152 = v48;
    v49 = v164;
    v149 = &v148[8];
    v150 = v151;
    v151[0] = 0;
    *v148 = 1124007936;
    memset(&v148[4], 0, 60);
    if (v17)
    {
      CopyMaskFunc = 0;
      v50 = 1;
LABEL_137:
      *v181 = &v183;
      v182 = 4104;
      (*(*v9 + 144))(v9);
      (**v9)(v140, v9, 0xFFFFFFFFLL);
      if (!v50)
      {
        *__p = 0u;
        v137 = 0u;
        cv::Mat::operator=(v140, __p);
      }

      v75 = v47 == 0;
      if (v47)
      {
        v76 = v152;
      }

      else
      {
        v76 = ((v49 >> 3) & 0x1FF) + 1;
      }

      if (v75)
      {
        v77 = v164 & 7;
      }

      else
      {
        v77 = 0;
      }

      v78 = v5[v77];
      v79 = (v48 + 1023) / v48;
      if (v46)
      {
        *&v177 = &v164;
        *(&v177 + 1) = v140;
        v178 = v148;
        v179 = 0;
        v175 = 0uLL;
        *&v176 = 0;
        cv::NAryMatIterator::NAryMatIterator(__p, &v177, &v175, -1);
        v80 = v139;
        if (v79 >= v139)
        {
          v79 = v139;
        }

        v81 = (v79 << (v17 ^ 1u)) * v152 + 32;
        v82 = *v181;
        if (v182 < v81)
        {
          if (*v181 != &v183)
          {
            if (*v181)
            {
              MEMORY[0x2318CB180](*v181, 0x1000C8077774924);
            }

            v82 = &v183;
            *v181 = &v183;
          }

          v182 = v81;
          if (v81 >= 0x1009)
          {
            operator new[]();
          }
        }

        v83 = v152;
        cv::convertAndUnrollScalar(&v153, (v164 & 0xFFF), v82, v79);
        v84 = 0;
        v85 = (v82 + v83 * v79 + 15) & 0xFFFFFFFFFFFFFFF0;
        while (v84 < v138)
        {
          v131 = v84;
          if (v80)
          {
            v86 = 0;
            v88 = *(&v175 + 1);
            v87 = v175;
            do
            {
              if (v80 - v86 >= v79)
              {
                v89 = v79;
              }

              else
              {
                v89 = v80 - v86;
              }

              v134 = v76 * v89;
              v135 = 1;
              if (v17)
              {
                v90 = v88;
              }

              else
              {
                v90 = v85;
              }

              v78(v87, 0, v82, 0, v90, 0, &v134, 0);
              if (v17)
              {
                v91 = v89 << 32;
              }

              else
              {
                v134 = v89;
                v135 = 1;
                CopyMaskFunc(v85, 0, v176, 0, *(&v175 + 1), 0, &v134, &v152);
                v91 = v89 << 32;
                *&v176 = v176 + v89;
              }

              v92 = v91 * v152;
              v87 = v175 + (v92 >> 32);
              v88 = *(&v175 + 1) + (v92 >> 32);
              *&v175 = v87;
              *(&v175 + 1) = v88;
              v86 += v79;
            }

            while (v86 < v80);
          }

          v84 = v131 + 1;
          cv::NAryMatIterator::operator++(__p);
        }
      }

      else
      {
        *&v177 = &v164;
        *(&v177 + 1) = &v153;
        v178 = v140;
        v179 = v148;
        v180 = 0;
        v175 = 0u;
        v176 = 0u;
        cv::NAryMatIterator::NAryMatIterator(__p, &v177, &v175, -1);
        v93 = v139;
        v94 = v139;
        if ((v139 * v76) >> 31)
        {
          v94 = 0x7FFFFFFF / v76;
        }

        if (v17)
        {
          v95 = 0;
        }

        else
        {
          if (v79 < v94)
          {
            v94 = (v48 + 1023) / v48;
          }

          v96 = v152 * v94;
          v95 = *v181;
          if (v182 < v152 * v94)
          {
            if (*v181 != &v183)
            {
              if (*v181)
              {
                MEMORY[0x2318CB180](*v181, 0x1000C8077774924);
              }

              v95 = &v183;
              *v181 = &v183;
            }

            v182 = v96;
            if (v96 >= 0x1009)
            {
              operator new[]();
            }
          }
        }

        v97 = 0;
        while (v97 < v138)
        {
          v132 = v97;
          if (v93)
          {
            v98 = 0;
            v100 = *(&v175 + 1);
            v99 = v175;
            v101 = v93;
            v102 = v176;
            do
            {
              v103 = v101 - v94;
              if (v101 >= v94)
              {
                v104 = v94;
              }

              else
              {
                v104 = v101;
              }

              v134 = v76 * v104;
              v135 = 1;
              if (v17)
              {
                v105 = v102;
              }

              else
              {
                v105 = v95;
              }

              v78(v99, 0, v100, 0, v105, 0, &v134, 0);
              if (v17)
              {
                v106 = v104 << 32;
              }

              else
              {
                v134 = v104;
                v135 = 1;
                CopyMaskFunc(v95, 0, *(&v176 + 1), 0, v176, 0, &v134, &v152);
                v106 = v104 << 32;
                *(&v176 + 1) += v104;
              }

              v107 = v106 * v152;
              v99 = v175 + (v107 >> 32);
              v100 = *(&v175 + 1) + (v107 >> 32);
              *&v175 = v99;
              *(&v175 + 1) = v100;
              v102 = (v176 + (v107 >> 32));
              *&v176 = v102;
              v98 += v94;
              v101 = v103;
            }

            while (v98 < v93);
          }

          v97 = v132 + 1;
          cv::NAryMatIterator::operator++(__p);
        }
      }

      if (v141 && atomic_fetch_add(v141, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v140);
      }

      v140[2] = 0;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      if (SHIDWORD(v140[0]) >= 1)
      {
        v108 = 0;
        v109 = v145;
        do
        {
          *(v109 + 4 * v108++) = 0;
        }

        while (v108 < SHIDWORD(v140[0]));
      }

      v141 = 0;
      if (v146)
      {
        v110 = v146 == &v147;
      }

      else
      {
        v110 = 1;
      }

      if (!v110)
      {
        free(v146);
      }

      if (*v181 != &v183 && *v181 != 0)
      {
        MEMORY[0x2318CB180]();
      }

      if (*&v148[24] && atomic_fetch_add(*&v148[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v148);
      }

      *&v148[16] = 0;
      memset(&v148[32], 0, 24);
      if (*&v148[4] >= 1)
      {
        v112 = 0;
        v113 = v149;
        do
        {
          v113[v112++] = 0;
        }

        while (v112 < *&v148[4]);
      }

      *&v148[24] = 0;
      v114 = v150;
      v115 = v150 == 0;
      v116 = v151;
      goto LABEL_221;
    }

    (**v7)(v181, v7, 0xFFFFFFFFLL);
    if (v184)
    {
      atomic_fetch_add(v184, 1u);
    }

    if (*&v148[24] && atomic_fetch_add(*&v148[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v148);
    }

    *&v148[16] = 0;
    memset(&v148[32], 0, 24);
    if (*v148 <= 0)
    {
      *&v148[24] = 0;
      *v148 = v181[0];
    }

    else
    {
      v51 = 0;
      v52 = v149;
      do
      {
        v52[v51++] = 0;
      }

      while (v51 < *&v148[4]);
      *&v148[24] = 0;
      *v148 = v181[0];
      if (*&v148[4] > 2)
      {
        goto LABEL_95;
      }
    }

    if (v181[1] <= 2)
    {
      *&v148[4] = v181[1];
      *&v148[8] = v182;
      v53 = v188;
      v54 = v150;
      *v150 = *v188;
      v54[1] = v53[1];
LABEL_96:
      *&v148[40] = v185;
      *&v148[24] = v184;
      *&v148[16] = v183;
      *&v148[56] = v186;
      if (v184 && atomic_fetch_add(v184, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v181);
      }

      v183 = 0;
      v185 = 0uLL;
      *(&v184 + 1) = 0;
      if (v181[1] >= 1)
      {
        v55 = 0;
        v56 = v187;
        do
        {
          v56[v55++] = 0;
        }

        while (v55 < v181[1]);
      }

      *&v184 = 0;
      if (v188)
      {
        v57 = v188 == v189;
      }

      else
      {
        v57 = 1;
      }

      if (!v57)
      {
        free(v188);
      }

      if ((*v148 & 0xFFE) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v140, "(mask.type() == CV_8UC1 || mask.type() == CV_8SC1)");
        std::string::basic_string[abi:ne200100]<0>(__p, "binary_op");
        std::string::basic_string[abi:ne200100]<0>(&v177, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
        cv::Exception::Exception(v181, -215, v140, __p, &v177, 1043);
        cv::error(v181, v58);
      }

      v59 = v149;
      v60 = *(v149 - 1);
      v61 = v172;
      if (v60 == *(v172 - 1))
      {
        if (v60 == 2)
        {
          if (*v149 != *v172 || v149[1] != v172[1])
          {
            goto LABEL_113;
          }

LABEL_117:
          CopyMaskFunc = cv::getCopyMaskFunc(v152);
          (**v9)(v181, v9, 0xFFFFFFFFLL);
          v66 = v187;
          v67 = *(v187 - 1);
          v68 = v172;
          if (v67 == *(v172 - 1))
          {
            if (v67 == 2)
            {
              if (*v187 != *v172 || v187[1] != v172[1])
              {
                goto LABEL_121;
              }
            }

            else if (v67 >= 1)
            {
              do
              {
                v70 = *v66++;
                v69 = v70;
                v71 = *v68++;
                if (v69 != v71)
                {
                  goto LABEL_121;
                }
              }

              while (--v67);
            }

            v50 = ((v164 ^ v181[0]) & 0xFFF) == 0;
LABEL_126:
            if (v184 && atomic_fetch_add(v184, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(v181);
            }

            v183 = 0;
            *(&v184 + 1) = 0;
            v185 = 0uLL;
            if (v181[1] >= 1)
            {
              v72 = 0;
              v73 = v187;
              do
              {
                v73[v72++] = 0;
              }

              while (v72 < v181[1]);
            }

            *&v184 = 0;
            if (v188)
            {
              v74 = v188 == v189;
            }

            else
            {
              v74 = 1;
            }

            if (!v74)
            {
              free(v188);
            }

            goto LABEL_137;
          }

LABEL_121:
          v50 = 0;
          goto LABEL_126;
        }

        if (v60 < 1)
        {
          goto LABEL_117;
        }

        while (1)
        {
          v64 = *v59++;
          v63 = v64;
          v65 = *v61++;
          if (v63 != v65)
          {
            break;
          }

          if (!--v60)
          {
            goto LABEL_117;
          }
        }
      }

LABEL_113:
      std::string::basic_string[abi:ne200100]<0>(v140, "mask.size == src1.size");
      std::string::basic_string[abi:ne200100]<0>(__p, "binary_op");
      std::string::basic_string[abi:ne200100]<0>(&v177, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v181, -215, v140, __p, &v177, 1044);
      cv::error(v181, v62);
    }

LABEL_95:
    cv::Mat::copySize(v148, v181);
    goto LABEL_96;
  }

  *v148 = __PAIR64__(v22, v23);
  v19(v167, v174, v156, v163, v183, v189[0], v148, 0);
  if (v184 && atomic_fetch_add(v184, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v181);
  }

  v116 = v189;
  v183 = 0;
  *(&v184 + 1) = 0;
  v185 = 0uLL;
  if (v181[1] >= 1)
  {
    v129 = 0;
    v130 = v187;
    do
    {
      v130[v129++] = 0;
    }

    while (v129 < v181[1]);
  }

  *&v184 = 0;
  v114 = v188;
  v115 = v188 == 0;
LABEL_221:
  if (!v115 && v114 != v116)
  {
    free(v114);
  }

  if (v157 && atomic_fetch_add(v157, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v153);
  }

  v156 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  if (SHIDWORD(v153) >= 1)
  {
    v118 = 0;
    v119 = v161;
    do
    {
      v119[v118++] = 0;
    }

    while (v118 < SHIDWORD(v153));
  }

  v157 = 0;
  if (v162)
  {
    v120 = v162 == &v163;
  }

  else
  {
    v120 = 1;
  }

  if (!v120)
  {
    free(v162);
  }

  if (v168 && atomic_fetch_add(v168, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v164);
  }

  v167 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  if (SHIDWORD(v164) >= 1)
  {
    v121 = 0;
    v122 = v172;
    do
    {
      v122[v121++] = 0;
    }

    while (v121 < SHIDWORD(v164));
  }

  v168 = 0;
  if (v173)
  {
    v123 = v173 == &v174;
  }

  else
  {
    v123 = 1;
  }

  if (!v123)
  {
    free(v173);
  }
}

void sub_22D22CE60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::max(cv *this, const cv::Mat *a2, const cv::Mat *a3, cv::Mat *a4)
{
  cv::_OutputArray::_OutputArray(v9, a3);
  cv::_InputArray::_InputArray(v8, this);
  v6 = cv::_InputArray::_InputArray(&v7, a2);
  cv::noArray(v6);
  cv::binary_op(v8);
}

void cv::min(cv *this, const cv::Mat *a2, const cv::Mat *a3, cv::Mat *a4)
{
  cv::_OutputArray::_OutputArray(v9, a3);
  cv::_InputArray::_InputArray(v8, this);
  v6 = cv::_InputArray::_InputArray(&v7, a2);
  cv::noArray(v6);
  cv::binary_op(v8);
}

void cv::max(cv *this, const cv::Mat *a2, double a3, cv::Mat *a4)
{
  v9 = a3;
  cv::_OutputArray::_OutputArray(v8, a2);
  cv::_InputArray::_InputArray(v7, this);
  cv::_InputArray::_InputArray(v6, &v9);
  cv::noArray(v5);
  cv::binary_op(v7);
}

void cv::min(cv *this, const cv::Mat *a2, double a3, cv::Mat *a4)
{
  v9 = a3;
  cv::_OutputArray::_OutputArray(v8, a2);
  cv::_InputArray::_InputArray(v7, this);
  cv::_InputArray::_InputArray(v6, &v9);
  cv::noArray(v5);
  cv::binary_op(v7);
}

void cv::arithm_op(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v204 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1;
  v261[507] = *MEMORY[0x277D85DE8];
  v16 = (*(*v1 + 40))(v1);
  v17 = (*(*v14 + 40))(v14);
  (**v15)(&v236, v15, 0xFFFFFFFFLL);
  (**v14)(&v225, v14, 0xFFFFFFFFLL);
  v196 = ((*v10)[11])(v10);
  v201 = v6;
  v19 = v225 & 0xFFF;
  if (SHIDWORD(v236) < 3)
  {
    v20 = 0;
    v21 = v236;
    v24 = v237 == 1 || v238 == 1;
    if (v24 && (v236 & 0x4000) != 0)
    {
      if (v16 == 0x20000 || v17 != 0x20000)
      {
        v59 = (v19 >> 3) + 1;
        v60 = v244->i32[0];
        v61 = v244->i32[1];
        v62 = v61 == v59;
        if (v244->i32[0] != 1)
        {
          v62 = 0;
        }

        v63 = v60 == v59 || v244->i32[0] == 1;
        if (v61 != 1)
        {
          v63 = 0;
        }

        v20 = 1;
        if (!v63 && !v62)
        {
          v20 = 0;
          if (v61 == 1 && v60 == 4)
          {
            v20 = v19 < 0x20 && (v236 & 0xFFF) == 6;
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = v236;
  }

  v188 = v10;
  v22 = v21 & 0xFFF;
  if (SHIDWORD(v225) > 2)
  {
    goto LABEL_4;
  }

  v23 = 0;
  v25 = v226 == 1 || v227 == 1;
  if (v25 && (v225 & 0x4000) != 0)
  {
    if (v16 == 0x20000 && v17 != 0x20000)
    {
LABEL_4:
      v23 = 0;
      goto LABEL_5;
    }

    v26 = (v22 >> 3) + 1;
    v27 = *v233;
    v28 = v233[1];
    v29 = v28 == v26;
    if (*v233 != 1)
    {
      v29 = 0;
    }

    v30 = v27 == v26 || *v233 == 1;
    if (v28 != 1)
    {
      v30 = 0;
    }

    v23 = 1;
    if (!v30 && !v29)
    {
      v23 = 0;
      if (v28 == 1 && v27 == 4)
      {
        v31 = v19 != 6 || v22 >= 0x20;
        v23 = !v31;
      }
    }
  }

LABEL_5:
  if (v16 == v17)
  {
    if (SHIDWORD(v236) > 2 || SHIDWORD(v225) > 2)
    {
      goto LABEL_63;
    }
  }

  else if (SHIDWORD(v225) > 2 || SHIDWORD(v236) > 2 || (v21 & 0xFF8) != 0)
  {
    goto LABEL_63;
  }

  v34 = v244->i32[1] == v233[1] && v244->i32[0] == *v233 && v22 == v19;
  if ((v34 & v196) == 1)
  {
    if (((*(*v12 + 104))(v12) & 1) == 0 && (v8 < 0 || ((v236 ^ v8) & 7) == 0) || (*(*v12 + 104))(v12) && (v35 = (*(*v12 + 64))(v12, 0xFFFFFFFFLL), v35 == (*(*v15 + 64))(v15, 0xFFFFFFFFLL)))
    {
      if ((v20 & v23 & 1) != 0 || ((v20 | v23) & 1) == 0)
      {
        v253 = vrev64_s32(*v244);
        (*(*v12 + 128))(v12, &v253, v236 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
        (**v12)(&v253, v12, 0xFFFFFFFFLL);
        v79 = v237;
        v80 = ((v236 >> 3) & 0x1FF) + 1;
        if ((v236 & v225 & v253.i32[0] & 0x4000) != 0 && (v81 = v238 * v80 * v237, v81 == v81))
        {
          v79 = 1;
        }

        else
        {
          LODWORD(v81) = v238 * v80;
        }

        v82 = *(v201 + 8 * (v236 & 7));
        *v220 = __PAIR64__(v79, v81);
        v82(v239, v246, v228, v235, v255, v261[0], v220, v204);
        if (v256 && atomic_fetch_add(v256, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v253);
        }

        v255 = 0;
        *(&v256 + 1) = 0;
        v257 = 0uLL;
        if (v253.i32[1] >= 1)
        {
          v83 = 0;
          v84 = v259;
          do
          {
            v84[v83++] = 0;
          }

          while (v83 < v253.i32[1]);
        }

        *&v256 = 0;
        v85 = v260;
        if (v260)
        {
          v86 = v260 == v261;
        }

        else
        {
          v86 = 1;
        }

        if (!v86)
        {
          goto LABEL_465;
        }

        goto LABEL_466;
      }
    }
  }

LABEL_63:
  v36 = v244[-1].u32[1];
  if (v36 != *(v233 - 1))
  {
    goto LABEL_73;
  }

  if (v36 == 2)
  {
    if (v244->i32[0] != *v233 || v244->i32[1] != v233[1])
    {
      goto LABEL_73;
    }
  }

  else if (v36 >= 1)
  {
    v37 = v244;
    v38 = v233;
    do
    {
      v40 = v37->i32[0];
      v37 = (v37 + 4);
      v39 = v40;
      v41 = *v38++;
      if (v39 != v41)
      {
        goto LABEL_73;
      }
    }

    while (--v36);
  }

  v42 = v236;
  if (((v236 ^ v225) & 0xFF8) == 0)
  {
    if (v16 != 0x20000 || (v244->i32[0] != 4 ? (v75 = v244->i32[0] == 1) : (v75 = 1), !v75 ? (v76 = 0) : (v76 = 1), v244->i32[1] != 1 || (v76 & 1) == 0))
    {
      v52 = v225 & 7;
      if (v17 != 0x20000)
      {
        v50 = 0;
        v190 = 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }

      v50 = 0;
      v78 = *v233 == 4 || *v233 == 1;
      if (v233[1] != 1)
      {
        v190 = 0;
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }

      v190 = 0;
      if (!v78)
      {
LABEL_215:
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }
    }
  }

LABEL_73:
  v43 = v225 & 0xFFF;
  if (SHIDWORD(v236) >= 3)
  {
    v44 = v236;
LABEL_84:
    if (SHIDWORD(v225) > 2 || (v226 != 1 ? (v47 = v227 == 1) : (v47 = 1), v47 ? (v48 = (v225 & 0x4000) == 0) : (v48 = 1), v48 || v16 == 0x20000 && v17 != 0x20000))
    {
LABEL_94:
      std::string::basic_string[abi:ne200100]<0>(v220, "The operation is neither 'array op array' (where arrays have the same size and the same number of channels), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(v212, "arithm_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v253, -209, v220, v212, __p, 1295);
      cv::error(&v253, v49);
    }

    v50 = 0;
    v70 = (v44 >> 3) & 0x1FF;
    v71 = *v233;
    v72 = v233[1];
    v73 = v72 == v70 + 1;
    if (*v233 != 1)
    {
      v73 = 0;
    }

    v74 = v71 == v70 + 1 || *v233 == 1;
    if (v72 != 1)
    {
      v74 = 0;
    }

    if (!v74 && !v73)
    {
      if (v72 != 1 || v71 != 4 || v43 != 6 || v70 >= 4)
      {
        goto LABEL_94;
      }

      v50 = 0;
    }

    goto LABEL_96;
  }

  v44 = v236;
  v46 = v237 != 1 && v238 != 1 || (v236 & 0x4000) == 0;
  if (v46 || v16 != 0x20000 && v17 == 0x20000)
  {
    goto LABEL_84;
  }

  v65 = (v43 >> 3) + 1;
  v66 = v244->i32[0];
  v67 = v244->i32[1];
  v68 = v67 == v65;
  if (v244->i32[0] != 1)
  {
    v68 = 0;
  }

  v69 = v66 == v65 || v244->i32[0] == 1;
  if (v67 != 1)
  {
    v69 = 0;
  }

  if (!v69 && !v68 && (v67 != 1 || v66 != 4 || v43 > 0x1F || (v236 & 0xFFF) != 6))
  {
    goto LABEL_84;
  }

  cv::swap(&v236, &v225, v18);
  v50 = 1;
LABEL_96:
  if ((v225 & 0xFFF) != 6 || v226 != 1 && v226 != 4)
  {
    std::string::basic_string[abi:ne200100]<0>(v220, "src2.type() == CV_64F && (src2.rows == 4 || src2.rows == 1)");
    std::string::basic_string[abi:ne200100]<0>(v212, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v253, -215, v220, v212, __p, 1297);
    cv::error(&v253, v51);
  }

  v42 = v236;
  if (v4)
  {
    v190 = 1;
    v52 = 6;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_216;
  }

  v53 = v228;
  v54 = ((v236 >> 3) & 0x1FF) + 1;
  v55 = 0x7FFFFFFF;
  v56 = 0x80000000;
  do
  {
    v57 = rint(*v53);
    if (*v53 != v57)
    {
      if ((v236 & 7) == 5)
      {
        v58 = 5;
      }

      else
      {
        v58 = 6;
      }

      if ((v236 & 7u) >= 4)
      {
        v52 = v58;
      }

      else
      {
        v52 = 5;
      }

      goto LABEL_214;
    }

    if (v56 <= v57)
    {
      v56 = v57;
    }

    if (v55 >= v57)
    {
      v55 = v57;
    }

    ++v53;
    --v54;
  }

  while (v54);
  if ((v55 & 0x80000000) == 0 && v56 < 256)
  {
    v52 = 0;
LABEL_214:
    v190 = 1;
    goto LABEL_215;
  }

  if (v55 >= -128 && v56 < 128)
  {
    v52 = 1;
    goto LABEL_214;
  }

  if (v55 < 0 || v56 >= 0x10000)
  {
    if (v56 >= 0x8000 || v55 <= -32769)
    {
      v52 = 4;
    }

    else
    {
      v52 = 3;
    }

    goto LABEL_214;
  }

  v190 = 1;
  v52 = 2;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_221;
  }

LABEL_216:
  if ((*(*v12 + 104))(v12))
  {
    LOBYTE(v8) = (*(*v12 + 64))(v12, 0xFFFFFFFFLL);
  }

  else
  {
    LOBYTE(v8) = v236;
    if ((v190 & 1) == 0 && ((v225 ^ v236) & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v220, "When the input arrays in add/subtract/multiply/divide functions have different types, the output array type must be explicitly specified");
      std::string::basic_string[abi:ne200100]<0>(v212, "arithm_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v253, -5, v220, v212, __p, 1321);
      cv::error(&v253, v88);
    }
  }

LABEL_221:
  v89 = v42 & 7;
  v90 = v8 & 7;
  if (v89 != v52 || (v91 = v52, v90 != v89))
  {
    if (v4)
    {
      if (v52 <= v89)
      {
        v92 = v42 & 7;
      }

      else
      {
        v92 = v52;
      }

      if (v92 <= v90)
      {
        v92 = v8 & 7;
      }

      v93 = v92 > 5;
      v94 = 5;
    }

    else
    {
      if (v89 > 1 || v52 >= 2)
      {
        if (v89 <= v52)
        {
          v92 = v52;
        }

        else
        {
          v92 = v42 & 7;
        }

        if (v52 < 5 && v89 < 5)
        {
          v92 = 4;
        }
      }

      else
      {
        v92 = 3;
      }

      if (v92 <= v90)
      {
        v92 = v8 & 7;
      }

      if (v52 >= 5 && v89 >= 5)
      {
        v94 = v92;
      }

      else
      {
        v94 = 4;
      }

      v93 = v90 > 4;
    }

    if (v93)
    {
      v91 = v92;
    }

    else
    {
      v91 = v94;
    }
  }

  if (v89 == v91)
  {
    ConvertFunc = 0;
  }

  else
  {
    ConvertFunc = cv::getConvertFunc((v42 & 7), v91);
  }

  v205 = ConvertFunc;
  v198 = ConvertFunc;
  if (v89 != v52)
  {
    if (v52 == v91)
    {
      v198 = 0;
    }

    else
    {
      v198 = cv::getConvertFunc(v52, v91);
    }
  }

  if (v90 == v91)
  {
    v195 = 0;
  }

  else
  {
    v195 = cv::getConvertFunc(v91, v8 & 7);
  }

  v203 = ((v42 >> 3) & 0x1FF) + 1;
  v98 = 8 * v203 - 8;
  if (SHIDWORD(v236) < 1)
  {
    v200 = 0;
  }

  else
  {
    v200 = *(v245 + HIDWORD(v236) - 1);
  }

  v99 = v90 | v98;
  if (SHIDWORD(v225) < 1)
  {
    v193 = 0;
  }

  else
  {
    v193 = *(v234 + HIDWORD(v225) - 1);
  }

  v100 = (v98 >> 3) + 1;
  v223[1] = 0;
  v224 = (v100 << ((0xFA50u >> (2 * (v99 & 7))) & 3));
  v221 = &v220[8];
  v222 = v223;
  v223[0] = 0;
  *v220 = 1124007936;
  memset(&v220[4], 0, 60);
  if (v196)
  {
    v101 = 0;
    CopyMaskFunc = 0;
    v102 = 1;
    goto LABEL_327;
  }

  (**v188)(&v253);
  if (v256)
  {
    atomic_fetch_add(v256, 1u);
  }

  if (*&v220[24] && atomic_fetch_add(*&v220[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v220);
  }

  *&v220[16] = 0;
  memset(&v220[32], 0, 24);
  if (*v220 <= 0)
  {
    *&v220[24] = 0;
    *v220 = v253.i32[0];
  }

  else
  {
    v103 = 0;
    v104 = v221;
    do
    {
      v104[v103++] = 0;
    }

    while (v103 < *&v220[4]);
    *&v220[24] = 0;
    *v220 = v253.i32[0];
    if (*&v220[4] > 2)
    {
      goto LABEL_284;
    }
  }

  if (v253.i32[1] > 2)
  {
LABEL_284:
    cv::Mat::copySize(v220, &v253);
    goto LABEL_285;
  }

  *&v220[4] = v253.i32[1];
  *&v220[8] = v254;
  v105 = v260;
  v106 = v222;
  *v222 = *v260;
  v106[1] = v105[1];
LABEL_285:
  *&v220[40] = v257;
  *&v220[24] = v256;
  *&v220[16] = v255;
  *&v220[56] = v258;
  if (v256 && atomic_fetch_add(v256, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v253);
  }

  v255 = 0;
  v257 = 0uLL;
  *(&v256 + 1) = 0;
  if (v253.i32[1] >= 1)
  {
    v107 = 0;
    v108 = v259;
    do
    {
      v108[v107++] = 0;
    }

    while (v107 < v253.i32[1]);
  }

  *&v256 = 0;
  if (v260)
  {
    v109 = v260 == v261;
  }

  else
  {
    v109 = 1;
  }

  if (!v109)
  {
    free(v260);
  }

  if ((*v220 & 0xFFE) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v212, "(mask.type() == CV_8UC1 || mask.type() == CV_8SC1)");
    std::string::basic_string[abi:ne200100]<0>(__p, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(&v249, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v253, -215, v212, __p, &v249, 1363);
    cv::error(&v253, v110);
  }

  v111 = v221;
  v112 = *(v221 - 1);
  v113 = v244;
  if (v112 != v244[-1].i32[1])
  {
    goto LABEL_302;
  }

  if (v112 != 2)
  {
    if (v112 < 1)
    {
      goto LABEL_306;
    }

    while (1)
    {
      v116 = *v111++;
      v115 = v116;
      v117 = v113->i32[0];
      v113 = (v113 + 4);
      if (v115 != v117)
      {
        break;
      }

      if (!--v112)
      {
        goto LABEL_306;
      }
    }

LABEL_302:
    std::string::basic_string[abi:ne200100]<0>(v212, "mask.size == src1.size");
    std::string::basic_string[abi:ne200100]<0>(__p, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(&v249, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v253, -215, v212, __p, &v249, 1364);
    cv::error(&v253, v114);
  }

  if (*v221 != v244->i32[0] || v221[1] != v244->i32[1])
  {
    goto LABEL_302;
  }

LABEL_306:
  CopyMaskFunc = cv::getCopyMaskFunc(v224);
  (**v12)(&v253, v12, 0xFFFFFFFFLL);
  v118 = v259;
  v119 = *(v259 - 1);
  v120 = v244;
  if (v119 != v244[-1].i32[1])
  {
LABEL_310:
    v102 = 0;
    goto LABEL_315;
  }

  if (v119 == 2)
  {
    if (*v259 != v244->i32[0] || v259[1] != v244->i32[1])
    {
      goto LABEL_310;
    }
  }

  else if (v119 >= 1)
  {
    do
    {
      v122 = *v118++;
      v121 = v122;
      v123 = v120->i32[0];
      v120 = (v120 + 4);
      if (v121 != v123)
      {
        goto LABEL_310;
      }
    }

    while (--v119);
  }

  v102 = (v253.i16[0] & 0xFFF) == v99;
LABEL_315:
  if (v256 && atomic_fetch_add(v256, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v253);
  }

  v255 = 0;
  *(&v256 + 1) = 0;
  v257 = 0uLL;
  if (v253.i32[1] >= 1)
  {
    v124 = 0;
    v125 = v259;
    do
    {
      v125[v124++] = 0;
    }

    while (v124 < v253.i32[1]);
  }

  *&v256 = 0;
  if (v260)
  {
    v126 = v260 == v261;
  }

  else
  {
    v126 = 1;
  }

  if (!v126)
  {
    free(v260);
  }

  v101 = v224;
LABEL_327:
  v127 = (v98 & 0xFFFFFFF8 | v91 & 7);
  v128 = (v100 << ((0xFA50u >> (2 * (v127 & 7))) & 3));
  v253 = &v255;
  v254 = 4104;
  if (v205)
  {
    v129 = v128;
  }

  else
  {
    v129 = 0;
  }

  v130 = v190;
  if (v198)
  {
    v130 = 1;
  }

  if (v130)
  {
    v131 = v128;
  }

  else
  {
    v131 = 0;
  }

  if (v195)
  {
    v132 = v128;
  }

  else
  {
    v132 = 0;
  }

  (*(*v12 + 144))(v12);
  (**v12)(v212, v12, 0xFFFFFFFFLL);
  if (!v102)
  {
    *__p = 0u;
    v209 = 0u;
    cv::Mat::operator=(v212, __p);
  }

  v133 = v196 ^ 1;
  v134 = v101 + v131 + v129 + v132;
  v202 = *(v201 + 8 * (v91 & 7));
  v135 = (v128 + 1023) / v128;
  if (v190)
  {
    *&v249 = &v236;
    *(&v249 + 1) = v212;
    v250 = v220;
    v251 = 0;
    v247 = 0uLL;
    *&v248 = 0;
    cv::NAryMatIterator::NAryMatIterator(__p, &v249, &v247, -1);
    v136 = v211;
    if (v211 < v135)
    {
      v135 = v211;
    }

    v137 = v135 * v134 + 64;
    v138 = v253;
    if (v254 < v137)
    {
      if (v253 != &v255)
      {
        if (v253)
        {
          MEMORY[0x2318CB180](*&v253, 0x1000C8077774924);
        }

        v138 = &v255;
        v253 = &v255;
      }

      v254 = v137;
      if (v137 >= 0x1009)
      {
        operator new[]();
      }
    }

    v139 = v135 * v128;
    if (v205)
    {
      v140 = ((v138 + v139 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    else
    {
      v140 = v138;
    }

    cv::convertAndUnrollScalar(&v225, v127, v140, v135);
    v141 = 0;
    v199 = (v140 + v139 + 15) & 0xFFFFFFFFFFFFFFF0;
    v194 = v199 + v139 + 15;
    if (v195)
    {
      v133 = 1;
    }

    while (v141 < v210)
    {
      v191 = v141;
      if (v136)
      {
        v142 = 0;
        v144 = *(&v247 + 1);
        v143 = v247;
        do
        {
          if (&v136[-v142] >= v135)
          {
            v145 = v135;
          }

          else
          {
            v145 = &v136[-v142];
          }

          if (v205)
          {
            v206 = v203 * v145;
            v207 = 1;
            v205(v143, 0, 0, 0, v138, 0, &v206, 0);
            v143 = v138;
          }

          if (v50)
          {
            v146 = v140;
          }

          else
          {
            v146 = v143;
          }

          if (v50)
          {
            v147 = v143;
          }

          else
          {
            v147 = v140;
          }

          if (v133)
          {
            v206 = v203 * v145;
            v207 = 1;
            v202(v146, 0, v147, 0, v199, 0, &v206, v204);
            if (v196)
            {
              v206 = v203 * v145;
              v207 = 1;
              v195(v199, 0, 0, 0, v144, 0, &v206, 0);
            }

            else
            {
              if (v195)
              {
                v206 = v203 * v145;
                v207 = 1;
                v195(v199, 0, 0, 0, v194 & 0xFFFFFFFFFFFFFFF0, 0, &v206, 0);
                v206 = v145;
                v207 = 1;
                CopyMaskFunc(v194 & 0xFFFFFFFFFFFFFFF0, 0, v248, 0, v144, 0, &v206, &v224);
              }

              else
              {
                v206 = v145;
                v207 = 1;
                CopyMaskFunc(v199, 0, v248, 0, v144, 0, &v206, &v224);
              }

              *&v248 = v248 + v145;
            }
          }

          else
          {
            v206 = v203 * v145;
            v207 = 1;
            v202(v146, 0, v147, 0, v144, 0, &v206, v204);
          }

          v143 = (v247 + v145 * v200);
          v144 = *(&v247 + 1) + v224 * v145;
          *&v247 = v143;
          *(&v247 + 1) = v144;
          v142 += v135;
        }

        while (v142 < v136);
      }

      v141 = v191 + 1;
      cv::NAryMatIterator::operator++(__p);
    }
  }

  else
  {
    *&v249 = &v236;
    *(&v249 + 1) = &v225;
    v250 = v212;
    v251 = v220;
    v252 = 0;
    v247 = 0u;
    v248 = 0u;
    cv::NAryMatIterator::NAryMatIterator(__p, &v249, &v247, -1);
    if (v205)
    {
      v148 = 1;
    }

    else
    {
      v148 = v196 ^ 1;
    }

    if (v198)
    {
      v148 = 1;
    }

    if (v195)
    {
      v148 = 1;
    }

    if (v211 >= v135)
    {
      v149 = ((v128 + 1023) / v128);
    }

    else
    {
      v149 = v211;
    }

    v197 = v211;
    if (v148)
    {
      v150 = v149;
    }

    else
    {
      v150 = v211;
    }

    v151 = v150 * v134 + 64;
    v152 = v253;
    if (v254 >= v151)
    {
      v153 = v205;
    }

    else
    {
      if (v253 == &v255)
      {
        v153 = v205;
      }

      else
      {
        v153 = v205;
        if (v253)
        {
          MEMORY[0x2318CB180](*&v253, 0x1000C8077774924);
        }

        v152 = &v255;
        v253 = &v255;
      }

      v254 = v151;
      if (v151 >= 0x1009)
      {
        operator new[]();
      }
    }

    v154 = 0;
    v155 = v150 * v128;
    if (v153)
    {
      v156 = (v152 + v150 * v128 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v156 = v152;
    }

    if (v198)
    {
      v157 = (v156 + v155 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v157 = v156;
    }

    if (v198)
    {
      v158 = v156;
    }

    else
    {
      v158 = 0;
    }

    v185 = v158;
    v186 = v156;
    v189 = v157;
    v184 = v157 + v155 + 15;
    if (v195)
    {
      v159 = 1;
    }

    else
    {
      v159 = v196 ^ 1;
    }

    v192 = v159;
    while (v154 < v210)
    {
      v183 = v154;
      if (v197)
      {
        v160 = 0;
        v162 = *(&v247 + 1);
        v161 = v247;
        v163 = v197;
        v164 = v248;
        do
        {
          v165 = v163;
          v31 = v163 >= v150;
          v163 -= v150;
          if (v31)
          {
            v166 = v150;
          }

          else
          {
            v166 = v165;
          }

          if (v153)
          {
            v206 = v203 * v166;
            v207 = 1;
            v153(v161, 0, 0, 0, v152, 0, &v206, 0);
            v167 = *(&v247 + 1);
            v161 = v247;
            v168 = v152;
          }

          else
          {
            v167 = v162;
            v168 = v161;
          }

          if (v161 == v167)
          {
            v169 = v168;
          }

          else
          {
            v169 = v162;
          }

          if (v161 != v167 && v198)
          {
            v206 = v203 * v166;
            v207 = 1;
            v198(v162, 0, 0, 0, v186, 0, &v206, 0);
            v169 = v185;
          }

          if (v192)
          {
            v206 = v203 * v166;
            v207 = 1;
            v202(v168, 0, v169, 0, v189, 0, &v206, v204);
            if (v196)
            {
              v206 = v203 * v166;
              v207 = 1;
              v195(v189, 0, 0, 0, v164, 0, &v206, 0);
            }

            else
            {
              if (v195)
              {
                v206 = v203 * v166;
                v207 = 1;
                v195(v189, 0, 0, 0, v184 & 0xFFFFFFFFFFFFFFF0, 0, &v206, 0);
                v206 = v166;
                v207 = 1;
                CopyMaskFunc(v184 & 0xFFFFFFFFFFFFFFF0, 0, *(&v248 + 1), 0, v164, 0, &v206, &v224);
              }

              else
              {
                v206 = v166;
                v207 = 1;
                CopyMaskFunc(v189, 0, *(&v248 + 1), 0, v164, 0, &v206, &v224);
              }

              *(&v248 + 1) += v166;
            }
          }

          else
          {
            v206 = v203 * v166;
            v207 = 1;
            v202(v168, 0, v169, 0, v164, 0, &v206, v204);
          }

          v161 = (v247 + v166 * v200);
          v162 = (*(&v247 + 1) + v166 * v193);
          *&v247 = v161;
          *(&v247 + 1) = v162;
          v164 = v248 + v224 * v166;
          *&v248 = v164;
          v160 += v150;
          v153 = v205;
        }

        while (v160 < v197);
      }

      v154 = v183 + 1;
      cv::NAryMatIterator::operator++(__p);
    }
  }

  if (v213 && atomic_fetch_add(v213, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v212);
  }

  v212[2] = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  if (SHIDWORD(v212[0]) >= 1)
  {
    v170 = 0;
    v171 = v217;
    do
    {
      *(v171 + 4 * v170++) = 0;
    }

    while (v170 < SHIDWORD(v212[0]));
  }

  v213 = 0;
  if (v218)
  {
    v172 = v218 == &v219;
  }

  else
  {
    v172 = 1;
  }

  if (!v172)
  {
    free(v218);
  }

  if (v253 != &v255 && *&v253 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (*&v220[24] && atomic_fetch_add(*&v220[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v220);
  }

  *&v220[16] = 0;
  memset(&v220[32], 0, 24);
  if (*&v220[4] >= 1)
  {
    v174 = 0;
    v175 = v221;
    do
    {
      v175[v174++] = 0;
    }

    while (v174 < *&v220[4]);
  }

  *&v220[24] = 0;
  v85 = v222;
  if (v222)
  {
    v176 = v222 == v223;
  }

  else
  {
    v176 = 1;
  }

  if (!v176)
  {
LABEL_465:
    free(v85);
  }

LABEL_466:
  if (v229 && atomic_fetch_add(v229, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v225);
  }

  v228 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  if (SHIDWORD(v225) >= 1)
  {
    v177 = 0;
    v178 = v233;
    do
    {
      v178[v177++] = 0;
    }

    while (v177 < SHIDWORD(v225));
  }

  v229 = 0;
  if (v234)
  {
    v179 = v234 == &v235;
  }

  else
  {
    v179 = 1;
  }

  if (!v179)
  {
    free(v234);
  }

  if (v240 && atomic_fetch_add(v240, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v236);
  }

  v239 = 0;
  v241 = 0;
  v243 = 0;
  v242 = 0;
  if (SHIDWORD(v236) >= 1)
  {
    v180 = 0;
    v181 = v244;
    do
    {
      v181->i32[v180++] = 0;
    }

    while (v180 < SHIDWORD(v236));
  }

  v240 = 0;
  if (v245)
  {
    v182 = v245 == &v246;
  }

  else
  {
    v182 = 1;
  }

  if (!v182)
  {
    free(v245);
  }
}

void sub_22D22EE88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::absdiff(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4)
{
  cv::noArray(this);

  cv::arithm_op(this);
}

void cv::compare(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v155[3] = *MEMORY[0x277D85DE8];
  v129 = v10;
  if (v10 >= 6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v121, "op == CMP_LT || op == CMP_LE || op == CMP_EQ || op == CMP_NE || op == CMP_GE || op == CMP_GT");
    std::string::basic_string[abi:ne200100]<0>(&v113, "compare");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v140, -215, &v121, &v113, __p, 2464);
    cv::error(&v140, v11);
  }

  v12 = (*(*v4 + 40))(v4);
  v13 = (*(*v8 + 40))(v8);
  (**v9)(&v121, v9, 0xFFFFFFFFLL);
  (**v8)(&v113, v8, 0xFFFFFFFFLL);
  v16 = v12 == v13 && SDWORD1(v121) <= 2 && SDWORD1(v113) <= 2;
  if (!v16 || ((v17 = *v126, v126[1] == v118[1]) ? (v18 = v17 == *v118) : (v18 = 0), !v18 || ((v113 ^ v121) & 0xFFF) != 0))
  {
    if ((v12 == 0x20000) != (v13 == 0x20000))
    {
      goto LABEL_27;
    }

    v19 = v126;
    v20 = *(v126 - 1);
    v21 = v118;
    if (v20 != *(v118 - 1))
    {
      goto LABEL_27;
    }

    if (v20 == 2)
    {
      if (*v126 != *v118 || v126[1] != v118[1])
      {
        goto LABEL_27;
      }
    }

    else if (v20 >= 1)
    {
      do
      {
        v23 = *v19++;
        v22 = v23;
        v24 = *v21++;
        if (v22 != v24)
        {
          goto LABEL_27;
        }
      }

      while (--v20);
    }

    if (((v113 ^ v121) & 0xFFF) == 0)
    {
      v91 = 0;
      goto LABEL_68;
    }

LABEL_27:
    v25 = v113 & 0xFFF;
    if (SDWORD1(v121) < 3)
    {
      v26 = v121;
      if (HIDWORD(v121) == 1 || DWORD2(v121) == 1)
      {
        v28 = v12 != 0x20000 && v13 == 0x20000;
        v29 = v28;
        if ((v121 & 0x4000) != 0 && !v29)
        {
          v30 = (v25 >> 3) + 1;
          v31 = *v126;
          v32 = v126[1];
          v33 = v32 == v30;
          if (*v126 != 1)
          {
            v33 = 0;
          }

          v34 = v31 == v30 || *v126 == 1;
          if (v32 != 1)
          {
            v34 = 0;
          }

          if (v34 || v33 || v32 == 1 && v31 == 4 && v25 <= 0x1F && (v121 & 0xFFF) == 6)
          {
            cv::swap(&v121, &v113, v14);
            v35 = v129;
            if ((v129 - 2) >= 3)
            {
              if (v129 == 1)
              {
                v35 = 3;
              }
            }

            else
            {
              v35 = dword_22D29B868[v129 - 2];
            }

            v129 = v35;
            v91 = 1;
LABEL_68:
            v39 = v113;
            v40 = v121;
            (*(*v6 + 144))(v6, DWORD1(v121), v126, v121 & 0xFF8, 0xFFFFFFFFLL, 0, 0);
            cv::Mat::reshape(&v140, &v121, 1, 0);
            if (v143)
            {
              atomic_fetch_add(v143, 1u);
            }

            if (v123 && atomic_fetch_add(v123, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v121);
            }

            v122 = 0;
            v124 = 0uLL;
            *(&v123 + 1) = 0;
            if (v121 <= 0)
            {
              *&v123 = 0;
              LODWORD(v121) = v140;
            }

            else
            {
              v41 = 0;
              v42 = v126;
              do
              {
                v42[v41++] = 0;
              }

              while (v41 < SDWORD1(v121));
              *&v123 = 0;
              LODWORD(v121) = v140;
              if (SDWORD1(v121) > 2)
              {
                goto LABEL_81;
              }
            }

            if (SHIDWORD(v140) <= 2)
            {
              DWORD1(v121) = HIDWORD(v140);
              *(&v121 + 1) = v141;
              v43 = v147;
              v44 = v127;
              *v127 = *v147;
              v44[1] = v43[1];
LABEL_82:
              v122 = v142;
              v124 = v144;
              v123 = v143;
              v125 = v145;
              if (v143 && atomic_fetch_add(v143, 0xFFFFFFFF) == 1)
              {
                cv::Mat::deallocate(&v140);
              }

              v142 = 0;
              v144 = 0uLL;
              *(&v143 + 1) = 0;
              if (SHIDWORD(v140) >= 1)
              {
                v45 = 0;
                v46 = v146;
                do
                {
                  *(v46 + 4 * v45++) = 0;
                }

                while (v45 < SHIDWORD(v140));
              }

              *&v143 = 0;
              if (v147)
              {
                v47 = v147 == v148;
              }

              else
              {
                v47 = 1;
              }

              if (!v47)
              {
                free(v147);
              }

              cv::Mat::reshape(&v140, &v113, 1, 0);
              if (v143)
              {
                atomic_fetch_add(v143, 1u);
              }

              if (v115 && atomic_fetch_add(v115, 0xFFFFFFFF) == 1)
              {
                cv::Mat::deallocate(&v113);
              }

              v114 = 0;
              v116 = 0uLL;
              *(&v115 + 1) = 0;
              if (v113 <= 0)
              {
                *&v115 = 0;
                LODWORD(v113) = v140;
              }

              else
              {
                v48 = 0;
                v49 = v118;
                do
                {
                  v49[v48++] = 0;
                }

                while (v48 < SDWORD1(v113));
                *&v115 = 0;
                LODWORD(v113) = v140;
                if (SDWORD1(v113) > 2)
                {
                  goto LABEL_106;
                }
              }

              if (SHIDWORD(v140) <= 2)
              {
                DWORD1(v113) = HIDWORD(v140);
                *(&v113 + 1) = v141;
                v50 = v147;
                v51 = v119;
                *v119 = *v147;
                v51[1] = v50[1];
LABEL_107:
                v114 = v142;
                v116 = v144;
                v115 = v143;
                v117 = v145;
                if (v143 && atomic_fetch_add(v143, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(&v140);
                }

                v142 = 0;
                v144 = 0uLL;
                *(&v143 + 1) = 0;
                if (SHIDWORD(v140) >= 1)
                {
                  v52 = 0;
                  v53 = v146;
                  do
                  {
                    *(v53 + 4 * v52++) = 0;
                  }

                  while (v52 < SHIDWORD(v140));
                }

                *&v143 = 0;
                if (v147)
                {
                  v54 = v147 == v148;
                }

                else
                {
                  v54 = 1;
                }

                if (!v54)
                {
                  free(v147);
                }

                (**v6)(&v140, v6, 0xFFFFFFFFLL);
                cv::Mat::reshape(__p, &v140, 1, 0);
                if (v143 && atomic_fetch_add(v143, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(&v140);
                }

                v142 = 0;
                v144 = 0uLL;
                *(&v143 + 1) = 0;
                if (SHIDWORD(v140) >= 1)
                {
                  v55 = 0;
                  v56 = v146;
                  do
                  {
                    *(v56 + 4 * v55++) = 0;
                  }

                  while (v55 < SHIDWORD(v140));
                }

                v57 = (v40 & 7);
                *&v143 = 0;
                if (v147)
                {
                  v58 = v147 == v148;
                }

                else
                {
                  v58 = 1;
                }

                if (!v58)
                {
                  free(v147);
                }

                if (SDWORD1(v121) < 1)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v127[DWORD1(v121) - 1];
                }

                v60 = cv::getCmpFunc(int)::cmpTab[v57];
                if ((v91 & 1) == 0)
                {
                  v130.i64[0] = &v121;
                  v130.i64[1] = &v113;
                  v131 = COERCE_DOUBLE(__p);
                  v132 = 0.0;
                  v149 = 0uLL;
                  v150 = 0;
                  cv::NAryMatIterator::NAryMatIterator(&v140, &v130, &v149, -1);
                  v68 = v144;
                  v69 = -1;
                  while (++v69 < *(&v143 + 1))
                  {
                    v155[0] = (v68 | 0x100000000);
                    (v60)(v149, 0, *(&v149 + 1), 0, v150, 0, v155, &v129);
                    cv::NAryMatIterator::operator++(&v140);
                  }

LABEL_175:
                  if (v106 && atomic_fetch_add(v106, 0xFFFFFFFF) == 1)
                  {
                    cv::Mat::deallocate(__p);
                  }

                  __p[2] = 0;
                  v107 = 0;
                  v108 = 0;
                  v109 = 0;
                  if (SHIDWORD(__p[0]) >= 1)
                  {
                    v75 = 0;
                    v76 = v110;
                    do
                    {
                      *(v76 + 4 * v75++) = 0;
                    }

                    while (v75 < SHIDWORD(__p[0]));
                  }

                  v106 = 0;
                  v77 = v111;
                  v78 = &v112;
                  goto LABEL_182;
                }

                v155[0] = &v121;
                v155[1] = __p;
                v155[2] = 0;
                v153 = 0;
                v154 = 0;
                cv::NAryMatIterator::NAryMatIterator(&v149, v155, &v153, -1);
                v61 = v152;
                if ((v59 + 1023) / v59 >= v152)
                {
                  v62 = v152;
                }

                else
                {
                  v62 = (v59 + 1023) / v59;
                }

                v140 = &v142;
                v141 = 4104;
                if (v62 * v59 >= 0x1009)
                {
                  v141 = v62 * v59;
                  operator new[]();
                }

                if (v57 >= 5)
                {
                  cv::convertAndUnrollScalar(&v113, v57, &v142, v62);
LABEL_140:
                  for (i = 0; i < v151; ++i)
                  {
                    if (v61)
                    {
                      v64 = 0;
                      v65 = v153;
                      v66 = v154;
                      do
                      {
                        if (v61 - v64 >= v62)
                        {
                          v67 = v62;
                        }

                        else
                        {
                          v67 = v61 - v64;
                        }

                        v130.i64[0] = v67 | 0x100000000;
                        (v60)(v65, 0, &v142, 0, v66, 0, &v130, &v129);
                        v65 = &v153[v67 * v59];
                        v66 = v154 + v67;
                        v153 = v65;
                        v154 = v66;
                        v64 += v62;
                      }

                      while (v64 < v61);
                    }

                    cv::NAryMatIterator::operator++(&v149);
                  }

                  if (v140 != &v142 && v140 != 0)
                  {
                    MEMORY[0x2318CB180]();
                  }

                  goto LABEL_175;
                }

                v104 = 0.0;
                ConvertFunc = cv::getConvertFunc((v39 & 7), 6);
                v130.i64[0] = 0x100000001;
                ConvertFunc(v114, 0, 0, 0, &v104, 0, &v130, 0);
                if (v104 >= cv::getMinVal(int)::tab[v57])
                {
                  if (v104 <= cv::getMaxVal(int)::tab[v57])
                  {
                    v103 = rint(v104);
                    if (v104 != v103)
                    {
                      if ((v129 & 0xFFFFFFFE) == 2)
                      {
                        v98 = v104;
                        if (v104 > v104)
                        {
                          ++v98;
                        }
                      }

                      else
                      {
                        if (v129 != 4 && v129 != 1)
                        {
                          if (v129 == 5)
                          {
                            v102 = 255;
                          }

                          else
                          {
                            v102 = 0;
                          }

                          *v130.i64 = v102;
                          *&v130.i64[1] = v102;
                          v131 = v102;
                          v132 = v102;
                          cv::Mat::operator=(__p, &v130);
LABEL_172:
                          if (v140 != &v142 && v140)
                          {
                            MEMORY[0x2318CB180]();
                          }

                          goto LABEL_175;
                        }

                        v98 = v104 - (v104 < v104);
                      }

                      v103 = v98;
                    }

                    *(v130.i64 + 4) = 0x100000002;
                    v131 = COERCE_DOUBLE(&v103);
                    v132 = 0.0;
                    v133 = &v103;
                    v136 = 0;
                    v137 = &v130.i64[1];
                    v138 = &v139;
                    v130.i32[3] = 1;
                    v130.i32[0] = 1124024324;
                    v139 = vdupq_n_s64(4uLL);
                    v134 = &v104;
                    v135 = &v104;
                    cv::convertAndUnrollScalar(&v130, v57, &v142, v62);
                    if (v132 != 0.0 && atomic_fetch_add(*&v132, 0xFFFFFFFF) == 1)
                    {
                      cv::Mat::deallocate(&v130);
                    }

                    v131 = 0.0;
                    v134 = 0;
                    v135 = 0;
                    v133 = 0;
                    if (v130.i32[1] >= 1)
                    {
                      v99 = 0;
                      v100 = v137;
                      do
                      {
                        *(v100 + v99++) = 0;
                      }

                      while (v99 < v130.i32[1]);
                    }

                    v132 = 0.0;
                    if (v138)
                    {
                      v101 = v138 == &v139;
                    }

                    else
                    {
                      v101 = 1;
                    }

                    if (!v101)
                    {
                      free(v138);
                    }

                    goto LABEL_140;
                  }

                  if (v129 == 5)
                  {
                    v74 = 255;
                  }

                  else
                  {
                    v74 = 0;
                  }

                  v73 = v74;
                  if ((v129 - 3) < 2)
                  {
                    v73 = 255.0;
                  }
                }

                else
                {
                  if (v129 == 5)
                  {
                    v72 = 255;
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v73 = v72;
                  if ((v129 - 1) < 2)
                  {
                    v73 = 255.0;
                  }
                }

                *v130.i64 = v73;
                *&v130.i64[1] = v73;
                v131 = v73;
                v132 = v73;
                cv::Mat::operator=(__p, &v130);
                goto LABEL_172;
              }

LABEL_106:
              cv::Mat::copySize(&v113, &v140);
              goto LABEL_107;
            }

LABEL_81:
            cv::Mat::copySize(&v121, &v140);
            goto LABEL_82;
          }
        }
      }
    }

    else
    {
      v26 = v121;
    }

    if (SDWORD1(v113) > 2)
    {
      goto LABEL_67;
    }

    v36 = DWORD2(v113) == 1 || HIDWORD(v113) == 1;
    v37 = !v36 || (v113 & 0x4000) == 0;
    if (v37 || v12 == 0x20000 && v13 != 0x20000)
    {
      goto LABEL_67;
    }

    v86 = (v26 >> 3) & 0x1FF;
    v87 = *v118;
    v88 = v118[1];
    v89 = v88 == v86 + 1;
    if (*v118 != 1)
    {
      v89 = 0;
    }

    v90 = v87 == v86 + 1 || *v118 == 1;
    if (v88 != 1)
    {
      v90 = 0;
    }

    v91 = 1;
    if (!v90 && !v89 && (v88 != 1 || v87 != 4 || v25 != 6 || v86 >= 4))
    {
LABEL_67:
      std::string::basic_string[abi:ne200100]<0>(__p, "The operation is neither 'array op array' (where arrays have the same size and the same type), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(&v130, "compare");
      std::string::basic_string[abi:ne200100]<0>(&v149, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v140, -209, __p, v130.i8, &v149, 2494);
      cv::error(&v140, v38);
    }

    goto LABEL_68;
  }

  LODWORD(v140) = v126[1];
  HIDWORD(v140) = v17;
  (*(*v6 + 128))(v6, &v140, v121 & 0xFF8, 0xFFFFFFFFLL, 0, 0);
  (**v6)(&v140, v6, 0xFFFFFFFFLL);
  v92 = DWORD2(v121);
  v93 = ((v121 >> 3) & 0x1FF) + 1;
  if ((v121 & v113 & v140 & 0x4000) != 0 && (v94 = SHIDWORD(v121) * v93 * SDWORD2(v121), v94 == v94))
  {
    v92 = 1;
  }

  else
  {
    LODWORD(v94) = HIDWORD(v121) * v93;
  }

  v95 = cv::getCmpFunc(int)::cmpTab[v121 & 7];
  __p[0] = __PAIR64__(v92, v94);
  (v95)(v122, v128, v114, v120, v142, v148[0], __p, &v129);
  if (v143 && atomic_fetch_add(v143, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v140);
  }

  v78 = v148;
  v142 = 0;
  v144 = 0uLL;
  *(&v143 + 1) = 0;
  if (SHIDWORD(v140) >= 1)
  {
    v96 = 0;
    v97 = v146;
    do
    {
      *(v97 + 4 * v96++) = 0;
    }

    while (v96 < SHIDWORD(v140));
  }

  *&v143 = 0;
  v77 = v147;
LABEL_182:
  if (v77)
  {
    v79 = v77 == v78;
  }

  else
  {
    v79 = 1;
  }

  if (!v79)
  {
    free(v77);
  }

  if (v115 && atomic_fetch_add(v115, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v113);
  }

  v114 = 0;
  v116 = 0uLL;
  *(&v115 + 1) = 0;
  if (SDWORD1(v113) >= 1)
  {
    v80 = 0;
    v81 = v118;
    do
    {
      v81[v80++] = 0;
    }

    while (v80 < SDWORD1(v113));
  }

  *&v115 = 0;
  if (v119)
  {
    v82 = v119 == &v120;
  }

  else
  {
    v82 = 1;
  }

  if (!v82)
  {
    free(v119);
  }

  if (v123 && atomic_fetch_add(v123, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v121);
  }

  v122 = 0;
  v124 = 0uLL;
  *(&v123 + 1) = 0;
  if (SDWORD1(v121) >= 1)
  {
    v83 = 0;
    v84 = v126;
    do
    {
      v84[v83++] = 0;
    }

    while (v83 < SDWORD1(v121));
  }

  *&v123 = 0;
  if (v127)
  {
    v85 = v127 == &v128;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    free(v127);
  }
}

void sub_22D2302D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a61 != a9 && a61 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  cv::Mat::~Mat(&__p);
  cv::Mat::~Mat(&a24);
  cv::Mat::~Mat(&a36);
  _Unwind_Resume(a1);
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAnd<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) & *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) & *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) & *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) & *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) & *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpOr<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) | *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) | *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) | *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) | *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) | *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpXor<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) ^ *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) ^ *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) ^ *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) ^ *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) ^ *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpNot<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        do
        {
          v10 = ~*(result + v9 + 1);
          v11 = (a5 + v9);
          *v11 = ~*(result + v9);
          v11[1] = v10;
          v12 = ~*(result + v9 + 3);
          v11[2] = ~*(result + v9 + 2);
          v11[3] = v12;
          v9 += 4;
          v8 = *a7;
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
          *(a5 + v9) = ~*(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a5 += a6;
      v13 = a7[1];
      a7[1] = v13 - 1;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpMax<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[*(a3 + v10) - *(result + v10) + 256] + *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[*(a3 + v10 - 1) - *(result + v10 - 1) + 256] + *(result + v10 - 1);
          *v12 = v11;
          v13 = cv::g_Saturate8u[*(a3 + v10 + 2) - *(result + v10 + 2) + 256] + *(result + v10 + 2);
          v12[1] = cv::g_Saturate8u[*(a3 + v10 + 1) - *(result + v10 + 1) + 256] + *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[*(a3 + v9) - *(result + v9) + 256] + *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpMax<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = *(result + v10 - 1);
          v13 = (a3 + v10);
          if (v12 <= *(a3 + v10 - 1))
          {
            LOBYTE(v12) = *(a3 + v10 - 1);
          }

          v14 = *v11;
          if (v14 <= *v13)
          {
            LOBYTE(v14) = *v13;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v12;
          *v15 = v14;
          v16 = v11[1];
          if (v16 <= v13[1])
          {
            LOBYTE(v16) = v13[1];
          }

          v17 = v11[2];
          v18 = v13[2];
          if (v17 <= v18)
          {
            LOBYTE(v17) = v18;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v19 = v10 + 3;
          v10 += 4;
        }

        while (v19 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v20 = *(result + v9);
          if (v20 <= *(a3 + v9))
          {
            LOBYTE(v20) = *(a3 + v9);
          }

          *(a5 + v9++) = v20;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v21 = a7[1];
      a7[1] = v21 - 1;
    }

    while (v21);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpMax<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (v16 <= *(a3 + v14 - 4))
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (v18 <= *(v17 - 1))
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (v20 <= *v17)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v21 <= v22)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (v23 <= *(a3 + 2 * v13))
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpMax<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (v16 <= *(a3 + v14 - 4))
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (v18 <= *(v17 - 1))
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (v20 <= *v17)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v21 <= v22)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (v23 <= *(a3 + 2 * v13))
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpMax<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vmax_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vmax_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
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
          v12 = *(result + 4 * v9);
          if (v12 <= *(a3 + 4 * v9))
          {
            v12 = *(a3 + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpMax<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbsl_s8(vcgt_f32(*(a3 + v12 - 8), *(result + v12 - 8)), *(a3 + v12 - 8), *(result + v12 - 8));
          *v13 = vbsl_s8(vcgt_f32(*(a3 + v12), *(result + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 4 * v11);
          if (v14 < *(a3 + 4 * v11))
          {
            v14 = *(a3 + 4 * v11);
          }

          *(a5 + 4 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpMax<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbslq_s8(vcgtq_f64(*(a3 + v12 - 16), *(result + v12 - 16)), *(a3 + v12 - 16), *(result + v12 - 16));
          *v13 = vbslq_s8(vcgtq_f64(*(a3 + v12), *(result + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 8 * v11);
          if (v14 < *(a3 + 8 * v11))
          {
            v14 = *(a3 + 8 * v11);
          }

          *(a5 + 8 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpMin<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(result + v10) - cv::g_Saturate8u[(*(result + v10) | 0x100) - *(a3 + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = *(result + v10 - 1) - cv::g_Saturate8u[(*(result + v10 - 1) | 0x100) - *(a3 + v10 - 1)];
          *v12 = v11;
          v13 = *(result + v10 + 2) - cv::g_Saturate8u[(*(result + v10 + 2) | 0x100) - *(a3 + v10 + 2)];
          v12[1] = *(result + v10 + 1) - cv::g_Saturate8u[(*(result + v10 + 1) | 0x100) - *(a3 + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(result + v9) - cv::g_Saturate8u[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpMin<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = *(result + v10 - 1);
          v13 = (a3 + v10);
          if (*(a3 + v10 - 1) < v12)
          {
            LOBYTE(v12) = *(a3 + v10 - 1);
          }

          v14 = *v11;
          if (*v13 < v14)
          {
            LOBYTE(v14) = *v13;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v12;
          *v15 = v14;
          v16 = v11[1];
          if (v13[1] < v16)
          {
            LOBYTE(v16) = v13[1];
          }

          v17 = v11[2];
          v18 = v13[2];
          if (v18 < v17)
          {
            LOBYTE(v17) = v18;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v19 = v10 + 3;
          v10 += 4;
        }

        while (v19 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v20 = *(result + v9);
          if (*(a3 + v9) < v20)
          {
            LOBYTE(v20) = *(a3 + v9);
          }

          *(a5 + v9++) = v20;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v21 = a7[1];
      a7[1] = v21 - 1;
    }

    while (v21);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpMin<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (*(a3 + v14 - 4) < v16)
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (*(v17 - 1) < v18)
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (*v17 < v20)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v22 < v21)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (*(a3 + 2 * v13) < v23)
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpMin<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (*(a3 + v14 - 4) < v16)
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (*(v17 - 1) < v18)
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (*v17 < v20)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v22 < v21)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (*(a3 + 2 * v13) < v23)
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpMin<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vmin_s32(*(a3 + v10 - 8), *(result + v10 - 8));
          *v11 = vmin_s32(*(a3 + v10), *(result + v10));
          v9 += 4;
          v8 = *a7;
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
          v12 = *(result + 4 * v9);
          if (*(a3 + 4 * v9) < v12)
          {
            v12 = *(a3 + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpMin<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbsl_s8(vcgt_f32(*(result + v12 - 8), *(a3 + v12 - 8)), *(a3 + v12 - 8), *(result + v12 - 8));
          *v13 = vbsl_s8(vcgt_f32(*(result + v12), *(a3 + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 4 * v11);
          if (*(a3 + 4 * v11) < v14)
          {
            v14 = *(a3 + 4 * v11);
          }

          *(a5 + 4 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpMin<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbslq_s8(vcgtq_f64(*(result + v12 - 16), *(a3 + v12 - 16)), *(a3 + v12 - 16), *(result + v12 - 16));
          *v13 = vbslq_s8(vcgtq_f64(*(result + v12), *(a3 + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 8 * v11);
          if (*(a3 + 8 * v11) < v14)
          {
            v14 = *(a3 + 8 * v11);
          }

          *(a5 + 8 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAdd<unsigned char,unsigned char,unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[*(a3 + v10) + 256 + *(result + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[*(a3 + v10 - 1) + 256 + *(result + v10 - 1)];
          *v12 = v11;
          v13 = cv::g_Saturate8u[*(a3 + v10 + 2) + 256 + *(result + v10 + 2)];
          v12[1] = cv::g_Saturate8u[*(a3 + v10 + 1) + 256 + *(result + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[*(a3 + v9) + 256 + *(result + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpAdd<signed char,signed char,signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) + *(a3 + v10 - 1);
          if (v13 >= 127)
          {
            v13 = 127;
          }

          if (v13 <= -128)
          {
            LOBYTE(v13) = 0x80;
          }

          v14 = *v11 + *v12;
          if (v14 >= 127)
          {
            v14 = 127;
          }

          if (v14 <= -128)
          {
            LOBYTE(v14) = 0x80;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] + v12[1];
          if (v16 >= 127)
          {
            v16 = 127;
          }

          v17 = v11[2];
          v18 = v12[2];
          if (v16 <= -128)
          {
            LOBYTE(v16) = 0x80;
          }

          v19 = v17 + v18;
          if (v19 >= 127)
          {
            v19 = 127;
          }

          if (v19 <= -128)
          {
            LOBYTE(v19) = 0x80;
          }

          v15[1] = v16;
          v15[2] = v19;
          v8 = *a7;
          v20 = v10 + 3;
          v10 += 4;
        }

        while (v20 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v21 = *(result + v9) + *(a3 + v9);
          if (v21 >= 127)
          {
            v21 = 127;
          }

          if (v21 <= -128)
          {
            LOBYTE(v21) = 0x80;
          }

          *(a5 + v9++) = v21;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v22 = a7[1];
      a7[1] = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpAdd<unsigned short,unsigned short,unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(a3 + v13 - 4) + *(result + v13 - 4);
          if (v16 >= 0xFFFF)
          {
            LOWORD(v16) = -1;
          }

          v17 = *(v15 - 1) + *(v14 - 1);
          if (v17 >= 0xFFFF)
          {
            LOWORD(v17) = -1;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v15 + *v14;
          if (v19 >= 0xFFFF)
          {
            LOWORD(v19) = -1;
          }

          v20 = v15[1] + v14[1];
          if (v20 >= 0xFFFF)
          {
            LOWORD(v20) = -1;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(a3 + 2 * v12) + *(result + 2 * v12);
          if (v21 >= 0xFFFF)
          {
            LOWORD(v21) = -1;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpAdd<short,short,short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) + *(a3 + v13 - 4);
          if (v16 >= 0x7FFF)
          {
            v16 = 0x7FFF;
          }

          if (v16 <= -32768)
          {
            LOWORD(v16) = 0x8000;
          }

          v17 = *(v14 - 1) + *(v15 - 1);
          if (v17 >= 0x7FFF)
          {
            v17 = 0x7FFF;
          }

          if (v17 <= -32768)
          {
            LOWORD(v17) = 0x8000;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 + *v15;
          if (v19 >= 0x7FFF)
          {
            v19 = 0x7FFF;
          }

          if (v19 <= -32768)
          {
            LOWORD(v19) = 0x8000;
          }

          v20 = v14[1] + v15[1];
          if (v20 >= 0x7FFF)
          {
            v20 = 0x7FFF;
          }

          if (v20 <= -32768)
          {
            LOWORD(v20) = 0x8000;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) + *(a3 + 2 * v12);
          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          if (v21 <= -32768)
          {
            LOWORD(v21) = 0x8000;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpAdd<int,int,int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vadd_s32(*(a3 + v10 - 8), *(result + v10 - 8));
          *v11 = vadd_s32(*(a3 + v10), *(result + v10));
          v9 += 4;
          v8 = *a7;
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
          *(a5 + 4 * v9) = *(a3 + 4 * v9) + *(result + 4 * v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v12 = a7[1];
      a7[1] = v12 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpAdd<float,float,float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vadd_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vadd_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = *(result + 4 * v11) + *(a3 + 4 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpAdd<double,double,double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vaddq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vaddq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = *(result + 8 * v11) + *(a3 + 8 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpSub<unsigned char,unsigned char,unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[(*(result + v10) | 0x100) - *(a3 + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[(*(result + v10 - 1) | 0x100) - *(a3 + v10 - 1)];
          *v12 = v11;
          v13 = cv::g_Saturate8u[(*(result + v10 + 2) | 0x100) - *(a3 + v10 + 2)];
          v12[1] = cv::g_Saturate8u[(*(result + v10 + 1) | 0x100) - *(a3 + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpSub<signed char,signed char,signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 >= 127)
          {
            v13 = 127;
          }

          if (v13 <= -128)
          {
            LOBYTE(v13) = 0x80;
          }

          v14 = *v11 - *v12;
          if (v14 >= 127)
          {
            v14 = 127;
          }

          if (v14 <= -128)
          {
            LOBYTE(v14) = 0x80;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 >= 127)
          {
            v16 = 127;
          }

          v17 = v11[2];
          v18 = v12[2];
          if (v16 <= -128)
          {
            LOBYTE(v16) = 0x80;
          }

          v19 = v17 - v18;
          if (v19 >= 127)
          {
            v19 = 127;
          }

          if (v19 <= -128)
          {
            LOBYTE(v19) = 0x80;
          }

          v15[1] = v16;
          v15[2] = v19;
          v8 = *a7;
          v20 = v10 + 3;
          v10 += 4;
        }

        while (v20 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v21 = *(result + v9) - *(a3 + v9);
          if (v21 >= 127)
          {
            v21 = 127;
          }

          if (v21 <= -128)
          {
            LOBYTE(v21) = 0x80;
          }

          *(a5 + v9++) = v21;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v22 = a7[1];
      a7[1] = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpSub<unsigned short,unsigned short,unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = *(result + v13 - 4) - *(a3 + v13 - 4);
          v15 = *(result + v13 - 2) - *(a3 + v13 - 2);
          v16 = (a5 + v13);
          *(v16 - 2) = v14 & ~(v14 >> 31);
          *(v16 - 1) = v15 & ~(v15 >> 31);
          v17 = *(result + v13 + 2) - *(a3 + v13 + 2);
          *v16 = (*(result + v13) - *(a3 + v13)) & ~((*(result + v13) - *(a3 + v13)) >> 31);
          v16[1] = v17 & ~(v17 >> 31);
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v18 = *(result + 2 * v12) - *(a3 + 2 * v12);
          *(a5 + 2 * v12++) = v18 & ~(v18 >> 31);
        }

        while (v8 != v12);
      }

      result += v10;
      a3 += a4 & 0xFFFFFFFFFFFFFFFELL;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpSub<short,short,short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) - *(a3 + v13 - 4);
          if (v16 >= 0x7FFF)
          {
            v16 = 0x7FFF;
          }

          if (v16 <= -32768)
          {
            LOWORD(v16) = 0x8000;
          }

          v17 = *(v14 - 1) - *(v15 - 1);
          if (v17 >= 0x7FFF)
          {
            v17 = 0x7FFF;
          }

          if (v17 <= -32768)
          {
            LOWORD(v17) = 0x8000;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 - *v15;
          if (v19 >= 0x7FFF)
          {
            v19 = 0x7FFF;
          }

          if (v19 <= -32768)
          {
            LOWORD(v19) = 0x8000;
          }

          v20 = v14[1] - v15[1];
          if (v20 >= 0x7FFF)
          {
            v20 = 0x7FFF;
          }

          if (v20 <= -32768)
          {
            LOWORD(v20) = 0x8000;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) - *(a3 + 2 * v12);
          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          if (v21 <= -32768)
          {
            LOWORD(v21) = 0x8000;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpSub<int,int,int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vsub_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vsub_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
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
          *(a5 + 4 * v9) = *(result + 4 * v9) - *(a3 + 4 * v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v12 = a7[1];
      a7[1] = v12 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpSub<float,float,float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vsub_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vsub_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = *(result + 4 * v11) - *(a3 + 4 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpSub<double,double,double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vsubq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vsubq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = *(result + 8 * v11) - *(a3 + 8 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAbsDiff<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 < 0)
          {
            LOBYTE(v13) = *(a3 + v10 - 1) - *(result + v10 - 1);
          }

          v14 = *v11 - *v12;
          if (v14 < 0)
          {
            LOBYTE(v14) = *v12 - *v11;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 < 0)
          {
            LOBYTE(v16) = v12[1] - v11[1];
          }

          v17 = v11[2] - v12[2];
          if (v17 < 0)
          {
            v17 = -v17;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v18 = v10 + 3;
          v10 += 4;
        }

        while (v18 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v19 = *(result + v9) - *(a3 + v9);
          if (v19 < 0)
          {
            LOBYTE(v19) = *(a3 + v9) - *(result + v9);
          }

          *(a5 + v9++) = v19;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v20 = a7[1];
      a7[1] = v20 - 1;
    }

    while (v20);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpAbsDiff<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 < 0)
          {
            v13 = *(a3 + v10 - 1) - *(result + v10 - 1);
          }

          if (v13 >= 0x7F)
          {
            LOBYTE(v13) = 127;
          }

          v14 = *v11 - *v12;
          if (v14 < 0)
          {
            v14 = *v12 - *v11;
          }

          if (v14 >= 0x7F)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 < 0)
          {
            v16 = v12[1] - v11[1];
          }

          if (v16 >= 0x7F)
          {
            LOBYTE(v16) = 127;
          }

          v17 = v11[2] - v12[2];
          if (v17 < 0)
          {
            v17 = -v17;
          }

          if (v17 >= 0x7F)
          {
            LOBYTE(v17) = 127;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v18 = v10 + 3;
          v10 += 4;
        }

        while (v18 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v19 = *(result + v9) - *(a3 + v9);
          if (v19 < 0)
          {
            v19 = *(a3 + v9) - *(result + v9);
          }

          if (v19 >= 0x7F)
          {
            LOBYTE(v19) = 127;
          }

          *(a5 + v9++) = v19;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v20 = a7[1];
      a7[1] = v20 - 1;
    }

    while (v20);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpAbsDiff<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = (a3 + v14);
          v17 = *(result + v14 - 4) - *(a3 + v14 - 4);
          if (v17 < 0)
          {
            LOWORD(v17) = *(a3 + v14 - 4) - *(result + v14 - 4);
          }

          v18 = *(v15 - 1) - *(v16 - 1);
          if (v18 < 0)
          {
            LOWORD(v18) = *(v16 - 1) - *(v15 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v17;
          *(v19 - 1) = v18;
          v20 = *v15 - *v16;
          if (v20 < 0)
          {
            LOWORD(v20) = *v16 - *v15;
          }

          v21 = v15[1] - v16[1];
          if (v21 < 0)
          {
            v21 = -v21;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v22 = *(result + 2 * v13) - *(a3 + 2 * v13);
          if (v22 < 0)
          {
            LOWORD(v22) = *(a3 + 2 * v13) - *(result + 2 * v13);
          }

          *(a5 + 2 * v13++) = v22;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpAbsDiff<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) - *(a3 + v13 - 4);
          if (v16 < 0)
          {
            v16 = *(a3 + v13 - 4) - *(result + v13 - 4);
          }

          if (v16 >= 0x7FFF)
          {
            LOWORD(v16) = 0x7FFF;
          }

          v17 = *(v14 - 1) - *(v15 - 1);
          if (v17 < 0)
          {
            v17 = *(v15 - 1) - *(v14 - 1);
          }

          if (v17 >= 0x7FFF)
          {
            LOWORD(v17) = 0x7FFF;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 - *v15;
          if (v19 < 0)
          {
            v19 = *v15 - *v14;
          }

          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          v20 = v14[1] - v15[1];
          if (v20 < 0)
          {
            v20 = -v20;
          }

          if (v20 >= 0x7FFF)
          {
            LOWORD(v20) = 0x7FFF;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) - *(a3 + 2 * v12);
          if (v21 < 0)
          {
            v21 = *(a3 + 2 * v12) - *(result + 2 * v12);
          }

          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpAbsDiff<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vabd_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vabd_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
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
          v12 = *(result + 4 * v9) - *(a3 + 4 * v9);
          if (v12 < 0)
          {
            v12 = *(a3 + 4 * v9) - *(result + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpAbsDiff<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vabd_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vabd_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = vabds_f32(*(result + 4 * v11), *(a3 + 4 * v11));
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpAbsDiff<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vabdq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vabdq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = vabdd_f64(*(result + 8 * v11), *(a3 + 8 * v11));
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::mul8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10, float a11)
{
  v11 = a7[1];
  v12 = *a7;
  v13 = *a8;
  v14 = v11 - 1;
  LODWORD(v15) = 1.0;
  if (v13 == 1.0)
  {
    if (v11)
    {
      do
      {
        v16 = v14;
        if (v12 >= 4)
        {
          v17 = 0;
          do
          {
            v18 = (result + v17);
            v19 = (a3 + v17);
            v20 = *(a3 + v17) * *(result + v17);
            if (v20 >= 0xFF)
            {
              LOBYTE(v20) = -1;
            }

            v21 = v19[1] * v18[1];
            if (v21 >= 0xFF)
            {
              LOBYTE(v21) = -1;
            }

            v22 = (a5 + v17);
            *v22 = v20;
            v22[1] = v21;
            v23 = v19[2] * v18[2];
            if (v23 >= 0xFF)
            {
              LOBYTE(v23) = -1;
            }

            v24 = v19[3] * v18[3];
            if (v24 >= 0xFF)
            {
              LOBYTE(v24) = -1;
            }

            v22[2] = v23;
            v22[3] = v24;
            v17 += 4;
          }

          while (v17 <= v12 - 4);
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (v17 < v12)
        {
          do
          {
            v25 = *(a3 + v17) * *(result + v17);
            if (v25 >= 0xFF)
            {
              LOBYTE(v25) = -1;
            }

            *(a5 + v17++) = v25;
          }

          while (v17 < v12);
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        v14 = v16 - 1;
      }

      while (v16);
    }
  }

  else if (v11)
  {
    do
    {
      v26 = v14;
      if (v12 >= 4)
      {
        v27 = 0;
        do
        {
          v28 = result + v27;
          LOBYTE(v15) = *(result + v27);
          v29 = a3 + v27;
          LOBYTE(a11) = *(a3 + v27);
          *&v30 = LODWORD(a11);
          v31 = rint(((v13 * LODWORD(v15)) * *&v30));
          v32 = v31 & ~(v31 >> 31);
          LOBYTE(v31) = *(result + v27 + 1);
          LOBYTE(v30) = *(a3 + v27 + 1);
          v33 = v30;
          v34 = rint(((v13 * LODWORD(v31)) * v33));
          if (v32 >= 255)
          {
            LOBYTE(v32) = -1;
          }

          v35 = v34 & ~(v34 >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          v36 = (a5 + v27);
          *v36 = v32;
          v36[1] = v35;
          LOBYTE(v34) = *(v28 + 2);
          LOBYTE(v33) = *(v29 + 2);
          *&v37 = LODWORD(v33);
          v38 = rint(((v13 * LODWORD(v34)) * *&v37));
          v39 = v38;
          LOBYTE(v38) = *(v28 + 3);
          v40 = v39 & ~(v39 >> 31);
          LOBYTE(v37) = *(v29 + 3);
          a11 = v37;
          v15 = rint(((v13 * LODWORD(v38)) * a11));
          v41 = v15 & ~(v15 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v36[2] = v40;
          v36[3] = v41;
          v27 += 4;
        }

        while (v27 <= v12 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v12)
      {
        do
        {
          LOBYTE(v15) = *(result + v27);
          LOBYTE(a11) = *(a3 + v27);
          a11 = LODWORD(a11);
          v15 = rint(((v13 * LODWORD(v15)) * a11));
          v42 = v15 & ~(v15 >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          *(a5 + v27++) = v42;
        }

        while (v27 < v12);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v14 = v26 - 1;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::mul8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = v8 - 1;
  if (v10 == 1.0)
  {
    if (v8)
    {
      do
      {
        v12 = v11;
        if (v9 >= 4)
        {
          v13 = 0;
          do
          {
            v14 = (result + v13);
            v15 = (a3 + v13);
            v16 = *(a3 + v13) * *(result + v13);
            if (v16 <= -128)
            {
              v16 = -128;
            }

            if (v16 >= 127)
            {
              LOBYTE(v16) = 127;
            }

            v17 = v15[1] * v14[1];
            if (v17 <= -128)
            {
              v17 = -128;
            }

            if (v17 >= 127)
            {
              LOBYTE(v17) = 127;
            }

            v18 = (a5 + v13);
            *v18 = v16;
            v18[1] = v17;
            v19 = v15[2] * v14[2];
            if (v19 <= -128)
            {
              v19 = -128;
            }

            if (v19 >= 127)
            {
              LOBYTE(v19) = 127;
            }

            v20 = v15[3] * v14[3];
            if (v20 <= -128)
            {
              v20 = -128;
            }

            if (v20 >= 127)
            {
              LOBYTE(v20) = 127;
            }

            v18[2] = v19;
            v18[3] = v20;
            v13 += 4;
          }

          while (v13 <= v9 - 4);
          v13 = v13;
        }

        else
        {
          v13 = 0;
        }

        if (v13 < v9)
        {
          do
          {
            v21 = *(a3 + v13) * *(result + v13);
            if (v21 <= -128)
            {
              v21 = -128;
            }

            if (v21 >= 127)
            {
              LOBYTE(v21) = 127;
            }

            *(a5 + v13++) = v21;
          }

          while (v13 < v9);
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        v11 = v12 - 1;
      }

      while (v12);
    }
  }

  else if (v8)
  {
    do
    {
      v22 = v11;
      if (v9 >= 4)
      {
        v23 = 0;
        do
        {
          v24 = result + v23;
          v25 = (a3 + v23);
          v26 = rint(((v10 * *(result + v23)) * *(a3 + v23)));
          if (v26 <= -128)
          {
            LODWORD(v26) = -128;
          }

          if (v26 >= 127)
          {
            LOBYTE(v26) = 127;
          }

          v27 = rint(((v10 * *(result + v23 + 1)) * v25[1]));
          if (v27 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          v28 = (a5 + v23);
          *v28 = v26;
          v28[1] = v27;
          v29 = rint(((v10 * *(v24 + 2)) * v25[2]));
          if (v29 <= -128)
          {
            LODWORD(v29) = -128;
          }

          v30 = (v10 * *(v24 + 3)) * v25[3];
          if (v29 >= 127)
          {
            v31 = 127;
          }

          else
          {
            v31 = v29;
          }

          v32 = rint(v30);
          if (v32 <= -128)
          {
            LODWORD(v32) = -128;
          }

          if (v32 >= 127)
          {
            LOBYTE(v32) = 127;
          }

          v28[2] = v31;
          v28[3] = v32;
          v23 += 4;
        }

        while (v23 <= v9 - 4);
        v23 = v23;
      }

      else
      {
        v23 = 0;
      }

      if (v23 < v9)
      {
        do
        {
          v33 = rint(((v10 * *(result + v23)) * *(a3 + v23)));
          if (v33 <= -128)
          {
            LODWORD(v33) = -128;
          }

          if (v33 >= 127)
          {
            LOBYTE(v33) = 127;
          }

          *(a5 + v23++) = v33;
        }

        while (v23 < v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v11 = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::mul16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10, float a11)
{
  v11 = a7[1];
  v12 = *a7;
  v13 = *a7;
  v14 = *a8;
  v15 = a2 >> 1;
  v16 = a4 >> 1;
  v17 = a6 >> 1;
  v18 = v11 - 1;
  LODWORD(v19) = 1.0;
  if (v14 == 1.0)
  {
    if (v11)
    {
      v20 = 2 * v17;
      v21 = 2 * v16;
      v22 = 2 * v15;
      do
      {
        v23 = v18;
        if (v12 >= 4)
        {
          v25 = 0;
          v24 = 0;
          do
          {
            v26 = (result + v25);
            v27 = (a3 + v25);
            v28 = *(a3 + v25) * *(result + v25);
            if (v28 >= 0xFFFF)
            {
              LOWORD(v28) = -1;
            }

            v29 = v27[1] * v26[1];
            if (v29 >= 0xFFFF)
            {
              LOWORD(v29) = -1;
            }

            v30 = (a5 + v25);
            *v30 = v28;
            v30[1] = v29;
            v31 = v27[2] * v26[2];
            if (v31 >= 0xFFFF)
            {
              LOWORD(v31) = -1;
            }

            v32 = v27[3] * v26[3];
            if (v32 >= 0xFFFF)
            {
              LOWORD(v32) = -1;
            }

            v30[2] = v31;
            v30[3] = v32;
            v24 += 4;
            v25 += 8;
          }

          while (v24 <= v12 - 4);
          v24 = v24;
        }

        else
        {
          v24 = 0;
        }

        if (v24 < v13)
        {
          do
          {
            v33 = *(a3 + 2 * v24) * *(result + 2 * v24);
            if (v33 >= 0xFFFF)
            {
              LOWORD(v33) = -1;
            }

            *(a5 + 2 * v24++) = v33;
          }

          while (v12 != v24);
        }

        v18 = v23 - 1;
        a5 += v20;
        a3 += v21;
        result += v22;
      }

      while (v23);
    }
  }

  else if (v11)
  {
    v34 = 2 * v17;
    v35 = 2 * v16;
    v36 = 2 * v15;
    do
    {
      v37 = v18;
      if (v12 >= 4)
      {
        v39 = 0;
        v38 = 0;
        do
        {
          v40 = result + v39;
          LOWORD(v19) = *(result + v39);
          v41 = a3 + v39;
          LOWORD(a11) = *(a3 + v39);
          *&v42 = LODWORD(a11);
          v43 = rint(((v14 * LODWORD(v19)) * *&v42));
          v44 = v43;
          LOWORD(v43) = *(result + v39 + 2);
          v45 = v44 & ~(v44 >> 31);
          LOWORD(v42) = *(a3 + v39 + 2);
          v46 = v42;
          v47 = rint(((v14 * LODWORD(v43)) * v46));
          v48 = v47 & ~(v47 >> 31);
          if (v45 >= 0xFFFF)
          {
            LOWORD(v45) = -1;
          }

          if (v48 >= 0xFFFF)
          {
            LOWORD(v48) = -1;
          }

          v49 = (a5 + v39);
          *v49 = v45;
          v49[1] = v48;
          LOWORD(v47) = *(v40 + 4);
          LOWORD(v46) = *(v41 + 4);
          *&v50 = LODWORD(v46);
          v51 = rint(((v14 * LODWORD(v47)) * *&v50));
          v52 = v51 & ~(v51 >> 31);
          LOWORD(v51) = *(v40 + 6);
          LOWORD(v50) = *(v41 + 6);
          a11 = v50;
          v53 = (v14 * LODWORD(v51)) * a11;
          if (v52 >= 0xFFFF)
          {
            v54 = -1;
          }

          else
          {
            v54 = v52;
          }

          v19 = rint(v53);
          v55 = v19 & ~(v19 >> 31);
          if (v55 >= 0xFFFF)
          {
            LOWORD(v55) = -1;
          }

          v49[2] = v54;
          v49[3] = v55;
          v38 += 4;
          v39 += 8;
        }

        while (v38 <= v12 - 4);
        v38 = v38;
      }

      else
      {
        v38 = 0;
      }

      if (v38 < v13)
      {
        do
        {
          LOWORD(v19) = *(result + 2 * v38);
          LOWORD(a11) = *(a3 + 2 * v38);
          a11 = LODWORD(a11);
          v19 = rint(((v14 * LODWORD(v19)) * a11));
          v56 = v19 & ~(v19 >> 31);
          if (v56 >= 0xFFFF)
          {
            LOWORD(v56) = -1;
          }

          *(a5 + 2 * v38++) = v56;
        }

        while (v12 != v38);
      }

      v18 = v37 - 1;
      a5 += v34;
      a3 += v35;
      result += v36;
    }

    while (v37);
  }

  return result;
}

uint64_t cv::mul16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 1;
  v13 = a4 >> 1;
  v14 = a6 >> 1;
  v15 = v8 - 1;
  if (v11 == 1.0)
  {
    if (v8)
    {
      v16 = 2 * v14;
      v17 = 2 * v13;
      v18 = 2 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (result + v21);
            v23 = (a3 + v21);
            v24 = *(a3 + v21) * *(result + v21);
            if (v24 <= -32768)
            {
              v24 = -32768;
            }

            if (v24 >= 0x7FFF)
            {
              LOWORD(v24) = 0x7FFF;
            }

            v25 = v23[1] * v22[1];
            if (v25 <= -32768)
            {
              v25 = -32768;
            }

            if (v25 >= 0x7FFF)
            {
              LOWORD(v25) = 0x7FFF;
            }

            v26 = (a5 + v21);
            *v26 = v24;
            v26[1] = v25;
            v27 = v23[2] * v22[2];
            if (v27 <= -32768)
            {
              v27 = -32768;
            }

            if (v27 >= 0x7FFF)
            {
              LOWORD(v27) = 0x7FFF;
            }

            v28 = v23[3] * v22[3];
            if (v28 <= -32768)
            {
              v28 = -32768;
            }

            if (v28 >= 0x7FFF)
            {
              LOWORD(v28) = 0x7FFF;
            }

            v26[2] = v27;
            v26[3] = v28;
            v20 += 4;
            v21 += 8;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            v29 = *(a3 + 2 * v20) * *(result + 2 * v20);
            if (v29 <= -32768)
            {
              v29 = -32768;
            }

            if (v29 >= 0x7FFF)
            {
              LOWORD(v29) = 0x7FFF;
            }

            *(a5 + 2 * v20++) = v29;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v30 = 2 * v14;
    v31 = 2 * v13;
    v32 = 2 * v12;
    do
    {
      v33 = v15;
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = (result + v35);
          v37 = (a3 + v35);
          v38 = rint(((v11 * *(result + v35)) * *(a3 + v35)));
          if (v38 <= -32768)
          {
            LODWORD(v38) = -32768;
          }

          if (v38 >= 0x7FFF)
          {
            LOWORD(v38) = 0x7FFF;
          }

          v39 = rint(((v11 * v36[1]) * v37[1]));
          if (v39 <= -32768)
          {
            LODWORD(v39) = -32768;
          }

          if (v39 >= 0x7FFF)
          {
            LOWORD(v39) = 0x7FFF;
          }

          v40 = (a5 + v35);
          *v40 = v38;
          v40[1] = v39;
          v41 = rint(((v11 * v36[2]) * v37[2]));
          if (v41 <= -32768)
          {
            LODWORD(v41) = -32768;
          }

          v42 = ((v11 * v36[3]) * v37[3]);
          if (v41 >= 0x7FFF)
          {
            v43 = 0x7FFF;
          }

          else
          {
            v43 = v41;
          }

          v44 = rint(v42);
          if (v44 <= -32768)
          {
            LODWORD(v44) = -32768;
          }

          if (v44 >= 0x7FFF)
          {
            LOWORD(v44) = 0x7FFF;
          }

          v40[2] = v43;
          v40[3] = v44;
          v34 += 4;
          v35 += 8;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v10)
      {
        do
        {
          v45 = rint(((v11 * *(result + 2 * v34)) * *(a3 + 2 * v34)));
          if (v45 <= -32768)
          {
            LODWORD(v45) = -32768;
          }

          if (v45 >= 0x7FFF)
          {
            LOWORD(v45) = 0x7FFF;
          }

          *(a5 + 2 * v34++) = v45;
        }

        while (v9 != v34);
      }

      v15 = v33 - 1;
      a5 += v30;
      a3 += v31;
      result += v32;
    }

    while (v33);
  }

  return result;
}

uint64_t cv::mul32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  v12 = a4 >> 2;
  v13 = a6 >> 2;
  v14 = v8 - 1;
  if (*a8 == 1.0)
  {
    if (v8)
    {
      v15 = 4 * v13;
      v16 = 4 * v12;
      v17 = 4 * v11;
      do
      {
        v18 = v14;
        if (v9 >= 4)
        {
          v20 = 0;
          v19 = 0;
          do
          {
            v21 = (a5 + v20);
            *v21 = vmul_s32(*(a3 + v20), *(result + v20));
            v21[1] = vmul_s32(*(a3 + v20 + 8), *(result + v20 + 8));
            v19 += 4;
            v20 += 16;
          }

          while (v19 <= v9 - 4);
          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

        if (v19 < v9)
        {
          do
          {
            *(a5 + 4 * v19) = *(a3 + 4 * v19) * *(result + 4 * v19);
            ++v19;
          }

          while (v19 < v9);
        }

        v14 = v18 - 1;
        a5 += v15;
        a3 += v16;
        result += v17;
      }

      while (v18);
    }
  }

  else if (v8)
  {
    v22 = 4 * v13;
    v23 = 4 * v12;
    v24 = 4 * v11;
    do
    {
      v25 = v14;
      if (v9 >= 4)
      {
        v27 = 0;
        v26 = 0;
        do
        {
          v28 = rint(v10 * *(result + v27 + 4) * *(a3 + v27 + 4));
          v29 = (a5 + v27);
          *v29 = rint(v10 * *(result + v27) * *(a3 + v27));
          v29[1] = v28;
          v30 = rint(v10 * *(result + v27 + 12) * *(a3 + v27 + 12));
          v29[2] = rint(v10 * *(result + v27 + 8) * *(a3 + v27 + 8));
          v29[3] = v30;
          v26 += 4;
          v27 += 16;
        }

        while (v26 <= v9 - 4);
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      if (v26 < v9)
      {
        do
        {
          *(a5 + 4 * v26) = rint(v10 * *(result + 4 * v26) * *(a3 + 4 * v26));
          ++v26;
        }

        while (v26 < v9);
      }

      v14 = v25 - 1;
      a5 += v22;
      a3 += v23;
      result += v24;
    }

    while (v25);
  }

  return result;
}

uint64_t cv::mul32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 2;
  v13 = a4 >> 2;
  v14 = a6 >> 2;
  v15 = v8 - 1;
  if (v11 == 1.0)
  {
    if (v8)
    {
      v16 = 4 * v14;
      v17 = 4 * v13;
      v18 = 4 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (a5 + v21);
            *v22 = vmul_f32(*(result + v21), *(a3 + v21));
            v22[1] = vmul_f32(*(result + v21 + 8), *(a3 + v21 + 8));
            v20 += 4;
            v21 += 16;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            *(a5 + 4 * v20) = *(result + 4 * v20) * *(a3 + 4 * v20);
            ++v20;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v23 = 4 * v14;
    v24 = 4 * v13;
    v25 = 4 * v12;
    do
    {
      v26 = v15;
      if (v9 >= 4)
      {
        v28 = 0;
        v27 = 0;
        do
        {
          v29 = (a5 + v28);
          *v29 = vmul_f32(vmul_n_f32(*(result + v28), v11), *(a3 + v28));
          v29[1] = vmul_f32(vmul_n_f32(*(result + v28 + 8), v11), *(a3 + v28 + 8));
          v27 += 4;
          v28 += 16;
        }

        while (v27 <= v9 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v10)
      {
        do
        {
          *(a5 + 4 * v27) = (*(result + 4 * v27) * v11) * *(a3 + 4 * v27);
          ++v27;
        }

        while (v9 != v27);
      }

      v15 = v26 - 1;
      a5 += v23;
      a3 += v24;
      result += v25;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::mul64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 3;
  v13 = a4 >> 3;
  v14 = a6 >> 3;
  v15 = v8 - 1;
  if (*a8 == 1.0)
  {
    if (v8)
    {
      v16 = 8 * v14;
      v17 = 8 * v13;
      v18 = 8 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (a5 + v21);
            *v22 = vmulq_f64(*(result + v21), *(a3 + v21));
            v22[1] = vmulq_f64(*(result + v21 + 16), *(a3 + v21 + 16));
            v20 += 4;
            v21 += 32;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            *(a5 + 8 * v20) = *(result + 8 * v20) * *(a3 + 8 * v20);
            ++v20;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v23 = 8 * v14;
    v24 = 8 * v13;
    v25 = 8 * v12;
    do
    {
      v26 = v15;
      if (v9 >= 4)
      {
        v28 = 0;
        v27 = 0;
        do
        {
          v29 = (a5 + v28);
          *v29 = vmulq_f64(vmulq_n_f64(*(result + v28), v11), *(a3 + v28));
          v29[1] = vmulq_f64(vmulq_n_f64(*(result + v28 + 16), v11), *(a3 + v28 + 16));
          v27 += 4;
          v28 += 32;
        }

        while (v27 <= v9 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v10)
      {
        do
        {
          *(a5 + 8 * v27) = v11 * *(result + 8 * v27) * *(a3 + 8 * v27);
          ++v27;
        }

        while (v9 != v27);
      }

      v15 = v26 - 1;
      a5 += v23;
      a3 += v24;
      result += v25;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::div8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10)
{
  v10 = a5;
  if (!result)
  {
    v41 = *a7;
    return cv::recip_<unsigned char>(a3, a4, a5, a6, &v41, *a8);
  }

  v11 = a7[1];
  if (!v11)
  {
    return result;
  }

  v12 = *a7;
  v13 = *a8;
  do
  {
    if (v12 < 4)
    {
      v14 = 0;
      goto LABEL_38;
    }

    v15 = 0;
    v16 = 3;
    do
    {
      v17 = v16;
      v18 = a3 + v16;
      v19 = *(a3 + v16 - 3);
      v20 = *(v18 - 2);
      if (v19)
      {
        if (*(v18 - 2))
        {
          v21 = *(a3 + v17 - 1);
          if (*(a3 + v17 - 1))
          {
            v22 = *(a3 + v17);
            if (*(a3 + v17))
            {
              v23 = v15 | 2;
              v24 = v19;
              v25 = v15 | 3;
              v26 = v19 * v20;
              v27 = v21;
              v28 = v22;
              v29 = v21 * v22;
              *&v30 = v13 / (v26 * v29);
              v31 = v29 * *&v30;
              v32 = v26 * *&v30;
              v33 = (result + v17);
              LOBYTE(v30) = *(result + v17 - 3);
              *&v34 = rint(v31 * v30 * v20);
              v19 = *&v34 & ~(*&v34 >> 31);
              LOBYTE(v34) = *(result + v17 - 2);
              v35 = rint(v31 * v34 * v24);
              if (v19 >= 255)
              {
                LOBYTE(v19) = -1;
              }

              v20 = v35 & ~(v35 >> 31);
              if (v20 >= 255)
              {
                LOBYTE(v20) = -1;
              }

              LOBYTE(v35) = *(v33 - 1);
              v36 = rint(v32 * *&v35 * v28);
              v37 = v36 & ~(v36 >> 31);
              if (v37 >= 255)
              {
                LOBYTE(v37) = -1;
              }

              LOBYTE(v36) = *v33;
              a10 = rint(v32 * *&v36 * v27);
              v38 = a10 & ~(a10 >> 31);
              if (v38 >= 255)
              {
                LOBYTE(v38) = -1;
              }

              goto LABEL_36;
            }
          }
        }

        LOBYTE(a10) = *(result + v17 - 3);
        a10 = rint(v13 * *&a10 / v19);
        v19 = a10 & ~(a10 >> 31);
        if (v19 >= 255)
        {
          LOBYTE(v19) = -1;
        }
      }

      if (*(v18 - 2))
      {
        LOBYTE(a10) = *(result + v17 - 2);
        a10 = rint(v13 * *&a10 / v20);
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          LOBYTE(v20) = a10 & ~(a10 >> 31);
        }
      }

      if (*(a3 + v17 - 1))
      {
        LOBYTE(a10) = *(result + v17 - 1);
        a10 = rint(v13 * *&a10 / *(a3 + v17 - 1));
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v37) = -1;
        }

        else
        {
          LOBYTE(v37) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      v23 = v17 - 1;
      if (*(a3 + v17))
      {
        LOBYTE(a10) = *(result + v17);
        a10 = rint(v13 * *&a10 / *(a3 + v17));
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v38) = -1;
        }

        else
        {
          LOBYTE(v38) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOBYTE(v38) = 0;
      }

      v25 = v17;
LABEL_36:
      v39 = v10 + v17;
      *(v39 - 3) = v19;
      *(v39 - 2) = v20;
      *(v10 + v23) = v37;
      *(v10 + v25) = v38;
      v15 += 4;
      v16 = v17 + 4;
    }

    while (v17 + 1 <= v12 - 4);
    v14 = (v17 + 1);
LABEL_38:
    if (v14 < v12)
    {
      do
      {
        v40 = *(a3 + v14);
        if (*(a3 + v14))
        {
          LOBYTE(a10) = *(result + v14);
          a10 = rint(v13 * *&a10 / v40);
          v40 = a10 & ~(a10 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }
        }

        *(v10 + v14++) = v40;
      }

      while (v14 < v12);
    }

    result += a2;
    a3 += a4;
    v10 += a6;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t cv::div8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  do
  {
    if (v9 < 4)
    {
      v11 = 0;
      goto LABEL_53;
    }

    v12 = 0;
    v13 = 3;
    do
    {
      v14 = v13;
      v15 = a3 + v13;
      LODWORD(v13) = *(a3 + v13 - 3);
      LOBYTE(v16) = *(v15 - 2);
      if (v13)
      {
        if (*(v15 - 2) && *(a3 + v14 - 1) && *(a3 + v14))
        {
          v17 = v12 | 2;
          v18 = v12 | 3;
          v19 = v13;
          v20 = v16;
          v21 = *(a3 + v14 - 1);
          v22 = *(a3 + v14);
          v23 = v10 / (v19 * v20 * (v21 * v22));
          v24 = v21 * v22 * v23;
          v25 = v19 * v20 * v23;
          v26 = (result + v14);
          v13 = rint(v24 * *(result + v14 - 3) * v20);
          if (v13 <= -128)
          {
            LODWORD(v13) = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v16 = rint(v24 * *(v26 - 2) * v19);
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v27 = rint(v25 * *(v26 - 1) * v22);
          if (v27 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          v28 = rint(v25 * *v26 * v21);
          if (v28 <= -128)
          {
            LODWORD(v28) = -128;
          }

          if (v28 >= 127)
          {
            LOBYTE(v28) = 127;
          }

          goto LABEL_51;
        }

        v13 = rint(v10 * *(result + v14 - 3) / v13);
        if (v13 <= -128)
        {
          LODWORD(v13) = -128;
        }

        if (v13 >= 127)
        {
          LOBYTE(v13) = 127;
        }
      }

      if (*(v15 - 2))
      {
        v29 = rint(v10 * *(result + v14 - 2) / v16);
        if (v29 <= -128)
        {
          LODWORD(v29) = -128;
        }

        if (v29 >= 127)
        {
          LOBYTE(v16) = 127;
        }

        else
        {
          LOBYTE(v16) = v29;
        }
      }

      if (*(a3 + v14 - 1))
      {
        v30 = rint(v10 * *(result + v14 - 1) / *(a3 + v14 - 1));
        if (v30 <= -128)
        {
          LODWORD(v30) = -128;
        }

        if (v30 >= 127)
        {
          LOBYTE(v27) = 127;
        }

        else
        {
          LOBYTE(v27) = v30;
        }
      }

      else
      {
        LOBYTE(v27) = 0;
      }

      v17 = v14 - 1;
      if (*(a3 + v14))
      {
        v31 = rint(v10 * *(result + v14) / *(a3 + v14));
        if (v31 <= -128)
        {
          LODWORD(v31) = -128;
        }

        if (v31 >= 127)
        {
          LOBYTE(v28) = 127;
        }

        else
        {
          LOBYTE(v28) = v31;
        }
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      v18 = v14;
LABEL_51:
      v32 = a5 + v14;
      *(v32 - 3) = v13;
      *(v32 - 2) = v16;
      *(a5 + v17) = v27;
      *(a5 + v18) = v28;
      v12 += 4;
      v13 = v14 + 4;
    }

    while (v14 + 1 <= v9 - 4);
    v11 = (v14 + 1);
LABEL_53:
    if (v11 < v9)
    {
      do
      {
        LOBYTE(v33) = *(a3 + v11);
        if (v33)
        {
          v33 = rint(v10 * *(result + v11) / v33);
          if (v33 <= -128)
          {
            LODWORD(v33) = -128;
          }

          if (v33 >= 127)
          {
            LOBYTE(v33) = 127;
          }
        }

        *(a5 + v11++) = v33;
      }

      while (v11 < v9);
    }

    result += a2;
    a3 += a4;
    a5 += a6;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10)
{
  v10 = a7[1];
  if (!v10)
  {
    return result;
  }

  v11 = *a7;
  v12 = *a7;
  v13 = *a8;
  v14 = 2 * (a6 >> 1);
  v15 = 2 * (a4 >> 1);
  v16 = 2 * (a2 >> 1);
  do
  {
    if (v11 < 4)
    {
      v17 = 0;
      goto LABEL_34;
    }

    v18 = 0;
    v17 = 0;
    do
    {
      v19 = *(a3 + v18);
      v20 = *(a3 + v18 + 2);
      if (*(a3 + v18))
      {
        if (*(a3 + v18 + 2))
        {
          v21 = a3 + v18;
          v22 = *(a3 + v18 + 4);
          if (*(a3 + v18 + 4))
          {
            v23 = *(v21 + 6);
            if (*(v21 + 6))
            {
              v24 = v17 | 2;
              v25 = v19;
              v26 = v17 | 3;
              v27 = v19 * v20;
              v28 = v22;
              v29 = v23;
              v30 = v22 * v23;
              *&v31 = v13 / (v27 * v30);
              v32 = v30 * *&v31;
              v33 = v27 * *&v31;
              v34 = result + v18;
              LOWORD(v31) = *(result + v18);
              *&v35 = rint(v32 * v31 * v20);
              v19 = *&v35 & ~(*&v35 >> 31);
              LOWORD(v35) = *(result + v18 + 2);
              v36 = rint(v32 * v35 * v25);
              if (v19 >= 0xFFFF)
              {
                LOWORD(v19) = -1;
              }

              v20 = v36 & ~(v36 >> 31);
              if (v20 >= 0xFFFF)
              {
                LOWORD(v20) = -1;
              }

              LOWORD(v36) = *(v34 + 4);
              v37 = rint(v33 * *&v36 * v29);
              v38 = v37 & ~(v37 >> 31);
              if (v38 >= 0xFFFF)
              {
                LOWORD(v38) = -1;
              }

              LOWORD(v37) = *(v34 + 6);
              v39 = v33 * *&v37 * v28;
              goto LABEL_30;
            }
          }
        }

        LOWORD(a10) = *(result + v18);
        a10 = rint(v13 * *&a10 / v19);
        v19 = a10 & ~(a10 >> 31);
        if (v19 >= 0xFFFF)
        {
          LOWORD(v19) = -1;
        }
      }

      if (*(a3 + v18 + 2))
      {
        LOWORD(a10) = *(result + v18 + 2);
        a10 = rint(v13 * *&a10 / v20);
        if ((a10 & ~(a10 >> 31)) >= 0xFFFF)
        {
          LOWORD(v20) = -1;
        }

        else
        {
          LOWORD(v20) = a10 & ~(a10 >> 31);
        }
      }

      if (*(a3 + v18 + 4))
      {
        LOWORD(a10) = *(result + v18 + 4);
        a10 = rint(v13 * *&a10 / *(a3 + v18 + 4));
        if ((a10 & ~(a10 >> 31)) >= 0xFFFF)
        {
          LOWORD(v38) = -1;
        }

        else
        {
          LOWORD(v38) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOWORD(v38) = 0;
      }

      v24 = v17 + 2;
      v26 = v17 + 3;
      v40 = *(a3 + v18 + 6);
      if (*(a3 + v18 + 6))
      {
        LOWORD(a10) = *(result + v18 + 6);
        v39 = v13 * *&a10 / v40;
LABEL_30:
        a10 = rint(v39);
        v40 = a10 & ~(a10 >> 31);
        if (v40 >= 0xFFFF)
        {
          LOWORD(v40) = -1;
        }
      }

      v41 = (a5 + v18);
      *v41 = v19;
      v41[1] = v20;
      *(a5 + 2 * v24) = v38;
      *(a5 + 2 * v26) = v40;
      v17 += 4;
      v18 += 8;
    }

    while (v17 <= v11 - 4);
    v17 = v17;
LABEL_34:
    if (v17 < v12)
    {
      do
      {
        v42 = *(a3 + 2 * v17);
        if (*(a3 + 2 * v17))
        {
          LOWORD(a10) = *(result + 2 * v17);
          a10 = rint(v13 * *&a10 / v42);
          v42 = a10 & ~(a10 >> 31);
          if (v42 >= 0xFFFF)
          {
            LOWORD(v42) = -1;
          }
        }

        *(a5 + 2 * v17++) = v42;
      }

      while (v11 != v17);
    }

    a5 += v14;
    a3 += v15;
    result += v16;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t cv::div16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = 2 * (a6 >> 1);
  v12 = *a8;
  v13 = 2 * (a4 >> 1);
  v14 = 2 * (a2 >> 1);
  do
  {
    if (v9 < 4)
    {
      v15 = 0;
      goto LABEL_48;
    }

    v16 = 0;
    v15 = 0;
    do
    {
      LOWORD(v17) = *(a3 + v16);
      LOWORD(v18) = *(a3 + v16 + 2);
      if (v17)
      {
        if (*(a3 + v16 + 2))
        {
          if (*(a3 + v16 + 4))
          {
            v19 = *(a3 + v16 + 6);
            if (v19)
            {
              v20 = v15 | 2;
              v21 = v15 | 3;
              v22 = v17;
              v23 = v18;
              v24 = *(a3 + v16 + 4);
              v25 = v19;
              v26 = v12 / (v22 * v23 * (v24 * v25));
              v27 = v24 * v25 * v26;
              v28 = v22 * v23 * v26;
              v29 = (result + v16);
              v17 = rint(v27 * *(result + v16) * v23);
              if (v17 <= -32768)
              {
                LODWORD(v17) = -32768;
              }

              if (v17 >= 0x7FFF)
              {
                LOWORD(v17) = 0x7FFF;
              }

              v18 = rint(v27 * v29[1] * v22);
              if (v18 <= -32768)
              {
                LODWORD(v18) = -32768;
              }

              if (v18 >= 0x7FFF)
              {
                LOWORD(v18) = 0x7FFF;
              }

              v30 = rint(v28 * v29[2] * v25);
              if (v30 <= -32768)
              {
                LODWORD(v30) = -32768;
              }

              if (v30 >= 0x7FFF)
              {
                LOWORD(v30) = 0x7FFF;
              }

              v31 = v28 * v29[3] * v24;
              goto LABEL_42;
            }
          }
        }

        v17 = rint(v12 * *(result + v16) / v17);
        if (v17 <= -32768)
        {
          LODWORD(v17) = -32768;
        }

        if (v17 >= 0x7FFF)
        {
          LOWORD(v17) = 0x7FFF;
        }
      }

      if (*(a3 + v16 + 2))
      {
        v32 = rint(v12 * *(result + v16 + 2) / v18);
        if (v32 <= -32768)
        {
          LODWORD(v32) = -32768;
        }

        if (v32 >= 0x7FFF)
        {
          LOWORD(v18) = 0x7FFF;
        }

        else
        {
          LOWORD(v18) = v32;
        }
      }

      if (*(a3 + v16 + 4))
      {
        v33 = rint(v12 * *(result + v16 + 4) / *(a3 + v16 + 4));
        if (v33 <= -32768)
        {
          LODWORD(v33) = -32768;
        }

        if (v33 >= 0x7FFF)
        {
          LOWORD(v30) = 0x7FFF;
        }

        else
        {
          LOWORD(v30) = v33;
        }
      }

      else
      {
        LOWORD(v30) = 0;
      }

      v20 = v15 + 2;
      v21 = v15 + 3;
      LOWORD(v34) = *(a3 + v16 + 6);
      if (v34)
      {
        v31 = v12 * *(result + v16 + 6) / v34;
LABEL_42:
        v34 = rint(v31);
        if (v34 <= -32768)
        {
          LODWORD(v34) = -32768;
        }

        if (v34 >= 0x7FFF)
        {
          LOWORD(v34) = 0x7FFF;
        }
      }

      v35 = (a5 + v16);
      *v35 = v17;
      v35[1] = v18;
      *(a5 + 2 * v20) = v30;
      *(a5 + 2 * v21) = v34;
      v15 += 4;
      v16 += 8;
    }

    while (v15 <= v9 - 4);
    v15 = v15;
LABEL_48:
    if (v15 < v10)
    {
      do
      {
        LOWORD(v36) = *(a3 + 2 * v15);
        if (v36)
        {
          v36 = rint(v12 * *(result + 2 * v15) / v36);
          if (v36 <= -32768)
          {
            LODWORD(v36) = -32768;
          }

          if (v36 >= 0x7FFF)
          {
            LOWORD(v36) = 0x7FFF;
          }
        }

        *(a5 + 2 * v15++) = v36;
      }

      while (v9 != v15);
    }

    a5 += v11;
    a3 += v13;
    result += v14;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = 4 * (a6 >> 2);
  v12 = 4 * (a4 >> 2);
  v13 = 4 * (a2 >> 2);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      LODWORD(v17) = *(a3 + v15);
      LODWORD(v16) = *(a3 + v15 + 4);
      if (v17)
      {
        if (v16)
        {
          v18 = *(a3 + v15 + 8);
          if (v18)
          {
            v19 = *(a3 + v15 + 12);
            if (v19)
            {
              v20 = v18;
              v21 = v19;
              v22 = v17 * v16;
              v23 = v18 * v19;
              v24 = v10 / (v22 * v23);
              v25 = v23 * v24;
              v26 = v14 | 2;
              v27 = rint(v25 * *(result + v15) * v16);
              v28 = v14 | 3;
              v16 = rint(v25 * *(result + v15 + 4) * v17);
              v29 = rint(v22 * v24 * *(result + v15 + 8) * v21);
              v30 = rint(v22 * v24 * *(result + v15 + 12) * v20);
              LODWORD(v17) = v27;
              goto LABEL_19;
            }
          }
        }

        v17 = rint(v10 * *(result + v15) / v17);
      }

      if (v16)
      {
        v16 = rint(v10 * *(result + v15 + 4) / v16);
      }

      v31 = *(a3 + v15 + 8);
      if (v31)
      {
        v29 = rint(v10 * *(result + v15 + 8) / v31);
      }

      else
      {
        LODWORD(v29) = 0;
      }

      v26 = v14 + 2;
      v28 = v14 + 3;
      LODWORD(v30) = *(a3 + v15 + 12);
      if (v30)
      {
        v30 = rint(v10 * *(result + v15 + 12) / v30);
      }

LABEL_19:
      v32 = (a5 + v15);
      *v32 = v17;
      v32[1] = v16;
      *(a5 + 4 * v26) = v29;
      *(a5 + 4 * v28) = v30;
      v14 += 4;
      v15 += 16;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_21:
    if (v14 < v9)
    {
      do
      {
        LODWORD(v33) = *(a3 + 4 * v14);
        if (v33)
        {
          v33 = rint(v10 * *(result + 4 * v14) / v33);
        }

        *(a5 + 4 * v14++) = v33;
      }

      while (v14 < v9);
    }

    a5 += v11;
    a3 += v12;
    result += v13;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 4 * (a2 >> 2);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v15 = *(a3 + v14);
      v16 = 0.0;
      v17.i32[0] = 0;
      if (v15.f32[0] != 0.0)
      {
        if (v15.f32[1] != 0.0)
        {
          v18 = *(a3 + v14 + 8);
          if (v18 != 0.0)
          {
            v19 = *(a3 + v14 + 12);
            if (v19 != 0.0)
            {
              v20 = v13 + 2;
              v21 = v13 + 3;
              v22 = vcvtq_f64_f32(v15);
              v23 = vextq_s8(v22, v22, 8uLL);
              v22.f64[0] = vmulq_f64(v23, v22).f64[0];
              v24 = v18;
              v25 = v19;
              v26 = v18 * v25;
              v27 = v11 / (v26 * v22.f64[0]);
              v22.f64[0] = v27 * v22.f64[0];
              v17 = vcvt_f32_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_f32(*(result + v14)), v26 * v27), v23));
              v28 = v22.f64[0] * *(result + v14 + 8) * v25;
              v29 = v22.f64[0] * *(result + v14 + 12) * v24;
LABEL_18:
              v31 = v29;
              goto LABEL_19;
            }
          }
        }

        v17.f32[0] = v11 * *(result + v14) / v15.f32[0];
      }

      if (v15.f32[1] != 0.0)
      {
        v16 = v11 * *(result + v14 + 4) / v15.f32[1];
      }

      v30 = *(a3 + v14 + 8);
      v31 = 0.0;
      v28 = 0.0;
      if (v30 != 0.0)
      {
        v28 = v11 * *(result + v14 + 8) / v30;
      }

      v20 = v13 | 2;
      v21 = v13 | 3;
      v32 = *(a3 + v14 + 12);
      v17.f32[1] = v16;
      if (v32 != 0.0)
      {
        v29 = v11 * *(result + v14 + 12) / v32;
        goto LABEL_18;
      }

LABEL_19:
      *(a5 + v14) = v17;
      *(a5 + 4 * v20) = v28;
      *(a5 + 4 * v21) = v31;
      v13 += 4;
      v14 += 16;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_21:
    if (v13 < v10)
    {
      do
      {
        v33 = *(a3 + 4 * v13);
        if (v33 == 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v11 * *(result + 4 * v13) / v33;
        }

        *(a5 + 4 * v13++) = v34;
      }

      while (v9 != v13);
    }

    a5 += 4 * (a6 >> 2);
    result += v12;
    a3 += 4 * (a4 >> 2);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 8 * (a2 >> 3);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v15 = *(a3 + v14);
      v16 = 0.0;
      v17 = *(a3 + v14 + 8);
      v18.f64[0] = 0.0;
      if (*v15.i64 != 0.0)
      {
        if (v17 != 0.0)
        {
          v19 = *(a3 + v14 + 16);
          if (v19 != 0.0)
          {
            v20 = *(a3 + v14 + 24);
            if (v20 != 0.0)
            {
              v21 = vextq_s8(v15, v15, 8uLL);
              v22 = v13 + 2;
              v23 = v13 + 3;
              v24 = *v15.i64 * v17;
              v25 = v11 / (*v15.i64 * v17 * (v19 * v20));
              v26 = v24 * v25;
              v18 = vmulq_f64(v21, vmulq_n_f64(*(result + v14), v19 * v20 * v25));
              v27 = v20 * (v26 * *(result + v14 + 16));
              v28 = v19 * (v26 * *(result + v14 + 24));
              goto LABEL_18;
            }
          }
        }

        v18.f64[0] = v11 * *(result + v14) / *v15.i64;
      }

      if (v17 != 0.0)
      {
        v16 = v11 * *(result + v14 + 8) / v17;
      }

      v29 = *(a3 + v14 + 16);
      v28 = 0.0;
      v27 = 0.0;
      if (v29 != 0.0)
      {
        v27 = v11 * *(result + v14 + 16) / v29;
      }

      v22 = v13 | 2;
      v23 = v13 | 3;
      v30 = *(a3 + v14 + 24);
      v18.f64[1] = v16;
      if (v30 != 0.0)
      {
        v28 = v11 * *(result + v14 + 24) / v30;
      }

LABEL_18:
      *(a5 + v14) = v18;
      *(a5 + 8 * v22) = v27;
      *(a5 + 8 * v23) = v28;
      v13 += 4;
      v14 += 32;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_20:
    if (v13 < v10)
    {
      do
      {
        v31 = *(a3 + 8 * v13);
        if (v31 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v11 * *(result + 8 * v13) / v31;
        }

        *(a5 + 8 * v13++) = v32;
      }

      while (v9 != v13);
    }

    a5 += 8 * (a6 >> 3);
    result += v12;
    a3 += 8 * (a4 >> 3);
    --v8;
  }

  while (v8);
  return result;
}