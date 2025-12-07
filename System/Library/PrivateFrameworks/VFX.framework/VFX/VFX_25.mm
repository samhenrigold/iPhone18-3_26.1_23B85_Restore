uint64_t sub_1AF28A130(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB68 != -1)
  {
    sub_1AFDF3568();
  }

  return byte_1ED72F6C0;
}

uint64_t sub_1AF28A168()
{
  byte_1ED72F6C0 = 0;
  byte_1ED72F6C0 = sub_1AF0D5C40(6);
  if (byte_1ED72F6C0)
  {
    byte_1ED72F6C0 = 1;
LABEL_4:
    result = MGGetBoolAnswer();
    goto LABEL_5;
  }

  v1 = sub_1AF2878B4(@"VFXEnableWideGamut", 0, v0);
  result = 0;
  byte_1ED72F6C0 = v1;
  if (v1)
  {
    goto LABEL_4;
  }

LABEL_5:
  byte_1ED72F6C0 = result;
  return result;
}

uint64_t sub_1AF28A1D8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB70 != -1)
  {
    sub_1AFDF357C();
  }

  return byte_1EB633A29;
}

BOOL sub_1AF28A210()
{
  result = sub_1AF0D5C40(16);
  byte_1EB633A29 = result;
  return result;
}

uint64_t sub_1AF28A234(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF3590(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sqrt((v2 / 0xC));
  if (12 * (v10 * v10) != v2)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3608();
    }
  }

  return v10;
}

uint64_t sub_1AF28A2DC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731B50 != -1)
  {
    sub_1AFDF3698();
  }

  return byte_1EB654D28;
}

void *sub_1AF28A314(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v6 = objc_msgSend_bundleIdentifier(v3, v4, v5);
  result = objc_msgSend_hasPrefix_(v6, v7, @"com.apple.vfxstudio");
  byte_1EB654D28 = result;
  return result;
}

CFTypeRef sub_1AF28A34C(CFTypeRef cf)
{
  result = qword_1EB658818;
  if (qword_1EB658818 != cf)
  {
    if (qword_1EB658818)
    {
      CFRelease(qword_1EB658818);
      qword_1EB658818 = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    qword_1EB658818 = result;
  }

  return result;
}

CFTypeRef _VFXSetShaderCacheURL_0(CFTypeRef cf)
{
  result = qword_1EB64FB38;
  if (qword_1EB64FB38 != cf)
  {
    if (qword_1EB64FB38)
    {
      CFRelease(qword_1EB64FB38);
      qword_1EB64FB38 = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    qword_1EB64FB38 = result;
  }

  return result;
}

const __CFString *sub_1AF28A40C(const __CFString *theString)
{
  if (theString)
  {
    return CFStringCreateArrayBySeparatingStrings(0, theString, @".");
  }

  return theString;
}

const __CFArray *sub_1AF28A428(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFStringCreateByCombiningStrings(0, theArray, @".");
  }

  return theArray;
}

__CFArray *sub_1AF28A444(CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  v4.length = CFArrayGetCount(theArray);
  v4.location = 0;
  CFArraySortValues(MutableCopy, v4, sub_1AF28A4BC, 0);
  return MutableCopy;
}

CFArrayRef sub_1AF28A4D0(const __CFDictionary *a1)
{
  if (a1 && (Count = CFDictionaryGetCount(a1)) != 0)
  {
    v3 = Count;
    v4 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a1, v4, 0);
    v5 = CFArrayCreate(*MEMORY[0x1E695E480], v4, v3, MEMORY[0x1E695E9C0]);
    free(v4);
    return v5;
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v7, 0, 0, v8);
  }
}

void sub_1AF28A5A0(const __CFSet *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFSetApplyFunction(a1, sub_1AF28A5E4, &context);
    }
  }
}

void sub_1AF28A5FC(const __CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3[0] = 0;
      v3[1] = a2;
      v4.length = CFArrayGetCount(a1);
      v4.location = 0;
      CFArrayApplyFunction(a1, v4, sub_1AF28A65C, v3);
    }
  }
}

uint64_t sub_1AF28A65C(uint64_t a1, void *a2)
{
  v2 = a2[1];
  ++*a2;
  return (*(v2 + 16))();
}

void sub_1AF28A67C(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      context = a2;
      CFDictionaryApplyFunction(a1, sub_1AF28A6C0, &context);
    }
  }
}

void sub_1AF28A6DC(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_1AF28A4D0(a1);
      v5 = sub_1AF28A444(v4);
      CFRelease(v4);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1AF28A790;
      v6[3] = &unk_1E7A7DF08;
      v6[4] = a2;
      v6[5] = a1;
      sub_1AF28A5FC(v5, v6);
      CFRelease(v5);
    }
  }
}

uint64_t sub_1AF28A790(uint64_t a1, int a2, void *key)
{
  CFDictionaryGetValue(*(a1 + 40), key);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

const void *sub_1AF28A7E4(void *key)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED731B68;
  if (!qword_1ED731B68)
  {
    v16 = xmmword_1E7A7DFC8;
    v17 = *off_1E7A7DFD8;
    v18 = 0;
    v12 = xmmword_1E7A7DF88;
    v13 = *&off_1E7A7DF98;
    v14 = xmmword_1E7A7DFA8;
    v15 = *&off_1E7A7DFB8;
    v8 = xmmword_1E7A7DF48;
    v9 = *&off_1E7A7DF58;
    v10 = xmmword_1E7A7DF68;
    v11 = *&off_1E7A7DF78;
    *keys = xmmword_1E7A7DF28;
    v7 = *&off_1E7A7DF38;
    v4[10] = xmmword_1E7A7E090;
    v4[11] = *off_1E7A7E0A0;
    v5 = 0;
    v4[6] = xmmword_1E7A7E050;
    v4[7] = *&off_1E7A7E060;
    v4[8] = xmmword_1E7A7E070;
    v4[9] = *&off_1E7A7E080;
    v4[2] = xmmword_1E7A7E010;
    v4[3] = *&off_1E7A7E020;
    v4[4] = xmmword_1E7A7E030;
    v4[5] = *&off_1E7A7E040;
    v4[0] = xmmword_1E7A7DFF0;
    v4[1] = *&off_1E7A7E000;
    v2 = CFDictionaryCreate(0, keys, v4, 24, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED731B68 = v2;
  }

  return CFDictionaryGetValue(v2, key);
}

uint64_t sub_1AF28AC9C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_begin(MEMORY[0x1E6979518], a2, a3);
  if (!pthread_main_np())
  {
    objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v4, 1);
  }

  objc_msgSend_setValue_forKey_(MEMORY[0x1E6979518], v4, MEMORY[0x1E695E118], *MEMORY[0x1E697A020]);
  if (*(a1 + 72) == 1)
  {
    objc_msgSend_setLayer_(*(a1 + 32), v5, *(a1 + 40));
  }

  if (*(a1 + 73) == 1)
  {
    v7 = objc_msgSend_layerToFocusForRenderedLayer_(*(a1 + 48), v5, *(a1 + 40));
    v12 = objc_msgSend_usesBoundsInPixels(*(a1 + 48), v8, v9);
    v13 = *(a1 + 40);
    if (v7 != v13)
    {
      objc_msgSend_setAnchorPoint_(*(a1 + 40), v10, v11, 0.0, 0.0);
      objc_msgSend_setAnchorPoint_(v7, v14, v15, 0.0, 0.0);
      objc_msgSend_setPosition_(*(a1 + 40), v16, v17, 0.0, 0.0);
      objc_msgSend_setPosition_(v7, v18, v19, 0.0, 0.0);
    }

    objc_msgSend_bounds(v7, v10, v11);
    v21 = v20;
    v23 = v22;
    if (v12)
    {
      objc_msgSend_contentsScale(v7, v5, v6);
      v21 = v24 * v21;
      v23 = v24 * v23;
    }

    if (v21 != 0.0 || v23 != 0.0)
    {
      v25 = *(a1 + 56) / v21;
      v26 = *(a1 + 64) / v23;
      shouldFlip = objc_msgSend_shouldFlip(*(a1 + 48), v5, v6);
      if (shouldFlip)
      {
        if (v7 == v13)
        {
          objc_msgSend_anchorPoint(*(a1 + 40), v27, v28);
          v35 = v21 * ((v25 + -1.0) * v34);
          objc_msgSend_anchorPoint(*(a1 + 40), v36, v37);
          CATransform3DMakeTranslation(&v54, v35, v23 * ((v26 + -1.0) * v38), 0.0);
          v31 = *(a1 + 40);
          *&a.m31 = *&v54.m31;
          *&a.m33 = *&v54.m33;
          *&a.m41 = *&v54.m41;
          *&a.m43 = *&v54.m43;
          *&a.m11 = *&v54.m11;
          *&a.m13 = *&v54.m13;
          v32 = *&v54.m21;
          v33 = *&v54.m23;
        }

        else
        {
          CATransform3DMakeTranslation(&v56, 0.0, *(a1 + 64), 0.0);
          v31 = *(a1 + 40);
          *&a.m31 = *&v56.m31;
          *&a.m33 = *&v56.m33;
          *&a.m41 = *&v56.m41;
          *&a.m43 = *&v56.m43;
          *&a.m11 = *&v56.m11;
          *&a.m13 = *&v56.m13;
          v32 = *&v56.m21;
          v33 = *&v56.m23;
        }
      }

      else
      {
        CATransform3DMakeTranslation(&v53, 0.0, 0.0, 0.0);
        v31 = *(a1 + 40);
        *&a.m31 = *&v53.m31;
        *&a.m33 = *&v53.m33;
        *&a.m41 = *&v53.m41;
        *&a.m43 = *&v53.m43;
        *&a.m11 = *&v53.m11;
        *&a.m13 = *&v53.m13;
        v32 = *&v53.m21;
        v33 = *&v53.m23;
      }

      *&a.m21 = v32;
      *&a.m23 = v33;
      objc_msgSend_setTransform_(v31, v30, &a);
      CATransform3DMakeScale(&a, v25, v26, 1.0);
      v41 = *(a1 + 40);
      if (v41)
      {
        objc_msgSend_transform(v41, v39, v40);
      }

      else
      {
        memset(&b, 0, sizeof(b));
      }

      CATransform3DConcat(&v52, &a, &b);
      v42 = *(a1 + 40);
      a = v52;
      objc_msgSend_setTransform_(v42, v43, &a);
      if (shouldFlip)
      {
        CATransform3DMakeScale(&a, 1.0, -1.0, 1.0);
        v46 = *(a1 + 40);
        if (v46)
        {
          objc_msgSend_transform(v46, v44, v45);
        }

        else
        {
          memset(&b, 0, sizeof(b));
        }

        CATransform3DConcat(&v50, &a, &b);
        v47 = *(a1 + 40);
        a = v50;
        objc_msgSend_setTransform_(v47, v48, &a);
      }
    }
  }

  return objc_msgSend_commit(MEMORY[0x1E6979518], v5, v6);
}

uint64_t sub_1AF28B6F0(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = xmmword_1F24EBDE8;
  v4 = sub_1AF2768E0();
  sub_1AF276AA4(v4, &v6);
  sub_1AF276A24(v4, a3);
  return v4;
}

uint64_t sub_1AF28B814(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF28BCA0;
  v7[3] = &unk_1E7A7E110;
  v7[4] = a4;
  v5[4] = a4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF28BD18;
  v6[3] = &unk_1E7A7E138;
  v6[4] = a4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF28BD90;
  v5[3] = &unk_1E7A7E160;
  return objc_msgSend_renderToTexture_computeCommandHandler_blitCommandHandler_completionHandler_helper_(a1, a2, a2, v7, v6, v5, a3);
}

uint64_t sub_1AF28BCA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = objc_msgSend_resourceComputeEncoder(*(result + 32), a2, a3);
    isEncoding = objc_msgSend_isEncoding(v4, v5, v6);
    if ((isEncoding & 1) == 0)
    {
      v9 = sub_1AF0D5194(isEncoding, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3830(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    return (*(a2 + 16))(a2, v4);
  }

  return result;
}

uint64_t sub_1AF28BD18(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = objc_msgSend_resourceBlitEncoder(*(result + 32), a2, a3);
    v6 = v4;
    if (!*v4)
    {
      v7 = sub_1AF0D5194(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF38A8(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    return (*(a2 + 16))(a2, *v6);
  }

  return result;
}

id *sub_1AF28BD90(id *result, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_resourceComputeEncoder(result[4], a2, a3);
    isEncoding = objc_msgSend_isEncoding(v5, v6, v7);
    if ((isEncoding & 1) == 0)
    {
      v11 = sub_1AF0D5194(isEncoding, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3830(v11, v9, v10, v12, v13, v14, v15, v16);
      }
    }

    v17 = objc_msgSend_resourceCommandBuffer(v4[4], v9, v10);
    return objc_msgSend_addCompletedHandler_(v17, v18, a2);
  }

  return result;
}

void sub_1AF28BE04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = objc_msgSend_iosurface(*(a1 + 16), a2, a3);
  if (v5)
  {
    IOSurfaceDecrementUseCount(v5);
  }

  *(a1 + 16) = 0;
}

void sub_1AF28BE50(uint64_t a1)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  sub_1AF28BE04(a1, v2, v3);
}

void sub_1AF28BEAC(uint64_t a1, void *a2, __CVMetalTextureCache *a3)
{
  v6 = *(a1 + 8);
  v7 = objc_msgSend_wantsWideGamut(a2, a2, a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType == 875836534)
      {
        goto LABEL_28;
      }

      if (PixelFormatType == 1111970369)
      {
        if (!v7)
        {
          v58 = 81;
          v57 = 80;
          v15 = sub_1AF164420(PixelFormatType, v9);
          v11 = MTLPixelFormatBGRA8Unorm;
          goto LABEL_34;
        }

        v11 = MTLPixelFormatBGRA8Unorm;
        goto LABEL_32;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 0x52474241:
          if (!v7)
          {
            v58 = 71;
            v57 = 70;
            v15 = sub_1AF164420(PixelFormatType, v9);
            v11 = MTLPixelFormatRGBA8Unorm;
            goto LABEL_34;
          }

          v11 = MTLPixelFormatRGBA8Unorm;
          goto LABEL_32;
        case 0x52476641:
          v57 = 125;
          if (v7)
          {
            v53 = sub_1AF164490(PixelFormatType, v9);
          }

          else
          {
            v53 = sub_1AF164458(PixelFormatType, v9);
          }

          v15 = v53;
          v58 = 125;
          v11 = MTLPixelFormatRGBA32Float;
          goto LABEL_34;
        case 0x52476841:
          v57 = 115;
          if (v7)
          {
            v12 = sub_1AF164490(PixelFormatType, v9);
          }

          else
          {
            v12 = sub_1AF164458(PixelFormatType, v9);
          }

          v15 = v12;
          v58 = 115;
          v11 = MTLPixelFormatRGBA16Float;
          goto LABEL_34;
      }
    }

    goto LABEL_67;
  }

  if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_67;
    }

    v11 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
    if (v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (PixelFormatType != 875704934 && PixelFormatType != 875704950)
    {
      if (PixelFormatType == 875836518)
      {
LABEL_28:
        v11 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
        if (!v7)
        {
          goto LABEL_29;
        }

LABEL_32:
        v58 = 553;
        v57 = 552;
        v14 = sub_1AF1642C0(PixelFormatType, v9);
        goto LABEL_33;
      }

LABEL_67:
      LOBYTE(image[0]) = BYTE3(PixelFormatType);
      BYTE1(image[0]) = BYTE2(PixelFormatType);
      BYTE2(image[0]) = BYTE1(PixelFormatType);
      *(image + 3) = PixelFormatType;
      v54 = sub_1AF0D5194(PixelFormatType, v9);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3994();
      }

      return;
    }

    v11 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
    if (v7)
    {
      goto LABEL_32;
    }
  }

LABEL_29:
  v58 = 71;
  v57 = 70;
  v14 = sub_1AF164420(PixelFormatType, v9);
LABEL_33:
  v15 = v14;
LABEL_34:
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v18 = *(a1 + 40);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 40) = 0;
  }

  v19 = CVBufferCopyAttachments(v6, kCVAttachmentMode_ShouldPropagate);
  if (v19)
  {
    v20 = v19;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v19);
    if (ColorSpaceFromAttachments)
    {
      v22 = ColorSpaceFromAttachments;
      v23 = *(a1 + 40);
      if (v23 != v22)
      {
        if (v23)
        {
          CFRelease(v23);
          *(a1 + 40) = 0;
        }

        *(a1 + 40) = CFRetain(v22);
      }

      CFRelease(v22);
    }

    CFRelease(v20);
  }

  if (!*(a1 + 40))
  {
    goto LABEL_47;
  }

  if (CGColorSpaceEqualToColorSpaceIgnoringRange())
  {
    if (*(a1 + 40))
    {
LABEL_48:
      image[0] = 0;
      TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a3, v6, 0, v11, Width, Height, 0, image);
      if (TextureFromImage)
      {
        v26 = sub_1AF0D5194(TextureFromImage, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF3920();
        }

        return;
      }

      Texture = CVMetalTextureGetTexture(image[0]);
      v33 = objc_msgSend_iosurface(Texture, v31, v32);
      if (v33)
      {
        IOSurfaceIncrementUseCount(v33);
      }

      *(a1 + 16) = Texture;

      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v34 = image[0];
LABEL_72:
      CFRelease(v34);
      return;
    }

LABEL_47:
    v11 = VFXMTLPixelFormatSRGBVariant(v11);
    goto LABEL_48;
  }

  textureOut = 0;
  v27 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a3, v6, 0, v11, Width, Height, 0, &textureOut);
  if (!v27)
  {
    v37 = CVMetalTextureGetTexture(textureOut);
    v38 = *(a1 + 24);
    v39 = *(a1 + 32);
    if (!v38 || objc_msgSend_pixelFormat(*(a1 + 24), v35, v36) != v58 || objc_msgSend_width(v38, v40, v41) != Width || objc_msgSend_height(v38, v42, v43) != Height)
    {

      image[0] = 0;
      image[1] = 0;
      v62 = 0;
      CFXTextureDescriptorMake2D(Width, Height, v58, image);
      v48 = 19;
      if (v58 == v57)
      {
        v48 = 3;
      }

      LOBYTE(v62) = v48;
      v49 = objc_msgSend_gpuDevice(a2, v46, v47);
      v59 = *image;
      v60 = v62;
      v50 = CFXGPUDeviceCreateTexture(v49, &v59);
      v38 = v50;
      *(a1 + 24) = v50;
      if (v58 == v57)
      {
        v52 = v50;
      }

      else
      {
        v52 = objc_msgSend_newTextureViewWithPixelFormat_(v50, v51, v57);
      }

      v39 = v52;
      *(a1 + 32) = v52;
    }

    v55 = objc_msgSend_resourceManager(a2, v44, v45);
    objc_msgSend_colorMatchSourceTexture_sourceColorSpace_destinationColorSpace_destinationTexture_renderContext_(v55, v56, v37, *(a1 + 40), v15, v39, a2);
    *(a1 + 16) = v38;
    v34 = textureOut;
    goto LABEL_72;
  }

  v29 = sub_1AF0D5194(v27, v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3920();
  }
}

uint64_t sub_1AF28C6CC(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = xmmword_1F24EBE58;
  v4 = sub_1AF2768E0();
  sub_1AF276AA4(v4, &v6);
  sub_1AF276A24(v4, a3);
  return v4;
}

BOOL sub_1AF28C730(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_player(a1, a2, a3);
  v6 = objc_msgSend_currentItem(v3, v4, v5);
  v9 = objc_msgSend_asset(v6, v7, v8);
  v11 = objc_msgSend_tracksWithMediaCharacteristic_(v9, v10, *MEMORY[0x1E6987508]);
  return objc_msgSend_count(v11, v12, v13) == 0;
}

uint64_t sub_1AF28CAE8(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 96);
  *a3 = *(result + 104);
  *a4 = *(result + 112);
  return result;
}

uint64_t sub_1AF28D038(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 80);
  *a3 = *(result + 88);
  *a4 = *(result + 96);
  return result;
}

_VFXUIKitSourceRegistry *sub_1AF28D51C()
{
  result = objc_alloc_init(_VFXUIKitSourceRegistry);
  qword_1EB658828 = result;
  return result;
}

_VFXUIApplicationObserver *sub_1AF28D874()
{
  result = objc_alloc_init(_VFXUIApplicationObserver);
  qword_1EB658830 = result;
  return result;
}

void sub_1AF28DD50(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uiView(*(a1 + 32), a2, a3);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [_VFXSnapshotWindow alloc];
  v53 = objc_msgSend_initWithFrame_(v15, v16, v17, v8, v10, v12, v14);
  objc_msgSend_setHidden_(v53, v18, 1);
  LODWORD(v19) = 1.0;
  objc_msgSend_setCharge_(v53, v20, v21, v19);
  objc_msgSend_setWindowLevel_(v53, v22, v23, 10000.0);
  v26 = objc_msgSend_uiView(*(a1 + 32), v24, v25);
  objc_msgSend_addSubview_(v53, v27, v26);
  v30 = objc_msgSend_subviews(v53, v28, v29);
  Object = objc_msgSend_firstObject(v30, v31, v32);
  objc_msgSend_setNeedsDisplay(Object, v34, v35);
  objc_msgSend_setNeedsDisplay(v53, v36, v37);
  v40 = objc_msgSend_uiView(*(a1 + 32), v38, v39);
  *(*(a1 + 32) + 32) = objc_msgSend_isOpaque(v40, v41, v42);
  *(*(a1 + 32) + 24) = objc_msgSend_layer(v53, v43, v44);
  v47 = objc_msgSend_superlayer(*(*(a1 + 32) + 24), v45, v46);
  objc_msgSend_setValue_forKey_(v47, v48, MEMORY[0x1E695E118], @"VFXIsBackingViewAsMaterialPropertyTag");
  objc_msgSend_setUiWindow_(*(a1 + 32), v49, v53);
  objc_msgSend_setPosition_(v53, v50, v51, -10000.0, 0.0);
  objc_msgSend_setHidden_(v53, v52, 0);
}

void sub_1AF28E034(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_1AF28E1B0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t sub_1AF28EC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = INFINITY;
  v5 = objc_msgSend_metalTextureWithEngineContext_textureSampler_nextFrameTime_status_(a2, a2, a1, a3, &v8, a4);
  sub_1AF12ECD8(a1, v6, v8);
  return v5;
}

void sub_1AF28ECA0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = INFINITY;
  objc_msgSend_renderWithEngineContext_textureSampler_nextFrameTime_(a2, a2, a1, a3, &v5);
  sub_1AF12ECD8(a1, v4, v5);
}

uint64_t sub_1AF28ED44(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_textureSource(a3, a2, a3);
  if (v4)
  {
    v6 = v4;
    v9 = xmmword_1F24EBEE8;
    v7 = sub_1AF2768E0();
    sub_1AF276AA4(v7, &v9);
    sub_1AF276A24(v7, v6);
  }

  else
  {
    sub_1AF12ED38(a1, v5);
    return 0;
  }

  return v7;
}

VFXSourceRendererRegistry *sub_1AF28EED0()
{
  result = objc_alloc_init(VFXSourceRendererRegistry);
  qword_1EB64FB20 = result;
  return result;
}

uint64_t sub_1AF290524(uint64_t result, const char *a2)
{
  if (result)
  {
    v2 = result;
    if (objc_msgSend_isEqualToString_(result, a2, *MEMORY[0x1E69797F0]))
    {
      return 0;
    }

    else if (objc_msgSend_isEqualToString_(v2, v3, *MEMORY[0x1E69797E8]))
    {
      return 1;
    }

    else if (objc_msgSend_isEqualToString_(v2, v4, *MEMORY[0x1E69797D8]))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1AF290614(uint64_t a1, uint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = MEMORY[0x1E69797D8];
      return *v2;
    }

    if (a1 == 3)
    {
      v2 = MEMORY[0x1E69797E0];
      return *v2;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = MEMORY[0x1E69797F0];
      return *v2;
    }

    if (a1 == 1)
    {
      v2 = MEMORY[0x1E69797E8];
      return *v2;
    }
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3D78();
  }

  return 0;
}

id sub_1AF290784(void *a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3);
  if (result)
  {
    v6 = objc_msgSend_sortedArrayUsingComparator_(a1, v5, &unk_1F24EBEF8);
    v9 = objc_msgSend_count(v6, v7, v8);
    v10 = sub_1AF1151C0(v9);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, &v24, v28, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          objc_msgSend_time(v18, v13, v14);
          v20 = v19;
          v23 = objc_msgSend_eventBlock(v18, v21, v22);
          sub_1AF115228(v10, v23, v20);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v24, v28, 16);
      }

      while (v15);
    }

    return v10;
  }

  return result;
}

void *sub_1AF290934(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sub_1AF1155D8(a1, a2);
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v4, v3);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = sub_1AF11567C(a1, i);
      v8 = sub_1AF115620(a1, i);
      *&v9 = v7;
      v11 = objc_msgSend_animationEventWithKeyTime_block_(VFXAnimationEvent, v10, v8, v9);
      objc_msgSend_addObject_(v5, v12, v11);
    }
  }

  return v5;
}

uint64_t sub_1AF290E58(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_fromValue(a1, v3, v4))
    {
      v7 = objc_msgSend_fromValue(a1, v5, v6);
    }

    else if (objc_msgSend_toValue(a1, v5, v6))
    {
      v7 = objc_msgSend_toValue(a1, v22, v23);
    }

    else
    {
      v7 = objc_msgSend_byValue(a1, v22, v23);
    }

    v18 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_13;
    }

    v20 = sub_1AF0D5194(isKindOfClass, v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = a1;
      v21 = "Warning: unable to infer the type of a basic animation: %@";
      goto LABEL_18;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v10 = objc_msgSend_values(a1, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);
  if (!v13 || (v16 = objc_msgSend_values(a1, v14, v15), v18 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, 0), objc_opt_class(), v13 = objc_opt_isKindOfClass(), (v13 & 1) == 0))
  {
    v20 = sub_1AF0D5194(v13, v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = a1;
      v21 = "Warning: unable to infer the type of a keyframed animation: %@";
LABEL_18:
      _os_log_impl(&dword_1AF0CE000, v20, OS_LOG_TYPE_DEFAULT, v21, &v27, 0xCu);
    }

    return 0;
  }

LABEL_13:
  v25 = objc_msgSend_objCType(v18, v14, v19);

  return sub_1AF376144(v25);
}

id sub_1AF291040(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_animationTimingFunction(VFXTransaction, a2, a3);
  if (!result)
  {
    v5 = MEMORY[0x1E69793D0];
    v6 = *MEMORY[0x1E6979EA0];

    return objc_msgSend_functionWithName_(v5, v4, v6);
  }

  return result;
}

id sub_1AF291090(void *a1, const char *a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3DB4();
    }

    return 0;
  }

  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    if (objc_msgSend_toValue(a1, a2, a3))
    {
      v9 = objc_msgSend_toValue(a1, v7, v8);
LABEL_11:
      v15 = objc_msgSend_objCType(v9, v10, v11);
      v5 = sub_1AF376144(v15);
      goto LABEL_12;
    }

    if (objc_msgSend_fromValue(a1, v7, v8))
    {
      v9 = objc_msgSend_fromValue(a1, v12, v13);
      goto LABEL_11;
    }

    if (objc_msgSend_byValue(a1, v12, v13))
    {
      v9 = objc_msgSend_byValue(a1, a2, v14);
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_12:
  v16 = sub_1AF1CD954(v5, a2);
  if (!v16)
  {
    return 0;
  }

  v18 = v16;
  v19 = sub_1AF1CDA60(v16, v17);
  v21 = sub_1AF113D84(v19, v20);
  sub_1AF291244(v21, a1, v22);
  if (objc_msgSend_toValue(a1, v23, v24))
  {
    v27 = objc_msgSend_toValue(a1, v25, v26);
    if (sub_1AF2912D0(v27, v5, v4, v19))
    {
      sub_1AF113F9C(v21, v18);
    }
  }

  if (objc_msgSend_fromValue(a1, v25, v26))
  {
    v30 = objc_msgSend_fromValue(a1, v28, v29);
    if (sub_1AF2912D0(v30, v5, v4, v19))
    {
      sub_1AF11407C(v21, v18);
    }
  }

  if (objc_msgSend_byValue(a1, v28, v29))
  {
    v33 = objc_msgSend_byValue(a1, v31, v32);
    if (sub_1AF2912D0(v33, v5, v4, v19))
    {
      sub_1AF11415C(v21, v18);
    }
  }

  CFRelease(v18);

  return v21;
}

void sub_1AF291244(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1AF298C80(a1, a2, a3);
  v7 = objc_msgSend_keyPath(a2, v5, v6);
  v8 = sub_1AF28A40C(v7);
  sub_1AF112944(a1, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  isAdditive = objc_msgSend_isAdditive(a2, v9, v10);
  sub_1AF112D10(a1, isAdditive);
  isCumulative = objc_msgSend_isCumulative(a2, v12, v13);

  sub_1AF112DC8(a1, isCumulative);
}

uint64_t sub_1AF2912D0(void *a1, const char *a2, int a3, __CFXImage **a4)
{
  if (a2 == 5)
  {
    if (a3 == 2)
    {
      v5 = objc_msgSend_copyCFXImageFromImage_(VFXMaterialProperty, a2, a1);
      result = 0;
      if (a4)
      {
        if (v5)
        {
          *a4 = v5;
          v7 = v5;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_1AF376368(a1, a4, a2);
  }

  return result;
}

id sub_1AF291368(void *a1, uint64_t a2, char a3)
{
  v151 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_cfxAnimation(a1, v6, v7);
    if (v8)
    {
      v9 = v8;
      sub_1AF291974(v8, a1);
      return v9;
    }
  }

  if (!a2)
  {
    v10 = objc_msgSend_values(a1, v6, v7);
    if (objc_msgSend_count(v10, v11, v12))
    {
      v14 = objc_msgSend_values(a1, v6, v13);
      v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
      v19 = objc_msgSend_objCType(v16, v17, v18);
      a2 = sub_1AF376144(v19);
    }

    else
    {
      a2 = 0;
    }
  }

  v20 = sub_1AF288070(a2, v6);
  if (v20 >= 0x41)
  {
    v23 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3E2C();
    }

    return 0;
  }

  if (objc_msgSend_path(a1, v21, v22))
  {
    NSLog(&cfstr_Cakeyframeanim.isa);
    return 0;
  }

  v27 = objc_msgSend_values(a1, v24, v25);
  v30 = objc_msgSend_count(v27, v28, v29);
  if (!v30)
  {
    v76 = sub_1AF0D5194(v30, v31);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3DF0();
    }

    return 0;
  }

  v137 = v30;
  v138 = sub_1AF11D7D8(v30, v31);
  sub_1AF291244(v138, a1, v32);
  v35 = objc_msgSend_keyTimes(a1, v33, v34);
  v38 = objc_msgSend_values(a1, v36, v37);
  v41 = objc_msgSend_timingFunctions(a1, v39, v40);
  v135 = objc_msgSend_calculationMode(a1, v42, v43);
  v46 = objc_msgSend_tensionValues(a1, v44, v45);
  v49 = objc_msgSend_continuityValues(a1, v47, v48);
  v52 = objc_msgSend_biasValues(a1, v50, v51);
  v142 = v41;
  v143 = objc_msgSend_count(v35, v53, v54);
  v57 = objc_msgSend_count(v41, v55, v56);
  v141 = v46;
  v60 = objc_msgSend_count(v46, v58, v59);
  v140 = v49;
  v63 = objc_msgSend_count(v49, v61, v62);
  v139 = v52;
  v66 = objc_msgSend_count(v52, v64, v65);
  objc_msgSend_duration(a1, v67, v68);
  v70 = v69;
  v134 = *MEMORY[0x1E6979590];
  if (objc_msgSend_isEqualToString_(v135, v71, *MEMORY[0x1E6979590]))
  {
    v133 = v57;
    v75 = a2 == 1 || a2 == 6;
    goto LABEL_33;
  }

  isEqualToString = objc_msgSend_isEqualToString_(v135, v72, *MEMORY[0x1E6979598]);
  v75 = a2 == 1 || a2 == 6;
  if (isEqualToString)
  {
    v133 = v57;
LABEL_33:
    v79 = objc_msgSend_count(v142, v72, v73);
    v82 = !v75;
    if (!v79)
    {
      v82 = 1;
    }

    v136 = v82;
    if (objc_msgSend_count(v142, v80, v81))
    {
      v83 = v75;
    }

    else
    {
      v83 = 0;
    }

    v84 = v137;
    v86 = sub_1AF11C4D0(v137, a2, a3, v136, v83);
    v149 = 0u;
    v150 = 0u;
    __src = 0u;
    v148 = 0u;
    if (v136)
    {
      v87 = 0;
      v88 = 0.0;
      while (v35)
      {
        if (v143 > v87)
        {
          v89 = objc_msgSend_objectAtIndex_(v35, v85, v87);
          objc_msgSend_doubleValue(v89, v90, v91);
LABEL_44:
          v88 = v70 * v92;
        }

        v93 = 0.0;
        v94 = 0.0;
        if (v60 > v87)
        {
          v95 = objc_msgSend_objectAtIndex_(v141, v85, v87);
          objc_msgSend_floatValue(v95, v96, v97);
          v94 = v98;
        }

        if (v63 > v87)
        {
          v99 = objc_msgSend_objectAtIndex_(v140, v85, v87);
          objc_msgSend_floatValue(v99, v100, v101);
          v93 = v102;
        }

        v103 = 0.0;
        if (v66 > v87)
        {
          v104 = objc_msgSend_objectAtIndex_(v139, v85, v87);
          objc_msgSend_floatValue(v104, v105, v106);
          v103 = v107;
        }

        v109 = objc_msgSend_objectAtIndex_(v38, v85, v87);
        sub_1AF376368(v109, &__src, a2);
        v108 = v88;
        v88 = v108;
        sub_1AF11C604(v86, v87++, &__src, 0, 0, v88, v94, v93, v103);
        if (v137 == v87)
        {
          goto LABEL_69;
        }
      }

      v92 = (v87 / v137);
      goto LABEL_44;
    }

    v57 = v133;
    goto LABEL_55;
  }

  v84 = v137;
  v86 = sub_1AF11C4D0(v137, a2, a3, 0, 0);
  v149 = 0u;
  v150 = 0u;
  __src = 0u;
  v148 = 0u;
LABEL_55:
  v111 = 0;
  v145 = 0;
  v146 = 0;
  v144 = 0;
  v112 = 0.0;
  do
  {
    if (!v35)
    {
      v116 = (v111 / v84);
      goto LABEL_60;
    }

    if (v143 > v111)
    {
      v113 = objc_msgSend_objectAtIndex_(v35, v85, v111);
      objc_msgSend_doubleValue(v113, v114, v115);
LABEL_60:
      v112 = v70 * v116;
    }

    v117 = objc_msgSend_objectAtIndex_(v38, v85, v111);
    sub_1AF376368(v117, &__src, a2);
    if (a2 == 6 || a2 == 1)
    {
      if (v57 > v111 && (v119 = objc_msgSend_objectAtIndex_(v142, v118, v111)) != 0)
      {
        v121 = v119;
        v122 = &v145;
        objc_msgSend_getControlPointAtIndex_values_(v119, v120, 1, &v145);
        objc_msgSend_getControlPointAtIndex_values_(v121, v123, 2, &v144);
        v124 = &v146;
      }

      else
      {
        v145 = 0;
        v124 = &v146;
        v122 = &v145;
      }
    }

    else
    {
      v122 = 0;
      v124 = 0;
    }

    v125 = v112;
    v112 = v125;
    sub_1AF11C604(v86, v111, &__src, v124, v122, v125, 0.0, 0.0, 0.0);
    v146 = v144;
    ++v111;
  }

  while (v84 != v111);
LABEL_69:
  v126 = objc_msgSend_calculationMode(a1, v85, v110);
  if (objc_msgSend_isEqualToString_(v126, v127, *MEMORY[0x1E69795A0]))
  {
    v129 = 0;
    v130 = 1;
    goto LABEL_76;
  }

  if (objc_msgSend_isEqualToString_(v126, v128, *MEMORY[0x1E69795B8]))
  {
    v130 = 0;
    goto LABEL_73;
  }

  if (objc_msgSend_isEqualToString_(v126, v131, v134))
  {
    v129 = 0;
    v130 = 2;
    goto LABEL_76;
  }

  if (objc_msgSend_isEqualToString_(v126, v132, *MEMORY[0x1E6979598]))
  {
    v130 = 2;
LABEL_73:
    v129 = 1;
LABEL_76:
    sub_1AF11CE9C(v86, v129);
    sub_1AF11CF38(v86, v130);
  }

  sub_1AF11D828(v138, v86);
  CFRelease(v86);
  return v138;
}

uint64_t sub_1AF291974(uint64_t a1, void *a2)
{
  v3 = sub_1AF113364(a1, a2);
  objc_msgSend_delegate(a2, v4, v5);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *v3 = sub_1AF295CA4;
  }

  v3[1] = sub_1AF295E98;
  return result;
}

__n128 *sub_1AF2919D4(void *a1, void *a2)
{
  v2 = sub_1AF291A30(a1, a2);
  v4 = v2;
  if (v2)
  {
    v5 = sub_1AF1157BC(v2, v3);
    if (v5 == CFGetTypeID(v4))
    {
      v6 = sub_1AF114534(v4);
      if (v6)
      {
        v7 = v6;
        v8 = v6;
        return v7;
      }
    }
  }

  return v4;
}

id sub_1AF291A30(void *a1, void *a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v21 = sub_1AF0D5194(isKindOfClass, v6);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3EA0(a1, v21);
      }

      return 0;
    }

    v8 = objc_msgSend_keyPath(a1, v6, v7);
    v12 = objc_msgSend_copyAnimationChannelForKeyPath_animation_(a2, v9, v8, a1);
    if (v12 && (v13 = objc_msgSend___CFObject(a2, v10, v11), (v14 = sub_1AF1DB564(v13, v12, 1)) != 0))
    {
      v16 = v14;
      if (sub_1AF1DE3A8(v14, v15))
      {
        v18 = sub_1AF1DE538(v16, v17);
        v20 = sub_1AF1DE4A8(v16, v19);
      }

      else
      {
        v20 = 0;
        v18 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      v20 = 0;
      v18 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = sub_1AF291090(a1, v18, v20);
    }

    else
    {
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();
      if ((v24 & 1) == 0)
      {
        v26 = sub_1AF0D5194(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF3F24(a1, v26);
        }

        v22 = 0;
        goto LABEL_26;
      }

      v23 = sub_1AF291368(a1, v18, v20);
    }

    v22 = v23;
    if (v12 && v23)
    {
      sub_1AF112944(v23, v12);
    }

LABEL_26:

    return v22;
  }

  return sub_1AF299000(a1, a2);
}

VFXKeyframeAnimation *sub_1AF291C18(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    v4 = sub_1AF11D778(v2, v3);
    if (v2 == v4)
    {
      if (sub_1AF11D8C8(a1, v5))
      {
        v7 = objc_alloc_init(VFXKeyframeAnimation);
        objc_msgSend_setCfxAnimation_(v7, v8, a1);
        v9 = v7;
LABEL_8:
        v10 = v9;
LABEL_36:
        v52 = sub_1AF112A24(a1, v6);
        objc_msgSend_setDuration_(v10, v53, v54, v52);
        return v10;
      }
    }

    else
    {
      v11 = sub_1AF1157BC(v4, v5);
      if (v2 == v11)
      {
        v9 = sub_1AF299204(a1);
        goto LABEL_8;
      }

      v13 = sub_1AF11332C(v11, v12);
      if (v2 == v13)
      {
        v10 = objc_msgSend_animation(MEMORY[0x1E6979318], v14, v15);
        v17 = sub_1AF1140F0(a1, v16);
        if (v17)
        {
          v19 = v17;
          v20 = sub_1AF1CDA60(v17, v18);
          v22 = sub_1AF1CDAAC(v19, v21);
          v24 = sub_1AF376790(v20, v22, v23);
          if (v24)
          {
            objc_msgSend_setFromValue_(v10, v25, v24);
          }

          else
          {
            v31 = sub_1AF0D5194(0, v25);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert startValue", buf, 2u);
            }
          }

          CFRelease(v19);
        }

        v32 = sub_1AF114010(a1, v18);
        if (v32)
        {
          v34 = v32;
          v35 = sub_1AF1CDA60(v32, v33);
          v37 = sub_1AF1CDAAC(v34, v36);
          v39 = sub_1AF376790(v35, v37, v38);
          if (v39)
          {
            objc_msgSend_setToValue_(v10, v40, v39);
          }

          else
          {
            v41 = sub_1AF0D5194(0, v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 0;
              _os_log_impl(&dword_1AF0CE000, v41, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert endValue", v57, 2u);
            }
          }

          CFRelease(v34);
        }

        v42 = sub_1AF1141D0(a1, v33);
        if (v42)
        {
          v44 = v42;
          v45 = sub_1AF1CDA60(v42, v43);
          v47 = sub_1AF1CDAAC(v44, v46);
          v49 = sub_1AF376790(v45, v47, v48);
          if (v49)
          {
            objc_msgSend_setByValue_(v10, v50, v49);
          }

          else
          {
            v51 = sub_1AF0D5194(0, v50);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v56[0] = 0;
              _os_log_impl(&dword_1AF0CE000, v51, OS_LOG_TYPE_DEFAULT, "Warning: VFXSimpleAnimationToCABasicAnimation - can't convert byValue", v56, 2u);
            }
          }

          CFRelease(v44);
        }

        sub_1AF298E6C(v10, a1);
        goto LABEL_36;
      }

      if (v2 == sub_1AF1142BC(v13, v14))
      {
        v27 = sub_1AF11447C(a1, v26);
        v10 = sub_1AF299204(v27);
        if (v27)
        {
          CFRelease(v27);
        }

        goto LABEL_36;
      }

      v28 = CFCopyTypeIDDescription(v2);
      v30 = sub_1AF0D5194(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3FA8();
      }

      CFRelease(v28);
    }

    v10 = 0;
    goto LABEL_36;
  }

  return 0;
}

__CFString *sub_1AF291EF0(void *a1, __CFString *a2, uint64_t a3)
{
  if (!objc_msgSend_length(a2, a2, a3))
  {
    return 0;
  }

  v7 = objc_msgSend___CFObject(a1, v5, v6);
  v8 = sub_1AF28A40C(a2);
  v9 = sub_1AF1DB564(v7, v8, 0);
  v11 = v9;
  if (v9 && sub_1AF1DE3A8(v9, v10))
  {
    v12 = v8;
LABEL_14:
    CFRelease(v11);
    return v12;
  }

  v13 = sub_1AF376D98(a1, a2);
  if (v13)
  {
    v16 = v13;
    v17 = objc_msgSend___CFObject(a1, v14, v15);
    if (sub_1AF16D234(v17) && (sub_1AF16E2D4(v17, a2, v16), sub_1AF16E3F4(v17, a2)))
    {
      v20 = MEMORY[0x1E695DF70];
      v21 = objc_msgSend_count(v8, v18, v19);
      v12 = objc_msgSend_arrayWithCapacity_(v20, v22, v21 + 1);
      objc_msgSend_addObject_(v12, v23, @"customProperty");
      objc_msgSend_addObjectsFromArray_(v12, v24, v8);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v8);
  if (v11)
  {
    goto LABEL_14;
  }

  return v12;
}

uint64_t sub_1AF292034(_BOOL8 a1, char *a2, const void *a3, void *a4, double a5)
{
  v9 = a1;
  if (!a3 && (v10 = sub_1AF0D5194(a1, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0D34(v10, a2, a3, v11, v12, v13, v14, v15);
    if (v9)
    {
LABEL_4:
      result = objc_msgSend_animationPlayerRef(v9, a2, a3);
      if (result)
      {
        v19 = result;
        v20 = objc_msgSend___CFObject(a2, v17, v18);
        if (v20)
        {
          v21 = v20;
          v22 = sub_1AF16D234(v20);
          if ((v22 & 1) == 0)
          {
            v25 = sub_1AF0D5194(v22, v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF4018(v25, v23, v24, v26, v27, v28, v29, v30);
            }
          }

          v31 = objc_msgSend_cfxTimingFunction(a4, v23, v24);
          sub_1AF16D744(v21, v19, a3, v31, a5);
        }

        return 1;
      }

      return result;
    }
  }

  else if (v9)
  {
    goto LABEL_4;
  }

  v32 = sub_1AF0D5194(a1, a2);
  result = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDF4090();
    return 0;
  }

  return result;
}

void sub_1AF29213C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AF16D234(v4);
    if ((v6 & 1) == 0)
    {
      v8 = sub_1AF0D5194(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4100(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    sub_1AF16D870(v5, a2, 0);
  }
}

void sub_1AF2921A8(void *a1, const char *a2, void *a3, double a4)
{
  v7 = objc_msgSend___CFObject(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AF16D234(v7);
    if ((v9 & 1) == 0)
    {
      v12 = sub_1AF0D5194(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4178(v12, v10, v11, v13, v14, v15, v16, v17);
      }
    }

    v18 = objc_msgSend_cfxTimingFunction(a3, v10, v11);
    sub_1AF16DAC8(v8, a2, v18, a4);
  }
}

const __CFDictionary *sub_1AF292230(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend___CFObject(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = sub_1AF16D234(result);
    if ((v5 & 1) == 0)
    {
      v7 = sub_1AF0D5194(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF41F0(v7, v6, v8, v9, v10, v11, v12, v13);
      }
    }

    return sub_1AF16CA10(v4, v6);
  }

  return result;
}

void sub_1AF292288(void *a1, char *a2, double a3, uint64_t a4)
{
  v6 = objc_msgSend___CFObject(a1, a2, a4);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AF16D234(v6);
    if ((v8 & 1) == 0)
    {
      v11 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4268(v11, v9, v10, v12, v13, v14, v15, v16);
      }
    }

    v17 = objc_msgSend_cfxTimingFunction(a2, v9, v10);
    sub_1AF16D9A8(v7, v17, a3);
  }
}

void sub_1AF292308(void *a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend_setValue_forKey_(a1, v4, v5, @"SCNAnimationEventsKey");
}

void *sub_1AF292378(void *a1, const char *a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(a1, a2, a3);
  v7 = objc_msgSend_fillMode(a1, v5, v6);
  objc_msgSend_setFillMode_(v4, v8, v7);
  objc_msgSend_speed(a1, v9, v10);
  objc_msgSend_setSpeed_(v4, v11, v12);
  v15 = objc_msgSend_autoreverses(a1, v13, v14);
  objc_msgSend_setAutoreverses_(v4, v16, v15);
  objc_msgSend_repeatCount(a1, v17, v18);
  objc_msgSend_setRepeatCount_(v4, v19, v20);
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(a1, v21, v22);
  objc_msgSend_setRemovedOnCompletion_(v4, v24, isRemovedOnCompletion);
  objc_msgSend_duration(a1, v25, v26);
  objc_msgSend_setDuration_(v4, v27, v28);
  objc_msgSend_beginTime(a1, v29, v30);
  objc_msgSend_setBeginTime_(v4, v31, v32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = objc_msgSend_keyPath(a1, v33, v34);
      objc_msgSend_setKeyPath_(v4, v36, v35);
      isAdditive = objc_msgSend_isAdditive(a1, v37, v38);
      objc_msgSend_setAdditive_(v4, v40, isAdditive);
      isCumulative = objc_msgSend_isCumulative(a1, v41, v42);
      objc_msgSend_setCumulative_(v4, v44, isCumulative);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = objc_msgSend_calculationMode(a1, v45, v46);
      objc_msgSend_setCalculationMode_(v4, v48, v47);
      v51 = objc_msgSend_values(a1, v49, v50);
      objc_msgSend_setValues_(v4, v52, v51);
      v55 = objc_msgSend_keyTimes(a1, v53, v54);
      objc_msgSend_setKeyTimes_(v4, v56, v55);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_mass(a1, v57, v58);
      objc_msgSend_setMass_(v4, v59, v60);
      objc_msgSend_initialVelocity(a1, v61, v62);
      objc_msgSend_setInitialVelocity_(v4, v63, v64);
      objc_msgSend_stiffness(a1, v65, v66);
      objc_msgSend_setStiffness_(v4, v67, v68);
      objc_msgSend_damping(a1, v69, v70);
      objc_msgSend_setDamping_(v4, v71, v72);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v75 = objc_msgSend_animations(v4, v73, v74);
    v76 = objc_alloc(MEMORY[0x1E695DF70]);
    v79 = objc_msgSend_count(v75, v77, v78);
    v81 = objc_msgSend_initWithCapacity_(v76, v80, v79);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v82, &v92, v96, 16);
    if (v83)
    {
      v86 = v83;
      v87 = *v93;
      do
      {
        v88 = 0;
        do
        {
          if (*v93 != v87)
          {
            objc_enumerationMutation(v75);
          }

          v89 = objc_msgSend_vfx_deepCopy(*(*(&v92 + 1) + 8 * v88), v84, v85);
          objc_msgSend_addObject_(v81, v90, v89);

          ++v88;
        }

        while (v86 != v88);
        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v84, &v92, v96, 16);
      }

      while (v86);
    }

    objc_msgSend_setAnimations_(v4, v84, v81);
  }

  return v4;
}

uint64_t sub_1AF2926B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = objc_msgSend_cfxAnimation(a1, v9, v10);
  if (!v11)
  {
    return 0;
  }

  return sub_1AF11D910(v11, a3, a4, a5);
}

void sub_1AF293900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  sub_1AF1129D0(*(v3 + 8), a2, v4);
  sub_1AF112B00(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 32));
  sub_1AF112B9C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 56));
  sub_1AF112FE0(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 48));
  sub_1AF11307C(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 40));
  sub_1AF112ECC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 57));
  v9 = sub_1AF1135C8(*(*(a1 + 32) + 8), v8);
  v10 = *(a1 + 32);
  if (*(v10 + 62))
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  sub_1AF113614(*(v10 + 8), v9 & 0xFFFFFFFC | *(v10 + 61) | v11);
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  if (v15)
  {
    v16 = *(v14 + 8);
    v17 = objc_msgSend_cfxTimingFunction(v15, v12, v13);
    sub_1AF112C48(v16, v17);
    v14 = *(a1 + 32);
  }

  sub_1AF1131B4(*(v14 + 8), *(v14 + 58));
  sub_1AF112D10(*(*(a1 + 32) + 8), *(*(a1 + 32) + 59));
  v18 = *(a1 + 32);
  v19 = *(v18 + 8);
  v20 = *(v18 + 60);

  sub_1AF112DC8(v19, v20);
}

void sub_1AF294B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF294B48(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = objc_msgSend_animationKeys(a2, a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v29, 16);
  if (result)
  {
    v9 = result;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_animationPlayerForKey_(a2, v8, *(*(&v25 + 1) + 8 * v11));
        v13 = *(*(*(a1 + 40) + 8) + 24);
        v16 = objc_msgSend_animation(v12, v14, v15);
        objc_msgSend_duration(v16, v17, v18);
        if (v13 >= v21)
        {
          v21 = v13;
        }

        *(*(*(a1 + 40) + 8) + 24) = v21;
        v22 = *(a1 + 32);
        v23 = objc_msgSend_animation(v12, v19, v20);
        objc_msgSend_addObject_(v22, v24, v23);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v29, 16);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF295218(uint64_t a1)
{
  v2 = sub_1AF28A40C(*(a1 + 32));
  sub_1AF112944(*(*(a1 + 40) + 8), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

float sub_1AF295344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  sub_1AF1129D0(*(*(a1 + 32) + 8), a2, v2);
  return result;
}

void sub_1AF2957CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1135C8(*(*(a1 + 32) + 8), a2) & 0xFFFFFFFE;
  v4 = *(*(a1 + 32) + 8);
  v5 = v3 | *(a1 + 40);

  sub_1AF113614(v4, v5);
}

void sub_1AF2958D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1135C8(*(*(a1 + 32) + 8), a2) & 0xFFFFFFFD;
  if (*(a1 + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(a1 + 32) + 8);

  sub_1AF113614(v5, v4 | v3);
}

CFTypeRef sub_1AF2959E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxTimingFunction(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);

  return sub_1AF112C48(v5, v4);
}

void *sub_1AF295C74(uint64_t a1, uint64_t a2)
{
  result = sub_1AF113364(*(*(a1 + 32) + 8), a2);
  *result = sub_1AF295CA4;
  return result;
}

uint64_t (**sub_1AF295CA4(uint64_t a1, uint64_t a2))(void *, id *, id *)
{
  v3 = sub_1AF1199E8(a1, a2);
  v4 = sub_1AF16CDEC(v3);
  v7 = objc_msgSend_userAnimation(v4, v5, v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
  }

  v10 = objc_msgSend_delegate(v7, v8, v9);
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF29937C;
    v18[3] = &unk_1E7A7E198;
    v18[4] = v10;
    v18[5] = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  result = objc_msgSend_animationDidStart(v4, v11, v12);
  if (result)
  {
    v15 = result;
    v16 = sub_1AF119A30(a1, v14);
    v17 = sub_1AF16CDEC(v16);
    return v15[2](v15, v4, v17);
  }

  return result;
}

uint64_t sub_1AF295E68(uint64_t a1, uint64_t a2)
{
  result = sub_1AF113364(*(*(a1 + 32) + 8), a2);
  *(result + 8) = sub_1AF295E98;
  return result;
}

uint64_t sub_1AF295E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v75 = *MEMORY[0x1E69E9840];
  v7 = sub_1AF1199E8(a1, a2);
  v8 = sub_1AF16CDEC(v7);
  v11 = objc_msgSend_userAnimation(v8, v9, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_msgSend_delegate(v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  if (!sub_1AF112E80(v7, v12))
  {
    goto LABEL_26;
  }

  v16 = sub_1AF119A30(v6, v15);
  v17 = sub_1AF16CDEC(v16);
  v19 = sub_1AF113270(v7, v18);
  if (v19)
  {
    v21 = sub_1AF1142BC(v19, v20);
    if (v21 == CFGetTypeID(v7))
    {
      v66 = a4;
      v67 = v5;
      v22 = sub_1AF114F84(v7);
      objc_msgSend_begin(VFXTransaction, v23, v24);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v25, v26, 0.0);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v27, &v70, v74, 16);
      if (v28)
      {
        v31 = v28;
        v32 = *v71;
        do
        {
          v33 = 0;
          do
          {
            if (*v71 != v32)
            {
              objc_enumerationMutation(v22);
            }

            v34 = *(*(&v70 + 1) + 8 * v33);
            v35 = objc_msgSend_presentationObject(v17, v29, v30);
            v37 = objc_msgSend_valueForKeyPath_(v35, v36, v34);
            objc_msgSend_setValue_forKeyPath_(v17, v38, v37, v34);
            ++v33;
          }

          while (v31 != v33);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, &v70, v74, 16);
        }

        while (v31);
      }

      objc_msgSend_commit(VFXTransaction, v29, v30);

      v5 = v67;
      a4 = v66;
    }

    else
    {
      v39 = sub_1AF112998(v7);
      if (v39)
      {
        v41 = v39;
        if (v17)
        {
          v42 = v17;
        }

        else
        {
          if (v6)
          {
            while (1)
            {
              v43 = sub_1AF119DEC(v6, v20);
              v6 = v43;
              if (!v43)
              {
                break;
              }

              v44 = sub_1AF119A30(v43, v20);
              v45 = sub_1AF16CDEC(v44);
              if (v45)
              {
                v42 = v45;
                goto LABEL_23;
              }
            }
          }

          v42 = 0;
        }

LABEL_23:
        objc_msgSend_begin(VFXTransaction, v20, v40);
        objc_msgSend_setAnimationDuration_(VFXTransaction, v46, v47, 0.0);
        v48 = sub_1AF28A428(v41);
        v51 = objc_msgSend_presentationObject(v42, v49, v50);
        v53 = objc_msgSend_valueForKeyPath_(v51, v52, v48);
        objc_msgSend_setValue_forKeyPath_(v42, v54, v53, v48);

        objc_msgSend_commit(VFXTransaction, v55, v56);
      }
    }
  }

  if (v5)
  {
    v57 = objc_msgSend___removeAnimation_forKey_(v17, v20, v8, a4);
  }

  else
  {
LABEL_26:
    v57 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF299388;
    block[3] = &unk_1E7A7E470;
    block[4] = v14;
    block[5] = v11;
    v69 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v60 = objc_msgSend_animationDidStop(v8, v58, v59);
  if (v60)
  {
    v62 = v60;
    v63 = sub_1AF119A30(v6, v61);
    v64 = sub_1AF16CDEC(v63);
    (*(v62 + 16))(v62, v8, v64, v5);
  }

  return v57;
}

CFTypeRef sub_1AF2962B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = sub_1AF290784(*(a1 + 40), a2, a3);

  return sub_1AF113490(v3, v4);
}

void sub_1AF296430(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1142BC(a1, a2);
  v4 = CFGetTypeID(*(*(a1 + 32) + 8));
  if (v3 == v4)
  {
    v6 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF44E0();
    }
  }

  sub_1AF112D10(*(*(a1 + 32) + 8), *(a1 + 40));
}

void sub_1AF296550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1142BC(a1, a2);
  v4 = CFGetTypeID(*(*(a1 + 32) + 8));
  if (v3 == v4)
  {
    v6 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF451C();
    }
  }

  sub_1AF112DC8(*(*(a1 + 32) + 8), *(a1 + 40));
}

void sub_1AF29679C(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == sub_1AF1157BC(v2, v3))
  {
    v5 = sub_1AF115980(a1, v4);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = v5 & 0x7FFFFFFF;
      do
      {
        v8 = sub_1AF1159CC(a1, v6);
        sub_1AF29679C(v8);
        ++v6;
      }

      while (v7 != v6);
    }
  }

  else
  {
    v9 = CFGetTypeID(a1);
    if (v9 == sub_1AF11D778(v9, v10))
    {
      v12 = sub_1AF11D8C8(a1, v11);
      v13 = 0;
      sub_1AF11D514(v12, &v13);
    }
  }
}

void sub_1AF296FFC(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 72));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 80), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 8));
    v7 = (*(a1 + 40) + 72);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF297470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF29760C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 80);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF297A2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF297B70(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF297C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF297CE8(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF297E20(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF297F5C(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF298004;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

uint64_t sub_1AF2982D8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF298338(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF298C14(uint64_t a1, void *a2, void *a3)
{
  objc_msgSend_time(a2, a2, a3);
  v6 = v5;
  objc_msgSend_time(a3, v7, v8);
  if (v6 < v11)
  {
    return -1;
  }

  objc_msgSend_time(a2, v9, v10);
  v14 = v13;
  objc_msgSend_time(a3, v15, v16);
  return v14 != v17;
}

uint64_t sub_1AF298C80(uint64_t a1, void *a2, uint64_t a3)
{
  objc_msgSend_duration(a2, a2, a3);
  v6 = v5;
  v9 = objc_msgSend_autoreverses(a2, v7, v8);
  v10 = v6;
  sub_1AF1129D0(a1, v11, v10);
  objc_msgSend_repeatCount(a2, v12, v13);
  v15 = v14;
  objc_msgSend_repeatDuration(a2, v16, v17);
  if (v15 == 0.0)
  {
    v21 = v20;
    if (v21 != 0.0 && v6 != 0.0)
    {
      v22 = v21;
      objc_msgSend_duration(a2, v18, v19);
      v24 = v22 / v23;
      if (v9)
      {
        v15 = v24 * 0.5;
      }

      else
      {
        v15 = v24;
      }
    }
  }

  sub_1AF112B00(a1, v18, v15);
  sub_1AF112B9C(a1, v9);
  objc_msgSend_beginTime(a2, v25, v26);
  sub_1AF112FE0(a1, v27, v28);
  objc_msgSend_timeOffset(a2, v29, v30);
  sub_1AF11307C(a1, v31, v32);
  objc_msgSend_speed(a2, v33, v34);
  sub_1AF113118(a1, v35, v36);
  isRemovedOnCompletion = objc_msgSend_isRemovedOnCompletion(a2, v37, v38);
  sub_1AF112ECC(a1, isRemovedOnCompletion);
  v42 = objc_msgSend_fillMode(a2, v40, v41);
  v44 = sub_1AF290524(v42, v43);
  sub_1AF113614(a1, v44);
  v47 = objc_msgSend_animationEvents(a2, v45, v46);
  v50 = sub_1AF290784(v47, v48, v49);
  sub_1AF113490(a1, v50);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_mass(a2, v51, v52);
    v54 = v53;
    objc_msgSend_stiffness(a2, v55, v56);
    v58 = v57;
    objc_msgSend_damping(a2, v59, v60);
    v62 = v61;
    objc_msgSend_initialVelocity(a2, v63, v64);
    v66 = v65;
    v67 = sub_1AF120B08(v54, v58, v62, v66);
    sub_1AF112C48(a1, v67);
    CFRelease(v67);
  }

  else
  {
    v68 = objc_msgSend_timingFunction(a2, v51, v52);
    if (v68)
    {
      v70 = sub_1AF36FC84(v68, v69);
      sub_1AF112C48(a1, v70);
    }
  }

  return sub_1AF291974(a1, a2);
}

void *sub_1AF298E6C(void *a1, uint64_t a2)
{
  v4 = sub_1AF112998(a2);
  if (v4)
  {
    v6 = sub_1AF28A428(v4);
    objc_msgSend_setKeyPath_(a1, v7, v6);
  }

  v8 = sub_1AF112E34(a2, v5);
  objc_msgSend_setAdditive_(a1, v9, v8);
  v11 = sub_1AF112D7C(a2, v10);
  objc_msgSend_setCumulative_(a1, v12, v11);

  return sub_1AF298EFC(a1, a2);
}

void *sub_1AF298EFC(void *a1, uint64_t a2)
{
  v4 = sub_1AF112A24(a2, a2);
  objc_msgSend_setDuration_(a1, v5, v6, v4);
  *&v8 = sub_1AF112B54(a2, v7);
  objc_msgSend_setRepeatCount_(a1, v9, v10, v8);
  v12 = sub_1AF112BFC(a2, v11);
  objc_msgSend_setAutoreverses_(a1, v13, v12);
  v15 = sub_1AF113034(a2, v14);
  objc_msgSend_setBeginTime_(a1, v16, v17, v15);
  v19 = sub_1AF1130D0(a2, v18);
  objc_msgSend_setTimeOffset_(a1, v20, v21, v19);
  *&v23 = sub_1AF11316C(a2, v22);
  objc_msgSend_setSpeed_(a1, v24, v25, v23);
  v27 = sub_1AF112E80(a2, v26);
  objc_msgSend_setRemovedOnCompletion_(a1, v28, v27);
  v30 = sub_1AF1135C8(a2, v29);
  v32 = sub_1AF290614(v30, v31);
  objc_msgSend_setFillMode_(a1, v33, v32);
  v35 = sub_1AF113448(a2, v34);
  v37 = sub_1AF290934(v35, v36);
  objc_msgSend_setAnimationEvents_(a1, v38, v37);
  result = sub_1AF112CC8(a2, v39);
  if (result)
  {
    v43 = sub_1AF36FD0C(result, v41);

    return objc_msgSend_setTimingFunction_(a1, v42, v43);
  }

  return result;
}

id sub_1AF299000(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = sub_1AF11581C(a1, a2);
  sub_1AF298C80(v4, a1, v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_animations(a1, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v35, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = sub_1AF299000(v14, a2);
          sub_1AF11588C(v4, v15);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_msgSend_keyPath(v14, v16, v17);
            v21 = objc_msgSend_copy(v18, v19, v20);
            if (v21)
            {
              v23 = v21;
              v24 = sub_1AF291A30(v14, a2);
              if (v24)
              {
                sub_1AF11588C(v4, v24);
              }
            }

            else
            {
              v25 = sub_1AF0D5194(0, v22);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v32 = v14;
                v33 = 2112;
                v34 = v4;
                _os_log_error_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_ERROR, "Error: sub-animation %@ of %@ has no keyPath - ignoring", buf, 0x16u);
              }
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v27, v35, 16);
    }

    while (v11);
  }

  return v4;
}

id sub_1AF299204(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6979308]);
  sub_1AF298EFC(v2, a1);
  v4 = sub_1AF115A28(a1, v3);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v7, Count);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v11 = sub_1AF1159CC(a1, i);
        v12 = sub_1AF291C18(v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = sub_1AF112998(v11);
          if (v14)
          {
            v16 = objc_msgSend_componentsJoinedByString_(v14, v15, @".");
            objc_msgSend_setKeyPath_(v12, v17, v16);
          }

          else
          {
            v18 = sub_1AF0D5194(0, v15);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v20 = 0;
              _os_log_impl(&dword_1AF0CE000, v18, OS_LOG_TYPE_DEFAULT, "Warning: VFXAnimationGroupToCAAnimationGroup - no target path", v20, 2u);
            }
          }
        }

        objc_msgSend_addObject_(v9, v13, v12);
      }
    }
  }

  else
  {
    v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, 0);
  }

  objc_msgSend_setAnimations_(v2, v8, v9);
  return v2;
}

uint64_t sub_1AF29A394(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 56);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29A3F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 56);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF29A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF29A580(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = objc_msgSend_asset(a2, a2, a3);
  v9 = objc_msgSend_name(v6, v7, v8);
  result = objc_msgSend_isEqualToString_(v9, v10, *(a1 + 32));
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void sub_1AF29A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF29A6BC(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = objc_msgSend_name(a2, a2, a3);
  result = objc_msgSend_isEqualToString_(v6, v7, *(a1 + 32));
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void *sub_1AF29ACF4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  objc_msgSend_asset(a2, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_asset(v3, v4, v5);
    v9 = objc_msgSend_entityObject(v6, v7, v8);
    if (objc_msgSend_doNotExport(v9, v10, v11))
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1AF29AFCC(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29B02C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29B7C0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29B820(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29C65C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_behaviorGraph(a2, a2, a3);
  v6 = objc_msgSend_coreEntityHandle(v3, v4, v5);
  v9 = objc_msgSend_entityObject(v6, v7, v8);

  return objc_msgSend_setIsEnabled_(v9, v10, 1);
}

uint64_t sub_1AF29C6C4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_behaviorGraph(a2, a2, a3);
  v6 = objc_msgSend_coreEntityHandle(v3, v4, v5);
  v9 = objc_msgSend_entityObject(v6, v7, v8);

  return objc_msgSend_setIsEnabled_(v9, v10, 0);
}

uint64_t sub_1AF29C92C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29C98C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29D0AC(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1AF29D4B0(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_didFinishPlayback(*(a1 + 32), a2, a3);
  if (result)
  {
    v7 = *(objc_msgSend_didFinishPlayback(*(a1 + 32), v5, v6) + 16);

    return v7();
  }

  return result;
}

uint64_t sub_1AF29D508(uint64_t a1)
{
  dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 48));
  objc_msgSend_setCompleted_(*(a1 + 32), v2, 1);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF29D5B8;
  v6[3] = &unk_1E7A7E2E8;
  v8 = *(a1 + 56);
  v3 = *(a1 + 32);
  v7 = vextq_s8(v3, v3, 8uLL);
  return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v4, v3.i64[0], v6);
}

uint64_t sub_1AF29D5B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    sub_1AF1BB91C(v4, *(a1 + 32), 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 40);
  if (v6[50] == 1)
  {

    return MEMORY[0x1EEE66B58](v6, sel_recycle, a3);
  }

  else
  {

    return objc_msgSend_reset(v6, a2, a3);
  }
}

uint64_t sub_1AF29D634(int8x16_t *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_loops(*(a1[2].i64[0] + 24), a2, a3) && (v5 = a1[3].i64[1]) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF29D708;
    v9[3] = &unk_1E7A7E2E8;
    v11 = v5;
    v6 = a1[2];
    v10 = vextq_s8(v6, v6, 8uLL);
    return objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v4, v6.i64[0], v9);
  }

  else
  {
    v8 = *(a1[3].i64[0] + 16);

    return v8();
  }
}

void sub_1AF29D708(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF1BB91C(v2, *(a1 + 32), 1);
    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF29D7AC;
  block[3] = &unk_1E7A7A770;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *sub_1AF29D7B4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_willStartPlayback(*(a1 + 32), a2, a3);
  if (result)
  {
    v7 = *(objc_msgSend_willStartPlayback(*(a1 + 32), v5, v6) + 16);

    return v7();
  }

  return result;
}

id sub_1AF29DC7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  qword_1EB658848 = v3;

  return v3;
}

uint64_t sub_1AF29E8E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_immediateMode(VFXTransaction, a2, a3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_allKeys(*(*(a1 + 32) + 40), v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 40), v11, v15);
        objc_msgSend_setBindingValue_forKey_(*(*(a1 + 32) + 8), v17, v16, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
    }

    while (v12);
  }

  return objc_msgSend_setImmediateMode_(VFXTransaction, v11, v4);
}

CFStringRef sub_1AF29EB6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

uint64_t sub_1AF29EEA0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF29EF00(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF29F214(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 48));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 56), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 48);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF29F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF29F824(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 56);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v9);
    }
  }
}

void sub_1AF29FC44(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF29FD88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF29FE54(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF29FF00(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2A0038(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2A0174(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2A021C;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

CFStringRef sub_1AF2A0BB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

__n128 *sub_1AF2A1124(uint64_t a1)
{
  sub_1AF15B29C(*(*(a1 + 96) + 8), *(a1 + 104));
  v2 = *(*(a1 + 96) + 8);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return sub_1AF15B358(v2, v5, v6, v3, v4);
}

uint64_t VFXBoundingBoxIsNull(float32x4_t a1, float32x4_t a2)
{
  v2 = vceqzq_f32(a1);
  v2.i32[3] = v2.i32[2];
  v3 = vceqzq_f32(a2);
  v3.i32[3] = v3.i32[2];
  return (vminvq_u32(v2) & vminvq_u32(v3)) >> 31;
}

CFStringRef sub_1AF2A16BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

uint64_t sub_1AF2A1B90(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2A1BF0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF2A1EF8(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2A236C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2A2508(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v9);
    }
  }
}

void sub_1AF2A2928(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2A2A6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2A2B38(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2A2BE4(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2A2D1C(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2A2E58(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2A2F00;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

uint64_t sub_1AF2A319C(uint64_t a1, uint64_t a2)
{
  sub_1AF15DD20(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 96));
  sub_1AF15DACC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 104));
  sub_1AF15DB68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 112));
  sub_1AF15DC04(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 120));
  v7 = sub_1AF15E428(*(*(a1 + 32) + 8), v6);
  sub_1AF15DF84(v7, v8, *(*(a1 + 32) + 64));
  v10 = sub_1AF15E428(*(*(a1 + 32) + 8), v9);
  v11 = *(*(a1 + 32) + 80);
  sub_1AF15E10C(v10, v12, v11);
  v14 = sub_1AF15E428(*(*(a1 + 32) + 8), v13);
  v15 = *(*(a1 + 32) + 72);
  sub_1AF15E220(v14, v16, v15);
  sub_1AF15D7B4(*(*(a1 + 32) + 8), v17, *(*(a1 + 32) + 92));
  sub_1AF15DA30(*(*(a1 + 32) + 8), v18, *(*(a1 + 32) + 128));
  sub_1AF15C248(*(*(a1 + 32) + 8), *(*(a1 + 32) + 304));
  sub_1AF15D984(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 4) & 7);
  sub_1AF15D898(*(*(a1 + 32) + 8), v19, *(*(a1 + 32) + 88));
  v21 = sub_1AF15E428(*(*(a1 + 32) + 8), v20);
  sub_1AF15E048(v21, (*(*(a1 + 32) + 28) >> 2) & 1);
  v24 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v24, v22, v23);
}

void sub_1AF2A4D74(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C40C(v3, v4);
}

void sub_1AF2A4EE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C314(v3, v4);
}

void sub_1AF2A5054(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C504(v3, v4);
}

void sub_1AF2A51C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C5FC(v3, v4);
}

void sub_1AF2A5334(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C6F4(v3, v4);
}

void sub_1AF2A54A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C7EC(v3, v4);
}

void sub_1AF2A5614(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C8E4(v3, v4);
}

void sub_1AF2A5784(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15C9DC(v3, v4);
}

void sub_1AF2A58F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15CBCC(v3, v4);
}

void sub_1AF2A5A64(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15CAD4(v3, v4);
}

void sub_1AF2A5BD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15CCC4(v3, v4);
}

void sub_1AF2A5D44(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF15CDBC(v3, v4);
}

id sub_1AF2A5EBC(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46A8);
  qword_1ED73B2F8 = result;
  return result;
}

uint64_t sub_1AF2A9D48(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v4, sel_cameraInertiaWillStartForController_, v5);
}

uint64_t sub_1AF2A9D84(uint64_t a1)
{
  v1 = *(a1 + 32);
  CACurrentMediaTime();

  return MEMORY[0x1EEE66B58](v1, sel__updateInertiaAtTime_, v2);
}

uint64_t sub_1AF2A9DBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_delegate(*(a1 + 32), a2, a3);
  v5 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v4, sel_cameraInertiaDidEndForController_, v5);
}

uint64_t sub_1AF2AA5B8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2AA618(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF2AA918(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2AAD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2AAF28(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2AB348(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2AB48C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2AB558(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2AB604(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2AB73C(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2AB878(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2AB920;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

id sub_1AF2ABB78(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46D8);
  qword_1ED73B308 = result;
  return result;
}

void sub_1AF2ABEAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF160ABC(v4, v5);
}

void sub_1AF2AC008(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF160C1C(v4, v5);
}

void sub_1AF2AC160(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF160B6C(v4, v5);
}

void sub_1AF2AC2C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2AC420(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2AC580(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160E04(v4, v5, v6);
}

void sub_1AF2AC6E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v4, v5, v6);
}

void sub_1AF2AC96C(uint64_t a1)
{
  sub_1AF160ABC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF160C1C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF160B6C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 80));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v2, *(*(a1 + 32) + 88));
  sub_1AF160D68(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 92));
  sub_1AF160E04(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 96));
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8 = *(v6 + 100);

  sub_1AF160EA0(v7, v5, v8);
}

void sub_1AF2ACE08(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2AD1E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2AD348(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2AD4A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2AD604(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF161234(v4, v5);
}

void sub_1AF2AD754(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1612D0(v4, v5);
}

void sub_1AF2AD938(uint64_t a1, uint64_t a2)
{
  sub_1AF161034(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF161234(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF160D68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 68));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 80);

  sub_1AF1612D0(v6, v7);
}

void sub_1AF2ADC7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2ADDDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2ADF3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2AE09C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160E04(v4, v5, v6);
}

void sub_1AF2AE1F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16170C(v4, v5);
}

void sub_1AF2AE358(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v4, v5, v6);
}

void sub_1AF2AE4B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161538(v4, v5, v6);
}

void sub_1AF2AE618(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1615D4(v4, v5, v6);
}

void sub_1AF2AE778(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161670(v4, v5, v6);
}

void sub_1AF2AEA24(uint64_t a1, uint64_t a2)
{
  sub_1AF161034(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 68));
  sub_1AF16170C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 92));
  sub_1AF160EA0(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 76));
  sub_1AF161538(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 80));
  sub_1AF1615D4(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 84));
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  v11 = *(v9 + 88);

  sub_1AF161670(v10, v8, v11);
}

void sub_1AF2AEEE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16193C(v4, v5);
}

void sub_1AF2AF040(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161A28(v4, v5, v6);
}

void sub_1AF2AF1A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161ACC(v4, v5, v6);
}

void sub_1AF2AF300(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161B70(v4, v5, v6);
}

void sub_1AF2AF460(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161C14(v4, v5, v6);
}

void sub_1AF2AF5C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161CB8(v4, v5, v6);
}

void sub_1AF2AF720(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161D5C(v4, v5, v6);
}

void sub_1AF2AFA0C(uint64_t a1)
{
  sub_1AF16193C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF161A28(*(*(a1 + 32) + 8), v2, *(*(a1 + 32) + 72));
  sub_1AF161ACC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 76));
  sub_1AF161B70(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 80));
  sub_1AF161C14(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 84));
  sub_1AF161CB8(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 88));
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = *(v8 + 92);

  sub_1AF161D5C(v9, v7, v10);
}

void sub_1AF2AFE50(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2AFFB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2B0110(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2B026C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF161234(v4, v5);
}

void sub_1AF2B03D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162450(v4, v5, v6);
}

void sub_1AF2B0538(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v4, v5, v6);
}

void sub_1AF2B0698(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF162590(v4, v5, v6);
}

void sub_1AF2B07F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16262C(v4, v5);
}

void sub_1AF2B0C28(uint64_t a1, uint64_t a2)
{
  sub_1AF161034(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 68));
  sub_1AF161234(*(*(a1 + 32) + 8), *(*(a1 + 32) + 72));
  sub_1AF162450(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 80));
  sub_1AF1624F4(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 96));
  sub_1AF162590(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 100));
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10 = *(v8 + 104);

  sub_1AF16262C(v9, v10);
}

void sub_1AF2B10BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2B121C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2B137C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2B14DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160E04(v4, v5, v6);
}

void sub_1AF2B16E8(uint64_t a1, uint64_t a2)
{
  sub_1AF161034(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 68));
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8 = *(v6 + 72);

  sub_1AF160E04(v7, v5, v8);
}

void sub_1AF2B1A44(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF162E8C(v4, v5, v6);
}

void sub_1AF2B1BA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2B1D60(uint64_t a1, uint64_t a2)
{
  sub_1AF162E8C(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 64);

  sub_1AF161034(v5, v3, v6);
}

void sub_1AF2B2108(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF162894(v4, v5, v6);
}

void sub_1AF2B2268(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160CCC(v4, v5, v6);
}

void sub_1AF2B23C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160D68(v4, v5, v6);
}

void sub_1AF2B2528(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160E04(v4, v5, v6);
}

void sub_1AF2B2694(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162450(v4, v5, v6);
}

void sub_1AF2B27F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v4, v5, v6);
}

void sub_1AF2B2960(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162930(v4, v5, v6);
}

void sub_1AF2B2AC0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1629D4(v4, v5, v6);
}

void sub_1AF2B2C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162A70(v4, v5, v6);
}

void sub_1AF2B2D8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF162B14(v4, v5, v6);
}

void sub_1AF2B2F0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_materialProperty(*(a1 + 40), v5, v6);

  sub_1AF162B68(v4, v7);
}

void sub_1AF2B34E4(uint64_t a1, uint64_t a2)
{
  sub_1AF162894(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF160CCC(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF160D68(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 68));
  sub_1AF160E04(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 72));
  sub_1AF162450(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 80));
  sub_1AF1624F4(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 96));
  sub_1AF162930(*(*(a1 + 32) + 8), v8, *(*(a1 + 32) + 112));
  sub_1AF1629D4(*(*(a1 + 32) + 8), v9, *(*(a1 + 32) + 128));
  sub_1AF162A70(*(*(a1 + 32) + 8), v10, *(*(a1 + 32) + 144));
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  v14 = *(v12 + 160);

  sub_1AF162B14(v13, v11, v14);
}

void sub_1AF2B3A68(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163018(v4, v5, v6);
}

void sub_1AF2B3BC0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1630C8(v4, v5);
}

void sub_1AF2B3D80(uint64_t a1, uint64_t a2)
{
  sub_1AF163018(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 64);

  sub_1AF1630C8(v4, v5);
}

void sub_1AF2B4044(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF163430(v4, v5);
}

void sub_1AF2B41A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163484(v4, v5, v6);
}

void sub_1AF2B430C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163544(v4, v5, v6);
}

void sub_1AF2B446C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1615D4(v4, v5, v6);
}

void sub_1AF2B45CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161670(v4, v5, v6);
}

void sub_1AF2B4734(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1635E0(v4, v5, v6);
}

void sub_1AF2B4894(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1624F4(v4, v5, v6);
}

void sub_1AF2B49F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF162590(v4, v5, v6);
}

void sub_1AF2B4B5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF16367C(v4, v5, v6);
}

void sub_1AF2B4CC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162930(v4, v5, v6);
}

void sub_1AF2B4E34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF163718(v4, v5, v6);
}

void sub_1AF2B4FA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 48), a2, a3);
  v6 = *(a1 + 32);

  sub_1AF162A70(v4, v5, v6);
}

void sub_1AF2B5108(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1637BC(v4, v5, v6);
}

void sub_1AF2B5268(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163810(v4, v5, v6);
}

void sub_1AF2B53C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1638AC(v4, v5);
}

void sub_1AF2B5524(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163900(v4, v5, v6);
}

void sub_1AF2B5E34(uint64_t a1)
{
  sub_1AF163430(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF163484(*(*(a1 + 32) + 8), v2, *(*(a1 + 32) + 72));
  sub_1AF163544(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 80));
  sub_1AF1615D4(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 88));
  sub_1AF161670(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 92));
  sub_1AF1635E0(*(*(a1 + 32) + 8), v6, *(*(a1 + 32) + 96));
  sub_1AF1624F4(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 104));
  sub_1AF162590(*(*(a1 + 32) + 8), v8, *(*(a1 + 32) + 108));
  sub_1AF16367C(*(*(a1 + 32) + 8), v9, *(*(a1 + 32) + 112));
  sub_1AF162930(*(*(a1 + 32) + 8), v10, *(*(a1 + 32) + 128));
  sub_1AF163718(*(*(a1 + 32) + 8), v11, *(*(a1 + 32) + 144));
  sub_1AF162A70(*(*(a1 + 32) + 8), v12, *(*(a1 + 32) + 160));
  sub_1AF1637BC(*(*(a1 + 32) + 8), v13, *(*(a1 + 32) + 176));
  sub_1AF163810(*(*(a1 + 32) + 8), v14, *(*(a1 + 32) + 184));
  sub_1AF1638AC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 188));
  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  v18 = *(v16 + 192);

  sub_1AF163900(v17, v15, v18);
}

void sub_1AF2B652C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF161034(v4, v5, v6);
}

void sub_1AF2B6694(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF163AE8(v4, v5, v6);
}

void sub_1AF2B67F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF160EA0(v4, v5, v6);
}

void sub_1AF2B6950(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cfxObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF163B84(v4, v5);
}

void sub_1AF2B6CE8(uint64_t a1, uint64_t a2)
{
  sub_1AF161034(*(*(a1 + 32) + 8), a2, *(*(a1 + 32) + 60));
  sub_1AF163AE8(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 64));
  sub_1AF160EA0(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 72));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = *(v5 + 76);

  sub_1AF163B84(v6, v7);
}

uint64_t sub_1AF2B76E8(uint64_t a1)
{
  sub_1AF14F348(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF14F358(*(*(a1 + 32) + 8), *(*(a1 + 32) + 65));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = *(v2 + 68);

  return sub_1AF14F368(v3, v4);
}

uint64_t sub_1AF2B7FD4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2B8034(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF2B8334(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 44));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 44);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2B87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2B8944(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2B8D64(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2B8EA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2B8F74(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2B9020(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2B9158(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2B9294(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2B933C;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

uint64_t sub_1AF2BC418(void *a1, id *a2, id *a3)
{
  v6 = objc_msgSend_delegate(a1, a2, a3);
  v7 = sub_1AF16CDEC(a2);
  v8 = sub_1AF16CDEC(a3);
  if (!v7 || !v8)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](v6, sel_avoidOccluderConstraint_shouldAvoidOccluder_forNode_, a1);
}

void sub_1AF2BC4A4(uint64_t *a1)
{
  v2 = sub_1AF14EE10(a1[4], a1[5], a1[6]);
  sub_1AF157274(*(a1[4] + 8), v2);

  CFRelease(v2);
}

uint64_t sub_1AF2BD170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(a1 + 40) == 1)
  {
    v8 = sub_1AF1B9B04(a3, a2);
    v118 = v8[1];
    v122 = *v8;
    v108 = v8[3];
    v112 = v8[2];
  }

  else
  {
    v10.n128_f64[0] = sub_1AF1B7F84(a3, a2);
    v118 = v11;
    v122 = v10;
    v108 = v13;
    v112 = v12;
  }

  objc_msgSend_nodeWithNodeRef_(VFXNode, v9, a3);
  v14.n128_f64[0] = (*(*(a1 + 32) + 16))(v122, v118, v112, v108);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v118;
  v22 = v122;
  v25 = v108;
  v24 = v112;
  v109 = v15;
  v113 = v17;
  v119 = v19;
  v123 = v21;
  result = VFXMatrix4EqualToMatrix4(v22, v23, v24, v25, v15, v17, v19, v21);
  if ((result & 1) == 0)
  {
    v125 = v109;
    v126 = v113;
    v127 = v119;
    v128 = v123;
    if (*(a1 + 40) == 1)
    {
      v28 = sub_1AF1B9A6C(a3, v27);
      if (v28)
      {
        v138 = *sub_1AF1B9B04(v28, v27);
        v139 = __invert_f4(v138);
        v29 = 0;
        v129[0] = v109;
        v129[1] = v113;
        v129[2] = v119;
        v129[3] = v123;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        do
        {
          *(&v130 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139.columns[0], COERCE_FLOAT(*&v129[v29])), v139.columns[1], *v129[v29].i8, 1), v139.columns[2], v129[v29], 2), v139.columns[3], v129[v29], 3);
          ++v29;
        }

        while (v29 != 4);
        v109 = v130;
        v113 = v131;
        v125 = v130;
        v126 = v131;
        v119 = v132;
        v123 = v133;
        v127 = v132;
        v128 = v133;
      }
    }

    v30 = sub_1AF1DE3A8(a4, v27);
    v32 = v30;
    if (a5 != 1.0)
    {
      v33 = *v30;
      v34 = *(v30 + 1);
      v35 = *(v30 + 2);
      v36 = *(v30 + 3);
      v130 = 0uLL;
      v129[0] = 0uLL;
      v137.i32[2] = 0;
      v137.i64[0] = 0;
      v136.i32[2] = 0;
      v136.i64[0] = 0;
      v135.i32[2] = 0;
      v135.i64[0] = 0;
      v134.i32[2] = 0;
      v134.i64[0] = 0;
      v104 = v34;
      v105 = v33;
      v103 = v35;
      v106 = v36;
      v37 = sub_1AF120324(&v130, &v137, &v135, v33, v34, v35, v36);
      v38 = sub_1AF120324(v129, &v136, &v134, v109, v113, v119, v123);
      if (v37)
      {
        v39 = v105;
        v40 = v106;
        v41 = v103;
        v42 = v104;
        if (v38)
        {
          v43 = vmulq_f32(v130, v129[0]);
          v120 = v129[0];
          v124 = v130;
          v44 = 1.0;
          if (vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL))) >= 0.0)
          {
            v67 = 1.0 - a5;
            v68 = vsubq_f32(v130, v129[0]);
            v69 = vmulq_f32(v68, v68);
            v70 = vaddq_f32(v130, v129[0]);
            v71 = vmulq_f32(v70, v70);
            v72 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)))));
            v73 = v72 + v72;
            v52 = (v72 + v72) == 0.0;
            v74 = 1.0;
            if (!v52)
            {
              v74 = sinf(v73) / v73;
            }

            v75 = v74;
            v76 = vrecpe_f32(LODWORD(v74));
            v77 = vmul_f32(v76, vrecps_f32(LODWORD(v75), v76));
            LODWORD(v78) = vmul_f32(v77, vrecps_f32(LODWORD(v75), v77)).u32[0];
            if ((v67 * v73) != 0.0)
            {
              v116 = v78;
              v77.f32[0] = sinf(v67 * v73);
              v78 = v116;
              v44 = v77.f32[0] / (v67 * v73);
            }

            v77.f32[0] = v67 * (v78 * v44);
            v79 = vdupq_lane_s32(v77, 0);
            v62 = a5;
            v80 = v73 * a5;
            v81 = 1.0;
            if (v80 != 0.0)
            {
              v111 = v79;
              v117 = v78;
              v82 = sinf(v80);
              v79 = v111;
              v78 = v117;
              v62 = a5;
              v81 = v82 / v80;
            }

            v66 = vmlaq_f32(vmulq_n_f32(v120, (v78 * v81) * v62), v124, v79);
          }

          else
          {
            v45 = 1.0 - a5;
            v46 = vaddq_f32(v130, v129[0]);
            v47 = vmulq_f32(v46, v46);
            v48 = vsubq_f32(v130, v129[0]);
            v49 = vmulq_f32(v48, v48);
            v50 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)))));
            v51 = v50 + v50;
            v52 = (v50 + v50) == 0.0;
            v53 = 1.0;
            if (!v52)
            {
              v53 = sinf(v51) / v51;
            }

            v54 = v53;
            v55 = vrecpe_f32(LODWORD(v53));
            v56 = vmul_f32(v55, vrecps_f32(LODWORD(v54), v55));
            LODWORD(v57) = vmul_f32(v56, vrecps_f32(LODWORD(v54), v56)).u32[0];
            if ((v45 * v51) != 0.0)
            {
              v114 = v57;
              v58 = sinf(v45 * v51);
              v57 = v114;
              v44 = v58 / (v45 * v51);
            }

            v59.i32[1] = v120.i32[1];
            v60 = vnegq_f32(v120);
            *v59.i32 = v45 * (v57 * v44);
            v61 = vdupq_lane_s32(v59, 0);
            v62 = a5;
            v63 = v51 * a5;
            v64 = 1.0;
            if (v63 != 0.0)
            {
              v115 = v57;
              v121 = v60;
              v110 = v61;
              v65 = sinf(v63);
              v61 = v110;
              v57 = v115;
              v60 = v121;
              v62 = a5;
              v64 = v65 / v63;
            }

            v66 = vmlaq_f32(vmulq_n_f32(v60, (v57 * v64) * v62), v124, v61);
          }

          v83 = vmulq_f32(v66, v66);
          *v83.i8 = vadd_f32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
          v84 = vdupq_lane_s32(vadd_f32(*v83.i8, vdup_lane_s32(*v83.i8, 1)), 0);
          v85 = vrsqrteq_f32(v84);
          v86 = vmulq_f32(v85, vrsqrtsq_f32(v84, vmulq_f32(v85, v85)));
          v87 = vbslq_s8(vceqzq_f32(v84), v66, vmulq_f32(vmulq_f32(v86, vrsqrtsq_f32(v84, vmulq_f32(v86, v86))), v66));
          v88 = vmlaq_n_f32(v135, vsubq_f32(v134, v135), v62);
          v40 = vmlaq_n_f32(v137, vsubq_f32(v136, v137), v62);
          v40.i32[3] = 1.0;
          v89 = vabsq_f32(v88);
          v89.i32[3] = 0;
          v90.i64[0] = 0x8000000080000000;
          v90.i64[1] = 0x8000000080000000;
          v91 = vorrq_s8(vandq_s8(v88, v90), vabsq_f32(vmaxnmq_f32(v89, xmmword_1AFE20A30)));
          v92 = vmulq_f32(v87, v87);
          v93 = vmulq_laneq_f32(v87, v87, 3);
          v94 = vmuls_lane_f32(v87.f32[0], *v87.f32, 1);
          v95 = vmuls_lane_f32(v87.f32[1], v87, 2);
          v87.f32[0] = vmuls_lane_f32(v87.f32[0], v87, 2);
          v96 = vaddq_f32(v91, v91);
          v97.i32[3] = 0;
          v97.f32[0] = (0.5 - v92.f32[1]) - v92.f32[2];
          v97.f32[1] = v94 + v93.f32[2];
          v97.f32[2] = v87.f32[0] - v93.f32[1];
          v98.i32[3] = 0;
          v92.f32[0] = 0.5 - v92.f32[0];
          v99.i32[3] = 0;
          v99.f32[0] = v94 - v93.f32[2];
          v99.f32[1] = v92.f32[0] - v92.f32[2];
          v99.f32[2] = v95 + v93.f32[0];
          v39 = vmulq_n_f32(v97, v96.f32[0]);
          v42 = vmulq_lane_f32(v99, *v96.f32, 1);
          v98.f32[0] = v87.f32[0] + v93.f32[1];
          v98.f32[1] = v95 - v93.f32[0];
          v98.f32[2] = v92.f32[0] - v92.f32[1];
          v41 = vmulq_laneq_f32(v98, v96, 2);
        }
      }

      else
      {
        v39 = v105;
        v40 = v106;
        v41 = v103;
        v42 = v104;
      }

      v125 = v39;
      v126 = v42;
      v127 = v41;
      v128 = v40;
    }

    v100 = sub_1AF1DE360(a4, v31);
    v102 = sub_1AF288070(10, v101);
    return sub_1AF1C35C0(v100, v32, &v125, v102, *(a4 + 34), *(a4 + 35));
  }

  return result;
}

uint64_t sub_1AF2BD79C(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, __n128 a5)
{
  if (*(a1 + 40) == 1)
  {
    v9 = *(sub_1AF1B9B04(a3, a2) + 48);
  }

  else
  {
    v9.n128_f64[0] = sub_1AF1B9F08(a3);
  }

  v23 = v9;
  objc_msgSend_nodeWithNodeRef_(VFXNode, v8, a3, *&a5);
  *v10.i64 = (*(*(a1 + 32) + 16))(v23);
  v22 = v10;
  result = VFXVector3EqualToVector3(v10, v23);
  if ((result & 1) == 0)
  {
    v24 = v22;
    if (*(a1 + 40) == 1)
    {
      v13 = sub_1AF1B9A6C(a3, v12);
      if (v13)
      {
        v25 = *sub_1AF1B9B04(v13, v12);
        v26 = __invert_f4(v25);
        v24 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v26.columns[3], v26.columns[2], v22, 2), v26.columns[1], *v22.f32, 1), v26.columns[0], v22.f32[0]);
        v22 = v24;
      }
    }

    if (v21 != 1.0)
    {
      *v14.i64 = sub_1AF1B9F08(a3);
      v24 = vmlaq_n_f32(v14, vsubq_f32(v22, v14), v21);
    }

    v15 = sub_1AF1DE360(a4, v12);
    v17 = sub_1AF1DE3A8(a4, v16);
    v19 = sub_1AF288070(8, v18);
    return sub_1AF1C35C0(v15, v17, &v24, v19, *(a4 + 34), *(a4 + 35));
  }

  return result;
}

void sub_1AF2BD9A8(uint64_t a1, uint64_t a2, simd_float4 *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v11 = *&a5;
  if (*(a1 + 40) == 1)
  {
    v16.n128_f64[0] = sub_1AF1B9BEC(a3, a2);
  }

  else
  {
    v16.n128_f64[0] = sub_1AF1BA0F4(a3, a2, a5, a6, a7, a8, a9, a10, a11);
  }

  v119 = v16;
  objc_msgSend_nodeWithNodeRef_(VFXNode, v15, a3);
  *v18.i64 = (*(*(a1 + 32) + 16))(v119);
  if ((vminvq_u32(vceqq_f32(v18, v119)) & 0x80000000) != 0)
  {
    return;
  }

  v120 = v18;
  v122 = v18;
  if (*(a1 + 40) == 1)
  {
    v19 = sub_1AF1B9A6C(a3, v17);
    if (v19)
    {
      v123 = *sub_1AF1B9B04(v19, v17);
      v124 = __invert_f4(v123);
      v124.columns[3] = vmulq_f32(v124.columns[0], v124.columns[0]);
      v20 = vmulq_f32(v124.columns[1], v124.columns[1]);
      v21 = vmulq_f32(v124.columns[2], v124.columns[2]);
      v22 = vzip2q_s32(v124.columns[3], v21);
      v23 = vzip1q_s32(vzip1q_s32(v124.columns[3], v21), v20);
      v124.columns[3] = vtrn2q_s32(v124.columns[3], v20);
      v124.columns[3].i32[2] = v21.i32[1];
      v24 = vaddq_f32(vzip1q_s32(v22, vdupq_laneq_s32(v20, 2)), vaddq_f32(v23, v124.columns[3]));
      v124.columns[3].i64[0] = 0x80000000800000;
      v124.columns[3].i64[1] = 0x80000000800000;
      v25 = vcgeq_f32(v124.columns[3], v24);
      v24.i32[3] = 0;
      v26 = vrsqrteq_f32(v24);
      v27 = vmulq_f32(v26, vrsqrtsq_f32(v24, vmulq_f32(v26, v26)));
      v28 = v25;
      v28.i32[3] = 0;
      v29 = vbslq_s8(vcltzq_s32(v28), v24, vmulq_f32(v27, vrsqrtsq_f32(v24, vmulq_f32(v27, v27))));
      v30 = vmulq_n_f32(v124.columns[0], v29.f32[0]);
      v31 = vmulq_lane_f32(v124.columns[1], *v29.f32, 1);
      v32 = vmulq_laneq_f32(v124.columns[2], v29, 2);
      v33 = vuzp1q_s32(v32, v32);
      v34 = vuzp1q_s32(v31, v31);
      v35 = v30;
      if (v25.i32[0])
      {
        v36 = vmlaq_f32(vmulq_f32(vextq_s8(v33, v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(v34, v31, 0xCuLL));
        v35 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      }

      v37 = vuzp1q_s32(v30, v30);
      v38 = v31;
      if (v25.i32[1])
      {
        v39 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v30, 0xCuLL), vnegq_f32(v32)), v30, vextq_s8(v33, v32, 0xCuLL));
        v38 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      }

      if (v25.i32[2])
      {
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(v34, v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(v37, v30, 0xCuLL));
        v32 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
      }

      v41 = (*v35.i32 + *&v38.i32[1]) + v32.f32[2];
      if (v41 > 0.0)
      {
        v42 = sqrtf(v41 + 1.0);
        *v43.f32 = vsub_f32(*&vzip2q_s32(v38, vuzp1q_s32(v38, v32)), *&vtrn2q_s32(v32, vzip2q_s32(v32, v35)));
        v43.f32[2] = *&v35.i32[1] - *v38.i32;
        v43.f32[3] = v42 * v42;
        v44 = 0.5 / v42;
LABEL_15:
        _Q0 = vmulq_n_f32(v43, v44);
LABEL_24:
        _S1 = v120.i32[3];
        v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v120, v120), v120, 0xCuLL), vnegq_f32(_Q0)), v120, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
        v55 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, v120, 3), v120, _Q0, 3), vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
        __asm { FMLA            S3, S1, V0.S[3] }

        v55.i32[3] = _S3;
        v120 = v55;
        v122 = v55;
        goto LABEL_25;
      }

      if (*v35.i32 < *&v38.i32[1] || *v35.i32 < v32.f32[2])
      {
        if (*&v38.i32[1] <= v32.f32[2])
        {
          v108 = vzip2q_s32(v35, v38).u64[0];
          v109 = __PAIR64__(v35.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v32.f32[2] + 1.0) - *v35.i32) - *&v38.i32[1])));
          v110 = vdup_lane_s32(*v38.i8, 0);
          v111 = vsub_f32(*v35.i8, v110);
          v110.i32[0] = v109.i32[0];
          v110.i32[0] = vmul_f32(v109, v110).u32[0];
          v110.i32[1] = v111.i32[1];
          *v43.f32 = vadd_f32(v108, *v32.f32);
          *&v43.u32[2] = v110;
          v44 = 0.5 / v109.f32[0];
          goto LABEL_15;
        }

        v48 = sqrtf(((*&v38.i32[1] + 1.0) - *v35.i32) - v32.f32[2]);
        v52.f32[0] = *&v35.i32[1] + *v38.i32;
        v47 = vzip2q_s32(v35, v38).u64[0];
        v52.f32[1] = v48 * v48;
        *&v52.u32[2] = vext_s8(vadd_f32(*v32.f32, v47), vsub_f32(*v32.f32, v47), 4uLL);
      }

      else
      {
        v48 = sqrtf(((*v35.i32 + 1.0) - *&v38.i32[1]) - v32.f32[2]);
        v52.f32[0] = v48 * v48;
        v49 = *&v35.i32[1] + *v38.i32;
        v50 = vzip2q_s32(v35, v38).u64[0];
        LODWORD(v51) = vadd_f32(v50, *v32.f32).u32[0];
        HIDWORD(v51) = vsub_f32(v50, *&v32).i32[1];
        v52.f32[1] = v49;
        v52.i64[1] = v51;
      }

      _Q0 = vmulq_n_f32(v52, 0.5 / v48);
      goto LABEL_24;
    }
  }

LABEL_25:
  v60 = sub_1AF1DE3A8(a4, v17);
  v62 = v60;
  if (v11 != 1.0)
  {
    v63 = *v60;
    v64 = vmulq_f32(*v60, v120);
    v118 = *v60;
    v65 = 1.0;
    v66 = 1.0 - v11;
    if (vaddv_f32(vadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL))) >= 0.0)
    {
      v86 = vsubq_f32(v63, v120);
      v87 = vmulq_f32(v86, v86);
      v88 = vaddq_f32(v63, v120);
      v89 = vmulq_f32(v88, v88);
      v90 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v87.i8, *&vextq_s8(v87, v87, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v89.i8, *&vextq_s8(v89, v89, 8uLL)))));
      v91 = v90 + v90;
      _ZF = (v90 + v90) == 0.0;
      v92 = 1.0;
      if (!_ZF)
      {
        v92 = sinf(v91) / v91;
      }

      v93 = v92;
      v94 = vrecpe_f32(LODWORD(v92));
      v95 = vmul_f32(v94, vrecps_f32(LODWORD(v93), v94));
      LODWORD(v96) = vmul_f32(v95, vrecps_f32(LODWORD(v93), v95)).u32[0];
      if ((v66 * v91) != 0.0)
      {
        v116 = v96;
        v95.f32[0] = sinf(v66 * v91);
        v96 = v116;
        v65 = v95.f32[0] / (v66 * v91);
      }

      v95.f32[0] = v66 * (v96 * v65);
      v97 = vdupq_lane_s32(v95, 0);
      v98 = v91 * v11;
      v99 = 1.0;
      if (v98 != 0.0)
      {
        v113 = v97;
        v117 = v96;
        v100 = sinf(v98);
        v97 = v113;
        v96 = v117;
        v99 = v100 / v98;
      }

      v85 = vmlaq_f32(vmulq_n_f32(v120, (v96 * v99) * v11), v118, v97);
    }

    else
    {
      v67 = vaddq_f32(v63, v120);
      v68 = vmulq_f32(v67, v67);
      v69 = vsubq_f32(v63, v120);
      v70 = vmulq_f32(v69, v69);
      v71 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)))));
      v72 = v71 + v71;
      _ZF = (v71 + v71) == 0.0;
      v73 = 1.0;
      if (!_ZF)
      {
        v73 = sinf(v72) / v72;
      }

      v74 = v73;
      v75 = vrecpe_f32(LODWORD(v73));
      v76 = vmul_f32(v75, vrecps_f32(LODWORD(v74), v75));
      LODWORD(v77) = vmul_f32(v76, vrecps_f32(LODWORD(v74), v76)).u32[0];
      if ((v66 * v72) != 0.0)
      {
        v114 = v77;
        v78 = sinf(v66 * v72);
        v77 = v114;
        v65 = v78 / (v66 * v72);
      }

      v79.i32[1] = v120.i32[1];
      v80 = vnegq_f32(v120);
      *v79.i32 = v66 * (v77 * v65);
      v81 = vdupq_lane_s32(v79, 0);
      v82 = v72 * v11;
      v83 = 1.0;
      if (v82 != 0.0)
      {
        v112 = v81;
        v115 = v77;
        v121 = v80;
        v84 = sinf(v82);
        v81 = v112;
        v77 = v115;
        v80 = v121;
        v83 = v84 / v82;
      }

      v85 = vmlaq_f32(vmulq_n_f32(v80, (v77 * v83) * v11), v118, v81);
    }

    v101 = vmulq_f32(v85, v85);
    *v101.i8 = vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
    v102 = vdupq_lane_s32(vadd_f32(*v101.i8, vdup_lane_s32(*v101.i8, 1)), 0);
    v103 = vrsqrteq_f32(v102);
    v104 = vmulq_f32(v103, vrsqrtsq_f32(v102, vmulq_f32(v103, v103)));
    v122 = vbslq_s8(vceqzq_f32(v102), v85, vmulq_f32(vmulq_f32(v104, vrsqrtsq_f32(v102, vmulq_f32(v104, v104))), v85));
  }

  v105 = sub_1AF1DE360(a4, v61);
  v107 = sub_1AF288070(9, v106);
  sub_1AF1C35C0(v105, v62, &v122, v107, *(a4 + 34), *(a4 + 35));
}

void sub_1AF2BE40C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);

  sub_1AF1530BC(v3, v4);
}

void sub_1AF2BE6A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48) / 180.0 * 3.14159265;
  v5 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3);

  sub_1AF15317C(v3, v5, v4);
}

void sub_1AF2BEBDC(void *a1, uint64_t a2, void *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_identifier(a1, v6, v7);
    if (v8)
    {

      objc_msgSend_setValue_forKey_(a3, v9, a2, v8);
    }

    else if ((byte_1EB658858 & 1) == 0)
    {
      byte_1EB658858 = 1;
      v10 = sub_1AF0D5194(0, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF528C(v10);
      }
    }
  }
}

uint64_t sub_1AF2BEC88(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_behaviorGraph(a2, a2, a3);
  v7 = objc_msgSend_coreEntityHandle(v4, v5, v6);
  v10 = objc_msgSend_entityObject(v7, v8, v9);
  v12 = *(a1 + 32);

  return objc_msgSend_updateVFXObjectReferences_(v10, v11, v12);
}

void *sub_1AF2BECCC(uint64_t a1, void *key, int a3, uint64_t a4)
{
  v4 = key;
  if (a4)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 32), key);
      if (Value)
      {
        v7 = Value;
        (*(a4 + 16))(a4, Value);
        return v7;
      }
    }
  }

  return v4;
}

const void *sub_1AF2BED30(void *key, uint64_t a2)
{
  if (!a2)
  {
    Mutable = 0;
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  Mutable = *(a2 + 8);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a2 + 8) = Mutable;
    if (!Mutable)
    {
      goto LABEL_7;
    }
  }

  result = CFDictionaryGetValue(Mutable, key);
  if (result)
  {
    return result;
  }

  v6 = 0;
LABEL_8:
  sub_1AFDF52D0(key, v6, a2, Mutable, &v7);
  return v7;
}

CFMutableDictionaryRef sub_1AF2BEDEC(const __CFAllocator *a1)
{

  return CFDictionaryCreateMutable(a1, 0, 0, 0);
}

void *sub_1AF2BF6A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_allKeys(*(*(a1 + 32) + 40), a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (result)
  {
    v8 = result;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 40), v7, v11);
        v15 = objc_msgSend_rawValue(v12, v13, v14);
        sub_1AF16AB94(*(*(a1 + 32) + 16), v11, v15);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF2BFB1C(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1C3FAC(*(a1 + 32), a2);
  if (!result)
  {
    sub_1AF1CEA20(*(a1 + 40), v4);
    sub_1AF16A358(*(a1 + 32), *(a1 + 40));
    v6 = *(a1 + 40);

    return sub_1AF1CEA9C(v6, v5);
  }

  return result;
}

uint64_t sub_1AF2BFE34(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2BFE94(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void *sub_1AF2C0158(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_isPublic(a3, a2, a3);
  if (*(a1 + 40) == result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a2);
  }

  return result;
}

void *sub_1AF2C023C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_type(a1, a2, a3);
  v7 = objc_msgSend_rawValue(a1, v5, v6);
  v10 = v7;
  if (v4)
  {
    if (v4 == 4 || v4 == 9)
    {
      v11 = MEMORY[0x1E696AD98];
      v13 = *objc_msgSend_bytes(v7, v8, v9);

      return objc_msgSend_numberWithInt_(v11, v12, v13);
    }

    else
    {
      v18 = sub_1AF16A700(v4, v8);
      if (v18)
      {

        return VFXValueFromDataAndType(v10, v18);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_bytes(v7, v8, v9);

    return objc_msgSend_stringWithUTF8String_(v15, v16, v17);
  }
}

void sub_1AF2C05DC(void *a1)
{
  sub_1AF16AAF8(*(a1[4] + 16), a1[5], a1[6]);
  v2 = a1[6];

  CFRelease(v2);
}

void sub_1AF2C0B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2C0B94(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_nodeRef(a2, a2, a3);
  result = sub_1AF1BC210(v4, v5);
  *(*(*(a1 + 32) + 8) + 24) += HIDWORD(result);
  return result;
}

uint64_t sub_1AF2C0C2C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24))
      {
        v3 = result;
        v4 = sub_1AF146110(result);
        result = sub_1AF1BAAD8(v4, *(a2 + 40));
        if (result)
        {
          if (sub_1AF145EB0(v3))
          {
            v5 = *(v3 + 48);
          }

          else
          {
            v6 = *(a2 + 16);
            v5 = v18;
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = sub_1AF2C0D70;
            v18[3] = &unk_1E7A7E738;
            v19 = *(a2 + 24);
            v20 = v3;
            v21 = v6;
          }

          sub_1AF1B81E4(v4, 0, &v16);
          v7 = *(a2 + 8);
          v8 = sub_1AF146200(v3);
          v10 = 0;
          if ((v8 & 1) == 0)
          {
            if (sub_1AF145EB0(v3))
            {
              objc_msgSend_setMaterialType_(v7, v9, 2);
LABEL_13:
              objc_msgSend_setBoundingBoxMin_(*(a2 + 8), v11, v12, *vsubq_f32(v16, v17).i64);
              objc_msgSend_setBoundingBoxMax_(*(a2 + 8), v13, v14, *vaddq_f32(v16, v17).i64);
              objc_msgSend_setEncodeHandler_(*(a2 + 8), v15, v5);
              return (*(*a2 + 16))();
            }

            v10 = 1;
          }

          objc_msgSend_setMaterialType_(v7, v9, v10);
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF2C0D70(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AF1CEA20(*(a1 + 40), a2);
  objc_msgSend_setCurrentExternalDrawCallContext_(*(a1 + 32), v5, a3);
  v8 = objc_msgSend_renderTargetInfo(a3, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v11 = 0;
  LOBYTE(v56) = objc_msgSend_sampleCount(v8, v9, v10);
  do
  {
    *(&v53 + v11) = objc_msgSend_colorPixelFormatAtIndex_(v8, v12, v11);
    ++v11;
  }

  while (v11 != 8);
  v54 = objc_msgSend_depthPixelFormat(v8, v12, v13);
  v55 = objc_msgSend_stencilPixelFormat(v8, v14, v15);
  v18 = objc_msgSend_stencilInfo(a3, v16, v17);
  v19 = sub_1AF1461DC(*(a1 + 48));
  v20 = *(a1 + 56);
  memset(v58, 0, sizeof(v58));
  *&v22 = sub_1AF1C458C(v19, v21, v58).n128_u64[0];
  v25 = objc_msgSend_frontFaceTest(v18, v23, v24, v22);
  v58[5] = v25 != 0;
  if (v25 && (v28 = objc_msgSend_frontFaceTest(v18, v26, v27), v31 = objc_msgSend_frontReferenceValue(v18, v29, v30), v33 = sub_1AF1C46C8(v28, v31, v32), *&v58[7] = v33, v58[13] = BYTE6(v33), *&v58[11] = WORD2(v33), (v58[5] & 1) != 0))
  {
    v36 = objc_msgSend_backFaceTest(v18, v34, v35);
    v58[6] = v36 != 0;
    if (v36)
    {
      v39 = objc_msgSend_backFaceTest(v18, v37, v38);
      v42 = objc_msgSend_backReferenceValue(v18, v40, v41);
      v44 = sub_1AF1C46C8(v39, v42, v43);
      *&v58[14] = v44;
      v58[20] = BYTE6(v44);
      *&v58[18] = WORD2(v44);
    }
  }

  else
  {
    v58[6] = 0;
  }

  *v57 = *v58;
  *&v57[13] = *&v58[13];
  v45 = sub_1AF1C4354(v57);
  sub_1AF1D626C(v20, v45);
  CFRelease(v45);
  objc_msgSend_updateViewConstantsWithWorld_(*(a1 + 32), v46, *(a1 + 40));
  objc_msgSend_updateRenderPassDescriptor_(*(a1 + 32), v47, &v53);
  objc_msgSend__clearRenderCaches(*(a1 + 32), v48, v49);
  objc_msgSend_drawRenderElement_withOverrides_(*(a1 + 32), v50, *(a1 + 48), *(a1 + 56));
  return sub_1AF1CEA9C(*(a1 + 40), v51);
}

VFXBezierCurveGeometry *sub_1AF2C0F58(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF565C(v3);
    }
  }

  result = sub_1AF1706B8(a1);
  switch(result)
  {
    case 2:
      return objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v5, a1);
    case 1:
      return objc_msgSend_meshWithMeshRef_(VFXMesh, v5, a1);
    case 0:
      v6 = CFGetTypeID(a1);
      v7 = CFCopyTypeIDDescription(v6);
      v9 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD8778(v7, v9);
      }

      CFRelease(v7);
      return 0;
  }

  return result;
}

void sub_1AF2C1024(void *result, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = @"mesh";
LABEL_6:

    objc_msgSend_encodeObject_forKey_(result, v4, a2, v5);
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = @"curve";
    goto LABEL_6;
  }

  v7 = sub_1AF0D5194(isKindOfClass, v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF56E0(a2, v7);
  }
}

VFXMesh *sub_1AF2C10E0(void *a1, const char *a2)
{
  if ((objc_msgSend_containsValueForKey_(a1, a2, @"kGeometrySourceSemanticVertex") & 1) != 0 || objc_msgSend_containsValueForKey_(a1, v3, @"kGeometrySourceSemanticPosition"))
  {
    v5 = objc_alloc_init(VFXMesh);
    objc_msgSend_decodeMeshWithCoder_(v5, v6, a1);

    return v5;
  }

  else
  {
    if (objc_msgSend_containsValueForKey_(a1, v4, @"mesh") || objc_msgSend_containsValueForKey_(a1, v8, @"mesh"))
    {
      v11 = objc_opt_class();
      v12 = @"mesh";
    }

    else
    {
      if (!objc_msgSend_containsValueForKey_(a1, v9, @"curve"))
      {
        return 0;
      }

      v11 = objc_opt_class();
      v12 = @"curve";
    }

    return objc_msgSend_vfx_decodeObjectOfClass_forKey_(a1, v10, v11, v12);
  }
}

uint64_t sub_1AF2C11F4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return objc_msgSend_setWithObjects_(v2, v5, v3, v4, 0);
}

uint64_t sub_1AF2C16DC(uint64_t a1, const char *a2, void *a3)
{
  v4 = MEMORY[0x1E696B098];
  v5 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v22 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(a3, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v21 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);

  return objc_msgSend_valueWithVFXFloat3_(v4, v18, v19, COERCE_DOUBLE(__PAIR64__(v21, v22)));
}

uint64_t sub_1AF2C1768(uint64_t a1, const char *a2, void *a3)
{
  v4 = MEMORY[0x1E696B098];
  v5 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v26 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(a3, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v25 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);

  return objc_msgSend_valueWithVFXFloat4_(v4, v22, v23, COERCE_DOUBLE(__PAIR64__(v25, v26)));
}

uint64_t sub_1AF2C1810(uint64_t a1, const char *a2, void *a3)
{
  v4 = MEMORY[0x1E696B098];
  v5 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0);
  objc_msgSend_floatValue(v5, v6, v7);
  v88 = v8;
  v10 = objc_msgSend_objectAtIndexedSubscript_(a3, v9, 1);
  objc_msgSend_floatValue(v10, v11, v12);
  v85 = v13;
  v15 = objc_msgSend_objectAtIndexedSubscript_(a3, v14, 2);
  objc_msgSend_floatValue(v15, v16, v17);
  v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 3);
  objc_msgSend_floatValue(v19, v20, v21);
  v89 = COERCE_DOUBLE(__PAIR64__(v85, v88));
  v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v22, 4);
  objc_msgSend_floatValue(v23, v24, v25);
  v86 = v26;
  v28 = objc_msgSend_objectAtIndexedSubscript_(a3, v27, 5);
  objc_msgSend_floatValue(v28, v29, v30);
  v82 = v31;
  v33 = objc_msgSend_objectAtIndexedSubscript_(a3, v32, 6);
  objc_msgSend_floatValue(v33, v34, v35);
  v37 = objc_msgSend_objectAtIndexedSubscript_(a3, v36, 7);
  objc_msgSend_floatValue(v37, v38, v39);
  v87 = COERCE_DOUBLE(__PAIR64__(v82, v86));
  v41 = objc_msgSend_objectAtIndexedSubscript_(a3, v40, 8);
  objc_msgSend_floatValue(v41, v42, v43);
  v83 = v44;
  v46 = objc_msgSend_objectAtIndexedSubscript_(a3, v45, 9);
  objc_msgSend_floatValue(v46, v47, v48);
  v80 = v49;
  v51 = objc_msgSend_objectAtIndexedSubscript_(a3, v50, 10);
  objc_msgSend_floatValue(v51, v52, v53);
  v55 = objc_msgSend_objectAtIndexedSubscript_(a3, v54, 11);
  objc_msgSend_floatValue(v55, v56, v57);
  v84 = COERCE_DOUBLE(__PAIR64__(v80, v83));
  v59 = objc_msgSend_objectAtIndexedSubscript_(a3, v58, 12);
  objc_msgSend_floatValue(v59, v60, v61);
  v81 = v62;
  v64 = objc_msgSend_objectAtIndexedSubscript_(a3, v63, 13);
  objc_msgSend_floatValue(v64, v65, v66);
  v79 = v67;
  v69 = objc_msgSend_objectAtIndexedSubscript_(a3, v68, 14);
  objc_msgSend_floatValue(v69, v70, v71);
  v73 = objc_msgSend_objectAtIndexedSubscript_(a3, v72, 15);
  objc_msgSend_floatValue(v73, v74, v75);

  return objc_msgSend_valueWithVFXMatrix4_(v4, v76, v77, v89, v87, v84, COERCE_DOUBLE(__PAIR64__(v79, v81)));
}

uint64_t sub_1AF2C19E8(void *a1, const char *a2, uint64_t a3)
{
  v14[3] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXFloat3Value(a1, a2, a3);
  v13 = v3;
  v14[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v4, v5);
  HIDWORD(v6) = DWORD1(v13);
  LODWORD(v6) = DWORD1(v13);
  v14[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v6);
  v14[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, COERCE_DOUBLE(__PAIR64__(DWORD1(v13), DWORD2(v13))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v14, 3);
}

uint64_t sub_1AF2C1A8C(void *a1, const char *a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXFloat4Value(a1, a2, a3);
  v15 = v3;
  v16[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v4, v5);
  HIDWORD(v6) = DWORD1(v15);
  LODWORD(v6) = DWORD1(v15);
  v16[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8, v6);
  v16[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v9, v10, COERCE_DOUBLE(__PAIR64__(DWORD1(v15), DWORD2(v15))));
  v16[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v11, v12, COERCE_DOUBLE(__PAIR64__(DWORD1(v15), HIDWORD(v15))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v16, 4);
}

uint64_t sub_1AF2C1B44(void *a1, const char *a2, uint64_t a3)
{
  v49[16] = *MEMORY[0x1E69E9840];
  objc_msgSend_VFXMatrix4Value(a1, a2, a3);
  v45 = v3;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49[0] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v7, v8);
  HIDWORD(v9) = DWORD1(v45);
  LODWORD(v9) = DWORD1(v45);
  v49[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v10, v11, v9);
  v49[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v12, v13, COERCE_DOUBLE(__PAIR64__(DWORD1(v45), DWORD2(v45))));
  v49[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, COERCE_DOUBLE(__PAIR64__(DWORD1(v45), HIDWORD(v45))));
  v49[4] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v16, v17, *&v46);
  HIDWORD(v18) = DWORD1(v46);
  LODWORD(v18) = DWORD1(v46);
  v49[5] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, v18);
  v49[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v21, v22, COERCE_DOUBLE(__PAIR64__(DWORD1(v46), DWORD2(v46))));
  v49[7] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v23, v24, COERCE_DOUBLE(__PAIR64__(DWORD1(v46), HIDWORD(v46))));
  v49[8] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v25, v26, *&v47);
  HIDWORD(v27) = DWORD1(v47);
  LODWORD(v27) = DWORD1(v47);
  v49[9] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v28, v29, v27);
  v49[10] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v30, v31, COERCE_DOUBLE(__PAIR64__(DWORD1(v47), DWORD2(v47))));
  v49[11] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v32, v33, COERCE_DOUBLE(__PAIR64__(DWORD1(v47), HIDWORD(v47))));
  v49[12] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v34, v35, *&v48);
  HIDWORD(v36) = DWORD1(v48);
  LODWORD(v36) = DWORD1(v48);
  v49[13] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v37, v38, v36);
  v49[14] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v39, v40, COERCE_DOUBLE(__PAIR64__(DWORD1(v48), DWORD2(v48))));
  v49[15] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, COERCE_DOUBLE(__PAIR64__(DWORD1(v48), HIDWORD(v48))));
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v43, v49, 16);
}

uint64_t sub_1AF2C1DA4(uint64_t a1, uint64_t a2)
{
  v4[98] = *MEMORY[0x1E69E9840];
  v4[0] = @"VFXWorld";
  v4[1] = objc_opt_class();
  v4[2] = @"VFXColor";
  v4[3] = objc_opt_class();
  v4[4] = @"CAMediaTimingFunction";
  v4[5] = objc_opt_class();
  v4[6] = @"CABasicAnimation";
  v4[7] = objc_opt_class();
  v4[8] = @"CAAnimationGroup";
  v4[9] = objc_opt_class();
  v4[10] = @"CAKeyframeAnimation";
  v4[11] = objc_opt_class();
  v4[12] = @"CALayer";
  v4[13] = objc_opt_class();
  v4[14] = @"NSValue";
  v4[15] = objc_opt_class();
  v4[16] = @"VFXImage";
  v4[17] = objc_opt_class();
  v4[18] = @"VFXView";
  v4[19] = objc_opt_class();
  v4[20] = @"VFXAssetRegistry";
  v4[21] = objc_opt_class();
  v4[22] = @"VFXAssetNode";
  v4[23] = objc_opt_class();
  v4[24] = @"VFXCoreAsset";
  v4[25] = objc_opt_class();
  v4[26] = @"VFXFileAsset";
  v4[27] = objc_opt_class();
  v4[28] = @"VFXModel";
  v4[29] = objc_opt_class();
  v4[30] = @"VFXMaterialProperty";
  v4[31] = objc_opt_class();
  v4[32] = @"VFXLight";
  v4[33] = objc_opt_class();
  v4[34] = @"VFXParametricModel";
  v4[35] = objc_opt_class();
  v4[36] = @"VFXMeshElement";
  v4[37] = objc_opt_class();
  v4[38] = @"VFXRenderer";
  v4[39] = objc_opt_class();
  v4[40] = @"VFXMorpher";
  v4[41] = objc_opt_class();
  v4[42] = @"VFXCamera";
  v4[43] = objc_opt_class();
  v4[44] = @"VFXLOD";
  v4[45] = objc_opt_class();
  v4[46] = @"VFXMaterial";
  v4[47] = objc_opt_class();
  v4[48] = @"VFXProgram";
  v4[49] = objc_opt_class();
  v4[50] = @"VFXConstraint";
  v4[51] = objc_opt_class();
  v4[52] = @"VFXPhysicsJoint";
  v4[53] = objc_opt_class();
  v4[54] = @"VFXMeshSource";
  v4[55] = objc_opt_class();
  v4[56] = @"VFXFloor";
  v4[57] = objc_opt_class();
  v4[58] = @"VFXShape";
  v4[59] = objc_opt_class();
  v4[60] = @"VFXText";
  v4[61] = objc_opt_class();
  v4[62] = @"VFXWorldLoader";
  v4[63] = objc_opt_class();
  v4[64] = @"VFXAnimationEvent";
  v4[65] = objc_opt_class();
  v4[66] = @"VFXModelTessellator";
  v4[67] = objc_opt_class();
  v4[68] = @"VFXForceField";
  v4[69] = objc_opt_class();
  v4[70] = @"VFXPhysicsBallSocketJoint";
  v4[71] = objc_opt_class();
  v4[72] = @"VFXPhysicsSliderJoint";
  v4[73] = objc_opt_class();
  v4[74] = @"VFXPhysicsContact";
  v4[75] = objc_opt_class();
  v4[76] = @"VFXHitTestResult";
  v4[77] = objc_opt_class();
  v4[78] = @"VFXPhysicsShape";
  v4[79] = objc_opt_class();
  v4[80] = @"VFXPhysicsHingeJoint";
  v4[81] = objc_opt_class();
  v4[82] = @"VFXIKConstraint";
  v4[83] = objc_opt_class();
  v4[84] = @"VFXLookAtConstraint";
  v4[85] = objc_opt_class();
  v4[86] = @"VFXPhysicsBody";
  v4[87] = objc_opt_class();
  v4[88] = @"VFXPhysicsWorld";
  v4[89] = objc_opt_class();
  v4[90] = @"VFXNode";
  v4[91] = objc_opt_class();
  v4[92] = @"VFXBoundingBox";
  v4[93] = objc_opt_class();
  v4[94] = @"VFXBoundingSphere";
  v4[95] = objc_opt_class();
  v4[96] = @"VFXTransaction";
  v4[97] = objc_opt_class();
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v2, v4, 98);
}

uint64_t sub_1AF2C22E8(uint64_t a1, const char *a2)
{
  v104[202] = *MEMORY[0x1E69E9840];
  v104[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, 0);
  v104[1] = @"VFXEditingLocalSpace";
  v104[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v2, 1);
  v104[3] = @"VFXEditingParentSpace";
  v104[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v3, 2);
  v104[5] = @"VFXEditingWorldSpace";
  v104[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, 3);
  v104[7] = @"VFXEditingScreenSpace";
  v104[8] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, 0);
  v104[9] = @"VFXManipulatorPositionCenter";
  v104[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, 1);
  v104[11] = @"VFXManipulatorPositionMin";
  v104[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, 2);
  v104[13] = @"VFXManipulatorPositionMax";
  v104[14] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, 0);
  v104[15] = @"VFXCameraProjectionDirectionVertical";
  v104[16] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, 1);
  v104[17] = @"VFXCameraProjectionDirectionHorizontal";
  v104[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, 0);
  v104[19] = @"VFXInteractionModeFly";
  v104[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v11, 1);
  v104[21] = @"VFXInteractionModeOrbitTurntable";
  v104[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, 2);
  v104[23] = @"VFXInteractionModeOrbitAngleMapping";
  v104[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, 3);
  v104[25] = @"VFXInteractionModeOrbitCenteredArcball";
  v104[26] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v14, 4);
  v104[27] = @"VFXInteractionModeOrbitArcball";
  v104[28] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v15, 5);
  v104[29] = @"VFXInteractionModePan";
  v104[30] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, 6);
  v104[31] = @"VFXInteractionModeTruck";
  v104[32] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v17, 0);
  v104[33] = @"VFXCameraFillModeFit";
  v104[34] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v18, 1);
  v104[35] = @"VFXCameraFillModeFill";
  v104[36] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v19, 2);
  v104[37] = @"VFXCameraFillModeFitVertically";
  v104[38] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, 3);
  v104[39] = @"VFXCameraFillModeFitHorizontally";
  v104[40] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, 4);
  v104[41] = @"VFXCameraFillModeStretch";
  v104[42] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v22, 0);
  v104[43] = @"VFXMeshPrimitiveTypeTriangles";
  v104[44] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, 1);
  v104[45] = @"VFXMeshPrimitiveTypeTriangleStrip";
  v104[46] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, 2);
  v104[47] = @"VFXMeshPrimitiveTypeLine";
  v104[48] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, 3);
  v104[49] = @"VFXMeshPrimitiveTypePoint";
  v104[50] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v26, 4);
  v104[51] = @"VFXMeshPrimitiveTypePolygon";
  v104[52] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v27, 0);
  v104[53] = @"VFXTessellationSmoothingModeNone";
  v104[54] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v28, 1);
  v104[55] = @"VFXTessellationSmoothingModePNTriangles";
  v104[56] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, 2);
  v104[57] = @"VFXTessellationSmoothingModePhong";
  v104[58] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, 0);
  v104[59] = @"VFXSubdivisionBoundaryInterpolationRuleNone";
  v104[60] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v31, 1);
  v104[61] = @"VFXSubdivisionBoundaryInterpolationRuleEdgeOnly";
  v104[62] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v32, 2);
  v104[63] = @"VFXSubdivisionBoundaryInterpolationRuleEdgeAndCorner";
  v104[64] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v33, 0);
  v104[65] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearNone";
  v104[66] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v34, 1);
  v104[67] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersOnly";
  v104[68] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v35, 2);
  v104[69] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus1";
  v104[70] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v36, 3);
  v104[71] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus2";
  v104[72] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v37, 4);
  v104[73] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearBoundaries";
  v104[74] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v38, 5);
  v104[75] = @"VFXSubdivisionFaceVaryingInterpolationRuleLinearAll";
  v104[76] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v39, 0);
  v104[77] = @"VFXSubdivisionNormalSmoothingModeCrossTriangle";
  v104[78] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v40, 1);
  v104[79] = @"VFXSubdivisionNormalSmoothingModeCrossQuad";
  v104[80] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v41, 2);
  v104[81] = @"VFXSubdivisionNormalSmoothingModeLimit";
  v104[82] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v42, 0);
  v104[83] = @"VFXHitTestSearchModeClosest";
  v104[84] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v43, 1);
  v104[85] = @"VFXHitTestSearchModeAll";
  v104[86] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v44, 2);
  v104[87] = @"VFXHitTestSearchModeAny";
  v104[88] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v45, 0);
  v104[89] = @"VFXLODThresholdModeWorldSpaceDistance";
  v104[90] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v46, 1);
  v104[91] = @"VFXLODThresholdModeScreenSpaceRadius";
  v104[92] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v47, 0);
  v104[93] = @"VFXMorpherCalculationModeNormalized";
  v104[94] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, 1);
  v104[95] = @"VFXMorpherCalculationModeAdditive";
  v104[96] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, 0);
  v104[97] = @"VFXChamferModeBoth";
  v104[98] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v50, 1);
  v104[99] = @"VFXChamferModeFront";
  v104[100] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v51, 2);
  v104[101] = @"VFXChamferModeBack";
  v104[102] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, 0);
  v104[103] = @"VFXReferenceLoadingPolicyImmediate";
  v104[104] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v53, 1);
  v104[105] = @"VFXReferenceLoadingPolicyOnDemand";
  v104[106] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v54, 0);
  v104[107] = @"VFXAntialiasingModeNone";
  v104[108] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v55, 1);
  v104[109] = @"VFXAntialiasingModeMultisampling2X";
  v104[110] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v56, 2);
  v104[111] = @"VFXAntialiasingModeMultisampling4X";
  v104[112] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v57, 4);
  v104[113] = @"VFXWorldLoaderStatusParsing";
  v104[114] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v58, 8);
  v104[115] = @"VFXWorldLoaderStatusValidating";
  v104[116] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v59, 12);
  v104[117] = @"VFXWorldLoaderStatusProcessing";
  v104[118] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v60, 16);
  v104[119] = @"VFXWorldLoaderStatusComplete";
  v104[120] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v61, 0xFFFFFFFFLL);
  v104[121] = @"VFXWorldLoaderStatusError";
  v104[122] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v62, 0);
  v104[123] = @"VFXCullModeBack";
  v104[124] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v63, 1);
  v104[125] = @"VFXCullModeFront";
  v104[126] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, 0);
  v104[127] = @"VFXBufferFrequencyPerFrame";
  v104[128] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v65, 1);
  v104[129] = @"VFXBufferFrequencyPerNode";
  v104[130] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, 2);
  v104[131] = @"VFXBufferFrequencyPerShadable";
  v104[132] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, 0);
  v104[133] = @"VFXFillModeFill";
  v104[134] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, 1);
  v104[135] = @"VFXFillModeLines";
  v104[136] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v69, 0);
  v104[137] = @"VFXCullModeBack";
  v104[138] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, 1);
  v104[139] = @"VFXCullModeFront";
  v104[140] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v71, 0);
  v104[141] = @"VFXShadingModelPhysicallyBased";
  v104[142] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, 1);
  v104[143] = @"VFXShadingModelPhong";
  v104[144] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v73, 2);
  v104[145] = @"VFXShadingModelConstant";
  v104[146] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v74, 3);
  v104[147] = @"VFXShadingModelShadowOnly";
  v104[148] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v75, 0);
  v104[149] = @"VFXTransparencyModeDefault";
  v104[150] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v76, 1);
  v104[151] = @"VFXTransparencyModeSingleLayer";
  v104[152] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v77, 2);
  v104[153] = @"VFXTransparencyModeDualLayer";
  v104[154] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v78, 1);
  v104[155] = @"VFXBlendModeAlpha";
  v104[156] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, 2);
  v104[157] = @"VFXBlendModeAdd";
  v104[158] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v80, 3);
  v104[159] = @"VFXBlendModeSubtract";
  v104[160] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v81, 4);
  v104[161] = @"VFXBlendModeMultiply";
  v104[162] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v82, 5);
  v104[163] = @"VFXBlendModeScreen";
  v104[164] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v83, 0);
  v104[165] = @"VFXBlendModeOpaque";
  v104[166] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v84, 6);
  v104[167] = @"VFXBlendModeMax";
  v104[168] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v85, 0);
  v104[169] = @"VFXFilterModeNone";
  v104[170] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v86, 1);
  v104[171] = @"VFXFilterModeNearest";
  v104[172] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v87, 2);
  v104[173] = @"VFXFilterModeLinear";
  v104[174] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v88, 1);
  v104[175] = @"VFXWrapModeClamp";
  v104[176] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v89, 2);
  v104[177] = @"VFXWrapModeRepeat";
  v104[178] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v90, 3);
  v104[179] = @"VFXWrapModeClampToZero";
  v104[180] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v91, 4);
  v104[181] = @"VFXWrapModeMirror";
  v104[182] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v92, 0);
  v104[183] = @"VFXPhysicsBodyTypeStatic";
  v104[184] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v93, 1);
  v104[185] = @"VFXPhysicsBodyTypeDynamic";
  v104[186] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v94, 2);
  v104[187] = @"VFXPhysicsBodyTypeKinematic";
  v104[188] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v95, 0);
  v104[189] = @"VFXForceFieldScopeInsideExtent";
  v104[190] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v96, 1);
  v104[191] = @"VFXForceFieldScopeOutsideExtent";
  v104[192] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v97, 0);
  v104[193] = @"VFXForceFieldShapeNone";
  v104[194] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v98, 1);
  v104[195] = @"VFXForceFieldShapeBox";
  v104[196] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v99, 2);
  v104[197] = @"VFXForceFieldShapeSphere";
  v104[198] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v100, 3);
  v104[199] = @"VFXForceFieldShapeCone";
  v104[200] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v101, 4);
  v104[201] = @"VFXForceFieldShapeTube";
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v102, v104, 202);
}

uint64_t VFXExportJavaScriptModule(void *a1, const char *a2)
{
  result = objc_msgSend_objectForKeyedSubscript_(a1, a2, @"_VFXIsLoaded");
  if (!result || (result = objc_msgSend_toBool(result, v4, v5), (result & 1) == 0))
  {
    v6 = sub_1AF2C1DA4(result, v4);
    v9 = objc_msgSend_count(v6, v7, v8);
    v11 = v9;
    if (v9 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_objectAtIndexedSubscript_(v6, v10, v12);
        v15 = objc_msgSend_objectAtIndexedSubscript_(v6, v14, v12 + 1);
        v9 = sub_1AF2C2F20(a1, v13, v15);
        v12 += 2;
      }

      while (v12 < v11);
    }

    v16 = sub_1AF2C22E8(v9, v10);
    v21 = objc_msgSend_count(v16, v17, v18);
    if (v21 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = objc_msgSend_globalObject(a1, v19, v20);
        v25 = objc_msgSend_objectAtIndexedSubscript_(v16, v24, v22);
        v27 = objc_msgSend_objectAtIndexedSubscript_(v16, v26, v22 + 1);
        objc_msgSend_setValue_forProperty_(v23, v28, v25, v27);
        v22 += 2;
      }

      while (v22 < v21);
    }

    v29 = objc_msgSend_globalObject(a1, v19, v20);
    v32 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v30, 1);

    return objc_msgSend_setValue_forProperty_(v29, v31, v32, @"_VFXIsLoaded");
  }

  return result;
}

uint64_t sub_1AF2C2F20(void *a1, void *a2, objc_class *a3)
{
  result = objc_opt_class();
  if (result != a3)
  {
    Superclass = class_getSuperclass(a3);
    if (Superclass)
    {
      v10 = Superclass;
      v11 = NSStringFromClass(Superclass);
      sub_1AF2C2F20(a1, v11, v10);
    }

    v12 = objc_msgSend_globalObject(a1, v8, v9);
    v14 = objc_msgSend_valueForProperty_(v12, v13, a2);
    result = objc_msgSend_isUndefined(v14, v15, v16);
    if (result)
    {
      if (objc_msgSend_hasPrefix_(a2, v17, @"CA"))
      {
        v19 = MEMORY[0x1E696AEC0];
        v35 = objc_msgSend_substringFromIndex_(a2, v18, 2);
        v21 = objc_msgSend_stringWithFormat_(v19, v20, @"VFXJS%@JSExport", v35);
      }

      else
      {
        hasPrefix = objc_msgSend_hasPrefix_(a2, v18, @"NS");
        v26 = MEMORY[0x1E696AEC0];
        if (hasPrefix)
        {
          v36 = objc_msgSend_substringFromIndex_(a2, v25, 2);
          v21 = objc_msgSend_stringWithFormat_(v26, v27, @"VFX%@JSExport", v36);
        }

        else
        {
          v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"%@JSExport", a2);
        }
      }

      v28 = objc_msgSend_UTF8String(v21, v22, v23);
      result = objc_getProtocol(v28);
      if (result || (result = objc_opt_respondsToSelector(), (result & 1) != 0) && (result = objc_msgSend_VFXJSExportProtocol(a3, v33, v34)) != 0)
      {
        class_addProtocol(a3, result);
        v31 = objc_msgSend_globalObject(a1, v29, v30);

        return objc_msgSend_setValue_forProperty_(v31, v32, a3, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2CBA78(uint64_t a1)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](a1, sel_documentEnclosingURL, v2);
}

CFStringRef sub_1AF2CC368(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

void *sub_1AF2CC858(uint64_t a1, const char *a2)
{
  if (*a1 != 5)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, v3);
  if (v3)
  {
    v7 = 0;
    v8 = 8 * v3;
    do
    {
      v9 = objc_msgSend_valueWithCGPoint_(MEMORY[0x1E696B098], v4, v5, vcvtq_f64_f32(*(*(a1 + 40) + v7)));
      objc_msgSend_addObject_(v6, v10, v9);
      v7 += 8;
    }

    while (v8 != v7);
  }

  return v6;
}

uint64_t sub_1AF2CC98C(uint64_t a1)
{
  v44[0] = sub_1AF371798(*(*(a1 + 32) + 72), 0);
  v44[1] = v2;
  sub_1AF19B308(*(*(a1 + 32) + 8), v44);
  sub_1AF19B268(*(*(a1 + 32) + 8), *(*(a1 + 32) + 64));
  sub_1AF19C4B4(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 88));
  sub_1AF19CB58(*(*(a1 + 32) + 8), v4, *(*(a1 + 32) + 92));
  sub_1AF19B3DC(*(*(a1 + 32) + 8), v5, *(*(a1 + 32) + 80));
  sub_1AF19C32C(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 1) & 1);
  sub_1AF19C6EC(*(*(a1 + 32) + 8), v6, vcvt_f32_f64(*(*(a1 + 32) + 104)));
  sub_1AF19C78C(*(*(a1 + 32) + 8), v7, *(*(a1 + 32) + 84));
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  sub_1AF19CCE0(*(v8 + 8), v10, v9);
  v11 = *(a1 + 32);
  v12 = *(v11 + 168);
  sub_1AF19CC44(*(v11 + 8), v13, v12);
  sub_1AF19C650(*(*(a1 + 32) + 8), v14, *(*(a1 + 32) + 176));
  sub_1AF19D7B8(*(*(a1 + 32) + 8), v15, *(*(a1 + 32) + 272));
  sub_1AF19CA50(*(*(a1 + 32) + 8), v16, *(*(a1 + 32) + 276));
  sub_1AF19CAB0(*(*(a1 + 32) + 8), v17, *(*(a1 + 32) + 280));
  sub_1AF19C990(*(*(a1 + 32) + 8), v18, *(*(a1 + 32) + 284));
  sub_1AF19D2D4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 360));
  sub_1AF19D4B4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 361), v19, v20);
  sub_1AF19C404(*(*(a1 + 32) + 8), *(*(a1 + 32) + 120));
  sub_1AF19C5B4(*(*(a1 + 32) + 8), v21, *(*(a1 + 32) + 96));
  sub_1AF19C88C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 128));
  sub_1AF19E858(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 5) & 1);
  v22 = *(a1 + 32);
  v23 = *(v22 + 136);
  sub_1AF19EA80(*(v22 + 8), v24, v23);
  sub_1AF19E9DC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 129));
  v25 = *(a1 + 32);
  v26 = *(v25 + 144);
  sub_1AF19EADC(*(v25 + 8), v27, v26);
  sub_1AF19ED58(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 28) >> 6) & 1);
  sub_1AF19EE10(*(*(a1 + 32) + 8), *(*(a1 + 32) + 28) >> 7);
  sub_1AF19D900(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF19D9C4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 192));
  sub_1AF19DB30(*(*(a1 + 32) + 8), *(*(a1 + 32) + 200));
  sub_1AF19DD74(*(*(a1 + 32) + 8), v28, *(*(a1 + 32) + 208));
  sub_1AF19DE48(*(*(a1 + 32) + 8), v29, *(*(a1 + 32) + 224));
  sub_1AF19DCB0(*(*(a1 + 32) + 8), v30, *(*(a1 + 32) + 240));
  sub_1AF19DBF0(*(*(a1 + 32) + 8), v31, *(*(a1 + 32) + 256));
  sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), v32, v33, v34, v35, v36);
  sub_1AF19D410(*(*(a1 + 32) + 8), *(*(a1 + 32) + 336), v37, v38, v39, v40);
  return objc_msgSend__updateEntityPresentationFromModel(*(a1 + 32), v41, v42);
}

void sub_1AF2CCC28(uint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, __n128 a8)
{
  v27[7] = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (!a2)
    {
      memset(v27, 0, 48);
      goto LABEL_19;
    }

    if (a2 != 1)
    {
      return;
    }

    memset(v27 + 1, 0, 47);
    v26 = 1;
LABEL_17:
    LOBYTE(v27[0]) = v26;
LABEL_19:
    sub_1AF19B650(result, v27, 0.0, a5, a6, a7, a8);
    return;
  }

  switch(a2)
  {
    case 2:
      memset(v27 + 1, 0, 47);
      v26 = 2;
      goto LABEL_17;
    case 3:
      memset(v27 + 1, 0, 47);
      v26 = 3;
      goto LABEL_17;
    case 4:
      v10 = objc_msgSend_count(a3, 4, a3);
      if (v10 >= 0xFF)
      {
        v11 = 255;
      }

      else
      {
        v11 = v10;
      }

      v13 = MEMORY[0x1EEE9AC00](v10);
      v19 = v27 - v18;
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, v21, v13);
          objc_msgSend_CGPointValue(v22, v23, v24);
          v25.f64[1] = v14;
          v13 = COERCE_DOUBLE(vcvt_f32_f64(v25));
          *&v19[8 * v21++] = v13;
        }

        while (v11 != v21);
      }

      LOBYTE(v27[0]) = 4;
      memset(v27 + 1, 0, 24);
      v27[3] = 0;
      LOBYTE(v27[4]) = v11;
      *(&v27[4] + 1) = 0;
      HIDWORD(v27[4]) = 0;
      v27[5] = v19;
      sub_1AF19B650(result, v27, v13, v14, v15, v16, v17);
      break;
  }
}

uint64_t sub_1AF2CD088(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2CD0E8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF2CD468(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 40), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 32);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2CD8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2CDA78(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 40);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2CDE98(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2CDFDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2CE0A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2CE154(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2CE28C(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2CE3C8(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2CE470;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

id sub_1AF2CE724(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D46F0);
  qword_1ED73B318 = result;
  return result;
}

void sub_1AF2CF66C(uint64_t a1)
{
  v3[0] = sub_1AF371798(*(a1 + 32), 0);
  v3[1] = v2;
  sub_1AF19B308(*(*(a1 + 40) + 8), v3);
}

void sub_1AF2D06D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_1AF19B268(*(*(a1 + 32) + 8), v2);
  sub_1AF19C4B4(*(*(a1 + 32) + 8), v3, *(*(a1 + 32) + 88));
  if (v2 == 5)
  {
    sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), v4, v5, v6, v7, v8);
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v15 = *(v13 + 336);

    sub_1AF19D410(v14, v15, v9, v10, v11, v12);
  }
}

void sub_1AF2D1BAC(uint64_t a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  sub_1AF2CCC28(*(*(a1 + 32) + 8), *(*(a1 + 32) + 320), *(*(a1 + 32) + 352), a2, a3, a4, a5, a6);
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  v13 = *(v11 + 336);

  sub_1AF19D410(v12, v13, v7, v8, v9, v10);
}

void sub_1AF2D2200(uint64_t a1)
{
  sub_1AF19B268(*(*(a1 + 32) + 8), 6);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  sub_1AF19BE08(v3, v2);
}

uint64_t sub_1AF2D43F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2D4454(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

CFStringRef sub_1AF2D45D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

uint64_t sub_1AF2D4900(uint64_t a1, uint64_t a2)
{
  if (a1 < 5)
  {
    return qword_1AFE478C0[a1];
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF59D4();
  }

  return 2;
}

uint64_t sub_1AF2D49E8(uint64_t a1)
{
  sub_1AF1A1310(*(a1 + 40), *(*(a1 + 32) + 264));
  sub_1AF1A15D0(*(a1 + 40), *(*(a1 + 32) + 284));
  sub_1AF1A16E8(*(a1 + 40), *(*(a1 + 32) + 285));
  sub_1AF1A1124(*(a1 + 40), *(*(a1 + 32) + 304));
  sub_1AF1A11A4(*(a1 + 40), *(*(a1 + 32) + 282));
  sub_1AF1A1014(*(a1 + 40), *(*(a1 + 32) + 288));
  sub_1AF1A10A4(*(a1 + 40), *(*(a1 + 32) + 296));
  sub_1AF1A14E8(*(a1 + 40), v2, *(*(a1 + 32) + 244));
  v4 = sub_1AF1A1270(*(a1 + 40), v3);
  if (v4)
  {
    v7 = v4;
    sub_1AF165B2C(v4, 19, *(*(a1 + 32) + 228));
    sub_1AF165B2C(v7, 20, *(*(a1 + 32) + 232));
    sub_1AF165B2C(v7, 21, *(*(a1 + 32) + 236));
    sub_1AF165DF4(v7, *(*(a1 + 32) + 248));
    v9 = sub_1AF2D4B20(*(*(a1 + 32) + 256), v8);
    sub_1AF165A7C(v7, v9);
    sub_1AF166B7C(v7, *(*(a1 + 32) + 281));
    sub_1AF166ABC(v7, *(*(a1 + 32) + 283));
    sub_1AF166D14(v7, *(*(a1 + 32) + 240), v10);
  }

  v11 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v11, v5, v6);
}

uint64_t sub_1AF2D4B20(unint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5A10();
    }

    LOBYTE(v2) = 3;
  }

  else
  {
    return (0x4000103u >> (8 * a1));
  }

  return v2;
}

void sub_1AF2D56A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_commonProfile(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF165DF4(v4, v5);
}

void sub_1AF2D57FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 19, v7);
}

void sub_1AF2D5964(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 20, v7);
}

void sub_1AF2D5ACC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v7 = *(a1 + 40);

  sub_1AF165B2C(v6, 21, v7);
}

void sub_1AF2D5C34(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v8 = *(a1 + 40);

  sub_1AF166D14(v6, v8, v7);
}

void sub_1AF2D5D88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A10A4(v4, v5);
}

void sub_1AF2D5F48(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  sub_1AF1A14E8(v4, v5, v6);
}

void sub_1AF2D6014(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v8 = sub_1AF2D4B20(*(a1 + 40), v7);

  sub_1AF165A7C(v6, v8);
}

void sub_1AF2D6174(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v7 = *(a1 + 40);

  sub_1AF166B7C(v6, v7);
}

void sub_1AF2D62C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v6 = sub_1AF1A1270(v4, v5);
  v7 = *(a1 + 40);

  sub_1AF166ABC(v6, v7);
}

void sub_1AF2D6418(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A15D0(v4, v5);
}

void sub_1AF2D6564(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A1124(v4, v5);
}

void sub_1AF2D66A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A16E8(v4, v5);
}

void sub_1AF2D68B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A11A4(v4, v5);
}

void sub_1AF2D6A10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A1310(v4, v5);
}

void sub_1AF2D6B54(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialRef(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF1A1014(v4, v5);
}

void sub_1AF2D7264(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 184));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 192), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 16));
    v7 = (*(a1 + 40) + 184);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2D76D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2D7874(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 192);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF2D7C94(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2D7DD8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2D7EA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2D7F50(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2D8088(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2D81C4(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2D826C;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

void sub_1AF2D8704(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend__shadableSetValue_forUndefinedKey_(*(a1 + 32), v5, v6, a2);
}

void sub_1AF2D8B50(uint64_t a1)
{
  sub_1AF16E2D4(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1AF2D8BA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF16E2D4(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      sub_1AF16E2D4(v4, v5, v6);
    }

    else
    {

      sub_1AF16E368(v4, v5);
    }
  }
}

uint64_t sub_1AF2D8CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a2);
  }

  return result;
}

uint64_t sub_1AF2D8F78(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3, a2);
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a2);
  }

  return result;
}

BOOL sub_1AF2D8FCC(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = objc_msgSend_objCType(a1, v4, v5);
  return strcmp(v6, "{CGRect={CGPoint=dd}{CGSize=dd}}") == 0;
}

uint64_t sub_1AF2D9138(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3, a2);
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a3);
  }

  return result;
}

void *sub_1AF2D9574(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1C38D4(v3, v4);
}

uint64_t sub_1AF2DA224()
{
  v0 = objc_alloc_init(_VFXNullMaterial);
  qword_1EB658868 = v0;

  return objc_msgSend_setName_(v0, v1, @"_VFXNullMaterial");
}

void sub_1AF2DAC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2DACA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedRegistry(VFXSourceRendererRegistry, a2, a3);
  v5 = *(*(*(a1 + 32) + 8) + 40);

  return MEMORY[0x1EEE66B58](v4, sel_removeSourceRenderersForSource_, v5);
}

void sub_1AF2DB994(uint64_t a1, const char *a2)
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, *(a1 + 40) != 0);
  if (IfNeeded)
  {
    v4 = *(a1 + 40);

    sub_1AF166730(IfNeeded, v4);
  }
}

void sub_1AF2DBB00(uint64_t a1, const char *a2)
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, *(a1 + 40) != 15);
  if (IfNeeded)
  {
    v4 = *(a1 + 40);

    sub_1AF167BB0(IfNeeded, v4);
  }
}

void sub_1AF2DBC20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialProperty(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 40);

    sub_1AF1665E0(v4, v5, v6);
  }
}

void sub_1AF2DC098(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_materialProperty(*(a1 + 32), a2, a3))
  {
    v6 = objc_msgSend_materialProperty(*(a1 + 32), v4, v5);
    v7 = *(a1 + 40);

    sub_1AF167CEC(v6, v7);
  }
}

uint64_t sub_1AF2DC9C8(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXUIKitSource);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(a1 + 32);
  if (isKindOfClass)
  {
    objc_msgSend_setUiView_(v3, v5, v6);
  }

  else
  {
    objc_msgSend_setUiWindow_(v3, v5, v6);
  }

  objc_msgSend_connectToProxy_(v3, v7, v2);

  return v2;
}

void sub_1AF2DD33C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialProperty(*(a1 + 96), a2, a3);
  if (v4)
  {

    sub_1AF167444(v4, (a1 + 32), v5, v6, v7, v8, v9, v10);
  }
}

void sub_1AF2DD580(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3);
  if (v4)
  {

    sub_1AF1672B8(v4, (a1 + 32));
  }
}

void sub_1AF2DD784(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3);
  if (v4)
  {

    sub_1AF1672B8(v4, (a1 + 32));
  }
}

void sub_1AF2DD9A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_materialProperty(*(a1 + 128), a2, a3);
  if (v4)
  {

    sub_1AF1672B8(v4, (a1 + 32));
  }
}

uint64_t sub_1AF2DE274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) = 1;
  return sub_1AF1961FC(v3, a2);
}

void sub_1AF2DE61C(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v5, *(a1 + 48));
    v6 = *(a1 + 32);
    v9 = objc_msgSend_world(*(a1 + 40), v7, v8);
    objc_msgSend_removeWorldReference_(v6, v10, v9);
    v11 = (*(a1 + 40) + 40);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2DEAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2DEC4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF2DF06C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2DF1B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2DF27C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2DF328(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2DF460(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2DF59C(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2DF644;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

void *sub_1AF2DF980(uint64_t a1, const char *a2)
{
  result = objc_msgSend_materialPropertyCreateIfNeeded_(*(a1 + 32), a2, 0);
  if (result)
  {
    v5 = result;
    sub_1AF1665E0(result, v4, *(*(a1 + 32) + 80));
    sub_1AF166730(v5, *(*(a1 + 32) + 73));
    sub_1AF167BB0(v5, *(*(a1 + 32) + 76) & 0xF);
    sub_1AF167CEC(v5, (*(*(a1 + 32) + 8) >> 2) & 1);
    v7 = *(a1 + 32);
    v8 = v7[13];
    if (v8)
    {
      sub_1AF1672B8(v5, v8);
      v7 = *(a1 + 32);
    }

    return objc_msgSend__updateSampler(v7, v8, v6);
  }

  return result;
}

uint64_t sub_1AF2DFF8C(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXCoreAnimationSource);
  objc_msgSend_setLayer_(v3, v4, *(a1 + 32));
  objc_msgSend_connectToProxy_(v3, v5, v2);

  return v2;
}

uint64_t sub_1AF2E00AC(uint64_t a1)
{
  v2 = sub_1AF276504(1);
  v3 = objc_alloc_init(VFXAVPlayerSource);
  objc_msgSend_setPlayer_(v3, v4, *(a1 + 32));
  objc_msgSend_connectToProxy_(v3, v5, v2);

  return v2;
}

uint64_t sub_1AF2E01CC(uint64_t a1)
{
  v2 = sub_1AF276504(2);
  v3 = objc_alloc_init(VFXCaptureDeviceSource);
  objc_msgSend_setCaptureDevice_(v3, v4, *(a1 + 32));
  objc_msgSend_connectToProxy_(v3, v5, v2);

  return v2;
}

uint64_t sub_1AF2E02EC(uint64_t a1)
{
  v2 = sub_1AF276504(3);
  objc_msgSend_connectToProxy_(*(a1 + 32), v3, v2);
  return v2;
}

uint64_t sub_1AF2E03E8(uint64_t a1)
{
  v2 = sub_1AF276504(0);
  v3 = objc_alloc_init(VFXMaterialPropertyTextureProviderSource);
  objc_msgSend_setTextureProvider_(v3, v4, *(a1 + 32));
  objc_msgSend_connectToProxy_(v3, v5, v2);

  return v2;
}

uint64_t sub_1AF2E1D48(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2E1DA8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 8);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

CFStringRef sub_1AF2E1F24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

void sub_1AF2E25E0(void *a1, const char *a2, void *a3, _BYTE *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_count(a1, a2, a3);
  if (v10)
  {
    v11 = objc_msgSend_count(a3, v8, v9);
    v13 = v11;
    if (v11)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = objc_msgSend_objectAtIndexedSubscript_(a3, v12, v14);
        v11 = objc_msgSend_indicesChannelCount(v16, v17, v18);
        if (v14)
        {
          v19 = v11;
          if (v11 != v15)
          {
            v20 = sub_1AF0D5194(v11, v12);
            v11 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            if (v11)
            {
              *buf = 0;
              _os_log_impl(&dword_1AF0CE000, v20, OS_LOG_TYPE_DEFAULT, "Warning: Found elements with different channel counts in the same mesh", buf, 2u);
            }

            if (v19 < v15)
            {
              v15 = v19;
            }
          }
        }

        else
        {
          v15 = v11;
        }

        ++v14;
      }

      while (v13 != v14);
      if (!a2)
      {
        return;
      }
    }

    else
    {
      v15 = 0;
      if (!a2)
      {
        return;
      }
    }

    v21 = 0;
    v22 = 1;
    while (1)
    {
      if (v22 - 1 >= v10)
      {
        v31 = sub_1AF0D5194(v11, v12);
        v11 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          *buf = 67109120;
          v33 = v22 - 1;
          v28 = v31;
          v29 = "Error: Missing channel for source at index %u";
          v30 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        v23 = objc_msgSend_objectAtIndexedSubscript_(a1, v12, v21);
        v11 = objc_msgSend_intValue(v23, v24, v25);
        v26 = v11;
        if ((v11 & 0x80000000) == 0 && v11 <= v15)
        {
          goto LABEL_27;
        }

        v27 = sub_1AF0D5194(v11, v12);
        v11 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (v11)
        {
          *buf = 67109376;
          v33 = v26;
          v34 = 1024;
          v35 = v22 - 1;
          v28 = v27;
          v29 = "Error: Invalid channel (%d) for source at index %u";
          v30 = 14;
LABEL_30:
          _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
        }
      }

      LOBYTE(v26) = 0;
LABEL_27:
      a4[v21] = v26;
      v21 = v22++;
      if (v21 >= a2)
      {
        return;
      }
    }
  }

  bzero(a4, a2);
}

uint64_t sub_1AF2E41CC(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2E422C(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

void sub_1AF2E44A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_count(a2, a2, a3);
  v6 = v5;
  if (v5)
  {
    v7 = malloc_type_malloc(16 * v5, 0x1000040451B5BE8uLL);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2E4D44;
    v9[3] = &unk_1E7A7E918;
    v9[4] = v7;
    objc_msgSend_enumerateObjectsUsingBlock_(a2, v8, v9);
  }

  else
  {
    v7 = 0;
  }

  sub_1AF1A7470(a1, v7, v6);
}

void *sub_1AF2E4D44(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_rangeValue(a2, a2, a3);
  v7 = (*(a1 + 32) + 16 * a3);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = -1;
  }

  else
  {
    v8 = result;
  }

  *v7 = v8;
  v7[1] = v6;
  return result;
}

uint64_t sub_1AF2E4D88(uint64_t a1, const char *a2)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"kGeometrySourceSemanticPosition";
  v3[1] = @"kGeometrySourceSemanticNormal";
  v3[2] = @"kGeometrySourceSemanticColor";
  v3[3] = @"kGeometrySourceSemanticTexcoord";
  v3[4] = @"kGeometrySourceSemanticTangent";
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v3, 5);
}

__CFString *sub_1AF2E4E18(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7A7E9A8[a1];
  }
}

uint64_t sub_1AF2E4E38(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticPosition"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1, v3, @"kGeometrySourceSemanticNormal"))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1, v5, @"kGeometrySourceSemanticColor"))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1, v6, @"kGeometrySourceSemanticTexcoord"))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1, v7, @"kGeometrySourceSemanticTangent"))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1, v8, @"kGeometrySourceSemanticVertexCrease"))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1, v9, @"kGeometrySourceSemanticEdgeCrease"))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1, v10, @"kGeometrySourceSemanticBoneIndices"))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1, v11, @"kGeometrySourceSemanticBoneWeights"))
  {
    return 6;
  }

  return 0;
}

uint64_t sub_1AF2E54B8(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticPosition") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v3, @"kGeometrySourceSemanticNormal") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v4, @"kGeometrySourceSemanticColor") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v5, @"kGeometrySourceSemanticTexcoord") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v6, @"kGeometrySourceSemanticTangent") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v7, @"kGeometrySourceSemanticVertexCrease") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v8, @"kGeometrySourceSemanticEdgeCrease") & 1) != 0 || (objc_msgSend_isEqualToString_(a1, v9, @"kGeometrySourceSemanticBoneIndices"))
  {
    return 1;
  }

  return objc_msgSend_isEqualToString_(a1, v10, @"kGeometrySourceSemanticBoneWeights");
}

uint64_t sub_1AF2E64B0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2E6510(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

CFStringRef sub_1AF2E73DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return sub_1AF16CC34(v4, v5);
}

void sub_1AF2E788C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend___CFObject(*(a1 + 40), a2, a3);

  sub_1AF1B2E54(v3, v4);
}

void *sub_1AF2E7DE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3);

  return sub_1AF1C38D4(v3, v4);
}

__n128 sub_1AF2E8060(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v1.i32[3] = 1.0;
  v2.i32[3] = 1.0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v5[0] = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5[1] = vmulq_f32(vsubq_f32(v2, v1), v3);
  sub_1AF1B2180(*(a1[4].i64[0] + 8), v5);
  return result;
}

void sub_1AF2E8580(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend__shadableSetValue_forUndefinedKey_(*(a1 + 32), v5, v6, a2);
}

uint64_t sub_1AF2E8CA0(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2E8D00(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v6);
  }

  return result;
}

uint64_t sub_1AF2E9100(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_materialRef(*(a1 + 40), a2, a3);
  v6 = *(a1 + 48);

  return sub_1AF1B3548(v4, v5, v6);
}

uint64_t sub_1AF2E932C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_materialRef(*(a1 + 40), a2, a3);
  v6 = *(a1 + 48);

  return sub_1AF1B35C8(v4, v5, v6);
}

void *sub_1AF2E97A8(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (result)
  {

    return sub_1AF1B3498(result, v4);
  }

  return result;
}

uint64_t sub_1AF2E9DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = objc_msgSend_thresholdMode(a2, a2, a3);
  v8 = objc_msgSend_thresholdValue(a2, v6, v7);
  objc_msgSend_doubleValue(v8, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_thresholdValue(a3, v13, v14);
  objc_msgSend_doubleValue(v15, v16, v17);
  v19 = v12 > v18;
  if (!v5)
  {
    v19 = v12 < v18;
  }

  if (v19)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1AF2E9E68(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2E9F14;
  v10[3] = &unk_1E7A796D8;
  v10[4] = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v10);
  sub_1AF1B2F3C(*(*(a1 + 40) + 8), v7);
}

uint64_t sub_1AF2E9F14(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend___CFObject(a2, a2, a3);

  return objc_msgSend_addObject_(v3, v4, v5);
}

void sub_1AF2EA068(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = *(a1 + 40);

    sub_1AF170B70(v4, v5);
  }
}

void sub_1AF2EA174(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = *(a1 + 40);

    sub_1AF1709B8(v4, v5);
  }
}

void sub_1AF2EA25C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v5 = *(a1 + 40);

    sub_1AF170AFC(v4, v5);
  }
}

void sub_1AF2EA390(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_meshElement(*(*(a1 + 32) + 112), v5, v6);

    sub_1AF170CA0(v7, v8);
  }
}

void sub_1AF2EA4E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_modelRef(*(a1 + 32), a2, a3);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_meshSource(*(*(a1 + 32) + 104), v5, v6);

    sub_1AF170C00(v7, v8);
  }
}

void sub_1AF2EAB14(uint64_t a1)
{
  sub_1AF16E2D4(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_1AF2EAB68(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_1AF16E2D4(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      sub_1AF16E2D4(v4, v5, v6);
    }

    else
    {

      sub_1AF16E368(v4, v5);
    }
  }
}

uint64_t sub_1AF2EACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a2);
  }

  return result;
}

uint64_t sub_1AF2EAF3C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3, a2);
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a2);
  }

  return result;
}

uint64_t sub_1AF2EB040(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1AF2D8FCC(a3, a2);
  if (result)
  {
    v7 = *(a1 + 32);

    return objc_msgSend_addObject_(v7, v6, a3);
  }

  return result;
}

void sub_1AF2EB5D0(uint64_t a1, double a2, const char *a3)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a3, *(a1 + 40));
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a2) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 56));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 64), v5, *(a1 + 48));
    objc_msgSend_removeWorldReference_(*(a1 + 32), v6, *(*(a1 + 40) + 24));
    v7 = (*(a1 + 40) + 56);

    os_unfair_lock_unlock(v7);
  }
}

void sub_1AF2EBA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 0.0)
  {
    sub_1AF29213C(v5, v6, a3);
  }

  else
  {
    sub_1AF2921A8(v5, v6, *(a1 + 48), v4);
  }
}

void sub_1AF2EBBE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3);
  if (v5)
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 64);

    objc_msgSend_setValue_forKey_(v8, v6, v7, a2);
  }

  else
  {
    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4F34();
    }
  }
}

void sub_1AF2EC000(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v12 = objc_alloc_init(CFXBinding);
  v7 = objc_msgSend___CFObject(*(a1 + 40), v5, v6);
  objc_msgSend_setSourceObject_(v12, v8, v7);
  objc_msgSend_setKeyPathDst_(v12, v9, *(a1 + 48));
  objc_msgSend_setKeyPathSrc_(v12, v10, *(a1 + 56));
  objc_msgSend_setOptions_(v12, v11, *(a1 + 64));
  sub_1AF16DBF8(v4, v12);
}

void sub_1AF2EC144(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  sub_1AF16DE24(v4, v5);
}

void sub_1AF2EC210(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___CFObject(*(a1 + 32), a2, a3);

  sub_1AF16DDA8(v3, v4);
}

uint64_t sub_1AF2EC2BC(uint64_t a1, const char *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keyPathDst(a3, a2, a3);
  v8 = objc_msgSend_sourceObject(a3, v6, v7);
  v11 = objc_msgSend_keyPathSrc(a3, v9, v10);
  v15 = objc_msgSend_options(a3, v12, v13);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v4, v14, v5, v8, v11, v15);
}

void sub_1AF2EC3F4(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___CFObject(a1[4], a2, a3);
  v7 = objc_msgSend_keyPathDst(a1[5], v5, v6);
  sub_1AF16DE24(v4, v7);
  v24 = objc_alloc_init(CFXBinding);
  v10 = objc_msgSend___CFObject(a1[6], v8, v9);
  objc_msgSend_setSourceObject_(v24, v11, v10);
  v14 = objc_msgSend_keyPathDst(a1[5], v12, v13);
  objc_msgSend_setKeyPathDst_(v24, v15, v14);
  v18 = objc_msgSend_keyPathSrc(a1[5], v16, v17);
  objc_msgSend_setKeyPathSrc_(v24, v19, v18);
  v22 = objc_msgSend_options(a1[5], v20, v21);
  objc_msgSend_setOptions_(v24, v23, v22);
  sub_1AF16DBF8(v4, v24);
}

uint64_t sub_1AF2EC530(uint64_t a1, const char *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = objc_msgSend_sourceObject(a3, a2, a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2EC5D8;
  v8[3] = &unk_1E7A7E3D8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return (*(v5 + 16))(v5, v6, 1, v8);
}

id sub_1AF2ECED0(_BYTE *a1, uint64_t a2)
{
  if ((a2 & 1) == 0 && sub_1AF196D70(a1, a2))
  {
    v3 = sub_1AF196D08(a1, a2);
    v4 = sub_1AF2ECED0(v3, 1);
    CFRelease(v3);
    return v4;
  }

  v6 = sub_1AF197E50(a1, a2);
  if (v6 == 2)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF68E4(v8, v9, v10);
    }

    return 0;
  }

  v11 = sub_1AF197BC0(a1, 1);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  Data = CGBitmapContextGetData(v11);
  v28 = sub_1AF1965C4(a1, v14);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(v12);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(v12);
  if (BitsPerComponent != 8)
  {
    CFRelease(v12);
    return 0;
  }

  v17 = BitsPerPixel >> 3;
  v18 = objc_alloc(MEMORY[0x1E6974BD8]);
  v19 = MEMORY[0x1E695DEF0];
  BytesPerRow = CGBitmapContextGetBytesPerRow(v12);
  v22 = objc_msgSend_dataWithBytes_length_(v19, v21, Data, vmuls_lane_f32(BytesPerRow, *&v28, 1));
  v23 = CGBitmapContextGetBytesPerRow(v12);
  v27 = sub_1AF197E50(a1, v24) == 3;
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v18, v25, v22, 1, 0, v23, v17, 1, COERCE_DOUBLE(vcvt_s32_f32(*&v28)), v27);
  CFRelease(v12);

  return isCube;
}

uint64_t sub_1AF2ED094(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_imageFromTexture(a1, a2, a3);
  v6 = sub_1AF196CC4(v4, v5);
  if (objc_msgSend_isCube(a1, v7, v8))
  {
    sub_1AF197FCC();
    v10 = sub_1AF196D70(v6, v9);
    if (!v10)
    {
      v12 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create cubemap from Model I/O texture", v14, 2u);
      }
    }
  }

  return v6;
}

void *sub_1AF2ED16C(void *a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a7))
  {
    v11 = objc_msgSend_transform(a1, v9, v10);
    objc_msgSend_matrix(v11, v12, v13);
    v14 = 0;
    v44[0] = v15;
    v44[1] = v16;
    v44[2] = v17;
    v44[3] = v18;
    do
    {
      v45[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v44[v14])), a4, *&v44[v14], 1), a5, v44[v14], 2), a6, v44[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    a3 = v45[0];
    a4 = v45[1];
    a5 = v45[2];
    a6 = v45[3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_alloc(MEMORY[0x1E6974BE8]);
    v24 = objc_msgSend_initWithMatrix_(v21, v22, v23, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0]);
    objc_msgSend_setTransform_(a1, v25, v24);

    return objc_msgSend_addObject_(a2, v26, a1);
  }

  else
  {
    result = objc_msgSend_children(a1, v19, v20);
    if (result)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = objc_msgSend_children(a1, v28, v29);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v40, v46, 16);
      if (result)
      {
        v32 = result;
        v33 = *v41;
        do
        {
          v34 = 0;
          do
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(v30);
            }

            sub_1AF2ED16C(*(*(&v40 + 1) + 8 * v34), a2, a3, a4, a5, a6);
            v34 = v34 + 1;
          }

          while (v32 != v34);
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v35, &v40, v46, 16);
          v32 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

char *sub_1AF2ED370(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = *(MEMORY[0x1E69E9B18] + 16);
  v14 = *MEMORY[0x1E69E9B18];
  v11 = *(MEMORY[0x1E69E9B18] + 48);
  v12 = *(MEMORY[0x1E69E9B18] + 32);
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v15, v19, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(a1);
        }

        sub_1AF2ED16C(*(*(&v15 + 1) + 8 * v8++), v2, v14, v13, v12, v11, v5);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v9, &v15, v19, 16);
    }

    while (v6);
  }

  return v2;
}

void *sub_1AF2ED48C(void *a1, char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a7))
  {
    v11 = objc_msgSend_transform(a1, v9, v10);
    objc_msgSend_matrix(v11, v12, v13);
    v14 = 0;
    v44[0] = v15;
    v44[1] = v16;
    v44[2] = v17;
    v44[3] = v18;
    do
    {
      v45[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v44[v14])), a4, *&v44[v14], 1), a5, v44[v14], 2), a6, v44[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    a3 = v45[0];
    a4 = v45[1];
    a5 = v45[2];
    a6 = v45[3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_alloc(MEMORY[0x1E6974BE8]);
    v24 = objc_msgSend_initWithMatrix_(v21, v22, v23, a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0]);
    objc_msgSend_setTransform_(a1, v25, v24);

    return objc_msgSend_addObject_(a2, v26, a1);
  }

  else
  {
    result = objc_msgSend_children(a1, v19, v20);
    if (result)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = objc_msgSend_children(a1, v28, v29);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v40, v46, 16);
      if (result)
      {
        v32 = result;
        v33 = *v41;
        do
        {
          v34 = 0;
          do
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(v30);
            }

            sub_1AF2ED48C(*(*(&v40 + 1) + 8 * v34), a2, a3, a4, a5, a6);
            v34 = v34 + 1;
          }

          while (v32 != v34);
          result = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v35, &v40, v46, 16);
          v32 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

char *sub_1AF2ED690(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = *(MEMORY[0x1E69E9B18] + 16);
  v14 = *MEMORY[0x1E69E9B18];
  v11 = *(MEMORY[0x1E69E9B18] + 48);
  v12 = *(MEMORY[0x1E69E9B18] + 32);
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v15, v19, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(a1);
        }

        sub_1AF2ED48C(*(*(&v15 + 1) + 8 * v8++), v2, v14, v13, v12, v11, v5);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v9, &v15, v19, 16);
    }

    while (v6);
  }

  return v2;
}

BOOL sub_1AF2ED7AC(void *a1, char *a2, void *a3)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"kSceneSourcePreserveOriginalTopology");
  if (v6)
  {
    v9 = objc_msgSend_BOOLValue(v6, v7, v8);
  }

  else
  {
    v9 = sub_1AF171634();
  }

  v11 = v9;
  if (objc_msgSend_instancesRespondToSelector_(MEMORY[0x1E6974B48], v10, sel_initThroughSCNKitBridgeWithURL_options_error_))
  {
    v53[0] = *MEMORY[0x1E6974AD0];
    v53[1] = @"kMDLAssetDefaultUSDColorSpace";
    v54[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v12, v11);
    v54[1] = sub_1AF164540(v54[0], v13);
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v54, v53, 2);
    v16 = objc_alloc(MEMORY[0x1E6974B48]);
    inited = objc_msgSend_initThroughSCNKitBridgeWithURL_options_error_(v16, v17, a2, v15, 0);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E6974B48]);
    inited = objc_msgSend_initThroughSCNKitBridgeWithURL_preserveTopology_error_(v20, v21, a2, v11, 0);
  }

  v22 = inited;
  v23 = objc_msgSend_valueForKey_(a3, v19, @"VFXWorldLoaderLoadTexturesInCPUMemory");
  if (objc_msgSend_BOOLValue(v23, v24, v25))
  {
    v28 = objc_msgSend_pathExtension(a2, v26, v27);
    v31 = objc_msgSend_lowercaseString(v28, v29, v30);
    if (objc_msgSend_isEqualToString_(v31, v32, @"usdz"))
    {
      objc_msgSend_loadTextures(v22, v26, v27);
    }
  }

  v33 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v26, v27);
  v36 = objc_msgSend_threadDictionary(v33, v34, v35);
  v39 = objc_msgSend_resolver(v22, v37, v38);
  objc_msgSend_setValue_forKey_(v36, v40, v39, @"VFX_MDLCurrentAssetResolver");
  if (v22)
  {
    v43 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v41, v42);
    objc_msgSend_loadMDLAsset_options_context_(a1, v44, v22, a3, v43);
    v47 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v45, v46);
    v50 = objc_msgSend_threadDictionary(v47, v48, v49);
    objc_msgSend_setValue_forKey_(v50, v51, 0, @"VFX_MDLCurrentAssetResolver");
  }

  return v22 != 0;
}

id VFXNodesToMDLAsset(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E6974B48]);
  if (result)
  {
    v4 = result;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v3, &v12, v16, 16);
    if (v5)
    {
      v7 = v5;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a1);
          }

          v10 = objc_msgSend_objectWithVFXNode_(MEMORY[0x1E6974B98], v6, *(*(&v12 + 1) + 8 * v9));
          objc_msgSend_addObject_(v4, v11, v10);
          ++v9;
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v6, &v12, v16, 16);
      }

      while (v7);
    }

    return v4;
  }

  return result;
}

id sub_1AF2EDAB8(void *a1, char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_jointPaths(a1, a2, a3);
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(a2, v8, v12);
        if (!v13)
        {
          NSLog(&cfstr_WhileCreatingV.isa, v12);
          objc_msgSend_removeAllObjects(v5, v15, v16);
          return v5;
        }

        objc_msgSend_addObject_(v5, v14, v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, &v18, v22, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

id sub_1AF2EDBF8(void *a1)
{
  v2 = objc_opt_new();
  v5 = objc_msgSend_jointBindTransforms(a1, v3, v4);
  v8 = objc_msgSend_bytes(v5, v6, v7);
  v11 = objc_msgSend_jointBindTransforms(a1, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);
  objc_msgSend_meshBindTransform(a1, v15, v16);
  v31 = v18;
  v32 = v17;
  v29 = v20;
  v30 = v19;
  if (v14 >= 0x40)
  {
    v21 = 0;
    v22 = v14 >> 6;
    do
    {
      v39 = __invert_f4(*(v8 + (v21 << 6)));
      v25 = 0;
      v33[0] = v32;
      v33[1] = v31;
      v33[2] = v30;
      v33[3] = v29;
      do
      {
        *(&v34 + v25 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39.columns[0], COERCE_FLOAT(v33[v25])), v39.columns[1], *&v33[v25], 1), v39.columns[2], v33[v25], 2), v39.columns[3], v33[v25], 3);
        ++v25;
      }

      while (v25 != 4);
      v26 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v23, v24, *&v34, *&v35, *&v36, *&v37);
      objc_msgSend_addObject_(v2, v27, v26);
      ++v21;
    }

    while (v21 != v22);
  }

  return v2;
}

void *sub_1AF2EDD18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 == *a2)
  {
    return 0;
  }

  v6 = *v4;
  v7 = *(v3 - 8) - *v4;
  if (v7 < 2.22044605e-16)
  {
    return 0;
  }

  v12 = v5 >> 3;
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, v5 >> 3);
  v17 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v14, v12);
  v18 = 0;
  if (v12 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v12;
  }

  do
  {
    v20 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v15, v16, (*(*a2 + 8 * v18) - v6) / v7);
    LODWORD(v21) = *(*a3 + 4 * v18);
    v24 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v22, v23, v21);
    objc_msgSend_addObject_(v13, v25, v20);
    objc_msgSend_addObject_(v17, v26, v24);
    ++v18;
  }

  while (v19 != v18);
  v8 = objc_msgSend_animationWithKeyPath_(MEMORY[0x1E6979390], v15, a1);
  objc_msgSend_setValues_(v8, v27, v17);
  objc_msgSend_setKeyTimes_(v8, v28, v13);
  objc_msgSend_setDuration_(v8, v29, v30, v7);
  objc_msgSend_setBeginTime_(v8, v31, v32, v6);
  objc_msgSend_setAdditive_(v8, v33, 0);
  objc_msgSend_setRemovedOnCompletion_(v8, v34, 0);
  return v8;
}

VFXMorpher *sub_1AF2EDE80(void *a1)
{
  v96 = *MEMORY[0x1E69E9840];
  v94 = objc_opt_new();
  v2 = objc_opt_new();
  v5 = objc_msgSend_shapeSetTargetCounts(a1, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);
  v11 = objc_msgSend_targetShapes(a1, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);
  if (v14)
  {
    v17 = v14;
    for (i = 0; i != v17; ++i)
    {
      v19 = objc_msgSend_targetShapes(a1, v15, v16);
      v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, i);
      v23 = objc_msgSend_modelWithMDLMesh_(VFXModel, v22, v21);
      v26 = objc_msgSend_name(v21, v24, v25);
      objc_msgSend_setName_(v23, v27, v26);
      objc_msgSend_setEdgeCreasesSource_(v23, v28, 0);
      objc_msgSend_setEdgeCreasesElement_(v23, v29, 0);
      v32 = objc_msgSend_mesh(v23, v30, v31);
      objc_msgSend_addObject_(v2, v33, v32);
    }
  }

  if (v8)
  {
    v34 = objc_alloc(MEMORY[0x1E695DF70]);
    v38 = objc_msgSend_initWithCapacity_(v34, v35, 0);
    v39 = 0;
    for (j = 0; j != v8; ++j)
    {
      v41 = objc_msgSend_shapeSetTargetCounts(a1, v36, v37);
      v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, j);
      v46 = objc_msgSend_unsignedIntegerValue(v43, v44, v45);
      v47 = v46 - 1;
      if (v46 != 1)
      {
        v48 = v47 + v39;
        do
        {
          v49 = objc_msgSend_shapeSetTargetWeights(a1, v36, v37);
          v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, v39);
          objc_msgSend_addObject_(v38, v52, v51);
          v55 = objc_msgSend_floatValue(v51, v53, v54);
          if (v56 >= 1.0)
          {
            v57 = sub_1AF0D5194(v55, v36);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
            {
              objc_msgSend_floatValue(v51, v36, v37);
              *buf = 136315394;
              *&buf[4] = "influenceWeightNumber.floatValue < 1.f";
              *&buf[12] = 2048;
              *&buf[14] = v58;
              _os_log_fault_impl(&dword_1AF0CE000, v57, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Found in-between morph target with influence weight of %f", buf, 0x16u);
            }
          }

          ++v39;
          --v47;
        }

        while (v47);
        v39 = v48;
      }

      ++v39;
    }

    v59 = objc_msgSend_shapeSetTargetCounts(a1, v36, v37);
    objc_msgSend_setTargets_withInBetweenTargetCounts_inBetweenWeights_(v94, v60, v2, v59, v38);
  }

  else
  {
    objc_msgSend_setTargets_(v94, v15, v2);
  }

  v63 = objc_msgSend_weights(a1, v61, v62);
  v68 = objc_msgSend_elementCount(v63, v64, v65);
  memset(buf, 0, sizeof(buf));
  if (v68)
  {
    sub_1AF17C384(buf, v68);
  }

  v69 = objc_msgSend_keyTimes(v63, v66, v67);
  if (objc_msgSend_count(v69, v70, v71))
  {
    v74 = *buf;
    v75 = objc_msgSend_elementCount(v63, v72, v73);
    v78 = objc_msgSend_keyTimes(v63, v76, v77);
    v80 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, 0);
    objc_msgSend_doubleValue(v80, v81, v82);
    objc_msgSend_getFloatArray_maxCount_atTime_(v63, v83, v74, v75);
  }

  v86 = objc_opt_new();
  v88 = *buf;
  for (k = *&buf[8]; v88 != k; ++v88)
  {
    LODWORD(v87) = *v88;
    v90 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v84, v85, v87);
    objc_msgSend_addObject_(v86, v91, v90);
  }

  objc_msgSend_setWeights_(v94, v84, v86);

  v92 = v94;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v92;
}

void sub_1AF2EE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2EE224(void *a1, void *a2, void *a3)
{
  if (objc_msgSend_morpher(a2, a2, a3))
  {
    v6 = objc_msgSend_weights(a1, v4, v5);
    if (objc_msgSend_isAnimated(v6, v7, v8))
    {
      v11 = objc_msgSend_timeSampleCount(v6, v9, v10);
      v15 = objc_msgSend_elementCount(v6, v12, v13);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      if (v11)
      {
        sub_1AF19013C(&v46, v11);
      }

      objc_msgSend_getTimes_maxCount_(v6, v14, 0, 0);
      v43 = 0;
      v44 = 0;
      v45 = 0;
      if (v15)
      {
        objc_msgSend_getFloatArray_maxCount_(v6, v16, v43, 0);
      }

      __p = 0;
      v41 = 0;
      v42 = 0;
      if (v15)
      {
        v17 = 0;
        for (i = 0; i != v15; ++i)
        {
          v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"morpher.weights[%d]", i);
          v20 = sub_1AF2EDD18(v19, &v46, &__p);
          v22 = v20;
          if (v20)
          {
            objc_msgSend_duration(v20, v16, v21);
            if (v23 != 0.0)
            {
              v24 = objc_msgSend_valueForKey_(a3, v16, @"kSceneSourceAnimationLoadingMode");
              v28 = v24;
              if (v24)
              {
                isEqualToString = objc_msgSend_isEqualToString_(v24, v25, @"playRepeatedly");
                LODWORD(v32) = 2139095040;
                if (!isEqualToString)
                {
                  *&v32 = 0.0;
                }

                objc_msgSend_setRepeatCount_(v22, v30, v31, v32);
                v34 = objc_msgSend_isEqualToString_(v28, v33, @"playRepeatedly") ^ 1;
                objc_msgSend_setRemovedOnCompletion_(v22, v35, v34);
              }

              else
              {
                LODWORD(v27) = 2139095040;
                objc_msgSend_setRepeatCount_(v22, v25, v26, v27);
                objc_msgSend_setRemovedOnCompletion_(v22, v37, 0);
              }

              objc_msgSend_addAnimation_forKey_(a2, v36, v22, 0);
            }
          }

          v17 += 4;
        }
      }

      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }
    }
  }
}

void sub_1AF2EE4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2EF1F8(void *a1, char *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *&v164 = a5;
  *(&v164 + 1) = a4;
  v5 = a3;
  v200 = *MEMORY[0x1E69E9840];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v159 = a1;
  v7 = objc_msgSend_children(a1, a2, a3);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v181, v197, 16);
  if (v10)
  {
    v11 = *v182;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v182 != v11)
        {
          objc_enumerationMutation(v7);
        }

        sub_1AF2EF1F8(*(*(&v181 + 1) + 8 * i), a2, v5, *(&v164 + 1), v164);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v181, v197, 16);
    }

    while (v10);
  }

  v15 = objc_msgSend_componentConformingToProtocol_(v159, v9, &unk_1F261ED28);
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = sub_1AF2F8430(v159, v14);
  v180 = v19;
  if (v19)
  {
    v20 = objc_opt_new();
    __p = 0;
    v178 = 0;
    v179 = 0;
    sub_1AF2F84A0(v159, MEMORY[0x1E69E9B18], v20, &__p);
    if (objc_msgSend_count(v20, v21, v22))
    {
      v160 = sub_1AF2F872C(v164, &v180)[1];
      v23 = MEMORY[0x1E695DF70];
      v26 = objc_msgSend_jointPaths(v19, v24, v25);
      v29 = objc_msgSend_count(v26, v27, v28);
      v162 = objc_msgSend_arrayWithCapacity_(v23, v30, v29);
      v33 = objc_msgSend_skeleton(v16, v31, v32);
      v193 = v33;
      v34 = sub_1AF2F872C(v164, &v193);
      if (objc_msgSend_jointPaths(v16, v35, v36))
      {
        v39 = objc_msgSend_jointPaths(v16, v37, v38);
      }

      else
      {
        v39 = objc_msgSend_jointPaths(v33, v37, v38);
      }

      v41 = v39;
      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v189, v199, 16);
      obj = v20;
      v157 = v16;
      v153 = v5;
      v44 = 0;
      if (v43)
      {
        v45 = *v190;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v190 != v45)
            {
              objc_enumerationMutation(v41);
            }

            v47 = *(*(&v189 + 1) + 8 * j);
            v49 = objc_msgSend_objectForKeyedSubscript_(*v34, v42, v47);
            if (v49)
            {
              objc_msgSend_addObject_(v162, v48, v49);
            }

            else
            {
              if (!v44)
              {
                v50 = objc_alloc(MEMORY[0x1E695DF70]);
                v53 = objc_msgSend_count(v41, v51, v52);
                v44 = objc_msgSend_initWithCapacity_(v50, v54, v53);
              }

              objc_msgSend_addObject_(v44, v48, v47);
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v189, v199, 16);
        }

        while (v43);
        if (v44)
        {
          v5 = v153;
          v20 = obj;
          v16 = v157;
          if (objc_msgSend_count(v44, v42, v55))
          {
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v56, &v185, v198, 16);
            if (v57)
            {
              v58 = *v186;
              do
              {
                for (k = 0; k != v57; ++k)
                {
                  if (*v186 != v58)
                  {
                    objc_enumerationMutation(v44);
                  }

                  NSLog(&cfstr_BadJointPathDe.isa, *(*(&v185 + 1) + 8 * k));
                }

                v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v60, &v185, v198, 16);
              }

              while (v57);
            }
          }
        }

        else
        {
          v5 = v153;
          v20 = obj;
          v16 = v157;
        }
      }

      v68 = sub_1AF2F8814(v16, v61, v62, v63, v64, v65, v66, v67, v151, v152, v153, obj, v157, v159, v160, v162, v164, v165, v166, v167, v168, v169, v170, v171, v172, *(&v172 + 1), v173, *(&v173 + 1));
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v69, &v173, v196, 16);
      if (v72)
      {
        v73 = *v174;
        do
        {
          for (m = 0; m != v72; ++m)
          {
            if (*v174 != v73)
            {
              objc_enumerationMutation(obja);
            }

            v75 = *(*(&v173 + 1) + 8 * m);
            v76 = objc_msgSend_path(v75, v70, v71);
            v78 = objc_msgSend_objectForKeyedSubscript_(a2, v77, v76);
            v81 = objc_msgSend_model(v78, v79, v80);
            v84 = objc_msgSend_geometry(v81, v82, v83);
            v87 = sub_1AF2F3D64(v75, v85, v86);
            v90 = sub_1AF2F3E10(v75, v88, v89);
            v92 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v91, v84, v163, v68, v87, v90);
            v94 = objc_msgSend_componentConformingToProtocol_(v75, v93, &unk_1F261ED28);
            if (v75 != v159 && (v97 = v94) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              objc_msgSend_geometryBindTransform(v97, v95, v96);
              v98 = sub_1AF2F8A10(v199);
              objc_msgSend_setBaseGeometryBindTransform_(v92, v99, v100, v98);
            }

            else
            {
              if (v158)
              {
                objc_msgSend_geometryBindTransform(v158, v95, v96);
              }

              else
              {
                memset(v199, 0, sizeof(v199));
              }

              v102 = sub_1AF2F8A10(v199);
              objc_msgSend_setBaseGeometryBindTransform_(v92, v103, v104, v102);
            }

            objc_msgSend_setSkeleton_(v92, v101, v161);
            objc_msgSend_setSkinner_(v78, v105, v92);
          }

          v20 = obja;
          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v70, &v173, v196, 16);
        }

        while (v72);
        v5 = v154;
        v16 = v158;
      }
    }

    else
    {
      v161 = 0;
    }

    if (__p)
    {
      v178 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v161 = 0;
  }

  if (v16)
  {
    v106 = objc_msgSend_jointAnimation(v16, v17, v18);
    if (v106)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v161)
        {
          v109 = objc_msgSend_path(v159, v107, v108);
          v161 = objc_msgSend_objectForKeyedSubscript_(a2, v110, v109);
        }

        v111 = objc_msgSend_name(v106, v107, v108);
        v115 = objc_msgSend_objectForKeyedSubscript_(*(&v164 + 1), v112, v111);
        v116 = v115 != 0;
        if (v115)
        {
          v117 = objc_msgSend_name(v106, v113, v114);
          objc_msgSend_addAnimation_forKey_(v161, v118, v115, v117);
        }

        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v119 = objc_msgSend_animations(v5, v113, v114);
        v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v120, &v169, v195, 16);
        if (v122)
        {
          v123 = *v170;
          do
          {
            for (n = 0; n != v122; ++n)
            {
              if (*v170 != v123)
              {
                objc_enumerationMutation(v119);
              }

              v125 = *(*(&v169 + 1) + 8 * n);
              if (v125 != v106)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v127 = sub_1AF2F8A44(v106, v121, v126);
                  v130 = sub_1AF2F8A44(v125, v128, v129);
                  if (v127)
                  {
                    if (v130)
                    {
                      if (objc_msgSend_isEqualToString_(v127, v121, v130))
                      {
                        v132 = objc_msgSend_name(v125, v121, v131);
                        v135 = objc_msgSend_objectForKeyedSubscript_(*(&v164 + 1), v133, v132);
                        if (v135)
                        {
                          v136 = objc_msgSend_name(v125, v121, v134);
                          objc_msgSend_addAnimation_forKey_(v161, v137, v135, v136);
                          v116 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }

            v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v121, &v169, v195, 16);
          }

          while (v122);
        }

        v138 = v180;
        if (v180)
        {
          if (v116)
          {
            v139 = sub_1AF2F872C(v164, &v180);
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v142 = objc_msgSend_jointPaths(v138, v140, v141);
            v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v143, &v165, v194, 16);
            if (v145)
            {
              v146 = *v166;
              v147 = MEMORY[0x1E69E9B18];
              do
              {
                for (ii = 0; ii != v145; ++ii)
                {
                  if (*v166 != v146)
                  {
                    objc_enumerationMutation(v142);
                  }

                  v149 = objc_msgSend_objectForKeyedSubscript_(*v139, v144, *(*(&v165 + 1) + 8 * ii));
                  if (v149)
                  {
                    objc_msgSend_setTransform_(v149, v144, v150, *v147, v147[2], v147[4], v147[6]);
                  }
                }

                v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v142, v144, &v165, v194, 16);
              }

              while (v145);
            }
          }
        }
      }
    }
  }
}

void sub_1AF2EF9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2EFA74(uint64_t a1, const char *a2, void *a3)
{
  if (!a3 || !objc_msgSend_rootNode(a3, a2, a3))
  {
    return 0;
  }

  v7 = objc_msgSend_rootNode(a3, v5, v6);

  return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_, v7);
}

uint64_t sub_1AF2EFAD8(uint64_t a1, const char *a2, void *a3)
{
  if (!a3 || !objc_msgSend_rootNode(a3, a2, a3))
  {
    return 0;
  }

  v7 = objc_msgSend_rootNode(a3, v5, v6);

  return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_bufferAllocator_, v7);
}

uint64_t sub_1AF2EFB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66B58](a1, sel_assetWithVFXNode_bufferAllocator_, a3);
  }

  else
  {
    return 0;
  }
}

id sub_1AF2EFB64(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [a1 alloc];
  v8 = objc_msgSend_initWithBufferAllocator_(v6, v7, a4);
  v10 = objc_msgSend_objectWithVFXNode_bufferAllocator_(MEMORY[0x1E6974B98], v9, a3, a4);
  objc_msgSend_addObject_(v8, v11, v10);

  return v8;
}

id sub_1AF2EFBE8(objc_class *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a1);
  v7 = objc_opt_new();
  objc_msgSend_setTransform_(v6, v8, v7);

  objc_msgSend_transform(a3, v9, v10);
  v55 = v12;
  v56 = v11;
  v53 = v14;
  v54 = v13;
  v17 = objc_msgSend_transform(v6, v15, v16);
  objc_msgSend_setMatrix_(v17, v18, v19, v56, v55, v54, v53);
  v22 = objc_msgSend_name(a3, v20, v21);
  objc_msgSend_setName_(v6, v23, v22);
  objc_setAssociatedObject(v6, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"VFXMDLAssociatedObject", v6, 0);
  v26 = objc_msgSend_camera(a3, v24, v25);
  if (v26)
  {
    v29 = objc_msgSend_cameraWithVFXCamera_(MEMORY[0x1E6974B50], v27, v26);
    objc_msgSend_addChild_(v6, v30, v29);
  }

  v31 = objc_msgSend_light(a3, v27, v28);
  if (v31)
  {
    v34 = v31;
    if (objc_msgSend_type(v31, v32, v33) == 4)
    {
      v36 = objc_msgSend_lightProbeWithVFXLight_node_(MEMORY[0x1E6974B60], v35, v34, a3);
    }

    else
    {
      v36 = objc_msgSend_lightWithVFXLight_(MEMORY[0x1E6974B58], v35, v34);
    }

    objc_msgSend_addChild_(v6, v37, v36);
  }

  v38 = objc_msgSend_model(a3, v32, v33);
  if (v38)
  {
    v41 = objc_msgSend_meshWithVFXModel_bufferAllocator_(MEMORY[0x1E6974B78], v39, v38, a4);
    objc_msgSend_addChild_(v6, v42, v41);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v43 = objc_msgSend_childNodes(a3, v39, v40);
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v57, v61, 16);
  if (v45)
  {
    v47 = v45;
    v48 = *v58;
    do
    {
      v49 = 0;
      do
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(v43);
        }

        v50 = objc_msgSend_objectWithVFXNode_bufferAllocator_(MEMORY[0x1E6974B98], v46, *(*(&v57 + 1) + 8 * v49), a4);
        objc_msgSend_addChild_(v6, v51, v50);
        ++v49;
      }

      while (v47 != v49);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v57, v61, 16);
    }

    while (v47);
  }

  return v6;
}