uint64_t MTLCompilerBuildRequestWithOptions(void *a1, char *a2, unint64_t a3, char a4, llvm::Module *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, char **a12)
{
  *a9 = 0;
  *a11 = 0;
  v19 = mach_absolute_time();
  v29 = 0;
  v20 = AGCCodeGenServiceBuildRequestInternal(a1, a2, a3, 0, 0, a5, &v29, a6, a7);
  if ((a4 & 2) != 0)
  {
    *a11 = 32;
    v21 = mach_absolute_time() - v19;
    if (getTimebaseInfo(void)::once != -1)
    {
      dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
    }

    v22 = v21 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
    v23 = v22 - a1[7];
    a1[5] = v22;
    a1[6] = v23;
    *a10 = a1 + 4;
  }

  if (v20)
  {
    InternalErrorMessage = 0;
    v25 = 0;
  }

  else
  {
    v27 = a1[2];
    v26 = (a1 + 2);
    InternalErrorMessage = v27;
    if (!v27)
    {
      InternalErrorMessage = generateInternalErrorMessage(v26, v29);
    }

    v25 = 1;
  }

  *a12 = InternalErrorMessage;
  return v25;
}

uint64_t AGCCodeGenServiceBuildRequestInternal(void *a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, llvm::Module *a6, _DWORD *a7, void *a8, void *a9)
{
  v116 = 0;
  v110 = 0;
  v111 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v108 = 0;
  v112 = 0;
  v105 = 0;
  v106 = 0;
  v109 = 0;
  v9 = 0;
  v107 = 0;
  v123 = 0;
  v10 = 0;
  v11 = 0;
  v143 = *MEMORY[0x277D85DE8];
  v12 = &a2[a3];
  v13 = a2;
  v122 = a7;
  v118 = a2;
  v119 = a3;
  while (2)
  {
    v14 = v9;
    v15 = *v13;
    if (a3 <= 4 * (v15 >> 8) || (v16 = &a2[4 * (v15 >> 8)], v16 - 4 >= v12))
    {
LABEL_157:
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *v13;
      v19 = v16 - v13;
      v20 = v16 - v13 - 4;
      switch(*v13)
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0x34u:
        case 0x6Bu:
          *a7 = v18;
          ++v11;
          v10 = 2;
          goto LABEL_146;
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x20u:
        case 0x21u:
        case 0x22u:
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Bu:
        case 0x2Cu:
        case 0x2Du:
        case 0x2Eu:
        case 0x2Fu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x5Au:
        case 0x5Bu:
        case 0x5Eu:
        case 0x5Fu:
        case 0x62u:
        case 0x65u:
        case 0x67u:
        case 0x68u:
        case 0x6Au:
          *a7 = v18;
          ++v11;
          v10 = 1;
          goto LABEL_146;
        case 0x3Au:
          v43 = *a7;
          if (*a7 > 0x1Fu || ((1 << v43) & 0xF200800A) == 0)
          {
            v44 = v43 - 90;
            if (v44 > 0x10 || ((1 << v44) & 0x10031) == 0)
            {
              goto LABEL_157;
            }
          }

          if (v20 < 0x60)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Bu:
          if (*a7 > 0x32u || ((1 << *a7) & 0x4000000007814) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_130;
        case 0x3Cu:
          v52 = *a7;
          if (*a7 > 0x1Fu || ((1 << v52) & 0xF200800A) == 0)
          {
            v53 = v52 - 90;
            if (v53 > 0x10 || ((1 << v53) & 0x10031) == 0)
            {
              goto LABEL_157;
            }
          }

          goto LABEL_110;
        case 0x3Du:
          v54 = *a7;
          if (*a7 != 9 && v54 != 105 && v54 != 26)
          {
            goto LABEL_157;
          }

LABEL_110:
          if (v16 - v13 == 4)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Eu:
          if (v16 - v13 == 4 || *a7 != 10)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Fu:
          v21 = *a7;
          if (*a7 <= 0x32u && ((1 << v21) & 0x4000000007814) != 0)
          {
            if (v20 < 0x48)
            {
              goto LABEL_157;
            }
          }

          else if (v20 < 0x48 || v21 != 5)
          {
            goto LABEL_157;
          }

LABEL_144:
          v123 = (v13 + 4);
LABEL_145:
          ++v11;
LABEL_146:
          v13 = v16;
          if (v18 != 96)
          {
            continue;
          }

          if ((v11 - 2) >= 8)
          {
            v17 = 0;
          }

          else
          {
            v17 = v10;
          }

          v14 = v9;
          break;
        case 0x40u:
          if (v20 < 0x84)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x41u:
          if (v20 < 0x40)
          {
            goto LABEL_157;
          }

          goto LABEL_146;
        case 0x42u:
          v45 = *a7;
          if (*a7 <= 0x32u && ((1 << v45) & 0x4000000007834) != 0)
          {
            if (v20 < 0x28)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v62 = isComputeShader(v45);
            if (v20 < 0x28)
            {
              goto LABEL_157;
            }

            a7 = v122;
            a2 = v118;
            a3 = v119;
            if ((v62 & 1) == 0)
            {
              goto LABEL_157;
            }
          }

          goto LABEL_145;
        case 0x43u:
          if (v20 < 8 || *a7 != 5)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x44u:
          if (*a7 <= 0x32u && ((1 << *a7) & 0x4000000007814) != 0 && v20 < 8)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x45u:
          if (v20 < 0x50)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x46u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x47u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x48u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x49u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v111 = (v13 + 4);
          goto LABEL_145;
        case 0x4Au:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v115 = (v13 + 4);
          goto LABEL_145;
        case 0x4Bu:
          v9 = (v13 + 4);
          *v137 = v13 + 4;
          *&v137[8] = v16 - v13 - 4;
          *&v137[16] = xmmword_20E70C4C0;
          v138 = 0;
          v139 = 1;
          if (v20 < 5)
          {
            goto LABEL_157;
          }

          v22 = *v9;
          if (v22 < 1)
          {
            goto LABEL_157;
          }

          if (v19 - 5 < v22)
          {
            goto LABEL_157;
          }

          v23 = &v9[v22];
          if (!flatbuffers::Verifier::VerifyTableStart(v137, &v9[v22]) || !flatbuffers::Table::VerifyOffset(&v9[v22], v137))
          {
            goto LABEL_157;
          }

          v24 = *v23;
          if (*&v23[-v24] < 5u)
          {
            goto LABEL_43;
          }

          if (!*&v23[-v24 + 4])
          {
            goto LABEL_26;
          }

          if (!flatbuffers::Verifier::VerifyVectorOrString(v137, &v23[*&v23[-v24 + 4] + *&v23[*&v23[-v24 + 4]]], 4uLL, 0))
          {
            goto LABEL_157;
          }

          v24 = *v23;
          if (*&v23[-v24] < 5u)
          {
            goto LABEL_43;
          }

LABEL_26:
          v25 = &v23[-v24];
          v26 = *(v25 + 2);
          if (!*(v25 + 2))
          {
            goto LABEL_43;
          }

          v27 = *&v23[v26];
          v28 = *&v23[v26 + v27];
          if (!v28)
          {
            goto LABEL_43;
          }

          v29 = 0;
          v30 = 4 * v28;
          v31 = v26 + v22;
          v32 = &v13[v26 + 8 + v22 + v27];
          v33 = &v13[v22 + 8 + v26 + v27 - *v137];
          v34 = &v13[v27 + 8 + v31];
          do
          {
            v35 = *&v32[v29];
            v36 = v33 + v29 + v35;
            if (!(((v36 & 3) == 0) | (v139 ^ 1) & 1))
            {
              goto LABEL_157;
            }

            if (*&v137[8] < 5uLL)
            {
              goto LABEL_157;
            }

            if (*&v137[8] - 4 < v36)
            {
              goto LABEL_157;
            }

            v37 = *&v32[v35 + v29];
            if (v37 > 0x7FFFFFFE)
            {
              goto LABEL_157;
            }

            v38 = v37 + 4;
            v39 = v35 + v38;
            v41 = *&v137[8] >= v38;
            v40 = *&v137[8] - v38;
            v41 = v40 != 0 && v41 && v40 >= v36;
            v42 = v41 && *&v137[8] - 1 >= (v33 + v29 + v39);
            if (!v42 || *(v34 + v39 + v29))
            {
              goto LABEL_157;
            }

            v29 += 4;
          }

          while (v30 != v29);
LABEL_43:
          ++v11;
LABEL_95:
          a7 = v122;
          a2 = v118;
          a3 = v119;
          goto LABEL_146;
        case 0x4Cu:
          v47 = (v13 + 4);
          *v137 = v47;
          *&v137[8] = v20;
          *&v137[16] = xmmword_20E70C4C0;
          v138 = 0;
          v139 = 1;
          if (v20 < 5)
          {
            goto LABEL_157;
          }

          v48 = *v47;
          if (v48 < 1)
          {
            goto LABEL_157;
          }

          if (v19 - 5 < v48)
          {
            goto LABEL_157;
          }

          v49 = &v47[v48];
          if (!flatbuffers::Verifier::VerifyTableStart(v137, &v47[v48]))
          {
            goto LABEL_157;
          }

          if (!flatbuffers::Table::VerifyOffset(v49, v137))
          {
            goto LABEL_157;
          }

          v50 = (v49 - *v49);
          if (*v50 >= 5u)
          {
            v51 = v50[2];
            if (v51)
            {
              if (!flatbuffers::Verifier::VerifyVectorOrString(v137, v49 + v51 + *(v49 + v51), 4uLL, 0))
              {
                goto LABEL_157;
              }
            }
          }

          ++v11;
          v114 = v47;
          goto LABEL_95;
        case 0x4Du:
          if (v20 < 8)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x4Eu:
          v56 = *a7;
          if (*a7 > 0x1Bu || ((1 << v56) & 0x8070040) == 0)
          {
            v57 = v56 - 91;
            if (v57 > 0xC || ((1 << v57) & 0x1401) == 0)
            {
              goto LABEL_157;
            }
          }

LABEL_130:
          if (v20 < 0x18)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x4Fu:
          v59 = *a7 == 8 || *a7 == 99;
          if (v20 < 8 || !v59)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x50u:
          if (v20 < 0x20)
          {
            goto LABEL_157;
          }

          goto LABEL_146;
        case 0x51u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v116 = v13 + 4;
          goto LABEL_145;
        case 0x53u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x54u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v110 = v13 + 4;
          goto LABEL_145;
        case 0x55u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v112 = v13 + 4;
          goto LABEL_145;
        case 0x56u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v113 = v13 + 4;
          goto LABEL_145;
        case 0x57u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v108 = v13 + 4;
          goto LABEL_145;
        case 0x58u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v106 = v13 + 4;
          goto LABEL_145;
        case 0x60u:
          goto LABEL_145;
        case 0x63u:
          if (v20 < 0x18)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x64u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v109 = v13 + 4;
          goto LABEL_145;
        case 0x66u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v107 = v13 + 4;
          goto LABEL_145;
        case 0x69u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v105 = v13 + 4;
          goto LABEL_145;
        case 0x6Cu:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        default:
          goto LABEL_162;
      }
    }

    break;
  }

LABEL_162:
  v63 = 0;
  v64 = a6;
  v65 = a1[8];
  if (!a6 && v17 != 1)
  {
    v63 = (***(v65 + 32))(*(v65 + 32));
  }

  *(v65 + 1953) = v63;
  if ((v17 - 1) >= 2)
  {
    v71 = 0;
    a1[2] = strdup("compiler plugin input state failed validation");
    return v71;
  }

  MEMORY[0x20F32FFB0](v127);
  if (!a6)
  {
    if (!a5)
    {
      v69 = AGCGetReplacementIR(0, v127);
      goto LABEL_177;
    }

    if (!OGLCodeGenService::oglCodeGenService)
    {
      operator new();
    }

    v64 = (*(OGLCodeGenService::oglCodeGenService + 16))(v127, a4);
  }

  v66 = AGCGetReplacementIR(v64, v127);
  if (v66)
  {
    v69 = v66;
    if (v64)
    {
      v70 = MEMORY[0x20F330EC0](v64);
      MEMORY[0x20F331DC0](v70, 0x10B2C407FF26C1CLL);
    }
  }

  else
  {
    v69 = v64;
  }

LABEL_177:
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v67)) != 0 && *Value != 48 && atoi(Value))
  {
    llvm::SHA256::SHA256(__p);
    if (v69)
    {
      v133 = 0;
      v134 = 0;
      __dst = &v135;
      *&v137[8] = 0;
      v139 = 0;
      v140 = 0;
      LODWORD(v141) = 1;
      v138 = 0;
      *&v137[16] = 0;
      *&v137[24] = 0;
      *v137 = MEMORY[0x277D82200] + 16;
      p_dst = &__dst;
      llvm::raw_ostream::SetUnbuffered(v137);
      llvm::WriteBitcodeToFile();
      llvm::SHA256::update();
      llvm::raw_ostream::~raw_ostream(v137);
      if (__dst != &v135)
      {
        free(__dst);
      }
    }

    llvm::SHA256::update();
    llvm::SHA256::final(v137, __p);
    llvm::SHA256::~SHA256(__p);
    v73 = v137[0];
    v136[0] = *&v137[1];
    *(v136 + 15) = *&v137[16];
    v74 = 1;
  }

  else
  {
    v74 = 0;
    v73 = 0;
  }

  v71 = 0;
  v75 = *v122;
  v76 = a1[8];
  v125 = v74;
  switch(*v122)
  {
    case 1:
      operator new();
    case 2:
      *v137 = &unk_2825BE458;
      *&v137[8] = v123;
      *&v137[16] = 0;
      *&v137[24] = v123;
      operator new();
    case 3:
      AGPVertexShaderObject = AGCLLVMAGPVertexShader::createAGPVertexShaderObject(v76, v69, v123, v14, v114);
      goto LABEL_260;
    case 4:
      *v137 = &unk_2825BE458;
      *&v137[8] = v123;
      *&v137[16] = v123;
      *&v137[24] = 0;
      AGPVertexShaderObject = (*(**(v76 + 32) + 64))(*(v76 + 32));
      goto LABEL_260;
    case 5:
      __dst = &unk_2825BE458;
      v133 = v123;
      v134 = v123;
      v135 = 0;
      *v137 = "air.kernel";
      LOWORD(v138) = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(v69, v137);
      v87 = *(v76 + 32);
      v88 = *v87;
      if (NamedMetadata)
      {
        AGPVertexShaderObject = (*(v88 + 56))();
      }

      else
      {
        AGPVertexShaderObject = (*(v88 + 64))(v87);
      }

      goto LABEL_260;
    case 6:
      AGPVertexShaderObject = (*(**(v76 + 32) + 48))(*(v76 + 32), v76, v69, v123);
      goto LABEL_260;
    case 7:
      AGPVertexShaderObject = (*(**(v76 + 32) + 224))(*(v76 + 32), v76, v69, v110);
      goto LABEL_260;
    case 8:
      operator new();
    case 9:
      AGPVertexShaderObject = (*(**(v76 + 32) + 96))(*(v76 + 32), v76, v69, v123);
      goto LABEL_260;
    case 0xA:
      v89 = **(v76 + 32);
      if ((*(v123 + 16) & 0x80) != 0)
      {
        AGPVertexShaderObject = (*(v89 + 128))();
      }

      else
      {
        AGPVertexShaderObject = (*(v89 + 120))();
      }

      goto LABEL_260;
    case 0xB:
      operator new();
    case 0xC:
      operator new();
    case 0xD:
      operator new();
    case 0xE:
      operator new();
    case 0xF:
      operator new();
    case 0x10:
      operator new();
    case 0x11:
      AGCLLVMDriverSparseShaders::create(v76, v127, *v111);
    case 0x12:
      AGCLLVMDriverFastClearShaders::create(v76, v127, *v115);
    case 0x13:
      operator new();
    case 0x14:
      AGCLLVMDriverExecuteIndirectESLGenerationShader::create(v76, v127, v68);
    case 0x15:
      AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::create(v76, v127, v68);
    case 0x16:
      AGPVertexShaderObject = (*(**(v76 + 32) + 152))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x17:
      AGPVertexShaderObject = (*(**(v76 + 32) + 144))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x18:
      AGPVertexShaderObject = (*(**(v76 + 32) + 176))(*(v76 + 32), v76, v127, v112);
      goto LABEL_260;
    case 0x19:
      v83 = *v108 & 3;
      if ((v83 - 1) >= 2)
      {
        v84 = 2;
      }

      else
      {
        v84 = 3;
      }

      if (v83 == 2)
      {
        v85 = v84;
      }

      else
      {
        v85 = (v83 - 1) < 2;
      }

      AGPVertexShaderObject = (*(**(v76 + 32) + 40))(*(v76 + 32), v76, v127, v85 | *v108 & 4u);
      goto LABEL_260;
    case 0x1A:
      AGPVertexShaderObject = (*(**(v76 + 32) + 104))(*(v76 + 32), v76, v127, *v106 & 1, (*v106 >> 1) & 1);
      goto LABEL_260;
    case 0x1C:
      operator new();
    case 0x1D:
    case 0x1E:
      v77 = *(**(v76 + 32) + 32);
      goto LABEL_232;
    case 0x1F:
      v77 = *(**(v76 + 32) + 32);
      goto LABEL_232;
    case 0x20:
      v77 = *(**(v76 + 32) + 32);
LABEL_232:
      AGPVertexShaderObject = v77();
      goto LABEL_260;
    case 0x21:
    case 0x23:
      v78 = v75 == 35;
      v79 = a1[8];
      v80 = 1;
      goto LABEL_192;
    case 0x22:
    case 0x24:
      v78 = v75 == 36;
      v79 = a1[8];
      v80 = 0;
LABEL_192:
      AGCLLVMContextSwitchProgram::create(v79, v127, v80, v78);
    case 0x25:
    case 0x26:
    case 0x27:
      operator new();
    case 0x28:
      {
        goto LABEL_200;
      }

      goto LABEL_309;
    case 0x29:
      AGPVertexShaderObject = (*(**(v76 + 32) + 160))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x2A:
      AGPVertexShaderObject = (*(**(v76 + 32) + 168))(*(v76 + 32), v76, v127, v113);
      goto LABEL_260;
    case 0x2B:
      AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::create(v76, v127, v116);
    case 0x2C:
      AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::create(v76, v127, v116);
    case 0x2D:
      AGCLLVMDriverTessellationBucketedSumInstanceCountsShader::create(v76, v127, v68);
    case 0x2E:
      AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::create(v76, v127, v116);
    case 0x2F:
      AGCLLVMDriverVDMNOPDBGShader::create(v76, v127, v68);
    case 0x30:
      AGCLLVMDriverTessellationClearInstanceCountsShader::create(v76, v127, v68);
    case 0x31:
      operator new();
    case 0x32:
      operator new();
    case 0x34:
      operator new();
    case 0x36:
      AGPVertexShaderObject = (*(**(v76 + 32) + 200))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x37:
      AGPVertexShaderObject = (*(**(v76 + 32) + 208))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x38:
      AGPVertexShaderObject = (*(**(v76 + 32) + 216))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x5A:
      AGCLLVMDriverGPUGatherVertexShader::create(v76, v127, v68);
    case 0x5B:
      AGPVertexShaderObject = (*(**(v76 + 32) + 136))(*(v76 + 32), v76, v127);
      goto LABEL_260;
    case 0x5E:
      AGCLLVMDriverVRRPatchVertexShader::create(v76, v127, v68);
    case 0x5F:
      AGCLLVMDriverFastClearVertexShaders::create(v76, v127, *v115);
    case 0x62:
      operator new();
    case 0x65:
      AGPVertexShaderObject = (*(**(v76 + 32) + 184))(*(v76 + 32), v76, v127, v109);
      goto LABEL_260;
    case 0x67:
      AGPVertexShaderObject = (*(**(v76 + 32) + 192))(*(v76 + 32), v76, v127, v107);
      goto LABEL_260;
    case 0x68:
      AGPVertexShaderObject = (*(**(v76 + 32) + 112))(*(v76 + 32), v76, v127, *v105 & 1);
LABEL_260:
      v90 = AGPVertexShaderObject;
      if (!AGPVertexShaderObject)
      {
        v71 = 0;
        goto LABEL_302;
      }

      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1 && (v91 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v82)) != 0 && *v91 != 48 && (v92 = atoi(v91), v92))
      {
        if ((v125 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
LABEL_309:
          {
            pluginCreateLLVMObject(AGCLLVMCtx &,_AGCStreamToken,llvm::LLVMContext &,llvm::Module *,CompilationState &)::computeCS = 0;
            *algn_27C8D89C8 = 0;
            qword_27C8D89D0 = 0;
          }

LABEL_200:
          AGCLLVMDriverTGSizeOptimizationShader::create(v76, v127);
        }

        AGCPrinterFactory::Get(v92);
        v93 = *(v76 + 40) < 2u;
        v94 = (*(*v90 + 6))(v90);
        std::string::basic_string[abi:nn200100]<0>(&__dst, v94);
        (*(*v90 + 5))(__p, v90);
        v137[0] = v73;
        *&v137[1] = v136[0];
        *&v137[16] = *(v136 + 15);
        LOBYTE(v138) = 1;
        AGCPrinterFactory::createObjectPrinter(v128, v93, &__dst, __p, v137);
        v95 = v128[0];
        if (v131 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v134) < 0)
        {
          operator delete(__dst);
        }

        v96 = v95;
      }

      else
      {
        v96 = 0;
        v95 = *(v76 + 2032);
      }

      (*(*v90 + 8))(v90, v95);
      if ((*(*v90 + 2))(v90))
      {
        *&v137[24] = 0;
        v97 = (*(*v90 + 3))(v90, a1, a1 + 1, a1 + 4, v137);
        std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v137);
        if (v97)
        {
          v71 = 1;
          if (!v96)
          {
            goto LABEL_301;
          }

          goto LABEL_297;
        }

        v100 = v128;
        std::string::basic_string[abi:nn200100]<0>(v128, "Error occurred composing compiler reply.");
        if (v129 >= 0)
        {
          v101 = v128;
        }

        else
        {
          v101 = v128[0];
        }

        AGCTargetPrinter::printMessage(v90[212], "** Compilation failed with error: %s **", v101);
        if (v129 < 0)
        {
LABEL_295:
          operator delete(*v100);
        }
      }

      else
      {
        v98 = v90 + 207;
        if (*(v90 + 1679) < 0)
        {
          if (!v90[208])
          {
            goto LABEL_296;
          }

          v99 = *v98;
        }

        else
        {
          v99 = (v90 + 207);
          if (!*(v90 + 1679))
          {
            goto LABEL_296;
          }
        }

        a1[2] = strdup(v99);
        if (*(v90 + 1679) < 0)
        {
          std::string::__init_copy_ctor_external(v137, v90[207], v90[208]);
        }

        else
        {
          *v137 = *v98;
          *&v137[16] = v90[209];
        }

        v100 = v137;
        if (v137[23] >= 0)
        {
          v102 = v137;
        }

        else
        {
          v102 = *v137;
        }

        AGCTargetPrinter::printMessage(v90[212], "** Compilation failed with error: %s **", v102);
        if ((v137[23] & 0x80000000) != 0)
        {
          goto LABEL_295;
        }
      }

LABEL_296:
      v71 = 0;
      if (!v96)
      {
        goto LABEL_301;
      }

LABEL_297:
      v103 = *v96;
      if (*v96 && v103 != MEMORY[0x277D82670])
      {
        (*(*v103 + 8))(v103);
        *v96 = 0;
      }

      MEMORY[0x20F331DC0](v96, 0x1020C409DFBF432);
LABEL_301:
      (*(*v90 + 1))(v90);
LABEL_302:
      llvm::LLVMContext::~LLVMContext(v127);
      *a8 = *a1;
      *a9 = a1[1];
      break;
    case 0x6A:
      AGCLLVMDriverMSTessellationPatchVertexShader::create(v76, v127, v68);
    case 0x6B:
      operator new();
    default:
      goto LABEL_302;
  }

  return v71;
}

void *AGCGetReplacementIR(llvm::Module *this, llvm::LLVMContext *a2)
{
  v53[21] = *MEMORY[0x277D85DE8];
  {
  }

  v3 = 0;
  {
    {
      v43[0] = "air.requestHash";
      LOWORD(v45) = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(this, v43);
      if (NamedMetadata)
      {
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
        std::string::basic_string[abi:nn200100]<0>(__p, String);
        v10 = *(v4 + 8);
        v8 = v4 + 8;
        v9 = v10;
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = v8;
        do
        {
          v12 = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100]((v9 + 32), __p);
          if (v12)
          {
            v13 = 8;
          }

          else
          {
            v13 = 0;
          }

          if (!v12)
          {
            v11 = v9;
          }

          v9 = *(v9 + v13);
        }

        while (v9);
        if (v11 == v8 || std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](__p, (v11 + 32)))
        {
LABEL_17:
          v3 = 0;
        }

        else
        {
          v46 = 0;
          v44 = 0u;
          v45 = 0u;
          *v43 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0;
          v52[0] = v53;
          v52[1] = 0x400000000;
          llvm::parseAssemblyString();
          v3 = v39[0];
          if (!v39[0])
          {
            if ((SBYTE7(v48) & 0x80u) == 0)
            {
              v15 = &v47;
            }

            else
            {
              v15 = v47;
            }

            if (v15)
            {
              if ((SBYTE7(v48) & 0x80u) == 0)
              {
                v16 = BYTE7(v48);
              }

              else
              {
                v16 = *(&v47 + 1);
              }

              std::string::basic_string[abi:nn200100](&__dst, v15, v16);
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v17 = std::string::insert(&__dst, 0, "AssemblerError: error message is: ");
            v18 = v17->__r_.__value_.__r.__words[2];
            *&v36.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
            v36.__r_.__value_.__r.__words[2] = v18;
            v17->__r_.__value_.__l.__size_ = 0;
            v17->__r_.__value_.__r.__words[2] = 0;
            v17->__r_.__value_.__r.__words[0] = 0;
            v19 = std::string::append(&v36, "\n");
            v20 = v19->__r_.__value_.__r.__words[2];
            *&v37.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
            v37.__r_.__value_.__r.__words[2] = v20;
            v19->__r_.__value_.__l.__size_ = 0;
            v19->__r_.__value_.__r.__words[2] = 0;
            v19->__r_.__value_.__r.__words[0] = 0;
            v21 = std::string::append(&v37, "AssemblerError: line content is: ");
            v22 = v21->__r_.__value_.__r.__words[2];
            *&v38.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
            v38.__r_.__value_.__r.__words[2] = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            if (v49 >= 0)
            {
              v23 = &v48 + 8;
            }

            else
            {
              v23 = *(&v48 + 1);
            }

            if (v23)
            {
              if (v49 >= 0)
              {
                v24 = HIBYTE(v49);
              }

              else
              {
                v24 = v49;
              }

              std::string::basic_string[abi:nn200100](&v32, v23, v24);
              v25 = HIBYTE(v34);
              v27 = v32;
              v26 = v33;
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v25 = 0;
              v32 = 0;
              v33 = 0;
              v34 = 0;
            }

            if ((v25 & 0x80u) == 0)
            {
              v28 = &v32;
            }

            else
            {
              v28 = v27;
            }

            if ((v25 & 0x80u) == 0)
            {
              v29 = v25;
            }

            else
            {
              v29 = v26;
            }

            v30 = std::string::append(&v38, v28, v29);
            v31 = v30->__r_.__value_.__r.__words[2];
            *v39 = *&v30->__r_.__value_.__l.__data_;
            v40 = v31;
            v30->__r_.__value_.__l.__size_ = 0;
            v30->__r_.__value_.__r.__words[2] = 0;
            v30->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v34) < 0)
            {
              operator delete(v32);
            }

            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v38.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v36.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[0]);
            }
          }

          llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v52);
          if (v50)
          {
            *(&v50 + 1) = v50;
            operator delete(v50);
          }

          if (SHIBYTE(v49) < 0)
          {
            operator delete(*(&v48 + 1));
          }

          if (SBYTE7(v48) < 0)
          {
            operator delete(v47);
          }

          if (SBYTE7(v45) < 0)
          {
            operator delete(v44);
          }
        }

        if (v42 < 0)
        {
          operator delete(__p[0]);
        }

        return v3;
      }

      std::string::basic_string[abi:nn200100]<0>(v43, "Unable to find air.requestHash metadata");
      if (SBYTE7(v44) < 0)
      {
        operator delete(v43[0]);
      }
    }

    return 0;
  }

  return v3;
}

void AGCLLVMObjectBase::AGCLLVMObjectBase(AGCLLVMObjectBase *this, AGCLLVMCtx *a2)
{
  *this = &unk_2825BDF20;
  *(this + 1) = &unk_2825BDF78;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 5) = this + 56;
  *(this + 6) = 0x400000000;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 41) = this + 344;
  *(this + 42) = 0x400000000;
  *(this + 59) = this + 488;
  *(this + 60) = 0x400000000;
  *(this + 77) = this + 632;
  *(this + 78) = 0x400000000;
  *(this + 95) = this + 776;
  *(this + 96) = 0x400000000;
  *(this + 113) = this + 920;
  *(this + 114) = 0x400000000;
  *(this + 131) = this + 1064;
  *(this + 132) = 0x400000000;
  *(this + 149) = this + 1208;
  *(this + 150) = 0x400000000;
  *(this + 1336) = 0u;
  *(this + 169) = 0x2000000000;
  llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::AnalysisManager();
}

void AGCLLVMGen5TargetLowerer::AGCLLVMGen5TargetLowerer(AGCLLVMGen5TargetLowerer *this, llvm::LLVMContext *a2, const char **a3)
{
  v5 = this + 940;
  AGCLLVMBuilder::AGCLLVMBuilder(this, a2);
  *v6 = &unk_2825B9C60;
  v6[58] = 0x400000008;
  if (a3[2])
  {
    strlen(a3[2]);
  }

  *(this + 32) = xmmword_20E70C6A0;
  *(this + 68) = 0x1000000000;
  *(this + 240) = 0;
  *(this + 246) = 0;
  *(this + 63) = this + 528;
  *(this + 67) = this + 552;
  *(this + 85) = 0;
  *(this + 43) = 0u;
  *(this + 88) = this + 720;
  *(this + 89) = 0x800000000;
  *(this + 106) = 0;
  *(this + 107) = this + 872;
  *(this + 108) = 0x800000000;
  llvm::DataLayout::reset();
  *(this + 904) = 0;
  *(this + 114) = a3;
  *(this + 920) = 0u;
  *(v5 + 5) = -1;
  *(this + 245) = 0;
  *(this + 246) = a3[3];
  *(this + 462) = 16842752;
  *(this + 228) = "driver_parameters";
  *(this + 458) = 3;
  *(this + 921) = 0;
  *(this + 1844) = 0;
  *(this + 216) = 0;
  *(this + 1868) = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_ENABLE_ATOMIC_OPTIMIZATIONS_VERTEX_FRAGMENT", v7);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        *(this + 1868) = 1;
      }
    }
  }

  *(this + 468) = 0x38u / *(this + 117);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v9 = 1;
  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v10 = AGCEnv::getValue("AGC_SKIP_TEXTURE_OOB_CHECKS", v7);
    v9 = !v10 || *v10 == 48 || atoi(v10) == 0;
  }

  *(this + 1881) = v9;
  *(this + 941) = 0;
  *(this + 1884) = 0;
  *(this + 1896) = 0;
  *(this + 1912) = 1;
  *(this + 1917) = 1;
  *(this + 960) = 0;
  *(this + 1922) = 0;
  *(this + 1926) = 0;
  *(this + 483) = 4;
  *(this + 1937) = 0;
  *(this + 1939) = 0;
  *(this + 1943) = 0;
  *(this + 962) = 0;
  *(this + 1890) = 0;
  *(this + 1955) = 0;
  *(this + 1951) = 0;
  *(v5 + 1007) = 0x1000000;
  *this = &unk_2825B9068;
  operator new();
}

void AGCLLVMBuilder::AGCLLVMBuilder(AGCLLVMBuilder *this, llvm::LLVMContext *a2)
{
  *(this + 1) = this + 24;
  *(this + 2) = 0x200000000;
  *(this + 9) = a2;
  *(this + 10) = this + 128;
  *(this + 11) = this + 136;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 54) = 512;
  *(this + 110) = 7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v4 = MEMORY[0x277D821C8] + 16;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = v4;
  *(this + 17) = MEMORY[0x277D82210] + 16;
  *this = &unk_2825A9608;
  *(this + 18) = llvm::Type::getVoidTy(a2, a2);
  *(this + 19) = llvm::Type::getHalfTy(*(this + 9), v5);
  *(this + 20) = llvm::Type::getBFloatTy(*(this + 9), v6);
  *(this + 21) = llvm::Type::getFloatTy(*(this + 9), v7);
  *(this + 22) = llvm::Type::getInt1Ty(*(this + 9), v8);
  *(this + 23) = llvm::Type::getInt8Ty(*(this + 9), v9);
  *(this + 24) = llvm::Type::getInt16Ty(*(this + 9), v10);
  *(this + 25) = llvm::Type::getInt32Ty(*(this + 9), v11);
  *(this + 26) = llvm::Type::getInt64Ty(*(this + 9), v12);
  *(this + 27) = llvm::FixedVectorType::get();
  *(this + 28) = llvm::FixedVectorType::get();
  *(this + 29) = llvm::FixedVectorType::get();
  *(this + 30) = llvm::FixedVectorType::get();
  *(this + 31) = llvm::FixedVectorType::get();
  *(this + 32) = llvm::FixedVectorType::get();
  *(this + 33) = llvm::FixedVectorType::get();
  *(this + 34) = llvm::FixedVectorType::get();
  *(this + 35) = llvm::FixedVectorType::get();
  *(this + 36) = llvm::FixedVectorType::get();
  *(this + 37) = llvm::FixedVectorType::get();
  *(this + 38) = llvm::FixedVectorType::get();
  *(this + 39) = llvm::FixedVectorType::get();
  *(this + 40) = llvm::FixedVectorType::get();
  *(this + 41) = llvm::FixedVectorType::get();
  *(this + 42) = llvm::FixedVectorType::get();
  *(this + 43) = llvm::FixedVectorType::get();
  *(this + 44) = llvm::FixedVectorType::get();
  *(this + 45) = llvm::FixedVectorType::get();
  *(this + 46) = llvm::FixedVectorType::get();
  *(this + 47) = llvm::FixedVectorType::get();
  *(this + 48) = llvm::FixedVectorType::get();
  *(this + 49) = llvm::FixedVectorType::get();
  *(this + 50) = llvm::FixedVectorType::get();
  *(this + 51) = llvm::FixedVectorType::get();
  *(this + 52) = llvm::FixedVectorType::get();
  v13 = llvm::IntegerType::get();
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 53) = v13;
  *(this + 57) = a2;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

uint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  result = 16;
  switch(*(a2 + 2))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      JUMPOUT(0x20E4E7308);
    case 8u:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 2) >> 8;
    case 0xFu:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v7 = *llvm::DataLayout::getStructLayout();
      goto LABEL_14;
    case 0x11u:
      v8 = *(a2 + 4);
      v7 = v8 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_14:
      result = 8 * v7;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x20F3315E0](a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 25, 8);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  v11[1] = 0;
  v11[2] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void *AGCEnv::getValue(AGCEnv *this, const char *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  AGCEnv::getEnvLookup(this);
  v3 = __p;
  v4 = std::string::basic_string[abi:nn200100]<0>(__p, this);
  v5 = qword_28117E518;
  v6 = HIBYTE(v27);
  if (!qword_28117E518)
  {
    goto LABEL_39;
  }

  if (v27 >= 0)
  {
    v7 = HIBYTE(v27);
  }

  else
  {
    v7 = *&__p[8];
  }

  if (v27 < 0)
  {
    v3 = *__p;
  }

  v8 = &qword_28117E518;
  do
  {
    v9 = *(v5 + 55);
    if (v9 >= 0)
    {
      v10 = *(v5 + 55);
    }

    else
    {
      v10 = *(v5 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v5 + 32);
    }

    else
    {
      v11 = *(v5 + 32);
    }

    if (v7 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v4 = memcmp(v11, v3, v12);
    v13 = v10 < v7;
    if (v4)
    {
      v13 = v4 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v8 = v5;
    }

    v5 = *(v5 + v15);
  }

  while (v5);
  if (v8 == &qword_28117E518)
  {
    goto LABEL_39;
  }

  v16 = *(v8 + 55);
  if (v16 >= 0)
  {
    v17 = *(v8 + 55);
  }

  else
  {
    v17 = v8[5];
  }

  if (v16 >= 0)
  {
    v18 = v8 + 4;
  }

  else
  {
    v18 = v8[4];
  }

  if (v17 >= v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v17;
  }

  v4 = memcmp(v3, v18, v19);
  v20 = v7 < v17;
  if (v4)
  {
    v20 = v4 < 0;
  }

  if (v20)
  {
LABEL_39:
    v8 = &qword_28117E518;
  }

  if (v6 < 0)
  {
    operator delete(*__p);
  }

  if (v8 == &qword_28117E518)
  {
    return 0;
  }

  v21 = v8 + 7;
  if (*(v8 + 79) < 0)
  {
    v21 = *v21;
  }

  OSLog = AGCEnv::getOSLog(v4);
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(v8 + 55);
    if (v23 < 0)
    {
      v23 = v8[5];
    }

    v24 = *(v8 + 79);
    if (v24 < 0)
    {
      v24 = v8[8];
    }

    *__p = 136316162;
    *&__p[4] = "static const char *AGCEnv::getValue(const char *)";
    *&__p[12] = 2080;
    *&__p[14] = this;
    v27 = 2048;
    v28 = v23;
    v29 = 2080;
    v30 = v21;
    v31 = 2048;
    v32 = v24;
    _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s: %s[%zu] = %s[%zu]\n", __p, 0x34u);
  }

  return v21;
}

void AGCEnv::getEnvLookup(AGCEnv *this)
{
  {
    qword_28117E520 = 0;
    qword_28117E518 = 0;
    AGCEnv::getEnvLookup(void)::envlookup = &qword_28117E518;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:nn200100], &AGCEnv::getEnvLookup(void)::envlookup, &dword_20E4E1000);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825BDF98;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A7378;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(uint64_t *result)
{
  result[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 4);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = (*result + 8);
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A7350;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = (v4 + 48);
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

BOOL isStringMDNode(llvm::MDString *a1, const char *a2)
{
  if (*a1)
  {
    return 0;
  }

  String = llvm::MDString::getString(a1);
  v6 = v5;
  if (a2)
  {
    v7 = String;
    v8 = strlen(a2);
    if (v6 != v8)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }

    return memcmp(v7, a2, v8) == 0;
  }

  else
  {
    return v5 == 0;
  }
}

void llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

uint64_t AGCLLVMFragmentShader::AGCLLVMFragmentShader(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v9 = a2[1];
  *a1 = v9;
  *(a1 + *(v9 - 24)) = a2[2];
  *(a1 + *(*a1 - 24) + 1704) = a2[3];
  *(a1 + 8) = 0;
  *(a1 + 12) = -1;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 24)) = a2[4];
  *(a1 + *(*a1 - 24) + 1704) = a2[5];
  bzero((a1 + 40), 0x2C0uLL);
  for (i = 0; i != 704; i += 88)
  {
    v12 = a1 + i;
    *(v12 + 84) = 0;
    *(v12 + 104) = 0;
    *(v12 + 40) = 0uLL;
    *(v12 + 56) = 0uLL;
    *(v12 + 66) = 0uLL;
    *(v12 + 116) = 0;
    *(v12 + 108) = 0;
    *(v12 + 124) = 0;
  }

  *(a1 + 744) = a3;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = a1 + 872;
  *(a1 + 864) = 0x800000000;
  *(a1 + 936) = a1 + 952;
  *(a1 + 944) = 0x800000000;
  v13 = a1 + *(*a1 - 24);
  *(v13 + 2280) = a4;
  *(v13 + 2284) = 1;
  if (a5)
  {
    llvm::AnalysisManager<llvm::Module>::AnalysisManager();
  }

  return a1;
}

BOOL AGCLLVMUserFragmentShader::isSampleMaskVariant(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 20)
  {
    if (a2 == 21)
    {
      v16 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 13);
      v12 = v16 == 0x6F6C6F632E726961;
      v13 = 0x656C706D61735F72;
    }

    else
    {
      if (a2 != 22)
      {
        return result;
      }

      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 14);
      v12 = v9 == 0x747361722E726961;
      v13 = 0x6C706D61735F7265;
    }

    v15 = v12 && v10 == v13;
  }

  else
  {
    if (a2 != 15)
    {
      if (a2 != 18)
      {
        return result;
      }

      v4 = *a1;
      v5 = a1[1];
      v6 = *(a1 + 8);
      return v4 == 0x706D61732E726961 && v5 == 0x5F6B73616D5F656CLL && v6 == 28265;
    }

    v14 = *a1;
    v11 = *(a1 + 7);
    v15 = v14 == 0x706D61732E726961;
  }

  return v15 && v11 == 0x6B73616D5F656C70;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

uint64_t AGCLLVMUserObject::translatorCompile(AGCLLVMUserObject *this)
{
  v92 = *MEMORY[0x277D85DE8];
  if (*(this + 37) == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v2 = this + *(*this - 24);
      v3 = v2 + 5040;
      if (v2[5063] < 0)
      {
        v3 = *v3;
      }

      AGCTargetPrinter::printMessage(*(v2 + 212), "------ Compiling function : %s ------\n", v3);
    }

    v4 = *(this + *(*this - 24) + 2136);
    *__str = "llvm.dbg.cu";
    v91 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v4, __str);
    v6 = *this;
    if (NamedMetadata)
    {
      *(this + *(v6 - 24) + 4576) = 1;
      v7 = *(this + 21);
      if (v7)
      {
        Subprogram = llvm::Function::getSubprogram(v7);
        v6 = *this;
        if (Subprogram)
        {
          llvm::DILocalScope::getNonLexicalBlockFileScope(Subprogram);
          *(this + 5) = llvm::DILocation::getImpl();
          v6 = *this;
        }
      }
    }

    AGCLLVMObject::processBuildRequestInfo((this + *(v6 - 24)));
    v9 = *(this + *(*this - 24) + 2136);
    *__str = "air.shaderSource";
    v91 = 259;
    v10 = llvm::Module::getNamedMetadata(v9, __str);
    if (v10)
    {
      v11 = v10;
      Operand = llvm::NamedMDNode::getOperand(v10);
      String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
      v14 = (this + *(*this - 24));
      isValidToPrintMessage = AGCTargetPrinter::isValidToPrintMessage(v14[212]);
      if (String)
      {
        v16 = !isValidToPrintMessage;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && AGCLLVMObjectBase::dumpShaderToFile(v14))
      {
        v17 = ((*v14)[6])(v14);
        snprintf(__str, 0x80uLL, "%s shader %u (shader source)", v17, *(v14 + 1272));
        v18 = ((*v14)[6])(v14);
        if (!strcmp(v18, "compute") || !strcmp(v18, "compute-program"))
        {
          v19 = "Compute";
        }

        else
        {
          v19 = "Graphics";
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v14[212]))
        {
          AGCTargetPrinter::printMessage(v14[212], "------ Start %s %s -------\n", v19, __str);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v14[212]))
        {
          AGCTargetPrinter::printMessage(v14[212], "%s\n", String);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v14[212]))
        {
          AGCTargetPrinter::printMessage(v14[212], "------ End %s %s -------\n", v19, __str);
        }
      }

      llvm::NamedMDNode::eraseFromParent(v11);
    }

    v20 = (this + *(*this - 24));
    if (AGCTargetPrinter::isValidToPrintMessage(v20[212]) && AGCLLVMObjectBase::dumpShaderToFile(v20))
    {
      v21 = ((*v20)[6])(v20);
      snprintf(__str, 0x80uLL, "%s shader %u (%s)", v21, *(v20 + 1272), "generic");
      __p = 0;
      v62 = 0;
      v63 = 0;
      LODWORD(v81) = 0;
      LOBYTE(v85) = 0;
      v86 = 0;
      LODWORD(v87) = 1;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v80 = MEMORY[0x277D821F8] + 16;
      p_p = &__p;
      llvm::raw_ostream::SetUnbuffered(&v80);
      llvm::Module::print();
      v22 = v20[267];
      v23 = v22 + 3;
      v24 = v22[4];
      if (v24 == v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        do
        {
          if (v24)
          {
            v26 = v24 - 56;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26 + 72;
          for (i = *(v26 + 80); i != v27; i = *(i + 8))
          {
            if (i)
            {
              v29 = i - 24;
            }

            else
            {
              v29 = 0;
            }

            v30 = v29 + 40;
            v31 = *(v29 + 48);
            if (v31 == v30)
            {
              v32 = 0;
            }

            else
            {
              v32 = 0;
              do
              {
                ++v32;
                v31 = *(v31 + 8);
              }

              while (v31 != v30);
            }

            v25 += v32;
          }

          v24 = *(v24 + 1);
        }

        while (v24 != v23);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v20[212]))
      {
        AGCTargetPrinter::printMessage(v20[212], "------ Start LLVM IR %s -------\n", __str);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v20[212]))
      {
        v33 = &__p;
        if (v63 < 0)
        {
          v33 = __p;
        }

        AGCTargetPrinter::printMessage(v20[212], "%s\n", v33);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v20[212]))
      {
        AGCTargetPrinter::printMessage(v20[212], "; %u instructions", v25);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v20[212]))
      {
        AGCTargetPrinter::printMessage(v20[212], "------ End LLVM IR %s -------\n", __str);
      }

      llvm::raw_ostream::~raw_ostream(&v80);
      if (SHIBYTE(v63) < 0)
      {
        operator delete(__p);
      }
    }

    if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v34 = (this + *(*this - 24));
        v35 = v34[212];
        v36 = (*(*v34 + 48))(v34);
        AGCTargetPrinter::printMessage(v35, "------ Compilation flags for %s shader %u ------", v36, *(this + *(*this - 24) + 5088));
      }

      v37 = this + *(*this - 24);
      v38 = *(v37 + 452);
      if (AGCTargetPrinter::isValidToPrintMessage(*(v37 + 212)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Object fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v38 >> 1) & 1, (v38 >> 2) & 1, (v38 >> 3) & 1, (v38 >> 4) & 1, v38 == -1);
      }

      v39 = this + *(*this - 24);
      v40 = *(*(v39 + 271) + 104);
      if (AGCTargetPrinter::isValidToPrintMessage(*(v39 + 212)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Target fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v40 >> 1) & 1, (v40 >> 2) & 1, (v40 >> 3) & 1, (v40 >> 4) & 1, v40 == -1);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Codegen fast-math options: { finite-math=%d, unsafe-fp-math=%d, less_pecise_fmad=%d}", *(this + 34), *(this + 33), *(this + 36));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v41 = (this + *(*this - 24));
        v42 = v41[212];
        v43 = (*(*v41 + 48))(v41);
        AGCTargetPrinter::printMessage(v42, "------ End compilation flags for %s shader %u ------", v43, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v44 = (this + *(*this - 24));
        v45 = v44[212];
        v46 = (*(*v44 + 48))(v44);
        AGCTargetPrinter::printMessage(v45, "------ Start compilation key description for %s shader %u  ------", v46, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v47 = (this + *(*this - 24));
        v48 = v47[212];
        (*(*v47 + 136))(__str);
        v49 = v90 >= 0 ? __str : *__str;
        AGCTargetPrinter::printMessage(v48, "%s", v49);
        if (v90 < 0)
        {
          operator delete(*__str);
        }
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v50 = (this + *(*this - 24));
        v51 = v50[212];
        v52 = (*(*v50 + 48))(v50);
        AGCTargetPrinter::printMessage(v51, "------ End compilation key description for %s shader %u  ------", v52, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v53 = (this + *(*this - 24));
        v54 = *(v53 + 212);
        DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode(v53);
        AGCTargetPrinter::printMessage(v54, "Default rounding mode: %s", _AGCFPRoundingModeStrings[DefaultRoundingMode]);
      }
    }

    GlobalVariable = llvm::Module::getGlobalVariable();
    if (GlobalVariable)
    {
      llvm::GlobalVariable::eraseFromParent(GlobalVariable);
    }

    v57 = this + *(*this - 24);
    *__str = &AGCUserObjectWrapper::Key;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v57 + 198, __str)[1])
    {
      operator new();
    }

    v58 = this + *(*this - 24);
    *__str = &MetadataAnalysis::Key;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(v58 + 198, __str)[1])
    {
      operator new();
    }

    v79 = 0;
    llvm::OptNoneInstrumentation::registerCallbacks();
    llvm::PipelineTuningOptions::PipelineTuningOptions(&v80);
    LOBYTE(v71) = 0;
    v78 = 0;
    MEMORY[0x20F330050](__str, 0, &v80, &v71, this + *(*this - 24) + 40);
    if (v78 == 1)
    {
      v59 = v77;
      if (v77 && atomic_fetch_add((v77 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v59 + 8))(v59);
      }

      if (v76 < 0)
      {
        operator delete(v75);
      }

      if (v74 < 0)
      {
        operator delete(v73);
      }

      if (v72 < 0)
      {
        operator delete(v71);
      }

      v78 = 0;
    }

    memset(v70, 0, sizeof(v70));
    LODWORD(v62) = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    __p = (MEMORY[0x277D821F8] + 16);
    v69 = v70;
    llvm::raw_ostream::SetUnbuffered(&__p);
    *(this + 105) = &__p;
    llvm::PassBuilder::registerModuleAnalyses();
    llvm::PassBuilder::registerCGSCCAnalyses();
    llvm::PassBuilder::registerFunctionAnalyses();
    llvm::PassBuilder::registerLoopAnalyses();
    llvm::PassBuilder::crossRegisterProxies();
    operator new();
  }

  return 0;
}

llvm::ValueHandleBase *llvm::ValueHandleBase::ValueHandleBase(llvm::ValueHandleBase *this, unsigned int a2, void *a3)
{
  *this = 2 * a2;
  *(this + 1) = 0;
  v4 = a3[2];
  *(this + 2) = v4;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::AddToExistingUseList(this, (*a3 & 0xFFFFFFFFFFFFFFF8));
  }

  return this;
}

void *llvm::StringRef::str(void *this, uint64_t a2)
{
  v2 = this;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = v4;
    if (v4)
    {
      this = memmove(this, v3, v4);
    }

    *(v2 + v4) = 0;
  }

  else
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  return this;
}

uint64_t parseMDInt(const char *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v9 = 0;
  if (!parseMDType<llvm::ValueAsMetadata>(a1, a2, a3, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 128);
  if (!v5 || *(v5 + 16) != 16)
  {
    return 0;
  }

  v8 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v8 = *v8;
  }

  *a4 = *v8;
  return 1;
}

BOOL parseMDType<llvm::ValueAsMetadata>(const char *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = isStringMDNode(v7, a1);
    if (!result)
    {
      return result;
    }

    v10 = (*a3)++;
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * (v10 + 1));
    if (v11)
    {
      if (*v11 - 1 >= 2)
      {
        v11 = 0;
      }
    }

    *a4 = v11;
    *a3 = v10 + 2;
  }

  else
  {
    if (v7)
    {
      if (*v7 - 1 >= 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
      }
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
  }

  return v11 != 0;
}

uint64_t *AGCLLVMUserShader::AGCLLVMUserShader(uint64_t *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, char a7)
{
  v137 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = a2[2];
  *(a1 + *(*a1 - 24) + 1704) = a2[3];
  *(a1 + 6) = 0;
  *(a1 + 2) = 0;
  *(a1 + 14) = a6;
  *(a1 + 15) = a7;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  a1[3] = a5;
  *(a1 + 8) = 16843009;
  *(a1 + 18) = 257;
  a1[10] = (a1 + 12);
  v129 = a1 + 10;
  *(a1 + 38) = 0u;
  *(a1 + 54) = 0u;
  *(a1 + 4) = 0u;
  a1[11] = 0x800000000;
  a1[20] = 0;
  a1[21] = 0;
  v136 = 260;
  *&v134 = a3 + 216;
  MEMORY[0x20F330F20](a1 + 22, &v134);
  v12 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
  if (*(v12 + 16))
  {
    strlen(*(v12 + 16));
  }

  *(a1 + 116) = 0;
  *(a1 + 122) = 0;
  a1[32] = (a1 + 35);
  *(a1 + 33) = xmmword_20E70C6A0;
  a1[36] = (a1 + 38);
  a1[37] = 0x1000000000;
  a1[54] = 0;
  *(a1 + 55) = 0u;
  a1[57] = (a1 + 59);
  a1[58] = 0x800000000;
  a1[75] = 0;
  a1[76] = (a1 + 78);
  a1[77] = 0x800000000;
  llvm::DataLayout::reset();
  a1[82] = (a1 + 84);
  a1[83] = 0x400000000;
  *(a1 + 176) = 128;
  a1[86] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1 + 86);
  *(a1 + 712) = 0;
  *(a1 + 736) = 0;
  *(a1 + 192) = 128;
  a1[94] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(a1 + 94);
  *(a1 + 776) = 0;
  *(a1 + 800) = 0;
  a1[103] = 0;
  *(a1 + 52) = 0u;
  a1[102] = (a1 + 103);
  a1[106] = (a1 + 110);
  a1[107] = (a1 + 110);
  a1[108] = 8;
  *(a1 + 218) = 0;
  *(a1 + 63) = 0u;
  *(a1 + 59) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 61) = 0u;
  a1[124] = 0;
  a1[125] = (a1 + 126);
  *(a1 + 129) = 0u;
  a1[128] = (a1 + 129);
  a1[131] = (a1 + 135);
  a1[132] = (a1 + 135);
  a1[133] = 8;
  *(a1 + 268) = 0;
  a1[143] = (a1 + 147);
  a1[144] = (a1 + 147);
  a1[145] = 8;
  *(a1 + 292) = 0;
  bzero(a1 + 155, 0x280uLL);
  for (i = 0; i != 80; i += 8)
  {
    v14 = &a1[i];
    v14[155] = 4;
    *(v14 + 78) = 0uLL;
    *(v14 + 79) = 0uLL;
    *(v14 + 80) = 0uLL;
    v14[162] = -1;
  }

  v15 = 0;
  *(a1 + 263) = 0u;
  *(a1 + 265) = 0u;
  *(a1 + 259) = 0u;
  *(a1 + 261) = 0u;
  *(a1 + 255) = 0u;
  *(a1 + 257) = 0u;
  *(a1 + 251) = 0u;
  *(a1 + 253) = 0u;
  *(a1 + 247) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 243) = 0u;
  *(a1 + 245) = 0u;
  *(a1 + 239) = 0u;
  *(a1 + 241) = 0u;
  *(a1 + 235) = 0u;
  *(a1 + 237) = 0u;
  do
  {
    v16 = &a1[v15];
    v16[235] = 4;
    *(v16 + 118) = 0uLL;
    *(v16 + 119) = 0uLL;
    *(v16 + 120) = 0uLL;
    v15 += 8;
    v16[242] = -1;
  }

  while (v15 != 32);
  v17 = 0;
  *(a1 + 295) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 291) = 0u;
  *(a1 + 293) = 0u;
  *(a1 + 287) = 0u;
  *(a1 + 289) = 0u;
  *(a1 + 283) = 0u;
  *(a1 + 285) = 0u;
  *(a1 + 279) = 0u;
  *(a1 + 281) = 0u;
  *(a1 + 275) = 0u;
  *(a1 + 277) = 0u;
  *(a1 + 271) = 0u;
  *(a1 + 273) = 0u;
  *(a1 + 267) = 0u;
  *(a1 + 269) = 0u;
  do
  {
    v18 = &a1[v17];
    v18[267] = 4;
    *(v18 + 134) = 0uLL;
    *(v18 + 135) = 0uLL;
    *(v18 + 136) = 0uLL;
    v17 += 8;
    v18[274] = -1;
  }

  while (v17 != 32);
  v19 = 0;
  *(a1 + 2392) = 0;
  *(a1 + 599) = 0;
  a1[300] = 0;
  do
  {
    v20 = &a1[v19];
    v20[301] = 4;
    *(v20 + 151) = 0uLL;
    v19 += 3;
  }

  while (v19 != 9);
  a1[310] = 4;
  *(a1 + 311) = 0u;
  a1[313] = 4;
  *(a1 + 157) = 0u;
  a1[316] = 4;
  *(a1 + 317) = 0u;
  a1[319] = 4;
  *(a1 + 160) = 0u;
  a1[322] = 4;
  *(a1 + 323) = 0u;
  a1[325] = 4;
  *(a1 + 163) = 0u;
  a1[328] = 4;
  *(a1 + 329) = 0u;
  a1[331] = 4;
  *(a1 + 166) = 0u;
  a1[335] = 4;
  *(a1 + 168) = 0u;
  a1[339] = 4;
  *(a1 + 170) = 0u;
  a1[343] = 4;
  *(a1 + 172) = 0u;
  a1[346] = 4;
  *(a1 + 347) = 0u;
  a1[349] = 4;
  *(a1 + 175) = 0u;
  a1[352] = 4;
  *(a1 + 353) = 0u;
  a1[355] = 4;
  *(a1 + 178) = 0u;
  a1[358] = 4;
  *(a1 + 359) = 0u;
  a1[361] = 4;
  *(a1 + 181) = 0u;
  a1[364] = 4;
  *(a1 + 365) = 0u;
  a1[367] = 4;
  *(a1 + 184) = 0u;
  a1[370] = 0;
  a1[371] = 4;
  *(a1 + 186) = 0u;
  a1[374] = 4;
  *(a1 + 375) = 0u;
  a1[377] = 4;
  *(a1 + 189) = 0u;
  a1[380] = 4;
  *(a1 + 381) = 0u;
  a1[383] = (a1 + 385);
  a1[384] = 0x200000000;
  a1[387] = "agc.driver.api_texture.";
  *(a1 + 195) = 0u;
  *(a1 + 194) = 0u;
  *(a1 + 784) = 1065353216;
  a1[393] = "agc.driver.api_sampler.";
  *(a1 + 198) = 0u;
  *(a1 + 197) = 0u;
  *(a1 + 796) = 1065353216;
  a1[399] = "agc.driver.ab_texture.";
  *(a1 + 201) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 808) = 1065353216;
  a1[405] = "agc.driver.ab_sampler.";
  *(a1 + 204) = 0u;
  *(a1 + 203) = 0u;
  *(a1 + 820) = 1065353216;
  a1[411] = "agc.driver.api_texture.global_ref";
  *(a1 + 207) = 0u;
  *(a1 + 206) = 0u;
  *(a1 + 832) = 1065353216;
  a1[417] = "agc.driver.api_sampler.global_ref";
  *(a1 + 210) = 0u;
  *(a1 + 209) = 0u;
  *(a1 + 844) = 1065353216;
  a1[423] = (a1 + 425);
  a1[424] = 0x200000000;
  *(a1 + 214) = 0u;
  a1[427] = (a1 + 428);
  *(a1 + 864) = 128;
  a1[430] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(a1 + 430);
  *(a1 + 3464) = 0;
  *(a1 + 3488) = 0;
  *(a1 + 219) = 0u;
  *(a1 + 220) = 0u;
  a1[442] = (a1 + 444);
  a1[443] = 0x400000000;
  *(a1 + 232) = 0u;
  *(a1 + 932) = 0;
  a1[467] = 4;
  *(a1 + 234) = 0u;
  *(a1 + 3760) = 0;
  *(a1 + 3762) = 0;
  *(a1 + 1883) = 0;
  a1[471] = 1;
  a1[472] = -4096;
  a1[473] = -4096;
  a1[474] = (a1 + 476);
  a1[475] = 0x200000000;
  a1[488] = 0;
  *(a1 + 1956) = 0;
  *(a1 + 962) = 0;
  a1[480] = 0;
  *(a1 + 239) = 0u;
  *(a1 + 964) = 0;
  *(a1 + 483) = 0u;
  *(a1 + 485) = 0u;
  *(a1 + 3896) = 0;
  a1[492] = 0;
  *(a1 + 986) = 0;
  *(a1 + 245) = 0u;
  *(a1 + 247) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 251) = 0u;
  *(a1 + 252) = 0u;
  a1[506] = 0;
  a1[507] = 1;
  a1[508] = 0;
  *(a1 + 1018) = 0;
  a1[510] = (a1 + 512);
  a1[511] = 0x1000000000;
  std::string::basic_string[abi:nn200100]<0>(a1 + 544, "texture");
  *(a1 + 1094) = 93;
  std::string::basic_string[abi:nn200100]<0>(a1 + 548, "sampler");
  *(a1 + 1102) = 113;
  *(a1 + 4448) = 0;
  *(a1 + 1110) = 0;
  a1[554] = 0;
  a1[553] = 0;
  a1[552] = 0;
  a1[238] = "agc.sampler_words";
  v21 = *a1;
  a1[239] = *(*(a1 + *(*a1 - 24) + 2168) + 1792);
  a1[240] = "sampler_state";
  a1[242] = 0x100000040;
  a1[246] = "agc.sampler_es1_lod_bias";
  a1[247] = *(a1 + *(v21 - 24) + 1872);
  a1[248] = "driver_parameters";
  *(a1 + 500) = *(*(a1 + *(v21 - 24) + 2168) + 972);
  *(a1 + 501) = 19;
  a1[254] = "agc.sampler_unique_id";
  a1[255] = *(a1 + *(v21 - 24) + 1912);
  a1[256] = "driver_parameters";
  *(a1 + 516) = *(*(a1 + *(v21 - 24) + 2168) + 972);
  *(a1 + 517) = 98;
  a1[262] = "agc.sampler_heap_index";
  a1[263] = *(a1 + *(v21 - 24) + 1904);
  a1[264] = "driver_parameters";
  *(a1 + 532) = *(*(a1 + *(v21 - 24) + 2168) + 972);
  *(a1 + 533) = 113;
  a1[270] = "agc.constant_sampler_words";
  a1[271] = *(*(a1 + *(v21 - 24) + 2168) + 1792);
  a1[272] = "constant_driver";
  a1[274] = 0x1200000040;
  a1[158] = "agc.read_image_words";
  a1[159] = *(*(a1 + *(v21 - 24) + 2168) + 1784);
  a1[160] = "image_state";
  a1[162] = 64;
  a1[166] = "agc.write_image_words";
  a1[167] = *(*(a1 + *(v21 - 24) + 2168) + 1784);
  a1[168] = "image_state";
  a1[170] = 0x600000040;
  a1[174] = "agc.image_dim";
  a1[175] = llvm::FixedVectorType::get();
  a1[176] = "driver_parameters";
  *(a1 + 356) = *(*(a1 + *(*a1 - 24) + 2168) + 972);
  *(a1 + 357) = 11;
  a1[182] = "agc.image_array_info";
  v22 = llvm::PointerType::get();
  v23 = *(a1 + *(*a1 - 24) + 1904);
  *&v134 = v22;
  *(&v134 + 1) = v23;
  v135 = v23;
  a1[183] = llvm::StructType::get();
  a1[184] = "driver_parameters";
  v24 = *a1;
  *(a1 + 372) = *(*(a1 + *(*a1 - 24) + 2168) + 972);
  *(a1 + 373) = 12;
  a1[198] = "agc.image_mipmap_count";
  a1[199] = *(a1 + *(v24 - 24) + 1904);
  a1[200] = "driver_parameters";
  *(a1 + 404) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 405) = 16;
  a1[206] = "agc.image_sample_count";
  a1[207] = *(a1 + *(v24 - 24) + 1904);
  a1[208] = "driver_parameters";
  *(a1 + 420) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 421) = 17;
  a1[190] = "agc.image_pack_format";
  a1[191] = *(a1 + *(v24 - 24) + 1904);
  a1[192] = "driver_parameters";
  *(a1 + 388) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 389) = 13;
  a1[214] = "agc.image_base_level";
  a1[215] = *(a1 + *(v24 - 24) + 1904);
  a1[216] = "driver_parameters";
  *(a1 + 436) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 437) = 62;
  a1[230] = "agc.image_unique_id";
  a1[231] = *(a1 + *(v24 - 24) + 1912);
  a1[232] = "driver_parameters";
  *(a1 + 468) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 469) = 97;
  a1[222] = "agc.image_heap_index";
  a1[223] = *(a1 + *(v24 - 24) + 1904);
  a1[224] = "driver_parameters";
  *(a1 + 452) = *(*(a1 + *(v24 - 24) + 2168) + 972);
  *(a1 + 453) = 93;
  v25 = *a1;
  *(a1 + *(*a1 - 24) + 2136) = a3;
  *(*(a1 + *(v25 - 24) + 2168) + 432) = *(a1 + *(v25 - 24) + 2136);
  *(*(a1 + *(v25 - 24) + 2168) + 904) = (*(a1 + 53) & 0xFFFFFFF7) == 3;
  *(*(a1 + *(v25 - 24) + 2168) + 440) = a1 + *(v25 - 24) + 4592;
  *(*(a1 + *(v25 - 24) + 2168) + 448) = a1 + *(v25 - 24) + 4672;
  v26 = *(a1 + *(v25 - 24) + 2136);
  *&v134 = "air.compile_options";
  v136 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v26, &v134);
  if (NamedMetadata)
  {
    v28 = NamedMetadata;
    v29 = 0;
    while (v29 < llvm::NamedMDNode::getNumOperands(v28))
    {
      Operand = llvm::NamedMDNode::getOperand(v28);
      ++v29;
      if (isStringMDNode(*(Operand - 8 * *(Operand + 8)), "air.compile.fast_math_disable"))
      {
        *(a1 + 32) = 0;
        break;
      }
    }

    llvm::NamedMDNode::eraseFromParent(v28);
  }

  v31 = (a3 + 168);
  if ((*(a3 + 191) & 0x80000000) == 0)
  {
    v32 = *(a3 + 191);
    if (v32 != 20)
    {
      if (v32 != 22)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_34:
    v40 = *v31;
    v41 = v31[1];
    v42 = *(v31 + 4);
    v39 = v40 == 0x535F786574726556 && v41 == 0x6F72505F65746174 && v42 == 1835102823;
    goto LABEL_43;
  }

  v33 = *(a3 + 176);
  if (v33 == 20)
  {
    v31 = *v31;
    goto LABEL_34;
  }

  if (v33 != 22)
  {
LABEL_31:
    v39 = 0;
    goto LABEL_43;
  }

  v31 = *v31;
LABEL_24:
  v34 = *v31;
  v35 = v31[1];
  v36 = *(v31 + 14);
  if (v34 != 0x746E656D67617246 || v35 != 0x505F65746174535FLL || v36 != 0x6D6172676F72505FLL)
  {
    goto LABEL_31;
  }

  v39 = 1;
LABEL_43:
  *(a1 + 14) |= v39;
  v45 = *(a1 + *(*a1 - 24) + 2136);
  *&v134 = "air.language_version";
  v136 = 259;
  v46 = llvm::Module::getNamedMetadata(v45, &v134);
  if (v46)
  {
    v47 = llvm::NamedMDNode::getOperand(v46);
    if (v47)
    {
      if (isStringMDNode(*(v47 - 8 * *(v47 + 8)), "OpenGL ES GLSL"))
      {
        *(a1 + 14) = 1;
      }
    }
  }

  v48 = *(a1 + *(*a1 - 24) + 2136);
  *&v134 = "llvm.module.flags";
  v136 = 259;
  v49 = llvm::Module::getNamedMetadata(v48, &v134);
  if (v49)
  {
    v50 = v49;
    v51 = 0;
LABEL_49:
    if (v51 < llvm::NamedMDNode::getNumOperands(v50))
    {
      v52 = llvm::NamedMDNode::getOperand(v50);
      v53 = 8 - 8 * *(v52 + 8);
      do
      {
        if (!v53)
        {
          ++v51;
          goto LABEL_49;
        }

        v54 = isStringMDNode(*(v52 + v53), "SDK Version");
        v53 += 8;
      }

      while (!v54);
      a1[6] = 0;
      v55 = *(v52 - 8 * *(v52 + 8) + 16);
      if (v55 && *v55 - 1 <= 1)
      {
        v56 = *(v55 + 16);
        if ((*(v56 + 16) & 0xFE) != 0xE)
        {
          v56 = 0;
        }

        a1[6] = v56;
      }
    }
  }

  v57 = *(a1 + *(*a1 - 24) + 2136);
  *&v134 = "air.version";
  v136 = 259;
  v58 = llvm::Module::getNamedMetadata(v57, &v134);
  if (v58)
  {
    v59 = llvm::NamedMDNode::getOperand(v58);
    if (v59)
    {
      v60 = v59;
      LODWORD(v131) = 0;
      v133 = 0;
      LODWORD(v134) = 0;
      parseMDInt(0, v59, &v134, &v131);
      v61 = 1;
      LODWORD(v134) = 1;
      parseMDInt(0, v60, &v134, &v133);
      if (v131 <= 2)
      {
        v61 = v131 == 2 && v133 > 7;
      }

      *(a1 + 4448) = v61;
    }
  }

  v63 = *(a1 + 32);
  *(a1 + 34) = v63 | a6;
  *(a1 + 36) = v63 | a6;
  *(a1 + 35) = v63 | a6;
  *(a1 + 33) = v63;
  v64 = *a1;
  v65 = *(a1 + *(*a1 - 24) + 2136);
  v66 = *(v65 + 32);
  v67 = v65 + 24;
  if (v66 != v65 + 24)
  {
    do
    {
      v68 = *(v66 + 8);
      llvm::Function::removeFnAttr();
      llvm::Function::removeFnAttr();
      llvm::Function::removeFnAttr();
      v66 = v68;
    }

    while (v68 != v67);
    v64 = *a1;
  }

  v69 = v64;
  v70 = a1 + *(v64 - 24);
  v71 = *(a1 + 33);
  if (v71)
  {
    v72 = -1;
  }

  else
  {
    v72 = 16;
  }

  if ((v71 & 0x100) != 0)
  {
    v72 |= 6u;
  }

  *(v70 + 452) = v72 | (v71 >> 13) & 8;
  v73 = *(a1 + 33);
  if (v73)
  {
    v74 = -1;
  }

  else
  {
    v74 = 16;
  }

  if ((v73 & 0x100) != 0)
  {
    v74 |= 6u;
  }

  *(*(a1 + *(v69 - 24) + 2168) + 104) = v74 | (v73 >> 13) & 8;
  v75 = *(a1 + *(v69 - 24) + 2136);
  *&v134 = "air.visible";
  v136 = 259;
  v76 = llvm::Module::getNamedMetadata(v75, &v134);
  if (v76)
  {
    v77 = v76;
    NumOperands = llvm::NamedMDNode::getNumOperands(v76);
    if (NumOperands)
    {
      v79 = NumOperands;
      for (j = 0; j != v79; ++j)
      {
        v81 = llvm::NamedMDNode::getOperand(v77);
        v82 = *(v81 - 8 * *(v81 + 8));
        if (v82 && *v82 - 1 <= 1)
        {
          v83 = v81;
          v84 = *(v82 + 16);
          if (v84 && *(v84 + 16) == 0)
          {
            v86 = *(*a1 - 24);
            *&v134 = llvm::Value::getName(v84);
            *(&v134 + 1) = v87;
            v135 = v83;
            llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>((a1 + v86 + 5136), v134, v87, &v135);
          }
        }
      }
    }
  }

  v88 = *(a1 + *(*a1 - 24) + 2136);
  v89 = 1;
  HIBYTE(v136) = 1;
  if (*a4)
  {
    *&v134 = a4;
    v89 = 3;
  }

  LOBYTE(v136) = v89;
  v90 = llvm::Module::getNamedMetadata(v88, &v134);
  a1[7] = v90;
  if (*(a1 + 15) == 1)
  {
    MEMORY[0x20F331AA0](a1 + *(*a1 - 24) + 5040, "dylib");
  }

  else
  {
    v91 = llvm::NamedMDNode::getOperand(v90);
    a1[21] = 0;
    v92 = *(v91 - 8 * *(v91 + 8));
    if (v92 && *v92 - 1 <= 1)
    {
      v93 = *(v92 + 16);
      if (*(v93 + 16))
      {
        v94 = 0;
      }

      else
      {
        v94 = v93;
      }

      a1[21] = v94;
    }

    else
    {
      v94 = 0;
    }

    Name = llvm::Value::getName(v94);
    if (v96 == 23)
    {
      v97 = *Name == 0x747265762E726961 && Name[1] == 0x4668637465467865;
      if (v97 && *(Name + 15) == 0x6E6F6974636E7546)
      {
        v99 = *(a1[21] + 80);
        v100 = v99 ? v99 - 24 : 0;
        v101 = *(v100 + 40);
        v102 = v101 - 24;
        v103 = v101 ? v101 - 24 : 0;
        v104 = *(v103 + 16) - 29 >= 0xB ? 0 : v102;
        v105 = *(v104 + 16) == 29 ? v104 : 0;
        v106 = *(v105 + 20) & 0x7FFFFFF;
        if (v106 && (v107 = *(v105 - 32 * v106)) != 0)
        {
          v108 = *(v107 + 16);
        }

        else
        {
          v109 = *(v105 + 24);
          v107 = v109 - 24;
          v110 = v109 ? v109 - 24 : 0;
          v108 = *(v110 + 16);
        }

        if (v108 == 84)
        {
          v111 = *(v107 - 32);
          if (!v111 || *(v111 + 16) || *(v111 + 24) != *(v107 + 72))
          {
            v111 = 0;
          }

          if (v111)
          {
            v94 = v111;
          }
        }
      }
    }

    v131 = *(v94 + 14);
    *&v134 = llvm::AttributeList::getAttributeAtIndex();
    if (llvm::Attribute::isStringAttribute(&v134))
    {
      ValueAsString = llvm::Attribute::getValueAsString(&v134);
      if (v113 == 10 && *ValueAsString == 0x696F706563617274 && *(ValueAsString + 8) == 29806)
      {
        *(a1 + 39) = 1;
      }
    }

    v131 = llvm::Value::getName(v94);
    v132 = v115;
    llvm::StringRef::str(&v134, &v131);
    v116 = a1 + *(*a1 - 24);
    v117 = v116 + 5040;
    if (v116[5063] < 0)
    {
      operator delete(*v117);
    }

    *v117 = v134;
    *(v117 + 2) = v135;
    v131 = llvm::Value::getName(v94);
    v132 = v118;
    llvm::StringRef::str(&v134, &v131);
    v119 = a1 + *(*a1 - 24);
    v120 = v119 + 5064;
    if (v119[5087] < 0)
    {
      operator delete(*v120);
    }

    *v120 = v134;
    *(v120 + 2) = v135;
    v121 = a1[21];
    if (**(*(v121 + 24) + 16) != *(a1 + *(*a1 - 24) + 1848))
    {
      a1[8] = *(v91 - 8 * *(v91 + 8) + 8);
    }

    v122 = *(v121 + 96);
    if (v122)
    {
      a1[9] = *(v91 - 8 * *(v91 + 8) + 16);
      llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(v129, v122);
      v123 = a1[9];
      v124 = *(v123 + 8);
      if (v124)
      {
        for (k = 0; k < v124; ++k)
        {
          v126 = *(v123 - 8 * v124 + 8 * k);
          LODWORD(v131) = 0;
          LODWORD(v134) = 0;
          parseMDInt(0, v126, &v134, &v131);
          *(a1[10] + 8 * v131) = v126;
          v123 = a1[9];
          v124 = *(v123 + 8);
        }
      }
    }
  }

  v127 = *a2;
  *a1 = *a2;
  *(a1 + *(v127 - 24)) = a2[4];
  *(a1 + *(*a1 - 24) + 1704) = a2[5];
  a1[557] = 4;
  *(a1 + 279) = 0u;
  a1[560] = 4;
  *(a1 + 561) = 0u;
  a1[563] = 4;
  a1[564] = 0;
  a1[566] = 0;
  a1[565] = 0;
  return a1;
}

uint64_t AGCLLVMUserFragmentShader::AGCLLVMUserFragmentShader(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 + 4096;
  v12 = (a4 + 8);
  v13 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.fragment", *(a4 + 8), a6, 0);
  AGCLLVMFragmentShader::AGCLLVMFragmentShader((v13 + 567), a2 + 7, a5, (**v12 >> 20) & 7, 0);
  v14 = *a2;
  *a1 = *a2;
  *(a1 + *(v14 - 24)) = a2[13];
  *(a1 + *(*a1 - 24) + 1704) = a2[14];
  *(a1 + 4536) = a2[15];
  v85 = v11;
  *(v11 + 1432) = 0;
  *(a1 + 5536) = 0u;
  *(a1 + 5552) = 0u;
  *(a1 + 5568) = 0u;
  *(a1 + 5584) = 0u;
  *(a1 + 5600) = 0u;
  *(a1 + 5616) = 0u;
  *(a1 + 5632) = 0u;
  *(a1 + 5648) = 0u;
  *(a1 + 5664) = 0u;
  *(a1 + 5680) = 0u;
  *(a1 + 5696) = 0u;
  *(a1 + 5712) = 0u;
  *(a1 + 5728) = 0u;
  *(a1 + 5744) = 0u;
  *(a1 + 5760) = 0u;
  *(a1 + 5776) = 0u;
  v15 = -256;
  do
  {
    v16 = a1 + v15;
    *(v16 + 5800) = 4;
    *(v16 + 5808) = 0uLL;
    v15 += 32;
  }

  while (v15);
  *(a1 + 6032) = 0u;
  *(a1 + 6016) = 0u;
  *(a1 + 6000) = 0u;
  *(a1 + 5984) = 0u;
  *(a1 + 5968) = 0u;
  *(a1 + 5952) = 0u;
  *(a1 + 5936) = 0u;
  *(a1 + 5920) = 0u;
  *(a1 + 5904) = 0u;
  *(a1 + 5888) = 0u;
  *(a1 + 5872) = 0u;
  *(a1 + 5856) = 0u;
  *(a1 + 5840) = 0u;
  *(a1 + 5824) = 0u;
  *(a1 + 5808) = 0u;
  v17 = -256;
  *(a1 + 5792) = 0u;
  do
  {
    v18 = a1 + v17;
    *(v18 + 6056) = 4;
    *(v18 + 6064) = 0uLL;
    v17 += 32;
  }

  while (v17);
  *(v11 + 1964) = 0;
  *(a1 + 6048) = 0;
  *(a1 + 6056) = 0;
  *(a1 + 6064) = 4;
  *(a1 + 6072) = 0u;
  *(a1 + 6088) = 4;
  *(a1 + 6096) = 0u;
  *(a1 + 6112) = 4;
  *(a1 + 6120) = 0u;
  *(a1 + 6136) = 4;
  *(a1 + 6144) = 0u;
  *(a1 + 6160) = 4;
  *(a1 + 6168) = 0u;
  *(a1 + 6184) = **(a4 + 8) >> 12;
  *(a1 + 6200) = 0u;
  *(a1 + 6192) = 4;
  *(a1 + 6216) = 4;
  *(a1 + 6224) = 0u;
  *(a1 + 6248) = 0u;
  *(a1 + 6240) = 4;
  *(a1 + 6264) = 4;
  *(a1 + 6272) = 0;
  *(a1 + 6280) = 0u;
  *(a1 + 6296) = 4;
  *(a1 + 6304) = 0u;
  *(a1 + 6320) = 4;
  *(a1 + 6328) = 0u;
  *(a1 + 6344) = 4;
  *(a1 + 6352) = 0u;
  *(a1 + 6368) = 4;
  *(a1 + 6376) = 0u;
  *(a1 + 6392) = &unk_2825BE458;
  v19 = *v12;
  *(a1 + 6416) = *(v12 + 2);
  *(a1 + 6400) = v19;
  *(v11 + 2339) = 0;
  *(a1 + 6424) = 0;
  *(a1 + 6432) = 0;
  v84 = (v11 + 2340);
  *(v11 + 2340) = 0x500000000;
  *(v11 + 2348) = 0;
  *(a1 + 6448) = 0;
  *(a1 + 6464) = 0;
  *(a1 + 6456) = 0;
  *(a1 + 6472) = 0;
  v20 = *(a4 + 16);
  v21 = *a1;
  *(a1 + *(*a1 - 24) + 4577) = *(v20 + 61) & 1;
  *(*(a1 + *(v21 - 24) + 2168) + 1941) = (*(v20 + 68) & 0x1000) != 0;
  *(a1 + 3912) = (*(v20 + 60) & 0x200) != 0;
  v86 = "air.fragment";
  v87 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a3, &v86);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v24 = *(Operand + 8);
  if (v24 >= 4)
  {
    v25 = Operand;
    for (i = 3; i < v24; ++i)
    {
      v27 = *(v25 - 8 * v24 + 8 * i);
      v28 = *v27;
      if (v28 <= 0x22 && ((0x7FFFFFFF0uLL >> v28) & 1) != 0)
      {
        v29 = *(v27 + 2);
        if (v29)
        {
          for (j = 0; j < v29; ++j)
          {
            if (isStringMDNode(*&v27[8 * j + -8 * v29], "air.fragment_rate"))
            {
              String = llvm::MDString::getString(*&v27[8 * j + 8 + -8 * *(v27 + 2)]);
              if (v32 == 5)
              {
                v33 = *String == 1869377379 && *(String + 4) == 114;
                v34 = v33;
              }

              else
              {
                v34 = 0;
              }

              *(a1 + 6472) = v34;
              if (1 << ((*(*(a1 + 5280) + 32) >> 10) & 3) == 1 << (BYTE1(*(*(a1 + 5280) + 32)) & 3))
              {
                *(a1 + 6472) = 0;
              }
            }

            v29 = *(v27 + 2);
          }

          v24 = *(v25 + 8);
        }
      }
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    v36 = 0;
    v37 = 0x69736F702E726961;
    do
    {
      v38 = *(*(a1 + 80) + 8 * v36);
      if (v38)
      {
        v39 = llvm::MDString::getString(*(v38 - 8 * *(v38 + 8) + 8));
        if (v40 > 15)
        {
          if (v40 == 16)
          {
            if (*v39 == 0x6E6F72662E726961 && *(v39 + 8) == 0x676E696361665F74)
            {
              v85[2336] = 1;
            }
          }

          else if (v40 == 18)
          {
            v42 = *v39 == 0x706D61732E726961 && *(v39 + 8) == 0x5F6B73616D5F656CLL;
            if (v42 && *(v39 + 16) == 28265)
            {
              v44 = v37;
              v45 = *(v38 + 8);
              if (v38 - 8 * v45 + 16 == v38)
              {
                v48 = 0;
              }

              else
              {
                v46 = -8 * v45;
                v47 = v38 + 16;
                do
                {
                  v48 = isStringMDNode(*(v47 + v46), "air.post_depth_coverage");
                  if (v48)
                  {
                    break;
                  }

                  v33 = v46 == -24;
                  v46 += 8;
                }

                while (!v33);
              }

              v85[2360] = v48;
              v37 = v44;
            }
          }
        }

        else if (v40 == 12)
        {
          if (*v39 == v37 && *(v39 + 8) == 1852795252)
          {
            v85[2335] = 1;
          }
        }

        else if (v40 == 15 && *v39 == 0x6E696F702E726961 && *(v39 + 7) == 0x64726F6F635F746ELL)
        {
          v85[2337] = 1;
        }
      }

      ++v36;
    }

    while (v36 != v35);
  }

  v51 = **(a1 + 6400);
  v52 = (v51 & 0x60000) == 0x40000 && ((v51 & 0x10000) != 0 || (*(*(a1 + 5280) + 33) & 3) != 0);
  v85[2338] = v52;
  v53 = *(a1 + 64);
  if (v53)
  {
    v54 = *(v53 + 8);
    if (v54)
    {
      v55 = 0;
      while (1)
      {
        v56 = *(*(a1 + 64) - 8 * *(*(a1 + 64) + 8) + 8 * v55);
        v57 = llvm::MDString::getString(*(v56 - 8 * *(v56 + 8)));
        v59 = v57;
        v60 = v58;
        if (v58 == 12)
        {
          break;
        }

        if (v58 != 9)
        {
          goto LABEL_92;
        }

        if (*v57 != 0x747065642E726961 || *(v57 + 8) != 104)
        {
          goto LABEL_92;
        }

        v85[2339] = 1;
        *(a1 + 6440) = 0;
        v62 = *(v56 + 8);
        if (v62 >= 2)
        {
          v64 = 1;
          while (1)
          {
            v63 = v56 - 8 * v62;
            v65 = *(v63 + 8 * v64);
            if (!*v65)
            {
              break;
            }

            if (v62 == ++v64)
            {
              goto LABEL_129;
            }
          }

          v68 = llvm::MDString::getString(*(v63 + 8 * v64));
          if (v69 == 19)
          {
            v70 = *v68 == 0x747065642E726961 && v68[1] == 0x66696C6175715F68;
            if (v70 && *(v68 + 11) == 0x72656966696C6175)
            {
              v65 = *(v56 - 8 * *(v56 + 8) + 8 * (v64 + 1));
            }
          }

          v72 = llvm::MDString::getString(v65);
          switch(v73)
          {
            case 11:
              if (*v72 == 0x616572672E726961 && *(v72 + 3) == 0x726574616572672ELL)
              {
                v74 = 1;
                goto LABEL_127;
              }

              break;
            case 8:
              v75 = 2 * (*v72 == 0x7373656C2E726961);
              goto LABEL_128;
            case 7:
              v74 = 0;
              v75 = 0;
              if (*v72 != 779250017 || *(v72 + 3) != 2037276974)
              {
                goto LABEL_128;
              }

LABEL_127:
              v75 = v74;
LABEL_128:
              *v84 = v75;
              goto LABEL_129;
          }

          v75 = 0;
          goto LABEL_128;
        }

LABEL_129:
        if (++v55 == v54)
        {
          goto LABEL_130;
        }
      }

      if (*v57 != 0x65766F632E726961 || *(v57 + 8) != 1701273970)
      {
LABEL_92:
        if (!AGCLLVMUserFragmentShader::isSampleMaskVariant(v57, v58))
        {
          if (v60 == 11 && *v59 == 0x6E6574732E726961 && *(v59 + 3) == 0x6C69636E6574732ELL)
          {
            v85[2361] = 1;
          }

          goto LABEL_129;
        }
      }

      v85[2348] = 1;
      goto LABEL_129;
    }
  }

LABEL_130:
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v79 = *(Function + 8) != 0;
  }

  else
  {
    v79 = 0;
  }

  v85[2349] = v79;
  *(a1 + 6448) = Function;
  v80 = llvm::Module::getFunction();
  if (v80)
  {
    v81 = *(v80 + 8) != 0;
  }

  else
  {
    v81 = 0;
  }

  v82 = a1 + *(*a1 - 24);
  *(v82 + 2224) = v81;
  *(v82 + 5128) = v80;
  return a1;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::AGCLLVMAGPFragmentShaderGen3(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7, int a8, _DWORD *a9)
{
  v12 = (a1 + 4096);
  v13 = AGCLLVMAGPFragmentShader::AGCLLVMAGPFragmentShader(a1, a2 + 1, a3, a4, a5, a6, a7);
  v14 = *a2;
  *v13 = *a2;
  *(a1 + *(v14 - 24)) = a2[21];
  *(a1 + *(*a1 - 24) + 1704) = a2[22];
  *(a1 + 4536) = a2[23];
  *(a1 + 7536) = 0u;
  *(a1 + 7528) = a1 + 7536;
  *(a1 + 7560) = 0u;
  *(a1 + 7552) = a1 + 7560;
  *(a1 + 7576) = 0u;
  *(a1 + 7592) = 0;
  *(a1 + 7600) = a1 + 7616;
  *(a1 + 7608) = 0x800000000;
  *(a1 + 7648) = a1 + 7664;
  *(a1 + 7656) = 0x800000000;
  *(a1 + 7696) = 0u;
  *(a1 + 7712) = 0u;
  *(a1 + 7728) = 0u;
  *(a1 + 7744) = 0u;
  *(a1 + 7760) = 0u;
  *(a1 + 7776) = 0u;
  *(a1 + 7792) = 0u;
  *(a1 + 7808) = 0u;
  *(a1 + 7824) = 0;
  *(a1 + 7832) = 4;
  *(a1 + 7840) = 0u;
  *(a1 + 7856) = a8;
  v12[3764] = a8 == 3;
  *(a1 + 7864) = 0;
  *(a1 + 7872) = 4;
  *(a1 + 7880) = 0u;
  *(a1 + 7896) = 4;
  *(a1 + 7904) = 0u;
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1863) != 1)
  {
    if (a8 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = xmmword_20E70C570;
  std::vector<AIRConstSampler>::push_back[abi:nn200100](a1 + 944, &v23);
  v22 = xmmword_20E70C570;
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](a1 + 968, &v22);
  if (v12[3764])
  {
LABEL_5:
    *(a1 + 7864) = *a9;
  }

LABEL_6:
  if (v12[2349] == 1)
  {
    v12[2366] = 1;
    v15 = *(a1 + 6448);
    do
    {
      v15 = *(v15 + 8);
      if (!v15)
      {
        break;
      }

      v16 = *(*(*(v15 + 24) + 40) + 40);
      v17 = v16 - 24;
      v18 = v16 ? v16 - 24 : 0;
      v19 = *(v18 + 16) - 29 >= 0xB ? 0 : v17;
      v20 = *(v19 + 16);
      v12[2366] = v20 != 35;
    }

    while (v20 != 35);
  }

  return a1;
}

uint64_t AGCLLVMAGPFragmentShader::AGCLLVMAGPFragmentShader(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7)
{
  v12 = AGCLLVMUserFragmentShader::AGCLLVMUserFragmentShader(a1, a2 + 1, a3, a4, a5, 0);
  v13 = *a2;
  *v12 = *a2;
  *(a1 + *(v13 - 24)) = a2[17];
  *(a1 + *(*a1 - 24) + 1704) = a2[18];
  *(a1 + 4536) = a2[19];
  *(a1 + 6480) = 0u;
  *(a1 + 6496) = 0x1000000000;
  *(a1 + 6512) = a1 + 6528;
  *(a1 + 6520) = 0x800000000;
  *(a1 + 7040) = 0;
  *(a1 + 7044) = 0;
  *(a1 + 7048) = 0u;
  *(a1 + 7064) = 0u;
  *(a1 + 7080) = 0;
  v14 = -120;
  do
  {
    v15 = a1 + v14;
    *(v15 + 7208) = 4;
    *(v15 + 7216) = 0uLL;
    v14 += 24;
  }

  while (v14);
  v16 = a1 + 7224;
  v17 = 160;
  do
  {
    *(v16 - 16) = v16;
    *(v16 - 8) = 0x300000000;
    v16 += 32;
    v17 -= 32;
  }

  while (v17);
  v18 = a1 + 7384;
  v19 = 160;
  do
  {
    *(v18 - 16) = v18;
    *(v18 - 8) = 0x300000000;
    v18 += 32;
    v19 -= 32;
  }

  while (v19);
  AGCLLVMUserShader::enableStatistics(a1, *(*(a4 + 16) + 60) & 1, (*(*(a4 + 16) + 60) >> 1) & 1);
  v20 = *(a4 + 16);
  *(a1 + 18) = (*(v20 + 60) & 8) != 0;
  *(a1 + *(*a1 - 24) + 4576) = (*(v20 + 60) & 0x4000000) != 0;
  *(a1 + 6476) = *(v20 + 56);
  *(a1 + 3504) = *(v20 + 16);
  *(a1 + 20) = (*(v20 + 60) & 4) != 0;
  if (a6 && a7)
  {
    v21 = (a6 + *a6);
    v22 = (a7 + *a7);
    v23 = (v21 - *v21);
    if (*v23 >= 5u && (v24 = v23[2]) != 0)
    {
      v25 = (v21 + v24 + *(v21 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = (v22 - *v22);
    if (*v26 >= 5u && (v27 = v26[2]) != 0)
    {
      v28 = v22 + v27 + *(v22 + v27);
    }

    else
    {
      v28 = 0;
    }

    if (*v25)
    {
      v29 = 0;
      v30 = v28 + 4;
      v31 = (v25 + 2);
      v32 = v25 + 2;
      do
      {
        v33 = *&v30[4 * v29];
        v34 = *(v31 - 1);
        v35 = strlen(&v31[v34]);
        *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((a1 + 6480), v32 + v34, v35) + 8) = v33;
        ++v29;
        ++v32;
        v31 += 4;
      }

      while (v29 < *v25);
    }
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t AGCLLVMObjectBase::dumpShaderToFile(unsigned int (***this)(AGCTargetPrinter **))
{
  result = AGCTargetPrinter::isValidToPrintMessage(this[212]);
  if (result)
  {
    if ((*this)[7](this))
    {
      {
        {
          AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        }
      }

      if (AGCEnv::isEnabled(void)::is_internal != 1)
      {
        return 0;
      }

      result = AGCEnv::getValue("AGC_STATUS_LOG_DRIVER_SHADERS", v3);
      if (result)
      {
        if (*result == 48)
        {
          return 0;
        }

        return atoi(result) != 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL AGCTargetPrinter::isValidToPrintMessage(AGCTargetPrinter *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this)
  {
    v3 = MEMORY[0x277D82670];
    if (v2 != MEMORY[0x277D82670])
    {
      v4 = v2 + *(*v2 - 24);
      if ((v4[32] & 5) != 0)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v5 = -1;
        v24 = -1;
      }

      else
      {
        (*(**(v4 + 5) + 32))(&v16);
        v5 = v24;
      }

      v6 = v5 - *(this + 17);
      if (v6 >= 1)
      {
        v7 = *(this + 18);
        if (*(v7 + 8) == 1 && (*(v7 + 9) & 1) == 0 && *(v7 + 4))
        {
          atomic_fetch_add(v7, v6);
        }

        v8 = v20;
        *(this + 88) = v21;
        v9 = v23;
        *(this + 104) = v22;
        *(this + 120) = v9;
        v10 = v16;
        *(this + 24) = v17;
        v11 = v19;
        *(this + 40) = v18;
        *(this + 56) = v11;
        *(this + 72) = v8;
        *(this + 17) = v24;
        *(this + 8) = v10;
      }
    }

    v12 = *(this + 18);
    if (*(v12 + 8) != 1 || (*(v12 + 9) & 1) == 0 && *(v12 + 4) && (v13 = atomic_load(v12), v13 > *(v12 + 4)))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "<< Rest of the status file truncated>>\n", 39);
      v14 = *this;
      if (*this && v14 != v3)
      {
        (*(*v14 + 8))(v14);
        *this = 0;
      }
    }
  }

  return *this != 0;
}

uint64_t AGCLLVMUserObject::compile(AGCLLVMUserObject *this)
{
  if ((AGCLLVMUserObject::translatorCompile(this) & 1) != 0 && ((v7 = 0, v8 = 1, v10 = 0, v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)), v2 <= 0x1C) ? (v3 = ((1 << v2) & 0x18400180) == 0) : (v3 = 1), v3 ? (v4 = 2) : (v4 = 1), v9 = (*(*(this + *(*this - 24)) + 88))(this + *(*this - 24)), AGCLLVMCtx::compile(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), *(this + 33), v4, &v7, *(this + 38))))
  {
    v5 = (*(*(this + *(*this - 24)) + 160))(this + *(*this - 24));
  }

  else
  {
    v5 = 0;
  }

  *(this + *(*this - 24) + 2184) = mach_absolute_time() - *(this + *(*this - 24) + 2176);
  return v5;
}

void *AGCLLVMUserShader::enableStatistics(void *this, int a2, int a3)
{
  v5 = this;
  if ((a2 & 1) != 0 || a3)
  {
    this = llvm::Module::getOrInsertNamedMetadata();
    if (a2)
    {
      this = llvm::Module::getOrInsertNamedMetadata();
      *(v5 + 38) = 1;
    }

    if (a3)
    {

      return llvm::Module::getOrInsertNamedMetadata();
    }
  }

  return this;
}

void std::vector<AIRConstSampler>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

AGCLLVMObjectBase *newObjectArrayWithIntersectionShadersIfNeeded<_AGCFragmentContextStateAGP>(void *a1, AGCLLVMCtx *a2, llvm::Module *this, uint64_t a4)
{
  v7 = "air.intersection";
  v8 = 259;
  if (llvm::Module::getNamedMetadata(this, &v7))
  {
    operator new();
  }

  if (a1)
  {
    return (a1 + *(*a1 - 24));
  }

  else
  {
    return 0;
  }
}

void AGCLLVMObject::processBuildRequestInfo(AGCTargetPrinter **this)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(this))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(this[212]))
    {
      v2 = this[212];
      v3 = (*(*this + 6))(this);
      AGCTargetPrinter::printMessage(v2, "------ Build Request Info for %s shader %u ------", v3, *(this + 1272));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(this[212]))
    {
      if (*(this[211] + 1955))
      {
        v4 = "AIRNT";
      }

      else
      {
        v4 = "MTLCompiler";
      }

      AGCTargetPrinter::printMessage(this[212], "translator interface: %s", v4);
    }

    v5 = this[267];
    if (v5)
    {
      *&v15 = "air.requestHash";
      v17 = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(v5, &v15);
      if (NamedMetadata)
      {
        v7 = NamedMetadata;
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
        v14[0] = String;
        v14[1] = v10;
        llvm::StringRef::str(&v15, v14);
        v11 = (this + 637);
        if (*(this + 5119) < 0)
        {
          operator delete(*v11);
        }

        *v11 = v15;
        this[639] = v16;
        if (AGCTargetPrinter::isValidToPrintMessage(this[212]))
        {
          AGCTargetPrinter::printMessage(this[212], "hash: %s", String);
        }

        llvm::NamedMDNode::eraseFromParent(v7);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(this[212]))
    {
      v12 = this[212];
      v13 = (*(*this + 6))(this);
      AGCTargetPrinter::printMessage(v12, "------ End Build Request Info for %s shader %u ------\n", v13, *(this + 1272));
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(void *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 4), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 4), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 2);
  if (*result != -4096)
  {
    --*(a1 + 3);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t *llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v10 = 0;
      v12 = v11 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v10 += 2;
        v16 += 4;
      }

      while (v14 != v10);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = (v4 + 8);
      v20 = v18;
      do
      {
        v21 = *(v19 - 1);
        v10 = v21 | 0x1000;
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v33);
          v22 = v33;
          *v33 = *(v19 - 1);
          v23 = *v19;
          *v19 = 0;
          v22[1] = v23;
          v10 = (*(a1 + 8) + 1);
          *(a1 + 8) = v10;
          v24 = *v19;
          *v19 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        v19 += 2;
        v20 -= 16;
      }

      while (v20);
    }

    return llvm::deallocate_buffer(v10, v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v25 = *(a1 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
      v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
      v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
      v30 = vdupq_n_s64(v28);
      v31 = result + 2;
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_20E70C4F0)));
        if (v32.i8[0])
        {
          *(v31 - 2) = -4096;
        }

        if (v32.i8[4])
        {
          *v31 = -4096;
        }

        v26 += 2;
        v31 += 4;
      }

      while (v29 != v26);
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *llvm::SmallPtrSetImpl<void *>::insert(uint64_t a1, llvm::SmallPtrSetImplBase *this, void *a3)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(this, a3);
  v7 = *(this + 1);
  v8 = 16;
  if (v7 == *this)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(this + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  return result;
}

void *llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

void AGCLLVMUserObject::addInitCompilePass(AGCLLVMUserObject *this)
{
  v1 = this + *(*this - 24);
  LOBYTE(v2) = 0;
  AGCModulePassManager::addPass<llvm::AlwaysInlinerPass>((v1 + 8), &v2, "AlwaysInlinerPass", 17);
}

void OUTLINED_FUNCTION_1()
{

  operator new();
}

uint64_t *std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<AGCUserObjectWrapperInitPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4E)
  {
    v1 = v0;
  }

  else
  {
    v1 = 78;
  }

  v2 = &aStringrefLlvmG_75[v1];
  v3 = 78 - v1;
  if ((78 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 78 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<MarkFunctionsInlinePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_77[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::MDNode *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 8 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 8 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 8 * v8), (*a2 + 8 * v8), 8 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

char *llvm::PassInfoMixin<SimplifyGenericIRAGPFragmentGen4Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x56)
  {
    v1 = v0;
  }

  else
  {
    v1 = 86;
  }

  v2 = &aStringrefLlvmG_5[v1];
  v3 = 86 - v1;
  if ((86 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 86 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<InitCompileCommonPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_72[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

double llvm::Module::setTargetTriple(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t AGCLLVMCtx::compile(uint64_t a1, uint64_t a2, void *a3, char a4, int a5, _BYTE *a6, int a7)
{
  v42[8] = *MEMORY[0x277D85DE8];
  a6[1] = *(a1 + 1953);
  if (*(*(a1 + 32) + 55) != 1)
  {
    goto LABEL_7;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_ENABLE_UNSAFE_MATH", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
LABEL_7:
        *a6 = a4 & 1;
      }
    }
  }

  v13 = (*(*a2 + 48))(a2);
  std::string::basic_string[abi:nn200100]<0>(&__p, v13);
  llvm::AGX::CompileRequest::CompileRequest();
  if (v37 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:nn200100]<0>(&v39, "__GPU_REMARKS_MD");
  std::string::basic_string[abi:nn200100]<0>(&v40, "__GPU_LD_MD");
  std::string::basic_string[abi:nn200100]<0>(&v41, "__GPU_ARCH_LD_MD");
  std::string::basic_string[abi:nn200100]<0>(v42, "__GPU_STATS_MD");
  llvm::AGX::CompileRequest::addSegments();
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v42[i + 2]) < 0)
    {
      operator delete(v42[i]);
    }
  }

  (*(*a2 + 104))(a2, v38);
  isValidToPrintMessage = AGCTargetPrinter::isValidToPrintMessage(*(a2 + 1696));
  if (isValidToPrintMessage && AGCLLVMObjectBase::dumpShaderToFile(a2))
  {
    std::ostream::flush();
    llvm::AGX::CompileRequest::setLoggingStream();
  }

  if (a5 == 1)
  {
    v17 = a6[3];
    if (v17 == 1)
    {
      v16 = a1 + 104;
    }

    else
    {
      v16 = a1 + 80;
    }

    v18 = (*(a1 + 1954) ^ 1) & 1;
    v19 = (a2 + 1656);
    v20 = a1;
    v21 = v16;
    v22 = 1;
  }

  else if (a5 == 2)
  {
    v16 = a1 + 128;
    LOBYTE(v17) = a6[3];
    v18 = (*(a1 + 1954) & 1) == 0;
    v19 = (a2 + 1656);
    v20 = a1;
    v21 = a1 + 128;
    v22 = 2;
  }

  else
  {
    v16 = a1 + 56;
    LOBYTE(v17) = a6[3];
    v19 = (a2 + 1656);
    v20 = a1;
    v21 = a1 + 56;
    v22 = 3;
    v18 = 0;
  }

  AGCLLVMCtx::initializePlan(v20, v21, v22, v18, v19, v17, isValidToPrintMessage);
  if (*(v16 + 16) == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v23 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v23, "api", *(a2 + 5120));
      v24 = (*(*a2 + 80))(a2);
      if (v24 <= 0x22)
      {
        xpc_dictionary_set_uint64(v23, "shader_kind", qword_20E715C80[v24]);
      }

      v25 = xpc_copy(v23);
      analytics_send_event();
      xpc_release(v25);
    }

    v28 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v27 = MEMORY[0x277D821F8] + 16;
    v35 = a1 + 304;
    llvm::raw_ostream::SetUnbuffered(&v27);
    operator new();
  }

  llvm::AGX::CompileRequest::~CompileRequest(v38);
  return 0;
}

char *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

char *flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_2825BFA18;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_2825BFA18;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = &result[*(this + 4) - v5];
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = &result[v6];
  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

char *flatbuffers::vector_downward::fill(char *this, unint64_t a2)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 - *(this + 7) >= a2)
  {
    *(this + 6) = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    *(v3 + 6) -= a2;
  }

  v5 = 0;
  do
  {
    *(*(v3 + 6) + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

flatbuffers::vector_downward *flatbuffers::vector_downward::push(flatbuffers::vector_downward *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = *(this + 6);
    if (v6 - *(this + 7) < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 || result[80] == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v4, a2, v5);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10) - v3 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::TrackField(char *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 7);
  if (*(this + 6) - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = *(v5 + 7);
  }

  *v6 = a3 | (a2 << 32);
  *(v5 + 7) += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  v4 = *(this + 6);
  v5 = *(this + 7);
  if ((v4 - v5) <= 3)
  {
    flatbuffers::vector_downward::reallocate(this, 4uLL);
    v4 = *(this + 6);
    v5 = *(this + 7);
  }

  *(v4 - 4) = 0;
  v6 = v4 - 4;
  *(this + 6) = v6;
  v7 = *(this + 4) - v6 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v8 = 4;
  }

  else
  {
    v8 = (*(this + 34) + 2);
  }

  *(this + 34) = v8;
  if (v6 - v5 < v8)
  {
    flatbuffers::vector_downward::reallocate(this, v8);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v8;
  bzero((v6 - v8), v8);
  v9 = v7 - a2;
  v11 = *(this + 6);
  v10 = *(this + 7);
  v11[1] = v9;
  *v11 = *(this + 34);
  v12 = *(this + 16);
  v13 = (v10 - 8 * v12);
  if (v12)
  {
    v14 = (v10 - 8 * v12);
    do
    {
      *(v11 + v14[2]) = v7 - *v14;
      v14 += 4;
    }

    while (v14 < v10);
  }

  *(this + 7) = v13;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  LODWORD(v17) = v16 - v11 + v15;
  if (*(this + 81) == 1 && v15 < v13)
  {
    v19 = *v11;
    v20 = v15 + v16;
    v21 = *(this + 5);
    while (1)
    {
      v17 = *v21;
      if (v19 == *(v20 - v17) && !memcmp((v20 - v17), v11, v19))
      {
        break;
      }

      if (++v21 >= v13)
      {
        LODWORD(v17) = v16 - v11 + v15;
        goto LABEL_21;
      }
    }

    v11 = (v11 + (v16 - v11 + v15 - v7));
    *(this + 6) = v11;
  }

LABEL_21:
  if (v17 == v16 + v15 - v11)
  {
    if ((v11 - v13) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v13 = *(this + 7);
      v16 = *(this + 4);
      v15 = *(this + 5);
    }

    *v13 = v17;
    *(this + 7) = v13 + 4;
  }

  *(v15 + v16 - v7) = v17 - v7;
  *(this + 70) = 0;
  return v7;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

uint64_t AGCLLVMAGPFragmentShader::constructReply(AGCLLVMAGPFragmentShader *this)
{
  v124 = *MEMORY[0x277D85DE8];
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    return 0;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v105 = AGCLLVMUserObject::constructFlatReply(this);
  v2 = this + *(*this - 24);
  v3 = v2 + 2512;
  v4 = *(v2 + 314);
  if (v4)
  {
    if (*(v2 + 315))
    {
      v5 = v2 + 2512;
    }

    else
    {
      v5 = v2 + 3072;
    }
  }

  else
  {
    v5 = v2 + 3072;
  }

  v8 = *v5;
  v7 = *(v5 + 1);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v8 + *v8);
  }

  v11 = (v10 - *v10);
  if (*v11 < 9u || (v12 = v11[4]) == 0)
  {
    v13 = 0;
    if (!v4)
    {
      goto LABEL_17;
    }

LABEL_19:
    v15 = *(v2 + 315);
    v14 = v2 + 3072;
    if (v15)
    {
      v14 = v3;
    }

    goto LABEL_21;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_17:
  v14 = v2 + 3072;
LABEL_21:
  v17 = *v14;
  v16 = *(v14 + 1);
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v17 + *v17);
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = (v19 + v21 + *(v19 + v21));
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 - *v22);
  v24 = *v23;
  if (v24 < 0x25)
  {
    goto LABEL_44;
  }

  if (v23[18] && *(v22 + v23[18]))
  {
    goto LABEL_40;
  }

  if (v24 < 0x27)
  {
    goto LABEL_44;
  }

  if (v23[19] && *(v22 + v23[19]))
  {
    goto LABEL_40;
  }

  if (v24 < 0x29)
  {
    goto LABEL_44;
  }

  if (v23[20] && *(v22 + v23[20]))
  {
LABEL_40:
    v25 = 1;
    goto LABEL_45;
  }

  if (v24 >= 0x71 && (v26 = v23[56]) != 0)
  {
    v25 = *(v22 + v26) != 0;
  }

  else
  {
LABEL_44:
    v25 = 0;
  }

LABEL_45:
  (*(*this + 560))(this, v13, v25);
  if (*(this + 1630))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(this + 1630));
  }

  v27 = *v13;
  v28 = *(v13 - v27 + 8);
  if (*(v13 - v27 + 8))
  {
    v27 = *(v13 + v28);
    v29 = v13 + v28 + v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = v27;
  }

  v30 = *(v13 + v28 + v27);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 4 * v30;
    while (1)
    {
      v35 = *&v29[v31 + 4];
      v36 = &v29[v31 + v35];
      v37 = *(v36 + 1);
      v38 = v35 - v37;
      v39 = &v29[v31 + v35 - v37];
      v40 = *(v39 + 2);
      if (v40 < 5)
      {
        v48 = v33;
      }

      else
      {
        v41 = -v37;
        v42 = *(v39 + 4);
        if (!v42)
        {
          goto LABEL_64;
        }

        v43 = v29[v31 + 4 + v35 + v42];
        v44 = v43 > 0xA;
        v45 = (1 << v43) & 0x602;
        if (v44 || v45 == 0)
        {
          goto LABEL_64;
        }

        if (v40 < 7)
        {
          v47 = 0;
        }

        else
        {
          v47 = *&v29[v31 + 10 + v38];
          if (v47)
          {
            v47 = *&v29[v31 + 4 + v35 + v47];
          }
        }

        if (*(4 * v47) != -1)
        {
LABEL_64:
          v48 = v33;
LABEL_65:
          if (*&v29[v35 + 8 + v31 + v41] && v29[v31 + 4 + v35 + *&v29[v35 + 8 + v31 + v41]] == 5)
          {
            v32 += 2;
          }

          goto LABEL_68;
        }

        v48 = (v33 + 1);
        *(4 * v47) = v33;
        v49 = *(v36 + 1);
        if (*&v29[v31 + 4 + v35 - v49] >= 5u)
        {
          v41 = -v49;
          goto LABEL_65;
        }
      }

LABEL_68:
      v31 += 4;
      v33 = v48;
      if (v34 == v31)
      {
        goto LABEL_73;
      }
    }
  }

  LODWORD(v48) = 0;
  v32 = 0;
LABEL_73:
  v50 = *this;
  v51 = *(*(this + *(*this - 24) + 2168) + 1878);
  v116 = 0u;
  v115 = 0;
  v117 = v119;
  v118 = 0x800000000;
  v119[64] = 0x1FFFFFFFFLL;
  v120 = v51;
  v122 = 0;
  memset(v121, 0, 122);
  v123 = 1;
  if (*(*(this + 801) + 68))
  {
    v121[121] = 1;
  }

  v52 = *(this + 1630);
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      v55 = *(this + 814) + v53;
      v56 = *(4 * *(v55 + 16));
      if (v56 != -1)
      {
        goto LABEL_80;
      }

      if (*(v55 + 8) == 3)
      {
        break;
      }

LABEL_81:
      ++v54;
      v53 += 64;
      if (v54 >= v52)
      {
        v50 = *this;
        goto LABEL_83;
      }
    }

    v56 = v48;
    LODWORD(v48) = v48 + 1;
LABEL_80:
    *(v55 + 16) = v56;
    GenericVaryingAllocator::addVarying(&v115, v55);
    v52 = *(this + 1630);
    goto LABEL_81;
  }

LABEL_83:
  GenericVaryingAllocator::allocate(&v115, *(this + *(v50 - 24) + 2168));
  GenericVaryingAllocator::serialize(&v115, (this + *(*this - 24) + 4288));
  v106 = 0;
  VaryingSignature = GenericVaryingAllocator::getVaryingSignature(&v115, (this + *(*this - 24) + 4288), &v106 + 1, &v106);
  v58 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + *(*this - 24) + 4288), &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t, 0);
  if (v116 == v115)
  {
    v59 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v59 = v115;
  }

  v60 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v59, (v116 - v115) >> 2);
  if (v118)
  {
    v61 = (v118 << 6) - 64;
    v62 = v117 + 58;
    do
    {
      if (*v62)
      {
        v63 = 1;
      }

      else
      {
        v63 = *(v62 - 50) == 1;
      }

      v64 = v63;
      if (v63)
      {
        break;
      }

      v65 = v61;
      v61 -= 64;
      v62 += 64;
    }

    while (v65);
  }

  else
  {
    v64 = 0;
  }

  v104 = AGCLLVMUserFragmentShader::constructFlatReply(this, v64);
  v66 = this + *(*this - 24);
  v66[4358] = 1;
  v101 = *(v66 + 1084);
  v102 = *(v66 + 1080);
  v103 = *(v66 + 1082);
  if (VaryingSignature)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 4, HIDWORD(v106));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 6, v106);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 22, *(this + 39), 0);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 8, v58);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 10, v60);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 12, v121[120], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 14, *(this + 6445), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 16, *(this + 6444), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 20, v25 & *(this + 3760), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 18, v25, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 24, *(this + 7044), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 26, *(this + 1760) == 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 28, *(this + 1330));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 30, *(this + 1331));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 32, *(this + 1332));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 34, *(this + 1333));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 36, *(this + 1334));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 38, *(this + 1335));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 40, *(this + 1336));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 42, *(this + 1337));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 44, *(this + 1338));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 46, *(this + 1339));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 48, *(this + 1340));
  if (v66[4368] == 1)
  {
    v67 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v66 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v66 + 4288, 50, v67);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 52, *(this + 32));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 54, *(this + 1341));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 56, *(this + 1342));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 58, *(this + 1343));
  v68 = 0;
  v69 = 0;
  LODWORD(v70) = 0;
  do
  {
    v70 = (AGCLLVMTargetLowerer::getRTZMode(*(this + *(*this - 24) + 2168), *(*(this + 684) + v69)) << v68) | v70;
    v69 += 4;
    v68 += 2;
  }

  while (v69 != 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 60, v70);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 62, *(this + 1344));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 64, *(this + 1345));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 4288, 66, *(this + 1346));
  v71 = AGCLLVMUserObject::needsDylibResources(this);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 4288, 68, v71, 0);
  (*(*this + 616))(this);
  if (v66[4368])
  {
    v72 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v66 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v66 + 4288, 70, v72);
  }

  v73 = flatbuffers::FlatBufferBuilder::EndTable((v66 + 4288), v102 - v101 + v103);
  v74 = this + *(*this - 24);
  v74[4358] = 1;
  v75 = *(v74 + 1082);
  v76 = *(v74 + 1080) - *(v74 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v74 + 4288), v105);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v74 + 4288), v104);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLFragmentInfo>((v74 + 4288), v73);
  v77 = *(*this - 24);
  v78 = flatbuffers::FlatBufferBuilder::EndTable((v74 + 4288), v76 + v75);
  flatbuffers::FlatBufferBuilder::Finish((this + v77 + 4288), v78, v79);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v80 = (this + *(*this - 24));
  if (v80[104].__r_.__value_.__r.__words[2])
  {
    v81 = &v80[104].__r_.__value_.__r.__words[2];
    if (!v80[105].__r_.__value_.__r.__words[0])
    {
      v81 = &v80[128];
    }
  }

  else
  {
    v81 = &v80[128];
  }

  v82 = (v81->__words[0] + *v81->__words[0]);
  v83 = (v82 + *(v82 - *v82 + 4));
  v84 = (v83 + *v83 + *(v83 + *v83 - *(v83 + *v83) + 8));
  if (*(v84 + *v84) > 0x20)
  {
    goto LABEL_139;
  }

  v85 = *(*(v80[70].__r_.__value_.__l.__size_ + 32) + 56);
  if (v122 + v32 > v85)
  {
    std::to_string(&v108, v122 + v32);
    v86 = std::string::insert(&v108, 0, "Number of varying components(");
    v87 = v86->__r_.__value_.__r.__words[2];
    *&v109.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
    v109.__r_.__value_.__r.__words[2] = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = std::string::append(&v109, ") ");
    v89 = v88->__r_.__value_.__r.__words[2];
    *&v110.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
    v110.__r_.__value_.__r.__words[2] = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v110, "exceeds the limit (");
    v91 = v90->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = *&v90->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v107, v85);
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v107;
    }

    else
    {
      v92 = v107.__r_.__value_.__r.__words[0];
    }

    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v107.__r_.__value_.__l.__size_;
    }

    v94 = std::string::append(&v111, v92, size);
    v95 = v94->__r_.__value_.__r.__words[2];
    *&v112.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
    v112.__r_.__value_.__r.__words[2] = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    v96 = std::string::append(&v112, ")");
    v97 = v96->__r_.__value_.__r.__words[2];
    __p = *&v96->__r_.__value_.__l.__data_;
    v114 = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    if (v114 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v114 >= 0)
    {
      v99 = HIBYTE(v114);
    }

    else
    {
      v99 = *(&__p + 1);
    }

    std::string::append(v80 + 69, p_p, v99);
    if (SHIBYTE(v114) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

LABEL_139:
    v6 = 0;
    goto LABEL_141;
  }

  v6 = 1;
LABEL_141:
  *&__p = v121;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&__p);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v117);
  if (v115)
  {
    *&v116 = v115;
    operator delete(v115);
  }

  return v6;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::constructReply(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v2 = AGCLLVMAGPFragmentShader::constructReply(this);
  if (v2)
  {
    if (*(this + 7824))
    {
      v3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>((this + *(*this - 24) + 4384), this + 7696, 8);
      v4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>((this + *(*this - 24) + 4384), this + 7760, 8);
      v5 = this + *(*this - 24);
      v5[4454] = 1;
      v6 = *(v5 + 1106);
      v7 = *(v5 + 1104) - *(v5 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v5 + 4384), 6, v4);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v5 + 4384), 4, v3);
      v8 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4384), v7 + v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = this + *(*this - 24);
    v10 = *(*(v9 + 271) + 1858) == 1 && *(this + 1760) == 1;
    v11 = *(this + 6456);
    if (*(this + 3766) == 1)
    {
      v12 = *(this + 1133);
    }

    else
    {
      v12 = 0;
    }

    v9[4454] = 1;
    v13 = *(v9 + 1106);
    v14 = *(v9 + 1104) - *(v9 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4384, 10, v12);
    if (v8)
    {
      flatbuffers::FlatBufferBuilder::Align((v9 + 4384), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 4384, 8, (*(v9 + 1104) - *(v9 + 1108) + *(v9 + 1106) - v8 + 4));
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 4384, 6, v10, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 4384, 4, v11, 0);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4384), v14 + v13);
    v16 = *this;
    v17 = this + *(*this - 24);
    v17[4454] = 1;
    v18 = *(v17 + 1106);
    v19 = *(v17 + 1104) - *(v17 + 1108);
    if (v15)
    {
      v20 = v15;
      flatbuffers::FlatBufferBuilder::Align((v17 + 4384), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 4384, 6, (*(v17 + 1104) - *(v17 + 1108) + *(v17 + 1106) - v20 + 4));
      v16 = *this;
    }

    v21 = *(v16 - 24);
    v22 = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4384), v19 + v18);
    flatbuffers::FlatBufferBuilder::Finish((this + v21 + 4384), v22, v23);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

BOOL AGCDeserializedReply::deserialize(AGCDeserializedReply *this, _DWORD *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (*a2 != -17958193)
  {
    return 0;
  }

  v85 = a2[4];
  if (v85)
  {
    v4 = 0;
    v5 = a2 + 8;
    v92 = (this + 1824);
    v78 = this + 1192;
    v79 = this + 1880;
    v81 = this + 1864;
    v82 = this + 1856;
    v86 = this + 24;
    v87 = this + 1912;
    v88 = this + 1904;
    do
    {
      v6 = *v5;
      v89 = v4;
      if (*v5 == 2)
      {
        v39 = v5[3];
        v40 = *this + v5[4];
        v41 = (*this + v5[2]);
        *(this + 224) = v41;
        *(this + 225) = v40;
        *(this + 452) = v39;
        if (v39)
        {
          v42 = 0;
          v43 = v40 + 1;
          do
          {
            v44 = *(this + 1760);
            if (v44)
            {
              v45 = *(v41 + 5);
              v46 = vcnt_s8(v44);
              v46.i16[0] = vaddlv_u8(v46);
              if (v46.u32[0] > 1uLL)
              {
                v47 = *(v41 + 5);
                if (*&v44 <= v45)
                {
                  v47 = v45 % v44.i32[0];
                }
              }

              else
              {
                v47 = (v44.i32[0] - 1) & v45;
              }

              v48 = *(*(this + 219) + 8 * v47);
              if (v48)
              {
                v49 = *v48;
                if (v49)
                {
                  v50 = *v41;
                  v51 = *(v41 + 1);
                  do
                  {
                    v52 = v49[1];
                    if (v52 == v45)
                    {
                      if (*(v49 + 4) == v45)
                      {
                        if ((~*(v41 + 4) & 0xE) != 0 || v49 == 0)
                        {
                          break;
                        }

                        v54 = (v49 + 3);
                        if (*(v49 + 47) < 0)
                        {
                          v54 = *v54;
                        }

                        std::string::basic_string[abi:nn200100]<0>(&__p, v54);
                        v55 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 245, &__p);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        std::string::basic_string[abi:nn200100]<0>(&v96, (v43 + v50));
                        v56 = *(v55 + 10);
                        v80 = v43;
                        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          __p = v96;
                        }

                        v57 = &v78[40 * v56];
                        v94 = v51;
                        v58 = __p.__r_.__value_.__r.__words[0];
                        v77 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
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

                        v61 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_p, size);
                        v62 = v61;
                        v63 = *(v57 + 8);
                        if (!*&v63)
                        {
                          goto LABEL_123;
                        }

                        v64 = vcnt_s8(v63);
                        v64.i16[0] = vaddlv_u8(v64);
                        v84 = v64.u32[0];
                        if (v64.u32[0] > 1uLL)
                        {
                          v65 = v61;
                          if (v61 >= *&v63)
                          {
                            v65 = v61 % *&v63;
                          }
                        }

                        else
                        {
                          v65 = (*&v63 - 1) & v61;
                        }

                        v66 = *(*v57 + 8 * v65);
                        v91 = v65;
                        if (!v66 || (v76 = v58, (v67 = *v66) == 0))
                        {
LABEL_123:
                          operator new();
                        }

                        while (1)
                        {
                          v68 = v67[1];
                          if (v68 == v62)
                          {
                            v69 = std::equal_to<std::string>::operator()[abi:nn200100](v67 + 2, &__p);
                            v65 = v91;
                            if (v69)
                            {
                              if (v77 < 0)
                              {
                                operator delete(v76);
                              }

                              v43 = v80;
                              if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v96.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_126;
                            }
                          }

                          else
                          {
                            if (v84 > 1)
                            {
                              if (v68 >= *&v63)
                              {
                                v68 %= *&v63;
                              }
                            }

                            else
                            {
                              v68 &= *&v63 - 1;
                            }

                            if (v68 != v65)
                            {
                              goto LABEL_123;
                            }
                          }

                          v67 = *v67;
                          if (!v67)
                          {
                            goto LABEL_123;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v46.u32[0] > 1uLL)
                      {
                        if (v52 >= *&v44)
                        {
                          v52 %= *&v44;
                        }
                      }

                      else
                      {
                        v52 &= *&v44 - 1;
                      }

                      if (v52 != v47)
                      {
                        break;
                      }
                    }

                    v49 = *v49;
                  }

                  while (v49);
                }
              }
            }

LABEL_126:
            v41 += 4;
            ++v42;
          }

          while (v42 != v39);
        }
      }

      else if (v6 == 11)
      {
        *(this + 227) = *(v5 + 2);
      }

      else if (v6 == 25)
      {
        *(this + 2) = v5;
        v90 = v5[30];
        std::vector<unsigned int>::resize(v92, (v5[16] + 1));
        v7 = *(this + 2);
        v8 = *(v7 + 64);
        if (*(v7 + 64))
        {
          v9 = 0;
          v83 = 0;
          v10 = v5 + 18;
          v11 = 1;
          v12 = 1;
          while (1)
          {
            *(&v96.__r_.__value_.__s + 23) = 16;
            *&v96.__r_.__value_.__l.__data_ = *(v10 + 1);
            v96.__r_.__value_.__s.__data_[16] = 0;
            begin = v92->__begin_;
            v92->__begin_[v12] = v10[12] - v90;
            if (!strncmp(v10 + 16, "__GPU_STATS", 0x10uLL))
            {
              break;
            }

            if (!strncmp(v10 + 16, "__DWARF", 0x10uLL))
            {
              goto LABEL_64;
            }

            if (strncmp(v10 + 16, "__GPU_METADATA", 0x10uLL))
            {
LABEL_12:
              if (!strncmp(v10 + 16, "__TEXT", 0x10uLL))
              {
                v22 = strncmp(v10, "__const", 0x10uLL);
                v14 = v82;
                if (!v22)
                {
                  goto LABEL_27;
                }

                v23 = strncmp(v10, "__cstring", 0x10uLL);
                v14 = v81;
                if (!v23)
                {
                  goto LABEL_27;
                }
              }

              if (!strncmp(v10 + 16, "__DATA", 0x10uLL) && !strncmp(v10, "__common", 0x10uLL))
              {
                begin[v12] = *(v10 + 4);
                v14 = v79;
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            if (!strncmp(v10, "__helpers", 0x10uLL) && *(this + 28) && *(this + 29))
            {
              v24 = 1;
              goto LABEL_29;
            }

            if (!strncmp(v10, "__helpers", 0x10uLL))
            {
              goto LABEL_12;
            }

            if ((v83 & 1) == 0)
            {
              v24 = 0;
              v83 = 1;
LABEL_29:
              if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = &v96;
              }

              else
              {
                v25 = v96.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:nn200100]<0>(&__p, v25);
              v26 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 245, &__p);
              v27 = v26;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (v27)
                {
LABEL_34:
                  v28 = *(v10 + 5);
                  v29 = v10;
                  if (v28)
                  {
                    v29 = (*this + v10[12]);
                  }

                  if ((v24 & 1) == 0)
                  {
                    v30 = v10[15];
                    v31 = *this + v10[14];
                    v32 = &v86[40 * *(v27 + 10)];
                    *v32 = v29;
                    *(v32 + 1) = v28;
                    v32[16] = v12;
                    *(v32 + 3) = v31;
                    *(v32 + 8) = v30;
                  }

                  LODWORD(__p.__r_.__value_.__l.__data_) = v11;
                  std::string::basic_string[abi:nn200100]<0>(&__p.__r_.__value_.__l.__size_, v25);
                  v33 = *(this + 220);
                  if (!v33)
                  {
                    goto LABEL_56;
                  }

                  v34 = vcnt_s8(v33);
                  v34.i16[0] = vaddlv_u8(v34);
                  if (v34.u32[0] > 1uLL)
                  {
                    data_low = LODWORD(__p.__r_.__value_.__l.__data_);
                    if (v33 <= LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      data_low = LODWORD(__p.__r_.__value_.__l.__data_) % v33;
                    }
                  }

                  else
                  {
                    data_low = (v33 - 1) & __p.__r_.__value_.__l.__data_;
                  }

                  v36 = *(*(this + 219) + 8 * data_low);
                  if (!v36 || (v37 = *v36) == 0)
                  {
LABEL_56:
                    operator new();
                  }

                  while (1)
                  {
                    v38 = v37[1];
                    if (v38 == LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      if (*(v37 + 4) == LODWORD(__p.__r_.__value_.__l.__data_))
                      {
                        if (v95 < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__size_);
                        }

                        ++v9;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      if (v34.u32[0] > 1uLL)
                      {
                        if (v38 >= v33)
                        {
                          v38 %= v33;
                        }
                      }

                      else
                      {
                        v38 &= v33 - 1;
                      }

                      if (v38 != data_low)
                      {
                        goto LABEL_56;
                      }
                    }

                    v37 = *v37;
                    if (!v37)
                    {
                      goto LABEL_56;
                    }
                  }
                }
              }

              else if (v26)
              {
                goto LABEL_34;
              }

              printHexDump(MEMORY[0x277D82670], *this, *(this + 1), 0x20u, &unk_20E75F419, 0);
              goto LABEL_64;
            }

            v17 = *(v10 + 5);
            v18 = *this;
            v19 = v10;
            if (v17)
            {
              v19 = (v18 + v10[12]);
            }

            v20 = v10[14];
            v21 = v10[15];
            *(this + 144) = v19;
            *(this + 145) = v17;
            *(this + 1168) = v12;
            *(this + 147) = v18 + v20;
            *(this + 296) = v21;
            v83 = 1;
            *(this + 1144) = 1;
LABEL_64:
            if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v96.__r_.__value_.__l.__data_);
            }

            if (v8 >= ++v12)
            {
              v10 += 20;
              v11 = v12;
              if (v9 <= 0xE)
              {
                continue;
              }
            }

            goto LABEL_130;
          }

          v15 = strncmp(v10, "__counters", 0x10uLL);
          v14 = v88;
          if (!v15 || (v16 = strncmp(v10, "__telemetry", 0x10uLL), v14 = v87, !v16))
          {
LABEL_27:
            MEMORY[0x20F331AA0](&v96, *v14);
          }

LABEL_28:
          v24 = 0;
          goto LABEL_29;
        }
      }

LABEL_130:
      v5 = (v5 + v5[1]);
      v4 = v89 + 1;
    }

    while (v89 + 1 != v85);
  }

  v70 = this + 24;
  if (*(this + 3))
  {
    if (!*(this + 4))
    {
      v70 = this + 584;
    }
  }

  else
  {
    v70 = this + 584;
  }

  if (!*v70)
  {
    return 0;
  }

  v71 = this + 224;
  if (*(this + 28))
  {
    if (!*(this + 29))
    {
      v71 = this + 784;
    }
  }

  else
  {
    v71 = this + 784;
  }

  v73 = *v71;
  v72 = *(v71 + 1);
  return v73 && v72 != 0 && *(this + 152) != 0;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

char *flatbuffers::FlatBufferBuilder::AddElement<signed char>(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a3 || result[80] == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v4, a2, v5);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

char *flatbuffers::FlatBufferBuilder::AddElement<float>(char *this, uint64_t a2, float a3, float a4)
{
  v6 = this;
  if (a3 != a4 || this[80] == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
    v7 = *(v6 + 6);
    if ((v7 - *(v6 + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(v6, 4uLL);
      v7 = *(v6 + 6);
    }

    *(v7 - 4) = a3;
    v8 = v7 - 4;
    *(v6 + 6) = v8;
    v9 = *(v6 + 8) - v8 + *(v6 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v6, a2, v9);
  }

  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      v10 = *(v7 + 4 * v8);
      flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - v10 + 4);
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

void std::vector<unsigned long long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

BOOL AGCLLVMUserFragmentShader::isAnyPsoStateUnknown(AGCLLVMUserFragmentShader *this)
{
  v1 = *(this + 660);
  if ((*v1 & 0x1F) == 0x17)
  {
    return 1;
  }

  v2 = v1 + 1;
  v3 = -1;
  while (v3 != 6)
  {
    v4 = *v2++;
    ++v3;
    if ((v4 & 0x1F) == 0x17)
    {
      if (v3 < 7)
      {
        return 1;
      }

      break;
    }
  }

  if (*(*(this + 800) + 12))
  {
    return 1;
  }

  v5 = *(this + 801);
  if ((*(v5 + 27) & 8) != 0)
  {
    return 1;
  }

  v6 = 0;
  v7 = v5 + 28;
  v8 = 7;
  while (v6 != 7)
  {
    v9 = *(v7 + 4 * v6++);
    if ((v9 & 0x8000000) != 0)
    {
      v8 = v6 - 1;
      return v8 < 7;
    }
  }

  return v8 < 7;
}

uint64_t AGCLLVMTargetLowerer::getRTZMode(_BYTE *a1, const char *a2)
{
  if (a1[1888] != 1)
  {
    return 0;
  }

  if (a1[1889] == 1)
  {
    return a2 != 2;
  }

  if (a1[904])
  {
    v4 = a2 != 2;
  }

  else
  {
    v4 = a2 == 1;
  }

  v5 = 0x27C8D7000uLL;
  {
    v5 = 0x27C8D7000;
    if (v9)
    {
      if (AGCEnv::isEnabled(v9))
      {
        Value = AGCEnv::getValue("AGC_CLAMP_TO_F16_LIMITS", v10);
      }

      else
      {
        Value = 0;
      }

      AGCLLVMTargetLowerer::getRTZMode(_AGCFPRoundingMode)const::clamp_to_f16 = Value;
      v5 = 0x27C8D7000uLL;
    }
  }

  v6 = *(v5 + 2936);
  if (v6)
  {
    v4 = *v6 != 48;
  }

  if (v4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v7 = 0x27C8D7000uLL;
  {
    v7 = 0x27C8D7000;
    if (v12)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v7 = 0x27C8D7000;
    }
  }

  if (*(v7 + 2944) == 1)
  {
    v8 = AGCEnv::getValue("AGC_F32_TO_F16_RTZ", a2);
    if (v8)
    {
      if (*v8 != 48)
      {
        if (atoi(v8))
        {
          return 3;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

uint64_t AGCLLVMObject::validateBackendReply(unsigned int (***this)(AGCTargetPrinter **))
{
  v4 = 0;
  ((*this)[23])(this, &v4);
  result = AGCLLVMObjectBase::dumpShaderToFile(this);
  if (result)
  {
    if (this[289])
    {
      v3 = (this + 289);
      if (!this[290])
      {
        v3 = (this + 359);
      }
    }

    else
    {
      v3 = (this + 359);
    }

    return (*(*this[271] + 64))(this[271], *v3, v3[1], this);
  }

  return result;
}

uint64_t AGCLLVMUserObject::constructFlatReply(AGCLLVMUserObject *this)
{
  v1 = this;
  v2 = *(this + 118);
  v3 = *(this + 119);
  v58 = *(this + 122);
  v59 = *(this + 121);
  v56 = v3;
  v57 = v2;
  if (v2 != v3)
  {
    v4 = (v3 - v2) >> 4;
    if (!(v4 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v59 == v58)
  {
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    __p = 0;
    v62 = 0;
    v63 = 0;
    std::vector<unsigned long long>::reserve(v64, (*(this + 122) - *(this + 121)) >> 4);
    std::vector<unsigned long long>::reserve(&__p, (*(v1 + 122) - *(v1 + 121)) >> 4);
    v5 = *(v1 + 121);
    v6 = *(v1 + 122);
    v67[0] = v64;
    if (v5 != v6)
    {
      do
      {
        v7 = *v5;
        v5 += 2;
        v66 = v7;
        std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](v67, &v66);
      }

      while (v5 != v6);
      v5 = *(v1 + 121);
      v6 = *(v1 + 122);
    }

    v67[0] = &__p;
    while (v5 != v6)
    {
      v66 = v5[1];
      std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](v67, &v66);
      v5 += 2;
    }

    v8 = v1 + 4288;
    if (v64[1] == v64[0])
    {
      v9 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
    }

    else
    {
      v9 = v64[0];
    }

    v10 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(&v8[*(*v1 - 24)], v9, (v64[1] - v64[0]) >> 3);
    if (v62 == __p)
    {
      v11 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
    }

    else
    {
      v11 = __p;
    }

    v12 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(&v8[*(*v1 - 24)], v11, (v62 - __p) >> 3);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    if (v64[0])
    {
      v64[1] = v64[0];
      operator delete(v64[0]);
    }

    v54 = v10;
    v55 = v12;
  }

  v13 = v1 + *(*v1 - 24);
  if ((*(*v13 + 200))(v13) == 2 || (*(*v13 + 200))(v13) == 1)
  {
    v14 = (v1 + *(*v1 - 24));
    v15 = v14[271];
    if (v14[314])
    {
      v16 = v14 + 314;
      if (!v14[315])
      {
        v16 = v14 + 384;
      }
    }

    else
    {
      v16 = v14 + 384;
    }

    v18 = *v16;
    v17 = v16[1];
    if (v18)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18 + *v18;
    }

    v21 = (*(*v14 + 25))(v14) == 2;
    (*(*v15 + 920))(v64, v15, v20, v21);
    if (v64[0] != &v64[1])
    {
      v22 = v1 + *(*v1 - 24);
      v24 = *(v64[0] + 7);
      v23 = *(v64[0] + 8);
      v22[4358] = 1;
      v25 = *(v22 + 1082);
      v26 = *(v22 + 1080) - *(v22 + 1084);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v22 + 4288, 6, v23);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v22 + 4288, 4, v24);
      flatbuffers::FlatBufferBuilder::EndTable((v22 + 4288), v26 + v25);
      operator new();
    }

    v27 = v1 + *(*v1 - 24);
    v27[4358] = 1;
    flatbuffers::FlatBufferBuilder::PreAlign((v27 + 4288), 0, 4uLL);
    flatbuffers::FlatBufferBuilder::PreAlign((v27 + 4288), 0, 4uLL);
    v27[4358] = 0;
    v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v64[1]);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (*(v1 + 985))
  {
    v30 = v1;
    v31 = *(v1 + 495);
    v60 = v30;
    v32 = *(v30 + 494);
    v33 = v31 - v32;
    if (v31 != v32)
    {
      if (!((v33 >> 5) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v33 >> 5);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v1 = v60;
    v35 = v60 + *(*v60 - 24);
    v35[4358] = 1;
    flatbuffers::FlatBufferBuilder::PreAlign((v35 + 4288), 0, 4uLL);
    flatbuffers::FlatBufferBuilder::PreAlign((v35 + 4288), 0, 4uLL);
    v35[4358] = 0;
    v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v35 + 4288), 0);
  }

  else
  {
    v34 = 0;
  }

  v36 = AGCLLVMObject::constructVisibleFunctionArray((v1 + *(*v1 - 24)), 1);
  v37 = AGCLLVMObject::constructFlatReply((v1 + *(*v1 - 24)));
  v38 = v37;
  v40 = v39;
  if (v57 != v56)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(v37, 0);
  }

  if (v59 != v58)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v38, 12, v54);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v38, 64, v55);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 20, *(v1 + 39), 0);
  if (*(v1 + 3767) == 1)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 22, *(v1 + 483), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 24, *(v1 + 484), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 26, *(v1 + 485), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 28, *(v1 + 486), 0);
  }

  if (*(v1 + 3896) == 1)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 30, *(v1 + 488), 0);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 32, *(v1 + 980));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 76, *(v1 + 981));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 78, *(v1 + 491), 0);
  v41 = v1 + *(*v1 - 24);
  if ((*(*v41 + 200))(v41) == 2)
  {
    if (!v29)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if ((*(*v41 + 200))(v41) == 1 && v29 != 0)
  {
LABEL_56:
    flatbuffers::FlatBufferBuilder::Align(v38, 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 34, (*(v38 + 8) - *(v38 + 12) + *(v38 + 10) - v29 + 4));
  }

LABEL_57:
  v42 = v1 + *(*v1 - 24);
  v43 = (*(*v42 + 200))(v42) == 2 || (*(*v42 + 200))(v42) == 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 36, v43, 0);
  v45 = (*(*(v1 + *(*v1 - 24)) + 200))(v1 + *(*v1 - 24)) == 2;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 38, v45, 0);
  v46 = *(v1 + 984);
  if (v46)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 72, v46);
  }

  v47 = *(v1 + 985);
  if (v47)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 44, v47);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 46, *(v1 + 986));
    if (v34)
    {
      flatbuffers::FlatBufferBuilder::Align(v38, 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 48, (*(v38 + 8) - *(v38 + 12) + *(v38 + 10) - v34 + 4));
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 52, *(v1 + 10), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 54, *(v1 + 11), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v38, 56, *(v1 + 13), 0);
  v48 = (*(*v1 + 24))(v1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 66, v48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 68, *(v1 + 504), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 58, *(v1 + 505), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 60, *(v1 + 506), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v38, 62, *(v1 + 507), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 74, *(v1 + 1016));
  v49 = (*(*(v1 + *(*v1 - 24)) + 128))(v1 + *(*v1 - 24));
  if (v49 == 1)
  {
    v50 = v38;
    v51 = 1;
    goto LABEL_76;
  }

  if (!v49 && *(v38 + 80) == 1)
  {
    v50 = v38;
    v51 = 0;
LABEL_76:
    v52 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v50, v51);
    flatbuffers::FlatBufferBuilder::TrackField(v38, 82, v52);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v38, 84, v36);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v38, 86, *(v1 + 1017));
  return flatbuffers::FlatBufferBuilder::EndTable(v38, v40);
}

uint64_t AIRConstSampler::constructFlatReply(AIRConstSampler *this, flatbuffers::FlatBufferBuilder *a2)
{
  *(a2 + 70) = 1;
  v4 = *(a2 + 5);
  v5 = *(a2 + 6);
  v6 = *(a2 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 4, (0x404040503020004uLL >> (8 * (*this & 7u))) & 7);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 6, (0x404040503020004uLL >> (*this & 0x38)) & 7);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 8, (0x404040503020004uLL >> ((*this >> 3) & 0x38)) & 7);
  v7 = (*this >> 9) & 3;
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 10, v8);
  v9 = (*this >> 11) & 3;
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 12, v10);
  v11 = (*this >> 13) & 3;
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 14, v12);
  v13 = ((*this >> 16) & 0xFLL) - 1;
  if (v13 > 7)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = dword_20E715D98[v13];
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 18, v14);
  v15 = *(this + 3);
  v16 = v15 & 0x7FFF;
  v17 = __clz(v16);
  v18 = (v16 << (v17 - 8)) ^ 0x800000 | (1124073472 - (v17 << 23));
  if ((v15 & 0x7FFF) == 0)
  {
    v18 = 0;
  }

  if ((v15 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v19 = (v16 << 13) | 0x7F800000;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v16 << 13) + 939524096;
  if (((v15 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v20 = v19;
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 22, COERCE_FLOAT(v20 | ((v15 & 0x8000) << 16)), 0.0);
  v21 = *(this + 5);
  v22 = v21 & 0x7FFF;
  v23 = __clz(v22);
  v24 = (v22 << (v23 - 8)) ^ 0x800000 | (1124073472 - (v23 << 23));
  if ((v21 & 0x7FFF) == 0)
  {
    v24 = 0;
  }

  if ((v21 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v25 = (v22 << 13) | 0x7F800000;
  }

  else
  {
    v25 = v24;
  }

  v26 = (v22 << 13) + 939524096;
  if (((v21 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v26 = v25;
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 24, COERCE_FLOAT(v26 | ((v21 & 0x8000) << 16)), 0.0);
  v27 = *(this + 7) & 3;
  if (v27 == 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 26, v28);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 16, (*this & 0x8000) == 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 20, ((*this >> 20) & 0xF) + 1, 0);
  v29 = *(this + 4);
  v30 = v29 & 0x7FFF;
  if ((v30 - 1024) >> 11 > 0xE)
  {
    if (v30 >> 10 < 0x1F)
    {
      if ((v29 & 0x7FFF) != 0)
      {
        v31 = __clz(v30);
        v30 = (v30 << (v31 - 8)) ^ 0x800000 | (1124073472 - (v31 << 23));
      }
    }

    else
    {
      v30 = (v30 << 13) | 0x7F800000;
    }
  }

  else
  {
    v30 = (v30 << 13) + 939524096;
  }

  v32 = v6 - v5;
  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 30, COERCE_FLOAT(v30 | ((v29 & 0x8000) << 16)), 0.0);
  v33 = (*this >> 58) & 3;
  if (v33 == 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 34, v34);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a2, 28, *this, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a2, 32, *(this + 1), 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a2, v32 + v4);
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(char *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t AGCLLVMObject::constructVisibleFunctionArray(AGCLLVMObject *this, int a2)
{
  std::unordered_map<std::string,unsigned int>::unordered_map(v15, this + 3480);
  v4 = *(this + 438);
  if (v4)
  {
    if (!(v4 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  for (i = v16; i; i = *i)
  {
    if (a2)
    {
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1286))
      {
        continue;
      }
    }

    v7 = *(i + 39);
    if (v7 >= 0)
    {
      v8 = (i + 2);
    }

    else
    {
      v8 = i[2];
    }

    if (v7 >= 0)
    {
      v9 = *(i + 39);
    }

    else
    {
      v9 = i[3];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v8, v9);
    *(this + 4358) = 1;
    v11 = *(this + 1082);
    v12 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, String);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 4288, 6, *(i + 10), 0);
    flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v12 + v11);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  *(this + 4358) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((this + 4288), 0, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((this + 4288), 0, 4uLL);
  *(this + 4358) = 0;
  v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v15);
  return v13;
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t AGCLLVMObject::constructFlatReply(AGCLLVMObject *this)
{
  v2 = (*(*this + 48))(this);
  v3 = strlen(v2);
  String = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v2, v3);
  v5 = (*(*this + 96))(this);
  LOBYTE(__p) = v5;
  if (v5)
  {
    v6 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>((this + 4288), &__p, 1uLL);
  }

  else
  {
    v6 = 0;
  }

  v91 = 0;
  v7 = *(this + 314);
  if (*(this + 3432) != 1)
  {
    if (v7)
    {
      v13 = this + 3072;
      v14 = 2512;
      if (*(this + 315))
      {
        v13 = this + 2512;
      }

      else
      {
        v14 = 3072;
      }

      v15 = *(this + v14);
      v16 = *(v13 + 1);
      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
LABEL_57:
        v22 = 0;
        goto LABEL_100;
      }
    }

    else
    {
      v22 = 0;
      v15 = *(this + 384);
      if (!v15 || !*(this + 385))
      {
        goto LABEL_100;
      }
    }

    v23 = (v15 + *v15);
    v24 = (v23 - *v23);
    if (*v24 >= 5u && (v25 = v24[2]) != 0)
    {
      v26 = (v23 + v25 + *(v23 + v25));
    }

    else
    {
      v26 = 0;
    }

    v33 = (v26 - *v26);
    if (*v33 >= 0x39u && v33[28])
    {
      if (v7)
      {
        if (*(this + 315))
        {
          v34 = (this + 2512);
        }

        else
        {
          v34 = (this + 3072);
        }
      }

      else
      {
        v34 = (this + 3072);
      }

      v55 = 0;
      if (*v34 && v34[1])
      {
        v55 = (*v34 + **v34);
      }

      v56 = (v55 - *v55);
      if (*v56 >= 5u && (v57 = v56[2]) != 0)
      {
        v58 = (v55 + v57 + *(v55 + v57));
      }

      else
      {
        v58 = 0;
      }

      v59 = (v58 - *v58);
      if (*v59 >= 0x39u && (v60 = v59[28]) != 0)
      {
        v61 = (v58 + v60 + *(v58 + v60));
      }

      else
      {
        v61 = 0;
      }

      v22 = AGCLLVMObject::extractPhaseOffsets(this, v61, &v91);
      goto LABEL_100;
    }

    goto LABEL_57;
  }

  if (v7)
  {
    v8 = this + 3072;
    v9 = 2512;
    if (*(this + 315))
    {
      v8 = this + 2512;
    }

    else
    {
      v9 = 3072;
    }

    v10 = *(this + v9);
    v11 = *(v8 + 1);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = *(this + 384);
    if (!v10 || !*(this + 385))
    {
      goto LABEL_38;
    }
  }

  v18 = (v10 + *v10);
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v27 = (v21 - *v21);
  if (*v27 >= 0x39u && v27[28])
  {
    goto LABEL_53;
  }

LABEL_38:
  v22 = 0;
  v28 = *(this + 430);
  if (v28 && *(this + 431))
  {
    v29 = (v28 + *v28);
    v30 = (v29 - *v29);
    if (*v30 >= 5u && (v31 = v30[2]) != 0)
    {
      v32 = (v29 + v31 + *(v29 + v31));
    }

    else
    {
      v32 = 0;
    }

    v35 = (v32 - *v32);
    if (*v35 >= 0x39u && v35[28])
    {
LABEL_53:
      if (v7)
      {
        if (*(this + 315))
        {
          v36 = (this + 2512);
        }

        else
        {
          v36 = (this + 3072);
        }
      }

      else
      {
        v36 = (this + 3072);
      }

      v37 = 0;
      if (*v36 && v36[1])
      {
        v37 = (*v36 + **v36);
      }

      v38 = (v37 - *v37);
      if (*v38 >= 5u && (v39 = v38[2]) != 0)
      {
        v40 = (v37 + v39 + *(v37 + v39));
      }

      else
      {
        v40 = 0;
      }

      v41 = (v40 - *v40);
      if (*v41 >= 0x39u && (v42 = v41[28]) != 0)
      {
        v43 = (v40 + v42 + *(v40 + v42));
      }

      else
      {
        v43 = 0;
      }

      v44 = 0;
      v45 = *(this + 430);
      if (v45 && *(this + 431))
      {
        v44 = (v45 + *v45);
      }

      v46 = (v44 - *v44);
      if (*v46 >= 5u && (v47 = v46[2]) != 0)
      {
        v48 = (v44 + v47 + *(v44 + v47));
      }

      else
      {
        v48 = 0;
      }

      v49 = (v48 - *v48);
      if (*v49 >= 0x39u && (v50 = v49[28]) != 0)
      {
        v51 = (v48 + v50 + *(v48 + v50));
      }

      else
      {
        v51 = 0;
      }

      __p = 0;
      v89 = 0;
      v90 = 0;
      p_p = &__p;
      v86 = this + 3480;
      AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(&p_p, v43);
      AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(&p_p, v51);
      if (v89 == __p)
      {
        v52 = &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t;
      }

      else
      {
        v52 = __p;
      }

      v91 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + 4288), v52, (*&v89 - __p) >> 2);
      v53 = __p;
      v54 = v89;
      if (__p)
      {
        v89 = __p;
        operator delete(__p);
      }

      v22 = *&v54 != v53;
      goto LABEL_100;
    }

    goto LABEL_57;
  }

LABEL_100:
  (*(*this + 144))(&__p, this);
  if (v90 >= 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p;
  }

  if (v90 >= 0)
  {
    v63 = HIBYTE(v90);
  }

  else
  {
    v63 = v89;
  }

  v64 = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v62, v63);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  v65 = *(this + 5119);
  if (v65 >= 0)
  {
    v66 = this + 5096;
  }

  else
  {
    v66 = *(this + 637);
  }

  if (v65 >= 0)
  {
    v67 = *(this + 5119);
  }

  else
  {
    v67 = *(this + 638);
  }

  v68 = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v66, v67);
  *(this + 4358) = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 4288, 6, *(this + 1272));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 18, v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 80, v68);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 8, String);
  if ((*(*this + 96))(this))
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, v6);
  }

  if (v22)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 14, v91);
  }

  std::unordered_map<std::string,unsigned int>::unordered_map(&__p, this + 3480);
  (*(*this + 72))(&p_p, this);
  v69 = v87;
  v70 = p_p;
  if ((v87 & 0x80u) == 0)
  {
    p_p_p = &p_p;
  }

  else
  {
    p_p_p = p_p;
  }

  if ((v87 & 0x80u) == 0)
  {
    v72 = v87;
  }

  else
  {
    v72 = v86;
  }

  v73 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_p_p, v72);
  v74 = v89;
  if (!*&v89)
  {
    v79 = 0;
    if (v69 < 0)
    {
      goto LABEL_146;
    }

    goto LABEL_147;
  }

  v75 = v73;
  v76 = vcnt_s8(v89);
  v76.i16[0] = vaddlv_u8(v76);
  v77 = v76.u32[0];
  if (v76.u32[0] > 1uLL)
  {
    v78 = v73;
    if (v73 >= *&v89)
    {
      v78 = v73 % *&v89;
    }
  }

  else
  {
    v78 = (*&v89 - 1) & v73;
  }

  v80 = *(__p + v78);
  if (!v80)
  {
    v79 = 0;
    goto LABEL_145;
  }

  v79 = *v80;
  if (!*v80)
  {
    goto LABEL_145;
  }

  while (1)
  {
    v81 = v79[1];
    if (v81 == v75)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](v79 + 2, &p_p))
      {
        goto LABEL_145;
      }

      goto LABEL_141;
    }

    if (v77 > 1)
    {
      if (v81 >= *&v74)
      {
        v81 %= *&v74;
      }
    }

    else
    {
      v81 &= *&v74 - 1;
    }

    if (v81 != v78)
    {
      break;
    }

LABEL_141:
    v79 = *v79;
    if (!v79)
    {
      goto LABEL_145;
    }
  }

  v79 = 0;
LABEL_145:
  if (v69 < 0)
  {
LABEL_146:
    operator delete(v70);
  }

LABEL_147:
  if (v79 && (*(*this + 80))(this) != 8)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 4288, 16, *(v79 + 10));
    v82 = (*(*this + 80))(this);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 4288, 40, (v82 < 0x1C) & (0x80002C1u >> v82), 0);
  }

  v83 = (*(*this + 120))(this);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 4288, 42, v83, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 4288, 50, *(this + 2224), 0);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&__p);
  return this + 4288;
}

BOOL AGCLLVMObject::extractPhaseOffsets(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = a3;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = *a2;
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = *(a1 + 3496);
      if (v9)
      {
        do
        {
          v10 = &v8[v7];
          v11 = v10 + *v10 + *(v10 + *v10 - *(v10 + *v10) + 4);
          std::string::basic_string[abi:nn200100]<0>(__p, &v11[*v11 + 4]);
          v12 = *(v9 + 39);
          v13 = v27;
          if ((v27 & 0x80u) == 0)
          {
            v14 = v27;
          }

          else
          {
            v14 = __p[1];
          }

          if ((v27 & 0x80u) == 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v12 >= 0)
          {
            v16 = *(v9 + 39);
          }

          else
          {
            v16 = *(v9 + 3);
          }

          if (v12 >= 0)
          {
            v17 = v9 + 4;
          }

          else
          {
            v17 = *(v9 + 2);
          }

          if (v16 >= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = memcmp(v15, v17, v18);
          if (v16 == v14 && v19 == 0)
          {
            std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v28, v9 + 10);
            v13 = v27;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(__p[0]);
          }

          v9 = *v9;
        }

        while (v9);
        v5 = *a2;
      }

      ++v7;
    }

    while (v7 < v5);
    v21 = v28;
    v22 = v29;
    v3 = a3;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (v22 == v21)
  {
    v23 = &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t;
  }

  else
  {
    v23 = v21;
  }

  *v3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((a1 + 4288), v23, (v22 - v21) >> 2);
  if (v21)
  {
    operator delete(v21);
  }

  return v22 != v21;
}

void std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
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

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void AGCLLVMObject::debugName(AGCLLVMObject *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 5063) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 630), *(this + 631));
  }

  else
  {
    *a2 = *(this + 210);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = (*(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4);

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 10, v4);
  }

  return result;
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::getTempRegistersLimit(AGCLLVMAGPFragmentShaderGen3 *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  if (*(this + 1966))
  {
    v6 = *(this + *(*this - 24) + 2168);
    if (v6[976] == 1)
    {
      v7 = (*(*v6 + 688))(*(this + *(*this - 24) + 2168));
      *a2 = AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(v7, *(this + *(*this - 24) + 1688), *(this + 1966));
      return 1;
    }
  }

  return result;
}

const char *AGCLLVMObject::getMaxTempRegistersOverride(AGCLLVMObject *this, const char *a2)
{
  v2 = 0x27C8D7000uLL;
  {
    v2 = 0x27C8D7000;
    if (v4)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v2 = 0x27C8D7000;
    }
  }

  if (*(v2 + 2944) == 1)
  {
    result = AGCEnv::getValue("AGC_TEMP_REGS_IN_BYTES", a2);
    if (!result)
    {
      return result;
    }

    if (*result != 48)
    {
      return ((atoi(result) + 3) >> 2);
    }
  }

  return 0;
}

uint64_t llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(*v8, v8, *v8 + 17);
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

llvm::StringMapImpl *llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this);
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v8 = v4 + 8 * v5 + 8;
      v9 = v6 + 8 * v5 + 8;
      do
      {
        v10 = *(*a2 + 8 * v7);
        if (v10)
        {
          v11 = v10 + 1 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(*this + 8 * v7) = v10;
        }

        else
        {
          v12 = *v10;
          v13 = MEMORY[0x20F330650](*v10 + 17, 8);
          v14 = v13;
          v15 = v13 + 16;
          if (v12)
          {
            memcpy((v13 + 16), v10 + 2, v12);
          }

          *(v15 + v12) = 0;
          v16 = v10[1];
          *v14 = v12;
          v14[1] = v16;
          *(*this + 8 * v7) = v14;
          *(v8 + 4 * v7) = *(v9 + 4 * v7);
        }

        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

char *llvm::PassInfoMixin<llvm::AlwaysInlinerPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_23[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t *AGCLLVMUserObject::getSampleFunctionMap(AGCLLVMUserObject *this)
{
  {
    v4 = this;
    LODWORD(this) = v4;
    if (v2)
    {
      AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map = 0;
      unk_27C8D8260 = 0;
      qword_27C8D8268 = 0x4000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map, &dword_20E4E1000);
      LODWORD(this) = v4;
    }
  }

  {
    v5 = this;
    LODWORD(this) = v5;
    if (v3)
    {
      AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler = 0;
      unk_27C8D8240 = 0;
      qword_27C8D8248 = 0x4000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler, &dword_20E4E1000);
      LODWORD(this) = v5;
    }
  }

  if (this)
  {
    return &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler;
  }

  else
  {
    return &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map;
  }
}

llvm::NamedMDNode *AGCLLVMUserObject::extractConstantSamplers(void *a1, uint64_t a2)
{
  v3 = *(a1 + *(*a1 - 24) + 2136);
  v11 = "air.sampler_states";
  v12 = 259;
  result = llvm::Module::getNamedMetadata(v3, &v11);
  if (result)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      result = llvm::NamedMDNode::getNumOperands(v5);
      if (i >= result)
      {
        break;
      }

      Operand = llvm::NamedMDNode::getOperand(v5);
      v8 = *(Operand - 8 * *(Operand + 8) + 8);
      if (v8)
      {
        if (*v8 - 1 > 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = *(v8 + 16);
          if (*(v9 + 16) == 3)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, v10);
      }
    }
  }

  return result;
}

char *llvm::PassInfoMixin<SimplifyGenericIRCommonPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 77;
  }

  v2 = &aStringrefLlvmG_71[v1];
  v3 = 77 - v1;
  if ((77 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 77 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMObject::disableConstantHoisting(AGCLLVMObject *this)
{
  llvm::Module::getOrInsertNamedMetadata();
  llvm::MDString::get();
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDTuple::getImpl();
  return llvm::NamedMDNode::addOperand();
}

uint64_t AGCLLVMObject::enableTempRegistersLimit(AGCLLVMObject *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 0;
  result = (*(*this + 184))(this, &v2);
  if (result)
  {
    llvm::Module::getOrInsertNamedMetadata();
    v3 = llvm::MDString::get();
    llvm::ConstantInt::get();
    v4 = llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    return llvm::NamedMDNode::addOperand();
  }

  return result;
}

uint64_t parseMDLocationIndex(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.location_index");
  if (result)
  {
    v9 = *a2 + 1;
    result = parseMDInt(0, a1, &v9, a3);
    if (result)
    {
      v10 = *a2 + 2;
      result = parseMDInt(0, a1, &v10, a4);
      if (result)
      {
        *a2 += 3;
        return 1;
      }
    }
  }

  return result;
}

uint64_t llvm::Function::args(llvm::Function *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    return *(this + 11);
  }

  llvm::Function::BuildLazyArguments(this);
  v2 = *(this + 11);
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
  }

  return v2;
}

void AGCTargetOS::AGCTargetOS(AGCTargetOS *this, const llvm::Triple *a2)
{
  *this = 0;
  *(this + 1) = 0;
  OSVersion = llvm::Triple::getOSVersion(a2);
  v5 = llvm::Triple::getOSVersion(a2);
  llvm::Triple::getOSVersion(a2);
  if (v6 < 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (v5 >> 28) & (v5 >> 63) & 0xFFF0u | (OSVersion << 8) | v7;
  if ((*(a2 + 9) & 0xFFFFFFF7) == 3)
  {
    v9 = (v5 >> 28) & (v5 >> 63) & 0xFFF0u | (OSVersion << 8) | v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = *this;
  v11 = v9 | *this & 0xFFFFFFFFFFFF0000;
  *this = v11;
  v12 = *(a2 + 9);
  v13 = v12 == 28 || v12 == 7;
  v14 = v8 << 16;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v11 & 0xFFFFFFFF0000FFFFLL | v14;
  *this = v15;
  v16 = v8 << 32;
  if (*(a2 + 9) != 29)
  {
    v16 = 0;
  }

  v17 = v15 & 0xFFFF0000FFFFFFFFLL | v16;
  v13 = v9 == 0;
  v18 = 0xFFFFLL;
  if (v13)
  {
    v18 = 0;
  }

  v13 = v14 == 0;
  v19 = 4294901760;
  if (v13)
  {
    v19 = 0;
  }

  v13 = v16 == 0;
  v20 = 0xFFFF00000000;
  if (v13)
  {
    v20 = 0;
  }

  v13 = HIWORD(v10) == 0;
  v21 = 0xFFFF000000000000;
  if (v13)
  {
    v21 = 0;
  }

  *this = v17;
  *(this + 1) = v18 | v21 | v19 | v20;
}

BOOL parseMDTexture(uint64_t a1, _DWORD *a2, _DWORD *a3, char *a4, BOOL *a5, BOOL *a6, _BYTE *a7, unsigned int *a8)
{
  v16 = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.texture");
  if (v16)
  {
    v31 = a5;
    v32 = a6;
    *a4 = 1;
    *a5 = 0;
    v33 = a7;
    *a7 = 0;
    v17 = *(a1 + 8);
    v34 = 2;
    if (v17 >= 3)
    {
      do
      {
        if ((parseMDLocationIndex(a1, &v34, a2, a3) & 1) == 0)
        {
          if (parseMDInt("air.binding", a1, &v34, a2))
          {
            *a3 = 1;
          }

          else
          {
            if (parseMDInt("air.raster_order_group", a1, &v34, a8))
            {
              v18 = *a8;
              if (*a8 >= 7)
              {
                v18 = 7;
              }

              *a8 = v18;
              *v33 = 1;
              continue;
            }

            if (!parseMDAccess(a1, &v34, a4))
            {
              v19 = v34;
              v20 = ++v34;
              if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v19), "air.arg_type_name"))
              {
                v34 = v19 + 2;
                String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v20));
                if (v22 > 4)
                {
                  v26 = *String == 1634890337 && *(String + 4) == 121;
                  v24 = v32;
                  *v31 = v26;
                  if (v22 >= 0xE)
                  {
                    if (*String == 0x5F65727574786574 && *(String + 6) == 0x7265666675625F65)
                    {
                      v23 = 1;
                      goto LABEL_37;
                    }

                    if (v22 >= 0x14)
                    {
                      v23 = *String == 0x65743C7961727261 && *(String + 8) == 0x75625F6572757478 && *(String + 16) == 1919247974;
                      goto LABEL_37;
                    }
                  }

                  v23 = 0;
                }

                else
                {
                  v23 = 0;
                  v24 = v32;
                  *v31 = 0;
                }

LABEL_37:
                *v24 = v23;
              }
            }
          }
        }
      }

      while (v34 < v17);
    }
  }

  return v16;
}