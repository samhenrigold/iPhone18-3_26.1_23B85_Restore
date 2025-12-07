unint64_t xmlHashComputeKey(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *(a1 + 24);
  if (a2)
  {
    v5 = *a2;
    v4 += 30 * *a2;
    if (*a2)
    {
      v6 = a2 + 1;
      do
      {
        v4 ^= (v4 >> 3) + v5 + 32 * v4;
        v7 = *v6++;
        v5 = v7;
      }

      while (v7);
    }
  }

  v8 = (32 * v4 + (v4 >> 3)) ^ v4;
  if (a3)
  {
    v9 = *a3;
    if (*a3)
    {
      v10 = a3 + 1;
      do
      {
        v8 ^= 32 * v8 + (v8 >> 3) + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }
  }

  v12 = (32 * v8 + (v8 >> 3)) ^ v8;
  if (a4)
  {
    v13 = *a4;
    if (*a4)
    {
      v14 = a4 + 1;
      do
      {
        v12 ^= 32 * v12 + (v12 >> 3) + v13;
        v15 = *v14++;
        v13 = v15;
      }

      while (v15);
    }
  }

  return v12 % *(a1 + 8);
}

uint64_t htmlParseCharData(xmlError *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  bzero(v22, 0x3EEuLL);
  str3 = a1->str3;
  cur = str3->cur;
  if (cur - str3->base >= 501 && str3->end - cur <= 499)
  {
    xmlParserInputShrink(str3);
  }

  len = 0;
  result = htmlCurrentChar(a1, &len);
  v5 = result;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (v5 == 38)
    {
      if (HIDWORD(a1[3].message) != 38)
      {
LABEL_56:
        if (!v6)
        {
          return result;
        }

        goto LABEL_59;
      }

      goto LABEL_16;
    }

    if (v5 == 60)
    {
      if (HIDWORD(a1[3].message) != 60)
      {
        goto LABEL_56;
      }

      goto LABEL_16;
    }

    if (!v5)
    {
      break;
    }

    if (v5 > 255)
    {
      if (v5 >> 11 >= 0x1B && (v5 - 57344) >> 1 >= 0xFFF && (v5 - 0x10000) >= 0x100000)
      {
LABEL_29:
        htmlParseErrInt(a1, "Invalid char in CDATA 0x%X\n", v5);
        v8 = len;
        goto LABEL_34;
      }
    }

    else if (v5 <= 31 && (v5 > 0xD || ((1 << v5) & 0x2600) == 0))
    {
      goto LABEL_29;
    }

LABEL_16:
    v8 = len;
    if (len == 1)
    {
      v22[v6] = v5;
      v6 = (v6 + 1);
    }

    else
    {
      v6 = (xmlCopyChar(len, &v22[v6], v5) + v6);
    }

    if (v6 >= 1000)
    {
      v22[v6] = 0;
      if (!*&a1->domain || a1[3].int2)
      {
        goto LABEL_33;
      }

      if (areBlanks(a1, v22, v6))
      {
        v9 = *&a1->domain;
        if (!a1[3].int1)
        {
          v10 = *(v9 + 144);
          if (!v10)
          {
            goto LABEL_33;
          }

LABEL_32:
          v10(a1->message, v22, v6);
LABEL_33:
          v6 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        htmlCheckParagraph(a1);
        v9 = *&a1->domain;
      }

      v10 = *(v9 + 136);
      if (v10)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

LABEL_34:
    v11 = a1->str3;
    v13 = v11->cur;
    end = v11->end;
    v14 = &v13[v8];
    if (v14 <= end)
    {
      if (*v13 == 10)
      {
        ++v11->line;
        v11->col = 1;
      }

      else
      {
        ++v11->col;
      }

      HIDWORD(a1[3].message) = 0;
      v11->cur = v14;
      ++a1[3].str2;
      v13 += v8;
    }

    if (v7 < 100)
    {
      ++v7;
    }

    else
    {
      if (end - v13 <= 499 && v13 - v11->base >= 501)
      {
        xmlParserInputShrink(v11);
      }

      if (!HIDWORD(a1[5].message))
      {
        v15 = a1->str3;
        if (v15->end - v15->cur <= 249)
        {
          xmlParserInputGrow(v15, 250);
        }
      }

      v7 = 0;
    }

    result = htmlCurrentChar(a1, &len);
    v5 = result;
    if (!result)
    {
      v16 = a1->str3;
      v17 = v16->cur;
      if (v17 - v16->base >= 501 && v16->end - v17 <= 499)
      {
        xmlParserInputShrink(v16);
      }

      if (!HIDWORD(a1[5].message))
      {
        v18 = a1->str3;
        if (v18->end - v18->cur <= 249)
        {
          xmlParserInputGrow(v18, 250);
        }
      }

      result = htmlCurrentChar(a1, &len);
      v5 = result;
    }
  }

  if (!v6)
  {
    LODWORD(a1[3].message) = -1;
    return result;
  }

LABEL_59:
  v22[v6] = 0;
  if (!*&a1->domain || a1[3].int2)
  {
    return result;
  }

  result = areBlanks(a1, v22, v6);
  if (!result)
  {
    result = htmlCheckParagraph(a1);
    v19 = *&a1->domain;
LABEL_67:
    v20 = *(v19 + 136);
    if (v20)
    {
      return v20(a1->message, v22, v6);
    }

    return result;
  }

  v19 = *&a1->domain;
  if (a1[3].int1)
  {
    goto LABEL_67;
  }

  v20 = *(v19 + 144);
  if (!v20)
  {
    return result;
  }

  return v20(a1->message, v22, v6);
}

int xmlXPathRegisterNs(xmlXPathContextPtr ctxt, const xmlChar *prefix, const xmlChar *ns_uri)
{
  result = -1;
  if (ctxt && prefix && *prefix)
  {
    nsHash = ctxt->nsHash;
    if (!nsHash)
    {
      nsHash = xmlHashCreate(10);
      ctxt->nsHash = nsHash;
      if (!nsHash)
      {
        return -1;
      }
    }

    if (ns_uri)
    {
      v8 = xmlStrdup(ns_uri);
      if (v8)
      {
        v9 = v8;
        if ((xmlHashUpdateEntry(ctxt->nsHash, prefix, v8, xmlHashDefaultDeallocator) & 0x80000000) == 0)
        {
          return 0;
        }

        free(v9);
      }

      return -1;
    }

    return xmlHashRemoveEntry(nsHash, prefix, xmlHashDefaultDeallocator);
  }

  return result;
}

uint64_t htmlCurrentChar(uint64_t a1, _DWORD *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 272) == -1)
  {
    return 0;
  }

  if (*(a1 + 276))
  {
    *a2 = 0;
    return *(a1 + 276);
  }

  if (*(a1 + 408) == 1)
  {
LABEL_18:
    v11 = *(a1 + 56);
    cur = v11->cur;
    v13 = *cur;
    if ((*cur & 0x80000000) == 0)
    {
      if (!*cur && cur < v11->end)
      {
        htmlParseErrInt(a1, "Char 0x%X out of allowed range\n", 0);
        *a2 = 1;
        return 32;
      }

      *a2 = 1;
      return *cur;
    }

    if ((v13 & 0x40) != 0)
    {
      v14 = v11->end - cur;
      if (v14 > 1 || (xmlParserInputGrow(v11, 250), v11 = *(a1 + 56), cur = v11->cur, v14 = v11->end - cur, v14 >= 2))
      {
        if ((cur[1] & 0xC0) == 0x80)
        {
          if ((~v13 & 0xE0) != 0)
          {
            *a2 = 2;
            if ((*cur & 0x1Fu) >= 2)
            {
              v4 = cur[1] & 0x3F | ((*cur & 0x1F) << 6);
              goto LABEL_72;
            }
          }

          else if (v14 != 2 || (xmlParserInputGrow(v11, 250), v11 = *(a1 + 56), cur = v11->cur, v14 = v11->end - cur, v14 >= 3))
          {
            if ((cur[2] & 0xC0) == 0x80)
            {
              if ((~v13 & 0xF0) != 0)
              {
                *a2 = 3;
                if ((((*cur & 0xF) << 12) | ((cur[1] & 0x3F) << 6)) >= 0x800u)
                {
                  v4 = ((*cur & 0xF) << 12) | ((cur[1] & 0x3F) << 6) | cur[2] & 0x3Fu;
                  goto LABEL_72;
                }
              }

              else
              {
                if (v14 == 3)
                {
                  xmlParserInputGrow(v11, 250);
                  v11 = *(a1 + 56);
                  cur = v11->cur;
                  v14 = v11->end - cur;
                }

                if ((v13 & 0xF8) == 0xF0 && v14 >= 4 && (cur[3] & 0xC0) == 0x80)
                {
                  *a2 = 4;
                  v16 = ((*cur & 7) << 18) | ((cur[1] & 0x3F) << 12);
                  if (v16 >= 0x10000)
                  {
                    v4 = cur[3] & 0x3F | ((cur[2] & 0x3F) << 6) | v16;
LABEL_72:
                    if (v4 >> 11 >= 0x1B && (v4 - 57344) >> 1 >= 0xFFF && (v4 - 0x10000) >= 0x100000)
                    {
                      htmlParseErrInt(a1, "Char 0x%X out of allowed range\n", v4);
                    }

                    return v4;
                  }
                }
              }
            }
          }
        }
      }
    }

    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__str = 0u;
    if (v11->end - v11->cur < 4)
    {
      snprintf(__str, 0x95uLL, "Bytes: 0x%02X\n");
    }

    else
    {
      snprintf(__str, 0x95uLL, "Bytes: 0x%02X 0x%02X 0x%02X 0x%02X\n");
    }

    htmlParseErr(a1, 81, "Input is not proper UTF-8, indicate encoding !\n", __str, 0);
    v28 = *(a1 + 56);
    if (*v28 && !*(*v28 + 24))
    {
      xmlSwitchEncoding(a1, XML_CHAR_ENCODING_8859_1);
      v28 = *(a1 + 56);
    }

    *a2 = 1;
    cur = v28[4];
    return *cur;
  }

  v5 = *(a1 + 56);
  v6 = v5[4];
  if (*v6 < 0)
  {
    if (v5[10])
    {
      goto LABEL_11;
    }

    if (!*v5)
    {
      goto LABEL_11;
    }

    if (*(*v5 + 24))
    {
      goto LABEL_11;
    }

    v17 = v5[5];
    if (!v17)
    {
      goto LABEL_11;
    }

    if (*v17)
    {
      goto LABEL_11;
    }

    v18 = xmlStrcasestr(v6, "HTTP-EQUIV");
    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = xmlStrcasestr(v18, "CONTENT");
    if (!v19)
    {
      goto LABEL_11;
    }

    v20 = xmlStrcasestr(v19, "CHARSET=");
    if (!v20)
    {
      goto LABEL_11;
    }

    for (i = 0; ; ++i)
    {
      v22 = v20[i + 8];
      if ((v22 - 48) >= 0xA && (v22 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v24 = v22 - 45;
        v25 = v24 > 0x32;
        v26 = (1 << v24) & 0x4000000002005;
        if (v25 || v26 == 0)
        {
          break;
        }
      }
    }

    if (i && (v30 = xmlStrndup(v20 + 8, i)) != 0)
    {
      v31 = v30;
      v32 = *(a1 + 56);
      v33 = *(v32 + 80);
      if (v33)
      {
        free(v33);
        v32 = *(a1 + 56);
      }

      *(v32 + 80) = v31;
      CharEncodingHandler = xmlFindCharEncodingHandler(v31);
      if (CharEncodingHandler)
      {
        handler = CharEncodingHandler;
        if (xmlStrEqual(CharEncodingHandler->name, "UTF-8") || (xmlSwitchToEncoding(a1, handler) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        if (*(a1 + 136))
        {
          v7 = *(a1 + 136);
        }

        else
        {
          v7 = 6003;
        }

        v8 = "htmlCheckEncoding: error switching to encoding '%s'\n";
        v9 = a1;
      }

      else
      {
        v8 = "Unsupported encoding %s";
        v9 = a1;
        v7 = 81;
      }

      v10 = v31;
    }

    else
    {
LABEL_11:
      if ((xmlSwitchEncoding(a1, XML_CHAR_ENCODING_8859_1) & 0x80000000) == 0)
      {
LABEL_17:
        *(a1 + 408) = 1;
        goto LABEL_18;
      }

      if (*(a1 + 136))
      {
        v7 = *(a1 + 136);
      }

      else
      {
        v7 = 6003;
      }

      v8 = "htmlCheckEncoding: error switching to encoding 'ISO-8859-1'\n";
      v9 = a1;
      v10 = 0;
    }

    htmlParseErr(v9, v7, v8, v10, 0);
    goto LABEL_17;
  }

  *a2 = 1;
  v4 = *v6;
  if (!*v6 && v6 < v5[5])
  {
    htmlParseErrInt(a1, "Char 0x%X out of allowed range\n", 0);
    return 32;
  }

  return v4;
}

int xmlHashUpdateEntry3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3, void *userdata, xmlHashDeallocator f)
{
  v6 = -1;
  if (!table)
  {
    return v6;
  }

  v7 = name;
  if (!name || *(table + 3) == 0x7FFFFFFF)
  {
    return v6;
  }

  v13 = *(table + 2);
  if (v13)
  {
    if (!xmlDictOwns(v13, name))
    {
      v7 = xmlDictLookup(*(table + 2), v7, -1);
      if (!v7)
      {
        return v6;
      }
    }

    if (name2)
    {
      if (!xmlDictOwns(*(table + 2), name2))
      {
        name2 = xmlDictLookup(*(table + 2), name2, -1);
        if (!name2)
        {
          return v6;
        }
      }
    }

    if (name3)
    {
      if (!xmlDictOwns(*(table + 2), name3))
      {
        name3 = xmlDictLookup(*(table + 2), name3, -1);
        if (!name3)
        {
          return v6;
        }
      }
    }
  }

  v14 = (*table + 48 * xmlHashComputeKey(table, v7, name2, name3));
  v6 = *(v14 + 10);
  if (!v6)
  {
    v19 = 0;
LABEL_39:
    if (*(table + 2))
    {
      *(v14 + 1) = v7;
      *(v14 + 2) = name2;
    }

    else
    {
      *(v14 + 1) = xmlStrdup(v7);
      *(v14 + 2) = xmlStrdup(name2);
      name3 = xmlStrdup(name3);
    }

    *(v14 + 3) = name3;
    *(v14 + 4) = userdata;
    *v14 = 0;
    *(v14 + 10) = 1;
    ++*(table + 3);
    if (v6)
    {
      v6 = 0;
      *v19 = v14;
    }

    return v6;
  }

  v15 = *v14;
  if (!*(table + 2))
  {
    if (v15)
    {
      while (!xmlStrEqual(*(v14 + 1), v7) || !xmlStrEqual(*(v14 + 2), name2) || !xmlStrEqual(*(v14 + 3), name3))
      {
        v14 = *v14;
        if (!*v14)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      if (!xmlStrEqual(*(v14 + 1), v7) || !xmlStrEqual(*(v14 + 2), name2) || !xmlStrEqual(*(v14 + 3), name3))
      {
LABEL_38:
        v19 = v14;
        v14 = malloc_type_malloc(0x30uLL, 0x10B00402F1DE98BuLL);
        if (!v14)
        {
          return -1;
        }

        goto LABEL_39;
      }
    }

    if (f)
    {
      v18 = *(v14 + 4);
      v17 = *(v14 + 1);
      goto LABEL_36;
    }

LABEL_37:
    v6 = 0;
    *(v14 + 4) = userdata;
    return v6;
  }

  if (!v15)
  {
LABEL_20:
    v17 = *(v14 + 1);
    if (v17 == v7 && *(v14 + 2) == name2 && *(v14 + 3) == name3)
    {
      if (f)
      {
        v18 = *(v14 + 4);
LABEL_36:
        (f)(v18, v17);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  while (1)
  {
    v16 = v14;
    v14 = v15;
    if (v16[1] == v7 && v16[2] == name2 && v16[3] == name3)
    {
      break;
    }

    v15 = *v15;
    if (!*v14)
    {
      goto LABEL_20;
    }
  }

  if (f)
  {
    (f)(v16[4]);
  }

  v6 = 0;
  v16[4] = userdata;
  return v6;
}

xmlError *htmlCheckParagraph(xmlError *result)
{
  v1 = result;
  file = result[3].file;
  if (file)
  {
    if (!htmlOmittedDefaultValue)
    {
      return result;
    }

    v3 = 0;
    while (1)
    {
      result = xmlStrEqual(file, htmlNoContentElements[v3]);
      if (result)
      {
        break;
      }

      if (++v3 == 2)
      {
        return result;
      }
    }
  }

  htmlAutoClose(v1, "p");
  htmlCheckImplied(v1, "p");
  result = htmlnamePush(v1, "p");
  if (*&v1->domain)
  {
    v4 = *(*&v1->domain + 112);
    if (v4)
    {
      message = v1->message;

      return v4(message, "p", 0);
    }
  }

  return result;
}

xmlXPathObjectPtr xmlXPathEval(const xmlChar *str, xmlXPathContextPtr ctx)
{
  if (ctx)
  {
    xmlInitParser();
    v4 = xmlXPathNewParserContext(str, ctx);
    if (v4)
    {
      v5 = v4;
      xmlXPathEvalExpr(v4);
      if (v5->error)
      {
LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }

      valueNr = v5->valueNr;
      if (valueNr >= 1)
      {
        valueTab = v5->valueTab;
        v8 = valueNr - 1;
        v5->valueNr = valueNr - 1;
        if (valueNr == 1)
        {
          v5->value = 0;
          v9 = valueTab[v8];
          valueTab[v8] = 0;
          if (!v9)
          {
            goto LABEL_12;
          }

LABEL_14:
          xmlXPathFreeParserContext(v5);
          return v9;
        }

        v5->value = valueTab[valueNr - 2];
        v9 = valueTab[v8];
        valueTab[v8] = 0;
        if (v9)
        {
          v10 = *__xmlGenericError();
          v11 = __xmlGenericErrorContext();
          v10(*v11, "xmlXPathCompiledEval: %d object(s) left on the stack.\n", v5->valueNr);
          goto LABEL_14;
        }
      }

LABEL_12:
      v12 = *__xmlGenericError();
      v13 = __xmlGenericErrorContext();
      v12(*v13, "xmlXPathCompiledEval: No result on the stack.\n");
      goto LABEL_13;
    }
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0xCu, 1, 3, "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 14428, 0, 0, 0, 0, 0, "NULL context pointer\n", v15);
  }

  return 0;
}

xmlError *htmlnamePush(uint64_t a1, xmlChar *str1)
{
  v4 = *(a1 + 52);
  if (v4 > 2)
  {
LABEL_5:
    if (v4 > 9)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!xmlStrEqual(str1, "head"))
  {
    v4 = *(a1 + 52);
    goto LABEL_5;
  }

  *(a1 + 52) = 3;
LABEL_6:
  if (xmlStrEqual(str1, "body"))
  {
    *(a1 + 52) = 10;
  }

LABEL_8:
  v5 = *(a1 + 296);
  v6 = *(a1 + 300);
  if (v5 < v6)
  {
    result = *(a1 + 304);
LABEL_18:
    *(&result->domain + v5) = str1;
    *(a1 + 288) = str1;
    *(a1 + 296) = v5 + 1;
    return result;
  }

  if (v6 < 1)
  {
    v8 = 10;
  }

  else
  {
    if (v6 >= 0x3B9ACA00)
    {
      v9 = "Could not allocation new memory.";
      goto LABEL_21;
    }

    if (1000000000 - ((v6 + 1) >> 1) >= v6)
    {
      v8 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v8 = 1000000000;
    }
  }

  result = malloc_type_realloc(*(a1 + 304), 8 * v8, 0x50040EE9192B6uLL);
  if (result)
  {
    *(a1 + 304) = result;
    *(a1 + 300) = v8;
    v5 = *(a1 + 296);
    goto LABEL_18;
  }

  v9 = "Could not re-allocate new memory.";
LABEL_21:

  return htmlErrMemory(a1, v9);
}

void *htmlAutoClose(void *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    for (i = result[36]; i; i = v2[36])
    {
      v10[0] = i;
      v10[1] = a2;
      result = bsearch(v10, htmlStartClose, 0xFBuLL, 0x10uLL, htmlCompareStartClose);
      if (!result)
      {
        break;
      }

      if (*v2)
      {
        v5 = *(*v2 + 120);
        if (v5)
        {
          result = v5(v2[1], v2[36]);
        }
      }

      v6 = *(v2 + 74);
      if (v6 >= 1)
      {
        v7 = v2[38];
        v8 = v6 - 1;
        *(v2 + 74) = v6 - 1;
        if (v6 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v7 + 8 * v6 - 16);
        }

        v2[36] = v9;
        *(v7 + 8 * v8) = 0;
      }
    }
  }

  else
  {

    return htmlAutoCloseOnEnd(result);
  }

  return result;
}

xmlXPathParserContextPtr xmlXPathNewParserContext(const xmlChar *str, xmlXPathContextPtr ctxt)
{
  v4 = malloc_type_malloc(0x58uLL, 0x10F0040D3860B81uLL);
  v5 = v4;
  if (v4)
  {
    *&v4->valueFrame = 0;
    *&v4->valueTab = 0u;
    *&v4->xptr = 0u;
    *&v4->error = 0u;
    *&v4->value = 0u;
    v4->cur = str;
    v4->base = str;
    v4->context = ctxt;
    v6 = xmlXPathNewCompExpr();
    v5->comp = v6;
    if (v6)
    {
      if (ctxt)
      {
        dict = ctxt->dict;
        if (dict)
        {
          *(v6 + 4) = dict;
          xmlDictReference(dict);
        }
      }
    }

    else
    {
      free(v5->valueTab);
      free(v5);
      return 0;
    }
  }

  else
  {
    xmlXPathErrMemory(ctxt, "creating parser context\n");
  }

  return v5;
}

xmlError *htmlCheckImplied(xmlError *result, xmlChar *str1)
{
  if ((*(&result[6].line + 5) & 0x20) != 0)
  {
    return result;
  }

  if (!htmlOmittedDefaultValue)
  {
    return result;
  }

  v3 = result;
  result = xmlStrEqual(str1, "html");
  if (result)
  {
    return result;
  }

  if (*(v3 + 296) <= 0)
  {
    htmlnamePush(v3, "html");
    if (*v3)
    {
      v4 = *(*v3 + 112);
      if (v4)
      {
        v4(*(v3 + 8), "html", 0);
      }
    }
  }

  result = xmlStrEqual(str1, "body");
  if (result)
  {
    return result;
  }

  result = xmlStrEqual(str1, "head");
  if (result)
  {
    return result;
  }

  if (*(v3 + 296) <= 1)
  {
    result = xmlStrEqual(str1, "script");
    if (result || (result = xmlStrEqual(str1, "style"), result) || (result = xmlStrEqual(str1, "meta"), result) || (result = xmlStrEqual(str1, "link"), result) || (result = xmlStrEqual(str1, "title"), result) || (result = xmlStrEqual(str1, "base"), result))
    {
      if (*(v3 + 52) > 2)
      {
        return result;
      }

      result = htmlnamePush(v3, "head");
      if (!*v3)
      {
        return result;
      }

      v5 = *(*v3 + 112);
      if (!v5)
      {
        return result;
      }

      v6 = *(v3 + 8);
      v7 = "head";
LABEL_22:

      return v5(v6, v7, 0);
    }
  }

  result = xmlStrEqual(str1, "noframes");
  if (result)
  {
    return result;
  }

  result = xmlStrEqual(str1, "frame");
  if (result)
  {
    return result;
  }

  result = xmlStrEqual(str1, "frameset");
  if (result || *(v3 + 52) > 9)
  {
    return result;
  }

  if (*(v3 + 296) < 1)
  {
LABEL_34:
    result = htmlnamePush(v3, "body");
    if (!*v3)
    {
      return result;
    }

    v5 = *(*v3 + 112);
    if (!v5)
    {
      return result;
    }

    v6 = *(v3 + 8);
    v7 = "body";
    goto LABEL_22;
  }

  v8 = 0;
  while (1)
  {
    result = xmlStrEqual(*(*(v3 + 304) + 8 * v8), "body");
    if (result)
    {
      return result;
    }

    result = xmlStrEqual(*(*(v3 + 304) + 8 * v8), "head");
    if (result)
    {
      return result;
    }

    if (++v8 >= *(v3 + 296))
    {
      goto LABEL_34;
    }
  }
}

int *xmlXPathNewCompExpr()
{
  v0 = malloc_type_malloc(0x30uLL, 0x10300405D6D2801uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 5) = 0;
    *(v0 + 24) = 0u;
    *(v0 + 8) = 0u;
    *v0 = 0xA00000000;
    v2 = malloc_type_malloc(0x230uLL, 0x1080040034B7634uLL);
    v1[1] = v2;
    if (v2)
    {
      __memset_chk();
      *(v1 + 4) = -1;
    }

    else
    {
      xmlXPathErrMemory(0, "allocating steps\n");
      free(v1);
      return 0;
    }
  }

  else
  {
    xmlXPathErrMemory(0, "allocating component\n");
  }

  return v1;
}

void xmlSAX2StartElement(void *ctx, const xmlChar *fullname, const xmlChar **atts)
{
  v60 = *MEMORY[0x1E69E9840];
  if (ctx)
  {
    if (fullname)
    {
      v5 = *(ctx + 2);
      if (v5)
      {
        children = *(ctx + 10);
        if (*(ctx + 39))
        {
          if (!*(v5 + 88))
          {
            v12 = *(v5 + 80);
            if (!v12 || !v12[9] && !v12[10] && !v12[11] && !v12[12])
            {
              xmlErrValid(ctx, 94, "Validation failed: no DTD found !", 0, 0);
              *(ctx + 39) = 0;
            }
          }
        }

        prefix = 0;
        v8 = xmlSplitQName(ctx, fullname, &prefix);
        v9 = xmlNewDocNodeEatName(*(ctx + 2), 0, v8, 0);
        if (v9)
        {
          v10 = v9;
          v11 = *(ctx + 2);
          if (v11->children)
          {
            if (!children)
            {
              children = v11->children;
            }
          }

          else
          {
            xmlAddChild(v11, v10);
          }

          *(ctx + 104) = -1;
          if (*(ctx + 109))
          {
            v13 = *(ctx + 7);
            if (v13)
            {
              v14 = *(v13 + 52);
              if (v14 >= 0xFFFF)
              {
                LOWORD(v14) = -1;
              }

              v10->line = v14;
            }
          }

          if (nodePush(ctx, v10) < 0)
          {
            xmlUnlinkNode(v10);
            xmlFreeNode(v10);
LABEL_114:
            if (prefix)
            {
              free(prefix);
            }

            return;
          }

          if (children)
          {
            if (children->type == XML_ELEMENT_NODE)
            {
              xmlAddChild(children, v10);
            }

            else
            {
              xmlAddSibling(children, v10);
            }
          }

          if (*(ctx + 13))
          {
LABEL_33:
            if (atts)
            {
              v15 = *atts;
              v16 = atts[1];
              if (*(ctx + 13))
              {
                if (v15)
                {
                  v17 = (atts + 3);
                  do
                  {
                    xmlSAX2AttributeInternal(ctx, v15, v16, 0);
                    v15 = *(v17 - 1);
                    v16 = *v17;
                    v17 += 2;
                  }

                  while (v15);
                }
              }

              else if (v15 && v16)
              {
                v43 = (atts + 3);
                do
                {
                  if (*v15 != 120 || v15[1] != 109 || v15[2] != 108 || v15[3] != 110 || v15[4] != 115)
                  {
                    xmlSAX2AttributeInternal(ctx, v15, v16, 0);
                  }

                  v15 = *(v43 - 1);
                  v16 = *v43;
                  v43 += 2;
                  if (v15)
                  {
                    v44 = v16 == 0;
                  }

                  else
                  {
                    v44 = 1;
                  }
                }

                while (!v44);
              }
            }

            if (*(ctx + 39) && *(ctx + 52) == -1412623820)
            {
              v45 = xmlValidateDtdFinal((ctx + 160), *(ctx + 2));
              if (v45 <= 0)
              {
                *(ctx + 38) = 0;
                if (v45 < 0)
                {
                  *(ctx + 6) = 0;
                }
              }

              *(ctx + 38) &= xmlValidateRoot((ctx + 160), *(ctx + 2));
              *(ctx + 52) = -1412623819;
            }

            goto LABEL_114;
          }

          node = children;
          v18 = *(ctx + 2);
          v19 = *(v18 + 80);
          if (!v19 && !*(v18 + 88) || (v20 = prefix, DtdQElementDesc = xmlGetDtdQElementDesc(v19, v8, prefix), v22 = DtdQElementDesc != 0, !DtdQElementDesc) && (DtdQElementDesc = xmlGetDtdQElementDesc(*(*(ctx + 2) + 88), v8, v20)) == 0)
          {
LABEL_118:
            if (atts)
            {
              v46 = *atts;
              if (*atts)
              {
                v47 = atts[1];
                if (v47)
                {
                  v48 = (atts + 3);
                  do
                  {
                    if (*v46 == 120 && v46[1] == 109 && v46[2] == 108 && v46[3] == 110 && v46[4] == 115)
                    {
                      xmlSAX2AttributeInternal(ctx, v46, v47, prefix);
                    }

                    v46 = *(v48 - 1);
                    v47 = *v48;
                    v48 += 2;
                    if (v46)
                    {
                      v49 = v47 == 0;
                    }

                    else
                    {
                      v49 = 1;
                    }
                  }

                  while (!v49);
                }
              }
            }

            v50 = xmlSearchNs(*(ctx + 2), v10, prefix);
            v51 = v50;
            if (node && !v50)
            {
              v51 = xmlSearchNs(*(ctx + 2), node, prefix);
            }

            if (prefix && !v51)
            {
              v51 = xmlNewNs(v10, 0, prefix);
              xmlNsWarnMsg(ctx, 201, "Namespace prefix %s is not defined\n", prefix, 0);
            }

            if (v51)
            {
              href = v51->href;
              if (href)
              {
                if (*href || v51->prefix)
                {
                  xmlSetNs(v10, v51);
                }
              }
            }

            goto LABEL_33;
          }

          v23 = DtdQElementDesc;
          while (1)
          {
            attributes = v23->attributes;
            v25 = *(ctx + 2);
            if (*(v25 + 76) == 1)
            {
              if (*(v25 + 88))
              {
                if (*(ctx + 39) && attributes != 0)
                {
                  v54 = v8;
                  do
                  {
                    if (attributes->defaultValue && xmlGetDtdQAttrDesc(*(*(ctx + 2) + 88), attributes->elem, attributes->name, attributes->prefix) == attributes && !xmlGetDtdQAttrDesc(*(*(ctx + 2) + 80), attributes->elem, attributes->name, attributes->prefix))
                    {
                      v27 = attributes->prefix;
                      if (v27)
                      {
                        v28 = xmlStrdup(v27);
                        v29 = xmlStrcat(v28, ":");
                        v30 = xmlStrcat(v29, attributes->name);
                      }

                      else
                      {
                        v30 = xmlStrdup(attributes->name);
                      }

                      v31 = v30;
                      if (!v30)
                      {
                        xmlSAX2ErrMemory(ctx, "xmlSAX2StartElement");
                        v8 = v54;
                        break;
                      }

                      if (atts && (v32 = *atts) != 0)
                      {
                        v33 = atts + 2;
                        while (!xmlStrEqual(v32, v31))
                        {
                          v34 = *v33;
                          v33 += 2;
                          v32 = v34;
                          if (!v34)
                          {
                            goto LABEL_63;
                          }
                        }
                      }

                      else
                      {
LABEL_63:
                        xmlErrValid(ctx, 538, "standalone: attribute %s on %s defaulted from external subset\n", v31, attributes->elem);
                      }

                      free(v31);
                      v8 = v54;
                    }

                    attributes = attributes->nexth;
                  }

                  while (attributes);
                }
              }

              attributes = v23->attributes;
            }

            if (attributes)
            {
              break;
            }

LABEL_90:
            if (v22)
            {
              v23 = xmlGetDtdQElementDesc(*(*(ctx + 2) + 88), v8, v20);
              v22 = 0;
              if (v23)
              {
                continue;
              }
            }

            goto LABEL_118;
          }

          while (1)
          {
            if (!attributes->defaultValue)
            {
              goto LABEL_89;
            }

            v35 = attributes->prefix;
            if (v35)
            {
              if (xmlStrEqual(v35, "xmlns"))
              {
                goto LABEL_74;
              }

              if (attributes->prefix)
              {
                goto LABEL_73;
              }
            }

            if (!xmlStrEqual(attributes->name, "xmlns"))
            {
LABEL_73:
              if ((*(ctx + 432) & 4) == 0)
              {
                goto LABEL_89;
              }
            }

LABEL_74:
            DtdQAttrDesc = xmlGetDtdQAttrDesc(*(*(ctx + 2) + 80), attributes->elem, attributes->name, attributes->prefix);
            if (DtdQAttrDesc == attributes || DtdQAttrDesc == 0)
            {
              v59 = 0;
              v57 = 0u;
              v58 = 0u;
              *memory = 0u;
              v38 = xmlBuildQName(attributes->name, attributes->prefix, memory, 50);
              if (!v38)
              {
                xmlSAX2ErrMemory(ctx, "xmlSAX2StartElement");
                goto LABEL_118;
              }

              v39 = v38;
              if (atts && (v40 = *atts) != 0)
              {
                v41 = atts + 2;
                while (!xmlStrEqual(v40, v39))
                {
                  v42 = *v41;
                  v41 += 2;
                  v40 = v42;
                  if (!v42)
                  {
                    goto LABEL_85;
                  }
                }
              }

              else
              {
LABEL_85:
                xmlSAX2AttributeInternal(ctx, v39, attributes->defaultValue, v20);
              }

              if (v39 != memory && v39 != attributes->name)
              {
                free(v39);
              }
            }

LABEL_89:
            attributes = attributes->nexth;
            if (!attributes)
            {
              goto LABEL_90;
            }
          }
        }

        if (prefix)
        {
          free(prefix);
        }

        xmlSAX2ErrMemory(ctx, "xmlSAX2StartElement");
      }
    }
  }
}

xmlChar *__cdecl xmlSplitQName(xmlParserCtxtPtr ctxt, const xmlChar *name, xmlChar **prefix)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!prefix)
  {
    return 0;
  }

  *prefix = 0;
  if (!name)
  {
    return 0;
  }

  v5 = *name;
  if (v5 != 58)
  {
    v8 = 0;
    memset(__src, 0, 105);
    if (v5)
    {
      while (v5 != 58)
      {
        if (v8 == 100)
        {
          v9 = 100;
          goto LABEL_15;
        }

        *(__src + v8) = v5;
        v5 = name[++v8];
        if (!v5)
        {
          break;
        }
      }
    }

    if (v8 <= 0x63)
    {
      v10 = 0;
      v11 = &name[v8 + 1];
      LODWORD(v12) = 100;
    }

    else
    {
      v9 = v8;
LABEL_15:
      LODWORD(v12) = 2 * v9;
      v13 = malloc_type_malloc(2 * v9, 0x100004077774924uLL);
      v10 = v13;
      if (!v13)
      {
        goto LABEL_73;
      }

      v11 = &name[v8 + 1];
      v8 = v9;
      memcpy(v13, __src, v9);
      while (v5 && v5 != 58)
      {
        if (v8 + 10 > v12)
        {
          v12 = (2 * v12);
          v14 = malloc_type_realloc(v10, v12, 0x100004077774924uLL);
          if (!v14)
          {
            free(v10);
            xmlErrMemory(ctxt, 0);
            return 0;
          }

          v10 = v14;
        }

        v10[v8++] = v5;
        v15 = *v11++;
        v5 = v15;
      }

      v10[v8] = 0;
    }

    if (v5 == 58 && !*v11)
    {
      if (v10)
      {
        free(v10);
      }

      *prefix = 0;
      goto LABEL_4;
    }

    if (v10)
    {
      LODWORD(v12) = 100;
    }

    else
    {
      v10 = xmlStrndup(__src, v8);
    }

    if (v5 == 58)
    {
      LOBYTE(v16) = *v11;
      *prefix = v10;
      if (!v16)
      {
        v19 = "";
        v20 = 0;
        return xmlStrndup(v19, v20);
      }

      if (((v16 & 0xDF) - 65) < 0x1Au || v16 == 58 || v16 == 95)
      {
        goto LABEL_53;
      }

      len = 0;
      v17 = xmlStringCurrentChar(ctxt, v11, &len);
      v18 = v17;
      if (v17 > 255)
      {
        if (xmlCharInRange(v17, &xmlIsBaseCharGroup) || v18 == 12295 || (v18 - 40870) > 0xFFFFAE59 || (v18 - 12330) > 0xFFFFFFF6)
        {
          goto LABEL_53;
        }
      }

      else if ((v17 - 192) < 0x17 || (v17 & 0xFFFFFFDF) - 65 < 0x1A || v17 == 95 || v17 > 247 || (v17 - 216) < 0x1F)
      {
        goto LABEL_53;
      }

      xmlFatalErrMsgStr(ctxt, 202, "Name %s is not XML Namespace compliant\n", name);
LABEL_53:
      v21 = (v11 + 1);
      if (v12 < 1)
      {
        LODWORD(v22) = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          *(__src + v22) = v16;
          v16 = v21[v22++];
          if (v16)
          {
            v23 = v22 >= v12;
          }

          else
          {
            v23 = 1;
          }
        }

        while (!v23);
        if (v22 < v12)
        {
          v19 = __src;
          v20 = v22;
          return xmlStrndup(v19, v20);
        }

        v21 += v22;
      }

      LODWORD(v24) = 2 * v22;
      v25 = malloc_type_malloc((2 * v22), 0x100004077774924uLL);
      v10 = v25;
      if (v25)
      {
        v22 = v22;
        memcpy(v25, __src, v22);
        if (v16)
        {
          while (1)
          {
            if (v22 + 10 > v24)
            {
              v24 = (2 * v24);
              v26 = malloc_type_realloc(v10, v24, 0x100004077774924uLL);
              if (!v26)
              {
                xmlErrMemory(ctxt, 0);
                free(v10);
                return 0;
              }

              v10 = v26;
            }

            v27 = v22 + 1;
            v10[v22] = v16;
            v28 = *v21++;
            LOBYTE(v16) = v28;
            ++v22;
            if (!v28)
            {
              v22 = v27;
              break;
            }
          }
        }

        v10[v22] = 0;
        return v10;
      }

LABEL_73:
      xmlErrMemory(ctxt, 0);
    }

    return v10;
  }

LABEL_4:

  return xmlStrdup(name);
}

void xmlXPathEvalExpr(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    return;
  }

  v2 = xmlXPathTryStreamCompile(ctxt->context, ctxt->base);
  if (v2)
  {
    v4 = v2;
    comp = ctxt->comp;
    if (comp)
    {
      xmlXPathFreeCompExpr(comp);
    }

    ctxt->comp = v4;
LABEL_6:

    xmlXPathRunEval(ctxt, 0);
    return;
  }

  if (linkedOnOrAfterFall2022OSVersions(0, v3))
  {
    context = ctxt->context;
    if (context)
    {
      context->depth = 0;
    }
  }

  xmlXPathCompileExpr(ctxt, 1);
  if (!ctxt->error)
  {
    if (!*ctxt->cur)
    {
      v9 = ctxt->comp;
      if (*v9 >= 2 && (v9[4] & 0x80000000) == 0)
      {
        if (linkedOnOrAfterFall2022OSVersions(v7, v8))
        {
          v10 = ctxt->context;
          if (v10)
          {
            v10->depth = 0;
          }
        }

        xmlXPathOptimizeExpression(ctxt, (*(ctxt->comp + 1) + 56 * *(ctxt->comp + 4)));
      }

      goto LABEL_6;
    }

    xmlXPathErr(ctxt, 7);
  }
}

void *xmlXPathTryStreamCompile(uint64_t a1, xmlChar *str)
{
  if (xmlStrchr(str, 0x5Bu) || xmlStrchr(str, 0x28u) || xmlStrchr(str, 0x40u))
  {
    return 0;
  }

  v6 = xmlStrchr(str, 0x3Au);
  if (v6)
  {
    if (!a1)
    {
      return 0;
    }

    v7 = *(a1 + 88);
    if (!v7 || v6[1] == 58)
    {
      return 0;
    }
  }

  else
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_20;
    }

    v7 = *(a1 + 88);
  }

  v8 = *(a1 + 328);
  if (v7 < 1)
  {
LABEL_20:
    v17 = xmlPatterncompile(str, v8, 1, 0);
    goto LABEL_24;
  }

  v9 = malloc_type_malloc(8 * (2 * v7 + 2), 0x10040436913F5uLL);
  v4 = v9;
  if (!v9)
  {
    v18 = "allocating namespaces array\n";
LABEL_31:
    xmlXPathErrMemory(a1, v18);
    return v4;
  }

  v10 = *(a1 + 88);
  if (v10 < 1)
  {
    v16 = 0;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
    v13 = 8 * v10;
    v14 = 1;
    do
    {
      v15 = *(*(a1 + 80) + v11);
      *(v12 - 1) = *(v15 + 16);
      *v12 = *(v15 + 24);
      v12 += 2;
      v14 += 2;
      v11 += 8;
    }

    while (v13 != v11);
    v16 = v14 - 1;
  }

  v19 = &v9[v16];
  *v19 = 0;
  v19[1] = 0;
  v17 = xmlPatterncompile(str, v8, 1, v9);
  free(v4);
LABEL_24:
  if (!v17 || xmlPatternStreamable(v17) != 1)
  {
    xmlFreePattern(v17);
    return 0;
  }

  v20 = xmlXPathNewCompExpr();
  v4 = v20;
  if (!v20)
  {
    v18 = "allocating streamable expression\n";
    goto LABEL_31;
  }

  *(v20 + 4) = v8;
  *(v20 + 5) = v17;
  if (v8)
  {
    xmlDictReference(v8);
  }

  return v4;
}

const xmlChar *htmlParseHTMLName_nonInvasive(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v1 = *(*(a1 + 56) + 32);
  v2 = *(v1 + 1);
  if ((v2 & 0xFFFFFFDF) - 65 < 0x1A || v2 == 95 || v2 == 58)
  {
    v3 = 0;
    v4 = v1 + 1;
    while (1)
    {
      v5 = *(v4 + v3);
      if ((v5 - 65) >= 0x1A)
      {
        if ((v5 - 97) >= 0x1A && (v5 - 48) >= 0xA && ((v5 - 45) > 0x32 || ((1 << (v5 - 45)) & 0x4000000002001) == 0))
        {
          return xmlDictLookup(*(a1 + 456), v9, v3);
        }
      }

      else
      {
        LOBYTE(v5) = v5 | 0x20;
      }

      *(v9 + v3++) = v5;
      if (v3 == 100)
      {
        return xmlDictLookup(*(a1 + 456), v9, v3);
      }
    }
  }

  return 0;
}

const xmlChar *__cdecl xmlStrchr(const xmlChar *str, xmlChar val)
{
  if (str)
  {
    v2 = *str;
    if (*str)
    {
      while (v2 != val)
      {
        v3 = *++str;
        v2 = v3;
        if (!v3)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return str;
}

uint64_t htmlCompareStartClose(const char **a1, const char **a2)
{
  result = strcmp(*a1, *a2);
  if (!result)
  {
    v5 = a1[1];
    v6 = a2[1];

    return strcmp(v5, v6);
  }

  return result;
}

uint64_t htmlParseStartTag(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    htmlParseErr(a1, 1, "htmlParseStartTag: context error\n", 0, 0);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 272) == -1 || **(v2 + 32) != 60)
  {
    return 0xFFFFFFFFLL;
  }

  xmlNextChar(a1);
  v3 = *(a1 + 464);
  v4 = *(a1 + 472);
  if (!*(a1 + 452))
  {
    v5 = *(a1 + 56);
    if (v5->end - v5->cur <= 249)
    {
      xmlParserInputGrow(v5, 250);
    }
  }

  v6 = htmlParseHTMLName(a1);
  if (!v6)
  {
    htmlParseErr(a1, 68, "htmlParseStartTag: invalid element name\n", 0, 0);
    while (1)
    {
      v9 = 0xFFFFFFFFLL;
      if (!**(*(a1 + 56) + 32) || **(*(a1 + 56) + 32) == 62 || *(a1 + 272) == -1)
      {
        break;
      }

      xmlNextChar(a1);
    }

    return v9;
  }

  v7 = v6;
  v8 = xmlStrEqual(v6, "meta");
  htmlAutoClose(a1, v7);
  htmlCheckImplied(a1, v7);
  v40 = v8;
  if (*(a1 + 296) < 1)
  {
    v9 = 0;
    goto LABEL_22;
  }

  if (xmlStrEqual(v7, "html"))
  {
    htmlParseErr(a1, 800, "htmlParseStartTag: misplaced <html> tag\n", v7, 0);
    ++*(a1 + 392);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 296) != 1)
  {
LABEL_22:
    if (xmlStrEqual(v7, "head"))
    {
      htmlParseErr(a1, 800, "htmlParseStartTag: misplaced <head> tag\n", v7, 0);
      ++*(a1 + 392);
      v9 = 1;
    }
  }

  str1 = v7;
  if (xmlStrEqual(v7, "body") && *(a1 + 296) >= 1)
  {
    v11 = 0;
    do
    {
      if (xmlStrEqual(*(*(a1 + 304) + 8 * v11), "body"))
      {
        htmlParseErr(a1, 800, "htmlParseStartTag: misplaced <body> tag\n", str1, 0);
        ++*(a1 + 392);
        v9 = 1;
      }

      ++v11;
    }

    while (v11 < *(a1 + 296));
  }

  htmlSkipBlankChars(a1);
  LODWORD(v12) = 0;
  while (1)
  {
    v13 = *(a1 + 56);
    cur = v13->cur;
    v15 = *cur;
    if (v15 == 47)
    {
      v15 = cur[1];
    }

    else if (!*cur)
    {
      break;
    }

    if (v15 == 62)
    {
      break;
    }

    if (!*(a1 + 452) && v13->end - cur <= 249)
    {
      xmlParserInputGrow(v13, 250);
    }

    v16 = htmlParseHTMLName(a1);
    if (!v16)
    {
      htmlParseErr(a1, 68, "error parsing attribute name\n", 0, 0);
      while (1)
      {
        v23 = *(*(a1 + 56) + 32);
        v24 = *v23;
        if ((v24 | 0x20) == 0x20 || (v24 - 9) < 2)
        {
          goto LABEL_84;
        }

        switch(v24)
        {
          case 47:
            v24 = v23[1];
            break;
          case 13:
            goto LABEL_84;
          case 62:
            goto LABEL_84;
        }

        xmlNextChar(a1);
      }
    }

    v17 = v16;
    htmlSkipBlankChars(a1);
    if (**(*(a1 + 56) + 32) != 61)
    {
      v19 = 0;
      goto LABEL_61;
    }

    xmlNextChar(a1);
    htmlSkipBlankChars(a1);
    v18 = **(*(a1 + 56) + 32);
    if (v18 == 39)
    {
      xmlNextChar(a1);
      v19 = htmlParseHTMLAttribute(a1, 39);
      if (**(*(a1 + 56) + 32) == 39)
      {
LABEL_56:
        xmlNextChar(a1);
        goto LABEL_61;
      }

      v20 = a1;
      v21 = 40;
      v22 = "AttValue: ' expected\n";
    }

    else if (v18 == 34)
    {
      xmlNextChar(a1);
      v19 = htmlParseHTMLAttribute(a1, 34);
      if (**(*(a1 + 56) + 32) == 34)
      {
        goto LABEL_56;
      }

      v20 = a1;
      v21 = 40;
      v22 = "AttValue:  expected\n";
    }

    else
    {
      v19 = htmlParseHTMLAttribute(a1, 0);
      if (v19)
      {
        goto LABEL_61;
      }

      v20 = a1;
      v21 = 41;
      v22 = "AttValue: no value found\n";
    }

    htmlParseErr(v20, v21, v22, 0, 0);
LABEL_61:
    if (v12 < 1)
    {
      if (v3)
      {
LABEL_67:
        if (v12 + 4 <= v4)
        {
          goto LABEL_81;
        }

        if (v4 < 1)
        {
          v26 = 11;
LABEL_78:
          v28 = malloc_type_realloc(v3, 16 * v26, 0x10040436913F5uLL);
          if (v28)
          {
            *(a1 + 464) = v28;
            v4 = 2 * v26;
            v3 = v28;
            goto LABEL_80;
          }
        }

        else if (v4 < 0x5F5E100)
        {
          if (100000000 - ((v4 + 1) >> 1) >= v4)
          {
            v26 = v4 + ((v4 + 1) >> 1);
          }

          else
          {
            v26 = 100000000;
          }

          goto LABEL_78;
        }

        htmlErrMemory(a1, 0);
        if (!v19)
        {
          goto LABEL_84;
        }

LABEL_83:
        free(v19);
        goto LABEL_84;
      }

      v27 = malloc_type_malloc(0xB0uLL, 0x10040436913F5uLL);
      v3 = v27;
      if (v27)
      {
        *(a1 + 464) = v27;
        v4 = 22;
LABEL_80:
        *(a1 + 472) = v4;
LABEL_81:
        v29 = &v3[v12];
        *v29 = v17;
        v29[1] = v19;
        v12 = v12 + 2;
        v3[v12] = 0;
        v29[3] = 0;
        goto LABEL_84;
      }

      htmlErrMemory(a1, 0);
      v4 = 22;
      if (v19)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v25 = 0;
      while (!xmlStrEqual(v3[v25], v17))
      {
        v25 += 2;
        if (v12 <= v25)
        {
          goto LABEL_67;
        }
      }

      htmlParseErr(a1, 42, "Attribute %s redefined\n", v17, 0);
      if (v19)
      {
        goto LABEL_83;
      }
    }

LABEL_84:
    htmlSkipBlankChars(a1);
  }

  if (v40)
  {
    if (v12)
    {
      if (v3)
      {
        v30 = *v3;
        if (*v3)
        {
          v31 = 0;
          v41 = 0;
          v32 = v3 + 2;
          do
          {
            v33 = *(v32 - 1);
            if (v33)
            {
              if (xmlStrcasecmp(v30, "http-equiv") || xmlStrcasecmp(v33, "Content-Type"))
              {
                if (xmlStrcasecmp(v30, "charset"))
                {
                  if (!xmlStrcasecmp(v30, "content"))
                  {
                    v31 = v33;
                  }
                }

                else
                {
                  htmlCheckEncodingDirect(a1, v33);
                }
              }

              else
              {
                v41 = 1;
              }
            }

            v34 = *v32;
            v32 += 2;
            v30 = v34;
          }

          while (v34);
          if (v41 && v31)
          {
            htmlCheckEncoding(a1, v31);
          }
        }
      }
    }
  }

  if (!v9 && (htmlnamePush(a1, str1), *a1) && (v38 = *(*a1 + 112)) != 0)
  {
    v39 = *(a1 + 8);
    if (v12)
    {
      v38(v39, str1, v3);
      goto LABEL_106;
    }

    v38(v39, str1, 0);
    return 0;
  }

  else
  {
LABEL_106:
    if (v3 && v12 >= 2)
    {
      v35 = v12;
      for (i = 1; i < v35; i += 2)
      {
        v37 = v3[i];
        if (v37)
        {
          free(v37);
        }
      }
    }
  }

  return v9;
}

void xmlXPathCompileExpr(xmlXPathParserContext *a1, uint64_t a2)
{
  v2 = a2;
  context = a1->context;
  if (linkedOnOrAfterFall2022OSVersions(a1, a2) && context)
  {
    depth = context->depth;
    if (depth >= 5000)
    {

      xmlXPathErr(a1, 26);
      return;
    }

    context->depth = depth + 10;
  }

  xmlXPathCompAndExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v9 = *i;
      if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    if (v9 == 111)
    {
      while (i[1] == 114)
      {
        v11 = *(a1->comp + 4);
        for (j = i + 2; ; ++j)
        {
          a1->cur = j;
          v13 = *j;
          v14 = v13 > 0x20;
          v15 = (1 << v13) & 0x100002600;
          if (v14 || v15 == 0)
          {
            break;
          }
        }

        xmlXPathCompAndExpr(a1);
        if (a1->error)
        {
          return;
        }

        v6 = xmlXPathCompExprAdd(a1, v11, *(a1->comp + 4), 2u, 0, 0, 0, 0, 0);
        for (i = a1->cur; ; a1->cur = i)
        {
          v17 = *i;
          if (v17 > 0x20 || ((1 << v17) & 0x100002600) == 0)
          {
            break;
          }

          ++i;
        }

        if (v17 != 111)
        {
          break;
        }
      }
    }

    if (v2)
    {
      comp = a1->comp;
      v7 = *(comp + 4);
      if (*(*(comp + 1) + 56 * v7) != 11)
      {
        v6 = xmlXPathCompExprAdd(a1, v7, 0xFFFFFFFF, 0x11u, 0, 0, 0, 0, 0);
      }
    }

    if (linkedOnOrAfterFall2022OSVersions(v6, v7) && context)
    {
      context->depth -= 10;
    }
  }
}

const xmlChar *htmlParseHTMLName(xmlParserCtxtPtr ctxt)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v2 = *ctxt->input->cur;
  if ((v2 & 0xFFFFFFDF) - 65 < 0x1A || ((v3 = v2 - 46, v4 = v3 > 0x31, v5 = (1 << v3) & 0x2000000001001, !v4) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    v7 = 0;
    while (1)
    {
      v8 = *ctxt->input->cur;
      if ((v8 - 65) >= 0x1A)
      {
        if ((v8 - 97) >= 0x1A && (v8 - 48) >= 0xA && ((v8 - 45) > 0x32 || ((1 << (v8 - 45)) & 0x4000000002003) == 0))
        {
          return xmlDictLookup(ctxt->dict, v12, v7);
        }
      }

      else
      {
        LOBYTE(v8) = v8 | 0x20;
      }

      *(v12 + v7++) = v8;
      xmlNextChar(ctxt);
      if (v7 == 100)
      {
        return xmlDictLookup(ctxt->dict, v12, v7);
      }
    }
  }

  return 0;
}

void xmlXPathCompAndExpr(xmlXPathParserContext *a1)
{
  xmlXPathCompEqualityExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v3 = *i;
      if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    if (v3 == 97)
    {
      do
      {
        if (i[1] != 110 || i[2] != 100)
        {
          break;
        }

        v5 = *(a1->comp + 4);
        for (j = i + 3; ; ++j)
        {
          a1->cur = j;
          v7 = *j;
          v8 = v7 > 0x20;
          v9 = (1 << v7) & 0x100002600;
          if (v8 || v9 == 0)
          {
            break;
          }
        }

        xmlXPathCompEqualityExpr(a1);
        if (a1->error)
        {
          break;
        }

        xmlXPathCompExprAdd(a1, v5, *(a1->comp + 4), 1u, 0, 0, 0, 0, 0);
        for (i = a1->cur; ; a1->cur = ++i)
        {
          v11 = *i;
          if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
          {
            break;
          }
        }
      }

      while (v11 == 97);
    }
  }
}

void xmlXPathCompEqualityExpr(xmlXPathParserContext *a1)
{
  xmlXPathCompRelationalExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v3 = *i;
      if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    LOBYTE(v5) = *i;
    while (v5 == 33)
    {
      v9 = i + 1;
      if (i[1] != 61)
      {
        return;
      }

      v8 = 0;
      v6 = *(a1->comp + 4);
      a1->cur = v9;
      if (*v9)
      {
        v7 = 2;
LABEL_16:
        v9 = &i[v7];
        a1->cur = v9;
      }

      for (j = v9 + 1; ; ++j)
      {
        v11 = *(j - 1);
        v12 = v11 > 0x20;
        v13 = (1 << v11) & 0x100002600;
        if (v12 || v13 == 0)
        {
          break;
        }

        a1->cur = j;
      }

      xmlXPathCompRelationalExpr(a1);
      if (a1->error)
      {
        return;
      }

      xmlXPathCompExprAdd(a1, v6, *(a1->comp + 4), 3u, v8, 0, 0, 0, 0);
      for (i = a1->cur; ; a1->cur = i)
      {
        v5 = *i;
        if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
        {
          break;
        }

        ++i;
      }
    }

    if (v5 != 61)
    {
      return;
    }

    v6 = *(a1->comp + 4);
    v7 = 1;
    v8 = 1;
    goto LABEL_16;
  }
}

void xmlXPathCompPathExpr(xmlXPathParserContext *a1)
{
  v2 = a1->cur;
  for (i = a1->cur + 1; ; ++i)
  {
    v4 = *(i - 1);
    if (v4 > 0x28)
    {
      break;
    }

    if (((1 << v4) & 0x100002600) == 0)
    {
      if (((1 << v4) & 0x11000000000) != 0)
      {
        v5 = i - 1;
        goto LABEL_11;
      }

      break;
    }

    a1->cur = i;
    LODWORD(v2) = v2 + 1;
  }

  v5 = i - 1;
  if (v4 - 48 < 0xA)
  {
    goto LABEL_11;
  }

  v6 = v4 - 34;
  if (v4 - 34 > 0x1E)
  {
    goto LABEL_126;
  }

  if (((1 << v6) & 0x40002100) != 0)
  {
LABEL_118:
    if (v4 == 47)
    {
      v53 = 8;
    }

    else
    {
      v53 = 9;
    }

    xmlXPathCompExprAdd(a1, 0xFFFFFFFF, 0xFFFFFFFF, v53, 0, 0, 0, 0, 0);
    for (j = a1->cur + 1; ; ++j)
    {
      v55 = *(j - 1);
      if (v55 > 0x2F)
      {
        goto LABEL_157;
      }

      if (((1 << v55) & 0x100002600) == 0)
      {
        break;
      }

      a1->cur = j;
    }

    if (v55 != 47)
    {
      goto LABEL_157;
    }

    while (1)
    {
      v59 = a1->cur;
      if (*a1->cur != 47)
      {
        goto LABEL_158;
      }

      v60 = v59 + 1;
      if (v59[1] == 47)
      {
        break;
      }

      while (1)
      {
        a1->cur = v60;
        v65 = *v60;
        if (v65 > 0x20)
        {
          goto LABEL_150;
        }

        if (((1 << v65) & 0x100002600) == 0)
        {
          break;
        }

        ++v60;
      }

      if (!*v60)
      {
        goto LABEL_148;
      }

LABEL_150:
      if ((v65 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_146;
      }

      if (v65 - 42 <= 0x35 && ((1 << (v65 - 42)) & 0x20000000400011) != 0)
      {
        goto LABEL_146;
      }

LABEL_148:
      if (a1->error)
      {
        goto LABEL_158;
      }
    }

    for (k = v59 + 2; ; ++k)
    {
      a1->cur = k;
      v62 = *k;
      v25 = v62 > 0x20;
      v63 = (1 << v62) & 0x100002600;
      if (v25 || v63 == 0)
      {
        break;
      }
    }

    xmlXPathCompExprAdd(a1, *(a1->comp + 4), 0xFFFFFFFF, 0xAu, 6u, 1u, 0, 0, 0);
LABEL_146:
    xmlXPathCompRelativeLocationPath(a1);
    goto LABEL_148;
  }

  if (((1 << v6) & 0x21) != 0)
  {
    goto LABEL_11;
  }

  if (v4 == 46)
  {
    if (*i - 48 >= 0xA)
    {
      goto LABEL_117;
    }

    goto LABEL_11;
  }

LABEL_126:
  while (v4 <= 0x20 && ((1 << v4) & 0x100002600) != 0)
  {
    a1->cur = i;
    v56 = *i++;
    v4 = v56;
    LODWORD(v2) = v2 + 1;
  }

  LODWORD(v128) = 0;
  v57 = xmlXPathCurrentChar(a1, &v128);
  v58 = v57;
  if (v57 <= 0x3E && ((1 << v57) & 0x4000800100000000) != 0)
  {
    goto LABEL_130;
  }

  if (v57 > 0xFF)
  {
    if (!xmlCharInRange(v57, &xmlIsBaseCharGroup) && v58 != 12295 && v58 - 19968 >= 0x51A6 && v58 - 12321 >= 9)
    {
      goto LABEL_130;
    }
  }

  else if ((v57 & 0xDF) - 65 >= 0x1A && v57 - 192 >= 0x17 && v57 <= 0xF7 && v57 - 216 >= 0x1F && v57 != 95 && v57 != 58)
  {
    goto LABEL_130;
  }

  cur = (i - 1);
  while (v58 > 0x3E || ((1 << v58) & 0x4000800100000000) == 0)
  {
    if (v58 > 0xFF)
    {
      if (xmlCharInRange(v58, &xmlIsBaseCharGroup))
      {
        v106 = 1;
      }

      else
      {
        v106 = v58 == 12295;
      }

      v108 = !v106 && v58 - 19968 >= 0x51A6 && v58 - 12321 >= 9;
      if (!v108 || xmlCharInRange(v58, &xmlIsDigitGroup))
      {
        goto LABEL_266;
      }
    }

    else if ((v58 & 0xDF) - 65 < 0x1A || v58 - 192 < 0x17 || v58 > 0xF7 || v58 - 216 < 0x1F || v58 - 48 < 0xA)
    {
      goto LABEL_266;
    }

    if (v58 - 45 > 0x32 || ((1 << (v58 - 45)) & 0x4000000002003) == 0)
    {
      if (v58 >= 0x100)
      {
        if (xmlCharInRange(v58, &xmlIsCombiningGroup))
        {
          goto LABEL_266;
        }

        v109 = xmlCharInRange(v58, &xmlIsExtenderGroup);
      }

      else
      {
        v109 = v58 == 183;
      }

      if (!v109)
      {
        break;
      }
    }

LABEL_266:
    a1->cur += v128;
    v58 = xmlXPathCurrentChar(a1, &v128);
  }

  v110 = xmlStrndup(cur, LODWORD(a1->cur) - v2);
  a1->cur = cur;
  if (!v110)
  {
LABEL_130:

    xmlXPathErr(a1, 7);
    return;
  }

  v111 = v110;
  if (xmlStrstr(v110, "::"))
  {
    free(v111);
    v5 = a1->cur;
    goto LABEL_117;
  }

  for (m = xmlStrlen(v111); ; ++m)
  {
    v119 = a1->cur[m];
    if (v119 != 32)
    {
      v120 = 0;
      if (!a1->cur[m] || v119 == 47)
      {
        goto LABEL_301;
      }

      if ((v119 - 9) >= 2 && v119 != 13)
      {
        break;
      }
    }
  }

  v120 = v119 == 40 && !xmlXPathIsNodeType(v111) && (!a1->xptr || !xmlStrEqual(v111, "range-to"));
LABEL_301:
  v122 = a1->cur[m];
  free(v111);
  v5 = a1->cur;
  if (!v120 || !v122)
  {
LABEL_117:
    v4 = *v5;
    goto LABEL_118;
  }

LABEL_11:
  v7 = v5 + 1;
  for (n = v5 + 1; ; ++n)
  {
    v9 = *(n - 1);
    if (v9 > 0x28)
    {
      goto LABEL_31;
    }

    if (((1 << v9) & 0x100002600) == 0)
    {
      break;
    }

    a1->cur = n;
    ++v7;
  }

  if (v9 == 36)
  {
    v128 = 0;
    a1->cur = n;
    v20 = xmlXPathParseQName(a1, &v128);
    if (v20)
    {
      v21 = v20;
      *(a1->comp + 4) = -1;
      v22 = v128;
      if (xmlXPathCompExprAdd(a1, 0xFFFFFFFF, 0xFFFFFFFF, 0xCu, 0, 0, 0, v20, v128) == -1)
      {
        free(v22);
        free(v21);
      }

      for (ii = a1->cur + 1; ; ++ii)
      {
        v24 = *(ii - 1);
        v25 = v24 > 0x20;
        v26 = (1 << v24) & 0x100002600;
        if (v25 || v26 == 0)
        {
          break;
        }

        a1->cur = ii;
      }

      context = a1->context;
      if (!context || (context->flags & 2) == 0)
      {
        goto LABEL_60;
      }

      v19 = 24;
    }

    else
    {
      free(v128);
      v19 = 4;
    }

    v18 = a1;
LABEL_59:
    xmlXPathErr(v18, v19);
    goto LABEL_60;
  }

  if (v9 == 40)
  {
    do
    {
      a1->cur = n;
      v10 = *n++;
      v11 = (1 << v10) & 0x100002600;
    }

    while (v10 <= 0x20 && v11 != 0);
    xmlXPathCompileExpr(a1, 1);
    if (!a1->error)
    {
      if (*a1->cur == 41)
      {
        v13 = a1->cur + 1;
        do
        {
          a1->cur = v13;
          v14 = *v13++;
          v15 = (1 << v14) & 0x100002600;
        }

        while (v14 <= 0x20 && v15 != 0);
        goto LABEL_60;
      }

      xmlXPathErr(a1, 7);
    }

    goto LABEL_67;
  }

LABEL_31:
  v17 = v9 - 48;
  if ((v9 - 48) < 0xA)
  {
LABEL_32:
    if (a1->error)
    {
      goto LABEL_60;
    }

    if (v9 != 46 && v9 < 0x30)
    {
LABEL_35:
      v18 = a1;
      v19 = 1;
      goto LABEL_59;
    }

    if ((v9 - 48) > 9u)
    {
      v73 = n - 1;
      v71 = 0.0;
    }

    else
    {
      v71 = 0.0;
      do
      {
        a1->cur = n;
        v71 = v71 * 10.0 + (v9 & 0xF);
        v72 = *n++;
        LODWORD(v9) = v72;
      }

      while ((v72 - 48) < 0xA);
      v73 = n - 1;
    }

    if (v9 == 46)
    {
      v81 = v73 + 1;
      a1->cur = v73 + 1;
      LODWORD(v9) = v73[1];
      if (v9 < 0x30)
      {
        if (v17 >= 0xAu)
        {
          goto LABEL_35;
        }

        goto LABEL_213;
      }

      if (v17 >= 0xAu && v9 >= 0x3A)
      {
        goto LABEL_35;
      }

      if (v9 == 48)
      {
        v88 = 0;
        v89 = v73 + 2;
        do
        {
          ++v88;
          a1->cur = v89;
          v90 = *v89++;
          LODWORD(v9) = v90;
        }

        while (v90 == 48);
        v81 = v89 - 1;
      }

      else
      {
LABEL_213:
        v88 = 0;
      }

      if ((v9 - 48) > 9)
      {
        v71 = v71 + 0.0 / __exp10(v88);
      }

      else
      {
        v91 = v88 + 20;
        v92 = v81 + 1;
        v93 = 0.0;
        do
        {
          v93 = (v9 - 48) + v93 * 10.0;
          ++v88;
          a1->cur = v92;
          v94 = *v92++;
          LODWORD(v9) = v94;
          v95 = v94 - 48;
        }

        while ((v94 - 48) <= 9 && v88 < v91);
        v97 = v95;
        v71 = v71 + v93 / __exp10(v88);
        if (v97 <= 9)
        {
          do
          {
            a1->cur = v92;
            v98 = *v92++;
            LODWORD(v9) = v98;
          }

          while ((v98 - 48) < 0xA);
        }

        v81 = v92 - 1;
      }
    }

    else
    {
      v81 = v73;
    }

    if ((v9 | 0x20) == 0x65)
    {
      v82 = v81 + 1;
      a1->cur = v81 + 1;
      v83 = v81[1];
      if (v83 == 45 || v83 == 43)
      {
        v82 = v81 + 2;
        a1->cur = v81 + 2;
        v84 = v81[2];
      }

      else
      {
        v84 = v81[1];
      }

      if ((v84 - 48) > 9)
      {
        v99 = 0;
      }

      else
      {
        v99 = 0;
        v100 = v82 + 1;
        do
        {
          v101 = v84 + 10 * v99 - 48;
          if (v99 < 1000000)
          {
            v99 = v101;
          }

          a1->cur = v100;
          v102 = *v100++;
          v84 = v102;
        }

        while ((v102 - 48) < 0xA);
      }

      if (v83 == 45)
      {
        v103 = -v99;
      }

      else
      {
        v103 = v99;
      }

      v71 = v71 * __exp10(v103);
    }

    v104 = xmlXPathCacheNewFloat(v71, a1->context);
    if (v104)
    {
      v105 = v104;
      if (xmlXPathCompExprAdd(a1, *(a1->comp + 4), 0xFFFFFFFF, 0xBu, 3u, 0, 0, v104, 0) == -1)
      {
        xmlXPathReleaseObject(a1->context, v105);
      }
    }

    else
    {
      a1->error = 15;
    }

    goto LABEL_60;
  }

  if (v9 != 34)
  {
    if (v9 == 39)
    {
      for (jj = n; ; ++jj)
      {
        a1->cur = jj;
        v47 = *jj;
        if (v47 <= 0x1F)
        {
          if (v47 > 0xD || ((1 << v47) & 0x2600) == 0)
          {
            goto LABEL_297;
          }
        }

        else if (v47 == 39)
        {
          goto LABEL_109;
        }
      }
    }

    if (v9 == 46 && *n - 48 <= 9)
    {
      goto LABEL_32;
    }

    v128 = 0;
    v29 = xmlXPathParseQName(a1, &v128);
    if (v29)
    {
      v30 = v29;
      for (kk = a1->cur + 1; ; ++kk)
      {
        v32 = *(kk - 1);
        if (v32 > 0x28)
        {
          goto LABEL_178;
        }

        if (((1 << v32) & 0x100002600) == 0)
        {
          break;
        }

        a1->cur = kk;
      }

      if (v32 != 40)
      {
LABEL_178:
        free(v29);
        goto LABEL_179;
      }

      while (1)
      {
        a1->cur = kk;
        v74 = *kk;
        v25 = v74 > 0x20;
        v75 = (1 << v74) & 0x100002600;
        if (v25 || v75 == 0)
        {
          break;
        }

        ++kk;
      }

      v77 = v128;
      if (v128 || *v29 != 99)
      {
        v78 = 1;
      }

      else
      {
        v78 = xmlStrEqual(v29, "count") == 0;
        kk = a1->cur;
      }

      v85 = 0;
      v86 = -1;
      *(a1->comp + 4) = -1;
      v87 = *kk;
      if (!v87 || v87 == 41)
      {
        goto LABEL_306;
      }

      xmlXPathCompileExpr(a1, v78);
      if (a1->error)
      {
LABEL_198:
        free(v30);
        v80 = v77;
        goto LABEL_183;
      }

      v85 = 0;
      v112 = -1;
      while (1)
      {
        xmlXPathCompExprAdd(a1, v112, *(a1->comp + 4), 0xEu, 0, 0, 0, 0, 0);
        ++v85;
        v113 = *a1->cur;
        if (v113 != 44)
        {
          break;
        }

        v114 = a1->cur + 1;
        while (1)
        {
          a1->cur = v114;
          v116 = *v114++;
          v115 = v116;
          if (v116 > 0x20)
          {
            break;
          }

          if (((1 << v115) & 0x100002600) == 0)
          {
            if (!v115)
            {
              goto LABEL_305;
            }

            break;
          }
        }

        comp = a1->comp;
        v112 = *(comp + 4);
        *(comp + 4) = -1;
        xmlXPathCompileExpr(a1, v78);
        if (a1->error)
        {
          goto LABEL_198;
        }
      }

      if (v113 == 41)
      {
LABEL_305:
        v86 = *(a1->comp + 4);
LABEL_306:
        if (xmlXPathCompExprAdd(a1, v86, 0xFFFFFFFF, 0xDu, v85, 0, 0, v30, v77) == -1)
        {
          free(v77);
          free(v30);
        }

        v123 = a1->cur;
        if (*a1->cur)
        {
          goto LABEL_314;
        }

        while (1)
        {
          v124 = *v123;
          v25 = v124 > 0x20;
          v125 = (1 << v124) & 0x100002600;
          if (v25 || v125 == 0)
          {
            break;
          }

LABEL_314:
          a1->cur = ++v123;
        }

        goto LABEL_60;
      }

      free(v30);
      v79 = v77;
    }

    else
    {
LABEL_179:
      v79 = v128;
    }

    free(v79);
    v18 = a1;
    v19 = 7;
    goto LABEL_59;
  }

  jj = n;
  while (2)
  {
    a1->cur = jj;
    v48 = *jj;
    if (v48 <= 0x1F)
    {
      if (v48 > 0xD || ((1 << v48) & 0x2600) == 0)
      {
LABEL_297:
        v18 = a1;
        v19 = 2;
        goto LABEL_59;
      }

      goto LABEL_108;
    }

    if (v48 != 34)
    {
LABEL_108:
      ++jj;
      continue;
    }

    break;
  }

LABEL_109:
  v49 = xmlStrndup(n, jj - v7);
  v50 = v49;
  if (*a1->cur)
  {
    ++a1->cur;
  }

  if (!v49)
  {
    a1->error = 15;
    xmlXPathErrMemory(a1->context, 0);
    goto LABEL_60;
  }

  v51 = xmlXPathCacheNewString(a1->context, v49);
  if (v51)
  {
    v52 = v51;
    if (xmlXPathCompExprAdd(a1, *(a1->comp + 4), 0xFFFFFFFF, 0xBu, 4u, 0, 0, v51, 0) == -1)
    {
      xmlXPathReleaseObject(a1->context, v52);
    }
  }

  else
  {
    a1->error = 15;
  }

  v80 = v50;
LABEL_183:
  free(v80);
LABEL_60:
  for (mm = a1->cur + 1; ; ++mm)
  {
    v34 = *(mm - 1);
    v25 = v34 > 0x20;
    v35 = (1 << v34) & 0x100002600;
    if (v25 || v35 == 0)
    {
      break;
    }

    a1->cur = mm;
  }

LABEL_67:
  if (!a1->error)
  {
    for (nn = a1->cur; ; a1->cur = nn)
    {
      v38 = *nn;
      if (v38 > 0x20 || ((1 << v38) & 0x100002600) == 0)
      {
        break;
      }

      ++nn;
    }

    if (v38 == 91)
    {
      do
      {
        xmlXPathCompPredicate(a1, 1);
        for (nn = a1->cur; ; a1->cur = nn)
        {
          v40 = *nn;
          if (v40 > 0x20 || ((1 << v40) & 0x100002600) == 0)
          {
            break;
          }

          ++nn;
        }
      }

      while (v40 == 91);
      if (a1->error)
      {
        return;
      }
    }

    else
    {
      v40 = *nn;
    }

    if (v40 != 47)
    {
LABEL_158:
      for (i1 = a1->cur + 1; ; ++i1)
      {
        v68 = *(i1 - 1);
        v25 = v68 > 0x20;
        v69 = (1 << v68) & 0x100002600;
        if (v25 || v69 == 0)
        {
          break;
        }

        a1->cur = i1;
      }

      return;
    }

    if (nn[1] == 47)
    {
      for (i2 = nn + 2; ; ++i2)
      {
        a1->cur = i2;
        v43 = *i2;
        v25 = v43 > 0x20;
        v44 = (1 << v43) & 0x100002600;
        if (v25 || v44 == 0)
        {
          break;
        }
      }

      xmlXPathCompExprAdd(a1, *(a1->comp + 4), 0xFFFFFFFF, 0xAu, 6u, 1u, 0, 0, 0);
    }

LABEL_157:
    xmlXPathCompRelativeLocationPath(a1);
    goto LABEL_158;
  }
}

uint64_t htmlParseEndTag(xmlParserCtxt *a1)
{
  v1 = a1;
  input = a1->input;
  cur = input->cur;
  if (__PAIR64__(cur[1], *cur) == 0x2F0000003CLL)
  {
    input->cur = cur + 2;
    input->col += 2;
    result = htmlParseHTMLName(a1);
    if (result)
    {
      v5 = result;
      htmlSkipBlankChars(v1);
      if (*v1->input->cur == 62)
      {
LABEL_4:
        xmlNextChar(v1);
      }

      else
      {
        htmlParseErr(v1, 73, "End tag : expected '>'\n", 0, 0);
        while (*v1->input->cur)
        {
          if (*v1->input->cur == 62)
          {
            goto LABEL_4;
          }

          xmlNextChar(v1);
        }
      }

      if (v1->depth >= 1 && (xmlStrEqual(v5, "html") || xmlStrEqual(v5, "body") || xmlStrEqual(v5, "head")))
      {
        result = 0;
        --v1->depth;
      }

      else
      {
        nameNr = v1->nameNr;
        do
        {
          if (nameNr < 1)
          {
            v6 = "Unexpected end tag : %s\n";
            a1 = v1;
            v7 = 76;
            v8 = v5;
            goto LABEL_11;
          }

          v10 = nameNr - 1;
          v11 = xmlStrEqual(v5, v1->nameTab[nameNr - 1]);
          nameNr = v10;
        }

        while (!v11);
        if (xmlStrEqual("div", v5))
        {
          v12 = &htmlEndPriority;
        }

        else
        {
          v13 = &off_1E82C55E0;
          v14 = 11;
          do
          {
            v12 = v13;
            if (!--v14)
            {
              break;
            }

            v13 += 2;
          }

          while (!xmlStrEqual(*v12, v5));
        }

        v15 = *(v12 + 2);
        v16 = v1->nameNr;
        while (v16 >= 1)
        {
          if (xmlStrEqual(v5, v1->nameTab[--v16]))
          {
            while (!xmlStrEqual(v5, v1->name))
            {
              name = v1->name;
              if (name)
              {
                v22 = bsearch(name, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
                if (v22)
                {
                  if (v22[9] == 3)
                  {
                    htmlParseErr(v1, 76, "Opening and ending tag mismatch: %s and %s\n", v5, v1->name);
                  }
                }
              }

              if (v1->sax)
              {
                endElement = v1->sax->endElement;
                if (endElement)
                {
                  endElement(v1->userData, v1->name);
                }
              }

              v24 = v1->nameNr;
              if (v24 >= 1)
              {
                nameTab = v1->nameTab;
                v26 = v24 - 1;
                v1->nameNr = v24 - 1;
                if (v24 == 1)
                {
                  v27 = 0;
                }

                else
                {
                  v27 = nameTab[v24 - 2];
                }

                v1->name = v27;
                nameTab[v26] = 0;
              }
            }

            break;
          }

          v17 = v1->nameTab[v16];
          v18 = &htmlEndPriority;
          if (!xmlStrEqual("div", v17))
          {
            v19 = &off_1E82C55E0;
            v20 = 11;
            do
            {
              v18 = v19;
              if (!--v20)
              {
                break;
              }

              v19 += 2;
            }

            while (!xmlStrEqual(*v18, v17));
          }

          if (*(v18 + 2) > v15)
          {
            break;
          }
        }

        result = v1->name;
        if (result)
        {
          if (!xmlStrEqual(result, v5))
          {
            htmlParseErr(v1, 76, "Opening and ending tag mismatch: %s and %s\n", v5, v1->name);
          }

          result = v1->name;
          if (result)
          {
            result = xmlStrEqual(result, v5);
            if (result)
            {
              if (v1->sax)
              {
                v28 = v1->sax->endElement;
                if (v28)
                {
                  v28(v1->userData, v5);
                }
              }

              nodeInfoNr = v1->nodeInfoNr;
              if (nodeInfoNr >= 1)
              {
                v30 = &v1->nodeInfoTab[nodeInfoNr - 2];
                v31 = nodeInfoNr - 1;
                v1->nodeInfoNr = v31;
                if (v31)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = 0;
                }

                v1->nodeInfo = v32;
              }

              v33 = v1->nameNr;
              if (v33 >= 1)
              {
                v34 = v1->nameTab;
                v35 = v33 - 1;
                v1->nameNr = v33 - 1;
                if (v33 == 1)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = v34[v33 - 2];
                }

                v1->name = v36;
                v34[v35] = 0;
              }

              return 1;
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = "htmlParseEndTag: '</' not found\n";
    v7 = 74;
    v8 = 0;
LABEL_11:
    htmlParseErr(a1, v7, v6, v8, 0);
    return 0;
  }

  return result;
}

void xmlSAX2EndElement(void *ctx, const xmlChar *name)
{
  if (ctx)
  {
    v3 = *(ctx + 10);
    *(ctx + 104) = -1;
    if (*(ctx + 39))
    {
      if (*(ctx + 6))
      {
        v4 = *(ctx + 2);
        if (v4)
        {
          if (v4->intSubset)
          {
            *(ctx + 38) &= xmlValidateOneElement((ctx + 160), v4, v3);
          }
        }
      }
    }

    nodePop(ctx);
  }
}

void xmlXPathCompUnaryExpr(xmlXPathParserContext *a1)
{
  for (i = a1->cur; ; a1->cur = i)
  {
    v3 = *i;
    if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    ++i;
  }

  if (v3 == 45)
  {
    v6 = 0;
    do
    {
      v7 = v6;
      do
      {
        a1->cur = ++i;
        v8 = *i;
      }

      while (v8 <= 0x20 && ((1 << v8) & 0x100002600) != 0);
      v6 = 1 - v6;
    }

    while (v8 == 45);
    if (v7 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 3;
  }

  xmlXPathCompPathExpr(a1);
  if (a1->error)
  {
    return;
  }

  for (j = a1->cur + 1; ; ++j)
  {
    v11 = *(j - 1);
    if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
    {
      break;
    }

    a1->cur = j;
  }

  if (v11 != 124)
  {
    v22 = 0;
    goto LABEL_43;
  }

  do
  {
    v13 = *(a1->comp + 4);
    xmlXPathCompExprAdd(a1, 0xFFFFFFFF, 0xFFFFFFFF, 9u, 0, 0, 0, 0, 0);
    cur = a1->cur;
    if (*a1->cur)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v15 = *cur;
      v16 = v15 > 0x20;
      v17 = (1 << v15) & 0x100002600;
      if (v16 || v17 == 0)
      {
        break;
      }

LABEL_33:
      a1->cur = ++cur;
    }

    xmlXPathCompPathExpr(a1);
    xmlXPathCompExprAdd(a1, v13, *(a1->comp + 4), 7u, 0, 0, 0, 0, 0);
    for (k = a1->cur; ; a1->cur = k)
    {
      v20 = *k++;
      if (v20 > 0x20 || ((1 << v20) & 0x100002600) == 0)
      {
        break;
      }
    }
  }

  while (v20 == 124);
  v22 = a1->error != 0;
LABEL_43:
  if (v3 == 45 && !v22)
  {
    xmlXPathCompExprAdd(a1, *(a1->comp + 4), 0xFFFFFFFF, 5u, v5, 0, 0, 0, 0);
  }
}

void xmlXPathCompMultiplicativeExpr(xmlXPathParserContext *a1)
{
  xmlXPathCompUnaryExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v3 = *i;
      if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    LOBYTE(v5) = *i;
    while (1)
    {
      if (v5 == 42)
      {
        v6 = 0;
        v7 = 1;
      }

      else
      {
        if (v5 == 109)
        {
          if (i[1] != 111 || i[2] != 100)
          {
            return;
          }

          v6 = 2;
        }

        else
        {
          if (v5 != 100 || i[1] != 105 || i[2] != 118)
          {
            return;
          }

          v6 = 1;
        }

        v7 = 3;
      }

      v8 = *(a1->comp + 4);
      for (j = &i[v7]; ; ++j)
      {
        a1->cur = j;
        v10 = *j;
        v11 = v10 > 0x20;
        v12 = (1 << v10) & 0x100002600;
        if (v11 || v12 == 0)
        {
          break;
        }
      }

      xmlXPathCompUnaryExpr(a1);
      if (a1->error)
      {
        break;
      }

      xmlXPathCompExprAdd(a1, v8, *(a1->comp + 4), 6u, v6, 0, 0, 0, 0);
      for (i = a1->cur; ; a1->cur = i)
      {
        v5 = *i;
        if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
        {
          break;
        }

        ++i;
      }
    }
  }
}

void xmlXPathCompAdditiveExpr(xmlXPathParserContext *a1)
{
  xmlXPathCompMultiplicativeExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v3 = *i;
      if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    while (v3 == 45 || v3 == 43)
    {
      v5 = *(a1->comp + 4);
      v6 = i + 1;
      do
      {
        a1->cur = v6;
        v7 = *v6++;
        v8 = (1 << v7) & 0x100002600;
      }

      while (v7 <= 0x20 && v8 != 0);
      xmlXPathCompMultiplicativeExpr(a1);
      if (a1->error)
      {
        break;
      }

      xmlXPathCompExprAdd(a1, v5, *(a1->comp + 4), 5u, v3 == 43, 0, 0, 0, 0);
      for (i = a1->cur; ; a1->cur = i)
      {
        v3 = *i;
        if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
        {
          break;
        }

        ++i;
      }
    }
  }
}

uint64_t htmlAutoCloseOnEnd(uint64_t result)
{
  v1 = *(result + 296);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = v1 + 1;
    do
    {
      if (*v2)
      {
        v4 = *(*v2 + 120);
        if (v4)
        {
          result = v4(*(v2 + 8), *(v2 + 288));
          v1 = *(v2 + 296);
        }
      }

      v5 = v1 - 1;
      if (v1 >= 1)
      {
        *(v2 + 296) = v5;
        v6 = *(v2 + 304);
        if (v1 == 1)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(v6 + 8 * v1 - 16);
        }

        *(v2 + 288) = v7;
        *(v6 + 8 * v5) = 0;
        v1 = v5;
      }

      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

void xmlXPathCompRelationalExpr(xmlXPathParserContext *a1)
{
  xmlXPathCompAdditiveExpr(a1);
  if (!a1->error)
  {
    for (i = a1->cur; ; a1->cur = i)
    {
      v3 = *i;
      if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    v5 = *i;
    while ((v5 | 2) == 0x3E)
    {
      v6 = *(a1->comp + 4);
      v7 = v5 == 60;
      v8 = i + 1;
      v9 = i[1];
      a1->cur = i + 1;
      v10 = v9 != 61;
      if (v9 == 61 && *v8)
      {
        v8 = i + 2;
        goto LABEL_19;
      }

      while (1)
      {
        v11 = *v8;
        v12 = v11 > 0x20;
        v13 = (1 << v11) & 0x100002600;
        if (v12 || v13 == 0)
        {
          break;
        }

        ++v8;
LABEL_19:
        a1->cur = v8;
      }

      xmlXPathCompAdditiveExpr(a1);
      if (a1->error)
      {
        break;
      }

      xmlXPathCompExprAdd(a1, v6, *(a1->comp + 4), 4u, v7, v10, 0, 0, 0);
      for (i = a1->cur; ; a1->cur = i)
      {
        v5 = *i;
        if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
        {
          break;
        }

        ++i;
      }
    }
  }
}

xmlDtdPtr xmlCreateIntSubset(xmlDocPtr doc, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (doc)
  {
    children = doc->children;
    if (children)
    {
      while (children->type != XML_DTD_NODE)
      {
        children = children->next;
        if (!children)
        {
          goto LABEL_5;
        }
      }

      return 0;
    }

LABEL_5:
    if (doc->intSubset)
    {
      return 0;
    }
  }

  v9 = malloc_type_malloc(0x80uLL, 0x10F0040D9356C02uLL);
  v10 = v9;
  if (!v9)
  {
    __xmlSimpleError(2u, 2, 0, 0, "building internal subset");
    return v10;
  }

  *&v9->entities = 0u;
  *&v9->SystemID = 0u;
  *&v9->doc = 0u;
  *&v9->elements = 0u;
  *&v9->last = 0u;
  *&v9->next = 0u;
  *&v9->_private = 0u;
  *&v9->name = 0u;
  v9->type = XML_DTD_NODE;
  if (name)
  {
    v11 = xmlStrdup(name);
    v10->name = v11;
    if (!v11)
    {
      __xmlSimpleError(2u, 2, 0, 0, "building internal subset");
      goto LABEL_24;
    }
  }

  if (ExternalID)
  {
    v12 = xmlStrdup(ExternalID);
    v10->ExternalID = v12;
    if (!v12)
    {
      __xmlSimpleError(2u, 2, 0, 0, "building internal subset");
      v17 = v10->name;
      if (v17)
      {
LABEL_23:
        free(v17);
      }

LABEL_24:
      free(v10);
      return 0;
    }
  }

  if (SystemID)
  {
    v13 = xmlStrdup(SystemID);
    v10->SystemID = v13;
    if (!v13)
    {
      __xmlSimpleError(2u, 2, 0, 0, "building internal subset");
      v19 = v10->name;
      if (v19)
      {
        free(v19);
      }

      v17 = v10->ExternalID;
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  if (doc)
  {
    doc->intSubset = v10;
    v10->parent = doc;
    v10->doc = doc;
    p_children = &doc->children;
    v15 = doc->children;
    if (v15)
    {
      if (doc->type == XML_HTML_DOCUMENT_NODE)
      {
        v15->prev = v10;
        v10->next = v15;
      }

      else
      {
        while (v15->type != XML_ELEMENT_NODE)
        {
          v15 = v15->next;
          if (!v15)
          {
            last = doc->last;
            last->next = v10;
            v10->next = 0;
            v10->prev = last;
            p_children = &doc->last;
            goto LABEL_35;
          }
        }

        v10->next = v15;
        prev = v15->prev;
        p_prev = &v15->prev;
        v10->prev = prev;
        p_next = &prev->next;
        if (prev)
        {
          p_children = p_next;
        }

        *p_children = v10;
        p_children = p_prev;
      }
    }

    else
    {
      doc->children = v10;
      p_children = &doc->last;
    }

LABEL_35:
    *p_children = v10;
  }

  if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
  {
    v23 = __xmlRegisterNodeDefaultValue();
    (*v23)(v10);
  }

  return v10;
}

uint64_t xmlXPathCompExprAdd(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, xmlChar *name, xmlChar *a9)
{
  v16 = *(a1 + 56);
  v17 = *v16;
  v18 = v16[1];
  if (v17 < v18)
  {
    v19 = *(v16 + 1);
    goto LABEL_11;
  }

  if (v18 < 1)
  {
    v21 = 10;
  }

  else
  {
    if (v18 >= 0xF4240)
    {
      goto LABEL_23;
    }

    if (1000000 - ((v18 + 1) >> 1) >= v18)
    {
      v21 = v18 + ((v18 + 1) >> 1);
    }

    else
    {
      v21 = 1000000;
    }
  }

  v19 = malloc_type_realloc(*(v16 + 1), 56 * v21, 0x1080040034B7634uLL);
  if (v19)
  {
    *(v16 + 1) = v19;
    v16[1] = v21;
    v17 = *v16;
LABEL_11:
    v16[4] = v17;
    v22 = v17;
    v23 = &v19[7 * v17];
    *v23 = a4;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a5;
    v23[4] = a6;
    v23[5] = a7;
    if (*(v16 + 4))
    {
      v24 = a4 > 0xD;
    }

    else
    {
      v24 = 1;
    }

    if (v24 || ((1 << a4) & 0x3400) == 0)
    {
      v26 = &v19[7 * v17];
      *(v26 + 3) = name;
      *(v26 + 4) = a9;
LABEL_26:
      v19[7 * v22 + 5] = 0;
      *v16 = v17 + 1;
      return v17;
    }

    if (name)
    {
      *(*(v16 + 1) + 56 * *v16 + 24) = xmlDictLookup(*(v16 + 4), name, -1);
      free(name);
      if (a9)
      {
LABEL_22:
        *(*(v16 + 1) + 56 * *v16 + 32) = xmlDictLookup(*(v16 + 4), a9, -1);
        free(a9);
        v19 = *(v16 + 1);
        v17 = *v16;
        v22 = *v16;
        goto LABEL_26;
      }
    }

    else
    {
      v19[7 * v17 + 3] = 0;
      if (a9)
      {
        goto LABEL_22;
      }
    }

    v19 = *(v16 + 1);
    v17 = *v16;
    v22 = v17;
    v19[7 * v17 + 4] = 0;
    goto LABEL_26;
  }

LABEL_23:
  *(a1 + 16) = 15;
  xmlXPathErrMemory(*(a1 + 24), "adding step\n");
  return 0xFFFFFFFFLL;
}

xmlDtdPtr xmlGetIntSubset(xmlDtdPtr doc)
{
  if (doc)
  {
    v1 = doc;
    doc = doc->children;
    if (doc)
    {
      while (doc->type != XML_DTD_NODE)
      {
        doc = doc->next;
        if (!doc)
        {
          return v1->elements;
        }
      }
    }

    else
    {
      return v1->elements;
    }
  }

  return doc;
}

xmlChar *__cdecl xmlXPathParseNCName(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  cur = ctxt->cur;
  if (!cur)
  {
    return 0;
  }

  v3 = *cur;
  if ((v3 - 97) < 0x1A || (v3 != 95 ? (v4 = (v3 - 65) > 0x19) : (v4 = 0), !v4))
  {
    for (i = 1; ; ++i)
    {
      v6 = cur[i];
      if ((v6 - 48) >= 0xA && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v8 = v6 - 32;
        if (v8 > 0x3F)
        {
          goto LABEL_21;
        }

        if (((1 << v8) & 0x8000000000006000) == 0)
        {
          break;
        }
      }
    }

    if (((1 << v8) & 0x2800000144008401) != 0)
    {
      if (i)
      {
        v9 = &cur[i];
        result = xmlStrndup(cur, i);
        ctxt->cur = v9;
        return result;
      }

      return 0;
    }
  }

LABEL_21:

  return xmlXPathParseNameComplex(ctxt, 0);
}

int xmlCharEncCloseFunc(xmlCharEncodingHandler *handler)
{
  if (handler)
  {
    if (handler->name)
    {
      v2 = handlers;
      if (handlers)
      {
        v3 = nbCharEncodingHandler;
        if (nbCharEncodingHandler >= 1)
        {
          while (*v2 != handler)
          {
            ++v2;
            if (!--v3)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_17;
        }
      }

LABEL_7:
      uconv_out = handler->uconv_out;
      if (uconv_out)
      {
        closeIcuConverter(uconv_out);
        handler->uconv_out = 0;
        uconv_in = handler->uconv_in;
        if (!uconv_in)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      uconv_in = handler->uconv_in;
      if (uconv_in)
      {
LABEL_13:
        closeIcuConverter(uconv_in);
        handler->uconv_in = 0;
LABEL_14:
        if (handler->name)
        {
          free(handler->name);
        }

        free(handler);
LABEL_17:
        LODWORD(uconv_in) = 0;
      }
    }

    else
    {
      LODWORD(uconv_in) = -1;
    }
  }

  else
  {
    LODWORD(uconv_in) = -1;
  }

  return uconv_in;
}

void xmlXPathCompStep(xmlXPathParserContextPtr ctxt)
{
  for (i = ctxt->cur + 1; ; ++i)
  {
    v3 = *(i - 1);
    if (v3 > 0x2E)
    {
      goto LABEL_13;
    }

    if (((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    ctxt->cur = i;
  }

  if (v3 == 46)
  {
    if (*i == 46)
    {
      for (j = i + 1; ; ++j)
      {
        ctxt->cur = j;
        v5 = *j;
        v6 = v5 > 0x20;
        v7 = (1 << v5) & 0x100002600;
        v8 = v6 || v7 == 0;
        if (v8)
        {
          break;
        }
      }

      xmlXPathCompExprAdd(ctxt, *(ctxt->comp + 4), 0xFFFFFFFF, 0xAu, 0xAu, 1u, 0, 0, 0);
    }

    else
    {
      do
      {
        ctxt->cur = i;
        v14 = *i++;
        v15 = (1 << v14) & 0x100002600;
      }

      while (v14 <= 0x20 && v15 != 0);
    }

    return;
  }

LABEL_13:
  if (ctxt->xptr)
  {
    v9 = xmlXPathParseNCName(ctxt);
    v10 = v9;
    if (v9 && xmlStrEqual(v9, "range-to"))
    {
      v11 = *(ctxt->comp + 4);
      free(v10);
      for (k = ctxt->cur + 1; ; ++k)
      {
        v13 = *(k - 1);
        if (v13 > 0x28)
        {
          break;
        }

        if (((1 << v13) & 0x100002600) == 0)
        {
          if (v13 != 40)
          {
            goto LABEL_181;
          }

          do
          {
            ctxt->cur = k;
            v26 = *k++;
            v27 = (1 << v26) & 0x100002600;
          }

          while (v26 <= 0x20 && v27 != 0);
          xmlXPathCompileExpr(ctxt, 1);
          if (!ctxt->error)
          {
            for (m = ctxt->cur + 1; ; ++m)
            {
              v30 = *(m - 1);
              if (v30 > 0x29)
              {
                break;
              }

              if (((1 << v30) & 0x100002600) == 0)
              {
                if (v30 != 41)
                {
                  goto LABEL_181;
                }

                v22 = 0;
                v25 = 0;
                v23 = 0;
                v24 = 0;
                v17 = 0;
                ctxt->cur = m;
                goto LABEL_166;
              }

              ctxt->cur = m;
            }

            goto LABEL_181;
          }

          return;
        }

        ctxt->cur = k;
      }

      goto LABEL_181;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*ctxt->cur == 42)
  {
    goto LABEL_29;
  }

  if (!v10)
  {
    v10 = xmlXPathParseNCName(ctxt);
    if (!v10)
    {
      if (*ctxt->cur == 64)
      {
        v10 = 0;
        ++ctxt->cur;
        v17 = 3;
        goto LABEL_30;
      }

      v10 = 0;
LABEL_29:
      v17 = 4;
      goto LABEL_30;
    }
  }

  v18 = *v10;
  v17 = 4;
  if (v18 <= 0x65)
  {
    switch(v18)
    {
      case 'a':
        v17 = xmlStrEqual(v10, "ancestor") != 0;
        if (xmlStrEqual(v10, "ancestor-or-self"))
        {
          v17 = 2;
        }

        if (xmlStrEqual(v10, "attribute"))
        {
          v17 = 3;
          goto LABEL_118;
        }

        break;
      case 'c':
        if (!xmlStrEqual(v10, "child"))
        {
          goto LABEL_30;
        }

        goto LABEL_118;
      case 'd':
        if (xmlStrEqual(v10, "descendant"))
        {
          v17 = 5;
        }

        else
        {
          v17 = 0;
        }

        if (xmlStrEqual(v10, "descendant-or-self"))
        {
          v17 = 6;
          goto LABEL_118;
        }

        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_115;
  }

  if (*v10 > 0x6Fu)
  {
    if (v18 != 112)
    {
      if (v18 != 115 || !xmlStrEqual(v10, "self"))
      {
        goto LABEL_30;
      }

      v17 = 13;
      goto LABEL_118;
    }

    if (xmlStrEqual(v10, "parent"))
    {
      v17 = 10;
    }

    else
    {
      v17 = 0;
    }

    if (xmlStrEqual(v10, "preceding"))
    {
      v17 = 11;
    }

    if (xmlStrEqual(v10, "preceding-sibling"))
    {
      v17 = 12;
      goto LABEL_118;
    }

LABEL_115:
    if (!v17)
    {
      goto LABEL_29;
    }

LABEL_118:
    for (n = ctxt->cur + 1; ; ++n)
    {
      v40 = *(n - 1);
      if (v40 > 0x3A)
      {
        break;
      }

      if (((1 << v40) & 0x100002600) == 0)
      {
        if (v40 == 58 && *n == 58)
        {
          ctxt->cur = n + 1;
          free(v10);
          v10 = 0;
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      ctxt->cur = n;
    }

    goto LABEL_29;
  }

  if (v18 == 102)
  {
    if (xmlStrEqual(v10, "following"))
    {
      v17 = 7;
    }

    else
    {
      v17 = 0;
    }

    if (xmlStrEqual(v10, "following-sibling"))
    {
      v17 = 8;
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  if (v18 == 110 && xmlStrEqual(v10, "namespace"))
  {
    v17 = 9;
    goto LABEL_118;
  }

LABEL_30:
  if (ctxt->error)
  {
LABEL_31:

    free(v10);
    return;
  }

  for (ii = ctxt->cur; ; ctxt->cur = ii)
  {
    v20 = *ii;
    if (v20 > 0x20 || ((1 << v20) & 0x100002600) == 0)
    {
      break;
    }

    ++ii;
  }

  if (!v10 && v20 == 42)
  {
    v22 = 0;
    v23 = 0;
    v10 = 0;
    ctxt->cur = ii + 1;
    v11 = -1;
    v24 = 1;
    v25 = 3;
LABEL_166:
    comp = ctxt->comp;
    v48 = *(comp + 4);
    *(comp + 4) = -1;
    for (jj = ctxt->cur + 1; ; ++jj)
    {
      v50 = *(jj - 1);
      if (v50 > 0x20 || ((1 << v50) & 0x100002600) == 0)
      {
        break;
      }

      ctxt->cur = jj;
    }

    if (v50 == 91)
    {
      do
      {
        xmlXPathCompPredicate(ctxt, 0);
      }

      while (*ctxt->cur == 91);
    }

    if ((v24 & 1) == 0)
    {
      xmlXPathCompExprAdd(ctxt, v11, v48, 0x12u, 0, 0, 0, 0, 0);
      return;
    }

    if (xmlXPathCompExprAdd(ctxt, v48, *(ctxt->comp + 4), 0xAu, v17, v25, v23, v22, v10) != -1)
    {
      return;
    }

    free(v22);
    goto LABEL_31;
  }

  if (!v10)
  {
    v31 = xmlXPathParseNCName(ctxt);
    if (!v31)
    {
      goto LABEL_181;
    }

    v10 = v31;
    ii = ctxt->cur;
    v20 = *ctxt->cur;
  }

  v33 = v20 != 13 && v20 - 11 < 0xFFFFFFFE;
  if (v20 == 32)
  {
    v33 = 0;
  }

  for (kk = ii + 1; ; ++kk)
  {
    if (v20 > 0x28)
    {
      goto LABEL_92;
    }

    if (((1 << v20) & 0x100002600) == 0)
    {
      break;
    }

    ctxt->cur = kk;
    v35 = *kk;
    v20 = v35;
  }

  if (v20 != 40)
  {
LABEL_92:
    v8 = v20 == 58;
    v37 = !v33;
    if (!v8)
    {
      v37 = 1;
    }

    if (v37)
    {
      v22 = 0;
      v23 = 0;
      v11 = -1;
      v24 = 1;
      v25 = 5;
    }

    else
    {
      ctxt->cur = kk;
      if (*kk == 42)
      {
        v38 = 0;
        ctxt->cur = kk + 1;
        v25 = 3;
      }

      else
      {
        v38 = xmlXPathParseNCName(ctxt);
        if (!v38)
        {
          xmlXPathErr(ctxt, 7);
        }

        v25 = 5;
      }

      context = ctxt->context;
      if (context && (context->flags & 1) != 0 && !xmlXPathNsLookup(context, v10))
      {
        xmlXPathErr(ctxt, 19);
      }

      v23 = 0;
      v11 = -1;
      v24 = 1;
      v22 = v10;
      v10 = v38;
    }

    goto LABEL_166;
  }

  ctxt->cur = kk;
  if (xmlStrEqual(v10, "comment"))
  {
    v36 = 0;
    v23 = 8;
LABEL_143:
    for (mm = ctxt->cur; ; ctxt->cur = mm)
    {
      v43 = *mm;
      if (v43 > 0x20 || ((1 << v43) & 0x100002600) == 0)
      {
        break;
      }

      ++mm;
    }

    if (v36)
    {
      free(v10);
      mm = ctxt->cur;
      if (*ctxt->cur == 41)
      {
        v10 = 0;
        v25 = 1;
        goto LABEL_162;
      }

      v10 = xmlXPathParseLiteral(ctxt);
      if (!v10)
      {
        v23 = 7;
        xmlXPathErr(ctxt, 7);
        v22 = 0;
        v11 = -1;
        v25 = 1;
        goto LABEL_165;
      }

      for (mm = ctxt->cur; ; ctxt->cur = mm)
      {
        v45 = *mm;
        if (v45 > 0x20 || ((1 << v45) & 0x100002600) == 0)
        {
          break;
        }

        ++mm;
      }

      v25 = 2;
      v43 = *mm;
    }

    else
    {
      v25 = 1;
    }

    if (v43 != 41)
    {
      free(v10);
      xmlXPathErr(ctxt, 8);
      v22 = 0;
      v10 = 0;
      goto LABEL_164;
    }

LABEL_162:
    v22 = 0;
    ctxt->cur = mm + 1;
LABEL_164:
    v11 = -1;
LABEL_165:
    v24 = 1;
    goto LABEL_166;
  }

  if (xmlStrEqual(v10, "node"))
  {
    v36 = 0;
    v23 = 0;
    goto LABEL_143;
  }

  if (xmlStrEqual(v10, "processing-instruction"))
  {
    v23 = 7;
    v36 = 1;
    goto LABEL_143;
  }

  if (xmlStrEqual(v10, "text"))
  {
    v36 = 0;
    v23 = 3;
    goto LABEL_143;
  }

  free(v10);
LABEL_181:

  xmlXPathErr(ctxt, 7);
}

void xmlFreeDtd(xmlDtdPtr cur)
{
  if (!cur)
  {
    return;
  }

  doc = cur->doc;
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
  {
    v4 = __xmlDeregisterNodeDefaultValue();
    (*v4)(cur);
  }

  children = cur->children;
  if (children)
  {
    do
    {
      next = children->next;
      type = children->type;
      v8 = type > 0x11;
      v9 = (1 << type) & 0x39000;
      if (v8 || v9 == 0)
      {
        xmlUnlinkNode(children);
        xmlFreeNode(children);
      }

      children = next;
    }

    while (next);
  }

  name = cur->name;
  if (name)
  {
    if (dict)
    {
      if (xmlDictOwns(dict, name))
      {
        goto LABEL_21;
      }

      name = cur->name;
    }

    free(name);
  }

LABEL_21:
  SystemID = cur->SystemID;
  if (!SystemID)
  {
    goto LABEL_26;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, SystemID))
    {
      goto LABEL_26;
    }

    SystemID = cur->SystemID;
  }

  free(SystemID);
LABEL_26:
  ExternalID = cur->ExternalID;
  if (ExternalID)
  {
    if (!dict)
    {
LABEL_30:
      free(ExternalID);
      goto LABEL_31;
    }

    if (!xmlDictOwns(dict, ExternalID))
    {
      ExternalID = cur->ExternalID;
      goto LABEL_30;
    }
  }

LABEL_31:
  notations = cur->notations;
  if (notations)
  {
    xmlFreeNotationTable(notations);
  }

  elements = cur->elements;
  if (elements)
  {
    xmlFreeElementTable(elements);
  }

  attributes = cur->attributes;
  if (attributes)
  {
    xmlFreeAttributeTable(attributes);
  }

  entities = cur->entities;
  if (entities)
  {
    xmlFreeEntitiesTable(entities);
  }

  pentities = cur->pentities;
  if (pentities)
  {
    xmlFreeEntitiesTable(pentities);
  }

  free(cur);
}

void xmlUnlinkNode(xmlNodePtr cur)
{
  if (!cur)
  {
    return;
  }

  type = cur->type;
  switch(type)
  {
    case XML_NAMESPACE_DECL:
      return;
    case XML_ENTITY_DECL:
      doc = cur->doc;
      if (doc)
      {
        intSubset = doc->intSubset;
        if (intSubset)
        {
          if (xmlHashLookup(intSubset->entities, cur->name) == cur)
          {
            xmlHashRemoveEntry(doc->intSubset->entities, cur->name, 0);
          }

          if (xmlHashLookup(doc->intSubset->pentities, cur->name) == cur)
          {
            xmlHashRemoveEntry(doc->intSubset->pentities, cur->name, 0);
          }
        }

        extSubset = doc->extSubset;
        if (extSubset)
        {
          if (xmlHashLookup(extSubset->entities, cur->name) == cur)
          {
            xmlHashRemoveEntry(doc->extSubset->entities, cur->name, 0);
          }

          if (xmlHashLookup(doc->extSubset->pentities, cur->name) == cur)
          {
            xmlHashRemoveEntry(doc->extSubset->pentities, cur->name, 0);
          }
        }
      }

      break;
    case XML_DTD_NODE:
      v3 = cur->doc;
      if (v3)
      {
        if (v3->intSubset == cur)
        {
          v3->intSubset = 0;
        }

        if (v3->extSubset == cur)
        {
          v3->extSubset = 0;
        }
      }

      break;
  }

  parent = cur->parent;
  if (parent)
  {
    if (cur->type == XML_ATTRIBUTE_NODE)
    {
      properties = parent->properties;
      p_properties = &parent->properties;
      if (properties != cur)
      {
LABEL_30:
        cur->parent = 0;
        goto LABEL_31;
      }

      v10 = 48;
    }

    else
    {
      if (parent->children == cur)
      {
        parent->children = cur->next;
      }

      last = parent->last;
      p_properties = &parent->last;
      if (last != cur)
      {
        goto LABEL_30;
      }

      v10 = 56;
    }

    *p_properties = *(&cur->_private + v10);
    goto LABEL_30;
  }

LABEL_31:
  next = cur->next;
  prev = cur->prev;
  p_next = &cur->next;
  if (next)
  {
    next->prev = prev;
  }

  if (prev)
  {
    prev->next = next;
  }

  *p_next = 0;
  p_next[1] = 0;
}

void xmlXPathCompRelativeLocationPath(xmlXPathParserContextPtr ctxt)
{
  for (i = ctxt->cur + 1; ; ++i)
  {
    v3 = *(i - 1);
    if (v3 > 0x2F)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) == 0)
    {
      if (v3 == 47)
      {
        if (*i == 47)
        {
          for (j = i + 1; ; ++j)
          {
            ctxt->cur = j;
            v5 = *j;
            v6 = v5 > 0x20;
            v7 = (1 << v5) & 0x100002600;
            if (v6 || v7 == 0)
            {
              break;
            }
          }

          xmlXPathCompExprAdd(ctxt, *(ctxt->comp + 4), 0xFFFFFFFF, 0xAu, 6u, 1u, 0, 0, 0);
        }

        else
        {
          do
          {
            ctxt->cur = i;
            v9 = *i++;
            v10 = (1 << v9) & 0x100002600;
          }

          while (v9 <= 0x20 && v10 != 0);
        }
      }

      break;
    }

    ctxt->cur = i;
  }

  xmlXPathCompStep(ctxt);
  if (!ctxt->error)
  {
    for (k = ctxt->cur; ; ctxt->cur = k)
    {
      v13 = *k;
      if (v13 > 0x2F)
      {
        break;
      }

      if (((1 << v13) & 0x100002600) == 0)
      {
        if (v13 == 47)
        {
LABEL_27:
          v14 = k + 1;
          if (k[1] == 47)
          {
            for (m = k + 2; ; ++m)
            {
              ctxt->cur = m;
              v16 = *m;
              v6 = v16 > 0x20;
              v17 = (1 << v16) & 0x100002600;
              if (v6 || v17 == 0)
              {
                break;
              }
            }

            xmlXPathCompExprAdd(ctxt, *(ctxt->comp + 4), 0xFFFFFFFF, 0xAu, 6u, 1u, 0, 0, 0);
          }

          else
          {
            while (1)
            {
              ctxt->cur = v14;
              v19 = *v14;
              v6 = v19 > 0x20;
              v20 = (1 << v19) & 0x100002600;
              if (v6 || v20 == 0)
              {
                break;
              }

              ++v14;
            }
          }

          xmlXPathCompStep(ctxt);
          for (k = ctxt->cur; ; ctxt->cur = k)
          {
            v22 = *k;
            if (v22 > 0x2F)
            {
              break;
            }

            if (((1 << v22) & 0x100002600) == 0)
            {
              if (v22 == 47)
              {
                goto LABEL_27;
              }

              return;
            }

            ++k;
          }
        }

        return;
      }

      ++k;
    }
  }
}

void xmlXPathCompPredicate(xmlXPathParserContextPtr ctxt, int a2)
{
  comp = ctxt->comp;
  v5 = *(comp + 4);
  for (i = ctxt->cur + 1; ; ++i)
  {
    v7 = *(i - 1);
    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      break;
    }

    ctxt->cur = i;
  }

  if (v7 != 91)
  {
    goto LABEL_20;
  }

  do
  {
    ctxt->cur = i;
    v9 = *i++;
    v10 = (1 << v9) & 0x100002600;
  }

  while (v9 <= 0x20 && v10 != 0);
  *(comp + 4) = -1;
  xmlXPathCompileExpr(ctxt, a2 != 0);
  if (ctxt->error)
  {
    return;
  }

  if (*ctxt->cur != 93)
  {
LABEL_20:

    xmlXPathErr(ctxt, 6);
    return;
  }

  if (a2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 15;
  }

  xmlXPathCompExprAdd(ctxt, v5, *(ctxt->comp + 4), v12, 0, 0, 0, 0, 0);
  cur = ctxt->cur;
  if (*ctxt->cur)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v14 = *cur;
    v15 = v14 > 0x20;
    v16 = (1 << v14) & 0x100002600;
    if (v15 || v16 == 0)
    {
      break;
    }

LABEL_23:
    ctxt->cur = ++cur;
  }
}

xmlXPathObjectPtr xmlXPathCacheNewFloat(double val, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 344);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        v4 = *(v3 + 2);
        if (v4)
        {
          v5 = *v3;
          v6 = v4 - 1;
          *(v3 + 2) = v6;
          result = *(v5 + 8 * v6);
LABEL_9:
          result->type = XPATH_NUMBER;
          result->floatval = val;
          return result;
        }
      }

      v8 = *(v2 + 32);
      if (v8)
      {
        v9 = *(v8 + 2);
        if (v9)
        {
          v10 = *v8;
          v11 = v9 - 1;
          *(v8 + 2) = v11;
          result = *(v10 + 8 * v11);
          goto LABEL_9;
        }
      }
    }
  }

  return xmlXPathNewFloat(val);
}

xmlXPathObjectPtr xmlXPathNewFloat(double val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 20) = 0u;
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 3;
    *(v2 + 3) = val;
  }

  else
  {
    xmlXPathErrMemory(0, "creating float object\n");
  }

  return v3;
}

uint64_t xmlXPathOptimizeExpression(uint64_t result, _DWORD *a2)
{
  if (*a2 != 11)
  {
    v3 = result;
    v4 = *(result + 56);
    if (*a2 == 10)
    {
      v5 = a2[1];
      if (v5 != -1 && a2[2] == -1)
      {
        v6 = (*(v4 + 8) + 56 * v5);
        if (*v6 == 10 && v6[3] == 6 && v6[2] == -1 && v6[4] == 1 && !v6[5])
        {
          v7 = a2[3] - 4;
          if (v7 <= 9 && ((0x207u >> v7) & 1) != 0)
          {
            v8 = dword_1C79BDC48[v7];
            a2[1] = v6[1];
            a2[3] = v8;
          }
        }
      }
    }

    result = linkedOnOrAfterFall2022OSVersions(result, a2);
    if (result)
    {
      v10 = *(v3 + 24);
      if (v10)
      {
        v11 = *(v10 + 368);
        if (v11 > 4999)
        {
          return result;
        }

        *(v10 + 368) = v11 + 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = a2[1];
    if (v12 != -1)
    {
      result = xmlXPathOptimizeExpression(v3, (*(v4 + 8) + 56 * v12));
    }

    v13 = a2[2];
    if (v13 != -1)
    {
      result = xmlXPathOptimizeExpression(v3, (*(v4 + 8) + 56 * v13));
    }

    result = linkedOnOrAfterFall2022OSVersions(result, v9);
    if (v10)
    {
      if (result)
      {
        --*(v10 + 368);
      }
    }
  }

  return result;
}

uint64_t xmlXPathRunEval(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 56))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  if (linkedOnOrAfterFall2022OSVersions(a1, a2))
  {
    *(*(a1 + 24) + 368) = 0;
  }

  if (!*(a1 + 48))
  {
    v4 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    *(a1 + 48) = v4;
    if (!v4)
    {
      *(a1 + 16) = 15;
      xmlXPathErrMemory(*(a1 + 24), "creating evaluation context\n");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 40) = 0xA00000000;
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  v6 = *(v5 + 40);
  if (v6)
  {
    if (!v3)
    {
      value = 0;
      if (xmlXPathRunStreamEval(*(a1 + 24), v6, &value, 0) != -1 && value != 0)
      {
        valuePush(a1, value);
        return 0;
      }

      if (value)
      {
        xmlXPathReleaseObject(*(a1 + 24), value);
      }

      v5 = *(a1 + 56);
      v8 = *(v5 + 16);
      if ((v8 & 0x80000000) == 0)
      {
LABEL_25:
        xmlXPathCompOpEval(a1, (*(v5 + 8) + 56 * v8));
        return 0;
      }

      goto LABEL_26;
    }

    result = xmlXPathRunStreamEval(*(a1 + 24), v6, 0, 1);
    if (result != -1)
    {
      return result;
    }

    v5 = *(a1 + 56);
  }

  v8 = *(v5 + 16);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_26:
    v11 = *__xmlGenericError();
    v12 = __xmlGenericErrorContext();
    v11(*v12, "xmlXPathRunEval: last is less than zero\n");
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_25;
  }

  v9 = (*(v5 + 8) + 56 * v8);

  return xmlXPathCompOpEvalToBoolean(a1, v9, 0);
}

uint64_t xmlXPathCompOpEval(xmlXPathParserContext *a1, unsigned int *a2)
{
  if (a1->error)
  {
    return 0;
  }

  v6 = linkedOnOrAfterFall2022OSVersions(a1, a2);
  if (v6)
  {
    context = a1->context;
    if (context->opLimit)
    {
      v6 = xmlXPathCheckOpLimit(a1, 1uLL);
      if ((v6 & 0x80000000) != 0)
      {
        return 0;
      }

      context = a1->context;
    }

    depth = context->depth;
    if (depth >= 5000)
    {
      v10 = a1;
      v11 = 26;
LABEL_10:
      xmlXPathErr(v10, v11);
      return 0;
    }

    context->depth = depth + 1;
  }

  v2 = *a2;
  comp = a1->comp;
  switch(v2)
  {
    case 0:
      goto LABEL_291;
    case 1:
      v46 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v2 = v46;
      xmlXPathBooleanFunction(a1, 1);
      value = a1->value;
      if (!value || !value->BOOLval)
      {
        goto LABEL_291;
      }

      valueNr = a1->valueNr;
      if (valueNr < 1)
      {
        v110 = 0;
      }

      else
      {
        valueTab = a1->valueTab;
        v50 = valueNr - 1;
        a1->valueNr = valueNr - 1;
        if (valueNr == 1)
        {
          v51 = 0;
        }

        else
        {
          v51 = valueTab[valueNr - 2];
        }

        a1->value = v51;
        v110 = valueTab[v50];
        valueTab[v50] = 0;
      }

      v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2])) + v2;
      if (a1->error)
      {
        goto LABEL_221;
      }

      xmlXPathBooleanFunction(a1, 1);
      v113 = a1->value;
      if (!v113)
      {
        goto LABEL_225;
      }

      v114 = v113->BOOLval & v110->BOOLval;
      goto LABEL_224;
    case 2:
      v28 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v2 = v28;
      xmlXPathBooleanFunction(a1, 1);
      v29 = a1->value;
      if (!v29 || v29->BOOLval == 1)
      {
        goto LABEL_291;
      }

      v30 = a1->valueNr;
      if (v30 < 1)
      {
        v110 = 0;
      }

      else
      {
        v31 = a1->valueTab;
        v32 = v30 - 1;
        a1->valueNr = v30 - 1;
        if (v30 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31[v30 - 2];
        }

        a1->value = v33;
        v110 = v31[v32];
        v31[v32] = 0;
      }

      v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2])) + v2;
      if (a1->error)
      {
LABEL_221:
        xmlXPathFreeObject(v110);
        goto LABEL_291;
      }

      xmlXPathBooleanFunction(a1, 1);
      v113 = a1->value;
      if (v113)
      {
        v114 = v113->BOOLval | v110->BOOLval;
LABEL_224:
        v113->BOOLval = v114;
      }

LABEL_225:
      v123 = a1->context;
      v124 = v110;
      goto LABEL_226;
    case 3:
      v34 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v35 = v34;
      v36 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2]));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v36 + v35);
      if (a2[3])
      {
        v25 = xmlXPathEqualValues(a1);
      }

      else
      {
        v25 = xmlXPathNotEqualValues(a1);
      }

      goto LABEL_152;
    case 4:
      v22 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v23 = v22;
      v24 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2]));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v24 + v23);
      v25 = xmlXPathCompareValues(a1, a2[3], a2[4]);
LABEL_152:
      v78 = xmlXPathCacheNewBoolean(a1->context, v25);
      goto LABEL_153;
    case 5:
      v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v2 = v6;
      v53 = a2[2];
      if (v53 == -1)
      {
        goto LABEL_60;
      }

      v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v53));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v6 + v2);
LABEL_60:
      v54 = a2[3];
      if (v54 <= 1)
      {
        if (v54)
        {
          if (v54 == 1)
          {
            xmlXPathAddValues(a1);
          }
        }

        else
        {
          xmlXPathSubValues(a1);
        }

        goto LABEL_291;
      }

      if (v54 == 2)
      {
        xmlXPathValueFlipSign(a1);
        goto LABEL_291;
      }

      if (v54 == 3)
      {
        v97 = a1->value;
        if (!v97)
        {
          goto LABEL_293;
        }

        if (v97->type != XPATH_NUMBER)
        {
          xmlXPathNumberFunction(a1, 1);
          v98 = a1->value;
          if (!v98 || v98->type != XPATH_NUMBER)
          {
            goto LABEL_293;
          }
        }
      }

      goto LABEL_291;
    case 6:
      v58 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v59 = v58;
      v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2]));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v6 + v59);
      v60 = a2[3];
      switch(v60)
      {
        case 2u:
          xmlXPathModValues(a1);
          break;
        case 1u:
          xmlXPathDivValues(a1);
          break;
        case 0u:
          xmlXPathMultValues(a1);
          break;
      }

      goto LABEL_291;
    case 7:
      v37 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[1]));
      if (a1->error)
      {
        return 0;
      }

      v38 = v37;
      v39 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * a2[2]));
      if (a1->error)
      {
        return 0;
      }

      v41 = a1->valueNr;
      if (v41 < 1)
      {
        v45 = 0;
        v44 = 0;
        goto LABEL_184;
      }

      v42 = a1->valueTab;
      v43 = (v41 - 1);
      a1->valueNr = v43;
      if (v41 == 1)
      {
        v44 = 0;
        a1->value = 0;
        v45 = v42[v43];
        v42[v43] = 0;
LABEL_184:
        xmlXPathReleaseObject(a1->context, v44);
        xmlXPathReleaseObject(a1->context, v45);
        goto LABEL_293;
      }

      v115 = 0;
      a1->value = v42[v41 - 2];
      v45 = v42[v43];
      v42[v43] = 0;
      v116 = v41 - 2;
      a1->valueNr = v116;
      v117 = a1->valueTab;
      if (v43 != 1)
      {
        v115 = v117[v43 - 2];
      }

      a1->value = v115;
      v44 = v117[v116];
      v117[v116] = 0;
      if (!v44)
      {
        goto LABEL_184;
      }

      v118 = v44->type != XPATH_NODESET || v45 == 0;
      if (v118 || *v45 != 1)
      {
        goto LABEL_184;
      }

      v2 = (v39 + v38);
      if (linkedOnOrAfterFall2022OSVersions(v39, v40) && a1->context->opLimit && ((p_nodeNr = &v44->nodesetval->nodeNr) != 0 && (xmlXPathCheckOpLimit(a1, *p_nodeNr) & 0x80000000) != 0 || (v120 = v45[1]) != 0 && (xmlXPathCheckOpLimit(a1, *v120) & 0x80000000) != 0))
      {
        xmlXPathReleaseObject(a1->context, v44);
      }

      else
      {
        nodesetval = v44->nodesetval;
        v122 = v45[1];
        if (!nodesetval || v122 && v122->nodeNr)
        {
          v44->nodesetval = xmlXPathNodeSetMerge(nodesetval, v122);
        }

        valuePush(a1, v44);
      }

      v123 = a1->context;
      v124 = v45;
LABEL_226:
      xmlXPathReleaseObject(v123, v124);
      goto LABEL_291;
    case 8:
      xmlXPathRoot(a1);
      goto LABEL_77;
    case 9:
      v27 = a2[1];
      if (v27 == -1)
      {
        v2 = 0;
      }

      else
      {
        v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v27));
      }

      if (a1->error)
      {
        return 0;
      }

      v79 = a2[2];
      if (v79 == -1)
      {
        goto LABEL_105;
      }

      v80 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v79));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v80 + v2);
LABEL_105:
      v78 = xmlXPathCacheNewNodeSet(a1->context, a1->context->node);
      goto LABEL_153;
    case 10:
      v61 = a2[1];
      if (v61 == -1)
      {
        goto LABEL_77;
      }

      v62 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v61));
      if (a1->error)
      {
        return 0;
      }

      v63 = v62;
      v6 = xmlXPathNodeCollectAndTest(a1, a2, 0, 0, 0);
      v2 = (v6 + v63);
      goto LABEL_291;
    case 11:
      v21 = xmlXPathCacheObjectCopy(a1->context, *(a2 + 3));
      v6 = valuePush(a1, v21);
LABEL_77:
      v2 = 0;
      goto LABEL_291;
    case 12:
      v26 = a2[1];
      if (v26 == -1)
      {
        v2 = 0;
      }

      else
      {
        v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v26));
      }

      v75 = *(a2 + 4);
      v76 = a1->context;
      if (v75)
      {
        v77 = xmlXPathNsLookup(v76, v75);
        if (!v77)
        {
          v94 = *__xmlGenericError();
          v95 = *__xmlGenericErrorContext();
          v96 = "xmlXPathCompOpEval: variable %s bound to undefined prefix %s\n";
LABEL_133:
          v6 = (v94)(v95, v96);
          v86 = 19;
LABEL_117:
          a1->error = v86;
          goto LABEL_291;
        }

        v78 = xmlXPathVariableLookupNS(a1->context, *(a2 + 3), v77);
        if (!v78)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v78 = xmlXPathVariableLookup(v76, *(a2 + 3));
        if (!v78)
        {
LABEL_99:
          v10 = a1;
          v11 = 5;
          goto LABEL_10;
        }
      }

LABEL_153:
      v111 = v78;
      v112 = a1;
LABEL_154:
      v6 = valuePush(v112, v111);
      goto LABEL_291;
    case 13:
      v55 = a1->valueNr;
      v56 = a2[1];
      if (v56 == -1)
      {
        v2 = 0;
        v57 = a1->valueNr;
      }

      else
      {
        v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v56));
        v2 = v6;
        if (a1->error)
        {
          goto LABEL_291;
        }

        v57 = a1->valueNr;
      }

      v83 = a2[3];
      if (v57 < v83 + v55)
      {
        v84 = *__xmlGenericError();
        v85 = __xmlGenericErrorContext();
        v6 = (v84)(*v85, "xmlXPathCompOpEval: parameter error\n");
LABEL_116:
        v86 = 10;
        goto LABEL_117;
      }

      if (v83 < 1)
      {
        goto LABEL_143;
      }

      v93 = v57 - 1;
      while (a1->valueTab[v93])
      {
        --v93;
        if (!--v83)
        {
          goto LABEL_143;
        }
      }

      v99 = *__xmlGenericError();
      v100 = __xmlGenericErrorContext();
      v99(*v100, "xmlXPathCompOpEval: parameter error\n");
      a1->error = 10;
LABEL_143:
      v101 = *(a2 + 5);
      if (v101)
      {
        v102 = *(a2 + 6);
      }

      else
      {
        v103 = *(a2 + 4);
        v104 = a1->context;
        if (v103)
        {
          v105 = xmlXPathNsLookup(v104, v103);
          if (!v105)
          {
            v94 = *__xmlGenericError();
            v95 = *__xmlGenericErrorContext();
            v96 = "xmlXPathCompOpEval: function %s bound to undefined prefix %s\n";
            goto LABEL_133;
          }

          v102 = v105;
          v101 = xmlXPathFunctionLookupNS(a1->context, *(a2 + 3), v105);
        }

        else
        {
          v101 = xmlXPathFunctionLookup(v104, *(a2 + 3));
          v102 = 0;
        }

        if (!v101)
        {
          v146 = *__xmlGenericError();
          v147 = __xmlGenericErrorContext();
          v146(*v147, "xmlXPathCompOpEval: function %s not found\n", *(a2 + 3));
          v10 = a1;
          v11 = 9;
          goto LABEL_10;
        }

        *(a2 + 5) = v101;
        *(a2 + 6) = v102;
      }

      v125 = a1->context;
      v126 = a2[3];
      *cura = *&v125->function;
      v125->function = *(a2 + 3);
      v125->functionURI = v102;
      v6 = (v101)(a1, v126);
      *&a1->context->function = *cura;
      if (!a1->error && a1->valueNr != v55 + 1)
      {
        v10 = a1;
        v11 = 23;
        goto LABEL_10;
      }

      goto LABEL_291;
    case 14:
      v20 = a2[1];
      if (v20 == -1)
      {
        v2 = 0;
      }

      else
      {
        v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v20));
        if (a1->error)
        {
          return 0;
        }

        v2 = v6;
      }

      v74 = a2[2];
      if (v74 == -1)
      {
        goto LABEL_291;
      }

      v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v74));
      if (a1->error)
      {
        return 0;
      }

      v2 = (v6 + v2);
      goto LABEL_291;
    case 15:
    case 16:
      v13 = a2[1];
      if (v13 == -1)
      {
        goto LABEL_284;
      }

      v14 = a2[2];
      if (v14 == -1)
      {
        goto LABEL_88;
      }

      v15 = *(comp + 1);
      v16 = (v15 + 56 * v13);
      if ((*v16 & 0xFFFFFFFE) == 0x10)
      {
        v17 = v15 + 56 * v14;
        if (*v17 == 11)
        {
          v18 = *(v17 + 24);
          if (v18)
          {
            if (*v18 == 3 && *(v18 + 24) == 1.0)
            {
              v193 = 0;
              v6 = xmlXPathCompOpEvalFirst(a1, v16, &v193);
              v2 = v6;
              if (a1->error)
              {
LABEL_21:
                v19 = 1;
                goto LABEL_281;
              }

              v176 = a1->value;
              if (v176)
              {
                if (v176->type == XPATH_NODESET)
                {
                  v6 = v176->nodesetval;
                  if (v6)
                  {
                    if (*v6 >= 2)
                    {
                      xmlXPathNodeSetClearFromPos(v6, 1, 1);
                    }
                  }
                }
              }

LABEL_280:
              v19 = 2;
LABEL_281:
              if (v19 != 2)
              {
                return 0;
              }

              goto LABEL_291;
            }
          }
        }
      }

      v70 = *(comp + 1);
      if (*(v70 + 56 * v13) != 17)
      {
        goto LABEL_88;
      }

      v71 = (v70 + 56 * v14);
      if (*v71 != 17)
      {
        goto LABEL_88;
      }

      v72 = v71[1];
      if (v72 == -1)
      {
        goto LABEL_88;
      }

      v73 = v70 + 56 * v72;
      if (*v73 != 13)
      {
        goto LABEL_88;
      }

      if (*(v73 + 32))
      {
        goto LABEL_88;
      }

      if (*(v73 + 12))
      {
        goto LABEL_88;
      }

      v177 = *(v73 + 24);
      if (!v177)
      {
        goto LABEL_88;
      }

      v6 = xmlStrEqual(v177, "last");
      v178 = a2[1];
      if (v6)
      {
        v193 = 0;
        v6 = xmlXPathCompOpEvalLast(a1, (*(comp + 1) + 56 * v178), &v193);
        v2 = v6;
        if (a1->error)
        {
          goto LABEL_21;
        }

        v179 = a1->value;
        if (v179)
        {
          if (v179->type == XPATH_NODESET)
          {
            v6 = v179->nodesetval;
            if (v6)
            {
              if (*(v6 + 8) && *v6 >= 2)
              {
                xmlXPathNodeSetKeepLast(v6);
              }
            }
          }
        }

        goto LABEL_280;
      }

      v13 = a2[1];
      if (v178 == -1)
      {
LABEL_284:
        v2 = 0;
      }

      else
      {
LABEL_88:
        v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v13));
        v2 = v6;
      }

      if (a1->error)
      {
        return 0;
      }

      v180 = a2[2];
      if (v180 != -1)
      {
        v181 = a1->value;
        if (v181)
        {
          if (v181->type == XPATH_NODESET)
          {
            v182 = a1->valueNr;
            if (v182 < 1)
            {
              v186 = 0;
            }

            else
            {
              v183 = a1->valueTab;
              v184 = v182 - 1;
              a1->valueNr = v182 - 1;
              if (v182 == 1)
              {
                v185 = 0;
              }

              else
              {
                v185 = v183[v182 - 2];
              }

              a1->value = v185;
              v186 = v183[v184];
              v183[v184] = 0;
            }

            v187 = &v186->nodesetval->nodeNr;
            if (v187)
            {
              xmlXPathNodeSetFilter(a1, v187, v180, 1, *v187, 1);
            }

            v112 = a1;
            v111 = v186;
            goto LABEL_154;
          }

          if (v181->type != XPATH_LOCATIONSET)
          {
            goto LABEL_293;
          }

          xmlXPathLocationSetFilter(a1, v181->user, v180, *v181->user);
        }
      }

      goto LABEL_291;
    case 17:
      v52 = a2[1];
      if (v52 == -1)
      {
        v2 = 0;
      }

      else
      {
        v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v52));
        v2 = v6;
      }

      if (a1->error)
      {
        return 0;
      }

      v81 = a1->value;
      if (v81)
      {
        if (v81->type == XPATH_NODESET)
        {
          v82 = v81->nodesetval;
          if (v82)
          {
            v7 = *v82;
            if (v7 >= 2)
            {
              v6 = libxml_domnode_tim_sort(*(v82 + 1), v7);
            }
          }
        }
      }

      goto LABEL_291;
    case 18:
      v64 = a1->context;
      node = v64->node;
      v66 = *&v64->contextSize;
      v67 = a2[1];
      if (v67 == -1)
      {
        v2 = 0;
      }

      else
      {
        v6 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v67));
        if (a1->error)
        {
          return 0;
        }

        v2 = v6;
      }

      v87 = a1->value;
      if (!v87)
      {
        v10 = a1;
        v11 = 10;
        goto LABEL_10;
      }

      if (a2[2] == -1)
      {
        goto LABEL_291;
      }

      if (v87->type == XPATH_NODESET)
      {
        v106 = a1->valueNr;
        v107 = a1->valueTab;
        v108 = v106 - 1;
        a1->valueNr = v106 - 1;
        if (v106 == 1)
        {
          v109 = 0;
        }

        else
        {
          v109 = v107[v106 - 2];
        }

        a1->value = v109;
        v127 = v107[v108];
        v107[v108] = 0;
        v128 = v127[1];
        cur = xmlXPtrLocationSetCreate(0);
        if (v128 && *v128 >= 1)
        {
          v129 = v127;
          v130 = 0;
          while (1)
          {
            v131 = *(*(v128 + 1) + 8 * v130);
            v132 = a1->context;
            v132->node = v131;
            v133 = xmlXPathCacheNewNodeSet(v132, v131);
            valuePush(a1, v133);
            v134 = a2[2];
            if (v134 != -1)
            {
              v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v134)) + v2;
            }

            if (a1->error)
            {
              break;
            }

            v135 = a1->valueNr;
            if (v135 < 1)
            {
              v139 = 0;
            }

            else
            {
              v136 = a1->valueTab;
              v137 = v135 - 1;
              a1->valueNr = v135 - 1;
              if (v135 == 1)
              {
                v138 = 0;
              }

              else
              {
                v138 = v136[v135 - 2];
              }

              a1->value = v138;
              v139 = v136[v137];
              v136[v137] = 0;
            }

            v140 = xmlXPtrNewRangeNodeObject(*(*(v128 + 1) + 8 * v130), v139);
            if (v140)
            {
              xmlXPtrLocationSetAdd(cur, v140);
            }

            if (v139)
            {
              xmlXPathReleaseObject(a1->context, v139);
            }

            if (a1->value == v133)
            {
              v141 = a1->valueNr;
              if (v141 < 1)
              {
                v145 = 0;
              }

              else
              {
                v142 = a1->valueTab;
                v143 = v141 - 1;
                a1->valueNr = v141 - 1;
                if (v141 == 1)
                {
                  v144 = 0;
                }

                else
                {
                  v144 = v142[v141 - 2];
                }

                a1->value = v144;
                v145 = v142[v143];
                v142[v143] = 0;
              }

              xmlXPathReleaseObject(a1->context, v145);
            }

            if (++v130 >= *v128)
            {
              v127 = v129;
              goto LABEL_263;
            }
          }

          xmlXPtrFreeLocationSet(cur);
          v127 = v129;
LABEL_264:
          xmlXPathReleaseObject(a1->context, v127);
          v175 = a1->context;
          v175->node = node;
          *&v175->contextSize = v66;
          goto LABEL_291;
        }

LABEL_263:
        v174 = xmlXPtrWrapLocationSet(cur);
        valuePush(a1, v174);
        goto LABEL_264;
      }

      if (v87->type != XPATH_LOCATIONSET)
      {
LABEL_293:
        v10 = a1;
        v11 = 11;
        goto LABEL_10;
      }

      user = v87->user;
      if (user && *user)
      {
        v89 = a1->valueNr;
        v90 = a1->valueTab;
        v91 = v89 - 1;
        a1->valueNr = v89 - 1;
        v189 = node;
        if (v89 == 1)
        {
          v92 = 0;
        }

        else
        {
          v92 = v90[v89 - 2];
        }

        a1->value = v92;
        v148 = v90[v91];
        v90[v91] = 0;
        v188 = v148;
        v149 = v148->user;
        cur = xmlXPtrLocationSetCreate(0);
        LODWORD(v150) = *v149;
        if (*v149 >= 1)
        {
          v151 = 0;
          while (1)
          {
            v152 = *(*(*(v149 + 1) + 8 * v151) + 40);
            v153 = a1->context;
            v153->node = v152;
            v153->contextSize = v150;
            v153->proximityPosition = v151 + 1;
            v154 = xmlXPathCacheNewNodeSet(v153, v152);
            valuePush(a1, v154);
            v155 = a2[2];
            if (v155 != -1)
            {
              v2 = xmlXPathCompOpEval(a1, (*(comp + 1) + 56 * v155)) + v2;
            }

            if (a1->error)
            {
              break;
            }

            v156 = a1->valueNr;
            v190 = v151 + 1;
            if (v156 < 1)
            {
              v160 = 0;
            }

            else
            {
              v157 = a1->valueTab;
              v158 = v156 - 1;
              a1->valueNr = v156 - 1;
              if (v156 == 1)
              {
                v159 = 0;
              }

              else
              {
                v159 = v157[v156 - 2];
              }

              a1->value = v159;
              v160 = v157[v158];
              v157[v158] = 0;
            }

            if (v160->type == XPATH_LOCATIONSET)
            {
              v161 = v160->user;
              if (*v161 >= 1)
              {
                v162 = 0;
                do
                {
                  v163 = *(*(v149 + 1) + 8 * v151);
                  v164 = *(v163 + 40);
                  v165 = *(v163 + 48);
                  v166 = *(*(v161 + 1) + 8 * v162);
                  v167 = xmlXPtrNewRange(v164, v165, *(v166 + 56), *(v166 + 64));
                  if (v167)
                  {
                    xmlXPtrLocationSetAdd(cur, v167);
                  }

                  ++v162;
                }

                while (v162 < *v161);
              }
            }

            else
            {
              v168 = xmlXPtrNewRangeNodeObject(*(*(*(v149 + 1) + 8 * v151) + 40), v160);
              if (v168)
              {
                xmlXPtrLocationSetAdd(cur, v168);
              }
            }

            xmlXPathReleaseObject(a1->context, v160);
            if (a1->value == v154)
            {
              v169 = a1->valueNr;
              if (v169 < 1)
              {
                v173 = 0;
              }

              else
              {
                v170 = a1->valueTab;
                v171 = v169 - 1;
                a1->valueNr = v169 - 1;
                if (v169 == 1)
                {
                  v172 = 0;
                }

                else
                {
                  v172 = v170[v169 - 2];
                }

                a1->value = v172;
                v173 = v170[v171];
                v170[v171] = 0;
              }

              xmlXPathReleaseObject(a1->context, v173);
            }

            v150 = *v149;
            ++v151;
            if (v190 >= v150)
            {
              goto LABEL_262;
            }
          }

          xmlXPtrFreeLocationSet(cur);
          v127 = v188;
          node = v189;
          goto LABEL_264;
        }

LABEL_262:
        v127 = v188;
        node = v189;
        goto LABEL_263;
      }

LABEL_291:
      if (linkedOnOrAfterFall2022OSVersions(v6, v7))
      {
        --a1->context->depth;
      }

      return v2;
    default:
      v68 = *__xmlGenericError();
      v69 = __xmlGenericErrorContext();
      v6 = (v68)(*v69, "XPath: unknown precompiled operation %d\n", *a2);
      v2 = 0;
      goto LABEL_116;
  }
}

void xmlXPathRoot(xmlXPathParserContextPtr ctxt)
{
  if (ctxt)
  {
    context = ctxt->context;
    if (context)
    {
      v3 = xmlXPathCacheNewNodeSet(context, *context);

      valuePush(ctxt, v3);
    }
  }
}

xmlXPathObjectPtr xmlXPathCacheNewNodeSet(uint64_t a1, xmlNodePtr val)
{
  if (a1)
  {
    v3 = *(a1 + 344);
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 2);
        if (v5)
        {
          v6 = *v4;
          v7 = v5 - 1;
          *(v4 + 2) = v7;
          v8 = *(v6 + 8 * v7);
          *v8 = 1;
          *(v8 + 16) = 0;
          if (val)
          {
            v9 = *(v8 + 8);
            if (v9->nodeMax && val->type != XML_NAMESPACE_DECL)
            {
              *v9->nodeTab = val;
              **(v8 + 8) = 1;
            }

            else
            {
              xmlXPathNodeSetAddUnique(v9, val);
            }
          }

          return v8;
        }
      }

      v10 = v3[4];
      if (v10)
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v12 = *v10;
          v13 = v11 - 1;
          *(v10 + 2) = v13;
          v8 = *(v12 + 8 * v13);
          *v8 = 1;
          *(v8 + 16) = 0;
          v14 = xmlXPathNodeSetCreate(val);
          *(v8 + 8) = v14;
          if (!v14)
          {
            v8 = 0;
            *(a1 + 232) = 0x20000000CLL;
          }

          return v8;
        }
      }
    }
  }

  return xmlXPathNewNodeSet(val);
}

xmlXPathObjectPtr xmlXPathNewNodeSet(xmlNodePtr val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 1;
    *(v2 + 1) = xmlXPathNodeSetCreate(val);
  }

  else
  {
    xmlXPathErrMemory(0, "creating nodeset\n");
  }

  return v3;
}

xmlNodeSetPtr xmlXPathNodeSetCreate(xmlNodePtr val)
{
  v2 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
  v3 = v2;
  if (!v2)
  {
    xmlXPathErrMemory(0, "creating nodeset\n");
    return v3;
  }

  *&v2->nodeNr = 0;
  v2->nodeTab = 0;
  if (val)
  {
    v4 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    v3->nodeTab = v4;
    if (v4)
    {
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      v3->nodeMax = 10;
      if (val->type != XML_NAMESPACE_DECL)
      {
        nodeTab = v3->nodeTab;
        nodeNr = v3->nodeNr;
        v3->nodeNr = nodeNr + 1;
        nodeTab[nodeNr] = val;
        return v3;
      }

      v5 = xmlXPathNodeSetDupNs(val->_private, val);
      if (v5)
      {
        v6 = v3->nodeTab;
        v7 = v3->nodeNr;
        v3->nodeNr = v7 + 1;
        v6[v7] = v5;
        return v3;
      }

      xmlXPathFreeNodeSet(v3);
    }

    else
    {
      xmlXPathErrMemory(0, "creating nodeset\n");
      free(v3);
    }

    return 0;
  }

  return v3;
}

int valuePush(xmlXPathParserContextPtr ctxt, xmlXPathObjectPtr value)
{
  if (!ctxt)
  {
    return -1;
  }

  if (value)
  {
    result = ctxt->valueNr;
    valueMax = ctxt->valueMax;
    if (result < valueMax)
    {
      valueTab = ctxt->valueTab;
LABEL_15:
      valueTab[result] = value;
      ctxt->value = value;
      ctxt->valueNr = result + 1;
      return result;
    }

    if (valueMax < 1)
    {
      v7 = 10;
    }

    else
    {
      if (valueMax >= 0xF4240)
      {
LABEL_16:
        ctxt->error = 15;
        xmlXPathErrMemory(ctxt->context, "pushing value\n");
        xmlXPathFreeObject(value);
        return -1;
      }

      if (1000000 - ((valueMax + 1) >> 1) >= valueMax)
      {
        v7 = valueMax + ((valueMax + 1) >> 1);
      }

      else
      {
        v7 = 1000000;
      }
    }

    v8 = malloc_type_realloc(ctxt->valueTab, 8 * v7, 0x2004093837F09uLL);
    if (v8)
    {
      valueTab = v8;
      ctxt->valueTab = v8;
      ctxt->valueMax = v7;
      result = ctxt->valueNr;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  ctxt->error = 15;
  return -1;
}

uint64_t xmlXPathNodeCollectAndTest(xmlXPathParserContextPtr ctxt, xmlChar *a2, uint64_t *a3, xmlChar **a4, int a5)
{
  v5 = ctxt;
  value = ctxt->value;
  if (!value || value->type != XPATH_NODESET)
  {
    v19 = 11;
    goto LABEL_7;
  }

  v10 = a2;
  v11 = *(a2 + 4);
  v84 = *(a2 + 3);
  v12 = *(a2 + 5);
  v13 = *(a2 + 3);
  str1 = *(a2 + 4);
  context = ctxt->context;
  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    v22 = 0;
    if (v13)
    {
LABEL_14:
      v23 = xmlXPathNsLookup(context, v13);
      if (v23)
      {
        goto LABEL_15;
      }

      xmlXPathReleaseObject(context, v22);
      ctxt = v5;
      v19 = 19;
LABEL_7:
      xmlXPathErr(ctxt, v19);
      return 0;
    }
  }

  else
  {
    valueTab = ctxt->valueTab;
    v17 = valueNr - 1;
    ctxt->valueNr = valueNr - 1;
    if (valueNr == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = valueTab[valueNr - 2];
    }

    ctxt->value = v18;
    v22 = valueTab[v17];
    valueTab[v17] = 0;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  v23 = 0;
LABEL_15:
  v75 = v23;
  v77 = v13;
  v80 = xmlXPathNodeSetMergeAndClear;
  v24 = xmlXPathNextAncestor;
  v78 = v12;
  v25 = 0;
  switch(v84)
  {
    case 1:
      goto LABEL_42;
    case 2:
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v26 = xmlXPathNextAncestorOrSelf;
      goto LABEL_41;
    case 3:
      a4 = 0;
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClearNoDupls;
      v26 = xmlXPathNextAttribute;
      goto LABEL_41;
    case 4:
      a4 = 0;
      if ((v11 == 3 || v11 == 5) && v78 == 0)
      {
        v24 = xmlXPathNextChildElement;
      }

      else
      {
        v24 = xmlXPathNextChild;
      }

      v80 = xmlXPathNodeSetMergeAndClearNoDupls;
      goto LABEL_38;
    case 5:
      a4 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v27 = xmlXPathNextDescendant;
      goto LABEL_37;
    case 6:
      a4 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v27 = xmlXPathNextDescendantOrSelf;
      goto LABEL_37;
    case 7:
      a4 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v27 = xmlXPathNextFollowing;
      goto LABEL_37;
    case 8:
      a4 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v27 = xmlXPathNextFollowingSibling;
LABEL_37:
      v24 = v27;
LABEL_38:
      v25 = a3;
      goto LABEL_42;
    case 9:
      a4 = 0;
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClearNoDupls;
      v26 = xmlXPathNextNamespace;
      goto LABEL_41;
    case 10:
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v26 = xmlXPathNextParent;
      goto LABEL_41;
    case 11:
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v26 = xmlXPathNextPrecedingInternal;
      goto LABEL_41;
    case 12:
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClear;
      v26 = xmlXPathNextPrecedingSibling;
      goto LABEL_41;
    case 13:
      a4 = 0;
      v25 = 0;
      v80 = xmlXPathNodeSetMergeAndClearNoDupls;
      v26 = xmlXPathNextSelf;
LABEL_41:
      v24 = v26;
LABEL_42:
      v30 = v22[1];
      if (!v30 || *v30 <= 0)
      {
        xmlXPathReleaseObject(context, v22);
        v39 = xmlXPathCacheWrapNodeSet(context, 0);
        valuePush(v5, v39);
        return 0;
      }

      v31 = *(v10 + 8);
      v82 = context;
      v68 = v22;
      v71 = a5;
      if (v31 == -1)
      {
        v76 = 0;
        v33 = 0;
        goto LABEL_59;
      }

      v32 = *(v5->comp + 1);
      v33 = (v32 + 56 * v31);
      if ((*v33 - 15) > 1 || (v34 = v33[2], v34 == -1) || (v35 = v32 + 56 * v34, *v35 != 11) || (v36 = *(v35 + 24)) == 0 || *v36 != 3)
      {
        v76 = 0;
LABEL_59:
        v66 = 1;
LABEL_60:
        v79 = 1;
        goto LABEL_61;
      }

      v76 = 0;
      v37 = *(v36 + 24);
      v66 = 1;
      if (v37 <= -2147483650.0 || v37 >= 2147483650.0)
      {
        goto LABEL_60;
      }

      v76 = v37;
      if (v37 != v37)
      {
        goto LABEL_59;
      }

      v38 = v33[1];
      if (v38 != -1)
      {
        v66 = 0;
        v33 = (v32 + 56 * v38);
        goto LABEL_60;
      }

      v33 = 0;
      v79 = 0;
      v66 = 1;
LABEL_61:
      v40 = 0;
      v41 = 0;
      val = 0;
      v20 = 0;
      if (v71)
      {
        v42 = v33 == 0;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v73 = v43;
      node = context->node;
      v44 = v84;
      v69 = v33;
      v70 = v30;
      while (!v5->error)
      {
        *(v82 + 8) = *(*(v30 + 1) + 8 * v40);
        if (!v41)
        {
          v45 = v40;
          v23 = xmlXPathNodeSetCreate(0);
          v40 = v45;
          v41 = v23;
          if (!v23)
          {
            v20 = 0;
            break;
          }
        }

        v83 = v41;
        v72 = 0;
        v46 = 0;
        v47 = 0;
        v48 = v40 + 1;
        while (1)
        {
          v49 = v48;
          if (linkedOnOrAfterFall2022OSVersions(v23, a2) && v5->context->opLimit && (xmlXPathCheckOpLimit(v5, 1uLL) & 0x80000000) != 0)
          {
            goto LABEL_185;
          }

          v23 = v24(v5, v46);
          if (!v23 || (v46 = v23, v25) && (v23 = *v25) != 0 && (v23 == v46 || !v20 && (v23 = xmlXPathCmpNodesExt(v23, v46), (v23 & 0x80000000) == 0)) || a4 && (a2 = *a4) != 0 && (a2 == v46 || !v20 && (v23 = xmlXPathCmpNodesExt(v46, a2), (v23 & 0x80000000) == 0)))
          {
            if (v5->error)
            {
              goto LABEL_185;
            }

            v30 = v70;
            if (v69)
            {
              nodeNr = v83->nodeNr;
              if (v83->nodeNr < 1)
              {
LABEL_177:
                v40 = v49;
                v41 = v83;
                goto LABEL_180;
              }

              if (v66)
              {
                v58 = 1;
              }

              else
              {
                v58 = v76;
                nodeNr = v76;
              }

              xmlXPathCompOpEvalPredicate(v5, v69, &v83->nodeNr, v58, nodeNr, v72);
              if (v5->error)
              {
                goto LABEL_184;
              }
            }

            if (v83->nodeNr >= 1)
            {
              goto LABEL_175;
            }

            goto LABEL_177;
          }

          v20 = (v20 + 1);
          if (v11 <= 2)
          {
            break;
          }

          if (v11 != 3)
          {
            if (v11 == 4)
            {
              v54 = *__xmlGenericError();
              v55 = __xmlGenericErrorContext();
              v23 = (v54)(*v55, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 12230);
              v44 = v84;
LABEL_108:
              v48 = v49;
              goto LABEL_159;
            }

            if (v11 != 5)
            {
              goto LABEL_108;
            }

            v50 = *(v46 + 8);
            if (v44 == 9)
            {
              if (v50 == 18)
              {
                v23 = *(v46 + 24);
                if (v23)
                {
                  a2 = str1;
                  if (str1)
                  {
                    v23 = xmlStrEqual(v23, str1);
                    if (v23)
                    {
                      if ((v79 & 1) == 0)
                      {
                        ++v47;
                        v48 = v49;
                        if (v47 == v76)
                        {
                          goto LABEL_182;
                        }

                        goto LABEL_159;
                      }

LABEL_124:
                      v23 = xmlXPathNodeSetAddNs(v83, *(v82 + 8), v46);
                      if ((v23 & 0x80000000) != 0)
                      {
LABEL_125:
                        v5->error = 15;
                      }

LABEL_126:
                      if (v73)
                      {
                        goto LABEL_198;
                      }

                      v48 = v49;
                      goto LABEL_128;
                    }
                  }
                }
              }

              goto LABEL_108;
            }

            if (v44 == 3)
            {
              if (v50 != 2)
              {
                goto LABEL_108;
              }

              v23 = xmlStrEqual(str1, *(v46 + 16));
              if (!v23)
              {
                goto LABEL_108;
              }

              v51 = *(v46 + 72);
              if (!v77)
              {
                v48 = v49;
                if (v51 && *(v51 + 24))
                {
                  goto LABEL_159;
                }

                goto LABEL_151;
              }
            }

            else
            {
              if (v50 != 1)
              {
                goto LABEL_108;
              }

              v23 = xmlStrEqual(str1, *(v46 + 16));
              if (!v23)
              {
                goto LABEL_108;
              }

              v51 = *(v46 + 72);
              if (!v77)
              {
                v48 = v49;
                if (v51)
                {
                  goto LABEL_159;
                }

                goto LABEL_151;
              }
            }

            if (!v51)
            {
              goto LABEL_108;
            }

LABEL_144:
            v52 = *(v51 + 16);
            v23 = v75;
LABEL_145:
            v23 = xmlStrEqual(v23, v52);
            if (!v23)
            {
              goto LABEL_108;
            }

            goto LABEL_146;
          }

          v48 = v49;
          v53 = *(v46 + 8);
          if (v44 != 9)
          {
            if (v44 == 3)
            {
              if (v53 != 2)
              {
                goto LABEL_159;
              }
            }

            else if (v53 != 1)
            {
              goto LABEL_159;
            }

            if (v77)
            {
              v51 = *(v46 + 72);
              if (!v51)
              {
                goto LABEL_159;
              }

              goto LABEL_144;
            }

            goto LABEL_151;
          }

          if (v53 == 18)
          {
            goto LABEL_123;
          }

LABEL_159:
          if (v5->error)
          {
            goto LABEL_185;
          }
        }

        v48 = v49;
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (*(v46 + 8) != 7)
            {
              goto LABEL_159;
            }

            v23 = str1;
            if (str1)
            {
              v52 = *(v46 + 16);
              goto LABEL_145;
            }

LABEL_146:
            if ((v79 & 1) == 0)
            {
              ++v47;
              v48 = v49;
              if (v47 == v76)
              {
                goto LABEL_164;
              }

              goto LABEL_159;
            }

LABEL_152:
            v23 = xmlXPathNodeSetAddUnique(v83, v46);
            if ((v23 & 0x80000000) != 0)
            {
              v5->error = 15;
            }

            v48 = v49;
            if (v73)
            {
LABEL_198:
              if (val)
              {
                v41 = v83;
                val = v80(val, &v83->nodeNr);
              }

              else
              {
                val = v83;
                v41 = 0;
              }

              break;
            }

            goto LABEL_159;
          }

          if (v11)
          {
            goto LABEL_159;
          }

          v59 = *__xmlGenericError();
          v60 = __xmlGenericErrorContext();
          v59(*v60, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 12149);
LABEL_184:
          v20 = 0;
LABEL_185:
          v41 = v83;
          break;
        }

        v56 = *(v46 + 8);
        if (v78)
        {
          if (v56 == v78)
          {
            if (v78 == 18)
            {
              goto LABEL_123;
            }
          }

          else if (v78 != 3 || v56 != 4)
          {
            goto LABEL_159;
          }

          goto LABEL_151;
        }

        if (v56 > 0x15)
        {
          goto LABEL_159;
        }

        if (((1 << v56) & 0x20239E) != 0)
        {
LABEL_151:
          if ((v79 & 1) == 0)
          {
            if (++v47 == v76)
            {
              goto LABEL_164;
            }

            goto LABEL_159;
          }

          goto LABEL_152;
        }

        if (v56 != 18)
        {
          goto LABEL_159;
        }

        if (v44 != 9)
        {
          if (v79)
          {
            v23 = xmlXPathNodeSetAddUnique(v83, v46);
            if ((v23 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }

            goto LABEL_126;
          }

          if (++v47 == v76)
          {
LABEL_164:
            if (xmlXPathNodeSetAddUnique(v83, v46) < 0)
            {
              goto LABEL_165;
            }

            goto LABEL_166;
          }

LABEL_128:
          v72 = 1;
          goto LABEL_159;
        }

LABEL_123:
        if (v79)
        {
          goto LABEL_124;
        }

        if (++v47 != v76)
        {
          goto LABEL_159;
        }

LABEL_182:
        if (xmlXPathNodeSetAddNs(v83, *(v82 + 8), v46) < 0)
        {
LABEL_165:
          v5->error = 15;
        }

LABEL_166:
        v30 = v70;
LABEL_175:
        v23 = val;
        if (val)
        {
          v23 = v80(val, &v83->nodeNr);
          val = v23;
        }

        else
        {
          val = v83;
          v83 = 0;
        }

        v40 = v49;
        v41 = v83;
        if (!v71)
        {
LABEL_180:
          if (v40 < *v30)
          {
            continue;
          }
        }

        break;
      }

      if (*(v68 + 4))
      {
        v61 = v68[5];
        if (v61)
        {
          v62 = v5->value;
          v62->BOOLval = 1;
          v62->user = v61;
          v68[5] = 0;
          *(v68 + 4) = 0;
        }
      }

      xmlXPathReleaseObject(v82, v68);
      v63 = val;
      if (!val)
      {
        if (!v41 || (v63 = v41, v41->nodeNr))
        {
          v63 = xmlXPathNodeSetCreate(0);
        }
      }

      if (v41 && v41 != v63)
      {
        xmlXPathFreeNodeSet(v41);
      }

      v64 = xmlXPathCacheWrapNodeSet(v82, v63);
      valuePush(v5, v64);
      *(v82 + 8) = node;
      v65 = *(v82 + 200);
      if (v65)
      {
        free(v65);
        *(v82 + 200) = 0;
      }

      return v20;
    default:
      xmlXPathReleaseObject(context, v22);
      return 0;
  }
}

int xmlXPathNodeSetAddUnique(xmlNodeSetPtr cur, xmlNodePtr val)
{
  result = -1;
  if (cur)
  {
    v4 = val;
    if (val)
    {
      if (cur->nodeNr >= cur->nodeMax && (xmlXPathNodeSetGrow(cur) & 0x80000000) != 0)
      {
        return -1;
      }

      if (v4->type == XML_NAMESPACE_DECL && (v4 = xmlXPathNodeSetDupNs(v4->_private, v4)) == 0)
      {
        return -1;
      }

      else
      {
        result = 0;
        nodeTab = cur->nodeTab;
        nodeNr = cur->nodeNr;
        cur->nodeNr = nodeNr + 1;
        nodeTab[nodeNr] = v4;
      }
    }
  }

  return result;
}

xmlNodePtr xmlXPathNextDescendantOrSelf(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    v2 = ctxt;
    children = ctxt->children;
    if (!children)
    {
      return 0;
    }

    ctxt = *&children->type;
    if (cur && ctxt)
    {
      if ((ctxt->type | 0x10) != 0x12)
      {
        return xmlXPathNextDescendant(v2, cur);
      }

      return 0;
    }
  }

  return ctxt;
}

uint64_t xmlXPathNodeSetGrow(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2 < 1)
  {
    v3 = 10;
  }

  else
  {
    if (v2 >= 0x989680)
    {
      return 0xFFFFFFFFLL;
    }

    if (10000000 - ((v2 + 1) >> 1) >= v2)
    {
      v3 = v2 + ((v2 + 1) >> 1);
    }

    else
    {
      v3 = 10000000;
    }
  }

  v4 = malloc_type_realloc(*(a1 + 8), 8 * v3, 0x2004093837F09uLL);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *(a1 + 4) = v3;
    *(a1 + 8) = v5;
    return result;
  }

  return 0xFFFFFFFFLL;
}

xmlNodePtr xmlXPathNextDescendant(xmlXPathParserContextPtr ctxt, xmlNodePtr cur)
{
  if (!ctxt)
  {
    return 0;
  }

  context = ctxt->context;
  if (!context)
  {
    return 0;
  }

  if (!cur)
  {
    node = context->node;
    if (node && (node->type | 0x10) != 0x12)
    {
      return node->children;
    }

    return 0;
  }

  if (cur->type == XML_NAMESPACE_DECL)
  {
    return 0;
  }

  children = cur->children;
  if (!children || (v4 = children->type, v4 == XML_ENTITY_DECL) || (cur = cur->children, v4 == XML_DTD_NODE))
  {
    v5 = context->node;
    if (cur != v5)
    {
      while (1)
      {
        next = cur->next;
        if (!next)
        {
          break;
        }

        cur = cur->next;
        type = next->type;
        if (type != XML_ENTITY_DECL && type != XML_DTD_NODE)
        {
          return cur;
        }
      }

      v11 = cur;
      while (1)
      {
        v11 = v11->parent;
        if (!v11 || v11 == v5)
        {
          break;
        }

        cur = v11->next;
        if (cur)
        {
          return cur;
        }
      }
    }

    return 0;
  }

  return cur;
}

double xmlXPathReleaseObject(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return result;
  }

  if (a1)
  {
    v3 = *(a1 + 344);
    if (v3)
    {
      v4 = *a2;
      if (*a2 > 3)
      {
        if (v4 == 4)
        {
          v11 = a2[4];
          if (v11)
          {
            free(v11);
          }

          v5 = *(v3 + 8);
          if (!v5)
          {
            v5 = xmlPointerListCreate();
            *(v3 + 8) = v5;
            if (!v5)
            {
              goto LABEL_52;
            }

            goto LABEL_43;
          }

          v6 = *(v5 + 2);
          v7 = *(v3 + 44);
          goto LABEL_27;
        }

        if (v4 == 7)
        {
          v12 = a2[5];
          if (v12)
          {
            xmlXPtrFreeLocationSet(v12);
          }

          goto LABEL_52;
        }

        if (v4 != 9)
        {
          goto LABEL_52;
        }
      }

      else if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = *(v3 + 16);
          if (!v5)
          {
            v5 = xmlPointerListCreate();
            *(v3 + 16) = v5;
            if (!v5)
            {
              goto LABEL_52;
            }

            goto LABEL_43;
          }

          v6 = *(v5 + 2);
          v7 = *(v3 + 48);
        }

        else
        {
          if (v4 != 3)
          {
            goto LABEL_52;
          }

          v5 = *(v3 + 24);
          if (!v5)
          {
            v5 = xmlPointerListCreate();
            *(v3 + 24) = v5;
            if (!v5)
            {
              goto LABEL_52;
            }

            goto LABEL_43;
          }

          v6 = *(v5 + 2);
          v7 = *(v3 + 52);
        }

LABEL_27:
        if (v6 < v7)
        {
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v9 = a2[1];
      if (!v9)
      {
LABEL_28:
        v5 = *(v3 + 32);
        if (v5)
        {
          if (*(v5 + 2) >= *(v3 + 56))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v5 = xmlPointerListCreate();
          *(v3 + 32) = v5;
          if (!v5)
          {
            goto LABEL_52;
          }
        }

LABEL_43:
        if (xmlPointerListAddSize(v5, a2, 0) != -1)
        {
          v13 = a2[1];
          if (v13)
          {
            v14 = *v13;
            if (*v13 < 2)
            {
              if (v14 == 1)
              {
                v18 = **(v13 + 8);
                if (v18)
                {
                  if (*(v18 + 8) == 18)
                  {
                    xmlXPathNodeSetFreeNs(v18);
                  }
                }
              }
            }

            else
            {
              v15 = 0;
              do
              {
                v16 = *(*(v13 + 8) + 8 * v15);
                if (v16 && *(v16 + 8) == 18)
                {
                  xmlXPathNodeSetFreeNs(v16);
                  v14 = *v13;
                }

                ++v15;
              }

              while (v15 < v14);
            }

            *v13 = 0;
            result = 0.0;
            a2[8] = 0;
            *(a2 + 2) = 0u;
            *(a2 + 3) = 0u;
            *a2 = 0u;
            *(a2 + 1) = 0u;
            a2[1] = v13;
          }

          else
          {
            a2[8] = 0;
            result = 0.0;
            *(a2 + 2) = 0u;
            *(a2 + 3) = 0u;
            *a2 = 0u;
            *(a2 + 1) = 0u;
          }

          return result;
        }

LABEL_52:
        v17 = a2[1];
        if (v17)
        {
          xmlXPathFreeNodeSet(v17);
        }

        free(a2);
        return result;
      }

      if (v9->nodeMax <= 40)
      {
        v10 = *v3;
        if (*v3)
        {
          if (*(v10 + 2) >= *(v3 + 40))
          {
            goto LABEL_20;
          }
        }

        else
        {
          v10 = xmlPointerListCreate();
          *v3 = v10;
          if (!v10)
          {
            goto LABEL_52;
          }
        }

        v5 = v10;
        goto LABEL_43;
      }

LABEL_20:
      xmlXPathFreeNodeSet(v9);
      a2[1] = 0;
      goto LABEL_28;
    }
  }

  xmlXPathFreeObject(a2);
  return result;
}

void xmlXPathFreeObject(xmlXPathObjectPtr obj)
{
  if (!obj)
  {
    return;
  }

  type = obj->type;
  if (obj->type <= XPATH_RANGE)
  {
    if (type != XPATH_NODESET)
    {
      if (type == XPATH_STRING)
      {
        stringval = obj->stringval;
        if (stringval)
        {
          free(stringval);
        }
      }

      goto LABEL_14;
    }

LABEL_10:
    nodesetval = obj->nodesetval;
    if (nodesetval)
    {
      xmlXPathFreeNodeSet(nodesetval);
    }

    goto LABEL_14;
  }

  if (type == XPATH_LOCATIONSET)
  {
    user = obj->user;
    if (user)
    {
      xmlXPtrFreeLocationSet(user);
    }

    goto LABEL_14;
  }

  if (type == XPATH_XSLT_TREE)
  {
    goto LABEL_10;
  }

LABEL_14:

  free(obj);
}

void xmlXPathFreeNodeSet(xmlNodeSetPtr obj)
{
  if (obj)
  {
    nodeTab = obj->nodeTab;
    if (nodeTab)
    {
      nodeNr = obj->nodeNr;
      if (obj->nodeNr >= 1)
      {
        v4 = 0;
        do
        {
          v5 = obj->nodeTab[v4];
          if (v5 && v5->type == XML_NAMESPACE_DECL)
          {
            xmlXPathNodeSetFreeNs(v5);
            nodeNr = obj->nodeNr;
          }

          ++v4;
        }

        while (v4 < nodeNr);
        nodeTab = obj->nodeTab;
      }

      free(nodeTab);
    }

    free(obj);
  }
}

xmlXPathObjectPtr xmlXPathCacheWrapNodeSet(uint64_t a1, xmlNodeSetPtr val)
{
  if (!a1)
  {
    return xmlXPathWrapNodeSet(val);
  }

  v2 = *(a1 + 344);
  if (!v2)
  {
    return xmlXPathWrapNodeSet(val);
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    return xmlXPathWrapNodeSet(val);
  }

  v4 = *(v3 + 2);
  if (!v4)
  {
    return xmlXPathWrapNodeSet(val);
  }

  v5 = *v3;
  v6 = v4 - 1;
  *(v3 + 2) = v6;
  result = *(v5 + 8 * v6);
  result->type = XPATH_NODESET;
  result->nodesetval = val;
  return result;
}

xmlXPathObjectPtr xmlXPathWrapNodeSet(xmlNodeSetPtr val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0u;
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *v2 = 1;
    *(v2 + 1) = val;
  }

  else
  {
    xmlXPathErrMemory(0, "creating node set object\n");
  }

  return v3;
}

void *__cdecl xmlHashLookup3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3)
{
  result = 0;
  if (table && name)
  {
    v9 = xmlHashComputeKey(table, name, name2, name3);
    v10 = *table + 48 * v9;
    if (*(v10 + 40))
    {
      if (*(table + 2))
      {
        v11 = *table + 48 * v9;
        while (*(v11 + 8) != name || *(v11 + 16) != name2 || *(v11 + 24) != name3)
        {
          v11 = *v11;
          if (!v11)
          {
            if (*table)
            {
              goto LABEL_11;
            }

            return 0;
          }
        }
      }

      else
      {
LABEL_11:
        while (!xmlStrEqual(*(v10 + 8), name) || !xmlStrEqual(*(v10 + 16), name2) || !xmlStrEqual(*(v10 + 24), name3))
        {
          v10 = *v10;
          if (!v10)
          {
            return 0;
          }
        }

        v11 = v10;
      }

      return *(v11 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const xmlChar *__cdecl xmlXPathNsLookup(xmlXPathContextPtr ctxt, const xmlChar *prefix)
{
  result = 0;
  if (ctxt && prefix)
  {
    if (xmlStrEqual(prefix, "xml"))
    {
      return "http://www.w3.org/XML/1998/namespace";
    }

    else
    {
      if (ctxt->namespaces)
      {
        nsNr = ctxt->nsNr;
        if (nsNr >= 1)
        {
          for (i = 0; i < nsNr; ++i)
          {
            v7 = ctxt->namespaces[i];
            if (v7)
            {
              if (xmlStrEqual(v7->prefix, prefix))
              {
                return ctxt->namespaces[i]->href;
              }

              nsNr = ctxt->nsNr;
            }
          }
        }
      }

      nsHash = ctxt->nsHash;

      return xmlHashLookup(nsHash, prefix);
    }
  }

  return result;
}

xmlNodePtr xmlXPathNextChildElement(xmlNodePtr result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  children = result->children;
  if (!children)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = *&children->type;
    if (v6)
    {
      result = 0;
      v7 = *(v6 + 8);
      if (v7 <= 0x15)
      {
        v8 = 1 << v7;
        if ((v8 & 0x862) != 0)
        {
          for (result = *(v6 + 24); result; result = result->next)
          {
            if (result->type == XML_ELEMENT_NODE)
            {
              break;
            }
          }
        }

        else if ((v8 & 0x202200) != 0)
        {
          return xmlDocGetRootElement(v6);
        }
      }

      return result;
    }

    return 0;
  }

  v3 = *(a2 + 8);
  if ((v3 - 3) >= 6 && v3 != 20 && v3 != 1)
  {
    return 0;
  }

  for (result = *(a2 + 48); result; result = result->next)
  {
    if (result->type == XML_ELEMENT_NODE)
    {
      break;
    }
  }

  return result;
}

xmlNodePtr xmlDocGetRootElement(xmlNodePtr doc)
{
  if (doc)
  {
    for (doc = doc->children; doc; doc = doc->next)
    {
      if (doc->type == XML_ELEMENT_NODE)
      {
        break;
      }
    }
  }

  return doc;
}

void xmlXPathFreeParserContext(xmlXPathParserContextPtr ctxt)
{
  valueTab = ctxt->valueTab;
  if (valueTab)
  {
    if (ctxt->valueNr >= 1)
    {
      v3 = 0;
      do
      {
        context = ctxt->context;
        v5 = ctxt->valueTab;
        if (context)
        {
          xmlXPathReleaseObject(context, v5[v3]);
        }

        else
        {
          xmlXPathFreeObject(v5[v3]);
        }

        ++v3;
      }

      while (v3 < ctxt->valueNr);
      valueTab = ctxt->valueTab;
    }

    free(valueTab);
  }

  comp = ctxt->comp;
  if (comp)
  {
    if (*(comp + 5))
    {
      xmlFreePatternList(*(comp + 5));
      comp = ctxt->comp;
      *(comp + 5) = 0;
    }

    xmlXPathFreeCompExpr(comp);
  }

  free(ctxt);
}

void xmlXPathFreeCompExpr(xmlXPathCompExprPtr comp)
{
  if (comp)
  {
    v2 = *(comp + 4);
    v3 = *comp;
    if (v2)
    {
      if (v3 >= 1)
      {
        v4 = 0;
        for (i = 0; i < v3; ++i)
        {
          v6 = *(comp + 1);
          v7 = *(v6 + v4 + 24);
          if (v7 && *(v6 + v4) == 11)
          {
            xmlXPathFreeObject(v7);
            v3 = *comp;
          }

          v4 += 56;
        }

        v2 = *(comp + 4);
      }

      xmlDictFree(v2);
    }

    else if (v3 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(comp + 1);
        v11 = v10 + v8;
        v12 = *(v10 + v8 + 24);
        if (v12)
        {
          if (*(v10 + v8) == 11)
          {
            xmlXPathFreeObject(v12);
          }

          else
          {
            free(v12);
          }
        }

        v13 = *(v11 + 32);
        if (v13)
        {
          free(v13);
        }

        ++v9;
        v8 += 56;
      }

      while (v9 < *comp);
    }

    v14 = *(comp + 1);
    if (v14)
    {
      free(v14);
    }

    v15 = *(comp + 5);
    if (v15)
    {
      xmlFreePatternList(v15);
    }

    v16 = *(comp + 3);
    if (v16)
    {
      free(v16);
    }

    free(comp);
  }
}

void xmlHashFree(xmlHashTablePtr table, xmlHashDeallocator f)
{
  if (table)
  {
    v3 = *table;
    if (v3)
    {
      v4 = *(table + 2);
      v5 = *(table + 3);
      if (v4 >= 1 && v5 >= 1)
      {
        v8 = 0;
        do
        {
          v9 = (*table + 48 * v8);
          if (v9[10])
          {
            v10 = *table == 0;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            v11 = 0;
            do
            {
              v12 = *v9;
              if (f)
              {
                v13 = *(v9 + 4);
                if (v13)
                {
                  (f)(v13, *(v9 + 1));
                }
              }

              if (!*(table + 2))
              {
                v14 = *(v9 + 1);
                if (v14)
                {
                  free(v14);
                }

                v15 = *(v9 + 2);
                if (v15)
                {
                  free(v15);
                }

                v16 = *(v9 + 3);
                if (v16)
                {
                  free(v16);
                }
              }

              *(v9 + 4) = 0;
              if (v11)
              {
                free(v9);
              }

              --v5;
              v11 = 1;
              v9 = v12;
            }

            while (v12);
            v4 = *(table + 2);
          }

          ++v8;
        }

        while (v8 < v4 && v5 > 0);
        v3 = *table;
      }

      free(v3);
    }

    v17 = *(table + 2);
    if (v17)
    {
      xmlDictFree(v17);
    }

    free(table);
  }
}

void xmlXPathFreeContext(xmlXPathContextPtr ctxt)
{
  if (ctxt)
  {
    cache = ctxt->cache;
    if (cache)
    {
      xmlXPathFreeCache(cache);
    }

    xmlHashFree(ctxt->nsHash, xmlHashDefaultDeallocator);
    ctxt->nsHash = 0;
    xmlHashFree(ctxt->funcHash, 0);
    ctxt->funcHash = 0;
    xmlHashFree(ctxt->varHash, xmlXPathFreeObjectEntry);
    ctxt->varHash = 0;
    xmlResetError(&ctxt->lastError);

    free(ctxt);
  }
}

void xmlResetError(xmlErrorPtr err)
{
  if (err && err->code)
  {
    message = err->message;
    if (message)
    {
      free(message);
    }

    file = err->file;
    if (file)
    {
      free(file);
    }

    str1 = err->str1;
    if (str1)
    {
      free(str1);
    }

    str2 = err->str2;
    if (str2)
    {
      free(str2);
    }

    str3 = err->str3;
    if (str3)
    {
      free(str3);
    }

    err->node = 0;
    *&err->str2 = 0u;
    *&err->int1 = 0u;
    *&err->level = 0u;
    *&err->line = 0u;
    *&err->domain = 0u;
    err->code = 0;
  }
}

xmlXPathObjectPtr xmlXPathCacheNewString(uint64_t a1, xmlChar *val)
{
  if (a1)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 2);
        if (v4)
        {
          v5 = *v3;
          v6 = v4 - 1;
          *(v3 + 2) = v6;
          v7 = *(v5 + 8 * v6);
LABEL_9:
          *v7 = 4;
          if (val)
          {
            v12 = val;
          }

          else
          {
            v12 = "";
          }

          *(v7 + 32) = xmlStrdup(v12);
          return v7;
        }
      }

      v8 = *(v2 + 32);
      if (v8)
      {
        v9 = *(v8 + 2);
        if (v9)
        {
          v10 = *v8;
          v11 = v9 - 1;
          *(v8 + 2) = v11;
          v7 = *(v10 + 8 * v11);
          goto LABEL_9;
        }
      }
    }
  }

  return xmlXPathNewString(val);
}

xmlXPathObjectPtr xmlXPathNewString(const xmlChar *val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 4;
    if (val)
    {
      v4 = val;
    }

    else
    {
      v4 = "";
    }

    v3->stringval = xmlStrdup(v4);
  }

  else
  {
    xmlXPathErrMemory(0, "creating string object\n");
  }

  return v3;
}

uint64_t xmlXPathCurrentChar(xmlXPathParserContext *a1, _DWORD *a2)
{
  cur = a1->cur;
  if ((*a1->cur & 0x80000000) == 0)
  {
    *a2 = 1;
    return *cur;
  }

  v4 = cur + 1;
  if ((cur[1] & 0xC0) != 0x80)
  {
    goto LABEL_10;
  }

  v5 = *a1->cur;
  if ((~v5 & 0xE0) != 0)
  {
    *a2 = 2;
    v10 = (*cur & 0x1F) << 6;
    goto LABEL_16;
  }

  v4 = cur + 2;
  if ((cur[2] & 0xC0) != 0x80)
  {
    goto LABEL_10;
  }

  if ((~v5 & 0xF0) != 0)
  {
    *a2 = 3;
    v6 = (*cur & 0xF) << 12;
    v7 = cur[1];
    goto LABEL_15;
  }

  if ((v5 & 0xF8) != 0xF0 || (v4 = cur + 3, (cur[3] & 0xC0) != 0x80))
  {
LABEL_10:
    *a2 = 0;
    v8 = 20;
LABEL_11:
    xmlXPathErr(a1, v8);
    return 0;
  }

  *a2 = 4;
  v6 = ((*cur & 7) << 18) | ((cur[1] & 0x3F) << 12);
  v7 = cur[2];
LABEL_15:
  v10 = v6 & 0xFFFFF03F | ((v7 & 0x3F) << 6);
LABEL_16:
  v3 = v10 | *v4 & 0x3F;
  if (v3 > 0xFF)
  {
    if (v3 >> 11 < 0x1B || (v3 - 57344) >> 1 < 0xFFF || (v3 - 0x10000) < 0x100000)
    {
      return v3;
    }

    goto LABEL_27;
  }

  if (v3 <= 0x1F && (v3 > 0xD || ((1 << v3) & 0x2600) == 0))
  {
LABEL_27:
    v8 = 21;
    goto LABEL_11;
  }

  return v3;
}

const xmlChar *__cdecl xmlStrstr(const xmlChar *str, const xmlChar *val)
{
  v2 = 0;
  if (str && val)
  {
    if (!*val)
    {
      return str;
    }

    v3 = 0;
    do
    {
      v4 = &val[v3++];
    }

    while (v4[1]);
    if (!(v3 >> 31) && v3)
    {
      v5 = *str;
      if (*str)
      {
        while (1)
        {
          if (v5 == *val)
          {
            if (v3 < 1 || str == val)
            {
              return str;
            }

            v6 = 0;
            while (1)
            {
              v7 = str[v6];
              if (v7 != val[v6])
              {
                break;
              }

              if (v3 - 1 != v6)
              {
                ++v6;
                if (v7)
                {
                  continue;
                }
              }

              return str;
            }
          }

          v2 = 0;
          v8 = *++str;
          v5 = v8;
          if (!v8)
          {
            return v2;
          }
        }
      }

      return 0;
    }

    else
    {
      return str;
    }
  }

  return v2;
}

int xmlXPathIsNodeType(const xmlChar *name)
{
  if (name)
  {
    v1 = name;
    LODWORD(name) = xmlStrEqual(name, "node") || xmlStrEqual(v1, "text") || xmlStrEqual(v1, "comment") || xmlStrEqual(v1, "processing-instruction") != 0;
  }

  return name;
}

xmlChar *xmlXPathParseNameComplex(xmlXPathParserContext *a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  *cur = 0u;
  v30 = 0u;
  len = 0;
  v4 = xmlXPathCurrentChar(a1, &len);
  v5 = v4;
  if (v4 - 32 <= 0x3D && ((1 << (v4 - 32)) & 0x2800000140008401) != 0)
  {
    return 0;
  }

  if (v4 > 0xFF)
  {
    if (xmlCharInRange(v4, &xmlIsBaseCharGroup))
    {
      v9 = 1;
    }

    else
    {
      v9 = v5 == 12295;
    }

    if (!v9 && v5 - 40870 <= 0xFFFFAE59 && v5 - 12330 < 0xFFFFFFF7)
    {
      return 0;
    }
  }

  else if ((v4 & 0xDF) - 65 >= 0x1A && v4 - 192 >= 0x17 && v4 != 95 && v4 <= 0xF7 && v4 - 216 >= 0x1F)
  {
    v6 = 0;
    if (!a2 || v4 != 58)
    {
      return v6;
    }
  }

  v12 = 0;
  do
  {
    if (v5 <= 0x3E && ((1 << v5) & 0x4000800100000000) != 0)
    {
LABEL_64:
      if (!v12)
      {
        return 0;
      }

      return xmlStrndup(cur, v12);
    }

    if (v5 > 0xFF)
    {
      if (xmlCharInRange(v5, &xmlIsBaseCharGroup))
      {
        v13 = 1;
      }

      else
      {
        v13 = v5 == 12295;
      }

      v15 = !v13 && v5 - 19968 >= 0x51A6 && v5 - 12321 >= 9;
      if (!v15 || xmlCharInRange(v5, &xmlIsDigitGroup))
      {
        goto LABEL_52;
      }
    }

    else if ((v5 & 0xDF) - 65 < 0x1A || v5 - 192 < 0x17 || v5 > 0xF7 || v5 - 216 < 0x1F || v5 - 48 < 0xA)
    {
      goto LABEL_52;
    }

    if ((v5 - 45 > 0x32 || ((1 << (v5 - 45)) & 0x4000000000003) == 0) && (!a2 || v5 != 58))
    {
      if (v5 >= 0x100)
      {
        if (xmlCharInRange(v5, &xmlIsCombiningGroup))
        {
          goto LABEL_52;
        }

        v17 = xmlCharInRange(v5, &xmlIsExtenderGroup);
      }

      else
      {
        v17 = v5 == 183;
      }

      if (!v17)
      {
        goto LABEL_64;
      }
    }

LABEL_52:
    v16 = len;
    if (len == 1)
    {
      cur[v12++] = v5;
    }

    else
    {
      v12 += xmlCopyChar(len, &cur[v12], v5);
    }

    a1->cur += v16;
    v5 = xmlXPathCurrentChar(a1, &len);
  }

  while (v12 < 100);
  if (v12 < 0xC351)
  {
    v20 = 2 * v12;
    v21 = malloc_type_malloc((2 * v12), 0x100004077774924uLL);
    v6 = v21;
    if (!v21)
    {
      xmlXPathErr(a1, 15);
      return v6;
    }

    memcpy(v21, cur, v12);
    while (1)
    {
      if (v5 > 0xFF)
      {
        if (xmlCharInRange(v5, &xmlIsBaseCharGroup))
        {
          v23 = 1;
        }

        else
        {
          v23 = v5 == 12295;
        }

        v25 = !v23 && v5 - 19968 >= 0x51A6 && v5 - 12321 >= 9;
        if (!v25 || xmlCharInRange(v5, &xmlIsDigitGroup))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v22 = (v5 & 0xDF) - 65 >= 0x1A && v5 - 192 >= 0x17;
        if (!v22 || v5 > 0xF7 || v5 - 216 < 0x1F || v5 - 48 < 0xA)
        {
          goto LABEL_94;
        }
      }

      if ((v5 - 45 > 0x32 || ((1 << (v5 - 45)) & 0x4000000000003) == 0) && (!a2 || v5 != 58))
      {
        if (v5 >= 0x100)
        {
          if (xmlCharInRange(v5, &xmlIsCombiningGroup))
          {
            goto LABEL_94;
          }

          v27 = xmlCharInRange(v5, &xmlIsExtenderGroup);
        }

        else
        {
          v27 = v5 == 183;
        }

        if (!v27)
        {
          v6[v12] = 0;
          return v6;
        }
      }

LABEL_94:
      if (v12 + 10 <= v20)
      {
        v26 = v6;
      }

      else
      {
        if (v20 < 1)
        {
          v20 = 1;
        }

        else
        {
          if (v20 >> 4 > 0xC34)
          {
            free(v6);
            a1->error = 15;
            xmlXPathErrMemory(a1->context, 0);
            return 0;
          }

          if (50000 - ((v20 + 1) >> 1) >= v20)
          {
            v20 += (v20 + 1) >> 1;
          }

          else
          {
            v20 = 50000;
          }
        }

        v26 = malloc_type_realloc(v6, v20, 0x91C1516DuLL);
        if (!v26)
        {
          free(v6);
          v18 = a1;
          v19 = 15;
          goto LABEL_116;
        }
      }

      if (len == 1)
      {
        v26[v12++] = v5;
      }

      else
      {
        v12 += xmlCopyChar(len, &v26[v12], v5);
      }

      a1->cur += len;
      v5 = xmlXPathCurrentChar(a1, &len);
      v6 = v26;
    }
  }

  v18 = a1;
  v19 = 7;
LABEL_116:
  xmlXPathErr(v18, v19);
  return 0;
}