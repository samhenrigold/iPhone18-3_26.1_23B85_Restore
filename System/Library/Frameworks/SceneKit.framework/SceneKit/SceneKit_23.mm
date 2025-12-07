CFDictionaryRef *__EntryForEntryNumber(uint64_t a1, CFNumberRef number, void *a3)
{
  if (number)
  {
    valuePtr = 0;
    Value = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    if (Value)
    {
      RemappedID = C3DLibraryGetRemappedID(a1, valuePtr, a3);
      return C3DLibraryGetEntry(a1, a3, RemappedID);
    }

    v10 = scn_default_log(Value, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __EntryForEntryNumber_cold_1();
    }
  }

  else
  {
    v9 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __EntryForEntryNumber_cold_2();
    }
  }

  return 0;
}

__CFArray *_C3DSkinnerCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 1;
  valuePtr = 5;
  Attributes = C3DEntityGetAttributes(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v9 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v5, @"name", @"attributes");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v59 = 2;
  valuePtr = 5;
  Attributes = a1 + 72;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v13 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v10, @"name", @"skin");
  CFDictionarySetValue(v10, @"type", v11);
  CFDictionarySetValue(v10, @"address", v13);
  CFDictionarySetValue(v10, @"semantic", v12);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v12);
  CFRelease(v10);
  CFRelease(v13);
  CFRelease(v11);
  v14 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 2;
  valuePtr = 5;
  Attributes = a1 + 80;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v17 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v14, @"name", @"skeleton");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 2;
  valuePtr = 5;
  Attributes = a1 + 88;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v22 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v19, @"name", @"joints");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x277CBF150]);
  v59 = 0;
  valuePtr = 3;
  Attributes = a1 + 192;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v26 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v23, @"name", @"meshCreated");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 0;
  valuePtr = 3;
  Attributes = a1 + 193;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v30 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v27, @"name", @"bboxDirty");
  CFDictionarySetValue(v27, @"type", v28);
  CFDictionarySetValue(v27, @"address", v30);
  CFDictionarySetValue(v27, @"semantic", v29);
  CFArrayAppendValue(Mutable, v27);
  CFRelease(v29);
  CFRelease(v27);
  CFRelease(v30);
  CFRelease(v28);
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 0;
  valuePtr = 2;
  Attributes = a1 + 208;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v34 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v31, @"name", @"calculationMode");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v59 = 2;
  valuePtr = 5;
  Attributes = a1 + 200;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
  v38 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v35, @"name", @"skinnedMesh");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  v57 = Mutable;
  CFArrayAppendValue(Mutable, v35);
  v39 = a1;
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  v40 = *(a1 + 88);
  if (v40)
  {
    Count = CFArrayGetCount(v40);
    if (Count >= 1)
    {
      v42 = 0;
      v43 = 0;
      v56 = Count;
      v44 = MEMORY[0x277CBF138];
      do
      {
        v45 = CFStringCreateWithFormat(0, 0, @"verticesJointsMatrices[%d]", v43);
        v46 = CFDictionaryCreateMutable(0, 4, v44, MEMORY[0x277CBF150]);
        v59 = 0;
        valuePtr = 11;
        Attributes = *(v39 + 112) + v42;
        v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v48 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
        v49 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
        CFDictionarySetValue(v46, @"name", v45);
        CFDictionarySetValue(v46, @"type", v47);
        CFDictionarySetValue(v46, @"address", v49);
        CFDictionarySetValue(v46, @"semantic", v48);
        CFArrayAppendValue(v57, v46);
        CFRelease(v48);
        CFRelease(v46);
        CFRelease(v49);
        CFRelease(v47);
        CFRelease(v45);
        v50 = CFStringCreateWithFormat(0, 0, @"normalsJointsMatrices[%d]", v43);
        v51 = CFDictionaryCreateMutable(0, 4, v44, MEMORY[0x277CBF150]);
        v59 = 0;
        valuePtr = 11;
        Attributes = *(v39 + 120) + v42;
        v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v53 = CFNumberCreate(0, kCFNumberSInt32Type, &v59);
        v54 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
        CFDictionarySetValue(v51, @"name", v50);
        CFDictionarySetValue(v51, @"type", v52);
        CFDictionarySetValue(v51, @"address", v54);
        CFDictionarySetValue(v51, @"semantic", v53);
        CFArrayAppendValue(v57, v51);
        CFRelease(v53);
        CFRelease(v51);
        CFRelease(v54);
        CFRelease(v52);
        CFRelease(v50);
        ++v43;
        v42 += 64;
      }

      while (v56 != v43);
    }
  }

  return v57;
}

uint64_t _C3DSkinnerEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

uint64_t _C3DSkinnerSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return C3DSearchByID(v6, a2);
}

void _AppendC3DMatrix4x4(__CFString *a1, const __CFString *a2, float *a3)
{
  CFStringAppend(a1, a2);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", *a3, a3[1], a3[2], a3[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a3[4], a3[5], a3[6], a3[7]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a3[8], a3[9], a3[10], a3[11]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a3[12], a3[13], a3[14], a3[15]);
}

uint64_t _C3DSkinEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

uint64_t C3DSkinGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DSkinGetTypeID_onceToken != -1)
  {
    C3DSkinGetTypeID_cold_1();
  }

  return C3DSkinGetTypeID_typeID;
}

double __C3DSkinGetTypeID_block_invoke()
{
  C3DSkinGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740460 = kC3DC3DSkinContextClassSerializable;
  unk_281740470 = *&off_282DC6420;
  qword_281740418 = _C3DSkinCopyInstanceVariables;
  result = *&kC3DC3DSkinContextClassSceneLink;
  unk_281740430 = kC3DC3DSkinContextClassSceneLink;
  unk_281740440 = unk_282DC6440;
  qword_281740450 = qword_282DC6450;
  unk_281740458 = _C3DSkinSearchByID;
  return result;
}

uint64_t C3DSkinCreate(uint64_t a1, uint64_t a2)
{
  if (C3DSkinGetTypeID_onceToken != -1)
  {
    C3DSkinGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSkinGetTypeID_typeID, 224);
  C3DMatrix4x4MakeIdentity(Instance + 112);
  return Instance;
}

uint64_t C3DSkinCreateWith(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = a2;
  v9 = C3DSkinCreate(a1, a2);
  if (a4)
  {
    Name = C3DGeometryGetName(a4, v8);
    C3DEntitySetName(v9, Name);
  }

  *(v9 + 64) = v6;
  *(v9 + 80) = a1;
  *(v9 + 96) = C3DMalloc(v6 << 6);
  *(v9 + 104) = C3DMalloc(v6 << 6);
  v11 = *(v9 + 88);
  if (v11 != a4)
  {
    if (v11)
    {
      CFRelease(v11);
      *(v9 + 88) = 0;
    }

    if (a4)
    {
      v12 = CFRetain(a4);
    }

    else
    {
      v12 = 0;
    }

    *(v9 + 88) = v12;
  }

  if (v6 == 1)
  {
    *(v9 + 72) = 0;
    *(v9 + 184) = 0;
    *(v9 + 192) = 0;
    *(v9 + 176) = 0;
  }

  else
  {
    v13 = 8 * a1;
    if (a3)
    {
      *(v9 + 72) = a3;
      *(v9 + 176) = C3DMalloc(v13 + 8);
      *(v9 + 184) = C3DMalloc(2 * a3);
      *(v9 + 192) = C3DMalloc(4 * a3);
    }

    else
    {
      *(v9 + 72) = 0;
      *(v9 + 176) = C3DMalloc(v13 + 8);
      *(v9 + 184) = C3DMalloc(0);
      *(v9 + 192) = 0;
    }
  }

  return v9;
}

uint64_t C3DSkinCreateWithSkinnableMesh(uint64_t a1, int a2)
{
  PositionSource = C3DMeshGetPositionSource(a1, 1);
  Count = C3DMeshSourceGetCount(PositionSource, v5);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 5, 0, 1);
  if (SourceWithSemanticAtIndex)
  {
    v53 = 0u;
    v54 = 0u;
    Content = C3DMeshSourceGetContent(SourceWithSemanticAtIndex, v8, &v53);
    v11 = C3DSkinCreate(Content, v10);
    v12 = C3DMeshGetSourceWithSemanticAtIndex(a1, 6, 0, 1);
    v14 = v12;
    if (!v12)
    {
      *(v11 + 200) = 1;
      v20 = Count;
      goto LABEL_33;
    }

    v51 = 0u;
    v52 = 0u;
    v15 = C3DMeshSourceGetContent(v12, v13, &v51);
    v17 = BYTE7(v52);
    if (BYTE7(v52) == 1 || BYTE7(v52) == 21)
    {
      if (v54)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          v22 = (v51 + v18);
          if (BYTE7(v52) == 1)
          {
            if (BYTE8(v52))
            {
              v23 = 0;
              v24 = BYTE8(v52);
              do
              {
                v25 = *v22++;
                if (v25 > 0.0)
                {
                  ++v23;
                }

                --v24;
              }

              while (v24);
              goto LABEL_21;
            }
          }

          else if (BYTE8(v52))
          {
            v23 = 0;
            v26 = BYTE8(v52);
            do
            {
              v27 = *v22;
              v22 = (v22 + 1);
              if (v27)
              {
                ++v23;
              }

              --v26;
            }

            while (v26);
            goto LABEL_21;
          }

          v23 = 0;
LABEL_21:
          if (v21 <= v23)
          {
            v21 = v23;
          }

          v20 += v23;
          ++v19;
          v18 += BYTE6(v52);
          if (v19 == v54)
          {
            goto LABEL_30;
          }
        }
      }

      LOWORD(v21) = 0;
      v20 = 0;
LABEL_30:
      *(v11 + 200) = v21;
    }

    else
    {
      v28 = scn_default_log(v15, v16);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        C3DSkinCreateWithSkinnableMesh_cold_1();
      }

      CFRelease(v11);
      v20 = 0;
    }

    if (v17 == 1 || v17 == 21)
    {
LABEL_33:
      *(v11 + 176) = C3DMalloc(8 * Count + 8);
      *(v11 + 64) = a2;
      *(v11 + 72) = v20;
      *(v11 + 80) = Count;
      v29 = a2 << 6;
      *(v11 + 96) = C3DMalloc(v29);
      *(v11 + 104) = C3DMalloc(v29);
      *(v11 + 184) = C3DMalloc(2 * v20);
      v30 = C3DMalloc(4 * v20);
      *(v11 + 192) = v30;
      if (v14)
      {
        v51 = 0u;
        v52 = 0u;
        C3DMeshSourceGetContent(v14, v31, &v51);
        v33 = *(v11 + 176);
        if (Count >= 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = v53;
          v37 = BYTE6(v54);
          v38 = BYTE7(v52);
          v39 = v51;
          v40 = BYTE6(v52);
          v41 = BYTE8(v52);
          do
          {
            *(v33 + 8 * v35) = v34;
            if (v38 == 1)
            {
              if (v41)
              {
                for (i = 0; i != v41; ++i)
                {
                  LODWORD(v32) = *&v39[4 * i];
                  if (*&v32 > 0.0)
                  {
                    *(*(v11 + 184) + 2 * v34) = v36[i];
                    *(*(v11 + 192) + 4 * v34++) = LODWORD(v32);
                  }
                }
              }
            }

            else if (v41)
            {
              v43 = v39;
              v44 = v36;
              v45 = v41;
              do
              {
                if (*v43)
                {
                  *(*(v11 + 184) + 2 * v34) = *v44;
                  LOBYTE(v32) = *v43;
                  v32 = *&v32 / 255.0;
                  *&v32 = v32;
                  *(*(v11 + 192) + 4 * v34++) = LODWORD(v32);
                }

                ++v44;
                ++v43;
                --v45;
              }

              while (v45);
            }

            ++v35;
            v36 += v37;
            v39 += v40;
          }

          while (v35 != Count);
          goto LABEL_56;
        }
      }

      else
      {
        v33 = *(v11 + 176);
        if (Count >= 1)
        {
          v46 = 0;
          v47 = v53;
          v48 = BYTE6(v54);
          v49 = *(v11 + 184);
          do
          {
            *(v33 + 8 * v46) = v46;
            *(v49 + 2 * v46) = *v47;
            v30[v46] = 1065353216;
            v47 += v48;
            ++v46;
          }

          while (Count != v46);
          v34 = Count;
          goto LABEL_56;
        }
      }

      v34 = 0;
LABEL_56:
      *(v33 + 8 * Count) = v34;
      return v11;
    }
  }

  return 0;
}

void __computeInverseBindMatricesMultipliedByShapeMatrix(uint64_t a1)
{
  if (*(a1 + 104) && *(a1 + 64) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      C3DMatrix4x4Mult(a1 + 112, (*(a1 + 96) + v2), (*(a1 + 104) + v2));
      ++v3;
      v2 += 64;
    }

    while (v3 < *(a1 + 64));
  }
}

void C3DSkinCopyInverseBindMatricesPtr(uint64_t a1, void *__src)
{
  if (!*(a1 + 96))
  {
    v4 = scn_default_log(a1, __src);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSkinCopyInverseBindMatricesPtr_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  memcpy(*(a1 + 96), __src, *(a1 + 64) << 6);
  __computeInverseBindMatricesMultipliedByShapeMatrix(a1);
}

void C3DSkinPackWeightAndIndices(size_t *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1[9];
  if (v1)
  {
    v3 = a1[10];
    if (v1 != v3)
    {
      v4 = a1[22];
      v5 = a1[23];
      v6 = a1[24];
      v7 = malloc_type_calloc(2uLL, v1, 0x31D2FBB9uLL);
      v8 = malloc_type_calloc(4uLL, a1[9], 0x32C18A6DuLL);
      v26 = &v26;
      v27 = a1;
      v30 = v4;
      v9 = *v4;
      MEMORY[0x28223BE20](v8);
      v11 = &v26 - v10;
      if (v3 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = v30;
        v28 = v3;
        v29 = v8;
        do
        {
          v15 = v14[++v13];
          v16 = (v15 - v9);
          if (v16 >= 1)
          {
            v31 = v14[v13];
            v32 = v13;
            for (i = 0; i != v16; ++i)
            {
              v18 = 0;
              if (i)
              {
                while (*(v6 + 4 * v9 + 4 * i) <= *(v6 + 4 * v9 + 4 * *&v11[8 * v18]))
                {
                  if (i == ++v18)
                  {
                    v18 = i;
                    goto LABEL_14;
                  }
                }
              }

              if (i != v18)
              {
                memmove(&v11[8 * v18 + 8], &v11[8 * v18], 8 * (i - v18));
              }

LABEL_14:
              *&v11[8 * v18] = i;
            }

            v19 = v11;
            v3 = v28;
            v8 = v29;
            v14 = v30;
            v15 = v31;
            v13 = v32;
            do
            {
              v20 = *v19++;
              v21 = v20 + v9;
              v22 = *(v6 + 4 * (v20 + v9));
              if (v22 <= 0.00000011921)
              {
                break;
              }

              v23 = *(v5 + 2 * v21);
              v8[v12] = v22;
              v7[v12++] = v23;
              --v16;
            }

            while (v16);
          }

          v14[v13] = v12;
          v9 = v15;
        }

        while (v13 != v3);
      }

      v24 = v27;
      if (v12 >= v27[9])
      {
        free(v7);
        free(v8);
      }

      else
      {
        free(v27[23]);
        free(v24[24]);
        if (v12)
        {
          v24[23] = malloc_type_realloc(v7, 2 * v12, 0x1000040BDFB0063uLL);
          v25 = malloc_type_realloc(v8, 4 * v12, 0x100004052888210uLL);
        }

        else
        {
          free(v7);
          free(v8);
          v25 = 0;
          v24[23] = 0;
        }

        v24[24] = v25;
        v24[9] = v12;
      }
    }
  }
}

void *C3DSkinGetVertexWeightsPointers(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[22];
  }

  if (a3)
  {
    *a3 = result[23];
  }

  if (a4)
  {
    *a4 = result[24];
  }

  return result;
}

uint64_t C3DSkinGetWeightsCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

__n128 C3DSkinSetDefaultShapeMatrix(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 144) = a2[2];
  *(a1 + 160) = v4;
  *(a1 + 112) = v2;
  *(a1 + 128) = v3;
  __computeInverseBindMatricesMultipliedByShapeMatrix(a1);
  return result;
}

void __CreateIndexedJointsWeightsSourcesIfNeeded(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(result + 224))
  {
    v11 = *(result + 80);
    Mutable = C3DMeshSourceCreateMutable(0, 5, v11, 4, 16);
    C3DMeshSourceMakeImmutable(Mutable);
    v14 = 0;
    if (*(result + 200) >= 2)
    {
      v14 = C3DMeshSourceCreateMutable(0, 6, v11, 4, 21);
      C3DMeshSourceMakeImmutable(v14);
    }

    v20 = 0u;
    v21 = 0u;
    C3DMeshSourceGetContent(Mutable, v13, &v20);
    v18 = 0u;
    v19 = 0u;
    if (v14)
    {
      C3DMeshSourceGetContent(v14, v15, &v18);
    }

    v17[0] = v20;
    v17[1] = v21;
    v16[0] = v18;
    v16[1] = v19;
    C3DSkinFillJointWeightsBuffers(result, v17, v16);
    *(result + 216) = v14;
    *(result + 224) = Mutable;
  }
}

void C3DSkinFillJointWeightsBuffers(void *a1, void **a2, uint64_t *a3)
{
  v4 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v5 = a1[10];
  memset(*a2, 255, 4 * (v5 & 0x3FFFFFFF));
  v7 = *a3;
  if (*a3)
  {
    bzero(v7, v5 * *(a3 + 22));
  }

  if (*(v4 + 4) != v5 || *a3 && *(a3 + 4) != v5)
  {
    v8 = scn_default_log(v7, v6);
    v7 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      C3DSkinFillJointWeightsBuffers_cold_1(v8);
    }
  }

  v9 = a1[22];
  v10 = a1[23];
  v11 = a1[24];
  v68[0] = 0;
  v68[1] = 0;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v53 = v5;
    v50 = v4;
    v51 = a3;
    v54 = v9;
    while (1)
    {
      v59 = v12;
      v15 = *(v9 + 8 * v13);
      if (v15 < 0 || ((v16 = *(v9 + 8 * (v13 + 1)), v17 = a1[9], v15 <= v17) ? (v18 = v16 <= v17) : (v18 = 0), !v18))
      {
        if ((C3DSkinFillJointWeightsBuffers_done & 1) == 0)
        {
          C3DSkinFillJointWeightsBuffers_done = 1;
          v49 = scn_default_log(v7, v6);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            C3DSkinFillJointWeightsBuffers_cold_2();
          }
        }

        return;
      }

      v58 = v13 + 1;
      v19 = *v4;
      v20 = v13 * *(v4 + 22);
      v56 = v16 - v15;
      if (v16 <= v15)
      {
        break;
      }

      v52 = v13;
      v21 = 0;
      v22 = &v19[v20];
      v23 = 0.0;
      v57 = v13 * *(v4 + 22);
      do
      {
        v24 = *(v10 + 2 * v15);
        if (v24 <= 255)
        {
          v25 = *(v11 + 4 * v15);
          if (v25 > 0.0039216)
          {
            if (v21 < 4)
            {
              v22[v21] = v24;
              v69[v21] = v25;
              v23 = v23 + v25;
              ++v21;
            }

            else
            {
              if ((v14 & 1) == 0)
              {
                v26 = v19;
                v27 = v22;
                v28 = scn_default_log(v7, v6);
                v7 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
                v22 = v27;
                v19 = v26;
                v20 = v57;
                if (v7)
                {
                  *buf = 134218752;
                  v61 = v56;
                  v62 = 1024;
                  v63 = 4;
                  v64 = 1024;
                  v65 = v52;
                  v66 = 1024;
                  v67 = 4;
                  _os_log_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_INFO, "Info: Too many influencing joints (%ld > %d) on the vertex #%u, will cap to %d and renormalize", buf, 0x1Eu);
                  v22 = v27;
                  v19 = v26;
                  v20 = v57;
                }
              }

              v29 = 0;
              v30 = v69[0];
              for (i = 1; i != 4; ++i)
              {
                if (v30 > v69[i])
                {
                  v29 = i;
                  v30 = v69[i];
                }
              }

              if (v25 > v30)
              {
                v23 = v25 + (v23 - v30);
                v69[v29] = v25;
                v22[v29] = v24;
              }

              v14 = 1;
            }
          }
        }

        ++v15;
      }

      while (v15 != v16);
      if (v23 > 0.0 && v23 != 1.0 && v21 >= 1)
      {
        v34 = v69;
        v35 = v21;
        do
        {
          *v34 = *v34 / v23;
          ++v34;
          --v35;
        }

        while (v35);
      }

      v4 = v50;
      v36 = v59;
      if (v21 >= 1)
      {
        v37 = *v51;
        if (!*v51)
        {
          goto LABEL_60;
        }

        v38 = 0;
        v39 = 0;
        v40 = v59 * *(v51 + 22);
        do
        {
          v41 = rintf(v69[v38] * 255.0);
          if (v41 >= 255)
          {
            v41 = 255;
          }

          v42 = v41 & ~(v41 >> 31);
          *(v37 + v40 + v38) = v42;
          v39 += v42;
          ++v38;
        }

        while (v21 != v38);
        if (v39 == 255)
        {
          goto LABEL_60;
        }

        v43 = (v37 + v40);
        while (1)
        {
          v44 = v21;
          v45 = v43;
          while (1)
          {
            v46 = *v45;
            if (v39 > 254)
            {
              break;
            }

            if (v46 != 255)
            {
              v47 = 1;
              v48 = 1;
              goto LABEL_58;
            }

LABEL_55:
            ++v45;
            if (!--v44)
            {
              goto LABEL_59;
            }
          }

          if (!*v45)
          {
            goto LABEL_55;
          }

          v48 = -1;
          v47 = -1;
LABEL_58:
          *v45 = v46 + v47;
          v39 += v48;
LABEL_59:
          if (v39 == 255)
          {
LABEL_60:
            ++*(v68 + v21 - 1);
            break;
          }
        }
      }

      if (v21 <= 3)
      {
        goto LABEL_64;
      }

LABEL_65:
      v12 = v36 + 1;
      v13 = v58;
      v9 = v54;
      if (v58 == v53)
      {
        return;
      }
    }

    v21 = 0;
    v36 = v59;
LABEL_64:
    bzero(&v19[v21 + v20], 4 - v21);
    bzero(&v69[v21], 16 - 4 * v21);
    goto LABEL_65;
  }
}

CFTypeRef C3DSkinSetInfluencingMorpher(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 208);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 208) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 208) = result;
  }

  return result;
}

id _C3DSkinCFFinalize(void *a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationSkinWillDie", a1, 0, 1u);
  v5 = a1[12];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[22];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[23];
  if (v9)
  {
    free(v9);
  }

  if (a1[26])
  {
    C3DSkinSetInfluencingMorpher(a1, 0);
  }

  v10 = a1[11];
  if (v10)
  {
    CFRelease(v10);
    a1[11] = 0;
  }

  v11 = a1[28];
  if (v11)
  {
    CFRelease(v11);
    a1[28] = 0;
  }

  v12 = a1[27];
  if (v12)
  {
    CFRelease(v12);
    a1[27] = 0;
  }

  return C3DEntityCFFinalize(a1, v4);
}

__CFString *_C3DSkinCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1, v3);
  CFStringAppendFormat(Mutable, 0, @"<C3DSkin %p name:%@ joint:%d weight:%d vertexCount:%d\n", a1, Name, *(a1 + 64), *(a1 + 72), *(a1 + 80));
  CFStringAppendFormat(Mutable, 0, @"  maxInf:%d morpher:%p\n", *(a1 + 200), *(a1 + 208));
  _AppendC3DMatrix4x4(Mutable, @"defaultShapeMatrix\n", (a1 + 112));
  v5 = *(a1 + 96);
  if (v5)
  {
    _AppendC3DMatrix4x4(Mutable, @"inverseBindMatrix", v5);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

BOOL _C3DSkinInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = C3DEntityInitWithPropertyList(a1, a2);
  if ((v7 & 1) == 0)
  {
    v27 = scn_default_log(v7, v8);
    result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSkinInitWithPropertyList_cold_1();
    return 0;
  }

  if (!a1)
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  Value = CFDictionaryGetValue(a2, @"jointsCount");
  if (!Value)
  {
    v29 = scn_default_log(0, v18);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinInitWithPropertyList_cold_6();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = CFNumberGetValue(Value, kCFNumberShortType, (a1 + 64));
  if (!v19)
  {
    v30 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinInitWithPropertyList_cold_5();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  *(a1 + 96) = C3DMalloc(*(a1 + 64) << 6);
  *(a1 + 104) = C3DMalloc(*(a1 + 64) << 6);
  v21 = CFDictionaryGetValue(a2, @"maxInfluences");
  if (v21)
  {
    v23 = (a1 + 200);
    v24 = CFNumberGetValue(v21, kCFNumberShortType, (a1 + 200));
    if (v24)
    {
      goto LABEL_23;
    }

    v26 = scn_default_log(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = a2;
      _os_log_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_DEFAULT, "Warning: Unable to read the maxInfluences in the skin %@, defaulting to 4. Please re-convert your assets.", &v39, 0xCu);
    }
  }

  else
  {
    v31 = scn_default_log(0, v22);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = a2;
      _os_log_impl(&dword_21BEF7000, v31, OS_LOG_TYPE_DEFAULT, "Warning: No maxInfluences in the skin %@, defaulting to 4. Please re-convert your assets.", &v39, 0xCu);
    }

    v23 = (a1 + 200);
  }

  *v23 = 4;
LABEL_23:
  v32 = CFDictionaryGetValue(a2, @"inverseBindMatrices");
  if (v32)
  {
    C3DInitC3DFloatArrayWithSerializedData(v32, 16 * *(a1 + 64), *(a1 + 96));
    v34 = CFDictionaryGetValue(a2, @"defaultShapeMatrix");
    if (v34)
    {
      C3DInitC3DFloatArrayWithSerializedData(v34, 16, (a1 + 112));
      __computeInverseBindMatricesMultipliedByShapeMatrix(a1);
      return 1;
    }

    v37 = scn_default_log(0, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinInitWithPropertyList_cold_3();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v36 = scn_default_log(0, v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinInitWithPropertyList_cold_4();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

LABEL_30:
  if (!a4)
  {
    return 0;
  }

LABEL_31:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

__CFDictionary *_C3DSkinCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = C3DEntityCopyPropertyList(a1, a2, a3);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  if (v7)
  {
    valuePtr = C3DLibraryGetEntryID(a2, v7);
    v9 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(v6, @"baseMeshID", v9);
    CFRelease(v9);
  }

  v10 = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 80));
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  CFDictionarySetValue(v6, @"vertexCount", v10);
  CFRelease(v11);
  v12 = CFNumberCreate(0, kCFNumberShortType, (a1 + 64));
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = v12;
  CFDictionarySetValue(v6, @"jointsCount", v12);
  CFRelease(v13);
  v14 = CFNumberCreate(0, kCFNumberCFIndexType, (a1 + 72));
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = v14;
  CFDictionarySetValue(v6, @"weightsCount", v14);
  CFRelease(v15);
  v16 = CFNumberCreate(0, kCFNumberShortType, (a1 + 200));
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v16;
  CFDictionarySetValue(v6, @"maxInfluences", v16);
  CFRelease(v17);
  v18 = C3DCreateSerializedDataFromC3DFloatBuffer(*(a1 + 96), 16 * *(a1 + 64));
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  CFDictionarySetValue(v6, @"inverseBindMatrices", v18);
  CFRelease(v19);
  v20 = C3DCreateSerializedDataFromC3DFloatBuffer(a1 + 112, 16);
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = v20;
  CFDictionarySetValue(v6, @"defaultShapeMatrix", v20);
  CFRelease(v21);
  v22 = 4 * v8;
  v23 = C3DMalloc(4 * v8 + 4);
  v25 = v23;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = *(a1 + 176);
    v28 = v8 + 1;
    do
    {
      if (!v27)
      {
        goto LABEL_17;
      }

      if (*(v27 + 8 * v26) >= 0x80000000)
      {
        v29 = scn_default_log(v23, v24);
        v23 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
        if (v23)
        {
          _C3DSkinCopyPropertyList_cold_1(&buf, v45, v29);
        }
      }

      v27 = *(a1 + 176);
      if (v27)
      {
        v30 = *(v27 + 8 * v26);
      }

      else
      {
LABEL_17:
        LODWORD(v30) = 0;
      }

      *&v25[4 * v26++] = v30;
    }

    while (v28 != v26);
    v31 = CFDataCreate(0, v25, v22 + 4);
    goto LABEL_21;
  }

  v31 = CFDataCreate(0, v23, v22 + 4);
  if (v25)
  {
LABEL_21:
    free(v25);
  }

  if (!v31 || (CFDictionarySetValue(v6, @"vertexWeightIndices", v31), CFRelease(v31), (v32 = CFDataCreate(0, *(a1 + 184), 2 * *(a1 + 72))) == 0) || (v33 = v32, CFDictionarySetValue(v6, @"jointsForVertexWeights", v32), CFRelease(v33), v34 = 4 * *(a1 + 72), v35 = C3DMalloc(v34), v36 = *(a1 + 192), v37 = *(a1 + 72), v39 = C3DSizeOfBaseType(1, v38), v41 = C3DSizeOfBaseType(1, v40), !C3DConvertToPlatformIndependentData(v36, v35, v34, v34, 1, 1, v37, v39, v41)))
  {
LABEL_26:
    v42 = v6;
    v6 = 0;
    goto LABEL_27;
  }

  v42 = CFDataCreateWithBytesNoCopy(0, v35, v34, 0);
  CFDictionarySetValue(v6, @"vertexWeights", v42);
LABEL_27:
  CFRelease(v42);
  return v6;
}

uint64_t _C3DSkinFinalizeDeserialization(void *a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"baseMeshID");
  if (Value)
  {
    valuePtr = 0;
    v17 = CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
    if (!v17)
    {
      return 0;
    }

    v19 = valuePtr;
    TypeID = C3DGeometryGetTypeID(v17, v18);
    RemappedID = C3DLibraryGetRemappedID(a2, v19, TypeID);
    if (!RemappedID)
    {
      v44 = scn_default_log(0, v22);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_2();
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      if (!*a4)
      {
        *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
      }

      return 0;
    }

    v23 = RemappedID;
    v24 = C3DGeometryGetTypeID(RemappedID, v22);
    Entry = C3DLibraryGetEntry(a2, v24, v23);
    v27 = Entry;
    if (Entry)
    {
      Entry = CFRetain(Entry);
    }

    a1[11] = Entry;
    Mesh = C3DGeometryGetMesh(v27, v26);
    PositionSource = C3DMeshGetPositionSource(Mesh, 1);
    Count = C3DMeshSourceGetCount(PositionSource, v30);
    a1[10] = Count;
  }

  else
  {
    v32 = CFDictionaryGetValue(theDict, @"vertexCount");
    if (!CFNumberGetValue(v32, kCFNumberLongType, a1 + 10))
    {
      return 0;
    }

    Count = a1[10];
  }

  v33 = CFDictionaryGetValue(theDict, @"weightsCount");
  if (!v33 || (v33 = CFNumberGetValue(v33, kCFNumberCFIndexType, a1 + 9), !v33))
  {
    v42 = scn_default_log(v33, v34);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinFinalizeDeserialization_cold_6();
    }

    goto LABEL_21;
  }

  a1[22] = C3DMalloc(8 * Count + 8);
  a1[23] = C3DMalloc(2 * a1[9]);
  a1[24] = C3DMalloc(4 * a1[9]);
  v35 = CFDictionaryGetValue(theDict, @"vertexWeightIndices");
  if (!v35)
  {
    return 0;
  }

  v36 = v35;
  v37 = C3DMalloc(4 * Count + 4);
  v66.length = 4 * Count + 4;
  v66.location = 0;
  CFDataGetBytes(v36, v66, v37);
  if (Count < 0)
  {
    if (!v37)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v38 = a1[22];
    v39 = Count + 1;
    v40 = v37;
    do
    {
      v41 = *v40;
      v40 += 4;
      *v38++ = v41;
      --v39;
    }

    while (v39);
  }

  free(v37);
LABEL_32:
  v46 = CFDictionaryGetValue(theDict, @"jointsForVertexWeights");
  if (v46)
  {
    v67.length = 2 * a1[9];
    v67.location = 0;
    CFDataGetBytes(v46, v67, a1[23]);
    v48 = CFDictionaryGetValue(theDict, @"vertexWeights");
    if (v48)
    {
      v50 = v48;
      BytePtr = CFDataGetBytePtr(v48);
      v52 = a1[24];
      Length = CFDataGetLength(v50);
      v54 = CFDataGetLength(v50);
      v55 = a1[9];
      v43 = 1;
      v57 = C3DSizeOfBaseType(1, v56);
      v59 = C3DSizeOfBaseType(1, v58);
      v60 = C3DConvertFromPlatformIndependentData(BytePtr, v52, Length, v54, 1u, 1, v55, v57, v59);
      if (v60)
      {
        return v43;
      }

      v62 = scn_default_log(v60, v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_3();
      }
    }

    else
    {
      v64 = scn_default_log(0, v49);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinFinalizeDeserialization_cold_4();
      }
    }
  }

  else
  {
    v63 = scn_default_log(0, v47);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinFinalizeDeserialization_cold_5();
    }
  }

LABEL_21:
  if (!a4 || *a4)
  {
    return 0;
  }

  v43 = 0;
  *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
  return v43;
}

void *_C3DSkinFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    C3DLibraryAddEntry(a2, v14);
    C3DFillLibraryForSerialization(*(a1 + 88), a2, a3);
  }

  result = *(a1 + 208);
  if (result)
  {
    return C3DFillLibraryForSerialization(result, a2, a3);
  }

  return result;
}

__CFArray *_C3DSkinCopyInstanceVariables(void *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF150];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 14;
  v57 = a1 + 8;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v4, @"name", @"jointsCount");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v3);
  v58 = 0;
  valuePtr = 2;
  v57 = a1 + 9;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v8, @"name", @"weightsCount");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 2;
  v57 = a1 + 10;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v12, @"name", @"vertexCount");
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  if (a1[12])
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v58 = 0;
    valuePtr = 11;
    v57 = a1[12];
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v57);
    CFDictionarySetValue(v16, @"name", @"inverseBindMatrices");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
  }

  v20 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 11;
  v57 = a1 + 14;
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v23 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v20, @"name", @"defaultShapeMatrix");
  CFDictionarySetValue(v20, @"type", v21);
  CFDictionarySetValue(v20, @"address", v23);
  CFDictionarySetValue(v20, @"semantic", v22);
  CFArrayAppendValue(Mutable, v20);
  CFRelease(v22);
  CFRelease(v20);
  CFRelease(v23);
  CFRelease(v21);
  v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 0;
  valuePtr = 14;
  v57 = a1 + 25;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v27 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v24, @"name", @"maxInfluencesPerVertex");
  CFDictionarySetValue(v24, @"type", v25);
  CFDictionarySetValue(v24, @"address", v27);
  CFDictionarySetValue(v24, @"semantic", v26);
  CFArrayAppendValue(Mutable, v24);
  CFRelease(v26);
  CFRelease(v24);
  CFRelease(v27);
  CFRelease(v25);
  v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v58 = 2;
  valuePtr = 5;
  v57 = a1 + 26;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v57);
  CFDictionarySetValue(v28, @"name", @"influencingMorpher");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  theArray = Mutable;
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = a1;
  if (a1[22])
  {
    v33 = a1[10];
    if (v33 >= 1)
    {
      v34 = 0;
      for (i = 0; i != v33; ++i)
      {
        v36 = CFStringCreateWithFormat(0, 0, @"vertexWeightIndices[%d]", i);
        v37 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v58 = 0;
        valuePtr = 2;
        v57 = (v32[22] + v34);
        v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
        v40 = CFNumberCreate(0, kCFNumberLongType, &v57);
        CFDictionarySetValue(v37, @"name", v36);
        CFDictionarySetValue(v37, @"type", v38);
        CFDictionarySetValue(v37, @"address", v40);
        CFDictionarySetValue(v37, @"semantic", v39);
        CFArrayAppendValue(theArray, v37);
        CFRelease(v39);
        CFRelease(v37);
        CFRelease(v40);
        CFRelease(v38);
        CFRelease(v36);
        v34 += 8;
      }
    }
  }

  if (v32[24] && v32[23] && v32[9] >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v55 = v32[9];
    do
    {
      v44 = CFStringCreateWithFormat(0, 0, @"vertexWeights[%d]", v43);
      v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v58 = 0;
      valuePtr = 1;
      v57 = (v32[24] + v41);
      v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
      v48 = CFNumberCreate(0, kCFNumberLongType, &v57);
      CFDictionarySetValue(v45, @"name", v44);
      CFDictionarySetValue(v45, @"type", v46);
      CFDictionarySetValue(v45, @"address", v48);
      CFDictionarySetValue(v45, @"semantic", v47);
      CFArrayAppendValue(theArray, v45);
      CFRelease(v47);
      CFRelease(v45);
      CFRelease(v48);
      CFRelease(v46);
      CFRelease(v44);
      v49 = CFStringCreateWithFormat(0, 0, @"jointsForVertexWeights[%d]", v43);
      v50 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v58 = 0;
      valuePtr = 14;
      v57 = (v32[23] + v42);
      v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v52 = CFNumberCreate(0, kCFNumberSInt32Type, &v58);
      v53 = CFNumberCreate(0, kCFNumberLongType, &v57);
      CFDictionarySetValue(v50, @"name", v49);
      CFDictionarySetValue(v50, @"type", v51);
      CFDictionarySetValue(v50, @"address", v53);
      CFDictionarySetValue(v50, @"semantic", v52);
      CFArrayAppendValue(theArray, v50);
      CFRelease(v52);
      CFRelease(v50);
      CFRelease(v53);
      CFRelease(v51);
      CFRelease(v49);
      ++v43;
      v42 += 2;
      v41 += 4;
    }

    while (v55 != v43);
  }

  return theArray;
}

uint64_t _C3DSkinSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 208);

  return C3DSearchByID(v6, a2);
}

const void *C3DIOCreateUnzippedData(uint64_t a1)
{
  v1 = [[C3DIONSZipFileArchive alloc] initWithData:a1 options:0 error:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [(C3DIONSZipFileArchive *)v1 entryNames];
  if ([v3 count])
  {
    v4 = -[C3DIONSZipFileArchive contentsForEntryName:](v2, "contentsForEntryName:", [v3 objectAtIndex:0]);
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

const void *C3DIOCreateZippedData(uint64_t a1)
{
  v2 = [C3DIONSZipFileArchive alloc];
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:@"contents"];
  v4 = -[C3DIONSZipFileArchive initWithEntryNames:contents:properties:options:](v2, "initWithEntryNames:contents:properties:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObject:a1 forKey:@"contents"], 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(C3DIONSZipFileArchive *)v4 archiveData];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  return v7;
}

uint64_t _openFile(void *a1)
{
  memset(&v6, 0, sizeof(v6));
  v1 = [a1 fileSystemRepresentation];
  if (!stat(v1, &v6) && (v6.st_mode & 0xF000) == 0x8000 && v6.st_size >= 1)
  {
    v3 = open(v1, 0, 511);
    if ((v3 & 0x80000000) == 0)
    {
      v4 = v3;
      if (!fstat(v3, &v6) && (v6.st_mode & 0xF000) == 0x8000 && v6.st_size >= 1)
      {
        return v4;
      }

      close(v4);
    }
  }

  return -1;
}

C3D::RenderPass *C3D::HDRFrameLuminancePass::HDRFrameLuminancePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC6468;
  *(result + 30) = a4;
  return result;
}

uint64_t C3D::HDRFrameLuminancePass::setup(C3D::HDRFrameLuminancePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "FrameLuminance";
  *(result + 65) = 0;
  *(result + 28) = 25;
  *(result + 16) = 16777472;
  *(result + 30) = 9;
  return result;
}

void C3D::HDRFrameLuminancePass::compile(C3D::HDRFrameLuminancePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  v5 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v4);
  *(this + 31) = v5;
  if (!v5)
  {
    operator new();
  }
}

uint64_t C3D::HDRFrameLuminancePass::execute(C3D::Pass *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 31) + 16 :a2) detail:"state" :{0x3F8000003F800000, 0}NSRetainFct];
  if (*(v3 + 3376) != v4)
  {
    *(v3 + 3376) = v4;
    [*(v3 + 3392) setRenderPipelineState:v4];
  }

  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v5, 0);
  SCNMTLRenderCommandEncoder::setFragmentBuffer(v3, *(*(a1 + 30) + 40), *(*(a1 + 30) + 48), 0);
  SCNMTLRenderCommandEncoder::setVertexBytes(v3, &v8, 0x10uLL, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3, v6);
}

void C3D::HDRFrameLuminancePassResource::~HDRFrameLuminancePassResource(C3D::HDRFrameLuminancePassResource *this)
{
  *this = &unk_282DC64D8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC64D8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

BOOL _C3DSourceAccessorInitWithPropertyList(_WORD *a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  if (!a2)
  {
    return 0;
  }

  IsDictionary = C3DCFTypeIsDictionary(a2);
  if ((IsDictionary & 1) == 0)
  {
    v24 = scn_default_log(IsDictionary, v8);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSourceAccessorInitWithPropertyList_cold_1(v24);
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"componentsType");
  if (Value && (valuePtr = 0, Value = CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr), a1[12] = valuePtr, (Value & 1) != 0))
  {
    v11 = CFDictionaryGetValue(a2, @"valuesCount");
    if (v11 && (v11 = CFNumberGetValue(v11, kCFNumberCFIndexType, a1 + 16), (v11 & 1) != 0))
    {
      v13 = CFDictionaryGetValue(a2, @"componentsPerValue");
      if (v13 && (valuePtr = 0, v13 = CFNumberGetValue(v13, kCFNumberCFIndexType, &valuePtr), a1[13] = valuePtr, (v13 & 1) != 0))
      {
        v15 = CFDictionaryGetValue(a2, @"stride");
        if (v15 && (v15 = CFNumberGetValue(v15, kCFNumberCFIndexType, a1 + 20), (v15 & 1) != 0))
        {
          v17 = CFDictionaryGetValue(a2, @"offset");
          if (v17)
          {
            v17 = CFNumberGetValue(v17, kCFNumberCFIndexType, a1 + 24);
            if (v17)
            {
              v19 = CFDictionaryGetValue(a2, @"padding");
              if (v19)
              {
                v20 = CFNumberGetValue(v19, kCFNumberCFIndexType, a1 + 28);
                if ((v20 & 1) == 0)
                {
                  v22 = scn_default_log(v20, v21);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    _C3DSourceAccessorInitWithPropertyList_cold_2();
                    if (!a4)
                    {
                      return 0;
                    }

                    goto LABEL_35;
                  }

                  goto LABEL_34;
                }
              }

              else
              {
                *(a1 + 7) = 0;
              }

              return 1;
            }
          }

          v29 = scn_default_log(v17, v18);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorInitWithPropertyList_cold_3();
            if (!a4)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v28 = scn_default_log(v15, v16);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorInitWithPropertyList_cold_3();
            if (!a4)
            {
              return 0;
            }

            goto LABEL_35;
          }
        }
      }

      else
      {
        v27 = scn_default_log(v13, v14);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          _C3DSourceAccessorInitWithPropertyList_cold_3();
          if (!a4)
          {
            return 0;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      v26 = scn_default_log(v11, v12);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        _C3DSourceAccessorInitWithPropertyList_cold_6();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }
  }

  else
  {
    v25 = scn_default_log(Value, v10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorInitWithPropertyList_cold_7();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  if (!a4)
  {
    return 0;
  }

LABEL_35:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

__CFDictionary *_C3DSourceAccessorCopyPropertyList(uint64_t a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  LODWORD(valuePtr) = *(a1 + 24);
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v6)
  {
    v14 = scn_default_log(0, v7);
    v12 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      _C3DSourceAccessorCopyPropertyList_cold_4();
    }

    goto LABEL_22;
  }

  v8 = v6;
  CFDictionaryAddValue(Mutable, @"componentsType", v6);
  CFRelease(v8);
  if (*(a1 + 32) >= 0x80000000)
  {
    v11 = scn_default_log(v9, v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      _C3DSourceAccessorCopyPropertyList_cold_3();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 32);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    goto LABEL_22;
  }

  v15 = v12;
  CFDictionaryAddValue(Mutable, @"valuesCount", v12);
  CFRelease(v15);
  LODWORD(valuePtr) = *(a1 + 26);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    goto LABEL_22;
  }

  v16 = v12;
  CFDictionaryAddValue(Mutable, @"componentsPerValue", v12);
  CFRelease(v16);
  LODWORD(valuePtr) = *(a1 + 40);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    goto LABEL_22;
  }

  v17 = v12;
  CFDictionaryAddValue(Mutable, @"stride", v12);
  CFRelease(v17);
  if (*(a1 + 48) >> 31)
  {
    v20 = scn_default_log(v18, v19);
    v12 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      _C3DSourceAccessorCopyPropertyList_cold_2();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 48);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
    goto LABEL_22;
  }

  v21 = v12;
  CFDictionaryAddValue(Mutable, @"offset", v12);
  CFRelease(v21);
  if (*(a1 + 56) >> 31)
  {
    v24 = scn_default_log(v22, v23);
    v12 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      _C3DSourceAccessorCopyPropertyList_cold_1();
    }

    goto LABEL_22;
  }

  LODWORD(valuePtr) = *(a1 + 56);
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v12)
  {
LABEL_22:
    v30 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorCopyPropertyList_cold_5();
    }

    CFRelease(Mutable);
    return 0;
  }

  v25 = v12;
  CFDictionaryAddValue(Mutable, @"padding", v12);
  CFRelease(v25);
  if (a2)
  {
    valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 16));
    v26 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(Mutable, @"sourceID", v26);
    CFRelease(v26);
  }

  v27 = CFGetTypeID(*(a1 + 16));
  StringForType = C3DLibraryGetStringForType(v27, v28);
  CFDictionaryAddValue(Mutable, @"sourceTypeID", StringForType);
  return Mutable;
}

uint64_t _C3DSourceAccessorFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (theDict)
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(theDict, @"sourceID");
    if (Value && (Value = CFNumberGetValue(Value, kCFNumberLongType, &valuePtr), Value))
    {
      TypeForString = CFDictionaryGetValue(theDict, @"sourceTypeID");
      if (TypeForString && (TypeForString = C3DLibraryGetTypeForString(TypeForString)) != 0)
      {
        v12 = TypeForString;
        RemappedID = C3DLibraryGetRemappedID(a2, valuePtr, TypeForString);
        if (RemappedID)
        {
          v15 = RemappedID;
          Entry = C3DLibraryGetEntry(a2, v12, RemappedID);
          if (Entry)
          {
            C3DSourceAccessorSetSource(a1, Entry);
            return 1;
          }

          v24 = scn_default_log(0, v17);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorFinalizeDeserialization_cold_1(v15, v24);
          }
        }

        else
        {
          v23 = scn_default_log(0, v14);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            _C3DSourceAccessorFinalizeDeserialization_cold_2(v23);
          }
        }
      }

      else
      {
        v21 = scn_default_log(TypeForString, v11);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          _C3DSourceAccessorFinalizeDeserialization_cold_3();
        }
      }
    }

    else
    {
      v19 = scn_default_log(Value, v9);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _C3DSourceAccessorFinalizeDeserialization_cold_4();
      }
    }
  }

  else
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DSourceAccessorFinalizeDeserialization_cold_5();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  if (!a4)
  {
    return 0;
  }

LABEL_17:
  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void C3DSourceAccessorSetSource(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = a2;
  if (a2)
  {
    OwnData = C3DGenericSourceGetOwnData(a2, a2);
    if (OwnData)
    {
      Length = CFDataGetLength(OwnData);
      v7 = Length;
      if (Length || *(a1 + 32) && (Length = C3DGenericSourceIsMutable(a2), (Length & 1) == 0))
      {
        if (*(a1 + 48) >= v7)
        {
          v15 = scn_default_log(Length, v6);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 48);
            v17 = *(a1 + 32);
            v21 = 134218496;
            v22 = v7;
            v23 = 2048;
            v24 = v16;
            v25 = 1024;
            v26 = v17;
            _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: C3DSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu) ; count capped to 0 (was %d)", &v21, 0x1Cu);
          }

          *(a1 + 32) = 0;
        }

        else
        {
          v8 = C3DSizeOfBaseType(*(a1 + 24), v6);
          v10 = *(a1 + 40);
          v11 = v7 - *(a1 + 48);
          v12 = v11 / v10;
          if (v11 % v10 < v8 * *(a1 + 26))
          {
            v13 = v12;
          }

          else
          {
            v13 = (v12 + 1);
          }

          if (*(a1 + 32) > v13)
          {
            v14 = scn_default_log(v8, v9);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v18 = *(a1 + 32);
              v20 = *(a1 + 40);
              v19 = *(a1 + 48);
              v21 = 134219264;
              v22 = v7;
              v23 = 2048;
              v24 = v19;
              v25 = 1024;
              v26 = v18;
              v27 = 2048;
              v28 = v20;
              v29 = 1024;
              v30 = v13;
              v31 = 1024;
              v32 = v18;
              _os_log_error_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_ERROR, "Error: C3DSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu, count %d and stride %zu) ; count capped to %d (was %d)", &v21, 0x32u);
            }

            *(a1 + 32) = v13;
          }
        }
      }
    }
  }
}

double __C3DSourceAccessorGetTypeID_block_invoke()
{
  C3DSourceAccessorGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DSourceAccessorContextClassSerializable;
  unk_281740290 = kC3DC3DSourceAccessorContextClassSerializable;
  unk_2817402A0 = *&off_282DC6518;
  qword_281740248 = _C3DSourceAccessorCopyInstanceVariables;
  return result;
}

uint64_t _C3DSourceAccessorCreate(uint64_t a1)
{
  if (C3DSourceAccessorGetTypeID_onceToken != -1)
  {
    _C3DSourceAccessorCreate_cold_1();
  }

  v2 = C3DSourceAccessorGetTypeID_typeID;

  return C3DTypeCreateInstance_(v2, 48);
}

uint64_t C3DSourceAccessorCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _C3DSourceAccessorCreate(a1);
  *(v11 + 24) = a1;
  *(v11 + 26) = a2;
  if (!a4)
  {
    a4 = C3DSizeOfBaseType(a1, v10) * a2;
  }

  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = 0;
  return v11;
}

void *C3DSourceAccessorGetData(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    return C3DGenericSourceGetOwnData(result, a2);
  }

  return result;
}

const UInt8 *C3DSourceAccessorGetValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v7 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetValuePtrAtIndex_cold_1();
    }
  }

  else
  {
    Data = C3DSourceAccessorGetData(a1, a2);
    if (Data)
    {
      return &CFDataGetBytePtr(Data)[a1[5] * a2 + a1[6]];
    }

    v8 = scn_default_log(0, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetValuePtrAtIndex_cold_2();
    }
  }

  return 0;
}

__CFData *C3DSourceAccessorGetMutableValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v5 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetMutableValuePtrAtIndex_cold_1();
    }

    return 0;
  }

  else
  {
    result = C3DSourceAccessorGetData(a1, a2);
    if (result)
    {
      return &CFDataGetMutableBytePtr(result)[a1[5] * a2 + a1[6]];
    }
  }

  return result;
}

uint64_t C3DSourceAccessorGetVolatileValuePtrAtIndex(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      C3DSourceAccessorGetVolatileValuePtrAtIndex_cold_1();
    }

    return 0;
  }

  v2 = a1[2];
  if ((*(v2 + 88) & 4) == 0)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetVolatileValuePtrAtIndex_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v13 = *(v2 + 72);
  if (!v13)
  {
    return 0;
  }

  return v13 + a1[5] * a2;
}

uint64_t C3DSourceAccessorCreateCopy(uint64_t a1)
{
  v2 = C3DSourceAccessorCreate(*(a1 + 24), *(a1 + 26), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  C3DSourceAccessorSetSource(v2, *(a1 + 16));
  return v2;
}

BOOL C3DSourceAccessorIsInterleaved(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 26);
  return v2 != *(a1 + 56) + C3DSizeOfBaseType(*(a1 + 24), a2) * v3;
}

BOOL C3DSourceAccessorCopyDataToAccessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 26);
  v6 = *(a2 + 26);
  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a2 + 40) * *(a1 + 32);
  if (!v7)
  {
    return 0;
  }

  Data = C3DSourceAccessorGetData(a2, a2);
  Length = CFDataGetLength(Data);
  if (v7 > Length - *(a2 + 40) * a3)
  {
    v12 = scn_default_log(Length, v11);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DSourceAccessorCopyDataToAccessor_cold_2();
    return 0;
  }

  MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(a2, a3);
  if (!MutableValuePtrAtIndex)
  {
    v30 = scn_default_log(0, v15);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DSourceAccessorCopyDataToAccessor_cold_1();
    return 0;
  }

  v16 = MutableValuePtrAtIndex;
  v17 = *(a1 + 40);
  v18 = *(a1 + 26);
  if (v17 == *(a1 + 56) + C3DSizeOfBaseType(*(a1 + 24), v15) * v18)
  {
    v20 = *(a2 + 40);
    v21 = *(a2 + 26);
    v22 = C3DSizeOfBaseType(*(a2 + 24), v19);
    if (v6 <= v5 && v20 == *(a2 + 56) + v22 * v21)
    {
      ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(a1, 0);
      memcpy(v16, ValuePtrAtIndex, v7);
      return 1;
    }
  }

  v24 = C3DSourceAccessorGetValuePtrAtIndex(a1, 0);
  v25 = *(a1 + 26);
  v27 = C3DSizeOfBaseType(*(a1 + 24), v26);
  if (*(a1 + 32) < 1)
  {
    return 1;
  }

  v28 = 0;
  v29 = v27 * v25;
  do
  {
    memcpy(v16, v24, v29);
    v24 += *(a1 + 40);
    v16 = (v16 + *(a2 + 40));
    ++v28;
    result = 1;
  }

  while (v28 < *(a1 + 32));
  return result;
}

uint64_t C3DSourceAccessorGetOffset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

void C3DSourceAccessorSetOffset(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 48) = a2;
}

void C3DSourceAccessorSetStride(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 40) = a2;
}

uint64_t C3DSourceAccessorGetLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32) * *(a1 + 40);
}

uint64_t C3DSourceAccessorGetPlatformIndependentValueLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DSizeOfBaseType(*(a1 + 24), a2) * *(a1 + 26);
}

uint64_t C3DSourceAccessorGetPlatformValueLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 26);
  return C3DSizeOfBaseType(*(a1 + 24), a2) * v10;
}

CFIndex C3DSourceAccessorsConvertToCurrentPlatform(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
      ValueAtIndex[6] = v2;
      v2 += C3DSourceAccessorGetPlatformValueLength(ValueAtIndex, v5);
      ++v3;
    }

    while (v3 < CFArrayGetCount(a1));
  }

  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      *(CFArrayGetValueAtIndex(a1, i) + 5) = v2;
      result = CFArrayGetCount(a1);
    }
  }

  return result;
}

__CFArray *_C3DSourceAccessorCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 5;
  v43 = *(a1 + 16) + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"accessor");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 2;
  valuePtr = 5;
  v43 = *(a1 + 16) + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"data");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 24;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x277CBF138];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 26;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"componentsCountPerValue");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 32;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"count");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  v27 = Mutable;
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v28 = MEMORY[0x277CBF138];
  v29 = MEMORY[0x277CBF150];
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 40;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v30, @"name", @"stride");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(v27, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 48;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v34, @"name", @"offset");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v27, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 56;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v38, @"name", @"padding");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v27, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  return v27;
}

id _C3DGenericSourceCFFinalize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) || (*(a1 + 88) & 4) == 0)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 72) = 0;
    }
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1, a2);
}

BOOL _C3DGenericSourceInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v8 = C3DEntityInitWithPropertyList(a1, a2);
  if (v8)
  {
    if (!a2)
    {
      return 1;
    }

    Value = CFDictionaryGetValue(a2, @"accessor");
    if (!Value)
    {
      v40 = 0;
      valuePtr = 0;
      v17 = CFDictionaryGetValue(a2, @"componentsType");
      if (v17)
      {
        Type = CFNumberGetType(v17);
        v21 = Type;
        if (Type != kCFNumberFloat32Type && Type != kCFNumberFloatType)
        {
          v23 = scn_default_log(Type, v20);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            _C3DGenericSourceInitWithPropertyList_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
          }
        }

        v31 = CFDictionaryGetValue(a2, @"valuesCount");
        if (v31 && (v31 = CFNumberGetValue(v31, kCFNumberCFIndexType, &valuePtr), (v31 & 1) != 0))
        {
          v36 = CFDictionaryGetValue(a2, @"componentsPerValue");
          if (v36)
          {
            v36 = CFNumberGetValue(v36, kCFNumberCFIndexType, &v40);
            if (v36)
            {
              v12 = C3DSourceAccessorCreate(1, v40, valuePtr, 4 * v40, 0);
              C3DSourceAccessorSetSource(v12, a1);
              v39 = CFDictionaryGetValue(a2, @"data");
              *(a1 + 72) = C3DCopyLittleEndianToHostRepresentationOfData(v39, v21, v40 * valuePtr);
              goto LABEL_6;
            }
          }

          v38 = scn_default_log(v36, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            _C3DGenericSourceInitWithPropertyList_cold_4();
          }
        }

        else
        {
          v33 = scn_default_log(v31, v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            _C3DGenericSourceInitWithPropertyList_cold_5();
          }
        }
      }

      else
      {
        v35 = scn_default_log(0, v18);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          _C3DGenericSourceInitWithPropertyList_cold_6();
        }
      }

      return 0;
    }

    v11 = Value;
    v12 = _C3DSourceAccessorCreate(Value);
    v13 = C3DInitWithPropertyList(v12, v11, a3, a4);
    if (v13)
    {
      C3DSourceAccessorSetSource(v12, a1);
LABEL_6:
      C3DAnimationSetKeyPath(a1, v12);
      CFRelease(v12);
      return 1;
    }

    v34 = scn_default_log(v13, v14);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      _C3DGenericSourceInitWithPropertyList_cold_2();
      if (a4)
      {
LABEL_23:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    else if (a4)
    {
      goto LABEL_23;
    }

    CFRelease(v12);
    return 0;
  }

  v16 = scn_default_log(v8, v9);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  _C3DGenericSourceInitWithPropertyList_cold_1(v16);
  return 0;
}

__CFDictionary *_C3DGenericSourceCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v8)
  {
    v9 = C3DCopyPropertyList(*(a1 + 64), a2, a3, a4);
    if (v9)
    {
      v11 = v9;
      CFDictionarySetValue(v8, @"accessor", v9);
      CFRelease(v11);
    }

    else
    {
      v12 = scn_default_log(0, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _C3DGenericSourceCopyPropertyList_cold_1();
      }

      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

uint64_t _C3DGenericSourceFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  Value = CFDictionaryGetValue(theDict, @"accessor");
  if (!Value)
  {
    v12 = scn_default_log(0, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _C3DGenericSourceFinalizeDeserialization_cold_1();
      if (a4)
      {
LABEL_7:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    else if (a4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v9 = Value;
  v10 = *(a1 + 64);

  return C3DFinalizeDeserialization(v10, a2, v9, a4);
}

uint64_t C3DGenericSourceGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DGenericSourceGetTypeID_onceToken != -1)
  {
    C3DGenericSourceGetTypeID_cold_1();
  }

  return C3DGenericSourceGetTypeID_typeID;
}

double __C3DGenericSourceGetTypeID_block_invoke()
{
  C3DGenericSourceGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_2817414B0 = kC3DC3DGenericSourceContextClassSerializable;
  unk_2817414C0 = *&off_282DC6558;
  qword_2817414A8 = _C3DGenericSourceSearchByID;
  result = *&kC3DC3DGenericSourceContextClassAnimatable;
  xmmword_281741458 = kC3DC3DGenericSourceContextClassAnimatable;
  return result;
}

uint64_t C3DGenericSourceCreateEmpty(uint64_t a1, uint64_t a2)
{
  if (C3DGenericSourceGetTypeID_onceToken != -1)
  {
    C3DGenericSourceGetTypeID_cold_1();
  }

  v3 = C3DGenericSourceGetTypeID_typeID;

  return C3DTypeCreateInstance_(v3, 80);
}

uint64_t C3DGenericSourceCreate(_BOOL8 Data_cold_1, uint64_t a2)
{
  v2 = Data_cold_1;
  if (!Data_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Data_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Data_cold_1)
    {
      C3DSourceAccessorGetData_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  Empty = C3DGenericSourceCreateEmpty(Data_cold_1, a2);
  if (!Empty)
  {
    v12 = scn_default_log(0, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  C3DGenericSourceInit(Empty, v2);
  return Empty;
}

CFTypeRef C3DGenericSourceInit(_BOOL8 Data_cold_1, CFTypeRef cf)
{
  v3 = Data_cold_1;
  if (!cf && (v4 = scn_default_log(Data_cold_1, 0), Data_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DSourceAccessorGetData_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(Data_cold_1, cf);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationCopy_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(v3 + 64) = cf;
  return CFRetain(cf);
}

uint64_t C3DGenericSourceCreateMutable(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSourceAccessorGetData_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v12 = C3DGenericSourceCreate(a1, a2);
  *(v12 + 88) |= 1u;
  if (v2)
  {
    Length = C3DSourceAccessorGetLength(a1, v11);
    Mutable = CFDataCreateMutable(0, Length);
    v16 = C3DSourceAccessorGetLength(a1, v15);
    CFDataSetLength(Mutable, v16);
    C3DGenericSourceSetData(v12, Mutable);
    CFRelease(Mutable);
  }

  return v12;
}

CFTypeRef C3DGenericSourceSetData(_BOOL8 cold_2, CFTypeRef cf)
{
  v3 = cold_2;
  if (!cold_2)
  {
    v4 = scn_default_log(0, cf);
    cold_2 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (cold_2)
    {
      C3DGenericSourceCreate_cold_2(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(v3 + 88) & 4) != 0)
  {
    v11 = scn_default_log(cold_2, cf);
    cold_2 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (cold_2)
    {
      C3DGenericSourceSetData_cold_2(v11, cf, v12, v13, v14, v15, v16, v17);
    }
  }

  if (*(v3 + 80))
  {
    v18 = scn_default_log(cold_2, cf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetData_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  result = *(v3 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v3 + 72) = result;
  }

  return result;
}

void C3DGenericSourceSetMTLBuffer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(result + 72) = a2;
  *(result + 80) = a3;
}

void C3DGenericSourceInitDeepCopy(uint64_t a1, uint64_t a2)
{
  if (C3DSourceAccessorIsInterleaved(*(a1 + 64), a2))
  {
    Content = C3DGenericSourceGetContent(a1, v4);
    v7 = v6;
    v8 = v6;
    v9 = C3DSourceAccessorCreate(BYTE6(v6), HIBYTE(v6), v6, 0, 0);
    C3DAnimationSetKeyPath(a2, v9);
    C3DSourceAccessorSetSource(v9, a2);
    CFRelease(v9);
    if (!Content)
    {
      return;
    }

    PlatformIndependentValueLength = C3DSourceAccessorGetPlatformIndependentValueLength(*(a1 + 64), v10);
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], PlatformIndependentValueLength * v7);
    CFDataSetLength(Mutable, PlatformIndependentValueLength * v7);
    BytePtr = CFDataGetBytePtr(Mutable);
    if (v7)
    {
      v14 = BytePtr;
      v15 = 0;
      do
      {
        memcpy(v14, &Content[v15], PlatformIndependentValueLength);
        v15 += BYTE5(v7);
        v14 += PlatformIndependentValueLength;
        --v8;
      }

      while (v8);
    }

    C3DGenericSourceSetData(a2, Mutable);
    v16 = Mutable;
LABEL_14:

    CFRelease(v16);
    return;
  }

  Copy = C3DSourceAccessorCreateCopy(*(a1 + 64));
  C3DAnimationSetKeyPath(a2, Copy);
  C3DSourceAccessorSetSource(Copy, a2);
  CFRelease(Copy);
  if (!*(a1 + 80))
  {
    v24 = *(a1 + 72);
    if (!v24)
    {
      return;
    }

    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v24);
    C3DGenericSourceSetData(a2, MutableCopy);
    v16 = MutableCopy;
    goto LABEL_14;
  }

  v20 = scn_default_log(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_DEFAULT, "Warning: Cannot duplicate a Metal Buffer source. Create an empty data instead.", buf, 2u);
  }

  capacity = 0;
  v21 = C3DPtrFromMTLBuffer(*(a1 + 72), &capacity);
  v22 = CFDataCreateMutable(*MEMORY[0x277CBECE8], capacity);
  CFDataSetLength(v22, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(v22);
  memcpy(MutableBytePtr, v21, capacity);
  C3DGenericSourceSetData(a2, v22);
  CFRelease(v22);
}

const UInt8 *C3DGenericSourceGetContent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (C3DSourceAccessorGetData(v2, a2))
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v2, 0);
  }

  else
  {
    ValuePtrAtIndex = 0;
  }

  C3DSourceAccessorGetCount(v2);
  C3DSceneSourceGetLibrary(v2);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v2);
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v2);
  if (ComponentsValueType != C3DBaseTypeGetComponentType(ComponentsValueType, v6))
  {
    C3DBaseTypeGetComponentCount(ComponentsValueType, v7);
  }

  C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
  return ValuePtrAtIndex;
}

uint64_t C3DGenericSourceCreateDeepCopy(_BOOL8 cold_2, uint64_t a2)
{
  v2 = cold_2;
  if (!cold_2)
  {
    v3 = scn_default_log(0, a2);
    cold_2 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (cold_2)
    {
      C3DGenericSourceCreate_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  Empty = C3DGenericSourceCreateEmpty(cold_2, a2);
  C3DGenericSourceInitDeepCopy(v2, Empty);
  return Empty;
}

void *C3DGenericSourceGetOwnData(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 72);
  if (*(a1 + 80))
  {
    return C3DDataFromMTLBuffer(result);
  }

  return result;
}

void *C3DGenericSourceGetData(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = a1[9];
  if (a1[10])
  {
    return C3DDataFromMTLBuffer(result);
  }

  if (!result)
  {
    result = a1[8];
    if (result)
    {
      return C3DSourceAccessorGetData(result, a2);
    }
  }

  return result;
}

uint64_t C3DGenericSourceGetMTLBuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

void C3DGenericSourceSetVolatileData(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DGenericSourceCreate_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(v3 + 88) & 4) == 0)
  {
    v11 = scn_default_log(result, a2);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DGenericSourceSetVolatileData_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
    }
  }

  if (*(v3 + 80))
  {
    v18 = scn_default_log(result, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceSetVolatileData_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  *(v3 + 72) = a2;
}

uint64_t C3DGenericSourceGetAccessor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

BOOL C3DGenericSourcesHaveSharedData(uint64_t a1, uint64_t a2)
{
  Accessor = C3DGenericSourceGetAccessor(a1, a2);
  v5 = C3DGenericSourceGetAccessor(a2, v4);
  URL = C3DSceneSourceGetURL(Accessor);
  return URL == C3DSceneSourceGetURL(v5);
}

BOOL C3DGenericSourceIsPrimary(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  Accessor = C3DGenericSourceGetAccessor(a1, a2);
  return C3DSourceAccessorGetData(Accessor, v5) == *(a1 + 72);
}

CFDataRef C3DGenericSourceCreateSerializedDataWithAccessors(uint64_t a1, const __CFArray *a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGenericSourceCreate_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  OwnData = C3DGenericSourceGetOwnData(a1, a2);
  if (!OwnData)
  {
    v13 = scn_default_log(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithData_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  BytePtr = CFDataGetBytePtr(OwnData);
  if (CFArrayGetCount(v2) < 1)
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v24);
      v22 += C3DSourceAccessorGetPlatformIndependentLength(ValueAtIndex, v26);
      v23 += C3DSourceAccessorGetPlatformIndependentValueLength(ValueAtIndex, v27);
      C3DSceneSourceGetLibrary(ValueAtIndex);
      ++v24;
    }

    while (v24 < CFArrayGetCount(v2));
  }

  bytes = C3DMalloc(v22);
  if (CFArrayGetCount(v2) >= 1)
  {
    v28 = 0;
    v29 = 0;
    v40 = v2;
    do
    {
      v30 = CFArrayGetValueAtIndex(v2, v28);
      v31 = v30[6];
      v32 = OwnData;
      Length = CFDataGetLength(OwnData);
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v30);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v30);
      v36 = &BytePtr[v31];
      v2 = v40;
      v37 = Length;
      OwnData = v32;
      C3DConvertToPlatformIndependentData(v36, &bytes[v29], v37, v22, ComponentsValueType, ComponentsCountPerValue, v30[4], v30[5], v23);
      v29 += C3DSourceAccessorGetPlatformIndependentValueLength(v30, v38);
      ++v28;
    }

    while (v28 < CFArrayGetCount(v40));
  }

  return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, v22, *MEMORY[0x277CBECE8]);
}

__CFData *C3DGenericSourceCreateDeserializedDataWithAccessors(uint64_t a1, CFDataRef theData, const __CFArray *a3)
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(theData);
  if (CFArrayGetCount(a3) < 1)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
      v5 += C3DSourceAccessorGetPlatformLength(ValueAtIndex, v10);
      v6 += C3DSourceAccessorGetPlatformValueLength(ValueAtIndex, v11);
      v7 += C3DSourceAccessorGetPlatformIndependentValueLength(ValueAtIndex, v12);
      C3DSceneSourceGetLibrary(ValueAtIndex);
      ++v8;
    }

    while (v8 < CFArrayGetCount(a3));
  }

  Mutable = CFDataCreateMutable(0, v5);
  CFDataSetLength(Mutable, v5);
  v27 = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  BytePtr = CFDataGetBytePtr(theData);
  if (CFArrayGetCount(a3) >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    theArray = a3;
    do
    {
      v17 = CFArrayGetValueAtIndex(a3, v16);
      URL = C3DSceneSourceGetURL(v17);
      if (URL != a1)
      {
        v20 = scn_default_log(URL, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          C3DGenericSourceCreateDeserializedDataWithAccessors_cold_1(buf, v34, v20);
        }
      }

      v22 = C3DSourceAccessorGetPlatformValueLength(v17, v19) + v15;
      v23 = C3DSourceAccessorGetPlatformIndependentValueLength(v17, v21) + v14;
      ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v17);
      ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(v17);
      C3DConvertFromPlatformIndependentData(&BytePtr[v14], &MutableBytePtr[v15], Length, v5, ComponentsValueType, ComponentsCountPerValue, v17[4], v7, v6);
      ++v16;
      a3 = theArray;
      v14 = v23;
      v15 = v22;
    }

    while (v16 < CFArrayGetCount(theArray));
  }

  return v27;
}

void C3DGenericSourceSetListener(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = *(a1 + 88) & 0xFD | (2 * (a2 != 0));
  if (a2)
  {
    Default = C3DValueCreateDefault(5);
    *C3DValueGetBytes(Default, v13) = a2;
    C3DEntitySetAttribute(a1, @"listener", Default);
    if (Default)
    {
      CFRelease(Default);
    }
  }

  else
  {
    C3DEntitySetAttribute(a1, @"listener", 0);
  }
}

uint64_t C3DGenericSourceGetListener(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframedAnimationCopy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 88) & 2) == 0)
  {
    return 0;
  }

  result = C3DEntityGetAttribute(a1, @"listener");
  if (result)
  {
    result = C3DValueGetBytes(result, v12);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t _C3DGenericSourceSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _C3DGenericSourceSetValue(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    memcpy(__s1, __s2, __n);
    result = C3DGenericSourceGetListener(a1, v9);
    if (result)
    {

      return C3DGenericSourceDidChange(result, a1);
    }
  }

  return result;
}

void _C3DResourceCacheCFFinalize(void *a1)
{
  if (_sharedInstance == a1)
  {
    _sharedInstance = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"kC3DNotificationImageProxyWillDie", 0);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"kC3DNotificationImageWillDie", 0);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

uint64_t __C3DResourceCacheGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DResourceCacheGetTypeID_typeID = result;
  return result;
}

uint64_t C3DResourceCacheCreate()
{
  if (C3DResourceCacheGetTypeID_onceToken != -1)
  {
    C3DResourceCacheCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DResourceCacheGetTypeID_typeID, 32);
  if (!Instance)
  {
    v2 = scn_default_log(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceCacheCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(Instance + 16) = 0;
  v10 = *MEMORY[0x277CBECE8];
  v11 = MEMORY[0x277CBF138];
  v12 = MEMORY[0x277CBF150];
  *(Instance + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(Instance + 32) = CFDictionaryCreateMutable(v10, 0, 0, v12);
  *(Instance + 40) = CFDictionaryCreateMutable(v10, 0, v11, v12);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, Instance, _C3DResourceCacheResourceWillDie, @"kC3DNotificationImageWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v14, Instance, _C3DResourceCacheResourceWillDie, @"kC3DNotificationImageProxyWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return Instance;
}

uint64_t C3DResourceCacheGetSharedInstance(uint64_t a1, uint64_t a2)
{
  if (C3DResourceCacheGetSharedInstance_onceToken != -1)
  {
    C3DResourceCacheGetSharedInstance_cold_1();
  }

  return _sharedInstance;
}

uint64_t __C3DResourceCacheGetSharedInstance_block_invoke()
{
  result = C3DResourceCacheCreate();
  _sharedInstance = result;
  return result;
}

double C3DResourceCacheGetFileTimestampForSourceAtPath(void *a1)
{
  v2 = SCNGetFileTimestampAtPath(a1);
  if (v2 != 0.0 || !SCNHasSpecialResourceBundle())
  {
    return v2;
  }

  v3 = [objc_msgSend(SCNGetResourceBundle() "bundlePath")];

  return SCNGetFileTimestampAtPath(v3);
}

const void *C3DResourceCacheCopyResourceOrCreateIfNeededForSource(_BOOL8 IfNeededForSource_cold_1, void *a2, int a3, uint64_t a4)
{
  v7 = IfNeededForSource_cold_1;
  if (!IfNeededForSource_cold_1 && (v8 = scn_default_log(0, a2), IfNeededForSource_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(IfNeededForSource_cold_1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  os_unfair_lock_lock((v7 + 16));
  v44 = 0;
  v23 = _C3DResourceCacheStandardizeSource(a2, &v44);
  v43 = 0.0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(v7 + 24), v23);
  FileTimestampForSourceAtPath = 0.0;
  if (Value)
  {
    v26 = [Value copyWeakRef];
    if (v26)
    {
      v27 = v26;
      if (v44 == 1)
      {
        v28 = SCNHasSpecialResourceBundle();
        FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v23);
        v43 = FileTimestampForSourceAtPath;
        if (FileTimestampForSourceAtPath != 0.0)
        {
          v29 = CFDictionaryGetValue(*(v7 + 40), v23);
          if (v29)
          {
            CFNumberGetValue(v29, kCFNumberDoubleType, &valuePtr);
            v30 = valuePtr;
          }

          else
          {
            v30 = 0.0;
          }

          if (v30 == FileTimestampForSourceAtPath)
          {
            goto LABEL_26;
          }

LABEL_22:
          CFDictionaryRemoveValue(*(v7 + 40), v23);
          CFDictionaryRemoveValue(*(v7 + 24), v23);
          CFDictionaryRemoveValue(*(v7 + 32), v27);
          CFRelease(v27);
          v33 = 1;
          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_14;
        }

        if (v28)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      os_unfair_lock_unlock((v7 + 16));
      return v27;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v31 = *(MEMORY[0x277CBF150] + 32);
    v32 = *(v7 + 32);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __C3DResourceCacheCopyResourceOrCreateIfNeededForSource_block_invoke;
    v37[3] = &unk_2782FFCE0;
    v37[5] = v31;
    v37[6] = v23;
    v37[4] = &v38;
    C3DCFDictionaryApplyBlock(v32, v37);
    CFDictionaryRemoveValue(*(v7 + 40), v23);
    CFDictionaryRemoveValue(*(v7 + 24), v23);
    CFDictionaryRemoveValue(*(v7 + 32), v39[3]);
    _Block_object_dispose(&v38, 8);
  }

  v33 = 0;
  if (!a4)
  {
LABEL_23:
    os_unfair_lock_unlock((v7 + 16));
    return 0;
  }

LABEL_14:
  if (a3)
  {
    v27 = (*(a4 + 16))(a4);
    v34 = objc_alloc_init(SCNWeakPointer);
    [(SCNWeakPointer *)v34 setWeakRef:v27];
    CFDictionarySetValue(*(v7 + 24), v23, v34);
    CFDictionarySetValue(*(v7 + 32), v27, v23);

    if (v44 == 1)
    {
      if ((v33 & 1) == 0)
      {
        FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v23);
        v43 = FileTimestampForSourceAtPath;
      }

      if (FileTimestampForSourceAtPath != 0.0)
      {
        v35 = CFNumberCreate(0, kCFNumberDoubleType, &v43);
        CFDictionarySetValue(*(v7 + 40), v23, v35);
        CFRelease(v35);
      }
    }

    goto LABEL_26;
  }

  os_unfair_lock_unlock((v7 + 16));
  return (*(a4 + 16))(a4);
}

void sub_21C0EE320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_C3DResourceCacheStandardizeSource(void *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFURLGetTypeID())
  {
    if (![a1 query])
    {
      *a2 = 1;
      if ([a1 isFileURL])
      {

        return [a1 relativePath];
      }

      else
      {

        return [a1 path];
      }
    }

LABEL_11:
    *a2 = 0;
    return a1;
  }

  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  *a2 = 1;

  return [a1 stringByStandardizingPath];
}

uint64_t __C3DResourceCacheCopyResourceOrCreateIfNeededForSource_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 40))(a3, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

const void *C3DResourceCacheGetResource(_BOOL8 a1, void *a2)
{
  IfNeededForSource = C3DResourceCacheCopyResourceOrCreateIfNeededForSource(a1, a2, 0, 0);
  v3 = IfNeededForSource;
  if (IfNeededForSource)
  {
    CFAutorelease(IfNeededForSource);
  }

  return v3;
}

void *C3DResourceCacheCopySourceForResource(_BOOL8 IfNeededForSource_cold_1, const void *a2, int a3, uint64_t a4)
{
  v7 = IfNeededForSource_cold_1;
  if (!IfNeededForSource_cold_1 && (v8 = scn_default_log(0, a2), IfNeededForSource_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(IfNeededForSource_cold_1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopySourceForResource_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  os_unfair_lock_lock((v7 + 16));
  Value = CFDictionaryGetValue(*(v7 + 32), a2);
  if (Value)
  {
    v24 = Value;
    CFRetain(Value);
  }

  else
  {
    if (!a4)
    {
      os_unfair_lock_unlock((v7 + 16));
      return 0;
    }

    if (!a3)
    {
      os_unfair_lock_unlock((v7 + 16));
      return (*(a4 + 16))(a4);
    }

    v30 = 0;
    v26 = (*(a4 + 16))(a4);
    v24 = _C3DResourceCacheStandardizeSource(v26, &v30);
    v27 = objc_alloc_init(SCNWeakPointer);
    [(SCNWeakPointer *)v27 setWeakRef:a2];
    CFDictionarySetValue(*(v7 + 24), v24, v27);
    CFDictionarySetValue(*(v7 + 32), a2, v24);

    if (v30 == 1)
    {
      FileTimestampForSourceAtPath = C3DResourceCacheGetFileTimestampForSourceAtPath(v24);
      if (FileTimestampForSourceAtPath != 0.0)
      {
        v28 = CFNumberCreate(0, kCFNumberDoubleType, &FileTimestampForSourceAtPath);
        CFDictionarySetValue(*(v7 + 40), v24, v28);
        CFRelease(v28);
      }
    }

    CFRetain(v24);
    CFRelease(v26);
  }

  os_unfair_lock_unlock((v7 + 16));
  return v24;
}

void C3DResourceCacheRemoveResource(_BOOL8 IfNeededForSource_cold_1, const void *a2)
{
  v3 = IfNeededForSource_cold_1;
  if (!IfNeededForSource_cold_1 && (v4 = scn_default_log(0, a2), IfNeededForSource_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceCacheCopyResourceOrCreateIfNeededForSource_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(IfNeededForSource_cold_1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DResourceCacheCopySourceForResource_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  os_unfair_lock_lock((v3 + 16));
  Value = CFDictionaryGetValue(*(v3 + 32), a2);
  if (Value)
  {
    v20 = Value;
    CFDictionaryRemoveValue(*(v3 + 40), Value);
    CFDictionaryRemoveValue(*(v3 + 24), v20);
    CFDictionaryRemoveValue(*(v3 + 32), a2);
  }

  os_unfair_lock_unlock((v3 + 16));
}

C3D::DrawNodesPass *C3D::DrawNodesPass::DrawNodesPass(C3D::DrawNodesPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  v6 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v6 = &unk_282DC65C8;
  *(v6 + 15) = *&a4->var0;
  v7 = *&a4[1].var6;
  v8 = *&a4[3].var2;
  v9 = *&a4[4].var8;
  *(v6 + 38) = *&a4[6].var4;
  *(v6 + 17) = v8;
  *(v6 + 18) = v9;
  *(v6 + 16) = v7;
  bzero(v6 + 320, 0x13B0uLL);
  return this;
}

const char *C3D::DrawNodesPass::name(C3D::DrawNodesPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 669, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawNodesPass";
  }
}

const char *C3D::DrawNodesPass::programHashCodeStoreName(C3D::DrawNodesPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(this + 30);
  if (v4)
  {
    return C3D::CachedFXPassName(this + 669, v4, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "DrawNodeDefault";
  }
}

unint64_t C3D::DrawNodesPass::programHashCodeStoreKey(C3D::DrawNodesPass *this)
{
  v2 = (*(*this + 72))(this);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v3);
  v5 = *(this + 149);
  v6 = *(this + 4948);
  v7 = (8 * (*(this + 117) & 3)) & 0x9F | (32 * (*(this + 118) & 3));
  if ([(SCNMTLRenderContext *)RenderContext reverseZ])
  {
    v8 = 0x80;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xC6A4A7935BD1E995 * (((((v7 | v8) & 0xF8) << 24) | (v6 << 16) | v5 & 0xFF00 | v5) ^ 0x1A929E4D6F47A654);
  v10 = 0xC6A4A7935BD1E995 * (v9 ^ (v9 >> 47));
  v11 = strlen(v2);
  v12 = (0xC6A4A7935BD1E995 * v11) ^ (v10 >> 47) ^ v10;
  if (v11 >= 8)
  {
    v13 = v11 >> 3;
    v14 = &v2[8 * v13];
    v15 = 8 * v13;
    do
    {
      v16 = *v2;
      v2 += 8;
      v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v16) ^ ((0xC6A4A7935BD1E995 * v16) >> 47))) ^ v12);
      v15 -= 8;
    }

    while (v15);
    v2 = v14;
  }

  v17 = v11 & 7;
  if (v17 > 3)
  {
    if ((v11 & 7) > 5)
    {
      if (v17 != 6)
      {
        v12 ^= *(v2 + 6) << 48;
      }

      v12 ^= *(v2 + 5) << 40;
    }

    else if (v17 == 4)
    {
      goto LABEL_21;
    }

    v12 ^= *(v2 + 4) << 32;
LABEL_21:
    v12 ^= *(v2 + 3) << 24;
LABEL_22:
    v12 ^= *(v2 + 2) << 16;
    goto LABEL_23;
  }

  if ((v11 & 7) <= 1)
  {
    if ((v11 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
    }

    goto LABEL_24;
  }

  if (v17 != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v12 ^= *(v2 + 1) << 8;
LABEL_24:
  v12 = 0xC6A4A7935BD1E995 * (v12 ^ *v2);
  return (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
}

void C3D::DrawNodesPass::setup(C3D::DrawNodesPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  if ([(SCNMTLRenderContext *)RenderContext disableLinearRendering])
  {
    *(this + 149) |= 1u;
  }

  v4 = (*(*this + 64))(this);
  v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v4 ^ 0xD2066E14D2E75C53)) ^ 0x73)) ^ ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v4 ^ 0xD2066E14D2E75C53)) ^ 0x73)) >> 47));
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v5 ^ (v5 >> 47));
  *(this + 668) = v6;
  if (!v6)
  {
    operator new();
  }

  if (!C3D::PassDescriptor::outputCount((this + 32)))
  {
    C3D::Pass::setOutputCount(this, 2u);
    v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v7 + 8) = "COLOR";
    C3D::Pass::parentColorDesc(&v42, this);
    *(v7 + 16) = v42;
    *(v7 + 32) = v43;
    *(v7 + 65) = 0;
    *(v7 + 66) = *(v7 + 66) & 0xFFFC | 2;
    v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
    *(v8 + 64) = 2;
    *(v8 + 8) = "DEPTH";
    C3D::Pass::parentDepthDesc(&v42, this);
    *(v8 + 16) = v42;
    *(v8 + 32) = v43;
    *(v8 + 66) = *(v8 + 66) & 0xFFF4 | 0xA;
  }

  v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v11 = v9;
  if (*(v9 + 64) - 1 >= 2)
  {
    v12 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::setup(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (SCNMTLTextureTypeIsCube(*(v11 + 24)))
  {
    *(this + 302) = 1;
    v21 = [(SCNMTLRenderContext *)RenderContext features];
    *(this + 117) = (v21 & 0x20) != 0;
    if ((v21 & 0x20) != 0)
    {
      PreferredMultiVertexOutputStreamGenerator = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    else
    {
      PreferredMultiVertexOutputStreamGenerator = 0;
    }

    *(this + 118) = PreferredMultiVertexOutputStreamGenerator;
    *(this + 19) = 6;
  }

  Scene = C3DEngineContextGetScene(*(this + 2), v20);
  v25 = C3D::DrawNodesPass::_setupCullingContext(this, v24);
  v26 = *(this + 34);
  if (v26)
  {
    v27 = *(v26 + 8);
    if (v27)
    {
      v28 = *(v26 + 16);
      v29 = &v28[v27];
      LODWORD(v26) = *(this + 19);
      do
      {
        if (v26)
        {
          v30 = 0;
          v31 = *v28;
          do
          {
            if ((*(*this + 120))(this, v31, v30, v25))
            {
              C3DCullingContextForcePushGeometryRenderableElementsToVisible(this + 20, v30, v31);
            }

            ++v30;
            v26 = *(this + 19);
          }

          while (v30 < v26);
        }

        ++v28;
      }

      while (v28 != v29);
    }
  }

  else
  {
    C3DCullingContextCull(this + 320);
    ParticleManager = C3DSceneGetParticleManager(Scene, 0);
    if (*(C3D::Pass::descriptor(this) + 12))
    {
      Stats = C3DEngineContextGetStats(*(this + 2), v33);
      v35 = CACurrentMediaTime();
      LightingSystem = C3DSceneGetLightingSystem(Scene, v36);
      v38 = *(this + 19);
      if (*(this + 19))
      {
        v39 = LightingSystem;
        v40 = 0;
        v41 = this + 3408;
        do
        {
          if (ParticleManager)
          {
            C3DLightingSystemBeginQueries(v39, v41, *(this + 2));
            C3DParticleManagerCull(ParticleManager, this + 320, *(this + 2), v40, *(this + 117), *(this + 118));
            C3DLightingSystemEndQueries(v39);
            v38 = *(this + 19);
          }

          ++v40;
          v41 += 64;
        }

        while (v40 < v38);
      }

      *(Stats + 120) = *(Stats + 120) + CACurrentMediaTime() - v35;
    }
  }
}

__n128 C3D::DrawNodesPass::_setupCullingContext(__n128 *this, uint64_t a2)
{
  v3 = this + 256;
  RenderContext = C3DEngineContextGetRenderContext(this[1].n128_i64[0], a2);
  Scene = C3DEngineContextGetScene(this[1].n128_i64[0], v5);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v7);
  if ((this[18].n128_u8[12] & 1) == 0 && [(SCNMTLRenderContext *)RenderContext textureTarget])
  {
    this[18].n128_u8[14] = ([-[SCNMTLRenderContext textureTarget](RenderContext) textureType] - 5) < 2;
  }

  v3[57].n128_u8[6] = 0;
  v9 = this[1].n128_i64[0];
  this[316].n128_u64[0] = v9;
  if ((C3DEngineContextIsWarmUp(v9) & 1) != 0 || this[17].n128_u64[0])
  {
    v11 = 1;
  }

  else
  {
    v11 = this[19].n128_u8[0];
  }

  v3[57].n128_u8[4] = v11 & 1;
  this[20].n128_u64[0] = EnginePipeline;
  this[315].n128_u64[1] = Scene;
  v3[53].n128_u8[4] = this[2].n128_u8[6];
  v3[53].n128_u8[7] = this[7].n128_u8[5];
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v10);
  ElementCount = C3DRendererElementStoreGetElementCount(RendererElementStore, v13);
  if (this[2].n128_u16[3])
  {
    v16 = ElementCount;
    v17 = 0;
    v18 = 4 * ElementCount;
    v19 = &this[327].n128_u32[3];
    do
    {
      Aligned = C3DScratchAllocatorAllocateAligned(*(this[1].n128_u64[1] + 16), v18, 2, 0);
      bzero(Aligned, v18);
      *(v19 - 3) = Aligned;
      *(v19 - 1) = 0;
      *v19 = v16;
      ++v17;
      v21 = this[2].n128_u16[3];
      v19 += 4;
    }

    while (v17 < v21);
    v22 = v21 == 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
  v3[53].n128_u8[8] = this[18].n128_u8[14];
  this[311].n128_u64[0] = this[15].n128_u64[0];
  this[311].n128_u64[1] = this;
  this[333].n128_u64[1] = C3D::drawNodesPassShouldPushRenderableElementsToVisible;
  v3[57].n128_u8[5] = this[18].n128_u8[8];
  v3[77].n128_u8[0] = 0;
  v3[53].n128_u8[6] = this[2].n128_u32[3];
  if (v22)
  {
    v23 = this[7].n128_u8[5] == 2;
  }

  v3[57].n128_u8[8] = v23;
  v3[57].n128_u8[9] = this[19].n128_u8[2];
  v24 = this[16].n128_u64[1];
  this[312].n128_u64[0] = v24;
  if (!v24)
  {
    if (!Scene)
    {
      v25 = scn_default_log(ElementCount, v15);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v25, v15, v26, v27, v28, v29, v30, v31);
      }
    }

    this[312].n128_u64[0] = C3DSceneGetRootNode(Scene, v15);
  }

  v3[57].n128_u8[0] = this[18].n128_u8[13];
  v32 = C3D::PassDescriptor::outputAtIndex(&this[2], 0);
  if (this[7].n128_u8[9] == 1)
  {
    ViewportAtIndex = this[8];
  }

  else if ((this[7].n128_u8[8] & 1) != 0 || this[19].n128_u8[1] == 1)
  {
    ViewportAtIndex = C3DEngineContextGetViewportAtIndex(this[1].n128_i64[0], 0);
  }

  else
  {
    LOWORD(v33) = *(v32 + 16);
    *&v35 = v33;
    LOWORD(v33) = *(v32 + 18);
    *&v36 = v33;
    ViewportAtIndex.n128_u64[0] = 0;
    ViewportAtIndex.n128_u64[1] = __PAIR64__(v36, v35);
  }

  this[310] = ViewportAtIndex;
  v37 = this[15].n128_i64[1];
  PointOfViewForCulling = v37;
  if (v37 || (PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(this[1].n128_i64[0], 0), (v37 = this[15].n128_i64[1]) != 0))
  {
    v3[57].n128_u8[1] = this[18].n128_u8[12];
  }

  else
  {
    PointOfView = C3DEngineContextGetPointOfView(this[1].n128_i64[0], 0);
    this[15].n128_u64[1] = PointOfView;
    v3[57].n128_u8[1] = this[18].n128_u8[12];
    if (!PointOfView)
    {
      C3DCullingContextSetupMatricesToIdentity(&this[20]);
      goto LABEL_30;
    }

    v37 = PointOfView;
  }

  C3D::DrawNodesPass::_setupPointOfView(this, v37, PointOfViewForCulling, &this[310]);
LABEL_30:
  this[315].n128_u64[0] = C3DEngineContextGetAuthoringEnvironment(this[1].n128_i64[0], 0);
  this[314].n128_u64[0] = this[17].n128_u64[1];
  this[314].n128_u64[0] &= C3DGetPovCategoryMask(PointOfViewForCulling, v39);
  this[314].n128_u64[1] = this[18].n128_u64[0];
  v3[57].n128_u16[1] = 0;
  v41 = this[15].n128_i64[1];
  if (v41)
  {
    Light = C3DNodeGetLight(v41, v40);
    if (Light)
    {
      if (C3DLightGetType(Light, v43) == 4)
      {
        v3[57].n128_u16[1] = 256;
      }
    }
  }

  result.n128_f64[0] = C3DCullingContextSetupLOD(&this[20], this[1].n128_u64[0]);
  if (v3[53].n128_u8[4])
  {
    v45 = 0;
    v46 = this + 285;
    v47 = 16;
    do
    {
      v48 = this[334].n128_u64[0] + v47;
      result = *v48;
      v49 = *(v48 + 16);
      v50 = *(v48 + 48);
      v46[2] = *(v48 + 32);
      v46[3] = v50;
      *v46 = result;
      v46[1] = v49;
      v46 += 4;
      ++v45;
      v47 += 64;
    }

    while (v45 < v3[53].n128_u8[4]);
  }

  return result;
}

void C3D::DrawNodesPass::compile(C3D::DrawNodesPass *this, uint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  Scene = C3DEngineContextGetScene(*(this + 2), a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v5);
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v7);
  LightingSystem = C3DSceneGetLightingSystem(Scene, v9);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(*(this + 2), v11);
  Capacity = C3DRendererElementStoreGetCapacity(RendererElementStore, v13);
  C3DProgramHashCodeStoreSetCapacity(ProgramHashCodeStore, Capacity);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v15);
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext disableLinearRendering];
  }

  IsClusteredShadingEnabled = C3DEngineContextIsClusteredShadingEnabled(*(this + 2));
  if (*(this + 1236))
  {
    v18 = IsClusteredShadingEnabled;
    v19 = 0;
    do
    {
      C3DLightingSystemBeginQueries(LightingSystem, this + 64 * v19 + 3408, *(this + 2));
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      C3DLightingSystemGetLightingContext(LightingSystem, *(this + 2), v28);
      v27 = 0;
      if (C3DLightingSystemGetInfiniteLightSet(LightingSystem, v30, &v27))
      {
        C3DLightingSystemCheckLightingSetTextureUsage(LightingSystem, v30);
        LightingSetProgramHashCodes = C3DLightingSystemGetLightingSetProgramHashCodes(LightingSystem, v30, (v28 + 4));
        LOWORD(v28[0]) = (LightingSetProgramHashCodes << 7) | v28[0] & 0x807F;
      }

      v21 = this + 16 * v19 + 5232;
      v22 = *(v21 + 2);
      if (v22)
      {
        v23 = *v21;
        do
        {
          v24 = *v23++;
          v2 = v2 & 0xFFFFFFFF00000000 | v24;
          Element = C3DRendererElementStoreGetElement(RendererElementStore, v2);
          v26 = *(Element + 72);
          if ((v26 & 0x40) != 0)
          {
            *(Element + 72) = (8 * LOWORD(v28[0])) & 0x380 | v26 & 0xFC7F;
          }

          C3D::DrawNodesPass::_computeProgramHashCodeForRendererElement(this, Element, ProgramHashCodeStore, v28, v18);
          --v22;
        }

        while (v22);
      }

      if (*(this + 296))
      {
        C3DLightingSystemEndQueries(LightingSystem);
      }

      ++v19;
    }

    while (v19 < *(this + 1236));
  }
}

void C3D::DrawNodesPass::_computeProgramHashCodeForRendererElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a2 + 16) != 0)
  {
    RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), a2);
    v11 = *(a2 + 8);
    v12 = *(a1 + 240);
    v13 = (*(*a1 + 80))(a1);
    ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(a3, a2, v12, v13);
    if (ProgramHashCodeForRenderElement)
    {
      if (*(a1 + 296) != 1)
      {
        return;
      }

      if (a5)
      {
        v16 = *(a4 + 80);
        v68[4] = *(a4 + 64);
        v68[5] = v16;
        v69 = *(a4 + 96);
        v17 = *(a4 + 16);
        v68[0] = *a4;
        v68[1] = v17;
        v18 = *(a4 + 48);
        v68[2] = *(a4 + 32);
        v68[3] = v18;
        if (C3DProgramHashCodeMatchLightHashCodesAndLightingContext(ProgramHashCodeForRenderElement, v68))
        {
          return;
        }
      }

LABEL_9:
      v65 = RenderContext;
      v66 = a3;
      v67 = v11;
      Mesh = C3DRendererElementGetMesh(a2, v15);
      MeshElement = C3DRendererElementGetMeshElement(a2, v19);
      Geometry = C3DRendererElementGetGeometry(a2, v20);
      Material = C3DRendererElementGetMaterial(a2, v21);
      if (*(a1 + 256))
      {
        v23 = *(a1 + 256);
      }

      else
      {
        v23 = Material;
      }

      v24 = *(a2 + 8);
      if (v24)
      {
        if ((*(v24 + 221) & 0x10) != 0)
        {
          v25 = *(a2 + 40);
          if (v25)
          {
            C3DFXTechniqueEnsureThatPassesShouldExecute(v25, v24);
          }
        }
      }

      v26 = *(a1 + 298);
      v27 = *(a1 + 4948);
      v28 = *(a2 + 72);
      v29 = *(a1 + 117);
      v30 = *(a1 + 118);
      if ([(SCNMTLRenderContext *)v65 reverseZ])
      {
        v31 = -128;
      }

      else
      {
        v31 = 0;
      }

      v32 = (8 * (v29 & 3)) & 0x98 | (v28 >> 11) & 7 | v31 & 0xFFFFFF9F | (32 * (v30 & 3));
      if (!*(a1 + 256))
      {
        v52 = C3DProgramHashCodeCreate(v67, Geometry, Mesh, MeshElement, a4, v23, (v27 << 16) & 0xFFFFFFFF00FFFFFFLL | (v32 << 24) | v26);
        v38 = v66;
LABEL_28:
        v53 = (*(*a1 + 80))(a1);
        C3DProgramHashCodeStoreRegisterProgramForRendererElementAndHashPass(v38, a2, v52, v53);
        if (v52)
        {
          CFRelease(v52);
        }

        return;
      }

      if (!C3DRendererElementIsOpaque(a2) || (v29 & 3) != 0 || (v34 = v23) != 0 && (v35 = C3DRendererElementGetMaterial(a2, v33), (C3DEntityHasShaderModifiers(v35, 0) & 1) != 0))
      {
        v36 = *(a2 + 72);
        v37 = v26;
        v38 = v66;
        v39 = v27;
LABEL_25:
        *(a2 + 72) = v36 | 0x400;
        v40 = C3DRendererElementGetGeometry(a2, v33);
        v42 = C3DRendererElementGetMesh(a2, v41);
        v44 = C3DRendererElementGetMeshElement(a2, v43);
        v46 = C3DRendererElementGetMaterial(a2, v45);
        v47 = (v39 << 16) & 0xFFFFFFFF00FFFFFFLL | (v32 << 24) | v37;
        v48 = v67;
        v49 = v40;
        v50 = v42;
        v51 = v44;
LABEL_26:
        v52 = C3DProgramHashCodeCreate(v48, v49, v50, v51, 0, v46, v47);
        goto LABEL_28;
      }

      v37 = v26;
      v38 = v66;
      v39 = v27;
      if (Geometry)
      {
        v54 = C3DEntityHasShaderModifiers(Geometry, 0) ^ 1;
        if (!v34)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v54 = 1;
        if (!v34)
        {
          goto LABEL_39;
        }
      }

      if (v54)
      {
        CommonProfile = C3DMaterialGetCommonProfile(v34, v33);
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0);
        if (EffectSlot)
        {
          HasImageOrTexture = C3DEffectSlotHasImageOrTexture(EffectSlot, v33);
          v36 = *(a2 + 72);
          if (HasImageOrTexture)
          {
            goto LABEL_25;
          }

LABEL_40:
          *(a2 + 72) = v36 & 0xFBFF;
          v58 = C3DRendererElementGetGeometry(a2, v33);
          v60 = C3DRendererElementGetMesh(a2, v59);
          v51 = C3DRendererElementGetMeshElement(a2, v61);
          v47 = (v39 << 16) & 0xFFFFFFFF00FFFFFFLL | (v32 << 24) | v37;
          v48 = v67;
          v49 = v58;
          v50 = v60;
          v46 = v34;
          goto LABEL_26;
        }
      }

LABEL_39:
      v36 = *(a2 + 72);
      if (!v54)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v15 = *(a1 + 240);
    if (!v15 || !C3DFXPassGetOverridingProgramHashCode(0, v15, a2))
    {
      goto LABEL_9;
    }
  }
}

void C3D::DrawNodesPass::execute(C3D::DrawNodesPass *a1, uint64_t a2)
{
  Scene = C3DEngineContextGetScene(*(a1 + 2), a2);
  RootNode = C3DSceneGetRootNode(Scene, v5);
  CFRetain(RootNode);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 2), v7);
  v9 = (*(*a1 + 80))(a1);
  [(SCNMTLRenderContext *)RenderContext setCurrentPassHash:v9];
  [(SCNMTLRenderContext *)RenderContext setCurrentPassMaterial:?];
  if (!C3DSceneGetEnginePipeline(Scene, v10))
  {
    v12 = scn_default_log(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_3(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  C3DEngineContextSetMatrix4x4(*(a1 + 2), 0, a1 + 64 * *(a2 + 16) + 3792);
  C3DEngineContextSetMatrix4x4(*(a1 + 2), 1, a1 + 64 * *(a2 + 16) + 3408);
  C3D::DrawNodesPass::_renderEye(a1);
  if (*(a1 + 4948))
  {
    v20 = 0;
    v21 = 0;
    v22 = (a1 + 4176);
    do
    {
      v23 = (*(a1 + 668) + v20 * 8);
      v24 = *&v22[v20];
      v25 = *&v22[v20 + 2];
      v26 = *&v22[v20 + 6];
      v23[3] = *&v22[v20 + 4];
      v23[4] = v26;
      v23[1] = v24;
      v23[2] = v25;
      if (C3DEngineContextIsTemporalAntialiasingEnabled(*(a1 + 2)))
      {
        TAAJitter = C3DEngineContextGetTAAJitter(*(a1 + 2), 0);
        v28 = C3DEngineContextGetTAAJitter(*(a1 + 2), 1);
        v29 = (*(a1 + 668) + v20 * 8);
        v30 = v29[4];
        *v31.i8 = vadd_f32(vsub_f32(v28, TAAJitter), *v30.i8);
        v31.i64[1] = vextq_s8(v30, v30, 8uLL).u64[0];
        v29[4] = v31;
      }

      ++v21;
      v20 += 8;
    }

    while (v21 < *(a1 + 4948));
  }

  CFRelease(RootNode);
}

double C3D::DrawNodesPass::_renderEye(C3D::DrawNodesPass *this)
{
  MEMORY[0x28223BE20](this);
  v2 = v1;
  v4 = v3;
  v5 = v3 + 4096;
  Scene = C3DEngineContextGetScene(*(v3 + 16), v1);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v7);
  RenderContext = C3DEngineContextGetRenderContext(*(v4 + 16), v9);
  bzero(&v43, 0x1410uLL);
  v43.i64[0] = *(v4 + 240);
  v44 = *(v5 + 852);
  v45 = v2;
  v46 = *(v4 + 302);
  v47 = *(v4 + 117);
  memcpy(v48, (v4 + 320), sizeof(v48));
  if (*(v4 + 303) == 1)
  {
    v12 = C3D::Pass::descriptor(v4);
    if ((*(C3D::PassDescriptor::outputAtIndex(v12, 0) + 66) & 0x40) == 0)
    {
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
      if (BackgroundEffectSlot)
      {
        C3DEngineContextRenderBackgroundMap(*(v4 + 16), BackgroundEffectSlot, &v43);
      }
    }
  }

  Stats = C3DEngineContextGetStats(*(v4 + 16), v11);
  v16 = Stats;
  if (*(v5 + 920))
  {
    v17 = 0;
  }

  else
  {
    v17 = v2;
  }

  v18 = v4 + 16 * v17;
  v19 = *(v18 + 5240);
  v20 = *(v18 + 5232);
  if (!v20)
  {
    v21 = scn_default_log(Stats, v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::_renderEye(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = CACurrentMediaTime();
  SortSystem = C3DEngineContextGetSortSystem(*(v4 + 16), v30);
  v32 = *(v4 + 16);
  v33 = (*(*v4 + 80))(v4);
  C3DSortSystemSyncKeys(SortSystem, v32, v20, v19, v33);
  C3DSortSystemSort(SortSystem, *(v4 + 16), v20, v19);
  *(v16 + 152) = *(v16 + 152) + CACurrentMediaTime() - v29;
  if (C3DEngineContextGetMaxDrawingCommand(*(v4 + 16)))
  {
    v35 = C3DEngineContextGetStats(*(v4 + 16), v34);
    v36 = C3DEngineContextGetMaxDrawingCommand(*(v4 + 16)) + ~*(v35 + 12);
    if (v19 >= v36)
    {
      LODWORD(v19) = v36;
    }
  }

  v37 = CACurrentMediaTime();
  v38 = *(v4 + 16);
  v40[0] = EnginePipeline;
  v40[1] = v38;
  v41 = *(v4 + 296);
  v42 = *(v4 + 301);
  v40[3] = v4;
  v40[4] = 0;
  v40[2] = &v43;
  [(SCNMTLRenderContext *)RenderContext processRendererElements:v20 count:v19 engineIterationContext:v40];
  result = *(v16 + 152) + CACurrentMediaTime() - v37;
  *(v16 + 152) = result;
  return result;
}

uint64_t C3D::DrawNodesPass::_setupPointOfView(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1[631])
  {
    v8 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3D::DrawNodesPass::_setupPointOfView(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  (*(*a1 + 104))(a1);
  (*(*a1 + 96))(a1, a2, a3, a4);
  C3DCullingContextSetupCullingMatricesAndPlanes((a1 + 40), a1[2], a2, a3, *(a1 + 119));
  return (*(*a1 + 112))(a1);
}

void C3D::DrawNodesPass::_setupPointOfViewMatrices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 302) == 1)
  {
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(a1 + 16), a2);
    ProjectionInfos = C3DNodeGetProjectionInfos(a2, v73);
    if ((ProjectionInfos & 1) == 0)
    {
      v8 = scn_default_log(ProjectionInfos, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        C3D::DrawNodesPass::_setupPointOfViewMatrices(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    v17 = v74;
    v16 = v75;
    *(a1 + 5064) = v74;
    *(a1 + 5072) = v16;
    *(a1 + 5015) = (v73[0] & 0x20) != 0;
    if (CoordinatesSystemOptions)
    {
      if (v16 > v17)
      {
        v31 = v16;
      }

      else
      {
        v31 = v17 + 1.0;
      }

      v32 = __tanpi(0.25);
      if (v32 == 0.0)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = 1.0 / v32;
      }

      *&v34 = v33;
      v23 = v34;
      v24.i32[0] = 0;
      v24.i64[1] = 0;
      v24.i32[1] = v34;
      v26.i64[0] = 0;
      *&v35 = v31 / (v17 - v31);
      v26.i64[1] = __PAIR64__(-1.0, v35);
      *&v28 = 0;
      *&v36 = v17 * v31 / (v17 - v31);
      *(&v28 + 1) = v36;
      if ((CoordinatesSystemOptions & 8) != 0)
      {
        v37 = 0;
        v76 = v23;
        v77 = v24;
        v78 = v26;
        v79 = v28;
        do
        {
          *(&v80 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v76 + v37))), xmmword_21C27F8C0, *&v76.f32[v37 / 4], 1), xmmword_21C27F900, *(&v76 + v37), 2), xmmword_21C27FDD0, *(&v76 + v37), 3);
          v37 += 16;
        }

        while (v37 != 64);
        v23 = v80;
        v24 = v81;
        v26 = v82;
        v28 = v83;
      }
    }

    else
    {
      if (v16 > v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17 + 1.0;
      }

      v20 = __tanpi(0.25);
      if (v20 == 0.0)
      {
        v21 = 1.0;
      }

      else
      {
        v21 = 1.0 / v20;
      }

      *&v22 = v21;
      *&v28 = 0;
      v23 = v22;
      v24.i32[0] = 0;
      v24.i64[1] = 0;
      v24.i32[1] = v22;
      v26.i64[0] = 0;
      *&v25 = (v17 + v18) / (v17 - v18);
      v26.i64[1] = __PAIR64__(-1.0, v25);
      *&v27 = (v17 + v17) * v18 / (v17 - v18);
      *(&v28 + 1) = v27;
    }

    *(a1 + 3792) = v23;
    *(a1 + 3808) = v24;
    *(a1 + 3824) = v26;
    *(a1 + 3840) = v28;
    v71 = *(MEMORY[0x277D860B8] + 16);
    v72 = *MEMORY[0x277D860B8];
    v69 = *(MEMORY[0x277D860B8] + 48);
    v70 = *(MEMORY[0x277D860B8] + 32);
    WorldMatrix = C3DNodeGetWorldMatrix(a2, v19);
    v39 = 0;
    v40 = *WorldMatrix;
    v41 = WorldMatrix[1];
    v42 = WorldMatrix[2];
    v43 = WorldMatrix[3];
    v44 = vnegq_f32(v72);
    v76 = v70;
    v77 = v71;
    v78 = v44;
    v79 = v69;
    do
    {
      *(&v80 + v39) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v39))), v41, *&v76.f32[v39 / 4], 1), v42, *(&v76 + v39), 2), v43, *(&v76 + v39), 3);
      v39 += 16;
    }

    while (v39 != 64);
    v45 = 0;
    v46 = v81;
    v47 = v82;
    v48 = v83;
    *(a1 + 3024) = v80;
    *(a1 + 3040) = v46;
    *(a1 + 3056) = v47;
    *(a1 + 3072) = v48;
    v49 = vnegq_f32(v70);
    v76 = v49;
    v77 = v71;
    v78 = v72;
    v79 = v69;
    do
    {
      *(&v80 + v45) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v45))), v41, *&v76.f32[v45 / 4], 1), v42, *(&v76 + v45), 2), v43, *(&v76 + v45), 3);
      v45 += 16;
    }

    while (v45 != 64);
    v50 = 0;
    v51 = v81;
    v52 = v82;
    v53 = v83;
    *(a1 + 3088) = v80;
    *(a1 + 3104) = v51;
    *(a1 + 3120) = v52;
    *(a1 + 3136) = v53;
    v76 = v72;
    v77 = v70;
    v78 = vnegq_f32(v71);
    v79 = v69;
    do
    {
      *(&v80 + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v50))), v41, *&v76.f32[v50 / 4], 1), v42, *(&v76 + v50), 2), v43, *(&v76 + v50), 3);
      v50 += 16;
    }

    while (v50 != 64);
    v54 = 0;
    v55 = v81;
    v56 = v82;
    v57 = v83;
    *(a1 + 3152) = v80;
    *(a1 + 3168) = v55;
    *(a1 + 3184) = v56;
    *(a1 + 3200) = v57;
    v76 = v72;
    v77 = v49;
    v78 = v71;
    v79 = v69;
    do
    {
      *(&v80 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v54))), v41, *&v76.f32[v54 / 4], 1), v42, *(&v76 + v54), 2), v43, *(&v76 + v54), 3);
      v54 += 16;
    }

    while (v54 != 64);
    v58 = 0;
    v59 = v81;
    v60 = v82;
    v61 = v83;
    *(a1 + 3216) = v80;
    *(a1 + 3232) = v59;
    *(a1 + 3248) = v60;
    *(a1 + 3264) = v61;
    v76 = v72;
    v77 = v71;
    v78 = v70;
    v79 = v69;
    do
    {
      *(&v80 + v58) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v58))), v41, *&v76.f32[v58 / 4], 1), v42, *(&v76 + v58), 2), v43, *(&v76 + v58), 3);
      v58 += 16;
    }

    while (v58 != 64);
    v62 = 0;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    *(a1 + 3280) = v80;
    *(a1 + 3296) = v63;
    *(a1 + 3312) = v64;
    *(a1 + 3328) = v65;
    v76 = v44;
    v77 = v71;
    v78 = v49;
    v79 = v69;
    do
    {
      *(&v80 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*(&v76 + v62))), v41, *&v76.f32[v62 / 4], 1), v42, *(&v76 + v62), 2), v43, *(&v76 + v62), 3);
      v62 += 16;
    }

    while (v62 != 64);
    v66 = v81;
    v67 = v82;
    v68 = v83;
    *(a1 + 3344) = v80;
    *(a1 + 3360) = v66;
    *(a1 + 3376) = v67;
    *(a1 + 3392) = v68;
    C3DCullingContextSetupViewAndViewProjMatricesForCubemapRendering((a1 + 320));
  }

  else
  {
    v29 = *(a1 + 16);
    v30 = a1 + 320;

    C3DCullingContextSetupPointOfViewMatrices(v30, v29, a2, a3);
  }
}

uint64_t C3DAnimationGroupGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DAnimationGroupGetTypeID_onceToken != -1)
  {
    C3DAnimationGroupGetTypeID_cold_1();
  }

  return C3DAnimationGroupGetTypeID_typeID;
}

double __C3DAnimationGroupGetTypeID_block_invoke()
{
  C3DAnimationGroupGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationGroupContextClassSerializable;
  unk_281741EA8 = kC3DC3DAnimationGroupContextClassSerializable;
  unk_281741EB8 = *off_282DC6698;
  return result;
}

uint64_t C3DAnimationGroupCreate(uint64_t a1, uint64_t a2)
{
  if (C3DAnimationGroupGetTypeID_onceToken != -1)
  {
    C3DAnimationGroupGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationGroupGetTypeID_typeID, 160);
  C3DAnimationCommonInit(Instance);
  *(Instance + 168) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  return Instance;
}

void C3DAnimationGroupAddAnimation(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = scn_default_log(0, value);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 168), value);
}

void C3DAnimationGroupAddAnimations(_BOOL8 a1, CFArrayRef theArray)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, theArray), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationGroupAddAnimations_cold_1(v4, theArray, v5, v6, v7, v8, v9, v10);
    if (theArray)
    {
      goto LABEL_6;
    }
  }

  else if (theArray)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, theArray);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationGroupAddAnimations_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(v3 + 168);
  v20.length = CFArrayGetCount(theArray);
  v20.location = 0;
  CFArrayAppendArray(v19, theArray, v20);
}

CFIndex C3DAnimationGroupGetAnimationCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return CFArrayGetCount(*(a1 + 168));
}

const void *C3DAnimationGroupGetAnimationAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = scn_default_log(0, idx);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return CFArrayGetValueAtIndex(*(a1 + 168), idx);
}

uint64_t C3DAnimationGroupGetAnimations(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

void C3DAnimationGroupRemoveAllAnimations(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFArrayRemoveAllValues(*(a1 + 168));
}

void C3DAnimationGroupCopy(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationCopy_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationGroupCopy_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  C3DAnimationGroupRemoveAllAnimations(a2, a2);
  Animations = C3DAnimationGroupGetAnimations(v3, v18);
  Count = CFArrayGetCount(Animations);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Animations, i);
      Copy = C3DAnimationCreateCopy(ValueAtIndex, v24);
      CFArrayAppendValue(Mutable, Copy);
      CFRelease(Copy);
    }
  }

  C3DAnimationGroupAddAnimations(a2, Mutable);
  CFRelease(Mutable);
  IsAnimationClip = C3DAnimationGroupIsAnimationClip(v3, v26);
  C3DAnimationGroupSetIsAnimationClip(a2, IsAnimationClip);
}

void C3DAnimationGroupSetIsAnimationClip(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(result + 84) = *(result + 84) & 0xFEFF | v12;
}

uint64_t C3DAnimationGroupIsAnimationClip(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationGroupAddAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return HIBYTE(*(a1 + 84)) & 1;
}

id _C3DAnimationGroupCFFinalize(void *a1, uint64_t a2)
{
  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
    a1[21] = 0;
  }

  return _C3DAnimationCFFinalize(a1, a2);
}

BOOL _C3DAnimationGroupInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  v8 = _C3DAnimationInitWithPropertyList(a1, a2, a3, a4);
  if (v8)
  {
    Value = CFDictionaryGetValue(a2, @"channels");
    if (!Value || (v11 = Value, v12 = CFArrayGetCount(Value), v12 < 1))
    {
LABEL_14:
      v27 = CFDictionaryGetValue(a2, @"subAnimations");
      if (v27)
      {
        v28 = v27;
        Count = CFArrayGetCount(v27);
        if (Count >= 1)
        {
          v30 = Count;
          for (i = 0; i != v30; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v28, i);
            v34 = C3DAnimationGroupCreate(ValueAtIndex, v33);
            C3DInitWithPropertyList(v34, ValueAtIndex, a3, a4);
            C3DAnimationGroupAddAnimation(a1, v34);
            CFRelease(v34);
          }
        }
      }

      return 1;
    }

    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(v11, v14);
      v16 = CFDictionaryGetValue(v15, @"animation");
      if (!v16)
      {
        v36 = scn_default_log(0, v17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          _C3DAnimationGroupInitWithPropertyList_cold_5();
          if (!a4)
          {
            return 0;
          }
        }

        else
        {
LABEL_27:
          if (!a4)
          {
            return 0;
          }
        }

LABEL_28:
        if (*a4)
        {
          return 0;
        }

        MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
        result = 0;
        *a4 = MalformedDocumentError;
        return result;
      }

      v18 = v16;
      v19 = CFDictionaryContainsKey(v16, @"type");
      if (v19)
      {
        v22 = C3DAnimationCreateWithPropertyList(v18, a3, a4);
        if (!v22)
        {
          v39 = scn_default_log(0, v21);
          result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
          if (result)
          {
            _C3DAnimationGroupInitWithPropertyList_cold_2();
            return 0;
          }

          return result;
        }
      }

      else
      {
        v22 = C3DKeyframedAnimationCreate(v19, v20);
        v23 = C3DInitWithPropertyList(v22, v18, a3, a4);
        if ((v23 & 1) == 0)
        {
          v41 = scn_default_log(v23, v24);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            _C3DAnimationGroupInitWithPropertyList_cold_3();
          }

          CFRelease(v22);
          return 0;
        }
      }

      v25 = CFDictionaryGetValue(v15, @"targetPath");
      if (!v25)
      {
        if (v22)
        {
          CFRelease(v22);
        }

        v37 = scn_default_log(v25, v26);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        _C3DAnimationGroupInitWithPropertyList_cold_4();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_28;
      }

      C3DAnimationSetKeyPath(v22, v25);
      C3DAnimationGroupAddAnimation(a1, v22);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v13 == ++v14)
      {
        goto LABEL_14;
      }
    }
  }

  v35 = scn_default_log(v8, v9);
  result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _C3DAnimationGroupInitWithPropertyList_cold_1();
    return 0;
  }

  return result;
}

CFMutableDictionaryRef _C3DAnimationGroupCopyPropertyList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  theDict = _C3DAnimationCopyPropertyList(a1, a2, a3, a4);
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1, v16);
  v18 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v18, AnimationCount, MEMORY[0x277CBF128]);
  if (AnimationCount >= 1)
  {
    for (i = 0; i != AnimationCount; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
      if (!C3DAnimationIsGroup(AnimationAtIndex))
      {
        v22 = CFGetAllocator(a1);
        v23 = CFDictionaryCreateMutable(v22, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
        if (KeyPath)
        {
          CFDictionaryAddValue(v23, @"targetPath", KeyPath);
        }

        else
        {
          v26 = scn_default_log(0, v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            _C3DAnimationGroupCopyPropertyList_cold_2(&buf, v37, v26);
          }
        }

        v27 = C3DCopyPropertyList(AnimationAtIndex, a2, a3, a4);
        if (v27)
        {
          v28 = v27;
          CFDictionaryAddValue(v23, @"animation", v27);
          CFRelease(v28);
        }

        CFArrayAppendValue(Mutable, v23);
        CFRelease(v23);
      }
    }
  }

  if (CFArrayGetCount(Mutable) > 0)
  {
    CFDictionaryAddValue(theDict, @"channels", Mutable);
  }

  CFRelease(Mutable);
  v29 = CFGetAllocator(a1);
  v30 = CFArrayCreateMutable(v29, AnimationCount, MEMORY[0x277CBF128]);
  if (AnimationCount >= 1)
  {
    for (j = 0; j != AnimationCount; ++j)
    {
      v32 = C3DAnimationGroupGetAnimationAtIndex(a1, j);
      if (C3DAnimationIsGroup(v32))
      {
        v33 = C3DCopyPropertyList(v32, a2, a3, a4);
        CFArrayAppendValue(v30, v33);
        CFRelease(v33);
      }
    }
  }

  if (CFArrayGetCount(v30) > 0)
  {
    CFDictionaryAddValue(theDict, @"subAnimations", v30);
  }

  CFRelease(v30);
  return theDict;
}

void C3D::SSAOUpSamplePass::SSAOUpSamplePass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC66B8;
  v5[15] = a4;
}

uint64_t C3D::SSAOUpSamplePass::setup(C3D::Pass ***this)
{
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 4), 0);
  *(v2 + 8) = "SSAO-DepthNormal";
  v3 = C3D::Pass::descriptor(*this[15]);
  *(v2 + 16) = *(C3D::PassDescriptor::outputAtIndex(v3, 0) + 16);
  v4 = C3D::Pass::descriptor(*this[15]);
  *(v2 + 18) = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18);
  v5 = C3D::Pass::descriptor(*this[15]);
  LODWORD(v2) = *(C3D::PassDescriptor::outputAtIndex(v5, 0) + 16) / *(this[15] + 3);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 1) + 16) = v2;
  v6 = C3D::Pass::descriptor(*this[15]);
  LODWORD(v2) = *(C3D::PassDescriptor::outputAtIndex(v6, 0) + 18) / *(this[15] + 3);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 1) + 18) = v2;
  v7 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  *(v7 + 28) = 25;
  *(v7 + 8) = "SSAO-Final";
  v8 = C3D::Pass::descriptor(*this[15]);
  *(v7 + 16) = *(C3D::PassDescriptor::outputAtIndex(v8, 0) + 16);
  v9 = C3D::Pass::descriptor(*this[15]);
  result = C3D::PassDescriptor::outputAtIndex(v9, 0);
  *(v7 + 18) = *(result + 18);
  *(v7 + 66) |= 0x10u;
  if (*(v7 + 24) == 5)
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  *(this + 19) = v11;
  return result;
}

void *C3D::SSAOUpSamplePass::compile(C3D::SSAOUpSamplePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 15) + 16) | (2 * *(*(this + 15) + 17)) | (4 * *(*(this + 15) + 12)) | (*(*(this + 15) + 8) << 6);
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::SSAOUpSamplePass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(*(a1 + 2), a2);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v5);
    if (Camera)
    {
      v17[13] = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(Camera, v7), 0.0);
      v8 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v3->_textures[1] != v8)
      {
        v3->_textures[1] = v8;
        v3->_texturesToBind[0] |= 2uLL;
      }

      v9 = C3D::Pass::inputTextureAtIndex(a1, 1);
      if (v3->_textures[0] != v9)
      {
        v3->_textures[0] = v9;
        v3->_texturesToBind[0] |= 1uLL;
      }

      v10 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v3->_textures[2] != v10)
      {
        v3->_textures[2] = v10;
        v3->_texturesToBind[0] |= 4uLL;
      }

      SCNMTLComputeCommandEncoder::setBytes(v3, v17, 0x40uLL, 0);
      v11 = C3D::Pass::outputTextureAtIndex(a1, 0);
      v13 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16, v12);
      v14 = [(SCNMTLOpenSubdivComputeEvaluator *)v13 computeEvaluator];
      SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v11, v14);
    }

    else if ((C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
    {
      C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done = 1;
      v16 = scn_default_log(0, v7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v16);
      }
    }
  }

  else if ((C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
  {
    C3D::SSAOUpSamplePass::execute(C3D::ComputeArgs const&)::done = 1;
    v15 = scn_default_log(0, v5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v15);
    }
  }
}

void C3D::SSAOPassUpSamplingResource::~SSAOPassUpSamplingResource(C3D::SSAOPassUpSamplingResource *this)
{
  *this = &unk_282DC6728;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC6728;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

btPoint2PointConstraint *_createConstraintFromDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v5 = [v3 _handle];
    *v12.var0.var0 = *(a1 + 16);
    *&v12.var0.var0[2] = *(a1 + 24);
    v6 = [*(a1 + 8) _handle];
    *v11.var0.var0 = *(a1 + 28);
    *&v11.var0.var0[2] = *(a1 + 36);
    v7 = btAlignedAllocInternal(432, 16);
    btPoint2PointConstraint::btPoint2PointConstraint(v7, v5, v6, &v12, &v11);
  }

  else
  {
    if (!v3)
    {
      v8 = scn_default_log(0, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v8);
      }
    }

    v9 = [*a1 _handle];
    *v12.var0.var0 = *(a1 + 16);
    *&v12.var0.var0[2] = *(a1 + 24);
    v7 = btAlignedAllocInternal(432, 16);
    btPoint2PointConstraint::btPoint2PointConstraint(v7, v9, &v12);
  }

  return v7;
}

void C3D::JitteringPass::setup(C3D::JitteringPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  C3D::Pass::parentColorDesc(&v14, this);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 16) = v14;
  *(v2 + 32) = v15;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 31) = 0;
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v3);
  v5 = [(SCNMTLRenderContext *)RenderContext features];
  UpdateMainFramebuffer = C3DEngineContextGetUpdateMainFramebuffer(*(this + 2));
  if ((v5 & 0x800) != 0)
  {
    if (UpdateMainFramebuffer)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    C3D::Pass::setOutputCount(this, v10);
    v11 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    C3D::Pass::parentColorDesc(&v14, this);
    *(v11 + 16) = v14;
    *(v11 + 32) = v15;
    *(v11 + 28) = 115;
    *(v11 + 65) = 0;
    *(v11 + 66) |= 0x100u;
    if (C3DEngineContextGetJitteringStep(*(this + 2)))
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    *(v11 + 66) = *(v11 + 66) & 0xFFFC | v12;
    if (C3DEngineContextGetUpdateMainFramebuffer(*(this + 2)))
    {
      v13 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
      *(v13 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(&v14, this);
      *(v13 + 16) = v14;
      *(v13 + 32) = v15;
      *(v13 + 65) = 1;
    }
  }

  else
  {
    if (UpdateMainFramebuffer)
    {
      C3D::Pass::setOutputCount(this, 2u);
      v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
      *(v7 + 8) = "pingPongTex";
      C3D::Pass::parentColorDesc(&v14, this);
      *(v7 + 16) = v14;
      *(v7 + 32) = v15;
      *(v7 + 28) = 115;
      *(v7 + 65) = 0;
      *(v7 + 66) = *(v7 + 66) & 0xFEF4 | 0x108;
      v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
      *(v8 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(&v14, this);
      *(v8 + 16) = v14;
      *(v8 + 32) = v15;
      *(v8 + 65) = 1;
      v9 = *(v8 + 66) & 0xFFFC;
    }

    else
    {
      C3D::Pass::setOutputCount(this, 1u);
      v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
      *(v8 + 8) = "COLOR";
      C3D::Pass::parentColorDesc(&v14, this);
      *(v8 + 16) = v14;
      *(v8 + 32) = v15;
      *(v8 + 28) = 115;
      *(v8 + 65) = 0;
      v9 = *(v8 + 66) & 0xFEFC | 0x100;
    }

    *(v8 + 66) = v9;
  }
}

void C3D::JitteringPass::compile(C3D::JitteringPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v5 = [(SCNMTLRenderContext *)RenderContext features];
  v6 = 0;
  if ((v5 & 0x800) == 0)
  {
    v6 = (C3DEngineContextGetJitteringStep(*(this + 2)) & 1) == 0;
  }

  *(this + 248) = v6;
  v7 = *(v4 + 16) | (*((*(*this + 88))(this) + 24) << 32);
  v8 = 0xC6A4A7935BD1E995 * (C3D::Pass::hashName(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47))));
  v9 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v8 ^ (v8 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v8 ^ (v8 >> 47))) >> 47));
  *(this + 30) = v9;
  if (!v9)
  {
    operator new();
  }

  v10 = C3D::Pass::resource(this);
  v11 = *(this + 3);
  v13 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(this + 30) + 8 * *(this + 248) + 16, v12);
  PersistentResource = C3D::RenderGraph::createPersistentResource(v11, v13);
  C3D::PassResource::setOutputAtIndex(v10, PersistentResource, 0);
}

uint64_t C3D::JitteringPass::execute(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  JitteringStep = C3DEngineContextGetJitteringStep(*(a1 + 16));
  v6 = (JitteringStep + 1);
  if (JitteringStep == -1)
  {
    v7 = scn_default_log(JitteringStep, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3D::JitteringPass::execute(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *&v15 = v6 + -1.0;
  *(&v15 + 1) = 1.0 / v6;
  v28 = v15;
  UpdateMainFramebuffer = C3DEngineContextGetUpdateMainFramebuffer(*(a1 + 16));
  v18 = *(a1 + 240);
  if (UpdateMainFramebuffer)
  {
    v19 = v18 + 32;
  }

  else
  {
    v19 = v18 + 40;
  }

  v20 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v19 :v17) detail:"state" :?NSRetainFct];
  if (*(v3 + 3376) != v20)
  {
    *(v3 + 3376) = v20;
    [*(v3 + 3392) setRenderPipelineState:v20];
  }

  v21 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v21, 0);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), v22);
  if (([(SCNMTLRenderContext *)RenderContext features]& 0x800) == 0)
  {
    v25 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 240) + 8 * (*(a1 + 248) ^ 1) + 16, v24);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v25, 1uLL);
  }

  SCNMTLRenderCommandEncoder::setFragmentBytes(v3, &v28, 8uLL, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3, v26);
}

void C3D::JitteringPassResource::~JitteringPassResource(C3D::JitteringPassResource *this)
{
  *this = &unk_282DC67B8;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  for (i = 24; i != 8; i -= 8)
  {
    v5 = *(this + i);
    if (v5)
    {
    }
  }
}

{
  *this = &unk_282DC67B8;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = 24;
  while (1)
  {
    v5 = *(this + v4);
    if (v5)
    {
    }

    v4 -= 8;
    if (v4 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t vertexSort(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = *a1 + a1[1];
  v5 = *(v4 + v3 * *a2);
  v6 = *(v4 + v3 * *a3);
  if (v6 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

float32x4_t __computeBindingSpaceAndOffset(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v25 = __invert_f4(a4);
  v11 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a6.f32, 1), v25.columns[0], a6.f32[0]), v25.columns[2], a6, 2));
  v12 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a8.f32, 1), v25.columns[0], a8.f32[0]), v25.columns[2], a8, 2));
  v23 = vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a5.f32, 1), v25.columns[0], a5.f32[0]), v25.columns[2], a5, 2));
  v25.columns[0] = vsubq_f32(vaddq_f32(v25.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25.columns[1], *a7.f32, 1), v25.columns[0], a7.f32[0]), v25.columns[2], a7, 2)), v11);
  v25.columns[2] = vsubq_f32(v12, v11);
  v25.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25.columns[0], v25.columns[0]), v25.columns[0], 0xCuLL), vnegq_f32(v25.columns[2])), v25.columns[0], vextq_s8(vuzp1q_s32(v25.columns[2], v25.columns[2]), v25.columns[2], 0xCuLL));
  v25.columns[1] = vextq_s8(vuzp1q_s32(v25.columns[3], v25.columns[3]), v25.columns[3], 0xCuLL);
  v13 = vmulq_f32(v25.columns[0], v25.columns[0]);
  v14 = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32)));
  v13.i32[0] = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32))).u32[0];
  v25.columns[0] = vmulq_n_f32(v25.columns[0], v13.f32[0]);
  v25.columns[3] = vmulq_f32(v25.columns[3], v25.columns[3]);
  v13.i64[0] = v13.u32[0];
  v13.f32[0] = v25.columns[3].f32[1] + (v25.columns[3].f32[2] + v25.columns[3].f32[0]);
  *v25.columns[3].f32 = vrsqrte_f32(*v13.f32);
  *v25.columns[3].f32 = vmul_f32(*v25.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32)));
  v25.columns[1] = vmulq_n_f32(v25.columns[1], vmul_f32(*v25.columns[3].f32, vrsqrts_f32(*v13.f32, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32))).f32[0]);
  v25.columns[3] = vmulq_f32(v25.columns[2], v25.columns[2]);
  *&v15 = v25.columns[3].f32[2] + vaddv_f32(*v25.columns[3].f32);
  *v25.columns[3].f32 = vrsqrte_f32(v15);
  *v25.columns[3].f32 = vmul_f32(*v25.columns[3].f32, vrsqrts_f32(v15, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32)));
  v25.columns[2] = vmulq_n_f32(v25.columns[2], vmul_f32(*v25.columns[3].f32, vrsqrts_f32(v15, vmul_f32(*v25.columns[3].f32, *v25.columns[3].f32))).f32[0]);
  v16 = a2 + 36 * a1;
  v25.columns[3] = v25.columns[0];
  v25.columns[3].i32[3] = v25.columns[1].i32[0];
  *v16 = v25.columns[3];
  *(v16 + 16) = vextq_s8(vextq_s8(v25.columns[1], v25.columns[1], 0xCuLL), v25.columns[2], 8uLL);
  *(v16 + 32) = v25.columns[2].i32[2];
  v24 = __invert_f3(*v25.columns[0].f32);
  result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], v23.f32[0]), v24.columns[1], *v23.f32, 1), v24.columns[2], v23, 2);
  v18 = a3 + 12 * a1;
  *v18 = result.i64[0];
  *(v18 + 8) = result.i32[2];
  return result;
}

void C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs(uint64_t a1, size_t count, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, size_t *a24)
{
  v114[9] = *MEMORY[0x277D85DE8];
  v28 = count;
  v78 = count;
  if (a13 == a14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke;
    block[3] = &__block_descriptor_128_e8_v16__0Q8l;
    block[4] = a7;
    block[5] = a4;
    block[6] = a6;
    block[7] = a8;
    block[8] = a15;
    block[9] = a16;
    block[10] = a17;
    block[11] = a22;
    block[12] = a21;
    block[13] = a18;
    block[14] = a19;
    block[15] = a20;
    dispatch_apply(count, 0, block);
  }

  else
  {
    v109.i64[0] = 0;
    v109.i64[1] = &v109;
    v110.i64[0] = 0x2020000000;
    v110.i32[2] = 0;
    v80 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
    ElementsCount = C3DMeshGetElementsCount(a3, v29);
    if (ElementsCount <= 0)
    {
      v36 = v109.i64[1];
    }

    else
    {
      v31 = a8;
      v32 = 0;
      v33 = ElementsCount - 1;
      do
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(a3, v32, 0);
        C3DMeshElementGetContent(ElementAtIndex, a13, v113);
        C3DMeshElementGetContent(ElementAtIndex, a14, v114);
        v90.n128_u64[0] = MEMORY[0x277D85DD0];
        v90.n128_u64[1] = 3221225472;
        v91 = ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke_2;
        v92 = &unk_2782FFD48;
        v95 = a7;
        v96 = a4;
        v97 = a6;
        v98 = v31;
        v99 = a15;
        v100 = a16;
        v101 = a17;
        v102 = a22;
        v103 = a21;
        v104 = a18;
        v105 = a19;
        v106 = a20;
        v93 = &v109;
        v94 = v80;
        v107 = v28;
        C3DIndicesContentArrayEnumeratePrimitives(v113, 2, &v90, v35);
        v36 = v109.i64[1];
        if (*(v109.i64[1] + 24) == v28)
        {
          break;
        }
      }

      while (v33 != v32++);
    }

    if (*(v36 + 24) != v28)
    {
      __assert_rtn("C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs", "SCNGeometryWrapDeformerUtils.mm", 889, "doneIndicesCount == vertexCount");
    }

    free(v80);
    _Block_object_dispose(&v109, 8);
  }

  if (a1 == 1)
  {
    v38 = 16 * (3 * v28);
  }

  else if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4 * (3 * v28);
  }

  v73 = v38;
  v39 = malloc_type_malloc(v38, 0x100004052888210uLL);
  if (v28)
  {
    v40 = 0;
    while (1)
    {
      if (a18)
      {
        v41 = *(a18 + (3 * v40));
        v42 = *(a18 + (3 * v40 + 1));
        v43 = *(a18 + (3 * v40 + 2));
      }

      else if (a19)
      {
        v41 = *(a19 + 2 * (3 * v40));
        v42 = *(a19 + 2 * (3 * v40 + 1));
        v43 = *(a19 + 2 * (3 * v40 + 2));
      }

      else if (a20)
      {
        v41 = *(a20 + 4 * (3 * v40));
        v42 = *(a20 + 4 * (3 * v40 + 1));
        v43 = *(a20 + 4 * (3 * v40 + 2));
      }

      else
      {
        v43 = 0;
        v42 = 0;
        v41 = 0;
      }

      if (a22)
      {
        v44 = (a22 + 4 * (v40 & 0x7FFFFFFF));
        v45.i32[0] = *v44;
        v45.i32[1] = v44[1];
        v46 = vdiv_f32(vcvt_f32_u32(v45), vdup_n_s32(0x477FFF00u));
      }

      else
      {
        v46 = *(a21 + 8 * (v40 & 0x7FFFFFFF));
      }

      v87 = v46;
      *v47.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v41);
      v84 = v47;
      *v48.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v42);
      v82 = v48;
      *v49.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a6, v43);
      v88 = vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v82, v87, 1), v84, v87.f32[0]), v49, (1.0 - v87.f32[0]) - v87.f32[1]);
      v50 = vsubq_f32(v82, v84);
      v51 = vsubq_f32(v49, v84);
      v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v51)), v50, vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL));
      v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
      v54 = vmulq_f32(v50, v50);
      *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
      *v54.f32 = vrsqrte_f32(v55);
      *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
      v56 = vmulq_n_f32(v50, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]);
      v57 = vmulq_f32(v52, v52);
      v52.f32[0] = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
      *v57.f32 = vrsqrte_f32(v52.u32[0]);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v57.f32, *v57.f32)));
      v83 = vmulq_n_f32(v53, vmul_f32(*v57.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      v85 = v56;
      v58 = vmulq_f32(v51, v51);
      v53.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
      *v58.f32 = vrsqrte_f32(v53.u32[0]);
      *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v58.f32, *v58.f32)));
      v81 = vmulq_n_f32(v51, vmul_f32(*v58.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v58.f32, *v58.f32))).f32[0]);
      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        *v59.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a5, v40);
        v89 = vsubq_f32(vaddq_f32(a12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a10, *v59.f32, 1), a9, v59.f32[0]), a11, v59, 2)), v88);
        v115.columns[1] = v83;
        v115.columns[0] = v85;
        v115.columns[2] = v81;
        v116 = __invert_f3(v115);
        v116.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116.columns[0], v89.f32[0]), v116.columns[1], *v89.f32, 1), v116.columns[2], v89, 2);
        v39[(3 * v40)] = v116.columns[0].i32[0];
        v39[(3 * v40 + 1)] = v116.columns[0].i32[1];
        v60 = v116.columns[0].i32[2];
        v61 = 3 * v40 + 2;
LABEL_35:
        v39[v61] = v60;
      }

      if (++v40 == v78)
      {
        goto LABEL_37;
      }
    }

    v117.columns[1] = v83;
    v117.columns[0] = v56;
    v117.columns[0].i32[3] = 0;
    v117.columns[1].i32[3] = 0;
    v117.columns[2] = v81;
    v117.columns[2].i32[3] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v117.columns[3].i64[0] = v88.i64[0];
    v117.columns[3].i32[2] = v88.i32[2];
    v118 = __invert_f4(v117);
    v65 = 0;
    v109 = a9;
    v110 = a10;
    v111 = a11;
    v112 = a12;
    do
    {
      v113[v65 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118.columns[0], COERCE_FLOAT(*(&v109 + v65 * 4))), v118.columns[1], *&v109.f32[v65], 1), v118.columns[2], *(&v109 + v65 * 4), 2), v118.columns[3], *(&v109 + v65 * 4), 3);
      v65 += 4;
    }

    while (v65 != 16);
    v66 = v113[0];
    v67 = v113[1];
    v68 = v113[2];
    v69 = v113[3];
    v70 = 12 * v40;
    v39[v70] = v113[0].i32[0];
    v39[(12 * v40) | 1] = v67.i32[0];
    v39[(12 * v40) | 2] = v68.i32[0];
    v39[(12 * v40) | 3] = v69.i32[0];
    *&v71 = vtrn2q_s32(v66, v67).u64[0];
    *(&v71 + 1) = __PAIR64__(v69.u32[1], v68.u32[1]);
    *&v39[v70 + 4] = v71;
    *&v39[v70 + 8] = vzip1_s32(*&vextq_s8(v66, v66, 8uLL), *&vextq_s8(v67, v67, 8uLL));
    v39[v70 + 10] = v68.i32[2];
    v60 = v69.i32[2];
    v61 = 12 * v40 + 11;
    goto LABEL_35;
  }

LABEL_37:
  *a23 = v39;
  *a24 = v73;
}

void ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke(uint64_t *a1, uint64_t a2)
{
  DWORD2(v16) = 0;
  *&v16 = 0;
  DWORD2(v15) = 0;
  *&v15 = 0;
  DWORD2(v14) = 0;
  *&v14 = 0;
  ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(a1[4], a2);
  __bindToUV(a1[5], a1[7], a1[8], a1[9], &v15, &v14, &v16, ValueAtIndexAsVector2);
  v5 = a1[11];
  if (a1[10])
  {
    v6 = &v15;
  }

  else
  {
    v6 = &v14;
  }

  v7 = *v6;
  if (v5)
  {
    v8 = (v5 + 4 * a2);
    *v8 = (65535.0 * *&v7);
    v8[1] = vmuls_lane_f32(65535.0, *&v7, 1);
  }

  else
  {
    *(a1[12] + 8 * a2) = v7;
  }

  v9 = a1[13];
  if (v9)
  {
    *(v9 + 3 * a2) = v16;
    *(a1[13] + 3 * a2 + 1) = BYTE4(v16);
    *(a1[13] + 3 * a2 + 2) = BYTE8(v16);
  }

  else
  {
    v10 = a1[14];
    if (v10)
    {
      v11 = (v10 + 6 * a2);
      *v11 = v16;
      v11[1] = WORD2(v16);
      v11[2] = WORD4(v16);
    }

    else
    {
      v12 = a1[15];
      if (v12)
      {
        v13 = v12 + 12 * a2;
        *v13 = v16;
        *(v13 + 8) = DWORD2(v16);
      }
    }
  }
}

void __bindToUV(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5, _OWORD *a6, _OWORD *a7, double a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 2139095039;
  v52 = 0;
  v53 = &v52;
  v56 = 0;
  v54 = 0x3020000000;
  v55 = 0;
  v47 = 0;
  v48 = &v47;
  v51 = 0;
  v49 = 0x3020000000;
  v50 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3020000000;
  v46 = 0;
  v45 = 0;
  ElementsCount = C3DMeshGetElementsCount(a1, a2);
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      if (*(v37 + 24) == 1)
      {
        break;
      }

      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
      C3DMeshElementGetContent(ElementAtIndex, a3, v40);
      C3DMeshElementGetContent(ElementAtIndex, a4, &v41);
      v21.n128_u64[0] = MEMORY[0x277D85DD0];
      v21.n128_u64[1] = 3221225472;
      v22 = ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke;
      v23 = &unk_2782FFDB8;
      v30 = a8;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v24 = &v36;
      v25 = v34;
      v26 = &v47;
      v27 = &v52;
      v28 = &v42;
      v29 = a2;
      C3DIndicesContentArrayEnumeratePrimitives(v40, 2, &v21, v18);
    }
  }

  v19 = v37;
  if (*(v37 + 24))
  {
    if ((v37[3] & 1) == 0)
    {
      __assert_rtn("__bindToUV", "SCNGeometryWrapDeformerUtils.mm", 302, "done");
    }
  }

  else
  {
    *a5 = *(v48 + 2);
    *a6 = *(v53 + 2);
    *a7 = *(v43 + 2);
    *(v19 + 24) = 1;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_21C0F3F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose((v28 - 256), 8);
  _Block_object_dispose((v28 - 208), 8);
  _Block_object_dispose((v28 - 160), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___Z68C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_PK15__C3DMeshSourceS5_S5_S5_llll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_PSA_Pm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5)
{
  if (a4)
  {
    v8 = 0;
    v9 = 2 * a4;
    while (1)
    {
      v10 = *(a3 + 4 * v8);
      v11 = *(a1 + 40);
      if (!*(v11 + 4 * v10))
      {
        v12 = *(a3 + 4 * (v8 + 1));
        *(v11 + 4 * v10) = 1;
        DWORD2(v23) = 0;
        *&v23 = 0;
        DWORD2(v22) = 0;
        *&v22 = 0;
        DWORD2(v21) = 0;
        *&v21 = 0;
        ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 48), v12);
        __bindToUV(*(a1 + 56), *(a1 + 72), *(a1 + 80), *(a1 + 88), &v22, &v21, &v23, ValueAtIndexAsVector2);
        v14 = *(a1 + 104);
        v15 = *(a1 + 96) ? &v22 : &v21;
        v16 = *v15;
        if (v14)
        {
          *(v14 + 2 * (2 * v10)) = (65535.0 * *&v16);
          *(v14 + 2 * ((2 * v10) | 1u)) = vmuls_lane_f32(65535.0, *&v16, 1);
        }

        else
        {
          *(*(a1 + 112) + 4 * (2 * v10)) = v16;
        }

        v17 = *(a1 + 120);
        if (v17)
        {
          v18 = (3 * v10);
          *(v17 + v18) = v23;
          *(*(a1 + 120) + (v18 + 1)) = BYTE4(v23);
          *(*(a1 + 120) + (v18 + 2)) = BYTE8(v23);
        }

        else
        {
          v19 = *(a1 + 128);
          if (v19)
          {
            *(v19 + 2 * (3 * v10)) = v23;
            *(v19 + 2 * (3 * v10 + 1)) = WORD2(v23);
            *(v19 + 2 * (3 * v10 + 2)) = WORD4(v23);
          }

          else
          {
            v20 = *(a1 + 136);
            if (v20)
            {
              *(v20 + 4 * (3 * v10)) = v23;
              *(v20 + 4 * (3 * v10 + 1)) = DWORD1(v23);
              *(v20 + 4 * (3 * v10 + 2)) = DWORD2(v23);
            }
          }
        }

        if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 144))
        {
          break;
        }
      }

      v8 += 2;
      if (v9 == v8)
      {
        return;
      }
    }

    *a5 = 1;
  }
}

void C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions(uint64_t a1, size_t iterations, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, void **a23, size_t *a24, void **a25, void *a26, size_t *a27)
{
  v27 = iterations;
  v30 = a20;
  v29 = a21;
  v31 = a18;
  v32 = a19;
  v34 = a16;
  v33 = a17;
  if (a1 == 1)
  {
    v36 = 4 * (9 * iterations);
    *a24 = v36;
    v44 = a7;
    v45 = a8;
    v42 = a6;
    v43 = a4;
    v40 = a11;
    v41 = a12;
    v38 = a9;
    v39 = a10;
    *a22 = malloc_type_malloc(v36, 0x100004052888210uLL);
    *a23 = malloc_type_malloc(*a24, 0x100004052888210uLL);
    v37 = 12 * v27;
    *a27 = v37;
    *a25 = malloc_type_malloc(v37, 0x100004052888210uLL);
    v35 = malloc_type_malloc(*a27, 0x100004052888210uLL);
    v34 = a16;
    v33 = a17;
    v32 = a19;
    v30 = a20;
    v29 = a21;
    v31 = a18;
    a9 = v38;
    a10 = v39;
    a11 = v40;
    a12 = v41;
    a6 = v42;
    a4 = v43;
    a7 = v44;
    a8 = v45;
    goto LABEL_5;
  }

  if (!a1)
  {
    v35 = 0;
    *a24 = 0;
    *a22 = 0;
    *a23 = 0;
    *a27 = 0;
    *a25 = 0;
LABEL_5:
    *a26 = v35;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke;
  block[3] = &__block_descriptor_232_e8_v16__0Q8l;
  v47 = a9;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a6;
  v52 = a4;
  v53 = a13;
  v54 = a7;
  v55 = a8;
  v56 = a15;
  v57 = v29;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = v33;
  v62 = v31;
  v63 = a1;
  v64 = a22;
  v65 = a25;
  v66 = a23;
  v67 = a26;
  dispatch_apply(v27, 0, block);
}

void ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x277D85DE8];
  *v3.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 96), a2);
  v46 = v3;
  v42 = *(a1 + 64);
  v44 = *(a1 + 32);
  v38 = *(a1 + 48);
  v40 = *(a1 + 80);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3020000000;
  v95 = 0;
  v94 = 0;
  v88 = 0;
  v89[0] = &v88;
  v90 = 0;
  v89[1] = 0x3020000000;
  v89[3] = 0;
  v85 = 0;
  v86[0] = &v85;
  v87 = 0;
  v86[1] = 0x3020000000;
  v86[3] = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 2139095039;
  v80 = 0;
  v81 = &v80;
  v84 = 0;
  v82 = 0x3020000000;
  v83 = 0;
  v75 = 0;
  v76 = &v75;
  v79 = 0;
  v77 = 0x3020000000;
  v78 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3020000000;
  v74 = 0;
  v73 = 0;
  ElementsCount = C3DMeshGetElementsCount(*(a1 + 104), v4);
  v47 = vaddq_f32(v40, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v38, *v46.f32, 1), v44, v46.f32[0]), v42, v46, 2));
  if (ElementsCount >= 1)
  {
    for (i = 0; i != ElementsCount; ++i)
    {
      if (*(v67 + 24) == 1)
      {
        break;
      }

      ElementAtIndex = C3DMeshGetElementAtIndex(*(a1 + 104), i, 0);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      C3DMeshElementGetContent(ElementAtIndex, *(a1 + 112), &v60);
      v59[0] = v60;
      v59[1] = v61;
      v59[2] = v62;
      v59[3] = v63;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2;
      v48[3] = &unk_2782FFD70;
      v58 = *(a1 + 120);
      v49 = v47;
      v50 = &v66;
      v51 = &v88;
      v52 = &v85;
      v53 = &v91;
      v54 = v64;
      v55 = &v80;
      v56 = &v75;
      v57 = &v70;
      C3DIndicesContentEnumeratePrimitives(v59, v48, v47);
    }
  }

  v8 = v67;
  if (!*(v67 + 24))
  {
    *(v89[0] + 32) = *(v76 + 2);
    *(v86[0] + 32) = *(v81 + 2);
    *(v92 + 2) = *(v71 + 2);
    *(v8 + 24) = 1;
  }

  if (*(a1 + 136))
  {
    v9 = v89;
  }

  else
  {
    v9 = v86;
  }

  v45 = *(*v9 + 32);
  v10.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v92 + 8));
  v43 = v10;
  v11.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v92 + 9));
  v41 = v11;
  v12.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 120), *(v92 + 10));
  v39 = v12;
  v13.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v92 + 8));
  v37 = v13;
  v14.n128_f64[0] = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v92 + 9));
  v36 = v14;
  *v15.i64 = C3DMeshSourceGetValueAtIndexAsVector3(*(a1 + 128), *(v92 + 10));
  v16 = (1.0 - *&v45) - *(&v45 + 1);
  v34 = v15;
  v17 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v41, *&v45, 1), v43, *&v45), v39, v16), v47);
  v18 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_lane_f32(v36, *&v45, 1), v37, *&v45), v15, v16), v47);
  v19 = vmulq_f32(v17, v17);
  v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  v21 = vmulq_f32(v18, v18);
  v22 = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
  v23 = vmulq_f32(v17, v18);
  if ((v23.f32[2] + vaddv_f32(*v23.f32)) >= 0.0)
  {
    if (v20 < v22)
    {
      v25 = __adjustDistanceByAligningProjection(v47, v37, v36, v34, v17);
      v26 = v25 / (v20 + v25);
      goto LABEL_16;
    }

    v24 = v22 + __adjustDistanceByAligningProjection(v47, v43, v41, v39, v18);
  }

  else
  {
    v24 = v20 + v22;
  }

  v26 = v22 / v24;
LABEL_16:
  v27 = *(a1 + 152);
  *(*(a1 + 144) + 4 * a2) = v26;
  if (v27)
  {
    v28 = (v27 + 4 * a2);
    *v28 = (*&v45 * 65535.0);
    v28[1] = (*(&v45 + 1) * 65535.0);
  }

  else
  {
    *(*(a1 + 160) + 8 * a2) = v45;
  }

  v29 = *(a1 + 168);
  if (v29)
  {
    *(v29 + 3 * a2) = *(v92 + 2);
    *(*(a1 + 168) + 3 * a2 + 1) = *(v92 + 36);
    *(*(a1 + 168) + 3 * a2 + 2) = *(v92 + 40);
  }

  else
  {
    v30 = *(a1 + 176);
    if (v30)
    {
      v31 = (v30 + 6 * a2);
      *v31 = *(v92 + 2);
      v31[1] = *(v92 + 18);
      v31[2] = *(v92 + 20);
    }

    else
    {
      v32 = *(a1 + 184);
      if (v32)
      {
        v33 = (v32 + 12 * a2);
        *v33 = *(v92 + 8);
        v33[1] = *(v92 + 9);
        v33[2] = *(v92 + 10);
      }
    }
  }

  if (*(a1 + 192) == 1)
  {
    __computeBindingSpaceAndOffset(a2, **(a1 + 200), **(a1 + 208), *(a1 + 32), v47, v43, v41, v39);
    __computeBindingSpaceAndOffset(a2, **(a1 + 216), **(a1 + 224), *(a1 + 32), v47, v37, v36, v34);
  }

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v66, 8);
}

void sub_21C0F4990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v66 - 224), 8);
  _Block_object_dispose((v66 - 176), 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

BOOL ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2(float32x4_t *a1, uint64_t a2, unsigned int *a3, int a4, _BYTE *a5)
{
  if (a4 != 4)
  {
    ___Z90C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions34SCNGeometryWrapDeformerBindingMode13simd_float4x4jP9__C3DMeshS2_S2_PK15__C3DMeshSourceS5_S5_ll38SCNWrapDeformerBarycentricCoordsPolicyPhPtPjPfS8_SA_PSA_SB_PmSB_SB_SC__block_invoke_2_cold_1();
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  *v10.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v6);
  v58 = v10;
  *v11.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v7);
  v57 = v11;
  *v12.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v8);
  v56 = v12;
  *v13.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[0], v9);
  v49 = v13;
  *v14.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v6);
  v66 = v14;
  *v15.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v7);
  v64 = v15;
  *v16.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v8);
  v62 = v16;
  *v17.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[7].i64[1], v9);
  v18 = 0;
  v55 = vsubq_f32(v66, v58);
  v19 = vsubq_f32(v64, v57);
  v54 = v19;
  v51 = v7;
  v52 = v6;
  v19.i32[0] = v6;
  v20 = v19;
  v20.i32[1] = v7;
  v53 = vsubq_f32(v62, v56);
  v21 = v20;
  v21.i32[2] = v8;
  v20.i32[2] = v9;
  v45 = v20;
  v46 = v21;
  v48 = vsubq_f32(v17, v49);
  v50 = v8;
  v19.i32[1] = v8;
  v47 = v9;
  v19.i32[2] = v9;
  v44 = v19;
  while (1)
  {
    v22 = v18 * 0.025;
    v23 = a1[2];
    v60 = v22;
    v24 = (*(a1[3].i64[1] + 8) + 32);
    v25 = (*(a1[4].i64[0] + 8) + 32);
    v26 = (*(a1[4].i64[1] + 8) + 32);
    v27 = *(a1[5].i64[0] + 8);
    v28 = *(a1[5].i64[1] + 8);
    v29 = *(a1[6].i64[0] + 8);
    v30 = *(a1[6].i64[1] + 8);
    v70[0] = 0.0;
    v69.i32[2] = 0;
    v69.i64[0] = 0;
    v68.i32[2] = 0;
    v68.i64[0] = 0;
    v63 = vmlaq_n_f32(v57, v54, v22);
    v65 = vmlaq_n_f32(v58, v55, v22);
    v59 = vmlaq_n_f32(v56, v53, v22);
    v67 = v23;
    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v63, v59, v23))
    {
      v31 = 1;
      result = v52;
      v34 = v50;
      v33 = v51;
      goto LABEL_19;
    }

    v35 = v28 + 2;
    v36 = v29 + 2;
    v37 = v30 + 2;
    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v38 = v69;
      *v36 = v68;
      *v35 = v38;
      *v37 = v46;
    }

    v61 = vmlaq_n_f32(v49, v48, v60);
    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v63, v61, v67))
    {
      v31 = 1;
      result = v52;
      v33 = v51;
      goto LABEL_18;
    }

    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v39 = v69;
      *v36 = v68;
      *v35 = v39;
      *v37 = v45;
    }

    if (__computeBarycentricCoordinates3D(v70, &v68, &v69, v65, v59, v61, v67))
    {
      v31 = 1;
      v40 = v52;
LABEL_17:
      result = v40;
      v33 = v50;
LABEL_18:
      v34 = v47;
LABEL_19:
      v42 = v69;
      *v24 = v68;
      *v25 = v42;
      v42.i64[0] = __PAIR64__(v33, result);
      v42.i32[2] = v34;
      *v26 = v42;
      goto LABEL_20;
    }

    if (v70[0] < *(v27 + 24))
    {
      *(v27 + 24) = v70[0];
      v41 = v69;
      *v36 = v68;
      *v35 = v41;
      *v37 = v44;
    }

    result = __computeBarycentricCoordinates3D(v70, &v68, &v69, v63, v59, v61, v67);
    if (result)
    {
      v31 = 1;
      v40 = v51;
      goto LABEL_17;
    }

    v31 = 0;
    if (v70[0] < *(v27 + 24))
    {
      v24 = v36;
      *(v27 + 24) = v70[0];
      v25 = v35;
      result = v51;
      v33 = v50;
      v34 = v47;
      v26 = v30 + 2;
      goto LABEL_19;
    }

LABEL_20:
    *(*(a1[3].i64[0] + 8) + 24) = v31;
    if (*(*(a1[3].i64[0] + 8) + 24) == 1)
    {
      break;
    }

    if (++v18 == 41)
    {
      return result;
    }
  }

  *a5 = 1;
  return result;
}

float __adjustDistanceByAligningProjection(float32x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  C3DPlaneMakeWithTriangle(v14, v15);
  v5 = vmulq_f32(a5, a5);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v13[0] = a1;
  v13[1] = vmulq_n_f32(a5, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v12.i32[2] = 0;
  v12.i64[0] = 0;
  if (!C3DIntersectionRay3Plane(v13, v14, &v12))
  {
    __adjustDistanceByAligningProjection();
  }

  v7 = vsubq_f32(v12, a1);
  v8 = vmulq_f32(v7, v7);
  return sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
}

uint64_t ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke(uint64_t a1, uint64_t a2, __int32 *a3, int a4, _BYTE *a5)
{
  if (a4 != 4)
  {
    ___ZL10__bindToUVDv2_fP9__C3DMeshPK15__C3DMeshSourceS4_llPDv3_fS6_PDv3_j_block_invoke_cold_1();
  }

  v7 = *a3;
  v9 = a3[2];
  v8 = a3[3];
  v11 = a3[4];
  v10 = a3[5];
  v13 = a3[6];
  v12 = a3[7];
  ValueAtIndexAsVector2 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), a3[1]);
  v15 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v8);
  v16 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v10);
  v17 = C3DMeshSourceGetValueAtIndexAsVector2(*(a1 + 72), v12);
  v41.i32[2] = 0;
  v41.i64[0] = 0;
  v40.i32[2] = 0;
  v40.i64[0] = 0;
  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v15, *&v16, *(a1 + 80));
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i64[0] = __PAIR64__(v9, v7);
    v19.i32[2] = v11;
LABEL_18:
    **(a1 + 104) = v19;
    *a5 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return result;
  }

  v20 = v41;
  v21 = *(a1 + 80);
  v22 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v15, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v16, v41, 2), v21);
  v23 = vaddv_f32(vmul_f32(v22, v22));
  v24 = *(*(a1 + 40) + 8);
  if (v23 < *(v24 + 24))
  {
    *(v24 + 24) = v23;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v20;
    v20.i64[0] = __PAIR64__(v9, v7);
    v20.i32[2] = v11;
    *(*(*(a1 + 64) + 8) + 32) = v20;
    v21 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v15, *&v17, v21);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i64[0] = __PAIR64__(v9, v7);
LABEL_17:
    v19.i32[2] = v13;
    goto LABEL_18;
  }

  v25 = v41;
  v26 = *(a1 + 80);
  v27 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v15, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v17, v41, 2), v26);
  v28 = vaddv_f32(vmul_f32(v27, v27));
  v29 = *(*(a1 + 40) + 8);
  if (v28 < *(v29 + 24))
  {
    *(v29 + 24) = v28;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v25;
    v25.i64[0] = __PAIR64__(v9, v7);
    v25.i32[2] = v13;
    *(*(*(a1 + 64) + 8) + 32) = v25;
    v26 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&ValueAtIndexAsVector2, *&v16, *&v17, v26);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i32[0] = v7;
LABEL_16:
    v19.i32[1] = v11;
    goto LABEL_17;
  }

  v30 = v41;
  v31 = *(a1 + 80);
  v32 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v41.f32, 1), *&ValueAtIndexAsVector2, v41.f32[0]), *&v17, v41, 2), v31);
  v33 = vaddv_f32(vmul_f32(v32, v32));
  v34 = *(*(a1 + 40) + 8);
  if (v33 < *(v34 + 24))
  {
    *(v34 + 24) = v33;
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *(*(*(a1 + 56) + 8) + 32) = v30;
    v30.i64[0] = __PAIR64__(v11, v7);
    v30.i32[2] = v13;
    *(*(*(a1 + 64) + 8) + 32) = v30;
    v31 = *(a1 + 80);
  }

  result = __computeBarycentricCoordinates2D(&v40, &v41, *&v15, *&v16, *&v17, v31);
  if (result)
  {
    v19 = v41;
    **(a1 + 88) = v40;
    **(a1 + 96) = v19;
    v19.i32[0] = v9;
    goto LABEL_16;
  }

  v35 = v41;
  v36 = vsub_f32(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v16, *v41.f32, 1), *&v15, v41.f32[0]), *&v17, v41, 2), *(a1 + 80));
  v37 = vaddv_f32(vmul_f32(v36, v36));
  v38 = *(*(a1 + 40) + 8);
  if (v37 < *(v38 + 24))
  {
    *(v38 + 24) = v37;
    HIDWORD(v39) = v40.i32[3];
    *(*(*(a1 + 48) + 8) + 32) = v40;
    *&v39 = __PAIR64__(v11, v9);
    *(*(*(a1 + 56) + 8) + 32) = v35;
    DWORD2(v39) = v13;
    *(*(*(a1 + 64) + 8) + 32) = v39;
  }

  return result;
}

uint64_t __computeBarycentricCoordinates2D(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = vsub_f32(a4, a3);
  v9 = vsub_f32(a5, a3);
  v10 = vsub_f32(a6, a3);
  v11 = vmul_f32(v8, v8);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vmul_f32(v8, v9);
  *v6.i8 = vmul_f32(v9, v9);
  v14 = vmul_f32(v8, v10);
  v15 = vmul_f32(v9, v10);
  v16 = vadd_f32(vzip1_s32(v14, v13), vzip2_s32(v14, v13));
  v17 = vadd_f32(vzip1_s32(v15, *v6.i8), vzip2_s32(v15, *v6.i8));
  v18 = vmla_n_f32(vmul_n_f32(v16, -v16.f32[1]), v17, v12.f32[0]);
  v19 = vdup_lane_s32(v18, 0);
  v19.f32[0] = (-v16.f32[1] * v17.f32[0]) + (v17.f32[1] * v16.f32[0]);
  *v6.i8 = vdiv_f32(v19, vdup_lane_s32(v18, 1));
  *v7.i32 = (1.0 - *v6.i32) - *&v6.i32[1];
  v20 = vextq_s8(vextq_s8(v7, v7, 4uLL), v6, 0xCuLL);
  v21 = v20;
  v21.i32[3] = v20.i32[2];
  __asm { FMOV            V21.4S, #1.0 }

  v27 = vceqq_f32(vminq_f32(vmaxq_f32(v21, 0), _Q21), v20);
  v27.i32[3] = v27.i32[2];
  v28 = vminvq_u32(v27);
  if ((v28 & 0x80000000) != 0)
  {
    *a1 = v21;
    goto LABEL_29;
  }

  if (*v7.i32 < 0.0)
  {
    if (*v6.i32 < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_21C27F600;
      goto LABEL_29;
    }

    if (*&v6.i32[1] < 0.0)
    {
      *a1 = v21;
      v21 = xmmword_21C27F8C0;
      goto LABEL_29;
    }

    v31 = vsub_f32(a5, a4);
    v32 = vmul_f32(v31, vsub_f32(a6, a4));
    v33 = vmul_f32(v31, v31);
    v34 = vadd_f32(vzip1_s32(v32, v33), vzip2_s32(v32, v33));
    v30 = vdiv_f32(v34, vdup_lane_s32(v34, 1)).f32[0];
    if (v30 >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[0] = 0;
    v21.i32[3] = 0;
    v21.f32[1] = 1.0 - v30;
LABEL_28:
    v21.f32[2] = v30;
    goto LABEL_29;
  }

  if (*v6.i32 < 0.0 && *&v6.i32[1] < 0.0)
  {
    *a1 = v21;
    v21 = xmmword_21C27F910;
    goto LABEL_29;
  }

  if (*&v6.i32[1] >= 0.0)
  {
    if (*v6.i32 >= 0.0)
    {
      __computeBarycentricCoordinates2D();
    }

    v30 = v17.f32[0] / v17.f32[1];
    if ((v17.f32[0] / v17.f32[1]) >= 1.0)
    {
      v30 = 1.0;
    }

    if (v30 <= 0.0)
    {
      v30 = 0.0;
    }

    *a1 = v21;
    v21.i32[1] = 0;
    v21.i32[3] = 0;
    v21.f32[0] = 1.0 - v30;
    goto LABEL_28;
  }

  v29 = vdiv_f32(v16, v12).f32[0];
  if (v29 >= 1.0)
  {
    v29 = 1.0;
  }

  if (v29 <= 0.0)
  {
    v29 = 0.0;
  }

  *a1 = v21;
  v21.i64[1] = 0;
  v21.f32[0] = 1.0 - v29;
  v21.f32[1] = v29;
LABEL_29:
  *a2 = v21;
  return v28 >> 31;
}

BOOL __computeBarycentricCoordinates3D(float *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = vsubq_f32(a5, a4);
  v11 = vsubq_f32(a6, a4);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(v13, vnegq_f32(v11)), v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v10)), v15, v13);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmulq_f32(v10, v10);
  v19 = vaddv_f32(*v18.f32);
  v20 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  v21 = vmul_f32(v20, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v10, vmul_f32(v21, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(v21, v21))).f32[0]);
  v23 = vmulq_f32(v16, v16);
  *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v25 = vmulq_n_f32(v17, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v26 = vmulq_f32(a7, v22);
  v27 = vmulq_f32(a7, v25);
  v28 = vmlaq_n_f32(vmulq_n_f32(v25, v27.f32[2] + vaddv_f32(*v27.f32)), v22, v26.f32[2] + vaddv_f32(*v26.f32));
  v29 = vmulq_f32(v10, v22);
  v30 = vmulq_f32(v10, v25);
  *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
  v31 = vmulq_f32(v11, v22);
  v32 = vmulq_f32(v11, v25);
  *v31.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v33 = vsubq_f32(v28, a4);
  v34 = vmulq_f32(v22, v33);
  v35 = vmulq_f32(v25, v33);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  __computeBarycentricCoordinates2D(&v46, &v45, 0, *v30.i8, *v31.i8, vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8))));
  v36 = v45;
  v37 = vsubq_f32(a7, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a5, *v45.f32, 1), a4, v45.f32[0]), a6, v45, 2));
  v38 = vmulq_f32(v37, v37);
  v39 = vaddv_f32(*v38.f32);
  *a1 = v38.f32[2] + v39;
  *a2 = v46;
  *a3 = v36;
  return (v38.f32[2] + v39) == 0.0;
}

uint64_t C3DMeshCreatePlaneWithOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v153 = *MEMORY[0x277D85DE8];
  v13 = fabs(a5) * 0.5;
  v14 = fabs(a6);
  if (v13 >= v14 * 0.5)
  {
    if (v14 * 0.5 <= a7)
    {
      a7 = v14 * 0.5;
    }
  }

  else if (v13 <= a7)
  {
    a7 = v13;
  }

  if (a4 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a4;
  }

  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a2;
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  v18 = a5;
  v19 = a6;
  v20 = a7;
  PlaneMeshSource = __CreatePlaneMeshSource(0, v16, v17, v15, v18, v19, v20, a8, a9);
  values = PlaneMeshSource;
  v22 = a7;
  v151 = __CreatePlaneMeshSource(1, v16, v17, v15, v18, v19, v22, a8, a9);
  v23 = a7;
  v152 = __CreatePlaneMeshSource(3, v16, v17, v15, v18, v19, v23, a8, a9);
  v25 = C3DMeshElementCreate(v152, v24);
  v149 = v25;
  C3DMeshElementSetType(v25, a1);
  if (a1 == 3)
  {
    Count = C3DMeshSourceGetCount(PlaneMeshSource, v26);
    v32 = Count;
    v65 = 1;
    if (Count >= 0x10000)
    {
      v65 = 2;
    }

    v49 = Count << v65;
    v66 = malloc_type_malloc(Count << v65, 0xD0ED3380uLL);
    v37 = v66;
    if (v32 >= 0x10000)
    {
      v67 = 4;
    }

    else
    {
      v67 = 2;
    }

    if (v32 < 0x10000)
    {
      if (v32 < 1)
      {
        v67 = 2;
      }

      else
      {
        v68 = 0;
        v69 = vdupq_n_s64(v32 - 1);
        v70 = xmmword_21C2A1A00;
        v71 = xmmword_21C2A1A10;
        v72 = xmmword_21C27F630;
        v73 = xmmword_21C27F640;
        v74 = v66 + 8;
        v75 = vdupq_n_s64(8uLL);
        do
        {
          v76 = vmovn_s64(vcgeq_u64(v69, v73));
          if (vuzp1_s8(vuzp1_s16(v76, *v69.i8), *v69.i8).u8[0])
          {
            *(v74 - 4) = v68;
          }

          if (vuzp1_s8(vuzp1_s16(v76, *&v69), *&v69).i8[1])
          {
            *(v74 - 3) = v68 | 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, *&v72))), *&v69).i8[2])
          {
            *(v74 - 2) = v68 | 2;
            *(v74 - 1) = v68 | 3;
          }

          v77 = vmovn_s64(vcgeq_u64(v69, v71));
          if (vuzp1_s8(*&v69, vuzp1_s16(v77, *&v69)).i32[1])
          {
            *v74 = v68 | 4;
          }

          if (vuzp1_s8(*&v69, vuzp1_s16(v77, *&v69)).i8[5])
          {
            v74[1] = v68 | 5;
          }

          if (vuzp1_s8(*&v69, vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, *&v70)))).i8[6])
          {
            v74[2] = v68 | 6;
            v74[3] = v68 | 7;
          }

          v68 += 8;
          v71 = vaddq_s64(v71, v75);
          v72 = vaddq_s64(v72, v75);
          v73 = vaddq_s64(v73, v75);
          v70 = vaddq_s64(v70, v75);
          v74 += 8;
        }

        while (((v32 + 7) & 0xFFFFFFFFFFFFFFF8) != v68);
      }
    }

    else
    {
      v90 = 0;
      v91 = vdupq_n_s64(v32 - 1);
      v92 = xmmword_21C27F630;
      v93 = xmmword_21C27F640;
      v94 = v66 + 8;
      v95 = vdupq_n_s64(4uLL);
      do
      {
        v96 = vmovn_s64(vcgeq_u64(v91, v93));
        if (vuzp1_s16(v96, *v91.i8).u8[0])
        {
          *(v94 - 2) = v90;
        }

        if (vuzp1_s16(v96, *&v91).i8[2])
        {
          *(v94 - 1) = v90 + 1;
        }

        if (vuzp1_s16(*&v91, vmovn_s64(vcgeq_u64(v91, *&v92))).i32[1])
        {
          *v94 = v90 + 2;
          v94[1] = v90 + 3;
        }

        v90 += 4;
        v92 = vaddq_s64(v92, v95);
        v93 = vaddq_s64(v93, v95);
        v94 += 4;
      }

      while (((v32 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v90);
    }
  }

  else
  {
    v27 = v16 + 1;
    v28 = (v17 + 1) * (v16 + 1);
    v29 = v15 + v16;
    v30 = v15 + v16 + v28;
    if (a1 == 2)
    {
      v119 = v15 + v16 + v28;
      v121 = (v17 + 1) * (v16 + 1);
      v123 = v15 + v17 + v30;
      if (a7 > 0.0)
      {
        v32 = 8 * v15 + 4 * (v17 + 1 + v27) + v17 + v16 + 2 * v17 * v16 - 8;
      }

      else
      {
        v32 = v17 + v16 + 2 * v17 * v16;
      }

      v47 = 2 * v32;
      v48 = 1;
      if (v32 >= 0x8000)
      {
        v48 = 2;
      }

      v49 = v47 << v48;
      v50 = malloc_type_malloc(v47 << v48, 0x100004077774924uLL);
      v37 = v50;
      if (v32 >= 0x8000)
      {
        v51 = 4;
      }

      else
      {
        v51 = 2;
      }

      v124 = v51;
      v52 = 0;
      if (v32 < 0x8000)
      {
        v145 = 0;
        v146 = &v145;
        v147 = 0x2000000000;
        v148 = v50;
        v53 = v16 + 2;
        v54 = 1;
        v55 = v50;
        do
        {
          ++v52;
          v56 = v54;
          v57 = v53;
          v58 = v16;
          do
          {
            *v55 = v56 - 1;
            *(v146[3] + 2) = v56;
            *(v146[3] + 4) = v56;
            *(v146[3] + 6) = v57;
            v55 = (v146[3] + 8);
            v146[3] = v55;
            ++v57;
            ++v56;
            --v58;
          }

          while (v58);
          v53 += v27;
          v54 += v27;
        }

        while (v52 != v17);
        v59 = 0;
        v60 = v17;
        do
        {
          *v55 = v59;
          v59 += v27;
          *(v146[3] + 2) = v59;
          v55 = (v146[3] + 4);
          v146[3] = v55;
          --v60;
        }

        while (v60);
        v61 = v17 * (v16 + 1);
        v62 = v16;
        do
        {
          *v55 = v61;
          *(v146[3] + 2) = v61 + 1;
          v55 = (v146[3] + 4);
          v146[3] = v55;
          ++v61;
          --v62;
        }

        while (v62);
        if (a7 > 0.0)
        {
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 0x40000000;
          v131 = __C3DMeshCreatePlaneWithOffset_block_invoke_3;
          v132 = &unk_2782FFE30;
          v133 = &v145;
          v134 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_3(v130, 0, v121, v16, 1);
          v131(v130, v16, v119, v17, v16 + 1);
          v63 = v17 * (v16 + 1);
          v131(v130, v63 + v16, v123, v16, -1);
          v131(v130, v63, v15 + v16 + v123, v17, ~v16);
          *(v146[3] - 2) = v121;
        }
      }

      else
      {
        v145 = 0;
        v146 = &v145;
        v147 = 0x2000000000;
        v148 = v50;
        v78 = v16 + 2;
        v79 = v16 + 1;
        v80 = 1;
        v81 = v50;
        do
        {
          ++v52;
          v82 = v80;
          v83 = v78;
          v84 = v16;
          do
          {
            *v81 = v82 - 1;
            *(v146[3] + 4) = v82;
            *(v146[3] + 8) = v82;
            *(v146[3] + 12) = v83;
            v81 = (v146[3] + 16);
            v146[3] = v81;
            ++v83;
            ++v82;
            --v84;
          }

          while (v84);
          v78 += v79;
          v80 += v79;
        }

        while (v52 != v17);
        v85 = 0;
        v86 = v17;
        do
        {
          *v81 = v85;
          v85 += v16 + 1;
          *(v146[3] + 4) = v85;
          v81 = (v146[3] + 8);
          v146[3] = v81;
          --v86;
        }

        while (v86);
        v87 = v17 + v17 * v16;
        v88 = v16;
        do
        {
          *v81 = v87++;
          *(v146[3] + 4) = v87;
          v81 = (v146[3] + 8);
          v146[3] = v81;
          --v88;
        }

        while (v88);
        if (a7 > 0.0)
        {
          v125[0] = MEMORY[0x277D85DD0];
          v125[1] = 0x40000000;
          v126 = __C3DMeshCreatePlaneWithOffset_block_invoke_4;
          v127 = &unk_2782FFE58;
          v128 = &v145;
          v129 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_4(v125, 0, v121, v16, 1);
          v126(v125, v16, v119, v17, v16 + 1);
          v89 = v17 * (v16 + 1);
          v126(v125, v89 + v16, v123, v16, -1);
          v126(v125, v89, v15 + v16 + v123, v17, ~v16);
          *(v146[3] - 4) = v121;
        }
      }

      _Block_object_dispose(&v145, 8);
    }

    else
    {
      if (a1)
      {
        LODWORD(v32) = 0;
        v37 = 0;
        v49 = 0;
        v67 = 0;
        goto LABEL_102;
      }

      v118 = v15 + v16 + v28;
      v120 = (v17 + 1) * (v16 + 1);
      v122 = v15 + v17 + v30;
      v31 = 4 * (v29 + v17);
      if (a7 <= 0.0)
      {
        v31 = 0;
      }

      v116 = v17 * v16;
      v32 = v31 + 2 * v17 * v16;
      v33 = 3 * v32;
      if (v32 >= 21846)
      {
        v34 = 4;
      }

      else
      {
        v34 = 2;
      }

      v124 = v34;
      v35 = 1;
      if (v32 >= 21846)
      {
        v35 = 2;
      }

      v117 = v33 << v35;
      v36 = malloc_type_malloc(v33 << v35, 0x100004077774924uLL);
      v37 = v36;
      if (v32 > 21845)
      {
        v97 = 0;
        v145 = 0;
        v146 = &v145;
        v147 = 0x2000000000;
        v148 = v36;
        v98 = v16 + 1;
        v99 = 1;
        v100 = v16 + 1;
        v101 = v36;
        do
        {
          ++v97;
          v102 = v99;
          v103 = v16;
          v104 = v100;
          do
          {
            *v101 = v102 - 1;
            *(v146[3] + 4) = v102;
            *(v146[3] + 8) = v104 + 1;
            *(v146[3] + 12) = v102 - 1;
            v105 = v146;
            v106 = v146[3];
            v106[4] = v104 + 1;
            v106[5] = v104;
            v101 = (v106 + 6);
            v105[3] = v101;
            ++v102;
            ++v104;
            --v103;
          }

          while (v103);
          v100 += v98;
          v99 += v98;
        }

        while (v97 != v17);
        if (a7 > 0.0)
        {
          v135[0] = MEMORY[0x277D85DD0];
          v135[1] = 0x40000000;
          v136 = __C3DMeshCreatePlaneWithOffset_block_invoke_2;
          v137 = &unk_2782FFE08;
          v138 = &v145;
          v139 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke_2(v135, 0, v120, v16, 1);
          *&v37[24 * v116 + 4] = C3DMeshSourceGetCount(PlaneMeshSource, v107) - 1;
          v136(v135, v16, v118, v17, v16 + 1);
          v108 = v17 * (v16 + 1);
          v136(v135, v108 + v16, v122, v16, -1);
          v136(v135, v108, v29 + v122, v17, ~v16);
        }
      }

      else
      {
        v38 = 0;
        v145 = 0;
        v146 = &v145;
        v147 = 0x2000000000;
        v148 = v36;
        v39 = 1;
        v40 = v16 + 1;
        v41 = v36;
        do
        {
          ++v38;
          v42 = v39;
          v43 = v16;
          v44 = v40;
          do
          {
            *v41 = v42 - 1;
            *(v146[3] + 2) = v42;
            *(v146[3] + 4) = v44 + 1;
            *(v146[3] + 6) = v42 - 1;
            *(v146[3] + 8) = v44 + 1;
            *(v146[3] + 10) = v44;
            v41 = (v146[3] + 12);
            v146[3] = v41;
            ++v42;
            ++v44;
            --v43;
          }

          while (v43);
          v40 += v27;
          v39 += v27;
        }

        while (v38 != v17);
        if (a7 > 0.0)
        {
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 0x40000000;
          v141 = __C3DMeshCreatePlaneWithOffset_block_invoke;
          v142 = &unk_2782FFDE0;
          v143 = &v145;
          v144 = v15;
          __C3DMeshCreatePlaneWithOffset_block_invoke(v140, 0, v120, v16, 1);
          *&v37[12 * v116 + 2] = C3DMeshSourceGetCount(PlaneMeshSource, v45) - 1;
          v141(v140, v16, v118, v17, v16 + 1);
          v46 = v17 * (v16 + 1);
          v141(v140, v46 + v16, v122, v16, -1);
          v141(v140, v46, v29 + v122, v17, ~v16);
        }
      }

      _Block_object_dispose(&v145, 8);
      v49 = v117;
    }

    v67 = v124;
  }

LABEL_102:
  v109 = *MEMORY[0x277CBECE8];
  v110 = CFDataCreate(*MEMORY[0x277CBECE8], v37, v49);
  C3DMeshElementSetPrimitives(v25, v32, v110, v67);
  CFRelease(v110);
  free(v37);
  BYTE2(v145) = 0;
  LOWORD(v145) = 0;
  v111 = MEMORY[0x277CBF128];
  v112 = CFArrayCreate(v109, &values, 3, MEMORY[0x277CBF128]);
  v113 = CFArrayCreate(v109, &v149, 1, v111);
  v114 = C3DMeshCreateWithMeshSourcesAndMeshElements(v112, v113, &v145);
  CFRelease(v113);
  CFRelease(v112);
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v151)
  {
    CFRelease(v151);
    v151 = 0;
  }

  if (v152)
  {
    CFRelease(v152);
    v152 = 0;
  }

  if (v149)
  {
    CFRelease(v149);
  }

  return v114;
}

uint64_t __CreatePlaneMeshSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, double a8, double a9)
{
  v69 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  v16 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a1 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = a5 + (a7 * -2.0);
  v35 = a6 + (a7 * -2.0);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a2;
    while (a2 < 0)
    {
LABEL_16:
      if (v20++ >= a3)
      {
        goto LABEL_17;
      }
    }

    v22 = (v35 * v20) / a3;
    *&v23 = 1.0 - ((v22 + a7) / a6);
    *&v24 = a9 + v35 * -0.5 + v22;
    v36 = v24;
    v37 = v23;
    v25 = -1;
    while (1)
    {
      if (a1 == 3)
      {
        *bytes = (((v19 * (v25 + 1)) / v21) + a7) / a5;
        v27 = v37;
        goto LABEL_14;
      }

      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        v26 = a8 + v19 * -0.5 + ((v19 * (v25 + 1)) / v21);
        *bytes = v26;
        v27 = v36;
LABEL_14:
        v68 = v27;
      }

      ++*(v64 + 6);
      CFDataAppendBytes(Mutable, bytes, (4 * v18));
      if (++v25 >= a2)
      {
        goto LABEL_16;
      }
    }

    *bytes = 0.0;
    v27 = 0x3F80000000000000;
    goto LABEL_14;
  }

LABEL_17:
  if (a7 > 0.0)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 0x40000000;
    v50 = ____CreatePlaneMeshSource_block_invoke;
    v51 = &unk_2782FFE80;
    v62 = a1;
    v29 = 1.57079633 / a4;
    v57 = a7;
    v58 = v29;
    v54 = a8;
    v55 = a9;
    v59 = a5;
    v60 = a6;
    v52 = &v63;
    v53 = a4;
    v56 = Mutable;
    v61 = v18;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 0x40000000;
    v39 = ____CreatePlaneMeshSource_block_invoke_2;
    v40 = &unk_2782FFEA8;
    v48 = a1;
    v42 = a8;
    v43 = a9;
    v45 = a5;
    v46 = a6;
    v41 = &v63;
    v44 = Mutable;
    v47 = v18;
    ____CreatePlaneMeshSource_block_invoke(v49, -3.14159265, v19 * -0.5, v35 * -0.5);
    (____CreatePlaneMeshSource_block_invoke_2)(v38, v19 * -0.5, a6 * -0.5, v19, 0.0);
    v50(v49, -1.57079633, v19 * 0.5, v35 * -0.5);
    (v39)(v38, a5 * 0.5, v35 * -0.5, 0.0, v35);
    v50(v49, 0.0, v19 * 0.5, v35 * 0.5);
    v39(v38, v19 * 0.5, a6 * 0.5, -v19, 0.0, a2);
    v50(v49, 1.57079633, v19 * -0.5, v35 * 0.5);
    v39(v38, a5 * -0.5, v35 * 0.5, 0.0, -v35, a3);
  }

  Copy = CFDataCreateCopy(v16, Mutable);
  v31 = C3DMeshSourceCreate(Copy, a1, *(v64 + 6), v18, 1);
  CFRelease(Mutable);
  CFRelease(Copy);
  _Block_object_dispose(&v63, 8);
  return v31;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6;
      *(*(*(result + 32) + 8) + 24) += 6;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 10) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v8 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v8;
      a2 += a5;
      *(*(*(*(result + 32) + 8) + 24) + 8) = a2;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_2(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v6;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = a5 + a2;
    v9 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 20) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v9 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 16) = v8;
      *(*(*(result + 32) + 8) + 24) += 24;
      v8 += a5;
      ++v9;
      a2 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v7 + 1;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 + 0xFFFF;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t __C3DMeshCreatePlaneWithOffset_block_invoke_4(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7++;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v7;
      *(*(*(result + 32) + 8) + 24) += 16;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 - 1;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v8;
      *(*(*(result + 32) + 8) + 24) += 16;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

C3D::DrawNodesPass *C3D::ScenePass::ScenePass(C3D::ScenePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4, const Parameters *a5)
{
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, a5);
  *result = &unk_282DC67D8;
  v7 = *&a4->var0;
  *(result + 2682) = *&a4->var4;
  *(result + 1340) = v7;
  *(result + 671) = 0;
  *(result + 673) = 0;
  *(result + 672) = 0;
  *(result + 680) = result;
  return result;
}

const char *C3D::ScenePass::name(C3D::ScenePass *this, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(this + 30))
  {
    return C3D::DrawNodesPass::name(this, a2, a3, a4);
  }

  else
  {
    return "ScenePass";
  }
}

void C3D::ScenePass::setup(C3D::ScenePass *this, uint64_t a2)
{
  v139 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  PointOfView = C3DEngineContextGetPointOfView(*(this + 2), v4);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v6);
  }

  else
  {
    Camera = 0;
  }

  v8 = (*(**(this + 1) + 88))(*(this + 1));
  v11 = v8[1];
  v10 = v8[2];
  *(this + 337) = *v8;
  *(this + 338) = v11;
  *(this + 339) = v10;
  *(this + 296) = 1;
  *(this + 303) = 1;
  if (Camera)
  {
    if (C3DCameraGetScreenSpaceAmbientOcclusionIntensity(Camera, v9) > 0.0)
    {
      *(this + 149) |= 0x10u;
    }

    v13 = C3DCameraGetARGrainTexture(Camera, v12) != 0;
    LODWORD(Camera) = C3DCameraGetWantsHDR(Camera, v14);
  }

  else
  {
    v13 = 0;
  }

  v15 = vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(this + 149)), 0xFFF9FFF8FFFDFFFELL), 0x1000100010001)) + ((*(this + 149) >> 1) & 1) + 2;
  C3D::Pass::setOutputCount(this, v15);
  v16 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v16 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(buf, this);
  *(v16 + 16) = *buf;
  *(v16 + 32) = v138;
  *(v16 + 65) = 0;
  *(v16 + 66) = *(v16 + 66) & 0xFFFC | 2;
  if (Camera)
  {
    *(this + 677) = 115;
    *(v16 + 28) = 115;
  }

  if (v13 || [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
  {
    if ([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
    {
      *(v16 + 66) |= 0x40u;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(this + 303) = 0;
    }

    v17 = [(SCNMTLRenderContext *)RenderContext sampleCount];
    v18 = *(v16 + 28);
    if (v18 == 554)
    {
      v19 = v17 <= 1;
      v18 = 550;
      v20 = 115;
    }

    else
    {
      if (v18 != 555)
      {
LABEL_22:
        *(this + 677) = v18;
        goto LABEL_23;
      }

      v19 = v17 <= 1;
      v18 = 551;
      v20 = 553;
    }

    if (!v19)
    {
      v18 = v20;
    }

    *(v16 + 28) = v18;
    goto LABEL_22;
  }

LABEL_23:
  v21 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v21 + 64) = 2;
  *(v21 + 8) = "DEPTH";
  C3D::Pass::parentDepthDesc(buf, this);
  *(v21 + 16) = *buf;
  *(v21 + 32) = v138;
  *(v21 + 66) = *(v21 + 66) & 0xFFF4 | 0xA;
  v22 = *(this + 149);
  if ((v22 & 2) != 0)
  {
    v24 = C3D::PassDescriptor::outputAtIndex((this + 32), 2);
    *(v24 + 8) = "Normals";
    *(v24 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
    *(v24 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
    *(v24 + 28) = 115;
    *(v24 + 65) = 2;
    *(v24 + 66) = *(v24 + 66) & 0xFFFC | 2;
    v22 = *(this + 149);
    v23 = 3;
    if ((v22 & 8) == 0)
    {
LABEL_25:
      if ((v22 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v23 = 2;
    if ((v22 & 8) == 0)
    {
      goto LABEL_25;
    }
  }

  v25 = C3D::PassDescriptor::outputAtIndex((this + 32), v23);
  *(v25 + 8) = "VELOCITY";
  *(v25 + 65) = 3;
  *(v25 + 28) = 115;
  *(v25 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  v23 = (v23 + 1);
  *(v25 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v25 + 66) = *(v25 + 66) & 0xFFBC | 0x42;
  *(v25 + 48) = xmmword_21C2A2780;
  v22 = *(this + 149);
  if ((v22 & 4) == 0)
  {
LABEL_26:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_31:
  v26 = C3D::PassDescriptor::outputAtIndex((this + 32), v23);
  *(v26 + 8) = "ReflectanceRoughness";
  *(v26 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  v23 = (v23 + 1);
  *(v26 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v26 + 28) = 115;
  *(v26 + 65) = 4;
  *(v26 + 66) = *(v26 + 66) & 0xFFFC | 2;
  v22 = *(this + 149);
  if ((v22 & 0x100) == 0)
  {
LABEL_27:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  v27 = C3D::PassDescriptor::outputAtIndex((this + 32), v23);
  *(v27 + 8) = "Radiance";
  *(v27 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
  v23 = (v23 + 1);
  *(v27 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
  *(v27 + 28) = 115;
  *(v27 + 65) = 5;
  *(v27 + 66) = *(v27 + 66) & 0xFFFC | 2;
  if ((*(this + 149) & 0x80) != 0)
  {
LABEL_33:
    v28 = C3D::PassDescriptor::outputAtIndex((this + 32), v23);
    *(v28 + 8) = "COLOR1";
    *(v28 + 16) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16);
    *(v28 + 18) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 18);
    *(v28 + 28) = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28);
    *(v28 + 65) = 1;
    *(v28 + 66) = *(v28 + 66) & 0xFFFC | 2;
  }

LABEL_34:
  if ([(SCNMTLRenderContext *)RenderContext sampleCount]>= 2)
  {
    v30 = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 24);
    if (!SCNMTLTextureTypeIsMultisampled(v30))
    {
      v31 = SCNMTLTextureTypeMultisampledEquivalent(v30);
      LOWORD(v32) = 0;
      do
      {
        *(C3D::PassDescriptor::outputAtIndex((this + 32), v32) + 24) = v31;
        v33 = [(SCNMTLRenderContext *)RenderContext sampleCount];
        *(C3D::PassDescriptor::outputAtIndex((this + 32), v32) + 31) = v33;
        v32 = (v32 + 1);
      }

      while (v32 < v15);
    }
  }

  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 2), v29);
  C3DStackAllocatorPushFrame(StackAllocator, v35);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v136, StackAllocator);
  *(this + 671) = v136;
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v135, StackAllocator);
  *(this + 672) = v135;
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(&v133, StackAllocator);
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = &v133;
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v128, StackAllocator);
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x2020000000;
  v127[3] = v128;
  if (*(v16 + 24) == 5)
  {
    v36 = [(SCNMTLRenderContext *)RenderContext features];
    *(this + 117) = (v36 & 0x20) != 0;
    if ((v36 & 0x20) != 0)
    {
      PreferredMultiVertexOutputStreamGenerator = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    else
    {
      PreferredMultiVertexOutputStreamGenerator = 0;
    }

    *(this + 118) = PreferredMultiVertexOutputStreamGenerator;
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) > 1 || [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor])
  {
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(*(this + 2));
    *(this + 117) = PreferredRenderMode;
    if (PreferredRenderMode)
    {
      LOBYTE(PreferredRenderMode) = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(*(this + 2));
    }

    *(this + 118) = PreferredRenderMode;
    *(this + 120) = 1;
  }

  C3D::DrawNodesPass::setup(this, v37);
  Scene = C3DEngineContextGetScene(*(this + 2), v40);
  LightingSystem = C3DSceneGetLightingSystem(Scene, v42);
  v44 = *(this + 633);
  v45 = *(this + 634);
  C3DLightingSystemSetMainRenderingFrustums(LightingSystem, this + 21, v44, v45, *(this + 4948), this + 57, this + 189);
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  C3D::RenderGraph::getSuccessors(*(this + 3), this, StackAllocator, v120);
  v46 = *(this + 2);
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = ___ZN3C3D9ScenePass5setupEv_block_invoke;
  v119[3] = &unk_2782FFED0;
  v119[4] = &v123;
  v119[5] = &v129;
  v119[6] = v127;
  v119[7] = this;
  C3DLightingSystemEnumerateGlobalLights(LightingSystem, v46, v119);
  *(this + 673) = CreateProbeArrayResourceIfNeeded(this, v130[3]);
  v48 = v124[3];
  if (v48)
  {
    *(this + 680) = v48;
    if (v121)
    {
      v49 = v122;
      v50 = 8 * v121;
      do
      {
        v51 = *v49;
        C3D::RenderGraph::removeDependency(*(this + 3), *v49, this);
        C3D::RenderGraph::addDependency(*(this + 3), v51, v124[3]);
        ++v49;
        v50 -= 8;
      }

      while (v50);
    }
  }

  if (C3D::SSAOPassesCreateIfNeeded(*(this + 3), this, v47))
  {
    v52 = (*(*this + 88))(this);
    C3D::PassIODescriptor::PassIODescriptor(buf, *(v52 + 32));
    *&buf[8] = "SSAO-Final";
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, buf);
  }

  v53 = *(this + 671);
  v54 = *(v53 + 8);
  if (v54)
  {
    v55 = *(v53 + 16);
    v56 = 8 * v54;
    do
    {
      v57 = *v55;
      v58 = C3D::FloorPass::mirrorNode(*v55);
      Floor = C3DNodeGetFloor(v58, v59);
      if (C3DFloorGetReflectivity(Floor, v61) > 0.0)
      {
        C3D::Pass::addDependency(this, *(v57 + 680));
        v62 = C3D::Pass::descriptor(*(v57 + 680));
        v63 = C3D::PassDescriptor::outputAtIndex(v62, 0);
        C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v63);
        *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v133, v64) + 24) = 2;
        *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v133, v65) + 31) = 0;
        if (C3DFloorGetReflectionFalloffEnd(Floor, v66) != 0.0)
        {
          v67 = C3D::Pass::descriptor(v57);
          v68 = C3D::PassDescriptor::outputAtIndex(v67, 1);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v68);
          *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v133, v69) + 24) = 2;
          *(C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(&v133, v70) + 31) = 0;
        }
      }

      ++v55;
      v56 -= 8;
    }

    while (v56);
  }

  v71 = *(this + 672);
  v72 = *(v71 + 8);
  if (v72 >= 2)
  {
    v73 = 0;
    v74 = v72 >> 1;
    v75 = v72 - 1;
    do
    {
      v76 = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](*(this + 672), v73);
      v77 = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](*(this + 672), v75);
      v78 = *v76;
      *v76 = *v77;
      *v77 = v78;
      v73 = (v73 + 1);
      v75 = (v75 - 1);
    }

    while (v74 != v73);
    v71 = *(this + 672);
    v72 = *(v71 + 8);
  }

  if (v72)
  {
    v79 = 0;
    v80 = 0;
    v81 = *(v71 + 16);
    v82 = 8 * v72;
    do
    {
      v83 = *v81;
      v117 = this;
      v118 = v83;
      v85 = C3D::RenderGraph::createPass<C3D::CIFilterPass,C3D::ScenePass *,__C3DNode *&>(*(this + 3), &v117, &v118);
      if (v79)
      {
        IsAncestor = C3DNodeIsAncestor(v79, v118);
        if (IsAncestor)
        {
          if (!v80)
          {
            v88 = scn_default_log(IsAncestor, v87);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
            {
              C3D::ScenePass::setup(buf, &buf[4], v88);
            }
          }

          C3D::Pass::addDependency(v85[16], v80);
          C3D::Pass::addDependency(v85[16], v80[16]);
        }

        else
        {
          C3D::Pass::addDependency(this, v80);
          C3D::Pass::addDependency(this, v80[16]);
          v89 = C3D::Pass::descriptor(v80);
          v90 = C3D::PassDescriptor::outputAtIndex(v89, 0);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v90);
          v91 = C3D::Pass::descriptor(v80[16]);
          v92 = C3D::PassDescriptor::outputAtIndex(v91, 1);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v92);
        }
      }

      EnginePipeline = C3DSceneGetEnginePipeline(Scene, v84);
      RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v94);
      RendererElementSpan = C3DNodeGetRendererElementSpan(v118, v96);
      ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(RendererElementStore, RendererElementSpan, (HIDWORD(RendererElementSpan) - 1));
      v101 = *(ElementInSpanAtIndex + 40);
      if (!v101 || C3DFXTechniqueGetPassCount(v101, v98) != 1)
      {
        CIFilterQuadBlendTechnique = C3D::CreateCIFilterQuadBlendTechnique(v118, *(this + 2), v99);
        v103 = *(ElementInSpanAtIndex + 40);
        if (v103 != CIFilterQuadBlendTechnique)
        {
          if (v103)
          {
            CFRelease(v103);
            *(ElementInSpanAtIndex + 40) = 0;
          }

          if (CIFilterQuadBlendTechnique)
          {
            v104 = CFRetain(CIFilterQuadBlendTechnique);
          }

          else
          {
            v104 = 0;
          }

          *(ElementInSpanAtIndex + 40) = v104;
        }

        CFRelease(CIFilterQuadBlendTechnique);
      }

      v79 = v118;
      ++v81;
      v80 = v85;
      v82 -= 8;
    }

    while (v82);
    if (v118)
    {
      C3D::Pass::addDependency(this, v85);
      C3D::Pass::addDependency(this, v85[16]);
      v105 = C3D::Pass::descriptor(v85);
      v106 = C3D::PassDescriptor::outputAtIndex(v105, 0);
      C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v106);
      v107 = C3D::Pass::descriptor(v85[16]);
      v108 = C3D::PassDescriptor::outputAtIndex(v107, 1);
      C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v133, v108);
    }
  }

  v109 = v134;
  C3D::Pass::setInputCount(this, v134);
  if (v109)
  {
    v111 = 0;
    do
    {
      v112 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](&v133, v111);
      v113 = C3D::PassDescriptor::inputAtIndex((this + 32), v111);
      *v113 = *v112;
      v114 = v112[1];
      v115 = v112[2];
      v116 = v112[4];
      v113[3] = v112[3];
      v113[4] = v116;
      v113[1] = v114;
      v113[2] = v115;
      v111 = (v111 + 1);
    }

    while (v109 != v111);
  }

  C3DStackAllocatorPopFrame(StackAllocator, v110);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(v127, 8);
  _Block_object_dispose(&v129, 8);
}

void sub_21C0F8D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN3C3D9ScenePass5setupEv_block_invoke(void *a1, uint64_t a2, __C3DNode **a3, uint64_t *a4)
{
  if (a2)
  {
    v7 = a1[7];
    for (i = a2; i; --i)
    {
      v9 = *a4;
      if (C3DLightTypeSupportsShadow(*a4, a2) && C3DLightGetCastsShadow(v9, a2))
      {
        C3DLightShouldAdjustsShadowProjection(v9, a2);
        v20 = *a3;
        if (C3DLightGetUsesDeferredShadows(v9, v10))
        {
          if (*(v7 + 5361) != 1 || *(v7 + 240))
          {
            return;
          }

          v11 = C3D::ScenePass::_shadowMapForLightNode(v7, v20);
          v12 = *(v7 + 24);
          v18 = v7;
          v19 = v7;
          v13 = C3D::RenderGraph::createPass<C3D::DeferredShadowPass,C3D::ScenePass *,__C3DNode *&,C3D::ScenePass *>(v12, &v19, &v20, &v18);
          C3D::Pass::addDependency(v13, v11);
          v14 = *(*(a1[4] + 8) + 24);
          if (v14)
          {
            C3D::Pass::addDependency(v13, v14);
          }

          C3D::Pass::addDependency(v13, v7);
          *(*(a1[4] + 8) + 24) = v13;
        }

        else
        {
          if (*(v7 + 5360) != 1)
          {
            return;
          }

          v19 = C3D::ScenePass::_shadowMapForLightNode(v7, v20);
          C3D::Pass::addDependency(v7, v19);
          v15 = *(*(a1[5] + 8) + 24);
          v16 = C3D::Pass::descriptor(v19);
          v17 = C3D::PassDescriptor::outputAtIndex(v16, 0);
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(v15, v17);
          C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(*(a1[6] + 8) + 24), &v19);
        }
      }

      ++a4;
      ++a3;
    }
  }
}

C3D::Pass *C3D::ScenePass::_shadowMapForLightNode(C3D::ScenePass *this, __C3DNode *a2)
{
  v2 = a2;
  v13 = a2;
  Light = C3DNodeGetLight(a2, a2);
  AutomaticallyAdjustsShadowProjection = C3DLightGetAutomaticallyAdjustsShadowProjection(Light, v5);
  Type = C3DLightGetType(Light, v7);
  if (AutomaticallyAdjustsShadowProjection && Type == 1)
  {
    v2 = (Light ^ (*(this + 31) << 32));
  }

  CurrentFrameCachedPass = C3D::RenderGraph::getCurrentFrameCachedPass(*(this + 3), v2);
  if (!CurrentFrameCachedPass)
  {
    v10 = *(this + 3);
    v12 = this;
    CurrentFrameCachedPass = C3D::RenderGraph::createPass<C3D::ShadowMapPass,C3D::ScenePass *,__C3DNode *&>(v10, &v12, &v13);
    C3D::RenderGraph::cachePassForCurrentFrame(*(this + 3), v2, CurrentFrameCachedPass);
  }

  return CurrentFrameCachedPass;
}

C3D::DeferredShadowPass *C3D::RenderGraph::createPass<C3D::DeferredShadowPass,C3D::ScenePass *,__C3DNode *&,C3D::ScenePass *>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3, C3D::DrawNodesPass **a4)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::DeferredShadowPass::DeferredShadowPass(Aligned, a1, *a2, *a3, *a4);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

uint64_t C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::back(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16) + 80 * *(a1 + 8) - 80;
}

C3D::CIFilterPass *C3D::RenderGraph::createPass<C3D::CIFilterPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::ScenePass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 176, 16, 0);
  C3D::CIFilterPass::CIFilterPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

double C3D::ScenePass::execute(uint64_t a1, void **a2)
{
  RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(a1 + 16), a2);
  v6 = RenderCallbacks;
  v7 = *(a1 + 5365) != 1 || RenderCallbacks == 0;
  if (!v7 && *RenderCallbacks)
  {
    (*RenderCallbacks)(*(a1 + 16));
    v8 = *a2;
    v9 = *(*a2 + 16);
    v10 = (*a2 + 3384);
    v11 = *(*a2 + 425);
    v20 = *v10;
    bzero(*a2, 0xD70uLL);
    *(v8 + 16) = 1;
    *(v8 + 72) = 1;
    *v10 = v20;
    v8[425] = v11;
    *(v8 + 20) = 257;
    *(v8 + 42) = 1;
    *(v8 + 1) = 0u;
    *(v8 + 3) = 0u;
    *(*a2 + 16) = v9;
    C3D::RenderPass::setStates(a1, a2);
  }

  if (*(a1 + 5384))
  {
    RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), v5);
    v14 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5384) + 48, v13);
    [(SCNMTLRenderContext *)RenderContext _setReflectionProbeArrayTexture:v14];
  }

  C3D::DrawNodesPass::execute(a1, a2);
  if (*(a1 + 5365) == 1 && v6 != 0)
  {
    v17 = v6[1];
    if (v17)
    {
      v17(*(a1 + 16));
      v18 = *a2;
      v19 = *(v18 + 425);
      v21 = *(v18 + 3384);
      bzero(v18, 0xD70uLL);
      *(v18 + 16) = 1;
      v18[72] = 1;
      *(v18 + 3384) = v21;
      *(v18 + 425) = v19;
      *(v18 + 20) = 257;
      v18[42] = 1;
      result = 0.0;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
    }
  }

  return result;
}

BOOL C3D::ScenePass::_shouldPushNodeToVisible(C3D::ScenePass *this, __C3DNode *a2, int a3)
{
  v44 = a2;
  v5 = *(a2 + 55);
  if ((v5 & 0x1000) != 0)
  {
    if ((*(this + 5008) & 1) != 0 || *(this + 625) || *(this + 5363) != 1)
    {
      return 0;
    }

    if (!a3)
    {
      v7 = *(this + 3);
      v43 = this;
      v42 = 0;
      v40 = 16842753;
      v41 = 0;
      v43 = C3D::RenderGraph::createPass<C3D::FloorPass,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(v7, &v43, &v44, &v42, &v40);
      C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(this + 671), &v43);
    }

    return 1;
  }

  else
  {
    if ((v5 & 0x4000) == 0)
    {
      return (*(a2 + 55) & 0x80) == 0;
    }

    if (*(this + 5362) != 1)
    {
      return 0;
    }

    v8 = *(this + 672);
    v9 = *(v8 + 16);
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = v9;
      while (*v12 != a2)
      {
        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v12 = v9;
    }

    if (v12 != &v9[v10])
    {
      return 0;
    }

    do
    {
LABEL_20:
      v13 = a2;
      Parent = C3DNodeGetParent(a2, a2);
      if (!Parent)
      {
        break;
      }

      a2 = Parent;
    }

    while ((*(Parent + 220) & 0x80) != 0);
    if ((*(v13 + 221) & 0x40) == 0)
    {
      v15 = scn_default_log(Parent, a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ___ZN3C3D9ScenePass24_shouldPushNodeToVisibleEP9__C3DNodei_block_invoke;
    v39[3] = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
    v39[4] = this;
    v23 = C3DNodeApplyHierarchy(v13, v39);
    v25 = this + 16 * a3;
    v26 = v25 + 5232;
    v27 = *(v13 + 112);
    v28 = *(v13 + 113) + *(v13 + 114) - 1;
    if ((*(v25 + 1310) + 1) > *(v25 + 1311))
    {
      v29 = scn_default_log(v23, v24);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        C3D::ScenePass::_shouldPushNodeToVisible(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    result = 0;
    v37 = *(v26 + 2);
    v38 = (*v26 + 4 * v37);
    *v38 = v27;
    v38[1] = v28;
    *(v26 + 2) = v37 + 1;
  }

  return result;
}

C3D::Pass *C3D::RenderGraph::createPass<C3D::FloorPass,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3, char *a4, const Parameters *a5)
{
  v6 = *(a1 + 16);
  v9 = a1;
  v7 = C3D::ScratchAllocate<C3D::FloorPass,C3D::RenderGraph *,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(v6, &v9, a2, a3, a4, a5);
  C3D::RenderGraph::addPass(a1, v7);
  if (*(a1 + 209) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  return v7;
}

uint64_t ___ZN3C3D9ScenePass24_shouldPushNodeToVisibleEP9__C3DNodei_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(a2 + 221) & 0x40) != 0)
  {
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(*(a1 + 32) + 5376), &v3);
  }

  return 0;
}

C3D::ShadowMapPass *C3D::RenderGraph::createPass<C3D::ShadowMapPass,C3D::ScenePass *,__C3DNode *&>(uint64_t a1, C3D::Pass **a2, __C3DNode **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::ShadowMapPass::ShadowMapPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DrawNodesPass *C3D::ScratchAllocate<C3D::FloorPass,C3D::RenderGraph *,C3D::ScenePass *,__C3DNode *&,unsigned char,C3D::ScenePass::Parameters>(uint64_t a1, C3D::RenderGraph **a2, C3D::Pass **a3, __C3DNode **a4, char *a5, const Parameters *a6)
{
  Aligned = C3DScratchAllocatorAllocateAligned(a1, 5472, 16, 0);
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v18 = 0;
  v20 = 0u;
  v21 = 0x20000;
  memset(v17, 0, sizeof(v17));
  v19 = -1;
  BYTE8(v20) = 1;
  return C3D::FloorPass::FloorPass(Aligned, v12, v13, v14, v15, a6, v17);
}

void SCNCActionCustom::SCNCActionCustom(SCNCActionCustom *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC6868;
  *(v3 + 24) = a2->var3;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
  *(v3 + 144) = 0;
}

void SCNCActionCustom::~SCNCActionCustom(SCNCAction *this)
{
  SCNCActionCustom::~SCNCActionCustom(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC6868;
  var0 = this[1].var0;
  if (var0)
  {
    _Block_release(var0);
    this[1].var0 = 0;
  }

  SCNCAction::~SCNCAction(this);
}

SCNCAction *SCNCActionCustom::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  v7 = v6.n128_f64[0];
  result = this[1].var0;
  if (result)
  {
    result = (result->var2)(result, a2, v6.n128_f64[0] * this->var1);
  }

  v9 = v7;
  if ((COERCE_UNSIGNED_INT(v9 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }

  return result;
}

void C3DParametricGeometryGeneratePoints(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 352);
  if (v3)
  {

    v3();
  }

  else
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      C3DParametricGeometryGeneratePoints_cold_1(v4);
    }
  }
}

void C3DParametricGeometryValidate(uint64_t a1, uint64_t a2)
{
  v23[13] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 64))
  {
    if (*(a1 + 312) == C3DBoxCreateMesh)
    {
      MaterialsCount = C3DGeometryGetMaterialsCount(a1, a2);
      v4 = 0;
      if (MaterialsCount <= 8)
      {
        v5 = MaterialsCount;
        if (MaterialsCount)
        {
          if (MaterialsCount >= 1)
          {
            v6 = 0;
            do
            {
              MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v6);
              if (v6)
              {
                v8 = MaterialAtIndex;
                v9 = 0;
                while (C3DGeometryGetMaterialAtIndex(a1, v9) != v8)
                {
                  if (v6 == ++v9)
                  {
                    v9 = v6;
                    break;
                  }
                }

                v10 = v9 + 1;
              }

              else
              {
                v10 = 1;
              }

              v23[v6++] = v10;
            }

            while (v6 != v5);
          }

          v11 = 0;
          v12 = 0;
          v4 = 0;
          do
          {
            v4 |= v23[v12 % v5] << v11;
            ++v12;
            v11 += 4;
          }

          while (v12 != 8);
        }
      }

      *(a1 + 308) = v4;
    }

    os_unfair_lock_lock(&_C3DParametricGeometryCacheLock);
    _C3DParametricGeometryCreateCacheIfNeeded_not_thread_safe();
    if (*(a1 + 360))
    {
      _C3DParametricGeometryReleaseCachedMesh_not_thread_safe(a1);
    }

    v13 = (*(a1 + 344))(a1, v23);
    if (v13 >= 0x65)
    {
      C3DParametricGeometryValidate_cold_1();
    }

    v14 = CFDataCreate(*MEMORY[0x277CBECE8], v23, v13);
    Value = CFDictionaryGetValue(_C3DParametricGeometryMeshCache, v14);
    if (Value)
    {
      CopyWithInterleavedSources = Value;
      _C3DParametricGeometryCacheIncrRetainCountForHash_not_thread_safe(v14);
    }

    else
    {
      v20 = (*(a1 + 312))(a1 + 216);
      if (!v20 || (v21 = v20, CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(v20), CFRelease(v21), !CopyWithInterleavedSources))
      {
        C3DGeometrySetMesh(a1, 0);
LABEL_36:
        CFRelease(v14);
        os_unfair_lock_unlock(&_C3DParametricGeometryCacheLock);
        return;
      }

      CFDictionarySetValue(_C3DParametricGeometryCacheRetainCounts, v14, 1);
      CFDictionarySetValue(_C3DParametricGeometryMeshCache, v14, CopyWithInterleavedSources);
      CFRelease(CopyWithInterleavedSources);
    }

    v18 = *(a1 + 360);
    if (v18 != v14)
    {
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 360) = 0;
      }

      if (v14)
      {
        v19 = CFRetain(v14);
      }

      else
      {
        v19 = 0;
      }

      *(a1 + 360) = v19;
    }

    Copy = C3DMeshCreateCopy(CopyWithInterleavedSources, v17);
    C3DGeometrySetMesh(a1, Copy);
    if (Copy)
    {
      CFRelease(Copy);
    }

    goto LABEL_36;
  }
}