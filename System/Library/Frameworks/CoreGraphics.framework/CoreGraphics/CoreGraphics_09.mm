uint64_t ripc_BeginLayer(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = a1;
  if (a1)
  {
    v17 = *(a1 + 288);
  }

  else
  {
    v17 = 0;
  }

  space = 0;
  if (!a5 || *(v17 + 96) || *(v17 + 88))
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    if ((ripc_GetRenderingState(v17, a2, a3, &v56) & 1) == 0)
    {
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      ripc_InitializeColorTransform(v17);
    }

    v18 = malloc_type_malloc(0x30uLL, 0x10600404FCFB723uLL);
    if (v18)
    {
      v21 = v18;
      *v18 = *(v17 + 88);
      *(v17 + 88) = v18;
      v18[4] = *(v17 + 48);
      v22 = *(v17 + 16);
      if (v22)
      {
        CFRetain(*(v17 + 16));
      }

      v21[1] = v22;
      *(v21 + 1) = *(v17 + 24);
      v21[5] = *(v17 + 72);
      *(v17 + 72) = 0;
      if (a4)
      {
        memset(&v54, 0, 32);
        if (kCGColorSpace_block_invoke_once != -1)
        {
          dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
        }

        CGCFDictionaryGetCFTypeRef(a4, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &space);
        if (CGCFDictionaryGetRect(a4, @"kCGContextBoundingBox", &v54))
        {
          v61.origin.x = v54.a;
          v61.origin.y = v54.b;
          v61.size.width = v54.c;
          v61.size.height = v54.d;
          v59.origin.x = a6;
          v59.origin.y = a7;
          v59.size.width = a8;
          v59.size.height = a9;
          *(&v19 - 24) = CGRectIntersection(v59, v61);
          a6 = v23;
          a7 = v24;
          a8 = v25;
          a9 = v19.f64[0];
        }
      }

      if (a6 != -8.98846567e307 || a7 != -8.98846567e307 || a8 != 1.79769313e308 || a9 != 1.79769313e308)
      {
        v19.f64[0] = *(v17 + 40);
        v20.f64[0] = 1.0;
        v26 = vdupq_lane_s64(vceqq_f64(v19, v20).i64[0], 0);
        v27 = vbslq_s8(v26, *(a3 + 56), vmulq_n_f64(*(a3 + 56), v19.f64[0]));
        v28 = vbslq_s8(v26, *(a3 + 40), vmulq_n_f64(*(a3 + 40), v19.f64[0]));
        *&v54.a = vbslq_s8(v26, *(a3 + 24), vmulq_n_f64(*(a3 + 24), v19.f64[0]));
        *&v54.c = v28;
        *&v54.tx = v27;
        v29 = a6;
        *v28.i64 = a7;
        *v27.i64 = a8;
        v30 = a9;
        v60 = CGRectApplyAffineTransform(*(&v27 - 1), &v54);
        v31 = v60.size.width + v60.origin.x;
        if (v60.origin.x <= 1073741820.0)
        {
          if (v60.origin.x >= -1073741820.0)
          {
            v32 = vcvtmd_s64_f64(v60.origin.x + 0.0);
          }

          else
          {
            v32 = -1073741823;
          }
        }

        else
        {
          v32 = 0x3FFFFFFF;
        }

        LODWORD(v54.a) = v32;
        if (v31 <= 1073741820.0)
        {
          if (v31 >= -1073741820.0)
          {
            v33 = vcvtpd_s64_f64(v31);
          }

          else
          {
            v33 = -1073741823;
          }
        }

        else
        {
          v33 = 0x3FFFFFFF;
        }

        v34 = v33 - v32;
        LODWORD(v54.b) = v33 - v32;
        v35 = v60.size.height + v60.origin.y;
        if (v60.origin.y <= 1073741820.0)
        {
          if (v60.origin.y >= -1073741820.0)
          {
            v36 = vcvtmd_s64_f64(v60.origin.y + 0.0);
          }

          else
          {
            v36 = -1073741823;
          }
        }

        else
        {
          v36 = 0x3FFFFFFF;
        }

        HIDWORD(v54.a) = v36;
        if (v35 <= 1073741820.0)
        {
          if (v35 >= -1073741820.0)
          {
            v37 = vcvtpd_s64_f64(v35);
          }

          else
          {
            v37 = -1073741823;
          }
        }

        else
        {
          v37 = 0x3FFFFFFF;
        }

        v38 = v37 - v36;
        HIDWORD(v54.b) = v37 - v36;
        if (*(&v58 + 1))
        {
          v53 = 0uLL;
          if ((*(**(&v58 + 1) + 40))(*(&v58 + 1), &v53))
          {
            v39.i64[0] = __PAIR64__(v36, v32);
            v39.i64[1] = __PAIR64__(v38, v34);
            *&v54.a = vaddq_s32(v39, v53);
          }
        }

        if (!CGSBoundsIntersection(&v57 + 2, &v54, &v57 + 2))
        {
          *&v58 = 0;
        }
      }

      v40 = *(v17 + 200);
      v41 = *(v17 + 120);
      if (v40 == v41)
      {
        v44 = *(v17 + 16);
        if (v44 != v40)
        {
          if (v44)
          {
            CFRelease(v44);
            v41 = *(v17 + 120);
          }

          if (v41)
          {
            CFRetain(v41);
          }

          *(v17 + 16) = v41;
        }

        v45 = *(v17 + 48);
        if (v45)
        {
          v43 = *(v45 + 32);
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v42 = *(v17 + 48);
        if (v42)
        {
          v43 = *(v42 + 32);
        }

        else
        {
          v43 = 0;
        }

        if (space && CGColorTransformConvertNeedsCMS(*(v17 + 120), space, 0))
        {
          Model = CGColorSpaceGetModel(space);
          v47 = *(v17 + 16);
          if (v47)
          {
            CFRelease(v47);
          }

          *(v17 + 16) = 0;
          if (Model <= kCGColorSpaceModelCMYK)
          {
            v48 = RIPLayerDepthForModel(Model, *v43);
            if (v48)
            {
              v49 = v48;
              v50 = color_transform_create(space, 0);
              if (v50)
              {
                *(v17 + 16) = v50;
                v43 = v49;
              }
            }
          }
        }
      }

      if (a2)
      {
        v51 = *(a2 + 4);
      }

      else
      {
        v51 = 3;
      }

      *(v17 + 48) = RIPLayerCreate(RIPLayer_ripl_class, &v57 + 1, 49, v43, v51);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(v17 + 96) = a5;
  }

  return v16;
}

void CGContextBeginTransparencyLayerWithRect(CGContextRef c, CGRect rect, CFDictionaryRef auxInfo)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      v9 = *(c + 5);
      if (!v9 || (v10 = *(v9 + 192)) == 0 || (v11 = v10(rect.origin, *&rect.origin.y, rect.size, *&rect.size.height)) == 0)
      {
        DeviceClipBoundingBox = CGContextGetDeviceClipBoundingBox(c, rect.origin);
        v16 = v15;
        v17 = v12;
        v18 = v13;
        v19 = *(c + 12);
        v20 = *(*(v19 + 120) + 16);
        if (v20)
        {
          v21 = *(c + 14);
          v22 = *(v21 + 40);
          *&color.a = *(v21 + 24);
          *&color.c = v22;
          *&color.tx = *(v21 + 56);
          DeviceClipBoundingBox = CGStyleGetDrawBoundingBoxWithMatrix(v20, &color, DeviceClipBoundingBox, v16, v12, v13);
          v16 = v23;
          v17 = v24;
          v18 = v25;
        }

        if (x != -8.98846567e307 || y != -8.98846567e307 || width != 1.79769313e308 || height != 1.79769313e308)
        {
          v26 = *(v19 + 40);
          *&color.a = *(v19 + 24);
          *&color.c = v26;
          *&color.tx = *(v19 + 56);
          v27 = x;
          *&v26 = y;
          v28 = width;
          v29 = height;
          v60 = CGRectApplyAffineTransform(*(&v26 - 8), &color);
          DrawBoundingBoxWithMatrix = v60.origin.x;
          v31 = v60.origin.y;
          v32 = v60.size.width;
          v33 = v60.size.height;
          if (v20)
          {
            v34 = *(c + 14);
            v35 = *(v34 + 40);
            *&color.a = *(v34 + 24);
            *&color.c = v35;
            *&color.tx = *(v34 + 56);
            DrawBoundingBoxWithMatrix = CGStyleGetDrawBoundingBoxWithMatrix(v20, &color, v60.origin.x, v31, v60.size.width, v60.size.height);
            v31 = v36;
            v32 = v37;
            v33 = v38;
          }

          v61.origin.x = DeviceClipBoundingBox;
          v61.origin.y = v16;
          v61.size.width = v17;
          v61.size.height = v18;
          v62 = CGRectIntersection(v61, *&DrawBoundingBoxWithMatrix);
          DeviceClipBoundingBox = v62.origin.x;
          v16 = v62.origin.y;
          v17 = v62.size.width;
          v18 = v62.size.height;
        }

        v63.origin.x = DeviceClipBoundingBox;
        v63.origin.y = v16;
        v63.size.width = v17;
        v63.size.height = v18;
        v64 = CGRectIntegral(v63);
        v39 = CGContextDelegateCreateForContext(auxInfo, c, v64.origin, *&v64.origin.y, v64.size, *&v64.size.height);
        if (v39)
        {
          v40 = v39;
          v41 = *(v39 + 192);
          if (v41)
          {
            v11 = v41(v39, *(c + 14), *(c + 12), auxInfo, *(c + 5), x, y, width, height);
          }

          else
          {
            v11 = 0;
          }

          if (v11 == v40)
          {
            v11 = v40;
          }

          else
          {
            CFRelease(v40);
          }
        }

        else
        {
          v11 = 0;
        }
      }

      v43 = *(c + 13);
      v44 = *(v43 + 8);
      if (v44 == v43)
      {
        v45 = CGGStateCreate();
        v46 = *(v43 + 8);
        *(v43 + 8) = v45;
        *v45 = v43;
        *v46 = v45;
        *(v45 + 1) = v46;
        v44 = *(v43 + 8);
      }

      v47 = malloc_type_calloc(1uLL, 0x98uLL, 0x10200404FA37D3AuLL);
      *v47 = v47;
      *(v47 + 1) = v47;
      *(v47 + 4) = 1;
      v48 = *(v44 + 24);
      v49 = *(v44 + 40);
      *(v47 + 56) = *(v44 + 56);
      *(v47 + 40) = v49;
      *(v47 + 24) = v48;
      v50 = *(v44 + 72);
      if (v50)
      {
        CFRetain(*(v44 + 72));
      }

      *(v47 + 9) = v50;
      CGGStateClipReset(v47);
      v51 = *(v44 + 120);
      v52 = malloc_type_calloc(1uLL, 0x50uLL, 0x1060040871B95B4uLL);
      *v52 = 1;
      v53 = *(v52 + 1) & 0xFFFF00FF | 0x200;
      *(v52 + 1) = v53;
      *(v52 + 1) = 0x3FF0000000000000;
      *(v52 + 2) = 0;
      *(v52 + 24) = *(v51 + 24);
      v54 = *(v51 + 4) & 0xF0000 | v53 & 0xFFF002FF;
      *(v52 + 1) = v54;
      v55 = v54 & 0xFF0FFFFF | *(v51 + 4) & 0xF00000;
      *(v52 + 1) = v55;
      v56 = v55 & 0xFFFFFE00 | *(v51 + 4);
      *(v52 + 1) = v56;
      *(v52 + 1) = v56 & 0xFCFFFFFF | *(v51 + 4) & 0x1000000;
      *(v52 + 5) = 0;
      *(v52 + 14) = *(v51 + 56);
      *(v52 + 8) = CGCFDictionaryCreateCopy(*(v51 + 64));
      *(v47 + 15) = v52;
      v47[20] &= ~2u;
      CGGStateStrokeCopy(v47, v44);
      CGGStateTextCopy(v47, v44);
      CGGStateDeviceCopy(v47, v44);
      v57 = *(v43 + 8);
      *(v43 + 8) = v47;
      *v47 = v43;
      *v57 = v47;
      *(v47 + 1) = v57;
      *(c + 12) = *(v43 + 8);
      if (v11)
      {
        *(c + 5) = v11;
      }

      else
      {
        CGPostError("CGContextBeginTransparencyLayer: cannot create transparency layer.");
        CGGStateClipToRect(*(c + 12), 0.0, 0.0, 0.0, 0.0);
      }

      color.a = 0.0;
      if (kCGColorContentHeadroom_block_invoke_once != -1)
      {
        dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
      }

      if (CGCFDictionaryGetCFTypeRef(auxInfo, @"kCGContextBackgroundColor", CGColorGetTypeID_color_type_id, &color))
      {
        CGContextSaveGState(c);
        CGContextSetBlendMode(c, kCGBlendModeCopy);
        CGContextSetFillColorWithColor(c, *&color.a);
        v65.origin.x = -8.98846567e307;
        v65.size.width = 1.79769313e308;
        v65.origin.y = -8.98846567e307;
        v65.size.height = 1.79769313e308;
        CGContextFillRect(c, v65);
        CGContextRestoreGState(c);
      }

      return;
    }

    v42 = c;
  }

  else
  {
    v42 = 0;
  }

  handle_invalid_context("CGContextBeginTransparencyLayerWithRect", v42);
}

uint64_t CGCFDictionaryGetCFTypeRef(CFDictionaryRef theDict, const void *a2, uint64_t a3, uint64_t *a4)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v8 = result;
        if (a3 && CFGetTypeID(result) != a3)
        {
          return 0;
        }

        else
        {
          if (a4)
          {
            *a4 = v8;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

void CGContextEndTransparencyLayer(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      *(c + 12) = CGGStackRestore(*(c + 13));
      v2 = *(c + 5);
      if (v2 && (v3 = *(v2 + 200)) != 0 && (v4 = v3()) != 0)
      {
        v5 = v4;
        v6 = *(c + 5);
        if (v6 != v5)
        {
          if (v6)
          {
            CFRelease(v6);
          }

          *(c + 5) = v5;
        }
      }

      else
      {

        CGPostError("CGContextEndTransparencyLayer: unbalanced transparency layers.");
      }

      return;
    }

    v7 = c;
  }

  else
  {
    v7 = 0;
  }

  handle_invalid_context("CGContextEndTransparencyLayer", v7);
}

uint64_t ripc_EndLayer(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  v67 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 288);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 88);
  if (v7)
  {
    Cache = CGColorTransformGetCache(*(v6 + 16));
    if (Cache)
    {
      v9 = Cache[2];
      if (v9)
      {
        CFRetain(Cache[2]);
      }
    }

    else
    {
      v9 = 0;
    }

    v63 = xmmword_184562D30;
    v64 = xmmword_184562D40;
    v65 = xmmword_184562D50;
    v66 = 0;
    v59 = xmmword_184562CF0;
    v60 = unk_184562D00;
    v61 = xmmword_184562D10;
    v62 = unk_184562D20;
    v55 = xmmword_184562CB0;
    v56 = unk_184562CC0;
    v57 = xmmword_184562CD0;
    v58 = unk_184562CE0;
    v51 = RIPImageDataInitializer;
    v52 = unk_184562C80;
    v53 = xmmword_184562C90;
    v54 = unk_184562CA0;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    *(v6 + 88) = *v7;
    v23 = *(v6 + 48);
    *(v6 + 48) = v7[4];
    v24 = *(v6 + 16);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v6 + 16) = v7[1];
    *(v6 + 24) = *(v7 + 1);
    ripc_ReleaseClipState((v6 + 72));
    *(v6 + 72) = v7[5];
    free(v7);
    memset(v44, 0, sizeof(v44));
    if (!ripc_GetRenderingState(v6, a2, a3, v44) || !v23)
    {
      if (!v23)
      {
        return v5;
      }

      goto LABEL_41;
    }

    if (!(*(*v23 + 32))(v23, 16, 0))
    {
LABEL_41:
      (*(*v23 + 24))(v23);
      return v5;
    }

    if (*(v23 + 20) >= 1 && *(v23 + 24) >= 1 && *(v23 + 56))
    {
      if ((CGColorTransformConvertNeedsCMS(*(v6 + 120), v9, 0) & 1) == 0)
      {
        v30 = 0;
        v31 = *(v23 + 32);
        *&v53 = v31;
        DWORD2(v54) = *(v23 + 20);
        DWORD2(v53) = DWORD2(v54);
        HIDWORD(v54) = *(v23 + 24);
        *&v54 = 0;
        HIDWORD(v53) = HIDWORD(v54);
        LODWORD(v55) = *(v23 + 48);
        *(&v55 + 1) = *(v23 + 56);
        *(&v56 + 1) = *(v23 + 72);
        LODWORD(v56) = *(v23 + 64);
        v57 = 0uLL;
        goto LABEL_36;
      }

      v41 = 0;
      v25 = *(v23 + 24);
      v42 = *(v23 + 20);
      v43 = v25;
      v26 = *(v23 + 48);
      v27 = *(v23 + 72);
      v50[0] = *(v23 + 56);
      v50[1] = v27;
      v28 = *(v23 + 64);
      v49[0] = v26;
      v49[1] = v28;
      v29 = CGSImageDataLockPixels(v42, v25, v50, v49, *(v23 + 32), v9, v42, v25, &v41, 0, *(v6 + 120), *(v6 + 216), *(*(v6 + 48) + 32));
      if (v29)
      {
        v30 = v29;
        RIPImageDataInitialize(&v51, v6, v29);
        v31 = v53;
LABEL_36:
        CGColorSpaceRelease(v9);
        if (v31 == RIPGetDepthForLayerFormat(0))
        {
          *&v53 = 0;
        }

        v45 = *(v23 + 12);
        v48 = 0;
        *&v47 = 0;
        v46 = &v51;
        DWORD2(v47) = 0;
        ripc_RenderImage(v6, a2, a3, v44, &v45, &v45);
        if (v30)
        {
          CGSImageDataUnlock(v30);
        }
      }
    }

    (*(*v23 + 48))(v23, 0);
    goto LABEL_41;
  }

  v5 = *(v6 + 96);
  if (v5)
  {
    *(v6 + 96) = 0;
    v40 = 0uLL;
    v10 = *(v6 + 48);
    if (v10)
    {
      if ((*(*v10 + 72))(v10, &v40))
      {
        (*(**(v6 + 48) + 88))(*(v6 + 48), v6 + 40);
        v11.i64[0] = SDWORD2(v40);
        v11.i64[1] = SHIDWORD(v40);
        v12 = vcvtq_f64_s64(v11);
        v11.i64[0] = v40;
        v11.i64[1] = SDWORD1(v40);
        v13 = vcvtq_f64_s64(v11);
        v14 = *(v6 + 40);
        if (v14 != 1.0)
        {
          v15 = 1.0 / v14;
          v12 = vmulq_n_f64(v12, v15);
          v13 = vmulq_n_f64(v13, v15);
        }

        v16 = v13.f64[1];
        if (v13.f64[0] != INFINITY && v13.f64[1] != INFINITY && v12.f64[0] != 0.0)
        {
          v18 = v12.f64[1];
          if (v12.f64[1] != 0.0)
          {
            v38 = v13;
            v39 = v12;
            v19 = *(v5 + 80);
            v20 = *(v6 + 48);
            v21 = CGColorTransformGetCache(*(v6 + 16));
            v22 = v21 ? v21[2] : 0;
            Image = RIPLayerCreateImage(v20, v22, v19 != ripc_DrawImage);
            if (Image)
            {
              v34 = Image;
              v35 = *(a3 + 40);
              v51 = *(a3 + 24);
              v52 = v35;
              v53 = *(a3 + 56);
              *(a3 + 24) = CGAffineTransformIdentity;
              v36 = *(v5 + 80);
              if (v36)
              {
                v36(v5, a2, a3, Image, v38, v16, v39, v18);
              }

              v37 = v52;
              *(a3 + 24) = v51;
              *(a3 + 40) = v37;
              *(a3 + 56) = v53;
              CFRelease(v34);
            }
          }
        }
      }
    }
  }

  return v5;
}

void CGGStateAddClip(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 8))
    {
      x = *(a2 + 24);
      y = *(a2 + 32);
      width = *(a2 + 40);
      height = *(a2 + 48);
      if ((*(a2 + 10) & 1) == 0)
      {
        v10 = CGRectIntegral(*(a2 + 24));
        x = v10.origin.x;
        y = v10.origin.y;
        width = v10.size.width;
        height = v10.size.height;
      }

      *(a1 + 80) = CGRectIntersection(*(a1 + 80), *&x);
    }

    maybeCopyClipState(a1);
    v8 = *(a1 + 112);

    CGClipStackAddClip(v8, a2);
  }
}

CGLayerRef CGLayerCreateWithContext(CGContextRef context, CGSize size, CFDictionaryRef auxiliaryInfo)
{
  v3 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      if (_block_invoke_once_2327 != -1)
      {
        dispatch_once(&_block_invoke_once_2327, &__block_literal_global_5_2328);
      }

      Instance = CGTypeCreateInstance(CGLayerGetTypeID_layer_type_id, 24);
      v3 = Instance;
      if (Instance)
      {
        v11.n128_f64[0] = ceil(width);
        v12.n128_f64[0] = ceil(height);
        *(Instance + 24) = v11.n128_u64[0];
        *(Instance + 32) = v12.n128_u64[0];
        v9.n128_u64[0] = 0;
        v10.n128_u64[0] = 0;
        v13 = CGContextDelegateCreateForContext(auxiliaryInfo, context, v9, v10, v11, v12);
        if (v13)
        {
          v14 = v13;
          if (context)
          {
            v15 = *(context + 14);
          }

          else
          {
            v15 = 0;
          }

          *(v3 + 2) = CGContextCreateWithDelegateAndInfo(v13, 14, v15, 0, 0, 0);
          CFRelease(v14);
          v16 = *(v3 + 2);
          if (v16)
          {
            if (context)
            {
              *(*(v16 + 112) + 24) = CGAffineTransformIdentity;
            }

            return v3;
          }

          CFRelease(v3);
        }

        return 0;
      }
    }
  }

  return v3;
}

uint64_t CGContextDelegateCreateForContext(CFDictionaryRef theDict, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = a6.n128_f64[0];
  v8 = a5.n128_f64[0];
  v9 = a4.n128_f64[0];
  v10 = a3.n128_f64[0];
  if (!a2)
  {
    goto LABEL_10;
  }

  if (*(a2 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextDelegateCreateForContext", a2);
    return 0;
  }

  v12 = *(a2 + 40);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12[26];
  if (v13)
  {
    v14 = v13(a3, a4, a5, a6);
    if (v14)
    {
      return v14;
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12[16])
  {
    goto LABEL_10;
  }

  if (!theDict)
  {
    goto LABEL_30;
  }

  space = CFDictionaryGetValue(theDict, @"kCGContextColorSpace");
  if (space)
  {
LABEL_28:
    CFRetain(space);
    goto LABEL_35;
  }

  v12 = *(a2 + 40);
  if (v12)
  {
LABEL_30:
    v23 = v12[4];
    if (v23)
    {
      v24 = v23();
      if (v24)
      {
        Cache = CGColorTransformGetCache(v24);
        if (Cache)
        {
          space = Cache[2];
          if (space)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  space = CGColorSpaceCreateDeviceRGB();
LABEL_35:
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kCGContextBackgroundColor");
  }

  else
  {
    Value = 0;
  }

  if (*(a2 + 24) == 4)
  {
    if (*(a2 + 16) == 1129601108)
    {
      v27 = *(*(a2 + 32) + 41) & 1;
LABEL_41:
      v28 = *(*(a2 + 32) + 80) < 9uLL;
      goto LABEL_47;
    }

    handle_invalid_context("CGBitmapContextGetBitmapInfo", a2);
    if (*(a2 + 16) == 1129601108 && *(a2 + 24) == 4)
    {
      v27 = 0;
      goto LABEL_41;
    }

    handle_invalid_context("CGBitmapContextGetBitsPerComponent", a2);
  }

  v27 = 0;
  v28 = 1;
LABEL_47:
  if (Value)
  {
    if ((Value & 0x8000000000000000) != 0)
    {
      Alpha = CGTaggedColorGetAlpha(Value);
    }

    else
    {
      Alpha = *(Value + 8 * *(Value + 56) + 64);
    }

    v30 = Alpha < 1.0;
  }

  else
  {
    v30 = 1;
  }

  Model = CGColorSpaceGetModel(space);
  switch(Model)
  {
    case kCGColorSpaceModelCMYK:
      v41 = 16;
      if (v28)
      {
        v41 = 8;
      }

      if (v27)
      {
        v34 = 32;
      }

      else
      {
        v34 = v41;
      }

      if ((v27 | v28))
      {
        v35 = 0x2000;
      }

      else
      {
        v35 = 4096;
      }

      v36 = 4;
LABEL_95:
      v42 = v36 * v34;
      v49.origin.x = v10;
      v49.origin.y = v9;
      v49.size.width = v8;
      v49.size.height = v7;
      v50 = CGRectIntegral(v49);
      v43 = *(a2 + 112);
      v44 = *(v43 + 8);
      v45 = *(v43 + 16);
      if (v30)
      {
        v46 = v34;
      }

      else
      {
        v46 = 0;
      }

      v47 = CGBitmapContextInfoCreate(0, v50.origin.x, v50.origin.y, v50.size.width, v50.size.height, v34, v42, 0, v44, v45, space, v35, v46, 0, 0);
      CGColorSpaceRelease(space);
      if (v47)
      {
        v15 = bitmap_context_delegate_create(v47, theDict);
        CGBitmapContextInfoRelease(v47);
        if (v15)
        {
          return v15;
        }
      }

      goto LABEL_10;
    case kCGColorSpaceModelRGB:
      if (v30)
      {
        v37 = 4097;
      }

      else
      {
        v37 = 4101;
      }

      v38 = 16;
      if (v30)
      {
        v39 = 8194;
      }

      else
      {
        v39 = 8198;
      }

      if (v28)
      {
        v38 = 8;
      }

      else
      {
        v39 = v37;
      }

      if (v30)
      {
        v40 = 8193;
      }

      else
      {
        v40 = 8197;
      }

      v36 = 4;
      if (v27)
      {
        v34 = 32;
      }

      else
      {
        v34 = v38;
      }

      if (!v27)
      {
        v36 = 4;
      }

      LOBYTE(v30) = 0;
      if (v27)
      {
        v35 = v40;
      }

      else
      {
        v35 = v39;
      }

      goto LABEL_95;
    case kCGColorSpaceModelMonochrome:
      v32 = 16;
      if (v28)
      {
        v32 = 8;
        v33 = 0;
      }

      else
      {
        v33 = 4096;
      }

      if (v27)
      {
        v34 = 32;
      }

      else
      {
        v34 = v32;
      }

      if (v27)
      {
        v35 = 0x2000;
      }

      else
      {
        v35 = v33;
      }

      v36 = 1;
      goto LABEL_95;
  }

  CGColorSpaceRelease(space);
LABEL_10:
  if (theDict)
  {
    MutableCopy = CGCFDictionaryCreateMutableCopy(theDict);
    if (!CFDictionaryGetValue(MutableCopy, @"kCGContextGroup") && !CFDictionaryGetValue(MutableCopy, @"kCGContextColorSpace") && MutableCopy && *MEMORY[0x1E695E4D0])
    {
      CFDictionarySetValue(MutableCopy, @"kCGContextGroup", *MEMORY[0x1E695E4D0]);
    }

    CFDictionaryRemoveValue(MutableCopy, @"kCGContextBoundingBox");
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = Mutable;
    v17 = *MEMORY[0x1E695E4D0];
    if (Mutable)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      CFDictionarySetValue(Mutable, @"kCGContextGroup", v17);
    }
  }

  *v48 = v10;
  *&v48[1] = v9;
  *&v48[2] = v8;
  *&v48[3] = v7;
  CGDisplayList = CG::DisplayList::createCGDisplayList(MutableCopy, v48, v17);
  if (CGDisplayList)
  {
    CG::DisplayList::createContextDelegate(CGDisplayList);
  }

  v15 = 0;
  CFRelease(MutableCopy);
  return v15;
}

uint64_t dlRecorder_DrawPathDirect(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, const CGPath *a5, uint64_t a6)
{
  if (a1 && (v7 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawPath(v7, a2, a3, a4, a5, 1, a6);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawPathDirect");
    return 1000;
  }
}

uint64_t CGSoftMaskCreate(uint64_t a1, __int128 *a2, const void *a3, void *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  if (!a5 || a4 && (a4[6] != 1 || a4[4] != 1))
  {
    return 0;
  }

  if (_block_invoke_once_17414 != -1)
  {
    dispatch_once(&_block_invoke_once_17414, &__block_literal_global_5_17415);
  }

  Instance = CGTypeCreateInstance(CGSoftMaskGetTypeID_soft_mask_type_id, 144);
  v19 = Instance;
  if (Instance)
  {
    *(Instance + 16) = atomic_fetch_add_explicit(&identifier_17416, 1u, memory_order_relaxed) + 1;
    v20 = *a2;
    v21 = a2[1];
    *(Instance + 56) = a2[2];
    *(Instance + 40) = v21;
    *(Instance + 24) = v20;
    *(Instance + 72) = a6;
    *(Instance + 80) = a7;
    *(Instance + 88) = a8;
    *(Instance + 96) = a9;
    if (a3)
    {
      CFRetain(a3);
    }

    *(v19 + 104) = a3;
    if (a4)
    {
      CFRetain(a4);
    }

    *(v19 + 112) = a4;
    *(v19 + 120) = a1;
    v22 = *(a5 + 16);
    *(v19 + 128) = *a5;
    *(v19 + 144) = v22;
    *(v19 + 152) = 0;
  }

  return v19;
}

void CGGStateSetSoftMask(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 120) + 40) != a2)
  {
    maybeCopyRenderingState(a1);
    v4 = *(*(a1 + 120) + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 120) + 40) = a2;
  }
}

void CGContextSetSoftMask(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetSoftMask(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetSoftMask", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetSoftMask", 0);
  }
}

void sub_183F08678(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGColorTransformConvertColorFloatComponents(void *a1, void *a2, unsigned int a3, uint64_t a4, float *a5, uint64_t a6)
{
  if (a2)
  {
    v10 = *(a2[3] + 48);
  }

  else
  {
    v10 = 0;
  }

  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v12 = Cache[2];
    if (v12)
    {
      v12 = *(*(v12 + 24) + 48);
    }
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v13 = 0;
    v14 = 0x100004000313F17;
    v30 = 4 * v10;
    v15 = 4 * v12;
    do
    {
      if (a2)
      {
        v16 = *(a2[3] + 48);
        v17 = malloc_type_malloc(8 * v16, v14);
        v18 = v17;
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            v17[i] = *(a4 + 4 * i);
          }
        }
      }

      else
      {
        v18 = malloc_type_malloc(0, v14);
      }

      v20 = CGColorTransformGetCache(a1);
      if (v20 && (v21 = v20[2]) != 0)
      {
        v22 = *(*(v21 + 24) + 48);
      }

      else
      {
        v22 = 0;
      }

      v23 = v14;
      v24 = malloc_type_malloc(8 * v22, v14);
      CGColorTransformConvertColorComponents(a1, a2, a3, v18, v24);
      v25 = v24;
      for (j = a5; v22; --v22)
      {
        v27 = *v25++;
        v28 = v27;
        *j++ = v28;
      }

      free(v24);
      free(v18);
      ++v13;
      a4 += v30;
      a5 = (a5 + v15);
      v14 = v23;
    }

    while (v13 != a6);
  }

  return 1;
}

CGFloat CGGStateResetClip(uint64_t a1)
{
  CGClipStackRelease(*(a1 + 112));
  v2 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  *v2 = 1;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  result = CGRectInfinite.origin.x;
  *(v2 + 48) = CGRectInfinite;
  *(v2 + 80) = CGRectInfinite;
  *(v2 + 16) = CGRectInfinite;
  *(v2 + 15) = 0;
  *(v2 + 16) = 0;
  *(v2 + 14) = 3;
  *(a1 + 112) = v2;
  *(a1 + 80) = CGRectInfinite;
  *(a1 + 20) &= ~1u;
  return result;
}

void CGSoftMaskDelegateDrawSoftMask(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (*(a4 + 136))
    {
      v5 = CGContextCreateWithDelegateAndInfo(a1, 12, a2, a3, 0, 0);
      if (v5)
      {
        v6 = v5;
        (*(a4 + 136))(*(a4 + 120), v5);

        CFRelease(v6);
      }
    }
  }
}

uint64_t dlRecorder_DrawLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  if (!a1 || (v8 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawLayer");
    return 1000;
  }

  v14 = CG::DisplayListRecorder::currentDisplayList(v8);
  if (!v14)
  {
    return 1000;
  }

  v15 = v14;
  v16 = v14[7];
  v18 = v14[5] == -8.98846567e307 && v14[6] == -8.98846567e307 && v16 == 1.79769313e308;
  if ((!v18 || v14[8] != 1.79769313e308) && *(v14 + 86) != *(v14 + 87) && v14[11] != INFINITY && v14[12] != INFINITY)
  {
    v20 = v14[8];
    v34 = v14[5];
    v35 = v14[6];
    Copy = CGGStateCreateCopy(a3);
    v22 = Copy;
    v23 = *(Copy + 24);
    v24 = *(Copy + 40);
    v25 = vmlaq_n_f64(vmlaq_n_f64(*(Copy + 56), v23, a5), v24, a6);
    v26 = vmulq_n_f64(v23, a7 / v16);
    v27 = vmulq_n_f64(v24, a8 / v20);
    *(Copy + 24) = v26;
    *(Copy + 40) = v27;
    *(Copy + 56) = vmlsq_lane_f64(vmlsq_lane_f64(v25, v26, v34, 0), v27, v35, 0);
    v28 = &CGRectNull;
    p_y = &CGRectNull.origin.y;
    p_size = (v15 + 104);
    p_height = (v15 + 112);
    if (*(v15 + 688) == *(v15 + 696))
    {
      p_size = &CGRectNull.size;
    }

    else
    {
      p_y = (v15 + 96);
    }

    if (*(v15 + 688) == *(v15 + 696))
    {
      p_height = &CGRectNull.size.height;
    }

    else
    {
      v28 = (v15 + 88);
    }

    CGGStateClipToRect(Copy, v28->origin.x, *p_y, p_size->width, *p_height);
    CGDisplayListDelegateDrawDisplayList(a4, a2, v22, v15, v32);
    CGGStateRelease(v22);
  }

  return 0;
}

void CGContextDrawLayerAtPoint(CGContextRef context, CGPoint point, CGLayerRef layer)
{
  if (context)
  {
    if (*(context + 4) == 1129601108)
    {
      if (layer)
      {
        v3 = *(layer + 2);
        if (v3)
        {
          v4 = *(v3 + 40);
          if (v4)
          {
            v5 = *(v4 + 216);
            if (v5)
            {
              v5(point, *&point.y, *(layer + 3), *(layer + 4));
            }
          }
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextDrawLayerAtPoint", context);
    }
  }

  else
  {
    handle_invalid_context("CGContextDrawLayerAtPoint", 0);
  }
}

uint64_t CGSCombineMask(char *a1, int a2, char *__b, int a4, int a5, int a6, unsigned int a7)
{
  v9 = a2;
  v10 = a1;
  v11 = HIBYTE(a7);
  if (a5 == 1)
  {
    v12 = BYTE1(a7) + v11;
    v13 = 255;
    if (v12 <= 0xFE)
    {
      v14 = 255 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 == 255;
  }

  else
  {
    if (a5 < 2)
    {
      return 0;
    }

    v13 = BYTE1(a7) ^ 0xFF;
    if (BYTE1(a7))
    {
      v16 = -2;
    }

    else
    {
      v16 = -1;
    }

    if (v11)
    {
      v14 = v11 ^ 0xFF;
    }

    else
    {
      v14 = 255;
    }

    if (v11)
    {
      v17 = a5;
    }

    else
    {
      v17 = a5 + 1;
    }

    v15 = v17 + v16;
  }

  if (a6 == 1)
  {
    v18 = BYTE2(a7) + a7;
    v19 = 255;
    if (v18 <= 0xFE)
    {
      v20 = 255 - v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 == 255;
    if (a1)
    {
      goto LABEL_22;
    }

LABEL_50:
    if (v20 <= 0xFE)
    {
      v42 = __b;
      if (v14 <= 0xFE)
      {
        *__b = (v20 * v14 + ((v20 * v14) >> 8) + 1) >> 8;
        v42 = __b + 1;
      }

      if (v15 < 4)
      {
        v43 = v15;
      }

      else
      {
        memset(v42, v20, (v15 & 0xFFFFFFFC) - 4 + 4);
        v43 = v15 & 3;
        v42 += v15 & 0xFFFFFFFC;
      }

      if (v43)
      {
        memset(v42, v20, v43);
        v42 += v43;
      }

      if (v13 <= 0xFE)
      {
        *v42 = (v20 * v13 + ((v20 * v13) >> 8) + 1) >> 8;
      }

      __b += a4;
    }

    if (!v21)
    {
      goto LABEL_92;
    }

    v62 = __b;
    if (v14 <= 0xFE)
    {
      if (v13 < 0xFF)
      {
        v63 = v21 + 1;
        v64 = __b;
        do
        {
          *v64 = v14;
          v64[v15 + 1] = v13;
          v64 += a4;
          --v63;
        }

        while (v63 > 1);
LABEL_91:
        __b += v21 * a4;
LABEL_92:
        if (v19 > 0xFE)
        {
          return 1;
        }

        if (v14 <= 0xFE)
        {
          *__b++ = (v19 * v14 + ((v19 * v14) >> 8) + 1) >> 8;
        }

        if (v15 >= 4)
        {
          v69 = v15 - 7;
          if (v15 < 7)
          {
            v69 = 0;
          }

          v70 = (v69 + 3) & 0x7FFFFFFC;
          memset(__b, v19, (v70 + 4));
          v15 = v15 - v70 - 4;
          __b += (v70 + 4);
        }

        if (v15 >= 1)
        {
          memset(__b, v19, v15);
          __b += v15;
        }

        if (v13 > 0xFE)
        {
          return 1;
        }

        v61 = v19 * v13;
        goto LABEL_103;
      }

      v65 = v21 + 1;
      v66 = __b;
      do
      {
        *v66 = v14;
        v66 += a4;
        --v65;
      }

      while (v65 > 1);
      v62 = __b + 1;
    }

    if (v13 <= 0xFE)
    {
      v67 = &v62[v15];
      v68 = v21 + 1;
      do
      {
        *v67 = v13;
        v67 += a4;
        --v68;
      }

      while (v68 > 1);
    }

    goto LABEL_91;
  }

  if (a6 < 2)
  {
    return 0;
  }

  v20 = BYTE2(a7) ^ 0xFF;
  v19 = a7 ^ 0xFF;
  if (a7)
  {
    v40 = -2;
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 + a6;
  if (BYTE2(a7))
  {
    v21 = v41;
  }

  else
  {
    v21 = v41 + 1;
  }

  if (!a1)
  {
    goto LABEL_50;
  }

LABEL_22:
  if (a1 != __b || a2 != a4)
  {
    CGBlt_copyBytes(a5, a6, a1, __b, a2, a4);
    v9 = a4;
    v10 = __b;
  }

  if (v20 <= 0xFE)
  {
    v22 = v10;
    v23 = __b;
    if (v14 <= 0xFE)
    {
      v22 = v10 + 1;
      v24 = ((v20 * v14 + ((v20 * v14) >> 8) + 1) >> 8) * *v10;
      *__b = (v24 + (v24 >> 8) + 1) >> 8;
      v23 = __b + 1;
    }

    v25 = v15;
    if (v15 >= 4)
    {
      do
      {
        v25 -= 4;
        v26 = (v20 * v22[1] + ((v20 * v22[1]) >> 8) + 1) >> 8;
        *v23 = (v20 * *v22 + ((v20 * *v22) >> 8) + 1) >> 8;
        v23[1] = v26;
        v27 = v22[2];
        v28 = v22[3];
        v22 += 4;
        v23[2] = (v20 * v27 + ((v20 * v27) >> 8) + 1) >> 8;
        v23[3] = (v20 * v28 + ((v20 * v28) >> 8) + 1) >> 8;
        v23 += 4;
      }

      while (v25 > 3);
    }

    if (v25)
    {
      v29 = v25 + 1;
      do
      {
        v30 = *v22++;
        *v23++ = (v20 * v30 + ((v20 * v30) >> 8) + 1) >> 8;
        --v29;
      }

      while (v29 > 1);
    }

    if (v13 <= 0xFE)
    {
      v31 = (v20 * v13 + ((v20 * v13) >> 8) + 1) >> 8;
      *v23 = (v31 * *v22 + ((v31 * *v22) >> 8) + 1) >> 8;
    }

    __b += a4;
    v10 += v9;
  }

  if (v21 < 1)
  {
    goto LABEL_63;
  }

  v32 = v10;
  v33 = __b;
  if (v14 > 0xFE)
  {
    goto LABEL_59;
  }

  if (v13 >= 0xFF)
  {
    v45 = v21 + 1;
    v46 = v10;
    v47 = __b;
    do
    {
      v48 = *v46;
      v46 += v9;
      *v47 = (v14 * v48 + ((v14 * v48) >> 8) + 1) >> 8;
      v47 += a4;
      --v45;
    }

    while (v45 > 1);
    v32 = v10 + 1;
    v33 = __b + 1;
LABEL_59:
    if (v13 <= 0xFE)
    {
      v49 = &v32[v15];
      v50 = v21 + 1;
      v51 = &v33[v15];
      do
      {
        v52 = *v49;
        v49 += v9;
        *v51 = (v13 * v52 + ((v13 * v52) >> 8) + 1) >> 8;
        v51 += a4;
        --v50;
      }

      while (v50 > 1);
    }

    goto LABEL_62;
  }

  v34 = v15 + 1;
  v35 = v21 + 1;
  v36 = v10;
  v37 = __b;
  do
  {
    v38 = *v36;
    v39 = v36[v34];
    v36 += v9;
    *v37 = (v14 * v38 + ((v14 * v38) >> 8) + 1) >> 8;
    v37[v34] = (v13 * v39 + ((v13 * v39) >> 8) + 1) >> 8;
    v37 += a4;
    --v35;
  }

  while (v35 > 1);
LABEL_62:
  v10 += v9 * v21;
  __b += v21 * a4;
LABEL_63:
  if (v19 > 0xFE)
  {
    return 1;
  }

  if (v14 <= 0xFE)
  {
    v53 = *v10++;
    v54 = ((v19 * v14 + ((v19 * v14) >> 8) + 1) >> 8) * v53;
    *__b++ = (v54 + (v54 >> 8) + 1) >> 8;
  }

  if (v15 >= 4)
  {
    do
    {
      v55 = v15;
      v15 -= 4;
      v56 = (v19 * v10[1] + ((v19 * v10[1]) >> 8) + 1) >> 8;
      *__b = (v19 * *v10 + ((v19 * *v10) >> 8) + 1) >> 8;
      __b[1] = v56;
      v57 = v10[2];
      v58 = v10[3];
      v10 += 4;
      __b[2] = (v19 * v57 + ((v19 * v57) >> 8) + 1) >> 8;
      __b[3] = (v19 * v58 + ((v19 * v58) >> 8) + 1) >> 8;
      __b += 4;
    }

    while (v55 > 7);
  }

  if (v15 >= 1)
  {
    v59 = v15 + 1;
    do
    {
      v60 = *v10++;
      *__b++ = (v19 * v60 + ((v19 * v60) >> 8) + 1) >> 8;
      --v59;
    }

    while (v59 > 1);
  }

  if (v13 > 0xFE)
  {
    return 1;
  }

  v61 = ((v19 * v13 + ((v19 * v13) >> 8) + 1) >> 8) * *v10;
LABEL_103:
  *__b = (v61 + (v61 >> 8) + 1) >> 8;
  return 1;
}

BOOL ripl_IsContained(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 > *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 > v3 && a1[2] + *a1 < a2[2] + *a2 && a1[3] + v2 < a2[3] + v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t W8_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v40, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v23, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 34083076;
  v11 = *a3;
  *(&v23 + 1) = __PAIR64__(*v6, *a3);
  if (v11 == 34083076)
  {
    if (!v34 && (~DWORD1(v24) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v24) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      W8_mark(a1);
      return 1;
    }

    *&v23 = W8_sample_W8;
    if (*(a2 + 12))
    {
      goto LABEL_51;
    }

    v12 = 2;
    v13 = 16;
    goto LABEL_37;
  }

  v12 = SAMPLEINDEX(v11);
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 > 0xB)
  {
    goto LABEL_29;
  }

  if (v12 > 6)
  {
    switch(v12)
    {
      case 7:
        v14 = 0;
        v13 = 32;
        break;
      case 9:
        v14 = 0;
        v13 = 40;
        break;
      case 8:
        v14 = 0;
        v13 = 8;
        goto LABEL_30;
      default:
        goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v12 == 2)
  {
    if (!*(a2 + 12))
    {
      v14 = 0;
      v13 = 16;
      goto LABEL_30;
    }

LABEL_29:
    v13 = 255;
    v14 = 1;
    goto LABEL_30;
  }

  if (v12 != 5)
  {
    if (v12 == 6)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v14 = 0;
  v13 = 24;
LABEL_30:
  *&v23 = *&W8_image_sample[2 * v12 + 2];
  if (v23)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 0x10)
  {
    *&v23 = *&W16_image_sample[2 * v12 + 2];
    if (v23)
    {
      v10 = 68161828;
      goto LABEL_36;
    }
  }

  *&v23 = *&WF_image_sample[2 * v12 + 2];
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v24) = 8;
  v10 = 136319269;
LABEL_36:
  DWORD2(v23) = v10;
  if (v14)
  {
    goto LABEL_51;
  }

LABEL_37:
  if ((v8 - 1) > 1 || (BYTE4(v24) & 7) != 3 || a2[2] != 5 && a2[2] || v12 > 0xB)
  {
    goto LABEL_51;
  }

  HIDWORD(v16) = v13;
  LODWORD(v16) = v13;
  v15 = v16 >> 3;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      *(&v23 + 2) = *a3;
      v17 = W8_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v15 == 4)
    {
      *(&v23 + 2) = *a3;
      v17 = W8_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v15 != 5)
    {
      goto LABEL_51;
    }

    *(&v23 + 2) = *a3;
    v18 = W8_image_mark_rgb32;
LABEL_64:
    v19 = v18;
    v20 = a2;
    v21 = v8;
    v22 = 8;
LABEL_67:
    W8_image_mark_image(v20, &v23, v21, v22, v19);
    return 1;
  }

  switch(v15)
  {
    case 0:
      *(&v23 + 2) = *a3;
      v17 = W8_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      *(&v23 + 2) = *a3;
      v18 = W8_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      *(&v23 + 2) = *a3;
      v17 = W8_image_mark_W8;
LABEL_66:
      v19 = v17;
      v20 = a2;
      v21 = v8;
      v22 = 0;
      goto LABEL_67;
  }

LABEL_51:
  W8_image_mark(a2, &v23, v8);
  return 1;
}

unint64_t W8_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v5 = *(result + 12);
  v4 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32);
    v7 = (v2 + v6 * v4 + v5);
    v8 = -1;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return result;
    }
  }

  v10 = *(result + 4);
  v9 = *(result + 8);
  v11 = *(result + 28);
  v12 = *(result + 88);
  v13 = *(result + 96);
  v14 = (*(result + 40) + v4 * v11 + v5);
  v15 = *(result + 124);
  v16 = (v3 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v589 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v20 = *(result + 64);
    v21 = *(result + 68);
    if (v13)
    {
      v557 = *(result + 80);
      v19 = 1;
    }

    else
    {
      v557 = 0;
      v19 = 0;
    }

    v26 = v12 + v21 * v589;
    v8 &= 1u;
    v25 = 1;
    result = *(result + 88);
    v22 = v12;
    goto LABEL_19;
  }

  if (v13)
  {
    v557 = *(result + 80);
    v13 += v557 * v18 + v17;
    v19 = -1;
  }

  else
  {
    v557 = 0;
    v19 = 0;
  }

  v22 = (v12 + v18 * v589 + v17);
  if (v589 == v11 && v14 - v22 >= 1)
  {
    if (v14 - v22 <= v10)
    {
      v14 += v10 - 1;
      v22 += v10 - 1;
      v16 += v10 - 1;
      v7 += v8 & (v10 - 1);
      v13 += v19 & (v10 - 1);
      v25 = -1;
      goto LABEL_16;
    }

    v23 = v9 - 1;
    v24 = &v22[v589 * v23];
    if (v14 <= &v24[v10 - 1])
    {
      v14 += v11 * v23;
      v11 = -v11;
      v589 = -v589;
      v16 += v15 * v23;
      v15 = -v15;
      v7 += v6 * v23;
      v6 = -v6;
      v8 &= 1u;
      v13 += v557 * v23;
      v557 = -v557;
      v19 &= 1u;
      v25 = 1;
      v22 = v24;
      goto LABEL_16;
    }
  }

  v8 &= 1u;
  v19 &= 1u;
  v25 = 1;
LABEL_16:
  v26 = 0;
  result = 0;
  v12 = -1;
  v21 = v557;
  v20 = v589;
LABEL_19:
  v27 = v25 * v10;
  v558 = v10;
  if (v26)
  {
    v28 = v18 % v21;
    v29 = &v22[v589 * v28];
    result = v17 % v20;
    v22 = &v29[result];
    v30 = v20;
    v12 = &v29[v20];
    v31 = &v13[v557 * v28 + result];
    if (v19)
    {
      v13 = v31;
    }

    v590 = &v29[result];
  }

  else
  {
    v589 -= v27;
    v590 = result;
    v557 -= v19 * v10;
    v30 = v20;
  }

  v556 = v15 - v27;
  v554 = v6 - v8 * v558;
  v555 = v11 - v27;
  v32 = v25;
  v33 = v21;
  v553 = v26;
  v591 = v8;
  v592 = v19;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        do
        {
          v34 = v558;
          do
          {
            v35 = *v16;
            if (*v16)
            {
              if (v35 == 255)
              {
                LOBYTE(v36) = 0;
                *v14 = 0;
              }

              else
              {
                v37 = *v14;
                v38 = *v7;
                v39 = (v37 | (v38 << 16)) * v35 + 65537 + ((((v37 | (v38 << 16)) * v35) >> 8) & 0xFF00FF);
                v40 = v37 | (v38 << 24);
                *v14 = v40 - BYTE1(v39);
                v36 = (v40 - (v39 & 0xFF000000 | BYTE1(v39))) >> 24;
              }

              *v7 = v36;
            }

            v16 += v32;
            v14 += v32;
            v7 += v8;
            --v34;
          }

          while (v34);
          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v41 = v558;
          do
          {
            v42 = *v16;
            if (*v16)
            {
              if (v42 == 255)
              {
                LOBYTE(v43) = 0;
              }

              else
              {
                v43 = *v14 - ((*v14 * v42 + ((*v14 * v42) >> 8) + 1) >> 8);
              }

              *v14 = v43;
            }

            v16 += v25;
            v14 += v25;
            --v41;
          }

          while (v41);
          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 1:
      if (v8)
      {
        if (v19)
        {
          v233 = -v30;
          v234 = -(v589 * v21);
          v235 = -(v557 * v21);
          v236 = v13;
          do
          {
            v237 = v558;
            do
            {
              v238 = *v16;
              if (*v16)
              {
                if (v238 == 255)
                {
                  *v14 = *v22;
                  LOBYTE(v239) = *v236;
                }

                else
                {
                  v240 = (*v22 | (*v236 << 16)) * v238 + (*v14 | (*v7 << 16)) * (v238 ^ 0xFF);
                  v241 = v240 + 65537 + ((v240 >> 8) & 0xFF00FF);
                  *v14 = BYTE1(v241);
                  v239 = HIBYTE(v241);
                }

                *v7 = v239;
              }

              v16 += v25;
              v14 += v25;
              v7 += v8;
              v242 = &v236[v19];
              if (&v22[v25] >= v12)
              {
                result = v233;
              }

              else
              {
                result = 0;
              }

              v236 = &v242[result];
              v22 += v25 + result;
              --v237;
            }

            while (v237);
            if (v26)
            {
              result = v589;
              if (v590 + v589 >= v26)
              {
                v243 = v235;
              }

              else
              {
                v243 = 0;
              }

              v13 += v557 + v243;
              if (v590 + v589 >= v26)
              {
                v244 = v234;
              }

              else
              {
                v244 = 0;
              }

              v22 = (v590 + v589 + v244);
              v12 += v589 + v244;
              v236 = v13;
              v590 = v22;
            }

            else
            {
              v22 += v589;
              v236 += v557;
            }

            v16 += v556;
            v14 += v555;
            v7 += v554;
            --v9;
          }

          while (v9);
        }

        else
        {
          v496 = -v30;
          v497 = -(v589 * v21);
          do
          {
            v498 = v558;
            do
            {
              v499 = *v16;
              if (*v16)
              {
                if (v499 == 255)
                {
                  *v14 = *v22;
                  LOBYTE(v500) = -1;
                }

                else
                {
                  v501 = (*v22 | 0xFF0000) * v499 + (*v14 | (*v7 << 16)) * (v499 ^ 0xFF);
                  v502 = v501 + 65537 + ((v501 >> 8) & 0xFF00FF);
                  *v14 = BYTE1(v502);
                  v500 = HIBYTE(v502);
                }

                *v7 = v500;
              }

              v16 += v32;
              v14 += v32;
              v7 += v8;
              if (&v22[v32] >= v12)
              {
                v503 = v496;
              }

              else
              {
                v503 = 0;
              }

              v22 += v32 + v503;
              --v498;
            }

            while (v498);
            v16 += v556;
            v14 += v555;
            v7 += v554;
            v504 = v590;
            if (v590 + v589 >= v26)
            {
              v505 = v497;
            }

            else
            {
              v505 = 0;
            }

            v506 = (v590 + v589 + v505);
            v507 = v12 + v589 + v505;
            if (v26)
            {
              v12 = v507;
              v504 = v506;
            }

            v590 = v504;
            if (v26)
            {
              v22 = v506;
            }

            else
            {
              v22 += v589;
            }

            --v9;
          }

          while (v9);
        }
      }

      else
      {
        v476 = -v30;
        do
        {
          v477 = v558;
          do
          {
            v478 = *v16;
            if (*v16)
            {
              if (v478 == 255)
              {
                LOBYTE(v479) = *v22;
              }

              else
              {
                v479 = (*v22 * v478 + *v14 * (v478 ^ 0xFF) + ((*v22 * v478 + *v14 * (v478 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              *v14 = v479;
            }

            v16 += v25;
            v14 += v25;
            if (&v22[v25] >= v12)
            {
              v480 = v476;
            }

            else
            {
              v480 = 0;
            }

            v22 += v25 + v480;
            --v477;
          }

          while (v477);
          v16 += v556;
          v14 += v555;
          v481 = v590;
          if (v590 + v589 >= v26)
          {
            v482 = -(v589 * v21);
          }

          else
          {
            v482 = 0;
          }

          v483 = (v590 + v589 + v482);
          v484 = v12 + v589 + v482;
          if (v26)
          {
            v12 = v484;
            v481 = v483;
          }

          v590 = v481;
          if (v26)
          {
            v22 = v483;
          }

          else
          {
            v22 += v589;
          }

          --v9;
        }

        while (v9);
      }

      return result;
    case 2:
      if (v8)
      {
        v172 = -v30;
        v173 = -(v589 * v21);
        v174 = -(v557 * v21);
        v175 = v13;
        while (1)
        {
          v176 = v558;
          do
          {
            v177 = *v16;
            if (!*v16)
            {
              goto LABEL_277;
            }

            if (v177 != 255)
            {
              v180 = *v22;
              v181 = *v175;
              v182 = (v180 | (v181 << 16)) * (v177 ^ 0xFF) + 65537 + ((((v180 | (v181 << 16)) * (v177 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v183 = (v180 | (v181 << 24)) - (v182 & 0xFF000000 | BYTE1(v182));
              if (!HIBYTE(v183))
              {
                goto LABEL_277;
              }

              v184 = (*v14 | (*v7 << 16)) * (~v183 >> 24);
              v185 = ((v184 + 65537 + ((v184 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v184 + 1 + BYTE1(v184)) >> 8)) + (v183 & 0xFF0000FF);
              goto LABEL_275;
            }

            v178 = *v175;
            if (!*v175)
            {
              goto LABEL_277;
            }

            if (v178 != 255)
            {
              v186 = (*v14 | (*v7 << 16)) * (v178 ^ 0xFF);
              v185 = ((v186 + 65537 + ((v186 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v186 + 1 + BYTE1(v186)) >> 8)) + (*v22 | (v178 << 24));
LABEL_275:
              *v14 = v185;
              v179 = HIBYTE(v185);
              goto LABEL_276;
            }

            *v14 = *v22;
            LOBYTE(v179) = -1;
LABEL_276:
            *v7 = v179;
LABEL_277:
            v16 += v25;
            v14 += v25;
            v7 += v8;
            v187 = &v175[v19];
            if (&v22[v25] >= v12)
            {
              result = v172;
            }

            else
            {
              result = 0;
            }

            v175 = &v187[result];
            v22 += v25 + result;
            --v176;
          }

          while (v176);
          if (v26)
          {
            result = v589;
            if (v590 + v589 >= v26)
            {
              v188 = v174;
            }

            else
            {
              v188 = 0;
            }

            v13 += v557 + v188;
            if (v590 + v589 >= v26)
            {
              v189 = v173;
            }

            else
            {
              v189 = 0;
            }

            v22 = (v590 + v589 + v189);
            v12 += v589 + v189;
            v175 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v175 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          if (!--v9)
          {
            return result;
          }
        }
      }

      v449 = -v30;
      v450 = -(v589 * v21);
      v451 = -(v557 * v21);
      v452 = v13;
      break;
    case 3:
      v204 = -v30;
      v205 = -(v589 * v21);
      v206 = -(v557 * v21);
      v207 = v13;
      do
      {
        v208 = v558;
        do
        {
          v209 = *v16;
          if (*v16)
          {
            if (v209 == 255)
            {
              if (v19)
              {
                v210 = *v207;
              }

              else
              {
                v210 = 255;
              }

              v214 = *v22;
              v212 = (v214 | (v210 << 16)) * (*v7 ^ 0xFF);
              v213 = (v214 | (v210 << 24)) - ((v212 + 65537 + ((v212 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v212 + 1 + BYTE1(v212)) >> 8));
              HIBYTE(v214) = HIBYTE(v213);
            }

            else
            {
              if (v19)
              {
                v211 = *v207 << 16;
              }

              else
              {
                v211 = 16711680;
              }

              v215 = (v211 | *v22) * ((*v7 * v209 + ((*v7 * v209) >> 8) + 1) >> 8) + (*v14 | (*v7 << 16)) * (v209 ^ 0xFF);
              v214 = v215 + 65537 + ((v215 >> 8) & 0xFF00FF);
              v213 = v214 >> 8;
            }

            *v14 = v213;
            *v7 = HIBYTE(v214);
          }

          v16 += v25;
          v14 += v25;
          v7 += v8;
          v216 = &v207[v19];
          if (&v22[v25] >= v12)
          {
            result = v204;
          }

          else
          {
            result = 0;
          }

          v207 = &v216[result];
          v22 += v25 + result;
          --v208;
        }

        while (v208);
        if (v26)
        {
          result = v589;
          if (v590 + v589 >= v26)
          {
            v217 = v206;
          }

          else
          {
            v217 = 0;
          }

          v13 += v557 + v217;
          if (v590 + v589 >= v26)
          {
            v218 = v205;
          }

          else
          {
            v218 = 0;
          }

          v22 = (v590 + v589 + v218);
          v12 += v589 + v218;
          v207 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v207 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 4:
      v100 = -v30;
      v101 = -(v589 * v21);
      v102 = -(v557 * v21);
      v103 = v13;
      do
      {
        v104 = v558;
        do
        {
          v105 = *v16;
          if (*v16)
          {
            if (v105 == 255)
            {
              if (v19)
              {
                v106 = *v103;
              }

              else
              {
                v106 = 255;
              }

              v110 = *v22;
              v108 = (v110 | (v106 << 16)) * *v7;
              v109 = (v110 | (v106 << 24)) - ((v108 + 65537 + ((v108 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v108 + 1 + BYTE1(v108)) >> 8));
              HIBYTE(v110) = HIBYTE(v109);
            }

            else
            {
              if (v19)
              {
                v107 = *v103 << 16;
              }

              else
              {
                v107 = 16711680;
              }

              v111 = (v107 | *v22) * (((*v7 ^ 0xFF) * v105 + (((*v7 ^ 0xFFu) * v105) >> 8) + 1) >> 8) + (*v14 | (*v7 << 16)) * (v105 ^ 0xFF);
              v110 = v111 + 65537 + ((v111 >> 8) & 0xFF00FF);
              v109 = v110 >> 8;
            }

            *v14 = v109;
            *v7 = HIBYTE(v110);
          }

          v16 += v25;
          v14 += v25;
          v7 += v8;
          v112 = &v103[v19];
          if (&v22[v25] >= v12)
          {
            result = v100;
          }

          else
          {
            result = 0;
          }

          v103 = &v112[result];
          v22 += v25 + result;
          --v104;
        }

        while (v104);
        if (v26)
        {
          result = v589;
          if (v590 + v589 >= v26)
          {
            v113 = v102;
          }

          else
          {
            v113 = 0;
          }

          v13 += v557 + v113;
          if (v590 + v589 >= v26)
          {
            v114 = v101;
          }

          else
          {
            v114 = 0;
          }

          v22 = (v590 + v589 + v114);
          v12 += v589 + v114;
          v103 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v103 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 5:
      v273 = v8;
      v274 = -v30;
      v275 = -(v589 * v21);
      v276 = -(v557 * v21);
      v277 = v13;
      do
      {
        v278 = v558;
        do
        {
          if (*v16)
          {
            v279 = *v22;
            v280 = *v277;
            v281 = (v279 | (v280 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v279 | (v280 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            v282 = (v279 | (v280 << 24)) - (v281 & 0xFF000000 | BYTE1(v281));
            v283 = (HIBYTE(v282) ^ 0xFF) * (*v14 | (*v7 << 16)) + (v282 | (HIBYTE(v282) << 16)) * *v7;
            v284 = v283 + 65537 + ((v283 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v284);
            *v7 = HIBYTE(v284);
          }

          v16 += v25;
          v14 += v25;
          v7 += v273;
          v285 = &v277[v19];
          if (&v22[v25] >= v12)
          {
            result = v274;
          }

          else
          {
            result = 0;
          }

          v277 = &v285[result];
          v22 += v25 + result;
          --v278;
        }

        while (v278);
        if (v26)
        {
          result = v589;
          if (v590 + v589 >= v26)
          {
            v286 = v276;
          }

          else
          {
            v286 = 0;
          }

          v13 += v557 + v286;
          if (v590 + v589 >= v26)
          {
            v287 = v275;
          }

          else
          {
            v287 = 0;
          }

          v22 = (v590 + v589 + v287);
          v12 += v589 + v287;
          v277 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v277 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 6:
      v316 = v8;
      v317 = -v30;
      v318 = v13;
      do
      {
        v319 = v558;
        do
        {
          v320 = *v16;
          if (*v16)
          {
            v321 = *v7;
            if (v321 != 0xFF)
            {
              if (~v321 == 255)
              {
                if (v19)
                {
                  v322 = *v318;
                }

                else
                {
                  v322 = 255;
                }

                v324 = *v22;
                v325 = (v324 | (v322 << 16)) * (v320 ^ 0xFF) + 65537 + ((((v324 | (v322 << 16)) * (v320 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v326 = (v324 | (v322 << 24)) - (v325 & 0xFF000000 | BYTE1(v325));
              }

              else
              {
                if (v19)
                {
                  v323 = *v318 << 16;
                }

                else
                {
                  v323 = 16711680;
                }

                v327 = (v323 | *v22) * ((~v321 * v320 + ((~v321 * v320) >> 8) + 1) >> 8);
                v326 = ((v327 + 65537 + ((v327 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v327 + 1 + BYTE1(v327)) >> 8)) + (*v14 | (v321 << 24));
              }

              *v14 = v326;
              *v7 = HIBYTE(v326);
            }
          }

          v16 += v25;
          v14 += v25;
          v7 += v316;
          result = &v22[v25];
          v328 = &v318[v19];
          if (result >= v12)
          {
            v329 = v317;
          }

          else
          {
            v329 = 0;
          }

          v318 = &v328[v329];
          v22 = (result + v329);
          --v319;
        }

        while (v319);
        if (v26)
        {
          if (v590 + v589 >= v26)
          {
            result = -(v557 * v21);
          }

          else
          {
            result = 0;
          }

          v13 += v557 + result;
          if (v590 + v589 >= v26)
          {
            v330 = -(v589 * v21);
          }

          else
          {
            v330 = 0;
          }

          v22 = (v590 + v589 + v330);
          v12 += v589 + v330;
          v318 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v318 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 7:
      if (v8)
      {
        v219 = -v30;
        v220 = -(v589 * v21);
        v221 = -(v557 * v21);
        v222 = v13;
        do
        {
          v223 = v558;
          do
          {
            v224 = *v16;
            if (*v16)
            {
              if (v224 == 255)
              {
                v225 = *v14;
                v228 = *v7;
                v226 = (v225 | (v228 << 16)) * (*v222 ^ 0xFF);
                v227 = (v225 | (v228 << 24)) - ((v226 + 65537 + ((v226 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v226 + 1 + BYTE1(v226)) >> 8));
                HIBYTE(v228) = HIBYTE(v227);
              }

              else
              {
                v229 = ((v224 ^ 0xFF) + ((*v222 * v224 + ((*v222 * v224) >> 8) + 1) >> 8)) * (*v14 | (*v7 << 16));
                v228 = v229 + 65537 + ((v229 >> 8) & 0xFF00FF);
                v227 = v228 >> 8;
              }

              *v14 = v227;
              *v7 = HIBYTE(v228);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v230 = &v222[v19];
            if (&v22[v25] >= v12)
            {
              result = v219;
            }

            else
            {
              result = 0;
            }

            v222 = &v230[result];
            v22 += v25 + result;
            --v223;
          }

          while (v223);
          if (v26)
          {
            result = v589;
            if (v590 + v589 >= v26)
            {
              v231 = v221;
            }

            else
            {
              v231 = 0;
            }

            v13 += v557 + v231;
            if (v590 + v589 >= v26)
            {
              v232 = v220;
            }

            else
            {
              v232 = 0;
            }

            v22 = (v590 + v589 + v232);
            v12 += v589 + v232;
            v222 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v222 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v464 = -v30;
        v465 = -(v589 * v21);
        v466 = -(v557 * v21);
        v467 = v13;
        do
        {
          v468 = v558;
          do
          {
            v469 = *v16;
            if (*v16)
            {
              if (v469 == 255)
              {
                v470 = *v14 - (((*v467 ^ 0xFF) * *v14 + (((*v467 ^ 0xFF) * *v14) >> 8) + 1) >> 8);
              }

              else
              {
                v471 = *v467 * v469 + ((*v467 * v469) >> 8) + 1;
                v470 = (((v469 ^ 0xFF) + (v471 >> 8)) * *v14 + ((((v469 ^ 0xFF) + (v471 >> 8)) * *v14) >> 8) + 1) >> 8;
              }

              *v14 = v470;
            }

            v16 += v32;
            v14 += v32;
            v472 = &v467[v19];
            if (&v22[v32] >= v12)
            {
              v473 = v464;
            }

            else
            {
              v473 = 0;
            }

            v467 = &v472[v473];
            v22 += v32 + v473;
            --v468;
          }

          while (v468);
          if (v26)
          {
            if (v590 + v589 >= v26)
            {
              v474 = v466;
            }

            else
            {
              v474 = 0;
            }

            v13 += v557 + v474;
            if (v590 + v589 >= v26)
            {
              v475 = v465;
            }

            else
            {
              v475 = 0;
            }

            v22 = (v590 + v589 + v475);
            v12 += v589 + v475;
            v467 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v467 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 8:
      if (v8)
      {
        v360 = -v30;
        v361 = -(v589 * v21);
        v362 = -(v557 * v21);
        v363 = v13;
        do
        {
          v364 = v558;
          do
          {
            v365 = *v16;
            if (*v16)
            {
              v366 = *v14;
              v367 = *v7;
              if (v365 == 255)
              {
                v368 = (v366 | (v367 << 16)) * *v363;
              }

              else
              {
                v368 = ((*v363 * v365 + ((*v363 * v365) >> 8) + 1) >> 8) * (v366 | (v367 << 16));
              }

              v369 = (v366 | (v367 << 24)) - ((v368 + 65537 + ((v368 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v368 + 1 + BYTE1(v368)) >> 8));
              *v14 = v369;
              *v7 = HIBYTE(v369);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v370 = &v363[v19];
            if (&v22[v25] >= v12)
            {
              result = v360;
            }

            else
            {
              result = 0;
            }

            v363 = &v370[result];
            v22 += v25 + result;
            --v364;
          }

          while (v364);
          if (v26)
          {
            result = v589;
            if (v590 + v589 >= v26)
            {
              v371 = v362;
            }

            else
            {
              v371 = 0;
            }

            v13 += v557 + v371;
            if (v590 + v589 >= v26)
            {
              v372 = v361;
            }

            else
            {
              v372 = 0;
            }

            v22 = (v590 + v589 + v372);
            v12 += v589 + v372;
            v363 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v363 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v485 = -v30;
        v486 = -(v589 * v21);
        v487 = -(v557 * v21);
        v488 = v13;
        do
        {
          v489 = v558;
          do
          {
            v490 = *v16;
            if (*v16)
            {
              if (v490 == 255)
              {
                v491 = *v488;
              }

              else
              {
                v491 = (*v488 * v490 + ((*v488 * v490) >> 8) + 1) >> 8;
              }

              *v14 -= (v491 * *v14 + ((v491 * *v14) >> 8) + 1) >> 8;
            }

            v16 += v32;
            v14 += v32;
            v492 = &v488[v19];
            if (&v22[v32] >= v12)
            {
              v493 = v485;
            }

            else
            {
              v493 = 0;
            }

            v488 = &v492[v493];
            v22 += v32 + v493;
            --v489;
          }

          while (v489);
          if (v26)
          {
            if (v590 + v589 >= v26)
            {
              v494 = v487;
            }

            else
            {
              v494 = 0;
            }

            v13 += v557 + v494;
            if (v590 + v589 >= v26)
            {
              v495 = v486;
            }

            else
            {
              v495 = 0;
            }

            v22 = (v590 + v589 + v495);
            v12 += v589 + v495;
            v488 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v488 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 9:
      v129 = v8;
      v130 = -v30;
      v131 = v13;
      do
      {
        v132 = v558;
        do
        {
          v133 = *v16;
          if (*v16)
          {
            v134 = *v22;
            v135 = *v131;
            v136 = ~v133;
            v137 = (v134 | (v135 << 16)) * ~v133;
            v138 = (v134 | (v135 << 24)) - ((v137 + 65537 + ((v137 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v137 + 1 + BYTE1(v137)) >> 8));
            v139 = (v138 | (HIBYTE(v138) << 16)) * (*v7 ^ 0xFF) + (*v14 | (*v7 << 16)) * (v136 + HIBYTE(v138));
            v140 = v139 + 65537 + ((v139 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v140);
            *v7 = HIBYTE(v140);
          }

          v16 += v25;
          v14 += v25;
          v7 += v129;
          result = &v22[v25];
          v141 = &v131[v19];
          if (result >= v12)
          {
            v142 = v130;
          }

          else
          {
            v142 = 0;
          }

          v131 = &v141[v142];
          v22 = (result + v142);
          --v132;
        }

        while (v132);
        if (v26)
        {
          if (v590 + v589 >= v26)
          {
            result = -(v557 * v21);
          }

          else
          {
            result = 0;
          }

          v13 += v557 + result;
          if (v590 + v589 >= v26)
          {
            v143 = -(v589 * v21);
          }

          else
          {
            v143 = 0;
          }

          v22 = (v590 + v589 + v143);
          v12 += v589 + v143;
          v131 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v131 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 10:
      v345 = v8;
      v346 = -v30;
      v347 = -(v589 * v21);
      v348 = -(v557 * v21);
      v349 = v13;
      do
      {
        v350 = v558;
        do
        {
          if (*v16)
          {
            v351 = *v22;
            v352 = *v349;
            v353 = (v351 | (v352 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v351 | (v352 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            v354 = (v351 | (v352 << 24)) - (v353 & 0xFF000000 | BYTE1(v353));
            v355 = (HIBYTE(v354) ^ 0xFF) * (*v14 | (*v7 << 16)) + (v354 | (HIBYTE(v354) << 16)) * (*v7 ^ 0xFF);
            v356 = v355 + 65537 + ((v355 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v356);
            *v7 = HIBYTE(v356);
          }

          v16 += v25;
          v14 += v25;
          v7 += v345;
          v357 = &v349[v19];
          if (&v22[v25] >= v12)
          {
            result = v346;
          }

          else
          {
            result = 0;
          }

          v349 = &v357[result];
          v22 += v25 + result;
          --v350;
        }

        while (v350);
        if (v26)
        {
          result = v589;
          if (v590 + v589 >= v26)
          {
            v358 = v348;
          }

          else
          {
            v358 = 0;
          }

          v13 += v557 + v358;
          if (v590 + v589 >= v26)
          {
            v359 = v347;
          }

          else
          {
            v359 = 0;
          }

          v22 = (v590 + v589 + v359);
          v12 += v589 + v359;
          v349 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v349 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 11:
      if (v8)
      {
        v86 = -v30;
        v87 = -(v589 * v21);
        v88 = -(v557 * v21);
        v89 = v13;
        do
        {
          v90 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v91 = *v89;
              }

              else
              {
                v91 = 255;
              }

              v92 = *v22;
              v93 = (v92 | (v91 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v92 | (v91 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v94 = (v92 | (v91 << 24)) - (v93 & 0xFF000000 | BYTE1(v93));
              v95 = ((*v7 - *v14) | (*v7 << 16)) + (HIBYTE(v94) << 16) + (HIBYTE(v94) - v94);
              v96 = (255 * ((v95 >> 8) & 0x10001)) | v95;
              *v14 = BYTE2(v96) - v96;
              *v7 = BYTE2(v96);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v97 = &v89[v19];
            if (&v22[v25] >= v12)
            {
              result = v86;
            }

            else
            {
              result = 0;
            }

            v89 = &v97[result];
            v22 += v25 + result;
            --v90;
          }

          while (v90);
          if (v26)
          {
            result = v589;
            if (v590 + v589 >= v26)
            {
              v98 = v88;
            }

            else
            {
              v98 = 0;
            }

            v13 += v557 + v98;
            if (v590 + v589 >= v26)
            {
              v99 = v87;
            }

            else
            {
              v99 = 0;
            }

            v22 = (v590 + v589 + v99);
            v12 += v589 + v99;
            v89 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v89 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v428 = -v30;
        v429 = -(v589 * v21);
        v430 = -(v557 * v21);
        v431 = v13;
        do
        {
          v432 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v433 = *v431;
              }

              else
              {
                v433 = 255;
              }

              result = *v22;
              v434 = (result | (v433 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((result | (v433 << 16)) * (*v16 ^ 0xFF)) >> 8) & 0xFF00FF);
              v435 = (*v14 ^ 0xFF) - (result - BYTE1(v434)) + (((result | (v433 << 24)) - (v434 & 0xFF000000 | BYTE1(v434))) >> 24);
              v436 = BYTE1(v435) | (2 * BYTE1(v435)) | (4 * (BYTE1(v435) | (2 * BYTE1(v435))));
              *v14 = ~(v435 | (16 * v436) | v436);
            }

            v16 += v32;
            v14 += v32;
            v437 = &v431[v19];
            if (&v22[v32] >= v12)
            {
              v438 = v428;
            }

            else
            {
              v438 = 0;
            }

            v431 = &v437[v438];
            v22 += v32 + v438;
            --v432;
          }

          while (v432);
          if (v26)
          {
            if (v590 + v589 >= v26)
            {
              v439 = v430;
            }

            else
            {
              v439 = 0;
            }

            v13 += v557 + v439;
            if (v590 + v589 >= v26)
            {
              v440 = v429;
            }

            else
            {
              v440 = 0;
            }

            v22 = (v590 + v589 + v440);
            v12 += v589 + v440;
            v431 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v431 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 12:
      if (v8)
      {
        v115 = -v30;
        v116 = -(v589 * v21);
        v117 = -(v557 * v21);
        v118 = v13;
        do
        {
          v119 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v120 = *v118;
              }

              else
              {
                v120 = 255;
              }

              v121 = *v22;
              v122 = (v121 | (v120 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v121 | (v120 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v123 = (v121 | (v120 << 24)) - (v122 & 0xFF000000 | BYTE1(v122));
              v124 = (*v14 | (*v7 << 16)) + v123 + (HIBYTE(v123) << 16);
              v125 = (255 * ((v124 >> 8) & 0x10001)) | v124;
              *v14 = v125;
              *v7 = BYTE2(v125);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v126 = &v118[v19];
            if (&v22[v25] >= v12)
            {
              result = v115;
            }

            else
            {
              result = 0;
            }

            v118 = &v126[result];
            v22 += v25 + result;
            --v119;
          }

          while (v119);
          if (v26)
          {
            result = v589;
            if (v590 + v589 >= v26)
            {
              v127 = v117;
            }

            else
            {
              v127 = 0;
            }

            v13 += v557 + v127;
            if (v590 + v589 >= v26)
            {
              v128 = v116;
            }

            else
            {
              v128 = 0;
            }

            v22 = (v590 + v589 + v128);
            v12 += v589 + v128;
            v118 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v118 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v441 = -v30;
        do
        {
          v442 = v558;
          do
          {
            if (*v16)
            {
              v443 = *v14 + (*v22 - ((*v22 * (*v16 ^ 0xFF) + ((*v22 * (*v16 ^ 0xFFu)) >> 8) + 1) >> 8));
              *v14 = -(v443 >> 8) | v443;
            }

            v16 += v25;
            v14 += v25;
            if (&v22[v25] >= v12)
            {
              v444 = v441;
            }

            else
            {
              v444 = 0;
            }

            v22 += v25 + v444;
            --v442;
          }

          while (v442);
          v16 += v556;
          v14 += v555;
          v445 = v590;
          if (v590 + v589 >= v26)
          {
            v446 = -(v589 * v21);
          }

          else
          {
            v446 = 0;
          }

          v447 = (v590 + v589 + v446);
          v448 = v12 + v589 + v446;
          if (v26)
          {
            v12 = v448;
            v445 = v447;
          }

          v590 = v445;
          if (v26)
          {
            v22 = v447;
          }

          else
          {
            v22 += v589;
          }

          --v9;
        }

        while (v9);
      }

      return result;
    case 13:
      v302 = v8;
      v303 = v19;
      v304 = -v30;
      v517 = -(v557 * v33);
      v532 = -(v589 * v33);
      v305 = v13;
      v547 = v8;
      do
      {
        v568 = v13;
        v583 = v9;
        v306 = v558;
        v307 = v12;
        do
        {
          if (*v16)
          {
            v308 = v19 ? *v305 : 255;
            v309 = *v22;
            v310 = (v309 | (v308 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v309 | (v308 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v309 | (v308 << 24)) - (v310 & 0xFF000000 | BYTE1(v310));
            v311 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAmultiplyPDA_18018(*v14, *v7, (v309 - ((v309 * (*v16 ^ 0xFF) + 1 + ((v309 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v311);
                  v302 = v547;
                  v8 = v591;
                  v19 = v592;
                  v12 = v307;
                  v311 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v311;
              }

              else
              {
                result = PDAmultiplyPDA_18018(*v14, 255, (v309 - ((v309 * (*v16 ^ 0xFF) + 1 + ((v309 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v311);
                v302 = v547;
                v8 = v591;
                v19 = v592;
                v12 = v307;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v302;
          if (&v22[v32] >= v12)
          {
            v312 = v304;
          }

          else
          {
            v312 = 0;
          }

          v305 += v303 + v312;
          v22 += v32 + v312;
          --v306;
        }

        while (v306);
        if (v553)
        {
          v313 = v583;
          v314 = v517;
          if (v590 + v589 < v553)
          {
            v314 = 0;
          }

          v13 = &v568[v557 + v314];
          v315 = v532;
          if (v590 + v589 < v553)
          {
            v315 = 0;
          }

          v22 = (v590 + v589 + v315);
          v12 += v589 + v315;
          v305 = &v568[v557 + v314];
          v590 = v22;
        }

        else
        {
          v313 = v583;
          v22 += v589;
          v305 += v557;
          v13 = v568;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v313 - 1;
      }

      while (v9);
      return result;
    case 14:
      v72 = v8;
      v73 = v19;
      v74 = -v30;
      v510 = -(v557 * v33);
      v525 = -(v589 * v33);
      v75 = v13;
      v540 = v8;
      do
      {
        v561 = v13;
        v576 = v9;
        v76 = v558;
        v77 = v12;
        do
        {
          if (*v16)
          {
            v78 = v19 ? *v75 : 255;
            v79 = *v22;
            v80 = (v79 | (v78 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v79 | (v78 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v79 | (v78 << 24)) - (v80 & 0xFF000000 | BYTE1(v80));
            v81 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAscreenPDA_18019(*v14, *v7, (v79 - ((v79 * (*v16 ^ 0xFF) + 1 + ((v79 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v81);
                  v72 = v540;
                  v8 = v591;
                  v19 = v592;
                  v12 = v77;
                  v81 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v81;
              }

              else
              {
                result = PDAscreenPDA_18019(*v14, 255, (v79 - ((v79 * (*v16 ^ 0xFF) + 1 + ((v79 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v81);
                v72 = v540;
                v8 = v591;
                v19 = v592;
                v12 = v77;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v72;
          if (&v22[v32] >= v12)
          {
            v82 = v74;
          }

          else
          {
            v82 = 0;
          }

          v75 += v73 + v82;
          v22 += v32 + v82;
          --v76;
        }

        while (v76);
        if (v553)
        {
          v83 = v576;
          v84 = v510;
          if (v590 + v589 < v553)
          {
            v84 = 0;
          }

          v13 = &v561[v557 + v84];
          v85 = v525;
          if (v590 + v589 < v553)
          {
            v85 = 0;
          }

          v22 = (v590 + v589 + v85);
          v12 += v589 + v85;
          v75 = &v561[v557 + v84];
          v590 = v22;
        }

        else
        {
          v83 = v576;
          v22 += v589;
          v75 += v557;
          v13 = v561;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v83 - 1;
      }

      while (v9);
      return result;
    case 15:
      v190 = v8;
      v191 = v19;
      v192 = -v30;
      v513 = -(v557 * v33);
      v528 = -(v589 * v33);
      v193 = v13;
      v543 = v8;
      do
      {
        v564 = v13;
        v579 = v9;
        v194 = v558;
        v195 = v12;
        do
        {
          if (*v16)
          {
            v196 = v19 ? *v193 : 255;
            v197 = *v22;
            v198 = (v197 | (v196 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v197 | (v196 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v197 | (v196 << 24)) - (v198 & 0xFF000000 | BYTE1(v198));
            v199 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAoverlayPDA_18020(*v14, *v7, (v197 - ((v197 * (*v16 ^ 0xFF) + 1 + ((v197 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v199);
                  v190 = v543;
                  v8 = v591;
                  v19 = v592;
                  v12 = v195;
                  v199 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v199;
              }

              else
              {
                result = PDAoverlayPDA_18020(*v14, 0xFFu, (v197 - ((v197 * (*v16 ^ 0xFF) + 1 + ((v197 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v199);
                v190 = v543;
                v8 = v591;
                v19 = v592;
                v12 = v195;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v190;
          if (&v22[v32] >= v12)
          {
            v200 = v192;
          }

          else
          {
            v200 = 0;
          }

          v193 += v191 + v200;
          v22 += v32 + v200;
          --v194;
        }

        while (v194);
        if (v553)
        {
          v201 = v579;
          v202 = v513;
          if (v590 + v589 < v553)
          {
            v202 = 0;
          }

          v13 = &v564[v557 + v202];
          v203 = v528;
          if (v590 + v589 < v553)
          {
            v203 = 0;
          }

          v22 = (v590 + v589 + v203);
          v12 += v589 + v203;
          v193 = &v564[v557 + v202];
          v590 = v22;
        }

        else
        {
          v201 = v579;
          v22 += v589;
          v193 += v557;
          v13 = v564;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v201 - 1;
      }

      while (v9);
      return result;
    case 16:
      v58 = v8;
      v59 = v19;
      v60 = -v30;
      v509 = -(v557 * v33);
      v524 = -(v589 * v33);
      v61 = v13;
      v539 = v8;
      do
      {
        v560 = v13;
        v575 = v9;
        v62 = v558;
        v63 = v12;
        do
        {
          if (*v16)
          {
            v64 = v19 ? *v61 : 255;
            v65 = *v22;
            v66 = (v65 | (v64 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v65 | (v64 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v65 | (v64 << 24)) - (v66 & 0xFF000000 | BYTE1(v66));
            v67 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdarkenPDA_18022(*v14, *v7, (v65 - ((v65 * (*v16 ^ 0xFF) + 1 + ((v65 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v67);
                  v58 = v539;
                  v8 = v591;
                  v19 = v592;
                  v12 = v63;
                  v67 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v67;
              }

              else
              {
                result = PDAdarkenPDA_18022(*v14, 0xFFu, (v65 - ((v65 * (*v16 ^ 0xFF) + 1 + ((v65 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v67);
                v58 = v539;
                v8 = v591;
                v19 = v592;
                v12 = v63;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v58;
          if (&v22[v32] >= v12)
          {
            v68 = v60;
          }

          else
          {
            v68 = 0;
          }

          v61 += v59 + v68;
          v22 += v32 + v68;
          --v62;
        }

        while (v62);
        if (v553)
        {
          v69 = v575;
          v70 = v509;
          if (v590 + v589 < v553)
          {
            v70 = 0;
          }

          v13 = &v560[v557 + v70];
          v71 = v524;
          if (v590 + v589 < v553)
          {
            v71 = 0;
          }

          v22 = (v590 + v589 + v71);
          v12 += v589 + v71;
          v61 = &v560[v557 + v70];
          v590 = v22;
        }

        else
        {
          v69 = v575;
          v22 += v589;
          v61 += v557;
          v13 = v560;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v69 - 1;
      }

      while (v9);
      return result;
    case 17:
      v245 = v8;
      v246 = v19;
      v247 = -v30;
      v514 = -(v557 * v33);
      v529 = -(v589 * v33);
      v248 = v13;
      v544 = v8;
      do
      {
        v565 = v13;
        v580 = v9;
        v249 = v558;
        v250 = v12;
        do
        {
          if (*v16)
          {
            v251 = v19 ? *v248 : 255;
            v252 = *v22;
            v253 = (v252 | (v251 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v252 | (v251 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v252 | (v251 << 24)) - (v253 & 0xFF000000 | BYTE1(v253));
            v254 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAlightenPDA_18021(*v14, *v7, (v252 - ((v252 * (*v16 ^ 0xFF) + 1 + ((v252 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v254);
                  v245 = v544;
                  v8 = v591;
                  v19 = v592;
                  v12 = v250;
                  v254 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v254;
              }

              else
              {
                result = PDAlightenPDA_18021(*v14, 0xFFu, (v252 - ((v252 * (*v16 ^ 0xFF) + 1 + ((v252 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v254);
                v245 = v544;
                v8 = v591;
                v19 = v592;
                v12 = v250;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v245;
          if (&v22[v32] >= v12)
          {
            v255 = v247;
          }

          else
          {
            v255 = 0;
          }

          v248 += v246 + v255;
          v22 += v32 + v255;
          --v249;
        }

        while (v249);
        if (v553)
        {
          v256 = v580;
          v257 = v514;
          if (v590 + v589 < v553)
          {
            v257 = 0;
          }

          v13 = &v565[v557 + v257];
          v258 = v529;
          if (v590 + v589 < v553)
          {
            v258 = 0;
          }

          v22 = (v590 + v589 + v258);
          v12 += v589 + v258;
          v248 = &v565[v557 + v257];
          v590 = v22;
        }

        else
        {
          v256 = v580;
          v22 += v589;
          v248 += v557;
          v13 = v565;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v256 - 1;
      }

      while (v9);
      return result;
    case 18:
      v331 = v8;
      v332 = v19;
      v333 = -v30;
      v518 = -(v557 * v33);
      v533 = -(v589 * v33);
      v334 = v13;
      v548 = v8;
      do
      {
        v569 = v13;
        v584 = v9;
        v335 = v558;
        v336 = v12;
        do
        {
          if (*v16)
          {
            v337 = v19 ? *v334 : 255;
            v338 = *v22;
            v339 = (v338 | (v337 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v338 | (v337 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v338 | (v337 << 24)) - (v339 & 0xFF000000 | BYTE1(v339));
            v340 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolordodgePDA_18023(*v14, *v7, (v338 - ((v338 * (*v16 ^ 0xFF) + 1 + ((v338 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v340);
                  v331 = v548;
                  v8 = v591;
                  v19 = v592;
                  v12 = v336;
                  v340 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v340;
              }

              else
              {
                result = PDAcolordodgePDA_18023(*v14, 0xFFu, (v338 - ((v338 * (*v16 ^ 0xFF) + 1 + ((v338 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v340);
                v331 = v548;
                v8 = v591;
                v19 = v592;
                v12 = v336;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v331;
          if (&v22[v32] >= v12)
          {
            v341 = v333;
          }

          else
          {
            v341 = 0;
          }

          v334 += v332 + v341;
          v22 += v32 + v341;
          --v335;
        }

        while (v335);
        if (v553)
        {
          v342 = v584;
          v343 = v518;
          if (v590 + v589 < v553)
          {
            v343 = 0;
          }

          v13 = &v569[v557 + v343];
          v344 = v533;
          if (v590 + v589 < v553)
          {
            v344 = 0;
          }

          v22 = (v590 + v589 + v344);
          v12 += v589 + v344;
          v334 = &v569[v557 + v343];
          v590 = v22;
        }

        else
        {
          v342 = v584;
          v22 += v589;
          v334 += v557;
          v13 = v569;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v342 - 1;
      }

      while (v9);
      return result;
    case 19:
      v387 = v8;
      v388 = v19;
      v389 = -v30;
      v520 = -(v557 * v33);
      v535 = -(v589 * v33);
      v390 = v13;
      v550 = v8;
      do
      {
        v571 = v13;
        v586 = v9;
        v391 = v558;
        v392 = v12;
        do
        {
          if (*v16)
          {
            v393 = v19 ? *v390 : 255;
            v394 = *v22;
            v395 = (v394 | (v393 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v394 | (v393 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v394 | (v393 << 24)) - (v395 & 0xFF000000 | BYTE1(v395));
            v396 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolorburnPDA_18024(*v14, *v7, (v394 - ((v394 * (*v16 ^ 0xFF) + 1 + ((v394 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v396);
                  v387 = v550;
                  v8 = v591;
                  v19 = v592;
                  v12 = v392;
                  v396 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v396;
              }

              else
              {
                result = PDAcolorburnPDA_18024(*v14, 0xFFu, (v394 - ((v394 * (*v16 ^ 0xFF) + 1 + ((v394 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v396);
                v387 = v550;
                v8 = v591;
                v19 = v592;
                v12 = v392;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v387;
          if (&v22[v32] >= v12)
          {
            v397 = v389;
          }

          else
          {
            v397 = 0;
          }

          v390 += v388 + v397;
          v22 += v32 + v397;
          --v391;
        }

        while (v391);
        if (v553)
        {
          v398 = v586;
          v399 = v520;
          if (v590 + v589 < v553)
          {
            v399 = 0;
          }

          v13 = &v571[v557 + v399];
          v400 = v535;
          if (v590 + v589 < v553)
          {
            v400 = 0;
          }

          v22 = (v590 + v589 + v400);
          v12 += v589 + v400;
          v390 = &v571[v557 + v399];
          v590 = v22;
        }

        else
        {
          v398 = v586;
          v22 += v589;
          v390 += v557;
          v13 = v571;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v398 - 1;
      }

      while (v9);
      return result;
    case 20:
      v259 = v8;
      v260 = v19;
      v261 = -v30;
      v515 = -(v557 * v33);
      v530 = -(v589 * v33);
      v262 = v13;
      v545 = v8;
      do
      {
        v566 = v13;
        v581 = v9;
        v263 = v558;
        v264 = v12;
        do
        {
          if (*v16)
          {
            v265 = v19 ? *v262 : 255;
            v266 = *v22;
            v267 = (v266 | (v265 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v266 | (v265 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v266 | (v265 << 24)) - (v267 & 0xFF000000 | BYTE1(v267));
            v268 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsoftlightPDA_18026(*v14, *v7, (v266 - ((v266 * (*v16 ^ 0xFF) + 1 + ((v266 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v268);
                  v259 = v545;
                  v8 = v591;
                  v19 = v592;
                  v12 = v264;
                  v268 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v268;
              }

              else
              {
                result = PDAsoftlightPDA_18026(*v14, 255, (v266 - ((v266 * (*v16 ^ 0xFF) + 1 + ((v266 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v268);
                v259 = v545;
                v8 = v591;
                v19 = v592;
                v12 = v264;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v259;
          if (&v22[v32] >= v12)
          {
            v269 = v261;
          }

          else
          {
            v269 = 0;
          }

          v262 += v260 + v269;
          v22 += v32 + v269;
          --v263;
        }

        while (v263);
        if (v553)
        {
          v270 = v581;
          v271 = v515;
          if (v590 + v589 < v553)
          {
            v271 = 0;
          }

          v13 = &v566[v557 + v271];
          v272 = v530;
          if (v590 + v589 < v553)
          {
            v272 = 0;
          }

          v22 = (v590 + v589 + v272);
          v12 += v589 + v272;
          v262 = &v566[v557 + v271];
          v590 = v22;
        }

        else
        {
          v270 = v581;
          v22 += v589;
          v262 += v557;
          v13 = v566;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v270 - 1;
      }

      while (v9);
      return result;
    case 21:
      v288 = v8;
      v289 = v19;
      v290 = -v30;
      v516 = -(v557 * v33);
      v531 = -(v589 * v33);
      v291 = v13;
      v546 = v8;
      do
      {
        v567 = v13;
        v582 = v9;
        v292 = v558;
        v293 = v12;
        do
        {
          if (*v16)
          {
            v294 = v19 ? *v291 : 255;
            v295 = *v22;
            v296 = (v295 | (v294 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v295 | (v294 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v295 | (v294 << 24)) - (v296 & 0xFF000000 | BYTE1(v296));
            v297 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhardlightPDA_18025(*v14, *v7, (v295 - ((v295 * (*v16 ^ 0xFF) + 1 + ((v295 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v297);
                  v288 = v546;
                  v8 = v591;
                  v19 = v592;
                  v12 = v293;
                  v297 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v297;
              }

              else
              {
                result = PDAhardlightPDA_18025(*v14, 0xFFu, (v295 - ((v295 * (*v16 ^ 0xFF) + 1 + ((v295 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v297);
                v288 = v546;
                v8 = v591;
                v19 = v592;
                v12 = v293;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v288;
          if (&v22[v32] >= v12)
          {
            v298 = v290;
          }

          else
          {
            v298 = 0;
          }

          v291 += v289 + v298;
          v22 += v32 + v298;
          --v292;
        }

        while (v292);
        if (v553)
        {
          v299 = v582;
          v300 = v516;
          if (v590 + v589 < v553)
          {
            v300 = 0;
          }

          v13 = &v567[v557 + v300];
          v301 = v531;
          if (v590 + v589 < v553)
          {
            v301 = 0;
          }

          v22 = (v590 + v589 + v301);
          v12 += v589 + v301;
          v291 = &v567[v557 + v300];
          v590 = v22;
        }

        else
        {
          v299 = v582;
          v22 += v589;
          v291 += v557;
          v13 = v567;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v299 - 1;
      }

      while (v9);
      return result;
    case 22:
      v373 = v8;
      v374 = v19;
      v375 = -v30;
      v519 = -(v557 * v33);
      v534 = -(v589 * v33);
      v376 = v13;
      v549 = v8;
      do
      {
        v570 = v13;
        v585 = v9;
        v377 = v558;
        v378 = v12;
        do
        {
          if (*v16)
          {
            v379 = v19 ? *v376 : 255;
            v380 = *v22;
            v381 = (v380 | (v379 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v380 | (v379 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v380 | (v379 << 24)) - (v381 & 0xFF000000 | BYTE1(v381));
            v382 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdifferencePDA_18027(*v14, *v7, (v380 - ((v380 * (*v16 ^ 0xFF) + 1 + ((v380 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v382);
                  v373 = v549;
                  v8 = v591;
                  v19 = v592;
                  v12 = v378;
                  v382 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v382;
              }

              else
              {
                result = PDAdifferencePDA_18027(*v14, 0xFFu, (v380 - ((v380 * (*v16 ^ 0xFF) + 1 + ((v380 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v382);
                v373 = v549;
                v8 = v591;
                v19 = v592;
                v12 = v378;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v373;
          if (&v22[v32] >= v12)
          {
            v383 = v375;
          }

          else
          {
            v383 = 0;
          }

          v376 += v374 + v383;
          v22 += v32 + v383;
          --v377;
        }

        while (v377);
        if (v553)
        {
          v384 = v585;
          v385 = v519;
          if (v590 + v589 < v553)
          {
            v385 = 0;
          }

          v13 = &v570[v557 + v385];
          v386 = v534;
          if (v590 + v589 < v553)
          {
            v386 = 0;
          }

          v22 = (v590 + v589 + v386);
          v12 += v589 + v386;
          v376 = &v570[v557 + v385];
          v590 = v22;
        }

        else
        {
          v384 = v585;
          v22 += v589;
          v376 += v557;
          v13 = v570;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v384 - 1;
      }

      while (v9);
      return result;
    case 23:
      v401 = v8;
      v402 = v19;
      v403 = -v30;
      v521 = -(v557 * v33);
      v536 = -(v589 * v33);
      v404 = v13;
      v551 = v8;
      do
      {
        v572 = v13;
        v587 = v9;
        v405 = v558;
        v406 = v12;
        do
        {
          if (*v16)
          {
            v407 = v19 ? *v404 : 255;
            v408 = *v22;
            v409 = (v408 | (v407 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v408 | (v407 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v408 | (v407 << 24)) - (v409 & 0xFF000000 | BYTE1(v409));
            v410 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAexclusionPDA_18028(*v14, *v7, (v408 - ((v408 * (*v16 ^ 0xFF) + 1 + ((v408 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v410);
                  v401 = v551;
                  v8 = v591;
                  v19 = v592;
                  v12 = v406;
                  v410 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v410;
              }

              else
              {
                result = PDAexclusionPDA_18028(*v14, 0xFFu, (v408 - ((v408 * (*v16 ^ 0xFF) + 1 + ((v408 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v410);
                v401 = v551;
                v8 = v591;
                v19 = v592;
                v12 = v406;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v401;
          if (&v22[v32] >= v12)
          {
            v411 = v403;
          }

          else
          {
            v411 = 0;
          }

          v404 += v402 + v411;
          v22 += v32 + v411;
          --v405;
        }

        while (v405);
        if (v553)
        {
          v412 = v587;
          v413 = v521;
          if (v590 + v589 < v553)
          {
            v413 = 0;
          }

          v13 = &v572[v557 + v413];
          v414 = v536;
          if (v590 + v589 < v553)
          {
            v414 = 0;
          }

          v22 = (v590 + v589 + v414);
          v12 += v589 + v414;
          v404 = &v572[v557 + v413];
          v590 = v22;
        }

        else
        {
          v412 = v587;
          v22 += v589;
          v404 += v557;
          v13 = v572;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v412 - 1;
      }

      while (v9);
      return result;
    case 24:
      v158 = v8;
      v159 = v19;
      v160 = -v30;
      v512 = -(v557 * v33);
      v527 = -(v589 * v33);
      v161 = v13;
      v542 = v8;
      do
      {
        v563 = v13;
        v578 = v9;
        v162 = v558;
        v163 = v12;
        do
        {
          if (*v16)
          {
            v164 = v19 ? *v161 : 255;
            v165 = *v22;
            v166 = (v165 | (v164 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v165 | (v164 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v165 | (v164 << 24)) - (v166 & 0xFF000000 | BYTE1(v166));
            v167 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_18029(*v14, *v7, (v165 - ((v165 * (*v16 ^ 0xFF) + 1 + ((v165 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v167);
                  v158 = v542;
                  v8 = v591;
                  v19 = v592;
                  v12 = v163;
                  v167 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v167;
              }

              else
              {
                result = PDAhuePDA_18029(*v14, 0xFFu, (v165 - ((v165 * (*v16 ^ 0xFF) + 1 + ((v165 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v167);
                v158 = v542;
                v8 = v591;
                v19 = v592;
                v12 = v163;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v158;
          if (&v22[v32] >= v12)
          {
            v168 = v160;
          }

          else
          {
            v168 = 0;
          }

          v161 += v159 + v168;
          v22 += v32 + v168;
          --v162;
        }

        while (v162);
        if (v553)
        {
          v169 = v578;
          v170 = v512;
          if (v590 + v589 < v553)
          {
            v170 = 0;
          }

          v13 = &v563[v557 + v170];
          v171 = v527;
          if (v590 + v589 < v553)
          {
            v171 = 0;
          }

          v22 = (v590 + v589 + v171);
          v12 += v589 + v171;
          v161 = &v563[v557 + v170];
          v590 = v22;
        }

        else
        {
          v169 = v578;
          v22 += v589;
          v161 += v557;
          v13 = v563;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v169 - 1;
      }

      while (v9);
      return result;
    case 25:
      v144 = v8;
      v145 = v19;
      v146 = -v30;
      v511 = -(v557 * v33);
      v526 = -(v589 * v33);
      v147 = v13;
      v541 = v8;
      do
      {
        v562 = v13;
        v577 = v9;
        v148 = v558;
        v149 = v12;
        do
        {
          if (*v16)
          {
            v150 = v19 ? *v147 : 255;
            v151 = *v22;
            v152 = (v151 | (v150 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v151 | (v150 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v151 | (v150 << 24)) - (v152 & 0xFF000000 | BYTE1(v152));
            v153 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_18029(*v14, *v7, (v151 - ((v151 * (*v16 ^ 0xFF) + 1 + ((v151 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v153);
                  v144 = v541;
                  v8 = v591;
                  v19 = v592;
                  v12 = v149;
                  v153 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v153;
              }

              else
              {
                result = PDAhuePDA_18029(*v14, 0xFFu, (v151 - ((v151 * (*v16 ^ 0xFF) + 1 + ((v151 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v153);
                v144 = v541;
                v8 = v591;
                v19 = v592;
                v12 = v149;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v144;
          if (&v22[v32] >= v12)
          {
            v154 = v146;
          }

          else
          {
            v154 = 0;
          }

          v147 += v145 + v154;
          v22 += v32 + v154;
          --v148;
        }

        while (v148);
        if (v553)
        {
          v155 = v577;
          v156 = v511;
          if (v590 + v589 < v553)
          {
            v156 = 0;
          }

          v13 = &v562[v557 + v156];
          v157 = v526;
          if (v590 + v589 < v553)
          {
            v157 = 0;
          }

          v22 = (v590 + v589 + v157);
          v12 += v589 + v157;
          v147 = &v562[v557 + v156];
          v590 = v22;
        }

        else
        {
          v155 = v577;
          v22 += v589;
          v147 += v557;
          v13 = v562;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v155 - 1;
      }

      while (v9);
      return result;
    case 26:
      v415 = v8;
      v416 = v19;
      v417 = -v30;
      v522 = -(v557 * v21);
      v537 = -(v589 * v21);
      v418 = v13;
      do
      {
        v573 = v13;
        v588 = v9;
        v419 = v558;
        v552 = v12;
        do
        {
          if (*v16)
          {
            v420 = v19 ? *v418 : 255;
            v421 = *v22;
            v422 = (v421 | (v420 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v421 | (v420 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v421 | (v420 << 24)) - (v422 & 0xFF000000 | BYTE1(v422));
            v423 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_18031((v421 - ((v421 * (*v16 ^ 0xFF) + 1 + ((v421 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v423, *v14, *v7);
                  v8 = v591;
                  v19 = v592;
                  v12 = v552;
                  v423 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v423;
              }

              else
              {
                result = PDAluminosityPDA_18031((v421 - ((v421 * (*v16 ^ 0xFF) + 1 + ((v421 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v423, *v14, 0xFFu);
                v8 = v591;
                v19 = v592;
                v12 = v552;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v415;
          if (&v22[v32] >= v12)
          {
            v424 = v417;
          }

          else
          {
            v424 = 0;
          }

          v418 += v416 + v424;
          v22 += v32 + v424;
          --v419;
        }

        while (v419);
        if (v553)
        {
          v425 = v588;
          v426 = v522;
          if (v590 + v589 < v553)
          {
            v426 = 0;
          }

          v13 = &v573[v557 + v426];
          v427 = v537;
          if (v590 + v589 < v553)
          {
            v427 = 0;
          }

          v22 = (v590 + v589 + v427);
          v12 += v589 + v427;
          v418 = &v573[v557 + v426];
          v590 = v22;
        }

        else
        {
          v425 = v588;
          v22 += v589;
          v418 += v557;
          v13 = v573;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v425 - 1;
      }

      while (v9);
      return result;
    case 27:
      v44 = v8;
      v45 = v19;
      v46 = -v30;
      v508 = -(v557 * v33);
      v523 = -(v589 * v33);
      v47 = v13;
      v538 = v8;
      do
      {
        v559 = v13;
        v574 = v9;
        v48 = v558;
        v49 = v12;
        do
        {
          if (*v16)
          {
            v50 = v19 ? *v47 : 255;
            v51 = *v22;
            v52 = (v51 | (v50 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v51 | (v50 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v51 | (v50 << 24)) - (v52 & 0xFF000000 | BYTE1(v52));
            v53 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_18031(*v14, *v7, (v51 - ((v51 * (*v16 ^ 0xFF) + 1 + ((v51 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v53);
                  v44 = v538;
                  v8 = v591;
                  v19 = v592;
                  v12 = v49;
                  v53 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v53;
              }

              else
              {
                result = PDAluminosityPDA_18031(*v14, 0xFFu, (v51 - ((v51 * (*v16 ^ 0xFF) + 1 + ((v51 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v53);
                v44 = v538;
                v8 = v591;
                v19 = v592;
                v12 = v49;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v44;
          if (&v22[v32] >= v12)
          {
            v54 = v46;
          }

          else
          {
            v54 = 0;
          }

          v47 += v45 + v54;
          v22 += v32 + v54;
          --v48;
        }

        while (v48);
        if (v553)
        {
          v55 = v574;
          v56 = v508;
          if (v590 + v589 < v553)
          {
            v56 = 0;
          }

          v13 = &v559[v557 + v56];
          v57 = v523;
          if (v590 + v589 < v553)
          {
            v57 = 0;
          }

          v22 = (v590 + v589 + v57);
          v12 += v589 + v57;
          v47 = &v559[v557 + v56];
          v590 = v22;
        }

        else
        {
          v55 = v574;
          v22 += v589;
          v47 += v557;
          v13 = v559;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v55 - 1;
      }

      while (v9);
      return result;
    default:
      return result;
  }

  do
  {
    v453 = v558;
    do
    {
      v454 = *v16;
      if (!*v16)
      {
        goto LABEL_758;
      }

      if (v454 == 255)
      {
        v455 = *v452;
        if (!*v452)
        {
          goto LABEL_758;
        }

        if (v455 == 255)
        {
          LOBYTE(v456) = *v22;
        }

        else
        {
          result = *v14;
          v456 = *v22 + ((result * (v455 ^ 0xFF) + ((result * (v455 ^ 0xFF)) >> 8) + 1) >> 8);
        }
      }

      else
      {
        v457 = *v22;
        result = *v452;
        v458 = (v457 | (result << 16)) * (v454 ^ 0xFF) + 65537 + ((((v457 | (result << 16)) * (v454 ^ 0xFFu)) >> 8) & 0xFF00FF);
        v459 = (v457 | (result << 24)) - (v458 & 0xFF000000 | BYTE1(v458));
        if (!HIBYTE(v459))
        {
          goto LABEL_758;
        }

        result = ~v459 >> 24;
        v456 = v459 + ((result * *v14 + ((result * *v14) >> 8) + 1) >> 8);
      }

      *v14 = v456;
LABEL_758:
      v16 += v32;
      v14 += v32;
      v460 = &v452[v19];
      if (&v22[v32] >= v12)
      {
        v461 = v449;
      }

      else
      {
        v461 = 0;
      }

      v452 = &v460[v461];
      v22 += v32 + v461;
      --v453;
    }

    while (v453);
    if (v26)
    {
      if (v590 + v589 >= v26)
      {
        v462 = v451;
      }

      else
      {
        v462 = 0;
      }

      v13 += v557 + v462;
      if (v590 + v589 >= v26)
      {
        v463 = v450;
      }

      else
      {
        v463 = 0;
      }

      v22 = (v590 + v589 + v463);
      v12 += v589 + v463;
      v452 = v13;
      v590 = v22;
    }

    else
    {
      v22 += v589;
      v452 += v557;
    }

    v16 += v556;
    v14 += v555;
    --v9;
  }

  while (v9);
  return result;
}

void ripc_ContextRestore(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 120);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v6;
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 56);
  if (v7)
  {
    ripr_release(v7);
  }

  *(a1 + 56) = *(a2 + 56);
  v8 = *(a1 + 64);
  if (v8)
  {
    ripr_release(v8);
  }

  *(a1 + 64) = *(a2 + 64);
  v9 = *(a1 + 80);
  if (v9 && *v9)
  {
    (*(*v9 + 24))(v9);
  }

  *(a1 + 80) = *(a2 + 80);
  ripc_ReleaseClipState((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 216) = *(a2 + 216);
}

dispatch_once_t RIPLayerCoverage(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = RIPGetDepthForLayerFormat(0);
  if (v2 != result)
  {
    v4 = *(a1 + 32);
    result = RIPGetDepthForLayerFormat(1u);
    if (v4 == result && !*(a1 + 72))
    {
      result = RIPGetDepthForLayerFormat(0);
      *(a1 + 32) = result;
    }
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceSoftMask *,std::shared_ptr<CG::DisplayListResourceSoftMask>::__shared_ptr_default_delete<CG::DisplayListResourceSoftMask,CG::DisplayListResourceSoftMask>,std::allocator<CG::DisplayListResourceSoftMask>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceSoftMask::~DisplayListResourceSoftMask(CG::DisplayListResourceSoftMask *this)
{
  *this = &unk_1EF23F6A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F6A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void soft_mask_finalize(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    v6 = a1[15];

    v5(v6);
  }
}

void CGClipGetBounds(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 8);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      CGClipMaskGetBounds(*(a1 + 24));
    }
  }

  else if (v2 == 2)
  {
    CGPathGetBoundingBox(*(a1 + 24));
  }
}

CGFloat CGImageTextureDataGetSize(uint64_t a1)
{
  v1 = (a1 + 72);
  if (!a1)
  {
    v1 = &CGSizeZero;
  }

  return v1->width;
}

void RIPClipStateRemoveEntry(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  *a2 = a2;
  a2[1] = a2;
  v6 = a2[11];
  if ((v6 + 1) >= 2)
  {
    (*(*v6 + 24))(v6);
  }

  free(a2);
  --*(a1 + 40);
}

uint64_t CGColorSpaceGetCICPInfo(uint64_t result, _DWORD *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  if (CGColorSpaceGetType(v3) == 6)
  {
    v5 = (*(v3[3] + 96) + 8);
  }

  else
  {
    if (CGColorSpaceGetType(v3) != 11)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v5 = *(v3[3] + 96);
  }

  v6 = *v5;
LABEL_12:
  if (CGColorSpaceGetCICPInfo_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorSpaceGetCICPInfo_cglibrarypredicate, &__block_literal_global_49);
  }

  result = CGColorSpaceGetCICPInfo_f(v6);
  if (result)
  {
    if (a2)
    {
      *a2 = *result;
    }

    return 1;
  }

  return result;
}

uint64_t rip_auto_context_draw_shading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = 120;
    pthread_mutex_lock(0x78);
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 288);
  v7 = v6 + 120;
  pthread_mutex_lock((v6 + 120));
  if (!v6)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 88);
  if (!v8)
  {
    v8 = *(v6 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v6, a3);
  v9 = *(v6 + 112);
  v10 = *(a3 + 120);
  if (*(v10 + 48) >= v9)
  {
    v9 = *(v10 + 48);
  }

  *(v6 + 112) = v9;
  v11 = *(a4 + 24);
  content_type_from_color_space = rip_adaptive_bitmap_context_get_content_type_from_color_space(v11);
  *(v6 + 116) |= content_type_from_color_space;
  if (content_type_from_color_space != 1)
  {
    if (content_type_from_color_space == 2)
    {
      v13 = *(v6 + 104) | CGColorSpaceIsWideGamutRGB(v11);
    }

    else
    {
      v13 = 1;
    }

    *(v6 + 104) = v13;
  }

  v14 = *(v6 + 108);
  if (v14 <= CGColorSpaceGetHeadroomInfo(v11, 0))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(v11, 0);
  }

  else
  {
    HeadroomInfo = *(v6 + 108);
  }

  *(v6 + 108) = HeadroomInfo;
  if (v8)
  {
    v16 = *(v8 + 40);
    if (v16)
    {
      v17 = *(v16 + 96);
      if (v17)
      {
        v18 = v17();
      }

      else
      {
        v18 = 1006;
      }
    }

    else
    {
      v18 = 0;
    }

    *(v6 + 105) |= rip_auto_context_contains_transparency(v6);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(v7);
  return v18;
}

uint64_t dlRecorder_DrawShading(uint64_t a1, uint64_t a2, uint64_t a3, CGShading *a4)
{
  if (!a1 || (v4 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawShading");
    return 1000;
  }

  v8 = CG::DisplayListRecorder::currentDisplayList(v4);
  if (!v8)
  {
    return 1000;
  }

  v9 = v8;
  if (v8[5] == INFINITY || v8[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v9[7] != 0.0 && v9[8] != 0.0)
  {
    v12 = *(a3 + 40);
    v38 = *(a3 + 24);
    v39 = v12;
    v13 = *(a3 + 56);
    v40 = v13;
    if (*(v9 + 73) != 1 || (*(a4 + 40) != 1 ? (v14 = &CGRectInfinite, p_height = &CGRectInfinite.size.height, p_y = &CGRectInfinite.origin.y, p_size = &CGRectInfinite.size) : (v14 = (a4 + 48), p_y = (a4 + 56), p_size = (a4 + 64), p_height = (a4 + 72)), (v13.n128_f64[0] = *p_height, v18 = *p_y, width = p_size->width, x = v14->origin.x, v35 = v18, v36 = width, v37 = v13.n128_f64[0], v20 = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v13), result = 0, x = v20, v35 = v21, v36 = v22, v37 = v23, v20 != INFINITY) && v21 != INFINITY && (result = 0, v22 != 0.0) && v23 != 0.0))
    {
      v24 = CG::DisplayList::shadingResourceForShading((v9 + 2), a4);
      if (v24)
      {
        v25 = v24;
        EntryDrawingState = CG::DisplayList::getEntryDrawingState(v9 + 2, a3, a2);
        v27 = EntryDrawingState[1];
        if (v27)
        {
          v28 = *(v27 + 8);
          v29 = EntryDrawingState[2];
          if (v29)
          {
            v28 |= *(v29 + 8);
          }

          v30 = v28 & 0x1000;
          v31 = EntryDrawingState[3];
          if (v31)
          {
            v30 |= *(v31 + 8) & 0x3400;
          }

          v32 = *(a3 + 120);
          if (*(v32 + 8) >= 1.0)
          {
            v33 = *(v25 + 8) & 0x1000 | v30;
          }

          else
          {
            LOWORD(v33) = v30 | 0x1000;
          }

          if ((v33 & 0x1000) == 0 && (((*(v32 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
          {
            LOWORD(v33) = v33 | 0x1000;
          }

          if ((v33 & 0x3000) != 0)
          {
            *(v9 + 20) |= v33 & 0x3000;
          }

          if (*(v9 + 74) == 1)
          {
            if ((v33 & 0x400) != 0)
            {
              CG::DisplayList::getEntryPatternState((v9 + 2), a3, a2);
            }

            operator new();
          }

          return 0;
        }
      }

      return 1000;
    }
  }

  return result;
}

uint64_t CG::DisplayList::shadingResourceForShading(CG::DisplayList *this, CGShading *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 94);
  v3 = this + 376;
  v4 = *(this + 47);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 376;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

unsigned int *CG::DisplayListEntryShading::_hash(uint64_t a1, unsigned int *a2)
{
  __src = *(*(*(a1 + 80) + 16) + 16);
  XXH64_update(a2, &__src, 4uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 140), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceShading *,std::shared_ptr<CG::DisplayListResourceShading>::__shared_ptr_default_delete<CG::DisplayListResourceShading,CG::DisplayListResourceShading>,std::allocator<CG::DisplayListResourceShading>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceShading::~DisplayListResourceShading(CG::DisplayListResourceShading *this)
{
  *this = &unk_1EF239AF0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  CG::DisplayListResourceShading::~DisplayListResourceShading(this);

  JUMPOUT(0x1865EE610);
}

uint64_t RGBA32_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v7 = *(v6 + 56);
  v8 = *v2;
  v9 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v10 = *(v7 + 16 * v8 + 8 * v9 + 4 * (*(v2 + 6) == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, v15, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 >= 24 && *v6 == 134755208)
  {
    v10 += 4;
  }

  if ((*v4 & 0xF000000) == 0x3000000)
  {
    if (*(v4 + 16))
    {
      v12 = RGBA32_shade_radial_RGB;
    }

    else if (*(v4 + 24))
    {
      v12 = RGBA32_shade_conic_RGB;
    }

    else if (*(&v17 + 1) < 2)
    {
      v12 = RGBA32_shade_axial_RGB;
    }

    else
    {
      v12 = RGBA32_shade_custom_RGB;
    }

    *&v15[0] = v12;
    if (v38)
    {
      *(&v37 + 1) = v44;
      _blt_shade_samples_16(v44, 2, 3, v38, *(&v38 + 1), 1uLL);
    }

    v13 = *(&v17 + 1) * v17;
    if ((*(&v17 + 1) * v17) <= 480)
    {
      v14 = v42;
      v36[1] = v42;
LABEL_30:
      _blt_shade_samples_16(v14, 2, 3, v16, *(&v16 + 1), v13);
      if (*(v4 + 1))
      {
        *&v37 = &_blt_shade_samples_noise;
      }

      goto LABEL_32;
    }

    v14 = malloc_type_malloc(8 * v13 + 32, 0x24046928uLL);
    if (v14)
    {
      v36[1] = v14;
      v13 = *(&v17 + 1) * v17;
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v15[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_32:
  DWORD2(v15[0]) = *v6;
  HIDWORD(v15[0]) = DWORD2(v15[0]);
  argb32_image_mark(v5, v15, v10);
  if (v36[1] && (v36[1] < v42 || &v43 < v36[1]))
  {
    free(v36[1]);
  }

  return 1;
}

void layerFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __CGLayerGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGLayerGetTypeID_class);
  CGLayerGetTypeID_layer_type_id = result;
  return result;
}

uint64_t __CGSoftMaskGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGSoftMaskGetTypeID_runtime_class);
  CGSoftMaskGetTypeID_soft_mask_type_id = result;
  return result;
}

uint64_t CGGradientCreateWithColorComponentsAndOptions(CGColorSpace *a1, double *a2, double *a3, size_t a4, const __CFDictionary *a5)
{
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(a1, 0);

  return create_gradient(a1, a2, a3, a4, a5, HeadroomInfo);
}

void CGContextDrawLinearGradient(CGContextRef c, CGGradientRef gradient, CGPoint startPoint, CGPoint endPoint, CGGradientDrawingOptions options)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (gradient)
      {
        v7 = options;
        y = endPoint.y;
        x = endPoint.x;
        v10 = startPoint.y;
        v11 = startPoint.x;
        v12 = CFGetTypeID(gradient);
        if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
        {
          v17 = v12;
          dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
          v12 = v17;
        }

        if (v12 == CGGradientGetTypeID_gradient_type_id)
        {
          v13 = *(c + 5);
          if (v13)
          {
            v14 = *(v13 + 104);
            if (!v14 || v14(v11, v10, x, y) == 1006)
            {
              AxialWithGradient = CGShadingCreateAxialWithGradient(gradient, v7 & 1, (v7 & 2) != 0, v11, v10, x, y);
              CGContextDrawShading(c, AxialWithGradient);
              if (AxialWithGradient)
              {

                CFRelease(AxialWithGradient);
              }
            }
          }
        }
      }

      return;
    }

    v16 = c;
  }

  else
  {
    v16 = 0;
  }

  handle_invalid_context("CGContextDrawLinearGradient", v16);
}

CGFunctionRef CGGradientGetFunction(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGGradientGetFunction", 440, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGGradient.c", "g != NULL", "gradient is missing");
  }

  result = *(a1 + 32);
  if (!result)
  {
    v3 = malloc_type_malloc(0x20uLL, 0x10E004015446177uLL);
    v4 = *(a1 + 40);
    v3[2] = *(a1 + 48);
    *v3 = CFRetain(v4);
    v3[3] = CFDataGetBytePtr(*(a1 + 40));
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(*(v5 + 3) + 48) + 1;
    }

    else
    {
      v6 = 1;
    }

    v3[1] = v6;
    v7 = CGColorSpaceUsesExtendedRange(v5);
    v8 = &create_function_default_range;
    if (v7)
    {
      v8 = &create_function_extended_range;
    }

    if (*(a1 + 20))
    {
      v9 = &create_function_premul_callbacks;
    }

    else
    {
      v9 = &create_function_default_callbacks;
    }

    result = CGFunctionCreate(v3, 1uLL, create_function_domain, v3[1], &v8[10 - 2 * v3[1]], v9);
    *(a1 + 32) = result;
    if (!result)
    {
      CFRelease(*v3);
      free(v3);
      return 0;
    }
  }

  return result;
}

CGFunctionRef CGFunctionCreate(void *info, size_t domainDimension, const CGFloat *domain, size_t rangeDimension, const CGFloat *range, const CGFunctionCallbacks *callbacks)
{
  v6 = 0;
  if (domainDimension && rangeDimension && callbacks)
  {
    if (callbacks->evaluate)
    {
      if (_block_invoke_once_6183 != -1)
      {
        dispatch_once(&_block_invoke_once_6183, &__block_literal_global_8_6184);
      }

      Instance = CGTypeCreateInstance(CGFunctionGetTypeID_function_type_id, 96);
      v6 = Instance;
      *(Instance + 16) = atomic_fetch_add_explicit(CGFunctionCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(Instance + 24) = info;
      releaseInfo = callbacks->releaseInfo;
      *(Instance + 64) = *&callbacks->version;
      *(Instance + 80) = releaseInfo;
      *(Instance + 88) = 0;
      *(Instance + 96) = 0;
      *(Instance + 104) = 0;
      *(Instance + 32) = domainDimension;
      if (domain)
      {
        v15 = 16 * domainDimension;
        v16 = malloc_type_malloc(v15, 0x858C06A2uLL);
        *(v6 + 5) = v16;
        memcpy(v16, domain, v15);
      }

      else
      {
        *(Instance + 40) = 0;
      }

      *(v6 + 6) = rangeDimension;
      if (range)
      {
        v17 = 16 * rangeDimension;
        v18 = malloc_type_malloc(v17, 0xCDC6BFCBuLL);
        *(v6 + 7) = v18;
        memcpy(v18, range, v17);
      }

      else
      {
        *(v6 + 7) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t CGShadingCreateAxialInternal(void *a1, uint64_t *a2, const CGRect *a3, double *a4, void *a5, char a6, char a7, double a8, double a9, double a10, double a11)
{
  Empty = 0;
  if (a1 && a5)
  {
    v14 = *(a1[3] + 48);
    v15 = a5[6];
    if (v15 == v14 || v15 == v14 + 1)
    {
      Empty = CGShadingCreateEmpty(1, a1, a2, a3);
      *(Empty + 128) = a8;
      *(Empty + 136) = a9;
      *(Empty + 144) = a6;
      *(Empty + 152) = a10;
      *(Empty + 160) = a11;
      *(Empty + 168) = a7;
      CFRetain(a5);
      *(Empty + 192) = a5;
      if (a4)
      {
        *(Empty + 176) = *a4;
        v23 = a4[1];
      }

      else
      {
        *(Empty + 176) = 0;
        v23 = 1.0;
      }

      *(Empty + 184) = v23;
    }

    else
    {
      return 0;
    }
  }

  return Empty;
}

uint64_t CGShadingCreateEmpty(int a1, void *a2, uint64_t *a3, const CGRect *a4)
{
  if ((a1 - 1) > 3)
  {
    v8 = 112;
  }

  else
  {
    v8 = qword_1844DF998[a1 - 1];
  }

  if (_block_invoke_once_10784 != -1)
  {
    dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
  }

  Instance = CGTypeCreateInstance(CGShadingGetTypeID_shading_type_id, v8);
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 16) = atomic_fetch_add_explicit(CGShadingCreateEmpty_identifier, 1u, memory_order_relaxed) + 1;
    if (a2)
    {
      CFRetain(a2);
      *(v10 + 24) = a2;
      *(v10 + 20) = a1;
      if (a3)
      {
        v11 = *(a2[3] + 48);
LABEL_11:
        v12 = v11 + 1;
        v13 = v11 == -1;
        v14 = malloc_type_malloc(8 * (v11 + 1), 0x100004000313F17uLL);
        if (!v13)
        {
          v15 = v14;
          do
          {
            v16 = *a3++;
            *v15++ = v16;
            --v12;
          }

          while (v12);
        }

        *(v10 + 32) = v14;
      }
    }

    else
    {
      v11 = 0;
      *(Instance + 24) = 0;
      *(Instance + 20) = a1;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    v17 = &CGRectNull;
    if (a4)
    {
      v17 = a4;
    }

    *(v10 + 40) = a4 != 0;
    size = v17->size;
    *(v10 + 48) = v17->origin;
    *(v10 + 64) = size;
    *(v10 + 88) = 0;
    *(v10 + 96) = CGColorSpaceGetHeadroomInfo(a2, 0);
  }

  return v10;
}

void CGContextDrawShading(CGContextRef c, CGShadingRef shading)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (shading)
      {
        v2 = *(c + 5);
        if (v2)
        {
          v3 = *(v2 + 96);
          if (v3)
          {
            v3();
          }
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextDrawShading", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextDrawShading", 0);
  }
}

void gradient_finalize(uint64_t a1)
{
  CGColorSpaceRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t ripc_DrawShading(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v360 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a1[36];
  }

  else
  {
    v9 = 0;
  }

  v344 = 0u;
  v345 = 0u;
  v343 = 0u;
  v338 = 0u;
  v339 = 0u;
  v340 = 0u;
  v341 = 0u;
  v342 = 0;
  v337 = 0;
  v334 = 0u;
  v335 = 0u;
  v336 = 0u;
  memset(&v333, 0, sizeof(v333));
  v331 = 0;
  v332 = 0;
  result = ripc_GetRenderingState(v9, a2, a3, &v343);
  if (!result)
  {
    return result;
  }

  v17 = (v6 + 24);
  v18 = *(v6 + 24);
  v20 = *(v6 + 40);
  v19 = *(v6 + 56);
  v21 = *(v9 + 40);
  if (v21 != 1.0)
  {
    v20 = vmulq_n_f64(v20, v21);
    v18 = vmulq_n_f64(v18, v21);
    v19 = vmulq_n_f64(v19, v21);
  }

  v22.n64_f64[0] = SDWORD2(v344);
  v23 = SHIDWORD(v344);
  v24 = v345;
  v25 = SDWORD1(v345);
  p_y = &CGRectInfinite.origin.y;
  p_size = &CGRectInfinite.size;
  v28 = (a4 + 48);
  if (*(a4 + 40) == 1)
  {
    p_size = (a4 + 64);
    p_y = (a4 + 56);
    p_height = (a4 + 72);
  }

  else
  {
    v28 = &CGRectInfinite;
    p_height = &CGRectInfinite.size.height;
  }

  v30 = *p_height;
  x = v28->origin.x;
  v32 = *p_y;
  width = p_size->width;
  if (v28->origin.x == -8.98846567e307 && v32 == -8.98846567e307 && width == 1.79769313e308 && v30 == 1.79769313e308)
  {
    v342 = 0;
    v34 = 1;
    y = -8.98846567e307;
    height = 1.79769313e308;
    v37 = 1.79769313e308;
    v38 = -8.98846567e307;
  }

  else
  {
    v326 = v20;
    v327 = v18;
    *&v346.a = v18;
    *&v346.c = v20;
    v328 = v19;
    *&v346.tx = v19;
    v330.n64_f64[0] = SDWORD2(v344);
    v325 = SHIDWORD(v344);
    v324.f64[0] = v345;
    *v329.i64 = SDWORD1(v345);
    v55.n64_u64[0] = CGRectApplyInverseAffineTransform(&v346.a, v22, v23, v24, v25).n64_u64[0];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v361.origin.x = x;
    v361.origin.y = v32;
    v361.size.width = width;
    v361.size.height = v30;
    v396.origin.x = v55.n64_f64[0];
    v396.origin.y = v57;
    v396.size.width = v59;
    v396.size.height = v61;
    v362 = CGRectIntersection(v361, v396);
    v38 = v362.origin.x;
    if (v362.origin.x == INFINITY || v362.origin.y == INFINITY)
    {
      return 0;
    }

    v37 = v362.size.width;
    result = 0;
    if (v362.size.width == 0.0)
    {
      return result;
    }

    height = v362.size.height;
    if (v362.size.height == 0.0)
    {
      return result;
    }

    y = v362.origin.y;
    v363.origin.x = v55.n64_f64[0];
    v363.origin.y = v57;
    v363.size.width = v59;
    v363.size.height = v61;
    v397.origin.x = v38;
    v397.origin.y = y;
    v397.size.width = v37;
    v397.size.height = height;
    if (CGRectContainsRect(v363, v397))
    {
      v342 = 0;
      v34 = 1;
      v23 = v325;
      v25 = *v329.i64;
      v24 = v324.f64[0];
      v22.n64_u64[0] = v330.n64_u64[0];
    }

    else
    {
      if (v37 < 0.0 || (v99 = v38, v100 = y, v101 = v37, v102 = height, height < 0.0))
      {
        v364.origin.x = v38;
        v364.origin.y = y;
        v364.size.width = v37;
        v364.size.height = height;
        *&v99 = CGRectStandardize(v364);
      }

      v323 = v6;
      v334 = vmlaq_n_f64(vmulq_f64(v326, 0), v327, v101);
      v335 = vmlaq_f64(vmulq_n_f64(v326, v102), 0, v327);
      v336 = vaddq_f64(v328, vmlaq_n_f64(vmulq_n_f64(v326, v100), v327, v99));
      v342 = &v334;
      *&v346.a = v327;
      *&v346.c = v326;
      *&v346.tx = v328;
      v365.origin.x = v38;
      v365.origin.y = y;
      v365.size.width = v37;
      v365.size.height = height;
      *(&v11 - 24) = CGRectApplyAffineTransform(v365, &v346);
      v22.n64_u64[0] = *&v366.origin.x;
      v23 = v366.origin.y;
      v25 = v11.f64[0];
      if (v24 < 0.0 || v11.f64[0] < 0.0)
      {
        v157 = v366.origin.x;
        v158 = v24;
        v330.n64_f64[0] = 0.00390625;
        v103 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v11 - 24))) + 0.00390625);
        v382.origin.x = v157;
        v382.origin.y = v23;
        v382.size.width = v158;
        v382.size.height = v25;
        v383 = CGRectStandardize(v382);
        v104 = vcvtpd_s64_f64(v383.origin.x + v383.size.width + -0.00390625);
        v383.origin.x = v157;
        v383.origin.y = v23;
        v383.size.width = v158;
        v383.size.height = v25;
        v384 = CGRectStandardize(v383);
        LODWORD(v4) = vcvtmd_s64_f64(v384.origin.y + 0.00390625);
        v384.origin.x = v157;
        v384.origin.y = v23;
        v384.size.width = v158;
        v384.size.height = v25;
        *(&v11 - 24) = CGRectStandardize(v384);
        v24 = v158;
        v22.n64_f64[0] = v157;
      }

      else
      {
        v103 = vcvtmd_s64_f64(v366.origin.x + 0.00390625);
        v104 = vcvtpd_s64_f64(v366.origin.x + v24 + -0.00390625);
        LODWORD(v4) = vcvtmd_s64_f64(v366.origin.y + 0.00390625);
      }

      v34 = 0;
      v331 = v103 | (v4 << 32);
      LODWORD(v332) = v104 - v103;
      HIDWORD(v332) = vcvtpd_s64_f64(v366.origin.y + v11.f64[0] + -0.00390625) - v4;
      v6 = v323;
    }

    v18 = v327;
    v19 = v328;
    v20 = v326;
  }

  v39 = *(*(v6 + 120) + 4);
  v40 = *(a4 + 20);
  result = 1000;
  if (v40 <= 1)
  {
    if (!v40)
    {
      v95 = v24;
      Copy = CGGStateCreateCopy(v6);
      *(Copy + 24) = CGAffineTransformIdentity;
      CGGStateClipToRect(Copy, v22.n64_f64[0], v23, v95, v25);
      v97 = *v17;
      v98 = v17[1];
      *(Copy + 56) = v17[2];
      *(Copy + 40) = v98;
      *(Copy + 24) = v97;
      CGShadingDrawInContextDelegate(a4, a1, v7, Copy);
      CGGStateRelease(Copy);
      return 0;
    }

    v330.n64_u64[0] = v22.n64_u64[0];
    *v329.i64 = v25;
    if (v40 != 1)
    {
      return result;
    }

    v63 = *(a4 + 128);
    v64 = *(a4 + 136);
    v65 = *(a4 + 152) - v63;
    v66 = *(a4 + 160) - v64;
    v67 = *(a4 + 176);
    *v355.f32 = vcvt_f32_f64(v67);
    v355.i64[1] = 0x3F80000000000000;
    v68 = v67.f64[1];
    v69 = v67.f64[1] - v67.f64[0];
    if (v65 == 0.0 && v66 == 0.0)
    {
      v70 = 1.0;
      v71 = 0.0;
      v72 = 1.0;
    }

    else
    {
      v72 = sqrt(v66 * v66 + v65 * v65);
      v70 = v65 / v72;
      v71 = v66 / v72;
    }

    v123 = v72 / v69;
    v12.f64[0] = v70 * v123;
    v14.f64[0] = v71 * v123;
    v15.f64[0] = -(v71 * v123);
    v124 = -(v67.f64[0] * v123);
    v16.f64[0] = v63 + v124 * v70;
    v11.f64[0] = v64 + v124 * v71;
    v108 = vmlaq_n_f64(vmulq_n_f64(v20, v14.f64[0]), v18, v12.f64[0]);
    v125 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v20, v11.f64[0]), v18, v16.f64[0]));
    *&v333.a = v108;
    *&v333.c = vmlaq_n_f64(vmulq_n_f64(v20, v12.f64[0]), v18, v15.f64[0]);
    *&v333.tx = v125;
    v325 = *(a4 + 32);
    v126 = v23;
    v127 = *v329.i64;
    if (v325 == 0.0 && (*(a4 + 144) & 1) == 0 && (*(a4 + 168) & 1) == 0)
    {
      v313 = v16;
      v314 = v11;
      v315 = v15;
      v316 = v14;
      v317 = v12;
      v318 = v67;
      v320 = v125;
      v324 = v108;
      v319.f64[0] = v67.f64[1] - v67.f64[0];
      v326 = v20;
      v327 = v18;
      v328 = v19;
      v346 = v333;
      v128 = v24;
      v129.n64_u64[0] = CGRectApplyInverseAffineTransform(&v346.a, v330, v23, v24, *v329.i64).n64_u64[0];
      result = 0;
      if (v129.n64_f64[0] > v68)
      {
        return result;
      }

      v133 = v318.f64[0];
      if (v129.n64_f64[0] + v131.n64_f64[0] < v318.f64[0])
      {
        return result;
      }

      v134 = v130.n64_u64[0];
      v135 = v319.f64[0];
      v136 = v132.n64_u64[0];
      v371 = CGRectIntersection(*v129.n64_u64, *&v133);
      if (v34)
      {
        *&v346.a = *&v333.a;
        *&v346.c = *&v333.c;
        v137 = *&v333.tx;
      }

      else
      {
        v346.a = v317.f64[0];
        v346.b = v316.f64[0];
        v346.c = v315.f64[0];
        v346.d = v317.f64[0];
        v346.tx = v313.f64[0];
        v346.ty = v314.f64[0];
        v401 = CGRectApplyAffineTransform(v371, &v346);
        v388.origin.x = v38;
        v388.origin.y = y;
        v388.size.width = v37;
        v388.size.height = height;
        v371 = CGRectIntersection(v388, v401);
        *&v346.c = v326;
        *&v346.a = v327;
        v137 = v328;
      }

      *&v346.tx = v137;
      v402 = CGRectApplyAffineTransform(v371, &v346);
      v389.origin.y = v23;
      *&v389.size.height = v329.i64[0];
      v389.origin.x = v330.n64_f64[0];
      v389.size.width = v128;
      *(&v24 - 2) = CGRectIntersection(v389, v402);
      v330.n64_u64[0] = v175;
      v126 = v176;
      v127 = v177;
      v69 = v319.f64[0];
      v108 = v324;
      v125 = v320;
    }

    v50 = v6;
    if (v24 < 0.0 || v127 < 0.0)
    {
      v180 = v330.n64_u64[0];
      v181 = v126;
      v182 = v127;
      v183 = v24;
      v184 = v69;
      v324 = v108;
      v320 = v125;
      v178 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v390.origin.x = v330.n64_f64[0];
      v390.origin.y = v126;
      v390.size.width = v183;
      v390.size.height = v127;
      v391 = CGRectStandardize(v390);
      v179 = vcvtpd_s64_f64(v391.origin.x + v391.size.width + -0.00390625);
      v391.origin.x = v330.n64_f64[0];
      v391.origin.y = v126;
      v391.size.width = v183;
      v391.size.height = v127;
      v392 = CGRectStandardize(v391);
      LODWORD(v4) = vcvtmd_s64_f64(v392.origin.y + 0.00390625);
      v392.origin.x = v330.n64_f64[0];
      v392.origin.y = v126;
      v392.size.width = v183;
      v392.size.height = v127;
      v393 = CGRectStandardize(v392);
      v125 = v320;
      v108.f64[0] = v324.f64[0];
      v69 = v184;
      v126 = v393.origin.y;
      v127 = v393.size.height;
    }

    else
    {
      v178 = vcvtmd_s64_f64(v330.n64_f64[0] + 0.00390625);
      v179 = vcvtpd_s64_f64(v330.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v126 + 0.00390625);
    }

    v185 = vcvtpd_s64_f64(v126 + v127 + -0.00390625);
    *&v338 = v178 | (v4 << 32);
    v186.f64[0] = v125.f64[0];
    v186.f64[1] = v185;
    DWORD2(v338) = v179 - v178;
    HIDWORD(v338) = v185 - v4;
    v125.f64[0] = v178;
    *&v333.tx = vsubq_f64(v186, v125);
    v144 = *&v333.b;
    *&v333.b = vnegq_f64(*&v333.b);
    *&v341 = &v333;
    *(&v339 + 1) = 0;
    *&v340 = 0;
    *&v339 = &v355;
    v187 = *(a4 + 144);
    DWORD2(v340) = v187;
    if (*(a4 + 168) == 1)
    {
      DWORD2(v340) = v187 | 2;
    }

    v121 = (a4 + 192);
    v146 = fabs(v69);
    goto LABEL_113;
  }

  if (v40 == 2)
  {
    v15.f64[0] = *(a4 + 128);
    v14.f64[0] = *(a4 + 136);
    v73 = *(a4 + 160) - v15.f64[0];
    v74 = *(a4 + 168) - v14.f64[0];
    v75 = *(a4 + 192);
    v76 = *(a4 + 144);
    v77 = *(a4 + 176);
    v78 = vdupq_laneq_s64(v75, 1);
    v79 = vsubq_f64(v78, v75);
    *v355.f32 = vcvt_f32_f64(v75);
    v355.i64[1] = 0x3F80000000000000;
    *v329.i64 = v25;
    v330.n64_u64[0] = v22.n64_u64[0];
    if (v73 == 0.0 && v74 == 0.0)
    {
      v80 = 1.0;
      v81 = 0.0;
      v82 = 0.0;
      v83 = vabdd_f64(v77, v76) / v79.f64[0];
    }

    else
    {
      v105 = sqrt(v74 * v74 + v73 * v73);
      v80 = v73 / v105;
      v82 = v74 / v105;
      v83 = (v105 + vabdd_f64(v77, v76)) / v79.f64[0];
      v81 = v105 / v83;
    }

    v106 = v76 / v83;
    v107 = v77 / v83;
    v78.f64[0] = v80 * v83;
    v13.f64[0] = v82 * v83;
    v11.f64[0] = -(v82 * v83);
    v108 = vmlaq_n_f64(vmulq_n_f64(v20, v13.f64[0]), v18, v78.f64[0]);
    v109 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v20, v14.f64[0]), v18, v15.f64[0]));
    *&v333.a = v108;
    *&v333.c = vmlaq_n_f64(vmulq_n_f64(v20, v78.f64[0]), v18, v11.f64[0]);
    *&v333.tx = v109;
    v110 = v106;
    v111 = v81;
    *v356 = v110;
    *&v356[1] = v111;
    v112 = v107;
    *&v356[2] = v112;
    v325 = *(a4 + 32);
    if (v325 != 0.0 || (*(a4 + 152) & 1) != 0 || (*(a4 + 184) & 1) != 0)
    {
      v113 = *v329.i64;
    }

    else
    {
      v313 = v11;
      v314 = v13;
      v315 = v78;
      v316 = v15;
      v317 = v14;
      v318 = v109;
      v319 = v108;
      v320 = v79;
      v326 = v20;
      v327 = v18;
      v328 = v19;
      v346 = v333;
      v324.f64[0] = v24;
      v159.n64_u64[0] = CGRectApplyInverseAffineTransform(&v346.a, v330, v23, v24, *v329.i64).n64_u64[0];
      v163 = -v106;
      if (v106 <= v81 + v107)
      {
        v164 = v81 + v107;
      }

      else
      {
        v164 = v106;
      }

      if (v81 - v107 < v163)
      {
        v163 = v81 - v107;
      }

      if (v107 <= v106)
      {
        v165 = v106;
      }

      else
      {
        v165 = v107;
      }

      if (v159.n64_f64[0] > v164 || v159.n64_f64[0] + v161.n64_f64[0] < v163 || v160.n64_f64[0] > v165)
      {
        return 0;
      }

      v168 = -v165;
      if (v160.n64_f64[0] + v162.n64_f64[0] < -v165)
      {
        return 0;
      }

      v169 = v164 - v163;
      v170 = v165 + v165;
      v385 = CGRectIntersection(*v159.n64_u64, *&v163);
      if (v34)
      {
        *&v346.a = *&v333.a;
        *&v346.c = *&v333.c;
        v171 = *&v333.tx;
      }

      else
      {
        v346.a = v315.f64[0];
        v346.b = v314.f64[0];
        v346.c = v313.f64[0];
        v346.d = v315.f64[0];
        v346.tx = v316.f64[0];
        v346.ty = v317.f64[0];
        v403 = CGRectApplyAffineTransform(v385, &v346);
        v394.origin.x = v38;
        v394.origin.y = y;
        v394.size.width = v37;
        v394.size.height = height;
        v385 = CGRectIntersection(v394, v403);
        *&v346.a = v327;
        *&v346.c = v326;
        v171 = v328;
      }

      *&v346.tx = v171;
      v404 = CGRectApplyAffineTransform(v385, &v346);
      *&v395.size.height = v329.i64[0];
      v395.origin.x = v330.n64_f64[0];
      v395.origin.y = v23;
      v395.size.width = v324.f64[0];
      *(&v24 - 2) = CGRectIntersection(v395, v404);
      v330.n64_u64[0] = v309;
      v23 = v310;
      v113 = v311;
      v108 = v319;
      v79 = v320;
      v109 = v318;
    }

    v50 = v6;
    if (v24 < 0.0 || v113 < 0.0)
    {
      v138 = v330.n64_u64[0];
      v139 = v23;
      v140 = v113;
      v141 = v24;
      v319 = v108;
      v320 = v79;
      v318 = v109;
      v114 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v372.origin.x = v330.n64_f64[0];
      v372.origin.y = v23;
      v372.size.width = v141;
      v372.size.height = v113;
      v373 = CGRectStandardize(v372);
      v115 = vcvtpd_s64_f64(v373.origin.x + v373.size.width + -0.00390625);
      v373.origin.x = v330.n64_f64[0];
      v373.origin.y = v23;
      v373.size.width = v141;
      v373.size.height = v113;
      v374 = CGRectStandardize(v373);
      LODWORD(v4) = vcvtmd_s64_f64(v374.origin.y + 0.00390625);
      v374.origin.x = v330.n64_f64[0];
      v374.origin.y = v23;
      v374.size.width = v141;
      v374.size.height = v113;
      v375 = CGRectStandardize(v374);
      v109 = v318;
      v108.f64[0] = v319.f64[0];
      v79.f64[0] = v320.f64[0];
      v23 = v375.origin.y;
      v113 = v375.size.height;
    }

    else
    {
      v114 = vcvtmd_s64_f64(v330.n64_f64[0] + 0.00390625);
      v115 = vcvtpd_s64_f64(v330.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v23 + 0.00390625);
    }

    v142 = vcvtpd_s64_f64(v23 + v113 + -0.00390625);
    *&v338 = v114 | (v4 << 32);
    DWORD2(v338) = v115 - v114;
    HIDWORD(v338) = v142 - v4;
    v143.f64[0] = v109.f64[0];
    v143.f64[1] = v142;
    v109.f64[0] = v114;
    *&v333.tx = vsubq_f64(v143, v109);
    v144 = *&v333.b;
    *&v333.b = vnegq_f64(*&v333.b);
    *&v341 = &v333;
    *&v339 = &v355;
    *(&v339 + 1) = v356;
    *&v340 = 0;
    v145 = *(a4 + 152);
    DWORD2(v340) = v145;
    if (*(a4 + 184) == 1)
    {
      DWORD2(v340) = v145 | 2;
    }

    v121 = (a4 + 208);
    v146 = fabs(v79.f64[0]);
LABEL_113:
    v90 = vmulq_f64(v144, v144);
    v122 = vcvtpd_s64_f64(v146 * sqrt(v90.f64[0] + v108.f64[0] * v108.f64[0]));
    goto LABEL_114;
  }

  if (v40 != 3)
  {
    if (v40 != 4)
    {
      return result;
    }

    v42 = *(a4 + 128);
    v41 = *(a4 + 144);
    v355 = vcvt_hight_f32_f64(vcvt_f32_f64(v42), v41);
    v43 = vsubq_f64(vzip2q_s64(v42, v41), vzip1q_s64(v42, v41));
    v44 = *(a4 + 168);
    v45 = *(a4 + 184);
    v46 = *(a4 + 200);
    v47 = vmlaq_n_f64(vmulq_laneq_f64(v20, v44, 1), v18, v44.f64[0]);
    v48 = vmlaq_n_f64(vmulq_laneq_f64(v20, v45, 1), v18, v45.f64[0]);
    v49 = vaddq_f64(v19, vmlaq_n_f64(vmulq_laneq_f64(v20, v46, 1), v18, v46.f64[0]));
    *&v333.a = v47;
    *&v333.c = v48;
    *&v333.tx = v49;
    v325 = *(a4 + 32);
    if (v325 == 0.0)
    {
      v313 = v46;
      v314 = v45;
      v315 = v44;
      v316 = v42;
      v318 = v48;
      v319 = v49;
      v320 = v47;
      v326 = v20;
      v327 = v18;
      v328 = v19;
      v346 = v333;
      v147 = v24;
      v324 = v43;
      v317 = v41;
      v376.origin.x = CGRectApplyInverseAffineTransform(&v346.a, v22, v23, v24, v25).n64_f64[0];
      v398.size = v324;
      v398.origin.x = v316.f64[0];
      v398.origin.y = v317.f64[0];
      v377 = CGRectIntersection(v376, v398);
      result = 0;
      if (v377.origin.x == INFINITY)
      {
        return result;
      }

      if (v377.origin.y == INFINITY)
      {
        return result;
      }

      result = 0;
      if (v377.size.width == 0.0 || v377.size.height == 0.0)
      {
        return result;
      }

      if (v34)
      {
        *&v346.a = *&v333.a;
        *&v346.c = *&v333.c;
        v148 = *&v333.tx;
      }

      else
      {
        *&v346.a = v315;
        *&v346.c = v314;
        *&v346.tx = v313;
        v399 = CGRectApplyAffineTransform(v377, &v346);
        v386.origin.x = v38;
        v386.origin.y = y;
        v386.size.width = v37;
        v386.size.height = height;
        v377 = CGRectIntersection(v386, v399);
        *&v346.a = v327;
        *&v346.c = v326;
        v148 = v328;
      }

      *&v346.tx = v148;
      v400 = CGRectApplyAffineTransform(v377, &v346);
      v387.origin.y = v23;
      v387.size.height = v25;
      v387.origin.x = v22.n64_f64[0];
      v387.size.width = v147;
      *(&v24 - 2) = CGRectIntersection(v387, v400);
      v22.n64_u64[0] = v172;
      v23 = v173;
      v25 = v174;
      v43 = v324;
      v49 = v319;
      v47 = v320;
      v48 = v318;
    }

    v50 = v6;
    v51 = *&v48.i64[1];
    v52 = *&v47.i64[1];
    if (v24 < 0.0 || v25 < 0.0)
    {
      v149 = v22.n64_u64[0];
      v150 = v23;
      v319 = v49;
      v320 = v47;
      v151 = v25;
      v152 = v24;
      v324 = v43;
      v318 = v48;
      v53 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v378.origin.x = v22.n64_f64[0];
      v378.origin.y = v23;
      v378.size.width = v152;
      v378.size.height = v25;
      v379 = CGRectStandardize(v378);
      v54 = vcvtpd_s64_f64(v379.origin.x + v379.size.width + -0.00390625);
      v379.origin.x = v22.n64_f64[0];
      v379.origin.y = v23;
      v379.size.width = v152;
      v379.size.height = v25;
      v380 = CGRectStandardize(v379);
      LODWORD(v4) = vcvtmd_s64_f64(v380.origin.y + 0.00390625);
      v380.origin.x = v22.n64_f64[0];
      v380.origin.y = v23;
      v380.size.width = v152;
      v380.size.height = v25;
      v381 = CGRectStandardize(v380);
      v48 = v318;
      v49 = v319;
      v43 = v324;
      v23 = v381.origin.y;
      v25 = v381.size.height;
      v47 = v320;
    }

    else
    {
      v53 = vcvtmd_s64_f64(v22.n64_f64[0] + 0.00390625);
      v54 = vcvtpd_s64_f64(v22.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v23 + 0.00390625);
    }

    v153 = vcvtpd_s64_f64(v23 + v25 + -0.00390625);
    *&v338 = v53 | (v4 << 32);
    DWORD2(v338) = v54 - v53;
    HIDWORD(v338) = v153 - v4;
    v154 = vmulq_f64(v43, vzip1q_s64(v47, v48));
    v155 = vmulq_f64(v43, vzip2q_s64(v47, v48));
    v156.f64[0] = v49.f64[0];
    v156.f64[1] = v153;
    v49.f64[0] = v53;
    *&v333.tx = vsubq_f64(v156, v49);
    v333.b = -v52;
    v333.d = -v51;
    *&v341 = &v333;
    v121 = (a4 + 160);
    *(&v339 + 1) = 0;
    *&v340 = 0;
    *&v339 = &v355;
    DWORD2(v340) = 0;
    v90 = vcvtq_s64_f64(vrndpq_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v155, v155), v154, v154))));
    *&v90.f64[0] = vmovn_s64(v90);
    goto LABEL_115;
  }

  v50 = v6;
  v84 = *(a4 + 152);
  *v355.f32 = vcvt_f32_f64(v84);
  v355.i64[1] = 0x3F80000000000000;
  *&v84.f64[0] = vsub_f32(vdup_lane_s32(*v355.f32, 1), *v355.f32);
  v324 = v84;
  *v84.f64 = *(a4 + 144);
  v356[0] = LODWORD(v84.f64[0]);
  v325 = *(a4 + 32);
  v85 = v24;
  v327 = v18;
  v328 = v19;
  v326 = v20;
  v86 = __sincosf_stret(*v84.f64);
  v87 = -v86.__sinval;
  v88 = vmlaq_n_f64(vmulq_n_f64(v326, v87), v327, -v86.__cosval);
  v89 = vmlaq_n_f64(vmulq_n_f64(v326, v86.__cosval), v327, v87);
  v90 = vmlaq_n_f64(vmulq_laneq_f64(v326, *(a4 + 128), 1), v327, *(a4 + 128));
  v91 = vaddq_f64(v328, v90);
  *&v333.a = v88;
  *&v333.c = v89;
  v92 = v91.f64[1];
  if (v85 < 0.0 || v25 < 0.0)
  {
    v367.origin.x = v22.n64_f64[0];
    v367.origin.y = v23;
    v367.size.width = v85;
    v328 = v91;
    v367.size.height = v25;
    v93 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(v367)) + 0.00390625);
    v368.origin.x = v22.n64_f64[0];
    v368.origin.y = v23;
    v368.size.width = v85;
    v368.size.height = v25;
    v369 = CGRectStandardize(v368);
    v94 = vcvtpd_s64_f64(v369.origin.x + v369.size.width + -0.00390625);
    v369.origin.x = v22.n64_f64[0];
    v369.origin.y = v23;
    v369.size.width = v85;
    v369.size.height = v25;
    v370 = CGRectStandardize(v369);
    LODWORD(v6) = vcvtmd_s64_f64(v370.origin.y + 0.00390625);
    v370.origin.x = v22.n64_f64[0];
    v370.origin.y = v23;
    v370.size.width = v85;
    v370.size.height = v25;
    *v90.f64 = CGRectStandardize(v370);
    v23 = v116;
    v25 = v91.f64[0];
    v91.f64[0] = v328.f64[0];
  }

  else
  {
    v93 = vcvtmd_s64_f64(v22.n64_f64[0] + 0.00390625);
    v94 = vcvtpd_s64_f64(v22.n64_f64[0] + v85 + -0.00390625);
    LODWORD(v6) = vcvtmd_s64_f64(v23 + 0.00390625);
  }

  v117 = vcvtpd_s64_f64(v23 + v25 + -0.00390625);
  *&v338 = v93 | (v6 << 32);
  DWORD2(v338) = v94 - v93;
  HIDWORD(v338) = v117 - v6;
  v333.tx = v91.f64[0] - v93;
  v333.ty = v117 - v92;
  *&v333.b = vnegq_f64(*&v333.b);
  v118 = (v6 - v333.ty) * (v6 - v333.ty);
  v119 = (v117 - v333.ty) * (v117 - v333.ty);
  v120 = fmax(fmax(v118 + (v93 - v333.tx) * (v93 - v333.tx), v118 + (v94 - v333.tx) * (v94 - v333.tx)), fmax(v119 + (v93 - v333.tx) * (v93 - v333.tx), v119 + (v94 - v333.tx) * (v94 - v333.tx)));
  *&v341 = &v333;
  *&v339 = &v355;
  *(&v339 + 1) = 0;
  *&v340 = v356;
  DWORD2(v340) = 0;
  v121 = (a4 + 168);
  v122 = vcvtpd_s64_f64(fabsf(*v324.f64) * (sqrtf(v120) * 3.1416));
  if (v122 <= 128)
  {
    v122 = 128;
  }

LABEL_114:
  *&v90.f64[0] = v122 | 0x100000000;
LABEL_115:
  v329 = v90;
  v188 = v50;
  v330.n64_u64[0] = *v121;
  v189 = *(a4 + 24);
  ContentHeadroom = CGShadingGetContentHeadroom(a4);
  v354 = 0;
  HIDWORD(v192) = 0;
  v352 = 0u;
  v353 = 0u;
  v350 = 0u;
  v351 = 0u;
  v348 = 0u;
  v349 = 0u;
  v347 = 0u;
  memset(&v346, 0, sizeof(v346));
  v193 = *(*(v50 + 120) + 4);
  v194 = &unk_1ED4E1000;
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 32))
  {
    v195 = vmin_u32(*v329.i8, 0x100000001000);
    if (v330.n64_f64[0] == 0.0)
    {
      v196 = 0;
    }

    else
    {
      v196 = *(v330.n64_u64[0] + 96);
    }

    v357[0] = MEMORY[0x1E69E9820];
    v357[1] = 0x40000000;
    v357[2] = __lookup_function_entry_block_invoke;
    v357[3] = &__block_descriptor_tmp_7502;
    v357[4] = v9;
    v357[5] = &v355;
    *&v197 = v195.u32[0];
    *(&v197 + 1) = v195.u32[1];
    v358 = v197;
    v359 = v193 << 12 >> 28;
    Entry = RIPDataGetEntry(v9, v196, 0, v357);
    if (Entry)
    {
      goto LABEL_185;
    }

    if (RIPGetCacheState_predicate != -1)
    {
      dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    }
  }

  if (*(RIPGetCacheState_cache_state + 32) == 1)
  {
    if (v330.n64_f64[0] == 0.0)
    {
      v199 = 0.0;
    }

    else
    {
      v199 = *(v330.n64_u64[0] + 96);
    }

    v346.tx = v199;
  }

  result = 1000;
  if (*(v9 + 128) <= 2u && v330.n64_f64[0] != 0.0)
  {
    v200 = *(v330.n64_u64[0] + 32);
    if (v200 == 2)
    {
      if (v189 == 0.0)
      {
        v206 = 0.0;
      }

      else
      {
        v206 = *(*(*&v189 + 24) + 48);
      }

      *&v324.f64[0] = v9;
      LODWORD(v192) = v355.i32[1];
      v226 = v355.f32[0];
      LODWORD(v190) = v355.i32[3];
      v227 = v355.f32[2];
      v228 = *(v330.n64_u64[0] + 48);
      if (*&v206 != v228 && *&v206 + 1 != v228)
      {
        _CGHandleAssert("acquire_function_2d", 344, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPFunction.c", "(components == CGFunctionGetRangeDimension(function)) || (components + 1 == CGFunctionGetRangeDimension(function))", "", v192, v190);
      }

      v326.f64[0] = v189;
      v229 = vdupq_n_s64(0x1000uLL);
      v329 = vandq_s8(vaddw_u32(vdupq_n_s64(3uLL), vadd_s32(*v329.i8, 0x200000002)), vdupq_n_s64(0x1FFFFFFFCuLL));
      v230 = vbslq_s8(vcgtq_u64(v229, v329), v329, v229);
      v231 = v230.i64[0];
      v318 = v230;
      v232 = v230.u64[1];
      v233 = v355.f32[1] - v355.f32[0];
      v234 = (v230.i64[0] - 2);
      v235 = v355.f32[3] - v355.f32[2];
      v236 = (v230.i64[1] - 2);
      v237 = v230.i64[1] * v230.i64[0];
      *&v316.f64[0] = 4 * *&v206 * v230.i64[1] * v230.i64[0];
      *&v319.f64[0] = malloc_type_malloc(*&v316.f64[0], 0x100004052888210uLL);
      v238 = *(v330.n64_u64[0] + 48);
      v322 = v7;
      v323 = v188;
      v321 = v39;
      v320.f64[0] = v206;
      *&v317.f64[0] = v237;
      if (v238 <= *&v206)
      {
        v211 = 0;
      }

      else
      {
        v211 = malloc_type_calloc(v237, 4uLL, 0x100004052888210uLL);
      }

      v239 = v233 / v234;
      v240 = v235 / v236;
      if (v329.i64[1])
      {
        v241 = 0;
        v242 = v226 - (v239 * 0.5);
        if (v231 <= 1)
        {
          v243 = 1;
        }

        else
        {
          v243 = v231;
        }

        if (v232 <= 1)
        {
          v244 = 1;
        }

        else
        {
          v244 = v232;
        }

        *&v328.f64[0] = v244;
        v245 = v227 - (v240 * 0.5);
        *&v327.f64[0] = 4 * v231;
        v246 = v211;
        v247 = *&v319.f64[0];
        do
        {
          *(v357 + 1) = v245 + (v241 * v240);
          if (v329.i64[0])
          {
            v248 = 0;
            v249 = v246;
            do
            {
              *v357 = v242 + (v248 * v239);
              if (v211)
              {
                v250 = v249;
              }

              else
              {
                v250 = 0;
              }

              function_evaluate(v330.n64_i64[0], v357, v247, v250);
              ++v248;
              v247 += *&v320.f64[0];
              ++v249;
            }

            while (v243 != v248);
          }

          ++v241;
          v246 = (v246 + *&v327.f64[0]);
        }

        while (v241 != *&v328.f64[0]);
      }

      v9 = *&v324.f64[0];
      v251 = *(*&v324.f64[0] + 128);
      if (v251 < 3)
      {
        v252 = qword_1844DF4F0[v251];
        v221 = malloc_type_calloc(v252 * *&v317.f64[0], 4uLL, 0x100004052888210uLL);
        v188 = v323;
        v253 = rip_function_convert_color_components(*(*&v324.f64[0] + 120), *&v326.f64[0], v323, *&v317.f64[0], *&v319.f64[0], 32 * *&v320.f64[0], SLODWORD(v316.f64[0]), v221, ContentHeadroom, 32 * v252, 4 * v252 * LODWORD(v317.f64[0]));
        v194 = &unk_1ED4E1000;
        v225 = v330.n64_f64[0];
        if ((v253 & 1) == 0)
        {
          CGPostError("%s - rip_function_convert_color_components failed", "acquire_function_2d");
        }

        free(*&v319.f64[0]);
        v348 = *(*&v324.f64[0] + 132);
        LODWORD(v349) = *(*&v324.f64[0] + 148);
        v254 = *(*&v324.f64[0] + 128);
        DWORD2(v349) = (*(*(v323 + 120) + 4) << 12) >> 28;
        DWORD1(v349) = v254;
        *&v351 = v355.f32[0] - v239;
        *(&v351 + 1) = v239 + v355.f32[1];
        *(&v351 + 2) = v355.f32[2] - v240;
        v224 = v240 + v355.f32[3];
        v39 = v321;
        v223 = v318;
        goto LABEL_184;
      }
    }

    else
    {
      if (v200 != 1)
      {
        return result;
      }

      v321 = v39;
      HIDWORD(v201) = v329.i32[1];
      v202 = (v329.i32[0] + 2) + 15;
      v203 = v202 & 0x1FFFFFFF0;
      if ((v202 & 0x1FFFFF000) != 0)
      {
        v204 = 4096;
      }

      else
      {
        v204 = v202 & 0x1FFFFFFF0;
      }

      if (v189 == 0.0)
      {
        v205 = 0;
      }

      else
      {
        v205 = *(*(*&v189 + 24) + 48);
      }

      v322 = v7;
      LODWORD(v201) = v355.i32[1];
      v207 = v355.f32[0];
      v208 = *(v330.n64_u64[0] + 48);
      if (v205 != v208 && v205 + 1 != v208)
      {
        _CGHandleAssert("acquire_function_1d", 245, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPFunction.c", "(components == CGFunctionGetRangeDimension(function)) || (components + 1 == CGFunctionGetRangeDimension(function))", "", v201);
      }

      v326.f64[0] = v189;
      *&v324.f64[0] = v9;
      v209 = v355.f32[1] - v355.f32[0];
      *&v328.f64[0] = 4 * v205 * v204;
      v329.i64[0] = malloc_type_malloc(*&v328.f64[0], 0x100004052888210uLL);
      v210 = *(v330.n64_u64[0] + 48);
      v323 = v188;
      if (v210 <= v205)
      {
        v211 = 0;
      }

      else
      {
        v211 = malloc_type_calloc(v204, 4uLL, 0x100004052888210uLL);
      }

      v212 = v209 / (v204 - 2);
      if (v203)
      {
        v213 = 0;
        v214 = v207 + (v212 * -0.5);
        if (v204 <= 1)
        {
          v215 = 1;
        }

        else
        {
          v215 = v204;
        }

        v216 = v211;
        v217 = v329.i64[0];
        do
        {
          *v357 = v214 + (v213 * v212);
          if (v211)
          {
            v218 = v216;
          }

          else
          {
            v218 = 0;
          }

          function_evaluate(v330.n64_i64[0], v357, v217, v218);
          ++v213;
          v217 += v205;
          ++v216;
        }

        while (v215 != v213);
      }

      v9 = *&v324.f64[0];
      v219 = *(*&v324.f64[0] + 128);
      if (v219 < 3)
      {
        v220 = qword_1844DF4F0[v219];
        v221 = malloc_type_calloc(v220 * v204, 4uLL, 0x100004052888210uLL);
        v188 = v323;
        if ((rip_function_convert_color_components(*(*&v324.f64[0] + 120), *&v326.f64[0], v323, v204, v329.i64[0], 32 * v205, SLODWORD(v328.f64[0]), v221, ContentHeadroom, 32 * v220, 4 * v220 * v204) & 1) == 0)
        {
          CGPostError("%s - rip_function_convert_color_components failed", "acquire_function_1d");
        }

        free(v329.i64[0]);
        v348 = *(*&v324.f64[0] + 132);
        LODWORD(v349) = *(*&v324.f64[0] + 148);
        v222 = *(*&v324.f64[0] + 128);
        DWORD2(v349) = (*(*(v323 + 120) + 4) << 12) >> 28;
        DWORD1(v349) = v222;
        *&v351 = v355.f32[0] - v212;
        *(&v351 + 1) = v212 + v355.f32[1];
        DWORD2(v351) = 0;
        v223 = vdupq_n_s64(1uLL);
        v223.i64[0] = v204;
        v224 = 1.0;
        v39 = v321;
        v194 = &unk_1ED4E1000;
        v225 = v330.n64_f64[0];
LABEL_184:
        *(&v351 + 3) = v224;
        v350 = v223;
        *&v352 = v221;
        *(&v352 + 1) = v211;
        Entry = &v346;
        v346.ty = v225;
        v7 = v322;
        v189 = v326.f64[0];
LABEL_185:
        v255 = (v39 << 12 >> 28);
        *(&v341 + 1) = Entry + 8;
        if (*(v7 + 81) == 1 && (*(*(v188 + 120) + 7) & 1) != 0)
        {
          v256 = v189;
          *(v9 + 108) = *(v9 + 108) | 0xFF00;
          v257 = -256;
        }

        else
        {
          v256 = v189;
          v257 = 0;
          *(v9 + 108) = *(v9 + 108);
        }

        v258 = v257 | *(v7 + 82);
        *(v9 + 108) = v258;
        *(v9 + 112) = v255;
        v259 = *(v188 + 120);
        *(v9 + 104) = (*(v259 + 4) << 16) >> 24;
        v260 = *(v259 + 8);
        *(v9 + 152) = v260;
        v330.n64_u64[0] = (Entry + 8);
        if (v325 == 0.0)
        {
          v262 = 0;
          goto LABEL_211;
        }

        v326.f64[0] = v256;
        if (v256 == 0.0)
        {
          v261 = 0;
        }

        else
        {
          v261 = *(*(*&v256 + 24) + 48);
        }

        v263 = *(*&v325 + 8 * v261);
        Cache = CGColorTransformGetCache(*(v9 + 120));
        v323 = v188;
        if (Cache)
        {
          v265 = Cache[2];
          if (v265)
          {
            v266 = *(*(v265 + 24) + 48);
            if (v266 >> 61)
            {
              v267 = v7;
              MEMORY[0x1EEE9AC00](Cache);
              v268 = &v312;
              v269 = 0;
LABEL_205:
              if (CGColorTransformConvertColorComponents(*(v9 + 120), *&v326.f64[0], v255, *&v325, v269))
              {
                RIPColorCreateWithColor(*(v9 + 128), v269, v266, v263);
                v262 = v272;
              }

              else
              {
                v262 = 0;
              }

              if (v269 != v268)
              {
                free(v269);
              }

              v258 = *(v9 + 108);
              v7 = v267;
              v188 = v323;
              v194 = &unk_1ED4E1000;
LABEL_211:
              if (v258 && (*(*(v9 + 48) + 29) & 2) != 0)
              {
                v273 = *(v188 + 120);
                v274 = *(v273 + 24);
                v275 = *(v273 + 32);
                v276 = *(v9 + 40);
                v277 = v276 == 1.0;
                v278 = v7[3] * v276;
                v279 = v7[4] * v276;
                v280 = v7[5] * v276;
                v281 = v7[6] * v276;
                v282 = v7[7] * v276;
                v283 = v7[8] * v276;
                if (v277)
                {
                  v278 = v7[3];
                  v284 = v7[4];
                }

                else
                {
                  v284 = v279;
                }

                if (v277)
                {
                  v285 = v7[5];
                }

                else
                {
                  v285 = v280;
                }

                if (v277)
                {
                  v286 = v7[6];
                }

                else
                {
                  v286 = v281;
                }

                if (v277)
                {
                  v287 = v7[7];
                }

                else
                {
                  v287 = v282;
                }

                if (v277)
                {
                  v288 = v7[8];
                }

                else
                {
                  v288 = v283;
                }

                v289 = v275 * v285 + v278 * v274 + v287;
                if (v289 <= 1073741820.0)
                {
                  v291 = vcvtmd_s64_f64(v289);
                  if (v289 >= -1073741820.0)
                  {
                    v290 = v291;
                  }

                  else
                  {
                    v290 = -1073741823;
                  }
                }

                else
                {
                  v290 = 0x3FFFFFFF;
                }

                LODWORD(v337) = v290;
                v292 = v275 * v286 + v284 * v274 + v288;
                if (v292 <= 1073741820.0)
                {
                  if (v292 >= -1073741820.0)
                  {
                    v293 = vcvtmd_s64_f64(v292);
                  }

                  else
                  {
                    v293 = -1073741823;
                  }
                }

                else
                {
                  v293 = 0x3FFFFFFF;
                }

                HIDWORD(v337) = v293;
              }

              else
              {
                v337 = 0;
              }

              if (*(&v345 + 1) && (*(*(&v345 + 1) + 12) & 0x80) != 0)
              {
                (*(**(&v345 + 1) + 80))();
              }

              else
              {
                if (v342)
                {
                  v294 = &v331;
                }

                else
                {
                  v294 = 0;
                }

                RIPLayerBltShade(*(v9 + 48), v343, v294, &v338, v262, v9 + 104);
              }

              free(v262);
              v295 = v9;
              if (v194[495] != -1)
              {
                dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
              }

              if (*(RIPGetCacheState_cache_state + 32) == 1 && (v296 = Entry[5]) != 0)
              {
                v297 = Entry[4];
                if (!v297)
                {
                  v298 = RIPDataCreate(Entry[5]);
                  v299 = 0;
                  atomic_compare_exchange_strong_explicit((v296 + 96), &v299, v298, memory_order_relaxed, memory_order_relaxed);
                  v297 = *(v296 + 96);
                  if (v297 != v298)
                  {
                    CFRelease(v298);
                  }
                }

                if (*(Entry + 13))
                {
                  RIPLockCacheState();
                  --*(Entry + 13);
                }

                else
                {
                  v300 = RIPCacheEntryCreate(0, v297);
                  v301 = v330.n64_u64[0];
                  *(v300 + 4) = *v330.n64_u64[0];
                  v302 = v301[4];
                  v304 = v301[1];
                  v303 = v301[2];
                  *(v300 + 7) = v301[3];
                  *(v300 + 8) = v302;
                  *(v300 + 5) = v304;
                  *(v300 + 6) = v303;
                  RIPLockCacheState();
                  v305 = v297[3];
                  v306 = *v300;
                  v297[3] = v300;
                  *v300 = v297 + 2;
                  *v305 = v306;
                  *(v306 + 8) = v305;
                  ++v297[5];
                  ripc_AddEntry(*(v295 + 208), v300);
                  if (v297[5] > 0x20uLL)
                  {
                    v307 = v297[2];
                    RIPCacheEntryRemove(v307);
                    v307[1] = 0;
                    RIPUnlockCacheState();
                    do
                    {
                      v308 = v307[1];
                      RIPCacheEntryRelease(v307);
                      v307 = v308;
                    }

                    while (v308);
                    return 0;
                  }
                }

                RIPUnlockCacheState();
              }

              else
              {
                free(Entry[16]);
                free(Entry[17]);
              }

              return 0;
            }

            Cache = (8 * v266);
          }

          else
          {
            v266 = 0;
            Cache = 0;
          }
        }

        else
        {
          v266 = 0;
        }

        v267 = v7;
        v270 = MEMORY[0x1EEE9AC00](Cache);
        v268 = (v313.f64 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v266 <= 0x1FFFFFFFFFFFFFFELL)
        {
          v269 = (v313.f64 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0));
        }

        else
        {
          v269 = 0;
        }

        if (v266 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
        {
          v269 = malloc_type_malloc(v270, 0x61C53040uLL);
        }

        goto LABEL_205;
      }
    }

    abort();
  }

  return result;
}

uint64_t *RIPDataGetEntry(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  RIPLockCacheState();
  v8 = (a2 + 16);
  v9 = *(a2 + 24);
  if (v9 == (a2 + 16))
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    while (*(v9 + 12) != a3 || !(*(a4 + 16))(a4, v9))
    {
      v9 = v9[1];
      if (v9 == v8)
      {
        goto LABEL_6;
      }
    }

    v10 = *v9;
    if (*v9 != v8)
    {
      v11 = v9[1];
      *(v10 + 8) = v11;
      *v11 = v10;
      v12 = *(a2 + 24);
      *v9 = v8;
      v9[1] = v12;
      *(a2 + 24) = v9;
      *v12 = v9;
    }

    v13 = *(a1 + 208);
    ++*(v9 + 14);
    if (RIPGetCacheState_predicate != -1)
    {
      dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    }

    v14 = v9[5];
    v15 = *(RIPGetCacheState_cache_state + 8);
    if (v14 != v13 && v14 != v15)
    {
      --*(v14 + 16);
      v9[5] = v15;
      ++*(v15 + 16);
    }

    v16 = v9 + 2;
    v17 = v9[2];
    if (v17 != v15)
    {
      v18 = v9[3];
      *(v17 + 8) = v18;
      *v18 = v17;
      v19 = *(v15 + 8);
      v9[2] = v15;
      v9[3] = v19;
      *(v15 + 8) = v16;
      *v19 = v16;
    }

    ++*(v9 + 13);
  }

  RIPUnlockCacheState();
  return v9;
}

void function_evaluate(uint64_t a1, float *a2, float *a3, float *a4)
{
  v7 = a1;
  v32[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    if (v8 >> 61)
    {
      MEMORY[0x1EEE9AC00](a1);
      v10 = &v31;
      v11 = 0;
      goto LABEL_11;
    }

    a1 = 8 * v8;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v12 = MEMORY[0x1EEE9AC00](a1);
  v10 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v11 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v11 = 0;
  }

  if (v8 - 0x1FFFFFFFFFFFFFFFLL >= v14)
  {
    v11 = malloc_type_malloc(v12, 0xFA81F361uLL);
  }

LABEL_11:
  v15 = MEMORY[0x1EEE9AC00](8 * v9);
  v19 = (v32 - v17);
  if (v16 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v20 = (v32 - v17);
  }

  else
  {
    v20 = 0;
  }

  if (v16 - 0x1FFFFFFFFFFFFFFFLL >= v18)
  {
    v20 = malloc_type_malloc(v15, 0xFF38EC47uLL);
  }

  if (v8)
  {
    v21 = v11;
    do
    {
      v22 = *a2++;
      *v21++ = v22;
      --v8;
    }

    while (v8);
  }

  CGFunctionEvaluate(v7, v11, v20);
  if (a4)
  {
    if (v9 != 1)
    {
      v23 = v20;
      v24 = v9 - 1;
      do
      {
        v25 = *v23++;
        v26 = v25;
        *a3++ = v26;
        --v24;
      }

      while (v24);
    }

    v27 = v20[v9 - 1];
    *a4 = v27;
  }

  else if (v9)
  {
    v28 = v20;
    do
    {
      v29 = *v28++;
      v30 = v29;
      *a3++ = v30;
      --v9;
    }

    while (v9);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  if (v11 != v10)
  {
    free(v11);
  }
}

uint64_t CGFunctionEvaluate(uint64_t a1, char *a2, double *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  if (v7 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v9 = v21 - v8;
  }

  else
  {
    v9 = 0;
  }

  if (v7 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v9 = malloc_type_malloc(v6, 0x6B634459uLL);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = 0;
      v13 = (v10 + 8);
      do
      {
        v14 = *(v13 - 1);
        v15 = *&a2[8 * v12];
        if (v15 >= v14 && (v14 = *v13, v15 <= *v13))
        {
          *&v9[8 * v12] = v15;
        }

        else
        {
          *&v9[8 * v12] = v14;
        }

        ++v12;
        v13 += 2;
      }

      while (v11 != v12);
    }

    a2 = v9;
  }

  result = (*(a1 + 72))(*(a1 + 24), a2, a3);
  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = (v17 + 8);
      do
      {
        v20 = *(v19 - 1);
        if (*a3 < v20 || (v20 = *v19, *a3 > *v19))
        {
          *a3 = v20;
        }

        ++a3;
        v19 += 2;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void *gradient_evaluate(void *result, double *a2, double *a3)
{
  v3 = result[2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = *a2;
    v6 = result[1];
    v7 = result[3];
    v8 = v6 + 1;
    v9 = *(v7 + 8 * (v6 + 1));
    v10 = 0;
    if (*a2 <= v9)
    {
      v14 = 0.0;
      v12 = v6 + 1;
      if (v6)
      {
LABEL_9:
        v15 = (v5 - v14) / (v9 - v14);
        v16 = v7 + 8;
        v17 = (v16 + 8 * v10 * v8);
        v18 = (v16 + 8 * v12);
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v18++;
          *a3++ = v15 * v21 + (1.0 - v15) * v20;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v11 = (v7 + 16 * v6 + 16);
      v12 = v6 + 1;
      v13 = *(v7 + 8 * (v6 + 1));
      while (v4 != v10)
      {
        v9 = *v11;
        ++v10;
        v12 += v8;
        v11 += v6 + 1;
        v14 = v13;
        v13 = v9;
        if (v5 <= v9)
        {
          if (v6)
          {
            goto LABEL_9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

void *CGColorTransformConvertComponentData(void *a1, void *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, int a13)
{
  if (!a1)
  {
    return 0;
  }

  v20 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v20 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  v33 = a4;
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(a3);
  v21 = 4096;
  if (a3 != 2 && a3 != 5)
  {
    if (a3 == 4)
    {
      if (a2)
      {
        v30 = *(a2[3] + 48);
      }

      else
      {
        v30 = 0;
      }

      v21 = 0x2000;
      v31 = 32;
      v32 = a13;
      v22 = 0x2000;
      goto LABEL_20;
    }

    v21 = 0;
  }

  if (a2)
  {
    v30 = *(a2[3] + 48);
  }

  else
  {
    v30 = 0;
  }

  v32 = a13;
  v31 = CGPixelComponentGetBitsPerComponent(a3);
  if (a3 != 2 && a3 != 5)
  {
    v29 = 0;
    goto LABEL_21;
  }

  v22 = 4096;
LABEL_20:
  v29 = v22;
LABEL_21:
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v24 = Cache[2];
    if (v24)
    {
      v24 = *(*(v24 + 24) + 48);
    }
  }

  else
  {
    v24 = 0;
  }

  v61[0] = a8;
  v61[1] = a5;
  v61[2] = a6;
  v61[3] = a10;
  v62 = v33;
  v63 = 0;
  v64 = a3;
  v65 = 0;
  v66 = BitsPerComponent;
  v67 = v30;
  v68 = 0;
  v69 = v21;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v35[0] = a11;
  v35[1] = a5;
  v35[2] = a6;
  v35[3] = v32;
  v36 = v33;
  v37 = 0;
  v38 = a3;
  v39 = 0;
  v40 = v31;
  v41 = v24;
  v42 = 0;
  v43 = v29;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v25 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v25 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  CGCMSConverter = CGColorTransformCreateCGCMSConverter(a1, a2, v33);
  v27 = CGCMSConverterConvert(CGCMSConverter, v61, v35);
  if (CGCMSConverter)
  {
    CFRelease(CGCMSConverter);
  }

  return v27;
}

unint64_t RIPLayerBltShade(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v83 = *MEMORY[0x1E69E9840];
  v56[0] = 0;
  v56[1] = 0;
  if (a3 || (v9 = v56, result = CGSBoundsIntersection((a1 + 12), a4, v56), result))
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    if (a2 && !*(a2 + 72))
    {
      if (*(a2 + 64))
      {
        if (v9 == (a2 + 12) || !ripl_IsContained(v9, (a2 + 12)))
        {
          if ((ripl_CreateMask(a2, 0) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          a2 = 0;
        }
      }

      else if (!*(a2 + 56) && ripl_IsEnclosed(v9, (a2 + 12)))
      {
        a2 = 0;
      }
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      *&v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v13 = &v64;
      v64 = 0u;
      v65 = 0u;
    }

    result = (*(*a1 + 32))(a1, 32, v9);
    if (result)
    {
      v14 = result;
      v15 = *result;
      if (!*result || !*(v15 + 48) || !*(a1 + 56) && !ripl_CreateMask(a1, 1))
      {
        goto LABEL_44;
      }

      *v13 = *a6;
      ripl_BltOpDestination(v13, v9, a1);
      v16 = *(a4 + 56);
      v17 = *a4;
      v18 = *(a4 + 4);
      v19 = *(a4 + 8);
      v20 = *(a4 + 12);
      *(v13 + 1) = 1;
      *(v13 + 14) = *v9 - v17;
      *(v13 + 15) = v20 + v18 - (v9[1] + v9[3]);
      *(v13 + 16) = v19;
      *(v13 + 68) = v20;
      v21 = *(v16 + 20);
      v22 = *(v16 + 32);
      v23 = 4 * v22;
      if (v21 == 2)
      {
        v22 *= 4;
      }

      else if (v21 == 1)
      {
        v22 *= 3;
      }

      v24 = 4 * v22;
      v26 = *(v16 + 64);
      v25 = *(v16 + 72);
      if (!v25)
      {
        v23 = 0;
      }

      *(v13 + 19) = v24;
      *(v13 + 20) = v23;
      *(v13 + 11) = v26;
      *(v13 + 12) = v25;
      ripl_BltOpMask(v13, v9, a2);
      if (!CGBlt_initialize(v13))
      {
        goto LABEL_44;
      }

      if (a5)
      {
        if (*a5 != &ripc_class)
        {
          goto LABEL_44;
        }

        v28 = *(a5 + 156);
        v27 = a5 + 156;
        *&v55 = v27 - 128;
        if (v28 >= 1.0)
        {
          *(&v55 + 1) = 0;
        }

        else
        {
          *(&v55 + 1) = v27;
        }
      }

      else
      {
        v55 = 0uLL;
      }

      v29 = (*(a6 + 4) << 8) | 0xFF;
      LODWORD(v51) = v29;
      v30 = *(a6 + 48);
      v31 = 0.0;
      if (v30 >= 0.0)
      {
        v31 = 1.0;
        if (v30 <= 1.0)
        {
          v31 = v30;
        }
      }

      *(&v51 + 1) = v31;
      v32 = *(a4 + 64);
      if (v32)
      {
        v33 = *(a1 + 24);
        v34 = v33 + *(a1 + 16);
        v35 = *(a1 + 12);
        _D2 = v33;
        v37 = *v32;
        v59 = v37;
        _Q3 = *(v32 + 2);
        v60 = vneg_f32(vcvt_f32_f64(_Q3));
        v39 = *(v32 + 3);
        __asm { FMLA            D5, D2, V3.D[1] }

        *_Q3.f64 = v39;
        v45 = _D5 - v34;
        v61 = LODWORD(_Q3.f64[0]);
        v62 = v45;
        v46 = v35 - (*(v32 + 5) + v39 * v33);
        v63 = v46;
        v32 = &v59;
      }

      *(&v51 + 1) = v32;
      v47 = *(a4 + 56);
      *(&v54 + 1) = v47 + 3;
      *&v54 = vmovn_s64(v47[2]);
      v48 = v47[1].u32[1];
      if (v48 <= 2)
      {
        LODWORD(v51) = dword_184562A60[v48] | (*(a4 + 40) << 28) | v29;
        v52 = *(a4 + 24);
        v49 = *(a4 + 16);
        v50 = *(a4 + 48);
        v57 = vcvt_hight_f32_f64(vcvt_f32_f64(*v50), v50[1]);
        v58 = vcvt_f32_f64(v50[2]);
        *&v53 = v49;
        *(&v53 + 1) = &v57;
        if (!(*(v15 + 48))(v14, v13, &v51))
        {
          v9 = 0;
        }

        goto LABEL_45;
      }

LABEL_44:
      v9 = 0;
LABEL_45:
      (*(*a1 + 48))(a1, v9);
      return v9 != 0;
    }
  }

  return result;
}

uint64_t _blt_shade_initialize(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 5);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v5 * v8 - v6 * v7;
  if (v9 == 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v4[5];
  v13 = v4[4];
  v14 = 1.0 / v9;
  *(a3 + 272) = &_blt_shade_constants;
  v15 = v14 * v5;
  v16 = v14 * v6;
  v17 = v14 * v7;
  v20 = v14 * v8;
  v18 = v17 * v12 - v20 * v13;
  v19 = v16 * v13 - v15 * v12;
  *&v20 = v20;
  *(a3 + 280) = LODWORD(v20);
  *&v16 = v16;
  v21 = LODWORD(v16);
  *(a3 + 284) = -*&v16;
  *&v16 = v17;
  *(a3 + 288) = -*&v16;
  *&v15 = v15;
  *(a3 + 292) = LODWORD(v15);
  v22 = LODWORD(v15);
  *&v15 = v18;
  *(a3 + 296) = LODWORD(v15);
  v23 = LODWORD(v15);
  *&v15 = v19;
  *(a3 + 300) = LODWORD(v15);
  v24 = (v21 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v25 = (v22 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v26 = (v23 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v10 = 0xFFFFFFFFLL;
  if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF || v24 || COERCE_UNSIGNED_INT(fabs(v17)) > 0x7F7FFFFF || v25 || v26 || COERCE_UNSIGNED_INT(fabs(v19)) > 0x7F7FFFFF)
  {
    return v10;
  }

  v27 = *(a2 + 4);
  if (v27)
  {
    v28 = *v27;
    *(a3 + 304) = *v27;
    v29 = *(v27 + 4);
    *(a3 + 308) = v29;
    *(a3 + 312) = *(v27 + 8);
    v30 = *(v27 + 12);
  }

  else
  {
    *(a3 + 312) = 0;
    *(a3 + 304) = 0x3F80000000000000;
    v28 = 0.0;
    v29 = 1.0;
    v30 = 1.0;
  }

  *(a3 + 316) = v30;
  *(a3 + 360) = 0;
  v31 = a2[12];
  v32 = v31;
  LODWORD(v20) = a2[13];
  v33 = *&v20;
  v34 = *(a2 + 7);
  if (v34)
  {
    v35 = (v32 + -0.00390625) / (v34[1] - *v34);
    *(a3 + 344) = v35;
    v36 = *v34;
    *(a3 + 336) = *v34;
    *(a3 + 340) = v34[1];
    v37 = (v33 + -0.00390625) / (v34[3] - v34[2]);
    *(a3 + 356) = v37;
    *(a3 + 348) = v34[2];
    v38 = v34[3];
  }

  else
  {
    *(a3 + 348) = 0;
    v35 = v32 + -0.00390625;
    *(a3 + 344) = v35;
    *(a3 + 336) = 0x3F80000000000000;
    v39 = v33 + -0.00390625;
    *(a3 + 356) = v39;
    v38 = 1.0;
    v36 = 0.0;
  }

  *(a3 + 352) = v38;
  *(a3 + 328) = -1;
  if ((*(a2 + 3) & 0x10) == 0)
  {
    v40 = -1;
LABEL_21:
    *(a3 + 320) = v40;
    goto LABEL_23;
  }

  v41 = vcvtms_s32_f32(v35 * (v28 - v36));
  *(a3 + 320) = v41;
  if ((v41 & 0x80000000) == 0)
  {
    if (v31 > v41)
    {
      goto LABEL_23;
    }

    v40 = v31 - 1;
    goto LABEL_21;
  }

  *(a3 + 320) = 0;
LABEL_23:
  if ((*(a2 + 3) & 0x20) == 0)
  {
    v42 = -1;
LABEL_28:
    *(a3 + 324) = v42;
    goto LABEL_30;
  }

  v43 = vcvtps_s32_f32(v35 * (v29 - v36));
  *(a3 + 324) = v43;
  if ((v43 & 0x80000000) != 0)
  {
    *(a3 + 324) = 0;
    goto LABEL_30;
  }

  if (v31 <= v43)
  {
    v42 = v31 - 1;
    goto LABEL_28;
  }

LABEL_30:
  *(a3 + 384) = *(a2 + 4);
  *(a3 + 376) = 0;
  v44 = *(a2 + 2);
  if (!v44)
  {
    a4 = 0;
LABEL_57:
    *(a3 + 360) = 0;
    *(a3 + 368) = 0;
    *(a3 + 22) = 2056;
    v60 = vdupq_n_s64(0x80uLL);
    *(a3 + 96) = vorrq_s8(vshll_n_s32(*(a1 + 56), 8uLL), v60);
    *(a3 + 208) = xmmword_18439CA60;
    *(a3 + 224) = xmmword_18439CA70;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 192) = xmmword_18439CA80;
    v61 = vaddq_s64(vshll_n_s32(*(a1 + 64), 8uLL), vdupq_n_s64(0xFFFFFFFFFFFFFF80));
    *(a3 + 400) = a4;
    *(a3 + 136) = 256;
    *(a3 + 112) = 256;
    *(a3 + 64) = v60;
    *(a3 + 80) = v61;
    if (*(a2 + 2) << 16)
    {
      v62 = 0;
    }

    else
    {
      v62 = 0x3FFFFFFF;
    }

    *(a3 + 188) = v62;
    *(a3 + 20) = 134742016;
    v63 = *(a2 + 6);
    *&v64 = v63;
    *(&v64 + 1) = HIDWORD(v63);
    *(a3 + 24) = *(a1 + 76);
    *(a3 + 32) = *(a1 + 88);
    *(a3 + 48) = v64;
    v65 = *(a2 + 1);
    *(a3 + 184) = v65;
    v66 = 0.0;
    if (v65 < 0.0 || (v66 = 1.0, v65 > 1.0))
    {
      *(a3 + 184) = v66;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0;
    v10 = 1;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    return v10;
  }

  v45 = *v44;
  v46 = *v44;
  *a4 = *v44;
  v47 = *(*(a2 + 2) + 8);
  *(a4 + 4) = v47;
  v48 = *(*(a2 + 2) + 4);
  *(a4 + 8) = v48;
  v49 = v47 - v46;
  v50 = v48 * v48 - v49 * v49;
  v51 = v50;
  v52 = v46 * -2.0 * v49;
  *(a4 + 20) = v51;
  *(a4 + 24) = v52;
  *(a4 + 28) = v45 * v45;
  if (v50 == 0.0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0 / (v50 + v50);
  }

  *(a4 + 32) = v53;
  v54 = *a2;
  if (!(*a2 >> 28))
  {
    *(a4 + 12) = 0x3F80000000000000;
    goto LABEL_57;
  }

  if (v45 >= v47)
  {
    if (v45 <= v47)
    {
      v56 = 3.4028e38;
    }

    else
    {
      v56 = 1.0 - v47 / v49;
    }

    v55 = -3.4028e38;
  }

  else
  {
    v55 = -v46 / v49;
    v56 = 3.4028e38;
  }

  v57 = 0.0;
  if ((v54 & 0x10000000) != 0)
  {
    v57 = v55;
  }

  *(a4 + 12) = v57;
  v58 = *a2;
  v59 = 1.0;
  if ((*a2 & 0x20000000) != 0)
  {
    v59 = v56;
  }

  *(a4 + 16) = v59;
  v10 = 0xFFFFFFFFLL;
  if ((LODWORD(v45) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v47) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v48) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v54 & 0x10000000) != 0 && (LODWORD(v55) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = 0xFFFFFFFFLL;
    if ((LODWORD(v53) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v51) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (((LODWORD(v56) & 0x7FFFFFFFu) > 0x7F7FFFFF) & (v58 >> 29)) == 0 && (LODWORD(v52) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v45 * v45) != INFINITY)
    {
      goto LABEL_57;
    }
  }

  return v10;
}

uint64_t _blt_shade_samples_16(uint64_t result, int a2, int a3, float *a4, float *a5, unint64_t a6)
{
  v6 = 65535.0;
  if (a2 == 2)
  {
    v6 = 65280.0;
  }

  if (a2 == 1)
  {
    v6 = 7936.0;
  }

  switch(a3)
  {
    case 1:
      if (!a6)
      {
        return result;
      }

      v37 = (result + 2);
      for (i = 1; ; ++i)
      {
        v39 = *a4++;
        v40 = v39;
        if (!a5)
        {
          goto LABEL_71;
        }

        v41 = *a5++;
        v42 = v41;
        if (v41 >= 0.0)
        {
          break;
        }

        *(v37 - 1) = 0;
LABEL_77:
        v45 = i;
        v37 += 2;
        if (v45 >= a6)
        {
          return result;
        }
      }

      if (v42 <= 1.0)
      {
        v43 = v6 * v42;
      }

      else
      {
LABEL_71:
        v43 = v6;
      }

      v44 = 1.0;
      if (v40 <= 1.0)
      {
        v44 = v40;
        if (v40 < 0.0)
        {
          v44 = 0.0;
        }
      }

      *(v37 - 1) = ((v44 * v43) + 0.5);
      *v37 = (v43 + 0.5);
      goto LABEL_77;
    case 4:
      if (!a6)
      {
        return result;
      }

      v19 = 1;
      while (1)
      {
        v21 = *a4;
        v20 = a4[1];
        v23 = a4[2];
        v22 = a4[3];
        if (!a5)
        {
          break;
        }

        v24 = *a5++;
        v25 = v24;
        if (v24 >= 0.0)
        {
          v14 = v25 <= 1.0;
          v26 = v6 * v25;
          if (!v14)
          {
            v26 = v6;
          }

          goto LABEL_38;
        }

        *result = 0;
LABEL_63:
        result += 10;
        v36 = v19++;
        a4 += 4;
        if (v36 >= a6)
        {
          return result;
        }
      }

      v26 = v6;
LABEL_38:
      if (v21 < 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = *a4;
      }

      if (v21 <= 1.0)
      {
        v28.f32[0] = v27;
      }

      else
      {
        v28.f32[0] = 1.0;
      }

      if (v20 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = a4[1];
      }

      if (v20 <= 1.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.0;
      }

      if (v23 < 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = a4[2];
      }

      if (v23 <= 1.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1.0;
      }

      if (v22 < 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = a4[3];
      }

      v28.f32[1] = v30;
      v28.f32[2] = v32;
      if (v22 <= 1.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1.0;
      }

      v28.f32[3] = v34;
      v35.i64[0] = 0x3F0000003F000000;
      v35.i64[1] = 0x3F0000003F000000;
      *result = vmovn_s32(vcvtq_u32_f32(vmlaq_n_f32(v35, v28, v26)));
      *(result + 8) = (v26 + 0.5);
      goto LABEL_63;
    case 3:
      if (a6)
      {
        v7 = 1;
        while (1)
        {
          v9 = *a4;
          v8 = a4[1];
          v10 = a4[2];
          if (!a5)
          {
            break;
          }

          v11 = *a5++;
          v12 = v11;
          if (v11 >= 0.0)
          {
            v14 = v12 <= 1.0;
            v13 = v6 * v12;
            if (!v14)
            {
              v13 = v6;
            }

            goto LABEL_16;
          }

          *result = 0;
LABEL_28:
          result += 8;
          v18 = v7++;
          a4 += 3;
          if (v18 >= a6)
          {
            return result;
          }
        }

        v13 = v6;
LABEL_16:
        if (v9 < 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = *a4;
        }

        if (v9 > 1.0)
        {
          v15 = 1.0;
        }

        v16 = 1.0;
        v17 = 1.0;
        if (v8 <= 1.0)
        {
          v17 = a4[1];
          if (v8 < 0.0)
          {
            v17 = 0.0;
          }
        }

        if (v10 <= 1.0)
        {
          v16 = a4[2];
          if (v10 < 0.0)
          {
            v16 = 0.0;
          }
        }

        *result = ((v15 * v13) + 0.5);
        *(result + 2) = ((v17 * v13) + 0.5);
        *(result + 4) = ((v16 * v13) + 0.5);
        *(result + 6) = (v13 + 0.5);
        goto LABEL_28;
      }

      break;
    default:
      if (a5)
      {
        if (a6)
        {
          v46 = 0;
          do
          {
            v47 = a5[v46];
            if (v47 >= 0.0)
            {
              v48 = v6;
              if (v47 <= 1.0)
              {
                v48 = ((v47 * v6) + 0.5);
              }
            }

            else
            {
              LOWORD(v48) = 0;
            }

            *(result + 2 * v46++) = v48;
          }

          while (a6 > v46);
        }
      }

      else if (a6)
      {
        v49 = 1;
        do
        {
          *result = v6;
          result += 2;
          v50 = v49++;
        }

        while (v50 < a6);
      }

      break;
  }

  return result;
}