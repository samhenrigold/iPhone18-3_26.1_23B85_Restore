void sub_29CE4FDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a30 + 728);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a30 + 696));
  v46 = *a21;
  if (*a21)
  {
    *(a28 + 760) = v46;
    operator delete(v46);
  }

  if (*(a28 + 519) < 0)
  {
    operator delete(*(a30 + 408));
  }

  if (*(a28 + 487) < 0)
  {
    operator delete(*a17);
  }

  if (*(a28 + 463) < 0)
  {
    operator delete(*(a30 + 352));
  }

  if (*(a28 + 439) < 0)
  {
    operator delete(*a18);
  }

  v47 = *(a30 + 288);
  if (v47)
  {
    *(a28 + 384) = v47;
    operator delete(v47);
    if (a43 < 0)
    {
LABEL_15:
      operator delete(a38);
      _Unwind_Resume(a1);
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_15;
  }

  _Unwind_Resume(a1);
}

void AGX::TileDispatchVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::TileDispatchVertexProgramVariantESLState(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v6 = a4;
  v8 = a2;
  v247 = *MEMORY[0x29EDCA608];
  v239 = *a5;
  v240 = *(a5 + 2);
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 88) = 0u;
  v9 = a1 + 88;
  *(a1 + 40) = 0u;
  v10 = a1 + 40;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v223 = a1 + 464;
  v224 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  __src = (a1 + 528);
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v239;
  *(a1 + 680) = v240;
  v11 = (a1 + 748);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1307) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v12 = *(a4 + 465);
  bzero((a1 + 40), 0x30uLL);
  bzero(v9, 0x30uLL);
  v13 = 0;
  *(v9 + 656) = 0;
  v235 = v9;
  *(v9 + 1223) = 0;
  if (a3[28])
  {
    v14 = a3[29] == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = 28;
  if (v14)
  {
    v15 = 98;
    v16 = a3 + 98;
  }

  else
  {
    v16 = a3 + 28;
  }

  v227 = a3;
  v17 = a3[v15];
  if (v17 && v16[1])
  {
    v13 = (v17 + *v17);
  }

  v18 = (v13 - *v13);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v234 = (v13 + v19 + *(v13 + v19));
  }

  else
  {
    v234 = 0;
  }

  v20 = 0;
  v21 = a3 + 58;
  if (v227[58])
  {
    v22 = v227[59] == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = 58;
  if (v22)
  {
    v23 = 128;
    v24 = v227 + 128;
  }

  else
  {
    v24 = v227 + 58;
  }

  v25 = v227[v23];
  if (v25 && v24[1])
  {
    v20 = (v25 + *v25);
  }

  v26 = (v20 - *v20);
  if (*v26 < 5u)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26[2];
    if (v27)
    {
      v27 = (v27 + v20 + *(v27 + v20));
    }
  }

  v231 = v27;
  v28 = (v27 - *v27);
  if (*v28 < 0x11u)
  {
    LODWORD(v29) = 0;
  }

  else
  {
    v29 = v28[8];
    if (v29)
    {
      LODWORD(v29) = *(v27 + v29);
    }
  }

  *v11 = v29;
  v30 = (v27 - *v27);
  if (*v30 <= 6u)
  {
    LODWORD(v31) = 0;
    v32 = v227;
  }

  else
  {
    v31 = v30[3];
    v32 = v227;
    if (v31)
    {
      LODWORD(v31) = *(v27 + v31);
    }
  }

  *(a1 + 408) = v31;
  v33 = (v27 - *v27);
  if (*v33 >= 0x13u && (v34 = v33[9]) != 0)
  {
    v35 = v27 + v34 + *(v27 + v34) + 4;
  }

  else
  {
    v35 = "";
  }

  v226 = (v9 + 664);
  MEMORY[0x29ED51E00](v224, v35);
  v36 = (v231 - *v231);
  if (*v36 >= 0x51u && (v37 = v36[40]) != 0)
  {
    v38 = v231 + v37 + *(v231 + v37) + 4;
  }

  else
  {
    v38 = "";
  }

  MEMORY[0x29ED51E00](v9 + 408, v38);
  std::string::operator=((v9 + 352), &__str);
  v39 = (v231 - *v231);
  if (*v39 >= 9u && (v40 = v39[4]) != 0)
  {
    v41 = v231 + v40 + *(v231 + v40) + 4;
  }

  else
  {
    v41 = "";
  }

  MEMORY[0x29ED51E00](v223, v41);
  v42 = (v231 - *v231);
  if (*v42 < 0x29u)
  {
    LOBYTE(v43) = 0;
  }

  else
  {
    v43 = v42[20];
    if (v43)
    {
      LOBYTE(v43) = *(v231 + v43) != 0;
    }
  }

  *(a1 + 488) = v43;
  v44 = v32[58];
  if (v44)
  {
    v45 = v32[59] == 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = 58;
  if (v45)
  {
    v46 = 128;
    v47 = v227 + 128;
  }

  else
  {
    v47 = v21;
  }

  v48 = v32[v46];
  v49 = v47[1];
  if (v48)
  {
    v50 = v49 == 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = !v50;
  if (v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = (v48 + *v48);
  }

  v53 = (v52 - *v52);
  if (*v53 >= 7u && v53[3] && (!v51 ? (v54 = 0) : (v54 = (v48 + *v48)), (v55 = (v54 - *v54), *v55 < 7u) || (v56 = v55[3]) == 0 ? (v57 = 0) : (v57 = (v54 + v56 + *(v54 + v56))), (v58 = (v57 - *v57), *v58 >= 0xBu) && (v59 = v58[5]) != 0))
  {
    v60 = *(v57 + v59);
  }

  else
  {
    v60 = 0;
  }

  *(a1 + 600) = v60;
  if (v44)
  {
    v61 = v32[59] == 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = 58;
  if (v61)
  {
    v62 = 128;
    v63 = v227 + 128;
  }

  else
  {
    v63 = v21;
  }

  v64 = v32[v62];
  v65 = v63[1];
  if (v64)
  {
    v66 = v65 == 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = !v66;
  if (v66)
  {
    v68 = 0;
  }

  else
  {
    v68 = (v64 + *v64);
  }

  v69 = (v68 - *v68);
  if (*v69 >= 7u && v69[3] && (!v67 ? (v70 = 0) : (v70 = (v64 + *v64)), (v71 = (v70 - *v70), *v71 < 7u) || (v72 = v71[3]) == 0 ? (v73 = 0) : (v73 = (v70 + v72 + *(v70 + v72))), (v74 = (v73 - *v73), *v74 >= 0xDu) && (v75 = v74[6]) != 0))
  {
    v76 = *(v73 + v75);
  }

  else
  {
    v76 = 0;
  }

  *(a1 + 604) = v76;
  *(a1 + 776) = *(v6 + 465);
  v77 = (v234 - *v234);
  if (*v77 < 0x4Du)
  {
    LODWORD(v78) = 0;
  }

  else
  {
    v78 = v77[38];
    if (v78)
    {
      LODWORD(v78) = *(v234 + v78);
    }
  }

  *(a1 + 400) = v78;
  v79 = (v234 - *v234);
  if (*v79 < 0x53u)
  {
    LODWORD(v80) = 0;
  }

  else
  {
    v80 = v79[41];
    if (v80)
    {
      LODWORD(v80) = *(v234 + v80);
    }
  }

  *(a1 + 404) = v80;
  v81 = (v234 - *v234);
  if (*v81 < 0x43u)
  {
    LODWORD(v82) = 0;
  }

  else
  {
    v82 = v81[33];
    if (v82)
    {
      LODWORD(v82) = *(v234 + v82);
    }
  }

  *(a1 + 608) = v82;
  *(a1 + 612) = 0;
  v83 = (v234 - *v234);
  if (*v83 >= 0x21u && (v84 = v83[16]) != 0)
  {
    v85 = *(v234 + v84);
  }

  else
  {
    v85 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v85;
  *(a1 + 620) = *(a1 + 608);
  v86 = (v234 - *v234);
  if (*v86 < 5u)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = v86[2];
    if (v87)
    {
      LODWORD(v87) = *(v234 + v87);
    }
  }

  *(a1 + 624) = v87;
  v88 = (v234 - *v234);
  if (*v88 < 0x51u)
  {
    LODWORD(v89) = 0;
  }

  else
  {
    v89 = v88[40];
    if (v89)
    {
      LODWORD(v89) = *(v234 + v89);
    }
  }

  *(a1 + 628) = v89;
  v90 = (v234 - *v234);
  if (*v90 < 0x4Fu)
  {
    LODWORD(v91) = 0;
  }

  else
  {
    v91 = v90[39];
    if (v91)
    {
      LODWORD(v91) = *(v234 + v91);
    }
  }

  *(a1 + 632) = v91;
  *(a1 + 776) = *(v6 + 465);
  *(a1 + 520) = 0;
  v92 = v234 - *v234;
  v93 = *(v234 + *(v92 + 15) + *(v234 + *(v92 + 15)));
  v94 = *(v92 + 13);
  if (v94)
  {
    LODWORD(v94) = *(v234 + v94);
  }

  v95 = v94;
  v96 = *(v6 + 152);
  if (*(v6 + 416) == 1)
  {
    v97 = vaddq_s64(*(v6 + 240), *(v6 + 216));
    v98 = (vsubq_s64(vdupq_laneq_s64(v97, 1), v97).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(v6 + 400) + *(v6 + 352) - (*(v6 + 392) + *(v6 + 344))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v98 = 0;
  }

  v99 = (v93 + 31) & 0x1FFFFFFE0;
  if (v94)
  {
    v100 = (v93 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v100 = v93;
  }

  v236 = v100;
  v101 = v100 + v94;
  if (v96)
  {
    v98 = ((v101 + v98 + 31) & 0xFFFFFFFFFFFFFFE0) - v101;
  }

  v229 = v98;
  v102 = v101 + 8 * v96 + v98;
  v238 = v6;
  if (!v102)
  {
    goto LABEL_211;
  }

  v221 = *(v6 + 152);
  v222 = v94;
  v225 = v8;
  AGX::Heap<true>::allocateImpl(&v243, v8 + 6328, v102, (a1 + 584));
  *(a1 + 1304) += *v244;
  v103 = *v244;
  *(v9 + 608) = v243;
  *(v9 + 624) = v103;
  v104 = *&v244[9];
  *(v9 + 633) = *&v244[9];
  v105 = v95;
  v106 = *(a1 + 704);
  v228 = *(a1 + 696);
  if (v93)
  {
    v107 = (v234 - *v234);
    if (*v107 < 0x1Fu)
    {
      v108 = 0;
    }

    else
    {
      v108 = v107[15];
      if (v108)
      {
        v108 += v234 + *(v234 + v108);
      }
    }

    memcpy(v106, (v108 + 4), v93);
    *(a1 + 640) = v228;
    *(a1 + 648) = v106;
    *(a1 + 656) = v236;
  }

  if (!v105)
  {
    v141 = v229;
    if (v229)
    {
      goto LABEL_198;
    }

LABEL_200:
    if (!v221)
    {
      goto LABEL_211;
    }

    goto LABEL_201;
  }

  v109 = (v231 - *v231);
  if (*v109 >= 0xBu && (v110 = v109[5]) != 0)
  {
    v111 = v231 + v110 + *(v231 + v110);
  }

  else
  {
    v111 = 0;
  }

  v112 = *(v234 - *v234 + 28);
  v113 = *(v234 + v112);
  if (!*(v234 + v112 + v113))
  {
    v141 = v229;
    if (!v229)
    {
      goto LABEL_200;
    }

    goto LABEL_198;
  }

  v114 = 0;
  v115 = 0;
  v230 = &v106[v99];
  v232 = v111 + 4;
  v116 = 8;
  if (v12)
  {
    v116 = 24;
  }

  v220 = v116;
  v117 = v234;
  while (1)
  {
    v118 = v112;
    v119 = v112 + v113;
    v120 = &v117[v114];
    v121 = *(&v117[v114 + 1] + v119);
    v122 = v119 + v121;
    v123 = v120 + v119 + v121;
    v124 = *(v123 + 4);
    v125 = v120 + v122 - v124;
    v126 = *(v125 + 4);
    if (v126 < 5)
    {
      goto LABEL_164;
    }

    v127 = *(v125 + 8);
    if (!v127)
    {
      goto LABEL_164;
    }

    v128 = *(v234 + v118 + v113 + v121 + v114 * 4 + v127 + 4);
    if (v128 != 114)
    {
      if (v128 == 18)
      {
        if (v126 < 9)
        {
          v130 = 0;
        }

        else
        {
          v129 = v118 + v113 + v121;
          v130 = *(&v234[v114 + 3] + v129 - v124);
          if (v130)
          {
            v130 = *(v234 + v129 + v114 * 4 + v130 + 4);
          }
        }

        v133 = &v230[8 * v130];
        bzero(v133, v220);
        v135 = &v234[v114] + v118 + v113 + v121 - *(v123 + 4);
        if (*(v135 + 2) < 7u)
        {
          v136 = 0;
        }

        else
        {
          v136 = *(v135 + 5);
          if (v136)
          {
            v136 = 4 * *(v234 + v118 + v113 + v121 + v114 * 4 + v136 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v243, &v232[v136 + *&v232[v136]], v134);
        AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v242, &v243);
        *v133 = v242;
        if (v246 < 0)
        {
          operator delete(v245);
        }

        *&v243 = v133;
        std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v226, &v243);
      }

      goto LABEL_164;
    }

    if (v126 < 7)
    {
      v132 = 0;
    }

    else
    {
      v131 = v118 + v113 + v121;
      v132 = *(&v234[v114 + 2] + v131 - v124 + 2);
      if (v132)
      {
        v132 = 4 * *(v234 + v131 + v114 * 4 + v132 + 4);
      }
    }

    AGX::SamplerDescriptor::SamplerDescriptor(&v243, &v232[v132 + *&v232[v132]], v104);
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v242, *(a1 + 808), &v243);
    v137 = *(v242 + 96);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100]((v235 + 87), &v242);
    v138 = &v234[v114] + v118 + v113 + v121 - *(v123 + 4);
    if (*(v138 + 2) < 9u)
    {
      v139 = 0;
    }

    else
    {
      v139 = *(v138 + 6);
      if (v139)
      {
        v139 = *(v234 + v118 + v113 + v121 + v114 * 4 + v139 + 4);
      }
    }

    *&v230[4 * v139] = v137;
    v140 = *(&v242 + 1);
    if (*(&v242 + 1))
    {
      if (!atomic_fetch_add((*(&v242 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    if (v246 < 0)
    {
      goto LABEL_190;
    }

LABEL_164:
    ++v115;
    v117 = v234;
    v112 = *(v234 - *v234 + 28);
    v113 = *(v234 + v112);
    ++v114;
    if (v115 >= *(v234 + v112 + v113))
    {
      v6 = v238;
      v8 = v225;
      v105 = v222;
      v141 = v229;
      if (!v229)
      {
        goto LABEL_200;
      }

LABEL_198:
      *(a1 + 520) = v101 + v228;
      v142 = &v106[v236 + v105];
      v143 = *(v6 + 216);
      v144 = *(v6 + 224) - v143;
      *v142 = v144 >> 2;
      *(v142 + 1) = (*(v6 + 248) - *(v6 + 240)) >> 2;
      *(v142 + 2) = (*(v6 + 352) - *(v6 + 344)) >> 1;
      *(v142 + 3) = (*(v6 + 400) - *(v6 + 392)) >> 1;
      memcpy(v142 + 8, v143, v144);
      v145 = &v142[*(v6 + 224) - *(v6 + 216) + 8];
      memcpy(v145, *(v6 + 240), *(v6 + 248) - *(v6 + 240));
      v146 = &v145[*(v6 + 248) - *(v6 + 240)];
      memcpy(v146, *(v6 + 344), *(v6 + 352) - *(v6 + 344));
      memcpy(&v146[*(v6 + 352) - *(v6 + 344)], *(v6 + 392), *(v6 + 400) - *(v6 + 392));
      if (*(v142 + 2))
      {
        if (*(v142 + 3))
        {
          goto LABEL_200;
        }
      }

      else
      {
        *(v142 + 2) = *v142;
        if (*(v142 + 3))
        {
          goto LABEL_200;
        }
      }

      *(v142 + 3) = *(v142 + 1);
      if (!v221)
      {
LABEL_211:
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(v8, v226);
        v154 = (v234 - *v234);
        v155 = v154[8];
        v156 = *(v234 + v155);
        v157 = (v234 + v155 + v156);
        v158 = *v157;
        if (v158)
        {
          v159 = 0;
          v160 = 4 * v158;
          v161 = v234 + v155 + v156;
          do
          {
            v166 = v157[v159 / 4 + 1];
            v167 = &v161[v159 + v166 - *(&v157[v159 / 4 + 1] + v166)];
            if (*(v167 + 2) < 7u)
            {
              LODWORD(v162) = 0;
            }

            else
            {
              v162 = *(v167 + 5);
              if (v162)
              {
                v168 = *&v161[v159 + 4 + v166 + v162];
                LODWORD(v162) = v168;
                if ((v168 & 0x80000000) != 0)
                {
                  v235[(v168 & 0x7C000000) != 0] |= 1 << (v168 >> 20);
                  v165 = v235;
                  v163 = 1;
                  goto LABEL_215;
                }
              }
            }

            v163 = 1 << v162;
            v164 = 8 * ((v162 & 0xFFFC0) != 0);
            *(a1 + 56 + v164) |= v163;
            v165 = (a1 + 104 + v164);
LABEL_215:
            *v165 |= v163;
            v159 += 4;
          }

          while (v160 != v159);
        }

        v169 = v154[10];
        v170 = *(v234 + v169);
        v171 = (v234 + v169 + v170);
        v172 = *v171;
        if (v172)
        {
          v173 = 0;
          v174 = 4 * v172;
          v175 = v234 + v169 + v170;
          do
          {
            v180 = v171[v173 / 4 + 1];
            v181 = &v175[v173 + v180 - *(&v171[v173 / 4 + 1] + v180)];
            if (*(v181 + 2) < 7u)
            {
              LODWORD(v176) = 0;
            }

            else
            {
              v176 = *(v181 + 5);
              if (v176)
              {
                v182 = *&v175[v173 + 4 + v180 + v176];
                LODWORD(v176) = v182;
                if ((v182 & 0x80000000) != 0)
                {
                  v235[(v182 & 0x7C000000) != 0] |= 1 << (v182 >> 20);
                  v179 = v235;
                  v177 = 1;
                  goto LABEL_224;
                }
              }
            }

            v177 = 1 << v176;
            v178 = 8 * ((v176 & 0xFFFC0) != 0);
            *(a1 + 72 + v178) |= v177;
            v179 = (a1 + 120 + v178);
LABEL_224:
            *v179 |= v177;
            v173 += 4;
          }

          while (v174 != v173);
        }

        v183 = v154[6];
        v184 = *(v234 + v183);
        v185 = (v234 + v183 + v184);
        v186 = *v185;
        if (v186)
        {
          v187 = 0;
          v188 = 4 * v186;
          v189 = v234 + v183 + v184;
          do
          {
            v193 = v185[v187 / 4 + 1];
            v194 = &v189[v187 + v193 - *(&v185[v187 / 4 + 1] + v193)];
            if (*(v194 + 2) < 7u)
            {
              LODWORD(v190) = 0;
            }

            else
            {
              v190 = *(v194 + 5);
              if (v190)
              {
                v195 = *&v189[v187 + 4 + v193 + v190];
                LODWORD(v190) = v195;
                if ((v195 & 0x80000000) != 0)
                {
                  v191 = 1 << (v195 >> 20);
                  v192 = (v195 & 0x7C000000) != 0;
                  goto LABEL_233;
                }
              }
            }

            v191 = 1 << v190;
            v192 = (v190 & 0xFFFC0) != 0;
            *(v10 + 8 * v192) |= v191;
LABEL_233:
            v235[v192] |= v191;
            v187 += 4;
          }

          while (v188 != v187);
        }

        v196 = *(v6 + 160);
        if (*&v196 != 0)
        {
          *(a1 + 56) = vorrq_s8(*(a1 + 56), v196);
          *(a1 + 104) = vorrq_s8(*(a1 + 104), v196);
        }

        v197 = *(v6 + 192);
        if (*&v197 != 0)
        {
          *(a1 + 72) = vorrq_s8(*(a1 + 72), v197);
          *(a1 + 120) = vorrq_s8(*(a1 + 120), v197);
        }

        v198 = v154[12];
        v199 = *(v234 + v198);
        v200 = (v234 + v198 + v199);
        v201 = *v200;
        if (!v201)
        {
LABEL_279:
          if ((*(a1 + 1311) & 1) == 0)
          {
            *(a1 + 200) = *(v6 + 424);
            *(a1 + 248) = *(v6 + 440);
            *(a1 + 312) = vorrq_s8(*(v6 + 440), *(v6 + 424));
          }

          operator new();
        }

        v202 = 0;
        v203 = a1 + 136;
        v204 = 4 * v201;
        v205 = v234 + v198 + v199;
        while (2)
        {
          v208 = *&v205[v202 + 4];
          v209 = v208 - *(&v200[v202 / 4 + 1] + v208);
          v210 = &v205[v202 + v209];
          v211 = *(v210 + 2);
          if (v211 < 7)
          {
            if (v211 >= 5)
            {
              goto LABEL_251;
            }
          }

          else
          {
            v212 = *(v210 + 5);
            if (v212)
            {
              v213 = *&v205[v202 + 4 + v208 + v212];
              goto LABEL_252;
            }

LABEL_251:
            v213 = 0;
LABEL_252:
            v214 = *&v205[v202 + 8 + v209];
            if (v214)
            {
              v215 = v205[v202 + 4 + v208 + v214];
              v207 = (a1 + 184);
              v206 = 1;
              switch(v205[v202 + 4 + v208 + v214])
              {
                case 11:
                case 12:
                case 13:
                case 16:
                case 17:
                case 62:
                case 93:
                case 97:
                case 98:
                case 113:
                  if ((v213 & 0x80000000) != 0)
                  {
                    v206 = 1 << (v213 >> 20);
                    v207 = &v235[(v213 & 0x7C000000) != 0];
                    goto LABEL_245;
                  }

                  if ((v213 & 0x7FF00000) != 0x400000)
                  {
                    if (v215 == 113 || v215 == 98)
                    {
                      v217 = 4;
                    }

                    else
                    {
                      v217 = 2;
                    }

                    v218 = (v213 & 0xFFFC0) != 0;
                    v206 = 1 << v213;
                    *(v203 + v217 * 8 + v218 * 8) |= 1 << v213;
                    v207 = &v235[v218 + v217];
LABEL_245:
                    *v207 |= v206;
                  }

                  break;
                case 24:
                  v207 = (a1 + 184);
                  v206 = 4;
                  goto LABEL_245;
                case 25:
                  v207 = (a1 + 184);
                  v206 = 8;
                  goto LABEL_245;
                case 27:
                  goto LABEL_245;
                case 28:
                  v207 = (a1 + 184);
                  v206 = 2;
                  goto LABEL_245;
                case 59:
                  v207 = (a1 + 184);
                  v206 = 16;
                  goto LABEL_245;
                case 60:
                case 61:
                  v207 = (a1 + 184);
                  v206 = 32;
                  goto LABEL_245;
                case 75:
                  v207 = (a1 + 184);
                  v206 = 64;
                  goto LABEL_245;
                case 84:
                case 85:
                  v207 = (a1 + 184);
                  v206 = 128;
                  goto LABEL_245;
                case 108:
                  v207 = (a1 + 184);
                  v206 = 256;
                  goto LABEL_245;
                case 109:
                case 110:
                  v206 = 1 << v213;
                  v219 = (v213 & 0xFFFC0) != 0;
                  *(v203 + v219 * 8) |= 1 << v213;
                  goto LABEL_270;
                case 111:
                  v207 = (a1 + 184);
                  v206 = 512;
                  goto LABEL_245;
                case 112:
                  v207 = (a1 + 184);
                  v206 = 1024;
                  goto LABEL_245;
                case 118:
                  v207 = (a1 + 184);
                  v206 = 2048;
                  goto LABEL_245;
                case 119:
                  v207 = (a1 + 184);
                  v206 = 4096;
                  goto LABEL_245;
                case 120:
                  v207 = (a1 + 184);
                  v206 = 0x2000;
                  goto LABEL_245;
                case -117:
                  v206 = 1 << v213;
                  v219 = (v213 & 0xFFFC0) != 0;
                  *(v10 + v219 * 8) |= 1 << v213;
LABEL_270:
                  v207 = &v235[v219];
                  goto LABEL_245;
                default:
                  break;
              }
            }
          }

          v202 += 4;
          if (v204 == v202)
          {
            goto LABEL_279;
          }

          continue;
        }
      }

LABEL_201:
      *__src = &v106[v236 + v105 + v141];
      v147 = (v231 - *v231);
      if (*v147 >= 0xBu)
      {
        v148 = v147[5];
        if (v148)
        {
          v149 = (v231 + v148 + *(v231 + v148));
          v150 = v149 + 1;
          if (*v149)
          {
            v151 = 0;
            v152 = 0;
            do
            {
              v153 = (*__src + 8 * (v151 & 0xFFFFFFFC));
              AGX::SamplerDescriptor::SamplerDescriptor(&v243, (v150 + *v150), v104);
              AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v242, &v243);
              *v153 = v242;
              if (v246 < 0)
              {
                operator delete(v245);
              }

              *&v243 = v153;
              std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v226, &v243);
              ++v152;
              ++v150;
              v151 += 4;
            }

            while (v152 < *v149);
            v8 = v225;
          }
        }
      }

      goto LABEL_211;
    }
  }

  (v140->__on_zero_shared)(v140);
  std::__shared_weak_count::__release_weak(v140);
  if ((v246 & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

LABEL_190:
  operator delete(v245);
  goto LABEL_164;
}

void sub_29CE532CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a30 + 728);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a30 + 696));
  v46 = *a21;
  if (*a21)
  {
    *(a28 + 760) = v46;
    operator delete(v46);
  }

  if (*(a28 + 519) < 0)
  {
    operator delete(*(a30 + 408));
  }

  if (*(a28 + 487) < 0)
  {
    operator delete(*a17);
  }

  if (*(a28 + 463) < 0)
  {
    operator delete(*(a30 + 352));
  }

  if (*(a28 + 439) < 0)
  {
    operator delete(*a18);
  }

  v47 = *(a30 + 288);
  if (v47)
  {
    *(a28 + 384) = v47;
    operator delete(v47);
    if (a43 < 0)
    {
LABEL_15:
      operator delete(a38);
      _Unwind_Resume(a1);
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_15;
  }

  _Unwind_Resume(a1);
}

void AGX::ClearVisibilityVertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ClearVisibilityVertexProgramVariantESLState(uint64_t a1, uint64_t a2, AGCDeserializedReply *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v242 = *MEMORY[0x29EDCA608];
  v234 = *a5;
  v235 = *(a5 + 2);
  *(a1 + 88) = 0u;
  v8 = a1 + 88;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 40) = 0u;
  v9 = a1 + 40;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  v10 = (a1 + 528);
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v218 = a1 + 464;
  v219 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v234;
  *(a1 + 680) = v235;
  v11 = (a1 + 748);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1307) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v12 = *(a4 + 465);
  bzero((a1 + 40), 0x30uLL);
  bzero(v8, 0x30uLL);
  v13 = 0;
  *(v8 + 656) = 0;
  v229 = v8;
  *(v8 + 1223) = 0;
  if (*(a3 + 28))
  {
    v14 = *(a3 + 29) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = 224;
  if (v14)
  {
    v15 = 784;
    v16 = a3 + 784;
  }

  else
  {
    v16 = a3 + 224;
  }

  v17 = *(a3 + v15);
  if (v17 && *(v16 + 1))
  {
    v13 = (v17 + *v17);
  }

  v18 = (v13 - *v13);
  v217 = v10;
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v228 = (v13 + v19 + *(v13 + v19));
  }

  else
  {
    v228 = 0;
  }

  v20 = 0;
  if (*(a3 + 58))
  {
    v21 = *(a3 + 59) == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 464;
  if (v21)
  {
    v22 = 1024;
    v23 = a3 + 1024;
  }

  else
  {
    v23 = a3 + 464;
  }

  v24 = *(a3 + v22);
  if (v24 && *(v23 + 1))
  {
    v20 = (v24 + *v24);
  }

  v25 = (v20 - *v20);
  if (*v25 < 5u)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25[2];
    if (v26)
    {
      v26 = (v26 + v20 + *(v26 + v20));
    }
  }

  v225 = v26;
  v27 = (v26 - *v26);
  if (*v27 < 0x11u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[8];
    if (v28)
    {
      LODWORD(v28) = *(v26 + v28);
    }
  }

  *v11 = v28;
  v29 = (v26 - *v26);
  if (*v29 <= 6u)
  {
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = v29[3];
    if (v30)
    {
      LODWORD(v30) = *(v26 + v30);
    }
  }

  *(a1 + 408) = v30;
  v31 = (v26 - *v26);
  if (*v31 >= 0x13u && (v32 = v31[9]) != 0)
  {
    v33 = v26 + v32 + *(v26 + v32) + 4;
  }

  else
  {
    v33 = "";
  }

  v222 = (v8 + 664);
  MEMORY[0x29ED51E00](v219, v33);
  v34 = (v225 - *v225);
  if (*v34 >= 0x51u && (v35 = v34[40]) != 0)
  {
    v36 = v225 + v35 + *(v225 + v35) + 4;
  }

  else
  {
    v36 = "";
  }

  MEMORY[0x29ED51E00](v8 + 408, v36);
  std::string::operator=((v8 + 352), &__str);
  v37 = (v225 - *v225);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = v225 + v38 + *(v225 + v38) + 4;
  }

  else
  {
    v39 = "";
  }

  MEMORY[0x29ED51E00](v218, v39);
  v40 = (v225 - *v225);
  if (*v40 < 0x29u)
  {
    LOBYTE(v41) = 0;
  }

  else
  {
    v41 = v40[20];
    if (v41)
    {
      LOBYTE(v41) = *(v225 + v41) != 0;
    }
  }

  *(a1 + 488) = v41;
  v42 = *(a3 + 58);
  if (v42)
  {
    v43 = *(a3 + 59) == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = 464;
  if (v43)
  {
    v44 = 1024;
    v45 = a3 + 1024;
  }

  else
  {
    v45 = a3 + 464;
  }

  v46 = *(a3 + v44);
  v47 = *(v45 + 1);
  if (v46)
  {
    v48 = v47 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = !v48;
  if (v48)
  {
    v50 = 0;
  }

  else
  {
    v50 = (v46 + *v46);
  }

  v51 = (v50 - *v50);
  if (*v51 >= 7u && v51[3] && (!v49 ? (v52 = 0) : (v52 = (v46 + *v46)), (v53 = (v52 - *v52), *v53 < 7u) || (v54 = v53[3]) == 0 ? (v55 = 0) : (v55 = (v52 + v54 + *(v52 + v54))), (v56 = (v55 - *v55), *v56 >= 0xBu) && (v57 = v56[5]) != 0))
  {
    v58 = *(v55 + v57);
  }

  else
  {
    v58 = 0;
  }

  *(a1 + 600) = v58;
  if (v42)
  {
    v59 = *(a3 + 59) == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = 464;
  if (v59)
  {
    v60 = 1024;
    v61 = a3 + 1024;
  }

  else
  {
    v61 = a3 + 464;
  }

  v62 = *(a3 + v60);
  v63 = *(v61 + 1);
  if (v62)
  {
    v64 = v63 == 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = !v64;
  if (v64)
  {
    v66 = 0;
  }

  else
  {
    v66 = (v62 + *v62);
  }

  v67 = (v66 - *v66);
  if (*v67 >= 7u && v67[3] && (!v65 ? (v68 = 0) : (v68 = (v62 + *v62)), (v69 = (v68 - *v68), *v69 < 7u) || (v70 = v69[3]) == 0 ? (v71 = 0) : (v71 = (v68 + v70 + *(v68 + v70))), (v72 = (v71 - *v71), *v72 >= 0xDu) && (v73 = v72[6]) != 0))
  {
    v74 = *(v71 + v73);
  }

  else
  {
    v74 = 0;
  }

  *(a1 + 604) = v74;
  *(a1 + 776) = *(a4 + 465);
  v75 = (v228 - *v228);
  if (*v75 < 0x4Du)
  {
    LODWORD(v76) = 0;
  }

  else
  {
    v76 = v75[38];
    if (v76)
    {
      LODWORD(v76) = *(v228 + v76);
    }
  }

  *(a1 + 400) = v76;
  v77 = (v228 - *v228);
  if (*v77 < 0x53u)
  {
    LODWORD(v78) = 0;
  }

  else
  {
    v78 = v77[41];
    if (v78)
    {
      LODWORD(v78) = *(v228 + v78);
    }
  }

  *(a1 + 404) = v78;
  v79 = (v228 - *v228);
  if (*v79 < 0x43u)
  {
    LODWORD(v80) = 0;
  }

  else
  {
    v80 = v79[33];
    if (v80)
    {
      LODWORD(v80) = *(v228 + v80);
    }
  }

  *(a1 + 608) = v80;
  *(a1 + 612) = 0;
  v81 = (v228 - *v228);
  if (*v81 >= 0x21u && (v82 = v81[16]) != 0)
  {
    v83 = *(v228 + v82);
  }

  else
  {
    v83 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v83;
  *(a1 + 620) = *(a1 + 608);
  v84 = (v228 - *v228);
  if (*v84 < 5u)
  {
    LODWORD(v85) = 0;
  }

  else
  {
    v85 = v84[2];
    if (v85)
    {
      LODWORD(v85) = *(v228 + v85);
    }
  }

  *(a1 + 624) = v85;
  v86 = (v228 - *v228);
  if (*v86 < 0x51u)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = v86[40];
    if (v87)
    {
      LODWORD(v87) = *(v228 + v87);
    }
  }

  *(a1 + 628) = v87;
  v88 = (v228 - *v228);
  if (*v88 < 0x4Fu)
  {
    LODWORD(v89) = 0;
  }

  else
  {
    v89 = v88[39];
    if (v89)
    {
      LODWORD(v89) = *(v228 + v89);
    }
  }

  *(a1 + 632) = v89;
  *(a1 + 776) = *(a4 + 465);
  *(a1 + 520) = 0;
  v90 = v228 - *v228;
  v91 = *(v228 + *(v90 + 15) + *(v228 + *(v90 + 15)));
  v92 = *(v90 + 13);
  if (v92)
  {
    LODWORD(v92) = *(v228 + v92);
  }

  v93 = v92;
  v94 = *(a4 + 152);
  v230 = a4;
  if (*(a4 + 416) == 1)
  {
    v95 = vaddq_s64(*(a4 + 240), *(a4 + 216));
    v96 = (vsubq_s64(vdupq_laneq_s64(v95, 1), v95).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(a4 + 400) + *(a4 + 352) - (*(a4 + 392) + *(a4 + 344))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v96 = 0;
  }

  if (v92)
  {
    v97 = (v91 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v97 = v91;
  }

  __src = v97;
  v98 = v97 + v92;
  if (v94)
  {
    v96 = ((v98 + v96 + 31) & 0xFFFFFFFFFFFFFFE0) - v98;
  }

  v220 = v96;
  v221 = v9;
  v99 = v98 + 8 * v94 + v96;
  if (!v99)
  {
    goto LABEL_211;
  }

  AGX::Heap<true>::allocateImpl(&v238, a2 + 6328, v99, (a1 + 584));
  *(a1 + 1304) += *v239;
  v100 = *v239;
  *(v8 + 608) = v238;
  *(v8 + 624) = v100;
  v101 = *&v239[9];
  *(v8 + 633) = *&v239[9];
  __dst = *(a1 + 704);
  v223 = *(a1 + 696);
  if (v91)
  {
    v102 = (v228 - *v228);
    if (*v102 < 0x1Fu)
    {
      v103 = 0;
    }

    else
    {
      v103 = v102[15];
      if (v103)
      {
        v103 += v228 + *(v228 + v103);
      }
    }

    memcpy(__dst, (v103 + 4), v91);
    *(a1 + 640) = v223;
    *(a1 + 648) = __dst;
    *(a1 + 656) = __src;
  }

  if (v93)
  {
    v104 = (v225 - *v225);
    if (*v104 < 0xBu)
    {
      v107 = 0;
      v106 = v228;
    }

    else
    {
      v105 = v104[5];
      v106 = v228;
      if (v105)
      {
        v107 = v225 + v105 + *(v225 + v105);
      }

      else
      {
        v107 = 0;
      }
    }

    v109 = *(v106 - *v106 + 28);
    v110 = *(v106 + v109);
    if (*(v106 + v109 + v110))
    {
      v111 = 0;
      v112 = 0;
      v224 = __dst + ((v91 + 31) & 0x1FFFFFFE0);
      v226 = v107 + 4;
      v113 = 8;
      if (v12)
      {
        v113 = 24;
      }

      v216 = v113;
      while (1)
      {
        v114 = v109;
        v115 = v109 + v110;
        v116 = *(&v106[v111 + 1] + v115);
        v117 = v115 + v116;
        v118 = &v106[v111] + v115 + v116;
        v119 = *(v118 + 1);
        v120 = &v106[v111] + v117 - v119;
        v121 = *(v120 + 2);
        if (v121 < 5)
        {
          goto LABEL_167;
        }

        v122 = *(v120 + 4);
        if (!v122)
        {
          goto LABEL_167;
        }

        v123 = *(v228 + v114 + v110 + v116 + v111 * 4 + v122 + 4);
        if (v123 != 114)
        {
          if (v123 == 18)
          {
            if (v121 < 9)
            {
              v125 = 0;
            }

            else
            {
              v124 = v114 + v110 + v116;
              v125 = *(&v228[v111 + 3] + v124 - v119);
              if (v125)
              {
                v125 = *(v228 + v124 + v111 * 4 + v125 + 4);
              }
            }

            v128 = &v224[8 * v125];
            bzero(v128, v216);
            v130 = &v228[v111] + v114 + v110 + v116 - *(v118 + 1);
            if (*(v130 + 2) < 7u)
            {
              v131 = 0;
            }

            else
            {
              v131 = *(v130 + 5);
              if (v131)
              {
                v131 = 4 * *(v228 + v114 + v110 + v116 + v111 * 4 + v131 + 4);
              }
            }

            AGX::SamplerDescriptor::SamplerDescriptor(&v238, &v226[v131 + *&v226[v131]], v129);
            AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v237, &v238);
            *v128 = v237;
            if (v241 < 0)
            {
              operator delete(v240);
            }

            *&v238 = v128;
            std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v222, &v238);
          }

          goto LABEL_167;
        }

        if (v121 < 7)
        {
          v127 = 0;
        }

        else
        {
          v126 = v114 + v110 + v116;
          v127 = *(&v228[v111 + 2] + v126 - v119 + 2);
          if (v127)
          {
            v127 = 4 * *(v228 + v126 + v111 * 4 + v127 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v238, &v226[v127 + *&v226[v127]], v101);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v237, *(a1 + 808), &v238);
        v132 = *(v237 + 96);
        std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v229[43].i64[1], &v237);
        v133 = &v228[v111] + v114 + v110 + v116 - *(v118 + 1);
        if (*(v133 + 2) < 9u)
        {
          v134 = 0;
        }

        else
        {
          v134 = *(v133 + 6);
          if (v134)
          {
            v134 = *(v228 + v114 + v110 + v116 + v111 * 4 + v134 + 4);
          }
        }

        *&v224[4 * v134] = v132;
        v135 = *(&v237 + 1);
        if (*(&v237 + 1))
        {
          if (!atomic_fetch_add((*(&v237 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        if (v241 < 0)
        {
          goto LABEL_193;
        }

LABEL_167:
        ++v112;
        v106 = v228;
        v109 = *(v228 - *v228 + 28);
        v110 = *(v228 + v109);
        ++v111;
        if (v112 >= *(v228 + v109 + v110))
        {
          goto LABEL_196;
        }
      }

      (v135->__on_zero_shared)(v135);
      std::__shared_weak_count::__release_weak(v135);
      if ((v241 & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

LABEL_193:
      operator delete(v240);
      goto LABEL_167;
    }

LABEL_196:
    v9 = v221;
    v108 = v220;
    if (!v220)
    {
      goto LABEL_199;
    }
  }

  else
  {
    v108 = v220;
    if (!v220)
    {
      goto LABEL_199;
    }
  }

  *(a1 + 520) = v98 + v223;
  v136 = &__src[__dst + v93];
  v137 = v230;
  v138 = *(v230 + 216);
  v139 = *(v230 + 224) - v138;
  *v136 = v139 >> 2;
  *(v136 + 1) = (*(v230 + 248) - *(v230 + 240)) >> 2;
  *(v136 + 2) = (*(v230 + 352) - *(v230 + 344)) >> 1;
  *(v136 + 3) = (*(v230 + 400) - *(v230 + 392)) >> 1;
  memcpy(v136 + 8, v138, v139);
  v140 = &v136[*(v137 + 224) - *(v137 + 216) + 8];
  memcpy(v140, *(v137 + 240), *(v137 + 248) - *(v137 + 240));
  v141 = &v140[*(v137 + 248) - *(v137 + 240)];
  memcpy(v141, *(v137 + 344), *(v137 + 352) - *(v137 + 344));
  memcpy(&v141[*(v137 + 352) - *(v137 + 344)], *(v137 + 392), *(v137 + 400) - *(v137 + 392));
  if (*(v136 + 2))
  {
    if (*(v136 + 3))
    {
      goto LABEL_199;
    }

LABEL_210:
    *(v136 + 3) = *(v136 + 1);
    if (v94)
    {
      goto LABEL_200;
    }

    goto LABEL_211;
  }

  *(v136 + 2) = *v136;
  if (!*(v136 + 3))
  {
    goto LABEL_210;
  }

LABEL_199:
  if (v94)
  {
LABEL_200:
    *v217 = &__src[__dst + v93 + v108];
    v142 = (v225 - *v225);
    v143 = v230;
    if (*v142 >= 0xBu)
    {
      v144 = v142[5];
      if (v144)
      {
        v145 = (v225 + v144 + *(v225 + v144));
        v146 = v145 + 1;
        if (*v145)
        {
          v147 = 0;
          v148 = 0;
          do
          {
            v149 = (*v217 + 8 * (v147 & 0xFFFFFFFC));
            AGX::SamplerDescriptor::SamplerDescriptor(&v238, (v146 + *v146), v101);
            AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v237, &v238);
            *v149 = v237;
            if (v241 < 0)
            {
              operator delete(v240);
            }

            *&v238 = v149;
            std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v222, &v238);
            ++v148;
            ++v146;
            v147 += 4;
          }

          while (v148 < *v145);
        }
      }
    }

    goto LABEL_212;
  }

LABEL_211:
  v143 = v230;
LABEL_212:
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(a2, v222);
  v150 = (v228 - *v228);
  v151 = v150[8];
  v152 = *(v228 + v151);
  v153 = (v228 + v151 + v152);
  v154 = *v153;
  if (v154)
  {
    v155 = 0;
    v156 = 4 * v154;
    v157 = v228 + v151 + v152;
    do
    {
      v162 = v153[v155 / 4 + 1];
      v163 = &v157[v155 + v162 - *(&v153[v155 / 4 + 1] + v162)];
      if (*(v163 + 2) < 7u)
      {
        LODWORD(v158) = 0;
      }

      else
      {
        v158 = *(v163 + 5);
        if (v158)
        {
          v164 = *&v157[v155 + 4 + v162 + v158];
          LODWORD(v158) = v164;
          if ((v164 & 0x80000000) != 0)
          {
            v229->i64[(v164 & 0x7C000000) != 0] |= 1 << (v164 >> 20);
            v161 = v229;
            v159 = 1;
            goto LABEL_216;
          }
        }
      }

      v159 = 1 << v158;
      v160 = 8 * ((v158 & 0xFFFC0) != 0);
      *(a1 + 56 + v160) |= v159;
      v161 = (a1 + 104 + v160);
LABEL_216:
      *v161 |= v159;
      v155 += 4;
    }

    while (v156 != v155);
  }

  v165 = v150[10];
  v166 = *(v228 + v165);
  v167 = (v228 + v165 + v166);
  v168 = *v167;
  if (v168)
  {
    v169 = 0;
    v170 = 4 * v168;
    v171 = v228 + v165 + v166;
    do
    {
      v176 = v167[v169 / 4 + 1];
      v177 = &v171[v169 + v176 - *(&v167[v169 / 4 + 1] + v176)];
      if (*(v177 + 2) < 7u)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = *(v177 + 5);
        if (v172)
        {
          v178 = *&v171[v169 + 4 + v176 + v172];
          LODWORD(v172) = v178;
          if ((v178 & 0x80000000) != 0)
          {
            v229->i64[(v178 & 0x7C000000) != 0] |= 1 << (v178 >> 20);
            v175 = v229;
            v173 = 1;
            goto LABEL_225;
          }
        }
      }

      v173 = 1 << v172;
      v174 = 8 * ((v172 & 0xFFFC0) != 0);
      *(a1 + 72 + v174) |= v173;
      v175 = (a1 + 120 + v174);
LABEL_225:
      *v175 |= v173;
      v169 += 4;
    }

    while (v170 != v169);
  }

  v179 = v150[6];
  v180 = *(v228 + v179);
  v181 = (v228 + v179 + v180);
  v182 = *v181;
  if (v182)
  {
    v183 = 0;
    v184 = 4 * v182;
    v185 = v228 + v179 + v180;
    do
    {
      v189 = v181[v183 / 4 + 1];
      v190 = &v185[v183 + v189 - *(&v181[v183 / 4 + 1] + v189)];
      if (*(v190 + 2) < 7u)
      {
        LODWORD(v186) = 0;
      }

      else
      {
        v186 = *(v190 + 5);
        if (v186)
        {
          v191 = *&v185[v183 + 4 + v189 + v186];
          LODWORD(v186) = v191;
          if ((v191 & 0x80000000) != 0)
          {
            v187 = 1 << (v191 >> 20);
            v188 = (v191 & 0x7C000000) != 0;
            goto LABEL_234;
          }
        }
      }

      v187 = 1 << v186;
      v188 = (v186 & 0xFFFC0) != 0;
      *(v9 + 8 * v188) |= v187;
LABEL_234:
      v229->i64[v188] |= v187;
      v183 += 4;
    }

    while (v184 != v183);
  }

  v192 = *(v143 + 160);
  if (*&v192 != 0)
  {
    *(a1 + 56) = vorrq_s8(*(a1 + 56), v192);
    *(a1 + 104) = vorrq_s8(*(a1 + 104), v192);
  }

  v193 = *(v143 + 192);
  if (*&v193 != 0)
  {
    *(a1 + 72) = vorrq_s8(*(a1 + 72), v193);
    *(a1 + 120) = vorrq_s8(*(a1 + 120), v193);
  }

  v194 = v150[12];
  v195 = *(v228 + v194);
  v196 = (v228 + v194 + v195);
  v197 = *v196;
  if (!v197)
  {
LABEL_280:
    if ((*(a1 + 1311) & 1) == 0)
    {
      *(a1 + 200) = *(v143 + 424);
      *(a1 + 248) = *(v143 + 440);
      v229[14] = vorrq_s8(*(v143 + 440), *(v143 + 424));
    }

    operator new();
  }

  v198 = 0;
  v199 = a1 + 136;
  v200 = 4 * v197;
  v201 = v228 + v194 + v195;
  while (1)
  {
    v204 = *&v201[v198 + 4];
    v205 = v204 - *(&v196[v198 / 4 + 1] + v204);
    v206 = &v201[v198 + v205];
    v207 = *(v206 + 2);
    if (v207 < 7)
    {
      if (v207 < 5)
      {
        goto LABEL_247;
      }
    }

    else
    {
      v208 = *(v206 + 5);
      if (v208)
      {
        v209 = *&v201[v198 + 4 + v204 + v208];
        goto LABEL_253;
      }
    }

    v209 = 0;
LABEL_253:
    v210 = *&v201[v198 + 8 + v205];
    if (v210)
    {
      v211 = v201[v198 + 4 + v204 + v210];
      v203 = (a1 + 184);
      v202 = 1;
      switch(v201[v198 + 4 + v204 + v210])
      {
        case 11:
        case 12:
        case 13:
        case 16:
        case 17:
        case 62:
        case 93:
        case 97:
        case 98:
        case 113:
          if ((v209 & 0x80000000) != 0)
          {
            v202 = 1 << (v209 >> 20);
            v203 = &v229->i64[(v209 & 0x7C000000) != 0];
          }

          else
          {
            if ((v209 & 0x7FF00000) == 0x400000)
            {
              break;
            }

            if (v211 == 113 || v211 == 98)
            {
              v213 = 4;
            }

            else
            {
              v213 = 2;
            }

            v214 = (v209 & 0xFFFC0) != 0;
            v202 = 1 << v209;
            *(v199 + v213 * 8 + v214 * 8) |= 1 << v209;
            v203 = &v229->i64[v214 + v213];
          }

LABEL_246:
          *v203 |= v202;
          break;
        case 24:
          v203 = (a1 + 184);
          v202 = 4;
          goto LABEL_246;
        case 25:
          v203 = (a1 + 184);
          v202 = 8;
          goto LABEL_246;
        case 27:
          goto LABEL_246;
        case 28:
          v203 = (a1 + 184);
          v202 = 2;
          goto LABEL_246;
        case 59:
          v203 = (a1 + 184);
          v202 = 16;
          goto LABEL_246;
        case 60:
        case 61:
          v203 = (a1 + 184);
          v202 = 32;
          goto LABEL_246;
        case 75:
          v203 = (a1 + 184);
          v202 = 64;
          goto LABEL_246;
        case 84:
        case 85:
          v203 = (a1 + 184);
          v202 = 128;
          goto LABEL_246;
        case 108:
          v203 = (a1 + 184);
          v202 = 256;
          goto LABEL_246;
        case 109:
        case 110:
          v202 = 1 << v209;
          v215 = (v209 & 0xFFFC0) != 0;
          *(v199 + v215 * 8) |= 1 << v209;
          goto LABEL_271;
        case 111:
          v203 = (a1 + 184);
          v202 = 512;
          goto LABEL_246;
        case 112:
          v203 = (a1 + 184);
          v202 = 1024;
          goto LABEL_246;
        case 118:
          v203 = (a1 + 184);
          v202 = 2048;
          goto LABEL_246;
        case 119:
          v203 = (a1 + 184);
          v202 = 4096;
          goto LABEL_246;
        case 120:
          v203 = (a1 + 184);
          v202 = 0x2000;
          goto LABEL_246;
        case -117:
          v202 = 1 << v209;
          v215 = (v209 & 0xFFFC0) != 0;
          *(v9 + v215 * 8) |= 1 << v209;
LABEL_271:
          v203 = &v229->i64[v215];
          goto LABEL_246;
        default:
          break;
      }
    }

LABEL_247:
    v198 += 4;
    if (v200 == v198)
    {
      goto LABEL_280;
    }
  }
}

void sub_29CE56B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a29 + 728);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a29 + 696));
  v46 = *a22;
  if (*a22)
  {
    *(a27 + 760) = v46;
    operator delete(v46);
  }

  if (*(a27 + 519) < 0)
  {
    operator delete(*(a29 + 408));
  }

  if (*(a27 + 487) < 0)
  {
    operator delete(*a14);
  }

  if (*(a27 + 463) < 0)
  {
    operator delete(*(a29 + 352));
  }

  if (*(a27 + 439) < 0)
  {
    operator delete(*a15);
  }

  v47 = *(a29 + 288);
  if (v47)
  {
    *(a27 + 384) = v47;
    operator delete(v47);
    if (a43 < 0)
    {
LABEL_15:
      operator delete(a38);
      _Unwind_Resume(a1);
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_15;
  }

  _Unwind_Resume(a1);
}

void AGX::BlitVertexFastClearProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::BlitVertexFastClearProgramVariantESLState(uint64_t a1, uint64_t a2, AGCDeserializedReply *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v242 = *MEMORY[0x29EDCA608];
  v234 = *a5;
  v235 = *(a5 + 2);
  *(a1 + 88) = 0u;
  v8 = a1 + 88;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 40) = 0u;
  v9 = a1 + 40;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  v10 = (a1 + 528);
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v218 = a1 + 464;
  v219 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v234;
  *(a1 + 680) = v235;
  v11 = (a1 + 748);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1307) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v12 = *(a4 + 465);
  bzero((a1 + 40), 0x30uLL);
  bzero(v8, 0x30uLL);
  v13 = 0;
  *(v8 + 656) = 0;
  v229 = v8;
  *(v8 + 1223) = 0;
  if (*(a3 + 28))
  {
    v14 = *(a3 + 29) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = 224;
  if (v14)
  {
    v15 = 784;
    v16 = a3 + 784;
  }

  else
  {
    v16 = a3 + 224;
  }

  v17 = *(a3 + v15);
  if (v17 && *(v16 + 1))
  {
    v13 = (v17 + *v17);
  }

  v18 = (v13 - *v13);
  v217 = v10;
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v228 = (v13 + v19 + *(v13 + v19));
  }

  else
  {
    v228 = 0;
  }

  v20 = 0;
  if (*(a3 + 58))
  {
    v21 = *(a3 + 59) == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 464;
  if (v21)
  {
    v22 = 1024;
    v23 = a3 + 1024;
  }

  else
  {
    v23 = a3 + 464;
  }

  v24 = *(a3 + v22);
  if (v24 && *(v23 + 1))
  {
    v20 = (v24 + *v24);
  }

  v25 = (v20 - *v20);
  if (*v25 < 5u)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25[2];
    if (v26)
    {
      v26 = (v26 + v20 + *(v26 + v20));
    }
  }

  v225 = v26;
  v27 = (v26 - *v26);
  if (*v27 < 0x11u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[8];
    if (v28)
    {
      LODWORD(v28) = *(v26 + v28);
    }
  }

  *v11 = v28;
  v29 = (v26 - *v26);
  if (*v29 <= 6u)
  {
    LODWORD(v30) = 0;
  }

  else
  {
    v30 = v29[3];
    if (v30)
    {
      LODWORD(v30) = *(v26 + v30);
    }
  }

  *(a1 + 408) = v30;
  v31 = (v26 - *v26);
  if (*v31 >= 0x13u && (v32 = v31[9]) != 0)
  {
    v33 = v26 + v32 + *(v26 + v32) + 4;
  }

  else
  {
    v33 = "";
  }

  v222 = (v8 + 664);
  MEMORY[0x29ED51E00](v219, v33);
  v34 = (v225 - *v225);
  if (*v34 >= 0x51u && (v35 = v34[40]) != 0)
  {
    v36 = v225 + v35 + *(v225 + v35) + 4;
  }

  else
  {
    v36 = "";
  }

  MEMORY[0x29ED51E00](v8 + 408, v36);
  std::string::operator=((v8 + 352), &__str);
  v37 = (v225 - *v225);
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = v225 + v38 + *(v225 + v38) + 4;
  }

  else
  {
    v39 = "";
  }

  MEMORY[0x29ED51E00](v218, v39);
  v40 = (v225 - *v225);
  if (*v40 < 0x29u)
  {
    LOBYTE(v41) = 0;
  }

  else
  {
    v41 = v40[20];
    if (v41)
    {
      LOBYTE(v41) = *(v225 + v41) != 0;
    }
  }

  *(a1 + 488) = v41;
  v42 = *(a3 + 58);
  if (v42)
  {
    v43 = *(a3 + 59) == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = 464;
  if (v43)
  {
    v44 = 1024;
    v45 = a3 + 1024;
  }

  else
  {
    v45 = a3 + 464;
  }

  v46 = *(a3 + v44);
  v47 = *(v45 + 1);
  if (v46)
  {
    v48 = v47 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = !v48;
  if (v48)
  {
    v50 = 0;
  }

  else
  {
    v50 = (v46 + *v46);
  }

  v51 = (v50 - *v50);
  if (*v51 >= 7u && v51[3] && (!v49 ? (v52 = 0) : (v52 = (v46 + *v46)), (v53 = (v52 - *v52), *v53 < 7u) || (v54 = v53[3]) == 0 ? (v55 = 0) : (v55 = (v52 + v54 + *(v52 + v54))), (v56 = (v55 - *v55), *v56 >= 0xBu) && (v57 = v56[5]) != 0))
  {
    v58 = *(v55 + v57);
  }

  else
  {
    v58 = 0;
  }

  *(a1 + 600) = v58;
  if (v42)
  {
    v59 = *(a3 + 59) == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = 464;
  if (v59)
  {
    v60 = 1024;
    v61 = a3 + 1024;
  }

  else
  {
    v61 = a3 + 464;
  }

  v62 = *(a3 + v60);
  v63 = *(v61 + 1);
  if (v62)
  {
    v64 = v63 == 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = !v64;
  if (v64)
  {
    v66 = 0;
  }

  else
  {
    v66 = (v62 + *v62);
  }

  v67 = (v66 - *v66);
  if (*v67 >= 7u && v67[3] && (!v65 ? (v68 = 0) : (v68 = (v62 + *v62)), (v69 = (v68 - *v68), *v69 < 7u) || (v70 = v69[3]) == 0 ? (v71 = 0) : (v71 = (v68 + v70 + *(v68 + v70))), (v72 = (v71 - *v71), *v72 >= 0xDu) && (v73 = v72[6]) != 0))
  {
    v74 = *(v71 + v73);
  }

  else
  {
    v74 = 0;
  }

  *(a1 + 604) = v74;
  *(a1 + 776) = *(a4 + 465);
  v75 = (v228 - *v228);
  if (*v75 < 0x4Du)
  {
    LODWORD(v76) = 0;
  }

  else
  {
    v76 = v75[38];
    if (v76)
    {
      LODWORD(v76) = *(v228 + v76);
    }
  }

  *(a1 + 400) = v76;
  v77 = (v228 - *v228);
  if (*v77 < 0x53u)
  {
    LODWORD(v78) = 0;
  }

  else
  {
    v78 = v77[41];
    if (v78)
    {
      LODWORD(v78) = *(v228 + v78);
    }
  }

  *(a1 + 404) = v78;
  v79 = (v228 - *v228);
  if (*v79 < 0x43u)
  {
    LODWORD(v80) = 0;
  }

  else
  {
    v80 = v79[33];
    if (v80)
    {
      LODWORD(v80) = *(v228 + v80);
    }
  }

  *(a1 + 608) = v80;
  *(a1 + 612) = 0;
  v81 = (v228 - *v228);
  if (*v81 >= 0x21u && (v82 = v81[16]) != 0)
  {
    v83 = *(v228 + v82);
  }

  else
  {
    v83 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v83;
  *(a1 + 620) = *(a1 + 608);
  v84 = (v228 - *v228);
  if (*v84 < 5u)
  {
    LODWORD(v85) = 0;
  }

  else
  {
    v85 = v84[2];
    if (v85)
    {
      LODWORD(v85) = *(v228 + v85);
    }
  }

  *(a1 + 624) = v85;
  v86 = (v228 - *v228);
  if (*v86 < 0x51u)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = v86[40];
    if (v87)
    {
      LODWORD(v87) = *(v228 + v87);
    }
  }

  *(a1 + 628) = v87;
  v88 = (v228 - *v228);
  if (*v88 < 0x4Fu)
  {
    LODWORD(v89) = 0;
  }

  else
  {
    v89 = v88[39];
    if (v89)
    {
      LODWORD(v89) = *(v228 + v89);
    }
  }

  *(a1 + 632) = v89;
  *(a1 + 776) = *(a4 + 465);
  *(a1 + 520) = 0;
  v90 = v228 - *v228;
  v91 = *(v228 + *(v90 + 15) + *(v228 + *(v90 + 15)));
  v92 = *(v90 + 13);
  if (v92)
  {
    LODWORD(v92) = *(v228 + v92);
  }

  v93 = v92;
  v94 = *(a4 + 152);
  v230 = a4;
  if (*(a4 + 416) == 1)
  {
    v95 = vaddq_s64(*(a4 + 240), *(a4 + 216));
    v96 = (vsubq_s64(vdupq_laneq_s64(v95, 1), v95).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(a4 + 400) + *(a4 + 352) - (*(a4 + 392) + *(a4 + 344))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v96 = 0;
  }

  if (v92)
  {
    v97 = (v91 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v97 = v91;
  }

  __src = v97;
  v98 = v97 + v92;
  if (v94)
  {
    v96 = ((v98 + v96 + 31) & 0xFFFFFFFFFFFFFFE0) - v98;
  }

  v220 = v96;
  v221 = v9;
  v99 = v98 + 8 * v94 + v96;
  if (!v99)
  {
    goto LABEL_211;
  }

  AGX::Heap<true>::allocateImpl(&v238, a2 + 6328, v99, (a1 + 584));
  *(a1 + 1304) += *v239;
  v100 = *v239;
  *(v8 + 608) = v238;
  *(v8 + 624) = v100;
  v101 = *&v239[9];
  *(v8 + 633) = *&v239[9];
  __dst = *(a1 + 704);
  v223 = *(a1 + 696);
  if (v91)
  {
    v102 = (v228 - *v228);
    if (*v102 < 0x1Fu)
    {
      v103 = 0;
    }

    else
    {
      v103 = v102[15];
      if (v103)
      {
        v103 += v228 + *(v228 + v103);
      }
    }

    memcpy(__dst, (v103 + 4), v91);
    *(a1 + 640) = v223;
    *(a1 + 648) = __dst;
    *(a1 + 656) = __src;
  }

  if (v93)
  {
    v104 = (v225 - *v225);
    if (*v104 < 0xBu)
    {
      v107 = 0;
      v106 = v228;
    }

    else
    {
      v105 = v104[5];
      v106 = v228;
      if (v105)
      {
        v107 = v225 + v105 + *(v225 + v105);
      }

      else
      {
        v107 = 0;
      }
    }

    v109 = *(v106 - *v106 + 28);
    v110 = *(v106 + v109);
    if (*(v106 + v109 + v110))
    {
      v111 = 0;
      v112 = 0;
      v224 = __dst + ((v91 + 31) & 0x1FFFFFFE0);
      v226 = v107 + 4;
      v113 = 8;
      if (v12)
      {
        v113 = 24;
      }

      v216 = v113;
      while (1)
      {
        v114 = v109;
        v115 = v109 + v110;
        v116 = *(&v106[v111 + 1] + v115);
        v117 = v115 + v116;
        v118 = &v106[v111] + v115 + v116;
        v119 = *(v118 + 1);
        v120 = &v106[v111] + v117 - v119;
        v121 = *(v120 + 2);
        if (v121 < 5)
        {
          goto LABEL_167;
        }

        v122 = *(v120 + 4);
        if (!v122)
        {
          goto LABEL_167;
        }

        v123 = *(v228 + v114 + v110 + v116 + v111 * 4 + v122 + 4);
        if (v123 != 114)
        {
          if (v123 == 18)
          {
            if (v121 < 9)
            {
              v125 = 0;
            }

            else
            {
              v124 = v114 + v110 + v116;
              v125 = *(&v228[v111 + 3] + v124 - v119);
              if (v125)
              {
                v125 = *(v228 + v124 + v111 * 4 + v125 + 4);
              }
            }

            v128 = &v224[8 * v125];
            bzero(v128, v216);
            v130 = &v228[v111] + v114 + v110 + v116 - *(v118 + 1);
            if (*(v130 + 2) < 7u)
            {
              v131 = 0;
            }

            else
            {
              v131 = *(v130 + 5);
              if (v131)
              {
                v131 = 4 * *(v228 + v114 + v110 + v116 + v111 * 4 + v131 + 4);
              }
            }

            AGX::SamplerDescriptor::SamplerDescriptor(&v238, &v226[v131 + *&v226[v131]], v129);
            AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v237, &v238);
            *v128 = v237;
            if (v241 < 0)
            {
              operator delete(v240);
            }

            *&v238 = v128;
            std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v222, &v238);
          }

          goto LABEL_167;
        }

        if (v121 < 7)
        {
          v127 = 0;
        }

        else
        {
          v126 = v114 + v110 + v116;
          v127 = *(&v228[v111 + 2] + v126 - v119 + 2);
          if (v127)
          {
            v127 = 4 * *(v228 + v126 + v111 * 4 + v127 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v238, &v226[v127 + *&v226[v127]], v101);
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v237, *(a1 + 808), &v238);
        v132 = *(v237 + 96);
        std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v229[43].i64[1], &v237);
        v133 = &v228[v111] + v114 + v110 + v116 - *(v118 + 1);
        if (*(v133 + 2) < 9u)
        {
          v134 = 0;
        }

        else
        {
          v134 = *(v133 + 6);
          if (v134)
          {
            v134 = *(v228 + v114 + v110 + v116 + v111 * 4 + v134 + 4);
          }
        }

        *&v224[4 * v134] = v132;
        v135 = *(&v237 + 1);
        if (*(&v237 + 1))
        {
          if (!atomic_fetch_add((*(&v237 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        if (v241 < 0)
        {
          goto LABEL_193;
        }

LABEL_167:
        ++v112;
        v106 = v228;
        v109 = *(v228 - *v228 + 28);
        v110 = *(v228 + v109);
        ++v111;
        if (v112 >= *(v228 + v109 + v110))
        {
          goto LABEL_196;
        }
      }

      (v135->__on_zero_shared)(v135);
      std::__shared_weak_count::__release_weak(v135);
      if ((v241 & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

LABEL_193:
      operator delete(v240);
      goto LABEL_167;
    }

LABEL_196:
    v9 = v221;
    v108 = v220;
    if (!v220)
    {
      goto LABEL_199;
    }
  }

  else
  {
    v108 = v220;
    if (!v220)
    {
      goto LABEL_199;
    }
  }

  *(a1 + 520) = v98 + v223;
  v136 = &__src[__dst + v93];
  v137 = v230;
  v138 = *(v230 + 216);
  v139 = *(v230 + 224) - v138;
  *v136 = v139 >> 2;
  *(v136 + 1) = (*(v230 + 248) - *(v230 + 240)) >> 2;
  *(v136 + 2) = (*(v230 + 352) - *(v230 + 344)) >> 1;
  *(v136 + 3) = (*(v230 + 400) - *(v230 + 392)) >> 1;
  memcpy(v136 + 8, v138, v139);
  v140 = &v136[*(v137 + 224) - *(v137 + 216) + 8];
  memcpy(v140, *(v137 + 240), *(v137 + 248) - *(v137 + 240));
  v141 = &v140[*(v137 + 248) - *(v137 + 240)];
  memcpy(v141, *(v137 + 344), *(v137 + 352) - *(v137 + 344));
  memcpy(&v141[*(v137 + 352) - *(v137 + 344)], *(v137 + 392), *(v137 + 400) - *(v137 + 392));
  if (*(v136 + 2))
  {
    if (*(v136 + 3))
    {
      goto LABEL_199;
    }

LABEL_210:
    *(v136 + 3) = *(v136 + 1);
    if (v94)
    {
      goto LABEL_200;
    }

    goto LABEL_211;
  }

  *(v136 + 2) = *v136;
  if (!*(v136 + 3))
  {
    goto LABEL_210;
  }

LABEL_199:
  if (v94)
  {
LABEL_200:
    *v217 = &__src[__dst + v93 + v108];
    v142 = (v225 - *v225);
    v143 = v230;
    if (*v142 >= 0xBu)
    {
      v144 = v142[5];
      if (v144)
      {
        v145 = (v225 + v144 + *(v225 + v144));
        v146 = v145 + 1;
        if (*v145)
        {
          v147 = 0;
          v148 = 0;
          do
          {
            v149 = (*v217 + 8 * (v147 & 0xFFFFFFFC));
            AGX::SamplerDescriptor::SamplerDescriptor(&v238, (v146 + *v146), v101);
            AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v237, &v238);
            *v149 = v237;
            if (v241 < 0)
            {
              operator delete(v240);
            }

            *&v238 = v149;
            std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v222, &v238);
            ++v148;
            ++v146;
            v147 += 4;
          }

          while (v148 < *v145);
        }
      }
    }

    goto LABEL_212;
  }

LABEL_211:
  v143 = v230;
LABEL_212:
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(a2, v222);
  v150 = (v228 - *v228);
  v151 = v150[8];
  v152 = *(v228 + v151);
  v153 = (v228 + v151 + v152);
  v154 = *v153;
  if (v154)
  {
    v155 = 0;
    v156 = 4 * v154;
    v157 = v228 + v151 + v152;
    do
    {
      v162 = v153[v155 / 4 + 1];
      v163 = &v157[v155 + v162 - *(&v153[v155 / 4 + 1] + v162)];
      if (*(v163 + 2) < 7u)
      {
        LODWORD(v158) = 0;
      }

      else
      {
        v158 = *(v163 + 5);
        if (v158)
        {
          v164 = *&v157[v155 + 4 + v162 + v158];
          LODWORD(v158) = v164;
          if ((v164 & 0x80000000) != 0)
          {
            v229->i64[(v164 & 0x7C000000) != 0] |= 1 << (v164 >> 20);
            v159 = 0x10000000000001;
            v161 = v229;
            goto LABEL_216;
          }
        }
      }

      v159 = 1 << v158;
      v160 = 8 * ((v158 & 0xFFFC0) != 0);
      *(a1 + 56 + v160) |= v159;
      v161 = (a1 + 104 + v160);
LABEL_216:
      *v161 |= v159;
      v155 += 4;
    }

    while (v156 != v155);
  }

  v165 = v150[10];
  v166 = *(v228 + v165);
  v167 = (v228 + v165 + v166);
  v168 = *v167;
  if (v168)
  {
    v169 = 0;
    v170 = 4 * v168;
    v171 = v228 + v165 + v166;
    do
    {
      v176 = v167[v169 / 4 + 1];
      v177 = &v171[v169 + v176 - *(&v167[v169 / 4 + 1] + v176)];
      if (*(v177 + 2) < 7u)
      {
        LODWORD(v172) = 0;
      }

      else
      {
        v172 = *(v177 + 5);
        if (v172)
        {
          v178 = *&v171[v169 + 4 + v176 + v172];
          LODWORD(v172) = v178;
          if ((v178 & 0x80000000) != 0)
          {
            v229->i64[(v178 & 0x7C000000) != 0] |= 1 << (v178 >> 20);
            v173 = 0x10000000000000;
            v175 = v229;
            goto LABEL_225;
          }
        }
      }

      v173 = 1 << v172;
      v174 = 8 * ((v172 & 0xFFFC0) != 0);
      *(a1 + 72 + v174) |= v173;
      v175 = (a1 + 120 + v174);
LABEL_225:
      *v175 |= v173;
      v169 += 4;
    }

    while (v170 != v169);
  }

  v179 = v150[6];
  v180 = *(v228 + v179);
  v181 = (v228 + v179 + v180);
  v182 = *v181;
  if (v182)
  {
    v183 = 0;
    v184 = 4 * v182;
    v185 = v228 + v179 + v180;
    do
    {
      v189 = v181[v183 / 4 + 1];
      v190 = &v185[v183 + v189 - *(&v181[v183 / 4 + 1] + v189)];
      if (*(v190 + 2) < 7u)
      {
        LODWORD(v186) = 0;
      }

      else
      {
        v186 = *(v190 + 5);
        if (v186)
        {
          v191 = *&v185[v183 + 4 + v189 + v186];
          LODWORD(v186) = v191;
          if ((v191 & 0x80000000) != 0)
          {
            v187 = 1 << (v191 >> 20);
            v188 = (v191 & 0x7C000000) != 0;
            goto LABEL_234;
          }
        }
      }

      v187 = 1 << v186;
      v188 = (v186 & 0xFFFC0) != 0;
      *(v9 + 8 * v188) |= v187;
LABEL_234:
      v229->i64[v188] |= v187;
      v183 += 4;
    }

    while (v184 != v183);
  }

  v192 = *(v143 + 160);
  if (*&v192 != 0)
  {
    *(a1 + 56) = vorrq_s8(*(a1 + 56), v192);
    *(a1 + 104) = vorrq_s8(*(a1 + 104), v192);
  }

  v193 = *(v143 + 192);
  if (*&v193 != 0)
  {
    *(a1 + 72) = vorrq_s8(*(a1 + 72), v193);
    *(a1 + 120) = vorrq_s8(*(a1 + 120), v193);
  }

  v194 = v150[12];
  v195 = *(v228 + v194);
  v196 = (v228 + v194 + v195);
  v197 = *v196;
  if (!v197)
  {
LABEL_280:
    if ((*(a1 + 1311) & 1) == 0)
    {
      *(a1 + 200) = *(v143 + 424);
      *(a1 + 248) = *(v143 + 440);
      v229[14] = vorrq_s8(*(v143 + 440), *(v143 + 424));
    }

    operator new();
  }

  v198 = 0;
  v199 = a1 + 136;
  v200 = 4 * v197;
  v201 = v228 + v194 + v195;
  while (1)
  {
    v204 = *&v201[v198 + 4];
    v205 = v204 - *(&v196[v198 / 4 + 1] + v204);
    v206 = &v201[v198 + v205];
    v207 = *(v206 + 2);
    if (v207 < 7)
    {
      if (v207 < 5)
      {
        goto LABEL_247;
      }
    }

    else
    {
      v208 = *(v206 + 5);
      if (v208)
      {
        v209 = *&v201[v198 + 4 + v204 + v208];
        goto LABEL_253;
      }
    }

    v209 = 0;
LABEL_253:
    v210 = *&v201[v198 + 8 + v205];
    if (v210)
    {
      v211 = v201[v198 + 4 + v204 + v210];
      v203 = (a1 + 184);
      v202 = 1;
      switch(v201[v198 + 4 + v204 + v210])
      {
        case 11:
        case 12:
        case 13:
        case 16:
        case 17:
        case 62:
        case 93:
        case 97:
        case 98:
        case 113:
          if ((v209 & 0x80000000) != 0)
          {
            v202 = 1 << (v209 >> 20);
            v203 = &v229->i64[(v209 & 0x7C000000) != 0];
          }

          else
          {
            if ((v209 & 0x7FF00000) == 0x400000)
            {
              break;
            }

            if (v211 == 113 || v211 == 98)
            {
              v213 = 4;
            }

            else
            {
              v213 = 2;
            }

            v214 = (v209 & 0xFFFC0) != 0;
            v202 = 1 << v209;
            *(v199 + v213 * 8 + v214 * 8) |= 1 << v209;
            v203 = &v229->i64[v214 + v213];
          }

LABEL_246:
          *v203 |= v202;
          break;
        case 24:
          v203 = (a1 + 184);
          v202 = 4;
          goto LABEL_246;
        case 25:
          v203 = (a1 + 184);
          v202 = 8;
          goto LABEL_246;
        case 27:
          goto LABEL_246;
        case 28:
          v203 = (a1 + 184);
          v202 = 2;
          goto LABEL_246;
        case 59:
          v203 = (a1 + 184);
          v202 = 16;
          goto LABEL_246;
        case 60:
        case 61:
          v203 = (a1 + 184);
          v202 = 32;
          goto LABEL_246;
        case 75:
          v203 = (a1 + 184);
          v202 = 64;
          goto LABEL_246;
        case 84:
        case 85:
          v203 = (a1 + 184);
          v202 = 128;
          goto LABEL_246;
        case 108:
          v203 = (a1 + 184);
          v202 = 256;
          goto LABEL_246;
        case 109:
        case 110:
          v202 = 1 << v209;
          v215 = (v209 & 0xFFFC0) != 0;
          *(v199 + v215 * 8) |= 1 << v209;
          goto LABEL_271;
        case 111:
          v203 = (a1 + 184);
          v202 = 512;
          goto LABEL_246;
        case 112:
          v203 = (a1 + 184);
          v202 = 1024;
          goto LABEL_246;
        case 118:
          v203 = (a1 + 184);
          v202 = 2048;
          goto LABEL_246;
        case 119:
          v203 = (a1 + 184);
          v202 = 4096;
          goto LABEL_246;
        case 120:
          v203 = (a1 + 184);
          v202 = 0x2000;
          goto LABEL_246;
        case -117:
          v202 = 1 << v209;
          v215 = (v209 & 0xFFFC0) != 0;
          *(v9 + v215 * 8) |= 1 << v209;
LABEL_271:
          v203 = &v229->i64[v215];
          goto LABEL_246;
        default:
          break;
      }
    }

LABEL_247:
    v198 += 4;
    if (v200 == v198)
    {
      goto LABEL_280;
    }
  }
}

void sub_29CE5A350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a29 + 728);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a29 + 696));
  v46 = *a22;
  if (*a22)
  {
    *(a27 + 760) = v46;
    operator delete(v46);
  }

  if (*(a27 + 519) < 0)
  {
    operator delete(*(a29 + 408));
  }

  if (*(a27 + 487) < 0)
  {
    operator delete(*a14);
  }

  if (*(a27 + 463) < 0)
  {
    operator delete(*(a29 + 352));
  }

  if (*(a27 + 439) < 0)
  {
    operator delete(*a15);
  }

  v47 = *(a29 + 288);
  if (v47)
  {
    *(a27 + 384) = v47;
    operator delete(v47);
    if (a43 < 0)
    {
LABEL_15:
      operator delete(a38);
      _Unwind_Resume(a1);
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_15;
  }

  _Unwind_Resume(a1);
}

void AGX::IntersectionProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::IntersectionProgramVariantESLState(_OWORD *a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5, int a6)
{
  v251 = *MEMORY[0x29EDCA608];
  v243 = *a5;
  v244 = *(a5 + 2);
  *(&__str.__r_.__value_.__s + 23) = 0;
  *(a1 + 88) = 0u;
  v8 = a1 + 88;
  *(a1 + 40) = 0u;
  v9 = a1 + 40;
  __str.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 47) = 0;
  a1[24] = 0u;
  *(a1 + 62) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 60) = 0;
  v226 = a1 + 29;
  v227 = a1 + 26;
  a1[29] = 0u;
  a1[28] = 0u;
  a1[27] = 0u;
  a1[26] = 0u;
  __src = a1 + 33;
  a1[33] = 0u;
  a1[34] = 0u;
  a1[35] = 0u;
  a1[36] = 0u;
  *(a1 + 74) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v243;
  *(a1 + 85) = v244;
  v10 = a1 + 187;
  *(a1 + 98) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  a1[45] = 0u;
  a1[44] = 0u;
  a1[43] = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 101) = a2;
  *(a1 + 204) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 229) = 107;
  a1[61] = 0u;
  a1[60] = 0u;
  a1[59] = 0u;
  *(a1 + 248) = 0;
  *(a1 + 244) = 3;
  *(a1 + 243) = 166;
  a1[64] = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 128) = 0x3000000A5;
  a1[65] = 0u;
  *(a1 + 115) = 0x300000003;
  *(a1 + 117) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 152) = 0x600000000;
  *(a1 + 158) = 0;
  a1[78] = 0u;
  a1[80] = 0u;
  *(a1 + 159) = a1 + 80;
  *(a1 + 324) = -1;
  *(a1 + 326) = 0;
  *(a1 + 1308) = a6;
  *(a1 + 1309) = 0;
  *(a1 + 328) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v11 = *(a4 + 465);
  bzero(a1 + 40, 0x30uLL);
  bzero(v8, 0x30uLL);
  v12 = 0;
  v8[656] = 0;
  v238 = v8;
  v8[1223] = 0;
  if (a3[28])
  {
    v13 = a3[29] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = 28;
  if (v13)
  {
    v14 = 98;
    v15 = a3 + 98;
  }

  else
  {
    v15 = a3 + 28;
  }

  v229 = a3;
  v16 = a3[v14];
  if (v16 && v15[1])
  {
    v12 = (v16 + *v16);
  }

  v17 = (v12 - *v12);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v237 = (v12 + v18 + *(v12 + v18));
  }

  else
  {
    v237 = 0;
  }

  v19 = 0;
  v20 = a3 + 58;
  if (v229[58])
  {
    v21 = v229[59] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 58;
  if (v21)
  {
    v22 = 128;
    v23 = v229 + 128;
  }

  else
  {
    v23 = v229 + 58;
  }

  v24 = v229[v22];
  if (v24 && v23[1])
  {
    v19 = (v24 + *v24);
  }

  v25 = (v19 - *v19);
  if (*v25 < 5u)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25[2];
    if (v26)
    {
      v26 = (v26 + v19 + *(v26 + v19));
    }
  }

  v234 = v26;
  v27 = (v26 - *v26);
  if (*v27 < 0x11u)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = v27[8];
    if (v28)
    {
      LODWORD(v28) = *(v26 + v28);
    }
  }

  *v10 = v28;
  v29 = (v26 - *v26);
  if (*v29 <= 6u)
  {
    LODWORD(v30) = 0;
    v31 = v229;
  }

  else
  {
    v30 = v29[3];
    v31 = v229;
    if (v30)
    {
      LODWORD(v30) = *(v26 + v30);
    }
  }

  *(a1 + 102) = v30;
  v32 = (v26 - *v26);
  if (*v32 >= 0x13u && (v33 = v32[9]) != 0)
  {
    v34 = v26 + v33 + *(v26 + v33) + 4;
  }

  else
  {
    v34 = "";
  }

  v233 = (v8 + 664);
  MEMORY[0x29ED51E00](v227, v34);
  v35 = (v234 - *v234);
  if (*v35 >= 0x51u && (v36 = v35[40]) != 0)
  {
    v37 = v234 + v36 + *(v234 + v36) + 4;
  }

  else
  {
    v37 = "";
  }

  MEMORY[0x29ED51E00](v8 + 408, v37);
  std::string::operator=((v8 + 352), &__str);
  v38 = (v234 - *v234);
  if (*v38 >= 9u && (v39 = v38[4]) != 0)
  {
    v40 = v234 + v39 + *(v234 + v39) + 4;
  }

  else
  {
    v40 = "";
  }

  MEMORY[0x29ED51E00](v226, v40);
  v41 = (v234 - *v234);
  if (*v41 < 0x29u)
  {
    LOBYTE(v42) = 0;
  }

  else
  {
    v42 = v41[20];
    if (v42)
    {
      LOBYTE(v42) = *(v234 + v42) != 0;
    }
  }

  *(a1 + 488) = v42;
  v43 = v31[58];
  if (v43)
  {
    v44 = v31[59] == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = 58;
  if (v44)
  {
    v45 = 128;
    v46 = v229 + 128;
  }

  else
  {
    v46 = v20;
  }

  v47 = v31[v45];
  v48 = v46[1];
  if (v47)
  {
    v49 = v48 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  if (v49)
  {
    v51 = 0;
  }

  else
  {
    v51 = (v47 + *v47);
  }

  v52 = (v51 - *v51);
  if (*v52 >= 7u && v52[3] && (!v50 ? (v53 = 0) : (v53 = (v47 + *v47)), (v54 = (v53 - *v53), *v54 < 7u) || (v55 = v54[3]) == 0 ? (v56 = 0) : (v56 = (v53 + v55 + *(v53 + v55))), (v57 = (v56 - *v56), *v57 >= 0xBu) && (v58 = v57[5]) != 0))
  {
    v59 = *(v56 + v58);
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 150) = v59;
  if (v43)
  {
    v60 = v31[59] == 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = 58;
  if (v60)
  {
    v61 = 128;
    v62 = v229 + 128;
  }

  else
  {
    v62 = v20;
  }

  v63 = v31[v61];
  v64 = v62[1];
  if (v63)
  {
    v65 = v64 == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = !v65;
  if (v65)
  {
    v67 = 0;
  }

  else
  {
    v67 = (v63 + *v63);
  }

  v68 = (v67 - *v67);
  if (*v68 >= 7u && v68[3] && (!v66 ? (v69 = 0) : (v69 = (v63 + *v63)), (v70 = (v69 - *v69), *v70 < 7u) || (v71 = v70[3]) == 0 ? (v72 = 0) : (v72 = (v69 + v71 + *(v69 + v71))), (v73 = (v72 - *v72), *v73 >= 0xDu) && (v74 = v73[6]) != 0))
  {
    v75 = *(v72 + v74);
  }

  else
  {
    v75 = 0;
  }

  *(a1 + 151) = v75;
  *(a1 + 776) = *(a4 + 465);
  v76 = (v237 - *v237);
  if (*v76 < 0x4Du)
  {
    LODWORD(v77) = 0;
  }

  else
  {
    v77 = v76[38];
    if (v77)
    {
      LODWORD(v77) = *(v237 + v77);
    }
  }

  *(a1 + 100) = v77;
  v78 = (v237 - *v237);
  if (*v78 < 0x53u)
  {
    LODWORD(v79) = 0;
  }

  else
  {
    v79 = v78[41];
    if (v79)
    {
      LODWORD(v79) = *(v237 + v79);
    }
  }

  *(a1 + 101) = v79;
  v80 = (v237 - *v237);
  if (*v80 < 0x43u)
  {
    LODWORD(v81) = 0;
  }

  else
  {
    v81 = v80[33];
    if (v81)
    {
      LODWORD(v81) = *(v237 + v81);
    }
  }

  *(a1 + 152) = v81;
  *(a1 + 153) = 0;
  v82 = (v237 - *v237);
  if (*v82 >= 0x21u && (v83 = v82[16]) != 0)
  {
    v84 = *(v237 + v83);
  }

  else
  {
    v84 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 154) = getAdditionalSpillBufferBytes(void)::extra + v84;
  *(a1 + 155) = *(a1 + 152);
  v85 = (v237 - *v237);
  if (*v85 < 5u)
  {
    LODWORD(v86) = 0;
  }

  else
  {
    v86 = v85[2];
    if (v86)
    {
      LODWORD(v86) = *(v237 + v86);
    }
  }

  *(a1 + 156) = v86;
  v87 = (v237 - *v237);
  if (*v87 < 0x51u)
  {
    LODWORD(v88) = 0;
  }

  else
  {
    v88 = v87[40];
    if (v88)
    {
      LODWORD(v88) = *(v237 + v88);
    }
  }

  *(a1 + 157) = v88;
  v89 = (v237 - *v237);
  if (*v89 < 0x4Fu)
  {
    LODWORD(v90) = 0;
  }

  else
  {
    v90 = v89[39];
    if (v90)
    {
      LODWORD(v90) = *(v237 + v90);
    }
  }

  *(a1 + 158) = v90;
  *(a1 + 776) = *(a4 + 465);
  *(a1 + 65) = 0;
  v91 = v237 - *v237;
  v92 = *(v237 + *(v91 + 15) + *(v237 + *(v91 + 15)));
  v93 = *(v91 + 13);
  if (v93)
  {
    LODWORD(v93) = *(v237 + v93);
  }

  v94 = v93;
  v95 = *(a4 + 152);
  v242 = a4;
  if (*(a4 + 416) == 1)
  {
    v96 = vaddq_s64(*(a4 + 240), *(a4 + 216));
    v97 = (vsubq_s64(vdupq_laneq_s64(v96, 1), v96).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(a4 + 400) + *(a4 + 352) - (*(a4 + 392) + *(a4 + 344))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v97 = 0;
  }

  v98 = (v92 + 31) & 0x1FFFFFFE0;
  if (v93)
  {
    v99 = (v92 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v99 = v92;
  }

  v232 = v99;
  v100 = v99 + v93;
  if (v95)
  {
    v97 = ((v100 + v97 + 31) & 0xFFFFFFFFFFFFFFE0) - v100;
  }

  v235 = v97;
  v101 = v100 + 8 * v95 + v97;
  if (!v101)
  {
    goto LABEL_222;
  }

  v224 = v95;
  v228 = v93;
  if (a6)
  {
    AGX::Heap<true>::allocateImpl(&v247, a2 + 6832, v101, 0);
    v102 = a1;
    v103 = *(a1 + 326) + *v248;
    v104 = *v248;
    *(v8 + 66) = v247;
    *(v8 + 67) = v104;
    v105 = *&v248[9];
    *(v8 + 1081) = *&v248[9];
    v230 = *(a1 + 143) + 0x1000000000;
    __dst = *(a1 + 144);
    *(a1 + 132) = v230;
  }

  else
  {
    v102 = a1;
    AGX::Heap<true>::allocateImpl(&v247, a2 + 6328, v101, a1 + 73);
    v103 = *(a1 + 326) + *v248;
    v106 = *v248;
    *(v8 + 38) = v247;
    *(v8 + 39) = v106;
    v105 = *&v248[9];
    *(v8 + 633) = *&v248[9];
    v230 = *(a1 + 87);
    __dst = *(a1 + 88);
  }

  *(v102 + 326) = v103;
  v107 = v94;
  if (v92)
  {
    v108 = (v237 - *v237);
    if (*v108 < 0x1Fu)
    {
      v110 = v11;
      v109 = 0;
    }

    else
    {
      v109 = v108[15];
      v110 = v11;
      if (v109)
      {
        v109 += v237 + *(v237 + v109);
      }
    }

    memcpy(__dst, (v109 + 4), v92);
    *(a1 + 80) = v230;
    *(a1 + 81) = __dst;
    *(a1 + 82) = v232;
    v11 = v110;
  }

  if (!v228)
  {
    v121 = __src;
    if (v235)
    {
      goto LABEL_204;
    }

    goto LABEL_207;
  }

  if (a6)
  {
    *(a1 + 133) = v230 + v98;
  }

  v111 = (v234 - *v234);
  if (*v111 >= 0xBu && (v112 = v111[5]) != 0)
  {
    v113 = v234 + v112 + *(v234 + v112);
  }

  else
  {
    v113 = 0;
  }

  v114 = *(v237 - *v237 + 28);
  v115 = *(v237 + v114);
  if (!*(v237 + v114 + v115))
  {
    v121 = __src;
    if (!v235)
    {
      goto LABEL_207;
    }

    goto LABEL_204;
  }

  v116 = 0;
  v117 = 0;
  v118 = &__dst[v98];
  v225 = v113 + 4;
  v119 = 8;
  if (v11)
  {
    v119 = 24;
  }

  v223 = v119;
  v120 = v237;
  v121 = __src;
  while (1)
  {
    v122 = v114;
    v123 = v114 + v115;
    v124 = &v120[v116];
    v125 = *(&v120[v116 + 1] + v123);
    v126 = v123 + v125;
    v127 = v124 + v123 + v125;
    v128 = *(v127 + 4);
    v129 = v124 + v126 - v128;
    v130 = *(v129 + 4);
    if (v130 < 5)
    {
      goto LABEL_170;
    }

    v131 = *(v129 + 8);
    if (!v131)
    {
      goto LABEL_170;
    }

    v132 = *(v237 + v122 + v115 + v125 + v116 * 4 + v131 + 4);
    if (v132 == 114)
    {
      if (v130 < 7)
      {
        v136 = 0;
      }

      else
      {
        v135 = v122 + v115 + v125;
        v136 = *(&v237[v116 + 2] + v135 - v128 + 2);
        if (v136)
        {
          v136 = 4 * *(v237 + v135 + v116 * 4 + v136 + 4);
        }
      }

      AGX::SamplerDescriptor::SamplerDescriptor(&v247, &v225[v136 + *&v225[v136]], v105);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v246, *(a1 + 101), &v247);
      v141 = *(v246 + 96);
      std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100]((v238 + 87), &v246);
      v142 = &v237[v116] + v122 + v115 + v125 - *(v127 + 4);
      if (*(v142 + 2) < 9u)
      {
        v143 = 0;
      }

      else
      {
        v143 = *(v142 + 6);
        if (v143)
        {
          v143 = *(v237 + v122 + v115 + v125 + v116 * 4 + v143 + 4);
        }
      }

      *&v118[4 * v143] = v141;
      v144 = *(&v246 + 1);
      if (*(&v246 + 1) && !atomic_fetch_add((*(&v246 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v144->__on_zero_shared)(v144);
        std::__shared_weak_count::__release_weak(v144);
        if ((v250 & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

LABEL_196:
        operator delete(v249);
        goto LABEL_169;
      }

      if (v250 < 0)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v132 != 18)
      {
        goto LABEL_170;
      }

      if (v130 < 9)
      {
        v134 = 0;
      }

      else
      {
        v133 = v122 + v115 + v125;
        v134 = *(&v237[v116 + 3] + v133 - v128);
        if (v134)
        {
          v134 = *(v237 + v133 + v116 * 4 + v134 + 4);
        }
      }

      v137 = &v118[8 * v134];
      bzero(v137, v223);
      v139 = &v237[v116] + v122 + v115 + v125 - *(v127 + 4);
      if (*(v139 + 2) < 7u)
      {
        v140 = 0;
      }

      else
      {
        v140 = *(v139 + 5);
        if (v140)
        {
          v140 = 4 * *(v237 + v122 + v115 + v125 + v116 * 4 + v140 + 4);
        }
      }

      AGX::SamplerDescriptor::SamplerDescriptor(&v247, &v225[v140 + *&v225[v140]], v138);
      AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v246, &v247);
      *v137 = v246;
      if (v250 < 0)
      {
        operator delete(v249);
      }

      *&v247 = v137;
      std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v233, &v247);
    }

LABEL_169:
    v121 = __src;
LABEL_170:
    ++v117;
    v120 = v237;
    v114 = *(v237 - *v237 + 28);
    v115 = *(v237 + v114);
    ++v116;
    if (v117 >= *(v237 + v114 + v115))
    {
      v107 = v228;
      if (!v235)
      {
        goto LABEL_207;
      }

LABEL_204:
      *(a1 + 65) = v100 + v230;
      v145 = &__dst[v232 + v107];
      v146 = v242;
      v147 = *(v242 + 216);
      v148 = *(v242 + 224) - v147;
      *v145 = v148 >> 2;
      *(v145 + 1) = (*(v242 + 248) - *(v242 + 240)) >> 2;
      *(v145 + 2) = (*(v242 + 352) - *(v242 + 344)) >> 1;
      *(v145 + 3) = (*(v242 + 400) - *(v242 + 392)) >> 1;
      memcpy(v145 + 8, v147, v148);
      v149 = &v145[*(v146 + 224) - *(v146 + 216) + 8];
      memcpy(v149, *(v146 + 240), *(v146 + 248) - *(v146 + 240));
      v150 = &v149[*(v146 + 248) - *(v146 + 240)];
      memcpy(v150, *(v146 + 344), *(v146 + 352) - *(v146 + 344));
      memcpy(&v150[*(v146 + 352) - *(v146 + 344)], *(v146 + 392), *(v146 + 400) - *(v146 + 392));
      if (!*(v145 + 2))
      {
        *(v145 + 2) = *v145;
      }

      v107 = v228;
      if (!*(v145 + 3))
      {
        *(v145 + 3) = *(v145 + 1);
        if (v224)
        {
          goto LABEL_208;
        }

        goto LABEL_222;
      }

LABEL_207:
      if (v224)
      {
LABEL_208:
        *v121 = &__dst[v232 + v107 + v235];
        v151 = (v234 - *v234);
        if (*v151 >= 0xBu && (v152 = v151[5]) != 0)
        {
          v153 = (v234 + v152 + *(v234 + v152));
          if (!a6)
          {
LABEL_214:
            if (v153)
            {
              v154 = v242;
              if (*v153)
              {
                v155 = 0;
                v156 = 1;
                do
                {
                  v157 = (*v121 + 8 * (((v156 * 4) - 4) & 0xFFFFFFFC));
                  AGX::SamplerDescriptor::SamplerDescriptor(&v247, (&v153[v156] + v153[v156]), v105);
                  AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v246, &v247);
                  *v157 = v246;
                  if (v250 < 0)
                  {
                    operator delete(v249);
                  }

                  *&v247 = v157;
                  std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v233, &v247);
                  ++v155;
                  ++v156;
                }

                while (v155 < *v153);
              }

LABEL_223:
              AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(a2, v233);
              v158 = (v237 - *v237);
              v159 = v158[8];
              v160 = *(v237 + v159);
              v161 = (v237 + v159 + v160);
              v162 = *v161;
              if (v162)
              {
                v163 = 0;
                v164 = 4 * v162;
                v165 = v237 + v159 + v160;
                do
                {
                  v170 = v161[v163 / 4 + 1];
                  v171 = &v165[v163 + v170 - *(&v161[v163 / 4 + 1] + v170)];
                  if (*(v171 + 2) < 7u)
                  {
                    LODWORD(v166) = 0;
                  }

                  else
                  {
                    v166 = *(v171 + 5);
                    if (v166)
                    {
                      v172 = *&v165[v163 + 4 + v170 + v166];
                      LODWORD(v166) = v172;
                      if ((v172 & 0x80000000) != 0)
                      {
                        v238[(v172 & 0x7C000000) != 0] |= 1 << (v172 >> 20);
                        v167 = 0x20000000001;
                        v169 = v238;
                        goto LABEL_227;
                      }
                    }
                  }

                  v167 = 1 << v166;
                  v168 = 8 * ((v166 & 0xFFFC0) != 0);
                  *(a1 + v168 + 56) |= v167;
                  v169 = (a1 + v168 + 104);
LABEL_227:
                  *v169 |= v167;
                  v163 += 4;
                }

                while (v164 != v163);
              }

              v173 = v158[10];
              v174 = *(v237 + v173);
              v175 = (v237 + v173 + v174);
              v176 = *v175;
              if (v176)
              {
                v177 = 0;
                v178 = 4 * v176;
                v179 = v237 + v173 + v174;
                do
                {
                  v184 = v175[v177 / 4 + 1];
                  v185 = &v179[v177 + v184 - *(&v175[v177 / 4 + 1] + v184)];
                  if (*(v185 + 2) < 7u)
                  {
                    LODWORD(v180) = 0;
                  }

                  else
                  {
                    v180 = *(v185 + 5);
                    if (v180)
                    {
                      v186 = *&v179[v177 + 4 + v184 + v180];
                      LODWORD(v180) = v186;
                      if ((v186 & 0x80000000) != 0)
                      {
                        v238[(v186 & 0x7C000000) != 0] |= 1 << (v186 >> 20);
                        v181 = 0x20000000000;
                        v183 = v238;
                        goto LABEL_236;
                      }
                    }
                  }

                  v181 = 1 << v180;
                  v182 = 8 * ((v180 & 0xFFFC0) != 0);
                  *(a1 + v182 + 72) |= v181;
                  v183 = (a1 + v182 + 120);
LABEL_236:
                  *v183 |= v181;
                  v177 += 4;
                }

                while (v178 != v177);
              }

              v187 = v158[6];
              v188 = *(v237 + v187);
              v189 = (v237 + v187 + v188);
              v190 = *v189;
              if (v190)
              {
                v191 = 0;
                v192 = 4 * v190;
                v193 = v237 + v187 + v188;
                do
                {
                  v197 = v189[v191 / 4 + 1];
                  v198 = &v193[v191 + v197 - *(&v189[v191 / 4 + 1] + v197)];
                  if (*(v198 + 2) < 7u)
                  {
                    LODWORD(v194) = 0;
                  }

                  else
                  {
                    v194 = *(v198 + 5);
                    if (v194)
                    {
                      v194 = *&v193[v191 + 4 + v197 + v194];
                      if ((v194 & 0x80000000) != 0)
                      {
                        v195 = 1 << (v194 >> 20);
                        v196 = (v194 & 0x7C000000) != 0;
                        goto LABEL_245;
                      }

                      LODWORD(v194) = v194 & 0xFFFFF;
                      if (v194 == 42)
                      {
                        goto LABEL_246;
                      }
                    }
                  }

                  v195 = 1 << v194;
                  v196 = v194 > 0x3F;
                  *&v9[8 * v196] |= v195;
LABEL_245:
                  v238[v196] |= v195;
LABEL_246:
                  v191 += 4;
                }

                while (v192 != v191);
              }

              v199 = *(v154 + 160);
              if (*&v199 != 0)
              {
                *(a1 + 56) = vorrq_s8(*(a1 + 56), v199);
                *(a1 + 104) = vorrq_s8(*(a1 + 104), v199);
              }

              v200 = *(v154 + 192);
              if (*&v200 != 0)
              {
                *(a1 + 72) = vorrq_s8(*(a1 + 72), v200);
                *(a1 + 120) = vorrq_s8(*(a1 + 120), v200);
              }

              v201 = v158[12];
              v202 = *(v237 + v201);
              v203 = (v237 + v201 + v202);
              v204 = *v203;
              if (!v204)
              {
LABEL_294:
                if ((*(a1 + 1311) & 1) == 0)
                {
                  *(a1 + 200) = *(v154 + 424);
                  *(a1 + 248) = *(v154 + 440);
                  *(a1 + 312) = vorrq_s8(*(v154 + 440), *(v154 + 424));
                }

                operator new();
              }

              v205 = 0;
              v206 = a1 + 136;
              v207 = 4 * v204;
              v208 = v237 + v201 + v202;
              while (2)
              {
                v211 = *&v208[v205 + 4];
                v212 = v211 - *(&v203[v205 / 4 + 1] + v211);
                v213 = &v208[v205 + v212];
                v214 = *(v213 + 2);
                if (v214 < 7)
                {
                  if (v214 >= 5)
                  {
                    goto LABEL_266;
                  }
                }

                else
                {
                  v215 = *(v213 + 5);
                  if (v215)
                  {
                    v216 = *&v208[v205 + 4 + v211 + v215];
                    goto LABEL_267;
                  }

LABEL_266:
                  v216 = 0;
LABEL_267:
                  v217 = *&v208[v205 + 8 + v212];
                  if (v217)
                  {
                    v218 = v208[v205 + 4 + v211 + v217];
                    v210 = a1 + 23;
                    v209 = 1;
                    switch(v208[v205 + 4 + v211 + v217])
                    {
                      case 11:
                      case 12:
                      case 13:
                      case 16:
                      case 17:
                      case 62:
                      case 93:
                      case 97:
                      case 98:
                      case 113:
                        if ((v216 & 0x80000000) != 0)
                        {
                          v209 = 1 << (v216 >> 20);
                          v210 = &v238[(v216 & 0x7C000000) != 0];
                          goto LABEL_260;
                        }

                        if ((v216 & 0x7FF00000) != 0x400000)
                        {
                          if (v218 == 113 || v218 == 98)
                          {
                            v220 = 4;
                          }

                          else
                          {
                            v220 = 2;
                          }

                          v221 = (v216 & 0xFFFC0) != 0;
                          v209 = 1 << v216;
                          *&v206[v220 * 8 + v221 * 8] |= 1 << v216;
                          v210 = &v238[v221 + v220];
LABEL_260:
                          *v210 |= v209;
                        }

                        break;
                      case 24:
                        v210 = a1 + 23;
                        v209 = 4;
                        goto LABEL_260;
                      case 25:
                        v210 = a1 + 23;
                        v209 = 8;
                        goto LABEL_260;
                      case 27:
                        goto LABEL_260;
                      case 28:
                        v210 = a1 + 23;
                        v209 = 2;
                        goto LABEL_260;
                      case 59:
                        v210 = a1 + 23;
                        v209 = 16;
                        goto LABEL_260;
                      case 60:
                      case 61:
                        v210 = a1 + 23;
                        v209 = 32;
                        goto LABEL_260;
                      case 75:
                        v210 = a1 + 23;
                        v209 = 64;
                        goto LABEL_260;
                      case 84:
                      case 85:
                        v210 = a1 + 23;
                        v209 = 128;
                        goto LABEL_260;
                      case 108:
                        v210 = a1 + 23;
                        v209 = 256;
                        goto LABEL_260;
                      case 109:
                      case 110:
                        v209 = 1 << v216;
                        v222 = (v216 & 0xFFFC0) != 0;
                        *&v206[v222 * 8] |= 1 << v216;
                        goto LABEL_285;
                      case 111:
                        v210 = a1 + 23;
                        v209 = 512;
                        goto LABEL_260;
                      case 112:
                        v210 = a1 + 23;
                        v209 = 1024;
                        goto LABEL_260;
                      case 118:
                        v210 = a1 + 23;
                        v209 = 2048;
                        goto LABEL_260;
                      case 119:
                        v210 = a1 + 23;
                        v209 = 4096;
                        goto LABEL_260;
                      case 120:
                        v210 = a1 + 23;
                        v209 = 0x2000;
                        goto LABEL_260;
                      case -117:
                        v209 = 1 << v216;
                        v222 = (v216 & 0xFFFC0) != 0;
                        *&v9[v222 * 8] |= 1 << v216;
LABEL_285:
                        v210 = &v238[v222];
                        goto LABEL_260;
                      default:
                        break;
                    }
                  }
                }

                v205 += 4;
                if (v207 == v205)
                {
                  goto LABEL_294;
                }

                continue;
              }
            }

            goto LABEL_222;
          }
        }

        else
        {
          v153 = 0;
          if (!a6)
          {
            goto LABEL_214;
          }
        }

        *(a1 + 134) = v100 + v235 + v230;
        goto LABEL_214;
      }

LABEL_222:
      v154 = v242;
      goto LABEL_223;
    }
  }
}

void sub_29CE5D8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a30 + 728);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a30 + 696));
  v46 = *a25;
  if (*a25)
  {
    *(a28 + 760) = v46;
    operator delete(v46);
  }

  if (*(a28 + 519) < 0)
  {
    operator delete(*(a30 + 408));
  }

  if (*(a28 + 487) < 0)
  {
    operator delete(*a17);
  }

  if (*(a28 + 463) < 0)
  {
    operator delete(*(a30 + 352));
  }

  if (*(a28 + 439) < 0)
  {
    operator delete(*a18);
  }

  v47 = *(a30 + 288);
  if (v47)
  {
    *(a28 + 384) = v47;
    operator delete(v47);
    if (a43 < 0)
    {
LABEL_15:
      operator delete(a38);
      _Unwind_Resume(a1);
    }
  }

  else if (a43 < 0)
  {
    goto LABEL_15;
  }

  _Unwind_Resume(a1);
}

_BYTE *AGX::RenderPipelineESL<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(uint64_t *a1, uint64_t a2)
{
  v127 = *MEMORY[0x29EDCA608];
  v4 = a1[463];
  if (v4)
  {
    v125[0] = *(v4 + 3264);
    v5 = *(a2 + 24);
    if (!v5)
    {
      goto LABEL_256;
    }

    (*(*v5 + 48))(v5, v125);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v92 = v91;
      (*(*v6 + 24))(v6, v91);
    }

    else
    {
      v92 = (*(*v6 + 16))(v6);
    }
  }

  else
  {
    v92 = 0;
  }

  if (!a1[1])
  {
LABEL_52:
    if (!*a1)
    {
      goto LABEL_87;
    }

    goto LABEL_53;
  }

  v7 = v92;
  if (v92)
  {
    if (v92 == v91)
    {
      v126 = v125;
      (*(*v92 + 24))();
      goto LABEL_15;
    }

    v7 = (*(*v92 + 16))();
  }

  v126 = v7;
LABEL_15:
  v8 = a1[1];
  v9 = v8 + 2928;
  v10 = *(v8 + 2728);
  do
  {
    v11 = __clz(__rbit32(v10));
    v123[0] = *(v9 + 8 * v11);
    if (!v126)
    {
      goto LABEL_256;
    }

    (*(*v126 + 48))(v126, v123);
    v10 &= ~(1 << v11);
  }

  while (v10);
  if (v126 == v125)
  {
    (*(*v126 + 32))(v126);
  }

  else if (v126)
  {
    (*(*v126 + 40))(v126);
  }

  v123[0] = *(a1[1] + 4152);
  if (!v92)
  {
    goto LABEL_256;
  }

  (*(*v92 + 48))(v92, v123);
  v12 = a1[324];
  for (i = a1[325]; v12 != i; v12 += 2)
  {
    v14 = *v12;
    v15 = v92;
    if (v92)
    {
      if (v92 == v91)
      {
        v124 = v123;
        (*(*v92 + 24))();
        goto LABEL_32;
      }

      v15 = (*(*v92 + 16))();
    }

    v124 = v15;
LABEL_32:
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v14, v123);
    if (v124 == v123)
    {
      (*(*v124 + 32))(v124);
    }

    else if (v124)
    {
      (*(*v124 + 40))(v124);
    }
  }

  v16 = a1[1];
  v17 = v92;
  if (!v92)
  {
    goto LABEL_38;
  }

  if (v92 != v91)
  {
    v17 = (*(*v92 + 16))();
LABEL_38:
    v122 = v17;
    goto LABEL_40;
  }

  v122 = v121;
  (*(*v92 + 24))();
LABEL_40:
  v18 = v16[405];
  if (v18)
  {
    v119[0] = *(v18 + 296);
    if (!v122)
    {
      goto LABEL_256;
    }

    (*(*v122 + 48))(v122, v119);
  }

  v19 = v16[437];
  if (v19)
  {
    v119[0] = *(v19 + 296);
    if (!v122)
    {
      goto LABEL_256;
    }

    (*(*v122 + 48))(v122, v119);
  }

  v20 = v16[445];
  if (v20)
  {
    v119[0] = *(v20 + 296);
    if (!v122)
    {
      goto LABEL_256;
    }

    (*(*v122 + 48))(v122, v119);
  }

  if (v122 != v121)
  {
    if (v122)
    {
      (*(*v122 + 40))(v122);
    }

    goto LABEL_52;
  }

  (*(*v122 + 32))(v122);
  if (!*a1)
  {
    goto LABEL_87;
  }

LABEL_53:
  v21 = v92;
  if (v92)
  {
    if (v92 == v91)
    {
      v120 = v119;
      (*(*v92 + 24))();
      goto LABEL_60;
    }

    v21 = (*(*v92 + 16))();
  }

  v120 = v21;
LABEL_60:
  v22 = *a1 + 2928;
  v23 = *(*a1 + 2728);
  do
  {
    v24 = __clz(__rbit32(v23));
    v117[0] = *(v22 + 8 * v24);
    if (!v120)
    {
      goto LABEL_256;
    }

    (*(*v120 + 48))(v120, v117);
    v23 &= ~(1 << v24);
  }

  while (v23);
  if (v120 == v119)
  {
    (*(*v120 + 32))(v120);
  }

  else if (v120)
  {
    (*(*v120 + 40))(v120);
  }

  v25 = a1[327];
  for (j = a1[328]; v25 != j; v25 += 2)
  {
    v27 = *v25;
    v28 = v92;
    if (v92)
    {
      if (v92 == v91)
      {
        v118 = v117;
        (*(*v92 + 24))();
        goto LABEL_76;
      }

      v28 = (*(*v92 + 16))();
    }

    v118 = v28;
LABEL_76:
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v27, v117);
    if (v118 == v117)
    {
      (*(*v118 + 32))(v118);
    }

    else if (v118)
    {
      (*(*v118 + 40))(v118);
    }
  }

  v29 = *a1;
  v30 = v92;
  if (!v92)
  {
    goto LABEL_82;
  }

  if (v92 != v91)
  {
    v30 = (*(*v92 + 16))();
LABEL_82:
    v116 = v30;
    goto LABEL_84;
  }

  v116 = v115;
  (*(*v92 + 24))();
LABEL_84:
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::enumerateExecuteIndirectResources((v29 + 2392), v115);
  if (v116 != v115)
  {
    if (v116)
    {
      (*(*v116 + 40))();
    }

LABEL_87:
    if (!a1[2])
    {
      goto LABEL_122;
    }

    goto LABEL_88;
  }

  (*(*v116 + 32))(v116);
  if (!a1[2])
  {
    goto LABEL_122;
  }

LABEL_88:
  v31 = v92;
  if (v92)
  {
    if (v92 == v91)
    {
      v114 = v113;
      (*(*v92 + 24))();
      goto LABEL_95;
    }

    v31 = (*(*v92 + 16))();
  }

  v114 = v31;
LABEL_95:
  v32 = a1[2];
  v33 = v32 + 2928;
  v34 = *(v32 + 2728);
  do
  {
    v35 = __clz(__rbit32(v34));
    v111[0] = *(v33 + 8 * v35);
    if (!v114)
    {
      goto LABEL_256;
    }

    (*(*v114 + 48))(v114, v111);
    v34 &= ~(1 << v35);
  }

  while (v34);
  if (v114 == v113)
  {
    (*(*v114 + 32))(v114);
  }

  else if (v114)
  {
    (*(*v114 + 40))();
  }

  v36 = a1[330];
  for (k = a1[331]; v36 != k; v36 += 2)
  {
    v38 = *v36;
    v39 = v92;
    if (v92)
    {
      if (v92 == v91)
      {
        v112 = v111;
        (*(*v92 + 24))();
        goto LABEL_111;
      }

      v39 = (*(*v92 + 16))();
    }

    v112 = v39;
LABEL_111:
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v38, v111);
    if (v112 == v111)
    {
      (*(*v112 + 32))(v112);
    }

    else if (v112)
    {
      (*(*v112 + 40))();
    }
  }

  v40 = a1[2];
  v41 = v92;
  if (!v92)
  {
    goto LABEL_117;
  }

  if (v92 != v91)
  {
    v41 = (*(*v92 + 16))();
LABEL_117:
    v110 = v41;
    goto LABEL_119;
  }

  v110 = v109;
  (*(*v92 + 24))();
LABEL_119:
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::enumerateExecuteIndirectResources((v40 + 2392), v109);
  if (v110 != v109)
  {
    if (v110)
    {
      (*(*v110 + 40))();
    }

LABEL_122:
    if (!a1[3])
    {
      goto LABEL_166;
    }

    goto LABEL_123;
  }

  (*(*v110 + 32))(v110);
  if (!a1[3])
  {
    goto LABEL_166;
  }

LABEL_123:
  v42 = v92;
  if (v92)
  {
    if (v92 == v91)
    {
      v108 = v107;
      (*(*v92 + 24))();
      goto LABEL_130;
    }

    v42 = (*(*v92 + 16))();
  }

  v108 = v42;
LABEL_130:
  v43 = a1[3];
  v44 = v43 + 2928;
  v45 = *(v43 + 2728);
  do
  {
    v46 = __clz(__rbit32(v45));
    v105[0] = *(v44 + 8 * v46);
    if (!v108)
    {
      goto LABEL_256;
    }

    (*(*v108 + 48))(v108, v105);
    v45 &= ~(1 << v46);
  }

  while (v45);
  if (v108 == v107)
  {
    (*(*v108 + 32))(v108);
  }

  else if (v108)
  {
    (*(*v108 + 40))();
  }

  v47 = a1[333];
  for (m = a1[334]; v47 != m; v47 += 2)
  {
    v49 = *v47;
    v50 = v92;
    if (v92)
    {
      if (v92 == v91)
      {
        v106 = v105;
        (*(*v92 + 24))();
        goto LABEL_146;
      }

      v50 = (*(*v92 + 16))();
    }

    v106 = v50;
LABEL_146:
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v49, v105);
    if (v106 == v105)
    {
      (*(*v106 + 32))(v106);
    }

    else if (v106)
    {
      (*(*v106 + 40))();
    }
  }

  v51 = a1[3];
  v52 = v92;
  if (!v92)
  {
    goto LABEL_152;
  }

  if (v92 != v91)
  {
    v52 = (*(*v92 + 16))();
LABEL_152:
    v104 = v52;
    goto LABEL_154;
  }

  v104 = v103;
  (*(*v92 + 24))();
LABEL_154:
  v53 = v51[405];
  if (v53)
  {
    v101[0] = *(v53 + 296);
    if (!v104)
    {
      goto LABEL_256;
    }

    (*(*v104 + 48))(v104, v101);
  }

  v54 = v51[437];
  if (v54)
  {
    v101[0] = *(v54 + 296);
    if (!v104)
    {
      goto LABEL_256;
    }

    (*(*v104 + 48))(v104, v101);
  }

  v55 = v51[445];
  if (v55)
  {
    v101[0] = *(v55 + 296);
    if (!v104)
    {
      goto LABEL_256;
    }

    (*(*v104 + 48))(v104, v101);
  }

  if (v104 != v103)
  {
    if (v104)
    {
      (*(*v104 + 40))();
    }

LABEL_166:
    if (a1[4])
    {
      goto LABEL_167;
    }

    goto LABEL_212;
  }

  (*(*v104 + 32))(v104);
  if (a1[4])
  {
LABEL_167:
    v56 = v92;
    if (v92)
    {
      if (v92 == v91)
      {
        v102 = v101;
        (*(*v92 + 24))();
        goto LABEL_174;
      }

      v56 = (*(*v92 + 16))();
    }

    v102 = v56;
LABEL_174:
    v57 = a1[4];
    v58 = v57 + 2928;
    v59 = *(v57 + 2728);
    do
    {
      v60 = __clz(__rbit32(v59));
      v99[0] = *(v58 + 8 * v60);
      if (!v102)
      {
        goto LABEL_256;
      }

      (*(*v102 + 48))(v102, v99);
      v59 &= ~(1 << v60);
    }

    while (v59);
    if (v102 == v101)
    {
      (*(*v102 + 32))(v102);
    }

    else if (v102)
    {
      (*(*v102 + 40))();
    }

    v99[0] = *(a1[4] + 3920);
    if (v92)
    {
      (*(*v92 + 48))(v92, v99);
      v61 = a1[336];
      for (n = a1[337]; v61 != n; v61 += 2)
      {
        v63 = *v61;
        v64 = v92;
        if (v92)
        {
          if (v92 == v91)
          {
            v100 = v99;
            (*(*v92 + 24))();
            goto LABEL_191;
          }

          v64 = (*(*v92 + 16))();
        }

        v100 = v64;
LABEL_191:
        AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v63, v99);
        if (v100 == v99)
        {
          (*(*v100 + 32))(v100);
        }

        else if (v100)
        {
          (*(*v100 + 40))();
        }
      }

      v65 = a1[4];
      v66 = v92;
      if (v92)
      {
        if (v92 == v91)
        {
          v98 = v97;
          (*(*v92 + 24))();
          goto LABEL_199;
        }

        v66 = (*(*v92 + 16))();
      }

      v98 = v66;
LABEL_199:
      v67 = v65[405];
      if (v67)
      {
        v95[0] = *(v67 + 296);
        if (!v98)
        {
          goto LABEL_256;
        }

        (*(*v98 + 48))(v98, v95);
      }

      v68 = v65[437];
      if (v68)
      {
        v95[0] = *(v68 + 296);
        if (!v98)
        {
          goto LABEL_256;
        }

        (*(*v98 + 48))(v98, v95);
      }

      v69 = v65[445];
      if (v69)
      {
        v95[0] = *(v69 + 296);
        if (!v98)
        {
          goto LABEL_256;
        }

        (*(*v98 + 48))(v98, v95);
      }

      if (v98 == v97)
      {
        (*(*v98 + 32))(v98);
      }

      else if (v98)
      {
        (*(*v98 + 40))();
      }

      goto LABEL_212;
    }

LABEL_256:
    result = std::__throw_bad_function_call[abi:nn200100]();
    return (*(*result + 32))(result);
  }

LABEL_212:
  v70 = 0;
  do
  {
    v89 = v70;
    v71 = &a1[3 * v70 + 426];
    v72 = *v71;
    v73 = v71[1];
    while (v72 != v73)
    {
      v75 = **v72;
      v74 = (*v72)[1];
      if (v75 != v74)
      {
LABEL_220:
        v76 = *v75;
        v77 = v92;
        if (!v92)
        {
          goto LABEL_223;
        }

        if (v92 == v91)
        {
          v96 = v95;
          (*(*v92 + 24))();
        }

        else
        {
          v77 = (*(*v92 + 16))();
LABEL_223:
          v96 = v77;
        }

        v78 = v76 + 2904;
        v79 = *(v76 + 2704);
        while (1)
        {
          v80 = __clz(__rbit32(v79));
          v93[0] = *(v78 + 8 * v80);
          if (!v96)
          {
            goto LABEL_256;
          }

          (*(*v96 + 48))(v96, v93);
          v79 &= ~(1 << v80);
          if (!v79)
          {
            if (v96 == v95)
            {
              (*(*v96 + 32))(v96);
              v75 += 43;
              if (v75 == v74)
              {
                break;
              }

              goto LABEL_220;
            }

            if (v96)
            {
              (*(*v96 + 40))();
            }

            v75 += 43;
            if (v75 != v74)
            {
              goto LABEL_220;
            }

            break;
          }
        }
      }

      v72 += 2;
    }

    v70 = v89 + 1;
  }

  while (v89 != 4);
  if (*(a1 + 789))
  {
    v81 = a1[122];
    if (v81)
    {
      v93[0] = *(v81 + 296);
      if (!v92)
      {
        goto LABEL_256;
      }

      (*(*v92 + 48))(v92, v93);
    }

    v82 = a1 + 129;
    v83 = a1 + 451;
    v84 = 5;
    while (1)
    {
      v85 = v92;
      if (!v92)
      {
        goto LABEL_242;
      }

      if (v92 != v91)
      {
        break;
      }

      v94 = v93;
      (*(*v92 + 24))();
LABEL_244:
      AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::enumResources(v82, v93);
      if (v94 == v93)
      {
        (*(*v94 + 32))(v94);
        v86 = *v83;
        if (!*v83)
        {
          goto LABEL_238;
        }
      }

      else
      {
        if (v94)
        {
          (*(*v94 + 40))();
        }

        v86 = *v83;
        if (!*v83)
        {
          goto LABEL_238;
        }
      }

      v87 = *(v86 + 24);
      if (v87)
      {
        v90 = *(v87 + 296);
        if (!v92)
        {
          goto LABEL_256;
        }

        (*(*v92 + 48))(v92, &v90);
      }

LABEL_238:
      ++v83;
      v82 += 39;
      if (!--v84)
      {
        goto LABEL_253;
      }
    }

    v85 = (*(*v92 + 16))();
LABEL_242:
    v94 = v85;
    goto LABEL_244;
  }

LABEL_253:
  result = v92;
  if (v92 == v91)
  {
    return (*(*result + 32))(result);
  }

  if (v92)
  {
    return (*(*v92 + 40))();
  }

  return result;
}

void sub_29CE5F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  std::function<void ()(IOGPUMetalResource const*)>::~function(&a49);
  std::function<void ()(IOGPUMetalResource const*)>::~function(&a13);
  _Unwind_Resume(a1);
}

char *ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::patch(int *a1, void *a2)
{
  v4 = *(a1 + 394);
  v5 = *(a1 + 395);
  if (v4 != v5)
  {
    v6 = a1 + 14;
    v7 = *a1;
    do
    {
      if ((*(v4 + 31) & 0x8000000000000000) != 0)
      {
        if (*(v4 + 2))
        {
LABEL_8:
          v8 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a2, v4 + 1);
          if (v8)
          {
            v6[*v4 + 1] = v6[*v4 + 1] & 0xFFFF80FF | (((v7 + (*(v8 + 10) >> 1)) & 0x7F) << 8);
            v6[*v4 + 130] = v6[*v4 + 130] & 0xFFFF80FF | (((v7 + (*(v8 + 10) >> 1)) & 0x7F) << 8);
            v6[*v4 + 259] = v6[*v4 + 259] & 0xFFFF80FF | (((v7 + (*(v8 + 10) >> 1)) & 0x7F) << 8);
          }
        }
      }

      else if (*(v4 + 31))
      {
        goto LABEL_8;
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  v9 = *(a1 + 397);
  v10 = *(a1 + 398);
  if (v9 != v10)
  {
    v11 = a1 + 401;
    v12 = a1[1];
    do
    {
      if ((*(v9 + 31) & 0x8000000000000000) != 0)
      {
        if (*(v9 + 2))
        {
LABEL_17:
          v13 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a2, v9 + 1);
          if (v13)
          {
            v11[*v9 + 1] = v11[*v9 + 1] & 0xFFFF80FF | (((v12 + (*(v13 + 10) >> 1)) & 0x7F) << 8);
            v11[*v9 + 130] = v11[*v9 + 130] & 0xFFFF80FF | (((v12 + (*(v13 + 10) >> 1)) & 0x7F) << 8);
            v11[*v9 + 259] = v11[*v9 + 259] & 0xFFFF80FF | (((v12 + (*(v13 + 10) >> 1)) & 0x7F) << 8);
          }
        }
      }

      else if (*(v9 + 31))
      {
        goto LABEL_17;
      }

      v9 += 8;
    }

    while (v9 != v10);
  }

  v14 = *(a1 + 403);

  return ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::fillVITBuffer(a1, v14);
}

void sub_29CE5F6F8(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 194);
  _Unwind_Resume(a1);
}

void sub_29CE5F958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  os_unfair_lock_unlock(0x308);
  AGX::HAL300::RayTracingAccelerationStructure::~RayTracingAccelerationStructure(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::RayTracingAccelerationStructure::~RayTracingAccelerationStructure(AGX::HAL300::RayTracingAccelerationStructure *this)
{
  if (*(this + 6))
  {
    if ((*(this + 40) & 1) == 0)
    {
      v1 = *(this + 4);
      os_unfair_lock_lock(v1 + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(this + 4) + 720, *(this + 6), *(this + 6) + *(this + 7) - 1);
      os_unfair_lock_unlock(v1 + 194);
    }
  }
}

void sub_29CE5F9E8(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 194);
  _Unwind_Resume(a1);
}

void sub_29CE5FB6C(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 194);
  _Unwind_Resume(a1);
}

void AGXARayTracingAccelerationStructureSW::~AGXARayTracingAccelerationStructureSW(AGXARayTracingAccelerationStructureSW *this)
{
  if (LODWORD(this->bvh_heap_allocation.buffer_.address.gpu))
  {
    if ((this->bvh_heap_allocation.buffer_.size & 1) == 0)
    {
      cpu = this->bvh_heap_allocation.buffer_.address.cpu;
      os_unfair_lock_lock(cpu + 194);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push((this->bvh_heap_allocation.buffer_.address.cpu + 720), LODWORD(this->bvh_heap_allocation.buffer_.address.gpu), LODWORD(this->bvh_heap_allocation.buffer_.address.gpu) + HIDWORD(this->bvh_heap_allocation.buffer_.address.gpu) - 1);
      os_unfair_lock_unlock(cpu + 194);
    }
  }
}

void sub_29CE5FE74(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 194);
  _Unwind_Resume(a1);
}

uint64_t ProgressBinsSynchronizeBufferAccess(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    if (*(result + 48))
    {
      v8 = std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((result + 96), a2);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
        do
        {
          v10 = *v10;
        }

        while (v10 && v10[2] == a2);
        if (v10 != v8)
        {
          if (a3 == 1)
          {
            do
            {
              v13 = *(v9 + 8);
              v14 = *(v9 + 9);
              *(v6 + 42) = v14;
              (*(a4 + 16))(a4, v13, v14);
              v9 = *v9;
            }

            while (v9 != v10);
          }

          else
          {
            do
            {
              if (v9[3] == 1)
              {
                v15 = *(v9 + 8);
                v16 = *(v9 + 9);
                *(v6 + 42) = v16;
                (*(a4 + 16))(a4, v15, v16);
              }

              v9 = *v9;
            }

            while (v9 != v10);
          }
        }
      }

      operator new();
    }

    result = ProgressBinsSynchronizeBuffer(result, a2);
    if ((result & 0x80000000) == 0)
    {
      v11 = *(v6 + 42);
      v12 = *(a4 + 16);

      return v12(a4, result, v11);
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(uint64_t *result, uint64_t *a2)
{
  v3 = a2 + 2;
  v2 = a2[2];
  if (v2)
  {
    v5 = result;
    v6 = result + 2;
    while (1)
    {
      v9 = v2;
      v10 = (v2 + 16);
      v11 = *(v2 + 16);
      v12 = HIDWORD(v11);
      v13 = 0x9DDFEA08EB382D69 * ((8 * (v11 & 0x1FFFFFFF) + 8) ^ HIDWORD(v11));
      v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
      result = std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_insert_multi_prepare(v5, v14, v10);
      v15 = a2[1];
      v16 = v9[1];
      v17 = vcnt_s8(v15);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        if (v16 >= *&v15)
        {
          v16 %= *&v15;
        }
      }

      else
      {
        v16 &= *&v15 - 1;
      }

      v2 = *v9;
      v18 = *a2;
      v19 = *(*a2 + 8 * v16);
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19 != v9);
      if (v20 != v3)
      {
        v21 = v20[1];
        if (v17.u32[0] > 1uLL)
        {
          if (v21 >= *&v15)
          {
            v21 %= *&v15;
          }
        }

        else
        {
          v21 &= *&v15 - 1;
        }

        v22 = *v9;
        if (v21 == v16)
        {
          goto LABEL_26;
        }
      }

      if (!v2)
      {
        break;
      }

      v23 = *(v2 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v23 >= *&v15)
        {
          v23 %= *&v15;
        }
      }

      else
      {
        v23 &= *&v15 - 1;
      }

      v22 = *v9;
      if (v23 != v16)
      {
        break;
      }

LABEL_27:
      v24 = *(v22 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v24 >= *&v15)
        {
          v24 %= *&v15;
        }
      }

      else
      {
        v24 &= *&v15 - 1;
      }

      if (v24 != v16)
      {
        *(v18 + 8 * v24) = v20;
        v22 = *v9;
      }

LABEL_33:
      *v20 = v22;
      --a2[3];
      *v9 = 0;
      v9[1] = v14;
      v25 = v5[1];
      v26 = vcnt_s8(v25);
      v26.i16[0] = vaddlv_u8(v26);
      if (v26.u32[0] > 1uLL)
      {
        if (v14 >= *&v25)
        {
          v14 %= *&v25;
        }
      }

      else
      {
        v14 &= *&v25 - 1;
      }

      if (result)
      {
        *v9 = *result;
        *result = v9;
        if (!*v9)
        {
          goto LABEL_6;
        }

        v27 = *(*v9 + 8);
        if (v26.u32[0] > 1uLL)
        {
          if (v27 >= *&v25)
          {
            v27 %= *&v25;
          }
        }

        else
        {
          v27 &= *&v25 - 1;
        }

        if (v27 == v14)
        {
          goto LABEL_6;
        }

        v8 = (*v5 + 8 * v27);
      }

      else
      {
        *v9 = v5[2];
        v5[2] = v9;
        v28 = *v5;
        *(*v5 + 8 * v14) = v6;
        if (!*v9)
        {
          goto LABEL_6;
        }

        v7 = *(*v9 + 8);
        if (v26.u32[0] <= 1uLL)
        {
          v7 &= *&v25 - 1;
        }

        else if (v7 >= *&v25)
        {
          v7 %= *&v25;
        }

        v8 = (v28 + 8 * v7);
      }

      *v8 = v9;
LABEL_6:
      ++v5[3];
      if (!v2)
      {
        return result;
      }
    }

    *(v18 + 8 * v16) = 0;
    v22 = *v9;
LABEL_26:
    if (!v22)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v32 = *a1;
        *a1 = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
    v17 = *(*a1 + 8 * (v16 & a2));
    if (v17)
    {
      v18 = 0;
      do
      {
        result = v17;
        v17 = *v17;
        if (!v17)
        {
          break;
        }

        v23 = v17[1];
        if ((v23 & v16) != (v16 & a2))
        {
          break;
        }

        v19 = v23 == a2 && v17[2] == *a3;
        v20 = v19 != (v18 & 1);
        v21 = v18 & v20;
        v18 |= v20;
      }

      while ((v21 & 1) == 0);
      return result;
    }

    return 0;
  }

  v24 = a2;
  if (v6 <= a2)
  {
    v24 = a2 % v6;
  }

  v25 = *(*a1 + 8 * v24);
  if (!v25)
  {
    return 0;
  }

  v26 = 0;
  do
  {
    result = v25;
    v25 = *v25;
    if (!v25)
    {
      break;
    }

    v30 = v25[1];
    v31 = v30;
    if (v30 >= v6)
    {
      v31 = v30 % v6;
    }

    if (v31 != v24)
    {
      break;
    }

    v27 = v30 == a2 && v25[2] == *a3;
    v28 = v27 != (v26 & 1);
    v29 = v26 & v28;
    v26 |= v28;
  }

  while (v29 != 1);
  return result;
}

id **AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(uint64_t a1)
{
  result = *(a1 + 280);
  v3 = *(a1 + 272);
  if (result != v3)
  {
    v4 = 0;
    while (1)
    {
      v156 = v4;
      if (v4 && (*(a1 + 50) & 1) != 0)
      {
        v5 = *(a1 + 16);
        if (*(v5 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v5 + 2306) = 0;
          if (*(v5 + 2292) == 1 && !*(v5 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v5, 22, (v5 + 28192), (v5 + 28200), (v5 + 28208));
          }
        }

        v6 = *(a1 + 52);
        *(a1 + 52) = v6 + 1;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::signalProgress(*(a1 + 16), v6);
        v7 = *(*(a1 + 16) + 27624);
        if (v7)
        {
          v8 = 0;
          do
          {
            v12 = *(a1 + 16);
            if (*(v12 + 28248) == 1)
            {
              *(*(v12 + 28288) - 56) = v8;
            }

            else
            {
              *(v12 + 27628) = v8;
              v13 = *(v12 + 27624) != 0;
              v157 = 0;
              agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v12 + 24, 4, 0, v13, v8, &v157);
              v14 = *(v12 + 776);
              *v14 = ((v8 + 1) & 7) - 1610612736;
              *(v12 + 776) = v14 + 1;
              v12 = *(a1 + 16);
            }

            v15 = *(v12 + 27656);
            if (!v15)
            {
LABEL_25:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v16 = v15;
                v17 = *(v15 + 7);
                if (v17 <= v6)
                {
                  break;
                }

                v15 = *v16;
                if (!*v16)
                {
                  goto LABEL_25;
                }
              }

              if (v17 >= v6)
              {
                break;
              }

              v15 = v16[1];
              if (!v15)
              {
                goto LABEL_25;
              }
            }

            v18 = *(v16 + 8);
            if (*(v16 + 10) >= *(v12 + 27640))
            {
              v19 = *(v12 + 27628);
              if (v19 == v18)
              {
                v20 = *(v12 + 27613);
                v21 = *(v12 + 27624) != 0;
                v157 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v12 + 24, 4, v20, v21, v18, &v157);
                v10 = 1610612992;
              }

              else
              {
                v9 = *(v12 + 27624) != 0;
                v10 = (((v18 << 18) + 0x40000) & 0x1C0000 | ((*(v16 + 9) << 21) + 0x200000) & 0x1FE00000) + 1610613248;
                v157 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v12 + 24, 4, 0, v9, v19, &v157);
              }

              v11 = *(v12 + 776);
              *v11 = v10;
              *(v12 + 776) = v11 + 1;
            }

            v8 = (v8 + 1);
          }

          while (v8 != v7);
        }
      }

      v22 = *(a1 + 272) + 328 * v156;
      if (*(v22 + 120) == *(v22 + 128))
      {
        v32 = 0;
        goto LABEL_54;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceRefits = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize = 32;
      }

      v23 = *(v22 + 120);
      v24 = *(v22 + 128);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceRefits)
      {
        break;
      }

      if (v24 == v23)
      {
        goto LABEL_51;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(*(a1 + 16));
      v32 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(a1, *(v22 + 120), 1);
      v23 = *(v22 + 120);
      v24 = *(v22 + 128);
      if (0x8E38E38E38E38E39 * ((v24 - v23) >> 5) >= 2)
      {
        v33 = 288;
        v34 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(a1, v33 + *(v22 + 120), 1);
          ++v34;
          v23 = *(v22 + 120);
          v24 = *(v22 + 128);
          v33 += 288;
        }

        while (v34 < 0x8E38E38E38E38E39 * ((v24 - v23) >> 5));
        v32 = 1;
        if (v24 == v23)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      if (v24 != v23)
      {
        goto LABEL_52;
      }

LABEL_53:
      *(v22 + 128) = v23;
LABEL_54:
      if (*(v22 + 152) != *(v22 + 144))
      {
        if (*(a1 + 50) == 1)
        {
          v35 = *(a1 + 16);
          if (*(v35 + 28248) == 1)
          {
            *(*(v35 + 28288) - 56) = 1;
          }

          else
          {
            *(v35 + 27628) = 1;
            v36 = *(v35 + 27624) != 0;
            v157 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v35 + 24, 4, 0, v36, 1, &v157);
            v37 = *(v35 + 776);
            *v37 = -1610612734;
            *(v35 + 776) = v37 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceCopies = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize = 256;
        }

        v38 = *(v22 + 144);
        v39 = *(v22 + 152);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceCopies == 1 && v39 != v38)
        {
          v40 = *(a1 + 16);
          if (v32)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v40);
          }

          else
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v40);
          }

          v42 = *(v22 + 144);
          if ((*(v22 + 152) - v42) >> 3 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v43 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize;
          }

          else
          {
            v43 = (*(v22 + 152) - v42) >> 3;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, v42, *(v22 + 168), v43, v41);
          for (i = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize; ; i += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v38 = *(v22 + 144);
            v39 = *(v22 + 152);
            if (i >= (v39 - v38) >> 3)
            {
              break;
            }

            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
            v46 = *(v22 + 144);
            if (((*(v22 + 152) - v46) >> 3) - i >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize)
            {
              v47 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::copyCoalesceBatchSize;
            }

            else
            {
              v47 = ((*(v22 + 152) - v46) >> 3) - i;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, (v46 + 8 * i), (*(v22 + 168) + 8 * i), v47, v45);
          }

          v32 = 1;
        }

        if (v39 != v38)
        {
          v48 = 0;
          v49 = 0;
          do
          {
            if ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceCopies & 1) == 0)
            {
              v51 = *(a1 + 16);
              if (v32)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v51);
              }

              else
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v51);
              }

              v32 = 1;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, (*(v22 + 144) + v48), (*(v22 + 168) + v48), 1uLL, v50);
              v38 = *(v22 + 144);
            }

            v38 = *(v22 + 144);
            v48 += 8;
          }

          while (v49 < (*(v22 + 152) - v38) >> 3);
        }

        *(v22 + 152) = v38;
        *(v22 + 176) = *(v22 + 168);
      }

      v53 = *(v22 + 192);
      v52 = *(v22 + 200);
      if (v53 != v52)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_89;
        }

        v54 = *(a1 + 16);
        if (*(v54 + 28248) == 1)
        {
          *(*(v54 + 28288) - 56) = 0;
LABEL_89:
          if (v52 != v53)
          {
LABEL_90:
            v55 = *(a1 + 16);
            if (v32)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v55);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v55);
            }

            v32 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(a1, **(v22 + 192), *(*(v22 + 192) + 8), 1);
            v53 = *(v22 + 192);
            v52 = *(v22 + 200);
            if ((v52 - v53) >= 0x11)
            {
              v56 = 0;
              v57 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
                v32 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(a1, *(*(v22 + 192) + v56 + 16), *(*(v22 + 192) + v56 + 24), 1);
                ++v57;
                v53 = *(v22 + 192);
                v52 = *(v22 + 200);
                v56 += 16;
              }

              while (v57 < (v52 - v53) >> 4);
            }
          }
        }

        else
        {
          *(v54 + 27628) = 0;
          v58 = *(v54 + 27624) != 0;
          v157 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v54 + 24, 4, 0, v58, 0, &v157);
          v59 = *(v54 + 776);
          *v59 = -1610612735;
          *(v54 + 776) = v59 + 1;
          v53 = *(v22 + 192);
          v52 = *(v22 + 200);
          if (v52 != v53)
          {
            goto LABEL_90;
          }
        }

        while (v52 != v53)
        {

          v60 = *(v52 - 16);
          v52 -= 16;
        }

        *(v22 + 200) = v53;
      }

      v62 = *(v22 + 216);
      v61 = *(v22 + 224);
      if (v62 == v61)
      {
        goto LABEL_122;
      }

      if (*(a1 + 50) == 1)
      {
        v63 = *(a1 + 16);
        if (*(v63 + 28248) != 1)
        {
          *(v63 + 27628) = 0;
          v72 = *(v63 + 27624) != 0;
          v157 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v63 + 24, 4, 0, v72, 0, &v157);
          v73 = *(v63 + 776);
          *v73 = -1610612735;
          *(v63 + 776) = v73 + 1;
          if (*(v22 + 224) == *(v22 + 216))
          {
            goto LABEL_122;
          }

          goto LABEL_107;
        }

        *(*(v63 + 28288) - 56) = 0;
      }

      if (v61 == v62)
      {
        goto LABEL_122;
      }

LABEL_107:
      v64 = *(a1 + 16);
      if (v32)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v64);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v64);
      }

      v65 = *(v22 + 216);
      if (((*(v22 + 224) - v65) >> 3) >= 0x100)
      {
        v66 = 256;
      }

      else
      {
        v66 = (*(v22 + 224) - v65) >> 3;
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(a1, v65, v66);
      if (*(v22 + 224) - *(v22 + 216) < 0x801uLL)
      {
        v32 = 1;
      }

      else
      {
        v67 = -256;
        v68 = 2048;
        v69 = 256;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
          v70 = *(v22 + 216);
          if ((v67 + ((*(v22 + 224) - v70) >> 3)) >= 0x100)
          {
            v71 = 256;
          }

          else
          {
            v71 = v67 + ((*(v22 + 224) - v70) >> 3);
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSizes(a1, (v68 + v70), v71);
          v69 += 256;
          v67 -= 256;
          v68 += 2048;
        }

        while (v69 < (*(v22 + 224) - *(v22 + 216)) >> 3);
        v32 = 1;
      }

LABEL_122:
      if (0x8F5C28F5C28F5C29 * ((*(v22 + 104) - *(v22 + 96)) >> 4) != 0x70A3D70A3D70A3D7 * ((*(v22 + 56) - *(v22 + 48)) >> 4) + 0x70A3D70A3D70A3D7 * ((*(v22 + 80) - *(v22 + 72)) >> 4))
      {
        if (*(a1 + 50) == 1)
        {
          v74 = *(a1 + 16);
          if (*(v74 + 28248) == 1)
          {
            *(*(v74 + 28288) - 56) = 0;
          }

          else
          {
            *(v74 + 27628) = 0;
            v75 = *(v74 + 27624) != 0;
            v157 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v74 + 24, 4, 0, v75, 0, &v157);
            v76 = *(v74 + 776);
            *v76 = -1610612735;
            *(v74 + 776) = v76 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceSmallBuilds = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize = 256;
        }

        v77 = *(a1 + 16);
        if (v32)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v77);
        }

        else
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v77);
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::coalesceSmallBuilds)
        {
          v79 = *(v22 + 48);
          v78 = *(v22 + 56);
          if (v79 != v78)
          {
            v80 = 0;
            v81 = 0x8F5C28F5C28F5C29 * ((v78 - v79) >> 4);
            v82 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v81 - v80 >= v82)
              {
                v83 = v82;
              }

              else
              {
                v83 = v81 - v80;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v79 + 400 * v80), v83, 0);
              v82 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v80 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v79 = *(v22 + 48);
              v78 = *(v22 + 56);
              v81 = 0x8F5C28F5C28F5C29 * ((v78 - v79) >> 4);
            }

            while (v80 < v81);
          }

          if (v78 != v79)
          {
            do
            {
              v84 = v78 - 400;

              v78 = v84;
            }

            while (v84 != v79);
          }

          *(v22 + 56) = v79;
          v86 = *(v22 + 72);
          v85 = *(v22 + 80);
          if (v86 != v85)
          {
            v87 = 0;
            v88 = 0x8F5C28F5C28F5C29 * ((v85 - v86) >> 4);
            v89 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v88 - v87 >= v89)
              {
                v90 = v89;
              }

              else
              {
                v90 = v88 - v87;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v86 + 400 * v87), v90, 1u);
              v89 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v87 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v86 = *(v22 + 72);
              v85 = *(v22 + 80);
              v88 = 0x8F5C28F5C28F5C29 * ((v85 - v86) >> 4);
            }

            while (v87 < v88);
          }

          if (v85 != v86)
          {
            do
            {
              v91 = v85 - 400;

              v85 = v91;
            }

            while (v91 != v86);
          }

          *(v22 + 80) = v86;
          v93 = *(v22 + 96);
          v92 = *(v22 + 104);
          if (v93 != v92)
          {
            v94 = 0;
            v95 = 0x8F5C28F5C28F5C29 * ((v92 - v93) >> 4);
            v96 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v95 - v94 >= v96)
              {
                v97 = v96;
              }

              else
              {
                v97 = v95 - v94;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v93 + 400 * v94), v97, 2u);
              v96 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v94 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::smallBuildBatchSize;
              v93 = *(v22 + 96);
              v92 = *(v22 + 104);
              v95 = 0x8F5C28F5C28F5C29 * ((v92 - v93) >> 4);
            }

            while (v94 < v95);
          }

          if (v92 != v93)
          {
            do
            {
              v98 = v92 - 400;

              v92 = v98;
            }

            while (v98 != v93);
          }
        }

        else
        {
          v100 = *(v22 + 48);
          v99 = *(v22 + 56);
          if (v99 != v100)
          {
            v101 = 0;
            v102 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v101 + v100), 1uLL, 4u);
              ++v102;
              v100 = *(v22 + 48);
              v99 = *(v22 + 56);
              v101 += 400;
            }

            while (v102 < 0x8F5C28F5C28F5C29 * ((v99 - v100) >> 4));
          }

          if (v99 != v100)
          {
            do
            {
              v103 = v99 - 400;

              v99 = v103;
            }

            while (v103 != v100);
          }

          *(v22 + 56) = v100;
          v105 = *(v22 + 72);
          v104 = *(v22 + 80);
          if (v104 != v105)
          {
            v106 = 0;
            v107 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v106 + v105), 1uLL, 4u);
              ++v107;
              v105 = *(v22 + 72);
              v104 = *(v22 + 80);
              v106 += 400;
            }

            while (v107 < 0x8F5C28F5C28F5C29 * ((v104 - v105) >> 4));
          }

          if (v104 != v105)
          {
            do
            {
              v108 = v104 - 400;

              v104 = v108;
            }

            while (v108 != v105);
          }

          *(v22 + 80) = v105;
          v93 = *(v22 + 96);
          v109 = *(v22 + 104);
          if (v109 != v93)
          {
            v110 = 0;
            v111 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildSmallBVHs(a1, (v110 + v93), 1uLL, 4u);
              ++v111;
              v93 = *(v22 + 96);
              v109 = *(v22 + 104);
              v110 += 400;
            }

            while (v111 < 0x8F5C28F5C28F5C29 * ((v109 - v93) >> 4));
          }

          if (v109 != v93)
          {
            do
            {
              v112 = v109 - 400;

              v109 = v112;
            }

            while (v112 != v93);
          }
        }

        *(v22 + 104) = v93;
        v32 = 1;
      }

      v114 = *v22;
      v113 = *(v22 + 8);
      if (*v22 != v113)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_178;
        }

        v115 = *(a1 + 16);
        if (*(v115 + 28248) == 1)
        {
          *(*(v115 + 28288) - 56) = 1;
LABEL_178:
          if (v113 != v114)
          {
LABEL_179:
            v116 = *(a1 + 16);
            if (v32)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v116);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v116);
            }

            v32 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(a1, *v22, 1);
            v114 = *v22;
            v113 = *(v22 + 8);
            if (0xAAAAAAAAAAAAAAABLL * ((v113 - *v22) >> 8) >= 2)
            {
              v117 = 768;
              v118 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
                v32 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeTopDownBuilds(a1, v117 + *v22, 1);
                ++v118;
                v114 = *v22;
                v113 = *(v22 + 8);
                v117 += 768;
              }

              while (v118 < 0xAAAAAAAAAAAAAAABLL * ((v113 - *v22) >> 8));
            }
          }
        }

        else
        {
          *(v115 + 27628) = 1;
          v152 = *(v115 + 27624) != 0;
          v157 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v115 + 24, 4, 0, v152, 1, &v157);
          v153 = *(v115 + 776);
          *v153 = -1610612734;
          *(v115 + 776) = v153 + 1;
          v114 = *v22;
          v113 = *(v22 + 8);
          if (v113 != *v22)
          {
            goto LABEL_179;
          }
        }

        if (v113 != v114)
        {
          do
          {
            v119 = v113 - 768;

            v113 = v119;
          }

          while (v119 != v114);
        }

        *(v22 + 8) = v114;
      }

      v121 = *(v22 + 24);
      v120 = *(v22 + 32);
      if (v121 == v120)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_205;
        }

        goto LABEL_204;
      }

      if (*(a1 + 50) == 1)
      {
        v122 = *(a1 + 16);
        if (*(v122 + 28248) != 1)
        {
          *(v122 + 27628) = 1;
          v154 = *(v122 + 27624) != 0;
          v157 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v122 + 24, 4, 0, v154, 1, &v157);
          v155 = *(v122 + 776);
          *v155 = -1610612734;
          *(v122 + 776) = v155 + 1;
          v121 = *(v22 + 24);
          v120 = *(v22 + 32);
          if (v120 == v121)
          {
            goto LABEL_201;
          }

          goto LABEL_193;
        }

        *(*(v122 + 28288) - 56) = 1;
      }

      if (v120 == v121)
      {
        goto LABEL_201;
      }

LABEL_193:
      v123 = *(a1 + 16);
      if (v32)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v123);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(v123);
      }

      v32 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(a1, *(v22 + 24), 1);
      v121 = *(v22 + 24);
      v120 = *(v22 + 32);
      if (0x8F5C28F5C28F5C29 * ((v120 - v121) >> 4) >= 2)
      {
        v124 = 400;
        v125 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
          v32 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildMediumBVHs(a1, v124 + *(v22 + 24), 1);
          ++v125;
          v121 = *(v22 + 24);
          v120 = *(v22 + 32);
          v124 += 400;
        }

        while (v125 < 0x8F5C28F5C28F5C29 * ((v120 - v121) >> 4));
      }

LABEL_201:
      if (v120 != v121)
      {
        do
        {
          v126 = v120 - 400;

          v120 = v126;
        }

        while (v126 != v121);
      }

      *(v22 + 32) = v121;
      if ((v32 & 1) == 0)
      {
        goto LABEL_205;
      }

LABEL_204:
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::endVirtualSubstream(*(a1 + 16));
LABEL_205:
      v128 = *v22;
      v127 = *(v22 + 8);
      if (v127 != *v22)
      {
        do
        {
          v129 = v127 - 768;

          v127 = v129;
        }

        while (v129 != v128);
      }

      *(v22 + 8) = v128;
      v131 = *(v22 + 24);
      v130 = *(v22 + 32);
      if (v130 != v131)
      {
        do
        {
          v132 = v130 - 400;

          v130 = v132;
        }

        while (v132 != v131);
      }

      *(v22 + 32) = v131;
      v134 = *(v22 + 48);
      v133 = *(v22 + 56);
      if (v133 != v134)
      {
        do
        {
          v135 = v133 - 400;

          v133 = v135;
        }

        while (v135 != v134);
      }

      *(v22 + 56) = v134;
      v137 = *(v22 + 72);
      v136 = *(v22 + 80);
      if (v136 != v137)
      {
        do
        {
          v138 = v136 - 400;

          v136 = v138;
        }

        while (v138 != v137);
      }

      *(v22 + 80) = v137;
      v140 = *(v22 + 96);
      v139 = *(v22 + 104);
      if (v139 != v140)
      {
        do
        {
          v141 = v139 - 400;

          v139 = v141;
        }

        while (v141 != v140);
      }

      *(v22 + 104) = v140;
      v142 = *(v22 + 120);
      for (j = *(v22 + 128); j != v142; j -= 288)
      {
      }

      *(v22 + 128) = v142;
      *(v22 + 152) = *(v22 + 144);
      *(v22 + 176) = *(v22 + 168);
      *(v22 + 224) = *(v22 + 216);
      if (*(v22 + 264))
      {
        v144 = *(v22 + 256);
        if (v144)
        {
          do
          {
            v148 = *v144;
            v149 = v144[3];
            if (v149)
            {
              v144[4] = v149;
              operator delete(v149);
            }

            operator delete(v144);
            v144 = v148;
          }

          while (v148);
        }

        *(v22 + 256) = 0;
        v145 = *(v22 + 248);
        if (v145)
        {
          bzero(*(v22 + 240), 8 * v145);
        }

        *(v22 + 264) = 0;
      }

      if (*(v22 + 304))
      {
        v146 = *(v22 + 296);
        if (v146)
        {
          do
          {
            v150 = *v146;
            v151 = v146[3];
            if (v151)
            {
              v146[4] = v151;
              operator delete(v151);
            }

            operator delete(v146);
            v146 = v150;
          }

          while (v150);
        }

        *(v22 + 296) = 0;
        v147 = *(v22 + 288);
        if (v147)
        {
          bzero(*(v22 + 280), 8 * v147);
        }

        *(v22 + 304) = 0;
      }

      *(v22 + 320) = 0;
      v4 = v156 + 1;
      v3 = *(a1 + 272);
      result = *(a1 + 280);
      if (v156 + 1 >= 0x8F9C18F9C18F9C19 * (result - v3))
      {
        goto LABEL_251;
      }
    }

    if (v24 != v23)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::beginVirtualSubstream(*(a1 + 16));
      v25 = *(v22 + 120);
      if (0x8E38E38E38E38E39 * ((*(v22 + 128) - v25) >> 5) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize)
      {
        v26 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize;
      }

      else
      {
        v26 = 0x8E38E38E38E38E39 * ((*(v22 + 128) - v25) >> 5);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(a1, v25, v26);
      v27 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize;
      v23 = *(v22 + 120);
      v24 = *(v22 + 128);
      if (0x8E38E38E38E38E39 * ((v24 - v23) >> 5) > AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize)
      {
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
          v28 = *(v22 + 120);
          v29 = v28 + 288 * v27;
          v30 = 0x8E38E38E38E38E39 * ((*(v22 + 128) - v28) >> 5) - v27;
          if (v30 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize)
          {
            v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize;
          }

          else
          {
            v31 = v30;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(a1, v29, v31);
          v27 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch &)::refitBatchSize;
          v23 = *(v22 + 120);
          v24 = *(v22 + 128);
        }

        while (v27 < 0x8E38E38E38E38E39 * ((v24 - v23) >> 5));
      }

      v32 = 1;
      if (v24 == v23)
      {
        goto LABEL_53;
      }

      do
      {
LABEL_52:

        v24 -= 288;
      }

      while (v24 != v23);
      goto LABEL_53;
    }

LABEL_51:
    v32 = 0;
    if (v24 != v23)
    {
      goto LABEL_52;
    }

    goto LABEL_53;
  }

LABEL_251:
  while (result != v3)
  {
    result = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(result - 41);
  }

  *(a1 + 280) = v3;
  return result;
}

unint64_t AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(uint64_t a1, int a2, __int16 a3)
{
  v3 = HIBYTE(a3) & a3;
  v4 = a2 - 103;
  {
    v13 = a1;
    v11 = a2;
    v12 = HIBYTE(a3) & a3;
    v10 = a2 - 103;
    v4 = v10;
    a2 = v11;
    v3 = v12;
    v9 = v8;
    a1 = v13;
    if (v9)
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(int,std::optional<BOOL>)::verify = 0;
      a1 = v13;
      a2 = v11;
      v3 = v12;
      v4 = v10;
    }
  }

  v15 = 24;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = &unk_2A23F80C0;
  if (((v4 < 0x13) & v3) != 0)
  {
    v5 = 0x80000000;
  }

  else
  {
    v5 = 0;
  }

  v19 = v5 & 0xC0000000 | a2 & 0x3FFFFFFF | (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(int,std::optional<BOOL>)::verify << 30);
  result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBVHBuilderPipeline(*(*a1 + 848), &v14);
  v14 = &unk_2A23F8100;
  if (__p)
  {
    v17 = __p;
    v7 = result;
    operator delete(__p);
    return v7;
  }

  return result;
}

void sub_29CE62AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id **AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(id **a1)
{
  v2 = a1[37];
  if (v2)
  {
    do
    {
      v37 = *v2;
      v38 = v2[3];
      if (v38)
      {
        v2[4] = v38;
        operator delete(v38);
      }

      operator delete(v2);
      v2 = v37;
    }

    while (v37);
  }

  v3 = a1[35];
  a1[35] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[32];
  if (v4)
  {
    do
    {
      v39 = *v4;
      v40 = v4[3];
      if (v40)
      {
        v4[4] = v40;
        operator delete(v40);
      }

      operator delete(v4);
      v4 = v39;
    }

    while (v39);
  }

  v5 = a1[30];
  a1[30] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[27];
  if (v6)
  {
    a1[28] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    v8 = a1[25];
    v9 = a1[24];
    if (v8 != v7)
    {
      do
      {

        v10 = *(v8 - 2);
        v8 -= 2;
      }

      while (v8 != v7);
      v9 = a1[24];
    }

    a1[25] = v7;
    operator delete(v9);
  }

  v11 = a1[21];
  if (v11)
  {
    a1[22] = v11;
    operator delete(v11);
  }

  v12 = a1[18];
  if (v12)
  {
    a1[19] = v12;
    operator delete(v12);
  }

  v13 = a1[15];
  if (v13)
  {
    v14 = a1[16];
    v15 = a1[15];
    if (v14 != v13)
    {
      do
      {

        v14 -= 36;
      }

      while (v14 != v13);
      v15 = a1[15];
    }

    a1[16] = v13;
    operator delete(v15);
  }

  v16 = a1[12];
  if (v16)
  {
    v17 = a1[13];
    v18 = a1[12];
    if (v17 != v16)
    {
      do
      {
        v19 = v17 - 50;

        v17 = v19;
      }

      while (v19 != v16);
      v18 = a1[12];
    }

    a1[13] = v16;
    operator delete(v18);
  }

  v20 = a1[9];
  if (v20)
  {
    v21 = a1[10];
    v22 = a1[9];
    if (v21 != v20)
    {
      do
      {
        v23 = v21 - 50;

        v21 = v23;
      }

      while (v23 != v20);
      v22 = a1[9];
    }

    a1[10] = v20;
    operator delete(v22);
  }

  v24 = a1[6];
  if (v24)
  {
    v25 = a1[7];
    v26 = a1[6];
    if (v25 != v24)
    {
      do
      {
        v27 = v25 - 50;

        v25 = v27;
      }

      while (v27 != v24);
      v26 = a1[6];
    }

    a1[7] = v24;
    operator delete(v26);
  }

  v28 = a1[3];
  if (v28)
  {
    v29 = a1[4];
    v30 = a1[3];
    if (v29 != v28)
    {
      do
      {
        v31 = v29 - 50;

        v29 = v31;
      }

      while (v31 != v28);
      v30 = a1[3];
    }

    a1[4] = v28;
    operator delete(v30);
  }

  v32 = *a1;
  if (*a1)
  {
    v33 = a1[1];
    v34 = *a1;
    if (v33 != v32)
    {
      do
      {
        v35 = v33 - 96;

        v33 = v35;
      }

      while (v35 != v32);
      v34 = *a1;
    }

    a1[1] = v32;
    operator delete(v34);
  }

  return a1;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v223[2] = *MEMORY[0x29EDCA608];
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::smallRefitSingleThreadgroupSize = 64;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::mediumRefitSingleThreadgroupSize = 128;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::smallRefitQtbSingleThreadgroupSize = 768;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::mediumRefitQtbSingleThreadgroupSize = 768;
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::skipSmallCoalescing = 1;
  }

  v201 = a2;
  v202 = a1;
  *__val = a3;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::verify = 0;
  }

  v219 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v214[0] = a1;
  v214[1] = &v215;
  v214[2] = &v219;
  v214[3] = &v218;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
  if (a3 == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator()(a1, a2, 0);
    goto LABEL_227;
  }

  v7 = *(a1 + 80);
  v191 = (a1 + 80);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = v7;
  v193 = a1 + 104;
  *(a1 + 112) = *(a1 + 104);
  v186 = a1 + 128;
  v8 = *(a1 + 152);
  v185 = a1 + 152;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = v8;
  v189 = a1 + 176;
  v190 = (a1 + 56);
  *(a1 + 184) = *(a1 + 176);
  v196 = a1 + 200;
  v9 = *(a1 + 224);
  *(a1 + 208) = *(a1 + 200);
  *(a1 + 232) = v9;
  v187 = a1 + 248;
  v188 = a1 + 224;
  *(a1 + 256) = *(a1 + 248);
  if (!a3)
  {
    __vala = -1;
    goto LABEL_81;
  }

  v10 = 0;
  v192 = 0;
  v11 = 0;
  do
  {
    v12 = a2 + 288 * v11;
    v13 = 208;
    if (!*(v12 + 208))
    {
      v13 = 200;
    }

    v14 = *(v12 + v13);
    if (*v12 > v10)
    {
      v10 = *v12;
    }

    if (*(a1 + 51) == 1)
    {
      v15 = *(v12 + 200);
      *&v220[0] = v15;
      *(&v220[0] + 1) = v14;
      v16 = *(a1 + 16);
      if (v15 && *(v15 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v17 = *(v15 + 312);
        IOGPUResourceListAddResource();
        v18 = *(v17 + 64);
        v19 = *(v17 + 72);
        while (v18 != v19)
        {
          if (*v18)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v18);
            IOGPUResourceListAddResource();
          }

          v18 += 2;
        }
      }

      if (v14 && *(v14 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v20 = v14[39];
        IOGPUResourceListAddResource();
        v21 = *(v20 + 64);
        v22 = *(v20 + 72);
        while (v21 != v22)
        {
          if (*v21)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v21);
            IOGPUResourceListAddResource();
          }

          v21 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v16, v220, 2u, 1, 1, v6);
      a1 = v202;
    }

    v23 = *(v12 + 224);
    v24 = *(v12 + 18);
    if (*(v12 + 52))
    {
      v25 = (v24 & 0xFE) == 6;
    }

    else
    {
      v25 = 0;
    }

    if (v25 && (*(v12 + 15) & 1) != 0)
    {
LABEL_44:
      v28 = (v12 + 280);
LABEL_47:
      LODWORD(v220[0]) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
      std::vector<unsigned int>::push_back[abi:nn200100](v196, v220);
      if ((*v28 & 0x20) != 0)
      {
        *&v220[0] = *(v12 + 200);
        *v204 = *(v12 + 208);
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, v220, v204, 1uLL, v30);
        v31 = *(a1 + 16);
        if (*(v31 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
          *(v31 + 2306) = 0;
          if (*(v31 + 2292) == 1 && !*(v31 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v31, 22, (v31 + 28192), (v31 + 28200), (v31 + 28208));
          }
        }
      }

      goto LABEL_55;
    }

    if (v24 == 5 || v24 == 2)
    {
      v27 = *(v12 + 280);
      if ((v27 & 4) != 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v29 = v24 - 8;
      v27 = *(v12 + 280);
      if (v29 >= 0xFFFFFFFE)
      {
        v28 = (v12 + 280);
        goto LABEL_53;
      }
    }

    v28 = (v12 + 280);
    if (*(v23 + 102) == 1)
    {
      goto LABEL_47;
    }

LABEL_53:
    if ((v27 & 0x20) != 0)
    {
      *&v220[0] = *(v12 + 200);
      *v204 = *(v12 + 208);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v188, v220);
      std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](v187, v204);
      ++v192;
    }

LABEL_55:
    v32 = [v14 buffer];
    v33 = [v14 bufferOffset];
    v34 = [v32 gpuAddress];
    v35 = [v32 length];
    v36 = v34 + v33;
    *&v220[0] = v34 + v33;
    *(&v220[0] + 1) = v33;
    v220[1] = v35;
    v37 = *(v12 + 4);
    v38 = *(v12 + 18);
    if (*(v12 + 52))
    {
      v39 = *__val;
      if (v38 & 0xFE) == 6 && (*(v12 + 15))
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyMotionTransforms(a1, v12, v220);
        v38 = *(v12 + 18);
      }

      if (v38 != 5)
      {
LABEL_62:
        if (v38 != 2)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
      v39 = *__val;
      if (v38 != 5)
      {
        goto LABEL_62;
      }
    }

    if ((*v28 & 4) != 0)
    {
      *v204 = v36 + 152;
      *&v204[8] = 88;
      *&v204[16] = v35;
      *&v204[24] = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyControlPoints(a1, (v12 + 248), v36, 0, v204, *(v12 + 40), *(v12 + 36), *(v23 + 56));
      v38 = *(v12 + 18);
    }

LABEL_65:
    if ((v38 - 8) <= 0xFFFFFFFD && (*v28 & 0x10) == 0)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyPPD(a1, v12, v12 + 248, v220);
    }

    if ((v37 - 1) > 1)
    {
      *v204 = v11;
      std::vector<unsigned short>::push_back[abi:nn200100](v193, v204);
      a2 = v201;
      if (*v28)
      {
        *v204 = v11;
        std::vector<unsigned short>::push_back[abi:nn200100](v189, v204);
      }
    }

    else if (*(v12 + 4) == 2)
    {
      *v204 = v11;
      std::vector<unsigned short>::push_back[abi:nn200100](v191, v204);
      a2 = v201;
      if (*v28)
      {
        *v204 = v11;
        std::vector<unsigned short>::push_back[abi:nn200100](v185, v204);
      }
    }

    else
    {
      *v204 = v11;
      std::vector<unsigned short>::push_back[abi:nn200100](v190, v204);
      a2 = v201;
      if (*v28)
      {
        *v204 = v11;
        std::vector<unsigned short>::push_back[abi:nn200100](v186, v204);
      }
    }

    ++v11;
  }

  while (v11 != v39);
  __vala = v10 - 1;
  v40 = v192;
  if (v192)
  {
    if (*(a1 + 200) == *(a1 + 208))
    {
      LODWORD(v220[0]) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
      std::vector<unsigned int>::push_back[abi:nn200100](v196, v220);
      v40 = v192;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(a1, *(a1 + 224), *(a1 + 248), v40, v6);
  }

LABEL_81:
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::skipSmallCoalescing == 1)
  {
    v42 = *(a1 + 56);
    v194 = *(a1 + 64);
    if (v42 != v194)
    {
      do
      {
        v197 = *v42;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
        v43 = *(a1 + 200);
        v44 = *(a1 + 208);
        while (v43 != v44)
        {
          v46 = *(a1 + 16);
          v47 = *(v46 + 28312);
          v48 = *v43 - v47;
          if (*v43 >= v47)
          {
            if (*(*(v46 + 28288) - 32) <= (*(*(v46 + 28280) + (v48 << 6) + 32) + *(*(v46 + 28280) + (v48 << 6) + 28)))
            {
              v49 = *(*(v46 + 28280) + (v48 << 6) + 32) + *(*(v46 + 28280) + (v48 << 6) + 28);
            }

            else
            {
              v49 = *(*(v46 + 28288) - 32);
            }

            if ((v49 + 1) > *(v46 + 28308))
            {
              v50 = *(v46 + 27624) != 0;
              v51 = *(v46 + 27628);
              LODWORD(v220[0]) = 1;
              agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v46 + 24, 24, 0, v50, v51, v220);
              ++*(v46 + 28308);
            }

            v52 = *(v46 + 27624) != 0;
            v53 = *(v46 + 27628);
            LODWORD(v220[0]) = 1;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v46 + 24, 4, 0, v52, v53, v220);
            if (*(*(v46 + 1912) + 520))
            {
              v54 = *(v46 + 28288);
              *(v54 - 32) = v49;
              v56 = *(v54 - 16);
              v55 = *(v54 - 8);
              if (v56 < v55)
              {
                *v56 = v48;
                v45 = v56 + 4;
              }

              else
              {
                v57 = *(v54 - 24);
                v58 = v56 - v57;
                v59 = (v56 - v57) >> 2;
                v60 = v59 + 1;
                if ((v59 + 1) >> 62)
                {
LABEL_233:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v61 = v55 - v57;
                if (v61 >> 1 > v60)
                {
                  v60 = v61 >> 1;
                }

                if (v61 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v62 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v62 = v60;
                }

                if (v62)
                {
                  if (!(v62 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_234;
                }

                v63 = (v56 - v57) >> 2;
                v64 = (4 * v59);
                v65 = (4 * v59 - 4 * v63);
                *v64 = v48;
                v45 = v64 + 1;
                memcpy(v65, v57, v58);
                *(v54 - 24) = v65;
                *(v54 - 16) = v45;
                *(v54 - 8) = 0;
                if (v57)
                {
                  operator delete(v57);
                }
              }

              *(v54 - 16) = v45;
              a1 = v202;
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(v46, 22);
            }
          }

          ++v43;
        }

        a2 = v201;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator()(a1, v201 + 288 * v197, 1);
        ++v42;
      }

      while (v42 != v194);
      v42 = *v190;
    }

    *(a1 + 64) = v42;
    *(a1 + 136) = *(a1 + 128);
  }

  v66 = *(a1 + 80);
  v195 = *(a1 + 88);
  if (v66 != v195)
  {
    do
    {
      v198 = *v66;
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(a1 + 16));
      v68 = *(a1 + 200);
      for (i = *(a1 + 208); v68 != i; a1 = v202)
      {
        v70 = *(a1 + 16);
        v71 = *(v70 + 28312);
        v72 = *v68 - v71;
        if (*v68 >= v71)
        {
          if (*(*(v70 + 28288) - 32) <= (*(*(v70 + 28280) + (v72 << 6) + 32) + *(*(v70 + 28280) + (v72 << 6) + 28)))
          {
            v73 = *(*(v70 + 28280) + (v72 << 6) + 32) + *(*(v70 + 28280) + (v72 << 6) + 28);
          }

          else
          {
            v73 = *(*(v70 + 28288) - 32);
          }

          if ((v73 + 1) > *(v70 + 28308))
          {
            v74 = *(v70 + 27624) != 0;
            v75 = *(v70 + 27628);
            LODWORD(v220[0]) = 1;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v70 + 24, 24, 0, v74, v75, v220);
            ++*(v70 + 28308);
          }

          v76 = *(v70 + 27624) != 0;
          v77 = *(v70 + 27628);
          LODWORD(v220[0]) = 1;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(34, v70 + 24, 4, 0, v76, v77, v220);
          if (*(*(v70 + 1912) + 520))
          {
            v78 = *(v70 + 28288);
            *(v78 - 32) = v73;
            v80 = *(v78 - 16);
            v79 = *(v78 - 8);
            if (v80 < v79)
            {
              *v80 = v72;
              v69 = v80 + 4;
            }

            else
            {
              v81 = *(v78 - 24);
              v82 = v80 - v81;
              v83 = (v80 - v81) >> 2;
              v84 = v83 + 1;
              if ((v83 + 1) >> 62)
              {
                goto LABEL_233;
              }

              v85 = v79 - v81;
              if (v85 >> 1 > v84)
              {
                v84 = v85 >> 1;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v86 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v86 = v84;
              }

              if (v86)
              {
                if (!(v86 >> 62))
                {
                  operator new();
                }

LABEL_234:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v87 = (v80 - v81) >> 2;
              v88 = (4 * v83);
              v89 = (4 * v83 - 4 * v87);
              *v88 = v72;
              v69 = v88 + 1;
              memcpy(v89, v81, v82);
              *(v78 - 24) = v89;
              *(v78 - 16) = v69;
              *(v78 - 8) = 0;
              if (v81)
              {
                operator delete(v81);
              }
            }

            *(v78 - 16) = v69;
          }

          else
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::restartComputePass(v70, 22);
          }
        }

        ++v68;
      }

      a2 = v201;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit const&,BOOL)#1}::operator()(a1, v201 + 288 * v198, 1);
      ++v66;
    }

    while (v66 != v195);
    v66 = *v191;
  }

  *(a1 + 88) = v66;
  *(a1 + 160) = *(a1 + 152);
  if (v41[29])
  {
    v90 = 0;
  }

  else
  {
    memset(v220, 0, sizeof(v220));
    v91 = *(a1 + 56);
    v92 = *(a1 + 64);
    if (v91 != v92)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v220, a1, 4 * (v92 - v91), 0);
      v93 = *(a1 + 56);
      v94 = *(a1 + 64);
      v95 = v94 - v93;
      if (v94 != v93)
      {
        v96 = *(&v220[0] + 1);
        v97 = v95 >> 1;
        if (v97 <= 1)
        {
          v97 = 1;
        }

        do
        {
          v98 = *v93++;
          *v96++ = *(a2 + 288 * v98 + 216);
          --v97;
        }

        while (v97);
      }
    }

    v90 = *&v220[0];
  }

  v212 = 0u;
  v213 = 0u;
  v99 = *(a1 + 104);
  v100 = *(a1 + 112);
  if (v99 != v100)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v212, a1, 4 * (v100 - v99), 0);
    v101 = *(a1 + 104);
    v102 = *(a1 + 112);
    v103 = v102 - v101;
    if (v102 != v101)
    {
      v104 = *(&v212 + 1);
      v105 = v103 >> 1;
      if (v105 <= 1)
      {
        v105 = 1;
      }

      do
      {
        v106 = *v101++;
        *v104++ = *(a2 + 288 * v106 + 216);
        --v105;
      }

      while (v105);
    }
  }

  if (v41[29])
  {
    v107 = 0;
  }

  else
  {
    memset(v220, 0, sizeof(v220));
    v108 = *(a1 + 128);
    v109 = *(a1 + 136);
    if (v108 != v109)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v220, a1, 4 * (v109 - v108), 0);
      v110 = *(a1 + 128);
      v111 = *(a1 + 136);
      v112 = v111 - v110;
      if (v111 != v110)
      {
        v113 = *(&v220[0] + 1);
        v114 = v112 >> 1;
        if (v114 <= 1)
        {
          v114 = 1;
        }

        do
        {
          v115 = *v110++;
          *v113++ = *(a2 + 288 * v115 + 216);
          --v114;
        }

        while (v114);
      }
    }

    v107 = *&v220[0];
  }

  v210 = 0u;
  v211 = 0u;
  v116 = *(a1 + 176);
  v117 = *(a1 + 184);
  if (v116 != v117)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v210, a1, 4 * (v117 - v116), 0);
    v118 = *(a1 + 176);
    v119 = *(a1 + 184);
    v120 = v119 - v118;
    if (v119 != v118)
    {
      v121 = *(&v210 + 1);
      v122 = v120 >> 1;
      if (v122 <= 1)
      {
        v122 = 1;
      }

      do
      {
        v123 = *v118++;
        *v121++ = *(a2 + 288 * v123 + 216);
        --v122;
      }

      while (v122);
    }
  }

  if (*(a1 + 56) != *(a1 + 64) && (v41[29] & 1) == 0)
  {
    if (*(a1 + 50) == 1)
    {
      v124 = *(v202 + 16);
      if (*(v124 + 28248) == 1)
      {
        *(*(v124 + 28288) - 56) = 0;
      }

      else
      {
        *(v124 + 27628) = 0;
        v125 = *(v124 + 27624) != 0;
        LODWORD(v220[0]) = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v124 + 24, 4, 0, v125, 0, v220);
        v126 = *(v124 + 776);
        *v126 = -1610612735;
        *(v124 + 776) = v126 + 1;
      }
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(v202 + 16));
    v127 = *(v202 + 200);
    for (j = *(v202 + 208); v127 != j; ++v127)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(v202 + 16), *v127);
    }

    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v202, 98, 256);
    memset(v220, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v220, v202, 40, 0);
    v131 = *(&v220[0] + 1);
    v130 = *&v220[0];
    v132 = *&v220[1];
    **&v220[0] = 0;
    *(v130 + 8) = 0;
    v133 = (*(v202 + 64) - *(v202 + 56)) >> 1;
    *(v130 + 16) = v90;
    *(v130 + 24) = v133;
    *(v130 + 32) = v133;
    v134 = *(v202 + 16);
    *(v134 + 26464) = v131;
    v135 = *(v134 + 22488);
    *(v135 + 56) = v131;
    *(v134 + 22560) = v132;
    *(v134 + 27560) |= 0x80uLL;
    *(v134 + 27592) |= 1u;
    *(v135 + 17436) = 0;
    v136 = *(v134 + 168);
    v137 = v136 + 31;
    if ((v136 + 31) > *(v134 + 160))
    {
      v184 = AGX::DataBufferAllocator<44ul>::growNoInline(v134 + 24, 3, 0);
      v136 = *(v134 + 168);
      if (v184)
      {
        v137 = v136 + 31;
        if ((v136 + 31) > *(v134 + 160))
        {
          abort();
        }

        goto LABEL_173;
      }
    }

    else
    {
LABEL_173:
      *(v134 + 176) = v137;
    }

    v138 = ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v139 = v138 + *(v134 + 184);
    *(v134 + 168) = v138 + 4;
    *(v134 + 26216) = 0;
    *(v134 + 27560) |= 0x800uLL;
    *(v134 + 27592) |= 1u;
    v140 = *(v134 + 22488);
    *(v140 + 88) = v139;
    *(v134 + 22592) = *(*(v134 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v140 + 17560) = 4;
    *(v140 + 17728) = 4;
    *(v140 + 17732) = v139 >> 8;
    *v138 = 0;
    v141 = *(v202 + 16);
    *v204 = (*(v202 + 64) - *(v202 + 56)) >> 1;
    *&v204[8] = vdupq_n_s64(1uLL);
    *&v220[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::smallRefitSingleThreadgroupSize;
    *(v220 + 8) = *&v204[8];
    *(v141 + 2060) |= 4u;
    v142 = *(v141 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v141, Pipeline);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v141, v220, v204);
    if (*(v141 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v141, 22, 0, 0);
    }

    if (v142)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v141, v142);
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(v202 + 16));
    v143 = *(v202 + 200);
    for (k = *(v202 + 208); v143 != k; ++v143)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(v202 + 16), *v143);
    }

    a1 = v202;
    if (*(v202 + 128) != *(v202 + 136))
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
      memset(v220, 0, 24);
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v220, v202, 40, 0);
      v145 = v220[0];
      v146 = *&v220[1];
      **&v220[0] = 0;
      *(v145 + 8) = 0;
      v147 = (*(v202 + 136) - *(v202 + 128)) >> 1;
      *(v145 + 16) = v107;
      *(v145 + 24) = v147;
      *(v145 + 32) = v147;
      v148 = *(v202 + 16);
      *(v148 + 26464) = *(&v145 + 1);
      *(*(v148 + 22488) + 56) = *(&v145 + 1);
      *(v148 + 22560) = v146;
      *(v148 + 27560) |= 0x80uLL;
      *(v148 + 27592) |= 1u;
      v149 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v202, 100, 256);
      v150 = *(v202 + 16);
      *v204 = (*(v202 + 136) - *(v202 + 128)) >> 1;
      *&v204[8] = vdupq_n_s64(1uLL);
      *&v220[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::smallRefitQtbSingleThreadgroupSize;
      *(v220 + 8) = *&v204[8];
      *(v150 + 2060) |= 4u;
      v151 = *(v150 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v150, v149);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v150, v220, v204);
      if (*(v150 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v150, 22, 0, 0);
      }

      if (v151)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v150, v151);
      }
    }
  }

  if (*(a1 + 104) != *(a1 + 112))
  {
    if (*(a1 + 50) == 1)
    {
      v152 = *(a1 + 16);
      if (*(v152 + 28248) == 1)
      {
        *(*(v152 + 28288) - 56) = 1;
      }

      else
      {
        *(v152 + 27628) = 1;
        v153 = *(v152 + 27624) != 0;
        LODWORD(v220[0]) = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v152 + 24, 4, 0, v153, 1, v220);
        v154 = *(v152 + 776);
        *v154 = -1610612734;
        *(v152 + 776) = v154 + 1;
      }

      a1 = v202;
    }

    if (*(a1 + 44) >= 5u)
    {
      v155 = 2688;
    }

    else
    {
      v155 = 1536;
    }

    v156 = *(a1 + 16);
    *(*(v156 + 22496) + 2036) = v155;
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(v156);
    v157 = a1;
    v158 = *(a1 + 200);
    for (m = *(v157 + 208); v158 != m; ++v158)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(v202 + 16), *v158);
    }

    v160 = v202;
    v223[0] = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v202, 118, 256);
    v161 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v202, 116, 256);
    v223[1] = v161;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v209, v160, 2 * (*(v160 + 112) - *(v160 + 104)), 1);
    *(&v220[0] + 1) = 0;
    *&v221[8] = 0u;
    LODWORD(v220[0]) = 1;
    v220[1] = v212;
    *v221 = v213;
    *&v221[16] = (*(v160 + 112) - *(v160 + 104)) >> 1;
    v222 = 0x2000000020;
    if (__vala)
    {
      while (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::verify != 1)
      {
LABEL_210:
        *(&v220[0] + 1) = v223[__vala < *(v202 + 40)];
        *&v221[20] = __vala;
        *v204 = v209[0];
        *&v204[16] = v209[1];
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCoalescedRefits(v202, v220, 1, v204);
        v167 = *(v202 + 16);
        if (*(v167 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(v202 + 16), 22, 0, 0);
          *(v167 + 2306) = 0;
          if (*(v167 + 2292) == 1 && !*(v167 + 27624))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v167, 22, (v167 + 28192), (v167 + 28200), (v167 + 28208));
          }
        }

        if (!--__vala)
        {
          goto LABEL_216;
        }
      }

      v204[23] = 6;
      strcpy(v204, "large ");
      std::to_string(v203, __vala);
      if (v203[23] >= 0)
      {
        v162 = v203;
      }

      else
      {
        v162 = *v203;
      }

      if (v203[23] >= 0)
      {
        v163 = v203[23];
      }

      else
      {
        v163 = *&v203[8];
      }

      v164 = std::string::append(v204, v162, v163);
      v165 = v164->__r_.__value_.__r.__words[0];
      v166 = SHIBYTE(v164->__r_.__value_.__r.__words[2]);
      v164->__r_.__value_.__r.__words[0] = 0;
      v164->__r_.__value_.__l.__size_ = 0;
      v164->__r_.__value_.__r.__words[2] = 0;
      if ((v203[23] & 0x80000000) != 0)
      {
        operator delete(*v203);
        if ((v204[23] & 0x80000000) != 0)
        {
          goto LABEL_215;
        }
      }

      else
      {
        if ((v204[23] & 0x80000000) == 0)
        {
          goto LABEL_208;
        }

LABEL_215:
        operator delete(*v204);
      }

LABEL_208:
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
      if (v166 < 0)
      {
        operator delete(v165);
      }

      goto LABEL_210;
    }

LABEL_216:
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
    v168 = v212;
    v170 = *(v202 + 104);
    v169 = *(v202 + 112);
    memset(v204, 0, 24);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v204, v202, 40, 0);
    v171 = (v169 - v170) >> 1;
    v172 = *v204;
    v173 = *&v204[16];
    **v204 = 0;
    *(v172 + 8) = 0;
    *(v172 + 16) = v168;
    *(v172 + 24) = v171;
    *(v172 + 32) = v171;
    v174 = *(v202 + 16);
    *(v174 + 26464) = *(&v172 + 1);
    *(*(v174 + 22488) + 56) = *(&v172 + 1);
    *(v174 + 22560) = v173;
    *(v174 + 27560) |= 0x80uLL;
    *(v174 + 27592) |= 1u;
    *v204 = (4 * (*(v202 + 112) - *(v202 + 104))) & 0xFFFFFFF8;
    *&v204[8] = vdupq_n_s64(1uLL);
    *v203 = xmmword_29D2F23B0;
    *&v203[16] = 1;
    *(v174 + 2060) |= 4u;
    v175 = *(v174 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v174, v161);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v174, 22, v204, v203);
    if (*(v174 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v174, 22, 0, 0);
    }

    if (v175)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v174, v175);
    }

    if (*(v202 + 176) != *(v202 + 184))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::nextVirtualSubstream(*(v202 + 16));
      v176 = *(v202 + 200);
      for (n = *(v202 + 208); v176 != n; ++v176)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::waitForVirtualSubstream(*(v202 + 16), *v176);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(AGX::Span<AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::Refit>)::{lambda(char const*)#1}::operator()(v214);
      v178 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v202, 120, 256);
      *v204 = 2;
      *&v204[8] = v178;
      *&v204[16] = v210;
      v205 = v211;
      v206 = (*(v202 + 184) - *(v202 + 176)) >> 1;
      v207 = 0x20FFFFFFFFLL;
      v208 = 32;
      memset(v203, 0, sizeof(v203));
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCoalescedRefits(v202, v204, 1, v203);
    }
  }

  v180 = v215;
  v179 = v216;
  if (v215 != v216)
  {
    v181 = MEMORY[0x29EDCA5F8];
    do
    {
      v182 = **(v202 + 16);
      v183 = v180[1];
      *&v220[0] = v181;
      *(&v220[0] + 1) = 3221225472;
      *&v220[1] = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE12encodeRefitsENS_4SpanINS6_5RefitEEEENKUlvE_clEv_block_invoke;
      *(&v220[1] + 1) = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      *v221 = v183;
      [v182 addCompletedHandler:v220];
      v180 += 4;
    }

    while (v180 != v179);
  }

LABEL_227:
  if (v215)
  {
    v216 = v215;
    operator delete(v215);
  }
}

void sub_29CE644F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  v36 = a1;
  v37 = *(v35 - 240);
  if (v37)
  {
    *(v35 - 232) = v37;
    operator delete(v37);
    a1 = v36;
  }

  _Unwind_Resume(a1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(uint64_t a1, id *a2, uint64_t *a3, unint64_t a4, int8x16_t a5)
{
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread = 16;
  }

  if (a4 < 2)
  {
    v14 = *a2;
    v15 = *a3;
    v16 = [*a2 buffer];
    v17 = [v14 bufferOffset];
    v18 = [v16 gpuAddress];
    [v16 length];
    v19 = v18 + v17;
    v20 = [v15 buffer];
    v21 = [v15 bufferOffset];
    v22 = [v20 gpuAddress];
    [v20 length];
    LODWORD(v20) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v87 = v22 + v21;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v88, a1, 4, 1);
    v23 = v89;
    v24 = v90;
    v92 = v89;
    v93 = v88;
    v94 = 4;
    v95 = v90;
    *v88 = v20;
    v25 = [v15 accelerationStructureUniqueIdentifier];
    if (**MEMORY[0x29EDC56B0])
    {
      [objc_msgSend(v14 "buffer")];
      [objc_msgSend(v15 "buffer")];
      IOGPUDeviceTraceEvent();
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v88, a1, 40, 0);
    v26 = v88;
    v27 = v89;
    v28 = v90;
    v29 = [v14 size];
    *v26 = v19;
    v26[1] = v29;
    v30 = [v15 size];
    v26[2] = v87;
    v26[3] = v30;
    v26[4] = v25;
    v31 = *(a1 + 16);
    *(v31 + 26504) = v27;
    v32 = *(v31 + 22488);
    *(v32 + 96) = v27;
    *(v31 + 22600) = v28;
    *(v31 + 27560) |= 0x1000uLL;
    v33 = *(v31 + 27592) | 1;
    *(v31 + 26536) = v23;
    *(v32 + 128) = v23;
    *(v31 + 22632) = v24;
    *(v31 + 27560) |= 0x10000uLL;
    *(v31 + 27592) = v33;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 124, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, v19 + 72, 0, &v92, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread, 0, 1);
  }

  else
  {
    v84 = a4;
    if (a4)
    {
      v6 = 0;
      v7 = *(a1 + 16);
      v8 = a4;
      v9 = MEMORY[0x29EDC5638];
      do
      {
        v10 = a2[v6];
        if (v10 && *(v10 + *v9 + 16) >> 61 == 3)
        {
          v11 = v10[39];
          IOGPUResourceListAddResource();
          v12 = *(v11 + 64);
          v13 = *(v11 + 72);
          while (v12 != v13)
          {
            if (*v12)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v12);
              IOGPUResourceListAddResource();
            }

            v12 += 2;
          }
        }

        ++v6;
      }

      while (v6 != v8);
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v7, a2, v84, 1, 1, a5);
      v36 = 0;
      v37 = *(a1 + 16);
      do
      {
        v38 = a3[v36];
        if (v38 && *(v38 + *v9 + 16) >> 61 == 3)
        {
          v39 = *(v38 + 312);
          IOGPUResourceListAddResource();
          v40 = *(v39 + 64);
          v41 = *(v39 + 72);
          while (v40 != v41)
          {
            if (*v40)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v40);
              IOGPUResourceListAddResource();
            }

            v40 += 2;
          }
        }

        ++v36;
      }

      while (v36 != v8);
      a4 = v84;
      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v37, a3, v84, 3, 3, v35);
    }

    v42 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v43 = 32 * AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(AGXG18PFamilyRayTracingAccelerationStructure **,AGXG18PFamilyRayTracingAccelerationStructure **,unsigned long)::numBytesPerThread;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v92, a1, 4, 0);
    v78 = v94;
    v79 = v93;
    *v92 = v42;
    v77 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 125, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v92, a1, 40 * a4, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v88, a1, 4 * a4, 0);
    v44 = 0;
    v75 = v92;
    v76 = v93;
    v73 = v89;
    v74 = v95;
    v71 = v91;
    v72 = v88;
    v70 = vdupq_n_s64(1uLL);
    v69 = xmmword_29D2F1C70;
    do
    {
      v45 = 0;
      v81 = &v75[10 * v44];
      v82 = &v72[v44];
      v83 = v44;
      v46 = &v73[v44];
      v47 = &v76[10 * v44 + 4];
      while (1)
      {
        v48 = a2[v44];
        v49 = a3[v44];
        v50 = [objc_msgSend(v48 buffer];
        v51 = v50 >= [objc_msgSend(v49 "buffer")] ? v49 : v48;
        v52 = [objc_msgSend(v51 "buffer")];
        *v46 = v45;
        v53 = (v43 - 1 + v52) / v43 + v45;
        if (v53 >= 0xFFFFFFFF)
        {
          break;
        }

        v54 = [v49 accelerationStructureUniqueIdentifier];
        v55 = [objc_msgSend(v48 "buffer")];
        v56 = [v48 bufferOffset] + v55;
        v57 = [v48 size];
        *(v47 - 2) = v56;
        *(v47 - 1) = v57;
        v58 = [objc_msgSend(v49 "buffer")];
        v59 = [v49 bufferOffset] + v58;
        v60 = [v49 size];
        ++v44;
        *v47 = v59;
        v47[1] = v60;
        v47[2] = v54;
        ++v46;
        v47 += 5;
        v45 = v53;
        v61 = v84;
        if (v44 >= v84)
        {
          v62 = v84;
          LODWORD(v45) = v53;
          v44 = v84;
          goto LABEL_37;
        }
      }

      v62 = v44;
      v61 = v84;
LABEL_37:
      v98 = 0uLL;
      v99 = 0;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v98, a1, 4, 0);
      v63 = *(&v98 + 1);
      v64 = v99;
      *v98 = v62;
      v65 = *(a1 + 16);
      *(v65 + 26504) = v81;
      v66 = *(v65 + 22488);
      v66[12] = v81;
      *(v65 + 22600) = v74;
      *(v65 + 27560) |= 0x1000uLL;
      v67 = *(v65 + 27592) | 1;
      *(v65 + 26520) = v63;
      v66[14] = v63;
      *(v65 + 22616) = v64;
      *(v65 + 27560) |= 0x4000uLL;
      *(v65 + 26512) = v82;
      v66[13] = v82;
      *(v65 + 22608) = v71;
      *(v65 + 27560) |= 0x2000uLL;
      *(v65 + 26480) = v79;
      v66[9] = v79;
      *(v65 + 22576) = v78;
      *(v65 + 27560) |= 0x200uLL;
      *(v65 + 27592) = v67;
      v96 = v45;
      v97 = v70;
      v98 = v69;
      v99 = 1;
      *(v65 + 2060) |= 4u;
      v68 = *(v65 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v65, v77);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v65, &v98, &v96);
      if (*(v65 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v65, 22, 0, 0);
      }

      if (v68)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v65, v68);
      }

      v44 += v83;
    }

    while (v44 < v61);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(uint64_t a1, void *a2, void *a3, char a4)
{
  if (*(a1 + 49) == 1 && (a4 & 1) == 0)
  {
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(a1, 4, a2, a3, 0, -1, 0, 0, 0, 0);
    v8 = a2;
    v9 = a3;
    v11 = BatchForCommand[25];
    v10 = BatchForCommand[26];
    if (v11 < v10)
    {
      *v11 = v8;
      v11[1] = v9;
      v12 = (v11 + 2);
LABEL_42:
      BatchForCommand[25] = v12;

      return;
    }

    v31 = BatchForCommand[24];
    v32 = (v11 - v31) >> 4;
    v33 = v32 + 1;
    if ((v32 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v34 = v10 - v31;
    if (v34 >> 3 > v33)
    {
      v33 = v34 >> 3;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFF0)
    {
      v35 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v33;
    }

    if (v35)
    {
      if (!(v35 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v36 = (v11 - v31) >> 4;
    *&v37 = v8;
    *(&v37 + 1) = v9;
    v38 = 16 * v32 - 16 * v36;
    *(16 * v32) = v37;
    v12 = 16 * v32 + 16;
    if (v31 == v11)
    {
LABEL_40:
      BatchForCommand[24] = v38;
      BatchForCommand[25] = v12;
      BatchForCommand[26] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_42;
    }

    v39 = v11 - v31 - 16;
    v40 = v31;
    v41 = (16 * v32 - 16 * v36);
    if (v39 >= 0x90)
    {
      if (v31 >= (v39 & 0xFFFFFFFFFFFFFFF0) + 16 || (v40 = v31, v41 = (16 * v32 - 16 * v36), v38 >= v31 + (v39 & 0xFFFFFFFFFFFFFFF0) + 16))
      {
        v42 = (v39 >> 4) + 1;
        v43 = 2 * (v42 & 0x1FFFFFFFFFFFFFFCLL);
        v40 = &v31[v43];
        v44 = (-16 * v36 + 16 * v32 + 32);
        v45 = (v31 + 4);
        v46 = v42 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v48 = *(v45 - 2);
          v47 = *(v45 - 1);
          v50 = *v45;
          v49 = v45[1];
          *(v45 - 2) = 0uLL;
          *(v45 - 1) = 0uLL;
          *v45 = 0uLL;
          v45[1] = 0uLL;
          v45 += 4;
          *(v44 - 2) = v48;
          *(v44 - 1) = v47;
          *v44 = v50;
          v44[1] = v49;
          v44 += 4;
          v46 -= 4;
        }

        while (v46);
        if (v42 == (v42 & 0x1FFFFFFFFFFFFFFCLL))
        {
          do
          {
LABEL_38:

            v53 = *v31;
            v31 += 2;
          }

          while (v31 != v11);
          v31 = BatchForCommand[24];
          goto LABEL_40;
        }

        v41 = (v38 + v43 * 8);
      }
    }

    do
    {
      v51 = *v40;
      *v40 = 0;
      *v41 = v51;
      v52 = v40[1];
      v40[1] = 0;
      v41[1] = v52;
      v40 += 2;
      v41 += 2;
    }

    while (v40 != v11);
    goto LABEL_38;
  }

  v13 = [a3 accelerationStructureUniqueIdentifier];
  if (**MEMORY[0x29EDC56B0])
  {
    [objc_msgSend(a2 "buffer")];
    [objc_msgSend(a3 "buffer")];
    IOGPUDeviceTraceEvent();
  }

  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify = 0;
  }

  v57 = 0;
  v56[0] = a1;
  v56[1] = &v57;
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v54, a1, 104, 1);
  v15 = v54[0];
  v14 = v54[1];
  v16 = v55;
  *(v54[0] + 12) = 0;
  v15[4] = 0u;
  v15[5] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *v15 = 0u;
  v15[1] = 0u;
  v17 = [objc_msgSend(a2 "buffer")];
  v18 = [a2 bufferOffset] + v17;
  v19 = [a2 size];
  *v15 = v18;
  *(v15 + 1) = v19;
  v20 = [objc_msgSend(a3 "buffer")];
  v21 = [a3 bufferOffset] + v20;
  v22 = [a3 size];
  *(v15 + 2) = v21;
  *(v15 + 3) = v22;
  *(v15 + 4) = v13;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction = 0;
  }

  *(v15 + 96) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction ^ 1;
  *(v15 + 97) = 0;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v54, a1, 0x480188uLL, 1);
    v23 = v54[1];
    bzero(v54[1], 0x480188uLL);
    v23[1] = -1;
    [**(a1 + 16) addCompletedHandler:&__block_literal_global_7253];
  }

  v24 = *(a1 + 16);
  *(v24 + 26504) = v14;
  *(*(v24 + 22488) + 96) = v14;
  *(v24 + 22600) = v16;
  *(v24 + 27560) |= 0x1000uLL;
  *(v24 + 27592) |= 1u;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 58, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::{lambda(char const*)#1}::operator()(v56);
  v26 = *(a1 + 16);
  v58 = vdupq_n_s64(1uLL);
  v59 = 1;
  *v54 = xmmword_29D2F23C0;
  v55 = 1;
  *(v26 + 2060) |= 4u;
  v27 = *(v26 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v26, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelCommonImpl(v26, v54, &v58);
  if (*(v26 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v26, 22, 0, 0);
  }

  if (v27)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v26, v27);
  }

  v28 = *(a1 + 16);
  if (*(v28 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(*(a1 + 16), 22, 0, 0);
    *(v28 + 2306) = 0;
    if (*(v28 + 2292) == 1 && !*(v28 + 27624))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::insertIndirectTGOptKernel(v28, 22, (v28 + 28192), (v28 + 28200), (v28 + 28208));
    }
  }

  v29 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(a1, 57, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::{lambda(char const*)#1}::operator()(v56);
  v30 = *(a1 + 16);
  *(v30 + 2060) |= 4u;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsIndirectWithPipelineInternal(v30, 22, v29, v14 + 18, v16);
}