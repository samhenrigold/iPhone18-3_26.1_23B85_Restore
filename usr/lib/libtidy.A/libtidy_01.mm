uint64_t StripSpan(uint64_t a1, __int128 *a2)
{
  CleanWord2000(a1, *(a2 + 3));
  v4 = *(a2 + 3);
  v5 = *(a2 + 1);
  if (v5)
  {
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = *(v4 + 16);
    RemoveNode(*(a2 + 3));
    InsertNodeBeforeElement(a2, v4);
    v5 = v4;
    v4 = v6;
    if (!v6)
    {
LABEL_8:
      v7 = v5;
      goto LABEL_10;
    }
  }

  do
  {
    v7 = v4;
    v4 = *(v4 + 16);
    RemoveNode(v7);
    InsertNodeAfterElement(v5, v7);
    v5 = v7;
  }

  while (v4);
LABEL_10:
  v8 = *(a2 + 2);
  if (!v8)
  {
    *(*a2 + 32) = v7;
  }

  *(a2 + 3) = 0;
  DiscardElement(a1, a2);
  return v8;
}

uint64_t IsWord2000(void *a1)
{
  HTML = FindHTML(a1);
  if (HTML && GetAttrByName(HTML, "xmlns:o"))
  {
    return 1;
  }

  result = FindHEAD(a1);
  if (result)
  {
    v4 = *(result + 24);
    if (v4)
    {
      while (1)
      {
        v5 = *(v4 + 56);
        if (v5)
        {
          if (*v5 == 67)
          {
            v6 = AttrGetById(v4, 79);
            if (v6)
            {
              v7 = v6[6];
              if (v7)
              {
                if (!tmbstrcasecmp(v7, "generator"))
                {
                  v8 = AttrGetById(v4, 35);
                  if (v8)
                  {
                    v9 = v8[6];
                    if (v9)
                    {
                      if (tmbsubstr(v9, "Microsoft"))
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

        v4 = *(v4 + 16);
        if (!v4)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BumpObject(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(v2 + 56);
        if (v6)
        {
          v7 = *v6;
          if (v7 == 46)
          {
            v5 = v2;
          }

          if (v7 == 16)
          {
            v4 = v2;
          }
        }

        v2 = *(v2 + 16);
      }

      while (v2);
      if (v5)
      {
        if (v4)
        {
          for (i = *(v5 + 24); i; result = InsertNodeAtStart(v4, v9))
          {
            while (1)
            {
              v9 = i;
              i = i[2];
              v10 = v9[7];
              if (v10)
              {
                if (*v10 == 75)
                {
                  v11 = v9[3];
                  if (v11)
                  {
                    break;
                  }
                }
              }

LABEL_21:
              if (!i)
              {
                return result;
              }
            }

            while (1)
            {
              result = nodeIsText(v11);
              if (result)
              {
                result = IsBlank(*(v3 + 104), v9);
                if (!result)
                {
                  break;
                }
              }

              v12 = *(v11 + 56);
              if (!v12 || *v12 != 80)
              {
                break;
              }

              v11 = *(v11 + 16);
              if (!v11)
              {
                goto LABEL_21;
              }
            }

            RemoveNode(v9);
          }
        }
      }
    }
  }

  return result;
}

void VerifyHTTPEquiv(uint64_t a1, void *a2)
{
  EncodingNameFromTidyId = GetEncodingNameFromTidyId(*(a1 + 160));
  if (!EncodingNameFromTidyId)
  {
    return;
  }

  v5 = EncodingNameFromTidyId;
  if (!a2 || (v6 = a2[7]) == 0 || *v6 != 46)
  {
    a2 = FindHEAD(a1);
    if (!a2)
    {
      return;
    }
  }

  v7 = a2[3];
  if (!v7)
  {
    return;
  }

  v8 = MEMORY[0x29EDCA600];
  v43 = v5;
  do
  {
    v9 = AttrGetById(v7, 61);
    v10 = AttrGetById(v7, 35);
    v11 = *(v7 + 56);
    if (!v11)
    {
      goto LABEL_64;
    }

    v12 = v10;
    v13 = *v11 != 67 || v10 == 0;
    if (v13 || v9 == 0)
    {
      goto LABEL_64;
    }

    v15 = v9[6];
    if (!v15 || tmbstrcasecmp(v15, "Content-Type"))
    {
      goto LABEL_64;
    }

    v17 = tmbstrdup(v12[6], v16);
    v19 = v17;
    if (!v17 || (v20 = *v17) == 0)
    {
      v22 = 0;
      goto LABEL_44;
    }

    v21 = 0;
    v22 = 0;
    i = v17;
    do
    {
      v24 = i;
      while ((v20 & 0x80) == 0)
      {
        v17 = *(v8 + 4 * v20 + 60) & 0x4000;
        if (!v17)
        {
          goto LABEL_27;
        }

LABEL_26:
        v25 = *++v24;
        v20 = v25;
      }

      v17 = __maskrune(v20, 0x4000uLL);
      if (v17)
      {
        goto LABEL_26;
      }

LABEL_27:
      for (i = v24; *i; ++i)
      {
        if (*i == 59)
        {
          *i++ = 0;
          break;
        }
      }

      if (i <= v24)
      {
        v27 = v21;
        i = v24;
      }

      else
      {
        if (linkedOnOrAfter2024EReleases(v17, v18))
        {
          v27 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
          if (!v27)
          {
            FatalError("Out of memory!");
          }
        }

        else
        {
          v27 = _MemAlloc(0x18uLL);
        }

        v17 = tmbstrdup(v24, v26);
        v27[1] = 0;
        v27[2] = 0;
        *v27 = v17;
        if (v21)
        {
          v21[2] = v27;
        }

        else
        {
          v22 = v27;
        }
      }

      v20 = *i;
      v21 = v27;
    }

    while (*i);
LABEL_44:
    if (linkedOnOrAfter2024EReleases(v17, v18))
    {
      free(v19);
    }

    else
    {
      _MemFree(v19);
    }

    if (v22)
    {
      v29 = v22;
      while (1)
      {
        v30 = tmbstrncasecmp(*v29, "charset", 7);
        if (!v30)
        {
          break;
        }

        v29 = v29[2];
        if (!v29)
        {
          goto LABEL_63;
        }
      }

      v31 = linkedOnOrAfter2024EReleases(v30, v28);
      v32 = *v29;
      if (v31)
      {
        free(v32);
        *v29 = 0;
      }

      else
      {
        _MemFree(v32);
      }

      v35 = linkedOnOrAfter2024EReleases(v33, v34);
      v36 = tmbstrlen(v43) + 9;
      if (v35)
      {
        v37 = malloc_type_malloc(v36, 0xECA65A71uLL);
        if (!v37)
        {
          FatalError("Out of memory!");
          v37 = 0;
        }
      }

      else
      {
        v37 = _MemAlloc(v36);
      }

      *v29 = v37;
      tmbstrcpy(v37, "charset=");
      tmbstrcpy(*v29 + 8, v43);
      PropString = CreatePropString(v22, v38);
      v41 = linkedOnOrAfter2024EReleases(PropString, v40);
      v42 = v12[6];
      if (v41)
      {
        free(v42);
      }

      else
      {
        _MemFree(v42);
      }

      v12[6] = PropString;
    }

LABEL_63:
    FreeStyleProps(v22, v28);
LABEL_64:
    v7 = *(v7 + 16);
  }

  while (v7);
}

_BYTE *CreatePropString(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = 0;
    v4 = a1;
    do
    {
      v3 += tmbstrlen(*v4) + 2;
      a1 = v4[1];
      if (a1)
      {
        a1 = tmbstrlen(a1);
        v3 += a1 + 2;
      }

      v4 = v4[2];
    }

    while (v4);
    v5 = (v3 + 1);
  }

  else
  {
    v5 = 1;
  }

  if (linkedOnOrAfter2024EReleases(a1, a2))
  {
    result = malloc_type_malloc(v5, 0xD6828914uLL);
    if (!result)
    {
      AppendToClassAttr_cold_1();
    }
  }

  else
  {
    result = _MemAlloc(v5);
  }

  *result = 0;
  if (v2)
  {
    v7 = result;
    do
    {
      v8 = *v2;
      v9 = v7 - 1;
      v10 = v7 + 1;
      do
      {
        v11 = v10;
        v12 = *v8++;
        *(v9 + 1) = v12;
        v9 = (v9 + 1);
        v10 = (v10 + 1);
      }

      while (v12);
      if (v2[1])
      {
        *v9 = 8250;
        v13 = v2[1];
        do
        {
          v14 = *v13++;
          *(v11 + 1) = v14;
          v11 = (v11 + 1);
        }

        while (v14);
      }

      else
      {
        v11 = v9;
      }

      if (!v2[2])
      {
        break;
      }

      *v11 = 8251;
      v7 = v11 + 1;
      v2 = v2[2];
    }

    while (v2);
  }

  return result;
}

void FreeStyleProps(void **a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    do
    {
      v3 = v2[2];
      v4 = linkedOnOrAfter2024EReleases(a1, a2);
      v5 = *v2;
      if (v4)
      {
        free(v5);
        *v2 = 0;
      }

      else
      {
        _MemFree(v5);
      }

      v8 = linkedOnOrAfter2024EReleases(v6, v7);
      v9 = v2[1];
      if (v8)
      {
        free(v9);
        v2[1] = 0;
      }

      else
      {
        _MemFree(v9);
      }

      if (linkedOnOrAfter2024EReleases(v10, v11))
      {
        free(v2);
      }

      else
      {
        _MemFree(v2);
      }

      v2 = v3;
    }

    while (v3);
  }
}

void DropComments(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = v2;
      v2 = *(v2 + 16);
      if (*(v4 + 80) == 2)
      {
        RemoveNode(v4);
        FreeNode(result, v4);
      }

      else
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          DropComments(result, v5);
        }
      }
    }

    while (v2);
  }
}

void DropFontElements(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    do
    {
      v3 = a2[2];
      v6 = v3;
      v4 = a2[7];
      if (v4 && *v4 == 36)
      {
        DiscardContainer(result, a2, &v6);
        v3 = v6;
      }

      else
      {
        v5 = a2[3];
        if (v5)
        {
          DropFontElements(result, v5);
        }
      }

      a2 = v3;
    }

    while (v3);
  }
}

void WbrToSpace(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = v2;
      v2 = *(v2 + 16);
      v5 = v4[7];
      if (v5 && *v5 == 117)
      {
        v6 = NewLiteralTextNode(*(result + 104), " ");
        InsertNodeAfterElement(v4, v6);
        RemoveNode(v4);
        FreeNode(result, v4);
      }

      else
      {
        v7 = v4[3];
        if (v7)
        {
          WbrToSpace(result, v7);
        }
      }
    }

    while (v2);
  }
}

unint64_t DowngradeTypography(unint64_t result, uint64_t a2)
{
  v21 = result;
  v25 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return result;
  }

  v2 = a2;
  v3 = *(result + 104);
  do
  {
    v4 = *(v2 + 16);
    result = nodeIsText(v2);
    if (!result)
    {
      goto LABEL_35;
    }

    v22 = 0;
    v5 = *(v3 + 104);
    v7 = *(v2 + 72);
    v6 = *(v2 + 76);
    v8 = v5 + v7;
    if (v7 >= v6)
    {
      goto LABEL_27;
    }

    do
    {
      v24 = 0;
      __src = 0;
      v9 = (*(v3 + 104) + v7);
      v10 = *v9;
      v11 = *v9;
      v22 = v11;
      if (v10 < 0)
      {
        v12 = GetUTF8(v9, &v22) + 1;
        v11 = v22;
      }

      else
      {
        v12 = 1;
      }

      if (v11 - 8211 <= 0xB)
      {
        v13 = 1 << (v11 - 19);
        if ((v13 & 0xE0) != 0)
        {
          v11 = 39;
        }

        else if ((v13 & 0xE00) != 0)
        {
          v11 = 34;
        }

        else
        {
          if ((v13 & 3) == 0)
          {
            goto LABEL_16;
          }

          v11 = 45;
        }

        v22 = v11;
      }

LABEL_16:
      result = PutUTF8(&__src, v11);
      v14 = result - &__src;
      if (result <= &__src || v14 == 0)
      {
        *(*(v3 + 104) + v7) = v22;
LABEL_23:
        v16 = 1;
        goto LABEL_25;
      }

      if (v12 < v14)
      {
        goto LABEL_23;
      }

      v16 = v14;
      result = memmove((*(v3 + 104) + v7), &__src, v14);
      LODWORD(v7) = v7 + v12 - 1;
LABEL_25:
      v8 += v16;
      LODWORD(v7) = v7 + 1;
      v6 = *(v2 + 76);
    }

    while (v7 < v6);
    v5 = *(v3 + 104);
    v7 = *(v2 + 72);
LABEL_27:
    v17 = v8 >= v5;
    v18 = v8 - v5;
    if (v18 == 0 || !v17)
    {
      v18 = 0;
    }

    if (v18 <= v6 && v18 >= v7)
    {
      v6 = v18;
    }

    *(v2 + 76) = v6;
LABEL_35:
    v20 = *(v2 + 24);
    if (v20)
    {
      result = DowngradeTypography(v21, v20);
    }

    v2 = v4;
  }

  while (v4);
  return result;
}

uint64_t *ReplacePreformattedSpaces(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      while (1)
      {
        v4 = v2;
        v2 = *(v2 + 16);
        v5 = *(v4 + 56);
        if (!v5 || *(v5 + 40) != ParsePre)
        {
          break;
        }

        result = NormalizeSpaces(v3[13], *(v4 + 24));
        if (!v2)
        {
          return result;
        }
      }

      v6 = *(v4 + 24);
      if (v6)
      {
        result = ReplacePreformattedSpaces(v3, v6);
      }
    }

    while (v2);
  }

  return result;
}

uint64_t ConvertCDATANodes(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    do
    {
      if (*(a2 + 80) == 8)
      {
        *(a2 + 80) = 4;
      }

      v4 = *(a2 + 16);
      v3 = *(a2 + 24);
      if (v3)
      {
        result = ConvertCDATANodes(v2, v3);
      }

      a2 = v4;
    }

    while (v4);
  }

  return result;
}

void FixLanguageInformation(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    while (1)
    {
      v8 = *(v6 + 16);
      if (nodeIsElement(v6))
      {
        break;
      }

LABEL_20:
      v12 = *(v6 + 24);
      if (v12)
      {
        FixLanguageInformation(result, v12, a3, a4);
      }

      v6 = v8;
      if (!v8)
      {
        return;
      }
    }

    v9 = AttrGetById(v6, 65);
    v10 = AttrGetById(v6, 152);
    v11 = v10;
    if (!v9 || !v10)
    {
      if (a3 && v9)
      {
        if ((*(*(result + 104) + 40) & NodeAttributeVersions(v6, 152)) != 0)
        {
          RepairAttrValue(result, v6, "xml:lang", v9[6]);
        }
      }

      else if (a4 && v10)
      {
        if ((*(*(result + 104) + 40) & NodeAttributeVersions(v6, 65)) != 0)
        {
          RepairAttrValue(result, v6, "lang", v11[6]);
        }

        goto LABEL_17;
      }
    }

    if (!a4 && v9)
    {
      RemoveAttribute(result, v6, v9);
    }

LABEL_17:
    if (!a3 && v11)
    {
      RemoveAttribute(result, v6, v11);
    }

    goto LABEL_20;
  }
}

void FixXhtmlNamespace(void *a1, int a2)
{
  HTML = FindHTML(a1);
  if (HTML)
  {
    v5 = HTML;
    v6 = AttrGetById(HTML, 154);
    if (a2)
    {
      if (!v6 || (v7 = v6[6]) == 0 || tmbstrcasecmp(v7, "http://www.w3.org/1999/xhtml"))
      {

        RepairAttrValue(a1, v5, "xmlns", "http://www.w3.org/1999/xhtml");
      }
    }

    else if (v6)
    {

      RemoveAttribute(a1, v5, v6);
    }
  }
}

void FixAnchors(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    while (1)
    {
      v8 = *(v6 + 16);
      if (IsAnchorElement(result, v6))
      {
        break;
      }

LABEL_26:
      v14 = *(v6 + 24);
      if (v14)
      {
        FixAnchors(result, v14, a3, a4);
      }

      v6 = v8;
      if (!v8)
      {
        return;
      }
    }

    v9 = AttrGetById(v6, 79);
    v10 = AttrGetById(v6, 62);
    v11 = v10;
    if (v9 && v10)
    {
      v12 = v9[6];
      v13 = v11[6];
      if ((v12 != 0) != (v13 != 0) || v12 && v13 && tmbstrcmp(v12, v13))
      {
        ReportAttrError(result, v6, v9, 60);
      }
    }

    else
    {
      if (a4 && v9)
      {
        if ((*(*(result + 104) + 40) & NodeAttributeVersions(v6, 62)) != 0)
        {
          if (!IsValidHTMLID(v9[6]))
          {
            ReportAttrError(result, v6, v9, 74);
            if (a3)
            {
              goto LABEL_23;
            }

            goto LABEL_21;
          }

          RepairAttrValue(result, v6, "id", v9[6]);
        }

        goto LABEL_20;
      }

      if (a3 && v10 && (*(*(result + 104) + 40) & NodeAttributeVersions(v6, 79)) != 0)
      {
        RepairAttrValue(result, v6, "name", v11[6]);
      }
    }

    if (!a4 && v11)
    {
      RemoveAttribute(result, v6, v11);
      if (a3)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_20:
    if (a3)
    {
LABEL_23:
      if (!AttrGetById(v6, 79) && !AttrGetById(v6, 62))
      {
        RemoveAnchorByNode(result, v6);
      }

      goto LABEL_26;
    }

LABEL_21:
    if (v9)
    {
      RemoveAttribute(result, v6, v9);
    }

    goto LABEL_23;
  }
}

unsigned __int8 **CreateProps(unsigned __int8 **a1, _BYTE *a2)
{
  v3 = tmbstrdup(a2, a2);
  v5 = v3;
  v6 = *v3;
  if (*v3)
  {
    v7 = v3;
    while (1)
    {
      v8 = v7;
      while (v6 == 32)
      {
        v9 = *++v8;
        v6 = v9;
      }

      v10 = v8 + 2;
      v11 = v8;
      if (!v6)
      {
        break;
      }

      while (v6 != 58)
      {
        v12 = *++v11;
        v6 = v12;
        ++v10;
        if (!v12)
        {
          goto LABEL_39;
        }
      }

      v13 = v11;
      do
      {
        v7 = v10;
        v15 = *++v13;
        v14 = v15;
        ++v10;
      }

      while (v15 == 32);
      while (v14 && v14 != 59)
      {
        v16 = *v7++;
        v14 = v16;
      }

      *v11 = 0;
      *(v7 - 1) = 0;
      if (a1)
      {
        v17 = 0;
        v18 = a1;
        while (1)
        {
          v19 = v18;
          v3 = tmbstrcmp(*v18, v8);
          if (!v3)
          {
            v21 = a1;
            goto LABEL_36;
          }

          if (v3 >= 1)
          {
            break;
          }

          v18 = v19[2];
          v17 = v19;
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        if (linkedOnOrAfter2024EReleases(v3, v4))
        {
          v21 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
          if (!v21)
          {
            FatalError("Out of memory!");
          }
        }

        else
        {
          v21 = _MemAlloc(0x18uLL);
        }

        *v21 = tmbstrdup(v8, v23);
        v3 = tmbstrdup(v13, v24);
        v21[1] = v3;
        v21[2] = v19;
        if (!v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v19 = 0;
LABEL_23:
        v17 = v19;
        if (linkedOnOrAfter2024EReleases(v3, v4))
        {
          v21 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
          if (!v21)
          {
            FatalError("Out of memory!");
          }
        }

        else
        {
          v21 = _MemAlloc(0x18uLL);
        }

        *v21 = tmbstrdup(v8, v20);
        v3 = tmbstrdup(v13, v22);
        v21[1] = v3;
        v21[2] = 0;
        if (!v19)
        {
          goto LABEL_36;
        }
      }

      v17[2] = v21;
      v21 = a1;
LABEL_36:
      *v11 = 58;
      if (v14)
      {
        *(v7 - 1) = 59;
        v6 = *v7;
        a1 = v21;
        if (*v7)
        {
          continue;
        }
      }

      goto LABEL_40;
    }
  }

LABEL_39:
  v21 = a1;
LABEL_40:
  if (linkedOnOrAfter2024EReleases(v3, v4))
  {
    free(v5);
  }

  else
  {
    _MemFree(v5);
  }

  return v21;
}

uint64_t *CleanNode(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  v63 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 768);
  v61 = a2;
  if (!nodeIsElement(a2))
  {
    return v2;
  }

  while (1)
  {
    if (!v2)
    {
      goto LABEL_23;
    }

    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = *v5;
    if (*v5 == 29 || v6 == 115 || v6 == 76)
    {
      v7 = v2[3];
      if (v7)
      {
        if (!*(v7 + 16))
        {
          v22 = *(v7 + 56);
          if (v22)
          {
            if (*v22 == 61 && *(v7 + 96))
            {
              v23 = LookupTagDef(30);
              v2[7] = v23;
              v25 = linkedOnOrAfter2024EReleases(v23, v24);
              v26 = v2[8];
              if (v25)
              {
                free(v26);
                v2[8] = 0;
              }

              else
              {
                _MemFree(v26);
              }

              v2[8] = tmbstrdup("div", v27);
              v52 = a1;
              v53 = v2;
              v54 = "margin-left: 2em";
              goto LABEL_111;
            }
          }
        }
      }

      v6 = *v5;
    }

    if (v6 == 115 || v6 == 76)
    {
      v8 = v2[3];
      if (v8)
      {
        if (!*(v8 + 16))
        {
          v28 = *(v8 + 24);
          if (v28)
          {
            if (v28[7] == v5 && !v28[2])
            {
              break;
            }
          }
        }
      }
    }

    v9 = *v5;
    if (v9 != 20)
    {
      if (v4)
      {
        if (v9 == 30)
        {
          v13 = v2[3];
          if (v13)
          {
            if (!*(v13 + 16))
            {
              v36 = *(v13 + 56);
              if (v36)
              {
                if (*v36 == 30 && (v4 != 2 || CopyAttrs(a1, v2, v2[3])))
                {
                  MergeStyles(a1, v2, v13);
LABEL_112:
                  StripOnlyChild(a1, v2);
                  goto LABEL_93;
                }
              }
            }
          }
        }
      }

LABEL_23:
      v14 = v2[7];
      if ((*(v14 + 32) & 0xE8) != 0)
      {
        v15 = *v14;
        if ((v15 - 61) > 0x33 || ((1 << (v15 - 61)) & 0x8080000000001) == 0)
        {
          if (v15 != 19)
          {
            v17 = v2 + 5;
            v18 = v2[5];
            if (v18)
            {
              v19 = 0;
              while (1)
              {
                v20 = v18;
                v21 = *(v18 + 8);
                if (v21)
                {
                  if (*v21 == 7)
                  {
                    break;
                  }
                }

                v18 = *v20;
                v19 = v20;
                if (!*v20)
                {
                  goto LABEL_65;
                }
              }

              if (v19)
              {
                v17 = v19;
              }

              *v17 = *v20;
              v32 = v20[6];
              if (v32)
              {
                tmbstrcpy(v62, "text-align: ");
                v33 = 0;
                while (1)
                {
                  v34 = ToLower(*(v32 + v33));
                  v62[v33 + 12] = v34;
                  if (!v34)
                  {
                    break;
                  }

                  if (++v33 == 115)
                  {
                    v35 = 127;
                    goto LABEL_63;
                  }
                }

                v35 = v33 + 12;
LABEL_63:
                v62[v35] = 0;
                AddStyleProperty(a1, v2, v62);
              }

              FreeAttribute(a1, v20);
            }
          }

LABEL_65:
          v37 = v2[3];
          if (v37)
          {
            if (!*(v37 + 16))
            {
              v50 = *(v37 + 56);
              if (v50)
              {
                v51 = *v50;
                switch(v51)
                {
                  case 49:
                    goto LABEL_108;
                  case 36:
LABEL_106:
                    MergeStyles(a1, v2, v37);
                    AddFontStyles(a1, v2, *(v37 + 40));
                    goto LABEL_112;
                  case 8:
                    goto LABEL_105;
                }
              }
            }
          }
        }

        v14 = v2[7];
        if (!v14)
        {
          goto LABEL_125;
        }
      }

      if (*v14 != 36)
      {
LABEL_125:
        if (nodeHasCM(v2, 528))
        {
          v37 = v2[3];
          if (v37)
          {
            if (!*(v37 + 16))
            {
              v48 = *(v37 + 56);
              if (v48)
              {
                v49 = *v48;
                if (v49 != 49)
                {
                  if (v49 == 36)
                  {
                    goto LABEL_106;
                  }

                  if (v49 != 8 || !*(a1 + 352))
                  {
                    goto LABEL_72;
                  }

LABEL_105:
                  MergeStyles(a1, v2, v37);
                  v52 = a1;
                  v53 = v2;
                  v54 = "font-weight: bold";
LABEL_111:
                  AddStyleProperty(v52, v53, v54);
                  goto LABEL_112;
                }

                if (*(a1 + 352))
                {
LABEL_108:
                  MergeStyles(a1, v2, v37);
                  v52 = a1;
                  v53 = v2;
                  v54 = "font-style: italic";
                  goto LABEL_111;
                }
              }
            }
          }
        }
      }

LABEL_72:
      v38 = v2[7];
      if (!v38 || *v38 != 36)
      {
        return v61;
      }

      if (*(a1 + 368))
      {
        DiscardContainer(a1, v2, &v61);
      }

      else
      {
        if (*(*v2 + 24) == v2 && !v2[2])
        {
          v39 = *(*v2 + 56);
          if ((*(v39 + 32) & 0xE8) != 0)
          {
            v40 = *v39 - 61;
            v41 = v40 > 0x33;
            v42 = (1 << v40) & 0x8080000000001;
            if (v41 || v42 == 0)
            {
              return v61;
            }
          }
        }

        AddFontStyles(a1, v2, v2[5]);
        v44 = v2[5];
        if (v44)
        {
          v45 = 0;
          do
          {
            v47 = *v44;
            v46 = v44[1];
            if (v46 && *v46 == 135)
            {
              *v44 = 0;
              v45 = v44;
            }

            else
            {
              FreeAttribute(a1, v44);
            }

            v44 = v47;
          }

          while (v47);
        }

        else
        {
          v45 = 0;
        }

        v2[5] = v45;
        RenameElem(v2, 98);
      }

      goto LABEL_93;
    }

    if (*(a1 + 368))
    {
      if (v2[3])
      {
        v10 = v2[4];
        DiscardContainer(a1, v2, &v61);
        v11 = InferredTag(a1, 17);
        v12 = v10;
      }

      else
      {
        v30 = v2[1];
        v29 = v2[2];
        v31 = *v2;
        DiscardContainer(a1, v2, &v61);
        v11 = InferredTag(a1, 17);
        if (v29)
        {
          InsertNodeBeforeElement(v29, v11);
          goto LABEL_93;
        }

        if (!v30)
        {
          InsertNodeAtStart(v31, v11);
          goto LABEL_93;
        }

        v12 = v30;
      }

      InsertNodeAfterElement(v12, v11);
    }

    else
    {
      RenameElem(v2, 30);
      AddStyleProperty(a1, v2, "text-align: center");
    }

LABEL_93:
    v2 = v61;
    if (!nodeIsElement(v61))
    {
      return v61;
    }
  }

  v28[2] = v2[2];
  *v28 = *v2;
  FixNodeLinks(v28);
  *(v8 + 24) = 0;
  FreeNode(a1, v8);
  v2[2] = 0;
  v2[3] = 0;
  FreeNode(a1, v2);
  v56 = v28[1];
  if (!v56)
  {
    return v28;
  }

  v57 = v56[7];
  if (!v57)
  {
    return v28;
  }

  v58 = *v57;
  if (v58 != 115 && v58 != 76)
  {
    return v28;
  }

  v59 = v56[4];
  if (!v59)
  {
    return v28;
  }

  v56[2] = v28[2];
  FixNodeLinks(v56);
  v28[2] = 0;
  v60 = *(v59 + 32);
  *v28 = v59;
  v28[1] = v60;
  FixNodeLinks(v28);
  return CleanNode(a1, v28);
}

uint64_t CopyAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (AttrGetById(a3, 62) && AttrGetById(a2, 62))
  {
    return 0;
  }

  v7 = *(a3 + 40);
  if (v7)
  {
    while (1)
    {
      v8 = v7[1];
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_15;
      }

      if (v9 != 135 && v9 != 25)
      {
        break;
      }

      v11 = *v7;
LABEL_16:
      v7 = v11;
      if (!v11)
      {
        return 1;
      }
    }

    v12 = AttrGetById(a2, v9);
    if (v12)
    {
      RemoveAttribute(a1, a2, v12);
    }

LABEL_15:
    DetachAttribute(a3, v7);
    v11 = *v7;
    *v7 = 0;
    InsertAttributeAtEnd(a2, v7);
    goto LABEL_16;
  }

  return 1;
}

void MergeStyles(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  if (v6)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7)
      {
        if (*v7 == 25)
        {
          break;
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = v6[6];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v9[1];
    if (v10)
    {
      if (*v10 == 25)
      {
        break;
      }
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v15 = v9[6];
  if (v15)
  {
    if (v8)
    {
      v16 = tmbstrlen(v9[6]);
      v17 = tmbstrlen(v8);
      v19 = linkedOnOrAfter2024EReleases(v17, v18);
      v20 = &v17[v16];
      if (v19)
      {
        v21 = malloc_type_malloc((v20 + 2), 0x14089071uLL);
        if (!v21)
        {
          FatalError("Out of memory!");
        }
      }

      else
      {
        v21 = _MemAlloc((v20 + 2));
      }

      tmbstrcpy(v21, v15);
      v16[v21] = 32;
      v30 = tmbstrcpy(&v16[v21 + 1], v8);
      v32 = linkedOnOrAfter2024EReleases(v30, v31);
      v33 = v9[6];
      if (v32)
      {
        free(v33);
        v9[6] = 0;
      }

      else
      {
        _MemFree(v33);
      }

      v9[6] = v21;
    }
  }

  else
  {
LABEL_11:
    if (v8)
    {
      v11 = NewAttributeEx(a1, "class", v8, 34);
      InsertAttributeAtStart(a2, v11);
    }
  }

  v12 = *(a3 + 40);
  if (v12)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13)
      {
        if (*v13 == 135)
        {
          break;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v14 = v12[6];
  }

  else
  {
LABEL_17:
    v14 = 0;
  }

  v22 = *(a2 + 40);
  if (!v22)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v23 = v22[1];
    if (v23)
    {
      if (*v23 == 135)
      {
        break;
      }
    }

    v22 = *v22;
    if (!v22)
    {
      goto LABEL_28;
    }
  }

  v25 = v22[6];
  if (v25)
  {
    if (v14)
    {
      v26 = MergeProperties(v25, v14);
      v28 = linkedOnOrAfter2024EReleases(v26, v27);
      v29 = v22[6];
      if (v28)
      {
        free(v29);
        v22[6] = 0;
      }

      else
      {
        _MemFree(v29);
      }

      v22[6] = v26;
    }
  }

  else
  {
LABEL_28:
    if (v14)
    {
      v24 = NewAttributeEx(a1, "style", v14, 34);

      InsertAttributeAtStart(a2, v24);
    }
  }
}

void AddFontStyles(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = v3[6];
      if (!v6)
      {
        goto LABEL_25;
      }

      v7 = v3[1];
      if (!v7)
      {
        goto LABEL_25;
      }

      v8 = *v7;
      if (v8 == 31)
      {
        break;
      }

      if (v8 == 130)
      {
        if (a2)
        {
          v9 = *(a2 + 56);
          if (v9)
          {
            if (*v9 == 79)
            {
              v10 = tmbstrcmp(v3[6], "6");
              if (!v10)
              {
                v16 = "h1";
LABEL_30:
                v17 = linkedOnOrAfter2024EReleases(v10, v11);
                v18 = *(a2 + 64);
                if (v17)
                {
                  free(v18);
                  *(a2 + 64) = 0;
                }

                else
                {
                  _MemFree(v18);
                }

                *(a2 + 64) = tmbstrdup(v16, v19);
                FindTag(a1, a2);
                goto LABEL_25;
              }

              v10 = tmbstrcmp(v6, "5");
              if (!v10)
              {
                v16 = "h2";
                goto LABEL_30;
              }

              v10 = tmbstrcmp(v6, "4");
              if (!v10)
              {
                v16 = "h3";
                goto LABEL_30;
              }
            }
          }
        }

        v12 = *v6;
        if (*v6)
        {
          LOBYTE(v13) = v12 - 48;
          if ((v12 - 48) >= 7)
          {
            v13 = v6[1] - 48;
            v15 = v12 == 45;
            v14 = FontSize2Name_plussizes;
            if (v15)
            {
              v14 = FontSize2Name_minussizes;
            }

            if (v13 > 6)
            {
LABEL_23:
              tmbsnprintf(v20, 64, "font-size: %s");
              goto LABEL_24;
            }
          }

          else
          {
            v14 = FontSize2Name_sizes;
          }

          if (v14[v13])
          {
            goto LABEL_23;
          }
        }
      }

      else if (v8 == 49)
      {
        tmbsnprintf(v20, 256, "font-family: %s");
LABEL_24:
        AddStyleProperty(a1, a2, v20);
      }

LABEL_25:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    tmbsnprintf(v20, 128, "color: %s");
    goto LABEL_24;
  }
}

void AddColorRule(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 && a3)
  {
    AddStringLiteral(result, a2);
    AddStringLiteral(result, " { color: ");
    AddStringLiteral(result, a3);

    AddStringLiteral(result, " }\n");
  }
}

void InitConfig(uint64_t a1)
{
  ClearMemory((a1 + 112), 0x5B0uLL);

  ResetConfigToDefault(a1);
}

void ResetConfigToDefault(uint64_t a1)
{
  v2 = option_defs;
  for (i = 112; i != 824; i += 8)
  {
    if (v2[4])
    {
      v4 = *(v2 + 3);
    }

    else
    {
      v4 = *(v2 + 6);
    }

    v5 = v4;
    CopyOptionValue(v2, (a1 + i), &v5);
    v2 += 14;
  }

  FreeDeclaredTags(a1, 0);
}

void FreeConfig(int *a1)
{
  ResetConfigToDefault(a1);

  TakeConfigSnapshot(a1);
}

void TakeConfigSnapshot(int *a1)
{
  v1 = (a1 + 208);
  AdjustConfig(a1);
  v2 = option_defs;
  v3 = 89;
  do
  {
    CopyOptionValue(v2, v1, v1 - 90);
    v2 += 14;
    ++v1;
    --v3;
  }

  while (v3);
}

int *lookupOption(char *a1)
{
  for (i = 0; ; i += 14)
  {
    v3 = &option_defs[i];
    if (!tmbstrcasecmp(a1, *&option_defs[i + 2]))
    {
      break;
    }

    v4 = (i * 4) >> 6;
    if (v4 > 0x4C)
    {
      return 0;
    }
  }

  return v3;
}

int *getOption(unsigned int a1)
{
  if (a1 >= 0x59)
  {
    return 0;
  }

  else
  {
    return &option_defs[14 * a1];
  }
}

BOOL SetOptionInt(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 <= 0x58)
  {
    *(a1 + 8 * a2 + 112) = a3;
  }

  return a2 < 0x59;
}

BOOL SetOptionBool(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 <= 0x58)
  {
    *(a1 + 8 * a2 + 112) = a3;
  }

  return a2 < 0x59;
}

BOOL ResetOptionToDefault(uint64_t a1, unsigned int a2)
{
  v2 = a2 - 1;
  if (a2 - 1 <= 0x57)
  {
    v4 = &option_defs[14 * a2];
    v5 = a1 + 8 * a2;
    if (v4[4])
    {
      v6 = *(v4 + 3);
    }

    else
    {
      v6 = *(v4 + 6);
    }

    v8 = v6;
    CopyOptionValue(v4, (v5 + 112), &v8);
  }

  return v2 < 0x58;
}

void CopyOptionValue(uint64_t a1, void **a2, void **a3)
{
  FreeOptionValue(a1, a2);
  if (*(a1 + 16))
  {
    *a2 = *a3;
  }

  else
  {
    v7 = *a3;
    if (*a3)
    {
      if (v7 != *(a1 + 48))
      {
        v7 = tmbstrdup(v7, v6);
      }
    }

    *a2 = v7;
  }
}

int *AdjustConfig(int *result)
{
  v1 = result;
  if (result[132])
  {
    *(result + 65) = 1;
  }

  if (!result[66])
  {
    *(result + 15) = 0;
  }

  if (!*(result + 16))
  {
    *(result + 16) = 0x7FFFFFFFLL;
  }

  if (result[136])
  {
    result[388] |= 2u;
    result = DefineTag(result, 2, "o:p");
  }

  if (v1[70])
  {
    *(v1 + 18) = xmmword_2999659E0;
    *(v1 + 63) = 1;
  }

  else if (v1[74])
  {
    *(v1 + 36) = 1;
    *(v1 + 40) = 0;
    *(v1 + 41) = 0;
  }

  v2 = *(v1 + 20);
  if ((v2 > 0xB || ((1 << v2) & 0xE13) == 0) && v1[72])
  {
    *(v1 + 39) = 1;
  }

  if (v1[72])
  {
    if (v2 - 9 <= 2)
    {
      *(v1 + 86) = 1;
    }

    *(v1 + 54) = 1;
    *(v1 + 34) = 0;
  }

  return result;
}

void ResetConfigToSnapshot(uint64_t a1)
{
  v6 = 0;
  v2 = NeedReparseTagDecls((a1 + 112), (a1 + 832), &v6);
  v3 = option_defs;
  for (i = 112; i != 824; i += 8)
  {
    CopyOptionValue(v3, (a1 + i), (a1 + i + 720));
    v3 += 14;
  }

  if (v2)
  {
    v5 = v6;

    ReparseTagDecls(a1, v5);
  }
}

uint64_t NeedReparseTagDecls(unsigned __int8 **a1, unsigned __int8 **a2, _DWORD *a3)
{
  v6 = 0;
  *a3 = 0;
  v7 = option_defs;
  v8 = 89;
  do
  {
    v9 = *v7;
    if (*v7 > 76)
    {
      if (v9 == 77)
      {
        if (OptionValueIdentical(v7, a1, a2))
        {
          goto LABEL_16;
        }

        v10 = 1;
        goto LABEL_15;
      }

      if (v9 == 78 && !OptionValueIdentical(v7, a1, a2))
      {
        v10 = 8;
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 == 75)
      {
        if (OptionValueIdentical(v7, a1, a2))
        {
          goto LABEL_16;
        }

        v10 = 2;
        goto LABEL_15;
      }

      if (v9 == 76 && !OptionValueIdentical(v7, a1, a2))
      {
        v10 = 4;
LABEL_15:
        *a3 |= v10;
        v6 = 1;
      }
    }

LABEL_16:
    v7 += 14;
    ++a1;
    ++a2;
    --v8;
  }

  while (v8);
  return v6;
}

void ReparseTagDecls(uint64_t result, char a2)
{
  if ((a2 & 2) != 0)
  {
    FreeDeclaredTags(result, 2);
    ReparseTagType(result, 75);
    if ((a2 & 4) == 0)
    {
LABEL_3:
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      FreeDeclaredTags(result, 1);
      ReparseTagType(result, 77);
      if ((a2 & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((a2 & 4) == 0)
  {
    goto LABEL_3;
  }

  FreeDeclaredTags(result, 4);
  ReparseTagType(result, 76);
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a2 & 8) == 0)
  {
    return;
  }

LABEL_9:
  FreeDeclaredTags(result, 8);

  ReparseTagType(result, 78);
}

int *CopyConfig(int *result, uint64_t a2)
{
  if (result != a2)
  {
    v10 = v2;
    v11 = v3;
    v5 = result;
    v9 = 0;
    v6 = NeedReparseTagDecls(result + 14, (a2 + 112), &v9);
    TakeConfigSnapshot(v5);
    v7 = option_defs;
    for (i = 28; i != 206; i += 2)
    {
      CopyOptionValue(v7, &v5[i], (a2 + i * 4));
      v7 += 14;
    }

    if (v6)
    {
      ReparseTagDecls(v5, v9);
    }

    return AdjustConfig(v5);
  }

  return result;
}

Bool tidyFileExists(ctmbstr filename)
{
  v2 = ExpandTilde(filename);
  v3 = access(v2, 0);
  v5 = v3;
  if (v2 != filename)
  {
    if (linkedOnOrAfter2024EReleases(v3, v4))
    {
      free(v2);
    }

    else
    {
      _MemFree(v2);
    }
  }

  return v5 == 0;
}

char *ExpandTilde(char *a1)
{
  v1 = a1;
  if (a1)
  {
    if (*a1 == 126)
    {
      v2 = (a1 + 1);
      if (a1[1] == 47)
      {
        v3 = getenv("HOME");
        if (v3)
        {
          v4 = v3;
          v5 = tmbstrlen(v1 + 1);
          v6 = tmbstrlen(v4);
          v7 = &v6[v5];
          if (linkedOnOrAfter2024EReleases(v6, v8))
          {
            v1 = malloc_type_malloc((v7 + 1), 0x36E7E06FuLL);
            if (!v1)
            {
              FatalError("Out of memory!");
            }
          }

          else
          {
            v1 = _MemAlloc((v7 + 1));
          }

          tmbstrcpy(v1, v4);
          tmbstrcat(v1, v2);
        }
      }
    }
  }

  return v1;
}

uint64_t ParseConfigFileEnc()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v78 = *MEMORY[0x29EDCA608];
  v6 = *(v0 + 4872);
  v7 = ExpandTilde(v3);
  v8 = fopen(v7, "r");
  CharEncodingFromOptName = GetCharEncodingFromOptName(v2);
  if (!v8 || (CharEncodingFromOptName & 0x80000000) != 0)
  {
    FileError(v5, v7, 2);
    return 0xFFFFFFFFLL;
  }

  v10 = FileInput(v5, v8, CharEncodingFromOptName);
  *(v5 + 1560) = v10;
  if (v10)
  {
    Char = ReadChar(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    Char = -1;
  }

  *(v5 + 1556) = Char;
  v20 = SkipWhite(v5 + 112);
  if (v20 == -1)
  {
    goto LABEL_96;
  }

  do
  {
    memset(v77, 0, sizeof(v77));
    if (v20 == 35 || v20 == 47)
    {
      goto LABEL_10;
    }

    for (i = 0; ; ++i)
    {
      if (v20 == -1 || v20 == 10)
      {
        goto LABEL_10;
      }

      if (v20 == 58)
      {
        break;
      }

      *(v77 + i) = v20;
      if (*(v5 + 1556) == -1)
      {
        if (i == 62)
        {
          goto LABEL_10;
        }

        v20 = -1;
      }

      else
      {
        v33 = *(v5 + 1560);
        if (v33)
        {
          v20 = ReadChar(v33, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          v20 = -1;
        }

        *(v5 + 1556) = v20;
        if (i == 62)
        {
          if (v20 != 58)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = &option_defs[v34];
      if (!tmbstrcasecmp(v77, *&option_defs[v34 + 2]))
      {
        break;
      }

      v43 = (v34 * 4) >> 6;
      v34 += 14;
      if (v43 > 0x4C)
      {
        v35 = 0;
        break;
      }
    }

    if (*(v5 + 1556) != -1)
    {
      v44 = *(v5 + 1560);
      if (v44)
      {
        v45 = ReadChar(v44, v36, v37, v38, v39, v40, v41, v42);
      }

      else
      {
        v45 = -1;
      }

      *(v5 + 1556) = v45;
    }

    if (v35)
    {
      (*(v35 + 4))(v5, v35);
      goto LABEL_10;
    }

    if (!*(v5 + 4864))
    {
      ReportUnknownOption(v5, v77);
      goto LABEL_10;
    }

    v46 = SkipWhite(v5 + 112);
    v54 = v46;
    v75 = v6;
    if (v46 == 39 || v46 == 34)
    {
      if (*(v5 + 1556) == -1)
      {
        v57 = v46;
        v54 = -1;
      }

      else
      {
        v55 = *(v5 + 1560);
        if (v55)
        {
          v56 = ReadChar(v55, v47, v48, v49, v50, v51, v52, v53);
        }

        else
        {
          v56 = -1;
        }

        *(v5 + 1556) = v56;
        v57 = v54;
        v54 = v56;
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = 0;
    v59 = 0;
    v60 = 1;
    while (1)
    {
      v61 = v54 + 1 > 0xE || ((1 << (v54 + 1)) & 0x4801) == 0;
      if (!v61 || v57 && v54 == v57)
      {
        break;
      }

      if (IsWhite(v54))
      {
        if (v59)
        {
          LOBYTE(v54) = 32;
          goto LABEL_84;
        }

        if (*(v5 + 1556) == -1)
        {
          v54 = -1;
        }

        else
        {
          v69 = *(v5 + 1560);
          if (v69)
          {
            v54 = ReadChar(v69, v62, v63, v64, v65, v66, v67, v68);
          }

          else
          {
            v54 = -1;
          }

          *(v5 + 1556) = v54;
        }

        v59 = 0;
        if (!v60)
        {
          break;
        }
      }

      else
      {
LABEL_84:
        v76[v58] = v54;
        if (*(v5 + 1556) == -1)
        {
          v54 = -1;
        }

        else
        {
          v70 = *(v5 + 1560);
          if (v70)
          {
            v54 = ReadChar(v70, v62, v63, v64, v65, v66, v67, v68);
          }

          else
          {
            v54 = -1;
          }

          *(v5 + 1556) = v54;
        }

        v60 = v58 < 0x1FFD;
        v59 = 1;
        ++v58;
        v71 = 8190;
        if (v58 == 8190)
        {
          goto LABEL_93;
        }
      }
    }

    v71 = v58;
LABEL_93:
    v76[v71] = 0;
    if (!(*(v5 + 4864))(v77, v76))
    {
      ReportUnknownOption(v5, v77);
    }

    v6 = v75;
    do
    {
LABEL_10:
      for (j = *(v5 + 1556); j != -1 && j != 10; *(v5 + 1556) = j)
      {
        if (j == 13)
        {
          v30 = *(v5 + 1560);
          if (v30)
          {
            j = ReadChar(v30, v21, v22, v23, v24, v25, v26, v27);
          }

          else
          {
            j = -1;
          }

          *(v5 + 1556) = j;
          break;
        }

        v29 = *(v5 + 1560);
        if (v29)
        {
          j = ReadChar(v29, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          j = -1;
        }
      }

      if (j == 10)
      {
        v31 = *(v5 + 1560);
        if (v31)
        {
          j = ReadChar(v31, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          j = -1;
        }

        *(v5 + 1556) = j;
      }
    }

    while (IsWhite(j));
    v20 = *(v5 + 1556);
  }

  while (v20 != -1);
LABEL_96:
  freeFileSource((*(v5 + 1560) + 48), 1);
  freeStreamIn(*(v5 + 1560), v72);
  *(v5 + 1560) = 0;
  if (v7 != v4)
  {
    if (linkedOnOrAfter2024EReleases(v73, v74))
    {
      free(v7);
    }

    else
    {
      _MemFree(v7);
    }
  }

  AdjustConfig(v5);
  return *(v5 + 4872) > v6;
}

uint64_t SkipWhite(uint64_t a1)
{
  for (i = *(a1 + 1444); IsWhite(i) && !IsNewline(*(a1 + 1444)); *(a1 + 1444) = i)
  {
    v10 = *(a1 + 1448);
    if (v10)
    {
      i = ReadChar(v10, v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      i = -1;
    }
  }

  return *(a1 + 1444);
}

uint64_t ParseConfigOption(uint64_t a1, char *a2, byte *a3)
{
  for (i = 0; tmbstrcasecmp(a2, *&option_defs[i + 2]); i += 14)
  {
    v7 = (i * 4) >> 6;
    if (v7 > 0x4C)
    {
      v8 = *(a1 + 4864);
      if (!v8 || (result = v8(a2, a3), !result))
      {
        ReportUnknownOption(a1, a2);
        return 0;
      }

      return result;
    }
  }

  v10 = option_defs[i];

  return ParseConfigValue(a1, v10, a3);
}

uint64_t ParseConfigValue(uint64_t a1, unsigned int a2, byte *a3)
{
  v4 = &option_defs[14 * a2];
  if (a2 <= 0x58 && a3)
  {
    memset(&buf, 0, sizeof(buf));
    v6 = tmbstrlen(a3);
    tidyBufAttach(&buf, a3, v6 + 1);
    v7 = BufferInput(a1, &buf, 1);
    *(a1 + 1560) = v7;
    if (v7)
    {
      Char = ReadChar(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    else
    {
      Char = -1;
    }

    *(a1 + 1556) = Char;
    v16 = (*(v4 + 4))(a1, v4);
    freeStreamIn(*(a1 + 1560), v17);
    *(a1 + 1560) = 0;
    tidyBufDetach(&buf);
  }

  else
  {
    ReportBadArgument(a1, *(v4 + 1));
    return 0;
  }

  return v16;
}

uint64_t AdjustCharEncoding(void *a1, unsigned int a2)
{
  if (a2 > 0xD)
  {
    return 0;
  }

  v2 = qword_299965A00[a2];
  v3 = qword_299965A70[a2];
  a1[18] = a2;
  a1[19] = v3;
  a1[20] = v2;
  return 1;
}

char *CharEncodingName(uint64_t a1)
{
  result = GetEncodingNameFromTidyId(a1);
  if (!result)
  {
    return "unknown";
  }

  return result;
}

char *CharEncodingOptName(int a1)
{
  result = GetEncodingOptNameFromTidyId(a1);
  if (!result)
  {
    return "unknown";
  }

  return result;
}

int *getNextOption(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != 0 && *a2 < 0x59)
  {
    result = &option_defs[14 * v2];
  }

  else
  {
    result = 0;
  }

  v4 = ((*a2 != 0) & (*a2 < 0x59)) + v2;
  if (v4 >= 0x59)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL getOptionPickList(_BOOL8 result)
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

uint64_t getNextOptionPick(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = v2 > 0xF;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || (v4 = *(a1 + 40)) == 0)
  {
    result = 0;
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v5 = (v4 + 8 * v2);
  result = *(v5 - 1);
  if (!result || !*v5)
  {
    goto LABEL_10;
  }

  v7 = v2 + 1;
LABEL_11:
  *a2 = v7;
  return result;
}

BOOL ConfigDiffThanDefault(uint64_t a1)
{
  v1 = (a1 + 112);
  v2 = &off_2A1FE8610;
  do
  {
    v3 = *v1;
    if (*(v2 - 12))
    {
      v4 = *(v2 - 5);
    }

    else
    {
      v4 = *(v2 - 2);
    }

    result = v3 != v4;
    if (v3 != v4)
    {
      break;
    }

    ++v1;
    v6 = *v2;
    v2 += 7;
  }

  while (v6);
  return result;
}

uint64_t SaveConfigFile(uint64_t a1, char *__filename)
{
  v3 = *(a1 + 160);
  v4 = *(a1 + 168);
  v5 = fopen(__filename, "wb");
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = FileOutput(v5, v3, v4);
  v8 = SaveConfigToStream(a1, v7);
  v9 = fclose(v6);
  if (linkedOnOrAfter2024EReleases(v9, v10))
  {
    free(v7);
  }

  else
  {
    _MemFree(v7);
  }

  return v8;
}

uint64_t SaveConfigToStream(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 112;
  v17 = *MEMORY[0x29EDCA608];
  for (i = &dword_2A1FE85D0; *(i + 1); i += 14)
  {
    if (!*(i + 4))
    {
      goto LABEL_30;
    }

    v6 = *i;
    v7 = i[4];
    v8 = *&v4[4 * v6];
    if (v7)
    {
      v9 = *(i + 3);
    }

    else
    {
      v9 = *(i + 6);
    }

    if (v8 == v9)
    {
      if (v6 != 9)
      {
        goto LABEL_30;
      }
    }

    else if (v6 != 9)
    {
      if (!*(i + 5))
      {
        if (v7 == 2)
        {
          if (v8)
          {
            v8 = "yes";
          }

          else
          {
            v8 = "no";
          }
        }

        else if (v7 == 1)
        {
          memset(v16, 0, sizeof(v16));
          tmbsnprintf(v16, 32, "%lu", v8);
          v8 = v16;
        }

        else if (v7)
        {
          goto LABEL_30;
        }

        WriteOptionString(i, v8, a2);
LABEL_30:
        a1 = 0;
        goto LABEL_31;
      }

LABEL_20:
      a1 = WriteOptionPick(i, v8, a2);
      goto LABEL_31;
    }

    v8 = *(v3 + 22);
    if (v8 == 1)
    {
      goto LABEL_30;
    }

    if (v8 != 4)
    {
      goto LABEL_20;
    }

    v10 = linkedOnOrAfter2024EReleases(a1, 4);
    v11 = tmbstrlen(*&v4[4 * v6]) + 2;
    if (v10)
    {
      a1 = malloc_type_malloc(v11, 0xC5463CA8uLL);
      if (a1)
      {
LABEL_22:
        v12 = a1;
        *a1 = 34;
        tmbstrcat(a1, *&v4[4 * v6]);
        tmbstrcat(v12, "");
        v13 = WriteOptionString(i, v12, a2);
        if (linkedOnOrAfter2024EReleases(v13, v14))
        {
          free(v12);
        }

        else
        {
          _MemFree(v12);
        }
      }

      else
      {
        FatalError("Out of memory!");
      }

      goto LABEL_30;
    }

    a1 = _MemAlloc(v11);
    if (a1)
    {
      goto LABEL_22;
    }

LABEL_31:
    if (a1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t SaveConfigSink(uint64_t a1, __n128 *a2)
{
  UserOutput(a2, *(a1 + 160), *(a1 + 168));
  v4 = v3;
  v5 = SaveConfigToStream(a1, v3);
  if (linkedOnOrAfter2024EReleases(v5, v6))
  {
    free(v4);
  }

  else
  {
    _MemFree(v4);
  }

  return v5;
}

uint64_t ParseInt(uint64_t a1, const char **a2)
{
  v4 = a1 + 112;
  v5 = SkipWhite(a1 + 112);
  if (IsDigit(v5))
  {
    v13 = 0;
    do
    {
      if (*(a1 + 1556) == -1)
      {
        Char = -1;
      }

      else
      {
        v14 = *(a1 + 1560);
        if (v14)
        {
          Char = ReadChar(v14, v6, v7, v8, v9, v10, v11, v12);
        }

        else
        {
          Char = -1;
        }

        *(a1 + 1556) = Char;
      }

      v13 = v5 - 48 + 10 * v13;
      v5 = Char;
    }

    while (IsDigit(Char));
    v16 = *a2;
    if (v16 <= 0x58)
    {
      *(v4 + 8 * v16) = v13;
    }

    return 1;
  }

  else
  {
    ReportBadArgument(a1, a2[1]);
    return 0;
  }
}

uint64_t ParseCharEnc(uint64_t a1, const char **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  v4 = a1 + 112;
  v5 = SkipWhite(a1 + 112);
  if (v5 == -1)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = v7;
      if (IsWhite(v6))
      {
        break;
      }

      *(v21 + v8) = ToLower(v6);
      if (*(a1 + 1556) == -1)
      {
        goto LABEL_11;
      }

      v16 = *(a1 + 1560);
      if (!v16)
      {
        *(a1 + 1556) = -1;
LABEL_11:
        ++v8;
        break;
      }

      Char = ReadChar(v16, v9, v10, v11, v12, v13, v14, v15);
      *(a1 + 1556) = Char;
      if (v8 <= 0x3C)
      {
        v6 = Char;
        v7 = v8 + 1;
        if (Char != -1)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  *(v21 + v8) = 0;
  CharEncodingFromOptName = GetCharEncodingFromOptName(v21);
  if ((CharEncodingFromOptName & 0x80000000) != 0)
  {
    ReportBadArgument(a1, a2[1]);
    return 0;
  }

  else
  {
    v19 = *a2;
    if (v19 < 0x59)
    {
      *(v4 + 8 * v19) = CharEncodingFromOptName;
      if (*a2 == 4)
      {
        AdjustCharEncoding(a1, CharEncodingFromOptName);
      }
    }

    return 1;
  }
}

uint64_t ParseNewline(uint64_t a1, const char **a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v4 = a1 + 112;
  v5 = SkipWhite(a1 + 112);
  v6 = v23;
  if (v5 != -1)
  {
    v7 = v5;
    v8 = 0;
    while (1)
    {
      if (IsWhite(v7) || v7 == 10 || v7 == 13)
      {
        v6 = v23 + v8;
        goto LABEL_15;
      }

      *(v23 + v8) = v7;
      if (*(a1 + 1556) == -1)
      {
        break;
      }

      v16 = *(a1 + 1560);
      if (!v16)
      {
        *(a1 + 1556) = -1;
        break;
      }

      Char = ReadChar(v16, v9, v10, v11, v12, v13, v14, v15);
      *(a1 + 1556) = Char;
      v18 = v8 + 1;
      if (Char != -1)
      {
        v7 = Char;
        if (v8++ < 0xF)
        {
          continue;
        }
      }

      v6 = v23 + v18;
      goto LABEL_15;
    }

    v6 = v23 + v8 + 1;
  }

LABEL_15:
  *v6 = 0;
  if (tmbstrcasecmp(v23, "lf"))
  {
    if (tmbstrcasecmp(v23, "crlf"))
    {
      if (tmbstrcasecmp(v23, "cr"))
      {
        ReportBadArgument(a1, a2[1]);
        return 0;
      }

      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *a2;
  if (v22 <= 0x58)
  {
    *(v4 + 8 * v22) = v21;
  }

  return 1;
}

uint64_t ParseDocType(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  memset(v19, 0, sizeof(v19));
  v4 = SkipWhite(a1 + 112);
  if (v4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4;
    if (v4 == 34 || v4 == 39)
    {
      ParseString();
      v6 = 4;
      goto LABEL_25;
    }

    v8 = 0;
    while (1)
    {
      v7 = v8;
      if (IsWhite(v5))
      {
        break;
      }

      *(v19 + v7) = v5;
      if (*(a1 + 1556) == -1)
      {
        goto LABEL_14;
      }

      v16 = *(a1 + 1560);
      if (!v16)
      {
        *(a1 + 1556) = -1;
LABEL_14:
        ++v7;
        break;
      }

      Char = ReadChar(v16, v9, v10, v11, v12, v13, v14, v15);
      *(a1 + 1556) = Char;
      if (v7 <= 0x1D)
      {
        v5 = Char;
        v8 = v7 + 1;
        if (Char != -1)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  *(v19 + v7) = 0;
  if (tmbstrcasecmp(v19, "auto"))
  {
    if (tmbstrcasecmp(v19, "omit"))
    {
      if (tmbstrcasecmp(v19, "strict"))
      {
        if (tmbstrcasecmp(v19, "loose") && tmbstrcasecmp(v19, "transitional"))
        {
          ReportBadArgument(a1, *(a2 + 8));
          return 0;
        }

        v6 = 3;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_25:
  *(a1 + 176) = v6;
  return 1;
}

uint64_t ParseRepeatAttr(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(v18, 0, sizeof(v18));
  v4 = SkipWhite(a1 + 112);
  if (v4 == -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = v6;
      if (IsWhite(v5))
      {
        break;
      }

      *(v18 + v7) = v5;
      if (*(a1 + 1556) == -1)
      {
        goto LABEL_11;
      }

      v15 = *(a1 + 1560);
      if (!v15)
      {
        *(a1 + 1556) = -1;
LABEL_11:
        ++v7;
        break;
      }

      Char = ReadChar(v15, v8, v9, v10, v11, v12, v13, v14);
      *(a1 + 1556) = Char;
      if (v7 <= 0x3D)
      {
        v5 = Char;
        v6 = v7 + 1;
        if (Char != -1)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  *(v18 + v7) = 0;
  if (tmbstrcasecmp(v18, "keep-first"))
  {
    if (tmbstrcasecmp(v18, "keep-last"))
    {
      ReportBadArgument(a1, *(a2 + 8));
      return 0;
    }

    else
    {
      result = 1;
      *(a1 + 192) = 1;
    }
  }

  else
  {
    *(a1 + 192) = 0;
    return 1;
  }

  return result;
}

uint64_t ParseString()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v32 = *MEMORY[0x29EDCA608];
  v4 = SkipWhite(v0 + 112);
  v12 = v4;
  if (v4 == 39 || v4 == 34)
  {
    if (*(v3 + 1556) == -1)
    {
      v15 = v4;
      v12 = -1;
    }

    else
    {
      v13 = *(v3 + 1560);
      if (v13)
      {
        Char = ReadChar(v13, v5, v6, v7, v8, v9, v10, v11);
      }

      else
      {
        Char = -1;
      }

      *(v3 + 1556) = Char;
      v15 = v12;
      v12 = Char;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = 8190;
  v19 = 1;
  while (1)
  {
    v20 = v12 + 1 > 0xE || ((1 << (v12 + 1)) & 0x4801) == 0;
    if (!v20 || v15 && v12 == v15)
    {
      break;
    }

    if (IsWhite(v12))
    {
      if (v17)
      {
        LOBYTE(v12) = 32;
        goto LABEL_29;
      }

      if (*(v3 + 1556) == -1)
      {
        v12 = -1;
      }

      else
      {
        v28 = *(v3 + 1560);
        if (v28)
        {
          v12 = ReadChar(v28, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          v12 = -1;
        }

        *(v3 + 1556) = v12;
      }

      v17 = 0;
      if (!v19)
      {
        break;
      }
    }

    else
    {
LABEL_29:
      v31[v16] = v12;
      if (*(v3 + 1556) == -1)
      {
        v12 = -1;
      }

      else
      {
        v29 = *(v3 + 1560);
        if (v29)
        {
          v12 = ReadChar(v29, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          v12 = -1;
        }

        *(v3 + 1556) = v12;
      }

      v19 = v16 < 0x1FFD;
      v17 = 1;
      if (++v16 == 8190)
      {
        goto LABEL_38;
      }
    }
  }

  v18 = v16;
LABEL_38:
  v31[v18] = 0;
  SetOptionValue(v3, *v2, v31);
  return 1;
}

BOOL ParseName(uint64_t a1, const char **a2)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(v18, 0x400uLL);
  v4 = SkipWhite(a1 + 112);
  if (v4 == -1)
  {
LABEL_10:
    ReportBadArgument(a1, a2[1]);
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = v6;
      if (IsWhite(v5))
      {
        break;
      }

      v18[v7] = v5;
      if (*(a1 + 1556) == -1)
      {
        goto LABEL_12;
      }

      v15 = *(a1 + 1560);
      if (!v15)
      {
        *(a1 + 1556) = -1;
LABEL_12:
        v18[v7 + 1] = 0;
        LODWORD(v7) = 1;
        goto LABEL_13;
      }

      Char = ReadChar(v15, v8, v9, v10, v11, v12, v13, v14);
      *(a1 + 1556) = Char;
      if (v7 <= 0x3FC)
      {
        v5 = Char;
        v6 = v7 + 1;
        if (Char != -1)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v18[v7] = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_13:
    SetOptionValue(a1, *a2, v18);
    return v7 != 0;
  }
}

uint64_t ParseBool(uint64_t a1, unsigned int *a2)
{
  v6 = 0;
  result = ParseTriState(0, a1, a2, &v6);
  if (result)
  {
    v5 = *a2;
    if (v5 <= 0x58)
    {
      *(a1 + 8 * v5 + 112) = v6 != 0;
    }
  }

  return result;
}

uint64_t ParseAutoBool(uint64_t a1, unsigned int *a2)
{
  v6 = 0;
  result = ParseTriState(2, a1, a2, &v6);
  if (result)
  {
    v5 = *a2;
    if (v5 <= 0x58)
    {
      *(a1 + 8 * v5 + 112) = v6;
    }
  }

  return result;
}

uint64_t ParseCSS1Selector(uint64_t a1, unsigned int *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  memset(v18, 0, sizeof(v18));
  v4 = SkipWhite(a1 + 112);
  if (v4 == -1)
  {
    LOBYTE(v18[0]) = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = v6;
      if (IsWhite(v5))
      {
        break;
      }

      *(v18 + v7) = v5;
      if (*(a1 + 1556) == -1)
      {
        goto LABEL_11;
      }

      v15 = *(a1 + 1560);
      if (!v15)
      {
        *(a1 + 1556) = -1;
LABEL_11:
        ++v7;
        break;
      }

      Char = ReadChar(v15, v8, v9, v10, v11, v12, v13, v14);
      *(a1 + 1556) = Char;
      if (v7 <= 0xFC)
      {
        v5 = Char;
        v6 = v7 + 1;
        if (Char != -1)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    *(v18 + v7) = 0;
    if (v7 && IsCSS1Selector(v18))
    {
      *(v18 + v7) = 45;
      *(v18 + (v7 + 1)) = 0;
      SetOptionValue(a1, *a2, v18);
      return 1;
    }
  }

  ReportBadArgument(a1, *(a2 + 1));
  return 0;
}

BOOL ParseTagNames(uint64_t a1, const char **a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v39 = a1 + 112;
  v4 = SkipWhite(a1 + 112);
  v5 = *a2 - 75;
  if (v5 >= 4)
  {
    ReportUnknownOption(a1, a2[1]);
    return 0;
  }

  Char = v4;
  v7 = dword_2999659F0[v5];
  SetOptionValue(a1, *a2, 0);
  FreeDeclaredTags(a1, v7);
  v15 = 0;
  *(a1 + 1552) |= v7;
  while (Char <= 0x2C && ((1 << Char) & 0x100100000200) != 0)
  {
    if (*(a1 + 1556) == -1)
    {
      return v15 != 0;
    }

    v16 = *(a1 + 1560);
    if (v16)
    {
      Char = ReadChar(v16, v8, v9, v10, v11, v12, v13, v14);
    }

    else
    {
      Char = -1;
    }

    *(a1 + 1556) = Char;
LABEL_45:
    if (Char == -1)
    {
      return v15 != 0;
    }
  }

  if (Char != 13 && Char != 10)
  {
LABEL_23:
    if (Char == -1)
    {
      return v15 != 0;
    }

    v28 = 0;
    while (1)
    {
      v29 = v28;
      if (IsWhite(Char) || Char == 44)
      {
        break;
      }

      v40[v29] = Char;
      if (*(a1 + 1556) == -1)
      {
        Char = -1;
LABEL_36:
        v40[v29 + 1] = 0;
        goto LABEL_37;
      }

      v30 = *(a1 + 1560);
      if (!v30)
      {
        Char = -1;
        *(a1 + 1556) = -1;
        goto LABEL_36;
      }

      v31 = ReadChar(v30, v8, v9, v10, v11, v12, v13, v14);
      Char = v31;
      *(a1 + 1556) = v31;
      if (v29 <= 0x3FC)
      {
        v28 = v29 + 1;
        if (v31 != -1)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v40[v29] = 0;
    if (!v29)
    {
      goto LABEL_45;
    }

LABEL_37:
    v32 = *a2;
    v33 = *(v39 + 8 * v32);
    if (v33)
    {
      v34 = tmbstrlen(v40);
      v35 = tmbstrlen(v33);
      v36 = tmbstrndup(v33, &v35[v34 + 3]);
      tmbstrcat(v36, ", ");
      tmbstrcat(v36, v40);
      v33 = v36;
    }

    else
    {
      v36 = v40;
    }

    DefineTag(a1, v7, v40);
    v37 = SetOptionValue(a1, v32, v36);
    if (v33)
    {
      if (linkedOnOrAfter2024EReleases(v37, v8))
      {
        free(v33);
      }

      else
      {
        _MemFree(v33);
      }
    }

    ++v15;
    goto LABEL_45;
  }

  if (*(a1 + 1556) == -1)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  v17 = *(a1 + 1560);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = ReadChar(v17, v8, v9, v10, v11, v12, v13, v14);
  v26 = v18;
  *(a1 + 1556) = v18;
  if (Char == 13 && v18 == 10)
  {
    v27 = *(a1 + 1560);
    if (v27)
    {
      v26 = ReadChar(v27, v19, v20, v21, v22, v23, v24, v25);
LABEL_20:
      *(a1 + 1556) = v26;
      goto LABEL_21;
    }

LABEL_19:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

LABEL_21:
  if (IsWhite(v26))
  {
    Char = v26;
    goto LABEL_23;
  }

  v40[0] = 0;
  UngetChar(v26, *(a1 + 1560));
  UngetChar(0xA, *(a1 + 1560));
  return v15 != 0;
}

_BYTE *SetOptionValue(_BYTE *result, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x58)
  {
    v4 = &result[8 * a2];
    FreeOptionValue(&option_defs[14 * a2], v4 + 14);
    result = tmbstrdup(a3, v5);
    v4[14] = result;
  }

  return result;
}

void FreeOptionValue(uint64_t a1, void **a2)
{
  if (!*(a1 + 16) && *a2 && *a2 != *(a1 + 48))
  {
    v3 = linkedOnOrAfter2024EReleases(a1, a2);
    v4 = *a2;
    if (v3)
    {
      free(v4);
      *a2 = 0;
    }

    else
    {

      _MemFree(v4);
    }
  }
}

uint64_t ParseTriState(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = SkipWhite(a2 + 112);
  v9 = v8 - 48;
  if ((v8 - 48) <= 0x3E)
  {
    if (((1 << v9) & 0x4040000040400001) != 0)
    {
      *a4 = 0;
      return 1;
    }

    if (((1 << v9) & 0x21000000002) != 0)
    {
      goto LABEL_8;
    }
  }

  if (v8 == 121 || v8 == 116)
  {
LABEL_8:
    result = 1;
    *a4 = 1;
  }

  else
  {
    if (a1 == 2 && (v8 & 0xFFFFFFDF) == 0x41)
    {
      *a4 = 2;
      return 1;
    }

    ReportBadArgument(a2, *(a3 + 8));
    return 0;
  }

  return result;
}

BOOL OptionValueIdentical(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (*(a1 + 16))
  {
    return *a2 == *a3;
  }

  v4 = *a2;
  v5 = *a3;
  if (v4 == *a3)
  {
    return 1;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && tmbstrcmp(v4, v5) == 0;
}

void ReparseTagType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = tmbstrdup(*(a1 + 8 * a2 + 112), a2);
  v5 = ParseConfigValue(a1, v2, v4);
  if (linkedOnOrAfter2024EReleases(v5, v6))
  {

    free(v4);
  }

  else
  {

    _MemFree(v4);
  }
}

uint64_t WriteOptionString(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  if (*v5)
  {
    v7 = v5 + 1;
    do
    {
      WriteChar(v6, a3);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  WriteChar(58, a3);
  WriteChar(32, a3);
  v9 = *a2;
  if (*a2)
  {
    v10 = a2 + 1;
    do
    {
      WriteChar(v9, a3);
      v11 = *v10++;
      v9 = v11;
    }

    while (v11);
  }

  return WriteChar(10, a3);
}

uint64_t WriteOptionPick(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = 0;
  do
  {
    v5 = *(*(a1 + 40) + 8 * v4);
    v6 = v4 + 1;
    if (v4 >= a2)
    {
      break;
    }

    ++v4;
  }

  while (v5);
  v7 = a2 + 1;
  v8 = 0xFFFFFFFFLL;
  if (v7 == v6 && v5)
  {
    WriteOptionString(a1, v5, a3);
    return 0;
  }

  return v8;
}

uint64_t EntityInfo(char *a1, int a2, _DWORD *a3, int *a4)
{
  v7 = (a1 + 1);
  v8 = a1[1];
  if (a1[1])
  {
    if (v8 == 35)
    {
      v9 = a1[2];
      if (v9 == 120 || !a2 && v9 == 88)
      {
        sscanf(a1 + 3, "%x");
      }

      else
      {
        sscanf(a1 + 2, "%u");
      }

      *a3 = 0;
      v15 = 0x1FFF;
    }

    else
    {
      v10 = "quot";
      v11 = &off_29F277D38;
      while (v8 != *v10 || tmbstrcmp(v7, v10))
      {
        v12 = *v11;
        v11 += 2;
        v10 = v12;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      *a3 = *(v11 - 1);
      v15 = *(v11 - 2);
    }

    *a4 = v15;
    return 1;
  }

  else
  {
LABEL_11:
    result = 0;
    *a3 = 0;
    if (a2)
    {
      v14 = 0x10000;
    }

    else
    {
      v14 = 57344;
    }

    *a4 = v14;
  }

  return result;
}

const char *EntityName(int a1, int a2)
{
  if (a1 == 34)
  {
    v2 = &entities;
    v3 = "quot";
LABEL_6:
    if ((v2[1] & a2) != 0)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = &entities;
    v2 = &entities;
    while (1)
    {
      v5 = v2[2];
      v2 += 2;
      v3 = v5;
      if (!v5)
      {
        return 0;
      }

      v6 = *(v4 + 7);
      v4 = v2;
      if (v6 == a1)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t initFileSource(void *a1, uint64_t a2)
{
  a1[1] = filesrc_getByte;
  a1[3] = filesrc_eof;
  a1[2] = filesrc_ungetByte;
  if (linkedOnOrAfter2024EReleases(a1, a2))
  {
    v4 = malloc_type_malloc(0x20uLL, 0x1030040ED9F0D2BuLL);
    if (!v4)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v4 = _MemAlloc(0x20uLL);
  }

  ClearMemory(v4, 0x20uLL);
  *v4 = a2;
  *a1 = v4;
  return 0;
}

uint64_t filesrc_getByte(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return tidyBufPopByte((a1 + 8));
  }

  else
  {
    return fgetc(*a1);
  }
}

void freeFileSource(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (a2 && v2 && *v2)
  {
    fclose(*v2);
  }

  tidyBufFree((v2 + 8));
  if (linkedOnOrAfter2024EReleases(v3, v4))
  {

    free(v2);
  }

  else
  {

    _MemFree(v2);
  }
}

void *initFileSink(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = filesink_putByte;
  return result;
}

void *DupAttrs(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = NewAttribute(a1, a2);
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  v4[6] = *(a2 + 6);
  *(v4 + 1) = v6;
  *(v4 + 2) = v5;
  *v4 = v7;
  *v4 = DupAttrs(a1, *a2);
  v4[5] = tmbstrdup(*(a2 + 5), v8);
  v4[6] = tmbstrdup(*(a2 + 6), v9);
  v4[1] = FindAttribute(a1, v4);
  v10 = *(a2 + 2);
  if (v10)
  {
    v11 = CloneNode(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v4[2] = v11;
  v12 = *(a2 + 3);
  if (v12)
  {
    v13 = CloneNode(a1, v12);
  }

  else
  {
    v13 = 0;
  }

  v4[3] = v13;
  return v4;
}

void *PushInline(void *result, uint64_t a2)
{
  if (!*(a2 + 96))
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      if ((v3[8] & 0x810) == 0x10)
      {
        v4 = result;
        v5 = result[13];
        v6 = *(v5 + 148);
        if (*v3 != 36)
        {
          v13 = v6 - 1;
          while ((v13 & 0x80000000) == 0)
          {
            v14 = *(*(v5 + 136) + 32 * (v13-- & 0x7FFFFFFF) + 8);
            if (v14 == v3)
            {
              return result;
            }
          }
        }

        v7 = *(v5 + 144);
        if (v6 + 1 <= v7)
        {
          v12 = *(v5 + 136);
        }

        else
        {
          v8 = 2 * v7;
          if (!v7)
          {
            v8 = 12;
          }

          *(v5 + 144) = v8;
          v9 = linkedOnOrAfter2024EReleases(result, a2);
          v10 = *(v5 + 136);
          v11 = 32 * *(v5 + 144);
          if (v9)
          {
            v12 = malloc_type_realloc(v10, v11, 0x700401CD534F5uLL);
            if (!v12)
            {
              FatalError("Out of memory!");
              v12 = 0;
            }
          }

          else
          {
            v12 = _MemRealloc(v10, v11);
          }

          *(v5 + 136) = v12;
          v6 = *(v5 + 148);
          v3 = *(a2 + 56);
        }

        v15 = &v12[32 * v6];
        *(v15 + 1) = v3;
        *(v15 + 2) = tmbstrdup(*(a2 + 64), a2);
        result = DupAttrs(v4, *(a2 + 40));
        *(v15 + 3) = result;
        ++*(v5 + 148);
      }
    }
  }

  return result;
}

uint64_t IsPushed(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 148) - 1;
  while ((v3 & 0x80000000) == 0)
  {
    v4 = *(*(v2 + 136) + 32 * (v3-- & 0x7FFFFFFF) + 8);
    if (v4 == *(a2 + 56))
    {
      return 1;
    }
  }

  return 0;
}

void PopInline(uint64_t result, uint64_t a2)
{
  v3 = *(result + 104);
  if (!a2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 56);
  if (!v4 || (v4[8] & 0x810) != 0x10)
  {
    return;
  }

  if (*v4 == 1)
  {
    LODWORD(v5) = *(v3 + 148);
    do
    {
      if (!v5)
      {
        break;
      }

      PopIStack(result);
      v5 = *(v3 + 148);
    }

    while (**(*(v3 + 136) + 32 * v5 + 8) != 1);
  }

  else
  {
LABEL_14:
    if (*(v3 + 148))
    {
      PopIStack(result);
      if (*(v3 + 128) >= *(v3 + 136) + 32 * *(v3 + 148))
      {
        *(v3 + 128) = 0;
      }
    }
  }
}

void PopIStack(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = (*(v1 + 148) - 1);
  *(v1 + 148) = v2;
  v3 = *(v1 + 136) + 32 * v2;
  for (i = *(v3 + 24); i; i = *(v3 + 24))
  {
    *(v3 + 24) = *i;
    FreeAttribute(a1, i);
  }

  v6 = linkedOnOrAfter2024EReleases(a1, i);
  v7 = *(v3 + 16);
  if (v6)
  {
    free(v7);
  }

  else
  {
    _MemFree(v7);
  }

  *(v3 + 16) = 0;
}

BOOL IsPushedLast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  result = 0;
  if (!a2 || (v4 = *(a2 + 56)) != 0 && (*(v4 + 32) & 0x810) == 0x10)
  {
    v5 = *(v3 + 148);
    if (v5)
    {
      if (*(*(v3 + 136) + 32 * (v5 - 1) + 8) == *(a3 + 56))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t InlineDup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 152);
  result = (*(v2 + 148) - v3);
  if (result >= 1)
  {
    v5 = *(v2 + 136) + 32 * v3;
    *(v2 + 120) = a2;
    *(v2 + 128) = v5;
  }

  return result;
}

uint64_t DeferDup(uint64_t result)
{
  v1 = *(result + 104);
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  return result;
}

char *InsertedToken(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 120);
  if (*(v2 + 128))
  {
    if (!v3)
    {
      *v2 = vrev64_s32(*(*(a1 + 4832) + 32));
    }

    v3 = NewNode(v2, a2);
    *(v3 + 20) = 5;
    *(v3 + 24) = 1;
    *(v3 + 9) = *(v2 + 48);
    v5 = *(v2 + 128);
    v7 = tmbstrdup(*(v5 + 16), v6);
    *(v3 + 7) = *(v5 + 8);
    *(v3 + 8) = v7;
    *(v3 + 5) = DupAttrs(a1, *(v5 + 24));
    v8 = *(v2 + 136);
    v9 = ((*(v2 + 128) - v8) >> 5) + 1;
    v10 = v8 + 32 * v9;
    if (v9 >= *(v2 + 148))
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    *(v2 + 128) = v11;
  }

  else
  {
    *(v2 + 120) = 0;
  }

  return v3;
}

uint64_t HTMLVersion(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = v1[9];
  if (*(a1 + 288) || (v3 = v1[7]) != 0)
  {
    v3 = *(a1 + 304) == 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v1[8];
  v9 = (v2 & 0x1FFC) != 0 || (*(a1 + 176) & 0xFFFFFFFELL) == 2;
  v10 = &unk_29F278D0C;
  do
  {
    if (!v3 || (*(v10 + 1) & 0x1F) != 0)
    {
      v11 = (*v10 & 0x1FFC) == 0 && v9;
      if (!v11 && (*v10 & v7) != 0)
      {
        v12 = *(v10 - 1);
        v13 = v6 - 1;
        if (v6 - 1 >= v12)
        {
          v6 = *(v10 - 1);
        }

        if (v13 >= v12)
        {
          v5 = v4;
        }
      }
    }

    ++v4;
    v10 += 8;
  }

  while (v4 != 17);
  if (v6)
  {
    return *(&W3C_Doctypes + 8 * v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t IsWhite(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return (lexmap[a1] >> 3) & 1;
  }
}

uint64_t IsNewline(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return (lexmap[a1] >> 4) & 1;
  }
}

uint64_t IsDigit(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return lexmap[a1] & 1;
  }
}

uint64_t IsLetter(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return (lexmap[a1] >> 1) & 1;
  }
}

uint64_t IsNamechar(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return (lexmap[a1] >> 2) & 1;
  }
}

BOOL IsXMLLetter(unsigned int a1, double a2, int32x2_t a3)
{
  a3.i32[0] = a1;
  v3.i32[0] = a1;
  v3.i32[1] = a1 & 0xFFFFFFDF;
  v4 = vdupq_lane_s32(v3, 0);
  v4.i32[1] = a1 & 0xFFFFFFDF;
  v5 = vdupq_n_s32(a1);
  v6 = 1;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_299965B00, vaddq_s32(v4, xmmword_299965AE0)), vcgtq_u32(xmmword_299965B10, vaddq_s32(v5, xmmword_299965AF0))))) & 1) == 0 && a1 - 461 >= 0x24 && a1 - 506 >= 0x1E && a1 - 592 >= 0x59)
  {
    v7 = a1 & 0xFFFFFFF8;
    if ((a1 & 0xFFFFFFF8) != 0xF8)
    {
      v8 = a1 & 0xFFFFFFFE;
      if ((a1 & 0xFFFFFFFE) != 0x1F4 && a1 - 699 >= 7 && (a1 - 902 > 6 || ((1 << (a1 + 122)) & 0x5D) == 0) && a1 - 910 >= 0x14 && a1 - 931 >= 0x2C)
      {
        if (a1 - 976 < 0x11 && ((0x1547Fu >> (a1 + 48)) & 1) != 0)
        {
          return 1;
        }

        v10 = vdupq_lane_s32(a3, 0);
        v6 = 1;
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_299965B40, vaddq_s32(v10, xmmword_299965B20)), vcgtq_u32(xmmword_299965B50, vaddq_s32(v10, xmmword_299965B30))))) & 1) == 0 && a1 - 1232 >= 0x1C && a1 - 1262 >= 8 && v8 != 1272)
        {
          v6 = 1;
          if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_299965B80, vaddq_s32(v10, xmmword_299965B60)), vcgtq_u32(xmmword_299965B90, vaddq_s32(v10, xmmword_299965B70))))) & 1) == 0 && a1 - 1728 >= 0xF && a1 != 1369)
          {
            v11 = a1 & 0xFFFFFFFC;
            if ((a1 & 0xFFFFFFFC) != 0x6D0 && (a1 - 1749 > 0x11 || ((1 << (a1 + 43)) & 0x30001) == 0))
            {
              v6 = 1;
              if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965BB0, vaddq_s32(v5, xmmword_299965BA0)))) & 1) == 0 && a1 - 2451 >= 0x16 && a1 != 2365)
              {
                if (a1 - 2474 >= 9)
                {
                  if (a1 - 2579 < 0x16)
                  {
                    return 1;
                  }
                }

                else if ((0x17Fu >> (a1 + 86)))
                {
                  return 1;
                }

                v6 = 1;
                if (a1 - 2602 <= 0x34 && ((1 << (a1 - 42)) & 0x1780000000DB7FLL) != 0 || a1 - 2524 <= 0x34 && ((1 << (a1 + 36)) & 0x187E000030003BLL) != 0 || a1 - 2486 < 4)
                {
                  return v6;
                }

                if (a1 - 2674 < 3)
                {
                  return 1;
                }

                if (a1 - 2693 >= 9)
                {
                  if (a1 - 2707 < 0x16)
                  {
                    return 1;
                  }
                }

                else if ((0x17Fu >> (a1 + 123)))
                {
                  return 1;
                }

                v6 = 1;
                if (a1 - 2730 <= 0x36 && ((1 << (a1 + 86)) & 0x4000000008FB7FLL) != 0 || a1 - 2703 < 3)
                {
                  return v6;
                }

                if (a1 - 2835 < 0x16)
                {
                  return 1;
                }

                v6 = 1;
                if ((a1 - 2821 > 0x38 || ((1 << (a1 - 5)) & 0x11E6FE000000CFFLL) == 0) && (a1 - 2911 > 0x3D || ((1 << (a1 - 95)) & 0x2C7B8FC000000007) == 0) && a1 - 2908 >= 2)
                {
                  v6 = 1;
                  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_299965BE0, vaddq_s32(v10, xmmword_299965BC0)), vcgtq_u32(xmmword_299965BF0, vaddq_s32(v10, xmmword_299965BD0))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vcgtq_u32(xmmword_299965C10, vaddq_s32(v5, xmmword_299965C00)), xmmword_299965C20)) & 0xF) == 0 && a1 - 3242 >= 0xA && v8 != 2974 && v8 != 3168 && a1 - 3253 >= 5 && a1 != 3294)
                  {
                    v6 = 1;
                    if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965C40, vaddq_s32(v5, xmmword_299965C30)))) & 1) == 0 && a1 - 3585 >= 0x2E && v8 != 3296 && v8 != 3424 && (a1 - 3632 > 0x15 || ((1 << (a1 - 48)) & 0x3F000D) == 0) && (a1 - 3713 > 0xC || ((1 << (a1 + 127)) & 0x12CB) == 0) && v11 != 3732 && a1 - 3737 >= 7)
                    {
                      if (a1 - 3745 >= 7)
                      {
                        if (v8 == 3754)
                        {
                          return v6;
                        }
                      }

                      else if (v8 == 3754 || ((0x57u >> (a1 + 95)) & 1) != 0)
                      {
                        return v6;
                      }

                      if (a1 - 3757 > 0x10 || ((1 << (a1 + 83)) & 0x1006B) == 0)
                      {
                        v6 = 1;
                        if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965C60, vaddq_s32(v5, xmmword_299965C50)))) & 1) == 0 && v7 != 3904)
                        {
                          if (a1 - 4352 >= 0xA)
                          {
                            if (a1 - 4363 < 2)
                            {
                              return 1;
                            }
                          }

                          else
                          {
                            v6 = 1;
                            if (a1 - 4363 < 2 || ((0x2EDu >> a1) & 1) != 0)
                            {
                              return v6;
                            }
                          }

                          v6 = 1;
                          if ((a1 - 4412 > 0x2D || ((1 << (a1 - 60)) & 0x2AB823150015) == 0) && a1 - 4366 >= 5)
                          {
                            if (a1 - 4461 < 2 || a1 - 4466 <= 0x39 && ((1 << (a1 - 114)) & 0x24010000000000BLL) != 0 || v8 == 4526)
                            {
                              return 1;
                            }

                            v6 = 1;
                            if ((a1 - 4538 > 0x3F || ((1 << (a1 + 70)) & 0x80420000000001FDLL) == 0) && a1 - 4535 >= 2)
                            {
                              v6 = 1;
                              if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965C80, vaddq_s32(v5, xmmword_299965C70)))) & 1) == 0 && a1 - 7968 >= 0x26 && a1 - 8008 >= 6)
                              {
                                v6 = 1;
                                if (a1 - 8064 >= 0x35 && a1 - 8031 >= 0x1F && a1 != 8029 && v7 != 8016 && (a1 & 0xFFFFFFFD) != 0x1F59)
                                {
                                  if (a1 - 8118 >= 9 || ((0x17Fu >> (a1 + 74)) & 1) == 0)
                                  {
                                    v6 = 1;
                                    if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965CA0, vaddq_s32(v5, xmmword_299965C90)))) & 1) == 0 && a1 - 8178 >= 3 && v11 != 8144 && a1 - 8182 >= 7 && (a1 - 8486 > 8 || ((1 << (a1 - 38)) & 0x131) == 0))
                                    {
                                      v6 = 1;
                                      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965CC0, vaddq_s32(v5, xmmword_299965CB0)))) & 1) == 0 && (a1 - 44032) >> 2 >= 0xAE9)
                                      {
                                        return a1 - 19968 < 0x51A6 || a1 - 12321 < 9 || a1 == 12295;
                                      }
                                    }

                                    return v6;
                                  }

                                  return 1;
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

  return v6;
}

BOOL IsXMLNamechar(signed int a1, double a2, int32x2_t a3)
{
  if (IsXMLLetter(a1, a2, a3) || (a1 - 45) <= 0x32 && ((1 << (a1 - 45)) & 0x4000000002003) != 0)
  {
    return 1;
  }

  v5 = vdupq_n_s32(a1);
  result = 1;
  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_299965CE0, vaddq_s32(v5, xmmword_299965CD0)))) & 1) == 0 && (a1 & 0xFFFFFFFE) != 0x360)
  {
    if (a1 <= 1749)
    {
      if ((a1 - 1611) <= 0x25 && ((1 << (a1 - 75)) & 0x20000000FFLL) != 0 || (a1 - 1467) <= 9 && ((1 << (a1 + 69)) & 0x2D7) != 0)
      {
        return result;
      }
    }

    else if ((a1 - 1750) <= 0x17 && ((1 << (a1 + 42)) & 0xF67FFF) != 0 || (a1 - 2305) <= 0x3B && ((1 << (a1 - 1)) & 0x800000000000007) != 0)
    {
      return result;
    }

    if ((a1 - 2366) < 0x10)
    {
      return result;
    }

    if (a1 <= 2747)
    {
      if (a1 > 2561)
      {
        if ((a1 - 2620) <= 0x35 && ((1 << (a1 - 60)) & 0x3000000003987DLL) != 0 || (a1 - 2689) < 3 || a1 == 2562)
        {
          return result;
        }
      }

      else if ((a1 - 2492) <= 0x27 && ((1 << (a1 + 68)) & 0xC0080399FDLL) != 0 || (a1 - 2385) <= 0x32 && ((1 << (a1 - 81)) & 0x700000006000FLL) != 0)
      {
        return result;
      }
    }

    else if (a1 <= 2875)
    {
      if ((a1 - 2748) <= 0x11 && ((1 << (a1 + 68)) & 0x3BBFD) != 0 || (a1 - 2817) < 3)
      {
        return result;
      }
    }

    else if ((a1 - 2876) <= 0x1B && ((1 << (a1 - 60)) & 0xC0398FD) != 0 || (a1 - 3006) <= 0x19 && ((1 << (a1 + 66)) & 0x200F71F) != 0 || (a1 - 2946) < 2)
    {
      return result;
    }

    if (a1 > 3269)
    {
      if ((a1 - 3390) <= 0x19 && ((1 << (a1 - 62)) & 0x200F73F) != 0 || (a1 - 3270) <= 0x3D && ((1 << (a1 + 58)) & 0x30000000000180F7) != 0 || a1 == 3633)
      {
        return result;
      }
    }

    else if (a1 <= 3141)
    {
      if ((a1 - 3134) < 7 || (a1 - 3073) < 3)
      {
        return result;
      }
    }

    else if ((a1 - 3142) <= 0x3D && ((1 << (a1 - 70)) & 0x30000000000180F7) != 0 || (a1 - 3262) < 7)
    {
      return result;
    }

    if ((a1 - 3636) >= 7 && ((a1 - 3761) > 0x1C || ((1 << (a1 + 79)) & 0x1F800DF9) == 0) && (a1 - 3655) >= 8 && ((a1 - 3864) > 0x27 || ((1 << (a1 - 24)) & 0xC2A0000003) == 0) && (a1 - 3953) >= 0x14 && (a1 - 3974) >= 6)
    {
      if ((a1 - 3984) >= 8)
      {
        if ((a1 - 3993) < 0x15)
        {
          return result;
        }
      }

      else if ((0xBFu >> (a1 + 112)))
      {
        return result;
      }

      if (((a1 - 4017) >= 9 || ((0x17Fu >> (a1 + 79)) & 1) == 0) && a1 != 8417 && (a1 - 8400) >= 0xD && (a1 - 12330) >= 6 && (a1 - 12441) >= 2)
      {
        v6.i32[0] = a1 & 0xFFFFFF7E;
        v6.i32[1] = a1;
        v6.i32[2] = a1;
        v6.i32[3] = a1 & 0xFFFFFF7E;
        v5.i32[3] = a1 & 0xFFFFFF7E;
        v7.i64[0] = 0xA0000000ALL;
        v7.i64[1] = 0xA0000000ALL;
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(v7, vaddq_s32(v5, xmmword_299965D00)), vcgtq_u32(xmmword_299965D10, vaddq_s32(v6, xmmword_299965CF0))))) & 1) == 0 && (a1 - 3430) >= 0xA && (a1 & 0xFFFFFF7E) - 3664 >= 0xA && (a1 - 3872) >= 0xA)
        {
          if (a1 <= 3781)
          {
            if (a1 > 902)
            {
              if (a1 == 903 || a1 == 1600 || a1 == 3654)
              {
                return result;
              }
            }

            else if ((a1 - 720) < 2 || a1 == 183)
            {
              return result;
            }

            return (a1 - 12540) < 3;
          }

          if (((a1 - 12293) > 0x30 || ((1 << (a1 - 5)) & 0x1F00000000001) == 0) && (a1 - 12445) >= 2 && a1 != 3782)
          {
            return (a1 - 12540) < 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t IsUpper(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  else
  {
    return (lexmap[a1] >> 6) & 1;
  }
}

uint64_t ToLower(uint64_t result)
{
  if (result <= 0x7F && (lexmap[result] & 0x40) != 0)
  {
    return (result + 32);
  }

  return result;
}

uint64_t ToUpper(uint64_t result)
{
  if (result <= 0x7F && (lexmap[result] & 0x20) != 0)
  {
    return (result - 32);
  }

  return result;
}

void *NewLexer(uint64_t a1, uint64_t a2)
{
  if (!linkedOnOrAfter2024EReleases(a1, a2))
  {
    v3 = _MemAlloc(0xA8uLL);
    if (!v3)
    {
      return v3;
    }

LABEL_5:
    ClearMemory(v3, 0xA8uLL);
    *v3 = 0x100000001;
    *(v3 + 14) = 0;
    v3[4] = 0xFFFFLL;
    v3[10] = a1;
    return v3;
  }

  v3 = malloc_type_malloc(0xA8uLL, 0x10300408AADE6F8uLL);
  if (v3)
  {
    goto LABEL_5;
  }

  FatalError("Out of memory!");
  return v3;
}

void FreeLexer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    return;
  }

  FreeStyles(a1, a2);
  v5 = *(v2 + 72);
  if (*(v2 + 12))
  {
    FreeNode(a1, v5);
LABEL_5:
    FreeNode(a1, *(v2 + 64));
    goto LABEL_7;
  }

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_7:
  while (*(v2 + 148))
  {
    PopInline(a1, 0);
  }

  v6 = linkedOnOrAfter2024EReleases(v4, v5);
  v7 = *(v2 + 136);
  if (v6)
  {
    free(v7);
    *(v2 + 136) = 0;
  }

  else
  {
    _MemFree(v7);
  }

  v10 = linkedOnOrAfter2024EReleases(v8, v9);
  v11 = *(v2 + 104);
  if (v10)
  {
    free(v11);
    *(v2 + 104) = 0;
  }

  else
  {
    _MemFree(v11);
  }

  if (linkedOnOrAfter2024EReleases(v12, v13))
  {
    free(v2);
  }

  else
  {
    _MemFree(v2);
  }

  *(a1 + 104) = 0;
}

void FreeNode(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      while (1)
      {
        while (1)
        {
          v4 = v2;
          v2 = *(v2 + 16);
          FreeAttrs(a1, v4);
          FreeNode(a1, *(v4 + 24));
          v7 = linkedOnOrAfter2024EReleases(v5, v6);
          v8 = *(v4 + 64);
          if (v7)
          {
            free(v8);
            *(v4 + 64) = 0;
          }

          else
          {
            _MemFree(v8);
          }

          if (*(v4 + 80))
          {
            break;
          }

          *(v4 + 24) = 0;
          if (!v2)
          {
            return;
          }
        }

        if (!linkedOnOrAfter2024EReleases(v9, v10))
        {
          break;
        }

        free(v4);
        if (!v2)
        {
          return;
        }
      }

      _MemFree(v4);
    }

    while (v2);
  }
}

void AddCharToLexer(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v16 = 0;
  v15 = 0;
  v3 = EncodeCharToUTF8Bytes(a2, &v15, 0, &v14);
  if (v3)
  {
    LOWORD(v15) = -16401;
    BYTE2(v15) = -67;
    v14 = 3;
LABEL_4:
    v5 = 0;
    while (1)
    {
      v6 = *(&v15 + v5);
      LODWORD(v7) = *(a1 + 112);
      v8 = *(a1 + 116) + 2;
      if (v8 >= v7)
      {
        do
        {
          if (v7)
          {
            v7 = (2 * v7);
          }

          else
          {
            v7 = 0x2000;
          }
        }

        while (v8 >= v7);
        v9 = linkedOnOrAfter2024EReleases(v3, v4);
        v10 = *(a1 + 104);
        if (v9)
        {
          v3 = malloc_type_realloc(v10, v7, 0xF4C325D8uLL);
          if (v3)
          {
            goto LABEL_14;
          }

          v3 = FatalError("Out of memory!");
        }

        else
        {
          v3 = _MemRealloc(v10, v7);
          if (v3)
          {
LABEL_14:
            v11 = v3;
            ClearMemory((v3 + *(a1 + 112)), (v7 - *(a1 + 112)));
            *(a1 + 104) = v11;
            *(a1 + 112) = v7;
          }
        }
      }

      v12 = *(a1 + 104);
      v13 = *(a1 + 116);
      *(a1 + 116) = v13 + 1;
      *(v12 + v13) = v6;
      *(*(a1 + 104) + *(a1 + 116)) = 0;
      if (++v5 >= v14)
      {
        return;
      }
    }
  }

  if (v14 >= 1)
  {
    goto LABEL_4;
  }
}

char *NewNode(void *a1, uint64_t a2)
{
  if (linkedOnOrAfter2024EReleases(a1, a2))
  {
    v3 = malloc_type_malloc(0x68uLL, 0x1070040B7D772A7uLL);
    if (!v3)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v3 = _MemAlloc(0x68uLL);
  }

  ClearMemory(v3, 0x68uLL);
  if (a1)
  {
    *(v3 + 84) = *a1;
  }

  *(v3 + 20) = 4;
  return v3;
}

char *CloneNode(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = NewNode(v4, a2);
  v7 = v5;
  v8 = *(v4 + 116);
  *(v5 + 18) = v8;
  *(v5 + 19) = v8;
  if (a2)
  {
    *v5 = *a2;
    *(v5 + 20) = *(a2 + 80);
    *(v5 + 92) = *(a2 + 92);
    v9 = *(a2 + 64);
    *(v7 + 7) = *(a2 + 56);
    *(v7 + 8) = tmbstrdup(v9, v6);
    *(v7 + 5) = DupAttrs(a1, *(a2 + 40));
  }

  return v7;
}

void FreeAttrs(uint64_t result, uint64_t a2)
{
  for (i = *(a2 + 40); i; i = *(a2 + 40))
  {
    if (i[5])
    {
      v5 = i[1];
      if (v5)
      {
        v6 = *v5;
        if ((v6 == 79 || v6 == 62) && IsAnchorElement(result, a2))
        {
          RemoveAnchorByNode(result, a2);
        }
      }
    }

    *(a2 + 40) = *i;
    FreeAttribute(result, i);
  }
}

void FreeAttribute(uint64_t a1, uint64_t *a2)
{
  FreeNode(a1, a2[2]);
  FreeNode(a1, a2[3]);
  v6 = linkedOnOrAfter2024EReleases(v4, v5);
  v7 = a2[5];
  if (v6)
  {
    free(v7);
    a2[5] = 0;
  }

  else
  {
    _MemFree(v7);
  }

  v10 = linkedOnOrAfter2024EReleases(v8, v9);
  v11 = a2[6];
  if (v10)
  {
    free(v11);
    a2[6] = 0;
  }

  else
  {
    _MemFree(v11);
  }

  if (linkedOnOrAfter2024EReleases(v12, v13))
  {

    free(a2);
  }

  else
  {

    _MemFree(a2);
  }
}

uint64_t DetachAttribute(uint64_t result, void *a2)
{
  v2 = 0;
  v3 = (result + 40);
  v4 = (result + 40);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v2;
    v2 = v4;
    if (v4 == a2)
    {
      if (v5)
      {
        v3 = v5;
      }

      *v3 = *a2;
      return result;
    }
  }

  return result;
}

void RemoveAttribute(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v4 = (a2 + 40);
  v5 = (a2 + 40);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = v3;
    v3 = v5;
    if (v5 == a3)
    {
      if (v6)
      {
        v4 = v6;
      }

      *v4 = *a3;
      break;
    }
  }

  FreeAttribute(a1, a3);
}

double TextToken(uint64_t a1, uint64_t a2)
{
  v3 = NewNode(a1, a2);
  result = *(a1 + 48);
  *(v3 + 9) = result;
  return result;
}

char *NewLineNode(uint64_t a1, uint64_t a2)
{
  v3 = NewNode(a1, a2);
  *(v3 + 18) = *(a1 + 116);
  AddCharToLexer(a1, 10);
  *(v3 + 19) = *(a1 + 116);
  return v3;
}

char *NewLiteralTextNode(uint64_t a1, _BYTE *a2)
{
  v4 = NewNode(a1, a2);
  v5 = *(a1 + 116);
  *(v4 + 18) = v5;
  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      AddCharToLexer(a1, v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
    v5 = *(a1 + 116);
  }

  *(v4 + 19) = v5;
  return v4;
}

void AddStringLiteral(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3)
  {
    v5 = a2 + 1;
    do
    {
      AddCharToLexer(a1, v3);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }
}

uint64_t FindDocType(uint64_t result)
{
  if (result)
  {
    for (result = *(result + 24); result; result = *(result + 16))
    {
      if (*(result + 80) == 1)
      {
        break;
      }
    }
  }

  return result;
}

void *FindContainer(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = *a1; i; i = *i)
  {
    if (!nodeHasCM(i, 16))
    {
      break;
    }
  }

  return i;
}

void *FindHTML(void *result)
{
  if (result)
  {
    for (result = result[3]; result; result = result[2])
    {
      v1 = result[7];
      if (v1 && *v1 == 48)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t FindXmlDecl(uint64_t result)
{
  if (result)
  {
    for (result = *(result + 24); result; result = *(result + 16))
    {
      if (*(result + 80) == 13)
      {
        break;
      }
    }
  }

  return result;
}

void *FindHEAD(void *result)
{
  if (result)
  {
    v1 = result[3];
    if (v1)
    {
      while (1)
      {
        v2 = v1[7];
        if (v2)
        {
          if (*v2 == 48)
          {
            break;
          }
        }

        v1 = v1[2];
        if (!v1)
        {
          return 0;
        }
      }

      for (result = v1[3]; result; result = result[2])
      {
        v3 = result[7];
        if (v3 && *v3 == 46)
        {
          break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *FindTITLE(void *a1)
{
  result = FindHEAD(a1);
  if (result)
  {
    for (result = result[3]; result; result = result[2])
    {
      v2 = result[7];
      if (v2 && *v2 == 111)
      {
        break;
      }
    }
  }

  return result;
}

void *FindBody(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result[3];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = v1[7];
    if (v2)
    {
      if (*v2 == 48)
      {
        break;
      }
    }

    v1 = v1[2];
    if (!v1)
    {
      return 0;
    }
  }

  result = v1[3];
  if (result)
  {
    while (1)
    {
      v3 = result[7];
      if (v3)
      {
        v4 = *v3;
        if (v4 == 16)
        {
          return result;
        }

        if (v4 == 39)
        {
          break;
        }
      }

      result = result[2];
      if (!result)
      {
        return result;
      }
    }

    v5 = result[3];
    if (v5)
    {
      while (1)
      {
        v6 = v5[7];
        if (v6)
        {
          if (*v6 == 71)
          {
            break;
          }
        }

        result = 0;
        v5 = v5[2];
        if (!v5)
        {
          return result;
        }
      }

      v7 = v5[3];
      if (v7)
      {
        while (1)
        {
          v8 = *(v7 + 56);
          if (v8)
          {
            if (*v8 == 16)
            {
              break;
            }
          }

          result = 0;
          v7 = *(v7 + 16);
          if (!v7)
          {
            return result;
          }
        }

        return v7;
      }
    }

    return 0;
  }

  return result;
}

uint64_t AddGenerator(void *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  result = FindHEAD(a1);
  if (result)
  {
    v3 = result;
    v4 = tidyReleaseDate();
    tmbsnprintf(v19, 256, "HTML Tidy for Mac OS X (vers %s), see www.w3.org", v4);
    v5 = *(v3 + 24);
    if (v5)
    {
      while (1)
      {
        v6 = *(v5 + 56);
        if (v6)
        {
          if (*v6 == 67)
          {
            v7 = AttrGetById(v5, 79);
            if (v7)
            {
              v8 = v7[6];
              if (v8)
              {
                if (!tmbstrcasecmp(v8, "generator"))
                {
                  v9 = AttrGetById(v5, 35);
                  if (v9)
                  {
                    v10 = v9;
                    v11 = v9[6];
                    if (v11)
                    {
                      v12 = tmbstrncasecmp(v11, "HTML Tidy", 9);
                      if (!v12)
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

        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_15;
        }
      }

      v14 = linkedOnOrAfter2024EReleases(v12, v13);
      v15 = v10[6];
      if (v14)
      {
        free(v15);
        v10[6] = 0;
      }

      else
      {
        _MemFree(v15);
      }

      v18 = tmbstrdup(v19, v16);
      result = 0;
      v10[6] = v18;
    }

    else
    {
LABEL_15:
      if (a1[93])
      {
        return 0;
      }

      else
      {
        v17 = InferredTag(a1, 67);
        AddAttribute(a1, v17, "name", "generator");
        AddAttribute(a1, v17, "content", v19);
        InsertNodeAtStart(v3, v17);
        return 1;
      }
    }
  }

  return result;
}

char *InferredTag(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 104);
  v4 = NewNode(v3, a2);
  v5 = LookupTagDef(v2);
  *(v4 + 20) = 5;
  *(v4 + 24) = 1;
  v7 = tmbstrdup(*(v5 + 1), v6);
  *(v4 + 7) = v5;
  *(v4 + 8) = v7;
  *(v4 + 9) = v3[6];
  return v4;
}

uint64_t ApparentVersion(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(v1 + 36);
  if ((v2 == 4096 || v2 == 2048) && (*(v1 + 32) & v2) != 0)
  {
    return *(v1 + 36);
  }

  else
  {
    return HTMLVersion(a1);
  }
}

char *HTMLVersionNameFromCode(int a1)
{
  if (a1 == 1)
  {
    return "HTML 2.0";
  }

  v2 = off_29F278D30;
  v3 = 17;
  do
  {
    v4 = v2;
    if (!--v3)
    {
      break;
    }

    v2 += 4;
  }

  while (*(v4 - 1) != a1);
  return *v4;
}

BOOL WarnMissingSIInEmittedDocType(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (*(v1 + 28))
  {
    return 0;
  }

  v3 = *(v1 + 40);
  if (v3 != 1)
  {
    v4 = &W3C_Doctypes;
    v5 = 17;
    while (--v5)
    {
      v6 = v4 + 8;
      v7 = v4[9];
      v4 += 8;
      if (v7 == v3)
      {
        goto LABEL_9;
      }
    }

    v6 = &unk_29F278F28;
LABEL_9:
    if (!v6[1])
    {
      return 0;
    }
  }

  v8 = &qword_29F278D20;
  v9 = 17;
  while (*(v8 - 5) != v3)
  {
    v8 += 4;
    if (!--v9)
    {
      return 0;
    }
  }

  if (!*v8)
  {
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    return 0;
  }

  while (*(v10 + 80) != 1)
  {
    v10 = *(v10 + 16);
    if (!v10)
    {
      return 0;
    }
  }

  return !GetAttrByName(v10, "SYSTEM");
}

uint64_t SetXHTMLDocType(uint64_t a1)
{
  v2 = *(a1 + 104);
  for (i = *(a1 + 24); i; i = *(i + 2))
  {
    if (*(i + 20) == 1)
    {
      break;
    }
  }

  v4 = *(a1 + 176);
  v2[10] = ApparentVersion(a1);
  if (v4 == 4)
  {
    if (!*(a1 + 184))
    {
      return 0;
    }
  }

  else if (!v4)
  {
    if (i)
    {
      DiscardElement(a1, i);
    }

    return 1;
  }

  if (i)
  {
    v7 = tmbstrtolower(*(i + 8));
  }

  else
  {
    i = NewDocTypeNode(a1, v5);
    v7 = tmbstrdup("html", v8);
  }

  *(i + 8) = v7;
  result = 0;
  if (v4 > 2)
  {
    if (v4 != 4)
    {
      if (v4 != 3)
      {
        return result;
      }

      goto LABEL_19;
    }

    RepairAttrValue(a1, i, "PUBLIC", *(a1 + 184));
    RepairAttrValue(a1, i, "SYSTEM", &unk_299967BF2);
    return 0;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    goto LABEL_35;
  }

  v10 = v2[8];
  if ((v10 & 0x800) != 0)
  {
    if (v2[9] == 2048)
    {
      if (!GetAttrByName(i, "SYSTEM"))
      {
        RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd");
      }

      v11 = 2048;
LABEL_33:
      v2[10] = v11;
      return 1;
    }

    if ((v10 & 0x7FC) == 0)
    {
      RepairAttrValue(a1, i, "PUBLIC", "-//W3C//DTD XHTML 1.1//EN");
      RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd");
      result = 0;
      v9 = 2048;
      goto LABEL_36;
    }
  }

  if ((v10 & 0x1000) != 0 && v2[9] == 4096)
  {
    if (!GetAttrByName(i, "SYSTEM"))
    {
      RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml-basic/xhtml-basic10.dtd");
    }

    v11 = 4096;
    goto LABEL_33;
  }

  if ((v10 & 0x124) != 0)
  {
LABEL_35:
    RepairAttrValue(a1, i, "PUBLIC", "-//W3C//DTD XHTML 1.0 Strict//EN");
    RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd");
    result = 0;
    v9 = 256;
    goto LABEL_36;
  }

  if ((v10 & 0x490) != 0)
  {
    RepairAttrValue(a1, i, "PUBLIC", "-//W3C//DTD XHTML 1.0 Frameset//EN");
    RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd");
    result = 0;
    v9 = 1024;
    goto LABEL_36;
  }

  if ((v10 & 0x24B) == 0)
  {
    DiscardElement(a1, i);
    return 0;
  }

LABEL_19:
  RepairAttrValue(a1, i, "PUBLIC", "-//W3C//DTD XHTML 1.0 Transitional//EN");
  RepairAttrValue(a1, i, "SYSTEM", "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd");
  result = 0;
  v9 = 512;
LABEL_36:
  v2[10] = v9;
  return result;
}

char *NewDocTypeNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      if (*v3 == 48)
      {
        break;
      }
    }

    v2 = *(v2 + 16);
    if (!v2)
    {
      return 0;
    }
  }

  v4 = NewNode(0, a2);
  *(v4 + 20) = 1;
  InsertNodeBeforeElement(v2, v4);
  return v4;
}

uint64_t FixDocType(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    do
    {
      if (*(v5 + 20) == 1)
      {
        break;
      }

      v5 = *(v5 + 2);
    }

    while (v5);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 176);
  if (!v6)
  {
    if (v5)
    {
      DiscardElement(a1, v5);
    }

    v3[10] = ApparentVersion(a1);
    return 1;
  }

  if (v6 == 1)
  {
    v7 = v3[9];
    if ((v7 & v3[8]) != 0)
    {
      if ((v7 & 0x1F00) == 0)
      {
        goto LABEL_49;
      }

      if (v3[7] && v4 != 0)
      {
        while (*(v4 + 80) != 1)
        {
          v4 = *(v4 + 16);
LABEL_49:
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        v3[10] = v7;
        return 1;
      }
    }
  }

LABEL_16:
  if (*(a1 + 288))
  {
    return 1;
  }

  if (v5)
  {
    v9 = GetAttrByName(v5, "SYSTEM") == 0;
    if ((v6 & 0xFFFFFFFE) == 2)
    {
      DiscardElement(a1, v5);
      v5 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v11 = 32;
    }

    else
    {
      if (v6 != 3)
      {
        result = 0;
        v3[10] = 0;
        return result;
      }

      v11 = 64;
    }

    v3[10] = v11;
    goto LABEL_33;
  }

  result = HTMLVersion(a1);
  v11 = result;
  v3[10] = result;
  if (result)
  {
LABEL_33:
    if (v5)
    {
      v12 = tmbstrtolower(*(v5 + 8));
    }

    else
    {
      v5 = NewDocTypeNode(a1, a2);
      v12 = tmbstrdup("html", v13);
    }

    *(v5 + 8) = v12;
    v14 = &off_29F278D18;
    v15 = 17;
    while (*(v14 - 3) != v11)
    {
      v14 += 4;
      if (!--v15)
      {
        v16 = 0;
        goto LABEL_42;
      }
    }

    v16 = *v14;
LABEL_42:
    RepairAttrValue(a1, v5, "PUBLIC", v16);
    if (!v9)
    {
      v17 = &qword_29F278D20;
      v18 = 17;
      while (*(v17 - 5) != v11)
      {
        v17 += 4;
        if (!--v18)
        {
          v19 = 0;
          goto LABEL_48;
        }
      }

      v19 = *v17;
LABEL_48:
      RepairAttrValue(a1, v5, "SYSTEM", v19);
    }

    return 1;
  }

  return result;
}

uint64_t FixXmlDecl(void *a1, uint64_t a2)
{
  v3 = a1[13];
  v4 = a1[3];
  if (!v4 || *(v4 + 20) != 13)
  {
    v4 = NewNode(v3, a2);
    *(v4 + 20) = 13;
    v5 = a1[3];
    if (v5)
    {
      InsertNodeBeforeElement(v5, v4);
    }

    else
    {
      a1[3] = v4;
    }
  }

  AttrByName = GetAttrByName(v4, "version");
  if (!GetAttrByName(v4, "encoding"))
  {
    v7 = a1[20];
    if (v7 != 4)
    {
      EncodingNameFromTidyId = GetEncodingNameFromTidyId(v7);
      if (EncodingNameFromTidyId)
      {
        AddAttribute(a1, v4, "encoding", EncodingNameFromTidyId);
      }
    }
  }

  if (!AttrByName)
  {
    AddAttribute(a1, v4, "version", "1.0");
  }

  return 1;
}

char *GetToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 104);
  v11 = *(v10 + 72);
  if (*(v10 + 12))
  {
    if (v11)
    {
      *(v10 + 12) = 0;
      return v11;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    *(v10 + 72) = 0;
LABEL_6:
    *(v10 + 12) = 0;
    v11 = *(v10 + 64);
    if (*(v11 + 20) == 4 && (*(v10 + 128) || *(v10 + 120)))
    {
      v11 = InsertedToken(a1, v11);
      *(v10 + 72) = v11;
    }

    return v11;
  }

  if ((*(v10 + 128) || *(v10 + 120)) && *(v10 + 148))
  {
    v12 = InsertedToken(a1, 0);
    v11 = v12;
    goto LABEL_14;
  }

  if (a2 != 4)
  {
    v290 = 0;
    *(v10 + 64) = 0;
    v67 = *(a1 + 4832);
    *v10 = vrev64_s32(v67[4]);
    *(v10 + 8) = 0;
    v68 = *(v10 + 116);
    *(v10 + 48) = v68;
    *(v10 + 52) = v68;
    Char = ReadChar(v67, 0, a3, a4, a5, a6, a7, a8);
    if (Char == -1)
    {
LABEL_228:
      v158 = *(v10 + 56);
      if (v158 == 4)
      {
        ReportError(a1, 0, 0, 29);
        v163 = *(v10 + 116);
        *(v10 + 52) = v163;
        *(*(v10 + 104) + v163) = 0;
        *(v10 + 56) = 0;
        *(v10 + 8) = 0;
        v237 = *(a1 + 104);
        v12 = NewNode(v237, v164);
        v11 = v12;
        v238 = 2;
        goto LABEL_242;
      }

      if (v158)
      {
        return 0;
      }

      v159 = *(v10 + 116);
      *(v10 + 52) = v159;
      if (v159 <= *(v10 + 48))
      {
        return 0;
      }

      UngetChar(0xFFFFFFFFLL, *(a1 + 4832));
LABEL_232:
      v160 = *(v10 + 116) - 1;
      if (*(*(v10 + 104) + v160) == 32)
      {
        *(v10 + 116) = v160;
        *(v10 + 52) = v160;
      }

LABEL_234:
      v12 = NewNode(v10, v75);
      v11 = v12;
      v161 = *(v10 + 48);
      goto LABEL_243;
    }

    LODWORD(v70) = Char;
    v71 = 0;
    v72 = 0;
    v73 = lexmap;
    while (2)
    {
      if (*(v10 + 16))
      {
        AddCharToLexer(v10, 32);
        *(v10 + 8) = 1;
        *(v10 + 16) = 0;
      }

      if (a2 == 2 && v70 == 160)
      {
        v70 = 32;
      }

      else
      {
        v70 = v70;
      }

      AddCharToLexer(v10, v70);
      switch(*(v10 + 56))
      {
        case 0:
          if (v70 > 0x7F)
          {
            goto LABEL_168;
          }

          v82 = v73[v70];
          if ((v82 & 8) != 0 && !a2)
          {
            v83 = *(v10 + 116);
            if (v83 == *(v10 + 48) + 1)
            {
              a2 = 0;
              *(v10 + 116) = v83 - 1;
              *(v10 + 8) = 0;
LABEL_83:
              *v10 = vrev64_s32(*(*(a1 + 4832) + 32));
              goto LABEL_198;
            }
          }

          if (v70 == 60)
          {
            *(v10 + 56) = 1;
          }

          else
          {
            if ((v82 & 8) == 0)
            {
              if (v70 == 38 && a2 != 3)
              {
                ParseEntity(a1, a2, v76, v77, v78, v79, v80, v81);
              }

LABEL_168:
              if (a2 <= 1)
              {
                a2 = 1;
              }

              else
              {
                a2 = a2;
              }

              goto LABEL_171;
            }

            if (*(v10 + 8))
            {
              if ((a2 - 4) <= 0xFFFFFFFD)
              {
                --*(v10 + 116);
                goto LABEL_83;
              }
            }

            else
            {
              *(v10 + 8) = 1;
              if ((a2 - 4) <= 0xFFFFFFFD && v70 != 32)
              {
                v150 = *(v10 + 116);
                if (v150)
                {
                  *(*(v10 + 104) + (v150 - 1)) = 32;
                }
              }
            }
          }

          goto LABEL_198;
        case 1:
          if (v70 == 47)
          {
            v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
            if (v104 == -1)
            {
LABEL_158:
              v141 = *(a1 + 4832);
LABEL_159:
              UngetChar(v104, v141);
            }

            else
            {
              v128 = v104;
              AddCharToLexer(v10, v104);
              if (v128 > 0x7F || (v73[v128] & 2) == 0)
              {
LABEL_150:
                *(v10 + 8) = 0;
LABEL_151:
                *(v10 + 56) = 0;
                goto LABEL_198;
              }

              v129 = *(v10 + 116) - 3;
              *(v10 + 116) = v129;
              *(v10 + 52) = v129;
              UngetChar(v128, *(a1 + 4832));
              *(v10 + 56) = 2;
              *(*(v10 + 104) + *(v10 + 116)) = 0;
              *(*(a1 + 4832) + 32) -= 2;
              if (*(v10 + 52) > *(v10 + 48))
              {
                if (!a2)
                {
                  goto LABEL_232;
                }

                goto LABEL_234;
              }
            }
          }

          else
          {
            if (a2 == 3)
            {
              goto LABEL_150;
            }

            if (v70 > 36)
            {
              if (v70 == 37)
              {
                v145 = *(v10 + 116) - 2;
                *(v10 + 116) = v145;
                v146 = 10;
                goto LABEL_195;
              }

              if (v70 == 63)
              {
                v145 = *(v10 + 116) - 2;
                *(v10 + 116) = v145;
                *(v10 + 56) = 6;
LABEL_196:
                *(v10 + 52) = v145;
                if (v145 > *(v10 + 48))
                {
                  goto LABEL_234;
                }

LABEL_197:
                *(v10 + 48) = v145;
                goto LABEL_198;
              }
            }

            else
            {
              if (v70 == 33)
              {
                v149 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
                if (v149 == 45)
                {
                  if (ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81) != 45)
                  {
                    ReportError(a1, 0, 0, 29);
                    goto LABEL_221;
                  }

                  v145 = *(v10 + 116) - 2;
                  *(v10 + 116) = v145;
                  v146 = 4;
                  goto LABEL_195;
                }

                if ((v149 & 0xFFFFFFDF) == 0x44)
                {
                  v151 = *(v10 + 116) - 2;
                  *(v10 + 116) = v151;
                  *(v10 + 52) = v151;
                  *(v10 + 56) = 5;
                  do
                  {
                    v152 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
                    if (v152 == -1 || v152 == 62)
                    {
                      goto LABEL_214;
                    }
                  }

                  while (v152 > 0x7F || (v73[v152] & 8) == 0);
                  do
                  {
                    v152 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
                  }

                  while (v152 != -1 && v152 != 62 && v152 <= 0x7F && (v73[v152] & 8) != 0);
LABEL_214:
                  UngetChar(v152, *(a1 + 4832));
                  if (*(v10 + 52) > *(v10 + 48))
                  {
                    goto LABEL_234;
                  }

                  a2 = 0;
                  v145 = *(v10 + 116);
                  goto LABEL_197;
                }

                if (v149 == 91)
                {
                  v145 = *(v10 + 116) - 2;
                  *(v10 + 116) = v145;
                  v146 = 9;
LABEL_195:
                  *(v10 + 56) = v146;
                  goto LABEL_196;
                }

                do
                {
LABEL_221:
                  v154 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
                  if (v154 == 62)
                  {
                    goto LABEL_224;
                  }
                }

                while (v154 != -1);
                UngetChar(v154, *(a1 + 4832));
LABEL_224:
                v155 = *(v10 + 116) - 2;
                *(v10 + 116) = v155;
                *(*(v10 + 104) + v155) = 0;
                goto LABEL_151;
              }

              if (v70 == 35)
              {
                v145 = *(v10 + 116) - 2;
                *(v10 + 116) = v145;
                v146 = 11;
                goto LABEL_195;
              }
            }

            if (v70 > 0x7F)
            {
              goto LABEL_190;
            }

            if ((v73[v70] & 2) == 0)
            {
              if (v70 == 38)
              {
                UngetChar(0x26, *(a1 + 4832));
                --*(v10 + 116);
              }

LABEL_190:
              *(v10 + 56) = 0;
LABEL_171:
              *(v10 + 8) = 0;
              goto LABEL_198;
            }

            UngetChar(v70, *(a1 + 4832));
            UngetChar(0x3C, *(a1 + 4832));
            --*(*(a1 + 4832) + 32);
            v153 = *(v10 + 116) - 2;
            *(v10 + 116) = v153;
            *(v10 + 52) = v153;
            *(v10 + 56) = 3;
            if (v153 > *(v10 + 48))
            {
              goto LABEL_234;
            }
          }

LABEL_198:
          LODWORD(v70) = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v70 == -1)
          {
            goto LABEL_228;
          }

          continue;
        case 2:
          *(v10 + 48) = *(v10 + 116) - 1;
          *(*(a1 + 4832) + 32) += 2;
          v95 = ParseTagName(a1, v75, v76, v77, v78, v79, v80, v81);
          *(v10 + 64) = TagToken(a1, 6);
          v103 = *(v10 + 48);
          *(v10 + 52) = v103;
          *(v10 + 116) = v103;
          while (2)
          {
            if (v95 != -1)
            {
              if (v95 != 62)
              {
                v95 = ReadChar(*(a1 + 4832), v96, v97, v98, v99, v100, v101, v102);
                continue;
              }

              *(v10 + 56) = 0;
              *(v10 + 8) = 0;
              return *(v10 + 64);
            }

            break;
          }

          FreeNode(a1, *(v10 + 64));
          goto LABEL_198;
        case 3:
          v220 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          v228 = *(v10 + 116);
          if (v228)
          {
            *(*(v10 + 104) + (v228 - 1)) = v220;
            v229 = *(v10 + 116) - 1;
          }

          else
          {
            v229 = -1;
          }

          *(v10 + 48) = v229;
          v241 = ParseTagName(a1, v221, v222, v223, v224, v225, v226, v227);
          v290 = 0;
          v242 = TagToken(a1, 5);
          *(v10 + 64) = v242;
          if (v241 == 62)
          {
            v250 = 0;
          }

          else
          {
            if (v241 == 47)
            {
              UngetChar(0x2F, *(a1 + 4832));
            }

            v250 = ParseAttrs(a1, &v290, v244, v245, v246, v247, v248, v249);
            v242 = *(v10 + 64);
            if (v290)
            {
              *(v242 + 20) = 7;
            }
          }

          *(v242 + 5) = v250;
          v251 = *(v10 + 48);
          *(v10 + 52) = v251;
          *(v10 + 116) = v251;
          if (a2 != 2 && *(v242 + 20) == 5)
          {
            v252 = *(v242 + 7);
            if (!v252 || (*(v252 + 32) & 1) == 0)
            {
              goto LABEL_353;
            }
          }

          v253 = *(v242 + 7);
          if (v253)
          {
            v254 = *v253;
            if (v254 == 47 || v254 == 17)
            {
LABEL_353:
              v256 = ReadChar(*(a1 + 4832), v243, v244, v245, v246, v247, v248, v249);
              LODWORD(v253) = 1;
              if (v256 != 10 && v256 != 12)
              {
                UngetChar(v256, *(a1 + 4832));
                LODWORD(v253) = 1;
              }
            }

            else
            {
              LODWORD(v253) = 0;
            }
          }

          *(v10 + 8) = v253;
          *(v10 + 56) = 0;
          v264 = *(v10 + 64);
          v265 = *(v264 + 56);
          if (!v265)
          {
            ReportFatal(a1, 0, *(v10 + 64), 22, v246, v247, v248, v249, v282);
            return *(v10 + 64);
          }

          if (*(a1 + 280))
          {
            return *(v10 + 64);
          }

          v266 = v265[4];
          *(*(a1 + 104) + 32) &= v266 | 0xE000;
          if ((v266 & 0xE000) == 0)
          {
            goto LABEL_399;
          }

          if (*(a1 + 344))
          {
            v267 = *v265;
            if (v267 == 69 || v267 == 117)
            {
              goto LABEL_399;
            }
          }

          ReportError(a1, 0, v264, 21);
          v268 = *(v264 + 56);
          if (!v268)
          {
            goto LABEL_399;
          }

          v269 = *v268;
          switch(v269)
          {
            case ';':
              v270 = 2;
              break;
            case 'E':
              v270 = 4;
              break;
            case 'a':
              v270 = 1;
              break;
            default:
              goto LABEL_399;
          }

          *(a1 + 4904) |= v270;
LABEL_399:
          RepairDuplicateAttributes(a1, v264);
          return *(v10 + 64);
        case 4:
          if (v70 != 45)
          {
            goto LABEL_198;
          }

          v84 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          v85 = v84;
          AddCharToLexer(v10, v84);
          if (v85 != 45)
          {
            goto LABEL_198;
          }

          v86 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v86 == 62)
          {
            goto LABEL_244;
          }

          while (1)
          {
            if (!v72)
            {
              v87 = *(*(a1 + 4832) + 32) - 3;
              *v10 = *(*(a1 + 4832) + 36);
              *(v10 + 4) = v87;
            }

            if (*(a1 + 384))
            {
              *(*(v10 + 104) + (*(v10 + 116) - 2)) = 61;
            }

            ++v72;
            if (v86 != 45)
            {
              break;
            }

            AddCharToLexer(v10, v86);
            v86 = ReadChar(*(a1 + 4832), v88, v89, v90, v91, v92, v93, v94);
            if (v86 == 62)
            {
LABEL_244:
              if (v72)
              {
                ReportError(a1, 0, 0, 29);
              }

              v165 = *(v10 + 116) - 2;
              *(v10 + 116) = v165;
              *(v10 + 52) = v165;
              *(*(v10 + 104) + v165) = 0;
              *(v10 + 56) = 0;
              *(v10 + 8) = 0;
              v166 = *(a1 + 104);
              v167 = NewNode(v166, v86);
              *(v167 + 20) = 2;
              *(v167 + 9) = v166[6];
              *(v10 + 64) = v167;
              v175 = ReadChar(*(a1 + 4832), v168, v169, v170, v171, v172, v173, v174);
              if (v175 == 10)
              {
                v11 = *(v10 + 64);
                *(v11 + 25) = 1;
                return v11;
              }

              UngetChar(v175, *(a1 + 4832));
              return *(v10 + 64);
            }
          }

          *(*(v10 + 104) + (*(v10 + 116) - 1)) = 61;
          AddCharToLexer(v10, v86);
          goto LABEL_198;
        case 5:
          v176 = v73;
          UngetChar(v70, *(a1 + 4832));
          --*(v10 + 116);
          v177 = *(a1 + 104);
          v178 = *(v177 + 116);
          v180 = NewNode(v177, v179);
          *(v180 + 20) = 1;
          v284 = v180;
          *(v180 + 9) = *(v177 + 48);
          *(v177 + 8) = 0;
          v188 = ReadChar(*(a1 + 4832), v181, v182, v183, v184, v185, v186, v187);
          if (v188 == -1)
          {
            goto LABEL_325;
          }

          v195 = v188;
          v286 = 0;
          v196 = 1;
          v283 = 1;
          break;
        case 6:
          v131 = *(v10 + 116);
          v132 = *(v10 + 48);
          if (v131 - v132 != 3)
          {
            goto LABEL_136;
          }

          if (!tmbstrncmp((*(v10 + 104) + v132), "php", 3))
          {
            v147 = 12;
LABEL_176:
            *(v10 + 56) = v147;
            goto LABEL_198;
          }

          v131 = *(v10 + 116);
          LODWORD(v132) = *(v10 + 48);
LABEL_136:
          if (v131 - v132 == 4 && !tmbstrncmp((*(v10 + 104) + v132), "xml", 3))
          {
            v148 = *(*(v10 + 104) + (*(v10 + 48) + 3));
            if ((v148 & 0x8000000000000000) == 0 && (v73[v148] & 8) != 0)
            {
              v71 = 0;
              v147 = 13;
              goto LABEL_176;
            }
          }

          if (!*(a1 + 504) && !*(v10 + 28))
          {
            goto LABEL_143;
          }

          if (v70 != 63)
          {
            goto LABEL_198;
          }

          v133 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v133 != -1)
          {
            LODWORD(v70) = v133;
            AddCharToLexer(v10, v133);
LABEL_143:
            if (v70 == 62)
            {
              v258 = *(v10 + 116);
              v259 = (v258 - 1);
              *(v10 + 116) = v259;
              if (v258 == 1)
              {
                *(v10 + 52) = 0;
                **(v10 + 104) = 0;
                v272 = *(a1 + 104);
                v11 = NewNode(v272, v75);
                *(v11 + 20) = 3;
                *(v11 + 9) = v272[6];
                *(v10 + 64) = v11;
              }

              else
              {
                v260 = *(v10 + 48);
                v261 = *(v10 + 104);
                if (v259 == v260)
                {
                  LODWORD(v262) = 0;
                }

                else
                {
                  v273 = 0;
                  if ((v259 - v260) <= 1)
                  {
                    v262 = 1;
                  }

                  else
                  {
                    v262 = (v259 - v260);
                  }

                  while (1)
                  {
                    v274 = *(v261 + (v260 + v273));
                    if ((v274 & 0x8000000000000000) == 0 && (v73[v274] & 8) != 0)
                    {
                      break;
                    }

                    if (v262 == ++v273)
                    {
                      goto LABEL_391;
                    }
                  }

                  LODWORD(v262) = v273;
                }

LABEL_391:
                v276 = (v258 - 2);
                v277 = *(v261 + v276);
                v278 = v277 == 63;
                if (v277 == 63)
                {
                  *(v10 + 116) = v276;
                  v259 = v276;
                }

                else
                {
                  LODWORD(v276) = v259;
                }

                *(v10 + 48) = v262 + v260;
                *(v10 + 52) = v276;
                *(v261 + v259) = 0;
                v279 = *(a1 + 104);
                v280 = NewNode(v279, v75);
                *(v280 + 20) = 3;
                *(v280 + 9) = v279[6];
                *(v10 + 64) = v280;
                *(v280 + 23) = v278;
                v281 = tmbstrndup((*(v10 + 104) + *(v10 + 48) - v262), v262);
                v11 = *(v10 + 64);
                *(v11 + 8) = v281;
              }

              *(v10 + 56) = 0;
              *(v10 + 8) = 0;
              return v11;
            }

            goto LABEL_198;
          }

          ReportError(a1, 0, 0, 36);
          v141 = *(a1 + 4832);
          v104 = 0xFFFFFFFFLL;
          goto LABEL_159;
        case 8:
          if (v70 != 93)
          {
            if (v70 == 38 && !*(a1 + 160) && *(a1 + 664))
            {
              v285 = v71;
              v106 = v73;
              v107 = 0;
              v75 = 97;
              do
              {
                v108 = v107 + 1;
                v109 = &aAmp_0[v107];
                AddCharToLexer(v10, v75);
                v75 = v109[1];
                v107 = v108;
              }

              while (v108 != 4);
              v73 = v106;
              v71 = v285;
            }

            goto LABEL_198;
          }

          v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          v141 = *(a1 + 4832);
          if (v104 == 93)
          {
            v142 = ReadChar(*(a1 + 4832), v141, v135, v136, v137, v138, v139, v140);
            if (v142 == 62)
            {
              v271 = *(v10 + 116) - 1;
              *(v10 + 116) = v271;
              *(v10 + 52) = v271;
              *(*(v10 + 104) + v271) = 0;
              *(v10 + 56) = 0;
              *(v10 + 8) = 0;
              v237 = *(a1 + 104);
              v12 = NewNode(v237, v143);
              v11 = v12;
              v238 = 8;
LABEL_242:
              *(v12 + 20) = v238;
              v161 = v237[6];
LABEL_243:
              *(v12 + 9) = v161;
LABEL_14:
              *(v10 + 64) = v12;
              return v11;
            }

            UngetChar(v142, *(a1 + 4832));
            v141 = *(a1 + 4832);
            v104 = 93;
          }

          goto LABEL_159;
        case 9:
          if (v70 != 93)
          {
            if (v70 == 91)
            {
              v130 = *(v10 + 48);
              if (*(v10 + 116) == v130 + 6 && !tmbstrncmp((*(v10 + 104) + v130), "CDATA[", 6))
              {
                *(v10 + 56) = 8;
                *(v10 + 116) -= 6;
              }
            }

            goto LABEL_198;
          }

          v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v104 == 62)
          {
            v257 = *(v10 + 116) - 1;
            *(v10 + 116) = v257;
            *(v10 + 52) = v257;
            *(*(v10 + 104) + v257) = 0;
            *(v10 + 56) = 0;
            *(v10 + 8) = 0;
            v237 = *(a1 + 104);
            v12 = NewNode(v237, v144);
            v11 = v12;
            v238 = 9;
            goto LABEL_242;
          }

          goto LABEL_158;
        case 0xA:
          if (v70 != 37)
          {
            goto LABEL_198;
          }

          v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v104 != 62)
          {
            goto LABEL_158;
          }

          v239 = *(v10 + 116) - 1;
          *(v10 + 116) = v239;
          *(v10 + 52) = v239;
          *(*(v10 + 104) + v239) = 0;
          *(v10 + 56) = 0;
          *(v10 + 8) = 0;
          v237 = *(a1 + 104);
          v12 = NewNode(v237, v127);
          v11 = v12;
          v238 = 10;
          goto LABEL_242;
        case 0xB:
          if (v70 != 35)
          {
            goto LABEL_198;
          }

          v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v104 != 62)
          {
            goto LABEL_158;
          }

          v236 = *(v10 + 116) - 1;
          *(v10 + 116) = v236;
          *(v10 + 52) = v236;
          *(*(v10 + 104) + v236) = 0;
          *(v10 + 56) = 0;
          *(v10 + 8) = 0;
          v237 = *(a1 + 104);
          v12 = NewNode(v237, v105);
          v11 = v12;
          v238 = 11;
          goto LABEL_242;
        case 0xC:
          if (v70 != 63)
          {
            goto LABEL_198;
          }

          v104 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v104 != 62)
          {
            goto LABEL_158;
          }

          v240 = *(v10 + 116) - 1;
          *(v10 + 116) = v240;
          *(v10 + 52) = v240;
          *(*(v10 + 104) + v240) = 0;
          *(v10 + 56) = 0;
          *(v10 + 8) = 0;
          v237 = *(a1 + 104);
          v12 = NewNode(v237, v134);
          v11 = v12;
          v238 = 12;
          goto LABEL_242;
        case 0xD:
          if (v70 > 0x7F)
          {
            goto LABEL_112;
          }

          if (v70 != 63 && (v73[v70] & 8) != 0)
          {
            goto LABEL_198;
          }

          if (v70 == 63)
          {
            v119 = v71;
          }

          else
          {
LABEL_112:
            v110 = v71;
            v111 = v73;
            v288 = 0;
            v289 = 0;
            v287 = 0;
            v290 = 0;
            UngetChar(v70, *(a1 + 4832));
            v116 = ParseAttribute(a1, &v290, &v289, &v288, v112, v113, v114, v115);
            if (!v116)
            {
              --*(v10 + 116);
              v234 = *(v10 + 48);
              *(v10 + 52) = v234;
              *(*(v10 + 104) + v234) = 0;
              *(v10 + 56) = 0;
              *(v10 + 8) = 0;
              v235 = *(a1 + 104);
              v11 = NewNode(v235, v117);
              *(v11 + 20) = 13;
              *(v11 + 9) = v235[6];
              *(v10 + 64) = v11;
              *(v11 + 5) = v110;
              return v11;
            }

            v118 = v116;
            v119 = NewAttribute(v116, v117);
            v119[5] = v118;
            v119[6] = ParseValue(a1, v118, 1, &v290, &v287, v120, v121, v122);
            *(v119 + 8) = v287;
            v119[1] = FindAttribute(a1, v119);
            v123 = v110;
            if (v110)
            {
              do
              {
                v124 = v123;
                v123 = *v123;
              }

              while (v123);
              *v124 = v119;
              v119 = v110;
            }

            v73 = v111;
          }

          v125 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
          if (v125 == 62)
          {
            --*(v10 + 116);
            v232 = *(v10 + 48);
            *(v10 + 52) = v232;
            *(*(v10 + 104) + v232) = 0;
            *(v10 + 56) = 0;
            *(v10 + 8) = 0;
            v233 = *(a1 + 104);
            v11 = NewNode(v233, v126);
            *(v11 + 20) = 13;
            *(v11 + 9) = v233[6];
            *(v10 + 64) = v11;
            *(v11 + 5) = v119;
            return v11;
          }

          UngetChar(v125, *(a1 + 4832));
          v71 = v119;
          goto LABEL_198;
        default:
          goto LABEL_198;
      }

      break;
    }

    while (1)
    {
      v197 = v195 == 10 ? 32 : v195;
      v198 = v196 == 4 ? v195 : v197;
      if (v198 > 0x7F)
      {
        break;
      }

      v199 = 0;
      if (v196 == 4)
      {
        goto LABEL_263;
      }

      v200 = v198;
      if ((v176[v198] & 8) != 0)
      {
        if (*(v177 + 8))
        {
          goto LABEL_315;
        }

        v199 = 1;
        v200 = v197;
      }

LABEL_264:
      AddCharToLexer(v177, v200);
      *(v177 + 8) = v199;
      if (v196 > 1)
      {
        if (v196 == 2)
        {
          if (v198 > 0x7F)
          {
            v206 = 0;
          }

          else
          {
            v206 = (v176[v197] >> 3) & 1;
          }

          if (v197 != 62 && !v206)
          {
            goto LABEL_306;
          }

          v211 = tmbstrndup((*(v177 + 104) + v178), (*(v177 + 116) + ~v178));
          v212 = tmbstrcasecmp(v211, "SYSTEM");
          v283 = v212 != 0;
          if (linkedOnOrAfter2024EReleases(v212, v213))
          {
            free(v211);
          }

          else
          {
            _MemFree(v211);
          }

          if (v197 == 62)
          {
            --*(v177 + 116);
            v209 = *(a1 + 4832);
            v210 = 62;
LABEL_298:
            UngetChar(v210, v209);
          }
        }

        else
        {
          if (v196 == 3)
          {
            if (v197 == v286)
            {
              v201 = tmbstrndup((*(v177 + 104) + v178), (*(v177 + 116) + ~v178));
              if (v283)
              {
                v202 = "PUBLIC";
              }

              else
              {
                v202 = "SYSTEM";
              }

              v203 = AddAttribute(a1, v284, v202, v201);
              if (linkedOnOrAfter2024EReleases(v203, v204))
              {
                free(v201);
              }

              else
              {
                _MemFree(v201);
              }

              v283 = 0;
              v196 = 0;
              v203[8] = v286;
              v286 = 0;
            }

            else
            {
              v196 = 3;
            }

            goto LABEL_315;
          }

          if (v195 != 93)
          {
            goto LABEL_314;
          }

          v207 = *(v177 + 116) - 1;
          *(v177 + 48) = v178;
          *(v177 + 52) = v207;
          v208 = NewNode(v177, v200);
          *(v208 + 9) = *(v177 + 48);
          InsertNodeAtEnd(v284, v208);
        }

        goto LABEL_299;
      }

      if (v196)
      {
        if ((v198 > 0x7F || (v176[v197] & 8) == 0) && v195 != 91 && v195 != 62)
        {
          v196 = 1;
          goto LABEL_315;
        }

        *(v284 + 64) = tmbstrndup((*(v177 + 104) + v178), (*(v177 + 116) + ~v178));
        if (v195 == 91 || v195 == 62)
        {
          --*(v177 + 116);
          v209 = *(a1 + 4832);
          v210 = v195;
          goto LABEL_298;
        }

LABEL_299:
        v196 = 0;
        goto LABEL_315;
      }

      if (v198 <= 0x7F)
      {
        if ((v176[v197] & 0x20) != 0)
        {
          if (v197 == 112)
          {
            goto LABEL_305;
          }

          v205 = v197 - 32;
        }

        else
        {
          v205 = v198;
          if (v197 == 80)
          {
            goto LABEL_305;
          }
        }

        if (v205 == 83)
        {
LABEL_305:
          v178 = *(v177 + 116) - 1;
LABEL_306:
          v196 = 2;
          goto LABEL_315;
        }
      }

      v196 = 0;
      if (v195 <= 61)
      {
        if (v195 == 34 || v195 == 39)
        {
          v178 = *(v177 + 116);
          v196 = 3;
          v286 = v198;
        }

        goto LABEL_315;
      }

      if (v195 == 91)
      {
        v178 = *(v177 + 116);
LABEL_314:
        v196 = 4;
        goto LABEL_315;
      }

      if (v195 == 62)
      {
        v214 = *(v177 + 116) - 1;
        *(v177 + 116) = v214;
        *(v284 + 76) = v214;
        AttrByName = GetAttrByName(v284, "SYSTEM");
        if (AttrByName)
        {
          CheckUrl(a1, v284, AttrByName);
        }

        v218 = *(v284 + 64);
        if (v218 && IsValidXMLID(v218, v216, v217))
        {
          v219 = v284;
        }

        else
        {
LABEL_325:
          ReportError(a1, 0, 0, 35);
          FreeNode(a1, v284);
          v219 = 0;
        }

        *(v10 + 64) = v219;
        v230 = *(v10 + 116);
        *(v10 + 52) = v230;
        *(*(v10 + 104) + v230) = 0;
        *(v10 + 56) = 0;
        *(v10 + 8) = 0;
        v11 = *(v10 + 64);
        if (*(v10 + 36) || !v11 || *(a1 + 280))
        {
          return v11;
        }

        *(v10 + 36) = FindGivenVersion(a1, v11);
        return *(v10 + 64);
      }

LABEL_315:
      v195 = ReadChar(*(a1 + 4832), v200, v189, v190, v191, v192, v193, v194);
      if (v195 == -1)
      {
        goto LABEL_325;
      }
    }

    v199 = 0;
LABEL_263:
    v200 = v198;
    goto LABEL_264;
  }

  v13 = *(v10 + 88);
  v14 = AttrGetById(v13, 132);
  v15 = *(a1 + 4832);
  *v10 = vrev64_s32(v15[4]);
  *(v10 + 8) = 0;
  v16 = *(v10 + 116);
  *(v10 + 48) = v16;
  *(v10 + 52) = v16;
  v24 = ReadChar(v15, v17, v18, v19, v20, v21, v22, v23);
  if (v24 == -1)
  {
    v162 = *(v10 + 52);
    *(v10 + 48) = v162;
    *(v10 + 116) = v162;
LABEL_239:
    ReportError(a1, v13, 0, 6);
    goto LABEL_240;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  while (1)
  {
    AddCharToLexer(v10, v25);
    *(v10 + 52) = *(v10 + 116);
    if (v26 == 1)
    {
      if (v25 > 0x7F || (lexmap[v25] & 2) == 0)
      {
        v55 = *(v13 + 64);
        v56 = (*(v10 + 104) + v28);
        v57 = tmbstrlen(v55);
        v58 = tmbstrncasecmp(v55, v56, v57);
        v26 = 0;
        if (!v58)
        {
          ++v27;
        }

        goto LABEL_38;
      }

      goto LABEL_28;
    }

    if (v26)
    {
      break;
    }

    if (v25 != 60)
    {
      if (v29)
      {
        v29 = v25 <= 0x7F && (lexmap[v25] & 8) != 0;
      }

      v53 = ReadChar(*(a1 + 4832), v30, v31, v32, v33, v34, v35, v36);
      v25 = v53;
      v26 = 0;
      goto LABEL_39;
    }

    v37 = ReadChar(*(a1 + 4832), v30, v31, v32, v33, v34, v35, v36);
    if (v37 > 0x7F || (lexmap[v37] & 2) == 0)
    {
      if (v37 == 92)
      {
        AddCharToLexer(v10, 92);
        v37 = ReadChar(*(a1 + 4832), v39, v40, v41, v42, v43, v44, v45);
        if (v37 != 47)
        {
          goto LABEL_35;
        }
      }

      else if (v37 != 47)
      {
        v38 = *(a1 + 4832);
LABEL_36:
        UngetChar(v37, v38);
LABEL_37:
        v26 = 0;
        goto LABEL_38;
      }

      AddCharToLexer(v10, 47);
      v37 = ReadChar(*(a1 + 4832), v46, v47, v48, v49, v50, v51, v52);
      if (v37 > 0x7F || (lexmap[v37] & 2) == 0)
      {
LABEL_35:
        v38 = *(a1 + 4832);
        goto LABEL_36;
      }

      UngetChar(v37, *(a1 + 4832));
      v28 = *(v10 + 116);
      goto LABEL_31;
    }

    if (v13)
    {
      if (v14)
      {
        if (v29)
        {
          v66 = *(v13 + 56);
          if (v66)
          {
            if (*v66 == 92)
            {
              *(v10 + 116) = *(v10 + 48);
              UngetChar(v37, *(a1 + 4832));
              UngetChar(0x3C, *(a1 + 4832));
              return 0;
            }
          }
        }
      }
    }

    AddCharToLexer(v10, v37);
    v28 = *(v10 + 116) - 1;
LABEL_28:
    v26 = 1;
LABEL_38:
    v53 = ReadChar(*(a1 + 4832), v30, v31, v32, v33, v34, v35, v36);
    v25 = v53;
LABEL_39:
    if (v53 == -1)
    {
      v156 = 1;
      goto LABEL_225;
    }
  }

  if (v25 <= 0x7F && (lexmap[v25] & 2) != 0)
  {
LABEL_31:
    v26 = 2;
    goto LABEL_38;
  }

  v59 = *(v13 + 64);
  v60 = (*(v10 + 104) + v28);
  v61 = tmbstrlen(v59);
  v62 = tmbstrncasecmp(v59, v60, v61);
  if (!v29 || !v62)
  {
    if (!v62)
    {
      if (v27 <= 0)
      {
        for (i = *(v10 + 116) - 1; i >= v28; --i)
        {
          UngetChar(*(*(v10 + 104) + i), *(a1 + 4832));
        }

        UngetChar(0x2F, *(a1 + 4832));
        UngetChar(0x3C, *(a1 + 4832));
        v156 = 0;
        *(v10 + 116) = v28 - 2;
        goto LABEL_225;
      }

      --v27;
    }

    if (*(*(v10 + 104) + v28 - 2) != 92)
    {
      v63 = *(*(a1 + 4832) + 32) - 3;
      *v10 = *(*(a1 + 4832) + 36);
      *(v10 + 4) = v63;
      ReportError(a1, 0, 0, 32);
      if (IsJavaScript(v13))
      {
        v64 = *(v10 + 116);
        v65 = v28 - 1;
        if (v64 > v65)
        {
          do
          {
            *(*(v10 + 104) + v64) = *(*(v10 + 104) + v64 - 1);
            --v64;
          }

          while (v64 > v65);
        }

        v26 = 0;
        *(*(v10 + 104) + v65) = 92;
        ++*(v10 + 116);
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  for (j = *(v10 + 116) - 1; j >= v28; --j)
  {
    UngetChar(*(*(v10 + 104) + j), *(a1 + 4832));
  }

  UngetChar(0x2F, *(a1 + 4832));
  UngetChar(0x3C, *(a1 + 4832));
  v156 = 0;
LABEL_225:
  if (!v29)
  {
    *(v10 + 52) = *(v10 + 116);
    if ((v156 & 1) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_239;
  }

  v157 = *(v10 + 52);
  *(v10 + 48) = v157;
  *(v10 + 116) = v157;
  if (v156)
  {
    goto LABEL_239;
  }

LABEL_240:
  v11 = NewNode(v10, v54);
  *(v11 + 9) = *(v10 + 48);
  return v11;
}

void InitMap()
{
  v0 = 13;
  v1 = 1u;
  do
  {
    lexmap[v0] |= 0x18u;
    v0 = asc_2999689E6[v1++];
  }

  while (v1 != 4);
  v2 = 0;
  dword_2A14C1C28 |= 8u;
  dword_2A14C1BCC |= 8u;
  v3 = 45;
  do
  {
    lexmap[v3] |= 4u;
    v3 = asc_2999689EA[++v2];
  }

  while (v2 != 4);
  v4 = 48;
  v5 = 1u;
  do
  {
    lexmap[v4] |= 5u;
    v4 = a0123456789[v5++];
  }

  while (v5 != 11);
  v6 = 97;
  v7 = 1u;
  do
  {
    lexmap[v6] |= 0x26u;
    v6 = aAbcdefghijklmn[v7++];
  }

  while (v7 != 27);
  v8 = 65;
  v9 = 1u;
  do
  {
    lexmap[v8] |= 0x46u;
    v8 = aAbcdefghijklmn_0[v9++];
  }

  while (v9 != 27);
}

void *NewAttribute(uint64_t a1, uint64_t a2)
{
  if (linkedOnOrAfter2024EReleases(a1, a2))
  {
    v2 = malloc_type_malloc(0x38uLL, 0x107004025CF44FCuLL);
    if (!v2)
    {
      FatalError("Out of memory!");
    }
  }

  else
  {
    v2 = _MemAlloc(0x38uLL);
  }

  ClearMemory(v2, 0x38uLL);
  return v2;
}

void *NewAttributeEx(uint64_t a1, _BYTE *a2, _BYTE *a3, int a4)
{
  v8 = NewAttribute(a1, a2);
  v8[5] = tmbstrdup(a2, v9);
  v8[6] = tmbstrdup(a3, v10);
  *(v8 + 8) = a4;
  v8[1] = FindAttribute(a1, v8);
  return v8;
}

void *InsertAttributeAtEnd(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  result = (a1 + 40);
  for (i = v4; i; i = *i)
  {
    result = i;
  }

  *result = a2;
  return result;
}

uint64_t InsertAttributeAtStart(uint64_t result, void *a2)
{
  *a2 = *(result + 40);
  *(result + 40) = a2;
  return result;
}

void ParseEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(a1 + 280);
  v45 = 0;
  v11 = *(a1 + 104);
  v12 = *(v11 + 116);
  v13 = v12 - 1;
  v14 = *(a1 + 4832);
  v15 = *(v14 + 32) - 1;
  for (i = 1; ; i = 0)
  {
    Char = ReadChar(v14, a2, a3, a4, a5, a6, a7, a8);
    v18 = Char;
    if (Char == -1)
    {
      goto LABEL_16;
    }

    if (Char == 59)
    {
      v19 = 0;
      goto LABEL_17;
    }

    if (Char != 35 || (i & 1) == 0)
    {
      break;
    }

    if (!*(a1 + 680) || (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      v20 = *(a1 + 4832);

      UngetChar(0x23, v20);
      return;
    }

    v18 = 35;
LABEL_10:
    AddCharToLexer(v11, v18);
    v14 = *(a1 + 4832);
  }

  if (Char <= 0x7F && (lexmap[Char] & 4) != 0)
  {
    goto LABEL_10;
  }

  UngetChar(Char, *(a1 + 4832));
LABEL_16:
  v19 = 1;
LABEL_17:
  v46 = 0;
  *(*(v11 + 104) + *(v11 + 116)) = 0;
  if (!tmbstrcmp((*(v11 + 104) + v13), "&apos") && !*(a1 + 288) && !*(v11 + 28) && !*(a1 + 296))
  {
    ReportEntityError(a1, 5, (*(v11 + 104) + v13), 39, v21, v22, v23, v24);
  }

  if (EntityInfo((*(v11 + 104) + v13), v10, &v46, &v45) && (v46 & 0xFFFFFFE0) != 0x80 && (v18 == 59 || v46 < 0x100))
  {
    if (v18 != 59)
    {
      *v11 = *(*(a1 + 4832) + 36);
      *(v11 + 4) = v15;
      ReportEntityError(a1, 1, (*(v11 + 104) + v13), v18, v25, v26, v27, v28);
    }

    if (!*(a1 + 160))
    {
      goto LABEL_52;
    }

    *(v11 + 116) = v13;
    v33 = v46;
    if (v8 == 2 && v46 == 160)
    {
      v33 = 32;
      v46 = 32;
    }

    AddCharToLexer(v11, v33);
    if (v46 == 38 && !*(a1 + 432))
    {
      v34 = 0;
      v35 = 97;
      do
      {
        v36 = v34 + 1;
        v37 = &aAmp_0[v34];
        AddCharToLexer(v11, v35);
        v35 = v37[1];
        v34 = v36;
      }

      while (v36 != 4);
    }

    *(*(a1 + 104) + 32) &= v45 | 0xE000;
  }

  else
  {
    *v11 = *(*(a1 + 4832) + 36);
    *(v11 + 4) = v15;
    if (*(v11 + 116) > v12)
    {
      if ((v46 & 0xFFFFFFE0) == 0x80)
      {
        v42 = DecodeWin1252(v46);
        if (v18 != 59)
        {
          ReportEntityError(a1, 2, (*(v11 + 104) + v13), v18, v38, v39, v40, v41);
        }

        ReportEncodingError(a1, 82, v46, v42 == 0, v38, v39, v40, v41);
        if (*(a1 + 160))
        {
          *(v11 + 116) = v13;
          if (!v42)
          {
            return;
          }

          v43 = v11;
          v44 = v42;
          goto LABEL_53;
        }
      }

      else
      {
        ReportEntityError(a1, 3, (*(v11 + 104) + v13), v46, v25, v26, v27, v28);
      }

      if (v19)
      {
        return;
      }

LABEL_52:
      v43 = v11;
      v44 = 59;
LABEL_53:
      AddCharToLexer(v43, v44);
      return;
    }

    if (!*(a1 + 160) && *(a1 + 432))
    {
      v29 = 0;
      v30 = 97;
      do
      {
        v31 = v29 + 1;
        v32 = &aAmp_0[v29];
        AddCharToLexer(v11, v30);
        v30 = v32[1];
        v29 = v31;
      }

      while (v31 != 4);
    }

    ReportEntityError(a1, 4, (*(v11 + 104) + v13), v46, v25, v26, v27, v28);
  }
}

uint64_t ParseTagName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  v10 = *(a1 + 280);
  if (!*(a1 + 280))
  {
    v11 = *(v9 + 104);
    v12 = *(v9 + 48);
    v13 = *(v11 + v12);
    if ((v13 & 0x80000000) == 0 && (lexmap[*(v11 + v12)] & 0x40) != 0)
    {
      *(v11 + v12) = v13 + 32;
    }
  }

  Char = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
  if (Char != -1)
  {
    v17 = Char;
    while (1)
    {
      if (v10)
      {
        if (!IsXMLNamechar(v17, v15, v16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v17 > 0x7F)
        {
          goto LABEL_16;
        }

        v18 = lexmap[v17];
        if ((v18 & 4) == 0)
        {
          goto LABEL_16;
        }

        v17 = v17 + ((v18 >> 1) & 0x20);
      }

      AddCharToLexer(v9, v17);
      v17 = ReadChar(*(a1 + 4832), v19, v20, v21, v22, v23, v24, v25);
      if (v17 == -1)
      {
        goto LABEL_16;
      }
    }
  }

  LOBYTE(v17) = -1;
LABEL_16:
  *(v9 + 52) = *(v9 + 116);
  return v17;
}

char *TagToken(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 104);
  v5 = NewNode(v4, a2);
  *(v5 + 20) = v2;
  *(v5 + 8) = tmbstrndup((*(v4 + 104) + *(v4 + 48)), (*(v4 + 52) - *(v4 + 48)));
  v6 = *(v4 + 48);
  *(v5 + 18) = v6;
  *(v5 + 19) = v6;
  if ((v2 - 5) <= 2)
  {
    FindTag(a1, v5);
  }

  return v5;
}

void *ParseAttrs(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 104);
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  while (1)
  {
    v11 = *(a1 + 4832);
    if (!*(v11 + 4))
    {
      if (IsEOF(v11))
      {
        return v47;
      }
    }

    v12 = ParseAttribute(a1, a2, &v45, &v44, a5, a6, a7, a8);
    if (v12)
    {
      v17 = v12;
      valid = ParseValue(a1, v12, 0, a2, &v46, v14, v15, v16);
      v22 = valid;
      v23 = *v17;
      if (v23 < 0 || (lexmap[v23] & 2) == 0)
      {
        goto LABEL_7;
      }

      valid = tmbstrlen(v17);
      if (valid < 2)
      {
LABEL_24:
        v38 = NewAttribute(valid, v19);
        v38[8] = v46;
        *(v38 + 5) = v17;
        *(v38 + 6) = v22;
        *(v38 + 1) = FindAttribute(a1, v38);
        v39 = v47;
        if (v47)
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
          v40 = &v47;
        }

        *v40 = v38;
      }

      else
      {
        v34 = 2;
        v35 = 1;
        while (1)
        {
          v36 = v17[v35];
          if (v36 < 0 || (lexmap[v36] & 4) == 0)
          {
            break;
          }

          v35 = v34;
          valid = tmbstrlen(v17);
          if (valid <= v34++)
          {
            goto LABEL_24;
          }
        }

LABEL_7:
        if (*(a1 + 280))
        {
          valid = IsValidXMLID(v17, v20, v21);
          if (valid)
          {
            goto LABEL_24;
          }
        }

        v24 = NewAttribute(valid, v19);
        v24[5] = v17;
        v24[6] = v22;
        if (*v17 && (v25 = tmbstrlen(v17)) != 0 && v25[v17 - 1] == 34)
        {
          v26 = *(v10 + 64);
          v27 = a1;
          v28 = v24;
          v29 = 59;
        }

        else
        {
          v26 = *(v10 + 64);
          v27 = a1;
          v28 = v24;
          if (v22)
          {
            v29 = 72;
          }

          else
          {
            v29 = 50;
          }
        }

        ReportAttrError(v27, v26, v28, v29);
        FreeAttribute(a1, v24);
      }
    }

    else
    {
      v30 = v45;
      if (v45)
      {
        v31 = NewAttribute(0, v13);
        v31[2] = v30;
        v32 = v47;
        if (!v47)
        {
          goto LABEL_31;
        }

        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        v41 = v44;
        if (!v44)
        {
          return v47;
        }

        v31 = NewAttribute(0, v13);
        v31[3] = v41;
        v42 = v47;
        if (!v47)
        {
LABEL_31:
          v33 = &v47;
          goto LABEL_32;
        }

        do
        {
          v33 = v42;
          v42 = *v42;
        }

        while (v42);
      }

LABEL_32:
      *v33 = v31;
    }
  }
}

char *FindGivenVersion(uint64_t a1, uint64_t a2)
{
  AttrByName = GetAttrByName(a2, "PUBLIC");
  if (!AttrByName)
  {
    return 0;
  }

  v4 = AttrByName;
  v5 = AttrByName[6];
  if (v5)
  {
    v6 = &off_29F278D18;
    v7 = 17;
    while (1)
    {
      v8 = tmbstrcasecmp(*v6, v5);
      if (!v8)
      {
        break;
      }

      v6 += 4;
      if (!--v7)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    v5 = *(v6 - 3);
    if ((v5 & 0x1F00) != 0)
    {
      SetOptionBool(a1, 0x16u, 1u);
      v8 = SetOptionBool(a1, 0x17u, 1u);
      *(*(a1 + 104) + 28) = 1;
    }

LABEL_10:
    v10 = linkedOnOrAfter2024EReleases(v8, v9);
    v11 = v4[6];
    if (v10)
    {
      free(v11);
      v4[6] = 0;
    }

    else
    {
      _MemFree(v11);
    }

    v13 = &off_29F278D18;
    v14 = 17;
    while (*(v13 - 3) != v5)
    {
      v13 += 4;
      if (!--v14)
      {
        v15 = 0;
        goto LABEL_18;
      }
    }

    v15 = *v13;
LABEL_18:
    v4[6] = tmbstrdup(v15, v12);
  }

  return v5;
}

_BYTE *ParseAttribute(uint64_t a1, _DWORD *a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a1 + 104);
  *a3 = 0;
  *a4 = 0;
  while (1)
  {
    while (1)
    {
      Char = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
      v14 = Char;
      if (Char > 46)
      {
        break;
      }

      a4 = 58;
      if (Char != 34 && Char != 39)
      {
        if (Char == -1)
        {
          ReportAttrError(a1, *(v12 + 64), 0, 75);
          UngetChar(0xFFFFFFFFLL, *(a1 + 4832));
          return 0;
        }

        goto LABEL_15;
      }

LABEL_10:
      ReportAttrError(a1, *(v12 + 64), 0, a4);
    }

    if (Char > 60)
    {
      if (Char != 61)
      {
        if (Char == 62)
        {
          return 0;
        }

        goto LABEL_15;
      }

      LODWORD(a4) = 69;
      goto LABEL_10;
    }

    if (Char == 47)
    {
      v37 = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
      if (v37 == 62)
      {
        result = 0;
        *a2 = 1;
        return result;
      }

      UngetChar(v37, *(a1 + 4832));
      v15 = (v12 + 116);
      v16 = *(v12 + 116);
LABEL_31:
      Char = v14;
      while (Char != -1 && Char != 60)
      {
        if (v14 == 45 && (Char == 39 || Char == 34))
        {
          --*v15;
          break;
        }

        if (Char <= 0x7F)
        {
          v39 = lexmap[Char];
          if ((v39 & 8) != 0)
          {
            goto LABEL_58;
          }

          if ((v39 & 0x40) != 0 && *(a1 + 280) == 0)
          {
            Char = (Char + 32);
          }

          else
          {
            Char = Char;
          }
        }

        LODWORD(v14) = Char;
        AddCharToLexer(v12, Char);
        Char = ReadChar(*(a1 + 4832), v41, v42, v43, v44, v45, v46, v47);
        if ((Char - 61) <= 1)
        {
          break;
        }
      }

LABEL_57:
      UngetChar(Char, *(a1 + 4832));
LABEL_58:
      v60 = (*v15 - v16);
      if (v60 < 1)
      {
        result = 0;
      }

      else
      {
        result = tmbstrndup((*(v12 + 104) + v16), v60);
      }

      *v15 = v16;
      return result;
    }

    if (Char == 60)
    {
      break;
    }

LABEL_15:
    if (Char > 0x7F || (lexmap[Char] & 8) == 0)
    {
      v15 = (v12 + 116);
      v16 = *(v12 + 116);
      if ((Char - 61) < 2)
      {
        goto LABEL_57;
      }

      goto LABEL_31;
    }
  }

  v17 = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
  if (v17 != 63)
  {
    if (v17 == 37)
    {
      v25 = *(a1 + 104);
      v25[12] = v25[29];
      v26 = ReadChar(*(a1 + 4832), v18, v19, v20, v21, v22, v23, v24);
      if (v26 != -1)
      {
        v28 = v26;
        while (1)
        {
          AddCharToLexer(v25, v28);
          if (v28 == 37)
          {
            v35 = ReadChar(*(a1 + 4832), v27, v29, v30, v31, v32, v33, v34);
            if (v35 == -1)
            {
              goto LABEL_63;
            }

            v36 = v35;
            AddCharToLexer(v25, v35);
            if (v36 == 62)
            {
              break;
            }
          }

          v28 = ReadChar(*(a1 + 4832), v27, v29, v30, v31, v32, v33, v34);
          if (v28 == -1)
          {
            goto LABEL_63;
          }
        }

        v25[29] -= 2;
      }

LABEL_63:
      v61 = v25[29];
      v25[13] = v61;
      if (v61 <= v25[12])
      {
        v63 = 0;
      }

      else
      {
        v62 = *(a1 + 104);
        v63 = NewNode(v62, v27);
        *(v63 + 20) = 10;
        *(v63 + 9) = v62[6];
        v61 = v25[13];
      }

      result = 0;
      v25[12] = v61;
      *a3 = v63;
      return result;
    }

    UngetChar(v17, *(a1 + 4832));
    UngetChar(0x3C, *(a1 + 4832));
    ReportAttrError(a1, *(v12 + 64), 0, 52);
    return 0;
  }

  v48 = *(a1 + 104);
  v48[12] = v48[29];
  v49 = ReadChar(*(a1 + 4832), v18, v19, v20, v21, v22, v23, v24);
  if (v49 != -1)
  {
    v51 = v49;
    while (1)
    {
      AddCharToLexer(v48, v51);
      if (v51 == 63)
      {
        v58 = ReadChar(*(a1 + 4832), v50, v52, v53, v54, v55, v56, v57);
        if (v58 == -1)
        {
          goto LABEL_68;
        }

        v59 = v58;
        AddCharToLexer(v48, v58);
        if (v59 == 62)
        {
          break;
        }
      }

      v51 = ReadChar(*(a1 + 4832), v50, v52, v53, v54, v55, v56, v57);
      if (v51 == -1)
      {
        goto LABEL_68;
      }
    }

    v48[29] -= 2;
  }

LABEL_68:
  v64 = v48[29];
  v48[13] = v64;
  if (v64 <= v48[12])
  {
    v66 = 0;
  }

  else
  {
    v65 = *(a1 + 104);
    v66 = NewNode(v65, v50);
    *(v66 + 20) = 12;
    *(v66 + 9) = v65[6];
    v64 = v48[13];
  }

  result = 0;
  v48[12] = v64;
  *v8 = v66;
  return result;
}

_BYTE *ParseValue(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v13 = *(a1 + 104);
  *a5 = 34;
  v14 = *(a1 + 576);
  do
  {
    Char = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
    v16 = Char;
    if (Char == -1)
    {
      UngetChar(Char, *(a1 + 4832));
LABEL_35:
      UngetChar(v16, *(a1 + 4832));
      return 0;
    }
  }

  while (Char <= 0x7F && (lexmap[Char] & 8) != 0);
  if (Char > 0x3D || ((1 << Char) & 0x2000008400000000) == 0)
  {
    goto LABEL_35;
  }

  v109 = a5;
  do
  {
    v18 = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
    v19 = v18;
    if (v18 == -1)
    {
      UngetChar(v18, *(a1 + 4832));
LABEL_38:
      UngetChar(v19, *(a1 + 4832));
      LODWORD(v19) = 0;
      goto LABEL_39;
    }
  }

  while (v18 <= 0x7F && (lexmap[v18] & 8) != 0);
  if (v18 != 34 && v18 != 39)
  {
    if (v18 == 60)
    {
      v20 = *(v13 + 116);
      AddCharToLexer(v13, 60);
      v21 = *(a1 + 104);
      v29 = ReadChar(*(a1 + 4832), v22, v23, v24, v25, v26, v27, v28);
      v30 = v29;
      AddCharToLexer(v21, v29);
      v38 = 34;
      v39 = v30 - 37;
LABEL_17:
      while (1)
      {
        v40 = ReadChar(*(a1 + 4832), v31, v32, v33, v34, v35, v36, v37);
        if (v40 == -1)
        {
          break;
        }

        v41 = v40;
        if (v40 == 62)
        {
          if (v39 <= 0x1B && ((1 << v39) & 0xC000001) != 0)
          {
            AddCharToLexer(v21, 62);
          }

          else
          {
            UngetChar(0x3E, *(a1 + 4832));
          }

          break;
        }

        if ((v39 > 0x1B || ((1 << v39) & 0xC000001) == 0) && v40 <= 0x7F && (lexmap[v40] & 8) != 0)
        {
          break;
        }

        AddCharToLexer(v21, v40);
        if (v41 == 39)
        {
          while (1)
          {
            v42 = ReadChar(*(a1 + 4832), v31, v32, v33, v34, v35, v36, v37);
            if (v42 == 62)
            {
              goto LABEL_124;
            }

            v44 = v42;
            if (v42 == -1)
            {
LABEL_123:
              ReportAttrError(a1, *(v21 + 64), 0, 75);
              UngetChar(0xFFFFFFFFLL, *(a1 + 4832));
              goto LABEL_125;
            }

            AddCharToLexer(v21, v42);
            if (v44 == 39)
            {
              goto LABEL_17;
            }
          }
        }

        if (v41 == 34)
        {
          while (1)
          {
            v42 = ReadChar(*(a1 + 4832), v31, v32, v33, v34, v35, v36, v37);
            if (v42 == 62)
            {
              break;
            }

            v43 = v42;
            if (v42 == -1)
            {
              goto LABEL_123;
            }

            AddCharToLexer(v21, v42);
            v38 = 39;
            if (v43 == 34)
            {
              goto LABEL_17;
            }
          }

LABEL_124:
          UngetChar(v42, *(a1 + 4832));
          ReportAttrError(a1, *(v21 + 64), 0, 52);
LABEL_125:
          v38 = 0;
          break;
        }
      }

      *a5 = v38;
      v104 = (*(v13 + 116) - v20);
      *(v13 + 116) = v20;
      if (v104 >= 1)
      {
        v105 = (*(v13 + 104) + v20);

        return tmbstrndup(v105, v104);
      }

      return 0;
    }

    goto LABEL_38;
  }

LABEL_39:
  v110 = a2;
  v108 = *(v13 + 116);
  v46 = ReadChar(*(a1 + 4832), a2, a3, a4, a5, a6, a7, a8);
  if (v46 != -1)
  {
    v54 = v46;
    v107 = a4;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    while (1)
    {
      if (v19)
      {
        if (v54 == v19)
        {
          goto LABEL_95;
        }

        if (((1 << v54) & 0x5000000000000400) != 0)
        {
          v58 = v55 + 1;
        }

        else
        {
          v58 = v55;
        }

        if (v54 <= 0x3E)
        {
          v55 = v58;
        }

        if (v54 == 62)
        {
          v57 = 1;
        }
      }

      else if (v54 > 46)
      {
        switch(v54)
        {
          case '/':
            v67 = ReadChar(*(a1 + 4832), v47, v48, v49, v50, v51, v52, v53);
            if (v67 == 62 && !IsUrl(a1, v110))
            {
              *v107 = 1;
              goto LABEL_131;
            }

            UngetChar(v67, *(a1 + 4832));
            v68 = dword_2A14C1C64;
            if ((dword_2A14C1C64 & 8) != 0)
            {
              goto LABEL_95;
            }

            v54 = 47;
LABEL_77:
            if (v10)
            {
              v54 = v54 + ((v68 >> 1) & 0x20);
            }

            goto LABEL_81;
          case '<':
            UngetChar(0x3C, *(a1 + 4832));
            UngetChar(0x3E, *(a1 + 4832));
            ReportAttrError(a1, *(v13 + 64), 0, 52);
            goto LABEL_95;
          case '>':
            goto LABEL_131;
        }
      }

      else if (v54 == 34 || v54 == 39)
      {
        ReportAttrError(a1, *(v13 + 64), 0, 58);
        v66 = ReadChar(*(a1 + 4832), v59, v60, v61, v62, v63, v64, v65);
        if (v66 == 62)
        {
          AddCharToLexer(v13, v54);
LABEL_131:
          v88 = *(a1 + 4832);
          v89 = 62;
          goto LABEL_94;
        }

        UngetChar(v66, *(a1 + 4832));
      }

      if (v54 == 92)
      {
        v87 = ReadChar(*(a1 + 4832), v47, v48, v49, v50, v51, v52, v53);
        if (v87 == 10)
        {
          v54 = 10;
        }

        else
        {
          UngetChar(v87, *(a1 + 4832));
          v54 = 92;
        }
      }

      else
      {
        if (v54 == 38)
        {
          v56 = 38;
          AddCharToLexer(v13, 38);
          ParseEntity(a1, 0, v69, v70, v71, v72, v73, v74);
          v82 = *(v13 + 116);
          v83 = v82 != 0;
          v84 = v82 - 1;
          v85 = v83;
          if (!v14)
          {
            if (v85)
            {
              v86 = *(v13 + 104);
              if (*(v86 + v84) == 10)
              {
                *(v86 + v84) = 32;
              }
            }
          }

          goto LABEL_82;
        }

        if (v54 > 0x7F)
        {
          goto LABEL_81;
        }
      }

      v68 = lexmap[v54];
      if ((v68 & 8) == 0)
      {
        goto LABEL_77;
      }

      if (!v19)
      {
        goto LABEL_95;
      }

      if (!v14)
      {
        if (v54 == 10 && IsUrl(a1, v110))
        {
          ReportAttrError(a1, *(v13 + 64), 0, 65);
          v56 = 10;
          goto LABEL_82;
        }

        if (v56 == 32)
        {
          if (IsUrl(a1, v110))
          {
            ReportAttrError(a1, *(v13 + 64), 0, 87);
          }

          v56 = 32;
          goto LABEL_82;
        }

        v54 = 32;
      }

LABEL_81:
      AddCharToLexer(v13, v54);
      v56 = v54;
LABEL_82:
      v54 = ReadChar(*(a1 + 4832), v75, v76, v77, v78, v79, v80, v81);
      if (v54 == -1)
      {
        goto LABEL_93;
      }
    }
  }

  v57 = 0;
  v55 = 0;
LABEL_93:
  ReportAttrError(a1, *(v13 + 64), 0, 75);
  v88 = *(a1 + 4832);
  v89 = 0xFFFFFFFFLL;
LABEL_94:
  UngetChar(v89, v88);
LABEL_95:
  v90 = v108;
  v91 = v108;
  if (!v14 && v55 >= 0xB && v57 && !IsScript(a1, v110) && (!IsUrl(a1, v110) || tmbstrncmp((*(v13 + 104) + v108), "javascript:", 11)) && tmbstrncmp((*(v13 + 104) + v108), "<xml ", 5))
  {
    ReportFatal(a1, 0, 0, 16, v92, v93, v94, v95, v107);
  }

  v96 = (*(v13 + 116) - v108);
  *(v13 + 116) = v108;
  if (v19 || v96 >= 1)
  {
    if (!v14 && v96 >= 1 && tmbstrcasecmp(v110, "alt") && tmbstrcasecmp(v110, "title") && tmbstrcasecmp(v110, "value") && tmbstrcasecmp(v110, "prompt"))
    {
      v97 = *(v13 + 104);
      do
      {
        v98 = v96;
        v99 = *(v97 + v108 - 1 + v96);
        if (v99 < 0)
        {
          break;
        }

        --v96;
        if (!v98)
        {
          break;
        }
      }

      while ((lexmap[v99] & 8) != 0);
      if ((*(v97 + v108) & 0x80000000) == 0)
      {
        v100 = *(v97 + v108);
        v101 = v97 + 1;
        v102 = v98;
        while ((lexmap[v100] & 8) != 0)
        {
          LODWORD(v96) = v98 - 1;
          if (v98 < 1 || v91 >= v102)
          {
            break;
          }

          v103 = *(v101 + v91++);
          ++v90;
          v100 = v103;
          --v102;
          LODWORD(v98) = v98 - 1;
          if (v103 < 0)
          {
            goto LABEL_133;
          }
        }
      }

      LODWORD(v96) = v98;
    }

LABEL_133:
    result = tmbstrndup((*(v13 + 104) + v90), v96);
  }

  else
  {
    result = 0;
  }

  if (v19)
  {
    v106 = v19;
  }

  else
  {
    v106 = 34;
  }

  *v109 = v106;
  return result;
}

char *OptGetDocDesc(int a1)
{
  if (a1 == 25)
  {
    return &option_docs;
  }

  v2 = &option_docs;
  v3 = 82;
  while (--v3)
  {
    v1 = (v2 + 6);
    v4 = v2[6];
    v2 += 6;
    if (v4 == a1)
    {
      return v1;
    }
  }

  return 0;
}

uint64_t ReportEncodingWarning(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 80)
  {
    v4 = result;
    v5 = CharEncodingName(*(*(result + 4832) + 40));
    CharEncodingName(a3);
    result = messageLexer(v4, v6, "specified input encoding (%s) does not match actual input encoding (%s)", v7, v8, v9, v10, v11, v5);
    *(v4 + 4908) |= 0x10u;
  }

  return result;
}

uint64_t messageLexer(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 104);
  if (v10)
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return messagePos(a1, 1, v11, v12, a3, &a9);
}

uint64_t ReportEncodingError(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v15 = *MEMORY[0x29EDCA608];
  memset(v14, 0, sizeof(v14));
  if (a4)
  {
    v9 = "discarding";
  }

  else
  {
    v9 = "replacing";
  }

  if (a2 != 80)
  {
    v11 = 1;
    do
    {
      v12 = &msgFormat + 16 * v11;
      v10 = *(v12 + 1);
      if (!v10)
      {
        break;
      }

      ++v11;
    }

    while (*v12 != a2);
    if (a2 <= 77)
    {
      if (a2 == 76)
      {
        result = NtoS(a3, v14);
        v13 = 1;
      }

      else
      {
        if (a2 != 77)
        {
          goto LABEL_21;
        }

        result = NtoS(a3, v14);
        v13 = 2;
      }
    }

    else
    {
      switch(a2)
      {
        case 'N':
          result = tmbsnprintf(v14, 32, "U+%04X", a3);
          v13 = 4;
          break;
        case 'O':
          result = tmbsnprintf(v14, 32, "U+%04X", a3);
          v13 = 8;
          break;
        case 'R':
          result = NtoS(a3, v14);
          v13 = 64;
          break;
        default:
          goto LABEL_21;
      }
    }

    *(v8 + 4908) |= v13;
LABEL_21:
    if (!v10)
    {
      return result;
    }

    return messageLexer(v8, a2, v10, a4, a5, a6, a7, a8, v9);
  }

  v10 = "specified input encoding (%s) does not match actual input encoding (%s)";
  return messageLexer(v8, a2, v10, a4, a5, a6, a7, a8, v9);
}

uint64_t NtoS(uint64_t result, _BYTE *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v5[0] = result - 10 * (((1717986919 * result) >> 34) + (1717986919 * result < 0)) + 48;
  if ((result + 9) >= 0x13)
  {
    v2 = 0;
    do
    {
      result = (result / 10);
      v5[++v2] = result - 10 * (((1717986919 * result) >> 34) + (1717986919 * result < 0)) + 48;
    }

    while ((result + 9) >= 0x13);
    v3 = v2;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = a2;
  do
  {
    *v4++ = v5[v3--];
  }

  while (v3 != -1);
  a2[v2 + 1] = 0;
  return result;
}

uint64_t ReportEntityError(uint64_t result, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 80)
  {
    v8 = "specified input encoding (%s) does not match actual input encoding (%s)";
LABEL_6:
    v11 = "NULL";
    if (a3)
    {
      v11 = a3;
    }

    return messageLexer(result, a2, v8, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v10 = &msgFormat + 16 * v9;
      v8 = *(v10 + 1);
      if (!v8)
      {
        break;
      }

      ++v9;
      if (*v10 == a2)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t ReportAttrError(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4 == 80)
  {
    v7 = "specified input encoding (%s) does not match actual input encoding (%s)";
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = &msgFormat + 16 * v8;
      v7 = *(v9 + 1);
      if (!v7)
      {
        break;
      }

      ++v8;
    }

    while (*v9 != a4);
  }

  result = TagToString(a2, v17, 64);
  switch(a4)
  {
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '9':
    case ':':
    case ';':
    case '<':
    case '=':
    case '>':
    case '?':
    case '@':
    case 'A':
    case 'D':
    case 'E':
    case 'H':
    case 'I':
    case 'J':
    case 'W':
      result = messageNode(a1, 1, a2, v7, v13, v14, v15, v16, v17);
      break;
    case '6':
    case '7':
    case 'B':
    case 'F':
    case 'G':
      result = messageNode(a1, 1, a2, v7, v13, v14, v15, v16, v17);
      break;
    case '8':
      result = messageNode(a1, 1, a2, v7, v13, v14, v15, v16, v17);
      *(a1 + 4900) |= 8u;
      break;
    case 'K':
      **(a1 + 104) = vrev64_s32(*(*(a1 + 4832) + 32));
      result = messageLexer(a1, v11, v7, v12, v13, v14, v15, v16, v17);
      break;
    default:
      return result;
  }

  return result;
}