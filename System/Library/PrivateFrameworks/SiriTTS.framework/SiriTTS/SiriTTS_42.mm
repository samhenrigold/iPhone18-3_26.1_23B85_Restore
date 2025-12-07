uint64_t abbrtn_sanitizeTokenDCTAndIntTN(uint64_t a1)
{
  v2 = 0;
  v27 = 0;
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
        v19 = *v16;
        v28 = 0;
        v29 = 0;
        v20 = abbrtn_filterLabelByTokenType(v19, 6, &v28 + 1, &v29 + 1, &v29);
        v2 = v20;
        if ((v20 & 0x80000000) != 0 || !HIDWORD(v28))
        {
          if ((v20 & 0x80000000) != 0)
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
            v21 = v18 - v6;
            v22 = ((v18 - v6) >> 3) + 1;
            if (v22 > v17)
            {
              v23 = 2 * v17;
              if (2 * v17 >= v17 + 1000000)
              {
                v23 = v17 + 1000000;
              }

              if (v23 > v22)
              {
                v22 = v23;
              }

              if (v22 <= 8)
              {
                v17 = 8;
              }

              else
              {
                v17 = v22;
              }

              v6 = OOCAllocator_Realloc(a1 + 152, v6, 8 * v17, &v27);
              v12 = v27;
              if (v27)
              {
                goto LABEL_55;
              }

              v18 = (v6 + (v21 & 0x7FFFFFFF8));
            }

            *v18++ = v19;
          }
        }

        ++v16;
      }

      while (v16 < *(*(*(a1 + 192) + 32) + 32));
      if (v6 < v18)
      {
        v24 = v6;
        do
        {
          v25 = LDO_RemoveLabel(*(a1 + 192), *v24);
          v2 = LH_ERROR_to_VERROR(v25);
          if ((v2 & 0x80000000) != 0)
          {
            goto LABEL_56;
          }

          ++v24;
        }

        while (v24 < v18);
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

        *v7++ = v8;
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
          v14 = LDO_RemoveLabel(*(a1 + 192), *v13);
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
  v6 = *MEMORY[0x1E69E9840];
  utf8_getUTF8Char(a1, 0, __s1);
  utf8_getUTF8Char(a2, 0, __s2);
  return strcmp(__s1, __s2);
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

      if (!strcmp(__s1, "TOKEN"))
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

size_t addToLayer(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char *a5, char *a6, unsigned __int8 *a7)
{
  if (a5)
  {
    v11 = *(a1 + 96) + strlen(*(a1 + 96));
    *v11 = -22590;
    *(v11 + 2) = 0;
    strcat(*(a1 + 96), a5);
    v12 = strlen(a6);
    v13 = Utf8_LengthInUtf8chars(a6, v12);
    v14 = strlen(a5);
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

          *(*(a1 + 96) + strlen(*(a1 + 96))) = 126;
          ++v17;
          v18 = *a7 + 1;
          *a7 = v18;
        }

        while (v16 > v17);
      }
    }

    v19 = *(a1 + 96) + strlen(*(a1 + 96));
    *v19 = -22590;
    *(v19 + 2) = 0;
    v20 = *(a1 + 104) + strlen(*(a1 + 104));
    *v20 = -22590;
    *(v20 + 2) = 0;
    strcat(*(a1 + 104), a6);
    v21 = strlen(a5);
    v22 = Utf8_LengthInUtf8chars(a5, v21);
    v23 = strlen(a6);
    v24 = Utf8_LengthInUtf8chars(a6, v23);
    if (v22 > v24)
    {
      v25 = v22 - v24;
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          *(*(a1 + 104) + strlen(*(a1 + 104))) = 126;
          ++v26;
        }

        while (v25 > v26);
      }
    }

    v27 = *(a1 + 104);
    result = strlen(v27);
    v29 = &v27[result];
    *v29 = -22590;
    v29[2] = 0;
  }

  else
  {
    result = strncat(*(a1 + 96), (a2 + a3), a4 - a3);
    v33 = 0;
    if (a3)
    {
      v34 = 0;
      do
      {
        result = *(a2 + v34);
        if (!*(a2 + v34))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v34 += result;
        ++v33;
      }

      while (a3 > v34);
    }

    v35 = 0;
    if (a4)
    {
      v36 = 0;
      do
      {
        result = *(a2 + v36);
        if (!*(a2 + v36))
        {
          break;
        }

        result = utf8_determineUTF8CharLength(result);
        v36 += result;
        ++v35;
      }

      while (a4 > v36);
    }

    for (; v33 < v35; ++v33)
    {
      result = strlen(*(a1 + 104));
      *(*(a1 + 104) + result) = 32;
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
  v11 = PNEW_LuaVMLDO_Con(a3, a3, a1, a2, abbrtn_hlp_lua_log_callback, a4);
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
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpNodes : %s : Start", a5);
  v9 = LDO_ComputeText(a3, &v24);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    v23 = a4;
    v11 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v24);
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
        v15 = LDOTreeNode_ComputeAbsoluteFrom(*v13, &v26);
        v16 = LH_ERROR_to_VERROR(v15);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        v17 = LDOTreeNode_ComputeAbsoluteTo(*v13, &v25 + 1);
        v16 = LH_ERROR_to_VERROR(v17);
        if ((v16 & 0x80000000) != 0)
        {
          break;
        }

        U32Attribute = LDOObject_GetU32Attribute(*v13, "_TTYPE", &v26 + 1, &v25);
        v10 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }

        if (HIDWORD(v26) == 1)
        {
          v20 = v25;
          v19 = HIDWORD(v25);
          v21 = v26;
          if ((HIDWORD(v25) - v26) < 0x80)
          {
            __strncpy_chk();
            v19 = HIDWORD(v25);
            v21 = v26;
            v27[(HIDWORD(v25) - v26)] = 0;
          }

          else
          {
            strcpy(v27, "(TOKEN TOO LONG)");
          }

          log_OutText(*(a1 + 32), a2, 4, 0, "[%d] %s %d,%d |%s|", v14++, TOKENTSTR[v20], v21, v19, v27);
        }

        if (++v13 >= *(v12 + 88))
        {
          goto LABEL_13;
        }
      }

      v10 = v16;
    }

LABEL_15:
    a4 = v23;
  }

  if (v24)
  {
    OOC_PlacementDeleteObject(a4, v24);
  }

  return v10;
}

uint64_t abbrtn_dumpLabels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : %s : Start", a5);
  v9 = LDO_ComputeText(a3, &v36);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v32 = a4;
  v31 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v36);
  log_OutText(*(a1 + 32), a2, 4, 0, "LDO text |%s|", v31);
  v11 = *(a3 + 32);
  v12 = *(v11 + 24);
  if (v12 >= *(v11 + 32))
  {
LABEL_35:
    log_OutText(*(a1 + 32), a2, 4, 0, "abbrtn_dumpLabels : End", 0);
    goto LABEL_37;
  }

  v13 = 0;
  v14 = "_TTYPE";
  v33 = a3;
  while (1)
  {
    v15 = *v12;
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v12);
    AbsoluteTo = LDOLabel_GetAbsoluteTo(v15);
    U32Attribute = LDOObject_GetU32Attribute(v15, v14, &v37, &v37 + 1);
    v19 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if (v37 == 1)
    {
      v20 = v14;
      v21 = HIDWORD(v37);
      v22 = AbsoluteTo - AbsoluteFrom;
      if (AbsoluteTo == AbsoluteFrom)
      {
        strcpy(v38, "NULL");
      }

      else if (v22 < 0x80)
      {
        __strncpy_chk();
        v38[v22] = 0;
      }

      else
      {
        strcpy(v38, "(TOKEN TOO LONG)");
      }

      if (v21 <= 5)
      {
        if (v21 != 4)
        {
          if (v21 == 5)
          {
            StringAttribute = LDOObject_GetStringAttribute(v15, "TNTAG", &v37, &v35);
            v19 = LH_ERROR_to_VERROR(StringAttribute);
            if ((v19 & 0x80000000) != 0)
            {
              break;
            }

            v14 = v20;
            v26 = *(a1 + 32);
            if (v37 == 1)
            {
              log_OutText(v26, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (%s)", v13, AbsoluteFrom);
            }

            else
            {
              log_OutText(v26, a2, 4, 0, "[%d] TOKEN_USER_TN %d,%d |%s| (no TNTAG)", v13);
            }

            goto LABEL_30;
          }

          goto LABEL_26;
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
            v23 = LDOObject_GetStringAttribute(v15, "LANGMAP", &v37, &v34);
            v19 = LH_ERROR_to_VERROR(v23);
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_36;
            }

            v14 = v20;
            v24 = *(a1 + 32);
            if (v37 == 1)
            {
              log_OutText(v24, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s| LANGMAP=%s", v13, AbsoluteFrom);
            }

            else
            {
              log_OutText(v24, a2, 4, 0, "[%d] TOKEN_INT_TN %d,%d |%s|", v13);
            }

            goto LABEL_30;
          default:
LABEL_26:
            log_OutText(*(a1 + 32), a2, 4, 0, "[%d] TOKEN type=%d %d,%d |%s|", v13, HIDWORD(v37));
            break;
        }
      }

      v14 = v20;
LABEL_30:
      a3 = v33;
    }

    v27 = LDOObject_GetU32Attribute(v15, "_MTYPE", &v37, &v37 + 1);
    v10 = LH_ERROR_to_VERROR(v27);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    if (v37 == 1)
    {
      v28 = *(a1 + 32);
      String = marker_getString(SHIDWORD(v37));
      log_OutText(v28, a2, 4, 0, "[%d] MARKER %s %d,%d", v13, String, AbsoluteFrom, AbsoluteTo);
    }

    ++v13;
    if (++v12 >= *(*(a3 + 32) + 32))
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  v10 = v19;
LABEL_37:
  a4 = v32;
LABEL_38:
  if (v36)
  {
    OOC_PlacementDeleteObject(a4, v36);
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
    v12 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v17);
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

uint64_t fe_abbrtn_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62338, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2310021128;
  }

  if (a1)
  {
    luavmldoutil_destroy_lua_vm((a1 + 19), a1 + 25);
    kaldi::nnet1::Component::IsUpdatable((a1 + 19));
    objc_ReleaseObject(*(a1[2] + 48), "LINGDB");
    objc_ReleaseObject(*(a1[2] + 48), "FE_DCTLKP");
    objc_ReleaseObject(*(a1[2] + 48), "FE_DEPES");
    heap_Free(*(a1[2] + 8), a1);
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
    v4 = **&__c[3];
    v5 = strchr(**&__c[3], __c[0]);
    if (v5)
    {
      *v5 = 0;
      v4 = **&__c[3];
    }

    *(a1 + 112) = atoi(v4);
  }

  luavmldoutil_destroy_lua_vm(a1 + 152, (a1 + 200));
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
  v46 = 0;
  __s1 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  if ((safeh_HandleCheck(a1, a2, 62338, 216) & 0x80000000) != 0)
  {
    return 2310021128;
  }

  *a5 = 1;
  v9 = LingDBHasSentence(a1[5], a3, a4, &v44);
  v10 = 0;
  if ((v9 & 0x80000000) != 0 || v44 != 1)
  {
LABEL_48:
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  inited = initLDO((a1 + 19), a1 + 24);
  if ((inited & 0x80000000) != 0)
  {
LABEL_45:
    v9 = inited;
    goto LABEL_46;
  }

  v9 = importFromLingDB(a1[2], a1[5], a3, a4, a1 + 24);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_46:
    v10 = 0;
    goto LABEL_52;
  }

  v12 = a1[24];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v13 = LDO_ComputeText(v12, &v43);
  inited = LH_ERROR_to_VERROR(v13);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  v14 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v43);
  v15 = *(a1[24] + 32);
  v16 = *(v15 + 24);
  if (v16 >= *(v15 + 32))
  {
    v10 = 0;
  }

  else
  {
    v41 = v14;
    v17 = 0;
    v10 = 0;
    v18 = 0;
    do
    {
      v19 = *v16;
      if (*(*v16 + 26))
      {
        LODWORD(v42) = 0;
        U32Attribute = LDOObject_GetU32Attribute(v19, "_TTYPE", &v42, &v42 + 1);
        v9 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_52;
        }

        if (v42 == 1 && HIDWORD(v42) == 5)
        {
          v22 = v17;
          v23 = v17 - v10;
          v24 = (v23 >> 3) + 1;
          if (v24 <= v18)
          {
            v27 = v22;
          }

          else
          {
            v25 = 2 * v18;
            if (2 * v18 >= v18 + 1000000)
            {
              v25 = v18 + 1000000;
            }

            if (v25 > v24)
            {
              v24 = v25;
            }

            if (v24 <= 8)
            {
              v18 = 8;
            }

            else
            {
              v18 = v24;
            }

            v26 = OOCAllocator_Realloc((a1 + 19), v10, 8 * v18, &v46);
            v10 = v26;
            if (v46)
            {
              goto LABEL_48;
            }

            v27 = (v26 + (v23 & 0x7FFFFFFF8));
          }

          *v27 = v19;
          v17 = v27 + 1;
        }
      }

      ++v16;
    }

    while (v16 < *(*(a1[24] + 32) + 32));
    if (v10 < v17)
    {
      v28 = v17;
      v29 = v10;
      do
      {
        v30 = *v29;
        if (*(*v29 + 104))
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v29);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(v30);
          StringAttribute = LDOObject_GetStringAttribute(v30, "TNTAG", &v42, &__s1);
          v34 = LH_ERROR_to_VERROR(StringAttribute);
          if ((v34 & 0x80000000) != 0)
          {
            goto LABEL_51;
          }

          v35 = __s1;
          if (!strstr(__s1, "spell"))
          {
            if (strcmp(v35, "phon"))
            {
              if (!strstr(v35, "prompt") && !strstr(v35, "raw") && !strstr(v35, "RAW") && !strstr(v35, "internal-nuance-system-norm"))
              {
                v34 = abbrtn_TnLookup(a1, v41, AbsoluteFrom, AbsoluteTo, v35, v30);
                if ((v34 & 0x80000000) != 0)
                {
                  goto LABEL_51;
                }
              }
            }
          }
        }

        ++v29;
      }

      while (v29 < v28);
    }
  }

  v34 = abbrtn_sanitizeTokenDCTAndIntTN(a1);
  if ((v34 & 0x80000000) != 0 || (v40 = a1[25]) != 0 && (v34 = abbrtn_process_ldo_with_lua(a1[2], a1[26], a1[24], (a1 + 19), v40), (v34 & 0x80000000) != 0))
  {
LABEL_51:
    v9 = v34;
    goto LABEL_52;
  }

  v9 = exportToLingDB(a1[2], a1[5], a3, a4, (a1 + 19), a1[24], 1, 0);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v46)
  {
    v34 = LH_ERROR_to_VERROR(v46);
    goto LABEL_51;
  }

LABEL_52:
  v36 = a1[12];
  if (v36)
  {
    heap_Free(*(a1[2] + 8), v36);
    a1[12] = 0;
  }

  v37 = a1[13];
  if (v37)
  {
    heap_Free(*(a1[2] + 8), v37);
    a1[13] = 0;
  }

  if (v43)
  {
    OOC_PlacementDeleteObject((a1 + 19), v43);
    v43 = 0;
  }

  if (v10)
  {
    OOCAllocator_Free((a1 + 19), v10);
  }

  v38 = a1[24];
  if (v38)
  {
    deinitLDO((a1 + 19), v38);
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

  v8 = heap_Calloc(v26[1], 1, 3696);
  if (v8)
  {
    v9 = v8;
    *a5 = v8;
    *(a5 + 2) = 62335;
    *(v8 + 568) = *(v25 + 8);
    v10 = v26;
    *v8 = v26;
    *(v8 + 1632) = 1;
    *(v8 + 2660) = 1;
    *(v8 + 496) = 0;
    *(v8 + 488) = 0;
    *(v8 + 80) = 0;
    *(v8 + 160) = 0;
    *(v8 + 240) = 0;
    *(v8 + 320) = 0;
    *(v8 + 400) = 0;
    *(v8 + 480) = 0;
    set_DctBrk(v8 + 16, v10[3]);
    set_DctBrk(v9 + 96, v26[3]);
    set_DctBrk(v9 + 176, v26[3]);
    set_DctBrk(v9 + 256, v26[3]);
    set_DctBrk(v9 + 336, v26[3]);
    set_DctBrk(v9 + 416, v26[3]);
    *(v9 + 64) = 0;
    *(v9 + 144) = 0;
    *(v9 + 224) = 0;
    *(v9 + 304) = 0;
    *(v9 + 384) = 0;
    *(v9 + 464) = 0;
    *(v9 + 152) = 0;
    *(v9 + 232) = 0;
    *(v9 + 72) = 0;
    *(v9 + 312) = 0;
    *(v9 + 392) = 0;
    *(v9 + 472) = 0;
    if ((hlp_CreateBrokerString(v26, (v9 + 1634), 0) & 0x80000000) != 0 || (open_DctRom((v9 + 16), v9 + 1634, (v9 + 8)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateBrokerString(v26, (v9 + 1634), 1);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      BrokerString = open_DctRom((v9 + 16), v9 + 1634, (v9 + 8));
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }
    }

    if ((hlp_CreateVoiceBrokerString(v26, (v9 + 1890), 1) & 0x80000000) != 0 || (open_DctRom((v9 + 336), v9 + 1890, (v9 + 328)) & 0x80000000) != 0)
    {
      BrokerString = hlp_CreateVoiceBrokerString(v26, (v9 + 1890), 0);
      if ((BrokerString & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      if ((open_DctRom((v9 + 336), v9 + 1890, (v9 + 328)) & 0x80000000) != 0)
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
      *(v9 + 168) = 0;
      log_OutPublic(*(*v9 + 32), "FE_DCTLKP", 41005, "%s");
      goto LABEL_50;
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
      goto LABEL_50;
    }

    v17 = !v12;
    if (v15 >= 0)
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      *(v9 + 88) = 0;
    }

    if ((open_DctRom((v9 + 416), "clmnn:clmnndic", (v9 + 408)) & 0x80000000) != 0)
    {
      *(v9 + 408) = 0;
    }

    hlp_OpenMl2Dct(v26, v9);
    *&__c[1] = -1;
    BrokerString = loc_fe_dctlkp_LookupUtf(*a5, a5[1], "fecfg", "punc", &__c[3], &__c[1], __c, 0);
    if ((BrokerString & 0x80000000) == 0)
    {
      if (*&__c[3])
      {
        v18 = **&__c[3];
        v19 = strchr(**&__c[3], __c[0]);
        if (v19)
        {
          *v19 = 0;
          v18 = **&__c[3];
        }

        v20 = strlen(v18);
        v21 = heap_Alloc(v26[1], (v20 + 1));
        *(v9 + 504) = v21;
        if (v21)
        {
          strcpy(v21, **&__c[3]);
          *&__c[1] = -1;
          BrokerString = loc_fe_dctlkp_LookupUtf(*a5, a5[1], "fecfg", "canonmapdomain", &__c[3], &__c[1], __c, 0);
          if ((BrokerString & 0x80000000) == 0)
          {
            if (*&__c[1])
            {
              *(v9 + 2660) = 0;
            }

            BrokerString = loc_fe_dctlkp_getDomainTokenDefs(*a5, a5[1], v9);
            if ((BrokerString & 0x80000000) == 0)
            {
              strcpy((v9 + 2402), "normal");
              *(v9 + 584) = 0;
              *(v9 + 2664) = 0;
              CanonMap = LoadCanonMap(*a5, a5[1], "normal");
              if ((CanonMap & 0x80000000) == 0)
              {
LABEL_51:
                log_OutText(v26[4], "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjOpen");
                return CanonMap;
              }

LABEL_50:
              fe_dctlkp_ObjClose(*a5, a5[1]);
              *a5 = 0;
              *(a5 + 2) = 0;
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        log_OutPublic(*(*v9 + 32), "FE_DCTLKP", 41000, 0);
      }

      CanonMap = 2306875402;
      goto LABEL_50;
    }

LABEL_48:
    CanonMap = BrokerString;
    goto LABEL_50;
  }

  log_OutPublic(v26[4], "FE_DCTLKP", 41000, 0);
  objc_ReleaseObject(v26[6], "LINGDB");
  return CanonMap;
}

uint64_t hlp_CreateBrokerString(uint64_t a1, char *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = "";
  *v8 = 0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v8);
  if ((result & 0x80000000) == 0)
  {
    v9 = 0x2F746364737973;
    __strcat_chk();
    if (!a3)
    {
      result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v7);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      __strcat_chk();
      __strcat_chk();
    }

    return brokeraux_ComposeBrokerString(a1, &v9, 1, 1, *v8, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t hlp_CreateVoiceBrokerString(uint64_t a1, char *a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v10);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v9);
    if ((result & 0x80000000) == 0)
    {
      if (a3)
      {
        if ((paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v8) & 0x80000000) != 0)
        {
          v7 = 0;
          v8 = 0;
        }

        else
        {
          v7 = v8;
        }
      }

      else
      {
        v7 = 0;
      }

      strcpy(v11, "voicedct");
      return brokeraux_ComposeBrokerString(a1, v11, 1, 1, v10, v9, v7, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t hlp_OpenMl2Dct(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  *v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
  if ((result & 0x80000000) == 0)
  {
    strcpy(v6, "ml2dct");
    __strcat_chk();
    result = brokeraux_ComposeBrokerString(a1, v6, 1, 0, *v5, 0, 0, (a2 + 2146), 0x100uLL);
    if ((result & 0x80000000) == 0)
    {
      result = open_DctRom((a2 + 256), a2 + 2146, (a2 + 248));
      if ((result & 0x80000000) != 0)
      {
        memset(v13, 0, sizeof(v13));
        v12 = 0u;
        v11 = 0u;
        v10 = 0u;
        v9 = 0u;
        v8 = 0u;
        v7 = 0u;
        *v5 = 0;
        result = paramc_ParamGetStr(*(a1 + 40), "langcode", v5);
        if ((result & 0x80000000) == 0)
        {
          strcpy(v6, "ml2dct");
          result = brokeraux_ComposeBrokerString(a1, v6, 1, 0, *v5, 0, 0, (a2 + 2146), 0x100uLL);
          if ((result & 0x80000000) == 0)
          {
            result = open_DctRom((a2 + 256), a2 + 2146, (a2 + 248));
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

uint64_t loc_fe_dctlkp_getDomainTokenDefs(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v25 = *MEMORY[0x1E69E9840];
  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 1616) = 0;
  *&__c[1] = -1;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "domdef", &__c[3], &__c[1], __c, 0);
  if ((v6 & 0x80000000) != 0 || *&__c[1] != 1)
  {
    return v6;
  }

  __strcpy_chk();
  v7 = strchr(__s, __c[0]);
  if (v7)
  {
    *v7 = 0;
  }

  if (strlen(**&__c[3]) <= 0xFF)
  {
    if (!__s[0])
    {
      return v6;
    }

    v8 = 0;
    while (1)
    {
      for (i = v8; ; i = v10 + 1)
      {
        v10 = i;
        v11 = __s[i];
        if (!v11 || v11 == 44)
        {
          break;
        }
      }

      if (v10 != v8)
      {
        v12 = v10 - v8;
        __strncpy_chk();
        __src[v12] = 0;
        if (*(a3 + 1616))
        {
          v13 = heap_Realloc(*(*a3 + 8), *(a3 + 1624), 32 * *(a3 + 1616) + 32);
          if (!v13)
          {
            return 2306875402;
          }

          *(a3 + 1624) = v13;
        }

        else
        {
          v13 = heap_Calloc(*(*a3 + 8), 32, 1);
          *(a3 + 1624) = v13;
          if (!v13)
          {
            return 2306875402;
          }
        }

        v14 = (v13 + 32 * *(a3 + 1616));
        *v14 = 0u;
        v14[1] = 0u;
        v15 = strlen(__src);
        v16 = heap_Calloc(*(*a3 + 8), (v15 + 1), 1);
        v17 = *(a3 + 1616);
        *(*(a3 + 1624) + 32 * v17) = v16;
        if (!v16)
        {
          *(a3 + 1616) = v17 + 1;
          return 2306875402;
        }

        strcpy(v16, __src);
        TokenDef = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __src, "_alpha", (*(a3 + 1624) + 32 * *(a3 + 1616) + 8));
        if ((TokenDef & 0x80000000) != 0 || (TokenDef = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __src, "_digit", (*(a3 + 1624) + 32 * *(a3 + 1616) + 16)), (TokenDef & 0x80000000) != 0))
        {
          v6 = TokenDef;
LABEL_30:
          ++*(a3 + 1616);
          return v6;
        }

        v6 = loc_fe_dctlkp_getTokenDef(a1, v4, a3, __src, "_punc", (*(a3 + 1624) + 32 * *(a3 + 1616) + 24));
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_30;
        }

        v19 = *(a3 + 1616);
        v20 = (*(a3 + 1624) + 32 * v19);
        if (!v20[1] && !v20[2] && !v20[3])
        {
          log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41004, "%s%s", __src, " missing domain token definitions");
          ++*(a3 + 1616);
          return 2306875392;
        }

        *(a3 + 1616) = v19 + 1;
        v8 = v10 + 1;
      }

      if (!__s[v8])
      {
        return v6;
      }
    }
  }

  log_OutPublic(*(*a3 + 32), "FE_DCTLKP", 41003, 0);
  return 2306875392;
}

uint64_t LoadCanonMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = 2306875402;
  if (!a1)
  {
    return 2306875400;
  }

  v4 = a2;
  memset(__c, 0, sizeof(__c));
  v6 = a1 + 592;
  v7 = (a1 + 2672);
  bzero((a1 + 592), 0x400uLL);
  bzero(v7, 0x400uLL);
  strcpy(v35, "canonmap_");
  __strcat_chk();
  v8 = loc_fe_dctlkp_LookupUtf(a1, v4, "fecfg", v35, &__c[3], &__c[1], __c, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v33 = v4;
  v9 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_53;
  }

  strcpy(v35, "canonmap");
  v8 = loc_fe_dctlkp_LookupUtf(a1, v4, "fecfg", v35, &__c[3], &__c[1], __c, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = *&__c[1];
  if (*&__c[1])
  {
LABEL_53:
    if (*(a1 + 584))
    {
      goto LABEL_5;
    }

    v28 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 584) = v28;
    if (!v28)
    {
      goto LABEL_49;
    }

    for (i = 0; i != 2048; i += 8)
    {
      *(*(a1 + 584) + i) = 0;
    }

    v9 = *&__c[1];
    if (*&__c[1])
    {
LABEL_5:
      v10 = 0;
      do
      {
        v11 = *(*&__c[3] + 8 * v10);
        v14 = *v11;
        v13 = (v11 + 2);
        v12 = v14;
        *(v6 + 4 * v14) = 1;
        if (!*(*(a1 + 584) + 8 * v14))
        {
          v15 = strlen(v13);
          *(*(a1 + 584) + 8 * v12) = heap_Alloc(*(*a1 + 8), (v15 + 1));
          v16 = *(*(a1 + 584) + 8 * v12);
          if (!v16)
          {
            goto LABEL_49;
          }

          strcpy(v16, v13);
          v9 = *&__c[1];
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  *&__c[1] = 0;
  strcpy(v35, "canonmapg2pdct_");
  __strcat_chk();
  v8 = loc_fe_dctlkp_LookupUtf(a1, v33, "fecfg", v35, &__c[3], &__c[1], __c, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v17 = *&__c[1];
  if (*&__c[1])
  {
    goto LABEL_12;
  }

  strcpy(v35, "canonmapg2pdct");
  v8 = loc_fe_dctlkp_LookupUtf(a1, v33, "fecfg", v35, &__c[3], &__c[1], __c, 0);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v17 = *&__c[1];
  if (!*&__c[1])
  {
    goto LABEL_18;
  }

LABEL_12:
  if (!*(a1 + 2664))
  {
    v30 = heap_Alloc(*(*a1 + 8), 2048);
    *(a1 + 2664) = v30;
    if (v30)
    {
      for (j = 0; j != 2048; j += 8)
      {
        *(*(a1 + 2664) + j) = 0;
      }

      v17 = *&__c[1];
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
  v18 = 0;
  do
  {
    v19 = *(*&__c[3] + 8 * v18);
    v22 = *v19;
    v21 = (v19 + 2);
    v20 = v22;
    *(v7 + v22) = 1;
    if (!*(*(a1 + 2664) + 8 * v22))
    {
      v23 = strlen(v21);
      *(*(a1 + 2664) + 8 * v20) = heap_Alloc(*(*a1 + 8), (v23 + 1));
      v24 = *(*(a1 + 2664) + 8 * v20);
      if (!v24)
      {
        goto LABEL_49;
      }

      strcpy(v24, v21);
      v17 = *&__c[1];
    }

    ++v18;
  }

  while (v18 < v17);
LABEL_18:
  *&__c[1] = -1;
  strcpy(v35, "canonmapusage_");
  __strcat_chk();
  v3 = loc_fe_dctlkp_LookupUtf(a1, v33, "fecfg", v35, &__c[3], &__c[1], __c, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v25 = *&__c[1];
    if (!*&__c[1])
    {
      *&__c[1] = -1;
      strcpy(v35, "canonmapusage");
      v3 = loc_fe_dctlkp_LookupUtf(a1, v33, "fecfg", v35, &__c[3], &__c[1], __c, 0);
      if ((v3 & 0x80000000) != 0)
      {
        return v3;
      }

      v25 = *&__c[1];
    }

    if (v25 == 1)
    {
      v26 = **&__c[3];
      v27 = strchr(**&__c[3], __c[0]);
      if (v27)
      {
        *v27 = 0;
        v26 = **&__c[3];
      }

      if (!strcmp(v26, "all"))
      {
        *(a1 + 1632) = 0;
      }

      if (!strcmp(v26, "nocaseconv"))
      {
        *(a1 + 1632) = 2;
      }

      if (!strcmp(v26, "g2pdct"))
      {
        *(a1 + 1632) = 1;
      }
    }
  }

  return v3;
}

uint64_t fe_dctlkp_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62335, 3696);
  if ((result & 0x80000000) != 0)
  {
    return 2306875400;
  }

  if (a1)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjClose");
    if (*(a1 + 244))
    {
      v4 = 0;
      do
      {
        v5 = *(a1[62] + 8 * v4);
        v6 = *(v5 + 624);
        if (v6)
        {
          v7 = *(v5 + 56);
          if (v7)
          {
            brk_DataUnmap(*(*a1 + 24), v6, v7);
            v6 = *(*(a1[62] + 8 * v4) + 624);
          }

          brk_DataClose(*(*a1 + 24), v6);
          v5 = *(a1[62] + 8 * v4);
        }

        heap_Free(*(*a1 + 8), v5);
        ++v4;
      }

      while (v4 < *(a1 + 244));
    }

    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    hlp_LookupFree(a1);
    close_DctRom((a1 + 2));
    close_DctRom((a1 + 12));
    close_DctRom((a1 + 22));
    close_DctRom((a1 + 32));
    close_DctRom((a1 + 42));
    close_DctRom((a1 + 52));
    v8 = a1[63];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    v9 = a1[62];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
    }

    hlp_domainToksFree(a1);
    if (a1[73])
    {
      for (i = 0; i != 2048; i += 8)
      {
        v11 = *(a1[73] + i);
        if (v11)
        {
          heap_Free(*(*a1 + 8), v11);
        }
      }

      heap_Free(*(*a1 + 8), a1[73]);
    }

    if (a1[333])
    {
      for (j = 0; j != 2048; j += 8)
      {
        v13 = *(a1[333] + j);
        if (v13)
        {
          heap_Free(*(*a1 + 8), v13);
        }
      }

      heap_Free(*(*a1 + 8), a1[333]);
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0 || !a1)
  {
    return CanonMap;
  }

  *&__c[3] = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_ObjReopen");
  hlp_LookupFree(a1);
  close_DctRom((a1 + 2));
  close_DctRom((a1 + 32));
  close_DctRom((a1 + 42));
  v5 = a1[63];
  if (v5)
  {
    heap_Free(*(*a1 + 8), v5);
  }

  hlp_domainToksFree(a1);
  if (a1[73])
  {
    for (i = 0; i != 2048; i += 8)
    {
      v7 = *(a1[73] + i);
      if (v7)
      {
        heap_Free(*(*a1 + 8), v7);
        *(a1[73] + i) = 0;
      }
    }

    heap_Free(*(*a1 + 8), a1[73]);
    a1[73] = 0;
  }

  if (a1[333])
  {
    for (j = 0; j != 2048; j += 8)
    {
      v9 = *(a1[333] + j);
      if (v9)
      {
        heap_Free(*(*a1 + 8), v9);
        *(a1[333] + j) = 0;
      }
    }

    heap_Free(*(*a1 + 8), a1[333]);
    a1[333] = 0;
  }

  *(a1 + 2) = 0;
  a1[7] = 0;
  a1[47] = 0;
  a1[37] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[33] = 0;
  a1[34] = 0;
  a1[43] = 0;
  a1[44] = 0;
  *(a1 + 67) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 65) = 0u;
  a1[72] = 0;
  *(a1 + 665) = 1;
  *(a1 + 816) = 1;
  if ((hlp_CreateBrokerString(*a1, a1 + 1634, 0) & 0x80000000) != 0 || (open_DctRom(a1 + 2, a1 + 1634, a1 + 2) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateBrokerString(*a1, a1 + 1634, 1);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }

    BrokerString = open_DctRom(a1 + 2, a1 + 1634, a1 + 2);
    if ((BrokerString & 0x80000000) != 0)
    {
      return BrokerString;
    }
  }

  if ((hlp_CreateVoiceBrokerString(*a1, a1 + 1890, 1) & 0x80000000) != 0 || (open_DctRom(a1 + 42, a1 + 1890, a1 + 82) & 0x80000000) != 0)
  {
    BrokerString = hlp_CreateVoiceBrokerString(*a1, a1 + 1890, 0);
    if ((BrokerString & 0x80000000) == 0)
    {
      if ((open_DctRom(a1 + 42, a1 + 1890, a1 + 82) & 0x80000000) != 0)
      {
        *(a1 + 82) = 0;
      }

      goto LABEL_26;
    }

    return BrokerString;
  }

LABEL_26:
  __c[0] = 0;
  hlp_OpenMl2Dct(*a1, a1);
  *&__c[1] = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "punc", &__c[3], &__c[1], __c, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  v11 = **&__c[3];
  v12 = strchr(**&__c[3], __c[0]);
  if (v12)
  {
    *v12 = 0;
    v11 = **&__c[3];
  }

  v13 = strlen(v11);
  v14 = heap_Alloc(*(*a1 + 8), (v13 + 1));
  a1[63] = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    return 2306875402;
  }

  strcpy(v14, **&__c[3]);
  *&__c[1] = -1;
  BrokerString = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", "canonmapdomain", &__c[3], &__c[1], __c, 0);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  if (*&__c[1])
  {
    *(a1 + 665) = 0;
  }

  BrokerString = loc_fe_dctlkp_getDomainTokenDefs(a1, a2, a1);
  if ((BrokerString & 0x80000000) != 0)
  {
    return BrokerString;
  }

  strcpy(a1 + 2402, "normal");
  a1[73] = 0;
  a1[333] = 0;
  CanonMap = LoadCanonMap(a1, a2, "normal");
  if ((CanonMap & 0x80000000) == 0)
  {
    if (*(a1 + 244))
    {
      v15 = 0;
      while (1)
      {
        CanonMap = hlp_EnableAddon(a1, a2, *(a1[62] + 8 * v15));
        if ((CanonMap & 0x80000000) != 0)
        {
          break;
        }

        if (++v15 >= *(a1 + 244))
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ObjReopen");
    }
  }

  return CanonMap;
}

void *hlp_LookupFree(void *result)
{
  v1 = result;
  v2 = result[67];
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
    v1[67] = 0;
  }

  v3 = v1[7];
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    v1[7] = 0;
  }

  v4 = v1[66];
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
        *(v1[66] + 8 * v6) = 0;
        ++v7;
        v4 = v1[66];
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
    v1[66] = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v1[64];
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
        *(v1[64] + 8 * v10) = 0;
        ++v7;
        v8 = v1[64];
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
    v1[64] = 0;
  }

  v11 = v1[65];
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
        exit_DctRom((v1 + 2), *(v1[68] + 8 * v13));
        heap_Free(*(*v1 + 8), *(v1[65] + 8 * v13));
        *(v1[65] + 8 * v13) = 0;
        ++v7;
        v11 = v1[65];
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
    v1[65] = 0;
  }

  v14 = v1[68];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
      v16 = 8 * v7;
      do
      {
        v17 = *(v1[68] + v15);
        if (v17)
        {
          brk_DataClose(*(*v1 + 24), v17);
          *(v1[68] + v15) = 0;
        }

        v15 += 8;
      }

      while (v16 != v15);
      v14 = v1[68];
    }

    result = heap_Free(*(*v1 + 8), v14);
    v1[68] = 0;
  }

  v18 = v1[69];
  if (v18)
  {
    v19 = v1[70];
    if (v19)
    {
      brk_DataUnmap(*(*v1 + 24), v18, v19);
      v1[70] = 0;
      v18 = v1[69];
    }

    result = brk_DataClose(*(*v1 + 24), v18);
    v1[69] = 0;
  }

  v1[72] = 0;
  return result;
}

void *hlp_domainToksFree(void *result)
{
  if (*(result + 808))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    v4 = result[203];
    do
    {
      if (*(v4 + v2))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2));
        v4 = v1[203];
        *(v4 + v2) = 0;
      }

      if (*(v4 + v2 + 8))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 8));
        v4 = v1[203];
        *(v4 + v2 + 8) = 0;
      }

      if (*(v4 + v2 + 16))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 16));
        v4 = v1[203];
        *(v4 + v2 + 16) = 0;
      }

      if (*(v4 + v2 + 24))
      {
        heap_Free(*(*v1 + 8), *(v4 + v2 + 24));
        v4 = v1[203];
        *(v4 + v2 + 24) = 0;
      }

      ++v3;
      v2 += 32;
    }

    while (v3 < *(v1 + 808));
    result = heap_Free(*(*v1 + 8), v4);
    v1[203] = 0;
    *(v1 + 808) = 0;
  }

  return result;
}

uint64_t hlp_EnableAddon(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v14 = "";
  __s = 0;
  *&__c[1] = -1;
  if (!a1)
  {
    return 2306875400;
  }

  v4 = a2;
  *&__c[3] = 0;
  __c[0] = 0;
  *(a3 + 620) = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s);
  if ((Str & 0x80000000) == 0)
  {
    lowercase(__s, __s1);
    lowercase((a3 + 80), __s2);
    if (!strcmp(__s1, __s2))
    {
      Str = paramc_ParamGetStr(*(*a1 + 40), "fecfg", &v14);
      if ((Str & 0x80000000) == 0 && !strcmp(v14, (a3 + 84)))
      {
        Str = loc_fe_dctlkp_LookupUtf(a1, v4, "fecfg", "addoncomp", &__c[3], &__c[1], __c, 0);
        if (*&__c[1])
        {
          v7 = **&__c[3];
          v8 = strchr(**&__c[3], __c[0]);
          if (v8)
          {
            *v8 = 0;
            v7 = **&__c[3];
          }

          v9 = atoi(v7);
        }

        else
        {
          v9 = 1;
        }

        if (v9 == *(a3 + 105) && *(a3 + 104) == 1)
        {
          *(a3 + 620) = 1;
        }
      }
    }
  }

  return Str;
}

uint64_t fe_dctlkp_CheckVersion(unsigned int *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = a2;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
    __endptr = 0;
    v9 = **&__c[1];
    v10 = strchr(**&__c[1], __c[0]);
    if (v10)
    {
      *v10 = 0;
      v9 = **&__c[1];
    }

    v17 = v9;
    *a4 = 1;
    v11 = strtol(v9, &__endptr, 10);
    v12 = v11 < 1 || __endptr == 0;
    if (v12 || *__endptr != 46 || (v13 = strtol(__endptr + 1, &v17, 10), (v13 & 0x80000000) != 0) || !v17 || *v17 != 46 || (v14 = strtol(v17 + 1, &__endptr, 10), v14 < 0) || !__endptr || *__endptr != 46 && *__endptr)
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
        log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "productVersion %d.%d.%d dctVersion %s", 7, 4, 0, v9);
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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

  v10 = brk_DataMap(*(*a1 + 24), a1[69], 40, *(a1 + 2), &v20);
  if (v10)
  {
    v11 = v10;
    brk_DataClose(*(*a1 + 24), a1[69]);
    a1[69] = 0;
    return v11;
  }

  if (LH_stricmp(v20, a3))
  {
    v12 = 0;
    v13 = 0;
    while (v13 < *(a1 + 2))
    {
      v14 = strlen(&v20[v12]);
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
    brk_DataUnmap(*(*a1 + 24), a1[69], v20);
    return 2306875412;
  }

  v16 = strlen(&v20[v12]);
  v17 = *&v20[v15 + 1 + v16 + ((~v16 - v15) & 3)];
  brk_DataUnmap(*(*a1 + 24), a1[69], v20);
  v9 = brk_DataMap(*(*a1 + 24), a1[69], v17, 4, &v20);
  if (v9)
  {
    return v9;
  }

  v19 = *v20;
  brk_DataUnmap(*(*a1 + 24), a1[69], v20);
  v7 = brk_DataMap(*(*a1 + 24), a1[69], (v17 + 4), v19, a4);
  if ((v7 & 0x80000000) == 0)
  {
    a1[70] = *a4;
  }

  return v7;
}

uint64_t fe_dctlkp_QueryDictExists(char *a1, int a2, char *a3, _DWORD *a4)
{
  optional_brk_resource = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
          optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, (a1 + 2146), a1 + 62, a3, a4);
          if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
          {
            optional_brk_resource = loc_fe_dctlkp_query_optional_brk_resource(v10, (a1 + 1890), a1 + 82, a3, a4);
            if ((optional_brk_resource & 0x80000000) == 0 && !*a4)
            {
              return loc_fe_dctlkp_query_optional_brk_resource(v10, "clmnn:clmnndic", a1 + 102, a3, a4);
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
      v13 = *(result + 1616);
      if (*(result + 1616))
      {
        v14 = 0;
        v15 = 0;
        v16 = *(a5 + 32 * v10 + 24);
        do
        {
          if (v16)
          {
            result = strcmp(v16, *(*(v8 + 1624) + v14));
            if (result)
            {
              v17 = 999;
            }

            else
            {
              v17 = v15;
            }
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
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  __s = 0;
  v51 = 999;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_Tokenize");
  v11 = (*(a1[71] + 104))(a3, a4, 1, 0, &v58 + 2);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_62:
    v12 = v11;
    goto LABEL_65;
  }

  v12 = (*(a1[71] + 176))(a3, a4, HIWORD(v58), 0, &__s, &v53 + 2);
  if ((v12 & 0x80000000) == 0)
  {
    LOWORD(v58) = 0;
    v56 = 0;
    v13 = __s;
    if (strlen(__s))
    {
      v14 = 0;
      v15 = 0;
      v48 = a6;
      v49 = a4;
      v50 = a6;
      do
      {
        v57 = v15;
        v16 = strlen(v13);
        if (a6)
        {
          v17 = v48;
          v18 = a5;
          while (1)
          {
            if (*v18 <= 0x39u && ((1 << *v18) & 0x3C8010124021140) != 0)
            {
              v20 = v18[3];
              v21 = a5[3];
              if (v20 > v21 + v14)
              {
                break;
              }
            }

            v18 += 8;
            if (!--v17)
            {
              goto LABEL_16;
            }
          }

          v16 = v20 - v21;
        }

LABEL_16:
        fe_dctlkp_LangAndDomCheck(a1, &v56, &v51, v15, a5, a6);
        v22 = &v13[v15];
        v23 = v51;
        if (IsAlphaUtf(a1, v22, v51))
        {
          v24 = utf8_determineUTF8CharLength(__s[v58]);
          v25 = 0;
          v54 = 0;
          v26 = v58;
          v27 = __s;
          do
          {
            LOWORD(v58) = v26 + v24;
            v24 = utf8_determineUTF8CharLength(v27[(v26 + v24)]);
            if (!IsAlphaUtf(a1, &__s[v58], v23) || v25 > 0x7E)
            {
              break;
            }

            ++v25;
            v26 = v58;
            v27 = __s;
          }

          while (v58 < strlen(__s) && v16 > v58);
        }

        else if (IsDigitUtf(a1, &__s[v58], v23))
        {
          v29 = utf8_determineUTF8CharLength(__s[v58]);
          v30 = 0;
          v54 = 1;
          v31 = v58;
          v32 = __s;
          do
          {
            LOWORD(v58) = v31 + v29;
            v29 = utf8_determineUTF8CharLength(v32[(v31 + v29)]);
            if (!IsDigitUtf(a1, &__s[v58], v23) || v30 > 0x7E)
            {
              break;
            }

            ++v30;
            v31 = v58;
            v32 = __s;
          }

          while (v58 < strlen(__s) && v16 > v58);
        }

        else
        {
          if (IsPuncUtf(a1, &__s[v58], v23))
          {
            v54 = 2;
            v34 = v58 + 1;
LABEL_36:
            LOWORD(v58) = v34;
            goto LABEL_37;
          }

          v39 = __s;
          v40 = v58;
          v41 = __s[v58];
          v42 = v41 > 0x20 || ((1 << v41) & 0x100002600) == 0;
          if (v42 && v41 != 95)
          {
            v46 = utf8_determineUTF8CharLength(v41);
            log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Warning - character %c marked as alpha by default. Assign to domain definitions.", __s[v58]);
            v54 = 0;
            v34 = v58 + v46;
            goto LABEL_36;
          }

          v54 = 3;
          v43 = v57;
          do
          {
            LOWORD(v58) = ++v40;
            fe_dctlkp_LangAndDomCheck(a1, &v56, &v51, v43, a5, v50);
            v44 = v39[v40];
            v45 = v44 > 0x20 || ((1 << v44) & 0x100002600) == 0;
          }

          while ((!v45 || v44 == 95) && strlen(v39) > v40);
        }

LABEL_37:
        v35 = a1[71];
        if (v57)
        {
          v36 = v49;
          v37 = a3;
          v11 = (*(v35 + 80))(a3, v49, v55, &v55);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v36 = v49;
          v37 = a3;
          v11 = (*(v35 + 72))(a3, v49, 3, HIWORD(v58), &v55);
          if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_62;
          }
        }

        v38 = (*(a1[71] + 160))(v37, v36, v55, 0, 1, &v54, &v53);
        if ((v38 & 0x80000000) != 0 || (v38 = (*(a1[71] + 160))(v37, v36, v55, 1, 1, &v57, &v53), (v38 & 0x80000000) != 0))
        {
          v12 = v38;
LABEL_64:
          log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41002, 0);
          break;
        }

        v12 = (*(a1[71] + 160))(v37, v36, v55, 2, 1, &v58, &v53);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_64;
        }

        v14 = v58;
        v13 = __s;
        v15 = v58;
        a6 = v50;
      }

      while (v58 < strlen(__s));
    }
  }

LABEL_65:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Tokenize");
  return v12;
}

BOOL IsAlphaUtf(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 != 999)
  {
    v6 = *(*(a1 + 1624) + 32 * a3 + 8);
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

BOOL IsDigitUtf(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 == 999)
  {
    return *a2 - 48 < 0xA;
  }

  v3 = *(*(a1 + 1624) + 32 * a3 + 16);
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

BOOL IsPuncUtf(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 == 999 || (v4 = *(*(a1 + 1624) + 32 * a3 + 24)) == 0)
  {

    return loc_fe_dctlkp_IsPunctUtf(a1, a2);
  }

  else
  {
    return a2 && utf8_strchr(v4, a2) != 0;
  }
}

uint64_t fe_dctlkp_PartLookupUtf(unsigned int *a1, uint64_t a2, char *a3, const char *a4, void *a5, __int16 *a6, _BYTE *a7, uint64_t a8)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a8)
  {
    return a8;
  }

  v12 = a2;
  v14 = a8 - 1;
  if (a8 != 1)
  {
    v16 = 0;
    v17 = *a6;
    do
    {
      __strcpy_chk();
      LH_itoa(v16, v19, 0xAu);
      __strcat_chk();
      *a6 = v17;
      a8 = loc_fe_dctlkp_LookupUtf(a1, v12, v20, a4, a5, a6, a7, 0);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v14 != v16++);
    return a8;
  }

  return loc_fe_dctlkp_LookupUtf(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t fe_dctlkp_PartLookupAddonDct(uint64_t a1, uint64_t a2, char *a3, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, uint64_t a8, _DWORD *a9)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a8)
  {
    return a8;
  }

  v14 = a8 - 1;
  if (a8 != 1)
  {
    v16 = 0;
    v17 = *a6;
    do
    {
      __strcpy_chk();
      LH_itoa(v16, v20, 0xAu);
      __strcat_chk();
      *a6 = v17;
      a8 = fe_dctlkp_LookupAddonDct(a1, a2, v21, a4, a5, a6, a7, a9);
      if ((a8 & 0x80000000) != 0)
      {
        break;
      }

      if (*a6)
      {
        break;
      }
    }

    while (v14 != v16++);
    return a8;
  }

  return fe_dctlkp_LookupAddonDct(a1, a2, a3, a4, a5, a6, a7, a9);
}

uint64_t fe_dctlkp_LookupAddonDct(uint64_t a1, uint64_t a2, char *a3, const char *a4, void *a5, unsigned __int16 *a6, _BYTE *a7, _DWORD *a8)
{
  v62 = a2;
  v13 = a1;
  v67 = 0;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  Str = paramc_ParamGetStr(*(*v13 + 40), "addondct_extended_lookup", &v67);
  if ((Str & 0x80000000) == 0 && !strcmp(v67, "yes"))
  {
    log_OutText(*(*v13 + 32), "FE_DCTLKP", 5, 0, "<%s> enables extended lookup (both DDU and system dct)", "addondct_extended_lookup");
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v59 = *a6;
  v17 = *(v13 + 488);
  if (!*(v13 + 488))
  {
    v21 = 0;
    v37 = 1;
    goto LABEL_52;
  }

  v55 = v15;
  __s1 = a3;
  v58 = Str;
  v66 = a5;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v65 = v13;
  while (1)
  {
    v64 = v18;
    v22 = *(*(v13 + 496) + 8 * v18);
    if (!*(v22 + 620))
    {
      goto LABEL_44;
    }

    if (strstr(__s1, "femwg2p"))
    {
      v23 = 0;
      v24 = "addonmwg2p";
      goto LABEL_20;
    }

    if (strstr(__s1, "femwtn"))
    {
      v23 = 0;
      v24 = "addonmwtn";
      goto LABEL_20;
    }

    if (!strstr(__s1, "g2p"))
    {
      break;
    }

    v25 = *(v22 + 106);
    v24 = (v22 + 106);
    if (v25)
    {
      goto LABEL_19;
    }

LABEL_44:
    v18 = v64 + 1;
    if (v64 + 1 >= v17)
    {
      if (v19)
      {
        v36 = v55 ^ 1;
        if (!a8)
        {
          v36 = 1;
        }

        a5 = v66;
        if (v36)
        {
          if (a8)
          {
            *a8 = 1;
          }

          *a6 = 0;
          v38 = v58;
          goto LABEL_77;
        }

        LOWORD(v17) = v20;
        v37 = 0;
      }

      else
      {
        LOWORD(v17) = v20;
        v37 = 1;
        a5 = v66;
      }

      a3 = __s1;
LABEL_52:
      *a6 = v59;
      v38 = loc_fe_dctlkp_LookupUtf(v13, v62, a3, a4, a5, a6, a7, 0);
      if ((v38 & 0x80000000) != 0)
      {
        v16 = v38;
        v20 = v17;
        goto LABEL_88;
      }

      if (a8)
      {
        if ((v37 & 1) == 0 && !*a6)
        {
          *a8 = 1;
          *a7 = 14;
          v20 = v17;
          goto LABEL_78;
        }

        *a8 = 0;
      }

      v39 = *a6;
      if (*a6)
      {
        v40 = 0;
        v20 = v17;
        do
        {
          v41 = *(*a5 + 8 * v40);
          v42 = *v41;
          if (*v41)
          {
            v43 = v41 + 1;
            do
            {
              if (*a7 == v42)
              {
                *(v43 - 1) = 14;
              }

              v44 = *v43++;
              v42 = v44;
            }

            while (v44);
            v39 = *a6;
          }

          ++v40;
        }

        while (v40 < v39);
      }

      else
      {
        v20 = v17;
      }

LABEL_77:
      *a7 = 14;
      v16 = v38;
      if (!a8)
      {
LABEL_79:
        v45 = v20;
        if (v20)
        {
          v46 = 0;
          v47 = v45;
          v48 = v45;
          v49 = v45;
          while (1)
          {
            v50 = *a6;
            if (v46 + v50 >= 20 * *(v13 + 578))
            {
              break;
            }

            if (v21)
            {
              strcpy(*(*(v13 + 528) + 8 * (v46 + v50)), *(v21 + 8 * v46));
            }

            if (v49 == ++v46)
            {
              LOWORD(v46) = v47;
              break;
            }
          }
        }

        else
        {
          v48 = v20;
          LOWORD(v46) = 0;
        }

        *a6 += v46;
        v20 = v48;
LABEL_88:
        v28 = v21;
        if (v21)
        {
          goto LABEL_89;
        }

        return v16;
      }

LABEL_78:
      v16 = v38;
      if (!*a8)
      {
        goto LABEL_88;
      }

      goto LABEL_79;
    }
  }

  if (!*(v22 + 362))
  {
    goto LABEL_44;
  }

  v24 = (v22 + 362);
LABEL_19:
  v23 = atoi(v24 + 6);
LABEL_20:
  if (v23 < v19)
  {
    goto LABEL_44;
  }

  v56 = v23;
  if (!*v24)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v26 = strchr(v24, 124);
    v61 = v26;
    if (v26)
    {
      v60 = *v26;
      *v26 = 0;
    }

    else
    {
      v60 = 0;
    }

    *a6 = v59;
    v58 = loc_fe_dctlkp_LookupUtf(v13, v62, v24, a4, v66, a6, a7, *(*(v13 + 496) + 8 * v64));
    if ((v58 & 0x80000000) != 0)
    {
      v16 = v58;
      goto LABEL_88;
    }

    if (*a6)
    {
      break;
    }

LABEL_38:
    if (v61 && v60)
    {
      *v61 = v60;
    }

    else if (!v61)
    {
      goto LABEL_43;
    }

    v24 = v61 + 1;
    if (!v61[1])
    {
LABEL_43:
      v17 = *(v13 + 488);
      goto LABEL_44;
    }
  }

  v27 = heap_Realloc(*(*v13 + 8), v21, 8 * (*a6 + v20));
  if (!v27)
  {
    log_OutPublic(*(*v13 + 32), "FE_DCTLKP", 41000, 0);
    v16 = 2306875402;
    goto LABEL_88;
  }

  v28 = v27;
  bzero((v27 + 8 * v20), 8 * *a6);
  if (!*a6)
  {
LABEL_37:
    v13 = v65;
    log_OutEvent(*(*v65 + 32), 28, "%s%s", "ADDON_NAME", *(*(v65[62] + 8 * v64) + 632));
    v21 = v28;
    v19 = v56;
    goto LABEL_38;
  }

  v29 = 0;
  while (1)
  {
    v30 = strlen(*(*v66 + 8 * v29));
    v31 = heap_Realloc(*(*v65 + 8), *(v28 + 8 * v20), (v30 + 1));
    if (!v31)
    {
      break;
    }

    *(v28 + 8 * v20) = v31;
    strcpy(v31, *(*v66 + 8 * v29));
    v32 = *(v28 + 8 * v20);
    v33 = *v32;
    if (*v32)
    {
      v34 = v32 + 1;
      do
      {
        if (*a7 == v33)
        {
          *(v34 - 1) = 14;
        }

        v35 = *v34++;
        v33 = v35;
      }

      while (v35);
    }

    ++v20;
    if (++v29 >= *a6)
    {
      goto LABEL_37;
    }
  }

  v13 = v65;
  log_OutPublic(*(*v65 + 32), "FE_DCTLKP", 41000, 0);
  v16 = 2306875402;
LABEL_89:
  if (v20)
  {
    v51 = v20;
    v52 = v28;
    do
    {
      v53 = *v52++;
      heap_Free(*(*v13 + 8), v53);
      --v51;
    }

    while (v51);
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
  v59[7] = *MEMORY[0x1E69E9840];
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
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = 0;
  v12 = 0;
  *__s = 0;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  ++*(a2 + 4);
  __strcat_chk();
  LH_itoa(*(a2 + 4), &v9, 0xAu);
  __strcat_chk();
  v4 = strlen(__s);
  v5 = WordToHashOpt(a1 + 8, __s, 0, v4 - 1, 0, &v7);
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

uint64_t loc_fe_dctlkp_LookupUtf(unsigned int *a1, int a2, char *a3, const char *a4, void *a5, _WORD *a6, _BYTE *a7, unsigned int *a8)
{
  v89 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v84 = 0;
  *__s2 = 0;
  v8 = 2306875402;
  v88 = 0;
  *__s = 0;
  v9 = 2306875399;
  if (!a3 || !a4 || !a5 || !a6 || !a7)
  {
    return v9;
  }

  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  v86 = 0;
  v82 = 0;
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 5, 0, "Entering fe_dctlkp_Lookup: searching %s in %s", a4, a3);
  v81 = 0;
  v79 = 0;
  v80 = 0;
  if (!a8)
  {
    v19 = *a6;
    if (v19 == 2)
    {
      if (!a1[82])
      {
        v8 = 2306875399;
        goto LABEL_130;
      }

      v18 = a1 + 82;
    }

    else
    {
      if (v19 == 1)
      {
        v20 = strlen(a3);
        v21 = heap_Alloc(*(*a1 + 8), (v20 + 2));
        if (!v21)
        {
          goto LABEL_27;
        }

        v22 = v21;
        v23 = strcpy(v21, a3);
        *&v22[strlen(v23)] = 67;
        __src = v22;
        if (!strcmp(a3, "lidcfg") || !strncmp(a3, "mertfrq", 7uLL) || !strncmp(a3, "merwfrq", 7uLL))
        {
          v18 = a1 + 42;
          if (a1[42])
          {
            goto LABEL_40;
          }

LABEL_87:
          v18 = 0;
          v47 = 1;
LABEL_88:
          v8 = 2306875399;
          goto LABEL_113;
        }

        v24 = *a3;
        if (v24 == 99)
        {
          if (a3[1] == 108 && a3[2] == 109)
          {
            if (a1[102])
            {
              v18 = a1 + 102;
              goto LABEL_40;
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v24 != 108)
          {
            if (v24 != 109 || a3[1] != 108 || a3[2] != 50)
            {
              goto LABEL_39;
            }

            goto LABEL_33;
          }

          if (a3[1] == 105 && a3[2] == 100)
          {
LABEL_33:
            v18 = a1 + 62;
            if (a1[62])
            {
              goto LABEL_40;
            }

            goto LABEL_87;
          }
        }

LABEL_39:
        v18 = a1 + 22;
        if (a1[22])
        {
          goto LABEL_40;
        }

        goto LABEL_87;
      }

      v18 = a1 + 2;
    }

    __src = heap_strdup(*(*a1 + 8), a3);
    if (__src)
    {
      goto LABEL_40;
    }

LABEL_27:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    goto LABEL_130;
  }

  v17 = heap_strdup(*(*a1 + 8), a3);
  if (!v17)
  {
    goto LABEL_27;
  }

  __src = v17;
  LH_itoa(*(a8 + 36), __s, 0xAu);
  v18 = a8;
LABEL_40:
  v25 = *a6;
  if ((v25 - 1) < 2 || v25 == 0xFFFF)
  {
    v77 = strncmp(a3, "ml2mw", 5uLL) == 0;
    *a6 = 0;
  }

  else
  {
    v77 = 1;
  }

  v26 = hlp_SearchDctName(a1, __src, __s);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = 0;
    v28 = 0;
    *(v18 + 3) = *(*(a1 + 65) + 8 * v26);
    goto LABEL_46;
  }

  v45 = heap_Realloc(*(*a1 + 8), *(a1 + 68), 8 * *(a1 + 288) + 16);
  if (!v45)
  {
    goto LABEL_112;
  }

  *(a1 + 68) = v45;
  v46 = *(a1 + 288);
  *(v45 + 8 * v46) = 0;
  *(*(a1 + 68) + 8 * v46 + 8) = 0;
  if (!a8)
  {
    v36 = brk_DataOpen(*(*a1 + 24));
    if ((v36 & 0x80000000) != 0)
    {
      v47 = 0;
      goto LABEL_133;
    }

    v46 = *(a1 + 288);
  }

  v48 = heap_Realloc(*(*a1 + 8), *(a1 + 65), 8 * v46 + 16);
  if (!v48)
  {
    goto LABEL_112;
  }

  *(a1 + 65) = v48;
  v49 = *(a1 + 288);
  *(v48 + 8 * v49) = 0;
  *(*(a1 + 65) + 8 * v49 + 8) = 0;
  v50 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v50)
  {
    goto LABEL_112;
  }

  v51 = *(a1 + 288);
  *(*(a1 + 65) + 8 * v51) = v50;
  *(v18 + 3) = *(*(a1 + 65) + 8 * v51);
  inited = init_DctRom((v18 + 2), a3, *v18, *(*(a1 + 68) + 8 * v51));
  v27 = inited;
  if ((inited & 0x80000000) != 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 65) + 8 * *(a1 + 288)));
      v75 = *(a1 + 288);
      *(*(a1 + 65) + 8 * v75) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 68) + 8 * v75));
      v47 = 0;
      v8 = 0;
      *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
      goto LABEL_113;
    }

    v47 = 0;
    goto LABEL_86;
  }

  v53 = heap_Realloc(*(*a1 + 8), *(a1 + 64), 8 * *(a1 + 288) + 16);
  if (!v53)
  {
    goto LABEL_112;
  }

  *(a1 + 64) = v53;
  v54 = *(a1 + 288);
  *(v53 + 8 * v54) = 0;
  *(*(a1 + 64) + 8 * v54 + 8) = 0;
  v55 = strlen(__s);
  v56 = strlen(__src);
  v57 = v55 ? v55 + 1 : 0;
  v58 = heap_Alloc(*(*a1 + 8), (v56 + v57 + 1));
  if (!v58)
  {
    goto LABEL_112;
  }

  v59 = *(a1 + 288);
  *(*(a1 + 64) + 8 * v59) = v58;
  v60 = *(*(a1 + 64) + 8 * v59);
  if (v55)
  {
    memcpy(v60, __s, v55);
    *(*(*(a1 + 64) + 8 * *(a1 + 288)) + v55) = 95;
    v60 = (*(*(a1 + 64) + 8 * *(a1 + 288)) + v55 + 1);
  }

  v27 = v27;
  strcpy(v60, __src);
  MaxOutLen = GetMaxOutLen((v18 + 2));
  if (!MaxOutLen)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    v47 = 0;
    goto LABEL_88;
  }

  v28 = MaxOutLen;
  if (MaxOutLen > *(a1 + 290))
  {
    v62 = heap_Realloc(*(*a1 + 8), *(v18 + 6), MaxOutLen + 1);
    if (v62)
    {
      *(a1 + 7) = v62;
      *(a1 + 17) = v62;
      *(a1 + 27) = v62;
      *(a1 + 37) = v62;
      *(a1 + 47) = v62;
      *(a1 + 57) = v62;
      v63 = *(a1 + 244);
      if (*(a1 + 244))
      {
        v64 = *(a1 + 62);
        do
        {
          v65 = *v64++;
          *(v65 + 48) = v62;
          --v63;
        }

        while (v63);
      }

      goto LABEL_111;
    }

LABEL_112:
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    v47 = 0;
    goto LABEL_113;
  }

LABEL_111:
  ++*(a1 + 288);
LABEL_46:
  *a7 = GetFieldSeparator((v18 + 2));
  v29 = (strlen(a4) + 5);
  if (v29 > *(a1 + 291))
  {
    v30 = heap_Realloc(*(*a1 + 8), *(a1 + 67), v29);
    if (!v30)
    {
      goto LABEL_83;
    }

    *(a1 + 291) = v29;
    *(a1 + 67) = v30;
  }

  *a6 = 0;
  *a5 = *(a1 + 66);
  if (v28 > *(a1 + 290))
  {
    v76 = v28;
    if (*(a1 + 289))
    {
      v31 = 0;
      while (1)
      {
        v32 = v31;
        v33 = heap_Realloc(*(*a1 + 8), *(*(a1 + 66) + 8 * v31), v76 + 1);
        if (!v33)
        {
          break;
        }

        *(*(a1 + 66) + 8 * v32) = v33;
        v31 = v32 + 1;
        if (20 * *(a1 + 289) - 1 <= (v32 + 1))
        {
          goto LABEL_54;
        }
      }

LABEL_83:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
LABEL_84:
      v47 = 1;
      goto LABEL_113;
    }

LABEL_54:
    v27 = v27;
    *(a1 + 290) = v76;
  }

  LOWORD(v34) = *a6;
  if (((*a6 != 0) & ~v77) != 0)
  {
    v47 = 1;
LABEL_86:
    v8 = v27;
    goto LABEL_113;
  }

  while (1)
  {
    HIWORD(v86) = 0;
    if (v34 == 1)
    {
      v79 = v81;
      v80 = v82;
    }

    else
    {
      if (!v34)
      {
        strcpy(*(a1 + 67), a4);
        goto LABEL_62;
      }

      v81 = v79;
      v82 = v80;
    }

    **(a1 + 67) = 23;
    LH_itoa(*a6, __s2, 0xAu);
    strcat(*(a1 + 67), __s2);
LABEL_62:
    v35 = *(a1 + 67);
    LOWORD(v86) = strlen(v35) - 1;
    v36 = DctLookup((v18 + 2), v35, &v86 + 1, &v86, 0, &v85, &v81);
    if (v36)
    {
      break;
    }

    if (*a6 + 2 > 20 * *(a1 + 289))
    {
      v37 = heap_Realloc(*(*a1 + 8), *(a1 + 66), 160 * *(a1 + 289) + 160);
      if (!v37)
      {
        goto LABEL_83;
      }

      *(a1 + 66) = v37;
      v38 = 20 * *(a1 + 289);
      if (*(a1 + 289))
      {
        v39 = v38 - 1;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
      v41 = v39;
      bzero((v37 + 8 * v39), 8 * (((v38 + 20) & 0xFFFC) - v39));
      v42 = *(a1 + 289);
      if (v40 < (20 * v42 + 19))
      {
        while (1)
        {
          v43 = heap_Alloc(*(*a1 + 8), *(a1 + 290) + 1);
          if (!v43)
          {
            goto LABEL_83;
          }

          *(*(a1 + 66) + 8 * v41++) = v43;
          v42 = *(a1 + 289);
          if (v41 >= (20 * v42 + 19))
          {
            v41 = v41;
            break;
          }
        }
      }

      *(*(a1 + 66) + 8 * v41) = 0;
      *(a1 + 289) = v42 + 1;
    }

    if (v85 < 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = 0;
      do
      {
        *(*(*(a1 + 66) + 8 * *a6) + v44) = *(*(v18 + 6) + v44);
        ++v44;
      }

      while (v44 < v85);
    }

    *(*(*(a1 + 66) + 8 * *a6) + v44) = 0;
    v34 = (*a6)++ + 1;
    if (((v77 | HIWORD(v34)) & 1) == 0)
    {
      goto LABEL_91;
    }
  }

  if ((v36 & 0x1FFF) == 0xA)
  {
    goto LABEL_84;
  }

  if ((v36 & 0x1FFF) == 0x14)
  {
LABEL_91:
    v8 = 0;
    goto LABEL_84;
  }

  v47 = 1;
LABEL_133:
  v8 = v36;
LABEL_113:
  heap_Free(*(*a1 + 8), __src);
  if ((v8 & 0x80000000) != 0)
  {
    if ((v47 & 1) == 0)
    {
      v66 = *(a1 + 64);
      if (v66)
      {
        v67 = *(v66 + 8 * *(a1 + 288));
        if (v67)
        {
          heap_Free(*(*a1 + 8), v67);
          *(*(a1 + 64) + 8 * *(a1 + 288)) = 0;
        }
      }

      v68 = *(a1 + 65);
      if (v68)
      {
        v69 = *(a1 + 288);
        v70 = *(v68 + 8 * v69);
        if (v70)
        {
          if (v18)
          {
            v71 = *(a1 + 68);
            if (v71)
            {
              if (*(v71 + 8 * v69))
              {
                *(v18 + 3) = v70;
                exit_DctRom((v18 + 2), *(v71 + 8 * v69));
                v70 = *(*(a1 + 65) + 8 * *(a1 + 288));
              }
            }
          }

          heap_Free(*(*a1 + 8), v70);
          *(*(a1 + 65) + 8 * *(a1 + 288)) = 0;
        }
      }

      v72 = *(a1 + 68);
      if (v72)
      {
        v73 = *(v72 + 8 * *(a1 + 288));
        if (v73)
        {
          brk_DataClose(*(*a1 + 24), v73);
          *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
        }
      }
    }
  }

  else if (*a6)
  {
    *a5 = *(a1 + 66);
  }

LABEL_130:
  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_Lookup");
  return v8;
}

uint64_t fe_dctlkp_ConvertToCanonicalTokenUtf(size_t a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v10 = safeh_HandleCheck(a1, a2, 62335, 3696);
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

  if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
  {
    CanonMap = LoadCanonMap(a1, a2, a3);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    __strcpy_chk();
  }

  if (*(a1 + 1632) != 2)
  {
    if (*(a1 + 1632))
    {
      if (Utf8_Utf8NbrOfSymbols(a4) - 3 <= 0xFFFFFFFD && strlen(a4))
      {
        v12 = 0;
        do
        {
          v12 += hlp_tolower_char(&a4[v12]);
        }

        while (strlen(a4) > v12);
      }
    }

    else
    {
      hlp_ConvertToCanonicalTokenUtf(a1, a2, a1, *(a1 + 584), a4, v5);
      CanonMap = 0;
    }
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalToken");
  return CanonMap;
}

size_t hlp_ConvertToCanonicalTokenUtf(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, unsigned int a6)
{
  v19 = result;
  v20 = a2;
  v23 = *MEMORY[0x1E69E9840];
  if (*(a3 + 1632) != 2)
  {
    strcpy(v21, "canonmap");
    if (*(a3 + 2664) == a4)
    {
      __strcat_chk();
      v8 = a3 + 2672;
    }

    else
    {
      v8 = a3 + 592;
    }

    result = Utf8_Utf8NbrOfSymbols(a5);
    if (result - 3 <= 0xFFFFFFFD)
    {
      result = strlen(a5);
      v9 = result;
      if (result)
      {
        v10 = 0;
        v11 = 0;
        v12 = result;
        do
        {
          v13 = &a5[v11];
          v14 = utf8_determineUTF8CharLength(*v13);
          if (hlp_getUtf8CanMap(v19, v20, v21, v8, v13, __s))
          {
            v15 = strlen(__s);
            v16 = v15;
            v17 = v12 - v14 + v15;
            if (a6 > v17)
            {
              memmove(&v13[v15], &v13[v14], v12 - (v10 + v14) + 1);
              strncpy(&a5[v11], __s, v16);
              v9 = v17;
            }
          }

          else
          {
            hlp_tolower_char(&a5[v11]);
          }

          result = utf8_determineUTF8CharLength(*v13);
          v11 += result;
          v10 = v11;
          v12 = v9;
        }

        while (v11 < v9);
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

uint64_t fe_dctlkp_G2PConvertToCanonicalTokenUtf(size_t a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalToken");
  if (a4)
  {
    if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    v12 = *(a1 + 2664);
    if (!v12)
    {
      v12 = *(a1 + 584);
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

uint64_t fe_dctlkp_ConvertToCanonicalWordUtf(uint64_t a1, uint64_t a2, const char *a3, char *a4, unsigned int a5)
{
  v10 = safeh_HandleCheck(a1, a2, 62335, 3696);
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

  if (*a4)
  {
    if (*(a1 + 2660) && strcmp(a3, (a1 + 2402)))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    if (*(a1 + 1632))
    {
      if (strlen(a4))
      {
        v12 = 0;
        do
        {
          v13 = *(a1 + 504);
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

        while (strlen(a4) > v12);
      }

      else
      {
        v12 = 0;
      }

      v15 = strlen(a4);
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
            v20 = *(a1 + 504);
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
      if (*(a1 + 1632) != 2 && Utf8_Utf8NbrOfSymbols(&a4[v12]) - 3 <= 0xFFFFFFFD && strlen(a4) > v12)
      {
        do
        {
          v12 += hlp_tolower_char(&a4[v12]);
        }

        while (strlen(a4) > v12);
      }

      v25 = strlen(&a4[v24]);
      memmove(a4, &a4[v24], v25 + 1);
    }

    else
    {
      hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 584), a4, a5);
      CanonMap = 0;
    }

    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_ConvertToCanonicalWord");
  }

  return CanonMap;
}

void *hlp_ConvertToCanonicalWordUtf(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s, unsigned int a6)
{
  v33 = a2;
  v36 = *MEMORY[0x1E69E9840];
  strcpy(v34, "canonmap");
  if (*(a3 + 2664) == a4)
  {
    __strcat_chk();
    v8 = a3 + 2672;
  }

  else
  {
    v8 = a3 + 592;
  }

  if (strlen(__s))
  {
    v9 = 0;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a3, &__s[v9]))
      {
        break;
      }

      v9 += utf8_determineUTF8CharLength(__s[v9]);
    }

    while (strlen(__s) > v9);
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  v10 = strlen(__s);
  v11 = v10 - 1;
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  LOWORD(v13) = v12;
  if (v12 >= 1)
  {
    while (__s[v11] < -64)
    {
      v14 = v11--;
      if (v14 <= 1)
      {
        LOWORD(v13) = 0;
        goto LABEL_25;
      }
    }

    LOWORD(v13) = v11;
    do
    {
      if (!loc_fe_dctlkp_IsPunctUtf(a3, &__s[v13]))
      {
        break;
      }

      v15 = v13 - 1;
      while (1)
      {
        v13 = v15;
        if (v15 < 1)
        {
          break;
        }

        v16 = __s[v15-- & 0x7FFF];
        if (v16 >= -64)
        {
          goto LABEL_24;
        }
      }

      v13 = 0;
LABEL_24:
      ;
    }

    while (v13 > 0);
  }

LABEL_25:
  v17 = utf8_determineUTF8CharLength(__s[v13]) + v13;
  if (v17 >= a6)
  {
    LOWORD(v17) = a6 - 1;
  }

  __s[v17] = 0;
  if (*(a3 + 1632) != 2 && Utf8_Utf8NbrOfSymbols(&__s[v30]) - 3 <= 0xFFFFFFFD)
  {
    v18 = strlen(__s);
    v19 = v18;
    if (v18)
    {
      v20 = 0;
      v21 = 0;
      v22 = v18;
      do
      {
        v23 = &__s[v21];
        v24 = utf8_determineUTF8CharLength(*v23);
        if (hlp_getUtf8CanMap(a1, v33, v34, v8, v23, __sa))
        {
          v25 = strlen(__sa);
          v26 = v25;
          v27 = v22 - v24 + v25;
          if (a6 > v27)
          {
            memmove(&v23[v25], &v23[v24], v22 - (v20 + v24) + 1);
            strncpy(&__s[v21], __sa, v26);
            v19 = v27;
          }
        }

        else
        {
          hlp_tolower_char(&__s[v21]);
        }

        v21 += utf8_determineUTF8CharLength(*v23);
        v20 = v21;
        v22 = v19;
      }

      while (v21 < v19);
    }
  }

  v28 = strlen(&__s[v30]);
  return memmove(__s, &__s[v30], v28 + 1);
}

BOOL loc_fe_dctlkp_IsPunctUtf(_BOOL8 result, unsigned __int8 *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = *(v2 + 504);
      if (v3)
      {
        return *a2 && utf8_strchr(v3, a2) != 0;
      }
    }
  }

  return result;
}

uint64_t fe_dctlkp_G2PConvertToCanonicalWordUtf(unsigned int *a1, uint64_t a2, const char *a3, char *a4, unsigned int a5)
{
  v10 = 2306875399;
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_G2PConvertToCanonicalWord");
  if (a4)
  {
    if (a1[665] && strcmp(a3, a1 + 2402))
    {
      CanonMap = LoadCanonMap(a1, a2, a3);
      if ((CanonMap & 0x80000000) != 0)
      {
        return CanonMap;
      }

      __strcpy_chk();
    }

    v12 = *(a1 + 333);
    if (!v12)
    {
      v12 = *(a1 + 73);
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
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
  {
    return 2306875400;
  }

  log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Entering fe_dctlkp_LookupMultiword");
  if (!a3 || !a7 || !a8)
  {
    log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41001, 0);
    return v16;
  }

  if (*(a1 + 2660) && strcmp(a6, (a1 + 2402)))
  {
    CanonMap = LoadCanonMap(a1, a2, a6);
    if ((CanonMap & 0x80000000) != 0)
    {
      return CanonMap;
    }

    __strcpy_chk();
  }

  if (strlen(a3))
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

    while (strlen(a3) > v18);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 1632);
  if (*(a1 + 1632))
  {
    goto LABEL_21;
  }

  if (Utf8_Utf8NbrOfSymbols(a3) - 3 > 0xFFFFFFFD)
  {
    v19 = *(a1 + 1632);
LABEL_21:
    if (v19 != 2 && strlen(a3) > v18)
    {
      v20 = v18;
      do
      {
        v20 += hlp_tolower_char(&a3[v20]);
      }

      while (strlen(a3) > v20);
    }

    goto LABEL_25;
  }

  hlp_ConvertToCanonicalWordUtf(a1, a2, a1, *(a1 + 584), a3, a4);
LABEL_25:
  v21 = strlen(&a3[v18]);
  memmove(a3, &a3[v18], v21 + 1);
  *a8 = 0;
  v16 = fe_dctlkp_LookupAddonDct(a1, a2, a5, a3, a7, a8, &v23, 0);
  if ((v16 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "FE_DCTLKP", 4, 0, "Leaving fe_dctlkp_LookupMultiword");
  }

  return v16;
}

BOOL fe_dctlkp_IsPunctUtf(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if ((safeh_HandleCheck(a1, a2, 62335, 3696) & 0x80000000) != 0)
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
    v13 = a1 + 82;
    v11 = __s;
LABEL_13:
    *a4 = 0;
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    v8 = *(*a1 + 8);
    v9 = strlen(__s);
    v10 = heap_Alloc(v8, (v9 + 2));
    if (!v10)
    {
LABEL_24:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
      return 0;
    }

    v11 = v10;
    v12 = strcpy(v10, __s);
    *&v11[strlen(v12)] = 67;
    v13 = a1 + 22;
    v7 = *a4;
  }

  else
  {
    v13 = a1 + 2;
    v11 = __s;
  }

  if ((v7 - 1) < 2 || v7 == 0xFFFF)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = hlp_SearchDctName(a1, v11, "");
  if ((v15 & 0x80000000) == 0)
  {
    *(v13 + 3) = *(*(a1 + 65) + 8 * v15);
    return v13;
  }

  v16 = heap_Realloc(*(*a1 + 8), *(a1 + 68), 8 * *(a1 + 288) + 16);
  if (!v16)
  {
    goto LABEL_24;
  }

  *(a1 + 68) = v16;
  v17 = *(a1 + 288);
  *(v16 + 8 * v17) = 0;
  *(*(a1 + 68) + 8 * v17 + 8) = 0;
  if ((brk_DataOpen(*(*a1 + 24)) & 0x80000000) != 0)
  {
    return v13;
  }

  v18 = heap_Realloc(*(*a1 + 8), *(a1 + 65), 8 * *(a1 + 288) + 16);
  if (!v18)
  {
    goto LABEL_24;
  }

  *(a1 + 65) = v18;
  v19 = *(a1 + 288);
  *(v18 + 8 * v19) = 0;
  *(*(a1 + 65) + 8 * v19 + 8) = 0;
  v20 = heap_Calloc(*(*a1 + 8), 1, 144);
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = *(a1 + 288);
  *(*(a1 + 65) + 8 * v21) = v20;
  *(v13 + 3) = *(*(a1 + 65) + 8 * v21);
  inited = init_DctRom((v13 + 2), __s, *v13, *(*(a1 + 68) + 8 * v21));
  if (inited < 0)
  {
    if ((inited & 0x1FFF) == 0x14)
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 65) + 8 * *(a1 + 288)));
      v29 = *(a1 + 288);
      *(*(a1 + 65) + 8 * v29) = 0;
      brk_DataClose(*(*a1 + 24), *(*(a1 + 68) + 8 * v29));
      *(*(a1 + 68) + 8 * *(a1 + 288)) = 0;
    }
  }

  else
  {
    v23 = heap_Realloc(*(*a1 + 8), *(a1 + 64), 8 * *(a1 + 288) + 16);
    if (v23 && (*(a1 + 64) = v23, v24 = *(a1 + 288), *(v23 + 8 * v24) = 0, *(*(a1 + 64) + 8 * v24 + 8) = 0, v25 = strlen(v11), (v26 = heap_Alloc(*(*a1 + 8), (v25 + 1))) != 0))
    {
      v27 = *(a1 + 288);
      *(*(a1 + 64) + 8 * v27) = v26;
      strcpy(*(*(a1 + 64) + 8 * v27), v11);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
    }
  }

  return v13;
}

uint64_t hlp_SearchDctName(uint64_t a1, const char *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = *(a1 + 576);
  if (*(a1 + 576))
  {
    v8 = 0;
    v9 = v6;
    v10 = *(a1 + 512);
    do
    {
      v11 = *(v10 + 8 * v8);
      if (v9)
      {
        if (!strncmp(*(v10 + 8 * v8), __s, v9))
        {
          v12 = v11 + v9;
          if (*v12 == 95)
          {
            v13 = strlen(a2);
            if (!strncmp((v12 + 1), a2, v13))
            {
              return v8;
            }
          }
        }
      }

      else if (!strcmp(*(v10 + 8 * v8), a2))
      {
        return v8;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  LOWORD(v8) = -1;
  return v8;
}

const char *lowercase(const char *__s, uint64_t a2)
{
  if (*__s)
  {
    v3 = __s;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v3[v4];
      if ((v6 - 65) < 0x1A)
      {
        LOBYTE(v6) = v6 | 0x20;
      }

      *(a2 + v4) = v6;
      v4 = ++v5;
      __s = strlen(v3);
    }

    while (__s > v5);
  }

  else
  {
    v4 = 0;
  }

  *(a2 + v4) = 0;
  return __s;
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
  v15 = heap_Realloc(*(*a1 + 8), *(a1 + 496), 8 * *(a1 + 488) + 8);
  if (!v15)
  {
    goto LABEL_6;
  }

  *(a1 + 496) = v15;
  v16 = heap_Alloc(*(*a1 + 8), 640);
  v17 = *(a1 + 488);
  *(*(a1 + 496) + 8 * v17) = v16;
  v18 = *(*(a1 + 496) + 8 * v17);
  if (!v18)
  {
    goto LABEL_6;
  }

  if (a7)
  {
    v19 = strlen(a7);
    v20 = heap_Alloc(*(*a1 + 8), (v19 + 1));
    v21 = *(a1 + 496);
    v22 = *(a1 + 488);
    *(*(v21 + 8 * v22) + 632) = v20;
    v23 = *(*(v21 + 8 * v22) + 632);
    if (!v23)
    {
LABEL_6:
      log_OutPublic(*(*a1 + 32), "FE_DCTLKP", 41000, 0);
      return v7;
    }
  }

  else
  {
    v23 = *(v18 + 632);
  }

  strcpy(v23, a7);
  v24 = *(a1 + 496);
  v25 = *(a1 + 488);
  *(*(v24 + 8 * v25) + 624) = a5;
  v26 = *(v24 + 8 * v25);
  *(v26 + 72) = *(a1 + 490);
  *(v26 + 56) = a3;
  v27 = *(v24 + 8 * v25);
  *(v27 + 64) = a4;
  v28 = open_DctRom((v27 + 8), 0, v27);
  if ((v28 & 0x80000000) != 0)
  {
    return v28;
  }

  __c[0] = 0;
  v29 = *(a1 + 496);
  v30 = *(a1 + 488);
  *(*(v29 + 8 * v30) + 48) = *(a1 + 56);
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "lang", &__c[3], &__c[1], __c, *(v29 + 8 * v30));
  if (*&__c[1])
  {
    v31 = strchr(**&__c[3], __c[0]);
    if (v31)
    {
      *v31 = 0;
    }

    __strcpy_chk();
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "cfg", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v32 = strchr(**&__c[3], __c[0]);
    if (v32)
    {
      *v32 = 0;
    }

    __strcpy_chk();
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "codecomp", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v33 = **&__c[3];
    v34 = strchr(**&__c[3], __c[0]);
    if (v34)
    {
      *v34 = 0;
      v33 = **&__c[3];
    }

    v35 = atoi(v33);
    v36 = *(*(a1 + 496) + 8 * *(a1 + 488));
    *(v36 + 104) = v35;
  }

  else
  {
    v36 = *(*(a1 + 496) + 8 * *(a1 + 488));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "datacomp", &__c[3], &__c[1], __c, v36);
  if (*&__c[1])
  {
    v37 = **&__c[3];
    v38 = strchr(**&__c[3], __c[0]);
    if (v38)
    {
      *v38 = 0;
      v37 = **&__c[3];
    }

    v39 = atoi(v37);
    v40 = *(*(a1 + 496) + 8 * *(a1 + 488));
    *(v40 + 105) = v39;
  }

  else
  {
    v40 = *(*(a1 + 496) + 8 * *(a1 + 488));
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "g2pdcts", &__c[3], &__c[1], __c, v40);
  if (*&__c[1])
  {
    v41 = strchr(**&__c[3], __c[0]);
    if (v41)
    {
      *v41 = 0;
    }

    __strcpy_chk();
  }

  else
  {
    *(*(*(a1 + 496) + 8 * *(a1 + 488)) + 106) = 0;
  }

  *&__c[1] = -1;
  loc_fe_dctlkp_LookupUtf(a1, a2, "addoncfg", "tndcts", &__c[3], &__c[1], __c, *(*(a1 + 496) + 8 * *(a1 + 488)));
  if (*&__c[1])
  {
    v42 = strchr(**&__c[3], __c[0]);
    if (v42)
    {
      *v42 = 0;
    }

    __strcpy_chk();
  }

  else
  {
    *(*(*(a1 + 496) + 8 * *(a1 + 488)) + 362) = 0;
  }

  v7 = hlp_EnableAddon(a1, a2, *(*(a1 + 496) + 8 * *(a1 + 488)));
  v43 = *(a1 + 488);
  *a6 = *(*(a1 + 496) + 8 * v43);
  *(a6 + 8) = 62335;
  *(a1 + 488) = v43 + 1;
  ++*(a1 + 490);
  return v7;
}

uint64_t fe_dctlkp_UnLoadAddonDct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  result = 2306875400;
  if (a1)
  {
    LOWORD(v5) = *(a1 + 488);
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v8 = *(*(a1 + 496) + 8 * i);
        if (v8 == a3)
        {
          v9 = *(v8 + 632);
          if (v9)
          {
            heap_Free(*(*a1 + 8), v9);
            v10 = *(a1 + 496);
            *(*(v10 + 8 * i) + 632) = 0;
            v8 = *(v10 + 8 * i);
            v30 = 0;
            *__s = 0;
            if (!v8)
            {
              return 2306875400;
            }
          }

          else
          {
            v30 = 0;
            *__s = 0;
          }

          LH_itoa(*(v8 + 72), __s, 0xAu);
          v11 = *(a1 + 576);
          if (v11)
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            do
            {
              v16 = *(a1 + 512);
              v17 = *(v16 + 8 * v12);
              v18 = strlen(__s);
              if (!strncmp(v17, __s, v18))
              {
                v19 = *(*(a1 + 520) + 8 * v12);
                if (v19)
                {
                  heap_Free(*(*a1 + 8), v19);
                  *(*(a1 + 520) + 8 * v12) = 0;
                  v17 = *(*(a1 + 512) + 8 * v12);
                }

                if (v17)
                {
                  heap_Free(*(*a1 + 8), v17);
                  *(*(a1 + 512) + 8 * v12) = 0;
                }

                v20 = *(*(a1 + 544) + 8 * v12);
                if (v20)
                {
                  brk_DataClose(*(*a1 + 24), v20);
                  *(*(a1 + 544) + 8 * v12) = 0;
                }

                ++v15;
                v11 = *(a1 + 576);
                v14 = 1;
              }

              else
              {
                if (v14)
                {
                  *(v16 + 8 * v13) = v17;
                  *(*(a1 + 520) + 8 * v13) = *(*(a1 + 520) + 8 * v12);
                  *(*(a1 + 544) + 8 * v13) = *(*(a1 + 544) + 8 * v12);
                }

                ++v13;
              }

              ++v12;
            }

            while (v12 < v11);
            if (v15)
            {
              *(a1 + 576) = v11 - v15;
              v21 = heap_Realloc(*(*a1 + 8), *(a1 + 512), 8 * (v11 - v15) + 16);
              if (!v21)
              {
                return 2306875402;
              }

              *(a1 + 512) = v21;
              v22 = heap_Realloc(*(*a1 + 8), *(a1 + 520), 8 * *(a1 + 576) + 16);
              if (!v22)
              {
                return 2306875402;
              }

              *(a1 + 520) = v22;
              v23 = heap_Realloc(*(*a1 + 8), *(a1 + 544), 8 * *(a1 + 576) + 16);
              if (!v23)
              {
                return 2306875402;
              }

              *(a1 + 544) = v23;
              v24 = *(a1 + 576);
              *(*(a1 + 512) + 8 * v24) = 0;
              *(*(a1 + 512) + 8 * v24 + 8) = 0;
              *(*(a1 + 520) + 8 * v24) = 0;
              *(*(a1 + 520) + 8 * v24 + 8) = 0;
              *(*(a1 + 544) + 8 * v24) = 0;
              *(*(a1 + 544) + 8 * v24 + 8) = 0;
            }
          }

          v25 = *(*(a1 + 496) + 8 * i);
          v26 = *(v25 + 624);
          if (v26)
          {
            v27 = *(v25 + 56);
            if (v27)
            {
              brk_DataUnmap(*(*a1 + 24), v26, v27);
              v26 = *(*(*(a1 + 496) + 8 * i) + 624);
            }

            brk_DataClose(*(*a1 + 24), v26);
            v25 = *(*(a1 + 496) + 8 * i);
          }

          heap_Free(*(*a1 + 8), v25);
          v5 = *(a1 + 488) - 1;
          if (v5 > i)
          {
            v28 = i;
            do
            {
              *(*(a1 + 496) + 8 * v28) = *(*(a1 + 496) + 8 * v28 + 8);
              ++v28;
            }

            while (v5 > v28);
          }

          *(a1 + 488) = v5;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t fe_dctlkp_GetCfgParamVal(unsigned int *a1, int a2, const char *a3, char *a4, char **a5)
{
  *a5 = a4;
  *(__c + 1) = -1;
  LOBYTE(__c[0]) = 0;
  v10 = 0;
  v6 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", a3, &v10, (__c + 1), __c, 0);
  if ((v6 & 0x80000000) == 0 && *(__c + 1))
  {
    v7 = *v10;
    v8 = strchr(*v10, LOBYTE(__c[0]));
    if (v8)
    {
      *v8 = 0;
      v7 = *v10;
    }

    *a5 = v7;
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

uint64_t loc_fe_dctlkp_getTokenDef(unsigned int *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  __strcpy_chk();
  __strcat_chk();
  v10 = loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v18, &__c[3], &__c[1], __c, 0);
  if ((v10 & 0x80000000) == 0 && *&__c[1] == 1)
  {
    v11 = **&__c[3];
    v12 = strchr(**&__c[3], __c[0]);
    if (v12)
    {
      *v12 = 0;
      v11 = **&__c[3];
    }

    v13 = strlen(v11);
    v14 = *a3;
    if (v13 < 0x100)
    {
      v15 = heap_Calloc(*(v14 + 8), v13 + 1, 1);
      *a6 = v15;
      if (v15)
      {
        strcpy(v15, **&__c[3]);
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

  return v10;
}

char *heap_strdup(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = heap_Alloc(a1, (v4 + 1));
  if (result)
  {

    return strcpy(result, __s);
  }

  return result;
}

BOOL hlp_getUtf8CanMap(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!*(a4 + 4 * *a5))
  {
    return 0;
  }

  v17 = 0;
  v15 = 0;
  *a6 = 0;
  __strcpy_chk();
  __strcat_chk();
  __strcat_chk();
  if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v18, &v17, &v16, &v15, 0) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!v16)
  {
    __strcpy_chk();
    if ((loc_fe_dctlkp_LookupUtf(a1, a2, "fecfg", v18, &v17, &v16, &v15, 0) & 0x80000000) != 0 || !v16)
    {
      return 0;
    }
  }

  if (*a6)
  {
    return 1;
  }

  for (i = 0; i < v16; ++i)
  {
    v11 = *(v17 + 8 * i);
    v12 = utf8_determineUTF8CharLength(*v11);
    v11[utf8_determineUTF8CharLength(*v11)] = 0;
    v13 = strlen(v11);
    if (!strncmp(v11, a5, v13))
    {
      strcpy(a6, &v11[v12 + 1]);
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

uint64_t WordScanner_ResetFrom(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2 || (v3 = a2, utf8_BelongsToSet(1u, *(a1 + 8), a2, v2)))
  {
LABEL_3:

    return kaldi::OffsetFileInputImpl::MyType("u16From");
  }

  PreviousUtf8OffsetLimit = utf8_GetPreviousUtf8OffsetLimit(*(a1 + 8), v3, *(a1 + 16));
  v7 = *(a1 + 16);
  if (PreviousUtf8OffsetLimit < v7)
  {
    if (!utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
    {
      goto LABEL_3;
    }

    v7 = *(a1 + 16);
  }

  for (*(a1 + 18) = v3; v7 > v3; v7 = *(a1 + 16))
  {
    if (utf8_BelongsToSet(1u, *(a1 + 8), v3, v7))
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
      *(a1 + 16) = strlen(a2);

      return WordScanner_ResetFrom(a1, a3);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("szString");
    }
  }

  return result;
}

uint64_t WordScanner_NextWord(uint64_t a1)
{
  NextUtf8OffsetLimit = *(a1 + 20);
  for (i = *(a1 + 16); i > NextUtf8OffsetLimit; i = *(a1 + 16))
  {
    v4 = utf8_BelongsToSet(1u, *(a1 + 8), NextUtf8OffsetLimit, i);
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
    if (utf8_BelongsToSet(1u, *(a1 + 8), NextUtf8OffsetLimit, i))
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

    v8 = utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7);
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
  while (!utf8_BelongsToSet(1u, *(a1 + 8), PreviousUtf8OffsetLimit, v7))
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
  v8 = 0;
  *&v5 = heap_Alloc;
  *(&v5 + 1) = heap_Calloc;
  v6 = heap_Realloc;
  v7 = heap_Free;
  if ((InitRsrcFunction(a2, a3, &v8) & 0x80000000) == 0)
  {
    return OOCAllocator_Con(a1, &v5, *(v8 + 8));
  }

  err_GenerateErrorInternalMsg("InitRsrcFunction");
  return 9;
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
  kaldi::nnet1::Component::IsUpdatable((a1 + 32));

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
    if (CfgParamValueString || !v10)
    {
      if (!v10)
      {
        return CfgParamValueString;
      }
    }

    else
    {
      CfgParamValueString = 0;
      if (*v10)
      {
        v8 = atof(v10);
        *a3 = v8;
      }
    }

    heap_Free(*(*(a1 + 24) + 8), v7);
    return CfgParamValueString;
  }

  return kaldi::OffsetFileInputImpl::MyType("pVal");
}

uint64_t Params_GetCfgParamValueString(uint64_t a1, _BYTE *a2, char **a3)
{
  v18 = 0;
  v19 = 0;
  v17 = -1;
  *&__c[1] = 0;
  __c[0] = 0;
  if (!a2 || !*a2)
  {
    v12 = "szParamName";
LABEL_17:
    ErrorInternalMsg = kaldi::OffsetFileInputImpl::MyType(v12);
LABEL_18:
    v7 = ErrorInternalMsg;
    goto LABEL_19;
  }

  if (!a3)
  {
    v12 = "pszParamValue";
    goto LABEL_17;
  }

  *a3 = 0;
  if ((objc_GetObject(*(*(a1 + 24) + 48), "FE_DCTLKP", &v19) & 0x80000000) != 0)
  {
    v15 = "objc_GetObject";
LABEL_26:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v15);
    goto LABEL_18;
  }

  v6 = *(a1 + 72);
  if (!strcmp(v6, "fecfg"))
  {
    goto LABEL_9;
  }

  if (((*(v19[1] + 72))(v19[2], v19[3], v6, &__c[1]) & 0x80000000) != 0)
  {
    v15 = "pIDctlkp->pfQueryDictExists";
    goto LABEL_26;
  }

  if (!*&__c[1])
  {
    v7 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  v17 = 1;
  v6 = *(a1 + 72);
LABEL_9:
  if (((*(v19[1] + 96))(v19[2], v19[3], v6, a2, &v18, &v17, __c) & 0x80000000) != 0)
  {
    v15 = "pIDctlkp->pfLookupUtf";
    goto LABEL_26;
  }

  v7 = 0;
  if (v17 == 1 && v18)
  {
    v8 = *v18;
    v9 = strchr(*v18, __c[0]);
    if (v9)
    {
      *v9 = 0;
      v8 = *v18;
    }

    v10 = strlen(v8);
    v11 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v10 + 1));
    *a3 = v11;
    if (v11)
    {
      strcpy(v11, *v18);
      v7 = 0;
      goto LABEL_19;
    }

    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_18;
  }

LABEL_19:
  if (v19)
  {
    objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
  }

  return v7;
}

uint64_t Params_GetCfgParamValueInteger(uint64_t a1, _BYTE *a2, int a3, int *a4)
{
  v9 = 0;
  if (a4)
  {
    *a4 = a3;
    CfgParamValueString = Params_GetCfgParamValueString(a1, a2, &v9);
    v7 = v9;
    if (CfgParamValueString || !v9)
    {
      if (!v9)
      {
        return CfgParamValueString;
      }
    }

    else
    {
      CfgParamValueString = 0;
      if (*v9)
      {
        *a4 = atoi(v9);
      }
    }

    heap_Free(*(*(a1 + 24) + 8), v7);
    return CfgParamValueString;
  }

  return kaldi::OffsetFileInputImpl::MyType("pVal");
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
      bzero(v14 + 8 * v10, 8 * (v12 - v10 + 19) + 8);
    }

    *(a1 + 32) = v15;
    *(a1 + 40) = v13;
  }

  v16 = strlen(__s);
  v14 = __StringList_hlpDuplicateSubString(a1, __s, 0, v16);
  if (v14)
  {
    v17 = v14;
    v18 = *(a1 + 32) + 8 * a2;
    memmove((v18 + 8), v18, 8 * (v10 - a2));
    result = 0;
    *(*(a1 + 32) + 8 * a2) = v17;
    return result;
  }

LABEL_15:

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(v14);
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
  v6 = strlen(a2);
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
        v14 = __StringList_hlpDuplicateSubString(a1, a2, v15, v16);
        *(*(a1 + 32) + 8 * v17) = v14;
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
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v14);
    if (IsUpdatable)
    {
      StringList_Reset(a1);
    }
  }

  return IsUpdatable;
}

char *__StringList_hlpDuplicateSubString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - a3;
  result = heap_Calloc(*(*(a1 + 24) + 8), 1, a4 - a3 + 1);
  if (result)
  {

    return strncpy(result, (a2 + a3), v6);
  }

  return result;
}

uint64_t StringList_FromSplitStringInUtf8(uint64_t a1, char *__s, int a3, char *__src, const char *a5, _WORD *a6)
{
  v11 = *(a1 + 32);
  if (v11 && ((v12 = *(a1 + 64), v12 >= 7) ? (v13 = v12 == 0xFFFF) : (v13 = 1), !v13 || (StringList_Reset(a1), (v11 = *(a1 + 32)) != 0)))
  {
    v14 = 0;
    do
    {
      v15 = v14;
    }

    while (*(v11 + 8 * v14++));
    v17 = 0;
  }

  else
  {
    v15 = 0;
    v17 = 1;
  }

  if (a3 == 0xFFFF)
  {
    LOWORD(a3) = strlen(__s);
  }

  if (v15 < a3)
  {
    v18 = *(*(a1 + 24) + 8);
    v19 = 8 * a3;
    if (v17)
    {
      v20 = heap_Alloc(v18, v19 + 8);
      if (!v20)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v20 = heap_Realloc(v18, v11, v19 + 8);
      if (!v20)
      {
LABEL_42:

        return kaldi::nnet1::UpdatableComponent::IsUpdatable(v20);
      }
    }

    v21 = v15;
    do
    {
      *(v20 + v21++) = 0;
    }

    while (v21 <= a3);
    *(a1 + 32) = v20;
    *(a1 + 40) = a3 + 1;
    v22 = v15;
    while (1)
    {
      v20 = heap_Calloc(*(*(a1 + 24) + 8), 1, 7);
      *(*(a1 + 32) + 8 * v22) = v20;
      if (!*(*(a1 + 32) + 8 * v22))
      {
        goto LABEL_42;
      }

      if (a3 == ++v22)
      {
        *(a1 + 64) = 7;
        break;
      }
    }
  }

  LOWORD(v23) = 0;
  if (*__s && a3)
  {
    v30 = a6;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = Utf8_LengthInBytes(&__s[v24], 1);
      if (a5 && !strncmp(&__s[v24], " ", v26))
      {
        strcpy(*(*(a1 + 32) + 8 * v23), a5);
      }

      else
      {
        strncpy(*(*(a1 + 32) + 8 * v23), &__s[v24], v26);
        *(*(*(a1 + 32) + 8 * v23) + v26) = 0;
      }

      ++v23;
      v25 += v26;
      if (strlen(__s) <= v25)
      {
        break;
      }

      v24 = v25;
    }

    while (v23 < a3);
    a6 = v30;
  }

  *a6 = v23;
  if (v23 < a3)
  {
    v27 = v23;
    do
    {
      v28 = *(*(a1 + 32) + 8 * v27);
      if (__src)
      {
        strcpy(v28, __src);
      }

      else
      {
        *v28 = 0;
      }

      ++v27;
    }

    while (a3 != v27);
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

uint64_t StringList_GetIndex(uint64_t a1, char *__s2)
{
  if (__s2 && (v2 = *(a1 + 32), (v3 = *v2) != 0))
  {
    v5 = 0;
    while (strcmp(v3, __s2))
    {
      v3 = v2[++v5];
      if (!v3)
      {
        return -1;
      }
    }
  }

  else
  {
    return -1;
  }

  return v5;
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
  memmove(v8, (v8 + 8), 8 * (v6 + ~a2));
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
    *(a1 + 136) = 0;
    *(a1 + 152) = 0;
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *a1 = &__NN;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    *(a1 + 32) = a4;
    *(a1 + 40) = a5;
    *(a1 + 96) = 0;
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

    __NN_CGN_Deinitialize(v1);
    __NN_TN_Deinitialize(v1);
    __NN_CLM_Deinitialize(v1);
    kaldi::nnet1::Component::IsUpdatable((v1 + 7));

    return Object_Des();
  }

  return result;
}

uint64_t __NN_CGN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 120);
  if (*(result + 120))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 128) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 128) + 8 * v3) = 0;
        v2 = *(v1 + 120);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 128));
      *(v1 + 128) = 0;
    }
  }

  *(v1 + 120) = 0;
  return result;
}

uint64_t __NN_TN_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (*(result + 136))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 144) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 144) + 8 * v3) = 0;
        v2 = *(v1 + 136);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 144));
      *(v1 + 144) = 0;
    }
  }

  *(v1 + 136) = 0;
  return result;
}

uint64_t __NN_CLM_Deinitialize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 152);
  if (*(result + 152))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 160) + 8 * v3);
      if (v4)
      {
        result = OOC_PlacementDeleteObject(v1 + 56, v4);
        *(*(v1 + 160) + 8 * v3) = 0;
        v2 = *(v1 + 152);
      }

      ++v3;
    }

    while (v3 < v2);
    if (v2)
    {
      result = OOCAllocator_Free(v1 + 56, *(v1 + 160));
      *(v1 + 160) = 0;
    }
  }

  *(v1 + 152) = 0;
  return result;
}

uint64_t NN_CGN_Predict(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, void *a6, int *a7)
{
  v13 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v13 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v15 = *(a1 + 120);
      if (!*(a1 + 120))
      {
        goto LABEL_9;
      }

      v16 = *(a1 + 128);
      while (1)
      {
        v17 = *v16;
        if (*v16)
        {
          if (!strcmp(a3, *(v17 + 120)))
          {
            break;
          }
        }

        ++v16;
        if (!--v15)
        {
          goto LABEL_9;
        }
      }

      result = CGN_Predict(v17, a4, a5, a6, a7);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a7 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
    }
  }

  return result;
}

BOOL NN_IsInitializedForCurrent(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (__NN_GetIdentificationForCurrent(a1, __s1))
  {
    return 0;
  }

  v3 = *(a1 + 96);
  return v3 && strcmp(__s1, v3) == 0;
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

  v5 = *(a1 + 120);
  if (!*(a1 + 120))
  {
    return 0;
  }

  for (i = *(a1 + 128); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
}

uint64_t NN_CLM_Predict(uint64_t a1, int a2, const char *a3, void *a4, void *a5, void *a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v16 = safeh_HandleCheck(a1, a2, 1067, 8);
  result = 2706382856;
  if ((v16 & 0x80000000) == 0 && a1)
  {
    if (NN_IsInitializedForCurrent(a1))
    {
      v18 = *(a1 + 152);
      if (!*(a1 + 152))
      {
        goto LABEL_9;
      }

      v19 = *(a1 + 160);
      while (1)
      {
        v20 = *v19;
        if (*v19)
        {
          if (!strcmp(a3, *(v20 + 120)))
          {
            break;
          }
        }

        ++v19;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      result = CLM_Predict(v20, a4, a5, a6, *a7, a8, a9);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a7 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
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

  v5 = *(a1 + 152);
  if (!*(a1 + 152))
  {
    return 0;
  }

  for (i = *(a1 + 160); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
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

uint64_t NN_InitializeForCurrent(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
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

  __NN_CGN_Deinitialize(a1);
  __NN_TN_Deinitialize(a1);
  __NN_CLM_Deinitialize(a1);
  IdentificationForCurrent = __NN_GetIdentificationForCurrent(a1, __s);
  v11 = IdentificationForCurrent;
  if (!IdentificationForCurrent)
  {
    v8 = strlen(__s);
    v9 = OOCAllocator_Malloc((a1 + 7), v8 + 1, &v11);
    a1[12] = v9;
    v2 = v11;
    if (v11)
    {
      return v2;
    }

    strcpy(v9, __s);
    v12 = 0;
    IdentificationForCurrent = PNEW_ToBeSpelled_Con((a1 + 7), a1[1], a1[2], a1[4], a1[5], a1 + 13);
    if (!IdentificationForCurrent)
    {
      v2 = ToBeSpelled_LoadModel(*v5, &v12);
      if (v2 || !v12)
      {
        OOC_PlacementDeleteObject((a1 + 7), *v5);
        *v5 = 0;
        v11 = v2;
        if (v2)
        {
          return v2;
        }
      }

      else
      {
        v11 = 0;
      }

      IdentificationForCurrent = __NN_G2POneWord_Initialize(a1);
      v11 = IdentificationForCurrent;
      if (!IdentificationForCurrent)
      {
        IdentificationForCurrent = __NN_CGN_Initialize(a1);
        v11 = IdentificationForCurrent;
        if (!IdentificationForCurrent)
        {
          IdentificationForCurrent = __NN_TN_Initialize(a1);
          v11 = IdentificationForCurrent;
          if (!IdentificationForCurrent)
          {
            return __NN_CLM_Initialize(a1);
          }
        }
      }
    }
  }

  return IdentificationForCurrent;
}

uint64_t __NN_GetIdentificationForCurrent(uint64_t a1, char *a2)
{
  __s2 = 0;
  __src = 0;
  v7 = 0;
  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", &__src) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &__s2) & 0x80000000) != 0)
  {
    return err_GenerateErrorInternalMsg("paramc_ParamGetStr");
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "voice", &v7) & 0x80000000) != 0)
  {
    v7 = 0;
  }

  v4 = strcpy(a2, __src);
  *&a2[strlen(v4)] = 95;
  strcat(a2, __s2);
  if (v7)
  {
    *&a2[strlen(a2)] = 95;
    strcat(a2, v7);
  }

  if (*a2)
  {
    v5 = 0;
    do
    {
      a2[v5] = __tolower(a2[v5]);
      ++v5;
    }

    while (v5 < strlen(a2));
  }

  return 0;
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
      *(a1 + 120) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 128) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 120))
          {
            for (i = 0; i < *(a1 + 120); ++i)
            {
              ErrorInternalMsg = PNEW_CGN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 128) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 128) + 8 * i);
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

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 128) + 8 * i));
                *(*(a1 + 128) + 8 * i) = 0;
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
      *(a1 + 136) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 144) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 136))
          {
            for (i = 0; i < *(a1 + 136); ++i)
            {
              ErrorInternalMsg = PNEW_TN_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 144) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 144) + 8 * i);
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

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 144) + 8 * i));
                *(*(a1 + 144) + 8 * i) = 0;
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
      *(a1 + 152) = CountStrings;
      if (CountStrings)
      {
        *(a1 + 160) = OOCAllocator_Malloc(a1 + 56, 8 * CountStrings, &ErrorInternalMsg);
        if (!ErrorInternalMsg)
        {
          if (*(a1 + 152))
          {
            for (i = 0; i < *(a1 + 152); ++i)
            {
              ErrorInternalMsg = PNEW_CLM_Con(a1 + 56, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), (*(a1 + 160) + 8 * i));
              if (ErrorInternalMsg)
              {
                break;
              }

              v5 = *(*(a1 + 160) + 8 * i);
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

                OOC_PlacementDeleteObject(a1 + 56, *(*(a1 + 160) + 8 * i));
                *(*(a1 + 160) + 8 * i) = 0;
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
  kaldi::nnet1::Component::IsUpdatable(v16);
  return v11;
}

uint64_t PNEW_NN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 168, &v14);
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
    if (NN_IsInitializedForCurrent(a1))
    {
      v18 = *(a1 + 136);
      if (!*(a1 + 136))
      {
        goto LABEL_9;
      }

      v19 = *(a1 + 144);
      while (1)
      {
        v20 = *v19;
        if (*v19)
        {
          if (!strcmp(a3, *(v20 + 120)))
          {
            break;
          }
        }

        ++v19;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      result = TN_Predict(v20, a4, a5, v11, v10, a8, a9);
      if (result)
      {
        result = LH_ERROR_to_VERROR(result);
        if ((result & 0x1FFF) == 7)
        {
LABEL_9:
          result = 0;
          *a9 = 0;
        }
      }
    }

    else
    {
      return 2706382848;
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

  v5 = *(a1 + 136);
  if (!*(a1 + 136))
  {
    return 0;
  }

  for (i = *(a1 + 144); ; ++i)
  {
    v7 = *i;
    if (*i)
    {
      if (!strcmp(a3, *(v7 + 120)))
      {
        break;
      }
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return Model_QueryExists(v7);
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
  kaldi::nnet1::Component::IsUpdatable((a1 + 56));

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
  v15 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 24))(a1, a3);
  if (result)
  {
    return result;
  }

  if (!*a3)
  {
    return 0;
  }

  v12 = "";
  *v13 = 0;
  memset(v14, 0, sizeof(v14));
  v7 = heap_Calloc(*(*(a1 + 48) + 8), 1, 1024);
  *(a1 + 96) = v7;
  if (!v7)
  {
    kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    goto LABEL_14;
  }

  v8 = v7;
  if (strchr(a2, 58))
  {
    strcpy(v8, a2);
    goto LABEL_14;
  }

  if ((paramc_ParamGetStr(*(*(a1 + 48) + 40), "langcode", v13) & 0x80000000) != 0 || (paramc_ParamGetStr(*(*(a1 + 48) + 40), "fecfg", &v12) & 0x80000000) != 0)
  {
    v9 = "paramc_ParamGetStr";
  }

  else
  {
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    __strcat_chk();
    if ((brokeraux_ComposeBrokerString(*(a1 + 48), v14, 1, 1, *v13, 0, 0, *(a1 + 96), 0x400uLL) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    v9 = "brokeraux_ComposeBrokerString";
  }

  err_GenerateErrorInternalMsg(v9);
LABEL_14:
  if ((fi_init(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), (a1 + 104), 0, *(a1 + 96), "FINN", 1, 0) & 0x80000000) != 0)
  {
    return err_GenerateErrorInternalMsg("fi_init");
  }

  v10 = **(a1 + 104);
  v11 = v10[13];
  *(a1 + 112) = v10[14];
  if (v11 >= 2)
  {
    *(a1 + 116) = v10[15];
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

      memcpy((v13 + 4 * *(a1 + 152) * v15++), *(a1 + 160), 4 * *(a1 + 152));
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
    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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

        return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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
    if (!strcmp(v9, __s2))
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

uint64_t G2POneWord_Predict(uint64_t a1, char *a2, void *a3)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if (!a2 || !*a2)
  {
    v8 = 0;
LABEL_8:
    IsUpdatable = 0;
    *a3 = "";
    goto LABEL_9;
  }

  v40 = 0;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v6 = StringList_Con(v38, *(a1 + 32), *(a1 + 40));
  if (v6 || (v6 = StringList_FromSplitStringInUtf8(v38, a2, 0xFFFF, 0, 0, &v40), v6))
  {
    IsUpdatable = v6;
    StringList_Des(v38);
    v8 = 0;
LABEL_6:
    log_OutText(*(*(a1 + 48) + 32), "NN_G2PONEWORD", 0, 0, "%s : Error extracting features", a2);
    goto LABEL_9;
  }

  v10 = strlen(a2);
  v11 = heap_Alloc(*(*(a1 + 48) + 8), v10 + 1);
  v8 = v11;
  if (v11 && (*v11 = 0, v11 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 132)), (v37 = v11) != 0))
  {
    v13 = v11;
    v14 = *(a1 + 132);
    if (v14)
    {
      v15 = 0;
      LOWORD(v12) = *(a1 + 136);
      v12 = LODWORD(v12);
      do
      {
        *(v11 + v15++) = v12;
      }

      while (v14 > v15);
    }

    if (v40)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = StringList_GetAt(v38, v17);
        Index = StringList_GetIndex(*(a1 + 120), v18);
        if (Index != 0xFFFF)
        {
          v20 = Index;
          strcat(v8, v18);
          v12 = v20;
          *(v13 + v16++) = v20;
          if (*(a1 + 132) - 1 == v16)
          {
            break;
          }
        }

        ++v17;
      }

      while (v40 > v17);
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    LOWORD(v12) = *(a1 + 138);
    *(v13 + v21) = LODWORD(v12);
    StringList_Des(v38);
  }

  else
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(v11);
    StringList_Des(v38);
    if (IsUpdatable)
    {
      goto LABEL_6;
    }
  }

  if (!*v8)
  {
    goto LABEL_8;
  }

  if ((fi_predict(*(a1 + 104), &v37, 1, &v36) & 0x80000000) != 0)
  {
    v27 = "nn_g2poneword:fi_predict";
LABEL_41:
    ErrorInternalMsg = err_GenerateErrorInternalMsg(v27);
LABEL_42:
    IsUpdatable = ErrorInternalMsg;
    goto LABEL_9;
  }

  if ((fi_shape_get_size((**(a1 + 104) + 92), &v35) & 0x80000000) != 0)
  {
    v27 = "nn_g2poneword:fi_shape_get_size";
    goto LABEL_41;
  }

  if (v35)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(v36 + 4 * v22);
      if (*(a1 + 138) == v24)
      {
        break;
      }

      v25 = StringList_GetAt(*(a1 + 120), v24);
      if (v25)
      {
        v23 += strlen(v25);
      }

      ++v22;
    }

    while (v22 < v35);
    v26 = v23 + 1;
  }

  else
  {
    v26 = 1;
  }

  v29 = heap_Realloc(*(*(a1 + 48) + 8), *(a1 + 144), v26);
  *(a1 + 144) = v29;
  if (!a3)
  {
    ErrorInternalMsg = kaldi::nnet1::UpdatableComponent::IsUpdatable(v29);
    goto LABEL_42;
  }

  *v29 = 0;
  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
      v31 = *(v36 + 4 * i);
      if (*(a1 + 138) == v31)
      {
        break;
      }

      v32 = StringList_GetAt(*(a1 + 120), v31);
      if (v32)
      {
        strcat(*(a1 + 144), v32);
      }
    }
  }

  *a3 = *(a1 + 144);
  v33 = strcmp(a2, v8);
  v34 = *(*(a1 + 48) + 32);
  if (v33)
  {
    log_OutText(v34, "NN_G2PONEWORD", 4, 0, "(warning: word was [%s]) [%s]  --> [%s]");
  }

  else
  {
    log_OutText(v34, "NN_G2PONEWORD", 4, 0, "[%s] --> [%s]");
  }

  IsUpdatable = 0;
LABEL_9:
  if (v37)
  {
    heap_Free(*(*(a1 + 48) + 8), v37);
    v37 = 0;
  }

  if (v8)
  {
    heap_Free(*(*(a1 + 48) + 8), v8);
  }

  return IsUpdatable;
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

  v5 = __s && strlen(__s) == 1 ? *__s : 124;
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
  v7 = strlen(__s);
  v8 = heap_Alloc(v6, v7 + 1);
  *(a1 + 120) = v8;
  if (v8 && (strcpy(v8, __s), v9 = strlen(__s), (v8 = heap_Alloc(*(*(a1 + 48) + 8), v9 + 8)) != 0))
  {
    v10 = v8;
    *v8 = 0x5F6E67635F6E6ELL;
    strcat(v8, __s);
    v11 = _Model_Load(a1, v10, a3);
    heap_Free(*(*(a1 + 48) + 8), v10);
    return v11;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
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
  kaldi::nnet1::Component::IsUpdatable(v9);
  return Allocator;
}

uint64_t CGN_Predict(uint64_t a1, const char *a2, uint64_t a3, void *a4, int *a5)
{
  __s = 0;
  v26 = 0;
  v10 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 184) * *(a1 + 186));
  v24 = v10;
  if (!v10)
  {
    IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_16:
    ErrorInternalMsg = IsUpdatable;
    goto LABEL_17;
  }

  v11 = v10;
  IsUpdatable = PNEW_WordScanner_ConFrom(a1 + 56, a2, a3, &v26);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 194);
  v14 = *(a1 + 186);
  IsUpdatable = __CGN_CloneWord(a1, v26, &__s);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  v15 = (v11 + 4 * v14 * v13);
  IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v15);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v16 = 0;
    do
    {
      v15 += 4 * *(a1 + 186);
      if (WordScanner_NextWord(v26))
      {
        IsUpdatable = __CGN_CloneWord(a1, v26, &__s);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }

        IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v15);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v15, &unk_1C37BD390, 4 * *(a1 + 186));
      }

      ++v16;
      v17 = *(a1 + 194);
    }

    while (v16 < v17);
    v11 = v24;
  }

  else
  {
    v17 = 0;
  }

  v21 = *(a1 + 186);
  IsUpdatable = WordScanner_ResetFrom(v26, a3);
  if (IsUpdatable)
  {
    goto LABEL_16;
  }

  if (*(a1 + 194))
  {
    v22 = 0;
    v23 = (v11 + 4 * v17 * v21);
    while (1)
    {
      v23 -= 4 * *(a1 + 186);
      if (WordScanner_PrevWord(v26))
      {
        IsUpdatable = __CGN_CloneWord(a1, v26, &__s);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }

        IsUpdatable = __CGN_FeaturesCurrent(a1, __s, v23);
        if (IsUpdatable)
        {
          goto LABEL_16;
        }
      }

      else if (*(a1 + 186))
      {
        memset_pattern16(v23, &unk_1C37BD390, 4 * *(a1 + 186));
      }

      ErrorInternalMsg = 0;
      if (++v22 >= *(a1 + 194))
      {
        goto LABEL_17;
      }
    }
  }

  ErrorInternalMsg = 0;
LABEL_17:
  if (v26)
  {
    OOC_PlacementDeleteObject(a1 + 56, v26);
  }

  if (__s)
  {
    heap_Free(*(*(a1 + 48) + 8), __s);
  }

  if (!ErrorInternalMsg)
  {
    if ((fi_predict(*(a1 + 104), &v24, *(a1 + 184), a4) & 0x80000000) != 0)
    {
      v19 = "fi_predict";
    }

    else
    {
      if ((fi_shape_get_size((**(a1 + 104) + 92), a5) & 0x80000000) == 0)
      {
        ErrorInternalMsg = 0;
        goto LABEL_28;
      }

      v19 = "fi_shape_get_size";
    }

    ErrorInternalMsg = err_GenerateErrorInternalMsg(v19);
  }

LABEL_28:
  if (v24)
  {
    heap_Free(*(*(a1 + 48) + 8), v24);
  }

  return ErrorInternalMsg;
}

uint64_t _CGN_PostFIDeinit(void *a1)
{
  *(a1 + 196) = 0;
  *(a1 + 190) = 0;
  v2 = a1[26];
  if (v2)
  {
    heap_Free(*(a1[6] + 8), v2);
  }

  a1[26] = 0;
  return 0;
}

uint64_t _CGN_PostFIInit(uint64_t a1)
{
  if ((nn_word_lkp_GetInterface(1u, (a1 + 128)) & 0x80000000) != 0)
  {
    v11 = "nn_word_lkp_GetInterface";
  }

  else
  {
    v2 = *(*(a1 + 128) + 16);
    NullHandle = safeh_GetNullHandle();
    if ((v2(NullHandle) & 0x80000000) == 0)
    {
      v4 = *(*(a1 + 128) + 16);
      v5 = safeh_GetNullHandle();
      if ((v4(v5) & 0x80000000) == 0)
      {
        v13 = 0;
        if (((*(*(a1 + 128) + 40))(*(a1 + 136), *(a1 + 144), &v13) & 0x80000000) == 0)
        {
          if (v13 != *(a1 + 196))
          {
            v12 = "word embedding dimension";
            return err_GenerateErrorInternalMsg(v12);
          }

          if (((*(*(a1 + 128) + 40))(*(a1 + 152), *(a1 + 160), &v13) & 0x80000000) == 0)
          {
            if (v13 == *(a1 + 198))
            {
              v6 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 196));
              *(a1 + 168) = v6;
              if (!v6)
              {
                return kaldi::nnet1::UpdatableComponent::IsUpdatable(v6);
              }

              v6 = heap_Alloc(*(*(a1 + 48) + 8), 4 * *(a1 + 198));
              *(a1 + 176) = v6;
              if (!v6)
              {
                return kaldi::nnet1::UpdatableComponent::IsUpdatable(v6);
              }

              v7 = (2 * *(a1 + 194)) | 1;
              *(a1 + 184) = v7;
              if (*(a1 + 112) == v7)
              {
                v8 = strlen(*(a1 + 208));
                *(a1 + 188) = v8;
                v9 = *(a1 + 196) + (*(a1 + 192) + *(a1 + 190)) * *(a1 + 198);
                *(a1 + 186) = v9;
                if (*(a1 + 200))
                {
                  v9 += v8 + 2;
                  *(a1 + 186) = v9;
                }

                if (*(a1 + 116) == v9)
                {
                  return 0;
                }

                v12 = "inshape dimension 2";
              }

              else
              {
                v12 = "inshape dimension 1";
              }
            }

            else
            {
              v12 = "char embedding dimension";
            }

            return err_GenerateErrorInternalMsg(v12);
          }
        }

        v12 = "__pIWordLkp->pfGetVectorLength";
        return err_GenerateErrorInternalMsg(v12);
      }
    }

    v11 = "__pIWordLkp->pfObjOpen";
  }

  return err_GenerateErrorInternalMsg(v11);
}

uint64_t _CGN_PreFIDeinit(void *a1)
{
  if (a1[16])
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[17], a1[18], NullHandle, v3))
    {
      (*(a1[16] + 24))(a1[17], a1[18]);
      a1[17] = safeh_GetNullHandle();
      a1[18] = v4;
    }

    v5 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[19], a1[20], v5, v6))
    {
      (*(a1[16] + 24))(a1[19], a1[20]);
      a1[19] = safeh_GetNullHandle();
      a1[20] = v7;
    }

    a1[16] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    heap_Free(*(a1[6] + 8), v8);
  }

  v9 = a1[22];
  a1[21] = 0;
  if (v9)
  {
    heap_Free(*(a1[6] + 8), v9);
  }

  *(a1 + 182) = 0;
  a1[22] = 0;
  return 0;
}

uint64_t _CGN_PreFIInit(uint64_t a1, _DWORD *a2)
{
  v11 = 0;
  *v12 = 0;
  __s1 = 0;
  *a2 = 0;
  ParamValueUnsignedShort = PNEW_Params_Con(a1 + 56, *(a1 + 32), *(a1 + 40), "fecfg", v12);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "concatenatedLeftChars", 0, (a1 + 190), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "concatenatedRightChars", 3, (a1 + 192), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "wordContextWindow", 5, (a1 + 194), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "wordEmbeddingDimension", 0, (a1 + 196), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_GetParamValueUnsignedShort(a1, *v12, "charEmbeddingDimension", 0, (a1 + 198), &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTFeatureEnabled", &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v12, v11, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  *(a1 + 200) = 1;
  v5 = __s1;
  if (__s1)
  {
    if (!strcmp(__s1, "False"))
    {
      *(a1 + 200) = 0;
    }

    heap_Free(*(*(a1 + 48) + 8), v5);
  }

  ParamValueUnsignedShort = __CGN_FullParamName(a1, "wordPUNCTLoadList", &v11);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  ParamValueUnsignedShort = Params_GetCfgParamValueString(*v12, v11, &__s1);
  if (ParamValueUnsignedShort)
  {
    goto LABEL_15;
  }

  v8 = __s1;
  if (!__s1)
  {
    v9 = heap_Alloc(*(*(a1 + 48) + 8), 1);
    __s1 = v9;
    if (!v9)
    {
      ParamValueUnsignedShort = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
LABEL_15:
      v6 = ParamValueUnsignedShort;
      goto LABEL_16;
    }

    *v9 = 0;
    v8 = __s1;
  }

  v6 = 0;
  *(a1 + 208) = v8;
  *a2 = 1;
LABEL_16:
  if (*v12)
  {
    OOC_PlacementDeleteObject(a1 + 56, *v12);
  }

  if (v11)
  {
    heap_Free(*(*(a1 + 48) + 8), v11);
  }

  return v6;
}

uint64_t __CGN_GetParamValueUnsignedShort(uint64_t a1, uint64_t a2, char *__s, int a4, _WORD *a5, uint64_t *a6)
{
  result = __CGN_FullParamName(a1, __s, a6);
  if (!result)
  {
    v11 = 0;
    result = Params_GetCfgParamValueInteger(a2, *a6, a4, &v11);
    if (!result)
    {
      *a5 = v11;
    }
  }

  return result;
}

uint64_t __CGN_FullParamName(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  v8 = strlen(__s);
  v9 = strlen(*(a1 + 120));
  v10 = heap_Realloc(v6, v7, v8 + v9 + 9);
  if (v10)
  {
    v11 = v10;
    *v10 = 0x5F6E67635F6E6ELL;
    v12 = strcat(v10, *(a1 + 120));
    *&v11[strlen(v12)] = 95;
    strcat(v11, __s);
    *a3 = v11;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t PNEW_CGN_Con(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 216, &v14);
  result = v14;
  if (!v14)
  {
    result = CGN_Con(v12, a2, a3, a4, a5);
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

uint64_t __CGN_CloneWord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = WordScanner_WordLen(a2);
  v7 = *(*(a1 + 48) + 8);
  v8 = v6;
  v9 = heap_Realloc(v7, *a3, v6 + 1);
  if (v9)
  {
    v10 = strncpy(v9, (*(a2 + 8) + *(a2 + 18)), v8);
    v10[v8] = 0;
    *a3 = v10;
    return 0;
  }

  else
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
  }
}

uint64_t __CGN_FeaturesCurrent(uint64_t a1, char *__s, char *a3)
{
  v6 = __s;
  do
  {
    if (!__CGN_IsPunct(v6))
    {
      v8 = strlen(__s);
      PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v8);
      v10 = v8;
      if (__CGN_IsPunct(&__s[PreviousUtf8Offset]))
      {
        v11 = PreviousUtf8Offset;
        do
        {
          v10 = PreviousUtf8Offset;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v11);
          v11 = PreviousUtf8Offset;
        }

        while (__CGN_IsPunct(&__s[PreviousUtf8Offset]));
      }

      i = 0;
      if (*(a1 + 200))
      {
        v12 = &a3[4 * *(a1 + 186) + -4 * (*(a1 + 188) + 2)];
        bzero(v12, 4 * (*(a1 + 188) + 2));
        i = 1;
        if (v6 > __s)
        {
          v13 = __s;
          do
          {
            __CGN_InPunctList(a1, v13, v12, &i);
            v14 = utf8_determineUTF8CharLength(*v13);
            if (i)
            {
              *&v12[4 * *(a1 + 188)] = 1065353216;
            }

            v13 += v14;
          }

          while (v13 < v6);
        }

        v15 = v10;
        v16 = &__s[v10];
        for (i = 1; *v16; v16 += v17)
        {
          __CGN_InPunctList(a1, v16, v12, &i);
          v17 = utf8_determineUTF8CharLength(*v16);
          if (i)
          {
            *&v12[4 * *(a1 + 188) + 4] = 1065353216;
          }
        }
      }

      else
      {
        v15 = v10;
      }

      __s[v15] = 0;
      v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), v6, *(a1 + 168));
      if ((v18 & 0x1FFF) != 0x14)
      {
        v22 = 0;
        goto LABEL_31;
      }

      v19 = *(*(a1 + 48) + 8);
      v20 = Utf8_Utf8NbrOfSymbols(v6);
      v21 = heap_Alloc(v19, (6 * v20) | 1);
      if (!v21)
      {
        IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
        goto LABEL_41;
      }

      v22 = v21;
      v23 = strlen(v6);
      v24 = v22;
      v25 = v23;
      if (v23)
      {
        NextUtf8OffsetLimit = 0;
        v24 = v22;
        do
        {
          utf8_ToLower(v6, NextUtf8OffsetLimit, v24);
          v24 += utf8_determineUTF8CharLength(*v24);
          NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v6, NextUtf8OffsetLimit, v25);
        }

        while (NextUtf8OffsetLimit < v25);
      }

      *v24 = 0;
      v27 = strcmp(v22, v6);
      v28 = *(a1 + 136);
      v29 = *(*(a1 + 128) + 56);
      v30 = *(a1 + 168);
      v31 = *(a1 + 144);
      if (v27)
      {
        v18 = v29(v28, v31, v22, v30);
        if ((v18 & 0x1FFF) != 0x14)
        {
          goto LABEL_31;
        }

        v18 = (*(*(a1 + 128) + 56))(*(a1 + 136), *(a1 + 144), "$MEANW2V$", *(a1 + 168));
      }

      else
      {
        v18 = v29(v28, v31, "$MEANW2V$", v30);
      }

      if ((v18 & 0x1FFF) == 0x14)
      {
        v33 = "mean vector";
        goto LABEL_39;
      }

LABEL_31:
      if ((v18 & 0x80000000) == 0)
      {
        IsUpdatable = 0;
        if (!v22)
        {
LABEL_41:
          if (!IsUpdatable)
          {
            memcpy(a3, *(a1 + 168), 4 * *(a1 + 196));
            v34 = &a3[4 * *(a1 + 196)];
            v35 = Utf8_Utf8NbrOfSymbols(v6);
            v36 = *(a1 + 192);
            v37 = v36 + *(a1 + 190);
            if (v37 + 1 >= v35)
            {
              if (v36 + *(a1 + 190))
              {
                v47 = 0;
                do
                {
                  if (*v6)
                  {
                    v48 = utf8_determineUTF8CharLength(*v6);
                    __strncpy_chk();
                    v50[v48] = 0;
                    v41 = __CGN_CharLookup(a1, v50);
                    if (v41)
                    {
                      return v41;
                    }

                    v6 += v48;
                    memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  }

                  else
                  {
                    bzero(v34, 4 * *(a1 + 198));
                  }

                  v34 += 4 * *(a1 + 198);
                  ++v47;
                }

                while (v47 < v37);
              }
            }

            else
            {
              if (*(a1 + 190))
              {
                v38 = 0;
                v39 = v6;
                while (1)
                {
                  v40 = utf8_determineUTF8CharLength(*v39);
                  __strncpy_chk();
                  v50[v40] = 0;
                  v41 = __CGN_CharLookup(a1, v50);
                  if (v41)
                  {
                    return v41;
                  }

                  v39 += v40;
                  memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                  v34 += 4 * *(a1 + 198);
                  if (++v38 >= *(a1 + 190))
                  {
                    v36 = *(a1 + 192);
                    break;
                  }
                }
              }

              if (v36)
              {
                v42 = strlen(v6);
                v43 = 0;
                do
                {
                  v42 = utf8_GetPreviousUtf8Offset(v6, v42);
                  ++v43;
                }

                while (v43 < *(a1 + 192));
                if (*(a1 + 192))
                {
                  v44 = 0;
                  v45 = &v6[v42];
                  do
                  {
                    v46 = utf8_determineUTF8CharLength(*v45);
                    __strncpy_chk();
                    v50[v46] = 0;
                    IsUpdatable = __CGN_CharLookup(a1, v50);
                    if (IsUpdatable)
                    {
                      break;
                    }

                    v45 += v46;
                    memcpy(v34, *(a1 + 176), 4 * *(a1 + 198));
                    v34 += 4 * *(a1 + 198);
                    ++v44;
                  }

                  while (v44 < *(a1 + 192));
                  return IsUpdatable;
                }
              }
            }

            return 0;
          }

          return IsUpdatable;
        }

LABEL_40:
        heap_Free(*(*(a1 + 48) + 8), v22);
        goto LABEL_41;
      }

      v33 = "__pIWordLkp->pfWord2fVector";
LABEL_39:
      IsUpdatable = err_GenerateErrorInternalMsg(v33);
      if (!v22)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v6 += utf8_determineUTF8CharLength(*v6);
  }

  while (*v6);

  return kaldi::OffsetFileInputImpl::MyType("szWord");
}