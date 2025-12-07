void CG::DisplayListEntryLines::~DisplayListEntryLines(void **this)
{
  *this = &unk_1EF23ABB0;
  free(this[16]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23ABB0;
  free(this[16]);
}

BOOL DisplayListXMLParserEntryRects::parseChildElements(DisplayListXMLParserEntryRects *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v7 = malloc_type_malloc(32 * *(this + 2), 0x1000040E0EAB150uLL);
  children = a2->children;
  if (!children)
  {
    goto LABEL_16;
  }

  while (xmlStrcmp(children->name, "rects"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_16;
    }
  }

  v9 = children->children;
  if (!v9)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  while (v9->type != XML_ELEMENT_NODE)
  {
LABEL_14:
    v9 = v9->next;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (!xmlStrcmp(v9->name, "rect"))
  {
    String = xmlNodeListGetString(v9->doc, v9->children, 1);
    if (String)
    {
      v12 = String;
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      if (sscanf(String, "{%lg, %lg}, {%lg, %lg}", &v22, &v21, &v20, &v19) == 4)
      {
        v13 = v21;
        v15 = v19;
        v14 = v20;
        p_x = &v7[v10++].origin.x;
        *p_x = v22;
        p_x[1] = v13;
        p_x[2] = v14;
        p_x[3] = v15;
      }

      free(v12);
    }

    goto LABEL_14;
  }

  CGPostError("Unexpected child node name. Expected rect, got %s", v9->name);
LABEL_17:
  v17 = *(this + 2);
  if (v10 == v17)
  {
    CG::DisplayListEntryRects::setRects(v6, v7, v10);
  }

  else
  {
    CGPostError("Failed to parse expected number of rects. Expected %zu, got %zu", v17, v10);
  }

  free(v7);
  return v10 == v17;
}

uint64_t CG::DisplayListEntryRects::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v6 = *(a1 + 144);
  if (v6 != *(a2 + 144) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  v7 = *(a1 + 136);
  v8 = *(a2 + 136);
  if (v7)
  {
    if (!v8 || memcmp(v7, v8, 32 * v6))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

uint64_t DisplayListXMLParserEntryPath::parseChildElements(DisplayListXMLParserEntryPath *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v4)
  {
    __cxa_bad_cast();
  }

  children = a2->children;
  if (children)
  {
    v6 = v4;
    while (xmlStrcmp(children->name, "cgpath"))
    {
      children = children->next;
      if (!children)
      {
        return 1;
      }
    }

    v8 = CG::DisplayListXMLHelper::parseCGPathFromNode(children, v7);
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    v10 = v6[11];
    v6[11] = v9;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return 1;
}

uint64_t CG::DisplayListEntryPath::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 80) != *(a2 + 80) || *(a1 + 84) != *(a2 + 84) || *(a1 + 96) != *(a2 + 96) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 104), *(a2 + 104)), vceqq_f64(*(a1 + 120), *(a2 + 120))))) & 1) == 0 || *(a1 + 136) != *(a2 + 136))
  {
    return 0;
  }

  v6 = *(a1 + 88);
  v7 = *(a2 + 88);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || !CGPathEqualToPath(v6, v7))
  {
    return 0;
  }

LABEL_11:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

BOOL DisplayListXMLParserEntryGlyphs::parseChildElements(DisplayListXMLParserEntryGlyphs *this, _xmlNode *a2, CG::DisplayListEntry *lpsrc)
{
  if (!v5)
  {
    __cxa_bad_cast();
  }

  v6 = v5;
  v7 = malloc_type_malloc(16 * *(this + 2), 0x1000040451B5BE8uLL);
  v8 = malloc_type_malloc(2 * *(this + 2), 0x1000040BDFB0063uLL);
  children = a2->children;
  if (!children)
  {
    goto LABEL_16;
  }

  while (xmlStrcmp(children->name, "glyphs"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_16;
    }
  }

  v10 = children->children;
  if (!v10)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = 0;
  while (v10->type != XML_ELEMENT_NODE)
  {
LABEL_14:
    v10 = v10->next;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  if (!xmlStrcmp(v10->name, "glyph"))
  {
    CG::DisplayListXMLHelper::parseAttributesFromNode(v16, v10);
    v14 = 0;
    if (CG::DisplayListXMLHelper::parsePointFromAttributes(v16, "position", &v15) && CG::DisplayListXMLHelper::parseFormatFromAttributes(v16, "glyph", "%hd", &v14) == 1)
    {
      v7[v11] = v15;
      v8[v11++] = v14;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v17);
    goto LABEL_14;
  }

  CGPostError("Unexpected child node name. Expected glyph, got %s", v10->name);
LABEL_17:
  v12 = *(this + 2);
  if (v11 == v12)
  {
    CG::DisplayListEntryGlyphs::setGlyphsAndPositions(v6, v8, v7, v11);
  }

  else
  {
    CGPostError("Failed to parse expected number of glyphs. Expected %zu, got %zu", v12, v11);
  }

  free(v8);
  free(v7);
  return v11 == v12;
}

uint64_t CG::DisplayListEntryGlyphs::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 144), *(a2 + 144)), vceqq_f64(*(a1 + 160), *(a2 + 160))))) & 1) == 0 || *(a1 + 176) != *(a2 + 176) || *(a1 + 184) != *(a2 + 184) || *(a1 + 192) != *(a2 + 192) || *(a1 + 200) != *(a2 + 200) || *(a1 + 216) != *(a2 + 216) || *(a1 + 220) != *(a2 + 220) || *(a1 + 224) != *(a2 + 224) || *(a1 + 248) != *(a2 + 248))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (v6)
  {
    if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 208);
  v9 = *(a2 + 208);
  if (v8)
  {
    if (!v9 || !(*(*v8 + 24))(v8, v9, a3))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 232);
  v11 = *(a2 + 232);
  if (v10)
  {
    if (!v11 || memcmp(v10, v11, 2 * *(a1 + 248)))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 240);
  v13 = *(a2 + 240);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v13 || memcmp(v12, v13, 16 * *(a1 + 248)))
  {
    return 0;
  }

LABEL_36:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

uint64_t CG::DisplayListEntryImage::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 88) != *(a2 + 88) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || *(a1 + 128) != *(a2 + 128) || *(a1 + 136) != *(a2 + 136) || *(a1 + 144) != *(a2 + 144) || *(a1 + 148) != *(a2 + 148))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7 || !(*(*v6 + 24))(v6, v7, a3))
  {
    return 0;
  }

LABEL_12:

  return CG::DisplayListEntry::_equal_to(a1, a2, a3);
}

uint64_t std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:fe200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t DisplayListXMLParserEntryStateDrawing::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc)
{
  __p[58] = *MEMORY[0x1E69E9840];
  if (lpsrc)
  {
  }

  else
  {
    v5 = 0;
  }

  v58 = 0;
  v59 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "clip", "%llu", &v59) == 1)
  {
    v6 = *(a1 + 8);
    v9 = *(v6 + 40);
    v7 = v6 + 40;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v7;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v59;
      v13 = v11 < v59;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != v7 && *(v10 + 32) <= v59)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
      }
    }

    else
    {
LABEL_13:
      v14 = 0;
    }

    v5[1] = v14;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "softMask", "%llu", &v59) == 1)
  {
    v15 = *(a1 + 8);
    v18 = *(v15 + 40);
    v16 = v15 + 40;
    v17 = v18;
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v16;
    do
    {
      v20 = *(v17 + 32);
      v12 = v20 >= v59;
      v21 = v20 < v59;
      if (v12)
      {
        v19 = v17;
      }

      v17 = *(v17 + 8 * v21);
    }

    while (v17);
    if (v19 != v16 && *(v19 + 32) <= v59)
    {
      v22 = *(v19 + 40);
      if (v22)
      {
      }
    }

    else
    {
LABEL_24:
      v22 = 0;
    }

    v5[2] = v22;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "style", "%llu", &v59) == 1)
  {
    v23 = *(a1 + 8);
    v26 = *(v23 + 40);
    v24 = v23 + 40;
    v25 = v26;
    if (!v26)
    {
      goto LABEL_35;
    }

    v27 = v24;
    do
    {
      v28 = *(v25 + 32);
      v12 = v28 >= v59;
      v29 = v28 < v59;
      if (v12)
      {
        v27 = v25;
      }

      v25 = *(v25 + 8 * v29);
    }

    while (v25);
    if (v27 != v24 && *(v27 + 32) <= v59)
    {
      v30 = *(v27 + 40);
      if (v30)
      {
      }
    }

    else
    {
LABEL_35:
      v30 = 0;
    }

    v5[3] = v30;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "BG", "%llu", &v59) == 1)
  {
    v31 = *(a1 + 8);
    v34 = *(v31 + 40);
    v32 = v31 + 40;
    v33 = v34;
    if (!v34)
    {
      goto LABEL_46;
    }

    v35 = v32;
    do
    {
      v36 = *(v33 + 32);
      v12 = v36 >= v59;
      v37 = v36 < v59;
      if (v12)
      {
        v35 = v33;
      }

      v33 = *(v33 + 8 * v37);
    }

    while (v33);
    if (v35 != v32 && *(v35 + 32) <= v59)
    {
      v38 = *(v35 + 40);
      if (v38)
      {
      }
    }

    else
    {
LABEL_46:
      v38 = 0;
    }

    v5[4] = v38;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "UCR", "%llu", &v59) == 1)
  {
    v39 = *(a1 + 8);
    v42 = *(v39 + 40);
    v40 = v39 + 40;
    v41 = v42;
    if (!v42)
    {
      goto LABEL_57;
    }

    v43 = v40;
    do
    {
      v44 = *(v41 + 32);
      v12 = v44 >= v59;
      v45 = v44 < v59;
      if (v12)
      {
        v43 = v41;
      }

      v41 = *(v41 + 8 * v45);
    }

    while (v41);
    if (v43 != v40 && *(v43 + 32) <= v59)
    {
      v46 = *(v43 + 40);
      if (v46)
      {
      }
    }

    else
    {
LABEL_57:
      v46 = 0;
    }

    v5[5] = v46;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "flatness", "%lg", COERCE_DOUBLE(&v58)) == 1)
  {
    v5[6] = v58;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "alpha", "%lg", COERCE_DOUBLE(&v58)) == 1)
  {
    v5[7] = v58;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, "compositeOp");
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 != v47)
  {
    memcpy(__p, &off_1E6E33740, 0x1D0uLL);
    __key[1] = 0;
    v48 = (v47 + 56);
    if (*(v47 + 79) < 0)
    {
      v48 = *v48;
    }

    __key[0] = v48;
    v49 = bsearch_b(__key, __p, 0x1DuLL, 0x10uLL, &__block_literal_global_21379);
    if (v49)
    {
      *(v5 + 24) = v5[12] & 0xFFFFFFC0 | v49[2] & 0x3F;
    }
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "antialias", &v57))
  {
    if (v57)
    {
      v50 = 64;
    }

    else
    {
      v50 = 0;
    }

    *(v5 + 24) = v5[12] & 0xFFFFFFBF | v50;
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "alphaIsShape", &v57))
  {
    if (v57)
    {
      v51 = 128;
    }

    else
    {
      v51 = 0;
    }

    *(v5 + 24) = v5[12] & 0xFFFFFF7F | v51;
  }

  if (CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "intent", &v56))
  {
    *(v5 + 24) = v5[12] & 0xFFFFC0FF | ((v56 & 0x3F) << 8);
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "fillOverprint", &v57))
  {
    if (v57)
    {
      v52 = 0x4000;
    }

    else
    {
      v52 = 0;
    }

    *(v5 + 24) = v5[12] & 0xFFFFBFFF | v52;
  }

  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "strokeOverprint", &v57))
  {
    if (v57)
    {
      v53 = 0x8000;
    }

    else
    {
      v53 = 0;
    }

    *(v5 + 24) = v5[12] & 0xFFFF7FFF | v53;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "overprintMode", "%d", &v55) == 1)
  {
    *(v5 + 25) = v55;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStateFill::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v5 = 0;
  }

  v16 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "color", "%llu", &v16) == 1)
  {
    v6 = *(a1 + 8);
    v9 = *(v6 + 40);
    v7 = v6 + 40;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v7;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v16;
      v13 = v11 < v16;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != v7 && *(v10 + 32) <= v16)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
      }
    }

    else
    {
LABEL_13:
      v14 = 0;
    }

    v5[1] = v14;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStateStroke::parseAttributes(uint64_t a1, uint64_t a2, void *lpsrc)
{
  v43 = *MEMORY[0x1E69E9840];
  if (lpsrc)
  {
  }

  else
  {
    v5 = 0;
  }

  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "color", "%llu", &v36) == 1)
  {
    v6 = *(a1 + 8);
    v9 = *(v6 + 40);
    v7 = v6 + 40;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v7;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v36;
      v13 = v11 < v36;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != v7 && *(v10 + 32) <= v36)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
      }
    }

    else
    {
LABEL_13:
      v14 = 0;
    }

    v5[1] = v14;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "width", "%lg", COERCE_DOUBLE(&v35)) == 1)
  {
    v5[2] = v35;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "thresh", "%lg", COERCE_DOUBLE(&v35)) == 1)
  {
    v5[3] = v35;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "dash", "%llu", &v36) == 1)
  {
    v15 = *(a1 + 8);
    v18 = *(v15 + 40);
    v16 = v15 + 40;
    v17 = v18;
    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = v16;
    do
    {
      v20 = *(v17 + 32);
      v12 = v20 >= v36;
      v21 = v20 < v36;
      if (v12)
      {
        v19 = v17;
      }

      v17 = *(v17 + 8 * v21);
    }

    while (v17);
    if (v19 != v16 && *(v19 + 32) <= v36)
    {
      v22 = *(v19 + 40);
      if (v22)
      {
      }
    }

    else
    {
LABEL_28:
      v22 = 0;
    }

    v5[5] = v22;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "cap");
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 != v23)
  {
    __p = "butt";
    v38 = 0;
    v39 = "round";
    v40 = 1;
    v41 = "square";
    v42 = 2;
    v24 = (v23 + 56);
    if (*(v23 + 79) < 0)
    {
      v24 = *v24;
    }

    v25 = 0;
    v26 = &v38;
    v27 = 1;
    while (strcmp(v24, *(v26 - 1)))
    {
      v27 = v25 < 2;
      v26 += 2;
      if (++v25 == 3)
      {
        goto LABEL_41;
      }
    }

    if (v27)
    {
      *(v5 + 48) = *v26;
    }
  }

LABEL_41:
  std::string::basic_string[abi:fe200100]<0>(&__p, "join");
  v28 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 != v28)
  {
    __p = "miter";
    v38 = 0;
    v39 = "round";
    v40 = 1;
    v41 = "bevel";
    v42 = 2;
    v29 = (v28 + 56);
    if (*(v28 + 79) < 0)
    {
      v29 = *v29;
    }

    v30 = 0;
    v31 = &v38;
    v32 = 1;
    while (strcmp(v29, *(v31 - 1)))
    {
      v32 = v30 < 2;
      v31 += 2;
      if (++v30 == 3)
      {
        goto LABEL_52;
      }
    }

    if (v32)
    {
      *(v5 + 49) = *v31;
    }
  }

LABEL_52:
  if (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "adjust", &v34))
  {
    *(v5 + 50) = v34;
  }

  return 1;
}

uint64_t DisplayListXMLParserEntryStatePattern::parseAttributes(int a1, uint64_t a2, void *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v4 = 0;
  }

  v7 = 0;
  if (CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "baseCTM", v9))
  {
    v5 = v9[1];
    *(v4 + 8) = v9[0];
    *(v4 + 24) = v5;
    *(v4 + 40) = v9[2];
  }

  if (CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "phase", &v8))
  {
    *(v4 + 56) = v8;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "smoothness", "%lg", COERCE_DOUBLE(&v7)))
  {
    *(v4 + 9) = v7;
  }

  return 1;
}

BOOL CG::DisplayListEntryStatePattern::_equal_to(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v4 = std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8));
  if (!v4 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    v6 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
    if (v6 && *(a1 + 72) == *(a2 + 72))
    {
      return v4;
    }

    return 0;
  }

  return v5;
}

BOOL CG::DisplayListEntryStateStroke::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48);
  if (!v6 || *(a1 + 50) != *(a2 + 50))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v7)
  {
    if (!v8 || !(*(*v7 + 24))(v7, v8, a3))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v10 || !(*(*v9 + 24))(v9, v10, a3))
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(*a1 - 8) + 8);
  v12 = *(*(*a2 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v11, v12);
}

BOOL CG::DisplayListEntryStateFill::_equal_to(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *a1;
  v7 = *a2;
  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v9 || !(*(*v8 + 24))(v8, v9, a3))
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
LABEL_9:
  v11 = *(*(v6 - 8) + 8);
  v12 = *(*(v7 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v11, v12);
}

BOOL CG::DisplayListEntryStateDrawing::_equal_to(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*a1 - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v6 = *(a1 + 96);
  v7 = *(a2 + 96);
  if (!CGRectEqualToRect(*(a1 + 64), *(a2 + 64)) || ((v6 ^ v7) & 0x3F) != 0 || ((v6 ^ v7) & 0x40) != 0 || ((v7 & 0x80) == 0) == (v6 & 0x80) >> 7 || ((v6 ^ v7) & 0x3F00) != 0 || ((v6 ^ v7) & 0x4000) != 0 || ((v6 ^ v7) & 0x8000) != 0 || *(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104) || *(a1 + 108) != *(a2 + 108))
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10 || !(*(*v9 + 24))(v9, v10, a3))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12 || !(*(*v11 + 24))(v11, v12, a3))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14 || !(*(*v13 + 24))(v13, v14, a3))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  if (v15)
  {
    if (!v16 || !(*(*v15 + 24))(v15, v16, a3))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 40);
  v18 = *(a2 + 40);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (!v18 || *(a2 + 24) && !(*(*v17 + 24))(v17))
  {
    return 0;
  }

LABEL_42:
  v19 = *(a1 + 112);
  v20 = *(a2 + 112);
  if (v19 | v20 && (!v19 || !v20 || !CFEqual(v19, v20)))
  {
    return 0;
  }

  v21 = *(*(*a1 - 8) + 8);
  v22 = *(*(*a2 - 8) + 8);

  return std::type_info::operator==[abi:fe200100](v21, v22);
}

uint64_t **std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t ***a3)
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
      v5 = v3[4];
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

void *std::__list_imp<unsigned long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::tuple<CG::DisplayListResource *,_xmlNode *,std::map<std::string,std::string>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[8]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL DisplayListXMLParserResourceClip::parseAttributes(uint64_t a1, uint64_t a2)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (result)
  {
    if (CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bbox", a1 + 24))
    {
      return 1;
    }

    else
    {
      CGPostError("%s: Failed to parse attribute bbox", "virtual BOOL DisplayListXMLParserResourceClip::parseAttributes(const DLXMLAttributes &)");
      return 0;
    }
  }

  return result;
}

uint64_t DisplayListXMLParserResourceColor::parseAttributes(uint64_t a1, uint64_t a2)
{
  components[5] = *MEMORY[0x1E69E9840];
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v35 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", &v35) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v9 = *(v6 + 40);
  v7 = v6 + 40;
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = v7;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= v35;
    v13 = v11 < v35;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 == v7)
  {
    return 0;
  }

  if (*(v10 + 32) > v35)
  {
    return 0;
  }

  v14 = *(v10 + 40);
  if (!v14)
  {
    return 0;
  }

  if (!v15)
  {
    CGPostError("%s: colorSpace resource is of an unexpected class");
    return 0;
  }

  *(v5 + 3) = v15;
  v16 = v15[2];
  if (!v16)
  {
    CGPostError("%s: Color resource has NULL CGColorSpace");
    return 0;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "pattern", "%llu", &v35) == 1)
  {
    v17 = *(a1 + 16);
    v20 = *(v17 + 40);
    v18 = v17 + 40;
    v19 = v20;
    if (!v20)
    {
      return 0;
    }

    v21 = v18;
    do
    {
      v22 = *(v19 + 32);
      v12 = v22 >= v35;
      v23 = v22 < v35;
      if (v12)
      {
        v21 = v19;
      }

      v19 = *(v19 + 8 * v23);
    }

    while (v19);
    if (v21 == v18)
    {
      return 0;
    }

    if (*(v21 + 32) > v35)
    {
      return 0;
    }

    v24 = *(v21 + 40);
    if (!v24)
    {
      return 0;
    }
  }

  if (CG::DisplayListXMLHelper::parseColorComponentsFromAttributes(a2, components) != *(*(v16 + 3) + 48) + 1)
  {
    CGPostError("%s: Color resource has wrong number of components");
    return 0;
  }

  v25 = *(v5 + 4);
  if (v25)
  {
    v26 = *(v25 + 16);
    if (!v26)
    {
      CGPostError("%s: Pattern resource has NULL CGPattern", "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
      return v26;
    }

    if (*(v26 + 185) == 1)
    {
      Pattern = v16;
    }

    else
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(v16);
      if (!BaseColorSpace)
      {
        goto LABEL_45;
      }

      Pattern = CGColorSpaceCreatePattern(BaseColorSpace);
      if (!Pattern)
      {
        goto LABEL_45;
      }
    }

    v29 = CGColorCreateWithPattern(Pattern, v26, components);
  }

  else
  {
    v29 = CGColorCreate(v16, components);
  }

  v31 = v29;
  if (v29)
  {
    CG::DisplayListResourceColor::setColor(v5, v29);
    CFRelease(v31);
    return 1;
  }

LABEL_45:
  CGPostError("%s: Failed to create color from components", "virtual BOOL DisplayListXMLParserResourceColor::parseAttributes(const DLXMLAttributes &)");
  v32 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  if (!v32)
  {
    return 0;
  }

  v33 = v32;
  *v36 = 0u;
  v37 = 0u;
  v34 = CGColorCreate(v32, v36);
  v26 = v34 != 0;
  CG::DisplayListResourceColor::setColor(v5, v34);
  if (v34)
  {
    CFRelease(v34);
  }

  CFRelease(v33);
  return v26;
}

BOOL DisplayListXMLParserResourceColorSpace::parseAttributes(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "csType");
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (a2 + 8 == v7)
  {
    goto LABEL_20;
  }

  __p = "none";
  v24 = -1;
  v25 = "deviceGray";
  v27 = "deviceRGB";
  v28 = 1;
  v29 = "deviceCMYK";
  v30 = 2;
  v31 = "calibratedGray";
  v32 = 3;
  v33 = "calibratedRGB";
  v34 = 4;
  v35 = "LAB";
  v36 = 5;
  v37 = "ICCBased";
  v38 = 6;
  v39 = "FlexGTCProxy";
  v40 = 11;
  v41 = "indexed";
  v42 = 7;
  v43 = "deviceN";
  v44 = 8;
  v45 = "pattern";
  v46 = 9;
  v26 = 0;
  v47 = "profileSets";
  v48 = 10;
  v8 = (v7 + 56);
  if (*(v7 + 79) < 0)
  {
    v8 = *v8;
  }

  v9 = 0;
  v10 = &v24;
  v11 = 1;
  while (strcmp(v8, *(v10 - 1)))
  {
    v11 = v9 < 0xC;
    v10 += 4;
    if (++v9 == 13)
    {
      goto LABEL_20;
    }
  }

  if (!v11)
  {
LABEL_20:
    CGPostError("%s: Failed to parse type attribute");
    return 0;
  }

  if (*v10 == 9)
  {
    CGColorSpaceFromAttributeName = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "patternBaseName");
    v13 = CGColorSpaceFromAttributeName;
    if (!CGColorSpaceFromAttributeName)
    {
      Pattern = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "name");
      if (!Pattern)
      {
LABEL_33:
        CGPostError("Unhandled colorspace type");
        return 0;
      }

      goto LABEL_30;
    }

    Pattern = CGColorSpaceCreatePattern(CGColorSpaceFromAttributeName);
    CFRelease(v13);
    goto LABEL_18;
  }

  Pattern = DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(a2, "name");
  if (!Pattern)
  {
    v15 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "profile");
    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = *MEMORY[0x1E695E480];
    v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v15, 0x8000100u);
    if (!v17)
    {
      goto LABEL_33;
    }

    v18 = CFURLCreateCopyAppendingPathComponent(v16, *(*(a1 + 16) + 24), v17, 0);
    v19 = v18;
    if (v18)
    {
      v20 = CGDataProviderCreateWithURL(v18);
      if (v20)
      {
        v21 = v20;
        Pattern = CGColorSpaceCreateWithICCData(v20);
        CGDataProviderRelease(v21);
      }

      else
      {
        Pattern = 0;
      }

      CFRelease(v19);
    }

    else
    {
      Pattern = 0;
    }

    CFRelease(v17);
LABEL_18:
    if (!Pattern)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  v22 = *(v6 + 2);
  if (v22 != Pattern)
  {
    CGColorSpaceRelease(v22);
    CFRetain(Pattern);
    *(v6 + 2) = Pattern;
  }

  CFRelease(Pattern);
  return 1;
}

uint64_t DisplayListXMLParserResourceDash::parseAttributes(uint64_t a1, uint64_t a2)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v5 = "phase";
    if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "phase", "%lg", COERCE_DOUBLE(&v7)) == 1 && (*(a1 + 24) = v7, v5 = "count", result = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", &v6), result == 1))
    {
      *(a1 + 32) = v6;
    }

    else
    {
      CGPostError("Failed to parse %s attribute", v5);
      return 0;
    }
  }

  return result;
}

uint64_t DisplayListXMLParserResourceFont::parseAttributes(uint64_t a1, uint64_t a2)
{
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fontURL");
  if (v6)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    v10 = CFURLCreateWithString(v7, v8, 0);
    CFRelease(v9);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v11 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fontResourceURL");
    if (!v11)
    {
      CGPostError("Failed to parse fontURL or fontResourceURL attributes");
      return 0;
    }

    v12 = *MEMORY[0x1E695E480];
    v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v11, 0x8000100u);
    if (!v13)
    {
      return 0;
    }

    v10 = CFURLCreateCopyAppendingPathComponent(v12, *(*(a1 + 16) + 24), v13, 0);
    if (!v10)
    {
      return 0;
    }
  }

  FontsWithURL = CGFontCreateFontsWithURL(v10);
  if (FontsWithURL)
  {
    v15 = FontsWithURL;
    if (CFArrayGetCount(FontsWithURL) < 1)
    {
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_19;
    }

    v17 = ValueAtIndex;
    v18 = CFGetTypeID(ValueAtIndex);
    if (_block_invoke_once_3400 != -1)
    {
      v21 = v18;
      dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      v18 = v21;
    }

    if (v18 == CGFontGetTypeID_font_type_id)
    {
      CG::DisplayListResourceFont::setFont(v5, v17);
      v19 = 1;
    }

    else
    {
LABEL_19:
      v19 = 0;
    }

    CFRelease(v15);
  }

  else
  {
    v19 = 0;
  }

  CFRelease(v10);
  return v19;
}

uint64_t DisplayListXMLParserResourceImage::parseAttributes(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "width", "%zu", &v49) == 1 && (*(v5 + 3) = v49, CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "height", "%zu", &v49) == 1) && (*(v5 + 4) = v49, CG::DisplayListXMLHelper::parseColorRenderingIntentFromAttributes(a2, "renderingIntent", &v48)) && (v5[48] = v5[48] & 0xF0 | v48 & 0xF, (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "interpolate", &v50) & 1) != 0) && (!v50 ? (v6 = 0) : (v6 = 16), (v5[48] = v5[48] & 0xEF | v6, (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isMask", &v50) & 1) != 0) && (!v50 ? (v7 = 0) : (v7 = 32), (v5[48] = v5[48] & 0xDF | v7, (CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isTransparent", &v50) & 1) != 0) && (!v50 ? (v8 = 0) : (v8 = 64), v5[48] = v5[48] & 0xBF | v8, (v9 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "imageName")) != 0))))
  {
    v10 = v9;
    if ((v5[48] & 0x20) != 0)
    {
      v21 = 0;
    }

    else
    {
      if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", &v51) != 1)
      {
        CGPostError("Failed to parse colorSpace attribute", decode);
        return 0;
      }

      v11 = *(a1 + 16);
      v14 = *(v11 + 40);
      v12 = v11 + 40;
      v13 = v14;
      if (!v14)
      {
        goto LABEL_52;
      }

      v15 = v12;
      do
      {
        v16 = *(v13 + 32);
        v17 = v16 >= v51;
        v18 = v16 < v51;
        if (v17)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * v18);
      }

      while (v13);
      if (v15 == v12 || *(v15 + 32) > v51 || (v19 = *(v15 + 40)) == 0)
      {
LABEL_52:
        CGPostError("Failed to get resourceID: %llu for colorSpace attribute");
        return 0;
      }

      if (!v20)
      {
        CGPostError("colorSpace resourceID: %llu is of an unexpected class");
        return 0;
      }

      v21 = v20;
      *(v5 + 5) = v20;
    }

    v24 = *MEMORY[0x1E695E480];
    v25 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
    if (v25)
    {
      v26 = v25;
      v27 = CFURLCreateCopyAppendingPathComponent(v24, *(*(a1 + 16) + 24), v25, 0);
      if (!v27)
      {
        v22 = 0;
LABEL_66:
        CFRelease(v26);
        return v22;
      }

      v28 = v27;
      v29 = CFURLCopyPathExtension(v27);
      if (!v29 || CFStringCompare(v29, @"br2", 0))
      {
        if (DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate != -1)
        {
          dispatch_once(&DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate, &__block_literal_global_101);
        }

        v30 = DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f(v28, 0);
        if (!v30)
        {
          goto LABEL_64;
        }

        v31 = v30;
        if (DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate != -1)
        {
          dispatch_once(&DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::predicate, &__block_literal_global_104);
        }

        v32 = DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f(v31, 0, 0);
        goto LABEL_49;
      }

      v46 = 0;
      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      bitmapInfo = 0;
      v34 = strstr(v10, "_w=");
      if (!v34 || sscanf(v34, "_w=%ld,h=%ld,rb=%ld,cs=%ld,bpc=%ld,bmi=%x", &v47, &v46, &v44, &v43, &v45, &bitmapInfo) != 6)
      {
        CGPostError("Improperly formed BufferReader name: %s");
        goto LABEL_61;
      }

      if ((v5[48] & 0x20) != 0)
      {
        v35 = 0;
        v37 = v45;
LABEL_75:
        v39 = CGDataProviderCreateWithURL(v28);
        if (v39)
        {
          v31 = v39;
          v40 = v5[48];
          if ((v40 & 0x20) == 0)
          {
            v33 = CGImageCreate(v47, v46, v45, v37, v44, v35, bitmapInfo, v39, 0, (v40 & 0x10) != 0, ((v40 << 28) >> 28));
            CGImageCopyHeadroomFromOriginal(v33, *(v5 + 2));
            goto LABEL_50;
          }

          v32 = mask_create(v47, v46, v45, v37, v44, v39, 0, (v40 >> 4) & 1, 4);
LABEL_49:
          v33 = v32;
LABEL_50:
          CFRelease(v31);
          goto LABEL_62;
        }

        CFURLGetFileSystemRepresentation(v28, 1u, buffer, 1024);
        CGPostError("%s: Failed to create CGDataProvider with URL: %s");
LABEL_61:
        v33 = 0;
LABEL_62:
        if (v33)
        {
          CG::DisplayListResourceColor::setColor(v5, v33);
          CFRelease(v33);
          v22 = 1;
LABEL_65:
          CFRelease(v28);
          goto LABEL_66;
        }

LABEL_64:
        v22 = 0;
        goto LABEL_65;
      }

      if (v21)
      {
        v35 = *(v21 + 2);
        if (v35)
        {
          v36 = *(*(v35 + 3) + 48);
        }

        else
        {
          v36 = 0;
        }

        if ((bitmapInfo & 0x1F) != 0)
        {
          v38 = v45;
        }

        else
        {
          v38 = 0;
        }

        v37 = v38 + v45 * v36;
        goto LABEL_75;
      }

      CGPostError("colorSpaceResource == NULL");
    }
  }

  else
  {
    CGPostError("Failed to parse %s attribute");
  }

  return 0;
}

BOOL DisplayListXMLParserResource::parseAttributes(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "flags", "0x%X", &v5);
  if (v3 == 1)
  {
    *(*(a1 + 8) + 8) = v5 & 0xFFFFFF | (*(*(a1 + 8) + 11) << 24);
  }

  else
  {
    CGPostError("%s: Failed to parse attribute %s", "virtual BOOL DisplayListXMLParserResource::parseAttributes(const DLXMLAttributes &)", "flags");
  }

  return v3 == 1;
}

uint64_t DisplayListXMLParserResourceGradient::parseAttributes(uint64_t a1, uint64_t a2)
{
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (result)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
    }

    else
    {
      v6 = 0;
    }

    v18 = 0;
    if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "colorSpace", "%llu", &v18) == 1)
    {
      v7 = *(a1 + 16);
      v10 = *(v7 + 40);
      v8 = v7 + 40;
      v9 = v10;
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = v8;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v18;
        v14 = v12 < v18;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 != v8 && *(v11 + 32) <= v18 && (v15 = *(v11 + 40)) != 0)
      {
        if (v16)
        {
          v6[3] = v16;
          result = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "count", "%zu", a1 + 24);
          if (result == 1)
          {
            return result;
          }

          CGPostError("Failed to parse %s attribute");
        }

        else
        {
          CGPostError("colorSpace resourceID: %llu is of an unexpected class");
        }
      }

      else
      {
LABEL_19:
        CGPostError("Failed to get resourceID: %llu for colorSpace attribute");
      }
    }

    else
    {
      CGPostError("Failed to parse colorSpace attribute", v17);
    }

    return 0;
  }

  return result;
}

BOOL DisplayListXMLParserResourcePattern::parseAttributes(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "patternType");
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(__p.c) < 0)
  {
    operator delete(*&__p.a);
  }

  if (a2 + 8 == v8)
  {
    goto LABEL_26;
  }

  v9 = (v8 + 56);
  if (*(v8 + 79) < 0)
  {
    v9 = *v9;
  }

  v7 = "tiling";
  v10 = 1;
  while (1)
  {
    v11 = v10;
    if (!strcmp(v9, v7))
    {
      break;
    }

    v10 = 0;
    v7 = "shading";
    if ((v11 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (!CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "patternBounds", &v35))
  {
    goto LABEL_26;
  }

  if (!CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "patternMatrix", &v34))
  {
    CGPostError("Failed to parse patternMatrix attribute", v12);
    return 0;
  }

  if (!CG::DisplayListXMLHelper::parsePointFromAttributes(a2, "step", v33))
  {
    goto LABEL_26;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "tiling");
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &__p);
  if (SHIBYTE(__p.c) < 0)
  {
    operator delete(*&__p.a);
  }

  if (a2 + 8 == v14)
  {
    goto LABEL_40;
  }

  *&__p.a = "noDistortion";
  LODWORD(__p.b) = 0;
  *&__p.c = "constSpacingMinDistortion";
  LODWORD(__p.d) = 1;
  *&__p.tx = "constSpacing";
  LODWORD(__p.ty) = 2;
  v15 = (v14 + 56);
  if (*(v14 + 79) < 0)
  {
    v15 = *v15;
  }

  v16 = 0;
  p_b = &__p.b;
  v18 = 1;
  while (strcmp(v15, *(p_b - 1)))
  {
    v18 = v16 < 2;
    p_b += 2;
    if (++v16 == 3)
    {
      goto LABEL_40;
    }
  }

  if (!v18)
  {
LABEL_40:
    CGPostError("Failed to parse tiling attribute", v13);
    return 0;
  }

  v19 = *p_b;
  isColored = 0;
  if ((CG::DisplayListXMLHelper::parseBoolFromAttributes(a2, "isColored", &isColored) & 1) == 0)
  {
LABEL_26:
    CGPostError("Failed to parse %s attribute", v7);
    return 0;
  }

  v20 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "drawCell");
  if (!v20)
  {
    CGPostError("Failed to parse drawCell attribute", 0);
    return 0;
  }

  v21 = *MEMORY[0x1E695E480];
  v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v20, 0x8000100u);
  if (!v22)
  {
    goto LABEL_44;
  }

  v23 = *(*(a1 + 16) + 24);
  if (!v23 || (v24 = CFURLCreateCopyAppendingPathComponent(v21, v23, v22, 1u), (v27 = v24) == 0))
  {
    CFRelease(v22);
    goto LABEL_44;
  }

  v28 = CGDisplayListCreateWithURL(v24, v25, v26);
  CFRelease(v27);
  CFRelease(v22);
  if (!v28)
  {
LABEL_44:
    CGPostError("Failed to read pattern cell display list");
    return 0;
  }

  callbacks = *byte_1EF239E88;
  __p = v34;
  v29 = CGPatternCreate(v28, v35, &__p, v33[0], v33[1], v19, isColored, &callbacks);
  if (v29)
  {
    v30 = v29;
    CG::DisplayListResourcePattern::setPattern(v6, v29);
    CFRelease(v30);
  }

  return 1;
}

BOOL DisplayListXMLParserResourceStyle::parseAttributes(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(__p, "styleType");
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, __p);
  if (SBYTE7(v66) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = a2 + 8;
  if (a2 + 8 == v7)
  {
    goto LABEL_27;
  }

  __p[0] = "shadow";
  LODWORD(__p[1]) = 1;
  *&v66 = "focusRing";
  DWORD2(v66) = 2;
  *v67 = "gaussianBlur";
  *&v67[8] = 3;
  *&v67[16] = "colorMatrix";
  *&v67[24] = 4;
  *&v67[32] = "unknown";
  *&v67[40] = 0;
  v9 = (v7 + 56);
  if (*(v7 + 79) < 0)
  {
    v9 = *v9;
  }

  v10 = 0;
  v11 = &__p[1];
  v12 = 1;
  while (strcmp(v9, *(v11 - 1)))
  {
    v12 = v10 < 4;
    v11 += 2;
    if (++v10 == 5)
    {
      goto LABEL_27;
    }
  }

  if (!v12)
  {
LABEL_27:
    CGPostError("Failed to parse attribute: statusType");
    return 0;
  }

  v13 = *v11;
  result = 1;
  if (*v11 > 2)
  {
    if (v13 == 3)
    {
      __p[0] = 0;
      if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", COERCE_DOUBLE(__p)))
      {
        v44 = *__p;
      }

      else
      {
        v44 = 0.0;
      }

      style_with_type = create_style_with_type(3);
      style_with_type[5] = fmax(fmin(v44, 1.79769313e308), 0.0);
      CG::DisplayListResourcePattern::setPattern(v6, style_with_type);
      CFRelease(style_with_type);
    }

    else
    {
      if (v13 != 4)
      {
        return result;
      }

      *&v74 = 0;
      LODWORD(__p[0]) = 0;
      v21 = CG::DisplayListXMLHelper::colorMatrixIndexKey::keys;
      for (i = 1; i != 21; ++i)
      {
        v23 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, *v21, "%lg", COERCE_DOUBLE(&v74));
        v24 = *&v74;
        if (!v23)
        {
          v24 = 0.0;
        }

        *&__p[i] = v24;
        ++v21;
      }

      v25 = create_style_with_type(4);
      v26 = v71;
      *(v25 + 144) = v70;
      *(v25 + 160) = v26;
      *(v25 + 176) = v72;
      *(v25 + 192) = v73;
      v27 = *&v67[32];
      *(v25 + 80) = *&v67[16];
      *(v25 + 96) = v27;
      v28 = v69;
      *(v25 + 112) = v68;
      *(v25 + 128) = v28;
      v29 = v66;
      *(v25 + 32) = *__p;
      *(v25 + 48) = v29;
      *(v25 + 64) = *v67;
      CG::DisplayListResourcePattern::setPattern(v6, v25);
      CFRelease(v25);
    }

    return 1;
  }

  if (v13 == 1)
  {
    *&v74 = 0;
    LODWORD(__p[0]) = 0;
    v30 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "elevation", "%lg", COERCE_DOUBLE(&v74));
    v31 = *&v74;
    if (!v30)
    {
      v31 = 45.0;
    }

    __p[1] = *&v31;
    v32 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "azimuth", "%lg", COERCE_DOUBLE(&v74));
    v33 = *&v74;
    if (!v32)
    {
      v33 = 135.0;
    }

    *&v66 = v33;
    v34 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "ambient", "%lg", COERCE_DOUBLE(&v74));
    v35 = *&v74;
    if (!v34)
    {
      v35 = 0.666666667;
    }

    *(&v66 + 1) = v35;
    v36 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "height", "%lg", COERCE_DOUBLE(&v74));
    v37 = *&v74;
    if (!v36)
    {
      v37 = 3.0;
    }

    *v67 = v37;
    v38 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", COERCE_DOUBLE(&v74));
    v39 = *&v74;
    if (!v38)
    {
      v39 = 0.0;
    }

    *&v67[8] = v39;
    v40 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "saturation", "%lg", COERCE_DOUBLE(&v74));
    v41 = *&v74;
    if (!v40)
    {
      v41 = 1.0;
    }

    *&v67[16] = v41;
    ShadowWithColor = CGStyleCreateShadowWithColor(__p, 0);
    if (ShadowWithColor)
    {
      v43 = ShadowWithColor;
      CG::DisplayListResourcePattern::setPattern(v6, ShadowWithColor);
      CFRelease(v43);
    }

    return 1;
  }

  if (v13 == 2)
  {
    v63 = 0.0;
    v62 = 0;
    LODWORD(__p[0]) = 0;
    std::string::basic_string[abi:fe200100]<0>(&v74, "tint");
    v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &v74);
    if (SBYTE7(v75) < 0)
    {
      operator delete(v74);
    }

    if (v8 == v14)
    {
LABEL_26:
      v20 = 0;
    }

    else
    {
      LODWORD(v74) = 0;
      v64 = 1;
      v15 = (v14 + 56);
      if (*(v14 + 79) < 0)
      {
        v15 = *v15;
      }

      v16 = &v74;
      v17 = "blue";
      v18 = 1;
      while (1)
      {
        v19 = v18;
        if (!strcmp(v15, v17))
        {
          break;
        }

        v18 = 0;
        v16 = &v64;
        v17 = "graphite";
        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v20 = *v16;
    }

    HIDWORD(__p[0]) = v20;
    std::string::basic_string[abi:fe200100]<0>(&v74, "ordering");
    v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a2, &v74);
    if (SBYTE7(v75) < 0)
    {
      operator delete(v74);
    }

    if (v8 == v46)
    {
LABEL_63:
      v51 = 0;
    }

    else
    {
      *&v74 = "none";
      *&v75 = "above";
      DWORD2(v74) = 0;
      DWORD2(v75) = 2;
      v76 = "below";
      v77 = 1;
      v47 = (v46 + 56);
      if (*(v46 + 79) < 0)
      {
        v47 = *v47;
      }

      v48 = 0;
      v49 = 1;
      v50 = &v74;
      while (strcmp(v47, *v50))
      {
        v49 = v48 < 2;
        v50 += 2;
        if (++v48 == 3)
        {
          goto LABEL_63;
        }
      }

      v51 = *(&v74 + 4 * v48 + 2);
      if (!v49)
      {
        v51 = 0;
      }
    }

    LODWORD(__p[1]) = v51;
    v52 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "alpha", "%lg", COERCE_DOUBLE(&v63));
    v53 = v63;
    if (!v52)
    {
      v53 = 0.8;
    }

    *&v66 = v53;
    v54 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "radius", "%lg", COERCE_DOUBLE(&v63));
    v55 = v63;
    if (!v54)
    {
      v55 = 2.0;
    }

    *(&v66 + 1) = v55;
    v56 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "threshold", "%lg", COERCE_DOUBLE(&v63));
    v57 = v63;
    if (!v56)
    {
      v57 = 0.5;
    }

    *v67 = v57;
    if (CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bounds", &v74))
    {
      *&v67[8] = v74;
      *&v67[24] = v75;
    }

    else
    {
      memset(&v67[8], 0, 32);
    }

    v58 = CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "accumulate", "%d", &v62);
    v59 = v62;
    if (!v58)
    {
      v59 = 0;
    }

    *&v67[40] = v59;
    FocusRing = CGStyleCreateFocusRing(__p);
    if (FocusRing)
    {
      v61 = FocusRing;
      CG::DisplayListResourcePattern::setPattern(v6, FocusRing);
      CFRelease(v61);
    }

    return 1;
  }

  return result;
}

BOOL DisplayListXMLParserResourceSoftMask::parseAttributes(uint64_t a1, uint64_t a2)
{
  if (!DisplayListXMLParserResource::parseAttributes(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v34 = 0;
  if (!CG::DisplayListXMLHelper::parseRectFromAttributes(a2, "bbox", v36) || !CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(a2, "matrix", v35))
  {
    goto LABEL_19;
  }

  if (CG::DisplayListXMLHelper::parseFormatFromAttributes(a2, "bg", "%llu", &v34) == 1)
  {
    v6 = *(a1 + 16);
    v9 = *(v6 + 40);
    v7 = v6 + 40;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v7;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v34;
      v13 = v11 < v34;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 == v7 || *(v10 + 32) > v34 || (v14 = *(v10 + 40)) == 0)
    {
LABEL_30:
      CGPostError("Failed to get resourceID: %llu for %s attribute");
      return 0;
    }

    if (!v15)
    {
      CGPostError("%s resourceID: %llu is of an unexpected class");
      return 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "dl");
  if (!v18)
  {
LABEL_19:
    CGPostError("Failed to parse %s attribute");
    return 0;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v18, 0x8000100u);
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v20;
  v22 = *(*(a1 + 16) + 24);
  if (!v22 || (v23 = CFURLCreateCopyAppendingPathComponent(v19, v22, v20, 1u)) == 0)
  {
    CFRelease(v21);
    goto LABEL_33;
  }

  v26 = v23;
  v27 = CGDisplayListCreateWithURL(v23, v24, v25);
  CFRelease(v26);
  CFRelease(v21);
  if (!v27)
  {
LABEL_33:
    CGPostError("%s: Failed to read softmask display list");
    return 0;
  }

  v33 = off_1EF239F40;
  v31[0] = v35[0];
  v31[1] = v35[1];
  v31[2] = v35[2];
  v32 = xmmword_1EF239F30;
  if (v15)
  {
    v28 = v15[2];
  }

  else
  {
    v28 = 0;
  }

  v29 = CGSoftMaskCreate(v27, v31, v28, 0, &v32, v36[0], v36[1], v36[2], v36[3]);
  v16 = v29 != 0;
  if (v29)
  {
    v30 = v29;
    CG::DisplayListResourcePattern::setPattern(v5, v29);
    CFRelease(v30);
  }

  else
  {
    CGPostError("%s: Failed to create CGSoftMaskRef", "virtual BOOL DisplayListXMLParserResourceSoftMask::parseAttributes(const DLXMLAttributes &)");
  }

  return v16;
}

BOOL DisplayListXMLParserResourceDisplayList::parseAttributes(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = DisplayListXMLParserResource::parseAttributes(a1, a2);
  if (result)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
    }

    else
    {
      v6 = 0;
    }

    v7 = CG::DisplayListXMLHelper::parseStringFromAttributes(a2, "fileName");
    if (v7)
    {
      v8 = *MEMORY[0x1E695E480];
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v7, 0x8000100u);
      if (v9)
      {
        v10 = v9;
        v11 = *(*(a1 + 16) + 24);
        if (v11)
        {
          v12 = CFURLCreateCopyAppendingPathComponent(v8, v11, v9, 1u);
          if (v12)
          {
            v15 = v12;
            v16 = CGDisplayListCreateWithURL(v12, v13, v14);
            if (v16)
            {
              v17 = v16;
              CG::DisplayListResourcePattern::setPattern(v6, v16);
              CFRelease(v17);
            }

            else
            {
              CFURLGetFileSystemRepresentation(v15, 1u, buffer, 1024);
              CGPostError("Failed to parse displayList resource from URL: %s", buffer);
            }

            CFRelease(v15);
          }
        }

        CFRelease(v10);
      }

      return 1;
    }

    else
    {
      CGPostError("Failed to parse fileName attribute");
      return 0;
    }
  }

  return result;
}

uint64_t boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::~adjacency_list(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    MEMORY[0x1865EE610](v2, 0xC400A2AC0F1);
  }

  v4 = (a1 + 24);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void _softMaskReleaseInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _softMaskDrawSoftMaskCallback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CGDisplayListDrawInContext(a1, a2);
    }
  }
}

void _patternReleaseInfoCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _patternDrawPatternCallback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CGDisplayListDrawInContext(a1, a2);
    }
  }
}

uint64_t DisplayListXMLParserResourceGradient::parseChildElements(const void **this, _xmlNode *a2)
{
  v5 = v4[3];
  if (!v5)
  {
    CGPostError("DisplayListResourceGradient returned NULL for getColorSpaceResource()");
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    CGPostError("DisplayListResourceColorSpace returned NULL for getColorSpace()");
    return 0;
  }

  v7 = v4;
  memset(v17, 0, sizeof(v17));
  CG::DisplayListXMLHelper::parseCGFloatArrayFromElement(a2, "components", v17);
  memset(v16, 0, sizeof(v16));
  CG::DisplayListXMLHelper::parseCGFloatArrayFromElement(a2, "locations", v16);
  v8 = v17[0];
  v9 = v16[0];
  v10 = this[3];
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(v6, 0);
  gradient = create_gradient(v6, v8, v9, v10, 0, HeadroomInfo);
  if (gradient)
  {
    v13 = gradient;
    v14 = v7[2];
    if (v14 != v13)
    {
      if (v14)
      {
        CFRelease(v14);
      }

      CFRetain(v13);
      v7[2] = v13;
    }

    CFRelease(v13);
  }

  if (v9)
  {
    operator delete(v9);
  }

  if (v8)
  {
    operator delete(v8);
  }

  return 1;
}

void sub_1840AA6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN33DisplayListXMLParserResourceImage15parseAttributesERKNSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_NS0_4lessIS7_EENS5_INS0_4pairIKS7_S7_EEEEEE_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateImageAtIndex", v0);
  }

  DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f = result;
  return result;
}

void *___ZN33DisplayListXMLParserResourceImage15parseAttributesERKNSt3__13mapINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_NS0_4lessIS7_EENS5_INS0_4pairIKS7_S7_EEEEEE_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithURL", v0);
  }

  DisplayListXMLParserResourceImage::parseAttributes(std::map<std::string,std::string> const&)::f = result;
  return result;
}

BOOL DisplayListXMLParserResourceDash::parseChildElements(DisplayListXMLParserResourceDash *this, _xmlNode *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  children = a2->children;
  if (!children)
  {
    goto LABEL_31;
  }

  while (xmlStrcmp(children->name, "pattern"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_31;
    }
  }

  v11 = children->children;
  if (!v11 || v11->type != XML_TEXT_NODE)
  {
    CGPostError("XML node of dash resource does not contain a pattern child");
    goto LABEL_31;
  }

  String = xmlNodeListGetString(v11->doc, v11, 1);
  if (!String)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:fe200100]<0>(v46, String);
  boost::char_separator<char,std::char_traits<char>>::char_separator(&v42, "[ ]");
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::tokenizer<std::string>(v37, v46, &v42);
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::begin(v29, v37);
  for (i = 0; ; ++i)
  {
    boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::end(&v20, v37);
    if (v26 == 1 && (v35 & 1) != 0)
    {
      break;
    }

    if (v26 == v35)
    {
      goto LABEL_41;
    }

LABEL_21:
    v14 = *(this + 4);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (i > v14)
    {
      goto LABEL_47;
    }

    if ((v35 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v8[i] = std::stod(&v36, 0);
    boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::increment(v29);
  }

  if (v24 != v33 || v25 != v34)
  {
    goto LABEL_21;
  }

LABEL_41:
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

LABEL_47:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

LABEL_31:
  v15 = *(this + 4);
  v10 = v15 != 0;
  if (v15)
  {
    v16 = *(this + 3);
    v17 = malloc_type_calloc(1uLL, 8 * v15 + 24, 0x1000040D315E998uLL);
    *v17 = 1;
    *(v17 + 1) = v16;
    *(v17 + 2) = v15;
    memcpy(v17 + 6, v8, 8 * v15);
    v18 = v5[2];
    if (v18 != v17)
    {
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v18);
      }

      atomic_fetch_add_explicit(v17, 1u, memory_order_relaxed);
      v5[2] = v17;
    }

    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v17);
    }
  }

  free(v8);
  return v10;
}

void sub_1840AACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~tokenizer(va);
  boost::char_separator<char,std::char_traits<char>>::~char_separator(v37 - 168);
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t boost::char_separator<char,std::char_traits<char>>::char_separator(uint64_t a1, char *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::string::basic_string[abi:fe200100]<0>((a1 + 24), a2);
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1840AAD68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::tokenizer<std::string>(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a1 = v5;
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(a1 + 8) = v7 + v6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v9 = *(a3 + 24);
    *(a1 + 56) = *(a3 + 5);
    *(a1 + 40) = v9;
  }

  v10 = *(a3 + 6);
  *(a1 + 72) = *(a3 + 56);
  *(a1 + 64) = v10;
  return a1;
}

void sub_1840AAE40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::begin(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    __p = *(a2 + 40);
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(a1, &v5, *a2, *(a2 + 8));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];

    operator delete(v4);
  }
}

void sub_1840AAF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::end(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    __p = *(a2 + 40);
  }

  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(a1, &v5, *(a2 + 8), *(a2 + 8));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = v5.__r_.__value_.__r.__words[0];

    operator delete(v4);
  }
}

void sub_1840AB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::increment(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    __assert_rtn("increment", "token_iterator.hpp", 54, "valid_");
  }

  result = boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(a1, (a1 + 64), *(a1 + 72), (a1 + 88));
  *(a1 + 80) = result;
  return result;
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~token_iterator(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::tokenizer<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::~tokenizer(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t boost::char_separator<char,std::char_traits<char>>::~char_separator(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void CG::DisplayListResourceDash::setDash(uint64_t a1, atomic_uint *a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v3);
    }

    if (a2)
    {
      atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
    }

    *(a1 + 16) = a2;
  }
}

uint64_t boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(uint64_t a1, char **a2, char *a3, std::string *this)
{
  v8 = *a2;
  if (*(a1 + 52))
  {
    goto LABEL_2;
  }

  if (v8 != a3)
  {
    do
    {
      is_dropped = boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v8);
      v8 = *a2;
      if (!is_dropped)
      {
        break;
      }

      *a2 = ++v8;
    }

    while (v8 != a3);
    if (*(a1 + 52))
    {
LABEL_2:
      if (v8 == a3)
      {
        if ((*(a1 + 56) & 1) == 0)
        {
          v12 = 1;
          *(a1 + 56) = 1;
          std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, a3, a3, 0);
          return v12;
        }

        return 0;
      }

      if (boost::char_separator<char,std::char_traits<char>>::is_kept(a1, *v8))
      {
        if (*(a1 + 56))
        {
          ++*a2;
          *(a1 + 56) = 0;
LABEL_28:
          std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(this, v8, *a2, *a2 - v8);
          return 1;
        }
      }

      else if ((*(a1 + 56) & 1) != 0 || !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, **a2))
      {
        v13 = boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, **a2);
        v14 = *a2;
        if (v13)
        {
          *a2 = ++v14;
          v8 = v14;
        }

        while (v14 != a3 && !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v14) && !boost::char_separator<char,std::char_traits<char>>::is_kept(a1, **a2))
        {
          v14 = *a2 + 1;
          *a2 = v14;
        }
      }

      *(a1 + 56) = 1;
      goto LABEL_28;
    }
  }

  if (v8 != a3)
  {
    is_kept = boost::char_separator<char,std::char_traits<char>>::is_kept(a1, *v8);
    v11 = *a2;
    if (is_kept)
    {
      *a2 = v11 + 1;
    }

    else
    {
      while (v11 != a3 && !boost::char_separator<char,std::char_traits<char>>::is_dropped(a1, *v11) && !boost::char_separator<char,std::char_traits<char>>::is_kept(a1, **a2))
      {
        v11 = *a2 + 1;
        *a2 = v11;
      }
    }

    goto LABEL_28;
  }

  return 0;
}

BOOL boost::char_separator<char,std::char_traits<char>>::is_dropped(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 47);
  if (v2 < 0)
  {
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v3 = std::string::find((a1 + 24), a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x4000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x4000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

BOOL boost::char_separator<char,std::char_traits<char>>::is_kept(uint64_t a1, __darwin_ct_rune_t a2)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    v3 = std::string::find(a1, a2, 0) == -1;
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      return 0;
    }

    if (a2 < 0)
    {
      v4 = __maskrune(a2, 0x2000uLL);
    }

    else
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60) & 0x2000;
    }

    v3 = v4 == 0;
  }

  return !v3;
}

void std::string::__assign_trivial[abi:fe200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t boost::token_iterator<boost::char_separator<char,std::char_traits<char>>,std::__wrap_iter<char const*>,std::string>::token_iterator(uint64_t a1, __int128 *a2, char *a3, char *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
  }

  v10 = 0;
  v11 = *(a2 + 6);
  v12 = *(a2 + 56);
  *(a1 + 64) = a3;
  *(a1 + 56) = v12;
  *(a1 + 48) = v11;
  *(a1 + 72) = a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a3 != a4)
  {
    v10 = boost::char_separator<char,std::char_traits<char>>::operator()<std::__wrap_iter<char const*>,std::string>(a1, (a1 + 64), a4, (a1 + 88));
  }

  *(a1 + 80) = v10;
  return a1;
}

void sub_1840AB674(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

CGColorSpaceRef DisplayListXMLParserResourceColorSpace::createCGColorSpaceFromAttributeName(uint64_t a1, char *a2)
{
  v2 = CG::DisplayListXMLHelper::parseStringFromAttributes(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGColorSpaceCreateWithName(v3);
  CFRelease(v4);
  return v5;
}

void CG::DisplayListResourceColor::setColor(CG::DisplayListResourceColor *this, CFTypeRef cf)
{
  v3 = *(this + 2);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(this + 2) = cf;
  }
}

uint64_t DisplayListXMLParserResourceClip::parseChildElements(DisplayListXMLParserResourceClip *this, _xmlNode *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  *v6 = 1;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 48) = CGRectInfinite;
  *(v6 + 80) = CGRectInfinite;
  *(v6 + 16) = CGRectInfinite;
  *(v6 + 14) = 3;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  CGClipStackAddRect(v6, 1, *(this + 3), *(this + 4), *(this + 5), *(this + 6));
  children = a2->children;
  if (!children)
  {
    goto LABEL_62;
  }

  while (xmlStrcmp(children->name, "stack"))
  {
    children = children->next;
    if (!children)
    {
      goto LABEL_62;
    }
  }

  v9 = children->children;
  if (!v9)
  {
LABEL_62:
    CG::DisplayListResourceClip::setClipStack(v5, v6, v7);
    CGClipStackRelease(v6);
    return 1;
  }

  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    if (v9->type != XML_ELEMENT_NODE)
    {
      goto LABEL_51;
    }

    if (xmlStrcmp(v9->name, "clip"))
    {
      break;
    }

    CG::DisplayListXMLHelper::parseAttributesFromNode(v33, v9);
    std::string::basic_string[abi:fe200100]<0>(&__p, "type");
    v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v33, &__p);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    if (&v34 != v10)
    {
      __p = "none";
      LODWORD(v36) = -1;
      v37 = "rect";
      LODWORD(v38) = 0;
      v39 = "glyphs_obsolete";
      v40 = 1;
      v41 = "path";
      v42 = 2;
      v43 = "mask";
      v44 = 3;
      v45 = "text";
      v46 = 4;
      v11 = (v10 + 56);
      if (*(v10 + 79) < 0)
      {
        v11 = *v11;
      }

      v12 = 0;
      v13 = 1;
      v14 = &v36;
      while (strcmp(v11, *(v14 - 1)))
      {
        v13 = v12 < 5;
        v14 += 4;
        if (++v12 == 6)
        {
          goto LABEL_50;
        }
      }

      if (v13)
      {
        v15 = *v14;
        if (*v14 > 2)
        {
          if (v15 == 3)
          {
            if (CG::DisplayListXMLHelper::parseRectFromAttributes(v33, "rect", v32) && CG::DisplayListXMLHelper::parseAffineTransformFromAttributes(v33, "matrix", &__p))
            {
              v19 = CG::DisplayListXMLHelper::parseStringFromAttributes(v33, "maskImage");
              if (v19)
              {
                v20 = CFStringCreateWithCString(alloc, v19, 0x8000100u);
                if (v20)
                {
                  v21 = CFURLCreateCopyAppendingPathComponent(alloc, *(*(this + 2) + 24), v20, 0);
                  if (v21)
                  {
                    if (DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate != -1)
                    {
                      dispatch_once(&DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate, &__block_literal_global_61);
                    }

                    v22 = DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f(v21, 0);
                    if (v22)
                    {
                      if (DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate != -1)
                      {
                        dispatch_once(&DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::predicate, &__block_literal_global_65);
                      }

                      v23 = DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f(v22, 0, 0);
                      if (v23)
                      {
                        v29 = v23;
                        v30 = v22;
                        v24 = CGClipMaskCreate(&CGAffineTransformIdentity, v23, v32[0], v32[1], v32[2], v32[3]);
                        if (v24)
                        {
                          v25 = v24;
                          v18 = CGClipCreateWithMask(v24, 1);
                          CGClipMaskRelease(v25);
                        }

                        else
                        {
                          v18 = 0;
                        }

                        v22 = v30;
                        CFRelease(v29);
                      }

                      else
                      {
                        v18 = 0;
                      }

                      CFRelease(v22);
                    }

                    else
                    {
                      v18 = 0;
                    }

                    CFRelease(v21);
                  }

                  else
                  {
                    v18 = 0;
                  }

                  CFRelease(v20);
                }

                else
                {
                  v18 = 0;
                }

                goto LABEL_33;
              }
            }
          }

          else if (v15 == 4)
          {
            CGPostError("%s: kCGClipTypeTextClipping is unimplemented");
          }
        }

        else
        {
          if (!v15)
          {
            CG::DisplayListXMLHelper::parseRectFromAttributes(v33, "rect", &__p);
            v18 = CGClipCreateWithRect(&CGAffineTransformIdentity, 1, *&__p, v36, *&v37, v38);
            goto LABEL_33;
          }

          if (v15 == 2)
          {
            v16 = v9->children;
            if (v16)
            {
              while (xmlStrcmp(v16->name, "cgpath"))
              {
                v16 = v16->next;
                if (!v16)
                {
                  goto LABEL_28;
                }
              }

              v26 = CG::DisplayListXMLHelper::parseCGPathFromNode(v16, v17);
              v27 = v26;
              if (v26)
              {
                v18 = CGClipCreateWithPath(v26, 0, 1, 1.0);
                CFRelease(v27);
LABEL_33:
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v34);
                if (v18)
                {
                  CGClipStackAddClip(v6, v18);
                  CGClipRelease(v18);
                }

                goto LABEL_51;
              }
            }

            else
            {
LABEL_28:
              CGPostError("%s: Failed to get %s node");
            }
          }
        }
      }
    }

LABEL_50:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v34);
LABEL_51:
    v9 = v9->next;
    if (!v9)
    {
      goto LABEL_62;
    }
  }

  CGPostError("%s: Unexpected child node name. Expected clip, got %s", "virtual BOOL DisplayListXMLParserResourceClip::parseChildElements(xmlNodePtr)", v9->name);
  return 0;
}

void *___ZN32DisplayListXMLParserResourceClip13parseClipNodeEP8_xmlNode_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateImageAtIndex", v0);
  }

  DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f = result;
  return result;
}

void *___ZN32DisplayListXMLParserResourceClip13parseClipNodeEP8_xmlNode_block_invoke()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageSourceCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageSourceCreateWithURL", v0);
  }

  DisplayListXMLParserResourceClip::parseClipNode(_xmlNode *)::f = result;
  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

uint64_t boost::shared_array<boost::default_color_type>::operator[](uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = "px != 0";
    v4 = 199;
    goto LABEL_6;
  }

  if (a2 < 0)
  {
    v3 = "i >= 0";
    v4 = 200;
LABEL_6:
    __assert_rtn("operator[]", "shared_array.hpp", v4, v3);
  }

  return a1 + 4 * a2;
}

void boost::detail::depth_first_visit_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>,boost::shared_array_property_map<boost::default_color_type,boost::vec_adj_list_vertex_id_map<boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,unsigned long>>,boost::detail::nontruth2>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  *boost::shared_array<boost::default_color_type>::operator[](*a4, a2) = 1;
  v7 = *(a1 + 24);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v7) >> 3) <= a2)
  {
    goto LABEL_15;
  }

  v8 = (v7 + 56 * a2);
  v10 = *v8;
  v9 = v8[1];
  v26 = a2;
  v27 = 0;
  v31 = v10;
  v32 = a2;
  v33 = v9;
  v34 = a2;
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](&v23, &v26);
  v11 = v24;
  if (v23 != v24)
  {
    v12 = *(v24 - 9);
    if (*(v24 - 64) == 1)
    {
      *(v24 - 64) = 0;
    }

    v13 = *(v11 - 4);
    v14 = *(v11 - 3);
    v16 = *(v11 - 2);
    v15 = *(v11 - 1);
    v24 = v11 - 72;
    while (1)
    {
      while (1)
      {
        if (v13 == v16)
        {
          *boost::shared_array<boost::default_color_type>::operator[](*a4, v12) = 4;
          operator new();
        }

        v17 = *v13;
        v18 = *boost::shared_array<boost::default_color_type>::operator[](*a4, *v13);
        if (!v18)
        {
          break;
        }

        if (v18 == 1)
        {
          boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS> const>();
        }

        v13 += 2;
      }

      v19 = *v13;
      v20 = v13[1] + 32;
      v26 = v12;
      v28 = v14;
      v29 = v19;
      v27 = 1;
      v30 = v20;
      v31 = v13 + 2;
      v32 = v14;
      v33 = v16;
      v34 = v15;
      std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](&v23, &v26);
      *boost::shared_array<boost::default_color_type>::operator[](*a4, v17) = 1;
      v21 = *(a1 + 24);
      if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 32) - v21) >> 3) <= v17)
      {
        break;
      }

      v22 = (v21 + 56 * v17);
      v13 = *v22;
      v16 = v22[1];
      v15 = v17;
      v12 = v17;
      v14 = v17;
    }

LABEL_15:
    __break(1u);
  }

  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](&v23);
}

void sub_1840AC384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::push_back[abi:fe200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = 72 * v8;
    *v12 = *a2;
    *(v12 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      *(72 * v8 + 0x10) = *(a2 + 16);
      *(72 * v8 + 0x20) = *(a2 + 32);
      *(72 * v8 + 8) = 1;
    }

    *(72 * v8 + 0x28) = *(a2 + 40);
    *(72 * v8 + 0x38) = *(a2 + 56);
    v7 = v12 + 72;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v13 + 16;
      v17 = v15;
      do
      {
        v18 = v16 - 16;
        *v17 = *(v16 - 2);
        *(v17 + 8) = 0;
        if (*(v16 - 8) == 1)
        {
          v19 = *v16;
          *(v17 + 32) = *(v16 + 2);
          *(v17 + 16) = v19;
          *(v17 + 8) = 1;
        }

        v20 = *(v16 + 24);
        *(v17 + 56) = *(v16 + 40);
        *(v17 + 40) = v20;
        v17 += 72;
        v16 += 72;
      }

      while (v18 + 72 != v14);
      do
      {
        if (v13[8] == 1)
        {
          v13[8] = 0;
        }

        v13 += 72;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v7;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = 0;
    if (*(a2 + 8) == 1)
    {
      v5 = *(a2 + 16);
      *(v3 + 32) = *(a2 + 32);
      *(v3 + 16) = v5;
      *(v3 + 8) = 1;
    }

    v6 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v6;
    v7 = v3 + 72;
  }

  a1[1] = v7;
}

void boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS> const>()
{
  std::string::basic_string[abi:fe200100]<0>(&v1, "The graph must be a DAG.");
  std::logic_error::logic_error(&v0, &v1);
  v0.__vftable = &unk_1EF23A560;
  if (SHIBYTE(v1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1.__r_.__value_.__l.__data_);
  }

  v0.__vftable = &unk_1EF23A538;
  v1.__r_.__value_.__r.__words[0] = "/AppleInternal/Library/BuildRoots/4~CAoEugDuHK1rbQwXulrj3MslkuV35Km3bftwDR8/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/graph/topological_sort.hpp";
  v1.__r_.__value_.__l.__size_ = "void boost::topo_sort_visitor<std::front_insert_iterator<std::list<unsigned long>>>::back_edge(const Edge &, Graph &) [OutputIterator = std::front_insert_iterator<std::list<unsigned long>>, Edge = boost::detail::edge_desc_impl<boost::bidirectional_tag, unsigned long>, Graph = const boost::adjacency_list<boost::vecS, boost::vecS, boost::bidirectionalS, boost::property<boost::vertex_color_t, boost::default_color_type>>]";
  v1.__r_.__value_.__r.__words[2] = 42;
  boost::throw_exception<boost::not_a_dag>(&v0, &v1);
}

void std::vector<std::pair<unsigned long,std::pair<boost::optional<boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>>,std::pair<boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>,boost::detail::out_edge_iter<std::__wrap_iter<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property> *>,unsigned long,boost::detail::edge_desc_impl<boost::bidirectional_tag,unsigned long>,long>>>>>::__destroy_vector::operator()[abi:fe200100](char **a1)
{
  v2 = *a1;
  if (v2)
  {
    for (i = a1[1]; i != v2; i -= 72)
    {
      if (*(i - 64) == 1)
      {
        *(i - 64) = 0;
      }
    }

    a1[1] = v2;
    operator delete(v2);
  }
}

void boost::throw_exception<boost::not_a_dag>(const std::logic_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &unk_1EF23A508;
  std::logic_error::logic_error((exception + 8), a1);
  *(exception + 5) = 0;
  *(exception + 6) = 0;
  *exception = &unk_1EF23A490;
  *(exception + 1) = &unk_1EF23A4C0;
  *(exception + 3) = &unk_1EF23A4E8;
  *(exception + 4) = 0;
  *(exception + 14) = a2[1].i32[0];
  *(exception + 40) = vextq_s8(*a2, *a2, 8uLL);
}

uint64_t boost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1865EE3B0](a1 + 8);
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::not_a_dag>::~wrapexcept(void *a1)
{
  *a1 = &unk_1EF23A588;
  v1 = a1 - 2;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  MEMORY[0x1865EE3B0](v1);

  JUMPOUT(0x1865EE610);
}

{
  *a1 = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  JUMPOUT(0x1865EE3B0);
}

void non-virtual thunk toboost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  MEMORY[0x1865EE3B0](a1);

  JUMPOUT(0x1865EE610);
}

{
  *(a1 + 16) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  JUMPOUT(0x1865EE3B0);
}

void boost::wrapexcept<boost::not_a_dag>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1EF23A588;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  MEMORY[0x1865EE3B0](a1 + 8);

  JUMPOUT(0x1865EE610);
}

void boost::wrapexcept<boost::not_a_dag>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::not_a_dag>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::not_a_dag>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF23A508;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1EF23A538;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1EF23A588;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1EF23A490;
  *(a1 + 8) = &unk_1EF23A4C0;
  *(a1 + 24) = &unk_1EF23A4E8;
  return a1;
}

void boost::not_a_dag::~not_a_dag(boost::not_a_dag *this)
{
  MEMORY[0x1865EE3B0](this);

  JUMPOUT(0x1865EE610);
}

void sub_1840ACE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_graph::~bad_graph(boost::bad_graph *this)
{
  MEMORY[0x1865EE3B0](this);

  JUMPOUT(0x1865EE610);
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "N5boost21checked_array_deleterINS_18default_color_typeEEE"))
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_pd<boost::default_color_type *,boost::checked_array_deleter<boost::default_color_type>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    JUMPOUT(0x1865EE5F0);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:fe200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL CG::DisplayListResourceCFTypeRef::_equal_to(CG::DisplayListResourceCFTypeRef *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || !CFEqual(v4, v5))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceCFTypeRef::~DisplayListResourceCFTypeRef(CG::DisplayListResourceCFTypeRef *this)
{
  CG::DisplayListResourceCFTypeRef::~DisplayListResourceCFTypeRef(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F778;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceDisplayList::_equal_to(CG::DisplayListResourceDisplayList *this, const CG::DisplayListResource *a2, uint64_t a3)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v6 = *(this + 2);
  v7 = *(a2 + 2);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v7 || v6 != v7 && !CG::DisplayList::isEqualTo((v6 + 16), (v7 + 16), a3))
  {
    return 0;
  }

LABEL_7:

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceFunction::_equal_to(CG::DisplayListResourceFunction *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceFunction::~DisplayListResourceFunction(CG::DisplayListResourceFunction *this)
{
  *this = &unk_1EF23F6E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F6E8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceSoftMask::_equal_to(CG::DisplayListResourceSoftMask *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceSoftMask::getChildResources(CG::DisplayListResourceSoftMask *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v2 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_1840AD5DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL CG::DisplayListResourceGradient::_equal_to(CG::DisplayListResourceGradient *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || *(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceGradient::getChildResources(CG::DisplayListResourceGradient *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 3))
  {
    v2 = *(this + 3);
    std::vector<CG::DisplayListResource const*>::push_back[abi:fe200100](a2, &v2);
  }
}

void sub_1840AD73C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CG::DisplayListResourceGradient::~DisplayListResourceGradient(CG::DisplayListResourceGradient *this)
{
  *this = &unk_1EF23F658;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F658;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL CG::DisplayListResourceFont::_equal_to(CG::DisplayListResourceFont *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v4 + 24);
      if (v6 || (atomic_compare_exchange_strong_explicit((v4 + 24), &v6, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed), v6 = *(v4 + 24), (v5 = *(a2 + 2)) != 0))
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          atomic_compare_exchange_strong_explicit((v5 + 24), &v7, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
          v7 = *(v5 + 24);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceDash::_equal_to(CG::DisplayListResourceDash *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5 || CGDashCompare(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return CG::DisplayListResource::_equal_to(this, a2);
}

void CG::DisplayListResourceDash::~DisplayListResourceDash(CG::DisplayListResourceDash *this)
{
  *this = &unk_1EF23F5C8;
  v1 = *(this + 2);
  if (v1 && atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    free(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F5C8;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v1);
    }
  }
}

BOOL CG::DisplayListResourceColorSpace::_equal_to(CG::DisplayListResourceColorSpace *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)) || *(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  return CG::DisplayListResource::_equal_to(this, a2);
}

BOOL CG::DisplayListResourceClip::_equal_to(CG::DisplayListResourceClip *this, const CG::DisplayListResource *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  if (!std::type_info::operator==[abi:fe200100](*(*(*this - 8) + 8), *(*(*a2 - 8) + 8)))
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 2);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v5 || !CGClipStackEquivalent(v4, v5))
  {
    return 0;
  }

LABEL_6:

  return CG::DisplayListResource::_equal_to(this, a2);
}

uint64_t boost::graph_detail::push<std::vector<boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>,boost::detail::stored_edge_iter<unsigned long,std::__list_iterator<boost::list_edge<unsigned long,boost::no_property>,void *>,boost::no_property>>(uint64_t a1, _OWORD *a2)
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
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
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

      std::__throw_bad_array_new_length[abi:fe200100]();
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
  return 1;
}

uint64_t boost::vec_adj_list_impl<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config,boost::bidirectional_graph_helper_with_property<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config>>::~vec_adj_list_impl(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v3);
  std::__list_imp<unsigned long>::clear(a1);
  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<boost::detail::adj_list_gen<boost::adjacency_list<boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>,boost::vecS,boost::vecS,boost::bidirectionalS,boost::property<boost::vertex_color_t,boost::default_color_type,boost::no_property>,boost::no_property,boost::no_property,boost::listS>::config::stored_vertex>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CG::CGDLResourceType>,void *>>>::operator()[abi:fe200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void CG::DisplayListXMLDeserializer::~DisplayListXMLDeserializer(CG::DisplayListXMLDeserializer *this)
{
  CG::DisplayListXMLDeserializer::~DisplayListXMLDeserializer(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239990;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__tree<unsigned long>::destroy(*(this + 8));
  std::__tree<unsigned long>::destroy(*(this + 5));
  *this = &unk_1EF239A68;
  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void CIDFontType2::emit_definitions(CIDFontType2 *this)
{
  if (*(this + 17))
  {
    v2 = *(this + 1);
    v3 = *v2;
    v4 = PDFXRefTableAddObject(*(*v2 + 504));
    PDFDocumentBeginObject(v3, *(this + 14));
    PDFDocumentPrintf(v3, "<<");
    PDFDocumentPrintf(v3, "/Type /Font");
    PDFDocumentPrintf(v3, "/Subtype /Type0");
    PDFDocumentPrintf(v3, "/Encoding /Identity-H");
    PDFDocumentPrintReference(v3, "/DescendantFonts [%R]", v4);
    v5 = (this + 88);
    v6 = this + 88;
    if (*(this + 111) < 0)
    {
      v6 = *v5;
    }

    PDFDocumentPrintf(v3, "/BaseFont /%N", v6);
    v7 = PDFXRefTableAddObject(*(v3 + 504));
    PDFDocumentPrintReference(v3, "/ToUnicode %R", v7);
    PDFDocumentPrintf(v3, ">>");
    PDFDocumentEndObject(v3);
    v57 = this;
    ToUnicode::write<std::set<unsigned short>>(&v57, v7, this + 15);
    v8 = **(this + 1);
    PDFDocumentBeginObject(v8, v4);
    PDFDocumentPrintf(v8, "<<");
    PDFDocumentPrintf(v8, "/Type /Font");
    PDFDocumentPrintf(v8, "/Subtype /CIDFontType2");
    v9 = this + 88;
    if (*(this + 111) < 0)
    {
      v9 = *v5;
    }

    PDFDocumentPrintf(v8, "/BaseFont /%N", v9);
    v10 = **(this + 1);
    PDFDocumentPrintf(v10, "/CIDSystemInfo <<");
    PDFDocumentPrintf(v10, "/Registry %T", @"Adobe");
    PDFDocumentPrintf(v10, "/Ordering %T", @"Identity");
    PDFDocumentPrintf(v10, "/Supplement 0");
    PDFDocumentPrintf(v10, ">>");
    v11 = PDFXRefTableAddObject(*(v8 + 504));
    PDFDocumentPrintReference(v8, "/W %R", v11);
    PDFDocumentPrintf(v8, "/DW %d", 1000);
    FontDescriptor::FontDescriptor(v55, this, 0);
    PDFDocumentPrintReference(v8, "/FontDescriptor %R", v56);
    v12 = *(this + 2);
    if (v12 && (explicit = atomic_load_explicit((v12 + 88), memory_order_acquire)) != 0 && CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontData"))
    {
      v53 = 0;
    }

    else
    {
      v53 = PDFXRefTableAddObject(*(v8 + 504));
      PDFDocumentPrintReference(v8, "/CIDToGIDMap %R", v53);
    }

    PDFDocumentPrintf(v8, ">>");
    PDFDocumentEndObject(v8);
    v14 = **(this + 1);
    PDFDocumentBeginObject(v14, v11);
    PDFDocumentPrintf(v14, "[");
    v58[0] = 0;
    v58[1] = 0;
    v57 = v58;
    font_info = get_font_info(*(this + 2));
    v54 = (this + 88);
    if (font_info)
    {
      v16 = font_info[2];
    }

    else
    {
      v16 = 0.0;
    }

    v17 = *(this + 15);
    v18 = this + 128;
    if (v17 != this + 128)
    {
      do
      {
        advances = 0;
        glyphs = *(v17 + 13);
        CGFontGetGlyphAdvances(*(this + 2), &glyphs, 1uLL, &advances);
        v19 = advances;
        p_glyphs = &glyphs;
        *(std::__tree<std::__value_type<unsigned short,int>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,int>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v57, glyphs, &p_glyphs) + 8) = (((1000 * v19) / v16) + 0.5);
        v20 = *(v17 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v17 + 2);
            v22 = *v21 == v17;
            v17 = v21;
          }

          while (!v22);
        }

        v17 = v21;
      }

      while (v21 != v18);
    }

    v23 = v57;
    while (v23 != v58)
    {
      v24 = v23;
      v25 = *(v23 + 14);
      v26 = 1;
      v27 = *(v23 + 14);
      v28 = v23;
      while (*(v28 + 14) == v27)
      {
        v29 = *(v28 + 8) == *(v24 + 8);
        v30 = v28[1];
        if (v30)
        {
          do
          {
            v23 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v23 = v28[2];
            v22 = *v23 == v28;
            v28 = v23;
          }

          while (!v22);
        }

        v26 &= v29;
        ++v27;
        v28 = v23;
        if (v23 == v58)
        {
          if (v26)
          {
            goto LABEL_31;
          }

          goto LABEL_34;
        }
      }

      v23 = v28;
      if (v26)
      {
LABEL_31:
        if (*(v24 + 8) != 1000)
        {
          PDFDocumentPrintf(v14, "%d", v25);
          PDFDocumentPrintf(v14, "%d", v27 - 1);
          PDFDocumentPrintf(v14, "%d");
        }

        continue;
      }

LABEL_34:
      PDFDocumentPrintf(v14, "%d [", v25);
      if (v24 != v23)
      {
        do
        {
          PDFDocumentPrintf(v14, "%d", *(v24 + 8));
          v31 = v24[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v24[2];
              v22 = *v32 == v24;
              v24 = v32;
            }

            while (!v22);
          }

          v24 = v32;
        }

        while (v32 != v23);
      }

      PDFDocumentPrintf(v14, "]");
    }

    PDFDocumentPrintf(v14, "]");
    PDFDocumentEndObject(v14);
    std::__tree<unsigned long>::destroy(v58[0]);
    v33 = PDFXRefTableAddObject(*(v8 + 504));
    FontDescriptor::emit_definition(v55, v54, v33);
    v34 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040C7309667uLL);
    *v34 = 1;
    v35 = *(this + 15);
    if (v35 != v18)
    {
      do
      {
        CGFontIndexSetAddIndex(v34, *(v35 + 13));
        v36 = *(v35 + 1);
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
            v37 = *(v35 + 2);
            v22 = *v37 == v35;
            v35 = v37;
          }

          while (!v22);
        }

        v35 = v37;
      }

      while (v37 != v18);
    }

    embedded_font = PDFFont::create_embedded_font(this, v54, v34, 0, *(this + 18));
    CGFontIndexSetRelease(v34);
    if (embedded_font)
    {
      Length = CFDataGetLength(embedded_font);
      if ((Length - 0x80000000) >= 0xFFFFFFFF80000001)
      {
        v40 = Length;
        v41 = **(this + 1);
        v42 = PDFStreamCreateWithObjectNumber(v41, v33);
        PDFDocumentBeginObject(*v42, v42[1]);
        PDFDocumentPrintf(*v42, "<<");
        PDFDocumentPrintf(v41, "/Length1 %d", v40);
        PDFStreamBeginData(v42);
        BytePtr = CFDataGetBytePtr(embedded_font);
        CGDataConsumerPutBytes(v42[3], BytePtr, v40);
        PDFStreamEndData(v42);
        PDFStreamEnd(v42);
        PDFStreamRelease(v42);
      }

      CFRelease(embedded_font);
    }

    if (v53)
    {
      v44 = PDFStreamCreateWithObjectNumber(**(this + 1), v53);
      PDFDocumentBeginObject(*v44, v44[1]);
      PDFDocumentPrintf(*v44, "<<");
      PDFStreamBeginData(v44);
      v45 = *(this + 16);
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *(v45 + 1);
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = *(v18 + 2);
          v22 = *v46 == v18;
          v18 = v46;
        }

        while (v22);
      }

      v47 = 0;
      v48 = *(v46 + 13);
      do
      {
        v49 = *(this + 18);
        if (v49)
        {
          if (v49 == -1)
          {
            LOBYTE(v50) = HIBYTE(v47);
            LOBYTE(v51) = v47;
          }

          else
          {
            v52 = atomic_load(&v49[4 * (v47 >> 10) + 4]);
            if (v52)
            {
              v51 = *(v52 + 2 * (v47 & 0x3FF));
            }

            else
            {
              v51 = *v49;
            }

            v50 = v51 >> 8;
          }
        }

        else
        {
          LOBYTE(v51) = -1;
          LOBYTE(v50) = -1;
        }

        LOBYTE(v57) = v50;
        BYTE1(v57) = v51;
        CGDataConsumerPutBytes(v44[3], &v57, 2);
        ++v47;
      }

      while (v48 >= v47);
      PDFStreamEndData(v44);
      PDFStreamEnd(v44);
      PDFStreamRelease(v44);
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,int>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,int>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t **a1, unsigned __int16 a2, _WORD **a3)
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
      v5 = *(v3 + 14);
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

void CIDFontType2::emit_references(uint64_t this)
{
  if (*(this + 136))
  {
    v1 = (this + 64);
    if (*(this + 87) < 0)
    {
      v1 = *v1;
    }

    PDFDocumentPrintNameReferencePair(**(this + 8), "/%N %R", v1, *(this + 112));
  }
}

uint64_t *CIDFontType2::add_glyphs_to_layout(uint64_t *result, void *a2, unsigned __int16 **a3)
{
  v3 = a3[1];
  v4 = *a3;
  if (v3 != *a3)
  {
    do
    {
      v7 = result[16];
      v8 = result + 16;
      if (result[15] == result + 16)
      {
        goto LABEL_8;
      }

      v9 = result[16];
      v10 = result + 16;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = *(v9 + 8);
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      v12 = *v4;
      if (*(v8 + 13) < v12)
      {
LABEL_8:
        if (v7)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = result + 16;
        }
      }

      else
      {
        v13 = result + 16;
        if (v7)
        {
          v13 = result + 16;
          while (1)
          {
            while (1)
            {
              v14 = v7;
              v15 = *(v7 + 26);
              if (v12 >= v15)
              {
                break;
              }

              v7 = *v14;
              v13 = v14;
              if (!*v14)
              {
                goto LABEL_12;
              }
            }

            if (v15 >= v12)
            {
              break;
            }

            v13 = v14 + 1;
            v7 = v14[1];
            if (!v7)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_12:
        operator new();
      }

      ++v4;
    }

    while (v4 != v3);
    v16 = *a3;
    if (a3[1] == *a3)
    {
      __break(1u);
    }

    else
    {
      v17 = (result + 8);
      if (*(result + 87) < 0)
      {
        v17 = *v17;
      }

      v6 = v3 - *a3;

      return layout_append_data(a2, v17, 2, v16, v6);
    }
  }

  return result;
}

void CIDFontType2::~CIDFontType2(CIDFontType2 *this)
{
  CIDFontType2::~CIDFontType2(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23A618;
  CGFontIndexMapRelease(*(this + 18));
  std::__tree<unsigned long>::destroy(*(this + 16));
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  PDFFont::~PDFFont(this);
}

float *filterAngles(float *result)
{
  v1 = *(result + 16);
  v2 = *v1;
  if (*v1)
  {
    v3 = result;
    v4 = *(result + 18);
    if (v2 < 1)
    {
      goto LABEL_11;
    }

    v5 = 0;
    v6 = *(v1 + 8);
    do
    {
      v7 = v5 + 1;
      if (v5 + 1 >= v2)
      {
        v8 = v2;
      }

      else
      {
        v8 = 0;
      }

      v9 = &v6[-2 * v8];
      v10 = *v6;
      v11 = v6[1];
      v6 += 2;
      v12 = atan2((v9[3] - v11), (v9[2] - v10)) * 0.159154937;
      if (v12 < 0.0)
      {
        v12 = v12 + 1.0;
      }

      v4[v5++] = v12;
    }

    while (v2 != v7);
    if (v2 > 23)
    {
      if (v2 > 0x37)
      {
        filterAngleBuffer(v4, *(v3 + 22), v2, 3, v3[7]);
        v16 = *(v3 + 22);
        v15 = v3[7];
        if (v2 > 0x77)
        {
          filterAngleBuffer(v16, *(v3 + 23), v2, 7, v15);
          v16 = *(v3 + 23);
          v14 = *(v3 + 19);
          v15 = v3[7];
          v17 = v2;
          v18 = 15;
        }

        else
        {
          v14 = *(v3 + 19);
          v17 = v2;
          v18 = 7;
        }
      }

      else
      {
        v14 = *(v3 + 19);
        v15 = v3[7];
        v16 = v4;
        v17 = v2;
        v18 = 3;
      }

      return filterAngleBuffer(v16, v14, v17, v18, v15);
    }

    else
    {
LABEL_11:
      v13 = *(v3 + 19);

      return memmove(v13, v4, 4 * v2);
    }
  }

  return result;
}

float *filterAngleBuffer(float *result, float *a2, int a3, int a4, float a5)
{
  v5 = 0;
  v6 = result;
  do
  {
    v7 = *v6;
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v9 = v5 + v8;
    ++v5;
    v10 = v9 - 1;
    if (v5 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    v12 = v5 - v11;
    v13 = 1;
    v14 = a4;
    v15 = *v6;
    do
    {
      v16 = result[v12] - rintf(result[v12] - v7);
      v17 = vabds_f32(v16, v7);
      v18 = v15 + v16;
      if (v17 < a5)
      {
        ++v13;
        v15 = v18;
      }

      v19 = result[v10] - rintf(result[v10] - v7);
      v20 = vabds_f32(v19, v7);
      v21 = v19 + v15;
      if (v20 < a5)
      {
        ++v13;
        v15 = v21;
      }

      v22 = v12 + 1;
      if (v22 >= a3)
      {
        v23 = a3;
      }

      else
      {
        v23 = 0;
      }

      v12 = v22 - v23;
      if (v10 <= 0)
      {
        v24 = a3;
      }

      else
      {
        v24 = 0;
      }

      v10 = v10 + v24 - 1;
      --v14;
    }

    while (v14);
    *a2++ = (v15 / v13) - floorf(v15 / v13);
    ++v6;
  }

  while (v5 != a3);
  return result;
}

void *createPath(CGImage *a1, int a2, unint64_t a3, unint64_t a4, unsigned __int32 *a5, double a6, double a7)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  *whitePoint = xmmword_1844DEA30;
  v112 = 0x3FEA6594AF4F0D84;
  CalibratedGray = CGColorSpaceCreateCalibratedGray(whitePoint, 0, 2.2);
  if (!CalibratedGray)
  {
    v29 = "Error allocating color space";
LABEL_20:
    printf(" ***** %s in autoTrace\n", v29);
    return 0;
  }

  v17 = CalibratedGray;
  v18 = malloc_type_malloc(v15 * v14, 0x3D84BDE0uLL);
  v19 = v18;
  if (!v18)
  {
    printf(" ***** %s in autoTrace\n", "Memory not allocated!");
    CGColorSpaceRelease(v17);
    return v19;
  }

  v109 = v15 * v14;
  v20 = CGBitmapContextCreateWithData(v18, v14, v15, 8uLL, v14, v17, 0, 0, 0);
  if (!v20)
  {
    free(v19);
    CGColorSpaceRelease(v17);
    v29 = "Context not created!";
    goto LABEL_20;
  }

  v21 = v20;
  CGColorSpaceRelease(v17);
  v115.size.width = v14;
  v115.size.height = v15;
  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  CGContextDrawImage(v21, v115, a1);
  v22 = v21;
  if (*(v21 + 4) != 1129601108 || *(v21 + 6) != 4)
  {
    handle_invalid_context("CGBitmapContextGetData", v21);
    goto LABEL_17;
  }

  v23 = *(*(v21 + 4) + 64);
  if (!v23 || (v24 = malloc_type_malloc(0x100uLL, 0x10A00400CDB8DDBuLL)) == 0)
  {
LABEL_17:
    v30 = v22;
LABEL_18:
    CFRelease(v30);
    return 0;
  }

  v25 = v24;
  v26 = a7;
  v24[14] = 0u;
  v24[15] = 0u;
  v24[12] = 0u;
  v24[13] = 0u;
  v24[10] = 0u;
  v24[11] = 0u;
  v24[8] = 0u;
  v24[9] = 0u;
  v24[6] = 0u;
  v24[7] = 0u;
  v24[4] = 0u;
  v24[5] = 0u;
  v24[2] = 0u;
  v24[3] = 0u;
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 9) = 1084227584;
  *(v24 + 8) = v26;
  *(v24 + 10) = v26;
  *(v24 + 6) = v15;
  *(v24 + 7) = 1034147594;
  v27 = malloc_type_malloc(0xC80uLL, 0x1020040F48FCA59uLL);
  *(v25 + 64) = v27;
  if (!v27)
  {
    printf(" ***** %s in autoTrace\n", "could not allocate extract polygons point list");
LABEL_26:
    printf(" ***** %s in autoTrace\n", "could not initialize AutoTrace environment");
    termAutoTraceEnvironment(v25);
    goto LABEL_17;
  }

  *(v25 + 56) = 0x6400000000;
  *(v25 + 72) = -1;
  if (!initOpenEndList((v25 + 96)))
  {
LABEL_25:
    termPolygonList(v25);
    goto LABEL_26;
  }

  if (!initOpenEndList((v25 + 112)))
  {
    free(*(v25 + 104));
    goto LABEL_25;
  }

  *(v25 + 80) = 0;
  *(v25 + 92) = 0;
  *(v25 + 48) = CGPathCreateMutable();
  *v25 = a3;
  *(v25 + 8) = a4;
  cf = v22;
  v103 = v23;
  if (a5)
  {
    v28 = *a5;
    *(v25 + 20) = *(a5 + 4);
    *(v25 + 16) = v28;
  }

  else
  {
    *(v25 + 20) = 0;
    *(v25 + 16) = 0;
  }

  v32 = v14;
  v33 = v15;
  v34 = a6;
  if (v34 == 1.0)
  {
    v35 = 0.9999;
  }

  else
  {
    v35 = a6;
  }

  bzero(v113, 0x400uLL);
  if (v15 << 32)
  {
    v36 = 0;
    v37 = v23;
    do
    {
      if (v14 << 32)
      {
        v38 = 0;
        do
        {
          ++v113[v37[v38++]];
        }

        while (v14 != v38);
      }

      ++v36;
      v37 += v14;
    }

    while (v36 != v15);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  do
  {
    v42 = v113[v39];
    if (v42 > v40)
    {
      v40 = v113[v39];
    }

    if (v42 > v41)
    {
      v40 = v41;
    }

    else
    {
      v42 = v41;
    }

    ++v39;
    v41 = v42;
  }

  while (v39 != 256);
  v43 = 0;
  v44 = 0;
  if (a2)
  {
    v45 = 255;
  }

  else
  {
    v45 = 0;
  }

  v46 = vcvtms_s32_f32(v35 * 255.0);
  v47 = &v23[(v33 - 1) * v32];
  if (v32 + 1 > 1)
  {
    v48 = v32 + 1;
  }

  else
  {
    v48 = 1;
  }

  if (v33 + 1 > 1)
  {
    v49 = v33 + 1;
  }

  else
  {
    v49 = 1;
  }

  v107 = &v23[(v33 - 1) * v32];
  v50 = v23;
  do
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = v45;
      if (v43)
      {
        v53 = v45;
        if (v32 != v52)
        {
          v53 = v47[v52];
        }
      }

      v54 = v45;
      if (v43 != v33)
      {
        v54 = v45;
        if (v32 != v52)
        {
          v54 = v50[v52];
        }
      }

      v55 = v53 < v46;
      v56 = v53 <= v46;
      v57 = !v55;
      v55 = v54 < v46;
      v58 = v54 <= v46;
      v59 = !v55;
      if (!a2)
      {
        v58 = v59;
        v56 = v57;
      }

      if (v56)
      {
        v60 = 4;
      }

      else
      {
        v60 = 0;
      }

      v61 = v60 | v58;
      v62 = v61 | v51;
      if (v62 == 9 || v62 == 6)
      {
        v64 = 2;
      }

      else
      {
        v64 = 1;
      }

      v65 = v64 + v44;
      if (v62)
      {
        v66 = v62 == 15;
      }

      else
      {
        v66 = 1;
      }

      if (!v66)
      {
        v44 = v65;
      }

      v51 = 2 * v61;
      ++v52;
    }

    while (v48 != v52);
    ++v43;
    v47 = v50;
    v50 += v32;
  }

  while (v43 != v49);
  v67 = 0;
  v68 = vcvtms_s32_f32((v35 * 4.0) * 255.0);
  *(v25 + 44) = ((v109 - (v42 + v40)) / v44) < 4.5;
  v108 = v23;
  v104 = v68;
  v106 = v25;
  while (2)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    *(v25 + 92) = 0;
    v73 = v67 + -0.5;
    v74 = v67 + 0.5;
    v75 = v45;
    v76 = v45;
    v105 = v67;
    do
    {
      v77 = v76;
      v78 = v75;
      v76 = v45;
      if (v67)
      {
        v76 = v45;
        if (v32 != v72)
        {
          v76 = v107[v72];
        }
      }

      v75 = v45;
      if (v67 != v33)
      {
        v75 = v45;
        if (v32 != v72)
        {
          v75 = v108[v72];
        }
      }

      v79 = v77 + v78 + v76 + v75;
      if (a2)
      {
        v80 = v76 <= v46;
        v81 = v75 <= v46;
        v82 = v79 <= v68;
      }

      else
      {
        v80 = v76 >= v46;
        v81 = v75 >= v46;
        v82 = v79 >= v68;
      }

      if (v80)
      {
        v83 = 4;
      }

      else
      {
        v83 = 0;
      }

      v84 = v71 | v81 | v83;
      if (v84 && v84 != 15)
      {
        v85 = 0.0;
        v86 = 0.0;
        if (v69 != v80)
        {
          v86 = -(v77 - (v35 * 255.0)) / (v76 - v77);
        }

        if (v69 != v70)
        {
          v85 = -(v77 - (v35 * 255.0)) / (v78 - v77);
        }

        v87 = 0.0;
        v88 = 0.0;
        if (v81 != v80)
        {
          v88 = -(v76 - (v35 * 255.0)) / (v75 - v76);
        }

        if (v70 != v81)
        {
          v87 = -(v78 - (v35 * 255.0)) / (v75 - v78);
        }

        v89 = v72 + -0.5;
        v90 = v89 + v86;
        v91 = v73 + v85;
        v92 = v73 + v88;
        v93 = v89 + v87;
        v110 = v80;
        switch(v84)
        {
          case 2:
          case 13:
            v94 = actionD(v106, v72 + -0.5, v91, v89 + v87, v74);
            goto LABEL_123;
          case 3:
          case 12:
            v94 = actionE(v106, v72 + -0.5, v91, v72 + 0.5, v73 + v88);
            goto LABEL_123;
          case 4:
          case 11:
            goto LABEL_122;
          case 5:
          case 10:
            v94 = actionC(v106, v89 + v86, v73, v89 + v87, v74);
            goto LABEL_123;
          case 6:
            if (!v82)
            {
              goto LABEL_121;
            }

            if (actionA(v106, v89 + v86, v73, v89, v91))
            {
              goto LABEL_119;
            }

            goto LABEL_127;
          case 7:
          case 8:
            v94 = actionA(v106, v89 + v86, v73, v89, v91);
            goto LABEL_123;
          case 9:
            if (v82)
            {
LABEL_121:
              if (!actionD(v106, v72 + -0.5, v91, v89 + v87, v74))
              {
                goto LABEL_127;
              }

LABEL_122:
              v94 = actionB(v106, v90, v73, v72 + 0.5, v92);
            }

            else
            {
              if (!actionA(v106, v89 + v86, v73, v89, v91))
              {
                goto LABEL_127;
              }

LABEL_116:
              v95 = v106;
              v96 = v72 + 0.5;
              v97 = v92;
              v98 = v93;
              v99 = v74;
              v100 = 0;
LABEL_120:
              v94 = actionF(v95, v100, v96, v97, v98, v99);
            }

LABEL_123:
            v80 = v110;
            v68 = v104;
            v67 = v105;
            if (v94)
            {
              goto LABEL_124;
            }

LABEL_127:
            printf(" ***** %s in autoTrace\n", "errors during bitmapToPolygons");
            termAutoTraceEnvironment(v106);
            v30 = cf;
            break;
          case 14:
LABEL_119:
            v95 = v106;
            v96 = v72 + 0.5;
            v97 = v92;
            v98 = v93;
            v99 = v74;
            v100 = 1;
            goto LABEL_120;
          default:
            goto LABEL_116;
        }

        goto LABEL_18;
      }

LABEL_124:
      v71 = (2 * v84) & 0xA;
      ++v72;
      v69 = v80;
      v70 = v81;
    }

    while (v72 <= v32);
    v25 = v106;
    v101 = *(v106 + 96);
    *(v106 + 96) = *(v106 + 112);
    *(v106 + 112) = v101;
    *(v106 + 112) = 0;
    ++v67;
    v107 = v108;
    v108 += v32;
    if (v67 <= v33)
    {
      continue;
    }

    break;
  }

  CFRelease(cf);
  free(v103);
  v19 = *(v106 + 48);
  *(v106 + 48) = 0;
  termAutoTraceEnvironment(v106);
  return v19;
}

BOOL initOpenEndList(void *a1)
{
  v2 = malloc_type_malloc(0xFA0uLL, 0x100004090D0E795uLL);
  a1[1] = v2;
  if (v2)
  {
    *a1 = 0x1F400000000;
  }

  else
  {
    printf(" ***** %s in autoTrace\n", "could not allocate extract polygons open end list");
  }

  return v2 != 0;
}

void termPolygonList(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 56) >= 1)
  {
    v3 = 0;
    v4 = v2 + 1;
    do
    {
      v5 = *v4;
      v4 += 4;
      free(v5);
      ++v3;
    }

    while (v3 < *(a1 + 56));
    v2 = *(a1 + 64);
  }

  free(v2);
}

void termAutoTraceEnvironment(uint64_t a1)
{
  freeAutoTraceStructures(a1);
  termPolygonList(a1);
  free(*(a1 + 104));
  free(*(a1 + 120));
  v2 = *(a1 + 192);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v3 = *(a1 + 208);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v4 = *(a1 + 224);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v5 = *(a1 + 240);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

uint64_t actionF(uint64_t a1, int a2, float a3, float a4, float a5, float a6)
{
  v12 = *(a1 + 72);
  if (v12 == -1)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 60);
    if (v14 >= v15)
    {
      v17 = malloc_type_malloc(32 * v15 + 3200, 0x1020040F48FCA59uLL);
      if (!v17)
      {
        v23 = "could not extend extract polygons list";
        goto LABEL_18;
      }

      v16 = v17;
      memmove(v17, *(a1 + 64), 32 * *(a1 + 60));
      *(a1 + 60) += 100;
      free(*(a1 + 64));
      *(a1 + 64) = v16;
      v14 = *(a1 + 56);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    v13 = v16 + 32 * v14;
    *(a1 + 56) = v14 + 1;
  }

  else
  {
    v13 = *(a1 + 64) + 32 * v12;
    *(a1 + 72) = *(v13 + 24);
  }

  v18 = malloc_type_malloc(0x190uLL, 0x100004000313F17uLL);
  *(v13 + 8) = v18;
  if (!v18)
  {
    v23 = "could not allocate extract polygons point list";
    goto LABEL_18;
  }

  *v13 = 0x3200000000;
  *(v13 + 16) = 25;
  *(v13 + 20) = 0;
  *(v13 + 24) = -2;
  v19 = *(a1 + 64);
  result = addPointAtEnd(v13);
  if (result)
  {
    v21 = result;
    result = addPointAtEnd(v13);
    if (result)
    {
      if (a2)
      {
        *v21 = a5;
        v21[1] = a6;
        if (*(a1 + 80) != 1)
        {
          v22 = 0;
          a5 = a3;
          a6 = a4;
          goto LABEL_21;
        }
      }

      else
      {
        *v21 = a3;
        v21[1] = a4;
        if ((*(a1 + 80) & 1) == 0)
        {
          v22 = 1;
LABEL_21:
          *(a1 + 80) = 1;
          v24 = (v13 - v19) >> 5;
          *(a1 + 84) = v24;
          *(a1 + 88) = v22;
          *result = a5;
          *(result + 4) = a6;
          result = newOpenEnd((a1 + 112));
          if (result)
          {
            *result = v24;
            *(result + 4) = a2 == 1;
            return 1;
          }

          return result;
        }
      }

      v23 = "attempt to leave an open left end when a left end is already open";
LABEL_18:
      printf(" ***** %s in autoTrace\n", v23);
      return 0;
    }
  }

  return result;
}

uint64_t actionD(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v16 = "attempt to connect to a left end when there is no left end open";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v16);
    return 0;
  }

  v8 = *(a1 + 84);
  v9 = *(a1 + 88);
  v10 = *(a1 + 64) + 32 * v8;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  if (v9 == 1)
  {
    v13 = (v11 + 8 * v12);
    if (*v13 != a2 || v13[1] != a3)
    {
LABEL_15:
      v16 = "left end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v10);
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  v17 = v11 + 8 * (*v10 + v12);
  if (*(v17 - 8) != a2 || *(v17 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v10);
  if (result)
  {
LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    *(a1 + 80) = 0;
    result = newOpenEnd((a1 + 112));
    if (result)
    {
      *result = v8;
      *(result + 4) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t actionE(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v16 = "attempt to connect to a left end when there is no left end open";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v16);
    return 0;
  }

  v8 = *(a1 + 84);
  v9 = *(a1 + 88);
  v10 = *(a1 + 64) + 32 * v8;
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  if (v9 == 1)
  {
    v13 = (v11 + 8 * v12);
    if (*v13 != a2 || v13[1] != a3)
    {
LABEL_15:
      v16 = "left end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v10);
    if (!result)
    {
      return result;
    }

LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    result = 1;
    *(a1 + 80) = 1;
    *(a1 + 84) = v8;
    *(a1 + 88) = v9;
    return result;
  }

  v17 = v11 + 8 * (*v10 + v12);
  if (*(v17 - 8) != a2 || *(v17 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v10);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t actionB(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (*(a1 + 80) == 1)
  {
    v5 = "no connection to open left end";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v5);
    return 0;
  }

  v9 = *(a1 + 92);
  v10 = (*(a1 + 104) + 8 * v9);
  *(a1 + 92) = v9 + 1;
  v11 = *v10;
  v12 = *(v10 + 4);
  v13 = *(a1 + 64) + 32 * v11;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  if (v12 == 1)
  {
    v16 = (v14 + 8 * v15);
    if (*v16 != a2 || v16[1] != a3)
    {
LABEL_15:
      v5 = "top open end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v13);
    if (!result)
    {
      return result;
    }

LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    result = 1;
    *(a1 + 80) = 1;
    *(a1 + 84) = v11;
    *(a1 + 88) = v12;
    return result;
  }

  v19 = v14 + 8 * (*v13 + v15);
  if (*(v19 - 8) != a2 || *(v19 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v13);
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t actionC(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (*(a1 + 80) == 1)
  {
    v5 = "no connection to open left end";
LABEL_16:
    printf(" ***** %s in autoTrace\n", v5);
    return 0;
  }

  v9 = *(a1 + 92);
  v10 = (*(a1 + 104) + 8 * v9);
  *(a1 + 92) = v9 + 1;
  v11 = *v10;
  v12 = *(v10 + 4);
  v13 = *(a1 + 64) + 32 * v11;
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  if (v12 == 1)
  {
    v16 = (v14 + 8 * v15);
    if (*v16 != a2 || v16[1] != a3)
    {
LABEL_15:
      v5 = "top open end point does not match connected point";
      goto LABEL_16;
    }

    result = addPointAtStart(v13);
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  v19 = v14 + 8 * (*v13 + v15);
  if (*(v19 - 8) != a2 || *(v19 - 4) != a3)
  {
    goto LABEL_15;
  }

  result = addPointAtEnd(v13);
  if (result)
  {
LABEL_19:
    *result = a4;
    *(result + 4) = a5;
    *(a1 + 80) = 0;
    result = newOpenEnd((a1 + 112));
    if (result)
    {
      *result = v11;
      *(result + 4) = v12;
      return 1;
    }
  }

  return result;
}

uint64_t actionA(void *a1, float a2, float a3, float a4, float a5)
{
  if ((a1[10] & 1) == 0)
  {
    v17 = "attempt to connect to a left end when there is no left end open";
LABEL_13:
    printf(" ***** %s in autoTrace\n", v17);
    return 0;
  }

  v8 = *(a1 + 23);
  v9 = (a1[13] + 8 * v8);
  *(a1 + 23) = v8 + 1;
  v10 = *v9;
  v11 = *(v9 + 4);
  v12 = (a1[8] + 32 * v10);
  v13 = *(v12 + 1);
  v14 = v12[4];
  if (v11 == 1)
  {
    v15 = &v13[8 * v14];
    v16 = v15 + 1;
  }

  else
  {
    v18 = &v13[8 * *v12 + 8 * v14];
    v15 = (v18 - 8);
    v16 = (v18 - 4);
  }

  if (*v15 != a2 || *v16 != a3)
  {
    v17 = "top open end point does not match connected point";
    goto LABEL_13;
  }

  if (*(a1 + 88) == v11)
  {
    v17 = "polygon front/back ends should be opposite on closure";
    goto LABEL_13;
  }

  if (*(a1 + 21) == v10)
  {
    if (*(a1 + 88))
    {
      v21 = &v13[8 * v14];
      v22 = v21 + 1;
    }

    else
    {
      v24 = &v13[8 * *v12 + 8 * v14];
      v21 = (v24 - 8);
      v22 = (v24 - 4);
    }

    if (*v21 != a4 || *v22 != a5)
    {
      v17 = "left end point does not match connected point";
      goto LABEL_13;
    }

    v26 = *v12;
    v27 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
    if (!v27)
    {
      v17 = "could not trim extract polygons point list";
      goto LABEL_13;
    }

    v28 = v27;
    memmove(v27, &v13[8 * v12[4]], 8 * v26);
    v12[4] = 0;
    v12[1] = v26;
    free(v13);
    *(v12 + 1) = v28;
    *(v12 + 20) = 1;
    v29 = *v12;
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = v28;
      while (v30)
      {
        if ((((v32[1] - *(v32 - 1)) * (v32[1] - *(v32 - 1))) + ((*v32 - *(v32 - 2)) * (*v32 - *(v32 - 2)))) > 0.1)
        {
          if (v30 != v31)
          {
            v33 = *v32;
            goto LABEL_40;
          }

          goto LABEL_41;
        }

LABEL_42:
        ++v30;
        v32 += 2;
        if (v29 == v30)
        {
          goto LABEL_76;
        }
      }

      if (v31)
      {
        v33 = *v28;
LABEL_40:
        *&v28[2 * v31] = v33;
      }

LABEL_41:
      ++v31;
      goto LABEL_42;
    }

    v31 = 0;
LABEL_76:
    v63 = v31 - ((((v28[1] - v28[2 * v29 - 1]) * (v28[1] - v28[2 * v29 - 1])) + ((*v28 - v28[2 * v29 - 2]) * (*v28 - v28[2 * v29 - 2]))) <= 0.1);
    *v12 = v63;
    if (v63 <= 2)
    {
      goto LABEL_77;
    }

    v64 = *(v12 + 1);
    if (*(a1 + 44) == 1)
    {
      v65 = vdup_n_s32(0x3FDCED92u);
      v66 = vdup_n_s32(0xC025B22E);
      v67 = vdup_n_s32(0x3FEE76C9u);
      v68 = v63;
      v69 = *(v12 + 1);
      do
      {
        v70 = vrndm_f32(*v69);
        v71 = vsub_f32(*v69, v70);
        *v69++ = vadd_f32(v70, vmla_f32(vmla_f32(vmul_f32(v71, vmul_f32(v71, v66)), v71, vmul_f32(v71, vmul_f32(v71, v65))), v67, v71));
        --v68;
      }

      while (v68);
    }

    v72 = *v64;
    v73 = vsub_f32(v64[v63 - 1], *v64);
    v74 = 0.0;
    v75 = v63;
    do
    {
      v76 = *v64++;
      v77 = vsub_f32(v76, v72);
      v74 = v74 + vmul_lane_f32(vsub_f32(v77, v73), vadd_f32(v77, v73), 1).f32[0] * 0.5;
      v73 = v77;
      --v75;
    }

    while (v75);
    if (v63 <= *(a1 + 34))
    {
      a1[16] = v12;
    }

    else
    {
      freeAutoTraceStructures(a1);
      a1[16] = v12;
      v78 = *v12;
      a1[18] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[22] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[23] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[19] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[20] = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      v79 = malloc_type_malloc(4 * v78, 0x100004052888210uLL);
      a1[21] = v79;
      if (!a1[18] || !a1[22] || !a1[23] || !a1[19] || !a1[20] || !v79)
      {
        printf(" ***** %s in autoTrace\n", "could not allocate auto trace structures");
        freeAutoTraceStructures(a1);
        return 0;
      }

      *(a1 + 34) = v78;
    }

    if (debug_auto_trace == 1 && *a1 && !(a1[1])(*a1, 0, a1))
    {
      goto LABEL_77;
    }

    if (fabsf(v74) < 3.0)
    {
      CGPathMoveToPoint(a1[6], 0, **(v12 + 1), *(*(v12 + 1) + 4));
      LODWORD(v80) = *v12;
      if (*v12 >= 1)
      {
        v81 = 0;
        v82 = 1;
        do
        {
          LODWORD(v83) = ++v81;
          if (v82 >= v80)
          {
            v83 = v82 - v80;
            if (v83 >= v80)
            {
              v83 %= v80;
            }
          }

          v84 = (*(v12 + 1) + 8 * v83);
          CGPathAddLineToPoint(a1[6], 0, *v84, v84[1]);
          v80 = *v12;
          v210 = v82++ < v80;
        }

        while (v210);
      }

      CGPathCloseSubpath(a1[6]);
LABEL_77:
      v12[6] = *(a1 + 18);
      *(a1 + 18) = (v12 - a1[8]) >> 5;
      free(*(v12 + 1));
      *v12 = 0;
      *(v12 + 1) = 0;
      goto LABEL_78;
    }

    filterAngles(a1);
    if (!initInterestingPointList(a1 + 26))
    {
      v17 = "failing initInterestingPointList";
      goto LABEL_13;
    }

    v85 = a1[16];
    v86 = *(v85 + 1);
    v87 = *v85;
    if (!initInterestingPointList(a1 + 28))
    {
      goto LABEL_132;
    }

    BYTE4(v328[0]) = 0;
    if (v87 >= 1)
    {
      v89 = 0;
      v90 = 0;
      LODWORD(v88) = 0;
      v91 = -1;
      do
      {
        v92 = 0;
        v93 = v89 + 1;
        if (v89 + 1 >= v87)
        {
          v94 = v87;
        }

        else
        {
          v94 = 0;
        }

        v95 = &v86[-2 * v94];
        if (vabds_f32(v95[3], v86[1]) >= 0.001)
        {
          if (vabds_f32(v95[2], *v86) < 0.001)
          {
            v92 = 1;
          }

          else
          {
            v92 = -1;
          }
        }

        if (v92 == v91)
        {
          v88 = (v88 + 1);
        }

        else
        {
          v96 = v93 + -v94;
          if (v91 == 1)
          {
            addVerticalLine(a1, v90, v96, v88, a1 + 28, v328 + 4);
          }

          else if (!v91)
          {
            addHorizontalLine(a1, v90, v96, v88, a1 + 28, v328 + 4);
          }

          if ((v328[0] & 0x100000000) != 0)
          {
            goto LABEL_132;
          }

          v88 = 1;
          v90 = v89;
          v91 = v92;
        }

        v86 += 2;
        ++v89;
      }

      while (v87 != v93);
      if (v91 == 1)
      {
        addVerticalLine(a1, v90, 0, v88, a1 + 28, v328 + 4);
      }

      else if (!v91)
      {
        addHorizontalLine(a1, v90, 0, v88, a1 + 28, v328 + 4);
      }
    }

    if ((v328[0] & 0x100000000) != 0)
    {
LABEL_132:
      v17 = "failing findOrthogonalLines";
      goto LABEL_13;
    }

    if (*(a1 + 59) >= 1)
    {
      v97 = 0;
      v98 = 0;
      do
      {
        insertPairIntoInterestingPoints(a1, (a1[28] + v98), (a1[28] + v98 + 8), a1 + 26, v328 + 4);
        if ((v328[0] & 0x100000000) != 0)
        {
          goto LABEL_132;
        }

        v98 += 16;
        v97 += 2;
      }

      while (*(a1 + 59) > v97);
    }

    v99 = a1[28];
    if (v99)
    {
      free(v99);
    }

    a1[28] = 0;
    a1[29] = 0;
    if (debug_auto_trace == 1 && *a1)
    {
      (a1[1])(*a1, 1, a1, v88);
    }

    if (debug_auto_trace_syntax == 1)
    {
      checkSyntax(a1, "findOrthogonalLines");
    }

    v100 = *a1[16];
    if (v100 >= 1)
    {
      v101 = 0;
      v102 = a1[18];
      v103 = a1[22];
      do
      {
        if (v101)
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

        v105 = v101 + v104 - 1;
        v106 = v101 + 1;
        if (v101 + 1 >= v100)
        {
          v107 = v100;
        }

        else
        {
          v107 = 0;
        }

        v108 = v106 - v107;
        if (v105 <= 0)
        {
          v109 = v100;
        }

        else
        {
          v109 = 0;
        }

        v110 = *(v102 + 4 * (v105 + v109 - 1));
        v111 = -2.0;
        v112 = -1.0;
        v113 = 0.0;
        v114 = 0.0;
        while (1)
        {
          v115 = v110;
          v110 = *(v102 + 4 * v105);
          v116 = v110 - v115;
          v117 = rintf(v110 - v115);
          v118 = (v110 - v115) - v117;
          v119 = vabds_f32(v116, v117);
          if (v119 <= v112)
          {
            v120 = v113;
            if (v119 <= v111)
            {
              v118 = v114;
              v121 = v112;
              v119 = v111;
            }

            else
            {
              v121 = v112;
            }
          }

          else
          {
            v120 = v118;
            v118 = v113;
            v121 = v119;
            v119 = v112;
          }

          if (v105 == v108)
          {
            break;
          }

          v122 = v105 + 1;
          if (v122 >= v100)
          {
            v123 = v100;
          }

          else
          {
            v123 = 0;
          }

          v105 = v122 - v123;
          v113 = v120;
          v114 = v118;
          v112 = v121;
          v111 = v119;
        }

        *(v103 + 4 * v101++) = v120 + v118;
      }

      while (v106 != v100);
    }

    a1[25] = 100;
    v124 = malloc_type_malloc(0x4B0uLL, 0x10000403E1C8BA9uLL);
    a1[24] = v124;
    if (!v124)
    {
      v316 = "could not allocate corner list";
LABEL_491:
      printf(" ***** %s in autoTrace\n", v316);
      goto LABEL_492;
    }

    if (v100 < 1)
    {
      goto LABEL_387;
    }

    v125 = 0;
    v323 = vdup_n_s32(v100 >> 1);
    v325 = vdup_n_s32(-(v100 >> 1));
    v322 = vdup_n_s32(v100);
    while (1)
    {
      v126 = *a1[16];
      v127 = v125 - 2;
      v128 = v125 - 2 - v126;
      if ((v125 - 2) >= v126)
      {
        if (v128 >= v126)
        {
          v128 %= v126;
        }
      }

      else if (v125 > 1)
      {
        LODWORD(v128) = v125 - 2;
      }

      else
      {
        LODWORD(v128) = v127 + v126;
        if ((v127 + v126) < 0)
        {
          LODWORD(v128) = v125 - 2;
          if (v126)
          {
            v128 = (v127 + v126) % v126 + v126;
          }
        }
      }

      if (v125)
      {
        v129 = 0;
      }

      else
      {
        v129 = *a1[16];
      }

      v130 = v125 + v129 - 1;
      v131 = v125 + 1;
      if ((v125 + 1) >= v126)
      {
        v132 = *a1[16];
      }

      else
      {
        v132 = 0;
      }

      v133 = v131 - v132;
      v134 = v125 + 2 - v126;
      if (v134 >= v126)
      {
        LODWORD(v134) = v134 % v126;
      }

      if ((v125 + 2) < v126)
      {
        LODWORD(v134) = v125 + 2;
      }

      v135 = a1[22];
      v136 = fabsf(*(v135 + 4 * v128));
      v137 = fabsf(*(v135 + 4 * v130));
      v138 = fabsf(*(v135 + 4 * v125));
      v139 = fabsf(*(v135 + 4 * v133));
      if (v137 == v138 && v136 < v138 && v139 < v138)
      {
        v160 = v138 * 0.75;
        if (v136 <= v160)
        {
          v161 = v130;
        }

        else
        {
          v161 = v128;
        }

        if (v139 <= v160)
        {
          v162 = v125;
        }

        else
        {
          v162 = v131 - v132;
        }

        v143 = a1[18];
      }

      else
      {
        if (v137 >= v138 || v139 >= v138)
        {
          goto LABEL_385;
        }

        v143 = a1[18];
        v144 = *(v143 + 4 * v130);
        v145 = *(v143 + 4 * v128);
        v146 = v144 - v145;
        v147 = rintf(v144 - v145);
        v148 = vabds_f32(v144 - v145, v147);
        v149 = *(v143 + 4 * v125);
        v150 = v149 - v144;
        v151 = rintf(v149 - v144);
        v152 = vabds_f32(v149 - v144, v151);
        v153 = *(v143 + 4 * v133);
        v154 = v153 - v149;
        v155 = rintf(v154);
        v156 = vabds_f32(v154, v155);
        if (v156 > v152 || (v157 = v125, v148 > v152))
        {
          if (v148 <= v156)
          {
            v157 = v133;
          }

          else
          {
            v157 = v130;
          }
        }

        v158 = v125 - 3;
        v159 = v125 - 3 - v126;
        if ((v125 - 3) >= v126)
        {
          if (v159 >= v126)
          {
            LODWORD(v159) = v159 % v126;
          }
        }

        else
        {
          LODWORD(v159) = v125 - 3;
          if (v125 <= 2)
          {
            v159 = v158 + v126;
            if ((v158 + v126) < 0)
            {
              v159 = v159 % v126 + v126;
            }
          }
        }

        v206 = v146 - v147;
        v207 = v150 - v151;
        if (v157 == v130)
        {
          v208 = v145 - *(v143 + 4 * v159);
          v209 = v137 * 0.75;
          v210 = (v206 * (v208 - rintf(v208))) <= 0.0 || v136 <= v209;
          if (v210)
          {
            v161 = v130;
          }

          else
          {
            v161 = v128;
          }

          if ((v206 * v207) <= 0.0 || v138 <= v209)
          {
            v162 = v130;
          }

          else
          {
            v162 = v125;
          }
        }

        else
        {
          v212 = v154 - v155;
          if (v125 == v157)
          {
            v213 = v138 * 0.75;
            if ((v206 * v207) <= 0.0 || v137 <= v213)
            {
              v161 = v125;
            }

            else
            {
              v161 = v130;
            }

            if ((v207 * v212) <= 0.0 || v139 <= v213)
            {
              v162 = v125;
            }

            else
            {
              v162 = v133;
            }
          }

          else
          {
            if (v157 != v133)
            {
              goto LABEL_385;
            }

            v216 = fabsf(*(v135 + 4 * v134));
            v217 = *(v143 + 4 * v134) - v153;
            v218 = v217 - rintf(v217);
            v219 = v139 * 0.75;
            if ((v207 * v212) <= 0.0 || v138 <= v219)
            {
              v161 = v133;
            }

            else
            {
              v161 = v125;
            }

            if ((v212 * v218) <= 0.0 || v216 <= v219)
            {
              v162 = v133;
            }

            else
            {
              v162 = v134;
            }
          }
        }
      }

      if (v161 <= 0)
      {
        v163 = *a1[16];
      }

      else
      {
        v163 = 0;
      }

      v164 = *(v143 + 4 * v161);
      v165 = v164 - *(v143 + 4 * (v161 + v163 - 1));
      v166 = (v165 - rintf(v165)) + 0.0;
      for (i = v161; i != v162; v164 = *(v143 + 4 * i))
      {
        v168 = i + 1;
        if (v168 >= v126)
        {
          v169 = *a1[16];
        }

        else
        {
          v169 = 0;
        }

        i = v168 - v169;
        v170 = *(v143 + 4 * i) - v164;
        v166 = v166 + (v170 - rintf(v170));
      }

      v171 = v162;
      v172 = v162 + 1;
      v173 = v172 + v126;
      v174 = v161 + v126;
      v176 = 0.0;
      v177 = 5;
      v178 = 0.0;
      v179 = 0.0;
      v180 = 0.0;
      do
      {
        v181 = v178;
        v182 = v176;
        v183 = v161 + v177 - 6;
        if (v183 >= v126)
        {
          v175 = v161 - v126;
          v185 = v175 + v177 - 6;
          if (v185 >= v126)
          {
            v183 = v185 % v126;
          }

          else
          {
            LODWORD(v183) = v175 + v177 - 6;
          }
        }

        else if (v183 < 0)
        {
          v184 = v174 + v177 - 6;
          if (v184 >= 0)
          {
            LODWORD(v183) = v174 + v177 - 6;
          }

          if (v184 < 0)
          {
            v183 = v184 % v126 + v126;
          }
        }

        if (v183 <= 0)
        {
          v186 = *a1[16];
        }

        else
        {
          v186 = 0;
        }

        v187 = *(v143 + 4 * v183);
        v188 = *(v143 + 4 * (v183 + v186 - 1));
        if (v172 >= v126)
        {
          if (v172 - v126 >= v126)
          {
            LODWORD(v189) = v172;
          }

          else
          {
            LODWORD(v189) = v172 - v126;
          }

          if (v172 - v126 >= v126)
          {
            v189 = (v172 - v126) % v126;
          }
        }

        else
        {
          LODWORD(v189) = v172;
          if (v172 < 0)
          {
            LODWORD(v189) = v173 < 0 ? v172 : v173;
            if (v173 < 0)
            {
              v189 = v173 % v126 + v126;
            }
          }
        }

        v180 = v180 + ((v187 - v188) - rintf(v187 - v188));
        if (v189 <= 0)
        {
          v190 = *a1[16];
        }

        else
        {
          v190 = 0;
        }

        v191 = *(v143 + 4 * v189) - *(v143 + 4 * (v189 + v190 - 1));
        v179 = v179 + (v191 - rintf(v191));
        if (v177 == 3)
        {
          v178 = v180;
        }

        else
        {
          v178 = v181;
        }

        if (v177 == 3)
        {
          v176 = v179;
        }

        else
        {
          v176 = v182;
        }

        ++v173;
        ++v172;
        --v177;
      }

      while (v177);
      v192 = v161 - 4;
      v193 = v161 - 4;
      if (v161 - 4 >= v126)
      {
        v195 = v192 - v126;
        if (v193 - v126 >= v126)
        {
          v193 = v195 % v126;
        }

        else
        {
          v193 -= v126;
        }
      }

      else if (v161 <= 3)
      {
        v194 = v192 + v126;
        if (v193 + v126 < 0 == __OFADD__(v193, v126))
        {
          v193 += v126;
        }

        if (v194 < 0)
        {
          v193 = v194 % v126 + v126;
        }
      }

      HIDWORD(v328[0]) = 0;
      v327 = 0.0;
      if (LRLine(a1, v193, v328 + 1, &v327))
      {
        v196 = *(v328 + 1);
        v197 = straightLineDistanceDeltaToleranceAtAngle(*(v328 + 1));
        if (v162 >= v126)
        {
          v171 = v162 - v126 >= v126 ? (v162 - v126) % v126 : v162 - v126;
        }

        else if (v162 < 0)
        {
          v198 = v162 + v126;
          if (v198 < 0 == __OFADD__(v162, v126))
          {
            v171 = v162 + v126;
          }

          if (v198 < 0)
          {
            v171 = v198 % v126 + v126;
          }
        }

        v199 = v327;
        LODWORD(v328[0]) = 0;
        if (LRLine(a1, v171, v328, &v327))
        {
          v200 = straightLineDistanceDeltaToleranceAtAngle(v196);
          if (vabds_f32(v196 - *v328, rintf(v196 - *v328)) >= 0.0625)
          {
            v201 = fabsf(v166);
            if (v201 >= 0.0625 && (v199 < v197 || fabsf(v180) < (v201 * 0.3) || (v166 * v180) < 0.0) && (v327 < v200 || fabsf(v179) < (v201 * 0.3) || (v166 * v179) < 0.0) && fabsf(v181) <= (v201 * 0.6) && fabsf(v182) <= (v201 * 0.6))
            {
              if (*(a1 + 16) == 1)
              {
                printf("corner %4d to %4d turn %7.2f rel. turn before %7.4f rel. turn after %7.4f\n", v161, v162, (v166 * 360.0), (v181 / v166), (v182 / v166));
              }

              v202 = *(a1 + 51);
              if (v202 < 1 || (v203 = a1[24] + 12 * v202, *(v203 - 8) <= v161) || *(v203 - 12) >= v161)
              {
                v204 = *(a1 + 50);
                if (v202 >= v204)
                {
                  v222 = malloc_type_malloc(12 * v204 + 1200, 0x10000403E1C8BA9uLL);
                  if (!v222)
                  {
                    v316 = "could not extend corner list";
                    goto LABEL_491;
                  }

                  v205 = v222;
                  memmove(v222, a1[24], 12 * *(a1 + 50));
                  *(a1 + 50) += 100;
                  free(a1[24]);
                  a1[24] = v205;
                  v202 = *(a1 + 51);
                }

                else
                {
                  v205 = a1[24];
                }

                v223 = &v205[12 * v202];
                v223->i32[0] = v161;
                v223->i32[1] = v162;
                v223[1].i32[0] = -100;
                *(a1 + 51) = v202 + 1;
                if (!findCorner(a1, v125, 0))
                {
                  v224 = vsub_s32(*v223, vdup_n_s32(v125));
                  v225 = vabs_s32(vadd_s32(vbsl_s8(vcgt_s32(v325, v224), v322, vneg_s32(vand_s8(v322, vcgt_s32(v224, v323)))), v224));
                  if (vcgt_u32(vdup_lane_s32(v225, 1), v225).u8[0])
                  {
                    LODWORD(v125) = *v223;
                  }

                  else
                  {
                    LODWORD(v125) = HIDWORD(*v223);
                  }
                }

                v223[1].i32[0] = v125;
                v226 = addInterestingPointAtIndex(v125, 1, (a1 + 26));
                if (!v226)
                {
                  goto LABEL_492;
                }

                v227 = v226;
                if (*(v226 + 1) == 1)
                {
                  v228 = a1[26];
                  v229 = (v227 - v228) >> 3;
                  v230 = v229 - 1;
                  v231 = *(a1 + 55);
                  v232 = v231;
                  if (v229 <= v231)
                  {
                    if (v229 <= 0)
                    {
                      LODWORD(v233) = v230 + v231;
                      if (v230 + v231 < 0)
                      {
                        LODWORD(v233) = v229 - 1;
                        if (v231)
                        {
                          v233 = (v230 + v231) % v231 + v231;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v233) = v229 - 1;
                    }
                  }

                  else
                  {
                    LODWORD(v233) = v230 - v231;
                    if (v230 - v231 >= v231)
                    {
                      LODWORD(v233) = v229 - 1;
                      if (v231)
                      {
                        v233 = (v230 - v231) % v231;
                      }
                    }
                  }

                  v234 = v229 + 1;
                  v235 = v229 + 1 - v231;
                  if (v229 + 1 >= v231)
                  {
                    LODWORD(v229) = v229 + 1 - v231;
                    if (v235 >= v231)
                    {
                      LODWORD(v229) = v234;
                      if (v231)
                      {
                        v229 = v235 % v231;
                      }
                    }
                  }

                  else if (v229 > -2)
                  {
                    LODWORD(v229) = v229 + 1;
                  }

                  else
                  {
                    LODWORD(v229) = v234 + v231;
                    if (v234 + v231 < 0)
                    {
                      LODWORD(v229) = v234;
                      if (v231)
                      {
                        v229 = (v234 + v231) % v231 + v231;
                      }
                    }
                  }

                  v236 = &v228[8 * v233];
                  if ((v236[4] & 2) != 0)
                  {
                    v237 = &v228[8 * v229];
                    if ((v237[4] & 4) != 0)
                    {
                      *(v227 + 1) = 0;
                      if (((v100 & ((*v227 - *v236) >> 31)) + *v227 - *v236) >= ((v100 & ((*v237 - *v227) >> 31)) + *v237 - *v227))
                      {
                        v239 = *(v237 + 1);
                        if (v229)
                        {
                          *(v237 + 1) = v239 | 1;
                          *v237 = v223->i32[0];
                        }

                        else
                        {
                          *(v227 + 1) = v239;
                          *(v237 + 1) = 0;
                        }
                      }

                      else
                      {
                        v238 = *(v236 + 1);
                        if (v227 == v228)
                        {
                          *(v227 + 1) = v238;
                          *(v236 + 1) = 0;
                        }

                        else
                        {
                          *(v236 + 1) = v238 | 1;
                          *v236 = v223->i32[1];
                        }
                      }
                    }
                  }

                  if (v231 >= 1)
                  {
                    v240 = 8 * v231;
                    v241 = v231;
                    do
                    {
                      if (!*(a1[26] + 8 * (v241 - 1) + 4))
                      {
                        if (v241 < v231)
                        {
                          v242 = v240;
                          v243 = v241;
                          do
                          {
                            *(a1[26] + v242 - 8) = *(a1[26] + v242);
                            LODWORD(v231) = *(a1 + 55);
                            ++v243;
                            v242 += 8;
                          }

                          while (v231 > v243);
                        }

                        LODWORD(v231) = v231 - 1;
                        *(a1 + 55) = v231;
                      }

                      v240 -= 8;
                      v210 = v241-- <= 1;
                    }

                    while (!v210);
                    v228 = a1[26];
                    v232 = v231;
                  }

                  qsort(v228, v232, 8uLL, ipCompare);
                }
              }
            }
          }
        }
      }

LABEL_385:
      v125 = v131;
      if (v131 == v100)
      {
        v124 = a1[24];
LABEL_387:
        qsort(v124, *(a1 + 51), 0xCuLL, cornerCompare);
        v244 = *(a1 + 51);
        if (v244 > 1)
        {
          v245 = 0;
          v246 = v100 >> 1;
          do
          {
            v247 = v245++;
            LODWORD(v248) = v245;
            if (v245 >= v244)
            {
              v248 = v245 - v244;
              if (v248 >= v244)
              {
                v248 %= v244;
              }
            }

            v249 = a1[24];
            v250 = (v249 + 12 * v247);
            v251 = (v249 + 12 * v248);
            v252 = *v250;
            v253 = v250[1];
            v254 = v252 - v246;
            v255 = v252 + v246;
            if (v252 + v246 >= v253)
            {
              v256 = 0;
            }

            else
            {
              v256 = v100;
            }

            v257 = v253 - v256;
            if (v254 > v253)
            {
              v258 = v253 + v100;
            }

            else
            {
              v258 = v257;
            }

            v260 = *v251;
            v259 = v251[1];
            if (v255 >= *v251)
            {
              v261 = 0;
            }

            else
            {
              v261 = v100;
            }

            v262 = v260 - v261;
            if (v254 > v260)
            {
              v263 = v260 + v100;
            }

            else
            {
              v263 = v262;
            }

            if (v255 >= v259)
            {
              v264 = 0;
            }

            else
            {
              v264 = v100;
            }

            v265 = v259 - v264;
            if (v254 > v259)
            {
              v266 = v259 + v100;
            }

            else
            {
              v266 = v265;
            }

            if (v263 <= v258 && v266 >= v252)
            {
              v268 = v251[2];
              v269 = v248 + 1;
              if (v248 + 1 < v244)
              {
                v270 = v269;
                v271 = 12 * v269;
                do
                {
                  v272 = a1[24];
                  v248 = v272 + 12 * v248;
                  v273 = (v272 + v271);
                  v274 = *v273;
                  *(v248 + 8) = *(v273 + 2);
                  *v248 = v274;
                  LODWORD(v248) = v270++;
                  v271 += 12;
                }

                while (v270 < *(a1 + 51));
                v244 = *(a1 + 51);
              }

              *(a1 + 51) = --v244;
              v275 = *(a1 + 55);
              if (v275 >= 1)
              {
                v276 = (a1[26] + 4);
                do
                {
                  if (*(v276 - 1) == v268)
                  {
                    *v276 &= ~1u;
                  }

                  v276 += 2;
                  --v275;
                }

                while (v275);
              }
            }
          }

          while (v245 < v244);
        }

        v277 = *(a1 + 55);
        if (v277 >= 1)
        {
          v278 = 8 * v277;
          v279 = *(a1 + 55);
          do
          {
            if (!*(a1[26] + 8 * (v279 - 1) + 4))
            {
              if (v279 < v277)
              {
                v280 = v278;
                v281 = v279;
                do
                {
                  *(a1[26] + v280 - 8) = *(a1[26] + v280);
                  LODWORD(v277) = *(a1 + 55);
                  ++v281;
                  v280 += 8;
                }

                while (v277 > v281);
              }

              LODWORD(v277) = v277 - 1;
              *(a1 + 55) = v277;
            }

            v278 -= 8;
            v210 = v279-- <= 1;
          }

          while (!v210);
        }

        if (v277 || addInterestingPointAtIndex(0, 64, (a1 + 26)))
        {
          if (debug_auto_trace_syntax == 1)
          {
            checkSyntax(a1, "findCorners");
          }

          if (debug_auto_trace == 1 && *a1)
          {
            (a1[1])(*a1, 2, a1);
          }

          v328[0] = 0;
          v282 = *a1[16];
          if (v282 >= 1)
          {
            v283 = 0;
            v284 = a1[20];
            v285 = a1[19] - 4;
            v286 = v285;
            do
            {
              v287 = *(v286 + 4);
              v286 += 4;
              v288 = v287;
              if (v283)
              {
                v289 = 0;
              }

              else
              {
                v289 = v282;
              }

              *v284++ = (*(v285 + 4 * v289) - v288) - rintf(*(v285 + 4 * v289) - v288);
              --v283;
              v285 = v286;
            }

            while (-v282 != v283);
          }

          if (initInterestingPointList(a1 + 28))
          {
            LODWORD(v290) = *(a1 + 55);
            if (v290 >= 1)
            {
              v291 = 0;
              v292 = 0;
              v324 = v282 >> 1;
              v293 = 1;
              do
              {
                LODWORD(v294) = ++v292;
                if (v293 >= v290)
                {
                  v294 = v293 - v290;
                  if (v294 >= v290)
                  {
                    v294 %= v290;
                  }
                }

                v295 = a1[26];
                if ((*(v295 + v291 + 4) & 1) == 0)
                {
                  goto LABEL_454;
                }

                v296 = v295 + 8 * v294;
                if ((*(v296 + 4) & 1) == 0)
                {
                  goto LABEL_454;
                }

                v297 = *(v295 + v291);
                v298 = *v296;
                Corner = findCorner(a1, v297, 1);
                if (!Corner)
                {
                  goto LABEL_489;
                }

                v300 = Corner[1];
                if (*(v296 + 4))
                {
                  v326 = Corner[1];
                  v302 = findCorner(a1, *v296, 1);
                  v300 = v326;
                  if (!v302)
                  {
                    goto LABEL_489;
                  }

                  v301 = *v302;
                }

                else
                {
                  v301 = v298;
                }

                if (v298 <= v297)
                {
                  v303 = v300 - *(v295 + v291);
                  if (v303 < 0)
                  {
                    v303 = *(v295 + v291) - v300;
                  }

                  if (v303 <= v324)
                  {
                    v304 = v301 - *v296;
                    if (v304 < 0)
                    {
                      v304 = *v296 - v301;
                    }

                    if (v304 <= v324)
                    {
                      if (v301 <= v300 - v282)
                      {
                        goto LABEL_454;
                      }
                    }

                    else if (v301 <= v300)
                    {
                      goto LABEL_454;
                    }
                  }

                  else if (v301 <= v300)
                  {
                    goto LABEL_454;
                  }
                }

                else if (v301 <= v300)
                {
                  goto LABEL_454;
                }

                v305 = v301 - v300;
                if (v301 <= v300)
                {
                  v306 = v282;
                }

                else
                {
                  v306 = 0;
                }

                v307 = v306 + v305;
                if (v306 + v305 < 1)
                {
                  goto LABEL_454;
                }

                v308 = v300;
                v309 = v301;
                computeAngleSumAndRange(a1, v300, v301, v328 + 1, v328);
                *&v310 = fabsf(*(v328 + 1));
                if (v307 > 0xF || *&v310 >= 0.000027778 || *v328 >= 0.000027778)
                {
                  if (v307 < 0x15)
                  {
                    goto LABEL_454;
                  }

                  *(&v310 + 1) = *v328 / fmaxf(*&v310, 0.01);
                  v314 = vdupq_lane_s64(v310, 0);
                  v315.i32[0] = vmovn_s32(vcgtq_f32(xmmword_18439C9D0, v314)).u32[0];
                  v315.i32[1] = vmovn_s32(vcgtq_f32(v314, xmmword_18439C9D0)).i32[1];
                  if ((~vaddvq_s32(vandq_s8(vmovl_s16(v315), xmmword_18439C7E0)) & 0xF) != 0)
                  {
                    goto LABEL_454;
                  }

                  if (!appendInterestingPointAtIndex(v308, 8, a1 + 28))
                  {
                    goto LABEL_489;
                  }

                  v311 = (a1 + 28);
                  v312 = v309;
                  v313 = 16;
                }

                else
                {
                  if (!appendInterestingPointAtIndex(v308, 2, a1 + 28))
                  {
                    goto LABEL_489;
                  }

                  v311 = (a1 + 28);
                  v312 = v309;
                  v313 = 4;
                }

                if (!appendInterestingPointAtIndex(v312, v313, v311))
                {
                  goto LABEL_489;
                }

LABEL_454:
                v290 = *(a1 + 55);
                v291 += 8;
                v210 = v293++ < v290;
              }

              while (v210);
            }

            if (*(a1 + 59) < 1)
            {
LABEL_497:
              v319 = a1[28];
              if (v319)
              {
                free(v319);
              }

              a1[28] = 0;
              a1[29] = 0;
              if (debug_auto_trace_syntax == 1)
              {
                checkSyntax(a1, "findShortLinesAndShallowCurves");
              }

              if (debug_auto_trace == 1 && *a1)
              {
                (a1[1])(*a1, 3, a1);
              }

              if ((findNonOrthogonalLines(a1) & 1) == 0)
              {
                v17 = "failing findNonOrthogonalLines";
                goto LABEL_13;
              }

              if ((findInflectionPoints(a1) & 1) == 0)
              {
                v17 = "failing findInflectionPoints";
                goto LABEL_13;
              }

              if ((cutUpCurves(a1) & 1) == 0)
              {
                v17 = "failing cutUpCurves";
                goto LABEL_13;
              }

              if ((coalesceStraightLines(a1) & 1) == 0)
              {
                v17 = "failing coalesceStraightLines";
                goto LABEL_13;
              }

              if (!extractCurveRecords(a1))
              {
                v17 = "failing extractCurveRecords";
                goto LABEL_13;
              }

              computeCurveTangents(a1);
              computePoints(a1);
              if ((findSubdividedCurves(a1) & 1) == 0)
              {
                v17 = "failing findSubdividedCurves";
                goto LABEL_13;
              }

              convertToPaths(a1);
              v320 = a1[26];
              if (v320)
              {
                free(v320);
              }

              a1[26] = 0;
              a1[27] = 0;
              v321 = a1[30];
              if (v321)
              {
                free(v321);
              }

              a1[30] = 0;
              a1[31] = 0;
              goto LABEL_77;
            }

            v317 = 0;
            v318 = 0;
            LOBYTE(v327) = 0;
            while (1)
            {
              insertPairIntoInterestingPoints(a1, (a1[28] + v318), (a1[28] + v318 + 8), a1 + 26, &v327);
              if (LOBYTE(v327))
              {
                break;
              }

              v318 += 16;
              v317 += 2;
              if (*(a1 + 59) <= v317)
              {
                goto LABEL_497;
              }
            }
          }

LABEL_489:
          v17 = "failing findShortLinesAndShallowCurves";
          goto LABEL_13;
        }

LABEL_492:
        v17 = "failing findCorners";
        goto LABEL_13;
      }
    }
  }

  v23 = (a1[8] + 32 * v10);
  if (*(v9 + 4))
  {
    result = addPointAtStart(v23);
  }

  else
  {
    result = addPointAtEnd(v23);
  }

  if (result)
  {
    *result = a4;
    *(result + 4) = a5;
    if (*(v9 + 4) == *(a1 + 88))
    {
      v17 = "join polygons occurs at wrong ends";
      goto LABEL_13;
    }

    v34 = a1[8];
    v35 = *v9;
    v36 = (v34 + 32 * v35);
    v37 = *(v36 + 1);
    v38 = v36[4];
    if (*(v9 + 4))
    {
      v39 = (v37 + 8 * v38);
      v40 = v39 + 1;
    }

    else
    {
      v41 = v37 + 8 * (*v36 + v38);
      v39 = (v41 - 8);
      v40 = (v41 - 4);
    }

    v42 = *v39;
    v43 = *(a1 + 21);
    v44 = (v34 + 32 * v43);
    v45 = *(v44 + 1);
    v46 = v44[4];
    if (*(a1 + 88))
    {
      v47 = (v45 + 8 * v46);
      v48 = v47 + 1;
    }

    else
    {
      v49 = v45 + 8 * (*v44 + v46);
      v47 = (v49 - 8);
      v48 = (v49 - 4);
    }

    if (v42 != *v47 || *v40 != *v48)
    {
      v17 = "join polygons point does not match connected point";
      goto LABEL_13;
    }

    v51 = *v44 + *v36;
    v52 = v51 + 99;
    v53 = malloc_type_malloc(8 * (v51 + 99), 0x100004000313F17uLL);
    if (!v53)
    {
      v17 = "could not extend extract polygons point list";
      goto LABEL_13;
    }

    v54 = v53;
    v55 = v51 - 1;
    v56 = *(v9 + 4);
    if (*(v9 + 4))
    {
      v57 = v44;
    }

    else
    {
      v57 = v36;
    }

    if (v56)
    {
      v58 = v36;
    }

    else
    {
      v58 = v44;
    }

    memmove(v53 + 400, (*(v57 + 1) + 8 * v57[4]), 8 * *v57 - 8);
    memmove(&v54[8 * *v57 + 392], (*(v58 + 1) + 8 * v58[4]), 8 * *v58);
    v44[4] = 50;
    *v44 = v55;
    v44[1] = v52;
    free(*(v44 + 1));
    *(v44 + 1) = v54;
    v36[6] = *(a1 + 18);
    *(a1 + 18) = (v36 - a1[8]) >> 5;
    free(*(v36 + 1));
    *v36 = 0;
    *(v36 + 1) = 0;
    v59 = *(a1 + 24);
    if (v59 >= 1)
    {
      v60 = a1[13];
      do
      {
        if (*v60 == v35)
        {
          *v60 = v43;
        }

        v60 += 2;
        --v59;
      }

      while (v59);
    }

    v61 = *(a1 + 28);
    if (v61 >= 1)
    {
      v62 = a1[15];
      do
      {
        if (*v62 == v35)
        {
          *v62 = v43;
        }

        v62 += 2;
        --v61;
      }

      while (v61);
    }

    if (*(a1 + 21) == v35)
    {
      *(a1 + 21) = v43;
    }

LABEL_78:
    *(a1 + 80) = 0;
    return 1;
  }

  return result;
}

char *addPointAtStart(int *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(a1 + 1);
LABEL_5:
    result = &v3[8 * v2 - 8];
    ++*a1;
    a1[4] = v2 - 1;
    return result;
  }

  v4 = malloc_type_malloc(8 * *a1 + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v3 = v4;
    memmove(v4 + 400, (*(a1 + 1) + 8 * a1[4]), 8 * *a1);
    a1[4] = 50;
    a1[1] = *a1 + 100;
    free(*(a1 + 1));
    *(a1 + 1) = v3;
    v2 = a1[4];
    goto LABEL_5;
  }

  printf(" ***** %s in autoTrace\n", "could not extend extract polygons point list");
  return 0;
}

char *addPointAtEnd(int *a1)
{
  v2 = *a1;
  v3 = *a1 + a1[4];
  if (v3 != a1[1])
  {
    v5 = *(a1 + 1);
    goto LABEL_5;
  }

  v4 = malloc_type_malloc(8 * v2 + 800, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = v4;
    memmove(v4 + 400, (*(a1 + 1) + 8 * a1[4]), 8 * *a1);
    a1[4] = 50;
    a1[1] = *a1 + 100;
    free(*(a1 + 1));
    *(a1 + 1) = v5;
    v2 = *a1;
    v3 = *a1 + a1[4];
LABEL_5:
    result = &v5[8 * v3];
    *a1 = v2 + 1;
    return result;
  }

  printf(" ***** %s in autoTrace\n", "could not extend extract polygons point list");
  return 0;
}

void freeAutoTraceStructures(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    free(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    free(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    free(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    free(v5);
    *(a1 + 152) = 0;
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    free(v6);
    *(a1 + 160) = 0;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    free(v7);
    *(a1 + 168) = 0;
  }

  *(a1 + 136) = 0;
}

BOOL initInterestingPointList(void *a1)
{
  a1[1] = 100;
  v2 = malloc_type_malloc(0x320uLL, 0x100004000313F17uLL);
  *a1 = v2;
  if (!v2)
  {
    printf(" ***** %s in autoTrace\n", "could not allocate interesting points list");
  }

  return v2 != 0;
}

char *addHorizontalLine(char *result, int a2, uint64_t a3, int a4, char **a5, _BYTE *a6)
{
  v6 = *(result + 16);
  v7 = *(v6 + 8);
  v8 = *v6;
  *a6 = 0;
  if (a4 >= 10)
  {
    v9 = a3;
    v10 = a3 <= 0 ? v8 : 0;
    if (vabds_f32(*(v7 + 8 * a2 + 4), *(v7 + 8 * (a3 + v10 - 1) + 4)) < 0.001)
    {
      if (a2 >= a3)
      {
        v18 = NAN;
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
        v15 = a2;
        do
        {
          v14 = v14 + *(v7 + 8 * v15 + 4);
          ++v13;
          v16 = v15 + 1;
          if (v16 >= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = 0;
          }

          v15 = v16 - v17;
        }

        while (v15 < a3);
        v18 = v14 / v13;
      }

      v19 = v18 + -0.023;
      v20 = v18 + 0.023;
      do
      {
        if (a2 <= 0)
        {
          v21 = v8;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 + a2;
        a2 = v22 - 1;
        v23 = *(v7 + 8 * (v22 - 1) + 4);
      }

      while (v23 >= v19 && v23 <= v20);
      if (v22 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v22 - v25;
      while (1)
      {
        v27 = *(v7 + 8 * v9 + 4);
        if (v27 < v19 || v27 > v20)
        {
          break;
        }

        if (v9 + 1 >= v8)
        {
          v29 = v8;
        }

        else
        {
          v29 = 0;
        }

        v9 = v9 + 1 - v29;
      }

      if (result[18] == 1)
      {
        printf("found completely horizontal line from %d to %d (length %d)\n", v26, v9, a4);
      }

      result = appendInterestingPointAtIndex(v26, 2, a5);
      if (!result || (result = appendInterestingPointAtIndex(v9, 4, a5)) == 0)
      {
        *a6 = 1;
      }
    }
  }

  return result;
}

char *addVerticalLine(char *result, int a2, uint64_t a3, int a4, char **a5, _BYTE *a6)
{
  v6 = *(result + 16);
  v7 = *(v6 + 8);
  v8 = *v6;
  *a6 = 0;
  if (a4 >= 10)
  {
    v9 = a3;
    v10 = a3 <= 0 ? v8 : 0;
    if (vabds_f32(*(v7 + 8 * a2), *(v7 + 8 * (a3 + v10 - 1))) < 0.001)
    {
      if (a2 >= a3)
      {
        v18 = NAN;
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
        v15 = a2;
        do
        {
          v14 = v14 + *(v7 + 8 * v15);
          ++v13;
          v16 = v15 + 1;
          if (v16 >= v8)
          {
            v17 = v8;
          }

          else
          {
            v17 = 0;
          }

          v15 = v16 - v17;
        }

        while (v15 < a3);
        v18 = v14 / v13;
      }

      v19 = v18 + -0.023;
      v20 = v18 + 0.023;
      do
      {
        if (a2 <= 0)
        {
          v21 = v8;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 + a2;
        a2 = v22 - 1;
        v23 = *(v7 + 8 * (v22 - 1));
      }

      while (v23 >= v19 && v23 <= v20);
      if (v22 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v22 - v25;
      for (i = 8 * a3; ; i = 8 * v9)
      {
        v28 = *(v7 + i);
        if (v28 < v19 || v28 > v20)
        {
          break;
        }

        if (v9 + 1 >= v8)
        {
          v30 = v8;
        }

        else
        {
          v30 = 0;
        }

        v9 = v9 + 1 - v30;
      }

      if (result[18] == 1)
      {
        printf("found completely vertical line from %d to %d (length %d)\n", v26, v9, a4);
      }

      result = appendInterestingPointAtIndex(v26, 2, a5);
      if (!result || (result = appendInterestingPointAtIndex(v9, 4, a5)) == 0)
      {
        *a6 = 1;
      }
    }
  }

  return result;
}

uint64_t insertPairIntoInterestingPoints(uint64_t result, unsigned int *a2, unsigned int *a3, uint64_t *a4, _BYTE *a5)
{
  *a5 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = *a3;
  v8 = (a3[1] & 4) == 0 || (a2[1] & 2) == 0;
  if (v6 == v7)
  {
    return result;
  }

  v71 = a3[1];
  v10 = *(a4 + 3);
  if (v10 < 1)
  {
    goto LABEL_128;
  }

  v13 = result;
  v69 = **(result + 128);
  v72 = 0;
  v14 = indexOfNewInterestingPointAtPointIndex(v6, a4, &v72 + 1);
  result = indexOfNewInterestingPointAtPointIndex(v7, a4, &v72);
  v15 = result;
  v16 = v14 + 1;
  if (v16 >= v10)
  {
    v16 -= v10;
    if (v16 >= v10)
    {
      LODWORD(v16) = v16 % v10;
    }
  }

  v17 = *a4;
  v18 = (v14 - 1);
  if (v14 <= v10)
  {
    if (v14)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10;
    }

    LODWORD(v18) = v19 + v18;
  }

  else
  {
    v18 -= v10;
    if (v18 >= v10)
    {
      LODWORD(v18) = v18 % v10;
    }
  }

  v20 = (v17 + 8 * v18);
  v21 = v17 + 8 * v14;
  if (v14 != result)
  {
    if (result != v16)
    {
      v30 = result - 1;
      if (result <= v10)
      {
        if (result)
        {
          v41 = 0;
        }

        else
        {
          v41 = v10;
        }

        v31 = v41 + v30;
      }

      else
      {
        v31 = v30 - v10;
        if (v30 - v10 >= v10)
        {
          v31 %= v10;
        }
      }

      v42 = v17 + 8 * v31;
      v43 = v17 + 8 * result;
      if ((v72 & 0x100) != 0)
      {
        if (((v72 | v8) & 1) == 0 && (*(v21 + 4) & 2) != 0)
        {
          *v42 = v7;
          goto LABEL_128;
        }

        if (!(v8 & 1 | ((v72 & 1) == 0)) && (*(v21 + 4) & 2) != 0 && (*(v43 + 4) & 4) != 0)
        {
          v44 = v6 + 1;
          if (v44 >= v10)
          {
            v44 -= v10;
            if (v44 >= v10)
            {
              v44 %= v10;
            }
          }

          else if (v6 <= -2)
          {
            v44 += v10;
            if (v44 < 0)
            {
              v44 = v44 % v10 + v10;
            }
          }

          while (result != v44)
          {
            v64 = v17 + 8 * v44;
            v66 = *(v64 + 4);
            v65 = (v64 + 4);
            if ((v66 & 0xFFFFFFF9) == 0)
            {
              *v65 = 0;
            }

            v67 = v44 + 1;
            if (v44 + 1 >= v10)
            {
              v44 = v67 - v10;
              if (v44 >= v10)
              {
                v44 %= v10;
              }
            }

            else
            {
              v59 = v44 <= -2;
              LODWORD(v44) = v44 + 1;
              if (v59)
              {
                v44 = v67 + v10;
                if (v44 < 0)
                {
                  v44 = v44 % v10 + v10;
                }
              }
            }
          }

          goto LABEL_128;
        }
      }

      else
      {
        if (((v72 | v8) & 1) == 0 && (*(v21 + 4) & 2) != 0 && (*(v42 + 4) & 4) != 0)
        {
          *v21 = v6;
          *v42 = v7;
          goto LABEL_130;
        }

        if (!(v8 & 1 | ((v72 & 1) == 0)))
        {
          if ((*(v43 + 4) & 4) != 0 && (*(v21 + 4) & 2) != 0)
          {
            *v21 = v6;
            v53 = v6 + 1;
            if (v53 >= v10)
            {
              v53 -= v10;
              if (v53 >= v10)
              {
                v53 %= v10;
              }
            }

            else if (v6 <= -2)
            {
              v53 += v10;
              if (v53 < 0)
              {
                v53 = v53 % v10 + v10;
              }
            }

            while (result != v53)
            {
              v60 = v17 + 8 * v53;
              v62 = *(v60 + 4);
              v61 = (v60 + 4);
              if ((v62 & 0xFFFFFFF9) == 0)
              {
                *v61 = 0;
              }

              v63 = v53 + 1;
              if (v53 + 1 >= v10)
              {
                v53 = v63 - v10;
                if (v53 >= v10)
                {
                  v53 %= v10;
                }
              }

              else
              {
                v59 = v53 <= -2;
                LODWORD(v53) = v53 + 1;
                if (v59)
                {
                  v53 = v63 + v10;
                  if (v53 < 0)
                  {
                    v53 = v53 % v10 + v10;
                  }
                }
              }
            }
          }

          goto LABEL_128;
        }
      }

      if (((v8 & 1) != 0 || (*(v42 + 4) & 2) == 0) && debug_auto_trace_syntax == 1)
      {
        result = pairInsertError(v13, a2, v14, HIBYTE(v72), a3, result, v72, a4, "breaking 4");
      }

      goto LABEL_130;
    }

    v23 = *(v21 + 4);
    if (HIBYTE(v72) == 1)
    {
      if ((v72 & 1) == 0)
      {
        if ((v23 & 0xA) == 0)
        {
          goto LABEL_128;
        }

        if ((v23 & 2) != 0 || debug_auto_trace_syntax != 1)
        {
          goto LABEL_130;
        }

        v68 = "breaking 3";
        v25 = v13;
        v26 = a2;
        v27 = v14;
        v28 = 1;
        v29 = a3;
        goto LABEL_86;
      }

      if (v8)
      {
        if ((v23 & 8) != 0)
        {
          goto LABEL_130;
        }
      }

      else if ((v23 & 2) != 0)
      {
        goto LABEL_130;
      }

      if ((v23 & 0xA) == 0)
      {
        goto LABEL_128;
      }

      if (debug_auto_trace_syntax != 1)
      {
        goto LABEL_130;
      }

      v68 = "merge 1";
      v25 = v13;
      v26 = a2;
      v27 = v14;
      v28 = 1;
LABEL_122:
      v29 = a3;
      goto LABEL_123;
    }

    if (v72)
    {
      if ((v23 & 2) != 0)
      {
        *v21 = v6;
        goto LABEL_128;
      }

      if (v23 != 1)
      {
        if (debug_auto_trace_syntax != 1)
        {
          goto LABEL_130;
        }

        v68 = "merge 2";
        v25 = v13;
        v26 = a2;
        v27 = v14;
        v28 = 0;
        goto LABEL_122;
      }

      v32 = v21;
      Corner = findCorner(v13, *v21, 1);
      v34 = v32;
      v35 = *v32 - v6;
      if (v35 >= v69 / -2)
      {
        v36 = 0;
      }

      else
      {
        v36 = v69;
      }

      v37 = v36 + v35;
      if (v37 < 0)
      {
        v37 = -v37;
      }

      v38 = v7 - *v32;
      if (v38 >= v69 / -2)
      {
        v39 = 0;
      }

      else
      {
        v39 = v69;
      }

      v40 = v39 + v38;
      if (v40 < 0)
      {
        v40 = -v40;
      }

      if (v37 < v40)
      {
        if (!Corner)
        {
LABEL_53:
          *v34 = v6;
          goto LABEL_128;
        }

LABEL_100:
        v6 = Corner[2];
        goto LABEL_128;
      }
    }

    else
    {
      if (v23 != 1)
      {
        if ((v23 & 4) != 0 && (v20[1] & 2) != 0)
        {
          v6 = *v20;
          *v21 = v7;
          goto LABEL_128;
        }

        if ((v23 & 2) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_130;
      }

      v46 = v21;
      Corner = findCorner(v13, *v21, 1);
      v34 = v46;
      v47 = *v46 - v6;
      if (v47 >= v69 / -2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v69;
      }

      v49 = v48 + v47;
      if (v49 < 0)
      {
        v49 = -v49;
      }

      v50 = v7 - *v46;
      if (v50 >= v69 / -2)
      {
        v51 = 0;
      }

      else
      {
        v51 = v69;
      }

      v52 = v51 + v50;
      if (v52 < 0)
      {
        v52 = -v52;
      }

      if (v49 < v52)
      {
        if (!Corner)
        {
          goto LABEL_53;
        }

        goto LABEL_100;
      }
    }

    if (Corner)
    {
      v7 = Corner[2];
    }

    else
    {
      *v34 = v7;
    }

    goto LABEL_128;
  }

  if ((v72 & 0x100) != 0)
  {
    if (*(v13 + 220) == 1)
    {
      v22 = *(v21 + 4);
      if (v22 == 1)
      {
        goto LABEL_128;
      }

      if (v22 == 64)
      {
        a2[1] = v5 & 0xFFFFFFBF;
        goto LABEL_128;
      }
    }

    if (debug_auto_trace_syntax == 1)
    {
      pairInsertError(v13, a2, v14, 1, a3, v14, v72, a4, "syntax 1");
    }

LABEL_128:
    result = addInterestingPointAtIndex(v6, v5, a4);
    if (!result || (result = addInterestingPointAtIndex(v7, v71, a4)) == 0)
    {
      *a5 = 1;
      return result;
    }

    goto LABEL_130;
  }

  v24 = v20[1];
  if ((v72 & 1) == 0)
  {
    if ((v24 & 0xA) == 0)
    {
      goto LABEL_128;
    }

    if (((v8 | ((v24 & 2) >> 1)) & 1) != 0 || debug_auto_trace_syntax != 1 || (v24 & 8) != 0 && (*(v21 + 4) & 0x10) != 0)
    {
      goto LABEL_130;
    }

    v68 = "breaking 1";
    v25 = v13;
    v26 = a2;
    v27 = v14;
    v28 = 0;
    v29 = a3;
    v15 = v14;
LABEL_86:
    v45 = 0;
LABEL_124:
    result = pairInsertError(v25, v26, v27, v28, v29, v15, v45, a4, v68);
    goto LABEL_130;
  }

  if ((v24 & 0xA) == 0)
  {
    goto LABEL_128;
  }

  if (((v24 >> 1) & 1 & ~v8) == 0 && debug_auto_trace_syntax == 1)
  {
    v68 = "breaking 2";
    v25 = v13;
    v26 = a2;
    v27 = v14;
    v28 = 0;
    v29 = a3;
    v15 = v14;
LABEL_123:
    v45 = 1;
    goto LABEL_124;
  }

LABEL_130:
  v54 = *(a4 + 3);
  if (v54 >= 1)
  {
    v55 = 8 * v54;
    v56 = *(a4 + 3);
    do
    {
      if (!*(*a4 + 8 * (v56 - 1) + 4))
      {
        if (v56 < v54)
        {
          v57 = v55;
          v58 = v56;
          do
          {
            *(*a4 + v57 - 8) = *(*a4 + v57);
            LODWORD(v54) = *(a4 + 3);
            ++v58;
            v57 += 8;
          }

          while (v54 > v58);
        }

        LODWORD(v54) = v54 - 1;
        *(a4 + 3) = v54;
      }

      v55 -= 8;
      v59 = v56-- <= 1;
    }

    while (!v59);
  }

  return result;
}