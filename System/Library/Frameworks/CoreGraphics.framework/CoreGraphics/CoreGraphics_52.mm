void CGPDFTextObjectSetFont(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 48);
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

    *(a1 + 48) = cf;
  }
}

void CGPDFTextObjectSetTextDrawingMode(uint64_t a1, int a2)
{
  *(a1 + 40) = a2;
  if ((a2 & 0xFFFFFFFC) == 4 && !*(a1 + 176))
  {
    v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    __CFSetLastAllocationEventName();
    *v3 = 0;
    *(a1 + 176) = v3;
  }
}

double CGPDFTextObjectAppendString(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        result = *(a1 + 56);
        if (result != 0.0)
        {
          v5 = *(a1 + 168);
          if (!v5)
          {
            v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
            __CFSetLastAllocationEventName();
            *v5 = 0;
            *(a1 + 168) = v5;
          }

          v7 = 0uLL;
          CGPDFTextLayoutAppendString(v5, a1, a2, &v7);
          v6 = *(a1 + 176);
          if (v6)
          {
            CGPDFTextLayoutAppendString(v6, a1, a2, 0);
          }

          result = *&v7;
          *(a1 + 152) = vmlaq_n_f64(vmlaq_n_f64(*(a1 + 152), *(a1 + 120), *&v7), *(a1 + 136), *(&v7 + 1));
        }
      }
    }
  }

  return result;
}

double CGPDFTextObjectAppendStrings(uint64_t a1, CGPDFArray *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        result = *(a1 + 56);
        if (result != 0.0)
        {
          v5 = *(a1 + 168);
          if (!v5)
          {
            v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
            __CFSetLastAllocationEventName();
            *v5 = 0;
            *(a1 + 168) = v5;
          }

          v7 = 0uLL;
          CGPDFTextLayoutAppendStrings(v5, a1, a2, &v7);
          v6 = *(a1 + 176);
          if (v6)
          {
            CGPDFTextLayoutAppendStrings(v6, a1, a2, 0);
          }

          result = *&v7;
          *(a1 + 152) = vmlaq_n_f64(vmlaq_n_f64(*(a1 + 152), *(a1 + 120), *&v7), *(a1 + 136), *(&v7 + 1));
        }
      }
    }
  }

  return result;
}

void PDFDocumentRelease(_DWORD *a1)
{
  if (!a1)
  {
    return;
  }

  if ((*a1)-- != 1)
  {
    return;
  }

  PDFDocumentFinalize(a1);
  CGColorSpaceRelease(*(a1 + 59));
  CGColorSpaceRelease(*(a1 + 60));
  CGColorSpaceRelease(*(a1 + 61));
  v3 = *(a1 + 46);
  if (v3)
  {
    CFRelease(*(v3 + 8));
    CGOrderedSetRelease(*(v3 + 16));
    free(v3);
  }

  v4 = *(a1 + 57);
  if (v4)
  {
    v5 = v4[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(v4);
  }

  v6 = *(a1 + 55);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      CFRelease(v7);
    }

    CGOrderedSetRelease(*(v6 + 16));
    free(v6);
  }

  v8 = *(a1 + 47);
  if (v8)
  {
    std::__tree<unsigned long>::destroy(*(v8 + 64));
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(*(v8 + 40));
    std::__tree<std::__value_type<std::string,CG::CGDLResourceType>,std::__map_value_compare<std::string,std::__value_type<std::string,CG::CGDLResourceType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CG::CGDLResourceType>>>::destroy(*(v8 + 16));
    MEMORY[0x1865EE610](v8, 0x1020C40E45BEF79);
  }

  v9 = *(a1 + 51);
  if (v9)
  {
    CGOrderedSetRelease(*(v9 + 16));
    v10 = *(v9 + 8);
    if (v10)
    {
      CFRelease(v10);
    }

    free(v9);
  }

  PDFImageSetRelease(*(a1 + 48));
  PDFImageSetRelease(*(a1 + 49));
  v11 = *(a1 + 52);
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      CFRelease(v12);
    }

    CGOrderedSetRelease(*(v11 + 16));
    free(v11);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      CFRelease(v14);
    }

    CGOrderedSetRelease(*(v13 + 16));
    free(v13);
  }

  v15 = *(a1 + 53);
  if (v15)
  {
    v16 = *(v15 + 8);
    if (v16)
    {
      CFRelease(v16);
    }

    CGOrderedSetRelease(*(v15 + 16));
    free(v15);
  }

  v17 = *(a1 + 54);
  if (v17)
  {
    CGOrderedSetRelease(*(v17 + 16));
    v18 = *(v17 + 8);
    if (v18)
    {
      CFRelease(v18);
    }

    free(v17);
  }

  v19 = *(a1 + 50);
  if (v19)
  {
    CGOrderedSetRelease(*(v19 + 16));
    v20 = *(v19 + 8);
    if (v20)
    {
      CFRelease(v20);
    }

    free(v19);
  }

  v21 = *(a1 + 44);
  if (v21)
  {
    CFRelease(v21);
  }

  PDFMetaSetRelease(*(a1 + 5));
  v22 = *(a1 + 62);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = *(v22 + 24);
    if (v24)
    {
      v59 = *(v22 + 24);
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](&v59);
      MEMORY[0x1865EE610](v24, 0x20C40960023A9);
    }

    v59 = (v22 + 48);
    std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::__destroy_vector::operator()[abi:fe200100](&v59);
    v25 = *(v22 + 40);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v25);
    }

    MEMORY[0x1865EE610](v22, 0x1020C40932E6E95);
  }

  PDFXRefTableRelease(*(a1 + 63));
  PDFOutputIntentRelease(*(a1 + 6));
  v26 = *(a1 + 7);
  if (v26)
  {
    v27 = v26[2];
    if (v27)
    {
      CFRelease(v27);
    }

    free(v26);
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    v29 = v28[1];
    if (v29)
    {
      CFRelease(v29);
    }

    v30 = v28[3];
    if (v30)
    {
      CFRelease(v30);
    }

    free(v28);
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(a1 + 72);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(a1 + 66);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(a1 + 67);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(a1 + 68);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(a1 + 36);
  if (v36)
  {
    v37 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v36);
    MEMORY[0x1865EE610](v37, 0x10A0C408EF24B1CLL);
  }

  v38 = *(a1 + 37);
  if (v38)
  {
    v39 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v38);
    MEMORY[0x1865EE610](v39, 0x10A0C408EF24B1CLL);
  }

  v40 = *(a1 + 38);
  if (v40)
  {
    v41 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v40);
    MEMORY[0x1865EE610](v41, 0x10A0C408EF24B1CLL);
  }

  v42 = *(a1 + 41);
  if (v42)
  {
    do
    {
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

  v44 = *(a1 + 39);
  *(a1 + 39) = 0;
  if (v44)
  {
    operator delete(v44);
  }

  CGPDFAssociationRelease(*(a1 + 4));
  v45 = *(a1 + 3);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(a1 + 71);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(a1 + 70);
  if (v47)
  {
    PDFXRefTableRelease(*(v47 + 88));
    PDFXRefTableRelease(*(v47 + 104));
    v48 = *(v47 + 16);
    if (v48)
    {
      CFRelease(v48);
    }

    v49 = *(v47 + 320);
    if (v49)
    {
      CFRelease(v49);
    }

    v50 = *(v47 + 328);
    if (v50)
    {
      CFRelease(v50);
    }

    v51 = (v47 + 24);
    if (*(v47 + 47) < 0)
    {
      if (!*(v47 + 32))
      {
LABEL_97:
        std::__tree<unsigned long>::destroy(*(v47 + 240));
        std::__tree<unsigned long>::destroy(*(v47 + 216));
        v53 = *(v47 + 184);
        if (v53)
        {
          *(v47 + 192) = v53;
          operator delete(v53);
        }

        v54 = *(v47 + 160);
        if (v54)
        {
          *(v47 + 168) = v54;
          operator delete(v54);
        }

        v55 = *(v47 + 136);
        if (v55)
        {
          *(v47 + 144) = v55;
          operator delete(v55);
        }

        v59 = (v47 + 112);
        std::vector<PDFIndirectObject>::__destroy_vector::operator()[abi:fe200100](&v59);
        v59 = (v47 + 48);
        std::vector<PDFLinearizerPageInfo>::__destroy_vector::operator()[abi:fe200100](&v59);
        if (*(v47 + 47) < 0)
        {
          operator delete(*v51);
        }

        MEMORY[0x1865EE610](v47, 0x1072C405A727712);
        goto LABEL_106;
      }

      v52 = *v51;
    }

    else
    {
      v52 = (v47 + 24);
      if (!*(v47 + 47))
      {
        goto LABEL_97;
      }
    }

    unlink(v52);
    goto LABEL_97;
  }

LABEL_106:
  v56 = *(a1 + 75);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(a1 + 76);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(a1 + 69);
  if (v58)
  {
    CFRelease(v58);
  }

  free(a1);
}

objc_class *get_default_rgb_color_space(PDFDocument *a1)
{
  result = a1[30].super.isa;
  if (!result)
  {
    result = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    a1[30].super.isa = result;
    if (!result)
    {
      result = CGColorSpaceCreateDeviceRGB();
      a1[30].super.isa = result;
    }
  }

  return result;
}

uint64_t PDFDocumentFinalize(uint64_t result)
{
  if (*(result + 72))
  {
    return result;
  }

  v1 = result;
  v239 = result;
  if (!*(result + 608))
  {
    goto LABEL_53;
  }

  if ((*(result + 616) & 1) == 0)
  {
    goto LABEL_52;
  }

  v2 = PDFXRefTableAddObject(*(result + 504));
  v3 = PDFXRefTableAddObject(*(v1 + 504));
  v4 = PDFXRefTableAddObject(*(v1 + 504));
  v5 = PDFXRefTableAddObject(*(v1 + 504));
  PDFDocumentBeginObject(v1, v3);
  PDFWriterPrintf(*(v1 + 32), "<< /Type /StructTreeRoot /K %R /ParentTree %R /IDTree %R>>", v2, v4, v5);
  PDFDocumentEndObject(v1);
  *(v1 + 624) = v3;
  v240 = -1;
  CGCFDictionaryGetNumber(*(v1 + 608), @"TagNodeObjectRefID", kCFNumberSInt64Type, &v240);
  v6 = *(v1 + 288);
  value[0] = v240;
  value[1] = v2;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v6, v240, value);
  PDFDocumentEmitTaggedNodeStructure(v1, v2, *(v1 + 608), v3);
  value[0] = 0;
  if (CGPDFDictionaryGetArray(*(v1 + 536), "Nums", value))
  {
    PDFDocumentBeginObject(v1, v4);
    PDFWriterPrintf(*(v1 + 32), "<</Nums[");
    v242[0] = 0;
    array[0] = 0;
    v250[0] = -1;
    if (value[0])
    {
      v7 = *(value[0] + 3) - *(value[0] + 2);
      if (v7)
      {
        v8 = 0;
        v9 = v7 >> 3;
        do
        {
          if (CGPDFArrayGetArray(value[0], v8, array))
          {
            if (array[0])
            {
              v10 = *(array[0] + 3) - *(array[0] + 2);
              if (v10)
              {
                v11 = v10 >> 3;
                PDFWriterPrintf(v239[2].super.isa, "[");
                v12 = 0;
                do
                {
                  v249 = 0;
                  CGPDFArrayGetObject(array[0], v12, &v249);
                  v13 = v249;
                  if (v249 && *(v249 + 2) != 1)
                  {
                    v14 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v239[19].super.isa, v250[0]);
                    if (v14)
                    {
                      v15 = v14[3] << 32;
                    }

                    else
                    {
                      v15 = 0xFFFFFFFF00000000;
                    }

                    v16 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v239[18]._private, v15 | v12);
                    if (v16 && (v17 = v16[3], v17 != -1) || (v18 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v239[18].super.isa, *(v13 + 2))) != 0 && (v17 = v18[3], v17 != -1))
                    {
                      PDFWriterPrintf(v239[2].super.isa, "%R", v17);
                    }
                  }

                  else
                  {
                    PDFWriterPrintf(v239[2].super.isa, "null", v233);
                  }

                  ++v12;
                }

                while (v11 != v12);
                PDFWriterPrintf(v239[2].super.isa, "]", v233);
              }
            }
          }

          else if (CGPDFArrayGetInteger(value[0], v8, v250))
          {
            PDFWriterPrintf(v239[2].super.isa, "%d");
          }

          else if (CGPDFArrayGetObject(value[0], v8, v242))
          {
            v19 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v239[18].super.isa, *(v242[0] + 2));
            if (v19)
            {
              v20 = v19[3];
              if (v20 != -1)
              {
                PDFWriterPrintf(v239[2].super.isa, "%R", v20);
              }
            }
          }

          ++v8;
        }

        while (v8 != v9);
      }
    }

    v1 = v239;
    PDFWriterPrintf(v239[2].super.isa, "]>>");
    PDFDocumentEndObject(v239);
  }

  value[0] = 0;
  if (CGPDFDictionaryGetArray(*(v1 + 544), "Names", value))
  {
    PDFDocumentBeginObject(v1, v5);
    PDFWriterPrintf(*(v1 + 32), "<</Names[");
    v242[0] = 0;
    if (value[0])
    {
      v21 = *(value[0] + 3) - *(value[0] + 2);
      if (v21)
      {
        v22 = 0;
        v23 = v21 >> 3;
        do
        {
          if (CGPDFArrayGetObject(value[0], v22, v242) && v242[0])
          {
            v24 = *(v242[0] + 2);
            if (v24 == 8)
            {
              v25 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(v239[18].super.isa, *(v242[0] + 2));
              if (v25)
              {
                v26 = v25[3];
                if (v26 != -1)
                {
                  PDFWriterPrintf(v239[2].super.isa, "%R", v26);
                }
              }
            }

            else if (v24 == 6)
            {
              array[0] = 0;
              CGPDFArrayGetString(value[0], v22, array);
              if (array[0] && *(array[0] + 3))
              {
                decrypt_string(array[0]);
              }

              PDFWriterPrintf(v239[2].super.isa, "(%s)");
            }
          }

          ++v22;
        }

        while (v23 != v22);
      }
    }

    v1 = v239;
    PDFWriterPrintf(v239[2].super.isa, "]>>");
    PDFDocumentEndObject(v239);
  }

  if (*(v1 + 608))
  {
LABEL_52:
    CGPostError("%s: Don't mix the old and new tagging functions", "PDFDocumentEmitStructureTree");
  }

  else
  {
LABEL_53:
    if (*(v1 + 648) != *(v1 + 656))
    {
      v27 = PDFXRefTableAddObject(*(v1 + 504));
      *(v1 + 624) = v27;
      if (*(v1 + 640) < 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = PDFXRefTableAddObject(*(v1 + 504));
      }

      v29 = *(v1 + 648);
      v30 = *(v1 + 656);
      while (v29 != v30)
      {
        v31 = PDFXRefTableAddObject(*(v1 + 504));
        v32 = *v29++;
        PDFStructureElement::Emit((v32 + 16), v1, v27, v31);
      }

      PDFDocumentBeginObject(v1, v27);
      PDFDocumentPrintf(v1, "<<");
      PDFDocumentPrintf(v1, "/Type /StructTreeRoot");
      PDFDocumentPrintf(v1, "/K");
      v34 = *(v1 + 656);
      v35 = *(v1 + 648);
      if (v34 - v35 == 8)
      {
        if (v35 == v34)
        {
          goto LABEL_419;
        }

        PDFDocumentPrintf(v1, "%R", *(*v35 + 64));
      }

      else
      {
        PDFDocumentPrintf(v1, "[");
        v36 = *(v1 + 648);
        v37 = *(v1 + 656);
        while (v36 != v37)
        {
          v38 = *v36++;
          PDFDocumentPrintf(v1, "%R", *(v38 + 64));
        }

        PDFDocumentPrintf(v1, "]", v233);
      }

      if (v28)
      {
        PDFDocumentPrintf(v1, "/ParentTree %R", v28);
        PDFDocumentPrintf(v1, "/ParentTreeNextKey %d", *(v1 + 640));
      }

      PDFDocumentPrintf(v1, ">>");
      PDFDocumentEndObject(v1);
      value[0] = 0;
      value[1] = value;
      *&v244 = 0x4812000000;
      *(&v244 + 1) = __Block_byref_object_copy__5897;
      v245 = __Block_byref_object_dispose__5898;
      v246 = "";
      v248[0] = 0;
      v248[1] = 0;
      v247 = v248;
      v39 = *(v1 + 648);
      v40 = *(v1 + 656);
      if (v39 != v40)
      {
        v41 = MEMORY[0x1E69E9820];
        do
        {
          v42 = *v39;
          v242[0] = v41;
          v242[1] = 3221225472;
          v242[2] = ___ZL28PDFDocumentEmitStructureTreeP11PDFDocument_block_invoke;
          v242[3] = &unk_1E6E18EA0;
          v242[4] = value;
          PDFStructureElement::EnumerateMarkedContentItemsRecursively(v42 + 16, v242);
          ++v39;
        }

        while (v39 != v40);
      }

      v1 = v239;
      if (v28)
      {
        PDFDocumentBeginObject(v239, v28);
        PDFDocumentPrintf(v239, "<<");
        PDFDocumentPrintf(v239, "/Nums");
        PDFDocumentPrintf(v239, "[");
        v43 = *(value[1] + 6);
        v44 = value[1] + 56;
        if (v43 != value[1] + 56)
        {
          v45 = 0;
          do
          {
            for (i = *(v43 + 4); v45 < i; i = *(v43 + 4))
            {
              CGPostError("%s: Object reference with struct parent of %ld not added to a structure element", "PDFDocumentEmitStructureTree", v45);
              PDFDocumentPrintf(v239, "%d null", v45++);
            }

            PDFDocumentPrintf(v239, "%d", i);
            array[0] = v239;
            array[1] = v239;
            v47 = *(v43 + 16);
            if (v47 == -1)
            {
              std::__throw_bad_variant_access[abi:fe200100]();
            }

            v250[0] = array;
            (off_1EF23B558[v47])(v250, v43 + 40);
            v48 = *(v43 + 1);
            if (v48)
            {
              do
              {
                v49 = v48;
                v48 = *v48;
              }

              while (v48);
            }

            else
            {
              do
              {
                v49 = *(v43 + 2);
                v101 = *v49 == v43;
                v43 = v49;
              }

              while (!v101);
            }

            v45 = i + 1;
            v43 = v49;
          }

          while (v49 != v44);
        }

        v1 = v239;
        PDFDocumentPrintf(v239, "]");
        PDFDocumentPrintf(v239, ">>");
        PDFDocumentEndObject(v239);
      }

      _Block_object_dispose(value, 8);
      std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(v248[0]);
    }
  }

  if (*(v1 + 64))
  {
    v242[0] = 0;
    if (*(v1 + 91) == 1)
    {
      if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
      {
        dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_5903);
      }

      v50 = create_pdfa_xmp_metadata(PDFDocument *)::f();
      if (v50)
      {
        v51 = v50;
        v52 = off_1E6E18EC8;
        v53 = 5;
        do
        {
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_163);
          }

          if ((create_pdfa_xmp_metadata(PDFDocument *)::f(v51, *(v52 - 1), *v52, 0) & 1) == 0)
          {
            v1 = v239;
LABEL_148:
            CFRelease(v51);
            goto LABEL_149;
          }

          v52 += 2;
          --v53;
        }

        while (v53);
        v1 = v239;
        String = PDFInfoGetString(v239[4].super.isa, @"kCGPDFContextTitle", @"Title");
        if (String)
        {
          v55 = String;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_169_5905);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"dc:title[x-default]", v55);
        }

        v56 = PDFInfoGetString(v239[4].super.isa, @"kCGPDFContextAuthor", @"Author");
        if (v56)
        {
          v57 = v56;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_178);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"dc:creator[0]", v57);
        }

        v58 = PDFInfoGetString(v239[4].super.isa, @"kCGPDFContextSubject", @"Subject");
        if (v58)
        {
          v59 = v58;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_186);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"dc:description[x-default]", v59);
        }

        v60 = PDFInfoCopyKeywordsString(v239[4].super.isa);
        if (v60)
        {
          v61 = v60;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_191_5908);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"pdf:Keywords", v61);
          CFRelease(v61);
        }

        v62 = PDFInfoGetString(v239[4].super.isa, @"kCGPDFContextCreator", @"Creator");
        if (v62)
        {
          v63 = v62;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_199);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"xmp:CreatorTool", v63);
        }

        v64 = PDFInfoCopyProducer(v239[4].super.isa);
        if (v64)
        {
          v65 = v64;
          if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
          {
            dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_204);
          }

          create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"pdf:Producer", v65);
          CFRelease(v65);
        }

        v66 = *MEMORY[0x1E695E480];
        ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x773uLL);
        if (ISO8601Formatter)
        {
          v68 = ISO8601Formatter;
          NowDate = PDFInfoGetNowDate(v239[4].super.isa);
          StringWithDate = CFDateFormatterCreateStringWithDate(v66, v68, NowDate);
          if (StringWithDate)
          {
            v71 = StringWithDate;
            if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
            {
              dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_209_5913);
            }

            create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"xmp:CreateDate", v71);
            if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
            {
              dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_214);
            }

            create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"xmp:ModifyDate", v71);
            CFRelease(v71);
          }

          CFRelease(v68);
        }

        if (create_pdfa_xmp_metadata(PDFDocument *)::predicate != -1)
        {
          dispatch_once(&create_pdfa_xmp_metadata(PDFDocument *)::predicate, &__block_literal_global_219);
        }

        create_pdfa_xmp_metadata(PDFDocument *)::f(v51, 0, @"pdfaid:part", @"2");
        if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__10_ != -1)
        {
          dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__10_, &__block_literal_global_227);
        }

        _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__10_(v51, 0, @"pdfaid:conformance", @"B");
        value[0] = 0;
        ID = PDFDocumentGetID(v239, value);
        v73 = malloc_type_malloc((2 * value[0]) | 1, 0x100004077774924uLL);
        if (v73)
        {
          v74 = v73;
          if (value[0])
          {
            v75 = 0;
            v76 = v73 + 1;
            do
            {
              *(v76 - 1) = a0123456789abcd[*(v75 + ID) >> 4];
              *v76 = a0123456789abcd[*(v75 + ID) & 0xF];
              v76 += 2;
              v75 = (v75 + 1);
            }

            while (v75 < value[0]);
            v77 = 2 * value[0];
          }

          else
          {
            v77 = 0;
          }

          v78 = CFStringCreateWithBytes(v66, v73, v77, 0x600u, 0);
          if (v78)
          {
            v79 = v78;
            if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__11_ != -1)
            {
              dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__11_, &__block_literal_global_235);
            }

            _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__11_(v51, 0, @"xmpMM:DocumentID", v79);
            CFRelease(v79);
          }

          free(v74);
        }

        if (_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__12_ != -1)
        {
          dispatch_once(&_ZZL24create_pdfa_xmp_metadataP11PDFDocumentE9predicate__12_, &__block_literal_global_240_5919);
        }

        v80 = _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__12_(v51, 0);
        CFRelease(v51);
        if (v80)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Mutable, @"/Type", @"/Metadata");
          CFDictionarySetValue(Mutable, @"/Subtype", @"/XML");
          CFDictionarySetValue(Mutable, @"/%Stream", v80);
          PDFDocumentAddCatalogEntry(v239, @"/Metadata", Mutable);
          CFRelease(Mutable);
          v51 = v80;
          goto LABEL_148;
        }
      }
    }

LABEL_149:
    v82 = *(v1 + 496);
    if (!v82)
    {
      v94 = 0;
      goto LABEL_209;
    }

    v83 = v82[3];
    if (!v83 || v83[1] == *v83)
    {
      PDFDocumentBeginPage(*v82, 0);
      PDFDocumentEndPage(*v82);
    }

    v84 = v82[6];
    v85 = v82[7];
    if (v85 != v84)
    {
LABEL_186:
      while (v84 != v85)
      {
        v98 = *v84;
        v97 = *(v84 + 8);
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v99 = *(v84 + 16);
        PDFDocumentBeginObject(*v82, *v98);
        PDFDocumentPrintf(*v82, "<<");
        PDFDocumentPrintf(*v82, "/Type /Pages");
        v100 = *v82;
        if (v99)
        {
          PDFDocumentPrintPageParentReference(v100, "/Parent %R", v99);
        }

        else if ((*(v100 + 90) & 1) == 0)
        {
          v101 = *(v100 + 96) == INFINITY || *(v100 + 104) == INFINITY;
          if (!v101)
          {
            v102 = *(v100 + 112);
            *value = *(v100 + 96);
            v244 = v102;
            PDFDocumentPrintf(*v82, "/MediaBox %r", value);
            v100 = *v82;
          }

          v104 = *(v100 + 128);
          v105 = *(v100 + 136);
          v103 = (v100 + 128);
          if (v104 != INFINITY && v105 != INFINITY)
          {
            v107 = v103[1];
            *value = *v103;
            v244 = v107;
            PDFDocumentPrintf(*v82, "/CropBox %r", value);
          }
        }

        PDFDocumentPrintf(*v82, "/Count %d", v98[1]);
        PDFDocumentPrintf(*v82, "/Kids [");
        if (v98[2])
        {
          v108 = 0;
          do
          {
            PDFDocumentPrintReference(*v82, "%R", v98[v108++ + 3]);
          }

          while (v108 < v98[2]);
        }

        PDFDocumentPrintf(*v82, "]");
        PDFDocumentPrintf(*v82, ">>");
        PDFDocumentEndObject(*v82);
        if (v97)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v97);
        }

        v84 += 24;
      }

      v94 = v82[9];
      v1 = v239;
LABEL_209:
      v109 = *(v1 + 48);
      if (v109 && (v110 = PDFXRefTableAddObject(*(*v109 + 504))) != 0)
      {
        v111 = v110;
        Count = CFArrayGetCount(*(v109 + 16));
        v113 = malloc_type_calloc(1uLL, 8 * Count, 0x2004093837F09uLL);
        if (v113)
        {
          v235 = v111;
          v237 = v94;
          PDFDocumentBeginObject(*v109, v111);
          PDFDocumentPrintf(*v109, "[");
          if (Count)
          {
            for (j = 0; j != Count; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v109 + 16), j);
              v116 = *v109;
              PDFDocumentPrintf(*v109, "<<");
              PDFDocumentPrintf(v116, "/Type /OutputIntent");
              v117 = get_string(ValueAtIndex, @"S");
              Length = CFStringGetLength(v117);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v120 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xA0C6576DuLL);
              if (v120)
              {
                v121 = v120;
                if (CFStringGetCString(v117, v120, MaximumSizeForEncoding + 1, 0x8000100u))
                {
                  PDFDocumentPrintf(v116, "/S /%N", v121);
                }

                free(v121);
              }

              v122 = get_string(ValueAtIndex, @"OutputConditionIdentifier");
              PDFDocumentPrintf(v116, "/OutputConditionIdentifier %S", v122);
              v123 = get_string(ValueAtIndex, @"OutputCondition");
              if (v123)
              {
                PDFDocumentPrintf(v116, "/OutputCondition %T", v123);
              }

              v124 = get_string(ValueAtIndex, @"RegistryName");
              if (v124)
              {
                PDFDocumentPrintf(v116, "/RegistryName %S", v124);
              }

              v125 = get_string(ValueAtIndex, @"Info");
              if (v125)
              {
                PDFDocumentPrintf(v116, "/Info %T", v125);
              }

              else
              {
                PDFDocumentPrintf(v116, "/Info (none)", v234);
              }

              v126 = CFDictionaryGetValue(ValueAtIndex, @"DestOutputProfile");
              v127 = v126;
              if (v126)
              {
                v128 = CFGetTypeID(v126);
                if (kCGColorSpace_block_invoke_once != -1)
                {
                  dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
                }

                if (v128 == CGColorSpaceGetTypeID_type_id && (CGColorSpaceGetType(v127) == 6 || CGColorSpaceGetType(v127) == 11))
                {
                  v127 = PDFColorSpaceCreate(v116, v127, 0);
                  PDFDocumentPrintf(v116, "/DestOutputProfile");
                  PDFColorSpaceEmitReference(v127);
                }

                else
                {
                  v127 = 0;
                }
              }

              PDFDocumentPrintf(v116, ">>");
              v113[j] = v127;
            }

            PDFDocumentPrintf(*v109, "]");
            PDFDocumentEndObject(*v109);
            v129 = v113;
            v1 = v239;
            while (1)
            {
              v130 = *v129;
              if (*v129)
              {
                LODWORD(v33) = CGColorSpaceGetType(v130[3]);
                if ((v33 - 10) >= 2 && v33 != 6)
                {
                  goto LABEL_420;
                }

                v132 = v130[2];
                if (!v132)
                {
                  _CGHandleAssert("PDFColorSpaceEmitICCDataStream", 408, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number");
                }

                v133 = PDFStreamCreateWithObjectNumber(v130[1], v132);
                PDFDocumentBeginObject(*v133, v133[1]);
                PDFDocumentPrintf(*v133, "<<");
                v134 = v130[3];
                if (v134)
                {
                  v134 = *(*(v134 + 3) + 48);
                }

                PDFDocumentPrintf(v130[1], "/N %z", v134);
                PDFStreamBeginData(v133);
                v135 = CGColorSpaceCopyICCData(v130[3]);
                BytePtr = CFDataGetBytePtr(v135);
                v137 = CFDataGetLength(v135);
                CGDataConsumerPutBytes(v133[3], BytePtr, v137);
                CFRelease(v135);
                PDFStreamEndData(v133);
                PDFStreamEnd(v133);
                PDFStreamRelease(v133);
                PDFColorSpaceRelease(*v129);
                v1 = v239;
              }

              ++v129;
              if (!--Count)
              {
                goto LABEL_249;
              }
            }
          }

          PDFDocumentPrintf(*v109, "]");
          PDFDocumentEndObject(*v109);
LABEL_249:
          free(v113);
          v113 = v235;
          v94 = v237;
        }
      }

      else
      {
        v113 = 0;
      }

      v238 = PDFXRefTableAddObject(*(v1 + 504));
      if (v238)
      {
        PDFDocumentBeginObject(v1, v238);
        PDFDocumentPrintf(v1, "<<");
        PDFDocumentPrintf(v1, "/Type /Catalog");
        v138 = *(v1 + 352);
        if (v138)
        {
          CFDictionaryApplyFunction(v138, emit_catalog_entries, v1);
        }

        PDFDocumentPrintReference(v1, "/Pages %R", v94);
        v139 = *(v1 + 4);
        if (v139 < 2)
        {
          if (v139 == 1)
          {
            v140 = *(v1 + 8);
            if (v140 >= 4)
            {
              PDFDocumentPrintf(v1, "/Version /%d.%d", 1, v140);
            }
          }
        }

        else
        {
          PDFDocumentPrintf(v1, "/Version /%d.%d", *(v1 + 4), *(v1 + 8));
        }

        if (v113)
        {
          PDFDocumentPrintReference(v1, "/OutputIntents %R ", v113);
        }

        if (*(v1 + 624))
        {
          PDFDocumentPrintf(v1, "/MarkInfo << /Marked true >>");
          PDFDocumentPrintReference(v1, "/StructTreeRoot %R", *(v1 + 624));
        }

        if (*(v1 + 560))
        {
          v141 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v142 = *(v1 + 352);
          if (v142)
          {
            CFDictionaryApplyFunction(v142, copy_catalog_entries, v141);
          }

          CGCFDictionarySetInteger(v141, @"/Pages", v94);
          if (v113)
          {
            CGCFDictionarySetInteger(v141, @"/OutputIntents", v113);
          }

          v143 = *(v1 + 624);
          if (v143)
          {
            CGCFDictionarySetInteger(v141, @"/StructTreeRoot", v143);
          }

          v144 = *(v1 + 560);
          if (v144)
          {
            *(v144 + 256) = v238;
            v145 = *(v144 + 328);
            if (v145 != v141)
            {
              if (v145)
              {
                CFRelease(v145);
              }

              if (v141)
              {
                CFRetain(v141);
              }

              *(v144 + 328) = v141;
            }
          }

          CFRelease(v141);
        }

        PDFDocumentPrintf(v1, ">>");
        PDFDocumentEndObject(v1);
      }

      v146 = *(v1 + 456);
      if (v146)
      {
        CFDictionaryApplyFunction(*(v146 + 8), emitDestination, 0);
      }

      v147 = *(v1 + 40);
      if (v147)
      {
        while (1)
        {
          v148 = CFArrayGetCount(*(v147 + 16));
          if (!v148)
          {
            break;
          }

          v149 = v148 - 1;
          v150 = CFArrayGetValueAtIndex(*(v147 + 16), v148 - 1);
          CFArrayRemoveValueAtIndex(*(v147 + 16), v149);
          v151 = CFDictionaryGetValue(*(v147 + 24), v150);
          if (!v151)
          {
            _CGHandleAssert("write_top_level_object", 388, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Annotations/PDFMetaSet.c", "n != PDFObjectNumberInvalid", "invalid PDF object %lu", 0);
          }

          v152 = CFGetTypeID(v150);
          if (v152 == CFDictionaryGetTypeID() && (v153 = CFDictionaryGetValue(v150, @"/%Stream")) != 0)
          {
            v154 = v153;
            v155 = CFDictionaryGetValue(v150, @"/Type");
            if (v155)
            {
              v156 = CFStringCompare(v155, @"/Metadata", 0) == kCFCompareEqualTo;
            }

            else
            {
              v156 = 0;
            }

            v158 = PDFStreamCreateWithObjectNumber(*(v147 + 8), v151);
            v159 = v158;
            if (v158)
            {
              *(v158 + 65) = v156;
            }

            PDFDocumentBeginObject(*v158, v158[1]);
            PDFDocumentPrintf(*v159, "<<");
            CFDictionaryApplyFunction(v150, write_dictionary_entry, v147);
            PDFStreamBeginData(v159);
            v160 = CFDataGetBytePtr(v154);
            v161 = CFDataGetLength(v154);
            CGDataConsumerPutBytes(v159[3], v160, v161);
            PDFStreamEndData(v159);
            PDFStreamEnd(v159);
            PDFStreamRelease(v159);
          }

          else
          {
            v157 = CFGetTypeID(v150);
            if (v157 == CFDataGetTypeID())
            {
              write_object(v147, v150);
            }

            else
            {
              PDFDocumentBeginObject(*(v147 + 8), v151);
              write_object(v147, v150);
              PDFDocumentEndObject(*(v147 + 8));
            }
          }
        }
      }

      v162 = v239;
      emit_page_resources(v239);
      LOBYTE(v163) = 0;
      do
      {
        v164 = v239[23]._private;
        if (v164)
        {
          v163 = *(v164 + 9);
          if (v163)
          {
            do
            {
              v165 = *(v164 + 8);
              value[0] = *(v164 + 7);
              v166 = value[0];
              value[1] = v165;
              *(v164 + 8) = 0;
              *(v164 + 9) = 0;
              *&v244 = v163;
              *(v165 + 2) = &value[1];
              *(v164 + 7) = v164 + 64;
              if (v166 != &value[1])
              {
                do
                {
                  (*(**(v166 + 4) + 40))(*(v166 + 4));
                  v167 = *(v166 + 1);
                  if (v167)
                  {
                    do
                    {
                      v168 = v167;
                      v167 = *v167;
                    }

                    while (v167);
                  }

                  else
                  {
                    do
                    {
                      v168 = *(v166 + 2);
                      v101 = *v168 == v166;
                      v166 = v168;
                    }

                    while (!v101);
                  }

                  v166 = v168;
                }

                while (v168 != &value[1]);
                v165 = value[1];
              }

              std::__tree<unsigned long>::destroy(v165);
              v163 = *(v164 + 9);
            }

            while (v163);
            LOBYTE(v163) = 1;
          }
        }

        v169 = v163;
        v170 = PDFColorSpaceSetEmitDefinitions(v239[23].super.isa);
        v171 = PDFFunctionSetEmitDefinitions(v239[25]._private);
        LOBYTE(v163) = 1;
      }

      while ((v169 & 1) != 0 || (v170 & 1) != 0 || (v171 & 1) != 0);
      isa = v239[4].super.isa;
      if (!isa)
      {
LABEL_359:
        v207 = *(v162 + 56);
        if (v207 && ((v208 = *(v162 + 32)) == 0 || (*(v208 + 8) = 0, (v207 = *(v162 + 56)) != 0)))
        {
          v209 = PDFXRefTableAddObject(*(*v207 + 504));
          if (v209)
          {
            PDFDocumentBeginObject(*v207, v209);
            PDFDocumentPrintf(*v207, "<<");
            PDFDocumentPrintf(*v207, "/Filter /Standard");
            PDFDocumentPrintf(*v207, "/V %d", *(v207 + 8));
            PDFDocumentPrintf(*v207, "/R %d", *(v207 + 12));
            PDFDocumentPrintf(*v207, "/Length %d", *(v207 + 128));
            v210 = *(v207 + 8);
            if ((v210 - 4) >= 2)
            {
              if (v210 != 2)
              {
                _CGHandleAssert("PDFSecurityHandlerEmitEncrypt", 1189, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/Encryption/PDFSecurityHandler.c", "0", "unhandled file version %d  (File too new?)", *(v207 + 8));
              }
            }

            else
            {
              PDFDocumentPrintf(*v207, "/CF");
              PDFDocumentPrintf(*v207, "<<");
              PDFDocumentPrintf(*v207, "/StdCF");
              PDFDocumentPrintf(*v207, "<<");
              PDFDocumentPrintf(*v207, "/AuthEvent /DocOpen");
              if (*(v207 + 8) == 4)
              {
                v211 = "/AESV2";
              }

              else
              {
                v211 = "/AESV3";
              }

              PDFDocumentPrintf(*v207, "/CFM %s", v211);
              PDFDocumentPrintf(*v207, "/Length %d", *(v207 + 128) >> 3);
              PDFDocumentPrintf(*v207, ">>");
              PDFDocumentPrintf(*v207, ">>");
              PDFDocumentPrintf(*v207, "/StmF /StdCF");
              PDFDocumentPrintf(*v207, "/StrF /StdCF");
              PDFDocumentPrintf(*v207, "/EncryptMetadata %b", *(v207 + 136));
            }

            PDFDocumentPrintf(*v207, "/O %X", 32);
            PDFDocumentPrintf(*v207, "/U %X", 32);
            PDFDocumentPrintf(*v207, "/P %d", *(v207 + 24));
            PDFDocumentPrintf(*v207, ">>");
            PDFDocumentEndObject(*v207);
          }
        }

        else
        {
          v209 = 0;
        }

        v212 = *(v162 + 24);
        if (v212)
        {
          v213 = *(v212 + 40);
        }

        else
        {
          v213 = 0;
        }

        PDFXRefTableEmit(*(v162 + 504), v212, 0);
        v214 = *(v162 + 504);
        if (v214)
        {
          v215 = (*(v214 + 24) - *(v214 + 16)) >> 4;
        }

        else
        {
          LODWORD(v215) = 0;
        }

        PDFDocumentPrintf(v162, "trailer\n");
        PDFDocumentPrintf(v162, "<<");
        PDFDocumentPrintf(v162, "/Size %d", v215);
        PDFDocumentPrintReference(v162, "/Root %R", v238);
        if (v209)
        {
          PDFDocumentPrintReference(v162, "/Encrypt %R", v209);
        }

        v216 = *(v162 + 64);
        if (v216)
        {
          v217 = *(v216 + 16);
          v218 = v217 == 0;
          if (!v217 || (PDFDocumentPrintReference(v162, "/Info %R", *(v216 + 16)), (v216 = *(v162 + 64)) != 0))
          {
            v219 = *(v216 + 8);
            if (v219)
            {
              v220 = CFDictionaryGetValue(v219, @"CGPDFContextDocumentID");
              if (v220)
              {
                v221 = v220;
                v222 = CFGetTypeID(v220);
                if (v222 == CFArrayGetTypeID() && CFArrayGetCount(v221) == 2 && (v223 = CFArrayGetValueAtIndex(v221, 0), v224 = CFArrayGetValueAtIndex(v221, 1), v225 = CFGetTypeID(v223), v225 == CFDataGetTypeID()) && (v226 = CFGetTypeID(v224), v226 == CFDataGetTypeID()) && CFDataGetLength(v223) == 16 && CFDataGetLength(v224) == 16)
                {
                  v227 = CFDataGetBytePtr(v223);
                  CFDataGetBytePtr(v224);
                  v242[0] = 16;
                }

                else
                {
                  if (v221 != *MEMORY[0x1E695E738])
                  {
                    pdf_error("Invalid value for kCGPDFContextDocumentID.");
                  }

                  v242[0] = 16;
                  v227 = &emit_trailer(PDFDocument *)::md5;
                }

                v228 = v239;
                goto LABEL_398;
              }

              v162 = v239;
            }
          }
        }

        else
        {
          LODWORD(v217) = 0;
          v218 = 1;
        }

        v228 = v162;
        v227 = PDFDocumentGetID(v162, v242);
LABEL_398:
        PDFDocumentPrintf(v228, "/ID [");
        PDFDocumentPrintf(v228, "%X", LODWORD(v242[0]));
        PDFDocumentPrintf(v228, "%X", LODWORD(v242[0]));
        PDFDocumentPrintf(v228, "]");
        PDFDocumentPrintf(v228, ">>\n");
        if (*(v228 + 560))
        {
          v229 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CGCFDictionarySetInteger(v229, @"/Size", v215);
          CGCFDictionarySetInteger(v229, @"/Root", v238);
          if (v209)
          {
            CGCFDictionarySetInteger(v229, @"/Encrypt", v209);
          }

          if (!v218)
          {
            CGCFDictionarySetInteger(v229, @"/Info", v217);
          }

          v230 = CFDataCreate(*MEMORY[0x1E695E480], v227, v242[0]);
          CFDictionaryAddValue(v229, @"/ID", v230);
          CFRelease(v230);
          v231 = v239[35].super.isa;
          if (v231)
          {
            v232 = *(v231 + 40);
            if (v232 != v229)
            {
              if (v232)
              {
                CFRelease(v232);
              }

              if (v229)
              {
                CFRetain(v229);
              }

              *(v231 + 40) = v229;
            }
          }

          CFRelease(v229);
        }

        v1 = v239;
        PDFDocumentPrintf(v239, "startxref\n");
        PDFDocumentPrintf(v239, "%O\n", v213);
        PDFDocumentPrintf(v239, "%%%%EOF\n");
        goto LABEL_412;
      }

      if (!isa[1])
      {
        v176 = 0;
        v175 = 0;
        goto LABEL_336;
      }

      v173 = PDFInfoCopyKeywordsString(v239[4].super.isa);
      if (v173)
      {
        v174 = v173;
        v175 = PDFXRefTableAddObject(*(*isa + 504));
        PDFDocumentBeginObject(*isa, v175);
        PDFDocumentPrintf(*isa, "%T", v174);
        PDFDocumentEndObject(*isa);
        CFRelease(v174);
      }

      else
      {
        v175 = 0;
      }

      v177 = isa[1];
      if (!v177)
      {
        v176 = 0;
        goto LABEL_336;
      }

      v178 = CFDictionaryGetValue(v177, @"kCGPDFContextKeywords");
      v176 = v178;
      if (v178)
      {
        v179 = CFGetTypeID(v178);
        if (v179 == CFArrayGetTypeID())
        {
          v180 = CFArrayGetCount(v176);
          if (v180 >= 1)
          {
            v181 = v180;
            MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v176);
            for (k = 0; k < v181; ++k)
            {
              v184 = CFArrayGetValueAtIndex(MutableCopy, k);
              v185 = CFGetTypeID(v184);
              if (v185 != CFStringGetTypeID() || CFStringGetLength(v184) <= 0)
              {
                CFArrayRemoveValueAtIndex(MutableCopy, k);
                --v181;
                --k;
              }
            }

            if (v181 >= 1)
            {
              v176 = PDFXRefTableAddObject(*(*isa + 504));
              PDFDocumentBeginObject(*isa, v176);
              PDFDocumentPrintf(*isa, "[");
              for (m = 0; m != v181; ++m)
              {
                v187 = CFArrayGetValueAtIndex(MutableCopy, m);
                PDFDocumentPrintf(*isa, "%T", v187);
              }

              CFRelease(MutableCopy);
              PDFDocumentPrintf(*isa, "]");
              PDFDocumentEndObject(*isa);
              goto LABEL_332;
            }

            CFRelease(MutableCopy);
          }
        }

        v176 = 0;
      }

LABEL_332:
      v188 = isa[1];
      if (v188)
      {
        LOBYTE(value[0]) = 0;
        v189 = 0;
        if (CGCFDictionaryGetBoolean(v188, @"CreateAIGeneratedContentDictionary", value) && LOBYTE(value[0]))
        {
          v189 = PDFXRefTableAddObject(*(*isa + 504));
          PDFDocumentBeginObject(*isa, v189);
          PDFDocumentPrintf(*isa, "<<");
          v190 = *MEMORY[0x1E695E480];
          v191 = CFUUIDCreate(*MEMORY[0x1E695E480]);
          v192 = CFUUIDCreateString(v190, v191);
          CFRelease(v191);
          PDFDocumentPrintf(*isa, "/Label 1");
          PDFDocumentPrintf(*isa, "/ContentProducer %T", @"001191310115MAEA70M85H00000");
          PDFDocumentPrintf(*isa, "/ProduceID %T", v192);
          PDFDocumentPrintf(*isa, "/ReservedCode1 %T", &stru_1EF244DC0);
          PDFDocumentPrintf(*isa, "/ContentPropagator %T", @"001191310115MAEA70M85H00000");
          PDFDocumentPrintf(*isa, "/PropagateID %T", v192);
          PDFDocumentPrintf(*isa, "/ReservedCode2 %T", &stru_1EF244DC0);
          CFRelease(v192);
          PDFDocumentPrintf(*isa, ">>");
          PDFDocumentEndObject(*isa);
        }

        goto LABEL_337;
      }

LABEL_336:
      v189 = 0;
LABEL_337:
      v193 = PDFXRefTableAddObject(*(*isa + 504));
      isa[2] = v193;
      PDFDocumentBeginObject(*isa, v193);
      PDFDocumentPrintf(*isa, "<<");
      v194 = PDFInfoGetString(isa, @"kCGPDFContextTitle", @"Title");
      v195 = *(*isa + 48);
      if (!v194)
      {
        if (PDFOutputIntentGetIsX3(*(*isa + 48)))
        {
          v194 = @"Untitled";
        }

        else
        {
          v194 = 0;
        }
      }

      emit_key_string(isa, @"/Title", v194);
      v196 = PDFInfoCopyProducer(isa);
      if (v196)
      {
        v197 = v196;
        emit_key_string(isa, @"/Producer", v196);
        CFRelease(v197);
      }

      v198 = PDFInfoGetString(isa, @"kCGPDFContextAuthor", @"Author");
      emit_key_string(isa, @"/Author", v198);
      v199 = PDFInfoGetString(isa, @"kCGPDFContextSubject", @"Subject");
      emit_key_string(isa, @"/Subject", v199);
      v200 = PDFInfoGetString(isa, @"kCGPDFContextCreator", @"Creator");
      emit_key_string(isa, @"/Creator", v200);
      v201 = PDFInfoGetNowDate(isa);
      if (v201)
      {
        v202 = PDFCreateDateString(v201);
        if (v202)
        {
          v203 = v202;
          emit_key_string(isa, @"/CreationDate", v202);
          emit_key_string(isa, @"/ModDate", v203);
          CFRelease(v203);
        }
      }

      if (v175)
      {
        PDFDocumentPrintReference(*isa, "/Keywords %R", v175);
      }

      if (v176)
      {
        PDFDocumentPrintReference(*isa, "/AAPL:Keywords %R", v176);
      }

      if (v189)
      {
        PDFDocumentPrintReference(*isa, "/AIGC %R", v189);
      }

      v162 = v239;
      if (v195 && PDFOutputIntentGetIsX3(v195))
      {
        v204 = *v195;
        PDFDocumentPrintf(*v195, "/GTS_PDFXVersion (PDF/X-3:2002)");
        v205 = CFDictionaryGetValue(*(v195 + 8), @"Trapped");
        v206 = "False";
        if (v205 && CFEqual(v205, @"True"))
        {
          v206 = "True";
        }

        PDFDocumentPrintf(v204, "/Trapped /%N", v206);
      }

      PDFDocumentPrintf(*isa, ">>");
      PDFDocumentEndObject(*isa);
      goto LABEL_359;
    }

    for (n = 0; ; n = v92)
    {
      v87 = v82[3];
      v82[3] = 0;
      v82[4] = 0;
      v33 = v82[5];
      v82[5] = 0;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v33);
      }

      v89 = *v87;
      v88 = *(v87 + 1);
      if (v88 - *v87 == 16)
      {
        break;
      }

      v236 = v87;
      if (v89 == v88)
      {
        v92 = n;
      }

      else
      {
        do
        {
          v91 = *v89;
          v90 = *(v89 + 8);
          if (v90)
          {
            atomic_fetch_add_explicit(v90 + 1, 1uLL, memory_order_relaxed);
          }

          PDFPageTree::addNode(value, v82, *v91, *(v91 + 1));
          v93 = value[0];
          v92 = value[1];
          value[0] = 0;
          value[1] = 0;
          if (n)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](n);
            if (value[1])
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
            }
          }

          value[0] = v91;
          value[1] = v90;
          if (v90)
          {
            atomic_fetch_add_explicit(v90 + 1, 1uLL, memory_order_relaxed);
          }

          *&v244 = *v93;
          std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::push_back[abi:fe200100]((v82 + 6), value);
          if (value[1])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
          }

          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v90);
          }

          v89 += 16;
          n = v92;
        }

        while (v89 != v88);
      }

      value[0] = v236;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](value);
      MEMORY[0x1865EE610](v236, 0x20C40960023A9);
    }

    if (v89 != v88)
    {
      v95 = *v89;
      v96 = *(v89 + 8);
      if (v96)
      {
        atomic_fetch_add_explicit(v96 + 1, 1uLL, memory_order_relaxed);
        value[0] = v95;
        value[1] = v96;
        atomic_fetch_add_explicit(v96 + 1, 1uLL, memory_order_relaxed);
      }

      else
      {
        value[0] = *v89;
        value[1] = 0;
      }

      *&v244 = 0;
      std::vector<std::pair<std::shared_ptr<PDFPageNode>,unsigned long>>::push_back[abi:fe200100]((v82 + 6), value);
      if (value[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](value[1]);
      }

      v82[9] = *v95;
      value[0] = v87;
      std::vector<std::shared_ptr<PageLayoutTable>>::__destroy_vector::operator()[abi:fe200100](value);
      MEMORY[0x1865EE610](v87, 0x20C40960023A9);
      if (n)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](n);
      }

      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v96);
      }

      v84 = v82[6];
      v85 = v82[7];
      goto LABEL_186;
    }

LABEL_419:
    __break(1u);
LABEL_420:
    _CGHandleAssert("PDFColorSpaceEmitICCDataStream", 407, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "type == kCGColorSpaceICCBased || type == kCGColorSpaceProfileSets || type == kCGColorSpaceFlexGTCProxy", "invalid colorspace type %d", v33);
  }

LABEL_412:
  CGDataConsumerClose(*(v1 + 24));
  result = *(v1 + 560);
  if (result)
  {
    PDFLinearizer::endDocument(result, *(v1 + 568));
  }

  *(v1 + 72) = 1;
  return result;
}

void sub_18410C150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a24);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(*a1);
    std::__tree<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::__map_value_compare<CGFont *,std::__value_type<CGFont *,std::unique_ptr<PDFFont>>,std::less<CGFont *>,true>,std::allocator<std::__value_type<CGFont *,std::unique_ptr<PDFFont>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t *PDFDocumentBeginObject(uint64_t *a1, unint64_t a2)
{
  v11 = 0;
  result = PDFWriterBeginObject(a1[4], a2, &v11);
  v5 = a1[63];
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = a2 >= v6;
    v8 = a2 - v6;
    if (v7)
    {
      v10 = v5 + 16;
      v9 = *(v5 + 16);
      if (v8 < (*(v10 + 8) - v9) >> 4)
      {
        *(v9 + 16 * v8) = v11;
      }
    }
  }

  a1[35] = a2;
  return result;
}

_BYTE *PDFDocumentEndObject(uint64_t *a1)
{
  v10 = 0;
  result = PDFWriterEndObject(a1[4], &v10);
  v3 = a1[63];
  if (v3)
  {
    v4 = a1[35];
    v5 = *(v3 + 8);
    v6 = v4 >= v5;
    v7 = v4 - v5;
    if (v6)
    {
      v9 = v3 + 16;
      v8 = *(v3 + 16);
      if (v7 < (*(v9 + 8) - v8) >> 4)
      {
        *(v8 + 16 * v7 + 8) = v10 - *(v8 + 16 * v7);
      }
    }
  }

  a1[35] = 0;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(float *a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

void PDFDocumentEmitTaggedNodeStructure(PDFDocument *a1, unint64_t a2, __CFDictionary *a3, uint64_t a4)
{
  v53 = -1;
  CGCFDictionaryGetNumber(a3, @"TagNodeMCID", kCFNumberSInt64Type, &v53);
  tagType = 0;
  if (CGCFDictionaryGetInteger(a3, @"TagNodeType", &tagType))
  {
    v8 = tagType;
    Name = CGPDFTagTypeGetName(tagType);
    if (Name)
    {
      v10 = Name;
      v51 = 0;
      Integer = CGCFDictionaryGetInteger(a3, @"PageObjectNumber", &v51);
      if (v53 != -1)
      {
        v12 = a1[18]._private;
        *&value = v53 | (v51 << 32);
        *(&value + 1) = a2;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v12, value, &value);
      }

      if (v8 == 800)
      {
        PDFDocumentBeginObject(a1, a2);
        LODWORD(value) = 0;
        CGCFDictionaryGetInteger(a3, @"TagNodeObjectRefID", &value);
        v13 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(a1[18].super.isa, value);
        if (v13)
        {
          v14 = v13[3];
        }

        else
        {
          v14 = -1;
        }

        PDFDocumentPrintf(a1, "<<");
        PDFDocumentPrintf(a1, "/Type /OBJR");
        PDFDocumentPrintf(a1, "/Obj %R", v14);
        PDFDocumentPrintReference(a1, "/P %R", a4);
        if (Integer)
        {
          PDFDocumentPrintReference(a1, "/Pg %R", v51);
        }

        PDFDocumentPrintf(a1, ">>");
        PDFDocumentEndObject(a1);
      }

      else
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v16 = CFDictionaryGetValue(a3, @"TagNodeChildren");
        v17 = v16;
        if (v16)
        {
          Count = CFArrayGetCount(v16);
        }

        else
        {
          Count = 0;
        }

        PDFDocumentBeginObject(a1, a2);
        PDFDocumentPrintf(a1, "<< /Type /StructElem");
        PDFDocumentPrintf(a1, "/S %s", v10);
        PDFDocumentPrintReference(a1, "/P %R", a4);
        if (Integer && (Count < 1 || v53 != -1))
        {
          PDFDocumentPrintReference(a1, "/Pg %R", v51);
        }

        v19 = CFDictionaryGetValue(a3, @"TagNodeProperties");
        if (v19)
        {
          v20 = v19;
          if (v8 == CGPDFTagTypeFigure)
          {
            isa = a1[20].super.isa;
            if (isa)
            {
              v22 = vcnt_s8(isa);
              v22.i16[0] = vaddlv_u8(v22);
              if (v22.u32[0] > 1uLL)
              {
                v23 = v53;
                if (v53 >= isa)
                {
                  v23 = v53 % isa;
                }
              }

              else
              {
                v23 = (isa - 1) & v53;
              }

              v24 = *(a1[19]._private + v23);
              if (v24)
              {
                for (i = *v24; i; i = *i)
                {
                  v26 = i[1];
                  if (v53 == v26)
                  {
                    if (i[2] == v53)
                    {
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    if (v22.u32[0] > 1uLL)
                    {
                      if (v26 >= isa)
                      {
                        v26 %= isa;
                      }
                    }

                    else
                    {
                      v26 &= isa - 1;
                    }

                    if (v26 != v23)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          TypeID = CFStringGetTypeID();
          ValueWithType = CGCFDictionaryGetValueWithType(v20, @"CGPDFTagPropertyLanguageText", TypeID);
          if (ValueWithType || (v29 = CFStringGetTypeID(), (ValueWithType = CGCFDictionaryGetValueWithType(v20, @"Lang", v29)) != 0))
          {
            PDFDocumentPrintf(a1, "/Lang %T", ValueWithType);
          }

          v30 = CFStringGetTypeID();
          v31 = CGCFDictionaryGetValueWithType(v20, @"CGPDFTagPropertyAlternativeText", v30);
          if (v31 || (v32 = CFStringGetTypeID(), (v31 = CGCFDictionaryGetValueWithType(v20, @"Alt", v32)) != 0))
          {
            PDFDocumentPrintf(a1, "/Alt %T", v31);
          }

          v33 = CFStringGetTypeID();
          v34 = CGCFDictionaryGetValueWithType(v20, @"CGPDFTagPropertyActualText", v33);
          if (v34 || (v35 = CFStringGetTypeID(), (v34 = CGCFDictionaryGetValueWithType(v20, @"ActualText", v35)) != 0))
          {
            PDFDocumentPrintf(a1, "/ActualText %T", v34);
          }

          v36 = CFStringGetTypeID();
          v37 = CGCFDictionaryGetValueWithType(v20, @"CGPDFTagPropertyTitleText", v36);
          if (v37 || (v38 = CFStringGetTypeID(), (v37 = CGCFDictionaryGetValueWithType(v20, @"T", v38)) != 0))
          {
            PDFDocumentPrintf(a1, "/T %T", v37);
          }
        }

LABEL_49:
        *&value = 0;
        if (CFDictionaryGetValueIfPresent(a3, @"ID", &value))
        {
          CStringPtr = CFStringGetCStringPtr(value, 0x8000100u);
          PDFDocumentPrintf(a1, "/ID (%s)", CStringPtr);
        }

        if (Count <= 0)
        {
          PDFDocumentPrintf(a1, "/K %d ");
        }

        else
        {
          PDFDocumentPrintf(a1, "/K [");
          v40 = Count;
          if ((v53 & 0x8000000000000000) == 0)
          {
            PDFDocumentPrintf(a1, "%d", v53);
            v40 = Count;
          }

          do
          {
            v41 = PDFXRefTableAddObject(a1[31]._private);
            CGCFArrayAppendInteger(Mutable, v41);
            PDFDocumentPrintReference(a1, "%R", v41);
            --v40;
          }

          while (v40);
          PDFDocumentPrintf(a1, "]");
        }

        PDFDocumentPrintf(a1, " >>");
        PDFDocumentEndObject(a1);
        number = 0;
        if (CFDictionaryGetValueIfPresent(a3, @"TagNodeObjectRefID", &number))
        {
          valuePtr = 0;
          CFNumberGetValue(number, kCFNumberLongType, &valuePtr);
          v42 = a1[18].super.isa;
          *&value = valuePtr;
          *(&value + 1) = a2;
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v42, valuePtr, &value);
        }

        if (Count >= 1)
        {
          for (j = 0; j != Count; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, j);
            if (Mutable && (v45 = CFArrayGetValueAtIndex(Mutable, j)) != 0 && (v46 = v45, v47 = CFGetTypeID(v45), v47 == CFNumberGetTypeID()) && (LODWORD(value) = 0, CFNumberGetValue(v46, kCFNumberIntType, &value)))
            {
              v48 = value;
            }

            else
            {
              v48 = 0;
            }

            PDFDocumentEmitTaggedNodeStructure(a1, v48, ValueAtIndex, a2);
          }
        }

        CFRelease(Mutable);
      }
    }
  }
}

void *__Block_byref_object_copy__5897(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZL28PDFDocumentEmitStructureTreeP11PDFDocument_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(*(a2 + 48) + 64);
  v5 = *(*(a1 + 32) + 8);
  if (*(a2 + 16))
  {
    v17 = v3;
    v18[0] = v4;
    v19 = 0;
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>((v5 + 48), v3, &v17);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v18);
    return;
  }

  v17 = v3;
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  v6 = std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>((v5 + 48), v3, &v17);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](v18);
  if (*(v6 + 16) != 1)
  {
LABEL_18:
    std::__throw_bad_variant_access[abi:fe200100]();
  }

  v7 = *(a2 + 32);
  v8 = v6[5];
  v9 = v6[6];
  v10 = (v9 - v8) >> 3;
  v11 = v7 + 1;
  if (v7 + 1 > v10)
  {
    v12 = v11 - v10;
    v13 = v6[7];
    if (v12 > (v13 - v9) >> 3)
    {
      if (!(v11 >> 61))
      {
        v14 = v13 - v8;
        if (v14 >> 2 > v11)
        {
          v11 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v11;
        }

        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v15);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    bzero(v6[6], 8 * v12);
    v16 = v9 + 8 * v12;
    v6[6] = v16;
    v10 = (v16 - v8) >> 3;
  }

  if (v10 <= v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v8 + 8 * v7) = v4;
}

void std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(*a1);
    std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::destroy(a1[1]);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100]((a1 + 5));

    operator delete(a1);
  }
}

uint64_t PDFDocumentGetID(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 256) & 1) == 0)
  {
    v4 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    CC_MD5_Init(v4);
    data = time(0);
    if (v4)
    {
      CC_MD5_Update(v4, &data, 8u);
      CC_MD5_Update(v4, &PDFDocumentGetID::stamp, 4u);
    }

    ++PDFDocumentGetID::stamp;
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(v5 + 40);
    }

    else
    {
      v6 = 0;
    }

    v15 = v6;
    if (v4)
    {
      CC_MD5_Update(v4, &v15, 8u);
      v5 = *(a1 + 24);
    }

    if (v5)
    {
      if (*(v5 + 72) == url_put_bytes)
      {
        v8 = *(v5 + 16);
        if (v8)
        {
          if (*v8)
          {
            v9 = CFURLCopyAbsoluteURL(*v8);
            if (v9)
            {
              v10 = v9;
              v11 = CFURLCopyPath(v9);
              if (v11)
              {
                v12 = v11;
                Length = CFStringGetLength(v11);
                v15 = 2 * Length;
                v14 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
                v19.location = 0;
                v19.length = Length;
                CFStringGetCharacters(v12, v19, v14);
                if (v4)
                {
                  md5_update(v4, v14, v15);
                }

                free(v14);
                CFRelease(v12);
              }

              CFRelease(v10);
            }
          }
        }
      }
    }

    data = time(0);
    if (v4)
    {
      CC_MD5_Update(v4, &data, 8u);
      CC_MD5_Final(md, v4);
    }

    free(v4);
    *(a1 + 257) = *md;
    *(a1 + 256) = 1;
  }

  if (a2)
  {
    *a2 = 16;
  }

  return a1 + 257;
}

void PDFDocumentAddCatalogEntry(uint64_t a1, const void *a2, void *key)
{
  if (a1)
  {
    v6 = *(a1 + 40);
    Value = CFDictionaryGetValue(*(v6 + 24), key);
    if (Value || (Value = PDFXRefTableAddObject(*(*(v6 + 8) + 504)), CFDictionarySetValue(*(v6 + 24), key, Value), CFArrayAppendValue(*(v6 + 16), key), Value))
    {
      Mutable = *(a1 + 352);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
        *(a1 + 352) = Mutable;
      }

      CFDictionarySetValue(Mutable, a2, Value);
    }
  }
}

void PDFDocumentPrintReference(uint64_t a1, char *a2, uint64_t a3, ...)
{
  PDFDocumentPrintf(a1, a2, a3);
  v5 = *(a1 + 560);
  if (v5)
  {
    v6 = *(a1 + 280);

    PDFLinearizerRecordReference(v5, a3, v6);
  }
}

uint64_t emit_page_resources(PDFDocument *a1)
{
  do
  {
    isa = a1[25].super.isa;
    context = 0;
    if (isa && (v3 = *(isa + 2)) != 0)
    {
      do
      {
        *(isa + 2) = 0;
        v4 = *(v3 + 8);
        v41.length = CFArrayGetCount(v4);
        v41.location = 0;
        CFArrayApplyFunction(v4, v41, emitFormDefinition, &context);
        CGOrderedSetRelease(v3);
        v3 = *(isa + 2);
      }

      while (v3);
      v5 = context;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[27].super.isa;
    v36 = 0;
    if (v6 && (v7 = *(v6 + 2)) != 0)
    {
      do
      {
        *(v6 + 2) = 0;
        v8 = *(v7 + 8);
        v42.length = CFArrayGetCount(v8);
        v42.location = 0;
        CFArrayApplyFunction(v8, v42, emitClipMaskDefinition, &v36);
        CGOrderedSetRelease(v7);
        v7 = *(v6 + 2);
      }

      while (v7);
      v9 = v36;
    }

    else
    {
      v9 = 0;
    }

    v10 = a1[26].super.isa;
    v37 = 0;
    if (v10 && (v11 = *(v10 + 2)) != 0)
    {
      do
      {
        *(v10 + 2) = 0;
        v12 = *(v11 + 8);
        v43.length = CFArrayGetCount(v12);
        v43.location = 0;
        CFArrayApplyFunction(v12, v43, emitPatternDefinition, &v37);
        CGOrderedSetRelease(v11);
        v11 = *(v10 + 2);
      }

      while (v11);
      v13 = v37;
    }

    else
    {
      v13 = 0;
    }

    v14 = a1[26]._private;
    v38 = 0;
    if (v14 && (v15 = *(v14 + 2)) != 0)
    {
      do
      {
        *(v14 + 2) = 0;
        v16 = *(v15 + 8);
        v44.length = CFArrayGetCount(v16);
        v44.location = 0;
        CFArrayApplyFunction(v16, v44, emitShadingDefinition, &v38);
        CGOrderedSetRelease(v15);
        v15 = *(v14 + 2);
      }

      while (v15);
      v17 = v38;
    }

    else
    {
      v17 = 0;
    }

    v18 = PDFImageSetEmitDefinitions(a1[24].super.isa);
    v19 = PDFImageSetEmitDefinitions(a1[24]._private);
    v20 = a1[27]._private;
    v39 = 0;
    if (v20)
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v22 = v5;
        do
        {
          *(v20 + 2) = 0;
          v23 = *(v21 + 8);
          v45.length = CFArrayGetCount(v23);
          v45.location = 0;
          CFArrayApplyFunction(v23, v45, emitEStateDefinition, &v39);
          CGOrderedSetRelease(v21);
          v21 = *(v20 + 2);
        }

        while (v21);
        LOBYTE(v20) = v39;
        v5 = v22;
      }

      else
      {
        LOBYTE(v20) = 0;
      }
    }

    v24 = a1[28].super.isa;
    v40 = 0;
    if (v24 && (v25 = *(v24 + 2)) != 0)
    {
      v34 = v17;
      v26 = v13;
      v27 = v9;
      v28 = v5;
      do
      {
        *(v24 + 2) = 0;
        v29 = *(v25 + 8);
        v46.length = CFArrayGetCount(v29);
        v46.location = 0;
        CFArrayApplyFunction(v29, v46, emitPropertyListDefinition, &v40);
        CGOrderedSetRelease(v25);
        v25 = *(v24 + 2);
      }

      while (v25);
      v30 = v40;
      v5 = v28;
      v9 = v27;
      v13 = v26;
      v17 = v34;
    }

    else
    {
      v30 = 0;
    }

    v31 = v5 | v9 | v13 | v17 | v18 | v19 | v20 | v30;
    v32 = PDFColorSpaceSetEmitDefinitions(a1[23].super.isa);
    result = PDFFunctionSetEmitDefinitions(a1[25]._private);
  }

  while ((v31 & 1) != 0 || (v32 & 1) != 0 || (result & 1) != 0);
  return result;
}

void PDFDocumentPrintNameReferencePair(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, ...)
{
  PDFDocumentPrintf(a1, a2, a3, a4);
  v6 = *(a1 + 560);
  if (v6)
  {
    v7 = *(a1 + 280);

    PDFLinearizerRecordReference(v6, a4, v7);
  }
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_14()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataCreateXMPData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataCreateXMPData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataCreateXMPData", v0);
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__12_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_13()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__11_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_12()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  _ZZL24create_pdfa_xmp_metadataP11PDFDocumentE1f__10_ = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_11()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_10()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_9()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_8()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_7()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_6()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_5()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_4()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_3()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataSetValueWithPath");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataSetValueWithPath");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataSetValueWithPath", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

void *___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke_2()
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataRegisterNamespaceForPrefix");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataRegisterNamespaceForPrefix");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataRegisterNamespaceForPrefix", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

uint64_t (*___ZL24create_pdfa_xmp_metadataP11PDFDocument_block_invoke())(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  v0 = CGLibraryLoadImageIODYLD_handle;
  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", "CGImageMetadataCreateMutable");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageMetadataCreateMutable");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", "CGImageMetadataCreateMutable", v0);
  }

  create_pdfa_xmp_metadata(PDFDocument *)::f = result;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>::__destroy[abi:fe200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1EF23B538[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8fe200100IOZNS0_6__dtorINS0_8__traitsIJmNS_6vectorImNS_9allocatorImEEEEEEELNS0_6_TraitE1EE9__destroyB8fe200100EvEUlRT_E_JRNS0_6__baseILSD_1EJmSB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<PDFDocumentEmitStructureTree(PDFDocument *)::$_0,PDFDocumentEmitStructureTree(PDFDocument *)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,std::vector<unsigned long>> const&>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  PDFDocumentPrintf(*(*a1 + 8), "[");
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *(v3 + 8);
      if (*v4)
      {
        PDFDocumentPrintf(v6, "%R", *v4);
      }

      else
      {
        PDFDocumentPrintf(v6, "null", v8);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = *(v3 + 8);

  PDFDocumentPrintf(v7, "]");
}

uint64_t *std::__tree<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::__map_value_compare<long,std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::variant<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<long,std::pair<long const,std::variant<unsigned long,std::vector<unsigned long>>>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:fe200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>>::__generic_construct[abi:fe200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,std::vector<unsigned long>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,std::vector<unsigned long>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *a2 = 0uLL;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void PDFDocumentPushContentStream(uint64_t a1, void *value)
{
  Mutable = *(a1 + 512);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 512) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

void PDFDocumentPopContentStream(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v4 = Count - 1;
    if (Count >= 1)
    {
      v5 = *(a1 + 512);

      CFArrayRemoveValueAtIndex(v5, v4);
    }
  }
}

const void *PDFDocumentGetContentStream(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2 && (Count = CFArrayGetCount(v2)) != 0)
  {
    v4 = Count - 1;
    v5 = *(a1 + 512);

    return CFArrayGetValueAtIndex(v5, v4);
  }

  else
  {
    pdf_error("No content stream. It is required to call CGPDFContextBeginPage prior to rendering content into a PDFContext.");
    return 0;
  }
}

void *PDFDocumentSetOutputIntent(__CFArray *a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v4 == result)
  {
    PDFOutputIntentRelease(*(a1 + 6));
    result = PDFOutputIntentCreate(a1, cf);
    *(a1 + 6) = result;
  }

  return result;
}

void PDFDocumentAddPDFXInfo(uint64_t *a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    PDFDocumentSetOutputIntent(a1, cf);
    Value = CFDictionaryGetValue(cf, @"kCGPDFContextAuthor");
    if (Value)
    {
      PDFInfoSetValue(a1[8], @"kCGPDFContextAuthor", Value);
    }

    v6 = CFDictionaryGetValue(cf, @"kCGPDFContextCreator");
    if (v6)
    {
      v7 = v6;
      v8 = a1[8];

      PDFInfoSetValue(v8, @"kCGPDFContextCreator", v7);
    }
  }
}

Class PDFDocumentPushTag(PDFDocument *a1, int a2, const __CFDictionary *a3)
{
  isa = a1[37].super.isa;
  a1[37].super.isa = (isa + 1);
  TagNode = PDFDocumentCreateTagNode(a1, isa, a2, a3, 1);
  v6 = TagNode;
  if (a1[38].super.isa)
  {
    v7 = a1[37]._private;
    if (v7 && CFArrayGetCount(v7))
    {
      Count = CFArrayGetCount(a1[37]._private);
      ValueAtIndex = CFArrayGetValueAtIndex(a1[37]._private, Count - 1);
      Value = CFDictionaryGetValue(ValueAtIndex, @"TagNodeChildren");
      if (!Value)
      {
        Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(ValueAtIndex, @"TagNodeChildren", Value);
        CFRelease(Value);
      }

      CFDictionaryRemoveValue(ValueAtIndex, @"TagNodeMCID");
      CFArrayAppendValue(Value, v6);
      CFRelease(v6);
    }
  }

  else
  {
    a1[38].super.isa = TagNode;
  }

  CFArrayAppendValue(a1[37]._private, v6);
  return isa;
}

__CFDictionary *PDFDocumentCreateTagNode(PDFDocument *a1, uint64_t a2, int a3, const __CFDictionary *a4, int a5)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CGCFDictionarySetNumber(Mutable, @"TagNodeMCID", kCFNumberSInt64Type, &valuePtr);
  CGCFDictionarySetInteger(Mutable, @"TagNodeType", a3);
  if (a4)
  {
    CFDictionarySetValue(Mutable, @"TagNodeProperties", a4);
  }

  v10 = a1[32]._private;
  if (v10 && a5)
  {
    CGCFDictionarySetInteger(Mutable, @"PageObjectNumber", *(v10 + 4));
  }

  return Mutable;
}

uint64_t StructureElementPathForMCID(const __CFDictionary *a1, uint64_t a2, __CFArray **a3)
{
  v14 = -1;
  if (CGCFDictionaryGetNumber(a1, @"TagNodeMCID", kCFNumberSInt64Type, &v14) && v14 == a2)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, a1);
  }

  else
  {
    result = CFDictionaryGetValue(a1, @"TagNodeChildren");
    if (!result)
    {
      return result;
    }

    v8 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (StructureElementPathForMCID(ValueAtIndex, a2, a3))
      {
        break;
      }

      if (v10 == ++v11)
      {
        return 0;
      }
    }

    CFArrayInsertValueAtIndex(*a3, 0, a1);
  }

  return 1;
}

void PDFDocumentInsertStructureElementPath(PDFDocument *a1, CFArrayRef theArray)
{
  v2 = theArray;
  Count = CFArrayGetCount(theArray);
  v25 = Count - 1;
  if (Count >= 1)
  {
    v5 = Count;
    isa = a1[38].super.isa;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    if (StructureElementsAreEqual(isa, ValueAtIndex, 0) && v5 != 1)
    {
      v9 = 1;
      allocator = *MEMORY[0x1E695E480];
      v24 = v5;
      do
      {
        v10 = CFArrayGetValueAtIndex(v2, v9);
        Value = CFDictionaryGetValue(isa, @"TagNodeChildren");
        if (Value)
        {
          Mutable = Value;
          v13 = CFArrayGetCount(Value);
          if (v13 >= 1)
          {
            v14 = v13;
            v15 = v2;
            v16 = a1;
            v17 = 0;
            while (1)
            {
              isa = CFArrayGetValueAtIndex(Mutable, v17);
              if (StructureElementsAreEqual(v10, isa, 1))
              {
                break;
              }

              if (v14 == ++v17)
              {
                a1 = v16;
                v2 = v15;
                v5 = v24;
                goto LABEL_15;
              }
            }

            a1 = v16;
            v2 = v15;
            v5 = v24;
            if (isa)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          CFDictionarySetValue(isa, @"TagNodeChildren", Mutable);
          CFRelease(Mutable);
        }

LABEL_15:
        v29 = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeMCID", kCFNumberSInt64Type, &v29);
        valuePtr = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeStructureID", kCFNumberSInt64Type, &valuePtr);
        v27 = -1;
        CGCFDictionaryGetNumber(v10, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v27);
        v26 = CGPDFTagTypeDiv;
        CGCFDictionaryGetInteger(v10, @"TagNodeType", &v26);
        v18 = CFDictionaryGetValue(v10, @"TagNodeProperties");
        isa = PDFDocumentCreateTagNode(a1, v29, v26, v18, v9 == v25);
        CGCFDictionarySetNumber(isa, @"TagNodeStructureID", kCFNumberSInt64Type, &valuePtr);
        CGCFDictionarySetNumber(isa, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v27);
        v19 = CFDictionaryGetValue(v10, @"ID");
        if (v19)
        {
          CFDictionarySetValue(isa, @"ID", v19);
        }

        v20 = CFArrayGetCount(Mutable);
        v31 = -1;
        CGCFDictionaryGetNumber(isa, @"TagNodeStructureID", kCFNumberSInt64Type, &v31);
        if (v20 < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          while (1)
          {
            v30 = -1;
            v22 = CFArrayGetValueAtIndex(Mutable, v21);
            CGCFDictionaryGetNumber(v22, @"TagNodeStructureID", kCFNumberSInt64Type, &v30);
            if (v30 >= v31)
            {
              break;
            }

            if (v20 == ++v21)
            {
              v21 = v20;
              break;
            }
          }
        }

        CFArrayInsertValueAtIndex(Mutable, v21, isa);
        CFRelease(isa);
LABEL_24:
        ++v9;
      }

      while (v9 != v5);
    }
  }
}

uint64_t StructureElementsAreEqual(const __CFDictionary *a1, const __CFDictionary *a2, int a3)
{
  v12 = -1;
  result = CGCFDictionaryGetNumber(a1, @"TagNodeMCID", kCFNumberSInt64Type, &v12);
  if (result)
  {
    v11 = -1;
    result = CGCFDictionaryGetNumber(a2, @"TagNodeMCID", kCFNumberSInt64Type, &v11);
    if (result)
    {
      if (v12 != v11)
      {
        return 0;
      }

      v10 = 104;
      result = CGCFDictionaryGetInteger(a1, @"TagNodeType", &v10);
      if (result)
      {
        v9 = 104;
        result = CGCFDictionaryGetInteger(a2, @"TagNodeType", &v9);
        if (result)
        {
          if (v10 != v9)
          {
            return 0;
          }

          if (!a3)
          {
LABEL_11:
            LODWORD(v8) = -1;
            LODWORD(v7) = -1;
            return !CGCFDictionaryGetInteger(a1, @"PageObjectNumber", &v8) || !CGCFDictionaryGetInteger(a2, @"PageObjectNumber", &v7) || v8 == v7;
          }

          v8 = -1;
          result = CGCFDictionaryGetNumber(a1, @"TagNodeStructureID", kCFNumberSInt64Type, &v8);
          if (result)
          {
            v7 = -1;
            result = CGCFDictionaryGetNumber(a2, @"TagNodeStructureID", kCFNumberSInt64Type, &v7);
            if (result)
            {
              if (v8 == v7)
              {
                goto LABEL_11;
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void PDFDocumentBeginMarkedContentSequence(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2);
  }

  else if (*(a1 + 520))
  {
    v2 = a2;
    ContentStream = PDFDocumentGetContentStream(a1);
    Name = CGPDFTagTypeGetName(v2);
    PDFWriterPrintf(ContentStream[8], "%s BMC", Name);
    ContentStream[24] = (ContentStream[24] + 1);
  }

  else
  {
    CGPostError("%s: Cannot start a marked content sequence without first starting a page", a2);
  }
}

uint64_t PDFDocumentBeginStructuralMarkedContentSequence(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", a2);
    return 0;
  }

  if (!*(a1 + 520))
  {
    CGPostError("%s: Cannot start a structural marked content sequence without first starting a page", a2);
    return 0;
  }

  v5 = a2;
  ContentStream = PDFDocumentGetContentStream(a1);
  if ((ContentStream[23] & 0x8000000000000000) == 0)
  {
    CGPostError("%s: Cannot start a structural marked content sequence once one has already started", v7);
    return 0;
  }

  v8 = ContentStream;
  v9 = *(a1 + 520);
  Name = CGPDFTagTypeGetName(v5);
  v11 = CGPDFMarkedContentItemCreate();
  v2 = v11;
  if (v11)
  {
    PDFMarkedContentItem::PDFMarkedContentItem(v11 + 16, 0, v9);
  }

  PDFWriterPrintf(v8[8], "%s << /MCID %d >> BDC", Name, *(v2 + 32));
  v12 = v8[24];
  v8[23] = v12;
  v8[24] = v12 + 1;
  return v2;
}

void PDFDocumentEndMarkedContentSequence(uint64_t a1)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions");
  }

  else
  {
    ContentStream = PDFDocumentGetContentStream(a1);
    if (ContentStream[24] <= 0)
    {
      CGPostError("%s: End marked content sequence does not have a matching begin");
    }

    else
    {
      v2 = ContentStream;
      PDFWriterPrintf(ContentStream[8], "EMC");
      v3 = v2[23];
      v4 = v2[24] - 1;
      v2[24] = v4;
      if (v3 == v4)
      {
        v2[23] = -1;
      }
    }
  }
}

uint64_t PDFDocumentBeginObjectReference(void *a1)
{
  if (a1[75])
  {
    CGPostError("%s: Don't mix the old and new tagging functions");
    return 0;
  }

  v3 = a1[65];
  if (!v3)
  {
    CGPostError("%s: Cannot start an object reference without first starting a page");
    return 0;
  }

  if (a1[79])
  {
    CGPostError("%s: Cannot start another object reference without ending the first one");
    return 0;
  }

  result = CGPDFMarkedContentItemCreate();
  if (result)
  {
    *(result + 16) = 1;
    *(result + 24) = *(v3 + 16);
    *(result + 48) = 0;
    *(result + 32) = xmmword_18439CAF0;
  }

  a1[79] = result;
  return result;
}

void PDFDocumentEndObjectReference(uint64_t a1)
{
  if (*(a1 + 600))
  {
    CGPostError("%s: Don't mix the old and new tagging functions", "PDFDocumentEndObjectReference");
  }

  else
  {
    if (!*(a1 + 632))
    {
      CGPostError("%s: Cannot end an object reference without first starting one", "PDFDocumentEndObjectReference");
    }

    *(a1 + 632) = 0;
  }
}

uint64_t PDFDocumentAddStructureTreeRootChild(void *a1, CFTypeRef cf)
{
  if (a1[75])
  {
    CGPostError("%s: Don't mix the old and new tagging functions", "PDFDocumentAddStructureTreeRootChild");
    return 1000;
  }

  else
  {
    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    v5 = a1[82];
    v6 = a1[83];
    if (v5 >= v6)
    {
      v8 = a1[81];
      v9 = v5 - v8;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v11 = v6 - v8;
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
        if (!(v12 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v13 = (8 * v9);
      v14 = &v13[-(v5 - v8)];
      *v13 = v4;
      v7 = v13 + 1;
      if (v8 != v5)
      {
        v15 = v8;
        v16 = v14;
        do
        {
          *v16++ = *v15;
          *v15++ = 0;
        }

        while (v15 != v5);
        do
        {
          v17 = *v8++;
          std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFStructureElement *>,0>(v17);
        }

        while (v8 != v5);
        v8 = a1[81];
      }

      a1[81] = v14;
      a1[82] = v7;
      a1[83] = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = v4;
      v7 = v5 + 1;
    }

    result = 0;
    a1[82] = v7;
  }

  return result;
}

void sub_18410F564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<CGPDFStructureElement *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPDFStructureElement *>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void PDFDocumentBeginPage(void *a1, const __CFDictionary *a2)
{
  v3 = a1[62];
  if (v3)
  {
    v5 = v3[1];
    v3[1] = (v5 + 1);
    ObjectNumberForPageNumber = PDFPageTree::getObjectNumberForPageNumber(v3, v5);
    if (ObjectNumberForPageNumber)
    {
      v7 = *&ObjectNumberForPageNumber;
      PDFPageTree::addNode(&v44, v3, ObjectNumberForPageNumber, 1);
      if (v44)
      {
        v8 = *v3;
        v9 = *v44;
        v3 = malloc_type_calloc(1uLL, 0x68uLL, 0x1070040BBBE8DCEuLL);
        __CFSetLastAllocationEventName();
        if (v3)
        {
          *v3 = 1;
          v3[1] = v8;
          *(v3 + 2) = v7;
          v3[3] = v9;
          v3[5] = 0;
          value = 0;
          if (a2)
          {
            if (CFDictionaryGetValueIfPresent(a2, @"StructParents", &value))
            {
              valuePtr[0] = 0;
              CFNumberGetValue(value, kCFNumberLongType, valuePtr);
              v10 = *valuePtr;
              v3[12] = valuePtr[0];
              if (v8)
              {
                v11 = *(v8 + 38);
                context.origin.x = v10;
                context.origin.y = v7;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(v11, *&v10, &context);
              }
            }

            else
            {
              v3[12] = -1;
            }

            a2 = CFRetain(a2);
          }

          else
          {
            v3[12] = -1;
          }

          v3[6] = a2;
          v3[9] = 0;
          v3[11] = 0;
          v53 = 0;
          TypeID = CFDictionaryGetTypeID();
          if (CGCFDictionaryGetCFTypeRef(a2, @"CGPDFContextPageApplicationData", TypeID, &v53))
          {
            v13 = CFRetain(v53);
            v3[7] = v13;
            Count = CFDictionaryGetCount(v13);
            v15 = malloc_type_calloc(Count, 8uLL, 0x100004000313F17uLL);
            __CFSetLastAllocationEventName();
            v3[8] = v15;
            valuePtr[0] = 0;
            valuePtr[1] = valuePtr;
            v51 = 0;
            v52 = 32;
            v16 = v3[7];
            *&context.origin.x = MEMORY[0x1E69E9820];
            *&context.origin.y = 0x40000000;
            *&context.size.width = __init_appl_data_block_invoke;
            *&context.size.height = &unk_1E6E340D8;
            v48 = valuePtr;
            v49 = v3;
            CFDictionaryApplyFunction(v16, call_dict_block, &context);
            _Block_object_dispose(valuePtr, 8);
          }
        }
      }

      else
      {
        v3 = 0;
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v45);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  a1[65] = v3;
  v17 = a1[70];
  if (v17)
  {
    v17[1] = v3;
    if (v3)
    {
      v3 = v3[2];
    }

    v18 = v17[7];
    v19 = v17[8];
    if (v18 >= v19)
    {
      v21 = v17[6];
      v22 = 0x8E38E38E38E38E39 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v24 = 0x8E38E38E38E38E39 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x1C71C71C71C71C7)
      {
        v25 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v26 = 72 * v22;
      *v26 = v3;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0u;
      *(v26 + 56) = 0u;
      v20 = 72 * v22 + 72;
      v28 = v17[6];
      v27 = v17[7];
      v29 = 72 * v22 + v28 - v27;
      if (v28 != v27)
      {
        v30 = v17[6];
        v31 = v26 + v28 - v27;
        do
        {
          v32 = *(v30 + 16);
          *v31 = *v30;
          *(v31 + 16) = v32;
          *(v31 + 24) = 0;
          *(v31 + 32) = 0;
          *(v31 + 40) = 0;
          *(v31 + 24) = *(v30 + 24);
          *(v31 + 40) = *(v30 + 40);
          *(v30 + 24) = 0;
          *(v30 + 32) = 0;
          *(v30 + 40) = 0;
          v33 = *(v30 + 48);
          *(v31 + 64) = *(v30 + 64);
          *(v31 + 48) = v33;
          v30 += 72;
          v31 += 72;
        }

        while (v30 != v27);
        do
        {
          v34 = *(v28 + 24);
          if (v34)
          {
            *(v28 + 32) = v34;
            operator delete(v34);
          }

          v28 += 72;
        }

        while (v28 != v27);
      }

      v35 = v17[6];
      v17[6] = v29;
      *(v17 + 7) = v20;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v18 = v3;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      v20 = v18 + 72;
    }

    v17[7] = v20;
    v3 = a1[65];
  }

  memset(&context, 0, sizeof(context));
  if (!CGCFDictionaryGetRect(v3[6], @"MediaBox", &context))
  {
    v36 = v3[1];
    v38 = *(v36 + 12);
    v39 = *(v36 + 13);
    v37 = v36 + 96;
    if (v38 != INFINITY && v39 != INFINITY)
    {
      v41 = *(v37 + 16);
      context.origin = *v37;
      context.size = v41;
    }
  }

  v42 = PDFContentStreamCreate(v3[1], &context);
  v3[5] = v42;
  if (v42)
  {
    PDFContentStreamBegin(v42);
    PDFContentStreamBeginData(v3[5]);
    v43 = v3[5];
  }

  else
  {
    v43 = 0;
  }

  PDFDocumentPushContentStream(a1, v43);
}

void sub_18410FA38(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v3 + 16))(v3);
    pdf_error("%s caught exception: %s");
  }

  else
  {
    pdf_error("%s caught an unknown exception");
  }

  __cxa_end_catch();
  JUMPOUT(0x18410F980);
}

void PDFDocumentEndPage(uint64_t a1)
{
  v2 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (!v2)
  {
    goto LABEL_105;
  }

  PDFDocumentPopContentStream(a1);
  PDFContentStreamEndData(*(v2 + 5));
  PDFContentStreamEnd(*(v2 + 5));
  PDFDocumentBeginObject(*(v2 + 1), *(v2 + 2));
  PDFDocumentPrintf(*(v2 + 1), "<<");
  PDFDocumentPrintf(*(v2 + 1), "/Type /Page");
  PDFDocumentPrintPageParentReference(*(v2 + 1), "/Parent %R", *(v2 + 3));
  if (*(v2 + 12) != -1)
  {
    PDFDocumentPrintf(*(v2 + 1), "/StructParents %d", *(v2 + 12));
  }

  v3 = *(v2 + 5);
  if (v3)
  {
    v4 = *(v3 + 112);
    v5 = v4 == 0;
    if (v4)
    {
      PDFDocumentPrintReference(*(v2 + 1), "/Resources %R", *(v4 + 16));
      v3 = *(v2 + 5);
      v48 = 0;
      if (!v3)
      {
        PDFDocumentPrintReference(*(v2 + 1), "/Contents %R", 0);
        goto LABEL_11;
      }
    }

    else
    {
      v48 = 0;
    }

    PDFDocumentPrintReference(*(v2 + 1), "/Contents %R", *(v3 + 8));
  }

  else
  {
    v4 = 0;
    v48 = 0;
    v5 = 1;
    PDFDocumentPrintReference(*(v2 + 1), "/Contents %R", 0);
  }

LABEL_11:
  v6 = *(v2 + 1);
  if (!PDFOutputIntentGetIsX3(*(v6 + 48)))
  {
    context = 0uLL;
    v50 = 0uLL;
    if (CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &context))
    {
      PDFDocumentPrintf(*(v2 + 1), "/MediaBox %r", &context);
    }

    if (CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &context))
    {
      PDFDocumentPrintf(*(v2 + 1), "/CropBox %r", &context);
    }

    if (CGCFDictionaryGetRect(*(v2 + 6), @"BleedBox", &context))
    {
      PDFDocumentPrintf(*(v2 + 1), "/BleedBox %r", &context);
    }

    if (CGCFDictionaryGetRect(*(v2 + 6), @"TrimBox", &context))
    {
      PDFDocumentPrintf(*(v2 + 1), "/TrimBox %r", &context);
    }

    if (CGCFDictionaryGetRect(*(v2 + 6), @"ArtBox", &context))
    {
      PDFDocumentPrintf(*(v2 + 1), "/ArtBox %r", &context);
    }

    goto LABEL_62;
  }

  v53 = 0uLL;
  v54 = 0uLL;
  v7 = *(v6 + 90);
  if (CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &v53))
  {
    v8 = *(v2 + 1);
    goto LABEL_14;
  }

  if (v7)
  {
    v8 = *(v2 + 1);
    v9 = *(v8 + 96) == INFINITY || *(v8 + 104) == INFINITY;
    if (v9)
    {
      if (!CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v53))
      {
LABEL_34:
        v10 = *(v2 + 1);
        v12 = *(v10 + 128);
        v13 = *(v10 + 136);
        v11 = (v10 + 128);
        if (v12 == INFINITY || v13 == INFINITY)
        {
          goto LABEL_41;
        }

        v15 = v11[1];
        v53 = *v11;
        v54 = v15;
      }

LABEL_40:
      PDFDocumentPrintf(*(v2 + 1), "/CropBox %r", &v53);
      goto LABEL_41;
    }

    v21 = *(v8 + 112);
    v53 = *(v8 + 96);
    v54 = v21;
LABEL_14:
    PDFDocumentPrintf(v8, "/MediaBox %r", &v53);
    if (!CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v53))
    {
      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &v53))
  {
    goto LABEL_40;
  }

LABEL_41:
  if (CGCFDictionaryGetRect(*(v2 + 6), @"BleedBox", &v53))
  {
    PDFDocumentPrintf(*(v2 + 1), "/BleedBox %r", &v53);
  }

  if (CGCFDictionaryGetRect(*(v2 + 6), @"TrimBox", &v53))
  {
    PDFDocumentPrintf(*(v2 + 1), "/TrimBox %r", &v53);
    goto LABEL_62;
  }

  Rect = CGCFDictionaryGetRect(*(v2 + 6), @"ArtBox", &v53);
  v17 = *(v2 + 1);
  if (Rect)
  {
    goto LABEL_46;
  }

  if (*(v17 + 192) == INFINITY || *(v17 + 200) == INFINITY)
  {
    if (*(v17 + 224) != INFINITY && *(v17 + 232) != INFINITY)
    {
      v20 = *(v17 + 240);
      v53 = *(v17 + 224);
      v54 = v20;
LABEL_46:
      PDFDocumentPrintf(v17, "/ArtBox %r", &v53);
      goto LABEL_62;
    }

    context = 0u;
    v50 = 0u;
    if (!CGCFDictionaryGetRect(*(v2 + 6), @"CropBox", &context) && !CGCFDictionaryGetRect(*(v2 + 6), @"MediaBox", &context))
    {
      if ((v22 = *(v2 + 1), v23 = v22 + 16, v22[16] != INFINITY) && v22[17] != INFINITY || (v25 = v22[12], v24 = v22 + 12, v25 != INFINITY) && (v23 = v24, v24[1] != INFINITY))
      {
        v26 = *(v23 + 1);
        context = *v23;
        v50 = v26;
      }
    }

    v18 = context;
    v19 = v50;
  }

  else
  {
    v18 = *(v17 + 192);
    v19 = *(v17 + 208);
  }

  v53 = v18;
  v54 = v19;
  PDFDocumentPrintf(v17, "/TrimBox %r", &v53);
LABEL_62:
  if (CGCFDictionaryGetInteger(*(v2 + 6), @"Rotate", &v48))
  {
    PDFDocumentPrintf(*(v2 + 1), "/Rotate %d", v48);
  }

  v27 = *(v2 + 4);
  if (v27)
  {
    PDFDocumentPrintReference(*(v2 + 1), "/Annots %R", *(v27 + 8));
  }

  v28 = *(v2 + 9);
  if (!v28)
  {
    goto LABEL_81;
  }

  Image = CGBitmapContextCreateImage(v28);
  v30 = *(v2 + 9);
  if (v30)
  {
    CFRelease(v30);
  }

  *(v2 + 9) = 0;
  Mutable = CFDataCreateMutable(0, 0);
  if (emit_thumbnail_predicate != -1)
  {
    dispatch_once(&emit_thumbnail_predicate, &__block_literal_global_22723);
  }

  v32 = emit_thumbnail_f(Mutable, @"public.jpeg", 1, 0);
  if (emit_thumbnail_predicate_26 != -1)
  {
    dispatch_once(&emit_thumbnail_predicate_26, &__block_literal_global_29_22725);
  }

  emit_thumbnail_f_25(v32, Image, 0);
  if (Image)
  {
    CFRelease(Image);
  }

  if (emit_thumbnail_predicate_32 != -1)
  {
    dispatch_once(&emit_thumbnail_predicate_32, &__block_literal_global_35_22726);
  }

  emit_thumbnail_f_31(v32);
  CFRelease(v32);
  v33 = CGDataProviderCreateWithCFData(Mutable);
  CFRelease(Mutable);
  v34 = CGImageCreateWithJPEGDataProvider2(v33, 0, 0, 0, 0);
  CGDataProviderRelease(v33);
  v35 = *(PDFDocumentAddImage(*(v2 + 1), v34, 1) + 2);
  if (!v35)
  {
    v36 = 0;
    if (!v34)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v36 = *(v35 + 8);
  if (v34)
  {
LABEL_79:
    CFRelease(v34);
  }

LABEL_80:
  PDFDocumentPrintReference(*(v2 + 1), "/Thumb %R", v36);
LABEL_81:
  v37 = *(v2 + 7);
  if (v37 && *(v2 + 8))
  {
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    *&v54 = 0x2000000000;
    DWORD2(v54) = 0;
    *&context = MEMORY[0x1E69E9820];
    *(&context + 1) = 0x40000000;
    *&v50 = __emit_application_data_block_invoke;
    *(&v50 + 1) = &unk_1E6E34180;
    v51 = &v53;
    v52 = v2;
    CFDictionaryApplyFunction(v37, call_dict_block, &context);
    _Block_object_dispose(&v53, 8);
  }

  PDFDocumentPrintf(*(v2 + 1), ">>");
  PDFDocumentEndObject(*(v2 + 1));
  if (!v5)
  {
    PDFResourceSetEmit(v4);
  }

  if (v27)
  {
    PDFDocumentBeginObject(*(v27 + 16), *(v27 + 8));
    PDFDocumentPrintf(*(v27 + 16), "[");
    Count = CFArrayGetCount(*(v27 + 32));
    if (Count)
    {
      v39 = Count;
      for (i = 0; i != v39; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 32), i);
        PDFDocumentPrintReference(*(v27 + 16), "%R", ValueAtIndex);
      }
    }

    PDFDocumentPrintf(*(v27 + 16), "]");
    PDFDocumentEndObject(*(v27 + 16));
  }

  v42 = *(v2 + 7);
  if (v42 && *(v2 + 8))
  {
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    *&v54 = 0x2000000000;
    DWORD2(v54) = 0;
    *&context = MEMORY[0x1E69E9820];
    *(&context + 1) = 0x40000000;
    *&v50 = __emit_application_data_streams_block_invoke;
    *(&v50 + 1) = &unk_1E6E341A8;
    v51 = &v53;
    v52 = v2;
    CFDictionaryApplyFunction(v42, call_dict_block, &context);
    _Block_object_dispose(&v53, 8);
  }

  emit_page_resources(a1);
  v43 = *(a1 + 560);
  if (v43)
  {
    *(v43 + 8) = 0;
  }

  v9 = (*v2)-- == 1;
  if (v9)
  {
    PDFContentStreamRelease(*(v2 + 5));
    PDFAnnotationSetRelease(*(v2 + 4));
    v44 = *(v2 + 6);
    if (v44)
    {
      CFRelease(v44);
    }

    v45 = *(v2 + 7);
    if (v45)
    {
      CFRelease(v45);
    }

    v46 = *(v2 + 9);
    if (v46)
    {
      CFRelease(v46);
    }

    free(*(v2 + 8));
    free(v2);
  }

LABEL_105:
  v47 = *(a1 + 576);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 576) = 0;
  }

  *(a1 + 584) = 0;
}

void PDFDocumentSetPageRedactionPath(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 528);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      if (cf)
      {
        CFRetain(cf);
      }

      *(a1 + 528) = cf;
    }
  }
}

void *PDFDocumentSetParentTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[67];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[67] = result;
    }
  }

  return result;
}

void *PDFDocumentSetIDTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[68];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[68] = result;
    }
  }

  return result;
}

void *PDFDocumentSetPageTagStructureTree(void *result, void *cf)
{
  if (result)
  {
    v3 = result;
    result = result[69];
    if (result != cf)
    {
      if (result)
      {
        CFRelease(result);
      }

      result = CFRetain(cf);
      v3[69] = result;
    }
  }

  return result;
}

void *PDFDocumentAddColorSpace(uint64_t a1, void *key)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    if (key)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
  __CFSetLastAllocationEventName();
  *v3 = a1;
  *(v3 + 1) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &color_space_callbacks);
  *(v3 + 2) = 0;
  *(v3 + 6) = 0;
  *(a1 + 368) = v3;
  if (!key)
  {
    return 0;
  }

LABEL_3:
  Value = CFDictionaryGetValue(*(v3 + 1), key);
  if (!Value)
  {
    v5 = *v3;
    v6 = *(v3 + 6) + 1;
    *(v3 + 6) = v6;
    Value = PDFColorSpaceCreate(v5, key, v6);
    CFDictionarySetValue(*(v3 + 1), key, Value);
    v7 = *(v3 + 2);
    if (!v7)
    {
      v7 = CGOrderedSetCreate();
      *(v3 + 2) = v7;
    }

    CGOrderedSetAddValue(v7, Value);
    PDFColorSpaceRelease(Value);
  }

  return Value;
}

objc_class *PDFDocumentResolveColorSpace(uint64_t a1, CGColorSpace *a2)
{
  DeviceCMYK = a2;
  if (CGColorSpaceIsUncalibrated(a2))
  {
    return DeviceCMYK;
  }

  Type = CGColorSpaceGetType(DeviceCMYK);
  if (Type == 2)
  {
    if (*(a1 + 91) != 1)
    {
      return DeviceCMYK;
    }

    DeviceCMYK = *(a1 + 488);
    if (DeviceCMYK)
    {
      return DeviceCMYK;
    }

    v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
    *(a1 + 488) = v6;
    if (!v6)
    {
      DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
      *(a1 + 488) = DeviceCMYK;
      return DeviceCMYK;
    }

    return v6;
  }

  if (Type != 1)
  {
    if (Type)
    {
      return DeviceCMYK;
    }

    DeviceCMYK = *(a1 + 472);
    if (DeviceCMYK)
    {
      return DeviceCMYK;
    }

    v6 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    *(a1 + 472) = v6;
    if (!v6)
    {
      DeviceCMYK = CGColorSpaceCreateDeviceGray();
      *(a1 + 472) = DeviceCMYK;
      return DeviceCMYK;
    }

    return v6;
  }

  return get_default_rgb_color_space(a1);
}

void PDFDocumentAddAnnotationToPage(PDFDocument *a1, uint64_t a2, const __CFDictionary *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  v21[1] = MutableCopy;
  Value = CFDictionaryGetValue(a3, @"ObjectNumber");
  CFDictionaryRemoveValue(MutableCopy, @"ObjectNumber");
  v8 = *(a2 + 32);
  if (!v8)
  {
    v9 = *(a2 + 8);
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200408F9A148AuLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *v8 = 1;
      v8[2] = v9;
      v8[1] = PDFXRefTableAddObject(*(v9 + 504));
      v8[3] = *(v9 + 40);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v8[4] = Mutable;
      if (!Mutable)
      {
        PDFAnnotationSetRelease(v8);
        v8 = 0;
      }
    }

    *(a2 + 32) = v8;
  }

  v11 = -1;
  if (v8 && MutableCopy)
  {
    v12 = *(v8[2] + 632);
    if (v12 && (Count = CFDictionaryGetCount(MutableCopy), (v14 = CFDictionaryCreateMutableCopy(0, Count + 1, MutableCopy)) != 0))
    {
      v15 = v14;
      v16 = PDFMetaSetAddDictionary(v8[3], v14);
      v11 = v16;
      if (*(v12 + 16) == 1 && !*(v12 + 32))
      {
        v17 = v8[2];
        *(v12 + 32) = v16;
        v18 = *(v17 + 640);
        *(v17 + 640) = v18 + 1;
        *(v12 + 40) = v18;
        if (v18 != -1)
        {
          CGCFDictionarySetLongInteger(v15, @"/StructParent", v18);
        }
      }

      CFRelease(v15);
    }

    else
    {
      v11 = PDFMetaSetAddDictionary(v8[3], MutableCopy);
    }

    CFArrayAppendValue(v8[4], v11);
  }

  if (a1[34]._private)
  {
    if (Value)
    {
      v21[0] = 0;
      CFNumberGetValue(Value, kCFNumberLongType, v21);
      isa = a1[18].super.isa;
      *&theArray = v21[0];
      *(&theArray + 1) = v11;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long>>(isa, v21[0], &theArray);
      *&theArray = 0;
      StructureElementPathForObjectRefID(a1[34]._private, v21[0], &theArray);
      v20 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          PDFDocumentInsertStructureElementPath(a1, v20);
        }
      }
    }
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1841108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t StructureElementPathForObjectRefID(const __CFDictionary *a1, uint64_t a2, __CFArray **a3)
{
  v14 = -1;
  if (CGCFDictionaryGetNumber(a1, @"TagNodeObjectRefID", kCFNumberSInt64Type, &v14) && v14 == a2)
  {
    Mutable = *a3;
    if (!*a3)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *a3 = Mutable;
    }

    CFArrayAppendValue(Mutable, a1);
  }

  else
  {
    result = CFDictionaryGetValue(a1, @"TagNodeChildren");
    if (!result)
    {
      return result;
    }

    v8 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v10 = Count;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      if (StructureElementPathForObjectRefID(ValueAtIndex, a2, a3))
      {
        break;
      }

      if (v10 == ++v11)
      {
        return 0;
      }
    }

    CFArrayInsertValueAtIndex(*a3, 0, a1);
  }

  return 1;
}

const void **applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t PDFDocumentAddFont(uint64_t a1, void *a2)
{
  v3 = *(a1 + 376);
  if (!v3)
  {
    operator new();
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v3 + 40;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == v3 + 40 || *(v5 + 32) > a2)
  {
LABEL_11:
    v9 = *(v3 + 80);
    *(v3 + 80) = v9 + 1;
    v13 = a2;
    v12 = v9 + 1;
    LODWORD(v14) = 0;
    if (CGFontGetIntProperty(a2, @"com.apple.CoreGraphics.CGPDFFontFormat", &v14))
    {
      v10 = v14;
    }

    else
    {
      v10 = (*(a2[2] + 344))(a2[14]);
    }

    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
LABEL_25:
      }
    }

    else
    {
      switch(v10)
      {
        case 0:
          goto LABEL_25;
        case 1:
          operator new();
        case 2:
          operator new();
      }
    }

    pdf_error("unsupported streaming format: %d", v10);
    goto LABEL_25;
  }

  return *(v5 + 40);
}

void sub_184110F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<unsigned long>::destroy(*v20);
  if (*(v18 + 111) < 0)
  {
    operator delete(*(v18 + 88));
  }

  if (*(v18 + 87) < 0)
  {
    operator delete(*v19);
  }

  PDFFont::~PDFFont(v18);
  MEMORY[0x1865EE610]();
  _Unwind_Resume(a1);
}

void *PDFDocumentAddFormWithDisplayList(uint64_t a1, void *value)
{
  if (!*(a1 + 400))
  {
    *(a1 + 400) = PDFFormSetCreate(a1);
  }

  Mutable = *(a1 + 576);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    *(a1 + 576) = Mutable;
  }

  CFSetAddValue(Mutable, value);
  result = 0;
  v6 = *(a1 + 400);
  if (v6 && value)
  {
    if (!*(v6 + 8))
    {
      *(v6 + 8) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_12648);
    }

    valuea = 0;
    v7 = *v6;
    v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040E28F707EuLL);
    __CFSetLastAllocationEventName();
    if (v8)
    {
      *v8 = 1;
      v8[1] = v7;
      v8[2] = PDFContentStreamCreate(v7, 0);
      *(v8 + 6) = 0;
      v8[4] = CFRetain(value);
      v8[8] = 0;
      v8[9] = 0;
      v8[10] = -1;
    }

    if (!CFSetGetValueIfPresent(*(v6 + 8), v8, &valuea))
    {
      v9 = (*(v6 + 24) + 1);
      *(v6 + 24) = v9;
      if (*(v8 + 6) == 1)
      {
        v10 = "Sm";
      }

      else
      {
        v10 = "Fm";
      }

      snprintf_l(v8 + 40, 0x10uLL, 0, "%s%zu", v10, v9);
      CFSetAddValue(*(v6 + 8), v8);
      valuea = v8;
    }

    PDFFormRelease(v8);
    v11 = *(v6 + 16);
    if (!v11)
    {
      v11 = CGOrderedSetCreate();
      *(v6 + 16) = v11;
    }

    CGOrderedSetAddValue(v11, valuea);
    return valuea;
  }

  return result;
}

void *PDFDocumentAddFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 408);
  if (v4)
  {
    if (a2)
    {
LABEL_3:
      v5 = *(a2 + 48) - 1;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = PDFFunctionSetCreate(a1);
    *(a1 + 408) = v4;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = -1;
LABEL_6:

  return PDFFunctionSetAddFunctionWithRange(v4, a2, v5, 0);
}

void PDFDocumentAddImageTag(uint64_t a1, uint64_t a2, void *value)
{
  v5 = *(a1 + 384);
  if (!v5)
  {
    v5 = PDFImageSetCreate(a1);
    *(a1 + 384) = v5;
  }

  Mutable = v5[3];
  if (Mutable)
  {
    if (a2)
    {
LABEL_5:
      v8 = *(a2 + 24);
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v5[3] = Mutable;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v8 = 0;
LABEL_8:

  CFDictionarySetValue(Mutable, v8, value);
}

const void *PDFDocumentAddImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 384);
  if (!v6)
  {
    v6 = PDFImageSetCreate(a1);
    *(a1 + 384) = v6;
  }

  return add_image(v6, a2, 0, 0, a3);
}

const void *PDFDocumentAddSMask(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = *(a1 + 392);
  if (!v8)
  {
    v8 = PDFImageSetCreate(a1);
    *(a1 + 392) = v8;
  }

  return add_image(v8, a2, a3, 1, a4);
}

void *PDFDocumentAddShading(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 424);
  if (!v3)
  {
    v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
    __CFSetLastAllocationEventName();
    if (v3)
    {
      *v3 = a1;
    }

    *(a1 + 424) = v3;
  }

  if (v3)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  Mutable = v3[1];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &shadingCallbacks);
    v3[1] = Mutable;
  }

  v8 = a2[4];
  Value = CFDictionaryGetValue(Mutable, v8);
  if (!Value)
  {
    v9 = *v3;
    v10 = (*(v3 + 6) + 1);
    *(v3 + 6) = v10;
    Value = malloc_type_calloc(1uLL, 0x38uLL, 0x102004018474591uLL);
    __CFSetLastAllocationEventName();
    if (Value)
    {
      *Value = 1;
      Value[1] = v9;
      CFRetain(a2);
      Value[2] = a2;
      Value[3] = PDFXRefTableAddObject(*(v9 + 504));
      *(Value + 48) = 0;
      snprintf_l(Value + 32, 0x10uLL, 0, "Sh%lu", v10);
    }

    CFDictionarySetValue(v3[1], v8, Value);
    PDFShadingRelease(Value);
  }

  v11 = v3[2];
  if (!v11)
  {
    v11 = CGOrderedSetCreate();
    v3[2] = v11;
  }

  CGOrderedSetAddValue(v11, Value);
  return Value;
}

void *PDFDocumentGetDestinationSet(uint64_t a1)
{
  v1 = *(a1 + 456);
  if (!v1)
  {
    v1 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    __CFSetLastAllocationEventName();
    if (v1)
    {
      *v1 = a1;
    }

    *(a1 + 456) = v1;
  }

  return v1;
}

void PDFDocumentPrintPageParentReference(uint64_t a1, char *a2, unint64_t a3, ...)
{
  PDFDocumentPrintf(a1, a2, a3);
  if (*(a1 + 560))
  {
    v5 = *(a1 + 280);
    if (a3)
    {
      if (v5)
      {
        operator new();
      }
    }

    pdf_log("%s: Invalid param. object = %lu, referrer = %lu", "void PDFLinearizer::recordPageParentReference(PDFObjectNumber, PDFObjectNumber)", a3, v5);
  }
}

void CGGStateSetAlpha(uint64_t result, double a2)
{
  if (*(*(result + 120) + 8) != a2)
  {
    maybeCopyRenderingState(result);
    *(*(result + 120) + 8) = a2;
  }
}

uint64_t CGGStateCopyContentToneMappingInfo(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(v1 + 56);
  CGCFDictionaryCreateCopy(*(v1 + 64));
  return v2;
}

void CGGStateSetPatternPhase(uint64_t result, double a2, double a3)
{
  v5 = *(result + 120);
  if (*(v5 + 24) != a2 || *(v5 + 32) != a3)
  {
    maybeCopyRenderingState(result);
    v8 = *(result + 120);
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
  }
}

uint64_t CGGStateGetImageRenderingIntent(uint64_t a1)
{
  v1 = *(*(a1 + 120) + 4);
  if (((v1 >> 20) & 0xF) != 0)
  {
    v2 = v1 << 8;
  }

  else
  {
    v2 = v1 << 12;
  }

  return (v2 >> 28);
}

CFTypeID CGFunctionGetTypeID(void)
{
  if (_block_invoke_once_6183 != -1)
  {
    dispatch_once(&_block_invoke_once_6183, &__block_literal_global_8_6184);
  }

  return CGFunctionGetTypeID_function_type_id;
}

CGFunctionRef CGFunctionRetain(CGFunctionRef function)
{
  if (function)
  {
    CFRetain(function);
  }

  return function;
}

void CGFunctionRelease(CGFunctionRef function)
{
  if (function)
  {
    CFRelease(function);
  }
}

uint64_t CGFunctionCreateIdentity()
{
  if (CGFunctionCreateIdentity_predicate != -1)
  {
    dispatch_once(&CGFunctionCreateIdentity_predicate, &__block_literal_global_6193);
  }

  v0 = CGFunctionCreateIdentity_identity;
  if (CGFunctionCreateIdentity_identity)
  {
    CFRetain(CGFunctionCreateIdentity_identity);
  }

  return v0;
}

CGFunctionRef __CGFunctionCreateIdentity_block_invoke()
{
  result = CGFunctionCreate(0, 1uLL, 0, 1uLL, 0, &create_identity_callbacks);
  CGFunctionCreateIdentity_identity = result;
  return result;
}

double evaluate_identity(uint64_t a1, double *a2, void *a3)
{
  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t CGFunctionGetDomainDimension(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGFunctionGetDomain(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CGFunctionGetRangeDimension(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t CGFunctionGetRange(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t CGFunctionGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGFunctionGetInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

CGFunctionRef CGFunctionCreateEvaluatedCopy(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2 > 1)
  {
    return 0;
  }

  v3 = CGFunctionCreate(0, v2, 0, *(a1 + 48), 0, (a1 + 64));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = 16 * *(a1 + 32);
      v5 = malloc_type_malloc(v4, 0xBFDE5121uLL);
      *(v3 + 5) = v5;
      memcpy(v5, *(a1 + 40), v4);
    }

    if (*(a1 + 56))
    {
      v6 = 16 * *(a1 + 48);
      v7 = malloc_type_malloc(v6, 0x408461BEuLL);
      *(v3 + 7) = v7;
      memcpy(v7, *(a1 + 56), v6);
    }

    v8 = MEMORY[0x1EEE9AC00](8 * *(v3 + 4));
    v10 = (v20 - v9);
    if (v8 >= 0x101)
    {
      v10 = malloc_type_malloc(v8, 0xABF06711uLL);
    }

    v12 = *(v3 + 4);
    v11 = *(v3 + 5);
    if (v11)
    {
      memcpy(v10, v11, 8 * v12);
    }

    else if (v12)
    {
      v13 = v10;
      do
      {
        *v13++ = xmmword_18439C780;
        --v12;
      }

      while (v12);
    }

    *(v3 + 4) = xmmword_1EF23B748;
    *(v3 + 10) = off_1EF23B758;
    v14 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL);
    v15 = malloc_type_malloc(*(v3 + 6) << 14, 0x100004000313F17uLL);
    v14[2] = v15;
    v16 = *(v3 + 6);
    v17 = 2048;
    *v14 = 2048;
    v14[1] = v16;
    *(v3 + 3) = v14;
    v18 = (v10[1] - *v10) * 0.00048828125;
    v20[0] = *v10;
    do
    {
      CGFunctionEvaluate(a1, v20, v15);
      v20[0] = v18 + v20[0];
      v15 += *(v3 + 6);
      --v17;
    }

    while (v17);
  }

  return v3;
}

void evaluated_function_release_info(void **a1)
{
  if (a1)
  {
    free(a1[2]);

    free(a1);
  }
}

double evaluated_function_evaluate(void *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = 1.0;
  v5 = *a2 > 1.0 || *a2 < 0.0;
  if (*a2 < 0.0 && *a2 <= 1.0)
  {
    v4 = 0.0;
  }

  if (v5)
  {
    v3 = v4;
  }

  v6 = a1[1];
  v7 = a1[2];
  result = v3 * (*a1 - 1);
  v9 = vcvtmd_s64_f64(result);
  v10 = (v7 + 8 * v6 * v9);
  if ((v9 + 1) >= *a1)
  {
    for (; v6; --v6)
    {
      v15 = *v10++;
      result = v15;
      *a3++ = v15;
    }
  }

  else if (v6)
  {
    v11 = (v7 + 8 * (v9 + 1) * v6);
    result = result - v9;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *v11++;
      *a3++ = v13 + result * (v14 - v13);
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL CGFunctionIsIdentity(_BOOL8 result)
{
  if (result)
  {
    return *(result + 72) == evaluate_identity;
  }

  return result;
}

void CGFunctionEvaluateFloat(uint64_t a1, float *a2, float *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1EEE9AC00](8 * (*(a1 + 48) + *(a1 + 32)));
  v10 = v18 - v9;
  if (v8 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v11 = v18 - v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v11 = malloc_type_malloc(v6, 0x88412587uLL);
    v7 = *(a1 + 32);
  }

  v12 = &v11[8 * v7];
  if (v7)
  {
    v13 = v11;
    do
    {
      v14 = *a2++;
      *v13++ = v14;
      --v7;
    }

    while (v7);
  }

  CGFunctionEvaluate(a1, v11, v12);
  for (i = *(a1 + 48); i; --i)
  {
    v16 = *v12++;
    v17 = v16;
    *a3++ = v17;
  }

  if (v11 != v10)
  {
    free(v11);
  }
}

uint64_t CGFunctionCopyPDFDescription(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0)
  {
    return v1(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t CGFunctionSetAssociate(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((result + 96), &v2, a2, memory_order_relaxed, memory_order_relaxed);
    return *(result + 96);
  }

  return result;
}

uint64_t CGFunctionGetAssociate(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

void CGFunctionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 104))
  {
    v6 = CGPropertiesCreate();
    v7 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 104), &v7, v6, memory_order_relaxed, memory_order_relaxed);
    if (v7)
    {
      CGPropertiesRelease(v6);
    }
  }

  v8 = *(a1 + 104);

  CGPropertiesSetProperty(v8, a2, a3);
}

__CFHTTPMessage *http_message_send_request(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  v3 = CFReadStreamCreateForHTTPRequest(v2, a1);
  v4 = CFWriteStreamCreateWithAllocatedBuffers(v2, v2);
  v5 = v4;
  if (v3 && v4)
  {
    CFReadStreamSetProperty(v3, @"kCFStreamPropertyHTTPShouldAutoredirect", *MEMORY[0x1E695E4D0]);
    if (CFReadStreamOpen(v3) && CFWriteStreamOpen(v5))
    {
      if ((CFReadStreamGetStatus(v3) & 0xFFFFFFFFFFFFFFFDLL) == 5)
      {
        goto LABEL_18;
      }

      do
      {
        v6 = CFReadStreamRead(v3, buffer, 512);
        v7 = v6 >= 1 && CFWriteStreamWrite(v5, buffer, v6) != v6;
        Status = CFReadStreamGetStatus(v3);
      }

      while (!v7 && (Status & 0xFFFFFFFFFFFFFFFDLL) != 5);
      if (!v7)
      {
LABEL_18:
        v10 = CFReadStreamGetStatus(v3);
        CFReadStreamClose(v3);
        CFWriteStreamClose(v5);
        if (v10 != kCFStreamStatusError)
        {
          v12 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
          v13 = CFReadStreamCopyProperty(v3, @"kCFStreamPropertyHTTPResponseHeader");
          v9 = v13;
          if (v13)
          {
            CFHTTPMessageSetBody(v13, v12);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_20;
        }
      }

      else
      {
        CFReadStreamClose(v3);
        CFWriteStreamClose(v5);
      }
    }

    v9 = 0;
LABEL_20:
    CFRelease(v3);
    CFRelease(v5);
    return v9;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

void std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:fe200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  v13 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v13;
  MEMORY[0x1865EE570](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0 && (v15 = *(a1 + 96), v15 < 0))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 64) = v14;
    *(a1 + 72) = v14;
    *(a1 + 80) = v14 + v15;
  }
}

void sub_184112350(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1865EE5C0](v2);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::view[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 96);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 48);
    if (v4 < v5)
    {
      *(a1 + 88) = v5;
      v4 = v5;
    }

    result = *(a1 + 40);
    if ((v4 - result) < 0)
    {
LABEL_9:
      __break(1u);
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return 0;
    }

    result = *(a1 + 16);
    if (*(a1 + 32) - result < 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void type1_release_info(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CGPDFGStateReleaseProperties(a1[2]);
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void type1_draw_uncolored_pattern(uint64_t *a1, _DWORD *a2)
{
  Copy = CGPDFGStateCreateCopy(a1[2]);
  FillColorAsColor = CGContextGetFillColorAsColor(a2);
  CGPDFGStateSetFillColor(Copy, FillColorAsColor);
  StrokeColorAsColor = CGContextGetStrokeColorAsColor(a2);
  CGPDFGStateSetStrokeColor(Copy, StrokeColorAsColor);
  v7 = *a1;
  if (*a1 && *(v7 + 16) == 1)
  {
    v8 = *(v7 + 24);
    v9 = *(v7 + 88);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  CGPDFDrawingContextDrawStream(0, v8, v9, Copy, a2);
  if (Copy)
  {
    CGPDFGStateReleaseProperties(Copy);

    free(Copy);
  }
}

void type1_draw_colored_pattern(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 && *(v3 + 16) == 1)
  {
    v4 = *(v3 + 24);
    v5 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  CGPDFDrawingContextDrawStream(0, v4, v5, a1[2], a2);
}

void color_space_state_create_uncalibrated_gray()
{
  color_space_state_create_device_gray();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedGray";
}

void color_space_state_create_uncalibrated_rgb()
{
  color_space_state_create_device_rgb();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedRGB";
}

void color_space_state_create_uncalibrated_cmyk()
{
  color_space_state_create_device_cmyk();
  *(v0 + 9) = 1;
  *(v0 + 80) = @"kCGColorSpaceUncalibratedCMYK";
}

void std::vector<PageLayoutFactory::TextChunk>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v6 = *(v4 - 17);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 20);
        if (v7)
        {
          *(v4 - 19) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 23);
        if (v8)
        {
          *(v4 - 22) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 26);
        if (v9)
        {
          *(v4 - 25) = v9;
          operator delete(v9);
        }

        v10 = v4 - 232;
        v11 = *(v4 - 29);
        if (v11)
        {
          *(v4 - 28) = v11;
          operator delete(v11);
        }

        v4 -= 232;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::__unordered_map_hasher<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,true>,std::__unordered_map_equal<applesauce::CF::ObjectRef<CGFont *>,std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,std::equal_to<applesauce::CF::ObjectRef<CGFont *>>,std::hash<applesauce::CF::ObjectRef<CGFont *>>,true>,std::allocator<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:fe200100]<std::pair<applesauce::CF::ObjectRef<CGFont *> const,double>,0>(v2[2]);
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

void PageLayoutFactory::appendCurLine(PageLayoutFactory *this, BOOL *a2)
{
  v4 = *(this + 6);
  v5 = *(this + 7);
  while (v5 != v4)
  {
    v6 = *(v5 - 2);
    v5 -= 2;
    v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v8 = [v7 characterIsMember:v6];

    if ((v8 & 1) == 0)
    {
      v4 = v5 + 2;
      break;
    }
  }

  PageLayoutFactory::eraseLastUniChars(this, (*(this + 7) - v4) >> 1);
  if (*(this + 9) != *(this + 10))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v9 = *a2;
    *a2 = 0;
    if (*(*(this + 5) + 40) == 1)
    {
      v10 = ubidi_open();
      v31 = v10;
      v30 = 0;
      ubidi_setReorderingMode();
      ubidi_setContext();
      ubidi_setPara();
      Length = ubidi_getLength();
      v12 = ubidi_countRuns();
      std::vector<unsigned short>::resize(&v32, Length + 2 * v12);
      v13 = ubidi_writeReordered();
      ProcessedLength = ubidi_getProcessedLength();
      v15 = (*(this + 7) - *(this + 6)) >> 1;
      if (ProcessedLength != v15)
      {
        _CGHandleAssert("appendCurLine", 480, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/PageLayout/PageLayoutFactory.mm", "mapLen == static_cast<int32_t>(_curLineUniChars.size())", "%d != %lu", ProcessedLength, v15);
      }

      if (ProcessedLength)
      {
        if ((ProcessedLength & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      ubidi_getVisualMap();
      v31 = 0;
      if (v10)
      {
        ubidi_close();
      }
    }

    else
    {
      v16 = *(this + 6);
      if (v9)
      {
        v17 = *(this + 7);
        v18 = *(this + 6);
        if (v16 != v17)
        {
          v18 = *(this + 6);
          while (*v18 != 32)
          {
            v18 += 2;
            if (v18 == v17)
            {
              goto LABEL_23;
            }
          }
        }

        if (v18 != v17)
        {
          *v18 = 10;
        }
      }

      else
      {
        v17 = *(this + 7);
      }

LABEL_23:
      if (v16 == v17)
      {
        v13 = 0;
        v19 = 0;
      }

      else
      {
        if (*(v17 - 1) == 173)
        {
          PageLayoutFactory::eraseLastUniChars(this, 1uLL);
          *a2 = 1;
          v16 = *(this + 6);
          v17 = *(this + 7);
        }

        v19 = (v17 - v16);
        v13 = (v17 - v16) >> 1;
        if (v17 != v16)
        {
          if ((v13 & 0x8000000000000000) == 0)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>((v17 - v16) >> 1);
          }

          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }
      }

      v33 = v19;
    }

    if (!v13 || (v20 = objc_alloc(MEMORY[0x1E696AEC0]), v21 = [v20 initWithCharacters:v32 length:v13], objc_msgSend(v21, "length"), objc_msgSend(*(this + 25), "appendString:", v21), *a2))
    {
LABEL_37:
      operator new();
    }

    [*(this + 25) appendString:@"\n"];
    v22 = *(this + 5);
    v25 = *(v22 + 232);
    v24 = *(v22 + 240);
    v23 = v22 + 232;
    if (v25 != v24)
    {
      std::vector<unsigned long>::push_back[abi:fe200100](v23, (v24 - 8));
      v26 = *(this + 5);
      v27 = *(v26 + 264);
      if (*(v26 + 256) != v27)
      {
        std::vector<double>::push_back[abi:fe200100](v26 + 256, (v27 - 8));
        v28 = *(this + 5);
        if (*(v28 + 40) == 1)
        {
          __p[0] = ((*(v28 + 336) - *(v28 + 328)) >> 3);
          std::vector<unsigned long>::push_back[abi:fe200100](v28 + 328, __p);
        }

        goto LABEL_37;
      }
    }

    __break(1u);
  }
}

void sub_184113A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  a14[7] = a14[6];
  a14[10] = a14[9];
  _Unwind_Resume(a1);
}

void PageLayoutFactory::addUniChars(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, CGFloat a11, CGFloat a12, CGFloat a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a4;
  v19 = a3;
  v23 = a10;
  v25 = a6;
  *&v73 = a6;
  *(&v73 + 1) = a7;
  v74 = a8;
  v75 = a9;
  *&v70 = a10;
  *(&v70 + 1) = a11;
  v71 = a12;
  v72 = a13;
  v69 = a5;
  if (a4 == 1 && *a3 == 32)
  {
    v28 = *(a1 + 56);
    if (*(a1 + 48) == v28 || *(v28 - 2) == 32)
    {
      return;
    }

    v29 = *(a1 + 40);
    v31 = *(v29 + 136);
    v30 = *(v29 + 144);
    if (v31 == v30)
    {
      goto LABEL_49;
    }

    v32 = *(v30 - 32);
    v33 = *(v30 - 16);
    v34 = *(v30 - 8);
    if (v33 < 0.0 || v34 < 0.0)
    {
      v35 = *(v30 - 24);
      *&v32 = CGRectStandardize(*&v32);
    }

    v25 = v32 + v33;
    *&v73 = v32 + v33;
    *(&v73 + 1) = 0x7FF8000000000000;
    v75 = 0.0;
    a9 = 0.0;
    a7 = NAN;
  }

  v36 = *(a1 + 56);
  if (*(a1 + 48) != v36 && *(v36 - 2) == 32)
  {
    v37 = *(a1 + 40);
    v38 = v37[18];
    if (v37[17] != v38)
    {
      v39 = v37[21];
      if (v37[20] != v39)
      {
        if (a8 < 0.0 || a9 < 0.0)
        {
          v40 = v25;
          v41 = a8;
          *&v25 = CGRectStandardize(*(&a7 - 1));
        }

        v42 = *(v38 - 32);
        v43 = *(v38 - 16);
        v44 = *(v38 - 8);
        if (v43 < 0.0 || v44 < 0.0)
        {
          v45 = *(v38 - 24);
          *&v42 = CGRectStandardize(*&v42);
        }

        *(v38 - 16) = v25 - v42;
        if (a12 < 0.0 || a13 < 0.0)
        {
          v77.origin.x = v23;
          v77.origin.y = a11;
          v77.size.width = a12;
          v77.size.height = a13;
          *&v23 = CGRectStandardize(v77);
        }

        v46 = *(v39 - 32);
        v47 = *(v39 - 16);
        v48 = *(v39 - 8);
        if (v47 < 0.0 || v48 < 0.0)
        {
          v49 = *(v39 - 24);
          *&v46 = CGRectStandardize(*&v46);
        }

        *(v39 - 16) = v23 - v46;
        goto LABEL_27;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

LABEL_27:
  v68 = v18;
  v50 = *(a1 + 40);
  i = [*(a1 + 200) length] + ((*(a1 + 56) - *(a1 + 48)) >> 1);
  std::vector<unsigned long>::push_back[abi:fe200100](v50 + 184, &i);
  v51 = 2 * v18;
  for (i = a1 + 48; v51; v51 -= 2)
  {
    std::back_insert_iterator<std::vector<unsigned short>>::operator=[abi:fe200100](&i, v19++);
  }

  std::vector<double>::push_back[abi:fe200100](a1 + 72, &a17);
  std::vector<CGRect>::push_back[abi:fe200100](*(a1 + 40) + 136, &v73);
  std::vector<CGRect>::push_back[abi:fe200100](*(a1 + 40) + 160, &v70);
  std::vector<unsigned long>::push_back[abi:fe200100](*(a1 + 40) + 112, &v68);
  v52 = *(a1 + 40);
  if (v18)
  {
    v53 = a18;
    v54 = v18;
    do
    {
      i = a2;
      std::vector<unsigned long>::push_back[abi:fe200100](v52 + 232, &i);
      --v54;
    }

    while (v54);
    v55 = *(a1 + 40);
    v56 = v55[33];
    do
    {
      v57 = v55[34];
      if (v56 >= v57)
      {
        v58 = v55[32];
        v59 = v56 - v58;
        v60 = (v56 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          goto LABEL_50;
        }

        v62 = v57 - v58;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v63);
        }

        v64 = (v56 - v58) >> 3;
        v65 = (8 * v60);
        v66 = (8 * v60 - 8 * v64);
        *v65 = v53;
        v56 = v65 + 1;
        memcpy(v66, v58, v59);
        v67 = v55[32];
        v55[32] = v66;
        v55[33] = v56;
        v55[34] = 0;
        if (v67)
        {
          operator delete(v67);
        }
      }

      else
      {
        *v56++ = v53;
      }

      v55[33] = v56;
      --v18;
    }

    while (v18);
    v52 = *(a1 + 40);
  }

  std::vector<unsigned long>::push_back[abi:fe200100](v52 + 304, &v69);
}

void PageLayoutFactory::getSpaceWidth(int8x8_t *this, const TextChunk *a2)
{
  v3 = *(&a2[13].ckSize + 2);
  if (v3)
  {
    CFRetain(*(&a2[13].ckSize + 2));
  }

  v4 = this[13];
  if (!*&v4)
  {
    goto LABEL_21;
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ (v3 >> 32));
  v6 = 0x9DDFEA08EB382D69 * ((v3 >> 32) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = vcnt_s8(v4);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v4)
    {
      v9 = v7 % *&v4;
    }
  }

  else
  {
    v9 = v7 & (*&v4 - 1);
  }

  v10 = *(*&this[12] + 8 * v9);
  if (!v10)
  {
LABEL_21:
    i = 0;
    if (!v3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v7)
    {
      if (*(i + 2) == v3)
      {
        break;
      }
    }

    else
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_21;
      }
    }
  }

  if (v3)
  {
LABEL_22:
    CFRelease(v3);
  }

LABEL_23:
  if (i)
  {
    if (i[3] > 0.0)
    {
      return;
    }

    if (v3)
    {
      goto LABEL_26;
    }
  }

  else if (v3)
  {
LABEL_26:
    explicit = atomic_load_explicit(v3 + 11, memory_order_acquire);
    if (explicit)
    {
      CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap");
    }

    glyphs = 0;
    v15 = 32;
    (*(v3[2] + 384))(v3[14], &v15, &glyphs, 1);
    if (glyphs)
    {
      advances = 0;
      CGFontGetGlyphAdvances(v3, &glyphs, 1uLL, &advances);
    }

    goto LABEL_32;
  }

  glyphs = 0;
LABEL_32:
  get_font_info(v3);
}

void PageLayoutFactory::addChunkUnicodes(PageLayoutFactory::TextChunk const&)::$_0::operator()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 8) + 72);
  if (a2 >= (*(*(a1 + 8) + 80) - v8) >> 3)
  {
    goto LABEL_25;
  }

  v11 = *a1;
  v12 = *(v8 + 8 * a2);
  v13 = *(a1 + 16);
  if (v12 != 1)
  {
    v21 = *v13;
    v22 = (v13[1] - *v13) >> 1;
    v23 = **(a1 + 24);
    v24 = v22 - v23;
    if (v22 < v23)
    {
      goto LABEL_25;
    }

    if (v12 != -1)
    {
      v25 = v24 >= v12;
      v24 = v12;
      if (!v25)
      {
        goto LABEL_25;
      }
    }

    v26 = (v21 + 2 * v23);
    goto LABEL_21;
  }

  v14 = **(a1 + 24);
  v15 = *v13;
  if (v14 >= (*(*(a1 + 16) + 8) - v15) >> 1)
  {
    goto LABEL_25;
  }

  v16 = *(v15 + 2 * v14);
  v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v18 = [v17 characterIsMember:v16];

  if (v18)
  {
    v19 = 32;
  }

  else
  {
    v19 = v16;
  }

  if (v19 > 64256)
  {
    if (v19 != 64257)
    {
      v20 = 64258;
      goto LABEL_17;
    }

LABEL_19:
    v27 = 6881382;
    goto LABEL_20;
  }

  if (v19 == 61441)
  {
    goto LABEL_19;
  }

  v20 = 61442;
LABEL_17:
  if (v19 != v20)
  {
    LOWORD(v31) = v19;
    v26 = &v31;
    v24 = 1;
    goto LABEL_21;
  }

  v27 = 7077990;
LABEL_20:
  v31 = v27;
  v26 = &v31;
  v24 = 2;
LABEL_21:
  v28 = *(a1 + 8);
  v29 = *(v28 + 24);
  if (a2 < (*(v28 + 32) - v29) >> 5)
  {
    v30 = *(v28 + 48);
    if (a2 < (*(v28 + 56) - v30) >> 5)
    {
      PageLayoutFactory::addUniChars(v11, *(v28 + 224), v26, v24, *(v28 + 176), *(v29 + 32 * a2), *(v28 + 120), *(v29 + 32 * a2 + 16), *(v28 + 128), *(v30 + 32 * a2), *(v30 + 32 * a2 + 8), *(v30 + 32 * a2 + 16), *(v30 + 32 * a2 + 24), a6, a7, a8, *(v28 + 144), *(v28 + 152));
      **(a1 + 24) += v12;
      return;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t *std::back_insert_iterator<std::vector<unsigned short>>::operator=[abi:fe200100](uint64_t *a1, unsigned __int16 *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = v9 >> 1;
    if (v9 >> 1 <= -2)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v5 - v8;
    if (v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v13);
    }

    v14 = (2 * v10);
    v15 = *a2;
    v16 = &v14[-(v9 >> 1)];
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(v16, v8, v9);
    v17 = *v4;
    *v4 = v16;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
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

void std::vector<CGRect>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t std::unique_ptr<UBiDi,applesauce::raii::v1::detail::opaque_deletion_functor<UBiDi*,&(ubidi_close)>>::reset[abi:fe200100](uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return ubidi_close();
  }

  return result;
}

void *PageLayoutFactory::eraseLastUniChars(void *this, unint64_t a2)
{
  if (a2)
  {
    v2 = this[7];
    if (this[6] != v2)
    {
      v3 = a2;
      if (2 * a2 <= v2)
      {
        this[7] = v2 - 2 * a2;
        v4 = this[5];
        v5 = v4[30];
        v6 = 8 * a2;
        if (8 * a2 <= v5)
        {
          if (!v6)
          {
            goto LABEL_8;
          }

          v7 = this[5];
          v4[30] = v5 - v6;
          v8 = v7[33];
          if (v6 <= v8)
          {
            v4 = v7;
            v7[33] = v8 - v6;
LABEL_8:
            v9 = 0;
            v10 = v4[14];
            v11 = (v4[15] - v10) >> 3;
            v12 = v11 - 1;
            while (v11 > v12)
            {
              v13 = *(v10 + 8 * v12);
              v14 = v3 - v13;
              if (v3 < v13)
              {
                *(v10 + 8 * v12) = v13 - v3;
LABEL_14:
                v15 = this[10];
                v16 = 8 * v9;
                if (8 * v9 <= v15)
                {
                  if (v16)
                  {
                    this[10] = v15 - v16;
                  }

                  v17 = v4[18];
                  v18 = 32 * v9;
                  if (v18 <= v17)
                  {
                    if (v18)
                    {
                      v4[18] = v17 - v18;
                      v19 = v4[21];
                      if (v18 > v19)
                      {
                        break;
                      }

                      v4[21] = v19 - v18;
                    }

                    v20 = v4[15];
                    if (v16 <= v20)
                    {
                      if (!v16)
                      {
                        return this;
                      }

                      v4[15] = v20 - v16;
                      v21 = v4[24];
                      if (v16 <= v21)
                      {
                        v4[24] = v21 - v16;
                        v22 = v4[39];
                        if (v16 <= v22)
                        {
                          v4[39] = v22 - v16;
                          return this;
                        }
                      }
                    }
                  }
                }

                break;
              }

              ++v9;
              --v12;
              v3 -= v13;
              if (!v14)
              {
                goto LABEL_14;
              }
            }
          }
        }
      }

      __break(1u);
    }
  }

  return this;
}

void sub_184114738(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1865EE610](v1, 0x1000C40FF89C88ELL);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<TextLine>>::__emplace_back_slow_path<TextLine*&>(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(v5);
    }

    std::shared_ptr<TextLine>::shared_ptr[abi:fe200100]<TextLine,0>((16 * v2), *a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void sub_184114848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<TextLine>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:fe200100](*(a2 + 8), "NSt3__110shared_ptrI8TextLineE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1865EE610);
  }

  return result;
}

void std::__shared_ptr_pointer<TextLine *,std::shared_ptr<TextLine>::__shared_ptr_default_delete<TextLine,TextLine>,std::allocator<TextLine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865EE610);
}

uint64_t std::vector<PageLayout::CharacterStyle>::push_back[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<PageLayout::CharacterStyle>>(v10);
    }

    v11[0] = 0;
    v11[1] = 24 * v7;
    v11[3] = 0;
    std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(24 * v7, a2);
    v11[2] = 24 * v7 + 24;
    std::vector<PageLayout::CharacterStyle>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    result = std::__split_buffer<PageLayout::CharacterStyle>::~__split_buffer(v11);
  }

  else
  {
    result = std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(v3, a2);
    v6 = result + 24;
  }

  a1[1] = v6;
  return result;
}

uint64_t std::construct_at[abi:fe200100]<PageLayout::CharacterStyle,PageLayout::CharacterStyle const&,PageLayout::CharacterStyle*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  if (v3)
  {
    CFRetain(*(a2 + 16));
  }

  *(a1 + 16) = v3;
  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<PageLayout::CharacterStyle>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<PageLayout::CharacterStyle>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      v7 += 24;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(*(v4 + 16));
      v4 += 24;
    }

    while (v4 != v5);
    v4 = *result;
  }

  a2[1] = v6;
  *result = v6;
  result[1] = v4;
  a2[1] = v4;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<PageLayout::CharacterStyle>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:fe200100]<PageLayout::CharacterStyle,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t CGColorSpaceCoreMedia709()
{
  if (CGColorSpaceCoreMedia709_predicate[0] != -1)
  {
    dispatch_once(CGColorSpaceCoreMedia709_predicate, &__block_literal_global_151_6540);
  }

  v0 = CGColorSpaceCoreMedia709_space;
  if (CGColorSpaceCoreMedia709_space)
  {
    CFRetain(CGColorSpaceCoreMedia709_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCoreMedia709_block_invoke()
{
  result = create_singleton(color_space_state_create_core_media_709);
  CGColorSpaceCoreMedia709_space = result;
  return result;
}

uint64_t CGColorSpacePerceptualStandardRGB()
{
  if (CGColorSpacePerceptualStandardRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpacePerceptualStandardRGB_predicate, &__block_literal_global_294);
  }

  v0 = CGColorSpacePerceptualStandardRGB_space;
  if (CGColorSpacePerceptualStandardRGB_space)
  {
    CFRetain(CGColorSpacePerceptualStandardRGB_space);
  }

  return v0;
}

uint64_t __CGColorSpacePerceptualStandardRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_perceptual_rgb);
  CGColorSpacePerceptualStandardRGB_space = result;
  return result;
}

uint64_t CGColorSpaceExtendedLinearGray()
{
  if (CGColorSpaceExtendedLinearGray_predicate[0] != -1)
  {
    dispatch_once(CGColorSpaceExtendedLinearGray_predicate, &__block_literal_global_291);
  }

  v0 = CGColorSpaceExtendedLinearGray_space;
  if (CGColorSpaceExtendedLinearGray_space)
  {
    CFRetain(CGColorSpaceExtendedLinearGray_space);
  }

  return v0;
}

void __CGColorSpaceExtendedLinearGray_block_invoke()
{
  CGColorSpaceExtendedLinearGray_space = create_singleton(color_space_state_create_extended_linear_gray);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceExtendedLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearGray_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedLinearGray_space);
  v0 = CGColorSpaceExtendedLinearGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

uint64_t CGColorSpaceLinearGray()
{
  if (CGColorSpaceLinearGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceLinearGray_predicate, &__block_literal_global_288_6550);
  }

  v0 = CGColorSpaceLinearGray_space;
  if (CGColorSpaceLinearGray_space)
  {
    CFRetain(CGColorSpaceLinearGray_space);
  }

  return v0;
}

void __CGColorSpaceLinearGray_block_invoke()
{
  CGColorSpaceLinearGray_space = create_singleton(color_space_state_create_linear_gray);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceLinearGray_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearGray_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearGray");
  v0 = CGColorSpaceLinearGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

uint64_t CGColorSpaceCreateDCIP3()
{
  if (CGColorSpaceCreateDCIP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDCIP3_predicate, &__block_literal_global_273_6562);
  }

  v0 = CGColorSpaceCreateDCIP3_space;
  if (CGColorSpaceCreateDCIP3_space)
  {
    CFRetain(CGColorSpaceCreateDCIP3_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateDCIP3_block_invoke()
{
  result = create_singleton(color_space_state_create_dci_p3);
  CGColorSpaceCreateDCIP3_space = result;
  return result;
}

uint64_t CGColorSpaceCreateExtendedLinearITUR_2020()
{
  if (CGColorSpaceCreateExtendedLinearITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedLinearITUR_2020_predicate, &__block_literal_global_261);
  }

  v0 = CGColorSpaceCreateExtendedLinearITUR_2020_space;
  if (CGColorSpaceCreateExtendedLinearITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateExtendedLinearITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateExtendedITUR_2020()
{
  if (CGColorSpaceCreateExtendedITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedITUR_2020_predicate, &__block_literal_global_258);
  }

  v0 = CGColorSpaceCreateExtendedITUR_2020_space;
  if (CGColorSpaceCreateExtendedITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateExtendedITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateLinearITUR_2020()
{
  if (CGColorSpaceCreateLinearITUR_2020_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateLinearITUR_2020_predicate, &__block_literal_global_255_6574);
  }

  v0 = CGColorSpaceCreateLinearITUR_2020_space;
  if (CGColorSpaceCreateLinearITUR_2020_space)
  {
    CFRetain(CGColorSpaceCreateLinearITUR_2020_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateITUR_709_HLG()
{
  if (CGColorSpaceCreateITUR_709_HLG_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_HLG_predicate, &__block_literal_global_246_6580);
  }

  v0 = CGColorSpaceCreateITUR_709_HLG_space;
  if (CGColorSpaceCreateITUR_709_HLG_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_HLG_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateITUR_709_PQ()
{
  if (CGColorSpaceCreateITUR_709_PQ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_PQ_predicate, &__block_literal_global_243);
  }

  v0 = CGColorSpaceCreateITUR_709_PQ_space;
  if (CGColorSpaceCreateITUR_709_PQ_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_PQ_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateACESCGLinear()
{
  if (CGColorSpaceCreateACESCGLinear_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateACESCGLinear_predicate, &__block_literal_global_237_6586);
  }

  v0 = CGColorSpaceCreateACESCGLinear_space;
  if (CGColorSpaceCreateACESCGLinear_space)
  {
    CFRetain(CGColorSpaceCreateACESCGLinear_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateACESCGLinear_block_invoke()
{
  result = create_singleton(color_space_state_create_acescg_linear);
  CGColorSpaceCreateACESCGLinear_space = result;
  return result;
}

uint64_t CGColorSpaceCreateGenericXYZ()
{
  if (CGColorSpaceCreateGenericXYZ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericXYZ_predicate, &__block_literal_global_234_6589);
  }

  v0 = CGColorSpaceCreateGenericXYZ_space;
  if (CGColorSpaceCreateGenericXYZ_space)
  {
    CFRetain(CGColorSpaceCreateGenericXYZ_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericXYZ_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_xyz);
  CGColorSpaceCreateGenericXYZ_space = result;
  return result;
}

uint64_t (*__color_space_state_create_generic_rgb_linear_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6597;
  }

  color_space_state_create_generic_rgb_linear_f = v1;
  return result;
}

uint64_t CGColorSpaceCreateGenericLab()
{
  if (CGColorSpaceCreateGenericLab_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericLab_predicate, &__block_literal_global_221);
  }

  v0 = CGColorSpaceCreateGenericLab_space;
  if (CGColorSpaceCreateGenericLab_space)
  {
    CFRetain(CGColorSpaceCreateGenericLab_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateGenericLab_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_lab);
  CGColorSpaceCreateGenericLab_space = result;
  return result;
}

uint64_t CGColorSpaceCreateDisplayP3_709OETF()
{
  if (CGColorSpaceCreateDisplayP3_709OETF_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_709OETF_predicate, &__block_literal_global_209_6604);
  }

  v0 = CGColorSpaceCreateDisplayP3_709OETF_space;
  if (CGColorSpaceCreateDisplayP3_709OETF_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_709OETF_space);
  }

  return v0;
}

uint64_t CGColorSpaceCreateExtendedLinearDisplayP3()
{
  if (CGColorSpaceCreateExtendedLinearDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateExtendedLinearDisplayP3_predicate, &__block_literal_global_200);
  }

  v0 = CGColorSpaceCreateExtendedLinearDisplayP3_space;
  if (CGColorSpaceCreateExtendedLinearDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateExtendedLinearDisplayP3_space);
  }

  return v0;
}

void __CGColorSpaceCreateExtendedLinearDisplayP3_block_invoke()
{
  CGColorSpaceCreateExtendedLinearDisplayP3_space = create_singleton(color_space_state_create_extended_linear_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateExtendedLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateExtendedLinearDisplayP3_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceCreateExtendedLinearDisplayP3_space);
  v0 = CGColorSpaceCreateExtendedLinearDisplayP3_space;
  v1 = CGColorSpaceCreateExtendedLinearDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", v1);
}

uint64_t CGColorSpaceCreateLinearDisplayP3()
{
  if (CGColorSpaceCreateLinearDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateLinearDisplayP3_predicate, &__block_literal_global_197);
  }

  v0 = CGColorSpaceCreateLinearDisplayP3_space;
  if (CGColorSpaceCreateLinearDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateLinearDisplayP3_space);
  }

  return v0;
}

void __CGColorSpaceCreateLinearDisplayP3_block_invoke()
{
  CGColorSpaceCreateLinearDisplayP3_space = create_singleton(color_space_state_create_linear_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceCreateLinearDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateLinearDisplayP3_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
  v0 = CGColorSpaceCreateLinearDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
}

uint64_t CGColorSpaceCreateUncalibratedCMYK()
{
  if (CGColorSpaceCreateUncalibratedCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedCMYK_predicate, &__block_literal_global_179);
  }

  v0 = CGColorSpaceCreateUncalibratedCMYK_space;
  if (CGColorSpaceCreateUncalibratedCMYK_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedCMYK_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedCMYK_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_cmyk);
  CGColorSpaceCreateUncalibratedCMYK_space = result;
  return result;
}

uint64_t CGColorSpaceCreateUncalibratedRGB()
{
  if (CGColorSpaceCreateUncalibratedRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedRGB_predicate, &__block_literal_global_176_6610);
  }

  v0 = CGColorSpaceCreateUncalibratedRGB_space;
  if (CGColorSpaceCreateUncalibratedRGB_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedRGB_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_rgb);
  CGColorSpaceCreateUncalibratedRGB_space = result;
  return result;
}

uint64_t CGColorSpaceCreateUncalibratedGray()
{
  if (CGColorSpaceCreateUncalibratedGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateUncalibratedGray_predicate, &__block_literal_global_173_6613);
  }

  v0 = CGColorSpaceCreateUncalibratedGray_space;
  if (CGColorSpaceCreateUncalibratedGray_space)
  {
    CFRetain(CGColorSpaceCreateUncalibratedGray_space);
  }

  return v0;
}

uint64_t __CGColorSpaceCreateUncalibratedGray_block_invoke()
{
  result = create_singleton(color_space_state_create_uncalibrated_gray);
  CGColorSpaceCreateUncalibratedGray_space = result;
  return result;
}

void *CGColorSpaceIDFromName(const __CFString *a1)
{
  v1 = CGColorSpaceCreateWithName(a1);

  return CGColorSpaceGetID(v1);
}

uint64_t CGColorSpaceNameFromID(int a1)
{
  result = CGColorSpaceCreateWithID(a1);
  if (result)
  {
    return *(*(result + 24) + 80);
  }

  return result;
}

CFStringRef CGColorSpaceCopyName(CGColorSpaceRef space)
{
  if (space && (v1 = *(*(space + 3) + 80)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t CGColorSpaceAttachToIOSurface(CGColorSpace *a1, __IOSurface *a2)
{
  result = 0;
  if (a1 && a2)
  {
    ID = CGColorSpaceGetID(a1);
    if (ID)
    {
      valuePtr = ID;
      result = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!result)
      {
        return result;
      }

      v6 = result;
      IOSurfaceSetValue(a2, @"IOSurfaceColorSpaceID", result);
      v7 = *MEMORY[0x1E696CEE0];
      v8 = IOSurfaceCopyValue(a2, *MEMORY[0x1E696CEE0]);
      v9 = CGColorSpaceCreateWithPropertyList(v8);
      if (!CGColorSpaceEqualToColorSpace(a1, v9))
      {
        v10 = CGColorSpaceCopyPropertyList(a1);
        IOSurfaceSetValue(a2, v7, v10);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      result = CGColorSpaceCopyPropertyList(a1);
      if (!result)
      {
        return result;
      }

      v6 = result;
      IOSurfaceSetValue(a2, *MEMORY[0x1E696CEE0], result);
      IOSurfaceRemoveValue(a2, @"IOSurfaceColorSpaceID");
    }

    CFRelease(v6);
    return 1;
  }

  return result;
}

void __setup_block_invoke()
{
  if (CGFontCacheGetLocalCache_predicate != -1)
  {
    dispatch_once(&CGFontCacheGetLocalCache_predicate, &__block_literal_global_6640);
  }

  v1 = CGFontCacheGetLocalCache_local_font_cache;

  CGFontCacheReset(v1);
}

void CGFontCacheReset(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 4));
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 32) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      do
      {
        CGFontStrikeRelease(*v3);
        v3 = *(v3 + 8);
      }

      while (v3);
      v4 = *(a1 + 40);
      if (v4)
      {
        do
        {
          v5 = v4[1];
          free(v4);
          v4 = v5;
        }

        while (v5);
      }
    }

    *(a1 + 40) = 0;

    os_unfair_lock_unlock((a1 + 4));
  }
}

void print_cache_size()
{
  while (1)
  {
    sleep(reporting_frequency);
    pthread_mutex_lock(&font_caches_mutex);
    v0 = font_caches;
    if (font_caches)
    {
      do
      {
        v1 = *v0;
        if (*v0)
        {
          os_unfair_lock_lock((v1 + 4));
          v2 = *(v1 + 40);
          if (v2)
          {
            v3 = 0;
            do
            {
              v3 += CGFontStrikeGetSize(*v2);
              v2 = v2[1];
            }

            while (v2);
            v4 = *(v1 + 40);
            if (v4)
            {
              v2 = 0;
              do
              {
                v2 = (v2 + 1);
                v4 = *(v4 + 8);
              }

              while (v4);
            }

            else
            {
              v2 = 0;
            }
          }

          else
          {
            v3 = 0;
          }

          os_unfair_lock_unlock((v1 + 4));
        }

        else
        {
          v2 = 0;
          v3 = 0;
        }

        CGPostError("Cache %p: %zu bytes count = %zu", v1, v3, v2);
        v0 = v0[1];
      }

      while (v0);
    }

    pthread_mutex_unlock(&font_caches_mutex);
  }
}

atomic_uint *CGFontCacheRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGFontCacheRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    pthread_mutex_lock(&font_caches_mutex);
    font_caches = x_list_remove(font_caches, a1);
    pthread_mutex_unlock(&font_caches_mutex);
    CGFontCacheReset(a1);

    free(a1);
  }
}

uint64_t CGFontCacheResetAllCaches()
{
  pthread_mutex_lock(&font_caches_mutex);
  v0 = font_caches;
  if (font_caches)
  {
    do
    {
      CGFontCacheReset(*v0);
      v0 = v0[1];
    }

    while (v0);
  }

  return pthread_mutex_unlock(&font_caches_mutex);
}

void CGFontCachePrint(uint64_t a1, FILE *a2)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 4));
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = 0;
      do
      {
        v5 += CGFontStrikeGetSize(*v4);
        v4 = v4[1];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    fprintf(a2, "cache %p: size = %zu (max %zu)\n", a1, v5, *(a1 + 8));
    v14 = a1;
    v6 = *(a1 + 40);
    if (v6)
    {
      do
      {
        v7 = *v6;
        fwrite("  ", 2uLL, 1uLL, a2);
        if (v7)
        {
          v8 = v7 + 8;
        }

        else
        {
          v8 = 0;
        }

        fprintf(a2, "strike %p <font %d; style 0x%04x >; ", v7, *v8, *(v8 + 4));
        fprintf(a2, "[ %g %g %g %g ; %g %g ]; ", *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48));
        fprintf(a2, "[ %g %g ]; ", *(v8 + 56), *(v8 + 64));
        fprintf(a2, "%zu bytes; %d", *(v7 + 88), *(v7 + 4));
        fwrite(":\n", 2uLL, 1uLL, a2);
        if (*(v7 + 88))
        {
          fwrite("    entries:\n", 0xDuLL, 1uLL, a2);
          v9 = 0;
          v10 = v7 + 112;
          do
          {
            v11 = *(v10 + 8 * v9);
            if (v11)
            {
              for (i = 0; i != 256; ++i)
              {
                for (j = *(v11 + 8 * i); j; j = j[1])
                {
                  fprintf(a2, "    glyph %hu (%hhu/%hhu)\n", *(*j + 4), *(*j + 6), *(*j + 7));
                }
              }
            }

            ++v9;
          }

          while (v9 != 256);
        }

        else
        {
          fwrite("    no entries.\n", 0x10uLL, 1uLL, a2);
        }

        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      fwrite("  no strikes.\n", 0xEuLL, 1uLL, a2);
    }

    os_unfair_lock_unlock(v14 + 1);
  }
}

uint64_t CGFontCacheGetLocalCache()
{
  if (CGFontCacheGetLocalCache_predicate != -1)
  {
    dispatch_once(&CGFontCacheGetLocalCache_predicate, &__block_literal_global_6640);
  }

  return CGFontCacheGetLocalCache_local_font_cache;
}

void CGSBlend8888toARGB8888(char *a1, int a2, char *a3, int a4, int a5, int a6, unsigned int a7, char a8)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = a5;
  if (a3 > a1 && a2 == a4)
  {
    v16 = &a1[4 * a5];
    if (v16 <= a3)
    {
      v19 = &v16[(a6 - 1) * a2];
      if (v19 <= a3)
      {
        v11 = a2;
      }

      else
      {
        v11 = -a2;
      }

      if (v19 > a3)
      {
        v17 = &a3[(a6 - 1) * a2];
      }

      else
      {
        v17 = a3;
      }

      if (v19 <= a3)
      {
        v18 = a2;
      }

      else
      {
        v12 = &a3[(a6 - 1) * a2];
        v18 = -a2;
      }

      if (v19 <= a3)
      {
        v13 = a2;
      }

      else
      {
        v13 = -a2;
      }

      if (v19 > a3)
      {
        v14 = (v19 - 4 * a5);
      }
    }

    else
    {
      v11 = 4 * a5;
      v17 = malloc_type_malloc(4 * a5 * a6, 0x51AA3C28uLL);
      v18 = v13;
    }
  }

  else
  {
    v17 = a3;
    v18 = a4;
  }

  srcTop.data = v14;
  srcTop.height = a6;
  srcTop.width = v15;
  srcTop.rowBytes = v13;
  srcBottom.data = v12;
  srcBottom.height = a6;
  srcBottom.width = v15;
  srcBottom.rowBytes = v18;
  dest.data = v17;
  dest.height = a6;
  dest.width = v15;
  dest.rowBytes = v11;
  permuteMap[0] = a7 >> 6;
  permuteMap[1] = (a7 >> 4) & 3;
  permuteMap[2] = (a7 >> 2) & 3;
  permuteMap[3] = a7 & 3;
  vImagePremultipliedAlphaBlendWithPermute_ARGB8888(&srcTop, &srcBottom, &dest, permuteMap, a8 != 1, 0x10u);
  if (v12 != v17)
  {
    CGBlt_copyBytes(v11, a6, v17, v12, v11, v18);
    free(v17);
  }
}

_DWORD *resample_float_h_Ncpp(_DWORD *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = *a7;
    v12 = 4 * a2 + 8;
    v13 = a8;
    do
    {
      if (a4)
      {
        v14 = *(a5 + 8 * v8);
        v15 = a4;
        v16 = result;
        do
        {
          if (v9)
          {
            v17 = 0;
            v18 = v16[1];
            v19 = v10 + v8 * v11 + 4 * *v16 * v9;
            do
            {
              v20 = 0.0;
              if (v18)
              {
                v21 = v19;
                v22 = (v16 + 2);
                v23 = v18;
                do
                {
                  v24 = *v22++;
                  v20 = v20 + (*v21 * v24);
                  v21 += v9;
                  --v23;
                }

                while (v23);
              }

              *v14++ = v20;
              ++v17;
              v19 += 4;
            }

            while (v17 != v9);
          }

          v16 = (v16 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
    }

    while (v8 != v13);
  }

  return result;
}

int *resample_float_h_4cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v9 + v8 * v10 + 16 * *v14);
            v18 = 0uLL;
            do
            {
              v19 = *v16++;
              v20 = v19;
              v21 = *v17++;
              v18 = vmlaq_n_f32(v18, v21, v20);
              --v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0uLL;
          }

          *v12++ = v18;
          v14 = (v14 + v11);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float_h_3cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = (v14 + 2);
            v17 = (v9 + v8 * v10 + 12 * *v14);
            v18 = 0;
            v19 = 0.0;
            do
            {
              v20 = *v16++;
              v21 = v17[1].f32[0];
              v18 = vmla_n_f32(v18, *v17, v20);
              v17 = (v17 + 12);
              v19 = v19 + (v21 * v20);
              --v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0;
            v19 = 0.0;
          }

          *v12 = v18;
          v12[1].f32[0] = v19;
          v12 = (v12 + 12);
          v14 = (v14 + v11);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

float *resample_float_h_1cpp(float *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == a8)
      {
        return result;
      }
    }

    v12 = *(a5 + 8 * v8);
    v13 = a4;
    v14 = result;
    while (1)
    {
      v15 = *(v14 + 1);
      v16 = v14 + 2;
      v17 = v14[2];
      v18 = v9 + v8 * v10 - 4 + 4 * *v14;
      if (v15 >= 4)
      {
        break;
      }

      v20 = 0.0;
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v12++ = v20;
      v14 = (v14 + v11);
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v19 = v14 + 6;
    v20 = 0.0;
    do
    {
      v21 = v15;
      v22 = *(v18 + 16);
      v18 += 16;
      v15 -= 4;
      v23 = ((v20 + (*(v18 - 12) * v17)) + (*(v18 - 8) * *(v19 - 3))) + (*(v18 - 4) * *(v19 - 2));
      v17 = *v19;
      v20 = v23 + (v22 * *(v19 - 1));
      v19 += 4;
    }

    while (v21 > 7);
    v16 = v19 - 4;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_11:
    v24 = (v18 + 4);
    v25 = v16 + 1;
    do
    {
      v26 = *v24++;
      v20 = v20 + (v26 * v17);
      v27 = *v25++;
      v17 = v27;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float_v_Ncpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 4;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
    v12 = 0.0;
    v13 = a3;
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
    v13 = a3;
    do
    {
      v14 = 0uLL;
      if (v7)
      {
        v15 = a6;
        v16 = v8;
        v17 = v7;
        do
        {
          v18 = *v16++;
          v19 = v18;
          v20 = *v15++;
          v14 = vmlaq_n_f32(v14, *(v20 + 4 * v11), v19);
          --v17;
        }

        while (v17);
      }

      v21 = v11 | 1;
      if (v12 < v14.f32[0])
      {
        v12 = v14.f32[0];
      }

      if (v12 >= 0.0)
      {
        v22 = v12;
      }

      else
      {
        v22 = 0.0;
      }

      if (v12 > 1.0)
      {
        v22 = 1.0;
      }

      v23 = v21 == v13;
      if (v21 == v13)
      {
        v24 = v13 + a3;
      }

      else
      {
        v24 = v13;
      }

      if (v23)
      {
        v13 += a3;
      }

      if (v23)
      {
        v12 = 0.0;
      }

      if (!v23)
      {
        v22 = v14.f32[0];
      }

      v25 = v14.f32[1];
      if (v12 < v14.f32[1])
      {
        v12 = v14.f32[1];
      }

      if (v12 >= 0.0)
      {
        v26 = v12;
      }

      else
      {
        v26 = 0.0;
      }

      if (v12 > 1.0)
      {
        v26 = 1.0;
      }

      if ((v11 | 2) == v24)
      {
        v25 = v26;
        v24 = v13 + a3;
        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 4) = v22;
      *(v6 + 8) = v25;
      v27 = v14.f32[2];
      if (v12 < v14.f32[2])
      {
        v12 = v14.f32[2];
      }

      if (v12 >= 0.0)
      {
        v28 = v12;
      }

      else
      {
        v28 = 0.0;
      }

      if (v12 > 1.0)
      {
        v28 = 1.0;
      }

      result = v13 + a3;
      if ((v11 | 3) == v24)
      {
        v24 = v13 + a3;
        v13 += a3;
        v12 = 0.0;
        v27 = v28;
      }

      *(v6 + 12) = v27;
      v14.i32[0] = v14.i32[3];
      if (v12 < v14.f32[3])
      {
        v12 = v14.f32[3];
      }

      v11 += 4;
      if (v11 == v24)
      {
        v14.i32[0] = 0;
        if (v12 >= 0.0)
        {
          v14.f32[0] = v12;
        }

        if (v12 > 1.0)
        {
          v14.f32[0] = 1.0;
        }

        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 16) = v14.i32[0];
      v6 += 16;
    }

    while (v11 < v10);
  }

  if (v11 < v9)
  {
    v11 = v11;
    do
    {
      v29 = 0.0;
      if (v7)
      {
        v30 = a6;
        v31 = v8;
        v32 = v7;
        do
        {
          v33 = *v31++;
          v34 = v33;
          v35 = *v30++;
          result = v35;
          v29 = v29 + (*(v35 + 4 * v11) * v34);
          --v32;
        }

        while (v32);
      }

      if (v12 < v29)
      {
        v12 = v29;
      }

      if (++v11 == v13)
      {
        v29 = 0.0;
        if (v12 >= 0.0)
        {
          v29 = v12;
        }

        if (v12 > 1.0)
        {
          v29 = 1.0;
        }

        v13 += a3;
        v12 = 0.0;
      }

      *(v6 + 4) = v29;
      v6 += 4;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t resample_float_v_3cpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0uLL;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          v15 = v14;
          v16 = *v11++;
          v10 = vmlaq_n_f32(v10, *(v16 + 4 * v7), v15);
          --v13;
        }

        while (v13);
      }

      v17 = v10.f32[3];
      if (v10.f32[0] > v10.f32[3])
      {
        v17 = v10.f32[0];
      }

      if (v10.f32[1] > v17)
      {
        v17 = v10.f32[1];
      }

      if (v10.f32[2] > v17)
      {
        v17 = v10.f32[2];
      }

      *v9 = v10.i64[0];
      *(v9 + 8) = v10.i32[2];
      if (v17 >= 0.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      if (v17 > 1.0)
      {
        v18 = 1.0;
      }

      *(v9 + 12) = v18;
      v9 += 16;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float_v_Ncpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 4);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    v14 = 0.0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    v14 = 0.0;
    v15 = a3;
    do
    {
      v16 = 0uLL;
      if (v7)
      {
        v17 = a6;
        v18 = v8;
        v19 = v7;
        do
        {
          v20 = *v18++;
          v21 = v20;
          v22 = *v17++;
          v16 = vmlaq_n_f32(v16, *(v22 + 4 * v13), v21);
          --v19;
        }

        while (v19);
      }

      if (v14 >= v16.f32[0])
      {
        v23 = v14;
      }

      else
      {
        v23 = v16.f32[0];
      }

      if ((v13 | 1) == v15)
      {
        v24 = 0.0;
        if (v23 >= 0.0)
        {
          v24 = v23;
        }

        if (v23 > 1.0)
        {
          v24 = 1.0;
        }

        v6[v10] = v24;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      else
      {
        result = v15;
      }

      v6[1] = v16.f32[0];
      if (v23 < v16.f32[1])
      {
        v23 = v16.f32[1];
      }

      if ((v13 | 2) == result)
      {
        v25 = 0.0;
        if (v23 >= 0.0)
        {
          v25 = v23;
        }

        if (v23 <= 1.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1.0;
        }

        v6[v10 + 1] = v26;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      v6[2] = v16.f32[1];
      if (v23 < v16.f32[2])
      {
        v23 = v16.f32[2];
      }

      if ((v13 | 3) == result)
      {
        v27 = 0.0;
        if (v23 >= 0.0)
        {
          v27 = v23;
        }

        if (v23 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        v6[v10 + 2] = v28;
        result = v15 + v9;
        v15 += v9;
        v23 = 0.0;
      }

      v6[3] = v16.f32[2];
      if (v23 >= v16.f32[3])
      {
        v14 = v23;
      }

      else
      {
        v14 = v16.f32[3];
      }

      v13 += 4;
      if (v13 == result)
      {
        v29 = 0.0;
        if (v14 >= 0.0)
        {
          v29 = v14;
        }

        if (v14 <= 1.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1.0;
        }

        v6[v10 + 3] = v30;
        v15 += v9;
        v14 = 0.0;
      }

      v6[4] = v16.f32[3];
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      v31 = 0.0;
      if (v7)
      {
        v32 = a6;
        v33 = v8;
        LODWORD(result) = v7;
        do
        {
          v34 = *v33++;
          v35 = v34;
          v36 = *v32++;
          v31 = v31 + (*(v36 + 4 * v13) * v35);
          result = (result - 1);
        }

        while (result);
      }

      if (v14 < v31)
      {
        v14 = v31;
      }

      if (++v13 == v15)
      {
        v37 = 0.0;
        if (v14 >= 0.0)
        {
          v37 = v14;
        }

        if (v14 <= 1.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 1.0;
        }

        v6[v10] = v38;
        v15 += v9;
        v14 = 0.0;
      }

      v6[1] = v31;
      ++v6;
    }

    while (v13 != v11);
  }

  return result;
}

uint64_t resample_float_v_3cpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0uLL;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          v15 = v14;
          v16 = *v11++;
          v10 = vmlaq_n_f32(v10, *(v16 + 4 * v7), v15);
          --v13;
        }

        while (v13);
      }

      v17 = v10.f32[1];
      if (v10.f32[1] <= v10.f32[0])
      {
        v17 = v10.f32[0];
      }

      if (v10.f32[2] > v17)
      {
        v17 = v10.f32[2];
      }

      if (v10.f32[3] > v17)
      {
        v17 = v10.f32[3];
      }

      if (v17 >= 0.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0.0;
      }

      if (v17 <= 1.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1.0;
      }

      *v9 = v19;
      *(v9 + 4) = vextq_s8(v10, v10, 4uLL).u64[0];
      *(v9 + 12) = v10.i32[3];
      v9 += 16;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float_v_Ncpp(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, float32x4_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(i) = 0;
  }

  else
  {
    for (i = 0; i < v10; i += 4)
    {
      v12 = 0uLL;
      if (v7)
      {
        v13 = a6;
        v14 = v8;
        v15 = v7;
        do
        {
          v16 = *v14++;
          v17 = v16;
          v18 = *v13++;
          result = v18;
          v12 = vmlaq_n_f32(v12, *(v18 + 4 * i), v17);
          --v15;
        }

        while (v15);
      }

      *v6++ = v12;
    }
  }

  if (i < v9)
  {
    i = i;
    do
    {
      v19 = 0.0;
      if (v7)
      {
        v20 = a6;
        v21 = v8;
        v22 = v7;
        do
        {
          v23 = *v21++;
          v24 = v23;
          v25 = *v20++;
          v19 = v19 + (*(v25 + 4 * i) * v24);
          --v22;
        }

        while (v22);
      }

      v6->f32[0] = v19;
      v6 = (v6 + 4);
      ++i;
    }

    while (i != v9);
  }

  return result;
}

int *resample_float_h_Ncpp_ap(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = *a7;
    v14 = a7[1];
    v15 = 4 * a3 - 4;
    do
    {
      if (a4)
      {
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          v20 = *v18;
          v21 = (v18 + 2);
          if (v9 >= 2)
          {
            v22 = 0;
            do
            {
              v23 = 0.0;
              if (v19)
              {
                v24 = (v11 + v8 * v13 + 4 * v20 * v10);
                v25 = (v18 + 2);
                v26 = v19;
                do
                {
                  v27 = *v25++;
                  v23 = v23 + (*v24 * v27);
                  v24 = (v24 + v15);
                  --v26;
                }

                while (v26);
              }

              *v16++ = v23;
              ++v22;
            }

            while (v22 != v10);
          }

          if (v19)
          {
            v28 = (v12 + v8 * v14 + 4 * v20);
            v29 = 0.0;
            do
            {
              v30 = *v21++;
              v31 = v30;
              v32 = *v28++;
              v29 = v29 + (v32 * v31);
              --v19;
            }

            while (v19);
          }

          else
          {
            v29 = 0.0;
          }

          *v16++ = v29;
          v18 += a2 + 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float_h_4cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = (v9 + v8 * v11 + 16 * v20);
            v22 = (v10 + v8 * v12 + 4 * v20);
            v23 = 0uLL;
            v24 = 0.0;
            do
            {
              v25 = *v19++;
              v26 = v25;
              v27 = *v21++;
              v28 = v27;
              v27.i32[0] = *v22++;
              v23 = vmlaq_n_f32(v23, v28, v26);
              v24 = v24 + (v27.f32[0] * v26);
              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0uLL;
            v24 = 0.0;
          }

          *v15 = v23;
          v15[1].f32[0] = v24;
          v15 = (v15 + 20);
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

uint64_t resample_float_h_1cpp_ap(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == v14)
      {
        return result;
      }
    }

    v15 = *(a5 + 8 * v8);
    v16 = a4;
    v17 = result;
    while (1)
    {
      v18 = *(v17 + 4);
      v19 = *v17 - 1;
      v20 = v9 + v8 * v11 + 4 * v19;
      v21 = v10 + v8 * v12 + 4 * v19;
      v22 = v17 + 8;
      v23 = *(v17 + 8);
      if (v18 >= 2)
      {
        break;
      }

      v26 = 0.0;
      v25 = 0.0;
      if (v18)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v15 = v26;
      v15[1] = v25;
      v15 += 2;
      v17 += v13;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v24 = 0;
    v25 = 0.0;
    v26 = 0.0;
    do
    {
      v27 = v26 + (*(v20 + v24 + 4) * v23);
      v28 = v25 + (*(v21 + v24 + 4) * v23);
      v29 = *(v17 + v24 + 12);
      v23 = *(v17 + v24 + 16);
      v26 = v27 + (*(v20 + v24 + 8) * v29);
      v30 = v18;
      v18 -= 2;
      v25 = v28 + (*(v21 + v24 + 8) * v29);
      v24 += 8;
    }

    while (v30 > 3);
    v22 = v17 + v24 + 8;
    v21 += v24;
    v20 += v24;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v31 = (v21 + 4);
    v32 = (v20 + 4);
    v33 = (v22 + 4);
    do
    {
      v34 = *v32++;
      v35 = v34;
      v36 = *v31++;
      v26 = v26 + (v35 * v23);
      v25 = v25 + (v36 * v23);
      v37 = *v33++;
      v23 = v37;
      --v18;
    }

    while (v18);
    goto LABEL_13;
  }

  return result;
}

unint64_t resample_float_v_Ncpp_ap(unint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 4;
  v7 = a5[1] - 4;
  v8 = *(result + 4);
  v9 = (result + 8);
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    v13 = 0.0;
    v14 = a3;
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
    v14 = a3;
    do
    {
      v15 = 0uLL;
      if (v8)
      {
        v16 = a6;
        v17 = v9;
        v18 = v8;
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v16++;
          v15 = vmlaq_n_f32(v15, *(v21 + 4 * v12), v20);
          --v18;
        }

        while (v18);
      }

      if (v13 < v15.f32[0])
      {
        v13 = v15.f32[0];
      }

      if ((v12 | 1) == v14)
      {
        v22 = 0.0;
        if (v13 >= 0.0)
        {
          v22 = v13;
        }

        if (v13 <= 1.0)
        {
          v23 = v22;
        }

        else
        {
          v23 = 1.0;
        }

        *(v7 + 4) = v23;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        v24 = v14;
        *(v6 + 4) = v15.i32[0];
        v6 += 4;
      }

      if (v13 < v15.f32[1])
      {
        v13 = v15.f32[1];
      }

      if ((v12 | 2) == v24)
      {
        v25 = 0.0;
        if (v13 >= 0.0)
        {
          v25 = v13;
        }

        if (v13 <= 1.0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 1.0;
        }

        *(v7 + 4) = v26;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[1];
        v6 += 4;
      }

      if (v13 < v15.f32[2])
      {
        v13 = v15.f32[2];
      }

      result = v12 | 3;
      if ((v12 | 3) == v24)
      {
        v27 = 0.0;
        if (v13 >= 0.0)
        {
          v27 = v13;
        }

        if (v13 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(v7 + 4) = v28;
        v7 += 4;
        v24 = v14 + a3;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[2];
        v6 += 4;
      }

      if (v13 < v15.f32[3])
      {
        v13 = v15.f32[3];
      }

      v12 += 4;
      if (v12 == v24)
      {
        v29 = 0.0;
        if (v13 >= 0.0)
        {
          v29 = v13;
        }

        if (v13 <= 1.0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 1.0;
        }

        *(v7 + 4) = v30;
        v7 += 4;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v15.i32[3];
        v6 += 4;
      }
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      v31 = 0.0;
      if (v8)
      {
        v32 = a6;
        v33 = v9;
        LODWORD(result) = v8;
        do
        {
          v34 = *v33++;
          v35 = v34;
          v36 = *v32++;
          v31 = v31 + (*(v36 + 4 * v12) * v35);
          result = (result - 1);
        }

        while (result);
      }

      if (v13 < v31)
      {
        v13 = v31;
      }

      if (++v12 == v14)
      {
        v37 = 0.0;
        if (v13 >= 0.0)
        {
          v37 = v13;
        }

        if (v13 <= 1.0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 1.0;
        }

        *(v7 + 4) = v38;
        v7 += 4;
        v14 += a3;
        v13 = 0.0;
      }

      else
      {
        *(v6 + 4) = v31;
        v6 += 4;
      }
    }

    while (v12 != v10);
  }

  return result;
}

int *resample_float_h_3cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, unsigned int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = v9 + v8 * v11 + 12 * v20;
            v22 = (v10 + v8 * v12 + 4 * v20);
            v23 = 0uLL;
            do
            {
              v24 = *v19++;
              v25 = v24;
              v26.i64[0] = *v21;
              v27 = *v22++;
              v26.i32[2] = *(v21 + 8);
              v26.i32[3] = v27;
              v23 = vmlaq_n_f32(v23, v26, v25);
              v21 += 12;
              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0uLL;
          }

          *v15++ = v23;
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}