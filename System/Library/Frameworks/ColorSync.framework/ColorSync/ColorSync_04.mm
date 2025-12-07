__CFDictionary *CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 100);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    do
    {
      *a2 = v5 * *a2;
      *(a2 + 4) = 0;
      *(a2 + 8) = 0;
      v7 += a4;
      a2 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxLabToGray,CMMConvMatrix>::Convert(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 64);
    do
    {
      v7 = (*a2 * v6 + 0x8000) >> 16;
      if (v7 >= 0x1000000)
      {
        v8 = 0x1000000;
      }

      else
      {
        v8 = (*a2 * v6 + 0x8000) >> 16;
      }

      if ((v7 & 0x80000000) == 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v9;
      v5 += a4;
      a2 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 100);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8 = *(result + 152);
    do
    {
      *a2 = v5 * *a2;
      *(a2 + 4) = v8;
      v7 += a4;
      a2 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToLab,CMMConvMatrix>::Convert(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 64);
    v7 = vand_s8(vcgez_s32(*(result + 140)), vmin_u32(*(result + 140), 0x100000001000000));
    do
    {
      v8 = (v6 * *a2 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = (v6 * *a2 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      *a2 = v10;
      *(a2 + 1) = v7;
      v5 += a4;
      a2 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float *CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = result[26];
  v7 = result[28];
  v6 = result[29];
  v9 = result[32];
  v8 = result[33];
  v10 = result[40];
  v11 = v10 == 1.0;
  v12 = v5 * v10;
  v13 = v7 * v10;
  v14 = v6 * v10;
  v15 = v9 * v10;
  v16 = v8 * v10;
  if (!v11)
  {
    v8 = v16;
    v9 = v15;
    v6 = v14;
    v7 = v13;
    v5 = v12;
  }

  if (a5 * a4)
  {
    v17 = 0;
    v18 = result[37];
    v19 = result[38];
    v20 = result[39];
    do
    {
      v21 = (a2 + 4 * v17);
      v22 = v21[1];
      v23 = v18 + (v22 * v5);
      v24 = v19 + ((v6 * v22) + (*v21 * v7));
      v25 = v20 + ((v8 * v21[2]) + (v22 * v9));
      *v21 = v23;
      v21[1] = v24;
      v21[2] = v25;
      v17 += a4;
    }

    while (v17 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxXYZToLab,CMMConvMatrix>::Convert(uint64_t result, int8x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v7 = *(result + 92);
    v6 = *(result + 96);
    v9 = *(result + 76);
    v8 = *(result + 80);
    v10 = *(result + 68);
    v11 = *(result + 140) + 24;
    v12 = *(result + 144) + 24;
    v13 = a2 + 1;
    result = 1;
    do
    {
      v14 = v13[-1].i32[1];
      v15 = (v10 * v14 + 0x8000) >> 16;
      v16 = (v8 * v14 + v9 * v13[-1].i32[0] + 0x8000) >> 16;
      v17 = v16 - 24;
      if (v16 <= 24)
      {
        v17 = 0;
      }

      if (v16 >= -24)
      {
        LODWORD(v16) = -24;
      }

      v18 = v11 + v16 + v17;
      v19 = (v6 * v13->i32[0] + v7 * v14 + 0x8000) >> 16;
      v20 = v19 - 24;
      if (v19 <= 24)
      {
        v20 = 0;
      }

      if (v19 >= -24)
      {
        LODWORD(v19) = -24;
      }

      v21 = v12 + v19 + v20;
      v13[-1] = vand_s8(vcgez_s32(__PAIR64__(v18, v15)), vmin_u32(__PAIR64__(v18, v15), 0x100000001000000));
      if (v21 >= 0x1000000)
      {
        v22 = 0x1000000;
      }

      else
      {
        v22 = v21;
      }

      if (v21 < 0)
      {
        v22 = 0;
      }

      v13->i32[0] = v22;
      result += a4;
      v13 = (v13 + 4 * a4);
    }

    while (result - 1 < v5);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = result[25];
  v5 = result[26];
  v7 = result[28];
  v8 = result[31];
  v9 = result[33];
  v10 = result[40];
  v11 = v10 == 1.0;
  v12 = v6 * v10;
  v13 = v5 * v10;
  v14 = v7 * v10;
  v15 = v8 * v10;
  v16 = v9 * v10;
  if (!v11)
  {
    v9 = v16;
    v8 = v15;
    v7 = v14;
    v5 = v13;
    v6 = v12;
  }

  if (a5 * a4)
  {
    v17 = 0;
    v18 = result[37];
    v19 = result[38];
    v20 = result[39];
    do
    {
      v21 = (a2 + 4 * v17);
      v22 = v19 + (*v21 * v7);
      v23 = v20 + ((v9 * v21[2]) + (*v21 * v8));
      *v21 = v18 + ((v5 * v21[1]) + (*v21 * v6));
      v21[1] = v22;
      v21[2] = v23;
      v17 += a4;
    }

    while (v17 < a5 * a4);
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxLabToXYZ,CMMConvMatrix>::Convert(int *result, int8x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = a5 * a4;
  if (a5 * a4)
  {
    v6 = result[34];
    v7 = result[36];
    v8 = result[24];
    v9 = result[22];
    v10 = result[19];
    v11 = a2 + 1;
    v12 = 1;
    v14 = result + 16;
    result = result[16];
    v13 = v14[1];
    do
    {
      v15 = v11[-1].i32[0];
      v16 = v6 + ((v13 * v11[-1].i32[1] + result * v15 + 0x8000) >> 16);
      v17 = (v10 * v15 + 0x8000) >> 16;
      v18 = v7 + ((v8 * v11->i32[0] + v9 * v15 + 0x8000) >> 16);
      v11[-1] = vand_s8(vcgez_s32(__PAIR64__(v17, v16)), vmin_u32(__PAIR64__(v17, v16), 0x100000001000000));
      if (v18 >= 0x1000000)
      {
        v19 = 0x1000000;
      }

      else
      {
        v19 = v18;
      }

      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v11->i32[0] = v20;
      v12 += a4;
      v11 = (v11 + 4 * a4);
    }

    while (v12 - 1 < v5);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float *CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = result[25];
  v5 = result[26];
  v7 = result[27];
  v8 = result[40];
  if (v8 != 1.0)
  {
    v7 = v7 * v8;
    v5 = v5 * v8;
    v6 = v6 * v8;
  }

  if (a5 * a4)
  {
    v9 = 0;
    v10 = (a2 + 4);
    do
    {
      *(v10 - 1) = ((v5 * *v10) + (*(v10 - 1) * v6)) + (*(a2 + 8 + 4 * v9) * v7);
      *v10 = 0;
      v9 += a4;
      v10 += a4;
    }

    while (v9 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxRow,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v7 = *(result + 68);
    v6 = *(result + 72);
    v8 = (a2 + 4);
    v9 = *(result + 64);
    do
    {
      v10 = (v7 * *v8 + v9 * *(v8 - 1) + v6 * *(a2 + 8 + 4 * v5) + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v10;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v11 = result;
      }

      else
      {
        v11 = 0;
      }

      *v8 = 0;
      *(v8 - 1) = v11;
      v5 += a4;
      v8 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxXYZToGray,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(result + 104);
  v6 = *(result + 160);
  if (v6 != 1.0)
  {
    v5 = v5 * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8 = 4;
    do
    {
      *(a2 + 4 * v7) = v5 * *(a2 + v8);
      *(a2 + v8) = 0;
      v7 += a4;
      v8 += 4 * a4;
    }

    while (v7 < a5 * a4);
  }

  return result;
}

{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 68);
    v7 = 4;
    do
    {
      v8 = (*(a2 + v7) * v6 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v9 = 0x1000000;
      }

      else
      {
        v9 = (*(a2 + v7) * v6 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      *(a2 + 4 * v5) = v10;
      *(a2 + v7) = 0;
      v5 += a4;
      v7 += 4 * a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::Convert(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  result = *(a1 + 132);
  v6 = *(a1 + 160);
  if (v6 != 1.0)
  {
    result = result * v6;
  }

  if (a5 * a4)
  {
    v7 = 0;
    v8.i32[0] = *(a1 + 100);
    v9 = *(a1 + 148);
    v10 = *(a1 + 156);
    v8.i32[1] = *(a1 + 116);
    v11 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v6 != 1.0), 0x1FuLL)), vmul_n_f32(v8, v6), v8);
    v12 = a2 + 1;
    do
    {
      v13 = v10 + (v12->f32[v7] * result);
      *a2 = vmla_f32(v9, v11, *a2);
      v12->f32[v7] = v13;
      v7 += a4;
      a2 = (a2 + 4 * a4);
    }

    while (v7 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxDiag,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 96);
    v7 = *(result + 80);
    v8 = *(result + 64);
    do
    {
      v9 = (a2 + 4 * v5);
      v10 = (v8 * *v9 + 0x8000) >> 16;
      v11 = (v7 * v9[1] + 0x8000) >> 16;
      v12 = (v6 * v9[2] + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = (v8 * *v9 + 0x8000) >> 16;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v11 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v11;
      }

      if ((v11 & 0x80000000) == 0)
      {
        v15 = result;
      }

      else
      {
        v15 = 0;
      }

      *v9 = v14;
      v9[1] = v15;
      if (v12 >= 0x1000000)
      {
        v16 = 0x1000000;
      }

      else
      {
        v16 = v12;
      }

      if ((v12 & 0x80000000) != 0)
      {
        v16 = 0;
      }

      v9[2] = v16;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

__CFDictionary *CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::FlattenConversion(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v4 = MEMORY[0x1E695E4D0];
    if (v3)
    {
      v5 = v3;
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(a1 + 49))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelActiveMatrix", v8);
      if (*(a1 + 48))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.OneChannelInputMatrix", v9);
      v10 = 0;
      v11 = a1 + 100;
      v12 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v13 = CFArrayCreateMutable(0, 0, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = 0;
        while (1)
        {
          valuePtr = *(a1 + 160) * *(v11 + v15);
          v16 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          CFArrayAppendValue(v14, v16);
          CFRelease(v17);
          v15 += 4;
          if (v15 == 12)
          {
            goto LABEL_16;
          }
        }

        CFRelease(v14);
        v14 = 0;
LABEL_16:
        v22 = *(a1 + 160) * *(a1 + 148 + 4 * v10);
        v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v22);
        if (!v18)
        {
          CFRelease(v14);
          break;
        }

        v19 = v18;
        CFArrayAppendValue(v14, v18);
        CFRelease(v19);
        if (!v14)
        {
          break;
        }

        CFArrayAppendValue(v5, v14);
        CFRelease(v14);
        ++v10;
        v11 += 12;
        if (v10 == 3)
        {
          CFDictionaryAddValue(Mutable, kColorSyncConversionMatrix, v5);
          goto LABEL_23;
        }
      }

      CFRelease(v5);
      v5 = Mutable;
      Mutable = 0;
LABEL_23:
      v4 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = Mutable;
      Mutable = 0;
    }

    CFRelease(v5);
    CMMConvNode::AddFixedPointClippingRange(Mutable, v20, *(a1 + 40), *(a1 + 44));
    if (*(a1 + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v4);
    }

    CMMConvNode::AddClampingInfo(a1, Mutable);
  }

  return Mutable;
}

void CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

float *CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::Convert(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = result[25];
  v6 = result[28];
  v7 = result[31];
  v8 = result[40];
  if (v8 != 1.0)
  {
    v7 = v7 * v8;
    v6 = v6 * v8;
    v5 = v5 * v8;
  }

  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      v11 = v6 * *v10;
      v12 = v7 * *v10;
      *v10 = v5 * *v10;
      v10[1] = v11;
      v10[2] = v12;
      v9 += a4;
    }

    while (v9 < a5 * a4);
  }

  return result;
}

uint64_t CMMConvMatrixTemplate<CMMMtxGrayToXYZ,CMMConvMatrix>::Convert(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a5 * a4)
  {
    v5 = 0;
    v6 = *(result + 88);
    v7 = *(result + 76);
    v8 = *(result + 64);
    do
    {
      v9 = (a2 + 4 * v5);
      v10 = (v8 * *v9 + 0x8000) >> 16;
      v11 = (v7 * *v9 + 0x8000) >> 16;
      v12 = (v6 * *v9 + 0x8000) >> 16;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = (v8 * *v9 + 0x8000) >> 16;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v11 >= 0x1000000)
      {
        result = 0x1000000;
      }

      else
      {
        result = v11;
      }

      if ((v11 & 0x80000000) == 0)
      {
        v15 = result;
      }

      else
      {
        v15 = 0;
      }

      *v9 = v14;
      v9[1] = v15;
      if (v12 >= 0x1000000)
      {
        v16 = 0x1000000;
      }

      else
      {
        v16 = v12;
      }

      if ((v12 & 0x80000000) == 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v9[2] = v17;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

uint64_t CMMMtxOnly::ConvertFloat(uint64_t result, uint64_t a2, uint64_t a3, float a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  if (a3 * a2)
  {
    a8.i32[0] = 1.0;
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a7, a8)), 0);
    v9 = vbslq_s8(v8, vmulq_n_f32(a5, a7.f32[0]), a5);
    v10 = vbslq_s8(v8, vmulq_n_f32(a6, a7.f32[0]), a6);
    if (a7.f32[0] == 1.0)
    {
      v11 = a4;
    }

    else
    {
      v11 = a4 * a7.f32[0];
    }

    v12 = *&v10.i32[1];
    v13 = vext_s8(*v9.i8, *v10.i8, 4uLL);
    *v10.i8 = vdup_laneq_s32(v9, 2);
    *v10.i32 = v11;
    v9.i32[1] = vextq_s8(*&v9, *&v9, 8uLL).i32[1];
    v14 = (result + 8);
    v15 = 1;
    do
    {
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = ((*&v10.i32[2] * v17) + (v16 * v12)) + (*v14 * *&v10.i32[3]);
      *(v14 - 1) = vmla_n_f32(vmla_n_f32(vmul_n_f32(*v9.i8, v17), *v10.i8, v16), v13, *v14);
      *v14 = v18;
      v15 += a2;
      v14 += a2;
    }

    while (v15 - 1 < (a3 * a2));
  }

  return result;
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

int *CMMMtxOnly::ConvertMax(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = v5[2];
      v8 = (result[1] * v6 + *result * *v5 + result[2] * v7 + 0x8000) >> 16;
      v9 = (result[4] * v6 + result[3] * *v5 + result[5] * v7 + 0x8000) >> 16;
      v10 = (result[7] * v6 + result[6] * *v5 + result[8] * v7 + 0x8000) >> 16;
      if (v8 >= 0x1000000)
      {
        v11 = 0x1000000;
      }

      else
      {
        v11 = (result[1] * v6 + *result * *v5 + result[2] * v7 + 0x8000) >> 16;
      }

      if ((v8 & 0x80000000) != 0)
      {
        v11 = 0;
      }

      if (v9 >= 0x1000000)
      {
        v12 = 0x1000000;
      }

      else
      {
        v12 = v9;
      }

      if ((v9 & 0x80000000) != 0)
      {
        v12 = 0;
      }

      *v5 = v11;
      v5[1] = v12;
      if (v10 >= 0x1000000)
      {
        v13 = 0x1000000;
      }

      else
      {
        v13 = v10;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v5[2] = v14;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToGrayMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

uint64_t CMMMatrix::CMMMatrix(uint64_t result, _DWORD *a2, float a3)
{
  v3 = 0;
  *result = &unk_1F0E071F8;
  *(result + 80) = a2[3] << 8;
  *(result + 84) = a2[7] << 8;
  *(result + 88) = a2[11] << 8;
  *(result + 92) = a2[15];
  *(result + 96) = a2[19];
  *(result + 100) = a2[23];
  *(result + 104) = a3;
  v4 = result;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = v4 + i * 4;
      *(v6 + 8) = a2[i];
      *(v6 + 44) = a2[i + 12];
    }

    ++v3;
    v4 += 12;
    a2 += 4;
  }

  while (v3 != 3);
  return result;
}

void CMMConvRGBToRGBMatrix::CMMConvRGBToRGBMatrix(CMMConvRGBToRGBMatrix *this, const CMMMatrix *a2, CMMConvNode *a3, float a4, float a5)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a3;
  if (a3)
  {
    *(a3 + 2) = this;
  }

  *(this + 5) = 0x3F80000000000000;
  *(this + 33) = 0;
  *this = &unk_1F0E072B8;
  *(this + 7) = &unk_1F0E071F8;
  v5 = *(a2 + 8);
  v6 = *(a2 + 40);
  *(this + 5) = *(a2 + 24);
  *(this + 6) = v6;
  *(this + 4) = v5;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  *(this + 40) = *(a2 + 26);
  *(this + 8) = v8;
  *(this + 9) = v9;
  *(this + 7) = v7;
  *(this + 24) = 0;
  *(this + 16) = 256;
  *(this + 35) = 0;
  *this = &unk_1F0E0A6B8;
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvGrayToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

uint64_t CMMConvGrayToRGB::GetCLUTPoints(CMMConvGrayToRGB *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void CMMConvGrayToRGB::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvGrayToRGB::ClampInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 4 * v4);
      if (v5 <= 1.0)
      {
        v6 = *(a2 + 4 * v4);
      }

      else
      {
        v6 = 1.0;
      }

      if (v5 >= 0.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0.0;
      }

      *(a2 + 4 * v4) = v7;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }
}

float CMMConvGrayToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    do
    {
      v6 = a2 + 4 * v5;
      result = *v6;
      *(v6 + 4) = *v6;
      *(v6 + 8) = result;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }

  return result;
}

void CMMConvGrayToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 * a4)
  {
    v5 = 0;
    do
    {
      v6 = (a2 + 4 * v5);
      v7 = *v6;
      v6[1] = *v6;
      v6[2] = v7;
      v5 += a4;
    }

    while (v5 < a5 * a4);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v11 = *(a1 + 100);
  a9.i32[0] = *(a1 + 160);
  v12 = *(a1 + 120);
  v13 = *(a1 + 104);

  return CMMMtxOnly::ConvertFloat(a2, a4, a5, v11, v13, v12, a9, a10);
}

int *CMMConvMatrixTemplate<CMMMtxOnly,CMMConvRGBToRGBMatrix>::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v5 = *(a1 + 112);
  v9[2] = *(a1 + 96);
  v9[3] = v5;
  v10 = *(a1 + 128);
  v6 = *(a1 + 80);
  v9[0] = *(a1 + 64);
  v9[1] = v6;
  return CMMMtxOnly::ConvertMax(v9, a2, a4, a5);
}

__CFArray *CMMConvRGBToRGB::FlattenConversion(CMMConvRGBToRGB *this, const __CFDictionary *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    for (i = *(this + 6); i; i = i[2])
    {
      if (((*(*i + 224))(i) & 1) == 0)
      {
        v6 = (*(*i + 208))(i, a2);
        if (!v6)
        {
          CFArrayRemoveAllValues(Mutable);
          return Mutable;
        }

        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }
    }
  }

  return Mutable;
}

uint64_t CMMConvRGBToRGB::GetTransformType(CMMConvRGBToRGB *this, const __CFDictionary *a2)
{
  LODWORD(v3) = 0;
  v4 = (this + 48);
  v5 = -7;
  do
  {
    v6 = *v4;
    v7 = **v4;
    v4 = (*v4 + 2);
    v3 = (*(v7 + 200))(v6, a2) | v3;
  }

  while (!__CFADD__(v5++, 1));
  return v3;
}

uint64_t CMMConvRGBToRGB::GetCLUTPoints(CMMConvRGBToRGB *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void CMMConvRGBToRGB::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvRGBToRGB::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvRGBToRGB::Convert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + 48);
  v10 = -7;
  do
  {
    v11 = *v9;
    if ((*(**v9 + 40))(*v9))
    {
      (*(*v11 + 136))(v11, a2, a4, a5);
    }

    (*(*v11 + 112))(v11, a2, a3, a4, a5);
    result = (*(*v11 + 64))(v11);
    if (result)
    {
      result = (*(*v11 + 160))(v11, a2, a4, a5);
    }

    v9 = v11 + 2;
  }

  while (!__CFADD__(v10++, 1));
  return result;
}

{
  v9 = (a1 + 48);
  v10 = -7;
  do
  {
    v11 = *v9;
    v12 = **v9;
    v9 = (*v9 + 2);
    result = (*(v12 + 104))(v11, a2, a3, a4, a5);
  }

  while (!__CFADD__(v10++, 1));
  return result;
}

void CMMConvRGBToRGB::Convert(float32x4_t *a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v5) = a5;
  v6 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (*a3 == 1 && a1[115].i8[1] == 1)
  {
    if (a4 == 2)
    {
      if (a5 >= 1)
      {
        v7 = a1 + 42;
        v8 = a2 + 2;
        v9 = a2 + 1;
        v10 = a1[8].i64[0];
        v62 = a1[107];
        v63 = a1[106];
        v60 = a1[109];
        v61 = a1[108];
        v58 = a1[111];
        v59 = a1[110];
        v56 = a1[113];
        v57 = a1[112];
        v55 = a1[114];
        do
        {
          v11 = v64;
          bzero(v64, 0x600uLL);
          v12 = 0;
          if (v5 >= 0x40)
          {
            v13 = 64;
          }

          else
          {
            v13 = v5;
          }

          v14 = v8;
          v15 = v9;
          v16 = v6;
          do
          {
            v17.i32[0] = v7->i32[*v16];
            v18.i32[0] = v7->i32[*v15];
            v17.i32[1] = v7->i32[v16[8]];
            v18.i32[1] = v7->i32[v15[8]];
            v17.i32[2] = v7->i32[v16[16]];
            v18.i32[2] = v7->i32[v15[16]];
            v17.i32[3] = v7->i32[v16[24]];
            v18.i32[3] = v7->i32[v15[24]];
            v19.i32[0] = v7->i32[*v14];
            v19.i32[1] = v7->i32[v14[8]];
            v19.i32[2] = v7->i32[v14[16]];
            v19.i32[3] = v7->i32[v14[24]];
            *v11 = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v63, v17), v62, v18), v61, v19)), 0), 0x1000100010001000);
            v11[1] = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v60, v17), v59, v18), v58, v19)), 0), 0x1000100010001000);
            v11[2] = vmin_u16(vraddhn_s32(vcvtq_u32_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v57, v17), v56, v18), v55, v19)), 0), 0x1000100010001000);
            v11 += 3;
            v16 += 32;
            v15 += 32;
            v14 += 32;
            v12 += 4;
          }

          while (v12 < v13);
          v20 = 0;
          v21 = v64;
          do
          {
            *v6 = *(v10 + *v21);
            *v9 = *(v10 + v21[4]);
            *v8 = *(v10 + v21[8]);
            v6[8] = *(v10 + v21[1]);
            v9[8] = *(v10 + v21[5]);
            v8[8] = *(v10 + v21[9]);
            v6[16] = *(v10 + v21[2]);
            v9[16] = *(v10 + v21[6]);
            v8[16] = *(v10 + v21[10]);
            v6[24] = *(v10 + v21[3]);
            v9[24] = *(v10 + v21[7]);
            v8[24] = *(v10 + v21[11]);
            v6 += 32;
            v9 += 32;
            v8 += 32;
            v21 += 12;
            v20 += 4;
          }

          while (v20 < v13);
          v22 = __OFSUB__(v5 & 0x7FFFFFFF, v13);
          v5 = (v5 & 0x7FFFFFFF) - v13;
        }

        while (!((v5 < 0) ^ v22 | (v5 == 0)));
      }

      return;
    }

LABEL_37:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  if (a4 != 2)
  {
    goto LABEL_37;
  }

  v23 = 2 * a5;
  if (2 * a5)
  {
    v24 = 0;
    v25 = a1[4].i64[1];
    v26 = v25[16];
    v27 = v25[17];
    v28 = v25[18];
    v29 = v25[19];
    v30 = v25[20];
    v31 = v25[21];
    v32 = v25[22];
    v33 = v25[23];
    v34 = v25[24];
    v35 = a1[6].i64[1];
    v36 = a1[7].i64[0];
    v37 = a1[7].i64[1];
    v38 = a1[8].i64[0];
    v40 = a1[8].i64[1];
    v39 = a1[9].i64[0];
    do
    {
      v41 = *&v6[4 * v24];
      v42 = *(v35 + 4 * v41);
      v43 = *(v36 + 4 * BYTE1(v41));
      v44 = *(v37 + 4 * BYTE2(v41));
      v45 = (v27 * v43 + v26 * v42 + v28 * v44 + 0x8000) >> 16;
      v46 = (v30 * v43 + v29 * v42 + v31 * v44 + 0x8000) >> 16;
      v47 = (v33 * v43 + v32 * v42 + v34 * v44 + 0x8000) >> 16;
      if (v45 >= 0x1000)
      {
        v48 = 4096;
      }

      else
      {
        v48 = v45;
      }

      if (v45 < 0)
      {
        v48 = 0;
      }

      v49 = *(v38 + v48);
      if (v46 >= 0x1000)
      {
        v50 = 4096;
      }

      else
      {
        v50 = v46;
      }

      if (v46 < 0)
      {
        v50 = 0;
      }

      v51 = *(v40 + v50);
      if (v47 >= 0x1000)
      {
        v52 = 4096;
      }

      else
      {
        v52 = v47;
      }

      if (v47 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      *&v6[4 * v24] = v49 | (v51 << 8) | (*(v39 + v53) << 16);
      v24 += 2;
    }

    while (v24 < v23);
  }
}

uint64_t CMMConvRGBToRGB::RuntimeAdjust(uint64_t result, uint64_t a2)
{
  if (*(a2 + 408) == 1)
  {
    v2 = *(result + 1841);
    *(a2 + 408) = v2;
    if (v2 == 1 && (*(result + 1840) & 1) == 0)
    {
      v3 = 0;
      v4 = *(result + 104);
      do
      {
        *(result + 672 + v3) = vcvtq_f32_s32(*(v4 + v3));
        v3 += 16;
      }

      while (v3 != 1024);
      *(result + 1840) = 1;
    }
  }

  else
  {
    *(a2 + 408) = 0;
  }

  return result;
}

void CMMConvRGBToRGB::~CMMConvRGBToRGB(CMMConvRGBToRGB *this)
{
  CMMConvRGBToRGB::~CMMConvRGBToRGB(this);

  CMMBase::operator delete(v1);
}

{
  v2 = 0;
  *this = &unk_1F0E07638;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 48);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(v3 + 6) = 0;
    }

    v5 = *(v3 + 10);
    if (v5)
    {
      (*(*v5 + 8))(v5);
      *(v3 + 10) = 0;
    }

    v2 += 8;
  }

  while (v2 != 24);
}

__CFDictionary *CMMConvHLGOOTF::FlattenConversion(CMMConvHLGOOTF *this, const __CFDictionary *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      HIDWORD(v55) = 0;
      v12 = CFGetTypeID(a2);
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        HIDWORD(v55) = NxMTransformFormatFromValue(Value);
      }

      v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v55 + 4);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v14);
        CFRelease(v15);
      }

      v16 = HIDWORD(v55);
      LODWORD(v55) = 0;
      v17 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLutGridPoints");
      *bytes = 0;
      if (v17 && CFNumberGetValue(v17, kCFNumberSInt32Type, bytes) == 1)
      {
        v18 = *bytes;
        LODWORD(v55) = *bytes;
      }

      else
      {
        v18 = v55;
      }

      if (!v18)
      {
        v19 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberSInt32Type, &v55);
        }
      }

      v20 = v55;
      if (!v55)
      {
        v20 = 32;
        LODWORD(v55) = 32;
      }

      v21 = calculate_clut_capacity(v20, 3, 3, 4);
      v22 = CFDataCreateMutable(0, v21);
      if (v22)
      {
        v23 = v22;
        v49 = v16;
        v50 = Mutable;
        CFDataSetLength(v22, v21);
        cf = v23;
        MutableBytePtr = CFDataGetMutableBytePtr(v23);
        if (v21 >> 62)
        {
          v24 = -1;
        }

        else
        {
          v24 = 4 * v21;
        }

        v51 = operator new[](v24, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v51, v55, (v55 * v55 * v55)))
        {
          v25 = v55;
          if (v55)
          {
            v26 = 0;
            v27 = MutableBytePtr + 4;
            v28 = 12 * v55;
            v52 = v28 * v55;
            v29 = v51 + 2;
            do
            {
              v53 = v27;
              v54 = v26;
              v30 = 0;
              v31 = v29;
              do
              {
                v32 = v31;
                v33 = v27;
                v34 = v25;
                do
                {
                  v35 = *(v32 - 2);
                  v36 = *(v32 - 1);
                  v37 = *v32;
                  v32 += 3;
                  *(v33 - 2) = CMMConvHLGOOTF::Reference_HLG_OOTF(this, v35, v36, v37);
                  *(v33 - 1) = v38;
                  *v33 = v39;
                  v33 += 3;
                  --v34;
                }

                while (v34);
                ++v30;
                v27 = (v27 + v28);
                v31 = (v31 + v28);
              }

              while (v30 != v25);
              v26 = v54 + 1;
              v27 = (v53 + v52);
              v29 = (v29 + v52);
            }

            while (v54 + 1 != v25);
          }
        }

        if (v49 == 2)
        {
          Mutable = v50;
          v11 = cf;
        }

        else
        {
          v11 = NxMLUTCreateData(v49, MutableBytePtr, 1, v55, 3, 3);
          CFRelease(cf);
          Mutable = v50;
        }

        if (v51)
        {
          MEMORY[0x19EAE45F0](v51, 0x1000C8052888210);
        }

        v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v55);
        if (v11)
        {
          v41 = v40;
          if (v40)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v40);
            CFRelease(v41);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, &v55);
      }

LABEL_45:
      v11 = Mutable;
      Mutable = 0;
      goto LABEL_46;
    }
  }

  HIDWORD(v55) = 7;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v55 + 4);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v10 = *(this + 6);
  *(&v10 + 1) = *(this + 60);
  *bytes = v10;
  v58 = *(this + 68);
  v59 = 0;
  v11 = CFDataCreate(0, bytes, 28);
  if (!v11)
  {
    goto LABEL_45;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v11);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v11);
LABEL_46:
  CFRelease(v11);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  v42 = *(this + 14);
  v55 = LODWORD(v42);
  if (v42 != 1.0)
  {
    v43 = CFNumberCreate(0, kCFNumberFloat32Type, &v55 + 4);
    v44 = CFNumberCreate(0, kCFNumberFloat32Type, &v55);
    *bytes = v43;
    *&bytes[8] = v44;
    v45 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v43);
    CFRelease(v44);
    if (v45)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v45);
      CFRelease(v45);
    }
  }

  return Mutable;
}

uint64_t calculate_clut_capacity(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v8 = 1;
    do
    {
      v9 = v8;
      v8 *= a1;
      v11 = v8 >= v9 && v8 >= a1;
      CMMThrowExceptionWithLog(v11, "Overflow in Power");
      --v6;
    }

    while (v6);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v8 = 1;
  }

  v14 = (v8 * (a4 * a3)) >> 64;
  v13 = a4 * a3 * v8;
  if (v14)
  {
    v12 = 4294967246;
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  CMMThrowExceptionOnError(v12);
  return v13;
}

uint64_t NxMLUTFillWithFloatUniformGridData(float *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2 <= 0x100)
  {
    v6 = 3 * a3;
    v7 = 12 * a3;
    v8 = operator new[](12 * a3, MEMORY[0x1E69E5398]);
    v3 = NxMLUTFillWith16BitUniformGridData(v8, a2, 3uLL, v6);
    if (v3)
    {
      v13[0] = v8;
      v13[1] = 1;
      v13[2] = v6;
      v13[3] = 2 * v6;
      v12[0] = a1;
      v12[1] = 1;
      v12[2] = v6;
      v12[3] = v7;
      ColorSync_vImageConvert_16UToF(v13, v12, v9, v10);
    }

    if (v8)
    {
      MEMORY[0x19EAE45F0](v8, 0x1000C80BDFB0063);
    }
  }

  return v3;
}

float CMMConvHLGOOTF::Reference_HLG_OOTF(CMMConvHLGOOTF *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 16) * a3) + (a2 * *(this + 15))) + (a4 * *(this + 17));
  if (a3 <= a4)
  {
    a3 = a4;
  }

  if (a3 < a2)
  {
    a3 = a2;
  }

  v6 = v5 + (a3 * *(this + 18));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  if (v6 >= 0.0)
  {
    v8 = *(this + 13);
  }

  else
  {
    v8 = -*(this + 13);
  }

  return (v8 * powf(v7, *(this + 12))) * a2;
}

unsigned __int16 *repackage_RGB16_to_RGBX16(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result && a3)
  {
    v3 = 0;
    v4 = result + 2;
    v5 = a2 + 2;
    do
    {
      v6 = 0;
      v7 = v5;
      result = v4;
      do
      {
        v8 = v7;
        v9 = result;
        v10 = a3;
        do
        {
          *(v9 - 2) = *(v8 - 2);
          *(v9 - 1) = *(v8 - 1);
          *v9 = *v8;
          v9[1] = -1;
          v9 += 4;
          v8 += 3 * a3 * a3;
          --v10;
        }

        while (v10);
        ++v6;
        result += 4 * a3;
        v7 += 3 * a3;
      }

      while (v6 != a3);
      ++v3;
      v4 += 4 * a3 * a3;
      v5 += 3;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t repackage_CMYK16_to_RGBX16(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  if (result && a3)
  {
    v3 = 0;
    v4 = a3 * a3 * a3;
    v5 = 8 * v4;
    v6 = (result + 4);
    v7 = a2 + 2;
    v8 = 6 * v4;
    do
    {
      result = 0;
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = 0;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v12;
          v15 = v13;
          v16 = a3;
          do
          {
            *(v15 - 2) = *(v14 - 2);
            *(v15 - 1) = *(v14 - 1);
            *v15 = *v14;
            v15[1] = -1;
            v15 += 4;
            v14 = (v14 + v8);
            --v16;
          }

          while (v16);
          ++v11;
          v13 += 4 * a3;
          v12 += 3 * a3 * a3;
        }

        while (v11 != a3);
        ++result;
        v10 += 4 * a3 * a3;
        v9 += 3 * a3;
      }

      while (result != a3);
      ++v3;
      v6 = (v6 + v5);
      v7 += 3;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t NxMLUTFillWith16BitUniformGridData(unsigned __int16 *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *&v74[2046] = *MEMORY[0x1E69E9840];
  v8 = (a2 > 0x100 || a3 <= 1) && (a2 > 0x400 || a3 != 1);
  result = 0;
  if (!a1 || v8)
  {
    return result;
  }

  bzero(&v73, 0x800uLL);
  memset(v71, 0, sizeof(v71));
  if (a3)
  {
    v11 = 1;
    v12 = a3;
    do
    {
      v13 = v11 * a2;
      v15 = v11 * a2 >= v11 && v13 >= a2;
      CMMThrowExceptionWithLog(v15, "Overflow in Power");
      v11 = v13;
      --v12;
    }

    while (v12);
    if (!a2)
    {
      goto LABEL_55;
    }

LABEL_24:
    v16 = 0;
    *&v17 = (a2 - 1);
    v18 = vdupq_n_s64(a2 - 1);
    v19 = vdupq_lane_s64(v17, 0);
    v20 = xmmword_19A96E050;
    v21 = v74;
    v22 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v23 = vdupq_n_s64(8uLL);
    __asm { FMOV            V17.2D, #0.5 }

    v27.i64[0] = 0xFFFF0000FFFFLL;
    v27.i64[1] = 0xFFFF0000FFFFLL;
    v28 = xmmword_19A96E040;
    v29 = xmmword_19A96E030;
    v30 = xmmword_19A96E020;
    do
    {
      v31 = vdupq_n_s64(v16);
      v32 = vorrq_s8(v31, xmmword_19A96E030);
      v33 = vorrq_s8(v31, xmmword_19A96E040);
      v34 = vorrq_s8(v31, xmmword_19A96E020);
      v35 = vmovn_s64(vcgeq_u64(v18, v20));
      v36 = vuzp1_s16(v35, v17);
      v37 = v16;
      v38 = v16 + 1;
      v39.f64[0] = v37 / *&v17;
      v39.f64[1] = v38 / *&v17;
      v40 = vmlaq_f64(_Q17, v22, v39);
      v41 = vmlaq_f64(_Q17, v22, vdivq_f64(vcvtq_f64_u64(v33), v19));
      v42 = vmlaq_f64(_Q17, v22, vdivq_f64(vcvtq_f64_u64(v32), v19));
      v43 = vmlaq_f64(_Q17, v22, vdivq_f64(vcvtq_f64_u64(v34), v19));
      v44 = v43.f64[1];
      if (v43.f64[1] >= 0xFFFF)
      {
        v44 = 0xFFFF;
      }

      if (v43.f64[0] >= 0xFFFF)
      {
        v45 = 0xFFFF;
      }

      else
      {
        v45 = v43.f64[0];
      }

      v46 = v42.f64[1];
      if (v42.f64[1] >= 0xFFFF)
      {
        v46 = 0xFFFF;
      }

      v47 = v42.f64[0];
      if (v42.f64[0] >= 0xFFFF)
      {
        v47 = 0xFFFF;
      }

      v48 = v40.f64[1];
      v49 = v40.f64[0];
      if (v40.f64[1] >= 0xFFFF)
      {
        v48 = 0xFFFF;
      }

      if (v49 >= 0xFFFF)
      {
        v49 = 0xFFFF;
      }

      v50.i64[0] = __PAIR64__(v48, v49);
      v51 = v41.f64[1];
      v52 = v41.f64[0];
      if (v41.f64[1] >= 0xFFFF)
      {
        v51 = 0xFFFF;
      }

      if (v52 >= 0xFFFF)
      {
        v52 = 0xFFFF;
      }

      v53 = vuzp1_s8(v36, v17).u8[0];
      v50.i64[1] = __PAIR64__(v51, v52);
      v54 = vandq_s8(v50, v27);
      if (v53)
      {
        *(v21 - 1) = v54.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v35, v17), v17).i8[1])
      {
        *v21 = v54.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(v17, vmovn_s64(vcgeq_u64(v18, *&v28))), v17).i8[2])
      {
        *&v74[2 * v33.i64[0] - 2] = v54.i16[4];
        *&v74[2 * v33.i64[1] - 2] = v54.i16[6];
      }

      v55.i64[0] = __PAIR64__(v46, v47);
      v55.i64[1] = __PAIR64__(v44, v45);
      v56 = vandq_s8(v55, v27);
      v57 = vmovn_s64(vcgeq_u64(v18, v29));
      if (vuzp1_s8(v17, vuzp1_s16(v57, v17)).i32[1])
      {
        *&v74[2 * v32.i64[0] - 2] = v56.i16[0];
      }

      if (vuzp1_s8(v17, vuzp1_s16(v57, v17)).i8[5])
      {
        *&v74[2 * v32.i64[1] - 2] = v56.i16[2];
      }

      if (vuzp1_s8(v17, vuzp1_s16(v17, vmovn_s64(vcgeq_u64(v18, *&v30)))).i8[6])
      {
        *&v74[2 * v34.i64[0] - 2] = v56.i16[4];
        *&v74[2 * v34.i64[1] - 2] = v56.i16[6];
      }

      v29 = vaddq_s64(v29, v23);
      v28 = vaddq_s64(v28, v23);
      v20 = vaddq_s64(v20, v23);
      v30 = vaddq_s64(v30, v23);
      v21 += 8;
      v16 = v38 + 7;
    }

    while (v16 != ((a2 + 7) & 0xFFFFFFFFFFFFFFF8));
    goto LABEL_55;
  }

  v13 = 1;
  if (a2)
  {
    goto LABEL_24;
  }

LABEL_55:
  if (a3)
  {
    v58 = 0;
    do
    {
      if (v58)
      {
        v59 = 1;
        v60 = v58;
        do
        {
          v61 = v59 * a2;
          v63 = v59 * a2 >= v59 && v61 >= a2;
          CMMThrowExceptionWithLog(v63, "Overflow in Power");
          v59 = v61;
          --v60;
        }

        while (v60);
      }

      else
      {
        v61 = 1;
      }

      *(v71 + v58++) = v61;
    }

    while (v58 != a3);
  }

  if (!v13)
  {
    return 1;
  }

  v64 = 0;
  v65 = 0;
  while (1)
  {
    memset(v72, 0, sizeof(v72));
    if (a3 == 1)
    {
      break;
    }

    v66 = a3 - 1;
    do
    {
      v67 = *(v71 + v66);
      *(v72 + v66) = v64 / v67;
      v64 %= v67;
      --v66;
    }

    while (v66);
    if (v64 < a2)
    {
      goto LABEL_78;
    }

    if (a3)
    {
      goto LABEL_79;
    }

LABEL_82:
    v64 = ++v65;
    if (v13 <= v65)
    {
      return 1;
    }
  }

  if (v64 >= a2)
  {
    return 0;
  }

LABEL_78:
  LODWORD(v72[0]) = v64;
  if (!a3)
  {
    goto LABEL_82;
  }

LABEL_79:
  v68 = 0;
  v69 = a3 + a3 * v65 - 1;
  v70 = 1;
  while (v69 < a4)
  {
    a1[v69] = *&v74[2 * *(v72 + v68) - 2];
    v68 = v70;
    --v69;
    ++v70;
    if (v68 >= a3)
    {
      goto LABEL_82;
    }
  }

  return 0;
}

uint64_t CMMConvHLGOOTF::GetTransformType(CMMConvHLGOOTF *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t CMMConvHLGOOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 56);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 56);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 56);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvHLGOOTF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvHLGOOTF::Convert(CMMConvHLGOOTF *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvHLGOOTF::Reference_HLG_OOTF(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvHLGOOTF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvInvHLGOOTF::FlattenConversion(CMMConvInvHLGOOTF *this, const __CFDictionary *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.InvHLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      HIDWORD(v55) = 2;
      v12 = CFGetTypeID(a2);
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        HIDWORD(v55) = NxMTransformFormatFromValue(Value);
      }

      v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v55 + 4);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v14);
        CFRelease(v15);
      }

      v16 = HIDWORD(v55);
      LODWORD(v55) = 0;
      v17 = CFDictionaryGetValue(a2, @"com.apple.cmm.InvHLGOOTF3DLutGridPoints");
      *bytes = 0;
      if (v17 && CFNumberGetValue(v17, kCFNumberSInt32Type, bytes) == 1)
      {
        v18 = *bytes;
        LODWORD(v55) = *bytes;
      }

      else
      {
        v18 = v55;
      }

      if (!v18)
      {
        v19 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberSInt32Type, &v55);
        }
      }

      v20 = v55;
      if (!v55)
      {
        v20 = 32;
        LODWORD(v55) = 32;
      }

      v21 = calculate_clut_capacity(v20, 3, 3, 4);
      v22 = CFDataCreateMutable(0, v21);
      if (v22)
      {
        v23 = v22;
        v49 = v16;
        v50 = Mutable;
        CFDataSetLength(v22, v21);
        cf = v23;
        MutableBytePtr = CFDataGetMutableBytePtr(v23);
        if (v21 >> 62)
        {
          v24 = -1;
        }

        else
        {
          v24 = 4 * v21;
        }

        v51 = operator new[](v24, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v51, v55, (v55 * v55 * v55)))
        {
          v25 = v55;
          if (v55)
          {
            v26 = 0;
            v27 = MutableBytePtr + 4;
            v28 = 12 * v55;
            v52 = v28 * v55;
            v29 = v51 + 2;
            do
            {
              v53 = v27;
              v54 = v26;
              v30 = 0;
              v31 = v29;
              do
              {
                v32 = v31;
                v33 = v27;
                v34 = v25;
                do
                {
                  v35 = *(v32 - 2);
                  v36 = *(v32 - 1);
                  v37 = *v32;
                  v32 += 3;
                  *(v33 - 2) = CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(this, v35, v36, v37);
                  *(v33 - 1) = v38;
                  *v33 = v39;
                  v33 += 3;
                  --v34;
                }

                while (v34);
                ++v30;
                v27 = (v27 + v28);
                v31 = (v31 + v28);
              }

              while (v30 != v25);
              v26 = v54 + 1;
              v27 = (v53 + v52);
              v29 = (v29 + v52);
            }

            while (v54 + 1 != v25);
          }
        }

        if (v49 == 2)
        {
          Mutable = v50;
          v11 = cf;
        }

        else
        {
          v11 = NxMLUTCreateData(v49, MutableBytePtr, 1, v55, 3, 3);
          CFRelease(cf);
          Mutable = v50;
        }

        if (v51)
        {
          MEMORY[0x19EAE45F0](v51, 0x1000C8052888210);
        }

        v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v55);
        if (v11)
        {
          v41 = v40;
          if (v40)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v40);
            CFRelease(v41);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, &v55);
      }

LABEL_45:
      v11 = Mutable;
      Mutable = 0;
      goto LABEL_46;
    }
  }

  HIDWORD(v55) = 7;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v55 + 4);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v10 = *(this + 76);
  *(&v10 + 1) = *(this + 60);
  *bytes = v10;
  v58 = *(this + 68);
  v59 = 1;
  v11 = CFDataCreate(0, bytes, 28);
  if (!v11)
  {
    goto LABEL_45;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v11);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v11);
LABEL_46:
  CFRelease(v11);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  *&v42 = 1.0 / *(this + 21);
  v55 = v42;
  if (*&v42 != 1.0)
  {
    v43 = CFNumberCreate(0, kCFNumberFloat32Type, &v55 + 4);
    v44 = CFNumberCreate(0, kCFNumberFloat32Type, &v55);
    *bytes = v43;
    *&bytes[8] = v44;
    v45 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
    CFRelease(v43);
    CFRelease(v44);
    if (v45)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v45);
      CFRelease(v45);
    }
  }

  return Mutable;
}

float CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(CMMConvInvHLGOOTF *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 16) * a3) + (a2 * *(this + 15))) + (a4 * *(this + 17));
  if (a3 <= a4)
  {
    a3 = a4;
  }

  if (a3 < a2)
  {
    a3 = a2;
  }

  v6 = v5 + (a3 * *(this + 18));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  if (v6 >= 0.0)
  {
    v8 = *(this + 20);
  }

  else
  {
    v8 = -*(this + 20);
  }

  return (v8 * powf(v7, *(this + 19))) * a2;
}

uint64_t CMMConvInvHLGOOTF::GetTransformType(CMMConvInvHLGOOTF *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.InvHLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t CMMConvInvHLGOOTF::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = 1.0 / *(result + 84);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      v8 = v5[2];
      if (*v5 < 0.0)
      {
        v7 = 0.0;
      }

      *v5 = v7;
      v9 = 1.0 / *(result + 84);
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      v5[1] = v10;
      v11 = 1.0 / *(result + 84);
      if (v8 <= v11)
      {
        v11 = v8;
      }

      if (v8 >= 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0.0;
      }

      v5[2] = v12;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvInvHLGOOTF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = vdup_n_s32(0x447A0000u);
    do
    {
      v7 = v5->f32[v4];
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, v6), v6, *a2), vcltz_f32(*a2));
      if (v7 <= 1000.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 1000.0;
      }

      if (v7 >= 0.0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0.0;
      }

      v5->f32[v4] = v9;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvInvHLGOOTF::Convert(CMMConvInvHLGOOTF *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvInvHLGOOTF::Reference_Inv_HLG_OOTF(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

__CFDictionary *CMMConvPQEETF::FlattenConversion(CMMConvPQEETF *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (*(this + 60) != 1)
  {
    v24 = 9;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v24);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v14);
      CFRelease(v15);
    }

    *v17 = xmmword_19A96E230;
    v18 = 1100316672;
    v19 = *(this + 1);
    v20 = *(this + 4);
    v21 = *(this + 10);
    v22 = 0;
    v23 = *(this + 44);
    v11 = CFDataCreate(0, v17, 72);
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_17:
    v11 = Mutable;
    Mutable = 0;
    goto LABEL_18;
  }

  v17[0] = 2;
  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
      v17[0] = NxMTransformFormatFromValue(Value);
    }
  }

  v9 = CFNumberCreate(0, kCFNumberSInt32Type, v17);
  if (v9)
  {
    v10 = v9;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v9);
    CFRelease(v10);
  }

  v24 = 0;
  v11 = CMMConvPQEETFBase::create_3DLUT(this, v17[0], a2, &v24);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v24);
  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = v12;
  if (v12)
  {
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v12);
    CFRelease(v13);
  }

LABEL_16:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v11);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v11);
LABEL_18:
  CFRelease(v11);
  if (*(this + 98) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo((this + 64), Mutable);
  return Mutable;
}

__CFData *CMMConvPQEETFBase::create_3DLUT(CMMConvPQEETFBase *a1, int a2, CFDictionaryRef theDict, unsigned int *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"com.apple.cmm.PQEETF3DLutGridPoints");
    valuePtr = 0;
    if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr) == 1)
    {
      v9 = valuePtr;
      *a4 = valuePtr;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *a4;
      if (*a4)
      {
        goto LABEL_12;
      }
    }

    v10 = CFDictionaryGetValue(theDict, kColorSyncConversionGridPoints);
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberSInt32Type, a4);
    }
  }

  else
  {
    valuePtr = 0;
  }

  v9 = *a4;
  if (!*a4)
  {
    v9 = 32;
    *a4 = 32;
  }

LABEL_12:
  v11 = calculate_clut_capacity(v9, 3, 3, 4);
  Mutable = CFDataCreateMutable(0, v11);
  v13 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v11);
    MutableBytePtr = CFDataGetMutableBytePtr(v13);
    if (v11 >> 62)
    {
      v15 = -1;
    }

    else
    {
      v15 = 4 * v11;
    }

    v16 = operator new[](v15, MEMORY[0x1E69E5398]);
    if (NxMLUTFillWithFloatUniformGridData(v16, *a4, *a4 * *a4 * *a4))
    {
      v44 = MutableBytePtr;
      v45 = v16;
      cf = v13;
      v43 = a2;
      v17 = *a4;
      if (v17)
      {
        v18 = 0;
        v19 = (MutableBytePtr + 8);
        v20 = 12 * v17;
        v46 = 12 * v17 * v17;
        v21 = v16 + 2;
        do
        {
          v47 = v19;
          v48 = v18;
          v22 = 0;
          v23 = v21;
          do
          {
            v24 = v23;
            v25 = v19;
            v26 = v17;
            do
            {
              v27 = *(v24 - 2) * 10000.0;
              v28 = *(v24 - 1) * 10000.0;
              v29 = *v24;
              v24 += 3;
              v30 = CMMConvPQEETFBase::ToneMap(a1, v27, v28, v29 * 10000.0);
              v33 = *(a1 + 3);
              if (v30 <= v33)
              {
                v34 = v30;
              }

              else
              {
                v34 = *(a1 + 3);
              }

              if (v30 >= 0.0)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0.0;
              }

              *(v25 - 2) = v35 / v33;
              v36 = *(a1 + 3);
              if (v31 <= v36)
              {
                v37 = v31;
              }

              else
              {
                v37 = *(a1 + 3);
              }

              if (v31 >= 0.0)
              {
                v38 = v37;
              }

              else
              {
                v38 = 0.0;
              }

              *(v25 - 1) = v38 / v36;
              v39 = *(a1 + 3);
              if (v32 <= v39)
              {
                v40 = v32;
              }

              else
              {
                v40 = *(a1 + 3);
              }

              if (v32 < 0.0)
              {
                v40 = 0.0;
              }

              *v25 = v40 / v39;
              v25 += 3;
              --v26;
            }

            while (v26);
            ++v22;
            v19 = (v19 + v20);
            v23 = (v23 + v20);
          }

          while (v22 != v17);
          v18 = v48 + 1;
          v19 = (v47 + v46);
          v21 = (v21 + v46);
        }

        while (v48 + 1 != v17);
      }

      if (v43 == 2)
      {
        v13 = cf;
      }

      else
      {
        v13 = NxMLUTCreateData(v43, v44, 1, v17, 3, 3);
        CFRelease(cf);
      }

      v16 = v45;
    }

    if (v16)
    {
      MEMORY[0x19EAE45F0](v16, 0x1000C8052888210);
    }
  }

  return v13;
}

float CMMConvPQEETFBase::ToneMap(CMMConvPQEETFBase *this, float a2, float a3, float a4)
{
  v4 = a2;
  v5 = ((*(this + 12) * a3) + (*(this + 11) * a2)) + (*(this + 13) * a4);
  if (v5 != 0.0)
  {
    v7 = *(this + 10);
    v8 = powf(fabsf(v5 / v7), 0.1593);
    v9 = powf(((v8 * 18.852) + 0.83594) / ((v8 * 18.688) + 1.0), 78.844);
    v10 = -v9;
    if ((v5 / v7) >= 0.0)
    {
      v10 = v9;
    }

    v11 = *(this + 5);
    v12 = v10 - v11;
    v13 = *(this + 4) - v11;
    v14 = v12 / v13;
    v15 = *(this + 8);
    if (v14 >= v15)
    {
      v16 = (v14 - v15) * *(this + 9);
      v14 = (1.0 - v15) * (v16 - ((v16 * (v16 + v16)) - ((v16 * v16) * v16))) + (-((v16 * (v16 * 3.0)) - ((v16 * (v16 + v16)) * v16)) + 1.0) * v15 + (*(this + 6) * ((v16 * (v16 * 3.0)) + ((v16 * (v16 * -2.0)) * v16)));
    }

    v17 = *(this + 7);
    if (v14 >= 0.0)
    {
      if (v14 >= 1.0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v14 + (((1.0 - v14) * ((1.0 - v14) * (v17 * (1.0 - v14)))) * (1.0 - v14));
      }
    }

    v18 = v11 + (v17 * v13);
    v19 = powf(fabsf(v18), 0.012683);
    v20 = powf(fmaxf(v19 + -0.83594, 0.0) / ((v19 * -18.688) + 18.852), 6.2774);
    if (v18 < 0.0)
    {
      v20 = -v20;
    }

    return ((v7 * v20) / v5) * v4;
  }

  return v4;
}

void non-virtual thunk toCMMConvPQEETF::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void non-virtual thunk toCMMConvPQEETF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvPQEETF::Convert(CMMConvPQEETFBase *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvPQEETFBase::ToneMap(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void non-virtual thunk toCMMConvPQEETF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

void CMMConvPQEETF::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvPQEETF::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvPQEETF::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvHLGSceneReferredMapping::FlattenConversion(CMMConvHLGSceneReferredMapping *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if ((*(this + 48) & 1) == 0)
  {
    v50 = 8;
    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v50);
    if (v13)
    {
      v14 = v13;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v13);
      CFRelease(v14);
    }

    *&v48[1] = *(this + 52);
    v49 = *(this + 68);
    v15 = CFDataCreate(0, &v48[1], 24);
    if (v15)
    {
      goto LABEL_46;
    }

LABEL_47:
    v15 = Mutable;
    Mutable = 0;
    goto LABEL_48;
  }

  v50 = 0;
  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
      v50 = NxMTransformFormatFromValue(Value);
    }
  }

  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v50);
  if (v9)
  {
    v10 = v9;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v9);
    CFRelease(v10);
  }

  v11 = v50;
  v48[0] = 0;
  if (a2)
  {
    v12 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGSRLS3DLutGridPoints");
    v48[1] = 0;
    if (v12)
    {
      if (CFNumberGetValue(v12, kCFNumberSInt32Type, &v48[1]) == 1)
      {
        v48[0] = v48[1];
        if (v48[1])
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v48[1] = 0;
  }

  v16 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberSInt32Type, v48);
  }

LABEL_23:
  v17 = v48[0];
  if (!v48[0])
  {
    v17 = 32;
    v48[0] = 32;
  }

  v18 = calculate_clut_capacity(v17, 3, 3, 4);
  v19 = CFDataCreateMutable(0, v18);
  if (!v19)
  {
    CFNumberCreate(0, kCFNumberSInt32Type, v48);
    goto LABEL_47;
  }

  v20 = v19;
  v42 = v11;
  v43 = Mutable;
  CFDataSetLength(v19, v18);
  cf = v20;
  MutableBytePtr = CFDataGetMutableBytePtr(v20);
  if (v18 >> 62)
  {
    v21 = -1;
  }

  else
  {
    v21 = 4 * v18;
  }

  v44 = operator new[](v21, MEMORY[0x1E69E5398]);
  if (NxMLUTFillWithFloatUniformGridData(v44, v48[0], (v48[0] * v48[0] * v48[0])))
  {
    v22 = v48[0];
    if (v48[0])
    {
      v23 = 0;
      v24 = MutableBytePtr + 4;
      v25 = 12 * v48[0];
      v45 = v25 * v48[0];
      v26 = v44 + 2;
      do
      {
        v46 = v24;
        v47 = v23;
        v27 = 0;
        v28 = v26;
        do
        {
          v29 = v28;
          v30 = v24;
          v31 = v22;
          do
          {
            v32 = *(v29 - 2);
            v33 = *(v29 - 1);
            v34 = *v29;
            v29 += 3;
            *(v30 - 2) = CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(this, v32, v33, v34);
            *(v30 - 1) = v35;
            *v30 = v36;
            v30 += 3;
            --v31;
          }

          while (v31);
          ++v27;
          v24 = (v24 + v25);
          v28 = (v28 + v25);
        }

        while (v27 != v22);
        v23 = v47 + 1;
        v24 = (v46 + v45);
        v26 = (v26 + v45);
      }

      while (v47 + 1 != v22);
    }
  }

  if (v42 == 2)
  {
    Mutable = v43;
    v15 = cf;
  }

  else
  {
    v15 = NxMLUTCreateData(v42, MutableBytePtr, 1, v48[0], 3, 3);
    CFRelease(cf);
    Mutable = v43;
  }

  if (v44)
  {
    MEMORY[0x19EAE45F0](v44, 0x1000C8052888210);
  }

  v37 = CFNumberCreate(0, kCFNumberSInt32Type, v48);
  if (!v15)
  {
    goto LABEL_47;
  }

  v38 = v37;
  if (v37)
  {
    CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v37);
    CFRelease(v38);
  }

LABEL_46:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v15);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v15);
LABEL_48:
  CFRelease(v15);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

float CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(CMMConvHLGSceneReferredMapping *this, float a2, float a3, float a4)
{
  v18 = *(this + 16);
  v19 = *(this + 15);
  if (a3 <= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (v4 < a2)
  {
    v4 = a2;
  }

  v17 = v4;
  v6 = *(this + 13);
  v5 = *(this + 14);
  v7 = v5 * a2;
  v8 = v5 * a3;
  v9 = v5 * a4;
  v11 = *(this + 17);
  v10 = *(this + 18);
  v12 = powf(v5 * a2, v6);
  v13 = powf(v8, v6);
  v14 = (((v18 * v13) + (v19 * v12)) + (v11 * powf(v9, v6))) + (v17 * v10);
  if (v14 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = ((((v18 * v8) + (v7 * v19)) + (v9 * v11)) + (v17 * v10)) / v14;
  }

  return v12 * v15;
}

uint64_t CMMConvHLGSceneReferredMapping::GetTransformType(CMMConvHLGSceneReferredMapping *this, const __CFDictionary *a2)
{
  if (*(this + 48))
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

void CMMConvHLGSceneReferredMapping::ClampOutput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvHLGSceneReferredMapping::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvHLGSceneReferredMapping::Convert(CMMConvHLGSceneReferredMapping *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvHLGSceneReferredMapping::Reference_HLG_SceneReferredMapping(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvHLGSceneReferredMapping::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvLuminanceScaling::FlattenConversion(CMMConvLuminanceScaling *this, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v5);
    CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v6);
    CFRelease(v6);
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDictionaryGetTypeID() && CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      v50 = 0;
      v11 = CFGetTypeID(a2);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(a2, kColorSyncNxMFormat);
        v50 = NxMTransformFormatFromValue(Value);
      }

      v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v50);
      if (v13)
      {
        v14 = v13;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v13);
        CFRelease(v14);
      }

      v15 = v50;
      v49[0] = 0;
      v16 = CFDictionaryGetValue(a2, @"com.apple.cmm.HLGOOTF3DLutGridPoints");
      v49[1] = 0;
      if (!v16 || CFNumberGetValue(v16, kCFNumberSInt32Type, &v49[1]) != 1 || (v17 = v49[1], (v49[0] = v49[1]) == 0))
      {
        v18 = CFDictionaryGetValue(a2, kColorSyncConversionGridPoints);
        if (v18)
        {
          CFNumberGetValue(v18, kCFNumberSInt32Type, v49);
        }

        v17 = v49[0];
        if (!v49[0])
        {
          v17 = 32;
          v49[0] = 32;
        }
      }

      v19 = calculate_clut_capacity(v17, 3, 3, 4);
      v20 = CFDataCreateMutable(0, v19);
      if (v20)
      {
        v21 = v20;
        v42 = v15;
        v44 = Mutable;
        CFDataSetLength(v20, v19);
        cf = v21;
        MutableBytePtr = CFDataGetMutableBytePtr(v21);
        if (v19 >> 62)
        {
          v22 = -1;
        }

        else
        {
          v22 = 4 * v19;
        }

        v45 = operator new[](v22, MEMORY[0x1E69E5398]);
        if (NxMLUTFillWithFloatUniformGridData(v45, v49[0], (v49[0] * v49[0] * v49[0])))
        {
          v23 = v49[0];
          if (v49[0])
          {
            v24 = 0;
            v25 = MutableBytePtr + 4;
            v26 = 12 * v49[0];
            v46 = v26 * v49[0];
            v27 = v45 + 2;
            do
            {
              v47 = v25;
              v48 = v24;
              v28 = 0;
              v29 = v27;
              do
              {
                v30 = v29;
                v31 = v25;
                v32 = v23;
                do
                {
                  v33 = *(v30 - 2);
                  v34 = *(v30 - 1);
                  v35 = *v30;
                  v30 += 3;
                  *(v31 - 2) = CMMConvLuminanceScaling::scale_RGB(this, v33, v34, v35);
                  *(v31 - 1) = v36;
                  *v31 = v37;
                  v31 += 3;
                  --v32;
                }

                while (v32);
                ++v28;
                v25 = (v25 + v26);
                v29 = (v29 + v26);
              }

              while (v28 != v23);
              v24 = v48 + 1;
              v25 = (v47 + v46);
              v27 = (v27 + v46);
            }

            while (v48 + 1 != v23);
          }
        }

        if (v42 == 2)
        {
          v10 = cf;
          Mutable = v44;
        }

        else
        {
          v10 = NxMLUTCreateData(v42, MutableBytePtr, 1, v49[0], 3, 3);
          CFRelease(cf);
          Mutable = v44;
        }

        if (v45)
        {
          MEMORY[0x19EAE45F0](v45, 0x1000C8052888210);
        }

        v38 = CFNumberCreate(0, kCFNumberSInt32Type, v49);
        if (v10)
        {
          v39 = v38;
          if (v38)
          {
            CFDictionaryAddValue(Mutable, kColorSyncConversionGridPoints, v38);
            CFRelease(v39);
          }

          goto LABEL_10;
        }
      }

      else
      {
        CFNumberCreate(0, kCFNumberSInt32Type, v49);
      }

LABEL_43:
      v10 = Mutable;
      Mutable = 0;
      goto LABEL_44;
    }
  }

  v50 = 12;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v50);
  if (v8)
  {
    v9 = v8;
    CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v8);
    CFRelease(v9);
  }

  *&v49[1] = *(this + 3);
  v49[5] = *(this + 16);
  v10 = CFDataCreate(0, &v49[1], 20);
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_10:
  CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v10);
  CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v10);
LABEL_44:
  CFRelease(v10);
  if (*(this + 34) == 1)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
  }

  CMMConvNode::AddClampingInfo(this, Mutable);
  return Mutable;
}

float CMMConvLuminanceScaling::scale_RGB(CMMConvLuminanceScaling *this, float a2, float a3, float a4)
{
  v5 = ((*(this + 14) * a3) + (a2 * *(this + 13))) + (a4 * *(this + 15));
  if (a3 > a4)
  {
    a4 = a3;
  }

  if (a4 < a2)
  {
    a4 = a2;
  }

  v6 = v5 + (a4 * *(this + 16));
  v7 = fmaxf(fabsf(v6), 1.1755e-38);
  v8 = powf(v7, *(this + 12));
  if (v6 < 0.0)
  {
    v8 = -v8;
  }

  return (v8 / v7) * a2;
}

uint64_t CMMConvLuminanceScaling::GetTransformType(CMMConvLuminanceScaling *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 2;
  }

  v3 = CFGetTypeID(cf);
  v4 = 2;
  if (v3 == CFDictionaryGetTypeID())
  {
    if (CFDictionaryGetValue(cf, @"com.apple.cmm.HLGOOTF3DLut") == *MEMORY[0x1E695E4D0])
    {
      return 8;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

void CMMConvLuminanceScaling::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

void CMMConvLuminanceScaling::Convert(CMMConvLuminanceScaling *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v9 = 0;
    do
    {
      v10 = (a2 + 4 * v9);
      *v10 = CMMConvLuminanceScaling::scale_RGB(this, *v10, v10[1], v10[2]);
      *(v10 + 1) = v11;
      *(v10 + 2) = v12;
      v9 += a4;
    }

    while (v9 < v5);
  }
}

void CMMConvLuminanceScaling::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvRWToneMapping::FlattenConversion(CMMConvRWToneMapping *this, const __CFDictionary *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 3;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v4);
      CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v5);
      CFRelease(v5);
    }

    v22 = 10;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v22);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v6);
      CFRelease(v7);
    }

    v8 = *(this + 12);
    if (v8 == 1 || (v8 ? (*bytes = 2, LODWORD(v11) = *(this + 13), DWORD1(v11) = *(this + 15), *(&v11 + 1) = *(this + 8), *&bytes[4] = v11, v25 = *(this + 72), v26 = *(this + 88), v27 = *(this + 104), v28 = *(this + 30), v10 = 72) : (LODWORD(v9) = *(this + 31), DWORD1(v9) = *(this + 33), *(&v9 + 1) = *(this + 140), *bytes = v9, *&bytes[16] = 0, v25 = *(this + 148), LODWORD(v26) = *(this + 41), v10 = 40), (v12 = CFDataCreate(0, bytes, v10)) == 0))
    {
      v12 = Mutable;
      Mutable = 0;
    }

    else
    {
      CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v12);
      CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v12);
    }

    CFRelease(v12);
    if (*(this + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
    }

    CMMConvNode::AddClampingInfo(this, Mutable);
    v13 = *(this + 17);
    if (v13 > 1.0)
    {
      v21 = 0;
      v20 = v13;
      v14 = CFNumberCreate(0, kCFNumberFloat32Type, &v21);
      v15 = CFNumberCreate(0, kCFNumberFloat32Type, &v20);
      *bytes = v14;
      *&bytes[8] = v15;
      v16 = CFArrayCreate(0, bytes, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v14);
      CFRelease(v15);
      if (v16)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v16);
        CFRelease(v16);
      }
    }

    if (*(this + 12) >= 2u)
    {
      valuePtr = 2;
      v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v17)
      {
        v18 = v17;
        CFDictionaryAddValue(Mutable, kColorSyncNxMFormatVersion, v17);
        CFRelease(v18);
      }
    }
  }

  return Mutable;
}

uint64_t CMMConvRWToneMapping::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 68);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 68);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 68);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

uint64_t CMMConvRWToneMapping::ClampInput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 56);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 56);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 56);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvRWToneMapping::Convert(float *a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a12 * a11;
  if (a12 * a11)
  {
    v14 = a2;
    v16 = 0;
    v17 = a2 + 1;
    v18 = 4 * a11;
    do
    {
      v19 = a1[13];
      a9.n128_u64[0] = vmul_n_f32(*v14, v19);
      v20 = v19 * v17->f32[v16];
      v21 = a9.n128_f32[1];
      if (a9.n128_f32[0] > a9.n128_f32[1])
      {
        v21 = a9.n128_f32[0];
      }

      if (v21 <= v20)
      {
        v21 = v19 * v17->f32[v16];
      }

      if (v21 <= a1[30])
      {
        v22 = a1[30];
      }

      else
      {
        v22 = v21;
      }

      if (a1[21] >= v22)
      {
        v24 = v22 * a1[15];
      }

      else if (a1[16] <= v22)
      {
        v24 = a1[18] + (a1[19] * v22);
      }

      else
      {
        v23 = a1[28] * (a1[27] + sqrtf(a1[26] + (a1[25] * v22)));
        v24 = ((a1[23] * (v23 * ((1.0 - v23) + (1.0 - v23)))) + (((1.0 - v23) * (1.0 - v23)) * a1[22])) + ((v23 * v23) * a1[24]);
      }

      v25 = a1[20];
      if (v25 != 1.0)
      {
        v28 = a9;
        v26 = powf(v24 * a1[29], v25);
        a9 = v28;
        v24 = a1[17] * v26;
      }

      v27 = v24 / v22;
      *v14 = vmul_n_f32(a9.n128_u64[0], v27);
      v17->f32[v16] = v20 * v27;
      v16 += a11;
      v14 = (v14 + v18);
    }

    while (v16 < v12);
  }
}

void CMMConvRWToneMapping::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

__CFDictionary *CMMConvFlexGTCLumaScaling::FlattenConversion(CMMConvFlexGTCLumaScaling *this, const __CFDictionary *a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 3;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, kColorSyncConversionInpChan, v4);
      CFDictionaryAddValue(Mutable, kColorSyncConversionOutChan, v5);
      CFRelease(v5);
    }

    v19 = 11;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v19);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(Mutable, kColorSyncNxMFormat, v6);
      CFRelease(v7);
    }

    v8 = *(*(this + 10) + 32);
    v9 = malloc_type_calloc(1uLL, v8 + 40, 0x10000400A747E1EuLL);
    *v9 = *(this + 6);
    *(v9 + 2) = *(this + 15);
    *(v9 + 3) = *(this + 16);
    *(v9 + 4) = *(this + 17);
    *(v9 + 5) = *(this + 18);
    *(v9 + 6) = *(this + 19);
    v10 = *(this + 10);
    *(v9 + 28) = v10[4] >> 2;
    v11 = CMMTable::UInt8Data(v10[2], v10[3]);
    memcpy(v9 + 36, v11, *(*(this + 10) + 32));
    v12 = CFDataCreate(0, v9, v8 + 40);
    free(v9);
    if (v12)
    {
      CFDictionaryAddValue(Mutable, kColorSyncConversion3DLut, v12);
      CFDictionaryAddValue(Mutable, kColorSyncConversionNDLut, v12);
    }

    else
    {
      v12 = Mutable;
      Mutable = 0;
    }

    CFRelease(v12);
    if (*(this + 34) == 1)
    {
      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *MEMORY[0x1E695E4D0]);
    }

    CMMConvNode::AddClampingInfo(this, Mutable);
    v18 = 0;
    v17 = *(this + 13);
    if (v17 != 1.0)
    {
      v13 = CFNumberCreate(0, kCFNumberFloat32Type, &v18);
      v14 = CFNumberCreate(0, kCFNumberFloat32Type, &v17);
      values[0] = v13;
      values[1] = v14;
      v15 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
      CFRelease(v13);
      CFRelease(v14);
      if (v15)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionOutputRange", v15);
        CFRelease(v15);
      }
    }
  }

  return Mutable;
}

uint64_t CMMConvFlexGTCLumaScaling::ClampOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (a2 + 4 * v4);
      v6 = v5[1];
      v7 = *(result + 52);
      if (*v5 <= v7)
      {
        v7 = *v5;
      }

      if (*v5 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0.0;
      }

      *v5 = v8;
      v9 = *(result + 52);
      v10 = v5[2];
      if (v6 <= v9)
      {
        v9 = v6;
      }

      if (v6 < 0.0)
      {
        v9 = 0.0;
      }

      v5[1] = v9;
      v11 = *(result + 52);
      if (v10 <= v11)
      {
        v11 = v10;
      }

      if (v10 < 0.0)
      {
        v11 = 0.0;
      }

      v5[2] = v11;
      v4 += a3;
    }

    while (v4 < a4 * a3);
  }

  return result;
}

void CMMConvFlexGTCLumaScaling::ClampInput(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    v5 = a2 + 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      *a2 = vbic_s8(vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2), vcltz_f32(*a2));
      v11 = v5->f32[v4];
      if (v11 <= 1.0)
      {
        v12 = v5->f32[v4];
      }

      else
      {
        v12 = 1.0;
      }

      if (v11 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v5->f32[v4] = v13;
      v4 += a3;
      a2 = (a2 + 4 * a3);
    }

    while (v4 < a4 * a3);
  }
}

uint64_t CMMConvFlexGTCLumaScaling::Convert(uint64_t result, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 * a4;
  if (a5 * a4)
  {
    v7 = a2;
    v8 = result;
    v9 = 0;
    v10 = *(result + 80);
    v11 = a2 + 1;
    v12 = 4 * a4;
    do
    {
      v13 = v11->f32[v9];
      v25 = *v7;
      v14 = (vmuls_lane_f32(*(v8 + 64), *v7, 1) + (COERCE_FLOAT(*v7) * *(v8 + 60))) + (v13 * *(v8 + 68));
      if (COERCE_FLOAT(HIDWORD(*v7)) <= v13)
      {
        v15 = v11->f32[v9];
      }

      else
      {
        LODWORD(v15) = HIDWORD(*v7);
      }

      if (v15 < COERCE_FLOAT(*v7))
      {
        LODWORD(v15) = *v7->f32;
      }

      v16 = v14 + (v15 * *(v8 + 72));
      v17 = fmaxf(fabsf(v16), 1.1755e-38);
      result = CMMTable::UInt8Data(v10[2], v10[3]);
      v10 = *(v8 + 80);
      v18 = (v10[4] >> 2) - 1;
      v19 = v18;
      if ((v17 * v18) <= v18)
      {
        v19 = v17 * v18;
      }

      v20 = v19;
      v21 = v19 - v19;
      if (v18 >= v20 + 1)
      {
        v18 = v20 + 1;
      }

      v22 = *(result + 4 * v20) + ((*(result + 4 * v18) - *(result + 4 * v20)) * v21);
      v23 = -v22;
      if (v16 >= 0.0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 76) * v23;
      *v7 = vmul_n_f32(v25, v24);
      v11->f32[v9] = v24 * v13;
      v9 += a4;
      v7 = (v7 + v12);
    }

    while (v9 < v5);
  }

  return result;
}

void CMMConvFlexGTCLumaScaling::Convert()
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -181;
}

uint64_t CMMTextDescTag::CMMTextDescTag(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F0E08C48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 16) = 0;
  if (a5)
  {
    *(a5 + 16) = a1;
  }

  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  *a1 = &unk_1F0E08CA0;
  if (a4 >= 0xD)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967126;
  }

  CMMThrowExceptionOnError(v6);
  return a1;
}

void *CMMTag::GetWholeCloth(void *this, unsigned __int8 *__dst, unint64_t *a3)
{
  v3 = this[5];
  if (!v3)
  {
    exception = __cxa_allocate_exception(4uLL);
    v6 = -171;
LABEL_11:
    *exception = v6;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  if (!__dst)
  {
    *a3 = this[4];
    return this;
  }

  v4 = *a3;
  if (v4 != this[4])
  {
LABEL_9:
    exception = __cxa_allocate_exception(4uLL);
    v6 = -50;
    goto LABEL_11;
  }

  return memcpy(__dst, v3, v4);
}

uint64_t CMMTag::GetTagType(CMMTag *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  return bswap32(*v1);
}

void CMMSignatureTag::~CMMSignatureTag(CMMSignatureTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMHLGOOTFTag::~CMMHLGOOTFTag(CMMHLGOOTFTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

uint64_t CMMHLGCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 541543496)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(*(v3 + 40) + 8) == 1728774144)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

uint64_t CMMHLGCurveTag::MakeInvertedTRC(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 60) = a3;
  {
    CMMMemMgr::CMMMemMgr(&CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 60);
  if (CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *(a1 + 64);
    dispatch_once(&CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_273);
    v8 = v15;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  *a2 = xmmword_19A96E250;
  *(a2 + 24) = 0;
  *(a2 + 28) = v8;
  *(a2 + 44) = v9;
  *(a2 + 48) = 0;
  v10 = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  v11 = *(v10 + 8);
  if (v11)
  {
    *(v10 + 8) = v11 + 1;
  }

LABEL_6:
  v12 = CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table;
  v13 = *(CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v13)
  {
    *(CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v13 + 1;
  }

  *a5 = CMMHLGCurveTag::copy_hlg_curve_table(a1, 0);
  return v12;
}

uint64_t CMMHLGCurveTag::copy_hlg_curve_table(uint64_t a1, uint64_t a2)
{
  {
    CMMMemMgr::CMMMemMgr(&CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v6 = *(a1 + 56);
  if (CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = *(a1 + 64);
    dispatch_once(&CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_270);
    v4 = v11;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  *a2 = xmmword_19A96E260;
  *(a2 + 24) = 0;
  *(a2 + 28) = v4;
  *(a2 + 44) = v5;
  *(a2 + 48) = v6;
  *(a2 + 52) = 0;
  v7 = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table;
  v8 = *(v7 + 8);
  if (v8)
  {
    *(v7 + 8) = v8 + 1;
  }

LABEL_6:
  result = CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table;
  v10 = *(CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v10)
  {
    *(CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v10 + 1;
  }

  return result;
}

void *___ZN14CMMHLGCurveTag20copy_hlg_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kHLGInvOETFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kHLGInvOETFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMHLGCurveTag::copy_hlg_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

void *___ZN14CMMHLGCurveTag24copy_inv_hlg_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kHLGOETFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kHLGOETFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMHLGCurveTag::copy_inv_hlg_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

uint64_t CMMHLGCurveTag::SameCurve(CMMHLGCurveTag *this, CMMCurveTag *lpsrc, CMMCurveTag *a3)
{
  if (lpsrc)
  {
    if (a3)
    {
LABEL_3:
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 1;
LABEL_6:
  if (!v5 || !v6)
  {
    return 0;
  }

  v7 = *(*lpsrc + 56);

  return v7(lpsrc, lpsrc, a3);
}

uint64_t CMMHLGCurveTag::Validate(CMMHLGCurveTag *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 3 && a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967126;
  }

  CMMThrowExceptionOnError(v5);
  if (*(*(this + 5) + 8) == 1728774144)
  {
    return 0;
  }

  else
  {
    return 4294967126;
  }
}

void CMMHLGCurveTag::~CMMHLGCurveTag(CMMHLGCurveTag *this)
{
  CMMTag::~CMMTag(this);

  CMMBase::operator delete(v1);
}

void CMMCurveTag::EvaluateGamma(CMMCurveTag *this, BOOL *a2, double a3)
{
  v23 = 0.0;
  v6 = (*(*this + 40))(this);
  if (*(this + 4) >= 2 * v6 + 12)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4294967126;
  }

  CMMThrowExceptionOnError(v7);
  switch(v6)
  {
    case 0u:
      v23 = 1.0;
      goto LABEL_33;
    case 2u:
      v23 = 1.0;
      if (!*(*(*this + 48))(this))
      {
        v8 = (*(*this + 48))(this);
        if (!a2 || *(v8 + 2) == 0xFFFF)
        {
          return;
        }

LABEL_37:
        v22 = 0;
LABEL_38:
        *a2 = v22;
        return;
      }

LABEL_36:
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 1u:
      if ((*(*(*this + 48))(this) & 0xFEFF) == 0xCC01)
      {
        if (a2)
        {
          *a2 = 1;
        }

        return;
      }

      v23 = vcvtd_n_f64_u32(bswap32(*(*(*this + 48))(this)) >> 16, 8uLL);
      goto LABEL_33;
  }

  v9 = (*(*this + 48))(this);
  if (IsPureGammaCurve(v6, v9, &v23))
  {
LABEL_33:
    if (!a2)
    {
      return;
    }

    v22 = 1;
    goto LABEL_38;
  }

  v10 = (*(*this + 48))(this);
  v11 = 0;
  v12 = 0;
  v13 = (v6 - 1);
  v14 = 0.0;
  v15 = 0.0;
  do
  {
    if (v11)
    {
      v16 = (bswap32(*(v10 + 2 * v11)) >> 16) / 65535.0;
      if (v16 != 0.0 && v11 - v6 != -1 && v16 != 1.0)
      {
        v19 = log(v14 / v13);
        v15 = log(v16) / v19 + v15;
        ++v12;
      }
    }

    ++v11;
    v14 = v14 + 1.0;
  }

  while (v11 != v6);
  if (!v12)
  {
    v23 = 1.0;
    goto LABEL_36;
  }

  v23 = v15 / v12;
  v20 = (*(*this + 48))(this);
  v21 = 0;
  while (vabdd_f64((bswap32(*(v20 + 2 * v21)) >> 16) / 65535.0, pow(v21 / v13, v15 / v12)) <= a3)
  {
    if (v6 == ++v21)
    {
      goto LABEL_36;
    }
  }

  v23 = 0.0;
  if (a2)
  {
    goto LABEL_37;
  }
}

BOOL IsPureGammaCurve(_BOOL8 result, unsigned __int16 *a2, double *a3)
{
  v5 = result - 1;
  if (result)
  {
    v6 = vcvtd_n_f64_u32(bswap32(*a2) >> 16, 8uLL);
    if (v6 < 2.4023 && v6 > 2.398)
    {
      v6 = 2.4;
    }

    *a3 = v6;
  }

  else
  {
    v8 = result;
    if (result >= 0x80)
    {
      result = 0;
      v9 = (bswap32(a2[v8 >> 1]) >> 16) / 65535.0;
      if (v9 >= 0.01 && v9 <= 0.99)
      {
        v10 = v5;
        v11 = (v8 >> 1) / v5;
        v12 = log(v9);
        v13 = 0;
        v14 = v12 / log(v11);
        *a3 = v14;
        do
        {
          v15 = vabdd_f64((bswap32(a2[v13]) >> 16) / 65535.0, pow(v13 / v10, v14));
          result = v15 <= 0.0001;
        }

        while (v15 <= 0.0001 && v8 - 1 != v13++);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CMMCurveTag::MakeLut(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v7 = (*(*a1 + 40))(a1);
  v8 = (*(*a1 + 48))(a1);
  v9 = v8;
  v10 = v7 - 1;
  if (v7 == 1)
  {
    v11 = *v8;
    v12 = __rev16(v11);
    if ((v12 & 0xFFFE) == 0x1CC)
    {
      v13 = 1.8;
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    else if (v11 == 13058)
    {
      v13 = 2.2;
      if (!a2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = vcvtd_n_f64_u32(v12, 8uLL);
      v21 = v20 >= 2.4023 || v20 <= 2.398;
      if (v21)
      {
        v13 = v20;
      }

      else
      {
        v13 = 2.4;
      }

      if (!a2)
      {
        goto LABEL_48;
      }
    }

    v22 = 1.0;
    if (v13 < 1.0)
    {
      v22 = 16.0;
    }

    v23 = v22;
    v24 = 0.0625;
    if (v13 <= 1.0)
    {
      v24 = v23;
    }

    *a2 = 1;
    *(a2 + 12) = 3;
    *(a2 + 8) = 1;
    *(a2 + 16) = 0;
    v25 = v13;
    *(a2 + 24) = v25;
    *(a2 + 28) = 1065353216;
    *(a2 + 36) = v24;
    v26 = 0.0;
    if (v25 != 1.0 && v25 != 0.0)
    {
      v27 = v25;
      if (v25 <= 1.0)
      {
        v28 = v25;
      }

      else
      {
        v28 = 1.0 / v25;
      }

      v29 = exp2(1.0 / (v28 + -1.0) * 4.0);
      if (v28 != v27)
      {
        v29 = v29 * 16.0;
      }

      v26 = v29;
    }

    *(a2 + 40) = v26;
    goto LABEL_47;
  }

  v13 = 0.0;
  if (IsSRGBGammaCurve(v7, v8))
  {
    if (a2)
    {
      *a2 = 1;
      *(a2 + 12) = 3;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = xmmword_19A96E270;
      *(a2 + 40) = xmmword_19A96E280;
    }
  }

  else if (a2)
  {
    v14 = (*(*a1 + 80))(a1, 0, 0.001);
    if (v14 != 0.0)
    {
      v15 = 16.0;
      if (v14 >= 1.0)
      {
        v15 = 1.0;
      }

      if (v14 > 1.0)
      {
        v15 = 0.0625;
      }

      *a2 = 1;
      *(a2 + 8) = 1;
      *(a2 + 12) = 3;
      *(a2 + 16) = 0;
      *(a2 + 24) = v14;
      *(a2 + 28) = 1065353216;
      *(a2 + 36) = v15;
      if (v14 == 1.0)
      {
        v19 = 0.0;
      }

      else
      {
        v16 = v14;
        if (v14 <= 1.0)
        {
          v17 = v14;
        }

        else
        {
          v17 = 1.0 / v14;
        }

        v18 = exp2(1.0 / (v17 + -1.0) * 4.0);
        if (v17 != v16)
        {
          v18 = v18 * 16.0;
        }

        v19 = v18;
      }

      *(a2 + 40) = v19;
LABEL_47:
      *(a2 + 48) = 0;
      *(a2 + 44) = 0;
      goto LABEL_48;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 12) = -1;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

LABEL_48:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v49 = a3;
  do
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v34 = vcvtmd_s64_f64(pow(vcvtd_n_f64_u32(v33, 0x18uLL), v13) * 16777216.0 + 0.5);
        if (v31 > v34)
        {
          v34 = v31;
        }

        if (v34 >= v32)
        {
          v34 = v32;
        }
      }

      else
      {
        v35 = v30 >> 24;
        if (v7 <= (v30 >> 24))
        {
          exception = __cxa_allocate_exception(4uLL);
          *exception = -171;
        }

        v36 = (v35 << 24) / v10;
        v37 = bswap32(v9[v35]);
        v34 = (((v37 >> 7) & 0x1FFFE00 | (v37 >> 23)) + 1) >> 1;
        if (v33 != v36)
        {
          v38 = bswap32(*(v9 + (((v35 << 32) + 0x100000000) >> 31)));
          v39 = (v33 - v36) * (((((v38 >> 7) & 0x1FFFE00 | (v38 >> 23)) + 1) >> 1) - v34);
          if (v39)
          {
            v40 = v39 * v10;
            v41 = v40 + 0x800000;
            v21 = v40 < -8388608;
            v42 = v40 + 25165823;
            if (!v21)
            {
              v42 = v41;
            }

            v34 += v42 >> 24;
          }
        }
      }
    }

    else
    {
      v34 = v33;
    }

    *a3++ = v34;
    v33 += 4096;
    v32 += 0x10000;
    v31 += 256;
    v30 += (v7 - 1) << 12;
  }

  while (v33 != 16781312);
  if (a4 == 1 && v7 > 2)
  {
    v43 = v49[2056];
    memmove(v49 + 2058, v49 + 2057, 0x1FD8uLL);
    v49[2057] = v43;
    v49[2055] = v43;
  }

  else if (!a4 && v7 >= 3)
  {
    v44 = v49[4096];
    v45 = v49[1] - *v49;
    if (v45 < 0)
    {
      v45 = *v49 - v49[1];
    }

    if (v45 <= 0x7FF)
    {
      v49[1] = *v49;
    }

    v46 = v44 - v49[4095];
    if (v46 < 0)
    {
      v46 = v49[4095] - v44;
    }

    if (v46 <= 0x7FF)
    {
      v49[4095] = v44;
    }
  }
}

int *MakeLookups(int *result)
{
  v1 = 0;
  v2 = 0x8000;
  do
  {
    v3 = WORD1(v2) & 0xFFF;
    v4 = &result[v2 >> 28];
    v5 = *v4;
    if (v3)
    {
      v5 += ((v4[1] - v5) * v3 + 2048) >> 12;
    }

    result[v1 + 4097] = v5 >> 12;
    ++v1;
    v2 += 0x101010100;
  }

  while (v1 != 256);
  v6 = result + 4353;
  v7 = 4097;
  do
  {
    v8 = *result++;
    *v6 = (255 * v8 + 0x800000) >> 24;
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  return result;
}

void *CMMTable::MakeFloatCopy(CMMTable *this, void **a2, CMMMemMgr *a3, const char *a4)
{
  if (*(this + 4) <= 0x1000uLL)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v6 = CMMBase::NewInternal(0x28, a2, a3, a4);
  *v6 = &unk_1F0E09180;
  v6[1] = 1;
  v6[3] = 0;
  v6[4] = 16388;
  v6[2] = CMMBase::NewInternal(0x4004, a2, v7, v8);
  v9 = CMMTable::UInt8Data(*(this + 2), *(this + 3));
  v10 = CMMTable::UInt8Data(v6[2], v6[3]);
  v11 = 4097;
  do
  {
    v12 = *v9++;
    *v10++ = v12 * 0.000000059605;
    --v11;
  }

  while (v11);
  return v6;
}

int8x8_t CMMCurveTag::InvertFloatParametricLUT(float32x2_t *a1, int8x8_t result)
{
  if (a1->i32[0] == 1)
  {
    v3 = a1[3];
    v4.i32[0] = a1[4].i32[0];
    v5 = a1[4].i32[1];
    v6 = a1[5].f32[0];
    v7 = a1[1].i32[1];
    if (v7 <= 1)
    {
      if (!v7)
      {
        v3.f32[0] = 1.0 / v3.f32[0];
        goto LABEL_19;
      }

      if (v7 != 1)
      {
        goto LABEL_19;
      }

      a1[1].i32[1] = 4;
      v20 = v3.f32[1];
      v36 = v4.f32[0];
      v40 = v3.i32[0];
      v21 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v3.f32[1], v3.f32[0])), v40);
      __asm { FMOV            V0.2S, #1.0 }

      v3 = vdiv_f32(_D0, v21);
      a1[5].f32[1] = -v36 / v20;
      a1[6] = 0;
      v6 = 0.0;
      *&v5 = 0.0;
    }

    else
    {
      if (v7 == 2)
      {
        a1[1].i32[1] = 4;
        v23 = v3.f32[1];
        v37 = v4.f32[0];
        v41 = v3.i32[0];
        v33 = *&v5;
        v24 = powf(v3.f32[1], v3.f32[0]);
        __asm { FMOV            V1.2S, #1.0 }

        v3 = vdiv_f32(_D1, __PAIR64__(LODWORD(v24), v41));
        v6 = v33;
        v19 = v33 / v24;
        a1[4].f32[0] = v19;
        a1[5].f32[1] = -v37 / v23;
        a1[6] = 0;
        *&v5 = 0.0;
LABEL_13:
        v4.f32[0] = v19;
        goto LABEL_19;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v9 = a1[5].f32[1];
          v8 = a1[6].f32[0];
          a1[1].i32[1] = 4;
          v10 = v3.f32[1];
          v35 = v4.f32[0];
          v39 = v3.i32[0];
          v30 = v6;
          v32 = *&v5;
          v11 = powf(v3.f32[1], v3.f32[0]);
          __asm { FMOV            V1.2S, #1.0 }

          v3 = vdiv_f32(_D1, __PAIR64__(LODWORD(v11), v39));
          v17 = 1.0 / v32;
          v6 = v8 + (v32 * v30);
          v18 = v8 / v32;
          if (v32 == 0.0)
          {
            v17 = 0.0;
            v18 = 0.0;
          }

          a1[5].f32[1] = -v35 / v10;
          a1[6].f32[0] = v18;
          a1[6].i32[1] = 0;
          *&v5 = v17;
          v19 = v9 / v11;
          goto LABEL_13;
        }

LABEL_19:
        a1[3] = vand_s8(v3, vceq_f32(v3, v3));
        v4.i32[1] = v5;
        v4.f32[2] = v6;
        v4.i32[3] = a1[5].i32[1];
        *a1[4].f32 = vandq_s8(v4, vceqq_f32(v4, v4));
        result = vand_s8(a1[6], vceq_f32(a1[6], a1[6]));
        a1[6] = result;
        return result;
      }

      a1[1].i32[1] = 4;
      v26 = v3.f32[1];
      v38 = v4.f32[0];
      v42 = v3.i32[0];
      v31 = v6;
      v34 = *&v5;
      v27 = __PAIR64__(COERCE_UNSIGNED_INT(powf(v3.f32[1], v3.f32[0])), v42);
      __asm { FMOV            V0.2S, #1.0 }

      v3 = vdiv_f32(_D0, v27);
      a1[4].i32[0] = 0;
      v29 = 1.0 / v34;
      v6 = v34 * v31;
      if (v34 == 0.0)
      {
        v29 = 0.0;
      }

      a1[4].f32[1] = v29;
      a1[5].f32[1] = -v38 / v26;
      a1[6] = 0;
      *&v5 = v29;
    }

    v4.i32[0] = 0;
    goto LABEL_19;
  }

  return result;
}

uint64_t CMMPQCurveTag::Initialize(uint64_t this)
{
  v2 = **(this + 40);
  *(this + 52) = bswap32(v2);
  if (v2 == 538988880)
  {
    v3 = this;
    if (*(this + 32) >= 0xCuLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967126;
    }

    CMMThrowExceptionOnError(v4);
    if (*(*(v3 + 40) + 8) == -2078277632)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294967126;
    }

    return CMMThrowExceptionOnError(v5);
  }

  return this;
}

uint64_t CMMPQCurveTag::MakeInvertedTRC(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 60) = a3;
  {
    CMMMemMgr::CMMMemMgr(&CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v8 = &kColorSyncTransformInfo;
  {
    v8 = &kColorSyncTransformInfo;
    if (v24)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::a = *(a1 + 72);
      v8 = &kColorSyncTransformInfo;
    }
  }

  v9 = &kColorSyncTransformInfo;
  {
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v25)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::b = *(a1 + 76);
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v10 = &kColorSyncTransformInfo;
  {
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v26)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::c = *(a1 + 80);
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v11 = &kColorSyncTransformInfo;
  {
    v11 = &kColorSyncTransformInfo;
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v27)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::d = *(a1 + 84);
      v11 = &kColorSyncTransformInfo;
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v12 = &kColorSyncTransformInfo;
  {
    v12 = &kColorSyncTransformInfo;
    v11 = &kColorSyncTransformInfo;
    v10 = &kColorSyncTransformInfo;
    v9 = &kColorSyncTransformInfo;
    v8 = &kColorSyncTransformInfo;
    if (v28)
    {
      CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::e = *(a1 + 88);
      v12 = &kColorSyncTransformInfo;
      v11 = &kColorSyncTransformInfo;
      v10 = &kColorSyncTransformInfo;
      v9 = &kColorSyncTransformInfo;
      v8 = &kColorSyncTransformInfo;
    }
  }

  v13 = *(v8 + 852);
  v14 = *(v9 + 848);
  v15 = *(v10 + 844);
  v16 = *(v11 + 840);
  v17 = *(v12 + 836);
  v18 = *(a1 + 60);
  if (CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_267);
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  *a2 = xmmword_19A96E2D0;
  *(a2 + 24) = 0;
  *(a2 + 28) = v13;
  *(a2 + 32) = v14;
  *(a2 + 36) = v15;
  *(a2 + 40) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = 0;
  *(a2 + 52) = v18;
  v19 = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table;
  *(a2 + 16) = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table;
  v20 = *(v19 + 8);
  if (v20)
  {
    *(v19 + 8) = v20 + 1;
  }

LABEL_11:
  v21 = CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table;
  v22 = *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v22)
  {
    *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v22 + 1;
  }

  *a5 = CMMPQCurveTag::copy_pq_curve_table(a1, 0);
  return v21;
}

uint64_t CMMPQCurveTag::copy_pq_curve_table(uint64_t a1, uint64_t a2)
{
  {
    CMMMemMgr::CMMMemMgr(&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m);
    __cxa_atexit(CMMMemMgr::~CMMMemMgr, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, &dword_19A910000);
  }

  v4 = &kColorSyncTransformInfo;
  {
    v4 = &kColorSyncTransformInfo;
    if (v23)
    {
      *&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::a = 1.0 / *(a1 + 76);
      v4 = &kColorSyncTransformInfo;
    }
  }

  v5 = &kColorSyncTransformInfo;
  {
    v5 = &kColorSyncTransformInfo;
    v4 = &kColorSyncTransformInfo;
    if (v24)
    {
      *&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::b = 1.0 / *(a1 + 72);
      v5 = &kColorSyncTransformInfo;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v6 = &kColorSyncTransformInfo;
  {
    v25 = v5;
    v6 = &kColorSyncTransformInfo;
    v5 = v25;
    v4 = &kColorSyncTransformInfo;
    if (v26)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::c = *(a1 + 80);
      v6 = &kColorSyncTransformInfo;
      v5 = v25;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v7 = &kColorSyncTransformInfo;
  {
    v27 = v5;
    v7 = &kColorSyncTransformInfo;
    v6 = &kColorSyncTransformInfo;
    v5 = v27;
    v4 = &kColorSyncTransformInfo;
    if (v28)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::d = *(a1 + 84);
      v7 = &kColorSyncTransformInfo;
      v6 = &kColorSyncTransformInfo;
      v5 = v27;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v8 = &kColorSyncTransformInfo;
  {
    v29 = v5;
    v8 = &kColorSyncTransformInfo;
    v7 = &kColorSyncTransformInfo;
    v6 = &kColorSyncTransformInfo;
    v5 = v29;
    v4 = &kColorSyncTransformInfo;
    if (v30)
    {
      CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::e = *(a1 + 88);
      v8 = &kColorSyncTransformInfo;
      v7 = &kColorSyncTransformInfo;
      v6 = &kColorSyncTransformInfo;
      v5 = v29;
      v4 = &kColorSyncTransformInfo;
    }
  }

  v9 = *(a1 + 64);
  v10 = *(v4 + 998);
  v11 = *(v5 + 994);
  v12 = *(v6 + 990);
  v13 = *(v7 + 986);
  v14 = *(v8 + 982);
  v15 = *(a1 + 56);
  if (CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::predicate == -1)
  {
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::predicate, &__block_literal_global_590);
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  if (v9)
  {
    v16 = 17;
  }

  else
  {
    v16 = 8;
  }

  *a2 = v9 == 0;
  *(a2 + 4) = v16;
  *(a2 + 8) = 0x500000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = v10;
  *(a2 + 32) = v11;
  *(a2 + 36) = v12;
  *(a2 + 40) = v13;
  *(a2 + 44) = v14;
  *(a2 + 48) = 893662952;
  *(a2 + 52) = v15;
  v17 = *(a1 + 64);
  if (!v17)
  {
    v17 = CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::float_table;
  }

  *(a2 + 16) = v17;
  v20 = *(v17 + 8);
  v18 = (v17 + 8);
  v19 = v20;
  if (v20)
  {
    *v18 = v19 + 1;
  }

LABEL_16:
  result = CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table;
  v22 = *(CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8);
  if (v22)
  {
    *(CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 8) = v22 + 1;
  }

  return result;
}

void *___ZN13CMMPQCurveTag19copy_pq_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  v4[2] = 0;
  v4[3] = &kPQEOTFData;
  *v4 = &unk_1F0E09180;
  v4[1] = 0;
  v4[4] = 21512;
  CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  result = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  result[2] = 0;
  result[3] = &kPQEOTFFloatData;
  *result = &unk_1F0E09180;
  result[1] = 0;
  result[4] = 16388;
  CMMPQCurveTag::copy_pq_curve_table(CMMFloatLutInfo *)::float_table = result;
  return result;
}

int *___ZN13CMMPQCurveTag23copy_inv_pq_curve_tableEP15CMMFloatLutInfo_block_invoke(uint64_t a1, uint64_t a2, CMMMemMgr *a3, const char *a4)
{
  v4 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, a3, a4);
  *v4 = &unk_1F0E09180;
  v4[1] = 1;
  v4[3] = 0;
  v4[4] = 21512;
  v4[2] = CMMBase::NewInternal(0x5408, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v5, v6);
  CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table = v4;
  v9 = CMMBase::NewInternal(0x28, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v7, v8);
  *v9 = &unk_1F0E09180;
  v9[1] = 1;
  v9[3] = 0;
  v9[4] = 16388;
  v12 = CMMBase::NewInternal(0x4004, &CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::m, v10, v11);
  v9[2] = v12;
  CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::float_table = v9;
  v13 = *(CMMPQCurveTag::copy_inv_pq_curve_table(CMMFloatLutInfo *)::fixed_table + 16);
  if (!v13)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  v14 = v12;
  CMMTable::MutableFloatData(v12);
  v15 = 0;
  for (i = 0; i != 16781312; i += 4096)
  {
    v17 = powf(vcvts_n_f32_u64(i, 0x18uLL), 0.1593);
    v18 = powf(((v17 * 18.852) + 0.83594) / ((v17 * 18.688) + 1.0), 78.844);
    v19 = 0.0;
    if (fabsf(v18) == INFINITY || v18 >= 0.0 && (v19 = v18, v18 > 1.0))
    {
      v19 = 1.0;
    }

    *(v14 + v15 * 4) = v19;
    v20 = vcvtmd_s64_f64((v19 * 16777000.0) + 0.5);
    v21 = v20 & ~(v20 >> 31);
    if (v21 >= 0x1000000)
    {
      v21 = 0x1000000;
    }

    v13[v15++] = v21;
  }

  return MakeLookups(v13);
}

uint64_t CMMTable::MutableFloatData(uint64_t this)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  return this;
}

uint64_t CMMPQCurveTag::MakeTRC(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 64))
  {
    a3 = 1.0;
  }

  *(a1 + 56) = a3;
  return CMMPQCurveTag::copy_pq_curve_table(a1, a2);
}

uint64_t CMMPQCurveTag::SameCurve(CMMPQCurveTag *this, CMMCurveTag *lpsrc, CMMCurveTag *a3)
{
  if (lpsrc)
  {
    if (a3)
    {
LABEL_3:
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 1;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 1;
LABEL_6:
  if (!v5 || !v6)
  {
    return 0;
  }

  v7 = *(*lpsrc + 56);

  return v7(lpsrc, lpsrc, a3);
}

uint64_t CMMPQCurveTag::Validate(CMMPQCurveTag *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 3 && a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294967126;
  }

  CMMThrowExceptionOnError(v5);
  if (*(*(this + 5) + 8) == -2078277632)
  {
    return 0;
  }

  else
  {
    return 4294967126;
  }
}

void CMMPQCurveTag::~CMMPQCurveTag(CMMPQCurveTag *this)
{
  CMMPQCurveTag::~CMMPQCurveTag(this);

  CMMBase::operator delete(v1);
}

{
  *this = &unk_1F0E08E28;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v3 - 1;
      v2[1] = v4;
      if (!v4)
      {
        (*(*v2 + 8))(v2);
      }
    }
  }

  CMMTag::~CMMTag(this);
}

uint64_t CMMLutBtoATag::GetPostCLUTLutSize(CMMLutBtoATag *this, unsigned int a2)
{
  result = *(this + a2 + 61);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutBtoATag::GetPreCLUTLutSize(CMMLutBtoATag *this, unsigned int a2)
{
  result = *(this + a2 + 44);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutBtoATag::MakePostCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 480) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 488);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutBtoATag::MakePreCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 344) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 352);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutBtoATag::GetInputMatrix(CMMLutBtoATag *this)
{
  v3 = *(this + 28);
  result = this + 112;
  if (v3 == 0x10000 && *(this + 33) == 0x10000 && *(this + 38) == 0x10000)
  {
    v4 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*(this + 116)), vceqzq_s32(*(this + 136)))));
    v4.i8[0] = vmaxv_u8(v4);
    if (((*(this + 39) == 0) & ~v4.i32[0]) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMLutBtoATag::MakeInputTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 208) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 216);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

unint64_t CMMLutTag::InterpolationProtectionZone(CMMLutTag *this)
{
  MaxCLUTPoints = *(this + 25);
  if (!MaxCLUTPoints)
  {
    if (*(this + 76))
    {
      v3 = 0;
    }

    else
    {
      v3 = 4294967246;
    }

    CMMThrowExceptionOnError(v3);
    MaxCLUTPoints = CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  }

  return CMMLutTagBase::CalculateProtectionZone(MaxCLUTPoints, *(this + 50), *(this + 51)) * *(this + 92);
}

unint64_t CMMLutTag::GetMaxCLUTPoints(unsigned int a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 <= 1)
  {
    v5 = 4294967126;
  }

  else
  {
    v5 = 0;
  }

  CMMThrowExceptionOnError(v5);
  if (a1 >= 2)
  {
    v6 = a1 - 1;
    v7 = a2 + 1;
    do
    {
      if (*v7 <= 1u)
      {
        v8 = 4294967126;
      }

      else
      {
        v8 = 0;
      }

      CMMThrowExceptionOnError(v8);
      v10 = *v7++;
      v9 = v10;
      if (v4 <= v10)
      {
        v4 = v9;
      }

      --v6;
    }

    while (v6);
  }

  return v4;
}

unint64_t CMMLutTag::GetCLutPoints(CMMLutTag *this)
{
  if (*(this + 25))
  {
    return *(this + 25);
  }

  else
  {
    return CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  }
}

void *CMMLutTag::CopyClut(CMMLutTag *this, CMMMemMgr *a2)
{
  v247 = *MEMORY[0x1E69E9840];
  v2 = *(this + 13);
  if (!v2)
  {
    return 0;
  }

  if (*(this + 25))
  {
    if (*(this + 92) == 2)
    {
      v5 = *(v2 + 32);
      v6 = (*(*this + 72))(this);
      v7 = (v6 + v5);
      if (__CFADD__(v6, v5))
      {
        v8 = 4294967246;
      }

      else
      {
        v8 = 0;
      }

      CMMThrowExceptionOnError(v8);
      v11 = CMMBase::NewInternal(0x28, a2, v9, v10);
      v12 = 1;
      *v11 = &unk_1F0E09180;
      v11[1] = 1;
      v11[3] = 0;
      v11[4] = v7;
      v11[2] = CMMBase::NewInternal(v7, a2, v13, v14);
      v15 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
      v16 = CMMTable::UInt8Data(v11[2], v11[3]);
      v17 = *(this + 50);
      if (!*(this + 50))
      {
        goto LABEL_17;
      }

      v18 = *(this + 25);
      LODWORD(v12) = 1;
      do
      {
        v19 = v12;
        v12 = v12 * v18;
        _CF = v12 >= v19 && v12 >= v18;
        v21 = _CF;
        CMMThrowExceptionWithLog(v21, "Overflow in Power");
        --v17;
      }

      while (v17);
      if (v12)
      {
LABEL_17:
        v22 = 0;
        v23 = *(this + 51);
        do
        {
          v24 = v23;
          if (v23)
          {
            do
            {
              v25 = *v15++;
              *v16++ = bswap32(v25) >> 16;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != v12);
      }
    }

    else
    {
      v53 = (*(*this + 72))(this);
      v54 = 2 * v53;
      if (v53 < 0)
      {
        v55 = 4294967246;
      }

      else
      {
        v55 = 0;
      }

      CMMThrowExceptionOnError(v55);
      v56 = *(*(this + 13) + 32);
      v57 = (v54 + 2 * v56);
      if (__CFADD__(v54, 2 * v56))
      {
        v58 = 4294967246;
      }

      else
      {
        v58 = 0;
      }

      CMMThrowExceptionOnError(v58);
      v11 = CMMBase::NewInternal(0x28, a2, v59, v60);
      v61 = 1;
      *v11 = &unk_1F0E09180;
      v11[1] = 1;
      v11[3] = 0;
      v11[4] = v57;
      v11[2] = CMMBase::NewInternal(v57, a2, v62, v63);
      v64 = CMMTable::UInt8Data(*(*(this + 13) + 16), *(*(this + 13) + 24));
      v65 = CMMTable::UInt8Data(v11[2], v11[3]);
      v66 = *(this + 50);
      if (!*(this + 50))
      {
        goto LABEL_56;
      }

      v67 = *(this + 25);
      LODWORD(v61) = 1;
      do
      {
        v68 = v61;
        v61 = v61 * v67;
        v70 = v61 >= v68 && v61 >= v67;
        CMMThrowExceptionWithLog(v70, "Overflow in Power");
        --v66;
      }

      while (v66);
      if (v61)
      {
LABEL_56:
        v71 = 0;
        v72 = *(this + 51);
        do
        {
          v73 = v72;
          if (v72)
          {
            do
            {
              v74 = *v64++;
              *v65++ = v74 | (v74 << 8);
              --v73;
            }

            while (v73);
          }

          ++v71;
        }

        while (v71 != v61);
      }
    }

    return v11;
  }

  v229 = this + 76;
  MaxCLUTPoints = CMMLutTag::GetMaxCLUTPoints(*(this + 50), this + 76);
  v27 = *(this + 13);
  v28 = *(this + 92);
  v29 = v27[4];
  v30 = (*(*this + 72))(this);
  _CF = __CFADD__(v30, v29);
  v31 = v30 + v29;
  if (_CF)
  {
    v32 = 4294967246;
  }

  else
  {
    v32 = 0;
  }

  CMMThrowExceptionOnError(v32);
  if (v31 < 0)
  {
    v33 = 4294967246;
  }

  else
  {
    v33 = 0;
  }

  CMMThrowExceptionOnError(v33);
  v36 = CMMBase::NewInternal(0x28, a2, v34, v35);
  *v36 = &unk_1F0E09180;
  v36[1] = 1;
  v36[3] = 0;
  v36[4] = 2 * v31;
  v39 = CMMBase::NewInternal((2 * v31), a2, v37, v38);
  v36[2] = v39;
  v40 = *(this + 76);
  v41 = *(this + 50);
  if (v41 >= 2)
  {
    v42 = v41 - 1;
    v43 = this + 77;
    do
    {
      v44 = *v43++;
      v40 *= v44;
      --v42;
    }

    while (v42);
  }

  v45 = CMMTable::UInt8Data(v39, v36[3]);
  v46 = v27[2];
  v47 = v27[3];
  if (v28 == 1)
  {
    v48 = CMMTable::UInt8Data(v46, v47);
    if (v40)
    {
      v49 = 0;
      v50 = *(this + 51);
      do
      {
        if (v50)
        {
          v51 = 0;
          do
          {
            v52 = *v48++;
            *v45++ = __rev16(v52 | (v52 << 8));
            ++v51;
          }

          while (v50 > v51);
        }

        ++v49;
      }

      while (v49 != v40);
    }
  }

  else
  {
    v75 = CMMTable::UInt8Data(v46, v47);
    memcpy(v45, v75, (2 * v40));
  }

  v76 = *(this + 50);
  v234 = *(this + 51);
  v235 = v76;
  v227 = 2 * v234;
  v77 = 1;
  if (!*(this + 50))
  {
    goto LABEL_71;
  }

  do
  {
    v78 = v77;
    v77 *= MaxCLUTPoints;
    v80 = v77 >= v78 && v77 >= MaxCLUTPoints;
    CMMThrowExceptionWithLog(v80, "Overflow in Power");
    --v76;
  }

  while (v76);
  if (!v77)
  {
    v82 = 0;
    v81 = 0;
  }

  else
  {
LABEL_71:
    v81 = v227 * v77;
    if (is_mul_ok(v77, v227))
    {
      v82 = 0;
    }

    else
    {
      v82 = 4294967246;
    }
  }

  CMMThrowExceptionOnError(v82);
  v83 = (*(*this + 72))(this);
  v225 = v81;
  v84 = (v83 + v81);
  if (__CFADD__(v83, v81))
  {
    v85 = 4294967246;
  }

  else
  {
    v85 = 0;
  }

  CMMThrowExceptionOnError(v85);
  v224 = CMMBase::NewInternal(0x28, a2, v86, v87);
  *v224 = &unk_1F0E09180;
  v224[1] = 1;
  v224[3] = 0;
  v224[4] = v84;
  v224[2] = CMMBase::NewInternal(v84, a2, v88, v89);
  v94 = CMMBase::NewInternal(0x28, a2, v90, v91);
  v223 = v36;
  v95 = v235;
  v228 = v77;
  if (v235)
  {
    v96 = 1;
    do
    {
      v97 = v96;
      v96 *= 2;
      v99 = v97 >= 0 && v96 != 0;
      CMMThrowExceptionWithLog(v99, "Overflow in Power");
      --v95;
    }

    while (v95);
    v100 = 8 * v97;
  }

  else
  {
    v100 = 4;
  }

  *v94 = &unk_1F0E09180;
  v94[1] = 1;
  v94[3] = 0;
  v94[4] = v100;
  v101 = CMMBase::NewInternal(v100, a2, v92, v93);
  v94[2] = v101;
  v222 = v94;
  v237 = this;
  v238 = CMMTable::UInt8Data(v101, v94[3]);
  v102 = *(this + 50);
  *v238 = *(this + 51);
  v103 = v238 - 1;
  v236 = MaxCLUTPoints;
  if (v102 >= 2)
  {
    v104 = 0;
    for (i = 1; i != v102; ++i)
    {
      if (i == 1)
      {
        v108 = 1;
      }

      else
      {
        v106 = 1;
        v107 = v104;
        do
        {
          v108 = (2 * v106);
          v110 = v106 >= 0 && v108 != 0;
          CMMThrowExceptionWithLog(v110, "Overflow in Power");
          v106 = v108;
          --v107;
        }

        while (v107);
      }

      v111 = v103[v108];
      v112 = v229[i];
      v113 = 1;
      v114 = i;
      do
      {
        _NF = v113 < 0;
        v113 *= 2;
        v117 = !_NF && v113 != 0;
        CMMThrowExceptionWithLog(v117, "Overflow in Power");
        --v114;
      }

      while (v114);
      v103[v113] = v111 * v112;
      ++v104;
    }

    v118 = 1;
    v119 = 2;
    while (1)
    {
      v232 = v118;
      v120 = 1;
      do
      {
        _NF = v120 < 0;
        v120 *= 2;
        v122 = !_NF && v120 != 0;
        CMMThrowExceptionWithLog(v122, "Overflow in Power");
        --v118;
      }

      while (v118);
      v230 = v119;
      v123 = v119;
      v124 = 1;
      do
      {
        v125 = 2 * v124;
        v127 = v124 >= 0 && v125 != 0;
        CMMThrowExceptionWithLog(v127, "Overflow in Power");
        v124 = v125;
        --v123;
      }

      while (v123);
      v128 = v120 | 1;
      if ((v120 | 1uLL) < v125)
      {
        break;
      }

LABEL_154:
      v118 = v232 + 1;
      v119 = v230 + 1;
      MaxCLUTPoints = v236;
      if (v232 + 1 == v102)
      {
        goto LABEL_155;
      }
    }

LABEL_129:
    v129 = 0;
    v130 = 0;
    v131 = v128;
    while (!v129)
    {
      if ((v120 & 1) == 0)
      {
        v139 = 1;
LABEL_151:
        v130 += v103[v139];
      }

LABEL_152:
      if (++v129 == v102)
      {
        v238[v120] = v130;
        v128 = v131 + 1;
        v120 = v131;
        if (v131 + 1 == v125)
        {
          goto LABEL_154;
        }

        goto LABEL_129;
      }
    }

    v132 = v129;
    v133 = 1;
    do
    {
      v134 = 2 * v133;
      v136 = v133 >= 0 && v134 != 0;
      CMMThrowExceptionWithLog(v136, "Overflow in Power");
      v133 = v134;
      --v132;
    }

    while (v132);
    if ((v134 & v131) == 0)
    {
      goto LABEL_152;
    }

    v137 = v129;
    v138 = 1;
    do
    {
      v139 = 2 * v138;
      v141 = v138 >= 0 && v139 != 0;
      CMMThrowExceptionWithLog(v141, "Overflow in Power");
      v138 = v139;
      --v137;
    }

    while (v137);
    goto LABEL_151;
  }

LABEL_155:
  v142 = CMMTable::UInt8Data(v224[2], v224[3]);
  v231 = CMMTable::UInt8Data(v36[2], v36[3]);
  v143 = CMMTable::UInt8Data(v222[2], v222[3]);
  memset(v244, 0, sizeof(v244));
  memset(v242, 0, sizeof(v242));
  memset(v241, 0, sizeof(v241));
  if (MaxCLUTPoints)
  {
    v144 = 0;
    *&v145 = (MaxCLUTPoints - 1);
    v146 = vdupq_n_s64(MaxCLUTPoints - 1);
    v147 = vdupq_lane_s64(v145, 0);
    v148 = xmmword_19A96E020;
    v149 = xmmword_19A96E030;
    v150 = xmmword_19A96E040;
    v151 = xmmword_19A96E050;
    v152 = &v244[4];
    v153 = vdupq_n_s64(0x40EFFFE000000000uLL);
    __asm { FMOV            V18.2D, #0.5 }

    v156 = vdupq_n_s64(8uLL);
    v157.i64[0] = 0xFFFF0000FFFFLL;
    v157.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v158 = vmovn_s64(vcgeq_u64(v146, v151));
      v159 = vuzp1_s16(v158, v145);
      v160.f64[0] = v144 / *&v145;
      v161 = vdupq_n_s32(v144);
      v162 = vorrq_s8(v161, xmmword_19A96E2E0);
      v163.i64[0] = v162.u32[0];
      v163.i64[1] = v162.u32[1];
      v164 = vcvtq_f64_u64(v163);
      v163.i64[0] = v162.u32[2];
      v163.i64[1] = v162.u32[3];
      v165 = vdivq_f64(vcvtq_f64_u64(v163), v147);
      *v161.i8 = vorr_s8(*v161.i8, 0x700000006);
      v163.i64[0] = v161.u32[0];
      v163.i64[1] = v161.u32[1];
      v160.f64[1] = (v144 + 1) / *&v145;
      v166 = vmlaq_f64(_Q18, v153, v160);
      v167 = vmlaq_f64(_Q18, v153, vdivq_f64(v164, v147));
      v168 = vmlaq_f64(_Q18, v153, vdivq_f64(vcvtq_f64_u64(v163), v147));
      v169 = vmlaq_f64(_Q18, v153, v165);
      v170 = v169.f64[1];
      if (v169.f64[1] >= 0xFFFF)
      {
        v170 = 0xFFFF;
      }

      if (v169.f64[0] >= 0xFFFF)
      {
        v171 = 0xFFFF;
      }

      else
      {
        v171 = v169.f64[0];
      }

      v172 = v168.f64[1];
      if (v168.f64[1] >= 0xFFFF)
      {
        v172 = 0xFFFF;
      }

      v173 = v168.f64[0];
      if (v168.f64[0] >= 0xFFFF)
      {
        v173 = 0xFFFF;
      }

      v174 = v166.f64[1];
      v175 = v166.f64[0];
      if (v166.f64[1] >= 0xFFFF)
      {
        v174 = 0xFFFF;
      }

      if (v175 >= 0xFFFF)
      {
        v175 = 0xFFFF;
      }

      v176.i64[0] = __PAIR64__(v174, v175);
      v177 = v167.f64[1];
      v178 = v167.f64[0];
      if (v167.f64[1] >= 0xFFFF)
      {
        v177 = 0xFFFF;
      }

      if (v178 >= 0xFFFF)
      {
        v178 = 0xFFFF;
      }

      v179 = vuzp1_s8(v159, v145).u8[0];
      v176.i64[1] = __PAIR64__(v177, v178);
      v180 = vandq_s8(v176, v157);
      if (v179)
      {
        *(v152 - 4) = v180.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v158, v145), v145).i8[1])
      {
        *(v152 - 3) = v180.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(v145, vmovn_s64(vcgeq_u64(v146, *&v150))), v145).i8[2])
      {
        *(v152 - 2) = v180.i16[4];
        *(v152 - 1) = v180.i16[6];
      }

      v181.i64[0] = __PAIR64__(v170, v171);
      v181.i64[1] = __PAIR64__(v172, v173);
      v182 = vandq_s8(v181, v157);
      v183 = vmovn_s64(vcgeq_u64(v146, v149));
      if (vuzp1_s8(v145, vuzp1_s16(v183, v145)).i32[1])
      {
        *v152 = v182.i16[0];
      }

      if (vuzp1_s8(v145, vuzp1_s16(v183, v145)).i8[5])
      {
        v152[1] = v182.i16[2];
      }

      if (vuzp1_s8(v145, vuzp1_s16(v145, vmovn_s64(vcgeq_u64(v146, *&v148)))).i8[6])
      {
        v152[2] = v182.i16[4];
        v152[3] = v182.i16[6];
      }

      v144 += 8;
      v149 = vaddq_s64(v149, v156);
      v150 = vaddq_s64(v150, v156);
      v151 = vaddq_s64(v151, v156);
      v148 = vaddq_s64(v148, v156);
      v152 += 8;
    }

    while (((MaxCLUTPoints + 7) & 0x1F8) != v144);
  }

  v233 = v142;
  v184 = v235;
  if (v235)
  {
    v185 = 0;
    do
    {
      if (v185)
      {
        v186 = v185;
        v187 = 1;
        do
        {
          v188 = v187;
          v187 *= MaxCLUTPoints;
          v190 = v187 >= v188 && v187 >= MaxCLUTPoints;
          CMMThrowExceptionWithLog(v190, "Overflow in Power");
          --v186;
        }

        while (v186);
        v184 = v235;
      }

      else
      {
        LODWORD(v187) = 1;
      }

      v241[v185++] = v187;
    }

    while (v185 != v184);
  }

  if (v228)
  {
    v191 = 0;
    v192 = 0;
    v193 = v225 >> 1;
    v226 = 2 * v184;
    do
    {
      v239 = v192;
      v194 = v184 == 0;
      memset(v243, 0, sizeof(v243));
      DecodeN(v191, v184, v243, v241, v236);
      if (!v194)
      {
        v196 = v243;
        v197 = v226;
        do
        {
          v198 = *v196++;
          *(&v241[15] + v197 + 2) = v244[v198];
          v197 -= 2;
        }

        while (v197);
      }

      memset(v245, 0, sizeof(v245));
      v199 = *(v237 + 50);
      if (*(v237 + 50))
      {
        v200 = 0;
        memset(v246, 0, 64);
        do
        {
          v201 = (*(v200 + v229) - 1) * *(v242 + v200) + 1;
          v246[v200] = HIWORD(v201);
          v245[v200] = v201 >> 1;
          v200 = (v200 + 1);
        }

        while (v199 != v200);
        v202 = v246[0];
        if (v199 != 1)
        {
          v203 = v199 - 1;
          v204 = v237 + 77;
          v205 = &v246[1];
          do
          {
            v207 = *v204++;
            v206 = v207;
            v208 = *v205++;
            v202 = v208 + v202 * v206;
            --v203;
          }

          while (v203);
        }
      }

      else
      {
        v202 = 0;
      }

      v209 = *(v237 + 51);
      if (*(v237 + 51))
      {
        v210 = 0;
        v211 = (v231 + 2 * (v202 * v209));
        do
        {
          v212 = (bswap32(*v211) >> 16);
          v240 = 0;
          if (v199)
          {
            v213 = 0;
            do
            {
              v212 = CMMLutTag::Interpolate(v199, v213++, v245, v212, v211, v143, &v240, v195);
            }

            while (v199 != v213);
          }

          *(v242 + v210) = v212;
          ++v211;
          ++v210;
        }

        while (v210 != v209);
      }

      if (v234)
      {
        v214 = v234 + v234 * v239 - 1;
        v215 = 2 * v234;
        do
        {
          if (v214 >= v193)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = -171;
          }

          *(v233 + 2 * v214--) = *(&v241[15] + v215 + 2);
          v215 -= 2;
        }

        while (v215);
      }

      v191 = v239 + 1;
      v192 = v239 + 1;
      v184 = v235;
    }

    while (v228 > v191);
  }

  v216 = v223[1];
  if (v216)
  {
    v217 = v216 - 1;
    v223[1] = v217;
    if (!v217)
    {
      (*(*v223 + 8))(v223);
    }
  }

  v218 = v222[1];
  v11 = v224;
  if (v218)
  {
    v219 = v218 - 1;
    v222[1] = v219;
    if (!v219)
    {
      (*(*v222 + 8))(v222);
    }
  }

  return v11;
}

unint64_t DecodeN(unint64_t result, uint64_t a2, unsigned int (*a3)[16], unsigned int (*a4)[16], unint64_t a5)
{
  v5 = a2 - 1;
  if (a2 != 1)
  {
    do
    {
      v6 = (*a4)[v5];
      (*a3)[v5] = result / v6;
      result %= v6;
      --v5;
    }

    while (v5);
  }

  if (result >= a5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -171;
  }

  (*a3)[0] = result;
  return result;
}

int *CMMLutTag::Interpolate(CMMLutTag *this, int a2, uint64_t a3, int *a4, uint64_t a5, unsigned __int16 *a6, unsigned int *a7, unsigned int *a8)
{
  v11 = a4;
  if (a2)
  {
    v14 = a2;
    v15 = ~a2 + this;
    if (*(a3 + 4 * v15))
    {
      v16 = 0;
      v17 = *a7;
      *a7 = v17 + 1;
      v18 = (bswap32(*(a5 + 2 * *&a6[2 * v17])) >> 16);
      do
      {
        v19 = CMMLutTag::Interpolate(this, v16, a3, v18, a5, a6, a7, a8);
        v18 = v19;
        ++v16;
      }

      while (v14 != v16);
      v20 = *(a3 + 4 * v15);
      v21 = v19 - v11;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }

    v23 = 1;
    do
    {
      v24 = 2 * v23;
      v26 = v23 >= 0 && v24 != 0;
      CMMThrowExceptionWithLog(v26, "Overflow in Power");
      v23 = v24;
      --v14;
    }

    while (v14);
    *a7 += v24;
  }

  else
  {
    v22 = *a7;
    *a7 = v22 + 1;
    v21 = *(a3 + 4 * (this - 1));
    if (v21)
    {
      v20 = *(a5 + 2 * *&a6[2 * v22]) - a4;
      return (v11 + ((v20 * v21 + 0x4000) >> 15));
    }
  }

  return v11;
}

void CMMLutTag::GetWholeCloth(CMMLutTag *this, unsigned __int8 *a2, unint64_t *a3)
{
  exception = __cxa_allocate_exception(4uLL);
  *exception = -171;
}

uint64_t CMMLutAtoBTag::GetPostCLUTLutSize(CMMLutAtoBTag *this, unsigned int a2)
{
  result = *(this + a2 + 44);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutAtoBTag::GetPreCLUTLutSize(CMMLutAtoBTag *this, unsigned int a2)
{
  result = *(this + a2 + 61);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t CMMLutAtoBTag::MakeOutputTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 208) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 216);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutAtoBTag::GetOutputMatrix(CMMLutAtoBTag *this)
{
  v3 = *(this + 28);
  result = this + 112;
  if (v3 == 0x10000 && *(this + 33) == 0x10000 && *(this + 38) == 0x10000)
  {
    v4 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(*(this + 116)), vceqzq_s32(*(this + 136)))));
    v4.i8[0] = vmaxv_u8(v4);
    if (((*(this + 39) == 0) & ~v4.i32[0]) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMMLutAtoBTag::MakePostCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 344) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 352);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

uint64_t CMMLutAtoBTag::MakePreCLUTTRC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a1 + 480) <= a2)
  {
    return 0;
  }

  v6 = a2 - 1 < 2 && a5 == 1347182946;
  v7 = *(a1 + 8 * a2 + 488);
  return (*(*v7 + 64))(v7, a3, a4, v6, 1.0);
}

float CMMParaCurveTag::EvaluateGamma(CMMParaCurveTag *this, BOOL *a2, double a3)
{
  if (*(this + 28))
  {
    v29 = 0;
    CMMMemMgr::CMMMemMgr(&v29);
    v7 = CMMBase::NewInternal(0x28, &v29, v5, v6);
    *v7 = &unk_1F0E09180;
    v7[1] = 1;
    v7[3] = 0;
    v7[4] = 16388;
    v10 = CMMBase::NewInternal(0x4004, &v29, v8, v9);
    v7[2] = v10;
    v11 = CMMTable::UInt8Data(v10, v7[3]);
    CMMParaCurveTag::MakeLut(this, 0, v11, -1, 1.0);
    v12 = CMMTable::UInt8Data(v7[2], v7[3]);
    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      if ((v13 & 0xFFF) != 0)
      {
        v17 = vcvtd_n_f64_u32(*(v12 + 4 * v13), 0x18uLL);
        if (v17 != 0.0 && v17 != 1.0)
        {
          v19 = log(v16 * 0.000244140625);
          v15 = v15 + log(v17) / v19;
          ++v14;
        }
      }

      ++v13;
      v16 = v16 + 1.0;
    }

    while (v13 != 4097);
    if (v14)
    {
      v20 = CMMTable::UInt8Data(v7[2], v7[3]);
      v21 = 0;
      v22 = v15 / v14;
      while (vabdd_f64(vcvtd_n_f64_u32(*(v20 + 4 * v21), 0x18uLL), pow(vcvtd_n_f64_u32(v21, 0xCuLL), v22)) <= a3)
      {
        if (++v21 == 4097)
        {
          goto LABEL_20;
        }
      }

      v22 = 0.0;
LABEL_20:
      v24 = v22;
    }

    else
    {
      v24 = 1.0;
    }

    if (v29)
    {
      v25 = *v29;
      if (*v29)
      {
        do
        {
          v26 = *v25;
          free(v25);
          v25 = v26;
        }

        while (v26);
      }
    }

    CMMMemMgr::ReleaseMemList(&v29);
  }

  else
  {
    v23 = *(this + 16);
    if (v23 >> 1 == 58982)
    {
      v24 = 1.8;
      if (a2)
      {
        *a2 = 1;
      }
    }

    else
    {
      v27 = vcvtd_n_f64_s32(v23, 0x10uLL);
      if (a2)
      {
        *a2 = 1;
      }

      return v27;
    }
  }

  return v24;
}

void sub_19A954978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CMMMemMgr::ReleaseMemList(va);
  _Unwind_Resume(a1);
}

void CMMParaCurveTag::MakeLut(uint64_t a1, uint64_t a2, int *a3, int a4, double a5)
{
  v10 = *(a1 + 56);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 0;
      v12 = *(a1 + 64);
      __y = vcvtd_n_f64_s32(v12, 0x10uLL);
      v13 = *(a1 + 68);
      v22.i64[0] = v13.i32[0];
      v22.i64[1] = v13.i32[1];
      v16 = vmulq_f64(vcvtq_f64_s64(v22), vdupq_n_s64(0x3EF0000000000000uLL));
      v19 = 0uLL;
      v72 = COERCE_UNSIGNED_INT64(vcvtd_n_f64_s32(*(a1 + 76), 0x10uLL));
      v20 = 2;
      goto LABEL_31;
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        v11 = 0;
        v12 = *(a1 + 64);
        __y = vcvtd_n_f64_s32(v12, 0x10uLL);
        v13 = *(a1 + 68);
        v14.i64[0] = v13.i32[0];
        v14.i64[1] = v13.i32[1];
        v15 = vdupq_n_s64(0x3EF0000000000000uLL);
        v16 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v17 = *(a1 + 76);
        v14.i64[0] = v17;
        v14.i64[1] = SHIDWORD(v17);
        v72 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v18 = *(a1 + 84);
        v14.i64[0] = v18;
        v14.i64[1] = SHIDWORD(v18);
        v19 = vmulq_f64(vcvtq_f64_s64(v14), v15);
        v20 = 4;
        goto LABEL_31;
      }

LABEL_103:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -170;
    }

    v11 = 0;
    v12 = *(a1 + 64);
    __y = vcvtd_n_f64_s32(v12, 0x10uLL);
    v13 = *(a1 + 68);
    v23.i64[0] = v13.i32[0];
    v23.i64[1] = v13.i32[1];
    v24 = vdupq_n_s64(0x3EF0000000000000uLL);
    v16 = vmulq_f64(vcvtq_f64_s64(v23), v24);
    v25 = *(a1 + 76);
    v23.i64[0] = v25;
    v23.i64[1] = SHIDWORD(v25);
    v72 = vmulq_f64(vcvtq_f64_s64(v23), v24);
    v19 = 0uLL;
    goto LABEL_30;
  }

  if (!*(a1 + 56))
  {
    v12 = *(a1 + 64);
    v26 = vcvtd_n_f64_s32(v12, 0x10uLL);
    if (v26 >= 2.4023 || v26 <= 2.398)
    {
      v28 = v26;
    }

    else
    {
      v28 = 2.4;
    }

    v29 = 1.0;
    if (v28 < 1.0)
    {
      v29 = 16.0;
    }

    v30 = v29;
    v31 = v30;
    if (v28 > 1.0)
    {
      v31 = 0.0625;
    }

    __y = v28;
    v73 = v31;
    v32 = v28;
    v33 = 0.0;
    if (v32 != 1.0 && v32 != 0.0)
    {
      v34 = v32;
      if (v32 <= 1.0)
      {
        v35 = v32;
      }

      else
      {
        v35 = 1.0 / v32;
      }

      v36 = exp2(1.0 / (v35 + -1.0) * 4.0);
      if (v35 != v34)
      {
        v36 = v36 * 16.0;
      }

      v37 = v36;
      v33 = v37;
    }

    *(a1 + 60) = 5;
    v13 = 0x10000;
    *(a1 + 68) = 0x10000;
    v38.f64[0] = v73;
    v39 = v73 * 65536.0 + 0.5;
    v38.f64[1] = v33;
    v72 = v38;
    *(a1 + 76) = v39;
    *(a1 + 80) = (v33 * 65536.0 + 0.5);
    v16 = xmmword_19A96E2F0;
    v19 = 0uLL;
    v11 = 1;
LABEL_30:
    v20 = 3;
    goto LABEL_31;
  }

  if (v10 != 1)
  {
    goto LABEL_103;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  __y = vcvtd_n_f64_s32(v12, 0x10uLL);
  v13 = *(a1 + 68);
  v21.i64[0] = v13.i32[0];
  v21.i64[1] = v13.i32[1];
  v16 = vmulq_f64(vcvtq_f64_s64(v21), vdupq_n_s64(0x3EF0000000000000uLL));
  v19 = 0uLL;
  v20 = 1;
  v72 = 0u;
LABEL_31:
  if (a5 == 1.0 || a5 == 0.0)
  {
    v70 = v16.f64[0];
  }

  else
  {
    v40 = v72.f64[1];
    v41.f64[0] = v72.f64[0];
    if ((v20 - 3) < 2)
    {
      v41.f64[0] = a5 * v72.f64[0];
    }

    else
    {
      v40 = -v16.f64[1] / v16.f64[0];
    }

    v70 = v16.f64[0] * a5;
    v41.f64[1] = v40 / a5;
    v72 = v41;
  }

  v42 = v16.f64[1];
  if (a2)
  {
    *(a2 + 8) = v11;
    *(a2 + 12) = v20;
    v43.f64[0] = __y;
    v43.f64[1] = v70;
    *(a2 + 16) = 0;
    *&v43.f64[0] = vcvt_f32_f64(v43);
    v44 = v42;
    v45 = vcvt_f32_f64(v72);
    *a2 = 1;
    *(a2 + 24) = vand_s8(*&v43.f64[0], vceq_f32(*&v43.f64[0], *&v43.f64[0]));
    *(a2 + 32) = v44;
    *(a2 + 36) = vand_s8(v45, vceq_f32(v45, v45));
    *(a2 + 44) = vcvt_f32_f64(v19);
    *(a2 + 52) = 0;
    if (v10 == 3 && v12 == 145636)
    {
      v46 = vceq_s32(v13, 0x17200000E8E0);
      if ((v46.i8[0] & 1) != 0 && (v46.i8[4] & 1) != 0 && *(a1 + 76) == 14564 && *(a1 + 80) == 5308 && !*(a1 + 84) && !*(a1 + 88))
      {
        *(a2 + 4) = 14;
      }
    }
  }

  v47 = 0;
  v48 = ceil(__y);
  v49 = floor(__y);
  v50 = v19;
  v51 = a3;
  v52 = -v42 / v70;
  do
  {
    v53 = vcvtd_n_f64_u32(v47, 0x18uLL);
    v54 = 0.0;
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v53 < v52)
        {
          goto LABEL_86;
        }

LABEL_69:
        v53 = v42 + v70 * v53;
        if (v53 <= 0.0 && v48 != v49)
        {
          goto LABEL_86;
        }
      }

      else if (v53 <= 0.0 && __y < 0.0)
      {
        goto LABEL_86;
      }

      v55 = pow(v53, __y);
      goto LABEL_82;
    }

    if (v10 == 2)
    {
      v55 = v72.f64[0];
      if (v53 < v52)
      {
        goto LABEL_82;
      }

      v56 = v42 + v70 * v53;
      if (v56 <= 0.0 && v48 != v49)
      {
        goto LABEL_86;
      }

      v58 = pow(v56, __y);
      v59 = v72.f64[0];
      goto LABEL_81;
    }

    if (v10 != 3)
    {
      if (v53 < v72.f64[1])
      {
        v55 = v50.f64[1] + v72.f64[0] * v53;
        goto LABEL_82;
      }

      v61 = v42 + v70 * v53;
      if (v61 <= 0.0 && v48 != v49)
      {
        goto LABEL_86;
      }

      v58 = pow(v61, __y);
      v59 = v50.f64[0];
LABEL_81:
      v55 = v59 + v58;
      goto LABEL_82;
    }

    if (v53 >= v72.f64[1])
    {
      goto LABEL_69;
    }

    v55 = v72.f64[0] * v53;
LABEL_82:
    if (fabs(v55) == INFINITY || v55 >= 0.0 && (v54 = v55, v55 > 1.0))
    {
      v54 = 1.0;
    }

LABEL_86:
    v63 = vcvtmd_s64_f64(v54 * 16777216.0 + 0.5);
    *v51 = v63;
    v64 = 0x1000000;
    if (v63 <= 0x1000000)
    {
      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v64 = 0;
    }

    *v51 = v64;
LABEL_90:
    v47 += 4096;
    ++v51;
  }

  while (v47 != 16781312);
  if (a4)
  {
    if (a4 == 1)
    {
      v65 = a3[2056];
      memmove(a3 + 2058, a3 + 2057, 0x1FD8uLL);
      a3[2057] = v65;
      a3[2055] = v65;
    }
  }

  else
  {
    v66 = a3[4096];
    v67 = a3[1] - *a3;
    if (v67 < 0)
    {
      v67 = *a3 - a3[1];
    }

    if (v67 <= 0xFFF)
    {
      a3[1] = *a3;
    }

    v68 = v66 - a3[4095];
    if (v68 < 0)
    {
      v68 = a3[4095] - v66;
    }

    if (v68 <= 0xFFF)
    {
      a3[4095] = v66;
    }
  }
}