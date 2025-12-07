void re::ecs2::introspect_AnchoringDescriptorType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F68, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F70))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6198, "AnchoringDescriptorType", 4, 4, 1, 1);
      qword_1EE1B6198 = &unk_1F5D0C658;
      qword_1EE1B61D8 = &re::ecs2::introspect_AnchoringDescriptorType(BOOL)::enumTable;
      dword_1EE1B61A8 = 9;
      __cxa_guard_release(&qword_1EE1B5F70);
    }

    if (byte_1EE1B5F33)
    {
      break;
    }

    byte_1EE1B5F33 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6198, a2);
    v59 = 0xD3F8AB5ECB755B2CLL;
    v60 = "AnchoringDescriptorType";
    v63 = 208862;
    v64 = "int";
    v4 = v62[0];
    v5 = v62[1];
    if (v63)
    {
      if (v63)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B61D8;
      v63 = v4;
      v64 = v5;
      re::TypeBuilder::beginEnumType(v62, &v59, 1, 1, &v63);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v61.var0 = 2 * v11;
            v61.var1 = v10;
            re::TypeBuilder::addEnumConstant(v62, v15, &v61);
            if (*&v61.var0)
            {
              if (*&v61.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v61.var0 = 2 * v20;
              v61.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v62, v24, &v61);
              if (*&v61.var0)
              {
                if (*&v61.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v62, v26);
      xmmword_1EE1B61B8 = v61;
      if (v59)
      {
        if (v59)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v60);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v58);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B5F68))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Camera";
      qword_1EE1B6300 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "World";
      qword_1EE1B6308 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Anchor";
      qword_1EE1B6310 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Plane";
      qword_1EE1B6318 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Image";
      qword_1EE1B6320 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "Object";
      qword_1EE1B6328 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "Face";
      qword_1EE1B6330 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "Body";
      qword_1EE1B6338 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "Hand";
      qword_1EE1B6340 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 9;
      *(v47 + 16) = "Reserved1";
      qword_1EE1B6348 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 10;
      *(v49 + 16) = "Head";
      qword_1EE1B6350 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 11;
      *(v51 + 16) = "Deprecated0";
      qword_1EE1B6358 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 12;
      *(v53 + 16) = "Accessory";
      qword_1EE1B6360 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 2;
      *(v55 + 8) = 8;
      *(v55 + 16) = "Reserved0";
      qword_1EE1B6368 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 2;
      *(v57 + 8) = 11;
      *(v57 + 16) = "Controller";
      qword_1EE1B6370 = v57;
      __cxa_guard_release(&qword_1EE1B5F68);
    }
  }
}

void *re::ecs2::introspect_AnchoringOrientation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 1;
    *(v10 + 16) = "Right";
    re::ecs2::introspect_AnchoringOrientation(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 2;
    *(v12 + 16) = "Left";
    qword_1EE1C58E0 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 2;
    *(v14 + 8) = 1;
    *(v14 + 16) = "Orientation0";
    qword_1EE1C58E8 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 2;
    *(v16 + 8) = 2;
    *(v16 + 16) = "Orientation1";
    qword_1EE1C58F0 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 255;
    *(v18 + 16) = "Any";
    qword_1EE1C58F8 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_AnchoringOrientation(BOOL)::info, "AnchoringOrientation", 1, 1, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::ecs2::introspect_AnchoringOrientation(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    }
  }

  re::ecs2::introspect_AnchoringOrientation(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_AnchoringOrientation(BOOL)::info, a2);
  v20[0] = 0x9F95A6D022127546;
  v20[1] = "AnchoringOrientation";
  xmmword_1EE1C58B0 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
}

void re::ecs2::introspect_AnchoringLocation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F78, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F80))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B61E0, "AnchoringLocation", 4, 4, 1, 1);
      qword_1EE1B61E0 = &unk_1F5D0C658;
      qword_1EE1B6220 = &re::ecs2::introspect_AnchoringLocation(BOOL)::enumTable;
      dword_1EE1B61F0 = 9;
      __cxa_guard_release(&qword_1EE1B5F80);
    }

    if (byte_1EE1B5F34)
    {
      break;
    }

    byte_1EE1B5F34 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B61E0, a2);
    v95 = 0x119AAE97CF798784;
    v96 = "AnchoringLocation";
    v99 = 208862;
    v100 = "int";
    v4 = v98[0];
    v5 = v98[1];
    if (v99)
    {
      if (v99)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6220;
      v99 = v4;
      v100 = v5;
      re::TypeBuilder::beginEnumType(v98, &v95, 1, 1, &v99);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v97.var0 = 2 * v11;
            v97.var1 = v10;
            re::TypeBuilder::addEnumConstant(v98, v15, &v97);
            if (*&v97.var0)
            {
              if (*&v97.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v97.var0 = 2 * v20;
              v97.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v98, v24, &v97);
              if (*&v97.var0)
              {
                if (*&v97.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v98, v26);
      xmmword_1EE1B6200 = v97;
      if (v95)
      {
        if (v95)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v96);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v94);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B5F78))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Origin";
      qword_1EE1B6510 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Palm";
      qword_1EE1B6518 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "IndexFingerTip";
      qword_1EE1B6520 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "ThumbTip";
      qword_1EE1B6528 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "AboveHand";
      qword_1EE1B6530 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "ThumbKnuckle";
      qword_1EE1B6538 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "ThumbIntermediateBase";
      qword_1EE1B6540 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "ThumbIntermediateTip";
      qword_1EE1B6548 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "IndexFingerMetacarpal";
      qword_1EE1B6550 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 9;
      *(v47 + 16) = "IndexFingerKnuckle";
      qword_1EE1B6558 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 10;
      *(v49 + 16) = "IndexFingerIntermediateBase";
      qword_1EE1B6560 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 11;
      *(v51 + 16) = "IndexFingerIntermediateTip";
      qword_1EE1B6568 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 12;
      *(v53 + 16) = "MiddleFingerMetacarpal";
      qword_1EE1B6570 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 13;
      *(v55 + 16) = "MiddleFingerKnuckle";
      qword_1EE1B6578 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 14;
      *(v57 + 16) = "MiddleFingerIntermediateBase";
      qword_1EE1B6580 = v57;
      v58 = re::introspectionAllocator();
      v59 = (*(*v58 + 32))(v58, 24, 8);
      *v59 = 1;
      *(v59 + 8) = 15;
      *(v59 + 16) = "MiddleFingerIntermediateTip";
      qword_1EE1B6588 = v59;
      v60 = re::introspectionAllocator();
      v61 = (*(*v60 + 32))(v60, 24, 8);
      *v61 = 1;
      *(v61 + 8) = 16;
      *(v61 + 16) = "MiddleFingerTip";
      qword_1EE1B6590 = v61;
      v62 = re::introspectionAllocator();
      v63 = (*(*v62 + 32))(v62, 24, 8);
      *v63 = 1;
      *(v63 + 8) = 17;
      *(v63 + 16) = "RingFingerMetacarpal";
      qword_1EE1B6598 = v63;
      v64 = re::introspectionAllocator();
      v65 = (*(*v64 + 32))(v64, 24, 8);
      *v65 = 1;
      *(v65 + 8) = 18;
      *(v65 + 16) = "RingFingerKnuckle";
      qword_1EE1B65A0 = v65;
      v66 = re::introspectionAllocator();
      v67 = (*(*v66 + 32))(v66, 24, 8);
      *v67 = 1;
      *(v67 + 8) = 19;
      *(v67 + 16) = "RingFingerIntermediateBase";
      qword_1EE1B65A8 = v67;
      v68 = re::introspectionAllocator();
      v69 = (*(*v68 + 32))(v68, 24, 8);
      *v69 = 1;
      *(v69 + 8) = 20;
      *(v69 + 16) = "RingFingerIntermediateTip";
      qword_1EE1B65B0 = v69;
      v70 = re::introspectionAllocator();
      v71 = (*(*v70 + 32))(v70, 24, 8);
      *v71 = 1;
      *(v71 + 8) = 21;
      *(v71 + 16) = "RingFingerTip";
      qword_1EE1B65B8 = v71;
      v72 = re::introspectionAllocator();
      v73 = (*(*v72 + 32))(v72, 24, 8);
      *v73 = 1;
      *(v73 + 8) = 22;
      *(v73 + 16) = "LittleFingerMetacarpal";
      qword_1EE1B65C0 = v73;
      v74 = re::introspectionAllocator();
      v75 = (*(*v74 + 32))(v74, 24, 8);
      *v75 = 1;
      *(v75 + 8) = 23;
      *(v75 + 16) = "LittleFingerKnuckle";
      qword_1EE1B65C8 = v75;
      v76 = re::introspectionAllocator();
      v77 = (*(*v76 + 32))(v76, 24, 8);
      *v77 = 1;
      *(v77 + 8) = 24;
      *(v77 + 16) = "LittleFingerIntermediateBase";
      qword_1EE1B65D0 = v77;
      v78 = re::introspectionAllocator();
      v79 = (*(*v78 + 32))(v78, 24, 8);
      *v79 = 1;
      *(v79 + 8) = 25;
      *(v79 + 16) = "LittleFingerIntermediateTip";
      qword_1EE1B65D8 = v79;
      v80 = re::introspectionAllocator();
      v81 = (*(*v80 + 32))(v80, 24, 8);
      *v81 = 1;
      *(v81 + 8) = 26;
      *(v81 + 16) = "LittleFingerTip";
      qword_1EE1B65E0 = v81;
      v82 = re::introspectionAllocator();
      v83 = (*(*v82 + 32))(v82, 24, 8);
      *v83 = 1;
      *(v83 + 8) = 27;
      *(v83 + 16) = "ForearmWrist";
      qword_1EE1B65E8 = v83;
      v84 = re::introspectionAllocator();
      v85 = (*(*v84 + 32))(v84, 24, 8);
      *v85 = 1;
      *(v85 + 8) = 28;
      *(v85 + 16) = "ForearmArm";
      qword_1EE1B65F0 = v85;
      v86 = re::introspectionAllocator();
      v87 = (*(*v86 + 32))(v86, 24, 8);
      *v87 = 2;
      *(v87 + 8) = 1;
      *(v87 + 16) = "ReservedLocation0";
      qword_1EE1B65F8 = v87;
      v88 = re::introspectionAllocator();
      v89 = (*(*v88 + 32))(v88, 24, 8);
      *v89 = 2;
      *(v89 + 8) = 2;
      *(v89 + 16) = "ReservedLocation1";
      qword_1EE1B6600 = v89;
      v90 = re::introspectionAllocator();
      v91 = (*(*v90 + 32))(v90, 24, 8);
      *v91 = 2;
      *(v91 + 8) = 3;
      *(v91 + 16) = "ReservedLocation2";
      qword_1EE1B6608 = v91;
      v92 = re::introspectionAllocator();
      v93 = (*(*v92 + 32))(v92, 24, 8);
      *v93 = 2;
      *(v93 + 8) = 4;
      *(v93 + 16) = "ReservedLocation3";
      qword_1EE1B6610 = v93;
      __cxa_guard_release(&qword_1EE1B5F78);
    }
  }
}

void re::ecs2::introspect_AnchoringMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F88, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5F90))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6228, "AnchoringMode", 4, 4, 1, 1);
      qword_1EE1B6228 = &unk_1F5D0C658;
      qword_1EE1B6268 = &re::ecs2::introspect_AnchoringMode(BOOL)::enumTable;
      dword_1EE1B6238 = 9;
      __cxa_guard_release(&qword_1EE1B5F90);
    }

    if (byte_1EE1B5F35)
    {
      break;
    }

    byte_1EE1B5F35 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6228, a2);
    v37 = 0xDCF039AB5F8CD860;
    v38 = "AnchoringMode";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B6268;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1B6248 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B5F88))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Once";
      qword_1EE1B6020 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Continuous";
      qword_1EE1B6028 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Predicted";
      qword_1EE1B6030 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "LowFrequency";
      qword_1EE1B6038 = v35;
      __cxa_guard_release(&qword_1EE1B5F88);
    }
  }
}

void re::ecs2::introspect_AnchoringResourceStyle(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5F98, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FA0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6270, "AnchoringResourceStyle", 4, 4, 1, 1);
      qword_1EE1B6270 = &unk_1F5D0C658;
      qword_1EE1B62B0 = &re::ecs2::introspect_AnchoringResourceStyle(BOOL)::enumTable;
      dword_1EE1B6280 = 9;
      __cxa_guard_release(&qword_1EE1B5FA0);
    }

    if (byte_1EE1B5F36)
    {
      break;
    }

    byte_1EE1B5F36 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B6270, a2);
    v37 = 0x496E67FA88263CACLL;
    v38 = "AnchoringResourceStyle";
    v41 = 0x607DD0F01DCLL;
    v42 = "uint32_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B62B0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1B6290 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B5F98))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1B6040 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "GroupName";
      qword_1EE1B6048 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "BundleName";
      qword_1EE1B6050 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "URL";
      qword_1EE1B6058 = v35;
      __cxa_guard_release(&qword_1EE1B5F98);
    }
  }
}

void re::ecs2::introspect_AnchoringPhysicsSimulation(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B5FA8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B5FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FB0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B62B8, "AnchoringPhysicsSimulation", 4, 4, 1, 1);
      qword_1EE1B62B8 = &unk_1F5D0C658;
      qword_1EE1B62F8 = &re::ecs2::introspect_AnchoringPhysicsSimulation(BOOL)::enumTable;
      dword_1EE1B62C8 = 9;
      __cxa_guard_release(&qword_1EE1B5FB0);
    }

    if (byte_1EE1B5F37)
    {
      break;
    }

    byte_1EE1B5F37 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B62B8, a2);
    v33 = 0x1F203909CD802C82;
    v34 = "AnchoringPhysicsSimulation";
    v37 = 208862;
    v38 = "int";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B62F8;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1B62D8 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v32);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B5FA8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1B5FE0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Isolated";
      qword_1EE1B5FE8 = v31;
      __cxa_guard_release(&qword_1EE1B5FA8);
    }
  }
}

void *re::ecs2::allocInfo_AnchoringDescriptor(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5FB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B63F0, "AnchoringDescriptor");
    __cxa_guard_release(&qword_1EE1B5FB8);
  }

  return &unk_1EE1B63F0;
}

void re::ecs2::initInfo_AnchoringDescriptor(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v57[0] = 0x15A7D86CC6325078;
  v57[1] = "AnchoringDescriptor";
  if (v57[0])
  {
    if (v57[0])
    {
    }
  }

  *(this + 2) = v58;
  if ((atomic_load_explicit(&qword_1EE1B5FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FC0))
  {
    v7 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringDescriptorType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "type";
    *(v9 + 16) = &qword_1EE1B6198;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B6378 = v9;
    v10 = re::introspectionAllocator();
    v11 = re::introspect_Matrix4x4F(1);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "transform";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1B6380 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<unsigned char [16]>::get(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "anchorIdentifier";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x5000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1B6388 = v16;
    v17 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringAlignment(v17, v18);
    v19 = (*(*v17 + 32))(v17, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "alignment";
    *(v19 + 16) = &qword_1EE1B60C0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x6000000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1B6390 = v19;
    v20 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringClassification(v20, v21);
    v22 = (*(*v20 + 32))(v20, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "classification";
    *(v22 + 16) = &qword_1EE1B6108;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x6800000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B6398 = v22;
    v23 = re::introspectionAllocator();
    v24 = re::introspect_Vector2F(1);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "bounds";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000006;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B63A0 = v25;
    v26 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringOrientation(1, v27);
    v28 = (*(*v26 + 32))(v26, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "orientation";
    *(v28 + 16) = &re::ecs2::introspect_AnchoringOrientation(BOOL)::info;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x7800000007;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1B63A8 = v28;
    v29 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringLocation(v29, v30);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "location";
    *(v31 + 16) = &qword_1EE1B61E0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x7C00000008;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1B63B0 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::DynamicString>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "resourceGroup";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x8000000009;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B63B8 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::IntrospectionInfo<re::DynamicString>::get(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "resourceName";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0xA00000000ALL;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1B63C0 = v39;
    v40 = re::introspectionAllocator();
    v41 = re::introspect_Matrix4x4F(1);
    v42 = (*(*v40 + 32))(v40, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "keypointTransform";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0xD00000000BLL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1B63C8 = v42;
    v43 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringAccessoryType(v43, v44);
    v45 = (*(*v43 + 32))(v43, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "accessoryType";
    *(v45 + 16) = &qword_1EE1B6150;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x1100000000CLL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1B63D0 = v45;
    v46 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringResourceStyle(v46, v47);
    v48 = (*(*v46 + 32))(v46, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "resourceType";
    *(v48 + 16) = &qword_1EE1B6270;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x1140000000DLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1B63D8 = v48;
    v49 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringPhysicsSimulation(v49, v50);
    v51 = (*(*v49 + 32))(v49, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "physicsSimulation";
    *(v51 + 16) = &qword_1EE1B62B8;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x1180000000ELL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1B63E0 = v51;
    v52 = re::introspectionAllocator();
    v54 = re::IntrospectionInfo<re::DynamicString>::get(1, v53);
    v55 = (*(*v52 + 32))(v52, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "accessoryLocationName";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0x1200000000FLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE1B63E8 = v55;
    __cxa_guard_release(&qword_1EE1B5FC0);
  }

  *(this + 2) = 0x14000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 15;
  *(this + 8) = &qword_1EE1B6378;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchoringDescriptor>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchoringDescriptor>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchoringDescriptor>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchoringDescriptor>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v56 = v58;
}

void *re::internal::defaultConstruct<re::ecs2::AnchoringDescriptor>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 16) = xmmword_1E3047670;
  *(a3 + 32) = xmmword_1E3047680;
  *(a3 + 48) = xmmword_1E30476A0;
  *(a3 + 64) = xmmword_1E30474D0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = -1;
  *(a3 + 104) = xmmword_1E3062D70;
  *(a3 + 120) = -1;
  *(a3 + 124) = 0u;
  *(a3 + 140) = 0u;
  *(a3 + 156) = 0;
  v4 = re::DynamicString::setCapacity((a3 + 128), 0);
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  v5 = a3 + 160;
  v6 = re::DynamicString::setCapacity(v5, 0);
  *(v5 + 32) = 0u;
  *(v5 + 48) = xmmword_1E3047670;
  *(v5 + 64) = xmmword_1E3047680;
  *(v5 + 80) = xmmword_1E30476A0;
  *(v5 + 96) = xmmword_1E30474D0;
  *(v5 + 112) = 0x1000000FFLL;
  *(v5 + 120) = 1;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;

  return re::DynamicString::setCapacity((v5 + 128), 0);
}

double re::internal::defaultDestruct<re::ecs2::AnchoringDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 288));
  re::DynamicString::deinit((a3 + 160));

  return re::DynamicString::deinit((a3 + 128));
}

void *re::internal::defaultConstructV2<re::ecs2::AnchoringDescriptor>(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 16) = xmmword_1E3047670;
  *(a1 + 32) = xmmword_1E3047680;
  *(a1 + 48) = xmmword_1E30476A0;
  *(a1 + 64) = xmmword_1E30474D0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  *(a1 + 104) = xmmword_1E3062D70;
  *(a1 + 120) = -1;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0;
  v2 = re::DynamicString::setCapacity((a1 + 128), 0);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v3 = a1 + 160;
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 32) = 0u;
  *(v3 + 48) = xmmword_1E3047670;
  *(v3 + 64) = xmmword_1E3047680;
  *(v3 + 80) = xmmword_1E30476A0;
  *(v3 + 96) = xmmword_1E30474D0;
  *(v3 + 112) = 0x1000000FFLL;
  *(v3 + 120) = 1;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;

  return re::DynamicString::setCapacity((v3 + 128), 0);
}

double re::internal::defaultDestructV2<re::ecs2::AnchoringDescriptor>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 288));
  re::DynamicString::deinit((a1 + 160));

  return re::DynamicString::deinit((a1 + 128));
}

void *re::ecs2::allocInfo_AnchoringComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B5FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6480, "AnchoringComponent");
    __cxa_guard_release(&qword_1EE1B5FD8);
  }

  return &unk_1EE1B6480;
}

void re::ecs2::initInfo_AnchoringComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v38[0] = 0x21BB1670078CF520;
  v38[1] = "AnchoringComponent";
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  *(this + 2) = v39;
  if ((atomic_load_explicit(&qword_1EE1B5FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B5FD0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B6090 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1B5FC8;
    if (!qword_1EE1B5FC8)
    {
      v17 = re::ecs2::allocInfo_AnchoringDescriptor(v15);
      qword_1EE1B5FC8 = v17;
      re::ecs2::initInfo_AnchoringDescriptor(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "descriptor";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B6098 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "previousWorldTransform";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x17000000002;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B60A0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "isRequired";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x1C000000003;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B60A8 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_float(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "scaleFactor";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x1C400000004;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B60B0 = v33;
    v34 = re::introspectionAllocator();
    re::ecs2::introspect_AnchoringMode(v34, v35);
    v36 = (*(*v34 + 32))(v34, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "mode";
    *(v36 + 16) = &qword_1EE1B6228;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x16000000005;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1B60B8 = v36;
    __cxa_guard_release(&qword_1EE1B5FD0);
  }

  *(this + 2) = 0x28000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B6090;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchoringComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchoringComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchoringComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchoringComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218AnchoringComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v37 = v39;
}

void *re::internal::defaultDestruct<re::ecs2::AnchoringComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicString::deinit((a3 + 40));
  re::DynamicString::deinit((a3 + 24));
  re::DynamicString::deinit((a3 + 20));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::AnchoringComponent>(void *a1)
{
  re::DynamicString::deinit((a1 + 40));
  re::DynamicString::deinit((a1 + 24));
  re::DynamicString::deinit((a1 + 20));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void re::ecs2::AnchoringComponent::~AnchoringComponent(re::ecs2::AnchoringComponent *this)
{
  re::DynamicString::deinit((this + 320));
  re::DynamicString::deinit((this + 192));
  re::DynamicString::deinit((this + 160));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicString::deinit((this + 320));
  re::DynamicString::deinit((this + 192));
  re::DynamicString::deinit((this + 160));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::make::shared::unsafelyInplace<re::ecs2::AnchoringComponent>(void *a1)
{
  bzero(a1, 0x280uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5D010D0;
  *(a1 + 8) = 1;
  *(a1 + 3) = xmmword_1E3047670;
  *(a1 + 4) = xmmword_1E3047680;
  *(a1 + 5) = xmmword_1E30476A0;
  *(a1 + 6) = xmmword_1E30474D0;
  a1[14] = 0;
  a1[15] = 0;
  *(a1 + 128) = -1;
  *(a1 + 17) = xmmword_1E3062D70;
  *(a1 + 152) = -1;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 47) = 0;
  v3 = re::DynamicString::setCapacity(a1 + 20, 0);
  *(a1 + 13) = 0u;
  *(a1 + 12) = 0u;
  v4 = re::DynamicString::setCapacity(a1 + 24, 0);
  *(a1 + 14) = 0u;
  *(a1 + 15) = xmmword_1E3047670;
  *(a1 + 16) = xmmword_1E3047680;
  *(a1 + 17) = xmmword_1E30476A0;
  *(a1 + 18) = xmmword_1E30474D0;
  a1[38] = 0x1000000FFLL;
  *(a1 + 78) = 1;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  re::DynamicString::setCapacity(a1 + 40, 0);
  *(a1 + 88) = 1;
  *(a1 + 368) = 0;
  *(a1 + 448) = 1;
  *(a1 + 113) = 1065353216;
  *(a1 + 464) = 0;
  *(a1 + 544) = 0;
  *(a1 + 624) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218AnchoringComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (re::ecs2::AnchoringComponent::adjustedIntroReleaseInfo(a1, v5), v5[0] == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (*&v8.var0)
      {
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::ComponentTypeRegistry::init(re::ecs2::ComponentTypeRegistry *this)
{
  v15 = re::introspectionSharedMutex(this);
  v16 = 0;
  lock = (this + 116);
  v14 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v15, &lock);
  if ((*this & 1) == 0)
  {
    v2 = &unk_1EE187000;
    {
      v2 = &unk_1EE187000;
      if (v7)
      {
        re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
        v2 = &unk_1EE187000;
      }
    }

    v3 = *(v2[54] + 64);
    v4 = *v3;
    if (**v3 != 2)
    {
      v5 = (v3 + 1);
      do
      {
        v6 = *v5++;
        v4 = v6;
      }

      while (*v6 != 2);
    }

    *(this + 13) = v4;
    *(v4 + 1) = this + 88;
    *this = 1;
  }

  if (v14 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  if (v16 == 1)
  {
    std::__shared_mutex_base::unlock(v15);
  }
}

void re::ecs2::ComponentTypeRegistry::deinit(re::ecs2::ComponentTypeRegistry *this)
{
  v21 = re::introspectionSharedMutex(this);
  v22 = 0;
  v19 = (this + 116);
  v20 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v21, &v19);
  if (*this == 1)
  {
    re::CustomPolymorphicTable::clear(this + 48);
    re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(this + 48);
    *&v9 = 0x6DAE480279BALL;
    *(&v9 + 1) = "Component";
    v2 = re::TypeInfo::TypeInfo(v17, &v13);
    if (v9)
    {
      if (v9)
      {
      }
    }

    v3 = (*(v18 + 88) - 1);
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    re::DynamicArray<re::TypeID>::setCapacity(&v12, v3);
    ++v15;
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        re::TypeInfo::derivedClass(&v9, v17, i);
        v5 = *v10;
        v11.n128_u64[0] = v9;
        v11.n128_u64[1] = v5;
        re::DynamicArray<re::TypeID>::add(&v12, &v11);
      }
    }

    if (v14)
    {
      v6 = v16;
      v7 = 16 * v14;
      do
      {
        v8 = *v6++;
        v9 = v8;
        v7 -= 16;
      }

      while (v7);
    }

    re::DynamicArray<unsigned long>::deinit(this + 8);
    atomic_store(1u, this + 56);
    *this = 0;
    if (v12 && v16)
    {
      (*(*v12 + 40))();
    }
  }

  if (v20 == 1)
  {
    os_unfair_lock_unlock(v19);
  }

  if (v22 == 1)
  {
    std::__shared_mutex_base::unlock(v21);
  }
}

void std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(uint64_t a1, uint64_t a2)
{
  std::unique_lock<std::shared_mutex>::lock[abi:nn200100](a1);
  if ((std::unique_lock<re::UnfairLock>::try_lock[abi:nn200100](a2) & 1) == 0)
  {
    do
    {
      std::unique_lock<std::shared_mutex>::unlock[abi:nn200100](a1);
      sched_yield();
      std::unique_lock<re::UnfairLock>::lock[abi:nn200100](a2);
      std::unique_lock<std::shared_mutex>::try_lock[abi:nn200100](a1);
      if (v4)
      {
        break;
      }

      std::unique_lock<re::UnfairLock>::unlock[abi:nn200100](a2);
      sched_yield();
      std::unique_lock<std::shared_mutex>::lock[abi:nn200100](a1);
    }

    while (!std::unique_lock<re::UnfairLock>::try_lock[abi:nn200100](a2));
  }
}

uint64_t re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = v3 + 8;
        do
        {
          re::SerializedReference<re::IntrospectionBase const*>::reset(v6);
          v6 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

__n128 re::DynamicArray<re::TypeID>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TypeID>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

char *re::ecs2::ComponentTypeRegistry::instance(re::ecs2::ComponentTypeRegistry *this)
{
  {
    re::ecs2::ComponentTypeRegistry::instance(void)::s_instance = 0;
    qword_1EE1C5BA0 = 0;
    unk_1EE1C5BA8 = 0;
    qword_1EE1C5B98 = 0;
    dword_1EE1C5BB0 = 0;
    qword_1EE1C5BE0 = 0;
    dword_1EE1C5BE8 = 0;
    qword_1EE1C5BF0 = 0;
    unk_1EE1C5BF8 = 0;
    unk_1EE1C5BB8 = 0u;
    unk_1EE1C5BC8 = 0u;
    dword_1EE1C5BD8 = 0;
    word_1EE1C5C00 = 1;
    dword_1EE1C5C04 = 0;
    re::ecs2::ComponentTypeRegistry::init(&re::ecs2::ComponentTypeRegistry::instance(void)::s_instance);
  }

  return &re::ecs2::ComponentTypeRegistry::instance(void)::s_instance;
}

uint64_t re::ecs2::ComponentTypeRegistry::add(os_unfair_lock_s *this, re::ecs2::ComponentTypeBase *a2, char a3)
{
  if (a3)
  {
    os_unfair_lock_lock(this + 29);
    v5 = re::ecs2::ComponentTypeRegistry::add_locked(this, a2);
    os_unfair_lock_unlock(this + 29);
    return v5;
  }

  else
  {
    v10 = re::introspectionSharedMutex(this);
    v11 = 0;
    lock = this + 29;
    v9 = 0;
    std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v10, &lock);
    v7 = re::ecs2::ComponentTypeRegistry::add_locked(this, a2);
    if (v9 == 1)
    {
      os_unfair_lock_unlock(lock);
    }

    if (v11 == 1)
    {
      std::__shared_mutex_base::unlock(v10);
    }

    return v7;
  }
}

uint64_t re::ecs2::ComponentTypeRegistry::add_locked(re::ecs2::ComponentTypeRegistry *this, re::ecs2::ComponentTypeBase *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(this + 5);
  v6 = 8 * v3;
  while (1)
  {
    v7 = *v5;
    v8 = re::StringID::operator==((*v5 + 24), a2 + 3);
    if (v8)
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7)
  {
    v9 = *re::ecsCoreLogObjects(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v12 = *(a2 + 4);
      buf[0].var0 = 136315138;
      *(&buf[0].var0 + 1) = v12;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Cannot register component type '%s'. A different component type with the same name is already registered.", buf, 0xCu);
      return 0;
    }
  }

  else
  {
LABEL_9:
    add = atomic_fetch_add(this + 56, 1u);
    *(v21 + 8) = add;
    re::DynamicArray<re::TransitionCondition *>::add((this + 8), &v21);
    v14 = *(v21 + 4);
    v15 = *(v21 + 3) >> 1;
    v16 = (*(*v21 + 48))(v21);
    re::CustomPolymorphicTable::addType((this + 48), v14, v16, v15, 0);
    (*(*v21 + 56))(v20);
    v17 = re::TypeInfo::polymorphicObjectName(&buf[0].var1);
    v18 = v21;
    if (!re::StringID::operator==(v17, v21 + 3))
    {
      if (*&buf[0].var0)
      {
        if (*&buf[0].var0)
        {
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t re::ecs2::ComponentTypeRegistry::remove(re::ecs2::ComponentTypeRegistry *this, const re::ecs2::ComponentTypeBase *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = re::introspectionSharedMutex(this);
  v26 = 0;
  lock = (this + 116);
  v24 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v25, &lock);
  v5 = *(this + 3);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(this + 5);
  v7 = 8 * v5;
  v8 = v6;
  while (1)
  {
    v9 = *v8;
    v4 = re::StringID::operator==(*v8 + 3, a2 + 3);
    if (v4)
    {
      break;
    }

    ++v8;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v9)
  {
    v10 = 0;
    v11 = 8 * v5 - 8;
    while (*v6 != a2)
    {
      ++v6;
      v11 -= 8;
      v10 += 8;
      if (v11 == -8)
      {
        goto LABEL_19;
      }
    }

    if (v11 != -8)
    {
      v14 = v10 >> 3;
      if (v5 <= v10 >> 3)
      {
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v19 = v10 >> 3;
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "removeStableAt";
        v30 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v31 = 969;
        v32 = 2048;
        v33 = v19;
        v34 = 2048;
        v35 = v5;
        _os_log_send_and_compose_impl(v21, &v27, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v22, lock);
        _os_crash_msg();
        __break(1u);
      }

      v15 = v5 - 1;
      if (v5 - 1 > v14 && v11)
      {
        memmove(v6, v6 + 1, v11);
        v15 = *(this + 3) - 1;
      }

      *(this + 3) = v15;
      ++*(this + 8);
    }

LABEL_19:
    v16 = (*(*a2 + 48))(a2);
    re::CustomPolymorphicTable::removeType((this + 48), v16);
    (*(*a2 + 56))(buf, a2);
  }

  else
  {
LABEL_11:
    v12 = *re::ecsCoreLogObjects(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a2 + 4);
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Cannot unregister component type '%s'. The component type is not registered.", buf, 0xCu);
    }
  }

  if (v24 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  if (v26 == 1)
  {
    std::__shared_mutex_base::unlock(v25);
  }

  return 1;
}

uint64_t re::ecs2::ComponentTypeRegistry::componentTypeWithHash(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 29);
  v4 = *&this[6]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[10]._os_unfair_lock_opaque;
    v6 = 8 * v4;
    while (1)
    {
      v7 = *v5;
      if (a2 == *(*v5 + 24) >> 1)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 29);
  return v7;
}

uint64_t re::ecs2::ComponentTypeRegistry::componentTypeWithName(os_unfair_lock_s *this, const re::StringID *a2)
{
  os_unfair_lock_lock(this + 29);
  v4 = *&this[6]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[10]._os_unfair_lock_opaque;
    v6 = 8 * v4;
    while (1)
    {
      v7 = *v5;
      if (re::StringID::operator==((*v5 + 24), a2))
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 29);
  return v7;
}

uint64_t re::ecs2::ComponentTypeRegistry::componentTypeWithIntrospectionInfo(os_unfair_lock_s *this, const re::IntrospectionBase *a2)
{
  os_unfair_lock_lock(this + 29);
  v4 = *&this[6]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[10]._os_unfair_lock_opaque;
    v6 = 8 * v4;
    while (1)
    {
      v7 = *v5;
      if ((*(**v5 + 48))(*v5) == a2)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  os_unfair_lock_unlock(this + 29);
  return v7;
}

uint64_t std::unique_lock<re::UnfairLock>::try_lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      result = os_unfair_lock_trylock(v2);
      *(a1 + 8) = result;
      return result;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::try_lock: already locked");
  return std::unique_lock<std::shared_mutex>::try_lock[abi:nn200100](v4);
}

void std::unique_lock<std::shared_mutex>::try_lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      *(a1 + 8) = std::__shared_mutex_base::try_lock(v2);
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::try_lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::try_lock: already locked");
  std::unique_lock<std::shared_mutex>::lock[abi:nn200100](v3);
}

void std::unique_lock<std::shared_mutex>::lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::__shared_mutex_base::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::unique_lock<std::shared_mutex>::unlock[abi:nn200100](v3);
}

void std::unique_lock<std::shared_mutex>::unlock[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::__shared_mutex_base::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::unique_lock<re::UnfairLock>::lock[abi:nn200100](v2);
  }
}

void std::unique_lock<re::UnfairLock>::lock[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      os_unfair_lock_lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::unique_lock<re::UnfairLock>::unlock[abi:nn200100](v3);
}

void std::unique_lock<re::UnfairLock>::unlock[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    os_unfair_lock_unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    re::DynamicArray<re::TypeID>::setCapacity(v2, v3);
  }
}

void *re::DynamicArray<re::TypeID>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::TypeID>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v7;
        do
        {
          v12 = *v8++;
          *v11++ = v12;
          v10 -= 16;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TypeID>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::TypeID>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TypeID>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::ecs2::EntityHandle::reset(re::ecs2::EntityHandle *this)
{
  objc_destroyWeak(this);
  *this = 0;
  *(this + 1) = 0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *v2;
    v4 = re::DynamicString::deinit(*(this + 2));
    (*(*v3 + 40))(v3, v2, v4);
    *(this + 2) = 0;
  }
}

uint64_t re::ecs2::EntityHandle::EntityHandle(uint64_t a1, uint64_t a2)
{
  objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  re::ecs2::EntityHandle::reset(a1);
  objc_storeWeak(a1, (a2 + 8));
  *(a1 + 8) = *(a2 + 312);
  return a1;
}

{
  objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  to = 0;
  objc_moveWeak(&to, a1);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a1, a2);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, &to);
  objc_destroyWeak(&to);
  return a1;
}

id *re::ecs2::EntityHandle::EntityHandle(id *this, const re::ecs2::EntityHandle *a2)
{
  objc_initWeak(this, 0);
  this[1] = 0;
  this[2] = 0;
  v4 = *(a2 + 2);
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = (v4 + 9);
    }

    re::ecs2::EntityHandle::setString(this, v5, *v4);
  }

  else if (*a2)
  {
    WeakRetained = objc_loadWeakRetained(a2);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = WeakRetained - 8;
    }

    else
    {
      v8 = 0;
    }

    re::ecs2::EntityHandle::reset(this);
    objc_storeWeak(this, v8 + 8);
    this[1] = *(v8 + 39);
    if (v7)
    {
    }
  }

  else
  {
    v10 = *(a2 + 1);
    re::ecs2::EntityHandle::reset(this);
    this[1] = v10;
  }

  return this;
}

re::DynamicString *re::ecs2::EntityHandle::setString(re::ecs2::EntityHandle *this, const char *a2, re::Allocator *a3)
{
  re::ecs2::EntityHandle::reset(this);
  v6 = (*(*a3 + 32))(a3, 32, 8);
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *v6 = a3;
  *(v6 + 1) = 0;
  re::DynamicString::setCapacity(v6, 0);
  *(this + 2) = v6;
  v8[0] = a2;
  v8[1] = strlen(a2);
  return re::DynamicString::operator=(v6, v8);
}

re::ecs2::EntityHandle *re::ecs2::EntityHandle::operator=(re::ecs2::EntityHandle *this, id *location)
{
  v3 = location[2];
  if (v3)
  {
    if (v3[8])
    {
      v4 = *(v3 + 2);
    }

    else
    {
      v4 = v3 + 9;
    }

    re::ecs2::EntityHandle::setString(this, v4, *v3);
  }

  else if (*location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained - 8;
    }

    else
    {
      v7 = 0;
    }

    re::ecs2::EntityHandle::reset(this);
    objc_storeWeak(this, v7 + 8);
    *(this + 1) = *(v7 + 39);
    if (v6)
    {
    }
  }

  else
  {
    v9 = location[1];
    re::ecs2::EntityHandle::reset(this);
    *(this + 1) = v9;
  }

  return this;
}

re::ecs2::EntityHandle *re::ecs2::EntityHandle::operator=(re::ecs2::EntityHandle *a1, uint64_t a2)
{
  re::ecs2::EntityHandle::reset(a1);
  if (a2)
  {
    objc_storeWeak(a1, (a2 + 8));
    *(a1 + 1) = *(a2 + 312);
  }

  else
  {
    objc_destroyWeak(a1);
    *a1 = 0;
  }

  return a1;
}

id *re::ecs2::EntityHandle::operator=(id *from, uint64_t a2)
{
  v5 = from[1];
  v4 = from[2];
  v6 = *(a2 + 16);
  from[1] = *(a2 + 8);
  from[2] = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  to = 0;
  objc_moveWeak(&to, from);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(from, a2);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2, &to);
  objc_destroyWeak(&to);
  return from;
}

BOOL re::ecs2::EntityHandle::isNull(id *this)
{
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained)
  {

    return 0;
  }

  if (this[1])
  {
    return 0;
  }

  v4 = this[2];
  if (!v4)
  {
    return 1;
  }

  if (v4[8])
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = (v4 + 9);
  }

  return *v5 == 0;
}

char *re::ecs2::EntityHandle::resolve(id *location, uint64_t a2)
{
  if (*location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (!WeakRetained)
    {
      return 0;
    }

    v4 = WeakRetained - 8;

    return v4;
  }

  else
  {
    v5 = *(*a2 + 176);

    return v5(a2, location);
  }
}

{
  if (!*location)
  {
    v3 = (*(*a2 + 176))(a2, location);
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    re::ecs2::EntityHandle::reset(location);
    objc_storeWeak(location, (v4 + 8));
    location[1] = *(v4 + 312);
  }

  WeakRetained = objc_loadWeakRetained(location);
  if (!WeakRetained)
  {
    return 0;
  }

  v6 = WeakRetained - 8;

  return v6;
}

{
  if (!*location)
  {
    if (!a2)
    {
      return 0;
    }

    v9 = location[1];
    v6 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 152, &v9);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v7 = *(a2 + 104);
      if (*(v7 + 312) != v9)
      {
        return 0;
      }
    }

    re::ecs2::EntityHandle::reset(location);
    objc_storeWeak(location, (v7 + 8));
    location[1] = *(v7 + 312);
  }

  WeakRetained = objc_loadWeakRetained(location);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained - 8;

  return v4;
}

char *re::ecs2::EntityHandle::resolve(uint64_t a1, char *a2)
{
  if (*a1)
  {
    WeakRetained = objc_loadWeakRetained(a1);
    if (WeakRetained)
    {
      v3 = WeakRetained - 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = a2;
    if (a2)
    {
      v6 = *(a1 + 8);
      v4 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a2 + 152), &v6);
      if (v4)
      {
        return *(v4 + 8);
      }

      else if (*(*(v3 + 13) + 312) == v6)
      {
        return *(v3 + 13);
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

char *re::ecs2::EntityHandle::resolve(id *this, const re::ecs2::Entity *a2)
{
  if (*this)
  {
    WeakRetained = objc_loadWeakRetained(this);
    if (WeakRetained)
    {
      v3 = WeakRetained - 8;

      return v3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 4);
  }

  while (a2);
  v5 = *(v4 + 3);

  return re::ecs2::EntityHandle::resolve(this, v5);
}

{
  if (*this)
  {
    WeakRetained = objc_loadWeakRetained(this);
    if (WeakRetained)
    {
      v3 = WeakRetained - 8;

      return v3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  do
  {
    v4 = a2;
    a2 = *(a2 + 4);
  }

  while (a2);
  v5 = *(v4 + 3);

  return re::ecs2::EntityHandle::resolve(this, v5);
}

uint64_t *re::ecs2::introspect_EntityHandle(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1B6620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6620))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B6628, "EntityHandle", 24, 8, 0, 0);
    qword_1EE1B6628 = &unk_1F5D0C698;
    qword_1EE1B6668 = re::internal::defaultConstruct<re::ecs2::EntityHandle>;
    qword_1EE1B6670 = re::internal::entityHandleSerialize;
    qword_1EE1B6678 = re::internal::entityHandleDeserialize;
    qword_1EE1B6688 = 0;
    unk_1EE1B6690 = 0;
    qword_1EE1B6680 = re::internal::entityHandleDeepCopy;
    dword_1EE1B6638 = 11;
    __cxa_guard_release(&qword_1EE1B6620);
  }

  if (v2)
  {
    if (_MergedGlobals_411)
    {
      return &qword_1EE1B6628;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_411;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE1B6628;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_411)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE1B6628;
    }
  }

  _MergedGlobals_411 = 1;
  re::IntrospectionRegistry::add(&qword_1EE1B6628, a2);
  v9[0] = 0x334032F84381B816;
  v9[1] = "EntityHandle";
  xmmword_1EE1B6648 = v10;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &qword_1EE1B6628;
}

void re::internal::defaultConstruct<re::ecs2::EntityHandle>(int a1, int a2, id *location)
{
  objc_initWeak(location, 0);
  location[1] = 0;
  location[2] = 0;

  re::ecs2::EntityHandle::reset(location);
}

void re::internal::defaultConstructV2<re::ecs2::EntityHandle>(uint64_t a1)
{
  objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;

  re::ecs2::EntityHandle::reset(a1);
}

void re::internal::defaultDestructV2<re::ecs2::EntityHandle>(re::ecs2::EntityHandle *a1)
{
  re::ecs2::EntityHandle::reset(a1);
  objc_destroyWeak(a1);
  *a1 = 0;
}

uint64_t *re::ecsCoreLogObjects(re *this)
{
  {
    re::ecsCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "ECS.Core");
  }

  return &re::ecsCoreLogObjects(void)::logObjects;
}

re::ecs2::HandleTable *re::ecs2::HandleTable::HandleTable(re::ecs2::HandleTable *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0x7FFFFFFFLL;
  *(this + 16) = 0;
  v3[0] = 0;
  v3[1] = -1;
  re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::add(this, v3);
  if (v3[0])
  {
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 16 * v4);
  v6 = a2[1];
  *v5 = *a2;
  *a2 = 0;
  v5[1] = v6;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

unint64_t re::ecs2::HandleTable::getSlot(re::ecs2::HandleTable *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 4) + 16 * a2;
}

unint64_t re::ecs2::HandleTable::handleIndexAndGeneration(re::ecs2::HandleTable *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v27, this + 80, a2, v4 ^ (v4 >> 31));
  if (HIDWORD(v27) == 0x7FFFFFFF)
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = *(*(this + 9) + 8 * v5 - 8);
      *(this + 7) = v5 - 1;
      ++*(this + 16);
    }

    else
    {
      v6 = *(this + 2);
      v27 = 0uLL;
      re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::add(this, &v27);
      if (v27)
      {
      }
    }
  }

  else
  {
    v6 = *(*(this + 12) + 32 * HIDWORD(v27) + 16);
  }

  v7 = *(this + 2);
  if (v7 <= v6)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v8 = (*(this + 4) + 16 * v6);
  v9 = *v8;
  if (*v8 != a2)
  {
    if (a2)
    {
      v10 = (a2 + 8);
      v9 = *v8;
    }

    if (v9)
    {
    }

    *v8 = a2;
    v7 = *(this + 2);
  }

  if (v7 <= v6)
  {
LABEL_20:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  return v6;
}

void *re::ecs2::HandleTable::garbageCollectIncremental(void *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = this[16];
  v2 = this[2];
  if (v2 <= v1)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = v1;
    v24 = 2048;
    v25 = v2;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  v3 = this;
  v4 = (this[4] + 16 * v1);
  if (*v4)
  {
    this = objc_isUniquelyReferenced();
    if (this)
    {
      v5 = *v4;
      v6 = 0xBF58476D1CE4E5B9 * (*v4 ^ (*v4 >> 30));
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v26, (v3 + 10), *v4, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
      v7 = HIDWORD(v26);
      if (HIDWORD(v26) != 0x7FFFFFFF)
      {
        v8 = v3[12];
        v9 = (v8 + 32 * HIDWORD(v26));
        v10 = *v9 & 0x7FFFFFFF;
        if (v27 == 0x7FFFFFFF)
        {
          *(v3[11] + 4 * DWORD2(v26)) = v10;
        }

        else
        {
          *(v8 + 32 * v27) = *(v8 + 32 * v27) & 0x80000000 | v10;
        }

        *v9 = *(v3 + 29);
        --*(v3 + 27);
        v11 = *(v3 + 30) + 1;
        *(v3 + 29) = v7;
        *(v3 + 30) = v11;
      }

      ++v4[1];
      if (v5)
      {

        *v4 = 0;
      }

      *&v26 = v3[16];
      this = re::DynamicArray<re::TransitionCondition *>::add((v3 + 5), &v26);
    }
  }

  v12 = v3[16];
  if ((v12 + 1) < v3[2])
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 0;
  }

  v3[16] = v13;
  return this;
}

re::ecs2::HandleTable *re::ecs2::HandleTable::init(re::ecs2::HandleTable *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 136, 8);
  result = re::ecs2::HandleTable::HandleTable(v2);
  re::ecs2::HandleTable::m_instance = result;
  return result;
}

re *re::internal::destroyPersistent<re::ecs2::HandleTable>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((a3 + 80));
    re::DynamicArray<unsigned long>::deinit(a3 + 40);
    re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = v12[1];
          *v11 = *v12;
          *v12 = 0;
          v12 += 2;
          v11[1] = v13;
          v11 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 16;
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::ecs2::ComponentBucketsBase::init(re::ecs2::ComponentBucketsBase *this, re::Allocator *a2)
{
  *this = a2;
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::init(this + 8, a2, 1uLL);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::init(this + 64, a2, 1uLL);
  v4 = re::BucketArray<unsigned long,8ul>::init(this + 120, a2, 1uLL);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 22, 0);
  ++*(this + 50);
  *(this + 55) = 8;
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::allocBlock((this + 176));
  v6 = this + 240;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v6, 0);
  ++*(v6 + 6);
  *(v6 + 11) = 8;

  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::allocBlock(v6);
}

_anonymous_namespace_ *re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::ecs2::ComponentBucketsBase::deinit(re::ecs2::ComponentBucketsBase *this)
{
  re::BucketArray<unsigned long,8ul>::deinit(this + 120);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(this + 64);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(this + 8);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(this + 176);
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(this + 240);
  *this = 0;
  return result;
}

unint64_t re::ecs2::ComponentBucketsBase::componentHandle(re::ecs2::ComponentBucketsBase *this, unint64_t a2, re::ecs2::Component *a3)
{
  v3 = a2;
  v6 = a3;
  v4 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](this + 64, a2);
  if (!re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v4, &v6))
  {
    return -1;
  }

  return v3;
}

uint64_t re::ecs2::ComponentBucketsBase::addBucket(re::ecs2::ComponentBucketsBase *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = *re::BucketArray<unsigned long,8ul>::operator[](this + 120, v2 - 1);
    re::BucketArray<unsigned long,8ul>::operator[](this + 120, *(this + 20) - 1);
    --*(this + 20);
    ++*(this + 42);
    return v3;
  }

  v4 = re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::addUninitialized(this + 8);
  *v4 = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 52) = 0x1FFFFFFFFLL;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](this + 8, v6 - 1);
    *v7 = *this;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v7, 0);
    ++*(v7 + 24);
    *(v7 + 44) = 32;
    re::DataArray<re::ecs2::Component *>::allocBlock(v7);
    v8 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::addUninitialized(this + 64);
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 0u;
    *(v8 + 36) = 0x7FFFFFFF;
    v10 = *(this + 13);
    if (v10)
    {
      v11 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](this + 64, v10 - 1);
      re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::init(v11, *this, 3);
      return *(this + 6) - 1;
    }
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
  result = _os_crash("assertion failure: (m_size > 0) Array is empty");
  __break(1u);
  return result;
}

void re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_12, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void *re::ecs2::ComponentBucketsBase::removeBucket(re::ecs2::ComponentBucketsBase *this, unint64_t a2)
{
  v4 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](this + 8, a2);
  re::DataArray<re::ecs2::Component *>::clear(v4);
  v5 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](this + 64, a2);
  re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::clear(v5);
  result = re::BucketArray<unsigned long,8ul>::addUninitialized(this + 120);
  *result = a2;
  return result;
}

void re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_46, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

unint64_t re::ecs2::ComponentBucketsBase::addComponent(re::ecs2::ComponentBucketsBase *this, unint64_t a2, unint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](this + 64, a2);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v6, &v46, v7 ^ (v7 >> 31), &v55);
  if (HIDWORD(v55) == 0x7FFFFFFF)
  {
    v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](this + 8, a2);
    v10 = v8;
    v11 = *(v8 + 56);
    if ((v11 + 1) >> 24)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    *(v8 + 56) = v12;
    v13 = *(v8 + 52);
    v14 = *(v8 + 54);
    if (v13 == 0xFFFF && v14 == 0xFFFF)
    {
      if (*(v8 + 48) >= *(v8 + 44))
      {
        re::DataArray<re::ecs2::Component *>::allocBlock(v8);
      }

      v15 = *(v10 + 16);
      v14 = (v15 - 1);
      if (!v15)
      {
        goto LABEL_33;
      }

      v13 = *(v10 + 48);
      if (v13 >= 0x10000)
      {
        goto LABEL_37;
      }

      v16 = (*(v10 + 32) + 16 * v14);
      *(v10 + 48) = v13 + 1;
      v17 = *(v10 + 56);
      *(v16[1] + 4 * v13) = v17;
      v18 = (*v16 + 8 * v13);
    }

    else
    {
      v19 = *(v8 + 16);
      if (v19 <= v14)
      {
LABEL_29:
        v44 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        v49 = 1024;
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        v50 = 789;
        v51 = 2048;
        v52 = v14;
        v53 = 2048;
        v54 = v19;
        _os_log_send_and_compose_impl(v37, &v44, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v42, v43);
        _os_crash_msg();
        __break(1u);
LABEL_33:
        v44 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v48 = 136315906;
        *&v48[4] = "operator[]";
        v49 = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v50 = 789;
        v51 = 2048;
        v52 = v14;
        v53 = 2048;
        v54 = 0;
        _os_log_send_and_compose_impl(v40, &v44, &v55, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v42, v43);
        _os_crash_msg();
        __break(1u);
LABEL_37:
        re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v13);
        _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v41);
        __break(1u);
      }

      v20 = (*(v8 + 32) + 16 * v14);
      *(v20[1] + 4 * v13) = v12;
      v18 = (*v20 + 8 * v13);
      *(v8 + 52) = *v18;
      v17 = *(v8 + 56);
    }

    ++*(v10 + 40);
    *v18 = v46;
    v21 = v13 + (v14 << 16) + ((v17 & 0xFFFFFF) << 32);
    v22 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](this + 64, a2);
    v55 = 0uLL;
    *&v56 = 0;
    v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v22, &v46, v23 ^ (v23 >> 31), &v55);
    if (HIDWORD(v55) == 0x7FFFFFFF)
    {
      v24 = re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::allocEntry(v22, DWORD2(v55), v55);
      *(v24 + 8) = v46;
      *(v24 + 16) = v21;
      ++*(v22 + 40);
    }

    v14 = this + 176;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v55, this + 176, 0);
    v25 = v55;
    v44 = v55;
    v45 = DWORD2(v55);
    v26 = WORD4(v55);
    v27 = HIWORD(DWORD2(v55));
    if ((this + 176) != v55 || WORD4(v55) != 0xFFFF || v27 != 0xFFFF)
    {
      while (1)
      {
        v19 = v27;
        v28 = *(v25 + 2);
        if (v28 <= v27)
        {
          break;
        }

        v29 = *(*(v25 + 4) + 16 * v27);
        *&v55 = a2;
        *(&v55 + 1) = v21;
        *v48 = this;
        v30 = *(v29 + 40 * v26 + 32);
        (*(*v30 + 16))(v30, v48, &v55);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v44);
        v25 = v44;
        v26 = v45;
        v27 = HIWORD(v45);
        if (v44 == v14 && v45 == 0xFFFF && HIWORD(v45) == 0xFFFF)
        {
          return a2;
        }
      }

      v47 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v48 = 136315906;
      *&v48[4] = "operator[]";
      v49 = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = v19;
      v53 = 2048;
      v54 = v28;
      _os_log_send_and_compose_impl(v34, &v47, &v55, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
      goto LABEL_29;
    }
  }

  return a2;
}

uint64_t re::ecs2::ComponentBucketsBase::removeComponent(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = 0;
  v43 = *MEMORY[0x1E69E9840];
  if (a2 != -1 && (a3 & 0xFFFFFF00000000) != 0)
  {
    v7 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 8, a2);
    result = re::DataArray<re::ecs2::Component *>::tryGet(v7, a3);
    if (result)
    {
      v8 = result;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v38, a1 + 240, 0);
      v9 = v38;
      v28 = v38;
      v29 = DWORD2(v38);
      v10 = WORD4(v38);
      v11 = HIWORD(DWORD2(v38));
      if (a1 + 240 != v38 || WORD4(v38) != 0xFFFF || v11 != 0xFFFF)
      {
        do
        {
          v12 = v11;
          v13 = *(v9 + 16);
          if (v13 <= v11)
          {
            v30 = 0;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v31 = 136315906;
            *&v31[4] = "operator[]";
            v32 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v33 = 797;
            v34 = 2048;
            v35 = v12;
            v36 = 2048;
            v37 = v13;
            _os_log_send_and_compose_impl(v26, &v30, &v38, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v27, v28);
            _os_crash_msg();
            __break(1u);
          }

          v14 = *(*(v9 + 32) + 16 * v11);
          *&v38 = a2;
          *(&v38 + 1) = a3;
          *v31 = a1;
          v15 = *(v14 + 40 * v10 + 32);
          (*(*v15 + 16))(v15, v31, &v38);
          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v28);
          v9 = v28;
          v10 = v29;
          v11 = HIWORD(v29);
        }

        while (v28 != a1 + 240 || v29 != 0xFFFF || HIWORD(v29) != 0xFFFF);
      }

      v16 = *v8;
      *v31 = v16;
      v17 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 8, a2);
      re::DataArray<re::ecs2::Component *>::destroy(v17, a3);
      v18 = re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::operator[](a1 + 64, a2);
      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v18, v31, v19 ^ (v19 >> 31), &v38);
      v20 = HIDWORD(v38);
      if (HIDWORD(v38) != 0x7FFFFFFF)
      {
        v21 = *(v18 + 16);
        v22 = *(v21 + 32 * HIDWORD(v38)) & 0x7FFFFFFF;
        if (v39 == 0x7FFFFFFF)
        {
          *(*(v18 + 8) + 4 * DWORD2(v38)) = v22;
          v20 = HIDWORD(v38);
        }

        else
        {
          *(v21 + 32 * v39) = *(v21 + 32 * v39) & 0x80000000 | v22;
        }

        *(v21 + 32 * v20) = *(v18 + 36);
        --*(v18 + 28);
        v23 = *(v18 + 40) + 1;
        *(v18 + 36) = v20;
        *(v18 + 40) = v23;
      }

      return 1;
    }
  }

  return result;
}

unint64_t re::ecs2::ComponentBucketsBase::moveComponent(re::ecs2::ComponentBucketsBase *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2;
  if (a2 != -1 && a2 != a4 && (a3 & 0xFFFFFF00000000) != 0)
  {
    v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1 + 8, a2);
    v9 = re::DataArray<re::ecs2::Component *>::tryGet(v8, a3);
    if (v9)
    {
      v10 = *v9;
      re::ecs2::ComponentBucketsBase::removeComponent(a1, v5, a3);
      return re::ecs2::ComponentBucketsBase::addComponent(a1, a4, v10);
    }

    else
    {
      return -1;
    }
  }

  return v5;
}

re::ecs2::ComponentBucketsBase *re::ecs2::ComponentBucketsBase::removeComponentFromAllBuckets(re::ecs2::ComponentBucketsBase *this, re::ecs2::Component *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      v6 = re::ecs2::ComponentBucketsBase::componentHandle(v4, i, a2);
      this = re::ecs2::ComponentBucketsBase::removeComponent(v4, v6, v7);
    }
  }

  return this;
}

_anonymous_namespace_ *re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 512, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 384, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

void re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 40 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 3;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + ((v2 & 7) << 6);
}

void re::DataArray<re::ecs2::Component *>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 8 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 3;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 48 * (v2 & 7);
}

uint64_t re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          *&v25[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v13 = *&v25[32];
          *(a1 + 24) = v14;
          ++*&v25[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v25[16] + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>::allocEntry(a1, *(*&v25[16] + v16 + 24) % *(a1 + 24), *(*&v25[16] + v16 + 24));
                *(v18 + 8) = *(*&v25[16] + v16 + 8);
                *(v18 + 16) = *(*&v25[16] + v16 + 16);
                v15 = *&v25[32];
              }

              ++v17;
              v16 += 32;
            }

            while (v17 < v15);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void *re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(void *a1)
{
  *a1 = &unk_1F5D011D8;
  v2 = a1 + 1;
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((a1 + 1));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  return a1;
}

void re::ecs2::EntityChildCollection::~EntityChildCollection(re::ecs2::EntityChildCollection *this)
{
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::ecs2::EntityChildCollection::remove(re *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 392) == -1 || *(v2 + 32) != *(a1 + 6))
  {
    return 0;
  }

  v10 = *a2;
  v6 = (v2 + 8);
  re::ecs2::EntityChildCollection::willRemoveAt(a1, v7, &v10);
  v8 = v10;
  v9 = *(v10 + 392);
  v4 = v9 != -1;
  if (v9 == -1 || (re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::removeAt(a1 + 8, *(v10 + 392)), re::ecs2::EntityChildCollection::didRemoveAt(a1, v9, &v10), (v8 = v10) != 0))
  {
  }

  return v4;
}

void re::ecs2::EntityChildCollection::willRemoveAt(re *a1, int a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*a3 + 387) == 1)
  {
    v5 = *re::ecsCoreLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a3;
      v7 = *(*a3 + 296);
      v11 = 136315394;
      v12 = v7;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Unparenting '%s' (%p) a second time during an unparent operation", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 6);
  if (v8[47] && v8[2])
  {
    realitykit_willModifyChildren((v8 + 2), (v8 + 47));
    v8 = *(a1 + 6);
  }

  do
  {
    v9 = v8;
    v8 = v8[4];
  }

  while (v8);
  v10 = v9[3];
  if (v10)
  {
    re::ScratchDynamicArray<re::SharedPtr<re::ecs2::Entity>>::ScratchDynamicArray(&v11, a3);
    re::ecs2::Scene::removeFromAllEntities(v10, &v11);
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v11);
  }

  if (*(*a3 + 32))
  {
    re::ecs2::EntityChildCollection::setEntityParentDirectly(a1, a3, 0);
  }
}

void *re::ecs2::EntityChildCollection::didRemoveAt(void *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  *(*a3 + 392) = -1;
  if (result[3] > a2)
  {
    v4 = a2;
    result = re::ecs2::EntityComponentCollection::operator[](result, a2);
    v5 = v3[3];
    if (*(*result + 392) == v5)
    {
      result = re::ecs2::EntityComponentCollection::operator[](v3, v4);
      *(*result + 392) = v4;
    }

    else if (v5 > v4)
    {
      do
      {
        result = re::ecs2::EntityComponentCollection::operator[](v3, v4);
        *(*result + 392) = v4++;
      }

      while (v4 < v3[3]);
    }
  }

  v6 = v3[6];
  if (*(v6 + 376))
  {
    result = (v6 + 16);
    if (*(v6 + 16))
    {

      return realitykit_didModifyChildren(result, v6 + 376);
    }
  }

  return result;
}

re::ecs2::Entity *re::ecs2::EntityChildCollection::add(re::ecs2::EntityChildCollection *this)
{
  v2 = re::ecs2::EntityFactory::instance(this);
  re::ecs2::EntityFactory::make(&v5, v2, 4uLL);
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(this, &v5);
  v3 = v5;
  if (v5)
  {
  }

  return v3;
}

re::ecs2::Entity *re::ecs2::EntityChildCollection::getOrAdd(re::ecs2::EntityChildCollection *this, const re::StringID *a2)
{
  v4 = *(this + 3);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(this + 5);
  v6 = 8 * v4;
  while (1)
  {
    v7 = *v5;
    if (re::StringID::operator==(*v5 + 36, a2))
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
LABEL_7:
    v7 = re::ecs2::EntityChildCollection::add(this);
    re::StringID::operator=(v7 + 36, a2);
  }

  return v7;
}

void re::ecs2::EntityChildCollection::willClear(re::ecs2::EntityChildCollection *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  v4 = *(v3 + 24);
  if (v4)
  {
    re::ecs2::Scene::removeFromAllEntities(v4, this + 8);
  }

  if (*(this + 3))
  {
    v5 = 0;
    do
    {
      *(*re::ecs2::EntityComponentCollection::operator[](this, v5) + 392) = -1;
      v6 = re::ecs2::EntityComponentCollection::operator[](this, v5);
      re::ecs2::EntityChildCollection::setEntityParentDirectly(this, v6, 0);
      ++v5;
    }

    while (v5 < *(this + 3));
  }
}

void re::ecs2::EntityChildCollection::setEntityParentDirectly(uint64_t result, uint64_t *a2, re::ecs2::ECSHelper *this)
{
  v6 = *a2;
  if (v6 == this)
  {
    re::internal::assertLog(5, v6, "assertion failure: '%s' (%s:line %i) Cannot parent entity %s to itself.", "newParent != child", "setEntityParentDirectly", 294, *(v6 + 296));
    _os_crash("assertion failure: (newParent != child) Cannot parent entity %s to itself.", v25);
    __break(1u);
    goto LABEL_37;
  }

  v3 = this;
  if (*(v6 + 32) == this)
  {
    return;
  }

  isDescendant = re::ecs2::ECSHelper::isDescendant(this, v6, this);
  v4 = *a2;
  if (isDescendant)
  {
LABEL_37:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Cannot parent entities. The child %s is already an ancestor of %s . This would create a loop.", "!ECSHelper::isDescendant(newParent, child)", "setEntityParentDirectly", 304, *(v4 + 296), *(v3 + 37));
    _os_crash("assertion failure: (!ECSHelper::isDescendant(newParent, child)) Cannot parent entities. The child %s is already an ancestor of %s . This would create a loop.", v26, v27);
    __break(1u);
    return;
  }

  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  v11 = *(result + 48);
  if ((*(v11 + 304) & 0x80) != 0)
  {
    if (v3)
    {
      do
      {
        v15 = v11;
        v11 = *(v11 + 32);
      }

      while (v11);
      v16 = *(v15 + 24);
      if (*(v4 + 24))
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 == 0;
      }

      if (!v17)
      {
        v18 = *(v4 + 144);
        if (v18 && (v18[176] != 1 || (v18[177] & 1) != 0))
        {
          if (v18[178])
          {
            v19 = 0;
          }

          else
          {
            v19 = 32;
          }

          v20 = *(v4 + 304) & 0xFFFFFFDF | v19;
        }

        else
        {
          v20 = *(v4 + 304) & 0xFFFFFFDF;
        }

        *(v4 + 304) = v20;
        re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(v4);
        v4 = *a2;
      }
    }

    else
    {
      v16 = 0;
    }

    *(v4 + 24) = v16;
    v21 = v4;
    do
    {
      v22 = v21;
      v21 = *(v21 + 32);
    }

    while (v21);
    v23 = *(v22 + 24);
    if (v23)
    {
      LOBYTE(v23) = *(v23 + 48);
    }

    re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(v4, v23 & 1);
  }

  else
  {
    v12 = v4;
    do
    {
      v13 = v12;
      v12 = *(v12 + 32);
    }

    while (v12);
    v14 = *(v13 + 24);
    if (v14)
    {
      LOBYTE(v14) = *(v14 + 48);
    }

    re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(v4, v14 & 1);
    re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(v4);
    re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(v4);
  }

  re::ecs2::Entity::updateIsActive_Subtree(v4);
  if ((v3 != 0) == (v10 == 0))
  {
    v24 = *a2;

    re::ecs2::Entity::updateSwiftObjectOwnership(v24);
  }
}

void re::ecs2::EntityChildCollection::willInsert(uint64_t a1, uint64_t a2, re::ecs2::Entity **a3)
{
  v5 = *(a1 + 48);
  v6 = v5;
  do
  {
    v7 = v6;
    v6 = *(v6 + 32);
  }

  while (v6);
  v8 = *(v7 + 24);
  if (*(v5 + 387))
  {
    goto LABEL_4;
  }

  if ((*(v5 + 304) & 0x80) == 0 && v8)
  {
    if (!*(v8 + 152) || (v15 = *(v5 + 312), v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27)), v17 = *(*(v8 + 160) + 4 * ((v16 ^ (v16 >> 31)) % *(v8 + 176))), v17 == 0x7FFFFFFF))
    {
LABEL_4:
      __CALLER_IS_PARENTING_AN_ENTITY_TO_AN_ENTITY_BEING_REMOVED__(v5, *a3);
      goto LABEL_5;
    }

    v18 = *(v8 + 168);
    while (*(v18 + 40 * v17 + 8) != v15)
    {
      v17 = *(v18 + 40 * v17) & 0x7FFFFFFF;
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  v9 = *a3;
  v10 = *a3;
  do
  {
    v11 = v10;
    v10 = *(v10 + 32);
  }

  while (v10);
  v12 = *(v11 + 24);
  if (v12)
  {
    v13 = v12 == v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    *(v8 + 304) = 1;
    *(v8 + 312) = *(v9 + 32);
    v19 = *(v9 + 304);
    *(v8 + 320) = v19 & 1;
    if ((v19 & 1) != 0 && (*(*(a1 + 48) + 304) & 0x81) == 0)
    {
      re::ecs2::Entity::sendDeactivateEvents(v9, v8);
      v9 = *a3;
      if (!*a3)
      {
        goto LABEL_12;
      }
    }

LABEL_24:
    v20 = (v9 + 8);
    v14 = 0;
    goto LABEL_25;
  }

  if (v9)
  {
    goto LABEL_24;
  }

LABEL_12:
  v14 = 1;
LABEL_25:
  v21 = *(a1 + 48);
  if (*(v21 + 376) && *(v21 + 16))
  {
    realitykit_willModifyChildren(v21 + 16, v21 + 376);
  }

  if (*(*a3 + 4))
  {
    re::ecs2::Entity::setParentInternal(*a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  re::ecs2::EntityChildCollection::setEntityParentDirectly(a1, a3, *(a1 + 48));
  if (v8)
  {
    re::ScratchDynamicArray<re::SharedPtr<re::ecs2::Entity>>::ScratchDynamicArray(v22, a3);
    if ((*(v8 + 304) & 1) == 0)
    {
      re::ecs2::Scene::addToAllEntitiesRecursively(v8, v22);
    }

    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v22);
  }

  if ((v14 & 1) == 0)
  {
  }
}

uint64_t re::ScratchDynamicArray<re::SharedPtr<re::ecs2::Entity>>::ScratchDynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, 1uLL);
  ++*(a1 + 24);
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(a1, a2);
  return a1;
}

void re::ecs2::EntityChildCollection::willSet(re *a1, unint64_t a2, re::ecs2::Entity **a3)
{
  if (*(*a3 + 4) == *(a1 + 6))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Entity is already part of this collection.", "child->parentIncludingSceneEntity() != m_parent", "willSet", 222);
    _os_crash("assertion failure: (child->parentIncludingSceneEntity() != m_parent) Entity is already part of this collection.");
    __break(1u);
  }

  else
  {
    v5 = re::ecs2::EntityComponentCollection::operator[](a1, a2);
    re::ecs2::EntityChildCollection::willRemoveAt(a1, v6, v5);

    re::ecs2::EntityChildCollection::willInsert(a1, v7, a3);
  }
}

void re::ecs2::EntityChildCollection::didInsert(uint64_t a1, unint64_t a2, size_t *a3)
{
  *(*re::ecs2::EntityComponentCollection::operator[](a1, a2) + 392) = a2;
  v6 = a2 + 1;
  if (v6 < *(a1 + 24) && *(*re::ecs2::EntityComponentCollection::operator[](a1, v6) + 392) != v6)
  {
    while (v6 < *(a1 + 24))
    {
      *(*re::ecs2::EntityComponentCollection::operator[](a1, v6) + 392) = v6;
      ++v6;
    }
  }

  v7 = *(a1 + 48);
  do
  {
    v8 = v7;
    v7 = *(v7 + 32);
  }

  while (v7);
  v9 = *(v8 + 24);
  if (v9)
  {
    if (*(v9 + 304) == 1)
    {
      *(v9 + 304) = 0;
      v10 = *(v9 + 312);
      if (*(v9 + 320) != (*(*a3 + 304) & 1))
      {
        re::ecs2::Entity::onActivationChanged(*a3, v9);
        if (*(*a3 + 304))
        {
          re::ecs2::Entity::sendActivateEvents(*a3, v9);
        }
      }

      v11 = *(v9 + 288);
      if (v11)
      {
        v12 = *a3;
        v15[0] = v10;
        v15[1] = v12;
        Type = re::EventBus::getTypeId<RESceneEntityDidReparentEvent>();
        re::EventBus::publish(v11, v12, Type, v15, 0x10uLL, 0);
      }

      *(v9 + 312) = 0;
      *(v9 + 320) = 0;
    }

    else
    {
      re::ScratchDynamicArray<re::SharedPtr<re::ecs2::Entity>>::ScratchDynamicArray(v15, a3);
      re::ecs2::Scene::sendAddAndActivateEvents(v9, v15);
      re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v15);
    }

    v14 = *(a1 + 48);
    if (*(v14 + 376))
    {
      if (*(v14 + 16))
      {
        realitykit_didModifyChildren(v14 + 16, v14 + 376);
      }
    }
  }
}

void re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(void *a1)
{
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::EntityComponentCollection *re::ecs2::EntityComponentCollection::EntityComponentCollection(re::ecs2::EntityComponentCollection *this, re::ecs2::Entity *a2, unint64_t a3)
{
  *this = a2;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 1, a3);
  ++*(this + 8);
  *(this + 12) = 0;
  *(this + 26) = 16;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(this + 4) = v5;
  *(this + 7) = this + 64;
  *(this + 5) = v5;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  return this;
}

uint64_t re::ecs2::EntityComponentCollection::add(re::ecs2::EntityComponentCollection *this, const re::ecs2::ComponentTypeBase *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 25);
  if (!*(this + 25))
  {
    goto LABEL_10;
  }

  v5 = (a2 + 16);
  v6 = *(this + 7);
  v7 = vld1q_dup_s16(v5);
  v8 = 1;
  while (1)
  {
    v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
    v9.i16[0] = vmaxvq_u16(v9);
    if (v9.i32[0])
    {
      break;
    }

    v8 -= 8;
    ++v6;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  if (v9.u16[0] - v8 < *(this + 24))
  {
    v10 = *re::ecsCoreLogObjects(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*this + 296);
      v12 = *(a2 + 4);
      *buf = 136315394;
      *&buf[4] = v11;
      v18 = 2080;
      v19 = v12;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Entity '%s' already contains a component of type '%s' - ignoring new one.", buf, 0x16u);
    }

    return 0;
  }

  else
  {
LABEL_10:
    (*(*a2 + 32))(buf, a2);
    v16 = *buf;
    if (*buf)
    {
      v14 = (*buf + 8);
    }

    re::ecs2::EntityComponentCollection::add(this, &v16, 1);
    if (v16)
    {

      v16 = 0;
    }

    v13 = *buf;
    if (*buf)
    {
    }
  }

  return v13;
}

double re::ecs2::EntityComponentCollection::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  re::ecs2::EntityComponentCollection::willAdd(a1, a2);
  *(*a2 + 16) = *a1;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((a1 + 8), a2);
  v6 = *((*(**a2 + 40))() + 16);
  re::ecs2::PackedTypeIDs::ensureCapacity((a1 + 48), *(a1 + 48) + 1);
  *(*(a1 + 56) + 2 * *(a1 + 48)) = v6;
  v7 = *(a1 + 48) + 1;
  *(a1 + 48) = v7;
  *(a1 + 50) = (v7 + 7) >> 3;
  v8 = (*(**a2 + 32))();
  if (v8 != -1)
  {
    *(a1 + 8 * v8 + 96) = *a2;
  }

  return re::ecs2::EntityComponentCollection::didAdd(a1, a2, v3);
}

void re::ecs2::EntityComponentCollection::willAdd(re::ecs2::Entity **a1, uint64_t *a2)
{
  v4 = (*(**a2 + 40))();
  if (v4 == re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    v9 = *a2;
    v10 = *a1;
    if (*(*a2 + 176) == 1 && *(v9 + 177) != 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v9 + 178) ^ 1;
    }

    re::ecs2::Entity::setSelfAnchored_Before(v10, v11 & 1);
  }

  else if (v4 == re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType && *(*a2 + 448) == 1)
  {
    v5 = *a1;
    if ((*(*a1 + 76) & 0x131) == 0x11)
    {
      v6 = *a1;
      do
      {
        v7 = v6;
        v6 = *(v6 + 4);
      }

      while (v6);
      v8 = *(v7 + 3);

      re::ecs2::Entity::sendDeactivateEvents(v5, v8);
    }
  }
}

double re::ecs2::EntityComponentCollection::didAdd(re::ecs2::Entity **a1, re::ecs2::Component **a2, int a3)
{
  v6 = (*(**a2 + 40))();
  v8 = *a1;
  do
  {
    v9 = v8;
    v8 = *(v8 + 4);
  }

  while (v8);
  v10 = *(v9 + 3);
  if (v10 && (*(*a1 + 387) & 1) == 0)
  {
    v11 = re::ecs2::SceneComponentTable::get((v10 + 200), v6);
    re::ecs2::SceneComponentCollectionBase::add(v11, *a2);
  }

  if (v6 == re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    v13 = *a2;
    v14 = *a1;
    if (*(*a2 + 176) == 1 && *(v13 + 177) != 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v13 + 178) ^ 1;
    }

    if (a3)
    {
      v19 = v6;
    }

    else
    {
      v19 = 0;
    }

    return re::ecs2::Entity::setSelfAnchored_After(v14, v15 & 1, v19);
  }

  else if (v6 == re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    v16 = *a1;
    v17 = *(*a2 + 448);
    if (a3)
    {
      v18 = v6;
    }

    else
    {
      v18 = 0;
    }

    return re::ecs2::Entity::setSelfRequiresAnchoring_After(v16, v17, v18);
  }

  else if (v10)
  {
    if (a3)
    {
      v12 = *a1;
      if ((*(*a1 + 387) & 1) == 0)
      {

        re::ecs2::Scene::sendAddAndActivateComponentEvents(v10, v12, v6);
      }
    }
  }

  return result;
}

void re::ecs2::EntityComponentCollection::removeAt(re::ecs2::EntityComponentCollection *this, unint64_t a2)
{
  v2 = a2;
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3 <= a2)
  {
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v43 = 136315906;
    v44 = "operator[]";
    v45 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v46 = 789;
    v47 = 2048;
    v48 = v2;
    v49 = 2048;
    v50 = v3;
    _os_log_send_and_compose_impl(v37, &v42, &v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v5 = *(*(this + 5) + 8 * a2);
  if (v5)
  {
    v6 = v5 + 1;
  }

  v7 = *(this + 8);
  v8 = *this;
  do
  {
    v9 = v8;
    v8 = *(v8 + 32);
  }

  while (v8);
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = (*(*v5 + 40))(v5);
    v12 = v11;
    v13 = *this;
    if ((*(*this + 387) & 1) == 0)
    {
      if (*(v13 + 304))
      {
        if (v11 != re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType || (v14 = re::ecs2::Entity::setSelfAnchored_Before(*this, 0), v13 = *this, (v14 & 1) == 0))
        {
          v15 = *(v10 + 288);
          *&v51 = v13;
          *(&v51 + 1) = v12;
          Type = re::EventBus::getTypeId<REComponentWillDeactivateEvent>();
          re::EventBus::publish(v15, v13, Type, &v51, 0x10uLL, v12);
          v13 = *this;
        }
      }

      v17 = *(v10 + 288);
      *&v51 = v13;
      *(&v51 + 1) = v12;
      v18 = re::EventBus::getTypeId<REComponentWillRemoveEvent>();
      re::EventBus::publish(v17, v13, v18, &v51, 0x10uLL, v12);
    }

    v19 = re::ecs2::SceneComponentTable::get((v10 + 200), v12);
    re::ecs2::SceneComponentCollectionBase::remove(v19, v5);
    v3 = *(this + 3);
    if (*(this + 8) != v7)
    {
      v20 = *(this + 5);
      if (v3)
      {
        v21 = 8 * v3;
        v22 = *(this + 5);
        while (*v22 != v5)
        {
          ++v22;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v22 = *(this + 5);
      }

      if (v22 == (v20 + 8 * v3))
      {
LABEL_40:
        if (!v5)
        {
          return;
        }

        goto LABEL_41;
      }

      v2 = (v22 - v20) >> 3;
    }

    v7 = *(this + 8);
  }

  else
  {
    v3 = *(this + 3);
  }

  v5[2] = 0;
  if (v3 <= v2)
  {
LABEL_49:
    v42 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v43 = 136315906;
    v44 = "removeStableAt";
    v45 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v46 = 969;
    v47 = 2048;
    v48 = v2;
    v49 = 2048;
    v50 = v3;
    _os_log_send_and_compose_impl(v40, &v42, &v51, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v43, 38, v41);
    _os_crash_msg();
    __break(1u);
  }

  v23 = v3 - 1;
  v24 = *(this + 5);
  v25 = (v24 + 8 * v2);
  v26 = v25 + 1;
  if (v3 - 1 > v2 && v26 != (v24 + 8 * v3))
  {
    v28 = *v25;
    v29 = 8 * v3 - 8 * v2 - 8;
    do
    {
      *(v26 - 1) = *v26;
      *v26++ = v28;
      v29 -= 8;
    }

    while (v29);
    v24 = *(this + 5);
  }

  v30 = v24 + 8 * v3;
  v31 = *(v30 - 8);
  if (v31)
  {

    *(v30 - 8) = 0;
    v23 = *(this + 3) - 1;
    v7 = *(this + 8);
  }

  *(this + 3) = v23;
  *(this + 8) = v7 + 1;
  v32 = *(this + 7);
  memmove((v32 + 2 * v2), (v32 + 2 * v2 + 2), 2 * (*(this + 24) + ~v2));
  *(v32 + 2 * *(this + 24) - 2) = -1;
  v33 = *(this + 24) - 1;
  *(this + 24) = v33;
  *(this + 25) = (v33 + 7) >> 3;
  v34 = (*(*v5 + 32))(v5);
  if (v34 != -1)
  {
    *(this + v34 + 12) = 0;
  }

  v35 = (*(*v5 + 40))(v5);
  if (v35 == re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    re::ecs2::Entity::setSelfAnchored_After(*this, 0, 0);
  }

  else if (v35 == re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    re::ecs2::Entity::setSelfRequiresAnchoring_After(*this, 0, 0);
  }

LABEL_41:
}

void re::ecs2::EntityComponentCollection::remove(re::ecs2::EntityComponentCollection *this, re::ecs2::Component *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = 0;
    while (*(*(this + 5) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    re::ecs2::EntityComponentCollection::removeAt(this, v3);
  }
}

void re::ecs2::EntityComponentCollection::remove(re::ecs2::EntityComponentCollection *this, const re::ecs2::ComponentTypeBase *a2)
{
  v2 = *(this + 25);
  if (*(this + 25))
  {
    v3 = (a2 + 16);
    v4 = *(this + 7);
    v5 = vld1q_dup_s16(v3);
    for (i = 1; ; i -= 8)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      ++v4;
      if (!--v2)
      {
        return;
      }
    }

    v8 = v7.u16[0] - i;
    if (v8 < *(this + 24))
    {
      re::ecs2::EntityComponentCollection::removeAt(this, v8);
    }
  }
}

void re::ecs2::EntityComponentCollection::clear(uint64_t **this, uint64_t a2)
{
  re::ecs2::EntityComponentCollection::willClear(this, a2);
  v3 = this[3];
  if (v3)
  {
    v4 = this[5];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      *(v6 + 16) = 0;
      v5 -= 8;
    }

    while (v5);
  }

  if (*(this + 25))
  {
    v7 = 0;
    v8 = 16 * *(this + 25);
    *&v9 = -1;
    *(&v9 + 1) = -1;
    do
    {
      *&this[7][v7 / 8] = v9;
      v7 += 16;
    }

    while (v8 != v7);
  }

  *(this + 12) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  this[28] = 0;

  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((this + 1));
}

double re::ecs2::EntityComponentCollection::willClear(re::ecs2::EntityComponentCollection *this, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *this;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v5 + 288);
    if (v6)
    {
      v7 = 0;
      ++*(v6 + 12);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_8:
  v8 = *(this + 3);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      if (v8 <= i)
      {
        v21 = 0;
        memset(v30, 0, sizeof(v30));
        v18 = MEMORY[0x1E69E9C10];
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v25 = 789;
        v26 = 2048;
        v27 = i;
        v28 = 2048;
        v29 = v8;
        _os_log_send_and_compose_impl(v19, &v21, v30, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
        _os_crash_msg();
        __break(1u);
      }

      if (v5)
      {
        v10 = *(*(this + 5) + 8 * i);
        if (!v7)
        {
          v11 = (*(*v10 + 40))(v10, a2);
          v12 = v11;
          v13 = *this;
          if (*(*this + 304))
          {
            *&v30[0] = *this;
            *(&v30[0] + 1) = v11;
            re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v6, v13, v30, v11);
            v13 = *this;
          }

          *&v30[0] = v13;
          *(&v30[0] + 1) = v12;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillRemoveEvent,void>(v6, v13, v30, v12);
        }

        v14 = (*(*v10 + 40))(v10, a2);
        v15 = re::ecs2::SceneComponentTable::get((v5 + 200), v14);
        re::ecs2::SceneComponentCollectionBase::remove(v15, v10);
        v8 = *(this + 3);
      }
    }
  }

  if ((v7 & 1) == 0)
  {
    re::EventBus::endBatch(v6, a2);
  }

  v16 = *this;
  re::ecs2::Entity::setSelfAnchored_Before(v16, 0);
  return re::ecs2::Entity::setSelfAnchored_After(v16, 0, 0);
}

uint64_t re::ecs2::EntityComponentCollection::get(re::ecs2::EntityComponentCollection *this, const re::ecs2::ComponentTypeBase *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 25);
  if (!*(this + 25))
  {
    return 0;
  }

  v3 = (a2 + 16);
  v4 = *(this + 7);
  v5 = vld1q_dup_s16(v3);
  for (i = 1; ; i -= 8)
  {
    v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
    v7.i16[0] = vmaxvq_u16(v7);
    if (v7.i32[0])
    {
      break;
    }

    ++v4;
    if (!--v2)
    {
      return 0;
    }
  }

  v8 = v7.u16[0] - i;
  if (v8 >= *(this + 24))
  {
    return 0;
  }

  v9 = *(this + 3);
  if (v9 <= v8)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v11 = MEMORY[0x1E69E9C10];
    v12 = v7.u16[0] - i;
    v13 = v9;
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 797;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * v8);
}

uint64_t re::ecs2::EntityComponentCollection::getOrAdd(re::ecs2::EntityComponentCollection *this, const re::ecs2::ComponentTypeBase *a2)
{
  result = re::ecs2::EntityComponentCollection::get(this, a2);
  if (!result)
  {

    return re::ecs2::EntityComponentCollection::add(this, a2);
  }

  return result;
}

void re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<REComponentWillDeactivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 0x10uLL, a4);
  }
}

void re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillRemoveEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  v8 = re::EventBus::getEventInfo<REComponentWillRemoveEvent>(a1);
  if (v8)
  {

    re::EventBus::EventInfo::addToBatch(v8, a1, a2, a3, 0x10uLL, a4);
  }
}

uint64_t re::EventBus::getEventInfo<REComponentWillDeactivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REComponentWillDeactivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getEventInfo<REComponentWillRemoveEvent>(uint64_t a1)
{
  v4 = re::EventBus::getTypeId<REComponentWillRemoveEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &v4);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t *re::ecs2::EntityFactory::instance(re::ecs2::EntityFactory *this)
{
  {
    re::ecs2::EntityFactory::instance(void)::s_instance = 0;
    re::ecs2::EntityFactory::init(&re::ecs2::EntityFactory::instance(void)::s_instance, v2);
  }

  return &re::ecs2::EntityFactory::instance(void)::s_instance;
}

re::PageDebugAllocator *re::ecs2::EntityFactory::init(re::PageDebugAllocator *this, const char *a2)
{
  if (!*this)
  {
    *&v13[9] = v2;
    *&v13[13] = v3;
    v4 = this;
    re::Defaults::BOOLValue(v13, "enableEntityDebugAllocator", a2);
    if (LOBYTE(v13[0]) == 1 && (v13[0] & 0x100) != 0)
    {
      v6 = *re::ecsCoreLogObjects(v5);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        *v12 = 0;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "enableEntityDebugAllocator = true: Using PageDebugAllocator", v12, 2u);
      }

      v8 = re::globalAllocators(v7);
      v9 = (*(*v8[2] + 32))(v8[2], 72, 8);
      this = re::PageDebugAllocator::PageDebugAllocator(v9, "Entity", 1, 0x400uLL);
    }

    else
    {
      v10 = re::globalAllocators(v5);
      v11 = (*(*v10[2] + 32))(v10[2], 24, 8);
      this = re::Allocator::Allocator(v11, "Entity", 1);
      *this = &unk_1F5CCF7F8;
    }

    *v4 = this;
  }

  return this;
}

re *re::ecs2::EntityFactory::deinit(re *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    (**v1)(v1);
    this = (*(*v3 + 40))(v3, v1);
    *v2 = 0;
  }

  return this;
}

re::ecs2::Entity *re::ecs2::EntityFactory::make@<X0>(re::ecs2::Entity **__return_ptr a1@<X8>, re::ecs2::EntityFactory *this@<X0>, unint64_t a3@<X1>)
{
  v5 = (*(**this + 32))(*this, 400, 0);
  uuid_generate_random(v7);
  result = re::ecs2::Entity::Entity(v5, (v7[1] + (v7[0] << 6) + (v7[0] >> 2) - 0x61C8864680B583E9) ^ v7[0], a3);
  *a1 = v5;
  return result;
}

uint64_t re::DataArray<re::SharedPtr<re::ecs2::System>>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::SharedPtr<re::ecs2::System>>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

unint64_t re::ecs2::SystemRegistry::registerSystem(re::ecs2::SystemRegistry *this, const re::TypeInfo *a2)
{
  v4 = **(a2 + 2);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::tryGet(this + 64, v8);
  if (v5)
  {
    return *v5;
  }

  v6 = re::ecs2::SystemRegistry::registerNewSystem(this, v8);
  if (v8[0])
  {
  }

  return v6;
}

uint64_t re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v6, a2);
  re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::findEntry<re::TypeID>(a1, a2, v4, &v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v7 + 24;
  }
}

unint64_t re::ecs2::SystemRegistry::registerNewSystem(uint64_t a1, void *a2)
{
  v4 = (*(**a2 + 32))();
  v6 = re::DataArray<re::SharedPtr<re::ecs2::System>>::create<re::SharedPtr<re::ecs2::System>>(a1, a2);
  re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addNew(a1 + 64, (v4 + 32), &v6);
  return v6;
}

unint64_t re::ecs2::SystemRegistry::registerSystem(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::tryGet(a1 + 64, a2);
  if (v4)
  {
    v3 = *v4;
    v5 = *v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
    if (v10 == 1)
    {
      v7 = re::ecs2::SystemRegistry::registerNewSystem(v3, &Instance);
      LODWORD(v3) = v7;
      v5 = v7 & 0xFFFFFFFF00000000;
      if (Instance)
      {
      }
    }

    else
    {
      v5 = 0;
      LODWORD(v3) = -1;
    }

    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  }

  return v3 | v5;
}

void *re::ecs2::SystemRegistry::getSystem@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  result = re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::tryGet(a1 + 64, a2);
  if (result)
  {
    v6 = WORD1(*result);
    v7 = *(a1 + 16);
    if (v7 <= v6)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 797;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(*(*(a1 + 32) + 16 * v6) + 8 * *result);
    *a3 = v8;
    if (v8)
    {

      return (v8 + 8);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t re::DataArray<re::SharedPtr<re::ecs2::System>>::create<re::SharedPtr<re::ecs2::System>>(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(a1);
    }

    v13 = *(a1 + 16);
    v7 = (v13 - 1);
    if (v13)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v14 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        v12 = *(a1 + 56);
        *(v14[1] + 4 * v6) = v12;
        v11 = (*v14 + 8 * v6);
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v21);
      __break(1u);
    }

LABEL_20:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = 0;
    _os_log_send_and_compose_impl(v20, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(a1 + 16);
  if (v9 <= v7)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v10 = (*(a1 + 32) + 16 * v7);
  *(v10[1] + 4 * v6) = v5;
  v11 = (*v10 + 8 * v6);
  *(a1 + 52) = *v11;
  v12 = *(a1 + 56);
LABEL_15:
  ++*(a1 + 40);
  *v11 = *a2;
  *a2 = 0;
  return ((v7 << 16) | ((v12 & 0xFFFFFF) << 32)) + v6;
}

uint64_t re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addNew(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v12, a2);
  re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::findEntry<re::TypeID>(a1, a2, v6, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 24;
  }

  v7 = re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

double re::DataArray<re::SharedPtr<re::ecs2::System>>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::SharedPtr<re::ecs2::System>>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::SharedPtr<re::ecs2::System>>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::ecs2::Component *>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    if (*v5)
    {

      *v6 = 0;
    }

    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

uint64_t re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::findEntry<re::TypeID>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v9 = *(a2 + 3);
    v10 = *(a2 + 2);
    v11 = *a2;
    v12 = HIWORD(*(a2 + 2));
    v5 = 0x7FFFFFFF;
    result = 40;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v6;
      v14 = v8 + 40 * v6;
      v16 = *(v14 + 8);
      v15 = v14 + 8;
      if (v16 == v11 && *(v15 + 8) == v10 && *(v15 + 10) == v12 && ((*(v15 + 12) ^ v9) & 0xFFFFFF) == 0)
      {
        break;
      }

      v6 = *(v8 + 40 * v6) & 0x7FFFFFFF;
      v7 = v13;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v13;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

void re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 8 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::TypeID,re::DataArrayHandle<re::SharedPtr<re::ecs2::System>>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::allocEntry(a1, *(v13 + v17 + 32) % *(a1 + 24), *(v13 + v17 + 32));
                *(v19 + 8) = *(*&v26[16] + v17 + 8);
                v13 = *&v26[16];
                *(v19 + 24) = *(*&v26[16] + v17 + 24);
                v16 = *&v26[32];
              }

              ++v18;
              v17 += 40;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

void re::ecs2::SceneGroupCollection::~SceneGroupCollection(re::ecs2::SceneGroupCollection *this)
{
  re::ecs2::SceneGroupCollection::deinit(this);
  re::ecs2::CustomSystemRegistry::~CustomSystemRegistry((this + 184));
  re::DataArray<re::ecs2::SceneGroup>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::ecs2::SystemRegistry::~SystemRegistry((this + 8));
}

void re::ecs2::SceneGroupCollection::deinit(re::ecs2::SceneGroupCollection *this)
{
  v2 = 0;
  v8 = re::ecs2::CustomSystemRegistry::instance(this);
  v9 = this + 184;
  do
  {
    re::ecs2::CustomSystemRegistry::releaseSystems(*(&v8 + v2), *this);
    v2 += 8;
  }

  while (v2 != 16);
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v8, this + 120, 0);
  if ((this + 120) != v8 || v9 != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v8);
      re::ecs2::SceneGroup::clearScenes(v4);
      v5 = *(v4 + 15);
      v4 = (v4 + 120);
      (*(v5 + 16))(v4);
      re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v4 + 8);
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v8);
    }

    while (v8 != (this + 120) || v9 != 0xFFFF || WORD1(v9) != 0xFFFF);
  }

  re::DataArray<re::ecs2::SceneGroup>::clear(this + 15);
  re::DataArray<re::SharedPtr<re::ecs2::System>>::deinit(this + 8);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  *(this + 336) = 1;
}

double re::DataArray<re::ecs2::SceneGroup>::clear(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v27, a1, 0);
  if (v27 != a1 || DWORD2(v27) != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
      re::DataArray<re::ecs2::SceneGroup>::destroy(a1, v4);
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v27);
    }

    while (v27 != a1 || WORD4(v27) != 0xFFFF || WORD5(v27) != 0xFFFF);
  }

  v7 = a1[2];
  v8 = v7 - 1;
  if (v7 != 1)
  {
    v9 = 16 * v7 - 16;
    do
    {
      if (v7 <= v8)
      {
        v18 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v19 = 136315906;
        v20 = "operator[]";
        v21 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v22 = 789;
        v23 = 2048;
        v24 = v8;
        v25 = 2048;
        v26 = v7;
        _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
LABEL_25:
        v18 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v19 = 136315906;
        v20 = "removeAt";
        v21 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v22 = 931;
        v23 = 2048;
        v24 = v8;
        v25 = 2048;
        v26 = v1;
        _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
        _os_crash_msg();
        __break(1u);
      }

      v10 = (a1[4] + v9);
      (*(**a1 + 40))(*a1, *v10);
      (*(**a1 + 40))(*a1, v10[1]);
      v1 = a1[2];
      if (v1 <= v8)
      {
        goto LABEL_25;
      }

      v7 = v1 - 1;
      if (v1 - 1 > v8)
      {
        *(a1[4] + v9) = *(a1[4] + 16 * v1 - 16);
        v7 = a1[2] - 1;
      }

      a1[2] = v7;
      ++*(a1 + 6);
      v9 -= 16;
      --v8;
    }

    while (v8);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

BOOL re::ecs2::SceneGroupCollection::hasPendingSystemChanges(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336))
  {
    return 1;
  }

  v3 = a1 + 120;
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v4 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 120, a2);

    return re::ecs2::SceneGroup::hasPendingSystemChanges(v4);
  }

  else
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v9, v3, 0);
    if (v3 != v9 || v10 != 0xFFFFFFFFLL)
    {
      while (1)
      {
        v6 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v9);
        if (*(v6 + 8) != 2 && re::ecs2::SceneGroup::hasPendingSystemChanges(v6))
        {
          break;
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v9);
        if (v9 == v3 && v10 == 0xFFFF && WORD1(v10) == 0xFFFF)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 240 * a2;
}

void re::ecs2::SceneGroupCollection::configureSystemChanges(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) == 1)
  {
    v3 = a1 + 120;
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v14, a1 + 120, 0);
    if (v3 != v14 || v15 != 0xFFFFFFFFLL)
    {
      do
      {
        v5 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v14);
        re::ecs2::SceneGroup::configureSystemChanges(v5);
        re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v14);
      }

      while (v14 != v3 || v15 != 0xFFFF || WORD1(v15) != 0xFFFF);
    }

    *(a1 + 336) = 0;
  }

  else
  {
    v8 = a1 + 120;
    if ((a2 & 0xFFFFFF00000000) != 0)
    {
      v9 = re::DataArray<re::ecs2::SceneGroup>::get(v8, a2);

      re::ecs2::SceneGroup::configureSystemChanges(v9);
    }

    else
    {
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v14, v8, 0);
      if (v8 != v14 || v15 != 0xFFFFFFFFLL)
      {
        do
        {
          v11 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v14);
          if (*(v11 + 8) != 2)
          {
            re::ecs2::SceneGroup::configureSystemChanges(v11);
          }

          re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v14);
        }

        while (v14 != v8 || v15 != 0xFFFF || WORD1(v15) != 0xFFFF);
      }
    }
  }
}

uint64_t re::ecs2::SceneGroupCollection::forceSystemConfiguration(re::ecs2::SceneGroupCollection *this)
{
  v1 = this + 120;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v6, this + 120, 0);
  if (v1 != v6 || v7 != 0xFFFFFFFFLL)
  {
    do
    {
      *(re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v6) + 232) = 0;
      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v6);
    }

    while (v6 != v1 || v7 != 0xFFFF || WORD1(v7) != 0xFFFF);
  }

  return result;
}

void re::ecs2::SceneGroupCollection::configurePhaseECSSystems(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v10 = *a1;
    v19 = 0xE7CEDE6893983BACLL;
    v20 = "ECSManager::Activate Scene Group";
    v21 = 1;
    v22 = 0;
    v23 = 0;
    v24 = 260;
    v25 = 1023969417;
    v26 = 0;
    v11 = re::globalAllocators(a1)[2];
    v27[2] = a2;
    v27[3] = v11;
    v27[0] = &unk_1F5D01230;
    v27[1] = v10;
    v27[4] = v27;
    v27[5] = a5;
    v32 = 0;
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    re::Scheduler::ScheduleDescriptor::addTask(a3, &v19);
    if (v28)
    {
      if (v32)
      {
        (*(*v28 + 40))();
      }

      v32 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      ++v31;
    }

    v12 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v27);
    if (v19)
    {
      if (v19)
      {
      }
    }

    v13 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 120, a2);
    re::ecs2::SceneGroup::configurePhaseECSSystems(v13, a1 + 120, a3, a4, a5);
  }

  else
  {
    v14 = a1 + 120;
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v19, a1 + 120, 0);
    if (v14 != v19 || v20 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v19);
        if (*(v16 + 8) != 2)
        {
          re::ecs2::SceneGroupCollection::configurePhaseECSSystems(a1, *(v16 + 16), a3, a4, a5);
        }

        re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v19);
      }

      while (v19 != v14 || v20 != 0xFFFF || WORD1(v20) != 0xFFFF);
    }
  }
}

uint64_t re::ecs2::SceneGroupCollection::addCustomSystem(uint64_t a1, uint64_t *a2)
{
  re::ecs2::CustomSystemRegistry::add(a1 + 184, *a1, a2);
  *(a1 + 336) = 1;
  re::ecs2::SceneGroupCollection::configureSystemChanges(a1, 0xFFFFFFFFLL);
  v3 = a1 + 120;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v9, v3, 0);
  if (v3 != v9 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v6 = *(re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v9) + 72);
      if (v6 && *(v6 + 756) > 0.0)
      {
        *(v6 + 756) = 0;
        *(v6 + 752) = fminf(*(v6 + 752), 0.0);
      }

      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v9);
    }

    while (v9 != v3 || v10 != 0xFFFF || WORD1(v10) != 0xFFFF);
  }

  return result;
}

uint64_t re::ecs2::SceneGroupCollection::registerCustomSystem(os_unfair_lock_s *a1, _OWORD *a2)
{
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  v10[2] = a2[2];
  os_unfair_lock_lock(a1 + 47);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(&a1[60], v10);
  os_unfair_lock_unlock(a1 + 47);
  v4 = a1 + 30;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v10, v4, 0);
  if (v4 != *&v10[0] || DWORD2(v10[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v7 = *(re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(v10) + 72);
      if (v7 && *(v7 + 756) > 0.0)
      {
        *(v7 + 756) = 0;
        *(v7 + 752) = fminf(*(v7 + 752), 0.0);
      }

      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(v10);
    }

    while (*&v10[0] != v4 || WORD4(v10[0]) != 0xFFFF || WORD5(v10[0]) != 0xFFFF);
  }

  return result;
}

uint64_t re::ecs2::SceneGroupCollection::setDefaultCustomSystemTaskOptions(re::ecs2::CustomSystemRegistry *a1, uint64_t a2)
{
  v4 = 0;
  v6[0] = re::ecs2::CustomSystemRegistry::instance(a1);
  v6[1] = a1 + 184;
  do
  {
    result = re::ecs2::CustomSystemRegistry::setDefaultTaskOptions(v6[v4++], a2);
  }

  while (v4 != 2);
  return result;
}

unint64_t re::ecs2::SceneGroupCollection::createSceneGroup(uint64_t a1, char a2, uint64_t a3)
{
  v8 = a2;
  v6 = a1;
  v7 = a3;
  v4 = re::DataArray<re::ecs2::SceneGroup>::create<re::ecs2::SceneGroup::Type &,re::ecs2::SceneGroupCollection *,re::ecs2::ECSService *&,re::Scheduler *&>(a1 + 120, &v8, &v6, a1, &v7);
  *(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 120, v4) + 16) = v4;
  re::ecs2::SceneGroupCollection::configureSystemChanges(a1, v4);
  *(a1 + 336) = 1;
  return v4;
}

unint64_t re::DataArray<re::ecs2::SceneGroup>::create<re::ecs2::SceneGroup::Type &,re::ecs2::SceneGroupCollection *,re::ecs2::ECSService *&,re::Scheduler *&>(uint64_t a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 56);
  if ((v10 + 1) >> 24)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 + 1;
  }

  *(a1 + 56) = v11;
  v12 = *(a1 + 52);
  v13 = *(a1 + 54);
  if (v12 == 0xFFFF && v13 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::ecs2::SceneGroup>::allocBlock(a1);
    }

    v18 = *(a1 + 16);
    v13 = (v18 - 1);
    if (v18)
    {
      v12 = *(a1 + 48);
      if (v12 < 0x10000)
      {
        v19 = (*(a1 + 32) + 16 * v13);
        *(a1 + 48) = v12 + 1;
        *(v19[1] + 4 * v12) = *(a1 + 56);
        v17 = (*v19 + 240 * v12);
        goto LABEL_15;
      }

LABEL_24:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v12);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v26);
      __break(1u);
    }

LABEL_20:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    v37 = 0;
    _os_log_send_and_compose_impl(v25, &v29, &v38, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(a1 + 16);
  if (v15 <= v13)
  {
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v13;
    v36 = 2048;
    v37 = v15;
    _os_log_send_and_compose_impl(v22, &v29, &v38, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v16 = (*(a1 + 32) + 16 * v13);
  *(v16[1] + 4 * v12) = v11;
  v17 = (*v16 + 240 * v12);
  *(a1 + 52) = *v17;
LABEL_15:
  ++*(a1 + 40);
  re::ecs2::SceneGroup::SceneGroup(v17, *a2, *a3, *a4, *a5);
  return ((v13 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v12;
}

void re::DataArray<re::ecs2::SceneGroup>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::ecs2::SceneGroup>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    re::ecs2::SceneGroup::~SceneGroup(v5);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

uint64_t re::ecs2::SceneGroupCollection::sceneCount(re::ecs2::SceneGroupCollection *this)
{
  v1 = this + 120;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v7, this + 120, 0);
  v2 = 0;
  if (v1 != v7 || v8 != 0xFFFFFFFFLL)
  {
    do
    {
      v2 += *(re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v7) + 200);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v7);
    }

    while (v7 != v1 || v8 != 0xFFFF || WORD1(v8) != 0xFFFF);
  }

  return v2;
}

void re::ecs2::SystemRegistry::~SystemRegistry(re::ecs2::SystemRegistry *this)
{
  re::DataArray<re::SharedPtr<re::ecs2::System>>::deinit(this);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 8);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 8);
  re::DataArray<re::SharedPtr<re::ecs2::System>>::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::internal::Callable<re::ecs2::SceneGroupCollection::configurePhaseECSSystems(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01230;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::SceneGroupCollection::configurePhaseECSSystems(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D01230;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::ecs2::SceneGroup>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

void re::DataArray<re::ecs2::SceneGroup>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 240 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 240 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::SceneGroup::SceneGroup(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0xFFFFFFFFLL;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a5;
  *(a1 + 80) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_1F5D01C30;
  *(a1 + 216) = 0;
  *(a1 + 224) = a4;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = &unk_1F5D019F0;
  *(a1 + 184) = 0;
  *(a1 + 232) = 0;
  if (*(a1 + 8) == 2)
  {
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 864, 8);
    bzero(v10, 0x350uLL);
    *(v10 + 72) = 1;
    *(v10 + 80) = 0u;
    *(v10 + 120) = 0;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 1;
    *(v10 + 152) = 0u;
    *(v10 + 192) = 0;
    *(v10 + 200) = 0u;
    *(v10 + 216) = 1;
    *(v10 + 224) = 0u;
    *(v10 + 264) = 0u;
    *(v10 + 280) = 0;
    *(v10 + 288) = 1;
    *(v10 + 296) = 0u;
    *(v10 + 336) = 0u;
    *(v10 + 352) = 0;
    *(v10 + 360) = 1;
    *(v10 + 368) = 0u;
    *(v10 + 728) = 0;
    *(v10 + 696) = 0u;
    *(v10 + 712) = 0u;
    *(v10 + 664) = 0u;
    *(v10 + 680) = 0u;
    *(v10 + 632) = 0u;
    *(v10 + 648) = 0u;
    *(v10 + 600) = 0u;
    *(v10 + 616) = 0u;
    *(v10 + 568) = 0u;
    *(v10 + 584) = 0u;
    *(v10 + 536) = 0u;
    *(v10 + 552) = 0u;
    *(v10 + 504) = 0u;
    *(v10 + 520) = 0u;
    *(v10 + 472) = 0u;
    *(v10 + 488) = 0u;
    *(v10 + 440) = 0u;
    *(v10 + 456) = 0u;
    *(v10 + 408) = 0u;
    *(v10 + 424) = 0u;
    *(v10 + 736) = 0u;
    *(v10 + 752) = 0x7F7FFFFF00000000;
    *(v10 + 760) = 0u;
    *(v10 + 776) = 0u;
    *(v10 + 792) = 0u;
    *(v10 + 808) = 0u;
    *(v10 + 824) = 0u;
    *(v10 + 837) = 0;
    *(v10 + 848) = -1;
    *(v10 + 856) = -1;
    v18[3] = v18;
    v17 = v16;
    v18[0] = &unk_1F5D01338;
    v16[0] = &unk_1F5D01338;
    std::__function::__value_func<void ()(re::Scheduler *)>::~__value_func[abi:nn200100](v18);
    v15 = 0;
    v11 = *(a1 + 80);
    *(a1 + 80) = v10;
    if (v11)
    {
      std::function<void ()(re::Scheduler *)>::operator()(a1 + 88, v11);
    }

    v12 = *(a1 + 112);
    *(a1 + 112) = 0;
    if (v12 == a1 + 88)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    v13 = v17;
    if (v17)
    {
      if (v17 == v16)
      {
        *(a1 + 112) = a1 + 88;
        (*(*v13 + 24))(v13, a1 + 88);
      }

      else
      {
        *(a1 + 112) = v17;
        v17 = 0;
      }
    }

    else
    {
      *(a1 + 112) = 0;
    }

    std::unique_ptr<re::Scheduler,std::function<void ()(re::Scheduler*)>>::~unique_ptr[abi:nn200100](&v15);
    *(a1 + 72) = *(a1 + 80);
  }

  return a1;
}

void re::ecs2::SceneGroup::~SceneGroup(re::ecs2::SceneGroup *this)
{
  re::ecs2::SceneGroup::clearScenes(this);
  (*(*(this + 15) + 16))(this + 120);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(this + 128);
  re::Collection<re::SharedPtr<re::ecs2::Scene>>::~Collection(this + 22);
  re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(this + 15);
  std::unique_ptr<re::Scheduler,std::function<void ()(re::Scheduler*)>>::~unique_ptr[abi:nn200100](this + 10);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 3);
}

void re::ecs2::SceneGroup::clearScenes(re::ecs2::SceneGroup *this)
{
  re::StackScratchAllocator::StackScratchAllocator(v16);
  v2 = *(this + 25);
  v15 = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = 0;
  v12[0] = v16;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v12, v2);
  ++v14;
  v3 = *(this + 25);
  if (v3)
  {
    v4 = *(this + 27);
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      v11 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
      }

      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v12, &v11);
      if (v11)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  (*(*(this + 22) + 16))(this + 176);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(this + 184);
  if (v13)
  {
    v8 = v15;
    v9 = 8 * v13;
    do
    {
      v10 = *v8++;
      *(v10 + 376) = 0xFFFFFFFFLL;
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v12);
  re::StackScratchAllocator::~StackScratchAllocator(v16);
}

BOOL re::ecs2::SceneGroup::hasPendingSystemChanges(uint64_t **this)
{
  v3 = *this + 23;
  v2 = **this;
  v4 = 0;
  v6[0] = re::ecs2::CustomSystemRegistry::instance(this);
  v6[1] = v3;
  while (!re::ecs2::CustomSystemRegistry::hasPendingSystemChanges(v6[v4], v2, this))
  {
    if (++v4 == 2)
    {
      return *(this + 58) != *(this + 38);
    }
  }

  return 1;
}

void re::ecs2::SceneGroup::configureSystemChanges(unint64_t **this)
{
  v2 = (this + 16);
  v4 = (*this + 23);
  v3 = **this;
  v5 = 0;
  v6[0] = re::ecs2::CustomSystemRegistry::instance(this);
  v6[1] = v4;
  do
  {
    re::ecs2::CustomSystemRegistry::configureSystemChanges(v6[v5++], v3, this, v2);
  }

  while (v5 != 2);
}

void re::ecs2::SceneGroup::configurePhaseECSSystems(re ***a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a1[18];
  if (!v7)
  {
    goto LABEL_29;
  }

  v25 = a1[2];
  v8 = 8 * v7;
  v9 = 1;
  v10 = a1[20];
  do
  {
    v11 = *v10;
    if (*v10)
    {
      v12 = v11 + 8;
    }

    if (*(v11 + 49) == a4)
    {
      v13 = (*(v11 + 48) == 2) | v9;
      if (*(v11 + 48) != 2 && ((v9 ^ 1) & 1) == 0)
      {
        re::ecs2::SceneGroup::configureEnqueuedDirtyComponentsTask(**a1, a3, a5);
        v13 = 0;
      }

      *&v30.var0 = 0x6E89C30E7C08;
      v30.var1 = "ECSSystem";
      v14 = (*(*v11 + 32))(v11);
      if (*(v14 + 16) == 8)
      {
        v16 = re::DynamicString::format(&v31, "ECSSystem - %s", v15, *(v14 + 48));
        if (v32)
        {
          v17 = v34;
        }

        else
        {
          v17 = v33;
        }

        *&v29.var0 = 0;
        v29.var1 = &str_67;
        var0 = v29.var0;
        v30 = v29;
        if (v31 && (v32 & 1) != 0)
        {
          (*(*v31 + 40))();
        }
      }

      else
      {
        var0 = 0;
      }

      v19 = a1[2];
      re::StringID::StringID(&v31, &v30);
      LOBYTE(v34) = re::ecs2::System::isTaskEnabled(v11, a1[2]);
      BYTE1(v34) = re::ecs2::System::isQueuedToRun(v11, a1[2]);
      HIDWORD(v34) = re::ecs2::System::queuedToRunDeadline(v11, a1[2]);
      v35 = 0;
      v20 = re::ecs2::System::taskOptions(v11, a1[2]);
      v21 = *(v20 + 8);
      v36 = *v20;
      v37 = v21;
      v39 = re::globalAllocators(v11 + 8)[2];
      v40 = 0;
      v22 = (*(*v39 + 32))(v39, 32, 0);
      *v22 = &unk_1F5D01288;
      v22[1] = v11;
      v22[2] = a2;
      v22[3] = v25;
      v40 = v22;
      v41 = a5;
      v46 = 0;
      v45 = 0;
      v43 = 0;
      v44 = 0;
      v42 = 0;
      v23 = re::Scheduler::ScheduleDescriptor::addTask(a3, &v31);
      re::ecs2::System::setTaskHandle(v11, v19, v23);
      if (v42)
      {
        if (v46)
        {
          (*(*v42 + 40))();
        }

        v46 = 0;
        v43 = 0;
        v44 = 0;
        v42 = 0;
        ++v45;
      }

      v24 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v38);
      if (v31)
      {
        if (v31)
        {
        }
      }

      if (var0)
      {
      }

      v9 = v13;
    }

    ++v10;
    v8 -= 8;
  }

  while (v8);
  if (v9)
  {
LABEL_29:
    re::ecs2::SceneGroup::configureEnqueuedDirtyComponentsTask(**a1, a3, a5);
  }

  if (a4 == 2)
  {
    *(a1 + 58) = *(a1 + 38);
  }
}

void re::ecs2::SceneGroup::configureEnqueuedDirtyComponentsTask(re *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v7[0] = 0x62A6C9512189D9F8;
  v7[1] = "Post Update Callback Bnatch Dirty Components";
  v8 = 1;
  v9 = 0;
  v10 = 0;
  v11 = 260;
  v12 = 1023969417;
  v13 = 0;
  v14[3] = re::globalAllocators(a1)[2];
  v14[4] = v14;
  v14[0] = &unk_1F5D012E0;
  v14[1] = a1;
  v14[5] = a3;
  v15 = 0;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a2, v7);
  if (v15)
  {
    if (v19)
    {
      (*(*v15 + 40))();
    }

    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    ++v18;
  }

  v6 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v14);
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }
}

void re::ecs2::SceneGroup::addSystem(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  re::ecs2::SystemRegistry::getSystem(a2, a3, &v6);
  if (v6)
  {
    re::ecs2::SceneGroup::addSystemNow(a1, &v6, v4);
    if (v6)
    {
    }
  }
}

void *re::ecs2::SystemRegistry::getSystem@<X0>(void *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = HIWORD(a2);
  v4 = result[2];
  if (v4 <= HIWORD(a2))
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(*(result[4] + 16 * HIWORD(a2)) + 8 * a2);
  *a3 = v5;
  if (v5)
  {

    return (v5 + 8);
  }

  return result;
}

void re::ecs2::SceneGroup::addSystemNow(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result[18];
  if (v3)
  {
    v4 = 8 * v3;
    v5 = result[20];
    while (*v5 != *a2)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = result[20];
  }

  if (v5 == (result[20] + 8 * v3))
  {
LABEL_8:
    if ((a3 & 0x80000000) != 0)
    {
      re::Collection<re::SharedPtr<re::ecs2::System>>::add(result + 15, a2);
    }

    else
    {
      re::Collection<re::SharedPtr<re::ecs2::System>>::insert(result + 15, a3, a2);
    }
  }
}

void re::ecs2::SceneGroup::removeSystem(uint64_t a1, void *a2, int a3)
{
  re::ecs2::SystemRegistry::getSystem(a2, a3, &v4);
  if (v4)
  {
    re::Collection<re::SharedPtr<re::ecs2::System>>::removeStable(a1 + 120, &v4);
    if (v4)
    {
    }
  }
}

void re::Collection<re::SharedPtr<re::ecs2::System>>::insert(void *a1, unint64_t a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v9 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  v7 = (*(*a1 + 24))(a1, a2, &v9);
  if (a1[3] >= a2)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::System>>::insert((a1 + 1), a2, &v9);
    (*(*a1 + 48))(a1, a2, &v9);
  }

  else
  {
    v8 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "void re::Collection<re::SharedPtr<re::ecs2::System>>::insert(size_t, const T &) [T = re::SharedPtr<re::ecs2::System>]";
      v12 = 2048;
      v13 = a2;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willInsert(), not inserting", buf, 0x16u);
    }
  }

  if (v9)
  {
  }
}

void re::Collection<re::SharedPtr<re::ecs2::System>>::add(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  v4 = *a2;
  v7 = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  (*(*a1 + 24))(a1, v3, &v7);
  v6 = a1[3];
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((a1 + 1), &v7);
  (*(*a1 + 48))(a1, v6, &v7);
  if (v7)
  {
  }
}

uint64_t re::Collection<re::SharedPtr<re::ecs2::System>>::removeStable(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(a1 + 40); *i != *a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 40);
  }

  if (i == (v3 + 8 * v4))
  {
    return 0;
  }

  v7 = (i - v3) >> 3;
  v8 = *(a1 + 32);
  v9 = *a2;
  v17 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  (*(*a1 + 32))(a1, v7, &v17);
  if (v8 == *(a1 + 32))
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = *(a1 + 40);
    while (*v14 != v17)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (v14 != (v11 + 8 * v12))
  {
    v7 = (v14 - v11) >> 3;
LABEL_20:
    re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(a1 + 8, v7);
    (*(*a1 + 56))(a1, v7, &v17);
    v15 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
LABEL_22:
  if (v17)
  {
  }

  return v15;
}

void *re::internal::Callable<re::ecs2::SceneGroup::configurePhaseECSSystems(re::DataArray<re::ecs2::SceneGroup> &,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D01288;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::Callable<re::ecs2::SceneGroup::configurePhaseECSSystems(re::DataArray<re::ecs2::SceneGroup> &,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D01288;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::ecs2::SceneGroup::configurePhaseECSSystems(re::DataArray<re::ecs2::SceneGroup> &,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::operator()(void *a1, unsigned int *a2)
{
  v3 = *a2;
  result = re::DataArray<re::ecs2::SceneGroup>::tryGet(a1[2], a1[3]);
  if (result)
  {
    v5 = result;
    result = a1[1];
    if (*(result + 40))
    {
      re::ecs2::System::resetQueuedToRun(result, a1[3]);
      v6 = a1[1];
      v7 = (*(*v6[5] + 216))(v6[5]);
      v8 = 0x100000000;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = (*v6)[10];

      return v9(v6, v8 | v3, v5);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::ecs2::SceneGroup::configurePhaseECSSystems(re::DataArray<re::ecs2::SceneGroup> &,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5D01288;
  *(a2 + 8) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::SceneGroup::configurePhaseECSSystems(re::DataArray<re::ecs2::SceneGroup> &,re::Scheduler::ScheduleDescriptor &,re::ecs2::ECSSystemGroup,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01288;
  *(a2 + 8) = v2;
  *(a1 + 8) = 0;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::internal::Callable<re::ecs2::SceneGroup::configureEnqueuedDirtyComponentsTask(re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D012E0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::SceneGroup::configureEnqueuedDirtyComponentsTask(re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D012E0;
  a2[1] = v2;
  return a2;
}

uint64_t *std::unique_ptr<re::Scheduler,std::function<void ()(re::Scheduler*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::Scheduler *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::Scheduler *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::Scheduler *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::Scheduler *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::Scheduler *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_9SchedulerEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::DynamicArray<re::SharedPtr<re::ecs2::System>>::insert(_anonymous_namespace_ *this, unint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v19 = 0;
    memset(v28, 0, sizeof(v28));
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "insert";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 855;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v5;
    _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v8 = *(this + 4);
  v9 = (v8 + 8 * v4);
  if (v4 <= a2)
  {
    v14 = *a3;
    *v9 = *a3;
    if (v14)
    {
      v15 = (v14 + 8);
    }
  }

  else
  {
    *v9 = *(v9 - 1);
    *(v9 - 1) = 0;
    if (v9 - 1 != (v8 + 8 * a2))
    {
      v10 = *(v9 - 1);
      v11 = v9 - 2;
      v12 = 8 * a2 - 8 * v4 + 8;
      do
      {
        v13 = *v11;
        *v11 = v10;
        v11[1] = v13;
        --v11;
        v12 += 8;
      }

      while (v12);
      v8 = *(this + 4);
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v8 + 8 * a2), *a3);
  }

  ++*(this + 2);
  ++*(this + 6);
}

void re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v13 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "removeStableAt";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 969;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = *(a1 + 32);
    v7 = (v6 + 8 * a2);
    v8 = v7 + 1;
    if (v7 + 1 != (v6 + 8 * v3))
    {
      v9 = *v7;
      v10 = 8 * v3 - 8 * a2 - 8;
      do
      {
        *(v8 - 1) = *v8;
        *v8++ = v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  v11 = *(a1 + 32) + 8 * v3;
  v12 = *(v11 - 8);
  if (v12)
  {

    *(v11 - 8) = 0;
    v5 = *(a1 + 16) - 1;
  }

  *(a1 + 16) = v5;
  ++*(a1 + 24);
}

uint64_t *re::internal::EntityHandleHookupTable::registerEntity(_anonymous_namespace_ *this, const StringID *a2, unint64_t a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9[0] = a2;
  v10 = 0;
  if (a4)
  {
    std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::operator=[abi:nn200100](v9 + 1, a4);
  }

  v7 = *(this + 2);
  re::DynamicArray<re::internal::EntityHandleHookupData>::add(this, v9);
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 40, &v8, &v7);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 88, &a2[18], &v7);
  return std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](v9 + 1);
}

uint64_t *std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::internal::EntityHandleHookupTable *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t re::DynamicArray<re::internal::EntityHandleHookupData>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::EntityHandleHookupData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 48 * v4);
  v6 = *a2;
  *(a2 + 1) = 0;
  *v5 = v6;
  result = std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::__value_func[abi:nn200100]((v5 + 1), (a2 + 1));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::internal::EntityHandleHookupTable::lookupEntity(void *a1, char *a2, size_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v55 = a2;
  v56 = a3;
  v6 = &a2[a3];
  v7 = memchr(a2, 58, a3);
  v8 = v7 != 0;
  v9 = v7 != v6;
  v10 = v7 - a2;
  v11 = v8 && v9;
  if (v8 && v9)
  {
    v12 = v7 - a2;
  }

  else
  {
    v12 = a3;
  }

  v13 = re::Slice<char>::range(&v55, 0, v12);
  v15 = v13;
  v16 = v14;
  v53 = v13;
  v54 = v14;
  if (v14 >= 2 && *v13 == 35)
  {
    v17 = v13[1];
    if ((v17 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x400) != 0)
    {
      v13 = re::Slice<char>::range(&v53, 1uLL, v14);
      v19 = v13;
      v20 = &v13[v18];
      if (v18)
      {
        while (*v13 == 48)
        {
          ++v13;
          if (!--v18)
          {
            v13 = v20;
            break;
          }
        }
      }

      if (v13 == v20 || *v13 - 48 >= 0xA)
      {
        if (v13 == v19)
        {
LABEL_22:
          v15 = v53;
          v16 = v54;
          goto LABEL_23;
        }

        v21 = 0;
      }

      else
      {
        v13 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v13, v20, &v63, v58);
        if (v13 != v20 && *v13 - 48 <= 9 || __CFADD__(v63, *v58))
        {
          goto LABEL_22;
        }

        v21 = v63 + *v58;
      }

      if (v20 != v13)
      {
        goto LABEL_22;
      }

      LOBYTE(v50) = 1;
      v51 = v21;
      v13 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((a1 + 5), &v51);
      if (v13)
      {
        v31 = *v13;
        v32 = a1[2];
        if (v32 <= *v13)
        {
          goto LABEL_68;
        }

        v38 = a1[4];
        v39 = (v38 + 48 * v31);
        if (!v11)
        {
          if (v38)
          {
            return *v39;
          }

          goto LABEL_22;
        }

        if (v38 && v39[1])
        {
          v40 = re::Slice<char>::range(&v55, v10 + 1, v56);
          return re::internal::EntityHandleHookupTable::lookupEntity(v39[1], v40, v41);
        }
      }

      else if (!v11)
      {
        goto LABEL_22;
      }

      return 0;
    }
  }

LABEL_23:
  v22 = &v51 + 1;
  if (v51)
  {
    v22 = v52;
  }

  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      v24 = (v51 & 1) != 0 ? v52 + 1 : &v51 + 2;
      v25 = *v24;
      if (*v24)
      {
        v26 = (v24 + 1);
        do
        {
          v23 = 31 * v23 + v25;
          v27 = *v26++;
          v25 = v27;
        }

        while (v27);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  *v58 = 2 * v23;
  *&v58[8] = v22;
  v28 = 0xBF58476D1CE4E5B9 * (v23 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v23) >> 31));
  v29 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 11), v58, (0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) ^ ((0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) >> 31), &v63);
  if (HIDWORD(v63) == 0x7FFFFFFF)
  {
    if (v58[0])
    {
      if (v58[0])
      {
      }
    }

    goto LABEL_49;
  }

  v30 = a1[13] + 32 * HIDWORD(v63);
  if (v58[0])
  {
    if (v58[0])
    {
    }
  }

  v31 = *(v30 + 24);
  v32 = a1[2];
  if (v32 <= v31)
  {
    v57 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    *&v58[12] = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    *&v58[14] = 789;
    v59 = 2048;
    v60 = v31;
    v61 = 2048;
    v62 = v32;
    _os_log_send_and_compose_impl(v45, &v57, &v63, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v57 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *&v58[4] = "operator[]";
    *&v58[12] = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    *&v58[14] = 789;
    v59 = 2048;
    v60 = v31;
    v61 = 2048;
    v62 = v32;
    _os_log_send_and_compose_impl(v48, &v57, &v63, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
  }

  v33 = a1[4];
  v34 = (v33 + 48 * v31);
  if (!v11)
  {
    if (v33)
    {
      v37 = *v34;
      goto LABEL_50;
    }

LABEL_49:
    v37 = 0;
    goto LABEL_50;
  }

  if (!v33 || !v34[1])
  {
    goto LABEL_49;
  }

  v35 = re::Slice<char>::range(&v55, v10 + 1, v56);
  v37 = re::internal::EntityHandleHookupTable::lookupEntity(v34[1], v35, v36);
LABEL_50:
  if (v50 && (v51 & 1) != 0)
  {
    (*(*v50 + 40))();
  }

  return v37;
}

uint64_t re::internal::EntityHandleHookupTable::hookupHandles(re::internal::EntityHandleHookupTable *this, const re::IntrospectionBase **a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5D013C8;
  v6[1] = this;
  v6[3] = v6;
  v3 = (*(*a2 + 5))(a2);
  v4 = (*(*v3 + 48))(v3);
  re::IntrospectionWalker::walk(v4, a2, v6);
  return std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v6);
}

re::internal::EntityHandleHookupTable *re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(re::internal::EntityHandleHookupTable *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    v3 = 48 * v1;
    v4 = (*(this + 4) + 8);
    do
    {
      this = *v4;
      if (*v4)
      {
        this = re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(this);
      }

      v4 += 6;
      v3 -= 48;
    }

    while (v3);
    v5 = *(v2 + 2);
    if (v5)
    {
      v6 = *(v2 + 4);
      v7 = v6 + 48 * v5;
      do
      {
        v8 = *(*v6 + 72);
        if (v8)
        {
          v9 = *(*v6 + 88);
          v10 = 8 * v8;
          do
          {
            v11 = *v9++;
            this = re::internal::EntityHandleHookupTable::hookupHandles(v2, v11);
            v10 -= 8;
          }

          while (v10);
        }

        v6 += 48;
      }

      while (v6 != v7);
    }
  }

  return this;
}

uint64_t re::internal::entityHandleSerialize(uint64_t a1, int a2, id *this, re::DynamicString *a4)
{
  if (re::ecs2::EntityHandle::isNull(this))
  {
    goto LABEL_2;
  }

  v9 = this[2];
  if (v9)
  {
    re::DynamicString::DynamicString(&v15, v9);
    re::DynamicString::operator=(a4, &v15);
    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    return 1;
  }

  WeakRetained = objc_loadWeakRetained(this);
  if (!WeakRetained)
  {
LABEL_2:
    v15 = "";
    v16 = 0;
    re::DynamicString::operator=(a4, &v15);
    return 1;
  }

  v11 = WeakRetained;
  if (a1 && (v12 = *(a1 + 24)) != 0 && (v13 = *v12) != 0)
  {
    v7 = v13(WeakRetained - 1, a4);
  }

  else
  {
    v14 = WeakRetained[36];
    v15 = v14;
    v16 = strlen(v14);
    re::DynamicString::operator=(a4, &v15);
    v7 = 1;
  }

  return v7;
}

uint64_t re::internal::entityHandleDeserialize(re::Allocator *a1, uint64_t a2, int a3, id *this, char *a5)
{
  v6 = *(a2 + 24);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v7(location, a5);
    re::ecs2::EntityHandle::operator=(this, location);
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
  }

  else
  {
    re::ecs2::EntityHandle::setString(this, a5, a1);
  }

  return 1;
}

uint64_t re::internal::entityHandleDeepCopy(re::Allocator *a1, uint64_t a2, int a3, id *location, re::ecs2::EntityHandle *this)
{
  *&v18[15] = *MEMORY[0x1E69E9840];
  if (a2 && (v7 = *(a2 + 24)) != 0 && *(v7 + 24) && (v15 = re::ecs2::EntityHandle::resolve(location, *(v7 + 16)), (v9 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(*(v7 + 24), &v15)) != 0))
  {
    v10 = v9;
    v11 = &v17;
    *v18 = 0;
    v17 = 0;
    *&v18[7] = 0;
    v16 = 35;
    v12 = *v10;
    if (HIDWORD(*v10))
    {
      if (v12 > 0x2540BE3FFLL)
      {
        v11 = std::__itoa::__base_10_u32[abi:nn200100](&v17, v12 / 0x2540BE400);
        v12 %= 0x2540BE400uLL;
      }

      *v11 = std::__itoa::__digits_base_10[v12 / 0x5F5E100];
      v14 = v12 % 0x5F5E100;
      *(v11 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
      v14 %= 0xF4240u;
      *(v11 + 2) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
      v14 %= 0x2710u;
      *(v11 + 3) = std::__itoa::__digits_base_10[v14 / 0x64u];
      *(v11 + 4) = std::__itoa::__digits_base_10[v14 % 0x64u];
    }

    else
    {
      std::__itoa::__base_10_u32[abi:nn200100](&v17, v12);
    }

    re::ecs2::EntityHandle::setString(this, &v16, a1);
  }

  else
  {
    re::ecs2::EntityHandle::operator=(this, location);
  }

  return 1;
}

uint64_t std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::EntityHandleHookupData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::EntityHandleHookupData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::EntityHandleHookupData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::EntityHandleHookupData>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::EntityHandleHookupData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 48 * v9);
        v11 = (v7 + 2);
        v12 = (v8 + 8);
        do
        {
          v13 = *(v12 - 1);
          *v12 = 0;
          *(v11 - 16) = v13;
          std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::__value_func[abi:nn200100](v11, (v12 + 1));
          std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](v12);
          v11 += 48;
          v14 = v12 + 5;
          v12 += 6;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0,std::allocator<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D013C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0,std::allocator<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 11 && *(a2 + 72) == re::internal::entityHandleSerialize)
  {
    v3 = *a3;
    v4 = *(*a3 + 16);
    if (v4)
    {
      v5 = *(result + 8);
      re::DynamicString::DynamicString(&v13, v4);
      result = v13;
      if (v14)
      {
        v6 = v14 >> 1;
      }

      else
      {
        v6 = v14 >> 1;
      }

      if (v13 && (v14 & 1) != 0)
      {
        result = (*(*v13 + 40))();
      }

      if (v6)
      {
        re::DynamicString::DynamicString(&v13, *(v3 + 16));
        if (v14)
        {
          v7 = v15;
        }

        else
        {
          v7 = &v14 + 1;
        }

        v8 = strlen(v7);
        v9 = re::internal::EntityHandleHookupTable::lookupEntity(v5, v7, v8);
        v10 = v13;
        if (v13 && (v14 & 1) != 0)
        {
          v10 = (*(*v13 + 40))();
        }

        if (v9)
        {
          re::ecs2::EntityHandle::reset(v3);
          result = objc_storeWeak(v3, (v9 + 8));
          *(v3 + 8) = *(v9 + 312);
        }

        else
        {
          v11 = *re::ecsCoreLogObjects(v10);
          result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            re::DynamicString::DynamicString(&v13, *(v3 + 16));
            if (v14)
            {
              v12 = v15;
            }

            else
            {
              v12 = &v14 + 1;
            }

            *buf = 136315138;
            v17 = v12;
            _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "EntityHandle points to unknown entity '%s'", buf, 0xCu);
            result = v13;
            if (v13)
            {
              if (v14)
              {
                return (*(*v13 + 40))();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0,std::allocator<re::internal::EntityHandleHookupTable::hookupHandles(re::ecs2::Component *)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::ecs2::CustomSystem::~CustomSystem(re::ecs2::CustomSystem *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    _Block_release(v3);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 40);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::CustomSystem::~CustomSystem(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::CustomSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v23);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v22, 3071, a1, -1, 0, 0);
  if ((a2 & 0x100000000) == 0)
  {
    if (*(a1 + 232) || *(a1 + 256))
    {
      v8 = *(a3 + 200);
      if (v8)
      {
        v9 = *(a3 + 216);
        v10 = 8 * v8;
        while (1)
        {
          v11 = *v9;
          v26[1] = a2;
          v26[2] = a3;
          v26[0] = v11;
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v25);
          if (*(a1 + 232))
          {
            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v24, 3071, a1, -1, 0, 0);
            if ((*(v11 + 50) & 1) == 0)
            {
              v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
              re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 272, v26, v14 ^ (v14 >> 31), v27);
              (*(*(a1 + 232) + 16))();
            }

            v15 = v24;
            goto LABEL_19;
          }

          v16 = *(a1 + 264);
          if (!v16)
          {
            break;
          }

          v17 = re::ecs2::SceneComponentTable::get((v11 + 200), v16);
          v18 = *(v17 + 384);
          if (!v18)
          {
            goto LABEL_14;
          }

          v19 = *(v17 + 400);
LABEL_15:
          if (*(a1 + 264))
          {
            v20 = *(a1 + 264);
          }

          else
          {
            v20 = -1;
          }

          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v27, 3071, a1, v20, v18, 0);
          (*(a1 + 256))(*(a1 + 240), v11, v19, v18, *&a2);
          v15 = v27;
LABEL_19:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v15, v12, v13);
          re::ProfilerTimeGuard<(re::ProfilerStatistic)126>::end(v25);
          ++v9;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_22;
          }
        }

        v18 = 0;
LABEL_14:
        v19 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      (*(a1 + 248))(*(a1 + 240), *(a1 + 40), *&a2);
    }
  }

LABEL_22:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22, v6, v7);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)126>::end(v23);
}

_BYTE *re::ecs2::CustomSystem::setTaskOptionsType(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a2;
  result = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v8);
  if (result && *result != a3)
  {
    *result = a3;
    if (!a3)
    {
      v6 = v8;
      v7 = (*(**(a1 + 40) + 200))(*(a1 + 40));
      return re::ecs2::System::setTaskOptions(a1, v6, v7);
    }
  }

  return result;
}

uint64_t re::ecs2::CustomSystem::willAddSceneToECSService(re::ecs2::CustomSystem *this, unint64_t a2)
{
  v7 = a2;
  result = *(this + 28);
  if (result && (*(a2 + 50) & 1) == 0)
  {
    v5 = (*(result + 16))(result, a2, this);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(this + 272, &v7, v6 ^ (v6 >> 31), &v8);
    if (HIDWORD(v9) == 0x7FFFFFFF)
    {
      result = re::HashTable<re::AssetType const*,re::AssetTypeStatistics *,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(this + 272, v9, v8);
      *(result + 8) = v7;
      *(result + 16) = v5;
      ++*(this + 78);
    }
  }

  return result;
}

uint64_t re::ecs2::CustomSystem::willRemoveSceneFromECSService(uint64_t result, unint64_t a2)
{
  v8 = a2;
  if (*(result + 224))
  {
    if ((*(a2 + 50) & 1) == 0)
    {
      v2 = result;
      v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(result + 272, &v8, v3 ^ (v3 >> 31), v9);
      CFRelease(*(*(v2 + 288) + 32 * v11 + 16));
      v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
      result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v2 + 272, &v8, v4 ^ (v4 >> 31), v9);
      v5 = v11;
      if (v11 != 0x7FFFFFFF)
      {
        v6 = *(v2 + 288);
        v7 = *(v6 + 32 * v11) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          *(*(v2 + 280) + 4 * v10) = v7;
          v5 = v11;
        }

        else
        {
          *(v6 + 32 * v12) = *(v6 + 32 * v12) & 0x80000000 | v7;
        }

        *(v6 + 32 * v5) = *(v2 + 308);
        *(v2 + 308) = v5;
        --*(v2 + 300);
        ++*(v2 + 312);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::CustomSystem::willAddToSystemCollection(re::ecs2::CustomSystem *this, re::ecs2::SystemCollection *a2)
{
  v7 = *(*(a2 + 6) + 16);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v7 & 0xFFFFFF)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(this + 320, &v7, v4 ^ (v4 >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v5 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::ecs2::CustomSystem::TaskOptionsType,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(this + 320, v9, v8);
    *(v5 + 8) = v7;
    *(v5 + 16) = 0;
    ++*(this + 90);
  }

  return re::ecs2::System::willAddToSystemCollection(this, a2);
}

uint64_t re::ecs2::CustomSystem::willRemoveFromSystemCollection(re::ecs2::CustomSystem *this, re::ecs2::SystemCollection *a2)
{
  re::ecs2::System::willRemoveFromSystemCollection(this, a2);
  v9 = *(*(a2 + 6) + 16);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v9 & 0xFFFFFF)) >> 27));
  result = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(this + 320, &v9, v4 ^ (v4 >> 31), v10);
  v6 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v7 = *(this + 42);
    v8 = *(v7 + 32 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(this + 41) + 4 * v11) = v8;
      v6 = v12;
    }

    else
    {
      *(v7 + 32 * v13) = *(v7 + 32 * v13) & 0x80000000 | v8;
    }

    *(v7 + 32 * v6) = *(this + 89);
    *(this + 89) = v6;
    --*(this + 87);
    ++*(this + 90);
  }

  return result;
}

void *re::ecs2::allocInfo_CustomSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_412, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_412))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B66A0, "CustomSystem");
    __cxa_guard_release(&_MergedGlobals_412);
  }

  return &unk_1EE1B66A0;
}

void re::ecs2::initInfo_CustomSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x31FFC470425E4A40;
  v8[1] = "CustomSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_CustomSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CustomSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CustomSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::CustomSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::CustomSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CustomSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CustomSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::CustomSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 2, 1);
  *v3 = &unk_1F5D01448;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0;
  *(v3 + 308) = 0x7FFFFFFFLL;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0;
  *(v3 + 356) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::CustomSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 2, 1);
  *v1 = &unk_1F5D01448;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0;
  *(v1 + 308) = 0x7FFFFFFFLL;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0;
  *(v1 + 356) = 0x7FFFFFFFLL;
  return result;
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)126>::end(void *result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[1016].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[1016].i64[0] = v5;
      v6 = v3[1016].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[1016].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[1017] = vaddq_s64(v3[1017], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::ecs2::CustomSystem::TaskOptionsType,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::ecs2::CustomSystem::TaskOptionsType,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24), *(v17 + 8));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::ecs2::initECSCore(re::ecs2 *this)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(this);
  re::ecs2::ComponentTypeRegistry::init(v1);
  v3 = re::ecs2::CustomSystemRegistry::instance(v2);
  re::ecs2::CustomSystemRegistry::init(v3);
  v5 = re::ecs2::EntityFactory::instance(v4);
  v7 = re::ecs2::EntityFactory::init(v5, v6);
  v8 = re::introspectionSharedMutex(v7);
  std::__shared_mutex_base::lock(v8);
  if (!re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    SyncInfo = re::ecs2::AnchorComponent::makeSyncInfo(v9);
    re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(SyncInfo);
  }

  if (!re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::initComponentType(0);
  }

  if (!re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(0);
  }

  if (!re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(0);
  }

  std::__shared_mutex_base::unlock(v8);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(uint64_t a1)
{
  {
    re::introspect<re::ecs2::AnchorComponent>(BOOL)::info = re::ecs2::introspect_AnchorComponent(1, v8, v9, v10, v11, v12);
  }

  v2 = strlen(*(re::introspect<re::ecs2::AnchorComponent>(BOOL)::info + 6));
  v13[0] = re::ecs2::Component::dropComponentSuffix(*(re::introspect<re::ecs2::AnchorComponent>(BOOL)::info + 6), v2);
  v13[1] = v3;
  v4 = re::globalAllocators(v13[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = re::ecs2::ComponentType<re::ecs2::AnchorComponent>::ComponentType(v5, v13, 1, a1, 1, 2);
  v6 = re::ecs2::ComponentTypeRegistry::instance(re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  return re::ecs2::ComponentTypeRegistry::add(v6, re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::initComponentType(uint64_t a1)
{
  {
    re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info = re::ecs2::introspect_AnchoringComponent(1, v8, v9, v10, v11, v12);
  }

  v2 = strlen(*(re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info + 6));
  v13[0] = re::ecs2::Component::dropComponentSuffix(*(re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info + 6), v2);
  v13[1] = v3;
  v4 = re::globalAllocators(v13[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = re::ecs2::ComponentType<re::ecs2::AnchoringComponent>::ComponentType(v5, v13, 1, a1, 0, 4);
  v6 = re::ecs2::ComponentTypeRegistry::instance(re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  return re::ecs2::ComponentTypeRegistry::add(v6, re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 1);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(uint64_t a1)
{
  {
    re::introspect<re::ecs2::SceneComponent>(BOOL)::info = re::ecs2::introspect_SceneComponent(1, v8, v9, v10, v11, v12);
  }

  v2 = strlen(*(re::introspect<re::ecs2::SceneComponent>(BOOL)::info + 6));
  v13[0] = re::ecs2::Component::dropComponentSuffix(*(re::introspect<re::ecs2::SceneComponent>(BOOL)::info + 6), v2);
  v13[1] = v3;
  v4 = re::globalAllocators(v13[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = re::ecs2::ComponentType<re::ecs2::SceneComponent>::ComponentType(v5, v13, 1, a1, 0, 2);
  v6 = re::ecs2::ComponentTypeRegistry::instance(re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  return re::ecs2::ComponentTypeRegistry::add(v6, re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::initComponentType(uint64_t a1)
{
  {
    re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info = re::ecs2::introspect_CoordinateSpaceDefinitionComponent(1, v8, v9, v10, v11, v12);
  }

  v2 = strlen(*(re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info + 6));
  v13[0] = re::ecs2::Component::dropComponentSuffix(*(re::introspect<re::ecs2::CoordinateSpaceDefinitionComponent>(BOOL)::info + 6), v2);
  v13[1] = v3;
  v4 = re::globalAllocators(v13[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = re::ecs2::ComponentType<re::ecs2::CoordinateSpaceDefinitionComponent>::ComponentType(v5, v13, 1, a1, 0, 2);
  v6 = re::ecs2::ComponentTypeRegistry::instance(re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  return re::ecs2::ComponentTypeRegistry::add(v6, re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
}

void re::ecs2::deinitECSCore(re::ecs2 *this)
{
  if (re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    this = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(this);
  }

  if (re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    this = re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::deinitComponentType(this);
  }

  if (re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    this = re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(this);
  }

  if (re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    this = re::ecs2::ComponentImpl<re::ecs2::CoordinateSpaceDefinitionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::deinitComponentType(this);
  }

  v1 = re::ecs2::EntityFactory::instance(this);
  v2 = re::ecs2::EntityFactory::deinit(v1);
  v3 = re::ecs2::CustomSystemRegistry::instance(v2);
  re::ecs2::CustomSystemRegistry::deinit(v3);
  v5 = re::ecs2::ComponentTypeRegistry::instance(v4);

  re::ecs2::ComponentTypeRegistry::deinit(v5);
}