void sub_21BFF26BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C3DSubdivisionOsdGPUGetPerPatchTypeSources(int a1)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_3();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
        break;
      case 5:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_2();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::kSources;
        break;
      case 6:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_1();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::kSources;
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_6();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::kSources;
        break;
      case 2:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_5();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::kSources;
        break;
      case 3:
        if (C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::onceToken != -1)
        {
          C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_4();
        }

        v1 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::kSources;
        return *v1;
      default:
LABEL_27:
        C3DSubdivisionOsdGPUGetPerPatchTypeSources_cold_7();
    }
  }

  return *v1;
}

uint64_t C3DSubdivisionOsdGPUGetProgramGeneratorResources(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = C3DPatchTypeToOsdPatchType(a1, a2);
  v112[0] = v6;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v112);
  [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"USE_OPENSUBDIV"];
  v8 = [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v112[0] - 5) < 5), @"OSD_IS_ADAPTIVE"}];
  v99 = a1;
  v100 = a3;
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v10 = MEMORY[0x277CBEC38];
      v11 = @"OSD_PATCH_QUADS";
      goto LABEL_11;
    }

    if (v6 == 4)
    {
      v10 = MEMORY[0x277CBEC38];
      v11 = @"OSD_PATCH_TRIANGLES";
      goto LABEL_11;
    }

    v13 = scn_default_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DSubdivisionOsdGPUGetProgramGeneratorResources_cold_1(v13);
    }
  }

  else
  {
    if (v6 > 7)
    {
      if (v6 == 8)
      {
        v12 = @"OSD_PATCH_GREGORY_BOUNDARY";
      }

      else
      {
        v12 = @"OSD_PATCH_GREGORY_BASIS";
      }
    }

    else
    {
      if (v6 == 6)
      {
        [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OSD_PATCH_REGULAR"];
        v10 = &unk_282E0F648;
        v11 = @"CONTROL_POINTS_PER_PATCH";
LABEL_11:
        [a3 setObject:v10 forKeyedSubscript:v11];
        goto LABEL_17;
      }

      v12 = @"OSD_PATCH_GREGORY";
    }

    [a3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
    [a3 setObject:&unk_282E0F660 forKeyedSubscript:@"CONTROL_POINTS_PER_PATCH"];
    NumControlVertices = 4;
  }

LABEL_17:
  v14 = v4;
  IsVarying = C3DGeometryOsdGetColorIsVarying(v4);
  VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(v14);
  if (IsVarying)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  IsFaceVarying = C3DGeometryOsdGetColorIsFaceVarying(v14);
  FaceVaryingTextureCoordinatesCount = C3DGeometryOsdGetFaceVaryingTextureCoordinatesCount(v14);
  if (IsFaceVarying)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  v96 = v20;
  v97 = FaceVaryingTextureCoordinatesCount;
  HasMultipleFaceVaryingChannels = C3DGeometryOsdGetHasMultipleFaceVaryingChannels(v14);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v106);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_UV_CORRECTION if (t > 0.5) { ti += 0.01f; } else { ti += 0.01f; }\n", 78);
  v98 = v17 + 2 * VaryingTextureCoordinatesCount;
  if (v98)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "struct OsdInputVertexType { \n", 29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "    metal::packed_float3 position; \n", 36);
    for (i = 0; i != 8; ++i)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, i) == 2)
      {
        v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "    metal::packed_float2 texcoord", 33);
        std::to_string(&v105, i);
        v23 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v105 : v105.__r_.__value_.__r.__words[0];
        v24 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v105.__r_.__value_.__r.__words[2]) : v105.__r_.__value_.__l.__size_;
        v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v23, v24);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, "; \n", 3);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "    metal::packed_float4 color; \n", 33);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "}; \n", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_DECLARE                             ", 61);
    for (j = 0; j != 8; ++j)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, j) == 2)
      {
        v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "float2 texcoord", 15);
        std::to_string(&v105, j);
        v28 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v105 : v105.__r_.__value_.__r.__words[0];
        v29 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v105.__r_.__value_.__r.__words[2]) : v105.__r_.__value_.__l.__size_;
        v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, v28, v29);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "; ", 2);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "float4 color; ", 14);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_DECLARE_PACKED                             ", 68);
    for (k = 0; k != 8; ++k)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, k) == 2)
      {
        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "metal::packed_float2 texcoord", 29);
        std::to_string(&v105, k);
        v33 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v105 : v105.__r_.__value_.__r.__words[0];
        v34 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v105.__r_.__value_.__r.__words[2]) : v105.__r_.__value_.__l.__size_;
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, v33, v34);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, "; ", 2);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "metal::packed_float4 color; ", 28);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_PER_VERTEX(in, out)                 ", 61);
    for (m = 0; m != 8; ++m)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, m) == 2)
      {
        v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.texcoord", 12);
        std::to_string(&v105, m);
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v105;
        }

        else
        {
          v38 = v105.__r_.__value_.__r.__words[0];
        }

        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v105.__r_.__value_.__l.__size_;
        }

        v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, v38, size);
        v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, " = in.texcoord", 14);
        std::to_string(&v104, m);
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v104;
        }

        else
        {
          v42 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = v104.__r_.__value_.__l.__size_;
        }

        v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, v42, v43);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, "; ", 2);
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.color = in.color; ", 22);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_PER_CONTROL_POINT(in, out)          ", 61);
    for (n = 0; n != 8; ++n)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, n) == 2)
      {
        v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.texcoord", 12);
        std::to_string(&v105, n);
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v105;
        }

        else
        {
          v47 = v105.__r_.__value_.__r.__words[0];
        }

        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = v105.__r_.__value_.__l.__size_;
        }

        v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, v47, v48);
        v50 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, " = in.texcoord", 14);
        std::to_string(&v104, n);
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v104;
        }

        else
        {
          v51 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v52 = v104.__r_.__value_.__l.__size_;
        }

        v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, v51, v52);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "; ", 2);
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.color = in.color; ", 22);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_PER_EVAL_POINT(UV, a, b, c, d, out) ", 61);
    for (ii = 0; ii != 8; ++ii)
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, ii) == 2)
      {
        v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.texcoord", 12);
        std::to_string(&v105, ii);
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v105;
        }

        else
        {
          v56 = v105.__r_.__value_.__r.__words[0];
        }

        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v105.__r_.__value_.__l.__size_;
        }

        v58 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, v56, v57);
        v59 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, " = mix(mix(a.texcoord", 21);
        std::to_string(&v104, ii);
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v104;
        }

        else
        {
          v60 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = v104.__r_.__value_.__l.__size_;
        }

        v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, v60, v61);
        v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, ", b.texcoord", 12);
        std::to_string(&v103, ii);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v103;
        }

        else
        {
          v64 = v103.__r_.__value_.__r.__words[0];
        }

        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v103.__r_.__value_.__l.__size_;
        }

        v66 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, v64, v65);
        v67 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v66, ", UV.x), mix(c.texcoord", 23);
        std::to_string(&v102, ii);
        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v102;
        }

        else
        {
          v68 = v102.__r_.__value_.__r.__words[0];
        }

        if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v69 = HIBYTE(v102.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v69 = v102.__r_.__value_.__l.__size_;
        }

        v70 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, v68, v69);
        v71 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v70, ", d.texcoord", 12);
        std::to_string(&v101, ii);
        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &v101;
        }

        else
        {
          v72 = v101.__r_.__value_.__r.__words[0];
        }

        if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v73 = v101.__r_.__value_.__l.__size_;
        }

        v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v71, v72, v73);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v74, ", UV.x), UV.y); ", 16);
        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }
      }
    }

    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "out.color = mix(mix(a.color, b.color, UV.x), mix(c.color, d.color, UV.x), UV.y); ", 81);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "#define OSD_USER_VARYING_DECLARE_ATTRIBUTE                   ", 61);
    v75 = 0;
    v76 = 11;
    do
    {
      if (C3DGeometryOsdGetTextureCoordinatesDataType(v14, v75) == 2)
      {
        v77 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "float2 texcoord", 15);
        std::to_string(&v105, v75);
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &v105;
        }

        else
        {
          v78 = v105.__r_.__value_.__r.__words[0];
        }

        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v79 = v105.__r_.__value_.__l.__size_;
        }

        v80 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v77, v78, v79);
        v81 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, " [[attribute(", 13);
        std::to_string(&v104, v76);
        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = &v104;
        }

        else
        {
          v82 = v104.__r_.__value_.__r.__words[0];
        }

        if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v83 = v104.__r_.__value_.__l.__size_;
        }

        v84 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v81, v82, v83);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, ")]]; ", 5);
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        ++v76;
      }

      ++v75;
    }

    while (v75 != 8);
    if (C3DGeometryOsdGetColorDataType(v14) == 2)
    {
      v85 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "float4 color [[attribute(", 25);
      std::to_string(&v105, v76);
      v86 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v105 : v105.__r_.__value_.__r.__words[0];
      v87 = (v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v105.__r_.__value_.__r.__words[2]) : v105.__r_.__value_.__l.__size_;
      v88 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v85, v86, v87);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v88, ")]]; ", 5);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "\n", 1);
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "struct OsdInputVertexType { \n", 29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "    metal::packed_float3 position; \n", 36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v107, "}; \n", 4);
  }

  [v100 setObject:&unk_282E0F678 forKeyedSubscript:@"VERTEX_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F690 forKeyedSubscript:@"PATCH_INDICES_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F6A8 forKeyedSubscript:@"CONTROL_INDICES_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F6C0 forKeyedSubscript:@"OSD_PATCHPARAM_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F6D8 forKeyedSubscript:@"OSD_PERPATCHVERTEXBEZIER_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F6F0 forKeyedSubscript:@"OSD_PERPATCHTESSFACTORS_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F708 forKeyedSubscript:@"OSD_VALENCE_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F720 forKeyedSubscript:@"OSD_QUADOFFSET_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F738 forKeyedSubscript:@"TRANSFORMS_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F750 forKeyedSubscript:@"TESSELLATION_LEVEL_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F6A8 forKeyedSubscript:@"INDICES_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F768 forKeyedSubscript:@"QUAD_TESSFACTORS_INDEX"];
  [v100 setObject:&unk_282E0F6D8 forKeyedSubscript:@"OSD_PERPATCHVERTEXGREGORY_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F780 forKeyedSubscript:@"OSD_PATCH_INDEX_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F798 forKeyedSubscript:@"OSD_DRAWINDIRECT_BUFFER_INDEX"];
  [v100 setObject:&unk_282E0F7B0 forKeyedSubscript:@"OSD_KERNELLIMIT_BUFFER_INDEX"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v99 >> 8) & 1), @"OSD_PATCH_ENABLE_SINGLE_CREASE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), @"OSD_FRACTIONAL_EVEN_SPACING"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v99 >> 16) & 1), @"OSD_FRACTIONAL_ODD_SPACING"}];
  [v100 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_MAX_TESS_LEVEL"];
  [v100 setObject:&unk_282E0F7C8 forKeyedSubscript:@"USE_STAGE_IN"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v99 & 0x10000) == 0), @"USE_PTVS_FACTORS"}];
  [v100 setObject:&unk_282E0F7E0 forKeyedSubscript:@"USE_PTVS_SHARPNESS"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedShort:", WORD2(v99)), @"THREADS_PER_THREADGROUP"}];
  if (NumControlVertices / WORD2(v99) <= 1)
  {
    v89 = 1;
  }

  else
  {
    v89 = NumControlVertices / WORD2(v99);
  }

  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLong:", v89), @"CONTROL_POINTS_PER_THREAD"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInteger:", NumControlVertices), @"VERTEX_CONTROL_POINTS_PER_PATCH"}];
  [v100 setObject:&unk_282E0F7B0 forKeyedSubscript:@"OSD_MAX_VALENCE"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", (v98 + 3)), @"OSD_NUM_ELEMENTS"}];
  [v100 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_ENABLE_BACKPATCH_CULL"];
  [v100 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_USE_PATCH_INDEX_BUFFER"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", (v99 >> 16) & 1), @"OSD_ENABLE_SCREENSPACE_TESSELLATION"}];
  [v100 setObject:&unk_282E0F7C8 forKeyedSubscript:@"OSD_ENABLE_PATCH_CULL"];
  [v100 setObject:&unk_282E0F7E0 forKeyedSubscript:@"NEEDS_BARRIER"];
  if (v96 + 2 * v97)
  {
    [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", (v96 + 2 * v97)), @"OSD_FVAR_WIDTH"}];
    [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedChar:", HasMultipleFaceVaryingChannels), @"OSD_FVAR_USES_MULTIPLE_CHANNELS"}];
    [v100 setObject:&unk_282E0F7F8 forKeyedSubscript:@"OSD_FVAR_DATA_BUFFER_INDEX"];
    [v100 setObject:&unk_282E0F810 forKeyedSubscript:@"OSD_FVAR_INDICES_BUFFER_INDEX"];
    if ((v112[0] - 5) <= 4)
    {
      [v100 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_FVAR_PATCHPARAM_BUFFER_INDEX"];
      [v100 setObject:&unk_282E0F828 forKeyedSubscript:@"OSD_FVAR_PATCH_ARRAY_BUFFER_INDEX"];
    }

    [v100 setObject:&unk_282E0F7F8 forKeyedSubscript:@"OSD_FVAR_CHANNELS_CHANNEL_COUNT_INDEX"];
    [v100 setObject:&unk_282E0F810 forKeyedSubscript:@"OSD_FVAR_CHANNELS_CHANNEL_DESCRIPTORS_INDEX"];
    [v100 setObject:&unk_282E0F648 forKeyedSubscript:@"OSD_FVAR_CHANNELS_PACKED_DATA_BUFFER_INDEX"];
    [v100 setObject:&unk_282E0F828 forKeyedSubscript:@"OSD_FVAR_CHANNELS_PATCH_ARRAY_INDEX_BUFFER_INDEX"];
  }

  [v100 setObject:&unk_282E0F840 forKeyedSubscript:@"OSD_PRIMVAR_INTERPOLATION_MODE_USER_VARYING"];
  [v100 setObject:&unk_282E0F858 forKeyedSubscript:@"OSD_PRIMVAR_INTERPOLATION_MODE_FACE_VARYING"];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetColorDataType(v14)), @"OSD_COLOR_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 0)), @"OSD_TEXCOORD0_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 1)), @"OSD_TEXCOORD1_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 2)), @"OSD_TEXCOORD2_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 3)), @"OSD_TEXCOORD3_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 4)), @"OSD_TEXCOORD4_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 5)), @"OSD_TEXCOORD5_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 6)), @"OSD_TEXCOORD6_INTERPOLATION_MODE"}];
  [v100 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", C3DGeometryOsdGetTextureCoordinatesDataType(v14, 7)), @"OSD_TEXCOORD7_INTERPOLATION_MODE"}];
  [v100 setObject:&unk_282E0F7C8 forKeyedSubscript:@"C3D_OPTIMIZE_OPENSUBDIV_STORAGE"];
  v90 = MEMORY[0x277CCACA8];
  std::stringbuf::str();
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v105;
  }

  else
  {
    v91 = v105.__r_.__value_.__r.__words[0];
  }

  v92 = [v90 stringWithCString:v91 encoding:4];
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  v106[0] = *MEMORY[0x277D82818];
  v93 = *(MEMORY[0x277D82818] + 72);
  *(v106 + *(v106[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v107 = v93;
  v108 = MEMORY[0x277D82878] + 16;
  if (v110 < 0)
  {
    operator delete(v109[7].__locale_);
  }

  v108 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v109);
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](&v111);
  return v92;
}

void sub_21BFF3B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a45, MEMORY[0x277D82818]);
  MEMORY[0x21CF075C0](&a61);
  _Unwind_Resume(a1);
}

uint64_t C3DPatchTypeToOsdPatchType(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) >= 6)
  {
    C3DPatchTypeToOsdPatchType();
  }

  return dword_21C2A1CF0[(a1 - 1)];
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(OpenSubdiv::v3_1_1::Far::PatchDescriptor *this)
{
  v1 = *this - 1;
  if (v1 > 8)
  {
    return -1;
  }

  else
  {
    return word_21C2A1D08[v1];
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:nn200100]((a1 + 3), 24);
  return a1;
}

void sub_21BFF3F88(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](v1);
  _Unwind_Resume(a1);
}

uint64_t C3DSubdivisionOsdGPUContextInvalidateIfNeeded(__C3DGeometry *a1, uint64_t a2)
{
  var6 = a1->var10.var6;
  if (!var6)
  {
    return 0;
  }

  v6 = 0uLL;
  v7 = 0;
  C3DGeometryGetTessellator(a1, a2, &v6);
  if ((v7 & 0x100) != 0)
  {
    var3 = a1->var10.var3;
    if (var3)
    {
      LODWORD(var3) = a1->var10.var4 != 0;
    }
  }

  else
  {
    LODWORD(var3) = 0;
  }

  if (*(var6 + 3) && var6[4] == ((BYTE1(v7) >> 1) & 1) && var6[2] == a1->var10.var1 && var3 == var6[3] && *var6 == a1->var10.var0 && var6[7] == a1->var10.var2.var1 && var6[8] == a1->var10.var2.var2 && *(var6 + 2) == (a1->var10.var4 ^ a1->var10.var3))
  {
    return 0;
  }

  C3DSubdivisionOsdGPUContextDestroy(a1);
  return 1;
}

void C3DSubdivisionOsdGPUContextDestroy(__C3DGeometry *a1)
{
  var6 = a1->var10.var6;
  if (var6)
  {
    v3 = var6[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(var6);
    a1->var10.var6 = 0;
  }
}

char *C3DGeometryOpenSubdivGetGPUContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  C3DSubdivInitializeIfNeeded(a1, a2);
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  if (v9)
  {
    if (!v8)
    {
      return v8;
    }

    v37 = a3;
    v10 = *(v8 + 3) == 0;
  }

  else
  {
    if (!*(a1 + 136))
    {
      v11 = scn_default_log(v6, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DGeometryOpenSubdivGetGPUContext_cold_1(v11, v7, v12, v13, v14, v15, v16, v17);
      }
    }

    v39 = 0uLL;
    v40 = 0;
    C3DGeometryGetTessellator(a1, v7, &v39);
    v18 = (v40 & 0x100) != 0 && *(a1 + 144) && *(a1 + 152) != 0;
    v19 = *(a1 + 136);
    v20 = *(a1 + 137);
    v21 = (BYTE1(v40) >> 1) & 1;
    v37 = a3;
    HasFeatures = C3DEngineContextHasFeatures(a3, 64);
    v23 = *(a1 + 139);
    v24 = *(a1 + 152) ^ *(a1 + 144);
    v6 = malloc_type_malloc(0x20uLL, 0x10200404C916D5DuLL);
    v8 = v6;
    *(a1 + 168) = v6;
    *v6 = v19;
    v6[1] = 0;
    v6[2] = v20;
    v6[3] = v18;
    v6[4] = v21;
    v6[5] = HasFeatures;
    v6[6] = 0;
    *(v6 + 7) = v23;
    *(v6 + 3) = 0;
    *(v6 + 9) = 0;
    v10 = 1;
    *(v6 + 2) = v24;
    *(v6 + 3) = 0;
  }

  if (v10 && v4 != 0)
  {
    if (!v37)
    {
      v26 = scn_default_log(v6, v7);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextGetStats_cold_1(v26, v7, v27, v28, v29, v30, v31, v32);
      }
    }

    RenderContext = C3DEngineContextGetRenderContext(v37, v7);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __C3DGeometryOpenSubdivGetGPUContext_block_invoke;
    v38[3] = &unk_2782FDEE8;
    v38[4] = RenderContext;
    v38[5] = a1;
    v38[6] = v8;
    v34 = [(SCNMTLRenderContext *)RenderContext resourceManager];
    v35 = [(SCNMTLRenderContext *)RenderContext commandQueue];
    *(v8 + 3) = C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(a1, v37, v8, v34, v35, v38);
  }

  return v8;
}

void __C3DGeometryOpenSubdivGetGPUContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [-[SCNMTLRenderContext commandBufferStatusMonitor](*(a1 + 32)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  v5 = scn_default_log(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __C3DGeometryOpenSubdivGetGPUContext_block_invoke_cold_1(a1, v5);
  }

  v6 = *(*(a1 + 48) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 48) + 24) = 0;
  }
}

uint64_t C3DSubdivisionOsdGPURuntimeDataCreateWithGeometry(__C3DGeometry *a1, uint64_t a2, _BYTE *a3, SCNMTLResourceManager *a4, void *a5, uint64_t a6)
{
  v44[5] = *MEMORY[0x277D85DE8];
  C3DEntityGetName(a1, a2);
  if (!a2 || (RenderCallbacks = C3DEngineContextGetRenderCallbacks(a2, v8), !*(RenderCallbacks + 24)) || (v10 = RenderCallbacks, Hash = C3DSubdivisionOsdGPURuntimeDataGetHash(a1), (v12 = (*(v10 + 24))(a2, Hash)) == 0) || (v13 = C3DSubdivisionOsdGPURuntimeDataCreateWithData(v12, v8, a3, a4, a5, a6)) == 0)
  {
    inited = C3DGeometryInitSubdivTopologyInfoIfNeeded(a1, v8);
    if (inited)
    {
      if (!a5)
      {
        v16 = scn_default_log(inited, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivisionOsdGPURuntimeDataCreateWithData(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      os_variant_has_internal_diagnostics();
      v24 = [a5 commandBuffer];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke;
      v44[3] = &unk_2782FDF80;
      v44[4] = a6;
      [v24 addCompletedHandler:v44];
      v25 = [v24 computeCommandEncoder];
      v43.var0 = [a5 device];
      v43.var1 = a5;
      v43.var2 = v24;
      v43.var3 = v25;
      Mesh = C3DGeometryGetMesh(a1, v26);
      C3DGeometrySubdivTopologyInfoInitCreasesAndCorners(&a1->var10.var0, Mesh);
      C3DSubdivGetGPUPrimvarDataTypeHash(&a1->var10, Mesh);
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
      C3DSubdivInitGPUPrimvarDescriptor(&v34, &a1->var10, Mesh);
      C3DSubdivCreateRefiner(&a1->var10, v28);
    }

    return 0;
  }

  return v13;
}

void sub_21BFF5318(_Unwind_Exception *a1)
{
  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh((v1 + 304));
  C3DSubdivGPUPrimvarDescriptor::~C3DSubdivGPUPrimvarDescriptor((v1 + 416));
  _Unwind_Resume(a1);
}

uint64_t C3DGeometryOpenSubdivGetGPUPrimvarDataTypeHash(uint64_t a1)
{
  v1 = *(*(a1 + 168) + 24);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

void C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int32 a4)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4[1].n128_u32[0];
    if (!v5 || v5 != a4)
    {
      v4[1].n128_u32[0] = a4;
      v31 = v4[1].n128_u32[3];
      if (!v4[22].n128_u64[1])
      {
        v10 = scn_default_log(a1, a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          C3DSubdivisionOsdGPUSynchroniseCoarseMeshForDeformers_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
        }
      }

      v18 = [-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](v4[22].n128_i64[1]) threadExecutionWidth];
      v19 = [(SCNMTLRenderContext *)a3 commandQueue];
      v20 = [(SCNMTLRenderContext *)a3 resourceComputeEncoder];
      bzero(v20, 0x678uLL);
      v21 = v20[207];
      [v21 setComputePipelineState:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](v4[22].n128_i64[1])];
      IsVarying = C3DGeometryOsdGetColorIsVarying(v4[1].n128_u32[2]);
      VaryingTextureCoordinatesCount = C3DGeometryOsdGetVaryingTextureCoordinatesCount(v4[1].n128_u32[2]);
      if (IsVarying)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v30 = ((v24 + 2 * VaryingTextureCoordinatesCount) & 0xFE) + 3;
      [v21 setBuffer:a2 offset:0 atIndex:0];
      [v21 setBuffer:v4[4].n128_u64[0] offset:0 atIndex:1];
      [v21 setBuffer:v4[22].n128_u64[0] offset:0 atIndex:2];
      [v21 setBytes:&v30 length:4 atIndex:3];
      [v21 setBytes:&v31 length:4 atIndex:4];
      if (*(a1 + 5) == 1)
      {
        v25 = v31;
        v26 = vdupq_n_s64(1uLL);
        v28 = v18;
        v29 = v26;
        [v21 dispatchThreads:&v25 threadsPerThreadgroup:&v28];
      }

      else
      {
        v25 = (v18 + v31 - 1) / v18;
        v26 = vdupq_n_s64(1uLL);
        v28 = v18;
        v29 = v26;
        [v21 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v28];
      }

      v25 = [v19 device];
      v26 = v19;
      v27 = v21;
      __C3DSubdivisionOsdGPURefine(v4 + 9, &v25);
    }
  }
}

BOOL C3DSubdivisionOsdGPURequiresTessellationFactorsInitialization(uint64_t a1)
{
  result = 0;
  if (*(a1 + 2) == 1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (!*(v1 + 20))
      {
        return 1;
      }
    }
  }

  return result;
}

void *C3DSubdivisionOsdGPUComputeTessellationFactors(void *result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  if (*(result + 2) == 1)
  {
    v49 = v5;
    v50 = v6;
    v7 = result;
    v8 = result[3];
    if (v8)
    {
      v9 = *(v8 + 20);
      if (!v9 || v9 != a4)
      {
        *(v8 + 20) = a4;
        LOBYTE(a5) = *(result + 1);
        v48 = LODWORD(a5);
        v12 = [(SCNMTLRenderContext *)a2 resourceComputeEncoder];
        bzero(v12, 0x678uLL);
        v13 = v12[207];
        [v13 setBuffer:*(v8 + 64) offset:*(v8 + 72) atIndex:5];
        [v13 setBuffer:*(v8 + 48) offset:0 atIndex:6];
        [v13 setBuffer:*(v8 + 56) offset:0 atIndex:8];
        [v13 setBuffer:*(v8 + 264) offset:0 atIndex:11];
        [v13 setBuffer:*(v8 + 232) offset:0 atIndex:19];
        [v13 setBytes:&v48 length:4 atIndex:13];
        result = [v13 setBytes:a3 length:192 atIndex:22];
        if (*(v7 + 6) == 2)
        {
          [v13 setBuffer:*(v8 + 104) offset:0 atIndex:10];
          result = [v13 setBuffer:*(v8 + 96) offset:0 atIndex:9];
        }

        if (*(v8 + 32))
        {
          v14 = 0;
          v15 = 0;
          v35 = v8 + 272;
          v34 = vdupq_n_s64(1uLL);
          v36 = v8;
          do
          {
            v16 = (*(v8 + 40) + v14);
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[2];
            v20 = v16[3];
            v47 = v17;
            if ((v17 - 6) <= 2)
            {
              [v13 setBuffer:*(v8 + 248) offset:0 atIndex:7];
            }

            NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v47);
            v22 = NumControlVertices;
            if (v17 == 9)
            {
              v23 = 4;
            }

            else
            {
              v23 = NumControlVertices;
            }

            v24 = v23 >> 5;
            if (v24 <= 1)
            {
              v24 = 1;
            }

            v37 = v24;
            [v13 setBufferOffset:12 * v20 atIndex:{8, *&v34}];
            [v13 setBufferOffset:4 * v19 atIndex:6];
            v25 = [v13 setComputePipelineState:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](*(v35 + 8 * v17))];
            v27 = 0;
            if (v17 > 4)
            {
              if (v17 <= 6)
              {
                if (v17 != 5)
                {
                  v27 = v18 * v22;
                  [v13 setBufferOffset:*(v36 + 240) atIndex:19];
                  v29 = *(v36 + 256);
                  v30 = v13;
                  v31 = 7;
                  goto LABEL_36;
                }

LABEL_30:
                v32 = scn_default_log(v25, v26);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v45, v46);
                }

LABEL_32:
                v27 = 0;
                goto LABEL_37;
              }

              switch(v17)
              {
                case 7:
                  v27 = 4 * v18;
                  [v13 setBufferOffset:*(v36 + 242) atIndex:19];
                  [v13 setBufferOffset:*(v36 + 258) atIndex:7];
                  v33 = *(v36 + 112);
LABEL_35:
                  v29 = 4 * v33;
                  v30 = v13;
                  v31 = 10;
                  goto LABEL_36;
                case 8:
                  v27 = 4 * v18;
                  [v13 setBufferOffset:*(v36 + 244) atIndex:19];
                  [v13 setBufferOffset:*(v36 + 260) atIndex:7];
                  v33 = *(v36 + 116);
                  goto LABEL_35;
                case 9:
                  v27 = 4 * v18;
                  v29 = *(v36 + 246);
                  v30 = v13;
                  v31 = 19;
LABEL_36:
                  [v30 setBufferOffset:v29 atIndex:v31];
                  break;
              }
            }

            else
            {
              if (v17 < 3)
              {
                goto LABEL_30;
              }

              if ((v17 - 3) < 2)
              {
                v28 = scn_default_log(v25, v26);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v43, v44);
                }

                goto LABEL_32;
              }
            }

LABEL_37:
            v42 = v27;
            [v13 setBytes:&v42 length:4 atIndex:12];
            if (*(v7 + 5) == 1)
            {
              v40 = v18 * v23;
              v41 = v34;
              v38 = xmmword_21C2A1CE0;
              v39 = 1;
              result = [v13 dispatchThreads:&v40 threadsPerThreadgroup:&v38];
            }

            else
            {
              v40 = ((v18 * v23 / v37) + 31) >> 5;
              v41 = vdupq_n_s64(1uLL);
              v38 = xmmword_21C2A1CE0;
              v39 = 1;
              result = [v13 dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
            }

            v8 = v36;
            ++v15;
            v14 += 16;
          }

          while (v15 < *(v36 + 32));
        }
      }
    }
  }

  return result;
}

void C3DSubdivisionOsdGPUDraw(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
    return;
  }

  v11 = __C3DSubdivisionOsdGPUHasPatchOfType(*(a1 + 24), a3);
  if (!v11)
  {
    v13 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPUDraw_cold_1(v13);
    }
  }

  v14 = C3DPatchTypeToOsdPatchType(a3, v12);
  v15 = *(v5 + 88);
  v65 = v15;
  if (v15)
  {
    v16 = -1227133513 * ((v15[1] - *v15) >> 3);
  }

  else
  {
    v16 = 0;
  }

  v64 = v16;
  v76 = v16;
  v17 = [(SCNMTLRenderContext *)a2 renderEncoder];
  LODWORD(v18) = 1.0;
  v19 = [*(v17 + 3392) setTessellationFactorScale:v18];
  v22 = *(v5 + 64);
  v23 = *(v5 + 48);
  if (!v22)
  {
    v24 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPUDraw_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v62 = v14 - 5;
  LOBYTE(v21) = *(a1 + 1);
  v75 = v21;
  SCNMTLRenderCommandEncoder::setVertexBuffer(v17, v22, 0, 5);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v17, v23, 0, 6);
  SCNMTLRenderCommandEncoder::setVertexBytes(v17, &v75, 4uLL, 13);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 264), 0, 11);
  SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 56), 0, 8);
  v32 = v65;
  if (v65)
  {
    if (v64 >= 2)
    {
      SCNMTLRenderCommandEncoder::setVertexBytes(v17, &v76, 4uLL, 14);
      SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 128), 0, 15);
      v33 = (v5 + 136);
LABEL_17:
      SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *v33, 0, 16);
      goto LABEL_18;
    }

    v34 = *(v5 + 88);
    v35 = *v34;
    if (v34[1] == *v34)
    {
LABEL_71:
      std::string::__throw_length_error[abi:nn200100]();
    }

    SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v35 + 32), *(v35 + 40), 14);
    SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v35 + 16), 0, 15);
    if (v62 <= 4)
    {
      v33 = (v35 + 24);
      goto LABEL_17;
    }
  }

LABEL_18:
  if (*(a1 + 6) == 2)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 104), 0, 10);
    SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 96), 0, 9);
  }

  v74 = 0;
  v36 = *(v5 + 32);
  if (v36)
  {
    LODWORD(v37) = 0;
    v38 = 0;
    v39 = v14 - 6;
    v63 = a4;
    while (1)
    {
      v40 = (*(v5 + 40) + 16 * v38);
      v73 = *v40;
      if (v73 == v14)
      {
        break;
      }

LABEL_61:
      v37 = (v37 + 1);
      v74 = v37;
      v38 = v37;
      if (v36 <= v37)
      {
        return;
      }
    }

    if (v39 <= 2)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v17, *(v5 + 248), 0, 7);
    }

    *(v17 + 216) = 12 * v40[3];
    [*(v17 + 3392) setVertexBufferOffset:? atIndex:?];
    *(v17 + 184) = 4 * v40[2];
    v41 = [*(v17 + 3392) setVertexBufferOffset:? atIndex:?];
    if (v32)
    {
      if (v64 >= 2)
      {
        v43 = &v74;
        v44 = v17;
        v45 = 4;
LABEL_31:
        v41 = SCNMTLRenderCommandEncoder::setVertexBytes(v44, v43, v45, 17);
        goto LABEL_32;
      }

      v46 = **(v5 + 88);
      if (*(*(v5 + 88) + 8) == v46)
      {
        goto LABEL_71;
      }

      v47 = *(v46 + 8) + 16 * v74;
      *(v17 + 328) = 4 * *(v47 + 8);
      v41 = [*(v17 + 3392) setVertexBufferOffset:? atIndex:?];
      if (v62 <= 4)
      {
        *(v17 + 344) = 12 * *(v47 + 12);
        [*(v17 + 3392) setVertexBufferOffset:? atIndex:?];
        v44 = v17;
        v43 = v47;
        v45 = 16;
        goto LABEL_31;
      }
    }

LABEL_32:
    if (v14 > 9)
    {
      goto LABEL_40;
    }

    if (((1 << v14) & 0x27) != 0)
    {
      v48 = scn_default_log(v41, v42);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v71, v72);
      }
    }

    else
    {
      if (((1 << v14) & 0x1C0) != 0)
      {
        *(v17 + 200) = *(v5 + 256 + 2 * v39);
        [*(v17 + 3392) setVertexBufferOffset:? atIndex:?];
      }

      else if (v14 != 9)
      {
        goto LABEL_40;
      }

      [*(v17 + 3392) setTessellationFactorBuffer:*(v5 + 232) offset:*(v5 + 240 + 2 * v39) instanceStride:0];
    }

LABEL_40:
    NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v73);
    v50 = *(v5 + 120);
    if (!v50)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      operator new();
    }

    v51 = *v50;
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(v5 + 120) + 8) - v51) >> 3) <= v63)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v52 = *(v51 + 24 * v63);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v51 + 24 * v63 + 8) - v52) >> 3) <= v74)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v53 = std::vector<CFRange>::vector[abi:nn200100](&v68, (v52 + 24 * v74));
    if (v14 > 4)
    {
      if ((v14 - 6) < 4)
      {
        v55 = v68;
        v57 = v69;
        if (v68 == v69)
        {
          goto LABEL_58;
        }

        do
        {
          v58 = *v55;
          v59 = v55[1];
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v17, v54);
          SCNMTLRenderCommandEncoder::applyChangedStates(v17);
          [*(v17 + 3392) drawPatches:NumControlVertices patchStart:v58 patchCount:v59 patchIndexBuffer:0 patchIndexBufferOffset:0 instanceCount:*(v17 + 64) * a5 baseInstance:0];
          v55 += 2;
        }

        while (v55 != v57);
LABEL_57:
        v55 = v68;
        v32 = v65;
LABEL_58:
        if (!v55)
        {
LABEL_60:
          LODWORD(v37) = v74;
          v36 = *(v5 + 32);
          goto LABEL_61;
        }

LABEL_59:
        v69 = v55;
        operator delete(v55);
        goto LABEL_60;
      }
    }

    else if (v14 >= 3)
    {
      if (v14 == 3)
      {
        v55 = v68;
        v56 = v69;
        if (v68 != v69)
        {
          do
          {
            SCNMTLRenderCommandEncoder::drawPrimitives(v17, MTLPrimitiveTypeTriangle, 6 * *v55, 6 * v55[1], a5, 0);
            v55 += 2;
          }

          while (v55 != v56);
          goto LABEL_57;
        }
      }

      else
      {
        v55 = v68;
        v61 = v69;
        if (v68 != v69)
        {
          do
          {
            SCNMTLRenderCommandEncoder::drawPrimitives(v17, MTLPrimitiveTypeTriangle, 3 * *v55, 3 * v55[1], a5, 0);
            v55 += 2;
          }

          while (v55 != v61);
          goto LABEL_57;
        }
      }

      v32 = v65;
      if (!v55)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v60 = scn_default_log(v53, v54);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      __C3DSubdivisionOsdGPURuntimeDataInitializePerPatchComputePipelines(&v66, v67);
    }

    goto LABEL_57;
  }
}

void sub_21BFF60E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MTLBuffer *C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData(__C3DGeometry *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1->var10.var6 + 3);
  EdgeCreasesSource = C3DGeometryOsdGetEdgeCreasesSource(a1);
  result = C3DGeometryOsdGetEdgeCreasesElement(a1);
  if (!EdgeCreasesSource || !result)
  {
    return result;
  }

  result = [(SCNMTLMesh *)a2 bufferForAttribute:?];
  v12 = result;
  if (*(v8 + 392))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v44 = result;
    Mesh = C3DGeometryGetMesh(a1, v11);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    *(v8 + 368) = 0;
    ElementsCount = C3DMeshGetElementsCount(Mesh, v15);
    if (ElementsCount >= 1)
    {
      v17 = ElementsCount;
      for (i = 0; i != v17; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, ChannelForSourceWithSemanticAtIndex, &v49);
        v48[0] = v49;
        v48[1] = v50;
        v48[2] = v51;
        v48[3] = v52;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke;
        v47[3] = &__block_descriptor_40_e19_v32__0I8_I12I20_B24l;
        v47[4] = v8;
        C3DIndicesContentEnumeratePrimitives(v48, v47, v51);
      }
    }

    v20 = *(v8 + 368) << 6;
    v21 = malloc_type_malloc(v20, 0x1000040E0EAB150uLL);
    if (C3DGeometryGetEffectiveDataKindForRendering(a1, v22))
    {
      C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_2();
    }

    v23 = 8 * *(v8 + 368);
    v24 = malloc_type_malloc(v23, 0x100004052888210uLL);
    *&v49 = 0;
    *(&v49 + 1) = &v49;
    *&v50 = 0x2020000000;
    DWORD2(v50) = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke_2;
    v46[3] = &unk_2782FDF30;
    v46[4] = &v49;
    v46[5] = v21;
    v46[6] = v24;
    C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(a1, v46);
    if (*(v8 + 368) != *(*(&v49 + 1) + 24))
    {
      __assert_rtn("C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData", "C3DGeometryOpenSubdivSupport_Metal.mm", 3656, "currentEdgeIndex == osdRuntimeData->authoringData.creaseData.edgeCount");
    }

    v25 = [(MTLBuffer *)v44 device];
    *(v8 + 376) = [v25 newBufferWithBytes:v21 length:v20 options:0];
    *(v8 + 384) = [v25 newBufferWithBytes:v24 length:v23 options:0];
    free(v21);
    free(v24);
    v26 = objc_alloc_init(MEMORY[0x277CD7090]);
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "attributes")];
    [objc_msgSend(objc_msgSend(v26 "layouts")];
    [objc_msgSend(objc_msgSend(v26 "layouts")];
    [objc_msgSend(objc_msgSend(v26 "layouts")];
    [objc_msgSend(objc_msgSend(v26 "layouts")];
    *(v8 + 392) = v26;
    _Block_object_dispose(&v49, 8);
    v12 = v44;
  }

  v27 = [objc_msgSend(-[SCNMTLResourceManager commandQueue](a2) "attributes")];
  v28 = [objc_msgSend(*(v8 + 392) "attributes")];
  v29 = [v27 format];
  v31 = v29 - 26;
  if (v29 - 26) < 6 && ((0x33u >> v31))
  {
    v32 = qword_21C2A1D20[v31];
  }

  else
  {
    v33 = scn_default_log(v29, v30);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_cold_1(v27);
    }

    v32 = 0;
  }

  if (!*(v8 + 400))
  {
    LODWORD(v49) = v32;
    v34 = objc_alloc_init(MEMORY[0x277CD6D70]);
    [v34 setConstantValue:&v49 type:33 withName:@"src_type_size"];
    v35 = [(SCNMTLRenderContext *)a3 resourceManager];
    v36 = [v35 computePipelineStateForKernel:@"scn_osd_synchronize_coarse_positions_authoring" constants:v34 constantsHash:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", v49)}];

    *(v8 + 400) = v36;
  }

  v37 = [v27 offset];
  LODWORD(v49) = [objc_msgSend(objc_msgSend(-[SCNMTLResourceManager commandQueue](a2) "layouts")] / v32;
  v38 = [v28 offset];
  LODWORD(v48[0]) = 8;
  v45 = 2 * *(v8 + 368);
  v39 = [(SCNMTLRenderContext *)a3 resourceComputeEncoder];
  bzero(v39, 0x678uLL);
  if (v12)
  {
    v39->_buffers[0] = v12;
  }

  else if (!v37)
  {
    goto LABEL_24;
  }

  v39->_offsets[0] = v37;
  v39->_buffersToBind[0] |= 1uLL;
LABEL_24:
  v40 = *(v8 + 376);
  if (v40)
  {
    v39->_buffers[1] = v40;
LABEL_27:
    v39->_offsets[1] = v38;
    v39->_buffersToBind[0] |= 2uLL;
    goto LABEL_28;
  }

  if (v38)
  {
    goto LABEL_27;
  }

LABEL_28:
  v41 = *(v8 + 384);
  if (v41)
  {
    v39->_buffers[2] = v41;
    v39->_offsets[2] = 0;
    v39->_buffersToBind[0] |= 4uLL;
  }

  SCNMTLComputeCommandEncoder::setBytes(v39, &v49, 4uLL, 3uLL);
  SCNMTLComputeCommandEncoder::setBytes(v39, v48, 4uLL, 4uLL);
  SCNMTLComputeCommandEncoder::setBytes(v39, &v45, 4uLL, 5uLL);
  v42 = [(SCNMTLOpenSubdivComputeEvaluator *)*(v8 + 400) computeEvaluator];
  v43 = v45;
  if (v39->_computePipelineState != v42)
  {
    v39->_computePipelineState = v42;
    [(MTLComputeCommandEncoder *)v39->_encoder setComputePipelineState:v42];
  }

  return SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v39, v43);
}

unint64_t __C3DGeometryOpenSubdivGPUUpdateAuthoringEnvironmentData_block_invoke_2(void *a1, int a2, int a3, float a4)
{
  result = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a4);
  v8 = a1[5] + 32 * (2 * *(*(a1[4] + 8) + 24));
  *(v8 + 16) = result;
  *(v8 + 24) = v9;
  v10 = a1[5] + 32 * ((2 * *(*(a1[4] + 8) + 24)) | 1u);
  *(v10 + 16) = result;
  *(v10 + 24) = v9;
  v11 = a1[6];
  *(v11 + 4 * (2 * *(*(a1[4] + 8) + 24))) = a2;
  *(v11 + 4 * ((2 * (*(*(a1[4] + 8) + 24))++) | 1u)) = a3;
  return result;
}

void C3DGeometryOpenSubdivGPUDrawAuthoringEnvironment(uint64_t result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v6 = *(*(a2 + 168) + 24);
  v7 = *(v6 + 392);
  if (v7)
  {
    v9 = v6 + 368;
    v8 = *(v6 + 368);
    v11[0] = *(v9 + 8);
    v11[1] = v11[0];
    v10 = 0u;
    C3DAuthoringEnvironmentDrawPrimitives(result, 1, 2 * v8, v11, &v10, 18, 2, v7, a3, a4, a5, a6, 0, 0);
  }
}

__CFString *C3DGetPatchTypeDescription(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 3;
  if ((a1 - 3) >= 7 || ((0x7Bu >> v2) & 1) == 0)
  {
    C3DGetPatchTypeDescription();
  }

  return off_2782FE038[v2];
}

void ___ZL54_C3DSubdivisionOsdGPURuntimeDataCFCopyDebugDescriptionPKv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*a2 length];
  v5 = [*(a2 + 8) length];
  v6 = [*(a2 + 16) length];
  v7 = [*(a2 + 24) length];
  v8 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v5 + v4 + v6 + v7;
  CFStringAppendFormat(v8, 0, @"\n  - Vertex stencil table (%d stencils)", *(a2 + 32));
  v9 = *(a1 + 40);
  v10 = *a2;
  v11 = C3DGetByteCountDescriptionFromSize(v4);
  CFStringAppendFormat(v9, 0, @"\n    - Sizes buffer: %p (%@)", v10, v11);
  v12 = *(a1 + 40);
  v13 = *(a2 + 8);
  v14 = C3DGetByteCountDescriptionFromSize(v5);
  CFStringAppendFormat(v12, 0, @"\n    - Offsets buffer: %p (%@)", v13, v14);
  v15 = *(a1 + 40);
  v16 = *(a2 + 16);
  v17 = C3DGetByteCountDescriptionFromSize(v6);
  CFStringAppendFormat(v15, 0, @"\n    - Indices buffer: %p (%@)", v16, v17);
  v18 = *(a1 + 40);
  v19 = *(a2 + 24);
  v20 = C3DGetByteCountDescriptionFromSize(v7);
  CFStringAppendFormat(v18, 0, @"\n    - Weights buffer: %p (%@)", v19, v20);
  v21 = [*(a2 + 40) length];
  v22 = [*(a2 + 40) length];
  v23 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) += v22 + v21;
  CFStringAppend(v23, @"\n  - Vertex evalutor input");
  v24 = *(a1 + 40);
  v25 = *(a2 + 40);
  v26 = *(a2 + 56);
  v27 = *(a2 + 60);
  v28 = *(a2 + 64);
  v29 = C3DGetByteCountDescriptionFromSize(v21);
  CFStringAppendFormat(v24, 0, @"\n    - Src buffer: [offset:%d length:%d stride:%d] %p (%@)", v26, v27, v28, v25, v29);
  v30 = *(a1 + 40);
  v31 = *(a2 + 48);
  v32 = *(a2 + 68);
  v33 = *(a2 + 72);
  v34 = *(a2 + 76);
  v35 = C3DGetByteCountDescriptionFromSize(v22);
  CFStringAppendFormat(v30, 0, @"\n    - Dst buffer: [offset:%d length:%d stride:%d] %p (%@)", v32, v33, v34, v31, v35);
}

uint64_t *std::vector<std::vector<CFRange>>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<CFRange>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::vector<std::vector<CFRange>>>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

uint64_t *std::vector<std::vector<CFRange>>::__init_with_size[abi:nn200100]<std::vector<CFRange>*,std::vector<CFRange>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<CFRange>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<CFRange>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *std::vector<C3DSubdivisionOsdGPURefiner>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<C3DSubdivisionOsdGPURefiner>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<C3DSubdivisionOsdGPURefiner>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPURefiner>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPURefiner>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

unint64_t C3DPatchTypeFromOsdPatchType(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 3;
  if ((a1 - 3) >= 7 || ((0x7Bu >> v2) & 1) == 0)
  {
    C3DPatchTypeFromOsdPatchType();
  }

  return (0x6050403010201uLL >> (8 * v2)) & 7;
}

id ___ZL42__C3DSubdivisionGetOpenSubdivComputeSourceP21SCNMTLResourceManager_block_invoke()
{
  __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource = C3DGetTextResourceWithNameAllowingHotReload(@"C3D-OpenSubdiv_compute.metal");
  v0 = [__C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource stringByReplacingOccurrencesOfString:@"#import scn_metal" withString:C3DGetTextResourceWithNameAllowingHotReload(@"scn_metal")];
  __C3DSubdivisionGetOpenSubdivComputeSource(SCNMTLResourceManager *)::kC3DOpenSubdivComputeSource = v0;

  return v0;
}

void __C3DSubdivisionOsdGPURefinerDestroy(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void __C3DSubdivisionOsdGPUPatchTableDestroy(uint64_t a1)
{
  free(*(a1 + 8));

  v2 = *(a1 + 32);
}

void std::vector<std::vector<std::vector<CFRange>>>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void ___ZL48C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quadsv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(3);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Quads(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL52C3DSubdivisionOsdGPUGetPerPatchTypeSources_Trianglesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(4);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Triangles(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF71E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL50C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regularv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(6);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Regular(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL50C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregoryv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(7);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF730C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundaryv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(8);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBoundary(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF73A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL55C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasisv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(9);
  if (v3 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  C3DSubdivisionOsdGPUGetPerPatchTypeSources_GregoryBasis(void)::kSources = [v0 initWithCString:p_p encoding:4];
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_21BFF7434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t C3DSubdivisionOsdGPURuntimeDataGetHash(__C3DGeometry *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&c);
  Mesh = C3DGeometryGetMesh(a1, v2);
  v5 = Mesh;
  if (Mesh)
  {
    ElementsCount = C3DMeshGetElementsCount(Mesh, v4);
    if (ElementsCount >= 1)
    {
      v7 = ElementsCount;
      for (i = 0; i != v7; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v5, i, 0);
        Type = C3DMeshElementGetType(ElementAtIndex, v10);
        if (C3DMeshElementTypeDefinesSurface(Type))
        {
          v32[0] = 0;
          Indexes = C3DMeshElementGetIndexes(ElementAtIndex, v32);
          if (Indexes)
          {
            v13 = Indexes;
            BytePtr = CFDataGetBytePtr(Indexes);
            Length = CFDataGetLength(v13);
            CC_SHA256_Update(&c, BytePtr, Length);
          }

          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke;
          v30[3] = &__block_descriptor_40_e13_v24__0___qq_8l;
          v30[4] = &c;
          C3DMeshElementEnumeratePrimitiveRanges(ElementAtIndex, v30);
        }
      }
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke_2;
  v29[3] = &__block_descriptor_40_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
  v29[4] = &c;
  C3DMeshApplySources(v5, 0, v29);
  CC_SHA256_Final(md, &c);
  v17 = 0;
  v18 = v32;
  v19.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v19.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v20.i64[0] = 0x3737373737373737;
  v20.i64[1] = 0x3737373737373737;
  v21.i64[0] = 0x3030303030303030;
  v21.i64[1] = 0x3030303030303030;
  v22.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v22.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v23.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v23.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v24 = *&md[v17];
    v25.i64[0] = 0x3737373737373737;
    v25.i64[1] = 0x3737373737373737;
    v26.i64[0] = 0x3030303030303030;
    v26.i64[1] = 0x3030303030303030;
    v36.val[0] = vbslq_s8(vcgtq_u8(v19, v24), vsraq_n_u8(v26, v24, 4uLL), vsraq_n_u8(v25, v24, 4uLL));
    v27 = vandq_s8(v24, v22);
    v36.val[1] = vbslq_s8(vcgtq_u8(v23, v27), vorrq_s8(v27, v21), vaddq_s8(v27, v20));
    vst2q_s8(v18, v36);
    v18 += 32;
    v17 += 16;
  }

  while (v17 != 32);
  v33 = 0;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", C3DGeometryGetName(a1, v16), v32];
}

uint64_t (**___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke(uint64_t a1, void *a2))(void *, void *, void)
{
  result = [a2 status];
  if (result != 4)
  {
    v6 = scn_default_log(result, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_cold_1(a2);
    }

    result = *(a1 + 32);
    if (result)
    {
      return result[2](result, a2, 0);
    }
  }

  return result;
}

void std::vector<float>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

CFTypeRef ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537(void *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[9];
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:0];
  v74 = v5;
  if (!v2)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DSubdivisionOsdGPURuntimeDataCreateWithData(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v70 = a1;
  v69 = v4;
  v76 = 0;
  v77 = &v76;
  v78 = 0x5012000000;
  v79 = __Block_byref_object_copy__5;
  v80 = __Block_byref_object_dispose__5;
  v81 = "c";
  v82 = 0u;
  v83 = 0u;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = ___ZL51__C3DSubdivisionOsdGPURuntimeDataCreateArchivedDataP33__C3DSubdivisionOsdGPURuntimeDataPK39C3DSubdivisionOsdGPUSetupAdditionalDataPU26objcproto15MTLCommandQueue11objc_objectPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v75[3] = &unk_2782FDFF0;
  v75[4] = v2;
  v75[5] = &v76;
  [v74 encodeInt32:3 forKey:@"version"];
  [v74 encodeBytes:v3 + 24 length:4 forKey:@"primvarDataTypeHash"];
  [v74 encodeInt32:*(v3 + 28) forKey:@"coarseVertexCount"];
  __C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(v74, @"vertexPatchTable", v3 + 32, v75);
  v15 = *(v3 + 88);
  if (v15)
  {
    v16 = (v15[1] - *v15) >> 3;
    v17 = 0x6DB6DB6DB6DB6DB7 * v16;
    if (-1227133513 * v16)
    {
      [v74 encodeInt32:v17 forKey:{objc_msgSend(@"fvarPatchTables", "stringByAppendingString:", @".count"}];
      v18 = 0;
      v19 = 0;
      do
      {
        if (0x6DB6DB6DB6DB6DB7 * ((v15[1] - *v15) >> 3) <= v19)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        __C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(v74, [@"fvarPatchTables" stringByAppendingFormat:@".[%d]", v19++], *v15 + v18, v75);
        v18 += 56;
      }

      while (v17 != v19);
    }
  }

  if (*(v3 + 96) && *(v3 + 104))
  {
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v74, [@"legacyGregoryPatchTable" stringByAppendingString:@".vertexValenceBuffer"], *(v3 + 96), v75, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v74, [@"legacyGregoryPatchTable" stringByAppendingString:@".quadOffsetsBuffer"], *(v3 + 104), v75, 0);
    [v74 encodeInt32:*(v3 + 112) forKey:{objc_msgSend(@"legacyGregoryPatchTable", "stringByAppendingString:", @".quadOffsetsBaseGregory"}];
    [v74 encodeInt32:*(v3 + 116) forKey:{objc_msgSend(@"legacyGregoryPatchTable", "stringByAppendingString:", @".quadOffsetsBaseGregoryBoundary"}];
  }

  v20 = *(v3 + 120);
  if (v20)
  {
    v22 = *v20;
    v21 = v20[1];
    v24 = **v20;
    v23 = (*v20)[1];
    [@"patchRangesTable" stringByAppendingString:@".elementCount"];
    v72 = -1431655765 * ((v21 - v22) >> 3);
    [v74 encodeInt32:? forKey:?];
    [@"patchRangesTable" stringByAppendingString:@".patchArrayCount"];
    v71 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3);
    [v74 encodeInt32:? forKey:?];
    if (v72)
    {
      v25 = 0;
      for (i = 0; i < v72; v25 = ++i)
      {
        if (v71)
        {
          v26 = 0;
          v27 = 0;
          do
          {
            if (0xAAAAAAAAAAAAAAABLL * (v20[1] - *v20) <= i)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v29 = &(*v20)[3 * i];
            v28 = *v29;
            if (0xAAAAAAAAAAAAAAABLL * ((v29[1] - *v29) >> 3) <= v27)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            [v74 encodeBytes:*(v28 + v26) length:*(v28 + v26 + 8) - *(v28 + v26) forKey:{objc_msgSend(@"patchRangesTable", "stringByAppendingFormat:", @".[%d][%d]", v25, v27++)}];
            v26 += 24;
          }

          while (v71 != v27);
        }
      }
    }
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(v74, @"vertexRefiner", v3 + 144, v75);
  v30 = v70[6];
  if (v30)
  {
    v31 = (v30[1] - *v30) >> 3;
    v32 = 0x2E8BA2E8BA2E8BA3 * v31;
    if (-1171354717 * v31)
    {
      [v74 encodeInt32:v32 forKey:{objc_msgSend(@"fvarRefiners", "stringByAppendingString:", @".count"}];
      v33 = 0;
      v34 = 0;
      do
      {
        if (0x2E8BA2E8BA2E8BA3 * ((v30[1] - *v30) >> 3) <= v34)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        __C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(v74, [@"fvarRefiners" stringByAppendingFormat:@".[%d]", v34++], *v30 + v33, v75);
        v33 += 88;
      }

      while (v32 != v34);
    }
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v74, @"skinMorphSubdivIndexToMetalIndexBuffer", *(v3 + 352), v75, 0);
  v35 = *(v3 + 360);
  if (v35)
  {
    [v74 encodeObject:objc_msgSend(-[SCNMTLResourceManager commandQueue](v35) forKey:{"name"), @"synchronizeCoarsePositionsPipeline.functionName"}];
  }

  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v74, @"fvarChannelDescriptorsBuffer", *(v3 + 128), v75, 0);
  __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v74, @"fvarChannelsPackedDataBuffer", *(v3 + 136), v75, 0);
  if (!v77[6])
  {
    goto LABEL_37;
  }

  if (!v77[9])
  {
    v38 = scn_default_log(v36, v37);
    v36 = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);
    if (v36)
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_2(v38, v37, v39, v40, v41, v42, v43, v44);
    }
  }

  if (!v77[8])
  {
    v45 = scn_default_log(v36, v37);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      ___ZL49C3DSubdivisionOsdGPURuntimeDataCreateWithGeometryP13__C3DGeometryP18__C3DEngineContextRK36C3DSubdivisionOsdGPUSubdivParametersP21SCNMTLResourceManagerPU26objcproto15MTLCommandQueue11objc_objectU13block_pointerFvPU27objcproto16MTLCommandBuffer11objc_objectbE_block_invoke_537_cold_3(v45, v46, v47, v48, v49, v50, v51, v52);
    }
  }

  [v77[9] endEncoding];
  [v77[8] commit];
  [v77[8] waitUntilCompleted];
  v53 = [v69 status];
  if (v53 != 4)
  {
    v58 = scn_default_log(v53, v54);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v59 = [v69 status];
    v60 = [v69 error];
    v61 = [v69 logs];
    *buf = 67109634;
    v85 = v59;
    v86 = 2112;
    v87 = v60;
    v88 = 2112;
    v89 = v61;
    v62 = "Error: OpenSubdiv archiver dependency command buffer execution failed with status %d, error: %@\n%@";
    v63 = v58;
LABEL_46:
    _os_log_error_impl(&dword_21BEF7000, v63, OS_LOG_TYPE_ERROR, v62, buf, 0x1Cu);
    goto LABEL_41;
  }

  v55 = [v77[8] status];
  if (v55 == 4)
  {
LABEL_37:
    v57 = [v74 encodedData];
    goto LABEL_42;
  }

  v64 = scn_default_log(v55, v56);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v66 = [v77[8] status];
    v67 = [v77[8] error];
    v68 = [v77[8] logs];
    *buf = 67109634;
    v85 = v66;
    v86 = 2112;
    v87 = v67;
    v88 = 2112;
    v89 = v68;
    v62 = "Error: OpenSubdiv archiver command buffer execution failed with status %d, error: %@\n%@";
    v63 = v64;
    goto LABEL_46;
  }

LABEL_41:
  v57 = 0;
LABEL_42:

  _Block_object_dispose(&v76, 8);
  if (v57)
  {
    return CFAutorelease(v57);
  }

  else
  {
    return 0;
  }
}

void sub_21BFF8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return CC_SHA256_Update(*(a1 + 32), v4, 0x10u);
}

const __CFData *___ZL38C3DSubdivisionOsdGPURuntimeDataGetHashP13__C3DGeometry_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DSubdivSourceSemanticCanBePrimvar(a3, a4, 0);
  if (result)
  {
    result = C3DMeshSourceGetData();
    if (result)
    {
      v6 = result;
      BytePtr = CFDataGetBytePtr(result);
      Length = CFDataGetLength(v6);
      v9 = *(a1 + 32);

      return CC_SHA256_Update(v9, BytePtr, Length);
    }
  }

  return result;
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Mesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_282DC4D78;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a7;
  *(a1 + 96) = 0;
  *(a1 + 104) = a8;
  if (a2)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    if (a6)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(a2, (16 * a6) & 0x300 | a5 & 0xF | (((a6 >> 3) & 1) << 10) | 0xF0);
    }

    else
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineUniform(a2, a5 & 0xF | (32 * (((*(**(a2 + 40) + 464) - *(**(a2 + 40) + 456)) >> 3) > 0)));
    }

    OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext(a1, v11, v10, v9, a6);
  }

  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Mesh();
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext(uint64_t a1, int a2, int a3, char a4, unint64_t a5)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = ~(16 * *(v6 + 8)) & 0x10;
    if (a2 >= 1)
    {
      OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(v6, v7 | 0x2A4);
    }

    if (a3 >= 1)
    {
      OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(*(a1 + 8), v7 | 0x2A5);
    }

    if ((a5 & 0x180) == 0x100)
    {
      v8 = -4294956032;
    }

    else
    {
      v8 = -4294956288;
    }

    if ((a5 & 0x40) != 0)
    {
      v8 = -4294956544;
    }

    OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(*(a1 + 8), ((a5 << 10) & 0x3000 | (16 * (a4 & 0xF)) | (a5 >> 2) & 0xC) ^ v8, 0);
  }

  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeContext();
}

void *OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::initializeVertexBuffers(void *result, int a2, OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, MTLContext *a4)
{
  if (this)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::Create(this, a2, result[13], a4);
  }

  if (a4)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::Create(a4, a2, result[13], a4);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(void *a1)
{
  OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(a1);

  JUMPOUT(0x21CF07610);
}

BOOL OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::Refine(uint64_t a1)
{
  v2 = *(**(*(a1 + 8) + 88) + 8);
  v10 = *(a1 + 48);
  v9 = *(a1 + 48);
  v9.var0 += v9.var2 * v2;
  v3 = OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(*(a1 + 88), &v10, &v9, *(a1 + 104));
  result = OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(*(a1 + 32), &v10, *(a1 + 32), &v9, *(a1 + 72), v3, *(a1 + 104));
  if (*(a1 + 64) >= 1)
  {
    v8 = *(a1 + 60);
    v7 = *(a1 + 60);
    v7.var0 += v7.var2 * v2;
    v5 = OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(*(a1 + 88), &v8, &v7, *(a1 + 104));
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(a1 + 32);
    }

    return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(v6, &v8, v6, &v7, *(a1 + 80), v5, *(a1 + 104));
  }

  return result;
}

uint64_t *OpenSubdiv::v3_1_1::Osd::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLContext *>(uint64_t *result, const BufferDescriptor *a2, BufferDescriptor *a3, MTLContext *a4)
{
  if (result)
  {
    *&v5.var0 = 0;
    v5.var2 = 0;
    *&v4.var0 = 0;
    v4.var2 = 0;
    return OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLContext>(result, a2, a3, &v5, &v4, a4);
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(uint64_t a1, BufferDescriptor *this, uint64_t a3, BufferDescriptor *a4, __n128 *a5, uint64_t a6, MTLContext *a7)
{
  if (!a6)
  {
    *&v9.var0 = 0;
    v9.var2 = 0;
    *&v8.var0 = 0;
    v8.var2 = 0;
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(this, a4, &v9, &v8, a7, 0);
  }

  return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(a6, a1, this, a3, &a4->var0, a5, a7);
}

uint64_t OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::GetEvaluator<OpenSubdiv::v3_1_1::Osd::MTLContext>(uint64_t *a1, const BufferDescriptor *this, BufferDescriptor *a3, BufferDescriptor *a4, BufferDescriptor *a5, MTLContext *a6)
{
  v10 = *a1;
  v11 = a1[1];
  if (*a1 == v11)
  {
LABEL_43:
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(this, a3, a4, a5, a6, a6);
  }

  var1 = this->var1;
  var2 = this->var2;
  var0 = this->var0;
  v16 = a3->var1;
  v15 = a3->var2;
  v17 = a3->var0;
  v18 = a4->var1;
  v19 = a4->var2;
  v20 = a4->var0;
  v22 = a5->var1;
  v21 = a5->var2;
  v23 = a5->var0;
  while (1)
  {
    v24 = var2 ? var0 % var2 : 0;
    v25 = *(v10 + 8);
    v26 = v25 ? *v10 % v25 : 0;
    if (v24 == v26 && var2 == v25 && var1 == *(v10 + 4))
    {
      v28 = v15 ? v17 % v15 : 0;
      v29 = *(v10 + 20);
      v30 = v29 ? *(v10 + 12) % v29 : 0;
      if (v28 == v30 && v15 == v29 && v16 == *(v10 + 16))
      {
        v31 = v19 ? v20 % v19 : 0;
        v32 = *(v10 + 32);
        v33 = v32 ? *(v10 + 24) % v32 : 0;
        if (v31 == v33 && v19 == v32 && v18 == *(v10 + 28))
        {
          v34 = v21 ? v23 % v21 : 0;
          v35 = *(v10 + 44);
          v36 = v35 ? *(v10 + 36) % v35 : 0;
          if (v34 == v36 && v21 == v35 && v22 == *(v10 + 40))
          {
            return *(v10 + 48);
          }
        }
      }
    }

    v10 += 56;
    if (v10 == v11)
    {
      goto LABEL_43;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::EvaluatorCacheT<OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator>::Entry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable>(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, __n128 *a6, void *a7)
{
  Node = C3DRendererElementGetNode(a2);
  v14 = C3DRendererElementGetNode(a4);
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  return OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::EvalStencils(a1, Node, a3, v14, a5, 0, &v19, 0, *a6, v15, &v17, a6->n128_u64[0], a6->n128_i64[1], a6[1].n128_i64[0], a6[1].n128_i64[1], 0, 0, 0, a6[3].n128_i32[0], a7);
}

__n128 ___ZL51__C3DSubdivisionOsdGPURuntimeDataCreateArchivedDataP33__C3DSubdivisionOsdGPURuntimeDataPK39C3DSubdivisionOsdGPUSetupAdditionalDataPU26objcproto15MTLCommandQueue11objc_objectPU27objcproto16MTLCommandBuffer11objc_object_block_invoke@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 40) + 8);
  if (!*(v3 + 48))
  {
    *(*(*(a1 + 40) + 8) + 48) = [*(a1 + 32) device];
    *(*(*(a1 + 40) + 8) + 56) = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 64) = [*(*(*(a1 + 40) + 8) + 56) commandBuffer];
    *(*(*(a1 + 40) + 8) + 72) = [*(*(*(a1 + 40) + 8) + 64) blitCommandEncoder];
    v3 = *(*(a1 + 40) + 8);
  }

  result = *(v3 + 48);
  v6 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

void *__C3DSubdivisionOsdGPURuntimeDataEncodePatchTable(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    [result encodeBytes:*(a3 + 8) length:16 * *a3 forKey:{objc_msgSend(a2, "stringByAppendingString:", @".patchArrays"}];
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".patchIndexBuffer"], *(a3 + 16), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".patchParamBuffer"], *(a3 + 24), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [a2 stringByAppendingString:@".dataBuffer"], *(a3 + 32), a4, *(a3 + 48));
    [v7 encodeInt32:*(a3 + 40) forKey:{objc_msgSend(a2, "stringByAppendingString:", @".dataBufferOffset"}];
    [v7 encodeInt32:*(a3 + 48) forKey:{objc_msgSend(a2, "stringByAppendingString:", @".dataBufferCoarseDataSize"}];
    v8 = [*(a3 + 32) length];
    v9 = [a2 stringByAppendingString:@".dataBufferFullDataSize"];

    return [v7 encodeInt32:v8 forKey:v9];
  }

  return result;
}

void *__C3DSubdivisionOsdGPURuntimeDataEncodeRefiner(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    v8 = [a2 stringByAppendingString:@".stencilTable"];
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".sizesBuffer"], *a3, a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".offsetsBuffer"], *(a3 + 8), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".indicesBuffer"], *(a3 + 16), a4, 0);
    __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(v7, [v8 stringByAppendingString:@".weightsBuffer"], *(a3 + 24), a4, 0);
    [v7 encodeInt32:*(a3 + 32) forKey:{objc_msgSend(v8, "stringByAppendingString:", @".numStencils"}];
    v9 = [a2 stringByAppendingString:@".evaluatorInput"];
    [v7 encodeBytes:a3 + 56 length:12 forKey:{objc_msgSend(v9, "stringByAppendingString:", @".srcDesc"}];
    v10 = [v9 stringByAppendingString:@".dstDesc"];

    return [v7 encodeBytes:a3 + 68 length:12 forKey:v10];
  }

  return result;
}

void __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v5 = a5;
    if (!a5)
    {
      v5 = [a3 length];
    }

    if (v5 > [a3 length])
    {
      __C3DSubdivisionOsdGPURuntimeDataEncodeMTLBuffer();
    }

    if ([a3 storageMode] == 2)
    {
      v10 = [objc_msgSend(a3 "device")];
      (*(a4 + 16))(v13, a4);
      [v13[3] copyFromBuffer:a3 sourceOffset:0 toBuffer:v10 destinationOffset:0 size:v5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = ___ZL48__C3DSubdivisionOsdGPURuntimeDataEncodeMTLBufferP15NSKeyedArchiverP8NSStringPU19objcproto9MTLBuffer11objc_objectU13block_pointerFN10OpenSubdiv6v3_1_13Osd10MTLContextEvEm_block_invoke;
      v12[3] = &unk_2782FE018;
      v12[4] = a1;
      v12[5] = v10;
      v12[6] = a2;
      v12[7] = v5;
      [v13[2] addCompletedHandler:v12];
    }

    else
    {
      v11 = [a3 contents];

      [a1 encodeBytes:v11 length:v5 forKey:a2];
    }
  }
}

uint64_t ___ZL48__C3DSubdivisionOsdGPURuntimeDataEncodeMTLBufferP15NSKeyedArchiverP8NSStringPU19objcproto9MTLBuffer11objc_objectU13block_pointerFN10OpenSubdiv6v3_1_13Osd10MTLContextEvEm_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contents];
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 encodeBytes:v3 length:v4 forKey:v5];
}

void *OpenSubdiv::v3_1_1::Osd::Mesh<OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer,OpenSubdiv::v3_1_1::Osd::MTLStencilTable,OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator,OpenSubdiv::v3_1_1::Osd::MTLPatchTable,OpenSubdiv::v3_1_1::Osd::MTLContext>::~Mesh(void *a1)
{
  *a1 = &unk_282DC4D78;
  v2 = a1[1];
  if (v2)
  {
    OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(v2);
    MEMORY[0x21CF07610]();
  }

  v3 = a1[2];
  if (v3)
  {
    OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(v3);
    MEMORY[0x21CF07610]();
  }

  v4 = a1[4];
  if (v4)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::~CPUMTLVertexBuffer(v4);
    MEMORY[0x21CF07610]();
  }

  v5 = a1[5];
  if (v5)
  {
    OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::~CPUMTLVertexBuffer(v5);
    MEMORY[0x21CF07610]();
  }

  v6 = a1[9];
  if (v6)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::~MTLStencilTable(v6);
    MEMORY[0x21CF07610]();
  }

  v7 = a1[10];
  if (v7)
  {
    OpenSubdiv::v3_1_1::Osd::MTLStencilTable::~MTLStencilTable(v7);
    MEMORY[0x21CF07610]();
  }

  v8 = a1[12];
  if (v8)
  {
    OpenSubdiv::v3_1_1::Osd::MTLPatchTable::~MTLPatchTable(v8);
    MEMORY[0x21CF07610]();
  }

  return a1;
}

void C3DSubdivGPUPrimvarDescriptor::~C3DSubdivGPUPrimvarDescriptor(C3DSubdivGPUPrimvarDescriptor *this)
{
  v6 = (this + 112);
  std::vector<C3DSubdivGPUFVarPrimvarData>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

void std::vector<C3DSubdivGPUFVarPrimvarData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

uint64_t *std::vector<C3DSubdivisionOsdGPUPatchTable>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<C3DSubdivisionOsdGPUPatchTable>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<C3DSubdivisionOsdGPUPatchTable>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPUPatchTable>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivisionOsdGPUPatchTable>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:nn200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x21CF07580](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_21BFF9744(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t *std::vector<CFRange>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(a1, (v2 - *a2) >> 4);
  }

  return a1;
}

uint64_t SCNActionHasKey(void *a1, void *a2)
{
  [a1 caction];

  return objc_msgSend_isEqualToString_(a2);
}

uint64_t SCNActionApply(void *a1, id *a2, double a3)
{
  v5 = [a1 caction];
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);
  if (!ObjCWrapper)
  {
    return C3DIsRunningInEditor() ^ 1;
  }

  v7 = ObjCWrapper;
  if (!v5->var11)
  {
    SCNCAction::willStartWithTargetAtTime(v5, ObjCWrapper, a3);
  }

  if (v5->var4)
  {
    (*(v5->var0 + 7))(v5, v7, a3);
  }

  else
  {
    SCNCAction::updateWithTargetForTime(v5, v7, a3);
    if (!v5->var4)
    {
      var10 = [v5->var3 finished];
      return (C3DIsRunningInEditor() ^ 1) & var10;
    }
  }

  var10 = v5->var10;
  return (C3DIsRunningInEditor() ^ 1) & var10;
}

uint64_t SCNActionWasAddedToTargetAtTime(void *a1, SCNNode *a2)
{
  v4 = [a1 caction];
  C3DTransactionGetAtomicTime();
  SCNCAction::wasAddedToTargetAtTime(v4, a2, v5);
  result = [(SCNNode *)a2 isPausedOrPausedByInheritance];
  if (result)
  {
    v7 = [a1 caction];
    C3DTransactionGetAtomicTime();

    return SCNCAction::wasPausedWithTargetAtTime(v7, a2, v8);
  }

  return result;
}

uint64_t SCNActionWasPausedAtTime(void *a1, SCNNode *a2, double a3)
{
  v5 = [a1 caction];

  return SCNCAction::wasPausedWithTargetAtTime(v5, a2, a3);
}

uint64_t SCNActionWillResumeAtTime(void *a1, SCNNode *a2, double a3)
{
  v5 = [a1 caction];

  return SCNCAction::willResumeWithTargetAtTime(v5, a2, a3);
}

SCNNode *SCNActionWasRemovedFromTargetAtTime(void *a1, id *a2, double a3)
{
  v5 = [a1 caction];
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {

    return SCNCAction::wasRemovedFromTargetAtTime(v5, result, a3);
  }

  return result;
}

id *SCNActionDidFinish(void *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a2);
  if (result)
  {
    v4 = result;
    v5 = *([a1 caction] + 96);

    return [v4 _removeAction:a1 forKey:v5];
  }

  return result;
}

void SCNActionReleaseCachedState(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];

  objc_setAssociatedObject(v1, @"SCNActionCacheKey", 0, 0x301);
}

void *SCNActionsReset(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) caction];
        (*(*v6 + 120))(v6);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id SCNActionRestoreState(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];
  result = objc_getAssociatedObject(v1, @"SCNActionCacheKey");
  if (result)
  {
    v3 = result;
    [result position];
    [(SCNNode *)v1 setPosition:?];
    [v3 scale];
    [(SCNNode *)v1 setScale:?];
    if ([v3 usesEuler])
    {
      [v3 euler];
      [(SCNNode *)v1 setEulerAngles:?];
    }

    else
    {
      [v3 rotation];
      [(SCNNode *)v1 setRotation:?];
    }

    [v3 opacity];
    v5 = v4;

    return [(SCNNode *)v1 setOpacity:v5];
  }

  return result;
}

void SCNActionSaveStateIfNeeded(uint64_t a1)
{
  v1 = [SCNNode nodeWithNodeRef:a1];
  if (!objc_getAssociatedObject(v1, @"SCNActionCacheKey"))
  {
    v3 = objc_alloc_init(SCNActionTargetState);
    objc_setAssociatedObject(v1, @"SCNActionCacheKey", v3, 0x301);
    [(SCNNode *)v1 opacity];
    *&v2 = v2;
    [(SCNActionTargetState *)v3 setOpacity:v2];
    [(SCNNode *)v1 position];
    [(SCNActionTargetState *)v3 setPosition:?];
    [(SCNNode *)v1 scale];
    [(SCNActionTargetState *)v3 setScale:?];
    if ([(SCNNode *)v1 rotationRepresentation])
    {
      [(SCNNode *)v1 rotation];
      [(SCNActionTargetState *)v3 setRotation:?];
    }

    else
    {
      [(SCNActionTargetState *)v3 setUsesEuler:1];
      [(SCNNode *)v1 eulerAngles];
      [(SCNActionTargetState *)v3 setEuler:?];
    }
  }
}

void std::vector<UITouch *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t C3DMeshSourceCreateMutable(CFDataRef theData, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    MutableCopy = CFDataCreateMutableCopy(0, Length, theData);
  }

  else
  {
    v14 = a4 * a3 * C3DSizeOfBaseType(a5, a2);
    MutableCopy = CFDataCreateMutable(0, 0);
    CFDataSetLength(MutableCopy, v14);
  }

  v15 = C3DSizeOfBaseType(a5, v11);
  MutableWithMutableData = C3DMeshSourceCreateMutableWithMutableData(a2, MutableCopy, a5, a4, a3, v15 * a4, 0);
  CFRelease(MutableCopy);
  return MutableWithMutableData;
}

uint64_t _C3DMeshSourceSetupNonInitializedComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  result = C3DSourceAccessorGetComponentsCountPerValue(v8);
  v11 = result - a4;
  if (result > a4)
  {
    v12 = C3DMeshSourceGetSemantic(a1, v10) - 1;
    v13 = 1.0;
    v14 = 1.0;
    if (v12 <= 5)
    {
      v13 = flt_21C2A1D50[v12];
      v14 = flt_21C2A1D68[v12];
    }

    result = C3DSceneSourceGetLibrary(v8);
    if (a3 >= 1)
    {
      v15 = result;
      v16 = 0;
      v17 = a2 + a4;
      v18 = a2 + 8 * a4;
      v19 = a2 + 4 * a4;
      do
      {
        v20 = 0;
        do
        {
          if (v11 - 1 == v20)
          {
            v21 = v13;
          }

          else
          {
            v21 = v14;
          }

          result = C3DSourceAccessorGetComponentsValueType(v8);
          if (result > 5u)
          {
            if (result != 6)
            {
              if (result != 16)
              {
                goto LABEL_19;
              }

LABEL_16:
              *(v17 + v20) = v21;
              goto LABEL_19;
            }

            *(v18 + 8 * v20) = v21;
          }

          else if (result == 1)
          {
            *(v19 + 4 * v20) = v21;
          }

          else if (result == 4)
          {
            goto LABEL_16;
          }

LABEL_19:
          ++v20;
        }

        while (v11 != v20);
        ++v16;
        v17 += v15;
        v18 += v15;
        v19 += v15;
      }

      while (v16 != a3);
    }
  }

  return result;
}

void C3DMeshSourceSetValueAtIndexAsVector3(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(v13, a2);
  v15 = a3;
  v15.n128_u32[3] = 0;
  v18 = v15;
  VectorType = C3DSourceAccessorGetVectorType(v13);
  C3DConvertFloatingTypeFromFloat4(VectorType, MutableValuePtrAtIndex, v18);
}

void C3DMeshSourceSetValueAtIndexAsVector4(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(v13, a2);
  VectorType = C3DSourceAccessorGetVectorType(v13);
  C3DConvertFloatingTypeFromFloat4(VectorType, MutableValuePtrAtIndex, a3);
}

__CFData *C3DMeshSourcePrepareAppend(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 64);
  Data = C3DSourceAccessorGetData(v11, a2);
  Library = C3DSceneSourceGetLibrary(v11);
  v15 = Library;
  if (!Data)
  {
    v16 = scn_default_log(Library, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  Length = CFDataGetLength(Data);
  Count = C3DSourceAccessorGetCount(v11);
  if (Length != Count * v15)
  {
    v27 = scn_default_log(Count, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourcePrepareAppend_cold_3(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  v35 = CFDataGetLength(Data);
  CFDataSetLength(Data, v35 + v15 * a2);
  v36 = C3DSourceAccessorGetCount(v11);
  C3DSourceAccessorSetCount(v11, v36 + a2);
  return C3DSourceAccessorGetMutableValuePtrAtIndex(v11, v36);
}

uint64_t C3DMeshSourceAppendVector3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 64);
  v15 = C3DMeshSourcePrepareAppend(a1, a3);
  Library = C3DSceneSourceGetLibrary(v14);
  if (a3 >= 1)
  {
    v17 = Library;
    v18 = (v15 + 8);
    v19 = (a2 + 4);
    for (i = a3; i; --i)
    {
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v14);
      if (ComponentsValueType > 5u)
      {
        if (ComponentsValueType == 6)
        {
          *(v18 - 1) = *(v19 - 1);
          *v18 = *v19;
          v18[1] = v19[1];
          goto LABEL_16;
        }

        if (ComponentsValueType != 16)
        {
LABEL_9:
          v23 = scn_default_log(ComponentsValueType, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            C3DMeshSourceAppendVector3_cold_2(&v25, v26);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (ComponentsValueType == 1)
        {
          *(v18 - 2) = *(v19 - 1);
          *(v18 - 1) = *v19;
          *v18 = v19[1];
          goto LABEL_16;
        }

        if (ComponentsValueType != 4)
        {
          goto LABEL_9;
        }
      }

      *(v18 - 8) = *(v19 - 1);
      *(v18 - 7) = *v19;
      *(v18 - 6) = v19[1];
LABEL_16:
      v18 = (v18 + v17);
      v19 += 4;
    }
  }

  return _C3DMeshSourceSetupNonInitializedComponents(a1, v15, a3, 3);
}

uint64_t C3DMeshSourceAppendVector2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 64);
  v15 = C3DMeshSourcePrepareAppend(a1, a3);
  Library = C3DSceneSourceGetLibrary(v14);
  if (a3 >= 1)
  {
    v17 = Library;
    v18 = (a2 + 4);
    v19 = v15;
    for (i = a3; i; --i)
    {
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v14);
      if (ComponentsValueType > 5u)
      {
        if (ComponentsValueType == 6)
        {
          *v19 = COERCE_FLOAT(*(v18 - 1));
          *(v19 + 1) = *v18;
          goto LABEL_16;
        }

        if (ComponentsValueType != 16)
        {
LABEL_9:
          v23 = scn_default_log(ComponentsValueType, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            C3DMeshSourceAppendVector2_cold_2(&v25, v26);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (ComponentsValueType == 1)
        {
          *v19 = *(v18 - 1);
          *(v19 + 1) = *v18;
          goto LABEL_16;
        }

        if (ComponentsValueType != 4)
        {
          goto LABEL_9;
        }
      }

      *v19 = COERCE_FLOAT(*(v18 - 1));
      *(v19 + 1) = *v18;
LABEL_16:
      v18 += 2;
      v19 = (v19 + v17);
    }
  }

  return _C3DMeshSourceSetupNonInitializedComponents(a1, v15, a3, 2);
}

uint64_t C3DMeshSourceCreateVolatile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 0x15 && ((1 << a3) & 0x210052) != 0)
  {
    v6 = C3DSizeOfBaseType(a3, a2);
    v8 = C3DSourceAccessorCreate(a3, a2, 0, v6 * a2, 0);
    if (!v8)
    {
      v9 = scn_default_log(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateVolatile_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v18 = C3DMeshSourceCreateWithAccessor(v8, a1);
    if (!v18)
    {
      v19 = scn_default_log(0, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        C3DMeshSourceCreateWithAccessor_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    C3DSourceAccessorSetSource(v8, v18);
    CFRelease(v8);
    *(v18 + 88) |= 4u;
  }

  else
  {
    v28 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      C3DMeshSourceCreateVolatile_cold_3(v28);
    }

    return 0;
  }

  return v18;
}

void C3DMeshSourceSetVolatileData(uint64_t a1, uint64_t a2)
{
  IsVolatile = C3DGenericSourceIsVolatile(a1);
  if ((IsVolatile & 1) == 0)
  {
    v6 = scn_default_log(IsVolatile, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceSetVolatileData_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DGenericSourceSetVolatileData(a1, a2);
}

uint64_t C3DMeshSourceGetInstancingDivisor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 98);
}

void C3DMeshSourceSetInstancingDivisor(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 98) = v2;
}

void _C3DEdgeArrayCFFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    free(v1);
  }
}

uint64_t __C3DEdgeArrayGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEdgeArrayGetTypeID_typeID = result;
  return result;
}

void *C3DEdgeArrayCreateFromMeshElement(uint64_t a1, CFIndex a2)
{
  if (C3DEdgeArrayGetTypeID_onceToken != -1)
  {
    C3DEdgeArrayCreateFromMeshElement_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEdgeArrayGetTypeID_typeID, 24);
  if (!Instance)
  {
    v6 = scn_default_log(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Instance[3] = 0;
  Instance[2] = 0;
  v44 = Instance + 2;
  ElementAtIndex = C3DMeshGetElementAtIndex(a1, a2, 1);
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
  PositionSource = C3DMeshGetPositionSource(a1, 1);
  Count = C3DMeshSourceGetCount(PositionSource, v17);
  v19 = (Count * Count);
  v20 = malloc_type_calloc(1uLL, v19, 0x97483270uLL);
  if (PrimitiveCount < 1)
  {
    Instance[3] = 0;
  }

  else
  {
    v42 = Instance + 3;
    v43 = Instance;
    v21 = 0;
    v22 = 0;
    do
    {
      Index = C3DMeshElementGetIndex(ElementAtIndex, v21, 0, 0);
      v24 = C3DMeshElementGetIndex(ElementAtIndex, v21, 1, 0);
      v25 = C3DMeshElementGetIndex(ElementAtIndex, v21, 2, 0);
      if (Index >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = Index;
      }

      if (Index <= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = Index;
      }

      v28 = &v20[v26 * Count];
      if ((v28[v27] & 1) == 0)
      {
        v28[v27] = 1;
        ++v22;
      }

      if (v24 >= v25)
      {
        v29 = v25;
      }

      else
      {
        v29 = v24;
      }

      if (v24 <= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v24;
      }

      v31 = &v20[v29 * Count];
      if ((v31[v30] & 1) == 0)
      {
        v31[v30] = 1;
        ++v22;
      }

      if (v25 >= Index)
      {
        v32 = Index;
      }

      else
      {
        v32 = v25;
      }

      if (v25 <= Index)
      {
        v33 = Index;
      }

      else
      {
        v33 = v25;
      }

      v34 = &v20[v32 * Count];
      if ((v34[v33] & 1) == 0)
      {
        v34[v33] = 1;
        ++v22;
      }

      ++v21;
    }

    while (PrimitiveCount != v21);
    Instance = v43;
    *v42 = v22;
    if (v22)
    {
      v35 = malloc_type_malloc(16 * v22, 0x1000040451B5BE8uLL);
      *v44 = v35;
      if (v19 < 1)
      {
        v38 = 0;
      }

      else
      {
        v37 = 0;
        v38 = 0;
        do
        {
          if (v20[v37] == 1)
          {
            v39 = &v35[16 * v38];
            *v39 = v37 / Count;
            v39[1] = v37 + -Count * (v37 / Count);
            ++v38;
          }

          ++v37;
        }

        while (v19 != v37);
      }

      if (v38 != *v42)
      {
        v40 = scn_default_log(v35, v36);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          C3DEdgeArrayCreateFromMeshElement_cold_3(v42, v38, v40);
        }
      }
    }
  }

  free(v20);
  Instance[4] = Instance[3];
  return Instance;
}

uint64_t C3DEdgeArrayGetCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DEdgeArrayGetEdgeAtIndex(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DEdgeArrayCreateFromMeshElement_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(v3 + 24) <= a2)
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DEdgeArrayGetEdgeAtIndex_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(v3 + 16) + 16 * a2;
}

void _C3DTriangulationInfoCFFinalize(void *a1)
{
  v2 = a1[6];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1[3] + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(a1[3] + 8 * i) = 0;
        v2 = a1[6];
      }
    }
  }

  v5 = a1[5];
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(a1[2] + 8 * j);
      if (v7)
      {
        CFRelease(v7);
        *(a1[2] + 8 * j) = 0;
        v5 = a1[5];
      }
    }
  }

  v8 = a1[3];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[4];
  if (v10)
  {

    free(v10);
  }
}

uint64_t __C3DTriangulationInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTriangulationInfoGetTypeID_typeID = result;
  return result;
}

void *C3DTriangulationInfoCreateFromMeshElement(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  *&v42[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Count = C3DMeshSourceGetCount(a2, a2);
  if (a3)
  {
    v21 = *(a3 + 24);
  }

  else
  {
    v21 = 0;
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(v5);
  if (!Count)
  {
    return 0;
  }

  v23 = PrimitiveCount;
  if (C3DTriangulationInfoGetTypeID_onceToken != -1)
  {
    C3DTriangulationInfoCreateFromMeshElement_cold_3();
  }

  Instance = C3DTypeCreateInstance_(C3DTriangulationInfoGetTypeID_typeID, 48);
  Instance[2] = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
  Instance[5] = Count;
  Instance[7] = v23;
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      for (j = 0; j != 3; ++j)
      {
        Index = C3DMeshElementGetIndex(v5, i, j, 0);
        v29 = *(Instance[2] + 8 * Index);
        if (!v29)
        {
          *(Instance[2] + 8 * Index) = C3DIndexSetCreateMutable();
          v29 = *(Instance[2] + 8 * Index);
        }

        C3DIndexSetAddIndex(v29, i, v28);
      }
    }
  }

  if (v21)
  {
    Instance[3] = malloc_type_calloc(8uLL, v21, 0x2004093837F09uLL);
    Instance[6] = v21;
    Instance[4] = malloc_type_calloc(0x18uLL, v23, 0x4935EED9uLL);
    v30 = malloc_type_calloc(1uLL, v23, 0x100004077774924uLL);
    if (v21 >= 1)
    {
      for (k = 0; k != v21; ++k)
      {
        EdgeAtIndex = C3DEdgeArrayGetEdgeAtIndex(a3, k);
        IntersectionOfIndexSets = C3DIndexSetCreateIntersectionOfIndexSets(*(Instance[2] + 8 * *EdgeAtIndex), *(Instance[2] + 8 * EdgeAtIndex[1]));
        *(Instance[3] + 8 * k) = IntersectionOfIndexSets;
        FirstIndex = C3DIndexSetGetFirstIndex(IntersectionOfIndexSets);
        if (FirstIndex != -1)
        {
          v36 = FirstIndex;
          do
          {
            if (v30[v36] >= 3u)
            {
              v37 = scn_default_log(FirstIndex, v35);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                C3DTriangulationInfoCreateFromMeshElement_cold_4(v41, v42, v37);
              }
            }

            v38 = v30[v36];
            v39 = Instance[4] + 24 * v36;
            v30[v36] = v38 + 1;
            *(v39 + 8 * v38) = k;
            FirstIndex = C3DIndexSetGetIndexGreaterThanIndex(IntersectionOfIndexSets, v36);
            v36 = FirstIndex;
          }

          while (FirstIndex != -1);
        }
      }
    }

    free(v30);
  }

  return Instance;
}

uint64_t C3DTriangulationInfoGetEdgesAtFaceIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTriangulationInfoGetEdgesAtFaceIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 32) + 24 * a2;
}

void *SCNMTLRenderPipelineApplyRenderPassDescriptor(uint64_t a1, void *a2)
{
  for (i = 0; i != 8; ++i)
  {
    *(a1 + 8 * i) = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "colorAttachments")];
  }

  *(a1 + 64) = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  *(a1 + 72) = [objc_msgSend(objc_msgSend(a2 "stencilAttachment")];
  *(a1 + 80) = 1;
  v5 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "colorAttachments")];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  *(a1 + 80) = v6;
  v7 = [objc_msgSend(objc_msgSend(a2 "depthAttachment")];
  if (v6 <= v7)
  {
    v6 = v7;
  }

  *(a1 + 80) = v6;
  result = [objc_msgSend(objc_msgSend(a2 "stencilAttachment")];
  v9 = v6;
  if (v6 <= result)
  {
    v9 = result;
  }

  *(a1 + 80) = v9;
  return result;
}

id SCNMTLRenderPipelineDescRetain(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 304);
  v7 = *(a1 + 216);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(a1 + 296);
  v9 = *(a1 + 312);
  v10 = *(a1 + 320);
  v11 = *(a1 + 344);

  return v11;
}

void SCNMTLRenderPipelineDescRelease(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 344);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void _C3DMeshElementEditorCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t __C3DMeshElementEditorGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DMeshElementEditorGetTypeID_typeID = result;
  return result;
}

uint64_t C3DMeshElementEditorCreate()
{
  if (C3DMeshElementEditorGetTypeID_onceToken != -1)
  {
    C3DMeshElementEditorCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshElementEditorGetTypeID_typeID, 40);
  if (!Instance)
  {
    v2 = scn_default_log(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementEditorCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return Instance;
}

uint64_t C3DMeshElementEditorCreateWithMeshElementAndCapacity(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTriangulationInfoCreateFromMeshElement_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Type = C3DMeshElementGetType(a1, a2);
  if (Type)
  {
    v13 = scn_default_log(Type, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementEditorCreateWithMeshElementAndCapacity_cold_2();
    }

    return 0;
  }

  else
  {
    v14 = C3DMeshElementEditorCreate();
    Indexes = C3DMeshElementGetIndexes(a1, (v14 + 40));
    *(v14 + 16) = CFRetain(a1);
    *(v14 + 48) = C3DMeshElementGetPrimitiveCount(a1);
    *(v14 + 32) = CFDataCreateMutableCopy(0, 3 * a2 * *(v14 + 40), Indexes);
  }

  return v14;
}

void _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded(uint64_t a1, unsigned int a2)
{
  v3 = 1;
  if (a2 > 0xFF)
  {
    v3 = 2;
  }

  if (HIWORD(a2))
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (v4 > *(a1 + 40))
  {
    v6 = CFDataGetLength(*(a1 + 32)) / *(a1 + 40);
    v7 = 2;
    if (!HIWORD(a2))
    {
      v7 = a2 > 0xFF;
    }

    v8 = v6 << v7;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v8);
    v12 = *(a1 + 40);
    switch(v12)
    {
      case 4:
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        v25 = scn_default_log(BytePtr, v24);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 2:
        v18 = CFDataGetBytePtr(*(a1 + 32));
        if (a2 >= 0x10000)
        {
          v20 = v18;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v22 = *v20;
              v20 += 2;
              *MutableBytePtr = v22;
              MutableBytePtr += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v27 = scn_default_log(v18, v19);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 1:
        v13 = CFDataGetBytePtr(*(a1 + 32));
        v15 = v13;
        if (v4 == 4)
        {
          v28 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v29 = *v15++;
              *v28 = v29;
              v28 += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        if (v4 == 2)
        {
          v16 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v17 = *v15++;
              *v16 = v17;
              v16 += 2;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v30 = scn_default_log(v13, v14);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_32:
        v31 = *(a1 + 32);
        if (v31)
        {
          CFRelease(v31);
        }

        *(a1 + 40) = v4;
        *(a1 + 32) = Mutable;
        return;
      default:
        v26 = scn_default_log(v10, v11);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
    }

    _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded_cold_1();
    goto LABEL_32;
  }
}

uint64_t C3DMeshElementEditorGetIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v8 = *(a1 + 40);
  v9 = (3 * a2 + a3) * v8;
  if (v8 > 3)
  {
    if (v8 == 4 || v8 == 8)
    {
      return *&MutableBytePtr[v9];
    }
  }

  else
  {
    if (v8 == 1)
    {
      return MutableBytePtr[v9];
    }

    if (v8 == 2)
    {
      return *&MutableBytePtr[v9];
    }
  }

  v11 = scn_default_log(MutableBytePtr, v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementEditorGetIndex_cold_1();
  }

  return -1;
}

void _C3DMeshElementEditorSetIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _C3DMeshElementEditorIncreaseBytesPerIndexIfNeeded(a1, a4);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v10 = *(a1 + 40);
  v11 = (3 * a2 + a3) * v10;
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }

    if (v10 == 8)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }
  }

  else
  {
    if (v10 == 1)
    {
      MutableBytePtr[v11] = a4;
      return;
    }

    if (v10 == 2)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }
  }

  v12 = scn_default_log(MutableBytePtr, v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    C3DMeshElementEditorGetIndex_cold_1();
  }
}

void C3DMeshElementEditorSubdivideTriangleAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = scn_default_log(0, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 48) >= a2)
  {
    Index = C3DMeshElementEditorGetIndex(a1, a2, 1);
    v20 = C3DMeshElementEditorGetIndex(a1, a2, 2);
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    Length = CFDataGetLength(v22);
    CFDataSetLength(v22, Length + (9 * *(a1 + 40)));
    _C3DMeshElementEditorSetIndex(a1, a2, 1, a4);
    _C3DMeshElementEditorSetIndex(a1, a2, 2, a3);
    _C3DMeshElementEditorSetIndex(a1, v21, 0, a3);
    _C3DMeshElementEditorSetIndex(a1, v21, 1, a5);
    _C3DMeshElementEditorSetIndex(a1, v21, 2, v20);
    _C3DMeshElementEditorSetIndex(a1, v21 + 1, 0, a3);
    _C3DMeshElementEditorSetIndex(a1, v21 + 1, 1, a4);
    _C3DMeshElementEditorSetIndex(a1, v21 + 1, 2, a5);
    _C3DMeshElementEditorSetIndex(a1, v21 + 2, 0, a4);
    _C3DMeshElementEditorSetIndex(a1, v21 + 2, 1, Index);
    _C3DMeshElementEditorSetIndex(a1, v21 + 2, 2, a5);
    *(a1 + 48) += 3;
  }

  else
  {
    v18 = scn_default_log(v17, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_2();
    }
  }
}

uint64_t C3DMeshElementEditorGenerateMeshElement(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DMeshElementEditorSubdivideTriangleAtIndex_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 24);
  if (!v10)
  {
    v10 = C3DMeshElementCreate(a1, a2);
    DoubleSided = C3DMeshElementGetDoubleSided(*(v2 + 16), v11);
    C3DMeshElementSetDoubleSided(v10, DoubleSided);
    Copy = CFDataCreateCopy(0, *(v2 + 32));
    C3DMeshElementInit(v10, 0, *(v2 + 48), Copy, *(v2 + 40));
    CFRelease(Copy);
    *(v2 + 24) = v10;
  }

  return v10;
}

void SCNCJavaScriptAction::SCNCJavaScriptAction(SCNCJavaScriptAction *this, SCNCAction *a2, NSString *a3)
{
  SCNCAction::SCNCAction(this);
  *v6 = &unk_282DC4E60;
  *(v6 + 24) = a2->var3;
  *(v6 + 56) = a2->var7;
  *(v6 + 40) = *&a2->var5;
  *(v6 + 80) = *&a2->var10;
  *(v6 + 64) = a2->var8;
  *(v6 + 104) = a2->var14;
  *(v6 + 32) = 1;
  if (SCNCJavaScriptAction::SCNCJavaScriptAction(SCNCAction *,NSString *)::onceToken != -1)
  {
    SCNCJavaScriptAction::SCNCJavaScriptAction();
  }

  *(this + 18) = [(NSString *)a3 copy];
}

void ___ZN20SCNCJavaScriptActionC2EP10SCNCActionP8NSString_block_invoke()
{
  v0 = NSClassFromString(&cfstr_Jscontext.isa);
  if (v0)
  {
    v1 = objc_alloc_init(v0);
    _context = v1;

    SCNExportJavaScriptModule(v1);
  }
}

void SCNCJavaScriptAction::~SCNCJavaScriptAction(SCNCAction *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCJavaScriptAction::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v7 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if (this[1].var0)
  {
    v8 = _context == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7 * this->var1;
    v10 = [_context globalObject];
    [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v9), @"elapsedTime"}];
    [v10 setObject:a2 forKeyedSubscript:@"node"];
    [_context setException:0];
    v11 = [_context evaluateScript:this[1].var0];
    if ([_context exception])
    {
      NSLog(&stru_282DCBC18.isa, [v11 toString]);
    }
  }

  v12 = v7;
  if ((COERCE_UNSIGNED_INT(v12 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

BOOL C3DGaussianSolve(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = a3;
  bzero(a4, 4 * a3);
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 1);
    v14 = 4 * a2;
    v15 = 4 * (a2 - 1) * a2;
    v16 = v15 + 4;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = v19 * a2;
      v22 = v19;
      if (v19 + 1 < a2)
      {
        v23 = v17;
        v22 = v19;
        do
        {
          if (fabsf(*(a1 + 4 * v10 + 4 * v23)) > fabsf(*(a1 + 4 * v21 + 4 * v22)))
          {
            v22 = v23;
          }

          ++v23;
        }

        while (a2 != v23);
      }

      if (v19 != v22 && v19 <= v8)
      {
        v24 = v18 + 4 * v22;
        v25 = v13;
        v26 = a1;
        do
        {
          v27 = *(v26 + v9);
          *(v26 + v9) = *(v26 + v24);
          *(v26 + v24) = v27;
          v26 += v14;
          --v25;
        }

        while (v25);
      }

      v28 = (v19 + v12 * a2);
      if (fabsf(*(a1 + 4 * v28)) >= 0.000001)
      {
        if (v20 < a2)
        {
          v29 = a1 + 4 * v21;
          v30 = v16;
          v31 = v17;
          do
          {
            v32 = a1;
            v33 = a2;
            do
            {
              --v33;
              *(v32 + v30) = *(v32 + v30) - ((*(v32 + v15) * *(v29 + 4 * v31)) / *(a1 + 4 * v28));
              v32 -= 4 * a2;
            }

            while (v33 > v19);
            ++v31;
            v30 += 4;
          }

          while (v31 != a2);
        }
      }

      else if (v19 < v8)
      {
        return v11;
      }

      ++v12;
      --v13;
      ++v17;
      v10 += a2;
      v18 += v14;
      v9 += v14 + 4;
      v16 += 4;
      v15 += 4;
      ++v19;
      v11 = v20 >= a2;
    }

    while (v20 != a2);
  }

  if (a3 >= 1)
  {
    v34 = 0;
    v35 = 4 * a2;
    v36 = a1 + (v35 + 4) * v8 - 4;
    v37 = v8;
    do
    {
      v38 = 0.0;
      if (v37 < v8)
      {
        v39 = v36;
        v40 = v34;
        do
        {
          v38 = v38 + (*v39 * *(a4 + v8 + v40));
          v39 = (v39 + v35);
          ++v40;
        }

        while (v40);
      }

      *(a4 + v37 - 1) = (*(a1 + 4 * a3 * a2 + 4 * (v37 - 1)) - v38) / *(a1 + 4 * (a2 + 1) * (v37 - 1));
      --v34;
      v36 += v35 ^ 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v37-- > 1);
  }

  return 1;
}

void C3D::CubeBlurPass::CubeBlurPass(C3D::CubeBlurPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC4F18;
  v6 = *&a4->var0;
  *(v5 + 116) = *&a4->var8;
  *(v5 + 108) = v6;
}

void C3D::CubeBlurPass::setup(C3D::CubeBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 2u);
}

void C3D::CubeBlurPass::compile(C3D::CubeBlurPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  v5 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4);
  *(this + 15) = v5;
  if (!v5)
  {
    operator new();
  }
}

void *C3D::CubeBlurPass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v5 = C3D::Pass::outputTextureAtIndex(a1, 1);
  v6 = 0;
  v7 = 1;
  do
  {
    v20 = v7;
    if (v6)
    {
      v8 = C3D::Pass::outputTextureAtIndex(a1, 0);
      v4 = v5;
    }

    else
    {
      v8 = v5;
    }

    result = [v4 textureType];
    v22 = result;
    v10 = *(a1 + 112);
    if (v10 < *(a1 + 116) + v10)
    {
      if (result == 5)
      {
        v11 = 6;
      }

      else
      {
        v11 = 1;
      }

      if (v6)
      {
        v12 = 64;
      }

      else
      {
        v12 = 16;
      }

      v21 = v4;
      do
      {
        v13 = [v4 newTextureViewWithPixelFormat:objc_msgSend(v4 textureType:"pixelFormat") levels:5 slices:v10, 1, 0, 6];
        v14 = 0;
        v23 = 0;
        if (v10)
        {
          v15 = 1;
        }

        else
        {
          v15 = v22 == 5;
        }

        v16 = v15;
        v17 = v8;
        do
        {
          v18 = [(SCNMTLOpenSubdivComputeEvaluator *)*(*(a1 + 120) + v12 + 8 * v14) computeEvaluator];
          if (v3->_computePipelineState != v18)
          {
            v3->_computePipelineState = v18;
            [(MTLComputeCommandEncoder *)v3->_encoder setComputePipelineState:v18];
          }

          if (v16)
          {
            v19 = [(MTLTexture *)v8 pixelFormat];
            v17 = [(MTLTexture *)v8 newTextureViewWithPixelFormat:v19 textureType:2 levels:v10 slices:1, v23, 1];
          }

          SCNMTLComputeCommandEncoder::setBytes(v3, &v23, 2uLL, 0);
          if (v3->_textures[0] != v17)
          {
            v3->_textures[0] = v17;
            v3->_texturesToBind[0] |= 1uLL;
          }

          if (v3->_textures[1] != v13)
          {
            v3->_textures[1] = v13;
            v3->_texturesToBind[0] |= 2uLL;
          }

          result = SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v3, [(MTLTexture *)v17 width], [(MTLTexture *)v17 height]);
          v14 = v23 + 1;
          v23 = v14;
        }

        while (v11 > v14);
        ++v10;
        v4 = v21;
      }

      while (v10 < (*(a1 + 116) + *(a1 + 112)));
    }

    v7 = 0;
    v6 = 1;
    v5 = v8;
  }

  while ((v20 & 1) != 0);
  return result;
}

void C3D::CubeBlurPass::Resource::~Resource(C3D::CubeBlurPass::Resource *this)
{
  *this = &unk_282DC4F88;
  for (i = 104; i != 56; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {
    }
  }

  do
  {
    v4 = *(this + i);
    if (v4)
    {
    }

    i -= 8;
  }

  while (i != 8);
}

{
  *this = &unk_282DC4F88;
  v2 = 104;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
    }

    v2 -= 8;
    if (v2 == 56)
    {
      while (1)
      {
        v4 = *(this + v2);
        if (v4)
        {
        }

        v2 -= 8;
        if (v2 == 8)
        {

          JUMPOUT(0x21CF07610);
        }
      }
    }
  }
}

double __sortOmniLightsOnZAxis(uint64_t result, __n128 *a2, void *a3, void *a4, __n128 *a5, uint64_t a6, double a7)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v7 = a6;
    *v14.i64 = MEMORY[0x28223BE20](result);
    v16 = v35 - v15;
    if (v17 >= 1)
    {
      v18.i64[0] = 0x8000000080000000;
      v18.i64[1] = 0x8000000080000000;
      v19 = v13;
      v20 = a2;
      v21 = v16;
      do
      {
        v22 = *v20++;
        v23 = v22;
        v24 = vmulq_f32(v14, v22);
        *v24.i32 = v14.f32[3] + (*&v24.i32[2] + vaddv_f32(*v24.i8));
        *v23.i32 = fmaxf(fabsf(*v24.i32) - v22.f32[3], 0.0);
        *v21++ = vbslq_s8(v18, v23, v24).u32[0];
        --v19;
      }

      while (v19);
    }

    MEMORY[0x28223BE20](v12);
    v27 = (v35 - v26);
    v28 = 0;
    v29 = (v35 + 2 * v7 - v26);
    v30 = vdupq_n_s64((v7 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v31 = (&v35[1] - v26);
    do
    {
      v32 = vdupq_n_s64(v28);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v33, *v30.i8), *v30.i8).u8[0])
      {
        *(v31 - 4) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(v33, *&v30), *&v30).i8[1])
      {
        *(v31 - 3) = v28 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C27F630)))), *&v30).i8[2])
      {
        *(v31 - 2) = v28 | 2;
        *(v31 - 1) = v28 | 3;
      }

      v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i32[1])
      {
        *v31 = v28 | 4;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(v34, *&v30)).i8[5])
      {
        v31[1] = v28 | 5;
      }

      if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_21C2A1A00))))).i8[6])
      {
        v31[2] = v28 | 6;
        v31[3] = v28 | 7;
      }

      v28 += 8;
      v31 += 8;
    }

    while (((v7 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v7 - 1) & 7) + 8 != v28);
    v35[0] = v25;
    std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v27, v29, v35, 126 - 2 * __clz(v7), 1);
    reorder<__C3DNode *>(a3, v27, v7);
    reorder<__C3DNode *>(a4, v27, v7);
    reorder<scn_sphere>(a2, v27, v7);
    *&a7 = reorder<scn_sphere>(a5, v27, v7).n128_u64[0];
  }

  return a7;
}

void *reorder<__C3DNode *>(void *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v9 = v13 - v8;
  if (v7 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v7;
  }

  bzero(v13 - v8, v10);
  result = memcpy(v9, v5, 8 * a3);
  if (a3 >= 1)
  {
    do
    {
      v12 = *a2++;
      *v5++ = *&v9[8 * v12];
      --v6;
    }

    while (v6);
  }

  return result;
}

__n128 reorder<scn_sphere>(__n128 *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v7 = &v10[-2 * v6];
  memcpy(v7, v5, 16 * a3);
  if (a3 >= 1)
  {
    do
    {
      v9 = *a2++;
      result = *&v7[2 * v9];
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

double __sortSpotLightsOnZAxis(uint64_t result, float32x4_t *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = a5;
    *v12.i64 = MEMORY[0x28223BE20](result);
    v15 = (v52 - v14);
    if (v16 >= 1)
    {
      v17 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v18 = vnegq_f32(v12);
      v19 = vdup_laneq_s32(v12, 3);
      v20 = a2 + 2;
      v21 = v11;
      v22 = v15;
      do
      {
        v23 = v20[-2];
        v24 = v20[-1];
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v26 = vmlaq_f32(vmulq_f32(v25, v18), v24, v17);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = v20->f32[0];
        v13.i32[0] = v20->i32[1];
        v20 += 3;
        v29 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v27)), v24, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
        v30 = vmulq_f32(v12, v23);
        v31 = vuzp1q_s32(v29, v29);
        v32 = vmulq_f32(v29, v29);
        v33 = vextq_s8(v31, v29, 0xCuLL);
        *v31.i32 = v32.f32[1] + (v32.f32[2] + v32.f32[0]);
        v34 = vdupq_lane_s32(*v31.i8, 0);
        v35 = vrsqrteq_f32(v34);
        v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
        v37 = *v31.i32 != 0.0;
        v38 = vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)));
        v39 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37)), 0x1FuLL));
        v39.i32[3] = 0;
        v40 = vmulq_f32(v12, vmlsq_lane_f32(vmlaq_n_f32(v23, v24, v28), vbslq_s8(vcltzq_s32(v39), vmulq_f32(v38, v33), v33), v13, 0));
        *v40.i8 = vadd_f32(v19, vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v40, v40, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v40.i8), vzip2_s32(*v30.i8, *v40.i8))));
        v33.f32[0] = vmuls_lane_f32(*v40.i32, *v40.i8, 1);
        v41 = fminf(*v40.i32, *&v40.i32[1]);
        if (v33.f32[0] < 0.0)
        {
          v41 = 0.0;
        }

        *v22++ = v41;
        --v21;
      }

      while (v21);
    }

    MEMORY[0x28223BE20](v10);
    v44 = (v52 - v43);
    v45 = 0;
    v46 = (v52 + 2 * v6 - v43);
    v47 = vdupq_n_s64((v6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v48 = (&v52[1] - v43);
    do
    {
      v49 = vdupq_n_s64(v45);
      v50 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v50, *v47.i8), *v47.i8).u8[0])
      {
        *(v48 - 4) = v45;
      }

      if (vuzp1_s8(vuzp1_s16(v50, *&v47), *&v47).i8[1])
      {
        *(v48 - 3) = v45 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C27F630)))), *&v47).i8[2])
      {
        *(v48 - 2) = v45 | 2;
        *(v48 - 1) = v45 | 3;
      }

      v51 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i32[1])
      {
        *v48 = v45 | 4;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(v51, *&v47)).i8[5])
      {
        v48[1] = v45 | 5;
      }

      if (vuzp1_s8(*&v47, vuzp1_s16(*&v47, vmovn_s64(vcgeq_u64(v47, vorrq_s8(v49, xmmword_21C2A1A00))))).i8[6])
      {
        v48[2] = v45 | 6;
        v48[3] = v45 | 7;
      }

      v45 += 8;
      v48 += 8;
    }

    while (((v6 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v6 - 1) & 7) + 8 != v45);
    v52[0] = v42;
    std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v44, v46, v52, 126 - 2 * __clz(v6), 1);
    reorder<__C3DNode *>(a3, v44, v6);
    reorder<__C3DNode *>(a4, v44, v6);
    *&a6 = reorder<scn_cone>(a2, v44, v6).n128_u64[0];
  }

  return a6;
}

__n128 reorder<scn_cone>(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 48 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[6 * v11];
      v13 = *(v12 + 1);
      *v5 = *v12;
      v5[1] = v13;
      result = *(v12 + 2);
      v5[2] = result;
      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

double __sortProbesByVolume(float32x4_t *result, void *a2, void *a3, uint64_t a4, double a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = a4;
    MEMORY[0x28223BE20](result);
    v12 = (v28 - v11);
    if (v13 >= 1)
    {
      v14 = result + 4;
      v15 = v10;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 5;
        *v16++ = vmuls_lane_f32(vmuls_lane_f32(v17.f32[0], *v17.f32, 1), v17, 2) * 8.0;
        --v15;
      }

      while (v15);
    }

    MEMORY[0x28223BE20](v9);
    v20 = (v28 - v19);
    v21 = 0;
    v22 = (v28 + 2 * v5 - v19);
    v23 = vdupq_n_s64((v5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL);
    v24 = (&v28[1] - v19);
    do
    {
      v25 = vdupq_n_s64(v21);
      v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C27F640)));
      if (vuzp1_s8(vuzp1_s16(v26, *v23.i8), *v23.i8).u8[0])
      {
        *(v24 - 4) = v21;
      }

      if (vuzp1_s8(vuzp1_s16(v26, *&v23), *&v23).i8[1])
      {
        *(v24 - 3) = v21 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C27F630)))), *&v23).i8[2])
      {
        *(v24 - 2) = v21 | 2;
        *(v24 - 1) = v21 | 3;
      }

      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C2A1A10)));
      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i32[1])
      {
        *v24 = v21 | 4;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(v27, *&v23)).i8[5])
      {
        v24[1] = v21 | 5;
      }

      if (vuzp1_s8(*&v23, vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_21C2A1A00))))).i8[6])
      {
        v24[2] = v21 | 6;
        v24[3] = v21 | 7;
      }

      v21 += 8;
      v24 += 8;
    }

    while (((v5 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL) - ((v5 - 1) & 7) + 8 != v21);
    v28[0] = v18;
    std::__introsort<std::_ClassicAlgPolicy,__VolumeComp &,short *,false>(v20, v22, v28, 126 - 2 * __clz(v5), 1);
    reorder<__C3DNode *>(a2, v20, v5);
    reorder<__C3DNode *>(a3, v20, v5);
    *&a5 = reorder<scn_obb>(result, v20, v5).n128_u64[0];
  }

  return a5;
}

__n128 reorder<scn_obb>(_OWORD *a1, __int16 *a2, int a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  MEMORY[0x28223BE20](a1);
  v8 = &v14[-2 * v7];
  memcpy(v8, v5, 80 * v9);
  if (a3 >= 1)
  {
    do
    {
      v11 = *a2++;
      v12 = &v8[10 * v11];
      v13 = *(v12 + 3);
      v5[2] = *(v12 + 2);
      v5[3] = v13;
      v5[4] = *(v12 + 4);
      result = *(v12 + 1);
      *v5 = *v12;
      v5[1] = result;
      v5 += 5;
      --v6;
    }

    while (v6);
  }

  return result;
}

void _addLightsInFrustum(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v263 = v1;
  v3 = v2;
  v5 = v4;
  v351 = *MEMORY[0x277D85DE8];
  v7 = v6[1];
  v269 = *v6;
  v8 = v6[2];
  v225 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  Scene = C3DEngineContextGetScene(v7, v4);
  memset(v350, 0, 512);
  memset(v349, 0, 512);
  v328 = 0;
  v329 = &v328;
  v330 = 0x2020000000;
  v331 = 0;
  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v327[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke;
  v327[3] = &unk_2782FE0D8;
  v327[4] = &v328;
  v327[5] = v349;
  v327[6] = v350;
  v234 = v7;
  C3DLightingSystemEnumerateGlobalLights(v8, v7, v327);
  v12 = *(v329 + 6);
  v315[0] = MEMORY[0x277D85DD0];
  v315[1] = 3221225472;
  v315[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_2;
  v315[3] = &unk_2782FE100;
  v13 = v5[3];
  v318 = v5[2];
  v319 = v13;
  v14 = v5[5];
  v320 = v5[4];
  v321 = v14;
  v15 = v5[1];
  v316 = *v5;
  v317 = v15;
  v322 = &v328;
  v236 = v9;
  v323 = v9;
  v326 = v12;
  v324 = v349;
  v325 = v350;
  C3DLightingSystemEnumerateLocalOmnis(v8, v315);
  v237 = v8;
  if (Scene)
  {
    ParticleManager = C3DSceneGetParticleManager(Scene, 0);
    if (ParticleManager)
    {
      v302[0] = MEMORY[0x277D85DD0];
      v302[1] = 3221225472;
      v302[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_3;
      v302[3] = &unk_2782FE128;
      v17 = v5[3];
      v305 = v5[2];
      v306 = v17;
      v18 = v5[5];
      v307 = v5[4];
      v308 = v18;
      v19 = v5[1];
      v303 = *v5;
      v304 = v19;
      v309 = &v328;
      v310 = v9;
      v314 = v12;
      v311 = v348;
      v312 = v349;
      v313 = v350;
      C3DParticleManagerEnumerateInstancesWithLightEmission(ParticleManager, v302);
    }
  }

  LODWORD(v20) = v12;
  HIDWORD(v20) = *(v329 + 6) - v12;
  v263[5].i64[1] = v20;
  C3DEngineContextGetAuthoringEnvironment(v234, 0);
  v21 = v5[3];
  v344 = v5[2];
  v345 = v21;
  v22 = v5[5];
  v346 = v5[4];
  v347 = v22;
  v23 = v5[1];
  v342 = *v5;
  v343 = v23;
  __sortOmniLightsOnZAxis(&v342, v9, v350 + v12, v349 + v12, &v348[v12], v263[5].i16[6], *&v342);
  v24 = *(v329 + 6);
  v290[0] = MEMORY[0x277D85DD0];
  v290[1] = 3221225472;
  v290[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_4;
  v290[3] = &unk_2782FE150;
  v25 = v5[3];
  v293 = v5[2];
  v294 = v25;
  v26 = v5[5];
  v295 = v5[4];
  v296 = v26;
  v27 = v5[1];
  v291 = *v5;
  v292 = v27;
  v297 = &v328;
  v298 = v10;
  v301 = v24;
  v299 = v349;
  v300 = v350;
  C3DLightingSystemEnumerateSpots(v8, v290);
  v28 = *(v329 + 6) - v24;
  v263[6].i64[0] = __PAIR64__(v28, v24);
  v29 = v5[3];
  v344 = v5[2];
  v345 = v29;
  v30 = v5[5];
  v346 = v5[4];
  v347 = v30;
  v31 = v5[1];
  v342 = *v5;
  v343 = v31;
  __sortSpotLightsOnZAxis(&v342, v10, v350 + v24, v349 + v24, v28, *&v342);
  v32 = *(v329 + 6);
  v278[0] = MEMORY[0x277D85DD0];
  v278[1] = 3221225472;
  v278[2] = ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5;
  v278[3] = &unk_2782FE178;
  v33 = v5[3];
  v281 = v5[2];
  v282 = v33;
  v34 = v5[5];
  v283 = v5[4];
  v284 = v34;
  v35 = v5[1];
  v279 = *v5;
  v280 = v35;
  v286 = v11;
  v285 = &v328;
  v289 = v32;
  v287 = v349;
  v288 = v350;
  C3DLightingSystemEnumerateRadianceProbes(v8, v278);
  v36 = *(v329 + 6) - v32;
  v263[6].i64[1] = __PAIR64__(v36, v32);
  __sortProbesByVolume(v11, v350 + v32, v349 + v32, v36, COERCE_DOUBLE(__PAIR64__(v36, v32)));
  RenderContext = C3DEngineContextGetRenderContext(v234, v37);
  v233 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v230 = RenderContext;
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v234, v39);
  v266 = v3;
  if (v3)
  {
    v40 = v269 + 193;
    v41 = v341;
    v42 = &v342;
    v43 = v340;
    v44 = v3;
    do
    {
      v45 = v40[1];
      *v42 = *v40;
      v42[1] = v45;
      v46 = v40[3];
      v42[2] = v40[2];
      v42[3] = v46;
      v352 = *v42->i8;
      v264 = v352.columns[1];
      v267 = v352.columns[2];
      v270 = *v42;
      v353 = __invert_f4(*v42->f32);
      v47 = v264;
      v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v267, v267), v267, 0xCuLL), vnegq_f32(v264)), v267, vextq_s8(vuzp1q_s32(v47, v47), v264, 0xCuLL));
      v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
      v50 = vmulq_f32(v270, v270);
      v51 = vmulq_f32(v47, v47);
      v52 = vmulq_f32(v270, v49);
      v53 = vadd_f32(vzip1_s32(*v50.i8, *v51.i8), vzip2_s32(*v50.i8, *v51.i8));
      v54 = vextq_s8(v50, v50, 8uLL);
      *v54.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v54.f32, *&vextq_s8(v51, v51, 8uLL)), v53));
      _NF = (v52.f32[2] + vaddv_f32(*v52.f32)) < 0.0;
      v56 = vmulq_f32(v267, v267);
      v57 = sqrtf(v56.f32[2] + vaddv_f32(*v56.f32));
      if (_NF)
      {
        v58 = -1.0;
      }

      else
      {
        v58 = 1.0;
      }

      v54.f32[2] = v57;
      v59 = vabsq_f32(vmulq_n_f32(v54, v58));
      *v43++ = fmaxf(fmaxf(v59.f32[0], v59.f32[2]), v59.f32[1]);
      *(v41 - 32) = v353;
      v41 += 64;
      v40 += 4;
      v42 += 4;
      --v44;
    }

    while (v44);
  }

  v60 = *(v329 + 6);
  if (v60 <= 1)
  {
    v60 = 1;
  }

  v263[8].i32[2] = v60;
  SCNMTLBufferPool::allocate(v276, v225, (v3 * v60) << 8);
  v263[7] = v276[0].columns[0];
  v263[8].i64[0] = v276[0].columns[1].i64[0];
  v62 = v329;
  if (!*(v329 + 6))
  {
    goto LABEL_116;
  }

  v63 = 0;
  v64 = 0;
  v231 = v263 + 17;
  v232 = v263 + 13;
  v262 = v263[7].i64[0];
  __asm { FMOV            V0.4S, #1.0 }

  v235 = DWORD2(_Q0);
  v227 = v12;
  v226 = v3;
  do
  {
    if (!v3)
    {
      goto LABEL_115;
    }

    v68 = 0;
    v265 = v64 * v266;
    v268 = v64;
    v238 = v64 - v12;
    v228 = v63;
    do
    {
      v69 = *(v349 + v268);
      v271 = *(v350 + v268);
      v70 = v262 + ((v265 + v68) << 8);
      v71 = v263[6].i64[1];
      if (v268 >= v71 && v268 < (v71 + HIDWORD(v263[6].i64[1])))
      {
        *(v70 + 52) = 4;
        if (v69)
        {
          Type = C3DLightGetType(v69, v61);
          if (Type != 4)
          {
            v105 = scn_default_log(Type, v104);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
            {
              _addLightsInFrustum(v338, &v339, v105);
            }
          }

          ProbeEnvironment = C3DLightGetProbeEnvironment(v69, 0);
          if (ProbeEnvironment)
          {
            Intensity = C3DEffectSlotGetIntensity(ProbeEnvironment, v107);
          }

          else
          {
            Intensity = 1.0;
          }

          *v70 = (Intensity * C3DLightGetIntensity(v69, v107)) / 1000.0;
          RadianceProbeIndex = C3DLightGetRadianceProbeIndex(v69, v111);
          *(v70 + 128) = RadianceProbeIndex;
          if ((RadianceProbeIndex & 0x80000000) != 0)
          {
            v114 = scn_default_log(RadianceProbeIndex, v113);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
            {
              _addLightsInFrustum(v336, &v337, v114);
            }
          }

          *(v70 + 64) = C3DLightGetProbeOffset(v69, v113);
          ProbeExtents = C3DLightGetProbeExtents(v69, v115);
          v117.i64[0] = 0x3F0000003F000000;
          v117.i64[1] = 0x3F0000003F000000;
          v260 = vmulq_f32(ProbeExtents, v117);
          v118 = v260;
          v118.f32[3] = fmaxf(fmaxf(v260.f32[0], v260.f32[2]), v260.f32[1]) * 0.1;
          *(v70 + 80) = v118;
          *(v70 + 132) = C3DLightGetParallaxCorrectionEnabled(v69, v119);
          v121 = vmulq_f32(v260, C3DLightGetParallaxCenterOffset(v69, v120));
          *(v70 + 104) = v121.i32[2];
          *(v70 + 96) = v121.i64[0];
          v123 = vmulq_f32(v260, C3DLightGetParallaxExtentsFactor(v69, v122));
          *(v70 + 120) = v123.i32[2];
          *(v70 + 112) = v123.i64[0];
          WorldMatrix = C3DNodeGetWorldMatrix(v271, v124);
          v254 = WorldMatrix[1];
          v257 = *WorldMatrix;
          v250 = WorldMatrix[3];
          v252 = WorldMatrix[2];
          *(v70 + 16) = v250;
          v126 = (&v342 + 4 * v68);
          v272 = *v126;
          v259 = v126[2];
          v261 = v126[1];
          v258 = v126[3];
          v127 = C3DSceneComputeWorldToCubemapMatrix(Scene);
          v240 = v129;
          v242 = v128;
          v245 = v130;
          v249 = v127;
          v131 = 0;
          v333.columns[0] = v257;
          v333.columns[1] = v254;
          v333.columns[2] = v252;
          v333.columns[3] = v250;
          do
          {
            v276[0].columns[v131] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v272, COERCE_FLOAT(*&v333.columns[v131])), v261, *v333.columns[v131].f32, 1), v259, v333.columns[v131], 2), v258, v333.columns[v131], 3);
            ++v131;
          }

          while (v131 != 4);
          v354 = __invert_f4(v276[0]);
          v132 = 0;
          v333 = v354;
          do
          {
            v276[0].columns[v132] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v249, COERCE_FLOAT(*&v333.columns[v132])), v245, *v333.columns[v132].f32, 1), v242, v333.columns[v132], 2), v240, v333.columns[v132], 3);
            ++v132;
          }

          while (v132 != 4);
          v256 = v276[0];
        }

        *(v70 + 192) = v256.columns[0];
        *(v70 + 208) = v256.columns[1];
        *(v70 + 224) = v256.columns[2];
        *(v70 + 240) = v256.columns[3];
        goto LABEL_113;
      }

      if (!v69)
      {
        *v70 = v348[v268];
        v109 = v236[v238];
        *(v70 + 16) = vaddq_f32(*(&v345 + 4 * v68), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(&v342 + 4 * v68), v109.f32[0]), *(&v342 + 4 * v68 + 1), *v109.f32, 1), *(&v344 + 4 * v68), v109, 2));
        v109.i32[0] = v109.i32[3];
        if (v109.f32[3] <= 0.01)
        {
          v109.f32[0] = INFINITY;
        }

        DWORD2(v110) = v235;
        *&v110 = -1.0 / v109.f32[3];
        *(&v110 + 1) = ((-1.0 / v109.f32[3]) * -0.0) + 1.0;
        *(&v110 + 3) = 1.0 / (v109.f32[0] * v109.f32[0]);
        *(v70 + 64) = v110;
        goto LABEL_113;
      }

      v73 = C3DLightGetType(v69, v61);
      C3DLightGetColorModulatedByIntensity(v69, v74, v75, v76, v77, v78, v79, v80);
      *&v82 = v81;
      DWORD2(v82) = v83;
      HIDWORD(v82) = *(v70 + 12);
      *v70 = v82;
      C3DLightGetShadowColor(v69, v83);
      v85 = *v70;
      HIDWORD(v85) = vdupq_n_s64(v84).i32[3];
      *v70 = v85;
      v86 = C3DNodeGetWorldMatrix(v271, v84);
      v87 = 0;
      v88 = *(v86 + 16);
      v89 = *(v86 + 32);
      v90 = *(v86 + 48);
      v91 = (&v342 + 4 * v68);
      v92 = *v91;
      v93 = v91[1];
      v94 = v91[2];
      v95 = v91[3];
      v96 = v262 + 128 + (v63 << 8);
      v333.columns[0] = *v86;
      v333.columns[1] = v88;
      v333.columns[2] = v89;
      v333.columns[3] = v90;
      do
      {
        v276[0].columns[v87] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*&v333.columns[v87])), v93, *v333.columns[v87].f32, 1), v94, v333.columns[v87], 2), v95, v333.columns[v87], 3);
        ++v87;
      }

      while (v87 != 4);
      v248 = v276[0];
      v97 = vmulq_f32(v276[0].columns[2], v276[0].columns[2]);
      *&v98 = v97.f32[2] + vaddv_f32(*v97.f32);
      *v97.f32 = vrsqrte_f32(v98);
      *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
      v99 = vmulq_n_f32(v276[0].columns[2], vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
      *(v70 + 16) = v276[0].columns[3];
      *(v70 + 32) = v99;
      *&v101 = C3DLightComputeDistanceAttenuations(v69, 1, *&v340[v68]);
      *(v70 + 64) = v101;
      if (v73 != 6)
      {
        if (v73 == 3)
        {
          C3DLightComputeSpotAttenuations(v69);
          *(v70 + 80) = v102;
        }

        goto LABEL_57;
      }

      v133 = *(v69 + 256);
      if (v133 > 1)
      {
        if (v133 != 2)
        {
          if (v133 == 3)
          {
            *(v70 + 64) = *(v69 + 272);
          }

          else if (v133 == 4)
          {
            *(v70 + 68) = (*(v69 + 240) & 1);
            *(v70 + 64) = *(v69 + 272);
          }

          goto LABEL_56;
        }

LABEL_53:
        *(v70 + 72) = (*(v69 + 240) & 1);
        *(v70 + 64) = *(v69 + 272);
        goto LABEL_56;
      }

      if (!*(v69 + 256))
      {
        *(v70 + 64) = *(v69 + 272);
        goto LABEL_56;
      }

      if (v133 == 1)
      {
        goto LABEL_53;
      }

LABEL_56:
      *(v70 + 192) = v248;
LABEL_57:
      *(v70 + 52) = v73;
      *(v70 + 53) = C3DLightGetDistanceAttenuationType(v69, v100);
      *(v70 + 54) = C3DLightGetEffectiveShadowSampleCount(v69, v134);
      if (v268 > 7)
      {
        goto LABEL_113;
      }

      if (C3DLightGetCastsShadow(v69, v61) && C3DLightTypeSupportsShadow(v69, v135))
      {
        v136 = C3DLightGetUsesDeferredShadows(v69, v135) ^ 1;
      }

      else
      {
        v136 = 0;
      }

      HasValidGobo = C3DLightHasValidGobo(v69, v135);
      HasValidIES = C3DLightHasValidIES(v69);
      if (v136)
      {
        ShadowMapNameForNode = C3DLightingSystemGetShadowMapNameForNode(v237, v271);
        if (!ShadowMapNameForNode)
        {
          v139 = scn_default_log(0, v137);
          if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
          {
            _addLightsInFrustum(v334, &v335, v139);
          }
        }

        v263[9].i64[v268] = C3DEngineContextGetTextureWithName(v234, ShadowMapNameForNode);
        ActiveShadowCasterIndex = C3DLightingSystemGetActiveShadowCasterIndex(v237, v271);
        if (ActiveShadowCasterIndex)
        {
          ActiveShadowCasterData = C3DLightingSystemGetActiveShadowCasterData(v237, ActiveShadowCasterIndex);
          v148 = ActiveShadowCasterData;
          v149 = *(ActiveShadowCasterData + 64);
          v150 = *(ActiveShadowCasterData + 80);
          v151 = *(ActiveShadowCasterData + 96);
          v152 = *(ActiveShadowCasterData + 112);
          if (v73 == 2)
          {
            v153 = 0;
            v154 = &v340[16 * v68 + 6];
            v155 = v154[1];
            v156 = v154[2];
            v157 = v154[3];
            v333.columns[0] = *v154;
            v333.columns[1] = v155;
            v333.columns[2] = v156;
            v333.columns[3] = v157;
            do
            {
              v276[0].columns[v153] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149, COERCE_FLOAT(*&v333.columns[v153])), v150, *v333.columns[v153].f32, 1), v151, v333.columns[v153], 2), v152, v333.columns[v153], 3);
              ++v153;
            }

            while (v153 != 4);
            v158 = 0;
            v159 = v276[0].columns[0];
            v160 = v276[0].columns[1];
            v161 = v276[0].columns[2];
            v162 = v276[0].columns[3];
            *(v70 + 192) = v276[0].columns[0];
            *(v70 + 208) = v160;
            *(v70 + 224) = v161;
            *(v70 + 240) = v162;
            v333.columns[0] = v159;
            v333.columns[1] = v160;
            v333.columns[2] = v161;
            v333.columns[3] = v162;
            do
            {
              v276[0].columns[v158] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*&v333.columns[v158])), xmmword_21C27F8C0, *v333.columns[v158].f32, 1), xmmword_21C27F900, v333.columns[v158], 2), xmmword_21C27F610, v333.columns[v158], 3);
              ++v158;
            }

            while (v158 != 4);
            v163 = v276[0].columns[1];
            v164 = v276[0].columns[2];
            v165 = v276[0].columns[3];
            *(v70 + 192) = v276[0].columns[0];
            *(v70 + 208) = v163;
            *(v70 + 224) = v164;
            *(v70 + 240) = v165;
            *(v70 + 80) = *(ActiveShadowCasterData + 192);
          }

          else
          {
            *&v166 = _computeShadowMatrix(CoordinatesSystemOptions, v149, v150, v151, v152, *(ActiveShadowCasterData + 128), *(ActiveShadowCasterData + 144), *(ActiveShadowCasterData + 160), *(ActiveShadowCasterData + 176), ActiveShadowCasterIndex, v142, v143, v144, v145, v146, v147, *&v340[16 * v68 + 6], *&v340[16 * v68 + 10], *&v340[16 * v68 + 14], *&v341[64 * v68 + 16]);
            *(v70 + 192) = v166;
            *(v70 + 208) = v167;
            *(v70 + 224) = v168;
            *(v70 + 240) = v169;
            if (v73 == 1)
            {
              ShadowCascadeCount = C3DLightGetShadowCascadeCount(v69, ActiveShadowCasterIndex);
              if (ShadowCascadeCount)
              {
                v171 = ShadowCascadeCount;
                v172 = (v148 + 208);
                do
                {
                  v173 = *(v172 - 1);
                  HIDWORD(v173) = *(v96 - 52);
                  *(v96 - 64) = v173;
                  v174 = *v172;
                  HIDWORD(v174) = *(v96 + 12);
                  *v96 = v174;
                  v96 += 16;
                  v172 += 24;
                  --v171;
                }

                while (v171);
              }
            }
          }
        }

        if (*(v70 + 54) >= 2u)
        {
          RealShadowMapSize = C3DLightGetRealShadowMapSize(v69, ActiveShadowCasterIndex);
          ShadowRadius = C3DLightGetShadowRadius(v69, v175);
          v177 = RealShadowMapSize.i32[1];
          if (*RealShadowMapSize.i32 >= *&RealShadowMapSize.i32[1])
          {
            v177 = RealShadowMapSize.i32[0];
          }

          *(v70 + 48) = ShadowRadius / fmaxf(*&v177, 1.0);
        }

        ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(v69, ActiveShadowCasterIndex);
        if (ShadowCascadeDebugFactor != 0.0)
        {
          *(v70 + 12) = ShadowCascadeDebugFactor;
        }
      }

      if (HasValidIES)
      {
        *v179.i32 = (180.0 / C3DLightGetIESSpotAngle(v69, v61)) * 0.5;
        *(v70 + 80) = vdup_lane_s32(v179, 0);
        v182 = __invert_f4(v248);
        v181 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v182.columns[2], v182.columns[2]), v182.columns[2], 0xCuLL), vnegq_f32(v182.columns[1])), v182.columns[2], vextq_s8(vuzp1q_s32(v182.columns[1], v182.columns[1]), v182.columns[1], 0xCuLL));
        v182.columns[3] = vmulq_f32(v182.columns[0], vextq_s8(vuzp1q_s32(v181, v181), v181, 0xCuLL));
        *v181.i32 = vaddv_f32(*v182.columns[3].f32);
        v182.columns[3].i32[0] = 1.0;
        if ((v182.columns[3].f32[2] + *v181.i32) < 0.0)
        {
          v182.columns[3].f32[0] = -1.0;
        }

        v183 = vmulq_f32(v182.columns[0], v182.columns[0]);
        v184 = vmulq_f32(v182.columns[1], v182.columns[1]);
        v185 = vadd_f32(vzip1_s32(*v183.i8, *v184.i8), vzip2_s32(*v183.i8, *v184.i8));
        v186 = vextq_s8(v183, v183, 8uLL);
        *v186.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v186.f32, *&vextq_s8(v184, v184, 8uLL)), v185));
        v187 = vmulq_f32(v182.columns[2], v182.columns[2]);
        v186.i32[2] = sqrtf(v187.f32[2] + vaddv_f32(*v187.f32));
        v188 = vmulq_n_f32(v186, v182.columns[3].f32[0]);
        v189 = vceqzq_f32(v188);
        v189.i32[3] = v189.i32[2];
        if ((vmaxvq_u32(v189) & 0x80000000) != 0 || (v190 = vmvnq_s8(vorrq_s8(vcltzq_f32(v188), vcgezq_f32(v188))), v190.i32[3] = v190.i32[2], (vmaxvq_u32(v190) & 0x80000000) != 0))
        {
          v182.columns[0] = *(MEMORY[0x277D860B8] + 48);
        }

        else
        {
          v182.columns[3] = vdivq_f32(v182.columns[0], vdupq_lane_s32(*v188.f32, 0));
          v182.columns[0] = vdivq_f32(v182.columns[1], vdupq_lane_s32(*v188.f32, 1));
          v182.columns[1] = vdivq_f32(v182.columns[2], vdupq_laneq_s32(v188, 2));
          v191 = v182.columns[1].f32[2] + (v182.columns[3].f32[0] + v182.columns[0].f32[1]);
          if (v191 > 0.0)
          {
            *v182.columns[1].f32 = vsub_f32(*&vzip2q_s32(v182.columns[0], vuzp1q_s32(v182.columns[0], v182.columns[1])), *&vtrn2q_s32(v182.columns[1], vzip2q_s32(v182.columns[1], v182.columns[3])));
            v182.columns[1].f32[2] = v182.columns[3].f32[1] - v182.columns[0].f32[0];
            v182.columns[2].f32[0] = v191 + 1.0;
            v182.columns[1].f32[3] = v191 + 1.0;
            goto LABEL_111;
          }

          if (v182.columns[3].f32[0] > v182.columns[0].f32[1] && v182.columns[3].f32[0] > v182.columns[1].f32[2])
          {
            v182.columns[2].f32[0] = ((v182.columns[3].f32[0] + 1.0) - v182.columns[0].f32[1]) - v182.columns[1].f32[2];
            *&v215 = v182.columns[0].f32[0] + v182.columns[3].f32[1];
            v182.columns[3].f32[0] = v182.columns[1].f32[0] + v182.columns[3].f32[2];
            v182.columns[0].f32[0] = v182.columns[0].f32[2] - v182.columns[1].f32[1];
            v182.columns[1].i64[0] = __PAIR64__(v215, v182.columns[2].u32[0]);
            v182.columns[1].i32[2] = v182.columns[3].i32[0];
            goto LABEL_110;
          }

          if (v182.columns[0].f32[1] <= v182.columns[1].f32[2])
          {
            *v182.columns[1].f32 = vadd_f32(*v182.columns[1].f32, *&vzip2q_s32(v182.columns[3], v182.columns[0]));
            v182.columns[2].f32[0] = ((v182.columns[1].f32[2] + 1.0) - v182.columns[3].f32[0]) - v182.columns[0].f32[1];
            v182.columns[1].f32[2] = v182.columns[2].f32[0];
            v182.columns[0].f32[0] = v182.columns[3].f32[1] - v182.columns[0].f32[0];
LABEL_110:
            v182.columns[1].i32[3] = v182.columns[0].i32[0];
          }

          else
          {
            v214 = v182.columns[0];
            v214.f32[1] = (v182.columns[0].f32[1] + 1.0) - v182.columns[3].f32[0];
            v214.i32[3] = v182.columns[1].i32[0];
            v182.columns[1] = vzip2q_s32(vzip1q_s32(v182.columns[3], v182.columns[1]), vtrn1q_s32(v182.columns[1], v182.columns[3]));
            v182.columns[2] = vsubq_f32(v214, v182.columns[1]);
            v182.columns[0] = vrev64q_s32(vaddq_f32(v182.columns[0], v182.columns[1]));
            v182.columns[1] = vtrn2q_s32(v182.columns[0], v182.columns[2]);
            v182.columns[2].i32[0] = v182.columns[2].i32[1];
          }

LABEL_111:
          v182.columns[0].i32[0] = 0;
          v182.columns[1] = vmulq_n_f32(v182.columns[1], 0.5 / sqrtf(v182.columns[2].f32[0]));
          v182.columns[2] = vmvnq_s8(vceqq_f32(v182.columns[1], v182.columns[1]));
          v182.columns[2].i32[0] = vmaxvq_u32(v182.columns[2]);
          v182.columns[0] = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v182.columns[0], v182.columns[2]), 0), *(MEMORY[0x277D860B8] + 48), v182.columns[1]);
        }

        *(v70 + 96) = v182.columns[0];
        v232->i64[v268] = [v233 iesTextureForProfile:C3DLightGetIESProfileURL(v69 renderContext:{v180), v230}];
        v231->i64[v268] = 0;
        goto LABEL_113;
      }

      if (HasValidGobo)
      {
        v277 = 0;
        v232->i64[v268] = C3DEngineContextGetTextureForEffectSlot(v234, *(v69 + 200), &v277);
        v231->i64[v268] = [SCNMTLResourceManager renderResourceForSampler:v233];
        C3DLightGetProjectionInfo(v69, v276);
        Matrix = C3DProjectionInfosGetMatrix(v276, 0, CoordinatesSystemOptions);
        v274 = *(Matrix + 2);
        v244 = *(Matrix + 4);
        v247 = *Matrix;
        v241 = *(Matrix + 6);
        v355 = __invert_f4(v248);
        v193 = 0;
        v332 = v355;
        do
        {
          v333.columns[v193] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v247, COERCE_FLOAT(*&v332.columns[v193])), v274, *v332.columns[v193].f32, 1), v244, v332.columns[v193], 2), v241, v332.columns[v193], 3);
          ++v193;
        }

        while (v193 != 4);
        v275 = v333.columns[0];
        v253 = v333.columns[2];
        v255 = v333.columns[1];
        v251 = v333.columns[3];
        if (C3DKeyframeControllerHasInterpolationModesPerKey(*(v69 + 200)))
        {
          ImageTransform = C3DEffectSlotGetImageTransform(*(v69 + 200), v194);
          v196 = 0;
          v197 = *ImageTransform;
          v198 = ImageTransform[1];
          v199 = ImageTransform[2];
          v200 = ImageTransform[3];
          v332.columns[0] = v275;
          v332.columns[1] = v255;
          v332.columns[2] = v253;
          v332.columns[3] = v251;
          do
          {
            v333.columns[v196] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v197, COERCE_FLOAT(*&v332.columns[v196])), v198, *v332.columns[v196].f32, 1), v199, v332.columns[v196], 2), v200, v332.columns[v196], 3);
            ++v196;
          }

          while (v196 != 4);
          v201 = v333.columns[0];
          v202 = v333.columns[1];
          v203 = v333.columns[2];
          v204 = v333.columns[3];
        }

        else
        {
          v201 = v275;
          v203 = v253;
          v202 = v255;
          v204 = v251;
        }

        v205 = 0;
        v206 = *MEMORY[0x277D860B8];
        v207 = *(MEMORY[0x277D860B8] + 16);
        v206.i32[0] = 0.5;
        v208 = *(MEMORY[0x277D860B8] + 32);
        v207.i32[1] = -0.5;
        v208.i32[2] = 1.0;
        v209.i64[0] = 0x3F0000003F000000;
        v209.i64[1] = *(MEMORY[0x277D860B8] + 56);
        v332.columns[0] = v201;
        v332.columns[1] = v202;
        v332.columns[2] = v203;
        v332.columns[3] = v204;
        do
        {
          v333.columns[v205] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v206, COERCE_FLOAT(*&v332.columns[v205])), v207, *v332.columns[v205].f32, 1), v208, v332.columns[v205], 2), v209, v332.columns[v205], 3);
          ++v205;
        }

        while (v205 != 4);
        v210 = v333.columns[1];
        v211 = v333.columns[2];
        v212 = v333.columns[3];
        *(v70 + 192) = v333.columns[0];
        *(v70 + 208) = v210;
        *(v70 + 224) = v211;
        *(v70 + 240) = v212;
        *(v70 + 12) = C3DEffectSlotGetIntensity(*(v69 + 200), v194);
      }

LABEL_113:
      ++v68;
      ++v63;
    }

    while (v68 != v266);
    v62 = v329;
    v12 = v227;
    v3 = v226;
    v63 = v228;
    v64 = v268;
LABEL_115:
    ++v64;
    v63 += v3;
  }

  while (v64 < *(v62 + 6));
  if (!v12)
  {
    goto LABEL_129;
  }

LABEL_116:
  v216 = 0;
  v217 = v349;
  v218 = v12;
  do
  {
    v219 = *v217;
    if (C3DLightGetType(*v217, v61) == 6 && *(v219 + 256) == 4)
    {
      v216 += 8 * *(v219 + 272);
    }

    ++v217;
    --v218;
  }

  while (v218);
  if (v216)
  {
    memset(v276, 0, 24);
    SCNMTLBufferPool::allocate(v276, v225, v216);
    v221 = v263 + 22;
    v222 = v349;
    do
    {
      v223 = *v222;
      if (C3DLightGetType(*v222, v220) == 6 && *(v223 + 256) == 4)
      {
        memcpy((v276[0].columns[0].i64[0] + v221->i64[0]), *(v223 + 280), 8 * *(v223 + 272));
      }

      ++v222;
      v221 = (v221 + 8);
      --v12;
    }

    while (v12);
    v224 = v276[0].columns[1].i64[0];
    v263[21].i64[0] = v276[0].columns[0].i64[1];
    v263[21].i64[1] = v224;
  }

  else
  {
LABEL_129:
    v263[21].i64[0] = 0;
  }

  _Block_object_dispose(&v328, 8);
}

void *___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke(void *result, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v5 = *(*(result[4] + 8) + 24);
      if (v5 > 0xFF)
      {
        break;
      }

      v6 = *a4++;
      *(result[5] + 8 * v5) = v6;
      v7 = *a3++;
      v8 = result[6];
      v9 = *(result[4] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      *(v8 + 8 * v10) = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v6 = 0;
      v7 = *(a5 + 16 * i);
      v8 = *(a5 + 16 * i + 8);
      v9 = *(result + 80);
      v20[2] = *(result + 64);
      v20[3] = v9;
      v10 = *(result + 112);
      v20[4] = *(result + 96);
      v20[5] = v10;
      v11 = *(result + 48);
      v20[0] = *(result + 32);
      v20[1] = v11;
      v12.i64[0] = v7;
      v12.i64[1] = v8;
      while (1)
      {
        v13 = vmulq_f32(v20[v6], v12);
        if ((COERCE_FLOAT(HIDWORD(v20[v6])) + (v13.f32[2] + vaddv_f32(*v13.f32))) < -*(&v8 + 1))
        {
          break;
        }

        if (++v6 == 6)
        {
          v14 = *(*(*(result + 128) + 8) + 24);
          if (v14 > 0xFF)
          {
            return result;
          }

          v15 = (*(result + 136) + 16 * (v14 - *(result + 160)));
          *v15 = v7;
          v15[1] = v8;
          *(*(result + 144) + 8 * *(*(*(result + 128) + 8) + 24)) = *(a4 + 8 * i);
          v16 = *(a3 + 8 * i);
          v17 = *(result + 152);
          v18 = *(*(result + 128) + 8);
          v19 = *(v18 + 24);
          *(v18 + 24) = v19 + 1;
          *(v17 + 8 * v19) = v16;
          break;
        }
      }
    }
  }

  return result;
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_3(uint64_t a1, void *a2)
{
  ParticlesCount = C3DParticleSystemInstanceGetParticlesCount(a2);
  v5 = a2[63];
  v6 = a2[71];
  v30 = *C3DParticleSystemGetParticleColor(a2[6], v7);
  ParticleIntensity = C3DParticleSystemGetParticleIntensity(a2[6], v8);
  ParticleSize = C3DParticleSystemGetParticleSize(a2[6], v9);
  v11 = a2[70];
  LightEmissionRadiusFactor = C3DParticleSystemGetLightEmissionRadiusFactor(a2[6], v12);
  if (ParticlesCount)
  {
    v14 = 0;
    v15 = vmulq_n_f32(v30, ParticleIntensity);
    v16 = vdupq_n_s32(0x3A83126Fu);
    do
    {
      if (v11)
      {
        ParticleSize = *(v11 + 4 * v14);
      }

      v17 = 0;
      v18 = *(v5 + 16 * v14);
      v19 = v18;
      v20 = *(a1 + 80);
      v31[2] = *(a1 + 64);
      v31[3] = v20;
      v21 = *(a1 + 112);
      v31[4] = *(a1 + 96);
      v31[5] = v21;
      v22 = *(a1 + 48);
      v31[0] = *(a1 + 32);
      v31[1] = v22;
      while (1)
      {
        v23 = vmulq_f32(v18, v31[v17]);
        if ((COERCE_FLOAT(HIDWORD(v31[v17])) + (v23.f32[2] + vaddv_f32(*v23.f32))) < -(LightEmissionRadiusFactor * ParticleSize))
        {
          break;
        }

        if (++v17 == 6)
        {
          v24 = *(*(*(a1 + 128) + 8) + 24);
          if (v24 > 0xFF)
          {
            return;
          }

          v19.f32[3] = LightEmissionRadiusFactor * ParticleSize;
          *(*(a1 + 136) + 16 * (v24 - *(a1 + 168))) = v19;
          v25 = v15;
          if (v6)
          {
            v25 = *(v6 + 16 * v14);
          }

          *(*(a1 + 144) + 16 * *(*(*(a1 + 128) + 8) + 24)) = vmulq_f32(v25, v16);
          *(*(a1 + 152) + 8 * *(*(*(a1 + 128) + 8) + 24)) = 0;
          v26 = *(a1 + 160);
          v27 = *(*(a1 + 128) + 8);
          v28 = *(v27 + 24);
          *(v27 + 24) = v28 + 1;
          *(v26 + 8 * v28) = 0;
          break;
        }
      }

      ++v14;
    }

    while (v14 != ParticlesCount);
  }
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      if ((C3DLightGetCastsShadow(*(a4 + 8 * v9), a2) & 1) == 0 && (C3DLightHasValidGobo(*(a4 + 8 * v9), a2) & 1) == 0 && C3DLightGetAttenuationEndDistance(*(a4 + 8 * v9), a2) > 0.0)
      {
        v11 = 0;
        v12 = a5 + 48 * v9;
        v13 = *v12;
        v14 = *(v12 + 16);
        v15 = *(v12 + 32);
        v16 = *(v12 + 40);
        v17 = *(a1 + 80);
        v42[2] = *(a1 + 64);
        v42[3] = v17;
        v18 = *(a1 + 112);
        v42[4] = *(a1 + 96);
        v42[5] = v18;
        v19 = *(a1 + 48);
        v42[0] = *(a1 + 32);
        v42[1] = v19;
        v20 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v21 = vdupq_lane_s32(v15, 1);
        v22 = vmlaq_n_f32(v13, v14, *v15.i32);
        while (1)
        {
          v23 = v42[v11];
          v24 = vmulq_f32(v13, v23);
          v25 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v23)), v14, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
          v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v26)), v14, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          v29.f32[0] = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          v30 = vdupq_lane_s32(*v29.f32, 0);
          v31 = vrsqrteq_f32(v30);
          v32 = vmulq_f32(v31, vrsqrtsq_f32(v30, vmulq_f32(v31, v31)));
          v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v29.f32[0] != 0.0)), 0x1FuLL));
          v33.i32[3] = 0;
          v34 = vmulq_f32(v23, vmlsq_f32(v22, v21, vbslq_s8(vcltzq_s32(v33), vmulq_f32(vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32))), v28), v28)));
          v35 = vadd_f32(vdup_laneq_s32(v23, 3), vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v34.i8), vzip2_s32(*v24.i8, *v34.i8))));
          if (vmuls_lane_f32(v35.f32[0], v35, 1) >= 0.0 && fminf(v35.f32[0], v35.f32[1]) < 0.0)
          {
            break;
          }

          if (++v11 == 6)
          {
            v36 = *(*(*(a1 + 128) + 8) + 24);
            if (v36 > 0xFF)
            {
              return;
            }

            v37 = *(a1 + 136) + 48 * (v36 - *(a1 + 160));
            *v37 = v13;
            *(v37 + 16) = v14;
            *(v37 + 32) = v15;
            *(v37 + 40) = v16;
            *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
            v38 = *(a3 + 8 * v9);
            v39 = *(a1 + 152);
            v40 = *(*(a1 + 128) + 8);
            v41 = *(v40 + 24);
            *(v40 + 24) = v41 + 1;
            *(v39 + 8 * v41) = v38;
            break;
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

void ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v45[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    do
    {
      ProbeType = C3DLightGetProbeType(*(a4 + 8 * v9), a2);
      if (ProbeType != 1)
      {
        v13 = scn_default_log(ProbeType, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          ___Z19_addLightsInFrustumP19SCNMTLClusterSystem11scn_frustumhRKN13SCNMTLCluster7ContextEPNS_4InfoE_block_invoke_5_cold_1(v44, v45, v13);
        }
      }

      if (C3DLightGetIntensity(*(a4 + 8 * v9), v12) > 0.0)
      {
        ProbeEnvironment = C3DLightGetProbeEnvironment(*(a4 + 8 * v9), 0);
        if (!ProbeEnvironment || C3DEffectSlotGetIntensity(ProbeEnvironment, a2) > 0.0)
        {
          v16 = 0;
          v17 = (a5 + 80 * v9);
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[2];
          v21 = v17[3];
          v22 = v17[4];
          *v15.i32 = fmaxf(fmaxf(v22.f32[0], COERCE_FLOAT(v17[4].i64[1])), COERCE_FLOAT(HIDWORD(v17[4].i64[0]))) * 0.1;
          v23 = vaddq_f32(v22, vdupq_lane_s32(v15, 0));
          v23.i32[3] = v22.i32[3];
          v24 = *(a1 + 80);
          v43[2] = *(a1 + 64);
          v43[3] = v24;
          v25 = *(a1 + 112);
          v43[4] = *(a1 + 96);
          v43[5] = v25;
          v26 = *(a1 + 48);
          v43[0] = *(a1 + 32);
          v43[1] = v26;
          while (1)
          {
            v27 = v43[v16];
            v28 = vmulq_f32(v19, v27);
            v29 = vmulq_f32(v20, v27);
            v30 = vmulq_f32(v21, v27);
            v31 = vmulq_f32(v18, v27);
            v32 = vzip1q_s32(v28, v30);
            v33 = vzip2q_s32(v28, v30);
            v34 = vzip1q_s32(v29, v31);
            v35 = vzip2q_s32(v29, v31);
            v36 = vaddq_f32(vzip2q_s32(v33, v35), vaddq_f32(vzip1q_s32(v33, v35), vaddq_f32(vzip1q_s32(v32, v34), vzip2q_s32(v32, v34))));
            v37 = vabsq_f32(vmulq_f32(v23, v36));
            if (v36.f32[3] <= -(v37.f32[2] + vaddv_f32(*v37.f32)))
            {
              break;
            }

            if (++v16 == 6)
            {
              v38 = (*(a1 + 136) + 80 * (*(*(*(a1 + 128) + 8) + 24) - *(a1 + 160)));
              *v38 = v18;
              v38[1] = v19;
              v38[2] = v20;
              v38[3] = v21;
              v38[4] = v23;
              *(*(a1 + 144) + 8 * *(*(*(a1 + 128) + 8) + 24)) = *(a4 + 8 * v9);
              v39 = *(a3 + 8 * v9);
              v40 = *(a1 + 152);
              v41 = *(*(a1 + 128) + 8);
              v42 = *(v41 + 24);
              *(v41 + 24) = v42 + 1;
              *(v40 + 8 * v42) = v39;
              if (*(*(*(a1 + 128) + 8) + 24) > 0xFFu)
              {
                return;
              }

              break;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }
}

float32x4_t __computeFrustumExtrema(float32x4_t *a1, unsigned int a2, unsigned int a3, __int32 a4, float32x4_t *a5, uint32x4_t a6)
{
  a6.i64[0] = __PAIR64__(a3, a2);
  a6.i32[2] = a4;
  v6 = a1[1];
  v7 = vmulq_f32(v6, vcvtq_f32_u32(a6));
  result = vaddq_f32(v6, v7);
  v9 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), v7, 2);
  v10 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), v7, 2);
  v11 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), v7, 2), v9);
  v12 = vmlaq_lane_f32(v9, v11, *v7.f32, 1);
  v13 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), v7, 2), v10);
  v14 = vmlaq_lane_f32(v9, v11, *result.f32, 1);
  v15 = vsubq_f32(vmlaq_lane_f32(v10, v13, *v7.f32, 1), v12);
  *a5 = vmlaq_n_f32(v12, v15, v7.f32[0]);
  a5[1] = vmlaq_n_f32(v12, v15, result.f32[0]);
  v16 = vsubq_f32(vmlaq_lane_f32(v10, v13, *result.f32, 1), v14);
  a5[2] = vmlaq_n_f32(v14, v16, v7.f32[0]);
  a5[3] = vmlaq_n_f32(v14, v16, result.f32[0]);
  v17 = vmlaq_laneq_f32(a1[35], vsubq_f32(a1[39], a1[35]), result, 2);
  v18 = vmlaq_laneq_f32(a1[36], vsubq_f32(a1[40], a1[36]), result, 2);
  v19 = vsubq_f32(vmlaq_laneq_f32(a1[33], vsubq_f32(a1[37], a1[33]), result, 2), v17);
  v20 = vmlaq_lane_f32(v17, v19, *v7.f32, 1);
  v21 = vsubq_f32(vmlaq_laneq_f32(a1[34], vsubq_f32(a1[38], a1[34]), result, 2), v18);
  v22 = vmlaq_lane_f32(v17, v19, *result.f32, 1);
  v23 = vsubq_f32(vmlaq_lane_f32(v18, v21, *v7.f32, 1), v20);
  a5[4] = vmlaq_n_f32(v20, v23, v7.f32[0]);
  a5[5] = vmlaq_n_f32(v20, v23, result.f32[0]);
  v24 = vsubq_f32(vmlaq_lane_f32(v18, v21, *result.f32, 1), v22);
  a5[6] = vmlaq_n_f32(v22, v24, v7.f32[0]);
  a5[7] = vmlaq_n_f32(v22, v24, result.f32[0]);
  return result;
}

uint64_t __append(uint64_t a1, void *__src, size_t __n)
{
  v3 = __n;
  *&v37[5] = *MEMORY[0x277D85DE8];
  v6 = __n;
  v7 = *(a1 + 512);
  v8 = v7 + __n;
  v9 = *(a1 + 516);
  v10 = v7;
  if (v8 >= v9)
  {
    if (v9)
    {
      v11 = *(a1 + 516);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v8);
    *(a1 + 504) = C3DStackAllocatorReallocate(*(a1 + 2784), *(a1 + 504), v9, v12, 16);
    *(a1 + 656) = C3DStackAllocatorReallocate(*(a1 + 2784), *(a1 + 656), 4 * *(a1 + 516), 4 * v12, 16);
    *(a1 + 516) = v12;
    v10 = *(a1 + 512);
  }

  v13 = memcpy((*(a1 + 504) + v10), __src, v6);
  v15 = *(a1 + 512);
  if (v15 < v8)
  {
    v16 = a1 + 664;
    v17 = a1 + 1688;
    v18 = v7 + v3 - v15;
    do
    {
      v19 = *(a1 + 504);
      v20 = *(v19 + v15);
      v21 = *(v16 + 4 * *(v19 + v15));
      if (v21)
      {
        if (*(v19 + (v21 - 1)) != v20)
        {
          v22 = scn_default_log(v13, v14);
          v13 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            __append(v36, v37, v22);
          }
        }

        v23 = *(v17 + 4 * v20);
        if (!v23)
        {
          v24 = scn_default_log(v13, v14);
          v13 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            __append(v34, &v35, v24);
          }
        }

        v25 = v23 - 1;
        if (*(*(a1 + 504) + v25) != v20)
        {
          v26 = scn_default_log(v13, v14);
          v13 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            __append(v32, &v33, v26);
          }
        }

        v27 = *(a1 + 656);
        *(v27 + 4 * v25) = v15 + 1;
        *(v27 + 4 * v15) = 0;
        *(v17 + 4 * v20) = v15 + 1;
        if (*(v27 + 4 * v15) > v8)
        {
          v28 = scn_default_log(v13, v14);
          v13 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
          if (v13)
          {
            __append(v30, &v31, v28);
          }
        }
      }

      else
      {
        *(v16 + 4 * *(v19 + v15)) = v15 + 1;
        *(v17 + 4 * v20) = v15 + 1;
        *(*(a1 + 656) + 4 * v15) = 0;
      }

      ++v15;
      --v18;
    }

    while (v18);
    LODWORD(v15) = *(a1 + 512);
  }

  *(a1 + 512) = v8;
  return v15;
}

uint64_t __addFroxelLightIndicesInBuffer(uint64_t a1, unsigned __int8 *__src, size_t __n)
{
  v5 = a1;
  *&v16[5] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4 * *__src + 664);
  if (v6)
  {
    v7 = *(a1 + 512);
    v8 = __n;
    while (1)
    {
      v9 = v6 - 1;
      if (__n < 2)
      {
        v11 = 1;
      }

      else
      {
        v10 = v6 <= v7 ? v7 : v6;
        v11 = v10 - v6 + 1;
        v12 = 1;
        while (v10 != v6)
        {
          if (*(*(v5 + 504) + v6) != __src[v12])
          {
            v11 = v12;
            break;
          }

          ++v12;
          ++v6;
          if (v8 == v12)
          {
            return v9;
          }
        }
      }

      if (v11 == __n)
      {
        break;
      }

      if (*(*(v5 + 656) + 4 * v9) > v7)
      {
        v13 = scn_default_log(a1, __src);
        a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
        if (a1)
        {
          __addFroxelLightIndicesInBuffer(v15, v16, v13);
        }
      }

      v6 = *(*(v5 + 656) + 4 * v9);
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    LOWORD(v9) = __append(v5, __src, __n);
  }

  return v9;
}

uint64_t __appendUnoptimized(uint64_t a1, char **a2, void *__src, size_t __n)
{
  v4 = __n;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = v8 + __n;
  if (v8 + __n >= v7)
  {
    if (v7)
    {
      v11 = *(a2 + 3);
    }

    else
    {
      v11 = 4096;
    }

    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v9);
    v10 = C3DStackAllocatorReallocate(a1, *a2, v7, v12, 16);
    *a2 = v10;
    *(a2 + 3) = v12;
    v8 = *(a2 + 2);
  }

  else
  {
    v10 = *a2;
  }

  memcpy(&v10[v8], __src, v4);
  result = *(a2 + 4);
  *(a2 + 2) = v9;
  return result;
}

_DWORD *__radixSortDecreasingNonZero(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  bzero(v19, 0x400uLL);
  v7 = 0;
  if (v6)
  {
    v8 = v6;
    v9 = a2;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11)
      {
        ++v7;
      }

      ++v19[v10];
      --v8;
    }

    while (v8);
  }

  bzero(v18, 0x400uLL);
  v12 = 0;
  v13 = 0;
  do
  {
    v13 += v19[v12];
    v18[++v12] = v13;
  }

  while (v12 != 255);
  result = C3DStackAllocatorAllocate(a1, 4 * v7);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v16 = a2[i];
      if (v16)
      {
        v17 = v18[v16];
        v18[v16] = v17 + 1;
        result[(v6 + ~v17)] = i;
      }
    }
  }

  *a3 = v7;
  return result;
}

unsigned int *__compactLightIndices(uint64_t a1, uint64_t a2, int a3)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *a1 * HIDWORD(*a1);
  v8 = (v7 * v6);
  v25 = v7 * v6;
  v9 = C3DStackAllocatorAllocate(*(a1 + 2784), 4 * v8);
  v10 = v9;
  if (v8)
  {
    if (a3 != 8 && a3 != 4)
    {
      __compactLightIndices();
    }

    v11 = (a2 + 2);
    v12 = (a2 + 4);
    v13 = v9;
    do
    {
      if (a3 == 8)
      {
        v14 = HIBYTE(*(v12 - 1)) + *(v12 - 1) + *v12;
      }

      else
      {
        v14 = HIBYTE(*v11) + *v11;
      }

      *v13++ = v14;
      v11 += 2;
      v12 += 8;
      --v8;
    }

    while (v8);
  }

  result = __radixSortDecreasingNonZero(*(a1 + 2784), v9, &v25);
  v17 = v25;
  if (v25)
  {
    v18 = result;
    do
    {
      v20 = *v18++;
      v19 = v20;
      v21 = v10[v20];
      if (!v21)
      {
        v22 = scn_default_log(result, v16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          __compactLightIndices(v26, v27, v22);
        }
      }

      if (a3 == 8)
      {
        v23 = 8 * v19;
        v24 = (*(a1 + 488) + *(a2 + 8 * v19));
      }

      else
      {
        if (a3 != 4)
        {
          __compactLightIndices();
        }

        v23 = 4 * v19;
        v24 = (*(a1 + 488) + *(a2 + 4 * v19));
      }

      result = __addFroxelLightIndicesInBuffer(a1, v24, v21);
      *(a2 + v23) = result;
      --v17;
    }

    while (v17);
  }

  return result;
}

float32x4_t *__computeLightsFlagsForAxis(float32x4_t *result, unsigned int a2)
{
  v3 = &result->i32[a2 & 3];
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = 0;
    v7 = (v3 + 4);
    v8 = vld1q_dup_f32(v7);
    v53 = v8;
    v54 = result[((2 * a2) | 1) + 2];
    v9 = 0uLL;
    v52 = vsubq_f32(vnegq_f32(result[2 * a2 + 2]), v54);
    v10 = vmlaq_f32(v54, 0, v52);
    v11 = vmulq_f32(v10, v10);
    v8.f32[0] = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v8.u32[0]);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32)));
    v12 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v8.u32[0], vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v13 = result + 171;
    v14 = result[9].i64[0] + 32;
    do
    {
      v15 = v13->i64[a2];
      v16 = v5[173].i32[2];
      v57 = v12;
      v58 = vaddq_f32(v53, v9);
      v17 = vmlaq_f32(v54, v52, v58);
      v18 = vmulq_f32(v17, v17);
      *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v19);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
      v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
      v55 = vnegq_f32(v20);
      v56 = v20;
      v60[0] = vdupq_lane_s32(*v12.i8, 0);
      v60[1] = vdupq_lane_s32(*v12.i8, 1);
      v60[2] = vdupq_laneq_s32(v12, 2);
      v60[3] = vdupq_laneq_s32(v12, 3);
      v21 = (v15 + 4 * (v16 * v6));
      v59[0] = vdupq_lane_s32(*v55.f32, 0);
      v59[1] = vdupq_lane_s32(*v55.f32, 1);
      v59[2] = vdupq_laneq_s32(v55, 2);
      v59[3] = vdupq_laneq_s32(v55, 3);
      bzero(v21, (4 * v16));
      scn_sphere_x4_filter(v5[9].i64[1], v5[10].i32[0], v60, v59, v5[10].i64[1]);
      memcpy(&v21[4 * v5[169].i64[1]], v5[10].i64[1], v5[11].u32[0]);
      scn_cone_x4_filter(v5[11].i64[1], v5[12].i32[0], v60, v59, v5[12].i64[1]);
      result = memcpy(&v21[4 * v5[170].i64[0]], v5[12].i64[1], v5[13].u32[0]);
      v22 = v5[170].u32[3];
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = v14;
        do
        {
          v25 = v24[-2];
          v26 = v24[-1];
          v27 = v24[1];
          v28 = v24[2];
          v29 = vmulq_f32(v57, v26);
          v30 = vmulq_f32(v57, *v24);
          v31 = vmulq_f32(v57, v27);
          v32 = vmulq_f32(v57, v25);
          v33 = vzip1q_s32(v29, v31);
          v34 = vzip2q_s32(v29, v31);
          v35 = vzip1q_s32(v30, v32);
          v36 = vzip2q_s32(v30, v32);
          v37 = vaddq_f32(vzip2q_s32(v34, v36), vaddq_f32(vzip1q_s32(v34, v36), vaddq_f32(vzip1q_s32(v33, v35), vzip2q_s32(v33, v35))));
          v38 = vabsq_f32(vmulq_f32(v28, v37));
          v50 = v37.f32[3] > -(v38.f32[2] + vaddv_f32(*v38.f32));
          v39 = vmulq_f32(v26, v55);
          v40 = vmulq_f32(*v24, v55);
          v41 = vmulq_f32(v27, v55);
          v42 = vmulq_f32(v25, v55);
          v43 = vzip1q_s32(v39, v41);
          v44 = vzip2q_s32(v39, v41);
          v45 = vzip1q_s32(v40, v42);
          v46 = vzip2q_s32(v40, v42);
          v47 = vaddq_f32(vzip2q_s32(v44, v46), vaddq_f32(vzip1q_s32(v44, v46), vaddq_f32(vzip1q_s32(v43, v45), vzip2q_s32(v43, v45))));
          v48 = vabsq_f32(vmulq_f32(v28, v47));
          v49 = -(v48.f32[2] + vaddv_f32(*v48.f32));
          v50 = v50 && v47.f32[3] > v49;
          if (v50)
          {
            v51 = &v21[4 * v5[170].i64[1]];
            v51[v23 >> 3] |= 1 << (v23 & 7);
          }

          ++v23;
          v24 += 5;
        }

        while (v22 != v23);
      }

      ++v6;
      v12 = v56;
      v9 = v58;
    }

    while (v6 != v4);
  }

  return result;
}

void SCNMTLClusterSystem::~SCNMTLClusterSystem(SCNMTLClusterSystem *this)
{
  for (i = 0; i != 56; i += 8)
  {
    v3 = this + i;
    v4 = *(this + i + 72);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 9) = 0;
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 16) = 0;
    }
  }
}

uint64_t SCNMTLClusterSystem::compute(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v202 = v1;
  v13 = v12;
  v15 = v14;
  *(&v309[2] + 4) = *MEMORY[0x277D85DE8];
  v14[24] = 0u;
  v14[25] = 0u;
  v14[22] = 0u;
  v14[23] = 0u;
  v14[20] = 0u;
  v14[21] = 0u;
  v14[18] = 0u;
  v14[19] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  *v14 = 0u;
  v14[1] = 0u;
  v16 = *(v8 + 592);
  v17 = *(v8 + 266);
  v18 = *(v8 + 267);
  v19 = *(v8 + 268);
  v20 = *(v8 + 269);
  v21 = *(v8 + 270);
  v22 = *(v8 + 271);
  v23 = *(v9 + 272);
  v24 = *(v9 + 273);
  v25 = *(v9 + 274);
  v26 = *(v9 + 275);
  v27 = *(v9 + 276);
  v28 = *(v9 + 277);
  v229 = v9;
  v230 = v16;
  v231 = v7;
  v232 = v2;
  v233 = v303;
  v234 = v302;
  v235 = v301;
  v29 = v18;
  v252.i64[1] = v18;
  v208 = v20;
  v212 = v17;
  v252.i64[0] = v17;
  v253.i64[1] = v20;
  v216 = v19;
  v218 = v26;
  v253.i64[0] = v19;
  v206 = v22;
  v255 = v22;
  v222 = v23;
  v224 = v21;
  v254 = v21;
  v226 = v24;
  v257 = v24;
  v256 = v23;
  v259 = v26;
  v220 = v25;
  v258 = v25;
  v30 = v28;
  v261 = v28;
  v31 = v27;
  v260 = v27;
  _addLightsInFrustum(v21);
  result = C3DLightingSystemHasLocalLights(v7);
  if (result)
  {
    StackAllocator = C3DEngineContextGetStackAllocator(v16, v33);
    C3DStackAllocatorPushFrame(StackAllocator, v34);
    v36 = vcvtq_f32_u32(*v13);
    v37 = v13[1].i64[0];
    if (v37)
    {
      v38 = v37 * v11;
      v15[5].f32[0] = v38;
      v40.i32[1] = HIDWORD(v202);
      v39.f32[0] = LODWORD(v202) / v38;
      v39.i32[1] = v36.i32[1];
      v39.i64[1] = v36.i64[1];
      v40.i32[0] = (v38 * ceilf(v39.f32[0]));
      v36 = v39;
    }

    else
    {
      v40 = *&v202;
    }

    v41 = v5;
    if (HIDWORD(v37))
    {
      v42 = HIDWORD(v37) * v11;
      v43.i32[0] = v36.i32[0];
      v43.f32[1] = v40.u32[1] / v42;
      v15[5].f32[1] = v42;
      v43.i64[1] = v36.i64[1];
      v40.i32[1] = (v42 * ceilf(v43.f32[1]));
      v36 = v43;
    }

    *v35.f32 = vcvt_u32_f32(vrndp_f32(*v36.f32));
    v44 = v35;
    v44.i32[2] = v36.f32[2];
    v176 = v44;
    __asm { FMOV            V1.4S, #1.0 }

    v203 = vdivq_f32(_Q1, v36);
    _Q1.f32[0] = v9[593];
    v50 = v9[594];
    *v51.f32 = vcvt_f32_u32(*v35.f32);
    *v52.f32 = vcvt_f32_u32(v40);
    v51.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(_Q1.f32[0], v36, 2)), vextq_s8(v36, v36, 8uLL).u32[0]);
    v52.f32[2] = _Q1.f32[0] - v50;
    v52.f32[3] = _Q1.f32[0] - v50;
    v15[3] = v203;
    v15[4] = vdivq_f32(v51, v52);
    v175 = v36.f32[2];
    v180 = v35.i32[1];
    v196 = v35;
    v53 = v35.i32[0];
    v183 = v15[6].i32[3];
    if (v183)
    {
      v54 = 8;
    }

    else
    {
      v54 = 4;
    }

    v171 = v54;
    if (v183)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v56 = (v35.i32[1] * v36.f32[2] * v35.i32[0]) << v55;
    SCNMTLBufferPool::allocate(v15, v3, v56);
    v182 = v15->i64[0];
    bzero(v15->i64[0], v56);
    bzero(&v268, 0xA60uLL);
    v252 = v176;
    v253 = v203;
    v255 = v29;
    v254 = v212;
    v257 = v208;
    v256 = v216;
    v259 = v206;
    v258 = v224;
    v261 = v226;
    v260 = v222;
    v263 = v218;
    v262 = v220;
    v265 = v30;
    v264 = v31;
    v266 = v303;
    v267 = v302;
    v268 = v301;
    *v300 = StackAllocator;
    v57 = v15[5].i64[1];
    v204 = v57;
    v58 = HIDWORD(v57);
    v270 = (HIDWORD(v57) + 3) >> 2;
    if ((HIDWORD(v57) + 3) >= 4)
    {
      Aligned = C3DStackAllocatorAllocateAligned(StackAllocator, ((HIDWORD(v57) + 3) >> 2) << 6, 16, 0);
      scn_sphere_x4_fill(Aligned, v266, v58);
      v272 = (v270 + 1) >> 1;
      v271 = C3DStackAllocatorAllocateAligned(StackAllocator, v272, 16, 0);
    }

    v172 = v41;
    v59 = v15[6].i64[0];
    v200 = v59;
    v60 = HIDWORD(v59);
    v274 = (HIDWORD(v59) + 3) >> 2;
    if ((HIDWORD(v59) + 3) >= 4)
    {
      v273 = C3DStackAllocatorAllocateAligned(StackAllocator, ((HIDWORD(v59) + 3) >> 2) << 7, 16, 0);
      scn_cone_x4_fill(v273, v302, v60);
      v276 = (v274 + 1) >> 1;
      v275 = C3DStackAllocatorAllocateAligned(StackAllocator, v276, 16, 0);
    }

    v61 = 0;
    HIDWORD(v63) = HIDWORD(v200);
    HIDWORD(v62) = HIDWORD(v204);
    LODWORD(v62) = 0;
    LODWORD(v63) = (v58 + 31) >> 5;
    v292 = v62;
    v293 = v63;
    v64 = v15[6].i64[1];
    v194 = v64;
    LODWORD(v64) = ((v60 + 31) >> 5) + v63;
    v294 = v64;
    v299 = v64 + ((HIDWORD(v64) + 31) >> 5);
    v65 = 4 * v299;
    do
    {
      v228 = v176;
      v295[v61] = C3DStackAllocatorAllocateZero(StackAllocator, (*(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) * v65));
      v297 = C3DStackAllocatorAllocate(StackAllocator, v65);
      v298 = C3DStackAllocatorAllocate(StackAllocator, v65);
      __computeLightsFlagsForAxis(&v252, v61++);
    }

    while (v61 != 3);
    scn_plane_intersect_3_planes(v31, v30, v224, v206, v216, v208, &v284);
    scn_plane_intersect_3_planes(v31, v30, v212, v29, v224, v206, &v285);
    scn_plane_intersect_3_planes(v31, v30, v216, v208, v222, v226, &v286);
    scn_plane_intersect_3_planes(v31, v30, v222, v226, v212, v29, &v287);
    scn_plane_intersect_3_planes(v220, v218, v224, v206, v216, v208, &v288);
    scn_plane_intersect_3_planes(v220, v218, v212, v29, v224, v206, &v289);
    scn_plane_intersect_3_planes(v220, v218, v216, v208, v222, v226, &v290);
    scn_plane_intersect_3_planes(v220, v218, v222, v226, v212, v29, v291);
    if (v175)
    {
      v181 = 0;
      v66.i64[1] = v196.i64[1];
      *v66.f32 = vceqz_s32(*v196.f32);
      v219 = v194;
      v217 = v15[7].i64[0];
      v223 = v204;
      v221 = v200;
      v174 = v66.i8[4];
      v179 = v66.i8[0];
      v199 = v53;
      do
      {
        if (v299)
        {
          if (*(v296 + 4 * v299 * v181))
          {
            goto LABEL_27;
          }

          v67 = 1;
          do
          {
            v68 = v67;
            if (v299 == v67)
            {
              break;
            }
          }

          while (!*(v296 + 4 * v299 * v181 + 4 * v67++));
          if (v68 < v299)
          {
LABEL_27:
            v66 = __computeFrustumExtrema(&v252, 0, 0, v181, &v244, v66);
            if ((v174 & 1) == 0)
            {
              v198 = 0;
              v192 = v244;
              v193 = v245;
              v190 = v249;
              v191 = vsubq_f32(v245, v244);
              v187 = v246;
              v188 = vsubq_f32(v249, v248);
              v184 = v251;
              v189 = v248;
              v185 = v250;
              v186 = v247;
              v66 = vsubq_f32(v250, v248);
              v177 = v66;
              v178 = vsubq_f32(v246, v244);
              do
              {
                v72 = v299;
                if (v299)
                {
                  v73 = 0;
                  v74 = v298;
                  v75 = (v296 + 4 * v181 * v299);
                  v76 = (v295[1] + 4 * v299 * v198);
                  do
                  {
                    v78 = *v76++;
                    v77 = v78;
                    v79 = *v75++;
                    v80 = v79 & v77;
                    *v74++ = v80;
                    v73 |= v80;
                    --v72;
                  }

                  while (v72);
                  if (v73 && (v179 & 1) == 0)
                  {
                    v81 = 0;
                    v66 = vmulq_n_f32(v177, v198);
                    v195 = v66;
                    v197 = vmulq_n_f32(v178, v198);
                    v82 = (v198 + v181 * v180) * v53;
                    do
                    {
                      v83 = v299;
                      if (v299)
                      {
                        v84 = 0;
                        v85 = v297;
                        v86 = v298;
                        v87 = (v295[0] + 4 * v299 * v81);
                        v88 = v297;
                        do
                        {
                          v90 = *v86++;
                          v89 = v90;
                          v91 = *v87++;
                          v92 = v91 & v89;
                          *v88++ = v92;
                          v84 |= v92;
                          --v83;
                        }

                        while (v83);
                        if (v84)
                        {
                          v201 = v82;
                          v205 = v81;
                          v93 = vmlaq_n_f32(v197, v191, v81);
                          v94 = vmlaq_n_f32(v195, v188, v81);
                          v95 = vaddq_f32(v192, v93);
                          v236 = v95;
                          v237 = vaddq_f32(v193, v93);
                          v238 = vaddq_f32(v187, v93);
                          v239 = vaddq_f32(v93, v186);
                          v240 = vaddq_f32(v189, v94);
                          v241 = vaddq_f32(v190, v94);
                          v242 = vaddq_f32(v185, v94);
                          v243 = vaddq_f32(v94, v184);
                          v95.i32[3] = 0;
                          v96 = 16;
                          v97 = v95;
                          do
                          {
                            v98 = *(&v236 + v96);
                            v98.i32[3] = 0;
                            v95 = vminq_f32(v95, v98);
                            v97 = vmaxq_f32(v97, v98);
                            v96 += 16;
                          }

                          while (v96 != 128);
                          v99.i64[0] = 0x3F0000003F000000;
                          v99.i64[1] = 0x3F0000003F000000;
                          v103 = vmulq_f32(vaddq_f32(v97, v95), v99);
                          v100 = vmulq_f32(vsubq_f32(v97, v95), v99);
                          v101 = vmulq_f32(v100, v100);
                          v102 = sqrtf(v101.f32[2] + vaddv_f32(*v101.f32));
                          *&v103.i32[3] = v102;
                          v225 = v102;
                          v227 = v103;
                          v281 = 0;
                          v104 = HIDWORD(v294);
                          if ((HIDWORD(v294) + 31) >= 0x20)
                          {
                            v109 = 0;
                            v207 = (HIDWORD(v294) + 31) >> 5;
                            v209 = &v85[v294];
                            v110 = v102 * v102;
                            v213 = vdupq_laneq_s32(v103, 3);
                            while (1)
                            {
                              v111 = v209[v109];
                              if (v111)
                              {
                                break;
                              }

LABEL_54:
                              if (++v109 == v207)
                              {
                                goto LABEL_42;
                              }
                            }

                            v112 = 32 * v109;
                            while (1)
                            {
                              v113 = __clz(__rbit32(v111));
                              v114 = v113 | v112;
                              if ((v113 | v112) >= v104)
                              {
                                v115 = scn_default_log(appended, v71);
                                appended = os_log_type_enabled(v115, OS_LOG_TYPE_FAULT);
                                if (appended)
                                {
                                  SCNMTLClusterSystem::compute(v304, &v305, v115);
                                }
                              }

                              v116 = &v301[5 * v114];
                              v117 = v116[4];
                              v118 = vsubq_f32(v227, *v116);
                              v119 = vmulq_f32(v116[1], v118);
                              v120 = vmulq_f32(v118, v116[2]);
                              v121 = vmulq_f32(v118, v116[3]);
                              v122 = vzip2q_s32(v119, v121);
                              v123 = vzip1q_s32(vzip1q_s32(v119, v121), v120);
                              v124 = vtrn2q_s32(v119, v120);
                              v124.i32[2] = v121.i32[1];
                              v125 = vabsq_f32(vaddq_f32(vzip1q_s32(v122, vdupq_laneq_s32(v120, 2)), vaddq_f32(v123, v124)));
                              v126 = vsubq_f32(v125, v117);
                              v126.i32[3] = 0;
                              v127 = vmaxnmq_f32(v126, 0);
                              v128 = vmulq_f32(v127, v127);
                              if ((v128.f32[2] + vaddv_f32(*v128.f32)) <= v110)
                              {
                                v129 = v281++;
                                v277[v129] = v114 + v219;
                                if (*(v217 + ((v114 + v219) << 8)) >= 1.0)
                                {
                                  v128.f32[0] = fmaxf(fmaxf(v117.f32[0], v117.f32[2]), v117.f32[1]) * 0.090909;
                                  v130 = vcgeq_f32(vsubq_f32(vsubq_f32(v117, vdupq_lane_s32(*v128.f32, 0)), v125), v213);
                                  v130.i32[3] = v130.i32[2];
                                  if ((vminvq_u32(v130) & 0x80000000) != 0)
                                  {
                                    break;
                                  }
                                }
                              }

                              v111 &= ~(1 << v113);
                              if (!v111)
                              {
                                goto LABEL_54;
                              }
                            }
                          }

LABEL_42:
                          v105 = &v277[v281];
                          v279 = 0;
                          v106 = v297;
                          v107 = HIDWORD(v292);
                          if ((HIDWORD(v292) + 31) >= 0x20)
                          {
                            v131 = 0;
                            v210 = (HIDWORD(v292) + 31) >> 5;
                            v214 = &v297[v292];
                            do
                            {
                              v132 = *&v214[4 * v131];
                              if (v132)
                              {
                                v133 = 32 * v131;
                                do
                                {
                                  v134 = __clz(__rbit32(v132));
                                  v135 = v134 | v133;
                                  if ((v134 | v133) >= v107)
                                  {
                                    v136 = scn_default_log(appended, v71);
                                    appended = os_log_type_enabled(v136, OS_LOG_TYPE_FAULT);
                                    if (appended)
                                    {
                                      SCNMTLClusterSystem::compute(v306, &v307, v136);
                                    }
                                  }

                                  v137 = v225 + COERCE_FLOAT(HIDWORD(v303[v135]));
                                  v138 = vsubq_f32(v303[v135], v227);
                                  v139 = vmulq_f32(v138, v138);
                                  if ((v139.f32[2] + vaddv_f32(*v139.f32)) <= (v137 * v137))
                                  {
                                    v140 = v279++;
                                    v105[v140] = v223 + v135;
                                  }

                                  v132 &= ~(1 << v134);
                                }

                                while (v132);
                              }

                              ++v131;
                            }

                            while (v131 != v210);
                            v108 = v279;
                            v106 = v297;
                            v53 = v199;
                          }

                          else
                          {
                            v108 = 0;
                            v53 = v199;
                          }

                          v280 = 0;
                          v141 = HIDWORD(v293);
                          if ((HIDWORD(v293) + 31) >= 0x20)
                          {
                            v143 = 0;
                            v144 = &v105[v108];
                            v211 = &v106[v293];
                            v215 = (HIDWORD(v293) + 31) >> 5;
                            do
                            {
                              v145 = v211[v143];
                              if (v145)
                              {
                                v146 = 32 * v143;
                                do
                                {
                                  v147 = __clz(__rbit32(v145));
                                  v148 = v147 | v146;
                                  if ((v147 | v146) >= v141)
                                  {
                                    v149 = scn_default_log(appended, v71);
                                    appended = os_log_type_enabled(v149, OS_LOG_TYPE_FAULT);
                                    if (appended)
                                    {
                                      SCNMTLClusterSystem::compute(v308, v309, v149);
                                    }
                                  }

                                  v150 = &v302[3 * v148];
                                  v151 = v150[2].f32[0];
                                  v152 = vsubq_f32(v227, *v150);
                                  v153 = vmulq_f32(v152, v152);
                                  v154 = v153.f32[2] + vaddv_f32(*v153.f32);
                                  if (v154 <= ((v225 + v151) * (v225 + v151)))
                                  {
                                    v155 = v150[2].f32[2];
                                    v156 = vmulq_f32(v152, v150[1]);
                                    v157 = v156.f32[2] + vaddv_f32(*v156.f32);
                                    v158 = sqrtf(v154 - (v157 * v157));
                                    v159 = v150[2].f32[3] * v155;
                                    v160 = (v159 * v157) - (v155 * v158);
                                    if (v160 >= 0.0 || (v161 = ((v155 * v157) + (v159 * v158)) - fminf(fmaxf((v155 * v157) + (v159 * v158), 0.0), v151), ((v160 * v160) + (v161 * v161)) <= (v225 * v225)))
                                    {
                                      v162 = v280++;
                                      v144[v162] = v148 + v221;
                                    }
                                  }

                                  v145 &= ~(1 << v147);
                                }

                                while (v145);
                              }

                              ++v143;
                            }

                            while (v143 != v215);
                            v142 = v280;
                            v108 = v279;
                            v53 = v199;
                          }

                          else
                          {
                            v142 = 0;
                          }

                          v81 = v205;
                          v82 = v201;
                          if (v281 + v142 + v108)
                          {
                            appended = __appendUnoptimized(*v300, v282, v277, v281 + v142 + v108);
                            v66.i32[3] = 0;
                            v66.i16[0] = appended;
                            v66.i16[1] = v279 | (v280 << 8);
                            *(v66.i64 + 4) = v281;
                          }

                          else
                          {
                            v66 = 0uLL;
                          }

                          if (v183)
                          {
                            *(v182 + 8 * v201) = v66.i64[0];
                          }

                          else
                          {
                            v66 = vmovl_u16(*v66.f32);
                            v163 = (v182 + 4 * v201);
                            v163[1] = v66.i16[2];
                            *v163 = v66.i16[0];
                          }
                        }
                      }

                      ++v81;
                      ++v82;
                    }

                    while (v81 != v53);
                  }
                }

                ++v198;
              }

              while (v198 != v180);
            }
          }
        }

        ++v181;
      }

      while (v181 != v175);
    }

    __compactLightIndices(&v252, v182, v171);
    v164 = v283;
    if (v283 <= 1)
    {
      v165 = 1;
    }

    else
    {
      v165 = v283;
    }

    v166 = (v165 - 1) | ((v165 - 1) >> 1) | (((v165 - 1) | ((v165 - 1) >> 1)) >> 2);
    v167 = v166 | (v166 >> 4) | ((v166 | (v166 >> 4)) >> 8);
    v244.i16[0] = (v167 | HIWORD(v167)) + 1;
    *(v244.i32 + 2) = 0;
    *(&v244.i32[1] + 1) = 0;
    v244.i8[9] = 0;
    *(&v244.i32[2] + 2) = 851969;
    v244.i16[7] = 0;
    v245.i32[0] = 0;
    v168 = SCNMTLTexturePool::allocate(v172, &v244, 0, 1);
    v15[2].i64[0] = v168;
    if (v164)
    {
      v244 = 0uLL;
      v245.i64[0] = 0;
      v245.i64[1] = v164;
      v246 = vdupq_n_s64(1uLL);
      [v168 replaceRegion:&v244 mipmapLevel:0 withBytes:v282[2] bytesPerRow:v283];
    }

    v236.i16[1] = v176.i16[2];
    v236.i16[0] = v176.i16[0];
    v236.i16[2] = v176.i16[4];
    if (v183)
    {
      v169 = 113;
    }

    else
    {
      v169 = 63;
    }

    v236.i16[3] = 0;
    v236.i32[2] = 66055;
    v236.i32[3] = v169;
    v237.i32[0] = 0;
    v244 = *v15;
    v245.i64[0] = v15[1].i64[0];
    v15[1].i64[1] = SCNMTLTexturePool::allocateWithStagingBuffer(v172, &v236, &v244, 1);
    return C3DStackAllocatorPopFrame(StackAllocator, v170);
  }

  return result;
}

void SCNMTLClusterSystem::displayInfoDebug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t *a5)
{
  v103 = *MEMORY[0x277D85DE8];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a3, 0);
  if (!AuthoringEnvironment || !a5[1].i64[1])
  {
    return;
  }

  v79 = a4;
  v80 = a3;
  RenderContext = C3DEngineContextGetRenderContext(a3, v9);
  v85 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v11 = [a5[1].i64[1] width];
  v89 = [a5[1].i64[1] height];
  v12 = [a5[1].i64[1] depth];
  v14 = 0;
  v78 = a5[3];
  v81 = v12;
  v82 = a5 + 6;
  v15 = &a5[5].i8[8];
  v16 = (a1 + 128);
  v83 = &a5[5].i8[8];
  v84 = a5;
  do
  {
    v17 = v15;
    if (v14 != 2)
    {
      if (v14 != 3)
      {
        goto LABEL_23;
      }

      v17 = v82;
    }

    v87 = *v17;
    v86 = WORD2(*v17);
    if (v86 >= 1)
    {
      if (!*v16)
      {
        if (v14 == 2)
        {
          Sphere = C3DMeshCreateSphere(0, 12, 1, 1.0, 1.0);
        }

        else
        {
          Sphere = C3DMeshCreateCone(0, 12, 1, 0.0, 1.0, 1.0);
        }

        *v16 = Sphere;
      }

      v19 = RenderContext;
      if (!*(v16 - 7))
      {
        if (v14 == 2)
        {
          v20 = @"debug_omni_vert";
        }

        else
        {
          v20 = @"debug_spot_vert";
        }

        *(v16 - 7) = C3DFXMetalProgramCreateFromDefaultLibrary(v20, @"debug_light_frag");
      }

      v21 = [(SCNMTLResourceManager *)v85 renderResourceForMesh:1 dataKind:?];
      v22 = *(v16 - 7);
      v24 = C3DBlendStatesDefaultOver(v21, v23);
      v25 = [(SCNMTLResourceManager *)v21 commandQueue];
      v27 = [(SCNMTLMesh *)v21 vertexDescriptorHash];
      *(__src + 8) = 0u;
      *(&__src[1] + 8) = 0u;
      __src[0].i64[0] = v22;
      __src[2].i64[1] = v24;
      __src[3].i64[0] = 0;
      __src[3].i64[1] = 16777231;
      __src[4].i64[0] = v25;
      __src[4].i64[1] = v27;
      memset(&__src[5], 0, 40);
      RenderContext = v19;
      v28 = [objc_msgSend(v85 renderResourceForProgramDesc:__src renderPassDescriptor:{-[SCNMTLRenderContext currentRenderPassDescriptor](v19)), "state"}];
      if (*(a2 + 3376) != v28)
      {
        *(a2 + 3376) = v28;
        [*(a2 + 3392) setRenderPipelineState:v28];
      }

      [(SCNMTLRenderContext *)v19 _setSceneBufferAtVertexIndex:-1 fragmentIndex:?];
      a5 = v84;
      SCNMTLRenderCommandEncoder::setVertexBuffer(a2, v84[7].i64[1], v84[8].i64[0] + (v87 << 8), 1);
      MeshElements = C3DMeshGetMeshElements(*v16, 1);
      v15 = v83;
      if (MeshElements && CFArrayGetValueAtIndex(MeshElements, 0))
      {
        v30 = [SCNMTLResourceManager renderResourceForMeshElement:v85];
        [SCNMTLRenderContext _setMeshBuffers:?];
        [(SCNMTLRenderContext *)RenderContext _drawMeshElement:v30 instanceCount:v86];
      }
    }

LABEL_23:
    ++v14;
    ++v16;
  }

  while (v14 != 7);
  PointOfCulling = C3DEngineContextGetPointOfCulling(v80, v13);
  if (!PointOfCulling || PointOfCulling == C3DEngineContextGetPointOfView(v80, v32))
  {
    v54 = a2;
    v55 = *(a1 + 48);
    if (!v55 || (v56 = a1, ([v55 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)] & 1) == 0))
    {
      v57 = [-[SCNMTLResourceManager libraryManager](v85) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v57;
      __src[13].i64[1] = C3DBlendStatesDefaultOver(v57, v58);
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_vertex";
      __src[20].i64[0] = @"debug_cluster_frag";
      v59 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v59);

      memcpy(__dst, __src, 0x168uLL);
      v56 = a1;
      *(a1 + 48) = [v85 newRenderPipelineStateWithDesc:__dst];
    }

    v60 = *(v56 + 56);
    if (!v60 || ([v60 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)] & 1) == 0)
    {
      v61 = [-[SCNMTLResourceManager libraryManager](v85) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v61;
      __src[13].i64[1] = C3DBlendStatesDefaultOver(v61, v62);
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_VR_pos_vertex";
      __src[20].i64[0] = @"debug_light_indices_8_buffer_frag";
      v63 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v63);

      memcpy(__dst, __src, 0x168uLL);
      *(v56 + 56) = [v85 newRenderPipelineStateWithDesc:__dst];
    }

    [*(v54 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v85)];
    v64 = *(v56 + 64);
    if (!v64 || (v65 = [v64 matchesRenderPassDescriptor:-[SCNMTLRenderContext currentRenderPassDescriptor](RenderContext)], v66 = a1, (v65 & 1) == 0))
    {
      v67 = [-[SCNMTLResourceManager libraryManager](v85) frameworkLibrary];
      memset(&__src[8], 0, 232);
      memset(__src, 0, 120);
      __src[7].i64[1] = v67;
      __src[13].i64[1] = C3DBlendStatesDefaultOver(v67, v68);
      __src[19].i64[1] = @"scn_draw_fullscreen_quad_VR_pos_vertex";
      __src[20].i64[0] = @"debug_cluster_slices_frag";
      v69 = [(SCNMTLRenderContext *)RenderContext currentRenderPassDescriptor];
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], v69);

      memcpy(__dst, __src, 0x168uLL);
      v70 = [v85 newRenderPipelineStateWithDesc:__dst];
      v66 = a1;
      *(a1 + 64) = v70;
    }

    v71 = v66;
    if ([*(v66 + 48) state])
    {
      v72 = [*(v71 + 48) state];
      if (*(v54 + 3376) != v72)
      {
        *(v54 + 3376) = v72;
        [*(v54 + 3392) setRenderPipelineState:v72];
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(v54, a5[1].i64[1], 0);
      [(SCNMTLRenderContext *)RenderContext _setSceneBufferAtVertexIndex:0 fragmentIndex:?];
      SCNMTLRenderCommandEncoder::setFragmentBytes(v54, &a5[5], 8uLL, 1);
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v54, v73);
      SCNMTLRenderCommandEncoder::applyChangedStates(v54);
      [*(v54 + 3392) drawPrimitives:4 vertexStart:0 vertexCount:4];
      v71 = a1;
    }

    if ([*(v71 + 64) state])
    {
      v74 = [*(a1 + 64) state];
      if (*(v54 + 3376) != v74)
      {
        *(v54 + 3376) = v74;
        [*(v54 + 3392) setRenderPipelineState:v74];
      }

      v75 = [a5[1].i64[1] depth];
      v76.i32[0] = 0.5;
      v76.f32[1] = 0.5 / v75;
      v76.i32[2] = 0;
      v76.f32[3] = 1.0 - v76.f32[1];
      __src[0] = v76;
      SCNMTLRenderCommandEncoder::setVertexBytes(v54, __src, 0x10uLL, 0);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v54, a5[1].i64[1], 0);
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v54, v77);
      SCNMTLRenderCommandEncoder::applyChangedStates(v54);
      [*(v54 + 3392) drawPrimitives:4 vertexStart:0 vertexCount:4];
    }
  }

  else
  {
    __dst[6] = xmmword_21C2A1E10;
    __dst[7] = *"fff?333?";
    __dst[8] = xmmword_21C2A1E30;
    __dst[2] = xmmword_21C2A1DD0;
    __dst[3] = unk_21C2A1DE0;
    __dst[5] = unk_21C2A1E00;
    __dst[4] = xmmword_21C2A1DF0;
    __dst[1] = unk_21C2A1DC0;
    __dst[0] = *"333?333?333?";
    v33 = v79;
    scn_plane_intersect_3_planes(v79[10], v79[11], v79[4], v79[5], v79[2], v79[3], &v94);
    scn_plane_intersect_3_planes(v33[10], v33[11], *v33, v33[1], v33[4], v33[5], &v95);
    scn_plane_intersect_3_planes(v33[10], v33[11], v33[2], v33[3], v33[6], v33[7], &v96);
    scn_plane_intersect_3_planes(v33[10], v33[11], v33[6], v33[7], *v33, v33[1], &v97);
    scn_plane_intersect_3_planes(v33[8], v33[9], v33[4], v33[5], v33[2], v33[3], &v98);
    scn_plane_intersect_3_planes(v33[8], v33[9], *v33, v33[1], v33[4], v33[5], &v99);
    scn_plane_intersect_3_planes(v33[8], v33[9], v33[2], v33[3], v33[6], v33[7], &v100);
    scn_plane_intersect_3_planes(v33[8], v33[9], v33[6], v33[7], *v33, v33[1], v101);
    v34 = v78;
    __src[1] = v78;
    v35 = a1;
    v36 = v89;
    v37 = v81;
    if (v81)
    {
      v88 = 0;
      v38 = 0;
      v39 = a5[6].i32[3];
      v40 = a5->i64[0];
      do
      {
        v41 = v35[10];
        if ((v41 == v38 || v41 >= v37) && v36 != 0)
        {
          v44 = 0;
          v45 = v88;
          do
          {
            v46 = v35[9];
            if ((v46 == v44 || v46 >= v36) && v11 != 0)
            {
              v49 = 0;
              do
              {
                v50 = v35[8];
                if (v50 >= v11 || v49 == v50)
                {
                  v52 = v45 + v49;
                  v34 = __computeFrustumExtrema(__src, v49, v44, v38, v92, v34);
                  if (v39)
                  {
                    v34.i64[0] = *(v40 + 8 * v52);
                  }

                  else
                  {
                    v34.i64[0] = *(v40 + 4 * v52);
                  }

                  v53 = v34.u8[3];
                  if (v34.u8[2] > ((v34.i16[1] & 0xFF00) >> 8))
                  {
                    v53 = v34.u8[2];
                  }

                  if (v53)
                  {
                    if (v53 >= 8)
                    {
                      v53 = 8;
                    }

                    C3DAuthoringEnvironmentAppendDebugAsymetricBox(AuthoringEnvironment, v92, 0, &__dst[v53]);
                  }

                  v35 = a1;
                }

                ++v49;
              }

              while (v11 != v49);
            }

            ++v44;
            v45 += v11;
            v36 = v89;
          }

          while (v44 != v89);
        }

        ++v38;
        v88 += v89 * v11;
        v37 = v81;
      }

      while (v38 != v81);
    }
  }
}

__int16 *std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(__int16 *result, __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 4 * v70) > *(*a3 + 4 * v71))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = v9[1];
      v77 = *v9;
      v78 = *v9;
      v79 = *a3;
      v80 = *(*a3 + 4 * v73);
      v81 = *(*a3 + 4 * v77);
      v82 = v9[2];
      v83 = *(*a3 + 4 * v75);
      if (v80 <= v81)
      {
        if (v83 > v80)
        {
          *v72 = v82;
          *v74 = v76;
          v84 = v9;
          result = v9 + 1;
          v77 = v73;
          v75 = v73;
          if (v83 > v81)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v79 + 4 * v88) > *(v79 + 4 * v75))
          {
            *v74 = v88;
            *(a2 - 1) = v76;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v79 + 4 * v89);
            if (v91 > *(v79 + 4 * v90))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 > *(v79 + 4 * v92))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v83 > v80)
        {
          v84 = v9;
          result = v9 + 2;
          v76 = *v9;
          goto LABEL_104;
        }

        *v9 = v76;
        v9[1] = v78;
        v84 = v9 + 1;
        result = v9 + 2;
        v76 = v78;
        if (v83 > v81)
        {
LABEL_104:
          *v84 = v82;
          *result = v78;
          v75 = v77;
          goto LABEL_106;
        }
      }

      v76 = v82;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,short *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * v19);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) > *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) > v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = v9[1];
      v33 = *(v15 + 4 * *(v13 - 1));
      v34 = *(v15 + 4 * v32);
      v35 = *(v13 - 1);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v33 <= v34)
      {
        if (v37 > v33)
        {
          *v31 = v36;
          *(a2 - 2) = v35;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) > *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v33)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v35;
        *v31 = v32;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) > v34)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v43 = v13[1];
      v42 = v13 + 1;
      v44 = v9[2];
      v45 = *(v15 + 4 * v43);
      v46 = *(v15 + 4 * v44);
      v47 = v43;
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v45 <= v46)
      {
        if (v49 > v45)
        {
          *v42 = v48;
          *(a2 - 3) = v47;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) > *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v45)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v47;
        *v42 = v44;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) > v46)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v44;
        }
      }

      v53 = *v14;
      v54 = *(v15 + 4 * *v14);
      v55 = *(v15 + 4 * *v31);
      v56 = *v31;
      v57 = *v42;
      v58 = *(v15 + 4 * *v42);
      if (v54 <= v55)
      {
        if (v58 > v54)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          v53 = v56;
          if (v58 > v55)
          {
            goto LABEL_59;
          }

          v53 = v57;
        }
      }

      else
      {
        if (v58 <= v54)
        {
          *v31 = v53;
          *v14 = v56;
          v31 = v14;
          v53 = v57;
          if (v58 <= v55)
          {
            v53 = v56;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v56;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * v23);
    if (v24 > v25)
    {
      if (v17 > v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) > v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 <= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) <= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) <= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,__SphereZComp &,short *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = *a3;
  v65 = *(*a3 + 4 * v9[1]);
  v66 = *(*a3 + 4 * v63);
  v67 = v9[1];
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v65 <= v66)
  {
    if (v69 > v65)
    {
      v9[1] = v68;
      *(a2 - 1) = v67;
      v85 = v9[1];
      v86 = *v9;
      if (*(v64 + 4 * v85) > *(v64 + 4 * v86))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 <= v65)
    {
      *v9 = v67;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v64 + 4 * v87) <= v66)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

__int16 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * v6);
  v10 = *(*a6 + 4 * v7);
  v11 = *a2;
  v12 = *a3;
  v13 = *(*a6 + 4 * *a3);
  if (v9 <= v10)
  {
    if (v13 <= v9)
    {
      v7 = *a3;
      v11 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
      v14 = *a2;
      v15 = *result;
      v7 = v6;
      if (*(v8 + 4 * v14) > *(v8 + 4 * v15))
      {
        *result = v14;
        *a2 = v15;
        v7 = *a3;
        v11 = *a3;
      }
    }
  }

  else
  {
    if (v13 <= v9)
    {
      *result = v11;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 4 * *a3) <= v10)
      {
        v7 = *a3;
        goto LABEL_12;
      }

      *a2 = v11;
    }

    else
    {
      *result = v12;
    }

    *a3 = v7;
    v11 = v7;
  }

LABEL_12:
  v16 = *a4;
  if (*(v8 + 4 * v16) > *(v8 + 4 * v7))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) > *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) > *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) > *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) > *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) > *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) > *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

__int16 *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 > *(v5 + 4 * v8))
        {
          v10 = v7;
          v11 = v8;
          v12 = v4;
          while (1)
          {
            *(result + v12 + 2) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(result + v12 - 2);
            v12 -= 2;
            if (v9 <= *(v5 + 4 * v11))
            {
              v13 = (result + v12 + 2);
              goto LABEL_10;
            }
          }

          v13 = result;
LABEL_10:
          *v13 = v10;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int16 *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 > *(v4 + 4 * v6))
        {
          v8 = v5;
          v9 = v6;
          v10 = result;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            --v10;
          }

          while (v7 > *(v4 + 4 * v9));
          *v10 = v8;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

__int16 *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 <= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 <= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 <= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 > *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 <= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 > *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

__int16 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,short *,__SphereZComp &>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) > v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) <= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) <= v6);
  }

  if (v8 < a2)
  {
    v12 = v7;
    v13 = *a2;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v12;
      do
      {
        v16 = v14[1];
        ++v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) > v6);
      do
      {
        v17 = *--v15;
        v13 = v17;
      }

      while (*(v5 + 4 * v17) <= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * a1[1]);
      v9 = *(*a3 + 4 * v6);
      v10 = a1[1];
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v8 <= v9)
      {
        if (v12 > v8)
        {
          a1[1] = v11;
          *(a2 - 1) = v10;
          v37 = a1[1];
          v38 = *a1;
          if (*(v7 + 4 * v37) > *(v7 + 4 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v12 <= v8)
      {
        *a1 = v10;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v7 + 4 * v51) <= v9)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = a1[1];
    v28 = *a1;
    v29 = *a1;
    v30 = *a3;
    v31 = *(*a3 + 4 * v24);
    v32 = *(*a3 + 4 * v28);
    v33 = a1[2];
    v34 = *(*a3 + 4 * v26);
    if (v31 <= v32)
    {
      if (v34 > v31)
      {
        *v23 = v33;
        *v25 = v27;
        v35 = a1;
        v36 = a1 + 1;
        v28 = v24;
        v26 = v24;
        if (v34 <= v32)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 > v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v27 = *a1;
LABEL_44:
        *v35 = v33;
        *v36 = v29;
        v26 = v28;
LABEL_46:
        v52 = *(a2 - 1);
        if (*(v30 + 4 * v52) > *(v30 + 4 * v26))
        {
          *v25 = v52;
          *(a2 - 1) = v27;
          v53 = *v25;
          v54 = *v23;
          v55 = *(v30 + 4 * v53);
          if (v55 > *(v30 + 4 * v54))
          {
            a1[1] = v53;
            a1[2] = v54;
            v56 = *a1;
            if (v55 > *(v30 + 4 * v56))
            {
              *a1 = v53;
              a1[1] = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v27 = v29;
      if (v34 > v32)
      {
        goto LABEL_44;
      }
    }

    v27 = v33;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 4 * v14);
  v18 = *(*a3 + 4 * *a1);
  v19 = a1[2];
  v20 = *(*a3 + 4 * v19);
  if (v17 > v18)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v19;
    *v22 = v15;
    goto LABEL_26;
  }

  if (v20 > v17)
  {
    a1[1] = v19;
    *v13 = v14;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 6; ; i += 2)
  {
    v42 = *v13;
    v43 = *(v16 + 4 * *v39);
    if (v43 > *(v16 + 4 * v42))
    {
      v44 = *v39;
      v45 = v42;
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 2;
        if (v46 == 2)
        {
          break;
        }

        v48 = *(a1 + v46 - 4);
        v45 = v48;
        v49 = *(v16 + 4 * v48);
        v46 = v47;
        if (v43 <= v49)
        {
          v50 = (a1 + v47);
          goto LABEL_34;
        }
      }

      v50 = a1;
LABEL_34:
      *v50 = v44;
      if (++v40 == 8)
      {
        break;
      }
    }

    v13 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__int16 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *,short *>(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) > *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) > *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,__SphereZComp &,short *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}