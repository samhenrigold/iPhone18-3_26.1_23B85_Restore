double re::internal::defaultConstruct<re::GeomBuildTubeOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.00000190734908;
  *(a3 + 4) = 0x3EC000003F800000;
  *(a3 + 12) = 1056964608;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildTubeOptions>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.00000190734908;
  *(a1 + 4) = 0x3EC000003F800000;
  *(a1 + 12) = 1056964608;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void re::introspect_GeomBuildExtrudedTextHorizontalAlignment(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6EC8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6ED0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7198, "GeomBuildExtrudedTextHorizontalAlignment", 1, 1, 1, 1);
      qword_1EE1B7198 = &unk_1F5D0C658;
      qword_1EE1B71D8 = &re::introspect_GeomBuildExtrudedTextHorizontalAlignment(BOOL)::enumTable;
      dword_1EE1B71A8 = 9;
      __cxa_guard_release(&qword_1EE1B6ED0);
    }

    if (byte_1EE1B6E11)
    {
      break;
    }

    byte_1EE1B6E11 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7198, a2);
    v39 = 0xF15D7D52F69102;
    v40 = "GeomBuildExtrudedTextHorizontalAlignment";
    v43 = 0x31CD534126;
    v44 = "uint8_t";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B71D8;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
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
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
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
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1B71B8 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v38);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B6EC8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Left";
      qword_1EE1B6F60 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Right";
      qword_1EE1B6F68 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Center";
      qword_1EE1B6F70 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "Justified";
      qword_1EE1B6F78 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "Natural";
      qword_1EE1B6F80 = v37;
      __cxa_guard_release(&qword_1EE1B6EC8);
    }
  }
}

void re::introspect_GeomBuildExtrudedTextVerticalAlignment(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6ED8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B71E0, "GeomBuildExtrudedTextVerticalAlignment", 1, 1, 1, 1);
      qword_1EE1B71E0 = &unk_1F5D0C658;
      qword_1EE1B7220 = &re::introspect_GeomBuildExtrudedTextVerticalAlignment(BOOL)::enumTable;
      dword_1EE1B71F0 = 9;
      __cxa_guard_release(&qword_1EE1B6EE0);
    }

    if (byte_1EE1B6E12)
    {
      break;
    }

    byte_1EE1B6E12 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B71E0, a2);
    v35 = 0xC42D07F67E9873DELL;
    v36 = "GeomBuildExtrudedTextVerticalAlignment";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7220;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B7200 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B6ED8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Top";
      qword_1EE1B6F08 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Bottom";
      qword_1EE1B6F10 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Center";
      qword_1EE1B6F18 = v33;
      __cxa_guard_release(&qword_1EE1B6ED8);
    }
  }
}

void re::introspect_GeomBuildExtrudedTextLineBreakMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6EE8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EF0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7228, "GeomBuildExtrudedTextLineBreakMode", 1, 1, 1, 1);
      qword_1EE1B7228 = &unk_1F5D0C658;
      qword_1EE1B7268 = &re::introspect_GeomBuildExtrudedTextLineBreakMode(BOOL)::enumTable;
      dword_1EE1B7238 = 9;
      __cxa_guard_release(&qword_1EE1B6EF0);
    }

    if (byte_1EE1B6E13)
    {
      break;
    }

    byte_1EE1B6E13 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7228, a2);
    v41 = 0x54FFABE001BC5B20;
    v42 = "GeomBuildExtrudedTextLineBreakMode";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7268;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
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
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
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
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1B7248 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B6EE8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "WordWrapping";
      qword_1EE1B6FE8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "CharWrapping";
      qword_1EE1B6FF0 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Clipping";
      qword_1EE1B6FF8 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "TruncatingHead";
      qword_1EE1B7000 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "TruncatingTail";
      qword_1EE1B7008 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "TruncatingMiddle";
      qword_1EE1B7010 = v39;
      __cxa_guard_release(&qword_1EE1B6EE8);
    }
  }
}

void *re::allocInfo_GeomBuildExtrudedTextOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7948, "GeomBuildExtrudedTextOptions");
    __cxa_guard_release(&qword_1EE1B6EF8);
  }

  return &unk_1EE1B7948;
}

void re::initInfo_GeomBuildExtrudedTextOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x69AC04806F0E6800;
  v55[1] = "GeomBuildExtrudedTextOptions";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE1B6F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6F00))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "textString";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B72C0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "fontName";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B72C8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "fontSize";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B72D0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "extrusionDepth";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4400000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B72D8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint8_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "segmentCountPerCurve";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x4800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B72E0 = v26;
    v27 = re::introspectionAllocator();
    v28 = re::introspect_Vector2F(1);
    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "textFrameOrigin";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x5000000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1B72E8 = v29;
    v30 = re::introspectionAllocator();
    v31 = re::introspect_Vector2F(1);
    v32 = (*(*v30 + 32))(v30, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "textFrameSize";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x5800000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1B72F0 = v32;
    v33 = re::introspectionAllocator();
    re::introspect_GeomBuildExtrudedTextLineBreakMode(v33, v34);
    v35 = (*(*v33 + 32))(v33, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "lineBreakMode";
    *(v35 + 16) = &qword_1EE1B7228;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x6000000008;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B72F8 = v35;
    v36 = re::introspectionAllocator();
    re::introspect_GeomBuildExtrudedTextHorizontalAlignment(v36, v37);
    v38 = (*(*v36 + 32))(v36, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "horizontalAlignment";
    *(v38 + 16) = &qword_1EE1B7198;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x6100000009;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B7300 = v38;
    v39 = re::introspectionAllocator();
    re::introspect_GeomBuildExtrudedTextVerticalAlignment(v39, v40);
    v41 = (*(*v39 + 32))(v39, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "verticalAlignment";
    *(v41 + 16) = &qword_1EE1B71E0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x620000000ALL;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1B7308 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::introspect_BOOL(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "generateSides";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x630000000BLL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1B7310 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_BOOL(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "generateBack";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0x640000000CLL;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE1B7318 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_BOOL(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "instanceGlyphs";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0x670000000DLL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE1B7320 = v53;
    __cxa_guard_release(&qword_1EE1B6F00);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1B72C0;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildExtrudedTextOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildExtrudedTextOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildExtrudedTextOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildExtrudedTextOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}

double re::internal::defaultConstruct<re::GeomBuildExtrudedTextOptions>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  v3[2] = 0u;
  v3[3] = 0u;
  v3 += 2;
  re::DynamicString::setCapacity(v3, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 4) = result;
  *(v3 + 40) = 5;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0;
  *(v3 + 64) = 0;
  *(v3 + 65) = 4;
  *(v3 + 67) = 16843009;
  *(v3 + 71) = 0;
  return result;
}

double re::internal::defaultDestruct<re::GeomBuildExtrudedTextOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::GeomBuildExtrudedTextOptions>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  re::DynamicString::setCapacity(v1, 0);
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 4) = result;
  *(v1 + 40) = 5;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0;
  *(v1 + 64) = 0;
  *(v1 + 65) = 4;
  *(v1 + 67) = 16843009;
  *(v1 + 71) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::GeomBuildExtrudedTextOptions>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

uint64_t re::computeManhattanDistanceToVertex(uint64_t a1, unsigned int a2, void *a3, void *a4, uint64_t a5, int16x4_t a6)
{
  v12 = v121;
  v139 = *MEMORY[0x1E69E9840];
  v116 = 2139095040;
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  re::DynamicArray<float>::resize(a5, *(a1 + 16), &v116, a6);
  v13 = a2;
  v14 = *(a5 + 16);
  if (v14 <= a2)
  {
    goto LABEL_176;
  }

  v114 = a5;
  *(*(a5 + 32) + 4 * a2) = 0;
  v15 = *(a1 + 16);
  memset(v121, 0, sizeof(v121));
  v126 = 0;
  *&v123[2] = 0u;
  v124 = 0u;
  v125 = 0;
  if (v15)
  {
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v121, v15);
  }

  v16 = re::DynamicArray<unsigned int>::resize(&v123[10], v15, &re::kInvalidMeshIndex);
  if (*(a1 + 16))
  {
    v14 = 0;
    i = 2139095040;
    v17 = 8;
    while (1)
    {
      v18 = *&v121[16] + 1;
      if (*&v121[16] >= *&v121[8] && *&v121[8] < v18)
      {
        if (*v121)
        {
          if (*&v121[8])
          {
            v25 = 2 * *&v121[8];
          }

          else
          {
            v25 = 8;
          }

          if (v25 <= v18)
          {
            v26 = *&v121[16] + 1;
          }

          else
          {
            v26 = v25;
          }

          v16 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v121, v26);
        }

        else
        {
          v16 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v121, v18);
          ++*&v121[24];
        }
      }

      v20 = (*&v123[2] + 8 * *&v121[16]);
      if (v14 == v13)
      {
        v21 = 0;
      }

      else
      {
        v21 = 2139095040;
      }

      *v20 = v14;
      v20[1] = v21;
      v22 = *&v121[16] + 1;
      ++*&v121[16];
      ++*&v121[24];
      v15 = *(&v124 + 1);
      if (*(&v124 + 1) <= v14)
      {
        goto LABEL_149;
      }

      v23 = v22 - 1;
      *(v126 + 4 * v14) = v22 - 1;
      if (v22 != 1)
      {
        break;
      }

LABEL_20:
      ++v14;
      v12 = v121;
      if (v14 >= *(a1 + 16))
      {
        goto LABEL_31;
      }
    }

    while (1)
    {
      v24 = v23 - 1;
      v15 = (v23 - 1) >> 1;
      v7 = *&v121[16];
      if (*&v121[16] <= v15)
      {
        goto LABEL_104;
      }

      v12 = v23;
      if (*&v121[16] <= v23)
      {
        break;
      }

      if (*(*&v123[2] + 8 * v15 + 4) > *(*&v123[2] + 8 * v23 + 4))
      {
        v23 = v24 >> 1;
        if (v24 > 1)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

LABEL_108:
    v13 = v121;
    *v127 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v118 = 136315906;
    *&v118[4] = "operator[]";
    *&v118[12] = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *&v118[14] = 789;
    *&v118[18] = 2048;
    *&v118[20] = v12;
    v119 = 2048;
    *v120 = v7;
    _os_log_send_and_compose_impl(v55, v127, &v134, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_112:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v104, v107);
    __break(1u);
LABEL_113:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v129 = 797;
    v130 = 2048;
    v131 = v13;
    v132 = 2048;
    v133 = v15;
    _os_log_send_and_compose_impl(v58, &v117, &v134, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v129 = 613;
    v130 = 2048;
    v131 = i;
    v132 = 2048;
    v133 = v115;
    _os_log_send_and_compose_impl(v61, &v117, &v134, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v117 = 0;
    v31 = v121;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = i;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v64, &v117, &v134, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v31;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v67, &v117, &v134, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v31;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v70, &v117, &v134, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v15;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v73, &v117, &v134, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v15;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v76, &v117, &v134, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = i;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v79, &v117, &v134, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v117 = 0;
    v13 = v121;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = i;
    v132 = 2048;
    v133 = v17;
    _os_log_send_and_compose_impl(v82, &v117, &v134, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    *(v12 + 10) = 0;
    v12[11] = 0u;
    v12[12] = 0u;
    v12[9] = 0u;
    v12[10] = 0u;
    v12[8] = 0u;
    v83 = MEMORY[0x1E69E9C10];
    v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v118 = 136315906;
    *&v118[4] = "operator[]";
    *&v118[12] = 1024;
    if (v84)
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    *&v118[14] = 789;
    *&v118[18] = 2048;
    *&v118[20] = v14;
    v119 = 2048;
    *v120 = v15;
    _os_log_send_and_compose_impl(v85, v127, &v134, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v105, v108);
    __break(1u);
LABEL_154:
    re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v106, v109);
    __break(1u);
LABEL_155:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = i;
    v132 = 2048;
    v133 = v13;
    _os_log_send_and_compose_impl(v88, &v117, &v134, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v7 = v29;
LABEL_160:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v7;
    v132 = 2048;
    v133 = v13;
    _os_log_send_and_compose_impl(v91, &v117, &v134, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_164:
    v117 = 0;
    v30 = v121;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v92 = MEMORY[0x1E69E9C10];
    v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v93)
    {
      v94 = 3;
    }

    else
    {
      v94 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = 0;
    v132 = 2048;
    v133 = 0;
    _os_log_send_and_compose_impl(v94, &v117, &v134, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
LABEL_168:
    v117 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    v95 = MEMORY[0x1E69E9C10];
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v127 = 136315906;
    *&v127[4] = "operator[]";
    v128 = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    v129 = 789;
    v130 = 2048;
    v131 = v30;
    v132 = 2048;
    v133 = v15;
    _os_log_send_and_compose_impl(v97, &v117, &v134, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
    _os_crash_msg();
    __break(1u);
    goto LABEL_172;
  }

LABEL_31:
  v113 = re::GeomMesh::accessVertexPositions(a1);
  v115 = v27;
  *&v120[2] = 0;
  memset(v118, 0, sizeof(v118));
  v13 = *&v121[16];
  if (!*&v121[16])
  {
    goto LABEL_92;
  }

  v12 = &v134;
  do
  {
    v7 = **&v123[2];
    v28 = *(*&v123[2] + 4);
    if (v13 == 1)
    {
      v29 = **&v123[2];
      *&v121[16] = 0;
      ++*&v121[24];
      v13 = *(&v124 + 1);
      if (*(&v124 + 1) <= v29)
      {
        goto LABEL_159;
      }

      goto LABEL_58;
    }

    i = v13 - 1;
    if (v13 <= i)
    {
      goto LABEL_155;
    }

    **&v123[2] = *(*&v123[2] + 8 * i);
    v17 = *&v121[16];
    if (!*&v121[16])
    {
      goto LABEL_164;
    }

    v15 = *(&v124 + 1);
    v30 = **&v123[2];
    if (*(&v124 + 1) <= v30)
    {
      goto LABEL_168;
    }

    *(v126 + 4 * v30) = 0;
    if (v17 < i)
    {
      if (*&v121[8] < i)
      {
        re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v121, i);
      }

LABEL_43:
      *&v121[16] = i;
      ++*&v121[24];
      v17 = i;
      goto LABEL_44;
    }

    if (v17 > i)
    {
      goto LABEL_43;
    }

LABEL_44:
    v27 = 0;
    for (i = 0; ; v27 = i)
    {
      v31 = (2 * v27) | 1u;
      if (v31 < v17)
      {
        if (v17 <= v31)
        {
          goto LABEL_125;
        }

        v15 = v27;
        if (v17 <= v27)
        {
          goto LABEL_133;
        }

        i = v27;
        if (*(*&v123[2] + 8 * v31 + 4) < *(*&v123[2] + 8 * v27 + 4))
        {
          i = (2 * v27) | 1u;
        }
      }

      v31 = (2 * v27 + 2);
      if (v31 < v17)
      {
        if (v17 <= v31)
        {
          goto LABEL_129;
        }

        v15 = i;
        if (v17 <= i)
        {
          goto LABEL_137;
        }

        if (*(*&v123[2] + 8 * v31 + 4) < *(*&v123[2] + 8 * i + 4))
        {
          i = (2 * v27 + 2);
        }
      }

      if (i == v27)
      {
        break;
      }

      v17 = *&v121[16];
    }

    v13 = *(&v124 + 1);
    v29 = v7;
    if (*(&v124 + 1) <= v7)
    {
      goto LABEL_160;
    }

LABEL_58:
    *(v126 + 4 * v29) = -1;
    *&v118[16] = 0;
    ++*&v118[24];
    if (v7)
    {
      v32 = (v7 - 1);
      v33 = a4;
      v34 = a4[1];
      if (v34 <= v32)
      {
        goto LABEL_154;
      }

      i = *(*a4 + 4 * v32);
    }

    else
    {
      i = 0;
      v33 = a4;
      v34 = a4[1];
    }

    if (v34 <= v7)
    {
      goto LABEL_153;
    }

    v17 = *(*v33 + 4 * v7);
    if (i < v17)
    {
      do
      {
        v35 = a3[1];
        if (v35 <= i)
        {
          goto LABEL_112;
        }

        v13 = *(*a3 + 4 * i);
        v15 = *(a1 + 40);
        if (v15 <= v13)
        {
          goto LABEL_113;
        }

        v36 = 0;
        v37 = *(a1 + 56) + 16 * v13;
        do
        {
          *(&v134 + v36) = *(v37 + v36);
          v36 += 4;
        }

        while (v36 != 16);
        v38 = 0;
        v39 = 3;
        if (HIDWORD(v134) != -1)
        {
          v39 = 4;
        }

        while (*(&v134 + v38) != v7)
        {
          if (v39 == ++v38)
          {
            goto LABEL_74;
          }
        }

        v13 = v39;
        re::DynamicArray<int>::add(v118, &v134 + (v38 + 1) % v39);
        re::DynamicArray<int>::add(v118, &v134 + (v13 + v38 - 1) % v13);
LABEL_74:
        ++i;
      }

      while (i != v17);
      if (*&v118[16])
      {
        if (v7 < v115)
        {
          v15 = *&v120[2];
          v40 = *&v120[2] + 4 * *&v118[16];
          while (1)
          {
            i = *v15;
            if (i >= v115)
            {
              goto LABEL_117;
            }

            v17 = *(v114 + 16);
            if (v17 <= i)
            {
              goto LABEL_121;
            }

            v41 = vsubq_f32(*(v113 + 16 * v7), *(v113 + 16 * i));
            v42 = vmulq_f32(v41, v41);
            v43 = v28 + sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
            v44 = *(v114 + 32);
            if (v43 < *(v44 + 4 * i))
            {
              *(v44 + 4 * i) = v43;
              v17 = *(&v124 + 1);
              if (*(&v124 + 1) <= i)
              {
                goto LABEL_141;
              }

              i = *(v126 + 4 * i);
              v17 = *&v121[16];
              if (*&v121[16] <= i)
              {
                goto LABEL_145;
              }

              *(*&v123[2] + 8 * i + 4) = v43;
              if (i)
              {
                break;
              }
            }

LABEL_87:
            v15 += 4;
            if (v15 == v40)
            {
              goto LABEL_88;
            }
          }

          while (1)
          {
            v14 = (i - 1);
            v17 = v14 >> 1;
            v45 = *&v121[16];
            if (*&v121[16] <= v17)
            {
              break;
            }

            if (*(*&v123[2] + 8 * v17 + 4) > v43)
            {
              i = v14 >> 1;
              if (v14 > 1)
              {
                continue;
              }
            }

            goto LABEL_87;
          }

          v117 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v134 = 0u;
          v47 = MEMORY[0x1E69E9C10];
          v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v127 = 136315906;
          *&v127[4] = "operator[]";
          v128 = 1024;
          if (v48)
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          v129 = 789;
          v130 = 2048;
          v131 = v14 >> 1;
          v132 = 2048;
          v133 = v45;
          _os_log_send_and_compose_impl(v49, &v117, &v134, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
LABEL_104:
          *v127 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v134 = 0u;
          v50 = MEMORY[0x1E69E9C10];
          v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v118 = 136315906;
          *&v118[4] = "operator[]";
          *&v118[12] = 1024;
          if (v51)
          {
            v52 = 3;
          }

          else
          {
            v52 = 2;
          }

          *&v118[14] = 789;
          *&v118[18] = 2048;
          *&v118[20] = v15;
          v119 = 2048;
          *v120 = v7;
          _os_log_send_and_compose_impl(v52, v127, &v134, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v118, 38, v110, v111);
          _os_crash_msg();
          __break(1u);
          goto LABEL_108;
        }

LABEL_172:
        v117 = 0;
        v13 = v121;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v134 = 0u;
        v98 = MEMORY[0x1E69E9C10];
        v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v127 = 136315906;
        *&v127[4] = "operator[]";
        v128 = 1024;
        if (v99)
        {
          v100 = 3;
        }

        else
        {
          v100 = 2;
        }

        v129 = 613;
        v130 = 2048;
        v131 = v7;
        v132 = 2048;
        v133 = v115;
        _os_log_send_and_compose_impl(v100, &v117, &v134, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v110, v111);
        _os_crash_msg();
        __break(1u);
LABEL_176:
        *v118 = 0;
        v12[11] = 0u;
        v12[12] = 0u;
        v12[9] = 0u;
        v12[10] = 0u;
        v12[8] = 0u;
        v101 = MEMORY[0x1E69E9C10];
        v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v121 = 136315906;
        *&v121[4] = "operator[]";
        *&v121[12] = 1024;
        if (v102)
        {
          v103 = 3;
        }

        else
        {
          v103 = 2;
        }

        *&v121[14] = 789;
        *&v121[18] = 2048;
        *&v121[20] = v13;
        v122 = 2048;
        *v123 = v14;
        _os_log_send_and_compose_impl(v103, v118, &v134, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v12, 38, v110, v111);
        _os_crash_msg();
        __break(1u);
      }
    }

LABEL_88:
    v13 = *&v121[16];
  }

  while (*&v121[16]);
  if (*v118 && *&v120[2])
  {
    (*(**v118 + 40))();
  }

LABEL_92:
  if (*&v123[10])
  {
    if (v126)
    {
      (*(**&v123[10] + 40))();
    }

    v126 = 0;
    v124 = 0uLL;
    *&v123[10] = 0;
    ++v125;
  }

  result = *v121;
  if (*v121 && *&v123[2])
  {
    return (*(**v121 + 40))();
  }

  return result;
}

void *re::anonymous namespace::PriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = this[2];
  if (v6 <= a2)
  {
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v12, &v29, &v38, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v3 = a3;
  if (v6 <= a3)
  {
LABEL_12:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v15, &v29, &v38, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v7 = this[4];
  v8 = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = v8;
  v6 = this[2];
  if (v6 <= a2)
  {
LABEL_16:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v18, &v29, &v38, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v9 = this[4];
  v4 = *(v9 + 8 * a2);
  v5 = this[7];
  if (v5 <= v4)
  {
LABEL_20:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v4;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v10 = this[9];
  *(v10 + 4 * v4) = a2;
  if (v6 <= a3)
  {
LABEL_24:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v9 + 8 * a3);
  if (v5 <= v3)
  {
    goto LABEL_28;
  }

  *(v10 + 4 * v3) = a3;
  return this;
}

uint64_t re::mergeVertices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v237 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = a1;
  v12 = v217;
  if (*a3 == 1)
  {
    v13 = *(a3 + 8);
    v218 = 0;
    memset(v217, 0, 44);
    v14 = re::GeomMesh::accessVertexPositions(v11);
    if (!v15)
    {
      goto LABEL_252;
    }

    re::internal::GeomKDTree<re::Vector3<float>>::build(v217, *(v11 + 16), v14);
    v3 = *(v11 + 16);
    re::DynamicArray<float>::resize(a2, v3);
    if (v3)
    {
      v16 = 0;
      v17 = *(a2 + 16);
      v18 = *(a2 + 32);
      while (v17 != v16)
      {
        *(v18 + 4 * v16) = v16;
        if (v3 == ++v16)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_212;
    }

LABEL_8:
    v19 = re::GeomMesh::accessVertexPositions(v11);
    v224 = 0;
    v221 = 0;
    v219 = 0;
    v220 = 0;
    v222 = 0;
    if (v3)
    {
      v4 = v19;
      v17 = 0;
      v12 = 0;
      v21 = v13;
      v5 = v20;
      do
      {
        v6 = *(a2 + 16);
        if (v6 <= v17)
        {
          goto LABEL_216;
        }

        if (v17 == *(*(a2 + 32) + 4 * v17))
        {
          if (v17 >= v5)
          {
            goto LABEL_228;
          }

          v221 = 0;
          ++v222;
          if (*&v217[32])
          {
            re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(v217, v218, (v4 + 16 * v17), &v219, v21);
            v6 = v221;
            if (v221)
            {
              v7 = 0;
              v22 = 1;
              do
              {
                v23 = LODWORD(v224[v7]);
                if (v17 != v23)
                {
                  v6 = v221;
                  if (v24)
                  {
                    if (v221 <= v7)
                    {
                      goto LABEL_204;
                    }

                    v7 = LODWORD(v224[v7]);
                    v8 = *(a2 + 16);
                    if (v8 <= v7)
                    {
                      goto LABEL_208;
                    }

                    *(*(a2 + 32) + 4 * v7) = v17;
                    v12 = (v12 + 1);
                  }
                }

                v7 = v22;
                v25 = v6 > v22++;
              }

              while (v25);
            }
          }
        }

        ++v17;
      }

      while (v17 != v3);
      if (v219 && v224)
      {
        (*(*v219 + 40))();
      }
    }

    else
    {
      v12 = 0;
    }

    v69 = *&v217[16];
    if (*&v217[16] && v218)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

  v26 = *(a3 + 8);
  re::computeAABB(&v210, v11);
  v6 = *(v11 + 16);
  v27 = re::DynamicArray<unsigned int>::resize(a2, v6, &re::kInvalidMeshIndex);
  v28 = vsubq_f32(v211, v210);
  v29 = vmulq_f32(v28, v28);
  if ((v29.f32[2] + vaddv_f32(*v29.f32)) <= 0.0)
  {
    if (!v173 && !v191)
    {
      v68 = *(a2 + 16);
      if (v68 >= 1)
      {
        bzero(*(a2 + 32), 4 * v68);
      }

      if (v6)
      {
        v12 = (v6 - 1);
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_129;
    }

    if (!v6)
    {
      v12 = 0;
      goto LABEL_129;
    }

    v70 = 0;
    v17 = *(a2 + 16);
    v71 = *(a2 + 32);
    while (v17 != v70)
    {
      *(v71 + 4 * v70) = v70;
      if (v6 == ++v70)
      {
        v3 = 0;
        v12 = 0;
        v72 = 1;
        while (1)
        {
          v4 = *(a2 + 16);
          if (v4 <= v3)
          {
            goto LABEL_244;
          }

          v73 = v3 + 1;
          if (v3 + 1 < v6 && v3 == *(*(a2 + 32) + 4 * v3))
          {
            v4 = v72;
            do
            {
              {
                v5 = *(a2 + 16);
                if (v5 <= v4)
                {
                  goto LABEL_188;
                }

                *(*(a2 + 32) + 4 * v4) = v3;
                v12 = (v12 + 1);
              }

              ++v4;
            }

            while (v6 != v4);
          }

          ++v72;
          ++v3;
          if (v73 == v6)
          {
            goto LABEL_129;
          }
        }
      }
    }

LABEL_232:
    v219 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v217[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *(v12 + 14) = 789;
    *&v217[18] = 2048;
    *(v12 + 20) = v17;
    *&v217[28] = 2048;
    *(v12 + 30) = v17;
    _os_log_send_and_compose_impl(v143, &v219, &v232, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
    goto LABEL_236;
  }

  v224 = 0;
  v221 = 0;
  v220 = 0;
  v222 = 0;
  re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v219, v6);
  ++v222;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v212, 4518, *(v11 + 16), *(v11 + 40), *(v11 + 8), *(v11 + 40) - *(v11 + 8));
  v30 = 0;
  *v217 = xmmword_1E30A0F90;
  *&v217[16] = xmmword_1E3047680;
  *&v217[32] = xmmword_1E30A0FA0;
  do
  {
    *(&v232 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*&v217[v30])), xmmword_1E30A0FB0, *&v217[v30], 1), xmmword_1E30A0FC0, *&v217[v30], 2);
    v30 += 16;
  }

  while (v30 != 48);
  v31 = 0;
  v32 = v232;
  v33 = v233;
  v34 = v234;
  *v217 = xmmword_1E30A0FD0;
  *&v217[16] = xmmword_1E30A0FE0;
  *&v217[32] = xmmword_1E30476A0;
  do
  {
    *(&v232 + v31) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*&v217[v31])), v33, *&v217[v31], 1), v34, *&v217[v31], 2);
    v31 += 16;
  }

  while (v31 != 48);
  v163 = v232;
  v165 = v233;
  v168 = v234;
  v170 = v210;
  v161 = v211;
  v4 = *(v11 + 16);
  v35 = re::GeomMesh::accessVertexPositions(v11);
  v3 = v221;
  if (v4)
  {
    v37 = 0;
    v38 = vsubq_f32(v161, v170);
    v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v163, v38.f32[0]), v165, *v38.f32, 1), v168, v38, 2);
    v40 = vmulq_f32(v39, v39);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v41);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
    v42 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v17 = v36;
    v43 = v224 + 2;
    while (1)
    {
      if (v3 == v37)
      {
        goto LABEL_220;
      }

      *(v43 - 2) = v37;
      *(v43 - 1) = v37;
      if (v36 == v37)
      {
        break;
      }

      v44 = vmulq_f32(v42, vsubq_f32(*(v35 + v37), v170));
      *v43 = v44.f32[2] + vaddv_f32(*v44.f32);
      v43 += 3;
      if (v4 == ++v37)
      {
        goto LABEL_37;
      }
    }

LABEL_224:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v217[12] = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *(v12 + 14) = 613;
    *&v217[18] = 2048;
    *(v12 + 20) = v17;
    *&v217[28] = 2048;
    *(v12 + 30) = v17;
    _os_log_send_and_compose_impl(v137, v225, &v232, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_228:
    v210.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    v226 = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    v227 = 613;
    v228 = 2048;
    v229 = v17;
    v230 = 2048;
    v231 = v5;
    _os_log_send_and_compose_impl(v140, &v210, &v232, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
    goto LABEL_232;
  }

LABEL_37:
  v164 = v6;
  v169 = a2;
  if (v3 < 0x100)
  {
    v45 = 126 - 2 * __clz(v3);
    if (v3)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_42;
  }

  v167 = v11;
  v214 = 0;
  v213 = 0;
  v215 = 0;
  *&v217[32] = 0;
  memset(v217, 0, 28);
  v8 = 0;
  v5 = *&v217[32];
  v12 = 12;
  v4 = *&v217[16];
  v172 = *v217;
  do
  {
    v7 = v215;
    v74 = v214;
    v75 = v214 - 1;
    if (v214 >= 1)
    {
      bzero(v215, 4 * v214);
    }

    v76 = 0;
    v6 = v221;
    v77 = v224;
    v78 = 8 * v8;
    v79 = 1;
    do
    {
      if (v6 <= v76)
      {
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v87 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        v227 = 789;
        v228 = 2048;
        v229 = v76;
        v230 = 2048;
        v231 = v6;
        _os_log_send_and_compose_impl(v89, &v216, &v232, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_164:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        v227 = 468;
        v228 = 2048;
        v229 = v76;
        v230 = 2048;
        v231 = v74;
        _os_log_send_and_compose_impl(v92, &v216, &v232, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_168:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v93 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        v227 = 468;
        v228 = 2048;
        v229 = v74;
        v230 = 2048;
        v231 = v74;
        _os_log_send_and_compose_impl(v95, &v216, &v232, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_172:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v96 = MEMORY[0x1E69E9C10];
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        v227 = 789;
        v228 = 2048;
        v229 = v76;
        v230 = 2048;
        v231 = v6;
        _os_log_send_and_compose_impl(v98, &v216, &v232, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_176:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v99 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        v227 = 468;
        v228 = 2048;
        v229 = v76;
        v230 = 2048;
        v231 = v74;
        _os_log_send_and_compose_impl(v101, &v216, &v232, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_180:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v102 = MEMORY[0x1E69E9C10];
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        v227 = 789;
        v228 = 2048;
        v229 = v7;
        v230 = 2048;
        v231 = v4;
        _os_log_send_and_compose_impl(v104, &v216, &v232, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_184:
        v216 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v105 = MEMORY[0x1E69E9C10];
        v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v225 = 136315906;
        *&v225[4] = "operator[]";
        v226 = 1024;
        if (v106)
        {
          v107 = 3;
        }

        else
        {
          v107 = 2;
        }

        v227 = 468;
        v228 = 2048;
        v229 = v76;
        v230 = 2048;
        v231 = v74;
        _os_log_send_and_compose_impl(v107, &v216, &v232, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v161.u64[0], v161.u64[1]);
        _os_crash_msg();
        __break(1u);
LABEL_188:
        v219 = 0;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v232 = 0u;
        v108 = MEMORY[0x1E69E9C10];
        v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v217 = 136315906;
        *&v217[4] = "operator[]";
        *&v217[12] = 1024;
        if (v109)
        {
          v110 = 3;
        }

        else
        {
          v110 = 2;
        }

        *&v217[14] = 789;
        *&v217[18] = 2048;
        *&v217[20] = v4;
        *&v217[28] = 2048;
        *&v217[30] = v5;
        _os_log_send_and_compose_impl(v110, &v219, &v232, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v160, v162);
        _os_crash_msg();
        __break(1u);
        goto LABEL_192;
      }

      v76 = (LODWORD(v77[3 * v76 + 2]) >> v78) + 1;
      if (v74 <= v76)
      {
        goto LABEL_164;
      }

      ++*(v7 + 4 * v76);
      v76 = v79;
      v25 = v3 > v79++;
    }

    while (v25);
    for (i = 0; i != 255; ++i)
    {
      if (v75 == i)
      {
        goto LABEL_168;
      }

      *(v7 + 4 * i + 4) += *(v7 + 4 * i);
    }

    v76 = 0;
    v81 = 1;
    do
    {
      if (v6 <= v76)
      {
        goto LABEL_172;
      }

      v82 = &v77[3 * v76];
      v76 = (*(v82 + 2) >> v78);
      if (v74 <= v76)
      {
        goto LABEL_176;
      }

      v7 = *(v7 + 4 * v76);
      if (v4 <= v7)
      {
        goto LABEL_180;
      }

      v83 = v5 + 12 * v7;
      v84 = *v82;
      *(v83 + 8) = v82[2];
      *v83 = v84;
      v74 = v214;
      if (v214 <= v76)
      {
        goto LABEL_184;
      }

      v7 = v215;
      ++*(v215 + v76);
      v76 = v81;
      v25 = v3 > v81++;
    }

    while (v25);
    if (v219)
    {
      a2 = v169;
      v85 = v172;
      if (v172)
      {
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(&v219, v217);
      }

      else
      {
        v221 = 0;
      }

      ++v222;
    }

    else
    {
      a2 = v169;
      v85 = v172;
      if (v172)
      {
        v219 = v172;
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(&v219, v4);
        ++v222;
        re::DynamicArray<re::AnimationLibraryMeshMappingData>::copy(&v219, v217);
      }
    }

    v8 = (v8 + 1);
  }

  while (v8 != 4);
  if (v85)
  {
    (*(*v85 + 40))(v85, v5);
  }

  if (v213 && v214)
  {
    (*(*v213 + 40))();
  }

  v11 = v167;
LABEL_42:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v212, v47, v48);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v225, 4520, *(v11 + 16), *(v11 + 40), *(v11 + 8), *(v11 + 40) - *(v11 + 8));
  v7 = *(v11 + 16);
  v49 = re::GeomMesh::accessVertexPositions(v11);
  if (v7)
  {
    v3 = v49;
    v12 = v50;
    v52 = 0;
    v53 = v26 * v26;
    v54 = v221;
    v166 = v224;
    v8 = (v224 + 5);
    v6 = 1;
    while (1)
    {
      if (v52 == v54)
      {
        goto LABEL_248;
      }

      v55 = &v166[3 * v52];
      v56 = v52 + 1;
      v171 = v56;
      if (*v55 == *(v55 + 1) && v56 < v7)
      {
        break;
      }

LABEL_58:
      ++v6;
      v8 += 12;
      v52 = v171;
      a2 = v169;
      if (v171 == v7)
      {
        goto LABEL_59;
      }
    }

    v58 = v8;
    v17 = v6;
    while (v54 != v17)
    {
      if (((*v58 - v55[2]) * (*v58 - v55[2])) > v53)
      {
        goto LABEL_58;
      }

      v4 = *v55;
      if (v4 >= v12)
      {
        goto LABEL_196;
      }

      v5 = *(v58 - 2);
      if (v5 >= v12)
      {
        goto LABEL_200;
      }

      v59 = vsubq_f32(*(v3 + 16 * v4), *(v3 + 16 * v5));
      v60 = vmulq_f32(v59, v59);
      if ((v60.f32[2] + vaddv_f32(*v60.f32)) <= v53)
      {
        v5 = v54;
        v54 = v5;
        if (v61)
        {
          *(v58 - 1) = v4;
        }
      }

      ++v17;
      v58 += 3;
      if (v7 == v17)
      {
        goto LABEL_58;
      }
    }

LABEL_192:
    v213 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v17 = v54;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v17;
    *&v217[28] = 2048;
    *&v217[30] = v17;
    _os_log_send_and_compose_impl(v113, &v213, &v232, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_196:
    v213 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v217[14] = 613;
    *&v217[18] = 2048;
    *&v217[20] = v4;
    *&v217[28] = 2048;
    *&v217[30] = v12;
    _os_log_send_and_compose_impl(v116, &v213, &v232, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_200:
    v213 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v217[14] = 613;
    *&v217[18] = 2048;
    *&v217[20] = v5;
    *&v217[28] = 2048;
    *&v217[30] = v12;
    _os_log_send_and_compose_impl(v119, &v213, &v232, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_204:
    v210.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    v226 = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    v227 = 789;
    v228 = 2048;
    v229 = v7;
    v230 = 2048;
    v231 = v6;
    _os_log_send_and_compose_impl(v122, &v210, &v232, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
LABEL_208:
    v210.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    v226 = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    v227 = 789;
    v228 = 2048;
    v229 = v7;
    v230 = 2048;
    v231 = v8;
    _os_log_send_and_compose_impl(v125, &v210, &v232, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
LABEL_212:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v219) = 136315906;
    *(v12 + 68) = "operator[]";
    WORD2(v220) = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *(v12 + 78) = 789;
    WORD1(v221) = 2048;
    *(v12 + 84) = v17;
    v223 = 2048;
    *(v12 + 94) = v17;
    _os_log_send_and_compose_impl(v128, v225, &v232, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v219, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
LABEL_216:
    v210.i64[0] = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v225 = 136315906;
    *&v225[4] = "operator[]";
    v226 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v227 = 789;
    v228 = 2048;
    v229 = v17;
    v230 = 2048;
    v231 = v6;
    _os_log_send_and_compose_impl(v131, &v210, &v232, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
LABEL_220:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *(v12 + 4) = "operator[]";
    *&v217[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *(v12 + 14) = 789;
    *&v217[18] = 2048;
    *(v12 + 20) = v3;
    *&v217[28] = 2048;
    *(v12 + 30) = v3;
    _os_log_send_and_compose_impl(v134, v225, &v232, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_224;
  }

LABEL_59:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v225, v50, v51);
  v62 = v164;
  if (v164)
  {
    v12 = 0;
    v17 = v221;
    v3 = *(a2 + 16);
    v63 = *(a2 + 32);
    v64 = v224 + 1;
    v65 = v221;
    while (v65)
    {
      v4 = *(v64 - 1);
      if (v3 <= v4)
      {
        goto LABEL_240;
      }

      v67 = *v64;
      v64 += 3;
      v66 = v67;
      if (v4 == v67)
      {
        v12 = v12;
      }

      else
      {
        v12 = (v12 + 1);
      }

      *(v63 + 4 * v4) = v66;
      --v65;
      if (!--v62)
      {
        goto LABEL_126;
      }
    }

LABEL_236:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v17;
    *&v217[28] = 2048;
    *&v217[30] = v17;
    _os_log_send_and_compose_impl(v146, v225, &v232, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_240:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v4;
    *&v217[28] = 2048;
    *&v217[30] = v3;
    _os_log_send_and_compose_impl(v149, v225, &v232, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    v219 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v3;
    *&v217[28] = 2048;
    *&v217[30] = v4;
    _os_log_send_and_compose_impl(v152, &v219, &v232, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    v213 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = v54;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v217 = 136315906;
    *&v217[4] = "operator[]";
    *&v217[12] = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *&v217[14] = 789;
    *&v217[18] = 2048;
    *&v217[20] = v154;
    *&v217[28] = 2048;
    *&v217[30] = v154;
    _os_log_send_and_compose_impl(v156, &v213, &v232, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v217, 38, v161.u64[0], v161.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_252:
    *v225 = 0;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v232 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v219) = 136315906;
    *(v12 + 68) = "operator[]";
    WORD2(v220) = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    *(v12 + 78) = 613;
    WORD1(v221) = 2048;
    *(v12 + 84) = 0;
    v223 = 2048;
    *(v12 + 94) = 0;
    _os_log_send_and_compose_impl(v159, v225, &v232, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v219, 38, v160, v162);
    _os_crash_msg();
    __break(1u);
  }

  v12 = 0;
LABEL_126:
  v69 = v219;
  if (v219 && v224)
  {
LABEL_128:
    (*(*v69 + 40))(v69);
  }

LABEL_129:
  if (v186)
  {
    if (v190)
    {
      (*(*v186 + 40))();
    }

    v190 = 0;
    v187 = 0;
    v188 = 0;
    v186 = 0;
    ++v189;
  }

  if (v181)
  {
    if (v185)
    {
      (*(*v181 + 40))();
    }

    v185 = 0;
    v182 = 0;
    v183 = 0;
    v181 = 0;
    ++v184;
  }

  if (v176)
  {
    if (v180)
    {
      (*(*v176 + 40))();
    }

    v180 = 0;
    v177 = 0;
    v178 = 0;
    v176 = 0;
    ++v179;
  }

  if (v174 && v175)
  {
    (*(*v174 + 40))();
  }

  if (v205)
  {
    if (v209)
    {
      (*(*v205 + 40))();
    }

    v209 = 0;
    v206 = 0;
    v207 = 0;
    v205 = 0;
    ++v208;
  }

  if (v200)
  {
    if (v204)
    {
      (*(*v200 + 40))();
    }

    v204 = 0;
    v201 = 0;
    v202 = 0;
    v200 = 0;
    ++v203;
  }

  if (v195)
  {
    if (v199)
    {
      (*(*v195 + 40))();
    }

    v199 = 0;
    v196 = 0;
    v197 = 0;
    v195 = 0;
    ++v198;
  }

  if (v193 && v194)
  {
    (*(*v193 + 40))();
  }

  return v12;
}

uint64_t re::anonymous namespace::CompareAttributes::CompareAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *a1 = 0x101010100000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  *(a1 + 136) = 0;
  v8 = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 200) = 0;
  v9 = a1 + 200;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = -1;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = -1;
  *(a1 + 264) = 0;
  if (*(a3 + 1) != 1)
  {
    goto LABEL_45;
  }

  v10 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexUV");
  if (!v10)
  {
    goto LABEL_45;
  }

  v12 = v10;
  v13 = *(v10 + 16);
  if ((v13 & 0xFFFFFFFD) != 1)
  {
    goto LABEL_45;
  }

  *(a1 + 4) = 0;
  ++*a1;
  if (v13 == 1)
  {
    *(a1 + 48) = re::accessVertexUVs(a2, v11);
    *(a1 + 56) = v14;
    *(a1 + 64) = *(a3 + 12) * *(a3 + 12);
    goto LABEL_45;
  }

  v58 = v7;
  v59 = v8;
  v15 = &v72;
  v60 = *(a2 + 16);
  v16 = v60;
  *(a1 + 24) = 0;
  ++*(a1 + 32);
  re::DynamicArray<unsigned int>::resize(v6, v16, &v60);
  if ((*(*v12 + 16))(v12))
  {
    if (!*(v12 + 40))
    {
      goto LABEL_78;
    }

    (*(*v12 + 16))(v12);
  }

  v15 = *(a2 + 40);
  if (!v15)
  {
LABEL_44:
    v7 = v58;
    v8 = v59;
LABEL_45:
    if (*(a3 + 2) == 1)
    {
      v33 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexNormal");
      if (v33)
      {
        v34 = *(v33 + 16);
        if ((v34 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 5) = 0;
          ++*a1;
          if (v34 == 1)
          {
            *(a1 + 120) = v35;
            *(a1 + 128) = cosf(*(a3 + 16));
          }

          else
          {
          }
        }
      }
    }

    if (*(a3 + 3) == 1)
    {
      v36 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexTangent");
      if (v36)
      {
        v37 = *(v36 + 16);
        if ((v37 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 6) = 0;
          ++*a1;
          if (v37 == 1)
          {
            *(a1 + 184) = v38;
            *(a1 + 192) = *(a3 + 20) * *(a3 + 20);
          }

          else
          {
          }
        }
      }
    }

    if (*(a3 + 4) == 1)
    {
      v39 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "vertexBitangent");
      if (v39)
      {
        v40 = *(v39 + 16);
        if ((v40 & 0xFFFFFFFD) == 1)
        {
          *(a1 + 7) = 0;
          ++*a1;
          if (v40 == 1)
          {
            *(a1 + 248) = v41;
            *(a1 + 256) = *(a3 + 24) * *(a3 + 24);
          }

          else
          {
          }
        }
      }
    }

    v42 = *(a3 + 32);
    if (v42)
    {
      *(a1 + 264) = v42;
    }

    return a1;
  }

  v18 = 0;
  while (1)
  {
    LODWORD(v72) = v18;
    v19 = *(v12 + 204);
    if (v19 == 2)
    {
      break;
    }

    if (v19 == 1)
    {
      if (*(v12 + 224) > v18)
      {
        v20 = (*(v12 + 240) + 4 * v18);
        goto LABEL_20;
      }
    }

    else
    {
      if (*(v12 + 204))
      {
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_83;
      }

      if (v18 < *(v12 + 208))
      {
        goto LABEL_22;
      }
    }

LABEL_43:
    ++v18;
    v15 = *(a2 + 40);
    if (v18 >= v15)
    {
      goto LABEL_44;
    }
  }

  v21 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v12 + 208), &v72);
  if (v21 == -1)
  {
    goto LABEL_43;
  }

  v20 = (*(v12 + 216) + 8 * v21 + 4);
LABEL_20:
  if (*v20 == -1)
  {
    goto LABEL_43;
  }

  v15 = *(a2 + 40);
LABEL_22:
  *&v62 = -1;
  *(&v62 + 1) = -1;
  if (v15 <= v18)
  {
    goto LABEL_70;
  }

  v15 = v18;
  v63 = *(*(a2 + 56) + 16 * v18);
  v22 = HIDWORD(v63);
  LODWORD(v72) = v18;
  v23 = *(v12 + 204);
  if (v23 == 2)
  {
    v25 = HIDWORD(v63);
    v26 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v12 + 208), &v72);
    v22 = v25;
    if (v26 == -1)
    {
      goto LABEL_35;
    }

    v24 = (*(v12 + 216) + 8 * v26 + 4);
LABEL_32:
    v15 = *v24;
    if (v15 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v23 == 1)
  {
    if (*(v12 + 224) <= v18)
    {
      goto LABEL_35;
    }

    v24 = (*(v12 + 240) + 4 * v18);
    goto LABEL_32;
  }

  if (!*(v12 + 204))
  {
    if (v18 >= *(v12 + 208))
    {
      goto LABEL_35;
    }

LABEL_33:
    v7 = *(v12 + 88);
    if (v7 <= v15)
    {
      goto LABEL_74;
    }

    v62 = *(*(v12 + 104) + 16 * v15);
LABEL_35:
    v27 = 0;
    v15 = *(a1 + 24);
    v28 = *(a1 + 40);
    v29 = v22 == -1;
    v30 = 3;
    if (!v29)
    {
      v30 = 4;
    }

    while (2)
    {
      v7 = *(&v63 + v27);
      if (v15 <= v7)
      {
        v61 = 0;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v64 = 136315906;
        v65 = "operator[]";
        v66 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v67 = 789;
        v68 = 2048;
        v69 = v7;
        v70 = 2048;
        v71 = v15;
        _os_log_send_and_compose_impl(v46, &v61, &v72, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
LABEL_70:
        *&v63 = 0;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        v47 = MEMORY[0x1E69E9C10];
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v64 = 136315906;
        v65 = "operator[]";
        v66 = 1024;
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v67 = 797;
        v68 = 2048;
        v69 = v18;
        v70 = 2048;
        v71 = v15;
        _os_log_send_and_compose_impl(v49, &v63, &v72, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
LABEL_74:
        v61 = 0;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v64 = 136315906;
        v65 = "operator[]";
        v66 = 1024;
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        v67 = 797;
        v68 = 2048;
        v69 = v15;
        v70 = 2048;
        v71 = v7;
        _os_log_send_and_compose_impl(v52, &v61, &v72, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
LABEL_78:
        *&v63 = 0;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v64 = 136315906;
        v65 = "operator[]";
        v66 = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        v67 = 797;
        v68 = 2048;
        v69 = 0;
        v70 = 2048;
        v71 = 0;
        _os_log_send_and_compose_impl(v55, &v63, &v72, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v56, v57);
        _os_crash_msg();
        __break(1u);
      }

      v31 = *(&v62 + v27);
      v32 = *(v28 + 4 * v7);
      if (v32 == v60)
      {
LABEL_41:
        *(v28 + 4 * v7) = v31;
      }

      else if (v32 != v31)
      {
        v31 = -1;
        goto LABEL_41;
      }

      if (v30 == ++v27)
      {
        goto LABEL_43;
      }

      continue;
    }
  }

LABEL_83:
  re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::mergeVertices(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v112;
  v122 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 16);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v98, 4516, *(a1 + 16), *(a1 + 40), *(a1 + 8), *(a1 + 40) - *(a1 + 8));
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v10 = re::mergeVertices(a1, a3, a4);
  v11 = v10;
  if (v10)
  {
    v86 = v10;
    v83 = *a1;
    v85 = a2;
    if (*a1)
    {
      v12 = *a1;
    }

    else
    {
      v12 = "";
    }

    v8 = *(a1 + 16);
    v94 = 0;
    v91[1] = 0;
    v92 = 0;
    v90 = 0;
    v91[0] = 0;
    v93 = 0;
    v87[1] = 0;
    v88 = 0;
    v87[0] = 0;
    v89 = 0;
    re::DynamicArray<float>::resize(v91, v8);
    v13 = re::DynamicArray<unsigned int>::resize(v87, v8, &re::kInvalidMeshIndex);
    if (v8)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(a3 + 16);
      v17 = *(a3 + 32);
      v18 = v88;
      v19 = v90;
      v20 = v92;
      v21 = v94;
      while (1)
      {
        if (v16 == v14)
        {
          goto LABEL_69;
        }

        a2 = *(v17 + 4 * v14);
        if (v18 <= a2)
        {
          break;
        }

        v22 = *(v19 + 4 * a2);
        if (v22 == -1)
        {
          *(v19 + 4 * a2) = v15;
          v22 = v15++;
        }

        *(v17 + 4 * v14) = v22;
        if (v20 == v14)
        {
          goto LABEL_77;
        }

        *(v21 + 4 * v14) = v14;
        if (v8 == ++v14)
        {
          goto LABEL_20;
        }
      }

LABEL_73:
      *v112 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v61 = MEMORY[0x1E69E9C10];
      v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v119[0] = 136315906;
      *&v119[1] = "operator[]";
      LOWORD(v119[3]) = 1024;
      if (v62)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      *(&v119[3] + 2) = 789;
      HIWORD(v119[4]) = 2048;
      *&v119[5] = a2;
      LOWORD(v119[7]) = 2048;
      *(&v119[7] + 2) = v18;
      _os_log_send_and_compose_impl(v63, v112, &v101, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
LABEL_77:
      *v112 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v119[0] = 136315906;
      *&v119[1] = "operator[]";
      LOWORD(v119[3]) = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      *(&v119[3] + 2) = 789;
      HIWORD(v119[4]) = 2048;
      *&v119[5] = v20;
      LOWORD(v119[7]) = 2048;
      *(&v119[7] + 2) = v20;
      _os_log_send_and_compose_impl(v66, v112, &v101, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
LABEL_81:
      *&v100 = 0;
      v120 = 0u;
      v121 = 0u;
      memset(v119, 0, sizeof(v119));
      v67 = MEMORY[0x1E69E9C10];
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v112 = 136315906;
      *&v112[4] = "operator[]";
      v113 = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      v114 = 797;
      v115 = 2048;
      v116 = a2;
      v117 = 2048;
      v118 = a2;
      _os_log_send_and_compose_impl(v69, &v100, v119, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v99 = 0;
      v25 = v112;
      v120 = 0u;
      v121 = 0u;
      memset(v119, 0, sizeof(v119));
      v70 = MEMORY[0x1E69E9C10];
      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v112 = 136315906;
      *&v112[4] = "operator[]";
      v113 = 1024;
      if (v71)
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      v114 = 789;
      v115 = 2048;
      v116 = v18;
      v117 = 2048;
      v118 = v18;
      _os_log_send_and_compose_impl(v72, &v99, v119, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
      goto LABEL_89;
    }

    v15 = 0;
LABEL_20:
    LODWORD(v101) = 0;
    *(&v103 + 1) = 0;
    v102 = 0uLL;
    LODWORD(v103) = 0;
    re::DynamicArray<re::BlendNode>::setCapacity(&v101 + 1, 1uLL);
    LODWORD(v103) = v103 + 1;
    re::internal::GeomAttributeManager::GeomAttributeManager(&v104);
    LODWORD(v101) = v15;
    v106 = v15;
    if (v107)
    {
      v29 = v108;
      v30 = 8 * v107;
      do
      {
        v31 = *v29++;
        (*(*v31 + 80))(v31, v106);
        v30 -= 8;
      }

      while (v30);
    }

    if (*(a1 + 640))
    {
      for (i = 0; i < *(a1 + 640); ++i)
      {
        v33 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), i);
        if (*(v33 + 16) == 1)
        {
          v34 = v33;
          v35 = re::internal::GeomAttributeManager::addAttribute(&v104, *(v33 + 8), 1, *(v33 + 17));
          if (!v92)
          {
            goto LABEL_93;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_97;
          }

          (*(*v34 + 40))(v34, v35, v8, v94, *(a3 + 32));
        }
      }
    }

    v36 = *(a1 + 40);
    v8 = v36;
    re::DynamicArray<re::GeomCell4>::resize(&v101 + 1, v36);
    v109 = v36;
    if (v110)
    {
      v37 = v111;
      v38 = 8 * v110;
      do
      {
        v39 = *v37++;
        (*(*v39 + 80))(v39, v109);
        v38 -= 8;
      }

      while (v38);
    }

    if (v36)
    {
      v40 = 0;
      a2 = *(a1 + 40);
      v41 = *(a1 + 56);
      v42 = *(a3 + 16);
      v18 = *(&v102 + 1);
      v43 = *(&v103 + 1);
      do
      {
        if (v40 == a2)
        {
          goto LABEL_81;
        }

        v44 = 0;
        v100 = *(v41 + 16 * v40);
        v45 = HIDWORD(v100);
        if (HIDWORD(v100) == -1)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        v47 = *(a3 + 32);
        do
        {
          v20 = *(&v100 + v44);
          if (v42 <= v20)
          {
            v99 = 0;
            v16 = v112;
            v120 = 0u;
            v121 = 0u;
            memset(v119, 0, sizeof(v119));
            v55 = MEMORY[0x1E69E9C10];
            v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v112 = 136315906;
            *&v112[4] = "operator[]";
            v113 = 1024;
            if (v56)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            v114 = 789;
            v115 = 2048;
            v116 = v20;
            v117 = 2048;
            v118 = v42;
            _os_log_send_and_compose_impl(v57, &v99, v119, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v83, v85);
            _os_crash_msg();
            __break(1u);
LABEL_69:
            *v112 = 0;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v101 = 0u;
            v58 = MEMORY[0x1E69E9C10];
            v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v119[0] = 136315906;
            *&v119[1] = "operator[]";
            LOWORD(v119[3]) = 1024;
            if (v59)
            {
              v60 = 3;
            }

            else
            {
              v60 = 2;
            }

            *(&v119[3] + 2) = 789;
            HIWORD(v119[4]) = 2048;
            *&v119[5] = v16;
            LOWORD(v119[7]) = 2048;
            *(&v119[7] + 2) = v16;
            _os_log_send_and_compose_impl(v60, v112, &v101, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v83, v85);
            _os_crash_msg();
            __break(1u);
            goto LABEL_73;
          }

          *(&v100 + v44++) = *(v47 + 4 * v20);
        }

        while (v46 != v44);
        if (v40 == v18)
        {
          goto LABEL_85;
        }

        v48 = v45 == -1;
        v50 = DWORD2(v100);
        v49 = HIDWORD(v100);
        if (v48)
        {
          v49 = -1;
        }

        v51 = v43 + 16 * v40;
        *v51 = v100;
        *(v51 + 8) = v50;
        *(v51 + 12) = v49;
        v40 = (v40 + 1);
      }

      while (v40 != v36);
    }

    re::internal::addAndCopyAttributeValues(v9, &v101, 0);
    re::internal::addAndCopyAttributeValues(v9, &v101, 2);
    re::internal::addAndCopyAttributeValues(v9, &v101, 3);
    re::internal::addAndCopyAttributeValues(v9, &v101, 4);
    v52 = re::GeomMesh::operator=(v85, &v101);
    if (v83)
    {
      if (v96)
      {
        v53 = *&v97[7];
      }

      else
      {
        v53 = v97;
      }

      re::GeomMesh::setName(v52, v53);
    }

    re::internal::GeomAttributeManager::~GeomAttributeManager(&v104);
    v11 = v86;
    if (*(&v101 + 1))
    {
      v27 = *(&v103 + 1);
      if (*(&v103 + 1))
      {
        (*(**(&v101 + 1) + 40))();
      }
    }

    if (v87[0])
    {
      v27 = v90;
      if (v90)
      {
        (*(*v87[0] + 40))();
      }
    }

    if (v91[0])
    {
      v27 = v94;
      if (v94)
      {
        (*(*v91[0] + 40))();
      }
    }

    if (v95 && (v96 & 1) != 0)
    {
      (*(*v95 + 40))();
    }
  }

  else
  {
    v23 = *v9;
    re::DynamicArray<float>::resize(a3, v23);
    if (v23)
    {
      v24 = 0;
      v25 = *(a3 + 16);
      v26 = *(a3 + 32);
      while (v25 != v24)
      {
        *(v26 + 4 * v24) = v24;
        if (v23 == ++v24)
        {
          goto LABEL_18;
        }
      }

LABEL_89:
      v91[0] = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v101 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v119[0] = 136315906;
      *(v8 + 52) = "operator[]";
      LOWORD(v119[3]) = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *(v8 + 62) = 789;
      HIWORD(v119[4]) = 2048;
      *(v8 + 68) = v25;
      LOWORD(v119[7]) = 2048;
      *(v8 + 78) = v25;
      _os_log_send_and_compose_impl(v75, v91, &v101, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v119, 38, v82, v84);
      _os_crash_msg();
      __break(1u);
LABEL_93:
      *&v100 = 0;
      v120 = 0u;
      v121 = 0u;
      memset(v119, 0, sizeof(v119));
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v112 = 136315906;
      *&v112[4] = "operator[]";
      v113 = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      v114 = 789;
      v115 = 2048;
      v116 = 0;
      v117 = 2048;
      v118 = 0;
      _os_log_send_and_compose_impl(v78, &v100, v119, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      *&v100 = 0;
      v120 = 0u;
      v121 = 0u;
      memset(v119, 0, sizeof(v119));
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v112 = 136315906;
      *&v112[4] = "operator[]";
      v113 = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      v114 = 789;
      v115 = 2048;
      v116 = 0;
      v117 = 2048;
      v118 = 0;
      _os_log_send_and_compose_impl(v81, &v100, v119, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v83, v85);
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    re::GeomMesh::copy(a1, a2);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v98, v27, v28);
  return v11;
}

_anonymous_namespace_ *re::mergeVertices(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  v36 = 0;
  v7 = *(a1 + 16);
  v8 = re::mergeVertices(a1, a2, v34, a4);
  if (v8)
  {
    v33 = 0;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    v32 = 0;
    re::DynamicArray<unsigned int>::resize(v30, a2[4], &re::kInvalidMeshIndex);
    if (v7)
    {
      v9 = 0;
      v10 = &v47;
      v11 = v35;
      v12 = v37;
      v13 = v31;
      v14 = v33;
      do
      {
        if (v11 == v9)
        {
          v38 = 0;
          v49 = 0u;
          v50 = 0u;
          memset(v48, 0, sizeof(v48));
          v47 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v42 = 789;
          v43 = 2048;
          v44 = v11;
          v45 = 2048;
          v46 = v11;
          _os_log_send_and_compose_impl(v24, &v38, &v47, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v28, v29);
          _os_crash_msg();
          __break(1u);
LABEL_34:
          v38 = 0;
          v10[3] = 0u;
          v10[4] = 0u;
          v10[1] = 0u;
          v10[2] = 0u;
          *v10 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          v42 = 789;
          v43 = 2048;
          v44 = v4;
          v45 = 2048;
          v46 = v13;
          _os_log_send_and_compose_impl(v27, &v38, &v47, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v39, 38, v28, v29);
          _os_crash_msg();
          __break(1u);
        }

        v4 = *(v12 + 4 * v9);
        if (v13 <= v4)
        {
          goto LABEL_34;
        }

        *(v14 + 4 * v4) = v9++;
      }

      while (v7 != v9);
    }

    re::GeomIndexMap::GeomIndexMap(&v47, v30);
    re::GeomIndexMap::operator=(a3, &v47);
    if (!BYTE12(v47))
    {
LABEL_22:
      v20 = v30[0];
      if (!v30[0] || !v33)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (BYTE12(v47) == 2)
    {
      v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v48);
      goto LABEL_22;
    }

    if (BYTE12(v47) == 1)
    {
      if (v48[0] && v49)
      {
        (*(*v48[0] + 40))();
      }

      goto LABEL_22;
    }

    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_39:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = a2[4];
  *&v47 = 0xFFFFFFFF00000000;
  DWORD2(v47) = -1;
  BYTE12(v47) = 0;
  if (v18 - 1 <= 0xFFFFFFFD)
  {
    DWORD2(v47) = v18 - 1;
    v17 = v18;
    *&v47 = v18;
  }

  LODWORD(v48[0]) = v17;
  re::GeomIndexMap::operator=(a3, &v47);
  if (!BYTE12(v47))
  {
    goto LABEL_26;
  }

  if (BYTE12(v47) == 2)
  {
    v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v48);
    goto LABEL_26;
  }

  if (BYTE12(v47) != 1)
  {
    goto LABEL_39;
  }

  v20 = v48[0];
  if (!v48[0] || !v49)
  {
    goto LABEL_26;
  }

LABEL_24:
  (*(*v20 + 40))(v20);
LABEL_26:
  if (v34[0])
  {
    if (v37)
    {
      (*(*v34[0] + 40))(v16);
    }
  }

  return v8;
}

uint64_t re::anonymous namespace::CompareAttributes::buildVertexToAttributeValueIndexMap<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v48;
  v53 = *MEMORY[0x1E69E9840];
  v36 = *(a1 + 16);
  v7 = v36;
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  re::DynamicArray<unsigned int>::resize(a3, v7, &v36);
  result = (*(*a2 + 16))(a2);
  if (result)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_53;
    }

    result = (*(*a2 + 16))(a2);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = 0;
    v12 = 3;
    while (1)
    {
      LODWORD(v48) = v11;
      v13 = *(a2 + 204);
      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        if (*(a2 + 224) > v11)
        {
          v14 = (*(a2 + 240) + 4 * v11);
          goto LABEL_15;
        }
      }

      else
      {
        if (*(a2 + 204))
        {
          goto LABEL_57;
        }

        if (v11 < *(a2 + 208))
        {
          goto LABEL_17;
        }
      }

LABEL_39:
      ++v11;
      v10 = *(a1 + 40);
      if (v11 >= v10)
      {
        return result;
      }
    }

    result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a2 + 208), &v48);
    if (result == -1)
    {
      goto LABEL_39;
    }

    v14 = (*(a2 + 216) + 8 * result + 4);
LABEL_15:
    if (*v14 == -1)
    {
      goto LABEL_39;
    }

    v10 = *(a1 + 40);
LABEL_17:
    *&v38 = -1;
    *(&v38 + 1) = -1;
    if (v10 <= v11)
    {
      goto LABEL_45;
    }

    v10 = v11;
    v39 = *(*(a1 + 56) + 16 * v11);
    v6 = HIDWORD(v39);
    LODWORD(v48) = v11;
    v15 = *(a2 + 204);
    if (v15 == 2)
    {
      result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a2 + 208), &v48);
      if (result == -1)
      {
        goto LABEL_30;
      }

      v16 = (*(a2 + 216) + 8 * result + 4);
    }

    else
    {
      if (v15 != 1)
      {
        if (*(a2 + 204))
        {
          goto LABEL_58;
        }

        if (v11 >= *(a2 + 208))
        {
LABEL_30:
          v17 = 0;
          v10 = *(a3 + 16);
          v18 = *(a3 + 32);
          if (v6 == -1)
          {
            v19 = 3;
          }

          else
          {
            v19 = 4;
          }

          while (1)
          {
            v6 = *(&v39 + v17);
            if (v10 <= v6)
            {
              v37 = 0;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v48 = 0u;
              v22 = MEMORY[0x1E69E9C10];
              v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "operator[]";
              v42 = 1024;
              if (v23)
              {
                v24 = 3;
              }

              else
              {
                v24 = 2;
              }

              v43 = 789;
              v44 = 2048;
              v45 = v6;
              v46 = 2048;
              v47 = v10;
              _os_log_send_and_compose_impl(v24, &v37, &v48, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v34, v35);
              _os_crash_msg();
              __break(1u);
LABEL_45:
              *&v39 = 0;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v48 = 0u;
              v25 = MEMORY[0x1E69E9C10];
              v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "operator[]";
              v42 = 1024;
              if (v26)
              {
                v27 = 3;
              }

              else
              {
                v27 = 2;
              }

              v43 = 797;
              v44 = 2048;
              v45 = v11;
              v46 = 2048;
              v47 = v10;
              _os_log_send_and_compose_impl(v27, &v39, &v48, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v34, v35);
              _os_crash_msg();
              __break(1u);
LABEL_49:
              v37 = 0;
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v48 = 0u;
              v28 = MEMORY[0x1E69E9C10];
              v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "operator[]";
              v42 = 1024;
              if (v29)
              {
                v30 = 3;
              }

              else
              {
                v30 = 2;
              }

              v43 = 797;
              v44 = 2048;
              v45 = v10;
              v46 = 2048;
              v47 = v12;
              _os_log_send_and_compose_impl(v30, &v37, &v48, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v34, v35);
              _os_crash_msg();
              __break(1u);
LABEL_53:
              *&v39 = 0;
              *(v6 + 48) = 0u;
              *(v6 + 64) = 0u;
              v49 = 0u;
              v50 = 0u;
              v48 = 0u;
              v31 = MEMORY[0x1E69E9C10];
              v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v40 = 136315906;
              v41 = "operator[]";
              v42 = 1024;
              if (v32)
              {
                v33 = 3;
              }

              else
              {
                v33 = 2;
              }

              v43 = 797;
              v44 = 2048;
              v45 = 0;
              v46 = 2048;
              v47 = 0;
              _os_log_send_and_compose_impl(v33, &v39, &v48, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v34, v35);
              _os_crash_msg();
              __break(1u);
LABEL_57:
              re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
              __break(1u);
LABEL_58:
              re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
              _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
              __break(1u);
            }

            v20 = *(&v38 + v17);
            v21 = *(v18 + 4 * v6);
            if (v21 == v36)
            {
              goto LABEL_37;
            }

            if (v21 != v20)
            {
              break;
            }

LABEL_38:
            if (v19 == ++v17)
            {
              goto LABEL_39;
            }
          }

          v20 = -1;
LABEL_37:
          *(v18 + 4 * v6) = v20;
          goto LABEL_38;
        }

LABEL_28:
        v12 = *(a2 + 88);
        if (v12 <= v10)
        {
          goto LABEL_49;
        }

        v38 = *(*(a2 + 104) + 16 * v10);
        v12 = 3;
        goto LABEL_30;
      }

      if (*(a2 + 224) <= v11)
      {
        goto LABEL_30;
      }

      v16 = (*(a2 + 240) + 4 * v11);
    }

    v10 = *v16;
    if (v10 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t re::anonymous namespace::CompareAttributes::operator()(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v4) = a3;
  v5 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = a2;
    if (v7 <= a2)
    {
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v47 = 136315906;
      v48 = "operator[]";
      v49 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v50 = 797;
      v51 = 2048;
      v52 = v5;
      v53 = 2048;
      v54 = v7;
      _os_log_send_and_compose_impl(v23, &v46, &v55, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v3 = a3;
      if (v7 > a3)
      {
        v9 = *(a1 + 40);
        v10 = *(v9 + 4 * a2);
        v11 = *(v9 + 4 * a3);
        if (v10 == -1 || v10 != v11)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }

    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v7;
    _os_log_send_and_compose_impl(v26, &v46, &v55, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v7 = *(a1 + 56);
  if (v7 <= a2)
  {
LABEL_50:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v5;
    v53 = 2048;
    v54 = v7;
    _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  if (v7 <= a3)
  {
LABEL_54:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v4;
    v53 = 2048;
    v54 = v7;
    _os_log_send_and_compose_impl(v36, &v46, &v55, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v13 = vsub_f32(*(*(a1 + 48) + 8 * a2), *(*(a1 + 48) + 8 * a3));
  if (vaddv_f32(vmul_f32(v13, v13)) > *(a1 + 64))
  {
    return 0;
  }

LABEL_13:
  if (*(a1 + 5))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 88);
  if (!v7)
  {
    v7 = *(a1 + 120);
    if (v7 <= a2)
    {
LABEL_58:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v4 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v49 = 1024;
      v50 = 613;
      v51 = 2048;
      v52 = v5;
      v53 = 2048;
      v54 = v7;
      _os_log_send_and_compose_impl(v38, &v46, &v55, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
LABEL_62:
      v46 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v47 = 136315906;
      v48 = "operator[]";
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v49 = 1024;
      v50 = 613;
      v51 = 2048;
      v52 = v4;
      v53 = 2048;
      v54 = v7;
      _os_log_send_and_compose_impl(v41, &v46, &v55, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
      _os_crash_msg();
      __break(1u);
    }

    if (v7 <= a3)
    {
      goto LABEL_62;
    }

    v19 = vmulq_f32(*(*(a1 + 112) + 16 * a2), *(*(a1 + 112) + 16 * a3));
    if ((v19.f32[2] + vaddv_f32(*v19.f32)) >= *(a1 + 128))
    {
      goto LABEL_25;
    }

    return 0;
  }

  v8 = a2;
  if (v7 <= a2)
  {
LABEL_42:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v8;
    v53 = 2048;
    v54 = v7;
    _os_log_send_and_compose_impl(v29, &v46, &v55, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  v3 = a3;
  if (v7 <= a3)
  {
LABEL_46:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v50 = 797;
    v51 = 2048;
    v52 = v3;
    v53 = 2048;
    v54 = v7;
    _os_log_send_and_compose_impl(v32, &v46, &v55, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v14 = *(a1 + 104);
  v15 = *(v14 + 4 * a2);
  v16 = *(v14 + 4 * a3);
  if (v15 == -1 || v15 != v16)
  {
    return 0;
  }

LABEL_25:
  {
    {
      v20 = *(a1 + 264);
      if (v20)
      {
        v21 = *(v20 + 24);
        LODWORD(v55) = v5;
        v47 = v4;
        if (v21)
        {
          return (*(*v21 + 48))(v21, &v55, &v47);
        }

        else
        {
          v42 = std::__throw_bad_function_call[abi:nn200100]();
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL re::anonymous namespace::CompareAttributes::TangentData::compare(re::_anonymous_namespace_::CompareAttributes::TangentData *this, uint64_t a2, unsigned int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  if (!v5)
  {
    v5 = *(this + 12);
    if (v5 > a2)
    {
      if (v5 > a3)
      {
        v11 = vsubq_f32(*(*(this + 5) + 16 * a2), *(*(this + 5) + 16 * a3));
        v12 = vmulq_f32(v11, v11);
        return (v12.f32[2] + vaddv_f32(*v12.f32)) <= *(this + 14);
      }

LABEL_26:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v27 = 1024;
      v28 = 613;
      v29 = 2048;
      v30 = v3;
      v31 = 2048;
      v32 = v5;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

LABEL_22:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v27 = 1024;
    v28 = 613;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (v5 <= a2)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(v14, &v24, &v33, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v4 = a3;
  if (v5 <= a3)
  {
LABEL_18:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(this + 4);
  v7 = *(v6 + 4 * a2);
  v8 = *(v6 + 4 * a3);
  return v7 != -1 && v7 == v8;
}

void re::DynamicArray<re::anonymous namespace::PointProjection>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      v5 = 12 * (a2 - v4);
      if (v5 >= 1)
      {
        bzero((*(a1 + 32) + 12 * v4), 12 * (v5 / 0xC - (v5 > 0xB)) + 12);
      }
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v139 = *(a2 - 1);
        v140 = *(v11 + 8);
        if (v139 >= v140 && (v139 > v140 || *v8 >= *v11))
        {
          return result;
        }

LABEL_221:
        v269 = *(v11 + 8);
        v246 = *v11;
        v141 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v141;
        v136 = v246;
        v137 = v269;
LABEL_222:
        *(a2 - 1) = v137;
        *v8 = v136;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
    }

    if (v13 == 5)
    {
      v142 = *(a2 - 1);
      v143 = *(v11 + 44);
      if (v142 >= v143 && (v142 > v143 || *v8 >= *(v11 + 36)))
      {
        return result;
      }

      v144 = *(v11 + 36);
      v145 = *(v11 + 44);
      v146 = *(a2 - 1);
      *(v11 + 36) = *v8;
      *(v11 + 44) = v146;
      *(a2 - 1) = v145;
      *v8 = v144;
      v147 = *(v11 + 44);
      v148 = *(v11 + 32);
      if (v147 >= v148 && (v147 > v148 || *(v11 + 36) >= *(v11 + 24)))
      {
        return result;
      }

      v149 = *(v11 + 32);
      v150 = *(v11 + 24);
      *(v11 + 24) = *(v11 + 36);
      *(v11 + 32) = *(v11 + 44);
      *(v11 + 36) = v150;
      *(v11 + 44) = v149;
      v151 = *(v11 + 32);
      v152 = *(v11 + 20);
      if (v151 >= v152 && (v151 > v152 || *(v11 + 24) >= *(v11 + 12)))
      {
        return result;
      }

      v153 = *(v11 + 20);
      v154 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v154;
      *(v11 + 32) = v153;
      goto LABEL_308;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v155 = (v11 + 12);
      v157 = v11 == a2 || v155 == a2;
      if (a4)
      {
        if (v157)
        {
          return result;
        }

        v158 = 0;
        v159 = v11;
        while (2)
        {
          v160 = v159;
          v159 = v155;
          v161 = *(v160 + 20);
          v162 = *(v160 + 8);
          if (v161 < v162)
          {
            v163 = *v155;
            goto LABEL_238;
          }

          if (v161 <= v162)
          {
            v163 = *v155;
            if (v163 < *v160)
            {
LABEL_238:
              v164 = *(v160 + 16);
              *v159 = *v160;
              *(v159 + 8) = *(v160 + 8);
              v165 = v11;
              if (v160 != v11)
              {
                v166 = v158;
                while (1)
                {
                  v167 = v11 + v166;
                  v168 = (v11 + v166 - 12);
                  v169 = *(v11 + v166 - 4);
                  if (v161 >= v169)
                  {
                    if (v161 > v169)
                    {
                      v165 = v160;
                      goto LABEL_250;
                    }

                    if (v163 >= *v168)
                    {
                      break;
                    }
                  }

                  v160 -= 12;
                  *v167 = *v168;
                  *(v167 + 8) = *(v11 + v166 - 4);
                  v166 -= 12;
                  if (!v166)
                  {
                    v165 = v11;
                    goto LABEL_250;
                  }
                }

                v165 = v11 + v166;
              }

LABEL_250:
              *v165 = v163;
              *(v165 + 4) = v164;
              *(v165 + 8) = v161;
            }
          }

          v155 = (v159 + 12);
          v158 += 12;
          if ((v159 + 12) == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v157)
      {
        return result;
      }

      while (2)
      {
        v219 = v7;
        v7 = v155;
        v220 = *(v219 + 20);
        v221 = *(v219 + 8);
        if (v220 >= v221)
        {
          if (v220 <= v221)
          {
            v222 = *v155;
            if (*v155 < *v219)
            {
              goto LABEL_319;
            }
          }
        }

        else
        {
          v222 = *v155;
LABEL_319:
          v223 = *(v219 + 16);
          do
          {
            do
            {
              v224 = v219;
              *(v219 + 12) = *v219;
              *(v219 + 20) = *(v219 + 8);
              v219 -= 12;
              v225 = *(v224 - 4);
            }

            while (v220 < v225);
          }

          while (v220 <= v225 && v222 < *v219);
          *v224 = v222;
          *(v224 + 4) = v223;
          *(v224 + 8) = v220;
        }

        v155 = (v7 + 12);
        if ((v7 + 12) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v170 = (v13 - 2) >> 1;
      v171 = v170;
      do
      {
        v172 = v171;
        if (v170 >= v171)
        {
          v173 = (2 * v171) | 1;
          v174 = v11 + 12 * v173;
          if (2 * v172 + 2 < v13)
          {
            v175 = *(v174 + 8);
            v176 = *(v174 + 20);
            if (v175 < v176 || v175 <= v176 && *v174 < *(v174 + 12))
            {
              v174 += 12;
              v173 = 2 * v172 + 2;
            }
          }

          v177 = v11 + 12 * v172;
          v178 = *(v174 + 8);
          v179 = *(v177 + 8);
          if (v178 >= v179)
          {
            v180 = *v177;
            if (v178 > v179 || *v174 >= v180)
            {
              v181 = *(v177 + 4);
              v182 = *v174;
              *(v177 + 8) = *(v174 + 8);
              *v177 = v182;
              if (v170 >= v173)
              {
                while (1)
                {
                  v184 = 2 * v173;
                  v173 = (2 * v173) | 1;
                  v183 = v11 + 12 * v173;
                  v185 = v184 + 2;
                  if (v185 < v13)
                  {
                    v186 = *(v183 + 8);
                    v187 = *(v183 + 20);
                    if (v186 < v187 || v186 <= v187 && *v183 < *(v183 + 12))
                    {
                      v183 += 12;
                      v173 = v185;
                    }
                  }

                  v188 = *(v183 + 8);
                  if (v188 < v179 || v188 <= v179 && *v183 < v180)
                  {
                    break;
                  }

                  v189 = *v183;
                  *(v174 + 8) = *(v183 + 8);
                  *v174 = v189;
                  v174 = v183;
                  if (v170 < v173)
                  {
                    goto LABEL_266;
                  }
                }
              }

              v183 = v174;
LABEL_266:
              *v183 = v180;
              *(v183 + 4) = v181;
              *(v183 + 8) = v179;
            }
          }
        }

        v171 = v172 - 1;
      }

      while (v172);
      v190 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
      while (2)
      {
        v191 = 0;
        v270 = *(v11 + 8);
        v247 = *v11;
        v192 = v11;
        do
        {
          v193 = v192;
          result = &v192[3 * v191];
          v192 = result + 3;
          v194 = 2 * v191;
          v191 = (2 * v191) | 1;
          v195 = v194 + 2;
          if (v195 < v190)
          {
            v196 = result + 6;
            v197 = result[5];
            v198 = result[8];
            if (v197 < v198 || v197 <= v198 && (result = *v192, result < *v196))
            {
              v192 = v196;
              v191 = v195;
            }
          }

          v199 = *v192;
          v193[2] = v192[2];
          *v193 = v199;
        }

        while (v191 <= ((v190 - 2) >> 1));
        a2 -= 3;
        if (v192 == a2)
        {
          *(v192 + 2) = v270;
          *v192 = v247;
        }

        else
        {
          v200 = *a2;
          v192[2] = a2[2];
          *v192 = v200;
          *(a2 + 2) = v270;
          *a2 = v247;
          v201 = v192 - v11 + 12;
          if (v201 >= 13)
          {
            v202 = -2 - 0x5555555555555555 * (v201 >> 2);
            v203 = v202 >> 1;
            v204 = (v11 + 12 * (v202 >> 1));
            v205 = v204[2];
            v206 = v192[2];
            if (v205 < v206)
            {
              v207 = *v192;
              goto LABEL_290;
            }

            if (v205 <= v206)
            {
              v207 = *v192;
              if (*v204 < *v192)
              {
LABEL_290:
                v208 = *(v192 + 1);
                result = *v204;
                v192[2] = v204[2];
                *v192 = result;
                if (v202 >= 2)
                {
                  while (1)
                  {
                    v210 = v203 - 1;
                    v203 = (v203 - 1) >> 1;
                    v209 = (v11 + 12 * v203);
                    v211 = v209[2];
                    if (v211 >= v206)
                    {
                      if (v211 > v206)
                      {
                        break;
                      }

                      result = *v209;
                      if (result >= v207)
                      {
                        break;
                      }
                    }

                    result = *v209;
                    v204[2] = v209[2];
                    *v204 = result;
                    v204 = (v11 + 12 * v203);
                    if (v210 <= 1)
                    {
                      goto LABEL_296;
                    }
                  }
                }

                v209 = v204;
LABEL_296:
                *v209 = v207;
                *(v209 + 1) = v208;
                v209[2] = v206;
              }
            }
          }
        }

        if (v190-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    if (v12 >= 0x601)
    {
      v16 = *(v15 + 8);
      v17 = *(v11 + 8);
      if (v16 < v17 || v16 <= v17 && *v15 < *v11)
      {
        v18 = *(a2 - 1);
        if (v18 < v16 || v18 <= v16 && *v8 < *v15)
        {
          v249 = *(v11 + 8);
          v226 = *v11;
          v19 = *v8;
          *(v11 + 8) = *(a2 - 1);
          *v11 = v19;
        }

        else
        {
          v255 = *(v11 + 8);
          v232 = *v11;
          v34 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v34;
          *(v15 + 8) = v255;
          *v15 = v232;
          v35 = *(a2 - 1);
          v36 = *(v15 + 8);
          if (v35 >= v36 && (v35 > v36 || *v8 >= *v15))
          {
            goto LABEL_34;
          }

          v249 = *(v15 + 8);
          v226 = *v15;
          v37 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v37;
        }

        *(a2 - 1) = v249;
        *v8 = v226;
        goto LABEL_34;
      }

      v24 = *(a2 - 1);
      if (v24 < v16 || v24 <= v16 && *v8 < *v15)
      {
        v251 = *(v15 + 8);
        v228 = *v15;
        v25 = *v8;
        *(v15 + 8) = *(a2 - 1);
        *v15 = v25;
        *(a2 - 1) = v251;
        *v8 = v228;
        v26 = *(v15 + 8);
        v27 = *(v11 + 8);
        if (v26 < v27 || v26 <= v27 && *v15 < *v11)
        {
          v252 = *(v11 + 8);
          v229 = *v11;
          v28 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v28;
          *(v15 + 8) = v252;
          *v15 = v229;
        }
      }

LABEL_34:
      v38 = v11 + 12 * v14;
      v39 = v38 - 12;
      v40 = *(v38 - 4);
      v41 = *(v11 + 20);
      if (v40 < v41 || v40 <= v41 && *v39 < *(v11 + 12))
      {
        v42 = *(a2 - 4);
        if (v42 < v40 || v42 <= v40 && *v9 < *v39)
        {
          v43 = *(v11 + 12);
          v44 = *(v11 + 20);
          v45 = *(a2 - 4);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v45;
        }

        else
        {
          v57 = *(v11 + 12);
          v58 = *(v11 + 20);
          v59 = *(v39 + 8);
          *(v11 + 12) = *v39;
          *(v11 + 20) = v59;
          *(v39 + 8) = v58;
          *v39 = v57;
          v60 = *(a2 - 4);
          v61 = *(v39 + 8);
          if (v60 >= v61 && (v60 > v61 || *v9 >= *v39))
          {
            goto LABEL_52;
          }

          v258 = *(v39 + 8);
          v235 = *v39;
          v62 = *v9;
          *(v39 + 8) = *(a2 - 4);
          *v39 = v62;
          v43 = v235;
          v44 = v258;
        }

        *(a2 - 4) = v44;
        *v9 = v43;
        goto LABEL_52;
      }

      v46 = *(a2 - 4);
      if (v46 < v40 || v46 <= v40 && *v9 < *v39)
      {
        v256 = *(v38 - 4);
        v233 = *v39;
        v47 = *v9;
        *(v39 + 8) = *(a2 - 4);
        *v39 = v47;
        *(a2 - 4) = v256;
        *v9 = v233;
        v48 = *(v39 + 8);
        v49 = *(v11 + 20);
        if (v48 < v49 || v48 <= v49 && *v39 < *(v11 + 12))
        {
          v50 = *(v11 + 12);
          v51 = *(v11 + 20);
          v52 = *(v39 + 8);
          *(v11 + 12) = *v39;
          *(v11 + 20) = v52;
          *(v39 + 8) = v51;
          *v39 = v50;
        }
      }

LABEL_52:
      v63 = v11 + 12 * v14;
      v64 = v63 + 12;
      v65 = *(v63 + 20);
      v66 = *(v11 + 32);
      if (v65 < v66 || v65 <= v66 && *v64 < *(v11 + 24))
      {
        v67 = *(a2 - 7);
        if (v67 < v65 || v67 <= v65 && *v10 < *v64)
        {
          v68 = *(v11 + 24);
          v69 = *(v11 + 32);
          v70 = *(a2 - 7);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v70;
        }

        else
        {
          v78 = *(v11 + 24);
          v79 = *(v11 + 32);
          v80 = *(v64 + 8);
          *(v11 + 24) = *v64;
          *(v11 + 32) = v80;
          *(v64 + 8) = v79;
          *v64 = v78;
          v81 = *(a2 - 7);
          v82 = *(v64 + 8);
          if (v81 >= v82 && (v81 > v82 || *v10 >= *v64))
          {
            goto LABEL_65;
          }

          v260 = *(v64 + 8);
          v237 = *v64;
          v83 = *v10;
          *(v64 + 8) = *(a2 - 7);
          *v64 = v83;
          v68 = v237;
          v69 = v260;
        }

        *(a2 - 7) = v69;
        *v10 = v68;
        goto LABEL_65;
      }

      v71 = *(a2 - 7);
      if (v71 < v65 || v71 <= v65 && *v10 < *v64)
      {
        v259 = *(v63 + 20);
        v236 = *v64;
        v72 = *v10;
        *(v64 + 8) = *(a2 - 7);
        *v64 = v72;
        *(a2 - 7) = v259;
        *v10 = v236;
        v73 = *(v64 + 8);
        v74 = *(v11 + 32);
        if (v73 < v74 || v73 <= v74 && *v64 < *(v11 + 24))
        {
          v75 = *(v11 + 24);
          v76 = *(v11 + 32);
          v77 = *(v64 + 8);
          *(v11 + 24) = *v64;
          *(v11 + 32) = v77;
          *(v64 + 8) = v76;
          *v64 = v75;
        }
      }

LABEL_65:
      v84 = *(v15 + 8);
      v85 = *(v39 + 8);
      if (v84 >= v85 && (v84 > v85 || *v15 >= *v39))
      {
        v87 = *(v64 + 8);
        if (v87 < v84 || v87 <= v84 && *v64 < *v15)
        {
          v262 = *(v15 + 8);
          v239 = *v15;
          *v15 = *v64;
          *(v15 + 8) = *(v64 + 8);
          *(v64 + 8) = v262;
          *v64 = v239;
          v88 = *(v15 + 8);
          v89 = *(v39 + 8);
          if (v88 < v89 || v88 <= v89 && *v15 < *v39)
          {
            v263 = *(v39 + 8);
            v240 = *v39;
            *v39 = *v15;
            *(v39 + 8) = *(v15 + 8);
            *(v15 + 8) = v263;
            *v15 = v240;
          }
        }

        goto LABEL_78;
      }

      v86 = *(v64 + 8);
      if (v86 < v84 || v86 <= v84 && *v64 < *v15)
      {
        v261 = *(v39 + 8);
        v238 = *v39;
        *v39 = *v64;
        *(v39 + 8) = *(v64 + 8);
      }

      else
      {
        v264 = *(v39 + 8);
        v241 = *v39;
        *v39 = *v15;
        *(v39 + 8) = *(v15 + 8);
        *(v15 + 8) = v264;
        *v15 = v241;
        v90 = *(v64 + 8);
        v91 = *(v15 + 8);
        if (v90 >= v91 && (v90 > v91 || *v64 >= *v15))
        {
          goto LABEL_78;
        }

        v261 = *(v15 + 8);
        v238 = *v15;
        *v15 = *v64;
        *(v15 + 8) = *(v64 + 8);
      }

      *(v64 + 8) = v261;
      *v64 = v238;
LABEL_78:
      v265 = *(v11 + 8);
      v242 = *v11;
      v92 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v92;
      *(v15 + 8) = v265;
      *v15 = v242;
      goto LABEL_79;
    }

    v20 = *(v11 + 8);
    v21 = *(v15 + 8);
    if (v20 >= v21 && (v20 > v21 || *v11 >= *v15))
    {
      v29 = *(a2 - 1);
      if (v29 < v20 || v29 <= v20 && *v8 < *v11)
      {
        v253 = *(v11 + 8);
        v230 = *v11;
        v30 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v30;
        *(a2 - 1) = v253;
        *v8 = v230;
        v31 = *(v11 + 8);
        v32 = *(v15 + 8);
        if (v31 < v32 || v31 <= v32 && *v11 < *v15)
        {
          v254 = *(v15 + 8);
          v231 = *v15;
          v33 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v33;
          *(v11 + 8) = v254;
          *v11 = v231;
        }
      }

      goto LABEL_79;
    }

    v22 = *(a2 - 1);
    if (v22 < v20 || v22 <= v20 && *v8 < *v11)
    {
      v250 = *(v15 + 8);
      v227 = *v15;
      v23 = *v8;
      *(v15 + 8) = *(a2 - 1);
      *v15 = v23;
    }

    else
    {
      v257 = *(v15 + 8);
      v234 = *v15;
      v53 = *v11;
      *(v15 + 8) = *(v11 + 8);
      *v15 = v53;
      *(v11 + 8) = v257;
      *v11 = v234;
      v54 = *(a2 - 1);
      v55 = *(v11 + 8);
      if (v54 >= v55 && (v54 > v55 || *v8 >= *v11))
      {
        goto LABEL_79;
      }

      v250 = *(v11 + 8);
      v227 = *v11;
      v56 = *v8;
      *(v11 + 8) = *(a2 - 1);
      *v11 = v56;
    }

    *(a2 - 1) = v250;
    *v8 = v227;
LABEL_79:
    --a3;
    if (a4)
    {
      v93 = *v11;
      v94 = *(v11 + 8);
LABEL_84:
      v96 = 0;
      v97 = *(v11 + 4);
      while (1)
      {
        v98 = *(v11 + v96 + 20);
        if (v98 >= v94 && (v98 > v94 || *(v11 + v96 + 12) >= LODWORD(v93)))
        {
          break;
        }

        v96 += 12;
      }

      v99 = v11 + v96 + 12;
      if (v96)
      {
        v100 = *(a2 - 1);
        v101 = a2 - 4;
        v102 = a2 - 3;
        if (v100 >= v94)
        {
          do
          {
            if (v100 <= v94 && *(v101 + 1) < LODWORD(v93))
            {
              break;
            }

            v103 = *v101;
            v101 -= 3;
            v100 = v103;
          }

          while (v103 >= v94);
LABEL_94:
          v102 = v101 + 1;
        }
      }

      else
      {
        v102 = a2;
        if (v99 < a2)
        {
          v104 = *(a2 - 1);
          v102 = a2 - 3;
          if (v104 >= v94)
          {
            v101 = a2 - 4;
            v102 = a2 - 3;
            while (1)
            {
              v113 = v101 + 1;
              if (v104 <= v94)
              {
                if (*v113 < LODWORD(v93) || v99 >= v113)
                {
                  goto LABEL_94;
                }
              }

              else if (v99 >= v113)
              {
                break;
              }

              v102 -= 3;
              v115 = *v101;
              v101 -= 3;
              v104 = v115;
              if (v115 < v94)
              {
                goto LABEL_94;
              }
            }
          }
        }
      }

      v11 = v99;
      if (v99 < v102)
      {
        v105 = v102;
        do
        {
          v266 = *(v11 + 8);
          v243 = *v11;
          v106 = *v105;
          *(v11 + 8) = v105[2];
          *v11 = v106;
          *(v105 + 2) = v266;
          *v105 = v243;
          do
          {
            do
            {
              v11 += 12;
              v107 = *(v11 + 8);
            }

            while (v107 < v94);
          }

          while (v107 <= v94 && *v11 < LODWORD(v93));
          v108 = *(v105 - 1);
          if (v108 >= v94)
          {
            v109 = v105 - 4;
            do
            {
              if (v108 <= v94 && *(v109 + 1) < LODWORD(v93))
              {
                break;
              }

              v110 = *v109;
              v109 -= 3;
              v108 = v110;
            }

            while (v110 >= v94);
            v105 = v109 + 1;
          }

          else
          {
            v105 -= 3;
          }
        }

        while (v11 < v105);
      }

      if (v11 - 12 != v7)
      {
        v111 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v111;
      }

      *(v11 - 12) = v93;
      *(v11 - 8) = v97;
      *(v11 - 4) = v94;
      if (v99 < v102)
      {
        goto LABEL_116;
      }

      if (result)
      {
        a2 = (v11 - 12);
        if (v112)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v112)
      {
LABEL_116:
        a4 = 0;
      }
    }

    else
    {
      v95 = *(v11 - 4);
      v94 = *(v11 + 8);
      v93 = *v11;
      if (v95 < v94 || v95 <= v94 && *(v11 - 12) < LODWORD(v93))
      {
        goto LABEL_84;
      }

      v116 = *(a2 - 1);
      if (v94 < v116 || v94 <= v116 && LODWORD(v93) < *v8)
      {
        v117 = *(v11 + 20);
        if (v94 >= v117)
        {
          v119 = (v11 + 32);
          do
          {
            if (v94 <= v117 && LODWORD(v93) < *(v119 - 5))
            {
              break;
            }

            v120 = *v119;
            v119 += 3;
            v117 = v120;
          }

          while (v94 >= v120);
          v11 = (v119 - 5);
        }

        else
        {
          v11 += 12;
        }
      }

      else
      {
        for (v11 += 12; v11 < a2; v11 += 12)
        {
          v118 = *(v11 + 8);
          if (v94 < v118 || v94 <= v118 && LODWORD(v93) < *v11)
          {
            break;
          }
        }
      }

      v121 = *(v7 + 4);
      v122 = a2;
      if (v11 < a2)
      {
        for (i = a2 - 4; v94 < v116 || v94 <= v116 && LODWORD(v93) < *(i + 1); i -= 3)
        {
          v124 = *i;
          v116 = v124;
        }

        v122 = i + 1;
      }

      while (v11 < v122)
      {
        v267 = *(v11 + 8);
        v244 = *v11;
        v125 = *v122;
        *(v11 + 8) = v122[2];
        *v11 = v125;
        *(v122 + 2) = v267;
        *v122 = v244;
        v126 = *(v11 + 20);
        if (v94 >= v126)
        {
          v127 = (v11 + 32);
          do
          {
            if (v94 <= v126 && LODWORD(v93) < *(v127 - 5))
            {
              break;
            }

            v128 = *v127;
            v127 += 3;
            v126 = v128;
          }

          while (v94 >= v128);
          v11 = (v127 - 5);
        }

        else
        {
          v11 += 12;
        }

        do
        {
          do
          {
            v122 -= 3;
            v129 = v122[2];
          }

          while (v94 < v129);
        }

        while (v94 <= v129 && LODWORD(v93) < *v122);
      }

      if (v11 - 12 != v7)
      {
        v130 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v130;
      }

      a4 = 0;
      *(v11 - 12) = v93;
      *(v11 - 8) = v121;
      *(v11 - 4) = v94;
    }
  }

  v131 = *(v11 + 20);
  v132 = *(v11 + 8);
  if (v131 >= v132 && (v131 > v132 || *(v11 + 12) >= *v11))
  {
    v213 = *(a2 - 1);
    if (v213 >= v131 && (v213 > v131 || *v8 >= *(v11 + 12)))
    {
      return result;
    }

    v214 = *(v11 + 12);
    v215 = *(v11 + 20);
    v216 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v216;
    *(a2 - 1) = v215;
    *v8 = v214;
LABEL_308:
    v217 = *(v11 + 20);
    v218 = *(v11 + 8);
    if (v217 < v218 || v217 <= v218 && *(v11 + 12) < *v11)
    {
      v271 = *(v11 + 8);
      v248 = *v11;
      *v11 = *(v11 + 12);
      *(v11 + 8) = *(v11 + 20);
      *(v11 + 12) = v248;
      *(v11 + 20) = v271;
    }

    return result;
  }

  v133 = *(a2 - 1);
  if (v133 < v131 || v133 <= v131 && *v8 < *(v11 + 12))
  {
    goto LABEL_221;
  }

  v268 = *(v11 + 8);
  v245 = *v11;
  *v11 = *(v11 + 12);
  *(v11 + 8) = *(v11 + 20);
  *(v11 + 12) = v245;
  *(v11 + 20) = v268;
  v134 = *(a2 - 1);
  v135 = *(v11 + 20);
  if (v134 < v135 || v134 <= v135 && *v8 < *(v11 + 12))
  {
    v136 = *(v11 + 12);
    v137 = *(v11 + 20);
    v138 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v138;
    goto LABEL_222;
  }

  return result;
}

float *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = a2[2];
  v5 = result[2];
  if (v4 < v5 || v4 <= v5 && *a2 < *result)
  {
    v6 = a3[2];
    if (v6 < v4 || v6 <= v4 && *a3 < *a2)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
    }

    else
    {
      v19 = *(result + 2);
      v20 = *result;
      v21 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v21;
      *a2 = v20;
      *(a2 + 2) = v19;
      v22 = a3[2];
      v23 = a2[2];
      if (v22 >= v23 && (v22 > v23 || *a3 >= *a2))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v24 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v24;
    }

    *a3 = v8;
    *(a3 + 2) = v7;
  }

  else
  {
    v10 = a3[2];
    if (v10 < v4 || v10 <= v4 && *a3 < *a2)
    {
      v11 = *(a2 + 2);
      v12 = *a2;
      v13 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v13;
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = a2[2];
      v15 = result[2];
      if (v14 < v15 || v14 <= v15 && *a2 < *result)
      {
        v16 = *(result + 2);
        v17 = *result;
        v18 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v18;
        *a2 = v17;
        *(a2 + 2) = v16;
      }
    }
  }

LABEL_14:
  v25 = a4[2];
  v26 = a3[2];
  if (v25 < v26 || v25 <= v26 && *a4 < *a3)
  {
    v27 = *(a3 + 2);
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    v30 = a3[2];
    v31 = a2[2];
    if (v30 < v31 || v30 <= v31 && *a3 < *a2)
    {
      v32 = *(a2 + 2);
      v33 = *a2;
      v34 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v34;
      *a3 = v33;
      *(a3 + 2) = v32;
      v35 = a2[2];
      v36 = result[2];
      if (v35 < v36 || v35 <= v36 && *a2 < *result)
      {
        v37 = *(result + 2);
        v38 = *result;
        v39 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v39;
        *a2 = v38;
        *(a2 + 2) = v37;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::PointProjection *>(float *a1, float *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v22 = a1[5];
        v23 = a1[2];
        if (v22 < v23 || v22 <= v23 && *(a1 + 3) < *a1)
        {
          v24 = *(a2 - 1);
          if (v24 >= v22 && (v24 > v22 || *v5 >= *(a1 + 3)))
          {
            v48 = *(a1 + 2);
            v49 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v49;
            *(a1 + 5) = v48;
            v50 = *(a2 - 1);
            v51 = a1[5];
            if (v50 >= v51 && (v50 > v51 || *v5 >= *(a1 + 3)))
            {
              return 1;
            }

            v25 = *(a1 + 5);
            v26 = *(a1 + 3);
            v52 = *(a2 - 1);
            *(a1 + 3) = *v5;
            *(a1 + 5) = v52;
            goto LABEL_18;
          }

LABEL_17:
          v25 = *(a1 + 2);
          v26 = *a1;
          v27 = *(v5 + 2);
          *a1 = *v5;
          *(a1 + 2) = v27;
LABEL_18:
          *v5 = v26;
          *(v5 + 2) = v25;
          return 1;
        }

        v34 = *(a2 - 1);
        if (v34 >= v22 && (v34 > v22 || *v5 >= *(a1 + 3)))
        {
          return 1;
        }

        v35 = *(a1 + 5);
        v36 = *(a1 + 3);
        v37 = *(a2 - 1);
        *(a1 + 3) = *v5;
        *(a1 + 5) = v37;
        *v5 = v36;
        *(a2 - 1) = v35;
        break;
      case 4:
        return 1;
      case 5:
        v8 = a2 - 3;
        v9 = *(a2 - 1);
        v10 = a1[11];
        if (v9 >= v10 && (v9 > v10 || *v8 >= *(a1 + 9)))
        {
          return 1;
        }

        v11 = *(a1 + 11);
        v12 = *(a1 + 9);
        v13 = *(a2 - 1);
        *(a1 + 9) = *v8;
        *(a1 + 11) = v13;
        *v8 = v12;
        *(a2 - 1) = v11;
        v14 = a1[11];
        v15 = a1[8];
        if (v14 >= v15 && (v14 > v15 || *(a1 + 9) >= *(a1 + 6)))
        {
          return 1;
        }

        v16 = *(a1 + 8);
        v17 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v17;
        *(a1 + 11) = v16;
        v18 = a1[8];
        v19 = a1[5];
        if (v18 >= v19 && (v18 > v19 || *(a1 + 6) >= *(a1 + 3)))
        {
          return 1;
        }

        v20 = *(a1 + 5);
        v21 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v21;
        *(a1 + 8) = v20;
        break;
      default:
        goto LABEL_19;
    }

    v38 = a1[5];
    v39 = a1[2];
    if (v38 < v39 || v38 <= v39 && *(a1 + 3) < *a1)
    {
      v40 = *(a1 + 2);
      v41 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v41;
      *(a1 + 5) = v40;
    }

    return 1;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = a2 - 3;
      v6 = *(a2 - 1);
      v7 = a1[2];
      if (v6 >= v7 && (v6 > v7 || *v5 >= *a1))
      {
        return 1;
      }

      goto LABEL_17;
    }

LABEL_19:
    v28 = a1 + 6;
    v29 = a1[5];
    v30 = a1[2];
    if (v29 >= v30 && (v29 > v30 || *(a1 + 3) >= *a1))
    {
      v42 = a1[8];
      if (v42 < v29 || v42 <= v29 && *v28 < *(a1 + 3))
      {
        v43 = *(a1 + 5);
        v44 = *(a1 + 3);
        *(a1 + 3) = *v28;
        a1[5] = a1[8];
        *v28 = v44;
        *(a1 + 8) = v43;
        v45 = a1[5];
        if (v45 < v30 || v45 <= v30 && *(a1 + 3) < *a1)
        {
          v46 = *(a1 + 2);
          v47 = *a1;
          *a1 = *(a1 + 3);
          a1[2] = a1[5];
          *(a1 + 3) = v47;
          *(a1 + 5) = v46;
        }
      }

      goto LABEL_46;
    }

    v31 = a1[8];
    if (v31 < v29 || v31 <= v29 && *v28 < *(a1 + 3))
    {
      v32 = *(a1 + 2);
      v33 = *a1;
      *a1 = *v28;
      a1[2] = a1[8];
    }

    else
    {
      v53 = *(a1 + 2);
      v54 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v54;
      *(a1 + 5) = v53;
      v55 = a1[5];
      if (v31 >= v55 && (v31 > v55 || *v28 >= *(a1 + 3)))
      {
        goto LABEL_46;
      }

      v32 = *(a1 + 5);
      v33 = *(a1 + 3);
      *(a1 + 3) = *v28;
      a1[5] = a1[8];
    }

    *v28 = v33;
    *(a1 + 8) = v32;
LABEL_46:
    v56 = a1 + 9;
    if (a1 + 9 == a2)
    {
      return 1;
    }

    v57 = 0;
    v58 = 0;
    do
    {
      v59 = v56[2];
      v60 = v28[2];
      if (v59 >= v60)
      {
        if (v59 > v60)
        {
          goto LABEL_61;
        }

        v61 = *v56;
        if (*v56 >= *v28)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v61 = *v56;
      }

      v62 = *(v56 + 1);
      *v56 = *v28;
      v56[2] = v28[2];
      v63 = v57;
      do
      {
        v64 = a1 + v63;
        v65 = *(a1 + v63 + 20);
        if (v59 >= v65)
        {
          if (v59 > v65)
          {
            v28 = (a1 + v63 + 24);
            goto LABEL_60;
          }

          if (LODWORD(v61) >= *(v64 + 3))
          {
            goto LABEL_60;
          }
        }

        v28 -= 3;
        *(v64 + 3) = *(v64 + 12);
        *(v64 + 8) = *(v64 + 5);
        v63 -= 12;
      }

      while (v63 != -24);
      v28 = a1;
LABEL_60:
      *v28 = v61;
      *(v28 + 1) = v62;
      v28[2] = v59;
      if (++v58 == 8)
      {
        return v56 + 3 == a2;
      }

LABEL_61:
      v28 = v56;
      v57 += 12;
      v56 += 3;
    }

    while (v56 != a2);
  }

  return 1;
}

uint64_t re::internal::addAndCopyVertexAttributes(uint64_t a1, void *a2, unsigned int *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v6 = *a3;
  re::DynamicArray<float>::resize(&v18, v6);
  if (v6)
  {
    v7 = 0;
    v8 = v20;
    v9 = v22;
    do
    {
      if (v8 == v7)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v27 = 789;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v8;
        _os_log_send_and_compose_impl(v17, &v23, v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v18, v19);
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      ++v7;
    }

    while (v6 != v7);
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 160), i);
      v13 = re::internal::GeomAttributeManager::addAttribute((a3 + 12), *(v12 + 8), 1, *(v12 + 17));
      if (v6 && v13)
      {
        (*(*v12 + 40))(v12, v13, v6, *a2, v22);
      }
    }
  }

  result = v18;
  if (v18)
  {
    if (v22)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::addAndCopyFaceAttributes(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v6 = *(a3 + 24);
  re::DynamicArray<float>::resize(&v18, v6);
  if (v6)
  {
    v7 = 0;
    v8 = v20;
    v9 = v22;
    do
    {
      if (v8 == v7)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v27 = 789;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v8;
        _os_log_send_and_compose_impl(v17, &v23, v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v18, v19);
        _os_crash_msg();
        __break(1u);
      }

      *(v9 + 4 * v7) = v7;
      ++v7;
    }

    while (v6 != v7);
  }

  v10 = *(a1 + 296);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 272), i);
      v13 = re::internal::GeomAttributeManager::addAttribute((a3 + 48), *(v12 + 8), 2, *(v12 + 17));
      if (v6 && v13)
      {
        (*(*v12 + 40))(v12, v13, v6, *a2, v22);
      }
    }
  }

  result = v18;
  if (v18)
  {
    if (v22)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::addAndCopyFaceVaryingAttributes(uint64_t result, void *a2, _anonymous_namespace_ *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v61 = result;
  v60 = *(result + 408);
  if (!v60)
  {
    return result;
  }

  v6 = 0;
  v7 = *(a3 + 6);
  do
  {
    v63 = v6;
    v8 = re::internal::GeomAttributeContainer::attributeByIndex((v61 + 384), v6);
    v9 = (*(*v8 + 16))(v8);
    v64 = v8;
    v11 = re::internal::accessFaceVaryingAttributeSubmesh(v8, v10);
    v80 = 0;
    v77[1] = 0;
    v78 = 0;
    v77[0] = 0;
    v79 = 0;
    re::DynamicArray<unsigned int>::resize(v77, v9, &re::kInvalidMeshIndex);
    v76 = 0;
    v73 = 0;
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    LODWORD(v81) = 0;
    v13 = 0;
    if (!v7)
    {
      goto LABEL_50;
    }

    for (i = 0; i < v7; LODWORD(v81) = i)
    {
      v15 = i;
      v16 = a2[1];
      if (v16 <= i)
      {
        goto LABEL_86;
      }

      v17 = *(*a2 + 4 * i);
      LODWORD(v98) = v17;
      v18 = *(v11 + 140);
      if (v18 == 2)
      {
        v20 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v11 + 144), &v98);
        if (v20 == -1)
        {
          goto LABEL_49;
        }

        v19 = (*(v11 + 152) + 8 * v20 + 4);
        goto LABEL_15;
      }

      if (v18 == 1)
      {
        if (*(v11 + 160) <= v17)
        {
          goto LABEL_49;
        }

        v19 = (*(v11 + 176) + 4 * v17);
LABEL_15:
        if (*v19 == -1)
        {
          goto LABEL_49;
        }

        v15 = v81;
        v16 = a2[1];
        goto LABEL_17;
      }

      if (*(v11 + 140))
      {
        goto LABEL_104;
      }

      if (*(v11 + 144) <= v17)
      {
        goto LABEL_49;
      }

LABEL_17:
      if (v16 <= v15)
      {
        goto LABEL_91;
      }

      v21 = *(*a2 + 4 * v15);
      LODWORD(v98) = v21;
      v22 = *(v11 + 140);
      if (v22 == 2)
      {
        v23 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v11 + 144), &v98);
        if (v23 == -1)
        {
          goto LABEL_28;
        }

        v8 = *(*(v11 + 152) + 8 * v23 + 4);
      }

      else
      {
        if (v22 != 1)
        {
          if (*(v11 + 140))
          {
            goto LABEL_105;
          }

          if (*(v11 + 144) <= v21)
          {
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = v21;
          }

          goto LABEL_29;
        }

        if (*(v11 + 160) <= v21)
        {
LABEL_28:
          v8 = 0xFFFFFFFFLL;
          goto LABEL_29;
        }

        v8 = *(*(v11 + 176) + 4 * v21);
      }

LABEL_29:
      *&v65 = -1;
      *(&v65 + 1) = -1;
      v3 = *(v11 + 24);
      if (v3 <= v8)
      {
        goto LABEL_92;
      }

      v24 = 0;
      v82 = *(*(v11 + 40) + 16 * v8);
      v25 = 3;
      if (HIDWORD(v82) != -1)
      {
        v25 = 4;
      }

      v8 = v78;
      v26 = v80;
      do
      {
        v3 = *(&v82 + v24);
        if (v8 <= v3)
        {
          *v91 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
          v38 = MEMORY[0x1E69E9C10];
          v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v86 = 136315906;
          *v87 = "operator[]";
          *&v87[8] = 1024;
          if (v39)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          *&v87[10] = 789;
          *&v87[14] = 2048;
          *&v87[16] = v3;
          v88 = 2048;
          v89 = v8;
          _os_log_send_and_compose_impl(v40, v91, &v98, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v86, 38, v57, v58);
          _os_crash_msg();
          __break(1u);
LABEL_86:
          re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v55);
          __break(1u);
          goto LABEL_87;
        }

        v27 = *(v26 + 4 * v3);
        if (v27 == -1)
        {
          *(v26 + 4 * v3) = v13;
          v27 = v13;
          v13 = (v13 + 1);
        }

        *(&v65 + v24++) = v27;
      }

      while (v25 != v24);
      v28 = re::DynamicArray<int>::add(v74, &v81);
      v29 = v71;
      if (v71 >= v70)
      {
        v4 = v71 + 1;
        if (v70 < v71 + 1)
        {
          if (v69)
          {
            v30 = 8;
            if (v70)
            {
              v30 = 2 * v70;
            }

            if (v30 <= v4)
            {
              v31 = v71 + 1;
            }

            else
            {
              v31 = v30;
            }

            re::DynamicArray<re::BlendNode>::setCapacity(&v69, v31);
          }

          else
          {
            re::DynamicArray<re::BlendNode>::setCapacity(&v69, v4);
            ++v72;
          }
        }

        v29 = v71;
      }

      *(v73 + 16 * v29) = v65;
      ++v71;
      ++v72;
LABEL_49:
      i = v81 + 1;
    }

LABEL_50:
    v86 = v13;
    re::DynamicArray<re::GeomCell4>::DynamicArray(&v87[4], &v69);
    if (!*&v87[12])
    {
      re::DynamicArray<re::BlendNode>::setCapacity(&v87[4], 1uLL);
    }

    v32 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(a3, *(v64 + 8), *(v64 + 17), &v86, v74);
    if (v32 && v13)
    {
      v59 = v32;
      v85 = 0;
      v83 = 0;
      v82 = 0uLL;
      v84 = 0;
      v68 = 0;
      v66 = 0;
      v65 = 0uLL;
      v4 = v13;
      v67 = 0;
      re::DynamicArray<float>::resize(&v82, v13);
      re::DynamicArray<float>::resize(&v65, v13);
      v33 = v85;
      v34 = v68;
      if (v9)
      {
        v35 = 0;
        v36 = 0;
        v4 = v78;
        v37 = v80;
        v8 = v83;
        v11 = v66;
        while (v4 != v35)
        {
          if (*(v37 + 4 * v35) != -1)
          {
            v3 = v36;
            if (v8 <= v36)
            {
              goto LABEL_96;
            }

            *(v33 + 4 * v36) = v35;
            if (v11 <= v36)
            {
              goto LABEL_100;
            }

            *(v34 + 4 * v36++) = *(v37 + 4 * v35);
          }

          if (v9 == ++v35)
          {
            goto LABEL_62;
          }
        }

LABEL_87:
        v81 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v91 = 136315906;
        *&v91[4] = "operator[]";
        v92 = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v93 = 789;
        v94 = 2048;
        v95 = v4;
        v96 = 2048;
        v97 = v4;
        _os_log_send_and_compose_impl(v43, &v81, &v98, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v57, v58);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, v16);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v56);
        __break(1u);
LABEL_92:
        *&v82 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v86 = 136315906;
        *v87 = "operator[]";
        *&v87[8] = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        *&v87[10] = 797;
        *&v87[14] = 2048;
        *&v87[16] = v8;
        v88 = 2048;
        v89 = v3;
        _os_log_send_and_compose_impl(v46, &v82, &v98, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v86, 38, v57, v58);
        _os_crash_msg();
        __break(1u);
LABEL_96:
        v81 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v47 = MEMORY[0x1E69E9C10];
        v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v91 = 136315906;
        *&v91[4] = "operator[]";
        v92 = 1024;
        if (v48)
        {
          v49 = 3;
        }

        else
        {
          v49 = 2;
        }

        v93 = 789;
        v94 = 2048;
        v95 = v3;
        v96 = 2048;
        v97 = v8;
        _os_log_send_and_compose_impl(v49, &v81, &v98, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v57, v58);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v81 = 0;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v98 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v91 = 136315906;
        *&v91[4] = "operator[]";
        v92 = 1024;
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        v93 = 789;
        v94 = 2048;
        v95 = v3;
        v96 = 2048;
        v97 = v11;
        _os_log_send_and_compose_impl(v52, &v81, &v98, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v91, 38, v57, v58);
        _os_crash_msg();
        __break(1u);
LABEL_104:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
LABEL_105:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
      }

LABEL_62:
      (*(*v64 + 40))(v64, v59, v13, v33, v34);
      if (v65 && v68)
      {
        (*(*v65 + 40))();
      }

      if (v82 && v85)
      {
        (*(*v82 + 40))();
      }
    }

    if (*&v87[4] && v90)
    {
      (*(**&v87[4] + 40))();
    }

    if (v69 && v73)
    {
      (*(*v69 + 40))();
    }

    if (v74[0] && v76)
    {
      (*(*v74[0] + 40))();
    }

    result = v77[0];
    if (v77[0])
    {
      if (v80)
      {
        result = (*(*v77[0] + 40))();
      }
    }

    v6 = v63 + 1;
  }

  while (v63 + 1 != v60);
  return result;
}

re::GeomAttribute *re::internal::addAndCopyAttributeValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::DynamicArray<float>::resize(&v17, *(a1 + 24));
    v5 = *(a1 + 24);
    v6 = v19;
    if (*(a1 + 24))
    {
      v7 = 0;
      v8 = v21;
      do
      {
        if (v6 == v7)
        {
          v22 = 0;
          memset(v31, 0, sizeof(v31));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v23 = 136315906;
          v24 = "operator[]";
          v25 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v26 = 789;
          v27 = 2048;
          v28 = v6;
          v29 = 2048;
          v30 = v6;
          _os_log_send_and_compose_impl(v16, &v22, v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v17, v18);
          _os_crash_msg();
          __break(1u);
        }

        *(v8 + 4 * v7) = v7;
        ++v7;
      }

      while (v5 != v7);
    }

    *&v31[0] = v21;
    *(&v31[0] + 1) = v6;
    re::internal::addAndCopyFaceVaryingAttributes(a1, v31, a2);
    result = v17;
    if (v17)
    {
      if (v21)
      {
        return (*(*v17 + 40))();
      }
    }
  }

  else
  {
    v10 = a3;
    result = re::internal::GeomAttributeManager::attributeCount(a1 + 48, a3);
    if (result)
    {
      v11 = result;
      v12 = 0;
      do
      {
        v13 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 48), v12, v10);
        result = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v13 + 8), v10, *(v13 + 17));
        if (result)
        {
          result = re::GeomAttribute::copyValues(v13, result);
        }

        v12 = (v12 + 1);
      }

      while (v11 != v12);
    }
  }

  return result;
}

void re::internal::computeVertexCacheCoherentFaceOrdering(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v7 = &v230;
  v251 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v228, 4514, *(this + 4), *(this + 5), *(this + 2), *(this + 5) - *(this + 2));
  v8 = *(this + 10);
  v9 = *(this + 4);
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v227 = 0;
  v224[1] = 0;
  v225 = 0;
  v223 = 0;
  v224[0] = 0;
  v226 = 0;
  v220[1] = 0;
  v221 = 0;
  v219 = 0;
  v220[0] = 0;
  v222 = 0;
  v216[1] = 0;
  v217 = 0;
  v216[0] = 0;
  v218 = 0;
  re::computeVertexFaceConnectivity(this, v224, v220);
  re::DynamicArray<float>::resize(v216, v9);
  v191 = a2;
  re::DynamicArray<unsigned int>::resize(a2, v8, &re::kInvalidMeshIndex);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = v217;
    v13 = v219;
    v14 = v221;
    v15 = v223;
    while (1)
    {
      if (v12 == v10)
      {
        goto LABEL_192;
      }

      *(v13 + 4 * v10) = v11;
      if (v14 == v10)
      {
        break;
      }

      v11 = *(v15 + 4 * v10);
      v10 = (v10 + 1);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

LABEL_196:
    v212[0] = 0;
    *(v7 + 4) = 0u;
    *(v7 + 5) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 1) = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v248[0]) = 136315906;
    *(v248 + 4) = "operator[]";
    WORD2(v248[1]) = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *(&v248[1] + 6) = 789;
    WORD1(v248[2]) = 2048;
    *(&v248[2] + 4) = v14;
    WORD2(v248[3]) = 2048;
    *(&v248[3] + 6) = v14;
    _os_log_send_and_compose_impl(v122, v212, v231, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v248, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
    goto LABEL_200;
  }

LABEL_6:
  v215 = 0;
  v212[1] = 0;
  v213 = 0;
  v211 = 0;
  v212[0] = 0;
  v214 = 0;
  v208[1] = 0;
  v209 = 0;
  v207 = 0;
  v208[0] = 0;
  v210 = 0;
  v204[1] = 0;
  v205 = 0;
  v203 = 0;
  v204[0] = 0;
  v206 = 0;
  v200[1] = 0;
  v201 = 0;
  v200[0] = 0;
  v16 = 8;
  v202 = 0;
  do
  {
    v17 = &v231[v16];
    *v17 = 0;
    v17[1] = 0;
    v16 += 24;
  }

  while (v16 != 896);
  v235 = v231;
  v236 = v233;
  v232 = v233;
  v233[2] = v231;
  v18 = xmmword_1E3049620;
  v19 = &v234;
  v20 = 904;
  v21 = vdupq_n_s64(0x23uLL);
  v22 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v21, v18)).u8[0])
    {
      *&v231[v20] = v19 - 3;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x23uLL), *&v18)).i32[1])
    {
      *&v231[v20 + 8] = v19;
    }

    v18 = vaddq_s64(v18, v22);
    v19 += 6;
    v20 += 16;
  }

  while (v20 != 1192);
  v238 = 0;
  v239 = 0;
  LODWORD(v248[0]) = -1082130432;
  re::DynamicArray<float>::resize(v212, v9, v248, 0);
  LOBYTE(v248[0]) = 0;
  re::DynamicArray<unsigned char>::resize(v204, v9, v248);
  LODWORD(v248[0]) = 0;
  re::DynamicArray<float>::resize(v208, v8, v248, v23);
  LOBYTE(v248[0]) = 0;
  re::DynamicArray<unsigned char>::resize(v200, v8, v248);
  if (v8)
  {
    for (i = 0; i != v8; i = (i + 1))
    {
      v14 = *(this + 5);
      if (v14 <= i)
      {
        goto LABEL_212;
      }

      v27 = 0;
      v230 = *(*(this + 7) + 16 * i);
      if (HIDWORD(v230) == -1)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

      do
      {
        v14 = *&v231[4 * v27 - 16];
        v2 = v205;
        if (v205 <= v14)
        {
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v90 = MEMORY[0x1E69E9C10];
          v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v91)
          {
            v92 = 3;
          }

          else
          {
            v92 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v14;
          v246 = 2048;
          v247 = v2;
          _os_log_send_and_compose_impl(v92, &v229, v248, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_160:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v93 = MEMORY[0x1E69E9C10];
          v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v94)
          {
            v95 = 3;
          }

          else
          {
            v95 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v8;
          v246 = 2048;
          v247 = v2;
          _os_log_send_and_compose_impl(v95, &v229, v248, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_164:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v96 = MEMORY[0x1E69E9C10];
          v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v97)
          {
            v98 = 3;
          }

          else
          {
            v98 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v9;
          v246 = 2048;
          v247 = v14;
          _os_log_send_and_compose_impl(v98, &v229, v248, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_168:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v99 = MEMORY[0x1E69E9C10];
          v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v100)
          {
            v101 = 3;
          }

          else
          {
            v101 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v7;
          v246 = 2048;
          v247 = v9;
          _os_log_send_and_compose_impl(v101, &v229, v248, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_172:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v102 = MEMORY[0x1E69E9C10];
          v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v103)
          {
            v104 = 3;
          }

          else
          {
            v104 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v14;
          v246 = 2048;
          v247 = v2;
          _os_log_send_and_compose_impl(v104, &v229, v248, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_176:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v105 = MEMORY[0x1E69E9C10];
          v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v106)
          {
            v107 = 3;
          }

          else
          {
            v107 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v14;
          v246 = 2048;
          v247 = v192;
          _os_log_send_and_compose_impl(v107, &v229, v248, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_180:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v108 = MEMORY[0x1E69E9C10];
          v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v109)
          {
            v110 = 3;
          }

          else
          {
            v110 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v4;
          v246 = 2048;
          v247 = v3;
          _os_log_send_and_compose_impl(v110, &v229, v248, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_184:
          v229 = 0;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v111 = MEMORY[0x1E69E9C10];
          v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v112)
          {
            v113 = 3;
          }

          else
          {
            v113 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v8;
          v246 = 2048;
          v247 = v9;
          _os_log_send_and_compose_impl(v113, &v229, v248, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_188:
          v229 = 0;
          v12 = &v240;
          v249 = 0u;
          v250 = 0u;
          memset(v248, 0, sizeof(v248));
          v114 = MEMORY[0x1E69E9C10];
          v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v240 = 136315906;
          v241 = "operator[]";
          v242 = 1024;
          if (v115)
          {
            v116 = 3;
          }

          else
          {
            v116 = 2;
          }

          v243 = 789;
          v244 = 2048;
          v245 = v3;
          v246 = 2048;
          v247 = v2;
          _os_log_send_and_compose_impl(v116, &v229, v248, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
LABEL_192:
          v212[0] = 0;
          *(v7 + 4) = 0u;
          *(v7 + 5) = 0u;
          *(v7 + 2) = 0u;
          *(v7 + 3) = 0u;
          *(v7 + 1) = 0u;
          v117 = MEMORY[0x1E69E9C10];
          v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v248[0]) = 136315906;
          *(v248 + 4) = "operator[]";
          WORD2(v248[1]) = 1024;
          if (v118)
          {
            v119 = 3;
          }

          else
          {
            v119 = 2;
          }

          *(&v248[1] + 6) = 789;
          WORD1(v248[2]) = 2048;
          *(&v248[2] + 4) = v12;
          WORD2(v248[3]) = 2048;
          *(&v248[3] + 6) = v12;
          _os_log_send_and_compose_impl(v119, v212, v231, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v248, 38, v189, v190);
          _os_crash_msg();
          __break(1u);
          goto LABEL_196;
        }

        ++*(v207 + v14);
        ++v27;
      }

      while (v28 != v27);
    }
  }

  v198 = v8;
  if (v9)
  {
    v14 = 0;
    v12 = v205;
    v7 = v207;
    v2 = v213;
    v29 = v215;
    while (v12 != v14)
    {
      if (*(v7 + v14))
      {
        v30 = (powf(*(v7 + v14), -0.5) * 2.0) + 0.0;
      }

      else
      {
        v30 = -1.0;
      }

      if (v2 == v14)
      {
        goto LABEL_204;
      }

      v29[v14++] = v30;
      if (v9 == v14)
      {
        goto LABEL_31;
      }
    }

LABEL_200:
    *&v230 = 0;
    v14 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v12;
    v246 = 2048;
    v247 = v12;
    _os_log_send_and_compose_impl(v125, &v230, v248, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_204:
    *&v230 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v2;
    v246 = 2048;
    v247 = v2;
    _os_log_send_and_compose_impl(v128, &v230, v248, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_208:
    v229 = 0;
    i = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v14;
    v246 = 2048;
    v247 = v2;
    _os_log_send_and_compose_impl(v131, &v229, v248, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_212:
    *&v230 = 0;
    v9 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    v243 = 797;
    v244 = 2048;
    v245 = i;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v134, &v230, v248, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_216:
    v229 = 0;
    v31 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v7;
    _os_log_send_and_compose_impl(v137, &v229, v248, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_220:
    *&v230 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    v243 = 797;
    v244 = 2048;
    v245 = v31;
    v246 = 2048;
    v247 = v31;
    _os_log_send_and_compose_impl(v140, &v230, v248, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_224:
    v229 = 0;
    v89 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v7;
    v246 = 2048;
    v247 = v7;
    _os_log_send_and_compose_impl(v143, &v229, v248, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_228:
    v229 = 0;
    v14 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v89;
    v246 = 2048;
    v247 = v89;
    _os_log_send_and_compose_impl(v146, &v229, v248, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_232:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v149, &v229, v248, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_236:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v152, &v229, v248, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_240:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v155, &v229, v248, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v158, &v229, v248, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v197;
    _os_log_send_and_compose_impl(v161, &v229, v248, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_252:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v196;
    _os_log_send_and_compose_impl(v164, &v229, v248, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_256:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v165 = MEMORY[0x1E69E9C10];
    v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v166)
    {
      v167 = 3;
    }

    else
    {
      v167 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v195;
    _os_log_send_and_compose_impl(v167, &v229, v248, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_260:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v168 = MEMORY[0x1E69E9C10];
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v3;
    v246 = 2048;
    v247 = v193;
    _os_log_send_and_compose_impl(v170, &v229, v248, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_264:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v171 = MEMORY[0x1E69E9C10];
    v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v172)
    {
      v173 = 3;
    }

    else
    {
      v173 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v2;
    _os_log_send_and_compose_impl(v173, &v229, v248, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_268:
    v229 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v174 = MEMORY[0x1E69E9C10];
    v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v175)
    {
      v176 = 3;
    }

    else
    {
      v176 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v176, &v229, v248, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_272:
    v229 = 0;
    v40 = &v240;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v177 = MEMORY[0x1E69E9C10];
    v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v178)
    {
      v179 = 3;
    }

    else
    {
      v179 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v14;
    _os_log_send_and_compose_impl(v179, &v229, v248, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_276:
    *&v230 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v180 = MEMORY[0x1E69E9C10];
    v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v181)
    {
      v182 = 3;
    }

    else
    {
      v182 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v40;
    _os_log_send_and_compose_impl(v182, &v230, v248, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_280:
    *&v230 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v183 = MEMORY[0x1E69E9C10];
    v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v184)
    {
      v185 = 3;
    }

    else
    {
      v185 = 2;
    }

    v243 = 789;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v40;
    _os_log_send_and_compose_impl(v185, &v230, v248, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
LABEL_284:
    *&v230 = 0;
    v249 = 0u;
    v250 = 0u;
    memset(v248, 0, sizeof(v248));
    v186 = MEMORY[0x1E69E9C10];
    v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v240 = 136315906;
    v241 = "operator[]";
    v242 = 1024;
    if (v187)
    {
      v188 = 3;
    }

    else
    {
      v188 = 2;
    }

    v243 = 797;
    v244 = 2048;
    v245 = v9;
    v246 = 2048;
    v247 = v40;
    _os_log_send_and_compose_impl(v188, &v230, v248, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v240, 38, v189, v190);
    _os_crash_msg();
    __break(1u);
  }

LABEL_31:
  if (!v198)
  {
    goto LABEL_134;
  }

  v9 = 0;
  v31 = *(this + 5);
  v32 = *(this + 7);
  v2 = v213;
  v33 = -1;
  v34 = -INFINITY;
  v7 = v209;
  v35 = v211;
  do
  {
    if (v9 == v31)
    {
      goto LABEL_220;
    }

    v36 = 0;
    v230 = *(v32 + 16 * v9);
    v37 = v215;
    v14 = v209;
    v38 = v211;
    if (HIDWORD(v230) == -1)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    do
    {
      v8 = *&v231[4 * v36 - 16];
      if (v2 <= v8)
      {
        goto LABEL_160;
      }

      if (v14 <= v9)
      {
        goto LABEL_164;
      }

      *(v38 + 4 * v9) = v37[v8] + *(v38 + 4 * v9);
      ++v36;
    }

    while (v39 != v36);
    if (v9 == v7)
    {
      goto LABEL_224;
    }

    if (*(v35 + 4 * v9) > v34)
    {
      v34 = *(v35 + 4 * v9);
      v33 = v9;
    }

    ++v9;
  }

  while (v9 != v198);
  v9 = 0;
  do
  {
    v40 = *(v191 + 16);
    if (v40 <= v9)
    {
      goto LABEL_276;
    }

    v190 = v9;
    *(*(v191 + 32) + 4 * v9) = v33;
    v9 = v33;
    v40 = v201;
    if (v201 <= v33)
    {
      goto LABEL_280;
    }

    *(v203 + v33) = 1;
    v40 = *(this + 5);
    if (v40 <= v33)
    {
      goto LABEL_284;
    }

    v41 = 0;
    v230 = *(*(this + 7) + 16 * v33);
    if (HIDWORD(v230) == -1)
    {
      v9 = 3;
    }

    else
    {
      v9 = 4;
    }

    v7 = v237;
    v8 = &v230;
    do
    {
      ++HIDWORD(v239);
      v42 = *(v235 + 1);
      v248[0] = v42;
      v43 = v236;
      if (v42 != v236)
      {
        v44 = *&v231[4 * v41 - 16];
        while (*v42 != v44)
        {
          v42 = v248[0];
          if (v248[0] == v43)
          {
            v42 = v43;
            break;
          }
        }

        v43 = v236;
      }

      if (v42 == v43)
      {
        LODWORD(v239) = v239 + 1;
        v47 = v238;
        if (v238 == 35)
        {
          v48 = *(v43 + 2);
          v50 = *(v48 + 8);
          v49 = *(v48 + 16);
          *(v49 + 8) = v50;
          *(v50 + 16) = v49;
          v237[34] = v48;
          v47 = 34;
        }
      }

      else
      {
        v46 = *(v42 + 1);
        v45 = *(v42 + 2);
        *(v45 + 8) = v46;
        *(v46 + 16) = v45;
        LOBYTE(v45) = v238 - 1;
        v237[(v238 - 1)] = v42;
        v47 = v45;
      }

      v51 = v237[v47];
      v52 = v235;
      v53 = *(v235 + 1);
      v238 = v47 + 1;
      v14 = *&v231[4 * v41 - 16];
      *v51 = v14;
      *(v51 + 8) = v53;
      *(v51 + 16) = v52;
      *(v53 + 16) = v51;
      *(v52 + 1) = v51;
      v2 = v205;
      if (v205 <= v14)
      {
        goto LABEL_208;
      }

      --*(v207 + v14);
      ++v41;
    }

    while (v41 != v9);
    v2 = *(v235 + 1);
    v199 = v2;
    v54 = v236;
    if (v2 != v236)
    {
      v55 = 0;
      while (1)
      {
        v3 = *v2;
        v14 = v213;
        if (v213 <= v3)
        {
          goto LABEL_232;
        }

        v14 = v205;
        if (v205 <= v3)
        {
          goto LABEL_236;
        }

        v56 = v215;
        v57 = v215[v3];
        v9 = *(v207 + v3);
        if (*(v207 + v3))
        {
          v58 = 0.75;
          if (v55 >= 3)
          {
            v58 = powf(((v55 - 3) * -0.034483) + 1.0, 1.5);
          }

          v59 = v58 + (powf(v9, -0.5) * 2.0);
        }

        else
        {
          v59 = -1.0;
        }

        v56[v3] = v59;
        v14 = v217;
        if (v217 <= v3)
        {
          goto LABEL_240;
        }

        v14 = v221;
        if (v221 <= v3)
        {
          goto LABEL_244;
        }

        v60 = *(v219 + 4 * v3);
        v61 = *(v223 + 4 * v3);
        if (v60 < v61)
        {
          break;
        }

LABEL_83:
        v2 = v199;
        if (v199 != v54 && v55++ < 0x1F)
        {
          continue;
        }

        goto LABEL_86;
      }

      v62 = v59 - v57;
      v9 = v225;
      v2 = v209;
      v63 = v211;
      if (v225 <= v60)
      {
        v7 = *(v219 + 4 * v3);
      }

      else
      {
        v7 = v225;
      }

      v64 = (v227 + 4 * v60);
      v65 = v61 - v60;
      v66 = v7 - v60;
      while (v66)
      {
        v14 = *v64;
        if (v2 <= v14)
        {
          goto LABEL_172;
        }

        *(v63 + 4 * v14) = v62 + *(v63 + 4 * v14);
        ++v64;
        --v66;
        if (!--v65)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_168;
    }

LABEL_86:
    v68 = v238;
    if (v2 != v54)
    {
      v7 = v215;
      v196 = v205;
      v197 = v213;
      v194 = v207;
      v195 = v217;
      v9 = v219;
      v8 = v223;
      v192 = v225;
      v193 = v221;
      while (1)
      {
        v3 = *v2;
        if (v197 <= v3)
        {
          goto LABEL_248;
        }

        if (v196 <= v3)
        {
          goto LABEL_252;
        }

        v69 = v7[v3];
        if (*(v194 + v3))
        {
          v70 = (powf(*(v194 + v3), -0.5) * 2.0) + 0.0;
        }

        else
        {
          v70 = -1.0;
        }

        v7[v3] = v70;
        if (v195 <= v3)
        {
          goto LABEL_256;
        }

        if (v193 <= v3)
        {
          goto LABEL_260;
        }

        v71 = *(v9 + 4 * v3);
        v72 = *(v8 + 4 * v3);
        if (v71 < v72)
        {
          break;
        }

LABEL_103:
        v79 = *(v2 + 1);
        v78 = *(v2 + 2);
        *(v78 + 8) = v79;
        *(v79 + 2) = v78;
        v238 = --v68;
        v237[v68] = v2;
        v2 = v79;
        if (v79 == v54)
        {
          goto LABEL_104;
        }
      }

      v73 = v70 - v69;
      v3 = v209;
      v74 = v211;
      if (v192 <= v71)
      {
        v14 = v71;
      }

      else
      {
        v14 = v192;
      }

      v75 = (v227 + 4 * v71);
      v76 = v72 - v71;
      v77 = (v14 - v71);
      while (v77)
      {
        v4 = *v75;
        if (v3 <= v4)
        {
          goto LABEL_180;
        }

        *(v74 + 4 * v4) = v73 + *(v74 + 4 * v4);
        ++v75;
        --v77;
        if (!--v76)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_176;
    }

LABEL_104:
    if (!v68)
    {
      v83 = -INFINITY;
      v82 = v198;
      goto LABEL_126;
    }

    v80 = *(v235 + 1);
    v199 = v80;
    v81 = v236;
    v82 = v198;
    if (v80 == v236)
    {
      v83 = -INFINITY;
LABEL_126:
      v9 = 0;
      v89 = v201;
      v33 = -1;
      v2 = v209;
      while (v201 != v9)
      {
        if (!*(v203 + v9))
        {
          if (v209 <= v9)
          {
            goto LABEL_264;
          }

          if (*(v211 + 4 * v9) > v83)
          {
            v83 = *(v211 + 4 * v9);
            v33 = v9;
          }
        }

        if (v82 == ++v9)
        {
          goto LABEL_133;
        }
      }

      goto LABEL_228;
    }

    v33 = -1;
    v83 = -INFINITY;
    do
    {
      v9 = *v80;
      v14 = v217;
      if (v217 <= v9)
      {
        goto LABEL_268;
      }

      v14 = v221;
      if (v221 <= v9)
      {
        goto LABEL_272;
      }

      v84 = *(v219 + 4 * v9);
      v85 = *(v223 + 4 * v9);
      if (v84 < v85)
      {
        v9 = v225;
        v2 = v201;
        v7 = v209;
        if (v225 <= v84)
        {
          v8 = v84;
        }

        else
        {
          v8 = v225;
        }

        v86 = (v227 + 4 * v84);
        v87 = v85 - v84;
        v88 = v8 - v84;
        while (v88)
        {
          v3 = *v86;
          if (v201 <= v3)
          {
            goto LABEL_188;
          }

          if (!*(v203 + v3))
          {
            if (v209 <= v3)
            {
              goto LABEL_216;
            }

            if (*(v211 + 4 * v3) > v83)
            {
              v83 = *(v211 + 4 * v3);
              v33 = *v86;
            }
          }

          ++v86;
          --v88;
          if (!--v87)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_184;
      }

LABEL_121:
      v82 = v198;
      v80 = v199;
    }

    while (v199 != v81);
    if (v33 == -1)
    {
      goto LABEL_126;
    }

LABEL_133:
    v9 = v190 + 1;
  }

  while (v190 + 1 != v82);
LABEL_134:
  if (v200[0])
  {
    v24 = v203;
    if (v203)
    {
      (*(*v200[0] + 40))();
    }
  }

  if (v204[0])
  {
    v24 = v207;
    if (v207)
    {
      (*(*v204[0] + 40))();
    }
  }

  if (v208[0])
  {
    v24 = v211;
    if (v211)
    {
      (*(*v208[0] + 40))();
    }
  }

  if (v212[0])
  {
    v24 = v215;
    if (v215)
    {
      (*(*v212[0] + 40))();
    }
  }

  if (v216[0])
  {
    v24 = v219;
    if (v219)
    {
      (*(*v216[0] + 40))();
    }
  }

  if (v220[0])
  {
    v24 = v223;
    if (v223)
    {
      (*(*v220[0] + 40))();
    }
  }

  if (v224[0])
  {
    v24 = v227;
    if (v227)
    {
      (*(*v224[0] + 40))();
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v228, v24, v25);
}

uint64_t re::internal::anonymous namespace::FixedPoolLinkedList<unsigned int,(unsigned char)35>::NodeIterator::operator++(uint64_t result, uint64_t a2)
{
  v4 = *(*result + 8);
  if (v4)
  {
    *result = v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Incrementing past the end.", "!Unreachable code", "operator++", 45, v2, v3);
    result = _os_crash("assertion failure: (!Unreachable code) Incrementing past the end.");
    __break(1u);
  }

  return result;
}

void re::internal::makeVertexCacheCoherentMesh(uint64_t a1@<X0>, uint64_t *a2@<X1>, re::GeomMesh *a3@<X8>)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v16, 4512, *(a1 + 16), *(a1 + 40), *(a1 + 8), *(a1 + 40) - *(a1 + 8));
  re::GeomMeshBuilder::GeomMeshBuilder(&v11, a1);
  re::internal::computeVertexCacheCoherentFaceOrdering(a1, v10);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2, v10);
  if (v10[0] && v10[4])
  {
    (*(*v10[0] + 40))();
  }

  re::internal::GeomBaseTopology::reorderFaces(&v12, a2);
  re::internal::GeomAttributeManager::reorderFaces(v15, a2);
  v6 = re::GeomMesh::GeomMesh(a3, 0);
  v7 = re::GeomMesh::operator=(v6, &v12);
  re::GeomMesh::setName(v7, v11);
  re::GeomMesh::freeName(&v11);
  re::GeomMesh::freeName(&v11);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v15);
  if (v13)
  {
    v8 = v14;
    if (v14)
    {
      (*(*v13 + 40))();
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v16, v8, v9);
}

uint64_t re::internal::makeVertexCacheCoherentMesh@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::GeomMesh *a3@<X8>)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  re::internal::makeVertexCacheCoherentMesh(a1, v10, a3);
  re::GeomIndexMap::GeomIndexMap(v7, v10);
  re::GeomIndexMap::operator=(a2, v7);
  if (v8)
  {
    if (v8 == 2)
    {
      v5.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v9);
    }

    else
    {
      if (v8 != 1)
      {
        re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        return result;
      }

      if (v9[0] && v9[4])
      {
        (*(*v9[0] + 40))();
      }
    }
  }

  result = v10[0];
  if (v10[0])
  {
    if (v12)
    {
      return (*(*v10[0] + 40))(v10[0], v5);
    }
  }

  return result;
}

uint64_t re::internal::GeomConnectivityNonManifold::computeIncidenceRelations(_anonymous_namespace_ *a1, unsigned int *a2)
{
  v3 = a2;
  v4 = a1;
  v188 = *MEMORY[0x1E69E9840];
  v5 = 0uLL;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v6 = *(a2 + 3);
  v7 = *a2;
  v8 = v6;
  if (v6)
  {
    if (v6 <= v6 - 1)
    {
      goto LABEL_207;
    }

    v9 = 0;
    v10 = *(a2 + 5);
    v11.i64[0] = -1;
    v11.i64[1] = -1;
    v12 = v10;
    v13 = v6;
    do
    {
      v14 = *v12++;
      v9 += (vmaxv_u16(vmovn_s32(vceqq_s32(v14, v11))) & 1) == 0;
      --v13;
    }

    while (v13);
    v15 = 0;
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v17 = v6;
    do
    {
      v18 = *v10++;
      v19 = vceqq_s32(v18, v16);
      v20 = vmovn_s32(vmvnq_s8(v19));
      v20.i16[3] = vmovn_s32(*&v19).i16[3];
      v15 += vminv_u16(v20) & 1;
      --v17;
    }

    while (v17);
    v21 = (6 * v15 + 8 * v9);
  }

  else
  {
    v21 = 0;
  }

  *(v4 + 8) = 0;
  ++*(v4 + 18);
  *(v4 + 13) = 0;
  ++*(v4 + 28);
  *(v4 + 18) = 0;
  ++*(v4 + 38);
  *(v4 + 23) = 0;
  ++*(v4 + 48);
  *(v4 + 28) = 0;
  ++*(v4 + 58);
  *(v4 + 33) = 0;
  ++*(v4 + 68);
  *(v4 + 38) = 0;
  ++*(v4 + 78);
  *(v4 + 43) = 0;
  ++*(v4 + 88);
  *(v4 + 48) = 0;
  ++*(v4 + 98);
  *(v4 + 53) = 0;
  ++*(v4 + 108);
  v22 = &re::kInvalidMeshIndex;
  re::DynamicArray<unsigned int>::resize(v4 + 46, 4 * (v6 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  re::DynamicArray<unsigned int>::resize(v4 + 51, 4 * (v6 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  LODWORD(v183) = 0;
  re::DynamicArray<unsigned int>::resize(v4 + 11, v7, &v183);
  LODWORD(v183) = 0;
  re::DynamicArray<unsigned int>::resize(v4 + 16, v7, &v183);
  v147 = v6;
  if (!v6)
  {
    LODWORD(v24) = 0;
    goto LABEL_52;
  }

  v23 = 0;
  v7 = 0;
  v24 = 0;
  v22 = &v165;
  v146 = v3;
  v150 = v4;
  do
  {
    v25 = 0uLL;
    v170 = 0u;
    v171 = 0u;
    v6 = *(v3 + 3);
    if (v6 <= v7)
    {
      goto LABEL_155;
    }

    v153 = v24;
    v26 = 0;
    v148 = v23;
    v27 = *(v3 + 5) + v23;
    do
    {
      *(&v165 + v26) = *(v27 + v26);
      v26 += 4;
    }

    while (v26 != 16);
    v6 = 0;
    v28 = 0;
    v8 = 0;
    if (HIDWORD(v166) == -1)
    {
      v29 = 3;
    }

    else
    {
      v29 = 4;
    }

    v151 = v7;
    v155 = v29;
    v156 = 4 * v7;
    do
    {
      v30 = &v165 + v8;
      v31 = *v30;
      v2 = v8 + 1;
      v32 = (v8 + 1);
      if (v8 + 1 == v29)
      {
        v32 = 0;
      }

      v33 = *(&v165 + v32);
      if (v31 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = *v30;
      }

      if (v31 <= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = *v30;
      }

      if (v36 == -1)
      {
        *&v183 = __PAIR64__(v35, v34);
        *v173 = v153;
        *&v173[4] = 1;
        if (v43 == -1)
        {
        }

        else
        {
          v38 = (*(&v157 + 1) + 16 * v43 + 8);
        }

        v39 = v153++;
        v4 = v150;
        v22 = &v165;
      }

      else
      {
        v37 = *(&v157 + 1) + 16 * v36;
        v40 = *(v37 + 8);
        v38 = (v37 + 8);
        v39 = v40;
        v41 = &v170;
        if (v8)
        {
          v42 = v28;
          while (*v41 != v38)
          {
            v41 = (v41 + 8);
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_33;
            }
          }
        }

        if (v41 == (&v170 + 8 * v8))
        {
LABEL_33:
          ++v38[1];
        }
      }

      *(&v170 + v8) = v38;
      v7 = (v156 + v8);
      v24 = *(v4 + 48);
      if (v24 <= v7)
      {
        *v176 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v80 = MEMORY[0x1E69E9C10];
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v173 = 136315906;
        *&v173[4] = "operator[]";
        *&v173[12] = 1024;
        if (v81)
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        *&v173[14] = 789;
        *&v173[18] = 2048;
        *&v173[20] = (v156 + v8);
        v174 = 2048;
        *v175 = v24;
        _os_log_send_and_compose_impl(v82, v176, &v183, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v143, v145);
        _os_crash_msg();
        __break(1u);
LABEL_131:
        *v176 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v173 = 136315906;
        *&v173[4] = "operator[]";
        *&v173[12] = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *&v173[14] = 789;
        *&v173[18] = 2048;
        *&v173[20] = (v156 + v8);
        v174 = 2048;
        *v175 = v24;
        _os_log_send_and_compose_impl(v85, v176, &v183, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v143, v145);
        _os_crash_msg();
        __break(1u);
LABEL_135:
        *v176 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v86 = MEMORY[0x1E69E9C10];
        v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v173 = 136315906;
        *&v173[4] = "operator[]";
        *&v173[12] = 1024;
        if (v87)
        {
          v88 = 3;
        }

        else
        {
          v88 = 2;
        }

        *&v173[14] = 789;
        *&v173[18] = 2048;
        *&v173[20] = v31;
        v174 = 2048;
        *v175 = v7;
        _os_log_send_and_compose_impl(v88, v176, &v183, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v143, v145);
        _os_crash_msg();
        __break(1u);
LABEL_139:
        v161 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v89 = MEMORY[0x1E69E9C10];
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v6;
        v181 = 2048;
        v182 = v156;
        _os_log_send_and_compose_impl(v91, &v161, &v183, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_143:
        v161 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v22;
        v181 = 2048;
        v182 = v6;
        _os_log_send_and_compose_impl(v94, &v161, &v183, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_147:
        v161 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v95 = MEMORY[0x1E69E9C10];
        v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v96)
        {
          v97 = 3;
        }

        else
        {
          v97 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v22;
        v181 = 2048;
        v182 = v155;
        _os_log_send_and_compose_impl(v97, &v161, &v183, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_151:
        v161 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v98 = MEMORY[0x1E69E9C10];
        v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v99)
        {
          v100 = 3;
        }

        else
        {
          v100 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v6;
        v181 = 2048;
        v182 = v22;
        _os_log_send_and_compose_impl(v100, &v161, &v183, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_155:
        v165 = 0;
        v186 = v25;
        v187 = v25;
        v184 = v25;
        v185 = v25;
        v183 = v25;
        v101 = MEMORY[0x1E69E9C10];
        v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v173 = 136315906;
        *&v173[4] = "operator[]";
        *&v173[12] = 1024;
        if (v102)
        {
          v103 = 3;
        }

        else
        {
          v103 = 2;
        }

        *&v173[14] = 797;
        *&v173[18] = 2048;
        *&v173[20] = v7;
        v174 = 2048;
        *v175 = v6;
        _os_log_send_and_compose_impl(v103, &v165, &v183, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v143, v145);
        _os_crash_msg();
        __break(1u);
LABEL_159:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v22;
        v181 = 2048;
        v182 = v6;
        _os_log_send_and_compose_impl(v106, v162, &v183, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_163:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v107 = MEMORY[0x1E69E9C10];
        v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v108)
        {
          v109 = 3;
        }

        else
        {
          v109 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v24;
        v181 = 2048;
        v182 = v6;
        _os_log_send_and_compose_impl(v109, v162, &v183, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_167:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v110 = MEMORY[0x1E69E9C10];
        v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v111)
        {
          v112 = 3;
        }

        else
        {
          v112 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v2;
        v181 = 2048;
        v182 = v7;
        _os_log_send_and_compose_impl(v112, v162, &v183, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_171:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v113 = MEMORY[0x1E69E9C10];
        v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v114)
        {
          v115 = 3;
        }

        else
        {
          v115 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v8;
        v181 = 2048;
        v182 = v24;
        _os_log_send_and_compose_impl(v115, v162, &v183, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_175:
        v163 = 0;
        v186 = v54;
        v187 = v54;
        v184 = v54;
        v185 = v54;
        v183 = v54;
        v116 = MEMORY[0x1E69E9C10];
        v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v117)
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        v178 = 797;
        v179 = 2048;
        v180 = v145;
        v181 = 2048;
        v182 = v145;
        _os_log_send_and_compose_impl(v118, &v163, &v183, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_179:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v119 = MEMORY[0x1E69E9C10];
        v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v120)
        {
          v121 = 3;
        }

        else
        {
          v121 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v22;
        v181 = 2048;
        v182 = v7;
        _os_log_send_and_compose_impl(v121, v162, &v183, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
LABEL_183:
        *&v162[0] = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v183 = 0u;
        v122 = MEMORY[0x1E69E9C10];
        v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v176 = 136315906;
        *&v176[4] = "operator[]";
        v177 = 1024;
        if (v123)
        {
          v124 = 3;
        }

        else
        {
          v124 = 2;
        }

        v178 = 789;
        v179 = 2048;
        v180 = v2;
        v181 = 2048;
        v182 = v24;
        _os_log_send_and_compose_impl(v124, v162, &v183, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v144, v145);
        _os_crash_msg();
        __break(1u);
        goto LABEL_187;
      }

      *(*(v4 + 50) + 4 * v7) = v31;
      v24 = *(v4 + 53);
      if (v24 <= v7)
      {
        goto LABEL_131;
      }

      *(*(v4 + 55) + 4 * v7) = v39;
      v44 = &v165;
      if (v8)
      {
        v45 = v6;
        while (*v44 != v31)
        {
          ++v44;
          v45 -= 4;
          if (!v45)
          {
            goto LABEL_46;
          }
        }
      }

      if (v44 == v30)
      {
LABEL_46:
        v7 = *(v4 + 18);
        if (v7 <= v31)
        {
          goto LABEL_135;
        }

        ++*(*(v4 + 20) + 4 * v31);
      }

      v28 += 8;
      v6 += 4;
      ++v8;
      v29 = v155;
    }

    while (v2 != v155);
    v7 = v151 + 1;
    v8 = v147;
    v23 = v148 + 16;
    v3 = v146;
    v24 = v153;
  }

  while (v151 + 1 != v147);
LABEL_52:
  v144 = v24;
  re::DynamicArray<float>::resize(v4 + 288, v24);
  re::DynamicArray<float>::resize(v4 + 248, (2 * v24));
  *&v170 = &v157;
  if (v158 < 0x10)
  {
LABEL_56:
    v24 = *(v4 + 38);
  }

  else
  {
    v46 = 0;
    v47 = v157;
    v48 = v158 >> 4;
    while (1)
    {
      v49 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v47), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v49 != 0xFFFFLL)
      {
        break;
      }

      v46 -= 16;
      ++v47;
      if (!--v48)
      {
        goto LABEL_56;
      }
    }

    v75 = __clz(__rbit64(v49 ^ 0xFFFFLL));
    v76 = v75 - v46;
    *(&v170 + 1) = v49 ^ 0xFFFFLL;
    *&v171 = v75 - v46;
    v24 = *(v4 + 38);
    if (v75 + 1 != v46)
    {
      while (1)
      {
        v77 = (*(v170 + 8) + 16 * v76);
        v6 = v77[2];
        if (v24 <= v6)
        {
          break;
        }

        v22 = *v77;
        v7 = v77[1];
        *(*(v4 + 40) + 4 * v6) = v77[3];
        v2 = (2 * v6);
        v6 = *(v4 + 33);
        if (v6 <= v2)
        {
          goto LABEL_191;
        }

        v78 = *(v4 + 35);
        *(v78 + 4 * v2) = v22;
        v2 = v2 | 1;
        if (v6 <= v2)
        {
          goto LABEL_195;
        }

        *(v78 + 4 * v2) = v7;
        v6 = *(v4 + 13);
        if (v6 <= v22)
        {
          goto LABEL_199;
        }

        v79 = *(v4 + 15);
        ++*(v79 + 4 * v22);
        if (v22 != v7)
        {
          if (v6 <= v7)
          {
            goto LABEL_203;
          }

          ++*(v79 + 4 * v7);
        }

        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v170);
        v76 = v171;
        if (v171 == -1)
        {
          goto LABEL_57;
        }
      }

LABEL_187:
      v165 = 0;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v125 = MEMORY[0x1E69E9C10];
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      *&v173[14] = 789;
      *&v173[18] = 2048;
      *&v173[20] = v6;
      v174 = 2048;
      *v175 = v24;
      _os_log_send_and_compose_impl(v127, &v165, &v183, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v144, v145);
      _os_crash_msg();
      __break(1u);
LABEL_191:
      v165 = 0;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v128 = MEMORY[0x1E69E9C10];
      v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v129)
      {
        v130 = 3;
      }

      else
      {
        v130 = 2;
      }

      *&v173[14] = 789;
      *&v173[18] = 2048;
      *&v173[20] = v2;
      v174 = 2048;
      *v175 = v6;
      _os_log_send_and_compose_impl(v130, &v165, &v183, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v144, v145);
      _os_crash_msg();
      __break(1u);
LABEL_195:
      v165 = 0;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v131 = MEMORY[0x1E69E9C10];
      v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v132)
      {
        v133 = 3;
      }

      else
      {
        v133 = 2;
      }

      *&v173[14] = 789;
      *&v173[18] = 2048;
      *&v173[20] = v2;
      v174 = 2048;
      *v175 = v6;
      _os_log_send_and_compose_impl(v133, &v165, &v183, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v144, v145);
      _os_crash_msg();
      __break(1u);
LABEL_199:
      v165 = 0;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v134 = MEMORY[0x1E69E9C10];
      v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v135)
      {
        v136 = 3;
      }

      else
      {
        v136 = 2;
      }

      *&v173[14] = 789;
      *&v173[18] = 2048;
      *&v173[20] = v22;
      v174 = 2048;
      *v175 = v6;
      _os_log_send_and_compose_impl(v136, &v165, &v183, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v144, v145);
      _os_crash_msg();
      __break(1u);
LABEL_203:
      v165 = 0;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
      v137 = MEMORY[0x1E69E9C10];
      v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v138)
      {
        v139 = 3;
      }

      else
      {
        v139 = 2;
      }

      *&v173[14] = 789;
      *&v173[18] = 2048;
      *&v173[20] = v7;
      v174 = 2048;
      *v175 = v6;
      _os_log_send_and_compose_impl(v139, &v165, &v183, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v144, v145);
      _os_crash_msg();
      __break(1u);
LABEL_207:
      *&v170 = 0;
      v186 = v5;
      v187 = v5;
      v184 = v5;
      v185 = v5;
      v183 = v5;
      v140 = MEMORY[0x1E69E9C10];
      v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v173 = 136315906;
      *&v173[4] = "operator[]";
      *&v173[12] = 1024;
      if (v141)
      {
        v142 = 3;
      }

      else
      {
        v142 = 2;
      }

      *&v173[14] = 797;
      *&v173[18] = 2048;
      *&v173[20] = v6;
      v174 = 2048;
      *v175 = v6;
      _os_log_send_and_compose_impl(v142, &v170, &v183, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v173, 38, v143, v145);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_57:
  re::DynamicArray<float>::resize(v4 + 328, v50);
  re::DynamicArray<float>::resize(v4 + 168, v51);
  re::DynamicArray<float>::resize(v4 + 208, v52);
  *&v175[2] = 0;
  memset(v173, 0, sizeof(v173));
  v172 = 0;
  *&v171 = 0;
  v169 = 0;
  v170 = 0uLL;
  DWORD2(v171) = 0;
  v166 = 0;
  v167 = 0;
  v165 = 0;
  v168 = 0;
  if (v8)
  {
    v2 = 0;
    v145 = *(v3 + 3);
    v53 = *(v3 + 5);
    do
    {
      v54 = 0uLL;
      memset(v162, 0, sizeof(v162));
      if (v2 == v145)
      {
        goto LABEL_175;
      }

      for (i = 0; i != 16; i += 4)
      {
        *(&v163 + i) = *(v53 + i);
      }

      v149 = v53;
      v8 = 0;
      v7 = 0;
      v56 = 0;
      if (v164 == -1)
      {
        v24 = 3;
      }

      else
      {
        v24 = 4;
      }

      v155 = v167;
      v156 = *&v173[16];
      v152 = v169;
      v154 = *&v175[2];
      do
      {
        v57 = &v163;
        v22 = &v163 + 4 * v56;
        v6 = *v22;
        v58 = v56 + 1;
        v59 = (v56 + 1);
        if (v56 + 1 == v24)
        {
          v59 = 0;
        }

        v60 = *(&v163 + v59);
        if (v6 >= v60)
        {
          v61 = v60;
        }

        else
        {
          v61 = *v22;
        }

        if (v6 <= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = *v22;
        }

        v64 = (*(&v157 + 1) + 16 * v63 + 8);
        if (v63 == -1)
        {
          v64 = 0;
        }

        v65 = v162 + v56;
        *v65 = v64;
        if (v56)
        {
          v57 = &v163;
          v66 = v7;
          while (*v57 != v6)
          {
            ++v57;
            v66 -= 4;
            if (!v66)
            {
              goto LABEL_82;
            }
          }
        }

        if (v57 == v22)
        {
LABEL_82:
          if (v156 <= v6)
          {
            goto LABEL_139;
          }

          v22 = *(v154 + 4 * v6);
          *(v154 + 4 * v6) = v22 + 1;
          v6 = *(v4 + 28);
          if (v6 <= v22)
          {
            goto LABEL_143;
          }

          *(*(v4 + 30) + 4 * v22) = v2;
        }

        v67 = v162;
        if (v56)
        {
          v68 = v8;
          while (*v67 != v64)
          {
            ++v67;
            v68 -= 8;
            if (!v68)
            {
              goto LABEL_91;
            }
          }
        }

        if (v67 == v65)
        {
LABEL_91:
          v22 = *v64;
          if (v155 <= v22)
          {
            goto LABEL_147;
          }

          v6 = *(v152 + 4 * v22);
          *(v152 + 4 * v22) = v6 + 1;
          v22 = *(v4 + 43);
          if (v22 <= v6)
          {
            goto LABEL_151;
          }

          *(*(v4 + 45) + 4 * v6) = v2;
        }

        v7 += 4;
        v8 += 8;
        ++v56;
      }

      while (v58 != v24);
      ++v2;
      v53 = v149 + 16;
    }

    while (v2 != v147);
  }

  if (v144)
  {
    v69 = 0;
    v6 = *(v4 + 33);
    v70 = 1;
    v7 = v171;
    v71 = v172;
    do
    {
      v22 = v70 - 1;
      if (v6 <= v22)
      {
        goto LABEL_159;
      }

      v24 = v70;
      if (v6 <= v70)
      {
        goto LABEL_163;
      }

      v72 = *(v4 + 35);
      v2 = *(v72 + 4 * v22);
      if (v7 <= v2)
      {
        goto LABEL_167;
      }

      v22 = *(v72 + 4 * v70);
      v8 = *(v71 + 4 * v2);
      *(v71 + 4 * v2) = v8 + 1;
      v24 = *(v4 + 23);
      if (v24 <= v8)
      {
        goto LABEL_171;
      }

      v73 = *(v4 + 25);
      *(v73 + 4 * v8) = v69;
      if (v2 != v22)
      {
        if (v7 <= v22)
        {
          goto LABEL_179;
        }

        v2 = *(v71 + 4 * v22);
        *(v71 + 4 * v22) = v2 + 1;
        if (v24 <= v2)
        {
          goto LABEL_183;
        }

        *(v73 + 4 * v2) = v69;
      }

      ++v69;
      v70 += 2;
    }

    while (v144 != v69);
  }

  if (v165 && v169)
  {
    (*(*v165 + 40))();
  }

  if (v170 && v172)
  {
    (*(*v170 + 40))();
  }

  if (*v173 && *&v175[2])
  {
    (*(**v173 + 40))();
  }
}