void _releaseCFTypeParameters(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 & 0x3F) == 5)
  {
    v3 = *(a3 + HIWORD(a2));
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

CFStringRef _C3DFXTechniqueCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXTechnique>");
}

CFStringRef _C3DFXTechniqueCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXTechnique>");
}

__CFArray *_C3DFXTechniqueCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (*(a1 + 72) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = CFStringCreateWithFormat(0, 0, @"pass %d", v4);
      v6 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = 2;
      valuePtr = 5;
      v15 = *(a1 + 80) + v3;
      v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
      v9 = CFNumberCreate(0, kCFNumberLongType, &v15);
      CFDictionarySetValue(v6, @"name", v5);
      CFDictionarySetValue(v6, @"type", v7);
      CFDictionarySetValue(v6, @"address", v9);
      CFDictionarySetValue(v6, @"semantic", v8);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v8);
      CFRelease(v6);
      CFRelease(v9);
      CFRelease(v7);
      CFRelease(v5);
      ++v4;
      v3 += 8;
    }

    while (v4 < *(a1 + 72));
  }

  v10 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = 2;
  valuePtr = 5;
  v15 = a1 + 104;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
  v13 = CFNumberCreate(0, kCFNumberLongType, &v15);
  CFDictionarySetValue(v10, @"name", @"plist");
  CFDictionarySetValue(v10, @"type", v11);
  CFDictionarySetValue(v10, @"address", v13);
  CFDictionarySetValue(v10, @"semantic", v12);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v12);
  CFRelease(v10);
  CFRelease(v13);
  CFRelease(v11);
  return Mutable;
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void C3DAnimationStackInit(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v3 = scn_default_log(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackInit_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *result = 1;
}

void C3DAnimationStackDiscardModelValueItemForAnimationClusterNode(uint64_t result, uint64_t a2, _BOOL8 a3, int a4)
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a2 + 16) + 168) + 20);
  if (v4)
  {
    v9 = 0;
    v10 = *(a2 + 224);
    v11 = 4 * v4;
    do
    {
      v12 = *(v10 + v9);
      if (v12 != -1)
      {
        ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(result + 56), v12);
        v14 = ValuePtrAtIndex;
        v15 = *ValuePtrAtIndex;
        if (*ValuePtrAtIndex)
        {
          goto LABEL_8;
        }

        v16 = scn_default_log(ValuePtrAtIndex, 0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          _C3DAnimationManagerApplyStack_cold_2(v18, v19, v16);
        }

        v15 = *v14;
        if (*v14)
        {
LABEL_8:
          v17 = *(v15 + 16);
          if (a4)
          {
            C3DModelValueStorageReleaseModelValueAndRestorePresentationValueIfNeeded(a3, v15);
          }

          else
          {
            C3DModelValueStorageReleaseModelValue(a3, v15);
          }

          if (v17 == 1)
          {
            *v14 = 0;
          }
        }

        v10 = *(a2 + 224);
        *(v10 + v9) = -1;
      }

      v9 += 4;
    }

    while (v11 != v9);
  }
}

void C3DAnimationStackCleanup(uint64_t a1, _BOOL8 a2)
{
  if (*a1)
  {
    *a1 = 0;
    for (i = *(a1 + 8); i; i = i[22])
    {
      if (*(a1 + 48) == 1)
      {
        v5 = i[2];
        if (v5)
        {
          v6 = (*(v5 + 84) & 0x20) == 0;
        }

        else
        {
          v6 = 1;
        }

        C3DAnimationStackDiscardModelValueItemForAnimationClusterNode(a1, i, a2, v6);
      }

      i[19] = -1;
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 56) = 0;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 8) = 0;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }
  }
}

void C3DAnimationStackSetTarget(uint64_t a1, const void *cf)
{
  Copy = cf;
  if (a1 || (v4 = scn_default_log(0, cf), !os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    if (!Copy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  C3DAnimationStackSetTarget_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  if (Copy)
  {
LABEL_4:
    Copy = C3DModelTargetCreateCopy(Copy);
  }

LABEL_5:
  v12 = *(a1 + 24);
  if (v12 != Copy)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 24) = 0;
    }

    if (Copy)
    {
      v13 = CFRetain(Copy);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 24) = v13;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }
}

uint64_t C3DAnimationStackGetTarget(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackSetTarget_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void C3DAnimationStackAppendAnimationNode(_BOOL8 a1, uint64_t cf, uint64_t a3)
{
  v4 = cf;
  v5 = a1;
  *&v85[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v6 = scn_default_log(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationStackSetTarget_cold_1(v6, cf, v7, v8, v9, v10, v11, v12);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, cf);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v13, cf, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if ((*v5 & 1) == 0)
  {
    v20 = scn_default_log(a1, cf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationStackAppendAnimationNode_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (*(v5 + 8))
  {
    if (v4)
    {
      v28 = CFRetain(v4);
    }

    else
    {
      v28 = 0;
    }

    v30 = *(v5 + 16);
    *(v30 + 176) = v28;
    *(v4 + 168) = v30;
  }

  else
  {
    if (v4)
    {
      v29 = CFRetain(v4);
    }

    else
    {
      v29 = 0;
    }

    *(v5 + 8) = v29;
  }

  *(v5 + 16) = v4;
  C3DAnimationStackSetConstant(v5, 0, a3);
  if (*(v5 + 128) == 1)
  {
    v31 = *(*(v4 + 24) + 34) - 3;
    if (v31 <= 5)
    {
      *(v4 + 120) = 0x70401020202uLL >> (8 * (v31 & 0x1F));
    }
  }

  if (*(v5 + 48) == 1)
  {
    v32 = CFGetTypeID(v4);
    TypeID = C3DAnimationClusterNodeGetTypeID(v32, v33);
    if (v32 != TypeID)
    {
      v36 = scn_default_log(TypeID, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        C3DAnimationStackAppendAnimationNode_cold_4(v36, v35, v37, v38, v39, v40, v41, v42);
      }
    }

    ModelValueStorage = C3DAnimationManagerGetModelValueStorage(a3, v35);
    if (!ModelValueStorage)
    {
      v44 = scn_default_log(0, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        C3DAnimationStackAppendAnimationNode_cold_5(v44, v45, v46, v47, v48, v49, v50, v51);
      }
    }

    v52 = *(v4 + 16);
    v53 = *(*(v52 + 168) + 20);
    if (!*(v5 + 56))
    {
      *(v5 + 56) = C3DArrayCreate(24, *(*(v52 + 168) + 20));
    }

    *(v4 + 224) = malloc_type_malloc(4 * v53, 0x100004052888210uLL);
    Count = C3DArrayGetCount(*(v5 + 56), v54);
    Owner = C3DAnimationNodeGetOwner(v4, v56);
    if (v53)
    {
      v57 = 0;
      v79 = v52;
      v80 = v4;
      v81 = v53;
      do
      {
        v58 = C3DCFTypeCopyModelInfoAtSplittedPath(Owner, *(*(*(v52 + 168) + 72) + 8 * v57), 0, 0);
        if (!C3DModelTargetGetTargetAddress(v58, v59))
        {
          *(*(v4 + 224) + 4 * v57) = -1;
          if (!v58)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v60 = C3DModelValueStorageAddAndRetainModelValue(ModelValueStorage, v58);
        if (Count < 1)
        {
          goto LABEL_48;
        }

        v61 = 0;
        v62 = -1;
        v63 = -1;
        do
        {
          ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v5 + 56), v61);
          if (*ValuePtrAtIndex)
          {
            if (v60 == *ValuePtrAtIndex)
            {
              v66 = ValuePtrAtIndex;
              v67 = *(ValuePtrAtIndex + 8);
              if (v67 == C3DModelTargetGetTypeSemantic(v58, v65))
              {
                v68 = *(v66 + 9);
                if (v68 == C3DModelTargetGetComponentIndex(v58, v65))
                {
                  v63 = v61;
                  v61 = Count;
                }
              }
            }
          }

          else
          {
            v62 = v61;
          }

          ++v61;
        }

        while (v61 < Count);
        if (v63 != -1)
        {
          v4 = v80;
          *(*(v80 + 224) + 4 * v57) = v63;
          v52 = v79;
          goto LABEL_50;
        }

        v52 = v79;
        v4 = v80;
        if (v62 == -1)
        {
LABEL_48:
          C3DArrayAppendValue(*(v5 + 56), 0);
          v62 = Count++;
        }

        *(*(v4 + 224) + 4 * v57) = v62;
        v69 = C3DArrayGetValuePtrAtIndex(*(v5 + 56), v62);
        *v69 = v60;
        *(v69 + 8) = C3DModelTargetGetTypeSemantic(v58, v70);
        *(v69 + 9) = C3DModelTargetGetComponentIndex(v58, v71);
        BaseType = C3DModelTargetGetBaseType(v58, v72);
        *(v69 + 16) = C3DKeyFrameInterpolatorForType(BaseType, *(v69 + 8), 0, 0, 1);
LABEL_50:
        v74 = *(*(*(v52 + 168) + 40) + v57);
        v75 = C3DSizeOfBaseType(v58[16], v65);
        v77 = v75 == v74;
        v53 = v81;
        if (!v77)
        {
          v78 = scn_default_log(v75, v76);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            C3DAnimationStackAppendAnimationNode_cold_6(buf, v85, v78);
          }
        }

LABEL_53:
        CFRelease(v58);
LABEL_54:
        ++v57;
      }

      while (v57 != v53);
    }
  }
}

void C3DAnimationStackSetConstant(_BOOL8 result, uint64_t a2, _BOOL8 a3)
{
  v4 = a2;
  v5 = result;
  if (!result && (v6 = scn_default_log(0, a2), result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DStackCFFinalize_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(result, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (*(v5 + 241) != v4)
  {
    if (v4)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

    _C3DAnimationManagerUpdateConstantCount(a3, v21);
    *(v5 + 241) = v4;
  }
}

void C3DAnimationStackRemoveAnimationNode(_BOOL8 a1, void *cf)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, cf), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationStackSetTarget_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, cf);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = cf + 21;
  v20 = cf[21];
  cf[19] = -1;
  v21 = cf[22];
  if (v20)
  {
    *(v20 + 176) = v21;
  }

  if (v21)
  {
    *(v21 + 168) = v20;
  }

  if (*(v3 + 8) == cf)
  {
    *(v3 + 8) = v21;
  }

  if (*(v3 + 16) == cf)
  {
    *(v3 + 16) = *v19;
  }

  *v19 = 0;
  cf[22] = 0;
  CFRelease(cf);
}

BOOL C3DAnimationStackIsEmpty(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 8) == 0;
}

void C3DRendererContextSetPlatformSpecificImplementations_ES2(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 776) = C3DES2BindVertexArray;
  *(a1 + 784) = C3DES2GenVertexArrays;
  *(a1 + 792) = C3DES2DeleteVertexArrays;
  *(a1 + 808) = C3DES2MapBufferRange;
  *(a1 + 816) = C3DES2FlushMappedBufferRange;
  *(a1 + 824) = C3DES2UnmapBufferRange;
  *(a1 + 832) = C3DES2RenderbufferStorageMultisample;
  *(a1 + 800) = C3DES2BlitFramebuffer;
  *(a1 + 768) = C3DES2SlotToAttachmentID;
  *a1 = xmmword_21C2802F0;
  *(a1 + 16) = 0xFFFF0000800BLL;
  *(a1 + 24) = 0xFFFF;
  v3 = a1 + 580;
  v4 = (a1 + 36);
  v5 = vdup_n_s32(0x1908u);
  v6 = vdup_n_s32(0x1907u);
  v7 = vdup_n_s32(0x1902u);
  v8 = vdup_n_s32(0x84F9u);
  do
  {
    if (v2 > 0x12u)
    {
      if (v2 > 0x26u)
      {
        switch(v2)
        {
          case '\'':
LABEL_19:
            v4->i32[0] = 36193;
            v4[-1] = v5;
            *(v3 + 4 * v2) = 36193;
            goto LABEL_28;
          case ')':
            v4->i32[0] = 5125;
            v4[-1] = v7;
            v9 = 33190;
            goto LABEL_27;
          case ',':
            v4->i32[0] = 34042;
            v4[-1] = v8;
            *(v3 + 4 * v2) = 35056;
            goto LABEL_28;
        }
      }

      else
      {
        switch(v2)
        {
          case 0x13u:
            v4->i32[0] = 5123;
            v4[-1] = 0x822700001907;
            v9 = 33319;
            goto LABEL_27;
          case 0x17u:
            v4->i32[0] = 36193;
            v4[-1] = 0x822700001907;
            v9 = 33327;
            goto LABEL_27;
          case 0x24u:
            goto LABEL_19;
        }
      }
    }

    else
    {
      if (v2 <= 2u)
      {
        if (v2 - 1 < 2)
        {
          v4->i32[0] = 5121;
          v4[-1] = v5;
          *(v3 + 4 * v2) = 32856;
          goto LABEL_28;
        }

        if (!v2)
        {
          v4->i32[0] = 0xFFFF;
          v4[-1] = 0xFFFF0000FFFFLL;
          *(v3 + 4 * v2) = 0xFFFF;
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      switch(v2)
      {
        case 3u:
          v4->i32[0] = 5121;
          v4[-1] = v6;
          v9 = 33321;
          goto LABEL_27;
        case 0xBu:
          v4->i32[0] = 36193;
          v4[-1] = 0x190300001907;
          v9 = 33325;
          goto LABEL_27;
        case 0xEu:
          v4->i32[0] = 5126;
          v4[-1] = 0x190300001907;
          v9 = 33326;
LABEL_27:
          *(v3 + 4 * v2) = v9;
          goto LABEL_28;
      }
    }

LABEL_30:
    v4->i32[0] = 0;
    v4[-1] = 0;
    *(v3 + 4 * v2) = 0;
    v10 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 67109120;
      v12 = v2;
      _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Unknown render buffer format %hhu", buf, 8u);
    }

LABEL_28:
    ++v2;
    v4 = (v4 + 12);
  }

  while (v2 != 46);
}

uint64_t C3DES2SlotToAttachmentID(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 36064;
    case 5:
      return 36128;
    case 4:
      return 36096;
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DES2SlotToAttachmentID_cold_1(v3);
  }

  return 0xFFFFLL;
}

void SCNCPlaySound::SCNCPlaySound(SCNCPlaySound *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC3350;
  *(v3 + 24) = a2->var3;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
  *(v3 + 144) = 0;
}

void SCNCPlaySound::~SCNCPlaySound(SCNCPlaySound *this)
{
  SCNCPlaySound::~SCNCPlaySound(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC3350;

  SCNCAction::~SCNCAction(this);
}

void SCNCPlaySound::cpp_updateWithTargetForTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_updateWithTargetForTime(this, a2, a3);
  if (!this->var19 && this->var21)
  {
    this->var19 = 1;
    [(SCNNode *)a2 addAudioPlayer:[SCNAudioPlayer audioPlayerWithSource:?]];
  }

  v7.n128_f32[0] = SCNCAction::cpp_ratioForTime(this, a3, v6);
  if ((COERCE_UNSIGNED_INT(v7.n128_f32[0] + -1.0) & 0x60000000) == 0 || !this->var21)
  {
    v7.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v7);
  }
}

SCNCAction *SCNCPlaySound::cpp_wasRemovedFromTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  if (__PAIR64__(this->var20, this->var19) == 0x100000001)
  {
    if (this->var21)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(SCNNode *)a2 audioPlayers];
      result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if ([v10 audioSource] == this->var21)
            {
              return [(SCNNode *)a2 removeAudioPlayer:v10];
            }

            v9 = (v9 + 1);
          }

          while (v7 != v9);
          result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

SCNCAction *SCNCPlaySound::cpp_willStartWithTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0;
  return result;
}

void *SCNCPlaySound::cpp_didFinishWithTargetAtTime(SCNCPlaySound *this, SCNNode *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = SCNCAction::cpp_didFinishWithTargetAtTime(this, a2, a3);
  if (__PAIR64__(this->var20, this->var19) == 0x100000001)
  {
    if (this->var21)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(SCNNode *)a2 audioPlayers];
      result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if ([v10 audioSource] == this->var21)
            {
              return [(SCNNode *)a2 removeAudioPlayer:v10];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          result = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

double scn_matrix_compute_normal(double _D0, __n128 _Q1, __n128 a3)
{
  _S7 = a3.n128_u32[2];
  _S3 = _Q1.n128_u32[2];
  __asm
  {
    FMLA            S5, S7, V1.S[1]
    FMLA            S17, S7, V0.S[1]
    FMLA            S16, S3, V0.S[1]
  }

  v12 = ((*&_D0 * _S5) - (_Q1.n128_f32[0] * _S17)) + (a3.n128_f32[0] * _S16);
  if (v12 == 0.0)
  {
    v13 = *MEMORY[0x277D860B8];
  }

  else
  {
    v14 = 1.0 / v12;
    *&v13 = _S5 * v14;
    *(&v13 + 1) = -(((a3.n128_f32[0] * -_Q1.n128_f32[2]) + (_Q1.n128_f32[0] * a3.n128_f32[2])) * v14);
  }

  return *&v13;
}

double scn_matrix_fast_invert(int32x4_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v4 = vzip1q_s32(a1, a3);
  v5 = vzip2q_s32(a1, a3);
  v6 = vzip1q_s32(a2, a4);
  v7 = vzip2q_s32(a2, a4);
  v8 = vzip1q_s32(v4, v6);
  v9 = vzip2q_s32(v4, v6);
  v10 = vzip1q_s32(v5, v7);
  v11 = vzip2q_s32(v5, v7);
  v12 = vextq_s8(v9, v9, 8uLL);
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = vrev64q_s32(vmulq_f32(v10, v13));
  v15 = vrev64q_s32(vmulq_f32(v10, v12));
  v16 = vrev64q_s32(vmulq_f32(v9, v13));
  v17 = vextq_s8(v10, v10, 8uLL);
  v18 = vmlsq_f32(vmlaq_f32(vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v14, vnegq_f32(v12)), vextq_s8(v14, v14, 8uLL), v12), v15, v13), vextq_s8(v15, v15, 8uLL), v13), v16, v17), vextq_s8(v16, v16, 8uLL), v17);
  v19 = vmulq_f32(v8, v18);
  *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v12.i32[0] = vadd_f32(*v19.i8, vdup_lane_s32(*v19.i8, 1)).u32[0];
  *v13.f32 = vrecpe_f32(v12.u32[0]);
  *v13.f32 = vmul_f32(*v13.f32, vrecps_f32(v12.u32[0], *v13.f32));
  *v12.f32 = vmul_f32(*v13.f32, vrecps_f32(v12.u32[0], *v13.f32));
  *&result = vmulq_n_f32(v18, vadd_f32(*v12.f32, *v12.f32).f32[0] - (vmul_f32(*v12.f32, *v12.f32).f32[0] * vaddv_f32(*v19.i8))).u64[0];
  return result;
}

float32x4_t scn_matrix_multiply_batch(simd_float4x4 *a1, const simd_float4x4 *a2, const simd_float4x4 *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = &a3->columns[2];
    v5 = &a2->columns[2];
    v6 = &a1->columns[2];
    v7 = a4;
    do
    {
      v8 = v5[-2];
      v9 = v5[-1];
      v11 = *v5;
      result = v5[1];
      v5 += 4;
      v12 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[-2].f32[0]), v9, v4[-2].f32[1]), v11, v4[-2].f32[2]), result, v4[-2].f32[3]);
      v13 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[-1].f32[0]), v9, v4[-1].f32[1]), v11, v4[-1].f32[2]), result, v4[-1].f32[3]);
      v14 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4->f32[0]), v9, v4->f32[1]), v11, v4->f32[2]), result, v4->f32[3]);
      v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[1].f32[0]), v9, v4[1].f32[1]), v11, v4[1].f32[2]), result, v4[1].f32[3]);
      v6[-2] = v12;
      v6[-1] = v13;
      *v6 = v14;
      v6[1] = v15;
      v6 += 4;
      v4 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x4_t *scn_matrix_multiply_batch(float32x4_t *result, simd_float4x4 a2, const simd_float4x4 *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = &a3->columns[2];
    v6 = result + 2;
    do
    {
      v6[-2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[-2].f32[0]), a2.columns[1], v5[-2].f32[1]), a2.columns[2], v5[-2].f32[2]), a2.columns[3], v5[-2].f32[3]);
      v6[-1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[-1].f32[0]), a2.columns[1], v5[-1].f32[1]), a2.columns[2], v5[-1].f32[2]), a2.columns[3], v5[-1].f32[3]);
      *v6 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5->f32[0]), a2.columns[1], v5->f32[1]), a2.columns[2], v5->f32[2]), a2.columns[3], v5->f32[3]);
      v6[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a2.columns[0], v5[1].f32[0]), a2.columns[1], v5[1].f32[1]), a2.columns[2], v5[1].f32[2]), a2.columns[3], v5[1].f32[3]);
      v5 += 4;
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

int32x4_t scn_matrix_transpose_batch(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a1 + 32);
    v5 = a2 + 2;
    do
    {
      v6 = v5[-2];
      v7 = v5[-1];
      v8 = *v5;
      v9 = v5[1];
      v5 += 4;
      v10 = v4 - 8;
      v11 = vzip1q_s32(v6, v8);
      v14.val[0] = vzip2q_s32(v6, v8).u64[0];
      v12 = vzip1q_s32(v7, v9);
      v14.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v11, v12);
      vst2_f32(v10, v11);
      *(v4 - 1) = result;
      vst2_f32(v4, v14);
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

float32_t scn_triangle_point_distance_squared(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a4, a1);
  v6 = vsubq_f32(a3, a2);
  v7 = vsubq_f32(a4, a2);
  v8 = vsubq_f32(a1, a3);
  v9 = vsubq_f32(a4, a3);
  v10 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v11 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v12 = vnegq_f32(v4);
  v13 = vmlaq_f32(vmulq_f32(v11, v12), v8, v10);
  v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
  v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
  v16 = vmlaq_f32(vmulq_f32(v15, v12), v14, v10);
  v17 = vmlaq_f32(vmulq_f32(v15, vnegq_f32(v6)), v14, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v18 = vmlaq_f32(vmulq_f32(v15, vnegq_f32(v8)), v14, v11);
  v19 = vmulq_f32(v5, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v20 = vmulq_f32(v7, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
  v21 = vmulq_f32(v9, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v22 = vmulq_f32(v5, v14);
  v23 = vzip1q_s32(v19, v21);
  v24 = vzip2q_s32(v19, v21);
  v25 = vzip1q_s32(v20, v22);
  v26 = vaddq_f32(vzip1q_s32(v24, vzip2q_s32(v20, v22)), vaddq_f32(vzip1q_s32(v23, v25), vzip2q_s32(v23, v25)));
  v27 = vmulq_f32(v4, v4);
  v28 = vmulq_f32(v6, v6);
  v29 = vmulq_f32(v8, v8);
  v30 = vmulq_f32(v13, v13);
  v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  v32 = vzip1q_s32(v27, v29);
  v33 = vzip2q_s32(v27, v29);
  v34 = vzip1q_s32(v28, v31);
  v35 = vaddq_f32(vzip1q_s32(v33, vzip2q_s32(v28, v31)), vaddq_f32(vzip1q_s32(v32, v34), vzip2q_s32(v32, v34)));
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v36 = vandq_s8(v26, v28);
  __asm { FMOV            V16.4S, #1.0 }

  v42 = vandq_s8(vorrq_s8(v36, _Q16), vorrq_s8(vcltzq_f32(v26), vcgtzq_f32(v26)));
  if ((*&v42.i32[2] + vaddv_f32(*v42.i8)) >= 2.0)
  {
    v60.i32[0] = vdivq_f32(vmulq_f32(v26, v26), v35).i32[3];
  }

  else
  {
    v43 = vmulq_f32(v4, v5);
    v44 = vmulq_f32(v6, v7);
    v45 = vmulq_f32(v8, v9);
    v46 = vzip2q_s32(v43, v45);
    v47 = vzip1q_s32(vzip1q_s32(v43, v45), v44);
    v48 = vtrn2q_s32(v43, v44);
    v48.i32[2] = v45.i32[1];
    v49 = vdivq_f32(vaddq_f32(vzip1q_s32(v46, vdupq_laneq_s32(v44, 2)), vaddq_f32(v47, v48)), v35);
    v49.i32[3] = v49.i32[2];
    v50 = vminq_f32(vmaxq_f32(v49, 0), _Q16);
    v51 = vmlaq_n_f32(vnegq_f32(v5), v4, v50.f32[0]);
    v52 = vmlaq_lane_f32(vnegq_f32(v7), v6, *v50.f32, 1);
    v53 = vmlaq_laneq_f32(vnegq_f32(v9), v8, v50, 2);
    v54 = vmulq_f32(v51, v51);
    v55 = vmulq_f32(v52, v52);
    v56 = vmulq_f32(v53, v53);
    v57 = vzip2q_s32(v54, v56);
    v58 = vzip1q_s32(vzip1q_s32(v54, v56), v55);
    v59 = vtrn2q_s32(v54, v55);
    v59.i32[2] = v56.i32[1];
    v60 = vaddq_f32(vzip1q_s32(v57, vdupq_laneq_s32(v55, 2)), vaddq_f32(v58, v59));
    v61 = v60.f32[1];
    if (v60.f32[0] <= v60.f32[1])
    {
      v61 = v60.f32[0];
    }

    v60.i32[0] = v60.i32[2];
    if (v61 <= v60.f32[2])
    {
      v60.f32[0] = v61;
    }
  }

  return v60.f32[0];
}

BOOL scn_plane_intersect_3_planes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7)
{
  v7.i64[0] = a1;
  v7.i64[1] = a2;
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v9.i64[0] = a5;
  v9.i64[1] = a6;
  v10 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  if (v10.f32[0] != 0.0)
  {
    v11 = v7;
    v11.f32[0] = -*(&a2 + 1);
    v12 = v8;
    *v12.i32 = -*(&a4 + 1);
    v13 = v9;
    *v13.i32 = -*(&a6 + 1);
    v14 = vmulq_f32(v11, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL))), vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL)));
    v15 = v7;
    v15.f32[1] = -*(&a2 + 1);
    v16 = v8;
    *&v16.i32[1] = -*(&a4 + 1);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v17 = v9;
    *&v17.i32[1] = -*(&a6 + 1);
    v18 = vmulq_f32(v15, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL))), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL)));
    v7.f32[2] = -*(&a2 + 1);
    *&v8.i32[2] = -*(&a4 + 1);
    *&v9.i32[2] = -*(&a6 + 1);
    v19 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
    v14.f32[1] = v18.f32[2] + vaddv_f32(*v18.f32);
    v14.f32[2] = v19.f32[2] + vaddv_f32(*v19.f32);
    *a7 = vdivq_f32(v14, vdupq_lane_s32(*v10.f32, 0));
  }

  return v10.f32[0] != 0.0;
}

uint64_t scn_frustum_classify_aabb(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vmulq_f32(a2, *a1);
  v7 = vmulq_f32(a2, v3);
  v8 = vmulq_f32(a2, v4);
  v9 = vmulq_f32(a2, v5);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(v6, v8);
  v12 = vzip1q_s32(v7, v9);
  v13 = vzip2q_s32(v7, v9);
  v14 = vaddq_f32(vzip2q_s32(v11, v13), vaddq_f32(vzip1q_s32(v11, v13), vaddq_f32(vzip1q_s32(v10, v12), vzip2q_s32(v10, v12))));
  v15 = vmulq_f32(a3, vabsq_f32(*a1));
  v16 = vmulq_f32(a3, vabsq_f32(v3));
  v17 = vmulq_f32(a3, vabsq_f32(v4));
  v18 = vmulq_f32(a3, vabsq_f32(v5));
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  v23 = vmaxnmq_f32(vsubq_f32(vabsq_f32(v14), vaddq_f32(vzip2q_s32(v20, v22), vaddq_f32(vzip1q_s32(v20, v22), vaddq_f32(vzip1q_s32(v19, v21), vzip2q_s32(v19, v21))))), 0);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v24 = vorrq_s8(vandq_s8(v14, v22), vabsq_f32(v23));
  if ((vmaxvq_u32(vcltzq_f32(v24)) & 0x80000000) != 0)
  {
    return 1;
  }

  v26 = a1[4];
  v25 = a1[5];
  v27 = vmulq_f32(a2, v26);
  v28 = vmulq_f32(a2, v25);
  v29 = vzip1q_s32(v27, v28);
  v30 = vzip2q_s32(v27, v28);
  *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vadd_f32(*v30.i8, vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL))));
  v31 = vmulq_f32(a3, vabsq_f32(v26));
  v32 = vmulq_f32(a3, vabsq_f32(v25));
  v33 = vzip1q_s32(v31, v32);
  v34 = vzip2q_s32(v31, v32);
  v35 = vorr_s8(vand_s8(*v30.i8, 0x8000000080000000), vabs_f32(vmaxnm_f32(vsub_f32(vabs_f32(*v30.i8), vadd_f32(*&vextq_s8(v34, v34, 8uLL), vadd_f32(*v34.i8, vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL))))), 0)));
  *v34.i8 = vcltz_f32(v35);
  if ((vpmax_u32(*v34.i8, *v34.i8).u32[0] & 0x80000000) != 0)
  {
    return 1;
  }

  *v36.f32 = vmul_f32(*v24.f32, v35);
  v36.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  return (vmaxvq_u32(vceqzq_f32(v36)) >> 30) & 2;
}

double scn_triangle_barycentric_coordinates(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(v4)), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL), v5);
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  if (fabsf(v7.f32[0]) >= 1.1755e-38)
  {
    v13 = vsubq_f32(a3, a4);
    v14 = vsubq_f32(a2, a4);
    v15 = vsubq_f32(a1, a4);
    v16 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL);
    v17 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
    v18 = vmlaq_f32(vmulq_f32(v17, vnegq_f32(v14)), v16, v13);
    v19 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
    v20 = vmlaq_f32(vmulq_f32(v19, vnegq_f32(v13)), v17, v15);
    v21 = vmlaq_f32(vmulq_f32(v16, vnegq_f32(v15)), v19, v14);
    v22 = vmulq_f32(v6, v18);
    v23 = vmulq_f32(v6, v20);
    _Q0 = vmulq_f32(v6, v21);
    v24 = vzip2q_s32(v22, _Q0);
    v25 = vzip1q_s32(vzip1q_s32(v22, _Q0), v23);
    v26 = vtrn2q_s32(v22, v23);
    v26.i32[2] = _Q0.i32[1];
    _Q0.i64[0] = vdivq_f32(vaddq_f32(vzip1q_s32(v24, vdupq_laneq_s32(v23, 2)), vaddq_f32(v25, v26)), vdupq_lane_s32(*v7.f32, 0)).u64[0];
  }

  else
  {
    __asm { FMOV            V0.4S, #-1.0 }
  }

  return *_Q0.i64;
}

uint64_t C3DKeyframedAnimationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DKeyframedAnimationGetTypeID_onceToken != -1)
  {
    C3DKeyframedAnimationGetTypeID_cold_1();
  }

  return C3DKeyframedAnimationGetTypeID_typeID;
}

double __C3DKeyframedAnimationGetTypeID_block_invoke()
{
  C3DKeyframedAnimationGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DKeyframedAnimationContextClassSerializable;
  unk_281741110 = kC3DC3DKeyframedAnimationContextClassSerializable;
  unk_281741120 = *off_282DC3408;
  return result;
}

uint64_t C3DKeyframedAnimationCreate(uint64_t a1, uint64_t a2)
{
  if (C3DKeyframedAnimationGetTypeID_onceToken != -1)
  {
    C3DKeyframedAnimationGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DKeyframedAnimationGetTypeID_typeID, 160);
  C3DAnimationCommonInit(Instance);
  return Instance;
}

float C3DKeyframedAnimationSetController(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 168);
  if (v11 != cf)
  {
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      v11 = CFRetain(cf);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 168) = v11;
  }

  result = *(a1 + 72);
  if (result == 0.0 && v11 != 0)
  {
    Duration = C3DKeyframeControllerGetDuration(v11, cf);
    C3DAnimationSetDuration(a1, v15, Duration);
  }

  return result;
}

uint64_t C3DKeyframedAnimationGetController(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

uint64_t C3DKeyframedAnimationEvaluate(_BOOL8 a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DKeyframedAnimationEvaluate_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationEvaluate_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  result = *(v7 + 168);
  if (result)
  {
    v23 = C3DKeyframeControllerGetDuration(result, a2) * a4;
    v24 = *(v7 + 168);
    Additive = C3DAnimationGetAdditive(v7, v25);
    return C3DKeyframeControllerEvaluateAtTime(v24, a2, Additive, a3, v23);
  }

  return result;
}

uint64_t C3DKeyframedAnimationSetup(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  Controller = C3DKeyframedAnimationGetController(a1, a2);
  if (Controller)
  {
    v12 = Controller;
    if (C3DKeyframeControllerGetCalculationMode(Controller, v11) == 1 || C3DKeyframeControllerGetDuration(v12, v13) == 0.0)
    {
      *v14.i64 = C3DAnimationGetDuration(a1, v13);
      C3DKeyframeControllerSetupKeyTimesForPacedMode(v12, v15, v14, v16);
    }

    KeyCount = C3DKeyframeControllerGetKeyCount(v12, v13);
    if (*(v12 + 114) == 1)
    {
      v18 = KeyCount;
      ValueComponentCount = C3DKeyframeControllerGetValueComponentCount(v12);
      memset(__dst, 0, sizeof(__dst));
      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = v19;
          KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(v12, v19);
          v19 = (v19 + 1);
          if (v19 >= v18)
          {
            v22 = KeyTimeAtIndex + KeyTimeAtIndex - C3DKeyframeControllerGetKeyTimeAtIndex(v12, (v20 - 1));
            if (!v20)
            {
LABEL_15:
              v23 = KeyTimeAtIndex - (C3DKeyframeControllerGetKeyTimeAtIndex(v12, v19) - KeyTimeAtIndex);
              goto LABEL_16;
            }
          }

          else
          {
            v22 = C3DKeyframeControllerGetKeyTimeAtIndex(v12, v19);
            if (!v20)
            {
              goto LABEL_15;
            }
          }

          v23 = C3DKeyframeControllerGetKeyTimeAtIndex(v12, (v20 - 1));
LABEL_16:
          TensionAtIndex = C3DKeyframeControllerGetTensionAtIndex(v12, v20);
          ContinuityAtIndex = C3DKeyframeControllerGetContinuityAtIndex(v12, v20);
          BiasAtIndex = C3DKeyframeControllerGetBiasAtIndex(v12, v20);
          OutTangentsAtIndex = C3DKeyframeControllerGetOutTangentsAtIndex(v12, v20);
          v28 = C3DKeyframeControllerGetInTangentsAtIndex(v12, v20);
          if (ValueComponentCount)
          {
            v29 = v28;
            v30 = 0;
            v31 = KeyTimeAtIndex - v23;
            v32 = v22 - KeyTimeAtIndex;
            v33 = v22 - KeyTimeAtIndex + KeyTimeAtIndex - v23;
            v34 = (v22 - KeyTimeAtIndex) / v33;
            v35 = (KeyTimeAtIndex - v23) / v33;
            v36 = (1.0 - TensionAtIndex) * (ContinuityAtIndex + 1.0);
            v37 = v34 * (v36 * (BiasAtIndex + 1.0));
            v38 = (1.0 - TensionAtIndex) * (1.0 - ContinuityAtIndex);
            v39 = v34 * (v38 * (1.0 - BiasAtIndex));
            v40 = v35 * (v38 * (BiasAtIndex + 1.0));
            v41 = v35 * (v36 * (1.0 - BiasAtIndex));
            *&v35 = v32 * v39 + v37 * v31;
            *&v31 = v32 * v41 + v40 * v31;
            v50 = LODWORD(v31);
            v51 = LODWORD(v35);
            do
            {
              C3DKeyframeControllerGetValueAtIndex(v12, v20, __dst);
              v42 = *(__dst + v30);
              if (v19 >= v18)
              {
                C3DKeyframeControllerGetValueAtIndex(v12, (v20 - 1), __dst);
                v43 = v42 + (v42 - *(__dst + v30));
              }

              else
              {
                C3DKeyframeControllerGetValueAtIndex(v12, v19, __dst);
                v43 = *(__dst + v30);
              }

              if (v20)
              {
                C3DKeyframeControllerGetValueAtIndex(v12, (v20 - 1), __dst);
                v44 = *(__dst + v30);
              }

              else
              {
                C3DKeyframeControllerGetValueAtIndex(v12, v19, __dst);
                v44 = v42 - (*(__dst + v30) - v42);
              }

              v45 = (v42 - v44);
              v46 = (v43 - v42);
              *&v47 = v39 * v46 + v37 * v45;
              *(OutTangentsAtIndex + 8 * v30) = __PAIR64__(v47, v51);
              *&v45 = v41 * v46 + v40 * v45;
              *(v29 + 8 * v30++) = __PAIR64__(LODWORD(v45), v50);
            }

            while (ValueComponentCount != v30);
          }
        }

        while (v19 != v18);
      }
    }
  }

  else
  {
    C3DKeyframeControllerGetKeyCount(0, v11);
  }

  return 1;
}

float C3DKeyframedAnimationCopy(_BOOL8 a1, uint64_t a2)
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
    C3DKeyframedAnimationCopy_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  Controller = C3DKeyframedAnimationGetController(v3, a2);
  return C3DKeyframedAnimationSetController(a2, Controller);
}

id _C3DKeyframedAnimationCFFinalize(void *a1, uint64_t a2)
{
  v3 = a1[21];
  if (v3)
  {
    CFRelease(v3);
    a1[21] = 0;
  }

  return _C3DAnimationCFFinalize(a1, a2);
}

uint64_t _C3DKeyframedAnimationInitWithPropertyList(uint64_t TypeID, CFTypeRef cf, const __CFDictionary *a3, uint64_t a4)
{
  v7 = TypeID;
  if (!TypeID && (v8 = scn_default_log(0, cf), TypeID = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT), TypeID))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, cf, v9, v10, v11, v12, v13, v14);
    if (!cf)
    {
LABEL_12:
      v21 = scn_default_log(TypeID, cf);
      result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _C3DKeyframedAnimationInitWithPropertyList_cold_3(v21);
        return 0;
      }

      return result;
    }
  }

  else if (!cf)
  {
    goto LABEL_12;
  }

  v15 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v15 != TypeID)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(cf, @"keyframeController");
  if (Value)
  {
    result = C3DKeyframeControllerCreateWithPropertyList(Value, a3, a4);
    if (!result)
    {
      return result;
    }

    v19 = result;
    C3DKeyframedAnimationSetController(v7, result);
    CFRelease(v19);
  }

  else
  {
    v20 = scn_default_log(0, v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DKeyframedAnimationInitWithPropertyList_cold_2(v20);
    }
  }

  _C3DAnimationInitWithPropertyList(v7, cf, a3, a4);
  return 1;
}

__CFDictionary *_C3DKeyframedAnimationCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = _C3DAnimationCopyPropertyList(a1, a2, a3, a4);
  CFDictionaryAddValue(v16, @"type", @"keyframedAnimation");
  v17 = *(a1 + 168);
  if (v17)
  {
    v18 = C3DCopyPropertyList(v17, a2, a3, a4);
    CFDictionaryAddValue(v16, @"keyframeController", v18);
    CFRelease(v18);
  }

  return v16;
}

uint64_t SCNPassInitialize(uint64_t *a1)
{
  if (!gPassContext)
  {
    gPassContext = objc_alloc_init(SCNPassContext);
  }

  InitializeBlock = C3DFXPassGetInitializeBlock(*a1);
  *(gPassContext + 8) = a1;
  v3 = *(InitializeBlock + 16);

  return v3();
}

uint64_t SCNPassExecute(uint64_t *a1)
{
  if (!gPassContext)
  {
    gPassContext = objc_alloc_init(SCNPassContext);
  }

  ExecuteBlock = C3DFXPassGetExecuteBlock(*a1);
  *(gPassContext + 8) = a1;
  v3 = *(ExecuteBlock + 16);

  return v3();
}

uint64_t C3DAnimationPlayerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DAnimationPlayerGetTypeID_onceToken != -1)
  {
    C3DAnimationPlayerGetTypeID_cold_1();
  }

  return C3DAnimationPlayerGetTypeID_typeID;
}

double __C3DAnimationPlayerGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DAnimationPlayerGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"speed", 84, 1, 0);
  C3DModelPathResolverRegisterProperty(@"blendFactor", 80, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DAnimationPlayerContextClassAnimatable;
  xmmword_281741C80 = kC3DC3DAnimationPlayerContextClassAnimatable;
  return result;
}

uint64_t C3DAnimationPlayerCreateWithAnimation(const void *a1, uint64_t a2)
{
  if (C3DAnimationPlayerGetTypeID_onceToken != -1)
  {
    C3DAnimationPlayerGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationPlayerGetTypeID_typeID, 80);
  if (Instance)
  {
    *(Instance + 72) = CFArrayCreateMutable(0, 1, MEMORY[0x277CBF128]);
    v4 = *(Instance + 64);
    if (v4 != a1)
    {
      if (v4)
      {
        CFRelease(v4);
        *(Instance + 64) = 0;
      }

      if (a1)
      {
        v5 = CFRetain(a1);
      }

      else
      {
        v5 = 0;
      }

      *(Instance + 64) = v5;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *(Instance + 80) = _D0;
    *(Instance + 88) = 1;
  }

  return Instance;
}

CFTypeRef C3DAnimationPlayerSetAnimation(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t C3DAnimationPlayerGetAnimation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DAnimationPlayerRemoveAnimationNode(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationPlayerSetAnimation_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    _C3DAnimationManagerAddAnimationNode_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(v3 + 72);
  v22.length = CFArrayGetCount(v19);
  v22.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v19, v22, a2);
  if (FirstIndexOfValue != -1)
  {
    v21 = FirstIndexOfValue;
    C3DAnimationNodeSetPlayer(a2, 0);
    CFArrayRemoveValueAtIndex(*(v3 + 72), v21);
  }
}

double C3DAnimationPlayerAddAnimationNode(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = scn_default_log(0, value);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 72), value);
  C3DAnimationNodeSetPlayer(value, a1);
  AnimationManager = C3DAnimationNodeGetAnimationManager(value);
  if (!AnimationManager)
  {
    v14 = scn_default_log(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    C3DAnimationManagerPlayAnimationNode(AnimationManager, value);
  }

  result = *(a1 + 80);
  *(value + 6) = result;
  return result;
}

void C3DAnimationPlayerSetSpeed(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 84) != a3)
  {
    *(result + 84) = a3;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 72), i);
        C3DAnimationNodeChangeSpeed(ValueAtIndex, a3, v17);
      }
    }
  }
}

float C3DAnimationPlayerGetSpeed(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

void C3DAnimationPlayerSetWeight(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 80) != a3)
  {
    *(result + 80) = a3;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        *(CFArrayGetValueAtIndex(*(result + 72), i) + 12) = a3;
      }
    }
  }
}

float C3DAnimationPlayerGetWeight(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void C3DAnimationPlayerSetPaused(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 88) != a2)
  {
    *(result + 88) = a2;
    Count = CFArrayGetCount(*(result + 72));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(result + 72), i);
        AnimationManager = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
        if (AnimationManager)
        {
          v17 = AnimationManager;
          C3DTransactionGetAtomicTime();
          C3DAnimationManagerPauseAnimationNode(v17, ValueAtIndex, a2, 0, v18);
        }
      }
    }
  }
}

uint64_t C3DAnimationPlayerGetPaused(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

CFIndex C3DAnimationPlayerPlay(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 88) = 0;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v12 = result;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerPlayAnimationNode(result, ValueAtIndex);
      }
    }
  }

  return result;
}

CFIndex C3DAnimationPlayerStop(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v12 = result;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerStopAnimationNode(result, ValueAtIndex, 0.0);
      }
    }
  }

  return result;
}

CFIndex C3DAnimationPlayerStopWithDuration(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationPlayerSetAnimation_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(a1 + 88) = 1;
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    v14 = result;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      result = C3DAnimationNodeGetAnimationManager(ValueAtIndex);
      if (result)
      {
        result = C3DAnimationManagerStopAnimationNode(result, ValueAtIndex, a3);
      }
    }
  }

  return result;
}

void _C3DAnimationPlayerCFFinalize(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DAnimationNodeSetPlayer(ValueAtIndex, 0);
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }
}

void _C3DAnimationPlayerSetValue(uint64_t result, uint64_t a2, float *a3)
{
  if (result + 84 == a2)
  {
    C3DAnimationPlayerSetSpeed(result, a2, *a3);
  }

  else if (result + 80 == a2)
  {
    C3DAnimationPlayerSetWeight(result, a2, *a3);
  }
}

double __C3DAnimationNodeGetTypeID_block_invoke()
{
  C3DAnimationNodeGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_28173FD20 = kC3DC3DAnimationNodeContextClassSerializable;
  unk_28173FD30 = *&off_282DC3498;
  result = *&kC3DC3DAnimationNodeContextClassAnimatable;
  xmmword_28173FCC8 = kC3DC3DAnimationNodeContextClassAnimatable;
  return result;
}

uint64_t C3DAnimationNodeCreateWithAnimation(const void *a1)
{
  if (C3DAnimationNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationNodeCreateWithAnimation_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationNodeGetTypeID_typeID, 208);
  v3 = Instance;
  if (Instance)
  {
    _C3DAnimationNodeInitializeWithAnimation(Instance, a1);
  }

  return v3;
}

float _C3DAnimationNodeInitializeWithAnimation(uint64_t a1, const void *a2)
{
  *(a1 + 60) = 2139095039;
  *(a1 + 72) = -1082130432;
  v4 = *(a1 + 121);
  *(a1 + 152) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  *(a1 + 121) = v4 | 0x24;
  C3DAnimationNodeSetAnimation(a1, a2);
  Duration = C3DAnimationGetDuration(a2, v10);
  if (Duration == 0.0)
  {
    v12 = C3DTransactionGetDuration();
    if (v12 == 0.0)
    {
      v12 = 0.25;
    }
  }

  else
  {
    v12 = Duration;
  }

  result = v12;
  *(a1 + 76) = result;
  return result;
}

CFTypeRef C3DAnimationNodeSetAnimation(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetAnimation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DAnimationNodeGetOwner(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 144);
}

void C3DAnimationNodeSetOwner(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 144) = a2;
}

void C3DAnimationNodeSetStartTime(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 80) = a3;
}

void C3DAnimationNodeRestart(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 121) |= 2u;
}

double C3DAnimationNodeGetStartTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void C3DAnimationNodeTimeJump(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if ((*(result + 121) & 1) != 0 && (*(*(result + 16) + 84) & 8) == 0)
  {
    *(result + 80) = *(result + 80) + a3;
  }
}

CFTypeRef C3DAnimationNodeSetKey(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 136) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 136) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetCompletionCallbacks(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 208;
}

CFTypeRef C3DAnimationNodeSetCompletionItem(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 200);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 200) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 200) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetCompletionItem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200);
}

uint64_t C3DAnimationNodeGetParent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

void C3DAnimationNodeAddChild(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_2(v4, value, v5, v6, v7, v8, v9, v10);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, value);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeAddChild_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  Mutable = *(v3 + 32);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(v3 + 32) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  *(value + 5) = v3;
}

const __CFArray *C3DAnimationNodeGetChildCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *C3DAnimationNodeGetChildAtIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = scn_default_log(0, idx);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetValueAtIndex(result, idx);
  }

  return result;
}

void C3DAnimationNodeSetRepeatStep(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(result + 112);
  if (!v3)
  {
    v4 = scn_default_log(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationNodeSetRepeatStep_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *v3;
  if (*v3 != v2)
  {
    v13 = *(v3 + 8);
    v12 = *(v3 + 16);
    if (!v13)
    {
      Type = C3DValueGetType(*(v3 + 16), a2);
      v13 = C3DValueCreate(Type, 1);
      *(v3 + 8) = v13;
      v11 = *v3;
    }

    if (v11 - 1 >= v2)
    {
      Bytes = C3DValueGetBytes(v13, a2);
      C3DValueCopyTo(v12, Bytes);
      v11 = 1;
    }

    v16 = v2 - v11;
    if (v2 > v11)
    {
      do
      {
        C3DValueConcat(v13, v12, v13);
        --v16;
      }

      while (v16);
    }

    *v3 = v2;
  }
}

double C3DAnimationNodeGetContentTimeForTime(uint64_t a1, BOOL *a2, _BYTE *a3, BOOL *a4, double a5)
{
  if (!a1)
  {
    v10 = scn_default_log(0, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if ((*(a1 + 123) & 0x60) != 0)
  {
    a5 = *(a1 + 128);
  }

  if (a5 != *(a1 + 60))
  {
    v17 = a5;
    *(a1 + 60) = v17;
    v67 = 0;
    v66 = 1;
    v18 = *(a1 + 40);
    if (v18)
    {
      ContentTimeForTime = C3DAnimationNodeGetContentTimeForTime(v18, &v67 + 1, &v67, &v66, a5);
      v20 = v66;
      if (!v66)
      {
        v36 = 0;
        v37 = 0;
        v33.i64[0] = 0;
        v38 = 0.0;
        goto LABEL_94;
      }

      a5 = ContentTimeForTime;
    }

    Animation = C3DAnimationNodeGetAnimation(a1, a2);
    Duration = C3DAnimationGetDuration(Animation, v22);
    v25 = Duration;
    if (*(a1 + 40) || (*(Animation + 84) & 8) != 0)
    {
      PauseTime = C3DAnimationNodeGetPauseTime(Animation, v23);
    }

    else
    {
      PauseTime = C3DAnimationNodeGetStartTime(a1, v23);
    }

    v28 = PauseTime;
    v29 = *(a1 + 52);
    v30 = v29 * C3DAnimationGetSpeed(Animation, v26);
    TimeOffset = C3DAnimationGetTimeOffset(Animation, v31);
    if (Duration <= 0.0)
    {
      v25 = 1.0;
    }

    if (v30 < 0.0)
    {
      HIBYTE(v67) ^= 1u;
    }

    *v33.i64 = a5 - v28;
    if (Duration == 0.0)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0.0;
LABEL_93:
      v20 = 128;
LABEL_94:
      v61 = v38;
      v62 = *(a1 + 121) & 0xFFFFFC7F | (HIBYTE(v67) << 9);
      v63 = *v33.i64;
      *(a1 + 64) = v61;
      *(a1 + 68) = v63;
      if (v36)
      {
        if (*(a1 + 40))
        {
          v64 = v67 << 8;
        }

        else
        {
          v64 = 256;
        }
      }

      else
      {
        v64 = 0;
      }

      *(a1 + 121) = v62 | v20 | v64;
      if (*(a1 + 112))
      {
        C3DAnimationNodeSetRepeatStep(a1, v37);
      }

      goto LABEL_101;
    }

    if (v30 == 0.0)
    {
      v38 = *(a1 + 64);
    }

    else
    {
      v38 = *v33.i64 * fabsf(v30) / v25;
    }

    *v33.i64 = v38;
    if (v38 < 0.0)
    {
      FillModeMask = C3DAnimationGetFillModeMask(Animation, v32);
      v33.i64[0] = 0;
      if ((FillModeMask & 2) == 0)
      {
        v20 = 0;
        v36 = 0;
        v37 = 0;
        goto LABEL_94;
      }
    }

    v40 = *(Animation + 76);
    v41 = v40 == 3.4028e38 || v40 == INFINITY;
    v42 = *(Animation + 84);
    if ((v42 & 1) != 0 || (v37 = 0, v43 = 1.0, v40 != 0.0) && v40 != 1.0)
    {
      if (v40 == 0.0)
      {
        v43 = 1.0;
      }

      else
      {
        v43 = *(Animation + 76);
      }

      if (v41)
      {
        v44 = v38 * 0.5;
        if ((v42 & 1) == 0)
        {
          v44 = v38;
        }

        v37 = v44;
      }

      else
      {
        if (v42)
        {
          v43 = v43 + v43;
        }

        v45 = v38 * 0.5;
        if ((v42 & 1) == 0)
        {
          v45 = v38;
        }

        v37 = v45;
        v38 = v38 / v43;
      }
    }

    v46 = !v41;
    if (v38 < 1.0)
    {
      v46 = 0;
    }

    v36 = v46 | v67;
    v47 = *(a1 + 88);
    if (v47 != 0.0)
    {
      v36 |= v47 + *(a1 + 104) < a5;
    }

    if (v38 > 1.0 && (v36 & 1) != 0)
    {
      if (((v42 & 0x20) == 0 || (*(a1 + 121) & 0x40) != 0 || *(a1 + 40)) && (C3DAnimationGetFillModeMask(Animation, v32) & 1) == 0)
      {
        v20 = 0;
        v33.i64[0] = 0;
        v36 = 1;
        goto LABEL_94;
      }

      *v33.i64 = v43;
      v38 = 1.0;
      if (v41)
      {
        *v33.i64 = 1.0;
      }
    }

    v48 = 0.0;
    v49 = -(TimeOffset / v25);
    if (v30 >= 0.0)
    {
      v49 = TimeOffset / v25;
    }

    *v34.i64 = v49 + *v33.i64;
    if (TimeOffset == 0.0)
    {
      v34.i64[0] = v33.i64[0];
    }

    else
    {
      v48 = v49;
    }

    if (*v34.i64 <= 1.0)
    {
      v33.i64[0] = v34.i64[0];
      if (*v34.i64 < 0.0)
      {
        *v33.i64 = *v34.i64 - trunc(*v34.i64);
        v51.f64[0] = NAN;
        v51.f64[1] = NAN;
        *v33.i64 = *vbslq_s8(vnegq_f64(v51), v33, v34).i64 + 1.0;
      }
    }

    else
    {
      *v33.i64 = *v34.i64 - trunc(*v34.i64);
      v50.f64[0] = NAN;
      v50.f64[1] = NAN;
      v33.i64[0] = vbslq_s8(vnegq_f64(v50), v33, v34).u64[0];
    }

    if (*(Animation + 84))
    {
      v52 = v38 < 1.0 || v41;
      if (v52)
      {
        if (*v34.i64 >= 0.0)
        {
          v53 = *v34.i64;
        }

        else
        {
          v53 = 1.0 - *v34.i64;
        }
      }

      else
      {
        v54 = v48 + v43;
        if (v54 <= 0.0)
        {
          v53 = 1.0 - v54;
        }

        else
        {
          v53 = v54;
        }
      }

      v55 = v53;
      if (v30 < 0.0)
      {
        if (v55)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (v55)
      {
LABEL_82:
        HIBYTE(v67) ^= 1u;
        *v33.i64 = 1.0 - *v33.i64;
      }
    }

LABEL_83:
    if (v30 >= 0.0)
    {
      v56 = *v33.i64;
    }

    else
    {
      v56 = 1.0 - *v33.i64;
    }

    TimingFunction = C3DAnimationGetTimingFunction(Animation, v32);
    if (TimingFunction)
    {
      if (v56 >= 0.0 && v56 <= 1.0)
      {
        C3DTimingFunctionSolve(TimingFunction, v58, v56, Duration);
        v56 = v60;
      }
    }

    *v33.i64 = v25 * v56;
    goto LABEL_93;
  }

LABEL_101:
  if (a2)
  {
    *a2 = (*(a1 + 121) & 0x200) != 0;
  }

  if (a3)
  {
    *a3 = *(a1 + 122) & 1;
  }

  if (a4)
  {
    *a4 = (*(a1 + 121) & 0x80) != 0;
  }

  return *(a1 + 68);
}

float C3DAnimationNodeGetWeightAtTime(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    WeightAtTime = C3DAnimationNodeGetWeightAtTime(v12, a2, a3);
  }

  else
  {
    WeightAtTime = 1.0;
  }

  Animation = C3DAnimationNodeGetAnimation(a1, a2);
  v16 = Animation;
  v17 = WeightAtTime * (Animation[26] * *(a1 + 48));
  if (Animation[27] != 0.0 || Animation[28] != 0.0)
  {
    v18 = *(a1 + 64);
    if (v18 < 0.0)
    {
      v18 = 0.0;
    }

    v19 = fminf(v18, 1.0);
    v20 = Animation[19];
    if (v20 == INFINITY || v20 == 3.4028e38)
    {
      Duration = C3DAnimationGetDuration(Animation, v15);
    }

    else
    {
      Duration = C3DAnimationGetTotalDuration(Animation, v15);
    }

    v23 = v16[27];
    v24 = v19 * Duration;
    if (v23 != 0.0 && v24 < v23)
    {
      v17 = v17 * (v24 / v23);
    }

    v26 = v16[28];
    if (v26 != 0.0)
    {
      v27 = v16[19];
      v28 = v27 == INFINITY || v27 == 3.4028e38;
      if (!v28 && (v16[21] & 0x50) != 0x40)
      {
        v29 = (1.0 - v19) * Duration;
        if (v29 >= 0.0 && v29 < v26)
        {
          v17 = v17 * (v29 / v26);
        }
      }
    }
  }

  v31 = *(a1 + 104);
  if (v31 != 0.0)
  {
    v32 = 1.0 - (a3 - *(a1 + 96)) / v31;
    if (v32 <= 0.0)
    {
      v32 = 0.0;
    }

    v33 = v32;
    v17 = v17 * v33;
    if (v33 == 0.0)
    {
      v34 = *(a1 + 121);
      if ((v34 & 8) != 0)
      {
        *(a1 + 121) = v34 & 0xFFFFFFD3 | 4;
      }
    }
  }

  return v17;
}

uint64_t C3DAnimationNodeGetRemovedOnCompletion(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = C3DAnimationGetRemoveOnCompletion(*(a1 + 16), a2);
  if (result)
  {
    Parent = C3DAnimationNodeGetParent(a1, v11);
    if (Parent)
    {
      return C3DAnimationNodeGetRemovedOnCompletion(Parent, v13);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void C3DAnimationNodeChangeSpeed(uint64_t a1, float a2, uint64_t a3)
{
  v4 = *(a1 + 52);
  if (v4 != a2)
  {
    if (*(a1 + 121))
    {
      v6 = *(a1 + 16);
      v7 = *(v6 + 80);
      v8 = v4 * v7;
      if (C3DAnimationGetIsSceneTimeBased(v6, a3))
      {
        v9 = *(a1 + 60);
      }

      else
      {
        C3DTransactionGetAtomicTime();
      }

      v10 = v7 * a2;
      if (v8 == 0.0)
      {
        v11 = (*(a1 + 64) * *(a1 + 76));
      }

      else
      {
        v11 = (v9 - *(a1 + 80)) * v8;
      }

      if (v10 != 0.0)
      {
        *(a1 + 80) = -(v11 / v10 - v9);
      }
    }

    *(a1 + 52) = a2;
  }
}

CFTypeRef C3DAnimationNodeSetTarget(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t C3DAnimationNodeGetPaused(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 123) >> 5) & 1;
}

void C3DAnimationNodeSetPaused(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  *(result + 121) = *(result + 121) & 0xFFDFFFFF | v12;
}

void C3DAnimationNodeSetPausedByScene(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0x400000;
  }

  else
  {
    v12 = 0;
  }

  *(result + 121) = *(result + 121) & 0xFFBFFFFF | v12;
}

double C3DAnimationNodeGetPauseTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

void C3DAnimationNodeSetPauseTime(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 128) = a3;
}

uint64_t C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager(_BOOL8 a1, const void *a2, void *a3, const void *a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeCreateWithAnimationGroupAndAddToAnimationManager_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  IsSceneTimeBased = C3DAnimationGetIsSceneTimeBased(a2, a2);
  SubAnimationNodes = _createSubAnimationNodes(v7, a2, a3, IsSceneTimeBased);
  C3DAnimationNodeSetKey(SubAnimationNodes, a4);
  return SubAnimationNodes;
}

uint64_t _createSubAnimationNodes(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  v8 = C3DAnimationNodeCreateWithAnimation(a2);
  AnimationCount = C3DAnimationGroupGetAnimationCount(a2, v9);
  if (AnimationCount >= 1)
  {
    v11 = AnimationCount;
    for (i = 0; v11 != i; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a2, i);
      if (C3DAnimationIsGroup(AnimationAtIndex))
      {
        SubAnimationNodes = _createSubAnimationNodes(a1, AnimationAtIndex, a3, a4);
        if (SubAnimationNodes)
        {
          v15 = SubAnimationNodes;
          C3DAnimationNodeAddChild(v8, SubAnimationNodes);
LABEL_10:
          CFRelease(v15);
        }
      }

      else
      {
        v16 = C3DAnimationCopyTarget(AnimationAtIndex, a3);
        v15 = v16;
        if (AnimationAtIndex)
        {
          v17 = C3DAnimationNodeCreateWithAnimation(AnimationAtIndex);
          C3DAnimationSetIsSceneTimeBased(AnimationAtIndex, a4);
          C3DAnimationNodeAddChild(v8, v17);
          CFRelease(v17);
          if (v15)
          {
            _C3DAnimationManagerAddAnimationNode(a1, v17, v15);
            goto LABEL_10;
          }
        }

        else if (v16)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v8;
}

uint64_t C3DAnimationNodeCreateWithAnimationCluster(_BOOL8 a1, const void *a2, uint64_t a3, const void *a4)
{
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationNodeCreateWithAnimationCluster_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = C3DAnimationClusterNodeCreateWithAnimation(a2);
  C3DAnimationNodeSetKey(v21, a4);
  return v21;
}

uint64_t C3DAnimationClusterNodeCreateWithAnimation(const void *a1)
{
  if (C3DAnimationClusterNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterNodeCreateWithAnimation_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationClusterNodeGetTypeID_typeID, 216);
  _C3DAnimationNodeInitializeWithAnimation(Instance, a1);
  return Instance;
}

uint64_t C3DAnimationNodeCreateWithAnimationAndAddToAnimationManager(_BOOL8 a1, const void *a2, const void *a3, const void *a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = C3DAnimationNodeCreateWithAnimation(a2);
  C3DAnimationNodeSetKey(v30, a4);
  _C3DAnimationManagerAddAnimationNode(v7, v30, a3);
  return v30;
}

uint64_t C3DAnimationClusterNodeGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DAnimationClusterNodeGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterNodeCreateWithAnimation_cold_1();
  }

  return C3DAnimationClusterNodeGetTypeID_typeID;
}

double __C3DAnimationClusterNodeGetTypeID_block_invoke()
{
  C3DAnimationClusterNodeGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationClusterNodeContextClassAnimatable;
  xmmword_28173FDB0 = kC3DC3DAnimationClusterNodeContextClassAnimatable;
  return result;
}

void _C3DAnimationNodeCFFinalize(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        *(CFArrayGetValueAtIndex(*(a1 + 32), i) + 5) = 0;
      }
    }

    CFRelease(*(a1 + 32));
  }

  if (*(a1 + 200))
  {
    v7 = *(a1 + 216);
    if (!v7 || (v3 = v7(a1, a2), *(a1 + 200)))
    {
      v8 = scn_default_log(v3, a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationNodeCFFinalize_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      v16 = *(a1 + 200);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 200) = 0;
      }
    }
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 16) = 0;
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 136) = 0;
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 24) = 0;
  }

  v20 = *(a1 + 112);
  if (v20)
  {
    v21 = v20[1];
    if (v21)
    {
      CFRelease(v21);
      v20[1] = 0;
    }

    v22 = v20[3];
    if (v22)
    {
      CFRelease(v22);
      v20[3] = 0;
    }

    v23 = v20[2];
    if (v23)
    {
      CFRelease(v23);
    }

    free(v20);
  }

  v24 = *(a1 + 176);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 176) = 0;
  }
}

const void *_C3DAnimationNodeCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DAnimationNodeGetAnimation(a1, a2);
  if (result)
  {

    return C3DCopyPropertyList(result, a2, a3, a4);
  }

  return result;
}

void _C3DAnimationNodeSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    C3DAnimationNodeChangeSpeed(a1, *__src, __dst);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

void _C3DAnimationClusterNodeCFFinalize(uint64_t a1, uint64_t a2)
{
  _C3DAnimationNodeCFFinalize(a1, a2);
  v3 = *(a1 + 224);

  free(v3);
}

void _C3DAnimationClusterNodeSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 52) == __dst)
  {
    C3DAnimationNodeChangeSpeed(a1, *__src, __dst);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

id C3DFXContextGetCIContext(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 264);
  if (!result)
  {
    RenderContext = C3DEngineContextGetRenderContext(a2, a2);
    if (RenderContext)
    {
      v7 = [MEMORY[0x277CBF740] contextWithMTLDevice:-[SCNMTLRenderContext device](RenderContext)];
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(a2, v6);
      v7 = [MEMORY[0x277CBF740] contextWithEAGLContext:{C3DRendererContextGetGLContext(RendererContextGL, v9)}];
    }

    result = v7;
    *(a1 + 264) = result;
  }

  return result;
}

uint64_t _getCIFilterParameterType(void *a1, CFStringRef theString, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = C3DCreatePathComponentsFromString(theString);
  if ([a1 count] && -[__CFString count](v7, "count"))
  {
    if ([(__CFString *)v7 count]== 2)
    {
      [(__CFString *)v7 objectAtIndex:0];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [a1 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(a1);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          if (objc_msgSend_isEqualToString_([v12 name]))
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [a1 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v12 = 0;
      }

      v13 = v7;
      v14 = 1;
    }

    else
    {
      v12 = [a1 objectAtIndex:0];
      v13 = v7;
      v14 = 0;
    }

    v16 = [(__CFString *)v13 objectAtIndex:v14];
    v17 = v16;
    if (v16)
    {
      v18 = CFRetain(v16);
    }

    else
    {
      v18 = 0;
    }

    *a4 = v18;
    if (v12)
    {
      v19 = CFRetain(v12);
    }

    else
    {
      v19 = 0;
    }

    *a3 = v19;
    CFRelease(v7);
    result = [v12 attributes];
    if (result)
    {
      result = [objc_msgSend(v12 "attributes")];
      if (result)
      {
        v20 = result;
        v21 = [result objectForKey:*MEMORY[0x277CBF7F0]];
        if (v21)
        {
          v22 = v21;
          if (objc_msgSend_isEqualToString_(v21) & 1) != 0 || (objc_msgSend_isEqualToString_(v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v22))
          {
            return 6;
          }

          if (objc_msgSend_isEqualToString_(v22))
          {
            return 3;
          }

          if (objc_msgSend_isEqualToString_(v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v22))
          {
            return 2;
          }

          if (objc_msgSend_isEqualToString_(v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v22))
          {
            return 8;
          }

          if (objc_msgSend_isEqualToString_(v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v22))
          {
            return 9;
          }

          v23 = objc_msgSend_isEqualToString_(v22) == 0;
          v24 = 10;
        }

        else
        {
          v23 = objc_msgSend_isEqualToString_([v20 objectForKey:*MEMORY[0x277CBF790]]) == 0;
          v24 = 6;
        }

        if (v23)
        {
          return 0;
        }

        else
        {
          return v24;
        }
      }
    }
  }

  else
  {
    CFRelease(v7);
    return 0;
  }

  return result;
}

float32_t _getCIFilterParameterValue(void *a1, uint64_t a2, float32x4_t *a3, int a4)
{
  v6 = [a1 valueForKey:a2];
  v8 = v6;
  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        [v6 X];
        v35 = v16;
        [v8 Y];
        v17.f64[0] = v35;
        *&v17.f64[1] = v9.i64[0];
        *v9.f32 = vcvt_f32_f64(v17);
        goto LABEL_12;
      case 9:
        [v6 X];
        v36 = v26;
        [v8 Y];
        v27.f64[0] = v36;
        v27.f64[1] = v28;
        *v29.f32 = vcvt_f32_f64(v27);
        v37 = v29;
        [v8 Z];
        v9.f32[0] = *v9.i64;
        v30 = v37;
        v30.i32[2] = v9.i32[0];
        *a3 = v30;
        return v9.f32[0];
      case 10:
        [v6 X];
        v34 = v10;
        [v8 Y];
        v33 = v11;
        [v8 Z];
        v32 = v12;
        [v8 W];
        v13.f64[0] = v32;
        v13.f64[1] = v14;
        v15.f64[0] = v34;
        v15.f64[1] = v33;
        v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v15), v13);
        *a3 = v9;
        return v9.f32[0];
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        a3->i32[0] = [v6 intValue];
        return v9.f32[0];
      case 3:
        a3->i8[0] = [v6 BOOLValue];
        return v9.f32[0];
      case 6:
        [v6 doubleValue];
LABEL_12:
        a3->i64[0] = v9.i64[0];
        return v9.f32[0];
    }
  }

  v18 = scn_default_log(v6, v7);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    _getCIFilterParameterValue_cold_1(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return v9.f32[0];
}

void _setCIFilterParameterValue(void *a1, uint64_t a2, float32x2_t *a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        v18 = vcvtq_f64_f32(*a3);
        v8 = MEMORY[0x277CBF788];
        v9 = 2;
        break;
      case 9:
        v18 = vcvtq_f64_f32(*a3);
        v19.f64[0] = a3[1].f32[0];
        v8 = MEMORY[0x277CBF788];
        v9 = 3;
        break;
      case 10:
        v7 = vcvtq_f64_f32(a3[1]);
        v18 = vcvtq_f64_f32(*a3);
        v19 = v7;
        v8 = MEMORY[0x277CBF788];
        v9 = 4;
        break;
      default:
        goto LABEL_12;
    }

    [a1 setValue:objc_msgSend(v8 forKey:{"vectorWithValues:count:", &v18, v9, *&v18, *&v19), a2}];
    return;
  }

  switch(a4)
  {
    case 2:
      v6 = [MEMORY[0x277CCABB0] numberWithInt:a3->u32[0]];
      goto LABEL_15;
    case 3:
      v6 = [MEMORY[0x277CCABB0] numberWithBool:a3->u8[0]];
      goto LABEL_15;
    case 6:
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
LABEL_15:

      [a1 setValue:v6 forKey:a2];
      return;
  }

LABEL_12:
  v10 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _getCIFilterParameterValue_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t C3DFXTechniqueCreateCIFilter(uint64_t a1, uint64_t a2)
{
  IsClusteredShadingEnabled = C3DEngineContextIsClusteredShadingEnabled(a2);
  v4 = [@"SceneKit-CI-nodetree-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v5 = [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v6 = [@"SceneKit-CI-effect-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __C3DFXTechniqueCreateCIFilter_block_invoke;
  v15[3] = &unk_2782FCA00;
  v15[7] = v5;
  v15[8] = a1;
  v15[4] = &unk_282E0FB58;
  v15[5] = v4;
  v15[6] = v6;
  if (IsClusteredShadingEnabled)
  {
    v7 = @"C3DFXCIFilterPassMetal.json";
  }

  else
  {
    v7 = @"C3DFXCIFilterPass.json";
  }

  v8 = C3DJsonNamed(v7, v15);
  v9 = C3DFXTechniqueCreateWithDescription(v8, a1);
  PassNamed = C3DFXTechniqueGetPassNamed(v9, v5);
  C3DFXPassSetWillExecuteCallback(PassNamed, _willRenderNodeForCIFilter);
  v11 = C3DFXTechniqueGetPassNamed(v9, [@"SceneKit_ApplyCIFilter" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}]);
  v12 = v11;
  if (IsClusteredShadingEnabled)
  {
    C3DFXPassSetDrawInstruction(v11, 7);
  }

  C3DFloorSetReflectionCategoryBitMask(v12, _applyCIFilter);
  v13 = C3DFXTechniqueGetPassNamed(v9, [@"SceneKit_renderCIQuad" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1), "stringValue")}]);
  C3DFXPassSetInitializeCallback(v13, _initializeRenderFilteredBuffer);
  C3DFXPassSetWillExecuteCallback(v13, _willRenderFilteredBuffer);
  C3DFloorSetReflectionCategoryBitMask(v13, _blendFilteredBuffer);
  return v9;
}

uint64_t __C3DFXTechniqueCreateCIFilter_block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        a2 = [a2 stringByReplacingOccurrencesOfString:*(*(&v10 + 1) + 8 * i) withString:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "stringByAppendingString:", objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", a1[8]), "stringValue"))}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [objc_msgSend(objc_msgSend(a2 stringByReplacingOccurrencesOfString:@"SceneKit-CI-nodetree-color" withString:{a1[5]), "stringByReplacingOccurrencesOfString:withString:", @"SceneKit-CI-effect-color", a1[6]), "stringByReplacingOccurrencesOfString:withString:", @"SceneKit_renderCINodeTree", a1[7]}];
}

void _willRenderNodeForCIFilter(uint64_t a1, uint64_t a2)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 24), a2);
  if (RendererContextGL)
  {
    v3 = 0uLL;
    C3DRendererContextClear(RendererContextGL, 0x4500u, &v3);
  }
}

void _applyCIFilter(uint64_t a1, uint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  RenderContext = C3DEngineContextGetRenderContext(v3, a2);
  Stats = C3DEngineContextGetStats(v3, v5);
  v7 = CACurrentMediaTime();
  FXContext = C3DEngineContextGetFXContext(*(a1 + 24), v8);
  Viewport = C3DEngineContextGetViewport(*(a1 + 24));
  v10 = *(a1 + 16);
  v118 = FXContext;
  v119 = RenderContext;
  RendererContextGL = C3DEngineContextGetRendererContextGL(v3, v11);
  if (RenderContext)
  {
LABEL_2:
    CIImage = 0;
    goto LABEL_3;
  }

  FramebufferRegistry = C3DFXContextGetFramebufferRegistry(FXContext, v12);
  RenderTargetWithName = C3DFramebufferRegistryGetRenderTargetWithName(FramebufferRegistry, [@"SceneKit-CI-nodetree-color-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10), "stringValue")}]);
  if (!RenderTargetWithName)
  {
    v107 = scn_default_log(0, v49);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      _applyCIFilter_cold_3(v107, v12, v108, v109, v110, v111, v112, v113);
    }

    goto LABEL_2;
  }

  v50 = RenderTargetWithName;
  CIImage = C3DRenderTargetGetCIImage(RenderTargetWithName);
  if (!CIImage)
  {
    Texture = C3DRenderTargetGetTexture(v50, v12);
    if (!Texture)
    {
      v53 = scn_default_log(0, v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        _applyCIFilter_cold_1(v53);
      }
    }

    glFlush();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    Size = C3DTextureGetSize(Texture, v55);
    v57 = objc_alloc(MEMORY[0x277CBF758]);
    CIImage = [v57 initWithTexture:C3DTextureGetID(Texture size:v58) flipped:0 colorSpace:{DeviceRGB, vcvtq_f64_f32(*&Size)}];
    CGColorSpaceRelease(DeviceRGB);
    if (!CIImage)
    {
      v61 = scn_default_log(v59, v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        _applyCIFilter_cold_2(v61);
      }
    }

    C3DRenderTargetSetCIImage(v50, CIImage);
  }

LABEL_3:
  v14 = *(a1 + 24);
  v15 = C3DEngineContextGetFXContext(v14, v12);
  v122 = C3DEngineContextGetViewport(v14);
  CurrentPassInstanceAncestor = C3DFXContextGetCurrentPassInstanceAncestor(v15, v16);
  v19 = CurrentPassInstanceAncestor;
  if (CurrentPassInstanceAncestor)
  {
    memset(v135, 0, sizeof(v135));
    WorldMatrix = C3DNodeGetWorldMatrix(v10, v18);
    C3DMatrix4x4Mult(WorldMatrix, v19 + 246, v135);
    v133 = 0u;
    v134 = 0u;
    C3DNodeComputeHierarchicalBoundingBox(v10, 1, &v133);
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = vaddq_f32(v133, v134).u32[0];
    LODWORD(v24) = v23;
    *(&v24 + 1) = v133.f32[1] + v134.f32[1];
    *&buf[8] = v133.f32[2] + v134.f32[2];
    *buf = v24;
    v139 = v133.f32[2] - v134.f32[2];
    v138 = v24;
    *(&v23 + 1) = v133.f32[1] - v134.f32[1];
    v141 = v133.f32[2] + v134.f32[2];
    v140 = v23;
    v143 = v133.f32[2] - v134.f32[2];
    v142 = v23;
    LODWORD(v25) = vsubq_f32(v133, v134).u32[0];
    LODWORD(v26) = v25;
    *(&v26 + 1) = v133.f32[1] + v134.f32[1];
    v145 = v133.f32[2] + v134.f32[2];
    v144 = v26;
    v147 = v133.f32[2] - v134.f32[2];
    v146 = v26;
    *(&v25 + 1) = v133.f32[1] - v134.f32[1];
    v149 = v133.f32[2] + v134.f32[2];
    v148 = v25;
    v151 = v133.f32[2] - v134.f32[2];
    v150 = v25;
    v126 = xmmword_21C280320;
    v27 = 1.0;
    v124 = xmmword_21C27FDD0;
    while (2)
    {
      v28 = 16 * v21++;
      while (1)
      {
        v29 = *&buf[v28];
        v29.f32[3] = v27;
        *v30.i64 = C3DVector4MultMatrix4x4(v135, v29);
        LODWORD(v32) = v30.i32[3];
        if (v30.f32[3] <= 0.0)
        {
          break;
        }

        v27 = 1.0;
        v31.f32[0] = (1.0 / v30.f32[3]) * v30.f32[0];
        v30.f32[0] = vmuls_lane_f32(1.0 / v30.f32[3], *v30.f32, 1);
        v33 = v126;
        v33.i32[0] = v31.i32[0];
        v34 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v126, v31), 0), v33, v126);
        v35 = v34;
        v35.i32[1] = v30.i32[0];
        v36 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v34.i8, 1), v30), 0), v35, v34);
        v37 = v36;
        v37.i32[2] = v31.i32[0];
        v38 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v31, vdupq_laneq_s32(v36, 2)), 0), v37, v36);
        v39 = v38;
        v39.i32[3] = v30.i32[0];
        v126 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v30, vdupq_laneq_s32(v38, 3)), 0), v39, v38);
        ++v21;
        v28 += 16;
        if (v21 == 9)
        {
          v40.i64[0] = 0x3F0000003F000000;
          v40.i64[1] = 0x3F0000003F000000;
          v41 = vmlaq_f32(v40, v40, v126);
          v32 = 0.0;
          if (v22)
          {
            v42 = -1;
          }

          else
          {
            v42 = 0;
          }

          v30 = vbslq_s8(vdupq_n_s32(v42), xmmword_21C27FDD0, v41);
          v124 = v30;
          goto LABEL_15;
        }
      }

      v22 = 1;
      v27 = 1.0;
      if (v21 != 8)
      {
        continue;
      }

      break;
    }

LABEL_15:
    CurrentPassInstanceAncestor = C3DFXContextGetFirstPassInstanceWithName(v15, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10, *v30.i64, v32), "stringValue")}]);
    v43 = vmulq_f32(vdupq_laneq_s64(v122, 1), v124);
    if (CurrentPassInstanceAncestor)
    {
      v44 = *(CurrentPassInstanceAncestor + 5120);
      if ((vminvq_u32(vceqzq_f32(v44)) & 0x80000000) == 0)
      {
        v45 = vcgtq_f32(v43, v44);
        v46.i64[0] = *(CurrentPassInstanceAncestor + 5120);
        v46.i64[1] = v43.i64[1];
        v43.i64[1] = *(CurrentPassInstanceAncestor + 5128);
        v43 = vbslq_s8(v45, v46, v43);
      }
    }
  }

  else
  {
    v43 = 0uLL;
  }

  v62 = v43.f32[2];
  if (v43.f32[2] <= v43.f32[0] || (v63 = v43.f32[3], v64 = v43.f32[1], v43.f32[3] <= v43.f32[1]))
  {
    v105 = scn_default_log(CurrentPassInstanceAncestor, v18);
    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v106 = "Warning: CIFilter should have been clipped by the culling";
LABEL_61:
    _os_log_impl(&dword_21BEF7000, v105, OS_LOG_TYPE_DEFAULT, v106, buf, 2u);
    goto LABEL_62;
  }

  v127 = v43.f32[0];
  if (v43.f32[3] < Viewport.n128_f32[0] || v43.f32[3] < Viewport.n128_f32[1] || (v65 = Viewport.n128_f32[2], v43.f32[0] >= Viewport.n128_f32[2]) || (v66 = Viewport.n128_f32[3], v43.f32[1] >= Viewport.n128_f32[3]))
  {
    v105 = scn_default_log(CurrentPassInstanceAncestor, v18);
    if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v106 = "Warning: CIFilter should have been clipped by the culling (2)";
    goto LABEL_61;
  }

  v67 = [MEMORY[0x277CBF750] filterWithName:{@"CICrop", *v43.i64}];
  [v67 setDefaults];
  v68 = (v63 - v64);
  if (RenderContext)
  {
    v64 = Viewport.n128_f32[3] - (v64 + v68);
  }

  [v67 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v127, v64, (v62 - v127), v68), @"inputRectangle"}];
  v69 = *MEMORY[0x277CBFAF0];
  [v67 setValue:CIImage forKey:*MEMORY[0x277CBFAF0]];
  v70 = *MEMORY[0x277CBFB50];
  v71 = [v67 valueForKey:*MEMORY[0x277CBFB50]];
  CIContext = C3DFXContextGetCIContext(v118, *(a1 + 24));
  Filters = C3DNodeGetFilters(v10, v72);
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v74 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v129 objects:v136 count:16];
  if (v74)
  {
    v75 = *v130;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v130 != v75)
        {
          objc_enumerationMutation(Filters);
        }

        v77 = *(*(&v129 + 1) + 8 * i);
        [v77 setValue:v71 forKey:v69];
        v71 = [v77 valueForKey:v70];
      }

      v74 = [(__CFDictionary *)Filters countByEnumeratingWithState:&v129 objects:v136 count:16];
    }

    while (v74);
  }

  [v71 extent];
  v80 = Viewport.n128_f32[3];
  *v82.i64 = *v81.i64 + v78;
  v83.i64[0] = v78 < 0.0;
  v83.i64[1] = v119 == 0;
  *&v82.i64[1] = v84;
  *&v81.i64[1] = Viewport.n128_f32[3] - (v84 + v79);
  v85 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v83, 0x3FuLL)), v82, v81);
  if (v78 >= 0.0)
  {
    v86 = v78;
  }

  else
  {
    v86 = 0.0;
  }

  v87 = v79 + *&v85.i64[1];
  *&v88.f64[1] = v85.i64[1];
  v88.f64[0] = Viewport.n128_f32[2];
  v89.i64[1] = 0;
  v90 = vcgtq_f64(COERCE_UNSIGNED_INT64(v86 + *v85.i64), v88);
  if ((vmovn_s64(v90).i32[1] & 1) == 0)
  {
    v87 = v79;
  }

  *v89.i64 = Viewport.n128_f32[2] - v86;
  v91 = vbslq_s8(v90, v89, v85);
  v125 = v91;
  v128 = v86;
  v92 = *&v91.i64[1];
  if (*&v91.i64[1] + v87 > v80)
  {
    v87 = v80 - *&v91.i64[1];
  }

  v123 = v87;
  FirstPassInstanceWithName = C3DFXContextGetFirstPassInstanceWithName(v118, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10), "stringValue")}]);
  v94.f64[0] = v128;
  v94.f64[1] = v123;
  v95 = vcvt_f32_f64(v94);
  *v96.f32 = vcvt_f32_f64(v125);
  *&v94.f64[0] = __PAIR64__(v95.u32[1], v96.u32[0]);
  v114 = *v96.f32;
  v115 = v95;
  v96.i32[0] = v95.i32[0];
  v96.i64[1] = *&v94.f64[0];
  v121 = v96;
  *(FirstPassInstanceWithName + 5120) = v96;
  v98 = C3DFXContextGetCurrentPassInstanceAncestor(v118, v97);
  v99 = v121;
  if (v98 && (vminvq_u32(vceqzq_f32(v121)) & 0x80000000) == 0)
  {
    v100 = *(v98 + 5120);
    v101 = vextq_s8(v100, v100, 8uLL).u64[0];
    v102 = vceqz_f32(v101);
    if (((v102.i32[0] | v102.i32[1]) & 1) == 0)
    {
      v103 = vadd_f32(v114, v115);
      v104 = vadd_f32(v101, *v100.i8);
      *v99.f32 = vbsl_s8(vcgt_f32(__PAIR64__(v114.u32[1], v115.u32[0]), *v100.i8), *v100.i8, __PAIR64__(v114.u32[1], v115.u32[0]));
      *&v99.u32[2] = vsub_f32(vbsl_s8(vcgt_f32(v103, v104), v103, v104), *v99.f32);
    }

    *(v98 + 5120) = v99;
  }

  if (!v119)
  {
    glViewport(0, 0, v65, v66);
    glEnable(0xC11u);
    glScissor(v128, v92, v125.f64[0], v123);
    memset(buf, 0, sizeof(buf));
    C3DRendererContextClear(RendererContextGL, 0x4000u, buf);
    glDisable(0xC11u);
    glDisable(0xB44u);
    [CIContext drawImage:v71 inRect:v128 fromRect:{v92, v125.f64[0], v123, v128, v92, v125.f64[0], v123}];
  }

LABEL_62:
  *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v7;
}

void _initializeRenderFilteredBuffer(uint64_t *a1, uint64_t a2)
{
  Program = C3DFXPassGetProgram(*a1, a2);

  C3DFXProgramSetOpaque(Program, 0);
}

void _willRenderFilteredBuffer(uint64_t *a1, uint64_t a2)
{
  FXContext = C3DEngineContextGetFXContext(a1[3], a2);
  CurrentPassInstance = C3DFXContextGetCurrentPassInstance(FXContext, v4);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  WorldMatrix = C3DNodeGetWorldMatrix(a1[2], v6);
  C3DMatrix4x4Mult(WorldMatrix, (CurrentPassInstance + 3168), &v38);
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  C3DVector3MultMatrix4x4(&v34, 0);
  v9 = fmax(*(CurrentPassInstance + 4832) / (*(CurrentPassInstance + 4832) - *(CurrentPassInstance + 4824)) - *(CurrentPassInstance + 4832) * *(CurrentPassInstance + 4824) / (*(CurrentPassInstance + 4824) - *(CurrentPassInstance + 4832)) / v8, 0.0);
  v33 = v9;
  v10 = a1[2];
  C3DFXTechniqueSetValueForSymbol(a1[1], [@"C3D-CIFilter_middleZ" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10), "stringValue")}], &v33);
  v29 = *(C3DFXContextGetFirstPassInstanceWithName(FXContext, [@"SceneKit_renderCINodeTree-" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10), "stringValue")}]) + 5120);
  v30 = *(CurrentPassInstance + 4720);
  RenderContext = C3DEngineContextGetRenderContext(a1[3], v11);
  v13.f64[0] = v29.f32[0];
  if (RenderContext)
  {
    __asm { FMOV            V4.2D, #0.5 }

    v19 = vmulq_f64(vcvt_hight_f64_f32(v30), _Q4);
    v13.f64[1] = v29.f32[1];
    __asm { FMOV            V1.2D, #-1.0 }

    v34 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(v13, v19), _Q1)), vdivq_f64(vcvt_hight_f64_f32(v29), v19));
    v21 = a1[1];
    v22 = [@"C3D-CIFilter_extent" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithLong:", v10), "stringValue")}];
    v23 = v21;
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *&v24 = vdiv_f32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL));
    __asm { FMOV            V3.2S, #1.0 }

    *(&v24 + 1) = _D3;
    v32 = v24;
    v26 = vcvt_hight_f64_f32(v30);
    v13.f64[1] = v29.f32[1];
    __asm { FMOV            V1.2D, #0.5 }

    v28 = vdivq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(v13, _Q1, vsubq_f64(vcvt_hight_f64_f32(v29), v26)))), vmulq_f64(v26, _Q1));
    *&v28.f64[0] = vcvt_f32_f64(v28);
    *_Q1.f64 = v33 * 2.0 + -1.0;
    LODWORD(v28.f64[1]) = LODWORD(_Q1.f64[0]);
    v31 = v28;
    C3DMatrix4x4MakeScale(&v34, &v32);
    C3DMatrix4x4Translate(&v34, &v31);
    v23 = a1[1];
    v22 = @"C3D-CIFilter_modelMatrix";
  }

  C3DFXTechniqueSetValueForSymbol(v23, v22, &v34);
}

void WireframeMesh::WireframeMesh(WireframeMesh *this, __C3DMesh *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  WireframeMesh::Prepare(this, a2);
}

void sub_21BF8E634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void WireframeMesh::Prepare(WireframeMesh *this, __C3DMesh *a2)
{
  PositionSource = C3DMeshGetPositionSource(a2, 1);
  v50 = a2;
  ElementsCount = C3DMeshGetElementsCount(a2, v4);
  if (ElementsCount >= 1)
  {
    v5 = 0;
    allocator = *MEMORY[0x277CBECE8];
    v48 = this;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(v50, v5, 1);
      Type = C3DMeshElementGetType(ElementAtIndex, v7);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
      if (Type > 5 || ((1 << Type) & 0x23) == 0 || PrimitiveCount == 0)
      {
        break;
      }

      v12 = PrimitiveCount;
      v13 = 3 * PrimitiveCount;
      v14 = 12 * PrimitiveCount;
      v62 = malloc_type_malloc(12 * PrimitiveCount, 0x100004052888210uLL);
      bytes = malloc_type_malloc(16 * v13, 0x100004052888210uLL);
      v65[0] = 0;
      Indexes = C3DMeshElementGetIndexes(ElementAtIndex, v65);
      v51 = v5;
      length = 16 * v13;
      v53 = v13;
      v54 = v14;
      if (v65[0] == 4)
      {
        Indexes = CFDataGetBytePtr(Indexes);
        v55 = Indexes;
        v56 = 0;
        v57 = 0;
      }

      else if (v65[0] == 2)
      {
        Indexes = CFDataGetBytePtr(Indexes);
        v56 = Indexes;
        v57 = 0;
        v55 = 0;
      }

      else
      {
        if (v65[0] == 1)
        {
          Indexes = CFDataGetBytePtr(Indexes);
          v57 = Indexes;
        }

        else
        {
          v57 = 0;
        }

        v55 = 0;
        v56 = 0;
      }

      if (v12 >= 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 6;
        v20 = 1;
        v21 = 2;
        v60 = v12;
        v59 = Type;
        do
        {
          if (Type == 5)
          {
            v22 = 0;
            v12 = (2 * (v18 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v23 = 2 * v18 + 2;
          }

          else if (Type == 1)
          {
            v24 = 2 * v18;
            if (v18)
            {
              v12 = v24 | 1;
              v23 = v24 + 2;
            }

            else
            {
              v12 = v24 | 2;
              v23 = v24 | 1;
            }

            v22 = v18;
          }

          else if (Type)
          {
            v22 = 0;
            v12 = 0;
            v23 = 0;
          }

          else
          {
            v22 = 3 * v18;
            v12 = v17 + 1;
            v23 = v17 + 2;
          }

          switch(v65[0])
          {
            case 4:
              v22 = *(v55 + v22);
              v12 = *(v55 + v12);
              v23 = *(v55 + v23);
              break;
            case 2:
              v22 = *(v56 + v22);
              v12 = *(v56 + v12);
              v23 = *(v56 + v23);
              break;
            case 1:
              v22 = *(v57 + v22);
              v12 = *(v57 + v12);
              v23 = *(v57 + v23);
              break;
          }

          v63 = v23;
          v64 = v20;
          v25 = 1 - 3 * (v20 / 3);
          *&bytes[4 * v19 - 24] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v22);
          *&bytes[4 * v19 - 16] = v26;
          *&bytes[4 * v19 - 12] = (v17 % 3);
          *&v62[4 * v17] = v17;
          *&bytes[4 * v19 - 8] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v12);
          *&bytes[4 * v19] = v27;
          *&bytes[4 * v19 + 4] = (v17 + v25);
          *&v62[4 * (v17 + 1)] = v17 + 1;
          *&bytes[4 * v19 + 8] = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v63);
          *&bytes[4 * v19 + 16] = v28;
          *&bytes[4 * v19 + 20] = (v17 + 2 - 3 * (v21 / 3));
          *&v62[4 * (v17 + 2)] = v17 + 2;
          ++v18;
          v19 += 12;
          v20 = v64 + 3;
          v21 += 3;
          v17 += 3;
          LODWORD(v12) = v60;
          Type = v59;
        }

        while (v60 != v18);
      }

      v29 = C3DMeshCreate(Indexes, v16);
      v30 = CFDataCreate(allocator, bytes, length);
      v31 = C3DMeshSourceCreate(v30, 0, v53, 4, 1);
      CFRelease(v30);
      C3DMeshAddSource(v29, v31, 0, 0);
      CFRelease(v31);
      v34 = C3DMeshElementCreate(v32, v33);
      C3DMeshElementSetType(v34, 0);
      v35 = CFDataCreate(allocator, v62, v54);
      C3DMeshElementSetPrimitives(v34, v12, v35, 4);
      CFRelease(v35);
      v37 = *(v48 + 1);
      v36 = *(v48 + 2);
      if (v37 >= v36)
      {
        v39 = (v37 - *v48) >> 4;
        v40 = v39 + 1;
        if ((v39 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v41 = v36 - *v48;
        if (v41 >> 3 > v40)
        {
          v40 = v41 >> 3;
        }

        v42 = v41 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v40;
        if (v42)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__C3DMesh *,__C3DMeshElement *>>>(v48, v42);
        }

        v43 = (16 * v39);
        *v43 = v29;
        v43[1] = v34;
        v38 = 16 * v39 + 16;
        v44 = *(v48 + 1) - *v48;
        v45 = (16 * v39 - v44);
        memcpy(v45, *v48, v44);
        v46 = *v48;
        *v48 = v45;
        *(v48 + 1) = v38;
        *(v48 + 2) = 0;
        if (v46)
        {
          operator delete(v46);
        }
      }

      else
      {
        *v37 = v29;
        v37[1] = v34;
        v38 = (v37 + 2);
      }

      *(v48 + 1) = v38;
      free(v62);
      free(bytes);
      v5 = v51 + 1;
    }

    while ((v51 + 1) != ElementsCount);
  }
}

void WireframeMesh::~WireframeMesh(WireframeMesh *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v4 = *(v2 + 8);
      CFRelease(*v2);
      CFRelease(v4);
      v2 += 16;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void sub_21BF8EBA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *WireframeMesh::Draw(WireframeMesh *this, __C3DEngineContext *a2, __C3DFXProgram *a3, const C3DMatrix4x4 *a4, float32x2_t *a5, uint64_t a6)
{
  *(this + 3) = a6;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2, a2);
  if (RendererContextGL)
  {
    v13 = RendererContextGL;
    glPushGroupMarkerEXT(0, "SceneKit - Draw wireframe");
    ResourceManager = C3DEngineContextGetResourceManager(a2, v14);
    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, a3, v13, 0);
    C3DRendererContextBindProgramObject(v13, ProgramResident);
    v19 = C3DBlendStatesDefaultOver(v17, v18);
    C3DRendererContextSetBlendStates(v13, v19);
    C3DRendererContextSetEnableReadsFromDepth(v13, 1);
    UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_modelViewProjectionTransform");
    C3DRendererContextSetMatrix4x4UniformAtLocation(v13, UniformLocationOfSymbolNamed, a4->components, 1);
    C3DRendererContextSetEnable(v13, 2, 1);
    C3DRendererContextSetEnable(v13, 1, 1);
    glEnable(0x8037u);
    glPolygonOffset(-2.0, -2.0);
    v21 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_color");
    C3DRendererContextSetColor4UniformAtLocation(v13, v21, a5, 1);
    v22 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(ProgramResident, @"u_transform");
    C3DRendererContextSetMatrix4x4UniformAtLocation(v13, v22, a4->components, 1);
    v23 = *this;
    v24 = *(this + 1);
    while (v23 != v24)
    {
      v25 = *v23;
      v26 = *(v23 + 8);
      v23 += 16;
      C3DRendererContextBindMesh(v13, ResourceManager, v25);
      C3DRendererContextBindMeshElement(v13, ResourceManager, v26);
      C3DRendererContextRenderResidentMeshElement(v13, v27);
    }

    C3DRendererContextUnbindProgramObject(v13);
    glDisable(0x8037u);
    glPopGroupMarkerEXT();
  }

  result = C3DEngineContextGetRenderContext(a2, v12);
  if (result)
  {
    v29 = result;
    v30 = [(SCNMTLRenderContext *)result pushDebugGroup:?];
    v32 = *this;
    v33 = *(this + 1);
    if (*this != v33)
    {
      do
      {
        v34 = *v32;
        v35 = v32[1];
        v32 += 2;
        v36 = *&a4->components[4];
        v37 = *&a4->components[8];
        v38 = *&a4->components[12];
        v41[0] = *a4->components;
        v41[1] = v36;
        v41[2] = v37;
        v41[3] = v38;
        v41[4] = *a5->f32;
        v39 = C3DBlendStatesDefaultOver(v30, v31);
        LOBYTE(v40) = 1;
        v30 = [(SCNMTLRenderContext *)v29 authoring_renderMesh:v34 meshElement:v35 withProgram:a3 uniforms:v41 uniformsLength:80 rasterizerStates:0 blendStates:v39 texture:0 depthBias:v40];
      }

      while (v32 != v33);
    }

    return [(SCNMTLRenderContext *)v29 popDebugGroup];
  }

  return result;
}

WireframeMesh *WireframeMeshRenderer::GetWireframeMesh(WireframeMeshRenderer *this, __C3DMesh *a2)
{
  v8 = a2;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = (this + 32);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == (this + 32) || v3[4] > a2)
  {
LABEL_9:
    operator new();
  }

  return v3[5];
}

uint64_t WireframeMeshRenderer::DrawInstances(WireframeMeshRenderer *this, __C3DEngineContext *a2, __C3DFXProgram *a3)
{
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    do
    {
      v8 = *v4++;
      WireframeMesh::Draw(*v8, a2, a3, (v8 + 32), (v8 + 16), *(this + 6));
      MEMORY[0x21CF07610](v8, 0x1020C406DF670C8);
    }

    while (v4 != v5);
    v4 = *this;
  }

  *(this + 1) = v4;
  ++*(this + 6);

  return WireframeMeshRenderer::Purge(this);
}

uint64_t WireframeMeshRenderer::Purge(uint64_t this)
{
  v1 = (this + 24);
  v2 = *(this + 24);
  v3 = (this + 32);
  if (v2 != (this + 32))
  {
    v4 = this;
    do
    {
      v5 = v2[5];
      if (*(v5 + 3) >= *(v4 + 48) - 100)
      {
        v7 = v2[1];
        if (v7)
        {
          do
          {
            v6 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v8 = *v6 == v2;
            v2 = v6;
          }

          while (!v8);
        }
      }

      else
      {
        v6 = std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(v1, v2);
        operator delete(v2);
        WireframeMesh::~WireframeMesh(v5);
        this = MEMORY[0x21CF07610]();
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void C3DWireframeAddInstance(WireframeMeshRenderer *a1, __C3DMesh *a2, C3DColor4 a3, _OWORD *a4)
{
  v4 = a4[1];
  *v6.components = *a4;
  *&v6.components[4] = v4;
  v5 = a4[3];
  *&v6.components[8] = a4[2];
  *&v6.components[12] = v5;
  WireframeMeshRenderer::AddInstance(a1, a2, a3, &v6);
}

void C3DWireframeDrawInstances(WireframeMeshRenderer *a1, __C3DEngineContext *a2, __C3DFXProgram *a3)
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2, a2);
  if (RendererContextGL)
  {
    v7 = RendererContextGL;
    C3DRendererContextResetToDefaultStates(RendererContextGL);
    WireframeMeshRenderer::DrawInstances(a1, a2, a3);
    C3DRendererContextResetToDefaultStates(v7);

    C3DRendererContextSetEnable(v7, 1, 1);
  }

  else
  {

    WireframeMeshRenderer::DrawInstances(a1, a2, a3);
  }
}

WireframeMeshRenderer *C3DWireframeRendererDestroy(WireframeMeshRenderer *result)
{
  if (result)
  {
    WireframeMeshRenderer::~WireframeMeshRenderer(result);

    JUMPOUT(0x21CF07610);
  }

  return result;
}

void WireframeMeshRenderer::~WireframeMeshRenderer(WireframeMeshRenderer *this)
{
  std::__tree<char>::destroy(this + 24, *(this + 4));
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__C3DMesh *,__C3DMeshElement *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void *std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__emplace_unique_key_args<__C3DMesh *,std::piecewise_construct_t const&,std::tuple<__C3DMesh * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t SCNPhysicsShapeDestroyShape(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 8);
  if (v2 == 21)
  {
    v7 = *(result + 80);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v2 != 22)
  {
    if (v2 == 31)
    {
      v3 = *(result + 28);
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = 96 * v3;
        do
        {
          v6 = v1[5] + v4;
          if (*(v6 + 88))
          {
            SCNPhysicsShapeDestroyShape(*(v6 + 64));
          }

          v4 += 96;
        }

        while (v5 != v4);
      }
    }

    goto LABEL_14;
  }

  v7 = *(*(result + 48) + 80);
  if (v7)
  {
LABEL_13:
    (*(*v7 + 8))(v7);
  }

LABEL_14:
  v8 = *(*v1 + 8);

  return v8(v1);
}

btC3DMultiMeshInterface *_createShapeForGeometry(__C3DGeometry *a1, NSDictionary *a2)
{
  v102 = *MEMORY[0x277D85DE8];
  v4 = CFGetTypeID(a1);
  TypeID = C3DParametricGeometryGetTypeID(v4, v5);
  if (v4 == TypeID)
  {
    TypeID = [(NSDictionary *)a2 objectForKey:@"SCNPhysicsShapeTypeKey"];
    if (!TypeID)
    {
      v82 = 0u;
      v83 = 0u;
      __s1 = 0;
      C3DParametricGeometryGetCallbacks(a1, v7, &__s1);
      if (!memcmp(&__s1, kC3DBoxCallBacks, 0x30uLL))
      {
        FloatValue = C3DParametricGeometryGetFloatValue(a1, 0);
        v74 = C3DParametricGeometryGetFloatValue(a1, 1);
        v13 = C3DParametricGeometryGetFloatValue(a1, 2);
        v12 = btAlignedAllocInternal(80, 16);
        v14 = v13;
        v15.f64[0] = FloatValue;
        v15.f64[1] = v74;
        *v85.var0.var0 = vmul_f32(vcvt_f32_f64(v15), 0x3F0000003F000000);
        v85.var0.var0[2] = v14 * 0.5;
        v85.var0.var0[3] = 0.0;
        btBoxShape::btBoxShape(v12, &v85);
        return v12;
      }

      if (!memcmp(&__s1, kC3DPyramidCallBacks, 0x30uLL))
      {
        v16 = C3DParametricGeometryGetFloatValue(a1, 0);
        v17 = C3DParametricGeometryGetFloatValue(a1, 1);
        v18 = C3DParametricGeometryGetFloatValue(a1, 2);
        v19 = v16;
        v85.var0.var0[0] = 0.0;
        v20 = v17;
        *&v18 = v18;
        v85.var0.var0[1] = v20;
        *&v85.var0.var0[2] = 0;
        v86 = v19 * -0.5;
        v87 = 0;
        v88 = *&v18 * -0.5;
        v89 = 0;
        v90 = v19 * -0.5;
        v91 = 0;
        v92 = *&v18 * 0.5;
        v93 = 0;
        v94 = v19 * 0.5;
        v95 = 0;
        v96 = *&v18 * -0.5;
        v97 = 0;
        v98 = v19 * 0.5;
        v99 = 0;
        v100 = *&v18 * 0.5;
        v101 = 0;
        v12 = btAlignedAllocInternal(192, 16);
        btConvexHullShape::btConvexHullShape(v12, v85.var0.var0, 5, 16, 0, 0);
        return v12;
      }

      if (!memcmp(&__s1, kC3DCylinderCallBacks, 0x30uLL))
      {
        v21 = C3DParametricGeometryGetFloatValue(a1, 4);
        v22 = C3DParametricGeometryGetFloatValue(a1, 1);
        v12 = btAlignedAllocInternal(80, 16);
        *&v23 = v21;
        v24 = v22;
        LODWORD(v85.var0.var0[0]) = v23;
        v85.var0.var0[1] = v24 * 0.5;
        *&v85.var0.var0[2] = v23;
        btCylinderShape::btCylinderShape(v12, &v85);
        return v12;
      }

      if (!memcmp(&__s1, kC3DConeCallBacks, 0x30uLL))
      {
        v27 = C3DParametricGeometryGetFloatValue(a1, 5);
        if (v27 != 0.0 && (_createShapeForGeometry(__C3DGeometry *,NSDictionary *)::done & 1) == 0)
        {
          _createShapeForGeometry(__C3DGeometry *,NSDictionary *)::done = 1;
          v28 = scn_default_log(v25, v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            _createShapeForGeometry();
          }
        }

        v29 = C3DParametricGeometryGetFloatValue(a1, 6);
        v30 = C3DParametricGeometryGetFloatValue(a1, 1);
        v12 = btAlignedAllocInternal(96, 16);
        v31 = v29;
        v32 = v30;
        btConeShape::btConeShape(v12, v31, v32);
        return v12;
      }

      if (!memcmp(&__s1, kC3DTubeCallBacks, 0x30uLL))
      {
        v33 = C3DParametricGeometryGetFloatValue(a1, 8);
        v34 = C3DParametricGeometryGetFloatValue(a1, 1);
        v12 = btAlignedAllocInternal(80, 16);
        *&v35 = v33;
        v36 = v34;
        LODWORD(v85.var0.var0[0]) = v35;
        v85.var0.var0[1] = v36 * 0.5;
        *&v85.var0.var0[2] = v35;
        btCylinderShape::btCylinderShape(v12, &v85);
        return v12;
      }

      if (!memcmp(&__s1, kC3DCapsuleCallBacks, 0x30uLL))
      {
        v37 = C3DParametricGeometryGetFloatValue(a1, 4);
        v38 = C3DParametricGeometryGetFloatValue(a1, 1);
        v12 = btAlignedAllocInternal(80, 16);
        v39 = v37;
        v40 = v38;
        btCapsuleShape::btCapsuleShape(v12, v39, v40 + (v39 * -2.0));
        return v12;
      }

      if (!memcmp(&__s1, kC3DTorusCallBacks, 0x30uLL))
      {
        v41 = C3DParametricGeometryGetFloatValue(a1, 9);
        v42 = C3DParametricGeometryGetFloatValue(a1, 10);
        v43 = 0;
        *&v42 = v42;
        v44 = v41;
        v69 = vdupq_lane_s32(*&v42, 0);
        v70 = v44;
        v45 = xmmword_21C280330;
        v46 = &v85;
        v68 = vdupq_n_s64(0x400921FB54442D18uLL);
        v47 = 0uLL;
        do
        {
          v72 = v47;
          v75 = v45;
          v48.i64[0] = 0x3E0000003E000000;
          v48.i64[1] = 0x3E0000003E000000;
          v49 = vmulq_f32(vcvtq_f32_u32(v45), v48);
          v50 = vcvtq_f64_f32(*v49.f32);
          v51 = vmulq_f64(vcvt_hight_f64_f32(v49), v68);
          v52 = vmulq_f64(v50, v68);
          v73 = vcvt_f32_f64(vaddq_f64(v51, v51));
          *&v51.f64[0] = vcvt_f32_f64(vaddq_f64(v52, v52));
          v71 = *v51.f64;
          v53 = __sincosf_stret(*(v51.f64 + 1));
          v55 = __sincosf_stret(v71);
          v54.i64[0] = __PAIR64__(LODWORD(v53.__sinval), LODWORD(v55.__sinval));
          v78 = v54;
          v56 = __sincosf_stret(v73.f32[0]);
          v57 = v78;
          v57.i32[2] = LODWORD(v56.__sinval);
          v79 = v57;
          v58 = __sincosf_stret(v73.f32[1]);
          v47 = v72;
          v59 = v79;
          v59.i32[3] = LODWORD(v58.__sinval);
          v60.i64[0] = __PAIR64__(LODWORD(v53.__cosval), LODWORD(v55.__cosval));
          v60.i64[1] = __PAIR64__(LODWORD(v58.__cosval), LODWORD(v56.__cosval));
          v61 = vmulq_n_f32(v59, v70);
          v62 = vmulq_n_f32(v60, v70);
          v63 = v72;
          vst4q_f32(v46->var0.var0, *(&v47 - 1));
          v46 += 4;
          *&v84[v43] = v69;
          v64.i64[0] = 0x400000004;
          v64.i64[1] = 0x400000004;
          v45 = vaddq_s32(v75, v64);
          v43 += 4;
        }

        while (v43 != 8);
        v12 = btAlignedAllocInternal(192, 16);
        btMultiSphereShape::btMultiSphereShape(v12, &v85, v84, 8);
        return v12;
      }

      if (!memcmp(&__s1, kC3DSphereCallBacks, 0x30uLL))
      {
        v65 = C3DParametricGeometryGetFloatValue(a1, 4);
        v12 = btAlignedAllocInternal(80, 16);
        btConvexInternalShape::btConvexInternalShape(v12);
        *v12 = &unk_282DCA7E8;
        *(v12 + 8) = 8;
        v66 = v65;
        *(v12 + 48) = v66;
        *(v12 + 64) = v66;
        return v12;
      }

      if (!memcmp(&__s1, kC3DPlaneCallBacks, 0x30uLL))
      {
        v80 = C3DParametricGeometryGetFloatValue(a1, 0);
        v76 = C3DParametricGeometryGetFloatValue(a1, 1);
        v12 = btAlignedAllocInternal(224, 16);
        v67.f64[0] = v80;
        v67.f64[1] = v76;
        v85 = *&vmul_f32(vcvt_f32_f64(v67), 0x3F0000003F000000);
        btBox2dShape::btBox2dShape(v12, &v85);
        return v12;
      }

      return 0;
    }
  }

  if (v4 == C3DFloorGetTypeID(TypeID, v7))
  {
    v9 = C3DGetScene(a1, v8);
    *&v85.var0.var0[1] = 0;
    v85.var0.var0[0] = 0.0;
    if (v9)
    {
      C3DSceneGetUpAxis(v9, &v85);
    }

    else
    {
      v85 = xmmword_21C27F8C0;
    }

    v12 = btAlignedAllocInternal(112, 16);
    *__s1.var0.var0 = *v85.var0.var0;
    *&__s1.var0.var0[2] = LODWORD(v85.var0.var0[2]);
    btStaticPlaneShape::btStaticPlaneShape(v12, &__s1, 0.0);
    return v12;
  }

  Mesh = C3DGeometryGetMesh(a1, v8);
  if (!Mesh)
  {
    return 0;
  }

  return _createShapeForEntity(Mesh, a2);
}

btCompoundShape *_createShapeForNode(__C3DMesh *a1, NSDictionary *a2)
{
  v4 = [(NSDictionary *)a2 valueForKey:@"SCNPhysicsShapeKeepAsCompoundKey"];
  if (v4 && ![v4 BOOLValue])
  {
    return _createShapeForEntity(a1, a2);
  }

  v17.columns[0].i64[0] = 0;
  v17.columns[0].i64[1] = &v17;
  v17.columns[1].i64[0] = 0x2020000000;
  v17.columns[1].i32[2] = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke;
  v18[3] = &unk_2782FCA90;
  v18[4] = &v17;
  C3DNodeApplyHierarchy(a1, v18);
  v5 = *(v17.columns[0].i64[1] + 24);
  _Block_object_dispose(&v17, 8);
  if (v5 < 2)
  {
    return _createShapeForEntity(a1, a2);
  }

  v6 = btAlignedAllocInternal(128, 16);
  btCompoundShape::btCompoundShape(v6, 1);
  WorldMatrix = C3DNodeGetWorldMatrix(a1, v7);
  C3DMatrix4x4Invert(WorldMatrix, &v17);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke_2;
  v13[3] = &unk_2782FCAB8;
  v14 = v17;
  v15 = a2;
  v16 = v6;
  C3DNodeApplyHierarchy(a1, v13);
  if (*(v6 + 7))
  {
    btCompoundShape::createAabbTreeFromChildren(v6);
  }

  else
  {
    v10 = (*(*v6 + 8))(v6);
    v12 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _createShapeForNode();
    }

    return 0;
  }

  return v6;
}

btCompoundShape *_createShapeForArrayOfShapes(NSArray *a1, NSArray *a2)
{
  v4 = btAlignedAllocInternal(128, 16);
  btCompoundShape::btCompoundShape(v4, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___Z28_createShapeForArrayOfShapesP7NSArrayS0__block_invoke;
  v9[3] = &unk_2782FCA68;
  v9[4] = a2;
  v9[5] = v4;
  [(NSArray *)a1 enumerateObjectsUsingBlock:v9];
  if (*(v4 + 7))
  {
    btCompoundShape::createAabbTreeFromChildren(v4);
  }

  else
  {
    v5 = (*(*v4 + 8))(v4);
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _createShapeForNode();
    }

    return 0;
  }

  return v4;
}

BOOL __fillMeshElementInfo(uint64_t a1, const UInt8 **a2, _DWORD *a3, int *a4, int *a5)
{
  Type = C3DMeshElementGetType(a1, a2);
  if (Type)
  {
    v12 = scn_default_log(Type, v11);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *v23 = 0;
    _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_INFO, "Info: Non triangle list element type not yet supported in physics shape generation", v23, 2u);
    return 0;
  }

  v24 = 0;
  Indexes = C3DMeshElementGetIndexes(a1, &v24);
  if (Indexes)
  {
    v16 = Indexes;
    IndexCount = C3DMeshElementGetIndexCount(a1, v15);
    BytePtr = CFDataGetBytePtr(v16);
    *a2 = BytePtr;
    v20 = v24;
    *a3 = 3 * v24;
    *a4 = IndexCount / 3;
    switch(v20)
    {
      case 1:
        v21 = 5;
        goto LABEL_11;
      case 4:
        v21 = 2;
        goto LABEL_11;
      case 2:
        v21 = 3;
LABEL_11:
        *a5 = v21;
        return 1;
    }

    v22 = scn_default_log(BytePtr, v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __fillMeshElementInfo(v22);
    }
  }

  return 0;
}

uint64_t _createMeshInterfaceForMesh(__C3DMesh *a1)
{
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 1);
  if (!SourceWithSemanticAtIndex)
  {
    return 0;
  }

  v10 = SourceWithSemanticAtIndex;
  Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex, v3, v4, v5, v6, v7, v8, v9);
  Library = C3DSceneSourceGetLibrary(Accessor);
  Count = C3DMeshSourceGetCount(v10, v13);
  Data = C3DMeshSourceGetData();
  BytePtr = CFDataGetBytePtr(Data);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
  if (ComponentsValueType != 1)
  {
    if (ComponentsValueType == 6)
    {
      v18 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  v18 = 0;
LABEL_7:
  v19 = btAlignedAllocInternal(112, 16);
  *(v19 + 16) = xmmword_21C280340;
  *v19 = &unk_282DCA948;
  *(v19 + 56) = 1;
  *(v19 + 48) = 0;
  *(v19 + 36) = 0;
  *(v19 + 40) = 0;
  *(v19 + 72) = 0;
  ElementsCount = C3DMeshGetElementsCount(a1, v20);
  if (ElementsCount >= 1)
  {
    v22 = ElementsCount;
    for (i = 0; i != v22; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 1);
      v30 = BytePtr;
      v31 = Library;
      v32 = 2;
      v33 = v18;
      v29[1] = Count;
      v26 = 0;
      if (__fillMeshElementInfo(ElementAtIndex, &v28, v29, &v27, &v26))
      {
        btTriangleIndexVertexArray::addIndexedMesh(v19, &v27, v26);
      }
    }
  }

  return v19;
}

__n128 btTriangleIndexVertexArray::addIndexedMesh(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 36);
  if (v6 == *(a1 + 40))
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = btAlignedAllocInternal(48 * v7, 16);
        v6 = *(a1 + 36);
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        v10 = 48 * v6;
        do
        {
          v11 = (v8 + v9);
          v12 = (*(a1 + 48) + v9);
          v13 = *v12;
          v14 = v12[2];
          v11[1] = v12[1];
          v11[2] = v14;
          *v11 = v13;
          v9 += 48;
        }

        while (v10 != v9);
      }

      v15 = *(a1 + 48);
      if (v15 && *(a1 + 56) == 1)
      {
        btAlignedFreeInternal(v15);
      }

      *(a1 + 56) = 1;
      *(a1 + 48) = v8;
      *(a1 + 40) = v7;
      v6 = *(a1 + 36);
    }
  }

  v16 = *(a1 + 48) + 48 * v6;
  result = *a2;
  v18 = *(a2 + 32);
  *(v16 + 16) = *(a2 + 16);
  *(v16 + 32) = v18;
  *v16 = result;
  LODWORD(v16) = *(a1 + 36);
  *(a1 + 36) = v16 + 1;
  *(*(a1 + 48) + 48 * v16 + 36) = a3;
  return result;
}

btC3DMultiMeshInterface *_createMeshInterfaceForEntity(__C3DMesh *a1)
{
  v2 = CFGetTypeID(a1);
  TypeID = C3DMeshGetTypeID(v2, v3);
  if (v2 == TypeID)
  {

    return _createMeshInterfaceForMesh(a1);
  }

  else
  {
    if (v2 != C3DNodeGetTypeID(TypeID, v5))
    {
      return 0;
    }

    v7 = btAlignedAllocInternal(96, 16);
    btC3DMultiMeshInterface::btC3DMultiMeshInterface(v7, a1);
    return v7;
  }
}

btC3DMultiMeshInterface *_createConvexHullForEntity(__C3DMesh *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  MeshInterfaceForEntity = _createMeshInterfaceForEntity(a1);
  if (!MeshInterfaceForEntity)
  {
    return MeshInterfaceForEntity;
  }

  v34 = a1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = v5;
    v8 = v4;
    if (i >= (*(*MeshInterfaceForEntity + 56))(MeshInterfaceForEntity))
    {
      break;
    }

    v39 = 0;
    *v40 = 0;
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v9 = (*(*MeshInterfaceForEntity + 32))(MeshInterfaceForEntity, v40, &v39 + 4, &v39, &v38, &v37, &v36 + 4, &v36, &v35, i);
    v4 += HIDWORD(v39);
    if ((v39 & 0x8000000000000000) == 0 && HIDWORD(v39) && v3 < v4)
    {
      if (v4)
      {
        v9 = btAlignedAllocInternal(16 * v4, 16);
        v5 = v9;
      }

      else
      {
        v5 = 0;
      }

      if (v8 >= 1)
      {
        v11 = v8;
        v12 = v5;
        v13 = v7;
        do
        {
          v14 = *v13;
          v13 += 2;
          *v12 = v14;
          v12 += 2;
          --v11;
        }

        while (v11);
LABEL_16:
        btAlignedFreeInternal(v7);
        v3 = v4;
        goto LABEL_17;
      }

      if (v7)
      {
        goto LABEL_16;
      }

      v3 = v4;
    }

LABEL_17:
    if (v39)
    {
      if ((_createConvexHullForEntity(__C3DEntity *)::done & 1) == 0)
      {
        _createConvexHullForEntity(__C3DEntity *)::done = 1;
        v15 = scn_default_log(v9, v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v42 = v39;
          _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: vertex format not supported for physics shape creation (%d)", buf, 8u);
        }
      }
    }

    else
    {
      v16 = HIDWORD(v39);
      if (SHIDWORD(v39) >= 1)
      {
        v17 = v38;
        v18 = &v5[2 * v8];
        v19 = (*v40 + 8);
        do
        {
          *&v20 = *(v19 - 1);
          DWORD2(v20) = *v19;
          v19 = (v19 + v17);
          *(&v20 + 1) = DWORD2(v20);
          *v18 = v20;
          v18 += 2;
          --v16;
        }

        while (v16);
      }
    }
  }

  v21 = btAlignedAllocInternal(128, 16);
  btConvexTriangleMeshShape::btConvexTriangleMeshShape(v21, MeshInterfaceForEntity, 1);
  v22 = btAlignedAllocInternal(80, 16);
  btShapeHull::btShapeHull(v22, v21);
  v23 = (*(*v21 + 96))(v21);
  btShapeHull::buildHull(v22, v23);
  (*(*v21 + 8))(v21);
  (*(*MeshInterfaceForEntity + 8))(MeshInterfaceForEntity);
  v24 = *(v22 + 2);
  v25 = btShapeHull::numVertices(v22);
  v26 = *(v22 + 6);
  v27 = btShapeHull::numTriangles(v22);
  if (v25 && v24)
  {
    v29 = v27;
    MeshInterfaceForEntity = btAlignedAllocInternal(192, 16);
    btConvexHullShape::btConvexHullShape(MeshInterfaceForEntity, v24, v25, 16, v26, v29);
  }

  else
  {
    v30 = scn_default_log(v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      ObjCWrapper = C3DEntityGetObjCWrapper(v34);
      *v40 = 138412290;
      *&v40[4] = ObjCWrapper;
      _os_log_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create convex hull for entity %@", v40, 0xCu);
    }

    MeshInterfaceForEntity = 0;
  }

  btShapeHull::~btShapeHull(v22);
  btAlignedFreeInternal(v32);
  if (v7)
  {
    btAlignedFreeInternal(v7);
  }

  return MeshInterfaceForEntity;
}

void sub_21BF90E5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    btAlignedFreeInternal(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t btAlignedObjectArray<btVector3>::~btAlignedObjectArray(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

btBvhTriangleMeshShape *_createConcaveTriMeshForEntity(__C3DMesh *a1)
{
  MeshInterfaceForEntity = _createMeshInterfaceForEntity(a1);
  if (MeshInterfaceForEntity)
  {
    v2 = MeshInterfaceForEntity;
    v3 = btAlignedAllocInternal(112, 16);
    btBvhTriangleMeshShape::btBvhTriangleMeshShape(v3, v2, 1, 1);
    operator new();
  }

  return 0;
}

void sub_21BF90FA8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x21CF07610](v3, v1);
  _Unwind_Resume(a1);
}

double ___Z28_createShapeForArrayOfShapesP7NSArrayS0__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _handle];
  if (v5)
  {
    v7 = v5;
    v8 = [*(a1 + 32) objectAtIndex:a3];
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      objc_msgSend_SCNMatrix4Value(v9);
      *v10.var0.var0 = *v14.var1.var0.var0;
      *v11.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[0]), LODWORD(v14.var0.var0[0].var0.var0[0]));
      *&v11.var0.var0[2] = LODWORD(v14.var0.var0[2].var0.var0[0]);
      *v12.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[1]), LODWORD(v14.var0.var0[0].var0.var0[1]));
      v12.var0.var0[2] = v14.var0.var0[2].var0.var0[1];
      *v13.var0.var0 = __PAIR64__(LODWORD(v14.var0.var0[1].var0.var0[2]), LODWORD(v14.var0.var0[0].var0.var0[2]));
      v13.var0.var0[2] = v14.var0.var0[2].var0.var0[2];
      *&v10.var0.var0[2] = LODWORD(v14.var1.var0.var0[2]);
      v14.var0.var0[0] = v11;
      v14.var0.var0[1] = v12;
      v14.var0.var0[2] = v13;
      v14.var1 = v10;
    }

    else
    {
      v14.var0.var0[0] = xmmword_21C27F910;
      v14.var0.var0[1] = xmmword_21C27F8C0;
      v14.var0.var0[2] = xmmword_21C27F600;
      v14.var1 = 0uLL;
    }

    *&result = btCompoundShape::addChildShape(*(a1 + 40), &v14, v7, 0).n128_u64[0];
  }

  return result;
}

btC3DMultiMeshInterface *_createShapeForEntity(__C3DMesh *a1, NSDictionary *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)a2 valueForKey:@"SCNPhysicsShapeTypeKey"];
  if (objc_msgSend_isEqualToString_(v3))
  {
    v11.i32[2] = 0;
    v11.i64[0] = 0;
    v10.i32[2] = 0;
    v10.i64[0] = 0;
    v4 = CFGetTypeID(a1);
    if (v4 == C3DMeshGetTypeID(v4, v5))
    {
      C3DMeshGetBoundingBox(a1, &v11, &v10);
    }

    else
    {
      C3DGetBoundingBox(a1, 1, &v11, &v10);
    }

    v22 = v11.i32[2];
    v23 = v11.i64[0];
    v24 = vtrn1q_s32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v11);
    v7 = v10;
    v7.i32[0] = v11.i32[0];
    v7.i32[3] = v10.i32[0];
    v25 = v7;
    v8 = vextq_s8(v11, vrev64q_s32(v11), 4uLL);
    v8.i32[2] = v10.i32[0];
    v27 = v10.i32[2];
    v26 = v8;
    v21 = v11.i64[0];
    v28 = v10.i64[0];
    v29 = v11.i32[2];
    v30 = v10.i64[0];
    v31 = v10.i32[2];
    v18 = xmmword_21C2803EC;
    v19 = unk_21C2803FC;
    v20 = xmmword_21C28040C;
    v14 = xmmword_21C2803AC;
    v15 = unk_21C2803BC;
    v16 = xmmword_21C2803CC;
    v17 = unk_21C2803DC;
    *v12 = xmmword_21C28038C;
    v13 = unk_21C28039C;
    v6 = btAlignedAllocInternal(192, 16);
    btConvexHullShape::btConvexHullShape(v6, &v21, 8, 12, v12, 12);
    return v6;
  }

  if (objc_msgSend_isEqualToString_(v3))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(v3))
  {

    return _createConcaveTriMeshForEntity(a1);
  }

  else
  {

    return _createConvexHullForEntity(a1);
  }
}

uint64_t ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2, a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (Geometry)
  {
    ++v5;
  }

  *(v4 + 24) = v5;
  return 2 * (*(*(*(a1 + 32) + 8) + 24) > 1);
}

uint64_t ___Z19_createShapeForNodeP9__C3DNodeP12NSDictionary_block_invoke_2(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    ShapeForGeometry = _createShapeForGeometry(Geometry, *(a1 + 96));
    if (ShapeForGeometry)
    {
      v7 = ShapeForGeometry;
      WorldMatrix = C3DNodeGetWorldMatrix(a2, v6);
      C3DMatrix4x4Mult(WorldMatrix, (a1 + 32), &v11);
      *v10.var0.var0[0].var0.var0 = __PAIR64__(v12, v11);
      *&v10.var0.var0[0].var0.var0[2] = v15;
      *v10.var0.var0[1].var0.var0 = __PAIR64__(v13, DWORD1(v11));
      *&v10.var0.var0[1].var0.var0[2] = v16;
      *v10.var0.var0[2].var0.var0 = __PAIR64__(v14, DWORD2(v11));
      *&v10.var0.var0[2].var0.var0[2] = v17;
      *v10.var1.var0.var0 = v18;
      *&v10.var1.var0.var0[2] = v19;
      btCompoundShape::addChildShape(*(a1 + 104), &v10, v7, 1);
    }
  }

  return 0;
}

void sub_21BF915BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

btCollisionShape *C3DPhysicsShapeGetDefaultShapeForEntity(__C3DEntity *a1, SCNVector3 a2)
{
  x = a2.x;
  if (a2.x == 1.0 && a2.y == 1.0 && a2.z == 1.0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], @"physicsShape");
    Attribute = C3DEntityGetAttribute(a1, Copy);
    if (Attribute)
    {
      goto LABEL_14;
    }
  }

  else
  {
    z = a2.z;
    y = a2.y;
    Copy = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"physicsShape[%f,%f,%f]", a2.x, a2.y, a2.z);
    v9 = C3DEntityGetAttribute(a1, Copy);
    if (v9)
    {
      Attribute = v9;
      goto LABEL_14;
    }

    *&v10 = x;
    *&v11 = y;
    *&v12 = z;
    Attribute = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithSCNVector3:", v10, v11, v12), @"SCNPhysicsShapeScaleKey"}];
  }

  Attribute = [[SCNPhysicsShape alloc] initWithCachedObject:a1 options:Attribute];
  C3DEntitySetAttribute(a1, Copy, Attribute);

LABEL_14:
  CFRelease(Copy);

  return [(SCNPhysicsShape *)Attribute _handle];
}

btCollisionShape *C3DPhysicsShapeGetDefaultShapeForNode(float32x4_t *a1, uint64_t a2)
{
  v11.i32[2] = 0;
  v11.i64[0] = 0;
  WorldMatrix = C3DNodeGetWorldMatrix(a1, a2);
  C3DMatrix4x4GetScale(WorldMatrix, &v11);
  Geometry = C3DNodeGetGeometry(a1, v4);
  if (Geometry)
  {
    v6 = v11.i32[0];
    v8 = v11.i32[2];
    v7 = v11.i32[1];
  }

  else
  {
    if (!C3DNodeComputeHierarchicalBoundingBox(a1, 1, v10))
    {
      return 0;
    }

    v6 = v11.i32[0];
    v8 = v11.i32[2];
    v7 = v11.i32[1];
    Geometry = a1;
  }

  return C3DPhysicsShapeGetDefaultShapeForEntity(Geometry, *&v6);
}

void btC3DMultiMeshInterface::btC3DMultiMeshInterface(btC3DMultiMeshInterface *this, __C3DNode *a2)
{
  *(this + 1) = xmmword_21C280340;
  *this = &unk_282DC34D8;
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 36) = 0;
  *(this + 88) = 1;
  *(this + 10) = 0;
  *(this + 68) = 0;
  WorldMatrix = C3DNodeGetWorldMatrix(a2, a2);
  C3DMatrix4x4Invert(WorldMatrix, &v8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN23btC3DMultiMeshInterfaceC2EP9__C3DNode_block_invoke;
  v5[3] = &__block_descriptor_104_e20_q16__0____C3DNode__8l;
  v7 = this;
  v6 = v8;
  C3DNodeApplyHierarchy(a2, v5);
}

void sub_21BF91C04(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 64);
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 32);
  C3DSceneSourcePerformConsistencyCheck();
  _Unwind_Resume(a1);
}

uint64_t ___ZN23btC3DMultiMeshInterfaceC2EP9__C3DNode_block_invoke(float32x4_t *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a1[6].i64[0];
  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    Mesh = C3DGeometryGetMesh(Geometry, v6);
    if (Mesh)
    {
      v9 = Mesh;
      WorldMatrix = C3DNodeGetWorldMatrix(a2, v8);
      C3DMatrix4x4Mult(WorldMatrix, a1 + 2, v54);
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v9, 0, 0, 1);
      v19 = SourceWithSemanticAtIndex;
      if (SourceWithSemanticAtIndex)
      {
        Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex, v12, v13, v14, v15, v16, v17, v18);
        Library = C3DSceneSourceGetLibrary(Accessor);
        Count = C3DMeshSourceGetCount(v19, v22);
        Data = C3DMeshSourceGetData();
        BytePtr = CFDataGetBytePtr(Data);
        v26 = *(v4 + 68);
        v27 = v26 + Count;
        if (Count >= 1 && *(v4 + 72) < v27)
        {
          if (v27)
          {
            v28 = btAlignedAllocInternal(16 * v27, 16);
          }

          else
          {
            v28 = 0;
          }

          if (*(v4 + 68) >= 1)
          {
            v29 = 0;
            v30 = 16 * *(v4 + 68);
            do
            {
              *(v28 + v29) = *(*(v4 + 80) + v29);
              v29 += 16;
            }

            while (v30 != v29);
          }

          v31 = *(v4 + 80);
          if (v31 && *(v4 + 88) == 1)
          {
            btAlignedFreeInternal(v31);
          }

          *(v4 + 88) = 1;
          *(v4 + 80) = v28;
          *(v4 + 72) = v27;
        }

        *(v4 + 68) = v27;
        ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
        v35 = ComponentsValueType;
        if (ComponentsValueType == 6 || ComponentsValueType == 1)
        {
          if (Count >= 1)
          {
            v36 = v26;
            v37 = Count;
            do
            {
              if (v35 == 1)
              {
                v34.i64[0] = *BytePtr;
                v34.i32[2] = *(BytePtr + 2);
              }

              else
              {
                v34 = *BytePtr;
                *v34.f32 = vcvt_f32_f64(*BytePtr);
                v38 = *(BytePtr + 2);
                v34.f32[2] = v38;
              }

              v39 = vmvnq_s8(vceqq_f32(v34, v34));
              v39.i32[3] = 0;
              *buf = v54[0];
              v56 = v54[1];
              v57 = v54[2];
              v58 = v54[3];
              *v34.i64 = C3DVector3MultMatrix4x4(buf, vbicq_s8(v34, vcltzq_s32(v39)));
              v34.i32[3] = 0;
              *(*(v4 + 80) + 16 * v36++) = v34;
              BytePtr += Library;
              --v37;
            }

            while (v37);
          }
        }

        else
        {
          v40 = scn_default_log(ComponentsValueType, v33);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v35;
            _os_log_impl(&dword_21BEF7000, v40, OS_LOG_TYPE_DEFAULT, "Warning: Physics shape construction does not support meshes with positions value type different from double or float. (%d)", buf, 8u);
          }
        }

        ElementsCount = C3DMeshGetElementsCount(v9, v33);
        if (ElementsCount >= 1)
        {
          for (i = 0; i != ElementsCount; i = (i + 1))
          {
            CFRetain(v9);
            v43 = *(v4 + 36);
            if (v43 == *(v4 + 40))
            {
              v44 = v43 ? 2 * v43 : 1;
              if (v43 < v44)
              {
                if (v44)
                {
                  v45 = btAlignedAllocInternal(32 * v44, 16);
                  v43 = *(v4 + 36);
                }

                else
                {
                  v45 = 0;
                }

                if (v43 >= 1)
                {
                  v46 = 0;
                  v47 = 32 * v43;
                  do
                  {
                    v48 = (v45 + v46);
                    v49 = (*(v4 + 48) + v46);
                    v50 = v49[1];
                    *v48 = *v49;
                    v48[1] = v50;
                    v46 += 32;
                  }

                  while (v47 != v46);
                }

                v51 = *(v4 + 48);
                if (v51 && *(v4 + 56) == 1)
                {
                  btAlignedFreeInternal(v51);
                }

                *(v4 + 56) = 1;
                *(v4 + 48) = v45;
                *(v4 + 40) = v44;
                v43 = *(v4 + 36);
              }
            }

            v52 = *(v4 + 48) + 32 * v43;
            *v52 = v9;
            *(v52 + 8) = i;
            *(v52 + 16) = v26;
            *(v52 + 20) = Count;
            ++*(v4 + 36);
          }
        }
      }
    }
  }

  return 0;
}

void btC3DMultiMeshInterface::~btC3DMultiMeshInterface(btC3DMultiMeshInterface *this)
{
  btC3DMultiMeshInterface::~btC3DMultiMeshInterface(this);

  btAlignedFreeInternal(v1);
}

{
  *this = &unk_282DC34D8;
  v2 = *(this + 9);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(this + 6) + v3);
      if (v5)
      {
        CFRelease(v5);
        v2 = *(this + 9);
      }

      v3 += 32;
    }
  }

  v6 = *(this + 10);
  if (v6 && *(this + 88) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 88) = 1;
  *(this + 10) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v7 = *(this + 6);
  if (v7 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;

  C3DSceneSourcePerformConsistencyCheck();
}

void btC3DMultiMeshInterface::getLockedVertexIndexBase(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    btC3DMultiMeshInterface::getLockedVertexIndexBase();
  }
}

const void *btC3DMultiMeshInterface::getLockedReadOnlyVertexIndexBase(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, const UInt8 **a6, _DWORD *a7, int *a8, int *a9, int a10)
{
  v13 = *(a1 + 48) + 32 * a10;
  *a3 = *(v13 + 20);
  *a2 = *(a1 + 80) + 16 * *(v13 + 16);
  *a4 = 0;
  *a5 = 16;
  result = C3DMeshGetElementAtIndex(*v13, *(v13 + 8), 1);
  if (result)
  {

    return __fillMeshElementInfo(result, a6, a7, a8, a9);
  }

  return result;
}

void sub_21BF921A8(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 64);
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 32);
  C3DSceneSourcePerformConsistencyCheck();
  _Unwind_Resume(a1);
}

void btTriangleInfoMap::btTriangleInfoMap(btTriangleInfoMap *this)
{
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 44) = 0;
  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 76) = 0;
  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 108) = 0;
  *this = &unk_282DC3560;
  *(this + 136) = xmmword_21C280350;
  *(this + 19) = 0x322BCC7640C90FDBLL;
}

void btTriangleInfoMap::~btTriangleInfoMap(btTriangleInfoMap *this)
{
  btHashMap<btHashInt,btTriangleInfo>::~btHashMap(this + 8);
}

{
  v2 = *(this + 15);
  if (v2 && *(this + 128) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v3 = *(this + 11);
  if (v3 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v4 = *(this + 7);
  if (v4 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v5 = *(this + 3);
  if (v5 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x21CF07610);
}

const char *btTriangleInfoMap::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = *(a1 + 136);
  *(a2 + 48) = *(a1 + 156);
  v6 = *(a1 + 12);
  *(a2 + 56) = v6;
  if (v6)
  {
    v7 = (*(*a3 + 56))(a3, *(a1 + 24));
    *a2 = v7;
    if (v7)
    {
      v8 = *(a2 + 56);
      v9 = (*(*a3 + 32))(a3, 4, v8);
      v10 = *(a1 + 24);
      if (v8 >= 1)
      {
        v11 = *(v9 + 8);
        v12 = *(a1 + 24);
        do
        {
          v13 = *v12++;
          *v11++ = v13;
          --v8;
        }

        while (v8);
      }

      (*(*a3 + 40))(a3, v9, "int", 1497453121, v10);
    }
  }

  else
  {
    *a2 = 0;
  }

  v14 = *(a1 + 44);
  *(a2 + 52) = v14;
  if (v14)
  {
    v15 = (*(*a3 + 56))(a3, *(a1 + 56));
    *(a2 + 8) = v15;
    if (v15)
    {
      v16 = *(a2 + 52);
      v17 = (*(*a3 + 32))(a3, 4, v16);
      v18 = *(a1 + 56);
      if (v16 >= 1)
      {
        v19 = *(v17 + 8);
        v20 = *(a1 + 56);
        do
        {
          v21 = *v20++;
          *v19++ = v21;
          --v16;
        }

        while (v16);
      }

      (*(*a3 + 40))(a3, v17, "int", 1497453121, v18);
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }

  v22 = *(a1 + 76);
  *(a2 + 60) = v22;
  if (v22)
  {
    v23 = (*(*a3 + 56))(a3, *(a1 + 88));
    *(a2 + 16) = v23;
    if (v23)
    {
      v24 = *(a2 + 60);
      v25 = (*(*a3 + 32))(a3, 16, v24);
      v26 = *(a1 + 88);
      if (v24 >= 1)
      {
        v27 = *(v25 + 8);
        v28 = *(a1 + 88);
        do
        {
          *(v27 + 4) = *(v28 + 1);
          *(v27 + 12) = v28[3];
          v29 = *v28;
          v28 += 4;
          *v27 = v29;
          v27 += 16;
          --v24;
        }

        while (v24);
      }

      (*(*a3 + 40))(a3, v25, "btTriangleInfoData", 1497453121, v26);
    }
  }

  else
  {
    *(a2 + 16) = 0;
  }

  v30 = *(a1 + 108);
  *(a2 + 64) = v30;
  if (v30)
  {
    v31 = (*(*a3 + 56))(a3, *(a1 + 120));
    *(a2 + 24) = v31;
    if (v31)
    {
      v32 = *(a2 + 60);
      v33 = (*(*a3 + 32))(a3, 4, v32);
      v34 = *(a1 + 120);
      if (v32 >= 1)
      {
        v35 = *(v33 + 8);
        v36 = *(a1 + 120);
        do
        {
          v37 = *v36++;
          *v35++ = v37;
          --v32;
        }

        while (v32);
      }

      (*(*a3 + 40))(a3, v33, "int", 1497453121, v34);
    }
  }

  else
  {
    *(a2 + 24) = 0;
  }

  return "btTriangleInfoMapData";
}

uint64_t btHashMap<btHashInt,btTriangleInfo>::~btHashMap(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 120) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(a1 + 120) = 1;
  *(a1 + 112) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 80);
  if (v3 && *(a1 + 88) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(a1 + 88) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  v4 = *(a1 + 48);
  if (v4 && *(a1 + 56) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(a1 + 56) = 1;
  *(a1 + 48) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 16);
  if (v5 && *(a1 + 24) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void btBox2dShape::btBox2dShape(btBox2dShape *this, float32x4_t *a2)
{
  btPolyhedralConvexShape::btPolyhedralConvexShape(this);
  *v4 = &unk_282DC98B0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = vneg_f32(*a2->f32);
  *(v4 + 104) = 0;
  v5 = -a2->f32[1];
  *(v4 + 112) = a2->i32[0];
  *(v4 + 116) = v5;
  *(v4 + 120) = 0;
  *(v4 + 128) = a2->i32[0];
  *(v4 + 132) = a2->i32[1];
  *(v4 + 136) = 0;
  *(v4 + 144) = -a2->f32[0];
  *(v4 + 148) = a2->i32[1];
  *(v4 + 152) = xmmword_21C280360;
  *(v4 + 168) = 0;
  *(v4 + 176) = 1065353216;
  *(v4 + 188) = 0;
  *(v4 + 180) = 0;
  *(v4 + 196) = xmmword_21C280370;
  *(v4 + 212) = 0;
  *(v4 + 220) = 0;
  if (a2->f32[0] <= a2->f32[1])
  {
    v6 = a2->f32[0];
  }

  else
  {
    v6 = a2->f32[1];
  }

  off_282DC9910(v4);
  v7 = v8.n128_f32[0];
  v8.n128_f32[0] = v6 * 0.1;
  if ((v6 * 0.1) < v7)
  {
    (*(*this + 88))(this, v8.n128_f32[0]);
  }

  *(this + 2) = 17;
  *v9.i64 = (*(*this + 96))(this, v8);
  v15 = v9;
  v10 = (*(*this + 96))(this);
  v14 = LODWORD(v10);
  v11 = (*(*this + 96))(this);
  v12 = v15;
  v12.i32[1] = v14;
  v12.f32[2] = v11;
  v13 = vsubq_f32(vmulq_f32(*a2, *(this + 2)), v12);
  v13.i32[3] = 0;
  *(this + 3) = v13;
}

uint64_t scn_cone_x4_fill(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = a2 + 6;
    v5 = result + 64;
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v7 = vnegq_f32(v6);
    do
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v11 = v7;
      v12 = 0uLL;
      if (v3 < a3)
      {
        v11 = v4[-6];
        v12 = v4[-5];
        v9.i32[0] = v4[-4].i32[0];
        v10 = v4[-4].i32[1];
      }

      v13 = 0;
      v14 = v7;
      v15 = 0;
      if (v3 + 1 < a3)
      {
        v14 = v4[-3];
        v8 = v4[-2];
        v15 = *v4[-1].i8;
      }

      v16 = 0uLL;
      v17 = 0uLL;
      v18 = v7;
      if (v3 + 2 < a3)
      {
        v18 = *v4;
        v17 = v4[1];
        v13 = v4[2].i64[0];
      }

      v19 = 0;
      v20 = v7;
      if (v3 + 3 < a3)
      {
        v20 = v4[3];
        v16 = v4[4];
        v19 = v4[5].i64[0];
      }

      v21 = vzip1q_s32(v11, v18);
      v32.val[0] = vzip2q_s32(v11, v18).u64[0];
      v22 = vzip1q_s32(v14, v20);
      v32.val[1] = vzip2q_s32(v14, v20).u64[0];
      *&v23 = __PAIR64__(v15.u32[1], v10);
      *(&v23 + 1) = __PAIR64__(HIDWORD(v19), HIDWORD(v13));
      v24 = vzip1q_s32(v12, v17);
      *&v25 = vzip1_s32(v9, v15);
      *(&v25 + 1) = __PAIR64__(v19, v13);
      v26 = (v5 - 64);
      vst2_f32(v26, v21);
      v27 = (v5 - 32);
      vst2_f32(v27, v32);
      v31.val[0] = vzip2q_s32(v12, v17).u64[0];
      v28 = vzip1q_s32(v8, v16);
      v31.val[1] = vzip2q_s32(v8, v16).u64[0];
      v29 = (v5 - 16);
      vst2_f32(v29, v24);
      *(v5 - 48) = vzip2q_s32(v21, v22);
      *v5 = vzip2q_s32(v24, v28);
      v30 = (v5 + 16);
      vst2_f32(v30, v31);
      *(v5 + 32) = v25;
      *(v5 + 48) = v23;
      v3 += 4;
      v4 += 12;
      v5 += 128;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *scn_cone_x4_filter(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = vnegq_f32(v8);
    v15 = vnegq_f32(*a3);
    v16 = vnegq_f32(v7);
    v17 = vnegq_f32(v12);
    v18 = vnegq_f32(*a4);
    v19 = vnegq_f32(v11);
    v20 = result + 4;
    do
    {
      v21 = v20[-4];
      v22 = v20[-3];
      v23 = v20[-2];
      v24 = v20[2];
      v25 = vnegq_f32(v24);
      v26 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v22), v21, v6), v23, v8));
      v27 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v22), v21, v10), v23, v12));
      if ((vminvq_u32(vornq_s8(vmvnq_s8(vcgeq_f32(v26, v25)), vcgeq_f32(v27, v25))) & 0x80000000) != 0)
      {
        if ((v5 & 1) == 0)
        {
          *(a5 + (v5 >> 1)) = 0;
        }
      }

      else
      {
        v28 = v20[3];
        v29 = v20[1];
        v30 = v20[-1];
        v31 = vmlaq_f32(vmulq_f32(*v20, v14), v29, v7);
        v32 = vmlaq_f32(vmulq_f32(v29, v15), v30, v8);
        v33 = vmlaq_f32(vmulq_f32(v30, v16), *v20, v6);
        v34 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v33)), v29, v32);
        v35 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v31)), v30, v33);
        v36 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v32)), *v20, v31);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vrsqrteq_f32(v37);
        v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
        v40 = vbicq_s8(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), vceqzq_f32(v37));
        v41 = vmlaq_f32(v21, v24, v30);
        v42 = vmlaq_f32(v22, v24, *v20);
        v43 = vmlaq_f32(v23, v24, v29);
        v44 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, vmlaq_f32(v42, v28, vmulq_f32(v40, vnegq_f32(v35)))), vmlaq_f32(v41, v28, vmulq_f32(v40, vnegq_f32(v34))), v6), vmlaq_f32(v43, v28, vmulq_f32(v40, vnegq_f32(v36))), v8));
        v45 = vmlaq_f32(vmulq_f32(*v20, v17), v29, v11);
        v46 = vmlaq_f32(vmulq_f32(v29, v18), v30, v12);
        v47 = vmlaq_f32(vmulq_f32(v30, v19), *v20, v10);
        v48 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v47)), v29, v46);
        v49 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v45)), v30, v47);
        v50 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v46)), *v20, v45);
        v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v48, v48), v50, v50);
        v52 = vrsqrteq_f32(v51);
        v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
        v54 = vbicq_s8(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), vceqzq_f32(v51));
        v55 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, vmlaq_f32(v42, v28, vmulq_f32(v54, vnegq_f32(v49)))), vmlaq_f32(v41, v28, vmulq_f32(v54, vnegq_f32(v48))), v10), vmlaq_f32(v43, v28, vmulq_f32(v54, vnegq_f32(v50))), v12));
        v56 = vaddvq_s32(vandq_s8(vandq_s8(vorrq_s8(vcltzq_f32(vmulq_f32(v26, v44)), vcgezq_f32(vminnmq_f32(v26, v44))), vorrq_s8(vcltzq_f32(vmulq_f32(v27, v55)), vcgezq_f32(vminnmq_f32(v27, v55)))), xmmword_21C27FE30));
        v57 = v5 >> 1;
        if (v5)
        {
          v56 = *(a5 + v57) | (16 * v56);
        }

        *(a5 + v57) = v56;
      }

      ++v5;
      v20 += 8;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t scn_sphere_x4_fill(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = a2 + 2;
    do
    {
      v6 = xmmword_21C280420;
      if (v3 < a3)
      {
        v6 = v5[-2];
      }

      v7 = xmmword_21C280420;
      if (v3 + 1 < a3)
      {
        v7 = v5[-1];
      }

      v8 = xmmword_21C280420;
      if (v3 + 2 < a3)
      {
        v8 = *v5;
      }

      v9 = xmmword_21C280420;
      if (v3 + 3 < a3)
      {
        v9 = v5[1];
      }

      v10 = vzip1q_s32(v6, v8);
      v16.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      *&v12 = vuzp2q_s32(vuzp2q_s32(v6, v7), v6).u64[0];
      *(&v12 + 1) = __PAIR64__(v9.u32[3], v8.u32[3]);
      v16.val[1] = vzip2q_s32(v7, v9).u64[0];
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = vzip2q_s32(v10, v11);
      v14 = v4 + 16;
      vst2_f32(v4, v16);
      v15 = v4 + 4;
      *v15 = v12;
      v3 += 4;
      v5 += 4;
      v4 = v14;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *scn_sphere_x4_filter(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = result + 2;
    do
    {
      v15 = vnegq_f32(v14[1]);
      v16 = vaddvq_s32(vandq_s8(vandq_s8(vcgeq_f32(vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v14[-1]), v14[-2], v6), *v14, v8)), v15), vcgeq_f32(vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v14[-1]), v14[-2], v10), *v14, v12)), v15)), xmmword_21C27FE30));
      v17 = v5 >> 1;
      if (v5)
      {
        v16 = *(a5 + v17) | (16 * v16);
      }

      *(a5 + v17) = v16;
      ++v5;
      v14 += 4;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t C3DWrapModeToMTLAddressMode(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 5)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DWrapModeToMTLAddressMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_AddressMode[v2];
}

uint64_t C3DFilterModeToMTLFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFilterModeToMTLFilter_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_FilterMode[v2];
}

uint64_t C3DFilterModeToMTLMipFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFilterModeToMTLFilter_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_MipFilterMode[v2];
}

uint64_t C3DImageTypeToMTLTextureType(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageTypeToMTLTextureType_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_TextureType[v2];
}

uint64_t C3DCullModeToMTLCullMode(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCullModeToMTLCullMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_CullMode[v2];
}

uint64_t C3DFillModeToMTLFillMode(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 2)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFillModeToMTLFillMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_FillMode[v2];
}

uint64_t C3DBlendFactorToMTLBlendFactor(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0xF)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DBlendFactorToMTLBlendFactor_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_BlendModes[v2];
}

uint64_t C3DBlendOpToMTLBlendOperation(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 5)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DBlendOpToMTLBlendOperation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_BlendOps[v2];
}

uint64_t C3DComparisonFuncToMTLCompareFunction(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DComparisonFuncToMTLCompareFunction_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_ComparisonFunc[v2];
}

uint64_t C3DComparisonFuncToMTLCompareFunctionReverse(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DComparisonFuncToMTLCompareFunction_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_ComparisonFuncReverse[v2];
}

uint64_t C3DStencilOpToMTLStencilOperation(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 8)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DStencilOpToMTLStencilOperation_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_StencilOp[v2];
}

uint64_t SCNMTLPixelFormatSRGBVariant(uint64_t result)
{
  if (result > 499)
  {
    if (result > 506)
    {
      if (result <= 509)
      {
        if (result == 507)
        {
          return 527;
        }

        else if (result == 508)
        {
          return 528;
        }

        else
        {
          return 529;
        }
      }

      else if (result > 551)
      {
        if (result == 552)
        {
          return 553;
        }

        else if (result == 554)
        {
          return 555;
        }
      }

      else if (result == 510)
      {
        return 530;
      }

      else if (result == 550)
      {
        return 551;
      }
    }

    else if (result <= 502)
    {
      if (result == 500)
      {
        return 520;
      }

      else if (result == 501)
      {
        return 521;
      }

      else
      {
        return 522;
      }
    }

    else if (result > 504)
    {
      if (result == 505)
      {
        return 525;
      }

      else
      {
        return 526;
      }
    }

    else if (result == 503)
    {
      return 523;
    }

    else
    {
      return 524;
    }
  }

  else if (result <= 163)
  {
    if (result > 79)
    {
      switch(result)
      {
        case 80:
          return 81;
        case 160:
          return 161;
        case 162:
          return 163;
      }
    }

    else
    {
      switch(result)
      {
        case 10:
          return 11;
        case 30:
          return 31;
        case 70:
          return 71;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 209:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t SCNMTLPixelFormatNonSRGBVariant(uint64_t result)
{
  if (result <= 160)
  {
    if (result > 70)
    {
      if (result == 71)
      {
        return 70;
      }

      else if (result == 81)
      {
        return 80;
      }
    }

    else if (result == 11)
    {
      return 10;
    }

    else if (result == 31)
    {
      return 30;
    }
  }

  else if (result > 550)
  {
    switch(result)
    {
      case 551:
        return 550;
      case 553:
        return 552;
      case 555:
        return 554;
    }
  }

  else
  {
    switch(result)
    {
      case 161:
        result = 160;
        break;
      case 163:
        result = 162;
        break;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t C3DRenderBufferFormatToMTLPixelFormat(int a1, uint64_t a2, char a3)
{
  v3 = a1 - 1;
  result = 80;
  switch(v3)
  {
    case 0:
      result = C3DMetalFramebufferPixelFormat(a3);
      break;
    case 1:
    case 26:
      return result;
    case 2:
      result = 10;
      break;
    case 3:
      result = 12;
      break;
    case 4:
      result = 13;
      break;
    case 5:
      result = 14;
      break;
    case 6:
      result = 20;
      break;
    case 7:
      result = 22;
      break;
    case 8:
      result = 23;
      break;
    case 9:
      result = 24;
      break;
    case 10:
      result = 25;
      break;
    case 11:
      result = 53;
      break;
    case 12:
      result = 54;
      break;
    case 13:
      result = 55;
      break;
    case 14:
      result = 30;
      break;
    case 15:
      result = 32;
      break;
    case 16:
      result = 33;
      break;
    case 17:
      result = 34;
      break;
    case 18:
      result = 60;
      break;
    case 19:
      result = 62;
      break;
    case 20:
      result = 63;
      break;
    case 21:
      result = 64;
      break;
    case 22:
      result = 65;
      break;
    case 23:
      result = 103;
      break;
    case 24:
      result = 104;
      break;
    case 25:
      result = 105;
      break;
    case 27:
      result = 70;
      break;
    case 28:
      result = 72;
      break;
    case 29:
      result = 73;
      break;
    case 30:
      result = 74;
      break;
    case 31:
      result = 110;
      break;
    case 32:
      result = 112;
      break;
    case 33:
      result = 113;
      break;
    case 34:
      result = 114;
      break;
    case 35:
      result = 115;
      break;
    case 36:
      result = 123;
      break;
    case 37:
      result = 124;
      break;
    case 38:
      result = 125;
      break;
    case 39:
      result = 250;
      break;
    case 40:
    case 41:
      result = 252;
      break;
    case 42:
    case 43:
      result = 253;
      break;
    case 44:
      result = 260;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t C3DMeshElementTypeToMTLPrimitiveType(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    v3 = 4;
    if (a1 != 1)
    {
      v3 = 0;
    }

    if (a1)
    {
      return v3;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v4 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3DMeshElementTypeToMTLPrimitiveType_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    else
    {
      if (a1 != 4)
      {
        return a1 == 2;
      }

      v12 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DMeshElementTypeToMTLPrimitiveType_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    return 0;
  }
}

uint64_t SCNMTLPixelFormatFromBitmapContextDescription(uint64_t a1, uint64_t a2, CGContextRef context, char a4)
{
  v39 = *MEMORY[0x277D85DE8];
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  ColorSpace = CGBitmapContextGetColorSpace(context);
  v11 = ColorSpace;
  v12 = BitmapInfo & 0x7000;
  if ((BitmapInfo & 0x1B) == 2)
  {
    v13 = 0;
    v14 = v12 != 4096 && v12 != 0x2000;
LABEL_14:
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if ((BitmapInfo & 0x1B) != 1)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 1;
  if ((BitmapInfo & 0x7000) == 0 || v12 == 12288)
  {
LABEL_26:
    v14 = 1;
    if ((BitmapInfo & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v14 = 1;
  if (v12 == 0x4000)
  {
    goto LABEL_14;
  }

  v13 = 0;
  if ((BitmapInfo & 0x100) != 0)
  {
LABEL_27:
    if (a2 == 32)
    {
      switch(a1)
      {
        case 1:
          return 55;
        case 4:
          return 125;
        case 2:
          return 105;
      }
    }

    else if (a2 == 16)
    {
      switch(a1)
      {
        case 1:
          return 25;
        case 4:
          return 115;
        case 2:
          return 65;
      }
    }

    goto LABEL_50;
  }

LABEL_15:
  ColorSpace = C3DLinearRenderingIsEnabled();
  if (!ColorSpace)
  {
    goto LABEL_34;
  }

  ColorSpace = C3DColorSpaceExtendedLinearSRGB(ColorSpace, v10);
  if (v11 == ColorSpace || (ColorSpace = C3DColorSpaceLinearSRGB(), v11 == ColorSpace) || (ColorSpace = C3DColorSpaceLinearGray(ColorSpace, v10), v11 == ColorSpace) || (ColorSpace = C3DColorSpaceLinearDisplayP3(ColorSpace, v10), (a4 & 1) != 0) || v11 == ColorSpace)
  {
    if (a2 == 16)
    {
      if (a1 == 1)
      {
        return 20;
      }

      if (a1 == 4 && (v13 & 1) != 0)
      {
        return 110;
      }

      goto LABEL_50;
    }

LABEL_34:
    if (a2 == 8)
    {
      if (a1 == 1)
      {
        return 10;
      }

      if (a1 == 2)
      {
        return 30;
      }

      if (a1 == 4 && v13 == 1)
      {
        return 70;
      }

      if (a1 == 4 && !v14)
      {
        return 80;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 8)
  {
    if (a1 == 1)
    {
      return 11;
    }

    if (a1 == 2)
    {
      return 31;
    }

    if (a1 == 4 && v13 == 1)
    {
      return 71;
    }

    if (a1 == 4 && !v14)
    {
      return 81;
    }
  }

LABEL_50:
  v17 = scn_default_log(ColorSpace, v10);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    return 70;
  }

  v19 = (BitmapInfo >> 12) & 7;
  if (v19 > 4)
  {
    v20 = @"byteOrderUnknown";
  }

  else
  {
    v20 = off_2782FCB20[v19];
  }

  if ((BitmapInfo & 0x1F) > 7)
  {
    v21 = @"alphaUnknown";
  }

  else
  {
    v21 = off_2782FCB48[BitmapInfo & 0x1F];
  }

  v22 = @"yes";
  v23 = 138414082;
  v24 = context;
  v25 = 1024;
  if ((BitmapInfo & 0x100) == 0)
  {
    v22 = @"no";
  }

  v26 = a1;
  v27 = 1024;
  v28 = a2;
  v29 = 1024;
  v30 = BitmapInfo;
  v31 = 2112;
  v32 = v20;
  v33 = 2112;
  v34 = v21;
  v35 = 2112;
  v36 = v22;
  v37 = 2112;
  v38 = v11;
  v16 = 70;
  _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: Failed to create Metal pixel format for %@ [%d components, %d bits per component, bitmap info: %u (%@|%@), float components: %@, color space: %@]", &v23, 0x46u);
  return v16;
}

uint64_t SCNMTLVertexFormatToC3DBaseType(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x36)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      SCNMTLVertexFormatToC3DBaseType_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return __SCNMTLVertexFormatToC3DBaseTypeArray[a1];
}

uint64_t SCNMTLDataTypeFromC3DBaseType(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      SCNMTLDataTypeFromC3DBaseType_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return mtl_DataType[v2];
}

uint64_t SCNMTLVertexFormatFromC3DBaseType(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      SCNMTLDataTypeFromC3DBaseType_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return __SCNMTLAttributeFormatFromC3DBaseType[v2];
}

uint64_t SCNMTLPixelFormatIsUnsignedInt(uint64_t a1)
{
  result = 1;
  if ((a1 - 13) > 0x3C || ((1 << (a1 - 13)) & 0x1004010000100401) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 0x20 || ((1 << v3) & 0x100401001) == 0)
    {
      return 0;
    }
  }

  return result;
}

__CFString *SCNMTLPixelFormatToString(uint64_t a1)
{
  if (a1 <= 122)
  {
    switch(a1)
    {
      case '5':
        result = @"R32Uint";
        break;
      case '6':
        result = @"R32Sint";
        break;
      case '7':
        result = @"R32Float";
        break;
      case '8':
      case '9':
      case ':':
      case ';':
      case '=':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'R':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'o':
        goto LABEL_28;
      case '<':
        result = @"RG16Unorm";
        break;
      case '>':
        result = @"RG16Snorm";
        break;
      case '?':
        result = @"RG16Uint";
        break;
      case '@':
        result = @"RG16Sint";
        break;
      case 'A':
        result = @"RG16Float";
        break;
      case 'F':
        result = @"RGBA8Unorm";
        break;
      case 'G':
        result = @"RGBA8Unorm_sRGB";
        break;
      case 'H':
        result = @"RGBA8Snorm";
        break;
      case 'I':
        result = @"RGBA8Uint";
        break;
      case 'J':
        result = @"RGBA8Sint";
        break;
      case 'P':
        result = @"BGRA8Unorm";
        break;
      case 'Q':
        result = @"BGRA8Unorm_sRGB";
        break;
      case 'Z':
        result = @"RGB10A2Unorm";
        break;
      case '[':
        result = @"RGB10A2Uint";
        break;
      case '^':
        result = @"BGR10A2Unorm";
        break;
      case 'g':
        result = @"RG32Uint";
        break;
      case 'h':
        result = @"RG32Sint";
        break;
      case 'i':
        result = @"RG32Float";
        break;
      case 'n':
        result = @"RGBA16Unorm";
        break;
      case 'p':
        result = @"RGBA16Snorm";
        break;
      case 'q':
        result = @"RGBA16Uint";
        break;
      case 'r':
        result = @"RGBA16Sint";
        break;
      case 's':
        result = @"RGBA16Float";
        break;
      default:
        result = @"Invalid";
        switch(a1)
        {
          case 0:
            return result;
          case 1:
            result = @"A8Unorm";
            break;
          case 10:
            result = @"R8Unorm";
            break;
          case 11:
            result = @"R8Unorm_sRGB";
            break;
          case 12:
            result = @"R8Snorm";
            break;
          case 13:
            result = @"R8Uint";
            break;
          case 14:
            result = @"R8Sint";
            break;
          case 20:
            result = @"R16Unorm";
            break;
          case 22:
            result = @"R16Snorm";
            break;
          case 23:
            result = @"R16Uint";
            break;
          case 24:
            result = @"R16Sint";
            break;
          case 25:
            result = @"R16Float";
            break;
          case 30:
            result = @"RG8Unorm";
            break;
          case 31:
            result = @"RG8Unorm_sRGB";
            break;
          case 32:
            result = @"RG8Snorm";
            break;
          case 33:
            result = @"RG8Uint";
            break;
          case 34:
            result = @"RG8Sint";
            break;
          default:
            goto LABEL_28;
        }

        break;
    }
  }

  else
  {
    if (a1 > 252)
    {
      if (a1 <= 552)
      {
        if (a1 == 253)
        {
          return @"Stencil8";
        }

        if (a1 == 552)
        {
          return @"BGRA10_XR";
        }
      }

      else
      {
        switch(a1)
        {
          case 553:
            return @"BGRA10_XR_sRGB";
          case 554:
            return @"BGR10_XR";
          case 555:
            return @"BGR10_XR_sRGB";
        }
      }
    }

    else
    {
      if (a1 <= 124)
      {
        if (a1 == 123)
        {
          return @"RGBA32Uint";
        }

        else
        {
          return @"RGBA32Sint";
        }
      }

      switch(a1)
      {
        case 125:
          return @"RGBA32Float";
        case 250:
          return @"Depth16Unorm";
        case 252:
          return @"Depth32Float";
      }
    }

LABEL_28:
    v4 = [MEMORY[0x277CCACA8] stringWithCString:MTLPixelFormatGetName() encoding:1];

    return [v4 stringByReplacingOccurrencesOfString:@"MTLPixelFormat" withString:&stru_282DCC058];
  }

  return result;
}

__CFString *SCNMTLStorageModeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unkown";
  }

  else
  {
    return off_2782FCB88[a1];
  }
}

__CFString *SCNMTLCPUCacheModeToString(uint64_t a1)
{
  if (a1)
  {
    return @"MTLCPUCacheModeWriteCombined";
  }

  else
  {
    return @"MTLCPUCacheModeDefaultCache";
  }
}

uint64_t SCNMTLFunctionTypeToProgramStage(uint64_t a1, uint64_t a2)
{
  if (a1 != 3)
  {
    return a1 == 2;
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    SCNMTLFunctionTypeToProgramStage_cold_1(v3);
  }

  return 2;
}

uint64_t SCNMTLTextureTypeGetArrayElementType(uint64_t a1)
{
  v1 = 5;
  v2 = 2;
  if (a1 != 3)
  {
    v2 = a1;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t SCNMTLTextureTypeMultisampledEquivalent(uint64_t a1)
{
  v1 = 4;
  if (a1 != 2)
  {
    v1 = a1;
  }

  if (a1 == 3)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t SCNMTLTextureTypeNonMultisampledEquivalent(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = a1;
  }

  if (a1 == 8)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

__CFString *SCNMTLTextureTypeToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Unkown";
  }

  else
  {
    return off_2782FCBA8[a1];
  }
}

uint64_t SCNMTLTextureToC3DTextureType(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [a1 textureType];
  if (v2 < 8 && ((0xA5u >> v2) & 1) != 0)
  {
    return dword_21C280B9C[v2];
  }

  v5 = scn_default_log(v2, v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v6)
  {
    v7[0] = 67109120;
    v7[1] = [a1 textureType];
    _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: unsupported texture type %d", v7, 8u);
    return 0;
  }

  return result;
}

BOOL C3DValueWriteToMTLData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  Type = C3DValueGetType(a1, a2);
  Bytes = C3DValueGetBytes(a1, v7);
  v12 = Bytes;
  switch(a2)
  {
    case 3:
      result = 0;
      if (Type <= 6u)
      {
        if (Type <= 2u)
        {
          if (Type != 1)
          {
            if (Type == 2)
            {
              v22 = v12->i32[0];
LABEL_157:
              *a3 = v22;
              return 1;
            }

            return result;
          }

LABEL_123:
          v22 = *v12->i32;
          goto LABEL_157;
        }

        if (Type != 3)
        {
          if (Type == 6)
          {
            v22 = *v12->i32;
            goto LABEL_157;
          }

          return result;
        }

        LOBYTE(v10) = v12->i8[0];
LABEL_155:
        v22 = v10;
        goto LABEL_157;
      }

      if (Type > 0xEu)
      {
        if (Type == 15)
        {
          v22 = __from_half(v12->u16[0]);
          goto LABEL_157;
        }

        if (Type != 17)
        {
          return result;
        }

        LOWORD(v10) = v12->i16[0];
        goto LABEL_155;
      }

      if (Type == 7)
      {
        goto LABEL_123;
      }

      if (Type == 14)
      {
        v22 = v12->i16[0];
        goto LABEL_157;
      }

      return result;
    case 4:
      result = 0;
      if (Type <= 0x1Cu)
      {
        if (Type == 8)
        {
          goto LABEL_97;
        }

        if (Type == 18)
        {
          v34 = vcvt_f32_s32(*v12);
          goto LABEL_98;
        }

        return result;
      }

      switch(Type)
      {
        case 0x1Du:
          LOWORD(v10) = v12->i16[0];
          *&v27 = v10;
          v11.i16[0] = v12->i16[1];
          *v11.i32 = v11.u32[0];
          break;
        case 0x20u:
          *&v27 = v12->i16[0];
          *v11.i32 = v12->i16[1];
          break;
        case 0x2Bu:
          v50 = __from_half(v12->u16[0]);
          *a3 = __PAIR64__(COERCE_UNSIGNED_INT(__from_half(v12->u16[1])), LODWORD(v50));
          return 1;
        default:
          return result;
      }

      HIDWORD(v27) = v11.i32[0];
      goto LABEL_149;
    case 5:
      result = 0;
      if (Type > 0x1Du)
      {
        if (Type == 30)
        {
          v11 = vmovl_u16(*v12);
          *v11.i8 = vcvt_f32_u32(*v11.i8);
          v29 = WORD2(*v12);
LABEL_144:
          *&v11.i32[2] = v29;
          goto LABEL_145;
        }

        if (Type != 33)
        {
          if (Type != 44)
          {
            return result;
          }

          v53 = *v12;
          *v28.i32 = __from_half(v12->u16[0]);
          v49 = v28;
          v47 = __from_half(v53.u16[1]);
          v29 = __from_half(v53.u16[2]);
          v11 = v49;
          *&v11.i32[1] = v47;
          goto LABEL_144;
        }

        v11 = vmovl_s16(*v12);
        *v11.i8 = vcvt_f32_s32(*v11.i8);
        v23 = WORD2(*v12);
      }

      else
      {
        if (Type == 9 || Type == 10)
        {
LABEL_102:
          v18 = *v12->i8;
LABEL_103:
          *a3 = v18;
          return 1;
        }

        if (Type != 19)
        {
          return result;
        }

        *v11.i8 = vcvt_f32_s32(*v12);
        v23 = v12[1];
      }

      v29 = v23;
      goto LABEL_144;
    case 6:
      result = 0;
      if (Type <= 0x1Eu)
      {
        if (Type == 10)
        {
          goto LABEL_102;
        }

        if (Type != 20)
        {
          return result;
        }

        v35 = *v12->i8;
      }

      else
      {
        if (Type == 31)
        {
          v18 = vcvtq_f32_u32(vmovl_u16(*v12));
          goto LABEL_103;
        }

        if (Type != 34)
        {
          if (Type != 45)
          {
            return result;
          }

          v51 = *v12;
          v48 = __from_half(v12->u16[0]);
          v46 = __from_half(v51.u16[1]);
          v45 = __from_half(v51.u16[2]);
          v21 = __from_half(v51.u16[3]);
          v11.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v48));
          v11.i64[1] = __PAIR64__(LODWORD(v21), LODWORD(v45));
LABEL_145:
          *a3 = v11;
          return 1;
        }

        v35 = vmovl_s16(*v12);
      }

      v18 = vcvtq_f32_s32(v35);
      goto LABEL_103;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
      goto LABEL_23;
    case 15:
      if (Type != 11)
      {
        return 0;
      }

      v18 = *Bytes->i8;
      v19 = *Bytes[2].i8;
      v20 = *Bytes[6].i8;
      *(a3 + 32) = *Bytes[4].i8;
      *(a3 + 48) = v20;
      *(a3 + 16) = v19;
      goto LABEL_103;
    case 16:
      result = 0;
      if (Type > 6u)
      {
        if (Type <= 0xEu)
        {
          if (Type != 7)
          {
            if (Type != 14)
            {
              return result;
            }

            v17 = v12->i16[0];
            goto LABEL_153;
          }

LABEL_122:
          v17 = *v12->i32;
LABEL_153:
          *a3 = __to_half(v17);
          return 1;
        }

        if (Type != 17)
        {
          if (Type != 15)
          {
            return result;
          }

          *a3 = v12->i16[0];
          return 1;
        }

        LOWORD(v10) = v12->i16[0];
      }

      else
      {
        if (Type <= 2u)
        {
          if (Type != 1)
          {
            if (Type != 2)
            {
              return result;
            }

            v17 = v12->i32[0];
            goto LABEL_153;
          }

          goto LABEL_122;
        }

        if (Type != 3)
        {
          if (Type != 6)
          {
            return result;
          }

          v17 = *v12->i32;
          goto LABEL_153;
        }

        LOBYTE(v10) = v12->i8[0];
      }

      v17 = v10;
      goto LABEL_153;
    case 17:
      result = 0;
      if (Type > 0x1Cu)
      {
        switch(Type)
        {
          case 0x1Du:
            LOWORD(v10) = v12->i16[0];
            v41 = __to_half(v10);
            LOWORD(v42) = v12->i16[1];
            v43 = v42;
            break;
          case 0x20u:
            v41 = __to_half(v12->i16[0]);
            v43 = v12->i16[1];
            break;
          case 0x2Bu:
LABEL_62:
            v14 = v12->i32[0];
LABEL_72:
            *a3 = v14;
            return 1;
          default:
            return result;
        }

        *(a3 + 2) = __to_half(v43);
        *a3 = v41;
        return 1;
      }

      if (Type == 8)
      {
        LODWORD(v62) = HIDWORD(*v12);
        v36 = __to_half(COERCE_FLOAT(*v12));
        v37 = v62;
      }

      else
      {
        if (Type != 18)
        {
          return result;
        }

        v61 = HIDWORD(*v12);
        v36 = __to_half(v12->i32[0]);
        v37 = v61;
      }

      *(a3 + 2) = __to_half(v37);
      *a3 = v36;
      return 1;
    case 18:
      result = 0;
      if (Type > 0x1Du)
      {
        if (Type != 30)
        {
          if (Type != 33)
          {
            if (Type == 44)
            {
              goto LABEL_97;
            }

            return result;
          }

          v60 = *v12;
          v24 = __to_half(v12->i16[0]);
          v25 = __to_half(v60.i16[1]);
          v26 = v60.i16[2];
          goto LABEL_147;
        }

        v59 = *v12;
        v24 = __to_half(v12->u16[0]);
        v25 = __to_half(v59.u16[1]);
        v38 = v59.u16[2];
      }

      else
      {
        if (Type != 9 && Type != 10)
        {
          if (Type != 19)
          {
            return result;
          }

          v52 = *v12->i8;
          v24 = __to_half(*v12->i8);
          v25 = __to_half(SDWORD1(v52));
          v26 = DWORD2(v52);
LABEL_147:
          v38 = v26;
          goto LABEL_148;
        }

        v55 = *v12->i8;
        v24 = __to_half(COERCE_FLOAT(*v12->i8));
        v25 = __to_half(*(&v55 + 1));
        v38 = *(&v55 + 2);
      }

LABEL_148:
      v44 = __to_half(v38);
      LOWORD(v27) = v24;
      WORD1(v27) = v25;
      WORD2(v27) = v44;
      goto LABEL_149;
    case 19:
      result = 0;
      if (Type <= 0x1Eu)
      {
        if (Type == 10)
        {
          v58 = *v12->i8;
          v30 = __to_half(COERCE_FLOAT(*v12->i8));
          v31 = __to_half(*(&v58 + 1));
          v32 = __to_half(*(&v58 + 2));
          v39 = *(&v58 + 3);
          goto LABEL_128;
        }

        if (Type != 20)
        {
          return result;
        }

        v54 = *v12->i8;
        v30 = __to_half(*v12->i8);
        v31 = __to_half(SDWORD1(v54));
        v32 = __to_half(SDWORD2(v54));
        v33 = HIDWORD(v54);
      }

      else
      {
        if (Type == 31)
        {
          v56 = *v12;
          v30 = __to_half(v12->u16[0]);
          v31 = __to_half(v56.u16[1]);
          v32 = __to_half(v56.u16[2]);
          v39 = v56.u16[3];
LABEL_128:
          v40 = __to_half(v39);
          LOWORD(v27) = v30;
          WORD1(v27) = v31;
          WORD2(v27) = v32;
          HIWORD(v27) = v40;
          goto LABEL_149;
        }

        if (Type != 34)
        {
          if (Type == 45)
          {
            goto LABEL_97;
          }

          return result;
        }

        v57 = *v12;
        v30 = __to_half(v12->i16[0]);
        v31 = __to_half(v57.i16[1]);
        v32 = __to_half(v57.i16[2]);
        v33 = v57.i16[3];
      }

      v39 = v33;
      goto LABEL_128;
    case 29:
    case 33:
      result = 0;
      if (Type > 0xDu)
      {
        if (Type == 14 || Type == 17)
        {
          v14 = v12->i16[0];
          goto LABEL_72;
        }
      }

      else
      {
        if (Type == 2)
        {
          goto LABEL_62;
        }

        if (Type == 3)
        {
          v14 = v12->u8[0];
          goto LABEL_72;
        }
      }

      return result;
    case 30:
    case 34:
      if (Type == 32 || Type == 29)
      {
        LODWORD(v27) = Bytes->i16[0];
        HIDWORD(v27) = Bytes->i16[1];
LABEL_149:
        *a3 = v27;
      }

      else
      {
        if (Type != 18)
        {
          return 0;
        }

LABEL_97:
        v34 = *v12;
LABEL_98:
        *a3 = v34;
      }

      return 1;
    case 31:
    case 35:
      if (Type == 33 || Type == 30)
      {
        goto LABEL_68;
      }

      if (Type == 19)
      {
        goto LABEL_102;
      }

      return 0;
    case 32:
    case 36:
      if (Type == 34 || Type == 31)
      {
LABEL_68:
        v18 = vmovl_s16(*Bytes);
        goto LABEL_103;
      }

      if (Type == 20)
      {
        goto LABEL_102;
      }

      return 0;
    default:
      if (a2 == 53)
      {
        if (Type == 17 || Type == 14)
        {
          v15 = Bytes->i16[0] != 0;
          goto LABEL_108;
        }

        if (Type == 3)
        {
          v15 = Bytes->i8[0];
LABEL_108:
          *a3 = v15;
          return 1;
        }
      }

      else
      {
LABEL_23:
        v16 = scn_default_log(Bytes, v9);
        result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 138412290;
        v64 = MTLDataTypeString();
        _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: C3DValueWriteToMTLData - Unsupported data type %@", buf, 0xCu);
      }

      return 0;
  }
}

float __from_half(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  if (v1 && v1 != 31)
  {
    v1 = (v1 << 23) + 939524096;
  }

  else if (v1 == 31)
  {
    v1 = 2139095040;
  }

  LODWORD(result) = (a1 << 16) & 0x80000000 | (a1 >> 7) & 7 | (8 * (a1 & 0x3FF)) & 0x1FFF | ((a1 & 0x3FF) << 13) | v1;
  return result;
}

uint64_t __to_half(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = v2 - 112;
  v4 = v2 - 113;
  v5 = v1 | 0x7BFF;
  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    LOWORD(v6) = v1 + 1;
  }

  else
  {
    v6 = HIWORD(LODWORD(a1)) & 0x8000;
  }

  v7 = v6 | 0x7C00;
  if (v2 == 255)
  {
    v5 = v7;
  }

  if (v2 >= 0x71)
  {
    v8 = v5;
  }

  else
  {
    v8 = HIWORD(a1) & 0x8000;
  }

  v9 = HIWORD(LODWORD(a1)) & 0x8000 | (LODWORD(a1) >> 13) & 0x3FF | (v3 << 10);
  if (v4 > 0x1D)
  {
    LOWORD(v9) = v8;
  }

  return v9;
}

void C3DValueWriteToStructMember(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = C3DValueWriteToMTLData(a1, [a2 dataType], a3 + objc_msgSend(a2, "offset"));
  if (!v5)
  {
    v7 = scn_default_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = C3DValueGetType(a1, v8);
      v10 = 2112;
      v11 = a2;
      _os_log_impl(&dword_21BEF7000, v7, OS_LOG_TYPE_DEFAULT, "Warning: value unsupported %d of member %@", v9, 0x12u);
    }
  }
}

CGImageRef C3DCreateImageWithTexture(void *a1)
{
  v2 = [a1 pixelFormat];
  if (v2 > 79)
  {
    if ((v2 - 80) < 2)
    {
      v4 = 8194;
      goto LABEL_9;
    }

    if (v2 == 125)
    {
      v4 = 16641;
      v5 = 32;
      goto LABEL_10;
    }

    if (v2 == 115)
    {
      v4 = 12545;
      v5 = 16;
LABEL_10:
      v6 = ((v5 * [a1 width]) >> 1) & 0xFFFFFFFC;
      v7 = malloc_type_malloc(v6 * [a1 height], 0x100004077774924uLL);
      v8 = [a1 width];
      v9 = [a1 height];
      v11 = C3DColorSpaceSRGB(v9, v10);
      v12 = CGBitmapContextCreate(v7, v8, v9, v5, v6, v11, v4);
      if ([a1 storageMode] == 2)
      {
        v13 = [objc_msgSend(a1 "device")];
        v14 = [objc_msgSend(a1 "device")];
        v15 = [v14 commandBuffer];
        v16 = [v15 blitCommandEncoder];
        [v16 copyFromTexture:a1 toTexture:v13];
        [v16 endEncoding];
        [v15 commit];
        [v15 waitUntilCompleted];

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = [a1 width];
        v24 = [a1 height];
        v25 = 1;
        [v13 getBytes:v7 bytesPerRow:v6 fromRegion:&v20 mipmapLevel:0];
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = [a1 width];
        v24 = [a1 height];
        v25 = 1;
        [a1 getBytes:v7 bytesPerRow:v6 fromRegion:&v20 mipmapLevel:0];
      }

      Image = CGBitmapContextCreateImage(v12);
      CGContextRelease(v12);
      free(v7);
      return Image;
    }
  }

  else if ((v2 - 70) < 5)
  {
    v4 = 16385;
LABEL_9:
    v5 = 8;
    goto LABEL_10;
  }

  v19 = scn_default_log(v2, v3);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    C3DCreateImageWithTexture_cold_1(a1, v19);
  }

  return 0;
}

uint64_t SCNTextureUsageFromString(const void *a1)
{
  if (CFEqual(a1, @"shaderRead"))
  {
    return 1;
  }

  if (CFEqual(a1, @"shaderWrite"))
  {
    return 2;
  }

  if (CFEqual(a1, @"renderTarget"))
  {
    return 4;
  }

  return 16 * (CFEqual(a1, @"pixelFormatView") != 0);
}

__CFString *SCNTextureUsageToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = v2;
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    [v2 appendString:@"MTLTextureUsageShaderRead"];
    if ((a1 & 2) == 0)
    {
      if ((a1 & 4) == 0)
      {
        if ((a1 & 0x10) == 0)
        {
          return v3;
        }

        goto LABEL_22;
      }

      goto LABEL_14;
    }

    [v3 appendString:@" | "];
LABEL_11:
    [v3 appendString:@"MTLTextureUsageShaderWrite"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_14:
    [v3 appendString:@" | "];
    v4 = 0;
    goto LABEL_15;
  }

  if ((a1 & 2) != 0)
  {
    goto LABEL_11;
  }

  if ((a1 & 4) == 0)
  {
    if ((a1 & 0x10) == 0)
    {
      return @"MTLTextureUsageUnknown";
    }

    goto LABEL_20;
  }

LABEL_13:
  v4 = 1;
LABEL_15:
  [v3 appendString:@"MTLTextureUsageRenderTarget"];
LABEL_16:
  if ((a1 & 0x10) == 0)
  {
    if (!v4)
    {
      return v3;
    }

    return @"MTLTextureUsageUnknown";
  }

  if (!v4)
  {
LABEL_22:
    [v3 appendString:@" | "];
    [v3 appendString:@"MTLTextureUsagePixelFormatView"];
    return v3;
  }

LABEL_20:
  [v3 appendString:@"MTLTextureUsagePixelFormatView"];
  return @"MTLTextureUsageUnknown";
}

uint64_t SCNTextureUsageFromStrings(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    v5 |= SCNTextureUsageFromString(ValueAtIndex);
    ++v4;
  }

  while (v3 != v4);
  return v5;
}

uint64_t C3DMeshSourceCreateWithMTLBuffer(_BOOL8 a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  if (!a2 && (v12 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    C3DMeshSourceCreateWithMTLBuffer_cold_1(v12, a2, v13, v14, v15, v16, v17, v18);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v19 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    C3DMeshSourceCreateWithMTLBuffer_cold_2(v19, a2, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  v26 = SCNMTLVertexFormatToC3DBaseType(a3, a2);
  ComponentType = C3DBaseTypeGetComponentType(v26, v27);
  ComponentCount = C3DBaseTypeGetComponentCount(v26, v29);
  v31 = C3DSourceAccessorCreate(ComponentType, ComponentCount, a4, a5, a6);
  v33 = C3DMeshSourceCreateWithAccessor(v31, v11);
  if (!v33)
  {
    v34 = scn_default_log(0, v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      C3DMeshSourceCreateWithAccessor_cold_1(v34, v35, v36, v37, v38, v39, v40, v41);
    }
  }

  C3DSourceAccessorSetSource(v31, v33);
  if (v31)
  {
    CFRelease(v31);
  }

  *(v33 + 72) = CFRetain(a2);
  *(v33 + 80) = a3;
  return v33;
}

__IOSurface *SCNMTLEnsureIOSurfaceBackingBufferValidity(__IOSurface *result, id *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      result = [*a2 iosurface];
      if (result)
      {
        v6 = result;
        IOSurfaceIncrementUseCount(result);
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __SCNMTLEnsureIOSurfaceBackingBufferValidity_block_invoke;
        v7[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v7[4] = v6;
        result = [(__IOSurface *)v4 addCompletedHandler:v7];
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t SCNMTLDeviceSupportsMemorylessStorage(void *a1)
{
  if (C3DSceneSourceGetSceneCount())
  {

    return [a1 supportsMemorylessRenderTargets];
  }

  else
  {

    return [a1 supportsFeatureSet:5];
  }
}

uint64_t SCNMetalLanguageVersion(uint64_t a1, uint64_t a2)
{
  if (SCNMetalLanguageVersion_onceToken != -1)
  {
    SCNMetalLanguageVersion_cold_1();
  }

  return SCNMetalLanguageVersion_languageVersion;
}

uint64_t __SCNMetalLanguageVersion_block_invoke()
{
  result = C3DWasLinkedBeforeMajorOSYear2019();
  if (result)
  {
    v2 = 0x20000;
  }

  else
  {
    v2 = 131073;
    result = C3DWasLinkedBeforeMajorOSYear2020(result, v1);
    if ((result & 1) == 0)
    {
      result = C3DWasLinkedBeforeMajorOSYear2021(result, v3);
      if (result)
      {
        v2 = 131075;
      }

      else
      {
        v2 = 0x20000;
      }
    }
  }

  SCNMetalLanguageVersion_languageVersion = v2;
  return result;
}

__CFString *copyPathExtension(uint64_t a1, uint64_t a2)
{
  URL = C3DImageGetURL(a1, a2);
  if (!URL)
  {
    return 0;
  }

  v3 = CFURLCopyPathExtension(URL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v3);
  CFStringLowercase(MutableCopy, 0);
  CFRelease(v4);
  return MutableCopy;
}

uint64_t C3DImageGetURL(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 96) == 1)
  {
    return *(a1 + 88);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DImageGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DImageGetTypeID_onceToken != -1)
  {
    C3DImageGetTypeID_cold_1();
  }

  return C3DImageGetTypeID_typeID;
}

double __C3DImageGetTypeID_block_invoke()
{
  C3DImageGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DImageContextClassSerializable;
  unk_2817412E0 = kC3DC3DImageContextClassSerializable;
  unk_2817412F0 = *off_282DC35D0;
  qword_281741298 = _C3DImageCopyInstanceVariables;
  return result;
}

uint64_t C3DImageCreate(uint64_t a1, uint64_t a2)
{
  if (C3DImageGetTypeID_onceToken != -1)
  {
    C3DImageGetTypeID_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DImageGetTypeID_typeID, 112);
  *(result + 116) &= 0xFCu;
  *(result + 120) = 1;
  return result;
}

uint64_t C3DImageCreateWithURL(const void *a1, uint64_t a2)
{
  v3 = C3DImageCreate(a1, a2);
  if (v3)
  {
    *(v3 + 88) = CFRetain(a1);
    *(v3 + 96) = 1;
  }

  return v3;
}

uint64_t C3DImageCreateWithData(const void *a1, uint64_t a2)
{
  v3 = C3DImageCreate(a1, a2);
  if (v3)
  {
    *(v3 + 88) = CFRetain(a1);
    *(v3 + 96) = 2;
  }

  return v3;
}

uint64_t C3DImageCreateWithRawData(const void *a1, uint64_t a2, char a3, double a4)
{
  v5 = a2;
  v8 = C3DImageCreateWithData(a1, a2);
  _C3DImageCreateTextureRawData(v8, 0, 1, a4);
  TextureRawData = C3DImageGetTextureRawData(v8);
  *(TextureRawData + 4) = v5;
  *(TextureRawData + 5) = a3;
  *(TextureRawData + 10) = 1;
  if (a3 == 4)
  {
    v10 = v5;
    if (v5 == 128)
    {
LABEL_16:
      v12 = 125;
LABEL_22:
      *(TextureRawData + 36) = v12;
      goto LABEL_25;
    }

    if (v5 == 64)
    {
LABEL_17:
      v12 = 110;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v10 = v5;
    if (v5 > 0x3Fu)
    {
      goto LABEL_14;
    }

    if (v5 == 16)
    {
LABEL_21:
      v12 = 30;
      goto LABEL_22;
    }

LABEL_12:
    if (v10 == 32)
    {
LABEL_13:
      v11 = xmmword_21C280BE0;
LABEL_24:
      *(TextureRawData + 24) = v11;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_25;
  }

  v10 = v5;
  if (v5 <= 0x1Fu)
  {
    if (v5 == 8)
    {
      v11 = xmmword_21C280BF0;
      goto LABEL_24;
    }

    if (v5 != 16)
    {
      goto LABEL_25;
    }

    *(TextureRawData + 24) = vdup_n_s32(0x1909u);
    *(TextureRawData + 32) = 5123;
    goto LABEL_21;
  }

  if (v5 == 32)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v10 == 64)
  {
    goto LABEL_17;
  }

  if (v10 == 128)
  {
    goto LABEL_16;
  }

LABEL_25:
  CFArrayAppendValue(*(TextureRawData + 40), a1);
  return v8;
}

uint64_t _C3DImageCreateTextureRawData(uint64_t a1, int a2, char a3, double a4)
{
  v8 = pthread_mutex_lock(&bitmapAccessSharedMutex);
  if (*(a1 + 72))
  {
    v10 = scn_default_log(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      _C3DImageCreateTextureRawData_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  *(a1 + 72) = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040B13EBABEuLL);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v19 = *(a1 + 72);
  *(v19 + 40) = Mutable;
  *v19 = a2;
  *(a1 + 80) &= ~2u;
  *(a1 + 104) = a4;
  *(a1 + 116) = *(a1 + 116) & 0xFE | a3 | 0xC;
  return pthread_mutex_unlock(&bitmapAccessSharedMutex);
}

uint64_t C3DImageGetTextureRawData(uint64_t a1)
{
  v2 = pthread_mutex_lock(&bitmapAccessSharedMutex);
  if (!a1)
  {
    v4 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageGetURL_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(a1 + 80) & 2) != 0)
  {
    *(a1 + 116) &= ~8u;
  }

  C3DImageGetSize(a1);
  v12 = *(a1 + 72);
  pthread_mutex_unlock(&bitmapAccessSharedMutex);
  return v12;
}

uint64_t C3DImageCreateWithPath(CFStringRef filePath)
{
  if (!filePath)
  {
    return 0;
  }

  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v4 = C3DImageCreateWithURL(v1, v2);
  CFRelease(v3);
  return v4;
}

uint64_t C3DImageCreateVerticalStripCubemapWithFaceImages(uint64_t *a1, uint64_t a2)
{
  v3 = 0;
  image[7] = *MEMORY[0x277D85DE8];
  do
  {
    if (!a1[v3])
    {
      v23 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        C3DImageCreateVerticalStripCubemapWithFaceImages_cold_2();
      }

      return 0;
    }

    ++v3;
  }

  while (v3 != 6);
  v4 = 0;
  v5 = 0;
  do
  {
    Size = C3DImageGetSize(a1[v4], a2);
    v8 = *(&Size + 1);
    if (*&Size != *(&Size + 1))
    {
      v42 = *&Size;
      v24 = scn_default_log(v6, a2);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(image[0]) = 67109632;
      HIDWORD(image[0]) = v4;
      LOWORD(image[1]) = 2048;
      *(&image[1] + 2) = v42;
      WORD1(image[2]) = 2048;
      *(&image[2] + 4) = v8;
      v25 = "Error: Cannot build cubemap from array of images because image at index %d is not square: %fx%f";
      v26 = v24;
      v27 = 28;
      goto LABEL_46;
    }

    v9 = floorf(*&Size);
    if (v4)
    {
      v10 = floorf(*(&Size + 1));
      if (v9 != v5 || v10 != v5)
      {
        v43 = *&Size;
        v28 = scn_default_log(v6, a2);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        LODWORD(image[0]) = 67110144;
        HIDWORD(image[0]) = v4;
        LOWORD(image[1]) = 2048;
        *(&image[1] + 2) = v43;
        WORD1(image[2]) = 2048;
        *(&image[2] + 4) = v8;
        WORD2(image[3]) = 2048;
        *(&image[3] + 6) = v5;
        HIWORD(image[4]) = 2048;
        image[5] = v5;
        v25 = "Error: Cannot build cubemap from array of images because image at index %d (%fx%f) does not have the expected size (%zux%zu)";
        v26 = v28;
        v27 = 48;
LABEL_46:
        _os_log_error_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_ERROR, v25, image, v27);
        return 0;
      }
    }

    else
    {
      v5 = v9;
    }

    ++v4;
  }

  while (v4 != 6);
  v12 = 0;
  v13 = 0;
  while (1)
  {
    TextureRawData = C3DImageGetTextureRawData(a1[v12]);
    if (!TextureRawData)
    {
      break;
    }

    if (v12 * 8)
    {
      if (!C3DTextureRawDataIsEqual(v13, TextureRawData))
      {
        break;
      }
    }

    else
    {
      v13 = TextureRawData;
    }

    if (++v12 == 6)
    {
      v16 = C3DImageGetTextureRawData(*a1);
      v18 = C3DImageCreate(v16, v17);
      *&v19 = v5;
      *(&v19 + 1) = (6 * v5);
      _C3DImageCreateTextureRawData(v18, *v16, 0, v19);
      *(v18 + 116) |= 0x38u;
      *(v18 + 120) = 5;
      v20 = C3DImageGetTextureRawData(v18);
      C3DTextureRawDataCopyAttributes(v20, v16);
      for (i = 0; i != 6; ++i)
      {
        v22 = C3DImageGetTextureRawData(a1[i]);
        CFArrayAppendValue(*(v20 + 40), *(v22 + 40));
      }

      return v18;
    }
  }

  v31 = 0;
  memset(image, 0, 48);
  while (1)
  {
    v32 = C3DImageCopyCGImage(a1[v31], v15);
    if (!v32)
    {
      break;
    }

    image[v31++] = v32;
    if (v31 == 6)
    {
      ColorSpace = CGImageGetColorSpace(image[0]);
      v34 = CGBitmapContextCreate(0, v5, 6 * v5, 8uLL, 4 * v5, ColorSpace, 0x4001u);
      v35 = v5;
      for (j = 5; j != -1; --j)
      {
        v45.origin.x = 0.0;
        v45.origin.y = 0.0;
        v45.size.width = v35;
        v45.size.height = v35;
        CGContextDrawImage(v34, v45, image[j]);
        CGContextTranslateCTM(v34, 0.0, v35);
      }

      v37 = CGBitmapContextCreateImage(v34);
      v18 = C3DImageCreateWithCGImage(v37, v38);
      *(v18 + 120) = 5;
      CGImageRelease(v37);
      CGContextRelease(v34);
      goto LABEL_40;
    }
  }

  v39 = scn_default_log(0, v15);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    C3DImageCreateVerticalStripCubemapWithFaceImages_cold_1();
  }

  v18 = 0;
LABEL_40:
  for (k = 0; k != 6; ++k)
  {
    v41 = image[k];
    if (v41)
    {
      CFRelease(v41);
      image[k] = 0;
    }
  }

  return v18;
}

double C3DImageGetSize(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 116) & 8) == 0)
  {
    *(a1 + 104) = 0;
    if (_mayBeASTC(a1, a2))
    {
      if (C3DASTCIsSupported() && (_loadASTC(a1) & 1) != 0)
      {
        goto LABEL_62;
      }

      if (!_mayBeKTX(a1, v4))
      {
LABEL_9:
        if ((C3DASTCIsSupported() & 1) == 0 && *(a1 + 96) == 1)
        {
          v6 = *(a1 + 88);
          if (v6)
          {
            v7 = [objc_msgSend(v6 "URLByDeletingPathExtension")];
            if (C3DFileMayExistAtURL(v7))
            {
              v8 = *(a1 + 88);
              if (v8 != v7)
              {
                if (v8)
                {
                  CFRelease(v8);
                  *(a1 + 88) = 0;
                }

                if (v7)
                {
                  v9 = CFRetain(v7);
                }

                else
                {
                  v9 = 0;
                }

                *(a1 + 88) = v9;
              }
            }
          }
        }

LABEL_20:
        if (_mayBePVRTC(a1, v5) && (_loadPVRTC(a1) & 1) != 0)
        {
          goto LABEL_62;
        }

        pthread_mutex_lock(&bitmapAccessSharedMutex);
        v10 = *(a1 + 64);
        if (v10)
        {
          Width = CGBitmapContextGetWidth(v10);
          Height = CGBitmapContextGetHeight(*(a1 + 64));
          *&v12 = Width;
          *(&v12 + 1) = Height;
          *(a1 + 104) = v12;
          pthread_mutex_unlock(&bitmapAccessSharedMutex);
          goto LABEL_62;
        }

        pthread_mutex_unlock(&bitmapAccessSharedMutex);
        v14 = *(a1 + 96);
        if (v14 == 1)
        {
          v17 = *(a1 + 88);
          if (v17)
          {
            v16 = C3DCreateImageSourceWithURL(v17);
            goto LABEL_30;
          }
        }

        else if (v14 == 2)
        {
          v15 = *(a1 + 88);
          if (v15)
          {
            v16 = CGImageSourceCreateWithData(v15, 0);
LABEL_30:
            v18 = v16;
            if (v16)
            {
              Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionaryAddValue(Mutable, *MEMORY[0x277CD3618], *MEMORY[0x277CBED10]);
              v20 = CGImageSourceCopyPropertiesAtIndex(v18, 0, Mutable);
              CFRelease(Mutable);
              v21 = 0;
              if (v20)
              {
                Value = CFDictionaryGetValue(v20, *MEMORY[0x277CD3450]);
                v23 = CFDictionaryGetValue(v20, *MEMORY[0x277CD3448]);
                v24 = CFDictionaryGetValue(v20, *MEMORY[0x277CD3410]);
                if (Value && v23)
                {
                  v25 = v24;
                  valuePtr = 0;
                  CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
                  CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr);
                  if (v25)
                  {
                    HIDWORD(v47) = 0;
                    CFNumberGetValue(v25, kCFNumberIntType, &v47 + 4);
                    v26 = SHIDWORD(v47) > 4;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  v27 = CFDictionaryGetValue(v20, *MEMORY[0x277CD2F28]);
                  if (v27)
                  {
                    v28 = v27;
                    v29 = CFDictionaryGetValue(v20, *MEMORY[0x277CD2F30]);
                    if (v29)
                    {
                      v30 = v29;
                      v47 = 0;
                      CFNumberGetValue(v28, kCFNumberFloatType, &v47 + 4);
                      CFNumberGetValue(v30, kCFNumberFloatType, &v47);
                      if (*(&v47 + 1) != *&v47 && *&v47 > 0.01)
                      {
                        v31 = *&v47 / *(&v47 + 1);
                        if (*&v47 <= *(&v47 + 1))
                        {
                          v31 = 1.0;
                        }

                        if (*(&v47 + 1) <= *&v47)
                        {
                          v32 = 1.0;
                        }

                        else
                        {
                          v32 = *(&v47 + 1) / *&v47;
                        }

                        if (v26)
                        {
                          v33 = v31;
                        }

                        else
                        {
                          v33 = v32;
                        }

                        if (!v26)
                        {
                          v32 = v31;
                        }

                        *&valuePtr = v32 * *&valuePtr;
                        *(&valuePtr + 1) = v33 * *(&valuePtr + 1);
                      }
                    }
                  }

                  v34 = *&valuePtr;
                  if (v26)
                  {
                    *&v35 = *&valuePtr;
                  }

                  else
                  {
                    *&v35 = *(&valuePtr + 1);
                  }

                  if (v26)
                  {
                    v34 = *(&valuePtr + 1);
                  }

                  *(&v35 + 1) = v34;
                  v46 = v35;
                  CFRelease(v20);
                  v21 = v46;
                }

                else
                {
                  CFRelease(v20);
                  v21 = 0;
                }
              }

              *(a1 + 104) = v21;
              CFRelease(v18);
              if (COERCE_FLOAT(*(a1 + 104)) > 0.0)
              {
                goto LABEL_62;
              }
            }
          }
        }

        v36 = C3DImageCopyCGImage(a1, v13);
        if (!v36)
        {
          v42 = C3DIsRunningInSCNTool(0, v37);
          if ((v42 & 1) == 0)
          {
            v44 = scn_default_log(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              C3DImageGetSize_cold_1();
            }
          }

          *(a1 + 116) |= 0x28u;
          if (C3DImageIsCubeMap(a1, v43))
          {
            v40 = 16;
          }

          else
          {
            v40 = 0;
          }

          v39 = *(a1 + 116);
          goto LABEL_63;
        }

        v38 = v36;
        *(a1 + 104) = CGImageGetWidth(v36);
        *(a1 + 108) = CGImageGetHeight(v38);
        CFRelease(v38);
LABEL_62:
        v39 = *(a1 + 116) | 0x28;
        v40 = 16;
LABEL_63:
        *(a1 + 116) = v39 & 0xEF | v40;
        return *(a1 + 104);
      }
    }

    else if (!_mayBeKTX(a1, v3))
    {
      goto LABEL_20;
    }

    if (_loadKTX(a1))
    {
      goto LABEL_62;
    }

    goto LABEL_9;
  }

  return *(a1 + 104);
}