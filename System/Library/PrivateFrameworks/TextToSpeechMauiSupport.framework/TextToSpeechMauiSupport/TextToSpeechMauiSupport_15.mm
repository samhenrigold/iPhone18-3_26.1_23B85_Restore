uint64_t abbrtn_sanitizeTokenDCTAndIntTN(uint64_t a1)
{
  v2 = 0;
  v27 = 0;
  v26 = 0;
  v3 = *(*(a1 + 192) + 32);
  v4 = *(v3 + 24);
  if (v4 >= *(v3 + 32))
  {
LABEL_29:
    v15 = *(*(a1 + 192) + 32);
    v16 = *(v15 + 24);
    if (v16 >= *(v15 + 32))
    {
      v6 = 0;
    }

    else
    {
      v17 = 0;
      v6 = 0;
      v18 = 0;
      do
      {
        v26 = *v16;
        v28 = 0;
        v29 = 0;
        v19 = abbrtn_filterLabelByTokenType(v26, 6, &v28 + 1, &v29 + 1, &v29);
        v2 = v19;
        if ((v19 & 0x80000000) != 0 || !HIDWORD(v28))
        {
          if ((v19 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v2 = abbrtn_checkIfBisectedbyTokenType(a1, HIDWORD(v29), v29, 4, &v28);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          if (v28 == 1)
          {
            v20 = v18 - v6;
            v21 = ((v18 - v6) >> 3) + 1;
            if (v21 > v17)
            {
              v22 = 2 * v17;
              if (2 * v17 >= v17 + 1000000)
              {
                v22 = v17 + 1000000;
              }

              if (v22 > v21)
              {
                v21 = v22;
              }

              if (v21 <= 8)
              {
                v17 = 8;
              }

              else
              {
                v17 = v21;
              }

              v6 = OOCAllocator_Realloc(a1 + 152, v6, 8 * v17, &v27);
              v12 = v27;
              if (v27)
              {
                goto LABEL_55;
              }

              v18 = (v6 + (v20 & 0x7FFFFFFF8));
            }

            cstdlib_memcpy(v18++, &v26, 8uLL);
          }
        }

        ++v16;
      }

      while (v16 < *(*(*(a1 + 192) + 32) + 32));
      if (v6 < v18)
      {
        v23 = v6;
        do
        {
          v26 = *v23;
          v24 = LDO_RemoveLabel(*(a1 + 192), v26);
          v2 = LH_ERROR_to_VERROR(v24);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          ++v23;
        }

        while (v23 < v18);
      }
    }

    v12 = v27;
    if (v27)
    {
LABEL_55:
      v2 = LH_ERROR_to_VERROR(v12);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *v4;
      v26 = v8;
      HIDWORD(v29) = 0;
      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 4, 6, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 4, 4, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 6, 4, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
        goto LABEL_11;
      }

      v2 = abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(a1, v8, 6, 6, &v29 + 1);
      if ((v2 & 0x80000000) != 0)
      {
        break;
      }

      if (HIDWORD(v29) == 1)
      {
LABEL_11:
        v9 = v7 - v6;
        v10 = ((v7 - v6) >> 3) + 1;
        if (v10 > v5)
        {
          v11 = 2 * v5;
          if (2 * v5 >= v5 + 1000000)
          {
            v11 = v5 + 1000000;
          }

          if (v11 > v10)
          {
            v10 = v11;
          }

          if (v10 <= 8)
          {
            v5 = 8;
          }

          else
          {
            v5 = v10;
          }

          v6 = OOCAllocator_Realloc(a1 + 152, v6, 8 * v5, &v27);
          v12 = v27;
          if (v27)
          {
            goto LABEL_55;
          }

          v7 = (v6 + (v9 & 0x7FFFFFFF8));
        }

        cstdlib_memcpy(v7++, &v26, 8uLL);
      }

      if (++v4 >= *(*(*(a1 + 192) + 32) + 32))
      {
        if (v6 >= v7)
        {
LABEL_27:
          if (v6)
          {
            OOCAllocator_Free(a1 + 152, v6);
          }

          goto LABEL_29;
        }

        v13 = v6;
        while (1)
        {
          v26 = *v13;
          v14 = LDO_RemoveLabel(*(a1 + 192), v26);
          v2 = LH_ERROR_to_VERROR(v14);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          if (++v13 >= v7)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

LABEL_56:
  if (v6)
  {
    OOCAllocator_Free(a1 + 152, v6);
  }

  return v2;
}

uint64_t abbrtn_compareUtf8Char(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  utf8_getUTF8Char(a1, 0, __s1);
  utf8_getUTF8Char(a2, 0, __s2);
  return cstdlib_strcmp(__s1, __s2);
}

uint64_t getNextTOKEN_INT_TNPos(uint64_t a1, unsigned __int16 *a2, _WORD *a3, uint64_t *a4, unsigned int a5, unsigned int a6, _DWORD *a7)
{
  v25 = 0uLL;
  v26 = 0;
  LDO_GetLabels(*(a1 + 192), &v25);
  v11 = 0;
  __s1 = 0;
  *a7 = 0;
  v12 = v25.n128_u64[1];
  if (v25.n128_u64[1] < v26)
  {
    v24 = 0;
    while (1)
    {
      v22 = 0;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v12);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(*v12);
      Category = LDOObject_GetCategory(*v12, &__s1);
      v11 = LH_ERROR_to_VERROR(Category);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (!cstdlib_strcmp(__s1, "TOKEN"))
      {
        break;
      }

LABEL_5:
      if (++v12 >= v26)
      {
        return v11;
      }
    }

    if (AbsoluteFrom >= a5)
    {
      if (AbsoluteTo > a6)
      {
        goto LABEL_12;
      }
    }

    else if (AbsoluteTo <= a5 || AbsoluteTo >= a6)
    {
LABEL_12:
      if (AbsoluteFrom <= a5 || AbsoluteFrom >= a6 || AbsoluteTo <= a6)
      {
        goto LABEL_5;
      }
    }

    U32Attribute = LDOObject_GetU32Attribute(*v12, "_TTYPE", &v22 + 1, &v24);
    v11 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    if (v24 == 6)
    {
      StringAttribute = LDOObject_GetStringAttribute(*v12, "TNTAG", &v22, a4);
      v11 = LH_ERROR_to_VERROR(StringAttribute);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      if (v22 == 1)
      {
        if (AbsoluteFrom >= a5 || AbsoluteTo <= a5 || (v18 = a5, AbsoluteTo >= a6))
        {
          v18 = AbsoluteFrom;
        }

        *a2 = v18;
        if (AbsoluteFrom <= a5 || AbsoluteFrom >= a6 || AbsoluteTo <= a6)
        {
          LOWORD(a6) = AbsoluteTo;
        }

        *a3 = a6;
        *a7 = 1;
        return v11;
      }
    }

    goto LABEL_5;
  }

  return v11;
}

uint64_t addToLayer(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char *a5, char *a6, unsigned __int8 *a7)
{
  v8 = *(a1 + 96);
  if (a5)
  {
    cstdlib_strcat(v8, "§");
    cstdlib_strcat(*(a1 + 96), a5);
    v12 = cstdlib_strlen(a6);
    v13 = Utf8_LengthInUtf8chars(a6, v12);
    v14 = cstdlib_strlen(a5);
    v15 = Utf8_LengthInUtf8chars(a5, v14);
    if (v13 > v15)
    {
      v16 = v13 - v15;
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = *a7;
        do
        {
          if (v18 > 0x13u)
          {
            break;
          }

          cstdlib_strcat(*(a1 + 96), "~");
          ++v17;
          v18 = *a7 + 1;
          *a7 = v18;
        }

        while (v16 > v17);
      }
    }

    cstdlib_strcat(*(a1 + 96), "§");
    cstdlib_strcat(*(a1 + 104), "§");
    cstdlib_strcat(*(a1 + 104), a6);
    v19 = cstdlib_strlen(a5);
    v20 = Utf8_LengthInUtf8chars(a5, v19);
    v21 = cstdlib_strlen(a6);
    v22 = Utf8_LengthInUtf8chars(a6, v21);
    if (v20 > v22)
    {
      v23 = v20 - v22;
      if (v23 >= 1)
      {
        v24 = 0;
        do
        {
          cstdlib_strcat(*(a1 + 104), "~");
          ++v24;
        }

        while (v23 > v24);
      }
    }

    v25 = *(a1 + 104);

    return cstdlib_strcat(v25, "§");
  }

  else
  {
    result = cstdlib_strncat(v8, (a2 + a3), a4 - a3);
    v30 = 0;
    if (a3)
    {
      v31 = 0;
      do
      {
        result = *(a2 + v31);
        if (!*(a2 + v31))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v31 += result;
        ++v30;
      }

      while (a3 > v31);
    }

    v32 = 0;
    if (a4)
    {
      v33 = 0;
      do
      {
        result = *(a2 + v33);
        if (!*(a2 + v33))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v33 += result;
        ++v32;
      }

      while (a4 > v33);
    }

    for (; v30 < v32; ++v30)
    {
      result = cstdlib_strcat(*(a1 + 104), " ");
    }
  }

  return result;
}

uint64_t abbrtn_checkIfLabelSpanIsStrictlyContainedInOtherLabelSpan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a4;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  *a5 = 0;
  result = abbrtn_filterLabelByTokenType(a2, a3, &v16 + 1, &v16, &v15 + 1);
  if ((result & 0x80000000) == 0)
  {
    if (HIDWORD(v16))
    {
      v9 = *(*(a1 + 192) + 32);
      v10 = *(v9 + 24);
      if (v10 < *(v9 + 32))
      {
        v12 = HIDWORD(v15);
        v11 = v16;
        do
        {
          result = abbrtn_filterLabelByTokenType(*v10, v6, &v16 + 1, &v15, &v14);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (HIDWORD(v16) == 1)
          {
            v13 = v11 < v15 || v12 >= v14;
            if (!v13 || v11 > v15 && v12 <= v14)
            {
              *a5 = 1;
              return result;
            }
          }

          ++v10;
        }

        while (v10 < *(*(*(a1 + 192) + 32) + 32));
      }
    }
  }

  return result;
}

uint64_t abbrtn_filterLabelByTokenType(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v13 = 0;
  *a3 = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  U32Attribute = LDOObject_GetU32Attribute(a1, "_TTYPE", &v13 + 1, &v13);
  v11 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v11 & 0x80000000) == 0 && HIDWORD(v13) && v13 == a2)
  {
    *a3 = 1;
    *a4 = LDOLabel_GetAbsoluteFrom(a1);
    *a5 = LDOLabel_GetAbsoluteTo(a1);
  }

  return v11;
}

uint64_t abbrtn_deallocate_LuaVM(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result, v3);
    *a2 = 0;
  }

  return result;
}

uint64_t abbrtn_load_lua_code(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v16 = 0;
  if (*a4)
  {
    OOC_PlacementDeleteObject(a3, *a4);
    *a4 = 0;
  }

  IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, 0, &v16);
  v9 = LH_ERROR_to_VERROR(IsLuaCodeAvailable);
  v10 = v16;
  if ((v9 & 0x80000000) != 0 || v16 != 1)
  {
LABEL_8:
    if ((v9 & 0x80000000) == 0 && v10)
    {
      return v9;
    }

    goto LABEL_12;
  }

  v16 = 0;
  v11 = PNEW_LuaVMLDO_Con(a3, a3, a1, a2, "FE_ABBRTN", a4);
  v12 = LH_ERROR_to_VERROR(v11);
  if ((v12 & 0x80000000) == 0)
  {
    ScriptFromRIFF = LuaVMLDO_LoadScriptFromRIFF(*a4, 0);
    v12 = LH_ERROR_to_VERROR(ScriptFromRIFF);
    if ((v12 & 0x80000000) == 0)
    {
      IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(*a4, "runAbbrtn", &v16);
      v9 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
      v10 = v16;
      goto LABEL_8;
    }
  }

  v9 = v12;
LABEL_12:
  if (*a4)
  {
    OOC_PlacementDeleteObject(a3, *a4);
    *a4 = 0;
  }

  return v9;
}

uint64_t abbrtn_dumpNodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  v25 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpNodes : %s : Start", a5);
  v9 = LDO_ComputeText(a3, &v25);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    v24 = a4;
    v11 = LHString_BorrowCPtr(v25);
    log_OutText(*(a1 + 32), a2, 4, 0, "LDO text |%s|", v11);
    v12 = *(a3 + 16);
    v13 = *(v12 + 80);
    if (v13 >= *(v12 + 88))
    {
LABEL_13:
      log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpNodes : End", 0);
    }

    else
    {
      v14 = 0;
      while (1)
      {
        v15 = LDOTreeNode_ComputeAbsoluteFrom(*v13, &v27);
        v16 = LH_ERROR_to_VERROR(v15);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        v17 = LDOTreeNode_ComputeAbsoluteTo(*v13, &v26 + 1);
        v16 = LH_ERROR_to_VERROR(v17);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        U32Attribute = LDOObject_GetU32Attribute(*v13, "_TTYPE", &v27 + 1, &v26);
        v10 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        if (HIDWORD(v27) == 1)
        {
          v19 = v26;
          v20 = (HIDWORD(v26) - v27);
          if (v20 < 0x80)
          {
            cstdlib_strncpy(__dst, &v11[v27], v20);
            v22 = HIDWORD(v26);
            v21 = v27;
            __dst[(HIDWORD(v26) - v27)] = 0;
          }

          else
          {
            cstdlib_strcpy(__dst, "(TOKEN TOO LONG)");
            v22 = HIDWORD(v26);
            v21 = v27;
          }

          log_OutText(*(a1 + 32), a2, 4, 0, "[%d] %s %d,%d |%s|", v14++, TOKENTSTR[v19], v21, v22, __dst);
        }

        if (++v13 >= *(v12 + 88))
        {
          goto LABEL_13;
        }
      }

      v10 = v16;
    }

LABEL_15:
    a4 = v24;
  }

  if (v25)
  {
    OOC_PlacementDeleteObject(a4, v25);
  }

  return v10;
}

uint64_t abbrtn_dumpLabels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : %s : Start", a5);
  v9 = LDO_ComputeText(a3, &v37);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

  v33 = a4;
  v32 = LHString_BorrowCPtr(v37);
  log_OutText(*(a1 + 32), a2, 4, 0, "LDO text |%s|", v32);
  v11 = *(a3 + 32);
  v12 = *(v11 + 24);
  if (v12 >= *(v11 + 32))
  {
LABEL_36:
    log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : End", 0);
    goto LABEL_38;
  }

  v13 = 0;
  v14 = "_TTYPE";
  v34 = a3;
  while (1)
  {
    v15 = *v12;
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v12);
    AbsoluteTo = LDOLabel_GetAbsoluteTo(v15);
    U32Attribute = LDOObject_GetU32Attribute(v15, v14, &v38, &v38 + 1);
    v19 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if (v38 == 1)
    {
      v20 = v14;
      v21 = HIDWORD(v38);
      v22 = AbsoluteTo - AbsoluteFrom;
      if (AbsoluteTo == AbsoluteFrom)
      {
        v23 = "NULL";
        goto LABEL_10;
      }

      if (v22 < 0x80)
      {
        cstdlib_strncpy(__dst, &v32[AbsoluteFrom], (AbsoluteTo - AbsoluteFrom));
        __dst[v22] = 0;
      }

      else
      {
        v23 = "(TOKEN TOO LONG)";
LABEL_10:
        cstdlib_strcpy(__dst, v23);
      }

      if (v21 <= 5)
      {
        if (v21 != 4)
        {
          if (v21 == 5)
          {
            StringAttribute = LDOObject_GetStringAttribute(v15, "TNTAG", &v38, &v36);
            v19 = LH_ERROR_to_VERROR(StringAttribute);
            if ((v19 & 0x80000000) != 0)
            {
              break;
            }

            v14 = v20;
            v27 = *(a1 + 32);
            if (v38 == 1)
            {
              log_OutText(v27, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (%s)", v13, AbsoluteFrom);
            }

            else
            {
              log_OutText(v27, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (no TNTAG)", v13);
            }

            goto LABEL_31;
          }

          goto LABEL_27;
        }

        log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_DCT %d,%d |%s|", v13);
      }

      else
      {
        switch(v21)
        {
          case 8:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_DEPES %d,%d |%s|", v13);
            break;
          case 7:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN_CASEGENDER %d,%d |%s|", v13);
            break;
          case 6:
            v24 = LDOObject_GetStringAttribute(v15, "LANGMAP", &v38, &v35);
            v19 = LH_ERROR_to_VERROR(v24);
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_37;
            }

            v14 = v20;
            v25 = *(a1 + 32);
            if (v38 == 1)
            {
              log_OutText(v25, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s| LANGMAP=%s", v13, AbsoluteFrom);
            }

            else
            {
              log_OutText(v25, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s|", v13);
            }

            goto LABEL_31;
          default:
LABEL_27:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN type=%d %d,%d |%s|", v13, HIDWORD(v38));
            break;
        }
      }

      v14 = v20;
LABEL_31:
      a3 = v34;
    }

    v28 = LDOObject_GetU32Attribute(v15, "_MTYPE", &v38, &v38 + 1);
    v10 = LH_ERROR_to_VERROR(v28);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    if (v38 == 1)
    {
      v29 = *(a1 + 32);
      String = marker_getString(SHIDWORD(v38));
      log_OutText(v29, a2, 4, 0, "[%d] MARKER %s %d,%d", v13, String, AbsoluteFrom, AbsoluteTo);
    }

    ++v13;
    if (++v12 >= *(*(a3 + 32) + 32))
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  v10 = v19;
LABEL_38:
  a4 = v33;
LABEL_39:
  if (v37)
  {
    OOC_PlacementDeleteObject(a4, v37);
  }

  return v10;
}

uint64_t abbrtn_process_ldo_with_lua(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v10 = LDO_ComputeText(a3, &v17);
  v11 = LH_ERROR_to_VERROR(v10);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = LHString_BorrowCPtr(v17);
    if (v12)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "LDO sentence: %s", v12);
      v13 = abbrtn_dumpNodes(a1, a2, a3, a4, "abbrtn: before Lua");
      if ((v13 & 0x80000000) != 0 || (v13 = abbrtn_dumpLabels(a1, a2, a3, a4, "abbrtn: before Lua"), (v13 & 0x80000000) != 0))
      {
LABEL_8:
        v11 = v13;
        goto LABEL_9;
      }

      v14 = LuaVMLDO_RunFunction(a5, "runAbbrtn", a3);
      v15 = LH_ERROR_to_VERROR(v14);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = abbrtn_dumpNodes(a1, a2, a3, a4, "abbrtn: after Lua");
        if ((v13 & 0x80000000) == 0)
        {
          v13 = abbrtn_dumpLabels(a1, a2, a3, a4, "abbrtn: after Lua");
        }

        goto LABEL_8;
      }

      v11 = v15;
      log_OutPublic(*(a1 + 32), a2, 32004, 0);
    }
  }

LABEL_9:
  if (v17)
  {
    OOC_PlacementDeleteObject(a4, v17);
  }

  return v11;
}

uint64_t fe_abbrtn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2310021121;
  }

  result = 0;
  *a2 = &IFeAbbrtn;
  return result;
}

uint64_t fe_abbrtn_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2310021127;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_abbrtn_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v28 = 0;
  v29 = 0;
  v5 = 2310021127;
  v26 = 0;
  v27 = 0;
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v29);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v29[6], "LINGDB", &v28);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v29[6], "FE_DCTLKP", &v27);
  v13 = v29[6];
  if ((Object & 0x80000000) != 0)
  {
    v24 = "LINGDB";
LABEL_13:
    objc_ReleaseObject(v13, v24);
    return Object;
  }

  v14 = objc_GetObject(v13, "FE_DEPES", &v26);
  if ((v14 & 0x80000000) != 0)
  {
    Object = v14;
    objc_ReleaseObject(v29[6], "LINGDB");
    v13 = v29[6];
    v24 = "FE_DCTLKP";
    goto LABEL_13;
  }

  v15 = heap_Alloc(v29[1], 216);
  if (v15)
  {
    v16 = v15;
    *v15 = a1;
    *(v15 + 8) = a2;
    v18 = v28;
    v17 = v29;
    *(v15 + 16) = v29;
    *(v15 + 24) = a3;
    *(v15 + 32) = a4;
    *(v15 + 40) = *(v18 + 8);
    v19 = v26;
    v20 = v27;
    *(v15 + 64) = *(v27 + 8);
    *(v15 + 48) = *(v20 + 16);
    *(v15 + 88) = *(v19 + 8);
    v21 = *(v19 + 16);
    *(v15 + 120) = heap_Alloc;
    *(v15 + 72) = v21;
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    *(v15 + 192) = 0;
    *(v15 + 200) = 0;
    *(v15 + 208) = "FE_ABBRTN";
    *(v15 + 128) = heap_Calloc;
    *(v15 + 136) = heap_Realloc;
    *(v15 + 144) = heap_Free;
    v22 = OOCAllocator_Con(v15 + 152, (v15 + 120), v17[1]);
    v23 = LH_ERROR_to_VERROR(v22);
    if ((v23 & 0x80000000) != 0)
    {
      v5 = v23;
      log_OutPublic(v29[4], "FE_ABBRTN", 32003, 0);
LABEL_17:
      fe_abbrtn_ObjClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    *a5 = v16;
    *(a5 + 8) = 62338;
    v5 = fe_abbrtn_ObjReopen(v16, *(a5 + 8));
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    log_OutPublic(v29[4], "FE_ABBRTN", 32000, 0);
    objc_ReleaseObject(v29[6], "LINGDB");
    objc_ReleaseObject(v29[6], "FE_DCTLKP");
    objc_ReleaseObject(v29[6], "FE_DEPES");
    return 2310021130;
  }

  return v5;
}

uint64_t fe_abbrtn_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    abbrtn_deallocate_LuaVM(a1 + 152, (a1 + 200));
    OOCAllocator_Des();
    objc_ReleaseObject(*(*(a1 + 16) + 48), "LINGDB");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DEPES");
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_abbrtn_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (!a1)
  {
    return result;
  }

  *(a1 + 112) = 1;
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  result = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "fecfg", "nrpart_tn", &__c[3], &__c[1], __c);
  if ((result & 0x80000000) != 0 || !*&__c[1])
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    v4 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v4)
    {
      *v4 = 0;
    }

    *(a1 + 112) = cstdlib_atoi(**&__c[3]);
  }

  abbrtn_deallocate_LuaVM(a1 + 152, (a1 + 200));
  return abbrtn_load_lua_code(*(a1 + 24), *(a1 + 32), a1 + 152, (a1 + 200));
}

uint64_t fe_abbrtn_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2310021128;
  }
}

uint64_t fe_abbrtn_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v43 = 0;
  __s1 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  __src = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 216) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a5 = 1;
  v9 = LingDBHasSentence(a1[5], a3, a4, &v41);
  v10 = 0;
  if ((v9 & 0x80000000) != 0 || v41 != 1)
  {
LABEL_47:
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  inited = initLDO((a1 + 19), a1 + 24);
  if ((inited & 0x80000000) != 0)
  {
LABEL_44:
    v9 = inited;
    goto LABEL_45;
  }

  v9 = importFromLingDB(a1[2], a1[5], a3, a4, a1 + 24);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_45:
    v10 = 0;
    goto LABEL_51;
  }

  v12 = a1[24];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_47;
  }

  v13 = LDO_ComputeText(v12, &v40);
  inited = LH_ERROR_to_VERROR(v13);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v14 = LHString_BorrowCPtr(v40);
  v15 = *(a1[24] + 32);
  v16 = *(v15 + 24);
  if (v16 >= *(v15 + 32))
  {
    v10 = 0;
  }

  else
  {
    v37 = v14;
    v17 = 0;
    v10 = 0;
    v18 = 0;
    do
    {
      v19 = *v16;
      __src = v19;
      if (*(v19 + 104))
      {
        LODWORD(v39) = 0;
        U32Attribute = LDOObject_GetU32Attribute(v19, "_TTYPE", &v39, &v39 + 1);
        v9 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_51;
        }

        if (v39 == 1 && HIDWORD(v39) == 5)
        {
          v22 = v17 - v10;
          v23 = ((v17 - v10) >> 3) + 1;
          if (v23 > v18)
          {
            v24 = 2 * v18;
            if (2 * v18 >= v18 + 1000000)
            {
              v24 = v18 + 1000000;
            }

            if (v24 > v23)
            {
              v23 = v24;
            }

            if (v23 <= 8)
            {
              v18 = 8;
            }

            else
            {
              v18 = v23;
            }

            v25 = OOCAllocator_Realloc((a1 + 19), v10, 8 * v18, &v43);
            v10 = v25;
            if (v43)
            {
              goto LABEL_47;
            }

            v17 = (v25 + (v22 & 0x7FFFFFFF8));
          }

          cstdlib_memcpy(v17++, &__src, 8uLL);
        }
      }

      ++v16;
    }

    while (v16 < *(*(a1[24] + 32) + 32));
    if (v10 < v17)
    {
      v26 = v10;
      do
      {
        v27 = *v26;
        __src = v27;
        if (*(v27 + 104))
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v27);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(__src);
          StringAttribute = LDOObject_GetStringAttribute(__src, "TNTAG", &v39, &__s1);
          v31 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v31 & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          if (!cstdlib_strstr(__s1, "spell"))
          {
            if (cstdlib_strcmp(__s1, "phon"))
            {
              if (!cstdlib_strstr(__s1, "prompt") && !cstdlib_strstr(__s1, "raw") && !cstdlib_strstr(__s1, "RAW") && !cstdlib_strstr(__s1, "internal-nuance-system-norm"))
              {
                v31 = abbrtn_TnLookup(a1, v37, AbsoluteFrom, AbsoluteTo, __s1, __src);
                if ((v31 & 0x80000000) != 0)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }

        ++v26;
      }

      while (v26 < v17);
    }
  }

  v31 = abbrtn_sanitizeTokenDCTAndIntTN(a1);
  if ((v31 & 0x80000000) != 0 || (v36 = a1[25]) != 0 && (v31 = abbrtn_process_ldo_with_lua(a1[2], a1[26], a1[24], (a1 + 19), v36), (v31 & 0x80000000) != 0))
  {
LABEL_50:
    v9 = v31;
    goto LABEL_51;
  }

  v9 = exportToLingDB(a1[2], a1[5], a3, a4, (a1 + 19), a1[24], 1, 0);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (v43)
  {
    v31 = LH_ERROR_to_VERROR(v43);
    goto LABEL_50;
  }

LABEL_51:
  v32 = a1[12];
  if (v32)
  {
    heap_Free(*(a1[2] + 8), v32);
    a1[12] = 0;
  }

  v33 = a1[13];
  if (v33)
  {
    heap_Free(*(a1[2] + 8), v33);
    a1[13] = 0;
  }

  if (v40)
  {
    OOC_PlacementDeleteObject((a1 + 19), v40);
    v40 = 0;
  }

  if (v10)
  {
    OOCAllocator_Free((a1 + 19), v10);
  }

  v34 = a1[24];
  if (v34)
  {
    deinitLDO((a1 + 19), v34);
    a1[24] = 0;
  }

  return v9;
}

uint64_t fe_abbrtn_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62338, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2310021128;
  }
}

uint64_t fe_dctlkp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t *a5)
{
  v25 = 0;
  v26 = 0;
  CanonMap = 2306875402;
  v23 = 0;
  if (!a5)
  {
    return 2306875399;
  }

  memset(__c, 0, sizeof(__c));
  *a5 = 0;
  *(a5 + 2) = 0;
  inited = InitRsrcFunction(a3, a4, &v26);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(v26[4], "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjOpen");
  inited = objc_GetObject(v26[6], "LINGDB", &v25);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = heap_Calloc(v26[1], 1, 4032);
  if (v8)
  {
    v9 = v8;
    *a5 = v8;
    *(a5 + 2) = 62335;
    *(v8 + 648) = *(v25 + 8);
    v10 = v26;
    *v8 = v26;
    *(v8 + 1712) = 1;
    *(v8 + 2996) = 1;
    *(v8 + 576) = 0;
    *(v8 + 568) = 0;
    *(v8 + 80) = 0;
    *(v8 + 160) = 0;
    *(v8 + 240) = 0;
    *(v8 + 320) = 0;
    *(v8 + 400) = 0;
    *(v8 + 480) = 0;
    *(v8 + 560) = 0;
    set_DctBrk(v8 + 16, *(v10 + 24));
    set_DctBrk(v9 + 96, v26[3]);
    set_DctBrk(v9 + 176, v26[3]);
    set_DctBrk(v9 + 256, v26[3]);
    set_DctBrk(v9 + 336, v26[3]);
    set_DctBrk(v9 + 416, v26[3]);
    set_DctBrk(v9 + 496, v26[3]);
    *(v9 + 64) = 0;
    *(v9 + 144) = 0;
    *(v9 + 224) = 0;
    *(v9 + 304) = 0;
    *(v9 + 384) = 0;
    *(v9 + 464) = 0;
    *(v9 + 544) = 0;
    *(v9 + 72) = 0;
    *(v9 + 152) = 0;
    *(v9 + 232) = 0;
    *(v9 + 312) = 0;
    *(v9 + 392) = 0;
    *(v9 + 472) = 0;
    *(v9 + 552) = 0;
    if ((hlp_CreateBrokerString(v26, (v9 + 1714), 0) & 0x80000000) != 0 || (open_DctRom((v9 + 16), v9 + 1714, (v9 + 8)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateBrokerString(v26, (v9 + 1714), 1);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      BrokerString = open_DctRom((v9 + 16), v9 + 1714, (v9 + 8));
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_49;
      }
    }

    if ((hlp_CreateVoiceBrokerString(v26, (v9 + 1970), 1) & 0x80000000) != 0 || (open_DctRom((v9 + 336), v9 + 1970, (v9 + 328)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateVoiceBrokerString(v26, (v9 + 1970), 0);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      if ((open_DctRom((v9 + 336), v9 + 1970, (v9 + 328)) & 0x80000000) != 0)
      {
        *(v9 + 328) = 0;
      }
    }

    v12 = 0;
    if ((paramc_ParamGetStr(*(*v9 + 40), "clcpppipelinemode", &v23) & 0x80000000) == 0 && v23)
    {
      v12 = *v23 != 0;
    }

    v13 = open_DctRom((v9 + 96), "sysdct", (v9 + 88));
    CanonMap = v13;
    if (!v12 && (v13 & 0x80000000) != 0)
    {
      *(v9 + 88) = 0;
      log_OutPublic(*(*v9 + 32), "FE_DCTLKP", 41005, "%s");
      goto LABEL_51;
    }

    v14 = !v12;
    if (v13 >= 0)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      *(v9 + 88) = 0;
    }

    v15 = open_DctRom((v9 + 176), "lid", (v9 + 168));
    v16 = v15 >= 0 || v12;
    if ((v16 & 1) == 0)
    {
      CanonMap = v15;
      *(v9 + 168) = 0;
      log_OutPublic(*(*v9 + 32), "FE_DCTLKP", 41007, "%s");
      goto LABEL_51;
    }

    v17 = !v12;
    if (v15 >= 0)
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      *(v9 + 168) = 0;
    }

    if ((open_DctRom((v9 + 416), "clmnn:clmnndic", (v9 + 408)) & 0x80000000) != 0)
    {
      *(v9 + 408) = 0;
    }

    hlp_OpenMl2Dct(v26, v9);
    BrokerString = hlp_OpenExtDct(*a5, a5[1], v9);
    if ((BrokerString & 0x80000000) == 0)
    {
      *&__c[1] = -1;
      BrokerString = loc_fe_dctlkp_LookupUtf(*a5, a5[1], "fecfg", "punc", &__c[3], &__c[1], __c, 0);
      if ((BrokerString & 0x80000000) == 0)
      {
        if (*&__c[3])
        {
          v18 = cstdlib_strchr(**&__c[3], __c[0]);
          if (v18)
          {
            *v18 = 0;
          }

          v19 = v26[1];
          v20 = cstdlib_strlen(**&__c[3]);
          v21 = heap_Alloc(v19, (v20 + 1));
          *(v9 + 584) = v21;
          if (v21)
          {
            cstdlib_strcpy(v21, **&__c[3]);
            *&__c[1] = -1;
            BrokerString = loc_fe_dctlkp_LookupUtf(*a5, a5[1], "fecfg", "canonmapdomain", &__c[3], &__c[1], __c, 0);
            if ((BrokerString & 0x80000000) == 0)
            {
              if (*&__c[1])
              {
                *(v9 + 2996) = 0;
              }

              BrokerString = loc_fe_dctlkp_getDomainTokenDefs(*a5, a5[1], v9);
              if ((BrokerString & 0x80000000) == 0)
              {
                cstdlib_strcpy((v9 + 2738), "normal");
                *(v9 + 664) = 0;
                *(v9 + 3000) = 0;
                CanonMap = LoadCanonMap(*a5, a5[1], "normal");
                if ((CanonMap & 0x80000000) == 0)
                {
LABEL_52:
                  log_OutText(v26[4], "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjOpen");
                  return CanonMap;
                }

LABEL_51:
                fe_dctlkp_ObjClose(*a5, a5[1]);
                *a5 = 0;
                *(a5 + 2) = 0;
                goto LABEL_52;
              }
            }

            goto LABEL_49;
          }

          log_OutPublic(*(*v9 + 32), "FE_DCTLKP", 41000, 0);
        }

        CanonMap = 2306875402;
        goto LABEL_51;
      }
    }

LABEL_49:
    CanonMap = BrokerString;
    goto LABEL_51;
  }

  log_OutPublic(v26[4], "FE_DCTLKP", 41000, 0);
  objc_ReleaseObject(v26[6], "LINGDB");
  return CanonMap;
}

uint64_t hlp_CreateBrokerString(uint64_t a1, _BYTE *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = "";
  __s2 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "sysdct/");
    cstdlib_strcat(__dst, __s2);
    if (!a3)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      cstdlib_strcat(__dst, "/");
      cstdlib_strcat(__dst, v7);
    }

    return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, __s2, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t hlp_CreateVoiceBrokerString(uint64_t a1, _BYTE *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__dst = 0u;
  v11 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v8);
    if ((result & 0x80000000) == 0)
    {
      if (a3)
      {
        if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v7) & 0x80000000) != 0)
        {
          v7 = 0;
        }
      }

      cstdlib_strcpy(__dst, "voicedct");
      return brokeraux_ComposeBrokerString(a1, __dst, 1, 1, v9, v8, v7, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t hlp_OpenMl2Dct(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__dst = 0u;
  v7 = 0u;
  __s2 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, "ml2dct");
    cstdlib_strcat(__dst, __s2);
    result = brokeraux_ComposeBrokerString(a1, __dst, 1, 0, __s2, 0, 0, (a2 + 2226), 0x100uLL);
    if ((result & 0x80000000) == 0)
    {
      result = open_DctRom((a2 + 256), a2 + 2226, (a2 + 248));
      if ((result & 0x80000000) != 0)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v8 = 0u;
        v9 = 0u;
        *__dst = 0u;
        v7 = 0u;
        __s2 = 0;
        result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
        if ((result & 0x80000000) == 0)
        {
          cstdlib_strcpy(__dst, "ml2dct");
          result = brokeraux_ComposeBrokerString(a1, __dst, 1, 0, __s2, 0, 0, (a2 + 2226), 0x100uLL);
          if ((result & 0x80000000) == 0)
          {
            result = open_DctRom((a2 + 256), a2 + 2226, (a2 + 248));
            if ((result & 0x80000000) != 0)
            {
              *(a2 + 248) = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_OpenExtDct(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v38 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v28 = 0;
  *(a3 + 122) = 0;
  if ((paramc_ParamGetStr(*(*a3 + 40), "clcpppipelinemode", &v28) & 0x80000000) == 0 && v28 && *v28)
  {
    return 0;
  }

  v6 = loc_fe_dctlkp_LookupUtf(a1, v4, "fecfg", "extdctlkp_extlangcode", &__c[3], &__c[1], __c, 0);
  if ((v6 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    v8 = *(*a3 + 8);
    v9 = cstdlib_strlen(**&__c[3]);
    v10 = heap_Alloc(v8, (v9 + 1));
    if (v10)
    {
      v11 = v10;
      cstdlib_strcpy(v10, **&__c[3]);
      v12 = *a3;
      __s1[0] = 0;
      if ((paramc_ParamGetStr(v12[5], "extclccfg", __s1) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      if (!__s1[0])
      {
        goto LABEL_23;
      }

      if (!*__s1[0])
      {
        goto LABEL_23;
      }

      v13 = cstdlib_strlen(v11);
      v14 = __s1[0];
      if (!__s1[0])
      {
        goto LABEL_23;
      }

      v15 = v13;
      while (cstdlib_strncmp(v14, v11, v15))
      {
        v16 = cstdlib_strchr(v14, 44);
        v14 = v16 + 1;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      v17 = cstdlib_strchr(v14, 47);
      if (v17 && (v18 = cstdlib_strchr(v17 + 1, 47)) != 0)
      {
        v19 = v18 + 1;
        v20 = cstdlib_strchr(v18 + 1, 44);
        if (v20)
        {
          v21 = v20 - v19;
        }

        else
        {
          v21 = cstdlib_strlen(v19);
        }

        v24 = v21;
        v25 = heap_Alloc(v12[1], v21 + 1);
        v22 = v25;
        if (v25)
        {
          cstdlib_strncpy(v25, v19, v24);
          cstdlib_strcpy(&v22[v24], "");
          v26 = *a3;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          *__s1 = 0u;
          v31 = 0u;
          cstdlib_strcpy(__s1, "sysdct/");
          cstdlib_strcat(__s1, v11);
          cstdlib_strcat(__s1, "/");
          cstdlib_strcat(__s1, v22);
          v27 = brokeraux_ComposeBrokerStringEx(v26, __s1, 1, 1, v11, 0, 0, v22, a3 + 2482, 0x100uLL);
          if ((v27 & 0x80000000) == 0)
          {
            v27 = open_DctRom(a3 + 62, (a3 + 2482), a3 + 122);
          }

          v6 = v27;
        }

        else
        {
          v6 = 2306875402;
          log_OutPublic(v12[4], "FE_DCTLKP", 41000, 0);
        }
      }

      else
      {
LABEL_23:
        log_OutText(*(*a3 + 32), "FE_DCTLKP", 1, 0, "Monolingual configuration, no extclccfg");
        v22 = 0;
        v6 = 0;
      }

      heap_Free(*(*a3 + 8), v11);
      if (v22)
      {
        heap_Free(*(*a3 + 8), v22);
      }
    }

    else
    {
      v6 = 2306875402;
      log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41000, 0);
    }
  }

  return v6;
}

uint64_t loc_fe_dctlkp_getDomainTokenDefs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 1696) = 0;
  *&__c[1] = -1;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "domdef", &__c[3], &__c[1], __c, 0);
  if ((v6 & 0x80000000) != 0 || *&__c[1] != 1)
  {
    return v6;
  }

  cstdlib_strcpy(__dst, **&__c[3]);
  v7 = cstdlib_strchr(__dst, __c[0]);
  if (v7)
  {
    *v7 = 0;
  }

  if (cstdlib_strlen(**&__c[3]) <= 0xFF)
  {
    if (!__dst[0])
    {
      return v6;
    }

    v8 = 0;
    while (1)
    {
      for (i = v8; ; i = v10 + 1)
      {
        v10 = i;
        v11 = __dst[i];
        if (!v11 || v11 == 44)
        {
          break;
        }
      }

      if (v10 != v8)
      {
        v12 = v10 - v8;
        cstdlib_strncpy(__s, &__dst[v8], v12);
        __s[v12] = 0;
        if (*(a3 + 1696))
        {
          v13 = heap_Realloc(*(*a3 + 8), *(a3 + 1704), 32 * *(a3 + 1696) + 32);
          if (!v13)
          {
            return 2306875402;
          }

          *(a3 + 1704) = v13;
        }

        else
        {
          v13 = heap_Calloc(*(*a3 + 8), 32, 1);
          *(a3 + 1704) = v13;
          if (!v13)
          {
            return 2306875402;
          }
        }

        v14 = (v13 + 32 * *(a3 + 1696));
        *v14 = 0u;
        v14[1] = 0u;
        v15 = *(*a3 + 8);
        v16 = cstdlib_strlen(__s);
        v17 = heap_Calloc(v15, (v16 + 1), 1);
        v18 = *(a3 + 1696);
        *(*(a3 + 1704) + 32 * v18) = v17;
        if (!v17)
        {
          *(a3 + 1696) = v18 + 1;
          return 2306875402;
        }

        cstdlib_strcpy(v17, __s);
        TokenDef = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __s, "_alpha", (*(a3 + 1704) + 32 * *(a3 + 1696) + 8));
        if ((TokenDef & 0x80000000) != 0 || (TokenDef = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __s, "_digit", (*(a3 + 1704) + 32 * *(a3 + 1696) + 16)), (TokenDef & 0x80000000) != 0))
        {
          v6 = TokenDef;
LABEL_30:
          ++*(a3 + 1696);
          return v6;
        }

        v6 = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __s, "_punc", (*(a3 + 1704) + 32 * *(a3 + 1696) + 24));
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v20 = *(a3 + 1696);
        v21 = (*(a3 + 1704) + 32 * v20);
        if (!v21[1] && !v21[2] && !v21[3])
        {
          log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41004, "%s%s", __s, " missing domain token definitions");
          ++*(a3 + 1696);
          return 2306875392;
        }

        *(a3 + 1696) = v20 + 1;
        v8 = v10 + 1;
      }

      if (!__dst[v8])
      {
        return v6;
      }
    }
  }

  log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41003, 0);
  return 2306875392;
}

uint64_t LoadCanonMap(uint64_t a1, uint64_t a2, const char *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = 2306875402;
  if (!a1)
  {
    return 2306875400;
  }

  v5 = a2;
  memset(__c, 0, sizeof(__c));
  v7 = a1 + 672;
  v8 = (a1 + 3008);
  bzero((a1 + 672), 0x400uLL);
  bzero(v8, 0x400uLL);
  cstdlib_strcpy(__dst, "canonmap_");
  cstdlib_strcat(__dst, a3);
  v9 = loc_fe_dctlkp_LookupUtf(a1, v5, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v35 = v5;
  v10 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_53;
  }

  cstdlib_strcpy(__dst, "canonmap");
  v9 = loc_fe_dctlkp_LookupUtf(a1, v5, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = *&__c[1];
  if (*&__c[1])
  {
LABEL_53:
    if (*(a1 + 664))
    {
      goto LABEL_5;
    }

    v30 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 664) = v30;
    if (!v30)
    {
      goto LABEL_49;
    }

    for (i = 0; i != 2048; i += 8)
    {
      *(*(a1 + 664) + i) = 0;
    }

    v10 = *&__c[1];
    if (*&__c[1])
    {
LABEL_5:
      v11 = 0;
      do
      {
        v12 = *(*&__c[3] + 8 * v11);
        v15 = *v12;
        v14 = (v12 + 2);
        v13 = v15;
        *(v7 + 4 * v15) = 1;
        if (!*(*(a1 + 664) + 8 * v15))
        {
          v16 = *(*a1 + 8);
          v17 = cstdlib_strlen(v14);
          *(*(a1 + 664) + 8 * v13) = heap_Alloc(v16, (v17 + 1));
          v18 = *(*(a1 + 664) + 8 * v13);
          if (!v18)
          {
            goto LABEL_49;
          }

          cstdlib_strcpy(v18, v14);
          v10 = *&__c[1];
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }

  *&__c[1] = 0;
  cstdlib_strcpy(__dst, "canonmapg2pdct_");
  cstdlib_strcat(__dst, a3);
  v9 = loc_fe_dctlkp_LookupUtf(a1, v35, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v19 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_12;
  }

  cstdlib_strcpy(__dst, "canonmapg2pdct");
  v9 = loc_fe_dctlkp_LookupUtf(a1, v35, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v19 = *&__c[1];
  if (!*&__c[1])
  {
    goto LABEL_18;
  }

LABEL_12:
  if (!*(a1 + 3000))
  {
    v32 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 3000) = v32;
    if (v32)
    {
      for (j = 0; j != 2048; j += 8)
      {
        *(*(a1 + 3000) + j) = 0;
      }

      v19 = *&__c[1];
      if (!*&__c[1])
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

LABEL_49:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    return v3;
  }

LABEL_13:
  v20 = 0;
  do
  {
    v21 = *(*&__c[3] + 8 * v20);
    v24 = *v21;
    v23 = (v21 + 2);
    v22 = v24;
    *(v8 + v24) = 1;
    if (!*(*(a1 + 3000) + 8 * v24))
    {
      v25 = *(*a1 + 8);
      v26 = cstdlib_strlen(v23);
      *(*(a1 + 3000) + 8 * v22) = heap_Alloc(v25, (v26 + 1));
      v27 = *(*(a1 + 3000) + 8 * v22);
      if (!v27)
      {
        goto LABEL_49;
      }

      cstdlib_strcpy(v27, v23);
      v19 = *&__c[1];
    }

    ++v20;
  }

  while (v20 < v19);
LABEL_18:
  *&__c[1] = -1;
  cstdlib_strcpy(__dst, "canonmapusage_");
  cstdlib_strcat(__dst, a3);
  v3 = loc_fe_dctlkp_LookupUtf(a1, v35, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v28 = *&__c[1];
    if (!*&__c[1])
    {
      *&__c[1] = -1;
      cstdlib_strcpy(__dst, "canonmapusage");
      v3 = loc_fe_dctlkp_LookupUtf(a1, v35, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
      if ((v3 & 0x80000000) != 0)
      {
        return v3;
      }

      v28 = *&__c[1];
    }

    if (v28 == 1)
    {
      v29 = cstdlib_strchr(**&__c[3], __c[0]);
      if (v29)
      {
        *v29 = 0;
      }

      if (!cstdlib_strcmp(**&__c[3], "all"))
      {
        *(a1 + 1712) = 0;
      }

      if (!cstdlib_strcmp(**&__c[3], "nocaseconv"))
      {
        *(a1 + 1712) = 2;
      }

      if (!cstdlib_strcmp(**&__c[3], "g2pdct"))
      {
        *(a1 + 1712) = 1;
      }
    }
  }

  return v3;
}

uint64_t fe_dctlkp_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62335, 4032);
  if ((result & 0x80000000) != 0)
  {
    return 2306875400;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjClose");
    if (*(a1 + 284))
    {
      v4 = 0;
      do
      {
        v5 = *(a1[72] + 8 * v4);
        v6 = *(v5 + 624);
        if (v6)
        {
          v7 = *(v5 + 56);
          if (v7)
          {
            brk_DataUnmap(*(*a1 + 24), v6, v7);
            v6 = *(*(a1[72] + 8 * v4) + 624);
          }

          brk_DataClose(*(*a1 + 24), v6);
          v5 = *(a1[72] + 8 * v4);
        }

        heap_Free(*(*a1 + 8), v5);
        ++v4;
      }

      while (v4 < *(a1 + 284));
    }

    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    hlp_LookupFree(a1);
    close_DctRom((a1 + 2));
    close_DctRom((a1 + 12));
    close_DctRom((a1 + 22));
    close_DctRom((a1 + 32));
    close_DctRom((a1 + 42));
    close_DctRom((a1 + 52));
    close_DctRom((a1 + 62));
    v8 = a1[73];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    v9 = a1[72];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    hlp_domainToksFree(a1);
    if (a1[83])
    {
      for (i = 0; i != 2048; i += 8)
      {
        v11 = *(a1[83] + i);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
        }
      }

      heap_Free(*(*a1 + 8), a1[83]);
    }

    if (a1[375])
    {
      for (j = 0; j != 2048; j += 8)
      {
        v13 = *(a1[375] + j);
        if (v13)
        {
          heap_Free(*(*a1 + 8), v13);
        }
      }

      heap_Free(*(*a1 + 8), a1[375]);
    }

    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjClose");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_dctlkp_ObjReopen(void *a1, uint64_t a2)
{
  CanonMap = 2306875400;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0 || !a1)
  {
    return CanonMap;
  }

  *&__c[3] = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjReopen");
  hlp_LookupFree(a1);
  close_DctRom((a1 + 2));
  close_DctRom((a1 + 32));
  close_DctRom((a1 + 42));
  close_DctRom((a1 + 62));
  v5 = a1[73];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  hlp_domainToksFree(a1);
  if (a1[83])
  {
    for (i = 0; i != 2048; i += 8)
    {
      v7 = *(a1[83] + i);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(a1[83] + i) = 0;
      }
    }

    heap_Free(*(*a1 + 8), a1[83]);
    a1[83] = 0;
  }

  if (a1[375])
  {
    for (j = 0; j != 2048; j += 8)
    {
      v9 = *(a1[375] + j);
      if (v9)
      {
        heap_Free(*(*a1 + 8), v9);
        *(a1[375] + j) = 0;
      }
    }

    heap_Free(*(*a1 + 8), a1[375]);
    a1[375] = 0;
  }

  *(a1 + 2) = 0;
  a1[7] = 0;
  a1[47] = 0;
  a1[37] = 0;
  a1[67] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[33] = 0;
  a1[34] = 0;
  a1[43] = 0;
  a1[44] = 0;
  a1[63] = 0;
  a1[64] = 0;
  *(a1 + 77) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 75) = 0u;
  a1[82] = 0;
  *(a1 + 749) = 1;
  *(a1 + 856) = 1;
  if ((hlp_CreateBrokerString(*a1, a1 + 1714, 0) & 0x80000000) != 0 || (open_DctRom(a1 + 2, a1 + 1714, a1 + 2) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateBrokerString(*a1, a1 + 1714, 1);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    BrokerString = open_DctRom(a1 + 2, a1 + 1714, a1 + 2);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }
  }

  if ((hlp_CreateVoiceBrokerString(*a1, a1 + 1970, 1) & 0x80000000) != 0 || (open_DctRom(a1 + 42, a1 + 1970, a1 + 82) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateVoiceBrokerString(*a1, a1 + 1970, 0);
    if ((BrokerString & 0x80000000) == 0)
    {
      if ((open_DctRom(a1 + 42, a1 + 1970, a1 + 82) & 0x80000000) != 0)
      {
        *(a1 + 82) = 0;
      }

      goto LABEL_26;
    }

    return BrokerString;
  }

LABEL_26:
  hlp_OpenMl2Dct(*a1, a1);
  BrokerString = hlp_OpenExtDct(a1, a2, a1);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  __c[0] = 0;
  *&__c[1] = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "punc", &__c[3], &__c[1], __c, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v11 = cstdlib_strchr(**&__c[3], __c[0]);
  if (v11)
  {
    *v11 = 0;
  }

  v12 = *(*a1 + 8);
  v13 = cstdlib_strlen(**&__c[3]);
  v14 = heap_Alloc(v12, (v13 + 1));
  a1[73] = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    return 2306875402;
  }

  cstdlib_strcpy(v14, **&__c[3]);
  *&__c[1] = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "canonmapdomain", &__c[3], &__c[1], __c, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if (*&__c[1])
  {
    *(a1 + 749) = 0;
  }

  BrokerString = loc_fe_dctlkp_getDomainTokenDefs(a1, a2, a1);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  cstdlib_strcpy(a1 + 2738, "normal");
  a1[83] = 0;
  a1[375] = 0;
  CanonMap = LoadCanonMap(a1, a2, "normal");
  if ((CanonMap & 0x80000000) == 0)
  {
    if (*(a1 + 284))
    {
      v15 = 0;
      while (1)
      {
        CanonMap = hlp_EnableAddon(a1, a2, *(a1[72] + 8 * v15));
        if ((CanonMap & 0x80000000) != 0)
        {
          break;
        }

        if (++v15 >= *(a1 + 284))
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjReopen");
    }
  }

  return CanonMap;
}

void *hlp_LookupFree(void *result)
{
  v1 = result;
  v2 = result[77];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[77] = 0;
  }

  v3 = v1[7];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[7] = 0;
  }

  v4 = v1[76];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        heap_Free(*(*v1 + 8), v5);
        *(v1[76] + 8 * v6) = 0;
        ++v7;
        v4 = v1[76];
        v6 = v7;
        v5 = v4[v7];
      }

      while (v5);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v4);
    v1[76] = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1[74];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      v10 = 0;
      v7 = 0;
      do
      {
        heap_Free(*(*v1 + 8), v9);
        *(v1[74] + 8 * v10) = 0;
        ++v7;
        v8 = v1[74];
        v10 = v7;
        v9 = v8[v7];
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v8);
    v1[74] = 0;
  }

  v11 = v1[75];
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = 0;
      v7 = 0;
      do
      {
        v1[4] = v12;
        exit_DctRom((v1 + 2), *(v1[78] + 8 * v13));
        heap_Free(*(*v1 + 8), *(v1[75] + 8 * v13));
        *(v1[75] + 8 * v13) = 0;
        ++v7;
        v11 = v1[75];
        v13 = v7;
        v12 = v11[v7];
      }

      while (v12);
    }

    else
    {
      v7 = 0;
    }

    result = heap_Free(*(*v1 + 8), v11);
    v1[75] = 0;
  }

  v14 = v1[78];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
      v16 = 8 * v7;
      do
      {
        v17 = *(v1[78] + v15);
        if (v17)
        {
          brk_DataClose(*(*v1 + 24), v17);
          *(v1[78] + v15) = 0;
        }

        v15 += 8;
      }

      while (v16 != v15);
      v14 = v1[78];
    }

    result = heap_Free(*(*v1 + 8), v14);
    v1[78] = 0;
  }

  v18 = v1[79];
  if (v18)
  {
    v19 = v1[80];
    if (v19)
    {
      brk_DataUnmap(*(*v1 + 24), v18, v19);
      v1[80] = 0;
      v18 = v1[79];
    }

    result = brk_DataClose(*(*v1 + 24), v18);
    v1[79] = 0;
  }

  v1[82] = 0;
  return result;
}

void *hlp_domainToksFree(void *result)
{
  if (*(result + 848))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = result[213];
    do
    {
      if (*(v4 + v2))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2));
        v4 = v1[213];
        *(v4 + v2) = 0;
      }

      if (*(v4 + v2 + 8))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 8));
        v4 = v1[213];
        *(v4 + v2 + 8) = 0;
      }

      if (*(v4 + v2 + 16))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 16));
        v4 = v1[213];
        *(v4 + v2 + 16) = 0;
      }

      if (*(v4 + v2 + 24))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 24));
        v4 = v1[213];
        *(v4 + v2 + 24) = 0;
      }

      ++v3;
      v2 += 32;
    }

    while (v3 < *(v1 + 848));
    result = heap_Free(*(*v1 + 8), v4);
    v1[213] = 0;
    *(v1 + 848) = 0;
  }

  return result;
}

uint64_t hlp_EnableAddon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = "";
  v14 = 0;
  *&__c[1] = -1;
  if (!a1)
  {
    return 2306875400;
  }

  v4 = a2;
  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 620) = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v14);
  if ((Str & 0x80000000) == 0)
  {
    lowercase(v14, __s1);
    lowercase((a3 + 80), __s2);
    if (!cstdlib_strcmp(__s1, __s2))
    {
      Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v13);
      if ((Str & 0x80000000) == 0 && !cstdlib_strcmp(v13, (a3 + 84)))
      {
        Str = loc_fe_dctlkp_LookupUtf(a1, v4, "fecfg", "addoncomp", &__c[3], &__c[1], __c, 0);
        if (*&__c[1])
        {
          v7 = cstdlib_strchr(**&__c[3], __c[0]);
          if (v7)
          {
            *v7 = 0;
          }

          v8 = cstdlib_atoi(**&__c[3]);
        }

        else
        {
          v8 = 1;
        }

        if (v8 == *(a3 + 105) && *(a3 + 104) == 1)
        {
          *(a3 + 620) = 1;
        }
      }
    }
  }

  return Str;
}

uint64_t fe_dctlkp_CheckVersion(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = a2;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  *&__c[1] = 0;
  __c[0] = 0;
  *a4 = 0;
  *a3 = 0;
  v19 = -1;
  v8 = loc_fe_dctlkp_LookupUtf(a1, v6, "fecfg", "versioninfo", &__c[1], &v19, __c, 0);
  if ((v8 & 0x80001FFF) != 0x8000000A && v19)
  {
    v16 = 0;
    v9 = cstdlib_strchr(**&__c[1], __c[0]);
    if (v9)
    {
      *v9 = 0;
    }

    v17 = **&__c[1];
    v10 = v17;
    *a4 = 1;
    v11 = cstdlib_strtol(v10, &v16, 10);
    v12 = v11 < 1 || v16 == 0;
    if (v12 || *v16 != 46 || (v13 = cstdlib_strtol(v16 + 1, &v17, 10), (v13 & 0x80000000) != 0) || !v17 || *v17 != 46 || (v14 = cstdlib_strtol(v17 + 1, &v16, 10), v14 < 0) || !v16 || *v16 != 46 && *v16)
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41006, 0);
      return 2306875392;
    }

    if (v11 > 7)
    {
      goto LABEL_19;
    }

    if (v11 == 7)
    {
      if (v13 > 4 || v13 == 4 && v14)
      {
LABEL_19:
        log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "productVersion %d.%d.%d dctVersion %s", 7, 4, 0, v10);
        return v8;
      }
    }

    else if (v11 == 1 && !(v14 | v13))
    {
      *a3 = 0;
      return v8;
    }

    *a3 = 1;
  }

  return v8;
}

uint64_t fe_dctlkp_GetDataBlock(uint64_t *a1, int a2, char *a3, uint64_t *a4)
{
  v20 = 0;
  v7 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v8 = *a1;
  if (!a3)
  {
    log_OutPublic(*(v8 + 32), "FE_DCTLKP", 41001, 0);
    return v7;
  }

  v9 = brk_DataOpen(*(v8 + 24));
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = brk_DataMap(*(*a1 + 24), a1[79], 40, *(a1 + 2), &v20);
  if (v10)
  {
    v11 = v10;
    brk_DataClose(*(*a1 + 24), a1[79]);
    a1[79] = 0;
    return v11;
  }

  if (LH_stricmp(v20, a3))
  {
    v12 = 0;
    v13 = 0;
    while (v13 < *(a1 + 2))
    {
      v14 = cstdlib_strlen(&v20[v12]);
      v12 = v14 + v13 + ((~v14 - v13) & 3) + 5;
      v13 = v12;
      v15 = v12;
      if (!LH_stricmp(&v20[v12], a3))
      {
        goto LABEL_15;
      }
    }

    v15 = v13;
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

LABEL_15:
  if (v15 >= *(a1 + 2))
  {
    brk_DataUnmap(*(*a1 + 24), a1[79], v20);
    return 2306875412;
  }

  v16 = cstdlib_strlen(&v20[v12]);
  v17 = *&v20[v15 + 1 + v16 + ((~v16 - v15) & 3)];
  brk_DataUnmap(*(*a1 + 24), a1[79], v20);
  v9 = brk_DataMap(*(*a1 + 24), a1[79], v17, 4, &v20);
  if (v9)
  {
    return v9;
  }

  v19 = *v20;
  brk_DataUnmap(*(*a1 + 24), a1[79], v20);
  v7 = brk_DataMap(*(*a1 + 24), a1[79], (v17 + 4), v19, a4);
  if ((v7 & 0x80000000) == 0)
  {
    a1[80] = *a4;
  }

  return v7;
}

uint64_t fe_dctlkp_QueryDictExists(char *a1, int a2, char *a3, _DWORD *a4)
{
  optional_brk_resource = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v8 = *(*a1 + 32);
  if (!a3)
  {
    log_OutPublic(v8, "FE_DCTLKP", 41001, 0);
    return optional_brk_resource;
  }

  log_OutText(v8, "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_QueryDictExists : %s?", a3);
  *a4 = 0;
  if ((hlp_SearchDctName(a1, a3, "") & 0x80000000) == 0)
  {
    optional_brk_resource = 0;
    *a4 = 1;
    return optional_brk_resource;
  }

  v10 = *(*a1 + 24);
  optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, "sysdct", a1 + 22, a3, a4);
  if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
  {
    if (!*(a1 + 2))
    {
      goto LABEL_14;
    }

    v11 = brk_DataOpen(v10);
    if ((v11 & 0x80000000) != 0)
    {
      return v11;
    }

    optional_brk_resource = query_DctRom((a1 + 16), a3, *(a1 + 2), 0, a4);
    if ((optional_brk_resource & 0x80000000) == 0)
    {
      brk_DataClose(v10, 0);
      if (!*a4)
      {
LABEL_14:
        optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, "lid", a1 + 42, a3, a4);
        if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
        {
          optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, (a1 + 2226), a1 + 62, a3, a4);
          if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
          {
            optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, (a1 + 1970), a1 + 82, a3, a4);
            if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
            {
              optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, "clmnn:clmnndic", a1 + 102, a3, a4);
              if ((optional_brk_resource & 0x80000000) == 0 && !*a4 && !cstdlib_strncmp(a3, "ext_", 4uLL))
              {
                return loc_fe_dctlkp_query_optional_brk_resource(v10, (a1 + 2482), a1 + 122, a3 + 4, a4);
              }
            }
          }
        }
      }
    }
  }

  return optional_brk_resource;
}

uint64_t loc_fe_dctlkp_query_optional_brk_resource(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4, _DWORD *a5)
{
  v11 = 0;
  *a5 = 0;
  if (!*a3 || (brk_DataOpenEx(a1, a2, 1, &v11) & 0x80000000) != 0)
  {
    return 0;
  }

  DctRom = query_DctRom((a3 + 2), a4, *a3, v11, a5);
  if ((DctRom & 0x80000000) == 0)
  {
    brk_DataClose(a1, v11);
  }

  return DctRom;
}

uint64_t fe_dctlkp_QueryLidDictExists(unsigned int *a1, int a2, char *a3, int a4, _DWORD *a5)
{
  DctRom = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v17 = 0;
  *a5 = 0;
  v10 = *(*a1 + 32);
  if (a3)
  {
    log_OutText(v10, "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_QueryLidDictExists : %s?", a3);
    v11 = *(*a1 + 24);
    if (a4)
    {
      if ((brk_DataOpenEx(v11, "lid", 1, &v17) & 0x80000000) != 0)
      {
        return 0;
      }

      v12 = a1[42];
      v13 = v17;
      v14 = a1 + 44;
    }

    else
    {
      v15 = brk_DataOpen(v11);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v12 = a1[2];
      v13 = v17;
      v14 = a1 + 4;
    }

    DctRom = query_DctRom(v14, a3, v12, v13, a5);
    if ((DctRom & 0x80000000) == 0)
    {
      brk_DataClose(*(*a1 + 24), v17);
    }
  }

  else
  {
    log_OutPublic(v10, "FE_DCTLKP", 41001, 0);
  }

  return DctRom;
}

uint64_t fe_dctlkp_LangAndDomCheck(uint64_t result, _WORD *a2, __int16 *a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v6 = *a2;
  if (v6 < a6)
  {
    v8 = result;
    v9 = *(a5 + 12);
    v10 = a6;
    v11 = (a5 + 32 * v6);
    do
    {
      if (v11[3] - v9 > a4)
      {
        break;
      }

      v12 = *v11;
      v11 += 8;
      if (v12 == 36)
      {
        v10 = v6;
      }

      *a2 = ++v6;
    }

    while (a6 != v6);
    if (a6 > v10)
    {
      v13 = *(result + 1696);
      if (*(result + 1696))
      {
        v14 = 0;
        v15 = 0;
        v16 = a5 + 32 * v10;
        do
        {
          result = *(v16 + 24);
          if (result)
          {
            result = cstdlib_strcmp(result, *(*(v8 + 1704) + v14));
            if (result)
            {
              v17 = 999;
            }

            else
            {
              v17 = v15;
            }

            v13 = *(v8 + 1696);
          }

          else
          {
            v17 = 999;
          }

          if (++v15 >= v13)
          {
            break;
          }

          v14 += 32;
        }

        while (v17 == 999);
      }

      else
      {
        v17 = 999;
      }

      *a3 = v17;
    }
  }

  return result;
}

uint64_t fe_dctlkp_Tokenize(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int a6)
{
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  __s = 0;
  v48 = 999;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_Tokenize");
  v11 = (*(a1[81] + 104))(a3, a4, 1, 0, &v55 + 2);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_63:
    v12 = v11;
    goto LABEL_66;
  }

  v12 = (*(a1[81] + 176))(a3, a4, HIWORD(v55), 0, &__s, &v50 + 2);
  if ((v12 & 0x80000000) == 0)
  {
    LOWORD(v55) = 0;
    v53 = 0;
    if (cstdlib_strlen(__s))
    {
      v45 = a6;
      v46 = a4;
      v47 = a6;
      do
      {
        v54 = v55;
        v13 = cstdlib_strlen(__s);
        if (a6)
        {
          v14 = v45;
          v15 = a5;
          while (1)
          {
            if (*v15 <= 0x39u && ((1 << *v15) & 0x3C8010124021140) != 0)
            {
              v17 = v15[3];
              v18 = a5[3];
              if (v17 > v18 + v55)
              {
                break;
              }
            }

            v15 += 8;
            if (!--v14)
            {
              goto LABEL_16;
            }
          }

          v13 = v17 - v18;
        }

LABEL_16:
        fe_dctlkp_LangAndDomCheck(a1, &v53, &v48, v54, a5, a6);
        v19 = v48;
        if (IsAlphaUtf(a1, &__s[v55], v48))
        {
          v20 = utf8_determineUTF8CharLength(__s[v55]);
          v21 = 0;
          v51 = 0;
          v22 = v55;
          do
          {
            LOWORD(v55) = v22 + v20;
            v20 = utf8_determineUTF8CharLength(__s[(v22 + v20)]);
            if (!IsAlphaUtf(a1, &__s[v55], v19) || v21 > 0x7E)
            {
              break;
            }

            ++v21;
            v23 = v55;
            v24 = cstdlib_strlen(__s);
            v22 = v55;
          }

          while (v23 < v24 && v13 > v55);
        }

        else if (IsDigitUtf(a1, &__s[v55], v19))
        {
          v26 = utf8_determineUTF8CharLength(__s[v55]);
          v27 = 0;
          v51 = 1;
          v28 = v55;
          do
          {
            LOWORD(v55) = v28 + v26;
            v26 = utf8_determineUTF8CharLength(__s[(v28 + v26)]);
            if (!IsDigitUtf(a1, &__s[v55], v19) || v27 > 0x7E)
            {
              break;
            }

            ++v27;
            v29 = v55;
            v30 = cstdlib_strlen(__s);
            v28 = v55;
          }

          while (v29 < v30 && v13 > v55);
        }

        else
        {
          if (IsPuncUtf(a1, &__s[v55], v19))
          {
            v51 = 2;
            v32 = v55 + 1;
LABEL_36:
            LOWORD(v55) = v32;
            goto LABEL_37;
          }

          v38 = __s[v55];
          v39 = v38 > 0x20 || ((1 << v38) & 0x100002600) == 0;
          if (v39 && v38 != 95)
          {
            v43 = utf8_determineUTF8CharLength(v38);
            log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Warning - character %c marked as alpha by default. Assign to domain definitions.", __s[v55]);
            v51 = 0;
            v32 = v55 + v43;
            goto LABEL_36;
          }

          v51 = 3;
          do
          {
            LOWORD(v55) = v55 + 1;
            fe_dctlkp_LangAndDomCheck(a1, &v53, &v48, v54, a5, v47);
            v40 = v55;
            v41 = __s[v55];
            v42 = v41 > 0x20 || ((1 << v41) & 0x100002600) == 0;
          }

          while ((!v42 || v41 == 95) && v40 < cstdlib_strlen(__s));
        }

LABEL_37:
        v33 = a1[81];
        if (v54)
        {
          v34 = v46;
          v11 = (*(v33 + 80))(a3, v46, v52, &v52);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v34 = v46;
          v11 = (*(v33 + 72))(a3, v46, 3, HIWORD(v55), &v52);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }
        }

        v35 = (*(a1[81] + 160))(a3, v34, v52, 0, 1, &v51, &v50);
        if ((v35 & 0x80000000) != 0 || (v35 = (*(a1[81] + 160))(a3, v34, v52, 1, 1, &v54, &v50), (v35 & 0x80000000) != 0))
        {
          v12 = v35;
LABEL_65:
          log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41002, 0);
          break;
        }

        v12 = (*(a1[81] + 160))(a3, v34, v52, 2, 1, &v55, &v50);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_65;
        }

        v36 = v55;
        v37 = v36 >= cstdlib_strlen(__s);
        a6 = v47;
      }

      while (!v37);
    }
  }

LABEL_66:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Tokenize");
  return v12;
}

BOOL IsAlphaUtf(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 != 999)
  {
    v6 = *(*(a1 + 1704) + 32 * a3 + 8);
    if (v6)
    {
      if (a2)
      {
        return utf8_strchr(v6, a2) != 0;
      }

      return 0;
    }
  }

  result = 0;
  v8 = *a2;
  v9 = v8 > 0x20 || ((1 << v8) & 0x100002600) == 0;
  if (v9 && v8 != 95)
  {
    if (!IsPuncUtf(a1, a2, a3))
    {
      return !IsDigitUtf(a1, a2, v3);
    }

    return 0;
  }

  return result;
}

BOOL IsDigitUtf(uint64_t a1, const char *a2, unsigned int a3)
{
  if (a3 == 999)
  {
    return *a2 - 48 < 0xA;
  }

  v3 = *(*(a1 + 1704) + 32 * a3 + 16);
  if (!v3)
  {
    return *a2 - 48 < 0xA;
  }

  if (a2)
  {
    return utf8_strchr(v3, a2) != 0;
  }

  return 0;
}

BOOL IsPuncUtf(uint64_t a1, const char *a2, unsigned int a3)
{
  if (a3 == 999 || (v4 = *(*(a1 + 1704) + 32 * a3 + 24)) == 0)
  {

    return loc_fe_dctlkp_IsPunctUtf(a1, a2);
  }

  else
  {
    return a2 && utf8_strchr(v4, a2) != 0;
  }
}

uint64_t fe_dctlkp_PartLookupUtf(uint64_t a1, uint64_t a2, char *__src, const char *a4, void *a5, __int16 *a6, _BYTE *a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    return a8;
  }

  v13 = a2;
  v15 = a8 - 1;
  if (a8 != 1)
  {
    v17 = 0;
    v18 = *a6;
    do
    {
      cstdlib_strcpy(__dst, __src);
      LH_itoa(v17, __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
      *a6 = v18;
      a8 = loc_fe_dctlkp_LookupUtf(a1, v13, __dst, a4, a5, a6, a7, 0);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v15 != v17++);
    return a8;
  }

  return loc_fe_dctlkp_LookupUtf(a1, a2, __src, a4, a5, a6, a7, 0);
}

uint64_t fe_dctlkp_PartLookupAddonDct(uint64_t a1, uint64_t a2, char *__src, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, uint64_t a8, _DWORD *a9)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    return a8;
  }

  v15 = a8 - 1;
  if (a8 != 1)
  {
    v17 = 0;
    v18 = *a6;
    do
    {
      cstdlib_strcpy(__dst, __src);
      LH_itoa(v17, __s2, 0xAu);
      cstdlib_strcat(__dst, __s2);
      *a6 = v18;
      a8 = fe_dctlkp_LookupAddonDct(a1, a2, __dst, a4, a5, a6, a7, a9);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v15 != v17++);
    return a8;
  }

  return fe_dctlkp_LookupAddonDct(a1, a2, __src, a4, a5, a6, a7, a9);
}

uint64_t fe_dctlkp_LookupAddonDct(uint64_t a1, uint64_t a2, char *a3, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, _DWORD *a8)
{
  v68 = a2;
  v13 = a1;
  v74 = 0;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v73 = a5;
  Str = paramc_ParamGetStr(*(*v13 + 40), "addondct_extended_lookup", &v74);
  if ((Str & 0x80000000) != 0 || cstdlib_strcmp(v74, "yes"))
  {
    v15 = 0;
  }

  else
  {
    log_OutText(*(*v13 + 32), "FE_DCTLKP", 5, 0, "<%s> enables extended lookup (both DDU and system dct)", "addondct_extended_lookup");
    v15 = 1;
  }

  v65 = *a6;
  v17 = v73;
  if (!*(v13 + 568))
  {
    LOWORD(v20) = 0;
    v71 = 0;
    v45 = 1;
    goto LABEL_54;
  }

  v60 = v15;
  v63 = Str;
  v61 = a8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v64 = a3;
  v72 = v13;
  while (1)
  {
    v70 = v18;
    v22 = *(*(v13 + 576) + 8 * v18);
    if (*(v22 + 620))
    {
      if (cstdlib_strstr(a3, "femwg2p"))
      {
        v23 = 0;
        v24 = "addonmwg2p";
        goto LABEL_19;
      }

      if (cstdlib_strstr(a3, "femwtn"))
      {
        v23 = 0;
        v24 = "addonmwtn";
        goto LABEL_19;
      }

      v24 = (cstdlib_strstr(a3, "g2p") ? v22 + 106 : v22 + 362);
      if (cstdlib_strlen(v24))
      {
        break;
      }
    }

    v25 = v70;
LABEL_46:
    v18 = v25 + 1;
    a3 = v64;
    if (v18 >= *(v13 + 568))
    {
      v71 = v21;
      if (v19)
      {
        a8 = v61;
        v44 = v60 ^ 1;
        if (!v61)
        {
          v44 = 1;
        }

        if (v44)
        {
          if (v61)
          {
            *v61 = 1;
          }

          *a6 = 0;
          v46 = v63;
          goto LABEL_68;
        }

        v45 = 0;
      }

      else
      {
        v45 = 1;
        a8 = v61;
      }

LABEL_54:
      *a6 = v65;
      v46 = loc_fe_dctlkp_LookupUtf(v13, v68, a3, a4, v17, a6, a7, 0);
      if ((v46 & 0x80000000) != 0)
      {
        v16 = v46;
        goto LABEL_82;
      }

      if (a8)
      {
        if ((v45 & 1) == 0 && !*a6)
        {
          *a8 = 1;
          *a7 = 14;
          goto LABEL_69;
        }

        *a8 = 0;
      }

      v47 = *a6;
      if (*a6)
      {
        v48 = 0;
        do
        {
          v49 = *(*v17 + 8 * v48);
          v50 = *v49;
          if (*v49)
          {
            v51 = v49 + 1;
            do
            {
              if (*a7 == v50)
              {
                *(v51 - 1) = 14;
              }

              v52 = *v51++;
              v50 = v52;
            }

            while (v52);
            v47 = *a6;
          }

          ++v48;
        }

        while (v48 < v47);
      }

LABEL_68:
      *a7 = 14;
      v16 = v46;
      if (!a8)
      {
LABEL_70:
        v53 = 0;
        if (v71 && v20)
        {
          v54 = 0;
          v53 = 0;
          do
          {
            v55 = *a6;
            if (v54 + v55 >= 100 * *(v13 + 658))
            {
              break;
            }

            v56 = *(*(v13 + 608) + 8 * (v54 + v55));
            if (v56)
            {
              cstdlib_strcpy(v56, *(v71 + 8 * v54));
              ++v53;
            }

            else
            {
              log_OutText(*(*v13 + 32), "FE_DCTLKP", 1, 0, "Function fe_dctlkp_LookupAddonDct attempted to strcpy into a NULL pointer");
            }

            ++v54;
          }

          while (v20 != v54);
        }

        *a6 += v53;
LABEL_82:
        LOWORD(v35) = v20;
        v28 = v71;
        if (v71)
        {
          goto LABEL_83;
        }

        return v16;
      }

LABEL_69:
      v16 = v46;
      if (!*a8)
      {
        goto LABEL_82;
      }

      goto LABEL_70;
    }
  }

  v23 = cstdlib_atoi(v24 + 6);
LABEL_19:
  v25 = v70;
  if (v23 < v19)
  {
    goto LABEL_46;
  }

  v62 = v23;
  if (!*v24)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v26 = cstdlib_strchr(v24, 124);
    v67 = v26;
    if (v26)
    {
      v66 = *v26;
      *v26 = 0;
    }

    else
    {
      v66 = 0;
    }

    *a6 = v65;
    v63 = loc_fe_dctlkp_LookupUtf(v13, v68, v24, a4, v17, a6, a7, *(*(v13 + 576) + 8 * v25));
    if ((v63 & 0x80000000) != 0)
    {
      v71 = v21;
      v16 = v63;
      goto LABEL_82;
    }

    if (*a6)
    {
      break;
    }

LABEL_39:
    if (v67 && v66)
    {
      *v67 = v66;
      v25 = v70;
    }

    else
    {
      v25 = v70;
      if (!v67)
      {
        goto LABEL_46;
      }
    }

    v24 = v67 + 1;
    if (!v67[1])
    {
      goto LABEL_46;
    }
  }

  v27 = heap_Realloc(*(*v13 + 8), v21, 8 * (*a6 + v20));
  if (!v27)
  {
    v71 = v21;
    log_OutPublic(*(*v13 + 32), "FE_DCTLKP", 41000, 0);
    v16 = 2306875402;
    goto LABEL_82;
  }

  v28 = v27;
  cstdlib_memset((v27 + 8 * v20), 0, 8 * *a6);
  if (!*a6)
  {
    v35 = v20;
LABEL_38:
    v13 = v72;
    log_OutEvent(*(*v72 + 32), 28, "%s%s", v29, v30, v31, v32, v33, "ADDON_NAME");
    v21 = v28;
    v20 = v35;
    v19 = v62;
    v17 = v73;
    goto LABEL_39;
  }

  v34 = 0;
  LODWORD(v35) = v20;
  while (1)
  {
    v36 = *(*v72 + 8);
    v37 = *(v28 + 8 * v35);
    v38 = cstdlib_strlen(*(*v73 + 8 * v34));
    v39 = heap_Realloc(v36, v37, (v38 + 1));
    if (!v39)
    {
      break;
    }

    *(v28 + 8 * v35) = v39;
    cstdlib_strcpy(v39, *(*v73 + 8 * v34));
    v40 = *(v28 + 8 * v35);
    v41 = *v40;
    if (*v40)
    {
      v42 = v40 + 1;
      do
      {
        if (*a7 == v41)
        {
          *(v42 - 1) = 14;
        }

        v43 = *v42++;
        v41 = v43;
      }

      while (v43);
    }

    v35 = (v35 + 1);
    if (++v34 >= *a6)
    {
      goto LABEL_38;
    }
  }

  v13 = v72;
  log_OutPublic(*(*v72 + 32), "FE_DCTLKP", 41000, 0);
  v16 = 2306875402;
LABEL_83:
  if (v35)
  {
    v35 = v35;
    v57 = v28;
    do
    {
      v58 = *v57++;
      heap_Free(*(*v13 + 8), v58);
      --v35;
    }

    while (v35);
  }

  heap_Free(*(*v13 + 8), v28);
  return v16;
}

uint64_t fe_dctlkp_InitStatus(uint64_t a1)
{
  if (!a1)
  {
    return 2306875399;
  }

  result = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t fe_dctlkp_InitEntry(uint64_t a1)
{
  if (!a1)
  {
    return 2306875399;
  }

  result = 0;
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t fe_dctlkp_DoLookupStep(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7)
{
  v13 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_DoLookupStep (%d byte(s) of '%s')", a7, a6);
  if (a5)
  {
    *a5 = -1;
    *(a5 + 4) = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    v14 = WordToHashOpt(a3 + 8, a6, 0, a7 - 1, 0, a4);
    *a5 = v14;
    if (v14 == -2)
    {
      v13 = 10;
    }

    else
    {
      v13 = 0;
    }

    v15 = *(a4 + 8);
    *(a5 + 8) = *a4;
    *(a5 + 16) = v15;
  }

  return v13;
}

uint64_t fe_dctlkp_GetEntryContents(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, unsigned __int8 **a5, _WORD *a6, _BYTE *a7, _BYTE *a8)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_GetEntryContents");
  v16 = fe_dctlkp_LookupFromStateAddress(a1, a2, a3, *a4, a5, a6, a8);
  *a7 = GetFieldSeparator((a3 + 1));
  return v16;
}

uint64_t fe_dctlkp_LookupFromStateAddress(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 **a5, _WORD *a6, _BYTE *a7)
{
  v59[7] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2306875400;
  }

  v59[0] = a3[2];
  v9 = *a5;
  *a7 = 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v11 = DecoAddr(a3 + 1, a4);
  if (v11 == -2)
  {
    return 10;
  }

  if (v11 < 0 || brk_DataMap(a3[4], a3[5], (*(a3[3] + 132) + v11), *(*a3[3] + 52), v59))
  {
LABEL_8:
    result = 0;
    *a7 = 0;
  }

  else
  {
    v13 = 0;
    LOWORD(v14) = 0;
    v15 = 0;
    LOBYTE(v16) = *v59[0];
    do
    {
      v9[v15++] = v16;
      v17 = a3[3];
      v18 = *v17;
      do
      {
        v19 = v14;
        v20 = &v9[v14];
        v21 = *v20;
        v22 = 2 * (v21 - v18[6]);
        v23 = v17[2][v22];
        if (v17[2][v22])
        {
          v24 = v15 - 1;
          do
          {
            if (v19 < (v15 - 1))
            {
              v25 = &v9[v24 + 1];
              v26 = v24;
              v27 = v25;
              do
              {
                v28 = *--v27;
                *v25 = v28;
                --v26;
                v25 = v27;
              }

              while (v26 > v19);
              v17 = a3[3];
              LODWORD(v21) = *v20;
              v18 = *v17;
            }

            ++v15;
            v20[1] = v17[2][2 * (v21 - v18[6]) + 1];
            *v20 = v23;
            v17 = a3[3];
            v18 = *v17;
            ++v24;
            LODWORD(v21) = v23;
            v23 = v17[2][2 * (v23 - (*v17)[6])];
          }

          while (v23);
        }

        v14 = (v19 + 1);
      }

      while (v14 < v15);
      ++v13;
      v29 = v59[0];
      v16 = *(v59[0] + v13);
      v30 = v18[10];
    }

    while (v16 != v18[8] && (v16 < v30 || v16 > v18[11]));
    v31 = *v9;
    if (v31 >= v30)
    {
      while (1)
      {
        v32 = v31;
        v33 = v18[11];
        v29 = v59[0];
        if (v31 > v33)
        {
          break;
        }

        v34 = v18[8];
        v35 = *(v59[0] + v13);
        if (v35 == v34)
        {
          v36 = 1;
        }

        else
        {
          v37 = (v59[0] + v13 + 1);
          while (1)
          {
            v38 = v35 < v30 || v35 > v33;
            v36 = v38;
            if (v36 != 1)
            {
              break;
            }

            LODWORD(v13) = v13 + 1;
            v39 = *v37++;
            LOBYTE(v35) = v39;
            if (v39 == v34)
            {
              goto LABEL_37;
            }
          }

          LOBYTE(v34) = v35;
        }

LABEL_37:
        LODWORD(v13) = v13 + v36;
        v40 = v30;
        v41 = v30 - 1;
        if (v34 <= v33 && v34 >= v40)
        {
          v41 = v34;
        }

        if (v41 >= v31)
        {
          LODWORD(v13) = v13 + 1;
        }

        else
        {
          LOWORD(v43) = 0;
          v44 = 0;
          v45 = v17[2];
          v46 = v18[6];
          v13 = v13;
          do
          {
            v47 = v44++;
            *(&v59[1] + v47 + 7) = *(v29 + v13);
            do
            {
              v43 = v43;
              v48 = *(&v59[1] + v43 + 7);
              if (v45[2 * (v48 - v46)])
              {
                v49 = v44 - 1;
                do
                {
                  if (v43 < (v44 - 1))
                  {
                    v50 = &v59[2] + v49;
                    v51 = v49;
                    v52 = v50;
                    do
                    {
                      v53 = *--v52;
                      *v50 = v53;
                      --v51;
                      v50 = v52;
                    }

                    while (v51 > v43);
                    v48 = *(&v59[1] + v43 + 7);
                  }

                  v54 = &v45[2 * (v48 - v46)];
                  *(&v59[2] + v43) = v54[1];
                  v48 = *v54;
                  *(&v59[1] + v43 + 7) = v48;
                  ++v44;
                  ++v49;
                }

                while (v45[2 * (v48 - v46)]);
              }

              LODWORD(v43) = (v43 + 1);
              LOBYTE(v31) = v31 - 1;
            }

            while (v43 < v44 && v31 >= v41);
            ++v13;
          }

          while (v31 >= v41);
          v55 = v32 - v41;
          if (v15 >= 2)
          {
            v56 = v15 - 1;
            v57 = (v15 + v32 - v41) - 1;
            do
            {
              v9[v57--] = v9[v56--];
            }

            while (v56);
          }

          if ((v55 & 0x80000000) == 0)
          {
            v58 = 0;
            do
            {
              v9[v58] = *(&v59[1] + v58 + 7);
              ++v58;
            }

            while (v55 >= v58);
          }

          LOWORD(v15) = v15 + v55;
          LOBYTE(v31) = v41;
        }

        v17 = a3[3];
        v18 = *v17;
        v30 = (*v17)[10];
        if (v30 > v31)
        {
          v29 = v59[0];
          break;
        }
      }
    }

    brk_DataUnmap(a3[4], a3[5], v29);
    result = 0;
    *a6 = v15;
  }

  return result;
}

uint64_t fe_dctlkp_GetNextEntry(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  *__s2 = 0;
  v12 = 0;
  *__s1 = 0;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  ++*(a2 + 4);
  cstdlib_strcat(__s1, "\x17");
  LH_itoa(*(a2 + 4), __s2, 0xAu);
  cstdlib_strcat(__s1, __s2);
  v4 = cstdlib_strlen(__s1);
  v5 = WordToHashOpt(a1 + 8, __s1, 0, v4 - 1, 0, &v7);
  *a2 = v5;
  if (v5 == -2)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t loc_fe_dctlkp_LookupUtf(uint64_t a1, int a2, char *a3, const char *a4, void *a5, _WORD *a6, _BYTE *a7, unsigned int *a8)
{
  v90 = *MEMORY[0x277D85DE8];
  v86 = 0;
  v85 = 0;
  *__s2 = 0;
  v8 = 2306875402;
  v89 = 0;
  *__s = 0;
  v9 = 2306875399;
  if (!a3)
  {
    return v9;
  }

  if (!a4)
  {
    return v9;
  }

  v11 = a5;
  if (!a5 || !a6 || !a7)
  {
    return v9;
  }

  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v87 = 0;
  v83 = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "Entering fe_dctlkp_Lookup: searching %s in %s", a4, a3);
  v82 = 0;
  v80 = 0;
  v81 = 0;
  if (a8)
  {
    __src = heap_strdup(*(*a1 + 8), a3);
    if (__src)
    {
      LH_itoa(*(a8 + 36), __s, 0xAu);
      v17 = a8;
LABEL_10:
      v76 = a3;
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  v18 = *a6;
  if (v18 == 2)
  {
    if (*(a1 + 328))
    {
      v17 = (a1 + 328);
LABEL_27:
      v76 = a3;
      goto LABEL_28;
    }

LABEL_84:
    v8 = 2306875399;
    goto LABEL_133;
  }

  if (v18 == 1)
  {
    v19 = *(*a1 + 8);
    v20 = cstdlib_strlen(a3);
    v21 = heap_Alloc(v19, (v20 + 2));
    if (v21)
    {
      v22 = v21;
      cstdlib_strcpy(v21, a3);
      __src = v22;
      cstdlib_strcat(v22, "C");
      if (cstdlib_strcmp(a3, "lidcfg") && cstdlib_strncmp(a3, "mertfrq", 7uLL) && cstdlib_strncmp(a3, "merwfrq", 7uLL))
      {
        if (cstdlib_strncmp(a3, "ml2", 3uLL) && cstdlib_strncmp(a3, "lid", 3uLL))
        {
          if (cstdlib_strncmp(a3, "clm", 3uLL))
          {
            v17 = (a1 + 88);
            if (*(a1 + 88))
            {
              goto LABEL_10;
            }
          }

          else if (*(a1 + 408))
          {
            v17 = (a1 + 408);
            goto LABEL_10;
          }
        }

        else
        {
          v17 = (a1 + 248);
          if (*(a1 + 248))
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v17 = (a1 + 168);
        if (*(a1 + 168))
        {
          goto LABEL_10;
        }
      }

      v17 = 0;
      v47 = 1;
      v8 = 2306875399;
      goto LABEL_87;
    }

LABEL_32:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    goto LABEL_133;
  }

  if (cstdlib_strncmp(a3, "ext_", 4uLL))
  {
    v17 = (a1 + 8);
    goto LABEL_27;
  }

  if (!*(a1 + 488))
  {
    goto LABEL_84;
  }

  v17 = (a1 + 488);
  v76 = a3 + 4;
LABEL_28:
  __src = heap_strdup(*(*a1 + 8), a3);
  if (!__src)
  {
    goto LABEL_32;
  }

LABEL_29:
  v23 = *a6;
  if ((v23 - 1) < 2 || v23 == 0xFFFF)
  {
    v78 = cstdlib_strncmp(a3, "ml2mw", 5uLL) == 0;
    *a6 = 0;
  }

  else
  {
    v78 = 1;
  }

  v24 = __src;
  v25 = hlp_SearchDctName(a1, __src, __s);
  if ((v25 & 0x80000000) == 0)
  {
    v26 = 0;
    v27 = 0;
    *(v17 + 3) = *(*(a1 + 600) + 8 * v25);
    goto LABEL_36;
  }

  v45 = heap_Realloc(*(*a1 + 8), *(a1 + 624), 8 * *(a1 + 656) + 16);
  if (!v45)
  {
    goto LABEL_115;
  }

  *(a1 + 624) = v45;
  v46 = *(a1 + 656);
  *(v45 + 8 * v46) = 0;
  *(*(a1 + 624) + 8 * v46 + 8) = 0;
  if (!a8)
  {
    v35 = brk_DataOpen(*(*a1 + 24));
    if ((v35 & 0x80000000) != 0)
    {
      v47 = 0;
      goto LABEL_136;
    }

    v46 = *(a1 + 656);
  }

  v48 = heap_Realloc(*(*a1 + 8), *(a1 + 600), 8 * v46 + 16);
  if (!v48)
  {
    goto LABEL_115;
  }

  *(a1 + 600) = v48;
  v49 = *(a1 + 656);
  *(v48 + 8 * v49) = 0;
  *(*(a1 + 600) + 8 * v49 + 8) = 0;
  v50 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v50)
  {
    goto LABEL_115;
  }

  v51 = *(a1 + 656);
  *(*(a1 + 600) + 8 * v51) = v50;
  *(v17 + 3) = *(*(a1 + 600) + 8 * v51);
  inited = init_DctRom((v17 + 2), v76, *v17, *(*(a1 + 624) + 8 * v51));
  v26 = inited;
  if ((inited & 0x80000000) != 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 600) + 8 * *(a1 + 656)));
      v75 = *(a1 + 656);
      *(*(a1 + 600) + 8 * v75) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 624) + 8 * v75));
      v47 = 0;
      v8 = 0;
      *(*(a1 + 624) + 8 * *(a1 + 656)) = 0;
      goto LABEL_116;
    }

    v47 = 0;
    goto LABEL_75;
  }

  v53 = heap_Realloc(*(*a1 + 8), *(a1 + 592), 8 * *(a1 + 656) + 16);
  if (!v53)
  {
    goto LABEL_115;
  }

  *(a1 + 592) = v53;
  v54 = *(a1 + 656);
  *(v53 + 8 * v54) = 0;
  *(*(a1 + 592) + 8 * v54 + 8) = 0;
  v55 = cstdlib_strlen(__s);
  v56 = cstdlib_strlen(__src);
  if (v55)
  {
    v57 = v55 + 1;
  }

  else
  {
    v57 = 0;
  }

  v58 = heap_Alloc(*(*a1 + 8), (v56 + v57 + 1));
  if (!v58)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    v47 = 0;
    goto LABEL_87;
  }

  v59 = *(a1 + 656);
  *(*(a1 + 592) + 8 * v59) = v58;
  v60 = *(*(a1 + 592) + 8 * v59);
  if (v55)
  {
    cstdlib_memcpy(v60, __s, v55);
    *(*(*(a1 + 592) + 8 * *(a1 + 656)) + v55) = 95;
    v60 = (*(*(a1 + 592) + 8 * *(a1 + 656)) + v55 + 1);
  }

  v24 = __src;
  cstdlib_strcpy(v60, __src);
  MaxOutLen = GetMaxOutLen((v17 + 2));
  v26 = v26;
  if (!MaxOutLen)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    v47 = 0;
    v8 = 2306875399;
    goto LABEL_116;
  }

  v27 = MaxOutLen;
  if (MaxOutLen <= *(a1 + 660))
  {
    goto LABEL_114;
  }

  v62 = heap_Realloc(*(*a1 + 8), *(v17 + 6), MaxOutLen + 1);
  if (!v62)
  {
LABEL_115:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    v47 = 0;
    goto LABEL_116;
  }

  *(a1 + 56) = v62;
  *(a1 + 136) = v62;
  *(a1 + 216) = v62;
  *(a1 + 296) = v62;
  *(a1 + 376) = v62;
  *(a1 + 456) = v62;
  *(a1 + 536) = v62;
  v63 = *(a1 + 568);
  if (*(a1 + 568))
  {
    v64 = *(a1 + 576);
    do
    {
      v65 = *v64++;
      *(v65 + 48) = v62;
      --v63;
    }

    while (v63);
  }

LABEL_114:
  ++*(a1 + 656);
LABEL_36:
  *a7 = GetFieldSeparator((v17 + 2));
  if (*(a1 + 662) < (cstdlib_strlen(a4) + 5))
  {
    v28 = cstdlib_strlen(a4) + 5;
    v29 = heap_Realloc(*(*a1 + 8), *(a1 + 616), v28);
    if (!v29)
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
      goto LABEL_79;
    }

    *(a1 + 662) = v28;
    *(a1 + 616) = v29;
  }

  *a6 = 0;
  *v11 = *(a1 + 608);
  if (v27 > *(a1 + 660))
  {
    if (*(a1 + 658))
    {
      v30 = 0;
      while (1)
      {
        v31 = v30;
        v32 = heap_Realloc(*(*a1 + 8), *(*(a1 + 608) + 8 * v30), v27 + 1);
        if (!v32)
        {
          break;
        }

        *(*(a1 + 608) + 8 * v31) = v32;
        v30 = v31 + 1;
        if (100 * *(a1 + 658) - 1 <= (v31 + 1))
        {
          goto LABEL_44;
        }
      }

      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
LABEL_86:
      v47 = 1;
LABEL_87:
      v24 = __src;
      goto LABEL_116;
    }

LABEL_44:
    v26 = v26;
    *(a1 + 660) = v27;
    v24 = __src;
  }

  LOWORD(v33) = *a6;
  if (((*a6 != 0) & ~v78) != 0)
  {
    v47 = 1;
LABEL_75:
    v8 = v26;
    goto LABEL_116;
  }

  v34 = "\x17";
  v77 = v11;
  while (1)
  {
    HIWORD(v87) = 0;
    if (v33 == 1)
    {
      v80 = v82;
      v81 = v83;
    }

    else
    {
      if (!v33)
      {
        cstdlib_strcpy(*(a1 + 616), a4);
        goto LABEL_53;
      }

      v82 = v80;
      v83 = v81;
    }

    cstdlib_strcpy(*(a1 + 616), v34);
    LH_itoa(*a6, __s2, 0xAu);
    cstdlib_strcat(*(a1 + 616), __s2);
LABEL_53:
    LOWORD(v87) = cstdlib_strlen(*(a1 + 616)) - 1;
    v35 = DctLookup((v17 + 2), *(a1 + 616), &v87 + 1, &v87, 0, &v86, &v82);
    if (v35)
    {
      break;
    }

    if (*a6 + 2 > 100 * *(a1 + 658))
    {
      v36 = heap_Realloc(*(*a1 + 8), *(a1 + 608), 800 * *(a1 + 658) + 800);
      if (!v36)
      {
        goto LABEL_76;
      }

      v37 = v34;
      *(a1 + 608) = v36;
      v38 = 100 * *(a1 + 658);
      if (*(a1 + 658))
      {
        v39 = v38 - 1;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      v41 = v39;
      cstdlib_memset((v36 + 8 * v39), 0, 8 * (((v38 + 100) & 0xFFFC) - v39));
      v42 = *(a1 + 658);
      if (v40 < (100 * v42 + 99))
      {
        while (1)
        {
          v43 = heap_Alloc(*(*a1 + 8), *(a1 + 660) + 1);
          if (!v43)
          {
            break;
          }

          *(*(a1 + 608) + 8 * v41++) = v43;
          v42 = *(a1 + 658);
          if (v41 >= (100 * v42 + 99))
          {
            v41 = v41;
            goto LABEL_63;
          }
        }

LABEL_76:
        log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
LABEL_77:
        v47 = 1;
        v24 = __src;
        v11 = v77;
        goto LABEL_116;
      }

LABEL_63:
      *(*(a1 + 608) + 8 * v41) = 0;
      *(a1 + 658) = v42 + 1;
      v34 = v37;
    }

    if (v86 < 1)
    {
      v44 = 0;
      v11 = v77;
    }

    else
    {
      v44 = 0;
      v11 = v77;
      do
      {
        *(*(*(a1 + 608) + 8 * *a6) + v44) = *(*(v17 + 6) + v44);
        ++v44;
      }

      while (v44 < v86);
    }

    *(*(*(a1 + 608) + 8 * *a6) + v44) = 0;
    v33 = (*a6)++ + 1;
    if (((v78 | HIWORD(v33)) & 1) == 0)
    {
      v8 = 0;
      goto LABEL_86;
    }
  }

  if ((v35 & 0x1FFF) == 0xA)
  {
    goto LABEL_77;
  }

  v24 = __src;
  v11 = v77;
  if ((v35 & 0x1FFF) != 0x14)
  {
    v47 = 1;
LABEL_136:
    v8 = v35;
    goto LABEL_116;
  }

  v8 = 0;
LABEL_79:
  v47 = 1;
LABEL_116:
  heap_Free(*(*a1 + 8), v24);
  if ((v8 & 0x80000000) != 0)
  {
    if ((v47 & 1) == 0)
    {
      v66 = *(a1 + 592);
      if (v66)
      {
        v67 = *(v66 + 8 * *(a1 + 656));
        if (v67)
        {
          heap_Free(*(*a1 + 8), v67);
          *(*(a1 + 592) + 8 * *(a1 + 656)) = 0;
        }
      }

      v68 = *(a1 + 600);
      if (v68)
      {
        v69 = *(a1 + 656);
        v70 = *(v68 + 8 * v69);
        if (v70)
        {
          if (v17)
          {
            v71 = *(a1 + 624);
            if (v71)
            {
              if (*(v71 + 8 * v69))
              {
                *(v17 + 3) = v70;
                exit_DctRom((v17 + 2), *(v71 + 8 * v69));
                v70 = *(*(a1 + 600) + 8 * *(a1 + 656));
              }
            }
          }

          heap_Free(*(*a1 + 8), v70);
          *(*(a1 + 600) + 8 * *(a1 + 656)) = 0;
        }
      }

      v72 = *(a1 + 624);
      if (v72)
      {
        v73 = *(v72 + 8 * *(a1 + 656));
        if (v73)
        {
          brk_DataClose(*(*a1 + 24), v73);
          *(*(a1 + 624) + 8 * *(a1 + 656)) = 0;
        }
      }
    }
  }

  else if (*a6)
  {
    *v11 = *(a1 + 608);
  }

LABEL_133:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Lookup");
  return v8;
}

uint64_t fe_dctlkp_ConvertToCanonicalTokenUtf(uint64_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v10 = safeh_HandleCheck(a1, a2, 62335, 4032);
  if ((v10 & 0x80000000) != 0)
  {
    return 2306875400;
  }

  CanonMap = v10;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ConvertToCanonicalToken");
  if (!a4)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    return 2306875399;
  }

  if (*(a1 + 2996) && cstdlib_strcmp(a3, (a1 + 2738)))
  {
    CanonMap = LoadCanonMap(a1, a2, a3);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    cstdlib_strcpy((a1 + 2738), a3);
  }

  if (*(a1 + 1712) != 2)
  {
    if (*(a1 + 1712))
    {
      if (Utf8_Utf8NbrOfSymbols(a4) - 3 <= 0xFFFFFFFD && cstdlib_strlen(a4))
      {
        v12 = 0;
        do
        {
          v12 += hlp_tolower_char(&a4[v12]);
        }

        while (cstdlib_strlen(a4) > v12);
      }
    }

    else
    {
      hlp_ConvertToCanonicalTokenUtf(a1, a2, a1, *(a1 + 664), a4, v5);
      CanonMap = 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalToken");
  return CanonMap;
}

uint64_t hlp_ConvertToCanonicalTokenUtf(uint64_t result, int a2, uint64_t a3, uint64_t a4, const char *a5, unsigned int a6)
{
  v20 = result;
  v24 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1712) != 2)
  {
    cstdlib_strcpy(__dst, "canonmap");
    if (*(a3 + 3000) == a4)
    {
      cstdlib_strcat(__dst, "g2pdct");
      v9 = a3 + 3008;
    }

    else
    {
      v9 = a3 + 672;
    }

    result = Utf8_Utf8NbrOfSymbols(a5);
    if (result - 3 <= 0xFFFFFFFD)
    {
      result = cstdlib_strlen(a5);
      v10 = result;
      if (result)
      {
        v11 = 0;
        v12 = 0;
        v13 = result;
        do
        {
          v14 = &a5[v12];
          v15 = utf8_determineUTF8CharLength(*v14);
          if (hlp_getUtf8CanMap(v20, a2, __dst, v9, v14, __s))
          {
            v16 = cstdlib_strlen(__s);
            v17 = v16;
            v18 = v13 - v15 + v16;
            if (a6 > v18)
            {
              cstdlib_memmove(&v14[v16], &v14[v15], v13 - (v11 + v15) + 1);
              cstdlib_strncpy(&a5[v12], __s, v17);
              v10 = v18;
            }
          }

          else
          {
            hlp_tolower_char(&a5[v12]);
          }

          result = utf8_determineUTF8CharLength(*v14);
          v12 += result;
          v11 = v12;
          v13 = v10;
        }

        while (v12 < v10);
      }
    }
  }

  return result;
}

unsigned __int8 *hlp_tolower_char(unsigned __int8 *result)
{
  v1 = result;
  LODWORD(result) = *result;
  if ((result - 65) > 0x19)
  {
    if (result != 195)
    {
      LOWORD(result) = utf8_determineUTF8CharLength(result);
      return result;
    }

    v2 = v1[1];
    LOWORD(result) = 2;
    if (v2 > 0x88)
    {
      if (v1[1] > 0x95u)
      {
        if (v2 == 150)
        {
          v3 = -74;
        }

        else
        {
          if (v2 != 156)
          {
            return result;
          }

          v3 = -68;
        }
      }

      else if (v2 == 137)
      {
        v3 = -87;
      }

      else
      {
        if (v2 != 145)
        {
          return result;
        }

        v3 = -79;
      }
    }

    else if (v1[1] > 0x85u)
    {
      if (v2 == 134)
      {
        v3 = -90;
      }

      else
      {
        if (v2 != 135)
        {
          return result;
        }

        v3 = -89;
      }
    }

    else if (v2 == 132)
    {
      v3 = -92;
    }

    else
    {
      if (v2 != 133)
      {
        return result;
      }

      v3 = -91;
    }

    v1[1] = v3;
    return result;
  }

  *v1 = result | 0x20;
  LOWORD(result) = 1;
  return result;
}

uint64_t fe_dctlkp_G2PConvertToCanonicalTokenUtf(uint64_t a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalToken");
  if (a4)
  {
    if (*(a1 + 2996) && cstdlib_strcmp(a3, (a1 + 2738)))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      cstdlib_strcpy((a1 + 2738), a3);
    }

    v12 = *(a1 + 3000);
    if (!v12)
    {
      v12 = *(a1 + 664);
    }

    hlp_ConvertToCanonicalTokenUtf(a1, a2, a1, v12, a4, a5);
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_G2PConvertToCanonicalToken");
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
  }

  return v10;
}

uint64_t fe_dctlkp_ConvertToCanonicalWordUtf(uint64_t a1, uint64_t a2, const char *a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v10 = safeh_HandleCheck(a1, a2, 62335, 4032);
  if ((v10 & 0x80000000) != 0)
  {
    return 2306875400;
  }

  CanonMap = v10;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ConvertToCanonicalWord");
  if (!a4)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    return 2306875399;
  }

  if (cstdlib_strlen(a4))
  {
    if (*(a1 + 2996) && cstdlib_strcmp(a3, (a1 + 2738)))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      cstdlib_strcpy((a1 + 2738), a3);
    }

    if (*(a1 + 1712))
    {
      if (cstdlib_strlen(a4))
      {
        v12 = 0;
        do
        {
          v13 = *(a1 + 584);
          if (!v13)
          {
            break;
          }

          v14 = &a4[v12];
          if (!*v14)
          {
            break;
          }

          if (!utf8_strchr(v13, &a4[v12]))
          {
            break;
          }

          v12 += utf8_determineUTF8CharLength(*v14);
        }

        while (cstdlib_strlen(a4) > v12);
      }

      else
      {
        v12 = 0;
      }

      v15 = cstdlib_strlen(a4);
      v16 = (v15 - 1) & ((v15 - 1) >> 31);
      v17 = v15 - 1;
      while (1)
      {
        v18 = v17;
        if (v17 < 1)
        {
          break;
        }

        v19 = a4[v17-- & 0x7FFF];
        if (v19 >= -64)
        {
          LOWORD(v16) = v18;
          do
          {
            v20 = *(a1 + 584);
            if (!v20)
            {
              break;
            }

            v21 = &a4[v16];
            if (!*v21 || !utf8_strchr(v20, v21))
            {
              break;
            }

            v22 = v16 - 1;
            while (1)
            {
              v16 = v22;
              if (v22 < 1)
              {
                break;
              }

              v23 = a4[v22-- & 0x7FFF];
              if (v23 >= -64)
              {
                goto LABEL_32;
              }
            }

            v16 = 0;
LABEL_32:
            ;
          }

          while (v16 > 0);
          break;
        }
      }

      a4[(v16 + utf8_determineUTF8CharLength(a4[v16]))] = 0;
      v24 = v12;
      if (*(a1 + 1712) != 2 && Utf8_Utf8NbrOfSymbols(&a4[v12]) - 3 <= 0xFFFFFFFD && cstdlib_strlen(a4) > v12)
      {
        do
        {
          v12 += hlp_tolower_char(&a4[v12]);
        }

        while (cstdlib_strlen(a4) > v12);
      }

      v25 = cstdlib_strlen(&a4[v24]);
      cstdlib_memmove(a4, &a4[v24], v25 + 1);
    }

    else
    {
      hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 664), a4, v5);
      CanonMap = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalWord");
  }

  return CanonMap;
}

void *hlp_ConvertToCanonicalWordUtf(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6)
{
  v34 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, "canonmap");
  if (*(a3 + 3000) == a4)
  {
    cstdlib_strcat(__dst, "g2pdct");
    v9 = a3 + 3008;
  }

  else
  {
    v9 = a3 + 672;
  }

  if (cstdlib_strlen(a5))
  {
    v10 = 0;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a3, &a5[v10]))
      {
        break;
      }

      v10 += utf8_determineUTF8CharLength(a5[v10]);
    }

    while (cstdlib_strlen(a5) > v10);
    v28 = v10;
  }

  else
  {
    v28 = 0;
  }

  if (cstdlib_strlen(a5))
  {
    v11 = (cstdlib_strlen(a5) - 1);
    if (v11 >= 1)
    {
      while (a5[v11] < -64)
      {
        v12 = v11;
        LOWORD(v11) = v11 - 1;
        if (v12 <= 1)
        {
          goto LABEL_14;
        }
      }

      do
      {
        if (!loc_fe_dctlkp_IsPunctUtf(a3, &a5[v11]))
        {
          break;
        }

        v13 = v11 - 1;
        while (1)
        {
          v11 = v13;
          if (v13 < 1)
          {
            break;
          }

          v14 = a5[v13-- & 0x7FFF];
          if (v14 >= -64)
          {
            goto LABEL_22;
          }
        }

        v11 = 0;
LABEL_22:
        ;
      }

      while (v11 > 0);
    }
  }

  else
  {
LABEL_14:
    LOWORD(v11) = 0;
  }

  v15 = utf8_determineUTF8CharLength(a5[v11]) + v11;
  if (v15 >= a6)
  {
    LOWORD(v15) = a6 - 1;
  }

  a5[v15] = 0;
  if (*(a3 + 1712) != 2 && Utf8_Utf8NbrOfSymbols(&a5[v28]) - 3 <= 0xFFFFFFFD)
  {
    v16 = cstdlib_strlen(a5);
    v17 = v16;
    if (v16)
    {
      v18 = 0;
      v19 = 0;
      v20 = v16;
      do
      {
        v21 = &a5[v19];
        v22 = utf8_determineUTF8CharLength(*v21);
        if (hlp_getUtf8CanMap(a1, a2, __dst, v9, v21, __s))
        {
          v23 = cstdlib_strlen(__s);
          v24 = v23;
          v25 = v20 - v22 + v23;
          if (a6 > v25)
          {
            cstdlib_memmove(&v21[v23], &v21[v22], v20 - (v18 + v22) + 1);
            cstdlib_strncpy(&a5[v19], __s, v24);
            v17 = v25;
          }
        }

        else
        {
          hlp_tolower_char(&a5[v19]);
        }

        v19 += utf8_determineUTF8CharLength(*v21);
        v18 = v19;
        v20 = v17;
      }

      while (v19 < v17);
    }
  }

  v26 = cstdlib_strlen(&a5[v28]);
  return cstdlib_memmove(a5, &a5[v28], v26 + 1);
}

BOOL loc_fe_dctlkp_IsPunctUtf(_BOOL8 result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = *(v2 + 584);
      if (v3)
      {
        return *a2 && utf8_strchr(v3, a2) != 0;
      }
    }
  }

  return result;
}

uint64_t fe_dctlkp_G2PConvertToCanonicalWordUtf(uint64_t a1, uint64_t a2, const char *a3, char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalWord");
  if (a4)
  {
    if (*(a1 + 2996) && cstdlib_strcmp(a3, (a1 + 2738)))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      cstdlib_strcpy((a1 + 2738), a3);
    }

    v12 = *(a1 + 3000);
    if (!v12)
    {
      v12 = *(a1 + 664);
    }

    hlp_ConvertToCanonicalWordUtf(a1, a2, a1, v12, a4, a5);
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_G2PConvertToCanonicalWord");
    return 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
  }

  return v10;
}

uint64_t fe_dctlkp_LookupMultiwordUtf(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, char *a5, const char *a6, void *a7, unsigned __int16 *a8)
{
  v23 = 0;
  v16 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_LookupMultiword");
  if (!a3 || !a7 || !a8)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    return v16;
  }

  if (*(a1 + 2996) && cstdlib_strcmp(a6, (a1 + 2738)))
  {
    CanonMap = LoadCanonMap(a1, a2, a6);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    cstdlib_strcpy((a1 + 2738), a6);
  }

  if (cstdlib_strlen(a3))
  {
    v18 = 0;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a1, &a3[v18]))
      {
        break;
      }

      v18 += utf8_determineUTF8CharLength(a3[v18]);
    }

    while (cstdlib_strlen(a3) > v18);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 1712);
  if (*(a1 + 1712))
  {
    goto LABEL_21;
  }

  if (Utf8_Utf8NbrOfSymbols(a3) - 3 > 0xFFFFFFFD)
  {
    v19 = *(a1 + 1712);
LABEL_21:
    if (v19 != 2 && cstdlib_strlen(a3) > v18)
    {
      v20 = v18;
      do
      {
        v20 += hlp_tolower_char(&a3[v20]);
      }

      while (cstdlib_strlen(a3) > v20);
    }

    goto LABEL_25;
  }

  hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 664), a3, a4);
LABEL_25:
  v21 = cstdlib_strlen(&a3[v18]);
  cstdlib_memmove(a3, &a3[v18], v21 + 1);
  *a8 = 0;
  v16 = fe_dctlkp_LookupAddonDct(a1, a2, a5, a3, a7, a8, &v23, 0);
  if ((v16 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_LookupMultiword");
  }

  return v16;
}

BOOL fe_dctlkp_IsPunctUtf(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 4032) & 0x80000000) != 0)
  {
    return 0;
  }

  return loc_fe_dctlkp_IsPunctUtf(a1, a3);
}

unsigned int *fe_GetDct(unsigned int *a1, int a2, char *__s, _WORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *a4;
  if (v7 == 2)
  {
    v12 = a1 + 82;
    v11 = __s;
LABEL_13:
    *a4 = 0;
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    v8 = *(*a1 + 8);
    v9 = cstdlib_strlen(__s);
    v10 = heap_Alloc(v8, (v9 + 2));
    if (!v10)
    {
LABEL_24:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
      return 0;
    }

    v11 = v10;
    cstdlib_strcpy(v10, __s);
    cstdlib_strcat(v11, "C");
    v12 = a1 + 22;
    v7 = *a4;
  }

  else
  {
    v12 = a1 + 2;
    v11 = __s;
  }

  if ((v7 - 1) < 2 || v7 == 0xFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  v14 = hlp_SearchDctName(a1, v11, "");
  if ((v14 & 0x80000000) == 0)
  {
    *(v12 + 3) = *(*(a1 + 75) + 8 * v14);
    return v12;
  }

  v15 = heap_Realloc(*(*a1 + 8), *(a1 + 78), 8 * *(a1 + 328) + 16);
  if (!v15)
  {
    goto LABEL_24;
  }

  *(a1 + 78) = v15;
  v16 = *(a1 + 328);
  *(v15 + 8 * v16) = 0;
  *(*(a1 + 78) + 8 * v16 + 8) = 0;
  if ((brk_DataOpen(*(*a1 + 24)) & 0x80000000) != 0)
  {
    return v12;
  }

  v17 = heap_Realloc(*(*a1 + 8), *(a1 + 75), 8 * *(a1 + 328) + 16);
  if (!v17)
  {
    goto LABEL_24;
  }

  *(a1 + 75) = v17;
  v18 = *(a1 + 328);
  *(v17 + 8 * v18) = 0;
  *(*(a1 + 75) + 8 * v18 + 8) = 0;
  v19 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = *(a1 + 328);
  *(*(a1 + 75) + 8 * v20) = v19;
  *(v12 + 3) = *(*(a1 + 75) + 8 * v20);
  inited = init_DctRom((v12 + 2), __s, *v12, *(*(a1 + 78) + 8 * v20));
  if (inited < 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 75) + 8 * *(a1 + 328)));
      v29 = *(a1 + 328);
      *(*(a1 + 75) + 8 * v29) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 78) + 8 * v29));
      *(*(a1 + 78) + 8 * *(a1 + 328)) = 0;
    }
  }

  else
  {
    v22 = heap_Realloc(*(*a1 + 8), *(a1 + 74), 8 * *(a1 + 328) + 16);
    if (v22 && (*(a1 + 74) = v22, v23 = *(a1 + 328), *(v22 + 8 * v23) = 0, *(*(a1 + 74) + 8 * v23 + 8) = 0, v24 = *(*a1 + 8), v25 = cstdlib_strlen(v11), (v26 = heap_Alloc(v24, (v25 + 1))) != 0))
    {
      v27 = *(a1 + 328);
      *(*(a1 + 74) + 8 * v27) = v26;
      cstdlib_strcpy(*(*(a1 + 74) + 8 * v27), v11);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    }
  }

  return v12;
}

uint64_t hlp_SearchDctName(uint64_t a1, const char *a2, char *__s)
{
  v6 = cstdlib_strlen(__s);
  if (*(a1 + 656))
  {
    v7 = 0;
    v8 = v6;
    do
    {
      v9 = *(*(a1 + 592) + 8 * v7);
      if (v8)
      {
        if (!cstdlib_strncmp(v9, __s, v8))
        {
          v10 = *(*(a1 + 592) + 8 * v7) + v8;
          if (*v10 == 95)
          {
            v11 = cstdlib_strlen(a2);
            if (!cstdlib_strncmp((v10 + 1), a2, v11))
            {
              return v7;
            }
          }
        }
      }

      else if (!cstdlib_strcmp(v9, a2))
      {
        return v7;
      }

      ++v7;
    }

    while (v7 < *(a1 + 656));
  }

  LOWORD(v7) = -1;
  return v7;
}

size_t lowercase(const char *a1, uint64_t a2)
{
  result = cstdlib_strlen(a1);
  v5 = 0;
  if (result)
  {
    v6 = 0;
    do
    {
      v7 = a1[v5];
      if ((v7 - 65) < 0x1A)
      {
        LOBYTE(v7) = v7 | 0x20;
      }

      *(a2 + v5) = v7;
      v5 = ++v6;
      result = cstdlib_strlen(a1);
    }

    while (result > v6);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t fe_dctlkp_LoadAddonDct(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&__c[1] = -1;
  v7 = 2306875402;
  if (!a1)
  {
    return 2306875400;
  }

  *&__c[3] = 0;
  v15 = heap_Realloc(*(*a1 + 8), *(a1 + 576), 8 * *(a1 + 568) + 8);
  if (!v15)
  {
    goto LABEL_6;
  }

  *(a1 + 576) = v15;
  v16 = heap_Alloc(*(*a1 + 8), 640);
  v17 = *(a1 + 568);
  *(*(a1 + 576) + 8 * v17) = v16;
  v18 = *(*(a1 + 576) + 8 * v17);
  if (!v18)
  {
    goto LABEL_6;
  }

  if (a7)
  {
    v19 = *(*a1 + 8);
    v20 = cstdlib_strlen(a7);
    v21 = heap_Alloc(v19, (v20 + 1));
    v22 = *(a1 + 576);
    v23 = *(a1 + 568);
    *(*(v22 + 8 * v23) + 632) = v21;
    v24 = *(*(v22 + 8 * v23) + 632);
    if (!v24)
    {
LABEL_6:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
      return v7;
    }
  }

  else
  {
    v24 = *(v18 + 632);
  }

  cstdlib_strcpy(v24, a7);
  v25 = *(a1 + 576);
  v26 = *(a1 + 568);
  *(*(v25 + 8 * v26) + 624) = a5;
  v27 = *(v25 + 8 * v26);
  *(v27 + 72) = *(a1 + 570);
  *(v27 + 56) = a3;
  v28 = *(v25 + 8 * v26);
  *(v28 + 64) = a4;
  v29 = open_DctRom((v28 + 8), 0, v28);
  if ((v29 & 0x80000000) != 0)
  {
    return v29;
  }

  __c[0] = 0;
  v30 = *(a1 + 576);
  v31 = *(a1 + 568);
  *(*(v30 + 8 * v31) + 48) = *(a1 + 56);
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "lang", &__c[3], &__c[1], __c, *(v30 + 8 * v31));
  if (*&__c[1])
  {
    v32 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v32)
    {
      *v32 = 0;
    }

    cstdlib_strcpy((*(*(a1 + 576) + 8 * *(a1 + 568)) + 80), **&__c[3]);
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "cfg", &__c[3], &__c[1], __c, *(*(a1 + 576) + 8 * *(a1 + 568)));
  if (*&__c[1])
  {
    v33 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v33)
    {
      *v33 = 0;
    }

    cstdlib_strcpy((*(*(a1 + 576) + 8 * *(a1 + 568)) + 84), **&__c[3]);
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "codecomp", &__c[3], &__c[1], __c, *(*(a1 + 576) + 8 * *(a1 + 568)));
  if (*&__c[1])
  {
    v34 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v34)
    {
      *v34 = 0;
    }

    v35 = cstdlib_atoi(**&__c[3]);
    v36 = *(*(a1 + 576) + 8 * *(a1 + 568));
    *(v36 + 104) = v35;
  }

  else
  {
    v36 = *(*(a1 + 576) + 8 * *(a1 + 568));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "datacomp", &__c[3], &__c[1], __c, v36);
  if (*&__c[1])
  {
    v37 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v37)
    {
      *v37 = 0;
    }

    v38 = cstdlib_atoi(**&__c[3]);
    v39 = *(*(a1 + 576) + 8 * *(a1 + 568));
    *(v39 + 105) = v38;
  }

  else
  {
    v39 = *(*(a1 + 576) + 8 * *(a1 + 568));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "g2pdcts", &__c[3], &__c[1], __c, v39);
  if (*&__c[1])
  {
    v40 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v40)
    {
      *v40 = 0;
    }

    v41 = *(*(a1 + 576) + 8 * *(a1 + 568));
    v42 = **&__c[3];
  }

  else
  {
    v41 = *(*(a1 + 576) + 8 * *(a1 + 568));
    v42 = "";
  }

  cstdlib_strcpy((v41 + 106), v42);
  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "tndcts", &__c[3], &__c[1], __c, *(*(a1 + 576) + 8 * *(a1 + 568)));
  if (*&__c[1])
  {
    v43 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v43)
    {
      *v43 = 0;
    }

    v44 = *(*(a1 + 576) + 8 * *(a1 + 568));
    v45 = **&__c[3];
  }

  else
  {
    v44 = *(*(a1 + 576) + 8 * *(a1 + 568));
    v45 = "";
  }

  cstdlib_strcpy((v44 + 362), v45);
  v7 = hlp_EnableAddon(a1, a2, *(*(a1 + 576) + 8 * *(a1 + 568)));
  v46 = *(a1 + 568);
  *a6 = *(*(a1 + 576) + 8 * v46);
  *(a6 + 8) = 62335;
  *(a1 + 568) = v46 + 1;
  ++*(a1 + 570);
  return v7;
}

uint64_t fe_dctlkp_UnLoadAddonDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = 2306875402;
  if (!a1)
  {
    return 2306875400;
  }

  LOWORD(v5) = *(a1 + 568);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(*(a1 + 576) + 8 * i);
      if (v8 == a3)
      {
        v9 = *(v8 + 632);
        if (v9)
        {
          heap_Free(*(*a1 + 8), v9);
          v10 = *(a1 + 576);
          *(*(v10 + 8 * i) + 632) = 0;
          v8 = *(v10 + 8 * i);
          v32 = 0;
          *__s = 0;
          if (!v8)
          {
            return 2306875400;
          }
        }

        else
        {
          v32 = 0;
          *__s = 0;
        }

        LH_itoa(*(v8 + 72), __s, 0xAu);
        if (*(a1 + 656))
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = *(*(a1 + 592) + 8 * v11);
            v16 = cstdlib_strlen(__s);
            if (cstdlib_strncmp(v15, __s, v16))
            {
              if (v13)
              {
                *(*(a1 + 592) + 8 * v12) = *(*(a1 + 592) + 8 * v11);
                *(*(a1 + 600) + 8 * v12) = *(*(a1 + 600) + 8 * v11);
                *(*(a1 + 624) + 8 * v12) = *(*(a1 + 624) + 8 * v11);
              }

              ++v12;
            }

            else
            {
              v17 = *(*(a1 + 600) + 8 * v11);
              if (v17)
              {
                heap_Free(*(*a1 + 8), v17);
                *(*(a1 + 600) + 8 * v11) = 0;
              }

              v18 = *(*(a1 + 592) + 8 * v11);
              if (v18)
              {
                heap_Free(*(*a1 + 8), v18);
                *(*(a1 + 592) + 8 * v11) = 0;
              }

              v19 = *(*(a1 + 624) + 8 * v11);
              if (v19)
              {
                brk_DataClose(*(*a1 + 24), v19);
                *(*(a1 + 624) + 8 * v11) = 0;
              }

              ++v14;
              v13 = 1;
            }

            ++v11;
            v20 = *(a1 + 656);
          }

          while (v11 < v20);
          if (v14)
          {
            v21 = v20 - v14;
            *(a1 + 656) = v21;
            v22 = heap_Realloc(*(*a1 + 8), *(a1 + 592), 8 * v21 + 16);
            if (!v22)
            {
              return v3;
            }

            *(a1 + 592) = v22;
            v23 = heap_Realloc(*(*a1 + 8), *(a1 + 600), 8 * *(a1 + 656) + 16);
            if (!v23)
            {
              return v3;
            }

            *(a1 + 600) = v23;
            v24 = heap_Realloc(*(*a1 + 8), *(a1 + 624), 8 * *(a1 + 656) + 16);
            if (!v24)
            {
              return v3;
            }

            *(a1 + 624) = v24;
            v25 = *(a1 + 656);
            *(*(a1 + 592) + 8 * v25) = 0;
            *(*(a1 + 592) + 8 * v25 + 8) = 0;
            *(*(a1 + 600) + 8 * v25) = 0;
            *(*(a1 + 600) + 8 * v25 + 8) = 0;
            *(*(a1 + 624) + 8 * v25) = 0;
            *(*(a1 + 624) + 8 * v25 + 8) = 0;
          }
        }

        v26 = *(*(a1 + 576) + 8 * i);
        v27 = *(v26 + 624);
        if (v27)
        {
          v28 = *(v26 + 56);
          if (v28)
          {
            brk_DataUnmap(*(*a1 + 24), v27, v28);
            v27 = *(*(*(a1 + 576) + 8 * i) + 624);
          }

          brk_DataClose(*(*a1 + 24), v27);
          v26 = *(*(a1 + 576) + 8 * i);
        }

        heap_Free(*(*a1 + 8), v26);
        v5 = *(a1 + 568) - 1;
        if (v5 > i)
        {
          v29 = i;
          do
          {
            *(*(a1 + 576) + 8 * v29) = *(*(a1 + 576) + 8 * v29 + 8);
            ++v29;
          }

          while (v5 > v29);
        }

        *(a1 + 568) = v5;
      }
    }
  }

  return 0;
}

uint64_t fe_dctlkp_GetCfgParamVal(uint64_t a1, int a2, const char *a3, char *a4, char **a5)
{
  *a5 = a4;
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v9 = 0;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", a3, &v9, (__c + 1), __c, 0);
  if ((v6 & 0x80000000) == 0 && *(__c + 1))
  {
    v7 = cstdlib_strchr(*v9, LOBYTE(__c[0]));
    if (v7)
    {
      *v7 = 0;
    }

    *a5 = *v9;
  }

  return v6;
}

uint64_t fe_dctlkp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2306875393;
  }

  result = 0;
  *a2 = &IFeDctLkp;
  return result;
}

uint64_t loc_fe_dctlkp_getTokenDef(uint64_t a1, int a2, uint64_t *a3, char *__src, const char *a5, char **a6)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(__c, 0, sizeof(__c));
  cstdlib_strcpy(__dst, __src);
  cstdlib_strcat(__dst, a5);
  v11 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", __dst, &__c[3], &__c[1], __c, 0);
  if ((v11 & 0x80000000) == 0 && *&__c[1] == 1)
  {
    v12 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
    }

    v13 = cstdlib_strlen(**&__c[3]);
    v14 = *a3;
    if (v13 < 0x100)
    {
      v15 = *(v14 + 8);
      v16 = cstdlib_strlen(**&__c[3]);
      v17 = heap_Calloc(v15, (v16 + 1), 1);
      *a6 = v17;
      if (v17)
      {
        cstdlib_strcpy(v17, **&__c[3]);
      }

      else
      {
        return 2306875402;
      }
    }

    else
    {
      log_OutPublic(*(v14 + 32), "FE_DCTLKP", 41003, 0);
      return 2306875392;
    }
  }

  return v11;
}

char *heap_strdup(uint64_t a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(a1, (v4 + 1));
  v6 = v5;
  if (v5)
  {
    cstdlib_strcpy(v5, __s);
  }

  return v6;
}

BOOL hlp_getUtf8CanMap(uint64_t a1, int a2, char *__src, uint64_t a4, const char *a5, char *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (!*(a4 + 4 * *a5))
  {
    return 0;
  }

  v18 = 0;
  v16 = 0;
  *a6 = 0;
  cstdlib_strcpy(__dst, __src);
  cstdlib_strcat(__dst, "_");
  cstdlib_strcat(__dst, (a1 + 2738));
  if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", __dst, &v18, &v17, &v16, 0) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!v17)
  {
    cstdlib_strcpy(__dst, __src);
    if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", __dst, &v18, &v17, &v16, 0) & 0x80000000) != 0 || !v17)
    {
      return 0;
    }
  }

  if (*a6)
  {
    return 1;
  }

  for (i = 0; i < v17; ++i)
  {
    v12 = *(v18 + 8 * i);
    v13 = utf8_determineUTF8CharLength(*v12);
    v12[utf8_determineUTF8CharLength(*v12)] = 0;
    v14 = cstdlib_strlen(v12);
    if (!cstdlib_strncmp(v12, a5, v14))
    {
      cstdlib_strcpy(a6, &v12[v13 + 1]);
    }

    if (*a6)
    {
      break;
    }
  }

  return *a6 != 0;
}

uint64_t fe_nn_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2706382849;
  }

  result = 0;
  *a2 = &IFeNn;
  return result;
}

uint64_t WordScanner_Con(uint64_t a1, const char *a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__WordScanner;
    if (a2)
    {
      *(a1 + 8) = a2;
      *(a1 + 16) = cstdlib_strlen(a2);

      return WordScanner_ResetFrom(a1, 0);
    }

    else
    {

      return err_GenerateErrorArg();
    }
  }

  return result;
}

uint64_t WordScanner_ResetFrom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2 || (v3 = a2, utf8_BelongsToSet(1, *(a1 + 8), a2, v2)))
  {
LABEL_3:

    return err_GenerateErrorArg();
  }

  PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(*(a1 + 8), v3, *(a1 + 16));
  v7 = *(a1 + 16);
  if (PreviousUtf8OffsetLimit < v7)
  {
    if (!utf8_BelongsToSet(1, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
    {
      goto LABEL_3;
    }

    v7 = *(a1 + 16);
  }

  for (*(a1 + 18) = v3; v7 > v3; v7 = *(a1 + 16))
  {
    if (utf8_BelongsToSet(1, *(a1 + 8), v3, v7))
    {
      break;
    }

    LODWORD(v3) = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), v3, *(a1 + 16));
  }

  *(a1 + 20) = v3;
  return 0;
}

uint64_t WordScanner_ConFrom(uint64_t a1, const char *a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__WordScanner;
    if (a2)
    {
      *(a1 + 8) = a2;
      *(a1 + 16) = cstdlib_strlen(a2);

      return WordScanner_ResetFrom(a1, a3);
    }

    else
    {

      return err_GenerateErrorArg();
    }
  }

  return result;
}

uint64_t WordScanner_NextWord(uint64_t a1)
{
  NextUtf8OffsetLimit = *(a1 + 20);
  for (i = *(a1 + 16); i > NextUtf8OffsetLimit; i = *(a1 + 16))
  {
    v4 = utf8_BelongsToSet(1, *(a1 + 8), NextUtf8OffsetLimit, i);
    i = *(a1 + 16);
    if (!v4)
    {
      break;
    }

    NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), NextUtf8OffsetLimit, *(a1 + 16));
  }

  if (NextUtf8OffsetLimit >= i)
  {
    return 0;
  }

  *(a1 + 18) = NextUtf8OffsetLimit;
  do
  {
    if (utf8_BelongsToSet(1, *(a1 + 8), NextUtf8OffsetLimit, i))
    {
      break;
    }

    LODWORD(NextUtf8OffsetLimit) = utf8_GetNextUtf8OffsetLimit(*(a1 + 8), NextUtf8OffsetLimit, *(a1 + 16));
    i = *(a1 + 16);
  }

  while (i > NextUtf8OffsetLimit);
  *(a1 + 20) = NextUtf8OffsetLimit;
  return 1;
}

uint64_t WordScanner_PrevWord(uint64_t a1)
{
  v2 = *(a1 + 18);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2;
  while (1)
  {
    PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(v3, v5, v4);
    v7 = *(a1 + 16);
    if (PreviousUtf8OffsetLimit >= v7)
    {
      break;
    }

    v8 = utf8_BelongsToSet(1, *(a1 + 8), PreviousUtf8OffsetLimit, v7);
    v7 = *(a1 + 16);
    if (!v8)
    {
      break;
    }

    LOWORD(v2) = PreviousUtf8OffsetLimit;
    v3 = *(a1 + 8);
    v5 = PreviousUtf8OffsetLimit;
    v4 = *(a1 + 16);
  }

  if (PreviousUtf8OffsetLimit >= v7)
  {
    return 0;
  }

  *(a1 + 20) = v2;
  while (!utf8_BelongsToSet(1, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
  {
    LOWORD(v2) = PreviousUtf8OffsetLimit;
    v9 = utf8_GetPreviousUtf8OffsetLimit(*(a1 + 8), PreviousUtf8OffsetLimit, *(a1 + 16));
    v7 = *(a1 + 16);
    if (v7 <= v9)
    {
      break;
    }

    PreviousUtf8OffsetLimit = v9;
  }

  *(a1 + 18) = v2;
  return 1;
}

uint64_t PNEW_WordScanner_Con(uint64_t a1, const char *a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 24, &v8);
  result = v8;
  if (!v8)
  {
    result = WordScanner_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_WordScanner_ConFrom(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 24, &v10);
  result = v10;
  if (!v10)
  {
    result = WordScanner_ConFrom(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t ooc_utils_createAllocator(uint64_t a1, _WORD *a2, int a3)
{
  v6 = 0;
  if ((InitRsrcFunction(a2, a3, &v6) & 0x80000000) != 0)
  {
    err_GenerateErrorInternalMsg("InitRsrcFunction");
    return 9;
  }

  else
  {
    v4 = *(v6 + 8);
    *&v7 = heap_Alloc;
    *(&v7 + 1) = heap_Calloc;
    v8 = heap_Realloc;
    v9 = heap_Free;
    return OOCAllocator_Con(a1, &v7, v4);
  }
}

uint64_t err_GenerateErrorInternalMsg(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  err_ErrorGetCallback(&v4, &v3);
  if (v4)
  {
    v4(v3, 9, "Internal Error.", a1);
  }

  return 9;
}

uint64_t ooc_utils_createAllocator_UseHeapHandle(uint64_t a1, uint64_t a2)
{
  *&v3 = heap_Alloc;
  *(&v3 + 1) = heap_Calloc;
  v4 = heap_Realloc;
  v5 = heap_Free;
  return OOCAllocator_Con(a1, &v3, a2);
}

uint64_t Params_Con(void *a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__Params;
    a1[1] = a2;
    a1[2] = a3;
    a1[3] = 0;
    if ((InitRsrcFunction(a2, a3, a1 + 3) & 0x80000000) != 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }

    else
    {
      result = ooc_utils_createAllocator((a1 + 4), a1[1], a1[2]);
      if (!result)
      {
        a1[9] = a4;
      }
    }
  }

  return result;
}

uint64_t Params_Des(uint64_t a1)
{
  OOCAllocator_Des();

  return Object_Des();
}

uint64_t Params_GetCfgParamValueFloat(uint64_t a1, _BYTE *a2, float *a3, float a4)
{
  v10 = 0;
  if (a3)
  {
    *a3 = a4;
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v10);
    v7 = v10;
    if (!CfgParamValueString && v10)
    {
      if (!*v10)
      {
        CfgParamValueString = 0;
LABEL_12:
        heap_Free(*(*(a1 + 24) + 8), v7);
        return CfgParamValueString;
      }

      cstdlib_atof(v10);
      *&v8 = v8;
      *a3 = *&v8;
      v7 = v10;
    }

    if (!v7)
    {
      return CfgParamValueString;
    }

    goto LABEL_12;
  }

  return err_GenerateErrorArg();
}

uint64_t Params_GetCfgParamValueString(uint64_t a1, _BYTE *a2, char **a3)
{
  v16 = 0;
  v17 = 0;
  v15 = -1;
  *&__c[1] = 0;
  __c[0] = 0;
  if (!a2 || !*a2 || !a3)
  {
    ErrorArg = err_GenerateErrorArg();
LABEL_17:
    v6 = ErrorArg;
    goto LABEL_18;
  }

  *a3 = 0;
  if ((objc_GetObject(*(*(a1 + 24) + 48), "FE_DCTLKP", &v17) & 0x80000000) != 0)
  {
    v13 = "objc_GetObject";
LABEL_25:
    ErrorArg = err_GenerateErrorInternalMsg(v13);
    goto LABEL_17;
  }

  if (!cstdlib_strcmp(*(a1 + 72), "fecfg"))
  {
    goto LABEL_9;
  }

  if (((*(v17[1] + 72))(v17[2], v17[3], *(a1 + 72), &__c[1]) & 0x80000000) != 0)
  {
    v13 = "pIDctlkp->pfQueryDictExists";
    goto LABEL_25;
  }

  if (!*&__c[1])
  {
    v6 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v15 = 1;
LABEL_9:
  if (((*(v17[1] + 96))(v17[2], v17[3], *(a1 + 72), a2, &v16, &v15, __c) & 0x80000000) != 0)
  {
    v13 = "pIDctlkp->pfLookupUtf";
    goto LABEL_25;
  }

  v6 = 0;
  if (v15 == 1 && v16)
  {
    v7 = cstdlib_strchr(*v16, __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    v8 = *(*(a1 + 24) + 8);
    v9 = cstdlib_strlen(*v16);
    v10 = heap_Calloc(v8, 1, (v9 + 1));
    *a3 = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, *v16);
      v6 = 0;
      goto LABEL_18;
    }

    ErrorArg = err_GenerateErrorResource();
    goto LABEL_17;
  }

LABEL_18:
  if (v17)
  {
    objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
  }

  return v6;
}

uint64_t Params_GetCfgParamValueInteger(uint64_t a1, _BYTE *a2, int a3, _DWORD *a4)
{
  v9 = 0;
  if (a4)
  {
    *a4 = a3;
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v9);
    v7 = v9;
    if (!CfgParamValueString && v9)
    {
      if (!*v9)
      {
        CfgParamValueString = 0;
LABEL_12:
        heap_Free(*(*(a1 + 24) + 8), v7);
        return CfgParamValueString;
      }

      *a4 = cstdlib_atoi(v9);
      v7 = v9;
    }

    if (!v7)
    {
      return CfgParamValueString;
    }

    goto LABEL_12;
  }

  return err_GenerateErrorArg();
}

uint64_t Params_GetCfgParamValueListOfStrings(void *a1, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v11 = 0;
  if (*a4 || (CfgParamValueString = PNEW_StringList_Con((a1 + 4), a1[1], a1[2], a4), !CfgParamValueString))
  {
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v11);
    v9 = v11;
    if (!CfgParamValueString && v11)
    {
      CfgParamValueString = StringList_FromSplitString(*a4, v11, v5);
      v9 = v11;
    }

    if (v9)
    {
      heap_Free(*(a1[3] + 8), v9);
    }
  }

  return CfgParamValueString;
}

uint64_t PNEW_Params_Con(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 80, &v12);
  result = v12;
  if (!v12)
  {
    result = Params_Con(v10, a2, a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t StringList_Con(uint64_t a1, _WORD *a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__StringList;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = -1;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    inited = InitRsrcFunction(a2, a3, (a1 + 24));
    result = 0;
    if (inited < 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }
  }

  return result;
}

uint64_t StringList_Des(void *a1)
{
  StringList_Reset(a1);

  return Object_Des();
}

void *StringList_Reset(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        heap_Free(*(v1[3] + 8), v3);
        *(v1[4] + 8 * v4) = 0;
        ++v5;
        v2 = v1[4];
        v4 = v5;
        v3 = v2[v5];
      }

      while (v3);
    }

    result = heap_Free(*(v1[3] + 8), v2);
    v1[4] = 0;
    *(v1 + 20) = 0;
  }

  v1[6] = 0;
  v1[7] = 0;
  *(v1 + 32) = -1;
  return result;
}

uint64_t StringList_Append(uint64_t a1, char *__s)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v3;
    }

    while (*(v2 + 8 * v3++));
  }

  else
  {
    v4 = 0;
  }

  return StringList_InsertAt(a1, v4, __s);
}

uint64_t StringList_InsertAt(uint64_t a1, unsigned int a2, char *__s)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v7;
    }

    while (*(v6 + 8 * v7++));
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  if (v8 < a2)
  {
    return 3;
  }

  v12 = *(a1 + 40);
  if (v8 + 2 > v12)
  {
    v13 = v12 + 20;
    v14 = heap_Realloc(*(*(a1 + 24) + 8), v6, 8 * (v12 + 20));
    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = v14;
    if (v10 < v13)
    {
      bzero((v14 + 8 * v10), 8 * (v12 - v10 + 19) + 8);
    }

    *(a1 + 32) = v15;
    *(a1 + 40) = v13;
  }

  v16 = cstdlib_strlen(__s);
  v17 = __StringList_hlpDuplicateSubString(a1, __s, 0, v16);
  if (v17)
  {
    v18 = v17;
    v19 = *(a1 + 32) + 8 * a2;
    cstdlib_memmove((v19 + 8), v19, 8 * (v10 - a2));
    result = 0;
    *(*(a1 + 32) + 8 * a2) = v18;
    return result;
  }

LABEL_15:

  return err_GenerateErrorResource();
}

uint64_t StringList_GetCountStrings(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = v2;
    }

    while (*(v1 + 8 * v2++));
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t StringList_FromSplitString(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  v5 = a3;
  StringList_Reset(a1);
  v6 = cstdlib_strlen(a2);
  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  if (v6 + 1 > 1)
  {
    v10 = v6 + 1;
  }

  do
  {
    v11 = a2[v8];
    if (v11 == v5 || v11 == 0)
    {
      ++v9;
    }

    ++v8;
  }

  while (v10 != v8);
  v13 = v9 + 1;
  v14 = heap_Calloc(*(*(a1 + 24) + 8), 1, (8 * v13));
  *(a1 + 32) = v14;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *(a1 + 40) = v13;
    do
    {
      v18 = a2[v16];
      if (v18 == v5 || v18 == 0)
      {
        *(*(a1 + 32) + 8 * v17) = __StringList_hlpDuplicateSubString(a1, a2, v15, v16);
        if (!*(*(a1 + 32) + 8 * v17))
        {
          goto LABEL_20;
        }

        ++v16;
        ++v17;
        v15 = v16;
      }

      else
      {
        ++v16;
      }
    }

    while (v16 <= v7);
    return 0;
  }

  else
  {
LABEL_20:
    ErrorResource = err_GenerateErrorResource();
    if (ErrorResource)
    {
      StringList_Reset(a1);
    }
  }

  return ErrorResource;
}

char *__StringList_hlpDuplicateSubString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - a3;
  v7 = heap_Calloc(*(*(a1 + 24) + 8), 1, a4 - a3 + 1);
  v8 = v7;
  if (v7)
  {
    cstdlib_strncpy(v7, (a2 + a3), v6);
  }

  return v8;
}

uint64_t StringList_FromSplitStringInUtf8(uint64_t a1, char *__s, int a3, const char *a4, const char *a5, _WORD *a6)
{
  v12 = *(a1 + 32);
  if (v12 && ((v13 = *(a1 + 64), v13 >= 7) ? (v14 = v13 == 0xFFFF) : (v14 = 1), !v14 || (StringList_Reset(a1), (v12 = *(a1 + 32)) != 0)))
  {
    v15 = 0;
    do
    {
      v16 = v15;
    }

    while (*(v12 + 8 * v15++));
  }

  else
  {
    v16 = 0;
  }

  if (a3 == 0xFFFF)
  {
    LOWORD(a3) = cstdlib_strlen(__s);
  }

  if (v16 < a3)
  {
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 24) + 8);
    v20 = 8 * a3;
    if (v18)
    {
      v21 = heap_Realloc(v19, v18, v20 + 8);
      if (!v21)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v21 = heap_Alloc(v19, v20 + 8);
      if (!v21)
      {
LABEL_40:

        return err_GenerateErrorResource();
      }
    }

    v22 = v16;
    do
    {
      *(v21 + 8 * v22++) = 0;
    }

    while (v22 <= a3);
    *(a1 + 32) = v21;
    *(a1 + 40) = a3 + 1;
    v23 = v16;
    while (1)
    {
      *(*(a1 + 32) + 8 * v23) = heap_Calloc(*(*(a1 + 24) + 8), 1, 7);
      if (!*(*(a1 + 32) + 8 * v23))
      {
        goto LABEL_40;
      }

      if (a3 == ++v23)
      {
        *(a1 + 64) = 7;
        break;
      }
    }
  }

  LOWORD(v24) = 0;
  if (cstdlib_strlen(__s) && a3)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = Utf8_LengthInBytes(&__s[v25], 1);
      if (a5 && !cstdlib_strncmp(&__s[v25], " ", v27))
      {
        cstdlib_strcpy(*(*(a1 + 32) + 8 * v24), a5);
      }

      else
      {
        cstdlib_strncpy(*(*(a1 + 32) + 8 * v24), &__s[v25], v27);
        *(*(*(a1 + 32) + 8 * v24) + v27) = 0;
      }

      ++v24;
      v26 += v27;
      if (cstdlib_strlen(__s) <= v26)
      {
        break;
      }

      v25 = v26;
    }

    while (v24 < a3);
  }

  *a6 = v24;
  if (v24 < a3)
  {
    v28 = v24;
    if (a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = "";
    }

    do
    {
      cstdlib_strcpy(*(*(a1 + 32) + 8 * v28++), v29);
    }

    while (a3 != v28);
  }

  return 0;
}

uint64_t StringList_GetAt(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
  }

  while (*(v2 + 8 * v3++));
  if (a2 < v4)
  {
    return *(v2 + 8 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t StringList_GetIndex(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = **(a1 + 32);
    if (!v3)
    {
      return -1;
    }

    v5 = cstdlib_strcmp(v3, a2);
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = 0;
      while (1)
      {
        v8 = ++v7;
        v9 = *(v6 + 8 * v7);
        if (!v9)
        {
          return -1;
        }

        v10 = cstdlib_strcmp(v9, a2);
        v6 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_11;
        }
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_11:
    if (*(v6 + 8 * v8))
    {
      return v7;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t StringList_RemoveAt(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 3;
  }

  v5 = 0;
  do
  {
    v6 = v5;
  }

  while (*(v2 + 8 * v5++));
  if (v6 <= a2)
  {
    return 3;
  }

  heap_Free(*(*(a1 + 24) + 8), *(v2 + 8 * a2));
  *(*(a1 + 32) + 8 * a2) = 0;
  v8 = *(a1 + 32) + 8 * a2;
  cstdlib_memmove(v8, (v8 + 8), 8 * (v6 + ~a2));
  result = 0;
  *(*(a1 + 32) + 8 * v6 - 8) = 0;
  return result;
}

uint64_t PNEW_StringList_Con(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 72, &v10);
  result = v10;
  if (!v10)
  {
    result = StringList_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t NN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 136) = 0;
    *(a1 + 152) = 0;
    *(a1 + 192) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *a1 = &__NN;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 32) = a4;
    *(a1 + 40) = a5;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    if ((InitRsrcFunction(a4, a5, (a1 + 48)) & 0x80000000) != 0 || (InitRsrcFunction(*(a1 + 8), *(a1 + 16), (a1 + 24)) & 0x80000000) != 0)
    {

      return err_GenerateErrorInternalMsg("InitRsrcFunction");
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);

      return ooc_utils_createAllocator(a1 + 56, v11, v12);
    }
  }

  return result;
}

void *NN_Des(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[12];
    if (v2)
    {
      OOCAllocator_Free((result + 7), v2);
      v1[12] = 0;
    }

    v3 = v1[13];
    if (v3)
    {
      OOC_PlacementDeleteObject((v1 + 7), v3);
      v1[13] = 0;
    }

    v4 = v1[14];
    if (v4)
    {
      OOC_PlacementDeleteObject((v1 + 7), v4);
      v1[14] = 0;
    }

    v5 = v1[15];
    if (v5)
    {
      OOC_PlacementDeleteObject((v1 + 7), v5);
      v1[15] = 0;
    }

    __NN_CGN_Deinitialize(v1);
    __NN_TN_Deinitialize(v1);
    __NN_CLM_Deinitialize(v1);
    v6 = v1[22];
    if (v6)
    {
      OOC_PlacementDeleteObject((v1 + 7), v6);
      v1[22] = 0;
    }

    __NN_Homograph_Deinitialize(v1);
    OOCAllocator_Des();

    return Object_Des();
  }

  return result;
}

uint64_t __NN_CGN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 128);
  if (*(result + 128))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 136) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 136) + 8 * v3) = 0;
        v2 = *(v1 + 128);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 136));
      *(v1 + 136) = 0;
    }
  }

  *(v1 + 128) = 0;
  return result;
}

uint64_t __NN_TN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  if (*(result + 144))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 152) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 152) + 8 * v3) = 0;
        v2 = *(v1 + 144);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 152));
      *(v1 + 152) = 0;
    }
  }

  *(v1 + 144) = 0;
  return result;
}

uint64_t __NN_CLM_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 160);
  if (*(result + 160))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 168) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 168) + 8 * v3) = 0;
        v2 = *(v1 + 160);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 168));
      *(v1 + 168) = 0;
    }
  }

  *(v1 + 160) = 0;
  return result;
}

uint64_t __NN_Homograph_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 184);
  if (*(result + 184))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 192) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 192) + 8 * v3) = 0;
        v2 = *(v1 + 184);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v5 = *(v1 + 192);
  if (v5)
  {
    result = OOCAllocator_Free(v1 + 56, v5);
    *(v1 + 192) = 0;
  }

  *(v1 + 184) = 0;
  return result;
}

uint64_t NN_CGN_Predict(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, void *a6, int *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v13 & 0x80000000) == 0 && a1)
  {
    if (!NN_IsInitializedForCurrent(a1))
    {
      return 2706382848;
    }

    v15 = *(a1 + 128);
    if (!*(a1 + 128))
    {
      goto LABEL_10;
    }

    v16 = 0;
    while (1)
    {
      v17 = *(*(a1 + 136) + 8 * v16);
      if (v17)
      {
        if (!cstdlib_strcmp(a3, *(v17 + 120)))
        {
          result = CGN_Predict(*(*(a1 + 136) + 8 * v16), a4, a5, a6, a7);
          if (!result)
          {
            return result;
          }

          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x1FFF) != 7)
          {
            return result;
          }

LABEL_10:
          result = 0;
          *a7 = 0;
          return result;
        }

        v15 = *(a1 + 128);
      }

      if (++v16 >= v15)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL NN_IsInitializedForCurrent(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (__NN_GetIdentificationForCurrent(a1, __s1))
  {
    return 0;
  }

  v3 = *(a1 + 96);
  return v3 && cstdlib_strcmp(__s1, v3) == 0;
}

BOOL NN_CGN_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(*(a1 + 136) + 8 * v6);
    if (v7)
    {
      break;
    }

LABEL_9:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if (cstdlib_strcmp(a3, *(v7 + 120)))
  {
    v5 = *(a1 + 128);
    goto LABEL_9;
  }

  v9 = *(*(a1 + 136) + 8 * v6);

  return Model_QueryExists(v9);
}

uint64_t NN_CLM_Predict(uint64_t a1, int a2, const char *a3, char **a4, char **a5, char **a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v16 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (!NN_IsInitializedForCurrent(a1))
    {
      return 2706382848;
    }

    v18 = *(a1 + 160);
    if (!*(a1 + 160))
    {
      goto LABEL_10;
    }

    v19 = 0;
    while (1)
    {
      v20 = *(*(a1 + 168) + 8 * v19);
      if (v20)
      {
        if (!cstdlib_strcmp(a3, *(v20 + 120)))
        {
          result = CLM_Predict(*(*(a1 + 168) + 8 * v19), a4, a5, a6, *a7, a8, a9);
          if (!result)
          {
            return result;
          }

          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x1FFF) != 7)
          {
            return result;
          }

LABEL_10:
          result = 0;
          *a7 = 0;
          return result;
        }

        v18 = *(a1 + 160);
      }

      if (++v19 >= v18)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL NN_CLM_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 160);
  if (!*(a1 + 160))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(*(a1 + 168) + 8 * v6);
    if (v7)
    {
      break;
    }

LABEL_9:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if (cstdlib_strcmp(a3, *(v7 + 120)))
  {
    v5 = *(a1 + 160);
    goto LABEL_9;
  }

  v9 = *(*(a1 + 168) + 8 * v6);

  return Model_QueryExists(v9);
}

uint64_t NN_ClassOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2706382855;
  }

  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t NN_Diacritizer_Predict(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v8 = a4;
  v11 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v11 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v13 = *(a1 + 120);
      if (v13)
      {
        v14 = Diacritizer_Predict(v13, a3, v8, a5, a6);
        result = v11;
        if (v14)
        {

          return LH_ERROR_to_VERROR(v14);
        }
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_Diacritizer_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t NN_G2POneWord_Predict(uint64_t a1, int a2, char *a3, void *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v7 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v9 = *(a1 + 112);
      if (v9)
      {
        v10 = G2POneWord_Predict(v9, a3, a4);
        result = v7;
        if (v10)
        {

          return LH_ERROR_to_VERROR(v10);
        }
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_G2POneWord_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 112);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t NN_Homograph_Predict(uint64_t a1, int a2, const char *a3, char *a4, void *a5, int *a6)
{
  v11 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v11 & 0x80000000) != 0 || !a1)
  {
    return result;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 2706382848;
  }

  *a6 = 0;
  v13 = *(a1 + 184);
  if (!*(a1 + 184))
  {
    return v11;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(*(a1 + 192) + 8 * v14);
    if (v15)
    {
      break;
    }

LABEL_9:
    if (++v14 >= v13)
    {
      return v11;
    }
  }

  if (cstdlib_strcmp(a3, *(v15 + 120)))
  {
    v13 = *(a1 + 184);
    goto LABEL_9;
  }

  result = Homograph_Predict(*(*(a1 + 192) + 8 * v14), a4, a5, a6);
  if (result)
  {

    return LH_ERROR_to_VERROR(result);
  }

  return result;
}

BOOL NN_Homograph_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

size_t NN_InitializeForCurrent(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = a1[12];
  if (v3)
  {
    OOCAllocator_Free((a1 + 7), v3);
    a1[12] = 0;
  }

  v5 = a1 + 13;
  v4 = a1[13];
  if (v4)
  {
    OOC_PlacementDeleteObject((a1 + 7), v4);
    a1[13] = 0;
  }

  v6 = a1[14];
  if (v6)
  {
    OOC_PlacementDeleteObject((a1 + 7), v6);
    a1[14] = 0;
  }

  v7 = a1[15];
  if (v7)
  {
    OOC_PlacementDeleteObject((a1 + 7), v7);
    a1[15] = 0;
  }

  __NN_CGN_Deinitialize(a1);
  __NN_TN_Deinitialize(a1);
  __NN_CLM_Deinitialize(a1);
  v8 = a1[22];
  if (v8)
  {
    OOC_PlacementDeleteObject((a1 + 7), v8);
    a1[22] = 0;
  }

  __NN_Homograph_Deinitialize(a1);
  IdentificationForCurrent = __NN_GetIdentificationForCurrent(a1, __s);
  v13 = IdentificationForCurrent;
  if (!IdentificationForCurrent)
  {
    v10 = cstdlib_strlen(__s);
    v11 = OOCAllocator_Malloc((a1 + 7), v10 + 1, &v13);
    a1[12] = v11;
    v2 = v13;
    if (v13)
    {
      return v2;
    }

    cstdlib_strcpy(v11, __s);
    v14 = 0;
    IdentificationForCurrent = PNEW_ToBeSpelled_Con((a1 + 7), a1[1], a1[2], a1[4], a1[5], a1 + 13);
    if (!IdentificationForCurrent)
    {
      v2 = ToBeSpelled_LoadModel(*v5, &v14);
      if (v2 || !v14)
      {
        OOC_PlacementDeleteObject((a1 + 7), *v5);
        *v5 = 0;
        v13 = v2;
        if (v2)
        {
          return v2;
        }
      }

      else
      {
        v13 = 0;
      }

      IdentificationForCurrent = __NN_G2POneWord_Initialize(a1);
      v13 = IdentificationForCurrent;
      if (!IdentificationForCurrent)
      {
        IdentificationForCurrent = __NN_CGN_Initialize(a1);
        v13 = IdentificationForCurrent;
        if (!IdentificationForCurrent)
        {
          IdentificationForCurrent = __NN_TN_Initialize(a1);
          v13 = IdentificationForCurrent;
          if (!IdentificationForCurrent)
          {
            IdentificationForCurrent = __NN_CLM_Initialize(a1);
            v13 = IdentificationForCurrent;
            if (!IdentificationForCurrent)
            {
              IdentificationForCurrent = __NN_Diacritizer_Initialize(a1);
              v13 = IdentificationForCurrent;
              if (!IdentificationForCurrent)
              {
                IdentificationForCurrent = __NN_URL_Initialize(a1);
                v13 = IdentificationForCurrent;
                if (!IdentificationForCurrent)
                {
                  return __NN_Homograph_Initialize(a1);
                }
              }
            }
          }
        }
      }
    }
  }

  return IdentificationForCurrent;
}

size_t __NN_GetIdentificationForCurrent(uint64_t a1, char *a2)
{
  __s2 = 0;
  __src = 0;
  v6 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", &__src) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &__s2) & 0x80000000) != 0)
  {
    return err_GenerateErrorInternalMsg("paramc_ParamGetStr");
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "voice", &v6) & 0x80000000) != 0)
  {
    v6 = 0;
  }

  cstdlib_strcpy(a2, __src);
  cstdlib_strcat(a2, "_");
  cstdlib_strcat(a2, __s2);
  if (v6)
  {
    cstdlib_strcat(a2, "_");
    cstdlib_strcat(a2, v6);
  }

  result = cstdlib_strlen(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      a2[v5] = cstdlib_tolower(a2[v5]);
      ++v5;
    }

    while (v5 < cstdlib_strlen(a2));
    return 0;
  }

  return result;
}

uint64_t __NN_G2POneWord_Initialize(void *a1)
{
  v6 = 0;
  v2 = PNEW_G2POneWord_Con((a1 + 7), a1[1], a1[2], a1[4], a1[5], a1 + 14);
  if (!v2)
  {
    v3 = G2POneWord_LoadModel(a1[14], &v6);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 == 0;
    }

    if (v4)
    {
      v2 = v3;
      OOC_PlacementDeleteObject((a1 + 7), a1[14]);
      a1[14] = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __NN_CGN_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = CGN_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 128) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 136) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 128))
          {
            for (i = 0; i < *(a1 + 128); ++i)
            {
              ErrorInternalMsg = PNEW_CGN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 136) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 136) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = CGN_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 136) + 8 * i));
                *(*(a1 + 136) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t __NN_TN_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = TN_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 144) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 152) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 144))
          {
            for (i = 0; i < *(a1 + 144); ++i)
            {
              ErrorInternalMsg = PNEW_TN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 152) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 152) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = TN_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 152) + 8 * i));
                *(*(a1 + 152) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t __NN_CLM_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v10);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = CLM_Models(*(a1 + 32), *(a1 + 40), v10);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v10);
      *(a1 + 160) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 168) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 160))
          {
            for (i = 0; i < *(a1 + 160); ++i)
            {
              ErrorInternalMsg = PNEW_CLM_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 168) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 168) + 8 * i);
              v6 = StringList_GetAt(v10, i);
              v7 = CLM_LoadModel(v5, v6, &v9);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v9 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 168) + 8 * i));
                *(*(a1 + 168) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    OOC_PlacementDeleteObject(a1 + 56, v10);
  }

  return ErrorInternalMsg;
}

uint64_t __NN_Diacritizer_Initialize(void *a1)
{
  v6 = 0;
  v2 = PNEW_Diacritizer_Con((a1 + 7), a1[1], a1[2], a1[4], a1[5], a1 + 15);
  if (!v2)
  {
    v3 = Diacritizer_LoadModel(a1[15], &v6);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 == 0;
    }

    if (v4)
    {
      v2 = v3;
      OOC_PlacementDeleteObject((a1 + 7), a1[15]);
      a1[15] = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __NN_URL_Initialize(void *a1)
{
  v6 = 0;
  v2 = PNEW_URL_Con((a1 + 7), a1[1], a1[2], a1[4], a1[5], a1 + 22);
  if (!v2)
  {
    v3 = URL_LoadModel(a1[22], &v6);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 == 0;
    }

    if (v4)
    {
      v2 = v3;
      OOC_PlacementDeleteObject((a1 + 7), a1[22]);
      a1[22] = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t __NN_Homograph_Initialize(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  ErrorInternalMsg = PNEW_StringList_Con(a1 + 56, *(a1 + 32), *(a1 + 40), &v9);
  if (!ErrorInternalMsg)
  {
    ErrorInternalMsg = Homograph_Models(*(a1 + 32), *(a1 + 40), v9);
    if (!ErrorInternalMsg)
    {
      CountStrings = StringList_GetCountStrings(v9);
      *(a1 + 184) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 192) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 184))
          {
            for (i = 0; i < *(a1 + 184); ++i)
            {
              ErrorInternalMsg = PNEW_Homograph_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 192) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 192) + 8 * i);
              v6 = StringList_GetAt(v9, i);
              v7 = Homograph_LoadModel(v5, v6, &v10);
              ErrorInternalMsg = v7;
              if (v7)
              {
                v8 = 1;
              }

              else
              {
                v8 = v10 == 0;
              }

              if (v8)
              {
                if (!v7)
                {
                  ErrorInternalMsg = err_GenerateErrorInternalMsg("not loaded");
                }

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 192) + 8 * i));
                *(*(a1 + 192) + 8 * i) = 0;
                break;
              }
            }
          }
        }
      }
    }
  }

  if (v9)
  {
    OOC_PlacementDeleteObject(a1 + 56, v9);
  }

  return ErrorInternalMsg;
}

uint64_t NN_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) == 0)
  {
    if (a1)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      Allocator = ooc_utils_createAllocator(v5, *(a1 + 32), *(a1 + 40));
      if (Allocator || (Allocator = OOC_PlacementDeleteObject(v5, a1)) != 0)
      {
        LH_ERROR_to_VERROR(Allocator);
      }
    }
  }

  return 0;
}

uint64_t NN_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  if (!a5)
  {
    return 2706382855;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  *a5 = 0;
  *(a5 + 8) = 0;
  Allocator = ooc_utils_createAllocator(v16, a3, a4);
  if (Allocator)
  {
    return LH_ERROR_to_VERROR(Allocator);
  }

  v12 = PNEW_NN_Con(v16, a1, a2, a3, a4, &v18);
  if (v12)
  {
    v13 = LH_ERROR_to_VERROR(v12);
  }

  else
  {
    v14 = v18;
    *a5 = v18;
    *(a5 + 8) = 1067;
    v13 = NN_ObjReopen(v14, *(a5 + 8));
  }

  v11 = v13;
  OOCAllocator_Des();
  return v11;
}

uint64_t PNEW_NN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 200, &v14);
  result = v14;
  if (!v14)
  {
    result = NN_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t NN_ObjReopen(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v3 & 0x80000000) == 0 && a1)
  {
    v5 = NN_InitializeForCurrent(a1);
    if (v5)
    {

      return LH_ERROR_to_VERROR(v5);
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t NN_TN_Predict(uint64_t a1, int a2, const char *a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, void *a8, int *a9)
{
  v10 = a7;
  v11 = a6;
  v16 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (!NN_IsInitializedForCurrent(a1))
    {
      return 2706382848;
    }

    v18 = *(a1 + 144);
    if (!*(a1 + 144))
    {
      goto LABEL_10;
    }

    v19 = 0;
    while (1)
    {
      v20 = *(*(a1 + 152) + 8 * v19);
      if (v20)
      {
        if (!cstdlib_strcmp(a3, *(v20 + 120)))
        {
          result = TN_Predict(*(*(a1 + 152) + 8 * v19), a4, a5, v11, v10, a8, a9);
          if (!result)
          {
            return result;
          }

          result = LH_ERROR_to_VERROR(result);
          if ((result & 0x1FFF) != 7)
          {
            return result;
          }

LABEL_10:
          result = 0;
          *a9 = 0;
          return result;
        }

        v18 = *(a1 + 144);
      }

      if (++v19 >= v18)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL NN_TN_QueryModelExists(uint64_t a1, int a2, const char *a3)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v5 = *(a1 + 144);
  if (!*(a1 + 144))
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(*(a1 + 152) + 8 * v6);
    if (v7)
    {
      break;
    }

LABEL_9:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if (cstdlib_strcmp(a3, *(v7 + 120)))
  {
    v5 = *(a1 + 144);
    goto LABEL_9;
  }

  v9 = *(*(a1 + 152) + 8 * v6);

  return Model_QueryExists(v9);
}

uint64_t NN_ToBeSpelled_Predict(uint64_t a1, int a2, char *a3, _DWORD *a4)
{
  v7 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v7 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v9 = *(a1 + 104);
      if (v9)
      {
        v10 = ToBeSpelled_Predict(v9, a3, a4);
        result = v7;
        if (v10)
        {

          return LH_ERROR_to_VERROR(v10);
        }
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_ToBeSpelled_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t NN_URL_Predict(uint64_t a1, int a2, const char *a3, unsigned int *a4, unsigned int *a5, _DWORD *a6, _DWORD *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v13 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v15 = *(a1 + 176);
      if (v15)
      {
        v16 = URL_Predict(v15, a3, a4, *a5, a6, a7);
        if (v16)
        {
          v13 = LH_ERROR_to_VERROR(v16);
        }
      }

      result = v13;
      if ((v13 & 0x1FFF) == 7)
      {
        result = 0;
        *a5 = 0;
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_URL_QueryModelExists(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 1067, 8) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!NN_IsInitializedForCurrent(a1))
  {
    return 0;
  }

  v3 = *(a1 + 176);
  if (!v3)
  {
    return 0;
  }

  return Model_QueryExists(v3);
}

uint64_t _Model_Con(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    a1[12] = 0;
    a1[13] = 0;
    a1[14] = -1;
    *a1 = &__Model;
    a1[1] = a2;
    a1[2] = a3;
    a1[4] = a4;
    a1[5] = a5;
    a1[3] = 0;
    a1[6] = 0;
    if ((InitRsrcFunction(a4, a5, a1 + 6) & 0x80000000) == 0)
    {
      result = ooc_utils_createAllocator((a1 + 7), a1[4], a1[5]);
      if (result)
      {
        return result;
      }

      if ((InitRsrcFunction(a1[1], a1[2], a1 + 3) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    return err_GenerateErrorInternalMsg("InitRsrcFunction");
  }

  return result;
}

uint64_t Model_Des(uint64_t a1)
{
  OOCAllocator_Des();

  return Object_Des();
}

BOOL Model_QueryExists(_BOOL8 result)
{
  if (result)
  {
    return *(result + 104) != 0;
  }

  return result;
}

uint64_t _Model_Load(uint64_t a1, char *a2, _DWORD *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 24))(a1, a3);
  if (result)
  {
    return result;
  }

  if (!*a3)
  {
    return 0;
  }

  v11 = "";
  __s2 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__s1 = 0u;
  v14 = 0u;
  v7 = heap_Calloc(*(*(a1 + 48) + 8), 1, 1024);
  *(a1 + 96) = v7;
  if (!v7)
  {
    err_GenerateErrorResource();
    goto LABEL_14;
  }

  if (cstdlib_strstr(a2, ":"))
  {
    cstdlib_strcpy(*(a1 + 96), a2);
    goto LABEL_14;
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", &__s2) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &v11) & 0x80000000) != 0)
  {
    v8 = "paramc_ParamGetStr";
  }

  else
  {
    cstdlib_strcat(__s1, a2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, __s2);
    cstdlib_strcat(__s1, "_");
    cstdlib_strcat(__s1, v11);
    if ((brokeraux_ComposeBrokerString(*(a1 + 48), __s1, 1, 1, __s2, 0, 0, *(a1 + 96), 0x400uLL) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    v8 = "brokeraux_ComposeBrokerString";
  }

  err_GenerateErrorInternalMsg(v8);
LABEL_14:
  if ((fi_init(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), (a1 + 104), 0, *(a1 + 96), "FINN", 1, 0) & 0x80000000) != 0)
  {
    return err_GenerateErrorInternalMsg("fi_init");
  }

  v9 = **(a1 + 104);
  v10 = v9[13];
  *(a1 + 112) = v9[14];
  if (v10 >= 2)
  {
    *(a1 + 116) = v9[15];
  }

  return (*(*a1 + 32))(a1);
}

uint64_t _Model_Unload(void *a1)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    return result;
  }

  v3 = a1[12];
  if (v3)
  {
    heap_Free(*(a1[6] + 8), v3);
    a1[12] = 0;
  }

  v4 = a1[13];
  if (!v4)
  {
    goto LABEL_7;
  }

  if ((fi_deinit(a1[6], a1[3], v4) & 0x80000000) == 0)
  {
    a1[13] = 0;
    a1[14] = -1;
LABEL_7:
    v5 = *(*a1 + 48);

    return v5(a1);
  }

  return err_GenerateErrorInternalMsg("fi_deinit");
}

uint64_t ToBeSpelled_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (v6)
  {
    (*(*a1 + 16))(a1);
  }

  else
  {
    *a1 = &__ToBeSpelled;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 188) = 0;
    *(a1 + 192) = 0;
  }

  return v6;
}

uint64_t ToBeSpelled_Des(void *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t ToBeSpelled_Predict(uint64_t a1, char *a2, _DWORD *a3)
{
  v37 = 0;
  v38 = 0;
  v36 = 0;
  *a3 = 0;
  v39 = 0;
  v5 = StringList_FromSplitStringInUtf8(*(a1 + 192), a2, *(a1 + 120), "\v", "<sp>", &v39);
  if (v5)
  {
    goto LABEL_34;
  }

  log_OutText(*(*(a1 + 48) + 32), "NN_TOBESPELLED", 5, 0, "char lookup:", 0);
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 48) + 32);
      v10 = StringList_GetAt(*(a1 + 192), v8);
      log_OutText(v9, "NN_TOBESPELLED", 5, 0, "[%d] %s", v7, v10);
      v7 = ++v8;
      v6 = *(a1 + 120);
    }

    while (v6 > v8);
  }

  v11 = *(a1 + 152) * v6;
  v12 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v11);
  v38 = v12;
  if (v12)
  {
    v13 = v12;
    if (v11)
    {
      v14 = 0;
      do
      {
        *(v12 + 4 * v14++) = 0;
      }

      while (v11 > v14);
    }

    if (!v39)
    {
      goto LABEL_21;
    }

    v15 = 0;
    while (1)
    {
      v16 = *(*(a1 + 128) + 56);
      v17 = StringList_GetAt(*(a1 + 192), v15);
      v18 = v16(*(a1 + 136), *(a1 + 144), v17, *(a1 + 160));
      if ((v18 & 0x1FFF) == 0x14)
      {
        v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 160));
        if ((v18 & 0x1FFF) == 0x14)
        {
          break;
        }
      }

      if (v18 < 0)
      {
        v20 = "__pIWordLkp->pfWord2fVector";
        goto LABEL_19;
      }

      cstdlib_memcpy((v13 + 4 * *(a1 + 152) * v15++), *(a1 + 160), 4 * *(a1 + 152));
      if (v15 >= v39)
      {
        goto LABEL_21;
      }
    }

    v20 = "mean vector $MEANW2V$ not found";
LABEL_19:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v20);
  }

  else
  {
    ErrorInternalMsg = err_GenerateErrorResource();
  }

  v21 = ErrorInternalMsg;
  if (ErrorInternalMsg)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((fi_predict(*(a1 + 104), &v38, *(a1 + 120), &v37) & 0x80000000) != 0)
  {
    v25 = "fi_predict";
LABEL_33:
    v5 = err_GenerateErrorInternalMsg(v25);
LABEL_34:
    v21 = v5;
    goto LABEL_35;
  }

  if ((fi_shape_get_size((**(a1 + 104) + 92), &v36) & 0x80000000) != 0)
  {
    v25 = "fi_shape_get_size";
    goto LABEL_33;
  }

  if (v36 != *(a1 + 184))
  {
    v25 = "Unexpected";
    goto LABEL_33;
  }

  v35 = a3;
  v22 = 0;
  if (v36)
  {
    v23 = 0;
    v24 = 0.0;
    do
    {
      if (v24 < *(v37 + 4 * v23))
      {
        v24 = *(v37 + 4 * v23);
        v22 = v23;
      }

      ++v23;
    }

    while (v36 > v23);
  }

  else
  {
    v24 = 0.0;
  }

  log_OutText(*(*(a1 + 48) + 32), "NN_TOBESPELLED", 5, 0, "results (threshold=%1.5lf)", *(a1 + 188));
  if (v36)
  {
    v27 = 0;
    for (i = 0; i < v36; v27 = ++i)
    {
      v29 = *(*(a1 + 48) + 32);
      v30 = *(v37 + 4 * i);
      v31 = StringList_GetAt(*(a1 + 176), i);
      if (i == v22)
      {
        v32 = "<-- selected";
      }

      else
      {
        v32 = "";
      }

      log_OutText(v29, "NN_TOBESPELLED", 5, 0, "[%3d] %1.5lf : %s %s", v27, v30, v31, v32);
    }
  }

  if (*(a1 + 168) != v22)
  {
    v34 = *(*(a1 + 48) + 32);
    StringList_GetAt(*(a1 + 176), v22);
    StringList_GetAt(*(a1 + 176), *(a1 + 168));
    log_OutText(v34, "NN_TOBESPELLED", 5, 0, "blocked selected prediction %s; not target label %s");
    goto LABEL_49;
  }

  if (v24 < *(a1 + 188))
  {
    v33 = *(*(a1 + 48) + 32);
    StringList_GetAt(*(a1 + 176), v22);
    log_OutText(v33, "NN_TOBESPELLED", 5, 0, "blocked selected prediction %s; value %1.5lf below pattern threshold %1.5lf");
LABEL_49:
    v21 = 0;
    goto LABEL_35;
  }

  v21 = 0;
  *v35 = 1;
LABEL_35:
  if (v38)
  {
    heap_Free(*(*(a1 + 48) + 8), v38);
  }

  return v21;
}

uint64_t _ToBeSpelled_PostFIDeinit(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1)
  {
    OOC_PlacementDeleteObject(a1 + 56, v1);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return 0;
}

uint64_t _ToBeSpelled_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0 || (v2 = *(*(a1 + 128) + 16), NullHandle = safeh_GetNullHandle(), (v2(NullHandle) & 0x80000000) != 0))
  {
    v9 = "nn_word_lkp_GetInterface";
  }

  else
  {
    if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), a1 + 152) & 0x80000000) == 0)
    {
      v4 = *(a1 + 152);
      if (v4 != *(a1 + 116))
      {
        err_GenerateErrorInternalMsg("Mismatch between __word2vecVecLength and __inshape_dim2");
        v4 = *(a1 + 152);
      }

      *(a1 + 120) = *(a1 + 112);
      v5 = heap_Alloc(*(*(a1 + 48) + 8), 4 * v4);
      *(a1 + 160) = v5;
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);

        return PNEW_StringList_Con(a1 + 56, v6, v7, (a1 + 192));
      }

      else
      {

        return err_GenerateErrorResource();
      }
    }

    v9 = "__pIWordLkp->pfGetVectorLength";
  }

  return err_GenerateErrorInternalMsg(v9);
}

uint64_t _ToBeSpelled_PreFIDeinit(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[20] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    OOC_PlacementDeleteObject((a1 + 7), v3);
    a1[24] = 0;
  }

  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v5))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v6;
    }

    a1[16] = 0;
  }

  return 0;
}

uint64_t _ToBeSpelled_PreFIInit(uint64_t a1, _DWORD *a2)
{
  __s2 = 0;
  v14 = 0;
  *a2 = 0;
  CfgParamValueString = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v14);
  if (CfgParamValueString || ((CfgParamValueString = Params_GetCfgParamValueString(v14, "nntobespelled_prediction", &__s2), !CfgParamValueString) ? (v5 = __s2 == 0) : (v5 = 1), v5 || (CfgParamValueString = Params_GetCfgParamValueListOfStrings(v14, "nntobespelled_labels", 59, (a1 + 176)), CfgParamValueString)))
  {
LABEL_17:
    CfgParamValueFloat = CfgParamValueString;
    goto LABEL_18;
  }

  v6 = *(a1 + 176);
  if (!v6)
  {
    *(a1 + 184) = 0;
LABEL_15:
    v10 = "Unexpected";
LABEL_16:
    CfgParamValueString = err_GenerateErrorInternalMsg(v10);
    goto LABEL_17;
  }

  CountStrings = StringList_GetCountStrings(v6);
  *(a1 + 184) = CountStrings;
  if (!CountStrings)
  {
    goto LABEL_15;
  }

  v8 = 0;
  *a2 = 0;
  while (1)
  {
    if (*(a1 + 184) <= v8)
    {
      v10 = "Prediction does not exists";
      goto LABEL_16;
    }

    v9 = StringList_GetAt(*(a1 + 176), v8);
    if (!cstdlib_strcmp(v9, __s2))
    {
      break;
    }

    ++v8;
    if (*a2)
    {
      goto LABEL_25;
    }
  }

  *(a1 + 168) = v8;
  *a2 = 1;
LABEL_25:
  CfgParamValueFloat = Params_GetCfgParamValueFloat(v14, "nntobespelled_patternThreshold", (a1 + 188), 0.6);
  if (CfgParamValueFloat)
  {
    *a2 = 0;
  }

LABEL_18:
  if (v14)
  {
    OOC_PlacementDeleteObject(a1 + 56, v14);
  }

  if (__s2)
  {
    heap_Free(*(*(a1 + 48) + 8), __s2);
  }

  return CfgParamValueFloat;
}

uint64_t PNEW_ToBeSpelled_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 200, &v14);
  result = v14;
  if (!v14)
  {
    result = ToBeSpelled_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t G2POneWord_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  result = _Model_Con(a1, a2, a3, a4, a5);
  if (!result)
  {
    *a1 = &__G2POneWord;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 132) = 0xFFFFFFFF00000000;
    *(a1 + 144) = 0;
  }

  return result;
}

uint64_t G2POneWord_Des(void *a1)
{
  result = _Model_Unload(a1);
  if (!result)
  {
    v3 = a1[18];
    if (v3)
    {
      heap_Free(*(a1[6] + 8), v3);
      a1[18] = 0;
    }

    return Model_Des(a1);
  }

  return result;
}

uint64_t G2POneWord_Predict(uint64_t a1, char *__s, void *a3)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  if (!__s || !cstdlib_strlen(__s))
  {
    v8 = 0;
LABEL_8:
    ErrorResource = 0;
    *a3 = "";
    goto LABEL_9;
  }

  v42 = 0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v6 = StringList_Con(v40, *(a1 + 32), *(a1 + 40));
  if (v6 || (v6 = StringList_FromSplitStringInUtf8(v40, __s, 0xFFFF, 0, 0, &v42), v6))
  {
    ErrorResource = v6;
    StringList_Des(v40);
    v8 = 0;
LABEL_6:
    log_OutText(*(*(a1 + 48) + 32), "NN_G2PONEWORD", 0, 0, "%s : Error extracting features", __s);
    goto LABEL_9;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = cstdlib_strlen(__s);
  v12 = heap_Alloc(v10, v11 + 1);
  v8 = v12;
  if (v12 && (*v12 = 0, v13 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 132)), (v39 = v13) != 0))
  {
    v15 = v13;
    v16 = *(a1 + 132);
    if (v16)
    {
      v17 = 0;
      LOWORD(v14) = *(a1 + 136);
      v14 = LODWORD(v14);
      do
      {
        v13[v17++] = v14;
      }

      while (v16 > v17);
    }

    if (v42)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = StringList_GetAt(v40, v19);
        Index = StringList_GetIndex(*(a1 + 120), v20);
        if (Index != 0xFFFF)
        {
          v22 = Index;
          cstdlib_strcat(v8, v20);
          v14 = v22;
          v15[v18++] = v22;
          if (*(a1 + 132) - 1 == v18)
          {
            break;
          }
        }

        ++v19;
      }

      while (v42 > v19);
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    LOWORD(v14) = *(a1 + 138);
    v15[v23] = LODWORD(v14);
    StringList_Des(v40);
  }

  else
  {
    ErrorResource = err_GenerateErrorResource();
    StringList_Des(v40);
    if (ErrorResource)
    {
      goto LABEL_6;
    }
  }

  if (!cstdlib_strlen(v8))
  {
    goto LABEL_8;
  }

  if ((fi_predict(*(a1 + 104), &v39, 1, &v38) & 0x80000000) != 0)
  {
    v29 = "nn_g2poneword:fi_predict";
LABEL_41:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v29);
LABEL_42:
    ErrorResource = ErrorInternalMsg;
    goto LABEL_9;
  }

  if ((fi_shape_get_size((**(a1 + 104) + 92), &v37) & 0x80000000) != 0)
  {
    v29 = "nn_g2poneword:fi_shape_get_size";
    goto LABEL_41;
  }

  if (v37)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(v38 + 4 * v24);
      if (*(a1 + 138) == v26)
      {
        break;
      }

      v27 = StringList_GetAt(*(a1 + 120), v26);
      if (v27)
      {
        v25 += cstdlib_strlen(v27);
      }

      ++v24;
    }

    while (v24 < v37);
    v28 = v25 + 1;
  }

  else
  {
    v28 = 1;
  }

  v31 = heap_Realloc(*(*(a1 + 48) + 8), *(a1 + 144), v28);
  *(a1 + 144) = v31;
  if (!a3)
  {
    ErrorInternalMsg = err_GenerateErrorResource();
    goto LABEL_42;
  }

  *v31 = 0;
  if (v37)
  {
    for (i = 0; i < v37; ++i)
    {
      v33 = *(v38 + 4 * i);
      if (*(a1 + 138) == v33)
      {
        break;
      }

      v34 = StringList_GetAt(*(a1 + 120), v33);
      if (v34)
      {
        cstdlib_strcat(*(a1 + 144), v34);
      }
    }
  }

  *a3 = *(a1 + 144);
  v35 = cstdlib_strcmp(__s, v8);
  v36 = *(*(a1 + 48) + 32);
  if (v35)
  {
    log_OutText(v36, "NN_G2PONEWORD", 4, 0, "(warning: word was [%s]) [%s]  --> [%s]");
  }

  else
  {
    log_OutText(v36, "NN_G2PONEWORD", 4, 0, "[%s] --> [%s]");
  }

  ErrorResource = 0;
LABEL_9:
  if (v39)
  {
    heap_Free(*(*(a1 + 48) + 8), v39);
    v39 = 0;
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return ErrorResource;
}

uint64_t _G2POneWord_PostFIDeinit(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    OOC_PlacementDeleteObject(a1 + 56, v1);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  return 0;
}

uint64_t _G2POneWord_PostFIInit(_DWORD *a1)
{
  v1 = a1[29];
  a1[33] = a1[28];
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return err_GenerateErrorInternalMsg("nn_g2poneword:only supports 1D inshape");
  }
}

uint64_t _G2POneWord_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v13 = 0;
  __s = 0;
  *a2 = 0;
  CfgParamValueString = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", &v13);
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  CfgParamValueString = Params_GetCfgParamValueString(v13, "nn_g2poneword_vocab_separator", &__s);
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  v5 = __s && cstdlib_strlen(__s) == 1 ? *__s : 124;
  CfgParamValueString = Params_GetCfgParamValueListOfStrings(v13, "nn_g2poneword_vocab", v5, (a1 + 120));
  if (CfgParamValueString)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    CountStrings = StringList_GetCountStrings(v8);
    *(a1 + 128) = CountStrings;
    if (CountStrings)
    {
      Index = StringList_GetIndex(*(a1 + 120), "<pad>");
      *(a1 + 136) = Index;
      if (Index == 0xFFFF)
      {
        v12 = "nn_g2poneword:missing <pad> in vocab";
      }

      else
      {
        v11 = StringList_GetIndex(*(a1 + 120), "<EOS>");
        *(a1 + 138) = v11;
        if (v11 != 0xFFFF)
        {
          v6 = 0;
          *a2 = 1;
          goto LABEL_9;
        }

        v12 = "nn_g2poneword:missing <EOS> in vocab";
      }

      CfgParamValueString = err_GenerateErrorInternalMsg(v12);
LABEL_8:
      v6 = CfgParamValueString;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  if (__s)
  {
    heap_Free(*(*(a1 + 48) + 8), __s);
    __s = 0;
  }

  if (v13)
  {
    OOC_PlacementDeleteObject(a1 + 56, v13);
  }

  return v6;
}

uint64_t PNEW_G2POneWord_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 152, &v14);
  result = v14;
  if (!v14)
  {
    result = _Model_Con(v12, a2, a3, a4, a5);
    if (result)
    {
      v14 = result;
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *v12 = &__G2POneWord;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 132) = 0xFFFFFFFF00000000;
      *(v12 + 144) = 0;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = _Model_Con(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a1 = &__CGN;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v7;
    *(a1 + 152) = safeh_GetNullHandle();
    *(a1 + 160) = v8;
    *(a1 + 208) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
  }

  return v6;
}

uint64_t CGN_Des(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
    a1[15] = 0;
  }

  result = _Model_Unload(a1);
  if (!result)
  {

    return Model_Des(a1);
  }

  return result;
}

uint64_t CGN_LoadModel(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = cstdlib_strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (cstdlib_strcpy(v8, __s), v9 = *(*(a1 + 48) + 8), v10 = cstdlib_strlen(__s), (v11 = heap_Alloc(v9, v10 + 8)) != 0))
  {
    v12 = v11;
    cstdlib_strcpy(v11, "nn_cgn_");
    cstdlib_strcat(v12, __s);
    v13 = _Model_Load(a1, v12, a3);
    heap_Free(*(*(a1 + 48) + 8), v12);
    return v13;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t CGN_Models(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  Allocator = ooc_utils_createAllocator(v9, a1, a2);
  if (!Allocator)
  {
    v6 = PNEW_Params_Con(v9, a1, a2, "fecfg", &v11);
    v7 = v11;
    if (!v6)
    {
      Allocator = Params_GetCfgParamValueListOfStrings(v11, "nn_cgn_models", 59, &v12);
      v7 = v11;
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    Allocator = v6;
    if (v11)
    {
LABEL_4:
      OOC_PlacementDeleteObject(v9, v7);
    }
  }

LABEL_5:
  OOCAllocator_Des();
  return Allocator;
}