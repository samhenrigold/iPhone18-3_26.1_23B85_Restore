void PDFContentStreamEndTag(uint64_t *a1)
{
  if (CFArrayGetCount(a1[22]))
  {
    v2 = *a1;
    v3 = *(*a1 + 600);
    if (v3 && CFArrayGetCount(v3) >= 2)
    {
      Count = CFArrayGetCount(*(v2 + 600));
      CFArrayRemoveValueAtIndex(*(v2 + 600), Count - 1);
    }

    CGCFArrayRemoveLastValue(a1[22]);
    v5 = a1[8];

    PDFWriterPrintf(v5, "EMC");
  }
}

void PDFContentStreamSetRedactionPath(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 200);
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

    *(a1 + 200) = cf;
  }
}

void PDFContentStreamBegin(uint64_t a1)
{
  if (a1)
  {
    PDFDocumentBeginObject(*a1, *(a1 + 8));
    PDFDocumentPrintf(*a1, "<<");
    v2 = *a1;
    if (*(*a1 + 73) == 1)
    {

      PDFDocumentPrintf(v2, "/Filter /FlateDecode");
    }
  }
}

void PDFContentStreamBeginData(uint64_t *result)
{
  if (result)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    result[4] = Mutable;
    Encryptor = CGDataConsumerCreateWithCFData(Mutable);
    result[5] = Encryptor;
    result[3] = Encryptor;
    v5 = *result;
    v6 = *(*result + 56);
    if (v6)
    {
      Encryptor = PDFSecurityHandlerCreateEncryptor(v6, Encryptor, result[1]);
      result[7] = Encryptor;
      result[3] = Encryptor;
      v5 = *result;
    }

    if (*(v5 + 73) == 1)
    {
      Encryptor = CGDataConsumerCreateFlateEncoder(Encryptor);
      result[6] = Encryptor;
      result[3] = Encryptor;
    }

    v7 = PDFWriterCreate(Encryptor);
    result[8] = v7;
    v8 = *result;
    v9 = malloc_type_calloc(1uLL, 0x108uLL, 0x1060040267ABF3BuLL);
    __CFSetLastAllocationEventName();
    if (v9)
    {
      *v9 = 1;
      v9[1] = v8;
      v9[2] = v7;
      v11 = *(v8 + 440);
      if (!v11)
      {
        v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004055CCDE27uLL);
        __CFSetLastAllocationEventName();
        if (v11)
        {
          *v11 = v8;
        }

        *(v8 + 440) = v11;
      }

      v12 = result[14];
      v9[3] = v11;
      v9[4] = v12;
      v9[5] = CFArrayCreateMutable(v2, 0, 0);
      v10 = gstate_init(v9);
    }

    result[13] = v9;
    v13 = result[8];

    PDFWriterPrintf(v13, "q", v10);
  }
}

uint64_t PDFContentStreamEndData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    PDFWriterPrintf(*(result + 64), "Q");
    CGDataConsumerClose(v1[6]);
    result = CGDataConsumerClose(v1[7]);
    v2 = v1[3];
    if (v2)
    {
      v2 = *(v2 + 40);
    }

    v1[2] = v2;
  }

  return result;
}

CFDataRef *PDFContentStreamEnd(CFDataRef *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = *(*result + 3);
    Length = CFDataGetLength(result[4]);
    PDFDocumentPrintf(v2, "/Length %O", Length);
    PDFDocumentPrintf(*v1, ">>\n");
    PDFDocumentPrintf(*v1, "stream\n");
    BytePtr = CFDataGetBytePtr(v1[4]);
    v6 = CFDataGetLength(v1[4]);
    CGDataConsumerPutBytes(v3, BytePtr, v6);
    PDFDocumentPrintf(*v1, "\n");
    PDFDocumentPrintf(*v1, "endstream\n");
    v7 = *v1;

    return PDFDocumentEndObject(v7);
  }

  return result;
}

void PDFContentStreamDrawImage(const __CFArray **a1, uint64_t a2, CGImageRef cf, double a4, double a5, double a6, double a7)
{
  if (!a1 || !cf)
  {
    return;
  }

  v8 = a2;
  v9 = a1;
  v10 = a1[25];
  if (!v10 || (v11 = *(a2 + 40), *&transform.a = *(a2 + 24), *&transform.c = v11, *&transform.tx = *(a2 + 56), v83 = CGRectApplyAffineTransform(*&a4, &transform), width = v83.size.width, height = v83.size.height, x = v83.origin.x, bytesPerRow = v83.origin.y, (CGPathIntersectsRect(v10, v83.origin.x, v83.origin.y, v83.size.width, v83.size.height) & 1) == 0))
  {
    CFRetain(cf);
    Image = cf;
    goto LABEL_17;
  }

  v14 = CGBitmapContextCreateForFlatteningImage(cf, 0, 0);
  v15 = *(cf + 5);
  v16 = *(cf + 6);
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v15;
  v84.size.height = v16;
  CGContextDrawImage(v14, v84, cf);
  transform.a = v15 / width;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = v16 / height;
  *&transform.tx = vmlsq_lane_f64(vmlsq_lane_f64(0, COERCE_UNSIGNED_INT64(v15 / width), x, 0), *&transform.c, bytesPerRow, 0);
  v17 = CGPathCreateMutableCopyByTransformingPath(v10, &transform);
  CGContextSetRGBFillColor(v14, 0.0, 0.0, 0.0, 1.0);
  CGContextAddPath(v14, v17);
  CGContextDrawPath(v14, kCGPathFill);
  Image = CGBitmapContextCreateImage(v14);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (Image)
  {
    if (Image != cf)
    {
      LastValue = CGCFArrayGetLastValue(v9[22]);
      transform.a = 0.0;
      if (LastValue)
      {
        if (CFNumberGetValue(LastValue, kCFNumberSInt64Type, &transform))
        {
          v20 = *(*v9 + 320);
          if (v20)
          {
            v21 = vcnt_s8(v20);
            v21.i16[0] = vaddlv_u8(v21);
            if (v21.u32[0] > 1uLL)
            {
              a = transform.a;
              if (*&transform.a >= *&v20)
              {
                *&a = *&transform.a % *&v20;
              }
            }

            else
            {
              *&a = (*&v20 - 1) & *&transform.a;
            }

            v66 = *(*(*v9 + 39) + 8 * *&a);
            if (v66)
            {
              for (i = *v66; i; i = *i)
              {
                v68 = i[1];
                if (v68 == *&transform.a)
                {
                  if (i[2] == *&transform.a)
                  {
                    goto LABEL_17;
                  }
                }

                else
                {
                  if (v21.u32[0] > 1uLL)
                  {
                    if (v68 >= *&v20)
                    {
                      v68 %= *&v20;
                    }
                  }

                  else
                  {
                    v68 &= *&v20 - 1;
                  }

                  if (v68 != *&a)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }
      }
    }

LABEL_17:
    v23 = *(*(v8 + 120) + 4);
    if ((*(Image + 39) & 2) != 0)
    {
      if (*(Image + 7) == 1)
      {
        v24 = PDFDocumentAddImage(*v9, Image, *(*(v8 + 120) + 4));
        v25 = 1;
LABEL_44:
        v42 = v9[14];
        *(v42 + 6) |= 0x1Cu;
        v43 = *(v42 + 8);
        if (!v43)
        {
          v43 = CGOrderedSetCreate();
          *(v42 + 8) = v43;
        }

        CGOrderedSetAddValue(v43, v24);
        v44 = *(v42 + 1);
        v45 = *(v44 + 632);
        if (v45)
        {
          v46 = v24[2];
          if (v46)
          {
            v46 = *(v46 + 8);
          }

          if (*(v45 + 16) == 1 && !*(v45 + 32))
          {
            *(v45 + 32) = v46;
            v47 = *(v44 + 640);
            *(v44 + 640) = v47 + 1;
            *(v45 + 40) = v47;
          }

          else
          {
            v47 = -1;
          }

          v24[13] = v47;
        }

        v48 = v9[8];
        v49 = v9[13];
        PDFGStateSetClipStack(v49, *(v8 + 112));
        v50 = *(v8 + 120);
        v51 = *(v50 + 4);
        if (((v51 >> 20) & 0xF) != 0)
        {
          v52 = v51 << 8;
        }

        else
        {
          v52 = v51 << 12;
        }

        if (v52 >> 28)
        {
          v53 = v52 >> 28;
        }

        else
        {
          v53 = 2;
        }

        if (*(v49 + 80) != v53)
        {
          *(v49 + 80) = v53;
          addEmitFunction(v49, emitRenderingIntentChange);
          v50 = *(v8 + 120);
        }

        v54 = *(v50 + 8);
        if (v25)
        {
          FillColor = CGGStateGetFillColor(v8);
          PDFGStateSetFillColor(v49, FillColor);
          v56 = *(v9 + 17);
          *&transform.a = *(v9 + 15);
          *&transform.c = v56;
          *&transform.tx = *(v9 + 19);
          PDFGStateSetPatternMatrix(v49, &transform, *(*(v8 + 120) + 24), *(*(v8 + 120) + 32));
          v57 = *(*(v8 + 144) + 16);
          if (*(v49 + 224) != v57)
          {
            *(v49 + 224) = v57;
            addEmitFunction(v49, emitSmoothnessChange);
          }

          if (FillColor)
          {
            if ((FillColor & 0x8000000000000000) != 0)
            {
              Alpha = CGTaggedColorGetAlpha(FillColor);
            }

            else
            {
              Alpha = *(FillColor + 8 * *(FillColor + 56) + 64);
            }
          }

          else
          {
            Alpha = 0.0;
          }

          v54 = v54 * Alpha;
          v59 = "image mask";
        }

        else
        {
          v59 = "image";
        }

        if (*(v49 + 168) != v54)
        {
          *(v49 + 168) = v54;
          addEmitFunction(v49, emitNonStrokeAlphaChange);
        }

        v60 = *(v8 + 144);
        v61 = *(v60 + 24);
        if (*(v49 + 200) != v61)
        {
          *(v49 + 200) = v61;
          addEmitFunction(v49, emitNonStrokeOverprintChange);
          v60 = *(v8 + 144);
        }

        PDFGStateSetOverprintMode(v49, *(v60 + 28));
        PDFGStateSetBlackGeneration(v49, *(*(v8 + 144) + 32));
        PDFGStateSetUndercolorRemoval(v49, *(*(v8 + 144) + 40));
        PDFGStateSetStyle(v49, *(*(v8 + 120) + 16));
        PDFGStateSetSoftMask(v49, *(*(v8 + 120) + 40));
        v62 = (*(*(v8 + 120) + 4) << 16) >> 24;
        if ((v62 - 13) >= 0xF)
        {
          v62 = 2;
        }

        if (*(v49 + 248) != v62)
        {
          *(v49 + 248) = v62;
          addEmitFunction(v49, emitBlendModeChange);
        }

        PDFWriterAnnotate(v48, "  BEGIN: synchronizing gstate.");
        PDFGStateEmit(v49);
        PDFWriterAnnotate(v48, "  END: synchronizing gstate.");
        PDFWriterAnnotate(v48, "%s: BEGIN: drawing %s.", "PDFWriteImage", v59);
        v63 = *(v8 + 40);
        *&transform.a = *(v8 + 24);
        *&transform.c = v63;
        *&transform.tx = *(v8 + 56);
        *&transform.tx = vmlaq_n_f64(vmlaq_n_f64(*&transform.tx, *&transform.a, a4), v63, a5);
        v64 = vmulq_n_f64(*&transform.a, a6);
        v65 = vmulq_n_f64(v63, a7);
        *&transform.a = v64;
        *&transform.c = v65;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v64, xmmword_18439C630), vceqq_f64(v65, xmmword_18439C780))))) & 1) == 0 && transform.tx == 0.0 && transform.ty == 0.0)
        {
          PDFWriterPrintf(v48, "/%N Do", v24 + 3);
        }

        else if (-v64.f64[1] * v65.f64[0] + v64.f64[0] * v65.f64[1] != 0.0)
        {
          PDFWriterPrintf(v48, "q %*m cm", &transform);
          PDFWriterPrintf(v48, "/%N Do", v24 + 3);
          PDFWriterPrintf(v48, "Q", decode);
        }

        PDFWriterAnnotate(v48, "%s: END: drawing %s.", "PDFWriteImage", v59);
        CFRelease(Image);
        return;
      }

      NumberOfComponents = CGGStateGetFillColor(v8);
      v27 = NumberOfComponents;
      v72 = v8;
      v73 = v9;
      v75 = v23;
      if (NumberOfComponents)
      {
        if (NumberOfComponents < 0)
        {
          NumberOfComponents = CGTaggedColorGetNumberOfComponents(NumberOfComponents);
        }

        else
        {
          NumberOfComponents = *(NumberOfComponents + 56);
        }
      }

      v28 = NumberOfComponents - 1;
      v29 = *(Image + 5);
      v30 = *(Image + 6);
      bytesPerRowa = (NumberOfComponents - 1) * v29;
      v70 = bytesPerRowa * v30;
      v71 = Image;
      v31 = malloc_type_malloc(bytesPerRowa * v30, 0xCC251E8uLL);
      if (v30)
      {
        for (j = 0; j != v30; ++j)
        {
          if (v29)
          {
            v33 = 0;
            v34 = &v31[j * bytesPerRowa];
            do
            {
              if (v28)
              {
                v35 = 0;
                v36 = v28;
                do
                {
                  *v34++ = (CGColorGetComponents(v27)[v35++] * 255.0 + 0.5);
                  --v36;
                }

                while (v36);
              }

              ++v33;
            }

            while (v33 != v29);
          }
        }
      }

      check_clients_buffer("CGDataProviderCreateWithData", v31, v70);
      v37 = CGDataProviderCreateWithDataInternal(0, v31, v70, release_data, 0);
      if (v27)
      {
        v9 = v73;
        v38 = v75;
        if ((v27 & 0x8000000000000000) != 0)
        {
          ColorSpace = CGTaggedColorGetColorSpace(v27);
        }

        else
        {
          ColorSpace = *(v27 + 24);
        }
      }

      else
      {
        ColorSpace = 0;
        v9 = v73;
        v38 = v75;
      }

      v40 = CGImageCreate(v29, v30, 8uLL, 8 * v28, bytesPerRowa, ColorSpace, 0, v37, 0, 1, kCGRenderingIntentDefault);
      CGDataProviderRelease(v37);
      Image = v71;
      v41 = CGImageCreateWithMaskAndMatte(v40, v71, 0);
      if (v40)
      {
        CFRelease(v40);
      }

      v24 = PDFDocumentAddImage(*v9, v41, v38);
      v8 = v72;
      if (v41)
      {
        CFRelease(v41);
      }
    }

    else
    {
      v24 = PDFDocumentAddImage(*v9, Image, *(*(v8 + 120) + 4));
    }

    v25 = 0;
    goto LABEL_44;
  }
}

void PDFContentStreamDrawGlyphs(uint64_t a1, uint64_t a2, float64x2_t *a3, CGGlyph *a4, double *a5, unint64_t a6)
{
  v130 = a5;
  v129 = a4;
  v131 = a3;
  v144 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1EEE9AC00](2 * a6);
  v133 = &v129 - v11;
  if ((v10 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000102)
  {
    malloc_type_malloc(v9, 0x87F0E7C6uLL);
  }

  v12 = MEMORY[0x1EEE9AC00](16 * a6);
  v16 = &v129 - v15 - 15;
  v132 = v16;
  if (v13 > 0xFFFFFFFFFFFFFFELL)
  {
    v16 = 0;
  }

  v134 = v14;
  if (v13 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000102)
  {
    v135 = malloc_type_malloc(v12, 0x16328146uLL);
  }

  else
  {
    v135 = v16;
  }

  v17 = *(a1 + 200);
  v18 = a6;
  if (v17)
  {
    v18 = 0;
    v20 = *v131;
    v19 = v131[1];
    v21 = v131[2].f64[1];
    v136 = v131[2].f64[0];
    v22 = v20.f64[1];
    v140 = v19;
    v23 = v19.f64[1];
    v24 = v129;
    v25 = v130;
    v26 = a6;
    v139 = v20;
    do
    {
      v28 = *v25;
      v27 = v25[1];
      glyphs = *v24;
      v29 = *(*(a2 + 136) + 8);
      font_info = get_font_info(v29);
      if (font_info)
      {
        v31 = font_info[2];
      }

      else
      {
        v31 = 0.0;
      }

      v32 = *(*(a2 + 136) + 16) / v31;
      v138 = vmulq_n_f64(v140, v32);
      v137 = vmulq_n_f64(v139, v32);
      memset(&bboxes, 0, 32);
      GlyphBBoxes = CGFontGetGlyphBBoxes(v29, &glyphs, 1uLL, &bboxes);
      v34 = v27 * v140.f64[0];
      v35 = v27 * v23;
      if (GlyphBBoxes)
      {
        v36 = v136 + v34 + v139.f64[0] * v28;
        v146.origin.x = bboxes.a;
        v146.origin.y = bboxes.b;
        v146.size.width = bboxes.c;
        v146.size.height = bboxes.d;
        *&v143.a = v137;
        *&v143.c = v138;
        v143.tx = 0.0;
        v143.ty = 0.0;
        v147 = CGRectApplyAffineTransform(v146, &v143);
        v148 = CGRectOffset(v147, v36, v21 + v35 + v22 * v28);
      }

      else
      {
        v149.origin.x = -v31;
        v149.size.width = v31 + v31;
        *&v143.a = v137;
        *&v143.c = v138;
        v143.tx = 0.0;
        v143.ty = 0.0;
        v149.origin.y = -v31;
        v149.size.height = v31 + v31;
        v150 = CGRectApplyAffineTransform(v149, &v143);
        v152 = CGRectOffset(v150, v136 + v34 + v139.f64[0] * v28, v21 + v35 + v22 * v28);
        v148 = CGRectUnion(v152, v152);
      }

      v37 = *(a2 + 40);
      *&v143.a = *(a2 + 24);
      *&v143.c = v37;
      *&v143.tx = *(a2 + 56);
      v151 = CGRectApplyAffineTransform(v148, &v143);
      x = v151.origin.x;
      y = v151.origin.y;
      if ((CGPathIntersectsRect(v17, v151.origin.x, v151.origin.y, v151.size.width, v151.size.height) & 1) == 0)
      {
        v145.x = x;
        v145.y = y;
        if (!CGPathContainsPoint(v17, 0, v145, 0))
        {
          *&v134[2 * v18] = *v24;
          *&v135[2 * v18++] = *v25;
        }
      }

      v25 += 2;
      ++v24;
      --v26;
    }

    while (v26);
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  v40 = *(*(a2 + 136) + 1);
  if (*(a1 + 169))
  {
    v40 = 3;
  }

  if (v40 >= 8)
  {
LABEL_31:
    v47 = v135;
    if (v134 != v133)
    {
      free(v134);
    }

    if (v47 != v132)
    {
      free(v47);
    }

    return;
  }

  v41 = dword_184564550[v40];
  PDFWriterAnnotate(*(a1 + 64), "%s: BEGIN: %s", "PDFContentStreamDrawGlyphs", off_1E6E33200[v40]);
  PDFGStateSetClipStack(*(a1 + 104), *(a2 + 112));
  if (*(a1 + 169))
  {
    v42 = 3;
  }

  else
  {
    v42 = v41;
  }

  if ((v42 & 1) == 0)
  {
    v43 = *(*(a2 + 120) + 8);
    FillColor = CGGStateGetFillColor(a2);
    PDFGStateSetFillColor(*(a1 + 104), FillColor);
    v45 = *(a1 + 104);
    if (FillColor)
    {
      if ((FillColor & 0x8000000000000000) != 0)
      {
        Alpha = CGTaggedColorGetAlpha(FillColor);
      }

      else
      {
        Alpha = *(FillColor + 8 * *(FillColor + 56) + 64);
      }
    }

    else
    {
      Alpha = 0.0;
    }

    v48 = v43 * Alpha;
    if (*(v45 + 168) != v48)
    {
      *(v45 + 168) = v48;
      addEmitFunction(v45, emitNonStrokeAlphaChange);
    }

    v49 = *(a1 + 104);
    v50 = *(*(a2 + 144) + 24);
    if (*(v49 + 200) != v50)
    {
      *(v49 + 200) = v50;
      addEmitFunction(v49, emitNonStrokeOverprintChange);
    }
  }

  if ((v42 - 1) <= 1)
  {
    v51 = *(*(a2 + 120) + 8);
    StrokeColor = CGGStateGetStrokeColor(a2);
    PDFGStateSetStrokeColor(*(a1 + 104), StrokeColor);
    v53 = *(a1 + 104);
    if (StrokeColor)
    {
      if ((StrokeColor & 0x8000000000000000) != 0)
      {
        v54 = CGTaggedColorGetAlpha(StrokeColor);
      }

      else
      {
        v54 = *(StrokeColor + 8 * *(StrokeColor + 56) + 64);
      }
    }

    else
    {
      v54 = 0.0;
    }

    v56 = v51 * v54;
    if (*(v53 + 176) != v56)
    {
      *(v53 + 176) = v56;
      addEmitFunction(v53, emitStrokeAlphaChange);
    }

    PDFGStateSetStrokeOverprint(*(a1 + 104), *(*(a2 + 144) + 25));
    v57 = *(a1 + 104);
    v58 = *(a2 + 128);
    v59 = *(v58 + 8);
    if (v59 == -1.0905473e16)
    {
      v59 = 0.0;
    }

    if (*(v57 + 48) != v59)
    {
      *(v57 + 48) = v59;
      addEmitFunction(v57, emitLineWidthChange);
      v57 = *(a1 + 104);
      v58 = *(a2 + 128);
    }

    v60 = *(v58 + 2);
    if (*(v57 + 56) != v60)
    {
      *(v57 + 56) = v60;
      addEmitFunction(v57, emitLineCapChange);
      v57 = *(a1 + 104);
      v58 = *(a2 + 128);
      v60 = *(v58 + 2);
    }

    if (*(v57 + 60) != v60 >> 8)
    {
      *(v57 + 60) = v60 >> 8;
      addEmitFunction(v57, emitLineJoinChange);
      v57 = *(a1 + 104);
      v58 = *(a2 + 128);
    }

    v61 = *(v58 + 16);
    if (*(v57 + 64) != v61)
    {
      *(v57 + 64) = v61;
      addEmitFunction(v57, emitMiterLimitChange);
      v57 = *(a1 + 104);
      v58 = *(a2 + 128);
    }

    PDFGStateSetLineDash(v57, *(v58 + 32));
    v55 = *(a1 + 104);
    goto LABEL_63;
  }

  v55 = *(a1 + 104);
  if (v42 != 3)
  {
LABEL_63:
    v62 = *(*(a2 + 144) + 8);
    if (*(v55 + 88) != v62)
    {
      *(v55 + 88) = v62;
      addEmitFunction(v55, emitFlatnessChange);
      v55 = *(a1 + 104);
    }

    v63 = *(*(a2 + 128) + 1);
    if (*(v55 + 96) != v63)
    {
      *(v55 + 96) = v63;
      addEmitFunction(v55, emitStrokeAdjustChange);
      v55 = *(a1 + 104);
    }

    v64 = *(a2 + 120);
    v65 = *(v64 + 4);
    if ((v65 & 0xF0000) != 0)
    {
      v66 = v65 << 12 >> 28;
    }

    else
    {
      v66 = 2;
    }

    if (*(v55 + 80) != v66)
    {
      *(v55 + 80) = v66;
      addEmitFunction(v55, emitRenderingIntentChange);
      v55 = *(a1 + 104);
      v64 = *(a2 + 120);
    }

    v67 = *(v64 + 24);
    v68 = *(v64 + 32);
    v69 = *(a1 + 136);
    *&v143.a = *(a1 + 120);
    *&v143.c = v69;
    *&v143.tx = *(a1 + 152);
    PDFGStateSetPatternMatrix(v55, &v143, v67, v68);
    v70 = *(a1 + 104);
    v71 = *(a2 + 144);
    v72 = *(v71 + 16);
    if (*(v70 + 224) != v72)
    {
      *(v70 + 224) = v72;
      addEmitFunction(v70, emitSmoothnessChange);
      v70 = *(a1 + 104);
      v71 = *(a2 + 144);
    }

    PDFGStateSetOverprintMode(v70, *(v71 + 28));
    PDFGStateSetBlackGeneration(*(a1 + 104), *(*(a2 + 144) + 32));
    PDFGStateSetUndercolorRemoval(*(a1 + 104), *(*(a2 + 144) + 40));
    PDFGStateSetStyle(*(a1 + 104), *(*(a2 + 120) + 16));
    PDFGStateSetSoftMask(*(a1 + 104), *(*(a2 + 120) + 40));
    v55 = *(a1 + 104);
    v73 = (*(*(a2 + 120) + 4) << 16) >> 24;
    if ((v73 - 13) >= 0xF)
    {
      v73 = 2;
    }

    if (*(v55 + 248) != v73)
    {
      *(v55 + 248) = v73;
      addEmitFunction(v55, emitBlendModeChange);
      v55 = *(a1 + 104);
    }

    if (*(v55 + 184) == v42)
    {
      goto LABEL_81;
    }

    *(v55 + 184) = v42;
    goto LABEL_80;
  }

  if (*(v55 + 184) != 3)
  {
    *(v55 + 184) = 3;
LABEL_80:
    addEmitFunction(v55, emitTextDrawingModeChange);
  }

LABEL_81:
  PDFWriterAnnotate(*(a1 + 64), "  BEGIN: synchronizing gstate.", v129, v130);
  PDFGStateEmit(*(a1 + 104));
  PDFWriterAnnotate(*(a1 + 64), "  END: synchronizing gstate.");
  v74 = PDFDocumentAddFont(*a1, *(*(a2 + 136) + 8));
  v75 = v74;
  if (*(a1 + 169) == 1)
  {
    *(v74 + 56) = 1;
  }

  v76 = *(a1 + 112);
  if (v76 && v74)
  {
    *(v76 + 24) |= 2u;
    v77 = *(v76 + 48);
    if (!v77)
    {
      v77 = CGOrderedSetCreate();
      *(v76 + 48) = v77;
    }

    CGOrderedSetAddValue(v77, v75);
  }

  v78 = *a1;
  v79 = *(a1 + 64);
  v80 = malloc_type_calloc(1uLL, 0x58uLL, 0x102004003B7C86CuLL);
  __CFSetLastAllocationEventName();
  *v80 = 1;
  v80[1] = v78;
  v80[2] = v79;
  v80[9] = 0;
  v81 = *(a2 + 24);
  v82 = *(a2 + 40);
  *(v80 + 7) = *(a2 + 56);
  *(v80 + 5) = v82;
  *(v80 + 3) = v81;
  if (v18 >= a6)
  {
    v83 = v129;
    v84 = v130;
    v85 = a6;
  }

  else
  {
    v83 = v134;
    v84 = v135;
    v85 = v18;
  }

  PDFTextLayoutAddGlyphsWithPositions(v80, *(*(a2 + 136) + 8), v131, v83, v84, v85, *(*(a2 + 136) + 16));
  v86 = v80[10];
  if (v86)
  {
    v87 = 0;
    do
    {
      v88 = v86;
      v86 = *v86;
      *v88 = v87;
      v87 = v88;
    }

    while (v86);
    v80[10] = 0;
    v89 = v88;
    do
    {
      v90 = v89[1];
      layout_flush_block(v80, v90);
      if (v90)
      {
        v91 = *(v90 + 24);
        if (v91)
        {
          CFRelease(v91);
        }

        free(*(v90 + 8));
        free(*(v90 + 16));
        free(v90);
      }

      v89 = *v89;
    }

    while (v89);
    do
    {
      v92 = *v88;
      free(v88);
      v88 = v92;
    }

    while (v92);
  }

  v93 = v80[2];
  PDFWriterAnnotate(v93, "BEGIN: begin text object.");
  if (*(v80 + 3) == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v80 + 2)), vceqq_f64(*(v80 + 3), xmmword_18439C630))))) & 1) == 0 && *(v80 + 8) == 0.0)
  {
    v94 = 1;
  }

  else
  {
    PDFWriterPrintf(v93, "q %*m cm", v80 + 24);
    v94 = 0;
  }

  PDFWriterPrintf(v93, "BT");
  v95 = v80[9];
  if (v95)
  {
    LODWORD(v140.f64[0]) = v94;
    v96 = 0;
    do
    {
      v97 = v95;
      v95 = *v95;
      *v97 = v96;
      v96 = v97;
    }

    while (v95);
    v98 = 0;
    v80[9] = v97;
    v99 = 0.0;
    while (1)
    {
      v100 = v97[1];
      if (*(v100 + 72))
      {
        break;
      }

LABEL_142:
      v97 = *v97;
      if (!v97)
      {
        LOBYTE(v94) = LOBYTE(v140.f64[0]);
        if (v99 == 0.0)
        {
          v117 = 0;
        }

        else
        {
          v117 = LODWORD(v140.f64[0]);
        }

        if (v117 == 1)
        {
          PDFWriterPrintf(v93, "0 Tc");
        }

        goto LABEL_148;
      }
    }

    if (*(v100 + 64) != v99)
    {
      PDFWriterPrintf(v93, "%f Tc", *(v100 + 64));
      v99 = *(v100 + 64);
    }

    if (v98)
    {
      v101 = *(v98 + 56);
      v102 = *(v100 + 56);
      if (v101 && v102)
      {
        bboxes = *v101;
        CGAffineTransformInvert(&v143, &bboxes);
        v103 = vmlaq_n_f64(vmulq_n_f64(*&v143.c, v102[1]), *&v143.a, *v102);
        v104 = vmlaq_n_f64(vmulq_n_f64(*&v143.c, v102[3]), *&v143.a, v102[2]);
        v105 = fabs(v103.f64[1]);
        v106 = fabs(v104.f64[0]);
        v108 = fabs(v103.f64[0] + -1.0) > 0.00000596046448 || v105 > 0.00000596046448 || v106 > 0.00000596046448;
        v109 = fabs(v104.f64[1] + -1.0);
        if (!v108 && v109 <= 0.00000596046448)
        {
          PDFWriterPrintf(v93, "%f %f Td");
          goto LABEL_130;
        }

LABEL_129:
        PDFWriterPrintf(v93, "%*m Tm");
LABEL_130:
        PDFWriterPrintf(v93, "/%s 1 Tf", *v100);
        v111 = *(v100 + 72);
        if (*v111 || (v116 = v111[1], *(v116 + 8) != 0.0))
        {
          PDFWriterPrintf(v93, "[");
          v112 = *(v100 + 72);
          if (v112)
          {
            v113 = 0;
            do
            {
              v114 = v112;
              v112 = *v112;
              *v114 = v113;
              v113 = v114;
            }

            while (v112);
            *(v100 + 72) = v114;
            do
            {
              v115 = v114[1];
              emit_sequence(v93, v115);
              if (*(v115 + 8) != 0.0)
              {
                PDFWriterPrintf(v93, "%f", *(v115 + 8));
              }

              v114 = *v114;
            }

            while (v114);
          }

          PDFWriterPrintf(v93, "] TJ");
        }

        else
        {
          emit_sequence(v93, v116);
          PDFWriterPrintf(v93, "Tj");
        }

        v98 = v100;
        goto LABEL_142;
      }
    }

    else
    {
      v102 = *(v100 + 56);
    }

    if (!v102)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

LABEL_148:
  PDFWriterPrintf(v93, "ET");
  if ((v94 & 1) == 0)
  {
    PDFWriterPrintf(v93, "Q");
  }

  PDFWriterAnnotate(v93, "BEGIN: end text object.");
  v118 = atomic_fetch_add_explicit(v80, 0xFFFFFFFF, memory_order_relaxed) == 1;
  v119 = v134;
  v120 = v135;
  if (v118)
  {
    v121 = v80[9];
    if (v121)
    {
      v122 = v134;
      do
      {
        v123 = v121[1];
        v124 = v123[9];
        if (v124)
        {
          do
          {
            free(v124[1]);
            v124 = *v124;
          }

          while (v124);
          v125 = v123[9];
          if (v125)
          {
            do
            {
              v126 = *v125;
              free(v125);
              v125 = v126;
            }

            while (v126);
          }
        }

        free(v123);
        v121 = *v121;
      }

      while (v121);
      v127 = v80[9];
      v119 = v122;
      v120 = v135;
      if (v127)
      {
        do
        {
          v128 = *v127;
          free(v127);
          v127 = v128;
        }

        while (v128);
      }
    }

    free(v80);
  }

  if (v119 != v133)
  {
    free(v119);
  }

  if (v120 != v132)
  {
    free(v120);
  }

  PDFWriterAnnotate(*(a1 + 64), "%s: END", "PDFContentStreamDrawGlyphs");
}

void PDFContentStreamBeginTagWithMCID(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 584) != 1)
  {
    *(v5 + 584) = 2;
    StructureTree = CGPDFTaggedPagePropertiesGetStructureTree(a2);
    if (StructureTree)
    {
      v7 = StructureTree;
      theArray = 0;
      StructureElementPathForMCID(StructureTree, a3, &theArray);
      v8 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          if (!*(v5 + 608))
          {
            if (CFDictionaryGetCount(v7) < 1)
            {
              *(v5 + 608) = PDFDocumentCreateTagNode(v5, 0, 100, 0, 0);
            }

            else
            {
              v14 = -1;
              CGCFDictionaryGetNumber(v7, @"TagNodeMCID", kCFNumberSInt64Type, &v14);
              v13 = CGPDFTagTypeDiv;
              CGCFDictionaryGetInteger(v7, @"TagNodeType", &v13);
              Value = CFDictionaryGetValue(v7, @"TagNodeProperties");
              *(v5 + 608) = PDFDocumentCreateTagNode(v5, v14, v13, Value, 0);
              valuePtr = -1;
              CGCFDictionaryGetNumber(v7, @"TagNodeObjectRefID", kCFNumberSInt64Type, &valuePtr);
              CGCFDictionarySetNumber(*(v5 + 608), @"TagNodeObjectRefID", kCFNumberSInt64Type, &valuePtr);
              v10 = CFDictionaryGetValue(v7, @"ID");
              if (v10)
              {
                v11 = v10;
                if (CFGetTypeID(v10) == 134217984)
                {
                  CFDictionarySetValue(*(v5 + 608), @"ID", v11);
                }
              }
            }
          }

          PDFDocumentInsertStructureElementPath(v5, v8);
          CFRelease(v8);
        }
      }
    }
  }

  CGCFArrayAppendInt64(a1[22], a3);
  PDFWriterPrintf(a1[8], "/P << /MCID %d >> BDC", a3);
}

void PDFContentStreamBeginAccessibilitySpan(uint64_t a1, const __CFDictionary *a2)
{
  v4 = 0;
  v5 = 0;
  v16[10] = *MEMORY[0x1E69E9840];
  v15[0] = @"CGPDFTagPropertyAlternativeText";
  v15[1] = "Alt";
  v16[0] = 0;
  v16[1] = @"CGPDFTagPropertyActualText";
  v16[2] = "ActualText";
  v16[3] = 0;
  v16[4] = @"CGPDFTagPropertyLanguageText";
  v16[5] = "Lang";
  v16[6] = 0;
  v16[7] = @"CGPDFTagPropertyExpansionText";
  v16[8] = "E";
  v16[9] = 0;
LABEL_2:
  v6 = &v15[3 * v4];
  do
  {
    v14 = 0;
    v7 = *v6;
    TypeID = CFStringGetTypeID();
    if (CGCFDictionaryGetCFTypeRef(a2, v7, TypeID, &v14))
    {
      v6[2] = v14;
      ++v4;
      v5 = 1;
      if (v4 != 4)
      {
        goto LABEL_2;
      }

      goto LABEL_9;
    }

    ++v4;
    v6 += 3;
  }

  while (v4 != 4);
  if ((v5 & 1) == 0)
  {
    v9 = (a1 + 64);
    v13 = "/Span BDC";
    goto LABEL_15;
  }

LABEL_9:
  v10 = *(a1 + 64);
  v9 = (a1 + 64);
  PDFWriterPrintf(v10, "/Span <<");
  v11 = v16;
  v12 = 4;
  v13 = ">> BDC";
  do
  {
    if (*v11)
    {
      PDFWriterPrintf(*v9, "/%s %T", *(v11 - 1), *v11);
    }

    v11 += 3;
    --v12;
  }

  while (v12);
LABEL_15:
  PDFWriterPrintf(*v9, v13);
}

uint64_t CGGStateRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 16), 1u, memory_order_relaxed);
  }

  return result;
}

__n128 CGGStateSetCTM(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 24) = result;
  return result;
}

char *__handle_invalid_context_block_invoke()
{
  result = getenv("CG_CONTEXT_SHOW_BACKTRACE");
  handle_invalid_context_show_log = result != 0;
  return result;
}

char *__handle_invalid_numerics_block_invoke()
{
  result = getenv("CG_NUMERICS_SHOW_BACKTRACE");
  handle_invalid_numerics_show_log = result != 0;
  return result;
}

uint64_t __CGColorDataConverterGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorDataConverterGetTypeID_runtime_class);
  CGColorDataConverterGetTypeID_id = result;
  return result;
}

uint64_t converter_retain_count(uint64_t a1, atomic_uint *a2)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 4, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        converter_provider_finalize(a2);
        v4 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v4, a2);
      }

      break;
    case 0:
      return a2[4];
    case 1:
      return atomic_fetch_add_explicit(a2 + 4, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

uint64_t converter_provider_finalize(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _CGHandleAssert("converter_provider_finalize", 61, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGConvertColorDataWithFormat.c", "CGAtomicGet(&converter->retain_count) == 0", "retain count %d", *(a1 + 16));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    CGAccessSessionRelease(v2);
  }

  return pthread_mutex_destroy((a1 + 24));
}

CFStringRef converter_copy_format_description_20243(uint64_t a1)
{
  v1 = *(a1 + 88);
  v4 = *(a1 + 16);
  v5 = 0;
  asprintf(&v5, "CGColorDataConverterRef: %p session: %p retain count: %d\n", a1, v1, v4);
  v2 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v5, &stru_1EF244DC0);
  free(v5);
  return v2;
}

BOOL CGConvertColorDataWithFormat(size_t width, size_t height, void *dst_data, CGColorDataFormat *dst_format, void *src_data, CGColorDataFormat *src_format, CFDictionaryRef options)
{
  v7 = *&dst_format->bitmap_info;
  v12[0] = *&dst_format->version;
  v12[1] = v7;
  v12[2] = *&dst_format->bytes_per_row;
  decode = dst_format->decode;
  v8 = *&src_format->bitmap_info;
  v10[0] = *&src_format->version;
  v10[1] = v8;
  v10[2] = *&src_format->bytes_per_row;
  v11 = src_format->decode;
  return convert_color_data_with_format(0, width, height, dst_data, v12, src_data, v10, options);
}

uint64_t *convert_color_data_with_format(uint64_t *a1, vImagePixelCount a2, CGDataProvider *a3, char *a4, uint64_t a5, const void *a6, uint64_t a7, const __CFDictionary *a8)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1 && (v16 = *a1) != 0)
  {
    pthread_mutex_lock((v16 + 24));
    v17 = *(v16 + 88);
    v18 = *(v16 + 96);
    v19 = *(v16 + 104);
    v20 = *(a5 + 16);
    __src[0] = *a5;
    __src[1] = v20;
    __src[2] = *(a5 + 32);
    *&__src[3] = *(a5 + 48);
    v21 = *(a7 + 16);
    v65[0] = *a7;
    v65[1] = v21;
    v65[2] = *(a7 + 32);
    *&v65[3] = *(a7 + 48);
    converted_data = session_get_converted_data(v17, a2, a3, a4, __src, v18, v65, v19);
    pthread_mutex_unlock((v16 + 24));
  }

  else
  {
    v23 = *(a7 + 16);
    __src[0] = *a7;
    __src[1] = v23;
    __src[2] = *(a7 + 32);
    *&__src[3] = *(a7 + 48);
    v24 = bits_per_pixel_from_format(__src) * a2 + 7;
    v25 = v24 >> 3;
    if (*(a7 + 32))
    {
      v25 = *(a7 + 32);
    }

    v26 = v25 * (a3 - 1) + (v24 >> 3);
    check_clients_buffer("CGDataProviderCreateWithData", a6, v26);
    v27 = CGDataProviderCreateWithDataInternal(0, a6, v26, 0, 0);
    if (v27)
    {
      v28 = v27;
      v63 = a4;
      v29 = colorspace_from_info(*(a5 + 8));
      v30 = colorspace_from_info(*(a7 + 8));
      ResolvedOptions = CGColorConversionInfoCreateResolvedOptions(v30, *(a7 + 16), a8);
      if (!a8 || ResolvedOptions)
      {
        cf = ResolvedOptions;
        v32 = color_transform_create(v29, ResolvedOptions);
        if (v32)
        {
          v61 = v32;
          memset(__src, 0, sizeof(__src));
          v33 = *(a5 + 16);
          v34 = *(a5 + 24);
          v35 = component_from_format(v33, v34);
          if (v29)
          {
            v36 = *(*(v29 + 3) + 48);
          }

          else
          {
            v36 = 0;
          }

          CGBitmapPixelInfoInitialize(__src, __src, v35, v34, v36, v33 & 0x1F, v33 & 0x7000, v33 & 0xF0000, *(a5 + 48));
          memset(v65, 0, sizeof(v65));
          v37 = *(a7 + 16);
          v38 = *(a7 + 24);
          v39 = component_from_format(v37, v38);
          if (v30)
          {
            v40 = *(*(v30 + 3) + 48);
          }

          else
          {
            v40 = 0;
          }

          CGBitmapPixelInfoInitialize(v65, v65, v39, v38, v40, v37 & 0x1F, v37 & 0x7000, v37 & 0xF0000, *(a7 + 48));
          v41 = *(a5 + 32);
          v42 = *(a7 + 32);
          v43 = *(a7 + 40);
          memcpy(__dst, __src, sizeof(__dst));
          memcpy(v64, v65, sizeof(v64));
          v44 = CGDataProviderCreateForDestination(v61, a2, a3, __dst, v41, v28, v30, v64, v42, v43);
          if (v44)
          {
            v45 = v44;
            v46 = CGAccessSessionCreate(v44);
            v47 = *(a7 + 16);
            __dst[0] = *a7;
            __dst[1] = v47;
            __dst[2] = *(a7 + 32);
            __dst[3].__sig = *(a7 + 48);
            v48 = bits_per_pixel_from_format(__dst);
            v49 = *(a5 + 16);
            __dst[0] = *a5;
            __dst[1] = v49;
            __dst[2] = *(a5 + 32);
            __dst[3].__sig = *(a5 + 48);
            v50 = bits_per_pixel_from_format(__dst);
            v51 = *(a5 + 16);
            __dst[0] = *a5;
            __dst[1] = v51;
            __dst[2] = *(a5 + 32);
            __dst[3].__sig = *(a5 + 48);
            v52 = *(a7 + 16);
            v64[0] = *a7;
            v64[1] = v52;
            v64[2] = *(a7 + 32);
            v53 = *(a7 + 48);
            v54 = v50;
            *&v64[3] = v53;
            v55 = a2;
            v56 = v48;
            v57 = session_get_converted_data(v46, v55, a3, v63, __dst, v50, v64, v48);
            converted_data = v57;
            if (a1)
            {
              if (v57)
              {
                if (kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once != -1)
                {
                  dispatch_once(&kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once, &__block_literal_global_12_20232);
                }

                Instance = CGTypeCreateInstance(CGColorDataConverterGetTypeID_id, 96);
                v59 = Instance;
                if (Instance)
                {
                  *(Instance + 88) = v46;
                  *(Instance + 96) = v54;
                  *(Instance + 104) = v56;
                  *(Instance + 16) = 1;
                  __dst[0] = 0uLL;
                  pthread_mutexattr_init(__dst);
                  pthread_mutexattr_settype(__dst, 2);
                  pthread_mutex_init((v59 + 24), __dst);
                  pthread_mutexattr_destroy(__dst);
                }

                *a1 = v59;
              }
            }

            else
            {
              CGAccessSessionRelease(v46);
            }

            CGDataProviderRelease(v45);
          }

          else
          {
            converted_data = 0;
          }

          CFRelease(v61);
        }

        else
        {
          converted_data = 0;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        converted_data = 0;
      }

      CGDataProviderRelease(v28);
    }

    else
    {
      return 0;
    }
  }

  return converted_data;
}

uint64_t bits_per_pixel_from_format(uint64_t a1)
{
  v2 = colorspace_from_info(*(a1 + 8));
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 == 5)
  {
    if ((v3 & 0xF0000) != 0)
    {
      return 16;
    }

    else
    {
      return 15;
    }
  }

  else
  {
    if (v2)
    {
      v6 = *(*(v2 + 3) + 48);
    }

    else
    {
      v6 = 0;
    }

    if ((v3 & 0x1F) != 0)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6;
    }

    return v7 * v4;
  }
}

CGColorSpaceRef colorspace_from_info(CFTypeRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v2 = CFGetTypeID(cf);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 == CGColorSpaceGetTypeID_type_id)
  {
    return cf;
  }

  return CGColorSpaceCreateWithPropertyList(cf);
}

uint64_t component_from_format(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x100) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  if ((a1 & 0x100) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a2 != 32)
  {
    v3 = 0;
  }

  if (a2 != 16)
  {
    v2 = v3;
  }

  if (a2 == 8)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (a2 == 4)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 2)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 1)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t *session_get_converted_data(uint64_t *result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v15 = result;
    CGAccessSessionRewind(result);
    v16 = (a8 * a2 + 7) >> 3;
    v17 = *(a7 + 32);
    if (v17)
    {
      v18 = v17 >= v16;
    }

    else
    {
      v18 = 1;
    }

    if (v18 && ((v19 = (a6 * a2 + 7) >> 3, (v20 = *(a5 + 32)) == 0) || v20 >= v19))
    {
      v21 = v17 - v16;
      if (v17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v23 = v20 - v19;
      }

      else
      {
        v23 = 0;
      }

      return (CGAccessSessionGetChunksAtPosition(v15, 0, v19, v22, a3, a4, v23) == v19 * a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *CGConvertColorData(uint64_t *a1, vImagePixelCount a2, CGDataProvider *a3, char *a4, uint64_t a5, const void *a6, uint64_t a7, const __CFDictionary *a8)
{
  v8 = *(a5 + 16);
  v13[0] = *a5;
  v13[1] = v8;
  v13[2] = *(a5 + 32);
  v14 = *(a5 + 48);
  v9 = *(a7 + 16);
  v11[0] = *a7;
  v11[1] = v9;
  v11[2] = *(a7 + 32);
  v12 = *(a7 + 48);
  return convert_color_data_with_format(a1, a2, a3, a4, v13, a6, v11, a8);
}

void CGColorDataConverterRelease(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once != -1)
    {
      dispatch_once(&kCGConvertColorDataUseColorSyncForToneMapping_block_invoke_once, &__block_literal_global_12_20232);
    }

    if (v2 == CGColorDataConverterGetTypeID_id)
    {

      CFRelease(a1);
    }
  }
}

uint64_t CGColorConversionInfoConvertData(void *a1, vImagePixelCount a2, CGColorSpace *a3, uint64_t a4, __int128 *a5, char *a6, __int128 *a7)
{
  if (CGColorConversionInfoConvertData_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate, &__block_literal_global_15_20255);
  }

  if (CGColorConversionInfoConvertData_f() < 0xF010001)
  {
    CGPostError("%s requires ColorSync version 3770.1.4 or newer");
    return 0;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v14 = CFGetTypeID(a1);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v14 != kCGColorConverterRuntimeID)
  {
LABEL_21:
    CGPostError("%s: info %p is invalid");
    return 0;
  }

  if (!a4 || !a6)
  {
    if (!a6)
    {
      CGPostError("%s: Source data pointer cannot be NULL", "CGColorConversionInfoConvertData");
    }

    if (!a4)
    {
      CGPostError("%s: Destination data pointer cannot be NULL", "CGColorConversionInfoConvertData");
      return a4;
    }

    return 0;
  }

  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (CGColorConversionInfoConvertData_cglibrarypredicate_18 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_18, &__block_literal_global_21_20256);
  }

  v16 = CGColorConversionInfoConvertData_f_17(ColorSyncTransform);
  if (CGColorConversionInfoConvertData_cglibrarypredicate_24 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_24, &__block_literal_global_27_20257);
  }

  v17 = CGColorConversionInfoConvertData_f_23(ColorSyncTransform);
  v18 = a5[1];
  v55 = *a5;
  v56 = v18;
  v53 = v17;
  v19 = verify_format(&v55, v17, a2);
  v20 = a7[1];
  v55 = *a7;
  v56 = v20;
  v21 = verify_format(&v55, v16, a2);
  v22 = v21;
  if (!v19 || !v21)
  {
    if (!v19)
    {
      CGPostError("%s: Destination format is invalid", "CGColorConversionInfoConvertData");
    }

    if (!v22)
    {
      CGPostError("%s: Source format is invalid");
    }

    return 0;
  }

  v23 = 0;
  v24 = *(a5 + 1);
  v25 = *(a5 + 1);
  if (v24 > 15)
  {
    if (v24 == 16)
    {
      if ((v25 & 0x100) != 0)
      {
        v23 = 5;
      }

      else
      {
        v23 = 2;
      }
    }

    else if (v24 == 32)
    {
      if ((v25 & 0x100) != 0)
      {
        v23 = 4;
      }

      else
      {
        v23 = 3;
      }
    }
  }

  else if (v24 == 8)
  {
    v23 = 1;
  }

  else if (v24 == 10)
  {
    v23 = 6;
  }

  v27 = *(a7 + 1);
  v28 = 1;
  if (v27 > 15)
  {
    if (v27 != 16)
    {
      if (v27 != 32)
      {
LABEL_64:
        if (!v23)
        {
          CGPostError("%s: Incorrect destination data component", "CGColorConversionInfoConvertData");
        }

        CGPostError("%s: Incorrect source data component");
        return 0;
      }

      v28 = (*(a7 + 1) & 0x100) == 0;
    }
  }

  else if (v27 != 8 && v27 != 10)
  {
    goto LABEL_64;
  }

  if (!v23)
  {
    CGPostError("%s: Incorrect destination data component");
    return 0;
  }

  v29 = v25 & 0x1F;
  v30 = *(a7 + 1) & 0x1F;
  v32 = v23 != 4 || (*(a5 + 1) & 0x7000) != 0x2000;
  v33 = (*(a7 + 1) & 0x7000) != 0x2000 || v28;
  v51 = v32;
  if (v32)
  {
    if (v29 >= 7)
    {
      CGPostError("Bad CGImageAlphaInfo");
      v29 = 0;
    }

    else
    {
      v29 = dword_184564578[v29];
    }

    if ((v33 & 1) == 0)
    {
      v49 = 0;
      v50 = v30;
      v52 = v29;
      v35 = *(a7 + 3);
      v37 = 4 * a2;
LABEL_76:
      v42 = v53;
      if (v52)
      {
        v42 = v53 + 1;
      }

      v54 = (v37 * v42);
      v43 = malloc_type_calloc(1uLL, v37 * v42 * a3, 0x97037321uLL);
      if (v43)
      {
        v44 = v43;
        v34 = v43;
        goto LABEL_84;
      }

      v39 = v49;
      CGPostError("%s: failed to allocate local destination buffer");
      goto LABEL_92;
    }
  }

  else if ((v33 & 1) == 0)
  {
    v49 = 0;
    v50 = *(a7 + 1) & 0x1F;
    v34 = 0;
    v35 = *(a7 + 3);
    v52 = v25 & 0x1F;
    v54 = *(a5 + 3);
    goto LABEL_83;
  }

  v52 = v29;
  if (v30 >= 7)
  {
    CGPostError("Bad CGImageAlphaInfo");
    v36 = 0;
    v50 = 0;
  }

  else
  {
    v50 = dword_184564578[v30];
    v36 = 1;
  }

  v38 = v36 + v16;
  v37 = 4 * a2;
  v35 = 4 * a2 * v38;
  v39 = malloc_type_calloc(1uLL, v35 * a3, 0xBA7A0233uLL);
  if (!v39)
  {
    CGPostError("%s: failed to allocate local source buffer");
LABEL_92:
    v34 = 0;
    goto LABEL_93;
  }

  v40 = a7[1];
  v55 = *a7;
  v56 = v40;
  v41 = convert_src_data_to_float_20259(a1, a2, a3, a6, &v55, v39, v35);
  if (v51 && v41)
  {
    v49 = v39;
    a6 = v39;
    goto LABEL_76;
  }

  v34 = 0;
  if (!v41)
  {
LABEL_93:
    CGPostError("%s: failed to convert source data to float");
    goto LABEL_94;
  }

  v54 = *(a5 + 3);
  v49 = v39;
  a6 = v39;
LABEL_83:
  v44 = a4;
LABEL_84:
  if (CGColorConversionInfoConvertData_cglibrarypredicate_32 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertData_cglibrarypredicate_32, &__block_literal_global_35_20260);
  }

  v45 = CGColorConversionInfoConvertData_f_31;
  v46 = CGColorConversionInfoGetColorSyncTransform(a1);
  LODWORD(v48) = 7;
  HIDWORD(v48) = v50;
  if (!(v45)(v46, a2, a3, v44, 7, v52, v54, a6, v48, v35, 0))
  {
    v39 = v49;
    CGPostError("%s: ColorSyncTransformConvert failed");
LABEL_94:
    a4 = 0;
    goto LABEL_95;
  }

  v39 = v49;
  if (v51)
  {
    v47 = a5[1];
    v55 = *a5;
    v56 = v47;
    if (!convert_float_data_to_dst(a1, a2, a3, a4, &v55, v52, v34, v54))
    {
      CGPostError("%s: failed to convert local data to destination");
      goto LABEL_94;
    }
  }

  a4 = 1;
LABEL_95:
  if (v39)
  {
    free(v39);
  }

  if (v34)
  {
    free(v34);
  }

  return a4;
}

BOOL verify_format(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    CGPostError("CGColorConversionInfoConvertData: unsupported version %d", *a1);
    return 0;
  }

  result = 0;
  if (a2 > 4 || ((1 << a2) & 0x1A) == 0)
  {
    return result;
  }

  v5 = *(a1 + 4);
  v6 = v5 & 0x1F;
  v7 = *(a1 + 16);
  if (*(a1 + 24) < (v7 * a3) >> 3 || v6 == 7)
  {
    return 0;
  }

  result = 0;
  v9 = v5 & 0x7000;
  v10 = v5 & 0xF0000;
  v11 = *(a1 + 8);
  if (v11 <= 15)
  {
    if (v11 != 8)
    {
      if (v11 == 10)
      {
        if (v7 == 32 && (v9 == 0x4000 || v9 == 0x2000) && v10 == 196608)
        {
          return (v6 - 5) < 2;
        }

        return 0;
      }

      return result;
    }

    result = v7 == 24 || v7 == 32;
    if (v7 != 32 && v7 != 24)
    {
      return result;
    }

    return ((v5 & 0x5000) == 0 || v9 == 0x4000) && v10 == 0;
  }

  if (v11 == 16)
  {
    result = v7 == 48 || v7 == 64;
    if (v7 != 64 && v7 != 48)
    {
      return result;
    }

    return (v5 & 0xF5000) == 4096;
  }

  if (v11 == 32)
  {
    if ((v5 & 0x100) == 0)
    {
      return 0;
    }

    result = v7 == 96 || (v7 == 128);
    if (v7 == 128 || v7 == 96)
    {
      result = v9 == 0x4000 || (v9 == 0x2000);
      if (v9 == 0x4000 || v9 == 0x2000)
      {
        return v10 == 0;
      }
    }
  }

  return result;
}

BOOL convert_src_data_to_float_20259(void *a1, vImagePixelCount a2, CGColorSpace *a3, char *a4, uint64_t a5, void *a6, const CGFloat *a7)
{
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (convert_src_data_to_float_cglibrarypredicate != -1)
  {
    dispatch_once(&convert_src_data_to_float_cglibrarypredicate, &__block_literal_global_70_20283);
  }

  v14 = convert_src_data_to_float_f(ColorSyncTransform);
  if (v14 == 4)
  {
    v17 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  }

  else
  {
    v15 = *(a5 + 4);
    if (v14 == 3)
    {
      if ((v15 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E16E8;
        if (!qword_1ED4E16E8)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E16E0;
        if (!qword_1ED4E16E0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v14 != 1)
      {
        return 0;
      }

      if ((v15 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = qword_1ED4E1678;
        if (!qword_1ED4E1678)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v16 = off_1ED4E1670;
        if (!off_1ED4E1670)
        {
          return 0;
        }
      }
    }

    v17 = v16();
  }

  v18 = v17;
  if (!v17)
  {
    return 0;
  }

  v19 = *(a5 + 4) & 0x1F;
  if ((*(a5 + 4) & 0x1Fu) > 6)
  {
    CGPostError("Bad CGImageAlphaInfo");
    v21 = 0;
    v22 = 8448;
    v20 = 96;
  }

  else
  {
    v20 = 128;
    v21 = ((1 << v19) & 0x1E) == 0;
    if (((1 << v19) & 0x1E) != 0)
    {
      v22 = 8451;
    }

    else
    {
      v22 = 8453;
    }
  }

  if (*(a5 + 8) != 10)
  {
    v31 = *(a5 + 16);
    srcFormat.bitsPerComponent = *(a5 + 8);
    srcFormat.bitsPerPixel = v31;
    srcFormat.colorSpace = v18;
    srcFormat.bitmapInfo = *(a5 + 4);
    memset(&srcFormat.version, 0, 20);
    destFormat.bitsPerComponent = 32;
    destFormat.bitsPerPixel = v20;
    destFormat.colorSpace = v18;
    destFormat.bitmapInfo = v22;
    memset(&destFormat.version, 0, 20);
    v32 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, 0);
    if (v32)
    {
      v33 = v32;
      srcs.data = a4;
      srcs.height = a3;
      v34 = *(a5 + 24);
      srcs.width = a2;
      srcs.rowBytes = v34;
      v44.data = a6;
      v44.height = a3;
      v44.width = a2;
      v44.rowBytes = a7;
      v35 = vImageConvert_AnyToAny(v32, &srcs, &v44, 0, 0x80u);
      if (v35 < 0 || (v36 = malloc_type_malloc(v35, 0xA5D9A365uLL)) == 0)
      {
        v38 = 0;
      }

      else
      {
        v37 = v36;
        v38 = vImageConvert_AnyToAny(v33, &srcs, &v44, v36, 0x10u) == 0;
        free(v37);
      }

      vImageConverter_Release(v33);
      return v38;
    }

    return 0;
  }

  if ((*(a5 + 4) & 0x7000) == 0x4000)
  {
    v23 = malloc_type_malloc(*(a5 + 24) * (a3 - 1) + ((*(a5 + 16) * a2) >> 3), 0xD659A0FAuLL);
    v24 = v23;
    if (a3)
    {
      v25 = 0;
      v26 = *(a5 + 24);
      do
      {
        if (a2)
        {
          v27 = &a4[v26 * v25];
          v28 = &v23[v26 * v25];
          v29 = a2;
          do
          {
            v30 = *v27++;
            *v28 = bswap32(v30);
            v28 += 4;
            --v29;
          }

          while (v29);
        }

        v25 = (v25 + 1);
      }

      while (v25 != a3);
    }

    a4 = v23;
  }

  else
  {
    v24 = 0;
  }

  *&srcFormat.bitsPerComponent = a4;
  srcFormat.colorSpace = a3;
  v40 = *(a5 + 24);
  *&srcFormat.bitmapInfo = a2;
  srcFormat.decode = v40;
  *&destFormat.bitsPerComponent = a6;
  destFormat.colorSpace = a3;
  *&destFormat.bitmapInfo = a2;
  destFormat.decode = a7;
  LODWORD(srcs.data) = 197121;
  v41 = vImageConvert_ARGB2101010ToARGBFFFF(&srcFormat, &destFormat, 0, 1023, &srcs, 0x10u);
  if (v24)
  {
    free(v24);
  }

  v42 = v41 == 0;
  v38 = v41 == 0;
  if (v42 && v21)
  {
    vImageOverwriteChannelsWithScalar_ARGBFFFF(1.0, &destFormat, &destFormat, 1u, 0x10u);
  }

  return v38;
}

BOOL convert_float_data_to_dst(void *a1, vImagePixelCount a2, CGColorSpace *a3, char *a4, uint64_t a5, int a6, void *a7, const CGFloat *a8)
{
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (convert_float_data_to_dst_cglibrarypredicate != -1)
  {
    dispatch_once(&convert_float_data_to_dst_cglibrarypredicate, &__block_literal_global_73_20274);
  }

  v16 = convert_float_data_to_dst_f(ColorSyncTransform);
  if (v16 == 4)
  {
    v19 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a5 + 4);
    if (v16 == 3)
    {
      if ((v17 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E16E8;
        if (!qword_1ED4E16E8)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E16E0;
        if (!qword_1ED4E16E0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v16 != 1)
      {
        return 0;
      }

      if ((v17 & 0x100) != 0)
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = qword_1ED4E1678;
        if (!qword_1ED4E1678)
        {
          return 0;
        }
      }

      else
      {
        if (creator_for_ID_predicate != -1)
        {
          dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
        }

        v18 = off_1ED4E1670;
        if (!off_1ED4E1670)
        {
          return 0;
        }
      }
    }

    v19 = v18();
    if (!v19)
    {
      return 0;
    }
  }

  if (*(a5 + 8) != 10)
  {
    v26 = *(a5 + 16);
    dest.bitsPerComponent = *(a5 + 8);
    dest.bitsPerPixel = v26;
    dest.colorSpace = v19;
    dest.bitmapInfo = *(a5 + 4);
    memset(&dest.version, 0, 20);
    *&v37.renderingIntent = 0;
    if (a6)
    {
      v27 = 128;
    }

    else
    {
      v27 = 96;
    }

    v37.bitsPerComponent = 32;
    v37.bitsPerPixel = v27;
    v37.colorSpace = v19;
    v37.bitmapInfo = a6 | 0x2100;
    *&v37.version = 0;
    *(&v37.decode + 4) = 0;
    v28 = vImageConverter_CreateWithCGImageFormat(&v37, &dest, 0, 0x100u, 0);
    if (v28)
    {
      v29 = v28;
      permuteMap.data = a7;
      permuteMap.height = a3;
      permuteMap.width = a2;
      permuteMap.rowBytes = a8;
      v35.data = a4;
      v35.height = a3;
      v30 = *(a5 + 24);
      v35.width = a2;
      v35.rowBytes = v30;
      v31 = vImageConvert_AnyToAny(v28, &permuteMap, &v35, 0, 0x80u);
      if (v31 < 0 || (v32 = malloc_type_malloc(v31, 0x8C508916uLL)) == 0)
      {
        v21 = 0;
      }

      else
      {
        v33 = v32;
        v21 = vImageConvert_AnyToAny(v29, &permuteMap, &v35, v32, 0x10u) == 0;
        free(v33);
      }

      vImageConverter_Release(v29);
      return v21;
    }

    return 0;
  }

  *&dest.bitsPerComponent = a7;
  dest.colorSpace = a3;
  *&dest.bitmapInfo = a2;
  dest.decode = a8;
  *&v37.bitsPerComponent = a4;
  v37.colorSpace = a3;
  v20 = *(a5 + 24);
  *&v37.bitmapInfo = a2;
  v37.decode = v20;
  if (a6 == 5)
  {
    vImageOverwriteChannelsWithScalar_ARGBFFFF(1.0, &dest, &dest, 1u, 0x10u);
  }

  LODWORD(permuteMap.data) = 33619971;
  v21 = vImageConvert_ARGBFFFFToARGB2101010(&dest, &v37, 0, 1023, &permuteMap, 0x10u) == 0;
  if ((*(a5 + 4) & 0x7000) == 0x4000 && a3)
  {
    v22 = 0;
    v23 = *(a5 + 24);
    do
    {
      if (a2)
      {
        v24 = &a4[v23 * v22];
        v25 = a2;
        do
        {
          *v24 = bswap32(*v24);
          ++v24;
          --v25;
        }

        while (v25);
      }

      v22 = (v22 + 1);
    }

    while (v22 != a3);
  }

  return v21;
}

uint64_t (*__convert_float_data_to_dst_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetSrcComponentCount");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_20279;
  }

  convert_float_data_to_dst_f = v1;
  return result;
}

uint64_t (*__convert_src_data_to_float_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetSrcComponentCount");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_20279;
  }

  convert_src_data_to_float_f = v1;
  return result;
}

uint64_t CGColorConversionInfoConvertColorComponents(void *a1, double *a2, double *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = a1;
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  if (CGColorConversionInfoConvertColorComponents_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertColorComponents_cglibrarypredicate, &__block_literal_global_50_20297);
  }

  v6 = CGColorConversionInfoConvertColorComponents_f(ColorSyncTransform) + 1;
  if (CGColorConversionInfoConvertColorComponents_cglibrarypredicate_52 != -1)
  {
    dispatch_once(&CGColorConversionInfoConvertColorComponents_cglibrarypredicate_52, &__block_literal_global_55_20298);
  }

  v7 = CGColorConversionInfoConvertColorComponents_f_51(ColorSyncTransform);
  v8 = v7 + 1;
  v9 = MEMORY[0x1EEE9AC00](v7);
  if (v10 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v13 = &v28 - v11;
  }

  else
  {
    v13 = 0;
  }

  v29 = &v28 - v11;
  if (v10 - 0x3FFFFFFFFFFFFFFFLL >= v12)
  {
    v9 = malloc_type_malloc(4 * v6, 0xAF1F6967uLL);
    v13 = v9;
  }

  MEMORY[0x1EEE9AC00](v9);
  v17 = (&v28 - v15);
  if (v14 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v18 = (&v28 - v15);
  }

  else
  {
    v18 = 0;
  }

  if (v14 - 0x3FFFFFFFFFFFFFFFLL >= v16)
  {
    v18 = malloc_type_malloc(4 * v8, 0x7B12D676uLL);
  }

  v19 = v30;
  if (v6)
  {
    v20 = v13;
    v21 = v6;
    do
    {
      v22 = *a2++;
      v23 = v22;
      *v20++ = v23;
      --v21;
    }

    while (v21);
  }

  *&v34 = 0x210300000000;
  *(&v34 + 1) = 32;
  v35 = 32 * v8;
  v36 = 4 * v8;
  *&v31 = 0x210300000000;
  *(&v31 + 1) = 32;
  v32 = 32 * v6;
  v33 = 4 * v6;
  v24 = CGColorConversionInfoConvertData(v19, 1uLL, 1, v18, &v34, v13, &v31);
  if (v24 && v8)
  {
    v25 = v18;
    do
    {
      v26 = *v25++;
      *a3++ = v26;
      --v8;
    }

    while (v8);
  }

  if (v13 != v29)
  {
    free(v13);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  return v24;
}

_DWORD *shadingRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

void emitShadingDefinition(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if ((*(v4 + 20) - 1) <= 3)
      {
        PDFDocumentBeginObject(*(a1 + 8), *(a1 + 24));
        PDFDocumentPrintf(*(a1 + 8), "<<");
        p_y = &CGRectInfinite.origin.y;
        p_size = &CGRectInfinite.size;
        v7 = (v4 + 48);
        if (*(v4 + 40) == 1)
        {
          p_size = (v4 + 64);
          p_y = (v4 + 56);
          p_height = (v4 + 72);
        }

        else
        {
          v7 = &CGRectInfinite;
          p_height = &CGRectInfinite.size.height;
        }

        v9 = *p_height;
        v10 = *p_y;
        width = p_size->width;
        v31[0] = v7->origin.x;
        v31[1] = v10;
        v31[2] = width;
        v31[3] = v9;
        if (v31[0] != -8.98846567e307 || v10 != -8.98846567e307 || width != 1.79769313e308 || v9 != 1.79769313e308)
        {
          PDFDocumentPrintf(*(a1 + 8), "/BBox %r", v31);
        }

        v15 = PDFDocumentResolveColorSpace(*(a1 + 8), *(v4 + 24));
        v16 = PDFDocumentAddColorSpace(*(a1 + 8), v15);
        PDFDocumentPrintf(*(a1 + 8), "/ColorSpace");
        PDFColorSpaceEmitReference(v16);
        if (v15)
        {
          v17 = *(*(v15 + 3) + 48);
        }

        else
        {
          v17 = 0;
        }

        v18 = *(v4 + 32);
        if (v18)
        {
          PDFDocumentPrintf(*(a1 + 8), "/Background [");
          if (v17)
          {
            v19 = v17;
            do
            {
              v20 = *v18++;
              PDFDocumentPrintf(*(a1 + 8), "%f", v20);
              --v19;
            }

            while (v19);
          }

          PDFDocumentPrintf(*(a1 + 8), "]");
        }

        v21 = *(v4 + 20);
        switch(v21)
        {
          case 1:
            v25 = *(a1 + 16);
            if (v25 && (*(v25 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 2");
              PDFDocumentPrintf(*(a1 + 8), "/Coords [ %f %f %f %f ]", *(v25 + 128), *(v25 + 136), *(v25 + 152), *(v25 + 160));
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f ]", *(v25 + 176), *(v25 + 184));
              PDFDocumentPrintf(*(a1 + 8), "/Extend [ %b %b ]", *(v25 + 144), *(v25 + 168));
            }

            v23 = 64;
            break;
          case 2:
            v24 = *(a1 + 16);
            if (v24 && (*(v24 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 3");
              PDFDocumentPrintf(*(a1 + 8), "/Coords [ %f %f %f %f %f %f ]", *(v24 + 128), *(v24 + 136), *(v24 + 144), *(v24 + 160), *(v24 + 168), *(v24 + 176));
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f ]", *(v24 + 192), *(v24 + 200));
              PDFDocumentPrintf(*(a1 + 8), "/Extend [ %b %b ]", *(v24 + 152), *(v24 + 184));
            }

            v23 = 80;
            break;
          case 4:
            v22 = *(a1 + 16);
            if (v22 && (*(v22 + 20) - 1) <= 3)
            {
              PDFDocumentPrintf(*(a1 + 8), "/ShadingType 1");
              PDFDocumentPrintf(*(a1 + 8), "/Domain [ %f %f %f %f ]", *(v22 + 128), *(v22 + 136), *(v22 + 144), *(v22 + 152));
            }

            v23 = 32;
            break;
          default:
LABEL_46:
            PDFDocumentPrintf(*(a1 + 8), ">>");
            PDFDocumentEndObject(*(a1 + 8));
            *(a1 + 16) = 0;
            CFRelease(v4);
            *(a1 + 48) = 1;
            goto LABEL_47;
        }

        v26 = *(v4 + 128 + v23);
        if (v26)
        {
          v27 = *(a1 + 8);
          v28 = v17 - 1;
          v29 = *(v27 + 408);
          if (!v29)
          {
            v29 = PDFFunctionSetCreate(*(a1 + 8));
            *(v27 + 408) = v29;
          }

          v30 = PDFFunctionSetAddFunctionWithRange(v29, v26, v28, 1);
          if (v30)
          {
            PDFDocumentPrintReference(*(a1 + 8), "/Function %R", v30[6]);
          }
        }

        goto LABEL_46;
      }
    }
  }

LABEL_47:
  *a2 = 1;
}

_BYTE *emit_empty_image(uint64_t a1)
{
  v2 = *(a1 + 16);
  PDFDocumentBeginObject(*v2, *(v2 + 8));
  PDFDocumentPrintf(*v2, "<<");
  PDFDocumentPrintf(*(a1 + 8), "/Type /XObject");
  PDFDocumentPrintf(*(a1 + 8), "/Subtype /Image");
  PDFDocumentPrintf(*(a1 + 8), "/Width 1");
  PDFDocumentPrintf(*(a1 + 8), "/Height 1");
  PDFDocumentPrintf(*(a1 + 8), "/BitsPerComponent 1");
  PDFDocumentPrintf(*(a1 + 8), "/ColorSpace /DeviceGray");
  if (*(a1 + 104) != -1)
  {
    PDFDocumentPrintf(*(a1 + 8), "/StructParent %d", *(a1 + 104));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    PDFDocumentPrintReference(*(a1 + 8), "/AAPL:EPSData %R", v3);
  }

  if (*(a1 + 96))
  {
    PDFDocumentPrintf(*(a1 + 8), "/AAPL:ImageTag %T", *(a1 + 96));
  }

  PDFStreamBeginData(*(a1 + 16));
  CGDataConsumerPutBytes(*(*(a1 + 16) + 24), &unk_184564594, 1);
  PDFStreamEndData(*(a1 + 16));
  v4 = *(a1 + 16);

  return PDFStreamEnd(v4);
}

void emit_interpolation(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((*(v2 + 91) & 1) == 0)
  {
    v3 = *(a1 + 44);
    if ((v3 - 2) >= 2)
    {
      if (v3 == 1 || !CGImageGetShouldInterpolate(*(a1 + 48)))
      {
        return;
      }

      v2 = *(a1 + 8);
    }

    PDFDocumentPrintf(v2, "/Interpolate true");
  }
}

void emit_decode(uint64_t a1, double *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    PDFDocumentPrintf(*(a1 + 8), "/Decode [");
    for (; a3; --a3)
    {
      v6 = *v4++;
      PDFDocumentPrintf(*(a1 + 8), "%f", v6);
    }

    v7 = *(a1 + 8);

    PDFDocumentPrintf(v7, "]");
  }
}

uint64_t emit_jpeg_data(uint64_t a1)
{
  PDFStreamSetFilter(*(a1 + 16), "DCTDecode");
  PDFStreamBeginData(*(a1 + 16));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(*(a1 + 80));
    CGDataConsumerPutBytes(*(v3 + 24), BytePtr, Length);
  }

  v6 = *(a1 + 16);

  return PDFStreamEndData(v6);
}

uint64_t emit_jpeg2000_data(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a2 + 39) & 4) != 0 && !*(a2 + 176))
  {
    v3 = *(a1 + 8);
    v4 = *(v3 + 4);
    if (v4 <= 0)
    {
      *(v3 + 4) = 1;
      v5 = (v3 + 8);
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_10;
      }

      v5 = (v3 + 8);
      if (*(v3 + 8) > 4)
      {
        goto LABEL_10;
      }
    }

    *v5 = 5;
    v3 = *(a1 + 8);
LABEL_10:
    PDFDocumentPrintf(v3, "/SMaskInData 1");
  }

  PDFStreamSetFilter(*(a1 + 16), "JPXDecode");
  PDFStreamBeginData(*(a1 + 16));
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(*(a1 + 80));
    CGDataConsumerPutBytes(*(v7 + 24), BytePtr, Length);
  }

  v10 = *(a1 + 16);

  return PDFStreamEndData(v10);
}

_BYTE *emit_image(uint64_t a1, CGImage *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  PDFDocumentBeginObject(*v4, *(v4 + 8));
  PDFDocumentPrintf(*v4, "<<");
  PDFDocumentPrintf(*(a1 + 8), "/Type /XObject");
  PDFDocumentPrintf(*(a1 + 8), "/Subtype /Image");
  v5 = *(a1 + 8);
  if (a2)
  {
    PDFDocumentPrintf(v5, "/Width %z", *(a2 + 5));
    v6 = *(a2 + 6);
  }

  else
  {
    PDFDocumentPrintf(v5, "/Width %z", 0);
    v6 = 0;
  }

  PDFDocumentPrintf(*(a1 + 8), "/Height %z", v6);
  emit_interpolation(a1);
  if (*(a1 + 104) != -1)
  {
    PDFDocumentPrintf(*(a1 + 8), "/StructParent %d", *(a1 + 104));
  }

  if ((*(a1 + 73) & 1) == 0 && *(a1 + 74) != 1 || (ColorSpace = *(a1 + 88)) == 0)
  {
    ColorSpace = CGImageGetColorSpace(a2);
  }

  v8 = *(a1 + 8);
  v9 = PDFDocumentResolveColorSpace(v8, ColorSpace);
  v10 = PDFDocumentAddColorSpace(v8, v9);
  PDFDocumentPrintf(*(a1 + 8), "/ColorSpace");
  PDFColorSpaceEmitReference(v10);
  if (CGImageGetDecode(a2))
  {
    if (ColorSpace)
    {
      v11 = 2 * *(*(ColorSpace + 3) + 48);
    }

    else
    {
      v11 = 0;
    }

    Decode = CGImageGetDecode(a2);
    emit_decode(a1, Decode, v11);
  }

  v13 = CGImageGetRenderingIntent(a2) - 1;
  if (v13 <= 3)
  {
    PDFDocumentPrintf(*(a1 + 8), off_1E6E333F0[v13]);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    PDFDocumentPrintReference(*(a1 + 8), "/AAPL:EPSData %R", v14);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(v15 + 216);
    if (v16)
    {
      if (CGPropertiesGetProperty(v16, @"kCGPDFImageIsSignature"))
      {
        PDFDocumentPrintf(*(a1 + 8), "%*/ true", @"kCGPDFImageIsSignature");
      }
    }
  }

  Mask = CGImageGetMask(a2);
  if (Mask)
  {
    v18 = Mask;
    if (!CGImageGetMatte(a2))
    {
      v22 = PDFDocumentAddSMask(*(a1 + 8), v18, 0, *(a1 + 44));
      goto LABEL_36;
    }

    v19 = CGImageGetColorSpace(a2);
    if (ColorSpace)
    {
      v20 = *(*(ColorSpace + 3) + 48);
      if (v19)
      {
LABEL_27:
        v21 = *(*(v19 + 3) + 48);
        goto LABEL_31;
      }
    }

    else
    {
      v20 = 0;
      if (v19)
      {
        goto LABEL_27;
      }
    }

    v21 = 0;
LABEL_31:
    if (v20 == v21)
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      *components = 0u;
      v44 = 0u;
      CGImageGetMatte(a2);
      __memcpy_chk();
      components[v20] = 1.0;
      v23 = CGColorCreate(ColorSpace, components);
    }

    else
    {
      v23 = 0;
    }

    v22 = PDFDocumentAddSMask(*(a1 + 8), v18, v23, *(a1 + 44));
    if (v23)
    {
      CFRelease(v23);
    }

LABEL_36:
    if (!v22)
    {
      goto LABEL_46;
    }

    v24 = *(a1 + 8);
    v25 = *(v24 + 4);
    if (v25 <= 0)
    {
      *(v24 + 4) = 1;
      v26 = (v24 + 8);
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_43;
      }

      v26 = (v24 + 8);
      if (*(v24 + 8) > 3)
      {
        goto LABEL_43;
      }
    }

    *v26 = 4;
    v24 = *(a1 + 8);
LABEL_43:
    PDFDocumentPrintf(v24, "/SMask");
    v27 = *(a1 + 8);
    v28 = v22[2];
    if (v28)
    {
      PDFDocumentPrintReference(v27, "%R", *(v28 + 8));
    }

    else
    {
      PDFDocumentPrintReference(v27, "%R", 0);
    }
  }

LABEL_46:
  if (!CGImageGetMaskingColors(a2))
  {
    goto LABEL_67;
  }

  if (!a2)
  {
    v29 = 0;
LABEL_54:
    v30 = 8;
    goto LABEL_55;
  }

  v29 = *(a2 + 7);
  if (v29 - 1 >= 8)
  {
    if (v29 > 0x20)
    {
      if (*(a1 + 73) == 1)
      {
        v31 = *(a1 + 8);
        goto LABEL_69;
      }

      if (*(a1 + 74) == 1)
      {
        v39 = *(a1 + 8);
        goto LABEL_72;
      }

LABEL_79:
      PDFImageEmitData(a1, a2);
      return PDFStreamEnd(*(a1 + 16));
    }

    goto LABEL_54;
  }

  v30 = qword_184564598[v29 - 1];
LABEL_55:
  MaskingColors = CGImageGetMaskingColors(a2);
  v42 = a2;
  v33 = CGImageGetColorSpace(a2);
  if (v33)
  {
    v34 = 2 * *(*(v33 + 3) + 48);
    PDFDocumentPrintf(*(a1 + 8), "/Mask [");
    if (v34)
    {
      if (v29 <= v30)
      {
        v35 = 0;
      }

      else
      {
        v35 = v29 - v30;
      }

      do
      {
        v36 = *MaskingColors;
        if (v29 >= v30)
        {
          LODWORD(v37) = v36 >> v35;
        }

        else
        {
          v37 = ((~(-1 << v29) >> 1) + ~(-1 << v30) * v36) / ~(-1 << v29);
        }

        PDFDocumentPrintf(*(a1 + 8), "%d", v37);
        ++MaskingColors;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    PDFDocumentPrintf(*(a1 + 8), "/Mask [");
  }

  PDFDocumentPrintf(*(a1 + 8), "]");
  a2 = v42;
LABEL_67:
  if ((*(a1 + 73) & 1) == 0)
  {
    if (*(a1 + 74))
    {
      v39 = *(a1 + 8);
      if (!a2)
      {
        v40 = 0;
        goto LABEL_76;
      }

LABEL_72:
      v40 = *(a2 + 7);
LABEL_76:
      PDFDocumentPrintf(v39, "/BitsPerComponent %z", v40);
      emit_jpeg2000_data(a1, a2);
      return PDFStreamEnd(*(a1 + 16));
    }

    goto LABEL_79;
  }

  v31 = *(a1 + 8);
  if (!a2)
  {
    v38 = 0;
    goto LABEL_74;
  }

LABEL_69:
  v38 = *(a2 + 7);
LABEL_74:
  PDFDocumentPrintf(v31, "/BitsPerComponent %z", v38);
  emit_jpeg_data(a1);
  return PDFStreamEnd(*(a1 + 16));
}

uint64_t Coons(uint64_t result, float64x2_t *a2, double *a3, double a4, double a5)
{
  *a2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 352), *(result + 368), a4), *(result + 384), a5), *(result + 400), a4 * a5), vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 416), *(result + 448), a5), *(result + 480), a4), *(result + 512), a4 * a5), a4 * a4), vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(*(result + 432), *(result + 464), a4), *(result + 496), a5), *(result + 528), a4 * a5), a5 * a5);
  v5 = *(result + 704);
  if (v5)
  {
    v6 = (result + 544);
    do
    {
      *a3++ = *v6 + v6[5] * a4 + v6[10] * a5 + v6[15] * (a4 * a5);
      ++v6;
      --v5;
    }

    while (v5);
  }

  return result;
}

void CGGStateSetFontSmoothingBackgroundColor(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 136) + 64) != a2)
  {
    maybe_copy_text_state(a1);
    v4 = *(*(a1 + 136) + 64);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 136) + 64) = a2;
  }
}

uint64_t CGPDFReferenceTypeID()
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  return CGPDFReferenceTypeID_id;
}

uint64_t __CGPDFReferenceTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFReferenceTypeID_class);
  CGPDFReferenceTypeID_id = result;
  return result;
}

BOOL CGPDFReferenceEqual(uint64_t a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  if (v4 != CGPDFReferenceTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  return v5 == CGPDFReferenceTypeID_id && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t CGPDFReferenceCreate(uint64_t a1, uint64_t a2)
{
  if (CGPDFReferenceTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
  }

  result = pdf_create_cftype(CGPDFReferenceTypeID_id, 32);
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CGPDFReferenceGetRef(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFNameTypeID()
{
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  return CGPDFNameTypeID_id;
}

uint64_t __CGPDFNameTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFNameTypeID_class);
  CGPDFNameTypeID_id = result;
  return result;
}

uint64_t CGPDFNameHash(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  if (!*v1)
  {
    return 5381;
  }

  v3 = v1 + 1;
  result = 5381;
  do
  {
    result = 33 * result + v2;
    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return result;
}

BOOL CGPDFNameEqual(const char **a1, const char **a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v4 != CGPDFNameTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  return v5 == CGPDFNameTypeID_id && strcmp(a1[2], a2[2]) == 0;
}

uint64_t CGPDFNameCreate(const char *a1)
{
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  cftype = pdf_create_cftype(CGPDFNameTypeID_id, 24);
  if (*a1 == 47)
  {
    *(cftype + 16) = strdup(a1);
  }

  else
  {
    v3 = strlen(a1);
    v4 = malloc_type_malloc(v3 + 2, 0x69CD9D92uLL);
    __CFSetLastAllocationEventName();
    *(cftype + 16) = v4;
    sprintf(v4, "/%s", a1);
  }

  return cftype;
}

unsigned __int8 *CGPDFNameGetString(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = *v1;
  v2 = v1 + 1;
  if (v3 == 47)
  {
    return v2;
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t CGPDFStreamObjectTypeID()
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  return CGPDFStreamObjectTypeID_id;
}

uint64_t __CGPDFStreamObjectTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStreamObjectTypeID_class);
  CGPDFStreamObjectTypeID_id = result;
  return result;
}

CFStringRef CGPDFStreamObjectDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(*(a1 + 16));
  Length = CFDataGetLength(*(a1 + 24));
  if (*(a1 + 32))
  {
    v5 = "will";
  }

  else
  {
    v5 = "will not";
  }

  return CFStringCreateWithFormat(v2, 0, @"<CGPDFStreamObjectRef: %d key-value pairs, %d data bytes, %s flate compress>", Count, Length, v5);
}

void CGPDFStreamObjectFinalize(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

uint64_t CGPDFStreamObjectCreate(const void *a1, const void *a2)
{
  if (CGPDFStreamObjectTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
  }

  cftype = pdf_create_cftype(CGPDFStreamObjectTypeID_id, 40);
  *(cftype + 16) = a1;
  CFRetain(a1);
  *(cftype + 24) = a2;
  CFRetain(a2);
  *(cftype + 32) = 0;
  return cftype;
}

uint64_t CGPDFHexDataTypeID()
{
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  return CGPDFHexDataTypeID_id;
}

uint64_t __CGPDFHexDataTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFHexDataTypeID_class);
  CGPDFHexDataTypeID_id = result;
  return result;
}

CFStringRef CGPDFHexDataDebugDesc(uint64_t a1)
{
  v2 = CFCopyDescription(*(a1 + 16));
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGPDFHexDataRef %p: data: %@>", a1, v2);
  CFRelease(v2);
  return v3;
}

uint64_t CGPDFHexDataEqual(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  if (v4 != CGPDFHexDataTypeID_id)
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  if (v5 != CGPDFHexDataTypeID_id)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];

  return CFEqual(v6, v7);
}

void CGPDFHexDataFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CGPDFHexDataCreate(const UInt8 *a1, CFIndex a2)
{
  if (CGPDFHexDataTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFHexDataTypeID_onceToken, &__block_literal_global_15_20550);
  }

  cftype = pdf_create_cftype(CGPDFHexDataTypeID_id, 24);
  *(cftype + 16) = CFDataCreate(*MEMORY[0x1E695E480], a1, a2);
  return cftype;
}

CFMutableDictionaryRef CGPDFAppenderCreateCFDictionary(CGPDFDictionary *a1)
{
  if (a1)
  {
    v2 = *(a1 + 9);
  }

  else
  {
    v2 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CGPDFAppenderCreateCFDictionary_block_invoke;
  block[3] = &__block_descriptor_tmp_17_20561;
  block[4] = Mutable;
  CGPDFDictionaryApplyBlock(a1, block, 0);
  return Mutable;
}

uint64_t __CGPDFAppenderCreateCFDictionary_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    CFObject = CGPDFAppenderCreateCFObject(a3, 0);
    CGPDFAppenderDictionarySetValue(*(a1 + 32), a2, CFObject);
    CFRelease(CFObject);
  }

  return 1;
}

CFMutableDictionaryRef CGPDFAppenderCreateCFObject(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  if ((a2 & 1) == 0 && *(a1 + 16) | *(a1 + 24))
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 8);
  if (v4 == 12)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        if (v4 != 6)
        {
          return 0;
        }

        v11 = *(a1 + 32);
        if (v11 && (*(v11 + 64) & 2) != 0)
        {
          if (*(v11 + 24))
          {
            decrypt_string(*(a1 + 32));
            v18 = (v11 + 80);
            if (*(v11 + 24))
            {
              decrypt_string(v11);
            }
          }

          else
          {
            v18 = (v11 + 80);
          }

          v19 = *(v11 + 72);

          return CGPDFHexDataCreate(v18, v19);
        }

        else
        {
          v12 = *(a1 + 32);

          return CGPDFStringCopyTextString(v12);
        }
      }

      else
      {
        if (v4 != 7)
        {
          return 0;
        }

        v10 = *(a1 + 32);

        return CGPDFAppenderCreateCFArray(v10);
      }
    }

    if (v5 == 8)
    {
      if (v4 != 8)
      {
        return 0;
      }

      v16 = *(a1 + 32);

      return CGPDFAppenderCreateCFDictionary(v16);
    }

    if (v5 == 9)
    {
      if (v4 != 9)
      {
        return 0;
      }

      v17 = *(a1 + 32);

      return CGPDFAppenderCreateCGPDFStreamObject(v17);
    }

    if (v5 != 10)
    {
      goto LABEL_52;
    }

LABEL_18:
    v8 = *(a1 + 16);

    return CGPDFReferenceCreate(v8, v3);
  }

  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v9 = MEMORY[0x1E695E738];
      return *v9;
    }

    if (v5 == 2)
    {
      v9 = MEMORY[0x1E695E4D0];
      if (!*(a1 + 32))
      {
        v9 = MEMORY[0x1E695E4C0];
      }

      return *v9;
    }

LABEL_52:
    pdf_error("Failed to support given object type %d for append mode", v5);
    return 0;
  }

  if (v5 == 3)
  {
    v13 = (a1 + 32);
    v14 = *MEMORY[0x1E695E480];
    v15 = kCFNumberLongType;
  }

  else
  {
    if (v5 != 4)
    {
      if (v4 == 5)
      {
        v6 = *(a1 + 32);

        return CGPDFNameCreate(v6);
      }

      return 0;
    }

    v13 = (a1 + 32);
    v14 = *MEMORY[0x1E695E480];
    v15 = kCFNumberCGFloatType;
  }

  return CFNumberCreate(v14, v15, v13);
}

void CGPDFAppenderDictionarySetValue(__CFDictionary *a1, const char *a2, const void *a3)
{
  if (a2)
  {
    v5 = CGPDFNameCreate(a2);
    if (a3)
    {
      CFDictionarySetValue(a1, v5, a3);
    }

    else
    {
      CFDictionaryRemoveValue(a1, v5);
    }

    CFRelease(v5);
  }
}

CFMutableArrayRef CGPDFAppenderCreateCFArray(CGPDFArray *a1)
{
  if (a1)
  {
    v4 = *(a1 + 2);
    v3 = *(a1 + 3);
    v5 = (v3 - v4) >> 3;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v5, MEMORY[0x1E695E9C0]);
    if (v3 != v4)
    {
      v7 = 0;
      do
      {
        value = 0;
        if (CGPDFArrayGetObject(a1, v7, &value))
        {
          CFObject = CGPDFAppenderCreateCFObject(value, 0);
          CFArrayAppendValue(Mutable, CFObject);
          CFRelease(CFObject);
        }

        ++v7;
      }

      while (v5 != v7);
    }

    return Mutable;
  }

  else
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v10, 0, v11);
  }
}

const __CFData *CGPDFAppenderCreateCGPDFStreamObject(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1[6];
  }

  else
  {
    v1 = 0;
  }

  result = CGPDFStreamCopyRawData(a1);
  if (result)
  {
    v3 = result;
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v3);
    CFDictionary = CGPDFAppenderCreateCFDictionary(v1);
    v6 = CGPDFStreamObjectCreate(CFDictionary, MutableCopy);
    CFRelease(CFDictionary);
    CFRelease(MutableCopy);
    return v6;
  }

  return result;
}

uint64_t CGPDFAppenderCGPDFObjectMatchesCFType(uint64_t a1, __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  if (a1)
  {
    if (*(a1 + 8) == 12)
    {
      v5 = kCGPDFObjectTypeInteger;
    }

    else
    {
      v5 = *(a1 + 8);
    }
  }

  else
  {
    v5 = kCGPDFObjectTypeNull;
  }

  if (v4 == CFNullGetTypeID())
  {
    return v5 == kCGPDFObjectTypeNull;
  }

  if (v4 == CFBooleanGetTypeID())
  {
    v7 = 0;
    if (v5 != kCGPDFObjectTypeBoolean || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) == 2 && (*(a1 + 32) != 1 || *MEMORY[0x1E695E4D0] == a2))
    {
      return *(a1 + 32) || *MEMORY[0x1E695E4C0] == a2;
    }

    return 0;
  }

  if (v4 == CFNumberGetTypeID())
  {
    if ((v5 - 5) >= 0xFFFFFFFE)
    {
      v27 = 0.0;
      value = 0.0;
      if (CGPDFObjectGetValue(a1, v5, &value))
      {
        if (CFNumberGetValue(a2, kCFNumberCGFloatType, &v27))
        {
          return vabdd_f64(value, v27) <= 0.00000011920929;
        }
      }
    }

    return 0;
  }

  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v4 == CGPDFNameTypeID_id)
  {
    if (v5 == kCGPDFObjectTypeName)
    {
      data = a2->data;
      v10 = *data;
      v9 = data + 1;
      v11 = v10 == 47 ? v9 : a2->data;
      if (a1)
      {
        if (*(a1 + 8) == 5)
        {
          v12 = *(a1 + 32);
          if (v12)
          {
            return strcmp(v11, v12) == 0;
          }
        }
      }
    }

    return 0;
  }

  if (v4 == CFStringGetTypeID())
  {
    v7 = 0;
    if (v5 != kCGPDFObjectTypeString || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) == 6)
    {
      v13 = CGPDFStringCopyTextString(*(a1 + 32));
      if (v13)
      {
        v14 = v13;
        v7 = CFStringCompare(a2, v13, 0) == kCFCompareEqualTo;
        CFRelease(v14);
        return v7;
      }
    }

    return 0;
  }

  if (v4 == CFArrayGetTypeID())
  {
    if (a1 && *(a1 + 8) == 7)
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v16 = (*(v15 + 3) - *(v15 + 2)) >> 3;
      }

      else
      {
        v16 = 0;
      }

      Count = CFArrayGetCount(a2);
      v7 = 0;
      if (Count < 0 || v16 != Count)
      {
        return v7;
      }

      if (!v16)
      {
        return 1;
      }

      v22 = 0;
      v23 = v16 - 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v22);
        value = 0.0;
        if (!ValueAtIndex)
        {
          break;
        }

        v25 = ValueAtIndex;
        if (!CGPDFArrayGetObject(v15, v22, &value))
        {
          break;
        }

        v7 = CGPDFAppenderCGPDFObjectMatchesCFType(*&value, v25);
        if (v7)
        {
          if (v23 != v22++)
          {
            continue;
          }
        }

        return v7;
      }
    }

    return 0;
  }

  if (v4 == CFDictionaryGetTypeID())
  {
    if (!a1 || *(a1 + 8) != 8)
    {
      return 0;
    }

    v17 = *(a1 + 32);
    v18 = a2;
  }

  else
  {
    if (CGPDFStreamObjectTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
    }

    if (v4 != CGPDFStreamObjectTypeID_id)
    {
      if (CGPDFReferenceTypeID_onceToken != -1)
      {
        dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
      }

      v7 = 0;
      if (v4 != CGPDFReferenceTypeID_id || v5 != (kCGPDFObjectTypeDictionary|kCGPDFObjectTypeBoolean) || !a1)
      {
        return v7;
      }

      if (*(a1 + 8) == 10)
      {
        if (a2)
        {
          v20 = a2->data;
        }

        else
        {
          v20 = 0;
        }

        return *(a1 + 16) == v20;
      }

      return 0;
    }

    v7 = 0;
    if (v5 != kCGPDFObjectTypeStream || !a1)
    {
      return v7;
    }

    if (*(a1 + 8) != 9)
    {
      return 0;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v17 = *(v19 + 48);
    }

    else
    {
      v17 = 0;
    }

    v18 = a2->data;
  }

  return AppendModeCGPDFDictionaryMatchesCFDictionary(v17, v18);
}

uint64_t AppendModeCGPDFDictionaryMatchesCFDictionary(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    v4 = *(a1 + 72);
  }

  else
  {
    v4 = 0;
  }

  Count = CFDictionaryGetCount(theDict);
  v6 = 0;
  if ((Count & 0x8000000000000000) == 0 && v4 == Count)
  {
    v7 = malloc_type_malloc(8 * v4, 0xC0040B8AA526DuLL);
    v8 = malloc_type_malloc(8 * v4, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(theDict, v7, v8);
    if (v4)
    {
      v9 = 0;
      while (1)
      {
        v10 = v7[v9];
        v11 = v8[v9];
        v12 = CFGetTypeID(v10);
        if (CGPDFNameTypeID_onceToken != -1)
        {
          dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
        }

        if (v12 != CGPDFNameTypeID_id)
        {
          break;
        }

        v13 = v10[2];
        if (*v13 == 47)
        {
          ++v13;
        }

        v18 = v13;
        if (!a1)
        {
          break;
        }

        v14 = std::__hash_table<std::__hash_value_type<CGPDFObject *,CGPDFObject *>,std::__unordered_map_hasher<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_hash,pdf_name_equal,true>,std::__unordered_map_equal<CGPDFObject *,std::__hash_value_type<CGPDFObject *,CGPDFObject *>,pdf_name_equal,pdf_name_hash,true>,std::allocator<std::__hash_value_type<CGPDFObject *,CGPDFObject *>>>::find<char const*>((a1 + 48), &v18);
        if (!v14)
        {
          break;
        }

        v15 = v14[3];
        if (!v15)
        {
          break;
        }

        v16 = CGPDFAppenderCGPDFObjectMatchesCFType(v15, v11);
        v6 = v16;
        if (++v9 >= v4 || (v16 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

LABEL_21:
    free(v7);
    free(v8);
  }

  return v6;
}

void CGPDFAppenderDictionarySetInt32(__CFDictionary *a1, const char *a2, int a3)
{
  valuePtr = a3;
  if (a2)
  {
    v4 = CGPDFNameCreate(a2);
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(a1, v4, v5);
    CFRelease(v5);
    CFRelease(v4);
  }
}

void CGPDFAppenderDictionarySetCGPDFName(__CFDictionary *a1, const char *a2, const char *a3)
{
  if (a2 && a3)
  {
    v5 = CGPDFNameCreate(a2);
    v6 = CGPDFNameCreate(a3);
    CFDictionarySetValue(a1, v5, v6);
    CFRelease(v6);

    CFRelease(v5);
  }
}

void CGPDFAppenderDictionarySetCGPDFReference(__CFDictionary *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3 | a4)
  {
    v7 = CGPDFNameCreate(a2);
    v8 = CGPDFReferenceCreate(a3, a4);
    CFDictionarySetValue(a1, v7, v8);
    CFRelease(v8);

    CFRelease(v7);
  }
}

void CGPDFAppenderArrayAppendCGPDFReference(__CFArray *a1, uint64_t a2, uint64_t a3)
{
  v4 = CGPDFReferenceCreate(a2, a3);
  CFArrayAppendValue(a1, v4);

  CFRelease(v4);
}

const void *CGPDFAppenderDictionaryGetValue(const __CFDictionary *a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = CGPDFNameCreate(a2);
  Value = CFDictionaryGetValue(a1, v3);
  CFRelease(v3);
  return Value;
}

void CGPDFAppenderDictionarySetReferenceToReference(__CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = CGPDFReferenceCreate(a2, a3);
  v9 = CGPDFReferenceCreate(a4, a5);
  CFDictionarySetValue(a1, v8, v9);
  CFRelease(v9);

  CFRelease(v8);
}

uint64_t CGPDFAppenderDictionaryCreateHash(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v2);
  AppendModeDigestCFType(v2, a1);
  if (v2)
  {
    CC_MD5_Final(md, v2);
  }

  free(v2);
  v3 = 0;
  v4 = &v7;
  do
  {
    sprintf(v4, "%02X", md[v3++]);
    v4 += 2;
  }

  while (v3 != 16);
  return CGPDFNameCreate(&v6);
}

void AppendModeDigestCFType(CC_MD5_CTX *a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  data = v4;
  if (a1)
  {
    CC_MD5_Update(a1, &data, 8u);
    v5 = data;
  }

  else
  {
    v5 = v4;
  }

  if (v5 == CFBooleanGetTypeID())
  {
    LOBYTE(v36) = *MEMORY[0x1E695E4D0] == a2;
    if (!a1)
    {
      return;
    }

    v6 = &v36;
    v7 = a1;
    v8 = 1;
    goto LABEL_10;
  }

  v9 = data;
  if (v9 == CFNumberGetTypeID())
  {
    *&v36 = 0;
    CFNumberGetValue(a2, kCFNumberCGFloatType, &v36);
    if (!a1)
    {
      return;
    }

    v6 = &v36;
    v7 = a1;
    v8 = 8;
    goto LABEL_10;
  }

  v10 = data;
  if (CGPDFNameTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFNameTypeID_onceToken, &__block_literal_global_6_20515);
  }

  if (v10 == CGPDFNameTypeID_id)
  {
    v11 = a2->data;
    v13 = *v11;
    v12 = v11 + 1;
    if (v13 == 47)
    {
      v14 = v12;
    }

    else
    {
      v14 = a2->data;
    }

    v15 = strlen(v14);
    if (v15)
    {
      v16 = v15;
      do
      {
        if (a1)
        {
          CC_MD5_Update(a1, v14, 1u);
        }

        ++v14;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v17 = data;
    if (v17 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a2);
      if (Length)
      {
        v19 = Length;
        for (i = 0; i != v19; ++i)
        {
          LOWORD(v36) = CFStringGetCharacterAtIndex(a2, i);
          if (a1)
          {
            CC_MD5_Update(a1, &v36, 2u);
          }
        }
      }
    }

    else
    {
      v21 = data;
      if (v21 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(a2);
        *&v36 = Count;
        if (a1)
        {
          CC_MD5_Update(a1, &v36, 8u);
          Count = v36;
        }

        if (Count)
        {
          v23 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v23);
            AppendModeDigestCFType(a1, ValueAtIndex);
            ++v23;
          }

          while (v23 < v36);
        }
      }

      else
      {
        v25 = data;
        if (v25 == CFDictionaryGetTypeID())
        {
          v26 = CFDictionaryGetCount(a2);
          *&v36 = v26;
          if (a1)
          {
            CC_MD5_Update(a1, &v36, 8u);
            v26 = v36;
          }

          v27 = malloc_type_malloc(8 * v26, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(a2, 0, v27);
          if (v36)
          {
            v28 = 0;
            do
            {
              AppendModeDigestCFType(a1, v27[v28++]);
            }

            while (v28 < v36);
          }

          free(v27);
        }

        else
        {
          v29 = data;
          if (CGPDFStreamObjectTypeID_onceToken != -1)
          {
            dispatch_once(&CGPDFStreamObjectTypeID_onceToken, &__block_literal_global_11_20529);
          }

          if (v29 == CGPDFStreamObjectTypeID_id)
          {
            AppendModeDigestCFType(a1, a2->data);
            v30 = a2->length;
            if (v30)
            {
              v31 = CFDataGetLength(v30);
              if (v31)
              {
                v32 = v31;
                for (j = 0; j != v32; ++j)
                {
                  LOBYTE(v36) = 0;
                  v38.location = j;
                  v38.length = 1;
                  CFDataGetBytes(v30, v38, &v36);
                  if (a1)
                  {
                    CC_MD5_Update(a1, &v36, 1u);
                  }
                }
              }
            }
          }

          else
          {
            v34 = data;
            if (CGPDFReferenceTypeID_onceToken != -1)
            {
              dispatch_once(&CGPDFReferenceTypeID_onceToken, &__block_literal_global_20501);
            }

            if (v34 == CGPDFReferenceTypeID_id)
            {
              v35 = a2 ? *&a2->data : 0;
              v36 = v35;
              if (a1)
              {
                CC_MD5_Update(a1, &v36, 8u);
                v6 = &v36 + 8;
                v7 = a1;
                v8 = 2;
LABEL_10:
                CC_MD5_Update(v7, v6, v8);
              }
            }
          }
        }
      }
    }
  }
}

void provider_with_masking_colors_release_info(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 928);
  if (v2)
  {
    vImageConverter_Release(v2);
  }

  v3 = *(a1 + 936);
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t provider_with_masking_colors_release_data(uint64_t *a1)
{
  CGDataProviderReleaseBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderReleaseData(v2);
}

uint64_t provider_with_masking_colors_retain_data(uint64_t *a1)
{
  CGDataProviderRetainBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderRetainData(v2);
}

unint64_t provider_with_masking_colors_get_bytes_at_position(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position", 269, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "info->src_provider_uses_random_access == true", "", v4, v5);
  }

  return provider_with_masking_colors_get_bytes_at_position_inner(a1, a2, a3, a4, 0);
}

unint64_t provider_with_masking_colors_get_bytes_at_position_inner(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, int a5)
{
  v113 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 191, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "pos >= 0", "position is negative %lld", a3);
  }

  memcpy(__dst, (a1 + 16), 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  memcpy(__dst, (a1 + 344), 0x130uLL);
  v11 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  v12 = *(a1 + 936);
  memcpy(__src, (a1 + 16), sizeof(__src));
  v13 = destination_position_to_source_position(v11, *(a1 + 648), *(a1 + 656), BitsPerPixel, *(a1 + 320), a3);
  if (v13 >= 0x7FFFFFFF)
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 219, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "src_pos >= 0 && src_pos < INT_MAX", "src position %lld", v13);
  }

  v95 = a5;
  v96 = a4;
  v97 = v11;
  v14 = 8 * a4;
  v15 = *(a1 + 344);
  v111 = *(a1 + 356);
  v110 = *(a1 + 348);
  v16 = *(a1 + 360);
  v17 = *(a1 + 368);
  v92 = *(a1 + 372);
  v93 = v14;
  v18 = v14 / v11;
  memcpy(v109, (a1 + 376), sizeof(v109));
  v19 = *a1;
  v91 = BitsPerPixel;
  v20 = (v18 * BitsPerPixel + 7) >> 3;
  v21 = *(a1 + 944);
  if (v20 > v21)
  {
    v22 = (v18 * BitsPerPixel + 7) >> 3;
    CGPostError("%s: bytes_to_read %zd > work_buffer_size %zd", "provider_with_masking_colors_get_bytes_at_position_inner", v22, v21);
    v20 = v22;
    v23 = *(a1 + 944);
    if (v22 > v23)
    {
      _CGHandleAssert("provider_with_masking_colors_get_bytes_at_position_inner", 231, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "bytes_to_read <= info->work_buffer_size", "bytes to read %zu  buffer size %zu", v22, v23);
    }
  }

  v94 = v20;
  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v19, *(a1 + 8), *(a1 + 936), v13, v20);
  v25 = *(a1 + 928);
  if (v25)
  {
    *__dst = v12;
    *&__dst[8] = v18;
    *&__dst[16] = xmmword_18439CC50;
    *&__dst[32] = 0;
    memcpy(&__dst[40], __src, 0x130uLL);
    v98[0] = a2;
    v98[1] = v18;
    v99 = xmmword_18439CC50;
    v100 = 0;
    v101 = v15;
    v102 = v110;
    v103 = v111;
    v104 = v16;
    v105 = v17;
    v106 = v92;
    memcpy(v107, v109, sizeof(v107));
    vImageConverterConvert(v25, __dst, v98, 0);
  }

  v26 = 1;
  if (v17 != 9)
  {
    if (v17 == 8)
    {
      v17 = 1;
    }

    else
    {
      v26 = v17 == 3;
      if ((v17 - 5) > 0xFFFFFFFD)
      {
        goto LABEL_10;
      }
    }

    _CGHandleAssert("mask_colors", 156, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "alpha_info == kCGImageAlphaFirst || alpha_info == kCGImageAlphaLast", "alpha info %d", v17);
  }

LABEL_10:
  if (v15 <= 4)
  {
    if (v15 == 1)
    {
      v27 = v95;
      if (v97 <= v93)
      {
        v38 = 0;
        v39 = (v92 == 0x2000) ^ v26;
        if (v39)
        {
          v40 = v16;
        }

        else
        {
          v40 = 0;
        }

        v41 = &a2[v40];
        v42 = &a2[v39 ^ 1];
        v43 = v16 + 1;
        do
        {
          if (v16)
          {
            v44 = 0;
            v45 = (a1 + 673);
            while (1)
            {
              v46 = v42[v44];
              if (v46 < *(v45 - 1) || v46 > *v45)
              {
                break;
              }

              ++v44;
              v45 += 2;
              if (v16 == v44)
              {
                goto LABEL_49;
              }
            }
          }

          else
          {
LABEL_49:
            *v41 = 0;
          }

          v42 += v43;
          v41 += v43;
          ++v38;
        }

        while (v38 != v18);
      }
    }

    else if (v15 == 2)
    {
      v27 = v95;
      if (v97 <= v93)
      {
        v81 = 0;
        v82 = !v26;
        if (v26)
        {
          v83 = v16;
        }

        else
        {
          v83 = 0;
        }

        v84 = &a2[2 * v83];
        v85 = 2;
        if (!v82)
        {
          v85 = 0;
        }

        v86 = &a2[v85];
        do
        {
          if (v16)
          {
            v87 = 0;
            v88 = (a1 + 674);
            while (1)
            {
              v89 = *&v86[2 * v87];
              if (v89 < *(v88 - 1) || v89 > *v88)
              {
                break;
              }

              ++v87;
              v88 += 2;
              if (v16 == v87)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
LABEL_122:
            *v84 = 0;
          }

          v84 += 2 * v16 + 2;
          ++v81;
          v86 += 2 * v16 + 2;
        }

        while (v81 != v18);
      }
    }

    else
    {
      _ZF = v15 == 4;
      v27 = v95;
      if (_ZF && v97 <= v93)
      {
        v29 = 0;
        _ZF = !v26;
        if (v26)
        {
          v31 = v16;
        }

        else
        {
          v31 = 0;
        }

        v32 = &a2[4 * v31];
        v33 = 4;
        if (!_ZF)
        {
          v33 = 0;
        }

        v34 = &a2[v33];
        do
        {
          if (v16)
          {
            v35 = 0;
            v36 = (a1 + 680);
            while (1)
            {
              v37 = *&v34[4 * v35];
              if (*(v36 - 1) > v37 || *v36 < v37)
              {
                break;
              }

              ++v35;
              v36 += 2;
              if (v16 == v35)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            *v32 = 0;
          }

          v32 += 4 * v16 + 4;
          ++v29;
          v34 += 4 * v16 + 4;
        }

        while (v29 != v18);
      }
    }
  }

  else
  {
    if (v15 > 7)
    {
      if (v15 == 9)
      {
        v28 = 4;
        v27 = v95;
      }

      else
      {
        _ZF = v15 == 8;
        v27 = v95;
        if (!_ZF)
        {
          goto LABEL_124;
        }

        v28 = 2;
      }

LABEL_68:
      if (v97 > v93)
      {
        goto LABEL_124;
      }

      v60 = 0;
      LODWORD(j) = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = ~(-1 << v28);
      v66 = a2;
      while (!v26)
      {
        if (v28 > v63)
        {
          v63 += 8;
          v68 = *v66++;
          v64 = v68 | (v64 << 8);
        }

        v63 -= v28;
        v67 = (v64 >> v63) & v65;
        if (v16)
        {
          goto LABEL_76;
        }

LABEL_80:
        if (v26)
        {
          if (v28 > v63)
          {
            v63 += 8;
            v72 = *v66++;
            v64 = v72 | (v64 << 8);
          }

          v63 -= v28;
          v67 = (v64 >> v63) & v65;
        }

        if (v16)
        {
          v73 = 1;
          v74 = __dst;
          v75 = (a1 + 673);
          v76 = v16;
          do
          {
            v78 = *v74++;
            v77 = v78;
            if (v78 < *(v75 - 1) || v77 > *v75)
            {
              v73 = 0;
            }

            v75 += 2;
            --v76;
          }

          while (v76);
          if (v73)
          {
            v67 = 0;
          }

          if (v26)
          {
            goto LABEL_98;
          }

LABEL_95:
          if (j >= 8)
          {
            LODWORD(j) = j - 8;
            *a2++ = v62 >> j;
          }

          v62 = (v62 << v28) | v67 & v65;
          LODWORD(j) = j + v28;
          goto LABEL_98;
        }

        v67 = 0;
        if (!v26)
        {
          goto LABEL_95;
        }

LABEL_98:
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            v80 = __dst[i];
            if (j >= 8)
            {
              for (j = j; j > 7; *a2++ = v62 >> j)
              {
                j -= 8;
              }
            }

            v62 = (v62 << v28) | v80 & v65;
            LODWORD(j) = j + v28;
          }
        }

        if (v26)
        {
          if (j >= 8)
          {
            LODWORD(j) = j - 8;
            *a2++ = v62 >> j;
          }

          v62 = (v62 << v28) | v67 & v65;
          LODWORD(j) = j + v28;
        }

        if (++v60 == v18)
        {
          goto LABEL_124;
        }
      }

      v67 = 1;
      if (!v16)
      {
        goto LABEL_80;
      }

LABEL_76:
      v69 = __dst;
      v70 = v16;
      do
      {
        if (v28 > v63)
        {
          v63 += 8;
          v71 = *v66++;
          v64 = v71 | (v64 << 8);
        }

        v63 -= v28;
        *v69++ = (v64 >> v63) & v65;
        --v70;
      }

      while (v70);
      goto LABEL_80;
    }

    if (v15 != 5)
    {
      _ZF = v15 == 7;
      v27 = v95;
      if (!_ZF)
      {
        goto LABEL_124;
      }

      v28 = 1;
      goto LABEL_68;
    }

    v27 = v95;
    if (v97 <= v93)
    {
      v47 = 0;
      v48 = !v26;
      if (v26)
      {
        v49 = v16;
      }

      else
      {
        v49 = 0;
      }

      v50 = &a2[2 * v49];
      v51 = 2;
      if (!v48)
      {
        v51 = 0;
      }

      v52 = &a2[v51];
      do
      {
        if (v16)
        {
          v53 = 0;
          v54 = (a1 + 680);
          while (1)
          {
            _H1 = *&v52[2 * v53];
            __asm { FCVT            D1, H1 }

            if (*(v54 - 1) > _D1 || *v54 < _D1)
            {
              break;
            }

            ++v53;
            v54 += 2;
            if (v16 == v53)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:
          *v50 = 0;
        }

        v50 += 2 * v16 + 2;
        ++v47;
        v52 += 2 * v16 + 2;
      }

      while (v47 != v18);
    }
  }

LABEL_124:
  result = v96;
  if (BytesAtPositionInternal < v94)
  {
    result = byte_count_to_byte_count(v91, *(a1 + 320), *(a1 + 328), *(a1 + 336), v97, *(a1 + 648), BytesAtPositionInternal);
  }

  if (v27)
  {
    *(a1 + 336) += BytesAtPositionInternal;
    *(a1 + 664) += result;
  }

  return result;
}

void provider_with_masking_colors_rewind(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL");
  }

  if ((*(v2 + 20) | 2) != 3)
  {
    _CGHandleAssert("provider_with_masking_colors_rewind", 336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "", "Unimplemented");
  }

  CGDataProviderRewind(v2);
  a1[83] = 0;
  a1[42] = 0;
}

unint64_t provider_with_masking_colors_skip_forward(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  memcpy(__dst, (a1 + 344), sizeof(__dst));
  v6 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  if ((a2 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_skip_forward", 290, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "count >= 0", "count = %lld", a2);
  }

  v7 = v6;
  v8 = byte_count_to_byte_count(v6, *(a1 + 648), *(a1 + 656), *(a1 + 664), BitsPerPixel, *(a1 + 320), a2);
  v9 = CGDataProviderSkipForwardInternal(v4, v8);
  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_with_masking_colors_skip_forward", 303, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "skipped >= 0", "skipped %lld", v9);
  }

  if (v9 != v8)
  {
    a2 = byte_count_to_byte_count(BitsPerPixel, *(a1 + 320), *(a1 + 328), *(a1 + 336), v7, *(a1 + 648), v9);
  }

  *(a1 + 336) += v10;
  *(a1 + 664) += a2;
  return a2;
}

unint64_t provider_with_masking_colors_get_bytes(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (*(a1 + 8))
  {
    _CGHandleAssert("provider_with_masking_colors_get_bytes", 277, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderWithMaskingColors.c", "info->src_provider_uses_random_access == false", "", v3, v4);
  }

  return provider_with_masking_colors_get_bytes_at_position_inner(a1, a2, 0, a3, 1);
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::formatText(PBPageLayoutPkg::PBCharacterStyle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 32) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "baselineOffset", *(this + 6));
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "fillColor");
  }

  v6 = *(this + 32);
  if (v6)
  {
    PB::TextFormatter::format(a2, "fontDataIndex");
    v6 = *(this + 32);
  }

  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "fontSize", *(this + 7));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
  }

  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 28));
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 32) & 2) != 0)
  {
    v6 = *(v3 + 24);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBCharacterStyle::readFrom(PBPageLayoutPkg::PBCharacterStyle *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        *(this + 32) |= 2u;
        v24 = *(a2 + 1);
        if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
        {
LABEL_30:
          *(a2 + 24) = 1;
          goto LABEL_53;
        }

        *(this + 6) = *(*a2 + v24);
        goto LABEL_48;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        v27 = *a2;
        if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v25)
        {
          v34 = 0;
          v35 = 0;
          v30 = 0;
          v36 = (v27 + v26);
          v18 = v25 >= v26;
          v37 = v25 - v26;
          if (!v18)
          {
            v37 = 0;
          }

          v38 = v26 + 1;
          while (1)
          {
            if (!v37)
            {
              v30 = 0;
              *(a2 + 24) = 1;
              goto LABEL_52;
            }

            v39 = *v36;
            *(a2 + 1) = v38;
            v30 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v36;
            --v37;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
LABEL_46:
              v30 = 0;
              goto LABEL_52;
            }
          }

          if (*(a2 + 24))
          {
            v30 = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          while (1)
          {
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_52:
        *(this + 2) = v30;
        goto LABEL_53;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 4u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
        {
          goto LABEL_30;
        }

        *(this + 7) = *(*a2 + v23);
LABEL_48:
        *(a2 + 1) += 4;
        goto LABEL_53;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v41 = 0;
      return v41 & 1;
    }

LABEL_53:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v41 = v4 ^ 1;
  return v41 & 1;
}

void PBPageLayoutPkg::PBCharacterStyle::~PBCharacterStyle(PBPageLayoutPkg::PBCharacterStyle *this)
{
  PBPageLayoutPkg::PBCharacterStyle::~PBCharacterStyle(this);

  JUMPOUT(0x1865EE610);
}

{
  v2 = *(this + 1);
  *this = &unk_1EF2424F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

BOOL __lookup_pattern_entry_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  result = 0;
  if (*(a2 + 96) == *v2 && *(a2 + 104) == v2[1] && *(a2 + 112) == v2[2] && *(a2 + 120) == v2[3])
  {
    v3 = *(a1 + 40);
    if (*(a2 + 64) == *(*(v3 + 48) + 32) && *(a2 + 72) == *(a1 + 48))
    {
      if (*(a2 + 76) == *(v3 + 132))
      {
        return 1;
      }

      v5 = *(v3 + 136);
      v4 = *(v3 + 144);
      if (*(a2 + 80) == v5 && *(a2 + 88) == v4)
      {
        return 1;
      }
    }
  }

  return result;
}

double *get_pattern_phase(double *result, int *a2, double a3, double a4, double a5, double a6)
{
  v6 = result[2] * a4 + *result * a3;
  v7 = result[3] * a4 + result[1] * a3;
  v8 = a6 + result[5];
  v9 = v6 + a5 + result[4];
  if (v9 <= 1073741820.0)
  {
    v11 = llround(v9);
    if (v9 >= -1073741820.0)
    {
      v10 = v11;
    }

    else
    {
      v10 = -1073741823;
    }
  }

  else
  {
    v10 = 0x3FFFFFFF;
  }

  *a2 = v10;
  v12 = v7 + v8;
  if (v12 <= 1073741820.0)
  {
    if (v12 >= -1073741820.0)
    {
      v13 = llround(v12);
    }

    else
    {
      v13 = -1073741823;
    }
  }

  else
  {
    v13 = 0x3FFFFFFF;
  }

  a2[1] = v13;
  return result;
}

char *create_pattern_tile_pattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, double a7)
{
  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a4 + 32);
  }

  v16 = *(v14 + 104);
  v15 = *(v14 + 112);
  v18 = *(v14 + 120);
  v17 = *(v14 + 128);
  if (v18 < 0.0 || v17 < 0.0)
  {
    v30 = CGRectStandardize(*(v14 + 104));
    v19 = fabs(v30.size.width);
    v30.origin.x = v16;
    v30.origin.y = v15;
    v30.size.width = v18;
    v30.size.height = v17;
    *(&v20 - 3) = CGRectStandardize(v30);
  }

  else
  {
    v19 = fabs(v18);
    v20 = *(v14 + 128);
  }

  if (*(v14 + 20) == 1)
  {
    goto LABEL_14;
  }

  if (v16 == INFINITY || v15 == INFINITY)
  {
    return 0;
  }

  v27 = 0;
  if (v18 != 0.0 && v17 != 0.0)
  {
LABEL_14:
    if (a7 >= 1.0 && (*(v14 + 186) & 1) != 0 && ((v21 = fabs(v20), v22 = fabs(*(v14 + 144)), v19 == fabs(*(v14 + 136))) ? (v23 = v21 == v22) : (v23 = 0), v23))
    {
      v24 = 32;
      if (a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 33;
      if (a2)
      {
LABEL_16:
        v25 = *(a2 + 4);
        goto LABEL_28;
      }
    }

    v25 = 3;
LABEL_28:
    v28 = RIPLayerCreate(RIPLayer_ripl_class, a5, v24, *(*(a1 + 48) + 32), v25);
    v27 = v28;
    if (v28)
    {
      build_tile(v28, a1, a2, a3, a4, 0, a6, *a5, *(a5 + 4), *(a5 + 8), *(a5 + 12), a7);
    }
  }

  return v27;
}

float64x2_t __CGAffineTransformInverseConcat(float64x2_t *a1, _OWORD *a2, float64x2_t *a3)
{
  v5 = a2[1];
  *&v13.a = *a2;
  *&v13.c = v5;
  *&v13.tx = a2[2];
  CGAffineTransformInvert(&v14, &v13);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  tx = v14.tx;
  ty = v14.ty;
  v11 = vmlaq_n_f64(vmulq_n_f64(v7, v14.d), *a3, v14.c);
  *a1 = vmlaq_n_f64(vmulq_n_f64(v7, v14.b), *a3, v14.a);
  a1[1] = v11;
  result = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v7, ty), v6, tx));
  a1[2] = result;
  return result;
}

void build_tile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, _OWORD *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12)
{
  v21 = a2;
  v22 = a1;
  v180 = *MEMORY[0x1E69E9840];
  memset(&v161[16], 0, 96);
  v162 = 0u;
  *v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  *&v161[24] = *(a2 + 120);
  *&v161[40] = *(a2 + 136);
  *&v161[56] = *(a2 + 152);
  *&v161[72] = *(a2 + 168);
  *&v161[8] = *(a2 + 104);
  *&v157 = *(a2 + 16);
  *(&v158 + 1) = *(a2 + 40);
  v159 = *(a2 + 48);
  memset(v160, 0, sizeof(v160));
  *&v160[0] = *(a2 + 64);
  *(a2 + 56) = 0u;
  *(v160 + 8) = *(a2 + 72);
  *(a2 + 72) = 0u;
  DWORD2(v162) = *(a2 + 216);
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = a1;
  CGRenderingStateCreateCopy(a3);
  v24 = v23;
  v26 = a7[1];
  v25 = a7[2];
  *(v23 + 24) = *a7;
  *(v23 + 40) = v26;
  *(v23 + 56) = v25;
  Copy = CGGStateCreateCopy(a4);
  v28 = Copy;
  if (a6)
  {
    v29 = *a6;
    v30 = a6[1];
    v31 = *(Copy + 15);
    if (*(v31 + 24) != *a6 || *(v31 + 32) != v30)
    {
      maybeCopyRenderingState(Copy);
      v32 = *(v28 + 120);
      *(v32 + 24) = v29;
      *(v32 + 32) = v30;
    }
  }

  CGGStateResetClip(v28);
  if (*(*(v28 + 120) + 8) != 1.0)
  {
    maybeCopyRenderingState(v28);
    *(*(v28 + 120) + 8) = 0x3FF0000000000000;
  }

  CGGStateSetStyle(v28, 0);
  CGGStateSetSoftMask(v28, 0);
  CGGStateSetCompositeOperation(v28, 2);
  if (a5 < 1)
  {
    PatternBaseColor = CGColorGetPatternBaseColor(a5);
    v33 = 0;
    if (!PatternBaseColor)
    {
LABEL_17:
      CGGStateSetFillColor(v28, 0);
      CGGStateSetStrokeColor(v28, 0);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v33 = *(a5 + 32);
  PatternBaseColor = CGColorGetPatternBaseColor(a5);
  if (PatternBaseColor)
  {
LABEL_15:
    CopyWithAlpha = CGColorCreateCopyWithAlpha(PatternBaseColor, 1.0);
    CGGStateSetFillColor(v28, CopyWithAlpha);
    CGGStateSetStrokeColor(v28, CopyWithAlpha);
    if (CopyWithAlpha)
    {
      CFRelease(CopyWithAlpha);
    }

    goto LABEL_18;
  }

  if (!v33 || *(v33 + 20) || *(v33 + 184) != 1 || !*(v33 + 80))
  {
    goto LABEL_17;
  }

LABEL_18:
  v36 = *v21;
  v181 = CGRectStandardize(*(v33 + 104));
  if (v181.size.width == 0.0 || (height = v181.size.height, v181.size.height == 0.0))
  {
LABEL_76:
    if (atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v24);
    }

    goto LABEL_78;
  }

  x = v181.origin.x;
  y = v181.origin.y;
  width = v181.size.width;
  v128 = v22;
  v41 = *(v33 + 152);
  v42 = *(v24 + 24);
  v43 = *(v24 + 40);
  v44 = vaddq_f64(*(*(v28 + 120) + 24), *(v33 + 56));
  v45 = vmlaq_n_f64(vmulq_laneq_f64(v43, *(v33 + 24), 1), v42, *(v33 + 24));
  v46 = vmlaq_n_f64(vmulq_laneq_f64(v43, *(v33 + 40), 1), v42, *(v33 + 40));
  v140 = *(v33 + 136);
  v145 = fabs(v140);
  v136 = *(v33 + 144);
  v148 = fabs(v136);
  rect = y;
  v130 = x;
  v127 = a12;
  v131 = vaddq_f64(*(v24 + 56), vmlaq_n_f64(vmulq_laneq_f64(v43, v44, 1), v42, v44.f64[0]));
  if (x == -8.98846567e307 && y == -8.98846567e307 && v181.size.width == 1.79769313e308 && height == 1.79769313e308)
  {
    v41 = 0;
    v47 = 0.0;
    v134 = v46;
    v135 = v45;
    v48 = 0.0;
    goto LABEL_41;
  }

  if (v140 != 0.0)
  {
    v49 = vmuld_lane_f64(v145, v45, 1);
    v50 = v49 * v49 + v145 * v45.f64[0] * (v145 * v45.f64[0]);
    if (v50 != 0.0 && v50 < 0.253921509)
    {
      v45 = vmulq_n_f64(v45, (1.0 / sqrt(v50) + 0.5));
    }
  }

  if (v136 == 0.0)
  {
    goto LABEL_33;
  }

  v51 = v46.f64[1];
  v52 = vmuld_lane_f64(v148, v46, 1);
  v53 = v52 * v52 + v148 * v46.f64[0] * (v148 * v46.f64[0]);
  if (v53 != 0.0 && v53 < 0.253921509)
  {
    v46 = vmulq_n_f64(v46, (1.0 / sqrt(v53) + 0.5));
LABEL_33:
    v51 = v46.f64[1];
  }

  if (vmuld_lane_f64(width * 256.0, v45, 1) | (height * 256.0 * v46.f64[0]))
  {
    if ((width * 256.0 * v45.f64[0]) | (height * 256.0 * v51))
    {
      v41 = 0;
      v47 = x;
      v134 = v46;
      v135 = v45;
      goto LABEL_40;
    }

    v46.f64[1] = 0.0;
    v45.f64[0] = 0.0;
  }

  else
  {
    v45.f64[1] = 0.0;
    v46.f64[0] = 0.0;
  }

  v134 = v46;
  v135 = v45;
  v47 = x;
LABEL_40:
  v48 = y;
LABEL_41:
  v182.origin.x = a8;
  v182.origin.y = a9;
  v182.size.width = a10;
  v182.size.height = a11;
  v183 = CGRectInset(v182, 0.00390625, 0.00390625);
  *&v163.a = v135;
  *&v163.c = v134;
  *&v163.tx = v131;
  v54.n64_f64[0] = CGRectApplyInverseAffineTransform(&v163.a, *&v183.origin.x, v183.origin.y, v183.size.width, v183.size.height).n64_f64[0] - v47;
  if (v140 == 0.0)
  {
    v144 = vdupq_lane_s64(*&v145, 0);
    v60 = v54.n64_f64[0] - v54.n64_f64[0];
  }

  else
  {
    v58 = v56.n64_f64[0] + v54.n64_f64[0];
    v59 = floor(v54.n64_f64[0] / v145);
    v60 = v145 * v59;
    v144 = vmulq_n_f64(v135, v145);
    v145 = ((v58 - v145 * v59) / v145);
  }

  v61 = v55.n64_f64[0] - v48;
  v62 = v130;
  v126 = v21;
  if (v136 == 0.0)
  {
    v66 = v61 - v61;
    v139 = vdupq_lane_s64(*&v148, 0);
    v63 = v134;
  }

  else
  {
    v63 = v134;
    v139 = vmulq_n_f64(v134, v148);
    v64 = v57.n64_f64[0] + v61;
    v65 = floor(v61 / v148);
    v66 = v148 * v65;
    v148 = ((v64 - v148 * v65) / v148);
  }

  v67 = rect;
  v132 = vmlaq_n_f64(vmlaq_n_f64(v131, v135, v60), v63, v66);
  *&v163.a = v135;
  *&v163.c = v63;
  *&v163.tx = v132;
  v68 = width;
  v69 = height;
  v184 = CGRectApplyAffineTransform(*&v62, &v163);
  v71 = v184.size.width;
  v72 = v132;
  v73 = v184.size.height;
  v74 = v184.origin.y;
  v143 = vsubq_f64(v184.origin, v132);
  if (*(v33 + 20) || *(v33 + 184) != 1 || (v75 = *(v33 + 80)) == 0 || (ClipPath = CGImageGetClipPath(*(v33 + 80)), v72 = v132, ClipPath))
  {
    v77 = v145;
    v78 = v148;
    if (v148 | v145)
    {
      CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v70);
      if (CGDisplayList)
      {
        CG::DisplayList::createContextDelegate(CGDisplayList);
      }

      v72 = v132;
      if (v41)
      {
        goto LABEL_53;
      }
    }

    else if (v41)
    {
LABEL_53:
      __asm { FMOV            V1.2D, #1.0 }

      v84 = vdivq_f64(_Q1, vaddq_f64(v144, v139));
LABEL_63:
      v137 = v84;
      v88 = 0;
      v89 = v135;
      v141 = v134;
      while (1)
      {
        v90 = 0;
        v133 = v72;
        v91 = v72;
        do
        {
          v146 = v91;
          v149 = v89;
          v92 = vaddq_f64(v91, v143);
          v93 = v92.f64[1];
          v185.origin.x = a8;
          v185.origin.y = a9;
          v185.size.width = a10;
          v185.size.height = a11;
          v94 = v71;
          v95 = v73;
          if (!CGRectIntersectsRect(v185, *v92.f64))
          {
            goto LABEL_72;
          }

          v89 = v149;
          if (!v41)
          {
            v97 = v146;
            v100 = v141;
            goto LABEL_71;
          }

          v96 = v146;
          v97 = vrndaq_f64(v146);
          v98 = vmulq_f64(v137, vsubq_f64(vrndaq_f64(vaddq_f64(vaddq_f64(v146, v144), v139)), v97));
          if (v98.f64[0] != 0.0 && v98.f64[1] != 0.0)
          {
            v99 = vabsq_f64(v98);
            v89 = vmulq_f64(v99, v135);
            v100 = vmulq_f64(v99, v134);
LABEL_71:
            v149 = v89;
            *(v28 + 24) = v89;
            v141 = v100;
            *(v28 + 40) = v100;
            *(v28 + 56) = v97;
            CGPatternDrawInContextDelegate(v33, v36, v24, v28);
LABEL_72:
            v96 = v146;
            v89 = v149;
          }

          ++v90;
          v91 = vaddq_f64(v96, v144);
        }

        while (v90 <= v77);
        ++v88;
        v72 = vaddq_f64(v133, v139);
        if (v88 > v78)
        {
          goto LABEL_75;
        }
      }
    }

    v84 = 0uLL;
    goto LABEL_63;
  }

  v163.a = v130;
  v163.b = rect;
  v163.c = width;
  v163.d = height;
  *&v152 = v75;
  *(v28 + 24) = v135;
  *(v28 + 40) = v134;
  *(v28 + 56) = v132;
  if (width != v140 || height != v136 || CGContextDelegateDrawImages(v36, v24, v28, &v163, &v152, 0, 1))
  {
    if (v41)
    {
      __asm { FMOV            V1.2D, #1.0 }

      v87 = vdivq_f64(_Q1, vaddq_f64(v144, v139));
    }

    else
    {
      v87 = 0uLL;
    }

    v138 = v87;
    v109 = 0;
    v110 = v145;
    v111 = v148;
    v112 = v135;
    v142 = v134;
    do
    {
      v113 = 0;
      v114 = v132;
      do
      {
        v147 = v114;
        v150 = v112;
        v115 = vaddq_f64(v114, v143);
        v116 = v115.f64[1];
        v186.origin.x = a8;
        v186.origin.y = a9;
        v186.size.width = a10;
        v186.size.height = a11;
        v117 = v71;
        v118 = v73;
        if (!CGRectIntersectsRect(v186, *v115.f64))
        {
          v119 = v147;
          v112 = v150;
          goto LABEL_112;
        }

        v112 = v150;
        if (v41)
        {
          v119 = v147;
          v120 = vrndaq_f64(v147);
          v121 = vmulq_f64(v138, vsubq_f64(vrndaq_f64(vaddq_f64(vaddq_f64(v147, v144), v139)), v120));
          if (v121.f64[0] == 0.0 || v121.f64[1] == 0.0)
          {
            goto LABEL_112;
          }

          v122 = vabsq_f64(v121);
          v112 = vmulq_f64(v122, v135);
          v123 = vmulq_f64(v122, v134);
        }

        else
        {
          v119 = v147;
          v120 = v147;
          v123 = v142;
        }

        *(v28 + 24) = v112;
        v142 = v123;
        *(v28 + 40) = v123;
        *(v28 + 56) = v120;
        if (v36)
        {
          v124 = v36[10];
          if (!v124)
          {
            goto LABEL_75;
          }

          v151 = v112;
          v125 = v124(v36, v24, v28, v75, v163.a, v163.b, v163.c, v163.d);
          v119 = v147;
          v112 = v151;
          if (v125)
          {
            goto LABEL_75;
          }
        }

LABEL_112:
        ++v113;
        v114 = vaddq_f64(v119, v144);
      }

      while (v113 <= v110);
      ++v109;
      v132 = vaddq_f64(v132, v139);
    }

    while (v109 <= v111);
  }

LABEL_75:
  v22 = v128;
  a12 = v127;
  v21 = v126;
  if (v24)
  {
    goto LABEL_76;
  }

LABEL_78:
  CGGStateRelease(v28);
  ripc_ContextRestore(v21, &v156);
  if (a12 < 1.0)
  {
    if (v22)
    {
      v101 = *v22;
      if (*v22)
      {
        v102 = a12;
        if (v102 < 1.0 && (*(v22 + 20) & 0x80000000) == 0 && (*(v22 + 24) & 0x80000000) == 0)
        {
          v179 = 0;
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v164 = 0u;
          memset(&v163, 0, sizeof(v163));
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v103 = (*(v101 + 32))(v22, 32, v22 + 12);
          if (v103)
          {
            v104 = v103;
            v105 = *v103;
            if (*v103 && (*(v22 + 56) || ripl_CreateMask(v22, 1)))
            {
              v106 = *(v22 + 40);
              if (v106)
              {
                v107 = LODWORD(v106->a) & 0xFFFFFF00 | 1;
              }

              else
              {
                *&v175 = 0;
                v173 = 0u;
                v174 = 0u;
                v171 = 0u;
                v172 = 0u;
                v169 = 0u;
                v170 = 0u;
                v167 = 0u;
                v168 = 0u;
                v165 = 0u;
                v166 = 0u;
                v164 = 0u;
                v106 = &v163;
                v107 = 1;
                memset(&v163, 0, sizeof(v163));
              }

              LODWORD(v106->a) = v107;
              ripl_BltOpDestination(v106, v22 + 12, v22);
              ripl_BltOpSourceLayer(v106, (v22 + 12), v22, 0, v22);
              LODWORD(v106[2].d) = 0;
              LODWORD(v106[2].tx) = 0;
              if ((LODWORD(v106->a) & 0xFF0000) != 0)
              {
                LODWORD(v106->a) &= 0xFF00FFFF;
                HIDWORD(v106[2].d) = 0;
                v106[2].ty = 0.0;
                v106[2].b = 0.0;
                v106[2].c = 0.0;
              }

              *&v152 = *v105;
              v153 = 0uLL;
              *(&v152 + 2) = a12;
              v154 = *(v22 + 20);
              v155 = 0uLL;
              if ((*(v105 + 5))(v104, v106, &v152))
              {
                v108 = v22 + 12;
              }

              else
              {
                v108 = 0;
              }
            }

            else
            {
              v108 = 0;
            }

            (*(*v22 + 48))(v22, v108);
          }
        }
      }
    }
  }
}

uint64_t RIPColorConvertColorComponents(void *a1, double *a2, unint64_t a3, uint64_t a4)
{
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v9 = Cache[2];
  }

  else
  {
    v9 = 0;
  }

  ContentHeadroom = CGColorGetContentHeadroom(a3);
  v11 = *(a4 + 120);
  v12 = *(v11 + 48);
  if (v12 >= 1.0 || v12 <= 0.0)
  {
    v14 = *(v11 + 48);
  }

  else
  {
    v14 = 1.0;
  }

  if (v12 >= 0.0)
  {
    HeadroomInfo = v14;
  }

  else
  {
    HeadroomInfo = 0.0;
  }

  if (HeadroomInfo == 0.0 && !CGColorSpaceUsesExtendedRange(v9))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(v9, 0);
  }

  v17 = ContentHeadroom > HeadroomInfo && HeadroomInfo > 0.0;
  v18 = v17 && ContentHeadroom >= 1.0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(a3);
    }

    else
    {
      ColorSpace = *(a3 + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  v20 = *(a4 + 120);
  if (v18)
  {
    v21 = *(v20 + 56);
    v22 = *(v20 + 64);
    err = 0;
    v23 = CGColorConversionInfoCreateForToneMapping(ColorSpace, v9, v21, v22, &err, ContentHeadroom, HeadroomInfo);
    if (err)
    {
      v24 = CFErrorCopyDescription(err);
      CGLog(2, "convert_color_components failed: %@", v24);
      CFRelease(v24);
      CFRelease(err);
      v25 = 0;
      if (!v23)
      {
        return v25;
      }
    }

    else
    {
      Components = CGColorGetComponents(a3);
      v25 = CGColorConversionInfoConvertColorComponents(v23, Components, a2);
      if (!v23)
      {
        return v25;
      }
    }

    CFRelease(v23);
    return v25;
  }

  v27 = ((*(v20 + 4) << 12) >> 28);
  v28 = CGColorGetComponents(a3);

  return CGColorTransformConvertColorComponents(a1, ColorSpace, v27, v28, a2);
}

CGDataProvider *CGDataProviderCreate(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  provider = create_provider(a1, 3);
  v4 = provider;
  if (provider)
  {
    *(provider + 40) = *a2;
    *(provider + 56) = *(a2 + 8);
    *(provider + 72) = *(a2 + 24);
    if (!CGDataProviderIsRewindable(provider))
    {
      v5 = CGDataProviderCopyData(v4);
      v6 = CGDataProviderCreateWithCFData(v5);
      if (v5)
      {
        CFRelease(v5);
      }

      CFRelease(v4);
      return v6;
    }
  }

  return v4;
}

uint64_t CGDataProviderGetSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return -1;
  }
}

uint64_t CGDataProviderGetSize2(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return -1;
  }
}

CFStringRef CGPDFStringCopyTextString(CGPDFStringRef string)
{
  if (!string)
  {
    v3 = malloc_type_malloc(0, 0x1000040BDFB0063uLL);
    v2 = 0;
    goto LABEL_20;
  }

  if (*(string + 3))
  {
    decrypt_string(string);
    v2 = *(string + 9);
    if (*(string + 3))
    {
      decrypt_string(string);
    }
  }

  else
  {
    v2 = *(string + 9);
  }

  v4 = string + 80;
  if (v2 < 2)
  {
    v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    if (v2)
    {
LABEL_13:
      for (i = 0; i != v2; ++i)
      {
        v7 = CGPDFUnicodeVectorPDFDoc[v4[i]];
        v3[i] = v7;
        if (!v7)
        {
          if (v4[i] - 9 > 4)
          {
            v8 = 32;
          }

          else
          {
            v8 = asc_184566368[(v4[i] - 9)];
          }

          v3[i] = v8;
        }
      }
    }

LABEL_20:
    v9 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], v3, v2);
    v10 = v3;
    goto LABEL_21;
  }

  v5 = *v4;
  if (v5 == 255)
  {
    if (*(string + 81) != 254)
    {
LABEL_11:
      v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
      goto LABEL_13;
    }
  }

  else if (v5 != 254 || *(string + 81) != 255)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    pdf_error("suspicious Unicode text string: length is not a multiple of 2.");
    --v2;
  }

  v12 = 0;
  while (*(string + v12 + 80) || *(string + v12 + 81) != 27)
  {
    v12 += 2;
    if (v12 >= v2)
    {
      v13 = *MEMORY[0x1E695E480];

      return CFStringCreateWithBytes(v13, string + 80, v2, 0x100u, 1u);
    }
  }

  result = malloc_type_malloc(v2, 0xAFA2EFBBuLL);
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = &v4[v16];
    if (v4[v16] || v17[1] != 27)
    {
      v20 = result + v15;
      *v20 = v4[v16];
      v15 += 2;
      v20[1] = v17[1];
    }

    else
    {
      v18 = v16 + 2;
      if (v16 + 2 < v2)
      {
        v19 = string + v16;
        do
        {
          if (!v19[82] && v19[83] == 27)
          {
            break;
          }

          v19 += 2;
          v18 += 2;
        }

        while (v18 < v2);
      }

      v16 = v18;
    }

    v16 += 2;
  }

  while (v16 < v2);
  v9 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], result, v15, 0x100u, 1u);
  v10 = v14;
LABEL_21:
  free(v10);
  return v9;
}

CGPDFStreamRef get_font_stream_20687(uint64_t a1, int *a2)
{
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (!FontDescriptor)
  {
    return 0;
  }

  v4 = FontDescriptor;
  value = 0;
  if (CGPDFDictionaryGetStream(*(FontDescriptor + 32), "FontFile", &value))
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 2;
LABEL_7:
    *a2 = v6;
    return v5;
  }

  value = 0;
  if (CGPDFDictionaryGetStream(*(v4 + 32), "FontFile3", &value))
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    value = 0;
    if (CGPDFDictionaryGetName(*(v5 + 6), "Subtype", &value))
    {
      v7 = value;
      if (!strcmp(value, "Type1C"))
      {
        v6 = 3;
        goto LABEL_7;
      }

      if (!strcmp(v7, "OpenType"))
      {
        v6 = 6;
        goto LABEL_7;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t CGPDFShadingType6Init(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  if (type6_info_getTypeID_onceToken != -1)
  {
    dispatch_once(&type6_info_getTypeID_onceToken, &__block_literal_global_20700);
  }

  result = pdf_create_cftype(type6_info_getTypeID_id, 112);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v15 = 0;
  value = 0;
  format = CGPDFDataFormatRaw;
  *a2 = result;
  *a3 = CGPDFShadingType6Init_type6_callbacks;
  if (a1)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(result + 16) = v8;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerCoordinate", &value))
  {
    return 0;
  }

  if (value > 0x20 || ((1 << value) & 0x101011116) == 0)
  {
    return 0;
  }

  v7[4] = value;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerComponent", &value))
  {
    return 0;
  }

  if (value > 0x10 || ((1 << value) & 0x11116) == 0)
  {
    return 0;
  }

  v7[5] = value;
  if (!CGPDFDictionaryGetInteger(v9, "BitsPerFlag", &value))
  {
    return 0;
  }

  if (value > 8 || ((1 << value) & 0x114) == 0)
  {
    return 0;
  }

  v7[6] = value;
  v7[12] = 0;
  if (!CGPDFDictionaryGetObject(v9, "Function", &v15) || (result = CGPDFShadingCreateShadingFunction(v15, 1uLL), (v7[12] = result) != 0))
  {
    if (a1)
    {
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 0;
    }

    if (v7[12] && CGColorSpaceGetType(v10) == 7)
    {
      return 0;
    }

    if (v10)
    {
      CFRetain(v10);
      v7[3] = v10;
      if (v7[12])
      {
        v11 = 2;
      }

      else
      {
        v11 = 2 * *(v10[3] + 48);
      }
    }

    else
    {
      v7[3] = 0;
      v11 = 2 * (v7[12] != 0);
    }

    v12 = malloc_type_malloc(8 * (v11 + 4), 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    if (!v12)
    {
      return 0;
    }

    if (!CGPDFDictionaryGetNumbers(v9, "Decode", v12, v11 + 4))
    {
      free(v12);
      return 0;
    }

    v7[7] = *v12;
    v7[9] = v12[1];
    v7[8] = v12[2];
    v7[10] = v12[3];
    memmove(v12, v12 + 4, 8 * v11);
    v7[11] = v12;
    if (a1)
    {
      v13 = *(a1 + 32);
    }

    else
    {
      v13 = 0;
    }

    result = CGPDFStreamCopyData(v13, &format);
    v7[13] = result;
    if (result)
    {
      if (format == CGPDFDataFormatRaw)
      {
        return 1;
      }

      pdf_error("invalid shading data format.");
      return 0;
    }
  }

  return result;
}

void type6_release_info(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t type6_create_shading(CGRect *a1, const void *a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v17[0] = *&v3->origin.x;
  *&v17[1] = v9;
  *&v17[2] = width;
  *&v17[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  v13 = x == -8.98846567e307;
  if (v9 != -8.98846567e307)
  {
    v13 = 0;
  }

  if (width != 1.79769313e308)
  {
    v13 = 0;
  }

  v14 = v7 == 1.79769313e308 && v13;
  if (a2)
  {
    CFRetain(a2);
    if (y == 0.0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (y == 0.0)
    {
      return result;
    }
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v17;
  }

  result = CGShadingCreateEmpty(0, *&y, Components, v16);
  *(result + 80) = a2;
  *(result + 104) = type6_create_shading_type6_drawing_callbacks;
  *(result + 120) = off_1EF2425F0[0];
  return result;
}

void cg_shading_type6_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void cg_shading_type6_draw(uint64_t a1, CGContextRef c)
{
  v2 = c;
  v767 = *MEMORY[0x1E69E9840];
  CGContextSetFillColorSpace(c, *(a1 + 24));
  CGContextSetStrokeColorSpace(v2, *(a1 + 24));
  if (!*(a1 + 96))
  {
    v4 = *(a1 + 24);
    v636 = a1;
    v5 = v4 ? *(*(v4 + 24) + 48) : 0;
    v6 = malloc_type_malloc(32 * v5 + 32, 0x100004000313F17uLL);
    v7 = a1;
    if (v6)
    {
      v8 = v6;
      v614 = 2 * v5;
      v613 = 3 * v5;
      v616 = v5 + 1;
      v612 = 8 * (v5 + 1);
      v634 = 8 * v5;
      v615 = v5;
      v9 = 1.0;
      v10 = 0.25;
      v11 = 1;
      v641 = v2;
      v653 = v6;
      while (1)
      {
        v637 = v11;
        v12 = v7;
        BytePtr = CFDataGetBytePtr(*(v7 + 104));
        Length = CFDataGetLength(*(v12 + 104));
        if (!Length)
        {
          goto LABEL_724;
        }

        v15 = 0;
        v16 = 0;
        v17 = &BytePtr[Length];
        v635 = v17;
        do
        {
          v18 = *(v636 + 48);
          if (*(v636 + 16) == 6)
          {
            if (v18 < 0x19)
            {
              LOBYTE(v24) = 0;
              if (!v18)
              {
LABEL_38:
                LOBYTE(v26) = 0;
LABEL_39:
                v31 = *(v636 + 32);
                v30 = *(v636 + 40);
                v32 = (0xFFFFFFFF >> -v31);
                v33 = v26 | v24;
                v34 = (0xFFFFFFFF >> -v30);
                if ((v33 & 3) != 0)
                {
                  v35 = 0;
                  v36 = 3 * (v33 & 3u);
                  do
                  {
                    *(&x + v35) = *(&x + 48 * (v33 & 3) + v35 + -192 * (v36 / 0xC));
                    v35 += 16;
                    ++v36;
                  }

                  while (v35 != 64);
                  v37 = *(v636 + 56);
                  v38 = *(v636 + 64);
                  v39 = *(v636 + 72) - v37;
                  v40 = *(v636 + 80) - v38;
                  v41 = v31 - 24;
                  v42 = 4;
                  while (1)
                  {
                    if (v31 < 0x19)
                    {
                      v45 = 0;
                      v46 = v31;
                      if (!v31)
                      {
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (v15 > 0x17)
                      {
                        v44 = v15;
                      }

                      else
                      {
                        do
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v43 = *BytePtr++;
                            v16 |= v43;
                          }

                          v44 = v15 + 8;
                          _CF = v15 >= 0x10;
                          v15 += 8;
                        }

                        while (!_CF);
                      }

                      v15 = v44 - 24;
                      v45 = ((v16 >> (v44 - 24)) & 0xFFFFFF) << v41;
                      v46 = v31 - 24;
                    }

                    while (v15 < v46)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v47 = *BytePtr++;
                        v16 |= v47;
                      }

                      v15 += 8;
                    }

                    v15 -= v46;
                    LODWORD(v46) = (v16 >> v15) & (0xFFFFFFFF >> -v46);
LABEL_59:
                    v48 = v37 + v39 * (v46 | v45) / v32;
                    v49 = &x + 2 * v42;
                    *v49 = v48;
                    if (v31 >= 0x19)
                    {
                      if (v15 > 0x17)
                      {
                        v51 = v15;
                      }

                      else
                      {
                        do
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v50 = *BytePtr++;
                            v16 |= v50;
                          }

                          v51 = v15 + 8;
                          _CF = v15 >= 0x10;
                          v15 += 8;
                        }

                        while (!_CF);
                      }

                      v15 = v51 - 24;
                      v52 = ((v16 >> (v51 - 24)) & 0xFFFFFF) << v41;
                      v53 = v31 - 24;
LABEL_70:
                      while (v15 < v53)
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v54 = *BytePtr++;
                          v16 |= v54;
                        }

                        v15 += 8;
                      }

                      v15 -= v53;
                      LODWORD(v53) = (v16 >> v15) & (0xFFFFFFFF >> -v53);
                      goto LABEL_75;
                    }

                    v52 = 0;
                    v53 = v31;
                    if (v31)
                    {
                      goto LABEL_70;
                    }

LABEL_75:
                    v49[1] = v38 + v40 * (v53 | v52) / v32;
                    if (++v42 == 12)
                    {
                      v55 = 0;
                      v56 = 1;
                      do
                      {
                        v57 = v56;
                        if (v5)
                        {
                          v58 = &v8[((v55 + v33) & 3) * v5];
                          v59 = &v8[v55 * v5];
                          v60 = v5;
                          do
                          {
                            v61 = *v58++;
                            *v59++ = v61;
                            --v60;
                          }

                          while (v60);
                        }

                        v56 = 0;
                        v55 = 1;
                      }

                      while ((v57 & 1) != 0);
                      v62 = 0;
                      v63 = 2;
                      while (1)
                      {
                        v64 = v62;
                        if (v5)
                        {
                          break;
                        }

LABEL_101:
                        v62 = 1;
                        v63 = 3;
                        if (v64)
                        {
                          goto LABEL_347;
                        }
                      }

                      v65 = 0;
                      v66 = *(v636 + 88);
                      v67 = &v8[v63 * v5];
                      while (2)
                      {
                        if (v30 < 0x19)
                        {
                          v70 = 0;
                          v71 = v30;
                          if (v30)
                          {
                            goto LABEL_95;
                          }
                        }

                        else
                        {
                          if (v15 > 0x17)
                          {
                            v69 = v15;
                          }

                          else
                          {
                            do
                            {
                              v16 <<= 8;
                              if (BytePtr < v17)
                              {
                                v68 = *BytePtr++;
                                v16 |= v68;
                              }

                              v69 = v15 + 8;
                              _CF = v15 >= 0x10;
                              v15 += 8;
                            }

                            while (!_CF);
                          }

                          v15 = v69 - 24;
                          v70 = ((v16 >> (v69 - 24)) & 0xFFFFFF) << (v30 - 24);
                          v71 = v30 - 24;
LABEL_95:
                          while (v15 < v71)
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v72 = *BytePtr++;
                              v16 |= v72;
                            }

                            v15 += 8;
                          }

                          v15 -= v71;
                          LODWORD(v71) = (v16 >> v15) & (0xFFFFFFFF >> -v71);
                        }

                        v67[v65] = *(v66 + 16 * v65) + (*(v66 + 16 * v65 + 8) - *(v66 + 16 * v65)) * (v71 | v70) / v34;
                        if (++v65 == v5)
                        {
                          goto LABEL_101;
                        }

                        continue;
                      }
                    }
                  }
                }

                v73 = 0;
                v74 = *(v636 + 56);
                v75 = *(v636 + 64);
                v76 = *(v636 + 72) - v74;
                v77 = *(v636 + 80) - v75;
                v78 = v31 - 24;
                while (1)
                {
                  if (v31 < 0x19)
                  {
                    v81 = 0;
                    v82 = v31;
                    if (!v31)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    if (v15 > 0x17)
                    {
                      v80 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v79 = *BytePtr++;
                          v16 |= v79;
                        }

                        v80 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v80 - 24;
                    v81 = ((v16 >> (v80 - 24)) & 0xFFFFFF) << v78;
                    v82 = v31 - 24;
                  }

                  while (v15 < v82)
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v83 = *BytePtr++;
                      v16 |= v83;
                    }

                    v15 += 8;
                  }

                  v15 -= v82;
                  LODWORD(v82) = (v16 >> v15) & (0xFFFFFFFF >> -v82);
LABEL_120:
                  v84 = v74 + v76 * (v82 | v81) / v32;
                  v85 = &x + 2 * v73;
                  *v85 = v84;
                  if (v31 >= 0x19)
                  {
                    if (v15 > 0x17)
                    {
                      v87 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v86 = *BytePtr++;
                          v16 |= v86;
                        }

                        v87 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v87 - 24;
                    v88 = ((v16 >> (v87 - 24)) & 0xFFFFFF) << v78;
                    v89 = v31 - 24;
LABEL_131:
                    while (v15 < v89)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v90 = *BytePtr++;
                        v16 |= v90;
                      }

                      v15 += 8;
                    }

                    v15 -= v89;
                    LODWORD(v89) = (v16 >> v15) & (0xFFFFFFFF >> -v89);
                    goto LABEL_136;
                  }

                  v88 = 0;
                  v89 = v31;
                  if (v31)
                  {
                    goto LABEL_131;
                  }

LABEL_136:
                  v85[1] = v75 + v77 * (v89 | v88) / v32;
                  if (++v73 == 12)
                  {
                    v91 = 0;
                    while (!v5)
                    {
LABEL_157:
                      if (++v91 == 4)
                      {
                        goto LABEL_347;
                      }
                    }

                    v92 = 0;
                    v93 = *(v636 + 88);
                    while (2)
                    {
                      if (v30 < 0x19)
                      {
                        v96 = 0;
                        v97 = v30;
                        if (v30)
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v15 > 0x17)
                        {
                          v95 = v15;
                        }

                        else
                        {
                          do
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v94 = *BytePtr++;
                              v16 |= v94;
                            }

                            v95 = v15 + 8;
                            _CF = v15 >= 0x10;
                            v15 += 8;
                          }

                          while (!_CF);
                        }

                        v15 = v95 - 24;
                        v96 = ((v16 >> (v95 - 24)) & 0xFFFFFF) << (v30 - 24);
                        v97 = v30 - 24;
LABEL_151:
                        while (v15 < v97)
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v98 = *BytePtr++;
                            v16 |= v98;
                          }

                          v15 += 8;
                        }

                        v15 -= v97;
                        LODWORD(v97) = (v16 >> v15) & (0xFFFFFFFF >> -v97);
                      }

                      v8[v91 * v5 + v92] = *(v93 + 16 * v92) + (*(v93 + 16 * v92 + 8) - *(v93 + 16 * v92)) * (v97 | v96) / v34;
                      if (++v92 == v5)
                      {
                        goto LABEL_157;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v20 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v19 = *BytePtr++;
                    v16 |= v19;
                  }

                  v20 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v18 -= 24;
              v15 = v20 - 24;
              v24 = ((v16 >> (v20 - 24)) & 0xFFFFFF) << v18;
              if (!v18)
              {
                goto LABEL_38;
              }
            }

            while (v15 < v18)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v25 = *BytePtr++;
                v16 |= v25;
              }

              v15 += 8;
            }

            v15 -= v18;
            v26 = (v16 >> v15) & (0xFFFFFFFF >> -v18);
            goto LABEL_39;
          }

          if (v18 < 0x19)
          {
            LOBYTE(v27) = 0;
            if (v18)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v15 > 0x17)
            {
              v23 = v15;
            }

            else
            {
              do
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v22 = *BytePtr++;
                  v16 |= v22;
                }

                v23 = v15 + 8;
                _CF = v15 >= 0x10;
                v15 += 8;
              }

              while (!_CF);
            }

            v18 -= 24;
            v15 = v23 - 24;
            v27 = ((v16 >> (v23 - 24)) & 0xFFFFFF) << v18;
            if (v18)
            {
LABEL_31:
              while (v15 < v18)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v28 = *BytePtr++;
                  v16 |= v28;
                }

                v15 += 8;
              }

              v15 -= v18;
              v29 = (v16 >> v15) & (0xFFFFFFFF >> -v18);
              goto LABEL_162;
            }
          }

          LOBYTE(v29) = 0;
LABEL_162:
          v100 = *(v636 + 32);
          v99 = *(v636 + 40);
          v101 = (0xFFFFFFFF >> -v100);
          v102 = v29 | v27;
          v103 = (0xFFFFFFFF >> -v99);
          v104 = 0;
          if ((v102 & 3) != 0)
          {
            v105 = 3 * (v102 & 3u);
            do
            {
              *(&x + v104) = *(&x + 48 * (v102 & 3) + v104 + -192 * (v105 / 0xC));
              v104 += 16;
              ++v105;
            }

            while (v104 != 64);
            v106 = *(v636 + 56);
            v107 = *(v636 + 64);
            v108 = *(v636 + 72) - v106;
            v109 = *(v636 + 80) - v107;
            v110 = v100 - 24;
            v111 = 4;
            while (1)
            {
              if (v100 < 0x19)
              {
                v114 = 0;
                v115 = v100;
                if (!v100)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v15 > 0x17)
                {
                  v113 = v15;
                }

                else
                {
                  do
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v112 = *BytePtr++;
                      v16 |= v112;
                    }

                    v113 = v15 + 8;
                    _CF = v15 >= 0x10;
                    v15 += 8;
                  }

                  while (!_CF);
                }

                v15 = v113 - 24;
                v114 = ((v16 >> (v113 - 24)) & 0xFFFFFF) << v110;
                v115 = v100 - 24;
              }

              while (v15 < v115)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v116 = *BytePtr++;
                  v16 |= v116;
                }

                v15 += 8;
              }

              v15 -= v115;
              LODWORD(v115) = (v16 >> v15) & (0xFFFFFFFF >> -v115);
LABEL_182:
              v117 = v106 + v108 * (v115 | v114) / v101;
              v118 = &x + 2 * v111;
              *v118 = v117;
              if (v100 >= 0x19)
              {
                if (v15 > 0x17)
                {
                  v120 = v15;
                }

                else
                {
                  do
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v119 = *BytePtr++;
                      v16 |= v119;
                    }

                    v120 = v15 + 8;
                    _CF = v15 >= 0x10;
                    v15 += 8;
                  }

                  while (!_CF);
                }

                v15 = v120 - 24;
                v121 = ((v16 >> (v120 - 24)) & 0xFFFFFF) << v110;
                v122 = v100 - 24;
LABEL_193:
                while (v15 < v122)
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v123 = *BytePtr++;
                    v16 |= v123;
                  }

                  v15 += 8;
                }

                v15 -= v122;
                LODWORD(v122) = (v16 >> v15) & (0xFFFFFFFF >> -v122);
                goto LABEL_198;
              }

              v121 = 0;
              v122 = v100;
              if (v100)
              {
                goto LABEL_193;
              }

LABEL_198:
              v118[1] = v107 + v109 * (v122 | v121) / v101;
              if (++v111 == 12)
              {
                while (1)
                {
                  if (v100 < 0x19)
                  {
                    v126 = v100;
                    if (!v100)
                    {
                      goto LABEL_215;
                    }
                  }

                  else
                  {
                    if (v15 > 0x17)
                    {
                      v125 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v124 = *BytePtr++;
                          v16 |= v124;
                        }

                        v125 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v125 - 24;
                    v126 = v100 - 24;
                  }

                  while (v15 < v126)
                  {
                    v16 <<= 8;
                    if (BytePtr < v17)
                    {
                      v127 = *BytePtr++;
                      v16 |= v127;
                    }

                    v15 += 8;
                  }

                  v15 -= v126;
LABEL_215:
                  if (v100 >= 0x19)
                  {
                    if (v15 > 0x17)
                    {
                      v129 = v15;
                    }

                    else
                    {
                      do
                      {
                        v16 <<= 8;
                        if (BytePtr < v17)
                        {
                          v128 = *BytePtr++;
                          v16 |= v128;
                        }

                        v129 = v15 + 8;
                        _CF = v15 >= 0x10;
                        v15 += 8;
                      }

                      while (!_CF);
                    }

                    v15 = v129 - 24;
                    v130 = v100 - 24;
LABEL_226:
                    while (v15 < v130)
                    {
                      v16 <<= 8;
                      if (BytePtr < v17)
                      {
                        v131 = *BytePtr++;
                        v16 |= v131;
                      }

                      v15 += 8;
                    }

                    v15 -= v130;
                    goto LABEL_231;
                  }

                  v130 = v100;
                  if (v100)
                  {
                    goto LABEL_226;
                  }

LABEL_231:
                  if (++v111 == 16)
                  {
                    v132 = 0;
                    v133 = 1;
                    do
                    {
                      v134 = v133;
                      if (v5)
                      {
                        v135 = &v8[((v132 + v102) & 3) * v5];
                        v136 = &v8[v132 * v5];
                        v137 = v5;
                        do
                        {
                          v138 = *v135++;
                          *v136++ = v138;
                          --v137;
                        }

                        while (v137);
                      }

                      v133 = 0;
                      v132 = 1;
                    }

                    while ((v134 & 1) != 0);
                    v139 = 0;
                    v140 = 2;
                    while (1)
                    {
                      v141 = v139;
                      if (v5)
                      {
                        break;
                      }

LABEL_257:
                      v139 = 1;
                      v140 = 3;
                      if (v141)
                      {
                        goto LABEL_347;
                      }
                    }

                    v142 = 0;
                    v143 = *(v636 + 88);
                    v144 = &v8[v140 * v5];
                    while (2)
                    {
                      if (v99 < 0x19)
                      {
                        v147 = 0;
                        v148 = v99;
                        if (v99)
                        {
                          goto LABEL_251;
                        }
                      }

                      else
                      {
                        if (v15 > 0x17)
                        {
                          v146 = v15;
                        }

                        else
                        {
                          do
                          {
                            v16 <<= 8;
                            if (BytePtr < v17)
                            {
                              v145 = *BytePtr++;
                              v16 |= v145;
                            }

                            v146 = v15 + 8;
                            _CF = v15 >= 0x10;
                            v15 += 8;
                          }

                          while (!_CF);
                        }

                        v15 = v146 - 24;
                        v147 = ((v16 >> (v146 - 24)) & 0xFFFFFF) << (v99 - 24);
                        v148 = v99 - 24;
LABEL_251:
                        while (v15 < v148)
                        {
                          v16 <<= 8;
                          if (BytePtr < v17)
                          {
                            v149 = *BytePtr++;
                            v16 |= v149;
                          }

                          v15 += 8;
                        }

                        v15 -= v148;
                        LODWORD(v148) = (v16 >> v15) & (0xFFFFFFFF >> -v148);
                      }

                      v144[v142] = *(v143 + 16 * v142) + (*(v143 + 16 * v142 + 8) - *(v143 + 16 * v142)) * (v148 | v147) / v103;
                      if (++v142 == v5)
                      {
                        goto LABEL_257;
                      }

                      continue;
                    }
                  }
                }
              }
            }
          }

          v150 = *(v636 + 56);
          v151 = *(v636 + 64);
          v152 = *(v636 + 72) - v150;
          v153 = *(v636 + 80) - v151;
          v154 = v100 - 24;
          do
          {
            if (v100 < 0x19)
            {
              v157 = 0;
              v158 = v100;
              if (!v100)
              {
                goto LABEL_276;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v156 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v155 = *BytePtr++;
                    v16 |= v155;
                  }

                  v156 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v156 - 24;
              v157 = ((v16 >> (v156 - 24)) & 0xFFFFFF) << v154;
              v158 = v100 - 24;
            }

            while (v15 < v158)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v159 = *BytePtr++;
                v16 |= v159;
              }

              v15 += 8;
            }

            v15 -= v158;
            LODWORD(v158) = (v16 >> v15) & (0xFFFFFFFF >> -v158);
LABEL_276:
            v160 = v150 + v152 * (v158 | v157) / v101;
            v161 = &x + 2 * v104;
            *v161 = v160;
            if (v100 < 0x19)
            {
              v164 = 0;
              v165 = v100;
              if (!v100)
              {
                goto LABEL_292;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v163 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v162 = *BytePtr++;
                    v16 |= v162;
                  }

                  v163 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v163 - 24;
              v164 = ((v16 >> (v163 - 24)) & 0xFFFFFF) << v154;
              v165 = v100 - 24;
            }

            while (v15 < v165)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v166 = *BytePtr++;
                v16 |= v166;
              }

              v15 += 8;
            }

            v15 -= v165;
            LODWORD(v165) = (v16 >> v15) & (0xFFFFFFFF >> -v165);
LABEL_292:
            v161[1] = v151 + v153 * (v165 | v164) / v101;
            ++v104;
          }

          while (v104 != 12);
          do
          {
            if (v100 < 0x19)
            {
              v169 = v100;
              if (!v100)
              {
                goto LABEL_309;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v168 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v167 = *BytePtr++;
                    v16 |= v167;
                  }

                  v168 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v168 - 24;
              v169 = v100 - 24;
            }

            while (v15 < v169)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v170 = *BytePtr++;
                v16 |= v170;
              }

              v15 += 8;
            }

            v15 -= v169;
LABEL_309:
            if (v100 < 0x19)
            {
              v173 = v100;
              if (!v100)
              {
                goto LABEL_325;
              }
            }

            else
            {
              if (v15 > 0x17)
              {
                v172 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v171 = *BytePtr++;
                    v16 |= v171;
                  }

                  v172 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v172 - 24;
              v173 = v100 - 24;
            }

            while (v15 < v173)
            {
              v16 <<= 8;
              if (BytePtr < v17)
              {
                v174 = *BytePtr++;
                v16 |= v174;
              }

              v15 += 8;
            }

            v15 -= v173;
LABEL_325:
            ++v104;
          }

          while (v104 != 16);
          for (i = 0; i != 4; ++i)
          {
            if (v5)
            {
              v176 = 0;
              v177 = *(v636 + 88);
              while (v99 < 0x19)
              {
                v180 = 0;
                v181 = v99;
                if (v99)
                {
                  goto LABEL_340;
                }

LABEL_345:
                v8[i * v5 + v176] = *(v177 + 16 * v176) + (*(v177 + 16 * v176 + 8) - *(v177 + 16 * v176)) * (v181 | v180) / v103;
                if (++v176 == v5)
                {
                  goto LABEL_346;
                }
              }

              if (v15 > 0x17)
              {
                v179 = v15;
              }

              else
              {
                do
                {
                  v16 <<= 8;
                  if (BytePtr < v17)
                  {
                    v178 = *BytePtr++;
                    v16 |= v178;
                  }

                  v179 = v15 + 8;
                  _CF = v15 >= 0x10;
                  v15 += 8;
                }

                while (!_CF);
              }

              v15 = v179 - 24;
              v180 = ((v16 >> (v179 - 24)) & 0xFFFFFF) << (v99 - 24);
              v181 = v99 - 24;
LABEL_340:
              while (v15 < v181)
              {
                v16 <<= 8;
                if (BytePtr < v17)
                {
                  v182 = *BytePtr++;
                  v16 |= v182;
                }

                v15 += 8;
              }

              v15 -= v181;
              LODWORD(v181) = (v16 >> v15) & (0xFFFFFFFF >> -v181);
              goto LABEL_345;
            }

LABEL_346:
            ;
          }

LABEL_347:
          v646 = BytePtr;
          if ((v637 & 1) == 0)
          {
            v204 = 0;
            v205 = x;
            v206 = y;
            v207 = x;
            v208 = y;
            do
            {
              v210 = *(&cp1x + v204);
              v209 = *(&cp1y + v204);
              if (v210 > v207)
              {
                v211 = *(&cp1x + v204);
              }

              else
              {
                v211 = v207;
              }

              if (v210 < v205)
              {
                v205 = *(&cp1x + v204);
              }

              else
              {
                v207 = v211;
              }

              if (v209 >= v206)
              {
                if (v209 > v208)
                {
                  v208 = *(&cp1y + v204);
                }
              }

              else
              {
                v206 = *(&cp1y + v204);
              }

              v204 += 16;
            }

            while (v204 != 176);
            ClipBoundingBox = CGContextGetClipBoundingBox(v2);
            v769 = CGRectIntegral(ClipBoundingBox);
            v212 = v769.origin.x;
            v213 = v769.origin.y;
            v214 = v769.size.width;
            height = v769.size.height;
            v697 = v769;
            v769.origin.x = fmin(v769.size.width, v769.size.height);
            v216 = v769.origin.x < 0.0;
            if (v769.origin.x >= 0.0)
            {
              v227 = v769.origin.y + v769.size.height;
              v229 = v205 <= v212 + v769.size.width && v207 >= v212 && v206 <= v227;
              if (v229)
              {
                goto LABEL_395;
              }

              goto LABEL_710;
            }

            v217 = v212;
            rect = v769.origin.y;
            v770 = CGRectStandardize(v769);
            v218 = rect;
            if (v205 <= v770.origin.x + v770.size.width)
            {
              v219 = v212;
              v220 = v214;
              v221 = height;
              v222 = COERCE_DOUBLE(CGRectStandardize(*(&v218 - 1)));
              v223 = rect;
              if (v207 >= v222)
              {
                v224 = v212;
                v225 = v214;
                v226 = height;
                v771 = CGRectStandardize(*(&v223 - 1));
                v213 = rect;
                if (v206 <= v771.origin.y + v771.size.height)
                {
                  if (v216)
                  {
                    v772.origin.x = v212;
                    v772.origin.y = rect;
                    v772.size.width = v214;
                    v772.size.height = height;
                    v773 = CGRectStandardize(v772);
                    v213 = v773.origin.y;
                  }

LABEL_395:
                  if (v208 >= v213)
                  {
                    v696 = 0;
                    memset(v680, 0, sizeof(v680));
                    memset(v681, 0, sizeof(v681));
                    v682 = 0u;
                    v683 = 0u;
                    v684 = 0u;
                    v685 = 0u;
                    v686 = 0u;
                    v687 = 0u;
                    v688 = 0u;
                    v689 = 0u;
                    v690 = 0u;
                    v691 = 0u;
                    CGContextGetCTM(&__src, v2);
                    v668.f64[0] = __src.tx + __src.c * y + __src.a * x;
                    v668.f64[1] = __src.ty + __src.d * y + __src.b * x;
                    v669.f64[0] = __src.tx + __src.c * cp1y + __src.a * cp1x;
                    v669.f64[1] = __src.ty + __src.d * cp1y + __src.b * cp1x;
                    v670.f64[0] = __src.tx + __src.c * cp2y + __src.a * cp2x;
                    v670.f64[1] = __src.ty + __src.d * cp2y + __src.b * cp2x;
                    v671.f64[0] = __src.tx + __src.c * v719 + __src.a * v718;
                    v671.f64[1] = __src.ty + __src.d * v719 + __src.b * v718;
                    v672.f64[0] = __src.tx + __src.c * v721 + __src.a * v720;
                    v672.f64[1] = __src.ty + __src.d * v721 + __src.b * v720;
                    v673.f64[0] = __src.tx + __src.c * v723 + __src.a * v722;
                    v673.f64[1] = __src.ty + __src.d * v723 + __src.b * v722;
                    v674.f64[0] = __src.tx + __src.c * v725 + __src.a * v724;
                    v674.f64[1] = __src.ty + __src.d * v725 + __src.b * v724;
                    v675.f64[0] = __src.tx + __src.c * v727 + __src.a * v726;
                    v675.f64[1] = __src.ty + __src.d * v727 + __src.b * v726;
                    v676.f64[0] = __src.tx + __src.c * v729 + __src.a * v728;
                    v676.f64[1] = __src.ty + __src.d * v729 + __src.b * v728;
                    v677.f64[0] = __src.tx + __src.c * v731 + __src.a * v730;
                    v677.f64[1] = __src.ty + __src.d * v731 + __src.b * v730;
                    v678.f64[0] = __src.tx + __src.c * v733 + __src.a * v732;
                    v678.f64[1] = __src.ty + __src.d * v733 + __src.b * v732;
                    v679.f64[0] = __src.tx + __src.c * v735 + __src.a * v734;
                    v679.f64[1] = __src.ty + __src.d * v735 + __src.b * v734;
                    if (v616 <= 5)
                    {
                      if (v5)
                      {
                        v230 = v680;
                        v231 = v8;
                        v232 = v5;
                        do
                        {
                          *v230 = *v231;
                          v230[5] = *&v231[v5];
                          v230[10] = *&v231[v614];
                          v230[15] = *&v231[v613];
                          ++v231;
                          ++v230;
                          --v232;
                        }

                        while (v232);
                      }

                      v680[v5] = 0x3FF0000000000000;
                      v680[v5 + 5] = 0x3FF0000000000000;
                      v681[v5] = 0x3FF0000000000000;
                      v681[v5 + 5] = 0x3FF0000000000000;
                      __asm { FMOV            V27.2D, #3.0 }

                      v682 = v668;
                      v683 = vmulq_f64(vsubq_f64(v679, v668), _Q27);
                      __asm
                      {
                        FMOV            V7.2D, #5.0
                        FMOV            V22.2D, #-2.0
                      }

                      v684 = vmulq_f64(vsubq_f64(v669, v668), _Q27);
                      v685 = vsubq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vsubq_f64(vaddq_f64(vsubq_f64(v672, v679), v676), v669), _Q27), _Q7, v668), _Q22, vaddq_f64(v671, v677)), v674);
                      v686 = vmulq_f64(vaddq_f64(v668, vmlaq_f64(v678, _Q22, v679)), _Q27);
                      v687 = vmulq_f64(vaddq_f64(v668, vmlaq_f64(v670, _Q22, v669)), _Q27);
                      __asm { FMOV            V19.2D, #2.0 }

                      v625 = _Q19;
                      v695 = v616;
                      v688 = vmulq_f64(vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v671, v673), v678), v668), _Q19, vsubq_f64(v679, v672)), _Q27);
                      v689 = vmulq_f64(vmlaq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v677, v675), v670), v668), _Q19, vsubq_f64(v669, v676)), _Q27);
                      v690 = vmlaq_f64(vsubq_f64(v677, v668), _Q27, vsubq_f64(v679, v678));
                      v691 = vmlaq_f64(vsubq_f64(v671, v668), _Q27, vsubq_f64(v669, v670));
                      v628 = _Q27;
                      v692 = vmlaq_f64(vaddq_f64(v668, vsubq_f64(vsubq_f64(v674, v671), v677)), _Q27, vaddq_f64(v672, vsubq_f64(vsubq_f64(v678, v679), v673)));
                      v693 = vmlaq_f64(vaddq_f64(v668, vsubq_f64(vsubq_f64(v674, v677), v671)), _Q27, vaddq_f64(v676, vsubq_f64(vsubq_f64(v670, v669), v675)));
                      if (v616)
                      {
                        v239 = &v668;
                        v240 = v616;
                        do
                        {
                          v241 = v239[12].f64[0];
                          v239[34].f64[0] = v241;
                          v242 = v239[19].f64[1];
                          v239[36].f64[1] = v242 - v241;
                          v243 = v239[14].f64[1];
                          v239[39].f64[0] = v243 - v241;
                          v239[41].f64[1] = v241 + v239[17].f64[0] - v243 - v242;
                          v239 = (v239 + 8);
                          --v240;
                        }

                        while (v240);
                      }

                      v244 = malloc_type_malloc(0x30uLL, 0x1000040451B5BE8uLL);
                      __asm { FMOV            V0.2D, #0.5 }

                      v617 = _Q0;
                      v632 = v244;
                      if (v244)
                      {
                        v630 = malloc_type_malloc(0x78uLL, 0x100004000313F17uLL);
                        if (v630)
                        {
                          v246 = v695;
                          v247 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040AF517F5CuLL);
                          if (v247)
                          {
                            v248 = v247;
                            v247[1] = 0;
                            v247[3] = 0;
                            v247[5] = 0;
                            *v247 = v246;
                            v249 = malloc_type_malloc(0x1098uLL, 0x1000040FF89C88EuLL);
                            v248[1] = v249;
                            if (v249)
                            {
                              v250 = -4248;
                              do
                              {
                                v251 = v248[1] + v250;
                                *(v251 + 4312) = 0;
                                *(v251 + 4280) = 0uLL;
                                *(v251 + 4296) = 0uLL;
                                *(v251 + 4248) = 0uLL;
                                *(v251 + 4264) = 0uLL;
                                v250 += 72;
                              }

                              while (v250);
                              v248[2] = 0x3B00000000;
                              v252 = malloc_type_malloc(0x528uLL, 0x1000040A86A77D5uLL);
                              v248[3] = v252;
                              if (v252)
                              {
                                for (j = 0; j != 1320; j += 20)
                                {
                                  v254 = v248[3] + j;
                                  *(v254 + 16) = -1;
                                  *v254 = -1;
                                  *(v254 + 8) = -1;
                                }

                                v248[4] = 0x4200000000;
                                v255 = malloc_type_malloc(0xAE0uLL, 0x1000040EED21634uLL);
                                v248[5] = v255;
                                if (v255)
                                {
                                  v257 = 0;
                                  *&v258 = -1;
                                  *(&v258 + 1) = -1;
                                  do
                                  {
                                    v259 = v248[5] + v257;
                                    *v259 = v258;
                                    *(v259 + 16) = v258;
                                    *(v259 + 32) = -1;
                                    *(v259 + 40) = 1;
                                    v257 += 48;
                                  }

                                  while (v257 != 2784);
                                  v260 = 0;
                                  v248[7] = -1;
                                  v248[8] = -1;
                                  *(v248 + 4) = 9;
                                  *(v248 + 8) = 16;
                                  v248[6] = 0x3A00000008;
                                  *&v256 = 0;
                                  recta = v248;
                                  v638 = (v248 + 7);
                                  while (1)
                                  {
                                    v650 = v260;
                                    v262 = v688;
                                    v261 = v689;
                                    v264 = v692;
                                    v263 = v693;
                                    v266 = v682;
                                    v265 = v683;
                                    v267 = v684;
                                    v268 = v685;
                                    v269 = v686;
                                    v270 = v687;
                                    v271 = v690;
                                    v272 = v691;
                                    v273 = v695;
                                    if (v695)
                                    {
                                      v274 = &v736;
                                      p_src = &__src;
                                      v276 = &v694;
                                      v277 = v695;
                                      do
                                      {
                                        v278 = v276[5] + v276[15] * *&v256;
                                        p_src->a = *v276 + v276[10] * *&v256 + v278 * 0.0;
                                        p_src = (p_src + 8);
                                        v274->f64[0] = v278 * 0.5;
                                        v274 = (v274 + 8);
                                        ++v276;
                                        --v277;
                                      }

                                      while (v277);
                                    }

                                    v279 = 0;
                                    v280 = vmlaq_n_f64(v271, v264, *&v256);
                                    v281 = vmlaq_n_f64(v269, v262, *&v256);
                                    v282 = vmlaq_n_f64(v265, vmlaq_n_f64(v268, vmlaq_n_f64(v261, v263, *&v256), *&v256), *&v256);
                                    v283 = vmlaq_n_f64(v266, vmlaq_n_f64(v267, vmlaq_n_f64(v270, v272, *&v256), *&v256), *&v256);
                                    v284 = vmulq_f64(vmulq_f64(v280, v628), v617);
                                    v285 = vmulq_f64(vmlaq_f64(v284, v625, v281), v617);
                                    v286 = vmulq_f64(vaddq_f64(v284, v284), v617);
                                    v287 = vmlaq_f64(v283, 0, vmlaq_f64(v282, 0, vmlaq_f64(v281, 0, v280)));
                                    v288 = vmlaq_f64(vmulq_f64(vmlaq_f64(v282, v617, vmlaq_f64(v281, v617, v280)), v617), 0, vmlaq_f64(v285, 0, v284));
                                    v289 = vmlaq_f64(vmulq_f64(vmlaq_f64(v285, v617, v284), v617), 0, v286);
                                    v647 = vmulq_f64(v286, v617);
                                    v291 = v630;
                                    v290 = v632;
                                    *v642 = v256;
                                    do
                                    {
                                      *v290 = v287;
                                      if (v273)
                                      {
                                        v292 = &__src;
                                        v657 = v288;
                                        *widthc = v287;
                                        v654 = v289;
                                        memcpy(v291, &__src, 8 * v273);
                                        v289 = v654;
                                        v288 = v657;
                                        v287 = *widthc;
                                        v256 = *v642;
                                        v293 = &v736;
                                        v294 = v273;
                                        do
                                        {
                                          v295 = v293->f64[0];
                                          v293 = (v293 + 8);
                                          v292->a = v295 + v292->a;
                                          v292 = (v292 + 8);
                                          --v294;
                                        }

                                        while (v294);
                                      }

                                      v287 = vaddq_f64(v287, v288);
                                      v288 = vaddq_f64(v288, v289);
                                      v289 = vaddq_f64(v647, v289);
                                      ++v279;
                                      ++v290;
                                      v291 += 40;
                                    }

                                    while (v279 != 3);
                                    v296 = 0;
                                    v297 = v650;
                                    v298 = 3 * v650;
                                    v299 = 2 * v650;
                                    v300 = 3 * v650 + 1;
                                    v301 = 2 * v650 + 2;
                                    v302 = 3 * v650 + 3;
                                    width = 2 * v650 + 12;
                                    v303 = 2 * v650 + 4;
                                    v304 = 2 * (v650 + 1);
                                    v305 = *&v256 <= 1.0 ? *&v256 : 1.0;
                                    v306 = 0.0;
                                    v307 = v630;
                                    v308 = v632;
                                    v309 = recta;
                                    while (1)
                                    {
                                      v310 = v296 + v298;
                                      v311 = *(v309 + 1) + 72 * (v296 + v298);
                                      *v311 = *v308;
                                      if (v306 <= 1.0)
                                      {
                                        v312 = v306;
                                      }

                                      else
                                      {
                                        v312 = 1.0;
                                      }

                                      *(v311 + 16) = v312;
                                      *(v311 + 24) = v305;
                                      v313 = *v309;
                                      if (v313)
                                      {
                                        v314 = 0;
                                        v315 = v311 + 32;
                                        v316 = 8 * v313;
                                        do
                                        {
                                          *(v315 + v314) = *&v307[v314];
                                          v314 += 8;
                                        }

                                        while (v316 != v314);
                                      }

                                      if (v296 == 2)
                                      {
                                        break;
                                      }

                                      v317 = *(v309 + 3);
                                      v318 = v296 + v299;
                                      v319 = (v317 + 20 * (v296 + v299));
                                      v320 = v300 + v296;
                                      *v319 = v310;
                                      v319[1] = v300 + v296;
                                      if (v297 == 2)
                                      {
                                        v319[2] = -1;
                                        v319[3] = 3 * (v296 + v301);
                                        v321 = v296 + 1;
                                      }

                                      else
                                      {
                                        v322 = 3 * v318;
                                        v319[2] = 3 * v318;
                                        if (v297)
                                        {
                                          v319[3] = 3 * (v296 + v301);
                                          v323 = v317 + 20 * v310;
                                          *(v323 + 120) = v296 + v302;
                                          *(v323 + 124) = v310;
                                          v324 = v296 + v302;
                                        }

                                        else
                                        {
                                          v319[3] = -1;
                                          v325 = v317 + 20 * v310;
                                          v324 = v296 + 3;
                                          *(v325 + 120) = v296 + 3;
                                          *(v325 + 124) = v310;
                                        }

                                        v326 = v317 + 20 * v310;
                                        v327 = v322 + 11;
                                        v328 = 3 * v296 + 12;
                                        if (!v650)
                                        {
                                          v328 = -1;
                                        }

                                        if (!v296)
                                        {
                                          v327 = -1;
                                        }

                                        *(v326 + 128) = v322 + 2;
                                        *(v326 + 132) = v327;
                                        v329 = (v317 + 20 * (width + v296));
                                        *v329 = v320;
                                        v329[1] = v324;
                                        v330 = v322 + 1;
                                        v331 = v296 + v303;
                                        v332 = 3 * (v296 + v303) + 1;
                                        v329[2] = v330;
                                        v329[3] = v332;
                                        v333 = *(recta + 5);
                                        v334 = (v333 + 48 * v318);
                                        *v334 = v310;
                                        v334[1] = v320;
                                        v334[2] = v324;
                                        v334[3] = 2 * v318;
                                        v335 = 2 * (width + v296);
                                        v334[4] = v335;
                                        v334[5] = 2 * v310 + 12;
                                        v334[6] = v328;
                                        v334[7] = v332;
                                        v309 = recta;
                                        if (v296)
                                        {
                                          v336 = 3 * v303 + 2;
                                        }

                                        else
                                        {
                                          v336 = -1;
                                        }

                                        v334[8] = v336;
                                        v337 = recta[14];
                                        if (v337 == -1)
                                        {
                                          recta[15] = v318;
                                        }

                                        v334[9] = v337;
                                        *v638 = v318;
                                        v334[10] = 1;
                                        v334[11] = 7 - v318;
                                        v338 = (v333 + 48 * v331);
                                        v321 = v296 + 1;
                                        *v338 = v296 + 1 + v302;
                                        v338[1] = v296 + v302;
                                        v339 = v296 + 1 + v298;
                                        v338[2] = v339;
                                        v338[3] = (2 * (v296 + v304)) | 1;
                                        v338[4] = v335 | 1;
                                        v338[5] = 2 * v339 + 13;
                                        v340 = 3 * (v296 + v304);
                                        if (v650 == 1)
                                        {
                                          v340 = -1;
                                        }

                                        v338[6] = v340;
                                        v338[7] = v330;
                                        if (v296 == 1)
                                        {
                                          v341 = -1;
                                        }

                                        else
                                        {
                                          v341 = 3 * (v321 + v299) + 2;
                                        }

                                        v338[8] = v341;
                                        v342 = *v638;
                                        if (*v638 == -1)
                                        {
                                          recta[15] = v331;
                                        }

                                        v338[9] = v342;
                                        *v638 = v331;
                                        v338[10] = 1;
                                        v338[11] = 7 - v331;
                                        v2 = v641;
                                        v297 = v650;
                                      }

                                      v306 = v306 + 0.5;
                                      ++v308;
                                      v307 += 40;
                                      v296 = v321;
                                    }

                                    if (v297 == 2)
                                    {
                                      break;
                                    }

                                    v343 = (*(v309 + 3) + 20 * v310);
                                    v343[30] = v298 + 5;
                                    v343[31] = v310;
                                    v343[32] = -1;
                                    v343[33] = 3 * v301 + 11;
                                    *&v256 = *&v256 + 0.5;
                                    v260 = v650 + 1;
                                  }

                                  free(v630);
                                  free(v632);
LABEL_464:
                                  *(v309 + 9) = 0;
                                  v344 = v309[14];
                                  for (rectb = v309; v344 != -1; v344 = v309[14])
                                  {
                                    v345 = *(v309 + 5);
                                    v346 = (v345 + 48 * v344);
                                    v309[14] = v346[9];
                                    v347 = *(v309 + 1);
                                    v348 = (v347 + 72 * *v346);
                                    v349 = *v348;
                                    v350 = v348[1];
                                    v351 = (v347 + 72 * v346[1]);
                                    v352 = *v351;
                                    v353 = v351[1];
                                    v354 = (v347 + 72 * v346[2]);
                                    if (fabs(((v352 - v349) * (v353 - v350) + (*v354 - v352) * (v353 - v350 + v354[1] - v350) + (v349 - *v354) * (v354[1] - v350)) * 0.5) >= 8.0)
                                    {
                                      v355 = 0;
                                      v356 = 0;
                                      v357 = v346 + 6;
                                      do
                                      {
                                        v356 |= v357[v355++] == -1;
                                      }

                                      while (v355 != 3);
                                      if ((*(v346 + 41) < 7) | v356 & 1)
                                      {
                                        v358 = 0;
                                        v736 = 0uLL;
                                        do
                                        {
                                          v359 = v357[v358];
                                          if (v359 == -1)
                                          {
                                            v375 = v358 + 1;
                                          }

                                          else
                                          {
                                            v360 = v359 / 3;
                                            v361 = v359 % 3;
                                            v362 = (v358 - 1);
                                            if (!v358)
                                            {
                                              v362 = 2;
                                            }

                                            v363 = v345 + 48 * v360;
                                            v364 = (v347 + 72 * v346[v362]);
                                            v365 = *v364;
                                            v366 = v364[1];
                                            v367 = v361 + 2;
                                            v368 = v361 - 1;
                                            if (v367 < 3)
                                            {
                                              v368 = v367;
                                            }

                                            v369 = (v347 + 72 * *(v363 + 4 * v368));
                                            v370 = *v369;
                                            v371 = v369[1];
                                            v372 = (v347 + 72 * v346[v358]);
                                            v373 = *v372;
                                            v374 = v372[1];
                                            v375 = v358 + 1;
                                            v376 = (v358 + 1);
                                            if (v358 == 2)
                                            {
                                              v376 = 0;
                                            }

                                            v377 = (v347 + 72 * v346[v376]);
                                            v378 = *v377 - v373;
                                            v379 = v377[1] - v374;
                                            v380 = v366 - v374;
                                            if (fabs((v365 - v373) * (v371 - v374 - v379) + v378 * (v380 - (v371 - v374)) + (v370 - v373) * (v379 - v380)) <= 2.22507386e-308)
                                            {
                                              goto LABEL_510;
                                            }

                                            if ((v370 - v373) * v379 - (v371 - v374) * v378 >= 0.0 == v378 * v380 - v379 * (v365 - v373) < 0.0)
                                            {
                                              ++rectb[19];
                                              goto LABEL_506;
                                            }
                                          }

                                          v358 = v375;
                                        }

                                        while (v375 != 3);
                                        v381 = 0;
                                        LODWORD(v358) = -1;
                                        v382 = 0.0;
                                        do
                                        {
                                          v383 = *(rectb + 1);
                                          v384 = (v383 + 72 * v346[v381]);
                                          if (v381 == 2)
                                          {
                                            v385 = 0;
                                          }

                                          else
                                          {
                                            v385 = v381 + 1;
                                          }

                                          v386 = (v383 + 72 * v346[v385]);
                                          v387 = v381 + 1;
                                          v388 = (*v384 + *v386) * 0.5;
                                          v389 = (v384[1] + v386[1]) * 0.5;
                                          Coons(&v668, &v736, &__src.a, (v384[2] + v386[2]) * 0.5, (v384[3] + v386[3]) * 0.5);
                                          v390 = (v736.f64[1] - v389) * (v736.f64[1] - v389);
                                          if (v390 + (v736.f64[0] - v388) * (v736.f64[0] - v388) >= v382)
                                          {
                                            LODWORD(v358) = v381;
                                            v382 = v390 + (v736.f64[0] - v388) * (v736.f64[0] - v388);
                                          }

                                          ++v381;
                                        }

                                        while (v387 != 3);
                                        if (v358 != -1 && v382 > 0.49)
                                        {
                                          ++rectb[18];
LABEL_506:
                                          v736 = 0uLL;
                                          v658 = v346[v358];
                                          v403 = (v358 + 1) % 3;
                                          v655 = v346[v403];
                                          v651 = v346[(v358 + 2) % 3];
                                          v404 = *(rectb + 5);
                                          v405 = v357[v358];
                                          v624 = (v358 + 2) % 3;
                                          v648 = v405;
                                          if (v405 == -1)
                                          {
                                            v626 = 0;
                                            widtha = 0;
                                            v631 = -1;
                                            v639 = -1;
                                          }

                                          else
                                          {
                                            v406 = v405 / 3;
                                            v407 = v405 % 3;
                                            v639 = v406;
                                            v408 = v407 + 2;
                                            v626 = v407;
                                            if ((v407 + 2) >= 3)
                                            {
                                              v408 = v407 - 1;
                                            }

                                            widtha = v404 + 48 * v406;
                                            v631 = *(widtha + 4 * v408);
                                          }

                                          v629 = v358;
                                          v633 = 0xAAAAAAAAAAAAAAABLL * ((v346 - v404) >> 4);
                                          *v643 = vmulq_f64(vaddq_f64(*(*(rectb + 1) + 72 * v658 + 16), *(*(rectb + 1) + 72 * v655 + 16)), v617);
                                          Coons(&v668, &v736, &__src.a, *v643, *&v643[1]);
                                          v409 = &v709;
                                          v410 = 1;
                                          do
                                          {
                                            v411 = v410;
                                            AllocateCoonsMeshTriangle(rectb);
                                            v410 = 0;
                                            v412 = *(rectb + 5);
                                            *v409 = -1431655765 * ((v413 - v412) >> 4);
                                            v409 = &v708;
                                          }

                                          while ((v411 & 1) != 0);
                                          v711 = 0;
                                          v710 = 0;
                                          if (v648 == -1)
                                          {
                                            v707 = -1;
                                            v706 = -1;
                                          }

                                          else
                                          {
                                            v414 = &v711;
                                            v415 = &v707;
                                            v416 = 1;
                                            do
                                            {
                                              v417 = v416;
                                              AllocateCoonsMeshTriangle(rectb);
                                              v416 = 0;
                                              *v414 = v418;
                                              v412 = *(rectb + 5);
                                              *v415 = -1431655765 * ((v418 - v412) >> 4);
                                              v414 = &v710;
                                              v415 = &v706;
                                            }

                                            while ((v417 & 1) != 0);
                                          }

                                          v419 = v709;
                                          v420 = v708;
                                          if (v648 != -1)
                                          {
                                            v711 = (v412 + 48 * v707);
                                            v710 = (v412 + 48 * v706);
                                            widtha = v412 + 48 * v639;
                                          }

                                          v421 = v736;
                                          v422 = rectb[4];
                                          v423 = *(rectb + 1);
                                          if (v422 == rectb[5])
                                          {
                                            v622 = v736;
                                            v423 = malloc_type_realloc(v423, 72 * (v422 + 50), 0x1000040FF89C88EuLL);
                                            *(rectb + 1) = v423;
                                            if (v423)
                                            {
                                              v422 = rectb[4];
                                              rectb[5] += 50;
                                              v421 = v622;
                                              goto LABEL_526;
                                            }

                                            v618 = 0;
                                          }

                                          else
                                          {
LABEL_526:
                                            rectb[4] = v422 + 1;
                                            v424 = &v423[72 * v422];
                                            *v424 = v421;
                                            v424[1] = *v643;
                                            v425 = *rectb;
                                            v618 = v424;
                                            if (v425)
                                            {
                                              v426 = 72 * v422 + 32;
                                              v427 = &__src;
                                              do
                                              {
                                                a = v427->a;
                                                v427 = (v427 + 8);
                                                *&v423[v426] = a;
                                                v426 += 8;
                                                --v425;
                                              }

                                              while (v425);
                                            }
                                          }

                                          v621 = v419;
                                          v623 = v420;
                                          v429 = v412 + 48 * v419;
                                          v430 = v412 + 48 * v420;
                                          v644 = v412 + 48 * v633;
                                          CoonsMeshEdge = AllocateCoonsMeshEdge(rectb);
                                          v619 = *(rectb + 3);
                                          v620 = CoonsMeshEdge;
                                          v432 = &v705;
                                          v433 = 1;
                                          do
                                          {
                                            v434 = v433;
                                            v435 = AllocateCoonsMeshEdge(rectb);
                                            v433 = 0;
                                            v436 = *(rectb + 3);
                                            *v432 = -858993459 * ((v435 - v436) >> 2);
                                            v432 = &v704;
                                          }

                                          while ((v434 & 1) != 0);
                                          if (v648 == -1)
                                          {
                                            v438 = 0;
                                            v437 = 0;
                                          }

                                          else
                                          {
                                            v437 = AllocateCoonsMeshEdge(rectb);
                                            v436 = *(rectb + 3);
                                            v438 = -858993459 * ((v437 - v436) >> 2);
                                          }

                                          v439 = v626;
                                          v440 = v705;
                                          v441 = v704;
                                          if (v648 == -1)
                                          {
                                            v442 = v437;
                                          }

                                          else
                                          {
                                            v442 = (v436 + 20 * v438);
                                          }

                                          v627 = v438;
                                          if (widtha)
                                          {
                                            v443 = widtha + 12;
                                            if (*(v644 + 4 * v629 + 12) >= 0)
                                            {
                                              v444 = *(v644 + 4 * v629 + 12) & 1;
                                            }

                                            else
                                            {
                                              v444 = -(*(v644 + 4 * v629 + 12) & 1);
                                            }

                                            if (*(widtha + 12 + 4 * v439) >= 0)
                                            {
                                              v445 = *(widtha + 12 + 4 * v439) & 1;
                                            }

                                            else
                                            {
                                              v445 = -(*(widtha + 12 + 4 * v439) & 1);
                                            }

                                            v446 = widtha + 24;
                                            v447 = v619;
                                            v448 = 0;
                                            if (v444 == v445)
                                            {
                                              v449 = v439 + 2;
                                              v450 = &v703;
                                              v451 = &v701;
                                              v452 = &v699;
                                              v453 = 1;
                                              do
                                              {
                                                v454 = v453;
                                                v455 = (v449 + v448) % 3;
                                                v456 = *(v443 + 4 * v455);
                                                *v450 = v456 / 2;
                                                *v451 = ((v456 + (v456 >> 31)) & 0xFFFFFFFE) - v456 + 1;
                                                *v452 = *(v446 + 4 * v455);
                                                v448 = -1;
                                                v450 = &v702;
                                                v451 = &v700;
                                                v452 = &v698;
                                                v453 = 0;
                                              }

                                              while ((v454 & 1) != 0);
                                            }

                                            else
                                            {
                                              v457 = v439 + 1;
                                              v458 = &v703;
                                              v459 = &v701;
                                              v460 = &v699;
                                              v461 = 1;
                                              do
                                              {
                                                v462 = v461;
                                                v463 = (v457 + v448) % 3;
                                                v464 = *(v443 + 4 * v463);
                                                *v458 = v464 / 2;
                                                *v459 = v464 % 2;
                                                v465 = *(v446 + 4 * v463);
                                                v448 = 1;
                                                *v460 = v465;
                                                v458 = &v702;
                                                v459 = &v700;
                                                v460 = &v698;
                                                v461 = 0;
                                              }

                                              while ((v462 & 1) != 0);
                                            }
                                          }

                                          else
                                          {
                                            v703 = -1;
                                            v702 = -1;
                                            v447 = v619;
                                          }

                                          v466 = 954437177 * ((v618 - v423) >> 3);
                                          v467 = 0xCCCCCCCCCCCCCCCDLL * ((v620 - v447) >> 2);
                                          v468 = (v436 + 20 * v440);
                                          v469 = (v436 + 20 * v441);
                                          v470 = v644 + 12;
                                          v471 = *(v644 + 12 + 4 * v624);
                                          v472 = *(v644 + 24 + 4 * v624);
                                          v473 = (v436 + 20 * v467);
                                          v474 = *(v644 + 12 + 4 * v403);
                                          v475 = *(v644 + 24 + 4 * v403);
                                          *v473 = v466;
                                          v473[1] = v651;
                                          v476 = 3 * v621;
                                          v477 = 3 * v621 + 1;
                                          v478 = 3 * v623;
                                          v479 = 3 * v623 + 1;
                                          v473[2] = v477;
                                          v473[3] = v479;
                                          *v468 = v658;
                                          v468[1] = v466;
                                          v480 = 3 * v707;
                                          if (v707 == -1)
                                          {
                                            v481 = -1;
                                          }

                                          else
                                          {
                                            v481 = v480 + 1;
                                          }

                                          v468[2] = v476;
                                          v468[3] = v481;
                                          *v469 = v466;
                                          v469[1] = v655;
                                          v482 = v478 + 2;
                                          v483 = 3 * v706;
                                          if (v706 == -1)
                                          {
                                            v484 = -1;
                                          }

                                          else
                                          {
                                            v484 = v483 + 1;
                                          }

                                          v469[2] = v482;
                                          v469[3] = v484;
                                          if (widtha)
                                          {
                                            *v442 = v631;
                                            v442[1] = v466;
                                            v442[2] = v480;
                                            v442[3] = v483 + 2;
                                          }

                                          v485 = v471 / 2;
                                          *v429 = v658;
                                          *(v429 + 4) = v466;
                                          v486 = 2 * v440;
                                          *(v429 + 8) = v651;
                                          *(v429 + 12) = 2 * v440;
                                          v487 = 2 * v467;
                                          *(v429 + 16) = v487;
                                          v488 = (v436 + 20 * (v471 / 2));
                                          if (*v488 == v651)
                                          {
                                            v489 = 2 * v485;
                                            goto LABEL_565;
                                          }

                                          if (v488[1] == v651)
                                          {
                                            v489 = (2 * v485) | 1;
LABEL_565:
                                            *(v429 + 20) = v489;
                                          }

                                          *(v429 + 24) = v481;
                                          *(v429 + 28) = v479;
                                          *(v429 + 32) = v472;
                                          v490 = *(rectb + 5);
                                          v491 = -1431655765 * ((v429 - v490) >> 4);
                                          *(v429 + 36) = -1;
                                          if (rectb[14] == -1)
                                          {
                                            rectb[14] = v491;
                                          }

                                          else
                                          {
                                            *(v490 + 48 * rectb[15] + 36) = v491;
                                          }

                                          rectb[15] = v491;
                                          *(v429 + 40) = 1;
                                          v492 = *(v644 + 41) + 1;
                                          *(v429 + 41) = v492;
                                          *(v429 + 42) += 1 << (16 - v492);
                                          if (v472 != -1)
                                          {
                                            *(v490 + 48 * (v472 / 3) + 4 * (v472 % 3) + 24) = v476 + 2;
                                          }

                                          v493 = v436 + 20 * v485;
                                          v496 = *(v493 + 8);
                                          v494 = (v493 + 8);
                                          v495 = v496;
                                          if (v496 != -1 && v495 / 3 == v633)
                                          {
                                            v2 = v641;
                                            goto LABEL_576;
                                          }

                                          v498 = v494[1];
                                          ++v494;
                                          v497 = v498;
                                          v2 = v641;
                                          if (v498 != -1 && v497 / 3 == v633)
                                          {
LABEL_576:
                                            *v494 = v476 + 2;
                                          }

                                          v499 = v474 / 2;
                                          *v430 = v655;
                                          *(v430 + 4) = v651;
                                          *(v430 + 8) = v466;
                                          v500 = (v436 + 20 * v499);
                                          if (*v500 == v655)
                                          {
                                            v501 = 2 * v499;
                                            v502 = widtha;
                                            goto LABEL_581;
                                          }

                                          v502 = widtha;
                                          if (v500[1] == v655)
                                          {
                                            v501 = (2 * v499) | 1;
LABEL_581:
                                            *(v430 + 12) = v501;
                                          }

                                          v503 = 2 * v441;
                                          *(v430 + 16) = v487 | 1;
                                          *(v430 + 20) = v503;
                                          *(v430 + 24) = v475;
                                          *(v430 + 28) = v477;
                                          v504 = -1431655765 * ((v430 - v490) >> 4);
                                          *(v430 + 32) = v484;
                                          *(v430 + 36) = -1;
                                          if (rectb[14] == -1)
                                          {
                                            rectb[14] = v504;
                                          }

                                          else
                                          {
                                            *(v490 + 48 * rectb[15] + 36) = v504;
                                          }

                                          rectb[15] = v504;
                                          *(v430 + 40) = 1;
                                          *(v430 + 41) = *(v644 + 41) + 1;
                                          if (v475 != -1)
                                          {
                                            *(v490 + 48 * (v475 / 3) + 4 * (v475 % 3) + 24) = v478;
                                          }

                                          v505 = v436 + 20 * v499;
                                          v508 = *(v505 + 8);
                                          v506 = (v505 + 8);
                                          v507 = v508;
                                          if (v508 != -1 && v507 / 3 == v633)
                                          {
                                            v309 = rectb;
                                            goto LABEL_592;
                                          }

                                          v510 = v506[1];
                                          ++v506;
                                          v509 = v510;
                                          v309 = rectb;
                                          if (v510 != -1 && v509 / 3 == v633)
                                          {
LABEL_592:
                                            *v506 = v478;
                                          }

                                          v511 = v711;
                                          if (v711)
                                          {
                                            *v711 = v631;
                                            v511[1] = v466;
                                            v511[2] = v658;
                                            v511[3] = 2 * v627;
                                            v512 = v703;
                                            v513 = v701 + 2 * v703;
                                            v511[4] = v486 | 1;
                                            v511[5] = v513;
                                            v511[6] = v483 + 2;
                                            v511[7] = v476;
                                            v514 = v699;
                                            v511[8] = v699;
                                            if (*(v502 + 40) == 1)
                                            {
                                              v515 = -1431655765 * ((v511 - v490) >> 4);
                                              v511[9] = -1;
                                              if (v309[14] == -1)
                                              {
                                                v309[14] = v515;
                                              }

                                              else
                                              {
                                                *(v490 + 48 * v309[15] + 36) = v515;
                                              }

                                              v309[15] = v515;
                                              v516 = 1;
                                            }

                                            else
                                            {
                                              v516 = 0;
                                              v511[9] = -1;
                                            }

                                            *(v511 + 40) = v516;
                                            *(v511 + 41) = *(v502 + 41) + 1;
                                            if (v514 != -1)
                                            {
                                              *(v490 + 48 * (v514 / 3) + 4 * (v514 % 3) + 24) = v480 + 2;
                                            }

                                            v517 = v436 + 20 * v512;
                                            v520 = *(v517 + 8);
                                            v519 = (v517 + 8);
                                            v518 = v520;
                                            if (v520 != -1 && v518 / 3 == v639 || (v522 = v519[1], ++v519, v521 = v522, v522 != -1) && v521 / 3 == v639)
                                            {
                                              *v519 = v480 + 2;
                                            }
                                          }

                                          v523 = v710;
                                          if (v710)
                                          {
                                            *v710 = v631;
                                            v523[1] = v655;
                                            v524 = v702;
                                            v525 = v700 + 2 * v702;
                                            v523[2] = v466;
                                            v523[3] = v525;
                                            v523[4] = v503 | 1;
                                            v523[5] = (2 * v627) | 1;
                                            v526 = v698;
                                            v523[6] = v698;
                                            v523[7] = v482;
                                            v523[8] = v480;
                                            if (*(v502 + 40) == 1)
                                            {
                                              v527 = -1431655765 * ((v523 - v490) >> 4);
                                              v523[9] = -1;
                                              if (v309[14] == -1)
                                              {
                                                v309[14] = v527;
                                              }

                                              else
                                              {
                                                *(v490 + 48 * v309[15] + 36) = v527;
                                              }

                                              v309[15] = v527;
                                              v531 = 1;
                                            }

                                            else
                                            {
                                              v531 = 0;
                                              v523[9] = -1;
                                            }

                                            *(v523 + 40) = v531;
                                            *(v523 + 41) = *(v502 + 41) + 1;
                                            if (v526 != -1)
                                            {
                                              *(v490 + 48 * (v526 / 3) + 4 * (v526 % 3) + 24) = v483;
                                            }

                                            v532 = v436 + 20 * v524;
                                            v535 = *(v532 + 8);
                                            v533 = (v532 + 8);
                                            v534 = v535;
                                            if (v535 != -1 && v534 / 3 == v639 || (v537 = v533[1], ++v533, v536 = v537, v537 != -1) && v536 / 3 == v639)
                                            {
                                              *v533 = v483;
                                            }

LABEL_623:
                                            v530 = -1431655765 * ((v502 - v490) >> 4);
                                            v538 = v309[14];
                                            if (v538 != -1)
                                            {
                                              v539 = 0xFFFFFFFFLL;
                                              do
                                              {
                                                v540 = v538;
                                                v538 = *(v490 + 48 * v538 + 36);
                                                if (v540 == v530)
                                                {
                                                  if (v539 == -1)
                                                  {
                                                    v309[14] = v538;
                                                  }

                                                  else
                                                  {
                                                    *(v490 + 48 * v539 + 36) = v538;
                                                  }

                                                  if (v309[15] == v530)
                                                  {
                                                    v309[15] = v539;
                                                  }

                                                  v540 = v539;
                                                }

                                                v539 = v540;
                                              }

                                              while (v538 != -1);
                                            }

                                            v541 = *(v470 + 4 * v629);
                                            v542 = v436 + 20 * (v541 / 2);
                                            *(v542 + 16) = v309[17];
                                            v309[17] = v541 / 2;
                                            *v542 = 0xC0000000CLL;
                                            *(v644 + 36) = v309[16];
                                            v309[16] = -1431655765 * ((v644 - v490) >> 4);
                                            *(v644 + 8) = -13;
                                            *v644 = 0xC0000000CLL;
                                          }

                                          else
                                          {
                                            if (v502)
                                            {
                                              goto LABEL_623;
                                            }

                                            v528 = *(v470 + 4 * v629) / 2;
                                            v529 = v436 + 20 * v528;
                                            *(v529 + 16) = v309[17];
                                            v309[17] = v528;
                                            *v529 = 0xC0000000CLL;
                                            v530 = -1431655765 * ((v644 - v490) >> 4);
                                            v502 = v644;
                                          }

                                          *(v502 + 36) = v309[16];
                                          v309[16] = v530;
                                          *(v502 + 8) = -13;
                                          *v502 = 0xC0000000CLL;
                                          continue;
                                        }

                                        v391 = 0;
                                        v392 = *(rectb + 1) + 32;
                                        LODWORD(v358) = -1;
                                        v393 = 0.0;
                                        do
                                        {
                                          v394 = v391 + 1;
                                          if (v391 == 2)
                                          {
                                            v395 = 0;
                                          }

                                          else
                                          {
                                            v395 = v391 + 1;
                                          }

                                          if (*rectb)
                                          {
                                            v396 = (v392 + 72 * v346[v395]);
                                            v397 = (v392 + 72 * v346[v391]);
                                            v398 = *rectb;
                                            do
                                            {
                                              v399 = *v397++;
                                              v400 = v399;
                                              v401 = *v396++;
                                              v402 = v400 - v401;
                                              if (v402 < 0.0)
                                              {
                                                v402 = -v402;
                                              }

                                              if (v402 >= v393)
                                              {
                                                LODWORD(v358) = v391;
                                                v393 = v402;
                                              }

                                              --v398;
                                            }

                                            while (v398);
                                          }

                                          ++v391;
                                        }

                                        while (v394 != 3);
                                        if (v358 != -1 && v393 > 0.1)
                                        {
                                          goto LABEL_506;
                                        }
                                      }
                                    }

LABEL_510:
                                    *(v346 + 40) = 0;
                                    v309 = rectb;
                                  }

                                  v543 = v309[12];
                                  if (v543)
                                  {
                                    LODWORD(v544) = 0;
                                    v545 = *(v309 + 5);
                                    do
                                    {
                                      v546 = *v545;
                                      v545 += 12;
                                      if (v546 == -13)
                                      {
                                        v544 = v544;
                                      }

                                      else
                                      {
                                        v544 = (v544 + 1);
                                      }

                                      --v543;
                                    }

                                    while (v543);
                                    v640 = v544;
                                    v645 = malloc_type_malloc(8 * v544, 0x2004093837F09uLL);
                                    if (v645)
                                    {
                                      v547 = v309[12];
                                      if (v547)
                                      {
                                        v548 = 0;
                                        v549 = *(v309 + 5);
                                        do
                                        {
                                          if (*v549 != -13)
                                          {
                                            v645[v548++] = v549;
                                          }

                                          v549 += 12;
                                          --v547;
                                        }

                                        while (v547);
                                      }

                                      v766 = 0uLL;
                                      v765 = 0uLL;
                                      v764 = 0uLL;
                                      v763 = 0uLL;
                                      v762 = 0uLL;
                                      v761 = 0uLL;
                                      v760 = 0uLL;
                                      v759 = 0uLL;
                                      v758 = 0uLL;
                                      v757 = 0uLL;
                                      v756 = 0uLL;
                                      v755 = 0uLL;
                                      v754 = 0uLL;
                                      v753 = 0uLL;
                                      v752 = 0uLL;
                                      v751 = 0uLL;
                                      v750 = 0uLL;
                                      v749 = 0uLL;
                                      v748 = 0uLL;
                                      v747 = 0uLL;
                                      v746 = 0uLL;
                                      v745 = 0uLL;
                                      v744 = 0uLL;
                                      v743 = 0uLL;
                                      v742 = 0uLL;
                                      v741 = 0uLL;
                                      v740 = 0uLL;
                                      v739 = 0uLL;
                                      v738 = 0uLL;
                                      v652 = &v645[v640];
                                      memset(&__src, 0, sizeof(__src));
                                      if (v640 >= 0xB)
                                      {
                                        v581 = v652 - 1;
                                        v649 = &__src;
                                        tx = *&v645;
LABEL_679:
                                        while (2)
                                        {
                                          v656 = (*&tx + 16);
                                          v583 = v581;
                                          widthb = tx;
                                          while (1)
                                          {
                                            while (1)
                                            {
                                              v584 = (4 * (((v583 - *&tx) >> 3) + ((v583 - *&tx) >> 63))) & 0xFFFFFFFFFFFFFFF8;
                                              v585 = *(*&tx + 8);
                                              *(*&tx + 8) = *(*&tx + v584);
                                              *(*&tx + v584) = v585;
                                              v586 = *(v309 + 1);
                                              v587 = **&tx;
                                              v588 = *(*&tx + 8);
                                              v589 = TriangleGreater(v586, **&tx, v588);
                                              v590 = *v583;
                                              if (v589)
                                              {
                                                if (TriangleGreater(v586, *v583, v588))
                                                {
                                                  if (TriangleGreater(v586, v587, v590))
                                                  {
                                                    *v583 = v587;
                                                    **&tx = *(*&tx + 8);
                                                    *(*&tx + 8) = v590;
                                                  }

                                                  else
                                                  {
                                                    **&tx = vextq_s8(**&tx, **&tx, 8uLL);
                                                  }
                                                }

                                                else
                                                {
                                                  *v583 = v587;
                                                  **&tx = v590;
                                                }
                                              }

                                              else if (TriangleGreater(v586, v588, *v583))
                                              {
                                                if (TriangleGreater(v586, v587, v590))
                                                {
                                                  **&tx = v590;
                                                  *v583 = v587;
                                                  *v583 = *(*&tx + 8);
                                                  *(*&tx + 8) = v587;
                                                }

                                                else
                                                {
                                                  *(*&tx + 8) = v590;
                                                  *v583 = v588;
                                                }
                                              }

                                              v591 = v656;
                                              v659 = v583;
                                              while (1)
                                              {
                                                v592 = *(rectb + 1);
                                                v593 = *(*&widthb + 8);
                                                do
                                                {
                                                  v594 = v591;
                                                  v596 = *v591++;
                                                  v595 = v596;
                                                }

                                                while (TriangleGreater(v592, v593, v596));
                                                do
                                                {
                                                  v597 = v583;
                                                  v599 = *--v583;
                                                  v598 = v599;
                                                }

                                                while (TriangleGreater(v592, v599, v593));
                                                if (v583 < v591)
                                                {
                                                  break;
                                                }

                                                *v594 = v598;
                                                *v583 = v595;
                                              }

                                              tx = widthb;
                                              *(*&widthb + 8) = v598;
                                              *v583 = v593;
                                              v600 = (v583 - *&widthb) >> 3;
                                              v581 = v659;
                                              v601 = (v659 - v594 + 8) >> 3;
                                              v583 = v597 - 2;
                                              if (v600 <= v601)
                                              {
                                                break;
                                              }

                                              v8 = v653;
                                              v309 = rectb;
                                              if (v600 <= 10)
                                              {
                                                goto LABEL_703;
                                              }

                                              if (v601 >= 11)
                                              {
                                                v649->a = widthb;
                                                *&v649->b = v583;
                                                tx = *&v594;
                                                v649 = (v649 + 16);
                                                goto LABEL_679;
                                              }
                                            }

                                            v8 = v653;
                                            v309 = rectb;
                                            if (v601 <= 10)
                                            {
                                              break;
                                            }

                                            if (v600 < 11)
                                            {
                                              tx = *&v594;
                                              goto LABEL_679;
                                            }

                                            *&v649->a = v594;
                                            *&v649->b = v659;
                                            v649 = (v649 + 16);
                                          }

LABEL_703:
                                          v602 = v649;
                                          if (v649 != &__src)
                                          {
                                            tx = v649[-1].tx;
                                            v649 = (v649 - 16);
                                            v581 = *&v602[-1].ty;
                                            continue;
                                          }

                                          break;
                                        }
                                      }

                                      v550 = (v652 - 1);
                                      v2 = v641;
                                      if (v652 - 1 > v645)
                                      {
                                        v551 = -8;
                                        do
                                        {
                                          v552 = v551;
                                          v553 = v550;
                                          v551 -= 8;
                                          v555 = *(v550 - 8);
                                          v550 -= 8;
                                          v554 = v555;
                                          v556 = *(rectb + 1);
                                          while (TriangleGreater(v556, v554, *(v652 + v552)))
                                          {
                                            v229 = v552 <= -16;
                                            v552 += 8;
                                            if (!v229)
                                            {
                                              v557 = &v645[v640];
                                              goto LABEL_655;
                                            }
                                          }

                                          v557 = v652 + v552;
LABEL_655:
                                          if (v550 != v557 - 8)
                                          {
                                            if (v553 < v557)
                                            {
                                              v558 = 0;
                                              do
                                              {
                                                v559 = v553 + v558;
                                                *(v559 - 8) = *(v553 + v558);
                                                v558 += 8;
                                              }

                                              while (v559 + 8 < v557);
                                            }

                                            *(v557 - 8) = v554;
                                          }
                                        }

                                        while (v550 > v645);
                                      }

                                      v560 = malloc_type_malloc(0x28uLL, 0x102004050851865uLL);
                                      if (v560)
                                      {
                                        v561 = v560;
                                        *v560 = *rectb;
                                        v560[4] = rectb[4];
                                        v560[8] = v640;
                                        v562 = malloc_type_malloc(16 * v640, 0x1000040451B5BE8uLL);
                                        if (v562)
                                        {
                                          v563 = v562;
                                          *(v561 + 3) = v562;
                                          if (v640)
                                          {
                                            v564 = 0;
                                            v565 = v562;
                                            do
                                            {
                                              v566 = 0;
                                              v567 = v645[v564];
                                              v565[3] = 0;
                                              do
                                              {
                                                v568 = &v567[v566];
                                                v565[v566] = *v568;
                                                if (v568[6] == -1)
                                                {
                                                  v565[3] |= 1 << v566;
                                                }

                                                ++v566;
                                              }

                                              while (v566 != 3);
                                              ++v564;
                                              v565 += 4;
                                            }

                                            while (v564 != v640);
                                          }

                                          v569 = malloc_type_malloc(72 * rectb[4], 0x1000040FF89C88EuLL);
                                          if (v569)
                                          {
                                            *(v561 + 1) = v569;
                                            v309 = rectb;
                                            if (rectb[4])
                                            {
                                              v570 = 0;
                                              v571 = *(rectb + 1);
                                              do
                                              {
                                                *v569 = *v571;
                                                v572 = *(v571 + 16);
                                                v573 = *(v571 + 32);
                                                v574 = *(v571 + 48);
                                                v569[8] = *(v571 + 64);
                                                *(v569 + 2) = v573;
                                                *(v569 + 3) = v574;
                                                *(v569 + 1) = v572;
                                                ++v570;
                                                v569 += 9;
                                                v571 += 72;
                                              }

                                              while (v570 < rectb[4]);
                                            }

                                            free(v645);
                                            if (RenderTriangleMesh(*(v561 + 1), v561[4], *(v561 + 3), v561[8], v616, &v696, &v697.origin.x))
                                            {
                                              CGContextSaveGState(v641);
                                              CGContextResetCTM(v641);
                                              v575 = v697.size.width;
                                              v576 = v697.size.height;
                                              v577 = v697.origin.x;
                                              v578 = v697.origin.y;
                                              if (v697.size.width < 0.0 || v697.size.height < 0.0)
                                              {
                                                v774 = CGRectStandardize(v697);
                                                v579 = v774.size.width;
                                                v774.origin.x = v577;
                                                v774.origin.y = v578;
                                                v774.size.width = v575;
                                                v774.size.height = v576;
                                                *(&v580 - 3) = CGRectStandardize(v774);
                                              }

                                              else
                                              {
                                                v579 = v697.size.width;
                                                v580 = v697.size.height;
                                              }

                                              widthd = v579;
                                              v604 = v580;
                                              v605 = (v612 * v579) >> 3;
                                              v606 = v696;
                                              v607 = v605 * v580;
                                              check_clients_buffer("CGDataProviderCreateWithData", v696, v607);
                                              v608 = CGDataProviderCreateWithDataInternal(0, v606, v607, patch_data_release_20716, 0);
                                              v609 = CGImageCreate(widthd, v604, 8uLL, v612, v605, *(v636 + 24), 3u, v608, 0, 0, kCGRenderingIntentDefault);
                                              CGDataProviderRelease(v608);
                                              CGImageSetCachingFlags(v609, 1);
                                              v775.origin.x = v577;
                                              v775.origin.y = v578;
                                              v775.size.width = v575;
                                              v775.size.height = v576;
                                              CGContextDrawImage(v641, v775, v609);
                                              CGContextRestoreGState(v641);
                                              if (v609)
                                              {
                                                CFRelease(v609);
                                              }

                                              v610 = *(v561 + 1);
                                              v309 = rectb;
                                              if (v610)
                                              {
                                                free(v610);
                                              }

                                              v611 = *(v561 + 3);
                                              if (v611)
                                              {
                                                free(v611);
                                              }

                                              free(v561);
                                            }
                                          }

                                          else
                                          {
                                            free(v645);
                                            free(v561);
                                            free(v563);
                                            v309 = rectb;
                                          }

                                          goto LABEL_709;
                                        }

                                        free(v645);
                                        v603 = v561;
                                      }

                                      else
                                      {
                                        v603 = v645;
                                      }

                                      free(v603);
                                      v309 = rectb;
                                    }
                                  }

LABEL_709:
                                  CoonsMeshFree(v309);
                                  v5 = v615;
                                  goto LABEL_710;
                                }
                              }
                            }

                            CoonsMeshFree(v248);
                          }

                          free(v630);
                        }

                        free(v632);
                      }

                      v309 = 0;
                      goto LABEL_464;
                    }
                  }
                }
              }
            }

LABEL_710:
            v9 = 1.0;
            v10 = 0.25;
            goto LABEL_711;
          }

          v183 = malloc_type_malloc(v634 + 8, 0x100004000313F17uLL);
          v184 = v183;
          if (v5)
          {
            v185 = 0;
            v186 = v8;
            do
            {
              v183[v185] = 0.0;
              v187 = 0.0;
              v188 = v186;
              v189 = 4;
              do
              {
                v187 = v187 + *v188;
                v183[v185] = v187;
                v188 = (v188 + v634);
                --v189;
              }

              while (v189);
              v183[v185++] = v187 * v10;
              ++v186;
            }

            while (v185 != v5);
          }

          v183[v5] = 1.0;
          CGContextSetFillColor(v2, v183);
          CGContextMoveToPoint(v2, x, y);
          CGContextAddCurveToPoint(v2, cp1x, cp1y, cp2x, cp2y, v718, v719);
          CGContextAddCurveToPoint(v2, v720, v721, v722, v723, v724, v725);
          CGContextAddCurveToPoint(v2, v726, v727, v728, v729, v730, v731);
          CGContextAddCurveToPoint(v2, v732, v733, v734, v735, x, y);
          CGContextDrawPath(v2, kCGPathFill);
          for (k = 0; k != 4; ++k)
          {
            if (v5)
            {
              for (m = 0; m != v5; ++m)
              {
                v192 = 0;
                v184[m] = 0.0;
                v193 = 0.0;
                do
                {
                  v193 = v193 + v8[m + ((k + v192) & 3) * v5];
                  v184[m] = v193;
                  ++v192;
                }

                while (v192 != 2);
                v184[m] = v193 * 0.5;
              }
            }

            v184[v5] = 1.0;
            CGContextSetStrokeColor(v2, v184);
            CGContextSaveGState(v2);
            CGContextSetLineWidth(v2, 2.0);
            v194 = &x + 6 * k;
            v195 = *v194;
            v196 = v194[1];
            v197 = 3 * k + 3;
            if (3 * k == 9)
            {
              v197 = 0;
            }

            v198 = &x + 2 * v197;
            v200 = *v198;
            v199 = v198[1];
            v201 = vabdd_f64(v195, *v198);
            v202 = vabdd_f64(v196, v199);
            CGContextMoveToPoint(v2, v195, v196);
            if (v201 < v9 && v202 < v9)
            {
              CGContextAddLineToPoint(v2, v200, v199);
            }

            else
            {
              CGContextAddCurveToPoint(v2, v194[2], v194[3], v194[4], v194[5], v200, v199);
            }

            CGContextSetCTM(v2, &CGAffineTransformIdentity);
            CGContextDrawPath(v2, kCGPathStroke);
            CGContextRestoreGState(v2);
          }

          free(v184);
LABEL_711:
          BytePtr = v646;
          v17 = v635;
        }

        while (v15 || v646 != v635);
LABEL_724:
        v11 = 0;
        v7 = v636;
        if ((v637 & 1) == 0)
        {
          free(v8);
          return;
        }
      }
    }
  }
}