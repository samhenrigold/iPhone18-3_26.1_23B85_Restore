void re::internal::registerMakeIKRigSolverSettings(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719668;
  v11[1] = *&off_1E8719678;
  v11[2] = xmmword_1E8719688;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRigSolverSettings(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v12);
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v13);
    __break(1u);
    goto LABEL_15;
  }

  if (!a5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v14);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = *a4;
  v15 = "inMaxIterations";
  v16 = 15;
  re::RigDataValue::attributeValue(v7, &v15, v17);
  re::RigDataValue::operator=(v18, v6);
  if (v17[0] & 1) == 0 && v19 && (v20)
  {
    (*(*v19 + 40))();
  }

  v15 = "inRetargetingGain";
  v16 = 17;
  re::RigDataValue::attributeValue(v7, &v15, v17);
  re::RigDataValue::operator=(v18, v5);
  if (v17[0] & 1) == 0 && v19 && (v20)
  {
    (*(*v19 + 40))();
  }

  return 1;
}

void re::internal::registerMakeIKRetargetingOffset(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[0] = xmmword_1E8719698;
  v11[1] = *&off_1E87196A8;
  v11[2] = xmmword_1E87196B8;
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t anonymous namespace::makeIKRetargetingOffset(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v12);
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == 1)
  {
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v13);
    __break(1u);
    goto LABEL_15;
  }

  if (!a5)
  {
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v14);
    __break(1u);
    return result;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = *a4;
  v15 = "inJointIndex";
  v16 = 12;
  re::RigDataValue::attributeValue(v7, &v15, v17);
  re::RigDataValue::operator=(v18, v6);
  if (v17[0] & 1) == 0 && v19 && (v20)
  {
    (*(*v19 + 40))();
  }

  v15 = "inRotationOffset";
  v16 = 16;
  re::RigDataValue::attributeValue(v7, &v15, v17);
  re::RigDataValue::operator=(v18, v5);
  if (v17[0] & 1) == 0 && v19 && (v20)
  {
    (*(*v19 + 40))();
  }

  return 1;
}

void re::introspect_BlendSpaceType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE190330, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE190338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190338))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1904A0, "BlendSpaceType", 4, 4, 1, 1);
      qword_1EE1904A0 = &unk_1F5D0C658;
      qword_1EE1904E0 = &re::introspect_BlendSpaceType(BOOL)::enumTable;
      dword_1EE1904B0 = 9;
      __cxa_guard_release(&qword_1EE190338);
    }

    if (_MergedGlobals_16)
    {
      break;
    }

    _MergedGlobals_16 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1904A0, a2);
    v41 = 0x3CA07D4B122E305ELL;
    v42 = "BlendSpaceType";
    v45 = 0x607DD0F01DCLL;
    v46 = "uint32_t";
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
      v6 = qword_1EE1904E0;
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
      xmmword_1EE1904C0 = v43;
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
    if (__cxa_guard_acquire(&qword_1EE190330))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "None";
      qword_1EE1903C0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "1DLinearUniform";
      qword_1EE1903C8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "1DLinearNonUniform";
      qword_1EE1903D0 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "2DLinearUniform";
      qword_1EE1903D8 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "KernelRegression";
      qword_1EE1903E0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "RBFInterpolation";
      qword_1EE1903E8 = v39;
      __cxa_guard_release(&qword_1EE190330);
    }
  }
}

void *re::allocInfo_BlendSpaceAxisDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1904E8, "BlendSpaceAxisDefinition");
    __cxa_guard_release(&qword_1EE190340);
  }

  return &unk_1EE1904E8;
}

void re::initInfo_BlendSpaceAxisDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x65A436012C3C7D12;
  v32[1] = "BlendSpaceAxisDefinition";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE190348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190348))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1903F0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "controlValueBindPath";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1903F8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "minValue";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE190400 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "maxValue";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2400000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE190408 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "defaultControlValue";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE190410 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_uint32_t(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "uniformSampleCount";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x2C00000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE190418 = v30;
    __cxa_guard_release(&qword_1EE190348);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1903F0;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceAxisDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceAxisDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceAxisDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceAxisDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

void re::internal::defaultConstruct<re::BlendSpaceAxisDefinition>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[2] = 0;
  a3[3] = &str_67;
  a3[4] = 0;
  a3[5] = 0;
}

void re::internal::defaultDestruct<re::BlendSpaceAxisDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::BlendSpaceAxisDefinition>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  result[3] = &str_67;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendSpaceAxisDefinition>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendSpaceSampleDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190358))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190578, "BlendSpaceSampleDefinition");
    __cxa_guard_release(&qword_1EE190358);
  }

  return &unk_1EE190578;
}

void re::initInfo_BlendSpaceSampleDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x63C009CC69597824;
  v20[1] = "BlendSpaceSampleDefinition";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE190360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190360))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190390 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "falloffParameter";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE190398 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "position";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1903A0 = v18;
    __cxa_guard_release(&qword_1EE190360);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190390;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceSampleDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceSampleDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceSampleDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceSampleDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 56) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = 0;
}

void re::internal::defaultDestruct<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 24);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::BlendSpaceSampleDefinition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendSpaceSampleDefinition>(re::StringID *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendSpaceDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE190370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190370))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190608, "BlendSpaceDefinition");
    __cxa_guard_release(&qword_1EE190370);
  }

  return &unk_1EE190608;
}

void re::initInfo_BlendSpaceDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x32C0B3902874E510;
  v15[1] = "BlendSpaceDefinition";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE190378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190378))
  {
    v7 = re::introspectionAllocator();
    re::introspect_BlendSpaceType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "type";
    *(v9 + 16) = &qword_1EE1904A0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1903A8 = v9;
    v10 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceAxisDefinition>>::get(v10);
    v11 = (*(*v10 + 32))(v10, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "axes";
    *(v11 + 16) = &qword_1EE190420;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1903B0 = v11;
    v12 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceSampleDefinition>>::get(v12);
    v13 = (*(*v12 + 32))(v12, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "samples";
    *(v13 + 16) = &qword_1EE190460;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x3000000003;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1903B8 = v13;
    __cxa_guard_release(&qword_1EE190378);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1903A8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendSpaceDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendSpaceDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendSpaceDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendSpaceDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceAxisDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190380, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190380);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190420);
      qword_1EE190420 = &unk_1F5CB0090;
      __cxa_guard_release(&qword_1EE190380);
    }
  }

  if ((byte_1EE190329 & 1) == 0)
  {
    v1 = qword_1EE190350;
    if (qword_1EE190350 || (v1 = re::allocInfo_BlendSpaceAxisDefinition(a1), qword_1EE190350 = v1, re::initInfo_BlendSpaceAxisDefinition(v1, v2, v3, v4), (byte_1EE190329 & 1) == 0))
    {
      byte_1EE190329 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190420, 0);
      qword_1EE190430 = 0x2800000003;
      dword_1EE190438 = v5;
      word_1EE19043C = 0;
      *&xmmword_1EE190440 = 0;
      *(&xmmword_1EE190440 + 1) = 0xFFFFFFFFLL;
      qword_1EE190450 = v1;
      unk_1EE190458 = 0;
      qword_1EE190420 = &unk_1F5CB0090;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE190420);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE190440 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendSpaceSampleDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE190388, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE190388);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE190460);
      qword_1EE190460 = &unk_1F5CB0128;
      __cxa_guard_release(&qword_1EE190388);
    }
  }

  if ((byte_1EE19032A & 1) == 0)
  {
    v1 = qword_1EE190368;
    if (qword_1EE190368 || (v1 = re::allocInfo_BlendSpaceSampleDefinition(a1), qword_1EE190368 = v1, re::initInfo_BlendSpaceSampleDefinition(v1, v2, v3, v4), (byte_1EE19032A & 1) == 0))
    {
      byte_1EE19032A = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE190460, 0);
      qword_1EE190470 = 0x2800000003;
      dword_1EE190478 = v5;
      word_1EE19047C = 0;
      *&xmmword_1EE190480 = 0;
      *(&xmmword_1EE190480 + 1) = 0xFFFFFFFFLL;
      qword_1EE190490 = v1;
      unk_1EE190498 = 0;
      qword_1EE190460 = &unk_1F5CB0128;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE190460);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE190480 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendSpaceDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendSpaceDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a3 + 48);

  return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::BlendSpaceDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendSpaceDefinition>(uint64_t a1)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1 + 48);

  return re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 8);
}

void *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &str_67;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = 0;
  re::DynamicArray<re::BlendSpaceAxisDefinition>::add(this, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11.n128_u8[0])
  {
    if (v11.n128_u8[0])
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::BlendSpaceAxisDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
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
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 48 * a3;
}

void *re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 2) = *(v8 + 2);
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 6;
          v8 += 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2;
    v9 = a2;
    do
    {
      v10 = result[4] + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 48;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = (result[4] + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[2] = 0;
        v7[3] = &str_67;
        v7[4] = 0;
        v7[5] = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

__n128 re::DynamicArray<re::BlendSpaceAxisDefinition>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 48 * v4);
  v6 = a2->n128_u64[0];
  v5->n128_u64[0] = v5->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v5->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  v7 = a2[1].n128_u64[0];
  v5[1].n128_u64[0] = v5[1].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[1].n128_u64[0] = a2[1].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = &str_67;
  result = a2[2];
  v5[2] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BlendSpaceAxisDefinition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::BlendSpaceAxisDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::BlendSpaceAxisDefinition>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 48 * v2;
    do
    {
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 48 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceAxisDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v12[0] = 0;
  v13 = 0uLL;
  v15 = 0;
  v16 = 0;
  v12[1] = &str_67;
  v14 = 0uLL;
  v8 = re::DynamicArray<re::BlendSpaceSampleDefinition>::add(this, v12);
  v9 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    if (v16)
    {
      v9 = (*(**(&v13 + 1) + 40))(v8);
    }

    v16 = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    LODWORD(v15) = v15 + 1;
  }

  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  v10 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v10);
  return v10;
}

unint64_t re::IntrospectionDynamicArray<re::BlendSpaceSampleDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
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
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 4) = *(v8 + 4);
          v11[7] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = 0;
          *(v11 + 12) = 0;
          v13 = v8[4];
          v11[3] = v8[3];
          v8[3] = 0;
          v11[4] = v13;
          v8[4] = 0;
          v14 = v11[5];
          v11[5] = v8[5];
          v8[5] = v14;
          v15 = v11[7];
          v11[7] = v8[7];
          v8[7] = v15;
          ++*(v8 + 12);
          ++*(v11 + 12);
          re::DynamicArray<unsigned long>::deinit((v8 + 3));
          re::StringID::destroyString(v8);
          v11 += 8;
          v8 += 8;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = a2 << 6;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::DynamicArray<unsigned long>::deinit(v10 + 24);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 64;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0;
        *(v7 + 56) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 24) = 0;
        *(v7 + 48) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

float re::DynamicArray<re::BlendSpaceSampleDefinition>::add(_anonymous_namespace_ *this, float *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = &str_67;
  result = a2[4];
  *(v5 + 16) = result;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  v8 = *(a2 + 4);
  *(v5 + 24) = *(a2 + 3);
  *(v5 + 32) = v8;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v9 = *(v5 + 40);
  *(v5 + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(v5 + 56);
  *(v5 + 56) = *(a2 + 7);
  *(a2 + 7) = v10;
  ++*(a2 + 12);
  ++*(v5 + 48);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BlendSpaceSampleDefinition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::BlendSpaceSampleDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::BlendSpaceSampleDefinition>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = v2 << 6;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 24);
      re::StringID::destroyString(v3);
      v3 = (v3 + 64);
      v4 -= 64;
    }

    while (v4);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendSpaceSampleDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::StateParameterBlackboard::deinit(re::StateParameterBlackboard *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 3);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 10);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 8, *(*(this + 3) + 32 * v3 + 24));
    LODWORD(v2) = *(this + 10);
    if (v2 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = *(this + 10);
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 3) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v3) = v6;
LABEL_16:
    ;
  }

  if (*(this + 9))
  {
    v7 = *(this + 8);
    if (v7)
    {
      memset_pattern16(*(this + 2), &unk_1E304C660, 4 * v7);
      LODWORD(v2) = *(this + 10);
    }

    if (v2)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(this + 3);
        v11 = *(v10 + v8);
        if (v11 < 0)
        {
          *(v10 + v8) = v11 & 0x7FFFFFFF;
          re::StringID::destroyString((v10 + v8 + 8));
          LODWORD(v2) = *(this + 10);
        }

        ++v9;
        v8 += 32;
      }

      while (v9 < v2);
    }

    *(this + 9) = 0;
    *(this + 10) = 0;
    v12 = *(this + 12) + 1;
    *(this + 11) = 0x7FFFFFFF;
    *(this + 12) = v12;
  }

  v13 = *(this + 22);
  if (v13)
  {
    v14 = 0;
    v15 = *(this + 9);
    while (1)
    {
      v16 = *v15;
      v15 += 8;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(this + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  while (v14 != v13)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 13, *(*(this + 9) + 32 * v14 + 24));
    LODWORD(v13) = *(this + 22);
    if (v13 <= v14 + 1)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = *(this + 22);
    }

    while (v17 - 1 != v14)
    {
      LODWORD(v14) = v14 + 1;
      if ((*(*(this + 9) + 32 * v14) & 0x80000000) != 0)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v14) = v17;
LABEL_41:
    ;
  }

  if (*(this + 21))
  {
    v18 = *(this + 20);
    if (v18)
    {
      memset_pattern16(*(this + 8), &unk_1E304C660, 4 * v18);
      LODWORD(v13) = *(this + 22);
    }

    if (v13)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *(this + 9);
        v22 = *(v21 + v19);
        if (v22 < 0)
        {
          *(v21 + v19) = v22 & 0x7FFFFFFF;
          re::StringID::destroyString((v21 + v19 + 8));
          LODWORD(v13) = *(this + 22);
        }

        ++v20;
        v19 += 32;
      }

      while (v20 < v13);
    }

    *(this + 21) = 0;
    *(this + 22) = 0;
    v23 = *(this + 24) + 1;
    *(this + 23) = 0x7FFFFFFF;
    *(this + 24) = v23;
  }

  v24 = *(this + 34);
  if (v24)
  {
    v25 = 0;
    v26 = *(this + 15);
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(this + 34);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  while (v25 != v24)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 18, *(*(this + 15) + 32 * v25 + 24));
    LODWORD(v24) = *(this + 34);
    if (v24 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = *(this + 34);
    }

    while (v28 - 1 != v25)
    {
      LODWORD(v25) = v25 + 1;
      if ((*(*(this + 15) + 32 * v25) & 0x80000000) != 0)
      {
        goto LABEL_66;
      }
    }

    LODWORD(v25) = v28;
LABEL_66:
    ;
  }

  if (*(this + 33))
  {
    v29 = *(this + 32);
    if (v29)
    {
      memset_pattern16(*(this + 14), &unk_1E304C660, 4 * v29);
      LODWORD(v24) = *(this + 34);
    }

    if (v24)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(this + 15);
        v33 = *(v32 + v30);
        if (v33 < 0)
        {
          *(v32 + v30) = v33 & 0x7FFFFFFF;
          re::StringID::destroyString((v32 + v30 + 8));
          LODWORD(v24) = *(this + 34);
        }

        ++v31;
        v30 += 32;
      }

      while (v31 < v24);
    }

    *(this + 33) = 0;
    *(this + 34) = 0;
    v34 = *(this + 36) + 1;
    *(this + 35) = 0x7FFFFFFF;
    *(this + 36) = v34;
  }

  v35 = *(this + 46);
  if (v35)
  {
    v36 = 0;
    v37 = *(this + 21);
    while (1)
    {
      v38 = *v37;
      v37 += 8;
      if (v38 < 0)
      {
        break;
      }

      if (v35 == ++v36)
      {
        LODWORD(v36) = *(this + 46);
        break;
      }
    }
  }

  else
  {
    LODWORD(v36) = 0;
  }

  while (v36 != v35)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("deinit", 23, *(*(this + 21) + 32 * v36 + 24));
    LODWORD(v35) = *(this + 46);
    if (v35 <= v36 + 1)
    {
      v39 = v36 + 1;
    }

    else
    {
      v39 = *(this + 46);
    }

    while (v39 - 1 != v36)
    {
      LODWORD(v36) = v36 + 1;
      if ((*(*(this + 21) + 32 * v36) & 0x80000000) != 0)
      {
        goto LABEL_91;
      }
    }

    LODWORD(v36) = v39;
LABEL_91:
    ;
  }

  if (*(this + 45))
  {
    v40 = *(this + 44);
    if (v40)
    {
      memset_pattern16(*(this + 20), &unk_1E304C660, 4 * v40);
      LODWORD(v35) = *(this + 46);
    }

    if (v35)
    {
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = *(this + 21);
        v44 = *(v43 + v41);
        if (v44 < 0)
        {
          *(v43 + v41) = v44 & 0x7FFFFFFF;
          re::StringID::destroyString((v43 + v41 + 8));
          LODWORD(v35) = *(this + 46);
        }

        ++v42;
        v41 += 32;
      }

      while (v42 < v35);
    }

    *(this + 45) = 0;
    *(this + 46) = 0;
    v45 = *(this + 48) + 1;
    *(this + 47) = 0x7FFFFFFF;
    *(this + 48) = v45;
  }
}

re *re::internal::destroyPersistent<re::StateParameterInt>(re *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    *a3 = &unk_1F5CB01C0;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit((a3 + 2));
    re::DynamicArray<re::BindPoint::BindPointData>::deinit((a3 + 2));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

BOOL re::StateParameterBlackboard::removeStateParameterInt(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterInt", 33, *(*(this + 3) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 8, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterFloat(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterFloat", 43, *(*(this + 9) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 56, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterBool(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterBool", 53, *(*(this + 15) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 104, v8);
  }

  return v5 != 0x7FFFFFFF;
}

BOOL re::StateParameterBlackboard::removeStateParameterTrigger(re::StateParameterBlackboard *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, v4 ^ (v4 >> 31), v8);
  v5 = v9;
  if (v9 != 0x7FFFFFFF)
  {
    re::internal::destroyPersistent<re::StateParameterInt>("removeStateParameterTrigger", 63, *(*(this + 21) + 32 * v9 + 24));
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, v6 ^ (v6 >> 31), v8);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v8);
  }

  return v5 != 0x7FFFFFFF;
}

_BYTE *re::StateParameter::processParameterReset(_BYTE *this)
{
  if (this[56] == 1)
  {
    v1 = this;
    this = (*(*this + 8))(this);
    v1[56] = 0;
  }

  return this;
}

BOOL re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 32 * v12);
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

double re::AnimationManager::AnimationManager(re::AnimationManager *this)
{
  *this = &unk_1F5CB01F0;
  *(this + 1) = 0;
  *(this + 8) = 259;
  *(this + 5) = 1023969417;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = -1;
  *(this + 28) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 124) = 0x1FFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 17) = 0;
  *(this + 46) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 188) = 0x1FFFFFFFFLL;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 66) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 300) = 0u;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 90) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 364) = 0x7FFFFFFFLL;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 100) = 0;
  *(this + 49) = 0;
  *(this + 110) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 476) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 492) = 0x7FFFFFFFLL;
  *(this + 252) = 0;
  *(this + 506) = 0;
  return result;
}

void re::AnimationManager::~AnimationManager(re::AnimationManager *this)
{
  re::AnimationManager::deinit(this);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 57);
  for (i = 416; i != 336; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  for (j = 328; j != 232; j -= 48)
  {
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((this + j));
  }

  for (k = 240; k != 160; k -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + k);
  }

  for (m = 136; m != 8; m -= 64)
  {
    re::DataArray<re::internal::TimelineTreeInfo>::deinit(this + m);
    re::DynamicArray<unsigned long>::deinit(this + m);
  }
}

{
  re::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1E6906520);
}

void re::AnimationManager::deinit(re::AnimationManager *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (*(this + 29))
    {
      v3 = 0;
      v4 = this + 376;
      v5 = 1;
      do
      {
        v6 = v5;
        re::DataArray<re::internal::TimelineTreeInfo>::deinit(this + 64 * v3 + 72);
        v7 = this + 40 * v3 + 200;
        v8 = *(v7 + 2);
        if (v8)
        {
          v9 = *(v7 + 4);
          v10 = 8 * v8;
          do
          {
            v11 = *v9;
            if (*v9)
            {
              re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(*v9);
            }

            ++v9;
            v10 -= 8;
          }

          while (v10);
        }

        re::DynamicArray<unsigned long>::deinit(v7);
        v12 = &v4[40 * v3];
        v13 = *(v12 + 2);
        if (v13)
        {
          v14 = *(v12 + 4);
          v15 = 8 * v13;
          do
          {
            v16 = *v14;
            if (*v14)
            {
              (**v16)(*v14);
            }

            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 6 * v3 + 35);
        re::DynamicArray<unsigned long>::deinit(&v4[40 * v3]);
        v5 = 0;
        v3 = 1;
      }

      while ((v6 & 1) != 0);
      v2 = *(this + 8);
    }

    CFRelease(v2);
    *(this + 8) = 0;
    *(this + 57) = 0;
  }
}

void re::AnimationManager::init(re::AnimationManager *this, CFTypeRef cf, char a3)
{
  if (cf)
  {
    *(this + 57) = 0;
    *(this + 8) = cf;
    v5 = CFRetain(cf);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(this + 57) = 1;
    v6 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    v5 = CMTimebaseCreateWithSourceClock(v6, HostTimeClock, this + 8);
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v5 = dyld_program_sdk_at_least();
  if (v5)
  {
    v8 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v9 = *re::animationLogObjects(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Using deprecated animation clock. Please rebuild application using newer SDK.", v10, 2u);
  }

  v8 = 1;
LABEL_10:
  *(this + 506) = v8;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::deinit(uint64_t result)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v34, result, 0);
  v3 = v34;
  v23 = v34;
  v24 = DWORD2(v34);
  if (v34 != v2 || DWORD2(v34) != 0xFFFFFFFFLL)
  {
    v5 = WORD4(v34);
    v6 = WORD5(v34);
    while (1)
    {
      v7 = *(v3 + 16);
      if (v7 <= v6)
      {
        break;
      }

      re::DataArray<re::internal::TimelineTreeInfo>::destroy(v2, ((*(*(*(v3 + 32) + 16 * v6 + 8) + 4 * v5) & 0xFFFFFF) << 32) | (v6 << 16) | v5);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v3 = v23;
      v5 = v24;
      v6 = HIWORD(v24);
      if (v23 == v2 && v24 == 0xFFFFLL && HIWORD(v24) == 0xFFFFLL)
      {
        goto LABEL_11;
      }
    }

LABEL_34:
    v25 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v21, &v25, &v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  v8 = v2[2];
  v6 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_23;
  }

  v7 = 16 * v8 - 16;
  do
  {
    if (v8 <= v6)
    {
      v23 = 0;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v29 = 789;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v8;
      _os_log_send_and_compose_impl(v15, &v23, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v23 = 0;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "removeAt";
      v28 = 1024;
      if (v17)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v29 = 931;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = v1;
      _os_log_send_and_compose_impl(v18, &v23, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
      _os_crash_msg();
      __break(1u);
      goto LABEL_34;
    }

    v9 = (v2[4] + v7);
    (*(**v2 + 40))(*v2, *v9);
    (*(**v2 + 40))(*v2, v9[1]);
    v1 = v2[2];
    if (v1 <= v6)
    {
      goto LABEL_30;
    }

    v8 = v1 - 1;
    if (v1 - 1 > v6)
    {
      *(v2[4] + v7) = *(v2[4] + 16 * v1 - 16);
      v8 = v2[2] - 1;
    }

    v2[2] = v8;
    ++*(v2 + 6);
    v7 -= 16;
    --v6;
  }

  while (v6);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v8)
  {
    v23 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = 0;
    v32 = 2048;
    v33 = 0;
    _os_log_send_and_compose_impl(v11, &v23, &v34, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v12 = v2[4];
  (*(**v2 + 40))(*v2, *v12);
  (*(**v2 + 40))(*v2, v12[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

double re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
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

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::AnimationManager::setTaskOptions(uint64_t result, float *a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    result = re::Scheduler::setTaskOptions(*(result + 8), v4, a2);
  }

  v5 = *a2;
  *(v3 + 24) = *(a2 + 8);
  *(v3 + 16) = v5;
  return result;
}

uint64_t re::Scheduler::setTaskOptions(re::Scheduler *a1, unint64_t a2, float *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  re::Scheduler::updateTaskSchedule(a1, a2, *a3);
  result = re::Scheduler::setTaskUpdateInterval(a1, a2, a3[1]);
  v7 = *(a1 + 59);
  if (v7 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v18 = 468;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl(v9, &v14, &v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 468;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 60) + a2) = *(a3 + 1);
  v7 = *(a1 + 62);
  if (v7 <= a2)
  {
    goto LABEL_8;
  }

  *(*(a1 + 63) + a2) = *(a3 + 8);
  return result;
}

void re::AnimationManager::isAnimated(re::AnimationManager *this, const re::BindNode *a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported. BindNode does not yet have a function to iterate over children.", "!Unreachable code", "isAnimated", 380);
  _os_crash("assertion failure: (!Unreachable code) Not supported. BindNode does not yet have a function to iterate over children.");
  __break(1u);
}

uint64_t re::AnimationManager::isAnimated(re::AnimationManager *this, const re::BindPoint *a2)
{
  v2 = *(this + 29);
  if (v2)
  {
    re::AnimationManager::updateLookupTableForAllBuckets(this);
    v5 = re::BindPoint::targetIdentifier(a2);
    v6 = 0;
    v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
    v8 = v7 ^ (v7 >> 31);
    v9 = 1;
    while (1)
    {
      v10 = v9;
      v11 = this + 48 * v6 + 280;
      if (*v11)
      {
        v12 = *(*(v11 + 1) + 4 * (v8 % *(v11 + 6)));
        if (v12 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_8:
      v9 = 0;
      v2 = 0;
      v6 = 1;
      if ((v10 & 1) == 0)
      {
        return v2;
      }
    }

    v13 = *(v11 + 2);
    while (*(v13 + 32 * v12 + 8) != v5)
    {
      v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  return v2;
}

uint64_t re::AnimationManager::updateLookupTableForAllBuckets(uint64_t this)
{
  v1 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v16 = this + 280;
  v2 = this + 376;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = v2 + 40 * v1;
    if (*(v5 + 16) >= 1)
    {
      v6 = v16 + 48 * v1;
      v7 = (*(v5 + 16) & 0x7FFFFFFFLL) - 1;
      do
      {
        v8 = *(v5 + 16);
        if (v8 <= v7)
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

          v21 = 797;
          v22 = 2048;
          v23 = v7;
          v24 = 2048;
          v25 = v8;
          _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v9 = *(*(v5 + 32) + 8 * v7);
        this = re::BindPoint::targetIdentifier((v9 + 8));
        v10 = *(v9 + 96);
        if (v10 != this)
        {
          v11 = this;
          if (v10)
          {
            this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v6, v10);
          }

          if (v11)
          {
            v26 = 0uLL;
            *&v27 = 0;
            v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
            this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v26, v6, v11, v12 ^ (v12 >> 31));
            if (HIDWORD(v26) == 0x7FFFFFFF)
            {
              this = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v6, DWORD2(v26), v26);
              *(this + 8) = v11;
              *(this + 16) = v9;
              ++*(v6 + 40);
            }
          }

          *(v9 + 96) = v11;
        }

        v13 = v7-- + 1;
      }

      while (v13 > 1);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return this;
}

uint64_t re::AnimationManager::isAnimated(re::AnimationManager *this, re::BindNode **a2, const re::IntrospectionBase *a3, const char *a4)
{
  if (!*(this + 29))
  {
    return 0;
  }

  {
    isAnimated = re::AnimationManager::isAnimated(this, &v12);
  }

  else
  {
    isAnimated = 0;
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
  return isAnimated;
}

void anonymous namespace::findBindPoint(_anonymous_namespace_ *this, re::BindNode **a2, const re::IntrospectionBase *a3, const char *__s, int a5)
{
  if (__s && *__s)
  {
    if (a5)
    {
      *&v9 = __s;
      *(&v9 + 1) = strlen(__s);
      re::BindNode::bindPointWithOverride(this, a2, a3, &v9);
    }

    else
    {
      *&v9 = __s;
      *(&v9 + 1) = strlen(__s);
      re::BindNode::bindPoint(this, a2, a3, &v9);
    }
  }

  else
  {
    v8 = *re::animationLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "No bind target found for played animation.", &v9, 2u);
    }

    *(this + 5) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 8) = 0;
  }
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, __int128 *a4, uint64_t a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *a4;
  v10 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, a3, 0, &v9, a5, 0, a6, a7, a8);
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, void *a4, uint64_t a5, char a6, re::internal::TimelineTreeInfo *a7, void *a8, unint64_t a9, uint64_t a10)
{
  LOBYTE(v185) = a6;
  v203 = *MEMORY[0x1E69E9840];
  if (*(a1 + 504))
  {
    return 0;
  }

  v180 = a2;
  v189 = a1;
  if (!*(a1 + 29))
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = v189 + 64 * v10 + 72;
      re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(v13, 0);
      ++*(v13 + 24);
      *(v13 + 44) = 32;
      re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(v13);
      v14 = v189 + 40 * v10 + 200;
      re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v14, 0x10uLL);
      ++*(v14 + 24);
      v15 = v189 + 40 * v10 + 376;
      a1 = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v15, 0x20uLL);
      v11 = 0;
      ++*(v15 + 24);
      v10 = 1;
    }

    while ((v12 & 1) != 0);
  }

  v16 = (v185 & 1) == 0;
  v17 = v189;
  v18 = v189 + 72;
  v19 = v189 + 64 * v16 + 72;
  v20 = *(v19 + 56);
  if ((v20 + 1) >> 24)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20 + 1;
  }

  *(v19 + 56) = v21;
  v22 = *(v19 + 52);
  v23 = *(v19 + 54);
  if (v22 == 0xFFFF && v23 == 0xFFFF)
  {
    if (*(v19 + 48) >= *(v19 + 44))
    {
      a1 = re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(v19);
    }

    v24 = *(v19 + 16);
    v23 = (v24 - 1);
    if (v24)
    {
      v22 = *(v19 + 48);
      if (v22 < 0x10000)
      {
        v25 = (*(v19 + 32) + 16 * v23);
        *(v19 + 48) = v22 + 1;
        *(v25[1] + 4 * v22) = *(v19 + 56);
        v26 = *v25 + 312 * v22;
        goto LABEL_17;
      }

LABEL_254:
      v177 = 601;
      v176 = "create";
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow");
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v173);
      __break(1u);
      goto LABEL_255;
    }

LABEL_250:
    *&v190 = 0;
    v202 = 0u;
    memset(buf, 0, sizeof(buf));
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    *(&to[1] + 6) = 789;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v23;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = 0;
    _os_log_send_and_compose_impl(v161, &v190, buf, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v176, v177);
    _os_crash_msg();
    __break(1u);
    goto LABEL_254;
  }

  v10 = *(v19 + 16);
  if (v10 <= v23)
  {
LABEL_246:
    *&v190 = 0;
    v202 = 0u;
    memset(buf, 0, sizeof(buf));
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *(&to[1] + 6) = 789;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v23;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl(v158, &v190, buf, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v176, v177);
    _os_crash_msg();
    __break(1u);
    goto LABEL_250;
  }

  v27 = (*(v19 + 32) + 16 * v23);
  *(v27[1] + 4 * v22) = v21;
  v26 = *v27 + 312 * v22;
  *(v19 + 52) = *v26;
LABEL_17:
  ++*(v19 + 40);
  *(v26 + 248) = 0u;
  *(v26 + 232) = 0u;
  *(v26 + 216) = 0u;
  *(v26 + 200) = 0u;
  *(v26 + 184) = 0u;
  *(v26 + 152) = 0u;
  *(v26 + 136) = 0u;
  *(v26 + 120) = 0u;
  *(v26 + 104) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 280) = 0u;
  *(v26 + 296) = 0u;
  *(v26 + 264) = 0u;
  *(v26 + 168) = 0u;
  *v26 = &unk_1F5CB0398;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 56) = 0u;
  *(v26 + 40) = 0u;
  re::DynamicString::setCapacity((v26 + 40), 0);
  *(v26 + 72) = 0;
  *(v26 + 80) = -1;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0;
  *(v26 + 160) = 0;
  *(v26 + 104) = 0;
  *(v26 + 112) = 0;
  *(v26 + 96) = 0;
  *(v26 + 120) = 0;
  objc_initWeak((v26 + 168), 0);
  *v26 = &unk_1F5CB17F0;
  *(v26 + 176) = 0u;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0u;
  *(v26 + 240) = 0;
  *(v26 + 248) = 767;
  *(v26 + 252) = 1065353216;
  *(v26 + 256) = 0u;
  *(v26 + 272) = 0u;
  *(v26 + 288) = 0u;
  *(v26 + 304) = 0;
  v28 = v22 + (v23 << 16) + ((*(v19 + 56) & 0xFFFFFF) << 32);
  v29 = re::DataArray<re::internal::TimelineTreeInfo>::get(v19, v22 + (v23 << 16));
  v30 = *(v189 + 8);
  v31 = *(v189 + 506);
  v18 = v180;
  if ((v32 & 1) == 0)
  {
    v32 = re::DataArray<re::internal::TimelineTreeInfo>::destroy(v19, v28);
LABEL_89:
    v79 = *re::animationLogObjects(v32);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v120 = *(v180 + 4);
      *buf = 136315138;
      *&buf[4] = v120;
      _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Potentially invalid timeline detected. Name of root timeline: %s", buf, 0xCu);
    }

    return 0;
  }

  if (!(v28 + (v16 << 56)))
  {
    goto LABEL_89;
  }

  v10 = a9;
  v19 = re::DataArray<re::internal::TimelineTreeInfo>::get(v19, v28);
  *(v19 + 256) = a9;
  *(v19 + 264) = a10;
  v33 = re::animationLogObjects(v19);
  if (re::AnimationLogObjects::loggingEnabled(v33))
  {
LABEL_255:
    v162 = *(a5 + 16);
    if (v162 && *v162)
    {
      v163 = re::DynamicString::operator=((v19 + 40), v162);
    }

    else
    {
      v166 = strlen(*(v18 + 32));
      *buf = *(v18 + 32);
      *&buf[8] = v166;
      v163 = re::DynamicString::operator=((v19 + 40), buf);
    }

    v167 = re::animationLogObjects(v163);
    v168 = re::AnimationLogObjects::loggingEnabled(v167);
    v17 = v189;
    if (v168)
    {
      v10 = *re::animationLogObjects(v168);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v19 + 48))
        {
          v169 = *(v19 + 56);
        }

        else
        {
          v169 = v19 + 49;
        }

        v170 = *(v19 + 104);
        *buf = 136315394;
        *&buf[4] = v169;
        *&buf[12] = 2048;
        *&buf[14] = v170;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: Starting Animation %s, timeline count=%zu\n", buf, 0x16u);
      }
    }
  }

  updated = re::AnimationManager::updateLookupTableForAllBuckets(v17);
  *v188 = *(v19 + 32);
  if (v188[0] < 1)
  {
    goto LABEL_111;
  }

  v182 = 0;
  v35 = 0;
  v36 = v17;
  v37 = v17 + 48 * *(v19 + 248) + 280;
  v18 = v36 + 40 * *(v19 + 248) + 376;
  v178 = 136315906;
  do
  {
    v23 = v37;
    v10 = v10 & 0xFFFFFFFF00000000 | v35;
    v38 = v35;
    v39 = re::internal::TimelineTree::source(v19, v35);
    v40 = (*(*v39 + 16))(v39);
    if (!v40)
    {
LABEL_25:
      v193 = 0;
      v190 = 0u;
      v191 = 0u;
      v192 = 0;
      goto LABEL_26;
    }

    v41 = v40;
    if (!a4)
    {
      v200 = 0;
      memset(to, 0, 36);
      v57 = v195 >> 1;
      if ((v195 & 1) == 0)
      {
        v57 = v195 >> 1;
      }

      {
        v59 = to[0];
        v60 = re::animationLogObjects(BindPath);
        if (v59 == v41)
        {
          v65 = re::AnimationLogObjects::loggingEnabled(v60);
          if (v65)
          {
            v74 = *re::animationLogObjects(v65);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = re::BindPoint::baseValueUntyped(to);
              v76 = re::BindPoint::overrideValueUntyped(to);
              v77 = &v195 + 1;
              if (v195)
              {
                v77 = v196;
              }

              v78 = v19 + 49;
              if (*(v19 + 48))
              {
                v78 = *(v19 + 56);
              }

              *buf = 134219266;
              *&buf[4] = v75;
              *&buf[12] = 2048;
              *&buf[14] = v76;
              *&buf[22] = 2080;
              *&buf[24] = v77;
              *&buf[32] = 2080;
              *&buf[34] = v78;
              *&buf[42] = 2048;
              *&buf[44] = v19;
              *&buf[52] = 1024;
              *&buf[54] = v35;
              _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "ANIM: Animation Target: %p, %p - %s, TimelineTreeInfo: %s (%p), index=%d\n", buf, 0x3Au);
            }
          }

          v190 = *to;
          v191 = *&to[2];
          memset(&to[1], 0, 24);
          v193 = v200;
          v200 = 0;
          ++LODWORD(to[4]);
          v192 = 1;
          goto LABEL_56;
        }

        v61 = *v60;
        if (os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR))
        {
          v62 = &v195 + 1;
          if (v195)
          {
            v62 = v196;
          }

          *buf = 136315138;
          *&buf[4] = v62;
          _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Failed to create bind point. Type mismatch for path: %s", buf, 0xCu);
        }
      }

      else
      {
        v63 = re::animationLogObjects(BindPath);
        v64 = re::AnimationLogObjects::loggingEnabled(v63);
        if (v64)
        {
          v71 = *re::animationLogObjects(v64);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v19 + 49;
            if (*(v19 + 48))
            {
              v72 = *(v19 + 56);
            }

            v73 = &v195 + 1;
            if (v195)
            {
              v73 = v196;
            }

            *buf = 136315906;
            *&buf[4] = v72;
            *&buf[12] = 2048;
            *&buf[14] = v19;
            *&buf[22] = 1024;
            *&buf[24] = v35;
            *&buf[28] = 2080;
            *&buf[30] = v73;
            _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "ANIM: TimelineTreeInfo: %s (%p), index=%d, Invalid bind path: %s\n", buf, 0x26u);
          }
        }
      }

      v193 = 0;
      v190 = 0u;
      v191 = 0u;
      v192 = 0;
LABEL_56:
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&to[1]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&to[1]);
      v37 = v23;
      if (v194 && (v195 & 1) != 0)
      {
        (*(*v194 + 40))();
      }

      goto LABEL_26;
    }

    if (*a4 != v40)
    {
      goto LABEL_25;
    }

    *&v190 = *a4;
    re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v190 + 8, a4 + 1);
LABEL_26:
    v42 = re::internal::TimelineTree::source(v19, v35);
    if ((*(*v42 + 64))(v42, &v190))
    {
      CompositionChain = re::AnimationManager::getCompositionChain(v189, &v190);
      if (!CompositionChain)
      {
        v44 = re::internal::TimelineTree::source(v19, v35);
        (*(*CompositionChain + 16))(CompositionChain, &v190);
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v23, CompositionChain[12]);
        v45 = re::BindPoint::targetIdentifier((CompositionChain + 1));
        if (!v45)
        {
          goto LABEL_245;
        }

        v47 = v45;
        memset(buf, 0, 24);
        v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
        v49 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(buf, v23, v45, v48 ^ (v48 >> 31));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v49 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v23, *&buf[8], *buf);
          *(v49 + 1) = v47;
          *(v49 + 2) = CompositionChain;
          ++*(v23 + 40);
        }

        CompositionChain[12] = v47;
        v50 = *(v18 + 8);
        v51 = *(v18 + 16);
        if (v51 >= v50)
        {
          v52 = v51 + 1;
          if (v50 < v51 + 1)
          {
            if (*v18)
            {
              v53 = 2 * v50;
              v121 = v50 == 0;
              v54 = 8;
              if (!v121)
              {
                v54 = v53;
              }

              if (v54 <= v52)
              {
                v55 = v52;
              }

              else
              {
                v55 = v54;
              }

              re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v18, v55);
            }

            else
            {
              re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v18, v52);
              ++*(v18 + 24);
            }
          }

          v51 = *(v18 + 16);
        }

        *(*(v18 + 32) + 8 * v51) = CompositionChain;
        *(v18 + 16) = v51 + 1;
        ++*(v18 + 24);
      }

      v66 = *(v19 + 232);
      if (v66 <= v35)
      {
        goto LABEL_240;
      }

      *(*(v19 + 240) + 8 * v35) = CompositionChain;
      v67 = re::internal::TimelineTree::source(v19, v35);
      if (buf[0])
      {
        v68 = *&buf[4];
      }

      else
      {
        v68 = 0;
      }

      v35 = (v68 + v35);
      if (v68 >= 1)
      {
        do
        {
          if (*(re::internal::TimelineTree::source(v19, v38) + 8) == 49)
          {
            v69 = re::internal::TimelineTree::source(v19, v38);
            if (*(*(*(v69 + 112) + 80) + 496) != 255)
            {
              *(v69 + 96) = 1;
            }
          }

          ++v38;
        }

        while (v38 < v35);
      }

      v182 = 1;
      v37 = v23;
    }

    else
    {
      v35 = (v35 + 1);
    }

    v70 = &v190;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v190 + 8);
    updated = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v190 + 8);
  }

  while (v35 < v188[0]);
  v18 = v180;
  if ((v182 & 1) == 0)
  {
    memset(&buf[8], 0, 24);
    re::DynamicString::setCapacity(buf, 0);
    v82 = 0;
    v23 = v188[0] & 0x7FFFFFFF;
    do
    {
      v70 = (v82 + (v70 & 0xFFFFFFFF00000000));
      if (v82)
      {
        re::DynamicString::append(buf, ", ", 2uLL);
      }

      re::DynamicString::append(buf, "", 1uLL);
      v83 = to[1];
      v84 = to[2];
      if (to[1])
      {
        v85 = to[2];
      }

      else
      {
        v85 = &to[1] + 1;
      }

      if (to[1])
      {
        v86 = to[1] >> 1;
      }

      else
      {
        v86 = LOBYTE(to[1]) >> 1;
      }

      re::DynamicString::append(buf, v85, v86);
      v87 = re::DynamicString::append(buf, "", 1uLL);
      if (v83)
      {
        v87 = to[0];
        if (to[0])
        {
          v87 = (*(*to[0] + 40))(to[0], v84);
        }
      }

      ++v82;
    }

    while (v23 != v82);
    v88 = *re::animationLogObjects(v87);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      if (buf[8])
      {
        v146 = *&buf[16];
      }

      else
      {
        v146 = &buf[9];
      }

      LODWORD(to[0]) = 136315138;
      *(to + 4) = v146;
      _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Cannot find a BindPoint for any bind path: %s", to, 0xCu);
    }

    updated = *buf;
    v18 = v180;
    if (*buf && (buf[8] & 1) != 0)
    {
      updated = (*(**buf + 40))();
    }
  }

LABEL_111:
  v89 = *(v19 + 232);
  if (v89)
  {
    v90 = *(v19 + 240);
    v91 = 8 * v89;
    while (!*v90)
    {
      ++v90;
      v91 -= 8;
      if (!v91)
      {
        goto LABEL_115;
      }
    }
  }

  else
  {
LABEL_115:
    v92 = *re::animationLogObjects(updated);
    updated = os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
    if (updated)
    {
      if (*(v18 + 48))
      {
        v93 = *(v18 + 56);
      }

      else
      {
        v93 = v18 + 49;
      }

      *buf = 136315138;
      *&buf[4] = v93;
      _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "Failed to assign animation to target variables. Please check the bind node/point. Make sure the animation type matches the target variable. Failing bind path is: '%s'.", buf, 0xCu);
    }
  }

  v94 = 0;
  v95 = *(a5 + 12);
  LODWORD(v180) = v95 != 0x80000000;
  v96 = *(a5 + 4);
  v97 = *a5;
  if (*a5 > 2)
  {
    if ((v97 - 4) < 2)
    {
      goto LABEL_126;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (v97 != 3)
    {
      goto LABEL_141;
    }

    if (v96 > 0.0)
    {
      v94 = 0;
      v100 = 0;
      v99 = 1;
      v98 = 1;
      goto LABEL_141;
    }

    v80 = v189;
    if (*(a5 + 8))
    {
      v123 = 0;
      goto LABEL_198;
    }

LABEL_226:
    re::AnimationManager::removeExcept(v80, v19, 0);
LABEL_227:
    v144 = v189 + 64 * *(v19 + 248) + 72;
    v145 = re::DataArray<re::internal::TimelineTreeInfo>::handle(v144, v19);
    re::DataArray<re::internal::TimelineTreeInfo>::destroy(v144, v145);
    return 0;
  }

  if (v97)
  {
    if (v97 == 1)
    {
      v98 = 0;
      v99 = 1;
      v94 = 4;
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (v97 != 2)
      {
        goto LABEL_141;
      }

LABEL_126:
      v98 = 0;
      if (v97 == 4)
      {
        v94 = 1;
      }

      else
      {
        v94 = 2 * (v97 == 5);
      }

      v99 = *(a5 + 8);
    }

    v100 = 1;
  }

  else
  {
    v101 = *(v19 + 232);
    if (v101)
    {
      for (i = 0; i < v101; ++i)
      {
        updated = *(*(v19 + 240) + 8 * i);
        if (updated)
        {
          updated = (*(*updated + 48))(updated);
          v101 = *(v19 + 232);
        }
      }
    }

    v94 = 0;
    v98 = 0;
    v100 = 1;
    v99 = 2;
  }

LABEL_141:
  v183 = v100;
  LODWORD(a3) = v98;
  v185 = v99;
  v103 = re::animationLogObjects(updated);
  v104 = re::AnimationLogObjects::loggingEnabled(v103);
  if (v104)
  {
    v164 = *re::animationLogObjects(v104);
    v104 = os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT);
    if (v104)
    {
      if (*(v19 + 48))
      {
        v165 = *(v19 + 56);
      }

      else
      {
        v165 = v19 + 49;
      }

      *buf = 134218242;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v165;
      _os_log_impl(&dword_1E1C61000, v164, OS_LOG_TYPE_DEFAULT, "ANIM: Add Timeline Tree %p, name: %s\n", buf, 0x16u);
    }
  }

  *v188 = *(v19 + 104);
  if (v188[0] >= 1)
  {
    v35 = 0;
    a4 = *(v19 + 112);
    v66 = (*(v19 + 104) & 0x7FFFFFFFLL);
    v38 = 24;
    while (1)
    {
      v10 = *(v19 + 232);
      if (v10 <= v35)
      {
        break;
      }

      v23 = *(*(v19 + 240) + 8 * v35);
      if (v23)
      {
        v107 = v95;
        if (v95 == 0x80000000)
        {
          if (*v188 <= v35)
          {
            goto LABEL_244;
          }

          v107 = *(a4[v35] + 12);
        }

        v108 = *(v23 + 72);
        if (v108)
        {
          v18 = 0;
          v109 = (*(v23 + 88) + 16);
          while (1)
          {
            v110 = *v109;
            v109 += 6;
            if (v110 > v107)
            {
              break;
            }

            if (v108 == ++v18)
            {
              v18 = *(v23 + 72);
              break;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v10 = v108 + 1;
        if (v108 + 1 <= v18)
        {
          goto LABEL_236;
        }

        v111 = *(v23 + 64);
        if (v108 >= v111)
        {
          if (v111 < v10)
          {
            if (*(v23 + 56))
            {
              v112 = 2 * v111;
              if (!v111)
              {
                v112 = 8;
              }

              if (v112 <= v10)
              {
                v113 = v10;
              }

              else
              {
                v113 = v112;
              }

              v104 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((v23 + 56), v113);
            }

            else
            {
              v104 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((v23 + 56), v10);
              ++*(v23 + 80);
            }
          }

          v108 = *(v23 + 72);
        }

        v114 = *(v23 + 88) + 24 * v108;
        if (v108 > v18)
        {
          v106 = *(v114 - 24);
          *v114 = v106;
          *(v114 + 16) = *(v114 - 8);
          v115 = *(v23 + 88);
          v105 = v115 + 24 * v18;
          v116 = v115 + 24 * *(v23 + 72);
          if (v116 - 24 != v105)
          {
            v104 = memmove((v105 + 24), v105, v116 - 24 - v105 - 3);
            v115 = *(v23 + 88);
          }

          v114 = v115 + 24 * v18;
        }

        *v114 = v19;
        *(v114 + 8) = v35;
        *(v114 + 16) = v107;
        *(v114 + 20) = v94;
        ++*(v23 + 72);
        ++*(v23 + 80);
      }

      if (++v35 == v66)
      {
        goto LABEL_173;
      }
    }

    *&v190 = 0;
    v202 = 0u;
    memset(buf, 0, sizeof(buf));
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *(&to[1] + 6) = 468;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v35;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl(v149, &v190, buf, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v176, v177);
    _os_crash_msg();
    __break(1u);
LABEL_236:
    *&v190 = 0;
    v202 = 0u;
    memset(buf, 0, sizeof(buf));
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = 136315906;
    *(to + 4) = "insert";
    WORD2(to[1]) = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *(&to[1] + 6) = 855;
    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v18;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v10;
    _os_log_send_and_compose_impl(v152, &v190, buf, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v176, v177);
    _os_crash_msg();
    __break(1u);
LABEL_240:
    v194 = 0;
    v202 = 0u;
    memset(buf, 0, sizeof(buf));
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(to[0]) = v178;
    *(to + 4) = "operator[]";
    WORD2(to[1]) = 1024;
    *(&to[1] + 6) = 468;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    WORD1(to[2]) = 2048;
    *(&to[2] + 4) = v38;
    WORD2(to[3]) = 2048;
    *(&to[3] + 6) = v66;
    _os_log_send_and_compose_impl(v155, &v194, buf, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", to, 38, v176, v177);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    re::internal::assertLog(6, v105, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, *v188);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v172, v175);
    __break(1u);
LABEL_245:
    v176 = "addToLookupTable";
    v177 = 954;
    re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) ", "bindPointTargetIdentifier");
    _os_crash("assertion failure: (bindPointTargetIdentifier) ");
    __break(1u);
    goto LABEL_246;
  }

LABEL_173:
  if (v96 <= 0.0)
  {
    v117 = a5;
    v119 = v185;
    v80 = v189;
    goto LABEL_188;
  }

  v117 = a5;
  *buf = *a5;
  buf[4] = v183;
  v80 = v189;
  if (v183)
  {
    *&buf[8] = 0;
  }

  buf[12] = a3;
  if (a3)
  {
    *&buf[16] = 0;
  }

  *&buf[20] = *(a5 + 4);
  v118 = re::AnimationManager::addFadeOutHandoffBehavior(v189, v19, buf);
  if (v185 == 1)
  {
    if (*(a5 + 8) == 1)
    {
      LOBYTE(v194) = v95 != 0x80000000;
      if (v95 != 0x80000000)
      {
        HIDWORD(v194) = v95;
      }

      v106.n128_f64[0] = re::AnimationManager::removeLayerExcept(v189, v19, &v194, v118);
    }

    else
    {
      v106.n128_f64[0] = re::AnimationManager::removeExcept(v189, v19, v118);
    }

    v119 = 1;
LABEL_188:
    v121 = v96 <= 0.0 && v119 == 1;
    v122 = !v121;
    if (v119 != 2 && (v122 & 1) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_196;
  }

  if (v185 != 2)
  {
    goto LABEL_203;
  }

LABEL_196:
  if (*(v117 + 8))
  {
    v123 = 1;
LABEL_198:
    v197[0] = v95 != 0x80000000;
    if (v95 != 0x80000000)
    {
      v198 = v95;
    }

    v106.n128_f64[0] = re::AnimationManager::removeLayerExcept(v80, v19, v197, 0);
    if (v123)
    {
      goto LABEL_203;
    }

    goto LABEL_227;
  }

  v106.n128_f64[0] = re::AnimationManager::removeExcept(v80, v19, 0);
LABEL_203:
  v124 = *(v19 + 232);
  if (v124)
  {
    v125 = *(v19 + 240);
    v126 = 8 * v124;
    do
    {
      if (*v125)
      {
        (*(**v125 + 56))(*v125, v106);
      }

      ++v125;
      v126 -= 8;
    }

    while (v126);
  }

  re::AnimationManager::updateScheduler(v80);
  if (*(v19 + 32))
  {
    v127 = 0;
    do
    {
      if (*(re::internal::TimelineTree::source(v19, v127) + 8) == 49)
      {
        v80 = re::internal::TimelineTree::source(v19, v127);
        *buf = 255;
        buf[2] = 0;
        *&buf[4] = 0;
        memset(&buf[16], 0, 41);
        v128 = *(v80 + 120);
        v129 = *(v80 + 104);
        if ((v128 & 0x80000000) == 0)
        {
          do
          {
            v130 = (*(*v129 + 16))(v129, v128);
            v129 = *(v80 + 104);
            v132 = *(v129 + 16);
            if (v132 <= v128)
            {
              re::internal::assertLog(6, v131, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v128, v132);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v171, v174);
              __break(1u);
              goto LABEL_226;
            }

            if (v130)
            {
              break;
            }

            v128 = *(*(v129 + 8) + 4 * v128);
          }

          while ((v128 & 0x80000000) == 0);
          if (v130)
          {
            *&buf[40] = v130 + 8;
            *(v130 + 104) = 1;
          }
        }

        to[0] = 0;
        objc_copyWeak(to, (v129 + 168));
        WeakRetained = objc_loadWeakRetained(to);
        if (WeakRetained)
        {
          v135 = WeakRetained - 8;
        }

        else
        {
          v135 = 0;
        }

        v136 = *(v80 + 104);
        v137 = *(v136 + 160);
        v138 = *(v80 + 120);
        v139 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v136 + 80), v134);
        v140 = re::RelativeArray<re::AnimationClock>::operator[](v139, v138);
        v142 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(v80 + 104) + 80), v141);
        v143 = re::RelativeArray<re::AnimationClock>::operator[](v142, 0);
        (*(*v135 + 40))(v135, 12, v137, v140, *(v80 + 112), -1, v80, buf, *(v143 + 1));

        objc_destroyWeak(to);
        v80 = v189;
      }

      ++v127;
    }

    while (*(v19 + 32) > v127);
  }

  return v80;
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, re::BindNode *a3, __int128 *a4, char a5, void *a6)
{
  v7 = *a4;
  v8 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, a3, 0, &v7, a5, 0, a6, 0, 0);
}

uint64_t re::AnimationManager::startAnimation(re::AnimationManager *a1, uint64_t a2, void *a3, __int128 *a4, char a5, re::internal::TimelineTreeInfo *a6, void *a7)
{
  v8 = *a4;
  v9 = *(a4 + 2);
  return re::AnimationManager::startAnimation(a1, a2, 0, a3, &v8, a5, a6, a7, 0, 0);
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::get(uint64_t a1, int a2)
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

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 312 * a2;
}

double re::AnimationManager::updateScheduler(re::AnimationManager *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 56);
  if (*(this + 29))
  {
    if (*(this + 28))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(this + 44) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 56) = v3;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*(*v4 + 16))(v4);
  }

  v7 = *(this + 4);
  if (v7 != -1)
  {
    v8 = *(this + 1);
    v9 = v7 >> 6;
    v10 = *(v8 + 136);
    if (v10 <= v7 >> 6)
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v15 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 866;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v10;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (*(v8 + 144))
    {
      v11 = v8 + 152;
    }

    else
    {
      v11 = *(v8 + 160);
    }

    v12 = *(this + 56);
    if (v12 != ((*(v11 + 8 * v9) >> v7) & 1))
    {
      re::Scheduler::setEnabled(v8, v7, v12);
      if (*(this + 56) == 1)
      {
        v13 = *(this + 1);
        v14 = *(this + 4);

        return re::Scheduler::resetTaskCurrentTime(v13, v14);
      }
    }
  }

  return result;
}

void re::AnimationManager::stopAnimation(re::AnimationManager *this, const re::BindNode *a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not supported. BindNode does not yet have a function to iterate over children.", "!Unreachable code", "stopAnimation", 547);
  _os_crash("assertion failure: (!Unreachable code) Not supported. BindNode does not yet have a function to iterate over children.");
  __break(1u);
}

re::AnimationManager *re::AnimationManager::stopAnimation(re::AnimationManager *this, const re::BindPoint *a2)
{
  if (*(this + 29))
  {
    return re::AnimationManager::removeCompositionChainsForBindPoint(this, a2, 1uLL);
  }

  return this;
}

uint64_t re::AnimationManager::removeCompositionChainsForBindPoint(re::AnimationManager *this, const re::BindPoint *a2, unint64_t a3)
{
  v8 = *a2;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v9, a2 + 1);
  for (i = re::AnimationManager::getCompositionChain(this, &v8); i; i = re::AnimationManager::getCompositionChain(this, &v8))
  {
    v6 = *(i + 72);
    if (!v6)
    {
      break;
    }

    re::AnimationManager::remove(this, *(*(i + 88) + 24 * v6 - 24), a3);
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
  return re::DynamicArray<re::BindPoint::BindPointData>::deinit(v9);
}

void re::AnimationManager::stopAllAnimations(re::AnimationManager *this)
{
  if (*(this + 29))
  {
    v2 = 0;
    v3 = this + 376;
    v4 = 1;
    do
    {
      v5 = v4;
      for (i = &v3[40 * v2]; ; re::AnimationManager::removeCompositionChainsForBindPoint(this, (*(*(i + 4) + 8 * v7 - 8) + 8), 0))
      {
        v7 = *(i + 2);
        if (!v7)
        {
          break;
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);

    re::AnimationManager::raiseAnimationEvents(this);
  }
}

void re::AnimationManager::raiseAnimationEvents(re::AnimationManager *this)
{
  v2 = *(this + 122);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 59) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 122);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    v6 = *(*(this + 59) + 24 * v3 + 16);
    (*(*v6 + 48))(v6);
    v7 = *(this + 122);
    if (v7 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 59) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v7;
LABEL_14:
    ;
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 456);
}

uint64_t (***re::DataArray<re::internal::TimelineTreeInfo>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
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

  return result;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -311)
      {
        v7 = 0x6F96F96F96F96F97 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash("assertion failure: (!overflow) blockIndex (%zu) is too large for a 16-bit unsigned integer", v9);
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash("assertion failure: (!Unreachable code) element isn't in data array");
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash("assertion failure: (!overflow) arrayIndex (%zu) is too large for a 16-bit unsigned integer", v10);
  __break(1u);
  return result;
}

uint64_t re::AnimationManager::getCompositionChain(re::AnimationManager *this, const re::BindPoint *a2)
{
  re::AnimationManager::updateLookupTableForAllBuckets(this);
  v4 = re::BindPoint::targetIdentifier(a2);
  v5 = 0;
  v6 = this + 280;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  for (i = 1; ; i = 0)
  {
    v10 = i;
    v11 = &v6[48 * v5];
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v13, v11, v4, v8);
    if (v14 != 0x7FFFFFFF)
    {
      break;
    }

    v5 = 1;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return *(*(v11 + 16) + 32 * v14 + 16);
}

char *anonymous namespace::getBindPath(_anonymous_namespace_ *a1, re::internal::TimelineTree *a2, int a3)
{
  LODWORD(v3) = a3;
  *(a1 + 1) = 0;
  v6 = (a1 + 8);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v7 = re::DynamicString::setCapacity(a1, 0);
  result = re::DynamicString::setCapacity(a1, 0x80uLL);
  if ((v3 & 0x80000000) == 0)
  {
    v3 = v3;
    while (1)
    {
      result = re::internal::TimelineTree::source(a2, v3);
      v10 = *(result + 6);
      v11 = v10 & 1;
      v12 = v10 >> 1;
      v13 = v10 >> 1;
      if (*(result + 6))
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = result;
        if (*v6)
        {
          v16 = *v6 >> 1;
        }

        else
        {
          v16 = *v6 >> 1;
        }

        if (v16)
        {
          re::DynamicString::insert(a1, 0, 1, 46);
          v17 = *(v15 + 6);
          v11 = v17 & 1;
          v12 = v17 >> 1;
          v13 = v17 >> 1;
        }

        if (v11)
        {
          v18 = *(v15 + 7);
        }

        else
        {
          v18 = v15 + 49;
        }

        if (v11)
        {
          v19 = v12;
        }

        else
        {
          v19 = v13;
        }

        result = re::DynamicString::insert(a1, 0, v18, v19);
      }

      v20 = *(a2 + 2);
      if (v20 <= v3)
      {
        break;
      }

      v3 = *(*(a2 + 1) + 4 * v3);
      if ((v3 & 0x80000000) != 0)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v20);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v22);
    __break(1u);
  }

  return result;
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 312 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::AnimationManager::addFadeOutHandoffBehavior(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v8 = re::internal::AnimationHandoffBehavior::AnimationHandoffBehavior(v6, a1, a2, a3);
  re::DynamicArray<re::internal::AnimationHandoffBehavior *>::add((a1 + 40 * *(a2 + 248) + 200), &v8);
  return v8;
}

double re::AnimationManager::removeLayerExcept(re::AnimationManager *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34 = 0x7FFFFFFFLL;
  v4 = *(a2 + 232);
  if (!v4)
  {
    return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v31);
  }

  v7 = a2;
  v8 = 0;
  v9 = (a3 + 4);
  do
  {
    v10 = *(v7[30] + 8 * v8);
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = v9;
    if ((*a3 & 1) == 0)
    {
      v12 = v7[13];
      if (v12 <= v8)
      {
        goto LABEL_37;
      }

      v11 = (*(v7[14] + 8 * v8) + 12);
    }

    LODWORD(v13) = *(v10 + 72);
    if (v13 - 1 < 0)
    {
      goto LABEL_17;
    }

    v14 = *v11;
    do
    {
      v13 = (v13 - 1);
      v15 = *(v10 + 72);
      if (v15 <= v13)
      {
        v35 = 0;
        memset(v44, 0, sizeof(v44));
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v39 = 789;
        v40 = 2048;
        v41 = v13;
        v42 = 2048;
        v43 = v15;
        _os_log_send_and_compose_impl(v25, &v35, v44, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v28, v29);
        _os_crash_msg();
        __break(1u);
LABEL_37:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, v12);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v27);
        __break(1u);
      }

      a2 = *(v10 + 88) + 24 * v13;
      if (*(a2 + 16) == v14 && *a2 != v7)
      {
        if (a4)
        {
          *&v44[0] = *a2;
          re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(a4 + 168, v44);
        }

        else
        {
          re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v31, a2);
        }
      }
    }

    while (v13 > 0);
    v4 = v7[29];
LABEL_17:
    ++v8;
  }

  while (v4 > v8);
  v16 = v33;
  if (v33)
  {
    v17 = 0;
    v18 = v32;
    v19 = (v32 + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 6;
      if (v20 < 0)
      {
        break;
      }

      if (v33 == ++v17)
      {
        LODWORD(v17) = v33;
        break;
      }
    }

    if (v33 != v17)
    {
      do
      {
        re::AnimationManager::remove(a1, *(v18 + 24 * v17 + 16), 1uLL);
        if (v16 <= v17 + 1)
        {
          v21 = v17 + 1;
        }

        else
        {
          v21 = v16;
        }

        while (v21 - 1 != v17)
        {
          LODWORD(v17) = v17 + 1;
          if ((*(v18 + 24 * v17 + 8) & 0x80000000) != 0)
          {
            goto LABEL_31;
          }
        }

        LODWORD(v17) = v21;
LABEL_31:
        ;
      }

      while (v17 != v16);
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v31);
}

double re::AnimationManager::removeExcept(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, re::internal::AnimationHandoffBehavior *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v25 = 0x7FFFFFFFLL;
  v3 = *(a2 + 29);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*(a2 + 30) + 8 * i);
      if (v8)
      {
        LODWORD(v9) = *(v8 + 72);
        if (v9 - 1 >= 0)
        {
          do
          {
            v9 = (v9 - 1);
            v10 = *(v8 + 72);
            if (v10 <= v9)
            {
              v26 = 0;
              memset(v35, 0, sizeof(v35));
              v19 = MEMORY[0x1E69E9C10];
              v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v27 = 136315906;
              v28 = "operator[]";
              v29 = 1024;
              if (v20)
              {
                v21 = 3;
              }

              else
              {
                v21 = 2;
              }

              v30 = 789;
              v31 = 2048;
              v32 = v9;
              v33 = 2048;
              v34 = v10;
              _os_log_send_and_compose_impl(v21, &v26, v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v22, *(&v22 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v11 = (*(v8 + 88) + 24 * v9);
            if (*v11 != a2)
            {
              if (a3)
              {
                *&v35[0] = *v11;
                re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::add(a3 + 168, v35);
              }

              else
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v22, v11);
              }
            }
          }

          while (v9 > 0);
          v3 = *(a2 + 29);
        }
      }
    }

    v12 = v24;
    if (v24)
    {
      v13 = 0;
      v14 = v23;
      v15 = (v23 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 < 0)
        {
          break;
        }

        if (v24 == ++v13)
        {
          LODWORD(v13) = v24;
          break;
        }
      }

      if (v24 != v13)
      {
        do
        {
          re::AnimationManager::remove(this, *(v14 + 24 * v13 + 16), 1uLL);
          if (v12 <= v13 + 1)
          {
            v17 = v13 + 1;
          }

          else
          {
            v17 = v12;
          }

          while (v17 - 1 != v13)
          {
            LODWORD(v13) = v13 + 1;
            if ((*(v14 + 24 * v13 + 8) & 0x80000000) != 0)
            {
              goto LABEL_26;
            }
          }

          LODWORD(v13) = v17;
LABEL_26:
          ;
        }

        while (v13 != v12);
      }
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v22);
}

double re::AnimationManager::remove(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, unint64_t a3)
{
  LODWORD(v3) = a3;
  v5 = this;
  v64 = *MEMORY[0x1E69E9840];
  v6 = re::animationLogObjects(this);
  v7 = re::AnimationLogObjects::loggingEnabled(v6);
  if (v7)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v8 = *(a2 + 248);
    v9 = v5 + 40 * v8;
    v10 = *(v9 + 27);
    if (v10)
    {
      v11 = *(v9 + 29);
      v12 = 8 * v10;
      do
      {
        if (**v11 == a2)
        {
          **v11 = 0;
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }

    if ((*(v5 + 504) & 1) == 0)
    {
      re::AnimationManager::cleanUpHandoffBehaviors(v5, v8);
    }

    v13 = *(a2 + 29);
    if (v13)
    {
      i = 0;
      v15 = 0;
      do
      {
        v16 = *(a2 + 23);
        if (v16 <= v15)
        {
          goto LABEL_53;
        }

        if (*(*(a2 + 24) + i) == 1)
        {
          v17 = *(a2 + 248);
          v18 = re::DataArray<re::internal::TimelineTreeInfo>::handle(v5 + 64 * v17 + 72, a2);
          re::AnimationManager::blendFactorAsBindPoint(buf, v5, v18 & 0xFFFFFFFFFFFFFFLL | (v17 << 56), v15);
          if (*(v5 + 29))
          {
            re::AnimationManager::removeCompositionChainsForBindPoint(v5, buf, 1uLL);
          }

          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
          v13 = *(a2 + 29);
        }

        v15 = (v15 + 1);
        i += 12;
      }

      while (v13 > v15);
    }

    v19 = *(a2 + 13);
    if (v19)
    {
      v20 = *(a2 + 14);
      do
      {
        if (*(*v20 + 8) == 49)
        {
          re::TypedEventTimelineInstance<float>::timelineRemoved(*v20, v8);
        }

        ++v20;
        --v19;
      }

      while (v19);
      v13 = *(a2 + 29);
    }

    if (v13)
    {
      for (i = 0; v13 > i; ++i)
      {
        v21 = *(*(a2 + 30) + 8 * i);
        if (v21)
        {
          (*(*v21 + 64))(v21);
          v13 = *(v21 + 72);
          if (!v13)
          {
            v23 = 0;
            goto LABEL_62;
          }

          v22 = 0;
          v23 = 0;
          v24 = *(v21 + 88);
          while (*(v24 + v22) != a2 || i != *(v24 + v22 + 8))
          {
            ++v23;
            v22 += 24;
            if (v13 == v23)
            {
              goto LABEL_61;
            }
          }

          if (v13 <= v23)
          {
            goto LABEL_62;
          }

          v25 = v13 - 1;
          if (v13 - 1 > v23 && 24 * v13 - 24 != v22)
          {
            memmove((*(v21 + 88) + v22), (*(v21 + 88) + v22 + 24), 24 * v13 - v22 - 27);
            v25 = *(v21 + 72) - 1;
          }

          *(v21 + 72) = v25;
          ++*(v21 + 80);
          v13 = *(a2 + 29);
          if (v13 <= i)
          {
            goto LABEL_57;
          }

          *(*(a2 + 30) + 8 * i) = 0;
        }
      }
    }

    v26 = re::internal::TimelineTreeInfo::currentTime(a2);
    re::AnimationManager::addAnimationEvent(v5, 4, a2, v3, v26);
    if (*(v5 + 504))
    {
      break;
    }

    re::AnimationManager::updateLookupTableForAllBuckets(v5);
    v28 = 0;
    v16 = v5 + 376;
    v29 = 1;
    while (1)
    {
      v30 = v29;
      i = &v16[40 * v28];
      if (*(i + 16) >= 1)
      {
        break;
      }

LABEL_47:
      v29 = 0;
      v28 = 1;
      if ((v30 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v13 = v5 + 48 * v28 + 280;
    v3 = (*(i + 16) & 0x7FFFFFFFLL) - 1;
    while (1)
    {
      v31 = *(i + 16);
      if (v31 <= v3)
      {
        break;
      }

      v32 = *(*(i + 32) + 8 * v3);
      if (!v32[9])
      {
        (*(*v32 + 40))(*(*(i + 32) + 8 * v3));
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(v13, v32[12]);
        v32[12] = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(i, v3);
        (**v32)(v32);
      }

      v33 = v3-- + 1;
      if (v33 <= 1)
      {
        goto LABEL_47;
      }
    }

    v51 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v55 = 789;
    v56 = 2048;
    v57 = v3;
    v58 = 2048;
    v59 = v31;
    _os_log_send_and_compose_impl(v39, &v51, buf, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v51 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v55 = 468;
    v56 = 2048;
    v57 = v15;
    v58 = 2048;
    v59 = v16;
    _os_log_send_and_compose_impl(v42, &v51, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v51 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v55 = 468;
    v56 = 2048;
    v57 = i;
    v58 = 2048;
    v59 = v13;
    _os_log_send_and_compose_impl(v45, &v51, buf, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v23 = v13;
LABEL_62:
    v51 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(buf, 0, sizeof(buf));
    v5 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "removeStableAt";
    v54 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v55 = 969;
    v56 = 2048;
    v57 = v23;
    v58 = 2048;
    v59 = v13;
    _os_log_send_and_compose_impl(v47, &v51, buf, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
    v7 = _os_crash_msg();
    __break(1u);
LABEL_66:
    v48 = *re::animationLogObjects(v7);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 6))
      {
        v49 = *(a2 + 7);
      }

      else
      {
        v49 = a2 + 49;
      }

      *buf = 134218242;
      *&buf[4] = a2;
      *&buf[12] = 2080;
      *&buf[14] = v49;
      _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "ANIM: Remove Timeline Tree %p %s\n", buf, 0x16u);
    }
  }

LABEL_48:
  v34 = v5 + 64 * *(a2 + 248);
  v35 = re::DataArray<re::internal::TimelineTreeInfo>::handle((v34 + 72), a2);
  re::DataArray<re::internal::TimelineTreeInfo>::destroy((v34 + 72), v35);
  return re::AnimationManager::updateScheduler(v5);
}

void re::AnimationManager::addAnimationEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v30[0] = 0;
  objc_copyWeak(v30, (a3 + 168));
  WeakRetained = objc_loadWeakRetained(v30);
  v11 = WeakRetained;
  v12 = WeakRetained - 8;
  if (WeakRetained)
  {
    v13 = WeakRetained - 8;
  }

  else
  {
    v13 = 0;
  }

  objc_destroyWeak(v30);
  if (v11)
  {
    v14 = re::DataArray<re::internal::TimelineTreeInfo>::handle(a1 + (*(a3 + 248) << 6) + 72, a3);
    v15 = *(a3 + 248);
    v30[0] = a1;
    v30[1] = (v14 & 0xFFFFFFFFFFFFFFLL | (v15 << 56));
    v17 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a3 + 80), v16);
    v18 = re::RelativeArray<re::AnimationClock>::operator[](v17, 0);
    (*(*v12 + 32))(v12, a2, v30, v18, a5);
    if (a4)
    {
      (*(*v12 + 48))(v12);
LABEL_21:

      return;
    }

    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
    v20 = v19 ^ (v19 >> 31);
    v21 = *(a1 + 480);
    if (v21)
    {
      v22 = v20 % v21;
      v23 = *(*(a1 + 464) + 4 * (v20 % v21));
      if (v23 != 0x7FFFFFFF)
      {
        v24 = *(a1 + 472);
        if (*(v24 + 24 * v23 + 16) == v12)
        {
          goto LABEL_21;
        }

        while (1)
        {
          LODWORD(v23) = *(v24 + 24 * v23 + 8) & 0x7FFFFFFF;
          if (v23 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v24 + 24 * v23 + 16) == v13)
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v25 = *(a1 + 492);
    if (v25 == 0x7FFFFFFF)
    {
      v25 = *(a1 + 488);
      v26 = v25;
      if (v25 == v21)
      {
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity((a1 + 456), 2 * *(a1 + 484));
        LODWORD(v22) = v20 % *(a1 + 480);
        v26 = *(a1 + 488);
      }

      *(a1 + 488) = v26 + 1;
      v27 = *(a1 + 472);
      v28 = *(v27 + 24 * v25 + 8);
    }

    else
    {
      v27 = *(a1 + 472);
      v28 = *(v27 + 24 * v25 + 8);
      *(a1 + 492) = v28 & 0x7FFFFFFF;
    }

    *(v27 + 24 * v25 + 8) = v28 | 0x80000000;
    *(*(a1 + 472) + 24 * v25 + 8) = *(*(a1 + 472) + 24 * v25 + 8) & 0x80000000 | *(*(a1 + 464) + 4 * v22);
    *(*(a1 + 472) + 24 * v25) = v20;
    *(*(a1 + 472) + 24 * v25 + 16) = v13;
    v29 = v11;
    *(*(a1 + 464) + 4 * v22) = v25;
    ++*(a1 + 484);
    ++*(a1 + 496);
LABEL_20:
    v12 = v13;
    goto LABEL_21;
  }
}

Float64 re::internal::TimelineTreeInfo::currentTime(re::internal::TimelineTreeInfo *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    return re::internal::TimelineTreeInfo::currentTime(v2) - *(this + 37);
  }

  CMTimebaseGetTime(&time, *(this + 34));
  return CMTimeGetSeconds(&time);
}

uint64_t re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(uint64_t result, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "removeAt";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 931;
    v12 = 2048;
    v13 = a2;
    v14 = 2048;
    v15 = v3;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    *(*(result + 32) + 8 * a2) = *(*(result + 32) + 8 * v3 - 8);
  }

  *(result + 16) = v3 - 1;
  ++*(result + 24);
  return result;
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 32 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 32 * v13) = *(v6 + 32 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

void re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(result + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(result + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(result, 2 * *(result + 28));
      LODWORD(v8) = v6 % *(result + 24);
      v12 = *(result + 32);
      v4 = *a2;
    }

    *(result + 32) = v12 + 1;
    v13 = *(result + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(result + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(result + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  *(*(result + 16) + 24 * v11 + 8) = *(*(result + 16) + 24 * v11 + 8) & 0x80000000 | *(*(result + 8) + 4 * v8);
  *(*(result + 16) + 24 * v11) = v6;
  *(*(result + 16) + 24 * v11 + 16) = v4;
  *(*(result + 8) + 4 * v8) = v11;
  ++*(result + 28);
  ++*(result + 40);
}

double re::AnimationManager::removePending(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2, const re::internal::AnimationHandoffBehavior *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = 0x7FFFFFFFLL;
  v3 = *(a2 + 29);
  if (v3)
  {
    v7 = 0;
    v8 = a3 + 192;
    do
    {
      v9 = *(*(a2 + 30) + 8 * v7);
      if (v9)
      {
        v10 = *(v9 + 72) - 1;
        if ((v10 & 0x80000000) == 0)
        {
          do
          {
            v11 = v10;
            v12 = *(v9 + 72);
            if (v12 <= v10)
            {
              v31 = 0;
              memset(v40, 0, sizeof(v40));
              v24 = MEMORY[0x1E69E9C10];
              v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v32 = 136315906;
              v33 = "operator[]";
              v34 = 1024;
              if (v25)
              {
                v26 = 3;
              }

              else
              {
                v26 = 2;
              }

              v35 = 789;
              v36 = 2048;
              v37 = v11;
              v38 = 2048;
              v39 = v12;
              _os_log_send_and_compose_impl(v26, &v31, v40, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v27, *(&v27 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v13 = *(a3 + 25);
            if (*(a3 + 184))
            {
              v13 = v8;
            }

            v14 = *(a3 + 22);
            if (v14)
            {
              v15 = (*(v9 + 88) + 24 * v10);
              v16 = 8 * v14;
              while (*v13 != *v15)
              {
                ++v13;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_14;
                }
              }

              re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::add(&v27, v15);
            }

LABEL_14:
            v10 = v11 - 1;
          }

          while (v11 > 0);
          v3 = *(a2 + 29);
        }
      }

      ++v7;
    }

    while (v3 > v7);
    v17 = v29;
    if (v29)
    {
      v18 = 0;
      v19 = v28;
      v20 = (v28 + 8);
      while (1)
      {
        v21 = *v20;
        v20 += 6;
        if (v21 < 0)
        {
          break;
        }

        if (v29 == ++v18)
        {
          LODWORD(v18) = v29;
          break;
        }
      }

      if (v29 != v18)
      {
        do
        {
          re::AnimationManager::remove(this, *(v19 + 24 * v18 + 16), 1uLL);
          if (v17 <= v18 + 1)
          {
            v22 = v18 + 1;
          }

          else
          {
            v22 = v17;
          }

          while (v22 - 1 != v18)
          {
            LODWORD(v18) = v18 + 1;
            if ((*(v19 + 24 * v18 + 8) & 0x80000000) != 0)
            {
              goto LABEL_30;
            }
          }

          LODWORD(v18) = v22;
LABEL_30:
          ;
        }

        while (v18 != v17);
      }
    }
  }

  return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v27);
}

_anonymous_namespace_ *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::AnimationManager::cleanUpHandoffBehaviors(_anonymous_namespace_ *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a2;
  v5 = *(v4 + 27);
  if (v5)
  {
    v6 = *(v4 + 29);
    v7 = &v6[v5];
    do
    {
      v8 = *v6;
      if (!**v6)
      {
        v9 = *(v4 + 29);
        v10 = *(v4 + 27);
        v11 = v9;
        if (v10)
        {
          v12 = 8 * v10;
          v11 = *(v4 + 29);
          while (*v11 != v8)
          {
            ++v11;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_14;
            }
          }
        }

        v13 = &v9[v10];
        if (v11 != v13)
        {
          v14 = v11 - v9;
          v15 = v14 >> 3;
          if (v10 <= v14 >> 3)
          {
            v19 = 0;
            memset(v28, 0, sizeof(v28));
            v16 = MEMORY[0x1E69E9C10];
            v20 = 136315906;
            v21 = "removeAt";
            v22 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v23 = 931;
            v24 = 2048;
            v25 = v15;
            v26 = 2048;
            v27 = v10;
            _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
            _os_crash_msg();
            __break(1u);
          }

          if (v10 - 1 > v15)
          {
            *(v9 + v14) = *(v13 - 1);
          }

          *(v4 + 27) = v10 - 1;
          ++*(v4 + 56);
          re::internal::AnimationHandoffBehavior::~AnimationHandoffBehavior(v8);
        }
      }

LABEL_14:
      ++v6;
    }

    while (v6 != v7);
  }
}

void re::AnimationManager::update(re::AnimationManager *this, float a2)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 1000, this, 0, 0, 0);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v10);
  *(this + 504) = 1;
  if (*(this + 57) == 1)
  {
    if (a2 < 0.0)
    {
      goto LABEL_7;
    }

    v4 = *(this + 8);
    CMTimebaseGetTime(&lhs, v4);
    CMTimeMake(&rhs, (a2 * 18000.0 + 0.5), 18000);
    CMTimeAdd(&time, &lhs, &rhs);
    CMTimebaseSetTime(v4, &time);
  }

  if (*(this + 29))
  {
    re::AnimationManager::update(this, 0);
    re::AnimationManager::applyAnimations(this, 0);
    re::AnimationManager::update(this, 1);
  }

  *(this + 504) = 0;
LABEL_7:
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(v10);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11, v5, v6);
}

re::AnimationManager *re::AnimationManager::update(re::AnimationManager *a1, int a2)
{
  v4 = a1 + 64 * a2 + 72;
  v5 = a1 + 40 * a2;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v16, v4, 0);
  if (v4 != v16 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      v7 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(&v16);
      re::AnimationManager::updateTime(a1, v7);
      re::AnimationManager::updateBlendFactors(v8, v7);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
    }

    while (v16 != v4 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
  }

  result = re::AnimationManager::updateHandoffBehaviors(a1, a2);
  v12 = *(v5 + 49);
  if (v12)
  {
    v13 = *(v5 + 51);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      result = (*(*v15 + 32))(v15);
      v14 -= 8;
    }

    while (v14);
  }

  return result;
}

double re::AnimationManager::applyAnimations(_anonymous_namespace_ *a1, int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40 * a2;
  re::AnimationManager::updateLookupTableForAllBuckets(a1);
  if (*(v4 + 49) >= 1)
  {
    v5 = (*(v4 + 49) & 0x7FFFFFFFLL) - 1;
    do
    {
      v6 = *(v4 + 49);
      if (v6 <= v5)
      {
        v30 = 0;
        memset(v39, 0, sizeof(v39));
        v27 = MEMORY[0x1E69E9C10];
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v34 = 789;
        v35 = 2048;
        v36 = v5;
        v37 = 2048;
        v38 = v6;
        _os_log_send_and_compose_impl(v28, &v30, v39, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(v4 + 51) + 8 * v5);
      if (!*(v7 + 72))
      {
        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(a1 + 48 * a2 + 280, *(v7 + 96));
        *(v7 + 96) = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt((v4 + 376), v5);
        (**v7)(v7);
      }

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  if ((*(a1 + 506) & 1) == 0)
  {
    v9 = a1 + 64 * a2 + 72;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v39, v9, 0);
    if (v9 != *&v39[0] || DWORD2(v39[0]) != 0xFFFFFFFFLL)
    {
      do
      {
        v10 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(v39);
        v12 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(v10 + 20, v11);
        if (*re::RelativeArray<re::AnimationClock>::operator[](v12, 0) == 1)
        {
          re::AnimationManager::remove(a1, v10, 0);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v39);
      }

      while (*&v39[0] != v9 || WORD4(v39[0]) != 0xFFFF || WORD5(v39[0]) != 0xFFFF);
    }
  }

  v15 = *(v4 + 49);
  if (v15)
  {
    v16 = *(v4 + 51);
    v17 = 8 * v15;
    do
    {
      v18 = *v16++;
      (*(*v18 + 40))(v18);
      v17 -= 8;
    }

    while (v17);
  }

  if (*(a1 + 506))
  {
    v19 = a1 + 64 * a2 + 72;
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v39, v19, 0);
    if (v19 != *&v39[0] || DWORD2(v39[0]) != 0xFFFFFFFFLL)
    {
      do
      {
        v21 = re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(v39);
        v23 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(v21 + 20, v22);
        if (*re::RelativeArray<re::AnimationClock>::operator[](v23, 0) == 1)
        {
          re::AnimationManager::remove(a1, v21, 0);
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v39);
      }

      while (*&v39[0] != v19 || WORD4(v39[0]) != 0xFFFF || WORD5(v39[0]) != 0xFFFF);
    }
  }

  re::AnimationManager::cleanUpHandoffBehaviors(a1, a2);
  return re::AnimationManager::updateScheduler(a1);
}

uint64_t re::DataArray<re::internal::TimelineTreeInfo>::DataArrayIterator<re::internal::TimelineTreeInfo,re::internal::TimelineTreeInfo&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
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

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 312 * a1[4];
}

void re::AnimationManager::updateTime(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v4 = *(a2 + 4);
  v5 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, a2);
  v6 = *re::RelativeArray<re::AnimationClock>::operator[](v5, 0);
  v8 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v7);
  v9 = *(re::RelativeArray<re::AnimationClock>::operator[](v8, 0) + 16);
  re::internal::TimelineTreeInfo::updateEffectiveSpeed(a2);
  v10 = (*(*a2 + 24))(a2);
  if (*(a2 + 33))
  {
    realitykit_willSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.time");
  }

  v11 = re::internal::TimelineTreeInfo::currentTime(a2);
  re::internal::TimelineTree::setTime(a2, v11, v10, v12);
  if (*(a2 + 33))
  {
    realitykit_didSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.time");
  }

  v14 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v13);
  if (!v14[1])
  {
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v39, v41);
    __break(1u);
    goto LABEL_38;
  }

  v16 = *v14;
  if (v16)
  {
    v17 = v14 + v16;
  }

  else
  {
    v17 = 0;
  }

  v17[32] = 0;
  to = 0;
  objc_copyWeak(&to, a2 + 21);
  v18 = objc_loadWeakRetained(&to);
  objc_destroyWeak(&to);
  if (!v18)
  {
    return;
  }

  v20 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v19);
  v21 = re::RelativeArray<re::AnimationClock>::operator[](v20, 0);
  v23 = *v21;
  v24 = *(v21 + 1);
  if (v6 != v23)
  {
    if (v23 != 3)
    {
      if ((v23 & 0xFFFFFFFB) == 1)
      {
        if (*(a2 + 33))
        {
          realitykit_willSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.isComplete");
        }

        re::AnimationManager::addAnimationEvent(this, 2, a2, 0, v24);
        if (*(a2 + 33))
        {
          realitykit_didSetWithString(a2 + 264, a2 + 256, "AnimationPlaybackController.isComplete");
        }
      }

      goto LABEL_27;
    }

    v27 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v22);
    if (v27[1])
    {
      v29 = *v27;
      if (v29)
      {
        v30 = v27 + v29;
      }

      else
      {
        v30 = 0;
      }

      v30[32] = 1;
      v25 = this;
      v26 = 1;
      goto LABEL_21;
    }

LABEL_38:
    re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v40, v42);
    __break(1u);
    return;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v21 + 16) & 0x7FFFFFFFu) >= 0x7F800000 || floorf(v9) == floorf(*(v21 + 16)))
  {
    goto LABEL_27;
  }

  v25 = this;
  v26 = 3;
LABEL_21:
  re::AnimationManager::addAnimationEvent(v25, v26, a2, 0, v24);
LABEL_27:
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*(re::internal::TimelineTree::source(a2, i) + 8) == 49)
      {
        v32 = re::internal::TimelineTree::source(a2, i);
        if ((*(v32 + 96) & 1) == 0)
        {
          v34 = v32;
          v35 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(a2 + 20, v33);
          v36 = re::RelativeArray<re::AnimationClock>::operator[](v35, i);
          v43 = *v36;
          v44 = v36[16];
          if (v44 == 1)
          {
            v45 = *(v36 + 3);
          }

          v37 = *(v36 + 2);
          v38 = *(v36 + 3);
          v48 = *(v36 + 8);
          v46 = v37;
          v47 = v38;
          re::TypedEventTimelineInstance<float>::processEvents(v34, &v43, 0);
        }
      }
    }
  }
}

float re::AnimationManager::updateBlendFactors(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if (!v3)
  {
LABEL_32:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = 0;
    v41 = 2048;
    v42 = 0;
    _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = 0;
    v41 = 2048;
    v42 = 0;
    _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a2 + 26);
  if (!v4)
  {
    goto LABEL_36;
  }

  v5 = *(a2 + 4);
  v6 = *(a2 + 24);
  v7 = 4;
  if (*v6)
  {
    v7 = 8;
  }

  result = *&v6[v7];
  v9 = *(a2 + 27);
  *v9 = result;
  if (v5 >= 2)
  {
    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a2 + 2);
    }

    v13 = v6 + 12;
    v14 = 1;
    while (v12 != v14)
    {
      v2 = *(v11 + 4 * v14);
      if (v4 <= v2)
      {
        goto LABEL_20;
      }

      if (v3 == v14)
      {
        goto LABEL_24;
      }

      if (v4 == v14)
      {
        goto LABEL_28;
      }

      if (*v13)
      {
        v15 = 8;
      }

      else
      {
        v15 = 4;
      }

      result = v9[v2] * *&v13[v15];
      v9[v14++] = result;
      v13 += 12;
      if (v5 == v14)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, v10);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v31);
    __break(1u);
LABEL_20:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v2;
    v41 = 2048;
    v42 = v4;
    _os_log_send_and_compose_impl(v17, &v34, &v43, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v3;
    _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v4;
    _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

re::AnimationManager *re::AnimationManager::updateHandoffBehaviors(re::AnimationManager *result, int a2)
{
  v2 = result + 40 * a2;
  v3 = *(v2 + 27);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 29);
    v6 = 8 * v3;
    do
    {
      v7 = *v5;
      if (**v5)
      {
        result = re::internal::AnimationHandoffBehavior::update(*v5, v4);
        if (result == 1)
        {
          *v7 = 0;
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void re::AnimationManager::applyAnimations(re::AnimationManager *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 1002, this, 0, 0, 0);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v4);
  if (*(this + 29))
  {
    *(this + 505) = 1;
    re::AnimationManager::applyAnimations(this, 1);
    *(this + 505) = 0;
    re::AnimationManager::raiseAnimationEvents(this);
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(v4);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5, v2, v3);
}

void re::AnimationManager::updateAndApplyAnimations(re::AnimationManager *this, re::internal::TimelineTreeInfo *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *(this + 504) = 1;
  re::AnimationManager::updateTime(this, a2);
  re::AnimationManager::updateBlendFactors(v3, a2);
  v4 = *(a2 + 4);
  re::StackScratchAllocator::StackScratchAllocator(v29);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v28 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v25, v29, 3);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(a2 + 29);
      if (v6 <= i)
      {
        v30 = 0;
        memset(v39, 0, sizeof(v39));
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        v32 = "operator[]";
        v33 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v34 = 468;
        v35 = 2048;
        v36 = i;
        v37 = 2048;
        v38 = v6;
        _os_log_send_and_compose_impl(v22, &v30, v39, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v23, this);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(*(a2 + 30) + 8 * i);
      if (!v7)
      {
        continue;
      }

      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v9 = v8 ^ (v8 >> 31);
      if (DWORD2(v26))
      {
        v10 = v9 % DWORD2(v26);
        v11 = *(*(&v25 + 1) + 4 * v10);
        if (v11 != 0x7FFFFFFF)
        {
          while (*(v26 + 24 * v11 + 16) != v7)
          {
            LODWORD(v11) = *(v26 + 24 * v11 + 8) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          continue;
        }

LABEL_9:
        v12 = v10;
        v13 = *(*(&v25 + 1) + 4 * v10);
        if (v13 != 0x7FFFFFFF)
        {
          while (*(v26 + 24 * v13 + 16) != v7)
          {
            LODWORD(v13) = *(v26 + 24 * v13 + 8) & 0x7FFFFFFF;
            if (v13 == 0x7FFFFFFF)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_14:
      v14 = v28;
      if (v28 == 0x7FFFFFFF)
      {
        v14 = v27;
        v15 = v27;
        if (v27 == DWORD2(v26))
        {
          re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(&v25, 2 * HIDWORD(v26));
          v15 = v27;
          v12 = v9 % DWORD2(v26);
        }

        v27 = v15 + 1;
        v16 = v26;
        v17 = *(v26 + 24 * v14 + 8);
      }

      else
      {
        v16 = v26;
        v17 = *(v26 + 24 * v28 + 8);
        LODWORD(v28) = v17 & 0x7FFFFFFF;
      }

      v18 = v16 + 24 * v14;
      *(v18 + 8) = v17 | 0x80000000;
      v19 = *(&v25 + 1);
      *(v18 + 8) = *(*(&v25 + 1) + 4 * v12) | 0x80000000;
      *v18 = v9;
      *(v18 + 16) = v7;
      *(v19 + 4 * v12) = v14;
      ++HIDWORD(v26);
      ++HIDWORD(v28);
LABEL_20:
      (*(*v7 + 32))(v7);
      (*(*v7 + 40))(v7);
    }
  }

  *(this + 504) = 0;
  re::AnimationManager::raiseAnimationEvents(this);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v25);
  re::StackScratchAllocator::~StackScratchAllocator(v29);
}

void re::AnimationManager::blendFactorAsBindPoint(uint64_t *__return_ptr a1@<X8>, re::AnimationManager *this@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v10)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v11);
      v8 = &unk_1EE187000;
    }
  }

  *a1 = v8[40];
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 8) = 0;
  a1[1] = 0;
  memset(v12, 0, sizeof(v12));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v12);
  re::BindPoint::BindPointData::deinit(v12);
  v9 = a1[5] + 32 * a1[3];
  *(v9 - 32) = &unk_1F5CB02A0;
  *(v9 - 24) = this;
  *(v9 - 16) = a3;
  *(v9 - 8) = a4;
}

void re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::AnimationManager::isUpdating(re::AnimationManager *this)
{
  if (*(this + 504))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 505);
  }

  return v1 & 1;
}

double re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 24;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

re::internal::AriadneSignpostScopeGuard *re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, int a2, _BOOL8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *this = a2;
  *(this + 1) = a3;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return this;
}

void re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(re::internal::AriadneSignpostScopeGuard *this, uint64_t a2, BOOL a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::internal::TimelineTreeInfo>::allocBlock(void *a1)
{
  v3 = 312 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
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
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 16 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::internal::TimelineTreeInfo>::ElementBlock>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::internal::TimelineTree::~TimelineTree(re::internal::TimelineTree *this)
{
  re::internal::TimelineTree::~TimelineTree(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CB0398;
  objc_destroyWeak(this + 21);
  *(this + 21) = 0;
  v2 = *(this + 18);
  if (v2)
  {

    *(this + 18) = 0;
  }

  if (*(this + 120) == 1)
  {
    v3 = *(this + 17);
    if (v3)
    {
      free(v3);
      *(this + 17) = 0;
    }
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::DynamicString::deinit((this + 40));
}

uint64_t re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
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
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 2);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::internal::TimelineTreeInfo *,re::internal::TimelineTreeInfo *,re::internal::ValueAsKey<re::internal::TimelineTreeInfo *>,re::Hash<re::internal::TimelineTreeInfo *>,re::EqualTo<re::internal::TimelineTreeInfo *>,true,false>::setCapacity(a1, 2 * v11);
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = *(a1 + 1);
              }

              *(a1 + 8) = v18 + 1;
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 2) + 24 * v17 + 8) = *(*(a1 + 2) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 2) + 24 * v17) = v14;
            *(*(a1 + 2) + 24 * v17 + 16) = *v13;
            v12 = *(a1 + 1);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::internal::AnimationHandoffBehavior *>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::AnimationHandoffBehavior *>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::ProfilerConfig *re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(re::ProfilerConfig *a1)
{
  *a1 = 0;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v3 = re::profilerThreadContext(isStatisticCollectionEnabled);
    *a1 = v3;
    if (*(v3 + 152))
    {
      *(a1 + 1) = mach_absolute_time();
    }
  }

  return a1;
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::end(void *result)
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
      v5 = v3[168].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[168].i64[0] = v5;
      v6 = v3[168].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[168].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[169] = vaddq_s64(v3[169], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::DynamicArray<re::BindPoint::BindPointData>::add(_anonymous_namespace_ *this, _OWORD *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  re::BindPoint::BindPointData::move(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::BindPoint::BindPointData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BindPoint::BindPointData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::internal::BindPointImpl<re::internal::BlendFactorBindPointImpl>::copyInto(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5CB02A0;
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

__n128 re::internal::BindPointImpl<re::internal::BlendFactorBindPointImpl>::moveInto(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5CB02A0;
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  return result;
}

unint64_t re::internal::BlendFactorBindPointImpl::hash(void *a1)
{
  v1 = 0xBF58476D1CE4E5B9 * (a1[1] ^ (a1[1] >> 30));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0xBF58476D1CE4E5B9 * (a1[2] ^ (a1[2] >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
  v5 = a1[3] ^ (a1[3] >> 30);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v5) ^ ((0xBF58476D1CE4E5B9 * v5) >> 27));
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + (((v6 ^ (v6 >> 31)) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4)) ^ v2;
}

uint64_t re::internal::BlendFactorBindPointImpl::targetIdentifier(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::baseValueUntyped(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::isOverridden(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    v2 = *BlendFactor;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

_BYTE *re::internal::BlendFactorBindPointImpl::setIsOverridden(re::internal::BlendFactorBindPointImpl *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (result)
  {
    *result = a5;
  }

  return result;
}

uint64_t re::internal::BlendFactorBindPointImpl::overrideValueUntyped(re::internal::BlendFactorBindPointImpl *a1)
{
  BlendFactor = re::internal::BlendFactorBindPointImpl::getBlendFactor(a1);
  if (BlendFactor)
  {
    return BlendFactor + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::BlendFactorBindPointImpl::getBlendFactor(re::internal::BlendFactorBindPointImpl *this)
{
  v18 = *MEMORY[0x1E69E9840];
  result = re::DataArray<re::internal::TimelineTreeInfo>::tryGet(*(this + 1) + (*(this + 2) >> 56 << 6) + 72, *(this + 2));
  if (result)
  {
    v3 = *(this + 3);
    v4 = *(result + 184);
    if (v4 <= v3)
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

      v12 = 468;
      v13 = 2048;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
      _os_crash_msg();
      __break(1u);
    }

    return *(result + 192) + 12 * v3;
  }

  return result;
}

void re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v23, v4, a2);
      v5 = *a1;
      *a1 = *v23;
      v6 = *(a1 + 2);
      v7 = *&v23[8];
      *v23 = v5;
      *&v23[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 24);
      v8 = *&v23[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = v7;
        v13 = DWORD1(v9);
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 6);
            v17 = v15 % v16;
            v18 = *(a1 + 9);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 8);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(a1, 2 * v13);
                v17 = v15 % *(a1 + 6);
                v19 = *(a1 + 8);
                v12 = *(a1 + 1);
              }

              *(a1 + 8) = v19 + 1;
              v20 = *(a1 + 2);
              v21 = *(v20 + 24 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 2);
              v21 = *(v20 + 24 * v18 + 8);
              *(a1 + 9) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 2) + 24 * v18 + 8) = *(*(a1 + 2) + 24 * v18 + 8) & 0x80000000 | *(v12 + 4 * v17);
            *(*(a1 + 2) + 24 * v18) = v15;
            *(*(a1 + 2) + 24 * v18 + 16) = *v14;
            *v14 = 0;
            *(v12 + 4 * v17) = v18;
            v13 = *(a1 + 7) + 1;
            *(a1 + 7) = v13;
            v10 = *&v23[32];
          }

          ++v11;
          v14 += 3;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v23);
    }
  }

  else
  {
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 3;
    }
  }
}

re::DynamicString *re::RigGraphCompiler::getCurrentCompiledAssetInfo@<X0>(re::RigGraphCompiler *this@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::RigGraphAsset::assetType(this);
  v4 = *v3;
}

uint64_t re::RigGraphCompiler::assetIntrospectionType(re::RigGraphCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigGraphAsset>(BOOL)::info = re::introspect_RigGraphAsset(0, v4, v5, v6, v7, v8);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 127);
}

uint64_t re::RigGraphCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v3 = "reriggraph";
  v2[0] = &v3;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

uint64_t *re::RigGraphCompiler::compile@<X0>(re::RigGraphCompiler *this@<X0>, char *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 160, 8);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 9) = 0u;
  *&v36 = &unk_1F5CB0448;
  *(&v37 + 1) = &v36;
  v41[3] = v41;
  v40 = v8;
  v41[0] = &unk_1F5CB0448;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](&v36);
  v9 = strrchr(a2, 46);
  if (!strcasecmp(v9 + 1, "reriggraph"))
  {
    v20 = v40;
    v21 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    {
      v27 = v20;
      v21 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      v20 = v27;
      if (v28)
      {
        re::introspect<re::RigGraphAsset>(BOOL)::info = re::introspect_RigGraphAsset(0, v27, v29, v30, v31, v32);
        v21 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
        v20 = v27;
      }
    }

    re::AssetUtilities::readSourceJson(&v33, a2, v20, *(v21 + 127), a3);
    if (v33)
    {
      v22 = v40;
      v40 = 0;
      *a4 = 1;
      *(a4 + 8) = v22;
    }

    else
    {
      *&v36 = 100;
      *(&v36 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v37, &v34);
      v23 = v37;
      *(a4 + 8) = v36;
      v24 = v38;
      v25 = v39;
      *a4 = 0;
      *(a4 + 24) = v23;
      *(a4 + 40) = v24;
      *(a4 + 48) = v25;
      if (v33 & 1) == 0 && v34 && (v35)
      {
        (*(*v34 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format(&v36, "Invalid Asset Path: %s.", v10, a2);
    v18 = v36;
    v19 = v37;
    *a4 = 0;
    *(a4 + 8) = 200;
    *(a4 + 16) = re::AssetErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
  }

  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v40, v11, v12, v13, v14, v15, v16, v17);
}

re *re::internal::destroyPersistent<re::RigGraphAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::RigGraphNode>::deinit(a3 + 120);
    re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);
    re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::DynamicArray<char const*>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<float *>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<char const*>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<char const*>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 8 * a2), __src, 8 * a4);
  }

  else
  {
    re::DynamicArray<float *>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[8 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 8 * v5), __src, 8 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 8 * v5), v13, 8 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::DynamicArray<re::RigGraphNode>::deinit(uint64_t a1)
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
        v5 = 200 * v4;
        do
        {
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v3 + 160);
          re::DynamicArray<re::StringID>::deinit(v3 + 120);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(v3 + 80);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3);
          v3 += 200;
          v5 -= 200;
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

uint64_t re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(uint64_t a1)
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
        do
        {
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 40;
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

uint64_t re::DynamicArray<re::MeshRigGraphIndex>::deinit(uint64_t a1)
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
        v5 = v4 << 6;
        v6 = (v3 + 40);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          re::StringID::destroyString((v6 - 32));
          v6 = (v6 + 64);
          v5 -= 64;
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

uint64_t re::DynamicArray<re::RigGraphDefinition>::deinit(uint64_t a1)
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
        v5 = 0;
        v6 = 216 * v4;
        do
        {
          re::DynamicArray<re::RigGraphInputValue>::deinit(v3 + v5 + 176);
          re::DynamicArray<re::RigGraphConnection>::deinit((v3 + v5 + 136));
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v3 + v5 + 96);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v3 + v5 + 56);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v3 + v5 + 16);
          re::StringID::destroyString((v3 + v5));
          v5 += 216;
        }

        while (v6 != v5);
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

uint64_t std::__function::__func<re::RigGraphCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0,std::allocator<re::RigGraphCompiler::compile(char const*,void *,re::AssetSerializationScheme &)::$_0>,void ()(re::RigGraphAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    std::function<void ()(re::RigGraphAsset *)>::operator()((a1 + 1), v9, a3, a4, a5, a6, a7, a8, v11, v12, vars0);
  }

  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::RigGraphAsset *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t *a11)
{
  v21 = a2;
  v11 = *(a1 + 24);
  if (v11)
  {
    return (*(*v11 + 48))(v11, &v21);
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
  return re::solverTwoBoneIK(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11);
}

uint64_t re::solverTwoBoneIK(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t *a11)
{
  if (a11)
  {
    v150 = a11[2];
    v151 = *a11;
    v153 = a11[3];
    v154 = a11[1];
    if (a6)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v153 = 0;
  v154 = 0;
  v150 = 0;
  v151 = 0;
  if (!a6)
  {
    return 1;
  }

LABEL_3:
  v13 = 0;
  v14 = a10;
  LOBYTE(v15) = 1;
  v16 = 1.0;
  v152 = a6;
  while (v13 != a8)
  {
    v17 = *(a7 + 8 * v13);
    if (a4 <= v17)
    {
      goto LABEL_46;
    }

    v18 = *(a5 + 8 * v13);
    v19 = *(a3 + 4 * v17);
    v20 = v13;
    v21 = &re::solverTwoBoneIK(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *)::kDefaultUpPosition;
    if (a6 != v14)
    {
      v20 = 2 * v13;
      if (v14 <= 2 * v13)
      {
        goto LABEL_50;
      }

      v22 = v20 | 1;
      if (v14 <= (v20 | 1uLL))
      {
        goto LABEL_51;
      }

      v21 = (a9 + 16 * v22);
    }

    v23 = 0.0;
    if (v13 < v153)
    {
      v23 = *(v150 + 4 * v13) * 0.5;
    }

    v24 = 0.05;
    if (v13 < v154)
    {
      v24 = *(v151 + 4 * v13);
      if (v24 > v16)
      {
        v24 = v16;
      }

      if (v24 < 0.0)
      {
        v24 = 0.0;
      }
    }

    if (a2 <= v18)
    {
      goto LABEL_47;
    }

    if (a2 <= v19)
    {
      goto LABEL_48;
    }

    if (a2 <= v17)
    {
      goto LABEL_49;
    }

    v25 = (a1 + (v18 << 6));
    v26 = v25[3];
    v27 = (a1 + (v19 << 6));
    v28 = v27[3];
    v29 = (a1 + (v17 << 6));
    v30 = *(a9 + 16 * v20);
    v31 = vsubq_f32(v26, v30);
    v163 = vsubq_f32(v26, v28);
    v164 = vsubq_f32(v28, v29[3]);
    v32 = vmulq_f32(v164, v164);
    v33 = vmulq_f32(v163, v163);
    v34 = vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8));
    v37 = vextq_s8(v33, v33, 8uLL).u64[0];
    v35 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), v37), v34));
    v36 = vmulq_f32(v31, v31);
    *v37.i32 = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
    v38 = vaddv_f32(v35);
    v39 = v24 * v38;
    v40 = v38 - (v24 * v38);
    v165 = v26;
    v162 = v35;
    if (*v37.i32 >= v40)
    {
      v166 = v37;
      v168 = v31;
      v41 = expf(-(*v37.i32 - v40) / v39);
      v26 = v165;
      v42 = v40 + (v39 * (1.0 - v41));
      v30 = vsubq_f32(v165, vmulq_n_f32(vdivq_f32(v168, vdupq_lane_s32(v166, 0)), v42));
      v31 = vsubq_f32(v165, v30);
      v37 = __PAIR64__(v168.u32[1], LODWORD(v42));
    }

    v43 = vsubq_f32(v30, v26);
    v44 = vmulq_f32(v43, v43);
    v45 = v44.f32[2] + vaddv_f32(*v44.f32);
    v160 = v30;
    v167 = v37;
    v169 = v31;
    if (fabsf(v45) >= 1.0e-10)
    {
      v46 = v45;
      v47 = vrsqrte_f32(LODWORD(v45));
      v48 = vmul_f32(v47, vrsqrts_f32(LODWORD(v46), vmul_f32(v47, v47)));
      v43 = vmulq_n_f32(v43, vmul_f32(v48, vrsqrts_f32(LODWORD(v46), vmul_f32(v48, v48))).f32[0]);
    }

    v161 = v43;
    v50 = __sincosf_stret(v23);
    v51 = vmulq_n_f32(v161, v50.__sinval);
    v51.i32[2] = vmuls_lane_f32(v50.__sinval, v161, 2);
    v52 = v165;
    v53 = vsubq_f32(*v21, v165);
    v54 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
    v55 = vnegq_f32(v51);
    v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v55), v53, v54);
    v57 = vaddq_f32(v56, v56);
    v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL), v55), v58, v54);
    v60 = vaddq_f32(v165, vaddq_f32(vaddq_f32(v53, vmulq_n_f32(v58, v50.__cosval)), vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL)));
    if (*v167.i32 >= v38)
    {
      v72 = vdivq_f32(vnegq_f32(v169), vdupq_lane_s32(v167, 0));
      v71 = vdupq_lane_s32(v162, 1);
      v70 = vaddq_f32(v165, vmulq_lane_f32(v72, v162, 1));
      v64 = vaddq_f32(v165, vmulq_n_f32(v72, vadd_f32(vdup_lane_s32(v162, 1), v162).f32[0]));
    }

    else
    {
      v61 = vmul_f32(v162, v162);
      v62 = ((v61.f32[0] + (*v167.i32 * *v167.i32)) - v61.f32[1]) / (*v167.i32 + *v167.i32);
      v63 = vdivq_f32(v169, vdupq_lane_s32(v167, 0));
      v64 = v160;
      v65 = vaddq_f32(v160, vmulq_n_f32(v63, v62));
      v61.f32[0] = sqrtf(v61.f32[0] - (v62 * v62));
      v66 = vmulq_f32(v63, vsubq_f32(v60, v65));
      v67 = vsubq_f32(vsubq_f32(v60, vmulq_n_f32(v63, v66.f32[2] + vaddv_f32(*v66.f32))), v65);
      v68 = vmulq_f32(v67, v67);
      *&v69 = v68.f32[2] + vaddv_f32(*v68.f32);
      *v68.f32 = vrsqrte_f32(v69);
      *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
      v70 = vaddq_f32(v65, vmulq_n_f32(vmulq_n_f32(v67, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]), v61.f32[0]));
      v71 = vdupq_lane_s32(v162, 1);
    }

    v14 = a10;
    a6 = v152;
    v73 = vdupq_lane_s32(v162, 0);
    v74 = vdivq_f32(v164, v73);
    v75 = vdivq_f32(v163, v71);
    v76 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v77 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v78 = vnegq_f32(v74);
    v79 = vmlaq_f32(vmulq_f32(v77, v78), v75, v76);
    v80 = vmulq_f32(v79, v79);
    v80.f32[0] = sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0]));
    if (v80.f32[0] <= 0.01)
    {
      v82 = v27[2];
      v83 = vmulq_f32(v82, v82);
      *&v84 = v83.f32[2] + vaddv_f32(*v83.f32);
      *v83.f32 = vrsqrte_f32(v84);
      *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32)));
      v81 = vmulq_n_f32(v82, vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32))).f32[0]);
    }

    else
    {
      v81 = vdivq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), vdupq_lane_s32(*v80.f32, 0));
    }

    v85 = 0;
    v86 = vsubq_f32(v60, v64);
    v87 = vsubq_f32(v165, v60);
    v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vnegq_f32(v86)), v87, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
    v89 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
    v90 = vmulq_f32(v88, v88);
    *&v91 = v90.f32[1] + (v90.f32[2] + v90.f32[0]);
    *v90.f32 = vrsqrte_f32(v91);
    *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
    v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
    v93 = vdivq_f32(vsubq_f32(v165, v70), v71);
    v94 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
    v95 = vmlaq_f32(vmulq_f32(v94, vnegq_f32(v75)), v81, v77);
    v96 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
    v97 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v98 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v93)), v92, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
    v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    v100 = vzip1q_s32(v75, v96);
    v101 = vzip2q_s32(v75, v96);
    v102 = vzip1q_s32(v81, 0);
    v103 = vdupq_laneq_s32(v81, 2);
    v104 = vzip1q_s32(v100, v81);
    v170 = v104;
    v171 = vzip2q_s32(v100, v102);
    v172 = vzip1q_s32(v101, v103);
    do
    {
      v105 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v170 + v85))), v92, *&v170.i8[v85], 1), v99, *(&v170 + v85), 2);
      *(&v173 + v85) = v105;
      v85 += 16;
    }

    while (v85 != 48);
    v106 = 0;
    v107 = v173;
    v108 = v174;
    v109 = v175;
    v105.i64[0] = v25->i64[0];
    v104.i64[0] = v25[1].i64[0];
    v49.i64[0] = v25[2].i64[0];
    v105.i32[2] = v25->i32[2];
    v104.i32[2] = v25[1].i32[2];
    v49.i32[2] = v25[2].i32[2];
    v170 = v105;
    v171 = v104;
    v172 = v49;
    do
    {
      *(&v173 + v106) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, COERCE_FLOAT(*(&v170 + v106))), v108, *&v170.i8[v106], 1), v109, *(&v170 + v106), 2);
      v106 += 16;
    }

    while (v106 != 48);
    v110 = 0;
    v111 = v173;
    v112 = v174;
    v111.i32[3] = 0;
    v112.i32[3] = 0;
    v113 = v175;
    v113.i32[3] = 0;
    v16 = 1.0;
    v52.i32[3] = 1.0;
    *v25 = v111;
    v25[1] = v112;
    v25[2] = v113;
    v25[3] = v52;
    v114 = vdivq_f32(vsubq_f32(v70, v64), v73);
    v115 = vmlaq_f32(vmulq_f32(v94, v78), v81, v76);
    v116 = vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL);
    v117 = vmlaq_f32(vmulq_f32(v97, vnegq_f32(v114)), v92, vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL));
    v118 = vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL);
    v119 = vzip1q_s32(v74, v116);
    v120 = vzip2q_s32(v74, v116);
    v121 = vzip1q_s32(v119, v102);
    v122 = vzip2q_s32(v119, v102);
    v170 = v121;
    v171 = v122;
    v172 = vzip1q_s32(v120, v103);
    do
    {
      v123 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, COERCE_FLOAT(*(&v170 + v110))), v92, *&v170.i8[v110], 1), v118, *(&v170 + v110), 2);
      *(&v173 + v110) = v123;
      v110 += 16;
    }

    while (v110 != 48);
    v124 = 0;
    v125 = v173;
    v126 = v174;
    v127 = v175;
    v123.i64[0] = v27->i64[0];
    v122.i64[0] = v27[1].i64[0];
    v92.i64[0] = v27[2].i64[0];
    v123.i32[2] = v27->i32[2];
    v122.i32[2] = v27[1].i32[2];
    v92.i32[2] = v27[2].i32[2];
    v170 = v123;
    v171 = v122;
    v172 = v92;
    do
    {
      *(&v173 + v124) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v170 + v124))), v126, *&v170.i8[v124], 1), v127, *(&v170 + v124), 2);
      v124 += 16;
    }

    while (v124 != 48);
    v128 = 0;
    v129 = v173;
    v130 = v174;
    v129.i32[3] = 0;
    v130.i32[3] = 0;
    v131 = v175;
    v131.i32[3] = 0;
    v70.i32[3] = 1.0;
    *v27 = v129;
    v27[1] = v130;
    v27[2] = v131;
    v27[3] = v70;
    v70.i64[0] = v29->i64[0];
    v129.i64[0] = v29[1].i64[0];
    v130.i64[0] = v29[2].i64[0];
    v70.i32[2] = v29->i32[2];
    v129.i32[2] = v29[1].i32[2];
    v130.i32[2] = v29[2].i32[2];
    v170 = v70;
    v171 = v129;
    v172 = v130;
    do
    {
      *(&v173 + v128) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*(&v170 + v128))), v126, *&v170.i8[v128], 1), v127, *(&v170 + v128), 2);
      v128 += 16;
    }

    while (v128 != 48);
    v132 = v173;
    v133 = v174;
    v132.i32[3] = 0;
    v133.i32[3] = 0;
    v134 = v175;
    v134.i32[3] = 0;
    v64.i32[3] = 1.0;
    *v29 = v132;
    v29[1] = v133;
    v29[2] = v134;
    v29[3] = v64;
    v15 = v15 & (*v167.i32 < v38);
    if (++v13 == v152)
    {
      return v15;
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a8, a8);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v136, v143);
  __break(1u);
LABEL_46:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a4);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v137, v144);
  __break(1u);
LABEL_47:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a2);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v138, v145);
  __break(1u);
LABEL_48:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v19, a2);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v139, v146);
  __break(1u);
LABEL_49:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a2);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v140, v147);
  __break(1u);
LABEL_50:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v14);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v141, v148);
  __break(1u);
LABEL_51:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v22, v14);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v142, v149);
  __break(1u);
  return result;
}

uint64_t re::solverFABRIK(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a8;
  v15 = a7;
  v18 = a2;
  v128 = *MEMORY[0x1E69E9840];
  if (a11)
  {
    v20 = *a11;
    v102 = *(a11 + 4);
  }

  else
  {
    v102 = 32;
    v20 = 0.1;
  }

  if (a6)
  {
    v21 = 0;
    v22 = v20 * v20;
    LODWORD(result) = 1;
    while (1)
    {
      if (v21 == v14)
      {
        goto LABEL_85;
      }

      if (v21 == a10)
      {
        goto LABEL_86;
      }

      v24 = *(a5 + 8 * v21);
      if (v18 <= v24)
      {
        goto LABEL_87;
      }

      v25 = *(v15 + 8 * v21);
      v113 = *(a1 + (v24 << 6) + 48);
      v26 = 1;
      if (v25 != v24)
      {
        break;
      }

LABEL_13:
      v100 = v21;
      v101 = v25;
      v99 = result;
      v112 = 0;
      v111[0] = &unk_1F5CCF7F8;
      v111[1] = "Scratch Pad";
      v108 = 0;
      v109 = 0;
      v110 = 0;
      re::FixedArray<re::Vector3<float>>::init<>(&v108, v111, v26);
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v103 = v26 - 1;
      re::FixedArray<int>::init<>(&v105, v111, v26 - 1);
      if (v26)
      {
        v13 = 0;
        v29 = v101;
        while (v18 > v29)
        {
          v11 = v109;
          if (v109 <= v13)
          {
            goto LABEL_57;
          }

          v110[v13] = *(a1 + (v29 << 6) + 48);
          if (v13)
          {
            v11 = v109;
            if (v109 <= v13)
            {
              goto LABEL_73;
            }

            v12 = v13 - 1;
            v11 = v106;
            if (v106 <= v13 - 1)
            {
              goto LABEL_77;
            }

            v30 = vsubq_f32(v110[v13], v110[v13 - 1]);
            v31 = vmulq_f32(v30, v30);
            *(v107 + 4 * v13 - 4) = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
          }

          if (a4 <= v29)
          {
            goto LABEL_61;
          }

          ++v13;
          v29 = *(a3 + 4 * v29);
          if (v26 == v13)
          {
            goto LABEL_23;
          }
        }

        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v18);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v81);
        __break(1u);
LABEL_57:
        v114 = 0;
        a4 = &v115;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v115 = 136315906;
        v116 = "operator[]";
        v117 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v118 = 468;
        v119 = 2048;
        v120 = v13;
        v121 = 2048;
        v122 = v11;
        _os_log_send_and_compose_impl(v50, &v114, &v123, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_61:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, a4);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v71, v82);
        __break(1u);
LABEL_62:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v18);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v72, v83);
        __break(1u);
LABEL_63:
        v114 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v115 = 136315906;
        v116 = "operator[]";
        v117 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v118 = 468;
        v119 = 2048;
        v120 = v11;
        v121 = 2048;
        v122 = v26;
        _os_log_send_and_compose_impl(v53, &v114, &v123, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_67:
        v114 = 0;
        a4 = &v115;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v115 = 136315906;
        v116 = "operator[]";
        v117 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v118 = 468;
        v119 = 2048;
        v120 = v14;
        v121 = 2048;
        v122 = v26;
        _os_log_send_and_compose_impl(v56, &v114, &v123, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_71:
        re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a4);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v84);
        __break(1u);
LABEL_72:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, a4);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v85);
        __break(1u);
LABEL_73:
        v114 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v115 = 136315906;
        v116 = "operator[]";
        v117 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v118 = 468;
        v119 = 2048;
        v120 = v13;
        v121 = 2048;
        v122 = v11;
        _os_log_send_and_compose_impl(v59, &v114, &v123, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v114 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v115 = 136315906;
        v116 = "operator[]";
        v117 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v118 = 468;
        v119 = 2048;
        v120 = v12;
        v121 = 2048;
        v122 = v11;
        _os_log_send_and_compose_impl(v62, &v114, &v123, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
        _os_crash_msg();
        __break(1u);
        goto LABEL_81;
      }

LABEL_23:
      if (!v109)
      {
        goto LABEL_88;
      }

      v13 = 1;
      if (v102)
      {
        v26 = a9 + 16 * v100;
        v32 = vsubq_f32(*v110, *v26);
        v33 = vmulq_f32(v32, v32);
        v34 = v33.f32[2] + vaddv_f32(*v33.f32);
        if (v34 > v22)
        {
          LODWORD(v11) = 1;
          while (1)
          {
            if (!v109)
            {
              break;
            }

            v35 = vsubq_f32(*v110, *v26);
            v36 = vmulq_f32(v35, v35);
            v37 = v36.f32[2] + vaddv_f32(*v36.f32);
            v13 = (v34 - v37) > v20;
            v38 = (v34 - v37) <= v20 || v11 >= v102;
            v11 = (v11 + 1);
            v39 = !v38 && v37 > v22;
            v34 = v37;
            if (!v39)
            {
              goto LABEL_35;
            }
          }

LABEL_81:
          v114 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v123 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v115 = 136315906;
          v116 = "operator[]";
          v117 = 1024;
          if (v63)
          {
            v64 = 3;
          }

          else
          {
            v64 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = 0;
          v121 = 2048;
          v122 = 0;
          _os_log_send_and_compose_impl(v64, &v114, &v123, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
LABEL_85:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, v14);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v86);
          __break(1u);
LABEL_86:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a10, a10);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v76, v87);
          __break(1u);
LABEL_87:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v77, v88);
          __break(1u);
LABEL_88:
          v114 = 0;
          a4 = &v115;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v123 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v115 = 136315906;
          v116 = "operator[]";
          v117 = 1024;
          if (v65)
          {
            v66 = 3;
          }

          else
          {
            v66 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = 0;
          v121 = 2048;
          v122 = 0;
          _os_log_send_and_compose_impl(v66, &v114, &v123, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
LABEL_92:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v40, a4);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v78, v89);
          __break(1u);
LABEL_93:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v40, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v79, v90);
          __break(1u);
LABEL_94:
          re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v18);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v80, v91);
          __break(1u);
LABEL_95:
          v114 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v123 = 0u;
          v67 = MEMORY[0x1E69E9C10];
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v115 = 136315906;
          v116 = "operator[]";
          v117 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v118 = 468;
          v119 = 2048;
          v120 = 0;
          v121 = 2048;
          v122 = 0;
          _os_log_send_and_compose_impl(v69, &v114, &v123, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v115, 38, v92, v93);
          _os_crash_msg();
          __break(1u);
        }
      }

LABEL_35:
      v40 = v101;
      if (a4 <= v101)
      {
        goto LABEL_92;
      }

      if (v18 <= v101)
      {
        goto LABEL_93;
      }

      v12 = *(a3 + 4 * v101);
      v98 = a1 + (v101 << 6);
      if (v103)
      {
        v14 = 0;
        v41 = *(a1 + (v101 << 6) + 48);
        v42 = 1;
        do
        {
          if (v18 <= v12)
          {
            goto LABEL_62;
          }

          v11 = v42;
          v26 = v109;
          if (v109 <= v42)
          {
            goto LABEL_63;
          }

          if (v109 <= v14)
          {
            goto LABEL_67;
          }

          v26 = a1 + (v12 << 6);
          v104 = *(v26 + 48);
          *v26 = v123;
          *(v26 + 16) = v124;
          *(v26 + 32) = v125;
          *(v26 + 48) = v126;
          if (a4 <= v12)
          {
            goto LABEL_71;
          }

          v12 = *(a3 + 4 * v12);
          ++v42;
          v41 = v104;
          v14 = v11;
        }

        while (v103 > v11);
        v12 = *(a3 + 4 * v101);
        v15 = a7;
        v14 = a8;
      }

      if (v18 <= v12)
      {
        goto LABEL_94;
      }

      v43 = (a1 + (v12 << 6));
      v44 = v43[3];
      v46 = *v43;
      v45 = v43[1];
      *(v98 + 32) = v43[2];
      *(v98 + 48) = v44;
      *v98 = v46;
      *(v98 + 16) = v45;
      if (!v109)
      {
        goto LABEL_95;
      }

      v47 = 0;
      v48 = *v110;
      v48.i32[3] = *(v98 + 60);
      *(v98 + 48) = v48;
      if (v105 && v106)
      {
        (*(*v105 + 40))();
        v47 = v109 == 0;
      }

      if (v108)
      {
        if (!v47)
        {
          (*(*v108 + 40))();
        }
      }

      re::Allocator::~Allocator(v111);
      result = v99 & v13;
      v21 = v100 + 1;
      if (v100 + 1 == a6)
      {
        return result;
      }
    }

    v27 = v25;
    while (a4 > v27)
    {
      ++v26;
      v27 = *(a3 + 4 * v27);
      if (v24 == v27)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_72;
  }

  return 1;
}

float re::getTwistAngle(uint64_t a1, float32x4_t a2)
{
  v2.i64[0] = *(a1 + 4);
  v3 = *a1;
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  if (fabsf(v5) >= 1.0e-10)
  {
    v6 = v5;
    v7 = vrsqrte_f32(LODWORD(v5));
    v8 = vmul_f32(v7, vrsqrts_f32(LODWORD(v6), vmul_f32(v7, v7)));
    v3 = vmulq_n_f32(v3, vmul_f32(v8, vrsqrts_f32(LODWORD(v6), vmul_f32(v8, v8))).f32[0]);
  }

  v9 = vmulq_f32(a2, a2);
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (fabsf(v10) >= 1.0e-10)
  {
    v11 = v10;
    v12 = vrsqrte_f32(LODWORD(v10));
    v13 = vmul_f32(v12, vrsqrts_f32(LODWORD(v11), vmul_f32(v12, v12)));
    a2 = vmulq_n_f32(a2, vmul_f32(v13, vrsqrts_f32(LODWORD(v11), vmul_f32(v13, v13))).f32[0]);
  }

  v2.i32[2] = *a1;
  v14 = vmulq_f32(v3, a2);
  v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  if (v14.f32[0] == -1.0 || (v15 = ((fabsf(v14.f32[0]) + 1.0) + 1.0) * 0.00001, v14.f32[0] = v14.f32[0] + 1.0, fabsf(v14.f32[0]) < v15))
  {
    if (fabsf(*&v3.i32[2]) >= 0.00001)
    {
      v16.i32[0] = 0;
      *&v16.i32[1] = -*&v3.i32[2];
      v16.i64[1] = v3.u32[1];
    }

    else
    {
      v16 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v3.i32[1]), v3);
    }

    v17 = vmulq_f32(v16, v16);
    *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(v18);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
    v19 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v16.i64[0] = 0;
  }

  else
  {
    v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(v3)), a2, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
    v16 = vuzp1q_s32(v63, v63);
    v64 = vextq_s8(v16, v63, 0xCuLL);
    v14.f32[0] = sqrtf(v14.f32[0] + v14.f32[0]);
    *v16.i32 = v14.f32[0] * 0.5;
    v19 = vdivq_f32(v64, vdupq_lane_s32(*v14.f32, 0));
  }

  v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v21 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v22 = vnegq_f32(v19);
  v23 = vmlaq_f32(vmulq_f32(v21, v22), v2, v20);
  v24 = vaddq_f32(v23, v23);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v22), v25, v20);
  v27 = vaddq_f32(vaddq_f32(v2, vmulq_n_f32(v25, *v16.i32)), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
  v28 = vmulq_f32(v27, v27);
  v29 = v28.f32[2] + vaddv_f32(*v28.f32);
  if (fabsf(v29) >= 1.0e-10)
  {
    v30 = v29;
    v31 = vrsqrte_f32(LODWORD(v29));
    v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
    v27 = vmulq_n_f32(v27, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
  }

  v33 = vmulq_f32(v2, v2);
  v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  v35 = v2;
  if (fabsf(v34) >= 1.0e-10)
  {
    v36 = v34;
    v37 = vrsqrte_f32(LODWORD(v34));
    v38 = vmul_f32(v37, vrsqrts_f32(LODWORD(v36), vmul_f32(v37, v37)));
    v35 = vmulq_n_f32(v2, vmul_f32(v38, vrsqrts_f32(LODWORD(v36), vmul_f32(v38, v38))).f32[0]);
    v21 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v68 = v2;
  v39 = v19;
  v39.i32[3] = v16.i32[0];
  v40 = vdupq_lane_s32(*v16.i8, 0);
  v41 = vmulq_f32(v27, v35);
  v42 = v41.f32[2] + vaddv_f32(*v41.f32);
  if (v42 == -1.0 || (v43 = ((fabsf(v42) + 1.0) + 1.0) * 0.00001, v44 = v42 + 1.0, fabsf(v44) < v43))
  {
    if (fabsf(*&v27.i32[2]) >= 0.00001)
    {
      v45.i32[0] = 0;
      v45.f32[1] = -*&v27.i32[2];
      v45.i64[1] = v27.u32[1];
    }

    else
    {
      v45 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v27.i32[1]), v27);
    }

    v46 = vmulq_f32(v45, v45);
    *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
    *v46.f32 = vrsqrte_f32(v47);
    *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
    v48 = vmulq_n_f32(v45, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
    v49 = 0.0;
  }

  else
  {
    v65 = vmlaq_f32(vmulq_f32(v21, vnegq_f32(v27)), v35, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
    v66 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
    *v35.i32 = sqrtf(v44 + v44);
    v49 = *v35.i32 * 0.5;
    v48 = vdivq_f32(v66, vdupq_lane_s32(*v35.i8, 0));
  }

  v50 = vmlaq_f32(vmulq_f32(v20, vnegq_f32(v48)), v19, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL));
  v51 = vmlaq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), v19, v49), v48, v40);
  v52 = vmulq_f32(v39, v48);
  v53 = -((v52.f32[2] + vaddv_f32(*v52.f32)) - (v49 * *v16.i32));
  v54 = vmulq_f32(v51, v51);
  v55 = v54.f32[2] + vaddv_f32(*v54.f32);
  v56 = 0uLL;
  if (fabsf(v55) >= 1.0e-10)
  {
    v57 = v55;
    v58 = vrsqrte_f32(LODWORD(v55));
    v59 = vmul_f32(v58, vrsqrts_f32(LODWORD(v57), vmul_f32(v58, v58)));
    v56 = vmulq_n_f32(v51, vmul_f32(v59, vrsqrts_f32(LODWORD(v57), vmul_f32(v59, v59))).f32[0]);
  }

  v67 = v56;
  v60 = acosf(v53);
  v61 = vmulq_f32(v68, v67);
  return (v60 + v60) * (v61.f32[2] + vaddv_f32(*v61.f32));
}

uint64_t re::solverSplineIK(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6, unint64_t a7, uint64_t a8, _OWORD *a9, unint64_t a10, uint64_t a11)
{
  v17 = a10;
  v18 = a9;
  v252 = *MEMORY[0x1E69E9840];
  v19 = *a11;
  v20 = *(a11 + 64);
  if (*(a11 + 25) == 1)
  {
    v21 = a10 - 1;
    if (!a10)
    {
LABEL_197:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v188, v203);
      __break(1u);
      goto LABEL_198;
    }

    v20 = v20 + re::getTwistAngle(a11 + 48, a9[v21]);
  }

  else
  {
    v21 = a10;
  }

  TwistAngle = 0.0;
  if (*(a11 + 24) == 1)
  {
    if (a10 <= --v21)
    {
LABEL_198:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v17);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v189, v204);
      __break(1u);
LABEL_199:
      v241 = 0;
      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v247 = 0u;
      v169 = MEMORY[0x1E69E9C10];
      v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v242 = 136315906;
      *&v242[4] = "operator[]";
      *&v242[12] = 1024;
      if (v170)
      {
        v171 = 3;
      }

      else
      {
        v171 = 2;
      }

      *&v242[14] = 468;
      v243 = 2048;
      v244 = a7;
      v245 = 2048;
      v246 = v11;
      _os_log_send_and_compose_impl(v171, &v241, &v247, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
      _os_crash_msg();
      __break(1u);
LABEL_203:
      v241 = 0;
      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v247 = 0u;
      v172 = MEMORY[0x1E69E9C10];
      v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v242 = 136315906;
      *&v242[4] = "operator[]";
      *&v242[12] = 1024;
      if (v173)
      {
        v174 = 3;
      }

      else
      {
        v174 = 2;
      }

      *&v242[14] = 468;
      v243 = 2048;
      v244 = a7;
      v245 = 2048;
      v246 = v11;
      _os_log_send_and_compose_impl(v174, &v241, &v247, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
      _os_crash_msg();
      __break(1u);
    }

    TwistAngle = re::getTwistAngle(a11 + 32, a9[v21]);
  }

  v221[0] = 0;
  v221[1] = 0;
  v223 = 0;
  v222 = 0;
  v229 = 0;
  memset(v224, 0, sizeof(v224));
  v225 = 0;
  v226 = 0u;
  v227 = 0u;
  v228 = 0;
  v230 = 0x3F80000000000000;
  v231 = 1;
  v220 = &unk_1F5CB04D8;
  v23 = *(a11 + 16);
  v17 = (v23 - 5);
  v210 = a4;
  v212 = a7;
  if (v23 == 5)
  {
    v223 = 1;
    v232 = 0;
  }

  else
  {
    re::DynamicArray<re::Vector3<float>>::resize(v221, (3 * (v23 - 5) + 1));
    v232 = v23 - 5;
    if ((v231 & 1) == 0)
    {
      re::DynamicArray<float>::resize(v224 + 8, (v23 - 5) + 1);
    }
  }

  a7 = &v220;
  v220[11](&v220);
  v11 = (v23 - 2);
  if (v11 >= 3)
  {
    v27 = 2;
    while (1)
    {
      v28 = *(a11 + 16);
      if (v28 <= v27)
      {
        break;
      }

      (v220[13])(&v220, (v27 - 2), *(*(a11 + 8) + 4 * v27));
      if (v11 == ++v27)
      {
        goto LABEL_16;
      }
    }

LABEL_147:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v28);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v182, v197);
    __break(1u);
LABEL_148:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v138)
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v17;
    _os_log_send_and_compose_impl(v139, &v241, &v247, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_152:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v140 = MEMORY[0x1E69E9C10];
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v17;
    _os_log_send_and_compose_impl(v142, &v241, &v247, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v17;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v145, &v241, &v247, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_160:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v17;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v148, &v241, &v247, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_164:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v149 = MEMORY[0x1E69E9C10];
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v18;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v151, &v241, &v247, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_168:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v17;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v154, &v241, &v247, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
    goto LABEL_172;
  }

LABEL_16:
  if (!v21)
  {
    goto LABEL_184;
  }

  if (!v222)
  {
LABEL_185:
    v239[0] = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v164 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    *&v242[14] = 789;
    v243 = 2048;
    v244 = 0;
    v245 = 2048;
    v246 = 0;
    _os_log_send_and_compose_impl(v166, v239, &v247, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_189:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v184, v199);
    __break(1u);
    goto LABEL_190;
  }

  **&v224[0] = *a9;
  v27 = v210;
  if (v17)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
    v32 = 12;
    while (1)
    {
      v33 = v30 + 2;
      v34 = *(a11 + 16);
      if (v34 <= v30 + 2)
      {
        goto LABEL_126;
      }

      v35 = v30 + 3;
      if (v34 <= v30 + 3)
      {
        break;
      }

      if (v30 == v21)
      {
        goto LABEL_128;
      }

      v36 = 0;
      v37 = *(a11 + 8);
      v26.i32[0] = *(v37 + 4 * v33);
      LODWORD(v25) = *(v37 + 4 * v35);
      v38 = &a9[v30];
      v39 = v26;
      v39.i32[1] = v26.i32[0];
      v39.i32[2] = v25;
      *v242 = v39;
      v247 = *v38;
      v248 = v38[1];
      v249 = v38[2];
      v250 = v38[3];
      v40 = v37 + v29;
      v41 = 3;
      do
      {
        v42 = 0;
        v43 = *&v242[4 * v36];
        v44 = v247;
        v45 = &v248;
        do
        {
          v46 = (v43 - *(v40 + 4 * v42)) / (*(v37 + v32 + 4 * v42) - *(v40 + 4 * v42));
          ++v42;
          v47 = *v45;
          v45[-1] = vaddq_f32(vmulq_n_f32(*v45, v46), vmulq_n_f32(v44, 1.0 - v46));
          ++v45;
          v44 = v47;
        }

        while (v41 != v42);
        ++v36;
        --v41;
        v40 += 4;
      }

      while (v36 != 3);
      v48 = 0;
      v49 = v247;
      v26.i32[1] = v25;
      v26.i32[2] = v25;
      *v242 = v26;
      v247 = *v38;
      v248 = v38[1];
      v249 = v38[2];
      v250 = v38[3];
      v50 = v37 + v29;
      v51 = 3;
      do
      {
        v52 = 0;
        v53 = *&v242[4 * v48];
        v54 = v247;
        v55 = &v248;
        do
        {
          v56 = (v53 - *(v50 + 4 * v52)) / (*(v37 + v32 + 4 * v52) - *(v50 + 4 * v52));
          ++v52;
          v57 = *v55;
          v55[-1] = vaddq_f32(vmulq_n_f32(*v55, v56), vmulq_n_f32(v54, 1.0 - v56));
          ++v55;
          v54 = v57;
        }

        while (v51 != v52);
        ++v48;
        --v51;
        v50 += 4;
      }

      while (v48 != 3);
      v58 = 0;
      v59 = *(&v247 + 1);
      v24 = v247;
      *v242 = vdupq_lane_s32(*&v25, 0);
      v247 = *v38;
      v248 = v38[1];
      v249 = v38[2];
      v25 = v38[3];
      v250 = v25;
      v60 = v37 + v32;
      v61 = v37 + v29;
      v62 = 3;
      do
      {
        v63 = 0;
        v64 = *&v242[4 * v58];
        v26 = v247;
        v65 = &v248;
        do
        {
          v66 = (v64 - *(v61 + 4 * v63)) / (*(v60 + 4 * v63) - *(v61 + 4 * v63));
          ++v63;
          v67 = *v65;
          v65[-1] = vaddq_f32(vmulq_n_f32(*v65, v66), vmulq_n_f32(v26, 1.0 - v66));
          ++v65;
          v26 = v67;
        }

        while (v62 != v63);
        ++v58;
        --v62;
        v61 += 4;
      }

      while (v58 != 3);
      a7 = v31;
      v11 = v222;
      if (v222 <= v31)
      {
        goto LABEL_129;
      }

      v68 = v247;
      *(*&v224[0] + 16 * v31) = v49;
      a7 = (v31 + 1);
      v11 = v222;
      if (v222 <= a7)
      {
        goto LABEL_133;
      }

      v69 = (*&v224[0] + 16 * a7);
      *v69 = v24;
      v69[1] = v59;
      a7 = (v31 + 2);
      v11 = v222;
      if (v222 <= a7)
      {
        goto LABEL_137;
      }

      *(*&v224[0] + 16 * a7) = v68;
      v31 += 3;
      ++v30;
      v32 += 4;
      v29 += 4;
      if (v30 == v17)
      {
        goto LABEL_39;
      }
    }

LABEL_127:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v178, v193);
    __break(1u);
LABEL_128:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v179, v194);
    __break(1u);
LABEL_129:
    v239[0] = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v242[14] = 789;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v128, v239, &v247, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v239[0] = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *&v242[14] = 789;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v131, v239, &v247, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v239[0] = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v242[14] = 789;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v134, v239, &v247, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
    goto LABEL_141;
  }

LABEL_39:
  if (!a6)
  {
    goto LABEL_189;
  }

  if (!a8)
  {
LABEL_190:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v185, v200);
    __break(1u);
LABEL_191:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v167)
    {
      v168 = 3;
    }

    else
    {
      v168 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v21;
    _os_log_send_and_compose_impl(v168, &v241, &v247, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_195:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v104, v80);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v186, v201);
    __break(1u);
    goto LABEL_196;
  }

  a7 = *a5;
  v209 = *v212;
  v240 = 0;
  v239[0] = &unk_1F5CCF7F8;
  v239[1] = "Scratch Pad";
  v21 = a2;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  re::FixedArray<re::Vector3<float>>::init<>(&v236, v239, a2);
  v233 = 0;
  v234 = 0;
  v235 = 0;
  re::FixedArray<int>::init<>(&v233, v239, a2);
  if (a2)
  {
    v17 = 0;
    v71 = v209;
    while (a2 > v71)
    {
      v11 = v237;
      if (v237 <= v17)
      {
        goto LABEL_142;
      }

      *(v238 + 16 * v17) = *(a1 + (v71 << 6) + 48);
      if (v17)
      {
        v11 = v237;
        if (v237 <= v17)
        {
          goto LABEL_160;
        }

        v18 = v17 - 1;
        if (v237 <= v17 - 1)
        {
          goto LABEL_164;
        }

        v11 = v234;
        if (v234 <= v17)
        {
          goto LABEL_168;
        }

        v72 = vsubq_f32(*(v238 + 16 * v17), *(v238 + 16 * v17 - 16));
        v73 = vmulq_f32(v72, v72);
        *(v235 + 4 * v17) = sqrtf(v73.f32[2] + vaddv_f32(*v73.f32));
      }

      if (v210 <= v71)
      {
        goto LABEL_146;
      }

      ++v17;
      v71 = *(a3 + 4 * v71);
      if (a2 == v17)
      {
        goto LABEL_52;
      }
    }

LABEL_141:
    re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v71, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v180, v195);
    __break(1u);
LABEL_142:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v17;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v136, &v241, &v247, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_146:
    re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v71, v27);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v181, v196);
    __break(1u);
    goto LABEL_147;
  }

LABEL_52:
  v207 = TwistAngle;
  v208 = v20;
  v74 = (v220[7])(&v220, 0);
  v75 = (v220[6])(&v220);
  v76 = (v220[7])(&v220, (v75 - 1));
  v77 = (v220[15])(&v220, v74);
  v21 = v237;
  if (v237 <= a7)
  {
    goto LABEL_191;
  }

  v79 = (v238 + 16 * a7);
  *v79 = v77;
  v79[1] = v78;
  v18 = (a7 - 1);
  v80 = v210;
  if (a7 - 1 < 0)
  {
    goto LABEL_91;
  }

  v21 = &v220;
  v211 = v19;
  v213 = v76;
LABEL_55:
  v17 = v237;
  if (v237 <= a7)
  {
    goto LABEL_148;
  }

  v17 = v234;
  if (v234 <= a7)
  {
    goto LABEL_152;
  }

  v81 = 0;
  v82 = v238;
  v83 = *(v235 + 4 * a7) * *(v235 + 4 * a7);
  v84 = 15;
  v85 = 3.4028e38;
  v86 = v74;
  v87 = 3.4028e38;
  while (1)
  {
    v88 = (v86 + v76) * 0.5;
    v89.i64[0] = (v220[15])(&v220, v88);
    v89.i64[1] = v78;
    v90 = vsubq_f32(v89, *(v82 + 16 * a7));
    v91 = vmulq_f32(v90, v90);
    v92.n128_f32[0] = vaddv_f32(*v91.f32);
    v93 = (v91.f32[2] + v92.n128_f32[0]) - v83;
    v94 = vabds_f32(v91.f32[2] + v92.n128_f32[0], v83);
    if (v94 < 0.75)
    {
      if (v81 >= 1)
      {
        goto LABEL_72;
      }

      v81 = 1;
      v85 = v87;
      v76 = (v86 + v76) * 0.5;
      v86 = v74;
      goto LABEL_71;
    }

    if (v93 >= 0.0)
    {
      v76 = (v86 + v76) * 0.5;
      goto LABEL_71;
    }

    if (!v81 || v88 <= v85)
    {
      break;
    }

    v81 = 1;
    v86 = v76;
LABEL_71:
    if (!--v84)
    {
LABEL_72:
      if (v94 >= v211)
      {
        v215 = v89;
        v95 = v93 * v93;
        v96 = 5;
        v76 = v213;
        while (1)
        {
          v218 = v90;
          v97.i64[0] = (v220[16])(&v220, 1, v88);
          v97.i64[1] = v78;
          v92 = v218;
          v98 = vmulq_f32(v218, v97);
          v92.n128_f32[0] = vaddv_f32(*v98.f32);
          v99 = (v98.f32[2] + v92.n128_f32[0]) + (v98.f32[2] + v92.n128_f32[0]);
          v92.n128_f32[0] = fabsf(v99);
          if (v92.n128_f32[0] < 0.01)
          {
            goto LABEL_87;
          }

          v100 = v93 / v99;
          v101 = v88 - v100;
          v102 = (v88 - v100) >= v74 && v101 <= v213;
          if (!v102)
          {
            goto LABEL_87;
          }

          v103.i64[0] = (v220[15])(&v220, v88 - v100);
          v103.i64[1] = v78;
          v90 = vsubq_f32(v103, *(v82 + 16 * a7));
          v92 = vmulq_f32(v90, v90);
          v93 = (v92.n128_f32[2] + vaddv_f32(v92.n128_u64[0])) - v83;
          v92.n128_f32[0] = v93 * v93;
          if ((v93 * v93) >= v95)
          {
            goto LABEL_87;
          }

          if (fabsf(v93) < v211)
          {
            break;
          }

          v215 = v103;
          v88 = v101;
          v95 = v93 * v93;
          if (!--v96)
          {
            goto LABEL_87;
          }
        }

        v74 = v101;
        v89 = v103;
      }

      else
      {
        v74 = v88;
        v76 = v213;
      }

LABEL_88:
      v17 = v18;
      v11 = v237;
      if (v237 <= v18)
      {
        goto LABEL_156;
      }

      *(v238 + 16 * v18) = v89;
      --a7;
      v102 = v18 <= 0;
      v18 = (v18 - 1);
      if (v102)
      {
        goto LABEL_91;
      }

      goto LABEL_55;
    }
  }

  v87 = fminf(v88, v87);
  if (v81)
  {
    v81 = 1;
LABEL_70:
    v86 = (v86 + v76) * 0.5;
    goto LABEL_71;
  }

  v92.n128_f32[0] = v213 - v88;
  if ((v213 - v88) >= 0.01)
  {
    v81 = 0;
    goto LABEL_70;
  }

  v215 = 0u;
  v88 = 3.4028e38;
  v76 = v213;
LABEL_87:
  v74 = v88;
  v89 = v215;
  if (v88 <= v76)
  {
    goto LABEL_88;
  }

  v17 = (v220[16])(&v220, 1, v76, v92);
  v21 = v112;
  v113 = (v220[15])(&v220, v76);
  v11 = v237;
  if (v237 <= a7)
  {
    goto LABEL_199;
  }

  v11 = v234;
  v80 = v210;
  if (v234 <= a7)
  {
    goto LABEL_203;
  }

  v114.i64[0] = v17;
  v114.i64[1] = v21;
  v115 = vmulq_f32(v114, v114);
  *&v116 = v115.f32[2] + vaddv_f32(*v115.f32);
  *v115.f32 = vrsqrte_f32(v116);
  *v115.f32 = vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32)));
  v117 = vmulq_n_f32(v114, vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32))).f32[0]);
  v118.i64[0] = v113;
  v118.i64[1] = v78;
  v119 = vsubq_f32(v118, *(v238 + 16 * a7));
  v120 = vmulq_f32(v117, v119);
  v121 = v120.f32[2] + vaddv_f32(*v120.f32);
  v122 = vmulq_f32(v119, v119);
  v123 = -(((v122.f32[2] + vaddv_f32(*v122.f32)) - (*(v235 + 4 * a7) * *(v235 + 4 * a7))) - (v121 * v121));
  if (v123 < 0.0)
  {
    v109 = 0;
    v110 = 0;
    goto LABEL_103;
  }

  *(v238 + 16 * v18) = vaddq_f32(vmulq_n_f32(v117, sqrtf(v123) - v121), v118);
  if (v18)
  {
    while (1)
    {
      v21 = (a7 - 1);
      v17 = v237;
      if (v237 <= v21)
      {
        break;
      }

      v11 = v234;
      if (v234 <= v21)
      {
        goto LABEL_176;
      }

      a7 = (a7 - 2);
      if (v237 <= a7)
      {
        goto LABEL_180;
      }

      *(v238 + 16 * a7) = vaddq_f32(*(v238 + 16 * v21), vmulq_n_f32(v117, *(v235 + 4 * v21)));
      a7 = v21;
      if (v21 <= 1)
      {
        goto LABEL_91;
      }
    }

LABEL_172:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v21;
    v245 = 2048;
    v246 = v17;
    _os_log_send_and_compose_impl(v157, &v241, &v247, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_176:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = v21;
    v245 = 2048;
    v246 = v11;
    _os_log_send_and_compose_impl(v160, &v241, &v247, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_180:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v17;
    _os_log_send_and_compose_impl(v163, &v241, &v247, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_184:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v183, v198);
    __break(1u);
    goto LABEL_185;
  }

LABEL_91:
  v104 = v209;
  if (v80 <= v209)
  {
    goto LABEL_195;
  }

  if (a2 <= v209)
  {
LABEL_196:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v104, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v187, v202);
    __break(1u);
    goto LABEL_197;
  }

  v17 = *(a3 + 4 * v209);
  v105 = *(a1 + (v209 << 6) + 48);
  if (a2 >= 3)
  {
    v106 = v208;
    v107 = (v207 - v208) / (a2 - 2);
    v108 = a2 - 1;
LABEL_97:
    v11 = 0;
    v18 = -v108;
    a7 = 1;
    while (a2 > v17)
    {
      v21 = v237;
      if (v237 <= a7)
      {
        goto LABEL_121;
      }

      v21 = a1 + (v17 << 6);
      v219 = *(v21 + 48);
      *v21 = v247;
      *(v21 + 16) = v248;
      *(v21 + 32) = v249;
      *(v21 + 48) = v250;
      if (v80 <= v17)
      {
        goto LABEL_125;
      }

      v17 = *(a3 + 4 * v17);
      v106 = v107 + v106;
      v11 += 16;
      ++a7;
      v105 = v219;
      if (v18 + a7 == 1)
      {
        goto LABEL_102;
      }
    }

    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v175, v190);
    __break(1u);
LABEL_121:
    v241 = 0;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v80 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v242 = 136315906;
    *&v242[4] = "operator[]";
    *&v242[12] = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v242[14] = 468;
    v243 = 2048;
    v244 = a7;
    v245 = 2048;
    v246 = v21;
    _os_log_send_and_compose_impl(v125, &v241, &v247, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v242, 38, v205, v206);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v80);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v176, v191);
    __break(1u);
LABEL_126:
    re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v177, v192);
    __break(1u);
    goto LABEL_127;
  }

  v108 = a2 - 1;
  v106 = v208;
  if (a2 != 1)
  {
    v107 = 0.0;
    goto LABEL_97;
  }

LABEL_102:
  v109 = v234 == 0;
  v110 = 1;
LABEL_103:
  if (v233 && !v109)
  {
    (*(*v233 + 40))();
  }

  if (v236 && v237)
  {
    (*(*v236 + 40))();
  }

  re::Allocator::~Allocator(v239);
  re::Spline<re::Vector3<float>>::~Spline(&v220);
  return v110;
}