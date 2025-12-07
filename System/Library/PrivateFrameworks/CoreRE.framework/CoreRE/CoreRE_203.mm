_BYTE *re::internal::anonymous namespace::addOffsetToAllValuesForAttribute(re::internal::_anonymous_namespace_ *this, re::GeomMesh *a2, const char *a3)
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  if (result)
  {
    v5 = result;
    if (result[17] == 3)
    {
      if ((*(*result + 16))(result))
      {
        if (!v5[5])
        {
          goto LABEL_16;
        }

        v6 = v5[7];
        v7 = (*(*v5 + 16))(v5);
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      result = (*(*v5 + 16))(v5);
      if (result)
      {
        v8 = 0;
        while (v7 != v8)
        {
          *(v6 + 4 * v8++) += v3;
          if (result == v8)
          {
            return result;
          }
        }

        v15 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v19 = 621;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v7;
        _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v15 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (v12)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = 0;
        v22 = 2048;
        v23 = 0;
        _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  return result;
}

void re::ktxMipInfo(id *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  MTLPixelFormatGetInfoForDevice();
  if ((v8 & 1) == 0)
  {

    v4 = 0;
  }

  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v5 = (*(a3 + 80) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(a3 + 40);
  v7 = *(a3 + 32) * v5;
  *(a3 + 80) = v5;
  *(a3 + 88) = v7;
  *(a3 + 96) = v6 * v7;
}

void re::createTextureWithKTXData(uint64_t a1@<X0>, re::SeekableInputStream *a2@<X1>, unsigned int a3@<W2>, const char *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, re::Allocator *x5_0@<X5>, void *a9, uint64_t a10, uint64_t a11)
{
  v16 = a2;
  v226[1] = *MEMORY[0x1E69E9840];
  if (a10 && (v19 = atomic_load((a10 + 24)), (v19 & 1) != 0) || a11 && (v20 = atomic_load((a11 + 24)), (v20 & 1) != 0))
  {
    v21 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", buf, 2u);
    }

    *(a8 + 72) = 0;
    *(a8 + 80) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *(a8 + 64) = 0;
    *(a8 + 88) &= 0xFC00u;
    *(a8 + 104) = 0;
    *(a8 + 112) = 0;
    *(a8 + 96) = 0;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 156) = 0u;
    *(a8 + 176) = 0;
    *(a8 + 184) = 0;
    return;
  }

  v209 = 0;
  v210 = 0;
  *buf = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = 0;
  v211 &= 0xFC00u;
  memset(v212, 0, 24);
  v213 = 0u;
  memset(v214, 0, 28);
  v215 = 0uLL;
  if ((v193[0] & 1) == 0)
  {
    v26 = *re::pipelineLogObjects(v22);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    if (BYTE8(v194))
    {
      v59 = v195;
    }

    else
    {
      v59 = &v194 + 9;
    }

    LODWORD(v221) = 136315138;
    *(&v221 + 4) = v59;
    v30 = "Failed to parse texture info from KTX: %s";
    v31 = v26;
    v32 = 12;
    goto LABEL_89;
  }

  v172 = a9;
  v171 = (a9 + 3);
  if (!a10 || (v23 = atomic_load((a10 + 24)), (v23 & 1) == 0))
  {
    if (!a11 || (v24 = atomic_load((a11 + 24)), (v24 & 1) == 0))
    {
      v27 = (*(*v16 + 40))(v16);
      v28 = (*(*v16 + 64))(v16);
      if (v27 < v28)
      {
        v183 = 0;
        v191[0] = &unk_1F5D0B2C8;
        v191[1] = &v183;
        v192 = v191;
        if (!a9)
        {
          v28 = (*(*v16 + 80))(v16);
          if (v28 && (v28 = (*(*v16 + 88))(v16), v28))
          {
            v171 = &v192;
            v28 = (*(*v16 + 72))(v16);
            v183 = v28;
            if (v28)
            {
              v16 = v28;
            }

            v172 = v191;
          }

          else
          {
            v171 = 24;
            v172 = 0;
          }
        }

        *buf = v194;
        v204 = v195;
        v205 = *v196;
        v206 = *&v196[16];
        if (v207)
        {
          if ((v201 & 1) == 0)
          {
            v207 = 0;
            goto LABEL_46;
          }
        }

        else
        {
          if ((v201 & 1) == 0)
          {
            goto LABEL_46;
          }

          v207 = 1;
        }

        v208 = v202;
LABEL_46:
        if (a10 && (v33 = atomic_load((a10 + 24)), (v33 & 1) != 0) || a11 && (v34 = atomic_load((a11 + 24)), (v34 & 1) != 0))
        {
          v35 = *re::pipelineLogObjects(v28);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v221) = 0;
            _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", &v221, 2u);
          }

          *(a8 + 72) = 0;
          *(a8 + 80) = 0;
          *a8 = 0u;
          *(a8 + 16) = 0u;
          *(a8 + 32) = 0u;
          *(a8 + 48) = 0u;
          *(a8 + 64) = 0;
          *(a8 + 88) &= 0xFC00u;
          *(a8 + 104) = 0;
          *(a8 + 112) = 0;
          *(a8 + 96) = 0;
          *(a8 + 128) = 0u;
          *(a8 + 144) = 0u;
          *(a8 + 156) = 0u;
          *(a8 + 176) = 0;
          *(a8 + 184) = 0;
          std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v191);
          re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v193);
          goto LABEL_20;
        }

        v36 = a5[1];
        v174 = *a5;
        *v175 = v36;
        *&v175[16] = a5[2];
        *&v175[28] = *(a5 + 44);
        v176 = *(a5 + 8);
        v177 = *(a5 + 72);
        v178 = *(a5 + 22);
        re::FixedArray<short>::FixedArray(&v179, a5 + 12);
        v182 = *(a5 + 120);
        v189 = a3;
        v37 = (*(*v16 + 64))(v16);
        v38 = v197;
        v188 = v38;
        v170 = [v38 pixelFormat];
        if (a7)
        {
          [v38 setStorageMode_];
        }

        v39 = *&v196[4];
        v40 = *&v196[12];
        v41 = *&v196[20];
        v42 = v199[1];
        if ((v199[0] & 1) == 0)
        {
          v42 = v199 + 1;
        }

        v43 = LOBYTE(v199[0]) >> 1;
        if (v199[0])
        {
          v43 = v199[0] >> 1;
        }

        *&v221 = v42;
        *(&v221 + 1) = v43;
        v44 = v200[1];
        if ((v200[0] & 1) == 0)
        {
          v44 = v200 + 1;
        }

        v45 = LOBYTE(v200[0]) >> 1;
        if (v200[0])
        {
          v45 = v200[0] >> 1;
        }

        *v217 = v44;
        *&v217[8] = v45;
        isHDR = re::isHDR(v170);
        ColorSpaceName = re::getColorSpaceName(&v221, v217, isHDR);
        v187 = 0;
        {
          *v217 = 0;
          *&v217[8] = 0;
          *v218 &= 0xFC00u;
          memset(&v218[8], 0, 24);
          memset(&v218[40], 0, 44);
          v219 = 0uLL;
          goto LABEL_305;
        }

        v169 = v187;
        *&v221 = 0;
        DWORD2(v221) = 0;
        LOWORD(v222[0]) &= 0xFC00u;
        memset(&v222[1], 0, 24);
        v223 = 0u;
        memset(v224, 0, 28);
        v225 = 0uLL;
        if (*(a1 + 16) != 1)
        {
          goto LABEL_68;
        }

        if ((*&v175[40] - 3) > 1)
        {
          goto LABEL_68;
        }

        v48 = v176;
        v49 = v176;
        if (!v48 || re::ColorHelpers::isGrayScaleCGColorSpaceName(v48, v50))
        {
          goto LABEL_68;
        }

        v217[0] = 0;
        if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v48, v217))
        {
          if (re::getComponentCount([v188 pixelFormat]) == 1)
          {
LABEL_68:
            v167 = 0;
            goto LABEL_69;
          }

          if (*(a1 + 19))
          {
            v98 = *(a1 + 20);
          }

          else
          {
            v98 = 0;
          }

          v99 = v217[0] != v98;
        }

        else
        {
          v99 = 1;
        }

        v167 = v99;
LABEL_69:
        if (SkippedMipsForDownsampling <= v178)
        {
          v52 = v178;
        }

        else
        {
          v52 = SkippedMipsForDownsampling;
        }

        v168 = v37;
        if (v52 && *&v196[24] >= 2u)
        {
          v53 = 0;
          v54 = 0;
          v55 = *&v196[20];
          if (*&v196[20] <= 1u)
          {
            v55 = 1;
          }

          if (*&v196[16])
          {
            v56 = *&v196[16];
          }

          else
          {
            v56 = v55;
          }

          if (v52 >= *&v196[24] - 1)
          {
            v57 = (*&v196[24] - 1);
          }

          else
          {
            v57 = v52;
          }

          while (1)
          {
            *v217 = 0u;
            memset(v218, 0, sizeof(v218));
            re::ktxMipInfo(a1, v217);
            if (HIDWORD(*&v218[80]))
            {
              break;
            }

            v53 += *&v218[80] * v56 + 4;
            if (v57 == ++v54)
            {
              LODWORD(v54) = v57;
LABEL_94:
              v61 = vmax_u32(vshl_u32(*&v196[4], vneg_s32(vdup_n_s32(v54))), 0x100000001);
              *&v196[4] = v61;
              v62 = *&v196[12] >> v54;
              if (*&v196[12] >> v54 <= 1u)
              {
                v62 = 1;
              }

              *&v196[12] = v62;
              *&v196[24] -= v54;
              [v188 setWidth_];
              [v188 setHeight_];
              [v188 setDepth_];
              [v188 setMipmapLevelCount_];
              (*(*v16 + 32))(v16, v53);
              v63 = 1;
              v64 = 1 << v54;
              if (1 << v54 < *v175)
              {
                v63 = *v175 / v64;
                if (*v175 / v64 >= 1)
                {
                  v63 = 1;
                }
              }

              *v175 = v63;
              goto LABEL_100;
            }
          }

          v60 = *re::pipelineLogObjects(v58);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v220 = 0;
            _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Overflow when computing image block bytes during KTX load", v220, 2u);
          }

          if (v54)
          {
            goto LABEL_94;
          }
        }

LABEL_100:
        if (*&v196[24] >= HIWORD(v178) - v52)
        {
          v65 = HIWORD(v178) - v52;
        }

        else
        {
          v65 = *&v196[24];
        }

        *&v196[24] = v65;
        if (*&v175[4] == 2)
        {
          [v188 setMipmapLevelCount_];
        }

        v186[0] = 0;
        v186[1] = 0;
        v185 = v186;
        isASTCPixelFormat = re::isASTCPixelFormat(v170);
        if (v180)
        {
          v67 = 0;
          v68 = v181;
          while (1)
          {
            v69 = *v68;
            if ((v69 & 0x80000000) == 0)
            {
              break;
            }

            if (v69 != -1)
            {
              v100 = *re::pipelineLogObjects(isASTCPixelFormat);
              if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_161;
              }

              *v217 = 67109120;
              *&v217[4] = v69;
              v97 = "Unexpected source slice requested: %d";
              goto LABEL_326;
            }

            if (isASTCPixelFormat)
            {
              v70 = -1;
              goto LABEL_121;
            }

            ++v67;
            if (++v68 == &v181[v180])
            {
              [v188 setArrayLength_];
              goto LABEL_124;
            }
          }

          if (*&v196[16] <= v69)
          {
            v82 = *re::pipelineLogObjects(isASTCPixelFormat);
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *v217 = 67109376;
              *&v217[4] = v69;
              *&v217[8] = 1024;
              *&v217[10] = *&v196[16];
              _os_log_error_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_ERROR, "Out of range source slice requested: %d/%u", v217, 0xEu);
            }
          }

          else
          {
            v70 = *v68;
            v71 = v186[0];
            if (!v186[0])
            {
              goto LABEL_121;
            }

            v72 = v186;
            do
            {
              v73 = v71[4];
              v74 = v73 >= *v68;
              v75 = v73 < *v68;
              if (v74)
              {
                v72 = v71;
              }

              v71 = v71[v75];
            }

            while (v71);
            if (v72 == v186 || v72[4] > *v68)
            {
LABEL_121:
              *v217 = v70;
              *&v217[8] = v67;
              std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_multi<std::pair<long const,unsigned long>>(&v185, v217);
            }

            v100 = *re::pipelineLogObjects(isASTCPixelFormat);
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *v217 = 67109120;
              *&v217[4] = v69;
              v97 = "Duplicate source slice requested: %d";
LABEL_326:
              _os_log_error_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_ERROR, v97, v217, 8u);
            }
          }

LABEL_161:
          *v217 = 0;
          *&v217[8] = 0;
          *v218 &= 0xFC00u;
          memset(&v218[8], 0, 24);
          memset(&v218[40], 0, 44);
          v219 = 0uLL;
          goto LABEL_297;
        }

LABEL_124:
        (*(*v16 + 120))(&v184, v16);
        if (v76)
        {
          if (v180)
          {
            v77 = *re::pipelineLogObjects(v76);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v217 = 0;
              _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "Sparse slices are not supported for textures loaded with ImageIO", v217, 2u);
            }

LABEL_137:
            *v217 = 0;
            *&v217[8] = 0;
            *v218 &= 0xFC00u;
            memset(&v218[8], 0, 24);
            memset(&v218[40], 0, 44);
            v219 = 0uLL;
            goto LABEL_295;
          }

          if (!v169)
          {
            memset(v218, 0, 40);
            *v217 = 0u;
            InfoForDevice = MTLPixelFormatGetInfoForDevice();
            if ((*&v217[8] & 0x400) != 0)
            {
              v85 = *re::pipelineLogObjects(InfoForDevice);
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                *v217 = 136315138;
                *&v217[4] = a4;
                _os_log_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_DEFAULT, "Using ImageIO to import KTX '%s' will decompress the texture, increasing memory usage.", v217, 0xCu);
              }
            }
          }

          [v188 pixelFormat];
          memset(v218, 0, 40);
          *v217 = 0u;
          MTLPixelFormatGetInfoForDevice();
          if ((*&v217[8] & 0x800) != 0)
          {
            *&v175[32] = 2;
          }

          re::SeekableInputStreamSlice::SeekableInputStreamSlice(v220, v16, -1);
          v86 = v188;
          [v86 pixelFormat];
          memset(v218, 0, 40);
          *v217 = 0u;
          MTLPixelFormatGetInfoForDevice();
          if ((*&v217[8] & 0x800) != 0)
          {
            *&v175[32] = 2;
          }

          v87 = [v86 mipmapLevelCount];
          if (v87 >= 2)
          {
            *&v175[4] = 0;
          }

          v88 = re::globalAllocators(v87);
          v89 = (*(*v88[2] + 32))(v88[2], 80, 8);
          v90 = *v196;
          v91 = v195;
          v92 = *&v196[16];
          *v89 = v194;
          v89[1] = v91;
          v89[2] = v90;
          v89[3] = v92;
          *(v89 + 8) = v220;
          *(v89 + 9) = 0;
          *(v89 + 15) = 0;
          v226[0] = *MEMORY[0x1E696E0A8];
          *v216 = MEMORY[0x1E695E110];
          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v216 forKeys:v226 count:1];
          v95 = CGImageSourceCreateWithDataProvider(Sequential, v93);
          v96 = *re::pipelineLogObjects(v95);
          if (v95)
          {
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
            {
              *v217 = 136315138;
              *&v217[4] = a4;
              _os_log_debug_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_DEBUG, "Creating texture '%s' from KTX data using Image I/O fallback for non-native pixel format", v217, 0xCu);
            }
          }

          else if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            *v217 = 136315138;
            *&v217[4] = a4;
            _os_log_error_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_ERROR, "Failed to create image source for texture '%s'", v217, 0xCu);
          }

          CGDataProviderRelease(Sequential);

          if (v86)
          {
          }

          if (!v95)
          {
            v114 = *re::pipelineLogObjects(v108);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *v217 = 136315138;
              *&v217[4] = a4;
              _os_log_error_impl(&dword_1E1C61000, v114, OS_LOG_TYPE_ERROR, "Failed to create image source from KTX: %s", v217, 0xCu);
            }

            goto LABEL_197;
          }

          re::loadMetalTextureWithReleasedCGImageSource(v217, &v174, v95, a1, &v188, a4, x5_0, v172);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v221, v217);
          LOWORD(v222[0]) = *v218;
          *&v222[1] = *&v218[8];
          *(&v222[2] + 4) = *&v218[20];
          v109 = *(&v223 + 1);
          v110 = *&v218[40];
          *&v218[40] = v223;
          *&v218[48] = 0;
          v223 = v110;

          re::DynamicArray<short>::operator=(v224, &v218[56]);
          *(&v225 + 1) = *(&v219 + 1);
          if (*&v218[56])
          {
            if (v219)
            {
              (*(**&v218[56] + 40))();
            }

            *&v219 = 0;
            memset(&v218[56], 0, 24);
            ++*&v218[80];
          }

          if (*&v218[40])
          {

            *&v218[40] = 0;
          }

          v112 = &selRef_isLimitedRenderAsset;
          if (*&v217[8] != -1)
          {
            v111 = (off_1F5D0B2A8[*&v217[8]])(v216, v217);
          }

          if (DWORD2(v221))
          {
            if (DWORD2(v221) != 1)
            {
              goto LABEL_328;
            }

            if (!*(v221 + 48))
            {
LABEL_195:
              v115 = *re::pipelineLogObjects(v111);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
              {
                *v217 = 136315138;
                *&v217[4] = a4;
                _os_log_fault_impl(&dword_1E1C61000, v115, OS_LOG_TYPE_FAULT, "Failed to create texture '%s' from KTX", v217, 0xCu);
              }

LABEL_197:
              *v217 = 0;
              *&v217[8] = 0;
              *v218 &= 0xFC00u;
              memset(&v218[8], 0, 24);
              memset(&v218[40], 0, 44);
              v219 = 0uLL;
              re::SeekableInputStreamSlice::detach(v220);
LABEL_295:
              if (v184)
              {
              }

LABEL_297:
              std::__tree<unsigned long long>::destroy(&v185, v186[0]);
              if (v224[0])
              {
                if (v225)
                {
                  (*(*v224[0] + 40))();
                }

                *&v225 = 0;
                memset(v224, 0, 24);
                ++LODWORD(v224[3]);
              }

              if (v223)
              {

                *&v223 = 0;
              }

              if (DWORD2(v221) != -1)
              {
                (off_1F5D0B2A8[DWORD2(v221)])(v220, &v221);
              }

LABEL_305:
              if (v188)
              {
              }

              std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v209, v217);
              v211 = *v218;
              *v212 = *&v218[8];
              *&v212[12] = *&v218[20];
              v156 = *(&v213 + 1);
              v157 = *&v218[40];
              *&v218[40] = v213;
              *&v218[48] = 0;
              v213 = v157;

              re::DynamicArray<short>::operator=(v214, &v218[56]);
              *(&v215 + 1) = *(&v219 + 1);
              if (*&v218[56])
              {
                if (v219)
                {
                  (*(**&v218[56] + 40))();
                }

                *&v219 = 0;
                memset(&v218[56], 0, 24);
                ++*&v218[80];
              }

              if (*&v218[40])
              {

                *&v218[40] = 0;
              }

              if (*&v217[8] != -1)
              {
                (off_1F5D0B2A8[*&v217[8]])(&v221, v217);
              }

              *&v217[8] = -1;
              if (v179)
              {
                if (v180)
                {
                  (*(*v179 + 40))();
                  v180 = 0;
                  v181 = 0;
                }

                v179 = 0;
              }

              if (v172)
              {
                if (!*v171)
                {
LABEL_327:
                  std::__throw_bad_function_call[abi:nn200100]();
                  goto LABEL_328;
                }

                (*(**v171 + 48))(*v171);
              }

              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v191);
              re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v193);
              v158 = v204;
              *a8 = *buf;
              *(a8 + 16) = v158;
              v159 = v206;
              *(a8 + 32) = v205;
              *(a8 + 48) = v159;
              v160 = v207;
              *(a8 + 64) = v207;
              if (v160 == 1)
              {
                *(a8 + 66) = v208;
              }

              *(a8 + 72) = 0;
              v161 = a8 + 72;
              *(v161 + 8) = -1;
              std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v161, &v209);
              *(v161 + 16) = v211;
              *(v161 + 24) = *v212;
              *(v161 + 36) = *&v212[12];
              v162 = v213;
              v213 = 0u;
              *(v161 + 56) = v162;
              *(v161 + 72) = *&v214[0];
              *&v214[0] = 0;
              *(v161 + 80) = *(v214 + 8);
              *(v214 + 8) = 0u;
              ++DWORD2(v214[1]);
              *(v161 + 96) = 1;
              v163 = v215;
              *&v215 = 0;
              *(v161 + 104) = v163;
              goto LABEL_20;
            }

            v113 = (v221 + 24);
          }

          else
          {
            v113 = &v221;
          }

          if (*v113)
          {
            re::SeekableInputStreamSlice::detach(v220);
            goto LABEL_228;
          }

          goto LABEL_195;
        }

        if (!canLoadPixelFormat)
        {
          v83 = *re::pipelineLogObjects(canLoadPixelFormat);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v130 = v188;
            v131 = v83;
            LODWORD(v130) = [v130 pixelFormat];
            v132 = [v188 textureType];
            *v217 = 67109376;
            *&v217[4] = v130;
            *&v217[8] = 1024;
            *&v217[10] = v132;
            _os_log_error_impl(&dword_1E1C61000, v131, OS_LOG_TYPE_ERROR, "Unsupported pixel format %d for texture type %d", v217, 0xEu);
          }

          goto LABEL_137;
        }

        v79 = v169;
        if (v169)
        {
          [v188 setPixelFormat_];
          v80 = *a1;
          if (!*a1)
          {
            v81 = 0;
            goto LABEL_166;
          }
        }

        else
        {
          v80 = *a1;
          if (!*a1)
          {
            v107 = 0;
            *v216 = 0;
            goto LABEL_199;
          }
        }

        v102 = [v188 pixelFormat];
        v79 = v169;
        isSupportedPixelFormat = re::isSupportedPixelFormat(v80, v102, [v188 textureType]);
        v104 = isSupportedPixelFormat;
        v105 = *a1;
        if (!v169 || v105)
        {
          *v216 = v105;
          if (v104)
          {
LABEL_168:
            v107 = 0;
LABEL_199:
            *v220 = 0;
            *&v220[8] = 0;
            v116 = *(a1 + 24);
            v117 = *v216;
            v118 = v117;
            if (v116 && v168 > 0x500000)
            {
              v119 = *(a1 + 24);
              os_unfair_lock_lock(v119 + 64);
              v120 = v118;
              *v217 = v120;

              os_unfair_lock_unlock(v119 + 64);
              if ((v121 & 1) == 0)
              {
LABEL_202:
                *v217 = 0;
                *&v217[8] = 0;
                *v218 &= 0xFC00u;
                memset(&v218[8], 0, 24);
                memset(&v218[40], 0, 44);
                v219 = 0uLL;
                if (*&v220[8] != -1)
                {
                  (off_1F5D0B2A8[*&v220[8]])(&v190, v220);
                }

                goto LABEL_295;
              }
            }

            else
            {
              v226[0] = v117;

              if (!v122)
              {
                goto LABEL_202;
              }
            }

            std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v221, v220);
            if (*&v220[8] != -1)
            {
              (off_1F5D0B2A8[*&v220[8]])(v217, v220);
            }

            v112 = &selRef_isLimitedRenderAsset;
            if (v167)
            {
              v216[0] = 0;
              if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v176, v216))
              {
                v123 = *(a1 + 19) ? *(a1 + 20) : 0;
                if (v216[0] != v123)
                {
                  if (!*(&v223 + 1))
                  {
                    v124 = v176;
                    v125 = v176;
                    re::TextureImportData::setColorSpace(&v221, v124);
                  }

                  [v188 pixelFormat];
                  memset(v218, 0, 40);
                  *v217 = 0u;
                  v126 = MTLPixelFormatGetInfoForDevice();
                  if ((*&v217[8] & 0x400) != 0)
                  {
                    v127 = *re::pipelineLogObjects(v126);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                    {
                      *v217 = 136315138;
                      *&v217[4] = a4;
                      _os_log_impl(&dword_1E1C61000, v127, OS_LOG_TYPE_DEFAULT, "Applying gamut conversion for '%s' will decompress the texture, increasing memory usage.", v217, 0xCu);
                    }
                  }

                  v128 = *(a1 + 20);
                  if (!*(a1 + 19))
                  {
                    v128 = 0;
                  }

                  re::convertTextureColorSpace(v128, &v221, v217);
                  isValid = re::TextureData::isValid(v217);
                  if (isValid)
                  {
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v221, v217);
                    re::TextureImportData::ImportReport::operator=(v222, v218);
                  }

                  else
                  {
                    v133 = *re::pipelineLogObjects(isValid);
                    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                    {
                      *v220 = 136315138;
                      *&v220[4] = a4;
                      _os_log_error_impl(&dword_1E1C61000, v133, OS_LOG_TYPE_ERROR, "Failed to convert KTX texture colorspace for '%s'", v220, 0xCu);
                    }
                  }

                  re::TextureImportData::~TextureImportData(v217);
                  v112 = &selRef_isLimitedRenderAsset;
                }
              }
            }

LABEL_228:
            if (DWORD2(v221))
            {
              if (DWORD2(v221) != 1)
              {
                goto LABEL_328;
              }

              if (!*(v221 + 48))
              {
LABEL_241:
                if (DWORD2(v221))
                {
                  if (DWORD2(v221) != 1)
                  {
                    goto LABEL_328;
                  }

                  if (!*(v221 + 48))
                  {
                    goto LABEL_264;
                  }

                  v138 = (v221 + 24);
                }

                else
                {
                  v138 = &v221;
                }

                if (*v138 && *a1)
                {
                  v139 = [*a1 supportsTextureSwizzle];
                  v140 = v189;
                  if (v189 == 84148994)
                  {
                    v141 = 1;
                  }

                  else
                  {
                    v141 = v139;
                  }

                  if (v169 && !re::MTLToASTCPixelFormat([v188 pixelFormat], 1))
                  {
                    [v188 pixelFormat];
                    memset(v218, 0, 40);
                    *v217 = 0u;
                    v142 = MTLPixelFormatGetInfoForDevice();
                    if ((*&v217[8] & 0x400) != 0)
                    {
                      v143 = *re::pipelineLogObjects(v142);
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                      {
                        v144 = [v188 pixelFormat];
                        *v217 = 67109120;
                        *&v217[4] = v144;
                        _os_log_impl(&dword_1E1C61000, v143, OS_LOG_TYPE_DEFAULT, "Source compressed pixel format '%d' does not match compression options: will decompress and recompress", v217, 8u);
                      }
                    }
                  }

                  else if (v141)
                  {
                    goto LABEL_264;
                  }

                  LOWORD(v222[0]) |= 0x40u;
                  if (DWORD2(v221))
                  {
                    goto LABEL_328;
                  }

                  re::internal::createRepackedTexture(a1, &v221, v140, v220);
                  *v217 = *v220;
                  *&v217[8] = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v221, v217);
                  if (*&v217[8] != -1)
                  {
                    (off_1F5D0B2A8[*&v217[8]])(v216, v217);
                  }

                  *&v217[8] = -1;
                  if (*v220)
                  {
                  }
                }

LABEL_264:
                if (v169)
                {
                  if (DWORD2(v221))
                  {
                    if (DWORD2(v221) != 1)
                    {
                      goto LABEL_328;
                    }

                    v145 = (v221 + 24);
                  }

                  else
                  {
                    v145 = &v221;
                  }

                  v146 = re::MTLToASTCPixelFormat([*v145 pixelFormat], 1);
                  if (v146)
                  {
                    *v220 = *&v175[12];
                    if (*&v175[8] == 3)
                    {
                      *v220 = 1;
                    }

                    re::logTextureCompressionInfo("createTextureWithKTXData", &v221, v220);
                    re::createCompressedTextureData(&v221, *&v175[40], v220, a1, 0, 0, v217);
                    if (v217[0])
                    {
                      LOWORD(v222[0]) |= 8u;
                      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v221, &v217[8]);
                    }

                    else
                    {
                      v150 = *re::pipelineLogObjects(v147);
                      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                      {
                        *v216 = 136315138;
                        *&v216[4] = a4;
                        _os_log_error_impl(&dword_1E1C61000, v150, OS_LOG_TYPE_ERROR, "ASTC compression failed for '%s'", v216, 0xCu);
                      }
                    }

                    re::Result<re::TextureData,re::DynamicString>::~Result(v217);
                  }

                  else
                  {
                    v148 = *re::pipelineLogObjects(v146);
                    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                    {
                      re::TextureData::pixelFormat(&v221);
                      *v217 = 67109120;
                      *&v217[4] = v149;
                      _os_log_impl(&dword_1E1C61000, v148, OS_LOG_TYPE_DEFAULT, "Ignoring ASTC compression options: not supported for source pixel format '%d'", v217, 8u);
                    }
                  }
                }

                [v188 pixelFormat];
                memset(v218, 0, 40);
                *v217 = 0u;
                MTLPixelFormatGetInfoForDevice();
                if ((*&v217[8] & 0x400) == 0)
                {
                  v151 = v222[0];
LABEL_290:
                  LOWORD(v222[0]) = v151 & 0xFFDF | (32 * (v198 & 1));
                  v222[1] = v39;
                  v222[2] = v40;
                  v222[3] = v41;
                  LODWORD(v222[4]) = v170;
                  if (v223)
                  {

                    *&v223 = 0;
                  }

                  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v223, v184);
                  *(&v225 + 1) = re::UTTypes::KTX(v153);
                  if (v180)
                  {
                    *v217 = v181;
                    *&v217[8] = v180;
                    re::DynamicArray<short>::operator=(v224, v217);
                  }

                  v217[0] = 0;
                  *&v217[8] = -1;
                  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v217, &v221);
                  *v218 = v222[0];
                  *&v218[8] = *&v222[1];
                  *&v218[20] = *(&v222[2] + 4);
                  v154 = v223;
                  v223 = 0u;
                  *&v218[40] = v154;
                  *&v218[56] = v224[0];
                  memset(v224, 0, 24);
                  *&v218[64] = *&v224[1];
                  ++LODWORD(v224[3]);
                  *&v218[80] = 1;
                  v155 = v225;
                  *&v225 = 0;
                  v219 = v155;
                  goto LABEL_295;
                }

                if (!DWORD2(v221))
                {
                  v152 = &v221;
LABEL_287:
                  [*v152 pixelFormat];
                  memset(v218, 0, 40);
                  *v217 = 0u;
                  MTLPixelFormatGetInfoForDevice();
                  if ((*&v217[8] & 0x400) != 0)
                  {
                    v151 = v222[0];
                  }

                  else
                  {
                    v151 = LOWORD(v222[0]) | 4;
                  }

                  goto LABEL_290;
                }

                if (DWORD2(v221) == 1)
                {
                  v152 = (v221 + 24);
                  goto LABEL_287;
                }

LABEL_328:
                v164 = std::__throw_bad_variant_access[abi:nn200100]();
                return;
              }

              v134 = (v221 + 24);
            }

            else
            {
              v134 = &v221;
            }

            if (*v134 && (*&v175[40] - 3) <= 1 && !*(&v223 + 1) && *(a1 + 16) == 1)
            {
              v135 = [v188 v112[204]];
              if (*(a1 + 19))
              {
                v136 = *(a1 + 20);
              }

              else
              {
                v136 = 0;
              }

              CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v135, v136);
              re::TextureImportData::setColorSpace(&v221, CGColorSpaceNameForPixelFormat);
            }

            goto LABEL_241;
          }

LABEL_170:
          re::ObjCObject::operator=(v216, 0);
          v107 = 1;
          goto LABEL_199;
        }

        v81 = isSupportedPixelFormat ^ 1;
LABEL_166:
        v106 = re::isASTCPixelFormat(v79);
        *v216 = 0;
        if ((v81 & 1) == 0 && (v106 & 1) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_170;
      }

      v29 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v221) = 0;
      v30 = "Stream is too small for KTX";
      v31 = v29;
      v32 = 2;
LABEL_89:
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, v30, &v221, v32);
      goto LABEL_19;
    }
  }

  v25 = *re::pipelineLogObjects(v22);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v221) = 0;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Create texture with KTX data cancelled!", &v221, 2u);
  }

  if (!a9)
  {
    goto LABEL_19;
  }

  if (!*v171)
  {
    goto LABEL_327;
  }

  (*(**v171 + 48))(*v171);
LABEL_19:
  *(a8 + 72) = 0;
  *(a8 + 80) = 0;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0;
  *(a8 + 88) &= 0xFC00u;
  *(a8 + 104) = 0;
  *(a8 + 112) = 0;
  *(a8 + 96) = 0;
  *(a8 + 128) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 156) = 0u;
  *(a8 + 176) = 0;
  *(a8 + 184) = 0;
  re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v193);
LABEL_20:
  if (*&v214[0])
  {
    if (v215)
    {
      (*(**&v214[0] + 40))();
    }

    *&v215 = 0;
    memset(v214, 0, 24);
    ++DWORD2(v214[1]);
  }

  if (v213)
  {

    *&v213 = 0;
  }

  if (v210 != -1)
  {
    (off_1F5D0B2A8[v210])(v193, &v209);
  }
}

void re::anonymous namespace::parseKTXHeader(uint64_t a1, uint64_t a2, int a3)
{
  v85 = *MEMORY[0x1E69E9840];
  StandardKTXMetadata = (*(*a2 + 104))(a2, 64, &v81);
  if (!StandardKTXMetadata)
  {
    v8 = "Tried to load a too-small file as KTX";
    goto LABEL_76;
  }

  if (v81 != 0xBB31312058544BABLL || DWORD2(v81) != 169478669)
  {
    v8 = "Tried to load a non-KTX file as KTX (header identifier mismatch)";
LABEL_76:
    goto LABEL_77;
  }

  if (HIDWORD(v81) != 67305985)
  {
    v8 = "Tried to load a KTX file with unsupported endianness";
    goto LABEL_76;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v9 = HIDWORD(v84);
  if (HIDWORD(v84))
  {
    StandardKTXMetadata = re::readStandardKTXMetadata(a2, HIDWORD(v84), &v58);
  }

  if (DWORD1(v83))
  {
    v10 = DWORD2(v83) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v11 != 1 || HIDWORD(v83) == 0)
  {
    if (v84)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = 1;
      v15 = 3;
    }

    else
    {
      v16 = 2;
      if ((v11 & (DWORD1(v84) == 6)) != 0)
      {
        v16 = 5;
      }

      if (v11)
      {
        v15 = v16;
      }

      else
      {
        v15 = 0;
      }

      if (!DWORD1(v83))
      {
        re::DynamicString::format(buf, "Bad dimensions in KTX: (%u, %u, %u)", v9, 0, DWORD2(v83), HIDWORD(v83));
        goto LABEL_77;
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 7;
  }

  v17 = v58;
  v18 = &xmmword_1E30FD278 + 12;
  v19 = 8432;
  while (v82 != *(v18 - 3) || *(&v82 + 1) != *(v18 - 4))
  {
    v18 += 68;
    v19 -= 68;
    if (!v19)
    {
      v20 = 0;
      v21 = 1;
      goto LABEL_40;
    }
  }

  v20 = *(v18 - 8);
  v24 = v83;
  v21 = v83 == 6408;
  v25 = *(v18 - 2);
  if (DWORD1(v82) != v25)
  {
    v26 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 67110144;
      *&buf[4] = v82;
      *&buf[8] = 1024;
      *&buf[10] = DWORD2(v82);
      *&buf[14] = 1024;
      LODWORD(v65) = HIDWORD(v82);
      WORD2(v65) = 1024;
      *(&v65 + 6) = v25;
      WORD5(v65) = 1024;
      HIDWORD(v65) = DWORD1(v82);
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "KTX with type 0x%x, format 0x%x, internal format 0x%x has unexpected type size (expected: %u, actual: %u)", buf, 0x20u);
    }
  }

  if (v59 == 1 && v24 != 6408)
  {
    v27 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Metadata mismatch: Pre-multiplied alpha specified when format has no alpha channel", buf, 2u);
    }

    v21 = 0;
    v59 = 0;
  }

LABEL_40:
  if (v17)
  {
    if (v20 == v17)
    {
      goto LABEL_52;
    }

    if ((v20 - 204) <= 0xE && v20 != 209)
    {
      if (StandardKTXMetadata == v17)
      {
        goto LABEL_52;
      }
    }

    v22 = *re::pipelineLogObjects(StandardKTXMetadata);
    StandardKTXMetadata = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (StandardKTXMetadata)
    {
      *buf = 67109376;
      *&buf[4] = v17;
      *&buf[8] = 1024;
      *&buf[10] = v20;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Metadata mismatch: Pixel format mismatch metadata (%u) != inferred (%u), using inferred format", buf, 0xEu);
    }
  }

  if ((v20 - 204) > 0xE || v20 == 209)
  {
    if (v20)
    {
LABEL_65:
      v23 = 0;
      goto LABEL_66;
    }

    re::DynamicString::format(buf, "Unsupported KTX pixel format: type 0x%x, type size %u, format 0x%x, internal format 0x%x", v9, v82, DWORD1(v82), DWORD2(v82), HIDWORD(v82));
LABEL_77:
    v35 = *buf;
    v36 = v65;
    *a1 = 0;
    *(a1 + 8) = v35;
    *(a1 + 24) = v36;
    return;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v17 = StandardKTXMetadata;
LABEL_52:
      v23 = 0;
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v23 = 1;
LABEL_66:
  v17 = v20;
LABEL_67:
  v28 = DWORD2(v84);
  if (!DWORD2(v84))
  {
    v8 = "Unsupported number of mipmaps (0) in KTX";
    goto LABEL_76;
  }

  v29 = DWORD1(v83);
  v30 = DWORD2(v83);
  if (DWORD1(v83) <= DWORD2(v83))
  {
    v31 = DWORD2(v83);
  }

  else
  {
    v31 = DWORD1(v83);
  }

  v32 = HIDWORD(v83);
  if (v31 <= HIDWORD(v83))
  {
    v31 = HIDWORD(v83);
  }

  v34 = log2(v31);
  if (v28 > v34 + 1)
  {
    re::DynamicString::format(buf, "Bad MipmapLevelCount (%u) in KTX header - dimensions (%u, %u, %u) can only support a max of %u levels", v33, v28, v29, v30, v32, v34 + 1);
    goto LABEL_77;
  }

  v37 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v37 setTextureType_];
  if (DWORD1(v83) <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = DWORD1(v83);
  }

  [v37 setWidth_];
  if (DWORD2(v83) <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = DWORD2(v83);
  }

  [v37 setHeight_];
  if (HIDWORD(v83) <= 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = HIDWORD(v83);
  }

  [v37 setDepth_];
  if (v14)
  {
    [v37 setArrayLength_];
  }

  [v37 setMipmapLevelCount_];
  [v37 setPixelFormat_];
  [v37 setResourceOptions_];
  *buf = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v68 = v37;
  LOBYTE(v69) = v21;
  HIBYTE(v69) = v59;
  v70 = v23;
  v73 = 0;
  v74 = 0;
  if (*(&v60 + 1))
  {
    v41 = *(&v60 + 1) + 1;
  }

  else
  {
    v41 = 0;
  }

  v72 = 0;
  re::DynamicString::setCapacity(&v71, v41);
  v42 = re::DynamicString::operator=(&v71, &v60);
  v77 = 0;
  v78 = 0;
  if (*(&v61 + 1))
  {
    v43 = *(&v61 + 1) + 1;
  }

  else
  {
    v43 = 0;
  }

  v76 = 0;
  re::DynamicString::setCapacity(&v75, v43);
  re::DynamicString::operator=(&v75, &v61);
  v44 = v62;
  v79 = v62;
  if (v62)
  {
    v45 = v63;
    v80 = v63;
  }

  else
  {
    v45 = v80;
  }

  v46 = v68;
  v47 = v71;
  v48 = v72;
  v68 = 0;
  v71 = 0;
  v72 = 0;
  v49 = v74;
  v50 = v75;
  v74 = 0;
  v75 = 0;
  v51 = v73;
  v73 = 0;
  v53 = v77;
  v52 = v78;
  v77 = 0;
  v78 = 0;
  v54 = v76;
  v76 = 0;
  *a1 = 1;
  v55 = *buf;
  v56 = v65;
  v57 = v66;
  *(a1 + 56) = v67;
  *(a1 + 40) = v57;
  *(a1 + 24) = v56;
  *(a1 + 8) = v55;
  *(a1 + 72) = v46;
  LOWORD(v46) = v69;
  *(a1 + 82) = v70;
  *(a1 + 80) = v46;
  *(a1 + 104) = v51;
  *(a1 + 112) = v49;
  *(a1 + 88) = v47;
  *(a1 + 96) = v48;
  *(a1 + 136) = v53;
  *(a1 + 144) = v52;
  *(a1 + 120) = v50;
  *(a1 + 128) = v54;
  *(a1 + 152) = v44;
  if (v44)
  {
    *(a1 + 154) = v45;
  }

  if (v37)
  {
  }
}

uint64_t re::Result<re::KTXHeaderData,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::DynamicString::deinit((a1 + 120));
    re::DynamicString::deinit((a1 + 88));
    v2 = *(a1 + 72);
    if (v2)
    {

      *(a1 + 72) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::createTextureDescriptorForKTXData@<X0>(id *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, id *a9@<X8>, unsigned __int8 a10)
{
  v111 = *MEMORY[0x1E69E9840];
  v81 = a4;
  v76 = &unk_1F5D0A468;
  v77 = 0;
  v78 = a2;
  v79 = a3;
  re::FixedArrayInputStream::FixedArrayInputStream(v80, a2, a3, -1);
  if ((v91[0] & 1) == 0)
  {
    v22 = *re::pipelineLogObjects(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      if (v91[16])
      {
        v35 = *&v92[7];
      }

      else
      {
        v35 = v92;
      }

      *v84 = 136315138;
      *&v84[4] = v35;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create texture from KTX: %s", v84, 0xCu);
    }

    *a9 = 0;
    goto LABEL_90;
  }

  v70 = a8;
  v71 = a9;
  v73 = v99;
  v75 = v73;
  v17 = &selRef_isLimitedRenderAsset;
  if (v101 != 1)
  {
    goto LABEL_52;
  }

  v18 = [v99 textureType];
  v82 = [v99 pixelFormat];
  v19 = *a1;
  if (v18 == 5)
  {
    v21 = 6;
  }

  else if (v18 == 3)
  {
    v21 = v96;
  }

  else
  {
    v21 = 1;
  }

  v69 = v21;
  if (!v98)
  {

    goto LABEL_52;
  }

  v67 = v19;
  v23 = 0;
  v24 = 0;
  *&v20 = 67109376;
  v66 = v20;
  v68 = a1;
  while (1)
  {
    LODWORD(v104) = 0;
    v25 = v76[13](&v76, 4, &v104);
    if (v25 != 4)
    {
      v36 = *re::pipelineLogObjects(v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v84 = 0;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Unexpected end of file when reading image size from KTX", v84, 2u);
      }

LABEL_37:
      v37 = v82;

      goto LABEL_50;
    }

    {
      goto LABEL_37;
    }

    v27 = v17;
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    *v84 = 0u;
    v85 = 0u;
    re::ktxMipInfo(a1, v84);
    if (DWORD1(v86[3]))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing row block bytes during KTX load";
      goto LABEL_46;
    }

    v29 = DWORD2(v86[3]);
    if (HIDWORD(*(&v86[3] + 1)))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image block bytes during KTX load";
      goto LABEL_46;
    }

    v30 = v87;
    if (HIDWORD(v87))
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image block bytes during KTX load";
      goto LABEL_46;
    }

    v31 = v104;
    if (v97 == 6 && !v96)
    {
      if (*(&v86[3] + 1) != ((v104 + 3) & 0x1FFFFFFFCLL))
      {
        v32 = *re::pipelineLogObjects(v28);
        v28 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          *buf = v66;
          *&buf[4] = v29;
          *&buf[8] = 1024;
          *&buf[10] = v104;
          _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "KTX image size field for non-array cubemap is unexpected (expected: %u, got: %u)", buf, 0xEu);
        }

        v31 = v104;
        v30 = v87;
      }

      v31 *= 6;
    }

    v33 = v30 * v69;
    if ((v30 * v69) >> 32)
    {
      v38 = *re::pipelineLogObjects(v28);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v39 = "Overflow when computing image size during KTX load";
LABEL_46:
      v40 = v38;
      v41 = 2;
LABEL_47:
      _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
      goto LABEL_49;
    }

    if (v31 < v33)
    {
      break;
    }

    *buf = 0;
    LODWORD(v83[0]) = 0;
    if ((v76[2](&v76, buf, v83) & 1) == 0)
    {
      goto LABEL_49;
    }

    (v76[3])(&v76, LODWORD(v83[0]) - v31);
    v23 |= v34;
    if (v34)
    {
      goto LABEL_49;
    }

    ++v24;
    a1 = v68;
    v17 = v27;
    if (v24 >= v98)
    {
      goto LABEL_37;
    }
  }

  v42 = *re::pipelineLogObjects(v28);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = v66;
    *&buf[4] = v33;
    *&buf[8] = 1024;
    *&buf[10] = v31;
    v39 = "KTX image size field is too small for given pixel format and dimensions (expected: %u, got: %u)";
    v40 = v42;
    v41 = 14;
    goto LABEL_47;
  }

LABEL_49:
  v37 = v82;

  a1 = v68;
  v17 = v27;
LABEL_50:
  if (v23)
  {
    [v73 setPixelFormat_];
  }

LABEL_52:
  if (a7)
  {
    *&v43 = v93;
    *(&v43 + 1) = v94;
    *a7 = v43;
    *(a7 + 16) = v95;
    *v70 = v100;
  }

  v44 = *(a6 + 16);
  *v84 = *a6;
  v85 = v44;
  v86[0] = *(a6 + 32);
  *(v86 + 12) = *(a6 + 44);
  *&v86[2] = *(a6 + 64);
  *(&v86[2] + 8) = *(a6 + 72);
  DWORD2(v86[3]) = *(a6 + 88);
  re::FixedArray<short>::FixedArray(&v87, (a6 + 96));
  v90 = *(a6 + 120);
  v82 = 0;
  v45 = v102[1];
  if ((v102[0] & 1) == 0)
  {
    v45 = v102 + 1;
  }

  v46 = LOBYTE(v102[0]) >> 1;
  if (v102[0])
  {
    v46 = v102[0] >> 1;
  }

  *buf = v45;
  *&buf[8] = v46;
  v47 = v103[1];
  if ((v103[0] & 1) == 0)
  {
    v47 = v103 + 1;
  }

  v48 = LOBYTE(v103[0]) >> 1;
  if (v103[0])
  {
    v48 = v103[0] >> 1;
  }

  v83[0] = v47;
  v83[1] = v48;
  isHDR = re::isHDR([v73 v17[204]]);
  ColorSpaceName = re::getColorSpaceName(buf, v83, isHDR);
  {
    {
      v51 = v75;
      v52 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
      [v51 v17[204]];
      *&v107 = 0;
      v106 = 0u;
      memset(buf, 0, sizeof(buf));
      MTLPixelFormatGetInfoForDevice();
      if ((*&buf[8] & 0x800) != 0)
      {
        LODWORD(v86[1]) = 2;
      }

      if ([v51 mipmapLevelCount] >= 2)
      {
        DWORD1(v85) = 0;
      }

      v104 = *MEMORY[0x1E696E0A8];
      v83[0] = MEMORY[0x1E695E110];
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v104 count:1];
      v54 = CGImageSourceCreateWithData(v52, v53);
      v55 = *re::pipelineLogObjects(v54);
      if (v54)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = a5;
          _os_log_debug_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEBUG, "Creating texture '%s' from KTX data using Image I/O fallback for non-native pixel format", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = a5;
        _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Failed to create image source for texture '%s'", buf, 0xCu);
      }

      if (v51)
      {
      }

      if (v54)
      {
        re::createTextureDescriptorForCGImageSource(v54, a1, &v75, v84, 0, 0, 0, v71);
        CFRelease(v54);
      }

      else
      {
        *v71 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      }
    }

    else
    {
      v57 = v75;
      v58 = [v75 copy];
      *v71 = v58;
      v59 = [v57 mipmapLevelCount];
      if (SkippedMipsForDownsampling >= v59)
      {
        v60 = *re::pipelineLogObjects(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = v60;
          v62 = [v57 mipmapLevelCount];
          *buf = 134218240;
          *&buf[4] = v62;
          *&buf[12] = 2048;
          *&buf[14] = SkippedMipsForDownsampling;
          _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "Downsampling a texture with %lu mipmaps by %lu", buf, 0x16u);
        }

        SkippedMipsForDownsampling = [v57 mipmapLevelCount] - 1;
      }

      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      memset(buf, 0, sizeof(buf));
      v63 = v17[204];
      v64 = *a1;
      [v57 v63];
      [v57 width];
      [v57 height];
      [v57 depth];
      [v57 sampleCount];
      MTLGetTextureLevelInfoForDevice();

      [v58 setWidth_];
      [v58 setHeight_];
      [v58 setDepth_];
      [v58 setMipmapLevelCount_];
    }
  }

  else
  {
    *v71 = 0;
  }

  if (v87)
  {
    if (v88)
    {
      (*(*v87 + 40))();
      v88 = 0;
      v89 = 0;
    }

    v87 = 0;
  }

  if (v75)
  {
  }

LABEL_90:
  re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v91);
  v76 = &unk_1F5D0A468;
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v80);
}

uint64_t re::anonymous namespace::updateTextureDescriptorAndOptions(_BOOL8 a1, __CFString *a2, id *a3, unsigned __int8 *a4, uint8_t *this, unsigned int *a6)
{
  v11 = a1;
  *a6 = 0;
  if (*this == 1)
  {
    v12 = *re::pipelineLogObjects(a1);
    a1 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring explicit pixel format option for KTX", buf, 2u);
    }

    *this = 0;
  }

  if (this[120] == 1)
  {
    v13 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Loading with reduced memory peak is not supported for KTX", buf, 2u);
    }
  }

  re::internal::applySemanticToOptions(buf, this);
  v14 = v37;
  *this = *buf;
  *(this + 1) = v14;
  *(this + 2) = *v38;
  *(this + 44) = *&v38[12];
  if (buf != this)
  {
    v15 = v39;
    v39 = 0;
    v16 = *(this + 8);
    *(this + 8) = v15;
  }

  *(this + 72) = v40;
  *(this + 22) = v41;
  re::FixedArray<short>::operator=(this + 12, &v42);
  this[120] = v45;
  if (v42)
  {
    if (v43)
    {
      (*(*v42 + 40))();
      v43 = 0;
      v44 = 0;
    }

    v42 = 0;
  }

  v18 = *(this + 8);
  if (a2 && !*(this + 8))
  {
    re::TextureFromImageOptions::setColorSpace(this, a2);
  }

  if (*(this + 19))
  {
    [*a3 setHeight_];
  }

  if (*(this + 18))
  {
    [*a3 setWidth_];
  }

  if (*(this + 20))
  {
    [*a3 setDepth_];
  }

  if (*(this + 21))
  {
    [*a3 setMipmapLevelCount_];
  }

  v19 = *(this + 1);
  if (v19 != 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        goto LABEL_36;
      }

      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Semantics should have been applied at this point", "!Unreachable code", "updateTextureDescriptorAndOptions", 312);
      _os_crash("assertion failure: (!Unreachable code) Semantics should have been applied at this point");
      __break(1u);
    }

    if (re::getComponentCount([*a3 pixelFormat]) == 1)
    {
      *a4 = re::internal::broadcastRToRGB(a4);
    }

    else
    {
      *a4 = 84148994;
    }

LABEL_36:
    isHDR = re::isHDR([*a3 pixelFormat]);
    DestinationTransferFunctionFromOptions = re::internal::getDestinationTransferFunctionFromOptions(this, 0, isHDR);
    if (!DestinationTransferFunctionFromOptions)
    {
      if (dyld_program_sdk_at_least())
      {
        [*a3 pixelFormat];
        v37 = 0u;
        memset(v38, 0, 24);
        *buf = 0u;
        MTLPixelFormatGetInfoForDevice();
        if ((*&buf[8] & 0x800) != 0)
        {
          DestinationTransferFunctionFromOptions = 2;
        }

        else
        {
          DestinationTransferFunctionFromOptions = 1;
        }
      }

      else if ((*(this + 14) - 3) >= 2)
      {
        DestinationTransferFunctionFromOptions = 1;
      }

      else
      {
        DestinationTransferFunctionFromOptions = 2;
      }
    }

    v25 = *(this + 8);
    v26 = v25;
    if (v25 && (DestinationTransferFunctionFromOptions == 2) != re::colorSpaceNameHasSRGBTransfer(v25, v27))
    {
      v29 = (DestinationTransferFunctionFromOptions == 2 ? re::getLinearColorSpaceNameFromSRGB(v25, v28) : re::getSRGBColorSpaceNameFromLinear(v25, v28));
      if (v29)
      {
        re::TextureFromImageOptions::setColorSpace(this, v29);
      }
    }

    [*a3 pixelFormat];
    v37 = 0u;
    memset(v38, 0, 24);
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x800) == 0 || DestinationTransferFunctionFromOptions == 2)
    {
      if ((*&buf[8] & 0x800) != 0 || DestinationTransferFunctionFromOptions != 2)
      {
        goto LABEL_60;
      }

      v30 = re::translateLinearPixelFormatToSRGB([*a3 pixelFormat]);
    }

    else
    {
      v30 = re::translateSRGBPixelFormatToLinear([*a3 pixelFormat]);
    }

    v31 = v30;
    if (v30 != [*a3 pixelFormat] && v31)
    {
      [*a3 setPixelFormat_];
      [*a3 pixelFormat];
      v37 = 0u;
      memset(v38, 0, 24);
      *buf = 0u;
      MTLPixelFormatGetInfoForDevice();
    }

LABEL_60:
    if (*v11)
    {
      v32 = [*v11 supportsTextureSwizzle];
      v33 = *a3;
      if (!v32)
      {
        [v33 pixelFormat];
        v37 = 0u;
        memset(v38, 0, 24);
        *buf = 0u;
        MTLPixelFormatGetInfoForDevice();
        if ((*&buf[8] & 0x800) != 0 && *a4 != 84148994)
        {
          [*a3 setUsage_];
        }

        goto LABEL_67;
      }
    }

    else
    {
      v33 = *a3;
    }

    [v33 setSwizzle_];
LABEL_67:
    if (re::internal::textureMightNeedPixelFormatViewUsage(v11, [*a3 pixelFormat], *(this + 14)))
    {
      [*a3 setUsage_];
    }

    v34 = [*a3 pixelFormat];
    v22 = 1;
    if (re::internal::applyCompressionOptionsToTextureDescriptor(v11, this, 0, 1, a3) && re::isASTCPixelFormat([*a3 pixelFormat]))
    {
      *a6 = v34;
    }

    goto LABEL_72;
  }

  ComponentCount = re::getComponentCount([*a3 pixelFormat]);
  if (ComponentCount == 1)
  {
    goto LABEL_36;
  }

  v21 = *re::pipelineLogObjects(ComponentCount);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "TextureChannelsMode::kSingleChannel is not supported for ktx images with multiple channels", buf, 2u);
  }

  v22 = 0;
LABEL_72:

  return v22;
}

uint64_t re::anonymous namespace::useImageIOForTextureImport(void **a1, id *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([*a2 textureType] != 2)
  {
    return 0;
  }

  if ((canLoadPixelFormat & 1) == 0)
  {
    v17 = *re::pipelineLogObjects(canLoadPixelFormat);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a2;
      v13 = v17;
      *buf = 134217984;
      *&buf[4] = [v18 pixelFormat];
      v14 = "KTX Texture Import: Pixel format %lu is not supported on current platform, using ImageIO to perform conversion to supported pixel format.";
      v15 = v13;
      v16 = 12;
      goto LABEL_11;
    }

    return 1;
  }

  if (*(a1 + 16) != 1 || (*(a3 + 56) - 3) > 1)
  {
    return 0;
  }

  v7 = *(a3 + 64);
  result = v7;
  if (!v7)
  {
    return result;
  }

  [*a2 pixelFormat];
  v39 = 0;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  MTLPixelFormatGetInfoForDevice();
  HasSRGBTransfer = re::colorSpaceNameHasSRGBTransfer(v7, v9);
  if (HasSRGBTransfer)
  {
    v11 = *re::pipelineLogObjects(HasSRGBTransfer);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a2;
      v13 = v11;
      *buf = 134218754;
      *&buf[4] = [v12 pixelFormat];
      *&buf[12] = 2080;
      *&buf[14] = "is";
      *&buf[22] = 2080;
      *&buf[24] = CFStringGetCStringPtr(v7, 0x8000100u);
      LOWORD(v38) = 2080;
      *(&v38 + 2) = "does not use";
      v14 = "Pixel format %lu %s linear while colorspace %s %s a linear transfer function. Using ImageIO to facilitate the gamma transfer function conversion.";
      v15 = v13;
      v16 = 42;
LABEL_11:
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);

      return 1;
    }

    return 1;
  }

  v19 = CGColorSpaceCreateWithName(v7);
  if (!v19)
  {
    v27 = *re::pipelineLogObjects(0);
    result = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v28 = v27;
    *buf = 136315138;
    *&buf[4] = CFStringGetCStringPtr(v7, 0x8000100u);
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Invalid colorSpaceNameOverride: %s", buf, 0xCu);

    return 0;
  }

  v20 = v19;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v19);
  IsExtendedOrHDR = re::internal::colorSpaceIsExtendedOrHDR(v20, v22);
  CGColorSpaceRelease(v20);
  [*a2 pixelFormat];
  v39 = 0;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 19))
    {
      v25 = *(a1 + 20);
    }

    else
    {
      v25 = 0;
    }

    InfoForDevice = re::ColorHelpers::getCGColorSpaceNameForGamut(NumberOfComponents, (*&buf[8] >> 11) & 1, IsExtendedOrHDR, v25);
    v26 = InfoForDevice;
  }

  else
  {
    v29 = MEMORY[0x1E695F1C0];
    if (NumberOfComponents <= 2)
    {
      v29 = MEMORY[0x1E695F128];
    }

    v26 = *v29;
  }

  if (!v26)
  {
    v35 = *re::pipelineLogObjects(InfoForDevice);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "KTX Texture Import: Working colorspace was nullptr, skipping ImageIO.", buf, 2u);
    return 0;
  }

  result = CFStringCompare(v7, v26, 0);
  if (result)
  {
    ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(v7, &v36);
    v31 = ColorGamutFromCGColorSpaceName;
    if ((ColorGamutFromCGColorSpaceName & 1) == 0)
    {
      v32 = *re::pipelineLogObjects(ColorGamutFromCGColorSpaceName);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        if (*(a1 + 19))
        {
          v34 = *(a1 + 20);
        }

        else
        {
          v34 = 0;
        }

        *buf = 67109120;
        *&buf[4] = v34;
        _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "KTX Texture Import: Using ImageIO to convert from source color gamut to destination color gamut: %d", buf, 8u);
      }
    }

    return v31 ^ 1u;
  }

  return result;
}

uint64_t re::loadDescriptor@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (v14[0])
  {
    v7 = v17;
    if ((re::isSupportedPixelFormat(*a2, [v7 pixelFormat], objc_msgSend(v7, sel_textureType)) & 1) == 0)
    {
      [v7 setPixelFormat_];
    }

    v8 = v7;
    *a4 = 1;
    *(a4 + 8) = v8;
    if (v7)
    {
    }
  }

  else
  {
    v9 = *re::pipelineLogObjects(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (v15[8])
      {
        v11 = *&v16[7];
      }

      else
      {
        v11 = v16;
      }

      *v12 = 136315138;
      *&v12[4] = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to parse KTX: %s", v12, 0xCu);
    }

    re::DynamicString::DynamicString(v12, v15);
    *a4 = 0;
    *(a4 + 8) = *v12;
    *(a4 + 32) = v13;
    *(a4 + 16) = *&v12[8];
  }

  return re::Result<re::KTXHeaderData,re::DynamicString>::~Result(v14);
}

void re::makeLoadedTextureView(id *a1@<X0>, _WORD *a2@<X1>, id *a3@<X8>)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = __clz(__rbit64(v5));
    if (v6 > 0xE)
    {
      v8 = 1;
    }

    else
    {
      v7 = v6 + 1;
      v8 = 1;
      while (((v5 >> v7) & 1) != 0)
      {
        ++v8;
        if (++v7 == 16)
        {
          v8 = 16 - v6;
          break;
        }
      }
    }

    v10 = *a1;
    v11 = [*a1 arrayLength];
    if ([v10 textureType] - 5 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 6 * v11;
    }

    *a3 = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:objc_msgSend(*a1 slices:sel_textureType), v6, v8, 0, v12];
  }

  else
  {
    v9 = *re::pipelineLogObjects(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "updateTextureView called with no mipsLoaded", v13, 2u);
    }

    *a3 = *a1;
    *a1 = 0;
  }
}

BOOL re::copyTextureMipsAndSlices(os_unfair_lock_s **a1, id *a2, id *a3, unsigned __int16 a4, unsigned __int16 **a5)
{
  v8 = [*a2 width];
  v9 = [*a2 height];
  v10 = [*a2 depth];
  v11 = [*a3 width];
  v12 = [*a3 height];
  v13 = [*a3 depth];
  v53 = v8;
  if (v8 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v11 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  v16 = 64 - __clz(v14);
  v17 = v16 - 1;
  if (v14)
  {
    v18 = ~(-1 << (v16 - 1));
  }

  else
  {
    v18 = 0;
  }

  if (!v14)
  {
    v17 = 0;
  }

  if ((v18 & v14) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = 64 - __clz(v15);
  v21 = v20 - 1;
  if (v15)
  {
    v22 = ~(-1 << (v20 - 1));
  }

  else
  {
    v22 = 0;
  }

  if (!v15)
  {
    v21 = 0;
  }

  if ((v22 & v15) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v24 = *a2;
  v25 = [*a2 arrayLength];
  if ([v24 textureType] - 5 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 6 * v25;
  }

  v27 = *a3;
  v28 = [*a3 arrayLength];
  if ([v27 textureType] - 5 < 2)
  {
    v28 *= 6;
  }

  [*a2 sampleCount];
  v29 = [*a2 mipmapLevelCount];
  v30 = [*a3 mipmapLevelCount];
  v31 = v23 - v19;
  if (v23 - v19 < 0)
  {
    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: unexpected mipmapOffset";
LABEL_66:
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    }

    return 0;
  }

  v32 = a5[1];
  if (v32)
  {
    v33 = *a5;
    v34 = &(*a5)[2 * v32];
    v35 = v53;
    while (v26 > *v33 && v28 > v33[1])
    {
      v33 += 2;
      if (v33 == v34)
      {
        goto LABEL_44;
      }
    }

    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: out of range source or dest slice index";
      goto LABEL_66;
    }

    return 0;
  }

  v35 = v53;
  if (v26 != v28)
  {
    v36 = *re::pipelineLogObjects(v30);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "Failed copyTextureMipsAndSlices: Cannot copy mismatched slice counts without from->to map.";
      goto LABEL_66;
    }

    return 0;
  }

LABEL_44:
  if (v29)
  {
    v38 = 0;
    v39 = v31;
    while (((a4 >> v38) & 1) == 0 || v39 < v30)
    {
      ++v38;
      ++v39;
      if (v29 == v38)
      {
        goto LABEL_49;
      }
    }

    return 0;
  }

LABEL_49:
  v49 = a5;
  v50 = [*a2 device];
  *buf = 0x1A5463132DE0FDD9;
  *&buf[8] = "CopyKTXTextureMipsAndSlicesQueue";
  re::ImportGraphicsContext::getOrCreateCommandQueue(a1, buf, 1, v63);
  re::mtl::CommandQueue::makeCommandBuffer(&v62, v63);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v61, &v62);
  [*a2 pixelFormat];
  if (!v29)
  {
LABEL_63:
    objc_msgSend_endEncoding(v61);
    [v62 commit];
    [v62 waitUntilCompleted];
    re::mtl::CommandBuffer::error(buf, &v62);
    v47 = *buf == 0;

    goto LABEL_70;
  }

  v40 = 0;
  while (((a4 >> v40) & 1) == 0)
  {
LABEL_62:
    if (++v40 == v29)
    {
      goto LABEL_63;
    }
  }

  v41 = v40 + v31;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  v55 = 0u;
  MTLGetTextureLevelInfoForDeviceWithOptions();
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (*buf == 0 && !v55)
  {
    v42 = v35;
    v43 = v49[1];
    if (v43)
    {
      v44 = *v49;
      v45 = &(*v49)[2 * v43];
      do
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v61, *a2, *v44, v40, 0, 0, 0, *buf, *&buf[8], v55, *a3, v44[1], v41, 0, 0, 0);
        v44 += 2;
      }

      while (v44 != v45);
    }

    else if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        re::mtl::BlitCommandEncoder::textureCopy(&v61, *a2, i, v40, 0, 0, 0, *buf, *&buf[8], v55, *a3, i, v41, 0, 0, 0);
      }
    }

    v35 = v42;
    goto LABEL_62;
  }

  v47 = 0;
LABEL_70:

  return v47;
}

void re::copyTextureMips(os_unfair_lock_s **a1, id *a2, id *a3, _WORD *a4)
{
  v7 = *a4;
  v8 = [*a2 width];
  v9 = [*a2 height];
  v10 = [*a2 depth];
  v11 = [*a3 width];
  v12 = [*a3 height];
  v13 = [*a3 depth];
  if (v8 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  if (v11 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  v16 = 64 - __clz(v14);
  v17 = v16 - 1;
  if (v14)
  {
    v18 = ~(-1 << (v16 - 1));
  }

  else
  {
    v18 = 0;
  }

  if (!v14)
  {
    v17 = 0;
  }

  if ((v18 & v14) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = 64 - __clz(v15);
  v21 = v20 - 1;
  if (v15)
  {
    v22 = ~(-1 << (v20 - 1));
  }

  else
  {
    v22 = 0;
  }

  if (!v15)
  {
    v21 = 0;
  }

  if ((v22 & v15) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v24 = *a2;
  v25 = [*a2 arrayLength];
  if ([v24 textureType] - 5 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 6 * v25;
  }

  [*a2 sampleCount];
  v27 = [*a2 mipmapLevelCount];
  v28 = v23 - v19;
  if (v23 - v19 < 0)
  {
    v32 = *re::pipelineLogObjects(v27);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failed copyTextureMips: unexpected mipmapOffset", buf, 2u);
    }
  }

  else
  {
    v29 = v27;
    v36 = [*a2 device];
    *buf = 0x3676813F7E71551;
    *&buf[8] = "CopyKTXTextureMipsQueue";
    re::ImportGraphicsContext::getOrCreateCommandQueue(a1, buf, 1, v46);
    re::mtl::CommandQueue::makeCommandBuffer(&v45, v46);
    re::mtl::CommandBuffer::makeBlitCommandEncoder(&v44, &v45);
    [*a2 pixelFormat];
    if (v29)
    {
      v30 = 0;
      v33 = v28;
      v34 = v29;
      do
      {
        if (((1 << (v30 + v28)) & v7) == 0)
        {
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *buf = 0u;
          v38 = 0u;
          MTLGetTextureLevelInfoForDeviceWithOptions();
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (*buf != 0 || v38)
          {
            goto LABEL_42;
          }

          if (v26)
          {
            for (i = 0; i != v26; ++i)
            {
              re::mtl::BlitCommandEncoder::textureCopy(&v44, *a2, i, v30, 0, 0, 0, *buf, *&buf[8], v38, *a3, i, v30 + v28, 0, 0, 0);
            }
          }

          v7 |= (1 << (v30 + v28));
          v28 = v33;
          v29 = v34;
        }

        ++v30;
      }

      while (v30 != v29);
    }

    objc_msgSend_endEncoding(v44);
    [v45 commit];
    [v45 waitUntilCompleted];
    *a4 = v7;
LABEL_42:
  }
}

uint64_t re::loadCPUTextureInMetal@<X0>(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, const re::TextureData *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v31 = this;
  v32 = 1;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v43 = 0;
  v44 = 0;
  if (*(a2 + 2) != 1)
  {
    goto LABEL_37;
  }

  v6 = *a2;
  if (*(*a2 + 80))
  {
    v7 = *(v6 + 88);
  }

  else
  {
    v7 = v6 + 81;
  }

  {
    *a4 = 0;
    *(a4 + 8) = 0;
    goto LABEL_15;
  }

  re::TextureData::mipmapLevelCount(a2);
  if (!v8)
  {
LABEL_13:
    goto LABEL_15;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v47 = 0;
    v46 = 0u;
    memset(v45, 0, sizeof(v45));
    v11 = *v31;
    re::TextureData::pixelFormat(a2);
    re::TextureData::width(a2);
    re::TextureData::height(a2);
    re::TextureData::depth(a2);
    MTLGetTextureLevelInfoForDeviceWithOptions();

    v12 = *(v6 + 48);
    if (v12 <= v10)
    {
      v48 = 0;
      v50 = 0u;
      memset(v51, 0, 48);
      v49 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      *&buf[14] = 797;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      v53 = 2048;
      v54 = v12;
      _os_log_send_and_compose_impl(v28, &v48, &v49, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v29, v30);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      std::__throw_bad_variant_access[abi:nn200100]();
    }

    v13 = *(v6 + 64) + v9;
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

LABEL_12:
    ++v10;
    re::TextureData::mipmapLevelCount(a2);
    v9 += 40;
    if (v10 >= v19)
    {
      goto LABEL_13;
    }
  }

  v15 = *(v13 + 32);
  *&v49 = &unk_1F5D0A468;
  BYTE8(v49) = 0;
  *&v50 = v15;
  *(&v50 + 1) = v14;
  re::FixedArrayInputStream::FixedArrayInputStream(v51, v15, v14, -1);
  re::TextureData::pixelFormat(a2);
  LODWORD(v48) = v16;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  std::__tree<unsigned long long>::destroy(buf, *&buf[8]);
  if (v17)
  {
    *&v49 = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v51);
    goto LABEL_12;
  }

  v24 = *re::pipelineLogObjects(v18);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    if (*(v6 + 80))
    {
      v25 = *(v6 + 88);
      if (!v25)
      {
        v25 = "<no label>";
      }
    }

    else
    {
      v25 = (v6 + 81);
    }

    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Failed to load texture mip for '%s'", buf, 0xCu);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *&v49 = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v51);
LABEL_15:

  v20 = v39;
  if (v39)
  {
    v21 = v43;
    if (v43)
    {
      if (v41)
      {
        v22 = 232 * v41;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v21);
          v21 = (v21 + 232);
          v22 -= 232;
        }

        while (v22);
        v20 = v39;
        v21 = v43;
      }

      (*(*v20 + 40))(v20, v21);
    }

    v43 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    ++v42;
  }

  if (v37 != -1)
  {
    (off_1F5D0B2A8[v37])(v45, &v36);
  }

  v37 = -1;
  return re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v33);
}

uint64_t re::anonymous namespace::getASTCHDRFormatForPixelFormat(int a1)
{
  if ((a1 - 204) > 0x20)
  {
    return 0;
  }

  else
  {
    return dword_1E30FCDA0[a1 - 204];
  }
}

void *re::anonymous namespace::getSkippedMipsForDownsampling(id *a1, id *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 1)
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 1;
  }

  v5 = re::internal::downsampleFactorToFitDeviceLimits(a2, [*a1 textureType], objc_msgSend(*a1, sel_width), objc_msgSend(*a1, sel_height), objc_msgSend(*a1, sel_depth));
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
    v7 = *re::pipelineLogObjects(v5);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v8 = __clz(v6);
      v9 = (0x80000000 >> v8) - 1;
      v10 = 32 - v8;
      v11 = v8 ^ 0x1F;
      if ((v9 & v6) != 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = *a1;
      v14 = v7;
      v15 = [v13 width];
      v16 = [*a1 height];
      v24 = 134218496;
      v25 = v12;
      v26 = 2048;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Loading mip #%zu from imported %zux%zu KTX to match device limits", &v24, 0x20u);
    }
  }

  v17 = __clz(v6);
  v18 = (0x80000000 >> v17) - 1;
  v19 = 32 - v17;
  v20 = 31 - v17;
  if (!v6)
  {
    v18 = 0;
    v20 = 0;
  }

  if ((v18 & v6) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if (v6 != 1 << v21)
  {
    v22 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218496;
      v25 = v6;
      v26 = 2048;
      v27 = v21;
      v28 = 1024;
      LODWORD(v29) = 1 << v21;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Passed a downsampleFactor %zu which is not a power of two; falling back to the previous mipmap %lu (with a downsampling factor of %i).", &v24, 0x1Cu);
    }
  }

  return v21;
}

uint64_t re::anonymous namespace::canLoadPixelFormat(void **a1, id *a2)
{
  if (!*a1)
  {
    return 1;
  }

  v4 = [*a2 pixelFormat];
  if (re::isASTCPixelFormat(v4))
  {
    return 1;
  }

  result = re::isSupportedPixelFormat(*a1, v4, [*a2 textureType]);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t re::anonymous namespace::processKtxMips(id *a1, id *a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, id *a8, char a9, uint64_t a10, re *a11)
{
  v109 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = a5[10];
  v71 = a5[9];
  v70 = a5[11];
  v18 = [*a8 width];
  v19 = [*a8 height];
  v20 = [*a8 depth];
  v66 = a2;
  *v89 = a2;
  *&v89[8] = 1;
  memset(v90, 0, sizeof(v90));
  v91 = 0;
  v95 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v99 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v100 = 0;
  v101 = 0;
  v65 = a4;
  v21 = 0;
  {
    if (v18 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v22 <= v20)
    {
      v22 = v20;
    }

    v23 = 64 - __clz(v22);
    v24 = v23 - 1;
    if (v22)
    {
      v25 = ~(-1 << (v23 - 1));
    }

    else
    {
      v25 = 0;
    }

    if (!v22)
    {
      v24 = 0;
    }

    if ((v25 & v22) != 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    LODWORD(v27) = v71;
    if (v71 <= v17)
    {
      LODWORD(v27) = v17;
    }

    if (v27 <= v70)
    {
      v27 = v70;
    }

    else
    {
      v27 = v27;
    }

    v28 = 32 - __clz(v27);
    v29 = v28 - 1;
    v30 = ~(-1 << (v28 - 1));
    if (!v27)
    {
      v30 = 0;
      v29 = 0;
    }

    if ((v30 & v27) != 0)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    v32 = v26 - v31;
    v33 = a1;
    v75 = *a1;
    v76 = *a8;
    v77 = a5;
    v78 = a5;
    v79 = v89;
    v81[0] = 0;
    v81[1] = 0;
    v80 = v81;
    if (*a6 != a6 + 1)
    {
      operator new();
    }

    v82 = v32;
    v83 = 0;
    v34 = [*a8 textureType];
    [*a8 pixelFormat];
    v35 = [*a8 arrayLength];
    [*a8 sampleCount];
    if (v34 == 5)
    {
      v36 = 6;
    }

    else if (v34 == 3)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1;
    }

    v69 = v36;
    if (a5[14])
    {
      v37 = 0;
      v67 = a5;
      v68 = a8;
      while (1)
      {
        v87 = 0;
        v38 = (*(*a7 + 104))(a7, 4, &v87);
        if (v38 != 4)
        {
          v52 = *re::pipelineLogObjects(v38);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Unexpected end of file when reading image size from KTX";
          goto LABEL_70;
        }

        {
          goto LABEL_73;
        }

        v86 = 0;
        v85 = 0u;
        memset(v84, 0, sizeof(v84));
        re::ktxMipInfo(v33, v84);
        v41 = v85;
        if (DWORD1(v85))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing row block bytes during KTX load";
          goto LABEL_70;
        }

        v42 = DWORD2(v85);
        if (HIDWORD(*(&v85 + 1)))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing image block bytes during KTX load";
          goto LABEL_70;
        }

        v43 = v86;
        if (HIDWORD(v86))
        {
          v52 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_73;
          }

          *buf = 0;
          v53 = "Overflow when computing image block bytes during KTX load";
          goto LABEL_70;
        }

        v44 = v87;
        if (a5[13] == 6 && !a5[12])
        {
          if (*(&v85 + 1) != ((v87 + 3) & 0x1FFFFFFFCLL))
          {
            v45 = *re::pipelineLogObjects(v40);
            v40 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              *buf = 67109376;
              *&buf[4] = v42;
              *&buf[8] = 1024;
              *&buf[10] = v87;
              _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "KTX image size field for non-array cubemap is unexpected (expected: %u, got: %u)", buf, 0xEu);
            }

            v44 = v87;
            v42 = (v87 + 3) & 0xFFFFFFFC;
            v43 = v86;
          }

          v44 *= 6;
        }

        v46 = v43 * v69;
        if ((v43 * v69) >> 32)
        {
          break;
        }

        if (v44 < v46)
        {
          v56 = *re::pipelineLogObjects(v40);
          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
LABEL_73:
            v21 = 0;
            goto LABEL_74;
          }

          *buf = 67109376;
          *&buf[4] = v46;
          *&buf[8] = 1024;
          *&buf[10] = v44;
          v53 = "KTX image size field is too small for given pixel format and dimensions (expected: %u, got: %u)";
          v54 = v56;
          v55 = 14;
LABEL_71:
          _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
          goto LABEL_73;
        }

        if (v83)
        {
          v47 = atomic_load((v83 + 24));
          if (v47)
          {
            goto LABEL_73;
          }
        }

        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *buf = 0u;
        v103 = 0u;
        v48 = v76;
        v49 = v75;
        [v48 pixelFormat];
        [v76 sampleCount];
        MTLGetTextureLevelInfoForDevice();

        v88 = [*(v78 + 8) pixelFormat];
        LODWORD(v49) = v88;
        if (v49 != [v76 pixelFormat])
        {
          [v76 setPixelFormat_];
          [*(v78 + 8) setPixelFormat_];
        }

        a8 = v68;
        v33 = a1;
        if ((v50 & 1) == 0)
        {
          goto LABEL_73;
        }

        ++v37;
        a5 = v67;
        if (v37 >= v67[14])
        {
          goto LABEL_54;
        }
      }

      v52 = *re::pipelineLogObjects(v40);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v53 = "Overflow when computing image size during KTX load";
LABEL_70:
      v54 = v52;
      v55 = 2;
      goto LABEL_71;
    }

LABEL_54:
    if (a10)
    {
      v51 = *(a10 + 24);
      if (!v51)
      {
        v63 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__tree<std::__value_type<long,unsigned long>,std::__map_value_compare<long,std::__value_type<long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<long,unsigned long>>>::__emplace_multi<std::pair<long const,unsigned long>>(v63, v64);
      }

      (*(*v51 + 48))(v51);
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, buf);
    if (*&buf[8] != -1)
    {
      (off_1F5D0B2A8[*&buf[8]])(v84, buf);
    }

    v21 = 1;
LABEL_74:
    std::__tree<unsigned long long>::destroy(&v80, v81[0]);
    if (v76)
    {

      v76 = 0;
    }
  }

  v57 = v96;
  if (v96)
  {
    v58 = v100;
    if (v100)
    {
      if (v98)
      {
        v59 = 232 * v98;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v58);
          v58 = (v58 + 232);
          v59 -= 232;
        }

        while (v59);
        v57 = v96;
        v58 = v100;
      }

      (*(*v57 + 40))(v57, v58);
    }

    v100 = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    ++v99;
  }

  if (v94 != -1)
  {
    (off_1F5D0B2A8[v94])(buf, &v93);
  }

  v94 = -1;
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v90);
  objc_autoreleasePoolPop(context);
  if (!v21)
  {
    return 0;
  }

  if (!a9)
  {
    return 1;
  }

  v61 = *re::pipelineLogObjects(v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *v89 = 136315138;
    *&v89[4] = v65;
    _os_log_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_DEFAULT, "ASTC compressed textures are not supported by this device, decompressing '%s'.", v89, 0xCu);
  }

  re::decompressCPUTexture(v89, a11);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, v89);
  if (*&v89[8] != -1)
  {
    (off_1F5D0B2A8[*&v89[8]])(buf, v89);
  }

  result = re::TextureData::isValid(a11);
  if (result)
  {
    if (!*v66)
    {
      return 1;
    }

    re::loadCPUTextureInMetal(v66, a11, *(a3 + 52), v89);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a11, v89);
    if (*&v89[8] != -1)
    {
      (off_1F5D0B2A8[*&v89[8]])(buf, v89);
    }

    result = re::TextureData::isValid(a11);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

size_t re::anonymous namespace::CGImageStreamLoader::getBytesCallback(re::_anonymous_namespace_::CGImageStreamLoader *this, char *__dst, unint64_t a3)
{
  v3 = a3;
  v4 = __dst;
  v6 = *(this + 9);
  if (v6 > 0x3F)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 += (*(**(this + 8) + 104))(*(this + 8), v3, v4);
    goto LABEL_9;
  }

  if (a3 >= 64 - v6)
  {
    v7 = 64 - v6;
  }

  else
  {
    v7 = a3;
  }

  memcpy(__dst, this + v6, v7);
  v3 -= v7;
  v4 += v7;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(this + 9) += v7;
  return v7;
}

char *re::anonymous namespace::CGImageStreamLoader::skipForwardCallback(re::_anonymous_namespace_::CGImageStreamLoader *this, char *a2)
{
  v4 = (*(**(this + 8) + 40))(*(this + 8));
  if (((*(**(this + 8) + 32))(*(this + 8), a2) & 1) == 0)
  {
    return &a2[v4 - (*(**(this + 8) + 40))(*(this + 8))];
  }

  return a2;
}

re *re::anonymous namespace::CGImageStreamLoader::releaseInfoCallback(re *this, void *a2)
{
  if (this)
  {
    v2 = *(*re::globalAllocators(this)[2] + 40);

    return v2();
  }

  return this;
}

uint64_t re::anonymous namespace::TextureBuilderKTX::init(uint64_t a1, id *a2, char a3, uint64_t a4)
{
  *(a1 + 8) = re::internal::getFaceOrArrayLength(a2);
  *(a1 + 12) = [*a2 pixelFormat];
  if (**a1)
  {
    *(a1 + 72) = [*a2 storageMode] == 2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN2re12_GLOBAL__N_117TextureBuilderKTX4initERKN2NS9SharedPtrIN3MTL17TextureDescriptorEEEbPKc_block_invoke;
    v16[3] = &__block_descriptor_57_e5_B8__0l;
    v17 = a3;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a4;
    v8 = _Block_copy(v16);
    v9 = v8;
    if (*(a1 + 72) != 1)
    {
      v14 = (*(v8 + 2))(v8);

      return v14;
    }

    v10 = [*a2 mipmapLevelCount];
    if (*(a1 + 88) < v10)
    {
    }

    v11 = _Block_copy(v9);
    v12 = *(a1 + 120);
    *(a1 + 120) = v11;
  }

  else
  {
    v13 = [*a2 mipmapLevelCount];
    if (*(a1 + 24) < v13)
    {
      re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a1 + 16), v13);
    }
  }

  return 1;
}

void re::anonymous namespace::TextureBuilderKTX::finish(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*(a2 + 72) != 1)
    {
LABEL_13:
      *a1 = 0;
      *(a1 + 8) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a1, a2 + 56);
      return;
    }

    if ((*(*(a2 + 120) + 16))())
    {
      memset(v27, 0, sizeof(v27));
      re::internal::BlitCommandQueue::init(v27, *a2, &re::internal::KTXTextureUploadQueueName(void)::queueName);
      if (*(a2 + 96))
      {
        v6 = 0;
        do
        {
          v7 = *(a2 + 112);
          v8 = objc_autoreleasePoolPush();
          if (*(a2 + 8))
          {
            v9 = 0;
            v10 = v7 + 232 * v6;
            do
            {
              if (*(a2 + 64))
              {
                std::__throw_bad_variant_access[abi:nn200100]();
              }

              v11 = *(v10 + 224);
              v12 = re::internal::BlitCommandQueue::blitCommandEncoder(v27);
              v26[0] = 0;
              re::internal::TextureInMetalBuffers::replaceTextureSlice(v10, (a2 + 56), v11 + v6, v9++, v12, v26);
            }

            while (v9 < *(a2 + 8));
          }

          objc_autoreleasePoolPop(v8);
          ++v6;
        }

        while (v6 < *(a2 + 96));
      }

      re::internal::BlitCommandQueue::commit(v27);
      re::internal::BlitCommandQueue::waitUntilCompleted(&v22, v27);
      if (v22)
      {
        re::internal::BlitCommandQueue::~BlitCommandQueue(v27, v14);
        goto LABEL_13;
      }

      v19 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v24)
        {
          v21 = *&v25[7];
        }

        else
        {
          v21 = v25;
        }

        *buf = 136315138;
        v29 = v21;
      }

      *a1 = 0;
      *(a1 + 8) = 0;
      if (v22 & 1) == 0 && v23 && (v24)
      {
        (*(*v23 + 40))();
      }

      re::internal::BlitCommandQueue::~BlitCommandQueue(v27, v20);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    if ([*a4 mipmapLevelCount] > *(a2 + 32))
    {
      re::DynamicArray<re::DynamicArray<float>>::resize((a2 + 16), [*a4 mipmapLevelCount]);
    }

    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(a4, a2 + 16, &v22);
    v16 = v22;
    *a1 = v22;
    if (v16)
    {
      v17 = (v16 + 8);
      v18 = v22;
      *(a1 + 8) = 1;
      if (v18)
      {
      }
    }

    else
    {
      *(a1 + 8) = 1;
    }
  }
}

re *___ZN2re12_GLOBAL__N_117TextureBuilderKTX4initERKN2NS9SharedPtrIN3MTL17TextureDescriptorEEEbPKc_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    re::mtl::Device::makeSharedTexture(&v9, **(a1 + 40), *v2);
  }

  else
  {
    re::mtl::Device::makeTexture(&v9, **(a1 + 40), *v2);
  }

  *buf = v9;
  *&buf[8] = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>((v2 + 7), buf);
  if (*&buf[8] != -1)
  {
    (off_1F5D0B2A8[*&buf[8]])(&v10, buf);
  }

  *&buf[8] = -1;
  if (v9)
  {
  }

  isValid = re::TextureData::isValid((v2 + 7));
  v4 = isValid;
  if (isValid)
  {
    v5 = *(a1 + 48);
    if (v5 && *v5)
    {
      re::TextureData::setLabel((v2 + 7), v5);
    }
  }

  else
  {
    v6 = *re::pipelineLogObjects(isValid);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 48);
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_fault_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_FAULT, "Failed to create texture '%s' from KTX", buf, 0xCu);
    }
  }

  return v4;
}

id re::TextureData::setLabel(re::TextureData *this, const char *a2)
{
  v2 = *(this + 2);
  if (v2 == 1)
  {
    v7 = *this;

    return re::CPUTexture::setLabel(v7, a2);
  }

  if (v2)
  {
    v7 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::CPUTexture::setLabel(v7, a2);
  }

  v3 = *this;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];

  return [v3 setLabel_];
}

uint64_t re::CPUTexture::setLabel(re::CPUTexture *this, const char *a2)
{
  re::DynamicString::operator=((this + 72), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::TextureBuilderKTX::CopyFromBufferToTextureInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE8uLL))
        {
          v2 = 232 * a2;
          result = (*(*result + 32))(result, 232 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 232, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 232 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v14 = *(v8 + v10);
          v15 = *(v8 + v10 + 8);
          *v12 = v14;
          v12[1] = v15;
          re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v7[v10 / 8 + 2], (v8 + v10 + 16));
          re::DynamicArray<BOOL>::DynamicArray(&v7[v10 / 8 + 17], (v8 + v10 + 136));
          v16 = *(v8 + v10 + 176);
          *(v12 + 92) = *(v8 + v10 + 184);
          v12[22] = v16;
          LODWORD(v16) = *(v8 + v10 + 192);
          *(v12 + 192) = v16;
          if (v16 == 1)
          {
            v17 = *(v13 + 200);
            v12[27] = *(v13 + 216);
            *(v12 + 25) = v17;
          }

          v12[28] = *(v13 + 224);
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((v8 + v10));
          v10 += 232;
        }

        while (v13 + 232 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = a2 + 24;
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = a1 + 24;
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v19 = *(a1 + 8);
        if (v4 != v19)
        {
          v20 = (v8 + 96 * v4);
          v21 = 96 * v19 - 96 * v4;
          do
          {
            if (*v20)
            {

              *v20 = 0;
            }

            v20 += 12;
            v21 -= 96;
          }

          while (v21);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = v5 + 96 * v4;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v7, v5);
      v15 = *(v5 + 24);
      *(v7 + 8) = *(v5 + 8);
      *(v7 + 24) = v15;
      v16 = *(v5 + 56);
      v17 = *(v5 + 72);
      v18 = *(v5 + 88);
      *(v7 + 40) = *(v5 + 40);
      *(v7 + 88) = v18;
      *(v7 + 72) = v17;
      *(v7 + 56) = v16;
      v5 += 96;
      v7 += 96;
    }

    while (v5 != v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, *(a2 + 8));
  if (*(a2 + 16))
  {
    v9 = a2 + 24;
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_28:
    v22 = v9 + 96 * v10;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v12, v9);
      v23 = *(v9 + 24);
      *(v12 + 8) = *(v9 + 8);
      *(v12 + 24) = v23;
      v24 = *(v9 + 56);
      v25 = *(v9 + 72);
      v26 = *(v9 + 88);
      *(v12 + 40) = *(v9 + 40);
      *(v12 + 88) = v26;
      *(v12 + 72) = v25;
      *(v12 + 56) = v24;
      v9 += 96;
      v12 += 96;
    }

    while (v9 != v22);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v13 = a1 + 24;
    goto LABEL_32;
  }

  v12 = a1 + 24;
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_15:
  v13 = *(a1 + 32);
LABEL_32:
  v27 = *(a1 + 8);
  v28 = *(a2 + 32);
  if (*(a2 + 16))
  {
    v28 = a2 + 24;
  }

  if (v27 != v4)
  {
    v29 = 3 * v27;
    v30 = v28 + 96 * v4;
    v31 = v28 + 32 * v29;
    v32 = v13 + 32 * v29;
    do
    {
      *v32 = *v31;
      v33 = *(v31 + 24);
      *(v32 + 8) = *(v31 + 8);
      *(v32 + 24) = v33;
      v34 = *(v31 + 56);
      v35 = *(v31 + 72);
      v36 = *(v31 + 88);
      *(v32 + 40) = *(v31 + 40);
      *(v32 + 88) = v36;
      *(v32 + 72) = v35;
      *(v32 + 56) = v34;
      v31 += 96;
      v32 += 96;
    }

    while (v31 != v30);
  }

LABEL_37:
  *(a1 + 8) = v4;
}

void re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v15 = a1[4];
        if (v7)
        {
          v16 = a1 + 3;
        }

        else
        {
          v16 = a1[4];
        }

        if (v9)
        {
          a1[3] = *v16;
          *v16 = 0;
          v17 = *(v16 + 3);
          *(a1 + 2) = *(v16 + 1);
          *(a1 + 3) = v17;
          v18 = *(v16 + 5);
          v19 = *(v16 + 7);
          v20 = *(v16 + 9);
          a1[14] = v16[11];
          *(a1 + 5) = v19;
          *(a1 + 6) = v20;
          *(a1 + 4) = v18;
          if (*v16)
          {

            *v16 = 0;
            v5 = *a1;
          }
        }

        (*(*v5 + 40))(v5, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0x60uLL))
      {
        v2 = 96 * a2;
        v10 = (*(*v5 + 32))(v5, 96 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v21 = a1[1];
          if (v21)
          {
            v22 = 96 * v21;
            v23 = v10;
            do
            {
              *v23 = *v14;
              *v14 = 0;
              v24 = *(v14 + 1);
              *(v23 + 24) = *(v14 + 3);
              *(v23 + 8) = v24;
              v25 = *(v14 + 5);
              v26 = *(v14 + 7);
              v27 = *(v14 + 9);
              *(v23 + 88) = v14[11];
              *(v23 + 72) = v27;
              *(v23 + 56) = v26;
              *(v23 + 40) = v25;
              if (*v14)
              {

                *v14 = 0;
              }

              v14 += 12;
              v23 += 96;
              v22 -= 96;
            }

            while (v22);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 96, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v28, v30);
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v29, v31);
      __break(1u);
    }
  }
}

BOOL re::anonymous namespace::checkAlignment(re::_anonymous_namespace_ *this, unsigned int *a2)
{
  v2 = *this;
  v3 = (v2 + 3) & 0x1FFFFFFFCLL;
  if (v3 == v2)
  {
    return 1;
  }

  v5 = *re::pipelineLogObjects(this);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "KTX image size field was not a multiple of 4, which should not be possible", buf, 2u);
  }

  *this = v3;
  if (v2 < 0xFFFFFFFD)
  {
    return 1;
  }

  v7 = *re::pipelineLogObjects(v6);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Overflow when computing aligned image size during KTX load", v9, 2u);
    return 0;
  }

  return result;
}

uint64_t re::anonymous namespace::TextureBuilderKTX::setMip(uint64_t a1, id *a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint8_t **a9, uint64_t a10, char a11, int *a12)
{
  v86 = a10;
  v112 = *MEMORY[0x1E69E9840];
  isHDR = (*(*a4 + 40))(a4);
  v85 = isHDR;
  if (a11)
  {
    isHDR = re::isHDR(*a12);
    v88 = isHDR ^ 1;
  }

  else
  {
    v88 = 0;
  }

  v20 = buf;
  v21 = (a10 + a3);
  v22 = *a2;
  if (!*a2)
  {
    v28 = (v21 + 1);
    if (*(a1 + 32) < v28)
    {
      isHDR = re::DynamicArray<re::DynamicArray<float>>::resize((a1 + 16), v28);
    }

    v29 = a12;
    if (a9[2])
    {
      v30 = *(a1 + 8);
      v102[4] = 0;
      v31 = v30 * a7;
      memset(&v102[1], 0, 20);
      re::DynamicArray<BOOL>::setCapacity(v102, v31);
      ++LODWORD(v102[3]);
      v20 = v102;
      v32 = *(a1 + 32);
      if (v32 <= v21)
      {
LABEL_94:
        v89 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v67 = MEMORY[0x1E69E9C10];
        v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *(v20 + 56) = 136315906;
        *(v20 + 228) = "operator[]";
        *(v20 + 118) = 1024;
        if (v68)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        *(v20 + 238) = 789;
        *(v20 + 121) = 2048;
        *(v20 + 244) = v21;
        *(v20 + 126) = 2048;
        *(v20 + 254) = v32;
        _os_log_send_and_compose_impl(v69, &v89, buf, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
LABEL_98:
        v47 = v102;
        *v111 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v70 = MEMORY[0x1E69E9C10];
        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v102[0]) = 136315906;
        *(v102 + 4) = "operator[]";
        WORD2(v102[1]) = 1024;
        if (v71)
        {
          v72 = 3;
        }

        else
        {
          v72 = 2;
        }

        *(&v102[1] + 6) = 789;
        WORD1(v102[2]) = 2048;
        *(&v102[2] + 4) = v21;
        WORD2(v102[3]) = 2048;
        *(&v102[3] + 6) = v32;
        _os_log_send_and_compose_impl(v72, v111, buf, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v102, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
LABEL_102:
        *v111 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v73 = MEMORY[0x1E69E9C10];
        v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v102[0]) = 136315906;
        *(v102 + 4) = "operator[]";
        WORD2(v102[1]) = 1024;
        if (v74)
        {
          v75 = 3;
        }

        else
        {
          v75 = 2;
        }

        *(&v102[1] + 6) = 789;
        WORD1(v102[2]) = 2048;
        *(&v102[2] + 4) = v21;
        WORD2(v102[3]) = 2048;
        *(&v102[3] + 6) = v47;
        _os_log_send_and_compose_impl(v75, v111, buf, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v102, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
        goto LABEL_106;
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(*(a1 + 48) + 40 * v21, v102);
      if (v102[0] && v102[4])
      {
        (*(*v102[0] + 40))(v102[0]);
      }

      v32 = *(a1 + 32);
      if (v32 <= v21)
      {
        goto LABEL_98;
      }

      re::DynamicArray<BOOL>::resize(*(a1 + 48) + 40 * v21, v31);
      v20 = *a9;
      if (*a9 != (a9 + 1))
      {
        v33 = 0;
        v32 = a7;
        while (1)
        {
          v34 = *(v20 + 4);
          if ((v34 & 0x8000000000000000) == 0 && v34 != v33)
          {
            (*(*a4 + 32))(a4, (v34 - v33) * a7);
          }

          v35 = *(a1 + 32);
          if (v35 <= v21)
          {
            break;
          }

          v36 = *(*(a1 + 48) + 40 * v21 + 32);
          v37 = *(v20 + 5);
          if ((*(v20 + 4) & 0x8000000000000000) != 0)
          {
            memset_pattern16((v36 + v37 * a7), &re::internal::AstcVoidExtentMagenta, a7);
            v29 = a12;
          }

          else
          {
            v29 = a12;
            if ((*(*a4 + 104))(a4, a7, v36 + v37 * a7) != a7)
            {
              return 0;
            }

            v33 = *(v20 + 4) + 1;
          }

          v38 = *(v20 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v20 + 2);
              v40 = *v39 == v20;
              v20 = v39;
            }

            while (!v40);
          }

          v20 = v39;
          if (v39 == a9 + 1)
          {
            goto LABEL_62;
          }
        }

        *v111 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v64 = MEMORY[0x1E69E9C10];
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v102[0]) = 136315906;
        *(v102 + 4) = "operator[]";
        WORD2(v102[1]) = 1024;
        if (v65)
        {
          v66 = 3;
        }

        else
        {
          v66 = 2;
        }

        *(&v102[1] + 6) = 789;
        WORD1(v102[2]) = 2048;
        *(&v102[2] + 4) = v21;
        WORD2(v102[3]) = 2048;
        *(&v102[3] + 6) = v35;
        _os_log_send_and_compose_impl(v66, v111, buf, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v102, 38, v85, a10);
        _os_crash_msg();
        __break(1u);
        goto LABEL_94;
      }
    }

    else
    {
      v102[4] = 0;
      memset(&v102[1], 0, 20);
      re::DynamicArray<BOOL>::setCapacity(v102, a5);
      ++LODWORD(v102[3]);
      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
LABEL_106:
        v89 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v76 = MEMORY[0x1E69E9C10];
        v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v111 = 136315906;
        *&v111[4] = "operator[]";
        *&v111[12] = 1024;
        if (v77)
        {
          v78 = 3;
        }

        else
        {
          v78 = 2;
        }

        *&v111[14] = 789;
        *&v111[18] = 2048;
        *&v111[20] = v21;
        *&v111[28] = 2048;
        *&v111[30] = v47;
        _os_log_send_and_compose_impl(v78, &v89, buf, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v111, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
LABEL_110:
        *v111 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v79 = MEMORY[0x1E69E9C10];
        v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *(v20 + 68) = 136315906;
        *(v102 + 4) = "operator[]";
        WORD2(v102[1]) = 1024;
        if (v80)
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        *(&v102[1] + 6) = 789;
        WORD1(v102[2]) = 2048;
        *(&v102[2] + 4) = v21;
        WORD2(v102[3]) = 2048;
        *(&v102[3] + 6) = v47;
        _os_log_send_and_compose_impl(v81, v111, buf, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v102, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
        goto LABEL_114;
      }

      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(*(a1 + 48) + 40 * v21, v102);
      if (v102[0] && v102[4])
      {
        (*(*v102[0] + 40))(v102[0]);
      }

      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
        goto LABEL_110;
      }

      re::DynamicArray<BOOL>::resize(*(a1 + 48) + 40 * v21, a5);
      v47 = *(a1 + 32);
      if (v47 <= v21)
      {
LABEL_114:
        *v111 = 0;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        *buf = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v102[0]) = 136315906;
        *(v102 + 4) = "operator[]";
        WORD2(v102[1]) = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        *(&v102[1] + 6) = 789;
        WORD1(v102[2]) = 2048;
        *(&v102[2] + 4) = v21;
        WORD2(v102[3]) = 2048;
        *(&v102[3] + 6) = v47;
        _os_log_send_and_compose_impl(v84, v111, buf, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v102, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
LABEL_118:
        std::__throw_bad_variant_access[abi:nn200100]();
      }

      v48 = (*(*a4 + 104))(a4, a5, *(*(a1 + 48) + 40 * v21 + 32));
      if (v48 != a5)
      {
        v49 = *re::pipelineLogObjects(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_FAULT, "Failed to load data for texture", buf, 2u);
        }
      }
    }

LABEL_62:
    if (!v88)
    {
      goto LABEL_87;
    }

    v47 = *(a1 + 32);
    if (v47 > v21)
    {
      goto LABEL_87;
    }

    goto LABEL_102;
  }

  v23 = *(a8 + 16);
  memset(v111, 0, 24);
  *&v111[24] = *a8;
  *&v111[40] = v23;
  if (*(a1 + 72) == 1)
  {
    v102[0] = v22;
    v102[1] = @"createTextureWithKTXData staging buffer";
    v102[2] = 0;
    v102[3] = 0;
    LODWORD(v102[4]) = 1;
    v102[5] = 0;
    v102[6] = 0;
    memset(v103, 0, sizeof(v103));
    v104 = 0;
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    CFRetain(@"createTextureWithKTXData staging buffer");
    *&v93 = 0;
    v91 = 0u;
    v92 = 0u;
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    v24.i32[0] = 0;
    v25.i32[0] = *&buf[8] & 0x400;
    v26 = re::internal::TextureInMetalBuffers::allocate(v102, a5, a6, vbsl_s8(vdup_lane_s32(vceq_s32(v25, v24), 0), 0x100000001, vmovn_s64(v92)).u32[1], a4, &v111[24], *(a1 + 8), a9);
    if ((v26 & 1) == 0)
    {
      v46 = *re::pipelineLogObjects(v26);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_FAULT, "Failed to create staging buffer for KTX data", buf, 2u);
      }

      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v102);
      return 0;
    }

    if (v88)
    {
      v27 = *a2;
      operator new();
    }

    *buf = v102[0];
    *&buf[8] = v102[1];
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v91, &v102[2]);
    v52 = re::DynamicArray<BOOL>::DynamicArray(v95, v103);
    v96 = v106;
    v97 = v107;
    v98 = v108;
    if (v108 == 1)
    {
      v99 = v109;
      v100 = v110;
    }

    v101 = a10;
    v53 = *(a1 + 88);
    v54 = *(a1 + 96);
    if (v54 >= v53)
    {
      v55 = v54 + 1;
      if (v53 < v54 + 1)
      {
        if (*(a1 + 80))
        {
          v56 = 2 * v53;
          v40 = v53 == 0;
          v57 = 8;
          if (!v40)
          {
            v57 = v56;
          }

          if (v57 <= v55)
          {
            v58 = v55;
          }

          else
          {
            v58 = v57;
          }
        }

        else
        {
          ++*(a1 + 104);
        }
      }
    }

    v59 = *(a1 + 112) + 232 * *(a1 + 96);
    *v59 = *buf;
    *(v59 + 8) = *&buf[8];
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v59 + 16, &v91);
    re::DynamicArray<BOOL>::DynamicArray(v59 + 136, v95);
    v60 = v96;
    *(v59 + 184) = v97;
    *(v59 + 176) = v60;
    LODWORD(v60) = v98;
    *(v59 + 192) = v98;
    if (v60 == 1)
    {
      v61 = v99;
      *(v59 + 216) = v100;
      *(v59 + 200) = v61;
    }

    *(v59 + 224) = v101;
    ++*(a1 + 96);
    ++*(a1 + 104);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v102);
    goto LABEL_87;
  }

  v102[4] = 0;
  memset(v102, 0, 28);
  if (*(a1 + 8))
  {
    v41 = 0;
    while (1)
    {
      if (*(a1 + 64))
      {
        goto LABEL_118;
      }

      v42 = *(a1 + 56);
      v89 = 0;
      v43 = (*(*a4 + 96))(a4, a7, v102, &v89);
      v44 = v43;
      if (v43 == a7)
      {
        break;
      }

      v45 = *re::pipelineLogObjects(v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_FAULT, "Failed to load data for texture", buf, 2u);
        if (!v42)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      if (v42)
      {
        goto LABEL_44;
      }

LABEL_45:
      if (v44 != a7)
      {
        v50 = v102[0];
        if (!v102[0])
        {
          return 0;
        }

        goto LABEL_68;
      }

      if (++v41 >= *(a1 + 8))
      {
        v50 = v102[0];
        if (!v102[0])
        {
          goto LABEL_87;
        }

LABEL_68:
        if (v102[4])
        {
          (*(*v50 + 40))(v50);
        }

        if (v44 != a7)
        {
          return 0;
        }

        goto LABEL_87;
      }
    }

    if (v88)
    {
    }

    *buf = *v111;
    v91 = *&v111[16];
    v92 = *&v111[32];
    [v42 replaceRegion:buf mipmapLevel:v21 slice:v41 withBytes:v89 bytesPerRow:a6 bytesPerImage:a7];
    if (!v42)
    {
      goto LABEL_45;
    }

LABEL_44:

    goto LABEL_45;
  }

LABEL_87:
  v62 = v85 + a5;
  v63 = (*(*a4 + 40))(a4);
  if (v62 > v63)
  {
    (*(*a4 + 32))(a4, (v62 - v63));
  }

  return 1;
}

BOOL re::anonymous namespace::slowAstcHdrCheck(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v5 = [RETextureLoaderASTCHelper isASTCHDRData:v4 textureType:2 error:0];
  if (v5 == 1)
  {
  }

  return v5 == 1;
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5D0B228;

  return a1;
}

void std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5D0B228;

  JUMPOUT(0x1E6906520);
}

__n128 std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::__clone(uint64_t a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_1F5D0B228;
  a2->n128_u64[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[1] = result;
  return result;
}

void std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (**(result + 16) == 1)
  {
    v3 = *a2;
    v4 = *a3;
    v5 = *(result + 24);
    result = re::isHDR(*v5);
    if ((result & 1) == 0)
    {
    }
  }

  return result;
}

uint64_t std::__function::__func<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1},std::allocator<re::anonymous namespace::TextureBuilderKTX::setMip(re::mtl::Device const&,unsigned int,re::SeekableInputStream &,unsigned int,unsigned int,unsigned int,unsigned int,MTLTextureLevelInfo const&,std::multimap<long,unsigned long> const&,long,BOOL,re::mtl::PixelFormat &)::{lambda(void const*,unsigned long)#1}>,void ()(void const*,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0B2C8;
  a2[1] = v2;
  return result;
}

re *std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::operator()(re *result)
{
  v1 = *(result + 1);
  v2 = *v1;
  if (*v1)
  {
    v3 = result;
    v4 = re::globalAllocators(result)[2];
    (**v2)(v2);
    result = (*(*v4 + 40))(v4, v2);
    v1 = *(v3 + 1);
  }

  *v1 = 0;
  return result;
}

uint64_t std::__function::__func<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0,std::allocator<re::createTextureWithKTXData(re::ImportGraphicsContext const&,re::SeekableInputStream &,re::mtl::TextureSwizzleChannels,char const*,re::TextureFromImageOptions,re::Allocator *,re::KTXHDRHint,BOOL,std::function<void ()(void)> const*,re::CancellationToken const*,re::CancellationToken const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::internal::TextureProviderProperties::~TextureProviderProperties(re::internal::TextureProviderProperties *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {

    *(this + 1) = 0;
  }
}

re::internal::TextureProviderProperties *re::internal::TextureProviderProperties::TextureProviderProperties(re::internal::TextureProviderProperties *this, const re::internal::TextureProviderProperties *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  v5 = v4;
  v6 = *(a2 + 2);
  *(this + 1) = v5;
  *(this + 2) = v6;
  if (*this)
  {
    CFRetain(*this);
    v6 = *(this + 2);
  }

  if (v6)
  {
    CFRetain(v6);
  }

  return this;
}

uint64_t re::internal::TextureProviderProperties::operator=(uint64_t a1, void **a2)
{
  if (a1 != a2)
  {
    NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), a2 + 1);
    *(a1 + 16) = a2[2];
    v4 = *a1;
    v5 = *a2;
    if (*a1 != *a2)
    {
      if (v4)
      {
        CFRelease(v4);
        v5 = *a2;
      }

      *a1 = v5;
      *a2 = 0;
      v6 = *(a1 + 16);
      v7 = a2[2];
      if (v6 != v7)
      {
        if (v6)
        {
          CFRelease(v6);
          v7 = a2[2];
        }

        *(a1 + 16) = v7;
        a2[2] = 0;
      }
    }
  }

  return a1;
}

uint64_t re::ImageSourceAndIndex::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v5)
  {
    CFRetain(v5);
  }

  return a1;
}

uint64_t re::TextureProvider::TextureProvider(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D0B348;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  re::DynamicString::setCapacity(v4, 0);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 64);
  v5 = *(a2 + 80);
  v7 = *(a2 + 48);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v6;
  *(a1 + 80) = v5;
  *(a1 + 48) = v7;
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v8;
  re::FixedArray<short>::FixedArray((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = _Block_copy(*(a2 + 176));
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 200);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 200) = v9;
  v10 = *(a2 + 203);
  *(a1 + 203) = v10;
  if (v10 == 1)
  {
    *(a1 + 204) = *(a2 + 204);
  }

  v11 = *(a2 + 205);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 205) = v11;
  v13 = *(a2 + 216);
  v12 = a2 + 216;
  *(a1 + 216) = v13;
  *(a1 + 232) = *(v12 + 16);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(a1 + 240) = *(v12 + 24);

  *(v12 - 176) = 0;
  v14 = *(v12 - 40);
  *(v12 - 40) = 0;

  v16[0] = 0;
  v16[1] = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v16[2] = 0;
  re::internal::TextureProviderProperties::operator=(v12, v16);
  re::internal::TextureProviderProperties::~TextureProviderProperties(v16);
  *(v12 + 24) = 0;
  return a1;
}

re::TextureProvider *re::TextureProvider::TextureProvider(re::TextureProvider *this, const re::TextureProvider *a2)
{
  *this = &unk_1F5D0B348;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v4 = (this + 8);
  re::DynamicString::setCapacity(v4, 0);
  *(this + 5) = *(a2 + 5);
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = *(a2 + 3);
  *(this + 92) = *(a2 + 92);
  *(this + 4) = v6;
  *(this + 5) = v5;
  *(this + 3) = v7;
  *(this + 14) = *(a2 + 14);
  v8 = *(a2 + 34);
  *(this + 120) = *(a2 + 120);
  *(this + 34) = v8;
  re::FixedArray<short>::FixedArray(this + 18, a2 + 18);
  *(this + 168) = *(a2 + 168);
  *(this + 22) = 0;
  *(this + 23) = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  v9 = *(a2 + 100);
  *(this + 202) = *(a2 + 202);
  *(this + 100) = v9;
  v10 = *(a2 + 203);
  *(this + 203) = v10;
  if (v10 == 1)
  {
    *(this + 204) = *(a2 + 204);
  }

  v11 = *(a2 + 205);
  *(this + 53) = *(a2 + 53);
  *(this + 205) = v11;
  re::internal::TextureProviderProperties::TextureProviderProperties((this + 216), (a2 + 216));
  *(this + 240) = *(a2 + 240);
  return this;
}

re::TextureProvider *re::TextureProvider::TextureProvider(re::TextureProvider *this, const re::ImportGraphicsContext *a2, int a3)
{
  *this = &unk_1F5D0B348;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v6 = (this + 8);
  re::DynamicString::setCapacity(v6, 0);
  v7 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v7;
  *(this + 16) = 1;
  *(this + 22) = 0;
  *(this + 92) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 68) = 0;
  *(this + 26) = 6;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 34) = -65536;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 168) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = *a2;
  *(this + 24) = *(a2 + 1);
  v8 = *(a2 + 8);
  *(this + 202) = *(a2 + 18);
  *(this + 100) = v8;
  v9 = *(a2 + 19);
  *(this + 203) = v9;
  if (v9 == 1)
  {
    *(this + 204) = *(a2 + 20);
  }

  v10 = *(a2 + 21);
  *(this + 53) = *(a2 + 7);
  *(this + 205) = v10;
  *(this + 27) = 0;
  *(this + 28) = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *(this + 29) = 0;
  *(this + 240) = 1;
  [*(this + 5) setResourceOptions_];
  *(this + 100) = a3;
  v11 = *(this + 23);
  if (v11)
  {
    if (a3)
    {
      v12 = [v11 supportsSharedTextureHandles];
    }

    else
    {
      v12 = 0;
    }

    *(this + 100) = v12;
  }

  return this;
}

uint64_t re::TextureProvider::canHaveAlpha(CFDictionaryRef *this, const re::TextureProvider *a2)
{
  re::TextureProvider::lazyFetchProperties(this, a2);
  v3 = CFDictionaryGetValue(this[27], *MEMORY[0x1E696DD50]);
  v4 = [v3 BOOLValue];

  return v4;
}

void re::TextureProvider::lazyFetchProperties(id *this, const re::TextureProvider *a2)
{
  if (*(this + 240) == 1)
  {
    v5[5] = v2;
    v5[6] = v3;
    re::internal::createTextureProviderProperties(v5, this, a2);
    re::internal::TextureProviderProperties::operator=((this + 27), v5);
    re::internal::TextureProviderProperties::~TextureProviderProperties(v5);
    *(this + 240) = 0;
  }
}

void re::TextureProvider::setOptions(re::TextureProvider *this, const re::TextureFromImageOptions *a2)
{
  v4 = *(a2 + 1);
  v6 = *a2;
  v7 = v4;
  *v8 = *(a2 + 2);
  *&v8[12] = *(a2 + 44);
  v9 = *(a2 + 8);
  v10 = *(a2 + 72);
  v11 = *(a2 + 22);
  re::FixedArray<short>::FixedArray(&v12, a2 + 12);
  v15 = *(a2 + 120);
  v8[20] = *(this + 100);
  if ((re::TextureFromImageOptions::operator==(this + 48, &v6) & 1) == 0)
  {
    v5 = v7;
    *(this + 3) = v6;
    *(this + 4) = v5;
    *(this + 5) = *v8;
    *(this + 92) = *&v8[12];
    re::ObjCObject::operator=(this + 14, &v9);
    *(this + 120) = v10;
    *(this + 34) = v11;
    re::FixedArray<short>::operator=(this + 18, &v12);
    *(this + 168) = v15;
    *(this + 240) = 1;
  }

  if (v12)
  {
    if (v13)
    {
      (*(*v12 + 40))();
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }
}

void **re::TextureProvider::setTemplateDescriptor(void **result, void **a2, char a3)
{
  v3 = result + 5;
  if (result[5] != *a2)
  {
    v5 = result;
    result = NS::SharedPtr<MTL::Buffer>::operator=(result + 5, a2);
    if ((a3 & 1) == 0)
    {
      result = [*v3 setResourceOptions_];
    }

    *(v5 + 240) = 1;
  }

  return result;
}

void re::CGImageSourceTextureProvider::~CGImageSourceTextureProvider(re::CGImageSourceTextureProvider *this)
{
  *this = &unk_1F5D0B3C8;
  v2 = *(this + 31);
  if (v2)
  {
    CFRelease(v2);
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::CGImageSourceTextureProvider::~CGImageSourceTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

const void *re::CGImageSourceTextureProvider::tryCreateImageSource(re::CGImageSourceTextureProvider *this, const __CFDictionary *a2)
{
  result = *(this + 31);
  if (result)
  {
    CFRetain(result);
    return *(this + 31);
  }

  return result;
}

uint64_t re::CGImageSourceTextureProvider::tryCreateOrDetachImageSource(re::CGImageSourceTextureProvider *this, const __CFDictionary *a2)
{
  v2 = *(this + 31);
  *(this + 31) = 0;
  return v2;
}

void re::CGImageTextureProvider::~CGImageTextureProvider(CGImageRef *this)
{
  *this = &unk_1F5D0B448;
  CGImageRelease(this[31]);

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5D0B448;
  CGImageRelease(this[31]);
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

CGImage ***re::CGImageArrayTextureProvider::CGImageArrayTextureProvider(CGImage ***a1, const re::ImportGraphicsContext *a2, int a3, uint64_t *a4, int a5)
{
  v8 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v8 = &unk_1F5D0B4C8;
  *(v8 + 61) = a5;
  re::DynamicArray<char const*>::DynamicArray(v8 + 248, a4);
  v9 = a1[33];
  if (v9)
  {
    v10 = a1[35];
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      CGImageRetain(v12);
      v11 -= 8;
    }

    while (v11);
  }

  return a1;
}

void re::CGImageArrayTextureProvider::~CGImageArrayTextureProvider(re::CGImageArrayTextureProvider *this)
{
  *this = &unk_1F5D0B4C8;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      CGImageRelease(v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 31);
  if (v6)
  {
    if (*(this + 35))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 35) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 31) = 0;
    ++*(this + 68);
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::CGImageArrayTextureProvider::~CGImageArrayTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

re::TextureProvider *re::ResourceTextureProvider::ResourceTextureProvider(re::TextureProvider *a1, const re::ImportGraphicsContext *a2, int a3, const re::DynamicString *a4)
{
  v6 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v6 = &unk_1F5CC4C98;
  v7 = (v6 + 8);
  re::DynamicString::DynamicString((v6 + 248), a4);
  re::DynamicString::operator=(v7, a4);
  return a1;
}

re::TextureProvider *re::USKTextureProvider::USKTextureProvider(re::TextureProvider *a1, const re::ImportGraphicsContext *a2, int a3, const re::DynamicString *a4)
{
  re::DynamicString::DynamicString(&v8, a4);
  re::ResourceTextureProvider::ResourceTextureProvider(a1, a2, a3, &v8);
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  *a1 = &unk_1F5D0B5C8;
  return a1;
}

id re::USKTextureProvider::tryCreateRawImageData(re::USKTextureProvider *this, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 256))
  {
    v3 = *(this + 33);
  }

  else
  {
    v3 = (this + 257);
  }

  re::usdkit::Resource::makeWithPath(&v10, v3);
  re::usdkit::Resource::makeMappedData(&v9, &v10);
  v5 = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  else
  {
    v6 = *re::pipelineLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v8 = *(this + 33);
      }

      else
      {
        v8 = this + 257;
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to open texture resource '%s'", buf, 0xCu);
    }
  }

  return v5;
}

CGImageSourceRef re::USKTextureProvider::tryCreateImageSource(re::USKTextureProvider *this, const __CFDictionary *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (*(*this + 40))(this);
  v12 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  if (re::internal::isBasisTextureData(&v12, v5))
  {
    CFRelease(v6);
    return 0;
  }

  v7 = CGImageSourceCreateWithData(v6, a2);
  CFRelease(v6);
  if (!v7)
  {
    v9 = *re::pipelineLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v11 = *(this + 33);
      }

      else
      {
        v11 = this + 257;
      }

      *buf = 136315138;
      v14 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture resource '%s'", buf, 0xCu);
    }

    return 0;
  }

  return v7;
}

void re::USKTextureProvider::tryReadHeaderBytes()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  operator new();
}

re::FileTextureProvider *re::FileTextureProvider::FileTextureProvider(re::FileTextureProvider *this, const re::ImportGraphicsContext *a2, int a3, const char *a4)
{
  re::ResourceTextureProvider::ResourceTextureProvider(this, a2, a3, &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  *this = &unk_1F5D0B648;
  return this;
}

void *re::FileTextureProvider::tryCreateRawImageData(re::FileTextureProvider *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 256))
  {
    v2 = *(this + 33);
  }

  else
  {
    v2 = this + 257;
  }

  v3 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v2 isDirectory:0 relativeToURL:0];
  v10 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    CFRetain(v4);
  }

  else
  {
    v7 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 256))
      {
        v9 = *(this + 33);
      }

      else
      {
        v9 = this + 257;
      }

      *buf = 136315394;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to create texture from path: %s: %@", buf, 0x16u);
    }
  }

  return v4;
}

void re::FileTextureProvider::tryCreateImageSource(re::FileTextureProvider *this, const __CFDictionary *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  operator new();
}

FILE *re::FileTextureProvider::tryReadHeaderBytes@<X0>(re::FileTextureProvider *this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(this + 256))
  {
    v7 = *(this + 33);
  }

  else
  {
    v7 = (this + 257);
  }

  re::FileStreamReader::open(&v18, v7);
  if (v18)
  {
    v9 = fread(a2, 1uLL, a3, __stream);
    *a4 = 1;
    *(a4 + 8) = v9;
  }

  else
  {
    if (v21)
    {
      v10 = *&v22[7];
    }

    else
    {
      v10 = v22;
    }

    re::DynamicString::format(&v15, "Failed to open image file: %s", v8, v10);
    v11 = v15;
    v12 = v16;
    v13 = v17;
    *a4 = 0;
    *(a4 + 8) = v11;
    *(a4 + 24) = v12;
    *(a4 + 32) = v13;
  }

  if (v18 == 1)
  {
    result = __stream;
    if (__stream)
    {
      if (v21 == 1)
      {
        return fclose(__stream);
      }
    }
  }

  else
  {
    result = v20;
    if (v20 && (v21 & 1) != 0)
    {
      return (*(v20->_p + 5))();
    }
  }

  return result;
}

uint64_t re::FileTextureProvider::tryCreateInputStreamSource@<X0>(re::FileTextureProvider *this@<X0>, uint64_t a2@<X8>)
{
  re::DynamicString::DynamicString(&v10, (this + 248));
  re::FileInputStreamSource::create((this + 248), 0, -1, v8);
  v4 = v9;
  if (v8[0])
  {
    v9 = 0;
    if (v4)
    {
      v5 = v4 + 8;
      *a2 = 1;
      *(a2 + 8) = v4;
    }

    else
    {
      *a2 = 1;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    v6 = v9;
    *a2 = 0;
    *(a2 + 8) = v6;
  }

  re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v8);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::DataTextureProvider::DataTextureProvider(uint64_t a1, uint64_t a2)
{
  *re::TextureProvider::TextureProvider(a1, a2) = &unk_1F5D0B6C8;
  v4 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = _Block_copy(v4);
  v5 = *(a2 + 256);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;

  return a1;
}

uint64_t re::DataTextureProvider::DataTextureProvider(uint64_t a1, const re::ImportGraphicsContext *a2, int a3, void *a4, void *a5)
{
  v9 = a5;
  re::TextureProvider::TextureProvider(a1, a2, a3);
  *a1 = &unk_1F5D0B6C8;
  *(a1 + 248) = *a4;
  v10 = _Block_copy(v9);

  *(a1 + 256) = v10;
  CFRetain(*(a1 + 248));
  return a1;
}

void re::DataTextureProvider::~DataTextureProvider(re::DataTextureProvider *this)
{
  *this = &unk_1F5D0B6C8;
  v2 = *(this + 31);
  if (v2)
  {
    CFRelease(v2);
    *(this + 31) = 0;
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::DataTextureProvider::~DataTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::DataTextureProvider::doneWithSource(re::DataTextureProvider *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(this + 32);
    *(this + 32) = 0;
  }

  v4 = *(this + 22);
  if (v4)
  {
    (*(v4 + 16))();
    v5 = *(this + 22);
    *(this + 22) = 0;
  }
}

const void *re::DataTextureProvider::tryCreateRawImageData(re::DataTextureProvider *this)
{
  result = *(this + 31);
  if (result)
  {
    CFRetain(result);
    return *(this + 31);
  }

  return result;
}

uint64_t re::DataTextureProvider::tryCreateOrDetachRawImageData(re::DataTextureProvider *this)
{
  v1 = *(this + 31);
  *(this + 31) = 0;
  return v1;
}

const __CFData *re::DataTextureProvider::tryCreateImageSource(re::DataTextureProvider *this, const __CFDictionary *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = *(this + 31);
  if (result)
  {
    result = CGImageSourceCreateWithData(result, a2);
    if (!result)
    {
      v4 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 16))
        {
          v5 = *(this + 3);
        }

        else
        {
          v5 = this + 17;
        }

        v6 = 136315138;
        v7 = v5;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture data '%s'", &v6, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::DataTextureProvider::tryCreateOrDetachImageSource(re::DataTextureProvider *this, const __CFDictionary *a2)
{
  v3 = (*(*this + 24))(this, a2);
  v4 = *(this + 31);
  if (v4)
  {
    CFRelease(v4);
    *(this + 31) = 0;
  }

  return v3;
}

__n128 re::DataTextureProvider::tryReadHeaderBytes@<Q0>(re::DataTextureProvider *this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(this + 31);
  if (v5)
  {
    Length = CFDataGetLength(*(this + 31));
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(v5);
    memcpy(a2, BytePtr, a3);
    *a4 = 1;
    *(a4 + 8) = a3;
  }

  else
  {
    result = v13;
    v11 = v14;
    v12 = v15;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v11;
    *(a4 + 32) = v12;
  }

  return result;
}

uint64_t re::StreamSourceTextureProvider::StreamSourceTextureProvider(uint64_t a1, const re::ImportGraphicsContext *a2, int a3, uint64_t *a4)
{
  v6 = re::TextureProvider::TextureProvider(a1, a2, a3);
  *v6 = &unk_1F5D0B748;
  v7 = *a4;
  *(v6 + 31) = *a4;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  *(a1 + 256) = 0;
  *(a1 + 376) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 324) = 0u;
  return a1;
}

void re::StreamSourceTextureProvider::~StreamSourceTextureProvider(re::StreamSourceTextureProvider *this)
{
  *this = &unk_1F5D0B748;
  re::StreamSourceTextureProvider::doneWithSource(this);
  if (*(this + 84))
  {
    (*(**(this + 39) + 24))(*(this + 39));
    *(this + 84) = 0;
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  re::DynamicArray<unsigned long>::deinit(this + 344);
  if (*(this + 256) == 1)
  {
    re::DynamicString::deinit((this + 264));
  }

  v2 = *(this + 31);
  if (v2)
  {

    *(this + 31) = 0;
  }

  re::TextureProvider::~TextureProvider(this);
}

{
  re::StreamSourceTextureProvider::~StreamSourceTextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::StreamSourceTextureProvider::doneWithSource(re::StreamSourceTextureProvider *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    CFRelease(v2);
    *(this + 37) = 0;
  }

  v3 = *(this + 38);
  if (v3)
  {
    v4 = re::globalAllocators(v2)[2];
    (**v3)(v3);
    (*(*v4 + 40))(v4, v3);
    *(this + 38) = 0;
    if (*(this + 84))
    {
      (*(**(this + 39) + 24))(*(this + 39));
      *(this + 84) = 0;
    }

    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 41) = 0;
  }

  v5 = *(this + 22);
  if (v5)
  {
    (*(v5 + 16))();
    v6 = *(this + 22);
    *(this + 22) = 0;
  }
}

void re::StreamSourceTextureProvider::lazyCreateCachedData(re::StreamSourceTextureProvider *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*(this + 37) && (*(this + 256) & 1) == 0)
  {
    v2 = *(this + 31);
    if (v2)
    {
      v3 = re::globalAllocators(this)[2];
      v17[0] = &unk_1F5D0B898;
      v17[1] = this;
      v17[3] = v3;
      v17[4] = v17;
      (*(*v2 + 48))(&v12, v2, v17);
      re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v17);
      if (v12)
      {
        if (*(this + 38) && re::SeekableInputStreamBufferedReader::readNext((this + 312), 0xFFFFFFFFFFFFFFFFLL))
        {
          *(this + 37) = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(this + 40), *(this + 41), *MEMORY[0x1E695E498]);
LABEL_34:
          if ((v12 & 1) == 0)
          {
          }

          return;
        }

        if (*(this + 16))
        {
          v6 = *(this + 3);
        }

        else
        {
          v6 = this + 17;
        }

        re::DynamicString::format(&v14, "Failed to read source texture data for '%s'", v4, v6);
      }

      else
      {
        if (*(this + 16))
        {
          v5 = *(this + 3);
        }

        else
        {
          v5 = this + 17;
        }

        v7 = re::WrappedError::localizedDescription(&v13);
        v9 = re::DynamicString::format(&v14, "Failed to read source texture data for '%s': %s", v8, v5, v7);
        v10 = *re::pipelineLogObjects(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (v15)
          {
            v11 = *&v16[7];
          }

          else
          {
            v11 = v16;
          }

          *buf = 136315138;
          *v19 = v11;
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
        }
      }

      buf[0] = 1;
      re::DynamicString::DynamicString(&v19[4], &v14);
      re::Optional<re::DynamicString>::operator=(this + 256, buf);
      if (buf[0] == 1 && *&v19[4] && (v20 & 1) != 0)
      {
        (*(**&v19[4] + 40))();
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      goto LABEL_34;
    }

    buf[0] = 1;
    re::DynamicString::DynamicString(&v19[4], &v14);
    re::Optional<re::DynamicString>::operator=(this + 256, buf);
    if (buf[0] == 1 && *&v19[4] && (v20 & 1) != 0)
    {
      (*(**&v19[4] + 40))(*&v19[4], v21);
    }

    if (v14 && (v15 & 1) != 0)
    {
      (*(*v14 + 40))();
    }
  }
}

const void *re::StreamSourceTextureProvider::tryCreateRawImageData(re::StreamSourceTextureProvider *this)
{
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  result = *(this + 37);
  if (result)
  {
    CFRetain(result);
    return *(this + 37);
  }

  return result;
}

const __CFData *re::StreamSourceTextureProvider::tryCreateImageSource(re::StreamSourceTextureProvider *this, const __CFDictionary *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  result = *(this + 37);
  if (result)
  {
    result = CGImageSourceCreateWithData(result, a2);
    if (!result)
    {
      v5 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 16))
        {
          v6 = *(this + 3);
        }

        else
        {
          v6 = this + 17;
        }

        v7 = 136315138;
        v8 = v6;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture data '%s'", &v7, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

void *re::StreamSourceTextureProvider::tryReadHeaderBytes@<X0>(const __CFData **this@<X0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  re::StreamSourceTextureProvider::lazyCreateCachedData(this);
  if (*(this + 256) == 1)
  {
    result = re::DynamicString::DynamicString(&v12, (this + 33));
    *a4 = 0;
    *(a4 + 8) = v12;
    *(a4 + 32) = v14;
    *(a4 + 16) = v13;
  }

  else
  {
    v9 = this[37];
    Length = CFDataGetLength(v9);
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(v9);
    result = memcpy(a2, BytePtr, a3);
    *a4 = 1;
    *(a4 + 8) = a3;
  }

  return result;
}

void *re::StreamSourceTextureProvider::tryCreateInputStreamSource@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[31];
  if (v3)
  {
    this = (v3 + 8);
  }

  *a2 = 1;
  *(a2 + 8) = v3;
  return this;
}

uint64_t re::CGImageTextureProvider::tryCreateOrDetachImage(re::CGImageTextureProvider *this)
{
  v1 = *(this + 31);
  *(this + 31) = 0;
  return v1;
}

uint64_t re::CGImageArrayTextureProvider::tryGetTextureTypeForImageArray@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 4) = *(this + 244);
  return this;
}

void re::USKTextureProvider::~USKTextureProvider(re::USKTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::FileTextureProvider::~FileTextureProvider(re::FileTextureProvider *this)
{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5CC4C98;
  re::DynamicString::deinit((this + 248));
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::CGImageSourceArrayTextureProvider::~CGImageSourceArrayTextureProvider(re::CGImageSourceArrayTextureProvider *this)
{
  *this = &unk_1F5D0B548;
  re::DynamicArray<re::ImageSourceAndIndex>::deinit(this + 248);

  re::TextureProvider::~TextureProvider(this);
}

{
  *this = &unk_1F5D0B548;
  re::DynamicArray<re::ImageSourceAndIndex>::deinit(this + 248);
  re::TextureProvider::~TextureProvider(this);

  JUMPOUT(0x1E6906520);
}

void re::CGImageSourceArrayTextureProvider::tryGetImageSourceAndIndexArray(re::CGImageSourceArrayTextureProvider *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  *a2 = 1;
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(this + 31);
  if (v4)
  {
    v6 = *(this + 33);
    *(a2 + 8) = v4;
    re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v3, v6);
    ++*(a2 + 32);
    v7 = *(this + 33);
    v8 = *(a2 + 24);
    if (v7 >= v8)
    {
      re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v3, *(this + 33));
      v15 = *(this + 35);
      v16 = *(a2 + 24);
      v17 = *(a2 + 40);
      if (v16)
      {
        v18 = 16 * v16;
        do
        {
          v19 = re::ImageSourceAndIndex::operator=(v17, v15);
          v15 += 16;
          v17 = v19 + 16;
          v18 -= 16;
        }

        while (v18);
        v17 = *(a2 + 40);
        v16 = *(a2 + 24);
        v15 = *(this + 35);
      }

      if (v16 != v7)
      {
        v20 = v15 + 16 * v7;
        v21 = v15 + 16 * v16;
        v22 = (v17 + 16 * v16);
        do
        {
          v23 = *v21;
          v24 = *(v21 + 8);
          *v22 = *v21;
          v22[1] = v24;
          if (v23)
          {
            CFRetain(v23);
          }

          v21 += 16;
          v22 += 2;
        }

        while (v21 != v20);
      }
    }

    else
    {
      v9 = *(a2 + 40);
      if (v7)
      {
        v10 = *(this + 35);
        v11 = 16 * v7;
        do
        {
          v12 = re::ImageSourceAndIndex::operator=(v9, v10);
          v10 += 16;
          v9 = v12 + 16;
          v11 -= 16;
        }

        while (v11);
        v9 = *(a2 + 40);
        v8 = *(a2 + 24);
      }

      if (v7 != v8)
      {
        v13 = (v9 + 16 * v7);
        v14 = 16 * v8 - 16 * v7;
        do
        {
          if (*v13)
          {
            CFRelease(*v13);
          }

          v13 += 2;
          v14 -= 16;
        }

        while (v14);
      }
    }

    *(a2 + 24) = v7;
  }
}

uint64_t re::CGImageSourceArrayTextureProvider::tryGetTextureTypeForImageArray@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 4) = *(this + 244);
  return this;
}

uint64_t re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 8);
  result = (*(*a2 + 72))(a2);
  *(v4 + 304) = result;
  *(v4 + 312) = result;
  *a3 = 1;
  return result;
}

void *re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0B898;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::StreamSourceTextureProvider::lazyCreateCachedData(void)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D0B898;
  a2[1] = v2;
  return a2;
}

__n128 std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0B8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    Length = CFDataGetLength(v2);
    if (Length < v5)
    {
      v5 = Length;
    }

    BytePtr = CFDataGetBytePtr(v3);
    memcpy(v4, BytePtr, v5);
    **(a1 + 16) = v5;

    CFRelease(v3);
  }
}

uint64_t std::__function::__func<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0,std::allocator<re::USKTextureProvider::tryReadHeaderBytes(void *,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0B970;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (*(v2 + 256))
  {
    v3 = *(v2 + 264);
  }

  else
  {
    v3 = v2 + 257;
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v3 isDirectory:0 relativeToURL:0];
  v5 = CGImageSourceCreateWithURL(v4, *(a1 + 16));
  **(a1 + 24) = v5;
  if (!**(a1 + 24))
  {
    v6 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (*(v2 + 256))
      {
        v7 = *(v2 + 264);
      }

      else
      {
        v7 = v2 + 257;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource for texture resource '%s'", &v8, 0xCu);
    }
  }
}

uint64_t std::__function::__func<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0,std::allocator<re::FileTextureProvider::tryCreateImageSource(__CFDictionary const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::ImageSourceAndIndex>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          if (*v3)
          {
            CFRelease(*v3);
          }

          v3 += 2;
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ImageSourceAndIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = v12[1];
          *v11 = *v12;
          v11[1] = v13;
          v11 += 2;
          *v12 = 0;
          v12 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

void re::internal::createGeomMeshFromUSKNode(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v11 = a1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v31 = 0x7FFFFFFFLL;
  *v18 = 0uLL;
  re::makeGeomModelDescriptorFromUSKNode(v11, a2, v29, v8, v7, v6, v18, 0, v26);
  if (v26[0] != 1)
  {
    *v18 = v27;
    re::DynamicString::DynamicString(&v18[16], &v28);
    *a6 = 0;
    *(a6 + 8) = *v18;
    *(a6 + 24) = *&v18[16];
    *(a6 + 48) = v20;
    *(a6 + 32) = v19;
LABEL_20:
    re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(v26);
    re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v29);

    return;
  }

  re::makeGeomMeshFromModelDescriptor(v18, &v27);
  if (v18[0] == 1)
  {
    re::GeomMesh::GeomMesh(&v14, &v18[8]);
    *a6 = 1;
    re::GeomMesh::GeomMesh(a6 + 8, &v14);
    re::GeomMesh::~GeomMesh(&v14);
  }

  else
  {
    v14 = *&v18[8];
    re::DynamicString::DynamicString(&v15, &v19);
    *a6 = 0;
    *(a6 + 8) = v14;
    *(a6 + 24) = v15;
    *(a6 + 48) = v17;
    *(a6 + 32) = v16;
  }

  if (v18[0] != 1)
  {
    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    goto LABEL_20;
  }

  v13 = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(&v25);
  switch(v21)
  {
    case 2:
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v22);
      goto LABEL_19;
    case 1:
      if (v22[0])
      {
        if (v24)
        {
          (*(*v22[0] + 40))(v13);
        }

        v24 = 0;
        memset(v22, 0, sizeof(v22));
        ++v23;
      }

      goto LABEL_19;
    case 0:
      LODWORD(v22[0]) = 0;
LABEL_19:
      re::GeomMesh::~GeomMesh(&v18[8]);
      goto LABEL_20;
  }

  re::internal::assertLog(4, v12, v13, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}

void re::internal::createGeomModelFromUSKNode(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v99 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v73 = 0x7FFFFFFFLL;
  v10 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v9];
  v47 = a4;
  if ([v10 count])
  {
    v44 = v6;
    memset(v48, 0, sizeof(v48));
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:v48 objects:v78 count:16];
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12;
    v42 = v9;
    v43 = v10;
    v41 = a6;
    v14 = **&v48[1];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (**&v48[1] != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v48[0] + 1) + 8 * i) inheritedMaterialBinding];
        if (v16)
        {
          v75 = 0;
          v77 = 0;
          re::ObjCObject::operator=(&v75, v16);
          v76 = HIDWORD(v71);
          v77 = 0;
          v17 = [v16 path];
          v18 = [v17 stringValue];
          v19 = [v18 UTF8String];
          LOBYTE(v67) = 0;
          re::DynamicString::DynamicString(&v68, v74);
          re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v70, &v67, &v75);
          if (v68)
          {
            if (BYTE8(v68))
            {
              (*(*v68 + 40))();
            }

            v69[0] = 0u;
            v68 = 0u;
          }

          if (*&v74[0])
          {
            if (BYTE8(v74[0]))
            {
              (*(**&v74[0] + 40))();
            }

            memset(v74, 0, sizeof(v74));
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:v48 objects:v78 count:16];
    }

    while (v13);
    a6 = v41;
    v9 = v42;
    v6 = v44;
  }

  else
  {
    v11 = [v9 inheritedMaterialBinding];
    if (!v11)
    {
      goto LABEL_31;
    }

    v43 = v10;
    v67 = 0;
    BYTE4(v68) = 0;
    re::ObjCObject::operator=(&v67, v11);
    LODWORD(v68) = HIDWORD(v71);
    BYTE4(v68) = 0;
    v20 = [v11 path];
    v21 = [v20 stringValue];
    v22 = [v21 UTF8String];
    v78[0] = 0;
    re::DynamicString::DynamicString(&v78[8], v48);
    re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::add(&v70, v78, &v67);
    if (*&v78[8])
    {
      if (v78[16])
      {
        (*(**&v78[8] + 40))();
      }

      memset(&v78[8], 0, 32);
    }

    if (*&v48[0])
    {
      if (BYTE8(v48[0]))
      {
        (*(**&v48[0] + 40))();
      }

      memset(v48, 0, 32);
    }
  }

  v10 = v43;
LABEL_31:

  *v78 = 0uLL;
  re::makeGeomModelDescriptorFromUSKNode(v9, a2, &v70, a3, v47, v6, v78, 0, &v67);
  if (v67 == 1)
  {
    re::makeGeomModelFromModelDescriptor(v78, &v68);
    v23 = &v78[8];
    if (v78[0] == 1)
    {
      v24 = *&v78[8];
      v25 = *&v78[16];
      memset(&v78[8], 0, 40);
      v26 = *&v78[24];
      v27 = *&v78[32];
      *(&v48[1] + 8) = *&v78[32];
      *&v48[0] = v24;
      *(v48 + 8) = *&v78[16];
      v28 = *&v78[40];
      v30 = *(&v79 + 1);
      v29 = v79;
      *(&v48[2] + 8) = v79;
      v79 = 0u;
      DWORD2(v48[3]) = 1;
      v31 = v81;
      v49 = v81;
      v81 = 0u;
      v32 = v82;
      v50 = v82;
      v82 = 0u;
      v33 = v84;
      v52 = v84;
      v84 = 0;
      ++v80;
      ++v83;
      v51 = 1;
      v34 = v85;
      v53 = v85;
      if (v85 == 1)
      {
        v54 = v86;
        v55 = v87;
        v86 = 0;
        v87 = 0uLL;
        v57 = v89;
        v89 = 0;
        ++v88;
        v56 = 1;
      }

      v35 = v90;
      v58 = v90;
      if (v90 == 1)
      {
        v59 = v91;
        v60 = v92;
        v91 = 0;
        v92 = 0uLL;
        v62 = v94;
        v94 = 0;
        ++v93;
        v61 = 1;
      }

      v36 = v95;
      v37 = v96;
      v95 = 0;
      v38 = *(&v96 + 1);
      v64 = v96;
      v96 = 0u;
      v39 = v98;
      v66 = v98;
      v98 = 0;
      ++v97;
      v65 = 1;
      *a6 = 1;
      *(a6 + 24) = v26;
      *(a6 + 32) = v27;
      v48[1] = 0uLL;
      *(a6 + 8) = v24;
      *(a6 + 16) = v25;
      v48[0] = 0uLL;
      *&v48[2] = 0;
      *(a6 + 40) = v28;
      *(a6 + 48) = v29;
      *(a6 + 56) = v30;
      *(&v48[2] + 8) = 0u;
      DWORD2(v48[3]) = 2;
      *(a6 + 64) = 1;
      *(a6 + 72) = v31;
      *(a6 + 88) = v32;
      v49 = 0u;
      v50 = 0u;
      *(a6 + 112) = v33;
      v63 = v36;
      v52 = 0;
      v51 = 2;
      *(a6 + 104) = 1;
      *(a6 + 120) = v34;
      if (v34)
      {
        *(a6 + 128) = v54;
        *(a6 + 136) = v55;
        v54 = 0;
        v55 = 0uLL;
        *(a6 + 160) = v57;
        v57 = 0;
        ++v56;
        *(a6 + 152) = 1;
      }

      *(a6 + 168) = v35;
      if (v35)
      {
        *(a6 + 176) = v59;
        *(a6 + 184) = v60;
        v59 = 0;
        v60 = 0uLL;
        *(a6 + 208) = v62;
        v62 = 0;
        ++v61;
        *(a6 + 200) = 1;
      }

      *(a6 + 216) = v36;
      *(a6 + 224) = v37;
      *(a6 + 232) = v38;
      v64 = 0uLL;
      v63 = 0;
      *(a6 + 248) = v39;
      v66 = 0;
      v65 = 2;
      *(a6 + 240) = 1;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v63);
      if (v58 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v59);
      }

      if (v53 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v54);
      }

      if (*(&v49 + 1))
      {
        if (v52)
        {
          (*(**(&v49 + 1) + 40))();
        }

        v52 = 0;
        v50 = 0uLL;
        *(&v49 + 1) = 0;
        ++v51;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v48[2]);
      if (*&v48[0] && (BYTE8(v48[0]) & 1) != 0)
      {
        (*(**&v48[0] + 40))();
      }
    }

    else
    {
      v48[0] = *&v78[8];
      re::DynamicString::DynamicString(&v48[1], &v78[24]);
      *a6 = 0;
      *(a6 + 8) = v48[0];
      *(a6 + 24) = *&v48[1];
      *(a6 + 48) = *(&v48[2] + 1);
      *(a6 + 32) = *(&v48[1] + 8);
    }

    if (v78[0] == 1)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(&v95);
      if (v90 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v91);
      }

      if (v85 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v86);
      }

      if (*(&v81 + 1))
      {
        if (v84)
        {
          (*(**(&v81 + 1) + 40))();
        }

        v84 = 0;
        v82 = 0uLL;
        *(&v81 + 1) = 0;
        ++v83;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v78[40]);
    }

    else
    {
      v23 = &v78[24];
    }

    re::DynamicString::deinit(v23);
  }

  else
  {
    *v78 = v68;
    re::DynamicString::DynamicString(&v78[16], v69);
    *a6 = 0;
    *(a6 + 8) = *v78;
    v40 = *&v78[40];
    *(a6 + 24) = *&v78[16];
    *(a6 + 48) = v40;
    *(a6 + 32) = *&v78[24];
  }

  re::Result<re::GeomModelDescriptor,re::DetailedError>::~Result(&v67);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(&v70);
}

double re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 96 * v8;
            re::DynamicArray<unsigned long>::deinit(v9 + 56);
            re::FixedArray<CoreIKTransform>::deinit((v9 + 32));
            re::FixedArray<CoreIKTransform>::deinit((v9 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void re::importVertexCacheAnimationFromUSKNode(void *a1@<X0>, float32x2_t *a2@<X1>, unint64_t a3@<X8>, double a4@<D0>)
{
  v165 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = [*&v6 property:@"points"];
  v8 = [*&v6 property:@"faceVertexIndices"];
  v9 = v8;
  if (!v7 || !v8 || ([v7 isAnimated] & 1) == 0)
  {
    *a3 = 1;
    goto LABEL_109;
  }

  v10 = &v160;
  v11 = [v7 timeSamples];
  v12 = v11;
  if (!v11)
  {
    v35 = v160;
    v36 = v161;
    *a3 = 0;
    *(a3 + 8) = 1024;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v35;
    *(a3 + 40) = v36;
    goto LABEL_108;
  }

  v145 = v9;
  v13 = [v11 dataNoCopy];
  v14 = [v13 bytes];
  v15 = [v12 arraySize];

  if (!v15)
  {
LABEL_142:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
    _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
LABEL_143:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, v10, v15);
    _os_crash("assertion failure: (fromInclusive <= size()) Index out of range. fromInclusive = %zu, size = %zu", v135, v137);
    __break(1u);
LABEL_144:
    re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "last", 240);
    _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
    goto LABEL_145;
  }

  v17 = [v7 arraySizeAtTime:*v14];
  v160 = 0uLL;
  *&v161 = 0;
  memset(v157, 0, 24);
  v19 = 1;
  if (v15 != 1)
  {
    while (v17 == [v7 float3Array:*&v157[16] maxCount:v17 atTime:v14[v19]] && *(&v160 + 1) == *&v157[8])
    {
      if (*(&v160 + 1))
      {
        v31 = v161;
        v32 = *&v157[16];
        v33 = 16 * *(&v160 + 1);
        do
        {
          v34 = vceqq_f32(*v31, *v32);
          v34.i32[3] = v34.i32[2];
          if ((vminvq_u32(v34) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          ++v31;
          ++v32;
          v33 -= 16;
        }

        while (v33);
      }

      if (++v19 == v15)
      {
        v19 = v15;
        break;
      }
    }
  }

LABEL_7:
  v10 = v19 - 1;
  if (v15 < v10)
  {
    goto LABEL_143;
  }

  if (*v157 && *&v157[8])
  {
    (*(**v157 + 40))();
  }

  v20 = v160;
  if (v160 && *(&v160 + 1))
  {
    v20 = (*(*v160 + 40))(v160, v161);
  }

  v143 = a3;
  v144 = v12;
  if (v15 == v10)
  {
    goto LABEL_144;
  }

  v146 = v6;
  v141 = v15;
  v142 = &v14[v15];
  a3 = (*(v142 - 1) - v14[v10] + 1.5);
  v151 = 0;
  v152 = 0;
  v153 = 0;
  if (!a3)
  {
    a2[2] = 0;
    goto LABEL_36;
  }

  v22 = 0;
  v6 = v152;
  v23 = v153;
  do
  {
    if (*&v6 == v22)
    {
      *&v155 = 0;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v160 = 0u;
      v9 = MEMORY[0x1E69E9C10];
      v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v157 = 136315906;
      *&v157[4] = "operator[]";
      *&v157[12] = 1024;
      if (v97)
      {
        v98 = 3;
      }

      else
      {
        v98 = 2;
      }

      *&v157[14] = 468;
      *&v157[18] = 2048;
      *&v157[20] = v6;
      v158 = 2048;
      v159 = v6;
      _os_log_send_and_compose_impl(v98, &v155, &v160, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
      v77 = _os_crash_msg();
      __break(1u);
LABEL_115:
      re::DynamicString::format(&v160, "Sampled index count does not matched for frame %zu: %zu != %zu", v78, v10, v77, v12);
      v99 = v160;
      v100 = v161;
      *v143 = 0;
      *(v143 + 8) = 1025;
      *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(v143 + 24) = v99;
      *(v143 + 40) = v100;
      v6 = v146;
LABEL_119:
      v12 = v144;
      if (v148 && v149)
      {
        (*(*v148 + 40))();
      }

      if (v155 && *(&v155 + 1))
      {
        (*(*v155 + 40))();
      }

      goto LABEL_104;
    }

    v23[v22] = v14[v10] + v22;
    ++v22;
  }

  while (a3 != v22);
  a2[2] = a3;
  if (a3 >> 58)
  {
    goto LABEL_146;
  }

  a2[3] = v25;
  if (!v25)
  {
    goto LABEL_147;
  }

  v27 = a3 - 1;
  if (a3 != 1)
  {
    v28.i64[0] = 0x7F0000007FLL;
    v28.i64[1] = 0x7F0000007FLL;
    v29 = vnegq_f32(v28);
    do
    {
      *v25 = v29;
      *(v25 + 16) = v28;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 32) = 0;
      v25 += 64;
      --v27;
    }

    while (v27);
  }

  v30.i64[0] = 0x7F0000007FLL;
  v30.i64[1] = 0x7F0000007FLL;
  *v25 = vnegq_f32(v30);
  *(v25 + 16) = v30;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 32) = 0;
LABEL_36:
  if (!v152)
  {
LABEL_145:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 440);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_146:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 64, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v136, v138);
    __break(1u);
LABEL_147:
    re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_148:
    v148 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v6;
    _os_log_send_and_compose_impl(v119, &v148, &v160, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_152:
    v148 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v6;
    _os_log_send_and_compose_impl(v122, &v148, &v160, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v154 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v6;
    _os_log_send_and_compose_impl(v125, &v154, &v160, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_160:
    v154 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v6;
    _os_log_send_and_compose_impl(v128, &v154, &v160, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_164:
    re::internal::assertLog(4, v72, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
    _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
    goto LABEL_165;
  }

  v37.f64[0] = *v153;
  v37.f64[1] = v153[v152 - 1];
  *a2 = vcvt_f32_f64(vmulq_n_f64(v37, a4));
  if (!a3)
  {
LABEL_45:
    v6 = v146;
    v43 = [v146 property:@"extent"];
    v17 = v43;
    if (v43 && [(_anonymous_namespace_ *)v43 isAnimated])
    {
      v44 = v17;
      v45 = [(_anonymous_namespace_ *)v17 timeSamples];
      v46 = [v45 dataNoCopy];
      v47 = [v46 bytes];
      v48 = [v45 arraySize];

      if (!v48)
      {
LABEL_165:
        re::internal::assertLog(4, v49, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
        _os_crash("assertion failure: (!isEmpty()) Array is empty.");
        __break(1u);
        goto LABEL_166;
      }

      v50 = v45;
      if ((*v14 == *v47 || vabdd_f64(*v14, *v47) < (fabs(*v14) + fabs(*v47) + 1.0) * 1.0e-12) && ((v51 = *(v142 - 1), v52 = v47[v48 - 1], v51 == v52) || vabdd_f64(v51, v52) < (fabs(v51) + fabs(v52) + 1.0) * 1.0e-12))
      {
        v53 = v153;
        re::FixedArray<double>::operator[](v152);
        v17 = v44;
        if ([(_anonymous_namespace_ *)v44 arraySizeAtTime:*v53]== 2)
        {
          v9 = v145;
          if (a3)
          {
            v54 = 0;
            v10 = 0;
            while (1)
            {
              v6 = v152;
              if (v152 <= v10)
              {
                goto LABEL_148;
              }

              v55 = [(_anonymous_namespace_ *)v17 float3Array:&v155 maxCount:2 atTime:v153[v10]];
              if (v55 != 2)
              {
                break;
              }

              v6 = a2[2];
              if (*&v6 <= v10)
              {
                goto LABEL_152;
              }

              v57 = *__s1;
              v58 = (*&a2[3] + v54);
              *v58 = v155;
              v58[1] = v57;
              ++v10;
              v54 += 64;
              if (a3 == v10)
              {
                goto LABEL_59;
              }
            }

            re::DynamicString::format(&v160, "Expected exactly 2 float3 values for extent frame %zu, received: %zu", v56, v10, v55);
            v95 = v160;
            v96 = v161;
            *v143 = 0;
            *(v143 + 8) = 1025;
            *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(v143 + 24) = v95;
            *(v143 + 40) = v96;

            v6 = v146;
            goto LABEL_103;
          }

LABEL_59:

          v6 = v146;
LABEL_67:
          if (![v9 isAnimated])
          {
LABEL_91:
            *v143 = 1;
LABEL_103:
            v12 = v144;
            goto LABEL_104;
          }

          v68 = v17;
          a2 = [v9 timeSamples];
          v69 = [(float32x2_t *)a2 dataNoCopy];
          v70 = [v69 bytes];
          v71 = [(float32x2_t *)a2 arraySize];

          if (v71)
          {
            if (*v14 != *v70 && vabdd_f64(*v14, *v70) >= (fabs(*v14) + fabs(*v70) + 1.0) * 1.0e-12 || (v73 = *(v142 - 1), v74 = v70[v71 - 1], v73 != v74) && vabdd_f64(v73, v74) >= (fabs(v73) + fabs(v74) + 1.0) * 1.0e-12)
            {
              re::DynamicString::format(&v160, "Point and Index sample sizes do not match: %zu != %zu", v72, v141, v71);
              v84 = v160;
              v85 = v161;
              *v143 = 0;
              *(v143 + 8) = 1025;
              *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
              *(v143 + 24) = v84;
              *(v143 + 40) = v85;

              v12 = v144;
              v9 = v145;
              v17 = v68;
LABEL_104:

              goto LABEL_105;
            }

            if (v152)
            {
              v9 = v145;
              v12 = [v145 arraySizeAtTime:*v153];
              v155 = 0uLL;
              __s1[0] = 0;
              if (v152)
              {
                v75 = [v145 intArray:__s1[0] maxCount:v12 atTime:*v153];
                v17 = v68;
                if (v75 != v12)
                {
                  re::DynamicString::format(&v160, "Read indices does not match expected count: %zu != %zu", v76, v75, v12);
                  v86 = v160;
                  v87 = v161;
                  *v143 = 0;
                  *(v143 + 8) = 1025;
                  *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v143 + 24) = v86;
                  *(v143 + 40) = v87;
                  if (v155 && *(&v155 + 1))
                  {
                    (*(*v155 + 40))();
                  }

                  goto LABEL_103;
                }

                v148 = 0;
                v149 = 0;
                __s2 = 0;
                if (a3 >= 2)
                {
                  v10 = 1;
                  while (1)
                  {
                    v6 = v152;
                    if (v152 <= v10)
                    {
                      goto LABEL_156;
                    }

                    v77 = [v145 arraySizeAtTime:v153[v10]];
                    if (v77 != v12)
                    {
                      goto LABEL_115;
                    }

                    v6 = v152;
                    if (v152 <= v10)
                    {
                      goto LABEL_160;
                    }

                    v79 = [v145 intArray:__s2 maxCount:v12 atTime:v153[v10]];
                    v6 = v146;
                    if (v79 != v12)
                    {
                      re::DynamicString::format(&v160, "Read indices does not match expected count for frame %zu: %zu != %zu", v80, v10, v79, v12);
                      v101 = v160;
                      v103 = *(&v161 + 1);
                      v102 = v161;
                      v104 = v143;
                      *v143 = 0;
                      v105 = 1025;
                      goto LABEL_118;
                    }

                    if (memcmp(__s1[0], __s2, 4 * v12))
                    {
                      break;
                    }

                    if (a3 == ++v10)
                    {
                      goto LABEL_84;
                    }
                  }

                  re::DynamicString::format(&v160, "Invalid topological change, index buffer does not match for frame %zu", v81, v10);
                  v101 = v160;
                  v103 = *(&v161 + 1);
                  v102 = v161;
                  v104 = v143;
                  *v143 = 0;
                  v105 = 1033;
LABEL_118:
                  *(v104 + 8) = v105;
                  *(v104 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v104 + 24) = v101;
                  *(v104 + 40) = v102;
                  *(v104 + 48) = v103;
                  goto LABEL_119;
                }

LABEL_84:
                if (v148 && v149)
                {
                  (*(*v148 + 40))();
                }

                if (v155 && *(&v155 + 1))
                {
                  (*(*v155 + 40))();
                }

                goto LABEL_91;
              }

LABEL_170:
              v148 = 0;
              v163 = 0u;
              v164 = 0u;
              v161 = 0u;
              v162 = 0u;
              v160 = 0u;
              v132 = MEMORY[0x1E69E9C10];
              v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v157 = 136315906;
              *&v157[4] = "operator[]";
              *&v157[12] = 1024;
              if (v133)
              {
                v134 = 3;
              }

              else
              {
                v134 = 2;
              }

              *&v157[14] = 468;
              *&v157[18] = 2048;
              *&v157[20] = 0;
              v158 = 2048;
              v159 = 0;
              _os_log_send_and_compose_impl(v134, &v148, &v160, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
              _os_crash_msg();
              __break(1u);
            }

LABEL_166:
            *&v155 = 0;
            v163 = 0u;
            v164 = 0u;
            v161 = 0u;
            v162 = 0u;
            v160 = 0u;
            v129 = MEMORY[0x1E69E9C10];
            v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v157 = 136315906;
            *&v157[4] = "operator[]";
            *&v157[12] = 1024;
            if (v130)
            {
              v131 = 3;
            }

            else
            {
              v131 = 2;
            }

            *&v157[14] = 468;
            *&v157[18] = 2048;
            *&v157[20] = 0;
            v158 = 2048;
            v159 = 0;
            _os_log_send_and_compose_impl(v131, &v155, &v160, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
            _os_crash_msg();
            __break(1u);
            goto LABEL_170;
          }

          goto LABEL_164;
        }

        v90 = v153;
        re::FixedArray<double>::operator[](v152);
        v91 = [(_anonymous_namespace_ *)v44 arraySizeAtTime:*v90];
        re::DynamicString::format(&v160, "Expected exactly 2 float3 values for extent property, received: %zu", v92, v91);
        v93 = v160;
        v94 = v161;
        *v143 = 0;
        *(v143 + 8) = 1025;
        *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v143 + 24) = v93;
        *(v143 + 40) = v94;
        v9 = v145;
      }

      else
      {
        re::DynamicString::format(&v160, "Point and Extent sample sizes do not match: %zu != %zu", v49, v141, v48);
        v88 = v160;
        v89 = v161;
        *v143 = 0;
        *(v143 + 8) = 1025;
        *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v143 + 24) = v88;
        *(v143 + 40) = v89;
        v9 = v145;
        v17 = v44;
      }

      goto LABEL_103;
    }

    v9 = v145;
    if (!a3)
    {
      goto LABEL_67;
    }

    v10 = 0;
    while (1)
    {
      v59 = a2[2];
      if (*&v59 <= v10)
      {
        break;
      }

      v60 = (*&a2[3] + (v10 << 6));
      v61 = v60[2].i64[1];
      if (v61)
      {
        v62 = v60[3].i64[0];
        v63 = 16 * v61;
        v64 = *v60;
        v65 = v60[1];
        do
        {
          v66 = *v62++;
          v67 = v66;
          v64.i32[3] = 0;
          v67.i32[3] = 0;
          v64 = vminnmq_f32(v64, v67);
          v65.i32[3] = 0;
          v65 = vmaxnmq_f32(v65, v67);
          *v60 = v64;
          v60[1] = v65;
          v63 -= 16;
        }

        while (v63);
      }

      if (++v10 == a3)
      {
        goto LABEL_67;
      }
    }

    *&v155 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v59;
    _os_log_send_and_compose_impl(v108, &v155, &v160, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_130:
    *&v155 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v12;
    _os_log_send_and_compose_impl(v111, &v155, &v160, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_134:
    *&v155 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v112 = MEMORY[0x1E69E9C10];
    v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v113)
    {
      v114 = 3;
    }

    else
    {
      v114 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v12;
    _os_log_send_and_compose_impl(v114, &v155, &v160, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
LABEL_138:
    *&v155 = 0;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v160 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v157 = 136315906;
    *&v157[4] = "operator[]";
    *&v157[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v157[14] = 468;
    *&v157[18] = 2048;
    *&v157[20] = v10;
    v158 = 2048;
    v159 = v12;
    _os_log_send_and_compose_impl(v116, &v155, &v160, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v157, 38, v139, v140);
    _os_crash_msg();
    __break(1u);
    goto LABEL_142;
  }

  v10 = 0;
  v6 = 48;
  while (1)
  {
    v12 = v152;
    if (v152 <= v10)
    {
      goto LABEL_130;
    }

    v38 = [v7 arraySizeAtTime:v153[v10]];
    if (v38 != v17)
    {
      re::DynamicString::format(&v160, "Sampled vertex count does not matched for frame %zu: %zu != %zu", v39, v10, v38, v17);
      goto LABEL_94;
    }

    v12 = a2[2];
    if (v12 <= v10)
    {
      goto LABEL_134;
    }

    v40 = a2[3];
    v12 = v152;
    if (v152 <= v10)
    {
      goto LABEL_138;
    }

    v41 = [v7 float3Array:*(*&v40 + *&v6) maxCount:v17 atTime:v153[v10]];
    if (v41 != v17)
    {
      break;
    }

    ++v10;
    *&v6 += 64;
    if (a3 == v10)
    {
      goto LABEL_45;
    }
  }

  re::DynamicString::format(&v160, "Read vertices does not match expected count for frame %zu: %zu != %zu", v42, v10, v41, v17);
LABEL_94:
  v82 = v160;
  v83 = v161;
  v12 = v144;
  *v143 = 0;
  *(v143 + 8) = 1025;
  *(v143 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(v143 + 24) = v82;
  *(v143 + 40) = v83;
  v9 = v145;
  v6 = v146;
LABEL_105:
  if (v151 && v152)
  {
    (*(*v151 + 40))();
  }

LABEL_108:

LABEL_109:
}

uint64_t re::FixedArray<double>::operator[](uint64_t result)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v4 = 0;
    memset(v13, 0, sizeof(v13));
    v1 = MEMORY[0x1E69E9C10];
    v5 = 136315906;
    v6 = "operator[]";
    v7 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    v8 = 468;
    v9 = 2048;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    _os_log_send_and_compose_impl(v2, &v4, v13, 80, &dword_1E1C61000, v1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v5, 38, v3);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

BOOL re::isCatmullClarkSurface(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = *MEMORY[0x1E69DEE70];

  v4 = 0;
  if (v2 == v3)
  {
    v5 = [v1 property:@"subdivisionScheme"];
    if (!v5 || (v6 = v5, [v5 tokenValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stringValue"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"catmullClark"), v8, v7, v6, (v9 & 1) != 0))
    {
      v4 = 1;
    }
  }

  return v4;
}

BOOL re::convertMDLAssetToGeomScene(const char *a1, uint64_t a2, _BYTE *a3)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v23, 4504, 0, 0, 0, 0);
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v8 = a3[1];
  v9 = objc_alloc(MEMORY[0x1E6974B48]);
  if (v8)
  {
    v21 = 0;
    v10 = &v21;
    v11 = [v9 initWithURL:v7 bufferAllocator:0 preserveIndexing:1 error:&v21];
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v11 = [v9 initWithURL:v7 vertexDescriptor:0 bufferAllocator:0 preserveTopology:0 error:&v22];
  }

  v12 = v11;
  v13 = *v10;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 localizedDescription];
    NSLog(&cfstr_Modelconverter.isa, [v15 UTF8String]);
  }

  else
  {
    v15 = v12;
    v20 = v15;
    v58 = 0;
    v55 = 0;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    v52 = 0;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0u;
    v30 = 0u;
    v31 = 0u;
    memset(v33, 0, sizeof(v33));
    v32 = 0;
    v34 = 0;
    memset(v35, 0, sizeof(v35));
    v36 = 0;
    memset(v37, 0, sizeof(v37));
    v38 = 0x7FFFFFFFLL;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    v41 = 0x7FFFFFFFLL;
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v44 = 0x7FFFFFFFLL;
    v49 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v47 = 0;
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v26 = 0x7FFFFFFFLL;
    re::convertMDLAssetToGeomSceneAndImportAnimation(&v20, a1, a2, v24, v56, v53, v50, &v27, a3, 0);
    v16 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfo,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::deinit(v24);
    if (v45)
    {
      if (v49)
      {
        (*(*v45 + 40))(v16);
      }

      v49 = 0;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      ++v48;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v42);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v39);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v37[8]);
    re::DynamicArray<re::DynamicString>::deinit(v35 + 8);
    re::DynamicArray<re::DynamicString>::deinit(&v33[1]);
    if (*(&v30 + 1))
    {
      if (v33[0])
      {
        (*(**(&v30 + 1) + 40))();
      }

      v33[0] = 0;
      v31 = 0uLL;
      *(&v30 + 1) = 0;
      ++v32;
    }

    re::DynamicArray<re::DynamicString>::deinit(&v27);
    re::DynamicArray<re::SkeletalPoseSampledAnimation>::deinit(v50);
    re::DynamicArray<re::ModelIOSkinningData>::deinit(v53);
    re::DynamicArray<re::ModelIOSkeleton>::deinit(v56);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v23, v17, v18);
  return v14 == 0;
}

uint64_t re::convertMDLAssetToGeomSceneAndImportAnimation(id *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, _BYTE *a9, CFErrorRef *a10)
{
  v204.i64[0] = a6;
  v206.i64[0] = a5;
  v307 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 16);
  *(a3 + 16) = 0;
  if (v15)
  {
    v16 = *(a3 + 32);
    v17 = 152 * v15;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v16 + 112);
      re::DynamicArray<unsigned long>::deinit(v16 + 72);
      re::DynamicArray<re::GeomModel>::deinit(v16 + 32);
      re::DynamicString::deinit(v16);
      v16 = (v16 + 152);
      v17 -= 152;
    }

    while (v17);
  }

  ++*(a3 + 24);
  *(a3 + 56) = 0;
  ++*(a3 + 64);
  v18 = *(a3 + 96);
  *(a3 + 96) = 0;
  if (v18)
  {
    v19 = 0;
    v20 = *(a3 + 112);
    v21 = 160 * v18;
    do
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v20 + v19 + 112));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 88));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 64));
      re::FixedArray<CoreIKTransform>::deinit((v20 + v19 + 40));
      re::FixedArray<re::StringID>::deinit((v20 + v19 + 16));
      re::StringID::destroyString((v20 + v19));
      v19 += 160;
    }

    while (v21 != v19);
  }

  ++*(a3 + 104);
  v22 = *a1;
  v235 = 0;
  memset(v233, 0, sizeof(v233));
  v234 = 0;
  v224[0] = 1;
  re::importSkinningAndSkeletalAnimations(v22, v206.i64[0], v204.i64[0], a7, a8, &v279);
  v24 = re::Result<re::Unit,re::DetailedError>::operator=(v224, &v279);
  if ((v279 & 1) == 0)
  {
    v24 = *(&v280 + 1);
    if (*(&v280 + 1))
    {
      if (v281)
      {
        v24 = (*(**(&v280 + 1) + 40))();
      }
    }
  }

  if ((v224[0] & 1) == 0)
  {
    v25 = *re::pipelineLogObjects(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      std::error_code::message(&v279, &v225);
      v26 = (SBYTE7(v280) & 0x80u) == 0 ? &v279 : v279;
      v27 = (v227 & 1) != 0 ? *&v228[7] : v228;
      *buf = 136315394;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v27;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Error: %s\nDetails:\n%s", buf, 0x16u);
      if (SBYTE7(v280) < 0)
      {
        operator delete(v279);
      }
    }

    if (a10)
    {
      *a10 = CFErrorCreate(0, @"REPipelineErrorDomain", 3, 0);
    }
  }

  v222 = 0;
  v220 = 0u;
  v221 = 0u;
  v223 = 0x7FFFFFFFLL;
  v218 = 0;
  v216 = 0u;
  v217 = 0u;
  v219 = 0x7FFFFFFFLL;
  *v264 = 0;
  memset(buf, 0, sizeof(buf));
  *&v264[4] = 0x7FFFFFFFLL;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v28 = v22;
  v29 = [(_anonymous_namespace_ *)v28 countByEnumeratingWithState:&v212 objects:v293 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v213;
    v208 = xmmword_1E30474D0;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v213 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v212 + 1) + 8 * i);
        v279 = xmmword_1E3047670;
        v280 = xmmword_1E3047680;
        v281 = xmmword_1E30476A0;
        v282 = xmmword_1E30474D0;
      }

      v30 = [(_anonymous_namespace_ *)v28 countByEnumeratingWithState:&v212 objects:v293 count:16];
    }

    while (v30);
  }

  if (!*&buf[28])
  {
    goto LABEL_79;
  }

  v34 = *v264;
  v211 = a3;
  if (*v264)
  {
    v35 = 0;
    v36 = *&buf[16];
    while (1)
    {
      v37 = *v36;
      v36 += 16;
      if (v37 < 0)
      {
        break;
      }

      if (*v264 == ++v35)
      {
        LODWORD(v35) = *v264;
        break;
      }
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  v38 = *v264;
  if (v35 != *v264)
  {
    v39 = *&buf[16];
    do
    {
      v40 = *(v39 + (v35 << 6) + 8);
      *&v279 = v40;
      re::collectMeshMaterialsFromMDLMesh(&v279, a4, a9[4]);

      v38 = *v264;
      if (*v264 <= (v35 + 1))
      {
        v41 = v35 + 1;
      }

      else
      {
        v41 = *v264;
      }

      v39 = *&buf[16];
      while (v41 - 1 != v35)
      {
        LODWORD(v35) = v35 + 1;
        if ((*(*&buf[16] + (v35 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_48;
        }
      }

      LODWORD(v35) = v41;
LABEL_48:
      ;
    }

    while (v35 != v34);
  }

  if ((*a9 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (v38)
  {
    v42 = 0;
    v43 = *&buf[16];
    while (1)
    {
      v44 = *v43;
      v43 += 16;
      if (v44 < 0)
      {
        break;
      }

      if (v38 == ++v42)
      {
        LODWORD(v42) = v38;
        break;
      }
    }
  }

  else
  {
    LODWORD(v42) = 0;
  }

  if (v42 != v38)
  {
    v46 = *&buf[16];
    do
    {
      v47 = *(v46 + (v42 << 6) + 8);
      v48 = [v47 vertexAttributeDataForAttributeNamed:@"textureCoordinate"];

      if (v48)
      {
        [v47 addTangentBasisForTextureCoordinateAttributeNamed:@"textureCoordinate" tangentAttributeNamed:@"tangent" bitangentAttributeNamed:@"bitangent"];
      }

      v45 = *v264;
      if (*v264 <= (v42 + 1))
      {
        v49 = v42 + 1;
      }

      else
      {
        v49 = *v264;
      }

      v46 = *&buf[16];
      while (v49 - 1 != v42)
      {
        LODWORD(v42) = v42 + 1;
        if ((*(*&buf[16] + (v42 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_70;
        }
      }

      LODWORD(v42) = v49;
LABEL_70:
      ;
    }

    while (v42 != v38);
  }

  else
  {
LABEL_58:
    v45 = v38;
  }

  if (v45)
  {
    v50 = 0;
    v51 = *&buf[16];
    while (1)
    {
      v52 = *v51;
      v51 += 16;
      if (v52 < 0)
      {
        break;
      }

      if (v45 == ++v50)
      {
        LODWORD(v50) = v45;
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  if (v50 == v45)
  {
LABEL_79:
    goto LABEL_80;
  }

  v210 = a4;
  v54 = 0;
  v55 = 0;
  v56 = *&buf[16];
  do
  {
    v57 = v56 + (v50 << 6);
    v58 = *(v57 + 8);
    v60 = v58;
    if ((a9[2] & 1) != 0 || (v61 = *(v57 + 32), isSkinnedMesh = re::isSkinnedMesh(v58, v59), v56 = *&buf[16], isSkinnedMesh))
    {
      ++v54;
      v63 = &v216;
    }

    else
    {
      v55 += v61;
      v54 += v61;
      v63 = &v220;
    }

    v279 = 0uLL;
    *&v280 = 0;
    if (HIDWORD(v279) == 0x7FFFFFFF)
    {
      v64 = v56 + (v50 << 6);
      v66 = v60;
      *(v65 + 48) = 0;
      *(v65 + 40) = 0;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 8) = v66;
      *(v65 + 16) = 0;
      *(v65 + 16) = *(v64 + 16);
      *(v64 + 16) = 0;
      *(v65 + 24) = *(v64 + 24);
      *(v64 + 24) = 0;
      v67 = *(v65 + 32);
      *(v65 + 32) = *(v64 + 32);
      *(v64 + 32) = v67;
      v68 = *(v65 + 48);
      *(v65 + 48) = *(v64 + 48);
      *(v64 + 48) = v68;
      ++*(v64 + 40);
      ++*(v65 + 40);
      ++*(v63 + 10);
    }

    if (*v264 <= (v50 + 1))
    {
      v69 = v50 + 1;
    }

    else
    {
      v69 = *v264;
    }

    v56 = *&buf[16];
    while (v69 - 1 != v50)
    {
      LODWORD(v50) = v50 + 1;
      if ((*(*&buf[16] + (v50 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_106;
      }
    }

    LODWORD(v50) = v69;
LABEL_106:
    ;
  }

  while (v50 != v45);
  v70 = v211;
  if (!v54)
  {
    goto LABEL_80;
  }

  if (v211[1] < v54)
  {
    re::DynamicArray<re::GeomModelWithLods>::setCapacity(v211, v54);
  }

  if (v55 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v55;
  }

  if (v211[6] < v71)
  {
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(v211 + 5, v71);
  }

  v72 = *(v206.i64[0] + 16);
  *&v279 = *(v206.i64[0] + 32);
  *(&v279 + 1) = v72;
  re::GeomScene::setSkeletons(v211, &v279);
  if (v218)
  {
    j = 0;
    v74 = v217;
    while (1)
    {
      v75 = *v74;
      v74 += 16;
      if (v75 < 0)
      {
        break;
      }

      if (v218 == ++j)
      {
        j = v218;
        break;
      }
    }
  }

  else
  {
    j = 0;
  }

  if (j != v218)
  {
    v76 = v217;
    *&v208 = v218;
    while (1)
    {
      v77 = v76 + (j << 6);
      v78 = *(v77 + 8);
      v79 = *(v70 + 4);
      v80 = v78;
      *buf = v80;

      re::GeomModelWithLods::GeomModelWithLods(buf);
      re::DynamicArray<re::GeomModel>::add(v264, &v279);
      v81.n128_f64[0] = re::DynamicArray<re::GeomModelWithLods>::add(v70, buf);
      v82 = *(v77 + 32);
      if (v82)
      {
        break;
      }

LABEL_137:
      if (v271)
      {
        if (v275)
        {
          (*(*v271 + 40))(v81);
        }

        v275 = 0;
        v272 = 0;
        v273 = 0;
        v271 = 0;
        ++v274;
      }

      if (v266)
      {
        if (v270)
        {
          (*(*v266 + 40))(v81);
        }

        v270 = 0;
        v267 = 0;
        v268 = 0;
        v266 = 0;
        ++v269;
      }

      re::DynamicArray<re::GeomModel>::deinit(v264);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v292);
      if (v290 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v291);
      }

      if (v288 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v289);
      }

      if (*(&v283 + 1))
      {
        if (v287)
        {
          (*(**(&v283 + 1) + 40))();
        }

        v287 = 0;
        v284 = 0;
        v285 = 0;
        *(&v283 + 1) = 0;
        ++v286;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v281);
      if (v279 && (BYTE8(v279) & 1) != 0)
      {
        (*(*v279 + 40))();
      }

      if (v208 <= j + 1)
      {
        v90 = (j + 1);
      }

      else
      {
        v90 = v208;
      }

      while (v90 - 1 != j)
      {
        j = (j + 1);
        if ((*(v76 + (j << 6)) & 0x80000000) != 0)
        {
          goto LABEL_166;
        }
      }

      j = v90;
LABEL_166:
      if (j == v208)
      {
        goto LABEL_167;
      }
    }

    v83 = 0;
    v84 = 80;
    while (1)
    {
      v85 = *(v77 + 32);
      if (v85 <= v83)
      {
        break;
      }

      v86 = (*(v77 + 48) + v84);
      v87 = *v86;
      v88 = v86[1];
      v89 = v86[3];
      v251 = v86[2];
      v252 = v89;
      v249 = v87;
      v250 = v88;
      LODWORD(v253) = v79;
      if ((*(&v87 + 3) == 0.0 || vabds_f32(0.0, *(&v249 + 3)) < ((fabsf(*(&v249 + 3)) + 1.0) * 0.00001)) && (*(&v250 + 3) == 0.0 || vabds_f32(0.0, *(&v250 + 3)) < ((fabsf(*(&v250 + 3)) + 1.0) * 0.00001)) && (*(&v251 + 3) == 0.0 || vabds_f32(0.0, *(&v251 + 3)) < ((fabsf(*(&v251 + 3)) + 1.0) * 0.00001)) && (*(&v89 + 3) == 1.0 || vabds_f32(1.0, *(&v89 + 3)) < (((fabsf(*(&v89 + 3)) + 1.0) + 1.0) * 0.00001)))
      {
        HIDWORD(v249) = 0;
        HIDWORD(v250) = 0;
        HIDWORD(v251) = 0;
        HIDWORD(v252) = 1065353216;
      }

      v70 = v211;
      v81 = re::DynamicArray<re::GeomInstance>::add((v211 + 5), &v249);
      ++v83;
      v84 += 144;
      if (v82 == v83)
      {
        goto LABEL_137;
      }
    }

LABEL_350:
    *&v302 = 0;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v249 = 0u;
    v154 = MEMORY[0x1E69E9C10];
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *v240 = 797;
    *&v240[4] = 2048;
    *&v240[6] = v83;
    *&v240[14] = 2048;
    *&v240[16] = v85;
    _os_log_send_and_compose_impl(v156, &v302, &v249, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_354:
    v236 = 0;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    v297 = 789;
    v298 = 2048;
    v299 = 0;
    v300 = 2048;
    v301 = 0;
    _os_log_send_and_compose_impl(v159, &v236, &v302, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_358:
    v236 = 0;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    v297 = 789;
    v298 = 2048;
    v299 = v76;
    v300 = 2048;
    v301 = v84;
    _os_log_send_and_compose_impl(v162, &v236, &v302, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_362:
    v236 = 0;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    v297 = 789;
    v298 = 2048;
    v299 = v76;
    v300 = 2048;
    v301 = v84;
    _os_log_send_and_compose_impl(v165, &v236, &v302, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_366:
    v236 = 0;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    v166 = MEMORY[0x1E69E9C10];
    v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v167)
    {
      v168 = 3;
    }

    else
    {
      v168 = 2;
    }

    v297 = 789;
    v298 = 2048;
    v299 = j;
    v300 = 2048;
    v301 = v84;
    _os_log_send_and_compose_impl(v168, &v236, &v302, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_370:
    v236 = 0;
    v305 = 0u;
    v306 = 0u;
    v303 = 0u;
    v304 = 0u;
    v302 = 0u;
    v169 = MEMORY[0x1E69E9C10];
    v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v170)
    {
      v171 = 3;
    }

    else
    {
      v171 = 2;
    }

    v297 = 789;
    v298 = 2048;
    v299 = j;
    v300 = 2048;
    v301 = v84;
    _os_log_send_and_compose_impl(v171, &v236, &v302, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_374:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v172 = MEMORY[0x1E69E9C10];
    v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v173)
    {
      v174 = 3;
    }

    else
    {
      v174 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = j;
    *&v240[14] = 2048;
    *&v240[16] = v84;
    _os_log_send_and_compose_impl(v174, &v302, &v279, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_378:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v175 = MEMORY[0x1E69E9C10];
    v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v176)
    {
      v177 = 3;
    }

    else
    {
      v177 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = 0;
    *&v240[14] = 2048;
    *&v240[16] = 0;
    _os_log_send_and_compose_impl(v177, &v302, &v279, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_382:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v178 = MEMORY[0x1E69E9C10];
    v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v179)
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = j;
    *&v240[14] = 2048;
    *&v240[16] = v84;
    _os_log_send_and_compose_impl(v180, &v302, &v279, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_386:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v181 = MEMORY[0x1E69E9C10];
    v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v182)
    {
      v183 = 3;
    }

    else
    {
      v183 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = 0;
    *&v240[14] = 2048;
    *&v240[16] = 0;
    _os_log_send_and_compose_impl(v183, &v302, &v279, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_390:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v184 = MEMORY[0x1E69E9C10];
    v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v185)
    {
      v186 = 3;
    }

    else
    {
      v186 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = j;
    *&v240[14] = 2048;
    *&v240[16] = v84;
    _os_log_send_and_compose_impl(v186, &v302, &v279, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_394:
    *&v302 = 0;
    v283 = 0u;
    v282 = 0u;
    v281 = 0u;
    v280 = 0u;
    v279 = 0u;
    v187 = MEMORY[0x1E69E9C10];
    v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v237 = 136315906;
    v238 = "operator[]";
    v239 = 1024;
    if (v188)
    {
      v189 = 3;
    }

    else
    {
      v189 = 2;
    }

    *v240 = 789;
    *&v240[4] = 2048;
    *&v240[6] = 0;
    *&v240[14] = 2048;
    *&v240[16] = 0;
    _os_log_send_and_compose_impl(v189, &v302, &v279, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v237, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
LABEL_398:
    v236 = 0;
    v305 = v115;
    v306 = v115;
    v303 = v115;
    v304 = v115;
    v302 = v115;
    v190 = MEMORY[0x1E69E9C10];
    v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v294 = 136315906;
    v295 = "operator[]";
    v296 = 1024;
    if (v191)
    {
      v192 = 3;
    }

    else
    {
      v192 = 2;
    }

    v297 = 797;
    v298 = 2048;
    v299 = v83;
    v300 = 2048;
    v301 = v84;
    _os_log_send_and_compose_impl(v192, &v236, &v302, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
    _os_crash_msg();
    __break(1u);
  }

LABEL_167:
  v91 = v210;
  if (HIDWORD(v221))
  {
    re::GeomModel::GeomModel(&v279);
    if (v222)
    {
      v92 = 0;
      v93 = v221;
      while (1)
      {
        v94 = *v93;
        v93 += 16;
        if (v94 < 0)
        {
          break;
        }

        if (v222 == ++v92)
        {
          LODWORD(v92) = v222;
          break;
        }
      }

      v95 = v92;
    }

    else
    {
      v95 = 0;
    }

    if (v95 == v222)
    {
LABEL_176:
      if (a2)
      {
        v96 = a2;
      }

      else
      {
        v96 = "";
      }

      v97 = strlen(v96);
      *buf = v96;
      *&buf[8] = v97;
      re::DynamicString::operator=(&v279, buf);
      v249 = xmmword_1E3047670;
      v250 = xmmword_1E3047680;
      v251 = xmmword_1E30476A0;
      v252 = xmmword_1E30474D0;
      LODWORD(v253) = v70[2];
      re::GeomModelWithLods::GeomModelWithLods(buf);
      re::DynamicArray<re::GeomModel>::add(v264, &v279);
      re::DynamicArray<re::GeomModelWithLods>::add(v70, buf);
      v98 = re::DynamicArray<re::GeomInstance>::add((v70 + 5), &v249);
      if (v271)
      {
        if (v275)
        {
          (*(*v271 + 40))(v98);
        }

        v275 = 0;
        v272 = 0;
        v273 = 0;
        v271 = 0;
        ++v274;
      }

      if (v266)
      {
        if (v270)
        {
          (*(*v266 + 40))(v98);
        }

        v270 = 0;
        v267 = 0;
        v268 = 0;
        v266 = 0;
        ++v269;
      }

      re::DynamicArray<re::GeomModel>::deinit(v264);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v292);
      if (v290 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v291);
      }

      if (v288 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v289);
      }

      if (*(&v283 + 1))
      {
        if (v287)
        {
          (*(**(&v283 + 1) + 40))();
        }

        v287 = 0;
        v284 = 0;
        v285 = 0;
        *(&v283 + 1) = 0;
        ++v286;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v281);
      if (v279 && (BYTE8(v279) & 1) != 0)
      {
        (*(*v279 + 40))();
      }

      goto LABEL_201;
    }

    j = &v249;
    v103 = v221;
    v193 = v221;
    v194 = v222;
    while (1)
    {
      v196 = v95;
      v104 = v103 + (v95 << 6);
      v105 = *(v104 + 8);
      *&v249 = v105;
      v195 = v105;

      v108 = *(v104 + 32);
      v107 = (v104 + 32);
      v106 = v108;
      v109 = v282 + v108 * v265;
      if (v109 <= 1)
      {
        v110 = 1;
      }

      else
      {
        v110 = v109;
      }

      if (*(&v281 + 1) < v110)
      {
        re::DynamicArray<re::GeomMesh>::setCapacity(&v281, v110);
        v106 = *v107;
      }

      if (v106)
      {
        break;
      }

      v148 = v206;
      v147 = v208;
      v149 = v204;
LABEL_326:
      v204 = v149;
      v206 = v148;
      v208 = v147;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v278);
      if (v276 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v277);
      }

      if (v271 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(&v272);
      }

      if (v266)
      {
        if (v270)
        {
          (*(*v266 + 40))();
        }

        v270 = 0;
        v267 = 0;
        v268 = 0;
        v266 = 0;
        ++v269;
      }

      re::DynamicArray<re::GeomMesh>::deinit(v264);
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      v95 = v196;
      v103 = v193;
      if (v194 <= v196 + 1)
      {
        v150 = v196 + 1;
      }

      else
      {
        v150 = v194;
      }

      while (v150 - 1 != v95)
      {
        if ((*(v193 + (++v95 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_344;
        }
      }

      v95 = v150;
LABEL_344:
      if (v95 == v194)
      {
        goto LABEL_176;
      }
    }

    v83 = 0;
    v111 = v107 - 2;
    v112 = v204.i32[3];
    v113 = v206.i32[3];
    v114 = HIDWORD(v208);
    v197 = v111;
    v198 = v106;
    while (1)
    {
      v200 = v114;
      v201 = v113;
      v202 = v112;
      re::DynamicString::DynamicString(&v249, buf);
      re::DynamicArray<re::GeomMesh>::DynamicArray(&v251, v264);
      re::DynamicArray<float>::DynamicArray(&v253 + 8, &v266);
      v258 = v271;
      if (v271 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v259, &v272);
      }

      v260 = v276;
      if (v276 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v261, v277);
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::DynamicArray(v262, v278);
      v115 = 0uLL;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      memset(&v240[2], 0, 32);
      v247 = xmmword_1E30474D0;
      v248 = 0u;
      v84 = v111[2];
      if (v84 <= v83)
      {
        goto LABEL_398;
      }

      v199 = v83;
      v116 = &v111[4][144 * v83];
      v308.columns[0] = *(v116 + 80);
      v308.columns[1] = *(v116 + 96);
      v117 = *(v116 + 128);
      v241 = *(v116 + 112);
      v242 = v117;
      *&v240[2] = v308.columns[0];
      *&v240[18] = v308.columns[1];
      v308.columns[2] = v241;
      v309 = __invert_f3(v308);
      v207 = v309.columns[1];
      v209 = v309.columns[0];
      DWORD2(v243) = v309.columns[2].i32[0];
      *&v243 = vzip1q_s32(v309.columns[0], v309.columns[1]).u64[0];
      DWORD2(v244) = v309.columns[2].i32[1];
      v205 = v309.columns[2];
      DWORD2(v245) = v309.columns[2].i32[2];
      *&v244 = vtrn2q_s32(v309.columns[0], v309.columns[1]).u64[0];
      *&v245 = vzip1q_s32(vdupq_laneq_s32(v309.columns[0], 2), vdupq_laneq_s32(v309.columns[1], 2)).u64[0];
      re::decomposeScaleRotationTranslation<float>(&v240[2], &v246, &v247, &v248);
      v237 = 0;
      if (*&v240[2] == 1.0 || fabsf(*&v240[2] + -1.0) < (((fabsf(*&v240[2]) + 1.0) + 1.0) * 0.00001))
      {
        if (*&v240[6] == 0.0 || (v118 = fabsf(*&v240[6]), v118 < ((v118 + 1.0) * 0.00001)))
        {
          if (*&v240[10] == 0.0 || (v119 = fabsf(*&v240[10]), v119 < ((v119 + 1.0) * 0.00001)))
          {
            if (*&v240[14] == 0.0 || (v120 = fabsf(*&v240[14]), v120 < ((v120 + 1.0) * 0.00001)))
            {
              if (*&v240[18] == 0.0 || (v121 = fabsf(*&v240[18]), v121 < ((v121 + 1.0) * 0.00001)))
              {
                if (*&v240[22] == 1.0 || fabsf(*&v240[22] + -1.0) < (((fabsf(*&v240[22]) + 1.0) + 1.0) * 0.00001))
                {
                  if (*&v240[26] == 0.0 || (v122 = fabsf(*&v240[26]), v122 < ((v122 + 1.0) * 0.00001)))
                  {
                    if (*&v240[30] == 0.0 || (v123 = fabsf(*&v240[30]), v123 < ((v123 + 1.0) * 0.00001)))
                    {
                      if (v241.f32[0] == 0.0 || (v124 = fabsf(v241.f32[0]), v124 < ((v124 + 1.0) * 0.00001)))
                      {
                        if (v241.f32[1] == 0.0 || (v125 = fabsf(v241.f32[1]), v125 < ((v125 + 1.0) * 0.00001)))
                        {
                          if (v241.f32[2] == 1.0 || fabsf(v241.f32[2] + -1.0) < (((fabsf(v241.f32[2]) + 1.0) + 1.0) * 0.00001))
                          {
                            if (v241.f32[3] == 0.0 || (v126 = fabsf(v241.f32[3]), v126 < ((v126 + 1.0) * 0.00001)))
                            {
                              if (v242.f32[0] == 0.0 || (v127 = fabsf(v242.f32[0]), v127 < ((v127 + 1.0) * 0.00001)))
                              {
                                if (v242.f32[1] == 0.0 || (v128 = fabsf(v242.f32[1]), v128 < ((v128 + 1.0) * 0.00001)))
                                {
                                  if (v242.f32[2] == 0.0 || (v129 = fabsf(v242.f32[2]), v129 < ((v129 + 1.0) * 0.00001)))
                                  {
                                    if (v242.f32[3] == 1.0 || fabsf(v242.f32[3] + -1.0) < (((fabsf(v242.f32[3]) + 1.0) + 1.0) * 0.00001))
                                    {
                                      break;
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
                }
              }
            }
          }
        }
      }

      v130 = vmulq_f32(v248, v248);
      if (fabsf(v130.f32[2] + vaddv_f32(*v130.f32)) >= 1.0e-10)
      {
        v131 = 1;
        v237 = 1;
      }

      else
      {
        v131 = 0;
      }

      if (*v246.i32 != 1.0 && fabsf(*v246.i32 + -1.0) >= (((fabsf(*v246.i32) + 1.0) + 1.0) * 0.00001) || *&v246.i32[1] != 1.0 && fabsf(*&v246.i32[1] + -1.0) >= (((fabsf(*&v246.i32[1]) + 1.0) + 1.0) * 0.00001) || *&v246.i32[2] != 1.0 && fabsf(*&v246.i32[2] + -1.0) >= (((fabsf(*&v246.i32[2]) + 1.0) + 1.0) * 0.00001))
      {
        v131 |= 2u;
        v237 = v131;
      }

      if ((*&v247 == 0.0 || (v132 = fabsf(*&v247), v132 < ((v132 + 1.0) * 0.00001))) && (*(&v247 + 1) == 0.0 || (v133 = fabsf(*(&v247 + 1)), v133 < ((v133 + 1.0) * 0.00001))) && (*(&v247 + 2) == 0.0 || (v134 = fabsf(*(&v247 + 2)), v134 < ((v134 + 1.0) * 0.00001))) && (*(&v247 + 3) == 1.0 || fabsf(*(&v247 + 3) + -1.0) < (((fabsf(*(&v247 + 3)) + 1.0) + 1.0) * 0.00001)))
      {
        if (!v131)
        {
          break;
        }
      }

      else
      {
        v237 = v131 | 4;
      }

      v135 = v252;
      if (v252)
      {
        v76 = 0;
        while (1)
        {
          v84 = v252;
          if (v252 <= v76)
          {
            goto LABEL_358;
          }

          re::transform((v253 + 736 * v76), &v240[2]);
          v84 = v252;
          if (v252 <= v76)
          {
            goto LABEL_362;
          }

          j = v253 + 736 * v76;
          v136 = *(j + 200);
          if (v136)
          {
            v85 = 0;
            v137 = *(j + 16);
            do
            {
              v138 = re::internal::GeomAttributeContainer::attributeByIndex((j + 176), v85);
              if (*(v138 + 17) == 7)
              {
                v139 = v138;
                v83 = *(v138 + 8);
                v140 = strlen(v83);
                if (v140 >= 0x15)
                {
                  v141 = *&v83[v140 - 21] == 0x6154646E656C627CLL && *&v83[v140 - 13] == 0x44736F5074656772;
                  if (v141 && *&v83[v140 - 8] == 0x7361746C6544736FLL)
                  {
                    if ((*(*v139 + 16))(v139))
                    {
                      if (!v139[5])
                      {
                        goto LABEL_354;
                      }

                      v83 = v139[7];
                      v84 = (*(*v139 + 16))(v139);
                      if (v137)
                      {
LABEL_302:
                        v143 = 0;
                        while (v84 != v143)
                        {
                          v144 = vaddq_f32(v242, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v240[2], COERCE_FLOAT(*&v83[16 * v143])), *&v240[18], *&v83[16 * v143], 1), v241, *&v83[16 * v143], 2));
                          *&v83[16 * v143++] = vdivq_f32(v144, vdupq_laneq_s32(v144, 3));
                          if (v137 == v143)
                          {
                            goto LABEL_305;
                          }
                        }

                        v236 = 0;
                        v305 = 0u;
                        v306 = 0u;
                        v303 = 0u;
                        v304 = 0u;
                        v302 = 0u;
                        v151 = MEMORY[0x1E69E9C10];
                        v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v294 = 136315906;
                        v295 = "operator[]";
                        v296 = 1024;
                        if (v152)
                        {
                          v153 = 3;
                        }

                        else
                        {
                          v153 = 2;
                        }

                        v297 = 621;
                        v298 = 2048;
                        v299 = v84;
                        v300 = 2048;
                        v301 = v84;
                        _os_log_send_and_compose_impl(v153, &v236, &v302, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v294, 38, v193, v194);
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_350;
                      }
                    }

                    else
                    {
                      v84 = 0;
                      v83 = 0;
                      if (v137)
                      {
                        goto LABEL_302;
                      }
                    }
                  }
                }
              }

LABEL_305:
              v85 = (v85 + 1);
            }

            while (v85 != v136);
          }

          ++v76;
          v70 = v211;
          if (v76 == v135)
          {
            goto LABEL_307;
          }
        }
      }

LABEL_312:
      j = &v249;
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v262);
      v91 = v210;
      if (v260 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v261);
      }

      if (v258 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v259);
      }

      v111 = v197;
      if (*(&v253 + 1))
      {
        if (v257)
        {
          (*(**(&v253 + 1) + 40))();
        }

        v257 = 0;
        v254 = 0;
        v255 = 0;
        *(&v253 + 1) = 0;
        ++v256;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v251);
      if (v249 && (BYTE8(v249) & 1) != 0)
      {
        (*(*v249 + 40))();
      }

      v147 = v209;
      HIDWORD(v147) = v200;
      v148 = v207;
      v148.i32[3] = v201;
      v83 = v199 + 1;
      v149 = v205;
      v149.i32[3] = v202;
      v112 = v202;
      v113 = v201;
      v114 = v200;
      if (v199 + 1 == v198)
      {
        goto LABEL_326;
      }
    }

LABEL_307:
    v145 = v252;
    if (v252)
    {
      v83 = 0;
      v146 = 0;
      j = 0;
      while (1)
      {
        v84 = v252;
        if (v252 <= j)
        {
          goto LABEL_366;
        }

        re::DynamicArray<re::GeomMesh>::add(&v281, &v83[v253]);
        v84 = v255;
        if (v255 <= j)
        {
          goto LABEL_370;
        }

        re::DynamicArray<int>::add((&v283 + 8), (v257 + v146));
        ++j;
        v146 += 4;
        v83 += 736;
        if (v145 == j)
        {
          goto LABEL_312;
        }
      }
    }

    goto LABEL_312;
  }

LABEL_201:
  if (a9[3] == 1)
  {
    v99 = v70[2];
    if (v99)
    {
      v83 = 0;
      for (j = 0; j != v99; ++j)
      {
        *v264 = 0;
        memset(buf, 0, 28);
        *&v251 = 0;
        *&v250 = 0;
        v249 = 0uLL;
        DWORD2(v250) = 0;
        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_374;
        }

        v100 = &v83[v70[4]];
        if (!*(v100 + 6))
        {
          goto LABEL_378;
        }

        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_382;
        }

        v101 = &v83[v70[4]];
        if (!*(v101 + 6))
        {
          goto LABEL_386;
        }

        re::DynamicArray<re::GeomMesh>::operator=((*(v101 + 8) + 32), buf);
        v84 = v70[2];
        if (v84 <= j)
        {
          goto LABEL_390;
        }

        v102 = &v83[v70[4]];
        if (!*(v102 + 6))
        {
          goto LABEL_394;
        }

        re::DynamicArray<re::RigComponentConstraint>::operator=(*(v102 + 8) + 72, &v249);
        if (v249 && v251)
        {
          (*(*v249 + 40))();
        }

        re::DynamicArray<re::GeomMesh>::deinit(buf);
        v83 += 152;
      }
    }
  }

LABEL_80:
  if (v224[0] & 1) == 0 && v226 && (v227)
  {
    (*(*v226 + 40))();
  }

  if (v229 && (v230 & 1) != 0)
  {
    (*(*v229 + 40))();
  }

  if (v231 && (v232 & 1) != 0)
  {
    (*(*v231 + 40))();
  }

  re::DynamicArray<re::ObjCObject>::deinit(v233);

  return 1;
}