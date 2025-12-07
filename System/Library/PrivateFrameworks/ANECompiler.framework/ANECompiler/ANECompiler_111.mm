ZinMirDilatedConv::DilatedConvDecomposedDesc *ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(ZinMirDilatedConv::DilatedConvDecomposedDesc *this, const ZinMirDilatedConv::DilatedConvDecomposedDesc *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4 <= 33)
  {
    switch(v4)
    {
      case 1:
        ZinIrConvUnitInfo::ZinIrConvUnitInfo((this + 8), (a2 + 8));
        break;
      case 2:
        *(this + 1) = &unk_1F1A2EA30;
        if (*(a2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
        }

        else
        {
          v10 = *(a2 + 1);
          *(this + 4) = *(a2 + 4);
          *(this + 1) = v10;
        }

        v15 = *(a2 + 10);
        *(this + 6) = 0;
        *(this + 10) = v15;
        *(this + 7) = 0;
        *(this + 8) = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
        *(this + 72) = *(a2 + 72);
        *(this + 1) = &unk_1F19CEE70;
        v16 = *(a2 + 88);
        *(this + 104) = *(a2 + 104);
        *(this + 88) = v16;
        v17 = *(a2 + 120);
        v18 = *(a2 + 136);
        v19 = *(a2 + 152);
        *(this + 42) = *(a2 + 42);
        *(this + 152) = v19;
        *(this + 136) = v18;
        *(this + 120) = v17;
        break;
      case 17:
        *(this + 1) = &unk_1F1A2EA30;
        if (*(a2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
        }

        else
        {
          v5 = *(a2 + 1);
          *(this + 4) = *(a2 + 4);
          *(this + 1) = v5;
        }

        v14 = *(a2 + 10);
        *(this + 6) = 0;
        *(this + 10) = v14;
        *(this + 7) = 0;
        *(this + 8) = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
        *(this + 72) = *(a2 + 72);
        *(this + 1) = &unk_1F1A33F90;
        *(this + 88) = *(a2 + 88);
        std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100]((this + 104), a2 + 104);
        break;
    }

    return this;
  }

  switch(v4)
  {
    case '""':
      *(this + 1) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
      }

      else
      {
        v9 = *(a2 + 1);
        *(this + 4) = *(a2 + 4);
        *(this + 1) = v9;
      }

      v12 = *(a2 + 10);
      *(this + 6) = 0;
      *(this + 10) = v12;
      *(this + 7) = 0;
      *(this + 8) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
      *(this + 72) = *(a2 + 72);
      v13 = &unk_1F1A33F48;
      goto LABEL_26;
    case '#':
      *(this + 1) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
      }

      else
      {
        v11 = *(a2 + 1);
        *(this + 4) = *(a2 + 4);
        *(this + 1) = v11;
      }

      v20 = *(a2 + 10);
      *(this + 6) = 0;
      *(this + 10) = v20;
      *(this + 7) = 0;
      *(this + 8) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
      *(this + 72) = *(a2 + 72);
      v13 = &unk_1F1A33F28;
LABEL_26:
      *(this + 1) = v13;
      v21 = *(a2 + 11);
      *(this + 24) = *(a2 + 24);
      *(this + 11) = v21;
      return this;
    case ',':
      ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((this + 8), (a2 + 8));
      *(this + 1) = &unk_1F1A33FD0;
      v6 = *(a2 + 164);
      v7 = *(a2 + 180);
      v8 = *(a2 + 196);
      *(this + 26) = 0;
      *(this + 196) = v8;
      *(this + 180) = v7;
      *(this + 164) = v6;
      *(this + 27) = 0;
      *(this + 28) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 26, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 3);
      *(this + 116) = *(a2 + 116);
      break;
  }

  return this;
}

uint64_t ZinMirDilatedConv::DilatedConvDecomposedDesc::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4 <= 33)
  {
    switch(v4)
    {
      case 1:
        ZinIrConvUnitInfo::ZinIrConvUnitInfo((a1 + 8), (a2 + 8));
        break;
      case 2:
        *(a1 + 8) = &unk_1F1A2EA30;
        if (*(a2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
        }

        else
        {
          v10 = *(a2 + 16);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 16) = v10;
        }

        v15 = *(a2 + 40);
        *(a1 + 48) = 0;
        *(a1 + 40) = v15;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 8) = &unk_1F19CEE70;
        v16 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v16;
        v17 = *(a2 + 120);
        v18 = *(a2 + 136);
        v19 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v19;
        *(a1 + 136) = v18;
        *(a1 + 120) = v17;
        break;
      case 17:
        *(a1 + 8) = &unk_1F1A2EA30;
        if (*(a2 + 39) < 0)
        {
          std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
        }

        else
        {
          v5 = *(a2 + 16);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 16) = v5;
        }

        v14 = *(a2 + 40);
        *(a1 + 48) = 0;
        *(a1 + 40) = v14;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 8) = &unk_1F1A33F90;
        *(a1 + 88) = *(a2 + 88);
        std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100]((a1 + 104), a2 + 104);
        break;
    }

    return a1;
  }

  switch(v4)
  {
    case '""':
      *(a1 + 8) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v9 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v9;
      }

      v12 = *(a2 + 40);
      *(a1 + 48) = 0;
      *(a1 + 40) = v12;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
      *(a1 + 72) = *(a2 + 72);
      v13 = &unk_1F1A33F48;
      goto LABEL_26;
    case '#':
      *(a1 + 8) = &unk_1F1A2EA30;
      if (*(a2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
      }

      else
      {
        v11 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v11;
      }

      v20 = *(a2 + 40);
      *(a1 + 48) = 0;
      *(a1 + 40) = v20;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
      *(a1 + 72) = *(a2 + 72);
      v13 = &unk_1F1A33F28;
LABEL_26:
      *(a1 + 8) = v13;
      v21 = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 88) = v21;
      return a1;
    case ',':
      ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((a1 + 8), (a2 + 8));
      *(a1 + 8) = &unk_1F1A33FD0;
      v6 = *(a2 + 164);
      v7 = *(a2 + 180);
      v8 = *(a2 + 196);
      *(a1 + 208) = 0;
      *(a1 + 196) = v8;
      *(a1 + 180) = v7;
      *(a1 + 164) = v6;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 208), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 3);
      *(a1 + 232) = *(a2 + 232);
      break;
  }

  return a1;
}

uint64_t ZinMirDilatedConv::DecomposeDilatedConv(__int128 *a1, uint64_t a2, unsigned int a3, __int32 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v177 = *MEMORY[0x1E69E9840];
  v14 = *a9;
    ;
  }

  a9[1] = v14;
  a8[1] = *a8;
  std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a8, a1);
  v15 = a4[18] == 1 && a4[19] == 1;
  if (!v15)
  {
    v16 = a2;
    if (ZinConvLayerUtils::IsLargeKernelStep((a4 + 6), a4 + 9))
    {
      if (*(*(a6 + 8) + 612))
      {
        return 3;
      }

      ZinConvLayerUtils::CheckDecomposabilityForKernelWithLargeStrides(a4);
    }

    v97 = 0;
    v98 = 0;
    v95[1] = 0;
    v96 = &v97;
    v94 = v95;
    v95[0] = 0;
    v172 = 0;
    v171 = 0;
    v173 = 0;
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(&v171, *a7, *(a7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a7 + 8) - *a7) >> 2));
    v82 = a8;
    v18 = v171;
    v89 = v172;
    v84 = a4;
    v19 = a1;
    if (v171 != v172)
    {
      do
      {
        v21 = v18->i32[0] != 1 || v18->i32[1] != 1;
        *v169 = 0;
        *v168 = 0;
        v170 = 0;
        v166 = 0;
        v165 = 0;
        v167 = 0;
        std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, v19);
        if (v21)
        {
          v22 = v18->i32[1];
          v23 = v18->i32[0];
          v24 = *(v19 + 3) % v23;
          v25 = v23 - v24;
          if (v24)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = *(v19 + 2) % v22;
          if (v27)
          {
            v28 = v22 - v27;
          }

          else
          {
            v28 = 0;
          }

          if (v26 | v28)
          {
            v145 = 0u;
            *&v139 = 0;
            v138 = 0u;
            v137 = 0u;
            *&v136[8] = 0u;
            *v140 = -1;
            *&v140[8] = 0u;
            v141 = 0u;
            memset(v142, 0, sizeof(v142));
            *v136 = &unk_1F1A33FD0;
            __p = 0;
            v144 = 0;
            WORD4(v145) = 0;
            *&v145 = 0;
            DWORD2(v137) = 44;
            DWORD2(v139) = a3;
            HIDWORD(v139) = a3;
            __src = xmmword_1A75A7770;
            std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &__src, &v175, 2uLL);
            HIDWORD(v142[5]) = 0;
            *(&v142[7] + 4) = 0;
            v142[6] = v26;
            LODWORD(v142[7]) = v28;
            ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, v136);
            std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
            ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
            v29 = *(v166 - 1);
            v30 = *(v166 - 40);
            v175 = *(v166 - 24);
            __src = v30;
            v176 = v29;
            *(&v175 + 1) += v26;
            *&v175 = v175 + v28;
            std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &__src);
            *v136 = &unk_1F1A33FD0;
            if (__p)
            {
              v144 = __p;
              operator delete(__p);
            }

            ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v136);
            v19 = a1;
          }

          *&v136[8] = 0;
          *&v136[16] = 0;
          DWORD2(v137) = 0;
          *&v137 = 0;
          v138 = 0u;
          v139 = 0u;
          *v140 = -1;
          *v136 = &unk_1F1A33F48;
          v31 = *v18;
          *&v140[16] = v18[1].i32[0];
          *&v140[8] = v31;
          ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, v136);
          std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
          v16 = a2;
          a4 = v84;
          ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
          v32 = *(v166 - 1);
          v33 = *(v166 - 24);
          __src = *(v166 - 40);
          *&__src = __src * *&v140[12] * *&v140[8];
          *&v175 = v33 / *&v140[12];
          v176 = v32;
          *(&v175 + 1) = *(&v33 + 1) / *&v140[8];
          std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &__src);
          ZinIrUnitInfo::~ZinIrUnitInfo(v136);
        }

        v155 = vdupq_n_s64(1uLL);
        v156 = 1;
        *&v34 = 0x100000001;
        *(&v34 + 1) = 0x100000001;
        v157 = v34;
        v158 = 0x100000001;
        v160 = 0;
        v159 = 0uLL;
        v161 = v34;
        v162 = 1;
        v163 = 0;
        v164 = 0;
        *&v136[8] = 0;
        *&v136[16] = 0;
        DWORD2(v137) = 0;
        *&v137 = 0;
        v138 = 0u;
        v139 = 0u;
        *v140 = -1;
        *&v140[8] = 0;
        *&v140[16] = -1;
        *&v141 = -1;
        DWORD2(v141) = -1;
        v142[0] = -1;
        memset(&v142[1], 0, 56);
        LODWORD(v142[8]) = 1;
        BYTE4(v142[8]) = 0;
        LOWORD(v142[9]) = 0;
        LODWORD(v142[10]) = -1;
        __p = -1;
        LODWORD(v144) = -1;
        *&v145 = -1;
        *(&v145 + 1) = 0x3F80000000000006;
        v146 = 0;
        *v136 = &unk_1F1A33E10;
        v147 = 0;
        v148 = 0;
        *v149 = v155;
        *&v149[16] = 1;
        v150 = 1;
        *v151 = v34;
        *&v151[16] = 0x100000001;
        v153 = 0;
        v152 = 0uLL;
        v154 = 1;
        ZinMirDilatedConv::ConvertDilatedConvInfoStruct(a4, v18, &v155);
        v147 = 1;
        *&v151[12] = v157;
        *&v151[20] = DWORD2(v157);
        *&v149[8] = v155;
        v150 = v156;
        v152 = v159;
        v153 = v160;
        v154 = HIDWORD(v161);
        *v140 = *(v16 + 8);
        *v149 = v162;
        DWORD2(v139) = a3;
        *&v140[12] = a5;
        *&v140[8] = 1;
        LODWORD(__src) = 1;
        ZinIrConvUnitInfo::ZinIrConvUnitInfo((&__src + 8), v136);
        std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
        ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
        v35 = *(v166 - 1);
        v36 = *(v166 - 24);
        v134[0] = *(v166 - 40);
        v134[1] = v36;
        v135 = v35;
        v37 = *(v16 + 8);
        *&__src = 0x100000001;
        DWORD2(__src) = 1;
        ZinGetOutputTensorDimension(v134, &v155, &v157, &v157 + 3, &v159, v37, &__src, v133);
        std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, v133);
        if (v21)
        {
          v116.i64[1] = 0;
          v117 = 0;
          DWORD2(v118) = 0;
          *&v118 = 0;
          memset(v119, 0, sizeof(v119));
          *&v120 = -1;
          v116.i64[0] = &unk_1F1A33F28;
          v38 = *v18;
          v121 = v18[1].i32[0];
          *(&v120 + 1) = v38;
          ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, &v116);
          std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
          ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
          v39 = *(v166 - 1);
          v40 = *(v166 - 24);
          v129 = *(v166 - 40);
          *&v129 = v129 / (SHIDWORD(v120) * SDWORD2(v120));
          v130 = v40 * SHIDWORD(v120);
          v132 = v39;
          v131 = *(&v40 + 1) * SDWORD2(v120);
          std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &v129);
          if (ZinMirDilatedConv::NeedsExtraPadRemoval(v19, v18, a4))
          {
            *(&v99 + 1) = 0;
            v100 = 0;
            v102 = 0;
            v101 = 0;
            v104 = 0u;
            v103 = 0u;
            v105 = -1;
            *&v99 = &unk_1F1A33F90;
            v108.i64[0] = 0x400000001;
            v108.i8[8] = 0;
            LOBYTE(v114) = 0;
            v107 = *(v16 + 24);
            v106 = 0;
            HIDWORD(v104) = a3;
            ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, &v99);
            std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
            ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
            v41 = *(v166 - 1);
            v42 = *(v166 - 24);
            v126 = *(v166 - 40);
            v127 = v42;
            *(&v127 + 1) = *(v16 + 24);
            v128 = v41;
            std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &v126);
            v43 = *(v16 + 16);
            v108.i32[1] = 3;
            v107 = v43;
            v106 = 0;
            HIDWORD(v104) = a3;
            ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, &v99);
            std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
            ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
            v44 = *(v166 - 1);
            v45 = *(v166 - 40);
            v175 = *(v166 - 24);
            __src = v45;
            v46 = *(v16 + 16);
            v176 = v44;
            *(&v175 + 1) = v46;
            std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &__src);
            *&v99 = &unk_1F1A33F90;
            v19 = a1;
            if (v114 == 1)
            {
              if (SBYTE3(v112) < 0)
              {
                operator delete(*v111);
              }

              if (SHIBYTE(v110) < 0)
              {
                operator delete(v108.i64[1]);
              }
            }

            ZinIrUnitInfo::~ZinIrUnitInfo(&v99);
          }

          ZinIrUnitInfo::~ZinIrUnitInfo(&v116);
        }

        v116 = vdupq_n_s64(1uLL);
        v117 = 1;
        *&v47 = 0x100000001;
        *(&v47 + 1) = 0x100000001;
        v118 = v47;
        v119[0] = 0x100000001uLL;
        v119[1] = 0uLL;
        v120 = v47;
        v121 = 2;
        v122 = 0;
        v123 = 1065353216;
        v124 = 0;
        v125 = 0;
        if (ZinMirDilatedConv::NeedDownsample(v18, a4, &v116))
        {
          *(&v99 + 1) = 0;
          v100 = 0;
          v101 = 0;
          v103 = 0u;
          v104 = 0u;
          v105 = -1;
          *&v99 = &unk_1F19CEE70;
          v108 = vdupq_n_s64(1uLL);
          v109 = 1;
          v110 = 0x100000001;
          *v111 = 1;
          *&v111[4] = 0;
          v112 = 0;
          *&v111[12] = 0;
          v113 = 0;
          v114 = 0x3F80000000000001;
          v115 = 0;
          v106 = 1;
          v102 = 2;
          v106 = ZinMirPoolUtils::ToZinIrPoolingType(v121);
          v108 = v116;
          *&v111[4] = *(v119 + 8);
          v112 = *(&v119[1] + 1);
          v109 = v117;
          v110 = v118;
          *v111 = DWORD2(v118);
          ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, &v99);
          std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](v168, &__src);
          ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
          v48 = *(v16 + 16);
          __src = *v16;
          v175 = v48;
          v176 = *(v16 + 32);
          std::vector<ZinTensorDimensions>::push_back[abi:ne200100](&v165, &__src);
          ZinIrUnitInfo::~ZinIrUnitInfo(&v99);
        }

        *&v99 = v18;
        v49 = (std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__emplace_unique_key_args<ZinIrDims3D,std::piecewise_construct_t const&,std::tuple<ZinIrDims3D const&>,std::tuple<>>(&v96, v18, &std::piecewise_construct, &v99) + 48);
        if (v49 != v168)
        {
          std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__assign_with_size[abi:ne200100]<ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(v49, *v168, *v169, 0x82FA0BE82FA0BE83 * ((*v169 - *v168) >> 3));
        }

        *&v99 = v18;
        v50 = (std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__emplace_unique_key_args<ZinIrDims3D,std::piecewise_construct_t const&,std::tuple<ZinIrDims3D const&>,std::tuple<>>(&v94, v18, &std::piecewise_construct, &v99) + 48);
        if (v50 != &v165)
        {
          std::vector<ZinTensorDimensions>::__assign_with_size[abi:ne200100]<ZinTensorDimensions*,ZinTensorDimensions*>(v50, v165, v166, 0xCCCCCCCCCCCCCCCDLL * ((v166 - v165) >> 3));
        }

        *v136 = &unk_1F1A2EAA0;
        if (v142[5])
        {
          v142[6] = v142[5];
          operator delete(v142[5]);
        }

        if (v142[2])
        {
          v142[3] = v142[2];
          operator delete(v142[2]);
        }

        ZinIrUnitInfo::~ZinIrUnitInfo(v136);
        if (v165)
        {
          v166 = v165;
          operator delete(v165);
        }

        *&__src = v168;
        std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&__src);
        v18 = (v18 + 12);
      }

      while (v18 != v89);
      v18 = v171;
    }

    if (v18)
    {
      v172 = v18;
      operator delete(v18);
    }

    v51 = v96;
    if (v96 == &v97)
    {
      v78 = 0x100000001;
      v79 = 1;
    }

    else
    {
      v52 = *a6;
      v53 = -1;
      v54 = -1;
      v87 = 1;
      v86 = 1;
      v88 = 1;
      while (1)
      {
        v55 = *(v51 + 8);
        v56 = *(v51 + 9);
        if (v55 == 1 && v56 == 1)
        {
          break;
        }

        if (v98 < 2 || v55 != a4[18] || v56 != a4[19])
        {
          v60 = std::map<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>::at(&v94, v51 + 8);
          v61 = v51[6];
          v62 = v51[7];
          if (v61 == v62)
          {
            v63 = 0;
          }

          else
          {
            v63 = 0;
            do
            {
              if (*v61 == 1)
              {
                break;
              }

              ++v63;
              v61 += 86;
            }

            while (v61 != v62);
          }

          v64 = *v60;
          if (0xCCCCCCCCCCCCCCCDLL * ((v60[1] - *v60) >> 3) <= v63 + 1)
          {
            std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
          }

          *&v134[0] = 0;
          if (ZinTensorFormatGetSizeInBytes(a3, v134))
          {
            ZinAssertImpl("Error in getting tensor format size in bytes");
          }

          v65 = (v64 + 40 * (v63 + 1));
          *&v133[0] = 0;
          v66 = ZinNEPerf::EstimateMinimumNumOfWorkunits(v65[2], v65[3], *&v134[0], 0, v52, v133);
          v67 = v51[6];
          if (0x82FA0BE82FA0BE83 * ((v51[7] - v67) >> 3) <= v63)
          {
            std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
          }

          v68 = v66;
          ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(&__src, (v67 + 344 * v63));
          *v136 = vdupq_n_s64(1uLL);
          *&v136[16] = 1;
          *&v69 = 0x100000001;
          *(&v69 + 1) = 0x100000001;
          v137 = v69;
          v138 = 0x100000001uLL;
          v139 = 0uLL;
          *v140 = v69;
          *&v140[16] = 1;
          LOWORD(v141) = 0;
          DWORD1(v141) = 0;
          ZinIrConvUnit::CreateConvInfo(&__src + 8, v136);
          v116.i64[0] = v137;
          v116.i32[2] = DWORD2(v137);
          ZinKernelComputeStrideExpansion(v52, v116.i32, v136, a3, 0, &v99);
          v137 = v99;
          v90 = DWORD1(v99);
          v92 = v100;
          *&v138 = v100;
          v70 = v99;
          v71 = SHIDWORD(v99);
          v72 = details::ZinIrSubchannelKernelDimension(v99, SHIDWORD(v99), *v136, BYTE8(v138));
          v73 = details::ZinIrSubchannelKernelDimension(SDWORD1(v137), v138, *&v136[8], v139);
          v74 = v68 * v70 * v90 * v71 * v92 * v72 * v73 * *v65;
          v75 = (*v65 < v53) << 7;
          if (*v65 == v53)
          {
            v75 = 0;
          }

          if (v74 != v54)
          {
            v75 = (v74 < v54) << 7;
          }

          if (v75)
          {
            v86 = *(v51 + 8);
            v87 = *(v51 + 9);
            v54 = v68 * v70 * v90 * v71 * v92 * v72 * v73 * *v65;
            v53 = *v65;
            v88 = *(v51 + 10);
          }

          ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(&__src);
          a4 = v84;
        }

        v76 = v51[1];
        if (v76)
        {
          do
          {
            v77 = v76;
            v76 = *v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v77 = v51[2];
            v15 = *v77 == v51;
            v51 = v77;
          }

          while (!v15);
        }

        v51 = v77;
        if (v77 == &v97)
        {
          v78 = v86 | (v87 << 32);
          v79 = v88;
          goto LABEL_94;
        }
      }

      v78 = v51[4];
      v79 = *(v51 + 10);
    }

LABEL_94:
    v155.i64[0] = v78;
    v155.i32[2] = v79;
    v80 = std::map<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>::at(&v96, v155.i32);
    if (v80 != a9)
    {
      std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__assign_with_size[abi:ne200100]<ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(a9, *v80, v80[1], 0x82FA0BE82FA0BE83 * ((v80[1] - *v80) >> 3));
    }

    v81 = std::map<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>::at(&v94, v155.i32);
    if (v81 != v82)
    {
      std::vector<ZinTensorDimensions>::__assign_with_size[abi:ne200100]<ZinTensorDimensions*,ZinTensorDimensions*>(v82, *v81, v81[1], 0xCCCCCCCCCCCCCCCDLL * ((v81[1] - *v81) >> 3));
    }

    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>>>::destroy(&v94, v95[0]);
    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::destroy(&v96, v97);
  }

  return 0;
}

void sub_1A69A42CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char *a31)
{
  std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>>>::destroy(&a27, a28);
  std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::destroy(&a30, a31);
  _Unwind_Resume(a1);
}

uint64_t std::map<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>::at(uint64_t a1, int *a2)
{
  v2 = *std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__find_equal<ZinIrDims3D>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 48;
}

uint64_t ZinMirDilatedConv::LowerDilatedConvolution(ZinIrOpLayerGraph *a1, uint64_t *a2, ZinIrContext **this)
{
  v199[1] = *MEMORY[0x1E69E9840];
  v143 = *a2;
  ZinConvCompositeLayer::GetConv(this, __p);
  v4 = RawOrShared<ZinConvLayer const>::unwrap_ptr(__p);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinConvLayer const*,std::shared_ptr<ZinConvLayer const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
  if (!ZinConvLayer::IsDilated(v4))
  {
    ZinAssertImpl("Composite Conv does not contain dilated conv\n");
  }

  v120 = *(v4 + 32);
  v5 = **ZinIrContext::GetMemoryPools(this);
  if (*(v4 + 71) >= 0)
  {
    v6 = *(v4 + 71);
  }

  else
  {
    v6 = *(v4 + 56);
  }

  v7 = &v177;
  std::string::basic_string[abi:ne200100](&v177, v6 + 1);
  if (v178[0] < 0)
  {
    v7 = v177.i64[0];
  }

  if (v6)
  {
    if (*(v4 + 71) >= 0)
    {
      v8 = (v4 + 48);
    }

    else
    {
      v8 = *(v4 + 48);
    }

    memmove(v7, v8, v6);
  }

  *(v7->i16 + v6) = 95;
  std::string::basic_string[abi:ne200100]<0>(&v157, "lower_dilated_conv");
  v9 = std::string::append(&v157, "_xfm", 4uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v170.__end_cap_.__value_ = v9->__r_.__value_.__r.__words[2];
  *&v170.__begin_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v170.__end_cap_.__value_) >= 0)
  {
    begin = &v170;
  }

  else
  {
    begin = v170.__begin_;
  }

  if (SHIBYTE(v170.__end_cap_.__value_) >= 0)
  {
    value_high = HIBYTE(v170.__end_cap_.__value_);
  }

  else
  {
    value_high = v170.__end_;
  }

  v13 = std::string::append(&v177, begin, value_high);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v13->__r_.__value_.__l + 2);
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(v152, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v170.__end_cap_.__value_) < 0)
  {
    operator delete(v170.__begin_);
  }

  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v178[0]) < 0)
  {
    operator delete(v177.i64[0]);
  }

  v124 = (*(*v5 + 40))(v5, 0);
  v15 = (*(*v4 + 40))(v4, 0);
  v121 = v5;
  v142 = *((*(*v5 + 40))(v5, 0) + 104);
  v16 = *(v4 + 160);
  v150[0] = 0;
  v150[1] = 0;
  v151 = 0;
  v122 = v15;
  v123 = v4;
  v139 = v16;
  if (*(a2[1] + 612) == 1)
  {
    *__p = 0x100000001;
    *&__p[8] = 1;
    std::vector<ZinIrCoordinateInfo>::__assign_with_size[abi:ne200100]<ZinIrCoordinateInfo const*,ZinIrCoordinateInfo const*>(v150, __p, &__p[12], 1uLL);
  }

  else
  {
    WeightFormat = ZinIrKernel::GetWeightFormat(v16);
    HasPerCoutScale = ZinIrKernel::HasPerCoutScale(*(v4 + 160));
    ZinIrHalH13g::~ZinIrHalH13g(HasPerCoutScale);
    v134 = v19;
    HasZeroPoint = ZinIrKernel::HasZeroPoint(*(v4 + 160));
    ZinIrHalH13g::~ZinIrHalH13g(HasZeroPoint);
    v133 = v21;
    v22 = *(v4 + 160);
    v140 = *(v22 + 416);
    v131 = *(v22 + 174);
    v132 = *(v124 + 72);
    if (WeightFormat == 6)
    {
      v23 = 4;
    }

    else
    {
      v23 = WeightFormat;
    }

    v138 = v23;
    MaxLogicalKernelWidthForLargeKernelMode = GetMaxLogicalKernelWidthForLargeKernelMode(v143, v142);
    MaxLogicalKernelHeightForLargeKernelMode = GetMaxLogicalKernelHeightForLargeKernelMode(v143);
    v26 = *(v16 + 616);
    v27 = (*(v16 + 544) - 1) * v26;
    v28 = *(v16 + 552);
    v29 = *(v16 + 620);
    if (v27 >= MaxLogicalKernelWidthForLargeKernelMode)
    {
      LowestFactorGreaterThan = FindLowestFactorGreaterThan(v26, (v27 + MaxLogicalKernelWidthForLargeKernelMode) / MaxLogicalKernelWidthForLargeKernelMode);
    }

    else
    {
      LowestFactorGreaterThan = 1;
    }

    v31 = (v28 - 1) * v29;
    if (v31 >= MaxLogicalKernelHeightForLargeKernelMode)
    {
      v32 = FindLowestFactorGreaterThan(*(v16 + 620), (v31 + MaxLogicalKernelHeightForLargeKernelMode) / MaxLogicalKernelHeightForLargeKernelMode);
    }

    else
    {
      v32 = 1;
    }

    v168 = 0uLL;
    v169 = 0;
    GetAllIntegerFactors(*(v16 + 616), &v170);
    GetAllIntegerFactors(*(v16 + 620), &v157);
    v33 = v170.__begin_;
    end = v170.__end_;
    if (v170.__begin_ != v170.__end_)
    {
      v35 = v170.__end_ - 1;
      if (v170.__end_ - 1 > v170.__begin_)
      {
        v36 = v170.__begin_ + 1;
        do
        {
          v37 = *(v36 - 1);
          *(v36 - 1) = *v35;
          *v35-- = v37;
          v38 = v36++ >= v35;
        }

        while (!v38);
      }
    }

    v39 = (v157.__r_.__value_.__l.__size_ - 4);
    if (v157.__r_.__value_.__r.__words[0] != v157.__r_.__value_.__l.__size_ && v39 > v157.__r_.__value_.__r.__words[0])
    {
      v41 = v157.__r_.__value_.__r.__words[0] + 4;
      do
      {
        v42 = *(v41 - 4);
        *(v41 - 4) = *v39;
        *v39-- = v42;
        v38 = v41 >= v39;
        v41 += 4;
      }

      while (!v38);
    }

    v43 = v33;
    if (v33 != end)
    {
      while (*v43 != LowestFactorGreaterThan)
      {
        if (++v43 == end)
        {
          v43 = end;
          break;
        }
      }
    }

    std::vector<float>::resize(&v170, v43 - v33 + 1);
    size = v157.__r_.__value_.__r.__words[0];
    if (v157.__r_.__value_.__r.__words[0] != v157.__r_.__value_.__l.__size_)
    {
      while (*size != v32)
      {
        if (++size == v157.__r_.__value_.__l.__size_)
        {
          size = v157.__r_.__value_.__l.__size_;
          break;
        }
      }
    }

    std::vector<float>::resize(&v157, ((size - v157.__r_.__value_.__r.__words[0]) >> 2) + 1);
    memset(v178, 0, 32);
    v177 = 0u;
    ZinMirDilatedConv::DecomposeDilationFactorX(v143, *(v16 + 616), __p);
    std::deque<int>::__move_assign(&v177, __p);
    v45 = DWORD2(v187);
    std::deque<int>::~deque[abi:ne200100](__p);
    v166 = 0;
    __src = 0;
    v167 = 0;
    v46 = v170.__begin_;
    if (v45 == 1)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&__src, v170.__begin_, v170.__end_, v170.__end_ - v170.__begin_);
      v47 = v166;
    }

    else
    {
      v48 = v170.__end_;
      if (v170.__begin_ == v170.__end_)
      {
        v47 = 0;
      }

      else
      {
        v47 = 0;
        do
        {
          v49 = *v46;
          if (*v46 % v45)
          {
            if (v47 >= v167)
            {
              v50 = __src;
              v51 = v47 - __src;
              v52 = (v47 - __src) >> 2;
              v53 = v52 + 1;
              if ((v52 + 1) >> 62)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v54 = v167 - __src;
              if ((v167 - __src) >> 1 > v53)
              {
                v53 = v54 >> 1;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v55 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v53;
              }

              if (v55)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&__src, v55);
              }

              *(4 * v52) = v49;
              memcpy(0, v50, v51);
              v56 = __src;
              __src = 0;
              v166 = 4 * v52 + 4;
              v167 = 0;
              if (v56)
              {
                operator delete(v56);
              }

              v47 = (4 * v52 + 4);
            }

            else
            {
              *v47 = v49;
              v47 += 4;
            }

            v166 = v47;
          }

          ++v46;
        }

        while (v46 != v48);
      }
    }

    v57 = __src;
    if (__src != v47)
    {
      v125 = v47;
      v126 = a1;
      v58 = v140;
      if ((v138 - 7) >= 0x15)
      {
        v58 = 1;
      }

      v137 = v58;
      do
      {
        v130 = v57;
        v136 = v157.__r_.__value_.__l.__size_;
        v59 = v157.__r_.__value_.__r.__words[0];
        if (v157.__r_.__value_.__r.__words[0] != v157.__r_.__value_.__l.__size_)
        {
          v135 = *v57;
          do
          {
            v174 = __PAIR64__(*v59, v135);
            LODWORD(v175) = 1;
            v162 = v174;
            LODWORD(v163) = 1;
            *__p = vdupq_n_s64(1uLL);
            *&__p[16] = 1;
            *&v60 = 0x100000001;
            *(&v60 + 1) = 0x100000001;
            *&__p[24] = v60;
            v187 = 0x100000001uLL;
            v188 = 0uLL;
            *v189 = v60;
            *&v189[16] = 1;
            LOWORD(v190) = 0;
            DWORD1(v190) = 0;
            ZinMirDilatedConv::ConvertDilatedConvInfoStruct(v16 + 544, &v162, __p);
            v61 = *(v139 + 544);
            v62 = *(v139 + 552);
            v63 = *__p;
            v154 = 0x100000001;
            LODWORD(v155) = 1;
            EstimatedFootprintPerCoutElement = ZinKernelGetEstimatedFootprintPerCoutElement(v132 / *&v189[16], 0, &v154, __p, v142, v138, v143, v134, 1.0, v133, v140);
            v65 = *&__p[36];
            v66 = v187;
            v67 = DWORD1(v187);
            v68 = ZinCalculateMaxCompressionOverhead(v143, EstimatedFootprintPerCoutElement, v137, v138, 0, v131, &__p[36], v142, v140);
            MustEnableFillLowerNEFirst = ZinMirConvUtils::MustEnableFillLowerNEFirst(v140);
            if (v68 + vcvtps_s32_f32((((v62 * v61) / (*(&v63 + 1) * v63)) * EstimatedFootprintPerCoutElement) * (v66 * v65 * v67)) + ZinIrCodegenKernelUtil::ZinCalculateMaxScaleBiasZeroPointDuplicationAndRoundUpSize(v137, &__p[36], v143, 0, v142, v137, MustEnableFillLowerNEFirst) <= v143[64])
            {
              std::vector<ZinIrCoordinateInfo>::push_back[abi:ne200100](&v168, &v174);
            }

            ++v59;
            v16 = v139;
          }

          while (v59 != v136);
        }

        v57 = v130 + 1;
      }

      while (v130 + 1 != v125);
      v57 = __src;
      a1 = v126;
    }

    if (v57)
    {
      v166 = v57;
      operator delete(v57);
    }

    std::deque<int>::~deque[abi:ne200100](&v177);
    if (v157.__r_.__value_.__r.__words[0])
    {
      v157.__r_.__value_.__l.__size_ = v157.__r_.__value_.__r.__words[0];
      operator delete(v157.__r_.__value_.__l.__data_);
    }

    if (v170.__begin_)
    {
      v170.__end_ = v170.__begin_;
      operator delete(v170.__begin_);
    }

    if (v150[0])
    {
      v150[1] = v150[0];
      operator delete(v150[0]);
    }

    *v150 = v168;
    v151 = v169;
  }

  ZinIrContext::GetCFGraph(this[4], 0);
  v70 = *(ZinIrContext::GetMemoryPools(this) + 8);
  ZinConvCompositeLayer::GetConv(this, __p);
  v71 = RawOrShared<ZinConvLayer const>::unwrap_ptr(__p);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinConvLayer const*,std::shared_ptr<ZinConvLayer const>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
  if (*(v71 + 71) >= 0)
  {
    v72 = *(v71 + 71);
  }

  else
  {
    v72 = *(v71 + 56);
  }

  std::string::basic_string[abi:ne200100](__p, v72 + 16);
  if (__p[23] >= 0)
  {
    v73 = __p;
  }

  else
  {
    v73 = *__p;
  }

  if (v72)
  {
    if (*(v71 + 71) >= 0)
    {
      v74 = (v71 + 48);
    }

    else
    {
      v74 = *(v71 + 48);
    }

    memmove(v73, v74, v72);
  }

  strcpy(&v73[v72], "_legalizer_test_");
  ZinObjectNameFactory::ZinObjectNameFactory(&v157, __p);
  v75 = a2;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v150[0] == v150[1])
  {
    v91 = 0;
    v89 = v123;
    goto LABEL_131;
  }

  v154 = 0;
  v155 = 0;
  v156 = 0;
  v76 = 0xAAAAAAAAAAAAAAABLL * ((v150[1] - v150[0]) >> 2);
  if (v76 < 1)
  {
    v90 = 3;
    v89 = v123;
  }

  else
  {
    v127 = a1;
    v141 = vadd_s32(*(*(v71 + 160) + 384), 0x100000001);
    v77 = v76 & 0x7FFFFFFF;
    v78 = v77 + 1;
    v79 = 12 * v77 - 12;
    do
    {
      v80 = (v150[0] + v79);
      if (*(v150[0] + v79) >= v141.i32[0] && v80->i32[1] >= v141.i32[1])
      {
        std::vector<ZinIrCoordinateInfo>::push_back[abi:ne200100](&v154, (v150[0] + v79));
      }

      else
      {
        v81 = *(v70 - 8);
        v82 = *v75;
        v83 = *(v71 + 160);
        LODWORD(v148) = *((*(*v81 + 40))(v81, 0) + 104);
        ZinMirDilatedConv::CreateDilatedConvKernel(v82, v83 + 544, &v148, v80, v71, v199);
        v84 = v199[0];
        if (v199[0])
        {
          v85 = *(v199[0] + 33);
          *&v168 = *(v199[0] + 34);
          *(&v168 + 1) = v85;
          v169 = *(v199[0] + 35);
          v86 = (*(*v81 + 40))(v81, 0);
          v87 = *((*(*v71 + 40))(v71, 0) + 72);
          *__p = 0x100000001;
          *&__p[8] = 1;
          ZinGetOutputTensorDimension((v86 + 64), &v168, v84 + 82, v84 + 85, v84 + 88, v87, __p, &v177);
          (*(*v71 + 40))(v71, 0);
          (*(v157.__r_.__value_.__r.__words[0] + 16))(&v162, &v157, 0);
          v198 = 0;
          v160 = 0;
          v161 = 0;
          *__p = 0;
          *&__p[8] = 0;
          *&__p[16] = 0;
          *&__p[23] = 0;
          LOBYTE(v170.__begin_) = 0;
          v170.__end_cap_.__value_ = 0;
          v171 = 0;
          v170.__end_ = 0;
          v172 = 5;
          v173 = 0;
          ZinIrTensor::CreateTensor();
        }

        std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](v199);
        v75 = a2;
      }

      --v78;
      v79 -= 12;
    }

    while (v78 > 1);
    v88 = v154;
    if (v154 != v155)
    {
      std::vector<ZinIrCoordinateInfo>::__assign_with_size[abi:ne200100]<ZinIrCoordinateInfo*,ZinIrCoordinateInfo*>(v150, v154, v155, 0xAAAAAAAAAAAAAAABLL * ((v155 - v154) >> 2));
      a1 = v127;
      v89 = v123;
      v16 = v139;
      v90 = 0;
      v88 = v154;
      if (!v154)
      {
        goto LABEL_130;
      }

      goto LABEL_129;
    }

    v90 = 3;
    a1 = v127;
    v89 = v123;
    v16 = v139;
    if (v154)
    {
LABEL_129:
      v155 = v88;
      operator delete(v88);
    }
  }

LABEL_130:
  v91 = v90 == 0;
LABEL_131:
  v157.__r_.__value_.__r.__words[0] = &unk_1F19D0088;
  if (v158 < 0)
  {
    operator delete(v157.__r_.__value_.__l.__size_);
  }

  if (!v91)
  {
    ZinAssertImpl("Error: Dilated convolution cannot be lowered since all possible space-to-batch implementations exceeded the L2 DMA buffer size");
  }

  v163 = 0;
  v162 = 0;
  v164 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v92 = ZinIrKernel::GetWeightFormat(v89[20]);
  if (ZinMirDilatedConv::DecomposeDilatedConv((v124 + 64), v122 + 64, v142, (v16 + 544), v92, v75, v150, &v162, &v154))
  {
    v93 = 3;
  }

  else
  {
    v160 = 0x100000001;
    LODWORD(v161) = 1;
    v94 = v154;
    if (v154 != v155)
    {
      do
      {
        if (v94->i32[0] == 34)
        {
          v160 = v94[11];
          LODWORD(v161) = v94[12].i32[0];
        }

        v94 += 43;
      }

      while (v94 != v155);
      v96 = v160 != 1 || HIDWORD(v160) != 1;
      if (*(v120 + 828) == 1 && v96)
      {
        ZinAssertImpl("Dynamic shape dilated conv cannot use SpaceToBatch approach");
      }

      if (v96)
      {
        v97 = (*(*v121 + 40))(v121, 0);
        Interleave = ZinIrTensor::GetInterleave(v97);
        if ((v99 & 1) != 0 && Interleave >= 2)
        {
          v100 = v121[4];
          (*(*v121 + 88))(__p, v121, 0);
          v177 = 0uLL;
          v178[0] = 0;
          std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v177.i64, __p, &v192[8], 1uLL);
          v101 = *((*(*v121 + 40))(v121, 0) + 104);
          v149 = 0;
          ZinBuilder::CreateCopyLayer(v100, &v177, v152, v101, &v149);
        }

        v102 = *(v124 + 88) % v160;
        if (v102)
        {
          v103 = v160 - v102;
        }

        else
        {
          v103 = 0;
        }

        v104 = *(v124 + 80) % SHIDWORD(v160);
        if (v104)
        {
          v105 = SHIDWORD(v160) - v104;
        }

        else
        {
          v105 = 0;
        }

        if (v103 | v105)
        {
          memset(&__p[8], 0, 28);
          v188 = 0u;
          v187 = 0u;
          *v189 = -1;
          *&v189[8] = 0u;
          v190 = 0u;
          v191 = 0u;
          memset(v192, 0, 26);
          v193 = 0u;
          v194 = 0u;
          v195 = 0;
          *__p = &unk_1F1A33FD0;
          memset(v196, 0, sizeof(v196));
          v197 = 0;
          v106 = *((*(*v121 + 40))(v121, 0) + 104);
          *&__p[32] = 44;
          DWORD2(v188) = v106;
          HIDWORD(v188) = v106;
          v177 = xmmword_1A75A7770;
          std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(v196, v177.i8, v178, 2uLL);
          v194 = 0u;
          v193 = 0u;
          DWORD1(v193) = v103;
          HIDWORD(v193) = v105;
          ZinConvCompositeLayer::GetDequantizedPadInfo(this, __p);
          (*(*v121 + 88))(&v177, v121, 0);
          memset(&v170, 0, sizeof(v170));
          std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v170, &v177, &v185, 1uLL);
          v107 = (*(*v121 + 40))(v121, 0);
          ZinBuilder::CreatePadLayer(v120, v152, &v170, *(v107 + 104), __p);
        }

        v108 = v121[4];
        (*(*v121 + 88))(__p, v121, 0);
        v177 = 0uLL;
        v178[0] = 0;
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v177.i64, __p, &v192[8], 1uLL);
        ZinIrSpaceToBatchInfo::ZinIrSpaceToBatchInfo(&v170, &v160);
        ZinBuilder::CreateSpaceToBatch(v108, v152, &v177, &v170);
      }
    }

    *__p = *(ZinIrOpLayer::GetInputTensor(this, 0) + 104);
    ZinMirDilatedConv::CreateDilatedConvKernel(v143, v139 + 544, __p, &v160, v89, &v159);
    v109 = v159;
    if (v159)
    {
      v110 = *(v159 + 33);
      v174 = *(v159 + 34);
      v175 = v110;
      v176 = *(v159 + 35);
      v148 = 0;
      v111 = (*(*v121 + 40))(v121, 0);
      v112 = *((*(*v89 + 5))(v89, 0) + 72);
      *__p = 0x100000001;
      *&__p[8] = 1;
      ZinGetOutputTensorDimension((v111 + 64), &v174, v109 + 82, v109 + 85, v109 + 88, v112, __p, &v157);
      v113 = ZinConvCompositeLayer::CreateDecomposedPartition(this, &v159, &v148, 0, 0, &v157, v120, a1, v152, v121);
      if (!v113)
      {
        ZinAssertImpl("Failed to create Composite partition");
      }

      v177 = vdupq_n_s64(1uLL);
      v178[0] = 1;
      *&v114 = 0x100000001;
      *(&v114 + 1) = 0x100000001;
      *&v178[1] = v114;
      v178[3] = 0x100000001;
      memset(&v178[4], 0, 24);
      v179 = v114;
      v180 = 2;
      v181 = 0;
      v182 = 1065353216;
      v183 = 0;
      LODWORD(v184) = 0;
      if (ZinMirDilatedConv::NeedDownsample(&v160, (v139 + 544), &v177))
      {
        v115 = *((*(*v89 + 5))(v89, 0) + 104);
        (*(*v113 + 88))(__p, v113, 0);
        memset(&v170, 0, sizeof(v170));
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v170, __p, &v192[8], 1uLL);
        ZinBuilder::CreatePool(v120, v152, &v170, v177.i8, v115);
      }

      memset(v146, 0, sizeof(v146));
      v147 = 1065353216;
      v116 = ZinIrOpLayerGraph::MoveOutgoingEdges(a1, this, v113, v146, 0, 0);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v146);
      v144.n128_u64[0] = this;
      v145 = 0;
      v117 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v144);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v144, v117);
      v118 = v116 & 1 & ZinIrOpLayerGraph::RemoveNode(a1, &v144, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v144);
      if ((v118 & 1) == 0)
      {
        ZinAssertImpl("ANE internal failure: dilated conv graph manipulation error");
      }

      std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v148);
      v93 = 0;
    }

    else
    {
      v93 = 3;
    }

    std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v159);
  }

  *__p = &v154;
  std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  if (v150[0])
  {
    v150[1] = v150[0];
    operator delete(v150[0]);
  }

  v152[0] = &unk_1F19D0088;
  if (v153 < 0)
  {
    operator delete(v152[1]);
  }

  return v93;
}

void sub_1A69A6588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ZinIrKernel *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  STACK[0x220] = &unk_1F19C3950;
  *(v68 - 128) = v67 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v68 - 128));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x240]);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a49);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a67);
  a66 = &a65;
  std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&a66);
  v70 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v70;
    operator delete(v70);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  a58 = &unk_1F19D0088;
  if (a64 < 0)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

BOOL ZinMirDilatedConv::NeedsExtraPadRemoval(uint64_t a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v5 = a3[12] % v3 || a3[13] % v3 || (v4 = a2[1], a3[14] % v4) || a3[15] % v4 != 0;
  if (*(a1 + 24) % v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 16) % a2[1] != 0;
  }

  return v5 || v6;
}

uint64_t ZinMirDilatedConv::NeedDownsample(int *a1, _DWORD *a2, uint64_t a3)
{
  *(a3 + 84) = 2;
  *(a3 + 92) = 0;
  *(a3 + 96) = 1065353216;
  *(a3 + 100) = 0;
  if (*a1 >= 2 && ((v3 = a2[6], v3 >= 2) ? (v4 = a2[9] == 1) : (v4 = 0), v4))
  {
    *(a3 + 24) = v3;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (a1[1] >= 2)
  {
    v6 = a2[7];
    if (v6 >= 2 && a2[10] == 1)
    {
      *(a3 + 28) = v6;
      v5 = 1;
    }
  }

  if (a1[2] >= 2)
  {
    v8 = a2[8];
    if (v8 >= 2 && a2[11] == 1)
    {
      *(a3 + 32) = v8;
      return 1;
    }
  }

  return v5;
}

uint64_t ZinMirDilatedConv::DecomposeDilationFactorX@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __p = 0;
  v16 = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, (a1 + 1760), (a1 + 1792), 4uLL);
  if (!a2)
  {
    ZinAssertImpl("Error: Dilation factor cannot be 0.");
  }

  if (Factorize(a2, &__p, &v18))
  {
    v5 = 1;
  }

  else
  {
    if (v19 == *(&v18 + 1) || (v6 = (*(&v18 + 1) + 8 * (v20 >> 10)), v7 = *v6, v8 = &(*v6)[4 * (v20 & 0x3FF)], v9 = *(*(&v18 + 1) + (((*(&v20 + 1) + v20) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v20 + 1) + v20) & 0x3FF), v8 == v9))
    {
      v10 = 1;
    }

    else
    {
      v10 = 1;
      do
      {
        v12 = *v8;
        v8 += 4;
        v11 = v12;
        if (v8 - v7 == 4096)
        {
          v13 = v6[1];
          ++v6;
          v7 = v13;
          v8 = v13;
        }

        v10 *= v11;
      }

      while (v8 != v9);
    }

    v5 = a2 / v10;
  }

  std::deque<int>::deque(a3, &v18);
  *(a3 + 48) = v5;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return std::deque<int>::~deque[abi:ne200100](&v18);
}

uint64_t std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::push_back[abi:ne200100](uint64_t a1, const ZinMirDilatedConv::DilatedConvDecomposedDesc *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__emplace_back_slow_path<ZinMirDilatedConv::DilatedConvDecomposedDesc>(a1, a2);
  }

  else
  {
    ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(*(a1 + 8), a2);
    result = v3 + 344;
    *(a1 + 8) = v3 + 344;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__emplace_back_slow_path<ZinMirDilatedConv::DilatedConvDecomposedDesc>(uint64_t a1, const ZinMirDilatedConv::DilatedConvDecomposedDesc *a2)
{
  v2 = 0x82FA0BE82FA0BE83 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xBE82FA0BE82FA0)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x82FA0BE82FA0BE83 * ((*(a1 + 16) - *a1) >> 3) >= 0x5F417D05F417D0)
  {
    v6 = 0xBE82FA0BE82FA0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<LargeStrideConvPoolDecomposedDesc>>(a1, v6);
  }

  v13 = 0;
  v14 = 344 * v2;
  ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc((344 * v2), a2);
  v15 = 344 * v2 + 344;
  v7 = *(a1 + 8);
  v8 = (344 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinMirDilatedConv::DilatedConvDecomposedDesc>,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ZinMirDilatedConv::DilatedConvDecomposedDesc>::~__split_buffer(&v13);
  return v12;
}

void sub_1A69A6FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinMirDilatedConv::DilatedConvDecomposedDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinMirDilatedConv::DilatedConvDecomposedDesc>,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(int a1, ZinMirDilatedConv::DilatedConvDecomposedDesc *a2, ZinMirDilatedConv::DilatedConvDecomposedDesc *a3, ZinMirDilatedConv::DilatedConvDecomposedDesc *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(this, v8);
      v8 = (v8 + 344);
      this = (this + 344);
      v7 -= 344;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(v6);
      v6 = (v6 + 344);
    }
  }
}

void sub_1A69A7084(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 344);
    do
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(v4);
      v4 = (v5 - 344);
      v2 += 344;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ZinMirDilatedConv::DilatedConvDecomposedDesc>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 344;
    ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc((i - 344));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__emplace_unique_key_args<ZinIrDims3D,std::piecewise_construct_t const&,std::tuple<ZinIrDims3D const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, void **a4)
{
  v4 = *std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__find_equal<ZinIrDims3D>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::__find_equal<ZinIrDims3D>(uint64_t a1, void *a2, int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = (a3 + 1);
    v8 = a3 + 2;
    do
    {
      while (1)
      {
        v9 = v4;
        v10 = (v4 + 32);
        v17 = a3;
        v18 = v7;
        v19 = v8;
        v11 = (v4 + 36);
        v12 = (v4 + 40);
        v14 = (v4 + 32);
        v15 = (v4 + 36);
        v16 = (v4 + 40);
        if ((std::__tuple_compare_three_way[abi:ne200100]<int const&,int const&,int const&,int const&,int const&,int const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      v17 = v10;
      v18 = v11;
      v19 = v12;
      v14 = a3;
      v15 = v7;
      v16 = v8;
      if ((std::__tuple_compare_three_way[abi:ne200100]<int const&,int const&,int const&,int const&,int const&,int const&,0ul,1ul,2ul>(&v17, &v14) & 0x80) == 0)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_10:
  *a2 = v9;
  return v5;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<int const&,int const&,int const&,int const&,int const&,int const&,0ul,1ul,2ul>(int **a1, int **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = *a1[1];
    v7 = *a2[1];
    v8 = v6 == v7;
    v5 = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v8)
    {
      v9 = *a1[2];
      v10 = *a2[2];
      v11 = v9 == v10;
      if (v9 < v10)
      {
        LODWORD(v5) = -1;
      }

      else
      {
        LODWORD(v5) = 1;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }
  }

  return v5;
}

void std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__assign_with_size[abi:ne200100]<ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(uint64_t a1, ZinMirDilatedConv::DilatedConvDecomposedDesc *a2, ZinMirDilatedConv::DilatedConvDecomposedDesc *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x82FA0BE82FA0BE83 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__vdeallocate(a1);
    if (a4 <= 0xBE82FA0BE82FA0)
    {
      v9 = 0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x82FA0BE82FA0BE83 * ((*(a1 + 16) - *a1) >> 3) >= 0x5F417D05F417D0)
      {
        v10 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v10 = v9;
      }

      std::vector<LargeStrideConvPoolDecomposedDesc>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x82FA0BE82FA0BE83 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        ZinMirDilatedConv::DilatedConvDecomposedDesc::operator=(v8, v6);
        v6 = (v6 + 344);
        v8 += 344;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 = (v11 - 344);
      ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        ZinMirDilatedConv::DilatedConvDecomposedDesc::operator=(v8, v14);
        v14 = (v14 + 344);
        v8 += 344;
        v13 -= 344;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinMirDilatedConv::DilatedConvDecomposedDesc>,ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(a1, (v6 + v12), a3, v11);
  }
}

void std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc((v3 - 344));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

ZinMirDilatedConv::DilatedConvDecomposedDesc *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinMirDilatedConv::DilatedConvDecomposedDesc>,ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*,ZinMirDilatedConv::DilatedConvDecomposedDesc*>(int a1, ZinMirDilatedConv::DilatedConvDecomposedDesc *a2, ZinMirDilatedConv::DilatedConvDecomposedDesc *a3, ZinMirDilatedConv::DilatedConvDecomposedDesc *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::DilatedConvDecomposedDesc(this, v6);
      v6 = (v6 + 344);
      this = (this + 344);
      v7 -= 344;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1A69A7548(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 344);
    do
    {
      ZinMirDilatedConv::DilatedConvDecomposedDesc::~DilatedConvDecomposedDesc(v4);
      v4 = (v5 - 344);
      v2 += 344;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<int>::__move_assign(void **a1, uint64_t a2)
{
  std::deque<int>::clear(a1);
  std::deque<int>::shrink_to_fit(a1);
  result = std::__split_buffer<int *>::operator=(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<int>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[4] = v6;
}

void std::deque<int>::shrink_to_fit(void **a1)
{
  if (a1[5])
  {
    std::deque<int>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
    std::deque<ZinIrDimension>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  std::__split_buffer<int *>::shrink_to_fit(a1);
}

uint64_t std::deque<int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

void std::__split_buffer<int *>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = (a1[2] - v7);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__split_buffer<int *>::operator=(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<int *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

unint64_t *std::deque<int>::deque(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
  }

  else
  {
    v8 = &(*v7)[4 * (v4 & 0x3FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 10));
    v11 = (*v10 + 4 * (v9 & 0x3FF));
  }

  std::deque<int>::__append<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(a1, v7, v8, v10, v11);
  return a1;
}

void *std::deque<int>::__append<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>,0>(unint64_t *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return std::deque<int>::__append_with_size[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(a1, a2, a3, v5);
}

void *std::deque<int>::__append_with_size[abi:ne200100]<std::__deque_iterator<int,int const*,int const&,int const* const*,long,1024l>>(unint64_t *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 7) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<int>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 10));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v11 & 0x3FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = std::__deque_iterator<ZinIrDimension,ZinIrDimension*,ZinIrDimension&,ZinIrDimension**,long,1024l>::operator+[abi:ne200100](v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 4;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void std::deque<int>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (a1[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 10; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }
}

void sub_1A69A7D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 48);
    std::vector<ZinMirDilatedConv::DilatedConvDecomposedDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::__map_value_compare<ZinIrDims3D,std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>,std::less<ZinIrDims3D>,true>,std::allocator<std::__value_type<ZinIrDims3D,std::vector<ZinTensorDimensions>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t ZinParseRadiusSearchUnit(CFDictionaryRef *a1, uint64_t a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(*a1, @"Params");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
  {
    v8 = CFDictionaryGetValue(v6, @"Radius");
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v9, kCFNumberFloatType, &valuePtr);
        result = 0;
        *(a2 + 80) = valuePtr;
        return result;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseRadiusSearchUnit();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinParseRadiusSearchUnit();
  }

  ZinIrUnitStatus::SetError(a3, @"InvalidParamSyntax");
  return 3;
}

void ZinParseRadiusSearchUnit()
{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing RadiusSearch radius value\n", v0, 2u);
}

{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing RadiusSearch parameter dictionary\n", v0, 2u);
}

uint64_t ANEDebugInfo::DebugInfoSerializer::DebugInfoSerializer(uint64_t this, const ANEDebugInfo::DebugInfoInMem *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

BOOL ANEDebugInfo::DebugInfoSerializer::Alloc(ANEDebugInfo::DebugInfoSerializer *this, unsigned int a2)
{
  v5 = this + 16;
  v3 = *(this + 2);
  v4 = *(v5 + 1);
  v6 = *(this + 2);
  if (v4 != &v3[v6])
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ANEDebugInfo::DebugInfoSerializer::Alloc(result, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }

  if (v3)
  {
    if (&v4[a2] <= v3)
    {
      *(this + 2) = v6 + a2;
      return 1;
    }

    v16 = *(this + 8) + 2 * a2;
    *(this + 8) = v16;
    v17 = v4 - v3;
    v18 = malloc_type_realloc(v3, v16, 0x100004077774924uLL);
    *(this + 2) = v18;
    v19 = &v18[v17];
  }

  else
  {
    v20 = 2 * a2;
    *(this + 8) = v20;
    v18 = malloc_type_malloc(v20, 0x100004077774924uLL);
    v19 = v18;
    *(this + 2) = v18;
  }

  *(this + 3) = v19;
  *(this + 2) += a2;
  if (v18)
  {
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ANEDebugInfo::DebugInfoSerializer::Alloc(result, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  return result;
}

BOOL ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(ANEDebugInfo::DebugInfoSerializer *this)
{
  v1 = *(this + 3) & 7;
  if (!v1)
  {
    return 1;
  }

  v3 = v1 | 0xFFFFFFFFFFFFFFF8;
  do
  {
    ANEDebugInfo::DebugInfoSerializer::Store<char>(this, 0);
  }

  while (!__CFADD__(v3++, 1));
  if (*(this + 3) <= *(this + 2) + *(this + 2))
  {
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    return 0;
  }

  return result;
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<char>(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = v2 + 1;
  v4 = *(a1 + 16) + *(a1 + 8);
  if ((v2 + 1) > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    *v2 = a2;
    ++*(a1 + 24);
  }

  return v3 <= v4;
}

BOOL ANEDebugInfo::DebugInfoSerializer::StoreAttrSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 7) != 0)
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      ANEDebugInfo::DebugInfoSerializer::StoreAttrSize(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v11 = a3;
  if (!ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, a2))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, v11);
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3 = v2 + 1;
  v4 = *(a1 + 16) + *(a1 + 8);
  if ((v2 + 1) > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    *v2 = a2;
    *(a1 + 24) = v3;
  }

  return v3 <= v4;
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocAttr(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t a2, int a3)
{
  v5 = ZinAlignPower2((a3 + 8), 8);
  result = ANEDebugInfo::DebugInfoSerializer::Alloc(a1, v5);
  if (result)
  {

    return ANEDebugInfo::DebugInfoSerializer::StoreAttrSize(a1, a2, v5);
  }

  return result;
}

uint64_t ANEDebugInfo::DebugInfoSerializer::EncodeCU(ANEDebugInfo::DebugInfoSerializer *this)
{
  if (ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)0>(this) && ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2061, 4) && ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, 1) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this))
  {
    v2 = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)8>(this);
    v3 = ZinAlignPower2(*(*this + 92), 8);
    if (v2)
    {
      LOBYTE(v2) = ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2051, v3);
    }
  }

  else
  {
    v3 = ZinAlignPower2(*(*this + 92), 8);
    LOBYTE(v2) = 0;
  }

  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*this);
  v5 = *OutgoingLayers;
  v6 = OutgoingLayers[1];
  while (v5 != v6)
  {
    v7 = *(v5 + 23);
    if (v7 < 0)
    {
      if (!v2)
      {
        goto LABEL_17;
      }

      v8 = *v5;
      v7 = *(v5 + 8);
    }

    else
    {
      if (!v2)
      {
        goto LABEL_17;
      }

      v8 = v5;
    }

    if (ANEDebugInfo::DebugInfoSerializer::Store<char>(this, v8, v7))
    {
      LOBYTE(v2) = ANEDebugInfo::DebugInfoSerializer::Store<char>(this, 0);
      goto LABEL_18;
    }

LABEL_17:
    LOBYTE(v2) = 0;
LABEL_18:
    v5 += 24;
  }

  for (i = v3 - *(*this + 92); i; --i)
  {
    LOBYTE(v2) = v2 && ANEDebugInfo::DebugInfoSerializer::Store<char>(this, 0);
  }

  if (v2 && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this) && ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2049, 4) && ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(this, *(*this + 64)) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this))
  {
    v10 = ANEDebugInfo::DebugInfoSerializer::EncodeProc(this);
  }

  else
  {
    v10 = 0;
  }

  if (*ZinIrLiveIOManager::GetLiveInParams(*this) != 1)
  {
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v10)
  {
    if (!ANEDebugInfo::DebugInfoSerializer::EncodeHwConfigs(this))
    {
      v10 = 0;
      goto LABEL_37;
    }

LABEL_36:
    v10 = ANEDebugInfo::DebugInfoSerializer::EncodeIdentString(this);
  }

LABEL_37:
  v11 = *(ZinIrLiveIOManager::GetLiveInParams(*this) + 1);
  if (!v10 || (v11 & 1) == 0)
  {
    return v10 & (v11 ^ 1u);
  }

  return ANEDebugInfo::DebugInfoSerializer::EncodeMaxLatencyThreshold(this);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)0>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 0))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = v2 + 1;
  v4 = *(a1 + 16) + *(a1 + 8);
  if ((v2 + 1) > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    *v2 = a2;
    *(a1 + 24) = v3;
  }

  return v3 <= v4;
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)8>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<char>(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = *(a1 + 24);
  v4 = &v3[a3];
  v5 = *(a1 + 16) + *(a1 + 8);
  if (v4 > v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    v6 = a3;
    if (a3)
    {
      do
      {
        v7 = *a2++;
        *v3++ = v7;
        --a3;
      }

      while (a3);
      v3 = *(a1 + 24);
    }

    *(a1 + 24) = &v3[v6];
  }

  return v4 <= v5;
}

uint64_t ANEDebugInfo::DebugInfoSerializer::EncodeProc(ANEDebugInfo::DebugInfoSerializer *this)
{
  v2 = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)1>(this) && ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2048, 4) && ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(this, *(*this + 68)) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this);
  v3 = *ZinIrLiveIOManager::GetLiveInParams(*this);
  v4 = v2 & (v3 ^ 1u);
  if (v2 && (v3 & 1) != 0)
  {
    v4 = ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2056, 4) && ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, *(*this + 72)) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this);
  }

  v5 = *(*this + 40);
  for (i = *(*this + 48); v5 != i; v5 += 48)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::Layer*,ANEDebugInfo::DebugInfoInMem::Layer*>(&v8, *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 2));
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<ANEDebugInfo::DebugInfoInMem::TD>::__init_with_size[abi:ne200100]<ANEDebugInfo::DebugInfoInMem::TD*,ANEDebugInfo::DebugInfoInMem::TD*>(&__p, *(v5 + 24), *(v5 + 32), 0x8E38E38E38E38E39 * ((*(v5 + 32) - *(v5 + 24)) >> 3));
    if (v4)
    {
      v4 = ANEDebugInfo::DebugInfoSerializer::EncodeGroup(this, &v8);
    }

    else
    {
      v4 = 0;
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }

  return v4;
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodeHwConfigs(ANEDebugInfo::DebugInfoSerializer *this)
{
  if (!ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)10>(this) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2057, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, **this) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2058, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, *(*this + 8)) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2059, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, *(*this + 24)))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this);
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodeIdentString(ANEDebugInfo::DebugInfoSerializer *this)
{
  if (!ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2063, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(this, *(*this + 88)))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this);
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodeMaxLatencyThreshold(ANEDebugInfo::DebugInfoSerializer *this)
{
  if (!ANEDebugInfo::DebugInfoSerializer::AllocAttr(this, 2064, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(this, *(*this + 80)))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(this);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)10>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 10))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)1>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 1))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

uint64_t ANEDebugInfo::DebugInfoSerializer::EncodeGroup(ANEDebugInfo::DebugInfoSerializer *this, const ANEDebugInfo::DebugInfoInMem::Group *a2)
{
  result = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)9>(this);
  v5 = *a2;
  v6 = *(a2 + 1);
  while (v5 != v6)
  {
    result = (result & 1) != 0 && ANEDebugInfo::DebugInfoSerializer::EncodeSourceLayer(this, v5);
    v5 += 12;
  }

  v8 = *(a2 + 3);
  v7 = *(a2 + 4);
  while (v8 != v7)
  {
    if (result)
    {
      result = ANEDebugInfo::DebugInfoSerializer::EncodeTD(this, v8);
    }

    else
    {
      result = 0;
    }

    v8 += 72;
  }

  return result;
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodePerfStats(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t *a2)
{
  if (!ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)6>(a1) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2052, 8) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, *a2) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2053, 8) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, a2[1]) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2054, 8) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, a2[2]) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2055, 8) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, a2[3]))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)6>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 6))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

uint64_t ANEDebugInfo::DebugInfoSerializer::EncodeTD(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t a2)
{
  v4 = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)5>(a1) && ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2050, 4) && ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, *a2) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
  v5 = *(ZinIrLiveIOManager::GetLiveInParams(*a1) + 1);
  v6 = v4 & (v5 ^ 1);
  if (v4 && (v5 & 1) != 0)
  {
    v6 = ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2062, 4) && ANEDebugInfo::DebugInfoSerializer::Store<BOOL>(a1, *(a2 + 4)) && ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
  }

  v7 = *ZinIrLiveIOManager::GetLiveInParams(*a1);
  v8 = v6 & (v7 ^ 1);
  if (v6 && (v7 & 1) != 0)
  {
    v8 = ANEDebugInfo::DebugInfoSerializer::EncodePerfStats(a1, (a2 + 8));
  }

  v9 = *(ZinIrLiveIOManager::GetLiveInParams(*a1) + 2);
  if (!v8 || (v9 & 1) == 0)
  {
    return v8 & (v9 ^ 1u);
  }

  return ANEDebugInfo::DebugInfoSerializer::EncodePerfTracingInfo(a1, a2);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)5>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 5))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<BOOL>(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = v2 + 1;
  v4 = *(a1 + 16) + *(a1 + 8);
  if ((v2 + 1) > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    *v2 = a2;
    *(a1 + 24) = v3;
  }

  return v3 <= v4;
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodePerfTracingInfo(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t a2)
{
  LOBYTE(result) = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)11>(a1);
  v5 = (a2 + 44);
  v6 = 4;
  do
  {
    if (result)
    {
      result = ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2066, 8);
      if (result)
      {
        result = ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, *(v5 - 1));
        if (result)
        {
          result = ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
          if (result)
          {
            result = ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2067, 8);
            if (result)
            {
              result = ANEDebugInfo::DebugInfoSerializer::Store<unsigned long long>(a1, *v5);
              if (result)
              {
                result = ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
              }
            }
          }
        }
      }
    }

    else
    {
      result = 0;
    }

    v5 += 2;
    --v6;
  }

  while (v6);
  return result;
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)11>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 11))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)9>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 9))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodeSourceLayer(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t a2)
{
  v4 = ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)3>(a1);
  if (v4)
  {
    v4 = ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2048, 4);
    if (v4)
    {
      v4 = ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, *a2);
      if (v4)
      {
        v4 = ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
      }
    }
  }

  if (*(a2 + 8) == 1.0)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else if (!v4 || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2060, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<float>(a1, *(a2 + 8)) || !ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::EncodeOperation(a1, a2);
}

BOOL ANEDebugInfo::DebugInfoSerializer::EncodeOperation(ANEDebugInfo::DebugInfoSerializer *a1, uint64_t a2)
{
  if (!ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)4>(a1) || !ANEDebugInfo::DebugInfoSerializer::AllocAttr(a1, 2048, 4) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, *(a2 + 4)))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord(a1);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)4>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 4))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::AllocTag<(ANEDebugInfo::TAG)3>(ANEDebugInfo::DebugInfoSerializer *a1)
{
  if (!ANEDebugInfo::DebugInfoSerializer::Alloc(a1, 8u) || !ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 3))
  {
    return 0;
  }

  return ANEDebugInfo::DebugInfoSerializer::Store<unsigned int>(a1, 8);
}

BOOL ANEDebugInfo::DebugInfoSerializer::Store<float>(uint64_t a1, float a2)
{
  v2 = *(a1 + 24);
  v3 = v2 + 1;
  v4 = *(a1 + 16) + *(a1 + 8);
  if ((v2 + 1) > v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEDebugInfo::DebugInfoSerializer::AlignDataWritePtrAfterRecord();
    }
  }

  else
  {
    *v2 = a2;
    *(a1 + 24) = v3;
  }

  return v3 <= v4;
}

void ANEDebugInfo::DebugInfoSerializer::Alloc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Previous allocation was not used.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "malloc/realloc failed.", a5, a6, a7, a8, v8);
}

uint64_t ZinParseScaledEWUnit(const __CFDictionary *a1, ZinIrScaledEWUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    v12 = @"InvalidParamSyntax";
LABEL_11:
    ZinIrUnitStatus::SetError(a3, v12);
    return 3;
  }

  v8 = CFDictionaryGetValue(v6, @"Type");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFStringGetTypeID()))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseScaledEWUnit();
    }

LABEL_10:
    v12 = @"InvalidUnitScaledElementWiseType";
    goto LABEL_11;
  }

  if (!ZinCFStringEquals(v9, @"Add"))
  {
    if (ZinCFStringEquals(v9, @"Mult"))
    {
      v11 = 2;
      goto LABEL_21;
    }

    if (ZinCFStringEquals(v9, @"Max"))
    {
      v11 = 4;
      goto LABEL_21;
    }

    if (ZinCFStringEquals(v9, @"Min"))
    {
      v11 = 5;
      goto LABEL_21;
    }

    if (ZinCFStringEquals(v9, @"SumSquare"))
    {
      v11 = 3;
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseScaledEWUnit();
    }

    goto LABEL_10;
  }

  v11 = 1;
LABEL_21:
  *(a2 + 20) = v11;
  v15 = 0;
  v14 = 0;
  result = ZinGetFloatFormat(v6, @"PreScaleType", &v15 + 1, a3);
  if (result != 3)
  {
    result = ZinGetFloatFormat(v6, @"ScaleType", &v15, a3);
    if (result != 3)
    {
      if (!CFDictionaryGetValue(v6, @"BiasType"))
      {
LABEL_26:
        ZinParseFloatingPoint(v6, @"PreScale", &v15 + 1, a2 + 22, 1.0);
        ZinParseFloatingPoint(v6, @"Scale", &v15, a2 + 21, 1.0);
        ZinParseBoolean(v6, @"NegateSrc1", a2 + 96);
        ZinParseBoolean(v6, @"NegateSrc2", a2 + 97);
        return 0;
      }

      result = ZinGetFloatFormat(v6, @"BiasType", &v14, a3);
      if (result != 3)
      {
        ZinParseFloatingPoint(v6, @"Bias", &v14, a2 + 23, 0.0);
        goto LABEL_26;
      }
    }
  }

  return result;
}

void ZinParseScaledEWUnit()
{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown scaled element wise type!\n", v0, 2u);
}

{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing required type in Scaled Element-Wise parameter dictionary.\n", v0, 2u);
}

void CreateRuntimeBindBufferTextOperationDescription(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  std::operator+<char>();
  v6 = std::string::append(&v13, "_ane_", 5uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v12, *a3);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeBindBuffer,std::allocator<ZinRtOperationRuntimeBindBuffer>,std::string,0>();
}

void sub_1A69A9AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  v37 = *(v35 - 72);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeBindBufferTextOperationNodes(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v11 = *(a3 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  v12 = *(a3 + 48);
  v19[2] = *(a3 + 32);
  v19[3] = v12;
  v19[4] = *(a3 + 64);
  v20 = *(a3 + 80);
  v13 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v13;
  CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeBindBufferTextOperationDescription, v11, a4, a5, &v21, v19, a6);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v14 = *a6;
  v15 = a6[1];
  if (*a6 != v15)
  {
    v16 = *a1;
    do
    {
      v17 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v16, v14);
      v14 += 2;
      if (v14 == v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }
    }

    while ((v18 & 1) != 0);
    if ((v17 & 1) == 0)
    {
      ZinAssertImpl("Failed to add text buffer bind nodes to graph");
    }
  }
}

void CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = a3[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v9 = a3[1];
    if (v9)
    {
      v10 = a3 + 1;
      do
      {
        v11 = v9[4];
        v12 = v11 >= 0x3FFF;
        v13 = v11 < 0x3FFF;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 != a3 + 1 && !(v10[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v26 = *a5;
    v27 = *(a5 + 2);
    *(a5 + 8) = 0uLL;
    *a5 = 0;
    v14 = a6[3];
    v22 = a6[2];
    v23 = v14;
    v24 = a6[4];
    v25 = *(a6 + 10);
    v15 = a6[1];
    v20 = *a6;
    v21 = v15;
    CreateBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(&v28);
  }

  *__p = *a5;
  v19 = *(a5 + 2);
  *(a5 + 8) = 0uLL;
  *a5 = 0;
  v16 = a6[3];
  v22 = a6[2];
  v23 = v16;
  v24 = a6[4];
  v25 = *(a6 + 10);
  v17 = a6[1];
  v20 = *a6;
  v21 = v17;
  CreateNonBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(a1, a3, a4, __p, &v20, &v28);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a7);
  *a7 = v28;
  a7[2] = v29;
  v29 = 0;
  v28 = 0uLL;
  *&v20 = &v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69A9EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v15 - 48) = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v15 - 48));
  _Unwind_Resume(a1);
}

void CodegenRuntimeBindNonMutableKernel(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  std::operator+<char>();
  v9 = std::string::append(&v23, "_", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 23);
  }

  else
  {
    v13 = *(a4 + 8);
  }

  v14 = std::string::append(&v24, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v25, "_ane_", 5uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a6);
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

  v20 = std::string::append(&v26, p_p, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v28 = v20->__r_.__value_.__r.__words[2];
  v27 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeBindBuffer,std::allocator<ZinRtOperationRuntimeBindBuffer>,std::string &,0>();
}

void sub_1A69AA10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v43 = *(v40 + 8);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocMutableKernelOperationDescription(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (*a6 == 0x3FFF)
  {
    std::string::basic_string[abi:ne200100]<0>(&v25, "_shared");
  }

  else
  {
    std::to_string(&v24, *a6);
    v8 = std::string::insert(&v24, 0, "_ane_", 5uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v26 = v8->__r_.__value_.__r.__words[2];
    v25 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char>();
  v10 = std::string::append(&v21, "_", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a4 + 23);
  if (v12 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  if (v12 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  v15 = std::string::append(&v22, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v17 = &v25;
  }

  else
  {
    v17 = v25;
  }

  if (v26 >= 0)
  {
    v18 = HIBYTE(v26);
  }

  else
  {
    v18 = *(&v25 + 1);
  }

  v19 = std::string::append(&v23, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeAlloc,std::allocator<ZinRtOperationRuntimeAlloc>,std::string &,0>();
}

void sub_1A69AA3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocV2MutableKernelOperationDescription(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (*a4 == 0x3FFF)
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "_shared");
  }

  else
  {
    std::to_string(&v22, *a4);
    v6 = std::string::insert(&v22, 0, "_ane_", 5uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v24 = v6->__r_.__value_.__r.__words[2];
    v23 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char>();
  v8 = std::string::append(&v19, "_", 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&v20, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v15 = &v23;
  }

  else
  {
    v15 = v23;
  }

  if (v24 >= 0)
  {
    v16 = HIBYTE(v24);
  }

  else
  {
    v16 = *(&v23 + 1);
  }

  v17 = std::string::append(&v21, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  CreateRuntimeAllocV2Operation();
}

void sub_1A69AA66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocMutableKernelOperationNodes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a1, *(a1 + 8));
  }

  else
  {
    v16 = *a1;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,unsigned char,ZinBarIdFormat,std::string const&,unsigned long long,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,unsigned char,ZinBarIdFormat,std::string,unsigned long long>(CreateRuntimeAllocMutableKernelOperationDescription, a6, a7, &v16, a2, a3, &__p, a5, a8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1A69AA7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,unsigned char,ZinBarIdFormat,std::string const&,unsigned long long,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,unsigned char,ZinBarIdFormat,std::string,unsigned long long>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v10 = a3[2];
  if (v10 != 1)
  {
    if (!v10)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v11 = a3[1];
    if (v11)
    {
      v12 = a3 + 1;
      do
      {
        v13 = v11[4];
        v14 = v13 >= 0x3FFF;
        v15 = v13 < 0x3FFF;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 != a3 + 1 && !(v12[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v22 = *a4;
    v23 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    *__p = *a7;
    v21 = *(a7 + 16);
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,std::string const&,std::string const&,ZinSinglePlaneLinearIODescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,std::string,std::string,ZinSinglePlaneLinearIODescriptor,ZinRtCodegenParams>(&v24);
  }

  *v18 = *a4;
  v19 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  *v16 = *a7;
  v17 = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,std::string const&,std::string const&,ZinSinglePlaneLinearIODescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,std::string,std::string,ZinSinglePlaneLinearIODescriptor,ZinRtCodegenParams>(a1, a3, v18, a5, a6, v16, a8, &v24);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a9);
  *a9 = v24;
  a9[2] = v25;
  v25 = 0;
  v24 = 0uLL;
  v26 = &v24;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1A69AAA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  *(v29 - 48) = v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v29 - 48));
  _Unwind_Resume(a1);
}

void CreateRuntimeAllocV2MutableKernelOperationNodes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a1, *(a1 + 8));
  }

  else
  {
    v12 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,unsigned long long,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,unsigned long long>(CreateRuntimeAllocV2MutableKernelOperationDescription, a4, a5, &v12, &__p, a3, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1A69AAB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,unsigned long long,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,unsigned long long>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = a3[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v9 = a3[1];
    if (v9)
    {
      v10 = a3 + 1;
      do
      {
        v11 = v9[4];
        v12 = v11 >= 0x3FFF;
        v13 = v11 < 0x3FFF;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 != a3 + 1 && !(v10[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v20 = *a4;
    v21 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    *__p = *a5;
    v19 = *(a5 + 16);
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(&v22);
  }

  *v16 = *a4;
  v17 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  *v14 = *a5;
  v15 = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(a1, a3, v16, v14, a6, &v22);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a7);
  *a7 = v22;
  a7[2] = v23;
  v23 = 0;
  v22 = 0uLL;
  v24 = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1A69AAD60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  *(v29 - 48) = v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v29 - 48));
  _Unwind_Resume(a1);
}

void CreateRuntimePatchMutableKernelOperationDescription(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, unint64_t *a8)
{
  if (*a8 == 0x3FFF)
  {
    std::string::basic_string[abi:ne200100]<0>(&v27, "_shared");
  }

  else
  {
    std::to_string(&v26, *a8);
    v10 = std::string::insert(&v26, 0, "_ane_", 5uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v28 = v10->__r_.__value_.__r.__words[2];
    v27 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char>();
  v12 = std::string::append(&v23, "_", 1uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  v17 = std::string::append(&v24, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v19 = &v27;
  }

  else
  {
    v19 = v27;
  }

  if (v28 >= 0)
  {
    v20 = HIBYTE(v28);
  }

  else
  {
    v20 = *(&v27 + 1);
  }

  v21 = std::string::append(&v25, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimePatchMutableKernel,std::allocator<ZinRtOperationRuntimePatchMutableKernel>,std::string &,0>();
}

void sub_1A69AB040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimePatchMutableKernelOperationNodes(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>, void *a9)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a1, *(a1 + 8));
  }

  else
  {
    v20 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
  }

  else
  {
    v19 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
  }

  else
  {
    v18 = *a3;
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(CreateRuntimePatchMutableKernelOperationDescription, a8, a9, &v20, &v19, &v18, a4, a5, x8_0, a6, a7);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1A69AB228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unsigned int a10, unsigned __int8 a11)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v12 = a3[2];
  if (v12 != 1)
  {
    if (!v12)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v13 = a3[1];
    if (v13)
    {
      v14 = a3 + 1;
      do
      {
        v15 = v13[4];
        v16 = v15 >= 0x3FFF;
        v17 = v15 < 0x3FFF;
        if (v16)
        {
          v14 = v13;
        }

        v13 = v13[v17];
      }

      while (v13);
      if (v14 != a3 + 1 && !(v14[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v30 = *a4;
    v31 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v28 = *a5;
    v29 = *(a5 + 2);
    *a5 = 0uLL;
    *(a5 + 2) = 0;
    v18 = *a6;
    v27 = *(a6 + 2);
    *__p = v18;
    *(a6 + 8) = 0uLL;
    *a6 = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(&v32, a11);
  }

  *v24 = *a4;
  v25 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  *v22 = *a5;
  v23 = *(a5 + 2);
  *a5 = 0uLL;
  *(a5 + 2) = 0;
  v19 = *a6;
  v21 = *(a6 + 2);
  *v20 = v19;
  *(a6 + 8) = 0uLL;
  *a6 = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(a1, a3, v24, v22, v20, a7, a8, a10, &v32, a11);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a9);
  *a9 = v32;
  a9[2] = v33;
  v33 = 0;
  v32 = 0uLL;
  v34 = &v32;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v34);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1A69AB4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>();
  *(v32 - 40) = v31;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v32 - 40));
  _Unwind_Resume(a1);
}

void CodegenRuntimeBindConstTensor(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = a4[1];
  if (v11)
  {
    v12 = a4 + 1;
    do
    {
      v13 = v11[4];
      v14 = v13 >= 0x3FFF;
      v15 = v13 < 0x3FFF;
      if (v14)
      {
        v12 = v11;
      }

      v11 = v11[v15];
    }

    while (v11);
    if (v12 != a4 + 1 && !(v12[4] >> 14))
    {
      ZinAssertImpl("Error: No shared CONST supported yet", a2);
    }
  }

  v16 = *(a3 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  v17 = *(a3 + 48);
  v24[2] = *(a3 + 32);
  v24[3] = v17;
  v24[4] = *(a3 + 64);
  v25 = *(a3 + 80);
  v18 = *(a3 + 16);
  v24[0] = *a3;
  v24[1] = v18;
  CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeBindBufferConstTensor, v16, a4, a5, &v26, v24, a6);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v19 = *a6;
  v20 = a6[1];
  if (*a6 != v20)
  {
    v21 = *a1;
    do
    {
      v22 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v21, v19);
      v19 += 2;
      if (v19 == v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }
    }

    while ((v23 & 1) != 0);
    if ((v22 & 1) == 0)
    {
      ZinAssertImpl("Failed to add const buffer bind nodes to graph");
    }
  }
}

void CreateRuntimeBindBufferConstTensor(void **a2@<X1>, unint64_t *a3@<X2>, void *a5@<X8>)
{
  PrivatePool = ZinIrMemoryPools::GetPrivatePool(a2[1], 0, *a3);
  ZinIrMemoryPool::GetSections(PrivatePool, 0, __p);
  v9 = v24;
  std::__list_imp<ZinIrSection *>::clear(__p);
  if (v9)
  {
    v10 = ZinIrMemoryPools::GetPrivatePool(a2[1], 0, *a3);
  }

  else
  {
    v18 = a2[1][5];
    if (!v18)
    {
      goto LABEL_15;
    }

    ZinIrMemoryPool::GetSections(v18, 0, __p);
    v19 = v24;
    std::__list_imp<ZinIrSection *>::clear(__p);
    if (!v19)
    {
      goto LABEL_15;
    }

    v10 = v18;
  }

  ZinIrMemoryPool::GetSections(v10, 0, __p);
  v11 = *(__p[1] + 2);
  std::__list_imp<ZinIrSection *>::clear(__p);
  if (v11 && *(v11 + 32))
  {
    std::operator+<char>();
    v12 = std::string::append(&v21, "_ane_", 5uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v20, *a3);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v20;
    }

    else
    {
      v14 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v22, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v24 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeBindBuffer,std::allocator<ZinRtOperationRuntimeBindBuffer>,std::string,0>();
  }

LABEL_15:
  *a5 = 0;
  a5[1] = 0;
}

void sub_1A69ABA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(exception_object);
}

void CodegenRuntimeBindLiveInParamNodes(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 24);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  if (ZinIrBindings::GetLiveInParamDescriptor(v7, &v23))
  {
    ZinAssertImpl("Error: Failed to get live in params", a1);
  }

  v8 = v23;
  if (v23 != v24)
  {
    do
    {
      GetAneIndicesForLiveInParam(v8 + 8, a3, v33);
      v9 = *(a3 + 72);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
      }

      else
      {
        v31 = *a2;
      }

      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, v8[4], v8[5]);
      }

      else
      {
        v30 = *(v8 + 4);
      }

      v27 = *(v8 + 14);
      if (*(v8 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v8[8], v8[9]);
      }

      else
      {
        __p = *(v8 + 8);
      }

      v29 = v8[11];
      v10 = *(a3 + 48);
      v25[2] = *(a3 + 32);
      v25[3] = v10;
      v25[4] = *(a3 + 64);
      v26 = *(a3 + 80);
      v11 = *(a3 + 16);
      v25[0] = *a3;
      v25[1] = v11;
      CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(CreateRuntimeBindLiveInParamOp, v9, v33, &v31, &v30, &v27, v25, v32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v13 = v32[0];
      v12 = v32[1];
      while (v13 != v12)
      {
        std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a4, v13);
        v13 += 16;
      }

      *&v25[0] = v32;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v25);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v33, v33[1]);
      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v24);
  }

  v17 = *a4;
  v18 = *(a4 + 8);
  if (*a4 != v18)
  {
    v19 = *a1;
    do
    {
      v20 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v19, v17);
      v17 += 2;
      if (v17 == v18)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }
    }

    while ((v21 & 1) != 0);
    if ((v20 & 1) == 0)
    {
      ZinAssertImpl("Failed to add param bind nodes to graph", a1);
    }
  }

  std::__tree<std::__value_type<std::string,WeightFileProperties>,std::__map_value_compare<std::string,std::__value_type<std::string,WeightFileProperties>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,WeightFileProperties>>>::destroy(&v23, v24[0]);
}

void sub_1A69ABD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::__tree<std::__value_type<std::string,WeightFileProperties>,std::__map_value_compare<std::string,std::__value_type<std::string,WeightFileProperties>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,WeightFileProperties>>>::destroy(&a10, a11);
  *(v38 - 144) = v37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v38 - 144));
  _Unwind_Resume(a1);
}

void CreateRuntimeBindLiveInParamOp(void x0_0, const std::string *a1, uint64_t a2, void x3_0, unint64_t *a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v12, "_ane_", 5uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a3);
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

  v9 = std::string::append(&v13, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15 = v9->__r_.__value_.__r.__words[2];
  *v14 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeBindParam,std::allocator<ZinRtOperationRuntimeBindParam>,std::string &,0>();
}

void sub_1A69ABF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeBindIOOps(uint64_t *a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  CreateRuntimeBindIOSinglePlaneUncompressed(a2, a3, &v19);
  CreateRuntimeBindIOCompressed(a2, a3, &v17);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::reserve(a4, ((v18 - v17) >> 4) + ((v20 - v19) >> 4));
  v8 = v19;
  v9 = v20;
  while (v8 != v9)
  {
    std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a4, v8);
    v8 += 16;
  }

  v10 = v17;
  v11 = v18;
  while (v10 != v11)
  {
    std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a4, v10);
    v10 += 2;
  }

  v12 = *a4;
  v13 = *(a4 + 8);
  if (*a4 != v13)
  {
    v14 = *a1;
    do
    {
      v15 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v14, v12);
      v12 += 2;
      if (v12 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }
    }

    while ((v16 & 1) != 0);
    if ((v15 & 1) == 0)
    {
      ZinAssertImpl("Failed to add IO bind nodes to graph");
    }
  }

  v21 = &v17;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v17 = &v19;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_1A69AC138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void CreateRuntimeLoadOperationNodes(uint64_t *a1@<X0>, int a3@<W2>, void *a5@<X4>, ZinRtOperationNode **a6@<X5>, uint64_t a8@<X8>)
{
  v56 = 0;
  v57 = 0;
  v55 = &v56;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = 0;
  std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::reserve(a8, a5[2]);
  v54 = 0uLL;
  if (a3)
  {
    v50.__r_.__value_.__s.__data_[0] = 1;
    std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
  }

  v43 = a1;
  Operations = ZinRtOperationNode::GetOperations(*a6);
  v14 = *Operations;
  v12 = Operations + 1;
  v13 = v14;
  if (v14 != v12)
  {
    v15 = a5 + 1;
    v44 = v12;
    do
    {
      v16 = *a5;
      if (*a5 != v15)
      {
        do
        {
          v17 = v16[4];
          DeviceId = ZinRtOperation::GetDeviceId(v13[4]);
          v19 = DeviceId == 0x3FFF || v17 == DeviceId;
          if (v19)
          {
            v20 = v13[4];
            std::operator+<char>();
            v21 = std::string::append(&v48, "_", 1uLL);
            v22 = *&v21->__r_.__value_.__l.__data_;
            v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
            *&v49.__r_.__value_.__l.__data_ = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            v23 = *(v20 + 63);
            if (v23 >= 0)
            {
              v24 = (v20 + 40);
            }

            else
            {
              v24 = *(v20 + 40);
            }

            if (v23 >= 0)
            {
              v25 = *(v20 + 63);
            }

            else
            {
              v25 = *(v20 + 48);
            }

            v26 = std::string::append(&v49, v24, v25);
            v27 = *&v26->__r_.__value_.__l.__data_;
            v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v50.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = std::string::append(&v50, "_ane_", 5uLL);
            v29 = *&v28->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v47, v17);
            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v47;
            }

            else
            {
              v30 = v47.__r_.__value_.__r.__words[0];
            }

            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v47.__r_.__value_.__l.__size_;
            }

            v32 = std::string::append(&v51, v30, size);
            v33 = *&v32->__r_.__value_.__l.__data_;
            v53 = v32->__r_.__value_.__r.__words[2];
            v52 = v33;
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }

            v50.__r_.__value_.__r.__words[0] = v17;
            CreateRuntimeLoadOperation();
          }

          v34 = v16[1];
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v16[2];
              v19 = *v35 == v16;
              v16 = v35;
            }

            while (!v19);
          }

          v16 = v35;
        }

        while (v35 != v15);
      }

      v36 = v13[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v13[2];
          v19 = *v37 == v13;
          v13 = v37;
        }

        while (!v19);
      }

      v13 = v37;
    }

    while (v37 != v44);
  }

  if (v57 != a5[2])
  {
    ZinAssertImpl("Could not create load operations for all requested ANEs");
  }

  v38 = *a8;
  v39 = *(a8 + 8);
  if (*a8 != v39)
  {
    v40 = *v43;
    do
    {
      v41 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v40, v38);
      v38 += 2;
      if (v38 == v39)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }
    }

    while ((v42 & 1) != 0);
    if (!v41)
    {
      ZinAssertImpl("Failed to add load nodes to graph");
    }
  }

  if (*(&v54 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54 + 1));
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v55, v56);
}

void sub_1A69AC5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  v48 = *(v46 - 120);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  *(v46 - 160) = a13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v46 - 160));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v46 - 112, *(v46 - 104));
  _Unwind_Resume(a1);
}

void CreateRuntimeLoadOperationNodesPerMap(uint64_t *a1@<X0>, int a2@<W1>, ZinRtOperationNode ***a4@<X3>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v7 = *a4;
  v8 = a4[1];
  if (*a4 != v8)
  {
    do
    {
      v22[0] = 0;
      v22[1] = 0;
      v21 = v22;
      if (a2)
      {
        Operations = ZinRtOperationNode::GetOperations(*v7);
        v14 = Operations + 1;
        v13 = *Operations;
        if (*Operations != Operations + 1)
        {
          do
          {
            DeviceId = ZinRtOperation::GetDeviceId(v13[4]);
            std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,unsigned long>>(&v21, &DeviceId, &DeviceId);
            v15 = v13[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v13[2];
                v17 = *v16 == v13;
                v13 = v16;
              }

              while (!v17);
            }

            v13 = v16;
          }

          while (v16 != v14);
        }
      }

      else
      {
        DeviceId = ZinIrAsyncFunction::GetExit(*v7);
        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,unsigned long>>(&v21, &DeviceId, &DeviceId);
      }

      CreateRuntimeLoadOperationNodes(a1, a2, &v21, v7, &DeviceId);
      v18 = *(&DeviceId + 1);
      for (i = DeviceId; i != v18; i += 16)
      {
        std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a7, i);
      }

      p_DeviceId = &DeviceId;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_DeviceId);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v21, v22[0]);
      v7 += 2;
    }

    while (v7 != v8);
  }
}

void sub_1A69AC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void *a14)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a13, a14);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void CreateRuntimeLoadImmediateOperationNodes(uint64_t *a1@<X0>, int a3@<W2>, void *a5@<X4>, ZinIrAsyncFunction ***a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v25 = 0uLL;
  if (a3)
  {
    v20.__r_.__value_.__s.__data_[0] = 1;
    std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
  }

  if (*a5 != a5 + 1)
  {
    v24 = *(*a5 + 32);
    std::operator+<char>();
    v8 = std::string::append(&v20, "_ane_", 5uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v19, v24);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v19;
    }

    else
    {
      v10 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v21, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v23 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    CreateRuntimeLoadImmediateOperation();
  }

  v15 = *a8;
  v14 = a8[1];
  if (*a8 != v14)
  {
    v16 = *a1;
    do
    {
      v17 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v16, v15);
      v15 += 2;
      if (v15 == v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }
    }

    while ((v18 & 1) != 0);
    if ((v17 & 1) == 0)
    {
      ZinAssertImpl("Failed to add load immediate nodes to graph");
    }
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }
}

void sub_1A69ACB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  v39 = *(v37 - 104);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  __p = a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CreateRuntimeStoreOperationNodes(uint64_t *a1@<X0>, int a3@<W2>, void *a5@<X4>, ZinRtOperationNode **a6@<X5>, ZinRtOperationNode **a7@<X6>, uint64_t a8@<X8>)
{
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = 0;
  std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::reserve(a8, a5[2]);
  v58 = 0uLL;
  if (a3)
  {
    v54.__r_.__value_.__s.__data_[0] = 1;
    std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
  }

  Name = ZinRtOperationNode::GetName(*a7);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *Name, *(Name + 8));
  }

  else
  {
    v13 = *Name;
    v57.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v57.__r_.__value_.__l.__data_ = v13;
  }

  v46 = a1;
  Operations = ZinRtOperationNode::GetOperations(*a6);
  v17 = *Operations;
  v15 = Operations + 1;
  v16 = v17;
  if (v17 != v15)
  {
    v18 = a5 + 1;
    v47 = v15;
    do
    {
      v19 = *a5;
      if (*a5 != v18)
      {
        do
        {
          v20 = v19[4];
          DeviceId = ZinRtOperation::GetDeviceId(v16[4]);
          v22 = DeviceId == 0x3FFF || v20 == DeviceId;
          if (v22)
          {
            v23 = v16[4];
            std::operator+<char>();
            v24 = std::string::append(&v51, "_", 1uLL);
            v25 = *&v24->__r_.__value_.__l.__data_;
            v52.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
            *&v52.__r_.__value_.__l.__data_ = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            v26 = *(v23 + 63);
            if (v26 >= 0)
            {
              v27 = (v23 + 40);
            }

            else
            {
              v27 = *(v23 + 40);
            }

            if (v26 >= 0)
            {
              v28 = *(v23 + 63);
            }

            else
            {
              v28 = *(v23 + 48);
            }

            v29 = std::string::append(&v52, v27, v28);
            v30 = *&v29->__r_.__value_.__l.__data_;
            v53.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
            *&v53.__r_.__value_.__l.__data_ = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            v31 = std::string::append(&v53, "_ane_", 5uLL);
            v32 = *&v31->__r_.__value_.__l.__data_;
            v54.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
            *&v54.__r_.__value_.__l.__data_ = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v50, v20);
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v50;
            }

            else
            {
              v33 = v50.__r_.__value_.__r.__words[0];
            }

            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v50.__r_.__value_.__l.__size_;
            }

            v35 = std::string::append(&v54, v33, size);
            v36 = *&v35->__r_.__value_.__l.__data_;
            v56 = v35->__r_.__value_.__r.__words[2];
            *__p = v36;
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v50.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v54.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            v53.__r_.__value_.__r.__words[0] = v20;
            CreateRuntimeStoreOperation();
          }

          v37 = v19[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v19[2];
              v22 = *v38 == v19;
              v19 = v38;
            }

            while (!v22);
          }

          v19 = v38;
        }

        while (v38 != v18);
      }

      v39 = v16[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v16[2];
          v22 = *v40 == v16;
          v16 = v40;
        }

        while (!v22);
      }

      v16 = v40;
    }

    while (v40 != v47);
  }

  if (v61 != a5[2])
  {
    ZinAssertImpl("Could not create store operations for all requested ANEs", a1);
  }

  v41 = *a8;
  v42 = *(a8 + 8);
  if (*a8 != v42)
  {
    v43 = *v46;
    do
    {
      v44 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v43, v41);
      v41 += 2;
      if (v41 == v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }
    }

    while ((v45 & 1) != 0);
    if (!v44)
    {
      ZinAssertImpl("Failed to add store nodes to graph", v46);
    }
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (*(&v58 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v58 + 1));
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v59, v60);
}

void sub_1A69AD07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v55 = *(v53 - 120);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  *(v53 - 160) = a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v53 - 160));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v53 - 112, *(v53 - 104));
  _Unwind_Resume(a1);
}

void CreateRuntimeStoreOperationNodesPerMap(uint64_t *a1@<X0>, _BYTE *a2@<X1>, ZinIrAsyncFunction ***a4@<X3>, void *a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v8 = *a4;
  v9 = a4[1];
  if (*a4 != v9)
  {
    v12 = a6;
    do
    {
      Exit = ZinIrAsyncFunction::GetExit(*v8);
      DeviceId = Exit;
      v26 = 0;
      v27 = v12;
      std::map<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>::map[abi:ne200100](v23, &DeviceId, 1);
      if (a2[72] == 1)
      {
        Operations = ZinRtOperationNode::GetOperations(*v8);
        v16 = Operations + 1;
        v15 = *Operations;
        if (*Operations != Operations + 1)
        {
          do
          {
            DeviceId = ZinRtOperation::GetDeviceId(v15[4]);
            v26 = 0;
            v27 = v12;
            std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::tuple<unsigned long,unsigned char>>>(v23, &DeviceId, &DeviceId);
            v17 = v15[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v15[2];
                v19 = *v18 == v15;
                v15 = v18;
              }

              while (!v19);
            }

            v15 = v18;
          }

          while (v18 != v16);
        }
      }

      else
      {
        DeviceId = Exit;
        v26 = 0;
        v27 = v12;
        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::tuple<unsigned long,unsigned char>>>(v23, &DeviceId, &DeviceId);
      }

      CreateRuntimeStoreOperationNodes(a1, a2[72], v23, v8, (*a5 + 16 * Exit), &DeviceId);
      v21 = DeviceId;
      v20 = v26;
      while (v21 != v20)
      {
        std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a7, v21);
        v21 += 16;
      }

      p_DeviceId = &DeviceId;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&p_DeviceId);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v23, v23[1]);
      v8 += 2;
    }

    while (v8 != v9);
  }
}

void sub_1A69AD36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void *a12)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a11, a12);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void CreateRuntimeStoreImmediateOperationNodes(uint64_t *a1@<X0>, int a3@<W2>, void *a5@<X4>, ZinRtOperationNode **a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a3;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v33 = 0uLL;
  if (a3)
  {
    v28.__r_.__value_.__s.__data_[0] = 1;
    std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
  }

  Name = ZinRtOperationNode::GetName(*a8);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *Name, *(Name + 8));
  }

  else
  {
    v12 = *Name;
    v32.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v32.__r_.__value_.__l.__data_ = v12;
  }

  if (*a5 != a5 + 1)
  {
    __val = *(*a5 + 32);
    std::operator+<char>();
    v13 = std::string::append(&v27, "_ane_", 5uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v26, __val);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v26;
    }

    else
    {
      v15 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v28, v15, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v30 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    CreateRuntimeStoreImmediateOperation();
  }

  if (v10)
  {
    std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a9, &v33);
  }

  v19 = *a9;
  v20 = *(a9 + 8);
  if (*a9 != v20)
  {
    v21 = *a1;
    do
    {
      v22 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v21, v19);
      v19 += 2;
      if (v19 == v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }
    }

    while ((v23 & 1) != 0);
    if ((v22 & 1) == 0)
    {
      ZinAssertImpl("Failed to add store immediate nodes to graph");
    }
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }
}

void sub_1A69AD6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  v46 = *(v44 + 40);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  __p = a10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CreateRuntimeTextMapOperationNodes(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*(a3 + 73) == 1)
  {
    *&v22 = 0x3FFFLL;
    CreateRuntimeMapTextOperation(a2, a3, &v22);
  }

  v11 = *(a3 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, *(a2 + 8));
  }

  else
  {
    v21 = *a2;
  }

  v12 = *(a3 + 48);
  v19[2] = *(a3 + 32);
  v19[3] = v12;
  v19[4] = *(a3 + 64);
  v20 = *(a3 + 80);
  v13 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v13;
  CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeMapTextOperation, v11, a4, a5, &v21, v19, &v22);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a6);
  *a6 = v22;
  a6[2] = v23;
  v23 = 0;
  v22 = 0uLL;
  *&v19[0] = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v19);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v14 = *a6;
  v15 = a6[1];
  if (*a6 != v15)
  {
    v16 = *a1;
    do
    {
      v17 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v16, v14);
      v14 += 2;
      if (v14 == v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }
    }

    while ((v18 & 1) != 0);
    if ((v17 & 1) == 0)
    {
      ZinAssertImpl("Failed to add text map nodes to graph");
    }
  }
}

void sub_1A69AD95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v27 - 80) = v26;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v27 - 80));
  _Unwind_Resume(a1);
}

void CreateRuntimeTextLoadOperationNodesForSPMD(uint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X3>, ZinRtOperationNode **a6@<X5>, uint64_t a7@<X8>)
{
  if ((*(a3 + 73) & 1) == 0)
  {
    ZinAssertImpl("%s should only be called for an SPMD procedure", "ZinRtOperationNodes CreateRuntimeTextLoadOperationNodesForSPMD(std::shared_ptr<ZinRtNodeGraph> &, const std::string &, const ZinRtCodegenParams &, const AneIndices &, uint8_t, const std::shared_ptr<ZinRtOperationNode> &, std::vector<ZinIrSymbolData> &)");
  }

  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v9 = a4 + 1;
  v10 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      v12 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(*(a3 + 16), v10 + 4);
      v20 = 0;
      v13 = *(std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(v12, &v20) + 12);
      v20 = v10 + 4;
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v18, v10 + 4, &std::piecewise_construct, &v20)[5] = v13;
      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != v9);
  }

  CreateRuntimeLoadOperationNodes(a1, 0, &v18, a6, a7);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v18, v19[0]);
}

void CreateRuntimeAllocBSS(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v12, "_ane_", 5uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v11, *a3);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v11;
  }

  else
  {
    v7 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v13, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationRuntimeAlloc,std::allocator<ZinRtOperationRuntimeAlloc>,std::string,0>();
}

void sub_1A69ADCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 56);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocV2BSS(uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a5@<X8>)
{
  std::operator+<char>();
  v8 = std::string::append(&v24, "_ane_", 5uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v23, *a3);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v23;
  }

  else
  {
    v10 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v25, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27 = v12->__r_.__value_.__r.__words[2];
  v26 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v14 = std::string::append(&v23, "_ane_", 5uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a3);
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
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v24, p_p, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 73) & (*a3 != 0x3FFF)) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a3;
  }

  v24.__r_.__value_.__r.__words[0] = v20;
  BssSection = GetBssSection(a2, &v24);
  if (!BssSection)
  {
    ZinAssertImpl("Unable to get bss section");
  }

  if (*(BssSection + 32))
  {
    CreateRuntimeAllocV2Operation();
  }

  *a5 = 0;
  a5[1] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }
}

void sub_1A69ADFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocEvent(void x0_0, const std::string *a1, int a2, unint64_t *a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v12, "_ane_", 5uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a3);
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

  v9 = std::string::append(&v13, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15 = v9->__r_.__value_.__r.__words[2];
  *v14 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  CreateRuntimeAllocV2Operation();
}

void sub_1A69AE204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 + 8);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeAllocV2BarTable(uint64_t a1, void x1_0, unsigned int a2, unint64_t *a3)
{
  std::operator+<char>();
  v5 = std::string::append(&v19, "_ane_", 5uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v18, *a3);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v18;
  }

  else
  {
    v7 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v20, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v22 = v9->__r_.__value_.__r.__words[2];
  v21 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v11 = std::string::append(&v18, "_ane_", 5uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *a3);
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
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v19, p_p, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  CreateRuntimeAllocV2Operation();
}

void sub_1A69AE488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v33 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 57) < 0)
  {
    operator delete(*(v34 - 80));
  }

  _Unwind_Resume(exception_object);
}

void CodegenRuntimeConstMapOperationNodes(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v12 = a4[1];
  if (v12)
  {
    v13 = a4 + 1;
    do
    {
      v14 = v12[4];
      v15 = v14 >= 0x3FFF;
      v16 = v14 < 0x3FFF;
      if (v15)
      {
        v13 = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
    if (v13 != a4 + 1 && !(v13[4] >> 14))
    {
      ZinAssertImpl("Error: No shared CONST supported yet");
    }
  }

  v17 = *(a3 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *a2, *(a2 + 8));
  }

  else
  {
    v39 = *a2;
  }

  v18 = *(a3 + 48);
  v35 = *(a3 + 32);
  v36 = v18;
  v37 = *(a3 + 64);
  v38 = *(a3 + 80);
  v19 = *(a3 + 16);
  v33 = *a3;
  v34 = v19;
  CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeConstMapOperation, v17, a4, a5, &v39, &v33, a6);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v20 = *(a3 + 72);
  v40[0] = 0x3FFFLL;
  std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](v29, v40, 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v21 = *(a3 + 48);
  v35 = *(a3 + 32);
  v36 = v21;
  v37 = *(a3 + 64);
  v38 = *(a3 + 80);
  v22 = *(a3 + 16);
  v33 = *a3;
  v34 = v22;
  CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeConstMapOperation, v20, v29, a5, &__p, &v33, &v31);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v29, v30);
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<ZinRtOperationNode>*>,std::__wrap_iter<std::shared_ptr<ZinRtOperationNode>*>>(a6, a6[1], v31, v32, (v32 - v31) >> 4);
  v23 = *a6;
  v24 = a6[1];
  if (*a6 != v24)
  {
    v25 = *a1;
    do
    {
      v26 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v25, v23);
      v23 += 2;
      if (v23 == v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }
    }

    while ((v27 & 1) != 0);
    if ((v26 & 1) == 0)
    {
      ZinAssertImpl("Failed to add const map nodes to graph");
    }
  }

  *&v33 = &v31;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_1A69AE7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a16, a17);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void CodegenRuntimeParamOperationNodes(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  if (ZinIrBindings::GetLiveInParamDescriptor(*(a1 + 24), &v13))
  {
    ZinAssertImpl("Error: Failed to get live in params");
  }

  v4 = v13;
  if (v13 != v14)
  {
    do
    {
      GetAneIndicesForLiveInParam(v4 + 8, a1, v21);
      v5 = *(a1 + 72);
      v17 = *(v4 + 14);
      if (*(v4 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[8], v4[9]);
      }

      else
      {
        __p = *(v4 + 8);
      }

      v19 = v4[11];
      v6 = *(a1 + 48);
      v15[2] = *(a1 + 32);
      v15[3] = v6;
      v15[4] = *(a1 + 64);
      v16 = *(a1 + 80);
      v7 = *(a1 + 16);
      v15[0] = *a1;
      v15[1] = v7;
      CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),ZinLiveInputParamDescriptor,ZinRtCodegenParams>(CreateRuntimeLiveInParamOperation, v5, v21, &v17, v15, v20);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v20[0];
      v9 = v20[1];
      while (v8 != v9)
      {
        std::vector<std::shared_ptr<ZinPattern>>::push_back[abi:ne200100](a2, v8);
        v8 += 16;
      }

      *&v15[0] = v20;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v15);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v21, v21[1]);
      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v14);
  }

  std::__tree<std::__value_type<std::string,WeightFileProperties>,std::__map_value_compare<std::string,std::__value_type<std::string,WeightFileProperties>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,WeightFileProperties>>>::destroy(&v13, v14[0]);
}

void sub_1A69AEA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::__tree<std::__value_type<std::string,WeightFileProperties>,std::__map_value_compare<std::string,std::__value_type<std::string,WeightFileProperties>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,WeightFileProperties>>>::destroy(&a10, a11);
  *(v31 - 128) = v30;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v31 - 128));
  _Unwind_Resume(a1);
}

void CreateRuntimeMapAndLoadOpsForIOs(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  CreateRuntimeMapPlanarUncompressed(a1, a3, a4, v14);
  CreateRuntimeMapPlanarCompressed(a1, a3, a4, v13);
  CreateRuntimeLoadPlanarUncompressed(a1, a3, a4, v14, &v11);
  CreateRuntimeLoadPlanarCompressed(a1, a3, a4, v13, &v9);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::reserve(a5, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) - 0x5555555555555555 * ((v10 - v9) >> 3));
  v19.n128_u64[1] = v14[0];
  v20 = v11;
  v17 = v14[1];
  v18 = v12;
  ranges::_move::move_fn::operator()<ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,std::back_insert_iterator<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>>(&v19, v16, a5, v15);
  v19.n128_u64[1] = v13[0];
  v20 = v9;
  v17 = v13[1];
  v18 = v10;
  ranges::_move::move_fn::operator()<ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,std::back_insert_iterator<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>>(&v19, v16, a5, v15);
  v15[0].n128_u64[0] = &v9;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v15);
  v15[0].n128_u64[0] = &v11;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v15);
  v15[0].n128_u64[0] = v13;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v15);
  v15[0].n128_u64[0] = v14;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v15);
}

void sub_1A69AEC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a10;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a13;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a16;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a19;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

const void **std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void CreateRuntimeMapAndStoreOpsForIOs(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  CreateRuntimeMapPlanarUncompressed(a1, a3, a4, v16);
  CreateRuntimeMapPlanarCompressed(a1, a3, a4, v15);
  CreateRuntimeStorePlanarUncompressed(a1, a3, a4, a5, v16, &v13);
  CreateRuntimeStorePlanarCompressed(a1, a3, a4, a5, v15, &v11);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::reserve(a6, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) - 0x5555555555555555 * ((v12 - v11) >> 3));
  v21.n128_u64[1] = v16[0];
  v22 = v13;
  v19 = v16[1];
  v20 = v14;
  ranges::_move::move_fn::operator()<ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,std::back_insert_iterator<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>>(&v21, v18, a6, v17);
  v21.n128_u64[1] = v15[0];
  v22 = v11;
  v19 = v15[1];
  v20 = v12;
  ranges::_move::move_fn::operator()<ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,std::back_insert_iterator<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>>(&v21, v18, a6, v17);
  v17[0].n128_u64[0] = &v11;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0].n128_u64[0] = &v13;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0].n128_u64[0] = v15;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v17);
  v17[0].n128_u64[0] = v16;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v17);
}

void sub_1A69AEEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void **a22)
{
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a10;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a13;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a16;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a19;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

double CreateRuntimeMapAndLoadOpsForEvent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v9 = *(a3 + 24);
  if (a4 != 1)
  {
    if (a4)
    {
      ZinAssertImpl("Error: Unsupported event type %hu", a4);
    }

    LayerExecutionBehaviors = ZinIrExecutionBehavior::GetLayerExecutionBehaviors(v9);
    if (*(LayerExecutionBehaviors + 80) == 1)
    {
      v11 = LayerExecutionBehaviors;
      CreateRuntimeAllocAndMapOpsForEvent(a1, a2, LayerExecutionBehaviors, 0, a3, a5);
      CreateRuntimeLoadOpsForEvent(a1, a2, v11, (v11 + 24), *(v11 + 72), a3, a5);
      return result;
    }

    goto LABEL_8;
  }

  NodeGraph = ZinRtProcedure::GetNodeGraph(v9);
  if (*(NodeGraph + 72) != 1)
  {
LABEL_8:
    result = 0.0;
    a5[7] = 0u;
    a5[8] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    return result;
  }

  v14 = NodeGraph;
  CreateRuntimeAllocAndMapOpsForEvent(a1, a2, NodeGraph, 1, a3, a5);
  if ((*(v14 + 64) & 1) == 0)
  {
    ZinAssertImpl("Exit event's increment does not have a value");
  }

  CreateRuntimeLoadOpsForEvent(a1, a2, v14, (v14 + 24), *(v14 + 56), a3, a5);
  return result;
}

void CreateRuntimeAllocAndMapOpsForEvent(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v40 = 0;
  std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](v39, &v40, 1);
  v37 = 0uLL;
  v38 = 0;
  v35 = 0uLL;
  v36 = 0;
  v12 = *(a5 + 72);
  v13 = a5[3];
  v42 = a5[2];
  v43 = v13;
  v44 = a5[4];
  v45 = *(a5 + 10);
  v14 = a5[1];
  v40 = *a5;
  v41 = v14;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a3, *(a3 + 8));
  }

  else
  {
    v32 = *a3;
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(ZinRtCodegenParams const&,std::string const&,EventType,ZinNamedType<unsigned long,AneIndexTag> const&),ZinRtCodegenParams,std::string,EventType>(CreateRuntimeAllocEvent, v12, v39, &v40, &v32, a4, &v33);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(&v37);
  v37 = v33;
  v38 = v34;
  v34 = 0;
  v33 = 0uLL;
  *&v40 = &v33;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v40);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v16 = *(&v37 + 1);
  v15 = v37;
  if (v37 != *(&v37 + 1))
  {
    v17 = *a1;
    do
    {
      v18 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v17, v15);
      v15 += 2;
      if (v15 == v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }
    }

    while ((v19 & 1) != 0);
    if ((v18 & 1) == 0)
    {
      ZinAssertImpl("Failed to add alloc nodes to graph");
    }
  }

  v20 = *(a5 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
  }

  else
  {
    v31 = *a2;
  }

  v21 = a5[3];
  v42 = a5[2];
  v43 = v21;
  v44 = a5[4];
  v45 = *(a5 + 10);
  v22 = a5[1];
  v40 = *a5;
  v41 = v22;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a3, *(a3 + 8));
  }

  else
  {
    v30 = *a3;
  }

  v28 = 0uLL;
  v29 = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&v28, v37, *(&v37 + 1), (*(&v37 + 1) - v37) >> 4);
  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,std::string const&,EventType,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,std::string,EventType,std::vector<std::shared_ptr<ZinRtOperationNode>>>(CreateRuntimeEventMapOperation, v20, v39, &v31, &v40, &v30, a4, &v28, &v33);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(&v35);
  v35 = v33;
  v36 = v34;
  v34 = 0;
  v33 = 0uLL;
  *&v40 = &v33;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v40);
  *&v40 = &v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v40);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v24 = *(&v35 + 1);
  v23 = v35;
  if (v35 != *(&v35 + 1))
  {
    v25 = *a1;
    do
    {
      v26 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v25, v23);
      v23 += 2;
      if (v23 == v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }
    }

    while ((v27 & 1) != 0);
    if ((v26 & 1) == 0)
    {
      ZinAssertImpl("Failed to add map nodes to graph");
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(a6, v37, *(&v37 + 1), (*(&v37 + 1) - v37) >> 4);
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>((a6 + 24), v35, *(&v35 + 1), (*(&v35 + 1) - v35) >> 4);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *&v40 = &v35;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v40);
  *&v40 = &v37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v40);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v39, v39[1]);
}

void sub_1A69AF44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char **a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  a34 = &a38;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a34);
  a38 = &a42;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a38);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a46, a47);
  _Unwind_Resume(a1);
}

void CreateRuntimeLoadOpsForEvent(uint64_t *a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](v16, v18, 1);
  memset(v18, 0, 24);
  memset(v15, 0, sizeof(v15));
  v12 = *(a6 + 40);
  if (v12 + 56 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v12 + 48, a3))
  {
    ZinAssertImpl("Could not find a bar for entry event's counter");
  }

  if (v12 + 56 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v12 + 48, a4))
  {
    ZinAssertImpl("Could not find a bar for entry event's threshold");
  }

  CreateRuntimeLoadOperationNodesPerMap(a1, *(a6 + 72), (a7 + 24), &v13);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate((a7 + 48));
  *(a7 + 48) = v13;
  *(a7 + 64) = v14;
  v14 = 0;
  v13 = 0uLL;
  v17 = &v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
  CreateRuntimeLoadImmediateOperationNodes(a1, *(a6 + 72), v16, &v13);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate((a7 + 72));
  *(a7 + 72) = v13;
  *(a7 + 88) = v14;
  v14 = 0;
  v13 = 0uLL;
  v17 = &v13;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
  *&v13 = v15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v13);
  v15[0] = v18;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v15);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v16, v16[1]);
}

void sub_1A69AF6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  a9 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a9);
  a12 = &a19;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void EventsRuntimeOps::~EventsRuntimeOps(void **this)
{
  v2 = this + 15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

double CreateRuntimeMapAndStoreOpsForEvent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void ****a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = *(a3 + 24);
  if (a4 != 1)
  {
    if (a4)
    {
      ZinAssertImpl("Error: Unsupported event type %hu", a4);
    }

    LayerExecutionBehaviors = ZinIrExecutionBehavior::GetLayerExecutionBehaviors(v11);
    if (*(LayerExecutionBehaviors + 80) == 1)
    {
      v13 = LayerExecutionBehaviors;
      CreateRuntimeAllocAndMapOpsForEvent(a1, a2, LayerExecutionBehaviors, 0, a3, a6);
      CreateRuntimeStoreOpsForEvent(a1, a2, v13, (v13 + 24), *(v13 + 72), a3, a5, a6);
      return result;
    }

    goto LABEL_8;
  }

  NodeGraph = ZinRtProcedure::GetNodeGraph(v11);
  if (*(NodeGraph + 72) != 1)
  {
LABEL_8:
    result = 0.0;
    a6[7] = 0u;
    a6[8] = 0u;
    a6[5] = 0u;
    a6[6] = 0u;
    a6[3] = 0u;
    a6[4] = 0u;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
    return result;
  }

  v16 = NodeGraph;
  CreateRuntimeAllocAndMapOpsForEvent(a1, a2, NodeGraph, 1, a3, a6);
  if ((*(v16 + 64) & 1) == 0)
  {
    ZinAssertImpl("Exit event's increment does not have a value");
  }

  CreateRuntimeStoreOpsForEvent(a1, a2, v16, (v16 + 24), *(v16 + 56), a3, a5, a6);
  return result;
}

void CreateRuntimeStoreOpsForEvent(uint64_t *a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, void ****a7, uint64_t a8)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](v23, v25, 1);
  memset(v25, 0, 24);
  memset(v22, 0, sizeof(v22));
  v14 = *(a6 + 40);
  v15 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v14 + 48, a3);
  if (v14 + 56 == v15)
  {
    ZinAssertImpl("Could not find a bar for entry event's counter");
  }

  v16 = *(v15 + 56);
  if (v14 + 56 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v14 + 48, a4))
  {
    ZinAssertImpl("Could not find a bar for entry event's threshold");
  }

  CreateRuntimeStoreOperationNodesPerMap(a1, a6, (a8 + 24), a7, v16, &v20);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate((a8 + 96));
  *(a8 + 96) = v20;
  *(a8 + 112) = v21;
  v21 = 0;
  v20 = 0uLL;
  v19[0] = &v20;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v19);
  v17 = **a7;
  v18 = (*a7)[1];
  v19[0] = v17;
  v19[1] = &v18->__vftable;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CreateRuntimeStoreImmediateOperationNodes(a1, *(a6 + 72), v23, v19, &v20);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate((a8 + 120));
  *(a8 + 120) = v20;
  *(a8 + 136) = v21;
  v21 = 0;
  v20 = 0uLL;
  v24 = &v20;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *&v20 = v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v22[0] = v25;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v22);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v23, v23[1]);
}

void sub_1A69AFB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  a11 = &a14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a14 = &a21;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

uint64_t AddEdgesToSuccessorAneOpNodes(uint64_t *a1, void *a2, ZinIrAsyncFunction ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      Exit = 0x3FFFLL;
      if (std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &Exit))
      {
        Exit = 0x3FFFLL;
        v7 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &Exit);
        if (!v7)
        {
          goto LABEL_24;
        }

        v8 = v7[3];
        v9 = v7[4];
        if (v8 != v9)
        {
          do
          {
            v10 = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1, v3, v8, 2);
            v8 += 2;
            if (v10)
            {
              v11 = v8 == v9;
            }

            else
            {
              v11 = 1;
            }
          }

          while (!v11);
          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        Exit = ZinIrAsyncFunction::GetExit(*v3);
        result = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &Exit);
        if (!result)
        {
          return result;
        }

        v17 = ZinIrAsyncFunction::GetExit(*v3);
        v12 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &v17);
        if (!v12)
        {
LABEL_24:
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        v13 = v12[3];
        v14 = v12[4];
        if (v13 != v14)
        {
          do
          {
            result = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1, v3, v13, 2);
            v13 += 2;
            if (result)
            {
              v15 = v13 == v14;
            }

            else
            {
              v15 = 1;
            }
          }

          while (!v15);
          if (!result)
          {
            return result;
          }
        }
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  return 1;
}

uint64_t AddCorrespondingEdgesToSuccessorOpNodes(uint64_t *a1, uint64_t **a2, ZinIrAsyncFunction ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 1;
  }

  while (ZinIrAsyncFunction::GetExit(*v3) == 0x3FFF)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        result = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1, v3, v7, 2);
        v7 += 2;
        if (result)
        {
          v10 = v7 == v8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (!v10);
      if (!result)
      {
        return result;
      }
    }

LABEL_17:
    v3 += 2;
    if (v3 == v4)
    {
      return 1;
    }
  }

  Exit = ZinIrAsyncFunction::GetExit(*v3);
  FindNodeWithDeviceID(a2, Exit, &v13);
  if (v13)
  {
    v12 = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1, v3, &v13, 2) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_1A69AFDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddCorrespondingEdgesToSuccessorOpNodes(void *a1, uint64_t **a2, ZinIrAsyncFunction ***a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    return 1;
  }

  while (ZinIrAsyncFunction::GetExit(*v3) == 0x3FFF)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      do
      {
        result = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1 + 80, v3, v7, 2);
        v7 += 2;
        if (result)
        {
          v10 = v7 == v8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (!v10);
      if (!result)
      {
        return result;
      }
    }

LABEL_17:
    v3 += 2;
    if (v3 == v4)
    {
      return 1;
    }
  }

  Exit = ZinIrAsyncFunction::GetExit(*v3);
  FindNodeWithDeviceID(a2, Exit, &v13);
  if (v13)
  {
    v12 = ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(*a1 + 80, v3, &v13, 2) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_1A69AFF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BuildExpressionToken@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  v9 = a2[5];
  if (!v9)
  {
    ZinAssertImpl("Empty token found in custom bar command.");
  }

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v87, *(a2[1] + (((v9 + a2[4] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v9 + a2[4] - 1) & 0x7F));
  std::deque<std::variant<RtExpressionType,std::string,long long>>::pop_back(a2);
  *a8 = 0u;
  a8[1] = 0u;
  if (v89 == 2)
  {
    std::operator+<char>();
    v25 = std::string::append(&__p, "_for_dynamic_offset_", 0x14uLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&v90[16] = *(&v25->__r_.__value_.__l + 2);
    *v90 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(v90, "_number_", 8uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    *&v85[16] = *(&v27->__r_.__value_.__l + 2);
    *v85 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v82, *a5);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v82;
    }

    else
    {
      v29 = v82.__r_.__value_.__r.__words[0];
    }

    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v82.__r_.__value_.__l.__size_;
    }

    v31 = std::string::append(v85, v29, size);
    v32 = *&v31->__r_.__value_.__l.__data_;
    *&v84[16] = *(&v31->__r_.__value_.__l + 2);
    *v84 = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    if ((v85[23] & 0x80000000) != 0)
    {
      operator delete(*v85);
    }

    if ((v90[23] & 0x80000000) != 0)
    {
      operator delete(*v90);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v89 == 2)
    {
      CreateRuntimeImmediateExpression();
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v89 != 1)
  {
    if (!v89)
    {
      v86 = v87;
      if (IsRuntimeBinaryExpression(&v86))
      {
        BuildExpressionToken(a1, a2, a3, a4, a5, a6, a7, v85);
        BuildExpressionToken(a1, a2, a3, a4, a5, a6, a7, v84);
        std::operator+<char>();
        v17 = std::string::append(&v91, "_for_dynamic_offset_", 0x14uLL);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v82, "_number_", 8uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        *&v90[16] = *(&v19->__r_.__value_.__l + 2);
        *v90 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v81, *a5);
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v81;
        }

        else
        {
          v21 = v81.__r_.__value_.__r.__words[0];
        }

        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v81.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(v90, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if ((v90[23] & 0x80000000) != 0)
        {
          operator delete(*v90);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        CreateRuntimeBinaryExpression(&__p, v86);
      }

      if (IsRuntimeUnaryExpression(&v86))
      {
        BuildExpressionToken(a1, a2, a3, a4, a5, a6, a7, v85);
        std::operator+<char>();
        v33 = std::string::append(&v82, "_for_dynamic_offset_", 0x14uLL);
        v34 = *&v33->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        v35 = std::string::append(&__p, "_number_", 8uLL);
        v36 = *&v35->__r_.__value_.__l.__data_;
        *&v84[16] = *(&v35->__r_.__value_.__l + 2);
        *v84 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v91, *a5);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v91;
        }

        else
        {
          v37 = v91.__r_.__value_.__r.__words[0];
        }

        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = v91.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(v84, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        *&v90[16] = *(&v39->__r_.__value_.__l + 2);
        *v90 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if ((v84[23] & 0x80000000) != 0)
        {
          operator delete(*v84);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        CreateRuntimeUnaryExpression(v90, v86, (*v85 + 40));
      }

      goto LABEL_143;
    }

    v75 = "Unsupported function token found in custom bar command.";
LABEL_148:
    ZinAssertImpl(v75);
  }

  if (SHIBYTE(v88) < 0)
  {
    std::string::__init_copy_ctor_external(v90, v87, *(&v87 + 1));
  }

  else
  {
    *v90 = v87;
    *&v90[16] = v88;
  }

  if ((v90[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v80, *v90, *&v90[8]);
  }

  else
  {
    v80 = *v90;
  }

  v41 = *a3;
  v79 = a3[1];
  if (*a3 == v79)
  {
LABEL_133:
    memset(v85, 0, sizeof(v85));
    goto LABEL_135;
  }

  while (1)
  {
    Operations = ZinRtOperationNode::GetOperations(*v41);
    v44 = Operations + 1;
    v43 = *Operations;
    if (*Operations != Operations + 1)
    {
      break;
    }

LABEL_132:
    v41 += 16;
    if (v41 == v79)
    {
      goto LABEL_133;
    }
  }

  while (1)
  {
    if (ZinRtOperation::GetMode(v43[4]))
    {
      goto LABEL_109;
    }

    v46 = v43[4];
    v45 = v43[5];
    if (v45)
    {
      atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = *(v46 + 72);
    if (v47 == 4)
    {
      v60 = v43[4];
      v61 = v43[5];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = *(v60 + 119);
      if (v62 >= 0)
      {
        v63 = *(v60 + 119);
      }

      else
      {
        v63 = *(v60 + 104);
      }

      v64 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = v80.__r_.__value_.__l.__size_;
      }

      if (v63 == v64 && ((v67 = *(v60 + 96), v65 = (v60 + 96), v66 = v67, v62 >= 0) ? (v68 = v65) : (v68 = v66), (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v69 = &v80) : (v69 = v80.__r_.__value_.__r.__words[0]), !memcmp(v68, v69, v63)))
      {
        *v85 = v46;
        *&v85[8] = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v73 = *(v41 + 8);
        v78 = *v41;
        if (v73)
        {
          v77 = *(v41 + 8);
          v58 = 1;
          atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
        }

        else
        {
          v77 = 0;
          v58 = 1;
        }

        v59 = 1;
        if (!v61)
        {
LABEL_103:
          if (v58)
          {
            goto LABEL_105;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v58 = 0;
        v59 = 6;
        if (!v61)
        {
          goto LABEL_103;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      goto LABEL_103;
    }

    if (v47 == 10)
    {
      if (a1 + 8 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1, &v80))
      {
        v59 = 5;
        if (!v45)
        {
          goto LABEL_107;
        }

LABEL_106:
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        goto LABEL_107;
      }

      ZinGetUnmangledName(&v80, 0, a1, v84);
      v48 = v43[4];
      v49 = v43[5];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = *(v48 + 119);
      if (v50 >= 0)
      {
        v51 = *(v48 + 119);
      }

      else
      {
        v51 = *(v48 + 104);
      }

      v52 = v84[23];
      if (v84[23] < 0)
      {
        v52 = *&v84[8];
      }

      if (v51 == v52 && ((v55 = *(v48 + 96), v53 = (v48 + 96), v54 = v55, v50 >= 0) ? (v56 = v53) : (v56 = v54), v84[23] >= 0 ? (v57 = v84) : (v57 = *v84), !memcmp(v56, v57, v51)))
      {
        *v85 = v46;
        *&v85[8] = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v74 = *(v41 + 8);
        v78 = *v41;
        if (v74)
        {
          v77 = *(v41 + 8);
          v58 = 1;
          atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
        }

        else
        {
          v77 = 0;
          v58 = 1;
        }

        v59 = 1;
        if (!v49)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v58 = 0;
        v59 = 6;
        if (!v49)
        {
          goto LABEL_84;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
LABEL_84:
      if ((v84[23] & 0x80000000) != 0)
      {
        operator delete(*v84);
      }

      goto LABEL_103;
    }

LABEL_104:
    v59 = 0;
LABEL_105:
    if (v45)
    {
      goto LABEL_106;
    }

LABEL_107:
    if (v59 != 5 && v59)
    {
      break;
    }

LABEL_109:
    v70 = v43[1];
    if (v70)
    {
      do
      {
        v71 = v70;
        v70 = *v70;
      }

      while (v70);
    }

    else
    {
      do
      {
        v71 = v43[2];
        v72 = *v71 == v43;
        v43 = v71;
      }

      while (!v72);
    }

    v43 = v71;
    if (v71 == v44)
    {
      goto LABEL_132;
    }
  }

  *&v85[16] = v78;
  *&v85[24] = v77;
LABEL_135:
  std::pair<std::shared_ptr<ZinRtOperation>,std::shared_ptr<ZinRtOperationNode>>::operator=[abi:ne200100](a8, v85);
  if (*&v85[24])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v85[24]);
  }

  if (*&v85[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v85[8]);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if ((v90[23] & 0x80000000) != 0)
  {
    operator delete(*v90);
  }

LABEL_143:
  v75 = "Failed to generate expression for custom bar command.";
  if (!*a8 || !*(a8 + 2))
  {
    goto LABEL_148;
  }

  ++*a5;
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v87);
}

void sub_1A69B0AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, std::__shared_weak_count *a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60)
{
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a27);
  v63 = *(v61 - 112);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  if (*(v61 - 137) < 0)
  {
    operator delete(*(v61 - 160));
  }

  std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>::~pair(&a54);
  std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>::~pair(v60);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v61 - 200);
  _Unwind_Resume(a1);
}

void CreateNodeForExprOpAndAddItToExpressionBlock()
{
  v7 = 0;
  v6 = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag>,0>();
}

void sub_1A69B0F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::shared_ptr<ZinRtOperation>,std::shared_ptr<ZinRtOperationNode>>::operator=[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void CodegenRuntimeBarCommandExpression(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5)
{
  v8[0] = 0;
  v5 = *(a3 + 48);
  v6 = *(v5 + 112);
  if (v6 != *(v5 + 120))
  {
    ZinDynamicOffsetCustomBarCmd::GetRPNDescriptionOfSNEFunction(v6, **a3, v7);
    std::allocate_shared[abi:ne200100]<ZinRtBlockNode,std::allocator<ZinRtBlockNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag>,0>();
  }
}

void GetAneIndicesForCustomBarCommand(uint64_t *__return_ptr a1@<X8>, const ZinDynamicOffsetCustomBarCmd *a2@<X0>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  if (*(*(ZinDynamicOffsetCustomBarCmd::GetRingBufferLayer(a2) + 88) + 8) == 77)
  {
    RingBufferLayer = ZinDynamicOffsetCustomBarCmd::GetRingBufferLayer(a2);
    ZinBondedUtils::GetAneConsumers(&v17, RingBufferLayer);
    v5 = v17;
    if (v17 != v18)
    {
      do
      {
        v6 = RawOrShared<ZinANELayer>::unwrap_const_ptr((v5 + 5));
        BondedInfo = ZinEngineLayer::GetBondedInfo(v6);
        AneIndex = ZinBondedInfo::GetAneIndex(BondedInfo);
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, AneIndex, AneIndex);
        v9 = v5[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v5[2];
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
      }

      while (v10 != v18);
    }

    std::__tree<std::__value_type<NodeKey<RawOrShared<ZinANELayer>>,RawOrShared<ZinANELayer>>,std::__map_value_compare<NodeKey<RawOrShared<ZinANELayer>>,std::__value_type<NodeKey<RawOrShared<ZinANELayer>>,RawOrShared<ZinANELayer>>,std::less<NodeKey<RawOrShared<ZinANELayer>>>,true>,std::allocator<std::__value_type<NodeKey<RawOrShared<ZinANELayer>>,RawOrShared<ZinANELayer>>>>::destroy(&v17, v18[0]);
  }

  else
  {
    if (*(*(ZinDynamicOffsetCustomBarCmd::GetRingBufferLayer(a2) + 88) + 8) != 76)
    {
      ZinAssertImpl("Error: dynamic offset layer is not a RBW or an RBR");
    }

    v17 = 0;
    v18[0] = 0;
    v18[1] = 0;
    v12 = ZinDynamicOffsetCustomBarCmd::GetRingBufferLayer(a2);
    ZinMirUtils::GetANELayerWritersForRBW(v12, &v17);
    v13 = v17;
    v14 = v18[0];
    if (v17 != v18[0])
    {
      do
      {
        v15 = ZinEngineLayer::GetBondedInfo(*v13);
        v16 = ZinBondedInfo::GetAneIndex(v15);
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, v16, v16);
        ++v13;
      }

      while (v13 != v14);
      v13 = v17;
    }

    if (v13)
    {
      v18[0] = v13;
      operator delete(v13);
    }
  }

  if (!a1[2])
  {
    ZinAssertImpl("Error: could not find ANE indices for live in param");
  }
}

void sub_1A69B1654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v11, *(v11 + 8));
  _Unwind_Resume(a1);
}

void CreateRtNodeGraphPerBasicBlock(ZinIrContext *a1, __int128 *a2)
{
  v17[96] = *MEMORY[0x1E69E9840];
  v17[1] = 0;
  v17[0] = 0;
  v16 = v17;
  v9 = *(a2 + 7);
  v12 = *v9;
  v10 = v9 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v16, v11 + 4, v11 + 4);
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != v10);
  }

  _ZNSt3__115allocate_sharedB8ne200100I14ZinRtNodeGraphNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1A69B3A20(_Unwind_Exception *a1)
{
  STACK[0x268] = v1;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x268]);
  STACK[0x280] = &STACK[0x298];
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x280]);
  EventsRuntimeOps::~EventsRuntimeOps(&STACK[0x2E0]);
  EventsRuntimeOps::~EventsRuntimeOps(&STACK[0x3A0]);
  STACK[0x3A0] = v2 - 120;
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = &STACK[0x458];
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = &STACK[0x470];
  std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = v2 - 256;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = v2 - 232;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = v2 - 208;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  STACK[0x3A0] = v2 - 176;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3A0]);
  if (STACK[0x208])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x208]);
  }

  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x218]);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&STACK[0x228], STACK[0x230]);
  _Unwind_Resume(a1);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag> const&,std::string const&,ThreadArgumentInfo const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats> const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&,ZinIrParameters const&,ZinIrCallingConventionAttribute const&,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag>,std::string,ThreadArgumentInfo,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,ZinIrParameters,ZinIrCallingConventionAttribute,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *, int, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t *a9@<X8>, void *a10, void *a11, __int128 *a12, int a13, char a14, __int128 *a15, __int128 *a16)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v17 = a3[2];
  if (v17 != 1)
  {
    if (!v17)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v18 = a3[1];
    if (v18)
    {
      v19 = a3 + 1;
      do
      {
        v20 = v18[4];
        v21 = v20 >= 0x3FFF;
        v22 = v20 < 0x3FFF;
        if (v21)
        {
          v19 = v18;
        }

        v18 = v18[v22];
      }

      while (v18);
      if (v19 != a3 + 1 && !(v19[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v91 = *a7;
    v92 = *(a7 + 2);
    *(a7 + 8) = 0uLL;
    *a7 = 0;
    v23 = a8[5];
    v85 = a8[4];
    v86[0] = v23;
    *(v86 + 9) = *(a8 + 89);
    v24 = a8[1];
    v81 = *a8;
    v82 = v24;
    v25 = a8[3];
    v83 = a8[2];
    v84 = v25;
    v86[2] = a8[7];
    *(a8 + 14) = 0;
    *(a8 + 15) = 0;
    v26 = *(a8 + 16);
    v27 = *(a8 + 17);
    *(a8 + 16) = 0;
    v87 = v26;
    v88 = v27;
    *v89 = a8[9];
    v90 = *(a8 + 20);
    *(a8 + 18) = 0;
    *(a8 + 19) = 0;
    *(a8 + 20) = 0;
    v29 = a10 + 1;
    v28 = a10[1];
    v78 = *a10;
    v79 = v28;
    if (a10[2])
    {
      *(v28 + 16) = &v79;
      *a10 = v29;
      *v29 = 0;
      a10[2] = 0;
    }

    else
    {
      v78 = &v79;
    }

    v37 = a11 + 1;
    v38 = a11[1];
    v75 = *a11;
    v76 = v38;
    if (a11[2])
    {
      *(v38 + 16) = &v76;
      *a11 = v37;
      *v37 = 0;
      a11[2] = 0;
    }

    else
    {
      v75 = &v76;
    }

    v41 = a12[1];
    v71 = *a12;
    *__p = v41;
    v73 = *(a12 + 4);
    a12[1] = 0uLL;
    *(a12 + 4) = 0;
    v74 = *(a12 + 10);
    v69 = *a15;
    v70 = *(a15 + 2);
    *a15 = 0uLL;
    *(a15 + 2) = 0;
    v67 = *a16;
    v68 = *(a16 + 2);
    *a16 = 0uLL;
    *(a16 + 2) = 0;
    BYTE4(v43) = a14;
    LODWORD(v43) = a13;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag> const&,std::string const&,ThreadArgumentInfo const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats> const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&,ZinIrParameters const&,ZinIrCallingConventionAttribute const&,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),unsigned int,unsigned long,ZinNamedType<unsigned long,SegmentIndexTag>,std::string,ThreadArgumentInfo,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,ZinIrParameters,ZinIrCallingConventionAttribute,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>(&v93, &v75, &v71, v43, &v69, &v67);
  }

  *v65 = *a7;
  v66 = *(a7 + 2);
  *(a7 + 8) = 0uLL;
  *a7 = 0;
  v30 = a8[5];
  v58[4] = a8[4];
  v59[0] = v30;
  *(v59 + 9) = *(a8 + 89);
  v31 = a8[1];
  v58[0] = *a8;
  v58[1] = v31;
  v32 = a8[3];
  v58[2] = a8[2];
  v58[3] = v32;
  v60 = a8[7];
  *(a8 + 14) = 0;
  *(a8 + 15) = 0;
  v33 = *(a8 + 16);
  v34 = *(a8 + 17);
  *(a8 + 16) = 0;
  v61 = v33;
  v62 = v34;
  *v63 = a8[9];
  v64 = *(a8 + 20);
  *(a8 + 18) = 0;
  *(a8 + 19) = 0;
  *(a8 + 20) = 0;
  v36 = a10 + 1;
  v35 = a10[1];
  v55 = *a10;
  v56 = v35;
  if (a10[2])
  {
    v35[2] = &v56;
    *a10 = v36;
    *v36 = 0;
    a10[2] = 0;
  }

  else
  {
    v55 = &v56;
  }

  v39 = a11 + 1;
  v40 = a11[1];
  v52 = *a11;
  v53 = v40;
  if (a11[2])
  {
    v40[2] = &v53;
    *a11 = v39;
    *v39 = 0;
    a11[2] = 0;
  }

  else
  {
    v52 = &v53;
  }

  v42 = a12[1];
  v48 = *a12;
  *v49 = v42;
  v50 = *(a12 + 4);
  a12[1] = 0uLL;
  *(a12 + 4) = 0;
  v51 = *(a12 + 10);
  v46 = *a15;
  v47 = *(a15 + 2);
  *a15 = 0uLL;
  *(a15 + 2) = 0;
  v44 = *a16;
  v45 = *(a16 + 2);
  *a16 = 0uLL;
  *(a16 + 2) = 0;
  BYTE4(v43) = a14;
  LODWORD(v43) = a13;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag> const&,std::string const&,ThreadArgumentInfo const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats> const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&,ZinIrParameters const&,ZinIrCallingConventionAttribute const&,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),unsigned int,unsigned long,ZinNamedType<unsigned long,SegmentIndexTag>,std::string,ThreadArgumentInfo,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,ZinIrParameters,ZinIrCallingConventionAttribute,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>(a1, a3, a4, a5, a6, v65, v58, &v55, &v93, &v52, &v48, v43, &v46, &v44);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a9);
  *a9 = v93;
  a9[2] = v94;
  v94 = 0;
  v93 = 0uLL;
  v95 = &v93;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v95);
  v95 = &v44;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v95);
  v95 = &v46;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>>>::destroy(&v52, v53);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v55, v56);
  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  v95 = &v60;
  std::vector<ZinDynamicOffsetCustomBarCmd>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[0]);
  }
}

void sub_1A69B4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  *(v67 - 56) = v66;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v67 - 56));
  *(v67 - 56) = &a19;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v67 - 56));
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>>>::destroy(&a32, a33);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a35, a36);
  ThreadArgumentInfo::~ThreadArgumentInfo(&a38);
  if (a65 < 0)
  {
    operator delete(a60);
  }

  *(v67 - 80) = v65;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v67 - 80));
  _Unwind_Resume(a1);
}

void CreateAneOperation(int a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a10, char a11, ZinRtOperationNode ***a12, ZinRtOperationNode ***a13, unint64_t *a14)
{
  std::operator+<char>();
  v16 = std::string::append(&v37, "_bb_", 4uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v36, a2);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v36;
  }

  else
  {
    v18 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v38, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v39, "_segment_", 9uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v35, *a3);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v35;
  }

  else
  {
    v24 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v35.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v40, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v41, "_ane_", 5uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v34, *a14);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v34;
  }

  else
  {
    v30 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v34.__r_.__value_.__l.__size_;
  }

  v32 = std::string::append(&__str, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v44 = v32->__r_.__value_.__r.__words[2];
  v43 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationANE,std::allocator<ZinRtOperationANE>,std::string,0>();
}

void sub_1A69B4F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  v58 = *(v56 - 144);
  if (v58)
  {
    *(v56 - 136) = v58;
    operator delete(v58);
  }

  v59 = *(v56 - 104);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  _Unwind_Resume(exception_object);
}

BOOL ConstructRtGraphWithMultipleBasicBlocks(void *a1, ZinRtNodeGraph *a2, uint64_t a3, ZinRtNodeGraph ***a4)
{
  if (*(a1[1] + 652) == 1)
  {
    v5 = *(*a1 + 1747) != 1 || *(a3 + 16) == 0;
    if (!v5)
    {
      ZinAssertImpl("Error: Software Conditional layers are currently unsupported.");
    }
  }

  v6 = a4 + 1;
  v7 = *a4;
  if (*a4 == (a4 + 1))
  {
    return 1;
  }

  while (1)
  {
    memset(v12, 0, sizeof(v12));
    v8 = ZinRtNodeGraph::MergeBackToBack(a2, v7 + 5, 2, v12);
    v13 = v12;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v13);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = v7[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v7[2];
        v5 = *v10 == v7;
        v7 = v10;
      }

      while (!v5);
    }

    v7 = v10;
    if (v10 == v6)
    {
      return 1;
    }
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ConstructRtGraphWithMultipleBasicBlocks();
    return 0;
  }

  return result;
}

void sub_1A69B51FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1A69B5334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void GenerateResourceInformationForUncompressedIO(void *a1@<X0>, void *a2@<X2>, unsigned int a3@<W3>, uint64_t *a4@<X8>)
{
  v57 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v5 = a1[2];
  OperationResourceType = GetOperationResourceType(&v57);
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  if (ZinIrBindings::GetSinglePlaneUncompressedDescriptor(v5, v57, &v54))
  {
    ZinAssertImpl("Error: Failed to get single plane uncompressed IO descriptors");
  }

  LiveIOInfoMap = ZinIrBindings::GetLiveIOInfoMap(v5, v57);
  memset(v53, 0, sizeof(v53));
  v6 = v54;
  if (v54 != v55)
  {
    v25 = v5;
    do
    {
      ZinGetUnmangledName(v6 + 32, v57, a1[3], &v52);
      BarIdForLiveIO = GetBarIdForLiveIO(v5, a1[4], v57, 0, 0, (v6 + 33));
      GetAneIndicesToTargetForIO(a1, a2, v57, v6 + 33, &v50);
      Dimension = ZinTensorPosition::GetDimension((v6 + 28), 2);
      v9 = *(v6 + 15);
      v47 = *(v6 + 13);
      v48 = v9;
      v49 = v6[17];
      v10 = std::map<std::string,std::string>::at(LiveIOInfoMap, v6 + 4);
      LOBYTE(v43.__begin_) = 0;
      v46 = 0;
      if (*(v10 + 320) == 1)
      {
        ZinIrShardingMapUtils::GetUnshardedDimensions(v32, &v47, (v10 + 248));
        v47 = *v32;
        v48 = *&v32[16];
        v49 = v33;
        v32[0] = 0;
        LOBYTE(v34) = 0;
        if ((*(v10 + 320) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ZinSPMDUtils::GetPerDeviceShardOffsetInfo(&v47, (v6 + 18), v32, (v10 + 248), &v41);
        std::optional<ZinIrSymbol::PerDeviceShardOffsetInfo>::operator=[abi:ne200100]<ZinIrSymbol::PerDeviceShardOffsetInfo,void>(&v43, &v41);
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if (v41.__r_.__value_.__r.__words[0])
        {
          v41.__r_.__value_.__l.__size_ = v41.__r_.__value_.__r.__words[0];
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (v34 == 1)
        {
          if (*&v32[24])
          {
            *&v33 = *&v32[24];
            operator delete(*&v32[24]);
          }

          if (*v32)
          {
            *&v32[8] = *v32;
            operator delete(*v32);
          }
        }
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v32, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        *v32 = v52;
      }

      v33 = v47;
      v34 = v48;
      v11 = *(v6 + 10);
      v36 = *(v6 + 9);
      *&v32[24] = 0;
      v35 = v49;
      v37 = v11;
      v38 = v6[22];
      v39 = Dimension;
      v40 = *(v6 + 14);
      v31[0] = 0;
      v31[1] = 0;
      v30 = v31;
      v12 = v50;
      if (v50 != v51)
      {
        do
        {
          v13 = v12[4];
          v29 = v13;
          if (v46 == 1)
          {
            if ((*(v10 + 320) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            ZinSPMDUtils::DeviceIdFromAneIndex((**a1 + 2248), (v10 + 248), v13, &v41);
            v14 = ZinSPMDUtils::CalculatePerDeviceOffsetFromSymbol(&v43, &v41);
            if (v41.__r_.__value_.__r.__words[0])
            {
              v41.__r_.__value_.__l.__size_ = v41.__r_.__value_.__r.__words[0];
              operator delete(v41.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v14 = 0;
          }

          if (*(v6 + 287) < 0)
          {
            std::string::__init_copy_ctor_external(&v41, v6[33], v6[34]);
          }

          else
          {
            v41 = *(v6 + 11);
          }

          v15 = v6[36];
          *__p = v14;
          *&__p[8] = v15;
          *&__p[16] = BarIdForLiveIO;
          __p[20] = 1;
          v58 = &v29;
          v16 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(&v30, &v29, &std::piecewise_construct, &v58);
          v17 = v16;
          if (*(v16 + 63) < 0)
          {
            operator delete(v16[5]);
          }

          *(v17 + 5) = v41;
          *(v17 + 4) = *__p;
          *(v17 + 77) = *&__p[13];
          v18 = v12[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v12[2];
              v20 = *v19 == v12;
              v12 = v19;
            }

            while (!v20);
          }

          v12 = v19;
        }

        while (v19 != v51);
      }

      v5 = v25;
      LOWORD(v41.__r_.__value_.__l.__data_) = GetOperationProtectionType(&v57);
      v21 = a4[1];
      if (v21 >= a4[2])
      {
        v22 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(a4, (v6 + 33), v6 + 36, &OperationResourceType, &v41, v32, &v30);
      }

      else
      {
        std::construct_at[abi:ne200100]<ResourceInformation,std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(a4[1], (v6 + 33), v6 + 36, &OperationResourceType, &v41, v32, &v30);
        v22 = v21 + 200;
      }

      a4[1] = v22;
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v30, v31[0]);
      if ((v32[23] & 0x80000000) != 0)
      {
        operator delete(*v32);
      }

      if (v46 == 1)
      {
        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v43.__begin_)
        {
          v43.__end_ = v43.__begin_;
          operator delete(v43.__begin_);
        }
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v50, v51[0]);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      v23 = v6[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v6[2];
          v20 = *v24 == v6;
          v6 = v24;
        }

        while (!v20);
      }

      v6 = v24;
    }

    while (v24 != v55);
  }

  *v32 = v53;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v32);
  std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::destroy(&v54, v55[0]);
}

void sub_1A69B5884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::destroy(v48 - 136, *(v48 - 128));
  __p = a14;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void GetAneIndicesToTargetForIO(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t ***a4@<X3>, void *a5@<X8>)
{
  AneIndicesMap = ZinIrBindings::GetAneIndicesMap(*(a1 + 16), a3);
  v10 = std::map<std::string,std::string>::at(AneIndicesMap, a4);
  std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](&v11, v10);
  if (*(*(a1 + 64) + 32) == 1)
  {
    std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](a5, a2);
  }

  else
  {
    a5[2] = 0;
    a5[1] = 0;
    *a5 = a5 + 1;
    std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::insert_iterator<std::set<ZinNamedType<unsigned long,AneIndexTag>>>>(*a2, a2 + 1, v11, &v12, a5, (a5 + 1), &v13, v14);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v11, v12);
}

void sub_1A69B5A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v10, *(v10 + 8));
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

std::vector<int> *std::optional<ZinIrSymbol::PerDeviceShardOffsetInfo>::operator=[abi:ne200100]<ZinIrSymbol::PerDeviceShardOffsetInfo,void>(std::vector<int> *this, __n128 *__c)
{
  if (LOBYTE(this[2].__begin_) == 1)
  {
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(this, __c);
    std::vector<ANEDebugInfo::DebugInfoInMem::Layer>::__move_assign(&this[1], (__c + 24));
  }

  else
  {
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    *&this->__begin_ = *__c;
    this->__end_cap_.__value_ = __c[1].n128_u64[0];
    *__c = 0uLL;
    __c[1].n128_u64[0] = 0;
    this[1].__begin_ = 0;
    this[1].__end_ = 0;
    this[1].__end_cap_.__value_ = 0;
    this[1] = *&__c[1].n128_i8[8];
    *(&__c[1] + 8) = 0uLL;
    __c[2].n128_u64[1] = 0;
    LOBYTE(this[2].__begin_) = 1;
  }

  return this;
}

void GenerateRtResourceInformationList(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v199 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v8 = a1[1];
  ZinIrMemoryPools::GetSections(v8, 0, 1, v154);
  v9 = v155;
  std::__list_imp<ZinIrSection *>::clear(v154);
  if (!v9)
  {
    ZinAssertImpl("Error: ZinIrSection::TEXT section not found");
  }

  ZinIrMemoryPools::GetSections(v8, 0, 1, v154);
  v10 = *(v154[1] + 2);
  std::__list_imp<ZinIrSection *>::clear(v154);
  v154[1] = 0;
  v155 = 0;
  v154[0] = &v154[1];
  v147 = a5;
  if (*((*a1)[1] + 652) == 1)
  {
    BarIdForBarIdType = ZinBarUsage::GetBarIdForBarIdType(a1[4], 0);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    BarIdForBarIdType = 0;
  }

  v13 = *a3;
  v149 = a1;
  v150 = a3 + 1;
  if (*a3 == a3 + 1)
  {
    v14 = 0;
    v16 = v10;
    goto LABEL_45;
  }

  v14 = 0;
  v15 = 0;
  v16 = v10;
  while (1)
  {
    v17 = v149[6];
    __s.__r_.__value_.__r.__words[0] = 0;
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(v17, &__s))
    {
      ZinAssertImpl("Missing the first basic block within an ane region.");
    }

    v18 = v149[6];
    __str.__r_.__value_.__r.__words[0] = 0;
    v19 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(v18, &__str);
    if (!v19)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    Operations = ZinRtOperationNode::GetOperations((v19 + 3));
    v21 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(Operations, v13 + 4);
    std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::map[abi:ne200100](&__s, v21);
    v22 = *v150;
    if (*v150)
    {
      v23 = *(__s.__r_.__value_.__r.__words[0] + 88);
      v24 = v13[4];
      v25 = a3 + 1;
      do
      {
        v26 = v22[4];
        v27 = v26 >= v24;
        v28 = v26 < v24;
        if (v27)
        {
          v25 = v22;
        }

        v22 = v22[v28];
      }

      while (v22);
      if (v25 != v150 && v24 >= v25[4])
      {
        if ((v15 & 1) == 0)
        {
          v14 = *(__s.__r_.__value_.__r.__words[0] + 88);
        }

        std::to_string(&v181, v24);
        v29 = std::string::insert(&v181, 0, "beginning_of_text_region_for_ane_", 0x21uLL);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v182.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v182.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        v31 = std::string::append(&v182, "_procedure_", 0xBuLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v184.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v184.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = *(a2 + 23);
        if (v33 >= 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = *a2;
        }

        if (v33 >= 0)
        {
          v35 = *(a2 + 23);
        }

        else
        {
          v35 = *(a2 + 8);
        }

        v36 = std::string::append(&v184, v34, v35);
        v37 = *&v36->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v184.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v182.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v181.__r_.__value_.__l.__data_);
        }

        AddSymbol(&__str, v16, v23, 0, a4);
        v184.__r_.__value_.__r.__words[0] = (v13 + 4);
        v38 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(v154, v13 + 4, &std::piecewise_construct, &v184);
        std::string::operator=((v38 + 5), &__str);
        v184.__r_.__value_.__r.__words[0] = (v13 + 4);
        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(v154, v13 + 4, &std::piecewise_construct, &v184)[8] = v23 - v14;
        TotalTextSizeOfAneRegionInBytes = ZinIrCodegenStatsUtil::GetTotalTextSizeOfAneRegionInBytes(v149[6], **v149, v13 + 4);
        v184.__r_.__value_.__r.__words[0] = (v13 + 4);
        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(v154, v13 + 4, &std::piecewise_construct, &v184)[9] = TotalTextSizeOfAneRegionInBytes;
        v184.__r_.__value_.__r.__words[0] = (v13 + 4);
        v40 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(v154, v13 + 4, &std::piecewise_construct, &v184);
        *(v40 + 20) = BarIdForBarIdType;
        *(v40 + 84) = v12;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v15 = 1;
        goto LABEL_36;
      }
    }

    if (v15)
    {
      break;
    }

    v15 = 0;
LABEL_36:
    std::__tree<std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>,std::__map_value_compare<ZinNamedType<unsigned long,SegmentIndexTag>,std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>,std::less<ZinNamedType<unsigned long,SegmentIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>>::destroy(&__s, __s.__r_.__value_.__l.__size_);
    v41 = v13[1];
    if (v41)
    {
      do
      {
        v42 = v41;
        v41 = *v41;
      }

      while (v41);
    }

    else
    {
      do
      {
        v42 = v13[2];
        v43 = *v42 == v13;
        v13 = v42;
      }

      while (!v43);
    }

    v13 = v42;
    if (v42 == v150)
    {
      goto LABEL_45;
    }
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>,std::__map_value_compare<ZinNamedType<unsigned long,SegmentIndexTag>,std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>,std::less<ZinNamedType<unsigned long,SegmentIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>>::destroy(&__s, __s.__r_.__value_.__l.__size_);
LABEL_45:
  std::operator+<char>();
  v44 = std::string::append(&v184, "_starting_at_ane_", 0x11uLL);
  v45 = v149;
  v46 = *&v44->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v46;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v182, *(*a3 + 32));
  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = &v182;
  }

  else
  {
    v47 = v182.__r_.__value_.__r.__words[0];
  }

  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v182.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v182.__r_.__value_.__l.__size_;
  }

  v49 = std::string::append(&__str, v47, size);
  v50 = *&v49->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  AddSymbol(&__s, v16, v14, 0, a4);
  v51 = *v150;
  if (*v150)
  {
    do
    {
      v52 = v51;
      v51 = v51[1];
    }

    while (v51);
  }

  else
  {
    v53 = a3 + 1;
    do
    {
      v52 = v53[2];
      v43 = *v52 == v53;
      v53 = v52;
    }

    while (v43);
  }

  v144 = a3;
  __str.__r_.__value_.__r.__words[0] = (v52 + 4);
  v54 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(v154, v52 + 4, &std::piecewise_construct, &__str);
  v55 = v54[8];
  v56 = v54[9];
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = __s;
  }

  v173 = v56 + v55;
  v174 = 262145;
  LOBYTE(v175) = 0;
  v177 = 0;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](v178, v154);
  v57 = v144;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v154, v154[1]);
  std::vector<ResourceInformation>::push_back[abi:ne200100](a5, &v172);
  v58 = v149[1];
  v59 = v58[5];
  PrivatePool = ZinIrMemoryPools::GetPrivatePool(v58, 0, 0);
  v61 = v149[4];
  v64 = v61[1];
  v62 = v61 + 1;
  v63 = v64;
  if (!v64)
  {
    goto LABEL_74;
  }

  v65 = v62;
  do
  {
    if (*(v63 + 7) >= 1)
    {
      v65 = v63;
    }

    v63 = v63[*(v63 + 7) < 1];
  }

  while (v63);
  if (v65 == v62 || *(v65 + 7) >= 2)
  {
LABEL_74:
    v65 = v62;
  }

  v66 = *(v65 + 32);
  if (v59)
  {
    ZinIrMemoryPool::GetSections(v59, 0, &__s);
    v67 = __s.__r_.__value_.__r.__words[2];
    std::__list_imp<ZinIrSection *>::clear(&__s);
    if (v67)
    {
      ZinIrMemoryPool::GetSections(PrivatePool, 0, &__s);
      v68 = __s.__r_.__value_.__r.__words[2];
      std::__list_imp<ZinIrSection *>::clear(&__s);
      if (!v68)
      {
        ZinIrMemoryPool::GetSections(v59, 0, &__s);
        v69 = *(__s.__r_.__value_.__l.__size_ + 16);
        std::__list_imp<ZinIrSection *>::clear(&__s);
        v70 = *(v69 + 32);
        if (v70)
        {
          std::operator+<char>();
          AddSymbol(&__str, v69, 0, 0, a4);
          *&v184.__r_.__value_.__r.__words[1] = 0uLL;
          v184.__r_.__value_.__r.__words[0] = &v184.__r_.__value_.__l.__size_;
          v71 = *v144;
          if (*v144 != v150)
          {
            do
            {
              v181.__r_.__value_.__r.__words[0] = v71[4];
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __s = __str;
              }

              *v187 = 0;
              *&v187[8] = v70;
              *&v187[16] = v66;
              v187[20] = 1;
              v182.__r_.__value_.__r.__words[0] = &v181;
              v72 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(&v184, &v181, &std::piecewise_construct, &v182);
              v73 = v72;
              if (*(v72 + 63) < 0)
              {
                operator delete(v72[5]);
              }

              *(v73 + 5) = __s;
              *(v73 + 4) = *v187;
              *(v73 + 77) = *&v187[13];
              v74 = v71[1];
              if (v74)
              {
                do
                {
                  v75 = v74;
                  v74 = *v74;
                }

                while (v74);
              }

              else
              {
                do
                {
                  v75 = v71[2];
                  v43 = *v75 == v71;
                  v71 = v75;
                }

                while (!v43);
              }

              v71 = v75;
            }

            while (v75 != v150);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __s = __str;
          }

          *v187 = v70;
          *&v187[8] = 65538;
          v187[16] = 0;
          v195 = 0;
          std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&v196, &v184);
          *v154 = *&__s.__r_.__value_.__l.__data_;
          v88 = __s.__r_.__value_.__r.__words[2];
          memset(&__s, 0, sizeof(__s));
          v155 = v88;
          v156 = *v187;
          v157 = *&v187[8];
          LOBYTE(v158) = 0;
          v167 = 0;
          if (v195 == 1)
          {
            v158 = *&v187[16];
            v163 = v191;
            v164 = v192;
            v165 = v193;
            v160 = v188;
            v161 = v189;
            v159 = *&v187[32];
            memset(&v187[16], 0, 24);
            v166 = v194;
            v162 = v190;
            v167 = 1;
          }

          v89 = v197;
          v168 = v196;
          v169 = v197;
          v170 = v198;
          if (v198)
          {
            *(v197 + 2) = &v169;
            v196 = &v197;
            v197 = 0;
            v198 = 0;
            v89 = 0;
          }

          else
          {
            v168 = &v169;
          }

          v171 = 1;
          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v196, v89);
          if (v195 == 1 && (v187[39] & 0x80000000) != 0)
          {
            operator delete(*&v187[16]);
          }

          v57 = v144;
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v184, v184.__r_.__value_.__l.__size_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v87 = __str.__r_.__value_.__r.__words[0];
LABEL_146:
            operator delete(v87);
          }

          goto LABEL_147;
        }

LABEL_109:
        LOBYTE(v154[0]) = 0;
        v171 = 0;
        goto LABEL_147;
      }

      v141 = "Error: Incoherent const sections - there is both a shared const and a private const";
LABEL_288:
      ZinAssertImpl(v141);
    }
  }

  ZinIrMemoryPool::GetSections(PrivatePool, 0, &__s);
  v76 = __s.__r_.__value_.__r.__words[2];
  std::__list_imp<ZinIrSection *>::clear(&__s);
  if (!v76)
  {
    v141 = "Error: Private pool for ANE 0 missing the const section";
    goto LABEL_288;
  }

  ZinIrMemoryPool::GetSections(PrivatePool, 0, &__s);
  v77 = *(__s.__r_.__value_.__l.__size_ + 16);
  std::__list_imp<ZinIrSection *>::clear(&__s);
  v78 = *(v77 + 32);
  if (!v78)
  {
    goto LABEL_109;
  }

  std::operator+<char>();
  v79 = std::string::append(&__str, "_ane_", 5uLL);
  v80 = *&v79->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v182, 0);
  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &v182;
  }

  else
  {
    v81 = v182.__r_.__value_.__r.__words[0];
  }

  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = v182.__r_.__value_.__l.__size_;
  }

  v83 = std::string::append(&__s, v81, v82);
  v84 = *&v83->__r_.__value_.__l.__data_;
  v184.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
  *&v184.__r_.__value_.__l.__data_ = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  AddSymbol(&v184, v77, 0, 0, a4);
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v184;
  }

  *v180 = 0;
  *&v180[8] = v78;
  *&v180[16] = v66;
  v180[20] = 1;
  __s.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s.__r_.__value_.__r.__words[1], __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__s.__r_.__value_.__r.__words[1] = *&__str.__r_.__value_.__l.__data_;
    *v187 = *(&__str.__r_.__value_.__l + 2);
  }

  *&v187[8] = *v180;
  *&v187[21] = *&v180[13];
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&v182, &__s, 1);
  if ((v187[7] & 0x80000000) != 0)
  {
    operator delete(__s.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v184;
  }

  *v187 = v78;
  *&v187[8] = 65538;
  v187[16] = 0;
  v195 = 0;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&v196, &v182);
  *v154 = *&__s.__r_.__value_.__l.__data_;
  v85 = __s.__r_.__value_.__r.__words[2];
  memset(&__s, 0, sizeof(__s));
  v155 = v85;
  v156 = *v187;
  v157 = *&v187[8];
  LOBYTE(v158) = 0;
  v167 = 0;
  if (v195 == 1)
  {
    v158 = *&v187[16];
    v163 = v191;
    v164 = v192;
    v165 = v193;
    v160 = v188;
    v161 = v189;
    v159 = *&v187[32];
    memset(&v187[16], 0, 24);
    v166 = v194;
    v162 = v190;
    v167 = 1;
  }

  v86 = v197;
  v168 = v196;
  v169 = v197;
  v170 = v198;
  if (v198)
  {
    *(v197 + 2) = &v169;
    v196 = &v197;
    v197 = 0;
    v198 = 0;
    v86 = 0;
  }

  else
  {
    v168 = &v169;
  }

  v171 = 1;
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v196, v86);
  if (v195 == 1 && (v187[39] & 0x80000000) != 0)
  {
    operator delete(*&v187[16]);
  }

  v57 = v144;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v182, v182.__r_.__value_.__l.__size_);
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    v87 = v184.__r_.__value_.__r.__words[0];
    goto LABEL_146;
  }

LABEL_147:
  if (v171 == 1)
  {
    std::vector<ResourceInformation>::push_back[abi:ne200100](a5, v154);
  }

  GenerateResourceInformationForUncompressedIO(v149, v57, 0, &__s);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((__s.__r_.__value_.__l.__size_ - __s.__r_.__value_.__r.__words[0]) >> 3));
  GenerateResourceInformationForUncompressedIO(v149, v57, 1u, &__str);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3));
  GenerateResourceInformationForUncompressedIO(v149, v57, 2u, &v184);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((v184.__r_.__value_.__l.__size_ - v184.__r_.__value_.__r.__words[0]) >> 3));
  GenerateResourceInformationForCompressedIO(v149, v57, 0, &v182);
  std::vector<ResourceInformation>::__vdeallocate(&__s);
  __s = v182;
  memset(&v182, 0, sizeof(v182));
  v181.__r_.__value_.__r.__words[0] = &v182;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&v181);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((__s.__r_.__value_.__l.__size_ - __s.__r_.__value_.__r.__words[0]) >> 3));
  GenerateResourceInformationForCompressedIO(v149, v57, 1, &v182);
  std::vector<ResourceInformation>::__vdeallocate(&__str);
  __str = v182;
  memset(&v182, 0, sizeof(v182));
  v181.__r_.__value_.__r.__words[0] = &v182;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&v181);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3));
  GenerateResourceInformationForCompressedIO(v149, v144, 2, &v182);
  std::vector<ResourceInformation>::__vdeallocate(&v184);
  v184 = v182;
  memset(&v182, 0, sizeof(v182));
  v181.__r_.__value_.__r.__words[0] = &v182;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&v181);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(a5, a5[1], v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((v184.__r_.__value_.__l.__size_ - v184.__r_.__value_.__r.__words[0]) >> 3));
  v182.__r_.__value_.__r.__words[0] = &v184;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&v182);
  v184.__r_.__value_.__r.__words[0] = &__str;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&v184);
  __str.__r_.__value_.__r.__words[0] = &__s;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&__str);
  v151 = 0;
  *v152 = 0;
  v153 = 0;
  memset(&v182, 0, sizeof(v182));
  v90 = v149[1][6];
  v91 = v144;
  if (v90)
  {
    ZinIrMemoryPool::GetSections(v90, 4, &__s);
    v92 = __s.__r_.__value_.__r.__words[2];
    std::__list_imp<ZinIrSection *>::clear(&__s);
    if (v92)
    {
      ZinIrMemoryPool::GetSections(v90, 4, &__s);
      v93 = *(__s.__r_.__value_.__l.__size_ + 16);
      std::__list_imp<ZinIrSection *>::clear(&__s);
      v94 = *(v93 + 32);
      if (v94)
      {
        v95 = v149[8];
        if ((v95[4] & 1) == 0)
        {
          ZinAssertImpl("Error: Replicated BSS is only sGupported in SPMD mode");
        }

        v96 = 0;
        NumDies = ZinIrDeviceMesh::GetNumDies(v95);
        v185 = v94 / NumDies;
        v148 = NumDies - 1;
        if (NumDies <= 1)
        {
          NumDies = 1;
        }

        v142 = NumDies;
        v143 = vdupq_n_s64(1uLL);
        do
        {
          std::to_string(&__s, v96);
          v98 = std::string::insert(&__s, 0, "replicated_bss_start_for_die_", 0x1DuLL);
          v99 = *&v98->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v99;
          v98->__r_.__value_.__l.__size_ = 0;
          v98->__r_.__value_.__r.__words[2] = 0;
          v98->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          *&v184.__r_.__value_.__r.__words[1] = 0uLL;
          v184.__r_.__value_.__r.__words[0] = &v184.__r_.__value_.__l.__size_;
          v183 = 0;
          if ((ZinBarUsage::HasBarIdForBarIdType(v45[4], 23) & 1) == 0)
          {
            ZinAssertImpl("Error: Missing Bar ID for local replicated BSS Section");
          }

          v100 = ZinBarUsage::GetBarIdForBarIdType(v45[4], 23);
          v101 = *v91;
          if (*v91 == v150)
          {
            v110 = 2;
          }

          else
          {
            v102 = v100;
            v103 = 0;
            v104 = 0;
            do
            {
              BarIdForReplicatedBSS = GetBarIdForReplicatedBSS(v149, v96, v101[4]);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __s = __str;
              }

              *v187 = 0;
              *&v187[8] = v185;
              *&v187[16] = BarIdForReplicatedBSS;
              v187[20] = 1;
              v181.__r_.__value_.__r.__words[0] = (v101 + 4);
              v106 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(&v184, v101 + 4, &std::piecewise_construct, &v181);
              v107 = v106;
              if (*(v106 + 63) < 0)
              {
                operator delete(v106[5]);
              }

              *(v107 + 5) = __s;
              *(v107 + 4) = *v187;
              *(v107 + 77) = *&v187[13];
              v104 |= BarIdForReplicatedBSS == v102;
              if ((v104 & 1) == 0 && ++v103 >= v148)
              {
                v110 = 2;
                goto LABEL_179;
              }

              v108 = v101[1];
              if (v108)
              {
                do
                {
                  v109 = v108;
                  v108 = *v108;
                }

                while (v108);
              }

              else
              {
                do
                {
                  v109 = v101[2];
                  v43 = *v109 == v101;
                  v101 = v109;
                }

                while (!v43);
              }

              v101 = v109;
            }

            while (v109 != v150);
            if (v104)
            {
              v110 = 3;
            }

            else
            {
              v110 = 2;
            }

LABEL_179:
            v91 = v144;
          }

          v183 = v110;
          v45 = v149;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __s = __str;
          }

          *v187 = 0;
          *&v187[8] = v143;
          *&v187[24] = v143;
          v188 = v143;
          v189 = v143;
          v190 = v143;
          *&v191 = 0;
          DWORD2(v191) = 0;
          LOWORD(v181.__r_.__value_.__l.__data_) = 5;
          v111 = v182.__r_.__value_.__l.__size_;
          if (v182.__r_.__value_.__l.__size_ >= v182.__r_.__value_.__r.__words[2])
          {
            v112 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(&v182, &__str, &v185, &v181, &v183, &__s, &v184);
          }

          else
          {
            std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(v182.__r_.__value_.__l.__size_, &__str, &v185, &v181, &v183, &__s, &v184);
            v112 = v111 + 200;
          }

          v182.__r_.__value_.__l.__size_ = v112;
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v184, v184.__r_.__value_.__l.__size_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          ++v96;
        }

        while (v96 != v142);
      }
    }
  }

  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(&v151, *v152, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_, 0x8F5C28F5C28F5C29 * ((v182.__r_.__value_.__l.__size_ - v182.__r_.__value_.__r.__words[0]) >> 3));
  v113 = v45[1][5];
  if (v113)
  {
    ZinIrMemoryPool::GetSections(v45[1][5], 4, &__s);
    v114 = __s.__r_.__value_.__r.__words[2];
    std::__list_imp<ZinIrSection *>::clear(&__s);
    if (v114)
    {
      ZinIrMemoryPool::GetSections(v113, 4, &__s);
      v115 = *(__s.__r_.__value_.__l.__size_ + 16);
      std::__list_imp<ZinIrSection *>::clear(&__s);
      v116 = *(v115 + 48);
      v181.__r_.__value_.__r.__words[0] = *(v115 + 32);
      if (v181.__r_.__value_.__r.__words[0])
      {
        std::operator+<char>();
        AddSymbol(&__str, v115, 0, 0, a4);
        GenerateDuplicateRegionInfoForANEs(&__str, 0, v181.__r_.__value_.__l.__data_, v116 | 0x100000000, v91, &v184);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          __s = __str;
        }

        *v187 = 0;
        *&v187[8] = vdupq_n_s64(1uLL);
        *&v187[24] = *&v187[8];
        v188 = *&v187[8];
        v189 = *&v187[8];
        v190 = *&v187[8];
        *&v191 = 0;
        DWORD2(v191) = 0;
        LOWORD(v185) = 3;
        v183 = 5;
        v117 = *v152;
        if (*v152 >= v153)
        {
          p_size = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(&v151, &__str, &v181, &v183, &v185, &__s, &v184);
        }

        else
        {
          std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(*v152, &__str, &v181, &v183, &v185, &__s, &v184);
          p_size = &v117[8].__r_.__value_.__l.__size_;
        }

        *v152 = p_size;
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v184, v184.__r_.__value_.__l.__size_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v119 = *v91;
  if (*v91 != v150)
  {
    do
    {
      v120 = v119[4];
      v121 = ZinIrMemoryPools::GetPrivatePool(v149[1], 0, 0);
      v122 = v121;
      if (v121)
      {
        ZinIrMemoryPool::GetSections(v121, 4, &__s);
        v123 = __s.__r_.__value_.__r.__words[2];
        std::__list_imp<ZinIrSection *>::clear(&__s);
        if (v123)
        {
          ZinIrMemoryPool::GetSections(v122, 4, &__s);
          v124 = *(__s.__r_.__value_.__l.__size_ + 16);
          std::__list_imp<ZinIrSection *>::clear(&__s);
          v125 = *(v124 + 48);
          v185 = *(v124 + 32);
          if (v185)
          {
            std::operator+<char>();
            v126 = std::string::append(&__str, "_ane_", 5uLL);
            v127 = *&v126->__r_.__value_.__l.__data_;
            __s.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
            *&__s.__r_.__value_.__l.__data_ = v127;
            v126->__r_.__value_.__l.__size_ = 0;
            v126->__r_.__value_.__r.__words[2] = 0;
            v126->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v181, v120);
            if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v128 = &v181;
            }

            else
            {
              v128 = v181.__r_.__value_.__r.__words[0];
            }

            if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v129 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v129 = v181.__r_.__value_.__l.__size_;
            }

            v130 = std::string::append(&__s, v128, v129);
            v131 = *&v130->__r_.__value_.__l.__data_;
            v184.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
            *&v184.__r_.__value_.__l.__data_ = v131;
            v130->__r_.__value_.__l.__size_ = 0;
            v130->__r_.__value_.__r.__words[2] = 0;
            v130->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v181.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            AddSymbol(&v184, v124, 0, 0, a4);
            if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
            }

            else
            {
              __str = v184;
            }

            *v180 = 0;
            *&v180[8] = v185;
            *&v180[16] = v125;
            v180[20] = 1;
            __s.__r_.__value_.__r.__words[0] = v120;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__s.__r_.__value_.__r.__words[1], __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
            }

            else
            {
              *&__s.__r_.__value_.__r.__words[1] = *&__str.__r_.__value_.__l.__data_;
              *v187 = *(&__str.__r_.__value_.__l + 2);
            }

            *&v187[8] = *v180;
            *&v187[21] = *&v180[13];
            std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&v181, &__s, 1);
            if ((v187[7] & 0x80000000) != 0)
            {
              operator delete(__s.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__s, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
            }

            else
            {
              __s = v184;
            }

            *v187 = 0;
            *&v187[8] = vdupq_n_s64(1uLL);
            *&v187[24] = *&v187[8];
            v188 = *&v187[8];
            v189 = *&v187[8];
            v190 = *&v187[8];
            *&v191 = 0;
            DWORD2(v191) = 0;
            LOWORD(__str.__r_.__value_.__l.__data_) = 3;
            v183 = 5;
            v132 = *v152;
            if (*v152 >= v153)
            {
              v133 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(&v151, &v184, &v185, &v183, &__str, &__s, &v181);
            }

            else
            {
              std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(*v152, &v184, &v185, &v183, &__str, &__s, &v181);
              v133 = &v132[8].__r_.__value_.__l.__size_;
            }

            *v152 = v133;
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v181, v181.__r_.__value_.__l.__size_);
            if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v184.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v134 = v119[1];
      if (v134)
      {
        do
        {
          v135 = v134;
          v134 = *v134;
        }

        while (v134);
      }

      else
      {
        do
        {
          v135 = v119[2];
          v43 = *v135 == v119;
          v119 = v135;
        }

        while (!v43);
      }

      v119 = v135;
    }

    while (v135 != v150);
  }

  __s.__r_.__value_.__r.__words[0] = &v182;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&__s);
  std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(v147, v147[1], v151, *v152, 0x8F5C28F5C28F5C29 * ((*v152 - v151) >> 3));
  if (*(v149 + 14))
  {
    v136 = v149[2];
    LayerExecutionBehaviors = ZinIrExecutionBehavior::GetLayerExecutionBehaviors(v136);
    if (*(LayerExecutionBehaviors + 80) == 1)
    {
      GenerateResourceInformationForEvent(v149, v91, 10, LayerExecutionBehaviors, &__s);
      std::vector<ResourceInformation>::push_back[abi:ne200100](v147, &__s);
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v196, v197);
      if (v195 == 1 && (v187[39] & 0x80000000) != 0)
      {
        operator delete(*&v187[16]);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    NodeGraph = ZinRtProcedure::GetNodeGraph(v136);
    if (*(NodeGraph + 72) == 1)
    {
      GenerateResourceInformationForEvent(v149, v91, 11, NodeGraph, &__s);
      std::vector<ResourceInformation>::push_back[abi:ne200100](v147, &__s);
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v196, v197);
      if (v195 == 1 && (v187[39] & 0x80000000) != 0)
      {
        operator delete(*&v187[16]);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }

    if (*(v149 + 14))
    {
      LODWORD(v182.__r_.__value_.__l.__data_) = ZinBarUsage::GetSizeInBytesOfAllUsedBar(v149[4]);
      std::operator+<char>();
      GenerateDuplicateRegionInfoForANEs(&__str, 0, 8, 0, v91, &v184);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__s, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        __s = __str;
      }

      *v187 = 0;
      *&v187[8] = vdupq_n_s64(1uLL);
      *&v187[24] = *&v187[8];
      v188 = *&v187[8];
      v189 = *&v187[8];
      v190 = *&v187[8];
      *&v191 = 0;
      DWORD2(v191) = 0;
      LOWORD(v181.__r_.__value_.__l.__data_) = 3;
      LOWORD(v185) = 12;
      v139 = v147[1];
      if (v139 >= v147[2])
      {
        v140 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned int &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(v147, &__str, &v182, &v185, &v181, &__s, &v184);
      }

      else
      {
        std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned int &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(v147[1], &__str, &v182, &v185, &v181, &__s, &v184);
        v140 = v139 + 200;
      }

      v147[1] = v140;
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v184, v184.__r_.__value_.__l.__size_);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  __s.__r_.__value_.__r.__words[0] = &v151;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&__s);
  if (v171 == 1)
  {
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&v168, v169);
    if (v167 == 1 && SHIBYTE(v159) < 0)
    {
      operator delete(v158);
    }

    if (SHIBYTE(v155) < 0)
    {
      operator delete(v154[0]);
    }
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v178, v178[1]);
  if (v177 == 1 && v176 < 0)
  {
    operator delete(v175);
  }

  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }
}