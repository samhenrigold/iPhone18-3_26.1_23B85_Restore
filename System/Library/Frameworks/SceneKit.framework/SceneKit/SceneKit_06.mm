void *_C3DAnimationManagerAddAnimationForKey(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, const void *a2, const void *a3, void *key, const void *a5)
{
  v9 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v10 = scn_default_log(0, a2), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2);
  AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (AnimationPerKeyDictionaryForObject_cold_2)
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a3 && (v24 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v24, a2, v25, v26, v27, v28, v29, v30);
    if (key)
    {
      goto LABEL_11;
    }
  }

  else if (key)
  {
    goto LABEL_11;
  }

  v31 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2);
  AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);
  if (AnimationPerKeyDictionaryForObject_cold_2)
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v31, a2, v32, v33, v34, v35, v36, v37);
  }

LABEL_11:
  if (!a5)
  {
    v38 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v38, v39, v40, v41, v42, v43, v44, v45);
    }
  }

  _C3DAnimationManagerRemoveAnimationForKey(v9, key, a5);
  v46 = C3DAnimationNodeCreateWithAnimationAndAddToAnimationManager(v9, a2, a3, a5);
  v47 = v46;
  if (v46)
  {
    C3DAnimationNodeSetOwner(v46, key);
    C3DAnimationNodeSetAnimationManager(v47, v9);
    AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v9, key, 1);
    CFDictionarySetValue(AnimationPerKeyDictionaryForObject, a5, v47);
    if ((C3DAnimationGetIsSceneTimeBased(a2, v49) & 1) == 0)
    {
      C3DTransactionAddAnimationNode(v47);
    }

    CFRelease(v47);
  }

  return v47;
}

uint64_t C3DAnimationManagerPlayAnimationNode(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a2 && (v4 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = *(a2 + 121);
  *(a2 + 121) = v19 & 0xFFFBFFFF;
  C3DAnimationNodeSetPaused(a2, 0);
  Animation = C3DAnimationNodeGetAnimation(a2, v20);
  C3DTransactionGetAtomicTime();
  v23 = v22;
  PauseTime = C3DAnimationNodeGetPauseTime(Animation, v24);
  if (C3DAnimationGetIsSceneTimeBased(Animation, v26))
  {
    *(a2 + 80) = C3DAnimationNodeGetPauseTime(Animation, v27);
  }

  else
  {
    v28 = v23 + PauseTime;
    if ((v19 & 0x200000) == 0 || *(a2 + 128) == 0.0)
    {
      C3DAnimationNodeSetStartTime(a2, v27, v28);
      if ((C3DAnimationGetIsSceneTimeBased(Animation, v31) & 1) == 0 && (C3DAnimationGetIsImplicit(Animation, v32) & 1) == 0)
      {
        C3DAnimationNodeRestart(a2, v33);
      }
    }

    else
    {
      v29 = C3DAnimationNodeGetPauseTime(a2, v27);
      C3DAnimationNodeTimeJump(a2, v30, v28 - v29);
      *(a2 + 128) = 0;
    }
  }

  *(a2 + 104) = 0;
  *(a2 + 121) &= 0xFFFFFFF3;
  *(a2 + 72) = -1082130432;
  v34 = *(a2 + 152);
  if (v34 != -1)
  {
    ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v3 + 24), v34);
    C3DAnimationStackSetConstant(ValuePtrAtIndex, 0, v3);
  }

  result = C3DAnimationNodeGetChildCount(a2, v34);
  if (result >= 1)
  {
    v37 = result;
    for (i = 0; i != v37; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerPlayAnimationNode(v3, ChildAtIndex);
    }
  }

  return result;
}

void *C3DAnimationManagerAddAnimationForKey(_BOOL8 a1, const void *a2, const void *a3, void *a4, const void *a5)
{
  result = _C3DAnimationManagerAddAnimationForKey(a1, a2, a3, a4, a5);
  if (result)
  {

    return C3DAnimationManagerPlayAnimationNode(a1, result);
  }

  return result;
}

const void *_resolveAnimationGroupTargets(uint64_t a1, const void *a2, uint64_t a3, const __CFArray *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1, a2);
  if (AnimationCount < 1)
  {
    return 0;
  }

  v5 = AnimationCount;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 1;
  do
  {
    AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, v7);
    if (C3DAnimationIsGroup(AnimationAtIndex))
    {
      v11 = _resolveAnimationGroupTargets(AnimationAtIndex, a2, a3, a4);
      v13 = v11;
      if (v11)
      {
        if (v8)
        {
          v14 = CFGetTypeID(v11);
          if (v14 == C3DNodeGetTypeID(v14, v15))
          {
            v16 = _commonAncessor(a4, v6, v13);
LABEL_45:
            v6 = v16;
            v8 = 1;
            goto LABEL_53;
          }
        }
      }

      else if ((C3DWasLinkedBeforeMajorOSYear2018(0, v12) & 1) == 0)
      {
        goto LABEL_53;
      }

      v8 = 0;
      if (v6)
      {
        v33 = v6 == v13;
      }

      else
      {
        v33 = 1;
      }

      v34 = v33;
      v9 &= v34;
      v6 = v13;
      goto LABEL_53;
    }

    KeyPath = C3DAnimationGetKeyPath(AnimationAtIndex);
    v19 = C3DModelDescriptionResolveRootComponentInPath(KeyPath, a2, a3, 0);
    if (!v19 && (v20 = scn_default_log(0, v18), os_log_type_enabled(v20, OS_LOG_TYPE_ERROR)))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = KeyPath;
      _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: failed to resolve animation path (%@)", &buf, 0xCu);
      if (KeyPath)
      {
LABEL_11:
        Count = CFArrayGetCount(KeyPath);
        v23 = v19 == 0;
        if (Count < 1)
        {
          v23 = 1;
        }

        if (!v23)
        {
          TypeID = C3DNodeGetTypeID(Count, v22);
          if (TypeID == CFGetTypeID(v19))
          {
            Name = C3DNodeGetName(v19, v25);
            if (Name)
            {
              v27 = [@"/" stringByAppendingString:Name];
              ValueAtIndex = CFArrayGetValueAtIndex(KeyPath, 0);
              if (!CFEqual(v27, ValueAtIndex))
              {
                *&buf = 0;
                *(&buf + 1) = &buf;
                v59 = 0x2020000000;
                v60 = 0;
                RootNode = C3DSceneGetRootNode(a2, v29);
                if (RootNode)
                {
                  v55[0] = MEMORY[0x277D85DD0];
                  v55[1] = 3221225472;
                  v55[2] = ___resolveAnimationGroupTargets_block_invoke;
                  v55[3] = &unk_2782FC6E8;
                  v55[4] = &buf;
                  v55[5] = Name;
                  RootNode = C3DNodeApplyHierarchy(RootNode, v55);
                }

                if (*(*(&buf + 1) + 24) > 1)
                {
                  v35 = scn_default_log(RootNode, v31);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *v56 = 138412290;
                    v57 = Name;
                    _os_log_error_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_ERROR, "Error: can't update animation keypath using names because it is ambiguous (name=%@)", v56, 0xCu);
                  }
                }

                else
                {
                  v32 = [(__CFArray *)KeyPath mutableCopy];
                  [v32 replaceObjectAtIndex:0 withObject:v27];
                  C3DAnimationSetKeyPath(AnimationAtIndex, v32);
                }

                _Block_object_dispose(&buf, 8);
              }
            }
          }
        }
      }
    }

    else if (KeyPath)
    {
      goto LABEL_11;
    }

    v36 = C3DAnimationGetKeyPath(AnimationAtIndex);
    if (v36)
    {
      v37 = CFArrayGetCount(v36);
      v39 = v19 == 0;
      if (v37 < 1)
      {
        v39 = 1;
      }

      if (!v39)
      {
        v40 = C3DGenericSourceGetTypeID(v37, v38);
        if (v40 == CFGetTypeID(v19))
        {
          Listener = C3DGenericSourceGetListener(v19, v41);
          v44 = Listener;
          if (Listener)
          {
            v45 = C3DMorphGetTypeID(Listener, v43);
            if (v45 == CFGetTypeID(v44))
            {
              v19 = v44;
            }
          }
        }
      }
    }

    if (((v19 != 0) & v8) == 1)
    {
      v46 = CFGetTypeID(v19);
      if (v46 == C3DNodeGetTypeID(v46, v47))
      {
        v16 = _commonAncessor(a4, v6, v19);
        goto LABEL_45;
      }
    }

    v8 = 0;
    if (v6)
    {
      v48 = v6 == v19;
    }

    else
    {
      v48 = 1;
    }

    v49 = v48;
    v9 &= v49;
    v6 = v19;
LABEL_53:
    ++v7;
  }

  while (v5 != v7);
  if (v9)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_21BF68664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *_resolveAnimationClusterTargets(uint64_t a1, const void *a2, _BOOL8 a3, const __CFArray *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 168) + 20);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v34 = 8 * v4;
  v9 = 1;
  v10 = 1;
  do
  {
    v11 = *(*(*(a1 + 168) + 72) + v7);
    v12 = C3DModelDescriptionResolveRootComponentInPath(v11, a2, a3, 0);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      if (Count >= 1 && v12 != 0)
      {
        TypeID = C3DNodeGetTypeID(Count, v14);
        if (TypeID == CFGetTypeID(v12))
        {
          Name = C3DNodeGetName(v12, v17);
          if (Name)
          {
            v19 = [@"/" stringByAppendingString:Name];
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            if (!CFEqual(v19, ValueAtIndex))
            {
              v37 = 0;
              v38 = &v37;
              v39 = 0x2020000000;
              v40 = 0;
              RootNode = C3DSceneGetRootNode(a2, v21);
              if (RootNode)
              {
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = ___resolveAnimationClusterTargets_block_invoke;
                v36[3] = &unk_2782FC6E8;
                v36[4] = &v37;
                v36[5] = Name;
                RootNode = C3DNodeApplyHierarchy(RootNode, v36);
              }

              if (v38[6] > 1)
              {
                v27 = scn_default_log(RootNode, v23);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v42 = Name;
                  _os_log_error_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_ERROR, "Error: can't update animation keypath using names because it is ambiguous (name=%@)", buf, 0xCu);
                }
              }

              else
              {
                v24 = [(__CFArray *)v11 mutableCopy];
                [v24 replaceObjectAtIndex:0 withObject:v19];
                v25 = *(*(*(a1 + 168) + 72) + v7);
                if (v25 != v24)
                {
                  if (v25)
                  {
                    CFRelease(v25);
                    *(*(*(a1 + 168) + 72) + v7) = 0;
                  }

                  if (v24)
                  {
                    v26 = CFRetain(v24);
                  }

                  else
                  {
                    v26 = 0;
                  }

                  *(*(*(a1 + 168) + 72) + v7) = v26;
                }
              }

              _Block_object_dispose(&v37, 8);
            }
          }
        }
      }
    }

    if (v12 == 0 || (v9 & 1) == 0 || (v28 = CFGetTypeID(v12), v28 != C3DNodeGetTypeID(v28, v29)))
    {
      v9 = 0;
      if (v8)
      {
        v30 = v8 == v12;
      }

      else
      {
        v30 = 1;
      }

      v31 = v30;
      v10 &= v31;
      v8 = v12;
    }

    else
    {
      v8 = _commonAncessor(a4, v8, v12);
      v9 = 1;
    }

    v7 += 8;
  }

  while (v34 != v7);
  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_21BF689A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void C3DAnimationManagerAddAnimationToSceneForKey(_BOOL8 HitTestResultsWithSegment_cold_1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  if (!HitTestResultsWithSegment_cold_1 && (v9 = scn_default_log(0, a2), HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v9, a2, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log(HitTestResultsWithSegment_cold_1, a2);
  HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (HitTestResultsWithSegment_cold_1)
  {
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v16, a2, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a2 && (v23 = scn_default_log(HitTestResultsWithSegment_cold_1, a2), HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationForKey_cold_2(v23, a2, v24, v25, v26, v27, v28, v29);
    if (a5)
    {
      goto LABEL_11;
    }
  }

  else if (a5)
  {
    goto LABEL_11;
  }

  v30 = scn_default_log(HitTestResultsWithSegment_cold_1, a2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v30, a2, v31, v32, v33, v34, v35, v36);
  }

LABEL_11:
  RootNode = C3DSceneGetRootNode(a3, a2);
  if (!RootNode)
  {
    v39 = scn_default_log(0, v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v39, v40, v41, v42, v43, v44, v45, v46);
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  TypeID = C3DAnimationGroupGetTypeID(Mutable, v48);
  v50 = CFGetTypeID(a2);
  if (TypeID == v50)
  {
    v52 = _resolveAnimationGroupTargets(a2, a3, a4, Mutable);
  }

  else
  {
    v53 = C3DAnimationClusterGetTypeID(v50, v51);
    if (v53 == CFGetTypeID(a2))
    {
      v52 = _resolveAnimationClusterTargets(a2, a3, a4, Mutable);
    }

    else
    {
      v52 = 0;
    }
  }

  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = RootNode;
  }

  CFRelease(Mutable);
  v56 = C3DAnimationPlayerCreateWithAnimation(a2, v55);
  C3DEntityAddAnimationForKey(v54, v56, a5);
  C3DAnimationPlayerPlay(v56, v57);
  if (v56)
  {
    CFRelease(v56);
  }
}

void C3DAnimationManagerRemoveAllAnimationsForObject(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v3, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v20 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Copy = CFDictionaryCreateCopy(0, v20);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke;
    v22[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    v22[4] = v3;
    C3DCFDictionaryApplyBlock(Copy, v22);
    CFDictionaryRemoveValue(*(v3 + 48), key);
    CFRelease(Copy);
    CFRelease(v20);
  }
}

void __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    C3DAnimationManagerRemoveAnimationNode(v4, a3);
  }

  else
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __C3DAnimationManagerRemoveAllAnimationsForObject_block_invoke_cold_1(a2, v6);
    }
  }
}

void C3DAnimationManagerRemoveAnimationNode(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a2 && (v4 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = CFRetain(a2);
  if (*(v3 + 88))
  {
    v21 = scn_default_log(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerRemoveAnimationNode_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  _animationNodeCompleted(v3, a2);
  if (*(v3 + 88))
  {
    v31 = scn_default_log(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerRemoveAnimationNode_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  _C3DAnimationManagerDiscardAnimationNodeFromStack(v3, a2);
  *(a2 + 121) |= 0x800u;
  C3DAnimationNodeSetOwner(a2, 0);
  v40 = *(a2 + 192);
  if (v40)
  {
    C3DAnimationPlayerRemoveAnimationNode(v40, a2);
  }

  ChildCount = C3DAnimationNodeGetChildCount(a2, v39);
  if (ChildCount >= 1)
  {
    v42 = ChildCount;
    for (i = 0; i != v42; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      C3DAnimationManagerRemoveAnimationNode(v3, ChildAtIndex);
    }
  }

  CFRelease(a2);
}

void _C3DAnimationManagerRemoveAnimationForKey(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, void *key, const void *a3)
{
  v5 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v6 = scn_default_log(0, key), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
  AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (AnimationPerKeyDictionaryForObject_cold_2)
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v13, key, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v5, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v29 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Value = CFDictionaryGetValue(v29, a3);
    if (Value)
    {
      v31 = Value;
      CFRetain(Value);
      C3DAnimationNodeSetOwner(v31, 0);
      C3DAnimationManagerRemoveAnimationNode(v5, v31);
      CFDictionaryRemoveValue(v29, a3);
      CFRelease(v31);
    }

    if (!CFDictionaryGetCount(v29))
    {
      CFDictionaryRemoveValue(*(v5 + 48), key);
    }

    CFRelease(v29);
  }
}

void C3DAnimationManagerChangeSpeedOfAnimationForKey(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, void *key, const void *a3, float a4)
{
  v7 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v8 = scn_default_log(0, key), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
  AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (AnimationPerKeyDictionaryForObject_cold_2)
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v15, key, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v7, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    Value = CFDictionaryGetValue(AnimationPerKeyDictionaryForObject, a3);
    if (Value)
    {
      C3DAnimationNodeChangeSpeed(Value, a4, v32);
    }
  }
}

void C3DAnimationManagerFadeAndRemoveAllAnimationsForObject(_BOOL8 a1, void *key, double a3)
{
  v4 = a1;
  if (a3 == 0.0)
  {

    C3DAnimationManagerRemoveAllAnimationsForObject(a1, key);
    return;
  }

  if (!a1 && (v6 = scn_default_log(0, key), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (!key)
    {
LABEL_8:
      v13 = scn_default_log(a1, key);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v4, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v22 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __C3DAnimationManagerFadeAndRemoveAllAnimationsForObject_block_invoke;
    v23[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    *&v23[4] = a3;
    C3DCFDictionaryApplyBlock(v22, v23);
    CFRelease(v22);
  }
}

void __C3DAnimationManagerFadeAndRemoveAllAnimationsForObject_block_invoke(uint64_t a1, uint64_t a2, CFTimeInterval *a3)
{
  a3[11] = CACurrentMediaTime();
  a3[12] = CACurrentMediaTime();
  v5 = *(a1 + 32);
  if (v5 < 0.0001)
  {
    v5 = 0.0001;
  }

  a3[13] = v5;
}

void C3DAnimationManagerFadeAndRemoveAnimationForKey(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, void *key, const void *a3, double a4)
{
  v6 = AnimationPerKeyDictionaryForObject_cold_2;
  if (a4 == 0.0)
  {

    _C3DAnimationManagerRemoveAnimationForKey(AnimationPerKeyDictionaryForObject_cold_2, key, a3);
    return;
  }

  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v8 = scn_default_log(0, key), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (!key)
    {
LABEL_8:
      v15 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
      AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
      if (AnimationPerKeyDictionaryForObject_cold_2)
      {
        _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v15, key, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v22 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v6, key, 0);
  if (AnimationPerKeyDictionaryForObject)
  {
    v31 = AnimationPerKeyDictionaryForObject;
    CFRetain(AnimationPerKeyDictionaryForObject);
    Value = CFDictionaryGetValue(v31, a3);
    if (Value)
    {
      v33 = Value;
      Value[11] = CACurrentMediaTime();
      v34 = CACurrentMediaTime();
      v35 = 0.0001;
      if (a4 >= 0.0001)
      {
        v35 = a4;
      }

      v33[12] = v34;
      v33[13] = v35;
    }

    CFRelease(v31);
  }
}

void C3DAnimationManagerExecRemoveAnimation(_BOOL8 a1, void *key, const void *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, key), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, key);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  _C3DAnimationManagerRemoveAnimationForKey(v5, key, a3);
}

const __CFDictionary *C3DAnimationManagerGetAnimationNodeForKey(_BOOL8 AnimationNodeForKey_cold_2, void *key, const void *a3)
{
  v5 = AnimationNodeForKey_cold_2;
  if (!AnimationNodeForKey_cold_2 && (v6 = scn_default_log(0, key), AnimationNodeForKey_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationNodeForKey_cold_2, key);
  AnimationNodeForKey_cold_2 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (AnimationNodeForKey_cold_2)
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_2(v13, key, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(AnimationNodeForKey_cold_2, key);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  return _C3DAnimationManagerGetAnimationNodeForKey(v5, key, a3);
}

uint64_t C3DAnimationManagerStopAnimationNode(_BOOL8 a1, uint64_t a2, double a3)
{
  v5 = a1;
  if (!a2 && (v6 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Animation = C3DAnimationNodeGetAnimation(a2, a2);
  if ((C3DAnimationGetIsSceneTimeBased(Animation, v21) & 1) == 0)
  {
    C3DTransactionGetAtomicTime();
  }

  v23 = *(a2 + 121);
  if (a3 == 0.0)
  {
    *(a2 + 121) = v23 & 0xFFFFFFDB | 4;
  }

  else
  {
    *(a2 + 121) = v23 | 8;
    C3DTransactionGetAtomicTime();
    *(a2 + 96) = v24;
    *(a2 + 104) = a3;
  }

  *(a2 + 128) = 0;
  result = C3DAnimationNodeGetChildCount(a2, v22);
  if (result >= 1)
  {
    v26 = result;
    for (i = 0; i != v26; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerStopAnimationNode(v5, ChildAtIndex, a3);
    }
  }

  return result;
}

uint64_t C3DAnimationManagerPauseAnimationNode(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a1;
  if (!a2 && (v10 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v10, a2, v11, v12, v13, v14, v15, v16);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (a4)
  {
    result = C3DAnimationNodeGetPausedByScene(a2);
    if (result == a3)
    {
      return result;
    }

    PausedOrPausedByScene = C3DAnimationNodeGetPausedOrPausedByScene(a2);
    C3DAnimationNodeSetPausedByScene(a2, a3);
  }

  else
  {
    result = C3DAnimationNodeGetPaused(a2, a2);
    if (result == a3)
    {
      return result;
    }

    PausedOrPausedByScene = C3DAnimationNodeGetPausedOrPausedByScene(a2);
    C3DAnimationNodeSetPaused(a2, a3);
  }

  if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
  {
    v27 = 1;
  }

  else
  {
    v27 = (*(a2 + 121) >> 2) & 1;
  }

  if (v27 != PausedOrPausedByScene)
  {
    Animation = C3DAnimationNodeGetAnimation(a2, v26);
    v30 = a5;
    if (C3DAnimationGetIsSceneTimeBased(Animation, v29))
    {
      v30 = *(v9 + 136);
    }

    if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
    {
      C3DAnimationNodeSetPauseTime(a2, v31, v30);
    }

    else
    {
      v32 = *(a2 + 152);
      if (v32 != -1)
      {
        ValuePtrAtIndex = C3DArrayGetValuePtrAtIndex(*(v9 + 24), v32);
        C3DAnimationStackSetConstant(ValuePtrAtIndex, 0, v9);
      }

      if ((*(a2 + 121) & 4) != 0)
      {
        C3DAnimationNodeSetStartTime(a2, v32, v30);
      }

      else
      {
        PauseTime = C3DAnimationNodeGetPauseTime(a2, v32);
        C3DAnimationNodeTimeJump(a2, v35, v30 - PauseTime);
      }

      *(a2 + 121) &= ~4u;
    }
  }

  result = C3DAnimationNodeGetChildCount(a2, v26);
  if (result >= 1)
  {
    v36 = result;
    for (i = 0; i != v36; ++i)
    {
      ChildAtIndex = C3DAnimationNodeGetChildAtIndex(a2, i);
      result = C3DAnimationManagerPauseAnimationNode(v9, ChildAtIndex, a3, a4, a5);
    }
  }

  return result;
}

uint64_t C3DAnimationManagerGetAnimationForKeyIsPaused(_BOOL8 a1, void *a2, const void *a3)
{
  AnimationPerKeyDictionaryForObject = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(a1, a2, 0);
  if (!AnimationPerKeyDictionaryForObject)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(AnimationPerKeyDictionaryForObject, a3);
  if (!Value)
  {
    return 0;
  }

  return C3DAnimationNodeGetPaused(Value, v6);
}

const __CFDictionary *C3DAnimationManagerPauseAnimationForKey(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, void *key, const void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v12 = scn_default_log(0, key), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v12, key, v13, v14, v15, v16, v17, v18);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v19 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
  AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (AnimationPerKeyDictionaryForObject_cold_2)
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v19, key, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a3)
  {
    v26 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, key);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  result = _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject(v11, key, 0);
  if (result)
  {
    result = CFDictionaryGetValue(result, a3);
    if (result)
    {
      return C3DAnimationManagerPauseAnimationNode(v11, result, a4, a5, a6);
    }
  }

  return result;
}

CFTypeRef C3DAnimationManagerSetModelValueStorage(_BOOL8 a1, CFTypeRef cf)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, cf), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
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
    C3DAnimationManagerSetModelValueStorage_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v3 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v3 + 16) = result;
  }

  return result;
}

void C3DAnimationManagerApplyBindings(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 enumerateObjectsUsingBlock:&__block_literal_global_32];
  }

  os_unfair_lock_unlock((a1 + 64));
}

void *__C3DAnimationManagerApplyBindings_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  TargetAddress = C3DModelTargetGetTargetAddress(a2[2], a2);
  v5 = a2[4];
  if (v5)
  {
    v6 = C3DModelTargetGetTargetAddress(a2[3], v3);
    (*(v5 + 16))(v5, TargetAddress, v6, v19);
    TargetAddress = v19;
  }

  Target = C3DModelTargetGetTarget(a2[3], v3);
  v9 = C3DModelTargetGetTargetAddress(a2[3], v8);
  BaseType = C3DModelTargetGetBaseType(a2[3], v10);
  v13 = C3DSizeOfBaseType(BaseType, v12);
  TypeSemantic = C3DModelTargetGetTypeSemantic(a2[3], v14);
  ComponentIndex = C3DModelTargetGetComponentIndex(a2[3], v16);
  return C3DSetValue(Target, v9, TargetAddress, v13, TypeSemantic, ComponentIndex);
}

BOOL C3DAnimationManagerAddBinding(uint64_t a1, void *a2, const __CFString *a3, void *a4, const __CFString *a5, void *a6)
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
  if (!v12)
  {
LABEL_9:
    v23 = CFTypeIsC3DEntity(a2);
    v24 = v23;
    v26 = scn_default_log(v23, v25);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (!result)
      {
        return result;
      }

      C3DAnimationManagerAddBinding_cold_2(a2, a3, v26);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      C3DAnimationManagerAddBinding_cold_1();
    }

    return 0;
  }

  v14 = v12;
  if (!C3DModelTargetGetTargetAddress(v12, v13))
  {
    CFRelease(v14);
    goto LABEL_9;
  }

  v15 = C3DCFTypeCopyModelInfoAtPath(a4, a5, 0);
  if (!v15)
  {
    v28 = v14;
LABEL_16:
    CFRelease(v28);
    return 0;
  }

  v17 = v15;
  if (!C3DModelTargetGetTargetAddress(v15, v16))
  {
    CFRelease(v14);
    v28 = v17;
    goto LABEL_16;
  }

  BaseType = C3DModelTargetGetBaseType(v14, v18);
  if (BaseType != C3DModelTargetGetBaseType(v17, v20))
  {
    CFRelease(v14);
    CFRelease(v17);
    v29 = CFTypeIsC3DEntity(a2);
    if (v29 && (v29 = CFTypeIsC3DEntity(a4), v29))
    {
      v31 = scn_default_log(v29, v30);
      result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v36 = 138413058;
      Name = C3DEntityGetName(a2, v32);
      v38 = 2112;
      v39 = a3;
      v40 = 2112;
      v41 = C3DEntityGetName(a4, v33);
      v42 = 2112;
      v43 = a5;
    }

    else
    {
      v31 = scn_default_log(v29, v30);
      result = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v36 = 138413058;
      Name = a2;
      v38 = 2112;
      v39 = a3;
      v40 = 2112;
      v41 = a4;
      v42 = 2112;
      v43 = a5;
    }

    _os_log_error_impl(&dword_21BEF7000, v31, OS_LOG_TYPE_ERROR, "Error: Binding: Trying to bind two incompatible keypaths: %@(%@) -> %@(%@)", &v36, 0x2Au);
    return 0;
  }

  C3DAnimationManagerRemoveBinding(a1, a2, a3);
  v21 = objc_alloc_init(C3DAnimationBinding);
  v21->_source = v17;
  v21->_destination = v14;
  if (a2)
  {
    v22 = CFRetain(a2);
  }

  else
  {
    v22 = 0;
  }

  v21->_owner = v22;
  v34 = [a6 objectForKeyedSubscript:@"SCNBindingValueTransformerKey"];
  if (v34)
  {
    v21->_valueTransformer = _Block_copy(v34);
  }

  os_unfair_lock_lock((a1 + 64));
  v35 = *(a1 + 72);
  if (!v35)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(a1 + 72) = v35;
  }

  CFArrayAppendValue(v35, v21);
  os_unfair_lock_unlock((a1 + 64));

  return 1;
}

void C3DAnimationManagerRemoveBinding(uint64_t a1, void *a2, const __CFString *a3)
{
  os_unfair_lock_lock((a1 + 64));
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
    TargetAddress = C3DModelTargetGetTargetAddress(v7, v8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __C3DAnimationManagerRemoveBinding_block_invoke;
    v10[3] = &__block_descriptor_48_e15_B32__0_8Q16_B24l;
    v10[4] = a2;
    v10[5] = TargetAddress;
    [v6 removeObjectsAtIndexes:{objc_msgSend(v6, "indexesOfObjectsPassingTest:", v10)}];
    CFRelease(v7);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void C3DAnimationManagerRemoveAllBindings(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 72);
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __C3DAnimationManagerRemoveAllBindings_block_invoke;
    v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24l;
    v5[4] = a2;
    [v4 removeObjectsAtIndexes:{objc_msgSend(v4, "indexesOfObjectsPassingTest:", v5)}];
  }

  os_unfair_lock_unlock((a1 + 64));
}

void _C3DAnimationManagerCFFinalize(void *a1)
{
  v2 = a1[3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___C3DAnimationManagerCFFinalize_block_invoke;
  v13[3] = &__block_descriptor_40_e13_v24__0q8r_v16l;
  v13[4] = a1;
  C3DArrayApply(v2, v13);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = a1[9];
  if (v12)
  {
    CFRelease(v12);
    a1[9] = 0;
  }
}

void _C3DAnimationManagerFillLibraryForSerialization(uint64_t a1, void *context)
{
  if (!a1)
  {
    v4 = scn_default_log(0, context);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    CFDictionaryApplyFunction(v12, __fillLibraryWithAnimationPerObject, context);
  }
}

void __fillLibraryWithAnimationPerObject(int a1, CFDictionaryRef theDict, void *a3)
{
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, __fillLibraryWithAnimationPerKey, a3);
  }
}

void __fillLibraryWithAnimationPerKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  Animation = C3DAnimationNodeGetAnimation(a2, a2);
  if (!Animation)
  {
    return;
  }

  v5 = Animation;
  v6 = CFGetTypeID(Animation);
  TypeID = C3DKeyframedAnimationGetTypeID(v6, v7);
  if (v6 == TypeID)
  {
    v10 = C3DAnimationGroupCreate(TypeID, v9);
    C3DAnimationGroupAddAnimation(v10, v5);
    C3DLibraryAddEntry(a3, v10);
    v11 = v10;
LABEL_8:

    CFRelease(v11);
    return;
  }

  v12 = CFGetTypeID(v5);
  if (v12 == C3DAnimationClusterGetTypeID(v12, v13))
  {
    v15 = C3DAnimationGroupCreateWithAnimationCluster(v5, v14);
    C3DLibraryAddEntry(a3, v15);
    v11 = v15;
    goto LABEL_8;
  }

  C3DLibraryAddEntry(a3, v5);
}

BOOL _C3DAnimationManagerUpdateRelativeTimeOfAnimation(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
  v19 = *(a2 + 16);
  if (C3DAnimationNodeGetPausedOrPausedByScene(a2))
  {
    return 0;
  }

  v21 = *(a2 + 121);
  if ((v21 & 4) != 0)
  {
    return 0;
  }

  v22 = *(v19 + 84);
  if ((v22 & 8) != 0)
  {
    v23 = 1;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v3 + 91) == 1)
  {
    v23 = (v22 & 0x200) == 0;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = 0;
    if ((v21 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  *(a2 + 121) = v21 & 0xFFFFFFF9;
  PauseTime = C3DAnimationNodeGetPauseTime(v19, v20);
  if (!v23)
  {
    if (PauseTime == 0.0)
    {
      PauseTime = 0.0;
    }

    PauseTime = PauseTime + *(v3 + 144);
  }

  *(a2 + 80) = PauseTime;
LABEL_20:
  v43 = 0;
  v42 = 0;
  v25 = *(a2 + 121);
  v26 = 144;
  if (v23)
  {
    v26 = 136;
  }

  ContentTimeForTime = C3DAnimationNodeGetContentTimeForTime(a2, &v43 + 1, &v43, &v42, *(v3 + v26));
  v28 = *(a2 + 121);
  v29 = HIBYTE(v43);
  v30 = v42;
  *(a2 + 121) = v28 & 0xFFFFFFCF | (16 * HIBYTE(v43)) | (32 * v42);
  if ((v28 & 0x20) != 0 || v30)
  {
    v31 = *(v19 + 72);
    v32 = v31;
    v33 = v31 == 0.0;
    v34 = 1.0;
    if (!v33)
    {
      v34 = v32;
    }

    v35 = ContentTimeForTime / v34;
    v36 = *(a2 + 72);
    v37 = v35;
    *(a2 + 72) = v37;
    v38 = *(v19 + 96);
    if (v38)
    {
      C3DAnimationEventsTriggerEventsWithTimeChanges(v3, v38, (v28 >> 4) & 1, v29, a2, v36, v35);
    }
  }

  if ((*(v3 + 90) & 1) == 0)
  {
    v39 = *(a2 + 121);
    if ((v39 & 1) == 0)
    {
      *(a2 + 121) = v39 | 1;
      if (*(v19 + 144))
      {
        _C3DAnimationManagerAppendCallback(v3, a2, 1);
      }
    }

    if (v43 == 1 && ((*(v19 + 84) & 8) == 0 || *(a2 + 88) != 0.0))
    {
      *(a2 + 121) |= 0x400u;
      _animationNodeCompleted(v3, a2);
    }
  }

  if (v23)
  {
    return 0;
  }

  result = 1;
  if (v25 & 0x100) != 0 && (v43)
  {
    v41 = *(a2 + 40);
    if (v41)
    {
      return (*(v41 + 122) & 1) == 0;
    }

    return 0;
  }

  return result;
}

void _animationNodeCompleted(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 90) & 1) == 0)
  {
    v2 = *(a2 + 121);
    if ((v2 & 0x40) == 0)
    {
      *(a2 + 121) = v2 | 0x40;
      _C3DAnimationManagerAppendCallback(a1, a2, 6);
    }
  }
}

const void *_commonAncessor(const __CFArray *a1, const void *a2, const void *a3)
{
  v3 = a3;
  if (a2 == a3)
  {
    return v3;
  }

  Count = CFArrayGetCount(a1);
  if (Count)
  {
    if (!v3)
    {
LABEL_11:
      v13 = scn_default_log(Count, v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _commonAncessor_cold_1(v13);
      }

      return 0;
    }

    v8 = Count;
    while (2)
    {
      if (v3 != a2)
      {
        v9 = 0;
        v10 = v8;
        while (v10-- >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
          v9 |= ValueAtIndex == a2;
          if (ValueAtIndex == v3)
          {
            if (v9)
            {
              return a2;
            }

            return v3;
          }
        }

        Count = C3DNodeGetParent(v3, v7);
        v3 = Count;
        if (Count)
        {
          continue;
        }

        goto LABEL_11;
      }

      break;
    }
  }

  else if (v3)
  {
    Parent = v3;
    do
    {
      CFArrayAppendValue(a1, Parent);
      Parent = C3DNodeGetParent(Parent, v15);
    }

    while (Parent);
  }

  return v3;
}

uint64_t ___resolveAnimationGroupTargets_block_invoke(uint64_t a1, uint64_t a2)
{
  Name = C3DNodeGetName(a2, a2);
  if (Name && CFEqual(Name, *(a1 + 40)) && (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) > 1))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t ___resolveAnimationClusterTargets_block_invoke(uint64_t a1, uint64_t a2)
{
  Name = C3DNodeGetName(a2, a2);
  if (Name && CFEqual(Name, *(a1 + 40)) && (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) > 1))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

double __C3DKeyframeControllerGetTypeID_block_invoke()
{
  C3DKeyframeControllerGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DKeyframeControllerContextClassSerializable;
  unk_28173FB50 = kC3DC3DKeyframeControllerContextClassSerializable;
  unk_28173FB60 = *off_282DC2FE0;
  return result;
}

uint64_t C3DPreviousKeyFrameIndexForTime(float *a1, int a2, float *a3)
{
  v4 = a2 - 1;
  v5 = *a3;
  if (a2 - 1 < 1)
  {
LABEL_10:
    result = 0;
    if (*a1 > v5)
    {
      *a3 = *a1;
    }
  }

  else
  {
    result = 0;
    do
    {
      v7 = (result + v4) >> 1;
      if (a1[v7] >= v5)
      {
        v4 = v7 - 1;
      }

      else
      {
        if (result == v7)
        {
          if (a1[v4] <= v5)
          {
            return v4;
          }

          else
          {
            return result;
          }
        }

        result = (result + v4) >> 1;
      }
    }

    while (v4 > result);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t _C3DKeyframeControllerCreate(uint64_t a1)
{
  if (C3DKeyframeControllerGetTypeID_onceToken != -1)
  {
    _C3DKeyframeControllerCreate_cold_1();
  }

  v2 = C3DKeyframeControllerGetTypeID_typeID;

  return C3DTypeCreateInstance_(v2, 104);
}

const void *C3DKeyframeControllerCreateWithPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _C3DKeyframeControllerCreate(a1);
  v7 = v6;
  if (v6 && (C3DInitWithPropertyList(v6, a1, a2, a3) & 1) == 0)
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

uint64_t C3DKeyframeControllerCreateWithCapacity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v14 = _C3DKeyframeControllerCreate(a1);
  v15 = v14;
  if (v14)
  {
    _C3DKeyframeControllerSetupWithCapacity(v14, a1, a2, v11, v10, v9, v8, v7);
  }

  return v15;
}

uint64_t (*_C3DKeyframeControllerSetupWithCapacity(_BOOL8 a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, int a7, int a8))()
{
  v14 = a2;
  v15 = a1;
  if (!a1 && (v16 = scn_default_log(0, a2), a1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT)))
  {
    _C3DKeyframeControllerSetupWithCapacity_cold_1(v16, a2, v17, v18, v19, v20, v21, v22);
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else if (v14)
  {
    goto LABEL_6;
  }

  v23 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    _C3DKeyframeControllerSetupWithCapacity_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
  }

LABEL_6:
  *(v15 + 40) = C3DMalloc(4 * v14);
  *(v15 + 24) = v14;
  v32 = C3DSizeOfBaseType(a3, v31);
  *(v15 + 30) = v32;
  *(v15 + 28) = a3;
  *(v15 + 115) = a4;
  *(v15 + 48) = C3DMalloc(v32 * v14);
  if (a5)
  {
    *(v15 + 64) = C3DMalloc(v14);
  }

  if (a7)
  {
    *(v15 + 72) = C3DMalloc(4 * v14);
    *(v15 + 80) = C3DMalloc(4 * v14);
    *(v15 + 88) = C3DMalloc(4 * v14);
  }

  *(v15 + 114) = a8;
  if (a8)
  {
    ComponentCount = C3DBaseTypeGetComponentCount(a3, v33);
    *(v15 + 113) = ComponentCount;
    *(v15 + 96) = C3DMalloc(ComponentCount * 8 * v14);
    *(v15 + 104) = C3DMalloc(8 * v14 * *(v15 + 113));
  }

  if (a6)
  {
    *(v15 + 56) = C3DMalloc(16 * v14);
  }

  result = C3DKeyFrameInterpolatorForType(*(v15 + 28), *(v15 + 115), 0, *(v15 + 31), *(v15 + 64) == 0);
  *(v15 + 32) = result;
  return result;
}

BOOL C3DKeyframeControllerSetKeyframeAtIndex(_BOOL8 a1, uint64_t a2, void *__src, char a4, uint64_t a5, const void *a6, const void *a7, double a8, float a9, float a10, float a11)
{
  v20 = a2;
  v21 = a1;
  if (!a1)
  {
    v22 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v22, a2, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(v21 + 24);
  if (v29 <= v20)
  {
    v45 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_3();
    }
  }

  else
  {
    v30 = a8;
    v31 = *(v21 + 48);
    *(*(v21 + 40) + 4 * v20) = v30;
    v32 = *(v21 + 16);
    if (v32 <= a8)
    {
      v32 = a8;
    }

    *(v21 + 16) = v32;
    memcpy((v31 + *(v21 + 30) * v20), __src, *(v21 + 30));
    v34 = *(v21 + 64);
    if (v34 && *(v21 + 24) > v20)
    {
      *(v34 + v20) = a4;
    }

    v35 = *(v21 + 72);
    if (v35)
    {
      *(v35 + 4 * v20) = a9;
    }

    v36 = *(v21 + 80);
    if (v36)
    {
      *(v36 + 4 * v20) = a10;
    }

    v37 = *(v21 + 88);
    if (v37)
    {
      *(v37 + 4 * v20) = a11;
    }

    if (a6)
    {
      v38 = *(v21 + 96);
      if (v38)
      {
        *(v21 + 114) = 0;
        memcpy((v38 + 8 * *(v21 + 113) * v20), a6, 8 * *(v21 + 113));
      }
    }

    if (a7)
    {
      v39 = *(v21 + 104);
      if (v39)
      {
        *(v21 + 114) = 0;
        memcpy((v39 + 8 * *(v21 + 113) * v20), a7, 8 * *(v21 + 113));
      }
    }

    v40 = *(v21 + 56);
    if (v40)
    {
      v41 = 4 * v20;
      if (a5)
      {
        ControlPoints = C3DTimingFunctionGetControlPoints(a5, v33);
        v40 = *(v21 + 56);
        v43 = 4 * v41;
        v44 = *ControlPoints;
      }

      else
      {
        v43 = 4 * v41;
        v44 = 0uLL;
      }

      *(v40 + v43) = v44;
    }
  }

  return v29 > v20;
}

double C3DKeyframeControllerGetDuration(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DKeyframeControllerEvaluateAtTime(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a2;
  v9 = a1;
  if (!a1)
  {
    v10 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if (!*(v9 + 48))
  {
    v17 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerEvaluateAtTime_cold_2(v17, a2, v18, v19, v20, v21, v22, v23);
    }
  }

  if (!*(v9 + 32))
  {
    v24 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerEvaluateAtTime_cold_3(v24, a2, v25, v26, v27, v28, v29, v30);
    }
  }

  if (!*(v9 + 24))
  {
    v31 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  v39 = *(v9 + 31);
  v40 = a5;
  v61 = v40;
  v41 = *(v9 + 40);
  v42 = *(v9 + 24);
  v43 = C3DPreviousKeyFrameIndexForTime(v41, v42, &v61);
  v45 = v43;
  v46 = v42 - 1;
  if (v43 + 1 < v42 - 1)
  {
    v47 = v43 + 1;
  }

  else
  {
    v47 = v42 - 1;
  }

  v48 = *(v9 + 48);
  v49 = *(v9 + 30);
  v50 = *(v9 + 64);
  if (v50)
  {
    if (v43 < v46)
    {
      v46 = v43;
    }

    v39 = *(v50 + v46);
  }

  v51 = v48 + v43 * v49;
  v52 = v48 + (v47 * v49);
  if (v39 == 1 || *(v9 + 28) == 3)
  {
    v53 = *(v9 + 32);
    v44.n128_f64[0] = v61;
    if (v7)
    {
      v54 = v52;
    }

    else
    {
      v54 = v51;
    }

    v55 = v39;
    v56 = v54;
  }

  else
  {
    v58 = v41[v43];
    v59 = v41[v47] - v58;
    if (v59 == 0.0)
    {
      v44.n128_u32[0] = 0;
    }

    else
    {
      v44.n128_f32[0] = (v61 - v58) / v59;
    }

    v60 = *(v9 + 56);
    if (v60)
    {
      v44.n128_f32[0] = C3DTimingFunctionSolveCurve((v60 + 16 * v43), v44.n128_f32[0]);
    }

    if (v39)
    {
      v44.n128_f64[0] = v44.n128_f32[0];
      (*(v9 + 32))(v51, v52, v39, *(v9 + 104) + 8 * v45 * *(v9 + 113), *(v9 + 96) + 8 * v47 * *(v9 + 113), a3, a4, v44);
      return 1;
    }

    v53 = *(v9 + 32);
    v44.n128_f64[0] = v44.n128_f32[0];
    v54 = v51;
    v56 = v52;
    v55 = 0;
  }

  v53(v54, v56, v55, 0, 0, a3, a4, v44);
  return 1;
}

uint64_t C3DKeyframeControllerGetKeyCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DKeyframeControllerGetValueType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 28);
}

uint64_t C3DKeyframeControllerGetKeyframeSemantic(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return C3DKeyFrameInterpolatorGetSemantic(*(a1 + 32));
}

double C3DKeyframeControllerGetKeyTimeAtIndex(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  result = 0.0;
  if (v12)
  {
    if (*(a1 + 24) > v2)
    {
      return *(v12 + 4 * v2);
    }
  }

  return result;
}

uint64_t C3DKeyframeControllerGetValueAtIndex(uint64_t a1, uint64_t a2, void *__dst)
{
  v4 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 48);
  if (!v14)
  {
    return 0;
  }

  memcpy(__dst, (v14 + *(a1 + 30) * v4), *(a1 + 30));
  return *(a1 + 30);
}

void C3DKeyframeControllerSetupKeyTimesForPacedMode(_BOOL8 a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a1;
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (!*(v4 + 48))
  {
    v12 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerEvaluateAtTime_cold_2(v12, a2, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(v4 + 24);
  if (v19 >= 2)
  {
    if (!*(v4 + 40))
    {
      *(v4 + 40) = C3DMalloc(4 * v19);
    }

    v20 = *(v4 + 28);
    v21 = (v19 - 1);
    v22 = *(v4 + 48);
    v23 = 0.0;
    v24 = 1;
    do
    {
      v25 = v22;
      v26 = v24 * *(v4 + 30);
      v22 = (*(v4 + 48) + v26);
      switch(v20)
      {
        case 1:
        case 7:
          a3.f32[0] = vabds_f32(v25->f32[0], v22->f32[0]);
          goto LABEL_29;
        case 2:
          v30 = v25->f32[0];
          v31 = v22->f32[0];
          goto LABEL_27;
        case 3:
        case 16:
          LODWORD(v30) = v25->u8[0];
          LODWORD(v31) = v22->u8[0];
          goto LABEL_27;
        case 4:
          LODWORD(v30) = v25->i8[0];
          LODWORD(v31) = v22->i8[0];
          goto LABEL_27;
        case 6:
          v33 = vabdd_f64(*v25, *v22);
          break;
        case 8:
        case 18:
          v27 = vsub_f32(*v25, *v22);
          *a3.f32 = vmul_f32(v27, v27);
          goto LABEL_15;
        case 9:
        case 19:
          *a3.f32 = *v25;
          a3.i32[2] = v25[1].i32[0];
          *a4.f32 = *v22;
          a4.i32[2] = v22[1].i32[0];
          v28 = vsubq_f32(a3, a4);
          a3 = vmulq_f32(v28, v28);
          a3.f32[0] = a3.f32[2] + vaddv_f32(*a3.f32);
          goto LABEL_16;
        case 10:
        case 20:
          v29 = vsubq_f32(*v25->f32, *v22->f32);
          a3 = vmulq_f32(v29, v29);
          a4 = vextq_s8(a3, a3, 8uLL);
          *a3.f32 = vadd_f32(*a3.f32, *a4.f32);
LABEL_15:
          a3.f32[0] = vaddv_f32(*a3.f32);
LABEL_16:
          a3.f32[0] = sqrtf(a3.f32[0]);
          goto LABEL_29;
        case 11:
          a3.f32[0] = C3DMatrix4x4Distance(v25);
          goto LABEL_29;
        case 13:
          a3.f32[0] = C3DColor4Distance(v25, (*(v4 + 48) + v26));
LABEL_29:
          v33 = a3.f32[0];
          break;
        case 14:
          LODWORD(v30) = v25->i16[0];
          LODWORD(v31) = v22->i16[0];
          goto LABEL_27;
        case 17:
          LODWORD(v30) = v25->u16[0];
          LODWORD(v31) = v22->u16[0];
LABEL_27:
          v33 = fabs((LODWORD(v30) - LODWORD(v31)));
          break;
        default:
          v32 = scn_default_log(v25, a2);
          v33 = 0.0;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v40 = v20;
            _os_log_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_DEFAULT, "Warning: _C3DKeyDistance - can't compute key distance for type %d", buf, 8u);
          }

          break;
      }

      v23 = v23 + v33;
      v34 = v23;
      v35 = *(v4 + 40);
      *&v35[v24++] = v34;
      v36 = v24 - v21;
    }

    while (v24 - v21 != 1);
    *v35 = 0;
    do
    {
      if (v23 == 0.0)
      {
        v37 = (v36 / v19) + -1.0;
      }

      else
      {
        v37 = *&v35[v36] / v23;
      }

      v38 = v37;
      *&v35[v36++] = v38;
    }

    while (v19 != v36);
    *(v4 + 16) = *&v35[v21];
  }
}

void C3DKeyframeControllerSetCalculationMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 112) = v2;
}

uint64_t C3DKeyframeControllerGetCalculationMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

uint64_t (*C3DKeyframeControllerSetDefaultInterpolationMode(uint64_t a1, uint64_t a2))()
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 31) = v2;
  result = C3DKeyFrameInterpolatorForType(*(a1 + 28), *(a1 + 115), 0, v2, *(a1 + 64) == 0);
  *(a1 + 32) = result;
  return result;
}

uint64_t C3DKeyframeControllerGetDefaultInterpolationMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 31);
}

void _C3DKeyframeControllerRemoveUselessKeys(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 31);
  if (*(v2 + 96))
  {
    if (v10 == 2)
    {
LABEL_6:
      v11 = scn_default_log(a1, a2);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "Warning: can't simplify keyframes because of cubic interpolation";
      goto LABEL_17;
    }
  }

  else
  {
    if (*(v2 + 104))
    {
      v13 = v10 == 2;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 72) || *(v2 + 88) || *(v2 + 80))
  {
    v11 = scn_default_log(a1, a2);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "Warning: can't simplify keyframes because of tcb values";
    goto LABEL_17;
  }

  if (*(v2 + 56) || *(v2 + 64))
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Warning: can't simplify keyframes because of timing functions";
LABEL_17:
      _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }
  }

  else
  {
    v14 = *(v2 + 24);
    if (v14 >= 3)
    {
      v39 = 0u;
      v40 = 0u;
      *buf = 0u;
      v38 = 0u;
      memset(v36, 0, sizeof(v36));
      memset(__dst, 0, sizeof(__dst));
      memset(v34, 0, sizeof(v34));
      Mutable = C3DIndexSetCreateMutable();
      v16 = 0;
      v17 = 0;
      v18 = *(v2 + 28);
      v20 = v10 == 1 || *(v2 + 28) == 3;
      v33 = v14;
      do
      {
        C3DKeyframeControllerGetValueAtIndex(v2, v16 + 1, buf);
        C3DKeyframeControllerGetValueAtIndex(v2, v17, __dst);
        if (v20)
        {
          v21.n128_u64[0] = 0;
          (*(v2 + 32))(__dst, __dst, v10, 0, 0, 0, v36, v21);
        }

        else
        {
          C3DKeyframeControllerGetValueAtIndex(v2, v16 + 2, v34);
          KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(v2, v16 + 1);
          v23 = C3DKeyframeControllerGetKeyTimeAtIndex(v2, v17);
          v24.n128_f64[0] = (KeyTimeAtIndex - v23) / (C3DKeyframeControllerGetKeyTimeAtIndex(v2, v16 + 2) - v23);
          (*(v2 + 32))(__dst, v34, v10, 0, 0, 0, v36, v24);
        }

        if (_compareValuesWithAccuracy(buf, v36, v18))
        {
          v17 = v16 + 1;
        }

        else
        {
          C3DIndexSetAddIndex(Mutable, v16 + 1, v25);
        }

        ++v16;
      }

      while ((v14 - 1) - 1 != v16);
      Count = C3DIndexSetGetCount(Mutable);
      if (Count >= 1)
      {
        v27 = v14 - Count;
        v29 = *(v2 + 40);
        v28 = *(v2 + 48);
        *(v2 + 24) = v33 - Count;
        *(v2 + 40) = C3DMalloc(4 * (v33 - Count));
        v30 = C3DMalloc(v27 * *(v2 + 30));
        v31 = 0;
        v32 = 0;
        *(v2 + 48) = v30;
        do
        {
          if (!C3DIndexSetContainsIndex(Mutable, v31))
          {
            C3DKeyframeControllerSetKeyframeAtIndex(v2, v32, &v28[v31 * *(v2 + 30)], v10, 0, 0, 0, v29[v31], 0.0, 0.0, 0.0);
            v32 = (v32 + 1);
          }

          ++v31;
        }

        while (v33 != v31);
        if (v29)
        {
          free(v29);
        }

        if (v28)
        {
          free(v28);
        }
      }

      CFRelease(Mutable);
    }
  }
}

BOOL _compareValuesWithAccuracy(double *a1, double *a2, uint64_t a3)
{
  result = 1;
  if (a3 > 12)
  {
    if ((a3 - 14) >= 7)
    {
      if (a3 != 13)
      {
        return result;
      }

      goto LABEL_21;
    }

LABEL_13:
    v11 = C3DSizeOfBaseType(a3, a2);
    return memcmp(a1, a2, v11) != 0;
  }

  if (a3 > 6)
  {
    v12 = C3DSizeOfBaseType(a3, a2);
    if (v12 < 4)
    {
      return 0;
    }

    if (vabds_f32(*a1, *a2) <= 0.000001)
    {
      v7 = v12 >> 2;
      v13 = 1;
      do
      {
        v9 = v13;
        if (v7 == v13)
        {
          break;
        }

        v14 = vabds_f32(*(a1 + v13), *(a2 + v13));
        ++v13;
      }

      while (v14 <= 0.000001);
      return v9 < v7;
    }

    return 1;
  }

  if ((a3 - 2) < 4)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
LABEL_21:
    v15 = C3DSizeOfBaseType(a3, a2);
    if (v15 < 4)
    {
      return 0;
    }

    if (vabds_f32(*a1, *a2) <= 0.000001)
    {
      v7 = v15 >> 2;
      v16 = 1;
      do
      {
        v9 = v16;
        if (v7 == v16)
        {
          break;
        }

        v17 = vabds_f32(*(a1 + v16), *(a2 + v16));
        ++v16;
      }

      while (v17 <= 0.000001);
      return v9 < v7;
    }

    return 1;
  }

  if (a3 != 6)
  {
    return result;
  }

  v6 = C3DSizeOfBaseType(6, a2);
  if (v6 < 8)
  {
    return 0;
  }

  if (vabdd_f64(*a1, *a2) > 0.000001)
  {
    return 1;
  }

  v7 = v6 >> 3;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    v10 = vabdd_f64(a1[v8], a2[v8]);
    ++v8;
  }

  while (v10 <= 0.000001);
  return v9 < v7;
}

void C3DKeyframeControllerRemoveUselessKeys(uint64_t a1, _BYTE *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  _C3DKeyframeControllerRemoveUselessKeys(a1, a2);
  if (a1 || (v6 = scn_default_log(v4, v5), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v6, v5, v7, v8, v9, v10, v11, v12);
  if (a2)
  {
LABEL_4:
    *a2 = 0;
  }

LABEL_5:
  if ((!*(a1 + 96) && !*(a1 + 104) || *(a1 + 31) != 2) && !*(a1 + 72) && !*(a1 + 88) && !*(a1 + 80) && !*(a1 + 56) && !*(a1 + 64) && C3DKeyframeControllerGetKeyCount(a1, v5) == 2)
  {
    memset(__dst, 0, sizeof(__dst));
    memset(v15, 0, sizeof(v15));
    v13 = *(a1 + 28);
    if (C3DKeyframeControllerGetValueAtIndex(a1, 0, __dst))
    {
      if (C3DKeyframeControllerGetValueAtIndex(a1, 1, v15))
      {
        v14 = _compareValuesWithAccuracy(__dst, v15, v13);
        if (a2)
        {
          if (!v14)
          {
            *a2 = 1;
          }
        }
      }
    }
  }
}

uint64_t __C3DKeyframeControllerCopyGenericSource(uint64_t a1, const UInt8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v8 = a4;
  v9 = a4 * a3 * *(a1 + 24);
  if (a6)
  {
    v10 = CFDataCreate(0, a2, v9);
  }

  else
  {
    v10 = CFDataCreateWithBytesNoCopy(0, a2, v9, *MEMORY[0x277CBED00]);
  }

  v11 = v10;
  v12 = C3DSourceAccessorCreate(a5, v8, *(a1 + 24), 0, 0);
  Mutable = C3DGenericSourceCreateMutable(v12, 0);
  C3DGenericSourceSetData(Mutable, v11);
  C3DSourceAccessorSetSource(v12, Mutable);
  CFRelease(v11);
  CFRelease(v12);
  return Mutable;
}

uint64_t C3DKeyframeControllerCopyValuesAsGenericSource(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return __C3DKeyframeControllerCopyGenericSource(a1, v1, *(a1 + 30), 1u, *(a1 + 28), 0);
  }

  else
  {
    return 0;
  }
}

void _C3DKeyframeControllerCFFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[13];
  if (v10)
  {

    free(v10);
  }
}

uint64_t _C3DKeyframeControllerInitWithPropertyList(uint64_t a1, const __CFDictionary *theDict, uint64_t a3, uint64_t a4)
{
  v6 = theDict;
  v7 = a1;
  values[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log(0, theDict);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(v6, @"keyframeVersion");
  if (!Value)
  {
    v18 = 0.04;
LABEL_9:
    v23 = CFDictionaryGetValue(v6, @"keyframeType");
    if (v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
      v26 = valuePtr;
    }

    else
    {
      v26 = 0;
    }

    if (v18 < 0.05)
    {
      if ((v26 - 3) > 2)
      {
        if ((v26 - 6) < 3)
        {
          LOWORD(v26) = v26 - 3;
        }
      }

      else
      {
        LOWORD(v26) = v26 + 5;
      }
    }

    v27 = CFDictionaryGetValue(v6, @"keyCount");
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
      }
    }

    v30 = CFDictionaryGetValue(v6, @"data");
    if (v30)
    {
      v31 = v30;
      v32 = CFDictionaryGetValue(v6, @"keyCount");
      if (v32 && (v33 = v32, v34 = CFGetTypeID(v32), v34 == CFNumberGetTypeID()))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(v33, kCFNumberIntType, &valuePtr);
        v35 = valuePtr;
      }

      else
      {
        v35 = 0;
      }

      Length = CFDataGetLength(v31);
      v38 = C3DSizeOfBaseType(v26, v37) + 8;
      BytePtr = CFDataGetBytePtr(v31);
      v41 = BytePtr;
      if (v35 != (Length / v38))
      {
        v42 = scn_default_log(BytePtr, v40);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          _C3DKeyframeControllerInitWithPropertyList_cold_14(v42, v43, v44, v45, v46, v47, v48, v49);
        }
      }

      v50 = Length / v38;
      _C3DKeyframeControllerSetupWithCapacity(v7, v50, v26, 0, 0, 0, 0, 0);
      if (v50)
      {
        v51 = 0;
        v52 = (v41 + 8);
        do
        {
          C3DKeyframeControllerSetKeyframeAtIndex(v7, v51++, v52, 0, 0, 0, 0, *(v52 - 1), 0.0, 0.0, 0.0);
          v52 += v38;
        }

        while (v51 < v50);
      }

      goto LABEL_82;
    }

    v53 = CFDictionaryGetValue(v6, @"keyframes");
    if (!v53 || (v54 = v53, Count = CFArrayGetCount(v53), _C3DKeyframeControllerSetupWithCapacity(v7, Count, v26, 0, 0, 0, 0, 0), v56 = CFArrayGetCount(v54), v56 < 2))
    {
LABEL_82:
      *(v7 + 32) = C3DKeyFrameInterpolatorForType(v26, 0, 0, *(v7 + 31), *(v7 + 64) == 0);
      goto LABEL_83;
    }

    v57 = 0;
    v284 = 0.0;
    valuePtr = 0u;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v54, v57);
      v59 = CFGetTypeID(ValueAtIndex);
      TypeID = CFNumberGetTypeID();
      if (v59 != TypeID)
      {
        v69 = scn_default_log(TypeID, v61);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          _C3DKeyframeControllerInitWithPropertyList_cold_15(&buf, v283, v69);
        }

        goto LABEL_77;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &v284);
      v62 = CFArrayGetValueAtIndex(v54, (v57 + 1));
      v64 = v62;
      if (v26 > 7u)
      {
        if (v26 - 8 >= 4 && v26 != 13)
        {
          if (v26 != 16)
          {
LABEL_80:
            v93 = scn_default_log(v62, v63);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_22(&v280, v281, v93);
            }

            goto LABEL_76;
          }

LABEL_59:
          v76 = CFGetTypeID(v62);
          v77 = CFNumberGetTypeID();
          if (v76 != v77)
          {
            v79 = scn_default_log(v77, v78);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(v294, &v295, v79);
            }
          }

          v74 = v64;
          v75 = kCFNumberCharType;
LABEL_75:
          CFNumberGetValue(v74, v75, &valuePtr);
          goto LABEL_76;
        }

        C3DInitC3DFloatArrayWithPropertyList(v62, &valuePtr, 0);
      }

      else
      {
        if (v26 > 3u)
        {
          switch(v26)
          {
            case 4u:
              goto LABEL_59;
            case 5u:
              v88 = CFGetTypeID(v62);
              v89 = CFNumberGetTypeID();
              if (v88 != v89)
              {
                v91 = scn_default_log(v89, v90);
                if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
                {
                  _C3DKeyframeControllerInitWithPropertyList_cold_16(v292, &v293, v91);
                }
              }

              v74 = v64;
              v75 = kCFNumberLongType;
              break;
            case 6u:
              v70 = CFGetTypeID(v62);
              v71 = CFNumberGetTypeID();
              if (v70 != v71)
              {
                v73 = scn_default_log(v71, v72);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
                {
                  _C3DKeyframeControllerInitWithPropertyList_cold_16(v290, &v291, v73);
                }
              }

              v74 = v64;
              v75 = kCFNumberDoubleType;
              break;
            default:
              goto LABEL_80;
          }

          goto LABEL_75;
        }

        if (v26 == 1)
        {
          v80 = CFGetTypeID(v62);
          v81 = CFNumberGetTypeID();
          if (v80 != v81)
          {
            v83 = scn_default_log(v81, v82);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(values, (values + 4), v83);
            }
          }

          v74 = v64;
          v75 = kCFNumberFloatType;
          goto LABEL_75;
        }

        if (v26 == 2)
        {
          v84 = CFGetTypeID(v62);
          v85 = CFNumberGetTypeID();
          if (v84 != v85)
          {
            v87 = scn_default_log(v85, v86);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
            {
              _C3DKeyframeControllerInitWithPropertyList_cold_16(v298, &v299, v87);
            }
          }

          v74 = v64;
          v75 = kCFNumberIntType;
          goto LABEL_75;
        }

        if (v26 != 3)
        {
          goto LABEL_80;
        }

        v65 = CFGetTypeID(v62);
        v66 = CFBooleanGetTypeID();
        if (v65 != v66)
        {
          v68 = scn_default_log(v66, v67);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            _C3DKeyframeControllerInitWithPropertyList_cold_19(v296, &v297, v68);
          }
        }

        LOBYTE(valuePtr) = CFBooleanGetValue(v64) != 0;
      }

LABEL_76:
      C3DKeyframeControllerSetKeyframeAtIndex(v7, v57, &valuePtr, 0, 0, 0, 0, v284, 0.0, 0.0, 0.0);
LABEL_77:
      v92 = v57 + 3;
      v57 = (v57 + 2);
      if (v92 >= v56)
      {
        goto LABEL_82;
      }
    }
  }

  v18 = C3DParseVersionNumber(Value, v17);
  if (v18 <= 0.11)
  {
    goto LABEL_9;
  }

  v289 = 0;
  v287 = 0u;
  v288 = 0u;
  valuePtr = 0u;
  v286 = 0u;
  v19 = CFDictionaryGetValue(v6, @"keytimes");
  if (v19)
  {
    v21 = v19;
    Empty = C3DGenericSourceCreateEmpty(v19, v20);
    *&valuePtr = Empty;
    C3DInitWithPropertyList(Empty, v21, a3, a4);
  }

  else
  {
    Empty = 0;
  }

  v98 = CFDictionaryGetValue(v6, @"keytimes-data");
  theDicta = v6;
  if (v98 && Empty)
  {
    v100 = v98;
    values[0] = C3DGenericSourceGetAccessor(Empty, v99);
    v101 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    DeserializedDataWithAccessors = C3DGenericSourceCreateDeserializedDataWithAccessors(Empty, v100, v101);
    C3DSourceAccessorsConvertToCurrentPlatform(v101);
    CFRelease(v101);
    if (DeserializedDataWithAccessors)
    {
      C3DGenericSourceSetData(Empty, DeserializedDataWithAccessors);
      CFRelease(DeserializedDataWithAccessors);
    }

    else
    {
      v105 = scn_default_log(v103, v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v106 = CFDictionaryGetValue(v6, @"values");
  if (v106)
  {
    v108 = v106;
    v109 = C3DGenericSourceCreateEmpty(v106, v107);
    *(&valuePtr + 1) = v109;
    C3DInitWithPropertyList(v109, v108, a3, a4);
  }

  else
  {
    v109 = 0;
  }

  v110 = CFDictionaryGetValue(v6, @"values-data");
  if (v110 && v109)
  {
    v112 = v110;
    values[0] = C3DGenericSourceGetAccessor(v109, v111);
    v113 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v114 = C3DGenericSourceCreateDeserializedDataWithAccessors(v109, v112, v113);
    C3DSourceAccessorsConvertToCurrentPlatform(v113);
    CFRelease(v113);
    if (v114)
    {
      C3DGenericSourceSetData(v109, v114);
      CFRelease(v114);
    }

    else
    {
      v117 = scn_default_log(v115, v116);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v118 = CFDictionaryGetValue(v6, @"timingFunctions");
  if (v118)
  {
    v120 = v118;
    v121 = C3DGenericSourceCreateEmpty(v118, v119);
    *&v286 = v121;
    C3DInitWithPropertyList(v121, v120, a3, a4);
  }

  else
  {
    v121 = 0;
  }

  v122 = CFDictionaryGetValue(v6, @"timingFunctions-data");
  if (v122 && v121)
  {
    v124 = v122;
    values[0] = C3DGenericSourceGetAccessor(v121, v123);
    v125 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v126 = C3DGenericSourceCreateDeserializedDataWithAccessors(v121, v124, v125);
    C3DSourceAccessorsConvertToCurrentPlatform(v125);
    CFRelease(v125);
    if (v126)
    {
      C3DGenericSourceSetData(v121, v126);
      CFRelease(v126);
    }

    else
    {
      v129 = scn_default_log(v127, v128);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v130 = CFDictionaryGetValue(v6, @"interpolationModes");
  if (v130)
  {
    v132 = v130;
    *(&v286 + 1) = C3DGenericSourceCreateEmpty(v130, v131);
    v277 = *(&v286 + 1);
    C3DInitWithPropertyList(*(&v286 + 1), v132, a3, a4);
  }

  else
  {
    v277 = 0;
  }

  v133 = CFDictionaryGetValue(v6, @"interpolationModes-data");
  if (v133 && v277)
  {
    v135 = v133;
    values[0] = C3DGenericSourceGetAccessor(v277, v134);
    v136 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v137 = C3DGenericSourceCreateDeserializedDataWithAccessors(v277, v135, v136);
    C3DSourceAccessorsConvertToCurrentPlatform(v136);
    CFRelease(v136);
    if (v137)
    {
      C3DGenericSourceSetData(v277, v137);
      CFRelease(v137);
    }

    else
    {
      v140 = scn_default_log(v138, v139);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v141 = CFDictionaryGetValue(v6, @"tensionValues");
  if (v141)
  {
    v143 = v141;
    v144 = C3DGenericSourceCreateEmpty(v141, v142);
    *&v287 = v144;
    C3DInitWithPropertyList(v144, v143, a3, a4);
  }

  else
  {
    v144 = 0;
  }

  v145 = CFDictionaryGetValue(v6, @"tensionValues-data");
  if (v145 && v144)
  {
    v147 = v145;
    values[0] = C3DGenericSourceGetAccessor(v144, v146);
    v148 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v149 = C3DGenericSourceCreateDeserializedDataWithAccessors(v144, v147, v148);
    C3DSourceAccessorsConvertToCurrentPlatform(v148);
    CFRelease(v148);
    if (v149)
    {
      C3DGenericSourceSetData(v144, v149);
      CFRelease(v149);
    }

    else
    {
      v152 = scn_default_log(v150, v151);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v153 = CFDictionaryGetValue(v6, @"continuityValues");
  if (v153)
  {
    v155 = v153;
    v156 = C3DGenericSourceCreateEmpty(v153, v154);
    *(&v287 + 1) = v156;
    C3DInitWithPropertyList(v156, v155, a3, a4);
  }

  else
  {
    v156 = 0;
  }

  v157 = CFDictionaryGetValue(v6, @"continuityValues-data");
  if (v157 && v156)
  {
    v159 = v157;
    values[0] = C3DGenericSourceGetAccessor(v156, v158);
    v160 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v161 = C3DGenericSourceCreateDeserializedDataWithAccessors(v156, v159, v160);
    C3DSourceAccessorsConvertToCurrentPlatform(v160);
    CFRelease(v160);
    if (v161)
    {
      C3DGenericSourceSetData(v156, v161);
      CFRelease(v161);
    }

    else
    {
      v164 = scn_default_log(v162, v163);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v266 = v121;
  v274 = v144;
  v165 = CFDictionaryGetValue(v6, @"biasValues");
  if (v165)
  {
    v167 = v165;
    v168 = C3DGenericSourceCreateEmpty(v165, v166);
    *&v288 = v168;
    C3DInitWithPropertyList(v168, v167, a3, a4);
  }

  else
  {
    v168 = 0;
  }

  v169 = CFDictionaryGetValue(v6, @"biasValues-data");
  if (v169 && v168)
  {
    v171 = v169;
    values[0] = C3DGenericSourceGetAccessor(v168, v170);
    v172 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v173 = C3DGenericSourceCreateDeserializedDataWithAccessors(v168, v171, v172);
    C3DSourceAccessorsConvertToCurrentPlatform(v172);
    CFRelease(v172);
    if (v173)
    {
      C3DGenericSourceSetData(v168, v173);
      CFRelease(v173);
    }

    else
    {
      v176 = scn_default_log(v174, v175);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v177 = CFDictionaryGetValue(v6, @"inTangents");
  if (v177)
  {
    v179 = v177;
    *(&v288 + 1) = C3DGenericSourceCreateEmpty(v177, v178);
    v268 = *(&v288 + 1);
    C3DInitWithPropertyList(*(&v288 + 1), v179, a3, a4);
  }

  else
  {
    v268 = 0;
  }

  v180 = CFDictionaryGetValue(v6, @"inTangents-data");
  if (v180 && v268)
  {
    v182 = v180;
    values[0] = C3DGenericSourceGetAccessor(v268, v181);
    v183 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
    v184 = C3DGenericSourceCreateDeserializedDataWithAccessors(v268, v182, v183);
    C3DSourceAccessorsConvertToCurrentPlatform(v183);
    CFRelease(v183);
    if (v184)
    {
      C3DGenericSourceSetData(v268, v184);
      CFRelease(v184);
    }

    else
    {
      v187 = scn_default_log(v185, v186);
      if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_2();
      }
    }

    v6 = theDicta;
  }

  v188 = CFDictionaryGetValue(v6, @"outTangents");
  if (v188)
  {
    v190 = v188;
    v191 = C3DGenericSourceCreateEmpty(v188, v189);
    v289 = v191;
    C3DInitWithPropertyList(v191, v190, a3, a4);
  }

  else
  {
    v191 = 0;
  }

  v192 = CFDictionaryGetValue(theDicta, @"outTangents-data");
  if (!v192 || !v191)
  {
    goto LABEL_175;
  }

  v194 = v192;
  values[0] = C3DGenericSourceGetAccessor(v191, v193);
  v195 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  v196 = C3DGenericSourceCreateDeserializedDataWithAccessors(v191, v194, v195);
  C3DSourceAccessorsConvertToCurrentPlatform(v195);
  CFRelease(v195);
  if (v196)
  {
    C3DGenericSourceSetData(v191, v196);
    CFRelease(v196);
    if (!Empty)
    {
      goto LABEL_172;
    }

LABEL_176:
    Accessor = C3DGenericSourceGetAccessor(Empty, v193);
    if (!v109)
    {
      goto LABEL_173;
    }

    goto LABEL_177;
  }

  v201 = scn_default_log(v197, v198);
  if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
  {
    _C3DKeyframeControllerInitWithPropertyList_cold_2();
    if (Empty)
    {
      goto LABEL_176;
    }
  }

  else
  {
LABEL_175:
    if (Empty)
    {
      goto LABEL_176;
    }
  }

LABEL_172:
  Accessor = 0;
  if (!v109)
  {
LABEL_173:
    v200 = 0;
    goto LABEL_178;
  }

LABEL_177:
  v200 = C3DGenericSourceGetAccessor(v109, v193);
LABEL_178:
  v202 = v277;
  if (v121)
  {
    v203 = C3DGenericSourceGetAccessor(v121, v193);
    if (v277)
    {
LABEL_180:
      v204 = C3DGenericSourceGetAccessor(v277, v193);
      goto LABEL_183;
    }
  }

  else
  {
    v203 = 0;
    if (v277)
    {
      goto LABEL_180;
    }
  }

  v204 = 0;
LABEL_183:
  v205 = v274;
  if (v274)
  {
    v205 = C3DGenericSourceGetAccessor(v274, v193);
  }

  v278 = v205;
  if (v156)
  {
    v206 = C3DGenericSourceGetAccessor(v156, v193);
  }

  else
  {
    v206 = 0;
  }

  v276 = v206;
  if (v168)
  {
    v207 = C3DGenericSourceGetAccessor(v168, v193);
  }

  else
  {
    v207 = 0;
  }

  v208 = v274;
  v275 = v207;
  if (v268)
  {
    v209 = C3DGenericSourceGetAccessor(v268, v193);
  }

  else
  {
    v209 = 0;
  }

  v273 = v209;
  if (v191)
  {
    v210 = C3DGenericSourceGetAccessor(v191, v193);
    if (!Accessor)
    {
LABEL_201:
      for (i = 0; i != 72; i += 8)
      {
        v216 = *(&valuePtr + i);
        if (v216)
        {
          CFRelease(v216);
          *(&valuePtr + i) = 0;
        }
      }

      v217 = scn_default_log(v216, v193);
      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        _C3DKeyframeControllerInitWithPropertyList_cold_13();
      }

      return 0;
    }
  }

  else
  {
    v210 = 0;
    if (!Accessor)
    {
      goto LABEL_201;
    }
  }

  if (!v200)
  {
    goto LABEL_201;
  }

  v271 = v210;
  v272 = v203;
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(v200);
  if (C3DSourceAccessorGetData(Accessor, v212))
  {
    v214 = C3DSourceAccessorGetCount(Accessor);
  }

  else
  {
    v214 = 0;
  }

  Data = C3DSourceAccessorGetData(v200, v213);
  if (Data)
  {
    Data = C3DSourceAccessorGetCount(v200);
  }

  if (!v214)
  {
    v225 = scn_default_log(Data, v219);
    if (os_log_type_enabled(v225, OS_LOG_TYPE_FAULT))
    {
      _C3DKeyframeControllerInitWithPropertyList_cold_11(v225, v219, v226, v227, v228, v229, v230, v231);
    }

    goto LABEL_218;
  }

  if (!ComponentsValueType || v214 != Data)
  {
LABEL_218:
    for (j = 0; j != 72; j += 8)
    {
      v233 = *(&valuePtr + j);
      if (v233)
      {
        CFRelease(v233);
        *(&valuePtr + j) = 0;
      }
    }

    v234 = scn_default_log(v233, v219);
    if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
    {
      _C3DKeyframeControllerInitWithPropertyList_cold_12();
    }

    return 0;
  }

  v270 = Accessor;
  v220 = CFDictionaryGetValue(theDicta, @"semantic");
  if (v220)
  {
    v221 = v220;
    v222 = v200;
    v223 = CFGetTypeID(v220);
    if (v223 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v221, kCFNumberIntType, values);
      v224 = values[0];
    }

    else
    {
      v224 = 0;
    }

    v200 = v222;
  }

  else
  {
    v224 = 0;
  }

  v235 = v266 != 0;
  v265 = v224;
  v267 = ComponentsValueType;
  _C3DKeyframeControllerSetupWithCapacity(v7, v214, ComponentsValueType, v224, v202 != 0, v235, v208 != 0, v268 != 0);
  v236 = 0;
  v237 = v214 - 2;
  v269 = v214;
  v238 = v7;
  do
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(v270, v236);
    if (ValuePtrAtIndex)
    {
      v240 = *ValuePtrAtIndex;
    }

    else
    {
      v240 = 0.0;
    }

    v241 = v272;
    v242 = v200;
    v243 = C3DSourceAccessorGetValuePtrAtIndex(v200, v236);
    if (!v272)
    {
      goto LABEL_235;
    }

    v244 = C3DSourceAccessorGetValuePtrAtIndex(v272, v236);
    if (v244)
    {
      v241 = C3DTimingFunctionCreateWithControlPoints(*v244, v244[1], v244[2], v244[3]);
LABEL_235:
      if (!v204)
      {
        goto LABEL_242;
      }

      goto LABEL_236;
    }

    v241 = 0;
    if (!v204)
    {
      goto LABEL_242;
    }

LABEL_236:
    if (v236 >= v237)
    {
      v245 = v237;
    }

    else
    {
      v245 = v236;
    }

    v246 = C3DSourceAccessorGetValuePtrAtIndex(v204, v245);
    if (v246)
    {
      v247 = *v246;
      goto LABEL_243;
    }

LABEL_242:
    v247 = 0;
LABEL_243:
    if (v278)
    {
      v248 = C3DSourceAccessorGetValuePtrAtIndex(v278, v236);
    }

    else
    {
      v248 = 0;
    }

    v249 = v204;
    if (v276)
    {
      v250 = C3DSourceAccessorGetValuePtrAtIndex(v276, v236);
    }

    else
    {
      v250 = 0;
    }

    v251 = v275;
    if (v275)
    {
      v251 = C3DSourceAccessorGetValuePtrAtIndex(v275, v236);
    }

    v252 = 0.0;
    v253 = 0.0;
    if (v248)
    {
      v253 = *v248;
    }

    if (v250)
    {
      v252 = *v250;
    }

    if (v251)
    {
      v254 = *v251;
      if (v273)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v254 = 0.0;
      if (v273)
      {
LABEL_257:
        v255 = C3DSourceAccessorGetValuePtrAtIndex(v273, v236);
        goto LABEL_260;
      }
    }

    v255 = 0;
LABEL_260:
    if (v271)
    {
      v256 = C3DSourceAccessorGetValuePtrAtIndex(v271, v236);
    }

    else
    {
      v256 = 0;
    }

    C3DKeyframeControllerSetKeyframeAtIndex(v238, v236, v243, v247, v241, v255, v256, v240, v253, v252, v254);
    if (v241)
    {
      CFRelease(v241);
    }

    ++v236;
    v200 = v242;
    v204 = v249;
  }

  while (v269 != v236);
  v7 = v238;
  for (k = 0; k != 72; k += 8)
  {
    v258 = *(&valuePtr + k);
    if (v258)
    {
      CFRelease(v258);
      *(&valuePtr + k) = 0;
    }
  }

  *(v238 + 32) = C3DKeyFrameInterpolatorForType(v267, v265, 0, *(v238 + 31), *(v238 + 64) == 0);
  v259 = CFDictionaryGetValue(theDicta, @"interpolationMode");
  if (v259)
  {
    v260 = v259;
    v261 = CFGetTypeID(v259);
    if (v261 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v260, kCFNumberIntType, values);
      *(v238 + 31) = values[0];
    }
  }

  v262 = CFDictionaryGetValue(theDicta, @"calculationMode");
  if (v262)
  {
    v263 = v262;
    v264 = CFGetTypeID(v262);
    if (v264 == CFNumberGetTypeID())
    {
      LODWORD(values[0]) = 0;
      CFNumberGetValue(v263, kCFNumberIntType, values);
      *(v238 + 112) = values[0];
    }
  }

LABEL_83:
  KeyCount = C3DKeyframeControllerGetKeyCount(v7, v94);
  if (KeyCount)
  {
    KeyTimeAtIndex = C3DKeyframeControllerGetKeyTimeAtIndex(v7, (KeyCount - 1));
  }

  else
  {
    KeyTimeAtIndex = 0.0;
  }

  *(v7 + 16) = KeyTimeAtIndex;
  return 1;
}

__CFDictionary *_C3DKeyframeControllerCopyPropertyList(char *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!cf)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v16, 15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"keyframeVersion", @"0.12");
  LODWORD(valuePtr) = cf[31];
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"interpolationMode", v18);
  CFRelease(v18);
  LODWORD(valuePtr) = cf[112];
  v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"calculationMode", v19);
  CFRelease(v19);
  if (*(cf + 5))
  {
    v20 = C3DMalloc(8 * *(cf + 6));
    v21 = v20;
    v22 = *(cf + 6);
    if (v22)
    {
      v23 = *(cf + 5);
      v24 = v20;
      do
      {
        v25 = *v23++;
        *v24++ = v25;
        --v22;
      }

      while (v22);
    }

    v26 = __C3DKeyframeControllerCopyGenericSource(cf, v20, 8, 1u, 6, 1);
    free(v21);
    if (v26)
    {
      v27 = C3DCopyPropertyList(v26, a2, a3, a4);
      if (v27)
      {
        v29 = v27;
        CFDictionaryAddValue(Mutable, @"keytimes", v27);
        CFRelease(v29);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v26, v28);
        v30 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        SerializedDataWithAccessors = C3DGenericSourceCreateSerializedDataWithAccessors(v26, v30);
        CFRelease(v30);
        CFDictionaryAddValue(Mutable, @"keytimes-data", SerializedDataWithAccessors);
        CFRelease(SerializedDataWithAccessors);
      }

      CFRelease(v26);
    }
  }

  v32 = C3DKeyframeControllerCopyValuesAsGenericSource(cf);
  if (v32)
  {
    v33 = v32;
    v34 = C3DCopyPropertyList(v32, a2, a3, a4);
    if (v34)
    {
      v36 = v34;
      CFDictionaryAddValue(Mutable, @"values", v34);
      CFRelease(v36);
    }

    if (Mutable)
    {
      valuePtr = C3DGenericSourceGetAccessor(v33, v35);
      v37 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
      v38 = C3DGenericSourceCreateSerializedDataWithAccessors(v33, v37);
      CFRelease(v37);
      CFDictionaryAddValue(Mutable, @"values-data", v38);
      CFRelease(v38);
    }

    CFRelease(v33);
  }

  v39 = *(cf + 7);
  if (v39)
  {
    v40 = __C3DKeyframeControllerCopyGenericSource(cf, v39, 4, 4u, 7, 0);
    if (v40)
    {
      v41 = v40;
      v42 = C3DCopyPropertyList(v40, a2, a3, a4);
      if (v42)
      {
        v44 = v42;
        CFDictionaryAddValue(Mutable, @"timingFunctions", v42);
        CFRelease(v44);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v41, v43);
        v45 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v46 = C3DGenericSourceCreateSerializedDataWithAccessors(v41, v45);
        CFRelease(v45);
        CFDictionaryAddValue(Mutable, @"timingFunctions-data", v46);
        CFRelease(v46);
      }

      CFRelease(v41);
    }
  }

  v47 = *(cf + 8);
  if (v47)
  {
    v48 = __C3DKeyframeControllerCopyGenericSource(cf, v47, 1, 1u, 4, 0);
    if (v48)
    {
      v49 = v48;
      v50 = C3DCopyPropertyList(v48, a2, a3, a4);
      if (v50)
      {
        v52 = v50;
        CFDictionaryAddValue(Mutable, @"interpolationModes", v50);
        CFRelease(v52);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v49, v51);
        v53 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v54 = C3DGenericSourceCreateSerializedDataWithAccessors(v49, v53);
        CFRelease(v53);
        CFDictionaryAddValue(Mutable, @"interpolationModes-data", v54);
        CFRelease(v54);
      }

      CFRelease(v49);
    }
  }

  v55 = *(cf + 9);
  if (v55)
  {
    v56 = __C3DKeyframeControllerCopyGenericSource(cf, v55, 4, 1u, 1, 0);
    if (v56)
    {
      v57 = v56;
      v58 = C3DCopyPropertyList(v56, a2, a3, a4);
      if (v58)
      {
        v60 = v58;
        CFDictionaryAddValue(Mutable, @"tensionValues", v58);
        CFRelease(v60);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v57, v59);
        v61 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v62 = C3DGenericSourceCreateSerializedDataWithAccessors(v57, v61);
        CFRelease(v61);
        CFDictionaryAddValue(Mutable, @"tensionValues-data", v62);
        CFRelease(v62);
      }

      CFRelease(v57);
    }
  }

  v63 = *(cf + 10);
  if (v63)
  {
    v64 = __C3DKeyframeControllerCopyGenericSource(cf, v63, 4, 1u, 1, 0);
    if (v64)
    {
      v65 = v64;
      v66 = C3DCopyPropertyList(v64, a2, a3, a4);
      if (v66)
      {
        v68 = v66;
        CFDictionaryAddValue(Mutable, @"continuityValues", v66);
        CFRelease(v68);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v65, v67);
        v69 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v70 = C3DGenericSourceCreateSerializedDataWithAccessors(v65, v69);
        CFRelease(v69);
        CFDictionaryAddValue(Mutable, @"continuityValues-data", v70);
        CFRelease(v70);
      }

      CFRelease(v65);
    }
  }

  v71 = *(cf + 11);
  if (v71)
  {
    v72 = __C3DKeyframeControllerCopyGenericSource(cf, v71, 4, 1u, 1, 0);
    if (v72)
    {
      v73 = v72;
      v74 = C3DCopyPropertyList(v72, a2, a3, a4);
      if (v74)
      {
        v76 = v74;
        CFDictionaryAddValue(Mutable, @"biasValues", v74);
        CFRelease(v76);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v73, v75);
        v77 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v78 = C3DGenericSourceCreateSerializedDataWithAccessors(v73, v77);
        CFRelease(v77);
        CFDictionaryAddValue(Mutable, @"biasValues-data", v78);
        CFRelease(v78);
      }

      CFRelease(v73);
    }
  }

  v79 = *(cf + 12);
  if (v79)
  {
    v80 = __C3DKeyframeControllerCopyGenericSource(cf, v79, 8, cf[113], 8, 0);
    if (v80)
    {
      v81 = v80;
      v82 = C3DCopyPropertyList(v80, a2, a3, a4);
      if (v82)
      {
        v84 = v82;
        CFDictionaryAddValue(Mutable, @"inTangents", v82);
        CFRelease(v84);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v81, v83);
        v85 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v86 = C3DGenericSourceCreateSerializedDataWithAccessors(v81, v85);
        CFRelease(v85);
        CFDictionaryAddValue(Mutable, @"inTangents-data", v86);
        CFRelease(v86);
      }

      CFRelease(v81);
    }
  }

  v87 = *(cf + 13);
  if (v87)
  {
    v88 = __C3DKeyframeControllerCopyGenericSource(cf, v87, 8, cf[113], 8, 0);
    if (v88)
    {
      v89 = v88;
      v90 = C3DCopyPropertyList(v88, a2, a3, a4);
      if (v90)
      {
        v92 = v90;
        CFDictionaryAddValue(Mutable, @"outTangents", v90);
        CFRelease(v92);
      }

      if (Mutable)
      {
        valuePtr = C3DGenericSourceGetAccessor(v89, v91);
        v93 = CFArrayCreate(0, &valuePtr, 1, MEMORY[0x277CBF128]);
        v94 = C3DGenericSourceCreateSerializedDataWithAccessors(v89, v93);
        CFRelease(v93);
        CFDictionaryAddValue(Mutable, @"outTangents-data", v94);
        CFRelease(v94);
      }

      CFRelease(v89);
    }
  }

  KeyframeSemantic = C3DKeyframeControllerGetKeyframeSemantic(cf, v87);
  if (KeyframeSemantic)
  {
    LODWORD(valuePtr) = KeyframeSemantic;
    v96 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"semantic", v96);
    CFRelease(v96);
  }

  return Mutable;
}

__int16 *C3D::PropagateMissingTextureParameters(__int16 *result, __int16 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    v2 = *result;
  }

  *a2 = v2;
  v3 = a2[1];
  if (!v3)
  {
    v3 = result[1];
  }

  a2[1] = v3;
  v4 = a2[2];
  if (!v4)
  {
    v4 = result[2];
  }

  a2[2] = v4;
  v5 = a2[3];
  if (v5 <= result[3])
  {
    LOWORD(v5) = result[3];
  }

  a2[3] = v5;
  v6 = *(a2 + 8);
  if (!v6)
  {
    v6 = *(result + 8);
  }

  *(a2 + 8) = v6;
  v7 = *(a2 + 9);
  if (!v7)
  {
    v7 = *(result + 9);
  }

  *(a2 + 9) = v7;
  v8 = *(a2 + 10);
  if (!v8)
  {
    v8 = *(result + 10);
  }

  *(a2 + 10) = v8;
  v9 = *(a2 + 11);
  if (!v9)
  {
    v9 = *(result + 11);
  }

  *(a2 + 11) = v9;
  v10 = a2[6];
  if (!v10)
  {
    v10 = result[6];
  }

  a2[6] = v10;
  v11 = *(a2 + 14);
  if (v11 <= *(result + 14))
  {
    LOBYTE(v11) = *(result + 14);
  }

  *(a2 + 14) = v11;
  return result;
}

MTLTexture *C3D::CreateSharedTexture(MTLTexture *a1, uint64_t a2, void *a3, void *a4)
{
  if (([(MTLTexture *)a1 isFramebufferOnly]& 1) != 0 || [(MTLTexture *)a1 textureType]!= 2 || [(MTLTexture *)a1 sampleCount]!= 1)
  {
    return 0;
  }

  *v17._buffers = *a2;
  LODWORD(v17._buffers[2]) = *(a2 + 16);
  v8 = SCNMTLTextureDescToMTLTextureDescriptor(&v17);
  IsUnsignedInt = SCNMTLPixelFormatIsUnsignedInt([v8 pixelFormat]);
  [v8 setTextureType:{-[MTLTexture textureType](a1, "textureType")}];
  [v8 setSampleCount:1];
  [v8 setPixelFormat:70];
  [v8 setStorageMode:0];
  v10 = [a4 newTextureWithDescriptor:v8];
  v11 = @"copy_no_alpha_texture";
  if (IsUnsignedInt)
  {
    v11 = @"copy_no_alpha_uint_texture";
  }

  if (*(a2 + 12) == 252)
  {
    v12 = @"copy_no_alpha_depth_texture";
  }

  else
  {
    v12 = v11;
  }

  v13 = [a4 newComputePipelineStateWithFunctionName:v12];
  v17._encoder = 0;
  v17._bufferPool = 0;
  SCNMTLComputeCommandEncoder::beginEncoding(&v17, a3, 0, 0, 0);
  if (v17._textures[0] != v10)
  {
    v17._textures[0] = v10;
    v17._texturesToBind[0] |= 1uLL;
  }

  if (v17._textures[1] != a1)
  {
    v17._textures[1] = a1;
    v17._texturesToBind[0] |= 2uLL;
  }

  v14 = [(SCNMTLOpenSubdivComputeEvaluator *)v13 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOnTexture2D(&v17, v10, v14);
  SCNMTLComputeCommandEncoder::endEncoding(&v17, v15);

  return v10;
}

void *SCNMTLComputeCommandEncoder::beginEncoding(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a1[207])
  {
    v10 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::beginEncoding(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  bzero(a1, 0x6B0uLL);
  *(a1 + 420) = a3;
  a1[208] = a2;
  result = [a2 computeCommandEncoder];
  a1[207] = result;
  a1[209] = a5;
  if (a4)
  {
    return [result setLabel:a4];
  }

  return result;
}

void *C3D::SetupDefaultRenderPassDescriptor(float32x4_t *this, __C3DEngineContext *a2, MTLRenderPassDescriptor *a3)
{
  v3 = a3;
  RenderContext = C3DEngineContextGetRenderContext(this, a2);
  for (i = 0; i != 8; ++i)
  {
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  }

  [-[__C3DEngineContext depthAttachment](a2 "depthAttachment")];
  [-[__C3DEngineContext depthAttachment](a2 "depthAttachment")];
  [-[__C3DEngineContext stencilAttachment](a2 "stencilAttachment")];
  [(__C3DEngineContext *)a2 setRenderTargetArrayLength:0];
  [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  result = [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
  if (v3)
  {
    [objc_msgSend(-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];
    ViewBackgroundColor = C3DEngineContextGetViewBackgroundColor(this, v9);
    v11 = ViewBackgroundColor.n128_f32[0];
    v12 = ViewBackgroundColor.n128_f32[1];
    v13 = ViewBackgroundColor.n128_f32[2];
    v14 = ViewBackgroundColor.n128_f32[3];
    v15 = [-[__C3DEngineContext colorAttachments](a2 "colorAttachments")];

    return [v15 setClearColor:{v11, v12, v13, v14}];
  }

  return result;
}

void *C3D::RenderGraph::GraphNode::successorsAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = 4 * v8;
    do
    {
      v11 = *v9;
      if (a2 == BYTE2(v11))
      {
        result = C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(a4, &v11);
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
  }

  return result;
}

_DWORD *C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*result, 4 * v7, 4, 0);
    result = memcpy(Aligned, v6, 4 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

void *C3D::RenderGraph::GraphNode::predecessorsAtIndex@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);
    v10 = 4 * v8;
    do
    {
      v11 = *v9;
      if (a2 == BYTE2(v11))
      {
        result = C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(a4, &v11);
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
  }

  return result;
}

void C3D::RenderGraph::~RenderGraph(C3D::RenderGraph *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::~Hash(v2);
    MEMORY[0x21CF07610](v3, 0x1030C408C11463FLL);
  }

  C3DScratchAllocatorDelete(*(this + 2));
  v4 = *(this + 24);
  if (v4)
  {
    CFRelease(v4);
    *(this + 24) = 0;
  }

  v5 = *(this + 25);
  if (v5)
  {
    CFRelease(v5);
    *(this + 25) = 0;
  }
}

uint64_t C3D::RenderGraph::createPersistentResource(uint64_t a1, uint64_t a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 40, 8, 0);
  result = C3D::RefCountedResource::RefCountedResource(Aligned);
  *result = a2;
  *(result + 32) = 1;
  *(result + 34) |= 1u;
  return result;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *(this + 3);
  v7 = *(v6 + 8);
  if (v7 <= a2)
  {
    C3D::RenderGraph::addDependency();
  }

  if (v7 <= a3)
  {
    C3D::RenderGraph::addDependency();
  }

  v11 = a2;
  v12 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v6, a2);
  v13 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), a3);
  if (a4 != 255)
  {
    v14 = C3D::Pass::descriptor(*v12);
    if (C3D::PassDescriptor::inputCount(v14) <= a4)
    {
      C3D::RenderGraph::addDependency();
    }
  }

  if (a5 == 255)
  {
    goto LABEL_9;
  }

  v15 = C3D::Pass::descriptor(*v13);
  if (C3D::PassDescriptor::outputCount(v15) <= a5)
  {
    C3D::RenderGraph::addDependency();
  }

  if (a4 == 255 || (v16 = C3D::Pass::descriptor(*v12), v17 = C3D::PassDescriptor::inputAtIndex(v16, a4), v18 = C3D::Pass::descriptor(*v13), v19 = C3D::PassDescriptor::outputAtIndex(v18, a5), isPartiallyCompatible = C3D::PassIODescriptor::isPartiallyCompatible(v19, v17)))
  {
LABEL_9:
    *buf = a3 & 0x7FFF | (a4 << 16) | (a5 << 24);
    v22 = *(v12 + 16);
    if (v22)
    {
      v23 = 4 * v22;
      v24 = *(v12 + 24);
      while ((*v24 & 0xFFFF7FFF) != (a3 & 0x7FFF | (a4 << 16) | (a5 << 24)))
      {
        ++v24;
        v23 -= 4;
        if (!v23)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v24 = *(v12 + 24);
    }

    if (v24 == (*(v12 + 24) + 4 * v22))
    {
LABEL_16:
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>((v12 + 8), buf);
    }

    *buf = v11 & 0x7FFF | (a5 << 16) | (a4 << 24);
    v25 = *(v13 + 40);
    if (v25)
    {
      v26 = 4 * v25;
      v27 = *(v13 + 48);
      while ((*v27 & 0xFFFF7FFF) != (v11 & 0x7FFF | (a5 << 16) | (a4 << 24)))
      {
        ++v27;
        v26 -= 4;
        if (!v26)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v27 = *(v13 + 48);
    }

    if (v27 == (*(v13 + 48) + 4 * v25))
    {
LABEL_24:
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>((v13 + 32), buf);
    }
  }

  else
  {
    v28 = scn_default_log(isPartiallyCompatible, v21);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      C3D::RenderGraph::addDependency();
    }

    v31 = scn_default_log(v29, v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      C3D::RenderGraph::addDependency();
    }

    v34 = scn_default_log(v32, v33);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      v38 = (***v13)();
      C3D::PassIODescriptor::description(v19, &__p);
      v39 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      v44 = v38;
      v45 = 1024;
      v46 = a5;
      v47 = 2080;
      v48 = v39;
      _os_log_error_impl(&dword_21BEF7000, v34, OS_LOG_TYPE_ERROR, "Error: Output descriptor of pass %s at port %d: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v37 = scn_default_log(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v40 = (***v12)();
      C3D::PassIODescriptor::description(v17, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v44 = v40;
      v45 = 1024;
      v46 = a4;
      v47 = 2080;
      v48 = p_p;
      _os_log_error_impl(&dword_21BEF7000, v37, OS_LOG_TYPE_ERROR, "Error: Input descriptor of pass %s at port %d: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = v2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 56 * v2;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3, uint64_t a4, uint64_t a5)
{
  if (C3DMeshElementGetPrimitiveCount(a2) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  if (C3DMeshElementGetPrimitiveCount(a3) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v11 = C3DMeshElementGetPrimitiveCount(a3);

  C3D::RenderGraph::addDependency(this, PrimitiveCount, v11, a4, a5);
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 3);
  v5 = *(v4 + 8);
  if (v5 <= a2)
  {
    C3D::RenderGraph::addDependency();
  }

  if (v5 <= a3)
  {
    C3D::RenderGraph::addDependency();
  }

  v8 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v4, a2);
  v9 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), a3);
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1), v10);
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(v20, StackAllocator);
  C3D::RenderGraph::matchingPortForNodes(this, v8, v9, v20);
  if (v21)
  {
    v12 = v22;
    v13 = &v22[2 * v21];
    do
    {
      C3D::RenderGraph::addDependency(this, a2, a3, *v12, v12[1]);
      v12 += 2;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = C3D::Pass::descriptor(*v8);
    v15 = C3D::PassDescriptor::inputCount(v14);
    v16 = C3D::Pass::descriptor(*v9);
    v17 = C3D::PassDescriptor::outputCount(v16);
    if (v15 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 255;
    }

    if (v17 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 255;
    }

    C3D::RenderGraph::addDependency(this, a2, a3, v18, v19);
  }
}

uint64_t C3D::RenderGraph::matchingPortForNodes(uint64_t a1, uint64_t a2, C3D::Pass **a3, uint64_t a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 8);
  v7 = *a2;
  v37 = *a3;
  StackAllocator = C3DEngineContextGetStackAllocator(*(a1 + 8), a2);
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(v39, StackAllocator);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 24);
    v11 = 4 * v9;
    do
    {
      if ((~*v10 & 0xFF0000) != 0)
      {
        LOBYTE(v38) = BYTE2(*v10);
        C3D::Array<unsigned char,16u,C3D::StackAllocator>::push_back<unsigned char>(v39, &v38);
      }

      ++v10;
      v11 -= 4;
    }

    while (v11);
  }

  v12 = C3D::Pass::descriptor(v37);
  result = C3D::PassDescriptor::outputCount(v12);
  v36 = result;
  if (!result)
  {
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = C3D::Pass::descriptor(v37);
    v18 = C3D::PassDescriptor::outputAtIndex(v17, v14);
    v19 = C3D::Pass::descriptor(v7);
    result = C3D::PassDescriptor::inputCount(v19);
    v20 = result;
    if (!result)
    {
      goto LABEL_45;
    }

    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = C3D::Pass::descriptor(v7);
      v24 = C3D::PassDescriptor::inputAtIndex(v23, v21);
      v25 = __s + __n;
      v26 = memchr(__s, v22, __n);
      v27 = !v26 || v26 == v25;
      v28 = v27;
      result = C3D::PassIODescriptor::isMatching(v18, v24);
      if ((v28 & result) == 1)
      {
        break;
      }

LABEL_42:
      v21 = ++v22;
      if (v22 >= v20)
      {
        goto LABEL_45;
      }
    }

    if (v6)
    {
      if (!*(a4 + 8))
      {
        goto LABEL_37;
      }

      v29 = 0;
      do
      {
        if (*C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29) == v22 || (result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29), *(result + 1) == v16))
        {
          result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v29);
          *result = v22;
          *(result + 1) = v16;
          goto LABEL_42;
        }

        ++v29;
        v30 = *(a4 + 8);
      }

      while (v29 < v30);
      if (!v30)
      {
        goto LABEL_37;
      }

      v31 = 0;
      v32 = 0;
      do
      {
        result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
        if (*result == 255)
        {
          result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
          if (*(result + 1) == 255)
          {
            result = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](a4, v31);
            *result = v22;
            *(result + 1) = v16;
            v32 = 1;
            v15 = 1;
          }
        }

        ++v31;
      }

      while (v31 < *(a4 + 8));
      if ((v32 & 1) == 0)
      {
LABEL_37:
        if (v15)
        {
          LOBYTE(v38) = v22;
          HIBYTE(v38) = v16;
          result = C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(a4, &v38);
        }
      }

      goto LABEL_42;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v34 = 2 * v33;
      v35 = *(a4 + 16);
      while (*v35 != v22 && v35[1] != v16)
      {
        v35 += 2;
        v34 -= 2;
        if (!v34)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v35 = *(a4 + 16);
    }

    if (v35 != (*(a4 + 16) + 2 * v33))
    {
      goto LABEL_42;
    }

LABEL_44:
    LOBYTE(v38) = v22;
    HIBYTE(v38) = v16;
    result = C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(a4, &v38);
LABEL_45:
    v14 = ++v16;
  }

  while (v16 < v36);
  return result;
}

void C3D::RenderGraph::addDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3)
{
  if (C3DMeshElementGetPrimitiveCount(a2) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  if (C3DMeshElementGetPrimitiveCount(a3) == -1)
  {
    C3D::RenderGraph::addDependency();
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v7 = C3DMeshElementGetPrimitiveCount(a3);

  C3D::RenderGraph::addDependency(this, PrimitiveCount, v7);
}

void C3D::RenderGraph::removeDependency(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::Pass *a3)
{
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  v6 = C3DMeshElementGetPrimitiveCount(a3);
  v7 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), PrimitiveCount);
  v8 = *(this + 3);
  v9 = v6;
  v10 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v8, v6);
  if (*(v10 + 40))
  {
    v11 = v10;
    v12 = 0;
    do
    {
      if ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v12) & 0x7FFF) == PrimitiveCount)
      {
        v13 = (*(v11 + 40) - 1);
        v14 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v12);
        v15 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v13);
        v16 = *v14;
        *v14 = *v15;
        *v15 = v16;
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v11 + 32, v13);
      }

      else
      {
        v12 = (v12 + 1);
      }
    }

    while (v12 < *(v11 + 40));
  }

  if (*(v7 + 16))
  {
    v17 = 0;
    do
    {
      if ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v17) & 0x7FFF) == v9)
      {
        v18 = (*(v7 + 16) - 1);
        v19 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v17);
        v20 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 8, v18);
        v21 = *v19;
        *v19 = *v20;
        *v20 = v21;
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v7 + 8, v18);
      }

      else
      {
        v17 = (v17 + 1);
      }
    }

    while (v17 < *(v7 + 16));
  }
}

uint64_t C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = v2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 4 * v2;
}

void C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 12) < a2)
      {
        v6 = (a2 * 1.5);
        Aligned = C3DScratchAllocatorAllocateAligned(*a1, 4 * v6, 4, 0);
        memcpy(Aligned, v5, 4 * *(a1 + 8));
        *(a1 + 16) = Aligned;
        *(a1 + 12) = v6;
        v5 = Aligned;
        v2 = *(a1 + 8);
      }

      bzero(&v5[4 * v2], 4 * (a2 - v2));
    }

    *(a1 + 8) = a2;
  }
}

void C3D::RenderGraph::setCustomTechnique(C3D::RenderGraph *this, CFTypeRef cf)
{
  v3 = *(this + 24);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 24) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(this + 24) = v5;
    *(this + 208) = 0;
    v6 = *(this + 25);
    if (v6)
    {
      CFRelease(v6);
      *(this + 25) = 0;
    }
  }
}

uint64_t C3D::RenderGraph::finalTechnique(C3D::RenderGraph *this, uint64_t a2)
{
  if ((*(this + 208) & 1) == 0)
  {
    v3 = *(this + 25);
    if (v3)
    {
      CFRelease(v3);
      *(this + 25) = 0;
    }

    PointOfView = C3DEngineContextGetPointOfView(*(this + 1), a2);
    if (PointOfView && (Camera = C3DNodeGetCamera(PointOfView, v5)) != 0)
    {
      Technique = C3DCameraGetTechnique(Camera, v7);
    }

    else
    {
      Technique = 0;
    }

    Mutable = CFArrayCreateMutable(0, 10, MEMORY[0x277CBF128]);
    Scene = C3DEngineContextGetScene(*(this + 1), v10);
    LightingSystem = C3DSceneGetLightingSystem(Scene, v12);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN3C3D11RenderGraph14finalTechniqueEv_block_invoke;
    v20[3] = &__block_descriptor_40_e21_v16__0____C3DLight__8l;
    v20[4] = Mutable;
    C3DLightingSystemEnumerateLightsWithTechnique(LightingSystem, v20);
    if (Technique)
    {
      CFArrayAppendValue(Mutable, Technique);
    }

    v14 = *(this + 24);
    if (v14)
    {
      CFArrayAppendValue(Mutable, v14);
    }

    if (CFArrayGetCount(Mutable))
    {
      v15 = C3DFXTechniqueCreateBySequencingTechniques(Mutable, 0);
      v16 = *(this + 25);
      if (v16 != v15)
      {
        if (v16)
        {
          CFRelease(v16);
          *(this + 25) = 0;
        }

        if (v15)
        {
          v17 = CFRetain(v15);
        }

        else
        {
          v17 = 0;
        }

        *(this + 25) = v17;
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      v18 = *(this + 25);
      if (v18)
      {
        CFRelease(v18);
        *(this + 25) = 0;
      }
    }

    CFRelease(Mutable);
    *(this + 208) = 1;
  }

  return *(this + 25);
}

void ___ZN3C3D11RenderGraph14finalTechniqueEv_block_invoke(uint64_t a1, uint64_t a2)
{
  Technique = C3DLightGetTechnique(a2, a2);
  if (Technique)
  {
    v4 = Technique;
    v5 = *(a1 + 32);

    CFArrayAppendValue(v5, v4);
  }
}

void C3D::RenderGraph::reset(C3D::RenderGraphResourceManager **this)
{
  if ((*(this + 210) & 1) == 0)
  {
    C3D::RenderGraph::checkResources(this);
  }

  C3D::RenderGraphResourceManager::purgeIfNeeded(this[16]);
  v3 = this[2];
  v2 = (this + 2);
  C3DScratchAllocatorReset(v3);
  Aligned = C3DScratchAllocatorAllocateAligned(*v2, 24, 8, 0);
  v2[1] = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, *v2);
  v2[15] = C3D::ScratchAllocate<C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>,void *&>(*v2, v2);
  v5 = C3DScratchAllocatorAllocateAligned(*v2, 24, 8, 0);
  v2[16] = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(v5, *v2);

  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(v2 + 5, 32);
}

uint64_t C3D::RenderGraph::checkResources(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      if (v3)
      {
        v4 = *(v1 + 16);
        v5 = &v4[v3];
        do
        {
          v6 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v2 + 24), *v4);
          v7 = C3D::Pass::resource(*v6);
          this = C3D::PassResource::outputCount(v7);
          if (this)
          {
            v8 = 0;
            do
            {
              v9 = C3D::Pass::resource(*v6);
              C3D::PassResource::outputAtIndex(v9, v8++);
              v10 = C3D::Pass::resource(*v6);
              this = C3D::PassResource::outputCount(v10);
            }

            while (v8 < this);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      v1 = *(v1 + 24);
    }

    while (v1);
  }

  return this;
}

void *C3D::ScratchAllocate<C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>,void *&>(uint64_t a1, void **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(a1, 40, 8, 0);
  C3D::ScratchAllocator::ScratchAllocator(&v5, *a2);
  *Aligned = v5;
  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(Aligned, 32);
  return Aligned;
}

uint64_t C3D::RenderGraph::setup(C3D::RenderGraph *this, uint64_t a2)
{
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1), a2);
  C3DStackAllocatorPushFrame(StackAllocator, v4);
  *(this + 209) = 1;
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1), v5);
  if (*(this + 21))
  {
    [-[SCNMTLRenderContext layerTarget](RenderContext) setFramebufferOnly:0];
  }

  v8 = *(*(this + 3) + 8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), i);
      (*(**v10 + 8))(*v10);
    }
  }

  C3D::RenderGraph::resolvePartialDependencies(this, v7);
  C3D::RenderGraph::removeInvalidPasses(this);
  v11 = C3D::RenderGraph::sort(this);
  *(this + 211) = v11;
  if (v11)
  {
    C3D::RenderGraph::resolvePartialCompatibility(this);
    C3D::RenderGraph::validate(this);
  }

  *(this + 209) = 0;

  return C3DStackAllocatorPopFrame(StackAllocator, v12);
}

void C3D::RenderGraph::resolvePartialDependencies(C3D::RenderGraph *this, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1), a2);
  C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(&v45, StackAllocator);
  v4 = *(this + 3);
  v5 = *(v4 + 8);
  if (*(v4 + 8))
  {
    v6 = 0;
    while (1)
    {
      v7 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v6);
      C3D::Array<C3D::RenderGraph::Link,16u,C3D::StackAllocator>::resize(&v45, 0);
      v47 = 16;
      v48 = &v49;
      if (*(v7 + 40))
      {
        v8 = 0;
        do
        {
          v9 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 32, v8);
          if (HIBYTE(*v9) == 255 || (*v9 & 0xFF0000) == 0xFF0000)
          {
            C3D::Array<C3D::RenderGraph::Link,0u,C3D::StackAllocator>::push_back<C3D::RenderGraph::Link&>(&v45, v9);
            v10 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 32, v8);
            v11 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v7 + 32, (*(v7 + 40) - 1));
            v12 = *v10;
            *v10 = *v11;
            *v11 = v12;
            C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v7 + 32, *(v7 + 40) - 1);
          }

          else
          {
            ++v8;
          }
        }

        while (v8 < *(v7 + 40));
      }

      if (v46)
      {
        std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,false>(v48, &v48[v46], 126 - 2 * __clz(v46), 1);
        if (v46)
        {
          break;
        }
      }

LABEL_41:
      v6 = (v6 + 1);
      if (v6 == v5)
      {
        return;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v45, v13);
      v15 = v14;
      if (!v13)
      {
        break;
      }

      v16 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v45, (v13 - 1));
      v17 = *v15;
      if (((*v15 ^ *v16) & 0x7FFF) != 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (++v13 >= v46)
      {
        if (v46)
        {
          for (i = 0; i < v46; ++i)
          {
            v24 = *(this + 3);
            v25 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v45, i);
            v26 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v24, *v25 & 0x7FFF);
            C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(v42, StackAllocator);
            if (i < v46)
            {
              v27 = i;
              do
              {
                v28 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v45, v27);
                v29 = v28;
                if (v27)
                {
                  v30 = *v28;
                  if (((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v45, (v27 - 1)) ^ v30) & 0x7FFF) != 0)
                  {
                    break;
                  }
                }

                v31 = *v29;
                buf[0] = HIBYTE(*v29);
                buf[1] = BYTE2(v31);
                C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(v42, buf);
                ++v27;
              }

              while (v27 < v46);
            }

            v32 = C3D::RenderGraph::matchingPortForNodes(this, v26, v7, v42);
            v34 = v43;
            if (v43)
            {
              goto LABEL_35;
            }

            v35 = scn_default_log(v32, v33);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              v40 = (***v7)();
              v41 = (***v26)();
              *buf = 136315650;
              v51 = "!portsPairs.empty()";
              v52 = 2080;
              v53 = v40;
              v54 = 2080;
              v55 = v41;
              _os_log_fault_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unable to resolve dependency between %s and %s", buf, 0x20u);
            }

            v34 = v43;
            if (v43)
            {
LABEL_35:
              v36 = v44;
              v37 = &v44[2 * v34];
              do
              {
                v38 = *v36;
                if (v38 != 255)
                {
                  v39 = v36[1];
                  if (v39 != 255)
                  {
                    C3D::RenderGraph::addDependency(this, *v26, *v7, v38, v39);
                  }
                }

                v36 += 2;
              }

              while (v36 != v37);
            }
          }
        }

        goto LABEL_41;
      }
    }

    v17 = *v14;
LABEL_17:
    v18 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v17 & 0x7FFF);
    if (*(v18 + 16))
    {
      v19 = 0;
      do
      {
        while ((*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v18 + 8, v19) & 0x7FFF) == v6)
        {
          v20 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v18 + 8, v19);
          v21 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v18 + 8, (*(v18 + 16) - 1));
          v22 = *v20;
          *v20 = *v21;
          *v21 = v22;
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::resize(v18 + 8, *(v18 + 16) - 1);
          if (*(v18 + 16) <= v19)
          {
            goto LABEL_23;
          }
        }

        ++v19;
      }

      while (v19 < *(v18 + 16));
    }

    goto LABEL_23;
  }
}

void C3D::RenderGraph::removeInvalidPasses(C3D::RenderGraph *this)
{
  v54 = *MEMORY[0x277D85DE8];
  C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::resize(this + 32, 0);
  *(this + 11) = 0;
  *(this + 6) = this + 56;
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1), v2);
  v46 = StackAllocator;
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(&v46, 32);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v44, StackAllocator);
  v5 = *(this + 3);
  v6 = *(v5 + 8);
  if (*(v5 + 8))
  {
    v7 = 0;
    do
    {
      *buf = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v7);
      if (*C3D::Pass::descriptor(**buf) == 5)
      {
        C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v44, buf);
      }

      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }

  if (!v45)
  {
    goto LABEL_34;
  }

  do
  {
    v8 = *C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::back(&v44, v4);
    C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(&v44, v9);
    *buf = *v8;
    C3D::Hash<C3D::Pass *,C3D::StackAllocator>::insert(&v46, *buf, buf);
    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::Array(v43, *(this + 2), *(v8 + 16));
    v10 = *(v8 + 16);
    if (!v10)
    {
      continue;
    }

    v11 = 0;
    v12 = *(v8 + 24);
    v13 = &v12[v10];
    do
    {
      v14 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v12 & 0x7FFF);
      v42 = v14;
      v15 = *v12 & 0xFF0000;
      if (HIBYTE(*v12) == 255 || v15 == 16711680)
      {
        v19 = HIBYTE(*v12) == 255;
        v20 = scn_default_log(v14, v4);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          if (v15 == 16711680)
          {
            if (v21)
            {
              v22 = (***v8)();
              v23 = (***v42)();
              v24 = (***v42)();
              *buf = 136315650;
              *&buf[4] = v22;
              v52 = 2080;
              *v53 = v23;
              *&v53[8] = 2080;
              *&v53[10] = v24;
              _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency with pass %s. Pass %s will be ignored", buf, 0x20u);
            }

            goto LABEL_26;
          }

          if (v21)
          {
            v31 = (***v8)();
            v32 = *(v12 + 2);
            v33 = (***v42)();
            v34 = (***v42)();
            *buf = 136315906;
            *&buf[4] = v31;
            v52 = 1024;
            *v53 = v32;
            *&v53[4] = 2080;
            *&v53[6] = v33;
            *&v53[14] = 2080;
            *&v53[16] = v34;
            _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency from output port %d of pass %s. Pass %s will be ignored", buf, 0x26u);
          }
        }

        else if (v21)
        {
          v27 = (***v8)();
          v28 = *(v12 + 3);
          v29 = (***v42)();
          v30 = (***v42)();
          *buf = 136315906;
          *&buf[4] = v27;
          v52 = 1024;
          *v53 = v28;
          *&v53[4] = 2080;
          *&v53[6] = v29;
          *&v53[14] = 2080;
          *&v53[16] = v30;
          _os_log_error_impl(&dword_21BEF7000, v20, OS_LOG_TYPE_ERROR, "Error: Pass %s has an unresolved dependency on input port %d with pass %s. Pass %s will be ignored", buf, 0x26u);
        }

        v25 = *v12;
        v26 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v12 & 0x7FFF);
        C3D::RenderGraph::logDependencyInputMismatch(this, v8, v26, BYTE2(v25), HIBYTE(v25));
LABEL_26:
        v11 = 1;
        goto LABEL_27;
      }

      v16 = (v50 - 1) & *v14;
      v17 = *(v49 + 2 * v16);
      if (v17 < 2)
      {
        goto LABEL_15;
      }

      while ((v17 & 2) == 0 || *(v47 + 8 * v16) != *v14)
      {
        ++v16;
        v18 = v17 >= 4;
        v17 >>= 1;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      if (!v48)
      {
LABEL_15:
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>(v43, v12);
        C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v44, &v42);
      }

LABEL_27:
      ++v12;
    }

    while (v12 != v13);
    if (v11)
    {
      C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v8 + 8, v43);
    }
  }

  while (v45);
LABEL_34:
  if (v6)
  {
    v35 = 0;
    do
    {
      v36 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v35);
      v38 = v36;
      v39 = (v50 - 1) & *v36;
      v40 = *(v49 + 2 * v39);
      if (v40 < 2)
      {
        goto LABEL_40;
      }

      while ((v40 & 2) == 0 || *(v47 + 8 * v39) != *v36)
      {
        ++v39;
        v18 = v40 >= 4;
        v40 >>= 1;
        if (!v18)
        {
          goto LABEL_40;
        }
      }

      if (!v48)
      {
LABEL_40:
        v41 = scn_default_log(v36, v37);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          C3D::RenderGraph::removeInvalidPasses(buf, v38);
        }

        C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(this + 8, v38);
      }

      v35 = (v35 + 1);
    }

    while (v35 != v6);
  }
}

BOOL C3D::RenderGraph::sort(C3D::RenderGraph *this)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(this + 2), 40, 8, 0);
  v3 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, *(this + 2));
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(this + 12) = v3;
  if (*(*(this + 3) + 8) >= 0x7FFFu)
  {
    C3D::RenderGraph::sort();
  }

  v4 = C3D::RenderGraph::clearAllDirtyBits(this, 1);
  v6 = *(*(this + 3) + 8);
  LOWORD(v63[0]) = 0;
  if (v6)
  {
    v5 = 0;
    do
    {
      v4 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), v5);
      if (!*(v4 + 16))
      {
        v7 = *(this + 10);
        if (v7)
        {
          v8 = 8 * v7;
          v9 = *(this + 6);
          while (*v9 != *v4)
          {
            ++v9;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v9 = *(this + 6);
        }

        if (v9 == (*(this + 6) + 8 * v7))
        {
LABEL_12:
          v4 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::push_back<unsigned short &>(*(this + 12), v63);
        }
      }

      ++LOWORD(v63[0]);
      v5 = LOWORD(v63[0]);
    }

    while (v6 > LOWORD(v63[0]));
  }

  v10 = *(this + 12);
  if (!*(v10 + 8))
  {
    v11 = scn_default_log(v4, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3D::RenderGraph::sort(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = *(this + 12);
    if (!v10)
    {
      *(this + 13) = 0;
      return 1;
    }
  }

  v19 = v10;
  do
  {
    v20 = v19;
    if (v10 != v19)
    {
      *(v10 + 24) = v19;
      *(v19 + 32) = v10;
    }

    v21 = *(v19 + 8);
    if (!v21)
    {
      break;
    }

    v19 = 0;
    v22 = *(v20 + 16);
    v23 = &v22[v21];
    do
    {
      v24 = *v22;
      v25 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v22);
      v26 = *(v25 + 40);
      if (v26)
      {
        v27 = *(v25 + 48);
        v28 = &v27[v26];
        do
        {
          v29 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v27 & 0x7FFF);
          v30 = *(v29 + 16);
          if (v30)
          {
            v31 = 0;
            v32 = *(v29 + 24);
            v33 = 4 * v30;
            do
            {
              if ((*v32 & 0x8000) != 0)
              {
                ++v31;
              }

              else if ((*v32 & 0x7FFF) == v24)
              {
                ++v31;
                *v32 |= 0x8000u;
              }

              ++v32;
              v33 -= 4;
            }

            while (v33);
          }

          else
          {
            v31 = 0;
          }

          v34 = *(this + 6);
          v35 = *(this + 10);
          v36 = &v34[v35];
          if (v35)
          {
            v37 = 8 * v35;
            while (*v34 != *v29)
            {
              ++v34;
              v37 -= 8;
              if (!v37)
              {
                v34 = v36;
                break;
              }
            }
          }

          if (v34 == v36 && v31 == v30)
          {
            if (!v19)
            {
              v19 = C3DScratchAllocatorAllocateAligned(*(this + 2), 40, 8, 0);
              v38 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(v19, *(this + 2));
              *(v38 + 3) = 0;
              *(v38 + 4) = 0;
            }

            v39 = *v27 & 0x7FFF;
            LOWORD(v63[0]) = *v27 & 0x7FFF;
            v40 = *(v19 + 8);
            if (v40)
            {
              v41 = 2 * v40;
              v42 = *(v19 + 16);
              while (*v42 != v39)
              {
                ++v42;
                v41 -= 2;
                if (!v41)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
              v42 = *(v19 + 16);
            }

            if (v42 == (*(v19 + 16) + 2 * v40))
            {
LABEL_50:
              C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::push_back<unsigned short &>(v19, v63);
            }
          }

          ++v27;
        }

        while (v27 != v28);
      }

      ++v22;
    }

    while (v22 != v23);
    v10 = v20;
  }

  while (v19);
  v43 = *(this + 12);
  *(this + 13) = v20;
  if (!v43)
  {
    return 1;
  }

  while (1)
  {
    v44 = *(v43 + 8);
    if (v44)
    {
      break;
    }

LABEL_73:
    v43 = *(v43 + 24);
    result = 1;
    if (!v43)
    {
      return result;
    }
  }

  v45 = *(v43 + 16);
  v46 = &v45[v44];
  while (1)
  {
    v47 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v45);
    v48 = v47;
    v49 = *(v47 + 16);
    if (v49)
    {
      break;
    }

LABEL_61:
    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::Array(v63, *(this + 2), *(v47 + 40));
    v52 = *(v48 + 40);
    if (v52)
    {
      v53 = *(v48 + 48);
      v54 = &v53[v52];
      do
      {
        v55 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v53 & 0x7FFF);
        v56 = *(this + 10);
        if (v56)
        {
          v57 = 8 * v56;
          v58 = *(this + 6);
          while (*v58 != *v55)
          {
            ++v58;
            v57 -= 8;
            if (!v57)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          v58 = *(this + 6);
        }

        if (v58 == (*(this + 6) + 8 * v56))
        {
LABEL_70:
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>(v63, v53);
        }

        ++v53;
      }

      while (v53 != v54);
    }

    C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v48 + 32, v63);
    if (++v45 == v46)
    {
      goto LABEL_73;
    }
  }

  v50 = *(v47 + 24);
  v51 = 4 * v49;
  while ((*v50 & 0x8000) != 0)
  {
    ++v50;
    v51 -= 4;
    if (!v51)
    {
      goto LABEL_61;
    }
  }

  v60 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v50 & 0x7FFF);
  if (C3D::RenderGraph::sort(void)::done)
  {
    return 0;
  }

  C3D::RenderGraph::sort(void)::done = 1;
  v62 = scn_default_log(v60, v61);
  result = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3D::RenderGraph::sort();
    return 0;
  }

  return result;
}

void C3D::RenderGraph::resolvePartialCompatibility(uint64_t *this)
{
  v115 = *MEMORY[0x277D85DE8];
  v2 = this[12];
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        break;
      }

LABEL_77:
      v2 = *(v2 + 24);
      if (!v2)
      {
        goto LABEL_78;
      }
    }

    v4 = *(v2 + 16);
    v96 = &v4[v3];
    while (1)
    {
      v5 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](this[3], *v4);
      v6 = C3D::Pass::descriptor(*v5);
      v7 = C3D::PassDescriptor::inputCount(v6);
      v8 = C3D::Pass::descriptor(*v5);
      v9 = C3D::PassDescriptor::outputCount(v8);
      v10 = v7;
      if (v7)
      {
        v11 = 0;
        do
        {
          if ((*(C3D::Pass::inputBufferParameterAtIndex(*v5, v11) + 66) & 0x80) != 0)
          {
            v12 = C3D::Pass::outputBufferParameterAtIndex(*v5, v11);
            v14 = v12;
            if (v2 == this[12] && (*(v12 + 66) & 0x100) == 0)
            {
              v15 = scn_default_log(v12, v13);
              v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
              if (v16)
              {
                C3D::RenderGraph::resolvePartialCompatibility(v114, v5);
              }

              v18 = scn_default_log(v16, v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::resolvePartialCompatibility(v112, &v113, v18);
              }
            }

            *(v14 + 66) |= 0x80u;
          }

          ++v11;
        }

        while (v10 != v11);
      }

      if (v9)
      {
        break;
      }

LABEL_50:
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v43 = C3D::Pass::inputBufferParameterAtIndex(*v5, i);
          if ((*(v43 + 66) & 0x80) != 0)
          {
            v44 = v43;
            v45 = C3D::Pass::outputBufferParameterAtIndex(*v5, i);
            C3D::PropagateMissingTextureParameters((v44 + 16), (v45 + 16));
            C3D::PropagateMissingTextureParameters((v45 + 16), (v44 + 16));
          }
        }

        v46 = 0;
        do
        {
          v47 = C3D::Pass::inputBufferParameterAtIndex(*v5, v46);
          if ((*(v47 + 66) & 4) != 0)
          {
            v48 = v47;
            v49 = C3D::Pass::descriptor(*v5);
            v50 = C3D::PassDescriptor::outputCount(v49);
            if (v50 == 1)
            {
              v52 = C3D::Pass::descriptor(*v5);
              v53 = C3D::PassDescriptor::outputAtIndex(v52, 0);
              v55 = v53;
            }

            else
            {
              if (!**(v48 + 1))
              {
                v56 = scn_default_log(v50, v51);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v107, &v108, v56);
                }
              }

              v53 = C3D::Pass::outputBufferParameterNamed(*v5, *(v48 + 1));
              v55 = v53;
              if (!v53)
              {
                v57 = scn_default_log(0, v54);
                v53 = os_log_type_enabled(v57, OS_LOG_TYPE_FAULT);
                if (v53)
                {
                  v59 = *(v48 + 1);
                  *buf = 136315394;
                  v104 = "outputParam";
                  v105 = 2080;
                  v106 = v59;
                  _os_log_fault_impl(&dword_21BEF7000, v57, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't dispatch input to output, unable to find output named %s.", buf, 0x16u);
                }

                v55 = 0;
              }
            }

            if (*v48 != *v55)
            {
              v58 = scn_default_log(v53, v54);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::resolvePartialCompatibility(v101, &v102, v58);
              }
            }

            C3D::PropagateMissingTextureParameters(v48 + 8, v55 + 8);
          }

          ++v46;
        }

        while (v10 > v46);
      }

      v60 = *(v5 + 40);
      if (v60)
      {
        v61 = *(v5 + 48);
        v62 = 4 * v60;
        do
        {
          v63 = *v61;
          v64 = C3D::Pass::outputBufferParameterAtIndex(*v5, BYTE2(*v61));
          v65 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](this[3], v63 & 0x7FFF);
          v66 = C3D::Pass::inputBufferParameterAtIndex(*v65, HIBYTE(v63));
          if (!C3D::PassIODescriptor::isCompatible(v64, v66))
          {
            C3D::PropagateMissingTextureParameters(v64 + 8, v66 + 8);
            C3D::PropagateMissingTextureParameters(v66 + 8, v64 + 8);
          }

          ++v61;
          v62 -= 4;
        }

        while (v62);
      }

      if (++v4 == v96)
      {
        goto LABEL_77;
      }
    }

    for (j = 0; j != v9; ++j)
    {
      if ((*(C3D::Pass::outputBufferParameterAtIndex(*v5, j) + 66) & 0x80) != 0)
      {
        v20 = C3D::Pass::inputBufferParameterAtIndex(*v5, j);
        v22 = v20;
        if (v2 == this[12] && (*(v20 + 66) & 0x100) == 0)
        {
          v23 = scn_default_log(v20, v21);
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
          if (v24)
          {
            C3D::RenderGraph::resolvePartialCompatibility(v111, v5);
          }

          v26 = scn_default_log(v24, v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            C3D::RenderGraph::resolvePartialCompatibility(v109, &v110, v26);
          }
        }

        *(v22 + 66) |= 0x80u;
      }
    }

    v27 = 0;
    while (1)
    {
      v28 = C3D::Pass::outputBufferParameterAtIndex(*v5, v27);
      v29 = *(v5 + 40);
      if (v29)
      {
        v30 = *(v5 + 48);
        v31 = 4 * v29 - 4;
        do
        {
          v32 = *(v30 + 2);
          v33 = v32 == v27;
          v34 = v32 == v27 || v31 == 0;
          v31 -= 4;
          v30 += 4;
        }

        while (!v34);
        v36 = (v28 + 66);
        v35 = *(v28 + 66);
        if ((v35 & 8) == 0)
        {
          goto LABEL_39;
        }

        if (v32 == v27)
        {
          v37 = v35 & 0xFFF7;
          goto LABEL_48;
        }
      }

      else
      {
        v36 = (v28 + 66);
        v35 = *(v28 + 66);
        if ((v35 & 8) == 0)
        {
          v33 = 0;
LABEL_39:
          if (v33 || (v35 & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v37 = v35 | 8;
LABEL_48:
          *v36 = v37;
          goto LABEL_49;
        }
      }

      if ((v35 & 0x80) != 0)
      {
        v38 = C3D::Pass::inputBufferParameterAtIndex(*v5, v27);
        v39 = *(v5 + 16);
        if (v39)
        {
          v40 = *(v5 + 24);
          v41 = 4 * v39;
          while (*(v40 + 2) != v27)
          {
            v40 += 4;
            v41 -= 4;
            if (!v41)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_49;
        }

LABEL_47:
        *(v38 + 66) &= ~0x80u;
        v37 = *v36 & 0xFF7C | 2;
        goto LABEL_48;
      }

LABEL_49:
      if (++v27 == v9)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_78:
  for (k = this[13]; k; k = *(k + 32))
  {
    v68 = *(k + 8);
    if (v68)
    {
      v69 = *(k + 16);
      v70 = &v69[v68];
      do
      {
        v71 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](this[3], *v69);
        v72 = C3D::Pass::descriptor(*v71);
        v73 = C3D::PassDescriptor::inputCount(v72);
        if (v73)
        {
          v74 = v73;
          v75 = 0;
          do
          {
            v76 = C3D::Pass::inputBufferParameterAtIndex(*v71, v75);
            if ((*(v76 + 66) & 4) != 0)
            {
              v77 = v76;
              v78 = C3D::Pass::descriptor(*v71);
              v79 = C3D::PassDescriptor::outputCount(v78);
              if (v79 == 1)
              {
                v81 = C3D::Pass::descriptor(*v71);
                v82 = C3D::PassDescriptor::outputAtIndex(v81, 0);
                v84 = v82;
              }

              else
              {
                if (!**(v77 + 1))
                {
                  v85 = scn_default_log(v79, v80);
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
                  {
                    C3D::RenderGraph::resolvePartialCompatibility(v99, &v100, v85);
                  }
                }

                v82 = C3D::Pass::outputBufferParameterNamed(*v71, *(v77 + 1));
                v84 = v82;
                if (!v82)
                {
                  v86 = scn_default_log(0, v83);
                  v82 = os_log_type_enabled(v86, OS_LOG_TYPE_FAULT);
                  if (v82)
                  {
                    v88 = *(v77 + 1);
                    *buf = 136315394;
                    v104 = "outputParam";
                    v105 = 2080;
                    v106 = v88;
                    _os_log_fault_impl(&dword_21BEF7000, v86, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Can't dispatch input to output, unable to find output named %s.", buf, 0x16u);
                  }

                  v84 = 0;
                }
              }

              if (*v77 != *v84)
              {
                v87 = scn_default_log(v82, v83);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v97, &v98, v87);
                }
              }

              C3D::PropagateMissingTextureParameters(v84 + 8, v77 + 8);
            }

            ++v75;
          }

          while (v75 < v74);
        }

        v89 = *(v71 + 16);
        if (v89)
        {
          v90 = *(v71 + 24);
          v91 = 4 * v89;
          do
          {
            v92 = *v90;
            v93 = C3D::Pass::inputBufferParameterAtIndex(*v71, BYTE2(*v90));
            v94 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](this[3], v92 & 0x7FFF);
            v95 = C3D::Pass::outputBufferParameterAtIndex(*v94, HIBYTE(v92));
            if (!C3D::PassIODescriptor::isCompatible(v93, v95))
            {
              C3D::PropagateMissingTextureParameters(v93 + 8, v95 + 8);
            }

            ++v90;
            v91 -= 4;
          }

          while (v91);
        }

        ++v69;
      }

      while (v69 != v70);
    }
  }
}

void C3D::RenderGraph::validate(C3D::RenderGraph *this)
{
  v164 = *MEMORY[0x277D85DE8];
  for (i = *(this + 12); i; i = *(v135 + 24))
  {
    v135 = i;
    v3 = *(i + 8);
    if (v3)
    {
      v4 = *(i + 16);
      v136 = &v4[v3];
      do
      {
        v137 = v4;
        v5 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v4);
        v6 = C3D::Pass::descriptor(*v5);
        if (C3D::PassDescriptor::inputCount(v6))
        {
          v8 = 0;
          do
          {
            v9 = C3D::Pass::descriptor(*v5);
            v10 = C3D::PassDescriptor::inputAtIndex(v9, v8);
            if ((*(v10 + 66) & 0x80) != 0)
            {
              v11 = C3D::Pass::descriptor(*v5);
              v12 = C3D::PassDescriptor::outputAtIndex(v11, v8);
              v13 = C3D::Pass::descriptor(*v5);
              if (*v13 == 2 && (*(v10 + 66) & 3) != 1)
              {
                if ((C3D::RenderGraph::validate(void)::done & 1) == 0)
                {
                  C3D::RenderGraph::validate(void)::done = 1;
                  v15 = scn_default_log(v13, v14);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                  {
                    v30 = (***v5)();
                    v31 = *(v10 + 8);
                    *v142 = 136315650;
                    *&v142[4] = v30;
                    *&v142[12] = 2048;
                    *&v142[14] = v8;
                    *&v142[22] = 2080;
                    *&v142[24] = v31;
                    _os_log_error_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_ERROR, "Error: ReadWrite pass %s require input %zu:%s with load mode set to Load, forcing it.", v142, 0x20u);
                  }
                }

                *(v10 + 66) = *(v10 + 66) & 0xFFFC | 1;
              }

              isCompatible = C3D::PassIODescriptor::isCompatible(v10, v12);
              if (!isCompatible)
              {
                v18 = scn_default_log(isCompatible, v17);
                v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
                if (v19)
                {
                  C3D::RenderGraph::validate(v163, v5);
                }

                v21 = scn_default_log(v19, v20);
                v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
                if (v22)
                {
                  C3D::PassIODescriptor::description(v10, v142);
                  v26 = v142[23];
                  v27 = *v142;
                  C3D::PassIODescriptor::description(v12, &__p);
                  v28 = v142;
                  if (v26 < 0)
                  {
                    v28 = v27;
                  }

                  p_p = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315394;
                  v160 = v28;
                  v161 = 2080;
                  v162 = p_p;
                  _os_log_error_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_ERROR, "Error: Input %s doesn't match output %s.", buf, 0x16u);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if ((v142[23] & 0x80000000) != 0)
                  {
                    operator delete(*v142);
                  }
                }

                v24 = scn_default_log(v22, v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::resolvePartialCompatibility(v157, &v158, v24);
                }
              }
            }

            v25 = C3D::Pass::descriptor(*v5);
            ++v8;
          }

          while (v8 < C3D::PassDescriptor::inputCount(v25));
        }

        v32 = *(v5 + 40);
        if (v32)
        {
          v33 = *(v5 + 48);
          v34 = 4 * v32;
          do
          {
            v35 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v33 & 0x7FFF);
            v37 = v35;
            if (HIBYTE(*v33) == 255 || (*v33 & 0xFF0000) == 0xFF0000)
            {
              v38 = scn_default_log(v35, v36);
              v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
              if (v39)
              {
                v88 = (***v37)();
                v89 = (***v5)();
                *v142 = 136315394;
                *&v142[4] = v88;
                *&v142[12] = 2080;
                *&v142[14] = v89;
                _os_log_error_impl(&dword_21BEF7000, v38, OS_LOG_TYPE_ERROR, "Error: Unresolved dependency between %s and %s\n", v142, 0x16u);
              }

              v41 = scn_default_log(v39, v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v155, &v156, v41);
              }
            }

            v42 = C3D::Pass::descriptor(*v5);
            v43 = C3D::PassDescriptor::outputAtIndex(v42, *(v33 + 2));
            v44 = C3D::Pass::descriptor(*v37);
            v45 = C3D::PassDescriptor::inputAtIndex(v44, *(v33 + 3));
            v47 = v45;
            if (*v43 == 1 && *(v43 + 31) == 1)
            {
              v48 = scn_default_log(v45, v46);
              v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
              if (v49)
              {
                v104 = *(v43 + 31);
                v105 = (***v5)();
                v106 = *(v33 + 2);
                v107 = *(v43 + 8);
                *v142 = 67109890;
                *&v142[4] = v104;
                *&v142[8] = 2080;
                *&v142[10] = v105;
                *&v142[18] = 1024;
                *&v142[20] = v106;
                *&v142[24] = 2080;
                *&v142[26] = v107;
                _os_log_error_impl(&dword_21BEF7000, v48, OS_LOG_TYPE_ERROR, "Error: Invalid output texture sampleCount %d for pass %s %d:%s, if no multisample needed, set it to 0", v142, 0x22u);
              }

              v51 = scn_default_log(v49, v50);
              v45 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);
              if (v45)
              {
                C3D::RenderGraph::validate(v153, &v154, v51);
              }
            }

            if (*v47 == 1 && *(v47 + 31) == 1)
            {
              v52 = scn_default_log(v45, v46);
              v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
              if (v53)
              {
                v108 = *(v47 + 31);
                v109 = (***v37)();
                v110 = *(v33 + 3);
                v111 = *(v47 + 8);
                *v142 = 67109890;
                *&v142[4] = v108;
                *&v142[8] = 2080;
                *&v142[10] = v109;
                *&v142[18] = 1024;
                *&v142[20] = v110;
                *&v142[24] = 2080;
                *&v142[26] = v111;
                _os_log_error_impl(&dword_21BEF7000, v52, OS_LOG_TYPE_ERROR, "Error: Invalid input texture sampleCount %d for pass %s %d:%s, if no multisample needed, set it to 0", v142, 0x22u);
              }

              v55 = scn_default_log(v53, v54);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v151, &v152, v55);
              }
            }

            isValid = C3D::PassIODescriptor::isValid(v43);
            if ((isValid & 1) == 0)
            {
              v58 = scn_default_log(isValid, v57);
              v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
              if (v59)
              {
                C3D::RenderGraph::validate(v150, v5);
              }

              v61 = scn_default_log(v59, v60);
              v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
              if (v62)
              {
                v90 = *(v33 + 3);
                C3D::PassIODescriptor::description(v43, v142);
                v91 = v142;
                if (v142[23] < 0)
                {
                  v91 = *v142;
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(__p.__r_.__value_.__r.__words[0]) = v90;
                LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 2) = v91;
                _os_log_error_impl(&dword_21BEF7000, v61, OS_LOG_TYPE_ERROR, "Error: Invalid output parameters for port %d: %s", &__p, 0x12u);
                if ((v142[23] & 0x80000000) != 0)
                {
                  operator delete(*v142);
                }
              }

              v64 = scn_default_log(v62, v63);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v148, &v149, v64);
              }
            }

            v65 = C3D::PassIODescriptor::isValid(v47);
            if ((v65 & 1) == 0)
            {
              v67 = scn_default_log(v65, v66);
              v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
              if (v68)
              {
                C3D::RenderGraph::validate(v147, v37);
              }

              v70 = scn_default_log(v68, v69);
              v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
              if (v71)
              {
                v92 = *(v33 + 2);
                C3D::PassIODescriptor::description(v47, v142);
                v93 = v142;
                if (v142[23] < 0)
                {
                  v93 = *v142;
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 67109378;
                HIDWORD(__p.__r_.__value_.__r.__words[0]) = v92;
                LOWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 2) = v93;
                _os_log_error_impl(&dword_21BEF7000, v70, OS_LOG_TYPE_ERROR, "Error: Buffer input parameters for port %d: %s", &__p, 0x12u);
                if ((v142[23] & 0x80000000) != 0)
                {
                  operator delete(*v142);
                }
              }

              v73 = scn_default_log(v71, v72);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v145, &v146, v73);
              }
            }

            v74 = C3D::PassIODescriptor::isCompatible(v43, v47);
            if (!v74)
            {
              v75 = scn_default_log(v74, v7);
              v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
              if (v76)
              {
                v94 = (***v5)();
                v95 = (***v37)();
                *v142 = 136315394;
                *&v142[4] = v94;
                *&v142[12] = 2080;
                *&v142[14] = v95;
                _os_log_error_impl(&dword_21BEF7000, v75, OS_LOG_TYPE_ERROR, "Error: Compatibility mismatch between %s and %s\n", v142, 0x16u);
              }

              v78 = scn_default_log(v76, v77);
              v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
              if (v79)
              {
                v96 = *v33;
                v97 = BYTE2(*v33);
                *v142 = 67109376;
                *&v142[4] = v97;
                *&v142[8] = 1024;
                *&v142[10] = HIBYTE(v96);
                _os_log_error_impl(&dword_21BEF7000, v78, OS_LOG_TYPE_ERROR, "Error: Output buffer parameters for port %d isn't compatible with input port %d\n", v142, 0xEu);
              }

              v81 = scn_default_log(v79, v80);
              v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
              if (v82)
              {
                v98 = (***v5)();
                v99 = *(v33 + 3);
                C3D::PassIODescriptor::description(v43, &__p);
                v100 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v100 = __p.__r_.__value_.__r.__words[0];
                }

                *v142 = 136315650;
                *&v142[4] = v98;
                *&v142[12] = 1024;
                *&v142[14] = v99;
                *&v142[18] = 2080;
                *&v142[20] = v100;
                _os_log_error_impl(&dword_21BEF7000, v81, OS_LOG_TYPE_ERROR, "Error: Output descriptor of pass %s at port %d: %s", v142, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v84 = scn_default_log(v82, v83);
              v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
              if (v85)
              {
                v101 = (***v37)();
                v102 = *(v33 + 2);
                C3D::PassIODescriptor::description(v47, &__p);
                v103 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v103 = __p.__r_.__value_.__r.__words[0];
                }

                *v142 = 136315650;
                *&v142[4] = v101;
                *&v142[12] = 1024;
                *&v142[14] = v102;
                *&v142[18] = 2080;
                *&v142[20] = v103;
                _os_log_error_impl(&dword_21BEF7000, v84, OS_LOG_TYPE_ERROR, "Error: Input descriptor of pass %s at port %d: %s", v142, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              v87 = scn_default_log(v85, v86);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v143, &v144, v87);
              }
            }

            ++v33;
            v34 -= 4;
          }

          while (v34);
        }

        StackAllocator = C3DEngineContextGetStackAllocator(*(this + 1), v7);
        C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(v142, StackAllocator);
        v113 = *(v5 + 16);
        if (v113)
        {
          v114 = *(v5 + 24);
          v115 = 4 * v113;
          do
          {
            v116 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v114 & 0x7FFF);
            v117 = *v114;
            buf[0] = BYTE2(*v114);
            buf[1] = HIBYTE(v117);
            v118 = C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(v142, buf);
            if (HIBYTE(*v114) == 255 || (*v114 & 0xFF0000) == 0xFF0000)
            {
              v120 = scn_default_log(v118, v119);
              v121 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
              if (v121)
              {
                v124 = (***v5)();
                v125 = (***v116)();
                LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
                *(__p.__r_.__value_.__r.__words + 4) = v124;
                WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = v125;
                _os_log_error_impl(&dword_21BEF7000, v120, OS_LOG_TYPE_ERROR, "Error: Unresolved dependency between %s and %s\n", &__p, 0x16u);
              }

              v123 = scn_default_log(v121, v122);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::validate(v140, &v141, v123);
              }
            }

            ++v114;
            v115 -= 4;
          }

          while (v115);
        }

        v126 = 126 - 2 * __clz(*&v142[8]);
        if (*&v142[8])
        {
          v127 = v126;
        }

        else
        {
          v127 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,false>(*&v142[16], (*&v142[16] + 2 * *&v142[8]), v127, 1);
        v128 = *&v142[8];
        if (*&v142[8])
        {
          v129 = 0;
          do
          {
            if (v129)
            {
              v130 = *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v142, v129);
              v131 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v142, (v129 - 1));
              if (v130 == *v131)
              {
                v133 = scn_default_log(v131, v132);
                if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
                {
                  v134 = (***v5)();
                  LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
                  *(__p.__r_.__value_.__r.__words + 4) = "index == 0 || inputPorts[index].a != inputPorts[index - 1].a";
                  WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
                  *(&__p.__r_.__value_.__r.__words[1] + 6) = v129;
                  HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
                  v139 = v134;
                  _os_log_fault_impl(&dword_21BEF7000, v133, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Multiple dependencies on the same input %zu on %s", &__p, 0x20u);
                }
              }
            }

            ++v129;
          }

          while (v128 != v129);
        }

        v4 = v137 + 1;
      }

      while (v137 + 1 != v136);
    }
  }
}

void sub_21BF71A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void C3D::RenderGraph::allocateResources(C3D::RenderGraph *this, uint64_t a2)
{
  *(&v144[2] + 4) = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1), a2);
  v115 = [(SCNMTLRenderContext *)RenderContext frameTexturePool];
  v120 = this;
  v3 = *(this + 12);
  if (!v3)
  {
    return;
  }

  while (1)
  {
    v114 = v3;
    v112 = *(v3 + 8);
    if (v112)
    {
      break;
    }

LABEL_143:
    v3 = *(v114 + 24);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v113 = 0;
  while (1)
  {
    v5 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v114, v4);
    v121 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v120[3], *v5);
    v6 = *C3D::Pass::descriptor(*v121);
    v7 = *(v114 + 24);
    v117 = v6;
    if (v7 && ((v8 = *(v7 + 24), v6 == 2) ? (v9 = v8 == 0) : (v9 = 0), v9))
    {
      v106 = [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor];
      LOBYTE(v119) = 0;
      if (v112 - 1 == v4)
      {
        BYTE4(v119) = 0;
        v118 = 0;
        if (v106)
        {
          BYTE4(v119) = [objc_msgSend(objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "colorAttachments")] != 0;
          LOBYTE(v119) = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "depthAttachment")] != 0;
          v118 = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")] != 0;
        }
      }

      else
      {
        BYTE4(v119) = 0;
        v118 = 0;
      }
    }

    else
    {
      v119 = 0;
      v118 = 0;
    }

    v10 = C3D::Pass::resource(*v121);
    v11 = C3D::PassResource::outputCount(v10);
    v12 = C3D::PassDescriptor::outputCount((*v121 + 32));
    if (v11 != v12)
    {
      v14 = scn_default_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::allocateResources(v143, v144, v14);
      }
    }

    StackAllocator = C3DEngineContextGetStackAllocator(v120[1], v13);
    C3DStackAllocatorPushFrame(StackAllocator, v15);
    C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v125, StackAllocator);
    if (C3D::PassDescriptor::inputCount((*v121 + 32)))
    {
      v16 = 0;
      do
      {
        v17 = C3D::Pass::inputBufferParameterAtIndex(*v121, v16);
        if ((*(v17 + 66) & 0x80) != 0)
        {
          v18 = C3D::Pass::outputBufferParameterAtIndex(*v121, v16);
          if ((*(v18 + 66) & 8) != 0)
          {
            v19 = C3D::Pass::resource(*v121);
            v20 = C3D::PassResource::outputAtIndex(v19, v16);
            if (v20)
            {
              v22 = scn_default_log(v20, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                v31 = (***v121)();
                v32 = *(v18 + 8);
                *buf = 136315906;
                *&buf[4] = "resOutput == nullptr";
                *&buf[12] = 2080;
                *&buf[14] = v31;
                v139 = 1024;
                v140 = v16;
                v141 = 2080;
                v142 = v32;
                _os_log_fault_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Readwrite pass %s has an initialised output at index %d:%s should be null", buf, 0x26u);
              }
            }

            v23 = C3D::Pass::resource(*v121);
            v124 = C3D::PassResource::inputAtIndex(v23, v16);
            if (!v124)
            {
              v25 = scn_default_log(0, v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                v33 = (***v121)();
                v34 = *(v17 + 8);
                *buf = 136315906;
                *&buf[4] = "resInput";
                *&buf[12] = 2080;
                *&buf[14] = v33;
                v139 = 1024;
                v140 = v16;
                v141 = 2080;
                v142 = v34;
                _os_log_fault_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Readwrite pass %s has an uninitialised input at index %d:%s should be null", buf, 0x26u);
              }
            }

            v26 = C3D::Pass::resource(*v121);
            C3D::PassResource::setOutputAtIndex(v26, v124, v16);
            ++*(v124 + 33);
            v27 = C3D::PassDescriptor::inputAtIndex((*v121 + 32), v16);
            *v18 = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            *(v18 + 48) = v27[3];
            *(v18 + 64) = v30;
            *(v18 + 16) = v28;
            *(v18 + 32) = v29;
            C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v125, &v124);
          }
        }

        ++v16;
      }

      while (v16 < C3D::PassDescriptor::inputCount((*v121 + 32)));
    }

    v35 = *(v121 + 40);
    if (v35)
    {
      v36 = *(v121 + 48);
      v37 = 4 * v35;
      do
      {
        v38 = *v36;
        v39 = BYTE2(*v36);
        v40 = C3D::PassDescriptor::outputAtIndex((*v121 + 32), BYTE2(*v36));
        v41 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v120[3], v38 & 0x7FFF);
        v42 = C3D::PassDescriptor::inputAtIndex((*v41 + 32), HIBYTE(v38));
        v43 = v42;
        v44 = v42[64];
        v45 = BYTE4(v119);
        if (v44 != 1)
        {
          v45 = 0;
        }

        if (v42[65])
        {
          v46 = 0;
        }

        else
        {
          v46 = v45;
        }

        v47 = v119;
        if (v44 != 2)
        {
          v47 = 0;
        }

        v9 = v44 == 3;
        v48 = v118;
        if (!v9)
        {
          v48 = 0;
        }

        if ((v46 & 1) == 0 && (v47 & 1) == 0 && !v48)
        {
          if ((*(v40 + 31) & 0xFE) != 0)
          {
            v49 = *(v40 + 31);
          }

          else
          {
            v49 = 1;
          }

          if ((v42[31] & 0xFE) != 0)
          {
            v50 = v42[31];
          }

          else
          {
            v50 = 1;
          }

          v52 = *v40 == 1 && v49 != v50;
          v53 = C3D::Pass::resource(*v121);
          v54 = C3D::PassResource::outputAtIndex(v53, BYTE2(v38));
          if (v54)
          {
            v55 = C3D::Pass::resource(*v41);
            v56 = C3D::PassResource::inputAtIndex(v55, HIBYTE(v38));
            if (v56)
            {
              if (v56 != v54)
              {
                v58 = scn_default_log(v56, v57);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::allocateResources(v136, &v137, v58);
                }
              }
            }

            else
            {
              v63 = C3D::Pass::resource(*v41);
              C3D::PassResource::setInputAtIndex(v63, v54, HIBYTE(v38));
            }

            if ((*(v40 + 66) & 0x100) == 0)
            {
              ++*(v54 + 33);
            }

            if (v52 && !*(v54 + 24))
            {
              *(v43 + 32) = 1;
              *buf = *(v43 + 16);
              *&buf[16] = *(v43 + 32);
              *(v54 + 24) = SCNMTLTexturePool::allocate(v115, buf, 0, 0);
            }

            LOBYTE(v122) = 0;
            *buf = 0;
            C3D::RenderGraph::lastNodeUsingResourceAtIndex(v120, v40, v38 & 0x7FFF, HIBYTE(v38), buf, &v124, &v122, &v123[1]);
            if (*buf && *buf != v41)
            {
              C3D::RenderGraph::propagateReadWriteResources(v120, *buf, v38 & 0x7FFF, HIBYTE(v38), v54);
            }
          }

          else if ((*(v40 + 66) & 0x80) != 0)
          {
            v64 = C3D::Pass::resource(*v121);
            v66 = C3D::PassResource::inputAtIndex(v64, BYTE2(v38));
            if (!v66)
            {
              v67 = scn_default_log(0, v65);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::allocateResources(v134, &v135, v67);
              }
            }

            v68 = C3D::Pass::resource(*v121);
            C3D::PassResource::setOutputAtIndex(v68, v66, BYTE2(v38));
            v69 = C3D::Pass::resource(*v41);
            C3D::PassResource::setInputAtIndex(v69, v66, HIBYTE(v38));
          }

          else
          {
            *v123 = 0;
            v124 = 0;
            v122 = 0;
            C3D::RenderGraph::lastNodeUsingResourceAtIndex(v120, v40, v38 & 0x7FFF, HIBYTE(v38), &v124, &v122, &v123[1], v123);
            if (v117 == 2)
            {
              v59 = *v121;
              RenderMode = C3D::RenderPass::getRenderMode(*v121);
              v61 = v122;
              if (*RenderMode == 1 && SCNMTLTextureTypeIsArray(*(v122 + 24)))
              {
                v62 = *(C3D::Pass::descriptor(v59) + 6);
              }

              else
              {
                v62 = 0;
              }

              *(v61 + 11) = v62;
            }

            v70 = v123[0];
            C3D::RenderGraph::computeResourceUsageForOutputDescriptor(v120, v121, v40, v43, v123[0]);
            buf[0] = BYTE2(v38);
            if (*(C3D::Pass::descriptor(*v121) + 6) > 1u)
            {
              v71 = 0;
            }

            else
            {
              v71 = C3D::__deduceMemoryLess(v120, v121, StackAllocator, buf, 1u);
            }

            Resource = C3D::RenderGraph::createResource(v120, v40, v122, v123[1], v70, v71);
            v73 = C3D::Pass::resource(*v121);
            C3D::PassResource::setOutputAtIndex(v73, Resource, BYTE2(v38));
            v74 = C3D::Pass::resource(*v41);
            C3D::PassResource::setInputAtIndex(v74, Resource, HIBYTE(v38));
            v76 = v124;
            if (v124 && v124 != v41)
            {
              v75 = C3D::RenderGraph::propagateReadWriteResources(v120, v124, v38 & 0x7FFF, HIBYTE(v38), Resource);
            }

            if ((*(v40 + 66) & 8) != 0)
            {
              v77 = scn_default_log(v75, v76);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
              {
                v78 = (***v121)();
                v79 = *(v40 + 8);
                *buf = 136315906;
                *&buf[4] = "!outputResDesc.usedInternally";
                *&buf[12] = 2080;
                *&buf[14] = v78;
                v139 = 1024;
                v140 = v39;
                v141 = 2080;
                v142 = v79;
                _os_log_fault_impl(&dword_21BEF7000, v77, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s resource at index %d:%s should not be tagged as usedInternally", buf, 0x26u);
              }
            }
          }
        }

        ++v36;
        v37 -= 4;
      }

      while (v37);
    }

    if (C3D::PassDescriptor::outputCount((*v121 + 32)))
    {
      break;
    }

LABEL_114:
    v95 = (*(**v121 + 16))();
    if (v126)
    {
      v97 = v127;
      v98 = 8 * v126;
      do
      {
        v99 = *v97;
        v100 = *(*v97 + 33) - 1;
        *(*v97 + 33) = v100;
        if (v100 < 0)
        {
          v101 = scn_default_log(v95, v96);
          v95 = os_log_type_enabled(v101, OS_LOG_TYPE_FAULT);
          if (v95)
          {
            C3D::RenderGraph::allocateResources(v132, &v133, v101);
          }

          v100 = *(v99 + 33);
        }

        if (!v100 && (*(v99 + 34) & 1) == 0)
        {
          v102 = *(v99 + 32);
          if (v102 == 2)
          {
            if (!*(v99 + 8))
            {
              v105 = scn_default_log(v95, v96);
              v95 = os_log_type_enabled(v105, OS_LOG_TYPE_FAULT);
              if (v95)
              {
                C3D::RenderGraph::allocateResources(v128, &v129, v105);
              }
            }

            *v99 = 0;
            *(v99 + 8) = 0;
            *(v99 + 16) = 0;
          }

          else if (v102 == 1)
          {
            if (!*v99)
            {
              v103 = scn_default_log(v95, v96);
              v95 = os_log_type_enabled(v103, OS_LOG_TYPE_FAULT);
              if (v95)
              {
                C3D::RenderGraph::allocateResources(v130, &v131, v103);
              }
            }

            v104 = *(v99 + 34);
            if ((v104 & 2) == 0)
            {
              SCNMTLTexturePool::free(v115, *v99);
              v104 = *(v99 + 34);
            }

            if ((v104 & 4) == 0)
            {
              v96 = *(v99 + 24);
              if (v96)
              {
                SCNMTLTexturePool::free(v115, v96);
              }
            }
          }
        }

        ++v97;
        v98 -= 8;
      }

      while (v98);
    }

    C3DStackAllocatorPopFrame(StackAllocator, v96);
    C3D::RenderGraph::freeConsumedResources(v120, v121, v115);
    v4 = ++v113;
    if (v112 <= v113)
    {
      goto LABEL_143;
    }
  }

  v80 = 0;
  while (1)
  {
    v81 = C3D::PassDescriptor::outputAtIndex((*v121 + 32), v80);
    v82 = v81;
    v83 = *(v81 + 64);
    v84 = BYTE4(v119);
    if (v83 != 1)
    {
      v84 = 0;
    }

    if (*(v81 + 65))
    {
      v85 = 0;
    }

    else
    {
      v85 = v84;
    }

    v86 = v119;
    if (v83 != 2)
    {
      v86 = 0;
    }

    v9 = v83 == 3;
    v87 = v118;
    if (!v9)
    {
      v87 = 0;
    }

    if ((v85 & 1) != 0 || (v86 & 1) != 0 || v87)
    {
      goto LABEL_113;
    }

    if (v117 == 2)
    {
      v88 = *v121;
      if (*C3D::RenderPass::getRenderMode(*v121) == 1 && SCNMTLTextureTypeIsArray(*(v82 + 24)))
      {
        v89 = *(C3D::Pass::descriptor(v88) + 6);
      }

      else
      {
        v89 = 0;
      }

      *(v82 + 22) = v89;
    }

    if ((*(v82 + 66) & 0x108) != 8)
    {
      goto LABEL_113;
    }

    v90 = C3D::Pass::resource(*v121);
    v91 = C3D::PassResource::outputAtIndex(v90, v80);
    if (v91)
    {
      if ((*(v82 + 66) & 0x80) == 0)
      {
        break;
      }
    }

    *buf = 0;
    C3D::RenderGraph::computeResourceUsageForOutputDescriptor(v120, v121, v82, 0, 0);
    LOBYTE(v124) = v80;
    if (*(C3D::Pass::descriptor(*v121) + 6) > 1u)
    {
      v93 = 0;
    }

    else
    {
      v93 = C3D::__deduceMemoryLess(v120, v121, StackAllocator, &v124, 1u);
    }

    *buf = C3D::RenderGraph::createResource(v120, v82, 0, 0, 0, v93);
    v94 = C3D::Pass::resource(*v121);
    C3D::PassResource::setOutputAtIndex(v94, *buf, v80);
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v125, buf);
LABEL_113:
    if (++v80 >= C3D::PassDescriptor::outputCount((*v121 + 32)))
    {
      goto LABEL_114;
    }
  }

  v107 = scn_default_log(v91, v92);
  v108 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
  if (v108)
  {
    C3D::RenderGraph::allocateResources();
  }

  v110 = scn_default_log(v108, v109);
  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
    C3D::RenderGraph::allocateResources();
  }
}

uint64_t C3D::__nextPassInStage(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 8) - 1 == a3)
  {
    result = *(a2 + 24);
    if (!result)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = (a3 + 1);
    result = a2;
  }

  v7 = *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](result, v6);
  if (v7 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1, v7);
  }
}

uint64_t C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = v2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 2 * v2;
}

uint64_t C3D::__deduceMemoryLess(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned int a5)
{
  v39 = a3;
  v40 = 0;
  v41 = &v42;
  if (!a3)
  {
    v10 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  Aligned = C3DStackAllocatorAllocateAligned(v39, 16 * (HIDWORD(v40) + a5), 8, 0);
  memcpy(Aligned, v41, 16 * v40);
  v41 = Aligned;
  HIDWORD(v40) += a5;
  v19 = v40;
  if (a5 >= 1)
  {
    v20 = a5;
    do
    {
      v22 = *a4++;
      v21 = v22;
      v23 = v41;
      if ((v19 + 1) > HIDWORD(v40))
      {
        v24 = C3DStackAllocatorAllocateAligned(v39, 16 * ((HIDWORD(v40) + 1) * 1.5), 8, 0);
        memcpy(v24, v41, 16 * v40);
        v41 = v24;
        HIDWORD(v40) = ((HIDWORD(v40) + 1) * 1.5);
        v23 = v24;
        v19 = v40;
      }

      v25 = &v23[16 * v19];
      *v25 = a2;
      v25[8] = v21;
      v19 = v40 + 1;
      LODWORD(v40) = v40 + 1;
      --v20;
    }

    while (v20);
  }

  if (!v19)
  {
    return 1;
  }

  while (1)
  {
    v26 = &v41[16 * v19];
    v27 = *(v26 - 2);
    v28 = *(v26 - 8);
    v29 = *v27;
    LODWORD(v40) = v19 - 1;
    v30 = *(C3D::PassDescriptor::outputAtIndex((v29 + 32), v28) + 31);
    C3D::RenderGraph::GraphNode::successorsAtIndex(v27, v28, a3, &v36);
    if (v37)
    {
      break;
    }

LABEL_15:
    v19 = v40;
    if (!v40)
    {
      return 1;
    }
  }

  v31 = v38;
  v32 = 4 * v37;
  while (1)
  {
    v33 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v31 & 0x7FFF);
    v34 = C3D::PassDescriptor::inputAtIndex((*v33 + 32), *(v31 + 3));
    if (v30 < 2 || *(v34 + 31) >= 2u)
    {
      return 0;
    }

    v31 += 4;
    v32 -= 4;
    if (!v32)
    {
      goto LABEL_15;
    }
  }
}

uint64_t C3D::__deduceStoreAction(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  IsMultisampled = SCNMTLTextureTypeIsMultisampled([objc_msgSend(a2 "texture")]);
  if (!IsMultisampled)
  {
    return 1;
  }

  if (a3 == 2)
  {
    IsMultisampled = C3DEngineContextHasFeatures(*(a1 + 8), 4);
    if (!IsMultisampled)
    {
      return 0;
    }
  }

  v40 = a5;
  v41 = 0;
  v42 = &v43;
  if (!a5)
  {
    v14 = scn_default_log(IsMultisampled, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  Aligned = C3DStackAllocatorAllocateAligned(v40, (16 * (HIDWORD(v41) + 10)), 8, 0);
  memcpy(Aligned, v42, 16 * v41);
  v42 = Aligned;
  HIDWORD(v41) += 10;
  v38.n128_u64[0] = a4;
  v38.n128_u8[8] = a6;
  C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(&v40, &v38);
  v23 = v41;
  if (v41)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = &v42[16 * v23];
      v27 = *(v26 - 8);
      v28 = *(v26 - 2);
      LODWORD(v41) = v23 - 1;
      C3D::RenderGraph::GraphNode::successorsAtIndex(v28, v27, a5, &v38);
      if (v38.n128_u32[2])
      {
        v29 = v39;
        v30 = 4 * v38.n128_u32[2];
        while (1)
        {
          v31 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v29 & 0x7FFF);
          v32 = C3D::PassDescriptor::inputAtIndex((*v31 + 32), *(v29 + 3));
          v33 = *(v32 + 31);
          v25 |= v33 > 1;
          v24 |= v33 < 2;
          if (v25 & 1) != 0 && (v24)
          {
            break;
          }

          if ((*(v32 + 66) & 0x80) != 0)
          {
            v37.n128_u64[0] = v31;
            v37.n128_u8[8] = *(v29 + 3);
            C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(&v40, &v37);
          }

          v29 += 4;
          v30 -= 4;
          if (!v30)
          {
            goto LABEL_18;
          }
        }

        v25 = 1;
        v24 = 1;
      }

LABEL_18:
      v23 = v41;
    }

    while (v41);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v35 = v25 & ([objc_msgSend(a2 "texture")] != 3);
  v36 = 2;
  if ((v24 & 1 & v35) != 0)
  {
    v36 = 3;
  }

  if (v24)
  {
    return v36;
  }

  else
  {
    return v35;
  }
}

__n128 C3D::Array<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair,0u,C3D::StackAllocator>::push_back<C3D::__deduceStoreAction(C3D::RenderGraph *,MTLRenderPassAttachmentDescriptor *,C3D::TextureAttachmentType,C3D::RenderGraph::GraphNode const&,__C3DStackAllocator *,unsigned char)::NodeOutputPair>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*a1, 16 * v7, 8, 0);
    memcpy(Aligned, v6, 16 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  result = *a2;
  v6[v4] = *a2;
  ++*(a1 + 8);
  return result;
}

void C3D::__setupRenderEncoder(uint64_t a1, C3D::RenderPass *this, uint64_t a3, uint64_t a4)
{
  v118 = *MEMORY[0x277D85DE8];
  RenderMode = C3D::RenderPass::getRenderMode(this);
  v10 = *RenderMode;
  if (v10 == 2)
  {
    v29 = C3D::Pass::descriptor(this);
    v31 = *(v29 + 6);
    v32 = *(this + 118);
    if (v32 == 1)
    {
      *(a4 + 64) = v31;
    }

    else if (v32 == 2)
    {
      v29 = SCNMTLRenderCommandEncoder::setVertexAmplificationCount(a4, v31, 2);
    }

    else
    {
      v75 = scn_default_log(v29, v30);
      v29 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        C3D::__setupRenderEncoder();
      }
    }

    if (*(this + 121) == 1)
    {
      v76 = MEMORY[0x28223BE20](v29);
      v78 = (&v111 - v77);
      if (v31)
      {
        v81 = ldexpf(1.0, *(a3 + 18));
        v82 = 0;
        f64 = v78[1].f64;
        __asm { FMOV            V1.4S, #-1.0 }

        v114 = _Q1;
        _Q1.i64[1] = 0x3FF0000000000000;
        v113 = xmmword_21C280270;
        _Q1.i64[0] = 136315650;
        *&v85 = 1.0 / v81;
        v111 = _Q1;
        v112 = v85;
        do
        {
          v86 = *(this + v82 + 8);
          if ((vminvq_u32(vmvnq_s8(vceqq_f32(v86, v114))) & 0x80000000) == 0)
          {
            v115 = *(this + v82 + 8);
            v87 = scn_default_log(v79, v80);
            v79 = os_log_type_enabled(v87, OS_LOG_TYPE_FAULT);
            v86 = v115;
            if (v79)
            {
              v89 = (**this)(this);
              *buf = v111.i32[0];
              *&buf[4] = "simd_all(viewport != -1)";
              *&buf[12] = 2080;
              *&buf[14] = v89;
              *&buf[22] = 1024;
              *&buf[24] = v82;
              _os_log_fault_impl(&dword_21BEF7000, v87, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", buf, 0x1Cu);
              v86 = v115;
            }
          }

          v88 = vmulq_n_f32(v86, *&v112);
          *(f64 - 1) = vcvtq_f64_f32(*v88.f32);
          *f64 = vcvt_hight_f64_f32(v88);
          v76 = *&v113;
          f64[1] = v113;
          ++v82;
          f64 += 3;
        }

        while (v31 != v82);
      }

      [*(a4 + 3392) setViewports:v78 count:{v31, v76, *&v111}];
      if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
      {
        goto LABEL_73;
      }

      *v70.i64 = MEMORY[0x28223BE20](0);
      if (v31)
      {
        v106 = (&v111 - 2 * v31 + 1);
        v107 = v78 + 1;
        v108 = v31;
        do
        {
          v70 = vcvtq_u64_f64(v107[-1]);
          v109 = vcvtq_u64_f64(*v107);
          v106[-1] = v70;
          *v106 = v109;
          v106 += 2;
          v107 += 3;
          --v108;
        }

        while (v108);
      }

      v74 = *(a4 + 3392);
    }

    else
    {
      if (*(this + 120) != 1)
      {
        goto LABEL_73;
      }

      v90 = v31;
      MEMORY[0x28223BE20](v29);
      v92 = &v111.f32[-4 * v91];
      v93 = *(a3 + 18);
      v94 = [(SCNMTLRenderContext *)a1 engineContext];
      if (v31)
      {
        v95 = v94;
        v96 = ldexpf(1.0, v93);
        v97 = 0;
        v98 = (v92 + 2);
        v99.f32[0] = 1.0 / v96;
        v114 = v99;
        v115 = xmmword_21C280270;
        do
        {
          ViewportAtIndex = C3DEngineContextGetViewportAtIndex(v95, v97);
          v101 = vmulq_n_f32(ViewportAtIndex, v114.f32[0]);
          v98[-2] = vcvtq_f64_f32(*v101.f32);
          v98[-1] = vcvt_hight_f64_f32(v101);
          *v98 = v115;
          v98 += 3;
          ++v97;
        }

        while (v90 != v97);
      }

      [*(a4 + 3392) setViewports:v92 count:v90];
      if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
      {
        goto LABEL_73;
      }

      *v70.i64 = MEMORY[0x28223BE20](0);
      if (v90)
      {
        v102 = (&v111 - 2 * v90 + 1);
        v103 = (v92 + 1);
        v104 = v90;
        do
        {
          v70 = vcvtq_u64_f64(v103[-1]);
          v105 = vcvtq_u64_f64(*v103);
          v102[-1] = v70;
          *v102 = v105;
          v102 += 2;
          v103 += 3;
          --v104;
        }

        while (v104);
      }

      v74 = *(a4 + 3392);
    }

LABEL_72:
    [v74 setScissorRects:*v70.i64 count:?];
    goto LABEL_73;
  }

  if (v10 == 1)
  {
    v25 = [*(a3 + 8) renderTargetArrayLength];
    v27 = v25;
    v28 = *(this + 118);
    if (v28 == 1)
    {
      *(a4 + 64) = v25;
    }

    else if (v28 == 2)
    {
      v25 = SCNMTLRenderCommandEncoder::setVertexAmplificationCount(a4, v25, 1);
    }

    else
    {
      v39 = scn_default_log(v25, v26);
      v25 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
      if (v25)
      {
        C3D::__setupRenderEncoder();
      }
    }

    if (*(this + 121) != 1)
    {
      if (*(this + 120) == 1)
      {
        MEMORY[0x28223BE20](v25);
        v55 = &v111.f32[-4 * v54];
        v56 = *(a3 + 18);
        v57 = [(SCNMTLRenderContext *)a1 engineContext];
        v58 = v27;
        if (v27)
        {
          v59 = v57;
          v60 = ldexpf(1.0, v56);
          v61 = 0;
          v62 = (v55 + 2);
          v63.f32[0] = 1.0 / v60;
          v114 = v63;
          v115 = xmmword_21C280270;
          do
          {
            v64 = C3DEngineContextGetViewportAtIndex(v59, v61);
            v65 = vmulq_n_f32(v64, v114.f32[0]);
            v62[-2] = vcvtq_f64_f32(*v65.f32);
            v62[-1] = vcvt_hight_f64_f32(v65);
            *v62 = v115;
            v62 += 3;
            ++v61;
          }

          while (v27 != v61);
        }

        [*(a4 + 3392) setViewports:v55 count:v27];
        if (![(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
        {
          *v66.i64 = MEMORY[0x28223BE20](0);
          if (v27)
          {
            v67 = (&v111 - 2 * v27 + 1);
            v68 = (v55 + 1);
            do
            {
              v66 = vcvtq_u64_f64(v68[-1]);
              v69 = vcvtq_u64_f64(*v68);
              v67[-1] = v66;
              *v67 = v69;
              v67 += 2;
              v68 += 3;
              --v58;
            }

            while (v58);
          }

          [*(a4 + 3392) setScissorRects:*v66.i64 count:?];
        }
      }

      goto LABEL_73;
    }

    MEMORY[0x28223BE20](v25);
    v41 = (&v111 - v40);
    v42 = v27;
    if (v27)
    {
      v45 = ldexpf(1.0, *(a3 + 18));
      v46 = 0;
      v47 = v41[1].f64;
      __asm { FMOV            V1.4S, #-1.0 }

      v114 = _Q1;
      _Q1.i64[1] = 0x3FF0000000000000;
      v113 = xmmword_21C280270;
      _Q1.i64[0] = 136315650;
      *&v49 = 1.0 / v45;
      v111 = _Q1;
      v112 = v49;
      do
      {
        v50 = *(this + v46 + 8);
        if ((vminvq_u32(vmvnq_s8(vceqq_f32(v50, v114))) & 0x80000000) == 0)
        {
          v115 = *(this + v46 + 8);
          v51 = scn_default_log(v43, v44);
          v43 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);
          v50 = v115;
          if (v43)
          {
            v53 = (**this)(this);
            *buf = v111.i32[0];
            *&buf[4] = "simd_all(viewport != -1)";
            *&buf[12] = 2080;
            *&buf[14] = v53;
            *&buf[22] = 1024;
            *&buf[24] = v46;
            _os_log_fault_impl(&dword_21BEF7000, v51, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Pass %s has specific viewport but it's not specified for index : %d", buf, 0x1Cu);
            v50 = v115;
          }
        }

        v52 = vmulq_n_f32(v50, *&v112);
        *(v47 - 1) = vcvtq_f64_f32(*v52.f32);
        *v47 = vcvt_hight_f64_f32(v52);
        v47[1] = v113;
        ++v46;
        v47 += 3;
      }

      while (v27 != v46);
    }

    [*(a4 + 3392) setViewports:v41 count:{v27, *&v111}];
    if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
    {
      goto LABEL_73;
    }

    *v70.i64 = MEMORY[0x28223BE20](0);
    if (v27)
    {
      v71 = (&v111 - 2 * v27 + 1);
      v72 = v41 + 1;
      do
      {
        v70 = vcvtq_u64_f64(v72[-1]);
        v73 = vcvtq_u64_f64(*v72);
        v71[-1] = v70;
        *v71 = v73;
        v71 += 2;
        v72 += 3;
        --v42;
      }

      while (v42);
    }

    v74 = *(a4 + 3392);
    goto LABEL_72;
  }

  if (!*RenderMode)
  {
    if (*(a4 + 72) != 1)
    {
      *(a4 + 72) = 1;
      RenderMode = [*(a4 + 3392) setVertexAmplificationCount:1 viewMappings:0];
    }

    if (*(this + 121) == 1)
    {
      __asm { FMOV            V0.4S, #-1.0 }

      v115 = *(this + *(a3 + 16) + 8);
      if ((vminvq_u32(vmvnq_s8(vceqq_f32(v115, _Q0))) & 0x80000000) == 0)
      {
        v16 = scn_default_log(RenderMode, v9);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          C3D::__setupRenderEncoder(this, (a3 + 16), v16);
        }
      }

      *v17.i32 = ldexpf(1.0, *(a3 + 18));
      v18 = *(a4 + 3392);
      v114 = vdivq_f32(v115, vdupq_lane_s32(v17, 0));
      v115 = vextq_s8(v114, v114, 8uLL);
      *buf = vcvtq_f64_f32(*v114.f32);
      *&buf[16] = vcvt_hight_f64_f32(v114);
      v117 = xmmword_21C280270;
      [v18 setViewport:buf];
      *(a4 + 64) = 1;
      v19 = *(a4 + 3392);
      v20 = vcvt_u32_f32(*v114.f32);
      *&v21 = v20.u32[0];
      *(&v21 + 1) = v20.u32[1];
      v22 = v21;
      v23 = vcvt_u32_f32(v115.n128_u64[0]);
    }

    else
    {
      if (*(this + 120) != 1)
      {
        goto LABEL_73;
      }

      v33 = [(SCNMTLRenderContext *)a1 engineContext];
      v115 = C3DEngineContextGetViewportAtIndex(v33, *(a3 + 16));
      v34 = [(SCNMTLRenderContext *)a1 engineContext];
      v35 = vmul_n_f32(*&vextq_s8(v115, v115, 8uLL), C3DEngineContextGetSuperSamplingFactor(v34));
      v36 = *(a4 + 3392);
      *buf = vcvtq_f64_f32(v115.n128_u64[0]);
      *&buf[16] = vcvtq_f64_f32(v35);
      v117 = xmmword_21C280270;
      [v36 setViewport:buf];
      *(a4 + 64) = 1;
      if ([(SCNMTLRenderContext *)a1 clientRenderPassDescriptor])
      {
        goto LABEL_73;
      }

      v37 = vcvt_u32_f32(v115.n128_u64[0]);
      v23 = vcvt_u32_f32(v35);
      v19 = *(a4 + 3392);
      *&v38 = v37.u32[0];
      *(&v38 + 1) = v37.u32[1];
      v22 = v38;
    }

    *&v24 = v23.u32[0];
    *(&v24 + 1) = v23.u32[1];
    *buf = v22;
    *&buf[16] = v24;
    [v19 setScissorRect:buf];
  }

LABEL_73:
  v110 = *(this + 56);
  if (*(a4 + 68) != v110)
  {
    *(a4 + 68) = v110;
    [*(a4 + 3392) setStencilReferenceValue:?];
  }
}

id *SCNMTLRenderCommandEncoder::setVertexAmplificationCount(id *result, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result + 72) == a2)
  {
    return result;
  }

  v3 = a2;
  v4 = result;
  *(result + 72) = a2;
  if (a2 > 1)
  {
    if (a3 == 2)
    {
      v6 = xmmword_21C27F640;
    }

    else
    {
      if (a3 != 1)
      {
        v7 = scn_default_log(result, a2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          SCNMTLRenderCommandEncoder::setVertexAmplificationCount();
        }

        return [v4[424] setVertexAmplificationCount:v3 viewMappings:&v8];
      }

      v6 = xmmword_21C280280;
    }

    v8 = v6;
    return [v4[424] setVertexAmplificationCount:v3 viewMappings:&v8];
  }

  v5 = result[424];

  return [v5 setVertexAmplificationCount:1 viewMappings:0];
}

void C3D::__renderSlice(void *a1, C3D::Pass *a2, uint64_t a3, _DWORD *a4, uint64_t *a5, uint64_t a6, int a7, id *a8)
{
  v100 = a3;
  v9 = a2;
  v120 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  RenderContext = C3DEngineContextGetRenderContext(v10, a2);
  v13 = *a6;
  v12 = *(a6 + 8);
  StackAllocator = C3DEngineContextGetStackAllocator(v10, v14);
  v15 = C3D::Pass::descriptor(v9);
  v110 = v9;
  if (C3D::PassDescriptor::outputCount(v15))
  {
    v16 = 0;
    do
    {
      v17 = C3D::Pass::descriptor(v9);
      if (*C3D::PassDescriptor::outputAtIndex(v17, v16) == 1)
      {
        v18 = C3D::Pass::descriptor(v110);
        v19 = *(C3D::PassDescriptor::outputAtIndex(v18, v16) + 24);
        if (SCNMTLTextureTypeIsArray(v19) || SCNMTLTextureTypeIsCube(v19))
        {
          v20 = *(a6 + 16);
          v21 = *(a6 + 16);
        }

        else
        {
          v21 = 0;
          v20 = *(a6 + 16);
        }

        if (v20)
        {
          v22 = v110[120];
        }

        else
        {
          v22 = 0;
        }

        v23 = C3D::Pass::descriptor(v110);
        v24 = C3D::PassDescriptor::outputAtIndex(v23, v16);
        v26 = *(v24 + 64);
        switch(v26)
        {
          case 3:
            v30 = [objc_msgSend(v12 "stencilAttachment")] == 0;
            [objc_msgSend(v12 "stencilAttachment")];
            [objc_msgSend(v12 "stencilAttachment")];
            if (v30)
            {
              v21 = 0;
            }

            [objc_msgSend(v12 stencilAttachment];
            if ((v22 & 1) != 0 && [objc_msgSend(v12 "stencilAttachment")] == 2)
            {
              [objc_msgSend(v12 "stencilAttachment")];
            }

            break;
          case 2:
            v29 = [objc_msgSend(v12 "depthAttachment")] == 0;
            [objc_msgSend(v12 "depthAttachment")];
            [objc_msgSend(v12 "depthAttachment")];
            if (v29)
            {
              v21 = 0;
            }

            [objc_msgSend(v12 depthAttachment];
            if ((v22 & 1) != 0 && [objc_msgSend(v12 "depthAttachment")] == 2)
            {
              [objc_msgSend(v12 "depthAttachment")];
            }

            break;
          case 1:
            v27 = C3D::Pass::descriptor(v110);
            v28 = *(C3D::PassDescriptor::outputAtIndex(v27, v16) + 65);
            [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            if (![objc_msgSend(objc_msgSend(v12 "colorAttachments")])
            {
              v21 = 0;
            }

            [objc_msgSend(objc_msgSend(v12 colorAttachments];
            if ((v22 & 1) != 0 && [objc_msgSend(objc_msgSend(v12 "colorAttachments")] == 2)
            {
              [objc_msgSend(objc_msgSend(v12 "colorAttachments")];
            }

            break;
          default:
            v31 = scn_default_log(v24, v25);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              C3D::__renderSlice(buf, v119, v31);
            }

            break;
        }
      }

      v32 = C3D::Pass::descriptor(v110);
      ++v16;
      v9 = v110;
    }

    while (v16 < C3D::PassDescriptor::outputCount(v32));
  }

  v102 = [objc_msgSend(v12 stencilAttachment];
  v33 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  v34 = [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
  if ([(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder])
  {
    if (a7)
    {
      v35 = [(SCNMTLRenderContext *)RenderContext clientCommandBuffer];
      if (v35)
      {
        v34 = v35;
      }

      v36 = [(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder];
      SCNMTLRenderCommandEncoder::useCommandEncoder(v13, v34, v36, v33);
    }

    else
    {
      v38 = *a8;
      if (!*a8)
      {
        v38 = [-[SCNMTLRenderContext commandQueue](RenderContext) commandBuffer];
        *a8 = v38;
      }

      SCNMTLRenderCommandEncoder::useCommandEncoder(v13, *a8, [v38 renderCommandEncoderWithDescriptor:v12], v33);
    }
  }

  else
  {
    if ([(SCNMTLRenderContext *)RenderContext commandBufferStatusMonitor])
    {
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:(**v110)(v110)];
    }

    else
    {
      v37 = 0;
    }

    bzero(v13, 0xD70uLL);
    *(v13 + 64) = 1;
    *(v13 + 72) = 1;
    *(v13 + 3384) = v34;
    v39 = [v34 renderCommandEncoderWithDescriptor:v12];
    *(v13 + 3392) = v39;
    *(v13 + 3400) = v33;
    if (v37)
    {
      [v39 setLabel:v37];
    }

    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
  }

  v40 = *(a6 + 16);
  v41 = *(C3D::Pass::descriptor(v110) + 6);
  v42 = v110[117];
  v43 = v110[118];
  v44 = (*(*v110 + 64))(v110);
  v45 = a1[14];
  if (v45)
  {
    v46 = ((*(*v45 + 64))(v45) == v44) << 32;
  }

  else
  {
    v46 = 0;
  }

  [(SCNMTLRenderContext *)RenderContext beginRenderPass:v12 renderEncoder:v13 parameters:v46 | (v43 << 24) | (v42 << 16) | (v41 << 8) | v40];
  C3D::__setupRenderEncoder(RenderContext, v110, a6, v13);
  C3D::RenderPass::setStates(v110, a6);
  (*(*v110 + 32))(v110, a6);
  v48 = 0;
  v49 = *a5;
  while (1)
  {
    v50 = *(v49 + 24);
    if (!v50)
    {
      goto LABEL_115;
    }

    v51 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v50, 0);
    v52 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v51);
    if (v102)
    {
      goto LABEL_116;
    }

    v48 = v52;
    v53 = a4;
    if (a4[10])
    {
      break;
    }

LABEL_59:
    if (*(*a5 + 8) - 1 != *v101)
    {
      goto LABEL_116;
    }

    if (*(*v48 + 8) != 2)
    {
      goto LABEL_116;
    }

    v58 = *(a6 + 16);
    if (*(C3D::Pass::descriptor(v110) + 6) - 1 != v58 && !*C3D::RenderPass::getRenderMode(v110))
    {
      goto LABEL_116;
    }

    v59 = *(a6 + 18);
    v60 = *(C3D::Pass::descriptor(v110) + 8);
    if (v60 + *(C3D::Pass::descriptor(v110) + 10) - 1 != v59)
    {
      goto LABEL_116;
    }

    if (!C3D::PassDescriptor::outputCount((*v48 + 32)))
    {
      goto LABEL_116;
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    do
    {
      v64 = *(C3D::PassDescriptor::outputAtIndex((*v48 + 32), v61) + 66);
      v65 = C3D::PassDescriptor::outputCount((*v48 + 32));
      v62 += v64 >> 7;
      v61 = ++v63;
    }

    while (v65 > v63);
    if (!v62)
    {
      goto LABEL_116;
    }

    if (C3D::PassDescriptor::outputCount((*a4 + 32)) < v62)
    {
      goto LABEL_116;
    }

    v66 = C3D::PassDescriptor::outputCount((*v48 + 32));
    if (v66 > C3D::PassDescriptor::outputCount((*a4 + 32)))
    {
      goto LABEL_116;
    }

    v67 = a4;
    if (a4[10])
    {
      v68 = 0;
      v69 = 0;
      do
      {
        v70 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[]((v67 + 8), v68);
        v71 = *v70;
        if (C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v70 & 0x7FFF) == v48 && (*(C3D::PassDescriptor::outputAtIndex((*a4 + 32), BYTE2(v71)) + 66) & 0x80) != 0 && (*(C3D::PassDescriptor::inputAtIndex((*v48 + 32), HIBYTE(v71)) + 66) & 0x80) == 0)
        {
          goto LABEL_116;
        }

        v68 = ++v69;
        v67 = a4;
      }

      while (a4[10] > v69);
    }

    if (C3D::PassDescriptor::outputCount((*v48 + 32)))
    {
      v72 = 0;
      v106 = 0;
      while (1)
      {
        v73 = C3D::PassDescriptor::outputAtIndex((*v48 + 32), v72);
        v74 = *(v73 + 66);
        if ((v74 & 0x80) != 0)
        {
          v77 = C3D::PassDescriptor::inputAtIndex((*v48 + 32), v72);
          v78 = *a4;
          C3D::RenderGraph::GraphNode::predecessorsAtIndex(v48, v72, StackAllocator, &v111);
          v79 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v111, 0);
          v80 = C3D::PassDescriptor::outputAtIndex((v78 + 32), *(v79 + 3));
          v82 = v80;
          if (*(v80 + 31) == 1)
          {
            v83 = scn_default_log(v80, v81);
            v80 = os_log_type_enabled(v83, OS_LOG_TYPE_FAULT);
            if (v80)
            {
              C3D::__renderSlice(v116, &v117, v83);
            }
          }

          if (*(v77 + 31) == 1)
          {
            v84 = scn_default_log(v80, v81);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
            {
              C3D::__renderSlice(v114, &v115, v84);
            }
          }

          v85 = v82[31];
          v86 = *(v77 + 31);
          if (!C3D::PassIODescriptor::isPartiallyCompatible(v82, v77) || *(v77 + 65) != v82[65])
          {
            goto LABEL_103;
          }

          v76 = 0;
          if ((*(v77 + 66) & 3) != 1 || v85 != v86)
          {
            goto LABEL_104;
          }

          ++v106;
        }

        else if ((v74 & 3) == 2 && C3D::PassDescriptor::outputCount((*a4 + 32)))
        {
          v75 = 0;
          while (*(C3D::PassDescriptor::outputAtIndex((*a4 + 32), v75) + 64) != *(v73 + 64) || *(C3D::PassDescriptor::outputAtIndex((*a4 + 32), v75) + 65) != *(v73 + 65))
          {
            if (++v75 >= C3D::PassDescriptor::outputCount((*a4 + 32)))
            {
              goto LABEL_85;
            }
          }

          v76 = 1;
        }

        else
        {
LABEL_85:
          v76 = 0;
        }

        v87 = C3D::PassDescriptor::outputCount((*v48 + 32));
        ++v72;
        v88 = v76 ^ 1;
        if (v72 >= v87)
        {
          v88 = 0;
        }

        if ((v88 & 1) == 0)
        {
          goto LABEL_104;
        }
      }
    }

    v106 = 0;
LABEL_103:
    v76 = 0;
LABEL_104:
    if ((v76 & 1) != 0 || v106 != v62)
    {
      goto LABEL_116;
    }

    v89 = *v48;
    a1[15] = *v48;
    v90 = *(C3D::Pass::descriptor(v89) + 10);
    if (v90 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v90;
    }

    v92 = *(C3D::Pass::descriptor(v89) + 8);
    v93 = *(C3D::Pass::descriptor(v89) + 6);
    v94 = C3D::Pass::descriptor(v89);
    v95 = v92 + v91;
    if (v92 < v95)
    {
      v96 = *(v94 + 4);
      v97 = v96 + v93;
      do
      {
        v98 = v96;
        if (v96 < v97)
        {
          do
          {
            *(a6 + 16) = v98;
            *(a6 + 18) = v92;
            C3D::__setupRenderEncoder(RenderContext, v89, a6, v13);
            C3D::RenderPass::setStates(*v48, a6);
            (*(**v48 + 32))(*v48, a6);
            ++v98;
          }

          while (v98 < v97);
        }

        LOWORD(v92) = v92 + 1;
      }

      while (v92 < v95);
    }

    v49 = *(*a5 + 24);
    *a5 = v49;
    *v101 = 0;
LABEL_115:
    if (!v48)
    {
      goto LABEL_116;
    }
  }

  v54 = 0;
  while (1)
  {
    C3D::RenderGraph::GraphNode::successorsAtIndex(v53, v54, StackAllocator, &v111);
    if (v112)
    {
      break;
    }

LABEL_58:
    ++v54;
    v53 = a4;
    if (a4[10] <= v54)
    {
      goto LABEL_59;
    }
  }

  v55 = v113;
  v56 = 4 * v112;
  while (1)
  {
    v57 = *v48;
    if (v57 != *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](a1[3], *v55 & 0x7FFF))
    {
      break;
    }

    ++v55;
    v56 -= 4;
    if (!v56)
    {
      goto LABEL_58;
    }
  }

LABEL_116:
  if (*(v13 + 3392) && (![(SCNMTLRenderContext *)RenderContext clientRenderCommandEncoder]|| (a7 & 1) == 0))
  {
    v47 = SCNMTLRenderCommandEncoder::endEncoding(v13, v99);
  }

  if (a7 && *a8)
  {
    [*a8 commit];
    *a8 = 0;
  }

  [(SCNMTLRenderContext *)RenderContext endRenderPass];
}

double SCNMTLRenderCommandEncoder::useCommandEncoder(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a2 && (v8 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    SCNMTLRenderCommandEncoder::useCommandEncoder(v8, a2, v9, v10, v11, v12, v13, v14);
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
    SCNMTLRenderCommandEncoder::useCommandEncoder(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  bzero(v7, 0xD70uLL);
  *(v7 + 64) = 1;
  *(v7 + 72) = 1;
  *(v7 + 40) = 257;
  *(v7 + 42) = 1;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 3384) = a2;
  *(v7 + 3392) = a3;
  *(v7 + 3400) = a4;
  return result;
}

uint64_t C3D::RenderGraph::isMainPass(C3D::RenderGraph *this, uint64_t a2)
{
  result = *(this + 14);
  if (result)
  {
    return (*(*result + 64))(result) == a2;
  }

  return result;
}

double SCNMTLRenderCommandEncoder::endEncoding(SCNMTLRenderCommandEncoder *this, uint64_t a2)
{
  if (!this->var24[1])
  {
    v3 = scn_default_log(this, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      SCNMTLRenderCommandEncoder::endEncoding(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  [this->var24[1] endEncoding];
  result = 0.0;
  *this->var24 = 0u;
  return result;
}

void C3D::RenderGraph::execute(C3D::RenderGraph *this)
{
  v3.n128_f64[0] = MEMORY[0x28223BE20](this);
  v4 = v1;
  *(&v159[2] + 4) = *MEMORY[0x277D85DE8];
  if (*(v1 + 210) & 1) == 0 && (*(v1 + 211))
  {
    if (*(v1 + 212) == 1)
    {
      C3D::RenderGraph::logFrame(v1, v2);
    }

    RenderContext = C3DEngineContextGetRenderContext(*(v4 + 8), v2);
    v142 = [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
    StackAllocator = C3DEngineContextGetStackAllocator(*(v4 + 8), v5);
    C3DStackAllocatorPushFrame(StackAllocator, v6);
    v147._encoder = 0;
    v147._bufferPool = 0;
    v146._encoder = 0;
    v146._commandBuffer = 0;
    if (*(v4 + 168))
    {
      operator new();
    }

    v11 = *(v4 + 96);
    v145 = v11;
    if (!v11)
    {
LABEL_210:
      *(v4 + 120) = 0;
      C3DStackAllocatorPopFrame(StackAllocator, v7);
      return;
    }

    *&v8 = 136315394;
    v132 = v8;
    while (1)
    {
      v144 = 0;
      v12 = (v11 + 8);
      if (*(v11 + 8))
      {
        break;
      }

LABEL_209:
      v11 = *(v11 + 24);
      v145 = v11;
      if (!v11)
      {
        goto LABEL_210;
      }
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v11, v13);
      v16 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v4 + 24), *v15);
      v17 = *v16;
      *(v4 + 120) = *v16;
      v18 = C3D::Pass::descriptor(v17);
      v20 = *v18;
      if (*v18 <= 2)
      {
        break;
      }

      if (v20 != 3)
      {
        if (v20 == 5)
        {
          (*(*v17 + 24))(v17);
          goto LABEL_168;
        }

        if (v20 == 4)
        {
          if (v142 && !v146._encoder)
          {
            SCNMTLBlitCommandEncoder::beginEncoding(&v146, v142, 0);
          }

          if (*(C3D::Pass::descriptor(v17) + 6))
          {
            v21 = 0;
            do
            {
              *buf = &v146;
              *&buf[8] = v21;
              (*(*v17 + 48))(v17, buf);
              ++v21;
            }

            while (v21 < *(C3D::Pass::descriptor(v17) + 6));
          }

          PassInStage = C3D::__nextPassInStage(*(v4 + 24), v11, v14);
          if (v142 && (!PassInStage || *C3D::Pass::descriptor(PassInStage) != 4))
          {
            SCNMTLBlitCommandEncoder::endEncoding(&v146, v7);
          }

          goto LABEL_168;
        }

LABEL_54:
        v34 = scn_default_log(v18, v19);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          C3D::RenderGraph::execute(v149, &v150, v34);
        }

        goto LABEL_168;
      }

      if (v142 && !v147._encoder)
      {
        v28 = [(SCNMTLRenderContext *)RenderContext features];
        SCNMTLComputeCommandEncoder::beginEncoding(&v147, v142, v28, 0, 0);
      }

      if (*(C3D::Pass::descriptor(v17) + 6))
      {
        v29 = 0;
        do
        {
          *buf = &v147;
          *&buf[8] = v29;
          (*(*v17 + 40))(v17, buf);
          ++v29;
        }

        while (v29 < *(C3D::Pass::descriptor(v17) + 6));
      }

      v30 = C3D::__nextPassInStage(*(v4 + 24), v11, v14);
      if (v142 && (*(v4 + 168) || !v30 || *C3D::Pass::descriptor(v30) != 3))
      {
        SCNMTLComputeCommandEncoder::endEncoding(&v147, v7);
      }

LABEL_168:
      if (*(v4 + 168))
      {
        v96 = C3D::Pass::resource(*v16);
        v97 = C3D::PassResource::outputCount(v96);
        v98 = v144;
        if (v97)
        {
          v99 = 0;
          v138 = v144;
          do
          {
            v100 = C3D::Pass::resource(*v16);
            v101 = C3D::PassResource::outputAtIndex(v100, v99);
            if (!v101)
            {
              goto LABEL_202;
            }

            if (!*(v4 + 184))
            {
              *(v4 + 184) = C3D::RenderGraph::graphDescription(v4);
            }

            v102 = 0;
            v103 = v4 + 96;
            while (1)
            {
              v104 = *v103;
              v105 = *(*v103 + 8);
              if (v105)
              {
                break;
              }

LABEL_179:
              v103 = v104 + 24;
              ++v102;
            }

            v106 = *(v104 + 16);
            v107 = 2 * v105;
            while (1)
            {
              v108 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v4 + 24), *v106);
              PrimitiveCount = C3DMeshElementGetPrimitiveCount(*v108);
              if (PrimitiveCount != C3DMeshElementGetPrimitiveCount(*v16))
              {
                break;
              }

              ++v106;
              v107 -= 2;
              if (!v107)
              {
                goto LABEL_179;
              }
            }

            v111 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(v4 + 184) objectForKeyedSubscript:{@"stages", "objectAtIndex:", v102), "objectAtIndex:", v98), "objectForKey:", @"outputs", "objectAtIndex:", v99}];
            if (!v111)
            {
              v112 = scn_default_log(0, v110);
              if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315650;
                *&buf[4] = "outputDesc";
                *&buf[12] = 1024;
                *&buf[14] = v99;
                *&buf[18] = 1024;
                *&buf[20] = v102;
                _os_log_fault_impl(&dword_21BEF7000, v112, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Missing output at index %d for stage %d", buf, 0x18u);
              }
            }

            if (*(v101 + 32) != 1)
            {
              goto LABEL_202;
            }

            v113 = C3D::Pass::outputBufferParameterAtIndex(*v16, v99);
            *buf = *(v113 + 16);
            *&buf[16] = *(v113 + 32);
            v114 = ([*v101 sampleCount] == 1 ? C3D::RefCountedResource::textureOrFinal(v101, RenderContext) : C3D::RefCountedResource::resolveTextureOrFinal(v101, RenderContext));
            v115 = v114;
            v116 = [(SCNMTLRenderContext *)RenderContext resourceManager];
            SharedTexture = C3D::CreateSharedTexture(v115, buf, v142, v116);
            if (!SharedTexture)
            {
              goto LABEL_202;
            }

            v118 = (***v16)();
            if (v118)
            {
              v119 = strdup(v118);
            }

            else
            {
              v119 = 0;
            }

            LODWORD(v120) = MEMORY[0];
            v121 = MEMORY[8];
            if ((MEMORY[0] + 1) <= MEMORY[4])
            {
              v124 = MEMORY[8];
              if (v119)
              {
                goto LABEL_200;
              }
            }

            else
            {
              __s1b = v119;
              v122 = ((MEMORY[4] + 1) * 1.5);
              v123 = malloc_type_malloc(32 * v122, 0x5437EE60uLL);
              v124 = v123;
              v120 = MEMORY[0];
              if (MEMORY[0])
              {
                v125 = 0;
                v126 = 0;
                do
                {
                  v127 = &v123[v125];
                  v128 = MEMORY[8] + v125;
                  *v127 = *(MEMORY[8] + v125);
                  *(v127 + 2) = *(v128 + 16);
                  *(v127 + 6) = *(v128 + 24);
                  *v128 = 0;
                  *(v128 + 8) = 0;
                  *(v128 + 16) = 0;
                  *(v128 + 24) = -1;
                  ++v126;
                  v125 += 32;
                }

                while (v126 < v120);
              }

              MEMORY[8] = v123;
              MEMORY[4] = v122;
              if (v121 != 16)
              {
                free(v121);
                LODWORD(v120) = MEMORY[0];
                v124 = MEMORY[8];
              }

              v98 = v138;
              v119 = __s1b;
              if (__s1b)
              {
LABEL_200:
                v129 = strdup(v119);
                goto LABEL_201;
              }
            }

            v129 = 0;
LABEL_201:
            v130 = &v124[32 * v120];
            *v130 = v129;
            *(v130 + 1) = v111;
            *(v130 + 2) = SharedTexture;
            *(v130 + 6) = v99;
            MEMORY[0] = v120 + 1;
            free(v119);
LABEL_202:
            v131 = C3D::Pass::resource(*v16);
            ++v99;
          }

          while (v99 < C3D::PassResource::outputCount(v131));
        }
      }

      else
      {
        LOWORD(v98) = v144;
      }

      v14 = v98 + 1;
      v144 = v98 + 1;
      v13 = (v98 + 1);
      v11 = v145;
      v12 = (v145 + 8);
      if (*(v145 + 8) <= (v98 + 1))
      {
        goto LABEL_209;
      }
    }

    if (v20 == 1)
    {
      v31 = C3D::Pass::descriptor(v17);
      v32 = *(v31 + 6);
      if (*(v31 + 6))
      {
        v33 = 0;
        do
        {
          *buf = v142;
          *&buf[8] = v33;
          (*(*v17 + 56))(v17, buf);
          ++v33;
        }

        while (v33 < v32);
      }

      goto LABEL_168;
    }

    if (v20 != 2)
    {
      goto LABEL_54;
    }

    v134 = *C3D::RenderPass::getRenderMode(v17);
    v23 = *(v4 + 152);
    v24 = *(v11 + 24);
    v25 = v24 && !*(v24 + 24) && [(SCNMTLRenderContext *)RenderContext clientRenderPassDescriptor]&& *v12 - 1 == v13;
    for (i = 0; i != 8; ++i)
    {
      [objc_msgSend(objc_msgSend(v23 colorAttachments];
      [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
    }

    [objc_msgSend(v23 "depthAttachment")];
    [objc_msgSend(v23 "depthAttachment")];
    [objc_msgSend(v23 "stencilAttachment")];
    if (v134 == 1)
    {
      v27 = *(C3D::Pass::descriptor(v17) + 6);
    }

    else
    {
      v27 = 0;
    }

    [v23 setRenderTargetArrayLength:v27];
    if (v17 == *(v4 + 112))
    {
      v35 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) rasterizationRateMap];
    }

    else
    {
      v35 = 0;
    }

    [v23 setRasterizationRateMap:v35];
    v36 = C3D::Pass::descriptor(v17);
    if (!C3D::PassDescriptor::outputCount(v36))
    {
      v135 = 0;
LABEL_139:
      if (v25 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")])
      {
        [v23 setStencilAttachment:{objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext), "stencilAttachment")}];
      }

      v84 = *(C3D::Pass::descriptor(v17) + 10);
      if (v84 <= 1)
      {
        v85 = 1;
      }

      else
      {
        v85 = v84;
      }

      v86 = *(C3D::Pass::descriptor(v17) + 8);
      v87 = *(C3D::Pass::descriptor(v17) + 6);
      v88 = C3D::Pass::descriptor(v17);
      if (v134)
      {
        v89 = 1;
      }

      else
      {
        v89 = v87;
      }

      __s1a = v86 + v85;
      if (!(v135 & 1 | (v86 >= (v86 + v85))))
      {
        v137 = *(v88 + 4);
        v90 = v137 + v89;
        do
        {
          v91 = v137;
          if (v137 < v90)
          {
            do
            {
              if (v25 && (([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing]& 1) != 0 || [(SCNMTLRenderContext *)RenderContext enableARMode]))
              {
                RenderPassDescriptorForEye = C3DEngineContextGetRenderPassDescriptorForEye(*(v4 + 8), v91);
                v93 = [objc_msgSend(objc_msgSend(RenderPassDescriptorForEye "colorAttachments")];
                if (!v93)
                {
                  v93 = [objc_msgSend(objc_msgSend(RenderPassDescriptorForEye "colorAttachments")];
                }

                [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                if ([objc_msgSend(v23 "depthAttachment")] || objc_msgSend(objc_msgSend(v23, "depthAttachment"), "resolveTexture"))
                {
                  v94 = [objc_msgSend(RenderPassDescriptorForEye "depthAttachment")];
                  if (!v94)
                  {
                    v94 = [objc_msgSend(RenderPassDescriptorForEye "depthAttachment")];
                  }

                  [objc_msgSend(v23 "depthAttachment")];
                  [objc_msgSend(v23 "depthAttachment")];
                  [objc_msgSend(v23 "depthAttachment")];
                }

                if ([objc_msgSend(v23 "stencilAttachment")] || objc_msgSend(objc_msgSend(v23, "stencilAttachment"), "resolveTexture"))
                {
                  v95 = [objc_msgSend(RenderPassDescriptorForEye "stencilAttachment")];
                  if (!v95)
                  {
                    v95 = [objc_msgSend(RenderPassDescriptorForEye "stencilAttachment")];
                  }

                  [objc_msgSend(v23 "stencilAttachment")];
                  [objc_msgSend(v23 "stencilAttachment")];
                  [objc_msgSend(v23 "stencilAttachment")];
                }
              }

              *buf = &v148;
              *&buf[8] = v23;
              *&buf[16] = v91;
              *&buf[18] = v86;
              *&buf[20] = 0;
              C3D::__renderSlice(v4, v17, &v144, v16, &v145, buf, v25, (v4 + 160));
              ++v91;
            }

            while (v91 < v90);
          }

          ++v86;
        }

        while (v86 < __s1a);
      }

      goto LABEL_168;
    }

    v135 = 0;
    v37 = 0;
    while (1)
    {
      v38 = C3D::Pass::descriptor(v17);
      v39 = C3D::PassDescriptor::outputAtIndex(v38, v37);
      if (*v39 == 1)
      {
        v40 = *(v39 + 8);
        v41 = *(v39 + 31);
        ViewBackgroundColor = *(v39 + 48);
        v42 = *(v39 + 65);
        __s1 = *(v39 + 66);
        v43 = C3D::Pass::descriptor(v17);
        v44 = C3D::PassDescriptor::outputAtIndex(v43, v37);
        v46 = *(v44 + 64);
        switch(v46)
        {
          case 3:
            if (v25 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "stencilAttachment")])
            {
              v50 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) stencilAttachment];
              [v23 setStencilAttachment:v50];
              if (v41 <= 1 && [v50 resolveTexture])
              {
                [objc_msgSend(v23 "stencilAttachment")];
                [objc_msgSend(v23 "stencilAttachment")];
                [objc_msgSend(v23 "stencilAttachment")];
              }

LABEL_110:
              if (C3DEngineContextHasFeatures(*(v4 + 8), 0x4000))
              {
                v68 = [(SCNMTLRenderContext *)RenderContext device];
                if (SCNMTLDeviceSupportsStencilResolve(v68))
                {
                  if ([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
                  {
                    [objc_msgSend(v23 "stencilAttachment")];
                  }
                }
              }

              break;
            }

            v62 = C3D::Pass::resource(v17);
            v63 = C3D::PassResource::outputAtIndex(v62, v37);
            if (v63)
            {
              if ((__s1 & 8) != 0 && !*(v4 + 168))
              {
                v64 = 0;
              }

              else
              {
                v64 = C3D::__deduceStoreAction(v4, [v23 stencilAttachment], 3, v16, StackAllocator, v37);
              }

              [objc_msgSend(v23 "stencilAttachment")];
              if ([objc_msgSend(v23 "stencilAttachment")] == 2 || (v65 = objc_msgSend(objc_msgSend(v23, "stencilAttachment"), "storeAction"), v65 == 3))
              {
                v65 = [objc_msgSend(v23 "stencilAttachment")];
              }

              if (*(v63 + 32) != 1)
              {
                v67 = scn_default_log(v65, v66);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v154, &v155, v67);
                }
              }

              [objc_msgSend(v23 "stencilAttachment")];
              [objc_msgSend(v23 "stencilAttachment")];
              goto LABEL_110;
            }

            break;
          case 2:
            if (v25 && [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "depthAttachment")])
            {
              v48 = [-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) depthAttachment];
              [v23 setDepthAttachment:v48];
              if (v41 <= 1 && [v48 resolveTexture])
              {
                [objc_msgSend(v23 "depthAttachment")];
                [objc_msgSend(v23 "depthAttachment")];
                [objc_msgSend(v23 "depthAttachment")];
              }

LABEL_91:
              CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(v4 + 8), v49);
              if (C3DEngineContextHasFeatures(*(v4 + 8), 4) && [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
              {
                if ((CoordinatesSystemOptions & 8) != 0)
                {
                  v60 = 2;
                }

                else
                {
                  v60 = 1;
                }

                [objc_msgSend(v23 "depthAttachment")];
              }

              v61 = [v23 depthAttachment];
              if ((CoordinatesSystemOptions & 8) != 0)
              {
                [v61 setClearDepth:0.0];
              }

              else
              {
                [v61 setClearDepth:1.0];
              }

              break;
            }

            v52 = C3D::Pass::resource(v17);
            v53 = C3D::PassResource::outputAtIndex(v52, v37);
            v55 = v53;
            if (v53)
            {
              if (*(v53 + 32) != 1)
              {
                v56 = scn_default_log(v53, v54);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v156, &v157, v56);
                }
              }

              v57 = [v23 depthAttachment];
              [v57 setTexture:{C3D::Pass::outputTextureAtIndex(v17, v37)}];
              [v57 setLoadAction:__s1 & 3];
              if ((__s1 & 8) != 0 && !*(v4 + 168))
              {
                v58 = 0;
              }

              else
              {
                v58 = C3D::__deduceStoreAction(v4, v57, 2, v16, StackAllocator, v37);
              }

              [v57 setStoreAction:v58];
              if ([v57 storeAction] == 2 || objc_msgSend(v57, "storeAction") == 3)
              {
                [v57 setResolveTexture:*(v55 + 24)];
              }

              goto LABEL_91;
            }

            break;
          case 1:
            if (v42 == 255)
            {
              v47 = scn_default_log(v44, v45);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = v132;
                *&buf[4] = "attachmentID < 255";
                *&buf[12] = 2080;
                *&buf[14] = v40;
                _os_log_fault_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Attachment ID not set for %s", buf, 0x16u);
              }
            }

            else
            {
              if (v42)
              {
                v69 = 0;
              }

              else
              {
                v69 = v25;
              }

              if (v69 == 1)
              {
                v70 = [objc_msgSend(-[SCNMTLRenderContext clientRenderPassDescriptor](RenderContext) "colorAttachments")];
                [objc_msgSend(v23 "colorAttachments")];
                if (v41 <= 1 && [v70 resolveTexture])
                {
                  [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                  [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                  [objc_msgSend(objc_msgSend(v23 "colorAttachments")];
                }

                break;
              }
            }

            v71 = C3D::Pass::resource(v17);
            v72 = C3D::PassResource::outputAtIndex(v71, v37);
            v74 = v72;
            if (v72)
            {
              if (*(v72 + 32) != 1)
              {
                v75 = scn_default_log(v72, v73);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                {
                  C3D::RenderGraph::execute(v158, v159, v75);
                }
              }

              v76 = [objc_msgSend(v23 "colorAttachments")];
              [v76 setTexture:{C3D::Pass::outputTextureAtIndex(v17, v37)}];
              v77 = [v76 texture] == 0;
              [v76 setStoreAction:{C3D::__deduceStoreAction(v4, v76, 1, v16, StackAllocator, v37)}];
              if ([v76 storeAction] == 2 || objc_msgSend(v76, "storeAction") == 3)
              {
                [v76 setResolveTexture:{C3D::RefCountedResource::resolveTextureOrFinal(v74, RenderContext)}];
                v78 = [objc_msgSend(v76 "resolveTexture")];
                LODWORD(v78) = v78 == [objc_msgSend(v76 "texture")];
                v79 = [v76 resolveTexture];
                if (!v78 || (v81 = [v79 height], LOBYTE(v81) = v81 != objc_msgSend(objc_msgSend(v76, "texture"), "height"), (objc_msgSend(v76, "resolveTexture") == 0) | v81 & 1))
                {
                  *(v4 + 120) = 0;
                  C3DStackAllocatorPopFrame(StackAllocator, v80);
                  return;
                }
              }

              [v76 setLoadAction:__s1 & 3];
              v135 |= v77;
              if ([v76 loadAction] == 2)
              {
                if ((__s1 & 0x40) == 0)
                {
                  ViewBackgroundColor = C3DEngineContextGetViewBackgroundColor(*(v4 + 8), v82);
                }

                [v76 setClearColor:{ViewBackgroundColor.n128_f32[0], ViewBackgroundColor.n128_f32[1], ViewBackgroundColor.n128_f32[2], ViewBackgroundColor.n128_f32[3]}];
              }
            }

            break;
          default:
            v51 = scn_default_log(v44, v45);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              C3D::__renderSlice(v152, v153, v51);
            }

            break;
        }
      }

      v83 = C3D::Pass::descriptor(v17);
      if (++v37 >= C3D::PassDescriptor::outputCount(v83))
      {
        goto LABEL_139;
      }
    }
  }

  v9 = *(v1 + 168);
  if (v9)
  {
    v10 = *(v4 + 184);
    if (v10 || (v10 = C3D::RenderGraph::graphDescription(v4), *(v4 + 184) = v10, (v9 = *(v4 + 168)) != 0))
    {
      (*(v9 + 16))(v9, v10, v3);

      *(v4 + 168) = 0;
      *(v4 + 184) = 0;
    }
  }
}