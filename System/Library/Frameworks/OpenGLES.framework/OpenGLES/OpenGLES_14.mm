unint64_t getPrecisionFlagsFromArgs(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  if (!glpTypeGetKind(SaType))
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    if (glpPrimitiveTypeGetCategory(PrimitiveType))
    {
      v17 = glpPrimitiveTypeGetPrimitiveType(SaType);
      if (glpPrimitiveTypeGetCategory(v17) != 4)
      {
        v18 = glpPrimitiveTypeGetPrimitiveType(SaType);
        if (glpPrimitiveTypeGetScalarType(v18) == 9)
        {
          return 0;
        }
      }
    }
  }

  v3 = glpCallNodeGetArgCount(a1);
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a1);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v5 = HasSrctex;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = glpCallNodeGetArg(a1, v6);
    v9 = glpASTNodeGetSaFlags(v8) & 0x1F;
    if (v9 != 2)
    {
      break;
    }

LABEL_13:
    if (v3 == ++v6)
    {
      goto LABEL_20;
    }
  }

  if (!v5 || (v10 = glpCallNodeGetArg(a1, v6), v11 = glpASTNodeGetSaType(v10), glpTypeGetKind(v11)) || (v12 = glpCallNodeGetArg(a1, v6), v13 = glpASTNodeGetSaType(v12), v14 = glpPrimitiveTypeGetPrimitiveType(v13), glpPrimitiveTypeGetCategory(v14) != 4))
  {
    if (v9 <= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    if (v9 != 31)
    {
      v7 = v15;
    }

    goto LABEL_13;
  }

  v7 = v9;
LABEL_20:
  Opcode = glpPPStreamOpNodeGetOpcode(a1);
  result = 16;
  if ((Opcode - 92) >= 2 && Opcode != 131)
  {
    if (Opcode == 100)
    {
      return 8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t glpSAInlinePPStreamOpFixup(uint64_t a1, uint64_t a2)
{
  if (glpCompilerDoesTrackPrecision(a1))
  {
    v3 = glpASTNodeGetSaFlags(a2) & 0xFFFFFFFFFFFFFFE0;
    PrecisionFlagsFromArgs = getPrecisionFlagsFromArgs(a2);
    glpASTNodeSetSaFlags(a2, v3 | PrecisionFlagsFromArgs);
  }

  return a2;
}

uint64_t pushdownPrecisionInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = a2;
  while (1)
  {
    Kind = glpASTNodeGetKind(v6);
    if (Kind > 64)
    {
      if (Kind > 77)
      {
        if (Kind <= 81)
        {
          if (Kind == 78)
          {
            return 1;
          }

          if (Kind == 81)
          {
            SaType = glpASTNodeGetSaType(v6);
            if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
            {
              glpLValueNodeGetVariableExtra(v6);
              goto LABEL_60;
            }

            return 1;
          }

          goto LABEL_62;
        }

        if (Kind != 82)
        {
          if (Kind == 84)
          {
            if (a4 || (v25 = glpASTNodeGetSaType(v6), glpCompilerDoesTypeRequirePrecision(a1, v25)))
            {
              switch(glpPPStreamOpNodeGetOpcode(v6))
              {
                case 2u:
                case 3u:
                case 4u:
                case 5u:
                case 6u:
                case 7u:
                case 0xCu:
                case 0x10u:
                case 0x12u:
                case 0x13u:
                case 0x15u:
                case 0x16u:
                case 0x17u:
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
                case 0x27u:
                case 0x2Cu:
                case 0x2Du:
                case 0x2Eu:
                case 0x2Fu:
                case 0x31u:
                case 0x32u:
                case 0x33u:
                case 0x34u:
                case 0x35u:
                case 0x36u:
                case 0x38u:
                case 0x3Au:
                case 0x3Bu:
                case 0x3Cu:
                case 0x3Du:
                case 0x3Fu:
                case 0x40u:
                case 0x50u:
                case 0x51u:
                case 0x69u:
                case 0x70u:
                case 0x71u:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x80u:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x94u:
                case 0x95u:
                  if (glpCallNodeGetArgCount(v6))
                  {
                    v26 = 0;
                    do
                    {
                      v27 = glpCallNodeGetArg(v6, v26);
                      pushdownPrecisionInternal(a1, v27, a3, a4);
                      ++v26;
                    }

                    while (v26 < glpCallNodeGetArgCount(v6));
                  }

                  goto LABEL_58;
                default:
                  if (!a4)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_58;
              }
            }

            return 1;
          }

          goto LABEL_62;
        }

        Base = glpRValueNodeGetBase(v6);
      }

      else
      {
        switch(Kind)
        {
          case 'A':
            Base = glpExpressionStatementNodeGetExpr(v6);
            break;
          case 'C':
            IfStatement = glpIfStatementNodeGetIfStatement(v6);
            pushdownPrecisionInternal(a1, IfStatement, a3, a4);
            Base = glpIfStatementNodeGetElseStatement(v6);
            break;
          case 'B':
            if (glpBlockNodeGetStatementCount(v6))
            {
              v23 = 0;
              do
              {
                Statement = glpBlockNodeGetStatement(v6, v23);
                pushdownPrecisionInternal(a1, Statement, a3, a4);
                ++v23;
              }

              while (v23 < glpBlockNodeGetStatementCount(v6));
            }

            return 1;
          default:
            goto LABEL_62;
        }
      }

      goto LABEL_27;
    }

    if (Kind > 38)
    {
      break;
    }

    if (Kind)
    {
      if (Kind != 16)
      {
        if (Kind == 3)
        {
          v22 = glpASTNodeGetSaType(v6);
          if (glpCompilerDoesTypeRequirePrecision(a1, v22) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
          {
            glpSAValidateConstPrecisionConversion(a1, v6, a3);
            goto LABEL_60;
          }

          return 1;
        }

        goto LABEL_62;
      }

      v11 = glpASTNodeGetSaType(v6);
      if (glpCompilerDoesTypeRequirePrecision(a1, v11) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
      {
        SaFlags = glpASTNodeGetSaFlags(v6);
        glpASTNodeSetSaFlags(v6, SaFlags & 0xFFFFFFFFFFFFFFE0 | a3);
      }
    }

    else
    {
      v16 = glpASTNodeGetSaType(v6);
      if (glpCompilerDoesTypeRequirePrecision(a1, v16) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
      {
        v17 = glpASTNodeGetSaFlags(v6);
        glpASTNodeSetSaFlags(v6, v17 & 0xFFFFFFFFFFFFFFE0 | a3);
        glpTypeConversionNodeSetToPrecision(v6, a3);
      }
    }

    Base = glpUnaryOperatorNodeGetExpr(v6);
LABEL_27:
    v6 = Base;
    if (!Base)
    {
      return 1;
    }
  }

  if (Kind == 46)
  {
    v13 = glpASTNodeGetSaType(v6);
    if (glpCompilerDoesTypeRequirePrecision(a1, v13) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
    {
      Extra = glpVariableDeclarationNodeGetExtra(v6);
      *(Extra + 48) = *(Extra + 48) & 0xFFFFFFFFFFFFFFE0 | a3;
      v15 = glpASTNodeGetSaFlags(v6);
      glpASTNodeSetSaFlags(v6, v15 & 0xFFFFFFFFFFFFFFE0 | a3);
    }

    Base = glpVariableDeclarationNodeGetInitializer(v6);
    goto LABEL_27;
  }

  if (Kind == 39)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(v6);
    pushdownPrecisionInternal(a1, Lhs, a3, a4);
    Rhs = glpBinaryOperatorNodeGetRhs(v6);
    pushdownPrecisionInternal(a1, Rhs, a3, a4);
    goto LABEL_58;
  }

  if (Kind != 43)
  {
LABEL_62:
    abort();
  }

  if (glpCommaExprNodeGetExprCount(v6))
  {
    v19 = 0;
    do
    {
      Expr = glpCommaExprNodeGetExpr(v6, v19);
      pushdownPrecisionInternal(a1, Expr, a3, 1);
      ++v19;
    }

    while (v19 < glpCommaExprNodeGetExprCount(v6));
  }

LABEL_58:
  v30 = glpASTNodeGetSaType(v6);
  if (glpCompilerDoesTypeRequirePrecision(a1, v30) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
  {
LABEL_60:
    v31 = glpASTNodeGetSaFlags(v6);
    glpASTNodeSetSaFlags(v6, v31 & 0xFFFFFFFFFFFFFFE0 | a3);
  }

  return 1;
}

unint64_t glp_serialized_integer64_control(unint64_t result)
{
  if (result >= 0x80)
  {
    v1 = result & 0xFF00000000000000;
    v2 = (result & 0xFF00000000000000) != 0 && HIBYTE(result) != 255;
    if ((v1 ^ (v2 << 63 >> 63)) == 0xFF00000000000000)
    {
      v3 = -113;
    }

    else
    {
      v3 = -114;
    }

    if ((v2 & 1) == 0)
    {
      v4 = 0xFF00000000000000;
      do
      {
        v3 = v3 & 0xFFFFFFF1 | (2 * (((v3 + 14) >> 1) & 7));
        if (v4 >> 8 == 255)
        {
          break;
        }

        v1 >>= 8;
        v5 = result & (v4 >> 8);
        v4 >>= 8;
      }

      while (v5 == v1);
    }

    return v3 & 0xFFFFFF8F;
  }

  return result;
}

uint64_t glp_serialized_integer32_control(uint64_t result)
{
  if (result >= 0)
  {
    v1 = -128;
  }

  else
  {
    v1 = -127;
  }

  v2 = result ^ (result >> 31);
  if (HIBYTE(v2))
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2 * (v2 > 0xFF);
  }

  v5 = v4 | v1;
  if (result >= 0x80)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t glpInitSerialContext(void *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v3;
  a1[4] = 1024;
  a1[5] = (a1[1])(*a1, 1024, "Vector Storage (uint8_t)");
  a1[6] = glpMakeStringHash(a1);
  a1[7] = 0;
  result = glpMakePointerHash(a1);
  a1[8] = result;
  return result;
}

uint64_t *glpDestroySerialContext(uint64_t *a1, int a2)
{
  glpDestroyPointerHash(a1[8]);
  result = glpDestroyStringHash(a1[6]);
  if (a2)
  {
    v5 = a1[3];
    v6 = *a1;
    v7 = a1[5];

    return v5(v6, v7);
  }

  return result;
}

uint64_t serialize_pointer(void *a1, unint64_t a2)
{
  if (a2)
  {
    v4 = glpPointerHashGet(a1[8], a2);
    if (!v4)
    {
      v28 = a1[8];
      v29 = a1[7] + 1;
      a1[7] = v29;
      glpPointerHashPut(v28, a2, v29, v5);
      v13 = a1 + 9;
      v30 = *(a1 + 9);
      v31 = v30 + 1;
      v32 = *(a1 + 8);
      if (v30 + 1 <= v32)
      {
        v35 = a1[5];
        v36 = *(a1 + 9);
      }

      else
      {
        if (v32 <= 1)
        {
          v32 = 1;
        }

        v33 = 2 * v32;
        if (v33 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        v35 = (a1[1])(*a1, v34, "Vector Storage (uint8_t, growth)");
        memcpy(v35, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v34;
        a1[5] = v35;
        v36 = *(a1 + 9);
      }

      memmove(&v35[v30 + 1], &v35[v30], (v36 - v30));
      v40 = 1;
      *(a1[5] + v30) = 1;
      result = 1;
      goto LABEL_53;
    }

    v6 = v4 + 1;
    if (v4 + 1 >= 0)
    {
      v7 = -128;
    }

    else
    {
      v7 = -127;
    }

    v8 = v6 ^ (v6 >> 31);
    if (HIBYTE(v8))
    {
      v9 = 6;
    }

    else
    {
      v9 = 4;
    }

    if (v8 >= 0x10000)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * (v8 > 0xFF);
    }

    v11 = v10 | v7;
    if (v6 < 0x80)
    {
      v12 = v4 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a1 + 9;
    v14 = *(a1 + 9);
    v15 = v14 + 1;
    v16 = *(a1 + 8);
    if (v14 + 1 <= v16)
    {
      v19 = a1[5];
      v20 = *(a1 + 9);
    }

    else
    {
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = 2 * v16;
      if (v17 <= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      v19 = (a1[1])(*a1, v18, "Vector Storage (uint8_t, growth)");
      memcpy(v19, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v18;
      a1[5] = v19;
      v20 = *(a1 + 9);
    }

    memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
    *(a1[5] + v14) = v12;
    v37 = *(a1 + 9);
    v38 = v37 + 1;
    *(a1 + 9) = v37 + 1;
    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    v41 = (v12 >> 1) & 7;
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v48 = v37 + 4;
        v49 = *(a1 + 8);
        if (v48 <= v49)
        {
          v52 = a1[5];
          v53 = v38;
        }

        else
        {
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = 2 * v49;
          if (v50 <= v48)
          {
            v51 = v48;
          }

          else
          {
            v51 = v50;
          }

          v52 = (a1[1])(*a1, v51, "Vector Storage (uint8_t, growth)");
          memcpy(v52, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v51;
          a1[5] = v52;
          v53 = *(a1 + 9);
        }

        memmove(&v52[v38 + 1], &v52[v38], v53 - v38);
        result = 0;
        v66 = a1[5] + v38;
        *(v66 + 2) = BYTE2(v6);
        *v66 = v6;
        v40 = 3;
      }

      else
      {
        v60 = v37 + 5;
        v61 = *(a1 + 8);
        if (v60 <= v61)
        {
          v64 = a1[5];
          v65 = v38;
        }

        else
        {
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = 2 * v61;
          if (v62 <= v60)
          {
            v63 = v60;
          }

          else
          {
            v63 = v62;
          }

          v64 = (a1[1])(*a1, v63, "Vector Storage (uint8_t, growth)");
          memcpy(v64, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v63;
          a1[5] = v64;
          v65 = *(a1 + 9);
        }

        memmove(&v64[v38 + 1], &v64[v38], v65 - v38);
        result = 0;
        *(a1[5] + v38) = v6;
        v40 = 4;
      }

      goto LABEL_53;
    }

    if (v41)
    {
      v54 = v37 + 3;
      v55 = *(a1 + 8);
      if (v54 <= v55)
      {
        v58 = a1[5];
        v59 = v38;
      }

      else
      {
        if (v55 <= 1)
        {
          v55 = 1;
        }

        v56 = 2 * v55;
        if (v56 <= v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = v56;
        }

        v58 = (a1[1])(*a1, v57, "Vector Storage (uint8_t, growth)");
        memcpy(v58, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v57;
        a1[5] = v58;
        v59 = *(a1 + 9);
      }

      memmove(&v58[v38 + 1], &v58[v38], v59 - v38);
      result = 0;
      *(a1[5] + v38) = v6;
      v40 = 2;
      goto LABEL_53;
    }

    v42 = v37 + 2;
    v43 = *(a1 + 8);
    if (v42 <= v43)
    {
      v46 = a1[5];
      v47 = v38;
    }

    else
    {
      if (v43 <= 1)
      {
        v43 = 1;
      }

      v44 = 2 * v43;
      if (v44 <= v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = v44;
      }

      v46 = (a1[1])(*a1, v45, "Vector Storage (uint8_t, growth)");
      memcpy(v46, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v45;
      a1[5] = v46;
      v47 = *(a1 + 9);
    }

    memmove(&v46[v38 + 1], &v46[v38], v47 - v38);
    result = 0;
    *(a1[5] + v38) = v6;
  }

  else
  {
    v13 = a1 + 9;
    v21 = *(a1 + 9);
    v22 = v21 + 1;
    v23 = *(a1 + 8);
    if (v21 + 1 <= v23)
    {
      v26 = a1[5];
      v27 = *(a1 + 9);
    }

    else
    {
      if (v23 <= 1)
      {
        v23 = 1;
      }

      v24 = 2 * v23;
      if (v24 <= v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = v24;
      }

      v26 = (a1[1])(*a1, v25, "Vector Storage (uint8_t, growth)");
      memcpy(v26, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v25;
      a1[5] = v26;
      v27 = *(a1 + 9);
    }

    memmove(&v26[v21 + 1], &v26[v21], (v27 - v21));
    result = 0;
    *(a1[5] + v21) = 0;
  }

  v40 = 1;
LABEL_53:
  *v13 += v40;
  return result;
}

uint64_t serialize_GLPString(void *a1, const char *a2, size_t a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v6 = -128;
  }

  else
  {
    v6 = -127;
  }

  v7 = a3 ^ (a3 >> 31);
  if (HIBYTE(v7))
  {
    v8 = 6;
  }

  else
  {
    v8 = 4;
  }

  if (v7 >= 0x10000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2 * (v7 > 0xFF);
  }

  v10 = v9 | v6;
  if (a3 >= 0x80)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  v14 = v13 + 1;
  if (v13 + 1 <= v12)
  {
    v17 = a1[5];
    v18 = *(a1 + 9);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = (a1[1])(*a1, v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v16;
    a1[5] = v17;
    v18 = *(a1 + 9);
  }

  memmove(&v17[v13 + 1], &v17[v13], (v18 - v13));
  *(a1[5] + v13) = v11;
  v19 = *(a1 + 9);
  v20 = v19 + 1;
  *(a1 + 9) = v19 + 1;
  if ((v11 & 0x80) != 0)
  {
    v21 = (v11 >> 1) & 7;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v28 = v19 + 4;
        v29 = *(a1 + 8);
        if (v28 <= v29)
        {
          v32 = a1[5];
          v33 = v20;
        }

        else
        {
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v30 = 2 * v29;
          if (v30 <= v28)
          {
            v31 = v28;
          }

          else
          {
            v31 = v30;
          }

          v32 = (a1[1])(*a1, v31, "Vector Storage (uint8_t, growth)");
          memcpy(v32, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v31;
          a1[5] = v32;
          v33 = *(a1 + 9);
        }

        memmove(&v32[v20 + 1], &v32[v20], v33 - v20);
        v47 = a1[5] + v20;
        *(v47 + 2) = BYTE2(a3);
        *v47 = a3;
        v46 = 3;
      }

      else
      {
        v40 = v19 + 5;
        v41 = *(a1 + 8);
        if (v40 <= v41)
        {
          v44 = a1[5];
          v45 = v20;
        }

        else
        {
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = 2 * v41;
          if (v42 <= v40)
          {
            v43 = v40;
          }

          else
          {
            v43 = v42;
          }

          v44 = (a1[1])(*a1, v43, "Vector Storage (uint8_t, growth)");
          memcpy(v44, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v43;
          a1[5] = v44;
          v45 = *(a1 + 9);
        }

        memmove(&v44[v20 + 1], &v44[v20], v45 - v20);
        *(a1[5] + v20) = a3;
        v46 = 4;
      }
    }

    else if (v21)
    {
      v34 = v19 + 3;
      v35 = *(a1 + 8);
      if (v34 <= v35)
      {
        v38 = a1[5];
        v39 = v20;
      }

      else
      {
        if (v35 <= 1)
        {
          v35 = 1;
        }

        v36 = 2 * v35;
        if (v36 <= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v36;
        }

        v38 = (a1[1])(*a1, v37, "Vector Storage (uint8_t, growth)");
        memcpy(v38, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v37;
        a1[5] = v38;
        v39 = *(a1 + 9);
      }

      memmove(&v38[v20 + 1], &v38[v20], v39 - v20);
      *(a1[5] + v20) = a3;
      v46 = 2;
    }

    else
    {
      v22 = v19 + 2;
      v23 = *(a1 + 8);
      if (v22 <= v23)
      {
        v26 = a1[5];
        v27 = v20;
      }

      else
      {
        if (v23 <= 1)
        {
          v23 = 1;
        }

        v24 = 2 * v23;
        if (v24 <= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v24;
        }

        v26 = (a1[1])(*a1, v25, "Vector Storage (uint8_t, growth)");
        memcpy(v26, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v25;
        a1[5] = v26;
        v27 = *(a1 + 9);
      }

      memmove(&v26[v20 + 1], &v26[v20], v27 - v20);
      *(a1[5] + v20) = a3;
      v46 = 1;
    }

    *(a1 + 9) += v46;
  }

  v48 = glpStringHashCache(a1[6], a2, a3, a2);
  result = serialize_pointer(a1, v48);
  if (result)
  {
    v50 = *(a1 + 8);
    v51 = *(a1 + 9);
    v52 = v51 + a3;
    if (v51 + a3 <= v50)
    {
      v55 = a1[5];
      v56 = *(a1 + 9);
    }

    else
    {
      if (v50 <= 1)
      {
        v50 = 1;
      }

      v53 = 2 * v50;
      if (v53 <= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = (a1[1])(*a1, v54, "Vector Storage (uint8_t, growth)");
      memcpy(v55, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v54;
      a1[5] = v55;
      v56 = *(a1 + 9);
    }

    memmove(&v55[v51 + 1], &v55[v51], (v56 - v51));
    result = memcpy((a1[5] + v51), v48, a3);
    *(a1 + 9) += a3;
  }

  return result;
}

char *deserialErrorString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_278B49D00[a1];
}

uint64_t glpInitDeserialContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 200) = a2;
  *(a1 + 208) = 4096;
  result = (*(a2 + 8))(*a2, 0x8000, "Vector Storage (void *)");
  *(a1 + 216) = result;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a3;
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  *(a1 + 260) = 0;
  return result;
}

uint64_t glpReInitDeserialContext(uint64_t result, uint64_t a2, int a3)
{
  *(result + 212) = 0;
  *(result + 248) = a2;
  *(result + 256) = a3;
  *(result + 260) = 0;
  return result;
}

uint64_t glpDestroyDeserialContext(void *a1)
{
  for (i = a1[28]; i; i = a1[28])
  {
    a1[28] = *i;
    (*(a1[25] + 24))(*a1[25]);
  }

  v3 = a1[25];
  v4 = v3[3];
  v5 = *v3;
  v6 = a1[27];

  return v4(v5, v6);
}

float deserialize_float(uint64_t a1)
{
  v1 = *(a1 + 260);
  if (v1 + 4 > *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  result = *(*(a1 + 248) + v1);
  *(a1 + 260) = v1 + 4;
  return result;
}

double deserialize_double(uint64_t a1)
{
  v1 = *(a1 + 260);
  if (v1 + 8 > *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  result = *(*(a1 + 248) + v1);
  *(a1 + 260) = v1 + 8;
  return result;
}

void *deserialize_pointer(void *result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = *(result + 65);
  v5 = *(result + 64);
  if (v4 >= v5)
  {
    goto LABEL_67;
  }

  v8 = result[31];
  v9 = *(v8 + v4);
  v10 = *(v8 + v4);
  v11 = v4 + 1;
  *(result + 65) = v4 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v4 + 4;
        if (v13 <= v5)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v12)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v11 < v5)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v4 + 2;
      goto LABEL_29;
    }

LABEL_67:
    glpDeserialError(result, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v4 + 5;
    if (v12 == 4)
    {
      if (v14 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        *(result + 65) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v13 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v14 <= v5)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v4 + 5);
      *(result + 65) = v15;
      if (v15 + 2 <= v5)
      {
        v13 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_67;
  }

  if (v12 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v8 = *(v8 + v11);
      v13 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_67;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_67;
  }

  LODWORD(v8) = *(v8 + v11);
  *(result + 65) = v4 + 5;
  v13 = v4 + 8;
  if (v13 > v5)
  {
    goto LABEL_67;
  }

LABEL_29:
  *(result + 65) = v13;
  v16 = -256 << (8 * v12);
  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v10) = v8 | v17;
LABEL_33:
  if (v10 == 1)
  {
    v18 = result[29];
    if (v18)
    {
      result[29] = *v18;
    }

    else
    {
      v18 = (*(result[25] + 8))(*result[25], 32, "FutureStack");
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 0;
    }

    *v18 = v3[28];
    v29 = *(v3 + 52);
    v30 = *(v3 + 53);
    *(v18 + 24) = v30;
    v3[28] = v18;
    if (v30 + 1 <= v29)
    {
      v34 = v3[27];
      v35 = v30;
    }

    else
    {
      if (v29 <= 1)
      {
        v29 = 1;
      }

      v31 = 2 * v29;
      if (v31 <= v30 + 1)
      {
        v32 = v30 + 1;
      }

      else
      {
        v32 = v31;
      }

      v33 = v3[25];
      v34 = (v33[1])(*v33, 8 * v32, "Vector Storage (void *, growth)");
      memcpy(v34, v3[27], 8 * *(v3 + 53));
      (v33[3])(*v33, v3[27]);
      *(v3 + 52) = v32;
      v3[27] = v34;
      v35 = *(v3 + 53);
    }

    memmove(&v34[8 * v30 + 8], &v34[8 * v30], 8 * (v35 - v30));
    *(v3[27] + 8 * v30) = 0;
    ++*(v3 + 53);
    result = (*(a2 + 16))(a2);
    *(v3[27] + 8 * *(v18 + 24)) = result;
    v36 = *(v18 + 12);
    if (v36)
    {
      v37 = 0;
      v38 = 8 * v36;
      do
      {
        **(*(v18 + 16) + v37) = result;
        v37 += 8;
      }

      while (v38 != v37);
    }

    v39 = *v18;
    *(v18 + 12) = 0;
    *(v18 + 24) = 0;
    *v18 = v3[29];
    v3[28] = v39;
    v3[29] = v18;
    *a3 = result;
  }

  else if (v10)
  {
    v19 = v10 - 2;
    if ((v10 - 2) < *(result + 53) && (v20 = *(result[27] + 8 * v19)) != 0)
    {
      *a3 = v20;
    }

    else
    {
      v21 = result + 28;
      do
      {
        v21 = *v21;
        if (!v21)
        {
          glpDeserialError(result, 2u);
        }
      }

      while (*(v21 + 6) != v19);
      v22 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v23 + 1 <= v22)
      {
        v27 = v21[2];
        v28 = *(v21 + 3);
      }

      else
      {
        if (v22 <= 1)
        {
          v22 = 1;
        }

        v24 = 2 * v22;
        if (v24 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        else
        {
          v25 = v24;
        }

        v26 = result[25];
        v27 = (v26[1])(*v26, 8 * v25, "Vector Storage (void**, growth)");
        memcpy(v27, v21[2], 8 * *(v21 + 3));
        (v26[3])(*v26, v21[2]);
        *(v21 + 2) = v25;
        v21[2] = v27;
        v28 = *(v21 + 3);
      }

      result = memmove(&v27[8 * v23 + 8], &v27[8 * v23], 8 * (v28 - v23));
      *(v21[2] + 8 * v23) = a3;
      ++*(v21 + 3);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void glpDeserialError(uint64_t a1, unsigned int a2)
{
  *md = 0;
  v6 = 0;
  v7 = 0;
  CC_SHA1(*(a1 + 248), *(a1 + 256), md);
  v4 = deserialErrorString(a2);
  glpSetCrashLogMessagef("GLProgrammability: deserial error (%s) at offset %u into data of length %u with SHA1 %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v4, *(a1 + 260), *(a1 + 256), md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v6, BYTE1(v6), BYTE2(v6), BYTE3(v6), BYTE4(v6), BYTE5(v6), BYTE6(v6), HIBYTE(v6), v7, BYTE1(v7), BYTE2(v7), HIBYTE(v7));
  _longjmp(a1, a2);
}

uint64_t deserialize_GLPString(uint64_t a1)
{
  v1 = *(a1 + 260);
  v2 = *(a1 + 256);
  if (v1 >= v2)
  {
    goto LABEL_38;
  }

  v3 = *(a1 + 248);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 260) = v1 + 1;
  if (v4 < 0)
  {
    v7 = (v5 >> 1) & 7;
    if (((v5 >> 1) & 7) > 3)
    {
      if (((v5 >> 1) & 7) > 5)
      {
        if (v7 == 6)
        {
          if (v1 + 5 <= v2)
          {
            LODWORD(v3) = *(v3 + v6);
            *(a1 + 260) = v1 + 5;
            v8 = v1 + 8;
            if (v8 <= v2)
            {
LABEL_29:
              *(a1 + 260) = v8;
              v11 = -256 << (8 * v7);
              if (v4)
              {
                v12 = v11;
              }

              else
              {
                v12 = 0;
              }

              LODWORD(v5) = v3 | v12;
              goto LABEL_33;
            }
          }
        }

        else if (v1 + 9 <= v2)
        {
          v3 = *(v3 + v6);
          v8 = v1 + 9;
          goto LABEL_29;
        }
      }

      else
      {
        v9 = v1 + 5;
        if (v7 == 4)
        {
          if (v9 <= v2)
          {
            LODWORD(v3) = *(v3 + v6);
            *(a1 + 260) = v1 + 5;
            if (v1 + 5 < v2)
            {
              v8 = v1 + 6;
              goto LABEL_29;
            }
          }
        }

        else if (v9 <= v2)
        {
          LODWORD(v3) = *(v3 + v6);
          v10 = (v1 + 5);
          *(a1 + 260) = v10;
          if (v10 + 2 <= v2)
          {
            v8 = v1 + 7;
            goto LABEL_29;
          }
        }
      }
    }

    else if (((v5 >> 1) & 7) > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_38:
    glpDeserialError(a1, 1u);
  }

LABEL_33:
  v18 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __deserialize_GLPString_block_invoke;
  v17[3] = &__block_descriptor_tmp_8;
  v17[4] = a1;
  v17[5] = v5;
  deserialize_pointer(a1, v17, &v18);
  result = v18;
  if (v5)
  {
    v14 = v5 >> 5;
    v15 = ~(v5 >> 5);
    v16 = v5;
    do
    {
      v16 ^= 32 * v16 + (v16 >> 2) + *(v18 + (v5 - 1));
      LODWORD(v5) = v5 + v15;
    }

    while (v5 > v14);
  }

  return result;
}

uint64_t ShInitialize(_OWORD *a1, int a2)
{
  if (a1)
  {
    v2 = &glpBuiltInConstantValues[8 * (a2 == 4)];
    v3 = a1[1];
    *v2 = *a1;
    v2[1] = v3;
    v4 = &glpBuiltInConstantsInitialized;
    if (a2 == 4)
    {
      v4 = &unk_28144F891;
    }

    *v4 = 1;
  }

  return 1;
}

_DWORD *ShConstructCompiler(int *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[4];
  v5 = malloc_type_malloc(0x88uLL, 0xCA0EF1E7uLL);
  if (!v5)
  {
    abort();
  }

  v6 = v5;
  *v5 = 0;
  v5[2] = 0;
  v5[3] = v2;
  v5[4] = a1[3];
  v5[5] = v4;
  *(v5 + 3) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = Log;
  v6[14] = v3;
  return v6;
}

_DWORD *ShConstructLinker(int *a1)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = malloc_type_malloc(0x88uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  *v4 = 1;
  v4[2] = 0;
  v4[3] = v2;
  v4[4] = a1[3];
  v4[5] = v3;
  *(v4 + 3) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 4) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 10) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  *(v5 + 13) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 14) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 15) = 0;
  *(v5 + 16) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 0);
  return v5;
}

void ShDestruct(unsigned int *a1)
{
  handleResetPre(a1);
  handleResetPost(a1);
  if (*a1 == 1)
  {
    v2 = *(a1 + 13);
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(v2 + 40);
        v7 = *(v6 + v4);
        if (v7)
        {
          free(*(v6 + v4 + 8));
          free(v7);
          v3 = *(v2 + 32);
        }

        v4 += 32;
      }

      v2 = *(a1 + 13);
    }

    glpDestroyStringHash(v2);
    *(a1 + 13) = 0;
    v8 = *(a1 + 14);
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = 0;
      for (j = 0; j < v9; ++j)
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + v10);
        if (v13)
        {
          free(*(v12 + v10 + 8));
          free(v13);
          v9 = *(v8 + 32);
        }

        v10 += 32;
      }

      v8 = *(a1 + 14);
    }

    glpDestroyStringHash(v8);
    *(a1 + 14) = 0;
    if (a1[31])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        free(*(*(a1 + 16) + v14));
        ++v15;
        v14 += 16;
      }

      while (v15 < a1[31]);
    }

    off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 16));
  }

  free(a1);
}

uint64_t handleResetPre(uint64_t result)
{
  v1 = result;
  if (*result <= 1u)
  {
    v2 = *(result + 24);
    if (v2)
    {
      glpDestroyLog(v2);
      v1[3] = 0;
    }

    v3 = v1[4];
    if (v3)
    {
      glpDestroyLog(v3);
      v1[4] = 0;
    }

    v5 = v1[5];
    v4 = v1 + 5;
    result = v5;
    if (v5)
    {
      result = glpDestroyStringBuffer(result);
      *v4 = 0;
    }
  }

  return result;
}

void handleResetPost(uint64_t a1)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      glpDestroyLinkedProgram(v4);
      *(a1 + 48) = 0;
    }

    free(*(a1 + 56));
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    free(*(a1 + 72));
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v5 = *(a1 + 88);
    if (v5)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = *(*(v5 + 40) + v7);
          if (v9)
          {
            free(v9);
            v6 = *(v5 + 32);
          }

          v7 += 16;
        }

        v5 = *(a1 + 88);
      }

      glpDestroyIntHash(v5);
      *(a1 + 88) = 0;
    }

    v10 = *(a1 + 96);
    v3 = (a1 + 96);
    free(v10);
    goto LABEL_16;
  }

  if (!*a1)
  {
    v3 = (a1 + 48);
    v2 = *(a1 + 48);
    if (v2)
    {
      glpDestroyCompiledShader(v2);
LABEL_16:
      *v3 = 0;
    }
  }
}

BOOL ShCompile(int32x2_t *a1, const char **a2, uint64_t a3, int32x2_t *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4[10];
  v8 = a4[11];
  v9 = a4[12];
  v34 = *a4;
  a1[1] = vrev64_s32(*a4);
  handleResetPre(a1);
  Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  v11 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  memset(v37, 0, sizeof(v37));
  if (!compilerCache)
  {
    dispatch_sync(gSerialQueue, &__block_literal_global_3);
  }

  v12 = strlen(*a2);
  v13 = malloc_type_malloc(v12 + 17, 0xCA0EF1E7uLL);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  *v13 = a1[2].i32[0];
  *(v13 + 1) = a1[2].i32[1];
  *(v13 + 1) = a1[7].u32[0];
  memcpy(v13 + 16, *a2, v12 + 1);
  glpCacheGenerateHash(v14, v12 + 17, v37);
  free(v14);
  v35 = 0;
  v36 = 0;
  if (!glpCacheGetElement(compilerCache, v37, &v36, &v35))
  {
    v33 = v11;
    Compiler = glpMakeCompiler(a1[2].u32[0], a1[2].i32[1], a1[7].u32[0], *&Log, v11, 128, (a4[3].i32[0] >> 2) & 1);
    v18 = glpCompileShader(Compiler, *a2, v7, v8, v9);
    v17 = v18;
    v31 = v18 != 0;
    if (v18)
    {
      v19 = (glpCompiledShaderSerializedSize(v18) + 19) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = 16;
    }

    else
    {
      v20 = 0;
      v19 = 16;
    }

    v24 = glpLogGetSerializedSize(*&Log) + v19 + 3;
    v25 = glpLogGetSerializedSize(*&Log) + (v24 & 0xFFFFFFFFFFFFFFFCLL) + 3;
    v26 = malloc_type_malloc(v25 & 0xFFFFFFFFFFFFFFFCLL, 0xCA0EF1E7uLL);
    if (v26)
    {
      v27 = v26;
      *v26 = v31;
      *(v26 + 1) = v20;
      *(v26 + 2) = v19;
      *(v26 + 3) = v24 & 0xFFFFFFFC;
      if (v17)
      {
        glpCompiledShaderSerialize(v17, &v26[v20]);
        glpLogSerialize(*&Log, &v27[v19 & 0xFFFFFFFC]);
        v22 = v33;
        glpLogSerialize(v33, &v27[v24 & 0xFFFFFFFC]);
        glpCacheAddElement(compilerCache, v37, v27, v25 & 0xFFFFFFFFFFFFFFFCLL);
        free(v27);
        v28 = Compiler;
        if (v34)
        {
          StringBuffer = glpLogGetStringBuffer(v33);
          glpStringBufferAppendCString(StringBuffer, "\nIntermediate Parse Tree\n========================\n");
          TopLevelNode = glpCompilerGetTopLevelNode(Compiler);
          glpDumpASTNodeToStringBuffer(StringBuffer, TopLevelNode);
        }
      }

      else
      {
        glpLogSerialize(*&Log, &v26[v19 & 0xFFFFFFFC]);
        v22 = v33;
        glpLogSerialize(v33, &v27[v24 & 0xFFFFFFFC]);
        glpCacheAddElement(compilerCache, v37, v27, v25 & 0xFFFFFFFFFFFFFFFCLL);
        free(v27);
        v28 = Compiler;
      }

      glpDestroyCompiler(v28);
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_21:
    abort();
  }

  v15 = v11;
  v16 = v36;
  if (*v36)
  {
    v17 = glpCompiledShaderDeserialize((v36 + *(v36 + 1)));
  }

  else
  {
    v17 = 0;
  }

  glpLogDeserialize(*&Log, v36 + v16[2]);
  v21 = v36 + v16[3];
  v22 = v15;
  glpLogDeserialize(v15, v21);
  free(v36);
  v36 = 0;
  if (v17)
  {
LABEL_11:
    handleResetPost(a1);
    a1[6] = v17;
  }

LABEL_12:
  result = v17 != 0;
  a1[3] = Log;
  a1[4] = v22;
  return result;
}

void __ShCompile_block_invoke()
{
  if (!compilerCache)
  {
    compilerCache = glpCacheOpen("compileCache");
  }
}

BOOL ShLink(uint64_t a1, uint64_t *a2, int a3, char *a4)
{
  v214 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = *(a4 + 1);
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  if (!v5)
  {
    return 0;
  }

  handleResetPre(a1);
  if (!linkerCache)
  {
    dispatch_sync(gSerialQueue, &__block_literal_global_6);
  }

  v192 = a4;
  memset(v206, 0, sizeof(v206));
  v195 = a3;
  if (a3)
  {
    v10 = a3;
    v11 = 208;
    v12 = a2;
    do
    {
      LODWORD(v207) = 0;
      v13 = *v12++;
      glpGetCompiledShaderAST(*(v13 + 48), &v207);
      v11 = (v207 + v11 + 7) & 0xFFFFFFF8;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 208;
  }

  v200 = 0u;
  v201 = 0u;
  glpInitPoolAllocator(0x4000, 0x4000, &v200);
  v211[0] = 0;
  *__n = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  glpInitSerialContext(&v207, &v200);
  serialize_bindings(&v207, *(a1 + 104));
  serialize_bindings(&v207, *(a1 + 112));
  v15 = *(a1 + 124);
  v16 = glp_serialized_integer32_control(v15);
  v17 = HIDWORD(__n[0]);
  v18 = __n[0];
  v19 = HIDWORD(__n[0]) + 1;
  if ((HIDWORD(__n[0]) + 1) <= LODWORD(__n[0]))
  {
    v22 = __n[1];
    v23 = HIDWORD(__n[0]);
  }

  else
  {
    if (SLODWORD(__n[0]) <= 1)
    {
      v18 = 1;
    }

    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v22 = (*(&v207 + 1))(v207, v21, "Vector Storage (uint8_t, growth)");
    memcpy(v22, __n[1], HIDWORD(__n[0]));
    (*(&v208 + 1))(v207, __n[1]);
    LODWORD(__n[0]) = v21;
    __n[1] = v22;
    v23 = HIDWORD(__n[0]);
  }

  memmove(&v22[v17 + 1], &v22[v17], (v23 - v17));
  *(__n[1] + v17) = v16;
  v24 = HIDWORD(__n[0]);
  v25 = ++HIDWORD(__n[0]);
  if ((v16 & 0x80000000) != 0)
  {
    v26 = (v16 >> 1) & 7;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v45 = v24 + 4;
        v46 = __n[0];
        if (v45 <= LODWORD(__n[0]))
        {
          v49 = __n[1];
          v50 = v25;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v46 = 1;
          }

          v47 = 2 * v46;
          if (v47 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = v47;
          }

          v49 = (*(&v207 + 1))(v207, v48, "Vector Storage (uint8_t, growth)");
          memcpy(v49, __n[1], HIDWORD(__n[0]));
          (*(&v208 + 1))(v207, __n[1]);
          LODWORD(__n[0]) = v48;
          __n[1] = v49;
          v50 = HIDWORD(__n[0]);
        }

        memmove(&v49[v25 + 1], &v49[v25], v50 - v25);
        v52 = __n[1] + v25;
        *(v52 + 2) = BYTE2(v15);
        *v52 = v15;
        v51 = 3;
      }

      else
      {
        if (v26 != 3)
        {
          goto LABEL_60;
        }

        v33 = v24 + 5;
        v34 = __n[0];
        if (v33 <= LODWORD(__n[0]))
        {
          v37 = __n[1];
          v38 = v25;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v34 = 1;
          }

          v35 = 2 * v34;
          if (v35 <= v33)
          {
            v36 = v33;
          }

          else
          {
            v36 = v35;
          }

          v37 = (*(&v207 + 1))(v207, v36, "Vector Storage (uint8_t, growth)");
          memcpy(v37, __n[1], HIDWORD(__n[0]));
          (*(&v208 + 1))(v207, __n[1]);
          LODWORD(__n[0]) = v36;
          __n[1] = v37;
          v38 = HIDWORD(__n[0]);
        }

        memmove(&v37[v25 + 1], &v37[v25], v38 - v25);
        *(__n[1] + v25) = v15;
        v51 = 4;
      }
    }

    else if (v26)
    {
      v27 = v24 + 3;
      v28 = __n[0];
      if (v27 <= LODWORD(__n[0]))
      {
        v31 = __n[1];
        v32 = v25;
      }

      else
      {
        if (SLODWORD(__n[0]) <= 1)
        {
          v28 = 1;
        }

        v29 = 2 * v28;
        if (v29 <= v27)
        {
          v30 = v27;
        }

        else
        {
          v30 = v29;
        }

        v31 = (*(&v207 + 1))(v207, v30, "Vector Storage (uint8_t, growth)");
        memcpy(v31, __n[1], HIDWORD(__n[0]));
        (*(&v208 + 1))(v207, __n[1]);
        LODWORD(__n[0]) = v30;
        __n[1] = v31;
        v32 = HIDWORD(__n[0]);
      }

      memmove(&v31[v25 + 1], &v31[v25], v32 - v25);
      *(__n[1] + v25) = v15;
      v51 = 2;
    }

    else
    {
      v39 = v24 + 2;
      v40 = __n[0];
      if (v39 <= LODWORD(__n[0]))
      {
        v43 = __n[1];
        v44 = v25;
      }

      else
      {
        if (SLODWORD(__n[0]) <= 1)
        {
          v40 = 1;
        }

        v41 = 2 * v40;
        if (v41 <= v39)
        {
          v42 = v39;
        }

        else
        {
          v42 = v41;
        }

        v43 = (*(&v207 + 1))(v207, v42, "Vector Storage (uint8_t, growth)");
        memcpy(v43, __n[1], HIDWORD(__n[0]));
        (*(&v208 + 1))(v207, __n[1]);
        LODWORD(__n[0]) = v42;
        __n[1] = v43;
        v44 = HIDWORD(__n[0]);
      }

      memmove(&v43[v25 + 1], &v43[v25], v44 - v25);
      *(__n[1] + v25) = v15;
      v51 = 1;
    }

    v25 = HIDWORD(__n[0]) + v51;
    HIDWORD(__n[0]) += v51;
  }

LABEL_60:
  if (v15)
  {
    v53 = 0;
    do
    {
      serialize_GLPString(&v207, *(*(a1 + 128) + v53), *(*(a1 + 128) + v53 + 8));
      v53 += 16;
    }

    while (16 * v15 != v53);
    v25 = HIDWORD(__n[0]);
  }

  v54 = v25 + v11;
  v55 = malloc_type_malloc(v25 + v11, 0xCA0EF1E7uLL);
  if (!v55)
  {
    goto LABEL_157;
  }

  v56 = v55;
  bzero(v55, v25 + v11);
  if (v195)
  {
    v57 = v56 + 140;
    v58 = 208;
    v59 = a2;
    v60 = v195;
    do
    {
      v61 = *v59++;
      v62 = *(v61 + 48);
      LODWORD(v212[0]) = 0;
      CompiledShaderAST = glpGetCompiledShaderAST(v62, v212);
      *(v57 - 3) = glpGetCompiledShaderLanguage(v62);
      *(v57 - 2) = glpGetCompiledShaderVersion(v62);
      *(v57 - 1) = v58;
      v64 = LODWORD(v212[0]);
      *v57 = v212[0];
      v57 += 4;
      memcpy(&v56[v58], CompiledShaderAST, v64);
      v65 = v64 + v58;
      v58 = (v65 + 7) & 0xFFFFFFF8;
      bzero(&v56[v65], v58 - v65);
      --v60;
    }

    while (v60);
  }

  else
  {
    v58 = 208;
  }

  v66 = HIDWORD(__n[0]);
  *(v56 + 28) = v58;
  *(v56 + 29) = v66;
  memcpy(&v56[v58], __n[1], v66);
  glpDestroySerialContext(&v207, 1);
  glpDestroyPoolAllocator(&v200);
  *v56 = *v192;
  *(v56 + 2) = *(v192 + 2);
  *(v56 + 3) = *(a1 + 16);
  v67 = *(a1 + 20);
  *(v56 + 4) = v67;
  *(v56 + 20) = *(v192 + 20);
  *(v56 + 7) = *(v192 + 7);
  v68 = *(v192 + 2);
  v69 = *(v192 + 4);
  *(v56 + 3) = *(v192 + 3);
  *(v56 + 4) = v69;
  *(v56 + 2) = v68;
  v70 = &glpBuiltInConstantValues[8 * (v67 == 4)];
  v71 = v70[1];
  *(v56 + 5) = *v70;
  *(v56 + 6) = v71;
  *(v56 + 30) = v195;
  glpCacheGenerateHash(v56, v54, v206);
  free(v56);
  v198 = 0;
  v199 = 0;
  if (glpCacheGetElement(linkerCache, v206, &v199, &v198))
  {
    v72 = v199;
    v73 = *(v199 + 12);
    Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
    v75 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
    glpLogSetContainsErrors(Log, *(v72 + 16));
    StringBuffer = glpLogGetStringBuffer(Log);
    glpStringBufferAppendFormat(StringBuffer, "%.*s", *(v72 + 18), &v72[*(v72 + 17)]);
    glpLogSetContainsErrors(v75, *(v72 + 19));
    v77 = glpLogGetStringBuffer(v75);
    glpStringBufferAppendFormat(v77, "%.*s", *(v72 + 21), &v72[*(v72 + 20)]);
    if (v73)
    {
      v78 = *(v72 + 15);
      v79 = *(v72 + 14);
      handleResetPost(a1);
      v80 = glpLinkProgramFromLinkerOutput(&v72[v79], v78, v72);
    }

    else
    {
      v80 = 0;
    }

    *(a1 + 48) = v80;
    *(a1 + 24) = Log;
    *(a1 + 32) = v75;
    v97 = v199;
  }

  else
  {
    v81 = (v192 + 32);
    v82 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
    v83 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
    v190 = v82;
    Linker = glpMakeLinker(*(a1 + 16), *(a1 + 20), *(v192 + 5), *(v192 + 6), *(v192 + 7), v82, v83, *(a1 + 104), *(a1 + 112), a1 + 120, v192 + 2, 0, &glpBuiltInConstantValues[8 * (v192[16] == 4)]);
    if (v195 >= 1)
    {
      v85 = v195;
      do
      {
        v86 = *a2++;
        glpLinkerAddShader(Linker, *(v86 + 48));
        --v85;
      }

      while (v85);
    }

    v87 = *v192;
    v88 = glpLinkProgram(Linker);
    v196 = v88;
    if (v88)
    {
      v89 = v88;
      handleResetPost(a1);
      *(a1 + 48) = v89;
      glpLinkedProgramGetOverrides(v89, v81);
      if (*(a1 + 8) >= 4u)
      {
        for (i = 0; i != 5; ++i)
        {
          PPStreamManager = glpLinkedProgramGetPPStreamManager(*(a1 + 48), i);
          if (PPStreamManager)
          {
            glpPPShaderLinearizeStreamMgr(PPStreamManager, 25291);
          }
        }
      }

      *(a1 + 24) = v82;
      *(a1 + 32) = v83;
      if (v87)
      {
        v92 = glpLogGetStringBuffer(v83);
        glpStringBufferAppendCString(v92, "\nMerged ASTs\n========================\n");
        for (j = 0; j != 5; ++j)
        {
          MergedAST = glpLinkerGetMergedAST(Linker, j);
          if (MergedAST)
          {
            v95 = MergedAST;
            glpStringBufferAppendCString(v92, "\nMerged AST for ");
            v96 = glpLanguageToString(j);
            glpStringBufferAppendCString(v92, v96);
            glpStringBufferAppendCString(v92, " shader\n");
            glpDumpASTNodeToStringBuffer(v92, v95);
          }
        }
      }
    }

    else
    {
      *(a1 + 24) = v82;
      *(a1 + 32) = v83;
    }

    glpDestroyLinker(Linker);
    v98 = glpLogGetStringBuffer(v190);
    String = glpStringBufferGetString(v98);
    v101 = v100;
    v102 = glpLogGetStringBuffer(v83);
    v103 = glpStringBufferGetString(v102);
    v105 = v103;
    v106 = v104;
    v107 = v101 + 608;
    if ((v101 & 7) != 0)
    {
      v107 = (v101 & 0xFFFFFFF8) + 616;
    }

    v193 = v107;
    v108 = v104 + v107 + 7;
    v109 = v108 & 0xFFFFFFF8;
    v80 = v196;
    if (v196)
    {
      v184 = v104;
      v185 = v101;
      v186 = v103;
      v187 = String;
      v188 = v83;
      v213 = 0;
      memset(v212, 0, sizeof(v212));
      bzero(&v207, 0x208uLL);
      v110 = 0;
      for (k = 0; k != 5; ++k)
      {
        v112 = glpLinkedProgramGetPPStreamManager(v80, k);
        ShaderBytesCode = glpLinkedProgramGetShaderBytesCode(v80, k);
        v114 = (&v207 + v110);
        *(&v207 + v110 + 4) = k;
        if (v112)
        {
          LODWORD(v200) = 0;
          Stream = PPStreamGetStream(v112, &v200);
          v116 = v200;
          v117 = 8 * v200;
          v114[2] = v109;
          v114[3] = v117;
          *v114 = 1;
          LODWORD(v109) = v109 + 8 * v116;
        }

        else
        {
          Stream = 0;
        }

        *(v212 + k) = Stream;
        v80 = v196;
        if (ShaderBytesCode && *ShaderBytesCode)
        {
          v118 = **ShaderBytesCode + 4;
          v119 = (&v207 + v110);
          v119[4] = v109;
          v119[5] = v118;
          *v119 = 1;
          LODWORD(v109) = v118 + v109;
          v120 = *(ShaderBytesCode + 8);
          if (v120)
          {
            v121 = 8 * *v120 + 8;
            v119[8] = v109;
            v119[9] = v121;
            LODWORD(v109) = v121 + v109;
          }

          v122 = *(ShaderBytesCode + 40);
          if (v122)
          {
            v123 = *v122 + 4;
            v124 = &v207 + v110;
            *(v124 + 6) = v109;
            *(v124 + 7) = v123;
            LODWORD(v109) = v123 + v109;
          }

          v125 = *(ShaderBytesCode + 16);
          if (v125)
          {
            v126 = 4 * *v125 + 4;
            v127 = &v207 + v110;
            *(v127 + 10) = v109;
            *(v127 + 11) = v126;
            LODWORD(v109) = v126 + v109;
          }

          v128 = *(ShaderBytesCode + 24);
          if (v128)
          {
            v129 = 4 * *v128 + 4;
            v130 = &v207 + v110;
            *(v130 + 12) = v109;
            *(v130 + 13) = v129;
            LODWORD(v109) = v129 + v109;
          }

          if (*(ShaderBytesCode + 32))
          {
            v131 = &v207 + v110;
            *(v131 + 14) = v109;
            *(v131 + 15) = 0;
          }

          v132 = &v207 + v110;
          *(v132 + 88) = *(ShaderBytesCode + 72);
          *(v132 + 8) = *(ShaderBytesCode + 48);
          *(v132 + 72) = *(ShaderBytesCode + 56);
        }

        v110 += 104;
      }

      memset(v205, 0, sizeof(v205));
      glpInitPoolAllocator(0x4000, 0x4000, v205);
      v204 = 0;
      *__src = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      glpInitSerialContext(&v200, v205);
      glpSerializeLinkedProgram(&v200, v196);
      v133 = HIDWORD(__src[0]);
      v183 = (v109 + 7) & 0xFFFFFFF8;
      if ((BYTE4(__src[0]) & 7) != 0)
      {
        v109 = ((HIDWORD(__src[0]) + v183) & 0xFFFFFFF8) + 8;
      }

      else
      {
        v109 = (HIDWORD(__src[0]) + v183);
      }

      v134 = malloc_type_malloc(v109, 0xCA0EF1E7uLL);
      if (!v134)
      {
        goto LABEL_157;
      }

      v135 = v134;
      v136 = 0;
      v137 = 0;
      v138 = *v81;
      v139 = v81[2];
      *(v134 + 1) = v81[1];
      *(v134 + 2) = v139;
      *v134 = v138;
      *(v134 + 6) = 0x500000001;
      v140 = v134 + 88;
      do
      {
        v141 = &v140[v136 * 8];
        *(v141 + 3) = *&v211[v136 - 2];
        *(v141 + 4) = *&v211[v136];
        *(v141 + 5) = *&v211[v136 + 2];
        *(v141 + 12) = v211[v136 + 4];
        *v141 = *(&v207 + v136 * 8);
        *(v141 + 1) = *(&v207 + v136 * 8 + 16);
        *(v141 + 2) = *&__n[v136];
        v142 = *(v212 + v137);
        if (v142)
        {
          memcpy(&v135[*(&v207 + v136 * 8 + 8)], *(v212 + v137), *(&v207 + v136 * 8 + 12));
          free(v142);
          *(v212 + v137) = 0;
        }

        v143 = glpLinkedProgramGetShaderBytesCode(v196, v137);
        if (v143)
        {
          v144 = v143;
          if (*v143)
          {
            memcpy(&v135[*(&v207 + v136 * 8 + 16)], *v143, *(&v208 + v136 * 8 + 4));
            v145 = v144[1];
            if (v145)
            {
              memcpy(&v135[LODWORD(__n[v136])], v145, SHIDWORD(__n[v136]));
            }

            v146 = v144[5];
            if (v146)
            {
              memcpy(&v135[LODWORD(__n[v136 - 1])], v146, *(&v208 + v136 * 8 + 12));
            }

            v147 = v144[2];
            if (v147)
            {
              memcpy(&v135[LODWORD(__n[v136 + 1])], v147, SHIDWORD(__n[v136 + 1]));
            }

            v148 = v144[3];
            if (v148)
            {
              memcpy(&v135[LODWORD(v211[v136 - 2])], v148, *(&v210 + v136 * 8 + 4));
            }

            v149 = v144[4];
            if (v149)
            {
              memcpy(&v135[LODWORD(v211[v136 - 1])], v149, *(&v210 + v136 * 8 + 12));
            }
          }
        }

        ++v137;
        v136 += 13;
      }

      while (v136 != 65);
      *(v135 + 14) = v183;
      *(v135 + 15) = v133;
      memcpy(&v135[v183], __src[1], v133);
      glpDestroySerialContext(&v200, 1);
      glpDestroyPoolAllocator(v205);
      v80 = v196;
      String = v187;
      v83 = v188;
      v101 = v185;
      v105 = v186;
      v106 = v184;
    }

    else
    {
      v150 = malloc_type_malloc(v108 & 0xFFFFFFF8, 0xCA0EF1E7uLL);
      if (!v150)
      {
        goto LABEL_157;
      }

      v135 = v150;
      *(v150 + 12) = 0;
      *(v150 + 7) = 0;
    }

    *(v135 + 17) = 608;
    *(v135 + 18) = v101;
    *(v135 + 16) = glpLogContainsErrors(v190);
    *(v135 + 20) = v193;
    *(v135 + 21) = v106;
    *(v135 + 19) = glpLogContainsErrors(v83);
    memcpy(v135 + 608, String, v101);
    memcpy(&v135[v193], v105, v106);
    glpCacheAddElement(linkerCache, v206, v135, v109);
    v97 = v135;
  }

  free(v97);
  v197 = v80;
  if (v80)
  {
    *(a1 + 64) = glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 48));
    UniformHash = glpLinkedProgramGetUniformHash(*(a1 + 48));
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    v153 = *(BindableUniformHash + 32);
    if (v153)
    {
      v154 = BindableUniformHash;
      v155 = 0;
      v156 = 0;
      v157 = 0;
      do
      {
        v158 = *(*(v154 + 40) + v155);
        if (v158)
        {
          glpABIGetTypeSize(0, *(v158 + 24), 0);
          glpTypeSizeGetSize();
          v160 = v159;
          *(a1 + 68) += v159;
          v161 = malloc_type_realloc(*(a1 + 96), 4 * (v157 + 1), 0x352A3853uLL);
          if (!v161)
          {
            goto LABEL_157;
          }

          *(a1 + 96) = v161;
          v161[v157] = v160;
          v153 = *(v154 + 32);
          ++v157;
        }

        ++v156;
        v155 += 32;
      }

      while (v156 < v153);
    }

    v162 = *(a1 + 64);
    *(a1 + 80) = v162;
    v163 = malloc_type_calloc(v162, 8uLL, 0x1A32276BuLL);
    if (v163)
    {
      *(a1 + 72) = v163;
      v164 = *(UniformHash + 32);
      if (v164)
      {
        v165 = 0;
        v189 = UniformHash;
        while (1)
        {
          v166 = *(*(UniformHash + 40) + 32 * v165);
          if (v166)
          {
            v167 = *(v166 + 4);
            if (v167 != -1)
            {
              glpABIGetTypeSize(0, *(v166 + 24), 0);
              glpTypeSizeGetSize();
              v169 = v168;
              v170 = 4 * v168;
              v171 = malloc_type_malloc(v170, 0xCA0EF1E7uLL);
              if (!v171)
              {
                goto LABEL_157;
              }

              v172 = v171;
              v173 = malloc_type_malloc(v170, 0xCA0EF1E7uLL);
              if (!v173)
              {
                goto LABEL_157;
              }

              v174 = v173;
              v175 = malloc_type_malloc(v169, 0xCA0EF1E7uLL);
              if (!v175)
              {
                goto LABEL_157;
              }

              v176 = v175;
              v191 = v174;
              v194 = v172;
              glpTypeGetAppleVec4Types(*(v166 + 24), v172, 1, v174, 0, v175, 0, 0, 1);
              if (v169)
              {
                v177 = 0;
                v178 = 8 * v167;
                v179 = 8 * v169;
                v180 = v176;
                do
                {
                  v181 = *v174++;
                  *(*(a1 + 72) + v178 + v177) = v181;
                  v182 = *v172++;
                  *(*(a1 + 72) + v178 + v177 + 4) = glpPrimitiveTypeGetGLType(v182);
                  *(*(a1 + 72) + v178 + v177 + 6) = *v166;
                  *(*(a1 + 72) + v178 + v177 + 7) = *(*(a1 + 72) + v178 + v177 + 7) & 0xFE | *v180 & 1;
                  *(*(a1 + 72) + v178 + v177 + 7) = *(*(a1 + 72) + v178 + v177 + 7) & 0xFD | *v180 & 2;
                  LOBYTE(v182) = *v180++;
                  *(*(a1 + 72) + v178 + v177 + 7) = *(*(a1 + 72) + v178 + v177 + 7) & 0xFB | v182 & 4;
                  v177 += 8;
                }

                while (v179 != v177);
              }

              free(v194);
              free(v191);
              free(v176);
              UniformHash = v189;
              v164 = *(v189 + 32);
            }
          }

          if (++v165 >= v164)
          {
            return v197 != 0;
          }
        }
      }

      return v197 != 0;
    }

LABEL_157:
    abort();
  }

  return v197 != 0;
}

void __ShLink_block_invoke()
{
  if (!linkerCache)
  {
    linkerCache = glpCacheOpen("linkCache");
  }
}

void ShCleanup(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    glpCleanUpLinkedProgram(v1);
  }
}

char *ShGetInfoLog(uint64_t *a1)
{
  String = glpLogGetString(a1[3]);
  v3 = glpLogGetString(a1[4]);
  if (!*v3)
  {
    return String;
  }

  v4 = v3;
  v5 = a1[5];
  if (v5)
  {
    glpDestroyStringBuffer(v5);
  }

  StringBuffer = glpMakeStringBuffer(&GLP_MALLOC_ALLOCATOR);
  a1[5] = StringBuffer;
  glpStringBufferAppendCString(StringBuffer, String);
  glpStringBufferAppendCString(a1[5], v4);
  v7 = a1[5];

  return glpStringBufferGetCString(v7);
}

_DWORD *ShAttributeBindingRequest(_DWORD *result, int a2, char *__s)
{
  v5 = result;
  if (__PAIR64__(__s[1], *__s) != 0x6C00000067 || __s[2] != 95)
  {
    v6 = strlen(__s);
    if (v6)
    {
      v7 = v6;
      LODWORD(v8) = v6;
      do
      {
        v8 = (32 * v8 + (v8 >> 2) + __s[v7 - 1]) ^ v8;
        v7 += ~(v6 >> 5);
      }

      while (v7 > v6 >> 5);
      v9 = v8 << 32;
    }

    else
    {
      v9 = 0;
    }

    result = glpStringHashGet(*(v5 + 13), __s, v9 | v6);
    if (result)
    {
      *result = a2;
    }

    else
    {
      v10 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (!v10 || (v11 = v10, *v10 = a2, v10[1] = 0, *(v10 + 1) = 0, v12 = strlen(__s), (v13 = malloc_type_malloc(v12, 0xCA0EF1E7uLL)) == 0))
      {
        abort();
      }

      v14 = v13;
      memcpy(v13, __s, v12);
      v16 = *(v5 + 13);
      if (v12)
      {
        v17 = v12;
        LODWORD(v18) = v12;
        do
        {
          v18 = (32 * v18 + (v18 >> 2) + v14[v17 - 1]) ^ v18;
          v17 += ~(v12 >> 5);
        }

        while (v17 > v12 >> 5);
        v19 = v18 << 32;
      }

      else
      {
        v19 = 0;
      }

      return glpStringHashPut(v16, v14, v19 | v12, v15, v11);
    }
  }

  return result;
}

uint64_t ShGetNumActiveAttributes(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    AttribHash = glpLinkedProgramGetAttribHash(result);
    v4 = 0u;
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v7 = 0u;
    DWORD2(v4) = -1;
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v14 = 0;
    v6 = &v15;
    getBindingInfo(AttribHash, typeFromGLPBinding, v3);
    return v15;
  }

  return result;
}

uint64_t getBindingInfo(uint64_t a1, void (*a2)(uint64_t, unsigned int *, unsigned int *, uint64_t *, uint64_t *, unsigned __int8 *), uint64_t a3)
{
  ptr = 0;
  *v34 = 0;
  v32 = 0;
  v31 = 0;
  v6 = *(a3 + 8);
  if (v6)
  {
    *v6 = 0;
  }

  v7 = *(a3 + 104);
  if (v7)
  {
    *v7 = 0;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_28:
    v18 = 0;
    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v12 = a2 == typeFromGLPUniformBlockBinding || a2 == typeFromGLPUniformBinding;
  while (1)
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + v9);
    if (v14)
    {
      break;
    }

LABEL_27:
    ++v10;
    v9 += 32;
    if (v10 >= v8)
    {
      goto LABEL_28;
    }
  }

  v15 = *(v13 + v9 + 8);
  v16 = *(v13 + v9 + 16);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  a2(v14, &v30, &v29, &v28, &v27, &v26);
  v34[0] = 0;
  if (v26)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (*(a3 + 48) && *(a3 + 16) || *(a3 + 56))
  {
    v17 = malloc_type_realloc(ptr, v16, 0x352A3853uLL);
    if (!v17)
    {
      abort();
    }

    ptr = v17;
    memcpy(v17, v15, v16);
  }

  v34[0] = v16;
  if (v12)
  {
LABEL_22:
    if (*(v14 + 4) == -1 && *(v14 + 8) != -1)
    {
      v31 = *(v14 + 8);
    }
  }

LABEL_25:
  if (!getBindingInfoForType(1, v26, v30, 0, &ptr, v29, v28, 0, &v32 + 1, &v32, &v31, 0, a3))
  {
    v8 = *(a1 + 32);
    goto LABEL_27;
  }

  if (*a3)
  {
    **a3 = v14;
  }

  v19 = v34[0];
  getString(ptr, v34[0], *(a3 + 16), *(a3 + 24), *(a3 + 48));
  v20 = *(a3 + 64);
  if (v20)
  {
    *v20 = v19 + 1;
  }

  v21 = *(a3 + 80);
  if (v21)
  {
    *v21 = HIDWORD(v32);
  }

  v22 = *(a3 + 128);
  if (v22)
  {
    *v22 = v31;
  }

  v18 = 1;
LABEL_38:
  free(ptr);
  v23 = *(a3 + 88);
  if (v23)
  {
    *v23 = HIDWORD(v32);
  }

  v24 = *(a3 + 136);
  if (v24)
  {
    *v24 = v32;
  }

  return v18;
}

uint64_t typeFromGLPBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = *(result + 8);
  *a5 = 0;
  *a6 = 0;
  return result;
}

uint64_t ShGetActiveNonbindableUniformsSize(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetNumBindableUniformBuffers(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return *(glpLinkedProgramGetBindableUniformHash(result) + 36);
  }

  return result;
}

uint64_t ShGetActiveBindableUniformBufferSizeTable(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetActiveBindableUniformBufferIndexOffsetFromLocation(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  result = getBindableUniformLocationInfo(a1, a2);
  if (result)
  {
    if (a3)
    {
      *a3 = *result;
    }

    if (a4)
    {
      *a4 = *(result + 4);
    }

    return 1;
  }

  return result;
}

uint64_t getBindableUniformLocationInfo(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  IntHash = *(a1 + 88);
  if (!IntHash)
  {
    IntHash = glpMakeIntHash(&GLP_MALLOC_ALLOCATOR);
    *(a1 + 88) = IntHash;
  }

  v5 = glpIntHashGet(IntHash, a2);
  if (!v5)
  {
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    v7 = *(BindableUniformHash + 32);
    if (!v7)
    {
      return 0;
    }

    v8 = BindableUniformHash;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(*(v8 + 40) + v9);
      if (v11)
      {
        glpABIGetTypeSize(0, *(v11 + 24), 0);
        glpTypeSizeGetSize();
        v13 = *(v11 + 4);
        if (v13 <= a2 && (v13 + v12) > a2)
        {
          v15 = v12;
          v16 = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
          if (!v16)
          {
            abort();
          }

          v5 = v16;
          v18 = glpIntHashPut(*(a1 + 88), a2, v16, v17);
          v19 = a2 - *(v11 + 4);
          *v5 = *(v11 + 8);
          *(v5 + 4) = v19;
          v20 = 4 * v15;
          MEMORY[0x28223BE20](v18);
          v21 = v25 - ((v20 + 15) & 0x7FFFFFFF0);
          bzero(v21, v20);
          MEMORY[0x28223BE20](v22);
          bzero(v21, v20);
          glpTypeGetAppleVec4Types(*(v11 + 24), v21, 1, v21, 0, 0, 0, 0, 1);
          v23 = a2 - *(v11 + 4);
          *(v5 + 8) = *&v21[4 * v23];
          *(v5 + 12) = glpPrimitiveTypeGetGLType(*&v21[4 * v23]);
          *(v5 + 16) = *v11;
          return v5;
        }

        v7 = *(v8 + 32);
      }

      ++v10;
      v9 += 32;
      if (v10 >= v7)
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t ShGetBindableUniformTypeInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _BYTE *a5)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  result = getBindableUniformLocationInfo(a1, a2);
  if (result)
  {
    if (a3)
    {
      *a3 = *(result + 8);
    }

    if (a4)
    {
      *a4 = *(result + 12);
    }

    if (a5)
    {
      *a5 = *(result + 16);
    }

    return 1;
  }

  return result;
}

uint64_t ShGetMaxAttributeLength(uint64_t a1)
{
  v17 = 0;
  result = *(a1 + 48);
  if (result)
  {
    AttribHash = glpLinkedProgramGetAttribHash(result);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3[0] = 0;
    v4 = 0u;
    v7 = 0u;
    v8 = 0u;
    DWORD2(v7) = -1;
    v10 = 0;
    v11 = 0xFFFFFFFFLL;
    v16 = 0;
    v3[1] = &v17;
    getBindingInfo(AttribHash, typeFromGLPBinding, v3);
    return v17;
  }

  return result;
}

uint64_t ShGetActiveAttrib(uint64_t a1, int a2, int a3, _DWORD *a4, int *a5, _DWORD *a6, void *a7)
{
  result = *(a1 + 48);
  if (!result)
  {
    return result;
  }

  AttribHash = glpLinkedProgramGetAttribHash(result);
  v15 = *(AttribHash + 32);
  if (!v15)
  {
    return 0;
  }

  for (i = (*(AttribHash + 40) + 16); ; i += 8)
  {
    v17 = *(i - 2);
    if (v17)
    {
      break;
    }

LABEL_7:
    if (!--v15)
    {
      return 0;
    }
  }

  if (a2)
  {
    --a2;
    goto LABEL_7;
  }

  v18 = *i;
  v19 = *(i - 1);
  Kind = glpTypeGetKind(*(v17 + 8));
  getString(v19, v18, a3, a4, a7);
  if (a5)
  {
    if (Kind == 2)
    {
      ElementCount = glpArrayTypeGetElementCount(*(v17 + 8));
    }

    else
    {
      ElementCount = 1;
    }

    *a5 = ElementCount;
  }

  if (a6)
  {
    ElementType = *(v17 + 8);
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(ElementType);
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(ElementType);
    *a6 = glpPrimitiveTypeGetGLType(PrimitiveType);
  }

  return 1;
}

const void *getString(const void *__src, int a2, int a3, _DWORD *a4, void *__dst)
{
  if (!a3)
  {
    if (!a4)
    {
      return __src;
    }

    __src = 0;
    goto LABEL_11;
  }

  if (a3 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  __src = memcpy(__dst, __src, v9);
  v10 = a3 - 1;
  if (a3 - 1 >= a2)
  {
    v10 = a2;
  }

  *(__dst + v10) = 0;
  if (a4)
  {
    __src = strlen(__dst);
LABEL_11:
    *a4 = __src;
  }

  return __src;
}

uint64_t ShGetAttribLocation(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  v3 = 0xFFFFFFFFLL;
  if (v2)
  {
    AttribHash = glpLinkedProgramGetAttribHash(v2);
    v6 = strlen(a2);
    if (v6)
    {
      v7 = v6;
      LODWORD(v8) = v6;
      do
      {
        v8 = (32 * v8 + (v8 >> 2) + a2[v7 - 1]) ^ v8;
        v7 += ~(v6 >> 5);
      }

      while (v7 > v6 >> 5);
      v9 = v8 << 32;
    }

    else
    {
      v9 = 0;
    }

    v10 = glpStringHashGet(AttribHash, a2, v9 | v6);
    if (v10)
    {
      return *v10;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t ShGetContextStateUniforms(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetContextStateUniforms(result);
  }

  return result;
}

uint64_t ShGetUniformLocation(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = *(a1 + 48);
  v5 = 0xFFFFFFFFLL;
  if (v4)
  {
    UniformHash = glpLinkedProgramGetUniformHash(v4);
    v9 = strlen(a2);
    if (v9)
    {
      v10 = v9;
      v11 = v9;
      do
      {
        v11 ^= 32 * v11 + (v11 >> 2) + a2[v10 - 1];
        v10 += ~(v9 >> 5);
      }

      while (v10 > v9 >> 5);
    }

    v12 = v9;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    if ((glpTypeParseDeref(UniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a2, v9, &v21, &v20, &v19) && (v13 = glpStringHashGet(UniformHash, v21, v22), *a3 = 0, v13) || (BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48)), glpTypeParseDeref(BindableUniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a2, v12, &v21, &v20, &v19)) && (v13 = glpStringHashGet(BindableUniformHash, v21, v22), *a3 = 1, v13)) && (v15 = v13, *(v13 + 4) != -1))
    {
      Kind = glpTypeGetKind(v20);
      ElementType = v20;
      if (Kind == 2)
      {
        ElementType = glpArrayTypeGetElementType(v20);
        v20 = ElementType;
      }

      if (glpTypeGetKind(ElementType))
      {
        v5 = 0xFFFFFFFFLL;
        if (*a3 && !v19)
        {
          return *(v15 + 4);
        }
      }

      else
      {
        return (v19 + *(v15 + 4));
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t topLevelLookUpUniformBindingTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(a1, a2, a3);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void ShSetInitialUniformValue(uint64_t a1, int a2, uint64_t a3)
{
  UniformHash = glpLinkedProgramGetUniformHash(*(a1 + 48));
  v6 = *(UniformHash + 32);
  if (v6)
  {
    v7 = UniformHash;
    v8 = 0;
    for (i = 0; i < v6; ++i)
    {
      v10 = *(*(v7 + 40) + v8);
      if (v10 && *(v10 + 4) != -1)
      {
        glpABIGetTypeSize(0, *(v10 + 24), 0);
        glpTypeSizeGetSize();
        v11 = *(v10 + 4);
        v13 = v11 + v12;
        v14 = __OFSUB__(a2, v11);
        v15 = a2 - v11;
        if (v15 < 0 == v14 && v13 > a2)
        {
          v17 = *(v10 + 16);
          if (v17)
          {
            *a3 = *(v17 + 16 * v15);
          }

          else
          {
            *a3 = 0;
            *(a3 + 8) = 0;
          }

          return;
        }

        v6 = *(v7 + 32);
      }

      v8 += 32;
    }
  }
}

uint64_t ShGetPPStreamManager(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetPPStreamManager(result, a2);
  }

  return result;
}

uint64_t ShGetShaderByteCode(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetShaderBytesCode(result, a2);
  }

  return result;
}

uint64_t ShGetLinkerPPStream(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 56));
  v4 = malloc_type_malloc(1uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
LABEL_9:
    abort();
  }

  v5 = 0;
  *(a1 + 56) = v4;
  *v4 = 0;
  do
  {
    if (*(a2 + v5 * 8))
    {
      v6 = off_278B49D78[v5];
      v7 = strlen(*(a1 + 56));
      v8 = strlen(v6);
      v9 = malloc_type_realloc(*(a1 + 56), v7 + v8 + 1, 0x352A3853uLL);
      if (!v9)
      {
        goto LABEL_9;
      }

      *(a1 + 56) = v9;
      strcat(v9, v6);
      v10 = glpPPDisassemble(*(a2 + v5 * 8));
      v11 = strlen(*(a1 + 56));
      v12 = strlen(v10);
      v13 = malloc_type_realloc(*(a1 + 56), v11 + v12 + 1, 0x352A3853uLL);
      if (!v13)
      {
        goto LABEL_9;
      }

      *(a1 + 56) = v13;
      strcat(v13, v10);
      glpPPDisassembleFree(v10);
    }

    ++v5;
  }

  while (v5 != 5);
  return *(a1 + 56);
}

uint64_t ShTransformFeedbackVaryings(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 124))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      free(*(*(a1 + 128) + v6));
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 124));
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 128));
  *(a1 + 120) = a2;
  *(a1 + 124) = 0;
  *(a1 + 128) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16 * a2);
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = strlen(*(a3 + 8 * v8));
      v11 = v10;
      v12 = malloc_type_malloc(v10, 0xCA0EF1E7uLL);
      if (!v12)
      {
        abort();
      }

      v13 = v12;
      memcpy(v12, *(a3 + 8 * v8), v10);
      if (v10)
      {
        v14 = v10 >> 5;
        LODWORD(v15) = v10;
        v16 = ~(v10 >> 5);
        do
        {
          v15 = (32 * v15 + (v15 >> 2) + v13[v10 - 1]) ^ v15;
          v10 += v16;
        }

        while (v10 > v14);
        v17 = v15 << 32;
      }

      else
      {
        v17 = 0;
      }

      v18 = (*(a1 + 128) + 16 * *(a1 + 124));
      *v18 = v13;
      v18[1] = v17 | v11;
      ++*(a1 + 124);
      ++v8;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t ShGetMaxTransformFeedbackVaryingLength(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = glpLinkedProgramGetTransformFeedbackHash(result);
    if (result)
    {
      v2 = result;
      v3 = *(result + 32);
      if (v3)
      {
        result = 0;
        v4 = *(v2 + 40);
        do
        {
          if (*v4)
          {
            v5 = *(*v4 + 8);
            if (result <= v5 + 1)
            {
              result = (v5 + 1);
            }

            else
            {
              result = result;
            }
          }

          v4 += 16;
          --v3;
        }

        while (v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ShGetTransformFeedbackVarying(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  result = *(a1 + 48);
  if (result)
  {
    TransformFeedbackHash = glpLinkedProgramGetTransformFeedbackHash(result);
    v15 = glpIntHashGet(TransformFeedbackHash, a2);
    getString(*v15, *(v15 + 8), a3, a4, a7);
    if (a5)
    {
      *a5 = *(v15 + 16);
    }

    if (a6)
    {
      *a6 = glpPrimitiveTypeGetGLType(*(v15 + 20));
    }

    return 1;
  }

  return result;
}

uint64_t ShGetNumActiveVaryingsComponents(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetActiveOutComponents(result, a2);
  }

  return result;
}

_DWORD *ShFragDataBindingRequest(_DWORD *result, int a2, int a3, char *__s)
{
  v7 = result;
  if (__PAIR64__(__s[1], *__s) != 0x6C00000067 || __s[2] != 95)
  {
    v8 = strlen(__s);
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = v8;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + __s[v9 - 1]) ^ v10;
        v9 += ~(v8 >> 5);
      }

      while (v9 > v8 >> 5);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    result = glpStringHashGet(*(v7 + 14), __s, v11 | v8);
    if (result)
    {
      *result = a2;
      result[1] = a3;
    }

    else
    {
      v12 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (!v12 || (v13 = v12, *v12 = a2, v12[1] = a3, *(v12 + 1) = 0, v14 = strlen(__s), (v15 = malloc_type_malloc(v14, 0xCA0EF1E7uLL)) == 0))
      {
        abort();
      }

      v16 = v15;
      memcpy(v15, __s, v14);
      v18 = *(v7 + 14);
      if (v14)
      {
        v19 = v14;
        LODWORD(v20) = v14;
        do
        {
          v20 = (32 * v20 + (v20 >> 2) + v16[v19 - 1]) ^ v20;
          v19 += ~(v14 >> 5);
        }

        while (v19 > v14 >> 5);
        v21 = v20 << 32;
      }

      else
      {
        v21 = 0;
      }

      return glpStringHashPut(v18, v16, v21 | v14, v17, v13);
    }
  }

  return result;
}

uint64_t ShGetFragDataLocation(uint64_t a1, const char *a2, _DWORD *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    OutputHash = glpLinkedProgramGetOutputHash(v3);
    v8 = strlen(a2);
    if (v8)
    {
      v9 = v8;
      v10 = v8;
      do
      {
        v10 ^= 32 * v10 + (v10 >> 2) + a2[v9 - 1];
        v9 += ~(v8 >> 5);
      }

      while (v9 > v8 >> 5);
    }

    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    if (glpTypeParseDeref(OutputHash, topLevelLookUpGLPBindingTypeFromStringHash, a2, v8, &v18, &v17, &v16) && (v11 = glpStringHashGet(OutputHash, v18, v19)) != 0)
    {
      v12 = v11;
      Kind = glpTypeGetKind(v17);
      ElementType = v17;
      if (Kind == 2)
      {
        ElementType = glpArrayTypeGetElementType(v17);
        v17 = ElementType;
      }

      if (glpTypeGetKind(ElementType))
      {
        v4 = 0xFFFFFFFFLL;
        if (!a3)
        {
          return v4;
        }

        goto LABEL_14;
      }

      v4 = (v16 + *v12);
      if (a3)
      {
LABEL_14:
        *a3 = v12[1];
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t topLevelLookUpGLPBindingTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(a1, a2, a3);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t ShGetNumActiveUniformBlocks(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v12 = 0u;
    v13 = 0u;
    v9 = 0;
    v11 = 0u;
    v6 = 0u;
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    DWORD2(v4) = -1;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    v14 = 256;
    v10 = &v15;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v3);
    return v15;
  }

  return result;
}

uint64_t typeFromGLPUniformBlockBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = *(result + 12);
  *a3 = *result;
  *a4 = *(result + 24);
  *a5 = *(result + 32);
  *a6 = 0;
  return result;
}

uint64_t ShGetMaxActiveUniformBlockLength(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v6 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    DWORD2(v4) = -1;
    v9 = 0xFFFFFFFFLL;
    v14 = 256;
    v7 = &v15;
    v8 = 0;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v3);
    return v15;
  }

  return result;
}

uint64_t ShGetUniformBlockIndex(uint64_t a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  v19 = -1;
  v3 = *(a1 + 48);
  if (v3)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(v3);
    v12 = 0u;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v10 = 0u;
    v11 = 0u;
    DWORD2(v10) = -1;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    v16 = 0u;
    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    v15 = &v19;
    v9 = a2;
    BYTE1(v18[3]) = 1;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v7);
    return v19;
  }

  return v2;
}

uint64_t ShGetActiveUniformBlockiv(uint64_t a1, int a2, int a3, int *a4)
{
  result = *(a1 + 48);
  if (result)
  {
    v34 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v33 = 0;
    v25 = 0u;
    *&v26 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    memset(v24, 0, sizeof(v24));
    v27 = 0u;
    DWORD2(v25) = -1;
    *&v28 = 0;
    DWORD2(v28) = -1;
    *(&v26 + 1) = &v34;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v24);
    v22 = 0;
    v23 = 0;
    v21 = 0;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    memset(v24, 0, 20);
    memset(&v24[1] + 8, 0, 40);
    DWORD2(v25) = -1;
    v26 = 0u;
    *(&v27 + 1) = 0;
    LOWORD(v33) = 256;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    DWORD2(v28) = a2;
    *&v28 = &v23 + 4;
    *&v25 = &v23;
    *&v27 = &v22 + 4;
    *&v30 = &v22;
    *(&v30 + 1) = &v21;
    result = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v24);
    if (a3 <= 35393)
    {
      if (a3 > 35391)
      {
        if (a3 == 35392)
        {
          v11 = HIDWORD(v23);
        }

        else
        {
          v11 = v23;
        }
      }

      else if (a3 == 34032)
      {
        v11 = (HIDWORD(v22) >> 1) & 1;
      }

      else
      {
        if (a3 != 34033)
        {
          return result;
        }

        v11 = (HIDWORD(v22) >> 2) & 1;
      }

      goto LABEL_30;
    }

    if (a3 > 35395)
    {
      switch(a3)
      {
        case 35396:
          v11 = BYTE4(v22) & 1;
          break;
        case 35397:
          v11 = (HIDWORD(v22) >> 3) & 1;
          break;
        case 35398:
          v11 = (HIDWORD(v22) >> 4) & 1;
          break;
        default:
          return result;
      }

      goto LABEL_30;
    }

    if (a3 == 35394)
    {
      v11 = v21;
LABEL_30:
      *a4 = v11;
      return result;
    }

    if (v21 >= 1)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v21 - 1);
      v14 = (v21 + 3) & 0xFFFFFFFC;
      v15 = v34 + v22;
      v16 = xmmword_23A29C350;
      v17 = xmmword_23A29C340;
      v18 = a4 + 2;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s16(v20, *v13.i8).u8[0])
        {
          *(v18 - 2) = v15 + v12;
        }

        if (vuzp1_s16(v20, *&v13).i8[2])
        {
          *(v18 - 1) = v15 + v12 + 1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))).i32[1])
        {
          *v18 = v15 + v12 + 2;
          v18[1] = v15 + v12 + 3;
        }

        v12 += 4;
        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v18 += 4;
      }

      while (v14 != v12);
    }
  }

  return result;
}

uint64_t typeFromGLPUniformBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = *(result + 12);
  *a3 = *result;
  *a4 = *(result + 24);
  *a5 = *(result + 32);
  *a6 = *(result + 80);
  return result;
}

uint64_t ShGetActiveUniformBlockName(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = 0u;
    v14 = 0u;
    v11 = 0u;
    v16 = 0u;
    v17 = 0u;
    DWORD2(v16) = -1;
    v19 = 0;
    v25 = 256;
    v20 = a2;
    v12 = a3;
    v13 = a4;
    v15 = a5;
    return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, &v11);
  }

  return result;
}

uint64_t ShGetUniformIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    UniformHash = glpLinkedProgramGetUniformHash(v3);
    v24 = 0;
    v14 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    DWORD2(v14) = -1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0xFFFFFFFFLL;
    v23 = 0;
    v15 = &v24;
    v13 = a2;
    if (getBindingInfo(UniformHash, typeFromGLPUniformBinding, v11))
    {
      return v24;
    }

    else
    {
      LOBYTE(v23) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      BindingInfo = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v11);
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      if (BindingInfo)
      {
        return v24 + NumActiveNonbindableUniforms;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

uint64_t ShGetNumActiveNonbindableUniforms(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v4 = 0u;
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v7 = 0u;
    DWORD2(v4) = -1;
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v14 = 0;
    v6 = &v15;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v3);
    return v15;
  }

  return result;
}

uint64_t ShGetActiveUniformIndex(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v34 = 0;
    v32 = -1;
    v33 = 0;
    v30 = -1;
    v31 = -1;
    v29 = -1;
    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = 0u;
    memset(v13, 0, sizeof(v13));
    v19 = 0u;
    v22 = 0xFFFFFFFFLL;
    v27 = 0;
    v18 = a2;
    v14 = &v34;
    v15 = &v34 + 4;
    v21 = 0;
    v20 = &v28;
    v17 = &v33;
    result = getBindingInfo(UniformHash, typeFromGLPUniformBinding, v13);
    if (!result)
    {
      *&v23 = &v32;
      *&v25 = &v31;
      *(&v25 + 1) = &v30;
      *&v26 = &v29;
      *(&v26 + 1) = &v28 + 4;
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      LODWORD(v18) = v18 - NumActiveNonbindableUniforms;
      LOBYTE(v27) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      result = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v13);
    }

    if (a3 <= 35388)
    {
      if (a3 > 35385)
      {
        if (a3 == 35386)
        {
          v12 = v32;
        }

        else if (a3 == 35387)
        {
          v12 = v31;
        }

        else
        {
          v12 = v30;
        }
      }

      else
      {
        switch(a3)
        {
          case 35383:
            v12 = HIDWORD(v34);
            break;
          case 35384:
            v12 = v34;
            break;
          case 35385:
            v12 = v33;
            break;
          default:
            return result;
        }
      }
    }

    else if (a3 <= 35424)
    {
      switch(a3)
      {
        case 35389:
          v12 = v29;
          break;
        case 35390:
          v12 = HIDWORD(v28);
          break;
        case 35424:
          v12 = v28 & 1;
          break;
        default:
          return result;
      }
    }

    else if (a3 > 35426)
    {
      if (a3 == 35427)
      {
        v12 = (v28 >> 3) & 1;
      }

      else
      {
        if (a3 != 35428)
        {
          return result;
        }

        v12 = (v28 >> 4) & 1;
      }
    }

    else if (a3 == 35425)
    {
      v12 = (v28 >> 1) & 1;
    }

    else
    {
      v12 = (v28 >> 2) & 1;
    }

    *a4 = v12;
  }

  return result;
}

uint64_t ShGetActiveUniformName(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = 0u;
    v17 = 0u;
    v14 = 0u;
    v19 = 0u;
    v20 = 0u;
    v22 = 0;
    v23 = 0xFFFFFFFFLL;
    v28 = 0;
    DWORD2(v19) = a2;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    result = getBindingInfo(UniformHash, typeFromGLPUniformBinding, &v14);
    if (!result)
    {
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      DWORD2(v19) -= NumActiveNonbindableUniforms;
      LOBYTE(v28) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, &v14);
    }
  }

  return result;
}

uint64_t ShGetNumActiveUniforms(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v20 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v9 = 0u;
    v10 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    memset(v8, 0, sizeof(v8));
    v12 = 0u;
    DWORD2(v9) = -1;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    v19 = 0;
    v11 = &v20;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v8);
    v4 = v20;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, v8);
    v6 = v20 + v4;
    LOBYTE(v19) = 1;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v8);
    return (v6 + v20);
  }

  return result;
}

uint64_t ShGetMaxActiveUniformLength(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v22 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8[0] = 0;
    v9 = 0u;
    v12 = 0u;
    v13 = 0u;
    DWORD2(v12) = -1;
    v15 = 0;
    v16 = 0xFFFFFFFFLL;
    v21 = 0;
    v8[1] = &v22;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v8);
    v4 = v22;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, v8);
    if (v4 <= v22)
    {
      v4 = v22;
    }

    LOBYTE(v21) = 1;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v8);
    v7 = v22;
    if (v4 > v22)
    {
      v7 = v4;
    }

    return v7 & ~(v7 >> 31);
  }

  return result;
}

uint64_t ShGetActiveUniform(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = 0u;
    v22 = 0u;
    v28 = 0u;
    v29 = 0u;
    v31 = 0;
    v32 = 0xFFFFFFFFLL;
    v37 = 0;
    DWORD2(v28) = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    if (getBindingInfo(UniformHash, typeFromGLPUniformBinding, &v22))
    {
      return 1;
    }

    NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
    DWORD2(v28) -= NumActiveNonbindableUniforms;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    if (getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, &v22))
    {
      return 1;
    }

    else
    {
      v50 = 0;
      v18 = *(a1 + 48);
      if (v18)
      {
        v19 = glpLinkedProgramGetBindableUniformHash(v18);
        v39 = 0u;
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        memset(v38, 0, sizeof(v38));
        v42 = 0u;
        DWORD2(v39) = -1;
        v43 = 0;
        v44 = 0xFFFFFFFFLL;
        v49 = 0;
        v41 = &v50;
        getBindingInfo(v19, typeFromGLPUniformBinding, v38);
        v20 = v50;
        v18 = *(a1 + 48);
      }

      else
      {
        v20 = 0;
      }

      DWORD2(v28) -= v20;
      LOBYTE(v37) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(v18);
      return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, &v22);
    }
  }

  return result;
}

uint64_t ShGetActiveSamplerLocations(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 48);
  if (result)
  {
    SamplerLocations = glpLinkedProgramGetSamplerLocations(result);
    v5 = *(SamplerLocations + 4);
    result = *(SamplerLocations + 8);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ShGetNumActiveSubroutines(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return *(glpLinkedProgramGetSubroutineHash(result, a2) + 36);
  }

  return result;
}

uint64_t ShGetNumActiveSubroutineUniforms(uint64_t a1, unsigned int a2)
{
  v16 = 0;
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v5 = 0u;
    v6 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v4, 0, sizeof(v4));
    v8 = 0u;
    DWORD2(v5) = -1;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
    v15 = 0;
    v7 = &v16;
    getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, v4);
    return v16;
  }

  return result;
}

uint64_t ShGetNumActiveSubroutineUniformLocations(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetSubroutineUniformLocationCount(result, a2);
  }

  return result;
}

uint64_t ShGetMaxActiveSubroutineLength(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineHash = glpLinkedProgramGetSubroutineHash(result, a2);
    v4 = *(SubroutineHash + 32);
    if (v4)
    {
      v5 = SubroutineHash;
      result = 0;
      v6 = (*(v5 + 40) + 16);
      do
      {
        if (*(v6 - 2))
        {
          if (result <= *v6 + 1)
          {
            result = (*v6 + 1);
          }

          else
          {
            result = result;
          }
        }

        v6 += 8;
        --v4;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShGetMaxActiveSubroutineUniformLength(uint64_t a1, unsigned int a2)
{
  v18 = 0;
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v10 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4[0] = 0;
    v5 = 0u;
    v8 = 0u;
    v9 = 0u;
    DWORD2(v8) = -1;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v17 = 0;
    v4[1] = &v18;
    getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, v4);
    return v18;
  }

  return result;
}

uint64_t ShGetSubroutineUniformLocation(uint64_t a1, unsigned int a2, const char *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(v3, a2);
    v7 = strlen(a3);
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      do
      {
        v9 ^= 32 * v9 + (v9 >> 2) + a3[v8 - 1];
        v8 += ~(v7 >> 5);
      }

      while (v8 > v7 >> 5);
    }

    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    if (!glpTypeParseDeref(SubroutineUniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a3, v7, &v17, &v16, &v15))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = glpStringHashGet(SubroutineUniformHash, v17, v18);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    if (*(v10 + 4) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    Kind = glpTypeGetKind(v16);
    ElementType = v16;
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(v16);
      v16 = ElementType;
    }

    if (glpTypeGetKind(ElementType) == 5)
    {
      return (v15 + *(v11 + 4));
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t ShGetSubroutineIndex(uint64_t a1, unsigned int a2, const char *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    SubroutineHash = glpLinkedProgramGetSubroutineHash(v3, a2);
    v7 = strlen(a3);
    if (v7)
    {
      v8 = v7;
      LODWORD(v9) = v7;
      do
      {
        v9 = (32 * v9 + (v9 >> 2) + a3[v8 - 1]) ^ v9;
        v8 += ~(v7 >> 5);
      }

      while (v8 > v7 >> 5);
      v10 = v9 << 32;
    }

    else
    {
      v10 = 0;
    }

    v11 = glpStringHashGet(SubroutineHash, a3, v10 | v7);
    if (v11)
    {
      return *(v11 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t ShGetActiveSubroutineUniformiv(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v29 = 0;
    v30 = 0;
    v18 = 0u;
    v19 = 0;
    v15 = 0u;
    v16 = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *&v25[1] = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v14 = &v30;
    v21 = a3;
    v10 = (&v29 + 4);
    v17 = &v29 + 4;
    v20 = &v29;
    result = getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, &v14);
    if (a4 <= 36425)
    {
      if (a4 != 35384)
      {
        if (a4 != 35385)
        {
          return result;
        }

        v10 = &v29;
      }

      goto LABEL_13;
    }

    if (a4 == 36426)
    {
      v10 = (v30 + 68);
LABEL_13:
      *a5 = *v10;
      return result;
    }

    if (a4 == 36427)
    {
      v11 = v30;
      if (*(v30 + 68))
      {
        v12 = 0;
        v13 = *(v30 + 72);
        do
        {
          a5[v12] = *(v13 + 4 * v12);
          ++v12;
        }

        while (v12 < *(v11 + 68));
      }
    }
  }

  return result;
}

uint64_t ShGetActiveSubroutineUniformName(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = 0u;
    v15 = 0u;
    v12 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    v26 = 0;
    DWORD2(v17) = a3;
    v13 = a4;
    v14 = a5;
    v16 = a6;
    return getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, &v12);
  }

  return result;
}

void *ShGetActiveSubroutineName(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, void *a6)
{
  result = *(a1 + 48);
  if (result)
  {
    result = glpLinkedProgramGetSubroutineHash(result, a2);
    v11 = *(result + 8);
    if (v11)
    {
      for (i = (result[5] + 16); ; i += 8)
      {
        v13 = *(i - 2);
        if (v13)
        {
          if (*(v13 + 4) == a3)
          {
            break;
          }
        }

        if (!--v11)
        {
          return result;
        }
      }

      v14 = *i;
      v15 = *(i - 1);

      return getString(v15, v14, a4, a5, a6);
    }
  }

  return result;
}

uint64_t ShGetCachedUniformIndexTable(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetCachedUniformIndexTableSize(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetInteger(uint64_t *a1, int a2, _DWORD *a3)
{
  v5 = 10010;
  if (a2 <= 1708)
  {
    if (a2 == 1707)
    {
      v6 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
      if (v6)
      {
        v58 = a3;
        *v6 = 0;
        v26 = a1[13];
        v27 = *(v26 + 32);
        if (v27)
        {
          v28 = 0;
          v29 = 0;
          v11 = 0;
          v30 = 4;
          while (1)
          {
            v31 = *(v26 + 40);
            v32 = *(v31 + v28);
            if (v32)
            {
              v33 = *(v31 + v28 + 8);
              v34 = *(v31 + v28 + 16);
              v35 = v30;
              v36 = v30 + 4;
              v37 = malloc_type_realloc(v6, v36, 0x352A3853uLL);
              if (!v37)
              {
                goto LABEL_42;
              }

              *&v37[v35] = v34;
              v38 = v34 + v36;
              v39 = malloc_type_realloc(v37, v38, 0x352A3853uLL);
              if (!v39)
              {
                goto LABEL_42;
              }

              v40 = v39;
              memcpy(&v39[v36], v33, v34);
              v6 = malloc_type_realloc(v40, v38 + 4, 0x352A3853uLL);
              if (!v6)
              {
                goto LABEL_42;
              }

              *(v6 + v38) = *v32;
              ++v11;
              v27 = *(v26 + 32);
              v30 = v38 + 4;
            }

            ++v29;
            v28 += 32;
            if (v29 >= v27)
            {
              goto LABEL_38;
            }
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (a2 != 1708)
      {
        return v5;
      }

      v6 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
      if (v6)
      {
        v58 = a3;
        *v6 = 0;
        v7 = a1[14];
        v8 = *(v7 + 32);
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 4;
          while (1)
          {
            v13 = *(v7 + 40);
            v14 = *(v13 + v9);
            if (v14)
            {
              v15 = *(v13 + v9 + 8);
              v16 = *(v13 + v9 + 16);
              v17 = v12;
              v18 = v12 + 4;
              v19 = malloc_type_realloc(v6, v18, 0x352A3853uLL);
              if (!v19)
              {
                goto LABEL_42;
              }

              *&v19[v17] = v16;
              v20 = v16 + v18;
              v21 = malloc_type_realloc(v19, v20, 0x352A3853uLL);
              if (!v21)
              {
                goto LABEL_42;
              }

              v22 = v21;
              memcpy(&v21[v18], v15, v16);
              v23 = malloc_type_realloc(v22, v20 + 4, 0x352A3853uLL);
              if (!v23)
              {
                goto LABEL_42;
              }

              *&v23[v20] = *v14;
              v6 = malloc_type_realloc(v23, v20 + 8, 0x352A3853uLL);
              if (!v6)
              {
                goto LABEL_42;
              }

              *(v6 + v20 + 4) = v14[1];
              ++v11;
              v8 = *(v7 + 32);
              v12 = v20 + 8;
            }

            ++v10;
            v9 += 32;
            if (v10 >= v8)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_37:
        v11 = 0;
LABEL_38:
        v5 = 0;
        *v6 = v11;
        *v58 = v6;
        return v5;
      }
    }

LABEL_42:
    abort();
  }

  if (a2 != 1709)
  {
    if (a2 == 1710)
    {
      CompiledShaderVersion = glpGetCompiledShaderVersion(a1[6]);
      v25 = glpGLSLVersionToInt(CompiledShaderVersion);
      v5 = 0;
      *a3 = v25;
    }

    return v5;
  }

  v41 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
  if (!v41)
  {
    goto LABEL_42;
  }

  v42 = v41;
  *v41 = 0;
  OutputHash = glpLinkedProgramGetOutputHash(a1[6]);
  v44 = *(OutputHash + 32);
  if (v44)
  {
    v45 = OutputHash;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 4;
    while (1)
    {
      v50 = *(v45 + 40);
      if (*(v50 + v46))
      {
        v51 = *(v50 + v46 + 8);
        v52 = *(v50 + v46 + 16);
        v53 = v49;
        v54 = v49 + 4;
        v55 = malloc_type_realloc(v42, v54, 0x352A3853uLL);
        if (!v55)
        {
          goto LABEL_42;
        }

        *&v55[v53] = v52;
        v56 = malloc_type_realloc(v55, v52 + v54, 0x352A3853uLL);
        if (!v56)
        {
          goto LABEL_42;
        }

        v42 = v56;
        memcpy(v56 + v54, v51, v52);
        ++v48;
        v44 = *(v45 + 32);
        v49 = v52 + v54;
      }

      ++v47;
      v46 += 32;
      if (v47 >= v44)
      {
        goto LABEL_40;
      }
    }
  }

  v48 = 0;
LABEL_40:
  v5 = 0;
  *v42 = v48;
  *a3 = v42;
  return v5;
}

dispatch_queue_t ShInitializeLibrary()
{
  result = dispatch_queue_create("OpenGL Caching", 0);
  gSerialQueue = result;
  return result;
}

void ShTerminateLibrary()
{
  if (compilerCache)
  {
    glpCacheDelete(compilerCache);
    compilerCache = 0;
  }

  if (linkerCache)
  {
    glpCacheDelete(linkerCache);
    linkerCache = 0;
  }

  dispatch_release(gSerialQueue);
  gSerialQueue = 0;
}

uint64_t getBindingInfoForType(int a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int *a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, int a12, uint64_t a13)
{
  v17 = a13;
  v122 = a12;
  v126 = *MEMORY[0x277D85DE8];
  v18 = *(a13 + 48) && *(a13 + 16) || *(a13 + 56) != 0;
  v119 = v18;
  Kind = glpTypeGetKind(a7);
  v20 = 0;
  LODWORD(v21) = 1;
  v118 = a7;
  if (Kind > 1)
  {
    if ((Kind - 2) >= 2)
    {
      v30 = a7;
      if (Kind != 5)
      {
        return v20;
      }

      goto LABEL_74;
    }

    if (glpTypeGetKind(a7) == 3)
    {
      ElementCount = glpBankTypeGetElementCount(a7);
    }

    else
    {
      ElementCount = glpArrayTypeGetElementCount(a7);
    }

    v21 = ElementCount;
    if (glpTypeGetKind(a7) == 3)
    {
      ElementType = glpBankTypeGetElementType(a7);
    }

    else
    {
      ElementType = glpArrayTypeGetElementType(a7);
    }

    v30 = ElementType;
    v114 = (a4 != 0) << 10;
    v117 = glpABIGetArrayStrideForElementType(a3, ElementType, v114);
    if (a1 && *(a13 + 192) && glpTypeGetKind(a7) == 3)
    {
      v32 = glpABIGetMinimumBufferBytesForType(a3, v30, v114);
      if (*a11 == *(a13 + 120))
      {
LABEL_28:
        v33 = *(v17 + 96);
        if (v33)
        {
          *v33 = a6;
        }

        v34 = *(v17 + 112);
        if (v34)
        {
          *v34 = v32;
        }

        v35 = 0;
        LODWORD(v36) = *a9;
        goto LABEL_131;
      }

      if (*(a13 + 128))
      {
        v36 = *(a13 + 56);
        if (!v36)
        {
LABEL_130:
          v35 = 1;
LABEL_131:
          v85 = *(a13 + 104);
          if (v85)
          {
            v86 = *v85;
            v87 = *(a5 + 8);
            if (*v85 <= v87 + 1)
            {
              v86 = v87 + 1;
            }

            *v85 = v86;
          }

          BindingInfoForType = getBindingInfoForType(0, 0, a3, a4, a5, a6, v30, a8, a9, a10, a11, 0, a13);
          glpABIGetTypeSize(0, v30, 0);
          glpTypeSizeGetSize();
          if ((v35 & 1) == 0)
          {
            v89 = *(a13 + 144);
            if (v89)
            {
              *v89 = v36;
            }

            v76 = *(a13 + 152);
            if (v76)
            {
              v77 = *a9 - v36;
              goto LABEL_116;
            }

            return 1;
          }

          if (BindingInfoForType)
          {
            return 1;
          }

          v20 = 0;
          ++*a11;
          ++*a10;
          *a11 += v21 - 1;
          *a10 += v21 - 1;
          return v20;
        }

        v83 = strlen(v36);
        if (v83 == *(a5 + 8))
        {
          v84 = memcmp(v36, *a5, v83);
          v17 = a13;
          if (!v84)
          {
            goto LABEL_28;
          }
        }
      }

      LODWORD(v36) = 0;
      goto LABEL_130;
    }

    if (glpTypeGetKind(v30) != 5 && glpTypeGetKind(v30))
    {
      if (v21 >= 1)
      {
        v37 = 0;
        v38 = 0;
        v109 = *a9;
        v110 = 0;
        v112 = *(a5 + 8);
        while (1)
        {
          *(a5 + 8) = v112;
          *__src = 0u;
          v125 = 0u;
          v39 = snprintf_l(__src, 0x20uLL, 0, "[%d]", v38);
          if (v119)
          {
            v40 = malloc_type_realloc(*a5, *(a5 + 8) + v39, 0x352A3853uLL);
            if (!v40)
            {
              goto LABEL_180;
            }

            *a5 = v40;
            memcpy(&v40[*(a5 + 8)], __src, v39);
          }

          v41 = v21;
          v42 = *(a5 + 8) + v39;
          *(a5 + 8) = v42;
          if (!a1)
          {
            v46 = v122;
            goto LABEL_62;
          }

          v43 = glpABIGetMinimumBufferBytesForType(a3, v30, v114);
          if (*a11 != *(v17 + 120))
          {
            if (!*(v17 + 128))
            {
              goto LABEL_54;
            }

            v47 = *(v17 + 56);
            if (!v47 || (v48 = strlen(v47), v48 != *(a5 + 8)))
            {
              v17 = a13;
              goto LABEL_54;
            }

            v49 = memcmp(v47, *a5, v48);
            v17 = a13;
            if (v49)
            {
              goto LABEL_54;
            }
          }

          v44 = *(v17 + 96);
          if (v44)
          {
            *v44 = a6;
          }

          v45 = *(v17 + 112);
          if (v45)
          {
            *v45 = v43;
          }

          v110 = *a9;
          v37 = 1;
LABEL_54:
          v50 = *(v17 + 104);
          if (v50)
          {
            v51 = *v50;
            v52 = *(a5 + 8);
            if (*v50 <= v52 + 1)
            {
              v51 = v52 + 1;
            }

            *v50 = v51;
          }

          v46 = *(v17 + 193);
          if (*(v17 + 193))
          {
            v53 = glpTypeGetKind(v118);
            v46 = 0;
            if (v38)
            {
              if (v53 == 3)
              {
                v110 = v109;
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          v20 = getBindingInfoForType(0, 0, a3, a4, a5, a6, v30, a8, a9, a10, a11, v46, v17);
          glpABIGetTypeSize(0, v30, 0);
          glpTypeSizeGetSize();
          a8 = (v54 + a8);
          if (!a1)
          {
            goto LABEL_66;
          }

          if (v20)
          {
            if (!v37)
            {
              return 1;
            }

LABEL_176:
            v108 = *(v17 + 144);
            if (v108)
            {
              *v108 = v110;
            }

            v76 = *(v17 + 152);
            if (v76)
            {
              v77 = *a9 - v110;
LABEL_116:
              *v76 = v77;
            }

            return 1;
          }

LABEL_64:
          *(a5 + 8) = v42;
          if (v37)
          {
            goto LABEL_176;
          }

          v20 = 0;
          ++*a11;
          ++*a10;
LABEL_66:
          if (++v38 < v41)
          {
            v21 = v41;
            v122 += v117;
            if (!v20)
            {
              continue;
            }
          }

          return v20;
        }
      }

      return 0;
    }

    if (!v119)
    {
      goto LABEL_72;
    }

    v55 = malloc_type_realloc(*a5, (*(a5 + 8) + 3), 0x352A3853uLL);
    if (v55)
    {
      *a5 = v55;
      v56 = &v55[*(a5 + 8)];
      v56[2] = 93;
      *v56 = 12379;
LABEL_72:
      *(a5 + 8) += 3;
      LODWORD(v20) = v117;
      if (!*(a13 + 80))
      {
        goto LABEL_83;
      }

LABEL_74:
      v57 = *(a13 + 56);
      if (!v57)
      {
        goto LABEL_84;
      }

      v58 = strlen(*(a13 + 56));
      LODWORD(v57) = v58 == *(a5 + 8) && memcmp(v57, *a5, v58) == 0;
      if (glpTypeGetKind(v118) != 2 || (v57 & 1) != 0)
      {
        goto LABEL_84;
      }

      v59 = strlen(*(a13 + 56));
      if (v59 == *(a5 + 8) - 3)
      {
        LODWORD(v57) = memcmp(*(a13 + 56), *a5, v59) == 0;
      }

      else
      {
LABEL_83:
        LODWORD(v57) = 0;
      }

LABEL_84:
      if (*a9 == *(a13 + 72) || v57 != 0)
      {
        if (glpTypeGetKind(v30))
        {
          v61 = 0;
        }

        else
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v30);
          v61 = glpPrimitiveTypeGetCategory(PrimitiveType) == 3;
        }

        v67 = *(a13 + 32);
        if (v67)
        {
          *v67 = v21;
        }

        if (*(a13 + 40))
        {
          v68 = glpPrimitiveTypeGetPrimitiveType(v30);
          **(a13 + 40) = glpPrimitiveTypeGetGLType(v68);
        }

        v69 = *(a13 + 160);
        if (v69)
        {
          *v69 = a12;
        }

        v70 = *(a13 + 168);
        if (v70)
        {
          *v70 = v20;
        }

        v71 = *(a13 + 176);
        if (v71)
        {
          if (v61)
          {
            v72 = glpPrimitiveTypeGetPrimitiveType(v30);
            v73 = glpABIGetMatrixStride(a3, v72, (a4 != 0) << 10);
            v71 = *(a13 + 176);
          }

          else
          {
            v73 = 0;
          }

          *v71 = v73;
        }

        v74 = *(a13 + 184);
        if (v74)
        {
          v75 = a4;
          if (!v61)
          {
            v75 = 0;
          }

          *v74 = v75;
        }

        v76 = *(a13 + 96);
        if (v76)
        {
          v77 = a6;
          goto LABEL_116;
        }

        return 1;
      }

      glpABIGetTypeSize(0, v30, 0);
      glpTypeSizeGetSize();
      v62 = *(a13 + 8);
      if (v62)
      {
        v63 = *v62;
        v64 = *(a5 + 8);
        if (*v62 <= v64 + 1)
        {
          v63 = v64 + 1;
        }

        *v62 = v63;
      }

      v20 = 0;
      v65 = a9;
      goto LABEL_95;
    }

LABEL_180:
    abort();
  }

  if (!Kind)
  {
    v30 = a7;
    goto LABEL_74;
  }

  if (Kind != 1)
  {
    return v20;
  }

  v23 = *(a5 + 8);
  if (!a1)
  {
    v29 = 0;
    v28 = 1;
    v79 = *(a5 + 8);
    v24 = v118;
    goto LABEL_147;
  }

  v24 = a7;
  v25 = glpABIGetMinimumBufferBytesForType(a3, a7, (a4 != 0) << 10);
  if (*a11 == *(a13 + 120))
  {
    goto LABEL_13;
  }

  if (!*(a13 + 128))
  {
    goto LABEL_124;
  }

  v80 = *(a13 + 56);
  if (v80)
  {
    v81 = strlen(v80);
    if (v81 == *(a5 + 8))
    {
      v82 = memcmp(v80, *a5, v81);
      v17 = a13;
      if (!v82)
      {
LABEL_13:
        v26 = *(v17 + 96);
        if (v26)
        {
          *v26 = a6;
        }

        v27 = *(v17 + 112);
        if (v27)
        {
          *v27 = v25;
        }

        v28 = 0;
        v29 = *a9;
        goto LABEL_143;
      }

LABEL_124:
      v29 = 0;
      v28 = 1;
      goto LABEL_143;
    }
  }

  v29 = 0;
  v28 = 1;
  v17 = a13;
LABEL_143:
  v90 = *(v17 + 104);
  v79 = *(a5 + 8);
  if (v90)
  {
    v91 = *v90;
    if (*v90 <= v79 + 1)
    {
      v91 = v79 + 1;
    }

    *v90 = v91;
    v79 = *(a5 + 8);
  }

LABEL_147:
  if (!a2)
  {
    if (v119)
    {
      v92 = malloc_type_realloc(*a5, (v79 + 1), 0x352A3853uLL);
      if (!v92)
      {
        goto LABEL_180;
      }

      *a5 = v92;
      v92[*(a5 + 8)] = 46;
      v79 = *(a5 + 8);
    }

    *(a5 + 8) = ++v79;
  }

  v93 = glpAggregateTypeGetElementCount(v24);
  if (v93 < 1)
  {
    if (!a1)
    {
      return 0;
    }

    goto LABEL_168;
  }

  v94 = v93;
  v113 = v23;
  v115 = v28;
  v111 = v29;
  v95 = 1;
  do
  {
    ElementFlags = glpAggregateTypeGetElementFlags(v24, v95 - 1);
    v97 = glpABIGetStructTypeRangeOfField(a3, v24, (a4 != 0) << 10, v95 - 1);
    v98 = glpAggregateTypeGetElementType(v24, v95 - 1);
    FieldName = glpStructTypeGetFieldName(v24, v95 - 1);
    v101 = v100;
    *(a5 + 8) = v79;
    if (v119)
    {
      v102 = FieldName;
      v103 = malloc_type_realloc(*a5, v79 + v100, 0x352A3853uLL);
      if (!v103)
      {
        goto LABEL_180;
      }

      *a5 = v103;
      memcpy(&v103[*(a5 + 8)], v102, v101);
      v104 = *(a5 + 8);
    }

    else
    {
      v104 = v79;
    }

    *(a5 + 8) = v104 + v101;
    if ((ElementFlags & 0x400) != 0)
    {
      v105 = 1;
    }

    else
    {
      v105 = a4;
    }

    v17 = a13;
    v20 = getBindingInfoForType(0, 0, a3, v105, a5, a6, v98, a8, a9, a10, a11, v97 + a12, a13);
    glpABIGetTypeSize(0, v98, 0);
    glpTypeSizeGetSize();
    v24 = v118;
    if (v95 >= v94)
    {
      break;
    }

    a8 = (v106 + a8);
    ++v95;
  }

  while (!v20);
  v28 = v115;
  if (a1)
  {
    v29 = v111;
    v23 = v113;
    if (v20)
    {
      if (v115)
      {
        return 1;
      }

LABEL_171:
      v107 = *(v17 + 144);
      if (v107)
      {
        *v107 = v29;
      }

      v76 = *(v17 + 152);
      if (v76)
      {
        v77 = *a9 - v29;
        goto LABEL_116;
      }

      return 1;
    }

LABEL_168:
    *(a5 + 8) = v23;
    if (v28)
    {
      v20 = 0;
      ++*a11;
      v65 = a10;
LABEL_95:
      ++*v65;
      return v20;
    }

    goto LABEL_171;
  }

  return v20;
}

void *glpCopyString(uint64_t a1, const void *a2, unsigned int a3)
{
  v4 = a3;
  v5 = (*(a1 + 8))(*a1, a3, "String Contents (copy)");
  memcpy(v5, a2, v4);
  return v5;
}

char *glpLowerCaseCopyOfString(uint64_t a1, const void *a2, unsigned int a3)
{
  v4 = a3;
  v5 = (*(a1 + 8))(*a1, a3, "String Contents (copy)");
  memcpy(v5, a2, v4);
  if (v4)
  {
    v6 = MEMORY[0x277D85DE0];
    v7 = v5;
    do
    {
      v8 = *v7;
      if ((v8 & 0x80000000) != 0)
      {
        LOBYTE(v9) = ___tolower_l(v8, 0);
      }

      else
      {
        v9 = *(v6 + 4 * v8 + 1084);
      }

      *v7++ = v9;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t glpStringsCompare(const char *a1, unsigned int a2, char *__s2, unsigned int a4)
{
  v5 = a2 - a4;
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  LODWORD(result) = strncmp(a1, __s2, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

void *glpMakeStringBuffer(void *a1)
{
  v2 = (a1[1])(*a1, 24, "String Buffer");
  *v2 = a1;
  v2[1] = 64;
  v2[2] = (a1[1])(*a1, 64, "Vector Storage (char)");
  return v2;
}

uint64_t glpDestroyStringBuffer(uint64_t **a1)
{
  ((*a1)[3])(**a1, a1[2]);
  v2 = (*a1)[3];
  v3 = **a1;

  return v2(v3, a1);
}

uint64_t glpStringBufferGetString(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    do
    {
      v5 ^= 32 * v5 + (v5 >> 2) + *(result + v4 - 1);
      v4 += ~(v3 >> 5);
    }

    while (v4 > v3 >> 5);
  }

  return result;
}

uint64_t glpStringBufferGetCString(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v3 + 1;
  if (v3 + 1 <= v2)
  {
    v8 = a1[2];
    v9 = *(a1 + 3);
  }

  else
  {
    if (v2 <= 1)
    {
      v2 = 1;
    }

    v5 = 2 * v2;
    if (v5 <= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = *a1;
    v8 = (*(*a1 + 8))(**a1, v6, "Vector Storage (char, growth)");
    memcpy(v8, a1[2], *(a1 + 3));
    (*(v7 + 24))(*v7, a1[2]);
    *(a1 + 2) = v6;
    a1[2] = v8;
    v9 = *(a1 + 3);
  }

  memmove(&v8[v3 + 1], &v8[v3], (v9 - v3));
  *(a1[2] + v3) = 0;
  return a1[2];
}

void *glpStringBufferAppend(uint64_t *a1, const void *a2, unsigned int a3)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = v7 + a3;
  if (v7 + a3 <= v6)
  {
    v12 = a1[2];
    v13 = *(a1 + 3);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v9 = 2 * v6;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = *a1;
    v12 = (*(*a1 + 8))(**a1, v10, "Vector Storage (char, growth)");
    memcpy(v12, a1[2], *(a1 + 3));
    (*(v11 + 24))(*v11, a1[2]);
    *(a1 + 2) = v10;
    a1[2] = v12;
    v13 = *(a1 + 3);
  }

  memmove(&v12[v7 + 1], &v12[v7], (v13 - v7));
  result = memcpy((a1[2] + v7), a2, a3);
  *(a1 + 3) += a3;
  return result;
}

void *glpStringBufferAppendCString(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return glpStringBufferAppend(a1, __s, v4);
}

uint64_t glpStringBufferAppendFormatv(uint64_t *a1, char *a2, va_list a3)
{
  v5 = *(a1 + 3);
  v6 = (*(a1 + 2) - v5);
  v7 = vsnprintf_l((a1[2] + v5), v6, 0, a2, a3);
  v8 = (v7 + 1);
  if (v8 <= v6)
  {
    v14 = a1[2];
  }

  else
  {
    v9 = *(a1 + 2);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 2 * v9;
    v11 = v8 + *(a1 + 3);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = *a1;
    v14 = (*(*a1 + 8))(**a1, v12, "Vector Storage (char, growth)");
    memcpy(v14, a1[2], *(a1 + 3));
    (*(v13 + 24))(*v13, a1[2]);
    *(a1 + 2) = v12;
    a1[2] = v14;
  }

  result = vsnprintf_l(v14 + *(a1 + 3), v8, 0, a2, a3);
  *(a1 + 3) += v7;
  return result;
}

uint64_t glpDeepCopyType(void *a1, uint64_t a2)
{
  v2 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 == 3)
    {
      v30 = *(a2 + 8);
      v31 = glpDeepCopyType(a1, *(a2 + 16));
      v32 = *(v2 + 4);
      v2 = (a1[1])(*a1, 24, "Bank Type");
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 4) = v32;
      *(v2 + 8) = v30;
      *(v2 + 16) = v31;
      *v2 = 3;
      return v2;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        v7 = glpCopyString(a1, *(a2 + 16), *(a2 + 24));
        v9 = v8;
        v2 = (a1[1])(*a1, 32, "Subroutine Type");
        *v2 = 0u;
        *(v2 + 16) = 0u;
        *v2 = 5;
        *(v2 + 16) = v7;
        *(v2 + 24) = v9;
        *(v2 + 8) = 0;
        return v2;
      }

      goto LABEL_20;
    }

    v23 = *(a2 + 4);
    MEMORY[0x28223BE20](a1);
    v24 = v34 - ((8 * v23 + 15) & 0xFFFFFFFF0);
    bzero(v24, 8 * v23);
    MEMORY[0x28223BE20](v25);
    bzero(v24, 8 * v23);
    MEMORY[0x28223BE20](v26);
    bzero(v24, 8 * v23);
    if (v23)
    {
      v27 = 0;
      do
      {
        v28 = *(v2 + 8);
        *&v24[v27] = *(*(v2 + 16) + v27);
        *&v24[v27] = glpDeepCopyType(a1, *(v28 + v27));
        *&v24[v27] = glpCopyLayoutObject(a1, *(*(v2 + 24) + v27));
        v27 += 8;
      }

      while (8 * v23 != v27);
    }

    v29 = glpDeepCopyType(a1, *(v2 + 32));
    v2 = (a1[1])(*a1, 40, "Function Type");
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0;
    *v2 = 4;
    initAggregateType(a1, v2, v23, v24, v24, v24);
    *(v2 + 32) = v29;
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = glpDeepCopyType(a1, *(a2 + 16));
        v6 = *(v2 + 4);
        v2 = (a1[1])(*a1, 24, "Array Type");
        *v2 = 0;
        *(v2 + 8) = 0;
        *v2 = 2;
        *(v2 + 16) = v5;
        *(v2 + 4) = v6;
        return v2;
      }

LABEL_20:
      abort();
    }

    v34[1] = v34;
    v10 = *(a2 + 4);
    MEMORY[0x28223BE20](a1);
    v35 = &v34[-2 * v10];
    bzero(v35, v11);
    MEMORY[0x28223BE20](v12);
    v13 = v34 - ((8 * v10 + 15) & 0xFFFFFFFF0);
    bzero(v13, 8 * v10);
    MEMORY[0x28223BE20](v14);
    bzero(v13, 8 * v10);
    MEMORY[0x28223BE20](v15);
    bzero(v13, 8 * v10);
    if (v10)
    {
      v16 = 0;
      v17 = v35 + 8;
      v18 = 8;
      do
      {
        *(v17 - 1) = glpCopyString(a1, *(*(v2 + 48) + v18 - 8), *(*(v2 + 48) + v18));
        *v17 = v19;
        *&v13[v16] = glpDeepCopyType(a1, *(*(v2 + 8) + v16));
        v20 = *(v2 + 24);
        *&v13[v16] = *(*(v2 + 16) + v16);
        *&v13[v16] = glpCopyLayoutObject(a1, *(v20 + v16));
        v16 += 8;
        v17 += 2;
        v18 += 16;
      }

      while (8 * v10 != v16);
    }

    v21 = glpCopyString(a1, *(v2 + 32), *(v2 + 40));
    return glpMakeStructType(a1, v21, v22, v10, v35, v13, v13, v13);
  }

  return v2;
}

uint64_t glpMakeStructType(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v16 = (a1[1])(*a1, 56, "Struct Type");
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *v16 = 1;
  initAggregateType(a1, v16, v12, a6, a7, a8);
  *(v16 + 48) = (a1[1])(*a1, 16 * v12, "Struct type (field name storage)");
  if (v12)
  {
    v17 = 0;
    do
    {
      *(*(v16 + 48) + v17) = *(a5 + v17);
      v17 += 16;
    }

    while (16 * v12 != v17);
  }

  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  return v16;
}

uint64_t glpMakeArrayType(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = (*(a1 + 8))(*a1, 24, "Array Type");
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *result = 2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  return result;
}

uint64_t glpMakeBankType(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = (*(a1 + 8))(*a1, 24, "Bank Type");
  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = a4;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *result = 3;
  return result;
}

uint64_t glpMakeFunctionType(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v12 = (a1[1])(*a1, 40, "Function Type");
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *v12 = 4;
  initAggregateType(a1, v12, v9, a4, a5, a6);
  *(v12 + 32) = a2;
  return v12;
}

double glpMakeSubroutineType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 32, "Subroutine Type");
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *v7 = 5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 8) = a4;
  return result;
}

void *glpDestroyType(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 != 5)
        {
          goto LABEL_21;
        }

        (result[3])(*result, *(a2 + 16));
        goto LABEL_17;
      }

      destroyAggregateType(result, a2);
      v5 = *(a2 + 32);
      goto LABEL_16;
    }
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    if (v4 == 1)
    {
      destroyAggregateType(result, a2);
      (v3[3])(*v3, *(a2 + 32));
      v6 = *(a2 + 4);
      if (v6)
      {
        v7 = 0;
        v8 = 16 * v6;
        do
        {
          (v3[3])(*v3, *(*(a2 + 48) + v7));
          v7 += 16;
        }

        while (v8 != v7);
      }

      (v3[3])(*v3, *(a2 + 48));
      goto LABEL_17;
    }

    if (v4 != 2)
    {
LABEL_21:
      abort();
    }
  }

  v5 = *(a2 + 16);
LABEL_16:
  glpDestroyType(v3, v5);
LABEL_17:
  v9 = v3[3];
  v10 = *v3;

  return v9(v10, a2);
}

uint64_t destroyAggregateType(void *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      glpDestroyType(a1, *(*(a2 + 8) + v5));
      glpDestroyLayoutObject(a1, *(*(a2 + 24) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  (a1[3])(*a1, *(a2 + 8));
  (a1[3])(*a1, *(a2 + 16));
  v7 = a1[3];
  v8 = *a1;
  v9 = *(a2 + 24);

  return v7(v8, v9);
}

uint64_t glpTypesEqual(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = *v3;
    if (result != *v2)
    {
      return 0;
    }

    if (result != 5)
    {
      break;
    }

    result = glpStringsEqual(*(v3 + 2), *(v3 + 3), *(v2 + 2), *(v2 + 3));
    if (!result)
    {
      return result;
    }

    v3 = **(v3 + 1);
    v2 = **(v2 + 1);
    if (v3 == v2)
    {
      return 1;
    }
  }

  if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
LABEL_31:
      abort();
    }

    result = glpStringsEqual(*(v3 + 4), *(v3 + 5), *(v2 + 4), *(v2 + 5));
    if (!result)
    {
      return result;
    }

    result = aggregateGutsEqual(v3, v2);
    if (!result)
    {
      return result;
    }

    v5 = v3[1];
    if (v5)
    {
      v6 = 0;
      v7 = 16 * v5;
      do
      {
        result = glpStringsEqual(*(*(v3 + 6) + v6), *(*(v3 + 6) + v6 + 8), *(*(v2 + 6) + v6), *(*(v2 + 6) + v6 + 8));
        if (!result)
        {
          break;
        }

        v6 += 16;
        result = 1;
      }

      while (v7 != v6);
      return result;
    }

    return 1;
  }

  if (result == 2)
  {
    result = glpTypesEqual(*(v3 + 2), *(v2 + 2));
    if (!result)
    {
      return result;
    }

    return v3[1] == v2[1];
  }

  if (result == 3)
  {
    result = glpTypesEqual(*(v3 + 2), *(v2 + 2));
    if (!result)
    {
      return result;
    }

    if (v3[2] != v2[2])
    {
      return 0;
    }

    return v3[1] == v2[1];
  }

  if (result != 4)
  {
    goto LABEL_31;
  }

  result = glpTypesEqual(*(v3 + 4), *(v2 + 4));
  if (result)
  {

    return aggregateGutsEqual(v3, v2);
  }

  return result;
}

uint64_t aggregateGutsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 != *(a2 + 4))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    result = glpTypesEqual(*(*(a1 + 8) + 8 * v5), *(*(a2 + 8) + 8 * v5));
    if (!result)
    {
      break;
    }

    if (((*(*(a2 + 16) + 8 * v5) ^ *(*(a1 + 16) + 8 * v5)) & 0xFFFFFFFFFFFFFDFFLL) != 0)
    {
      return 0;
    }

    if (++v5 >= *(a1 + 4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _eachPrimitiveComponent(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = result; ; i = *(i + 16))
  {
    v6 = *i;
    if ((*i - 2) >= 2)
    {
      break;
    }
  }

  if (v6 <= 0)
  {
    if (!v6)
    {
      v8 = *(i + 4);
      v9 = *(a3 + 16);

      return v9(a3, v8, a2);
    }
  }

  else if (v6 == 1)
  {
    if (*(i + 4))
    {
      v7 = 0;
      do
      {
        result = _eachPrimitiveComponent(*(*(i + 8) + 8 * v7), a2, a3);
        if (a2)
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(i + 4));
    }
  }

  else if (v6 == 4 || v6 == 5)
  {
    abort();
  }

  return result;
}

uint64_t glpTypeGetSamplerCount(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_27;
      }

      v3 = *(a1 + 4);
      if (!v3)
      {
        return 0;
      }

      v4 = 0;
      LODWORD(v5) = 0;
      v6 = 8 * v3;
      do
      {
        SamplerCount = glpTypeGetSamplerCount(*(*(a1 + 8) + v4));
        if (SamplerCount == -1)
        {
          v5 = 0xFFFFFFFFLL;
        }

        else
        {
          v5 = (SamplerCount + v5);
        }

        v4 += 8;
      }

      while (v6 != v4);
    }

    else
    {
      Category = glpPrimitiveTypeGetCategory(*(a1 + 4));
      if (Category >= 5)
      {
        goto LABEL_27;
      }

      return dword_23A29CDE0[Category];
    }
  }

  else
  {
    if (v2 != 2 && v2 != 3)
    {
      if (v2 != 5)
      {
LABEL_27:
        abort();
      }

      return 0;
    }

    v8 = glpTypeGetSamplerCount(*(a1 + 16));
    v9 = *(a1 + 4);
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 * v8;
    if (v8 == -1)
    {
      v11 = -1;
    }

    if (v9 == -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

uint64_t glpTypeIsAtomic(_DWORD *a1)
{
  if ((*a1 - 1) < 2)
  {
    return 0;
  }

  if (*a1)
  {
    goto LABEL_10;
  }

  Category = glpPrimitiveTypeGetCategory(a1[1]);
  result = 1;
  if (Category > 2)
  {
    if (Category == 3)
    {
      return 0;
    }

    if (Category == 4)
    {
      return result;
    }

LABEL_10:
    abort();
  }

  if ((Category - 1) >= 2)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL glpTypeIsSized(int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return a1[1] != -1;
  }

  if (v1 != 1)
  {
    abort();
  }

  v3 = 0;
  glpStructTypeGetSizesAndAlignments(0, a1, 0, &v3, 0, 0);
  return glpTypeSizeIsValid(v3);
}

uint64_t glpStructTypeGetSizesAndAlignments(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5, unsigned int *a6)
{
  glpMakeTypeSize();
  v11 = v10;
  v31 = glpABIGetMinimumStructAlignment(a1);
  v12 = *(a2 + 4);
  if (v12 >= 1)
  {
    v30 = a3;
    v13 = 0;
    v29 = a6;
    do
    {
      if (glpTypeSizeIsValid(v11))
      {
        v14 = *(*(a2 + 8) + 8 * v13);
        v15 = *(*(a2 + 16) + 8 * v13);
        v16 = glpABIGetTypeSize(a1, v14, v15 | v30);
        if (glpTypeSizeIsValid(v16))
        {
          v17 = glpABIGetTypeAlign(a1, v14, v15 | v30);
          glpTypeSizeGetSize();
          v19 = (v17 + v18 - 1) / v17 * v17;
          glpTypeSizeGetSize();
          v21 = v20;
          v22 = v31;
          if (v17 > v31)
          {
            v22 = v17;
          }

          v31 = v22;
          glpMakeTypeSize();
          v11 = v23;
          if (v29)
          {
            *a6 = v19;
            a6[1] = v21;
          }
        }

        else
        {
          v11 = glpInvalidTypeSize();
        }
      }

      ++v13;
      a6 += 2;
    }

    while (v12 != v13);
  }

  result = glpTypeSizeIsValid(v11);
  if (result)
  {
    v25 = v31;
    if (a4)
    {
      result = glpAlignTypeSize(v11, v31);
      *a4 = result;
    }

    v26 = a5;
    if (!a5)
    {
      return result;
    }

LABEL_20:
    *v26 = v25;
    return result;
  }

  if (a4)
  {
    result = glpInvalidTypeSize();
    *a4 = result;
  }

  v26 = a5;
  if (a5)
  {
    v25 = -1;
    goto LABEL_20;
  }

  return result;
}

uint64_t initAggregateType(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a2 + 4) = a3;
  v12 = 8 * a3;
  *(a2 + 8) = (a1[1])(*a1, v12, "Aggregate type (element type storage)");
  *(a2 + 16) = (a1[1])(*a1, v12, "Aggregate type (element flag storage)");
  result = (a1[1])(*a1, v12, "Aggregate type (element layout storage)");
  *(a2 + 24) = result;
  if (a3)
  {
    v14 = 0;
    do
    {
      *(*(a2 + 8) + v14) = *(a4 + v14);
      v15 = *(a2 + 24);
      *(*(a2 + 16) + v14) = *(a5 + v14);
      *(v15 + v14) = *(a6 + v14);
      v14 += 8;
    }

    while (8 * a3 != v14);
  }

  return result;
}

uint64_t glpAggregateTypeMangleName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  StringBuffer = glpMakeStringBuffer(a4);
  glpStringBufferAppendCString(StringBuffer, "#");
  glpStringBufferAppendString(StringBuffer, a2, a3);
  if (*(a1 + 4))
  {
    v8 = 0;
    do
    {
      glpStringBufferAppendCString(StringBuffer, "@");
      appendTypeName(*(*(a1 + 8) + 8 * v8++), StringBuffer);
    }

    while (v8 < *(a1 + 4));
  }

  return glpStringBufferGetString(StringBuffer);
}

void *appendTypeName(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1 >= 2)
  {
    if (v4 < 4)
    {
      appendTypeName(*(a1 + 16), a2);
      if (*(a1 + 4) != -1)
      {
        return glpStringBufferAppendFormat(a2, "[%u]", *(a1 + 4));
      }

      v8 = "[]";
      goto LABEL_12;
    }

    if (v4 == 5)
    {
      appendTypeName_cold_1(a1, a2);
      abort();
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v8 = glpPrimitiveTypeToString(*(a1 + 4));
LABEL_12:

    return glpStringBufferAppendCString(a2, v8);
  }

  if (v4 != 1)
  {
LABEL_17:
    abort();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return glpStringBufferAppendString(a2, v6, v7);
}

uint64_t glpStructTypeGetFieldIndex(uint64_t a1, const char *a2, size_t __n)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 0;
  v9 = 16 * v3;
  while (!glpStringsEqual(a2, __n, *(*(a1 + 48) + v7), *(*(a1 + 48) + v7 + 8)))
  {
    v7 += 16;
    v8 = (v8 + 1);
    if (v9 == v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}

uint64_t glpTypeParseDeref(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, size_t), uint64_t a3, unsigned int a4, void *a5, uint64_t *a6, _DWORD *a7)
{
  v45 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  LODWORD(v14) = 0;
  v46 = 0;
  v42 = a3 + 1;
  v15 = 1;
  do
  {
    if (v11 == a4)
    {
      v16 = v15 != 0;
      if (v13 == a4 && !v15)
      {
        goto LABEL_46;
      }

LABEL_12:
      if (!v16)
      {
        return 0;
      }

      v19 = (v11 - v13);
      if (v19)
      {
        v20 = v11 - v13;
        LODWORD(v21) = v11 - v13;
        do
        {
          v21 = (32 * v21 + (v21 >> 2) + *(a3 + v13 + v20 - 1)) ^ v21;
          v20 += ~(v19 >> 5);
        }

        while (v20 > v19 >> 5);
        v22 = v21 << 32;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | v19;
      if (v10)
      {
        if (*v10 != 1)
        {
          return 0;
        }

        FieldIndex = glpStructTypeGetFieldIndex(v10, (a3 + v13), v23);
        if (FieldIndex == -1)
        {
          return 0;
        }

        v25 = FieldIndex;
        v26 = *(*(v10 + 8) + 8 * FieldIndex);
        v27 = glpABIGetStructTypeRangeOfField(0, v10, v12, FieldIndex);
        v14 = HIDWORD(v27);
        v46 += v27;
        v12 |= *(*(v10 + 16) + 8 * v25) & 0x400;
        v10 = v26;
        v23 = v9;
      }

      else
      {
        v28 = a2(a1, a3 + v13, v23);
        if (v28 == -1)
        {
          v10 = 0;
          v15 = 1;
          v9 = v23;
          v45 = a3 + v13;
          goto LABEL_43;
        }

        v10 = v28;
        if (!v28)
        {
          return 0;
        }

        glpABIGetTypeSize(0, v28, 0);
        glpTypeSizeGetSize();
        LODWORD(v14) = v29;
        v46 = 0;
        v45 = a3 + v13;
      }

      v13 = v11 + 1;
      if (v11 == a4)
      {
        v15 = 0;
        v11 = a4;
        v9 = v23;
        goto LABEL_43;
      }

      v18 = v11;
      v17 = *(a3 + v11);
      v9 = v23;
      goto LABEL_28;
    }

    v17 = *(a3 + v11);
    if (v17 != 91 && v17 != 46)
    {
      goto LABEL_43;
    }

    v16 = v15 != 0;
    if (v11 != v13 || v15)
    {
      goto LABEL_12;
    }

    if (!*v10)
    {
      return 0;
    }

    v18 = v11;
    v13 = v11;
LABEL_28:
    if (v17 == 46)
    {
      v15 = *v10;
      if (*v10 != 1)
      {
        return 0;
      }

      v13 = v11 + 1;
    }

    else
    {
      if (v17 == 91)
      {
        v30 = v18 << 32;
        v31 = (v42 + v18);
        v11 = v18;
        while (++v11 < a4)
        {
          v32 = *v31++;
          v30 += 0x100000000;
          if ((v32 - 48) >= 0xA)
          {
            if (v13 != v11)
            {
              v33 = v30 >> 32;
              if (*(a3 + (v30 >> 32)) == 93)
              {
                v47 = 0;
                v34 = strtoul_l((a3 + v13), &v47, 10, 0);
                if (*v10 == 2 && *(a3 + v33) == 93)
                {
                  v35 = v34;
                  if (*(v10 + 4) > v34)
                  {
                    v13 = v11 + 1;
                    v10 = *(v10 + 16);
                    glpABIGetTypeSize(0, v10, 0);
                    glpTypeSizeGetSize();
                    v46 += v36 * v35;
                    glpABIGetTypeSize(0, v10, 0);
                    glpTypeSizeGetSize();
                    LODWORD(v14) = v37;
                    goto LABEL_39;
                  }
                }
              }
            }

            return 0;
          }
        }

        return 0;
      }

LABEL_39:
      v15 = 0;
    }

LABEL_43:
    ++v11;
  }

  while (v11 <= a4);
  if (v15)
  {
    return 0;
  }

LABEL_46:
  *a5 = v45;
  a5[1] = v9;
  *a6 = v10;
  result = 1;
  *a7 = v46;
  a7[1] = v14;
  return result;
}

char *glpTypeHumanReadableDescription(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  if (*a1 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
LABEL_28:
          abort();
        }

        goto LABEL_10;
      }

      return *(a1 + 32);
    }

    else
    {
      v6 = glpPrimitiveTypeToString(*(a1 + 4));
      v11 = strlen(v6);
      if (v11)
      {
        v12 = v11;
        v13 = v11;
        do
        {
          v13 ^= 32 * v13 + (v13 >> 2) + v6[v12 - 1];
          v12 += ~(v11 >> 5);
        }

        while (v12 > v11 >> 5);
      }
    }

    return v6;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      StringBuffer = glpMakeStringBuffer(a4);
      humanReadableDescriptionToBuffer(*(a1 + 32), StringBuffer);
      glpStringBufferAppendCString(StringBuffer, " ");
      glpStringBufferAppendString(StringBuffer, a2, a3);
      glpStringBufferAppendCString(StringBuffer, "(");
      if (*(a1 + 4))
      {
        v10 = 0;
        do
        {
          if (v10)
          {
            glpStringBufferAppendCString(StringBuffer, ", ");
          }

          humanReadableDescriptionToBuffer(*(*(a1 + 8) + 8 * v10++), StringBuffer);
        }

        while (v10 < *(a1 + 4));
      }

      glpStringBufferAppendCString(StringBuffer, ")");
      goto LABEL_24;
    }

    if (v5 != 5)
    {
      goto LABEL_28;
    }

    return *(a1 + 16);
  }

LABEL_10:
  StringBuffer = glpMakeStringBuffer(a4);
  humanReadableDescriptionToBuffer(*(a1 + 16), StringBuffer);
  if (*(a1 + 4) == -1)
  {
    glpStringBufferAppendFormat(StringBuffer, "[]");
  }

  else
  {
    glpStringBufferAppendFormat(StringBuffer, "[%u]");
  }

LABEL_24:

  return glpStringBufferGetString(StringBuffer);
}

int *humanReadableDescriptionToBuffer(int *result, uint64_t *a2)
{
  v3 = *result;
  if (*result <= 2)
  {
    if (!v3)
    {
      v6 = glpPrimitiveTypeToString(result[1]);
      goto LABEL_11;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      goto LABEL_9;
    }

    v4 = *(result + 4);
    v5 = *(result + 5);
    goto LABEL_15;
  }

  switch(v3)
  {
    case 3:
LABEL_9:
      humanReadableDescriptionToBuffer(*(result + 2), a2);
      v6 = "[]";
LABEL_11:

      return glpStringBufferAppendCString(a2, v6);
    case 5:
      v4 = *(result + 2);
      v5 = *(result + 3);
LABEL_15:

      return glpStringBufferAppendString(a2, v4, v5);
    case 4:
      abort();
  }

  return result;
}

void *glpDumpTypeToStringBuffer(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_6:
    v7 = "NULL";
LABEL_7:

    return glpStringBufferAppendFormat(a1, v7);
  }

  v3 = a2;
  while (1)
  {
    v4 = *v3;
    if (*v3 != 5)
    {
      break;
    }

    result = glpStringBufferAppendFormat(a1, "subroutine %.*s: ", *(v3 + 24), *(v3 + 16));
    v6 = *(v3 + 8);
    if (!v6)
    {
      return result;
    }

    v3 = *v6;
    if (!*v6)
    {
      goto LABEL_6;
    }
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      glpPrimitiveTypeToString(*(v3 + 4));
      return glpStringBufferAppendFormat(a1, "%s");
    }

    if (v4 == 1)
    {
      return glpStringBufferAppendFormat(a1, "struct %.*s");
    }

    goto LABEL_32;
  }

  switch(v4)
  {
    case 2:
      v9 = "array<";
      break;
    case 3:
      v9 = "bank<";
      break;
    case 4:
      glpDumpTypeToStringBuffer(a1, *(v3 + 32));
      glpStringBufferAppendFormat(a1, " (*)(");
      if (*(v3 + 4))
      {
        v8 = 0;
        do
        {
          if (v8)
          {
            glpStringBufferAppendFormat(a1, ", ");
          }

          glpDumpTypeToStringBuffer(a1, *(*(v3 + 8) + 8 * v8++));
        }

        while (v8 < *(v3 + 4));
      }

      v7 = ")";
      goto LABEL_7;
    default:
LABEL_32:
      abort();
  }

  glpStringBufferAppendCString(a1, v9);
  glpDumpTypeToStringBuffer(a1, *(v3 + 16));
  if (*(v3 + 4) != -1)
  {
    return glpStringBufferAppendFormat(a1, ", %u>");
  }

  return glpStringBufferAppendCString(a1, ", ?>");
}

const char *glpUnaryOperatorStringToSymbol(char *__s2)
{
  if (!strcmp("pos", __s2))
  {
    return "+";
  }

  if (!strcmp("neg", __s2))
  {
    return "-";
  }

  if (!strcmp("not", __s2))
  {
    return "!";
  }

  if (strcmp("comp", __s2))
  {
    abort();
  }

  return "~";
}

uint64_t glpAnalyzeUnaryMathOp(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpCompilerGetAllocator();
  v6 = v5;
  glpASTNodeGetLocation(a2, v12);
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 16)
  {
    if (Kind == 18)
    {
      v8 = "$OP_comp";
      v9 = 0xEBA2867D00000008;
      goto LABEL_10;
    }

    if (Kind == 17)
    {
      v8 = "$OP_not";
      v9 = 0x9366A7C400000007;
      goto LABEL_10;
    }

LABEL_11:
    abort();
  }

  if (Kind == 15)
  {
    v8 = "$OP_pos";
    v9 = 0xA31C9B1600000007;
    goto LABEL_10;
  }

  if (Kind != 16)
  {
    goto LABEL_11;
  }

  v8 = "$OP_neg";
  v9 = 0x34DF279C00000007;
LABEL_10:
  UnopFuncallFragment = glpMakeUnopFuncallFragment(v6, v12, v8, v9, Expr);
  return glpSANode(a1, UnopFuncallFragment);
}

const char *glpBinaryOperatorStringToSymbol(char *__s2)
{
  if (!strcmp("slt", __s2))
  {
    return "<";
  }

  if (!strcmp("sle", __s2))
  {
    return "<=";
  }

  if (!strcmp("sgt", __s2))
  {
    return ">";
  }

  if (!strcmp("sge", __s2))
  {
    return ">=";
  }

  if (!strcmp("seq", __s2))
  {
    return "==";
  }

  if (!strcmp("sne", __s2))
  {
    return "!=";
  }

  if (!strcmp("mul", __s2))
  {
    return "*";
  }

  if (!strcmp("div", __s2))
  {
    return "/";
  }

  if (!strcmp("mod", __s2))
  {
    return "%";
  }

  if (!strcmp("add", __s2))
  {
    return "+";
  }

  if (!strcmp("sub", __s2))
  {
    return "-";
  }

  if (!strcmp("and", __s2))
  {
    return "&";
  }

  v2 = *__s2;
  if (v2 == 111)
  {
    v2 = __s2[1];
    if (v2 == 114)
    {
      v3 = -__s2[2];
      goto LABEL_31;
    }

    v5 = 114;
  }

  else
  {
    v5 = 111;
  }

  v3 = v5 - v2;
LABEL_31:
  if (!v3)
  {
    return "|";
  }

  if (!strcmp("xor", __s2))
  {
    return "^";
  }

  if (!strcmp("shl", __s2))
  {
    return "<<";
  }

  if (!strcmp("shr", __s2))
  {
    return ">>";
  }

  if (!strcmp("anl", __s2))
  {
    return "&&";
  }

  if (!strcmp("orl", __s2))
  {
    return "||";
  }

  if (strcmp("xrl", __s2))
  {
    abort();
  }

  return "^^";
}

uint64_t glpAnalyzeBinaryMathOp(uint64_t a1, uint64_t a2)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  glpCompilerGetAllocator();
  v7 = v6;
  glpASTNodeGetLocation(a2, v13);
  v8 = glpASTNodeGetKind(a2) - 19;
  v9 = "$OP_xrl";
  v10 = 0xCB2BD55100000007;
  switch(v8)
  {
    case 0:
      v9 = "$OP_mul";
      v10 = 0x952C13B700000007;
      break;
    case 1:
      v9 = "$OP_div";
      v10 = 0xF835D66B00000007;
      break;
    case 2:
      v9 = "$OP_mod";
      v10 = 0x2827016500000007;
      break;
    case 3:
      v9 = "$OP_add";
      v10 = 0xBD95F1700000007;
      break;
    case 4:
      v9 = "$OP_sub";
      v10 = 0x597AE55300000007;
      break;
    case 5:
      v9 = "$OP_shl";
      v10 = 0xC08132B300000007;
      break;
    case 6:
      v9 = "$OP_shr";
      v10 = 0x4CDCFCD000000007;
      break;
    case 7:
      v9 = "$OP_slt";
      v10 = 0x7B30B0FF00000007;
      break;
    case 8:
      v9 = "$OP_sle";
      v10 = 0xA153270000000007;
      break;
    case 9:
      v9 = "$OP_sgt";
      v10 = 0x1F55519B00000007;
      break;
    case 10:
      v9 = "$OP_sge";
      v10 = 0x1B1FEDA500000007;
      break;
    case 11:
      v9 = "$OP_seq";
      v10 = 0x8C71514400000007;
      break;
    case 12:
      v9 = "$OP_sne";
      v10 = 0x97C1FFE700000007;
      break;
    case 13:
      v9 = "$OP_anl";
      v10 = 0x6C41D90B00000007;
      break;
    case 14:
      v9 = "$OP_orl";
      v10 = 0xCEE17B3300000007;
      break;
    case 15:
      break;
    case 16:
      v9 = "$OP_and";
      v10 = 0x2CFF98A600000007;
      break;
    case 17:
      v9 = "$OP_or";
      v10 = 0x77FE58B000000006;
      break;
    case 18:
      v9 = "$OP_xor";
      v10 = 0x8ADCA24100000007;
      break;
    default:
      abort();
  }

  BinopFuncallFragment = glpMakeBinopFuncallFragment(v7, v13, v9, v10, Lhs, Rhs);
  return glpSANode(a1, BinopFuncallFragment);
}

uint64_t glpCheckAndSanitizeConstructorCall(uint64_t a1, uint64_t a2)
{
  v4 = glpConstructorCallNodeGetType(a2);
  SaType = glpASTNodeGetSaType(v4);
  Kind = glpTypeGetKind(SaType);
  if (Kind > 1)
  {
    if (Kind <= 3)
    {
      if (Kind == 2)
      {
        if (!glpTypeIsSized(SaType))
        {
          glpCompilerGetAllocator();
          v8 = v7;
          ElementType = glpArrayTypeGetElementType(SaType);
          v10 = glpCallNodeGetArgCount(a2);
          SaType = glpMakeArrayType(v8, ElementType, v10, -1);
        }

        v11 = glpArrayTypeGetElementType(SaType);
        v50 = 0;
        v51 = &v50;
        v52 = 0x2000000000;
        v53 = 0;
        v46 = 0;
        v47 = &v46;
        v48 = 0x2000000000;
        v49 = 96;
        v38.n128_u64[0] = MEMORY[0x277D85DD0];
        v38.n128_u64[1] = 0x40000000;
        v39 = ___checkAndSanitizeArrayConstructorCall_block_invoke;
        v40 = &unk_278B49E60;
        v41 = &v50;
        v42 = &v46;
        v43 = v11;
        v44 = a1;
        v45 = SaType;
        if (!_checkConstructorArgs(a1, a2, &v38))
        {
          v14 = glpSAFailed();
          goto LABEL_30;
        }

        v12 = v51;
        if (v47[3])
        {
          goto LABEL_8;
        }

        if (!v51[3])
        {
          v13 = 0;
          goto LABEL_9;
        }

        DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, SaType);
        v12 = v51;
        if (!DoesTypeRequirePrecision)
        {
LABEL_8:
          v13 = 0;
          v12[3] = 0;
        }

        else
        {
          v13 = v51[3];
        }

LABEL_9:
        v14 = _elementwiseConstructor(a1, a2, SaType, v13, v47[3]);
LABEL_30:
        v28 = v14;
        _Block_object_dispose(&v46, 8);
LABEL_31:
        _Block_object_dispose(&v50, 8);
        return v28;
      }

LABEL_60:
      abort();
    }

    if (Kind != 5)
    {
      abort();
    }

    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v16);
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v18 = glpASTNodeGetLocation(a2, &v38).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v38, "Subroutine type '%.*s' can't be constructed", v18);
    return glpSAFailed();
  }

  if (Kind)
  {
    if (Kind == 1)
    {
      v50 = 0;
      v51 = &v50;
      v52 = 0x2000000000;
      v53 = 96;
      v38.n128_u64[0] = MEMORY[0x277D85DD0];
      v38.n128_u64[1] = 0x40000000;
      v39 = ___checkAndSanitizeStructConstructorCall_block_invoke;
      v40 = &unk_278B49EA8;
      v41 = &v50;
      v42 = SaType;
      v43 = a1;
      if (_checkConstructorArgs(a1, a2, &v38))
      {
        v15 = _elementwiseConstructor(a1, a2, SaType, 0, v51[3]);
      }

      else
      {
        v15 = glpSAFailed();
      }

      v28 = v15;
      goto LABEL_31;
    }

    goto LABEL_60;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 > 2)
  {
    v26 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v38);
    glpPrimitiveTypeToString(PrimitiveType);
    glpLogMessage(v26, 0, &v38, "Primitive type '%s' can't be constructed", v27);
    return glpSAFailed();
  }

  v20 = glpCallNodeGetArgCount(a2);
  if (!v20)
  {
    v30 = glpCompilerGetInfoLog(a1);
    *&v31 = glpASTNodeGetLocation(a2, &v38).n128_u64[0];
    glpLogMessage(v30, 0, &v38, "Constructor of primitive type must have at least one argument", v31);
    return glpSAFailed();
  }

  if (v20 != 1)
  {
    goto LABEL_20;
  }

  v21 = glpCallNodeGetArg(a2, 0);
  v22 = glpASTNodeGetSaType(v21);
  if (glpTypeGetKind(v22))
  {
    goto LABEL_20;
  }

  v33 = glpPrimitiveTypeGetPrimitiveType(v22);
  Category = glpPrimitiveTypeGetCategory(v33);
  if (Category == 3)
  {
    v23 = 0;
    goto LABEL_21;
  }

  if (Category != 1)
  {
LABEL_20:
    v23 = 1;
LABEL_21:
    v24 = 1;
    goto LABEL_22;
  }

  v24 = 0;
  v23 = 1;
LABEL_22:
  v25 = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (v25 != 3)
  {
    if (v25 != 2)
    {
      if (v25 != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_44;
    }

    if ((v24 & 1) == 0)
    {

      return _checkAndSanitizeSplat(a1, a2, PrimitiveType);
    }

LABEL_44:

    return _checkAndSanitizeComponentwiseConstructorCall(a1, a2, PrimitiveType);
  }

  if (v24)
  {
    if (v23)
    {
      goto LABEL_44;
    }

    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) == 1)
    {
      v36 = glpCompilerGetInfoLog(a1);
      *&v37 = glpASTNodeGetLocation(a2, &v38).n128_u64[0];
      glpLogMessage(v36, 0, &v38, "GLSL 110 does not allow sub- or super-matrix constructors", v37);
      return glpSAFailed();
    }

    return _checkAndSanitizeSubOrSuperMatrixConstructorCall(a1, a2, PrimitiveType);
  }

  else
  {

    return _checkAndSanitizeDiagonalMatrixConstructorCall(a1, a2, PrimitiveType);
  }
}

uint64_t glpLowerNonatomicTypeConversion(uint64_t a1, uint64_t a2)
{
  v4 = glpTypeConversionNodeGetToType(a2);
  v5 = glpTypeConversionNodeGetToPrecision(a2);
  v18 = 0;
  v19 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v18, &v19);
  glpCompilerGetAllocator();
  v16.n128_u64[0] = "-1";
  v16.n128_u64[1] = 0xEDA00000002;
  v17 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(v7, &v16, 0);
  v9 = v8;
  v10 = v19;
  if (v19)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v11, v9, v10);
  }

  v12 = v18;
  SaFlags = glpASTNodeGetSaFlags(v18);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = __glpLowerNonatomicTypeConversion_block_invoke;
  v15[3] = &__block_descriptor_tmp_10;
  v15[4] = a1;
  v15[5] = v12;
  return _constructor(a1, v4, v9, v5, SaFlags & 0x60, v15);
}

uint64_t glpHandleSideEffectsForExpr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = glpFlattenCommaTree(a1, a2);
  v8 = glpSANode(a1, v7);
  v9 = glpCommaResult(v8);
  result = glpASTNodeGetKind(v9);
  if ((result - 81) >= 2)
  {
    if (result == 3)
    {
      if (v9 == v8)
      {
        v36 = 0;
      }

      else
      {
        v36 = v8;
      }

      *a4 = v36;
      *a3 = v9;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      _tempForExpr(a1, v8, &v47, &v46);
      glpCompilerGetAllocator();
      v48.n128_u64[0] = "-1";
      v48.n128_u64[1] = 0xEDA00000002;
      v49 = 0xFFFFFFFFLL;
      glpMakeCommaExprNode(v37, &v48, 0);
      v39 = v38;
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v40, v39, v47);
      glpCompilerGetAllocator();
      v42 = v41;
      v43 = v46;
      glpCompilerGetAllocator();
      v45 = glpDeepCopyASTNode(v44, v43, getAccessorReplaceCallback, 0);
      result = glpCommaExprNodeAddExpr(v42, v39, v45);
      *a4 = v39;
      *a3 = v43;
    }
  }

  else
  {
    if (v9 == v8)
    {
      glpCompilerGetAllocator();
      v48.n128_u64[0] = "-1";
      v48.n128_u64[1] = 0xEDA00000002;
      v49 = 0xFFFFFFFFLL;
      glpMakeCommaExprNode(v11, &v48, 0);
      v8 = v12;
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v13, v8, v9);
    }

    Offset = glpDerefNodeGetOffset(v9);
    if (Offset)
    {
      v15 = Offset;
      BankIndex = glpOffsetNodeGetBankIndex(Offset);
      if (BankIndex)
      {
        v17 = BankIndex;
        if (!glpIsConstantNode(BankIndex))
        {
          v47 = 0;
          v48.n128_u64[0] = 0;
          _tempForExpr(a1, v17, &v48, &v47);
          glpCompilerGetAllocator();
          v19 = v18;
          v20 = v48.n128_u64[0];
          ExprCount = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v19, v8, v20, ExprCount - 1);
          glpOffsetNodeSetBankIndex(v15, v47);
        }
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(v15);
      if (OffsetExpr)
      {
        v23 = OffsetExpr;
        if (!glpIsConstantNode(OffsetExpr))
        {
          v47 = 0;
          v48.n128_u64[0] = 0;
          _tempForExpr(a1, v23, &v48, &v47);
          glpCompilerGetAllocator();
          v25 = v24;
          v26 = v48.n128_u64[0];
          v27 = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v25, v8, v26, v27 - 1);
          glpOffsetNodeSetOffsetExpr(v15, v47);
        }
      }

      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v15);
      if (VectorElementExpr)
      {
        v29 = VectorElementExpr;
        if (!glpIsConstantNode(VectorElementExpr))
        {
          v47 = 0;
          v48.n128_u64[0] = 0;
          _tempForExpr(a1, v29, &v48, &v47);
          glpCompilerGetAllocator();
          v31 = v30;
          v32 = v48.n128_u64[0];
          v33 = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v31, v8, v32, v33 - 1);
          glpOffsetNodeSetVectorElementExpr(v15, v47);
        }
      }
    }

    if (glpCommaExprNodeGetExprCount(v8) == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v8;
    }

    *a4 = v34;
    glpCompilerGetAllocator();
    result = glpDeepCopyASTNode(v35, v9, getAccessorReplaceCallback, 0);
    *a3 = result;
  }

  if (*a4)
  {
    result = glpSANode(a1, *a4);
    *a4 = result;
  }

  return result;
}

uint64_t _constructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  glpCompilerGetAllocator();
  v13 = v12;
  glpASTNodeGetLocation(a3, v37);
  glpMakeCommaExprNode(v13, v37, 0);
  v15 = v14;
  v35 = 0;
  v36 = 0;
  Temporary = glpMakeTemporary(a1, a2, a4, 0, &v36, &v35);
  (*(a6 + 16))(a6, v35, v15);
  v17 = v36;
  v18 = glpASTNodeGetSaFlags(v36) & 0xFFFFFFFFFFFFFF7FLL;
  glpASTNodeSetSaFlags(v17, v18);
  *(glpVariableDeclarationNodeGetExtra(v17) + 48) = v18;
  v19 = glpSANode(a1, v15);
  glpVariableDeclarationNodeSetInitializer(v17, v19);
  glpCompilerGetAllocator();
  v21 = v20;
  ValueHash = glpCompilerGetValueHash(a1);
  v23 = glpConstantFold(v21, ValueHash, v17);
  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v24, a3, v23);
  glpCompilerGetAllocator();
  v26 = v25;
  glpCompilerGetAllocator();
  v28 = v27;
  glpASTNodeGetLocation(a3, v37);
  glpMakeVariableIdentifierNode(v28, v37, *(Temporary + 32), *(Temporary + 40));
  glpCommaExprNodeAddExpr(v26, a3, v29);
  v30 = glpSANode(a1, a3);
  Expr = v30;
  if (glpIsCommaExprNode(v30))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v30);
    Expr = glpCommaExprNodeGetExpr(v30, ExprCount - 1);
  }

  if (glpIsConstantNode(Expr))
  {
    SaFlags = glpASTNodeGetSaFlags(Expr);
    glpASTNodeSetSaFlags(Expr, SaFlags | a5);
    return Expr;
  }

  return v30;
}

uint64_t __glpLowerNonatomicTypeConversion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = glpGetAccessorCount(a2);
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(a1 + 32);
      Accessor = glpMakeAccessor(v9, a2, v8);
      v11 = glpSANode(v9, Accessor);
      v12 = *(a1 + 32);
      v13 = glpMakeAccessor(v12, *(a1 + 40), v8);
      v14 = glpSANode(v12, v13);
      glpCompilerGetAllocator();
      *&v19 = "-1";
      *(&v19 + 1) = 0xEDA00000002;
      v20 = 0xFFFFFFFFLL;
      AssignNode = glpMakeAssignNode(v15, &v19, 0);
      glpBinaryOperatorNodeSetLhs(AssignNode, v11);
      glpBinaryOperatorNodeSetRhs(AssignNode, v14);
      v17 = glpSANode(*(a1 + 32), AssignNode);
      glpCompilerGetAllocator();
      result = glpCommaExprNodeAddExpr(v18, a3, v17);
      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t glpGetAccessorCount(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  Kind = glpTypeGetKind(SaType);
  if (Kind == 2)
  {

    return glpArrayTypeGetElementCount(SaType);
  }

  else if (Kind == 1)
  {

    return glpAggregateTypeGetElementCount(SaType);
  }

  else
  {
    if (Kind || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), glpPrimitiveTypeGetCategory(PrimitiveType) != 3))
    {
      abort();
    }

    v4 = glpPrimitiveTypeGetPrimitiveType(SaType);

    return glpPrimitiveMatrixGetColumns(v4);
  }
}

uint64_t glpMakeAccessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a2);
  Kind = glpTypeGetKind(SaType);
  if (Kind == 2)
  {
LABEL_5:
    glpCompilerGetAllocator();
    v10 = v9;
    glpCompilerGetAllocator();
    v12 = glpDeepCopyASTNode(v11, a2, getAccessorReplaceCallback, 0);
    IntConstant = glpCompilerGetIntConstant(a1, a3);
    v22.n128_u64[0] = "-1";
    v22.n128_u64[1] = 0xEDA00000002;
    v23 = 0xFFFFFFFFLL;
    return glpMakeArrayAccessFragment(v10, &v22, v12, IntConstant);
  }

  if (Kind != 1)
  {
    if (Kind || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), glpPrimitiveTypeGetCategory(PrimitiveType) != 3))
    {
      abort();
    }

    goto LABEL_5;
  }

  glpCompilerGetAllocator();
  v16 = v15;
  FieldName = glpStructTypeGetFieldName(SaType, a3);
  v19 = v18;
  glpCompilerGetAllocator();
  v21 = glpDeepCopyASTNode(v20, a2, getAccessorReplaceCallback, 0);
  v22.n128_u64[0] = "-1";
  v22.n128_u64[1] = 0xEDA00000002;
  v23 = 0xFFFFFFFFLL;
  return glpMakeFieldAccessFragment(v16, &v22, FieldName, v19, v21);
}

uint64_t glpMakeTemporary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = glpCompilerNewTempName(a1);
  v14 = v13;
  v30 = 0;
  glpCompilerGetAllocator();
  v27.n128_u64[0] = "-1";
  v27.n128_u64[1] = 0xEDA00000002;
  v28 = 0xFFFFFFFFLL;
  TypedVariableFragment = glpMakeTypedVariableFragment(v15, &v27, v12, v14, &v30, a4);
  glpASTNodeSetSaFlags(v30, a3);
  glpASTNodeSetSaType(v30, a2);
  v17 = glpSANode(a1, TypedVariableFragment);
  v27.n128_u64[0] = 0;
  v27.n128_u64[1] = &v27;
  v28 = 0x2000000000;
  v29 = 0;
  NameTable = glpCompilerGetNameTable(a1);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v26[2] = __glpMakeTemporary_block_invoke;
  v26[3] = &unk_278B49DC8;
  v26[4] = &v27;
  glpNameTableGet(NameTable, v12, v14, 0, v26);
  if (v17)
  {
    SaFlags = glpASTNodeGetSaFlags(v17);
    glpASTNodeSetSaFlags(v17, SaFlags & 0xFFFFFFFF7FFFFFFFLL);
  }

  *(*(v27.n128_u64[1] + 24) + 48) &= ~0x80000000uLL;
  *a5 = v17;
  glpCompilerGetAllocator();
  v24.n128_u64[0] = "-1";
  v24.n128_u64[1] = 0xEDA00000002;
  v25 = 0xFFFFFFFFLL;
  glpMakeVariableIdentifierNode(v20, &v24, v12, v14);
  *a6 = glpSANode(a1, v21);
  v22 = *(v27.n128_u64[1] + 24);
  _Block_object_dispose(&v27, 8);
  return v22;
}

uint64_t __glpMakeTemporary_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t _tempForExpr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  SaFlags = glpASTNodeGetSaFlags(a2);
  if ((SaFlags & 0x60) != 0)
  {
    v9 = SaFlags & 0x60;
  }

  else
  {
    v9 = 256;
  }

  v10 = glpASTNodeGetSaFlags(a2) & 0x1F;
  SaType = glpASTNodeGetSaType(a2);

  return glpMakeTemporary(a1, SaType, v9 | v10, a2, a3, a4);
}

_DWORD *glpDuplicateDerefOrConstant(uint64_t a1, uint64_t a2)
{
  glpCompilerGetAllocator();

  return glpDeepCopyASTNode(v3, a2, getAccessorReplaceCallback, 0);
}

uint64_t glpMangleSideEffectsWithNewResult(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  v4 = a2;
  if (glpIsCommaExprNode(a2))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v4);
    glpCommaExprNodeSetExpr(v4, ExprCount - 1, a3);
    SaType = glpASTNodeGetSaType(a3);
    glpASTNodeSetSaType(v4, SaType);
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(v4, SaFlags);
  }

  else
  {
    glpASTNodeGetLocation(a3, v14);
    glpMakeCommaExprNode(a1, v14, 0);
    v10 = v9;
    glpCommaExprNodeAddExpr(a1, v9, v4);
    glpCommaExprNodeAddExpr(a1, v10, a3);
    v11 = glpASTNodeGetSaType(a3);
    glpASTNodeSetSaType(v10, v11);
    v12 = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(v10, v12);
    return v10;
  }

  return v4;
}

uint64_t getAccessorReplaceCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Kind = glpASTNodeGetKind(a3);
  if (Kind == 80)
  {
    Extra = glpOffsetNodeGetExtra(a3);
    v7 = (*(a2 + 8))(*a2, 32, "Offset Object (accessor replacement)");
    v8 = Extra[1];
    *v7 = *Extra;
    v7[1] = v8;
    glpOffsetNodeSetExtra(a3, v7);
  }

  else if (Kind == 7 || Kind == 39)
  {
    abort();
  }

  return a3;
}

uint64_t glpGetScalarAccessorCount(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  result = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (result != 1)
  {
    if (result != 2)
    {
      abort();
    }

    return glpPrimitiveVectorGetLength(PrimitiveType);
  }

  return result;
}

_DWORD *glpMakeScalarAccessor(uint64_t a1, uint64_t a2, int a3)
{
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  Category = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (Category == 2)
  {
    glpCompilerGetAllocator();
    v11 = v10;
    v12 = &aXyzw[a3];
    v13 = ((*v12 ^ 1u) << 32) + 0x2000000001;
    glpCompilerGetAllocator();
    v15 = glpDeepCopyASTNode(v14, a2, getAccessorReplaceCallback, 0);
    v16.n128_u64[0] = "-1";
    v16.n128_u64[1] = 0xEDA00000002;
    v17 = 0xFFFFFFFFLL;
    return glpMakeFieldAccessFragment(v11, &v16, v12, v13, v15);
  }

  else
  {
    if (Category != 1)
    {
      abort();
    }

    glpCompilerGetAllocator();

    return glpDeepCopyASTNode(v8, a2, getAccessorReplaceCallback, 0);
  }
}

uint64_t _checkAndSanitizeComponentwiseConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2000000000;
  v58 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 96;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 0x40000000;
  v47[2] = ___checkAndSanitizeComponentwiseConstructorCall_block_invoke;
  v47[3] = &unk_278B49DF0;
  v47[4] = &v49;
  v47[5] = &v53;
  v47[6] = v57;
  v48 = ScalarCount;
  if (!_checkConstructorArgs(a1, a2, v47))
  {
    v39 = glpSAFailed();
    goto LABEL_19;
  }

  v7 = v50 + 3;
  if (!v54[3])
  {
    if (!*v7)
    {
      goto LABEL_4;
    }

    PrimitiveType = glpGetPrimitiveType(a3);
    if (glpCompilerDoesTypeRequirePrecision(a1, PrimitiveType))
    {
      goto LABEL_4;
    }

    v7 = v50 + 3;
  }

  *v7 = 0;
LABEL_4:
  v8 = glpCallNodeGetArgCount(a2);
  doPrecisionWarningsForLowpInt(a1, a2, a3, v50[3]);
  v9 = glpGetPrimitiveType(a3);
  DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, v9);
  if (!DoesTypeRequirePrecision && v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = glpCallNodeGetArg(a2, i);
      SaType = glpASTNodeGetSaType(v12);
      DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, SaType);
      if (DoesTypeRequirePrecision)
      {
        DoesTypeRequirePrecision = glpASTNodeGetSaFlags(v12);
        if ((DoesTypeRequirePrecision & 0x1F) == 0)
        {
          DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
          if (DefaultPrecisionForType)
          {
            DoesTypeRequirePrecision = glpPushdownPrecision(a1, v12, DefaultPrecisionForType);
          }

          else
          {
            glpCompilerGetAllocator();
            v16 = glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v15);
            v18 = v17;
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, v46);
            glpLogMessage(InfoLog, 0, v46, "Constructor argument of type '%.*s' - precision can not be inferred and no default precision available", v18, v16);
          }
        }
      }
    }
  }

  v45 = 0;
  MEMORY[0x28223BE20](DoesTypeRequirePrecision);
  v21 = (&v43 - v20);
  bzero(&v43 - v20, v22);
  ArgsAccessible = _makeArgsAccessible(a1, a2, v50[3], v21, &v45);
  v44 = 0;
  MEMORY[0x28223BE20](ArgsAccessible);
  v25 = &v43 - v24;
  bzero(v25, v26);
  v27 = _atomicizeArgs(a1, v8, v21, &v44, v25);
  v43 = 0;
  LODWORD(v21) = v44;
  MEMORY[0x28223BE20](v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFF0);
  bzero(v29, v28);
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  _convertAccesses(a1, ScalarType, v50[3], v21, v25, &v43, v29);
  glpCompilerGetAllocator();
  v32 = v31;
  glpASTNodeGetLocation(a2, v46);
  glpMakeCommaExprNode(v32, v46, 0);
  v34 = v33;
  v35 = v45;
  if (v45)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v36, v34, v35);
  }

  v37 = v43;
  if (v43)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v38, v34, v37);
  }

  v39 = _componentwiseConstructor(a1, a3, v34, v50[3], v54[3], v29);
LABEL_19:
  v40 = v39;
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v57, 8);
  return v40;
}

uint64_t _checkAndSanitizeSplat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v42[0] = 0;
  _makeArgsAccessible(a1, a2, 0, v42, &v40);
  v6 = glpASTNodeGetSaFlags(v42[0]) & 0x1F;
  if (v6)
  {
    PrimitiveType = glpGetPrimitiveType(a3);
    if (!glpCompilerDoesTypeRequirePrecision(a1, PrimitiveType))
    {
      v6 = 0;
    }
  }

  doPrecisionWarningsForLowpInt(a1, a2, a3, v6);
  v8 = glpGetPrimitiveType(a3);
  if (!glpCompilerDoesTypeRequirePrecision(a1, v8))
  {
    v30 = glpCallNodeGetArg(a2, 0);
    SaType = glpASTNodeGetSaType(v30);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v30) & 0x1F) == 0)
    {
      DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
      if (DefaultPrecisionForType)
      {
        glpPushdownPrecision(a1, v30, DefaultPrecisionForType);
      }

      else
      {
        glpCompilerGetAllocator();
        v34 = glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v33);
        v36 = v35;
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, v39);
        glpLogMessage(InfoLog, 0, v39, "Constructor argument of type '%.*s' - precision can not be inferred and no default precision available", v36, v34);
      }
    }
  }

  v38 = 0;
  v41 = 0;
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  _convertAccesses(a1, ScalarType, v6, 1u, v42, &v38, &v41);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v11 = ScalarCount;
  MEMORY[0x28223BE20](ScalarCount);
  v13 = &v39[-1] - v12;
  bzero(&v39[-1] - v12, v14);
  if (v11)
  {
    v15 = v11;
    v16 = v41;
    v17 = v13;
    do
    {
      glpCompilerGetAllocator();
      *v17++ = glpDeepCopyASTNode(v18, v16, getAccessorReplaceCallback, 0);
      --v15;
    }

    while (v15);
  }

  glpCompilerGetAllocator();
  v20 = v19;
  glpASTNodeGetLocation(a2, v39);
  glpMakeCommaExprNode(v20, v39, 0);
  v22 = v21;
  v23 = v40;
  if (v40)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v24, v22, v23);
  }

  v25 = v38;
  if (v38)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v26, v22, v25);
  }

  v27 = glpCallNodeGetArg(a2, 0);
  SaFlags = glpASTNodeGetSaFlags(v27);
  return _componentwiseConstructor(a1, a3, v22, v6, SaFlags & 0x60, v13);
}

uint64_t _checkAndSanitizeDiagonalMatrixConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v49[0] = 0;
  _makeArgsAccessible(a1, a2, 0, v49, &v47);
  SaFlags = glpASTNodeGetSaFlags(v49[0]);
  v43 = a2;
  doPrecisionWarningsForLowpInt(a1, a2, a3, SaFlags & 0x1F);
  v46 = 0;
  v48 = 0;
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  v42 = SaFlags;
  _convertAccesses(a1, ScalarType, SaFlags & 0x1F, 1u, v49, &v46, &v48);
  v8 = glpPrimitiveTypeGetScalarType(a3);
  PrimitiveType = glpGetPrimitiveType(v8);
  glpCompilerGetAllocator();
  MutableValue = glpMakeMutableValue(v10, PrimitiveType, 0, v11, v12, v13, v14, v15, v41[0]);
  v17 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
  v44.n128_u64[0] = "-1";
  v44.n128_u64[1] = 0xEDA00000002;
  v45 = 0xFFFFFFFFLL;
  ConstantValueFragment = glpMakeConstantValueFragment(a1, &v44, PrimitiveType, v17);
  Rows = glpPrimitiveMatrixGetRows(a3);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v21 = ScalarCount;
  v41[1] = v41;
  MEMORY[0x28223BE20](ScalarCount);
  v23 = v41 - v22;
  bzero(v41 - v22, v24);
  if (v21)
  {
    v25 = 0;
    v26 = v48;
    do
    {
      glpCompilerGetAllocator();
      if (v25 % Rows == v25 / Rows)
      {
        v28 = v26;
      }

      else
      {
        v28 = ConstantValueFragment;
      }

      *&v23[8 * v25++] = glpDeepCopyASTNode(v27, v28, getAccessorReplaceCallback, 0);
    }

    while (v21 != v25);
  }

  glpCompilerGetAllocator();
  v30 = v29;
  v31 = v43;
  glpASTNodeGetLocation(v43, &v44);
  glpMakeCommaExprNode(v30, &v44, 0);
  v33 = v32;
  v34 = v47;
  if (v47)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v35, v33, v34);
  }

  v36 = v46;
  if (v46)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v37, v33, v36);
  }

  v38 = glpCallNodeGetArg(v31, 0);
  v39 = glpASTNodeGetSaFlags(v38);
  return _componentwiseConstructor(a1, a3, v33, v42 & 0x1F, v39 & 0x60, v23);
}

uint64_t _checkAndSanitizeSubOrSuperMatrixConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v6 = glpCallNodeGetArgCount(a2);
  v77 = 0;
  v79[0] = 0;
  v68 = a2;
  _makeArgsAccessible(a1, a2, 0, v79, &v77);
  v76 = 0;
  memset(v78, 0, sizeof(v78));
  v7 = _atomicizeArgs(a1, v6, v79, &v76, v78);
  v75 = 0;
  v8 = v76;
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  v12 = v79[0];
  SaFlags = glpASTNodeGetSaFlags(v79[0]);
  _convertAccesses(a1, ScalarType, SaFlags & 0x1F, v8, v78, &v75, v10);
  v14 = glpPrimitiveTypeGetScalarType(a3);
  PrimitiveType = glpGetPrimitiveType(v14);
  glpCompilerGetAllocator();
  MutableValue = glpMakeMutableValue(v16, PrimitiveType, 0, v17, v18, v19, v20, v21, v67);
  v23 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
  v73.n128_u64[0] = "-1";
  v73.n128_u64[1] = 0xEDA00000002;
  v74 = 0xFFFFFFFFLL;
  ConstantValueFragment = glpMakeConstantValueFragment(a1, &v73, PrimitiveType, v23);
  glpCompilerGetAllocator();
  v30 = glpMakeMutableValue(v24, PrimitiveType, 1, v25, v26, v27, v28, v29, 0x3FF0000000000000);
  v31 = glpCompilerRemapValue(a1, PrimitiveType, v30);
  v73.n128_u64[0] = "-1";
  v73.n128_u64[1] = 0xEDA00000002;
  v74 = 0xFFFFFFFFLL;
  v32 = glpMakeConstantValueFragment(a1, &v73, PrimitiveType, v31);
  Rows = glpPrimitiveMatrixGetRows(a3);
  v69 = a3;
  Columns = glpPrimitiveMatrixGetColumns(a3);
  SaType = glpASTNodeGetSaType(v12);
  v36 = glpPrimitiveTypeGetPrimitiveType(SaType);
  v37 = glpPrimitiveMatrixGetRows(v36);
  v38 = glpASTNodeGetSaType(v12);
  v39 = glpPrimitiveTypeGetPrimitiveType(v38);
  v40 = glpPrimitiveMatrixGetColumns(v39);
  v41 = v40;
  v67 = &v67;
  v71 = Rows;
  MEMORY[0x28223BE20](v40);
  v43 = &v67 - v42;
  bzero(&v67 - v42, v44);
  if (Columns)
  {
    v45 = 0;
    v46 = 0;
    v47 = v41;
    v70 = Columns;
    v48 = v71;
    do
    {
      if (v71)
      {
        v49 = 0;
        do
        {
          if (v45 >= v47 || v49 >= v37)
          {
            glpCompilerGetAllocator();
            if (v45 == v49)
            {
              v53 = v32;
            }

            else
            {
              v53 = ConstantValueFragment;
            }

            v51 = glpDeepCopyASTNode(v52, v53, getAccessorReplaceCallback, 0);
          }

          else
          {
            ScalarAccessor = glpMakeScalarAccessor(a1, *&v10[8 * v45], v49);
            v51 = glpSANode(a1, ScalarAccessor);
          }

          *&v43[8 * v46++] = v51;
          ++v49;
        }

        while (v48 != v49);
      }

      ++v45;
    }

    while (v45 != v70);
  }

  glpCompilerGetAllocator();
  v73.n128_u64[0] = "-1";
  v73.n128_u64[1] = 0xEDA00000002;
  v74 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(v54, &v73, 0);
  v56 = v55;
  v57 = v77;
  if (v77)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v58, v56, v57);
  }

  v59 = v75;
  if (v75)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v60, v56, v59);
  }

  v61 = v68;
  v62 = glpCallNodeGetArg(v68, 0);
  v63 = glpASTNodeGetSaFlags(v62);
  v64 = glpCallNodeGetArg(v61, 0);
  v65 = glpASTNodeGetSaFlags(v64);
  return _componentwiseConstructor(a1, v69, v56, v63 & 0x1F, v65 & 0x60, v43);
}

uint64_t _checkConstructorArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = glpConstructorCallNodeGetType(a2);
  SaType = glpASTNodeGetSaType(v6);
  v8 = glpCallNodeGetArgCount(a2);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = glpCallNodeGetArg(a2, v10);
      v12 = (*(a3 + 16))(a3, v10, v11);
      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v16 = glpASTNodeGetSaType(v11);
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v16, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v17);
        v19 = v18;
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v20);
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v22 = glpASTNodeGetLocation(a2, v27).n128_u64[0];
        glpLogMessage(InfoLog, 0, v27, "Invalid type '%.*s' as argument %u of constructor of '%.*s'", v22, v19);
        return 0;
      }

      v10 = (v10 + 1);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    if (v10 + 1 >= v9)
    {
      return 1;
    }

    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v23);
    v24 = glpCompilerGetInfoLog(a1);
    *&v25 = glpASTNodeGetLocation(a2, v27).n128_u64[0];
    glpLogMessage(v24, 0, v27, "Too many arguments to constructor of '%.*s'", v25);
  }

  else
  {
LABEL_6:
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v13);
    v14 = glpCompilerGetInfoLog(a1);
    *&v15 = glpASTNodeGetLocation(a2, v27).n128_u64[0];
    glpLogMessage(v14, 0, v27, "Too few arguments to constructor of '%.*s'", v15);
  }

  return 0;
}

uint64_t ___checkAndSanitizeComponentwiseConstructorCall_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaFlags = glpASTNodeGetSaFlags(a3);
  v6 = SaFlags & 0x1F;
  if (v6 != 31)
  {
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) > v6)
    {
      v6 = *(v7 + 24);
    }

    *(v7 + 24) = v6;
  }

  *(*(*(a1 + 40) + 8) + 24) &= SaFlags;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypeGetKind(SaType))
  {
    return 1;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 > 2)
  {
    return 1;
  }

  *(*(*(a1 + 48) + 8) + 24) += glpPrimitiveTypeGetScalarCount(PrimitiveType);
  return 2 * (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56));
}

void doPrecisionWarningsForLowpInt(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = glpCallNodeGetArgCount(a2);
  if (a4 == 4)
  {
    v9 = v8;
    PrimitiveType = glpGetPrimitiveType(a3);
    if (glpGetMostBasicPrimitiveType(PrimitiveType) == 1)
    {
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = glpCallNodeGetArg(a2, i);
          SaType = glpASTNodeGetSaType(v12);
          MostBasicPrimitiveType = glpGetMostBasicPrimitiveType(SaType);
          if ((MostBasicPrimitiveType == 36 || MostBasicPrimitiveType == 5) && (glpASTNodeGetSaFlags(v12) & 0x1F) == 4)
          {
            v16 = glpASTNodeGetSaType(v12);
            glpCompilerGetAllocator();
            v18 = glpTypeHumanReadableDescription(v16, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v17);
            v20 = v19;
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, v22);
            glpLogMessage(InfoLog, 1, v22, "Casting lowp %.*s to lowp float - this may produce incorrect results", v20, v18);
          }
        }
      }
    }
  }
}

uint64_t _makeArgsAccessible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  glpCompilerGetAllocator();
  v20.n128_u64[0] = "-1";
  v20.n128_u64[1] = 0xEDA00000002;
  v21 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(v10, &v20, 0);
  *a5 = v11;
  v12 = glpCallNodeGetArgCount(a2);
  if (v12)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      v15 = glpCallNodeGetArg(a2, v13);
      v16 = v15;
      if (a3 && (glpASTNodeGetSaFlags(v15) & 0x1F) == 0)
      {
        glpPushdownPrecision(a1, v16, a3);
      }

      v20.n128_u64[0] = 0;
      glpHandleSideEffectsForExpr(a1, v16, a4, &v20);
      v17 = v20.n128_u64[0];
      if (v20.n128_u64[0])
      {
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v18, *a5, v17);
      }

      ++v13;
      ++a4;
    }

    while (v14 != v13);
  }

  result = glpCommaExprNodeGetExprCount(*a5);
  if (!result)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t _atomicizeArgs(uint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a2)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a2;
    do
    {
      SaType = glpASTNodeGetSaType(*(a3 + 8 * v9));
      IsAtomic = glpTypeIsAtomic(SaType);
      result = *(a3 + 8 * v9);
      if (IsAtomic)
      {
        v14 = (v10 + 1);
        *(a5 + 8 * v10) = result;
      }

      else
      {
        result = glpGetAccessorCount(result);
        if (result)
        {
          v15 = result;
          v16 = 0;
          do
          {
            Accessor = glpMakeAccessor(v8, *(a3 + 8 * v9), v16);
            result = glpSANode(v8, Accessor);
            v14 = (v10 + 1);
            *(a5 + 8 * v10) = result;
            v16 = (v16 + 1);
            LODWORD(v10) = v10 + 1;
          }

          while (v15 != v16);
        }

        else
        {
          v14 = v10;
        }
      }

      ++v9;
      v10 = v14;
    }

    while (v9 != v11);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  *a4 = v14;
  return result;
}

uint64_t _convertAccesses(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  glpCompilerGetAllocator();
  v27.n128_u64[0] = "-1";
  v27.n128_u64[1] = 0xEDA00000002;
  v28 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(v14, &v27, 0);
  *a6 = v15;
  if (a4)
  {
    v16 = a4;
    do
    {
      SaType = glpASTNodeGetSaType(*a5);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
      v19 = PrimitiveType;
      v20 = glpPrimitiveTypeReplaceScalarType(PrimitiveType, a2);
      if (v19 == v20)
      {
        *a7 = *a5;
      }

      else
      {
        v27.n128_u64[0] = 0;
        v21 = *a5;
        v22 = glpGetPrimitiveType(v20);
        v23 = glpConvert(a1, v21, v22, a3);
        glpHandleSideEffectsForExpr(a1, v23, a7, &v27);
        v24 = v27.n128_u64[0];
        if (v27.n128_u64[0])
        {
          glpCompilerGetAllocator();
          glpCommaExprNodeAddExpr(v25, *a6, v24);
        }
      }

      ++a5;
      ++a7;
      --v16;
    }

    while (v16);
    v15 = *a6;
  }

  result = glpCommaExprNodeGetExprCount(v15);
  if (!result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t _componentwiseConstructor(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  PrimitiveType = glpGetPrimitiveType(a2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___componentwiseConstructor_block_invoke;
  v13[3] = &__block_descriptor_tmp_86;
  v13[4] = a1;
  v13[5] = a6;
  return _constructor(a1, PrimitiveType, a3, a4, a5, v13);
}

void ___componentwiseConstructor_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2000000000;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v17 = ___componentwiseConstructor_block_invoke_2;
  v18 = &unk_278B49E18;
  v15 = *(a1 + 32);
  v21 = v15;
  v19 = v25;
  v20 = v23;
  v22 = a3;
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) == 3)
  {
    AccessorCount = glpGetAccessorCount(a2);
    if (!AccessorCount)
    {
      goto LABEL_13;
    }
  }

  else
  {
    AccessorCount = 1;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = a2;
    if (AccessorCount != 1)
    {
      Accessor = glpMakeAccessor(v15, a2, v7);
      v9 = glpSANode(v15, Accessor);
    }

    ScalarAccessorCount = glpGetScalarAccessorCount(v9);
    if (ScalarAccessorCount)
    {
      v12 = ScalarAccessorCount;
      for (i = 0; i != v12; ++i)
      {
        ScalarAccessor = glpMakeScalarAccessor(v15, v9, i);
        (v17)(v16, ScalarAccessor, (v8 + i));
      }

      v8 += i;
    }

    v7 = (v7 + 1);
  }

  while (v7 != AccessorCount);
LABEL_13:
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

uint64_t ___componentwiseConstructor_block_invoke_2(void *a1, uint64_t a2)
{
  ScalarAccessor = glpMakeScalarAccessor(a1[6], *(a1[7] + 8 * *(*(a1[4] + 8) + 24)), *(*(a1[5] + 8) + 24));
  v5 = a1[8];
  glpCompilerGetAllocator();
  *&v10 = "-1";
  *(&v10 + 1) = 0xEDA00000002;
  v11 = 0xFFFFFFFFLL;
  AssignNode = glpMakeAssignNode(v6, &v10, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, a2);
  glpBinaryOperatorNodeSetRhs(AssignNode, ScalarAccessor);
  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v8, v5, AssignNode);
  LODWORD(a2) = ++*(*(a1[5] + 8) + 24);
  result = glpGetScalarAccessorCount(*(a1[7] + 8 * *(*(a1[4] + 8) + 24)));
  if (a2 >= result)
  {
    ++*(*(a1[4] + 8) + 24);
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

uint64_t ___checkAndSanitizeArrayConstructorCall_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  SaFlags = glpASTNodeGetSaFlags(a3);
  v7 = SaFlags & 0x1F;
  if (v7 != 31)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 24) > v7)
    {
      v7 = *(v8 + 24);
    }

    *(v8 + 24) = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) &= SaFlags;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypesEqual(*(a1 + 48), SaType))
  {
    return 2 * (a2 + 1 == glpArrayTypeGetElementCount(*(a1 + 64)));
  }

  if (!glpTypeGetKind(SaType) && !glpTypeGetKind(*(a1 + 48)) && (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), v12 = glpPrimitiveTypeGetPrimitiveType(*(a1 + 48)), ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(*(a1 + 56)), glpCanConvert(PrimitiveType, v12, ImplicitConversionPolicy)))
  {
    return 2 * (a2 + 1 == glpArrayTypeGetElementCount(*(a1 + 64)));
  }

  else
  {
    return 1;
  }
}

uint64_t _elementwiseConstructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v10 = glpCallNodeGetArgCount(a2);
  MEMORY[0x28223BE20](v10);
  v12 = (v21 - v11);
  bzero(v21 - v11, v13);
  _makeArgsAccessible(a1, a2, a4, v12, v23);
  glpCompilerGetAllocator();
  v15 = v14;
  glpASTNodeGetLocation(a2, v22);
  glpMakeCommaExprNode(v15, v22, 0);
  v17 = v16;
  v18 = v23[0];
  if (v23[0])
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v19, v17, v18);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___elementwiseConstructor_block_invoke;
  v21[3] = &__block_descriptor_tmp_88;
  v21[4] = a1;
  v21[5] = v17;
  v21[6] = v12;
  return _constructor(a1, a3, v17, a4, a5, v21);
}

uint64_t ___elementwiseConstructor_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  result = glpGetAccessorCount(a2);
  if (result)
  {
    v7 = 0;
    v8 = result;
    do
    {
      v9 = a1[4];
      Accessor = glpMakeAccessor(v9, a2, v7);
      v11 = glpSANode(v9, Accessor);
      glpCompilerGetAllocator();
      v13 = v12;
      glpASTNodeGetLocation(a1[5], v17);
      AssignNode = glpMakeAssignNode(v13, v17, 0);
      glpBinaryOperatorNodeSetLhs(AssignNode, v11);
      glpBinaryOperatorNodeSetRhs(AssignNode, *(a1[6] + 8 * v7));
      v15 = glpSANode(a1[4], AssignNode);
      glpCompilerGetAllocator();
      result = glpCommaExprNodeAddExpr(v16, a3, v15);
      ++v7;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t ___checkAndSanitizeStructConstructorCall_block_invoke(void *a1, unsigned int a2, uint64_t a3)
{
  *(*(a1[4] + 8) + 24) &= glpASTNodeGetSaFlags(a3);
  SaType = glpASTNodeGetSaType(a3);
  ElementType = glpAggregateTypeGetElementType(a1[5], a2);
  if (glpTypesEqual(ElementType, SaType))
  {
    return 2 * (a2 + 1 == glpAggregateTypeGetElementCount(a1[5]));
  }

  if (!glpTypeGetKind(SaType) && !glpTypeGetKind(ElementType) && (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), v10 = glpPrimitiveTypeGetPrimitiveType(ElementType), ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1[6]), glpCanConvert(PrimitiveType, v10, ImplicitConversionPolicy)))
  {
    return 2 * (a2 + 1 == glpAggregateTypeGetElementCount(a1[5]));
  }

  else
  {
    return 1;
  }
}

uint64_t glpMakeSourceLocation@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  a4[1] = a2;
  a4[2] = 0;
  *a4 = result;
  *(a4 + 4) = a3;
  return result;
}

char *glpMakeMutableValue(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35[1] = *MEMORY[0x277D85DE8];
  glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize();
  v13 = v12;
  v14 = (*(a1 + 8))(*a1, 16 * v12, "Value");
  bzero(v14, 16 * v13);
  if (a3)
  {
    v16 = v13;
    MEMORY[0x28223BE20](v15);
    v18 = v35 - ((v17 + 15) & 0x7FFFFFFF0);
    bzero(v18, v17);
    glpTypeGetAppleVec4Types(a2, v18, 1, 0, 0, 0, 0, 0, 0);
    v35[0] = &a9;
    if (v16)
    {
      v19 = 0;
      v20 = v14;
      do
      {
        ScalarType = glpPrimitiveTypeGetScalarType(*&v18[4 * v19]);
        ScalarCount = glpPrimitiveTypeGetScalarCount(*&v18[4 * v19]);
        glpPrimitiveTypeGetBytesPerComponent(*&v18[4 * v19]);
        if (ScalarType <= 8)
        {
          if (ScalarType == 1)
          {
            if (ScalarCount)
            {
              v31 = 0;
              do
              {
                v32 = v35[0];
                v35[0] += 8;
                v33 = *v32;
                *&v20[v31] = v33;
                v31 += 4;
              }

              while (4 * ScalarCount != v31);
            }
          }

          else
          {
            if (ScalarType != 5)
            {
LABEL_31:
              abort();
            }

            if (ScalarCount)
            {
              v25 = 0;
              do
              {
                v26 = v35[0];
                v35[0] += 8;
                *&v20[v25] = *v26;
                v25 += 4;
              }

              while (4 * ScalarCount != v25);
            }
          }
        }

        else
        {
          switch(ScalarType)
          {
            case 62:
              if (ScalarCount)
              {
                v27 = 0;
                do
                {
                  v28 = v35[0];
                  v35[0] += 8;
                  *&v20[v27] = *v28;
                  v27 += 8;
                }

                while (8 * ScalarCount != v27);
              }

              break;
            case 36:
              if (ScalarCount)
              {
                v29 = 0;
                do
                {
                  v30 = v35[0];
                  v35[0] += 8;
                  *&v20[v29] = *v30;
                  v29 += 4;
                }

                while (4 * ScalarCount != v29);
              }

              break;
            case 9:
              if (ScalarCount)
              {
                v23 = 0;
                do
                {
                  v24 = v35[0];
                  v35[0] += 8;
                  *&v20[v23] = *v24 != 0;
                  v23 += 4;
                }

                while (4 * ScalarCount != v23);
              }

              break;
            default:
              goto LABEL_31;
          }
        }

        ++v19;
        v20 += 16;
      }

      while (v19 != v16);
    }
  }

  return v14;
}

char *glpCopyValue(uint64_t a1, unsigned int *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MutableValue = glpMakeMutableValue(a1, a2, 0, a4, a5, a6, a7, a8, v12);
  glpCopyValueInto(MutableValue, a2, a3);
  return MutableValue;
}

void *glpCopyValueInto(void *a1, uint64_t a2, const void *a3)
{
  glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize();

  return memcpy(a1, a3, 16 * v5);
}

uint64_t glpCompareValues(char *a1, unsigned int *a2, char *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize();
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = (v17 - v8);
  bzero(v17 - v8, v10);
  glpTypeGetAppleVec4Types(a2, v9, 1, 0, 0, 0, 0, 0, 0);
  v11 = 0;
  if (v7)
  {
    v12 = v7;
    do
    {
      BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(*v9);
      v14 = *v9++;
      ScalarCount = glpPrimitiveTypeGetScalarCount(v14);
      v11 = memcmp(a1, a3, (ScalarCount * BytesPerComponent)) | v11;
      a1 += 16;
      a3 += 16;
      --v12;
    }

    while (v12);
  }

  return v11;
}

BOOL glpValueIsUsableAsSize(unsigned int *a1, _DWORD *a2)
{
  if (glpTypeGetKind(a1))
  {
    return 0;
  }

  if (glpPrimitiveTypeGetPrimitiveType(a1) != 5 || (*a2 & 0x80000000) != 0)
  {
    return glpPrimitiveTypeGetPrimitiveType(a1) == 36;
  }

  return 1;
}

void *glpAppendValueDescriptionToStringBuffer(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize();
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = (&v32 - v8);
  bzero(&v32 - v8, v10);
  glpTypeGetAppleVec4Types(a2, v9, 1, 0, 0, 0, 0, 0, 0);
  glpStringBufferAppendCString(a1, "(");
  if (v7)
  {
    v11 = 0;
    v32 = v7;
    do
    {
      v12 = ", {";
      if (!v11)
      {
        v12 = "{";
      }

      glpStringBufferAppendFormat(a1, "%s", v12);
      ScalarType = glpPrimitiveTypeGetScalarType(v9[v11]);
      ScalarCount = glpPrimitiveTypeGetScalarCount(v9[v11]);
      glpPrimitiveTypeGetBytesPerComponent(v9[v11]);
      if (ScalarType <= 8)
      {
        if (ScalarType == 1)
        {
          if (ScalarCount)
          {
            v28 = 0;
            v29 = 4 * ScalarCount;
            do
            {
              if (v28)
              {
                v30 = ", ";
              }

              else
              {
                v30 = "";
              }

              glpStringBufferAppendFormat(a1, "%s%f (= %a)", v30, *(a3 + v28), *(a3 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        else
        {
          if (ScalarType != 5)
          {
LABEL_49:
            abort();
          }

          if (ScalarCount)
          {
            v19 = 0;
            v20 = 4 * ScalarCount;
            do
            {
              if (v19)
              {
                v21 = ", ";
              }

              else
              {
                v21 = "";
              }

              glpStringBufferAppendFormat(a1, "%s%d", v21, *(a3 + v19));
              v19 += 4;
            }

            while (v20 != v19);
          }
        }
      }

      else
      {
        switch(ScalarType)
        {
          case 62:
            if (ScalarCount)
            {
              v22 = 0;
              v23 = 8 * ScalarCount;
              do
              {
                if (v22)
                {
                  v24 = ", ";
                }

                else
                {
                  v24 = "";
                }

                glpStringBufferAppendFormat(a1, "%s%f (= %a)", v24, *(a3 + v22), *(a3 + v22));
                v22 += 8;
              }

              while (v23 != v22);
            }

            break;
          case 36:
            if (ScalarCount)
            {
              v25 = 0;
              v26 = 4 * ScalarCount;
              do
              {
                if (v25)
                {
                  v27 = ", ";
                }

                else
                {
                  v27 = "";
                }

                glpStringBufferAppendFormat(a1, "%s%u", v27, *(a3 + v25));
                v25 += 4;
              }

              while (v26 != v25);
            }

            break;
          case 9:
            if (ScalarCount)
            {
              v15 = 0;
              v16 = 4 * ScalarCount;
              do
              {
                if (v15)
                {
                  v17 = ", ";
                }

                else
                {
                  v17 = "";
                }

                v18 = "true";
                if (!*(a3 + v15))
                {
                  v18 = "false";
                }

                glpStringBufferAppendFormat(a1, "%s%s", v17, v18);
                v15 += 4;
              }

              while (v16 != v15);
            }

            break;
          default:
            goto LABEL_49;
        }
      }

      glpStringBufferAppendFormat(a1, "}", v32, v33);
      ++v11;
      a3 += 16;
    }

    while (v11 != v32);
  }

  return glpStringBufferAppendCString(a1, ")");
}