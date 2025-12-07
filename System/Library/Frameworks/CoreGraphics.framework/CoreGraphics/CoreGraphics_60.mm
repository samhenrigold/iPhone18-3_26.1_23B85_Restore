void op_BMC_8070(CGPDFScanner *a1)
{
  value = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    if (!strcmp(value, "AAPL:StyleContent"))
    {
      if (a1)
      {
        v6 = *(a1 + 12);
        v7 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v7 = v6;
        v7[1] = 2;
        *(a1 + 12) = v7;
      }

      v8 = *(a1 + 17);
      v9 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v9 = v8;
      v9[1] = 1;
      *(a1 + 17) = v9;
      v10 = CGPDFOperatorTableCreate();
      if (v10)
      {
        v11 = v10;
        CGPDFOperatorTableSetCallback(v10, "BMC", op_BMC_8070);
        CGPDFOperatorTableSetCallback(v11, "BDC", op_BDC_8072);
        CGPDFOperatorTableSetCallback(v11, "EMC", op_EMC_8069);
        CGPDFScannerPushTable(a1, v11);
        CFRelease(v11);
      }
    }

    else
    {
      if (a1)
      {
        v2 = *(a1 + 12);
        v3 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v3 = v2;
        v3[1] = 0;
        *(a1 + 12) = v3;
      }

      v4 = *(a1 + 17);
      v5 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
      *v5 = v4;
      v5[1] = 1;
      *(a1 + 17) = v5;
    }
  }
}

void op_BDC_8072(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 > 0)
  {
    valuePtr[7] = v2;
    valuePtr[8] = v3;
    v7 = *(a1 + 80) + 40 * v4;
    v35 = (v7 - 40);
    value = 0;
    *(a1 + 72) = v4 - 1;
    if (!CGPDFScannerPopName(a1, &value))
    {
      return;
    }

    if (v7 != 40)
    {
      v8 = *(v7 - 32);
      if (v8 == 5)
      {
        v11 = *(v7 - 8);
        if (v11)
        {
          Resource = CGPDFContentStreamGetResource(*a2, "Properties", v11);
          if (!Resource || *(Resource + 2) != 8)
          {
            v14 = 0;
            v15 = -1;
            goto LABEL_19;
          }

          v9 = (Resource + 32);
          goto LABEL_7;
        }
      }

      else if (v8 == 8)
      {
        v9 = (v7 - 8);
LABEL_7:
        v10 = *v9;
        goto LABEL_16;
      }
    }

    v10 = 0;
LABEL_16:
    valuePtr[0] = -1;
    Integer = CGPDFDictionaryGetInteger(v10, "MCID", valuePtr);
    v14 = Integer && valuePtr[0] >= 0;
    if (v14)
    {
      v15 = valuePtr[0];
    }

    else
    {
      v15 = -1;
    }

LABEL_19:
    if (*value == 79 && value[1] == 67 && !value[2])
    {
      if (v7 == 40)
      {
        CGPDFDrawingContextSaveGState(a2);
        goto LABEL_50;
      }

      if (*(v7 - 32) == 5)
      {
        PropertyList = CGPDFContentStreamGetPropertyList(*(a1 + 56), *(v7 - 8));
        if (PropertyList)
        {
          ShouldDrawOCG = CGPDFDrawingContextShouldDrawOCG(a2, PropertyList[3], PropertyList[4]);
          v27 = *(a1 + 96);
          v28 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v28 = v27;
          v28[1] = 0;
          *(a1 + 96) = v28;
          v29 = *(a1 + 136);
          v30 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v30 = v29;
          v30[1] = ShouldDrawOCG;
LABEL_52:
          *(a1 + 136) = v30;
          return;
        }
      }

      CGPDFDrawingContextSaveGState(a2);
    }

    else
    {
      if (v14)
      {
        v16 = *(a1 + 96);
        v17 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v17 = v16;
        v17[1] = 3;
        *(a1 + 96) = v17;
        v18 = *(a2 + 96);
        if (v18)
        {
          v19 = *(a2 + 88);
          valuePtr[0] = v15;
          if (v19 && *(v19 + 16) == 1129601108 && *(v19 + 24) == 1)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, @"PageProperties", v18);
            CGCFDictionarySetNumber(Mutable, @"MCID", kCFNumberSInt64Type, valuePtr);
            v21 = *(v19 + 40);
            if (v21)
            {
              v22 = *(v21 + 168);
              if (v22)
              {
                v22();
              }
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          else
          {
            handle_invalid_context("CGPDFContextBeginTagWithMCID", v19);
          }
        }

        return;
      }

      if (strcmp(value, "AAPL:Style"))
      {
        v23 = *(a1 + 96);
        v24 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        v24[1] = 0;
LABEL_51:
        *v24 = v23;
        *(a1 + 96) = v24;
        v34 = *(a1 + 136);
        v30 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v30 = v34;
        v30[1] = 1;
        goto LABEL_52;
      }

      CGPDFDrawingContextSaveGState(a2);
      if (v7 == 40)
      {
LABEL_50:
        CGPDFDrawingContextSaveGState(a2);
        v23 = *(a1 + 96);
        v24 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        v24[1] = 1;
        goto LABEL_51;
      }
    }

    if (*(v7 - 32) == 5)
    {
      v31 = *(v7 - 8);
      value = v31;
      v32 = a2 ? *a2 : 0;
      v33 = CGPDFContentStreamGetPropertyList(v32, v31);
      if (CGPDFDictionaryGetObject(v33, "Style", &v35))
      {
        set_style(a2, v35);
      }
    }

    goto LABEL_50;
  }

  pdf_error("stack underflow.", a2);
}

void set_style(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (get_shadow_style(a2, &cf))
  {
    v3 = *(a1 + 32);
    v4 = cf;
    CGPDFGStateSetShadowStyle(v3, cf);
    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {

    pdf_error("invalid shadow style.");
  }
}

CGColorSpaceRef get_shadow_style(uint64_t a1, unint64_t *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20 = a1;
  if (!a1)
  {
LABEL_7:
    *a2 = 0;
    return 1;
  }

  v18 = 0.0;
  value = 0;
  v3 = *(a1 + 8);
  if (v3 != 8)
  {
    if (v3 != 5)
    {
      return 0;
    }

    v4 = *(a1 + 32);
    if (strcmp(v4, "Default") && strcmp(v4, "None"))
    {
      return 0;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  result = CGPDFDictionaryGetName(v6, "Subtype", &value);
  if (!result)
  {
    return result;
  }

  if (strcmp(value, "Shadow"))
  {
    return 0;
  }

  result = CGPDFDictionaryGetNumbers(v6, "Offset", v21, 2);
  if (result)
  {
    v7 = *v21;
    v8 = *&v21[1];
    if (!CGPDFDictionaryGetNumber(v6, "Radius", &v18))
    {
      v18 = 0.0;
    }

    if (!CGPDFDictionaryGetObject(v6, "ColorSpace", &v20))
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v16 = CGColorCreate(DeviceRGB, get_shadow_style_default_components);
      CGColorSpaceRelease(DeviceRGB);
LABEL_29:
      *a2 = CGStyleCreateShadow2(v16, v7, v8, v18);
      if (v16)
      {
        CFRelease(v16);
      }

      return 1;
    }

    result = CGPDFCreateColorSpace(v20);
    if (result)
    {
      v9 = result;
      v10 = *(*(result + 3) + 48) + 1;
      v11 = MEMORY[0x1EEE9AC00](8 * v10);
      v14 = &v18 - v13;
      if (v12 <= 0x1FFFFFFFFFFFFFFELL)
      {
        v15 = &v18 - v13;
      }

      else
      {
        v15 = 0;
      }

      if (v12 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
      {
        v15 = malloc_type_malloc(v11, 0xDA977817uLL);
      }

      if (!v15)
      {
        return 0;
      }

      if (!CGPDFDictionaryGetNumbers(v6, "Color", v15, v10))
      {
        if (v15 != v14)
        {
          free(v15);
        }

        return 0;
      }

      v16 = CGColorCreate(v9, v15);
      if (v15 != v14)
      {
        free(v15);
      }

      CGColorSpaceRelease(v9);
      goto LABEL_29;
    }
  }

  return result;
}

void op_gs_8087(CGPDFScanner *a1, uint64_t *a2)
{
  v81 = 0.0;
  v80 = 0;
  value = 0;
  v79 = 0;
  v76 = 0;
  array = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  v3 = a2 ? *a2 : 0;
  ExtGState = CGPDFContentStreamGetExtGState(v3, value);
  if (!ExtGState)
  {
    return;
  }

  v5 = ExtGState;
  if (CGPDFDictionaryGetNumber(ExtGState, "LW", &v81))
  {
    if (v81 >= 0.0)
    {
      v6 = a2[4];
      if (v6)
      {
        *(v6 + 160) = v81;
      }
    }

    else
    {
      pdf_error("invalid line width: %g.", v81);
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "LC", &v79))
  {
    if (v79 >= 3)
    {
      pdf_error("invalid line cap: %ld.", v79);
    }

    else
    {
      v7 = a2[4];
      if (v7)
      {
        *(v7 + 168) = v79;
      }
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "LJ", &v79))
  {
    if (v79 >= 3)
    {
      pdf_error("invalid line join: %ld.", v79);
    }

    else
    {
      v8 = a2[4];
      if (v8)
      {
        *(v8 + 172) = v79;
      }
    }
  }

  if (CGPDFDictionaryGetNumber(v5, "ML", &v81))
  {
    if (v81 >= 1.0)
    {
      v9 = a2[4];
      if (v9)
      {
        *(v9 + 176) = v81;
      }
    }

    else
    {
      pdf_error("invalid miter limit: %g.", v81);
    }
  }

  if (CGPDFDictionaryGetArray(v5, "D", &array) && CGPDFArrayGetNumber(array, 0, &v81) && CGPDFArrayGetArray(array, 1uLL, &array))
  {
    set_line_dash(a2, array, v81);
  }

  if (CGPDFDictionaryGetName(v5, "RI", &value))
  {
    set_rendering_intent(a2, value);
  }

  if (CGPDFDictionaryGetBoolean(v5, "OP", &v80))
  {
    v10 = a2[4];
    if (v10)
    {
      v11 = v80 != 0;
      *(v10 + 234) = v80 != 0;
      *(v10 + 233) = v11;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "op", &v80))
  {
    v12 = a2[4];
    if (v12)
    {
      *(v12 + 233) = v80 != 0;
    }
  }

  if (CGPDFDictionaryGetInteger(v5, "OPM", &v79))
  {
    v13 = a2[4];
    if (v13)
    {
      *(v13 + 236) = v79;
    }
  }

  if (CGPDFDictionaryGetArray(v5, "Font", &array))
  {
    v14 = array;
    v83 = 0;
    v84[0] = 0.0;
    if (CGPDFArrayGetDictionary(array, 0, &v83) && CGPDFArrayGetNumber(v14, 1uLL, v84))
    {
      v15 = CGPDFFontCreate(v83);
      CGPDFGStateSetFont(a2[4], v15);
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = a2[4];
      if (v16)
      {
        v17 = v84[0];
        *(v16 + 144) = v84[0];
        v18 = *(v16 + 288);
        if (v18)
        {
          *(v18 + 56) = v17;
        }
      }
    }
  }

  if (CGPDFDictionaryGetObject(v5, "BG2", &v76))
  {
    v19 = v76;
    v20 = a2;
    v21 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "BG", &v76))
    {
      goto LABEL_54;
    }

    v19 = v76;
    v20 = a2;
    v21 = 0;
  }

  set_black_generation(v20, v19, v21);
LABEL_54:
  if (CGPDFDictionaryGetObject(v5, "UCR2", &v76))
  {
    v22 = v76;
    v23 = a2;
    v24 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "UCR", &v76))
    {
      goto LABEL_59;
    }

    v22 = v76;
    v23 = a2;
    v24 = 0;
  }

  set_undercolor_removal(v23, v22, v24);
LABEL_59:
  if (CGPDFDictionaryGetObject(v5, "TR2", &v76))
  {
    v25 = v76;
    v26 = a2;
    v27 = 1;
  }

  else
  {
    if (!CGPDFDictionaryGetObject(v5, "TR", &v76))
    {
      goto LABEL_64;
    }

    v25 = v76;
    v26 = a2;
    v27 = 0;
  }

  set_transfer(v26, v25, v27);
LABEL_64:
  CGPDFDictionaryGetObject(v5, "HT", &v76);
  if (CGPDFDictionaryGetNumber(v5, "FL", &v81))
  {
    v28 = a2[4];
    if (v28)
    {
      *(v28 + 264) = v81;
    }
  }

  if (CGPDFDictionaryGetNumber(v5, "SM", &v81))
  {
    v29 = a2[4];
    if (v29)
    {
      *(v29 + 272) = v81;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "SA", &v80))
  {
    v30 = a2[4];
    if (v30)
    {
      *(v30 + 196) = v80 != 0;
    }
  }

  if (CGPDFDictionaryGetObject(v5, "BM", &v76))
  {
    v31 = a2[4];
    if (v31)
    {
      v32 = CGPDFBlendModeFromCGPDFObject(v76);
      if (v32 != -1)
      {
        *(v31 + 200) = v32;
      }
    }
  }

  if (!CGPDFDictionaryGetObject(v5, "SMask", &v76))
  {
    goto LABEL_91;
  }

  if (v76)
  {
    v33 = *(v76 + 2);
    if (v33 == 5)
    {
      if (!strcmp(*(v76 + 4), "None"))
      {
        v49 = a2[4];
        if (v49)
        {
          v50 = *(v49 + 208);
          if (v50)
          {
            CFRelease(v50);
            *(v49 + 208) = 0;
          }
        }
      }

      else
      {
      }

      goto LABEL_91;
    }

    if (v33 == 8)
    {
      v34 = *(v76 + 4);
      v35 = CGPDFDictionaryCopyAssociation(v34, "SoftMask");
      if (v35)
      {
        v36 = v35;
        goto LABEL_83;
      }

      if (CGPDFSoftMaskGetTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFSoftMaskGetTypeID_onceToken, &__block_literal_global_3846);
      }

      cftype = pdf_create_cftype(CGPDFSoftMaskGetTypeID_id, 56);
      if (!cftype)
      {
        goto LABEL_171;
      }

      v47 = cftype;
      v83 = 0;
      v84[0] = 0.0;
      v82 = 0;
      *(cftype + 16) = v34;
      if (!CGPDFDictionaryGetName(v34, "S", v84))
      {
        goto LABEL_170;
      }

      v48 = v84[0];
      if (!strcmp(*&v84[0], "Alpha"))
      {
        v51 = 0;
      }

      else
      {
        if (strcmp(*&v48, "Luminosity"))
        {
LABEL_170:
          CFRelease(v47);
LABEL_171:
          CGPDFGStateSetSoftMask(a2[4], 0);
          goto LABEL_91;
        }

        v51 = 1;
      }

      *(v47 + 24) = v51;
      if (!CGPDFDictionaryGetStream(v34, "G", &v82))
      {
        goto LABEL_170;
      }

      v65 = CGPDFGroupCreate(v82);
      *(v47 + 32) = v65;
      if (v65)
      {
        if (*(v47 + 24) != 1)
        {
          goto LABEL_160;
        }

        v66 = *(v65 + 12);
        if (v66)
        {
          v67 = *(*(v66 + 3) + 48);
          v68 = malloc_type_calloc(1uLL, 8 * v67 + 8, 0x100004000313F17uLL);
          if (!v68)
          {
            goto LABEL_170;
          }

          v69 = v68;
          if (CGPDFDictionaryGetNumbers(v34, "BC", v68, v67))
          {
            v69[v67] = 1.0;
            v70 = CGColorCreate(v66, v69);
          }

          else
          {
            v70 = CGColorSpaceCopyDefaultColor(v66);
          }

          *(v47 + 40) = v70;
          free(v69);
LABEL_160:
          if (CGPDFDictionaryGetName(v34, "TR", v84))
          {
            if (strcmp(*&v84[0], "Identity"))
            {
              goto LABEL_170;
            }
          }

          else if (CGPDFDictionaryGetObject(v34, "TR", &v83))
          {
            Function = CGPDFFunctionCreateFunction(v83);
            *(v47 + 48) = Function;
            if (!Function)
            {
              goto LABEL_170;
            }

            if (*(Function + 4) != 1 || *(Function + 6) != 1)
            {
              goto LABEL_170;
            }
          }

          v36 = CGPDFDictionarySetAssociation(v34, v47, "SoftMask");
          if (v36)
          {
LABEL_83:
            v37 = *(v36 + 32);
            if (v37)
            {
              v38 = 0;
              x = v37[1];
              if (x == INFINITY || (y = v37[2], y == INFINITY) || (v38 = 0, width = v37[3], width == 0.0) || (height = v37[4], height == 0.0))
              {
LABEL_146:
                CFRelease(v36);
                CGPDFGStateSetSoftMask(a2[4], v38);
                if (v38)
                {
                  CFRelease(v38);
                }

                goto LABEL_91;
              }

              if (a2)
              {
                v43 = *a2;
              }

              else
              {
                v43 = 0;
              }

              v38 = 0;
              v52 = *(v36 + 24);
              if (v52)
              {
                if (v52 != 1)
                {
                  goto LABEL_146;
                }

                ResolvedColor = CGPDFContentStreamCreateResolvedColor(v43, *(v36 + 40));
                if (!ResolvedColor)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                ResolvedColor = 0;
              }

              if (v43 && (v54 = *(v43 + 16)) != 0)
              {
                v87.origin.x = pdf_page_get_box_rect(*(v43 + 16), 0);
                v89.origin.x = x;
                v89.origin.y = y;
                v89.size.width = width;
                v89.size.height = height;
                v88 = CGRectIntersection(v87, v89);
                x = v88.origin.x;
                if (v88.origin.x != INFINITY)
                {
                  y = v88.origin.y;
                  if (v88.origin.y != INFINITY)
                  {
                    width = v88.size.width;
                    if (v88.size.width != 0.0)
                    {
                      height = v88.size.height;
                      if (v88.size.height != 0.0)
                      {
                        v55 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
                        if (v55)
                        {
                          v56 = v55;
                          v57 = *v54;
                          if (v57)
                          {
                            CFRetain(v57);
                          }

                          goto LABEL_135;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v58 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
                if (v58)
                {
                  v56 = v58;
                  v57 = 0;
LABEL_135:
                  *(v56 + 8) = v57;
                  CFRetain(v36);
                  *v56 = v36;
                  v59 = *a2;
                  if (*a2)
                  {
                    CFRetain(*a2);
                  }

                  *(v56 + 16) = v59;
                  v60 = a2[4];
                  if (!v60)
                  {
                    v60 = &CGAffineTransformIdentity;
                  }

                  v61 = *&v60->c;
                  v74 = vmlaq_n_f64(vmulq_n_f64(v61, v37[8]), *&v60->a, v37[7]);
                  v75 = vmlaq_n_f64(vmulq_n_f64(v61, v37[6]), *&v60->a, v37[5]);
                  v73 = vaddq_f64(*&v60->tx, vmlaq_n_f64(vmulq_n_f64(v61, v37[10]), *&v60->a, v37[9]));
                  CGContextGetBaseCTM(a2[11], v84);
                  v62 = vmlaq_n_f64(vmulq_laneq_f64(v85, v74, 1), *v84, v74.f64[0]);
                  v63 = *(v36 + 48);
                  v64 = vaddq_f64(v86, vmlaq_n_f64(vmulq_laneq_f64(v85, v73, 1), *v84, v73.f64[0]));
                  *v84 = vmlaq_n_f64(vmulq_laneq_f64(v85, v75, 1), *v84, v75.f64[0]);
                  v85 = v62;
                  v86 = v64;
                  v38 = CGSoftMaskCreate(v56, v84, ResolvedColor, v63, &pdf_softmask_callbacks, x, y, width, height);
                  if (ResolvedColor)
                  {
                    CFRelease(ResolvedColor);
                  }

                  if (!v38)
                  {
                    pdf_softmask_release_info(v56);
                  }

                  goto LABEL_146;
                }
              }

              if (ResolvedColor)
              {
                CFRelease(ResolvedColor);
              }
            }

LABEL_145:
            v38 = 0;
            goto LABEL_146;
          }

          goto LABEL_171;
        }
      }

      goto LABEL_170;
    }
  }

  pdf_error("invalid soft mask.");
LABEL_91:
  if (CGPDFDictionaryGetNumber(v5, "CA", &v81))
  {
    CGPDFGStateSetStrokeAlpha(a2[4], v81);
  }

  if (CGPDFDictionaryGetNumber(v5, "ca", &v81))
  {
    CGPDFGStateSetFillAlpha(a2[4], v81);
  }

  if (CGPDFDictionaryGetBoolean(v5, "AIS", &v80))
  {
    v44 = a2[4];
    if (v44)
    {
      *(v44 + 232) = v80 != 0;
    }
  }

  if (CGPDFDictionaryGetBoolean(v5, "TK", &v80))
  {
    v45 = a2[4];
    if (v45)
    {
      *(v45 + 152) = v80 != 0;
    }
  }

  if (CGPDFDictionaryGetObject(v5, "AAPL:ST", &v76))
  {
    set_style(a2, v76);
  }
}

void set_line_dash(uint64_t a1, uint64_t a2, double a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a2 || (v6 = *(a2 + 16), v5 = *(a2 + 24), v7 = v5 - v6, v5 == v6))
  {
    v17 = *(a1 + 32);

    CGPDFGStateSetDash(v17, 0);
  }

  else
  {
    v9 = v7 >> 3;
    MEMORY[0x1EEE9AC00](a1);
    v12 = v19 - v11;
    if (v10 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v13 = v19 - v11;
    }

    else
    {
      v13 = 0;
    }

    if (v10 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000016)
    {
      v13 = malloc_type_malloc(v7, 0x8AB0A669uLL);
    }

    if (v13)
    {
      if (CGPDFArrayGetNumbers(a2, v13, v7 >> 3))
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = *&v13[8 * v14];
          if (v16 < 0.0)
          {
            pdf_error("invalid dash array: lengths may not be negative.");
            goto LABEL_20;
          }

          v15 = v15 + v16;
          ++v14;
        }

        while (v9 != v14);
        if (v15 == 0.0)
        {
          pdf_error("invalid dash array: at least one length must be greater than zero.");
          goto LABEL_20;
        }

        v18 = malloc_type_calloc(1uLL, v7 + 24, 0x1000040D315E998uLL);
        *v18 = 1;
        v18[1] = a3;
        *(v18 + 2) = v9;
        memcpy(v18 + 3, v13, v7);
        if (v13 != v12)
        {
          free(v13);
        }

        CGPDFGStateSetDash(*(a1 + 32), v18);
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFF, memory_order_relaxed) == 1)
        {
          free(v18);
        }
      }

      else
      {
        pdf_error("invalid dash array.");
LABEL_20:
        if (v13 != v12)
        {
          free(v13);
        }
      }
    }
  }
}

void set_rendering_intent(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "AbsoluteColorimetric"))
  {
    v4 = 1;
  }

  else
  {
    if (!strcmp(__s1, "RelativeColorimetric"))
    {
LABEL_6:
      v4 = 2;
      goto LABEL_10;
    }

    if (!strcmp(__s1, "Saturation"))
    {
      v4 = 4;
    }

    else
    {
      if (strcmp(__s1, "Perceptual"))
      {
        goto LABEL_6;
      }

      v4 = 3;
    }
  }

LABEL_10:
  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 192) = v4;
  }
}

void set_black_generation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (build_function(a2, a3, &cf))
  {
    v4 = *(a1 + 32);
    v5 = cf;
    CGPDFGStateSetBlackGeneration(v4, cf);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void set_undercolor_removal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (build_function(a2, a3, &cf))
  {
    v4 = *(a1 + 32);
    v5 = cf;
    CGPDFGStateSetUndercolorRemoval(v4, cf);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void set_transfer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  value = a2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = Mutable;
    v13 = 0;
    if (a2 && *(a2 + 8) == 7)
    {
      v8 = *(a2 + 32);
      if (v8 && *(v8 + 3) - *(v8 + 2) == 32)
      {
        v9 = 0;
        while (1)
        {
          CGPDFArrayGetObject(v8, v9, &value);
          if (!build_transfer_function(value, v3, &v13))
          {
            break;
          }

          v10 = v13;
          CFArrayAppendValue(v7, v13);
          CFRelease(v10);
          if (++v9 == 4)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        pdf_error("invalid transfer array.", v13);
      }
    }

    else if (build_transfer_function(a2, v3, &v13))
    {
      v11 = v13;
      v12 = 4;
      do
      {
        CFArrayAppendValue(v7, v11);
        --v12;
      }

      while (v12);
      CFRelease(v11);
LABEL_14:
      CGPDFGStateSetTransferFunctions(*(a1 + 32), v7);
    }

    CFRelease(v7);
  }
}

uint64_t build_transfer_function(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1 && *(a1 + 8) == 5)
  {
    v4 = *(a1 + 32);
    if (a2 && !strcmp(*(a1 + 32), "Default"))
    {
      *a3 = *MEMORY[0x1E695E738];
      return 1;
    }

    if (strcmp(v4, "Identity"))
    {
      return 0;
    }

    result = CGFunctionCreateIdentity();
  }

  else
  {
    result = CGPDFFunctionCreateFunction(a1);
    if (!result)
    {
      return result;
    }
  }

  *a3 = result;
  return 1;
}

uint64_t build_function(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1 && *(a1 + 8) == 5)
  {
    v4 = *(a1 + 32);
    if (a2 && !strcmp(*(a1 + 32), "Default"))
    {
      result = 0;
    }

    else
    {
      if (strcmp(v4, "Identity"))
      {
        return 0;
      }

      result = CGFunctionCreateIdentity();
    }
  }

  else
  {
    result = CGPDFFunctionCreateFunction(a1);
    if (!result)
    {
      return result;
    }
  }

  *a3 = result;
  return 1;
}

void op_d1_8132(CGPDFScanner *a1, uint64_t a2)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  value = 0.0;
  v7 = 0.0;
  v5 = 0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &v10))
  {
    FillColorAsColor = CGContextGetFillColorAsColor(*(a2 + 88));
    CGContextSetStrokeColorWithColor(*(a2 + 88), FillColorAsColor);
  }
}

void op_EI_8133(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopStream(a1, &value))
  {
    Inline = CGPDFImageCreateInline(*(a1 + 7), value);
    if (Inline)
    {
      v5 = Inline;
      CGPDFDrawingContextDrawImage(a2, Inline);
      CFRelease(v5);
    }
  }
}

void op_sh_8134(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  v3 = CGPDFScannerPopName(a1, &value);
  if (a2)
  {
    if (v3)
    {
      v4 = *a2;
      if (*a2)
      {
        v5 = value;
        while (1)
        {
          Shading = CGPDFResourcesGetShading(*(v4 + 32), v5);
          if (Shading)
          {
            break;
          }

          v4 = *(v4 + 40);
          if (!v4)
          {
            return;
          }
        }

        v7 = CGPDFShadingGetShading(Shading);
        if (v7)
        {
          v8 = v7;
          CGPDFGStateSynchronizeForImages(a2[4], a2[11]);
          CGContextDrawShading(a2[11], v8);
        }
      }
    }
  }
}

void op_Do_8135(CGPDFScanner *a1, uint64_t a2)
{
  v49 = 0;
  v3 = CGPDFScannerPopName(a1, &v49);
  if (!a2)
  {
    return;
  }

  if (!v3)
  {
    return;
  }

  v4 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = v49;
  while (1)
  {
    v6 = CGPDFResourcesCopyXObject(*(v4 + 32), v5);
    if (v6)
    {
      break;
    }

    v4 = *(v4 + 40);
    if (!v4)
    {
      return;
    }
  }

  v7 = v6;
  v8 = v6[26];
  if (!v8)
  {
    value.a = 0.0;
    v9 = *(v6 + 3);
    if (v9)
    {
      v10 = *(v9 + 48);
    }

    else
    {
      v10 = 0;
    }

    if (!CGPDFDictionaryGetDictionary(v10, "OC", &value))
    {
      v8 = 1;
      v7[26] = 1;
      goto LABEL_38;
    }

    if (*(a2 + 112))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v7[26] = v11;
    __s1 = 0;
    if (!CGPDFDictionaryGetName(*&value.a, "Type", &__s1))
    {
      goto LABEL_37;
    }

    if (strcmp(__s1, "OCMD"))
    {
      goto LABEL_37;
    }

    v51 = 0;
    if (!CGPDFDictionaryGetObject(*&value.a, "OCGs", &v51) || !v51)
    {
      goto LABEL_37;
    }

    v12 = *(v51 + 2);
    if (v12 == 7)
    {
      v15 = *(v51 + 4);
      if (!v15 || (v16 = *(v15 + 3) - *(v15 + 2)) == 0)
      {
        v14 = 2;
LABEL_36:
        v7[26] = v14;
        goto LABEL_37;
      }

      v17 = v16 >> 3;
      v18 = 1;
      do
      {
        v50 = 0;
        Object = CGPDFArrayGetObject(v15, v18 - 1, &v50);
        if (Object)
        {
          Object = CGPDFDrawingContextShouldDrawOCG(a2, *(v50 + 2), *(v50 + 3));
        }

        if (v18 >= v17)
        {
          break;
        }

        ++v18;
      }

      while ((Object & 1) == 0);
    }

    else
    {
      if (v12 != 8)
      {
LABEL_37:
        v8 = v7[26];
        goto LABEL_38;
      }

      Object = CGPDFDrawingContextShouldDrawOCG(a2, *(v51 + 2), *(v51 + 3));
    }

    if (Object)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    goto LABEL_36;
  }

LABEL_38:
  if (v8 == 1)
  {
    v19 = v7[4];
    if (v19 == 2)
    {
      v28 = CGPDFXObjectGetValue(v7);
      if (v28)
      {
        v29 = v28;
        if (*(v28 + 105) == 1)
        {
          pdf_log("knockout groups aren't supported.");
        }

        if ((*(v29 + 104) & 1) == 0)
        {
          pdf_log("non-isolated groups aren't supported.");
        }

        v30 = *(a2 + 32);
        if (v30)
        {
          v31 = *(a2 + 88);
          if (v31)
          {
            CGContextSetAlpha(*(a2 + 88), *(v30 + 216));
            CGPDFGStateSynchronizeColorRendering(v30, v31);
            CGPDFGStateSynchronizeRendering(v30, v31);
          }
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v33 = *(v29 + 96);
        if (v33 || (v33 = *(a2 + 16)) != 0)
        {
          ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(*a2, v33);
          v35 = ResolvedColorSpace;
          if (Mutable && ResolvedColorSpace)
          {
            CFDictionarySetValue(Mutable, @"kCGContextColorSpace", ResolvedColorSpace);
          }

          CGColorSpaceRelease(v35);
        }

        CGCFDictionarySetRect(Mutable, @"kCGContextBoundingBox", *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32));
        v36 = *(a2 + 88);
        CGContextSaveGState(v36);
        v37 = *(v29 + 56);
        *&value.a = *(v29 + 40);
        *&value.c = v37;
        *&value.tx = *(v29 + 72);
        CGContextConcatCTM(v36, &value);
        v38 = *v29;
        v39 = *(v29 + 88);
        if (!CGContextIsEmptyClipBoundingBox(v36, v40))
        {
          v41 = CGPDFDrawingContextCreateWithStream(v38, v39, a2);
          if (v41)
          {
            v42 = v41;
            *&value.a = CGRectNull.origin;
            *&value.c = CGRectNull.size;
            if (Mutable)
            {
              if (kCGColorSpace_block_invoke_once != -1)
              {
                dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
              }

              CGCFDictionaryGetCFTypeRef(Mutable, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, v42 + 2);
              CGCFDictionaryGetRect(Mutable, @"kCGContextBoundingBox", &value);
            }

            set_initial_group_gstate(*(v42 + 4));
            set_initial_group_gstate(*(v42 + 3));
            CGContextBeginTransparencyLayer(v36, Mutable);
            a = value.a;
            if (value.a != INFINITY)
            {
              b = value.b;
              if (value.b != INFINITY)
              {
                v45 = *&value.c;
                CGContextClipToRect(v36, *&a);
              }
            }

            *(v42 + 11) = v36;
            if (CGPDFDrawingContextGetOperatorTable_predicate != -1)
            {
              dispatch_once(&CGPDFDrawingContextGetOperatorTable_predicate, &__block_literal_global_7936);
            }

            v46 = CGPDFScannerCreate(*v42, CGPDFDrawingContextGetOperatorTable_operator_table, v42);
            CGPDFScannerScan(v46);
            if (v46)
            {
              CFRelease(v46);
            }

            CGContextEndTransparencyLayer(v36);
            CGPDFDrawingContextRelease(v42);
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        CGContextRestoreGState(v36);
      }
    }

    else if (v19 == 1)
    {
      v21 = CGPDFXObjectGetValue(v7);
      v22 = *(a2 + 88);
      CGContextGetBaseCTM(v22, v53);
      GStateMark = CGContextGetGStateMark(v22);
      v24 = (v21 + 56);
      if (!v21)
      {
        v24 = &CGAffineTransformIdentity;
      }

      v25 = *&v24->c;
      *&value.a = *&v24->a;
      *&value.c = v25;
      *&value.tx = *&v24->tx;
      CGContextConcatCTM(v22, &value);
      CGContextGetCTM(&value, v22);
      CGContextSetBaseCTM(v22, &value);
      if (v21)
      {
        CGContextClipToRect(v22, *(v21 + 24));
        v26 = *(v21 + 16);
        v27 = *(v21 + 104);
      }

      else
      {
        v55.origin.x = INFINITY;
        v55.size.width = 0.0;
        v55.size.height = 0.0;
        v55.origin.y = INFINITY;
        CGContextClipToRect(v22, v55);
        v26 = 0;
        v27 = 0;
      }

      v47 = CGPDFDrawingContextCreateWithStream(v26, v27, a2);
      CGPDFDrawingContextDraw(v47, v22, v48);
      CGPDFDrawingContextRelease(v47);
      CGContextRestoreToGStateMark(v22, GStateMark);
      CGContextSetBaseCTM(v22, v53);
    }

    else if (v19)
    {
      pdf_error("unrecognized or unsupported XObject subtype.");
    }

    else
    {
      v20 = CGPDFXObjectGetValue(v7);
      CGPDFDrawingContextDrawImage(a2, v20);
    }

    CFRelease(v7);
  }
}

void op_TJ_8137(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopArray(a1, &value))
  {
    if (*(a2 + 80))
    {
      if (value)
      {
        TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
        if (TextObject)
        {
          v4 = TextObject;
          CGPDFTextObjectAppendStrings(TextObject, value);
          CGPDFDrawingContextDrawText(a2, v4);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void op_doublequote(CGPDFScanner *a1, uint64_t a2)
{
  v13 = 0.0;
  value = 0;
  v12 = 0.0;
  if (CGPDFScannerPopString(a1, &value) && CGPDFScannerPopNumber(a1, &v13) && CGPDFScannerPopNumber(a1, &v12))
  {
    if (*(a2 + 80))
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v5 = v13;
        *(v4 + 88) = v13;
        v6 = *(v4 + 288);
        if (v6)
        {
          *v6 = v5;
          v7 = v12;
          *(v4 + 96) = v12;
          v6[1] = v7;
        }

        else
        {
          *(v4 + 96) = v12;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      v9 = TextObject;
      v10 = *(a2 + 32);
      if (v10)
      {
        v11 = *(v10 + 112);
      }

      else
      {
        v11 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v11);
      CGPDFTextObjectAppendString(v9, value);
      CGPDFDrawingContextDrawText(a2, v9);
    }

    else
    {
    }
  }
}

void op_singlequote(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      v4 = TextObject;
      v5 = *(a2 + 32);
      if (v5)
      {
        v6 = *(v5 + 112);
      }

      else
      {
        v6 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6);
      CGPDFTextObjectAppendString(v4, value);
      CGPDFDrawingContextDrawText(a2, v4);
    }

    else
    {
    }
  }
}

void op_Tj_8142(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopString(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      CGPDFTextObjectAppendString(TextObject, value);
      CGPDFDrawingContextDrawText(a2, TextObject);
    }

    else
    {
    }
  }
}

double op_Tstar_8144(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = *(v5 + 112);
    }

    else
    {
      v6 = 0.0;
    }

    *&result = CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v6).n128_u64[0];
  }

  else
  {
  }

  return result;
}

void op_Tm_8146(CGPDFScanner *a1, uint64_t a2)
{
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v13) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16))
  {
    if (*(a2 + 80))
    {
      v4 = v11;
      v5 = value;
      v6 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      *(TextObject + 9) = v9;
      *(TextObject + 10) = v8;
      *(TextObject + 11) = v7;
      *(TextObject + 12) = v6;
      *(TextObject + 13) = v5;
      *(TextObject + 14) = v4;
      *(TextObject + 15) = v9;
      *(TextObject + 16) = v8;
      *(TextObject + 17) = v7;
      *(TextObject + 18) = v6;
      *(TextObject + 19) = v5;
      *(TextObject + 20) = v4;
    }

    else
    {
    }
  }
}

void op_TD_8148(CGPDFScanner *a1, uint64_t a2)
{
  v8 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 80))
    {
      v4 = *(a2 + 32);
      if (v4)
      {
        v5 = -v8;
        *(v4 + 112) = -v8;
        v6 = *(v4 + 288);
        if (v6)
        {
          *(v6 + 24) = v5;
        }
      }

      TextObject = CGPDFGStateGetTextObject(v4);
      CGPDFTextObjectMoveToNextLine(TextObject, value, v8);
    }

    else
    {
    }
  }
}

void op_Td_8150(CGPDFScanner *a1, uint64_t a2)
{
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value))
  {
    if (*(a2 + 80))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
      CGPDFTextObjectMoveToNextLine(TextObject, value, v5);
    }

    else
    {
    }
  }
}

void op_ET_8152(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80))
  {
    v4 = *(CGPDFGStateGetTextObject(*(a2 + 32)) + 22);
    if (v4)
    {
      v5 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
      *v5 = 1;
      v5[1] = 0;
      v5[2] = 0;
      CGPDFTextLayoutDrawGlyphs(v4, clip_to_glyphs_22614, v5);
      CGPDFGStateSynchronizeContextForText(*(a2 + 32), *(a2 + 88));
      CGContextClipToTextClipping(*(a2 + 88), v5);
      CGTextClippingRelease(v5);
    }

    *(a2 + 80) = 0;
  }

  else
  {
  }
}

CGFloat op_BT_8154(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1)
  {

    pdf_error("warning: already in a text object.");
  }

  else
  {
    *(a2 + 80) = 1;
    TextObject = CGPDFGStateGetTextObject(*(a2 + 32));
    result = CGAffineTransformIdentity.a;
    *(TextObject + 72) = CGAffineTransformIdentity;
    *(TextObject + 120) = CGAffineTransformIdentity;
  }

  return result;
}

BOOL op_Ts_8156(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 120) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 32) = v5;
      }
    }
  }

  return result;
}

void op_Tr_8157(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (!CGPDFScannerPopInteger(a1, &value))
  {
    return;
  }

  if (value > 3)
  {
    if (value > 5)
    {
      if (value == 6)
      {
        v3 = 6;
      }

      else
      {
        if (value != 7)
        {
          goto LABEL_24;
        }

        v3 = 7;
      }
    }

    else if (value == 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }
  }

  else if (value > 1)
  {
    if (value == 2)
    {
      v3 = 2;
    }

    else if (*(a2 + 176))
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    if (value)
    {
      if (value == 1)
      {
        v3 = 1;
        goto LABEL_21;
      }

LABEL_24:
      pdf_error("invalid text drawing mode: %ld.", value);
      return;
    }

    v3 = 0;
  }

LABEL_21:
  v4 = *(a2 + 32);
  if (v4)
  {
    *(v4 + 128) = v3;
    v5 = *(v4 + 288);
    if (v5)
    {
      CGPDFTextObjectSetTextDrawingMode(v5, v3);
    }
  }
}

void op_Tf_8159(CGPDFScanner *a1, uint64_t *a2)
{
  v9 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopName(a1, &v9))
  {
    if (a2)
    {
      v4 = *a2;
    }

    else
    {
      v4 = 0;
    }

    Font = CGPDFContentStreamGetFont(v4, v9);
    if (Font)
    {
      CGPDFGStateSetFont(a2[4], Font);
      v6 = a2[4];
      if (v6)
      {
        v7 = value;
        *(v6 + 144) = value;
        v8 = *(v6 + 288);
        if (v8)
        {
          *(v8 + 56) = v7;
        }
      }
    }

    else
    {
    }
  }
}

BOOL op_TL_8161(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 112) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 24) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tz_8162(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 104) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 16) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tw_8163(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 96) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *(v6 + 8) = v5;
      }
    }
  }

  return result;
}

BOOL op_Tc_8164(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(a1, &value);
  if (result)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = value;
      *(v4 + 88) = value;
      v6 = *(v4 + 288);
      if (v6)
      {
        *v6 = v5;
      }
    }
  }

  return result;
}

void op_Wstar_8165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(v2 + 48) = 256;
  }
}

void op_W_8166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(v2 + 48) = 1;
  }
}

void op_n_8175(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = copy_clip_path(a2, &v4);
  CGContextBeginPath(*(a2 + 88));
  if (v3)
  {
    CGContextAddPath(*(a2 + 88), v3);
    clip(*(a2 + 88), v4);

    CFRelease(v3);
  }
}

void op_re_8176(CGPDFScanner *a1, uint64_t a2)
{
  v11 = 0.0;
  x = 0.0;
  v9 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v9) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v11) && CGPDFScannerPopNumber(a1, &x))
  {
    v5 = value;
    v4 = v11;
    v6 = *(a2 + 88);
    v7 = x;
    if (value < 0.0 || (v8 = v9, v9 < 0.0))
    {
      CGContextMoveToPoint(v6, x, v11);
      CGContextAddLineToPoint(*(a2 + 88), x + value, v11);
      CGContextAddLineToPoint(*(a2 + 88), x + value, v11 + v9);
      CGContextAddLineToPoint(*(a2 + 88), x, v11 + v9);
      CGContextClosePath(*(a2 + 88));
    }

    else
    {
      CGContextAddRect(v6, *&v7);
    }

    *(a2 + 168) += 4;
  }
}

void op_y_8178(CGPDFScanner *a1, uint64_t a2)
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v6) && CGPDFScannerPopNumber(a1, &v7))
  {
    CGContextAddCurveToPoint(*(a2 + 88), v7, v6, value, v4, value, v4);
    *(a2 + 168) += 6;
  }
}

void op_v_8179(CGPDFScanner *a1, uint64_t a2)
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v5) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v8))
  {
    PathCurrentPoint = CGContextGetPathCurrentPoint(*(a2 + 88));
    CGContextAddCurveToPoint(*(a2 + 88), PathCurrentPoint.x, PathCurrentPoint.y, v8, v7, value, v5);
    *(a2 + 168) += 6;
  }
}

void op_c_8180(CGPDFScanner *a1, uint64_t a2)
{
  v9 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  value = 0.0;
  v6 = 0.0;
  y = 0.0;
  if (CGPDFScannerPopNumber(a1, &y) && CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v6) && CGPDFScannerPopNumber(a1, &v7) && CGPDFScannerPopNumber(a1, &v8) && CGPDFScannerPopNumber(a1, &v9))
  {
    CGContextAddCurveToPoint(*(a2 + 88), v9, v8, v7, v6, value, y);
    *(a2 + 168) += 6;
  }
}

void op_l_8181(CGPDFScanner *a1, uint64_t a2)
{
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value))
  {
    CGContextAddLineToPoint(*(a2 + 88), value, v4);
    ++*(a2 + 168);
  }
}

void op_m_8182(CGPDFScanner *a1, uint64_t a2)
{
  v4 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &v4) && CGPDFScannerPopNumber(a1, &value))
  {
    CGContextMoveToPoint(*(a2 + 88), value, v4);
    ++*(a2 + 168);
  }
}

void op_ri_8183(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopName(a1, &value))
  {
    set_rendering_intent(a2, value);
  }
}

void op_SCN_8184(CGPDFScanner *a1, uint64_t *a2)
{
  StrokeColor = CGPDFGStateGetStrokeColor(a2[4]);
  if (StrokeColor)
  {
    if ((StrokeColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(StrokeColor);
    }

    else
    {
      ColorSpace = *(StrokeColor + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelPattern)
  {

    set_pattern(a1, a2, ColorSpace, 0);
  }

  else
  {

    set_color(a1, a2, ColorSpace, 0);
  }
}

void set_pattern(CGPDFScanner *a1, uint64_t *a2, CGColorSpace *a3, int a4)
{
  v70 = *MEMORY[0x1E69E9840];
  value = 0;
  v67 = 0.0;
  v8 = CGPDFScannerPopName(a1, &value);
  if (!a2)
  {
    return;
  }

  if (!v8)
  {
    return;
  }

  v9 = *a2;
  if (!*a2)
  {
    return;
  }

  v10 = value;
  while (1)
  {
    Pattern = CGPDFResourcesGetPattern(*(v9 + 32), v10);
    if (Pattern)
    {
      break;
    }

    v9 = *(v9 + 40);
    if (!v9)
    {
      return;
    }
  }

  v12 = Pattern;
  if (a3)
  {
    v13 = *(*(a3 + 3) + 48);
  }

  else
  {
    v13 = 0;
  }

  if (Pattern[4] != 1 || (*(Pattern + 32) == 1 ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = CGColorSpaceCreatePattern(0);
    v13 = 0;
    a3 = v15;
  }

  v16 = MEMORY[0x1EEE9AC00](8 * (v13 + 1));
  v19 = &v62 - v18;
  if (v17 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v20 = &v62 - v18;
  }

  else
  {
    v20 = 0;
  }

  if (v17 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
  {
    v20 = malloc_type_malloc(v16, 0x422C9E0CuLL);
  }

  if (!v20)
  {
    goto LABEL_35;
  }

  v65 = &v62;
  if (v13)
  {
    v21 = v13 - 1;
    while (CGPDFScannerPopNumber(a1, &v67))
    {
      *&v20[8 * v21--] = v67;
      if (v21 == -1)
      {
        goto LABEL_28;
      }
    }

    if (v20 != v19)
    {
      free(v20);
    }

LABEL_35:
    CGColorSpaceRelease(v15);
    return;
  }

LABEL_28:
  v22 = a2[4];
  if (v22)
  {
    v23 = 224;
    if (a4)
    {
      v23 = 216;
    }

    v24 = *(v22 + v23);
  }

  else
  {
    v24 = 1.0;
  }

  *&v20[8 * v13] = v24;
  Mutable = a2[8];
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (a2[8] = Mutable) != 0))
  {
    v26 = CFDictionaryGetValue(Mutable, v12);
    if (!v26)
    {
      v27 = *a2;
      v64 = v15;
      if (v27 && (v28 = *(v27 + 16)) != 0)
      {
        v29 = *v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = a2[3];
      if (v30)
      {
        *&callbacks.version = 0;
        v31 = v12[4];
        if (v31 == 2)
        {
          Shading = CGPDFShadingGetShading(*(v12 + 18));
          v46 = *(v12 + 7);
          *&matrix.a = *(v12 + 6);
          *&matrix.c = v46;
          *&matrix.tx = *(v12 + 8);
          if (Shading)
          {
            v47 = Shading;
            if (kCGPatternWillDeallocate_block_invoke_once != -1)
            {
              dispatch_once(&kCGPatternWillDeallocate_block_invoke_once, &__block_literal_global_6_18603);
            }

            Instance = CGTypeCreateInstance(CGPatternGetTypeID_pattern_type_id, 176);
            if (Instance)
            {
              v26 = Instance;
              *(Instance + 16) = atomic_fetch_add_explicit(identifier_18604, 1u, memory_order_relaxed) + 1;
              *(Instance + 20) = 1;
              v49 = *&matrix.c;
              *(Instance + 24) = *&matrix.a;
              *(Instance + 40) = v49;
              *(Instance + 56) = *&matrix.tx;
              *(Instance + 72) = 1;
              *(Instance + 184) = 0;
              CFRetain(v47);
              *(v26 + 10) = v47;
              if (v47[40] == 1)
              {
                v50 = (v47 + 48);
                p_y = (v47 + 56);
                p_size = (v47 + 64);
                p_height = (v47 + 72);
              }

              else
              {
                v50 = &CGRectInfinite;
                p_height = &CGRectInfinite.size.height;
                p_y = &CGRectInfinite.origin.y;
                p_size = &CGRectInfinite.size;
              }

              v59 = *p_height;
              v60 = *p_y;
              width = p_size->width;
              *(v26 + 13) = *&v50->origin.x;
              *(v26 + 14) = v60;
              *(v26 + 15) = width;
              *(v26 + 16) = v59;
              *(v26 + 17) = 0;
              *(v26 + 18) = 0;
              *(v26 + 185) = 1;
              *(v26 + 10) = shading_callbacks;
              *(v26 + 22) = off_1EF2410D8;
              *(v26 + 11) = 0;
LABEL_78:
              v15 = v64;
              CFDictionarySetValue(a2[8], v12, v26);
              CFRelease(v26);
              goto LABEL_68;
            }
          }
        }

        else if (v31 == 1)
        {
          v32 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
          __CFSetLastAllocationEventName();
          if (v32)
          {
            v63 = v32;
            *v32 = v12;
            if (v29)
            {
              CFRetain(v29);
            }

            v33 = v63;
            v63[1] = v29;
            v34 = v33;
            v33[2] = CGPDFGStateCreateCopy(v30);
            if (v12[4] == 1)
            {
              v35 = type1_draw_uncolored_pattern;
              if (*(v12 + 32))
              {
                v35 = type1_draw_colored_pattern;
              }

              callbacks.drawPattern = v35;
              callbacks.releaseInfo = type1_release_info;
              v36 = *(v12 + 5);
              v37 = *(v12 + 6);
              v38 = *(v12 + 7);
              v39 = *(v12 + 8);
              v40 = *(v12 + 7);
              *&matrix.a = *(v12 + 6);
              *&matrix.c = v40;
              *&matrix.tx = *(v12 + 8);
              v41 = *(v12 + 9);
              v42 = *(v12 + 10);
              v43 = v12[9];
              v44 = *(v12 + 32);
            }

            else
            {
              v44 = 0;
              callbacks.drawPattern = type1_draw_uncolored_pattern;
              callbacks.releaseInfo = type1_release_info;
              v36 = 0x7FF0000000000000;
              v37 = 0x7FF0000000000000;
              v38 = 0;
              v39 = 0;
              v54 = *(v12 + 7);
              *&matrix.a = *(v12 + 6);
              *&matrix.c = v54;
              *&matrix.tx = *(v12 + 8);
              v41 = 0.0;
              v43 = kCGPatternTilingConstantSpacingMinimalDistortion;
              v42 = 0.0;
            }

            v55 = CGPatternCreate(v34, *&v36, &matrix, v41, v42, v43, v44 & 1, &callbacks);
            if (v55)
            {
              v26 = v55;
              v56 = *(v55 + 12);
              if (v56 != v12)
              {
                if (v56)
                {
                  CFRelease(v56);
                }

                CFRetain(v12);
                *(v26 + 12) = v12;
              }

              goto LABEL_78;
            }
          }
        }
      }

      v26 = 0;
      v15 = v64;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_68:
  v57 = CGColorCreateWithPattern(a3, v26, v20);
  v58 = a2[4];
  if (a4)
  {
    CGPDFGStateSetFillColor(v58, v57);
  }

  else
  {
    CGPDFGStateSetStrokeColor(v58, v57);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  CGColorSpaceRelease(v15);
  if (v20 != v19)
  {
    free(v20);
  }
}

void op_scn_8186(CGPDFScanner *a1, uint64_t *a2)
{
  FillColor = CGPDFGStateGetFillColor(a2[4]);
  if (FillColor)
  {
    if ((FillColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(FillColor);
    }

    else
    {
      ColorSpace = *(FillColor + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelPattern)
  {

    set_pattern(a1, a2, ColorSpace, 1);
  }

  else
  {

    set_color(a1, a2, ColorSpace, 1);
  }
}

void op_CS_8189(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = value;
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), v4);
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = ColorSpace;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v3, v7);
  if (ResolvedColorSpace)
  {
    v9 = ResolvedColorSpace;
    v10 = CGColorSpaceCopyDefaultColor(ResolvedColorSpace);
    CGPDFGStateSetStrokeColor(a2[4], v10);
    CGColorSpaceRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void op_cs_8190(CGPDFScanner *a1, uint64_t *a2)
{
  value = 0;
  if (!CGPDFScannerPopName(a1, &value))
  {
    return;
  }

  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = value;
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), v4);
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_9;
        }
      }

      v7 = ColorSpace;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v3, v7);
  if (ResolvedColorSpace)
  {
    v9 = ResolvedColorSpace;
    v10 = CGColorSpaceCopyDefaultColor(ResolvedColorSpace);
    CGPDFGStateSetFillColor(a2[4], v10);
    CGColorSpaceRelease(v9);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void op_RG_8191(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceRGB");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_rg_8193(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceRGB");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_K_8194(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceCMYK");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_k_8196(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceCMYK");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_G_8197(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceGray");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 0);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void op_g_8199(CGPDFScanner *a1, uint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = *a2;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), "DeviceGray");
        if (ColorSpace)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      a2 = ColorSpace;
    }

    else
    {
LABEL_6:
      a2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v4, a2);
  set_color(a1, v2, ResolvedColorSpace, 1);

  CGColorSpaceRelease(ResolvedColorSpace);
}

CGPDFReal op_i_8200(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      result = value;
      *(v4 + 264) = value;
    }
  }

  return result;
}

void op_M_8201(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    if (value >= 1.0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 176) = value;
      }
    }

    else
    {
      pdf_error("invalid miter limit: %g.", value);
    }
  }
}

void op_d_8202(CGPDFScanner *a1, uint64_t a2)
{
  v4 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopArray(a1, &v4))
  {
    set_line_dash(a2, v4, value);
  }
}

void op_w_8203(CGPDFScanner *a1, uint64_t a2)
{
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value))
  {
    if (value >= 0.0)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 160) = value;
      }
    }

    else
    {
      pdf_error("invalid line width: %g.", value);
    }
  }
}

void op_J_8204(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopInteger(a1, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line cap: %ld.", value);
    }

    else
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 168) = value;
      }
    }
  }
}

void op_j_8205(CGPDFScanner *a1, uint64_t a2)
{
  value = 0;
  if (CGPDFScannerPopInteger(a1, &value))
  {
    if (value >= 3)
    {
      pdf_error("invalid line join: %ld.", value);
    }

    else
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(v3 + 172) = value;
      }
    }
  }
}

void op_cm_8206(CGPDFScanner *a1, uint64_t a2)
{
  v18 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(a1, &value) && CGPDFScannerPopNumber(a1, &v14) && CGPDFScannerPopNumber(a1, &v15) && CGPDFScannerPopNumber(a1, &v16) && CGPDFScannerPopNumber(a1, &v17) && CGPDFScannerPopNumber(a1, &v18))
  {
    v4 = v18;
    v6 = v16;
    v5 = v17;
    v8 = v14;
    v7 = v15;
    v9 = value;
    v10 = *(a2 + 32);
    v12.a = v18;
    v12.b = v17;
    v12.c = v16;
    v12.d = v15;
    v12.tx = v14;
    v12.ty = value;
    CGPDFGStateConcatCTM(v10, &v12.a);
    v11 = *(a2 + 88);
    if (v11)
    {
      v12.a = v4;
      v12.b = v5;
      v12.c = v6;
      v12.d = v7;
      v12.tx = v8;
      v12.ty = v9;
      CGContextConcatCTM(v11, &v12);
    }
  }
}

void op_Q_8207(uint64_t a1, uint64_t *a2)
{
  if ((CGPDFDrawingContextRestoreGState(a2) & 1) == 0)
  {

    pdf_error("gstate stack underflow.");
  }
}

CGPDFOperatorTable *CGPDFDrawingContextCreateContentTypesTable(char a1)
{
  v2 = CGPDFOperatorTableCreate();
  if ((a1 & 2) != 0)
  {
    v3 = &off_1EF23CBF8;
    v4 = 9;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v3 - 1), *v3);
      v3 += 2;
      --v4;
    }

    while (v4);
    CGPDFOperatorTableSetCallback(v2, "gs", op_gs_8087);
  }

  if ((a1 & 4) != 0)
  {
    v5 = &off_1EF23CC88;
    v6 = 13;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v5 - 1), *v5);
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  if ((a1 & 8) != 0)
  {
    v7 = &off_1EF23CD58;
    v8 = 19;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v7 - 1), *v7);
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  if ((a1 & 0x10) != 0)
  {
    v9 = &off_1EF23CE88;
    v10 = 17;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v9 - 1), *v9);
      v9 += 2;
      --v10;
    }

    while (v10);
  }

  if ((a1 & 0x20) != 0)
  {
    v11 = &off_1EF23CF98;
    v12 = 3;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v11 - 1), *v11);
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  if ((a1 & 0x40) != 0)
  {
    CGPDFOperatorTableSetCallback(v2, "d1", op_d1_8132);
    v13 = &off_1EF23CFE8;
    v14 = 3;
    do
    {
      CGPDFOperatorTableSetCallback(v2, *(v13 - 1), *v13);
      v13 += 2;
      --v14;
    }

    while (v14);
  }

  return v2;
}

const void *CGPDFResourcesGetPattern(uint64_t a1, const char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v2 = CFDictionaryGetValue(v6, v5);
      if (v2)
      {
        goto LABEL_43;
      }
    }

    resource = get_resource(a1, "Pattern", a2);
    if (!resource)
    {
      goto LABEL_42;
    }

    v9 = resource;
    v10 = CGPDFObjectCopyAssociation(resource, "Pattern");
    if (v10)
    {
      v11 = v10;
      goto LABEL_11;
    }

    value = 0;
    v13 = *(v9 + 8);
    if (v13 == 9)
    {
      v15 = *(v9 + 32);
      if (!v15)
      {
        v16 = 0;
LABEL_19:
        if (!CGPDFDictionaryGetInteger(v16, "PatternType", &value))
        {
          goto LABEL_42;
        }

        if (value != 2)
        {
          if (value != 1)
          {
            goto LABEL_42;
          }

          if (CGPDFPatternGetTypeID_onceToken != -1)
          {
            dispatch_once(&CGPDFPatternGetTypeID_onceToken, &__block_literal_global_8375);
          }

          cftype = pdf_create_cftype(CGPDFPatternGetTypeID_id, 160);
          v18 = cftype;
          if (!cftype)
          {
            goto LABEL_70;
          }

          v29 = 0;
          v30 = 0;
          *(cftype + 16) = 1;
          if (*(v9 + 8) == 9)
          {
            v19 = *(v9 + 32);
            *(cftype + 24) = v19;
            if (v19)
            {
              v20 = *(v19 + 48);
            }

            else
            {
              v20 = 0;
            }

            if (CGPDFDictionaryGetInteger(v20, "PaintType", &v30))
            {
              v26 = v30;
              if (v30 != 1)
              {
                if (v30 != 2)
                {
                  goto LABEL_69;
                }

                v26 = 0;
              }

              *(v18 + 32) = v26;
              if (CGPDFDictionaryGetInteger(v20, "TilingType", &v29))
              {
                if ((v29 - 1) >= 3)
                {
                }

                else
                {
                  *(v18 + 36) = dword_1844DF808[v29 - 1];
                  if (CGPDFDictionaryGetRect(v20, "BBox", (v18 + 40)))
                  {
                    if (CGPDFDictionaryGetNumber(v20, "XStep", (v18 + 72)))
                    {
                      if (CGPDFDictionaryGetNumber(v20, "YStep", (v18 + 80)))
                      {
                        CGPDFDictionaryGetMatrix(v20, "Matrix", (v18 + 96));
                        if ((v27 & 1) == 0)
                        {
                          *(v18 + 96) = CGAffineTransformIdentity;
                        }

                        if (!CGPDFDictionaryGetDictionary(v20, "Resources", (v18 + 88)))
                        {
                          *(v18 + 88) = 0;
                        }

                        goto LABEL_70;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
            pdf_error("invalid Type 1 pattern: not a stream.");
          }

          goto LABEL_69;
        }

        v30 = v9;
        if (CGPDFPatternGetTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFPatternGetTypeID_onceToken, &__block_literal_global_8375);
        }

        v21 = pdf_create_cftype(CGPDFPatternGetTypeID_id, 160);
        v18 = v21;
        if (v21)
        {
          *(v21 + 16) = 2;
          if (*(v9 + 8) != 8)
          {
            pdf_error("invalid Type 2 pattern: not a dictionary.");
            goto LABEL_69;
          }

          v22 = *(v9 + 32);
          if (!CGPDFDictionaryGetObject(v22, "Shading", &v30))
          {
            goto LABEL_69;
          }

          v23 = CGPDFShadingCreateWithObject(v30);
          *(v18 + 144) = v23;
          if (!v23)
          {
LABEL_69:
            CFRelease(v18);
            v18 = 0;
            goto LABEL_70;
          }

          CGPDFDictionaryGetMatrix(v22, "Matrix", (v18 + 96));
          if ((v24 & 1) == 0)
          {
            *(v18 + 96) = CGAffineTransformIdentity;
          }

          if (!CGPDFDictionaryGetDictionary(v22, "ExtGState", (v18 + 152)))
          {
            *(v18 + 152) = 0;
          }
        }

LABEL_70:
        v11 = CGPDFObjectSetAssociation(v9, v18, "Pattern");
        if (v11)
        {
LABEL_11:
          v12 = table_set_value((a1 + 48), v5, v11);
          v2 = v12;
          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_43;
        }

LABEL_42:
        v2 = 0;
LABEL_43:
        CFRelease(v5);
        os_unfair_lock_unlock((a1 + 80));
        return v2;
      }

      v14 = (v15 + 48);
    }

    else
    {
      if (v13 != 8)
      {
        pdf_error("invalid pattern: not a dictionary or stream.");
        goto LABEL_42;
      }

      v14 = (v9 + 32);
    }

    v16 = *v14;
    goto LABEL_19;
  }

  return v2;
}

const void *CGPDFResourcesGetShading(uint64_t a1, const char *a2)
{
  Value = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 56);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (Value = CFDictionaryGetValue(v6, v5)) == 0)
    {
      resource = get_resource(a1, "Shading", a2);
      v9 = CGPDFShadingCreateWithObject(resource);
      if (v9)
      {
        v10 = table_set_value((a1 + 56), v5, v9);
        Value = v10;
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(v5);
    os_unfair_lock_unlock((a1 + 80));
  }

  return Value;
}

void __CGPDFResourcesPurgeXObjects_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    Value = CGPDFXObjectGetValue(a3);
    if (Value)
    {
      v4 = Value;
      v5 = *(Value + 24);
      if (v5)
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          pthread_mutex_lock((v6 + 88));
          v7 = *(v6 + 40);
          if (v7 && *v7 == v4)
          {
            *(v6 + 40) = 0;
            CGPDFAssociationRelease(v7);
          }

          pthread_mutex_unlock((v6 + 88));
        }
      }
    }
  }
}

void traverseBoundary(uint64_t a1, int *a2)
{
  if (*(a1 + 31) != 1)
  {
    return;
  }

  v3 = *a2;
  v4 = (*a2 - 1);
  if (v4 < 3)
  {
    if (*(a1 + 29) != 1)
    {
      *(a1 + 28) = 1;
      v5 = v4 + 1;
LABEL_5:
      v53 = v5;
      v6 = *(a1 + 20);
      v7 = *(a1 + 22);
      v8 = *a1;
      v9 = *(a1 + 21);
      v10 = *(a1 + 23);
      v11 = (*(a2 + 1) + 8);
      v12 = 1;
      while (1)
      {
        v55 = v5;
        *(a1 + 24) = v6;
        *(a1 + 25) = v9;
        *(a1 + 26) = v7;
        *(a1 + 27) = v10;
        *(a1 + 20) = 0;
        v13 = *(v11 - 1);
        v14 = *v8;
        v15 = v8[2];
        v16 = v8[3];
        if (v15 < 0.0 || v16 < 0.0)
        {
          v17 = *(v8 + 1);
          *&v14 = CGRectStandardize(*&v14);
        }

        v18 = vabdd_f64(v13, v14);
        v19 = v18 < 0.015;
        *(a1 + 21) = v19;
        v20 = *v8;
        v21 = v8[2];
        v22 = v8[3];
        if (v21 < 0.0 || v22 < 0.0)
        {
          v23 = *(v8 + 1);
          *&v20 = CGRectStandardize(*&v20);
        }

        v24 = vabdd_f64(v13, v20 + v21);
        v25 = v24 < 0.015;
        *(a1 + 23) = v25;
        v26 = *v11;
        v27 = v8[1];
        v28 = v8[2];
        v29 = v8[3];
        v54 = v11;
        if (v28 < 0.0 || v29 < 0.0)
        {
          v30 = *v8;
          *(&v27 - 1) = CGRectStandardize(*(&v27 - 1));
        }

        v31 = vabdd_f64(v26, v27);
        v32 = v31 < 0.015;
        *(a1 + 20) = v32;
        v33 = v8[1];
        v34 = v8[2];
        v35 = v8[3];
        if (v34 < 0.0 || v35 < 0.0)
        {
          v36 = *v8;
          *(&v33 - 1) = CGRectStandardize(*(&v33 - 1));
        }

        v37 = vabdd_f64(v26, v33 + v35);
        v38 = v37 < 0.015;
        *(a1 + 22) = v38;
        if (v12 >= v53)
        {
          break;
        }

        v39 = v31 < 0.015;
        v40 = v24 < 0.015;
        v41 = v18 < 0.015;
        v19 = v41 & v9;
        *(a1 + 21) = v41 & v9;
        v25 = v40 & v10;
        *(a1 + 23) = v40 & v10;
        v32 = v39 & v6;
        *(a1 + 20) = v39 & v6;
        v38 = (v37 < 0.015) & v7;
        *(a1 + 22) = (v37 < 0.015) & v7;
        if ((v39 & v6) != 0 || (v19 & 1) != 0 || ((v37 < 0.015) & v7) != 0)
        {
          goto LABEL_122;
        }

        v42 = v55;
        if ((v25 & 1) == 0)
        {
          break;
        }

LABEL_123:
        ++v12;
        v10 = v25;
        v9 = v19;
        v7 = v38;
        v6 = v32;
        v11 = v54 + 2;
        v5 = v42 - 1;
        if (!v5)
        {
          return;
        }
      }

      if ((v32 & 1) == 0 && (v19 & 1) == 0 && (v38 & 1) == 0 && (v25 & 1) == 0)
      {
        goto LABEL_130;
      }

      if (*(a1 + 8) == 1)
      {
        if ((v6 & 1) != 0 && ((v19 & 1) != 0 || v32 && !v25) || (v9 & 1) != 0 && (!v38 ? (v43 = (v32 | v19 ^ 1) == 0) : (v43 = 1), v43) || (v7 & 1) != 0 && ((v25 & 1) != 0 || (v38 ? (v45 = v19 == 0) : (v45 = 0), v45)))
        {
          v44 = 1;
        }

        else
        {
          v44 = v10;
          if (v32 & 1) == 0 && (v10)
          {
            v44 = v38 ^ 1;
            if (!v25)
            {
              v44 = 0;
            }
          }
        }
      }

      else
      {
        v44 = 0;
      }

      *(a1 + 8) = v44 & 1;
      if (*(a1 + 9) != 1)
      {
        goto LABEL_72;
      }

      if (v6)
      {
        if (v25)
        {
LABEL_71:
          v47 = 1;
          *(a1 + 9) = 1;
          goto LABEL_74;
        }

        if (v32)
        {
          if (v19 & 1) == 0 || (v9)
          {
            goto LABEL_71;
          }

LABEL_63:
          if (v7)
          {
            if (v19)
            {
              goto LABEL_71;
            }

            if (v38 && v25 == 0)
            {
              goto LABEL_71;
            }
          }

          if (v10)
          {
            if (v38)
            {
              goto LABEL_71;
            }

            v47 = v25 & ~v32;
LABEL_73:
            *(a1 + 9) = v47;
            if (((v44 | v47) & 1) == 0)
            {
              goto LABEL_130;
            }

LABEL_74:
            v48 = *(a1 + 12);
            if (v48)
            {
              v49 = *(a1 + 16);
              if (v49 > 2)
              {
                if (v49 != 3)
                {
                  if (v49 != 4)
                  {
                    goto LABEL_130;
                  }

                  if ((v44 & v32) == 1 && v19)
                  {
LABEL_91:
                    v50 = v48 + 1;
                    goto LABEL_92;
                  }

                  if (!v47 || !v38 || !v25)
                  {
                    goto LABEL_122;
                  }

LABEL_115:
                  v50 = v48 + 1;
                  v51 = 3;
                  goto LABEL_121;
                }

                if ((v44 & v32) != 1 || !v25)
                {
                  if (!v47 || !v38 || !v19)
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_111;
                }
              }

              else
              {
                if (v49 != 1)
                {
                  if (v49 != 2)
                  {
                    goto LABEL_130;
                  }

                  if ((v44 & 1) == 0 || !v38 || !v25)
                  {
                    if ((v47 & v32) != 1 || !v19)
                    {
                      goto LABEL_122;
                    }

                    goto LABEL_91;
                  }

                  goto LABEL_115;
                }

                if ((v44 & 1) != 0 && v38 && v19 != 0)
                {
LABEL_111:
                  v50 = v48 + 1;
                  v51 = 2;
                  goto LABEL_121;
                }

                if ((v47 & v32) != 1 || !v25)
                {
                  goto LABEL_122;
                }
              }

              v50 = v48 + 1;
              v51 = 4;
              goto LABEL_121;
            }

            if (v32)
            {
              if (v19)
              {
                v50 = 1;
LABEL_92:
                v51 = 1;
LABEL_121:
                *(a1 + 12) = v50;
                *(a1 + 16) = v51;
                goto LABEL_122;
              }

              if (v25)
              {
                v51 = 4;
                goto LABEL_120;
              }
            }

            else if (v38)
            {
              if (v19)
              {
                v51 = 2;
LABEL_120:
                v50 = 1;
                goto LABEL_121;
              }

              if (v25)
              {
                v51 = 3;
                goto LABEL_120;
              }
            }

LABEL_122:
            v42 = v55;
            goto LABEL_123;
          }

LABEL_72:
          v47 = 0;
          goto LABEL_73;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v32)
        {
          goto LABEL_71;
        }
      }

      if (v19 && !v38)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    }

    goto LABEL_130;
  }

  if (!v3)
  {
    if ((*(a1 + 28) & 1) == 0)
    {
      if (*(a1 + 30) == 1)
      {
        *(a1 + 12) = 0;
        *(a1 + 16) = 0;
        *(a1 + 20) = 16843009;
      }

      v5 = 1;
      *(a1 + 30) = 1;
      if ((*(a1 + 29) & 1) == 0)
      {
        goto LABEL_5;
      }

      return;
    }

    *(a1 + 30) = 1;
LABEL_133:
    *(a1 + 29) = 1;
    return;
  }

  if (v3 != 4)
  {
LABEL_130:
    *(a1 + 31) = 0;
    return;
  }

  if (*(a1 + 28))
  {
    goto LABEL_133;
  }
}

const CGPath *CGPathIsCongruentToARect(const CGPath *result)
{
  if (result)
  {
    v1 = result;
    if (CGPathIsEmpty(result))
    {
      return 0;
    }

    else
    {
      PathBoundingBox = CGPathGetPathBoundingBox(v1);
      info = &PathBoundingBox;
      v4 = 257;
      v5 = 0;
      v6 = 0x101010101010101;
      v7 = 0x1000000;
      CGPathApply(v1, &info, traverseBoundary);
      if (HIDWORD(v4) > 3)
      {
        return HIBYTE(v7);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 checkRectilinear(uint64_t a1, uint64_t a2, __n128 result)
{
  if (*(a1 + 41) == 1)
  {
    v3 = (a1 + 24);
    v4 = *(a1 + 24);
    result.n128_u64[0] = *a1;
    v5 = *(a1 + 32);
    v6 = *a2;
    if ((*a2 - 1) >= 3)
    {
      v7 = (a1 + 8);
      if (v6 != 4)
      {
        if (!v6)
        {
          v8 = *(a2 + 8);
          *v7 = *v8;
          result = *v8;
          *v3 = *v8;
        }

        return result;
      }

      v6 = 1;
    }

    else
    {
      *(a1 + 40) = 1;
      v7 = *(a2 + 8);
    }

    v9 = v6;
    v10 = v7;
    while (vabdd_f64(*v10, v4) < result.n128_f64[0])
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    v11 = v7 + 1;
    v12 = v6;
    while (vabdd_f64(*v11, v5) < result.n128_f64[0])
    {
      v11 += 2;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    *(a1 + 41) = 0;
LABEL_17:
    result = *&v7[2 * v6 - 2];
    *v3 = result;
  }

  return result;
}

_BYTE *elementIsFlat(_BYTE *result, _DWORD *a2)
{
  if (*result == 1 && (*a2 > 4u || ((1 << *a2) & 0x13) == 0))
  {
    *result = 0;
  }

  return result;
}

void CGPathAddFlattenedCurve(const CGPath *a1, float64_t a2, float64_t a3, float64_t a4, float64_t a5, CGFloat a6, CGFloat a7, double a8)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v11.f64[0] = a2;
  v11.f64[1] = a3;
  v12 = vsubq_f64(v11, CurrentPoint);
  v13 = v11;
  v14.f64[0] = a4;
  v14.f64[1] = a5;
  v11.f64[0] = a6;
  v11.f64[1] = a7;
  v15 = vsubq_f64(v14, v13);
  v16 = vsubq_f64(v11, v14);
  v17 = vsubq_f64(v15, v12);
  v18 = vsubq_f64(v16, v15);
  v19 = vzip2q_s64(v17, v18);
  v20 = vmulq_f64(v19, v19);
  v21 = vzip1q_s64(v17, v18);
  v22 = vmlaq_f64(v20, v21, v21);
  if (v22.f64[0] <= v22.f64[1])
  {
    v22.f64[0] = v22.f64[1];
  }

  v23 = v22.f64[0] * 9.0 * 0.0625;
  if (v23 > a8 * a8)
  {
    v24 = vsubq_f64(v18, v17);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v31 = vmulq_f64(v24, _Q6);
    v32 = vmlaq_f64(v24, _Q5, vaddq_f64(v12, v17));
    v33 = vmulq_f64(vaddq_f64(v17, v24), _Q6);
    v34 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v31 = vmulq_f64(v31, _Q2);
      v33 = vsubq_f64(vmulq_f64(v33, _Q3), v31);
      v32 = vsubq_f64(vmulq_f64(v32, _Q4), vmulq_f64(v33, _Q4));
      v34 *= 2;
      v23 = v23 * 0.0625;
    }

    while (v23 > a8 * a8 && v34 <= 0x10000);
    if (v34 >= 2)
    {
      v38 = v34 + 1;
      do
      {
        v46 = v31;
        v48 = vaddq_f64(CurrentPoint, v32);
        v42 = vaddq_f64(v31, v33);
        v44 = vaddq_f64(v32, v33);
        CGPathAddLineToPoint(a1, 0, v48.f64[0], v48.f64[1]);
        v33 = v42;
        v32 = v44;
        v31 = v46;
        CurrentPoint = v48;
        --v38;
      }

      while (v38 > 2);
    }
  }

  CGPathAddLineToPoint(a1, 0, a6, a7);
}

void addFlattenedElement(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 == 2)
    {
      v9 = *a1;
      v10 = *(a2 + 8);
      v11 = *(a1 + 1);
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      CurrentPoint = CGPathGetCurrentPoint(*a1);
      v17 = (CurrentPoint.x + v12 * 2.0) / 3.0;
      v18 = (CurrentPoint.y + v13 * 2.0) / 3.0;
      v19 = (v14 + v12 * 2.0) / 3.0;
      v20 = (v15 + v13 * 2.0) / 3.0;
      v21 = v9;
      v22 = v14;
      v23 = v15;
      v24 = v11;
    }

    else
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v4 = *a1;

          CGPathCloseSubpath(v4);
        }

        return;
      }

      v25 = *(a2 + 8);
      v24 = *(a1 + 1);
      v17 = *v25;
      v18 = v25[1];
      v19 = v25[2];
      v20 = v25[3];
      v22 = v25[4];
      v23 = v25[5];
      v21 = *a1;
    }

    CGPathAddFlattenedCurve(v21, v17, v18, v19, v20, v22, v23, v24);
    return;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v5 = *a1;
      v6 = *(a2 + 8);
      v7 = *v6;
      v8 = v6[1];

      CGPathAddLineToPoint(v5, 0, v7, v8);
    }
  }

  else
  {
    v26 = *a1;
    v27 = *(a2 + 8);
    v28 = *v27;
    v29 = v27[1];

    CGPathMoveToPoint(v26, 0, v28, v29);
  }
}

void CGPathAddIntersection(CGPath *a1, const CGPath **a2, unsigned int a3)
{
  v4 = a2;
  PolygonFromPath = createPolygonFromPath(*a2);
  v274 = a3;
  v7 = 1;
  v268 = v4;
  v269 = a1;
  do
  {
    v8 = createPolygonFromPath(v4[v7]);
    v9 = malloc_type_malloc(0x18uLL, 0x1030040B05087B7uLL);
    v10 = PolygonFromPath;
    PolygonFromPath = v9;
    v294 = 0;
    v292 = 0;
    v293 = 0;
    v290 = 0;
    v291 = 0;
    v289 = 0;
    v11 = *v10;
    if (!*v10 || !*v8)
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      goto LABEL_442;
    }

    v12 = v11 < 1 || *v8 < 1;
    v276 = v10;
    if (!v12)
    {
      contour_bboxes = create_contour_bboxes(v10);
      v14 = create_contour_bboxes(v8);
      v15 = v276;
      v16 = v14;
      v17 = *v276;
      LODWORD(v18) = *v8;
      v19 = *v8 * *v276;
      if (v19)
      {
        v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
        v15 = v276;
        v21 = v20;
        v17 = *v276;
        LODWORD(v18) = *v8;
      }

      else
      {
        v21 = 0;
      }

      if (v17 >= 1)
      {
        for (i = 0; i < v17; ++i)
        {
          if (v18 >= 1)
          {
            v23 = 0;
            v24 = &contour_bboxes[32 * i];
            v25 = v24[2];
            v26 = v16 + 2;
            do
            {
              v27 = v25 >= *(v26 - 2) && *v24 <= *v26 && v24[3] >= *(v26 - 1) && v24[1] <= v26[1];
              v21[i + *v15 * v23++] = v27;
              v18 = *v8;
              v26 += 4;
            }

            while (v23 < v18);
            v17 = *v15;
          }
        }
      }

      if (v18 >= 1)
      {
        v28 = 0;
        v29 = v21;
        do
        {
          v30 = v17 & ~(v17 >> 31);
          v31 = v29;
          while (v30)
          {
            v32 = *v31++;
            --v30;
            if (v32)
            {
              goto LABEL_31;
            }
          }

          *(*(v8 + 2) + 16 * v28) = -*(*(v8 + 2) + 16 * v28);
LABEL_31:
          ++v28;
          v29 += v17;
        }

        while (v28 != v18);
      }

      if (v17 >= 1)
      {
        v33 = 0;
        v34 = v17;
        v35 = v18 & ~(v18 >> 31);
        v36 = 4 * v17;
        v37 = v35 + 1;
        v38 = v21;
        do
        {
          v39 = v37;
          v40 = v38;
          while (--v39)
          {
            v41 = *v40;
            v40 = (v40 + v36);
            if (v41)
            {
              goto LABEL_39;
            }
          }

          *(*(v15 + 2) + 16 * v33) = -*(*(v15 + 2) + 16 * v33);
LABEL_39:
          ++v33;
          ++v38;
        }

        while (v33 != v34);
      }

      if (contour_bboxes)
      {
        free(contour_bboxes);
      }

      if (v16)
      {
        free(v16);
      }

      if (v21)
      {
        free(v21);
      }

      v10 = v276;
      v11 = *v276;
    }

    if (v11 < 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = build_lmt(&v291, &v294, &v289, v10, 1);
    }

    if (*v8 < 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = build_lmt(&v291, &v294, &v289, v8, 0);
    }

    v10 = v276;
    if (!v291)
    {
      *PolygonFromPath = 0;
      *(PolygonFromPath + 1) = 0;
      *(PolygonFromPath + 2) = 0;
      if (v42)
      {
        v46 = v43;
        free(v42);
        v43 = v46;
        v10 = v276;
      }

      goto LABEL_440;
    }

    v280 = v291;
    v271 = v43;
    if (v289)
    {
      v44 = v289;
      v45 = malloc_type_malloc(8 * v289, 0x100004000313F17uLL);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v277 = v45;
    build_sbt(&v289 + 1, v45, v294);
    free_sbtree(&v294);
    if (v276 == PolygonFromPath)
    {
      gpc_free_polygon(v276);
    }

    if (v8 == PolygonFromPath)
    {
      gpc_free_polygon(v8);
    }

    v47 = v44;
    v272 = v42;
    v273 = v7;
    if (v44 < 1)
    {
      *(PolygonFromPath + 1) = 0;
      *(PolygonFromPath + 2) = 0;
LABEL_419:
      *PolygonFromPath = 0;
      goto LABEL_431;
    }

    v275 = v8;
    v270 = PolygonFromPath;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v281 = 0;
    v52 = 0.0;
    v53 = 0.0;
    do
    {
      v54 = v49 + 1;
      HIDWORD(v289) = v54;
      v55 = v277[v49];
      if (v54 < v47)
      {
        v53 = v277[v54];
        v52 = v53 - v55;
      }

      v56 = v280;
      if (v280 && *v280 == v55)
      {
        v57 = *(v280 + 1);
        if (v57)
        {
          do
          {
            v58 = v292;
            if (v292)
            {
              v59 = 0;
              v60 = *(v57 + 48);
              v61 = &v292;
              while (1)
              {
                v62 = *(v58 + 48);
                if (v60 < v62)
                {
                  break;
                }

                v63 = v58;
                if (v60 == v62 && *(v57 + 64) < *(v58 + 64))
                {
                  break;
                }

                v61 = (v58 + 136);
                v58 = *(v58 + 136);
                v59 = v63;
                if (!v58)
                {
                  goto LABEL_79;
                }
              }

              *(v57 + 128) = v59;
              v64 = *v61;
              *(v57 + 136) = *v61;
              *(v64 + 128) = v57;
              *v61 = v57;
            }

            else
            {
              v63 = 0;
              v61 = &v292;
LABEL_79:
              *v61 = v57;
              *(v57 + 128) = v63;
              *(v57 + 136) = 0;
            }

            v57 = *(v57 + 160);
          }

          while (v57);
          v48 = v292;
        }

        v56 = *(v280 + 2);
      }

      v280 = v56;
      if (!v48)
      {
        goto LABEL_238;
      }

      *(v48 + 76 + 4 * *(v48 + 72)) = *(v48 + 40) != v55;
      *(v48 + 76 + 4 * (*(v48 + 72) == 0)) = 0;
      *(v48 + 100) = 0;
      v65 = *(v48 + 136);
      for (j = v48; v65; j = v70)
      {
        v67 = v65 + 76;
        *(v65 + 76 + 4 * *(v65 + 72)) = *(v65 + 40) != v55;
        v68 = *(v65 + 72);
        *(v65 + 76 + 4 * (*(v65 + 72) == 0)) = 0;
        *(v65 + 100) = 0;
        v69 = *(v65 + 76 + 4 * v68);
        if (v69)
        {
          v70 = v65;
          if (vabdd_f64(*(j + 48), *(v65 + 48)) <= 2.22044605e-16)
          {
            v70 = v65;
            if (vabdd_f64(*(j + 64), *(v65 + 64)) <= 2.22044605e-16)
            {
              v70 = v65;
              if (*(j + 40) != v55)
              {
                *(v67 + 4 * v68) = *(j + 76 + 4 * v68) ^ v69;
                v71 = *(v65 + 72) == 0;
                v72 = *(j + 76 + 4 * (*(v65 + 72) == 0));
                *(v65 + 100) = 1;
                *(v67 + 4 * v71) = v72;
                *(j + 76) = 0;
                *(j + 80) = 0;
                *(j + 100) = 2;
                v70 = v65;
              }
            }
          }
        }

        else
        {
          v70 = j;
        }

        v65 = *(v65 + 136);
      }

      v73 = 0;
      v74 = 0;
      v75 = -1.79769313e308;
      do
      {
        v77 = *(v48 + 76);
        v76 = *(v48 + 80);
        v79 = *(v48 + 84);
        v78 = *(v48 + 88);
        v80 = v77 + 2 * v79;
        v81 = v76 + 2 * v78;
        if (!(v80 | v81))
        {
          goto LABEL_150;
        }

        *(v48 + 92) = v51;
        *(v48 + 96) = v50;
        if (v80)
        {
          if (v50)
          {
            v82 = 0;
          }

          else
          {
            v82 = v74 == 0;
          }

          v83 = v82;
          if (!v82 || !v81)
          {
            goto LABEL_121;
          }
        }

        else if (!v81)
        {
          v83 = 1;
          goto LABEL_121;
        }

        if (v80)
        {
          v84 = v81 == 0;
        }

        else
        {
          v84 = 1;
        }

        v83 = v84 || v50 != 0;
        if (v73)
        {
          v83 = 0;
        }

        if (v51)
        {
          v83 = 0;
        }

LABEL_121:
        if (v51)
        {
          v86 = v50 == 0;
        }

        else
        {
          v86 = 1;
        }

        v87 = !v86;
        v89 = v51 != v77 && v50 != v76;
        v90 = v73 != 0;
        v91 = v74 != 0;
        v93 = v51 != v90 && v50 != v91;
        v94 = v78 ^ v91;
        v96 = (v79 ^ v90) != v51 && v94 != v50;
        v51 ^= v77;
        if (v80)
        {
          v73 = next_h_state[6 * v73 - 2 + 2 * v80 + v51];
        }

        v50 ^= v76;
        if (v81)
        {
          v74 = next_h_state[6 * v74 - 2 + 2 * v81 + v50];
        }

        if (v83)
        {
          goto LABEL_150;
        }

        if (v96)
        {
          v98 = 2;
        }

        else
        {
          v98 = 0;
        }

        if (v87)
        {
          v99 = 4;
        }

        else
        {
          v99 = 0;
        }

        if (v89)
        {
          v100 = 8;
        }

        else
        {
          v100 = 0;
        }

        v101 = v99 | v100 | v98 | v93;
        v97 = *(v48 + 48);
        if (v101 <= 6)
        {
          if (v101 <= 3)
          {
            if (v101 == 1)
            {
              v115 = v281;
              if (v97 != v75)
              {
                if (v281)
                {
                  v116 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v116 = v97;
                  v116[1] = v55;
                  v117 = *(v281 + 32);
                  v116[2] = *(v117 + 8);
                  *(v117 + 8) = v116;
                  v115 = v281;
                }

                v75 = v97;
              }

              merge_right(v115, *(v48 + 120), v290);
              v281 = 0;
              goto LABEL_150;
            }

            if (v101 != 2)
            {
              goto LABEL_150;
            }

            v111 = *(v48 + 120);
            if (v111)
            {
              v112 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v112 = v97;
              v112[1] = v55;
              v113 = *(v111 + 32);
              v112[2] = *(v113 + 8);
              *(v113 + 8) = v112;
              v114 = *(v48 + 120);
LABEL_190:
              v281 = v114;
              goto LABEL_151;
            }

            goto LABEL_210;
          }

          if (v101 == 4)
          {
            v121 = v281;
            if (v97 != v75)
            {
              if (v281)
              {
                v122 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v122 = v97;
                v122[1] = v55;
                v122[2] = 0.0;
                v123 = *(v281 + 32);
                *(*(v123 + 16) + 16) = v122;
                *(v123 + 16) = v122;
                goto LABEL_207;
              }

LABEL_208:
              v75 = v97;
            }

LABEL_209:
            *(v48 + 112) = v121;
            v97 = v75;
LABEL_210:
            v281 = 0;
            goto LABEL_151;
          }

          if (v101 != 5)
          {
            v105 = v281;
            if (v97 != v75)
            {
              v75 = *(v48 + 48);
              if (v281)
              {
                v106 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v106 = v97;
                v106[1] = v55;
                v106[2] = 0.0;
                v107 = *(v281 + 32);
                *(*(v107 + 16) + 16) = v106;
                *(v107 + 16) = v106;
                v105 = v281;
                v75 = v97;
              }
            }

            merge_left(v105, *(v48 + 120), v290);
            goto LABEL_200;
          }

          if (*(v48 + 24) == v55)
          {
            v126 = *(v48 + 120);
            if (v126)
            {
              v127 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v127 = v97;
              v127[1] = v55;
              v127[2] = 0.0;
              v128 = *(v126 + 32);
              *(*(v128 + 16) + 16) = v127;
              *(v128 + 16) = v127;
            }
          }

          goto LABEL_214;
        }

        if (v101 <= 10)
        {
          if ((v101 - 7) < 2)
          {
            add_local_min(&v290, v48, *(v48 + 48), v55);
            v114 = *(v48 + 112);
            goto LABEL_190;
          }

          if (v101 == 9)
          {
            v118 = v281;
            if (v97 != v75)
            {
              v75 = *(v48 + 48);
              if (v281)
              {
                v119 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v119 = v97;
                v119[1] = v55;
                v120 = *(v281 + 32);
                v119[2] = *(v120 + 8);
                *(v120 + 8) = v119;
                v118 = v281;
                v75 = v97;
              }
            }

            merge_right(v118, *(v48 + 120), v290);
LABEL_200:
            *(v48 + 120) = 0;
            add_local_min(&v290, v48, v97, v55);
            v281 = *(v48 + 112);
LABEL_150:
            v97 = v75;
            goto LABEL_151;
          }

          if (v101 != 10)
          {
            goto LABEL_150;
          }

          if (*(v48 + 24) == v55)
          {
            v102 = *(v48 + 120);
            if (v102)
            {
              v103 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v103 = v97;
              v103[1] = v55;
              v104 = *(v102 + 32);
              v103[2] = *(v104 + 8);
              *(v104 + 8) = v103;
            }
          }

LABEL_214:
          *(v48 + 112) = *(v48 + 120);
          goto LABEL_151;
        }

        if (v101 == 11)
        {
          v121 = v281;
          if (v97 != v75)
          {
            if (v281)
            {
              v124 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
              *v124 = v97;
              v124[1] = v55;
              v125 = *(v281 + 32);
              v124[2] = *(v125 + 8);
              *(v125 + 8) = v124;
LABEL_207:
              v121 = v281;
            }

            goto LABEL_208;
          }

          goto LABEL_209;
        }

        if (v101 != 13)
        {
          if (v101 == 14)
          {
            v108 = v281;
            if (v97 != v75)
            {
              if (v281)
              {
                v109 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v109 = v97;
                v109[1] = v55;
                v109[2] = 0.0;
                v110 = *(v281 + 32);
                *(*(v110 + 16) + 16) = v109;
                *(v110 + 16) = v109;
                v108 = v281;
              }

              v75 = v97;
            }

            merge_left(v108, *(v48 + 120), v290);
            v281 = 0;
            *(v48 + 120) = 0;
          }

          goto LABEL_150;
        }

        v129 = *(v48 + 120);
        if (v129)
        {
          v130 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
          *v130 = v97;
          v130[1] = v55;
          v130[2] = 0.0;
          v131 = *(v129 + 32);
          *(*(v131 + 16) + 16) = v130;
          *(v131 + 16) = v130;
          v281 = *(v48 + 120);
        }

        else
        {
          v281 = 0;
        }

        *(v48 + 120) = 0;
LABEL_151:
        v48 = *(v48 + 136);
        v75 = v97;
      }

      while (v48);
      v48 = v292;
      v132 = v292;
      if (v292)
      {
        do
        {
          v133 = *(v132 + 40);
          if (v133 == v55)
          {
            v134 = *(v132 + 128);
            v135 = *(v132 + 136);
            v136 = v135;
            if (v134)
            {
              *(v134 + 136) = v135;
              v136 = v48;
            }

            if (v135)
            {
              *(v135 + 128) = v134;
            }

            if (v134)
            {
              if (*(v132 + 104) == 1 && *(v134 + 104) == 2)
              {
                *(v134 + 120) = *(v132 + 120);
                *(v134 + 104) = 0;
                v137 = *(v134 + 128);
                if (v137)
                {
                  if (*(v137 + 104) == 2)
                  {
                    *(v134 + 104) = 1;
                  }
                }
              }
            }

            v48 = v136;
          }

          else
          {
            if (v133 == v53)
            {
              v138 = *(v132 + 32);
            }

            else
            {
              v138 = *(v132 + 16) + *(v132 + 64) * (v53 - *(v132 + 24));
            }

            *(v132 + 56) = v138;
          }

          v132 = *(v132 + 136);
        }

        while (v132);
        v292 = v48;
      }

LABEL_238:
      if (SHIDWORD(v289) >= v289)
      {
        break;
      }

      v278 = HIDWORD(v289);
      v279 = v289;
      v139 = v293;
      if (v293)
      {
        do
        {
          v140 = v139[4];
          free(v139);
          v139 = v140;
        }

        while (v140);
        v293 = 0;
      }

      v295[0] = 0;
      if (v48)
      {
        v141 = v48;
        do
        {
          if (*(v141 + 100) == 1 || *(v141 + 76) || *(v141 + 80))
          {
            v142 = v295[0];
            if (v295[0])
            {
              v143 = (v141 + 64);
              v144 = v295;
              while (1)
              {
                v145 = v142[2];
                v146 = *(v141 + 56);
                if (v146 >= v145)
                {
                  break;
                }

                v147 = v142[1];
                v148 = v145 - v147;
                v149 = *(v141 + 48);
                v150 = v148 - (v146 - v149);
                v151 = fabs(v150);
                if (*v143 == v142[3] || v151 <= 2.22044605e-16)
                {
                  break;
                }

                v153 = (v149 - v147) / v150;
                v154 = v153 * v52;
                v155 = v293;
                if (v293 && *(v293 + 3) <= v154)
                {
                  do
                  {
                    v157 = v155;
                    v155 = v155[4];
                  }

                  while (v155 && *(v155 + 3) <= v154);
                  v156 = (v157 + 4);
                }

                else
                {
                  v156 = &v293;
                }

                v158 = v147 + v153 * v148;
                v159 = *v142;
                v160 = malloc_type_malloc(0x28uLL, 0x1020040D4280EFAuLL);
                *v156 = v160;
                *v160 = v159;
                *(*v156 + 1) = v141;
                v161 = *v156;
                v161[2] = v158;
                v161[3] = v154;
                *(v161 + 4) = v155;
                v162 = *v144;
                v163 = *(v162 + 32);
                v144 = (v162 + 32);
                v142 = v163;
                if (!v163)
                {
                  goto LABEL_265;
                }
              }

              v164 = malloc_type_malloc(0x28uLL, 0x102004060DBCA02uLL);
              *v144 = v164;
              *v164 = v141;
              v165 = *v144;
              *(*v144 + 8) = *(v141 + 48);
            }

            else
            {
              v144 = v295;
LABEL_265:
              v166 = malloc_type_malloc(0x28uLL, 0x102004060DBCA02uLL);
              v142 = 0;
              *v144 = v166;
              *v166 = v141;
              v165 = *v144;
              *(*v144 + 8) = *(v141 + 48);
              v143 = (v141 + 64);
            }

            *(v165 + 24) = *v143;
            *(v165 + 32) = v142;
          }

          v141 = *(v141 + 136);
        }

        while (v141);
        v167 = v295[0];
        if (v295[0])
        {
          do
          {
            v168 = v167[4];
            free(v167);
            v167 = v168;
          }

          while (v168);
        }
      }

      v169 = v293;
      if (v293)
      {
        while (2)
        {
          v170 = *v169;
          v171 = v169[1];
          v172 = *(*v169 + 76);
          if (!v172)
          {
            if (!*(v170 + 80))
            {
              goto LABEL_359;
            }

            v173 = *(v171 + 76);
            if (v173)
            {
              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v179 = *(v171 + 92);
            }

            else
            {
              if (!*(v171 + 80))
              {
                goto LABEL_359;
              }

              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v173 = *(v170 + 92);
              if (!v173)
              {
                v180 = 0;
                goto LABEL_282;
              }

              v173 = 0;
LABEL_274:
              v179 = *(v171 + 92);
            }

            v180 = v179 != 0;
            goto LABEL_282;
          }

          v173 = *(v171 + 76);
          if (!v173)
          {
            if (*(v171 + 80))
            {
              v173 = 0;
              v175 = (v170 + 112);
              v174 = *(v170 + 112);
              v177 = (v171 + 112);
              v176 = *(v171 + 112);
              v178 = *(v169 + 1);
              v180 = *(v170 + 92) == 0;
              goto LABEL_282;
            }

            goto LABEL_359;
          }

          v175 = (v170 + 112);
          v174 = *(v170 + 112);
          v177 = (v171 + 112);
          v176 = *(v171 + 112);
          v178 = *(v169 + 1);
          if (*(v170 + 92))
          {
            goto LABEL_274;
          }

          v180 = 1;
LABEL_282:
          v181 = *(v170 + 80);
          if (v181)
          {
            if (!*(v170 + 96))
            {
              v182 = 1;
              goto LABEL_290;
            }

            v182 = *(v171 + 80);
            if (!v182)
            {
LABEL_290:
              if (v173 == v180)
              {
                v183 = 0;
              }

              else
              {
                v183 = 2 * (*(v171 + 80) != v182);
              }

              v185 = v172 != v180 && v181 != v182;
              if ((v173 ^ v172) == v180)
              {
                v186 = 0;
              }

              else
              {
                v186 = 8 * ((*(v171 + 80) ^ v181) != v182);
              }

              v187 = v55 + *(&v178 + 1);
              v188 = v180 & v182;
              if (v185)
              {
                v189 = 4;
              }

              else
              {
                v189 = 0;
              }

              v190 = v189 | v186 | v183 | v188;
              if (v190 <= 7)
              {
                if (v190 > 3)
                {
                  if (v190 != 4)
                  {
                    if (v190 != 6)
                    {
                      if (v190 != 7)
                      {
                        goto LABEL_359;
                      }

LABEL_337:
                      v202 = *v169;
LABEL_354:
                      add_local_min(&v290, v202, *&v178, v187);
                      *v177 = *(v170 + 112);
                      goto LABEL_359;
                    }

                    if (v174 && v176)
                    {
                      v284 = v178;
                      v209 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                      *v209 = v284;
                      v209[1] = v187;
                      v209[2] = 0.0;
                      v210 = *(v174 + 32);
                      *(*(v210 + 16) + 16) = v209;
                      *(v210 + 16) = v209;
                      merge_left(v174, v176, v290);
                      goto LABEL_353;
                    }

                    goto LABEL_359;
                  }

                  if (!v174)
                  {
                    goto LABEL_359;
                  }

                  v286 = v178;
                  v205 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v205 = v286;
                  v205[1] = v187;
                  v205[2] = 0.0;
                  v206 = *(v174 + 32);
                  *(*(v206 + 16) + 16) = v205;
                  *(v206 + 16) = v205;
LABEL_349:
                  *v177 = v174;
                  *v175 = 0;
                  goto LABEL_359;
                }

                if (v190 != 1)
                {
                  if (v190 != 2 || v176 == 0)
                  {
                    goto LABEL_359;
                  }

                  v283 = v178;
                  v196 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v196 = v283;
                  v196[1] = v187;
                  v197 = *(v176 + 32);
                  v196[2] = *(v197 + 8);
                  *(v197 + 8) = v196;
LABEL_357:
                  *v175 = v176;
LABEL_358:
                  *v177 = 0;
                  goto LABEL_359;
                }

                if (!v174 || !v176)
                {
                  goto LABEL_359;
                }

                v285 = v178;
                v203 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v203 = v285;
                v203[1] = v187;
                v204 = *(v174 + 32);
                v203[2] = *(v204 + 8);
                *(v204 + 8) = v203;
                merge_right(v174, v176, v290);
LABEL_344:
                *v175 = 0;
                goto LABEL_358;
              }

              if (v190 > 10)
              {
                if (v190 == 11)
                {
                  if (!v174)
                  {
                    goto LABEL_359;
                  }

                  v287 = v178;
                  v207 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v207 = v287;
                  v207[1] = v187;
                  v208 = *(v174 + 32);
                  v207[2] = *(v208 + 8);
                  *(v208 + 8) = v207;
                  goto LABEL_349;
                }

                if (v190 == 13)
                {
                  if (!v176)
                  {
                    goto LABEL_359;
                  }

                  v288 = v178;
                  v211 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                  *v211 = v288;
                  v211[1] = v187;
                  v211[2] = 0.0;
                  v212 = *(v176 + 32);
                  *(*(v212 + 16) + 16) = v211;
                  *(v212 + 16) = v211;
                  goto LABEL_357;
                }

                if (v190 != 14 || v174 == 0 || v176 == 0)
                {
                  goto LABEL_359;
                }

                v282 = v178;
                v193 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v193 = v282;
                v193[1] = v187;
                v193[2] = 0.0;
                v194 = *(v174 + 32);
                *(*(v194 + 16) + 16) = v193;
                *(v194 + 16) = v193;
                merge_left(v174, v176, v290);
                goto LABEL_344;
              }

              if (v190 == 8)
              {
                goto LABEL_337;
              }

              if (v190 == 9 && v174 != 0 && v176 != 0)
              {
                v284 = v178;
                v200 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                *v200 = v284;
                v200[1] = v187;
                v201 = *(v174 + 32);
                v200[2] = *(v201 + 8);
                *(v201 + 8) = v200;
                merge_right(v174, v176, v290);
LABEL_353:
                v202 = v170;
                *&v178 = v284;
                goto LABEL_354;
              }

LABEL_359:
              if (*(v170 + 76))
              {
                *(v171 + 92) = *(v171 + 92) == 0;
              }

              if (*(v171 + 76))
              {
                *(v170 + 92) = *(v170 + 92) == 0;
              }

              if (*(v170 + 80))
              {
                *(v171 + 96) = *(v171 + 96) == 0;
              }

              if (*(v171 + 80))
              {
                *(v170 + 96) = *(v170 + 96) == 0;
              }

              v213 = *(v170 + 128);
              v214 = *(v171 + 136);
              if (v214)
              {
                *(v214 + 128) = v170;
              }

              if (*(v170 + 100) == 1)
              {
                while (1)
                {
                  v213 = *(v213 + 128);
                  if (!v213)
                  {
                    break;
                  }

                  if (*(v213 + 100) != 2)
                  {
                    goto LABEL_374;
                  }
                }

LABEL_382:
                v213 = 0;
                *(v48 + 128) = v171;
                *(v171 + 136) = v48;
                v216 = *(v170 + 136);
                v48 = v216;
                if (!v216)
                {
                  goto LABEL_378;
                }
              }

              else
              {
                if (!v213)
                {
                  goto LABEL_382;
                }

LABEL_374:
                v215 = *(v213 + 136);
                if (!v215)
                {
                  MEMORY[0x80] = v171;
                }

                *(v171 + 136) = v215;
                v216 = *(v170 + 136);
                *(v213 + 136) = v216;
                if (!v216)
                {
LABEL_378:
                  v217 = *(v171 + 136);
                  if (v217)
                  {
                    *(v217 + 128) = v171;
                  }

                  *(v170 + 136) = v214;
                  v169 = v169[4];
                  if (!v169)
                  {
                    goto LABEL_385;
                  }

                  continue;
                }
              }

              *(v216 + 128) = v213;
              goto LABEL_378;
            }
          }

          else if (!*(v171 + 80))
          {
            v182 = *(v170 + 96);
            if (!v182)
            {
              goto LABEL_290;
            }
          }

          break;
        }

        v182 = *(v171 + 96) != 0;
        goto LABEL_290;
      }

LABEL_385:
      if (v48)
      {
        v218 = v48;
        v49 = v278;
        do
        {
          v219 = *(v48 + 136);
          v220 = *(v48 + 152);
          v221 = *(v48 + 112);
          if (*(v48 + 40) != v53 || v220 == 0)
          {
            *(v48 + 120) = v221;
            *(v48 + 104) = *(v48 + 100);
            *(v48 + 84) = *(v48 + 76);
            *(v48 + 48) = *(v48 + 56);
            v223 = v218;
          }

          else
          {
            *(v220 + 120) = v221;
            *(v220 + 104) = *(v48 + 100);
            *(v220 + 84) = *(v48 + 76);
            *(v220 + 88) = *(v48 + 80);
            v224 = *(v48 + 128);
            v223 = v220;
            if (v224)
            {
              *(v224 + 136) = v220;
              v223 = v218;
            }

            if (v219)
            {
              *(v219 + 128) = v220;
            }

            *(v220 + 128) = v224;
            *(v220 + 136) = v219;
            v218 = v223;
          }

          *(v48 + 112) = 0;
          v48 = v219;
        }

        while (v219);
      }

      else
      {
        v223 = 0;
        v49 = v278;
      }

      v292 = v223;
      v48 = v223;
      v47 = v279;
    }

    while (v49 < v279);
    v225 = v290;
    a1 = v269;
    PolygonFromPath = v270;
    *(v270 + 1) = 0;
    *(v270 + 2) = 0;
    v4 = v268;
    v8 = v275;
    if (!v225)
    {
      goto LABEL_419;
    }

    v226 = 0;
    v227 = v225;
    while (2)
    {
      if (*v227)
      {
        v228 = v227[4];
        v229 = *(v228 + 8);
        if (v229)
        {
          v230 = -1;
          v231 = *(v228 + 8);
          do
          {
            v232 = v230;
            v231 = *(v231 + 16);
            ++v230;
          }

          while (v231);
          if (v230 > 1)
          {
            *v227 = v232 + 2;
            ++v226;
            goto LABEL_412;
          }

          do
          {
            v233 = v229[2];
            free(v229);
            v229 = v233;
          }

          while (v233);
        }

        *v227 = 0;
      }

LABEL_412:
      v227 = v227[3];
      if (v227)
      {
        continue;
      }

      break;
    }

    *v270 = v226;
    if (v226 <= 0)
    {
      do
      {
        v236 = v225[3];
        free(v225);
        v225 = v236;
      }

      while (v236);
    }

    else
    {
      *(v270 + 1) = malloc_type_malloc(4 * v226, 0x100004052888210uLL);
      v234 = *v270;
      if (v234)
      {
        v235 = malloc_type_malloc(16 * v234, 0x1020040D5A9D86FuLL);
      }

      else
      {
        v235 = 0;
      }

      v237 = 0;
      *(v270 + 2) = v235;
      do
      {
        v238 = v225[3];
        if (*v225)
        {
          v239 = v225[4];
          v240 = *(v270 + 2);
          *(*(v270 + 1) + 4 * v237) = *(v239 + 4);
          v241 = *v225;
          *(v240 + 16 * v237) = v241;
          if (v241)
          {
            v242 = malloc_type_malloc(16 * v241, 0x1000040451B5BE8uLL);
            v243 = (*(v270 + 2) + 16 * v237);
            *(v243 + 1) = v242;
            v244 = *v243;
            v239 = v225[4];
          }

          else
          {
            v244 = 0;
            *(v240 + 16 * v237 + 8) = 0;
          }

          v245 = *(v239 + 8);
          if (v245)
          {
            v246 = 16 * v244 - 16;
            do
            {
              v247 = v245[2];
              *(*(*(v270 + 2) + 16 * v237 + 8) + v246) = *v245;
              free(v245);
              v246 -= 16;
              v245 = v247;
            }

            while (v247);
          }

          ++v237;
          v8 = v275;
        }

        free(v225);
        v225 = v238;
      }

      while (v238);
    }

LABEL_431:
    v248 = v293;
    if (v293)
    {
      do
      {
        v249 = v248[4];
        free(v248);
        v248 = v249;
      }

      while (v249);
    }

    v250 = v291;
    v7 = v273;
    if (v291)
    {
      do
      {
        v251 = v250[2];
        free(v250);
        v250 = v251;
      }

      while (v251);
    }

    if (v271)
    {
      free(v271);
    }

    if (v272)
    {
      free(v272);
    }

    v10 = v276;
    v43 = v277;
LABEL_440:
    if (v43)
    {
      free(v43);
      v10 = v276;
    }

LABEL_442:
    v252 = v10;
    gpc_free_polygon(v10);
    free(v252);
    gpc_free_polygon(v8);
    free(v8);
    ++v7;
  }

  while (v7 != v274);
  v253 = *PolygonFromPath;
  if (v253)
  {
    for (k = 0; k < v253; ++k)
    {
      v255 = *(PolygonFromPath + 2);
      v256 = (v255 + 16 * k);
      v257 = 0uLL;
      if (v255)
      {
        v258 = *v256;
        if (v258)
        {
          v259 = *(v256 + 1);
          v260 = *v259;
          if (v258 == 1)
          {
            v261 = *v259;
          }

          else
          {
            v262 = v258 - 1;
            v263 = v259 + 1;
            v261 = v260;
            do
            {
              v264 = *v263++;
              v261 = vbslq_s8(vcgtq_f64(v261, v264), v264, v261);
              v260 = vbslq_s8(vcgtq_f64(v264, v260), v264, v260);
              --v262;
            }

            while (v262);
          }

          v257 = vsubq_f64(v260, v261);
        }
      }

      if (v257.f64[0] > 0.01 || v257.f64[1] > 0.01)
      {
        v265 = *v256;
        if (*v256 >= 1)
        {
          CGPathMoveToPoint(a1, 0, **(v256 + 1), *(*(v256 + 1) + 8));
          v265 = *v256;
        }

        if (v265 >= 2)
        {
          v266 = 0;
          v267 = 1;
          do
          {
            CGPathAddLineToPoint(a1, 0, *(*(v256 + 1) + v266 + 16), *(*(v256 + 1) + v266 + 24));
            ++v267;
            v266 += 16;
          }

          while (v267 < *v256);
        }

        CGPathCloseSubpath(a1);
        v253 = *PolygonFromPath;
      }
    }
  }

  gpc_free_polygon(PolygonFromPath);

  free(PolygonFromPath);
}

int *createPolygonFromPath(const CGPath *a1)
{
  LOBYTE(info) = 1;
  if (a1)
  {
    CGPathApply(a1, &info, elementIsFlat);
    if (info)
    {
      CFRetain(a1);
      Mutable = a1;
    }

    else
    {
      Mutable = CGPathCreateMutable();
      info = Mutable;
      v11 = 0x3FE3333333333333;
      CGPathApply(a1, &info, addFlattenedElement);
      if (!Mutable)
      {
        goto LABEL_9;
      }
    }

    LODWORD(info) = 0;
    CGPathApply(Mutable, &info, countElements);
    v3 = info;
    if (info < 0x2711)
    {
      goto LABEL_10;
    }

    CFRelease(Mutable);
    PathBoundingBox = CGPathGetPathBoundingBox(a1);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    Mutable = CGPathCreateMutable();
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    CGPathAddRect(Mutable, 0, v14);
    if (Mutable)
    {
      LODWORD(info) = 0;
      CGPathApply(Mutable, &info, countElements);
      v3 = info;
      goto LABEL_10;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_9:
  v3 = 0;
LABEL_10:
  info = 0;
  v11 = 0;
  v8 = malloc_type_malloc(0x18uLL, 0x1030040B05087B7uLL);
  v12 = v8;
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  if (v3)
  {
    LODWORD(info) = 0;
    v11 = malloc_type_calloc(v3, 0x10uLL, 0x1000040451B5BE8uLL);
    CGPathApply(Mutable, &info, addVertex);
    if (info >= 2)
    {
      gpc_add_contour(v12, &info);
    }

    free(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

void addVertex(int *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (!v4)
    {
      if (*a1 >= 2)
      {
        gpc_add_contour(*(a1 + 2), a1);
      }

      **(a1 + 1) = **(a2 + 8);
      goto LABEL_16;
    }

    if (v4 != 1)
    {
      return;
    }

    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = **(a2 + 8);
LABEL_12:
    *(v5 + 16 * v6) = v7;
    return;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = *(*(a2 + 8) + 16);
    goto LABEL_12;
  }

  if (v4 == 3)
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    *a1 = v6 + 1;
    v7 = *(*(a2 + 8) + 32);
    goto LABEL_12;
  }

  if (v4 == 4 && *a1 >= 2)
  {
    gpc_add_contour(*(a1 + 2), a1);
LABEL_16:
    *a1 = 1;
  }
}

uint64_t countSubpaths(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 4) == 4)
  {
    *(result + 4) = 1;
  }

  else if (*(result + 4) == 1)
  {
    ++*result;
    *(result + 4) = 0;
  }

  return result;
}

void createSubpaths(uint64_t a1, int *a2)
{
  if (*a2 == 4)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v4 = *(a1 + 28);
      if (v4 <= *(a1 + 24))
      {
        CGPathCloseSubpath(*(*a1 + 8 * (v4 - 1)));
      }

      goto LABEL_4;
    }
  }

  else
  {
    if (!*a2)
    {
      *(a1 + 8) = **(a2 + 1);
LABEL_4:
      *(a1 + 32) = 1;
      return;
    }

    LODWORD(v5) = *(a1 + 28);
    if (*(a1 + 32) == 1)
    {
      if (v5 < *(a1 + 24))
      {
        Mutable = CGPathCreateMutable();
        CGPathMoveToPoint(Mutable, 0, *(a1 + 8), *(a1 + 16));
        v5 = *(a1 + 28);
        *(*a1 + 8 * v5) = Mutable;
      }

      LODWORD(v5) = v5 + 1;
      *(a1 + 28) = v5;
      *(a1 + 32) = 0;
    }

    if (v5 <= *(a1 + 24))
    {
      v7 = *a2;
      if (*a2 == 3)
      {
        v18 = *(*a1 + 8 * (v5 - 1));
        v19 = *(a2 + 1);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = v19[5];

        CGPathAddCurveToPoint(v18, 0, v20, v21, v22, v23, v24, v25);
      }

      else if (v7 == 2)
      {
        v12 = *(*a1 + 8 * (v5 - 1));
        v13 = *(a2 + 1);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];

        CGPathAddQuadCurveToPoint(v12, 0, v14, v15, v16, v17);
      }

      else if (v7 == 1)
      {
        v8 = *(*a1 + 8 * (v5 - 1));
        v9 = *(a2 + 1);
        v10 = *v9;
        v11 = v9[1];

        CGPathAddLineToPoint(v8, 0, v10, v11);
      }
    }
  }
}

char *CGClipStrokeCreate(const CGAffineTransform *a1, unsigned __int8 a2, __int16 a3, char a4, char a5, atomic_uint *a6, double a7, double a8, double a9)
{
  result = malloc_type_malloc(0x60uLL, 0x102004028655EABuLL);
  *result = 1;
  v19 = &CGAffineTransformIdentity;
  if (a1)
  {
    v19 = a1;
  }

  v21 = *&v19->c;
  v20 = *&v19->tx;
  *(result + 8) = *&v19->a;
  *(result + 24) = v21;
  *(result + 40) = v20;
  *(result + 7) = a7;
  *(result + 32) = a2 | (a3 << 8);
  *(result + 9) = a8;
  result[66] = a4;
  result[67] = a5;
  if (a6)
  {
    atomic_fetch_add_explicit(a6, 1u, memory_order_relaxed);
  }

  *(result + 10) = a6;
  *(result + 11) = a9;
  return result;
}

atomic_uint *CGClipStrokeCreateCopy(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *CGClipStrokeRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGClipStrokeRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[10];
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v2);
    }

    free(a1);
  }
}

BOOL CGClipStrokeEqualToClipStroke(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    v2 = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
    {
      if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 66) == *(a2 + 66) && *(a1 + 67) == *(a2 + 67) && *(a1 + 88) == *(a2 + 88))
      {
        return !CGDashEqualToDash(*(a1 + 80), *(a2 + 80));
      }

      return 0;
    }
  }

  return v2;
}

__n128 CGClipStrokeGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 8);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

double CGClipStrokeGetLineWidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeGetLineCap(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t CGClipStrokeGetLineJoin(uint64_t result)
{
  if (result)
  {
    return *(result + 65);
  }

  return result;
}

double CGClipStrokeGetMiterLimit(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeGetStrokeAdjust(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 66);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGClipStrokeGetShouldAntialias(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 67);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CGClipStrokeGetDash(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

double CGClipStrokeGetFlatness(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CGClipStrokeCreateStrokedPath(uint64_t a1, char *cf)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  DashedPath = cf;
  if (v5)
  {
    DashedPath = CGPathCreateDashedPath(cf, (a1 + 8), (v5 + 24), *(v5 + 16), *(v5 + 8));
  }

  StrokedPath = CGPathCreateStrokedPath(DashedPath, (a1 + 8), *(a1 + 64), (*(a1 + 64) >> 8), *(a1 + 56), *(a1 + 72), *(a1 + 88));
  if (DashedPath != cf && DashedPath)
  {
    CFRelease(DashedPath);
  }

  return StrokedPath;
}

uint64_t CGPDFDocumentGetXRef(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return **(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFXRefGetEntry(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return result;
  }

  if (!a4)
  {
    pdf_error("Output parameter is NULL\n", a2, a3);
    return 0;
  }

  v5 = a3;
  v7 = *(result + 16);
  if (!v7)
  {
    result = *(result + 8);
    if (result)
    {

      return CGPDFXRefStreamGetEntry(result, a2, a3, a4);
    }

    return result;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    object_offset = xref_table_get_object_offset(*(v9 + 40), a2, v5);
    if (object_offset)
    {
      *a4 = 0;
      *(a4 + 8) = object_offset;
      *(a4 + 24) = 1;
      *(a4 + 26) = v5;
    }

    v11 = *(v9 + 32);
    if (v11)
    {
      if (CGPDFXRefStreamGetEntry(v11, a2, v5, a4))
      {
        break;
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CGPDFXRefPrint(uint64_t a1, FILE *__stream)
{
  fwrite("xref\n", 5uLL, 1uLL, __stream);
  v4 = *(a1 + 16);
  v16 = __stream;
  if (v4)
  {
    if (__stream)
    {
      v5 = __stream;
    }

    else
    {
      v5 = *MEMORY[0x1E69E9858];
    }

    v6 = *(v4 + 8);
    if (v6)
    {
      do
      {
        v18 = v6;
        v7 = v6[1];
        fprintf(v5, "xref table @ offset %lld:\n", *(v7 + 8));
        v17 = v7;
        for (i = *(v7 + 40); i; i = *i)
        {
          v9 = i[1];
          fprintf(v5, "  %ld %ld\n", *v9, v9[1]);
          if (v9[1] >= 1)
          {
            v10 = 0;
            v11 = v9 + 3;
            do
            {
              fprintf(v5, "    %.10lld ", v11[v10]);
              v12 = v9[2];
              if (v12)
              {
                LODWORD(v12) = *(v12 + 2 * v10);
              }

              fprintf(v5, "%.5hu ", v12);
              if (v11[v10])
              {
                v13 = 110;
              }

              else
              {
                v13 = 102;
              }

              fprintf(v5, "%c \n", v13);
              ++v10;
            }

            while (v10 < v9[1]);
          }
        }

        CGPDFDictionaryPrintWithIndent(*(v17 + 16), v5, 0);
        fputc(10, v5);
        v14 = *(v17 + 32);
        if (v14)
        {
          CGPDFXRefStreamPrint(v14, v5);
        }

        v6 = *v18;
      }

      while (*v18);
    }
  }

  else
  {
    CGPDFXRefStreamPrint(*(a1 + 8), __stream);
  }

  return fputc(10, v16);
}

uint64_t CGPDFXRefEntryPrint(_DWORD *a1, FILE *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *MEMORY[0x1E69E9858];
  }

  fprintf(v3, "CGPDFXRefEntry (%p)\n", a1);
  if (*a1)
  {
    v4 = "kCGPDFXRefEntryKindStream";
  }

  else
  {
    v4 = "kCGPDFXRefEntryKindOffset";
  }

  fprintf(v3, "  kind: %s\n", v4);
  if (*a1 == 1)
  {
    fprintf(v3, "  object_number = %lu, index = %ld\n");
  }

  else
  {
    fprintf(v3, "  offset = %lld\n");
  }

  v5 = "false";
  if (*(a1 + 24))
  {
    v5 = "true";
  }

  return fprintf(v3, "  used = %s, generation = %hu\n", v5, *(a1 + 13));
}

uint64_t rips_s_BltShade(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4, int32x4_t *a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v11 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 12);
  if ((v14 & 0x80) == 0)
  {
    if ((v14 & 0x1000) == 0)
    {

      return RIPLayerBltShade(a2, a3, a4, a5, a6, a8);
    }

    return 1;
  }

  v52 = 0uLL;
  v51[1] = 0;
  v51[0] = 0;
  v50[1] = 0;
  v50[0] = 0;
  v17 = *(a8 + 6);
  v18 = *(a1 + 120);
  if (!a3 || (v52 = vaddq_s32(*(a1 + 104), *a5), CGSBoundsIntersection((a3 + 12), v52.i32, v51)))
  {
    v19 = v17;
    if ((v18 * v19) <= 0.0039062)
    {
      goto LABEL_55;
    }

    if (!v11)
    {
      v11 = v50;
      result = CGSBoundsIntersection(a2 + 3, a5->i32, v50);
      if (!result)
      {
        return result;
      }
    }

    v20 = RIPLayerCreate(RIPLayer_ripl_class, v11, 0, 0, a2[13]);
    if (!v20)
    {
LABEL_55:
      if (!a3)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    v21 = v20;
    v22 = a8[1];
    v58[0] = *a8;
    v58[1] = v22;
    v23 = a8[3];
    v58[2] = a8[2];
    v59 = v23;
    v24 = *(a8 + 8);
    LODWORD(v58[0]) = 1;
    v60 = v24;
    *&v59 = 0x3FF0000000000000;
    RIPLayerBltShade(v20, 0, v11, a5, a6, v58);
    v25 = *(a1 + 124);
    if (v25 >= 0.5)
    {
      v26 = RIPLayerGaussianBlur(v21, a2[13], v25);
    }

    else
    {
      v26 = RIPLayerCreateWithLayer(*v21, (v21 + 12), v21, a2[13]);
    }

    v27 = v26;
    if (!v26)
    {
LABEL_54:
      (*(*v21 + 24))(v21);
      goto LABEL_55;
    }

    v28 = (v26 + 12);
    *(v26 + 12) = vadd_s32(*(v26 + 12), *(a1 + 96));
    if (a3)
    {
      v29 = (a3 + 12);
    }

    else
    {
      v29 = (v26 + 12);
    }

    if (!CGSBoundsIntersection(v29, v28, &v52))
    {
LABEL_53:
      (*(*v27 + 24))(v27);
      goto LABEL_54;
    }

    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v53 = 0u;
    if (*(a1 + 128) != 0.0 || *(a1 + 132) != 1.0)
    {
      RIPLayerResample(v27, (a1 + 128));
    }

    if (v19 >= 0.99609 && !*(a5[3].i64[1] + 72) && (*(a1 + 13) & 0x10) == 0 && *a8 <= 2 && (!a3 || !*(a3 + 56)))
    {
      RIPLayerMask(v27, v21);
    }

    v30 = *(a1 + 88);
    if (!v30)
    {
      if (default_shadow_color_predicate != -1)
      {
        dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
      }

      v30 = default_shadow_color_shadow_color;
    }

    Cache = CGColorTransformGetCache(*(a8 + 2));
    v49 = v27;
    if (Cache)
    {
      v32 = Cache[2];
      if (v32)
      {
        v33 = *(*(v32 + 24) + 48);
        if (v33 >> 61)
        {
          v46 = *(*(v32 + 24) + 48);
          v48 = &v46;
          MEMORY[0x1EEE9AC00](Cache);
          v47 = &v45;
          v34 = 0;
LABEL_45:
          v38 = (*(*a1 + 88))(a1);
          if (RIPColorConvertColorComponents(*(a8 + 2), v34, v30, v38))
          {
            RIPColorCreateWithColor(*(a8 + 6), v34, v46, 1.0);
            v40 = v39;
          }

          else
          {
            v40 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
            *v40 = &ripc_class;
            v40[1] = 0;
            v40[2] = 0;
            v40[3] = 0;
            *(v40 + 39) = 1065353216;
          }

          if (v34 != v47)
          {
            free(v34);
          }

          v41 = a8[3];
          v55 = a8[2];
          v56 = v41;
          v57 = *(a8 + 8);
          v42 = *a8;
          v54 = a8[1];
          v53 = v42;
          *&v56 = (v18 * v19);
          if ((*(a1 + 13) & 0x10) != 0)
          {
            RIPLayerDefine(a2, &v52);
          }

          v27 = v49;
          RIPLayerBltShape(a2, a3, v52.i32, v49, v40, 0, &v53);
          free(v40);
          goto LABEL_53;
        }

        Cache = (8 * v33);
      }

      else
      {
        Cache = 0;
      }
    }

    v48 = &v46;
    v35 = MEMORY[0x1EEE9AC00](Cache);
    v46 = v37;
    v47 = (&v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v37 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v34 = (&v46 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v34 = 0;
    }

    if (v37 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v34 = malloc_type_malloc(v35, 0xC7305A80uLL);
    }

    goto LABEL_45;
  }

LABEL_56:
  if (v11)
  {
    v43 = v11;
  }

  else
  {
    v43 = a5;
  }

  if (!CGSBoundsIntersection((a3 + 12), v43->i32, v51))
  {
    return 1;
  }

LABEL_60:
  if ((*(a1 + 13) & 0x10) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v44 = v51;
  }

  else
  {
    v44 = v11;
  }

  return RIPLayerBltShade(a2, a3, v44, a5, a6, a8);
}

void __default_shadow_color_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v1 = xmmword_1844DF970;
  default_shadow_color_shadow_color = CGColorCreate(DeviceGray, &v1);
  CGColorSpaceRelease(DeviceGray);
}

uint64_t rips_s_BltImage(uint64_t a1, int *a2, uint64_t a3, int32x4_t *a4, int32x4_t *a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v65 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (a2 || (v14 = a3) != 0)
  {
    v15 = v14[13];
  }

  else
  {
    v15 = 3;
  }

  v16 = *(a1 + 12);
  if ((v16 & 0x40) == 0)
  {
    if ((v16 & 0x1000) == 0)
    {

      return RIPLayerBltImage(a2, a3, a4->i32, a5->i32, a8);
    }

    return 1;
  }

  v56 = 0uLL;
  v55[1] = 0;
  v55[0] = 0;
  v18 = *(a8 + 6);
  v19 = *(a1 + 120);
  if (!a3 || (v56 = vaddq_s32(*(a1 + 104), *a5), CGSBoundsIntersection((a3 + 12), v56.i32, v55)))
  {
    v20 = v18;
    if ((v19 * v20) <= 0.0039062 || (a4 ? (v21 = a4) : (v21 = a5), (v22 = RIPLayerCreate(RIPLayer_ripl_class, v21->i64, 0, 0, v15)) == 0))
    {
LABEL_68:
      if (!a3)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

    v23 = v22;
    v24 = a8[1];
    v62[0] = *a8;
    v62[1] = v24;
    v25 = a8[3];
    v62[2] = a8[2];
    v63 = v25;
    v26 = *(a8 + 8);
    LODWORD(v62[0]) = 1;
    v64 = v26;
    *&v63 = 0x3FF0000000000000;
    RIPLayerBltImage(v22, 0, a4->i32, a5->i32, v62);
    v27 = *(a1 + 124);
    if (v27 >= 0.5)
    {
      v28 = RIPLayerGaussianBlur(v23, v15, v27);
    }

    else
    {
      v28 = RIPLayerCreateWithLayer(*v23, (v23 + 12), v23, v15);
    }

    v29 = v28;
    if (!v28)
    {
LABEL_67:
      (*(*v23 + 24))(v23);
      goto LABEL_68;
    }

    v30 = (v28 + 12);
    v31 = *(v28 + 3);
    v32 = *(a1 + 96);
    if (v31 < 0)
    {
      if ((0x80000000 - v31) > v32)
      {
LABEL_27:
        (*(*v28 + 24))(v28, v30);
        return 0;
      }
    }

    else if ((v31 ^ 0x7FFFFFFF) < v32)
    {
      goto LABEL_27;
    }

    v33 = *(v28 + 4);
    v34 = *(a1 + 100);
    if (v33 < 0)
    {
      if ((0x80000000 - v33) > v34)
      {
        goto LABEL_27;
      }
    }

    else if ((v33 ^ 0x7FFFFFFF) < v34)
    {
      goto LABEL_27;
    }

    *(v28 + 3) = v32 + v31;
    *(v28 + 4) = v34 + v33;
    if (a3)
    {
      v35 = (a3 + 12);
    }

    else
    {
      v35 = (v28 + 12);
    }

    if (!CGSBoundsIntersection(v35, v30, &v56))
    {
LABEL_66:
      (*(*v29 + 24))(v29);
      goto LABEL_67;
    }

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v57 = 0u;
    if (*(a1 + 128) != 0.0 || *(a1 + 132) != 1.0)
    {
      RIPLayerResample(v29, (a1 + 128));
    }

    if (v20 >= 0.99609 && !*(a5[1].i64[0] + 88) && (*(a1 + 13) & 0x10) == 0 && *a8 <= 2 && (!a3 || !*(a3 + 56)))
    {
      RIPLayerMask(v29, v23);
    }

    v36 = *(a1 + 88);
    if (!v36)
    {
      if (default_shadow_color_predicate != -1)
      {
        dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
      }

      v36 = default_shadow_color_shadow_color;
    }

    v53 = v36;
    Cache = CGColorTransformGetCache(*(a8 + 2));
    if (Cache)
    {
      v38 = Cache[2];
      if (v38)
      {
        v39 = *(*(v38 + 24) + 48);
        if (v39 >> 61)
        {
          v54 = &v51;
          MEMORY[0x1EEE9AC00](Cache);
          v52 = &v50;
          v40 = 0;
LABEL_58:
          v43 = (*(*a1 + 88))(a1);
          if (RIPColorConvertColorComponents(*(a8 + 2), v40, v53, v43))
          {
            RIPColorCreateWithColor(*(a8 + 6), v40, v39, 1.0);
            v45 = v44;
          }

          else
          {
            v45 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
            *v45 = &ripc_class;
            v45[1] = 0;
            v45[2] = 0;
            v45[3] = 0;
            *(v45 + 39) = 1065353216;
          }

          if (v40 != v52)
          {
            free(v40);
          }

          v46 = a8[3];
          v59 = a8[2];
          v60 = v46;
          v61 = *(a8 + 8);
          v47 = *a8;
          v58 = a8[1];
          v57 = v47;
          *&v60 = (v19 * v20);
          if ((*(a1 + 13) & 0x10) != 0)
          {
            RIPLayerDefine(a2, &v56);
          }

          RIPLayerBltShape(a2, a3, v56.i32, v29, v45, 0, &v57);
          free(v45);
          goto LABEL_66;
        }

        Cache = (8 * v39);
      }

      else
      {
        v39 = 0;
        Cache = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v54 = &v51;
    v41 = MEMORY[0x1EEE9AC00](Cache);
    v52 = (&v51 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v39 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v40 = (&v51 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v40 = 0;
    }

    if (v39 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v40 = malloc_type_malloc(v41, 0xD68DC346uLL);
    }

    goto LABEL_58;
  }

LABEL_69:
  if (a4)
  {
    v48 = a4;
  }

  else
  {
    v48 = a5;
  }

  if (!CGSBoundsIntersection((a3 + 12), v48->i32, v55))
  {
    return 1;
  }

LABEL_73:
  if ((*(a1 + 13) & 0x10) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v49 = v55;
  }

  else
  {
    v49 = a4;
  }

  return RIPLayerBltImage(a2, a3, v49, a5->i32, a8);
}

CGColorSpaceRef rips_s_ColorSpace(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return rips_s_cs;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    return CGTaggedColorGetColorSpace(v1);
  }

  return *(v1 + 24);
}

uint64_t __CGPDFPatternGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFPatternGetTypeID_class);
  CGPDFPatternGetTypeID_id = result;
  return result;
}

void CGPDFPatternFinalize(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    CFRelease(v1);
  }
}

void path_iterator_dilator_create(atomic_uint *a1, double a2, double a3)
{
  v5 = malloc_type_malloc(0x20uLL, 0x10000408E5DAE1CuLL);
  v6 = a2;
  *v5 = v6;
  v7 = a3;
  v5[3] = v7;
  v5[1] = 0.0;
  v5[4] = 0.0;
  *(v5 + 28) = 1;
  v5[6] = 0.0;
  operator new();
}

void path_dilator_end(uint64_t a1, void *a2)
{
  addClosepath(a1, a2);
  if (a2)
  {
    v3 = a2[4];
    if (v3)
    {
      v4 = a2[1];
      v5 = a2[6];

      v3(v4, v5);
    }
  }
}

void addClosepath(uint64_t result, uint64_t a2)
{
  if ((*(result + 28) & 1) == 0)
  {
    v4 = addLine(result, a2, *(result + 8), *(result + 20));
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 4, 0, *(a2 + 48), v4);
    }

    *(result + 28) = 1;
  }
}

float addLine(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + 4);
  v9 = a3 - v8;
  v10 = *(a1 + 16);
  v11 = a4 - v10;
  if (v11 >= 0.0)
  {
    v12 = 0.0;
    if (v11 > 0.0)
    {
      v12 = *a1;
    }
  }

  else
  {
    v12 = -*a1;
  }

  v13 = v9 <= 0.0;
  if (v9 >= 0.0)
  {
    v14 = *(a1 + 12);
    v15 = 0.0;
    if (!v13)
    {
      v15 = -v14;
    }
  }

  else
  {
    v14 = *(a1 + 12);
    v15 = v14;
  }

  v16 = ((v8 + v12) + *(a1 + 24));
  v17 = ((v10 + v15) + v14);
  if (*(a1 + 28) == 1)
  {
    v21 = v16;
    v22 = v17;
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 0, &v21, *(a2 + 48));
    }

    *(a1 + 28) = 0;
  }

  else
  {
    v21 = v16;
    v22 = v17;
    if (a2)
    {
      (*(a2 + 24))(*(a2 + 8), 1, &v21, *(a2 + 48));
    }
  }

  v18 = v15 + a4 + *(a1 + 12);
  v21 = v12 + a3 + *(a1 + 24);
  v22 = v18;
  if (a2)
  {
    (*(a2 + 24))(*(a2 + 8), 1, &v21, *(a2 + 48));
  }

  v19 = a3;
  *(a1 + 4) = v19;
  result = a4;
  *(a1 + 16) = result;
  return result;
}

float path_dilator_iterate(uint64_t a1, int a2, double *a3, uint64_t a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_21;
      }

      v12 = *a3;
      v13 = a3[1];

      return addLine(a1, a4, v12, v13);
    }

    else
    {
      v23 = *a3;
      v22 = a3[1];
      if ((*(a1 + 28) & 1) == 0)
      {
        addClosepath(a1, a4);
      }

      result = v23;
      v24 = v22;
      *(a1 + 4) = result;
      *(a1 + 8) = result;
      *(a1 + 16) = v24;
      *(a1 + 20) = v24;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v14 = (*a3 + *a3) / 3.0;
        v15 = a3[2];
        v16 = a3[3];
        v17 = v15 / 3.0 + v14;
        v18 = (a3[1] + a3[1]) / 3.0;
        v19 = ((*(a1 + 4) / 3.0) + v14);
        v20 = ((*(a1 + 16) / 3.0) + v18);
        v21 = v16 / 3.0 + v18;
        break;
      case 3:
        v19 = *a3;
        v20 = a3[1];
        v17 = a3[2];
        v21 = a3[3];
        v15 = a3[4];
        v16 = a3[5];
        break;
      case 4:

        addClosepath(a1, a4);
        return result;
      default:
LABEL_21:
        abort();
    }

    addCube(a1, a4, v19, v20, v17, v21, v15, v16);
  }

  return result;
}

uint64_t addCube(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v12 = *(a1 + 4);
  v13 = (a3 - a5) * a3 + a5 * (a5 - v12) + a7 * (v12 - a3);
  if (v13 >= 0.0)
  {
    v14 = *(a1 + 16);
    v15 = a7 - v12 + (a3 - a5) * 3.0;
    v16 = v12 + a5 + a3 * -2.0;
    if (v15 == 0.0)
    {
      if (v16 == 0.0)
      {
        goto LABEL_22;
      }

      v17 = 2.0;
      v18 = (v12 - a3) * 0.5 / v16;
    }

    else if (v16 != 0.0 || (v17 = 0.0, v18 = 0.0, v13 != 0.0))
    {
      v19 = 1.0;
      if (v16 < 0.0)
      {
        v19 = -1.0;
      }

      v20 = -(v16 + v19 * sqrt(v13));
      v21 = v20 / v15;
      v22 = (a4 - v14) / v20;
      if (v21 >= v22)
      {
        v18 = v22;
      }

      else
      {
        v18 = v21;
      }

      if (v21 <= v22)
      {
        v17 = v22;
      }

      else
      {
        v17 = v21;
      }
    }

    v23 = 2.0;
    if (v18 < 1.0e-10)
    {
      v24 = v17;
    }

    else
    {
      v23 = v17;
      v24 = v18;
    }

    if (v24 >= 1.0e-10 && v24 <= 1.0)
    {
      if (1.0 - v23 >= 1.0e-10)
      {
        v40 = (v23 - v24) / (1.0 - v24);
        v41 = v12 + a3 * -2.0 + a5;
        v42 = v14 + a4 * -2.0 + a6;
        v43 = v12 + (v24 * ((a7 + (a5 - a3) * -3.0 - v12) * v24 + v41 * 3.0) + (a3 - v12) * 3.0) * v24;
        v44 = v14 + (v24 * ((a8 + (a6 - a4) * -3.0 - v14) * v24 + v42 * 3.0) + (a4 - v14) * 3.0) * v24;
        v51 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v24) + (a7 - a5) * -2.0) * (1.0 - v24);
        v45 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v24) + (a8 - a6) * -2.0) * (1.0 - v24);
        v46 = a7 - (a7 - a5) * (1.0 - v24);
        v47 = a8 - (a8 - a6) * (1.0 - v24);
        addCubeMonotonicX(a1, a2, v12 + (a3 - v12) * v24, v14 + (a4 - v14) * v24, v12 + (v41 * v24 + (a3 - v12) * 2.0) * v24, v14 + (v42 * v24 + (a4 - v14) * 2.0) * v24, v43, v44);
        v48 = a8 - v47;
        v35 = v43 + (v51 - v43) * v40;
        v36 = v44 + (v45 - v44) * v40;
        v49 = v46 + v43 + v51 * -2.0;
        v37 = v43 + (v40 * v49 + (v51 - v43) * 2.0) * v40;
        v50 = v47 + v44 + v45 * -2.0;
        v38 = v44 + (v40 * v50 + (v45 - v44) * 2.0) * v40;
        v29 = v43 + (v40 * (v40 * (a7 + (v46 - v51) * -3.0 - v43) + v49 * 3.0) + (v51 - v43) * 3.0) * v40;
        v30 = v44 + (v40 * (v40 * (a8 + (v47 - v45) * -3.0 - v44) + v50 * 3.0) + (v45 - v44) * 3.0) * v40;
        v31 = a7 + ((1.0 - v40) * (a7 + v46 * -2.0 + v51) + (a7 - v46) * -2.0) * (1.0 - v40);
        v32 = a8 + ((1.0 - v40) * (a8 + v47 * -2.0 + v45) + (a8 - v47) * -2.0) * (1.0 - v40);
        v33 = a7 - (a7 - v46) * (1.0 - v40);
        v34 = a8 - v48 * (1.0 - v40);
        a1 = v11;
      }

      else
      {
        v25 = v12 + a3 * -2.0 + a5;
        v26 = v12 + (v25 * v24 + (a3 - v12) * 2.0) * v24;
        v27 = v14 + a4 * -2.0 + a6;
        v28 = v14 + (v27 * v24 + (a4 - v14) * 2.0) * v24;
        v29 = v12 + (v24 * ((a7 + (a5 - a3) * -3.0 - v12) * v24 + v25 * 3.0) + (a3 - v12) * 3.0) * v24;
        v30 = v14 + (v24 * ((a8 + (a6 - a4) * -3.0 - v14) * v24 + v27 * 3.0) + (a4 - v14) * 3.0) * v24;
        v31 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v24) + (a7 - a5) * -2.0) * (1.0 - v24);
        v32 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v24) + (a8 - a6) * -2.0) * (1.0 - v24);
        v33 = a7 - (a7 - a5) * (1.0 - v24);
        v34 = a8 - (a8 - a6) * (1.0 - v24);
        v35 = v12 + (a3 - v12) * v24;
        v36 = v14 + (a4 - v14) * v24;
        v37 = v26;
        v38 = v28;
      }

      addCubeMonotonicX(a1, a2, v35, v36, v37, v38, v29, v30);
      a1 = v11;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;
    }
  }

LABEL_22:

  return addCubeMonotonicX(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t addCubeMonotonicX(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v12 = *(a1 + 16);
  v13 = (a4 - a6) * a4 + a6 * (a6 - v12) + a8 * (v12 - a4);
  if (v13 >= 0.0)
  {
    v14 = a8 - v12 + (a4 - a6) * 3.0;
    v15 = v12 + a6 + a4 * -2.0;
    if (v14 == 0.0)
    {
      if (v15 == 0.0)
      {
        goto LABEL_22;
      }

      v16 = 2.0;
      v17 = (v12 - a4) * 0.5 / v15;
    }

    else if (v15 != 0.0 || (v16 = 0.0, v17 = 0.0, v13 != 0.0))
    {
      v18 = 1.0;
      if (v15 < 0.0)
      {
        v18 = -1.0;
      }

      v19 = -(v15 + v18 * sqrt(v13));
      v20 = v19 / v14;
      v21 = (a4 - v12) / v19;
      if (v20 >= v21)
      {
        v17 = v21;
      }

      else
      {
        v17 = v20;
      }

      if (v20 <= v21)
      {
        v16 = v21;
      }

      else
      {
        v16 = v20;
      }
    }

    v22 = 2.0;
    if (v17 < 1.0e-10)
    {
      v23 = v16;
    }

    else
    {
      v22 = v16;
      v23 = v17;
    }

    if (v23 >= 1.0e-10 && v23 <= 1.0)
    {
      v24 = *(a1 + 4);
      if (1.0 - v22 >= 1.0e-10)
      {
        v40 = (v22 - v23) / (1.0 - v23);
        v41 = v24 + a3 * -2.0 + a5;
        v42 = v12 + a4 * -2.0 + a6;
        v43 = v24 + (v23 * ((a7 + (a5 - a3) * -3.0 - v24) * v23 + v41 * 3.0) + (a3 - v24) * 3.0) * v23;
        v44 = v12 + (v23 * ((a8 + (a6 - a4) * -3.0 - v12) * v23 + v42 * 3.0) + (a4 - v12) * 3.0) * v23;
        v51 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v23) + (a7 - a5) * -2.0) * (1.0 - v23);
        v45 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v23) + (a8 - a6) * -2.0) * (1.0 - v23);
        v46 = a7 - (a7 - a5) * (1.0 - v23);
        v47 = a8 - (a8 - a6) * (1.0 - v23);
        addCubeMonotonic(a1, a2, v24 + (a3 - v24) * v23, v12 + (a4 - v12) * v23, v24 + (v41 * v23 + (a3 - v24) * 2.0) * v23, v12 + (v42 * v23 + (a4 - v12) * 2.0) * v23, v43, v44);
        v48 = a8 - v47;
        v35 = v43 + (v51 - v43) * v40;
        v36 = v44 + (v45 - v44) * v40;
        v49 = v46 + v43 + v51 * -2.0;
        v37 = v43 + (v40 * v49 + (v51 - v43) * 2.0) * v40;
        v50 = v47 + v44 + v45 * -2.0;
        v38 = v44 + (v40 * v50 + (v45 - v44) * 2.0) * v40;
        v29 = v43 + (v40 * (v40 * (a7 + (v46 - v51) * -3.0 - v43) + v49 * 3.0) + (v51 - v43) * 3.0) * v40;
        v30 = v44 + (v40 * (v40 * (a8 + (v47 - v45) * -3.0 - v44) + v50 * 3.0) + (v45 - v44) * 3.0) * v40;
        v31 = a7 + ((1.0 - v40) * (a7 + v46 * -2.0 + v51) + (a7 - v46) * -2.0) * (1.0 - v40);
        v32 = a8 + ((1.0 - v40) * (a8 + v47 * -2.0 + v45) + (a8 - v47) * -2.0) * (1.0 - v40);
        v33 = a7 - (a7 - v46) * (1.0 - v40);
        v34 = a8 - v48 * (1.0 - v40);
        a1 = v11;
      }

      else
      {
        v25 = v24 + a3 * -2.0 + a5;
        v26 = v24 + (v25 * v23 + (a3 - v24) * 2.0) * v23;
        v27 = v12 + a4 * -2.0 + a6;
        v28 = v12 + (v27 * v23 + (a4 - v12) * 2.0) * v23;
        v29 = v24 + (v23 * ((a7 + (a5 - a3) * -3.0 - v24) * v23 + v25 * 3.0) + (a3 - v24) * 3.0) * v23;
        v30 = v12 + (v23 * ((a8 + (a6 - a4) * -3.0 - v12) * v23 + v27 * 3.0) + (a4 - v12) * 3.0) * v23;
        v31 = a7 + ((a7 + a5 * -2.0 + a3) * (1.0 - v23) + (a7 - a5) * -2.0) * (1.0 - v23);
        v32 = a8 + ((a8 + a6 * -2.0 + a4) * (1.0 - v23) + (a8 - a6) * -2.0) * (1.0 - v23);
        v33 = a7 - (a7 - a5) * (1.0 - v23);
        v34 = a8 - (a8 - a6) * (1.0 - v23);
        v35 = v24 + (a3 - v24) * v23;
        v36 = v12 + (a4 - v12) * v23;
        v37 = v26;
        v38 = v28;
      }

      addCubeMonotonic(a1, a2, v35, v36, v37, v38, v29, v30);
      a1 = v11;
      a3 = v31;
      a4 = v32;
      a5 = v33;
      a6 = v34;
    }
  }

LABEL_22:

  return addCubeMonotonic(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t addCubeMonotonic(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = result;
  v36 = *MEMORY[0x1E69E9840];
  v16 = *(result + 4);
  v17 = a7 - v16;
  v18 = *(result + 16);
  v19 = a8 - v18;
  if (v19 >= 0.0)
  {
    v20 = 0.0;
    if (v19 > 0.0)
    {
      v20 = *result;
    }
  }

  else
  {
    v20 = -*result;
  }

  v21 = v17 <= 0.0;
  if (v17 >= 0.0)
  {
    v22 = *(result + 12);
    v23 = 0.0;
    if (!v21)
    {
      v23 = -v22;
    }
  }

  else
  {
    v22 = *(result + 12);
    v23 = v22;
  }

  v24 = ((v16 + v20) + *(result + 24));
  v25 = ((v18 + v23) + v22);
  if (*(result + 28) == 1)
  {
    v30 = v24;
    v31 = v25;
    if (a2)
    {
      result = (*(a2 + 24))(*(a2 + 8), 0, &v30, *(a2 + 48));
    }

    *(v15 + 28) = 0;
  }

  else
  {
    v30 = v24;
    v31 = v25;
    if (a2)
    {
      result = (*(a2 + 24))(*(a2 + 8), 1, &v30, *(a2 + 48));
    }
  }

  if (a2)
  {
    v26 = *(v15 + 12);
    v27 = *(v15 + 24);
    v30 = v20 + a3 + v27;
    v31 = v23 + a4 + v26;
    v32 = v20 + a5 + v27;
    v33 = v23 + a6 + v26;
    v34 = v20 + a7 + v27;
    v35 = v23 + a8 + v26;
    result = (*(a2 + 24))(*(a2 + 8), 3, &v30, *(a2 + 48));
  }

  v28 = a7;
  *(v15 + 4) = v28;
  v29 = a8;
  *(v15 + 16) = v29;
  return result;
}

uint64_t path_dilator_begin(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 28) = 1;
  if (a3)
  {
    v3 = a3[2];
    if (v3)
    {
      return v3(a3[1], a2, a3[6]);
    }
  }

  return result;
}

void path_iterator_orientation_create(atomic_uint *a1)
{
  v1 = malloc_type_malloc(0x38uLL, 0x10200402A56628AuLL);
  v2 = malloc_type_malloc(0x200uLL, 0x1030040004372B3uLL);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = v2 + 64;
  v2[3] = (v2 + 55) & 0xFFFFFFFFFFFFFFF8;
  v2[4] = 0;
  v2[5] = 464;
  *v1 = v2;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  v1[48] = 1;
  operator new();
}

void path_orientation_release_info(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    path_free(v2);
  }

  free(a1);
}

void path_orientation_end(uint64_t result, void *a2)
{
  if ((*(result + 48) & 1) == 0)
  {
    *(result + 40) = *(result + 40) + (*(result + 8) - *(result + 24)) * (*(result + 32) + *(result + 16)) * 0.5;
  }

  if (*result)
  {
    if (*(result + 40) > 0.0)
    {
      v4 = malloc_type_malloc(0x20uLL, 0x10200403F01EE60uLL);
      v5 = malloc_type_malloc(0x200uLL, 0x1030040004372B3uLL);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = v5 + 64;
      v5[3] = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
      v5[4] = 0;
      v5[5] = 464;
      v4[3] = v5;
      operator new();
    }

    path_iterator_iterate(a2, *result);
    path_free(*result);
    *result = 0;
  }

  if (a2)
  {
    v6 = a2[4];
    if (v6)
    {
      v7 = a2[1];
      v8 = a2[6];

      v6(v7, v8);
    }
  }
}

__n128 path_orientation_iterate(uint64_t a1, uint64_t a2, double *a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_17;
      }

      *(a1 + 40) = *(a1 + 40) + (*a3 - *(a1 + 24)) * (*(a1 + 32) + a3[1]) * 0.5;
      *(a1 + 24) = *a3;
      *(a1 + 48) = 0;
    }

    else
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        *(a1 + 40) = *(a1 + 40) + (*(a1 + 8) - *(a1 + 24)) * (*(a1 + 32) + *(a1 + 16)) * 0.5;
      }

      *(a1 + 8) = *a3;
      *(a1 + 24) = *a3;
      *(a1 + 48) = 1;
      LODWORD(a2) = 0;
    }

    v8 = path_add(a1, a2);
    result = *a3;
    *v8 = *a3;
    return result;
  }

  if (a2 == 2)
  {
    orientation_cubic_segment(a1, *(a1 + 24), *(a1 + 32), (*(a1 + 24) + *a3 * 2.0) / 3.0, (*(a1 + 32) + a3[1] * 2.0) / 3.0, (a3[2] + *a3 * 2.0) / 3.0, (a3[3] + a3[1] * 2.0) / 3.0, a3[2], a3[3]);
    *(a1 + 24) = *(a3 + 1);
    *(a1 + 48) = 0;
    v6 = path_add(a1, 2u);
    *v6 = *a3;
    result = *(a3 + 2);
    *(v6 + 16) = result;
    return result;
  }

  if (a2 == 3)
  {
    orientation_cubic_segment(a1, *(a1 + 24), *(a1 + 32), *a3, a3[1], a3[2], a3[3], a3[4], a3[5]);
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 48) = 0;
    v7 = path_add(a1, 3u);
    *v7 = *a3;
    *(v7 + 16) = *(a3 + 1);
    result = *(a3 + 4);
    *(v7 + 32) = result;
    return result;
  }

  if (a2 != 4)
  {
LABEL_17:
    abort();
  }

  *(a1 + 40) = *(a1 + 40) + (*(a1 + 8) - *(a1 + 24)) * (*(a1 + 32) + *(a1 + 16)) * 0.5;
  *(a1 + 24) = *(a1 + 8);
  *(a1 + 48) = 1;

  path_add(a1, 4u);
  return result;
}

double orientation_cubic_segment(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 == a4 && a3 == a5)
  {
    v14 = a2 == a6 && a3 == a7;
    if (v14 || a6 == a8 && a7 == a9)
    {
      *(a1 + 40) = (a8 - a2) * (a3 + a9) * 0.5 + *(a1 + 40);
    }

    goto LABEL_24;
  }

  if (a4 != a8 || a5 != a9 || a6 != a8 || a7 != a9)
  {
LABEL_24:
    v13 = (a8 * (a3 + a7 * 6.0 + a9 * 10.0 + a5 * 3.0) - a2 * (a9 + a5 * 6.0 + a3 * 10.0 + a7 * 3.0) + a4 * 3.0 * (-(a7 - a3 * 2.0) - a9) + a6 * -3.0 * (-(a5 - a9 * 2.0) - a3)) / 20.0;
    goto LABEL_25;
  }

  v13 = (a8 - a2) * (a3 + a9) * 0.5;
LABEL_25:
  result = v13 + *(a1 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t path_orientation_begin(uint64_t result, uint64_t a2, void *a3)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
  if (a3)
  {
    v3 = a3[2];
    if (v3)
    {
      return v3(a3[1], a2, a3[6]);
    }
  }

  return result;
}

double *CGDashCreate(const void *a1, uint64_t a2, double a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = malloc_type_calloc(1uLL, 8 * a2 + 24, 0x1000040D315E998uLL);
    *v3 = 1;
    v3[1] = a3;
    *(v3 + 2) = a2;
    memcpy(v3 + 3, a1, 8 * a2);
  }

  return v3;
}

atomic_uint *CGDashRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGDashRelease(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(a1);
    }
  }
}

uint64_t CGDashGetPattern(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    if (a1)
    {
      v3 = *(a1 + 8);
    }

    else
    {
      v3 = 0;
    }

    *a2 = v3;
  }

  if (a3)
  {
    if (a1)
    {
      v4 = *(a1 + 16);
    }

    else
    {
      v4 = 0;
    }

    *a3 = v4;
  }

  if (a1)
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

float16x4_t *CMYKf16_pattern(uint64_t a1, float16x4_t *a2, unsigned int a3, int a4, float32x4_t *a5, float a6, double a7, double a8, int32x4_t a9, double a10, double a11)
{
  v14 = *(*a1 + 64);
  a9.i32[0] = *v14;
  LODWORD(a11) = v14[1];
  if (a2 && a3 > 9 || (v30 = a9, v31 = a11, v15 = malloc_type_malloc(0x3AuLL, 0x1080040E00A32E4uLL), a9 = v30, a11 = v31, (a2 = v15) != 0))
  {
    if (*a9.i32 <= a6)
    {
      _S0 = a6;
    }

    else
    {
      _S0 = *a9.i32;
    }

    if (*&a11 < a6)
    {
      _S0 = *&a11;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v22 = a9;
        *&v22.i32[1] = _S0 * (*&a11 - a5->f32[0]);
        v21 = vzip1q_s32(v22, v22);
        v21.i32[2] = a9.i32[0];
        break;
      case 4:
        v21 = vmulq_n_f32(*a5, _S0);
        break;
      case 3:
        v18 = _S0 * (*&a11 - a5->f32[2]);
        v20 = vdup_lane_s32(*&a11, 0);
        v19 = vmul_n_f32(vsub_f32(v20, *a5->f32), _S0);
        v20.i32[0] = v19.i32[1];
        if (v19.f32[0] < v19.f32[1])
        {
          v20.f32[0] = v19.f32[0];
        }

        if (v18 < v20.f32[0])
        {
          v20.f32[0] = _S0 * (*&a11 - a5->f32[2]);
        }

        *v21.f32 = vsub_f32(v19, vdup_lane_s32(v20, 0));
        v21.f32[2] = v18 - v20.f32[0];
        v21.i32[3] = v20.i32[0];
        break;
      default:
        v21 = vdupq_lane_s32(*a9.i8, 0);
        break;
    }

    *a2->i8 = xmmword_18439CB50;
    a2[3].i32[0] = 0;
    a2[2] = 1;
    a2[6] = vcvt_f16_f32(v21);
    __asm { FCVT            H0, S0 }

    a2[7].i16[0] = _H0;
    v28 = a2 + 7;
    if (!_NF)
    {
      v28 = 0;
    }

    a2[4] = &a2[6];
    a2[5] = v28;
  }

  return a2;
}

uint64_t CMYKf16_mark_inner(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v880 = *MEMORY[0x1E69E9840];
  v20 = *(v5 + 96);
  v21 = *(v5 + 48);
  v22 = *(v4 + 16 * *v5 + 8 * (v20 == 0) + 4 * (v21 == 0));
  if (v22 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = v5;
  v25 = *(v5 + 4);
  v26 = v25 - 1;
  if (v25 < 1)
  {
    return 0;
  }

  v27 = *(v5 + 8);
  v28 = (v27 - 1);
  if (v27 < 1)
  {
    return 0;
  }

  v29 = *(v5 + 136);
  v820 = v5;
  if ((*v5 & 0xFF0000) == 0x50000 || !v29)
  {
    v31 = *v5 & 0xFF00;
    v823 = *(v4 + 16 * *v5 + 8 * (v20 == 0) + 4 * (v21 == 0));
    if (v31 == 1024)
    {
      v879[0] = *(v5 + 4);
      v869[0] = v27;
      if (v20)
      {
        _Q5.i16[0] = *v20;
      }

      else
      {
        _Q5.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      __asm { FCVT            S17, H5 }

      v49 = *(v5 + 28) >> 3;
      v50 = *(v5 + 12);
      v51 = *(v5 + 16);
      if (v21)
      {
        v52 = *(v5 + 32) >> 1;
        v859 = v21 + 2 * v52 * v51 + 2 * v50;
        v855 = 1;
      }

      else
      {
        v859 = 0;
        v52 = 0;
        v855 = 0;
      }

      v57 = **(v5 + 88);
      _Q0.n128_f32[0] = 1.0 - *_D17.i32;
      v849 = _Q0.n128_u64[0];
      v58 = *(v5 + 40) + 8 * v51 * v49 + 8 * v50;
      v862 = _Q5;
      v864 = v57;
      v866 = _D17;
      v851 = v52;
      v854 = *(v5 + 28) >> 3;
      v857 = v58;
      if (v29)
      {
        shape_enum_clip_alloc(v4, v5, v29, 1, 1, 1, *(v5 + 104), *(v5 + 108), v25, v27);
        v43 = v59;
        v60 = v859;
        v61 = v52;
        if (v59)
        {
          goto LABEL_408;
        }

        return 1;
      }

      v43 = 0;
      if (v21)
      {
        v62 = v25;
      }

      else
      {
        v62 = 0;
      }

      v63 = v25;
      v61 = v52 - v62;
      v60 = v859;
      v64 = v58;
      v65 = v63;
      v66 = v63;
LABEL_66:
      v58 = v49 - v66;
      switch(v22)
      {
        case 0:
          v102 = v58 + v65;
          v103 = v869[0];
          v104 = v869[0] - 1;
          v105 = &v64[(v102 * v104) & (v102 >> 63)];
          if (v102 < 0)
          {
            v102 = -v102;
          }

          CGBlt_fillBytes(8 * v65, v869[0], 0, v105, 8 * v102);
          if (!v21)
          {
            goto LABEL_400;
          }

          v106 = v61 + v65;
          v60 += 2 * ((v106 * v104) & (v106 >> 63));
          if (v106 >= 0)
          {
            v61 += v65;
          }

          else
          {
            v61 = -v106;
          }

          v107 = 2 * v65;
          v108 = 2 * v61;
          v109 = v103;
          v110 = 0;
          goto LABEL_399;
        case 1:
          v218 = v58 + v65;
          if (v218 < 0)
          {
            v64 += v218 * (v869[0] - 1);
            v218 = -v218;
          }

          v219 = *(v820 + 88);
          v220 = v869[0];
          if (v219)
          {
            CGSFillDRAM64(v64, 8 * v218, 8 * v65, v869[0], v219, 8, 8, 1, 0, 0);
          }

          else
          {
            CGBlt_fillBytes(8 * v65, v869[0], 0, v64, 8 * v218);
          }

          if (v21)
          {
            v301 = *(v820 + 96);
            if (!v301)
            {
              v301 = &_CMYK_float_alpha;
            }

            v60 += 2 * (((v61 + v65) * (v220 - 1)) & ((v61 + v65) >> 63));
            if ((v61 + v65) >= 0)
            {
              v61 += v65;
            }

            else
            {
              v61 = -(v61 + v65);
            }

            v110 = *v301;
            v107 = 2 * v65;
            v108 = 2 * v61;
            v109 = v220;
LABEL_399:
            CGBlt_fillBytes(v107, v109, v110, v60, v108);
          }

LABEL_400:
          LODWORD(v22) = v823;
          goto LABEL_405;
        case 2:
          v182 = v869[0];
          v183 = v65 >> 2;
          v184 = vcvtq_f32_f16(*&v57);
          v185 = 8 * v855;
          v186 = 2 * v855;
          if (v21)
          {
            v187 = vdupq_lane_s32(v849, 0);
            v188 = v183 + 1;
            do
            {
              v189 = v65;
              if (v65 >= 4)
              {
                v190 = v188;
                do
                {
                  *v64 = vcvt_f16_f32(vmlaq_f32(v184, v187, vcvtq_f32_f16(*v64)));
                  _H2 = *v60;
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v849.i32);
                  __asm { FCVT            H2, S2 }

                  *v60 = LOWORD(_S2);
                  v64[1] = vcvt_f16_f32(vmlaq_f32(v184, v187, vcvtq_f32_f16(v64[1])));
                  LOWORD(_S2) = *(v60 + 2);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v849.i32);
                  __asm { FCVT            H2, S2 }

                  *(v60 + 2) = LOWORD(_S2);
                  v64[2] = vcvt_f16_f32(vmlaq_f32(v184, v187, vcvtq_f32_f16(v64[2])));
                  LOWORD(_S2) = *(v60 + 4);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v849.i32);
                  __asm { FCVT            H2, S2 }

                  *(v60 + 4) = LOWORD(_S2);
                  v64[3] = vcvt_f16_f32(vmlaq_f32(v184, v187, vcvtq_f32_f16(v64[3])));
                  LOWORD(_S2) = *(v60 + 6);
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v849.i32);
                  __asm { FCVT            H2, S2 }

                  *(v60 + 6) = LOWORD(_S2);
                  v64 += 4;
                  --v190;
                  v60 += v185;
                }

                while (v190 > 1);
                v189 = v65 & 3;
              }

              if (v189 >= 1)
              {
                v200 = v189 + 1;
                do
                {
                  *v64 = vcvt_f16_f32(vmlaq_f32(v184, v187, vcvtq_f32_f16(*v64)));
                  ++v64;
                  _H2 = *v60;
                  __asm { FCVT            S2, H2 }

                  _S2 = *_D17.i32 + (_S2 * *v849.i32);
                  __asm { FCVT            H2, S2 }

                  *v60 = LOWORD(_S2);
                  v60 += v186;
                  --v200;
                }

                while (v200 > 1);
              }

              v64 += v58;
              v60 += 2 * v61;
              --v182;
            }

            while (v182);
          }

          else
          {
            v295 = vdupq_lane_s32(v849, 0);
            v296 = v183 + 1;
            do
            {
              v297 = v65;
              if (v65 >= 4)
              {
                v298 = v296;
                do
                {
                  v299 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v184, v295, vcvtq_f32_f16(v64[2]))), vmlaq_f32(v184, v295, vcvt_hight_f32_f16(*v64[2].i8)));
                  *v64->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v184, v295, vcvtq_f32_f16(*v64))), vmlaq_f32(v184, v295, vcvt_hight_f32_f16(*v64->i8)));
                  *v64[2].i8 = v299;
                  v64 += 4;
                  --v298;
                  v60 += v185;
                }

                while (v298 > 1);
                v297 = v65 & 3;
              }

              if (v297 >= 1)
              {
                v300 = v297 + 1;
                do
                {
                  *v64 = vcvt_f16_f32(vmlaq_f32(v184, v295, vcvtq_f32_f16(*v64)));
                  ++v64;
                  v60 += v186;
                  --v300;
                }

                while (v300 > 1);
              }

              v64 += v58;
              v60 += 2 * v61;
              --v182;
            }

            while (v182);
          }

          goto LABEL_404;
        case 3:
          v210 = v869[0];
          do
          {
            v211 = v65;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  *v64 = v57;
                  v213 = *_Q5.i16;
                }

                else
                {
                  *v64 = vmul_n_f16(*&v57, _H1);
                  v213 = *_Q5.i16 * _H1;
                }
              }

              else
              {
                *v64 = 0;
                LOWORD(v213) = 0;
              }

              *v60 = v213;
              ++v64;
              v60 += 2 * v855;
              --v211;
            }

            while (v211);
            v64 += v58;
            v60 += 2 * v61;
            --v210;
          }

          while (v210);
          goto LABEL_404;
        case 4:
          v149 = vcvtq_f32_f16(*&v57);
          v150 = v869[0];
          do
          {
            v151 = v65;
            do
            {
              _H2 = *v60;
              __asm { FCVT            S2, H2 }

              v154 = 1.0 - _S2;
              if (v154 <= 0.0)
              {
                *v64 = 0;
                _H2 = 0;
              }

              else if (v154 >= 1.0)
              {
                *v64 = v57;
                _H2 = _Q5.i16[0];
              }

              else
              {
                *v64 = vcvt_f16_f32(vmulq_n_f32(v149, v154));
                _S2 = v154 * *_D17.i32;
                __asm { FCVT            H2, S2 }
              }

              *v60 = _H2;
              ++v64;
              v60 += 2 * v855;
              --v151;
            }

            while (v151);
            v64 += v58;
            v60 += 2 * v61;
            --v150;
          }

          while (v150);
          goto LABEL_404;
        case 5:
          v231 = vcvtq_f32_f16(*&v57);
          v232 = v869[0];
          do
          {
            v233 = v65;
            do
            {
              _H1 = *v60;
              __asm { FCVT            S1, H1 }

              *v64 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v64), *v849.i32), v231, _S1));
              ++v64;
              _S1 = (*v849.i32 * _S1) + (*_D17.i32 * _S1);
              __asm { FCVT            H1, S1 }

              *v60 = LOWORD(_S1);
              v60 += 2 * v855;
              --v233;
            }

            while (v233);
            v64 += v58;
            v60 += 2 * v61;
            --v232;
          }

          while (v232);
          goto LABEL_404;
        case 6:
          v248 = vcvtq_f32_f16(*&v57);
          v249 = v869[0];
          while (1)
          {
            v250 = v65;
            do
            {
              _H2 = *v60;
              __asm { FCVT            S2, H2 }

              v253 = 1.0 - _S2;
              if ((1.0 - _S2) >= 1.0)
              {
                *v64 = v57;
                _H2 = _Q5.i16[0];
              }

              else
              {
                if (v253 <= 0.0)
                {
                  goto LABEL_293;
                }

                *v64 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v64), v248, v253));
                _S2 = _S2 + (*_D17.i32 * v253);
                __asm { FCVT            H2, S2 }
              }

              *v60 = _H2;
LABEL_293:
              ++v64;
              v60 += 2 * v855;
              --v250;
            }

            while (v250);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v249)
            {
LABEL_404:
              v869[0] = 0;
              goto LABEL_405;
            }
          }

        case 7:
          v214 = v869[0];
          v215 = 2 * v855;
          if (v21)
          {
            do
            {
              v216 = v65;
              do
              {
                *v64 = vmul_n_f16(*v64, *_Q5.i16);
                ++v64;
                *v60 = *_Q5.i16 * *v60;
                v60 += v215;
                --v216;
              }

              while (v216);
              v64 += v58;
              v60 += 2 * v61;
              --v214;
            }

            while (v214);
          }

          else
          {
            do
            {
              v217 = v65;
              do
              {
                *v64 = vmul_n_f16(*v64, *_Q5.i16);
                ++v64;
                v60 += v215;
                --v217;
              }

              while (v217);
              v64 += v58;
              v60 += 2 * v61;
              --v214;
            }

            while (v214);
          }

          goto LABEL_404;
        case 8:
          v268 = v869[0];
          v269 = 2 * v855;
          if (v21)
          {
            do
            {
              v270 = v65;
              do
              {
                *v64 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v64), *v849.i32));
                ++v64;
                _H0 = *v60;
                __asm { FCVT            S0, H0 }

                _S0 = *v849.i32 * _S0;
                __asm { FCVT            H0, S0 }

                *v60 = LOWORD(_S0);
                v60 += v269;
                --v270;
              }

              while (v270);
              v64 += v58;
              v60 += 2 * v61;
              --v268;
            }

            while (v268);
          }

          else
          {
            do
            {
              v302 = v65;
              do
              {
                *v64 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v64), *v849.i32));
                ++v64;
                v60 += v269;
                --v302;
              }

              while (v302);
              v64 += v58;
              v60 += 2 * v61;
              --v268;
            }

            while (v268);
          }

          goto LABEL_404;
        case 9:
          v166 = vcvtq_f32_f16(*&v57);
          v167 = v869[0];
          do
          {
            v168 = v65;
            do
            {
              _H2 = *v60;
              __asm { FCVT            S2, H2 }

              *v64 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v64), *_D17.i32), v166, 1.0 - _S2));
              ++v64;
              _S2 = (*_D17.i32 * _S2) + (*_D17.i32 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              *v60 = LOWORD(_S2);
              v60 += 2 * v855;
              --v168;
            }

            while (v168);
            v64 += v58;
            v60 += 2 * v61;
            --v167;
          }

          while (v167);
          goto LABEL_404;
        case 10:
          v262 = vcvtq_f32_f16(*&v57);
          v263 = v869[0];
          do
          {
            v264 = v65;
            do
            {
              _H2 = *v60;
              __asm { FCVT            S2, H2 }

              *v64 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v64), *v849.i32), v262, 1.0 - _S2));
              ++v64;
              _S2 = (*v849.i32 * _S2) + (*_D17.i32 * (1.0 - _S2));
              __asm { FCVT            H2, S2 }

              *v60 = LOWORD(_S2);
              v60 += 2 * v855;
              --v264;
            }

            while (v264);
            v64 += v58;
            v60 += 2 * v61;
            --v263;
          }

          while (v263);
          goto LABEL_404;
        case 11:
          v127 = vsubq_f32(vdupq_lane_s32(_D17, 0), vcvtq_f32_f16(*&v57));
          v128 = v869[0];
          v129 = 2 * v855;
          if (v21)
          {
            do
            {
              v130 = v65;
              do
              {
                _H5 = *v60;
                __asm { FCVT            S5, H5 }

                _S6 = *_D17.i32 + _S5;
                _H7 = v64->i16[0];
                __asm { FCVT            S7, H7 }

                v136 = v127.f32[0] + (_S5 - _S7);
                if ((*_D17.i32 + _S5) > 1.0)
                {
                  _S6 = 1.0;
                }

                _H16 = v64->i16[1];
                __asm { FCVT            S16, H16 }

                v139 = v127.f32[1] + (_S5 - _S16);
                _S7 = _S6 - v136;
                __asm { FCVT            H7, S7 }

                v64->i16[0] = LOWORD(_S7);
                LOWORD(_S7) = *v60;
                __asm { FCVT            S7, H7 }

                LOWORD(_S16) = v64->i16[2];
                __asm { FCVT            S16, H16 }

                v143 = v127.f32[2] + (_S7 - _S16);
                _S5 = _S6 - v139;
                __asm { FCVT            H5, S5 }

                v64->i16[1] = LOWORD(_S5);
                LOWORD(_S5) = *v60;
                __asm { FCVT            S5, H5 }

                LOWORD(_S16) = v64->i16[3];
                __asm { FCVT            S16, H16 }

                _S7 = _S6 - v143;
                __asm { FCVT            H7, S7 }

                v64->i16[2] = LOWORD(_S7);
                __asm { FCVT            H7, S6 }

                *v60 = LOWORD(_S7);
                _S5 = _S6 - (v127.f32[3] + (_S5 - _S16));
                __asm { FCVT            H5, S5 }

                v64->i16[3] = LOWORD(_S5);
                ++v64;
                v60 += v129;
                --v130;
              }

              while (v130);
              v64 += v58;
              v60 += 2 * v61;
              --v128;
            }

            while (v128);
          }

          else
          {
            __asm { FMOV            V1.4S, #1.0 }

            do
            {
              v294 = v65;
              do
              {
                *v64 = vcvt_f16_f32(vsubq_f32(_Q1, vaddq_f32(v127, vsubq_f32(_Q1, vcvtq_f32_f16(*v64)))));
                ++v64;
                v60 += v129;
                --v294;
              }

              while (v294);
              v64 += v58;
              v60 += 2 * v61;
              --v128;
            }

            while (v128);
          }

          goto LABEL_404;
        case 12:
          v157 = v869[0];
          v158 = 2 * v855;
          if (v21)
          {
            do
            {
              v159 = v65;
              do
              {
                _H1 = *v60;
                __asm { FCVT            S1, H1 }

                _S1 = *_D17.i32 + _S1;
                if (_S1 > 1.0)
                {
                  _S1 = 1.0;
                }

                __asm { FCVT            H1, S1 }

                v164.i32[0] = v64->i32[0];
                *v60 = _H1;
                v164.i32[1] = v64->i32[1];
                *v64++ = vadd_f16(*&v57, v164);
                v60 += v158;
                --v159;
              }

              while (v159);
              v64 += v58;
              v60 += 2 * v61;
              --v157;
            }

            while (v157);
          }

          else
          {
            do
            {
              v165 = v65;
              do
              {
                *v64 = vadd_f16(*&v57, *v64);
                ++v64;
                v60 += v158;
                --v165;
              }

              while (v165);
              v64 += v58;
              v60 += 2 * v61;
              --v157;
            }

            while (v157);
          }

          goto LABEL_404;
        case 13:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 13 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v243 = WORD1(v57);
          v244 = HIDWORD(v57);
          v245 = v869[0];
          while (1)
          {
            v246 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0.n128_u64[0] = v862.i64[0];
                  *v60 = v862.i16[0];
                  goto LABEL_283;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v816.i32[1] = v244;
              v816.i16[1] = v243;
              v816.i16[0] = LOWORD(v57);
              v4 = PDAmultiplyPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, v816, *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_283:
              ++v64;
              v60 += 2 * v855;
              --v246;
            }

            while (v246);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v245)
            {
              goto LABEL_375;
            }
          }

        case 14:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 14 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v122 = WORD1(v57);
          v123 = HIDWORD(v57);
          v124 = v869[0];
          while (1)
          {
            v125 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_113;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAscreenPDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v57, *&v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v122, v123, SHIWORD(v123), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_113:
              ++v64;
              v60 += 2 * v855;
              --v125;
            }

            while (v125);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v124)
            {
              goto LABEL_375;
            }
          }

        case 15:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 15 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v204 = WORD1(v57);
          v205 = HIDWORD(v57);
          v206 = v869[0];
          while (1)
          {
            v207 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_199;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAoverlayPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v204, v205, SHIWORD(v205), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_199:
              ++v64;
              v60 += 2 * v855;
              --v207;
            }

            while (v207);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v206)
            {
              goto LABEL_375;
            }
          }

        case 16:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 16 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v117 = WORD1(v57);
          v118 = HIDWORD(v57);
          v119 = v869[0];
          while (1)
          {
            v120 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0.n128_u64[0] = v862.i64[0];
                  *v60 = v862.i16[0];
                  goto LABEL_99;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v813.i32[1] = v118;
              v813.i16[1] = v117;
              v813.i16[0] = LOWORD(v57);
              v4 = PDAdarkenPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, v813, *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_99:
              ++v64;
              v60 += 2 * v855;
              --v120;
            }

            while (v120);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v119)
            {
              goto LABEL_375;
            }
          }

        case 17:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 17 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v221 = WORD1(v57);
          v222 = HIDWORD(v57);
          v223 = v869[0];
          while (1)
          {
            v224 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0.n128_u64[0] = v862.i64[0];
                  *v60 = v862.i16[0];
                  goto LABEL_236;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v814.i32[1] = v222;
              v814.i16[1] = v221;
              v814.i16[0] = LOWORD(v57);
              v4 = PDAlightenPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, v814, *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_236:
              ++v64;
              v60 += 2 * v855;
              --v224;
            }

            while (v224);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v223)
            {
              goto LABEL_375;
            }
          }

        case 18:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 18 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v256 = WORD1(v57);
          v257 = HIDWORD(v57);
          v258 = v869[0];
          while (1)
          {
            v259 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_307;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAcolordodgePDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v256, v257, SHIWORD(v257), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_307:
              ++v64;
              v60 += 2 * v855;
              --v259;
            }

            while (v259);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v258)
            {
              goto LABEL_375;
            }
          }

        case 19:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 19 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v279 = WORD1(v57);
          v280 = HIDWORD(v57);
          v281 = v869[0];
          while (1)
          {
            v282 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_345;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAcolorburnPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v279, v280, SHIWORD(v280), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_345:
              ++v64;
              v60 += 2 * v855;
              --v282;
            }

            while (v282);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v281)
            {
              goto LABEL_375;
            }
          }

        case 20:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 20 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v226 = WORD1(v57);
          v227 = HIDWORD(v57);
          v228 = v869[0];
          while (1)
          {
            v229 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0.n128_u64[0] = v862.i64[0];
                  *v60 = v862.i16[0];
                  goto LABEL_250;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              HIWORD(v815) = v226;
              LOWORD(v815) = LOWORD(v57);
              v4 = PDAsoftlightPDA(_Q0.n128_u64[0], v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, v815, v227, SHIWORD(v227), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_250:
              ++v64;
              v60 += 2 * v855;
              --v229;
            }

            while (v229);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v228)
            {
              goto LABEL_375;
            }
          }

        case 21:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 21 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v237 = WORD1(v57);
          v238 = HIDWORD(v57);
          v239 = v869[0];
          while (1)
          {
            v240 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_269;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _S4 = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAhardlightPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v237, v238, SHIWORD(v238), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_269:
              ++v64;
              v60 += 2 * v855;
              --v240;
            }

            while (v240);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v239)
            {
              goto LABEL_375;
            }
          }

        case 22:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 22 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v274 = WORD1(v57);
          v275 = HIDWORD(v57);
          v276 = v869[0];
          while (1)
          {
            v277 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_331;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAdifferencePDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, *&v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v274, v275, SHIWORD(v275), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_331:
              ++v64;
              v60 += 2 * v855;
              --v277;
            }

            while (v277);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v276)
            {
              goto LABEL_375;
            }
          }

        case 23:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 23 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v285 = WORD1(v57);
          v286 = HIDWORD(v57);
          v287 = v869[0];
          while (1)
          {
            v288 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_359;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAexclusionPDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v57, *&v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v285, v286, SHIWORD(v286), *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_359:
              ++v64;
              v60 += 2 * v855;
              --v288;
            }

            while (v288);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v287)
            {
              goto LABEL_375;
            }
          }

        case 24:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 24 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v177 = WORD1(v57);
          v178 = HIDWORD(v57);
          v179 = v869[0];
          while (1)
          {
            v180 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_174;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAhuePDA(_Q0, v12, v13.n128_u64[0], v14, *_Q4.i64, *_Q5.f32, *&v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v177, v178, *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_174:
              ++v64;
              v60 += 2 * v855;
              --v180;
            }

            while (v180);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v179)
            {
              goto LABEL_375;
            }
          }

        case 25:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 25 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v172 = WORD1(v57);
          v173 = HIDWORD(v57);
          v174 = v869[0];
          while (1)
          {
            v175 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_160;
                }

                __asm { FCVT            S4, H0 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              _Q0.n128_u16[0] = v64->i16[0];
              v12.n128_u16[0] = v64->u16[1];
              v13.n128_u16[0] = v64->u16[2];
              v14.n128_u16[0] = v64->u16[3];
              v4 = PDAsaturationPDA(_Q0, v12, v13.n128_u64[0], v14, *_Q4.i64, *_Q5.f32, *&v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v172, v173, *_D17.i32);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_160:
              ++v64;
              v60 += 2 * v855;
              --v175;
            }

            while (v175);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v174)
            {
              goto LABEL_375;
            }
          }

        case 26:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 26 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          LOWORD(v1) = WORD1(v57);
          LOWORD(v3) = HIWORD(v57);
          LOWORD(v2) = WORD2(v57);
          v290 = v869[0];
          while (1)
          {
            v291 = v65;
            do
            {
              if (v21)
              {
                __asm { FCMP            H0, #0 }

                if (!(!_ZF & _CF))
                {
                  *v64 = v57;
                  _Q0 = v862;
                  *v60 = v862.i16[0];
                  goto LABEL_373;
                }

                __asm { FCVT            S0, H0 }
              }

              else
              {
                _Q0.n128_u32[0] = 1.0;
              }

              v817 = _Q0.n128_f32[0];
              _Q0.n128_u32[0] = LODWORD(v57);
              v12.n128_u32[0] = v1;
              v13.n128_u32[0] = v2;
              v14.n128_u32[0] = v3;
              v4 = PDAluminosityPDA(_Q0, v12, v13, v14, *_D17.i32, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, v64->i32[0], HIWORD(v64->i32[0]), v64->i32[1], HIWORD(v64->i32[1]), v817);
              *v64 = v4;
              if (v21)
              {
                *v60 = v5;
              }

              v57 = v864;
              _D17.i32[0] = v866.i32[0];
LABEL_373:
              ++v64;
              v60 += 2 * v855;
              --v291;
            }

            while (v291);
            v64 += v58;
            v60 += 2 * v61;
            if (!--v290)
            {
LABEL_375:
              v869[0] = 0;
              LODWORD(v22) = v823;
              v52 = v851;
              v49 = v854;
LABEL_405:
              v58 = v857;
LABEL_406:
              if (!v43)
              {
                return 1;
              }

              v868 = 0;
LABEL_408:
              v4 = shape_enum_clip_next(v43, &v868 + 1, &v868, v879, v869);
              if (!v4)
              {
                goto LABEL_412;
              }

              v64 = (v58 + 8 * v49 * v868 + 8 * SHIDWORD(v868));
              v66 = v879[0];
              if (v21)
              {
                v60 = v859 + 2 * v52 * v868 + 2 * SHIDWORD(v868);
                v61 = v52 - v879[0];
              }

              v65 = v879[0];
              _Q5 = v862;
              v57 = v864;
              _D17 = v866;
              goto LABEL_66;
            }
          }

        case 27:
          __asm { FCMP            H5, #0; jumptable 000000018416E280 case 27 }

          if (_NF ^ _VF | _ZF)
          {
            goto LABEL_405;
          }

          v111 = WORD1(v57);
          v112 = HIDWORD(v57);
          v113 = v869[0];
          break;
        default:
          goto LABEL_406;
      }

LABEL_76:
      v114 = v65;
      while (v21)
      {
        __asm { FCMP            H0, #0 }

        if (!_ZF & _CF)
        {
          __asm { FCVT            S4, H0 }

LABEL_82:
          _Q0.n128_u16[0] = v64->i16[0];
          v12.n128_u16[0] = v64->u16[1];
          v13.n128_u16[0] = v64->u16[2];
          v14.n128_u16[0] = v64->u16[3];
          v4 = PDAluminosityPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v57, v18, v4, v5, v29, v6, v7, v8, v9, v10, SLOWORD(v57), v111, v112, SHIWORD(v112), *_D17.i32);
          *v64 = v4;
          if (v21)
          {
            *v60 = v5;
          }

          v57 = v864;
          _D17.i32[0] = v866.i32[0];
          goto LABEL_85;
        }

        *v64 = v57;
        _Q0 = v862;
        *v60 = v862.i16[0];
LABEL_85:
        ++v64;
        v60 += 2 * v855;
        if (!--v114)
        {
          v64 += v58;
          v60 += 2 * v61;
          if (!--v113)
          {
            goto LABEL_375;
          }

          goto LABEL_76;
        }
      }

      _S4 = 1.0;
      goto LABEL_82;
    }

    v879[0] = *(v5 + 4);
    v869[0] = v27;
    v32 = *(v5 + 88);
    v33 = *(v5 + 12);
    v34 = *(v5 + 16);
    v35 = *(v5 + 28) >> 3;
    if (v21)
    {
      v36 = *(v5 + 32) >> 1;
      v831 = v21 + 2 * v36 * v34 + 2 * v33;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      v831 = 0;
      v36 = 0;
      v37 = 0;
    }

    v824 = *(v5 + 40) + 8 * v34 * v35 + 8 * v33;
    v53 = *(v5 + 104);
    v54 = *(v5 + 56);
    v55 = *(v5 + 60);
    v853 = *(v5 + 76) >> 3;
    if (v31 == 256)
    {
      if (v20)
      {
        v856 = *(v5 + 80) >> 1;
        v20 += 2 * v856 * v55 + 2 * v54;
        v56 = 0xFFFFFFFFLL;
      }

      else
      {
        v856 = 0;
        v56 = 0;
      }

      v32 += v55 * v853 + v54;
      if (v853 == v35)
      {
        v85 = (v824 - v32) >> 3;
        if (v85 >= 1)
        {
          if (v85 <= v25)
          {
            v824 += 8 * v26;
            v32 += v26;
            v831 += 2 * (v37 & v26);
            v6 = 0xFFFFFFFFLL;
            v853 = *(v5 + 28) >> 3;
            v20 += 2 * (v56 & v26);
            goto LABEL_49;
          }

          v86 = &v32[v35 * v28];
          if (v824 <= &v86[v25 - 1])
          {
            v824 += 8 * v35 * v28;
            v35 = -v35;
            v831 += 2 * v36 * v28;
            v36 = -v36;
            v20 += 2 * v856 * v28;
            v37 &= 1u;
            v853 = v35;
            v856 = -v856;
            v56 &= 1u;
            v6 = 1;
            v32 = v86;
            goto LABEL_49;
          }
        }
      }

      v37 &= 1u;
      v56 &= 1u;
      v6 = 1;
LABEL_49:
      v818 = *(v5 + 60);
      v819 = *(v5 + 56);
      if (v29)
      {
        v865 = v56;
        v867 = v37;
        v852 = 0;
        v850 = 0;
        v87 = -1;
        v827 = v853;
        v826 = v856;
        goto LABEL_54;
      }

      v93 = v6 * v25;
      v863 = v36 - v37 * v25;
      v94 = -1;
      v95 = v856;
      v825 = v6;
      v826 = v856;
      v96 = v853;
      v827 = v853;
LABEL_62:
      v100 = v831;
      v850 = 0;
      v828 = 0;
      v829 = v32;
      v852 = 0;
      v853 = v96 - v93;
      v856 = v95 - v56 * v25;
      v858 = v20;
      v91 = v20;
      v92 = v831;
      v101 = v824;
      goto LABEL_413;
    }

    v827 = *(v5 + 64);
    v826 = *(v5 + 68);
    if (v20)
    {
      v856 = *(v5 + 80) >> 1;
      v56 = 1;
    }

    else
    {
      v856 = 0;
      v56 = 0;
    }

    v850 = &v32[v853 * v826];
    v37 &= 1u;
    if (v29)
    {
      v818 = *(v5 + 60);
      v819 = *(v5 + 56);
      v865 = v56;
      v867 = v37;
      LODWORD(v6) = 1;
      v852 = *(v5 + 88);
      v87 = v852;
LABEL_54:
      v825 = v6;
      v830 = v35;
      shape_enum_clip_alloc(v4, v5, v29, v6, v35, 1, v53, *(v5 + 108), v25, v27);
      v89 = v88;
      v90 = v20;
      v91 = v20;
      v92 = v831;
      v863 = v36;
      if (!v88)
      {
        return 1;
      }

      goto LABEL_1230;
    }

    v863 = v36 - (v37 * v25);
    if (!v32)
    {
      v818 = *(v5 + 60);
      v819 = *(v5 + 56);
      v94 = 0;
      v825 = 1;
      v93 = v25;
      v96 = *(v5 + 76) >> 3;
      v95 = v856;
      goto LABEL_62;
    }

    v97 = v55 % v826;
    v818 = v55 % v826;
    v829 = *(v5 + 88);
    v98 = &v32[v853 * v97];
    v99 = v54 % v827;
    v32 = &v98[v99];
    v94 = &v98[v827];
    v100 = v831;
    v819 = v99;
    v852 = v32;
    v828 = 0;
    if (v20)
    {
      v91 = &v20[2 * v856 * v97 + 2 * v99];
      v825 = 1;
      v56 = 1;
      v858 = v91;
    }

    else
    {
      v858 = 0;
      v91 = 0;
      v825 = 1;
    }

    v92 = v831;
    v101 = v824;
    v93 = v25;
LABEL_413:
    v867 = v37;
    v865 = v56;
    v830 = v35;
    v831 = v100;
    v860 = v35 - v93;
    v848 = v25;
    switch(v22)
    {
      case 0:
        v832 = v94;
        v304 = v860 - v25;
        v305 = &v101[-v25 + 1];
        if (v825 >= 0)
        {
          v305 = v101;
          v304 = v860 + v25;
        }

        v306 = v869[0];
        v307 = v869[0] - 1;
        v308 = (v305 + 8 * ((v304 * v307) & (v304 >> 63)));
        if (v304 < 0)
        {
          v304 = -v304;
        }

        CGBlt_fillBytes(8 * v25, v869[0], 0, v308, 8 * v304);
        if (v37)
        {
          if (v825 < 0)
          {
            v309 = v863 - v25;
            v92 = &v92[-2 * v25 + 2];
          }

          else
          {
            v309 = v863 + v25;
          }

          v92 += 2 * ((v309 * v307) & (v309 >> 63));
          if (v309 < 0)
          {
            v309 = -v309;
          }

          v863 = v309;
          CGBlt_fillBytes(2 * v25, v306, 0, v92, 2 * v309);
        }

        goto LABEL_1208;
      case 1:
        v511 = *(v24 + 1);
        if (v511 == 2)
        {
          if (v25 >= 4 && (8 * v827) <= 0x40)
          {
            _Q0.n128_u32[0] = 8 * v827;
            v762 = vcnt_s8(_Q0.n128_u64[0]);
            v762.i16[0] = vaddlv_u8(v762);
            if (v762.i32[0] <= 1u)
            {
              v832 = v94;
              v763 = v869[0];
              v32 = v829;
              CGSFillDRAM64(v101, 8 * (v25 + v860), 8 * v25, v869[0], v829, 8 * v853, 8 * v827, v826, 8 * v819, v818);
              if (v37)
              {
                v89 = v828;
                if (v865)
                {
                  CGSFillDRAM64(v92, 2 * (v25 + v863), 2 * v25, v763, v20, 2 * v856, 2 * v827, v826, 2 * v819, v818);
                }

                else
                {
                  CGBlt_fillBytes(2 * v25, v763, 1065353216, v92, 2 * (v25 + v863));
                }

                goto LABEL_1210;
              }

LABEL_1209:
              v89 = v828;
LABEL_1210:
              v94 = v832;
              goto LABEL_1049;
            }
          }
        }

        else if (v511 == 1)
        {
          v832 = v94;
          if (v825 < 0)
          {
            v512 = v853 - v25;
            v797 = 8 * v25 - 8;
            v32 = (v32 - v797);
            v513 = v860 - v25;
            v101 = (v101 - v797);
          }

          else
          {
            v512 = v853 + v25;
            v513 = v860 + v25;
          }

          v798 = v869[0] - 1;
          v799 = &v32[(v512 * v798) & (v512 >> 63)];
          if (v512 >= 0)
          {
            v800 = v512;
          }

          else
          {
            v800 = -v512;
          }

          if (v513 >= 0)
          {
            LODWORD(v801) = v513;
          }

          else
          {
            v801 = -v513;
          }

          v853 = v800;
          v861 = v869[0];
          CGBlt_copyBytes(8 * v25, v869[0], v799, &v101[(v513 * v798) & (v513 >> 63)], 8 * v800, 8 * v801);
          if (v37)
          {
            v802 = 2 * v25;
            v89 = v828;
            v32 = v829;
            if (v865)
            {
              v803 = v856 - v25;
              v804 = 2 * v25 - 2;
              v805 = &v91[-v804];
              v806 = v863 - v25;
              v807 = &v92[-v804];
              if (v825 >= 0)
              {
                v805 = v91;
                v807 = v92;
                v803 = v856 + v25;
                v806 = v863 + v25;
              }

              v91 = &v805[2 * ((v803 * v798) & (v803 >> 63))];
              if (v803 >= 0)
              {
                v808 = v803;
              }

              else
              {
                v808 = -v803;
              }

              v92 = &v807[2 * ((v806 * v798) & (v806 >> 63))];
              if (v806 >= 0)
              {
                v809 = v806;
              }

              else
              {
                v809 = -v806;
              }

              v856 = v808;
              v863 = v809;
              CGBlt_copyBytes(v802, v861, v91, v92, 2 * v808, 2 * v809);
            }

            else
            {
              v810 = v863 - v25;
              v811 = &v92[-2 * v25 + 2];
              if (v825 >= 0)
              {
                v811 = v92;
                v810 = v863 + v25;
              }

              v812 = (v810 * v798) & (v810 >> 63);
              v92 = (v811 + 2 * v812);
              if (v810 < 0)
              {
                v810 = -v810;
              }

              v863 = v810;
              CGBlt_fillBytes(v802, v861, 1065353216, (v811 + 2 * v812), 2 * v810);
            }

            LODWORD(v22) = v823;
            goto LABEL_1210;
          }

LABEL_1208:
          LODWORD(v22) = v823;
          v32 = v829;
          goto LABEL_1209;
        }

        if (v37)
        {
          if (v56)
          {
            v764 = v869[0];
            v90 = v858;
            v349 = v852;
            do
            {
              v765 = v25;
              do
              {
                *v101 = *v32;
                *v92 = *v91;
                v766 = &v32[v825];
                if (v766 >= v94)
                {
                  v767 = -v827;
                }

                else
                {
                  v767 = 0;
                }

                v91 += 2 * v56 + 2 * v767;
                v32 = &v766[v767];
                v92 += 2 * v37;
                v101 += v825;
                --v765;
              }

              while (v765);
              if (v850)
              {
                v768 = &v349[v853];
                if (v768 >= v850)
                {
                  v769 = -(v856 * v826);
                }

                else
                {
                  v769 = 0;
                }

                v90 += 2 * v856 + 2 * v769;
                if (v768 >= v850)
                {
                  v770 = -(v853 * v826);
                }

                else
                {
                  v770 = 0;
                }

                v349 = &v768[v770];
                v94 += 8 * v770 + 8 * v853;
                v91 = v90;
                v32 = v349;
              }

              else
              {
                v32 += v853;
                v91 += 2 * v856;
              }

              v101 += v860;
              v92 += 2 * v863;
              --v764;
            }

            while (v764);
LABEL_1203:
            v852 = v349;
          }

          else
          {
            v790 = v869[0];
            v90 = v858;
            v682 = v852;
            do
            {
              v791 = v25;
              do
              {
                *v101 = *v32;
                *v92 = COERCE_UNSIGNED_INT(1.0);
                v792 = &v32[v825];
                if (v792 >= v94)
                {
                  v793 = -v827;
                }

                else
                {
                  v793 = 0;
                }

                v91 += 2 * v793;
                v32 = &v792[v793];
                v92 += 2 * v37;
                v101 += v825;
                --v791;
              }

              while (v791);
              if (v850)
              {
                v794 = &v682[v853];
                if (v794 >= v850)
                {
                  v795 = -(v856 * v826);
                }

                else
                {
                  v795 = 0;
                }

                v90 += 2 * v856 + 2 * v795;
                if (v794 >= v850)
                {
                  v796 = -(v853 * v826);
                }

                else
                {
                  v796 = 0;
                }

                v682 = &v794[v796];
                v94 += 8 * v796 + 8 * v853;
                v91 = v90;
                v32 = v682;
              }

              else
              {
                v32 += v853;
                v91 += 2 * v856;
              }

              v101 += v860;
              v92 += 2 * v863;
              --v790;
            }

            while (v790);
LABEL_1272:
            v852 = v682;
          }

LABEL_1228:
          v869[0] = 0;
          v89 = v828;
          v32 = v829;
          if (!v828)
          {
            return 1;
          }

          goto LABEL_1229;
        }

        v771 = v56;
        v772 = v869[0];
        v90 = v858;
        v425 = v852;
        do
        {
          v773 = v25;
          do
          {
            *v101 = *v32;
            v774 = &v32[v825];
            if (v774 >= v94)
            {
              v775 = -v827;
            }

            else
            {
              v775 = 0;
            }

            v91 += 2 * v771 + 2 * v775;
            v32 = &v774[v775];
            v101 += v825;
            --v773;
          }

          while (v773);
          if (v850)
          {
            v776 = &v425[v853];
            if (v776 >= v850)
            {
              v777 = -(v856 * v826);
            }

            else
            {
              v777 = 0;
            }

            v90 += 2 * v856 + 2 * v777;
            if (v776 >= v850)
            {
              v778 = -(v853 * v826);
            }

            else
            {
              v778 = 0;
            }

            v425 = &v776[v778];
            v94 += 8 * v778 + 8 * v853;
            v91 = v90;
            v32 = v425;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v772;
        }

        while (v772);
        goto LABEL_1227;
      case 2:
        v461 = 8 * v825;
        v462 = v56;
        if (v37)
        {
          v463 = v869[0];
          v90 = v858;
          v349 = v852;
          while (1)
          {
            v464 = v25;
            do
            {
              if (*v91 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v101 = *v32;
                _H2 = *v91;
              }

              else
              {
                __asm { FCMP            H2, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_649;
                }

                __asm { FCVT            S2, H2 }

                *v101 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v32), vcvtq_f32_f16(*v101), 1.0 - _S2));
                _H4 = *v92;
                __asm { FCVT            S4, H4 }

                _S2 = _S2 + (_S4 * (1.0 - _S2));
                __asm { FCVT            H2, S2 }
              }

              *v92 = _H2;
LABEL_649:
              v471 = &v32[v825];
              if (v471 >= v94)
              {
                v472 = -v827;
              }

              else
              {
                v472 = 0;
              }

              v91 += 2 * v56 + 2 * v472;
              v32 = &v471[v472];
              v92 += 2 * v37;
              v101 = (v101 + v461);
              --v464;
            }

            while (v464);
            if (v850)
            {
              v473 = &v349[v853];
              if (v473 >= v850)
              {
                v474 = -(v856 * v826);
              }

              else
              {
                v474 = 0;
              }

              v90 += 2 * v856 + 2 * v474;
              if (v473 >= v850)
              {
                v475 = -(v853 * v826);
              }

              else
              {
                v475 = 0;
              }

              v349 = &v473[v475];
              v94 += 8 * v475 + 8 * v853;
              v91 = v90;
              v32 = v349;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            if (!--v463)
            {
              goto LABEL_1203;
            }
          }
        }

        v725 = v869[0];
        v90 = v858;
        v425 = v852;
LABEL_1094:
        v726 = v25;
        while (*v91 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          __asm { FCMP            H2, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            __asm { FCVT            S2, H2 }

            v729 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v32), vcvtq_f32_f16(*v101), 1.0 - _S2));
LABEL_1099:
            *v101 = v729;
          }

          v730 = &v32[v825];
          if (v730 >= v94)
          {
            v731 = -v827;
          }

          else
          {
            v731 = 0;
          }

          v91 += 2 * v462 + 2 * v731;
          v32 = &v730[v731];
          v101 = (v101 + v461);
          if (!--v726)
          {
            if (v850)
            {
              v732 = &v425[v853];
              if (v732 >= v850)
              {
                v733 = -(v856 * v826);
              }

              else
              {
                v733 = 0;
              }

              v90 += 2 * v856 + 2 * v733;
              if (v732 >= v850)
              {
                v734 = -(v853 * v826);
              }

              else
              {
                v734 = 0;
              }

              v425 = &v732[v734];
              v94 += 8 * v734 + 8 * v853;
              v91 = v90;
              v32 = v425;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            if (!--v725)
            {
              goto LABEL_1227;
            }

            goto LABEL_1094;
          }
        }

        v729 = *v32;
        goto LABEL_1099;
      case 3:
        v489 = 2 * v37;
        v490 = 8 * v825;
        if (v56)
        {
          v491 = v869[0];
          v90 = v858;
          v349 = v852;
          do
          {
            v492 = v25;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                v494 = *v32;
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  *v101 = v494;
                  v495 = *v91;
                }

                else
                {
                  *v101 = vmul_n_f16(v494, _H1);
                  v495 = _H1 * *v91;
                }
              }

              else
              {
                *v101 = 0;
                LOWORD(v495) = 0;
              }

              *v92 = v495;
              v496 = &v32[v825];
              if (v496 >= v94)
              {
                v497 = -v827;
              }

              else
              {
                v497 = 0;
              }

              v91 += 2 * v56 + 2 * v497;
              v32 = &v496[v497];
              v92 += v489;
              v101 = (v101 + v490);
              --v492;
            }

            while (v492);
            if (v850)
            {
              v498 = &v349[v853];
              if (v498 >= v850)
              {
                v499 = -(v856 * v826);
              }

              else
              {
                v499 = 0;
              }

              v90 += 2 * v856 + 2 * v499;
              if (v498 >= v850)
              {
                v500 = -(v853 * v826);
              }

              else
              {
                v500 = 0;
              }

              v349 = &v498[v500];
              v94 += 8 * v500 + 8 * v853;
              v91 = v90;
              v32 = v349;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            --v491;
          }

          while (v491);
          goto LABEL_1203;
        }

        v735 = v869[0];
        v90 = v858;
        v682 = v852;
        do
        {
          v736 = v25;
          do
          {
            __asm { FCMP            H1, #0 }

            if (!_ZF & _CF)
            {
              v738 = *v32;
              if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v101 = v738;
              }

              else
              {
                *v101 = vmul_n_f16(v738, _H1);
              }
            }

            else
            {
              *v101 = 0;
            }

            v739 = &v32[v825];
            if (v739 >= v94)
            {
              v740 = -v827;
            }

            else
            {
              v740 = 0;
            }

            v91 += 2 * v740;
            v32 = &v739[v740];
            v92 += v489;
            v101 = (v101 + v490);
            --v736;
          }

          while (v736);
          if (v850)
          {
            v741 = &v682[v853];
            if (v741 >= v850)
            {
              v742 = -(v856 * v826);
            }

            else
            {
              v742 = 0;
            }

            v90 += 2 * v856 + 2 * v742;
            if (v741 >= v850)
            {
              v743 = -(v853 * v826);
            }

            else
            {
              v743 = 0;
            }

            v682 = &v741[v743];
            v94 += 8 * v743 + 8 * v853;
            v91 = v90;
            v32 = v682;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v735;
        }

        while (v735);
        goto LABEL_1272;
      case 4:
        v394 = v869[0];
        v90 = v858;
        v349 = v852;
        do
        {
          v395 = v25;
          do
          {
            _H1 = *v92;
            __asm { FCVT            S1, H1 }

            v398 = 1.0 - _S1;
            if (v398 <= 0.0)
            {
              *v101 = 0;
              LOWORD(_H1) = 0;
            }

            else if (v398 >= 1.0)
            {
              if (v56)
              {
                _H1 = *v91;
              }

              else
              {
                LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              *v101 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v32), v398));
              if (v56)
              {
                _H2 = *v91;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                _S2 = 1.0;
              }

              _S1 = v398 * _S2;
              __asm { FCVT            H1, S1 }
            }

            *v92 = _H1;
            v403 = &v32[v825];
            if (v403 >= v94)
            {
              v404 = -v827;
            }

            else
            {
              v404 = 0;
            }

            v91 += 2 * v56 + 2 * v404;
            v32 = &v403[v404];
            v92 += 2 * v37;
            v101 += v825;
            --v395;
          }

          while (v395);
          if (v850)
          {
            v405 = &v349[v853];
            if (v405 >= v850)
            {
              v406 = -(v856 * v826);
            }

            else
            {
              v406 = 0;
            }

            v90 += 2 * v856 + 2 * v406;
            if (v405 >= v850)
            {
              v407 = -(v853 * v826);
            }

            else
            {
              v407 = 0;
            }

            v349 = &v405[v407];
            v94 += 8 * v407 + 8 * v853;
            v91 = v90;
            v32 = v349;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v394;
        }

        while (v394);
        goto LABEL_1203;
      case 5:
        v538 = v56;
        v539 = v869[0];
        v90 = v858;
        v425 = v852;
        do
        {
          v540 = v25;
          do
          {
            _H1 = *v92;
            __asm { FCVT            S1, H1 }

            _H2 = *v91;
            __asm { FCVT            S2, H2 }

            *v101 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v101), 1.0 - _S2), vcvtq_f32_f16(*v32), _S1));
            _S1 = ((1.0 - _S2) * _S1) + (_S2 * _S1);
            __asm { FCVT            H1, S1 }

            *v92 = LOWORD(_S1);
            v546 = &v32[v825];
            if (v546 >= v94)
            {
              v547 = -v827;
            }

            else
            {
              v547 = 0;
            }

            v91 += 2 * v538 + 2 * v547;
            v32 = &v546[v547];
            v92 += 2 * v37;
            v101 += v825;
            --v540;
          }

          while (v540);
          if (v850)
          {
            v548 = &v425[v853];
            if (v548 >= v850)
            {
              v549 = -(v856 * v826);
            }

            else
            {
              v549 = 0;
            }

            v90 += 2 * v856 + 2 * v549;
            if (v548 >= v850)
            {
              v550 = -(v853 * v826);
            }

            else
            {
              v550 = 0;
            }

            v425 = &v548[v550];
            v94 += 8 * v550 + 8 * v853;
            v91 = v90;
            v32 = v425;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v539;
        }

        while (v539);
        goto LABEL_1227;
      case 6:
        v576 = v869[0];
        v90 = v858;
        v349 = v852;
        while (1)
        {
          v577 = v25;
          do
          {
            _H1 = *v92;
            __asm { FCVT            S1, H1 }

            v580 = 1.0 - _S1;
            if ((1.0 - _S1) >= 1.0)
            {
              *v101 = *v32;
              if (v56)
              {
                _H1 = *v91;
              }

              else
              {
                LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
              }
            }

            else
            {
              if (v580 <= 0.0)
              {
                goto LABEL_868;
              }

              *v101 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v101), vcvtq_f32_f16(*v32), v580));
              if (v56)
              {
                _H3 = *v91;
                __asm { FCVT            S3, H3 }
              }

              else
              {
                _S3 = 1.0;
              }

              _S1 = _S1 + (_S3 * v580);
              __asm { FCVT            H1, S1 }
            }

            *v92 = _H1;
LABEL_868:
            v585 = &v32[v825];
            if (v585 >= v94)
            {
              v586 = -v827;
            }

            else
            {
              v586 = 0;
            }

            v91 += 2 * v56 + 2 * v586;
            v32 = &v585[v586];
            v92 += 2 * v37;
            v101 += v825;
            --v577;
          }

          while (v577);
          if (v850)
          {
            v587 = &v349[v853];
            if (v587 >= v850)
            {
              v588 = -(v856 * v826);
            }

            else
            {
              v588 = 0;
            }

            v90 += 2 * v856 + 2 * v588;
            if (v587 >= v850)
            {
              v589 = -(v853 * v826);
            }

            else
            {
              v589 = 0;
            }

            v349 = &v587[v589];
            v94 += 8 * v589 + 8 * v853;
            v91 = v90;
            v32 = v349;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          if (!--v576)
          {
            goto LABEL_1203;
          }
        }

      case 7:
        v501 = v56;
        if (v37)
        {
          v502 = v869[0];
          v90 = v858;
          v349 = v852;
          while (1)
          {
            v503 = v25;
            do
            {
              __asm { FCMP            H1, #0 }

              if (!_ZF & _CF)
              {
                if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  goto LABEL_720;
                }

                *v101 = vmul_n_f16(*v101, _H1);
                v505 = _H1 * *v92;
              }

              else
              {
                *v101 = 0;
                LOWORD(v505) = 0;
              }

              *v92 = v505;
LABEL_720:
              v506 = &v32[v825];
              if (v506 >= v94)
              {
                v507 = -v827;
              }

              else
              {
                v507 = 0;
              }

              v91 += 2 * v56 + 2 * v507;
              v32 = &v506[v507];
              v92 += 2 * v37;
              v101 += v825;
              --v503;
            }

            while (v503);
            if (v850)
            {
              v508 = &v349[v853];
              if (v508 >= v850)
              {
                v509 = -(v856 * v826);
              }

              else
              {
                v509 = 0;
              }

              v90 += 2 * v856 + 2 * v509;
              if (v508 >= v850)
              {
                v510 = -(v853 * v826);
              }

              else
              {
                v510 = 0;
              }

              v349 = &v508[v510];
              v94 += 8 * v510 + 8 * v853;
              v91 = v90;
              v32 = v349;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            if (!--v502)
            {
              goto LABEL_1203;
            }
          }
        }

        v744 = v869[0];
        v90 = v858;
        v425 = v852;
        do
        {
          v745 = v25;
          do
          {
            __asm { FCMP            H1, #0 }

            if (!_ZF & _CF)
            {
              if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v101 = vmul_n_f16(*v101, _H1);
              }
            }

            else
            {
              *v101 = 0;
            }

            v747 = &v32[v825];
            if (v747 >= v94)
            {
              v748 = -v827;
            }

            else
            {
              v748 = 0;
            }

            v91 += 2 * v501 + 2 * v748;
            v32 = &v747[v748];
            v101 += v825;
            --v745;
          }

          while (v745);
          if (v850)
          {
            v749 = &v425[v853];
            if (v749 >= v850)
            {
              v750 = -(v856 * v826);
            }

            else
            {
              v750 = 0;
            }

            v90 += 2 * v856 + 2 * v750;
            if (v749 >= v850)
            {
              v751 = -(v853 * v826);
            }

            else
            {
              v751 = 0;
            }

            v425 = &v749[v751];
            v94 += 8 * v751 + 8 * v853;
            v91 = v90;
            v32 = v425;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v744;
        }

        while (v744);
        goto LABEL_1227;
      case 8:
        v616 = v56;
        if (!v37)
        {
          v752 = v869[0];
          v90 = v858;
          v425 = v852;
          do
          {
            v753 = v25;
            do
            {
              _H1 = *v91;
              __asm { FCVT            S1, H1 }

              v756 = 1.0 - _S1;
              if (v756 <= 0.0)
              {
                *v101 = 0;
              }

              else if (v756 < 1.0)
              {
                *v101 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v101), v756));
              }

              v757 = &v32[v825];
              if (v757 >= v94)
              {
                v758 = -v827;
              }

              else
              {
                v758 = 0;
              }

              v91 += 2 * v616 + 2 * v758;
              v32 = &v757[v758];
              v101 += v825;
              --v753;
            }

            while (v753);
            if (v850)
            {
              v759 = &v425[v853];
              if (v759 >= v850)
              {
                v760 = -(v856 * v826);
              }

              else
              {
                v760 = 0;
              }

              v90 += 2 * v856 + 2 * v760;
              if (v759 >= v850)
              {
                v761 = -(v853 * v826);
              }

              else
              {
                v761 = 0;
              }

              v425 = &v759[v761];
              v94 += 8 * v761 + 8 * v853;
              v91 = v90;
              v32 = v425;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            --v752;
          }

          while (v752);
LABEL_1227:
          v852 = v425;
          goto LABEL_1228;
        }

        v617 = v869[0];
        v90 = v858;
        v349 = v852;
LABEL_927:
        v618 = v25;
        while (1)
        {
          _H1 = *v91;
          __asm { FCVT            S1, H1 }

          v621 = 1.0 - _S1;
          if (v621 <= 0.0)
          {
            break;
          }

          if (v621 < 1.0)
          {
            *v101 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v101), v621));
            _H2 = *v92;
            __asm { FCVT            S2, H2 }

            _S1 = v621 * _S2;
            __asm { FCVT            H1, S1 }

LABEL_932:
            *v92 = _H1;
          }

          v626 = &v32[v825];
          if (v626 >= v94)
          {
            v627 = -v827;
          }

          else
          {
            v627 = 0;
          }

          v91 += 2 * v56 + 2 * v627;
          v32 = &v626[v627];
          v92 += 2 * v37;
          v101 += v825;
          if (!--v618)
          {
            if (v850)
            {
              v628 = &v349[v853];
              if (v628 >= v850)
              {
                v629 = -(v856 * v826);
              }

              else
              {
                v629 = 0;
              }

              v90 += 2 * v856 + 2 * v629;
              if (v628 >= v850)
              {
                v630 = -(v853 * v826);
              }

              else
              {
                v630 = 0;
              }

              v349 = &v628[v630];
              v94 += 8 * v630 + 8 * v853;
              v91 = v90;
              v32 = v349;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            if (!--v617)
            {
              goto LABEL_1203;
            }

            goto LABEL_927;
          }
        }

        *v101 = 0;
        _H1 = 0;
        goto LABEL_932;
      case 9:
        v423 = v56;
        v424 = v869[0];
        v90 = v858;
        v425 = v852;
        do
        {
          v426 = v25;
          do
          {
            _H1 = *v92;
            __asm { FCVT            S1, H1 }

            _H2 = *v91;
            __asm { FCVT            S2, H2 }

            *v101 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v101), _S2), vcvtq_f32_f16(*v32), 1.0 - _S1));
            _S1 = (_S1 * _S2) + (_S2 * (1.0 - _S1));
            __asm { FCVT            H1, S1 }

            *v92 = LOWORD(_S1);
            v432 = &v32[v825];
            if (v432 >= v94)
            {
              v433 = -v827;
            }

            else
            {
              v433 = 0;
            }

            v91 += 2 * v423 + 2 * v433;
            v32 = &v432[v433];
            v92 += 2 * v37;
            v101 += v825;
            --v426;
          }

          while (v426);
          if (v850)
          {
            v434 = &v425[v853];
            if (v434 >= v850)
            {
              v435 = -(v856 * v826);
            }

            else
            {
              v435 = 0;
            }

            v90 += 2 * v856 + 2 * v435;
            if (v434 >= v850)
            {
              v436 = -(v853 * v826);
            }

            else
            {
              v436 = 0;
            }

            v425 = &v434[v436];
            v94 += 8 * v436 + 8 * v853;
            v91 = v90;
            v32 = v425;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v424;
        }

        while (v424);
        goto LABEL_1227;
      case 10:
        v603 = v56;
        v604 = v869[0];
        v90 = v858;
        v425 = v852;
        do
        {
          v605 = v25;
          do
          {
            _H1 = *v92;
            __asm { FCVT            S1, H1 }

            _H2 = *v91;
            __asm { FCVT            S2, H2 }

            *v101 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v101), 1.0 - _S2), vcvtq_f32_f16(*v32), 1.0 - _S1));
            _S1 = ((1.0 - _S2) * _S1) + (_S2 * (1.0 - _S1));
            __asm { FCVT            H1, S1 }

            *v92 = LOWORD(_S1);
            v611 = &v32[v825];
            if (v611 >= v94)
            {
              v612 = -v827;
            }

            else
            {
              v612 = 0;
            }

            v91 += 2 * v603 + 2 * v612;
            v32 = &v611[v612];
            v92 += 2 * v37;
            v101 += v825;
            --v605;
          }

          while (v605);
          if (v850)
          {
            v613 = &v425[v853];
            if (v613 >= v850)
            {
              v614 = -(v856 * v826);
            }

            else
            {
              v614 = 0;
            }

            v90 += 2 * v856 + 2 * v614;
            if (v613 >= v850)
            {
              v615 = -(v853 * v826);
            }

            else
            {
              v615 = 0;
            }

            v425 = &v613[v615];
            v94 += 8 * v615 + 8 * v853;
            v91 = v90;
            v32 = v425;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v604;
        }

        while (v604);
        goto LABEL_1227;
      case 11:
        v347 = 8 * v825;
        if (v37)
        {
          v348 = v869[0];
          v90 = v858;
          v349 = v852;
          do
          {
            v350 = v25;
            do
            {
              _S1 = 1.0;
              _S2 = 1.0;
              if (v56)
              {
                _H0 = *v91;
                __asm { FCVT            S2, H0 }
              }

              _H0 = *v92;
              __asm { FCVT            S3, H0 }

              _S0 = _S2 + _S3;
              if ((_S2 + _S3) > 1.0)
              {
                _S0 = 1.0;
              }

              if (v56)
              {
                _H1 = *v91;
                __asm { FCVT            S1, H1 }
              }

              _H4 = v101->i16[0];
              __asm { FCVT            S4, H4 }

              _H5 = v32->i16[0];
              __asm { FCVT            S5, H5 }

              v362 = (_S3 - _S4) + (_S2 - _S5);
              _H6 = v101->i16[1];
              _H5 = v32->i16[1];
              _S2 = _S0 - v362;
              __asm { FCVT            H2, S2 }

              v101->i16[0] = LOWORD(_S2);
              _S2 = 1.0;
              _S4 = 1.0;
              if (v56)
              {
                _H4 = *v91;
                __asm { FCVT            S4, H4 }
              }

              __asm
              {
                FCVT            S6, H6
                FCVT            S5, H5
              }

              v371 = (_S3 - _S6) + (_S1 - _S5);
              _H3 = *v92;
              _H5 = v101->i16[2];
              _H1 = v32->i16[2];
              _S6 = _S0 - v371;
              __asm { FCVT            H6, S6 }

              v101->i16[1] = LOWORD(_S6);
              _H6 = *v92;
              if (v56)
              {
                _H2 = *v91;
                __asm { FCVT            S2, H2 }
              }

              __asm
              {
                FCVT            S3, H3
                FCVT            S5, H5
                FCVT            S1, H1
              }

              v381 = (_S3 - _S5) + (_S4 - _S1);
              __asm { FCVT            S3, H6 }

              _H4 = v101->i16[3];
              __asm { FCVT            S4, H4 }

              v385 = _S3 - _S4;
              LOWORD(_S4) = v32->i16[3];
              __asm { FCVT            S4, H4 }

              _S1 = _S0 - v381;
              __asm { FCVT            H1, S1 }

              v101->i16[2] = LOWORD(_S1);
              __asm { FCVT            H1, S0 }

              *v92 = LOWORD(_S1);
              _S0 = _S0 - (v385 + (_S2 - _S4));
              __asm { FCVT            H0, S0 }

              v101->i16[3] = LOWORD(_S0);
              v389 = &v32[v825];
              if (v389 >= v94)
              {
                v390 = -v827;
              }

              else
              {
                v390 = 0;
              }

              v91 += 2 * v56 + 2 * v390;
              v32 = &v389[v390];
              v92 += 2 * v37;
              v101 = (v101 + v347);
              --v350;
            }

            while (v350);
            if (v850)
            {
              v391 = &v349[v853];
              if (v391 >= v850)
              {
                v392 = -(v856 * v826);
              }

              else
              {
                v392 = 0;
              }

              v90 += 2 * v856 + 2 * v392;
              if (v391 >= v850)
              {
                v393 = -(v853 * v826);
              }

              else
              {
                v393 = 0;
              }

              v349 = &v391[v393];
              v94 += 8 * v393 + 8 * v853;
              v91 = v90;
              v32 = v349;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            --v348;
          }

          while (v348);
          goto LABEL_1203;
        }

        v681 = v869[0];
        v90 = v858;
        v682 = v852;
        do
        {
          v683 = v25;
          do
          {
            _S2 = 1.0;
            if (v56)
            {
              _H2 = *v91;
              __asm { FCVT            S2, H2 }
            }

            _S3 = 1.0;
            if (v56)
            {
              _H3 = *v91;
              __asm { FCVT            S3, H3 }
            }

            _H4 = v101->i16[0];
            __asm { FCVT            S4, H4 }

            _H5 = v32->i16[0];
            __asm { FCVT            S5, H5 }

            v692 = (1.0 - _S4) + (_S2 - _S5);
            LOWORD(_S4) = v101->i16[1];
            __asm { FCVT            S4, H4 }

            v694 = 1.0 - _S4;
            LOWORD(_S4) = v32->i16[1];
            __asm { FCVT            S4, H4 }

            _S2 = 1.0 - v692;
            __asm { FCVT            H2, S2 }

            v101->i16[0] = LOWORD(_S2);
            _S2 = 1.0 - (v694 + (_S3 - _S4));
            __asm { FCVT            H2, S2 }

            v101->i16[1] = LOWORD(_S2);
            _S2 = 1.0;
            if (v56)
            {
              _H2 = *v91;
              __asm { FCVT            S2, H2 }
            }

            _H4 = v32->i16[2];
            _S3 = 1.0;
            if (v56)
            {
              _H3 = *v91;
              __asm { FCVT            S3, H3 }
            }

            _H5 = v101->i16[2];
            __asm
            {
              FCVT            S5, H5
              FCVT            S4, H4
            }

            v706 = (1.0 - _S5) + (_S2 - _S4);
            LOWORD(_S4) = v101->i16[3];
            __asm { FCVT            S4, H4 }

            v708 = 1.0 - _S4;
            LOWORD(_S4) = v32->i16[3];
            __asm { FCVT            S4, H4 }

            _S2 = 1.0 - v706;
            __asm { FCVT            H2, S2 }

            v101->i16[2] = LOWORD(_S2);
            _S1 = 1.0 - (v708 + (_S3 - _S4));
            __asm { FCVT            H1, S1 }

            v101->i16[3] = LOWORD(_S1);
            v712 = &v32[v825];
            if (v712 >= v94)
            {
              v713 = -v827;
            }

            else
            {
              v713 = 0;
            }

            v91 += 2 * v56 + 2 * v713;
            v32 = &v712[v713];
            v101 = (v101 + v347);
            --v683;
          }

          while (v683);
          if (v850)
          {
            v714 = &v682[v853];
            if (v714 >= v850)
            {
              v715 = -(v856 * v826);
            }

            else
            {
              v715 = 0;
            }

            v90 += 2 * v856 + 2 * v715;
            if (v714 >= v850)
            {
              v716 = -(v853 * v826);
            }

            else
            {
              v716 = 0;
            }

            v682 = &v714[v716];
            v94 += 8 * v716 + 8 * v853;
            v91 = v90;
            v32 = v682;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v681;
        }

        while (v681);
        goto LABEL_1272;
      case 12:
        if (!v37)
        {
          v717 = v56;
          v718 = v869[0];
          v90 = v858;
          v425 = v852;
          do
          {
            v719 = v25;
            do
            {
              *v101 = vadd_f16(*v101, *v32);
              v720 = &v32[v825];
              if (v720 >= v94)
              {
                v721 = -v827;
              }

              else
              {
                v721 = 0;
              }

              v91 += 2 * v717 + 2 * v721;
              v32 = &v720[v721];
              v101 += v825;
              --v719;
            }

            while (v719);
            if (v850)
            {
              v722 = &v425[v853];
              if (v722 >= v850)
              {
                v723 = -(v856 * v826);
              }

              else
              {
                v723 = 0;
              }

              v90 += 2 * v856 + 2 * v723;
              if (v722 >= v850)
              {
                v724 = -(v853 * v826);
              }

              else
              {
                v724 = 0;
              }

              v425 = &v722[v724];
              v94 += 8 * v724 + 8 * v853;
              v91 = v90;
              v32 = v425;
            }

            else
            {
              v32 += v853;
              v91 += 2 * v856;
            }

            v101 += v860;
            v92 += 2 * v863;
            --v718;
          }

          while (v718);
          goto LABEL_1227;
        }

        v408 = v869[0];
        v90 = v858;
        v349 = v852;
        do
        {
          v409 = v25;
          do
          {
            if (v56)
            {
              _H1 = *v91;
              __asm { FCVT            S1, H1 }
            }

            else
            {
              _S1 = 1.0;
            }

            _H2 = *v92;
            __asm { FCVT            S2, H2 }

            _S1 = _S1 + _S2;
            if (_S1 > 1.0)
            {
              _S1 = 1.0;
            }

            __asm { FCVT            H1, S1 }

            v416.i32[0] = v101->i32[0];
            v417.i32[0] = v32->i32[0];
            *v92 = _H1;
            v416.i32[1] = v101->i32[1];
            v417.i32[1] = v32->i32[1];
            *v101 = vadd_f16(v416, v417);
            v418 = &v32[v825];
            if (v418 >= v94)
            {
              v419 = -v827;
            }

            else
            {
              v419 = 0;
            }

            v91 += 2 * v56 + 2 * v419;
            v32 = &v418[v419];
            v92 += 2 * v37;
            v101 += v825;
            --v409;
          }

          while (v409);
          if (v850)
          {
            v420 = &v349[v853];
            if (v420 >= v850)
            {
              v421 = -(v856 * v826);
            }

            else
            {
              v421 = 0;
            }

            v90 += 2 * v856 + 2 * v421;
            if (v420 >= v850)
            {
              v422 = -(v853 * v826);
            }

            else
            {
              v422 = 0;
            }

            v349 = &v420[v422];
            v94 += 8 * v422 + 8 * v853;
            v91 = v90;
            v32 = v349;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          v101 += v860;
          v92 += 2 * v863;
          --v408;
        }

        while (v408);
        goto LABEL_1203;
      case 13:
        v821 = v36;
        v822 = v20;
        v564 = v56;
        v565 = 2 * v37;
        v566 = v869[0];
        v567 = -v827;
        while (1)
        {
          v842 = v566;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_843;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_843;
              }

              __asm { FCVT            S4, H0 }
            }

            v570 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAmultiplyPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, *v32, _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v570;
            v567 = -v827;
LABEL_843:
            v571 = &v32[v825];
            if (v571 >= v94)
            {
              v572 = v567;
            }

            else
            {
              v572 = 0;
            }

            v91 += 2 * v564 + 2 * v572;
            v32 = &v571[v572];
            v92 += v565;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v573 = &v852[v853];
            v574 = -(v856 * v826);
            if (v573 < v850)
            {
              v574 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v574];
            v575 = -(v853 * v826);
            if (v573 < v850)
            {
              v575 = 0;
            }

            v32 = &v573[v575];
            v94 += 8 * v575 + 8 * v853;
            v858 += 2 * v856 + 2 * v574;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v566 = v842 - 1;
          if (v842 == 1)
          {
LABEL_1047:
            v869[0] = 0;
            v20 = v822;
            LODWORD(v22) = v823;
            v24 = v820;
            v36 = v821;
LABEL_1048:
            v89 = v828;
            v32 = v829;
LABEL_1049:
            v90 = v858;
            if (!v89)
            {
              return 1;
            }

LABEL_1229:
            v87 = v94;
            v868 = 0;
LABEL_1230:
            v858 = v90;
            if (!shape_enum_clip_next(v89, &v868 + 1, &v868, v879, v869))
            {
              v303 = v89;
              goto LABEL_1254;
            }

            v828 = v89;
            v829 = v32;
            if (v850)
            {
              v35 = v830;
              v101 = (v824 + 8 * v830 * v868 + 8 * SHIDWORD(v868));
              v779 = (v868 + *(v24 + 60)) % v826;
              v93 = v879[0];
              v780 = (HIDWORD(v868) + *(v24 + 56)) % v827;
              v781 = &v32[v853 * v779];
              v32 = &v781[v780];
              v94 = &v781[v827];
              v100 = v831;
              v37 = v867;
              if (v867)
              {
                v92 = (v831 + 2 * v36 * v868 + 2 * SHIDWORD(v868));
              }

              v782 = v863;
              if (v867)
              {
                v782 = v36 - v879[0];
              }

              v863 = v782;
              if (v865)
              {
                v56 = v865;
              }

              else
              {
                v56 = 0;
              }

              v783 = v858;
              if (v865)
              {
                v783 = &v20[2 * v856 * v779 + 2 * v780];
              }

              v858 = v783;
              if (v865)
              {
                v91 = &v20[2 * v856 * v779 + 2 * v780];
              }

              LODWORD(v25) = v879[0];
              v852 = &v781[v780];
              v818 = (v868 + *(v24 + 60)) % v826;
              v819 = (HIDWORD(v868) + *(v24 + 56)) % v827;
            }

            else
            {
              v850 = 0;
              v784 = HIDWORD(v868) * v825;
              LODWORD(v25) = v879[0];
              v785 = v879[0] * v825;
              v35 = v830;
              v100 = v831;
              v101 = (v824 + 8 * v830 * v868 + 8 * HIDWORD(v868) * v825);
              v93 = v879[0] * v825;
              v32 += v868 * v827 + HIDWORD(v868) * v825;
              v853 = v827 - v879[0] * v825;
              v37 = v867;
              if (v867)
              {
                v92 = (v831 + 2 * v36 * v868 + 2 * v784);
              }

              v786 = v863;
              if (v867)
              {
                v786 = v36 - v785;
              }

              v863 = v786;
              v787 = &v20[2 * v868 * v826 + 2 * v784];
              v788 = v826 - v785;
              v56 = v865;
              if (v865)
              {
                v91 = v787;
              }

              v789 = v856;
              if (v865)
              {
                v789 = v788;
              }

              v856 = v789;
              v94 = v87;
            }

            goto LABEL_413;
          }
        }

      case 14:
        v821 = v36;
        v822 = v20;
        v335 = v56;
        v336 = 2 * v37;
        v337 = v869[0];
        v338 = -v827;
        while (1)
        {
          v835 = v337;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_483;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_483;
              }

              __asm { FCVT            S4, H0 }
            }

            v341 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAscreenPDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v17, *&v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v341;
            v338 = -v827;
LABEL_483:
            v342 = &v32[v825];
            if (v342 >= v94)
            {
              v343 = v338;
            }

            else
            {
              v343 = 0;
            }

            v91 += 2 * v335 + 2 * v343;
            v32 = &v342[v343];
            v92 += v336;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v344 = &v852[v853];
            v345 = -(v856 * v826);
            if (v344 < v850)
            {
              v345 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v345];
            v346 = -(v853 * v826);
            if (v344 < v850)
            {
              v346 = 0;
            }

            v32 = &v344[v346];
            v94 += 8 * v346 + 8 * v853;
            v858 += 2 * v856 + 2 * v345;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v337 = v835 - 1;
          if (v835 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 15:
        v821 = v36;
        v822 = v20;
        v476 = v56;
        v477 = 2 * v37;
        v478 = v869[0];
        v479 = -v827;
        while (1)
        {
          v838 = v478;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_676;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_676;
              }

              __asm { FCVT            S4, H0 }
            }

            v483 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAoverlayPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v483;
            v479 = -v827;
LABEL_676:
            v484 = &v32[v825];
            if (v484 >= v94)
            {
              v485 = v479;
            }

            else
            {
              v485 = 0;
            }

            v91 += 2 * v476 + 2 * v485;
            v32 = &v484[v485];
            v92 += v477;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v486 = &v852[v853];
            v487 = -(v856 * v826);
            if (v486 < v850)
            {
              v487 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v487];
            v488 = -(v853 * v826);
            if (v486 < v850)
            {
              v488 = 0;
            }

            v32 = &v486[v488];
            v94 += 8 * v488 + 8 * v853;
            v858 += 2 * v856 + 2 * v487;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v478 = v838 - 1;
          if (v838 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 16:
        v821 = v36;
        v822 = v20;
        v323 = v56;
        v324 = 2 * v37;
        v325 = v869[0];
        v326 = -v827;
        while (1)
        {
          v834 = v325;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_458;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_458;
              }

              __asm { FCVT            S4, H0 }
            }

            v329 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAdarkenPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, *v32, _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v329;
            v326 = -v827;
LABEL_458:
            v330 = &v32[v825];
            if (v330 >= v94)
            {
              v331 = v326;
            }

            else
            {
              v331 = 0;
            }

            v91 += 2 * v323 + 2 * v331;
            v32 = &v330[v331];
            v92 += v324;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v332 = &v852[v853];
            v333 = -(v856 * v826);
            if (v332 < v850)
            {
              v333 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v333];
            v334 = -(v853 * v826);
            if (v332 < v850)
            {
              v334 = 0;
            }

            v32 = &v332[v334];
            v94 += 8 * v334 + 8 * v853;
            v858 += 2 * v856 + 2 * v333;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v325 = v834 - 1;
          if (v834 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 17:
        v821 = v36;
        v822 = v20;
        v514 = v56;
        v515 = 2 * v37;
        v516 = v869[0];
        v517 = -v827;
        while (1)
        {
          v839 = v516;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_751;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_751;
              }

              __asm { FCVT            S4, H0 }
            }

            v520 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAlightenPDA(_Q0.n128_u64[0], v12, v13, v14, _Q4, _Q5, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, *v32, _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v520;
            v517 = -v827;
LABEL_751:
            v521 = &v32[v825];
            if (v521 >= v94)
            {
              v522 = v517;
            }

            else
            {
              v522 = 0;
            }

            v91 += 2 * v514 + 2 * v522;
            v32 = &v521[v522];
            v92 += v515;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v523 = &v852[v853];
            v524 = -(v856 * v826);
            if (v523 < v850)
            {
              v524 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v524];
            v525 = -(v853 * v826);
            if (v523 < v850)
            {
              v525 = 0;
            }

            v32 = &v523[v525];
            v94 += 8 * v525 + 8 * v853;
            v858 += 2 * v856 + 2 * v524;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v516 = v839 - 1;
          if (v839 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 18:
        v821 = v36;
        v822 = v20;
        v590 = v56;
        v591 = 2 * v37;
        v592 = v869[0];
        v593 = -v827;
        while (1)
        {
          v843 = v592;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_895;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_895;
              }

              __asm { FCVT            S4, H0 }
            }

            v597 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAcolordodgePDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v597;
            v593 = -v827;
LABEL_895:
            v598 = &v32[v825];
            if (v598 >= v94)
            {
              v599 = v593;
            }

            else
            {
              v599 = 0;
            }

            v91 += 2 * v590 + 2 * v599;
            v32 = &v598[v599];
            v92 += v591;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v600 = &v852[v853];
            v601 = -(v856 * v826);
            if (v600 < v850)
            {
              v601 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v601];
            v602 = -(v853 * v826);
            if (v600 < v850)
            {
              v602 = 0;
            }

            v32 = &v600[v602];
            v94 += 8 * v602 + 8 * v853;
            v858 += 2 * v856 + 2 * v601;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v592 = v843 - 1;
          if (v843 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 19:
        v821 = v36;
        v822 = v20;
        v643 = v56;
        v644 = 2 * v37;
        v645 = v869[0];
        v646 = -v827;
        while (1)
        {
          v845 = v645;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_985;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_985;
              }

              __asm { FCVT            S4, H0 }
            }

            v650 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAcolorburnPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v650;
            v646 = -v827;
LABEL_985:
            v651 = &v32[v825];
            if (v651 >= v94)
            {
              v652 = v646;
            }

            else
            {
              v652 = 0;
            }

            v91 += 2 * v643 + 2 * v652;
            v32 = &v651[v652];
            v92 += v644;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v653 = &v852[v853];
            v654 = -(v856 * v826);
            if (v653 < v850)
            {
              v654 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v654];
            v655 = -(v853 * v826);
            if (v653 < v850)
            {
              v655 = 0;
            }

            v32 = &v653[v655];
            v94 += 8 * v655 + 8 * v853;
            v858 += 2 * v856 + 2 * v654;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v645 = v845 - 1;
          if (v845 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 20:
        v821 = v36;
        v822 = v20;
        v526 = v56;
        v527 = 2 * v37;
        v528 = v869[0];
        v529 = -v827;
        while (1)
        {
          v840 = v528;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_776;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_776;
              }

              __asm { FCVT            S4, H0 }
            }

            v532 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAsoftlightPDA(_Q0.n128_u64[0], v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v532;
            v529 = -v827;
LABEL_776:
            v533 = &v32[v825];
            if (v533 >= v94)
            {
              v534 = v529;
            }

            else
            {
              v534 = 0;
            }

            v91 += 2 * v526 + 2 * v534;
            v32 = &v533[v534];
            v92 += v527;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v535 = &v852[v853];
            v536 = -(v856 * v826);
            if (v535 < v850)
            {
              v536 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v536];
            v537 = -(v853 * v826);
            if (v535 < v850)
            {
              v537 = 0;
            }

            v32 = &v535[v537];
            v94 += 8 * v537 + 8 * v853;
            v858 += 2 * v856 + 2 * v536;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v528 = v840 - 1;
          if (v840 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 21:
        v821 = v36;
        v822 = v20;
        v551 = v56;
        v552 = 2 * v37;
        v553 = v869[0];
        v554 = -v827;
        while (1)
        {
          v841 = v553;
          do
          {
            _S4 = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_818;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_818;
              }

              __asm { FCVT            S4, H0 }
            }

            v558 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAhardlightPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v558;
            v554 = -v827;
LABEL_818:
            v559 = &v32[v825];
            if (v559 >= v94)
            {
              v560 = v554;
            }

            else
            {
              v560 = 0;
            }

            v91 += 2 * v551 + 2 * v560;
            v32 = &v559[v560];
            v92 += v552;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v561 = &v852[v853];
            v562 = -(v856 * v826);
            if (v561 < v850)
            {
              v562 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v562];
            v563 = -(v853 * v826);
            if (v561 < v850)
            {
              v563 = 0;
            }

            v32 = &v561[v563];
            v94 += 8 * v563 + 8 * v853;
            v858 += 2 * v856 + 2 * v562;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v553 = v841 - 1;
          if (v841 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 22:
        v821 = v36;
        v822 = v20;
        v631 = v56;
        v632 = 2 * v37;
        v633 = v869[0];
        v634 = -v827;
        while (1)
        {
          v844 = v633;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_960;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_960;
              }

              __asm { FCVT            S4, H0 }
            }

            v637 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAdifferencePDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, *&v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v637;
            v634 = -v827;
LABEL_960:
            v638 = &v32[v825];
            if (v638 >= v94)
            {
              v639 = v634;
            }

            else
            {
              v639 = 0;
            }

            v91 += 2 * v631 + 2 * v639;
            v32 = &v638[v639];
            v92 += v632;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v640 = &v852[v853];
            v641 = -(v856 * v826);
            if (v640 < v850)
            {
              v641 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v641];
            v642 = -(v853 * v826);
            if (v640 < v850)
            {
              v642 = 0;
            }

            v32 = &v640[v642];
            v94 += 8 * v642 + 8 * v853;
            v858 += 2 * v856 + 2 * v641;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v633 = v844 - 1;
          if (v844 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 23:
        v821 = v36;
        v822 = v20;
        v656 = v56;
        v657 = 2 * v37;
        v658 = v869[0];
        v659 = -v827;
        while (1)
        {
          v846 = v658;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_1010;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_1010;
              }

              __asm { FCVT            S4, H0 }
            }

            v662 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAexclusionPDA(_Q0, v12, v13, v14.n128_u64[0], *_Q4.i64, *_Q5.f32, v17, *&v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v662;
            v659 = -v827;
LABEL_1010:
            v663 = &v32[v825];
            if (v663 >= v94)
            {
              v664 = v659;
            }

            else
            {
              v664 = 0;
            }

            v91 += 2 * v656 + 2 * v664;
            v32 = &v663[v664];
            v92 += v657;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v665 = &v852[v853];
            v666 = -(v856 * v826);
            if (v665 < v850)
            {
              v666 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v666];
            v667 = -(v853 * v826);
            if (v665 < v850)
            {
              v667 = 0;
            }

            v32 = &v665[v667];
            v94 += 8 * v667 + 8 * v853;
            v858 += 2 * v856 + 2 * v666;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v658 = v846 - 1;
          if (v846 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 24:
        v821 = v36;
        v822 = v20;
        v449 = v56;
        v450 = 2 * v37;
        v451 = v869[0];
        v452 = -v827;
        while (1)
        {
          v837 = v451;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_628;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_628;
              }

              __asm { FCVT            S4, H0 }
            }

            v455 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAhuePDA(_Q0, v12, v13.n128_u64[0], v14, *_Q4.i64, *_Q5.f32, *&v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v455;
            v452 = -v827;
LABEL_628:
            v456 = &v32[v825];
            if (v456 >= v94)
            {
              v457 = v452;
            }

            else
            {
              v457 = 0;
            }

            v91 += 2 * v449 + 2 * v457;
            v32 = &v456[v457];
            v92 += v450;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v458 = &v852[v853];
            v459 = -(v856 * v826);
            if (v458 < v850)
            {
              v459 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v459];
            v460 = -(v853 * v826);
            if (v458 < v850)
            {
              v460 = 0;
            }

            v32 = &v458[v460];
            v94 += 8 * v460 + 8 * v853;
            v858 += 2 * v856 + 2 * v459;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v451 = v837 - 1;
          if (v837 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 25:
        v821 = v36;
        v822 = v20;
        v437 = v56;
        v438 = 2 * v37;
        v439 = v869[0];
        v440 = -v827;
        while (1)
        {
          v836 = v439;
          do
          {
            _Q4.i32[0] = 1.0;
            _Q5.i32[0] = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_603;
              }

              __asm { FCVT            S5, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S5 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_603;
              }

              __asm { FCVT            S4, H0 }
            }

            v443 = v94;
            _Q0.n128_u16[0] = v101->i16[0];
            v12.n128_u16[0] = v101->u16[1];
            v13.n128_u16[0] = v101->u16[2];
            v14.n128_u16[0] = v101->u16[3];
            v100 = PDAsaturationPDA(_Q0, v12, v13.n128_u64[0], v14, *_Q4.i64, *_Q5.f32, *&v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v443;
            v440 = -v827;
LABEL_603:
            v444 = &v32[v825];
            if (v444 >= v94)
            {
              v445 = v440;
            }

            else
            {
              v445 = 0;
            }

            v91 += 2 * v437 + 2 * v445;
            v32 = &v444[v445];
            v92 += v438;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v446 = &v852[v853];
            v447 = -(v856 * v826);
            if (v446 < v850)
            {
              v447 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v447];
            v448 = -(v853 * v826);
            if (v446 < v850)
            {
              v448 = 0;
            }

            v32 = &v446[v448];
            v94 += 8 * v448 + 8 * v853;
            v858 += 2 * v856 + 2 * v447;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v439 = v836 - 1;
          if (v836 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 26:
        v821 = v36;
        v822 = v20;
        v668 = v56;
        v669 = 2 * v37;
        v670 = v869[0];
        v671 = -v827;
        while (1)
        {
          v847 = v670;
          do
          {
            _Q5.i32[0] = 1.0;
            _S4 = 1.0;
            if (v56)
            {
              __asm { FCMP            H0, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_1035;
              }

              __asm { FCVT            S4, H0 }
            }

            if (v37)
            {
              __asm { FCMP            H0, #0 }

              if (!(!_ZF & _CF))
              {
                _Q0.n128_u64[0] = *v32;
                *v101 = *v32;
                __asm { FCVT            H0, S4 }

                *v92 = _Q0.n128_u16[0];
                goto LABEL_1035;
              }

              __asm { FCVT            S5, H0 }
            }

            v675 = v94;
            _Q0.n128_u16[0] = v32->i16[0];
            v12.n128_u16[0] = v32->u16[1];
            v13.n128_u16[0] = v32->u16[2];
            v14.n128_u16[0] = v32->u16[3];
            v100 = PDAluminosityPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v101->i32[0], HIWORD(v101->i32[0]), v101->i32[1], HIWORD(v101->i32[1]), _Q5.f32[0]);
            LODWORD(v37) = v867;
            *v101 = v100;
            if (v867)
            {
              *v92 = v5;
            }

            v56 = v865;
            v94 = v675;
            v671 = -v827;
LABEL_1035:
            v676 = &v32[v825];
            if (v676 >= v94)
            {
              v677 = v671;
            }

            else
            {
              v677 = 0;
            }

            v91 += 2 * v668 + 2 * v677;
            v32 = &v676[v677];
            v92 += v669;
            v101 += v825;
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
          if (v850)
          {
            v678 = &v852[v853];
            v679 = -(v856 * v826);
            if (v678 < v850)
            {
              v679 = 0;
            }

            v91 = &v858[2 * v856 + 2 * v679];
            v680 = -(v853 * v826);
            if (v678 < v850)
            {
              v680 = 0;
            }

            v32 = &v678[v680];
            v94 += 8 * v680 + 8 * v853;
            v858 += 2 * v856 + 2 * v679;
            v852 = v32;
          }

          else
          {
            v32 += v853;
            v91 += 2 * v856;
          }

          LODWORD(v25) = v848;
          v101 += v860;
          v92 += 2 * v863;
          v670 = v847 - 1;
          if (v847 == 1)
          {
            goto LABEL_1047;
          }
        }

      case 27:
        v821 = v36;
        v822 = v20;
        v310 = v56;
        v311 = 2 * v37;
        v312 = v869[0];
        v313 = -v827;
        break;
      default:
        goto LABEL_1048;
    }

LABEL_422:
    v833 = v312;
    while (1)
    {
      _S4 = 1.0;
      _Q5.i32[0] = 1.0;
      if (v56)
      {
        __asm { FCMP            H0, #0 }

        if (_NF ^ _VF | _ZF)
        {
          goto LABEL_433;
        }

        __asm { FCVT            S5, H0 }
      }

      if (!v37)
      {
        goto LABEL_430;
      }

      __asm { FCMP            H0, #0 }

      if (!_ZF & _CF)
      {
        __asm { FCVT            S4, H0 }

LABEL_430:
        v317 = v94;
        _Q0.n128_u16[0] = v101->i16[0];
        v12.n128_u16[0] = v101->u16[1];
        v13.n128_u16[0] = v101->u16[2];
        v14.n128_u16[0] = v101->u16[3];
        v100 = PDAluminosityPDA(_Q0, v12, v13, v14, _S4, *_Q5.i64, v17, v18, v100, v5, v29, v6, v35, v56, v53, v94, v32->i32[0], HIWORD(v32->i32[0]), v32->i32[1], HIWORD(v32->i32[1]), _Q5.f32[0]);
        LODWORD(v37) = v867;
        *v101 = v100;
        if (v867)
        {
          *v92 = v5;
        }

        v56 = v865;
        v94 = v317;
        v313 = -v827;
        goto LABEL_433;
      }

      _Q0.n128_u64[0] = *v32;
      *v101 = *v32;
      __asm { FCVT            H0, S5 }

      *v92 = _Q0.n128_u16[0];
LABEL_433:
      v318 = &v32[v825];
      if (v318 >= v94)
      {
        v319 = v313;
      }

      else
      {
        v319 = 0;
      }

      v91 += 2 * v310 + 2 * v319;
      v32 = &v318[v319];
      v92 += v311;
      v101 += v825;
      LODWORD(v25) = v25 - 1;
      if (!v25)
      {
        if (v850)
        {
          v320 = &v852[v853];
          v321 = -(v856 * v826);
          if (v320 < v850)
          {
            v321 = 0;
          }

          v91 = &v858[2 * v856 + 2 * v321];
          v322 = -(v853 * v826);
          if (v320 < v850)
          {
            v322 = 0;
          }

          v32 = &v320[v322];
          v94 += 8 * v322 + 8 * v853;
          v858 += 2 * v856 + 2 * v321;
          v852 = v32;
        }

        else
        {
          v32 += v853;
          v91 += 2 * v856;
        }

        LODWORD(v25) = v848;
        v101 += v860;
        v92 += 2 * v863;
        v312 = v833 - 1;
        if (v833 == 1)
        {
          goto LABEL_1047;
        }

        goto LABEL_422;
      }
    }
  }

  v30 = *(v5 + 128);
  if ((v30 | 8) == 8)
  {
    if ((*v5 & 0xFF00) == 0x400)
    {
      CMYKf16_mark_constmask(v5, v22, _Q0.n128_f64[0], v12, v13.n128_f64[0], v14, _Q4, _Q5, v17, v18, v29, v6, v7, v8, v30, v10);
    }

    else
    {
      CMYKf16_mark_pixelmask(v5, v22, _Q0.n128_f64[0], v12, v13.n128_f64[0], v14, _Q4, _Q5, v17, v18, v29, v6, v7, v8, v30, v10);
    }

    return 1;
  }

  v38 = *(v5 + 112);
  v39 = *(v5 + 116);
  v40 = (v38 + 15) & 0xFFFFFFF0;
  v41 = v40 * v39;
  if (v41 <= 4096)
  {
    v43 = v879;
    v44 = v5;
  }

  else
  {
    v42 = malloc_type_malloc(v41, 0x100004077774924uLL);
    if (!v42)
    {
      return 1;
    }

    v43 = v42;
    v44 = v820;
    v29 = *(v820 + 136);
    LODWORD(v30) = *(v820 + 128);
  }

  CGSConvertBitsToMask(v29, *(v44 + 124), v43, v40, v38, v39, v30);
  v79 = *(v44 + 112);
  v875 = *(v44 + 96);
  v876 = v79;
  v80 = *(v44 + 144);
  v877 = *(v44 + 128);
  v878 = v80;
  v81 = *(v44 + 48);
  v871 = *(v44 + 32);
  v872 = v81;
  v82 = *(v44 + 80);
  v873 = *(v44 + 64);
  v874 = v82;
  v83 = *v44;
  v84 = *(v44 + 16);
  *v869 = *v44;
  v870 = v84;
  HIDWORD(v876) = (v38 + 15) & 0xFFFFFFF0;
  *(&v877 + 1) = v43;
  if (BYTE1(v869[0]) << 8 == 1024)
  {
    CMYKf16_mark_constmask(v869, v22, *&v83, v84, v73, v74, v75, v76, v77, v78, v67, v68, v69, v70, v71, v72);
  }

  else
  {
    CMYKf16_mark_pixelmask(v869, v22, *&v83, v84, v73, v74, v75, v76, v77, v78, v67, v68, v69, v70, v71, v72);
  }

  if (v43 != v879)
  {
LABEL_412:
    v303 = v43;
LABEL_1254:
    free(v303);
  }

  return 1;
}