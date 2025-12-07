uint64_t re::getSemanticPriority(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1E306A2E8[a1];
  }
}

double re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 56;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::DynamicString::deinit((a1 + 8));
    v3 = *(a1 + 40);
  }
}

uint64_t re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 328 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 328 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 328 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 320) = a3;
  ++*(a1 + 28);
  return v7 + 328 * v5;
}

void re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<re::DynamicString,re::USKTextureProvider,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 320) % *(v4 + 24), *(v7 + v5 + 320));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 24) = 0u;
        *(v8 + 8) = 0u;
        *(v8 + 32) = v9[4];
        v10 = v9[2];
        *(v8 + 8) = v9[1];
        v9[1] = 0;
        v11 = v9[3];
        v9[4] = 0;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        *(v8 + 16) = v10;
        *(v8 + 24) = v11;
        v9[2] = v13;
        v9[3] = v12;
        v14 = (*(a2 + 16) + v5);
        result = re::TextureProvider::TextureProvider(v8 + 40, (v14 + 5));
        *(v8 + 288) = 0u;
        *(v8 + 304) = 0u;
        *(v8 + 312) = v14[39];
        v15 = v14[37];
        *(v8 + 288) = v14[36];
        v14[36] = 0;
        v16 = v14[38];
        v14[39] = 0;
        v18 = *(v8 + 296);
        v17 = *(v8 + 304);
        *(v8 + 296) = v15;
        *(v8 + 304) = v16;
        v14[37] = v18;
        v14[38] = v17;
        *(v8 + 40) = &unk_1F5D0B5C8;
        v2 = *(a2 + 32);
      }

      v5 += 328;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<USKNode * {__strong}>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

re::USDImportContext *re::USDImportContext::USDImportContext(re::USDImportContext *this)
{
  *this = 0;
  *(this + 1) = 0xFF7FFFFF7F7FFFFFLL;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 1;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0u;
  *(this + 18) = 1;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 44) = 1;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 184) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 252) = 0x7FFFFFFFLL;
  *(this + 264) = 0u;
  *(this + 70) = 1;
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 18) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 356) = 0x7FFFFFFFLL;
  *(this + 23) = 0u;
  *(this + 96) = 1;
  *(this + 392) = 0u;
  *(this + 104) = 0;
  *(this + 51) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  *(this + 460) = 0x7FFFFFFFLL;
  *(this + 126) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 520) = 0u;
  *(this + 134) = 1;
  *(this + 34) = 0u;
  *(this + 142) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 0;
  *(this + 612) = 0x7FFFFFFFLL;
  *(this + 39) = 0u;
  *(this + 160) = 1;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 680) = 0u;
  *(this + 174) = 1;
  *(this + 182) = 0;
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 192) = 0;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 772) = 0x7FFFFFFFLL;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  re::DynamicString::setCapacity(this + 98, 0);
  *(this + 210) = 0;
  *(this + 104) = 0;
  *(this + 51) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 876) = 0u;
  *(this + 892) = 0x7FFFFFFFLL;
  return this;
}

void re::loadUSKSkeletalAnimationNodes(void *a1, uint64_t a2)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 type];
  v5 = *MEMORY[0x1E69DEE78];

  if (v4 != v5)
  {
    goto LABEL_2;
  }

  re::importSkeletalAnimation(v3, *(a2 + 32), &v33, *a2);
  if (v33)
  {
    v14 = [v3 name];
    v15 = [v14 stringValue];
    v16 = [v15 UTF8String];

    if (!v16 || !*v16)
    {
      v16 = "(UnnamedAnimation)";
    }

    v17 = [v3 path];
    v18 = [v17 stringValue];
    v19 = [v18 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v30 = 0;
    v31 = &str_67;
    re::USDImportContext::addSkeletalAnimation(a2, buf, &v30, &v34);
    if (v30)
    {
      if (v30)
      {
      }
    }

    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    goto LABEL_19;
  }

  v22 = *re::pipelineLogObjects(v13);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v26 = v22;
    v17 = [v3 path];
    v27 = [v17 stringValue];
    v28 = [v27 UTF8String];
    if (v36)
    {
      v29 = v38;
    }

    else
    {
      v29 = v37;
    }

    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = v29;
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Skeletal Animation (%s) import error: %s.", buf, 0x16u);

LABEL_19:
  }

  if (v33 != 1)
  {
    v25 = v35;
    if (!v35 || (v36 & 1) == 0)
    {
      goto LABEL_2;
    }

    v24 = v38;
LABEL_32:
    (*(*v25 + 40))(v25, v24);
    goto LABEL_2;
  }

  re::DynamicArray<re::StringID>::deinit(v43);
  re::AssetHandle::~AssetHandle(&v42);
  v34 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v41);
  v34 = &unk_1F5CC3608;
  v23 = v39;
  if (v39)
  {
    if (BYTE8(v39))
    {
      v23 = (*(*v39 + 40))();
    }

    v39 = 0u;
    v40 = 0u;
  }

  if (v36)
  {
    if (v36)
    {
      v24 = v38;
      goto LABEL_32;
    }
  }

LABEL_2:
  v6 = [v3 childIterator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [v3 metadataWithKey:@"kind"];
      v10 = [v9 stringValue];
      v11 = [v10 isEqual:@"sceneLibrary"];

      if ((v11 & 1) == 0)
      {
        re::loadUSKSkeletalAnimationNodes(v8, a2);
      }

      v12 = [v6 nextObject];

      v8 = v12;
    }

    while (v12);
  }
}

void re::loadUSKSkeletonNodes(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 type];
  v5 = *MEMORY[0x1E69DEE80];

  if (v4 != v5)
  {
    goto LABEL_2;
  }

  re::importSkeleton(v3, &v27);
  if (v27)
  {
    v14 = [v3 path];
    v15 = [v14 stringValue];
    v16 = [v15 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v17 = re::USDImportContext::addSkeleton(a2, buf, v28);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    goto LABEL_13;
  }

  v18 = *re::pipelineLogObjects(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v23 = v18;
    v14 = [v3 path];
    v24 = [v14 stringValue];
    v25 = [v24 UTF8String];
    if (v30)
    {
      v26 = v32;
    }

    else
    {
      v26 = v31;
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Skeleton (%s) import error: %s.", buf, 0x16u);

LABEL_13:
  }

  if (v27 != 1)
  {
    v22 = v29;
    if (!v29 || (v30 & 1) == 0)
    {
      goto LABEL_2;
    }

    v21 = v32;
LABEL_34:
    (*(*v22 + 40))(v22, v21);
    goto LABEL_2;
  }

  v19.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v42);
  if (v39)
  {
    if (v40)
    {
      (*(*v39 + 40))(v19.n128_f64[0]);
      v40 = 0;
      v41 = 0;
    }

    v39 = 0;
  }

  if (v36)
  {
    if (v37)
    {
      (*(*v36 + 40))(v19);
      v37 = 0;
      v38 = 0;
    }

    v36 = 0;
  }

  if (v33)
  {
    if (v34)
    {
      (*(*v33 + 40))(v19);
      v34 = 0;
      v35 = 0;
    }

    v33 = 0;
  }

  v20 = re::FixedArray<re::StringID>::deinit(&v29);
  if (v28[0])
  {
    if (v28[0])
    {
      v21 = v28[1];
      goto LABEL_34;
    }
  }

LABEL_2:
  v6 = [v3 childIterator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [v3 metadataWithKey:@"kind"];
      v10 = [v9 stringValue];
      v11 = [v10 isEqual:@"sceneLibrary"];

      if ((v11 & 1) == 0)
      {
        re::loadUSKSkeletonNodes(v8, a2);
      }

      v12 = [v6 nextObject];

      v8 = v12;
    }

    while (v12);
  }
}

void re::loadUSKBlendShapeNodes(void *a1, uint64_t a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [v4 type];
  v6 = *MEMORY[0x1E69DEE40];

  if (v5 == v6)
  {
    v118 = 0;
    v119 = &str_67;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
    v7 = [v4 name];
    v8 = [v7 stringValue];
    v9 = [v8 UTF8String];

    if (v116)
    {
      v11 = *&v117[7];
    }

    else
    {
      v11 = v117;
    }

    *buf = 0;
    *&buf[8] = &str_67;
    v13 = *buf;
    v14 = *&buf[8];
    *buf = 0;
    *&buf[8] = &str_67;
    v15 = v118;
    v16 = v119;
    v118 = v13;
    v119 = v14;
    if (v15)
    {
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }
    }

    v18 = [v4 property:@"normalOffsets"];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 data];
      v21 = [v20 dataNoCopy];
      v22 = [v21 length];
      v23 = 3 * [v20 arraySize];

      if (v22 == 4 * v23)
      {
        v25 = [v20 dataNoCopy];
        v26 = [v25 bytes];
        v27 = 3 * [v20 arraySize];

        if (v27 >= 3)
        {
          v30 = 0;
          v31 = v122;
          if (v27 / 3 <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v27 / 3;
          }

          v33 = (*(&v122 + 1) + 4);
          v34 = (v26 + 4);
          v35 = 2;
          do
          {
            v36 = v35 - 2;
            if (v27 <= v35 - 2)
            {
              goto LABEL_82;
            }

            v37 = v35 - 1;
            if (v27 <= v35 - 1)
            {
              goto LABEL_83;
            }

            if (v27 <= v35)
            {
              goto LABEL_84;
            }

            if (v31 == v30)
            {
              goto LABEL_85;
            }

            v38 = *v34;
            v39 = v34[1];
            ++v30;
            *(v33 - 1) = *(v34 - 1);
            *v33 = v38;
            v33[1] = v39;
            v35 += 3;
            v33 += 3;
            v34 += 3;
          }

          while (v32 != v30);
        }
      }

      else
      {
        v40 = *re::pipelineLogObjects(v24);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v86 = v40;
          v87 = [v20 arraySize];
          *buf = 134217984;
          *&buf[4] = v87;
          _os_log_error_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }
    }

    v41 = [v4 property:@"offsets"];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 data];
      v44 = [v43 dataNoCopy];
      v45 = [v44 length];
      v46 = 3 * [v43 arraySize];

      if (v45 == 4 * v46)
      {
        v48 = [v43 dataNoCopy];
        v49 = [v48 bytes];
        v31 = 3 * [v43 arraySize];

        if (v31 >= 3)
        {
          v52 = 0;
          v2 = *(&v120 + 1);
          if (v31 / 3 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = v31 / 3;
          }

          v54 = (v121 + 4);
          v55 = (v49 + 4);
          v56 = 2;
          do
          {
            v57 = v56 - 2;
            if (v31 <= v56 - 2)
            {
              goto LABEL_89;
            }

            v58 = v56 - 1;
            if (v31 <= v56 - 1)
            {
              goto LABEL_90;
            }

            if (v31 <= v56)
            {
              goto LABEL_91;
            }

            if (v2 == v52)
            {
              goto LABEL_92;
            }

            v59 = *v55;
            v60 = v55[1];
            ++v52;
            *(v54 - 1) = *(v55 - 1);
            *v54 = v59;
            v54[1] = v60;
            v56 += 3;
            v54 += 3;
            v55 += 3;
          }

          while (v53 != v52);
        }
      }

      else
      {
        v61 = *re::pipelineLogObjects(v47);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v88 = v61;
          v89 = [v43 arraySize];
          *buf = 134217984;
          *&buf[4] = v89;
          _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }
    }

    v62 = [v4 property:@"pointIndices"];
    v63 = v62;
    if (v62)
    {
      v64 = [v62 data];
      v65 = [v64 dataNoCopy];
      v66 = [v65 length];
      v67 = [v64 arraySize];

      if (v66 == 4 * v67)
      {
        v69 = [v64 dataNoCopy];
        v27 = [v69 bytes];
        v31 = [v64 arraySize];

        if (v31)
        {
          v71 = 0;
          v2 = *(&v123 + 1);
          v72 = v124;
          while (v2 != v71)
          {
            *(v72 + 4 * v71) = *(v27 + 4 * v71);
            if (v31 == ++v71)
            {
              goto LABEL_50;
            }
          }

          v125 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          *buf = 0u;
          v92 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v126 = 136315906;
          v127 = "operator[]";
          v128 = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          v129 = 468;
          v130 = 2048;
          v131 = v2;
          v132 = 2048;
          v133 = v2;
          _os_log_send_and_compose_impl(v94, &v125, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v113, v114);
          _os_crash_msg();
          __break(1u);
LABEL_82:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v27);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v101, v107);
          __break(1u);
LABEL_83:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v37, v27);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v102, v108);
          __break(1u);
LABEL_84:
          re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v27);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v103, v109);
          __break(1u);
LABEL_85:
          v125 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          *buf = 0u;
          v95 = MEMORY[0x1E69E9C10];
          v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v126 = 136315906;
          v127 = "operator[]";
          v128 = 1024;
          if (v96)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          v129 = 468;
          v130 = 2048;
          v131 = v31;
          v132 = 2048;
          v133 = v31;
          _os_log_send_and_compose_impl(v97, &v125, buf, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v113, v114);
          _os_crash_msg();
          __break(1u);
LABEL_89:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v57, v31);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v104, v110);
          __break(1u);
LABEL_90:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v58, v31);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v105, v111);
          __break(1u);
LABEL_91:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v31);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v106, v112);
          __break(1u);
LABEL_92:
          v125 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          *buf = 0u;
          v98 = MEMORY[0x1E69E9C10];
          v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v126 = 136315906;
          v127 = "operator[]";
          v128 = 1024;
          if (v99)
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          v129 = 468;
          v130 = 2048;
          v131 = v2;
          v132 = 2048;
          v133 = v2;
          _os_log_send_and_compose_impl(v100, &v125, buf, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v113, v114);
          _os_crash_msg();
          __break(1u);
        }
      }

      else
      {
        v73 = *re::pipelineLogObjects(v68);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v90 = v73;
          v91 = [v64 arraySize];
          *buf = 134217984;
          *&buf[4] = v91;
          _os_log_error_impl(&dword_1E1C61000, v90, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }

LABEL_50:
    }

    v74 = [v4 path];
    v75 = [v74 stringValue];
    v76 = [v75 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v77 = re::USDImportContext::addBlendShape(a2, buf, &v118);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;

    if (v115 && (v116 & 1) != 0)
    {
      (*(*v115 + 40))();
    }

    if (v123)
    {
      if (*(&v123 + 1))
      {
        (*(*v123 + 40))();
        *(&v123 + 1) = 0;
        v124 = 0;
      }

      *&v123 = 0;
    }

    if (*(&v121 + 1))
    {
      if (v122)
      {
        (*(**(&v121 + 1) + 40))();
        v122 = 0uLL;
      }

      *(&v121 + 1) = 0;
    }

    v78 = v120;
    if (v120)
    {
      if (*(&v120 + 1))
      {
        v78 = (*(*v120 + 40))();
        *(&v120 + 1) = 0;
        *&v121 = 0;
      }

      *&v120 = 0;
    }

    if (v118)
    {
      if (v118)
      {
      }
    }
  }

  v79 = [v4 childIterator];
  v80 = [v79 nextObject];
  if (v80)
  {
    v81 = v80;
    do
    {
      v82 = [v4 metadataWithKey:@"kind"];
      v83 = [v82 stringValue];
      v84 = [v83 isEqual:@"sceneLibrary"];

      if ((v84 & 1) == 0)
      {
        re::loadUSKBlendShapeNodes(v81, a2);
      }

      v85 = [v79 nextObject];

      v81 = v85;
    }

    while (v85);
  }
}

void re::loadUSKDeformerStackNodes(void *a1, void *a2, re::USDImportContext *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 typeName];
  v8 = [v7 stringValue];
  if ([v8 isEqualToString:@"Preliminary_DeformerStack"])
  {
  }

  else
  {
    v9 = [v6 typeName];
    v10 = [v9 stringValue];
    v11 = [v10 isEqualToString:@"DeformerStack"];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  v81 = 0;
  v82 = &str_67;
  v12 = [v6 properties];
  v13 = [v12 objectForKeyedSubscript:@"mesh"];

  if (v13)
  {
    v14 = [v6 property:@"mesh"];
    v15 = [v14 objectPath];
  }

  else
  {
    v68 = [v6 parent];
    if (!v68)
    {
      goto LABEL_7;
    }

    v69 = v68;
    v70 = [v6 parent];
    v71 = [v70 typeName];
    v72 = [v71 stringValue];
    v73 = [v72 isEqualToString:@"Mesh"];

    if (!v73)
    {
      goto LABEL_7;
    }

    v14 = [v6 parent];
    v15 = [v14 path];
  }

  v16 = v15;
  v17 = [v15 stringValue];
  v18 = [v17 UTF8String];
  v88 = 0;
  v89 = &str_67;
  v81 = v88;
  v82 = v89;
  v88 = 0;
  v89 = &str_67;

LABEL_7:
  v19 = re::USDImportContext::meshNodeItemIndex(a3, &v81, v79);
  if (v79[0] == 1)
  {
    v75 = a3;
    v20 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a3 + 624, v80);
    v74 = v6;
    v77 = [v6 childIterator];
    v21 = [v77 nextObject];
    if (v21)
    {
      v22 = v21;
      v76 = v5;
      do
      {
        v23 = v5;
        v24 = v22;
        v25 = [v24 typeName];
        v26 = [v25 stringValue];
        v78 = v24;
        if ([v26 isEqualToString:@"Preliminary_Deformer"])
        {
        }

        else
        {
          v27 = [v24 typeName];
          v28 = [v27 stringValue];
          v29 = [v28 isEqualToString:@"Deformer"];

          v24 = v78;
          if (!v29)
          {
            goto LABEL_39;
          }
        }

        v88 = 0;
        v89 = &str_67;
        v90 = 0;
        v91 = &str_67;
        memset(v92, 0, sizeof(v92));
        v93 = 0;
        v94 = 0u;
        v95 = 0u;
        v96 = 0;
        v98 = 0;
        v99 = 0;
        v97 = 0;
        v102 = 0;
        v103 = 0;
        v101 = 0;
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v100 = 1;
        v107 = 1;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v108 = 0;
        v112 = 0;
        v113 = 0;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v115 = 0;
        v119 = 0;
        v120 = 0;
        v114 = 1;
        v121 = 1;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v122 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 1;
        v129 = 0;
        v130 = 0;
        v132 = 0;
        v131 = 0;
        v133 = 0;
        v134 = 0;
        v135 = 1;
        v136 = 0;
        v137 = 0;
        v139 = 0;
        v138 = 0;
        v30 = [v24 name];
        v31 = [v30 stringValue];
        v32 = [v31 UTF8String];
        v83 = 0;
        v84 = &str_67;
        v34 = v83;
        v35 = v84;
        v83 = 0;
        v84 = &str_67;
        v36 = v88;
        v37 = v89;
        v88 = v34;
        v89 = v35;
        if (v36)
        {
          if (v83)
          {
            if (v83)
            {
            }
          }
        }

        v83 = 0;
        v84 = &str_67;

        v39 = [v78 property:@"info:id"];
        v40 = [v39 stringValue];
        v41 = [v40 UTF8String];
        v83 = 0;
        v84 = &str_67;
        v43 = v83;
        v44 = v84;
        v83 = 0;
        v84 = &str_67;
        v45 = v90;
        v46 = v91;
        v90 = v43;
        v91 = v44;
        if (v45)
        {
          if (v83)
          {
            if (v83)
            {
            }
          }
        }

        v83 = 0;
        v84 = &str_67;

        re::loadUSKDeformerAttributes(v23, v78, &v88, v92, v20);
        v48 = [v78 childIterator];
        v49 = [v48 nextObject];
        if (v49)
        {
          while (1)
          {
            v50 = [v49 typeName];
            v51 = [v50 stringValue];
            if ([v51 isEqualToString:@"Preliminary_DeformerAffector"])
            {
              break;
            }

            v52 = [v49 typeName];
            v53 = [v52 stringValue];
            v54 = [v53 isEqualToString:@"DeformerAffector"];

            if (v54)
            {
              goto LABEL_25;
            }

LABEL_37:
            v63 = [v48 nextObject];

            v49 = v63;
            if (!v63)
            {
              goto LABEL_38;
            }
          }

LABEL_25:
          v87 = 0;
          v84 = 0;
          v85 = 0;
          v83 = 0;
          v86 = 0;
          re::loadUSKDeformerAttributes(v23, v49, &v88, &v83, v20);
          v56 = *(&v95 + 1);
          if (*(&v95 + 1) >= v95)
          {
            v57 = *(&v95 + 1) + 1;
            if (v95 < *(&v95 + 1) + 1)
            {
              if (*(&v94 + 1))
              {
                v58 = 8;
                if (v95)
                {
                  v58 = 2 * v95;
                }

                if (v58 <= v57)
                {
                  v59 = *(&v95 + 1) + 1;
                }

                else
                {
                  v59 = v58;
                }

                re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(&v94 + 1, v59);
              }

              else
              {
                re::DynamicArray<re::GeomDeformer::Affector>::setCapacity(&v94 + 1, v57);
                ++v96;
              }
            }

            v56 = *(&v95 + 1);
          }

          v60 = v97 + 40 * v56;
          *(v60 + 32) = 0;
          *(v60 + 8) = 0;
          *(v60 + 16) = 0;
          *v60 = 0;
          *(v60 + 24) = 0;
          *v60 = v83;
          v83 = 0;
          *(v60 + 8) = v84;
          v84 = 0;
          v61 = *(v60 + 16);
          *(v60 + 16) = v85;
          v85 = v61;
          v62 = *(v60 + 32);
          *(v60 + 32) = v87;
          v87 = v62;
          ++v86;
          ++*(v60 + 24);
          ++*(&v95 + 1);
          ++v96;
          re::DynamicArray<re::GeomDeformer::Attribute>::deinit(&v83);
          goto LABEL_37;
        }

LABEL_38:
        re::DynamicArray<re::GeomDeformer>::add((v20 + 1024), &v88);

        re::GeomDeformer::~GeomDeformer(&v88);
        v5 = v76;
        v24 = v78;
LABEL_39:

        v22 = [v77 nextObject];
      }

      while (v22);
    }

    v6 = v74;
    a3 = v75;
  }

  if (v81)
  {
    if (v81)
    {
    }
  }

LABEL_44:
  v64 = [v6 childIterator];
  v65 = [v64 nextObject];
  if (v65)
  {
    v66 = v65;
    do
    {
      re::loadUSKDeformerStackNodes(v5, v66, a3);
      v67 = [v64 nextObject];

      v66 = v67;
    }

    while (v67);
  }
}

void re::loadUSKPhysicsNodes(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!re::hasColliderAPI(v3))
  {
    goto LABEL_13;
  }

  re::importPhysicsCollider(v3, &v42);
  if (v42.i8[0])
  {
    v5 = [v3 path];
    v6 = [v5 stringValue];
    v7 = [v6 UTF8String];
    *buf = 0;
    *&buf[8] = &str_67;
    v8 = v43;
    IsSceneGroundPlane = re::importPhysicsIsSceneGroundPlane(v3);
    v10 = re::importPhysicsCollidesWithEnvironment(v3);
    re::USDImportContext::addPhysicsCollider(a2, buf, v8, &v44, IsSceneGroundPlane, v10);
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *buf = 0;
    *&buf[8] = &str_67;
  }

  else
  {
    v12 = *re::pipelineLogObjects(v4);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v34 = v12;
    v5 = [v3 path];
    v35 = [v5 stringValue];
    v36 = [v35 UTF8String];
    if (BYTE8(v44))
    {
      v37 = v45;
    }

    else
    {
      v37 = &v44 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = v37;
    _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "Physics collider (%s) import error: %s.", buf, 0x16u);
  }

LABEL_9:
  if (v42.i8[0] & 1) == 0 && v44 && (BYTE8(v44))
  {
    (*(*v44 + 40))();
  }

LABEL_13:
  v13 = v3;
  if (re::isRootNodeByPath(v13))
  {

    goto LABEL_34;
  }

  v14 = [v13 property:@"preliminary:physics:rigidBody:mass"];

  if (v14)
  {
    re::importPhysicsRigidBody(v13, &v42);
    if (v42.i8[0])
    {
      hasColliderAPI = re::hasColliderAPI(v13);
      if (!hasColliderAPI)
      {
        v26 = *re::pipelineLogObjects(hasColliderAPI);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v38 = v26;
          v39 = [v13 path];
          v40 = [v39 stringValue];
          v41 = [v40 UTF8String];
          *buf = 136315394;
          *&buf[4] = v41;
          *&buf[12] = 2080;
          *&buf[14] = "Rigid body is required to have a collider associated to it.";
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "Physics rigid body (%s) import error: %s.", buf, 0x16u);
        }

        goto LABEL_30;
      }

      v17 = [v13 path];
      v18 = [v17 stringValue];
      v19 = [v18 UTF8String];
      *buf = 0;
      *&buf[8] = &str_67;
      re::USDImportContext::addPhysicsRigidBody(a2, buf, &v43);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = 0;
      *&buf[8] = &str_67;
    }

    else
    {
      v21 = *re::pipelineLogObjects(v15);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v22 = v21;
      v17 = [v13 path];
      v23 = [v17 stringValue];
      v24 = [v23 UTF8String];
      if (BYTE8(v44))
      {
        v25 = v45;
      }

      else
      {
        v25 = &v44 + 9;
      }

      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Physics rigid body (%s) import error: %s.", buf, 0x16u);
    }

LABEL_30:
    if (v42.i8[0] & 1) == 0 && v44 && (BYTE8(v44))
    {
      (*(*v44 + 40))();
    }
  }

LABEL_34:
  v27 = [v13 childIterator];
  v28 = [v27 nextObject];
  if (v28)
  {
    v29 = v28;
    do
    {
      v30 = [v13 metadataWithKey:@"kind"];
      v31 = [v30 stringValue];
      v32 = [v31 isEqual:@"sceneLibrary"];

      if ((v32 & 1) == 0)
      {
        re::loadUSKPhysicsNodes(v29, a2);
      }

      v33 = [v27 nextObject];

      v29 = v33;
    }

    while (v33);
  }
}

void re::loadUSKDeformerAttributes(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v242 = *MEMORY[0x1E69E9840];
  v214 = a1;
  v213 = a2;
  v9 = [v213 propertyList];
  v10 = [v9 nextObject];
  if (v10)
  {
    v12 = v10;
    v13 = *MEMORY[0x1E69DEDF0];
    v217 = *MEMORY[0x1E69DED90];
    v215 = *MEMORY[0x1E69DEDB8];
    v211 = *MEMORY[0x1E69DEDF8];
    v209 = *MEMORY[0x1E69DEDD0];
    v207 = *MEMORY[0x1E69DEDE8];
    v206 = *MEMORY[0x1E69DEE00];
    v205 = *MEMORY[0x1E69DEE20];
    v204 = *MEMORY[0x1E69DEE18];
    *&v11 = 136315394;
    v218 = v11;
    v202 = *MEMORY[0x1E69DEDE0];
    v203 = *MEMORY[0x1E69DEDA8];
    v210 = v9;
    v212 = *MEMORY[0x1E69DEDF0];
    while (1)
    {
      v14 = [v12 name];
      v15 = [v14 stringValue];
      v16 = [v15 containsString:@"info:"];

      if ((v16 & 1) == 0)
      {
        break;
      }

LABEL_76:
      v117 = [v9 nextObject];

      v12 = v117;
      if (!v117)
      {
        goto LABEL_110;
      }
    }

    v17 = [v12 name];
    v18 = [v17 stringValue];
    v19 = [v18 UTF8String];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v20 = buf[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;

    v21 = [v12 type];
    LODWORD(v18) = [v21 isEqualToString:v13];

    if (v18)
    {
      v22 = [v12 intValue];
      v23 = v218;
      LODWORD(v23) = v22;
      v5 = 1;
LABEL_6:
      v6 = 1;
LABEL_63:
      v109 = *(a4 + 8);
      v110 = *(a4 + 16);
      v218 = v23;
      if (v110 >= v109)
      {
        v111 = v110 + 1;
        if (v109 < v110 + 1)
        {
          if (*a4)
          {
            v112 = 2 * v109;
            v113 = v109 == 0;
            v114 = 8;
            if (!v113)
            {
              v114 = v112;
            }

            if (v114 <= v111)
            {
              v115 = v111;
            }

            else
            {
              v115 = v114;
            }

            re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a4, v115);
          }

          else
          {
            re::DynamicArray<re::GeomDeformer::Attribute>::setCapacity(a4, v111);
            ++*(a4 + 24);
          }

          *&v23 = v218;
        }

        v110 = *(a4 + 16);
      }

      v116 = *(a4 + 32) + 40 * v110;
      *v116 = v6;
      *(v116 + 8) = v20;
      *(v116 + 24) = v5;
      *(v116 + 32) = v23;
      ++*(a4 + 16);
      ++*(a4 + 24);
      goto LABEL_76;
    }

    v24 = [v12 type];
    v25 = [v24 isEqualToString:v217];

    if (v25)
    {
      v22 = [v12 BOOLValue];
      v23 = v218;
      LODWORD(v23) = v22;
      v6 = 1;
      v5 = 1;
      goto LABEL_63;
    }

    v26 = [v12 type];
    v27 = [v26 isEqualToString:v215];

    if (v27)
    {
      v22 = [v12 floatValue];
      v5 = 0;
      v28 = v218;
      LODWORD(v28) = v29;
      v23 = v28;
      goto LABEL_6;
    }

    v30 = [v12 type];
    v31 = [v30 isEqualToString:v211];

    if (v31)
    {
      *&v32 = *(a3 + 152);
      v218 = v32;
      v33 = [v12 data];
      v34 = [v33 dataNoCopy];
      v35 = [v34 bytes];

      v36 = [v33 dataNoCopy];
      v37 = [v36 length];
      v38 = [v33 arraySize];

      if (v37 == 4 * v38)
      {
        v40 = v35;
        v41 = [v33 arraySize];
        v221.var1 = 0;
        *&v222 = 0;
        *&v221.var0 = 0;
        v43 = *(a3 + 152);
        v5 = *(a3 + 120);
        if (v43 + 1 > 8 * v5)
        {
          re::BucketArray<re::FixedArray<int>,8ul>::setBucketsCapacity((a3 + 112), (v43 + 8) >> 3);
          v5 = *(a3 + 120);
        }

        v44 = v43 >> 3;
        v9 = v210;
        if (v5 <= v43 >> 3)
        {
          v226 = 0;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          memset(buf, 0, sizeof(buf));
          v178 = MEMORY[0x1E69E9C10];
          v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v234 = 136315906;
          v235 = "operator[]";
          v236 = 1024;
          if (v179)
          {
            v180 = 3;
          }

          else
          {
            v180 = 2;
          }

          v237 = 858;
          v238 = 2048;
          v239 = v43 >> 3;
          v240 = 2048;
          v241 = v5;
          _os_log_send_and_compose_impl(v180, &v226, buf, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v193, v194);
          _os_crash_msg();
          __break(1u);
LABEL_115:
          re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_116:
          v226 = 0;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          memset(buf, 0, sizeof(buf));
          v181 = MEMORY[0x1E69E9C10];
          v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v234 = 136315906;
          v235 = "operator[]";
          v236 = 1024;
          if (v182)
          {
            v183 = 3;
          }

          else
          {
            v183 = 2;
          }

          v237 = 858;
          v238 = 2048;
          v239 = v44;
          v240 = 2048;
          v241 = v5;
          _os_log_send_and_compose_impl(v183, &v226, buf, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v193, v194);
          _os_crash_msg();
          __break(1u);
LABEL_120:
          re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_121:
          *&v221.var0 = 0;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          memset(buf, 0, sizeof(buf));
          v184 = MEMORY[0x1E69E9C10];
          v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v234 = 136315906;
          v235 = "operator[]";
          v236 = 1024;
          if (v185)
          {
            v186 = 3;
          }

          else
          {
            v186 = 2;
          }

          v237 = 789;
          v238 = 2048;
          v239 = 0;
          v240 = 2048;
          v241 = 0;
          _os_log_send_and_compose_impl(v186, &v221, buf, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v193, v194);
          _os_crash_msg();
          __break(1u);
LABEL_125:
          v226 = 0;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          memset(buf, 0, sizeof(buf));
          v187 = MEMORY[0x1E69E9C10];
          v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v234 = 136315906;
          v235 = "operator[]";
          v236 = 1024;
          if (v188)
          {
            v189 = 3;
          }

          else
          {
            v189 = 2;
          }

          v237 = 858;
          v238 = 2048;
          v239 = v44;
          v240 = 2048;
          v241 = v5;
          _os_log_send_and_compose_impl(v189, &v226, buf, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v193, v194);
          _os_crash_msg();
          __break(1u);
LABEL_129:
          re::internal::assertLog(4, v94, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_130:
          v226 = 0;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          memset(buf, 0, sizeof(buf));
          v190 = MEMORY[0x1E69E9C10];
          v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v234 = 136315906;
          v235 = "operator[]";
          v236 = 1024;
          if (v191)
          {
            v192 = 3;
          }

          else
          {
            v192 = 2;
          }

          v237 = 858;
          v238 = 2048;
          v239 = v40;
          v240 = 2048;
          v241 = v44;
          _os_log_send_and_compose_impl(v192, &v226, buf, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v193, v194);
          _os_crash_msg();
          __break(1u);
        }

        v45 = *(a3 + 144);
        if (*(a3 + 128))
        {
          v45 = a3 + 136;
        }

        v46 = *(v45 + 8 * v44);
        ++*(a3 + 152);
        ++*(a3 + 160);
        v47 = (v46 + 24 * (v43 & 7));
        *v47 = 0;
        v47[1] = 0;
        v47[2] = 0;
        *v47 = *&v221.var0;
        *&v221.var0 = 0;
        v47[1] = v221.var1;
        v47[2] = v222;
        v48 = *(a3 + 152);
        if (!v48)
        {
          goto LABEL_115;
        }

        v49 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 112, v48 - 1) + 16);
        memcpy(v49, v40, 4 * [v33 arraySize]);
        v6 = [v33 arraySize];
        v13 = v212;
      }

      else
      {
        v67 = *re::pipelineLogObjects(v39);
        v9 = v210;
        v13 = v212;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v155 = v67;
          v156 = [v33 arraySize];
          LODWORD(buf[0].f64[0]) = 134217984;
          *(buf[0].f64 + 4) = v156;
          _os_log_error_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }
      }

      v5 = 2;
      goto LABEL_62;
    }

    v50 = [v12 type];
    v51 = [v50 isEqualToString:v209];

    if (v51)
    {
      *&v52 = *(a3 + 264);
      v218 = v52;
      v53 = [v12 data];
      v54 = [v53 dataNoCopy];
      v55 = [v54 bytes];

      v56 = [v53 dataNoCopy];
      v40 = [v56 length];
      v57 = 3 * [v53 arraySize];

      if (v40 == 4 * v57)
      {
        v59 = [v53 arraySize];
        v221.var1 = 0;
        *&v222 = 0;
        *&v221.var0 = 0;
        v61 = *(a3 + 264);
        v5 = *(a3 + 232);
        if (v61 + 1 > 8 * v5)
        {
          re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::setBucketsCapacity((a3 + 224), (v61 + 8) >> 3);
          v5 = *(a3 + 232);
        }

        v44 = v61 >> 3;
        v9 = v210;
        if (v5 <= v61 >> 3)
        {
          goto LABEL_116;
        }

        v62 = *(a3 + 256);
        if (*(a3 + 240))
        {
          v62 = a3 + 248;
        }

        v63 = *(v62 + 8 * v44);
        ++*(a3 + 264);
        ++*(a3 + 272);
        v64 = (v63 + 24 * (v61 & 7));
        *v64 = 0;
        v64[1] = 0;
        v64[2] = 0;
        *v64 = *&v221.var0;
        *&v221.var0 = 0;
        v64[1] = v221.var1;
        v64[2] = v222;
        v65 = *(a3 + 264);
        if (!v65)
        {
          goto LABEL_120;
        }

        v66 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 224, v65 - 1) + 16);
        memcpy(v66, v55, 12 * [v53 arraySize]);
        v6 = [v53 arraySize];
        v13 = v212;
      }

      else
      {
        v78 = *re::pipelineLogObjects(v58);
        v13 = v212;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v168 = v78;
          v169 = [v53 arraySize];
          LODWORD(buf[0].f64[0]) = 134217984;
          *(buf[0].f64 + 4) = v169;
          _os_log_error_impl(&dword_1E1C61000, v168, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
        }

        v9 = v210;
      }

      v5 = 4;
LABEL_62:
      v23 = v218;
      goto LABEL_63;
    }

    v68 = [v12 type];
    v69 = [v68 isEqualToString:v207];

    if (v69)
    {
      v70 = [v12 name];
      v71 = [v70 stringValue];
      v72 = [v71 componentsSeparatedByString:@":"];

      v198 = v72;
      v73 = [v72 objectAtIndexedSubscript:0];
      LODWORD(v71) = [v73 isEqualToString:@"primvars"];

      if (v71)
      {
        v75 = MEMORY[0x1E696AEC0];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a3 + 24)];
        v40 = [v12 name];
        v76 = [v40 stringValue];
        v77 = [v75 stringWithFormat:@"%@:%@", v44, v76];

        if (!*(a5 + 304))
        {
          goto LABEL_121;
        }

        re::addPropertyToGeomModelDescriptor(v12, 0, @"vertex", (**(a5 + 320) + 24), [v77 UTF8String], 0, v223);
        v9 = v210;
        v13 = v212;
        if ((v223[0] & 1) == 0 && v224)
        {
          if (BYTE8(v224))
          {
            (*(*v224 + 40))();
          }

          v225 = 0u;
          v224 = 0u;
        }
      }

      else
      {
        *&v74 = *(a3 + 208);
        v218 = v74;
        v77 = [v12 data];
        v87 = [v77 dataNoCopy];
        v88 = [v87 bytes];

        v89 = [v77 dataNoCopy];
        v90 = [v89 length];
        v91 = [v77 arraySize];

        if (v90 == 4 * v91)
        {
          v40 = v88;
          v93 = [v77 arraySize];
          v221.var1 = 0;
          *&v222 = 0;
          *&v221.var0 = 0;
          v95 = *(a3 + 208);
          v5 = *(a3 + 176);
          v9 = v210;
          if (v95 + 1 > 8 * v5)
          {
            re::BucketArray<re::FixedArray<float>,8ul>::setBucketsCapacity((a3 + 168), (v95 + 8) >> 3);
            v5 = *(a3 + 176);
          }

          v44 = v95 >> 3;
          if (v5 <= v95 >> 3)
          {
            goto LABEL_125;
          }

          v96 = *(a3 + 200);
          if (*(a3 + 184))
          {
            v96 = a3 + 192;
          }

          v97 = *(v96 + 8 * v44);
          ++*(a3 + 208);
          ++*(a3 + 216);
          v98 = (v97 + 24 * (v95 & 7));
          *v98 = 0;
          v98[1] = 0;
          v98[2] = 0;
          *v98 = *&v221.var0;
          *&v221.var0 = 0;
          v98[1] = v221.var1;
          v98[2] = v222;
          v99 = *(a3 + 208);
          if (!v99)
          {
            goto LABEL_129;
          }

          v100 = *(re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::operator[](a3 + 168, v99 - 1) + 16);
          memcpy(v100, v40, 4 * [v77 arraySize]);
          v6 = [v77 arraySize];
          v5 = 3;
          v13 = v212;
        }

        else
        {
          v108 = *re::pipelineLogObjects(v92);
          v9 = v210;
          v13 = v212;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            v176 = v108;
            v177 = [v77 arraySize];
            LODWORD(buf[0].f64[0]) = 134217984;
            *(buf[0].f64 + 4) = v177;
            _os_log_error_impl(&dword_1E1C61000, v176, OS_LOG_TYPE_ERROR, "Invalid array size (%lu)", buf, 0xCu);
          }

          v5 = 3;
        }
      }

      goto LABEL_62;
    }

    v79 = [v12 type];
    v80 = [v79 isEqualToString:v206];

    if (!v80)
    {
      v101 = [v12 type];
      v102 = [v101 isEqualToString:v205];

      if (v102)
      {
        *&v103 = *(a3 + 376);
        v219 = v103;
        v104 = [v12 stringValue];
        v105 = [v104 UTF8String];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        v106 = re::BucketArray<re::StringID,8ul>::addUninitialized(a3 + 336);
        v107 = LOBYTE(buf[0].f64[0]);
        *v106 = *v106 & 0xFFFFFFFFFFFFFFFELL | LOBYTE(buf[0].f64[0]) & 1;
        *v106 = *&buf[0].f64[0] & 0xFFFFFFFFFFFFFFFELL | v107 & 1;
        *(v106 + 8) = buf[0].f64[1];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;

        v23 = v219;
      }

      else
      {
        v118 = [v12 type];
        v119 = [v118 isEqualToString:v204];

        if (!v119)
        {
          v154 = [v12 type];
          if ([v154 isEqualToString:v203])
          {

            v13 = v212;
          }

          else
          {
            v164 = [v12 type];
            v165 = [v164 isEqualToString:v202];

            v13 = v212;
            if (!v165)
            {
              v170 = *re::pipelineLogObjects(v166);
              v153 = os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT);
              if (v153)
              {
                v171 = v170;
                v201 = [v12 name];
                v172 = [v201 stringValue];
                v173 = [v172 UTF8String];
                v174 = [v12 type];
                v175 = [v174 UTF8String];
                LODWORD(buf[0].f64[0]) = 136315394;
                *(buf[0].f64 + 4) = v173;
                v13 = v212;
                WORD2(buf[0].f64[1]) = 2080;
                *(&buf[0].f64[1] + 6) = v175;
                _os_log_impl(&dword_1E1C61000, v171, OS_LOG_TYPE_DEFAULT, "Deformer attribute [%s] has an invalid type [%s], skipping.", buf, 0x16u);
              }

              goto LABEL_91;
            }
          }

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          memset(buf, 0, sizeof(buf));
          objc_msgSend_double4x4Value(v12);
          *&v167 = *(a3 + 432);
          v220 = v167;
          v200 = vcvt_hight_f32_f64(vcvt_f32_f64(buf[0]), buf[1]);
          v197 = vcvt_hight_f32_f64(vcvt_f32_f64(v228), v229);
          v196 = vcvt_hight_f32_f64(vcvt_f32_f64(v230), v231);
          v195 = vcvt_hight_f32_f64(vcvt_f32_f64(v232), v233);
          v22 = re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(a3 + 392);
          v23 = v220;
          *v22 = v200;
          *(v22 + 1) = v197;
          *(v22 + 2) = v196;
          *(v22 + 3) = v195;
          v5 = 7;
          goto LABEL_6;
        }

        v120 = [v12 resourcePath];
        v121 = [v120 resolvedPath];
        re::StringID::StringID(buf, [v121 UTF8String]);
        v122 = re::BucketArray<re::StringID,8ul>::addUninitialized(a3 + 336);
        v123 = LOBYTE(buf[0].f64[0]);
        *v122 = *v122 & 0xFFFFFFFFFFFFFFFELL | LOBYTE(buf[0].f64[0]) & 1;
        *v122 = *&buf[0].f64[0] & 0xFFFFFFFFFFFFFFFELL | v123 & 1;
        *(v122 + 8) = buf[0].f64[1];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        re::StringID::destroyString(buf);

        *&v23 = *(a3 + 376);
      }

      v5 = 6;
      v6 = 1;
      v13 = v212;
      goto LABEL_63;
    }

    *&v81 = *(a3 + 320);
    v218 = v81;
    *&v222 = 0;
    *(&v222 + 1) = &str_67;
    v82 = [v12 objectPath];
    v83 = [v214 nodeAtPath:v82];

    if (!v83)
    {
      v124 = *re::pipelineLogObjects(v84);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v124;
        v126 = [v12 objectPath];
        v127 = [v126 stringValue];
        v128 = [v127 UTF8String];
        LODWORD(buf[0].f64[0]) = 136315138;
        *(buf[0].f64 + 4) = v128;
        v129 = v125;
        v130 = "Failed to find target at path: %s";
        goto LABEL_89;
      }

LABEL_90:

      v5 = 5;
      v13 = v212;
LABEL_91:
      if (LOBYTE(v20.f64[0]))
      {
      }

      goto LABEL_76;
    }

    v85 = [v83 typeName];
    v86 = [v85 stringValue];
    if ([v86 isEqualToString:@"Preliminary_Deformer"])
    {
    }

    else
    {
      v131 = [v83 typeName];
      v132 = [v131 stringValue];
      v133 = [v132 isEqualToString:@"Deformer"];

      v134 = a3;
      if (!v133)
      {
        v199 = v83;
        v157 = [v83 path];
        v158 = [v157 stringValue];
        re::StringID::StringID(buf, [v158 UTF8String]);
        v159 = buf[0].f64[1];
        v145 = buf[0].f64[0];
        buf[0].f64[0] = 0.0;
        *&buf[0].f64[1] = &str_67;
        v221 = __PAIR128__(*&v159, *&v145);
        re::StringID::destroyString(buf);

        LOBYTE(v150) = 0;
LABEL_96:
        v160 = v134[40];
        v44 = v134[36];
        if (v160 + 1 > 8 * v44)
        {
          re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::setBucketsCapacity((v134 + 35), (v160 + 8) >> 3);
          v44 = v134[36];
        }

        v40 = v160 >> 3;
        if (v44 <= v160 >> 3)
        {
          goto LABEL_130;
        }

        v161 = *(a3 + 312);
        if (*(a3 + 296))
        {
          v161 = a3 + 304;
        }

        v162 = *(v161 + 8 * v40);
        ++*(a3 + 320);
        ++*(a3 + 328);
        v163 = re::StringID::StringID((v162 + 32 * (v160 & 7)), &v221);
        re::StringID::StringID((v163 + 16), &v222);

        if (LOBYTE(v150))
        {
        }

        v9 = v210;
        v13 = v212;
        if (LOBYTE(v145))
        {
        }

        v5 = 5;
        v6 = 1;
        goto LABEL_62;
      }
    }

    v135 = [v83 parent];
    if (!v135 || (v136 = v135, [v83 parent], v137 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v137, "parent"), v138 = objc_claimAutoreleasedReturnValue(), v138, v137, v136, !v138))
    {
      v151 = *re::pipelineLogObjects(v135);
      v9 = v210;
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v125 = v151;
        v126 = [v12 objectPath];
        v127 = [v126 stringValue];
        v152 = [v127 UTF8String];
        LODWORD(buf[0].f64[0]) = 136315138;
        *(buf[0].f64 + 4) = v152;
        v129 = v125;
        v130 = "Invalid path: %s";
LABEL_89:
        _os_log_impl(&dword_1E1C61000, v129, OS_LOG_TYPE_DEFAULT, v130, buf, 0xCu);
      }

      goto LABEL_90;
    }

    v139 = [v83 parent];
    v140 = [v139 parent];
    v141 = [v140 path];
    v142 = [v141 stringValue];
    re::StringID::StringID(buf, [v142 UTF8String]);
    v143 = v83;
    v144 = buf[0].f64[1];
    v145 = buf[0].f64[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v221 = __PAIR128__(*&v144, *&v145);
    re::StringID::destroyString(buf);

    v199 = v143;
    v146 = [v143 properties];
    v147 = [v146 objectForKeyedSubscript:@"info:id"];
    v148 = [v147 stringValue];
    re::StringID::StringID(buf, [v148 UTF8String]);
    v149 = buf[0].f64[1];
    v150 = buf[0].f64[0];
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = &str_67;
    v222 = __PAIR128__(*&v149, *&v150);
    re::StringID::destroyString(buf);

    v134 = a3;
    goto LABEL_96;
  }

LABEL_110:
}

uint64_t re::BucketArray<re::StringID,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::StringID,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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
  return v5 + 16 * (v2 & 7);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::Matrix4x4<float>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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

BOOL re::hasColliderAPI(void *a1)
{
  v1 = a1;
  if (re::isRootNodeByPath(v1))
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 property:@"preliminary:physics:collider:convexShape"];
    v2 = v3 != 0;
  }

  return v2;
}

uint64_t re::createEntityFromImportContext(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a4;
  v847 = *MEMORY[0x1E69E9840];
  v11 = *(a7 + 8);
  if (v11 <= a4)
  {
LABEL_791:
    *&v737 = 0;
    *v821 = 0u;
    v820 = 0u;
    v819 = 0u;
    v818 = 0u;
    v817 = 0u;
    v331 = MEMORY[0x1E69E9C10];
    v633 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v799[0].n128_u32[0] = 136315906;
    *(v799[0].n128_u64 + 4) = "operator[]";
    v799[0].n128_u16[6] = 1024;
    if (v633)
    {
      v634 = 3;
    }

    else
    {
      v634 = 2;
    }

    *(&v799[0].n128_u32[3] + 2) = 468;
    v799[1].n128_u16[1] = 2048;
    *(v799[1].n128_u64 + 4) = v10;
    v799[1].n128_u16[6] = 2048;
    *(&v799[1].n128_u64[1] + 6) = v11;
    _os_log_send_and_compose_impl(v634, &v737, &v817, 80, &dword_1E1C61000, v331, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v799, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
    goto LABEL_795;
  }

  *(*(a7 + 16) + a4) = 1;
  v787 = 0;
  v786 = 0;
  v788 = 1;
  v791 = 0;
  v789 = 0;
  v790 = 0;
  v792 = 0;
  v776 = 0u;
  v777 = 1;
  v778 = 0;
  v779 = 0u;
  v780 = 0;
  v781 = 0;
  v782 = 0u;
  v783 = 0;
  memset(v784, 0, sizeof(v784));
  v785 = 0x7FFFFFFFLL;
  v15 = re::DynamicArray<re::DynamicString>::setCapacity(&v781, 0x40uLL);
  ++v783;
  v17 = *(a2 + 720);
  v775 = 0;
  v773 = 0;
  v774 = 0;
  v19 = *(a2 + 720);
  *&v817 = -1;
  v772 = 0;
  v770 = 0;
  v771 = 0;
  LOBYTE(v817) = 0;
  *(&v817 + 1) = *re::BucketArray<unsigned long,32ul>::operator[](a2 + 680, v10);
  v818 = xmmword_1E3047670;
  v819 = xmmword_1E3047680;
  v820 = xmmword_1E30476A0;
  *v821 = xmmword_1E30474D0;
  re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v786, &v817);
  v761 = 0;
  v760 = 0;
  v762 = &str_67;
  v763 = 1;
  v765 = 0;
  v764[0] = 0;
  v764[1] = 0;
  v766 = 0;
  v769 = 0;
  memset(v767, 0, sizeof(v767));
  v768 = 0;
  v677 = v10;
  v20 = re::BucketArray<unsigned long,32ul>::operator[](a2 + 680, v10);
  v681 = a2;
  Asset = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](a2 + 624, *v20);
  re::StringID::operator=(&v761, (Asset + 8));
  v21 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v760);
  v22 = *(Asset + 464);
  v23 = *(Asset + 432);
  *(v21 + 3) = *(Asset + 448);
  *(v21 + 4) = v22;
  *(v21 + 2) = v23;
  v24 = *(Asset + 32);
  v10 = strlen(v24);
  v758 = v24;
  v759 = v10;
  v25 = a6;
  if ((a9 & 1) == 0)
  {
    *&v817 = 0;
    v820 = 0u;
    *(&v817 + 1) = &str_67;
    v818 = 0uLL;
    v819 = 0uLL;
    memset(v821, 0, 24);
    re::DynamicArray<re::AnimationSceneEntityData>::add((a6 + 16), &v817);
    re::AssetHandle::~AssetHandle(v821);
    v26 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(&v818);
    if (v817)
    {
      if (v817)
      {
      }
    }

    v25 = (*(a6 + 48) + 88 * *(a6 + 32) - 88);
  }

  v673 = v25;
  v27 = re::StringID::operator=(v25, &v761);
  v752 = 0;
  v751 = 0;
  v753 = 1;
  v756 = 0;
  v754 = 0;
  v755 = 0;
  v757 = 0;
  v817 = 0uLL;
  DWORD2(v818) = 0;
  *&v818 = 0;
  v838 = 0;
  v819 = 0u;
  v820 = 0u;
  memset(&v821[8], 0, 32);
  *v821 = 0;
  v822 = 0;
  v823 = 0u;
  v824 = 0u;
  v826 = 0u;
  v827 = 0u;
  v825 = 0;
  v828 = 0;
  v829 = 0u;
  v830 = 0u;
  v831 = 0;
  v834 = 0;
  v833 = 0u;
  v832 = 0u;
  v837 = 0;
  v836 = 0u;
  v835 = 0u;
  v28 = *(v681 + 200);
  v799[0].n128_u32[0] = -1;
  v750 = 0;
  v748 = 0;
  v749 = 0;
  v29 = v799;
  v738 = 0;
  v737 = 0u;
  v740 = 0u;
  v741 = 0u;
  v739 = 0;
  v742 = 0;
  v743 = 0u;
  v744 = 0u;
  v745 = 0;
  memset(v746, 0, sizeof(v746));
  v747 = 0x7FFFFFFFLL;
  v731 = 0;
  v730 = 0;
  v732 = 1;
  v735 = 0;
  v733 = 0;
  v734 = 0;
  v736 = 0;
  v724 = 0;
  v723 = 0;
  v725 = 1;
  v668 = &v733;
  v728 = 0;
  v726 = 0;
  v727 = 0;
  v729 = 0;
  v717 = 0;
  v716 = 0;
  v718 = 1;
  v721 = 0;
  v719 = 0;
  v720 = 0;
  v722 = 0;
  v30 = re::TimelineGroupBuilder::TimelineGroupBuilder(v711, *(a3 + 104), v24, v10);
  v33 = v791;
  if (v791)
  {
    v682 = 0;
    v34 = buf;
    v10 = 1;
    v35 = v681;
    while (1)
    {
      v37 = v33 - 1;
      v38 = re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v786, v33 - 1);
      v39 = v38->u8[0];
      Asset = v38->u64[1];
      v701 = v38[2];
      v702 = v38[1];
      v697 = v38[4];
      v698 = v38[3];
      re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v786, v37);
      v791 = v37;
      ++v792;
      v30 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v35 + 624, Asset);
      v40 = v30;
      v686 = v39;
      if (v39)
      {
        break;
      }

      v41 = *(v30 + 160);
      _ZF = v41 == -1 || v41 == v677;
      if (_ZF)
      {
        break;
      }

      *re::BucketArray<re::TimelineGroupBuilder *,8ul>::addUninitialized(a5) = v711;
      re::createEntityFromImportContext(v799, v35, a3, *(v40 + 160), a5, v673, a7, a8, 0);
      v30 = re::BucketArray<unsigned long,8ul>::operator[](a5, *(a5 + 40) - 1);
      --*(a5 + 40);
      ++*(a5 + 48);
      if (v799[0].n128_u8[0] == 1)
      {
        v30 = re::DynamicArray<re::ecs2::EntityAssetData>::add(v767 + 8, &v799[0].n128_i64[1]);
        if (v799[0].n128_u8[0])
        {
          re::ecs2::EntityAssetData::~EntityAssetData(&v799[0].n128_i8[8]);
        }
      }

LABEL_345:
      v33 = v791;
      if (!v791)
      {
        goto LABEL_348;
      }
    }

    v43 = *(v30 + 624);
    if (v43)
    {
      v44 = v43 >> 1;
    }

    else
    {
      v44 = v43 >> 1;
    }

    if (!v44)
    {
      v45 = *(v30 + 656);
      if (!((v45 & 1) != 0 ? v45 >> 1 : v45 >> 1))
      {
        goto LABEL_123;
      }
    }

    v688 = *(v30 + 688);
    v799[1].n128_u8[8] = 1;
    v799[2] = 0uLL;
    v800.n128_u64[0] = 0;
    v800.n128_u32[2] = 0;
    *&v804 = 0;
    v801 = 0u;
    v802 = 0u;
    v803 = 0;
    v799[1].n128_u64[0] = "Text";
    v799[0].n128_u64[0] = 0;
    v799[0].n128_u64[1] = 5206682;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v799[2].n128_u64, 0);
    ++v800.n128_u32[2];
    v47 = (*(**(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 288, 0);
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 80) = 0u;
    *(v47 + 112) = 0u;
    *(v47 + 144) = 0u;
    *(v47 + 160) = 0u;
    *(v47 + 176) = 0u;
    *(v47 + 192) = 0u;
    *(v47 + 208) = 0u;
    *(v47 + 224) = 0u;
    *(v47 + 240) = 0u;
    *(v47 + 256) = 0u;
    *(v47 + 272) = 0u;
    *(v47 + 128) = 0u;
    v48 = (v47 + 128);
    *(v47 + 96) = 0u;
    ArcSharedObject::ArcSharedObject(v47, 0);
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *v49 = &unk_1F5CD0840;
    *(v49 + 28) = 0x3F8000003E800000;
    *(v49 + 36) = 1029;
    *(v49 + 40) = 0;
    *(v49 + 41) = 16843009;
    v50.i64[0] = 0x7F0000007FLL;
    v50.i64[1] = 0x7F0000007FLL;
    v693 = vnegq_f32(v50);
    *(v49 + 48) = v693;
    *(v49 + 64) = v50;
    *(v49 + 80) = 0u;
    *(v47 + 96) = 0u;
    *(v49 + 112) = 0u;
    v51 = re::DynamicString::setCapacity((v47 + 96), 0);
    *(v47 + 144) = 0u;
    *(v47 + 128) = 0u;
    v52 = re::DynamicString::setCapacity((v47 + 128), 0);
    *(v47 + 176) = 0;
    *(v47 + 160) = 0u;
    *(v47 + 184) = 0x3F8000003E800000;
    *(v47 + 192) = 0x101010000000405;
    *(v47 + 200) = 0u;
    *(v47 + 232) = 0u;
    *(v47 + 216) = 0u;
    v53 = re::DynamicString::setCapacity((v47 + 216), 0);
    *(v47 + 248) = 0u;
    *(v47 + 264) = 0u;
    re::DynamicString::setCapacity((v47 + 248), 0);
    buf[0].n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::Static3DTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1;
    buf[0].n128_u64[1] = v47;
    buf[1].n128_u8[0] = 1;
    re::DynamicArray<re::BufferView>::add(&v799[2], buf);
    if (!re::DynamicString::operator==(v47 + 96, v40 + 648))
    {
      re::DynamicString::operator=((v47 + 96), (v40 + 648));
      *&v54 = 0x7F0000007FLL;
      *(&v54 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v54;
      *(v47 + 44) = 1;
    }

    if (!re::DynamicString::operator==(v48, v40 + 616))
    {
      re::DynamicString::operator=(v48, (v40 + 616));
      *&v55 = 0x7F0000007FLL;
      *(&v55 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v55;
      *(v47 + 44) = 1;
    }

    v56 = *(v40 + 680);
    if (*(v47 + 32) != v56)
    {
      *(v47 + 32) = v56;
      *&v57 = 0x7F0000007FLL;
      *(&v57 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v57;
      *(v47 + 44) = 1;
    }

    v58 = *(v40 + 704);
    if (*(v47 + 28) != v58)
    {
      *(v47 + 28) = v58;
      *&v59 = 0x7F0000007FLL;
      *(&v59 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v59;
      *(v47 + 44) = 1;
    }

    v60 = vcvt_f32_f64(v688);
    v61 = vceq_f32(*(v47 + 88), v60);
    if ((vpmin_u32(v61, v61).u32[0] & 0x80000000) == 0)
    {
      *(v47 + 88) = v60;
      *&v62 = 0x7F0000007FLL;
      *(&v62 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v62;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 752))
    {
      v63 = *(v40 + 760);
    }

    else
    {
      v63 = (v40 + 753);
    }

    v689 = 0u;
    if (!strcmp(v63, "left"))
    {
      goto LABEL_45;
    }

    if (!strcmp(v63, "right"))
    {
      v68 = *(v40 + 688);
      v689 = COERCE_UNSIGNED_INT(-v68);
      v67 = 1;
    }

    else if (!strcmp(v63, "center"))
    {
      *&v69 = *(v40 + 688) * -0.5;
      v689 = v69;
      v67 = 2;
    }

    else
    {
      v64 = strcmp(v63, "justified");
      if (v64)
      {
        v65 = *re::pipelineLogObjects(v64);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v40 + 752))
          {
            v66 = *(v40 + 760);
          }

          else
          {
            v66 = v40 + 753;
          }

          buf[0].n128_u32[0] = 136315138;
          *(buf[0].n128_u64 + 4) = v66;
          _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "Invalid text horizontal alignment value %s", buf, 0xCu);
        }

LABEL_45:
        v67 = 0;
        goto LABEL_52;
      }

      v67 = 3;
    }

LABEL_52:
    if (*(v47 + 37) != v67)
    {
      *(v47 + 37) = v67;
      *&v70 = 0x7F0000007FLL;
      *(&v70 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v70;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 720))
    {
      v71 = *(v40 + 728);
    }

    else
    {
      v71 = (v40 + 721);
    }

    if (strcmp(v71, "singleLine"))
    {
      v690 = *(v40 + 688);
      if (!strcmp(v71, "hardBreaks"))
      {
        v75 = 2;
      }

      else
      {
        v72 = strcmp(v71, "flowing");
        if (v72)
        {
          v73 = *re::pipelineLogObjects(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v40 + 720))
            {
              v74 = *(v40 + 728);
            }

            else
            {
              v74 = v40 + 721;
            }

            buf[0].n128_u32[0] = 136315138;
            *(buf[0].n128_u64 + 4) = v74;
            _os_log_impl(&dword_1E1C61000, v73, OS_LOG_TYPE_DEFAULT, "Invalid text word wrap value %s", buf, 0xCu);
          }
        }

        v75 = 0;
      }

      if (*(v47 + 38) != v75)
      {
        *(v47 + 38) = v75;
        *&v84 = 0x7F0000007FLL;
        *(&v84 + 1) = 0x7F0000007FLL;
        *(v47 + 48) = v693;
        *(v47 + 64) = v84;
        *(v47 + 44) = 1;
      }

      if (*(v40 + 784))
      {
        v85 = *(v40 + 792);
      }

      else
      {
        v85 = (v40 + 785);
      }

      if (!strcmp(v85, "top"))
      {
        v89 = 0;
      }

      else if (!strcmp(v85, "middle"))
      {
        v89 = 2;
      }

      else
      {
        v86 = strcmp(v85, "bottom");
        if (v86)
        {
          v87 = *re::pipelineLogObjects(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v40 + 784))
            {
              v88 = *(v40 + 792);
            }

            else
            {
              v88 = v40 + 785;
            }

            buf[0].n128_u32[0] = 136315138;
            *(buf[0].n128_u64 + 4) = v88;
            _os_log_impl(&dword_1E1C61000, v87, OS_LOG_TYPE_DEFAULT, "Invalid text vertical alignment value %s", buf, 0xCu);
          }
        }

        v89 = 1;
      }

      __asm { FMOV            V0.2D, #-0.5 }

      v94 = vmulq_f64(v690, _Q0);
      *&v94.f64[0] = vcvt_f32_f64(v94);
      LODWORD(v94.f64[1]) = 0;
      v689 = v94;
      goto LABEL_110;
    }

    if (*(v47 + 38) != 2)
    {
      *(v47 + 38) = 2;
      *&v76 = 0x7F0000007FLL;
      *(&v76 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v76;
      *(v47 + 44) = 1;
    }

    if (*(v40 + 784))
    {
      v77 = *(v40 + 792);
    }

    else
    {
      v77 = (v40 + 785);
    }

    if (!strcmp(v77, "top"))
    {
      v89 = 0;
      v95 = *(v40 + 696);
      v96 = v689;
      *(v96.f64 + 1) = -v95;
      v689 = v96;
    }

    else
    {
      if (strcmp(v77, "middle"))
      {
        if (!strcmp(v77, "bottom"))
        {
          v99 = v689;
          HIDWORD(v99.f64[0]) = 0;
          v689 = v99;
LABEL_108:
          v89 = 1;
          goto LABEL_109;
        }

        v78 = strcmp(v77, "lowerMiddle");
        if (v78)
        {
          v79 = strcmp(v77, "baseline");
          v80 = v79;
          v81 = *re::pipelineLogObjects(v79);
          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
          if (v80)
          {
            if (v82)
            {
              if (*(v40 + 784))
              {
                v83 = *(v40 + 792);
              }

              else
              {
                v83 = v40 + 785;
              }

              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v83;
              _os_log_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_DEFAULT, "Invalid text vertical alignment value %s", buf, 0xCu);
            }

            goto LABEL_108;
          }

          if (!v82)
          {
            goto LABEL_107;
          }

          buf[0].n128_u16[0] = 0;
          v101 = v81;
          v102 = "Single line vertical alignment value baseline not supported, falling back to bottom";
        }

        else
        {
          v100 = *re::pipelineLogObjects(v78);
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
LABEL_107:
            v103 = *(v40 + 696) * -0.5;
            v104 = v689;
            *(v104.f64 + 1) = v103;
            v689 = v104;
            goto LABEL_108;
          }

          buf[0].n128_u16[0] = 0;
          v101 = v100;
          v102 = "Single line vertical alignment value lowerMiddle not supported, falling back to bottom";
        }

        _os_log_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 2u);
        goto LABEL_107;
      }

      v97 = *(v40 + 696) * -0.5;
      v98 = v689;
      *(v98.f64 + 1) = v97;
      v689 = v98;
      v89 = 2;
    }

LABEL_109:
    LOBYTE(v75) = 0;
LABEL_110:
    if (*(v47 + 39) != v89)
    {
      *(v47 + 39) = v89;
      *&v105 = 0x7F0000007FLL;
      *(&v105 + 1) = 0x7F0000007FLL;
      *(v47 + 48) = v693;
      *(v47 + 64) = v105;
      *(v47 + 44) = 1;
    }

    *(re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(v799) + 4) = v689;
    v106 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(v799);
    v107 = re::DynamicArray<re::AssetHandle>::operator=((v106 + 7), (v40 + 808));
    memset(buf, 0, 32);
    v108 = re::DynamicString::setCapacity(buf, 0);
    memset(&buf[2], 0, 32);
    re::DynamicString::setCapacity(buf[2].n128_u64, 0);
    __asm { FMOV            V0.2S, #1.0 }

    buf[4].n128_u64[0] = _D0;
    buf[4].n128_u8[8] = 5;
    v840 = 0;
    v841 = 0;
    v842[0] = 0x1010101000400;
    re::DynamicString::operator=(&buf[2], (v40 + 648));
    re::DynamicString::operator=(buf, (v40 + 616));
    *&v110 = *(v40 + 680);
    *&v111 = *(v40 + 704);
    buf[4].n128_u64[0] = __PAIR64__(v111, v110);
    buf[4].n128_u8[8] = 5;
    v840 = 0;
    v841 = v60;
    LOBYTE(v842[0]) = v75;
    BYTE1(v842[0]) = v67;
    BYTE2(v842[0]) = v89;
    *(v842 + 3) = 257;
    HIBYTE(v842[0]) = 1;
    Asset = re::MeshPrimitiveProvider::makeAsset(buf, 0);
    v112 = *(v40 + 32);
    v113 = *(a3 + 104);
    v10 = strlen(v112);
    v114 = re::MeshAsset::assetType(v10);
    v115 = re::ImportAssetTable::addAsset(v113, v112, v10, Asset, v114);
    memset(v810, 0, 24);
    if (*(v115 + 8))
    {
      v116 = *(v115 + 16);
    }

    else
    {
      v116 = (v115 + 9);
    }

    v35 = v681;
    re::AssetHandle::setSerializationString(v810, v116, *a3);
    re::AssetHandle::operator=((v106 + 4), v810);
    re::AssetHandle::~AssetHandle(v810);
    if (buf[2].n128_u64[0])
    {
      if (buf[2].n128_u8[8])
      {
        (*(*buf[2].n128_u64[0] + 40))();
      }

      memset(&buf[2], 0, 32);
    }

    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }

    re::DynamicArray<re::ecs2::EntityAssetData>::add(v767 + 8, v799);
    re::ecs2::EntityAssetData::~EntityAssetData(v799);
LABEL_123:
    if (*(v40 + 240) != 255)
    {
    }

    v117 = *(v40 + 344);
    v118 = *(v40 + 304);
    if (v117)
    {
      if (v118)
      {
        v119 = 0;
        v120 = v118 - 1;
        while (v117 != v119)
        {
          v121 = *(*(v40 + 360) + 8 * v119);
          _ZF = v121 == -1;
          v122 = v121 == -1;
          if (!_ZF || v120 == v119++)
          {
            goto LABEL_136;
          }
        }

        *v810 = 0;
        v801 = 0u;
        v800 = 0u;
        memset(v799, 0, sizeof(v799));
        v363 = MEMORY[0x1E69E9C10];
        v364 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        buf[0].n128_u32[0] = 136315906;
        *(buf[0].n128_u64 + 4) = "operator[]";
        buf[0].n128_u16[6] = 1024;
        if (v364)
        {
          v365 = 3;
        }

        else
        {
          v365 = 2;
        }

        *(&buf[0].n128_u32[3] + 2) = 789;
        buf[1].n128_u16[1] = 2048;
        *(buf[1].n128_u64 + 4) = v117;
        buf[1].n128_u16[6] = 2048;
        *(&buf[1].n128_u64[1] + 6) = v117;
        _os_log_send_and_compose_impl(v365, v810, v799, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_478:
        *v843 = 0;
        memset(buf, 0, sizeof(buf));
        v366 = MEMORY[0x1E69E9C10];
        v367 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v814 = 136315906;
        *&v814[4] = "operator[]";
        *&v814[12] = 1024;
        if (v367)
        {
          v368 = 3;
        }

        else
        {
          v368 = 2;
        }

        *v815 = 789;
        *&v815[4] = 2048;
        *&v815[6] = v36;
        *&v815[14] = 2048;
        *&v815[16] = v117;
        _os_log_send_and_compose_impl(v368, v843, buf, 80, &dword_1E1C61000, v366, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_482:
        v798 = 0;
        memset(buf, 0, sizeof(buf));
        v369 = MEMORY[0x1E69E9C10];
        v370 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v844 = 136315906;
        *&v844[4] = "operator[]";
        *&v844[12] = 1024;
        if (v370)
        {
          v371 = 3;
        }

        else
        {
          v371 = 2;
        }

        *&v844[14] = 797;
        *&v844[18] = 2048;
        *&v844[20] = v36;
        v845 = 2048;
        v846 = v117;
        _os_log_send_and_compose_impl(v371, &v798, buf, 80, &dword_1E1C61000, v369, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v844, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_486:
        *v843 = 0;
        memset(buf, 0, sizeof(buf));
        v372 = MEMORY[0x1E69E9C10];
        v373 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v814 = 136315906;
        *&v814[4] = "operator[]";
        *&v814[12] = 1024;
        if (v373)
        {
          v374 = 3;
        }

        else
        {
          v374 = 2;
        }

        *v815 = 789;
        *&v815[4] = 2048;
        *&v815[6] = v36;
        *&v815[14] = 2048;
        *&v815[16] = v117;
        _os_log_send_and_compose_impl(v374, v843, buf, 80, &dword_1E1C61000, v372, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_490:
        v705 = 0;
        memset(buf, 0, sizeof(buf));
        v375 = MEMORY[0x1E69E9C10];
        v376 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v814 = 136315906;
        *&v814[4] = "operator[]";
        *&v814[12] = 1024;
        if (v376)
        {
          v377 = 3;
        }

        else
        {
          v377 = 2;
        }

        *v815 = 468;
        *&v815[4] = 2048;
        *&v815[6] = v36;
        *&v815[14] = 2048;
        *&v815[16] = v117;
        _os_log_send_and_compose_impl(v377, &v705, buf, 80, &dword_1E1C61000, v375, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_494:
        *v844 = 0;
        memset(buf, 0, sizeof(buf));
        v378 = MEMORY[0x1E69E9C10];
        v379 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v843 = 136315906;
        *&v843[4] = "operator[]";
        *&v843[12] = 1024;
        if (v379)
        {
          v380 = 3;
        }

        else
        {
          v380 = 2;
        }

        *&v843[14] = 797;
        *&v843[18] = 2048;
        *&v843[20] = Asset;
        *&v843[28] = 2048;
        *&v843[30] = v117;
        _os_log_send_and_compose_impl(v380, v844, buf, 80, &dword_1E1C61000, v378, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_498:
        *v844 = 0;
        memset(buf, 0, sizeof(buf));
        v329 = MEMORY[0x1E69E9C10];
        v381 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v843 = 136315906;
        *&v843[4] = "operator[]";
        *&v843[12] = 1024;
        if (v381)
        {
          v382 = 3;
        }

        else
        {
          v382 = 2;
        }

        *&v843[14] = 468;
        *&v843[18] = 2048;
        *&v843[20] = Asset;
        *&v843[28] = 2048;
        *&v843[30] = v10;
        _os_log_send_and_compose_impl(v382, v844, buf, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
        goto LABEL_502;
      }

      goto LABEL_309;
    }

    v124 = v118 != 0;
    v122 = 1;
    if (!v124)
    {
      goto LABEL_309;
    }

LABEL_136:
    if (((v122 | v686) & 1) == 0)
    {
LABEL_309:
      v32.n128_u32[0] = *(v40 + 564);
      if (v32.n128_f32[0] != 0.0 && *(*(v35 + 40) + 96) == 1)
      {
        if (!v682)
        {
          v246 = re::globalAllocators(v30);
          v247 = (*(*v246[2] + 32))(v246[2], 224, 8);
          *(v247 + 176) = 0u;
          *(v247 + 192) = 0u;
          *v247 = 0u;
          *(v247 + 16) = 0u;
          *(v247 + 32) = 0u;
          *(v247 + 48) = 0u;
          *(v247 + 64) = 0u;
          *(v247 + 80) = 0u;
          *(v247 + 96) = 0u;
          *(v247 + 112) = 0u;
          *(v247 + 128) = 0u;
          *(v247 + 144) = 0u;
          *(v247 + 160) = 0u;
          *(v247 + 196) = 0x7FFFFFFF;
          *(v247 + 208) = 0;
          *(v247 + 216) = &str_67;
          v682 = v247;
        }

        v248 = *(v40 + 608);
        v249 = re::globalAllocators(v30);
        v250 = (*(*v249[2] + 32))(v249[2], 128, 8);
        re::SampledAnimationAssetData<re::GenericSRT<float>>::SampledAnimationAssetData(v250, v40 + 480);
        *v251 = &unk_1F5CC0788;
        v799[0].n128_u64[0] = "Transform.transform";
        v799[0].n128_u64[1] = 19;
        re::DynamicString::operator=((v251 + 5), v799);
        TimelineAsset = re::AssetHelper::makeTimelineAsset(v250, v252);
        re::StringID::StringID(v799, (v40 + 24));
        v254 = re::StringID::operator=((TimelineAsset[2] + 24), v799);
        if (v799[0].n128_u8[0])
        {
          if (v799[0].n128_u8[0])
          {
          }
        }

        v255 = *(a3 + 104);
        v256 = *(v40 + 32);
        v257 = strlen(v256);
        v258 = re::TimelineAsset::assetType(v257);
        v259 = re::ImportAssetTable::addAsset(v255, v256, v257, TimelineAsset, v258);
        memset(v799, 0, 24);
        re::DynamicArray<re::AssetHandle>::add((v682 + 120), v799);
        re::AssetHandle::~AssetHandle(v799);
        if (*(v259 + 8))
        {
          v261 = *(v259 + 16);
        }

        else
        {
          v261 = (v259 + 9);
        }

        v262 = (*(v682 + 19) + 24 * *(v682 + 17) - 24);
        v263 = v261;
        v799[0].n128_u64[0] = 0;
        v799[0].n128_u64[1] = &str_67;
        memset(&v799[1], 0, 24);
        re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v682 + 40), v799);
        re::AssetHandle::~AssetHandle(&v799[1]);
        if (v799[0].n128_u8[0])
        {
          if (v799[0].n128_u8[0])
          {
          }
        }

        v265 = *(v682 + 9) + 40 * *(v682 + 7);
        v266 = re::StringID::operator=((v265 - 40), (v40 + 24));
        if (*(v259 + 8))
        {
          Asset = *(v259 + 16);
        }

        else
        {
          Asset = v259 + 9;
        }

        v267 = (v250[21] - v250[20]);
        v799[0].n128_u64[0] = v248;
        v799[0].n128_f64[1] = v267;
        re::AssetHandle::AssetHandle(&v799[1], (*(v682 + 19) + 24 * *(v682 + 17) - 24));
        re::AssetHandle::~AssetHandle(&v799[1]);
        *(v35 + 48) = 1;
      }

      v268 = *(v40 + 968);
      if (v268)
      {
        v269 = *(v40 + 608);
        v270 = *(v40 + 984);
        v271 = 8 * v268;
        do
        {
          v272 = *v270;
          v273 = re::globalAllocators(v30)[2];
          memset(v799, 0, 36);
          *(v799[2].n128_u64 + 4) = 0x7FFFFFFFLL;
          v274 = re::internal::convertToAssetData(v272, v799, v273);
          v275 = re::globalAllocators(v274);
          v276 = (*(*v275[2] + 32))(v275[2], 24, 8);
          *v276 = v272;
          v276[1] = v274;
          v276[2] = v272;
          v277 = *(a3 + 104);
          v278 = *(v40 + 32);
          v279 = strlen(v278);
          v280 = re::TimelineAsset::assetType(v279);
          v281 = re::ImportAssetTable::addAsset(v277, v278, v279, v276, v280);
          memset(v810, 0, 24);
          if (*(v281 + 8))
          {
            Asset = *(v281 + 16);
          }

          else
          {
            Asset = v281 + 9;
          }

          buf[0].n128_u64[0] = v269;
          buf[0].n128_u64[1] = (*(*v272 + 40))(v272);
          re::AssetHandle::AssetHandle(&buf[1], v810);
          re::AssetHandle::~AssetHandle(&buf[1]);
          re::AssetHandle::~AssetHandle(v810);
          v32.n128_f64[0] = re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v799);
          ++v270;
          v271 -= 8;
        }

        while (v271);
      }

      if (v686)
      {
        v35 = v681;
        v10 = 1;
      }

      else
      {
        v282 = *(v40 + 920);
        v35 = v681;
        if (v282)
        {
          for (i = 0; i != v282; ++i)
          {
            v284 = re::BucketArray<unsigned long,8ul>::operator[](v40 + 880, v282 + ~i);
            v285 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v681 + 624, *v284);
            v286 = 0;
            v287 = *(v285 + 448);
            v288 = v287 + v287;
            v289 = *(v285 + 452);
            v290 = v289 + v289;
            v291 = *(v285 + 456);
            v292 = v291 + v291;
            v293 = v287 * (v287 + v287);
            v294 = v289 * (v289 + v289);
            v295 = v291 * (v291 + v291);
            v296 = v288 * v289;
            v297 = v288 * v291;
            v298 = v290 * v291;
            v299 = *(v285 + 460);
            v300 = v288 * v299;
            v301 = v290 * v299;
            v302 = v292 * v299;
            v303.i32[3] = 0;
            v303.f32[0] = 1.0 - (v294 + v295);
            v303.f32[1] = v296 + v302;
            v303.f32[2] = v297 - v301;
            v304.i32[3] = 0;
            v304.i64[0] = __PAIR64__(1.0 - (v293 + v295), v296 - v302);
            v304.f32[2] = v298 + v300;
            v305.i32[3] = 0;
            v305.f32[0] = v297 + v301;
            v305.f32[1] = v298 - v300;
            v305.f32[2] = 1.0 - (v293 + v294);
            v306 = *(v285 + 432);
            v307 = vmulq_n_f32(v303, v306.f32[0]);
            v308 = vmulq_laneq_f32(v305, v306, 2);
            v309 = *(v285 + 464);
            v309.n128_u32[3] = 1.0;
            v310 = vmulq_n_f32(v304, COERCE_FLOAT(HIDWORD(*(v285 + 432))));
            buf[0] = v307;
            buf[1] = v310;
            buf[2] = v308;
            buf[3] = v309;
            do
            {
              v799[v286] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v702, COERCE_FLOAT(*&buf[v286])), v701, buf[v286].n128_u64[0], 1), v698, buf[v286], 2), v697, buf[v286], 3);
              ++v286;
            }

            while (v286 != 4);
            v692 = v799[1];
            v695 = v799[0];
            v685 = v800;
            v687 = v799[2];
            v799[0].n128_u8[0] = 0;
            v799[0].n128_u64[1] = *re::BucketArray<unsigned long,8ul>::operator[](v40 + 880, *(v40 + 920) + ~i);
            v799[1] = v695;
            v799[2] = v692;
            v800 = v687;
            v801 = v685;
            v32.n128_u64[0] = re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v786, v799).n128_u64[0];
            v282 = *(v40 + 920);
          }
        }

        v311 = *(v40 + 144);
        v10 = 1;
        if (v311)
        {
          for (j = 0; j != v311; ++j)
          {
            v313 = re::BucketArray<unsigned long,4ul>::operator[](v40 + 104, v311 + ~j);
            v30 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v681 + 56, *v313);
            v314 = *(v30 + 392);
            v315 = v701;
            v32 = v702;
            v317 = v697;
            v316 = v698;
            if (v314)
            {
              v318 = 8 * v314;
              Asset = *(v30 + 408) - 8;
              do
              {
                v799[0].n128_u8[0] = 1;
                v799[0].n128_u64[1] = *(Asset + v318);
                v799[1] = v32;
                v799[2] = v315;
                v800 = v316;
                v801 = v317;
                re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(&v786, v799);
                v317 = v697;
                v316 = v698;
                v315 = v701;
                v32 = v702;
                v318 -= 8;
              }

              while (v318);
            }

            v311 = *(v40 + 144);
          }
        }
      }

      goto LABEL_345;
    }

    v10 = *(v40 + 416);
    *&v812[2] = 0;
    memset(v810, 0, sizeof(v810));
    memset(v799, 0, 32);
    v125 = re::DynamicString::setCapacity(v799, 0);
    v799[2] = 0uLL;
    v800.n128_u32[2] = 0;
    v800.n128_u64[0] = 0;
    v807 = 0;
    v801 = 0u;
    v802 = 0u;
    v803 = 0;
    v804 = 0u;
    v805 = 0u;
    v806 = 0;
    v126 = *(v40 + 32);
    re::DynamicString::operator=(v799, buf);
    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }

    v127 = *(v40 + 304);
    v128 = v127;
    if (v799[2].n128_u64[1] < v127)
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v799[2].n128_u64, v127);
    }

    if (*&v810[8] < v127)
    {
    }

    if (!v127)
    {
LABEL_255:
      if (v800.n128_u64[0])
      {
        v219 = v735;
        v11 = v731;
        if (v735 + 1 > 8 * v731)
        {
          v11 = v731;
        }

        Asset = v219 >> 3;
        if (v11 <= v219 >> 3)
        {
          goto LABEL_767;
        }

        v220 = v734;
        if (v732)
        {
          v220 = &v733;
        }

        v221 = v220[Asset];
        ++v735;
        ++v736;
        v222 = v221 + 40 * (v219 & 7);
        *(v222 + 32) = 0;
        *(v222 + 8) = 0;
        *(v222 + 16) = 0;
        *v222 = 0;
        *(v222 + 24) = 0;
        *v222 = *v810;
        *v810 = 0;
        *(v222 + 8) = *&v810[8];
        *&v810[8] = 0;
        v223 = *(v222 + 16);
        *(v222 + 16) = *&v810[16];
        *&v810[16] = v223;
        v224 = *(v222 + 32);
        *(v222 + 32) = *&v812[2];
        *&v812[2] = v224;
        ++*&v810[24];
        ++*(v222 + 24);
        re::DynamicArray<re::ModelWithLodsDescriptor>::add(&v737, v799);
        buf[0] = v702;
        buf[1] = v701;
        buf[2] = v698;
        buf[3] = v697;
        buf[4].n128_u32[0] = v738 - 1;
        re::make::shared::object<re::ShareableInternal<re::GeomInstance>,re::GeomInstance>(buf, v814);
        v225 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((&v740 + 8), v814);
        if (*v814)
        {
        }

        v226 = *(v40 + 824);
        memset(v843, 0, 24);
        v227 = *(&v779 + 1);
        v11 = *(&v776 + 1);
        if (*(&v779 + 1) + 1 > (16 * *(&v776 + 1)))
        {
          re::BucketArray<re::FixedArray<unsigned short>,16ul>::setBucketsCapacity(&v776, (*(&v779 + 1) + 16) >> 4);
          v11 = *(&v776 + 1);
        }

        Asset = v227 >> 4;
        if (v11 <= v227 >> 4)
        {
          goto LABEL_771;
        }

        v228 = v779;
        if (v777)
        {
          v228 = &v778;
        }

        v229 = v228[Asset];
        ++*(&v779 + 1);
        ++v780;
        v230 = (v229 + 24 * (v227 & 0xF));
        *v230 = 0;
        v230[1] = 0;
        v230[2] = 0;
        *v230 = *v843;
        v230[1] = *&v843[8];
        v230[2] = *&v843[16];
        v35 = v681;
        if (v226)
        {
          v36 = 0;
          Asset = *(&v779 + 1) - 1;
          do
          {
            v117 = *(v40 + 824);
            if (v117 <= v36)
            {
              goto LABEL_486;
            }

            re::AssetHandle::serializationString((*(v40 + 840) + 24 * v36), v843);
            v231 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v784[8], v843);
            if (v231)
            {
              v35 = *v231;
            }

            else
            {
              re::DynamicArray<re::DynamicString>::add(&v781, v843);
              v232 = WORD4(v782);
              memset(buf, 0, 24);
              v233 = re::Hash<re::DynamicString>::operator()(v814, v843);
              v10 = &v776;
              re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v784[8], v233, buf, v843);
              if (buf[0].n128_u32[3] == 0x7FFFFFFF)
              {
                v234 = v232 - 1;
                v235 = re::HashTable<re::DynamicString,unsigned short,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v784[8], buf[0].n128_u32[2], buf[0].n128_u64[0]);
                re::DynamicString::DynamicString((v235 + 8), v843);
                *(v235 + 40) = v234;
                ++HIDWORD(v785);
              }

              v35 = WORD4(v782) - 1;
            }

            v236 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v776, Asset);
            v117 = *(v236 + 8);
            if (v117 <= v36)
            {
              goto LABEL_490;
            }

            *(*(v236 + 16) + 2 * v36) = v35;
            if (*v843 && (v843[8] & 1) != 0)
            {
              (*(**v843 + 40))();
            }

            ++v36;
            v35 = v681;
          }

          while (v36 != v226);
        }

        v237 = v728;
        v11 = v724;
        if (v728 + 1 > 8 * v724)
        {
          v11 = v724;
        }

        Asset = v237 >> 3;
        if (v11 <= v237 >> 3)
        {
          goto LABEL_775;
        }

        v238 = v727;
        if (v725)
        {
          v238 = &v726;
        }

        v239 = v238[Asset];
        ++v728;
        ++v729;
        re::DynamicArray<re::GeomDeformer>::DynamicArray(*&v239 + 40 * (v237 & 7), (v40 + 1024));
        v240 = v721;
        v11 = v717;
        if (v721 + 1 > 8 * v717)
        {
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(&v716, (v721 + 8) >> 3);
          v11 = v717;
        }

        Asset = v240 >> 3;
        if (v11 <= v240 >> 3)
        {
          goto LABEL_779;
        }

        v241 = v720;
        if (v718)
        {
          v241 = &v719;
        }

        v242 = v241[Asset];
        ++v721;
        ++v722;
        *(v242 + 8 * (v240 & 7)) = v40 + 992;
      }

      v243 = *(v40 + 304);
      *(v40 + 304) = 0;
      if (v243)
      {
        v244 = *(v40 + 320);
        v245 = 8 * v243;
        do
        {
          if (*v244)
          {

            *v244 = 0;
          }

          v244 += 8;
          v245 -= 8;
        }

        while (v245);
      }

      ++*(v40 + 312);
      *(v40 + 344) = 0;
      ++*(v40 + 352);
      *(v40 + 384) = 0;
      ++*(v40 + 392);
      re::FixedArray<CoreIKTransform>::deinit((v40 + 408));
      if (*(&v804 + 1))
      {
        if (v807)
        {
          (*(**(&v804 + 1) + 40))();
        }

        v807 = 0;
        v805 = 0uLL;
        *(&v804 + 1) = 0;
        ++v806;
      }

      if (v801.i64[1])
      {
        if (v804)
        {
          (*(*v801.i64[1] + 40))();
        }

        *&v804 = 0;
        v802 = 0uLL;
        v801.i64[1] = 0;
        ++v803;
      }

      re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v799[2]);
      if (v799[0].n128_u64[0] && (v799[0].n128_u8[8] & 1) != 0)
      {
        (*(*v799[0].n128_u64[0] + 40))();
      }

      goto LABEL_309;
    }

    v36 = 0;
    v679 = (v127 - 1);
    v129 = v127 == 1;
    if (v127 == 1)
    {
      v130 = INFINITY;
    }

    else
    {
      v130 = (100 * (v127 + 1) - 500);
    }

    if (v127 > 5)
    {
      v129 = 1;
    }

    v691 = v129;
    v684 = v10;
    v694 = v127;
    while (1)
    {
      v117 = *(v40 + 304);
      if (v117 <= v36)
      {
        goto LABEL_478;
      }

      v131 = *(v40 + 320);
      v132 = *(v131 + 8 * v36);
      if (*(v132 + 48))
      {
        break;
      }

LABEL_175:
      if (++v36 == v128)
      {
        goto LABEL_255;
      }
    }

    v133 = v800.n128_u64[0];
    if (v800.n128_u64[0] >= v799[2].n128_u64[1])
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(&v799[2], v800.n128_u64[0] + 1);
      v133 = v800.n128_u64[0];
      v132 = *(v131 + 8 * v36);
    }

    *(v801.i64[0] + 8 * v133) = v132;
    *(v131 + 8 * v36) = 0;
    v800.n128_u64[0] = v133 + 1;
    ++v800.n128_u32[2];
    if (v10 && v36)
    {
      v134 = v36 - 1;
      Asset = *(v40 + 416);
      if (Asset <= v36 - 1)
      {
        *v843 = 0;
        memset(buf, 0, sizeof(buf));
        v384 = MEMORY[0x1E69E9C10];
        v385 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v814 = 136315906;
        *&v814[4] = "operator[]";
        *&v814[12] = 1024;
        if (v385)
        {
          v386 = 3;
        }

        else
        {
          v386 = 2;
        }

        *v815 = 468;
        *&v815[4] = 2048;
        *&v815[6] = v36 - 1;
        *&v815[14] = 2048;
        *&v815[16] = Asset;
        _os_log_send_and_compose_impl(v386, v843, buf, 80, &dword_1E1C61000, v384, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
LABEL_510:
        *v843 = 0;
        memset(buf, 0, sizeof(buf));
        v347 = MEMORY[0x1E69E9C10];
        v387 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v814 = 136315906;
        *&v814[4] = "operator[]";
        *&v814[12] = 1024;
        if (v387)
        {
          v388 = 3;
        }

        else
        {
          v388 = 2;
        }

        *v815 = 468;
        *&v815[4] = 2048;
        *&v815[6] = v36 - 1;
        *&v815[14] = 2048;
        *&v815[16] = Asset;
        _os_log_send_and_compose_impl(v388, v843, buf, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
        v320 = _os_crash_msg();
        __break(1u);
        goto LABEL_514;
      }

      v135 = 1.0 - *(*(v40 + 424) + 4 * v134);
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      buf[0].n128_f32[0] = v135 * v135;
      re::DynamicArray<float>::add((&v804 + 8), buf);
      Asset = *(v40 + 416);
      if (Asset <= v134)
      {
        goto LABEL_510;
      }

      v136 = v130;
      if (!v691)
      {
        v136 = __const__ZN2re29computeDefaultLodMaxViewDepthEjj_kViewDepthTable[v679];
      }

      buf[0].n128_f32[0] = v136 * *(*(v40 + 424) + 4 * v134);
      re::DynamicArray<float>::add(&v801.u32[2], buf);
    }

    if (*(v40 + 344) > v36)
    {
      v137 = *(v40 + 360);
      v138 = *(v137 + 8 * v36);
      if (v138 != -1)
      {
        v139 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, *(v137 + 8 * v36));
        v140 = *(a3 + 104);
        var1 = v139->var1;
        v142 = strlen(var1);
        v143 = re::SkeletonAsset::assetType(v142);
        v144 = re::ImportAssetTable::importedAsset(v140, var1, v142, v143);
        if (v144)
        {
          buf[0].n128_u32[0] = 0;
          memset(&buf[0].n128_i8[8], 0, 24);
          if (*(v144 + 8))
          {
            Asset = *(v144 + 16);
          }

          else
          {
            Asset = v144 + 9;
          }

          v145 = 0xBF58476D1CE4E5B9 * ((*&v139->var0 >> 31) ^ (*&v139->var0 >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v746[8], v139, (0x94D049BB133111EBLL * (v145 ^ (v145 >> 27))) ^ ((0x94D049BB133111EBLL * (v145 ^ (v145 >> 27))) >> 31), v843);
          if (*&v843[12] == 0x7FFFFFFF)
          {
            Asset = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v138);
            buf[0].n128_u32[0] = DWORD2(v744);
            v146 = re::globalAllocators(Asset);
            v147 = (*(*v146[2] + 32))(v146[2], 184, 8);
            ArcSharedObject::ArcSharedObject(v147, 0);
            *v147 = &unk_1F5CD0DA0;
            re::StringID::StringID((v147 + 3), (Asset + 16));
            re::FixedArray<re::StringID>::FixedArray(v147 + 5, (Asset + 32));
            re::FixedArray<unsigned int>::FixedArray(v147 + 8, (Asset + 56));
            re::FixedArray<re::GenericSRT<float>>::FixedArray(v147 + 11, (Asset + 80));
            re::FixedArray<re::Matrix4x4<float>>::FixedArray(v147 + 14, (Asset + 104));
            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable((v147 + 17), Asset + 128);
            *v843 = v147;
            re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((&v743 + 8), v843);
            if (*v843)
            {
            }

            re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v746[8], v139, buf);
            re::StringID::StringID(v844, (Asset + 16));
            v148 = *(Asset + 40);
            *v843 = *(Asset + 48);
            *&v843[8] = v148;
            v149 = *(Asset + 88);
            v793 = *(Asset + 96);
            v794 = v149;
            re::AssetHandle::AssetHandle(&v705, &buf[0].n128_i8[8]);
            re::AssetHandle::~AssetHandle(&v705);
            v10 = v684;
            if (v844[0])
            {
              if (v844[0])
              {
              }
            }

            *v844 = 0;
            *&v844[8] = &str_67;
            v151 = buf[0].n128_u32[0];
          }

          else
          {
            v151 = *(*&v746[24] + 32 * *&v843[12] + 24);
            buf[0].n128_u32[0] = v151;
            v10 = v684;
          }

          v814[0] = 1;
          *&v814[8] = v151;
          *&v815[2] = *(buf + 8);
          memset(&buf[0].n128_i8[8], 0, 24);
          *&v815[18] = buf[1].n128_u64[1];
          re::AssetHandle::~AssetHandle(&buf[0].n128_i8[8]);
          if (v814[0])
          {
            buf[0].n128_u64[0] = 0xFFFFFFFFLL;
            buf[0].n128_u64[1] = -1;
            buf[1].n128_u64[0] = -1;
            Asset = -1;
            memset(&buf[1].n128_i8[8], 0, 48);
            if (*&v810[16] >= *&v810[8])
            {
              v153 = *&v810[16] + 1;
              if (*&v810[8] < (*&v810[16] + 1))
              {
                if (*v810)
                {
                  v154 = 8;
                  if (*&v810[8])
                  {
                    v154 = 2 * *&v810[8];
                  }

                  if (v154 <= v153)
                  {
                    v155 = *&v810[16] + 1;
                  }

                  else
                  {
                    v155 = v154;
                  }
                }

                else
                {
                  ++*&v810[24];
                }
              }
            }

            v156 = (*&v812[2] + 72 * *&v810[16]);
            v157 = buf[1].n128_u64[0];
            *v156 = buf[0];
            v156[1].n128_u64[0] = v157;
            v156[1].n128_u64[1] = 0;
            v156[2].n128_u64[0] = 0;
            v156[2].n128_u64[1] = 0;
            v156[2].n128_u64[0] = buf[2].n128_u64[0];
            buf[2].n128_u64[0] = 0;
            v158 = v156[1].n128_u64[1];
            v156[1].n128_u64[1] = 0;
            v156[1].n128_u64[1] = buf[1].n128_u64[1];
            buf[1].n128_u64[1] = v158;
            v159 = v156[2].n128_u64[1];
            v156[2].n128_u64[1] = buf[2].n128_u64[1];
            buf[2].n128_u64[1] = v159;
            v156[3].n128_u64[0] = 0;
            v156[3].n128_u64[1] = 0;
            v156[4].n128_u64[0] = 0;
            v156[3].n128_u64[1] = buf[3].n128_u64[1];
            buf[3].n128_u64[1] = 0;
            v160 = v156[3].n128_u64[0];
            v156[3].n128_u64[0] = 0;
            v156[3].n128_u64[0] = buf[3].n128_u64[0];
            buf[3].n128_u64[0] = v160;
            v161 = v156[4].n128_u64[0];
            v156[4].n128_u64[0] = buf[4].n128_u64[0];
            buf[4].n128_u64[0] = v161;
            ++*&v810[16];
            ++*&v810[24];
            re::AssetHandle::~AssetHandle(&buf[3]);
            re::AssetHandle::~AssetHandle(&buf[1].n128_i8[8]);
            v162 = *&v812[2] + 72 * *&v810[16];
            *(v162 - 64) = v138;
            v163 = re::AssetHandle::operator=(v162 - 48, &v815[2]);
            v11 = *(v40 + 384);
            if (v11)
            {
              if (v11 <= v36)
              {
                goto LABEL_763;
              }

              v164 = *(*(v40 + 400) + 8 * v36);
              *(v162 - 56) = v164;
              v165 = *&v814[8];
              *(v162 - 72) = *&v814[8];
              v128 = v694;
              if (v164 != -1)
              {
                v669 = v162;
                if (v682)
                {
                  v166 = v165;
                }

                else
                {
                  v167 = re::globalAllocators(v163);
                  v168 = (*(*v167[2] + 32))(v167[2], 224, 8);
                  *(v168 + 176) = 0u;
                  *(v168 + 192) = 0u;
                  *v168 = 0u;
                  *(v168 + 16) = 0u;
                  *(v168 + 32) = 0u;
                  *(v168 + 48) = 0u;
                  *(v168 + 64) = 0u;
                  *(v168 + 80) = 0u;
                  *(v168 + 96) = 0u;
                  *(v168 + 112) = 0u;
                  *(v168 + 128) = 0u;
                  *(v168 + 144) = 0u;
                  *(v168 + 160) = 0u;
                  *(v168 + 196) = 0x7FFFFFFF;
                  *(v168 + 208) = 0;
                  *(v168 + 216) = &str_67;
                  v682 = v168;
                  v169 = v168;
                  v162 = v669;
                  v164 = *(v669 - 56);
                  v166 = *&v814[8];
                }

                v170 = *(v162 - 64);
                re::AssetHandle::AssetHandle(v710, &v815[2]);
                v670 = v164;
                v172 = *(re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v164) + 8);
                v173 = "";
                if (*(*(v35 + 40) + 160))
                {
                  v173 = "_additive";
                }

                v663 = v173;
                v667 = v166;
                v174 = re::DynamicString::format(&v705, "%s_skeleton[%u]%s", v171, v172, v166);
                v175 = *(a3 + 104);
                if (v706)
                {
                  v176 = v707;
                }

                else
                {
                  v176 = &v706 + 1;
                }

                if (v706)
                {
                  v10 = v706 >> 1;
                }

                else
                {
                  v10 = v706 >> 1;
                }

                v177 = re::TimelineAsset::assetType(v174);
                v178 = re::ImportAssetTable::importedAsset(v175, v176, v10, v177);
                v179 = v178;
                if (!v178)
                {
                  v180 = re::globalAllocators(0);
                  v181 = (*(*v180[2] + 32))(v180[2], 200, 8);
                  v182 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v670);
                  re::SampledAnimationAssetData<re::SkeletalPoseAssetData>::SampledAnimationAssetData(v181, v182 + 32);
                  *v181 = &unk_1F5CC0838;
                  re::AssetHandle::AssetHandle((v181 + 128), (v182 + 160));
                  re::DynamicArray<re::StringID>::DynamicArray(v181 + 152, (v182 + 184));
                  v183 = *(v182 + 224);
                  *(v181 + 194) = *(v182 + 226);
                  *(v181 + 192) = v183;
                  re::DynamicString::format(buf, "SkeletalPose.SkeletalPoses[%u]", v184, v667);
                  v676 = v181;
                  re::DynamicString::operator=((v181 + 40), buf);
                  if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                  {
                    (*(*buf[0].n128_u64[0] + 40))();
                  }

                  re::AssetHandle::operator=(v181 + 128, v710);
                  if (*(*(v35 + 40) + 160) == 1)
                  {
                    v675 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v170);
                    memset(v844, 0, 24);
                    v186 = *(v181 + 168);
                    v187 = v181;
                    v674 = *(v181 + 168);
                    if (v674)
                    {
                      v188 = 0;
                      Asset = 0;
                      v189 = 0;
                      do
                      {
                        v190 = *(v187 + 168);
                        v678 = v189;
                        if (v190 <= v189)
                        {
                          goto LABEL_739;
                        }

                        v35 = *(v187 + 184);
                        v191 = 0xBF58476D1CE4E5B9 * ((*(v35 + v188) >> 31) ^ (*(v35 + v188) >> 1));
                        v10 = v675;
                        v192 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v675 + 128, (v35 + v188), (0x94D049BB133111EBLL * (v191 ^ (v191 >> 27))) ^ ((0x94D049BB133111EBLL * (v191 ^ (v191 >> 27))) >> 31), buf);
                        if (buf[0].n128_u32[3] == 0x7FFFFFFF)
                        {
                          v193 = *re::pipelineLogObjects(v192);
                          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
                          {
                            if (v706)
                            {
                              v10 = v707;
                            }

                            else
                            {
                              v10 = &v706 + 1;
                            }

                            v194 = v193;
                            v195 = *(v35 + v188 + 8);
                            buf[0].n128_u32[0] = 136315394;
                            *(buf[0].n128_u64 + 4) = v10;
                            buf[0].n128_u16[6] = 2080;
                            *(&buf[0].n128_u64[1] + 6) = v195;
                            _os_log_impl(&dword_1E1C61000, v194, OS_LOG_TYPE_DEFAULT, "[%s] Unknown animated joint: %s\n", buf, 0x16u);
                          }

                          v196 = *&v844[8];
                          v197 = v678;
                          v128 = v694;
                          if (*&v844[8] <= v678)
                          {
                            goto LABEL_755;
                          }

                          v198 = (*&v844[16] + Asset);
                          v198[1] = 1065353216;
                          v198[2] = 0;
                          *v198 = 0x3F8000003F800000;
                          v198[3] = 0x3F80000000000000;
                          v198[4] = 0;
                          v198[5] = 0;
                        }

                        else
                        {
                          v196 = *(*(v675 + 18) + 32 * buf[0].n128_u32[3] + 24);
                          v35 = *(v675 + 11);
                          if (v35 <= v196)
                          {
                            goto LABEL_751;
                          }

                          v35 = *&v844[8];
                          v197 = v678;
                          if (*&v844[8] <= v678)
                          {
                            goto LABEL_759;
                          }

                          v199 = (*(v675 + 12) + 48 * v196);
                          v200 = (*&v844[16] + Asset);
                          v201 = v199[2];
                          v202 = *v199;
                          v200[1] = v199[1];
                          v200[2] = v201;
                          *v200 = v202;
                        }

                        v189 = v197 + 1;
                        Asset += 48;
                        v188 += 16;
                        v35 = v681;
                        v187 = v676;
                      }

                      while (v674 != v189);
                    }

                    v203 = *(v187 + 104);
                    *v843 = *(v187 + 120);
                    *&v843[8] = v203;
                    buf[0].n128_u64[0] = v844;
                    buf[0].n128_u64[1] = 1;
                    *(v187 + 72) = re::AnimationHelper::makeAdditiveForValues<re::SkeletalPoseAssetData>(v843, buf, *v843, v203);
                    if (*v844 && *&v844[8])
                    {
                      (*(**v844 + 40))();
                    }

                    v181 = v676;
                  }

                  v204 = *(a3 + 104);
                  if (v706)
                  {
                    v205 = v707;
                  }

                  else
                  {
                    v205 = &v706 + 1;
                  }

                  if (v706)
                  {
                    v206 = v706 >> 1;
                  }

                  else
                  {
                    v206 = v706 >> 1;
                  }

                  v207 = re::AssetHelper::makeTimelineAsset(v181, v185);
                  v208 = re::TimelineAsset::assetType(v207);
                  v178 = re::ImportAssetTable::addAsset(v204, v205, v206, v207, v208);
                  v179 = v178;
                }

                memset(v844, 0, 24);
                if (*(v179 + 8))
                {
                  v209 = *(v179 + 2);
                }

                else
                {
                  v209 = (v179 + 9);
                }

                v10 = v684;
                v11 = v749;
                Asset = v670;
                if (v749 <= v670)
                {
                  goto LABEL_787;
                }

                if (*(v750 + 4 * v670) == -1)
                {
                  v210 = *(*(v179 + 5) + 8);
                  if (*(v210 + 104))
                  {
                    v211 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, v670);
                    v212 = (*(v210 + 84) - *(v210 + 80));
                    buf[0].n128_u64[0] = *(v211 + 232);
                    buf[0].n128_f64[1] = v212;
                    re::AssetHandle::AssetHandle(&buf[1], v844);
                    re::AssetHandle::~AssetHandle(&buf[1]);
                    v213 = v749;
                    if (v749 <= v670)
                    {
                      goto LABEL_799;
                    }

                    *(v750 + 4 * v670) = v667;
                  }
                }

                if (v705 && (v706 & 1) != 0)
                {
                  (*(*v705 + 40))();
                }

                v214 = *(v669 - 16);
                *(v669 - 16) = *&v844[8];
                *&v844[8] = v214;
                v215 = *(v669 - 24);
                *(v669 - 24) = 0;
                *(v669 - 24) = *v844;
                *v844 = v215;
                v216 = *(v669 - 8);
                *(v669 - 8) = *&v844[16];
                *&v844[16] = v216;
                re::AssetHandle::~AssetHandle(v844);
                re::AssetHandle::~AssetHandle(v710);
              }

              goto LABEL_173;
            }

            *(v162 - 56) = -1;
            *(v162 - 72) = *&v814[8];
          }

LABEL_172:
          v128 = v694;
LABEL_173:
          if (v814[0] == 1)
          {
            re::AssetHandle::~AssetHandle(&v815[2]);
          }

          goto LABEL_175;
        }

        Asset = *re::pipelineLogObjects(0);
        v10 = v684;
        if (os_log_type_enabled(Asset, OS_LOG_TYPE_ERROR))
        {
          v217 = Asset;
          v218 = v139->var1;
          buf[0].n128_u32[0] = 136315138;
          *(buf[0].n128_u64 + 4) = v218;
          _os_log_error_impl(&dword_1E1C61000, v217, OS_LOG_TYPE_ERROR, "Could not locate skeleton asset: %s", buf, 0xCu);
        }
      }
    }

    v814[0] = 0;
    goto LABEL_172;
  }

  v682 = 0;
  v35 = v681;
LABEL_348:
  v34 = a3;
  v117 = v682;
  if (*(&v741 + 1))
  {
    v814[0] = 0;
    *&v814[2] = 257;
    v814[4] = 1;
    *&v814[5] = 0x101000000000000;
    v814[13] = 1;
    v29 = v814;
    v816 = 0u;
    memset(&v815[2], 0, 32);
    DWORD1(v816) = 0x7FFFFFFF;
    v814[1] = *(a3 + 161);
    v814[6] = *(a3 + 164);
    v815[0] = v814[6];
    re::USDImportContext::generatePerMeshCompileOptions(v35, v814, v810);
    MeshAssetDataFromDescriptor = re::makeMeshAssetDataFromDescriptor(&v737, v810, v799);
    if (v799[0].n128_u8[0] == 1)
    {
      v709 = 0;
      v706 = 0;
      v707 = 0;
      v705 = 0;
      v708 = 0;
      re::DynamicArray<re::AssetHandle>::resize(&v705, v804);
      v117 = v799[1].n128_u64[1];
      if (v799[1].n128_u64[1])
      {
        v321 = 0;
        v29 = WORD4(v782);
        do
        {
          Asset = v799[1].n128_u64[1];
          if (v799[1].n128_u64[1] <= v321)
          {
            goto LABEL_747;
          }

          v322 = v799[2].n128_u64[1] + (v321 << 9);
          v323 = *(v322 + 208);
          if (v323)
          {
            v35 = v323 << 8;
            v36 = *(v322 + 224) + 56;
            do
            {
              Asset = *v36;
              v320 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v776, v321);
              v324 = v29;
              if (*(v320 + 1) > Asset)
              {
                v320 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v776, v321);
                v10 = *(v320 + 1);
                if (v10 <= Asset)
                {
                  goto LABEL_498;
                }

                v324 = *(*(v320 + 2) + 2 * Asset);
              }

              *v36 = v324;
              v36 += 256;
              v35 -= 256;
            }

            while (v35);
          }
        }

        while (++v321 != v117);
      }

      v325 = *&v746[40];
      if (*&v746[40])
      {
        v326 = 0;
        v327 = *&v746[24];
        while (1)
        {
          v328 = *v327;
          v327 += 8;
          if (v328 < 0)
          {
            break;
          }

          if (*&v746[40] == ++v326)
          {
            LODWORD(v326) = *&v746[40];
            break;
          }
        }
      }

      else
      {
        LODWORD(v326) = 0;
      }

      if (v326 != *&v746[40])
      {
        v351 = *&v746[24];
        v702.i64[0] = 136315138;
        Asset = "Could not locate skeleton asset: %s";
        do
        {
          v352 = *(a3 + 104);
          v353 = v351 + 32 * v326;
          v354 = *(v353 + 16);
          v355 = strlen(v354);
          v356 = re::SkeletonAsset::assetType(v355);
          v357 = re::ImportAssetTable::importedAsset(v352, v354, v355, v356);
          if (v357)
          {
            v11 = *(v353 + 24);
            v10 = v707;
            if (v707 <= v11)
            {
              goto LABEL_783;
            }

            if (*(v357 + 8))
            {
              v358 = *(v357 + 16);
            }

            else
            {
              v358 = (v357 + 9);
            }

            v360 = (v709 + 24 * v11);
          }

          else
          {
            v359 = *re::pipelineLogObjects(0);
            if (os_log_type_enabled(v359, OS_LOG_TYPE_ERROR))
            {
              v362 = *(v353 + 16);
              buf[0].n128_u32[0] = 136315138;
              *(buf[0].n128_u64 + 4) = v362;
              _os_log_error_impl(&dword_1E1C61000, v359, OS_LOG_TYPE_ERROR, "Could not locate skeleton asset: %s", buf, 0xCu);
            }
          }

          if (*&v746[40] <= (v326 + 1))
          {
            v361 = v326 + 1;
          }

          else
          {
            v361 = *&v746[40];
          }

          v351 = *&v746[24];
          while (v361 - 1 != v326)
          {
            LODWORD(v326) = v326 + 1;
            if ((*(*&v746[24] + 32 * v326) & 0x80000000) != 0)
            {
              goto LABEL_472;
            }
          }

          LODWORD(v326) = v361;
LABEL_472:
          ;
        }

        while (v326 != v325);
      }

      v35 = v681;
      if (v682)
      {
        if (v735)
        {
          v699 = v799[1].n128_u64[1];
          if (v799[1].n128_u64[1])
          {
            v10 = 0;
            v34 = v843;
            while (1)
            {
              v331 = v799[1].n128_i64[1];
              if (v799[1].n128_u64[1] <= v10)
              {
                break;
              }

              v332 = (v799[2].n128_u64[1] + (v10 << 9));
              v29 = v332[36];
              if (v29)
              {
                v333 = v29;
              }

              else
              {
                v333 = 1;
              }

              v320 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v730, v10);
              v702.i64[0] = v333;
              if (v333)
              {
                v334 = *(v320 + 2) == v333;
              }

              else
              {
                v334 = 0;
              }

              if (v334)
              {
                Asset = 0;
                v701.i64[0] = v10;
                do
                {
                  v320 = re::BucketArray<re::BufferSlice,8ul>::operator[](&v730, v10);
                  v190 = *(v320 + 2);
                  if (v190 <= Asset)
                  {
                    goto LABEL_743;
                  }

                  v10 = *(v320 + 4) + 72 * Asset;
                  v335 = *(v10 + 8);
                  if (v335 != -1 && *(v10 + 16) != -1)
                  {
                    v336 = re::BucketArray<re::USDImportContextSkeletonData,4ul>::operator[](v35 + 56, v335);
                    re::StringID::StringID(&v797, v336 + 1);
                    v337 = re::BucketArray<re::USDImportContextSkeletalAnimationData,8ul>::operator[](v35 + 160, *(v10 + 16));
                    v320 = re::StringID::StringID(&v796, v337 + 1);
                    v35 = 0;
                    if (v29)
                    {
LABEL_388:
                      v117 = v332[36];
                      if (v117 <= Asset)
                      {
                        goto LABEL_494;
                      }

                      v339 = v332[38];
                      if (v35 < *(v339 + 48 * Asset + 24))
                      {
                        v36 = *(*(v339 + 48 * Asset + 40) + 8 * v35);
                        goto LABEL_392;
                      }
                    }

                    else
                    {
                      while (1)
                      {
                        v36 = v35;
                        if (v35 >= v332[26])
                        {
                          break;
                        }

LABEL_392:
                        v843[0] = 1;
                        v340 = re::DynamicString::format(&v793, "%s-0", v338, v332[1]);
                        if (v794)
                        {
                          v341 = v795;
                        }

                        else
                        {
                          v341 = &v794 + 1;
                        }

                        *&v843[8] = 0;
                        *&v843[16] = &str_67;
                        v117 = v332[26];
                        if (v117 <= v36)
                        {
                          goto LABEL_482;
                        }

                        v342 = v332[28] + (v36 << 8);
                        if (*(v342 + 80))
                        {
                          re::StringID::StringID(&v843[24], (v342 + 72));
                          v36 = &str_67;
                        }

                        else
                        {
                          v36 = &str_67;
                          *&v843[24] = 0;
                          *&v843[32] = &str_67;
                        }

                        if (v793 && (v794 & 1) != 0)
                        {
                          (*(*v793 + 40))();
                        }

                        buf[0].n128_u8[0] = v843[0];
                        re::StringID::StringID(&buf[0].n128_i8[8], &v843[8]);
                        re::StringID::StringID(&buf[1].n128_i8[8], &v843[24]);
                        re::StringID::StringID(&buf[2].n128_i8[8], &v797);
                        re::StringID::StringID(&buf[3].n128_i8[8], &v796);
                        re::AssetHandle::AssetHandle(&buf[4].n128_i8[8], (v10 + 48));
                        memset(v842, 0, 24);
                        re::DynamicArray<re::SkeletalAnimationLibraryEntry>::add(v682, buf);
                        re::AssetHandle::~AssetHandle(v842);
                        re::AssetHandle::~AssetHandle(&buf[4].n128_i8[8]);
                        if (buf[3].n128_u8[8])
                        {
                          if (buf[3].n128_u8[8])
                          {
                          }
                        }

                        buf[4].n128_u64[0] = &str_67;
                        buf[3].n128_u64[1] = 0;
                        if (buf[2].n128_u8[8])
                        {
                          if (buf[2].n128_u8[8])
                          {
                          }
                        }

                        buf[3].n128_u64[0] = &str_67;
                        buf[2].n128_u64[1] = 0;
                        if (buf[1].n128_u8[8])
                        {
                          if (buf[1].n128_u8[8])
                          {
                          }
                        }

                        buf[2].n128_u64[0] = &str_67;
                        buf[1].n128_u64[1] = 0;
                        if (buf[0].n128_u8[8])
                        {
                          if (buf[0].n128_u8[8])
                          {
                          }
                        }

                        re::DynamicArray<re::AssetHandle>::add((v682 + 120), (v10 + 48));
                        buf[0].n128_u8[0] = v843[0];
                        re::StringID::StringID(&buf[0].n128_i8[8], &v843[8]);
                        re::StringID::StringID(&buf[1].n128_i8[8], &v843[24]);
                        re::StringID::StringID(&buf[2].n128_i8[8], &v797);
                        buf[3].n128_u8[8] = 0;
                        buf[3].n128_u32[3] = *v10;
                        v320 = re::DynamicArray<re::SkeletalPoseMeshMap>::add((&v835 + 8), buf);
                        if (buf[2].n128_u8[8])
                        {
                          if (buf[2].n128_u8[8])
                          {
                          }
                        }

                        buf[3].n128_u64[0] = &str_67;
                        buf[2].n128_u64[1] = 0;
                        if (buf[1].n128_u8[8])
                        {
                          if (buf[1].n128_u8[8])
                          {
                          }
                        }

                        buf[2].n128_u64[0] = &str_67;
                        buf[1].n128_u64[1] = 0;
                        if (buf[0].n128_u8[8])
                        {
                          if (buf[0].n128_u8[8])
                          {
                          }
                        }

                        if (v843[24])
                        {
                          if (v843[24])
                          {
                          }
                        }

                        *&v843[24] = 0;
                        *&v843[32] = &str_67;
                        if (v843[8])
                        {
                          if (v843[8])
                          {
                          }
                        }

                        ++v35;
                        if (v29)
                        {
                          goto LABEL_388;
                        }
                      }
                    }

                    if (*&v796.var0)
                    {
                      if (*&v796.var0)
                      {
                      }
                    }

                    v35 = v681;
                    if (*&v797.var0)
                    {
                      if (*&v797.var0)
                      {
                      }
                    }
                  }

                  ++Asset;
                  v10 = v701.i64[0];
                }

                while (Asset != v702.i64[0]);
              }

              if (++v10 == v699)
              {
                goto LABEL_439;
              }
            }

LABEL_795:
            *v844 = 0;
            memset(buf, 0, sizeof(buf));
            v213 = MEMORY[0x1E69E9C10];
            v635 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v843 = 136315906;
            *&v843[4] = "operator[]";
            *&v843[12] = 1024;
            if (v635)
            {
              v636 = 3;
            }

            else
            {
              v636 = 2;
            }

            *&v843[14] = 797;
            *&v843[18] = 2048;
            *&v843[20] = v10;
            *&v843[28] = 2048;
            *&v843[30] = v331;
            _os_log_send_and_compose_impl(v636, v844, buf, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
            _os_crash_msg();
            __break(1u);
LABEL_799:
            v793 = 0;
            memset(buf, 0, sizeof(buf));
            v637 = MEMORY[0x1E69E9C10];
            v638 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v843 = 136315906;
            *&v843[4] = "operator[]";
            *&v843[12] = 1024;
            if (v638)
            {
              v639 = 3;
            }

            else
            {
              v639 = 2;
            }

            *&v843[14] = 468;
            *&v843[18] = 2048;
            *&v843[20] = Asset;
            *&v843[28] = 2048;
            *&v843[30] = v213;
            _os_log_send_and_compose_impl(v639, &v793, buf, 80, &dword_1E1C61000, v637, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
            _os_crash_msg();
            __break(1u);
            goto LABEL_803;
          }
        }
      }

LABEL_439:
      v34 = a3;
      Asset = v799;
      if (a8 && v728)
      {
      }

      if (v721)
      {
        v344 = *v35;
      }

      if (*(a3 + 360) == 1)
      {
        v134 = *(a3 + 104);
        v345 = *(v134 + 112);
        v346 = *(v134 + 120);
        if (v346 >= v345)
        {
          v347 = v346 + 1;
          if (v345 < v346 + 1)
          {
            if (*(v134 + 104))
            {
              v348 = 2 * v345;
              _ZF = v345 == 0;
              v349 = 8;
              if (!_ZF)
              {
                v349 = v348;
              }

              if (v349 <= v347)
              {
                v350 = v347;
              }

              else
              {
                v350 = v349;
              }

              re::DynamicArray<re::MeshAssetData>::setCapacity((v134 + 104), v350);
            }

            else
            {
LABEL_514:
              *(v134 + 104) = v36;
              re::DynamicArray<re::MeshAssetData>::setCapacity((v134 + 104), v347);
              ++*(v134 + 128);
            }
          }

          v346 = *(v134 + 120);
        }

        v389 = *(v134 + 136) + 208 * v346;
        re::DynamicArray<re::MeshAssetModel>::DynamicArray(v389, (Asset + 8));
        re::DynamicArray<re::MeshAssetInstance>::DynamicArray(v389 + 40, &v800);
        re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v389 + 80, &v802 + 1);
        re::DynamicArray<float>::DynamicArray(v389 + 120, &v805 + 1);
        *(v389 + 160) = v808;
        v320 = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v389 + 168, v809);
        ++*(v134 + 120);
        ++*(v134 + 128);
      }

      v390 = re::globalAllocators(v320);
      v391 = (*(*v390[2] + 32))(v390[2], 1272, 8);
      v392 = re::MeshAsset::MeshAsset(v391, Asset + 8);
      re::DynamicArray<re::AssetHandle>::operator=((v392 + 264), &v705);
      v393 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v760);
      v394 = v34[6].n128_u64[1];
      v395 = v758;
      v10 = v759;
      v396 = re::MeshAsset::assetType(v393);
      v397 = re::ImportAssetTable::addAsset(v394, v395, v10, v391, v396);
      if (*(v397 + 8))
      {
        v398 = *(v397 + 16);
      }

      else
      {
        v398 = (v397 + 9);
      }

      v400 = *(&v782 + 1);
      if (v393[8] < *(&v782 + 1))
      {
        v399 = re::DynamicArray<re::AssetHandle>::setCapacity(v393 + 7, *(&v782 + 1));
        v400 = *(&v782 + 1);
      }

      if (v400)
      {
        v401 = 32 * v400;
        v402 = (*v784 + 16);
        do
        {
          memset(buf, 0, 24);
          if (*(v402 - 1))
          {
            v403 = *v402;
          }

          else
          {
            v403 = (v402 - 7);
          }

          re::DynamicArray<re::AssetHandle>::add((v393 + 7), buf);
          re::AssetHandle::~AssetHandle(buf);
          v402 += 4;
          v401 -= 32;
        }

        while (v401);
      }

      re::DynamicArray<re::AssetHandle>::deinit(&v705);
      v117 = v682;
      v29 = v814;
      goto LABEL_529;
    }

    v329 = *re::pipelineLogObjects(MeshAssetDataFromDescriptor);
    if (!os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
    {
LABEL_367:

LABEL_529:
      re::Result<re::MeshAssetData,re::DetailedError>::~Result(v799, v330);
      re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v813);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v810[16]);
      v32.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v29[1]);
      goto LABEL_530;
    }

LABEL_502:
    if (v799[2].n128_u8[0])
    {
      v383 = v799[2].n128_u64[1];
    }

    else
    {
      v383 = &v799[2].n128_i8[1];
    }

    buf[0].n128_u32[0] = 136315394;
    *(buf[0].n128_u64 + 4) = v762;
    buf[0].n128_u16[6] = 2080;
    *(&buf[0].n128_u64[1] + 6) = v383;
    _os_log_error_impl(&dword_1E1C61000, v329, OS_LOG_TYPE_ERROR, "Skipping mesh for entity '%s' due to error: %s", buf, 0x16u);
    goto LABEL_367;
  }

LABEL_530:
  v701.i64[0] = &v754;
  Asset = v756;
  if (!v117)
  {
    if (!v756)
    {
      v439 = 0;
      v440 = a5;
      if (!a9)
      {
        goto LABEL_648;
      }

      goto LABEL_638;
    }

    v404 = re::globalAllocators(v30);
    v117 = (*(*v404[2] + 32))(v404[2], 224, 8);
    *(v117 + 176) = 0u;
    *(v117 + 192) = 0u;
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0u;
    *(v117 + 112) = 0u;
    *(v117 + 128) = 0u;
    *(v117 + 144) = 0u;
    *(v117 + 160) = 0u;
    *(v117 + 196) = 0x7FFFFFFF;
    *(v117 + 208) = 0;
    *(v117 + 216) = &str_67;
  }

  v683 = v117;
  v700 = *(v35 + 48);
  v405 = v758;
  re::TimelineGroupBuilder::TimelineGroupBuilder(v799, v34[6].n128_i64[1], v758, v759);
  if (Asset)
  {
    v407 = 0;
    v702.i64[0] = v752;
    if (v753)
    {
      v35 = &v754;
    }

    else
    {
      v35 = v755;
    }

    while (1)
    {
      v190 = v407 >> 3;
      if (v702.i64[0] <= v407 >> 3)
      {
        break;
      }

      v408 = Asset;
      v409 = (*(v35 + 8 * v190) + 40 * (v407 & 7));
      v410 = *v409;
      v411 = *v409 + v409[1];
      re::AssetHandle::AssetHandle(v843, (v409 + 2));
      v412 = strlen(v405);
      v413.n128_f32[0] = v410;
      re::TimelineGroupBuilder::addTimeline(v799, v843, v405, v412, "entitySceneClip", v413, v411);
      re::AssetHandle::~AssetHandle(v843);
      v414 = *v409;
      v415 = *v409 + v409[1];
      re::AssetHandle::AssetHandle(&v705, (v409 + 2));
      v416 = strlen(v405);
      v417.n128_f32[0] = v414;
      re::TimelineGroupBuilder::addTimeline(v711, &v705, v405, v416, "defaultSceneClip", v417, v415);
      re::AssetHandle::~AssetHandle(&v705);
      v10 = a5;
      v36 = *(a5 + 40);
      if (v36)
      {
        for (k = 0; k != v36; ++k)
        {
          v419 = *re::BucketArray<unsigned long,8ul>::operator[](a5, k);
          v420 = *v409;
          v421 = *v409 + v409[1];
          re::AssetHandle::AssetHandle(v844, (v409 + 2));
          v422 = strlen(v405);
          v423.n128_f32[0] = v420;
          re::TimelineGroupBuilder::addTimeline(v419, v844, v405, v422, "childSceneClip", v423, v421);
          re::AssetHandle::~AssetHandle(v844);
        }
      }

      ++v407;
      Asset = v408;
      if (v407 == v408)
      {
        goto LABEL_542;
      }
    }

LABEL_735:
    *v814 = 0;
    memset(buf, 0, sizeof(buf));
    v592 = MEMORY[0x1E69E9C10];
    v593 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v810 = 136315906;
    *&v810[4] = "operator[]";
    *&v810[12] = 1024;
    if (v593)
    {
      v594 = 3;
    }

    else
    {
      v594 = 2;
    }

    *&v810[14] = 866;
    *&v810[18] = 2048;
    *&v810[20] = v190;
    v811 = 2048;
    *v812 = v702.i64[0];
    _os_log_send_and_compose_impl(v594, v814, buf, 80, &dword_1E1C61000, v592, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v810, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_739:
    v793 = 0;
    memset(buf, 0, sizeof(buf));
    v595 = MEMORY[0x1E69E9C10];
    v596 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v596)
    {
      v597 = 3;
    }

    else
    {
      v597 = 2;
    }

    *&v843[14] = 789;
    *&v843[18] = 2048;
    *&v843[20] = v678;
    *&v843[28] = 2048;
    *&v843[30] = v190;
    _os_log_send_and_compose_impl(v597, &v793, buf, 80, &dword_1E1C61000, v595, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_743:
    *v844 = 0;
    memset(buf, 0, sizeof(buf));
    v321 = MEMORY[0x1E69E9C10];
    v598 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v598)
    {
      v599 = 3;
    }

    else
    {
      v599 = 2;
    }

    *&v843[14] = 797;
    *&v843[18] = 2048;
    *&v843[20] = Asset;
    *&v843[28] = 2048;
    *&v843[30] = v190;
    _os_log_send_and_compose_impl(v599, v844, buf, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_747:
    *v844 = 0;
    memset(buf, 0, sizeof(buf));
    v196 = MEMORY[0x1E69E9C10];
    v600 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v600)
    {
      v601 = 3;
    }

    else
    {
      v601 = 2;
    }

    *&v843[14] = 789;
    *&v843[18] = 2048;
    *&v843[20] = v321;
    *&v843[28] = 2048;
    *&v843[30] = Asset;
    _os_log_send_and_compose_impl(v601, v844, buf, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_751:
    v793 = 0;
    memset(buf, 0, sizeof(buf));
    v602 = MEMORY[0x1E69E9C10];
    v603 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v603)
    {
      v604 = 3;
    }

    else
    {
      v604 = 2;
    }

    *&v843[14] = 476;
    *&v843[18] = 2048;
    *&v843[20] = v196;
    *&v843[28] = 2048;
    *&v843[30] = v35;
    _os_log_send_and_compose_impl(v604, &v793, buf, 80, &dword_1E1C61000, v602, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_755:
    v793 = 0;
    memset(buf, 0, sizeof(buf));
    v605 = MEMORY[0x1E69E9C10];
    v606 = v197;
    v607 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v607)
    {
      v608 = 3;
    }

    else
    {
      v608 = 2;
    }

    *&v843[14] = 468;
    *&v843[18] = 2048;
    *&v843[20] = v606;
    *&v843[28] = 2048;
    *&v843[30] = v196;
    _os_log_send_and_compose_impl(v608, &v793, buf, 80, &dword_1E1C61000, v605, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_759:
    v793 = 0;
    memset(buf, 0, sizeof(buf));
    v609 = MEMORY[0x1E69E9C10];
    v11 = v197;
    v610 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v610)
    {
      v611 = 3;
    }

    else
    {
      v611 = 2;
    }

    *&v843[14] = 468;
    *&v843[18] = 2048;
    *&v843[20] = v11;
    *&v843[28] = 2048;
    *&v843[30] = v35;
    _os_log_send_and_compose_impl(v611, &v793, buf, 80, &dword_1E1C61000, v609, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_763:
    v705 = 0;
    memset(buf, 0, sizeof(buf));
    v612 = MEMORY[0x1E69E9C10];
    v613 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v613)
    {
      v614 = 3;
    }

    else
    {
      v614 = 2;
    }

    *&v843[14] = 789;
    *&v843[18] = 2048;
    *&v843[20] = v36;
    *&v843[28] = 2048;
    *&v843[30] = v11;
    _os_log_send_and_compose_impl(v614, &v705, buf, 80, &dword_1E1C61000, v612, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_767:
    *v843 = 0;
    memset(buf, 0, sizeof(buf));
    v615 = MEMORY[0x1E69E9C10];
    v616 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v814 = 136315906;
    *&v814[4] = "operator[]";
    *&v814[12] = 1024;
    if (v616)
    {
      v617 = 3;
    }

    else
    {
      v617 = 2;
    }

    *v815 = 858;
    *&v815[4] = 2048;
    *&v815[6] = Asset;
    *&v815[14] = 2048;
    *&v815[16] = v11;
    _os_log_send_and_compose_impl(v617, v843, buf, 80, &dword_1E1C61000, v615, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_771:
    v705 = 0;
    memset(buf, 0, sizeof(buf));
    v618 = MEMORY[0x1E69E9C10];
    v619 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v814 = 136315906;
    *&v814[4] = "operator[]";
    *&v814[12] = 1024;
    if (v619)
    {
      v620 = 3;
    }

    else
    {
      v620 = 2;
    }

    *v815 = 858;
    *&v815[4] = 2048;
    *&v815[6] = Asset;
    *&v815[14] = 2048;
    *&v815[16] = v11;
    _os_log_send_and_compose_impl(v620, &v705, buf, 80, &dword_1E1C61000, v618, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_775:
    *v843 = 0;
    memset(buf, 0, sizeof(buf));
    v621 = MEMORY[0x1E69E9C10];
    v622 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v814 = 136315906;
    *&v814[4] = "operator[]";
    *&v814[12] = 1024;
    if (v622)
    {
      v623 = 3;
    }

    else
    {
      v623 = 2;
    }

    *v815 = 858;
    *&v815[4] = 2048;
    *&v815[6] = Asset;
    *&v815[14] = 2048;
    *&v815[16] = v11;
    _os_log_send_and_compose_impl(v623, v843, buf, 80, &dword_1E1C61000, v621, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_779:
    *v843 = 0;
    memset(buf, 0, sizeof(buf));
    v624 = MEMORY[0x1E69E9C10];
    v625 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v814 = 136315906;
    *&v814[4] = "operator[]";
    *&v814[12] = 1024;
    if (v625)
    {
      v626 = 3;
    }

    else
    {
      v626 = 2;
    }

    *v815 = 858;
    *&v815[4] = 2048;
    *&v815[6] = Asset;
    *&v815[14] = 2048;
    *&v815[16] = v11;
    _os_log_send_and_compose_impl(v626, v843, buf, 80, &dword_1E1C61000, v624, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v814, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_783:
    *v844 = 0;
    memset(buf, 0, sizeof(buf));
    v627 = MEMORY[0x1E69E9C10];
    v628 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v628)
    {
      v629 = 3;
    }

    else
    {
      v629 = 2;
    }

    *&v843[14] = 789;
    *&v843[18] = 2048;
    *&v843[20] = v11;
    *&v843[28] = 2048;
    *&v843[30] = v10;
    _os_log_send_and_compose_impl(v629, v844, buf, 80, &dword_1E1C61000, v627, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
LABEL_787:
    v793 = 0;
    memset(buf, 0, sizeof(buf));
    v630 = MEMORY[0x1E69E9C10];
    v631 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v843 = 136315906;
    *&v843[4] = "operator[]";
    *&v843[12] = 1024;
    if (v631)
    {
      v632 = 3;
    }

    else
    {
      v632 = 2;
    }

    *&v843[14] = 468;
    *&v843[18] = 2048;
    *&v843[20] = Asset;
    *&v843[28] = 2048;
    *&v843[30] = v11;
    _os_log_send_and_compose_impl(v632, &v793, buf, 80, &dword_1E1C61000, v630, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v843, 38, v663, v664);
    _os_crash_msg();
    __break(1u);
    goto LABEL_791;
  }

LABEL_542:
  v794 = 0;
  v793 = 0;
  v795 = 0;
  v34 = a3;
  if (*(&v824 + 1) | *(&v827 + 1))
  {
    re::DynamicString::format(buf, "%s_defaultTimelineGroupPoses", v406, v405);
    v424 = *(a3 + 104);
    if (buf[0].n128_u8[8])
    {
      v425 = buf[1].n128_u64[0];
    }

    else
    {
      v425 = &buf[0].n128_i8[9];
    }

    v426 = strlen(v425);
    v427 = re::globalAllocators(v426);
    v428 = (*(*v427[2] + 32))(v427[2], 320, 8);
    v429 = re::DynamicArray<re::AssetHandle>::DynamicArray(v428, &v817);
    re::DynamicArray<re::StringID>::DynamicArray(v429 + 40, &v819 + 1);
    re::DynamicArray<re::StringID>::DynamicArray(v428 + 80, &v821[16]);
    re::DynamicArray<re::FixedArray<re::StringID>>::DynamicArray(v428 + 120, &v823 + 1);
    v430 = re::DynamicArray<re::FixedArray<re::StringID>>::DynamicArray(v428 + 160, &v826 + 1);
    *(v428 + 200) = 0;
    *(v428 + 232) = 0;
    *(v428 + 208) = 0;
    *(v428 + 216) = 0;
    *(v428 + 224) = 0;
    if (*(&v829 + 1))
    {
      v431 = *(&v830 + 1);
      *(v428 + 200) = *(&v829 + 1);
      v430 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v428 + 200), v431);
      ++*(v428 + 224);
      v432 = *(&v830 + 1);
      v433 = *(v428 + 216);
      if (*(&v830 + 1) >= v433)
      {
        v430 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v428 + 200), *(&v830 + 1));
        v441 = v832;
        v442 = *(v428 + 216);
        v443 = *(v428 + 232);
        if (v442)
        {
          v444 = 24 * v442;
          do
          {
            v430 = re::FixedArray<re::GenericSRT<float>>::operator=(v443, v441);
            v441 += 3;
            v443 += 3;
            v444 -= 24;
          }

          while (v444);
          v443 = *(v428 + 232);
          v442 = *(v428 + 216);
          v441 = v832;
        }

        if (v442 != v432)
        {
          v445 = 3 * v442;
          v446 = &v441[v445];
          v430 = &v443[v445];
          v447 = 24 * v432 - 8 * v445;
          do
          {
            v448 = re::FixedArray<re::GenericSRT<float>>::FixedArray(v430, v446);
            v446 += 3;
            v430 = v448 + 3;
            v447 -= 24;
          }

          while (v447);
        }
      }

      else
      {
        v434 = *(v428 + 232);
        if (*(&v830 + 1))
        {
          v435 = v832;
          v436 = 24 * *(&v830 + 1);
          do
          {
            v430 = re::FixedArray<re::GenericSRT<float>>::operator=(v434, v435);
            v435 += 3;
            v434 += 3;
            v436 -= 24;
          }

          while (v436);
          v434 = *(v428 + 232);
          v433 = *(v428 + 216);
        }

        if (v432 != v433)
        {
          v437 = &v434[3 * v432];
          v438 = 24 * v433 - 24 * v432;
          do
          {
            v430 = re::FixedArray<CoreIKTransform>::deinit(v437);
            v437 += 3;
            v438 -= 24;
          }

          while (v438);
        }
      }

      *(v428 + 216) = v432;
    }

    *(v428 + 240) = 0;
    *(v428 + 272) = 0;
    *(v428 + 248) = 0;
    *(v428 + 256) = 0;
    *(v428 + 264) = 0;
    if (*(&v832 + 1))
    {
      v449 = *(&v833 + 1);
      *(v428 + 240) = *(&v832 + 1);
      v430 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v428 + 240), v449);
      ++*(v428 + 264);
      v450 = *(&v833 + 1);
      v451 = *(v428 + 256);
      if (*(&v833 + 1) >= v451)
      {
        v430 = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v428 + 240), *(&v833 + 1));
        v457 = v835;
        v458 = *(v428 + 256);
        v459 = *(v428 + 272);
        if (v458)
        {
          v460 = 24 * v458;
          do
          {
            v430 = re::FixedArray<re::Matrix4x4<float>>::operator=(v459, v457);
            v457 += 3;
            v459 += 3;
            v460 -= 24;
          }

          while (v460);
          v459 = *(v428 + 272);
          v458 = *(v428 + 256);
          v457 = v835;
        }

        if (v458 != v450)
        {
          v461 = 3 * v458;
          v462 = &v457[v461];
          v430 = &v459[v461];
          v463 = 24 * v450 - 8 * v461;
          do
          {
            v464 = re::FixedArray<re::Matrix4x4<float>>::FixedArray(v430, v462);
            v462 += 3;
            v430 = v464 + 3;
            v463 -= 24;
          }

          while (v463);
        }
      }

      else
      {
        v452 = *(v428 + 272);
        if (*(&v833 + 1))
        {
          v453 = v835;
          v454 = 24 * *(&v833 + 1);
          do
          {
            v430 = re::FixedArray<re::Matrix4x4<float>>::operator=(v452, v453);
            v453 += 3;
            v452 += 3;
            v454 -= 24;
          }

          while (v454);
          v452 = *(v428 + 272);
          v451 = *(v428 + 256);
        }

        if (v450 != v451)
        {
          v455 = &v452[3 * v450];
          v456 = 24 * v451 - 24 * v450;
          do
          {
            v430 = re::FixedArray<CoreIKTransform>::deinit(v455);
            v455 += 3;
            v456 -= 24;
          }

          while (v456);
        }
      }

      *(v428 + 256) = v450;
    }

    *(v428 + 312) = 0;
    *(v428 + 288) = 0;
    *(v428 + 296) = 0;
    *(v428 + 280) = 0;
    *(v428 + 304) = 0;
    if (*(&v835 + 1))
    {
      v702.i64[0] = v425;
      v465 = v426;
      v466 = v424;
      v467 = *(&v836 + 1);
      *(v428 + 280) = *(&v835 + 1);
      re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity((v428 + 280), v467);
      ++*(v428 + 304);
      v468 = *(&v836 + 1);
      if (*(&v836 + 1) >= *(v428 + 296))
      {
        re::DynamicArray<re::SkeletalPoseMeshMap>::setCapacity((v428 + 280), *(&v836 + 1));
        v430 = std::__copy_impl::operator()[abi:nn200100]<re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *>(v838, &v838[8 * *(v428 + 296)], *(v428 + 312));
        v472 = *(v428 + 296);
        if (v472 != v468)
        {
          v473 = v838;
          v474 = &v838[8 * v468];
          v475 = *(v428 + 312);
          v476 = v472 << 6;
          do
          {
            v477 = v473 + v476;
            *(v475 + v476) = *(v473 + v476);
            re::StringID::StringID((v475 + v476 + 8), (v473 + v476 + 8));
            re::StringID::StringID((v475 + v476 + 24), (v473 + v476 + 24));
            v430 = re::StringID::StringID((v475 + v476 + 40), (v473 + v476 + 40));
            *(v475 + v476 + 56) = *(v473 + v476 + 56);
            v473 += 8;
            v475 += 64;
          }

          while (v477 + 64 != v474);
        }
      }

      else
      {
        v430 = std::__copy_impl::operator()[abi:nn200100]<re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *,re::SkeletalPoseMeshMap *>(v838, &v838[8 * *(&v836 + 1)], *(v428 + 312));
        v469 = *(v428 + 296);
        if (v468 != v469)
        {
          v470 = (v469 << 6) - (v468 << 6);
          v471 = (*(v428 + 312) + (v468 << 6) + 40);
          do
          {
            re::StringID::destroyString(v471);
            re::StringID::destroyString((v471 - 16));
            re::StringID::destroyString((v471 - 32));
            v471 = (v471 + 64);
            v470 -= 64;
          }

          while (v470);
        }
      }

      *(v428 + 296) = v468;
      v34 = a3;
      v424 = v466;
      v426 = v465;
      v425 = v702.i64[0];
    }

    v478 = re::SkeletalPoseDefinitionAsset::assetType(v430);
    v479 = re::ImportAssetTable::addAsset(v424, v425, v426, v428, v478);
    if (*(v479 + 8))
    {
      v480 = *(v479 + 16);
    }

    else
    {
      v480 = (v479 + 9);
    }

    if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
    {
      (*(*buf[0].n128_u64[0] + 40))();
    }
  }

  *(v673 + 56) = v700;
  v481 = re::AssetHandle::operator=(v673 + 64, &v793);
  v482 = re::globalAllocators(v481);
  v483 = (*(*v482[2] + 32))(v482[2], 112, 8);
  *(v483 + 32) = 0u;
  *(v483 + 48) = 0u;
  *(v483 + 64) = 0u;
  *v483 = 0u;
  *(v483 + 16) = 0u;
  *(v483 + 80) = 0;
  *(v483 + 88) = 0;
  *(v483 + 32) = &str_67;
  *(v483 + 40) = 0;
  *(v483 + 48) = 0;
  *(v483 + 56) = 0;
  *(v483 + 64) = 0;
  *(v483 + 96) = 0;
  *(v483 + 104) = 0;
  re::TimelineGroupBuilder::createTimelineAsset(buf, v799, "default scene animation");
  v484 = *(v483 + 8);
  v485 = *(v483 + 16);
  *(v483 + 8) = buf[0].n128_u64[1];
  buf[0].n128_u64[1] = v484;
  v486 = *v483;
  *v483 = 0;
  *v483 = buf[0].n128_u64[0];
  *(v483 + 16) = buf[1].n128_u64[0];
  buf[0].n128_u64[0] = v486;
  buf[1].n128_u64[0] = v485;
  re::AssetHandle::~AssetHandle(buf);
  re::StringID::operator=((v483 + 24), &v761);
  *(v483 + 80) = v700;
  re::AssetHandle::operator=(v483 + 88, &v793);
  re::DynamicString::format(v810, "%s_defaultEntityScene", v487, v758);
  v488 = v34[6].n128_u64[1];
  if (v810[8])
  {
    v489 = *&v810[16];
  }

  else
  {
    v489 = &v810[9];
  }

  v490 = strlen(v489);
  v491 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v492 = re::ImportAssetTable::addAsset(v488, v489, v490, v483, v491);
  buf[0].n128_u64[0] = 0;
  buf[0].n128_u64[1] = &str_67;
  memset(&buf[1], 0, 24);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v683 + 80), buf);
  re::AssetHandle::~AssetHandle(&buf[1]);
  if (buf[0].n128_u8[0])
  {
    if (buf[0].n128_u8[0])
    {
    }
  }

  v494 = *(v683 + 14) + 40 * *(v683 + 12);
  re::StringID::destroyString((v494 - 40));
  *(v494 - 40) = 0x7AAA0A2456EA1222;
  *(v494 - 32) = "default scene animation";
  if (*(v492 + 8))
  {
    v496 = *(v492 + 16);
  }

  else
  {
    v496 = (v492 + 9);
  }

  v35 = v681;
  memset(buf, 0, 24);
  re::DynamicArray<re::AssetHandle>::add((v683 + 120), buf);
  re::AssetHandle::~AssetHandle(buf);
  v498 = (*(v683 + 19) + 24 * *(v683 + 17) - 24);
  if (*(v492 + 8))
  {
    v499 = *(v492 + 16);
  }

  else
  {
    v499 = (v492 + 9);
  }

  v501 = re::globalAllocators(v500);
  v502 = (*(*v501[2] + 32))(v501[2], 112, 8);
  *(v502 + 32) = 0u;
  *(v502 + 48) = 0u;
  *(v502 + 64) = 0u;
  *v502 = 0u;
  *(v502 + 16) = 0u;
  *(v502 + 80) = 0;
  *(v502 + 88) = 0;
  *(v502 + 32) = &str_67;
  *(v502 + 48) = 0;
  *(v502 + 56) = 0;
  *(v502 + 64) = 0;
  *(v502 + 40) = 0;
  *(v502 + 96) = 0;
  *(v502 + 104) = 0;
  re::TimelineGroupBuilder::createTimelineAsset(buf, v711, "default subtree animation");
  v503 = *(v502 + 8);
  v504 = *(v502 + 16);
  *(v502 + 8) = buf[0].n128_u64[1];
  buf[0].n128_u64[1] = v503;
  v505 = *v502;
  *v502 = 0;
  *v502 = buf[0].n128_u64[0];
  *(v502 + 16) = buf[1].n128_u64[0];
  buf[0].n128_u64[0] = v505;
  buf[1].n128_u64[0] = v504;
  re::AssetHandle::~AssetHandle(buf);
  re::StringID::operator=((v502 + 24), v673);
  re::DynamicArray<re::AnimationSceneEntityData>::operator=(v502 + 40, (v673 + 16));
  *(v502 + 80) = *(v673 + 56);
  re::AssetHandle::operator=(v502 + 88, (v673 + 64));
  re::DynamicString::format(v814, "%s_defaultAnimationScene", v506, v758);
  v507 = v34[6].n128_u64[1];
  if (v814[8])
  {
    v508 = *&v815[2];
  }

  else
  {
    v508 = &v814[9];
  }

  v10 = strlen(v508);
  v509 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v510 = re::ImportAssetTable::addAsset(v507, v508, v10, v502, v509);
  memset(buf, 0, 24);
  v439 = v683;
  re::DynamicArray<re::AssetHandle>::add((v683 + 120), buf);
  re::AssetHandle::~AssetHandle(buf);
  v512 = (*(v439 + 152) + 24 * *(v439 + 136) - 24);
  if (*(v510 + 8))
  {
    v513 = *(v510 + 16);
  }

  else
  {
    v513 = (v510 + 9);
  }

  buf[0].n128_u64[0] = 0;
  buf[0].n128_u64[1] = &str_67;
  memset(&buf[1], 0, 24);
  re::DynamicArray<re::NamedAnimationLibraryEntry>::add((v683 + 80), buf);
  re::AssetHandle::~AssetHandle(&buf[1]);
  if (buf[0].n128_u8[0])
  {
    if (buf[0].n128_u8[0])
    {
    }
  }

  v515 = *(v683 + 14) + 40 * *(v683 + 12);
  re::StringID::destroyString((v515 - 40));
  *(v515 - 40) = 0x68ABFF436306FF46;
  *(v515 - 32) = "default subtree animation";
  if (*(v510 + 8))
  {
    Asset = *(v510 + 16);
  }

  else
  {
    Asset = v510 + 9;
  }

  if (*v814 && (v814[8] & 1) != 0)
  {
    (*(**v814 + 40))();
  }

  if (*v810 && (v810[8] & 1) != 0)
  {
    (*(**v810 + 40))();
  }

  re::AssetHandle::~AssetHandle(&v793);
  re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(&v800.n128_i64[1]);
  if (v800.n128_u64[1])
  {
    v517 = v801.i32[2];
    if ((v801.i8[8] & 1) == 0)
    {
      (*(*v800.n128_u64[1] + 40))();
      v517 = v801.i32[2];
    }

    v800.n128_u64[1] = 0;
    v801.i64[0] = 0;
    v801.i32[2] = (v517 | 1) + 2;
  }

  if (v799[0].n128_u64[1] && (v799[1].n128_u8[0] & 1) != 0)
  {
    (*(*v799[0].n128_u64[1] + 40))();
  }

  v440 = a5;
  if (!a9)
  {
LABEL_648:
    if (!v439)
    {
LABEL_682:
      v566 = re::BucketArray<unsigned long,32ul>::operator[](v35 + 680, v677);
      v567 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v35 + 624, *v566);
      v568 = v567;
      if (*(v567 + 117))
      {
        v569 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AudioPlayerComponent>(&v760);
        Asset = v569;
        if (!v764[0])
        {
          v764[0] = v36;
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v764, 0);
          ++v766;
        }

        v35 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 248, 0);
        v570 = re::ecs2::AudioAnimationComponent::AudioAnimationComponent(v35);
        v799[0].n128_u64[0] = *((*(*v571 + 40))(v571, v570) + 24) >> 1;
        v799[0].n128_u64[1] = v35;
        v799[1].n128_u8[0] = 1;
        re::DynamicArray<re::BufferView>::add(v764, v799);
        v572 = *(v568 + 117);
        *(v35 + 56) = vrev64_s32(v572[2]);
        if (*(*(v681 + 40) + 96) == 1)
        {
          re::AssetHandle::AssetHandle(v799, &v572[6]);
          re::AssetHandle::AssetHandle(v704, v799);
          re::ecs2::AudioPlayerComponent::registerAudioAsset(Asset, v704);
          re::AssetHandle::~AssetHandle(v704);
          re::AssetHandle::operator=(v35 + 72, v799);
          re::AssetHandle::~AssetHandle(v799);
        }
      }

      v573 = *(v568 + 6);
      v574 = re::HashTable<re::DynamicString,re::DynamicArray<re::AssetHandle>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v34[19].n128_i64[1], v799);
      if (v574)
      {
        v575 = v574;
        if (!v764[0] || !v765)
        {
          goto LABEL_695;
        }

        v576 = (*&v767[0] + 8);
        v577 = 24 * v765;
        while (*(v576 - 1) != (*(re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1))
        {
          v576 += 3;
          v577 -= 24;
          if (!v577)
          {
            goto LABEL_695;
          }
        }

        v578 = *v576;
        if (!*v576)
        {
LABEL_695:
          v578 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AudioPlayerComponent>(&v760);
        }

        v579 = *(v575 + 16);
        if (v579)
        {
          v580 = *(v575 + 32);
          v581 = 24 * v579;
          do
          {
            re::AssetHandle::AssetHandle(v703, v580);
            re::ecs2::AudioPlayerComponent::registerAudioAsset(v578, v703);
            re::AssetHandle::~AssetHandle(v703);
            v580 = (v580 + 24);
            v581 -= 24;
          }

          while (v581);
        }
      }

      if (v799[0].n128_u64[0] && (v799[0].n128_u8[8] & 1) != 0)
      {
        (*(*v799[0].n128_u64[0] + 40))();
      }

      *a1 = 1;
      re::ecs2::EntityAssetData::EntityAssetData(a1 + 8, &v760);
      re::BucketArray<re::TimelineGroupBuilder::TimelineData,8ul>::deinit(v714);
      if (v714[0])
      {
        v582 = v715;
        if ((v715 & 1) == 0)
        {
          (*(*v714[0] + 40))();
          v582 = v715;
        }

        v714[0] = 0;
        v714[1] = 0;
        v715 = (v582 | 1) + 2;
      }

      if (v712 && (v713 & 1) != 0)
      {
        (*(*v712 + 40))();
      }

      v190 = v717;
      if (v721)
      {
        v583 = 0;
        while (v717 > v583 >> 3)
        {
          if (v721 == ++v583)
          {
            goto LABEL_715;
          }
        }

        v585 = v583 >> 3;
        *v711 = 0;
        v801 = 0u;
        v800 = 0u;
        memset(v799, 0, sizeof(v799));
        v586 = MEMORY[0x1E69E9C10];
        v587 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        buf[0].n128_u32[0] = 136315906;
        *(buf[0].n128_u64 + 4) = "operator[]";
        buf[0].n128_u16[6] = 1024;
        if (v587)
        {
          v588 = 3;
        }

        else
        {
          v588 = 2;
        }

        *(&buf[0].n128_u32[3] + 2) = 858;
        buf[1].n128_u16[1] = 2048;
        *(buf[1].n128_u64 + 4) = v585;
        buf[1].n128_u16[6] = 2048;
        *(&buf[1].n128_u64[1] + 6) = v190;
        _os_log_send_and_compose_impl(v588, v711, v799, 80, &dword_1E1C61000, v586, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v663, v664);
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        while (v717)
        {
LABEL_715:
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v716);
        }

        if (v716 && (v718 & 1) == 0)
        {
          (*(*v716 + 40))();
        }

        v584 = v728;
        if (!v728)
        {
          goto LABEL_810;
        }

        Asset = 0;
        v190 = v724;
        if (v725)
        {
          v35 = &v726;
        }

        else
        {
          v35 = v727;
        }

        v36 = 40;
        while (1)
        {
          v585 = Asset >> 3;
          if (v190 <= Asset >> 3)
          {
            break;
          }

          re::DynamicArray<re::GeomDeformer>::deinit(*(v35 + 8 * v585) + 40 * (Asset++ & 7));
          if (v584 == Asset)
          {
            goto LABEL_809;
          }
        }
      }

      *v711 = 0;
      v801 = 0u;
      v800 = 0u;
      memset(v799, 0, sizeof(v799));
      v589 = MEMORY[0x1E69E9C10];
      v590 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      buf[0].n128_u32[0] = 136315906;
      *(buf[0].n128_u64 + 4) = "operator[]";
      buf[0].n128_u16[6] = 1024;
      if (v590)
      {
        v591 = 3;
      }

      else
      {
        v591 = 2;
      }

      *(&buf[0].n128_u32[3] + 2) = 858;
      buf[1].n128_u16[1] = 2048;
      *(buf[1].n128_u64 + 4) = v585;
      buf[1].n128_u16[6] = 2048;
      *(&buf[1].n128_u64[1] + 6) = v190;
      _os_log_send_and_compose_impl(v591, v711, v799, 80, &dword_1E1C61000, v589, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v663, v664);
      _os_crash_msg();
      __break(1u);
      goto LABEL_735;
    }

LABEL_670:
    v10 = v439;
    re::DynamicString::format(v799, "%s_animationlibrary", v31, v758);
    v559 = re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationLibraryComponent>(&v760);
    v560 = v559;
    v561 = v34[6].n128_u64[1];
    if (v799[0].n128_u8[8])
    {
      v562 = v799[1].n128_u64[0];
    }

    else
    {
      v562 = &v799[0].n128_i8[9];
    }

    if (v799[0].n128_u8[8])
    {
      v563 = v799[0].n128_u64[1] >> 1;
    }

    else
    {
      v563 = v799[0].n128_u8[8] >> 1;
    }

    v564 = re::AnimationLibraryAsset::assetType(v559);
    v565 = re::ImportAssetTable::addAsset(v561, v562, v563, v439, v564);
    if (*(v565 + 8))
    {
      Asset = *(v565 + 16);
    }

    else
    {
      Asset = v565 + 9;
    }

    re::ecs2::EntityAssetData::addComponent<re::ecs2::AnimationComponent>(&v760);
    if (v799[0].n128_u64[0] && (v799[0].n128_u8[8] & 1) != 0)
    {
      (*(*v799[0].n128_u64[0] + 40))();
    }

    goto LABEL_682;
  }

LABEL_638:
  if (!*(v440 + 40))
  {
LABEL_803:
    re::internal::assertLog(4, v31, v32.n128_f64[0], "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
    goto LABEL_804;
  }

  if (!*(*re::BucketArray<unsigned long,8ul>::operator[](v440, 0) + 96))
  {
    goto LABEL_648;
  }

  if (*(v440 + 40))
  {
    v518 = re::BucketArray<unsigned long,8ul>::operator[](v440, 0);
    v519 = *v518;
    if (!v439)
    {
      v520 = re::globalAllocators(v518);
      v439 = (*(*v520[2] + 32))(v520[2], 224, 8);
      *(v439 + 176) = 0u;
      *(v439 + 192) = 0u;
      *v439 = 0u;
      *(v439 + 16) = 0u;
      *(v439 + 32) = 0u;
      *(v439 + 48) = 0u;
      *(v439 + 64) = 0u;
      *(v439 + 80) = 0u;
      *(v439 + 96) = 0u;
      *(v439 + 112) = 0u;
      *(v439 + 128) = 0u;
      *(v439 + 144) = 0u;
      *(v439 + 160) = 0u;
      *(v439 + 196) = 0x7FFFFFFF;
      *(v439 + 208) = 0;
      *(v439 + 216) = &str_67;
    }

    v521 = re::globalAllocators(v518);
    v522 = (*(*v521[2] + 32))(v521[2], 112, 8);
    *(v522 + 32) = 0u;
    *(v522 + 48) = 0u;
    *(v522 + 64) = 0u;
    *v522 = 0u;
    *(v522 + 16) = 0u;
    *(v522 + 80) = 0;
    *(v522 + 88) = 0;
    *(v522 + 32) = &str_67;
    *(v522 + 48) = 0;
    *(v522 + 56) = 0;
    *(v522 + 64) = 0;
    *(v522 + 40) = 0;
    *(v522 + 96) = 0;
    *(v522 + 104) = 0;
    re::TimelineGroupBuilder::createTimelineAsset(v799, v519, "global scene animation");
    v523 = *(v522 + 8);
    v524 = *(v522 + 16);
    *(v522 + 8) = v799[0].n128_u64[1];
    v799[0].n128_u64[1] = v523;
    v525 = *v522;
    *v522 = 0;
    *v522 = v799[0].n128_u64[0];
    *(v522 + 16) = v799[1].n128_u64[0];
    v799[0].n128_u64[0] = v525;
    v799[1].n128_u64[0] = v524;
    re::AssetHandle::~AssetHandle(v799);
    v526 = v439;
    re::StringID::operator=((v522 + 24), a6);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v522 + 40, (a6 + 16));
    *(v522 + 80) = *(a6 + 56);
    v527 = *(v522 + 96);
    *(v522 + 96) = *(a6 + 72);
    *(a6 + 72) = v527;
    v528 = *(v522 + 88);
    *(v522 + 88) = 0;
    *(v522 + 88) = *(a6 + 64);
    *(a6 + 64) = v528;
    v529 = *(v522 + 104);
    *(v522 + 104) = *(a6 + 80);
    *(a6 + 80) = v529;
    re::DynamicString::format(v814, "%s_globalAnimationScene", v530, v758);
    v531 = v34[6].n128_u64[1];
    if (v814[8])
    {
      v532 = *&v815[2];
    }

    else
    {
      v532 = &v814[9];
    }

    v533 = strlen(v532);
    v534 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
    v535 = re::ImportAssetTable::addAsset(v531, v532, v533, v522, v534);
    memset(v799, 0, 24);
    re::DynamicArray<re::AssetHandle>::insert((v439 + 120), 0, v799);
    re::AssetHandle::~AssetHandle(v799);
    v537 = *(v439 + 152);
    if (*(v535 + 8))
    {
      v538 = *(v535 + 16);
    }

    else
    {
      v538 = (v535 + 9);
    }

    buf[0].n128_u64[0] = 0;
    buf[0].n128_u64[1] = &str_67;
    memset(&buf[1], 0, 24);
    v539 = *(v439 + 96);
    if (v539 == -1)
    {
      goto LABEL_805;
    }

    if (v539 >= *(v439 + 88))
    {
      re::DynamicArray<re::NamedAnimationLibraryEntry>::growCapacity((v439 + 80), v539 + 1);
      v539 = *(v439 + 96);
    }

    v540 = *(v439 + 112) + 40 * v539;
    if (v539)
    {
      v541 = *(v540 - 40);
      v542 = *(v540 - 32);
      *(v540 - 40) = 0;
      *(v540 - 32) = &str_67;
      *(v540 + 8) = v542;
      v543 = *(v540 - 16);
      v544 = *(v540 - 8);
      *(v540 - 24) = 0;
      *(v540 - 16) = 0;
      *(v540 + 24) = v543;
      *(v540 + 32) = v544;
      *(v540 - 8) = 0;
      *v540 = v541;
      v540 = *(v439 + 112);
      v545 = *(v439 + 96);
      if (v540 + 40 * v545 - 40 != v540)
      {
        v546 = 40 * v545;
        v547 = 40;
        do
        {
          v548 = v540 + v546;
          re::StringID::operator=((v540 + v546 - 40), (v540 + v546 - 80));
          v549 = *(v540 + v546 - 24);
          *(v548 - 24) = *(v548 - 64);
          *(v548 - 64) = v549;
          v550 = *(v540 + v546 - 8);
          *(v548 - 8) = *(v548 - 48);
          *(v548 - 48) = v550;
          v540 -= 40;
          v547 += 40;
        }

        while (v546 != v547);
        v439 = v526;
        v540 = *(v526 + 112);
        v35 = v681;
      }

      re::StringID::operator=(v540, buf);
      v551 = *(v540 + 24);
      *(v540 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = v551;
    }

    else
    {
      v552 = buf[0].n128_u8[0];
      *v540 = *v540 & 0xFFFFFFFFFFFFFFFELL | buf[0].n128_u8[0] & 1;
      *v540 = buf[0].n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v552 & 1;
      *(v540 + 8) = buf[0].n128_u64[1];
      buf[0].n128_u64[1] = &str_67;
      buf[0].n128_u64[0] = 0;
      *(v540 + 16) = 0;
      *(v540 + 24) = 0;
      *(v540 + 32) = 0;
      *(v540 + 24) = buf[1].n128_u64[1];
      buf[1].n128_u64[1] = 0;
    }

    v553 = *(v540 + 16);
    *(v540 + 16) = 0;
    *(v540 + 16) = buf[1].n128_u64[0];
    v554 = *(v540 + 32);
    *(v540 + 32) = buf[2].n128_u64[0];
    buf[1].n128_u64[0] = v553;
    buf[2].n128_u64[0] = v554;
    ++*(v439 + 96);
    ++*(v439 + 104);
    re::AssetHandle::~AssetHandle(&buf[1]);
    if (buf[0].n128_u8[0])
    {
      if (buf[0].n128_u8[0])
      {
      }
    }

    v556 = *(v439 + 112);
    re::StringID::destroyString(v556);
    *v556 = 0x7802B65BF0AE64E6;
    v556[1] = "global scene animation";
    if (*(v535 + 8))
    {
      v558 = *(v535 + 16);
    }

    else
    {
      v558 = (v535 + 9);
    }

    v34 = a3;
    if (*v814 && (v814[8] & 1) != 0)
    {
      (*(**v814 + 40))();
    }

    goto LABEL_670;
  }

LABEL_804:
  re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
  _os_crash("assertion failure: (m_size > 0) Array is empty");
  __break(1u);
LABEL_805:
  *v843 = 0;
  v801 = 0u;
  v800 = 0u;
  memset(v799, 0, sizeof(v799));
  v640 = MEMORY[0x1E69E9C10];
  v641 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v810 = 136315906;
  *&v810[4] = "insert";
  *&v810[12] = 1024;
  if (v641)
  {
    v642 = 3;
  }

  else
  {
    v642 = 2;
  }

  *&v810[14] = 887;
  *&v810[18] = 2048;
  *&v810[20] = 0;
  v811 = 2048;
  *v812 = 0;
  _os_log_send_and_compose_impl(v642, v843, v799, 80, &dword_1E1C61000, v640, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v810, 38, v663, v664);
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_809:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v723);
LABEL_810:
    ;
  }

  while (v724);
  if (v723 && (v725 & 1) == 0)
  {
    (*(*v723 + 40))();
  }

  v643 = v735;
  if (!v735)
  {
    goto LABEL_826;
  }

  v644 = 0;
  v645 = v731;
  if (v732)
  {
    v646 = v668;
  }

  else
  {
    v646 = v734;
  }

  while (v645 > v644 >> 3)
  {
    if (v643 == ++v644)
    {
      goto LABEL_825;
    }
  }

  *v711 = 0;
  v801 = 0u;
  v800 = 0u;
  memset(v799, 0, sizeof(v799));
  v647 = MEMORY[0x1E69E9C10];
  v648 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  buf[0].n128_u32[0] = 136315906;
  *(buf[0].n128_u64 + 4) = "operator[]";
  buf[0].n128_u16[6] = 1024;
  if (v648)
  {
    v649 = 3;
  }

  else
  {
    v649 = 2;
  }

  *(&buf[0].n128_u32[3] + 2) = 858;
  buf[1].n128_u16[1] = 2048;
  *(buf[1].n128_u64 + 4) = v644 >> 3;
  buf[1].n128_u16[6] = 2048;
  *(&buf[1].n128_u64[1] + 6) = v645;
  _os_log_send_and_compose_impl(v649, v711, v799, 80, &dword_1E1C61000, v647, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v663, v664);
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_825:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v730);
LABEL_826:
    ;
  }

  while (v731);
  if (v730 && (v732 & 1) == 0)
  {
    (*(*v730 + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v746[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v743 + 8);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v740 + 8);
  re::DynamicArray<re::ModelWithLodsDescriptor>::deinit(&v737);
  if (v748 && v749)
  {
    (*(*v748 + 40))();
  }

  re::DynamicArray<re::MeshRigGraphIndex>::deinit(&v835 + 8);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v832 + 8);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v829 + 8);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(&v826 + 8);
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit(&v823 + 8);
  re::DynamicArray<re::StringID>::deinit(&v821[16]);
  re::DynamicArray<re::StringID>::deinit(&v819 + 8);
  re::DynamicArray<re::AssetHandle>::deinit(&v817);
  v650 = v756;
  if (!v756)
  {
    goto LABEL_845;
  }

  v651 = 0;
  v652 = v752;
  if (v753)
  {
    v653 = v701.i64[0];
  }

  else
  {
    v653 = v755;
  }

  while (v652 > v651 >> 3)
  {
    re::AssetHandle::~AssetHandle((*(v653 + 8 * (v651 >> 3)) + 40 * (v651 & 7) + 16));
    if (v650 == ++v651)
    {
      goto LABEL_844;
    }
  }

  *&v737 = 0;
  *v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v654 = MEMORY[0x1E69E9C10];
  v655 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v799[0].n128_u32[0] = 136315906;
  *(v799[0].n128_u64 + 4) = "operator[]";
  v799[0].n128_u16[6] = 1024;
  if (v655)
  {
    v656 = 3;
  }

  else
  {
    v656 = 2;
  }

  *(&v799[0].n128_u32[3] + 2) = 858;
  v799[1].n128_u16[1] = 2048;
  *(v799[1].n128_u64 + 4) = v651 >> 3;
  v799[1].n128_u16[6] = 2048;
  *(&v799[1].n128_u64[1] + 6) = v652;
  _os_log_send_and_compose_impl(v656, &v737, &v817, 80, &dword_1E1C61000, v654, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v799, 38, v663, v664);
  _os_crash_msg();
  __break(1u);
  do
  {
LABEL_844:
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v751);
LABEL_845:
    ;
  }

  while (v752);
  if (v751 && (v753 & 1) == 0)
  {
    (*(*v751 + 40))();
  }

  re::ecs2::EntityAssetData::~EntityAssetData(&v760);
  if (v770 && v771)
  {
    (*(*v770 + 40))();
  }

  if (v773 && v774)
  {
    (*(*v773 + 40))();
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v784[8]);
  re::DynamicArray<re::DynamicString>::deinit(&v781);
  v657 = *(&v779 + 1);
  if (*(&v779 + 1))
  {
    v658 = 0;
    do
    {
      v659 = re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](&v776, v658);
      re::FixedArray<CoreIKTransform>::deinit(v659);
      ++v658;
    }

    while (v657 != v658);
  }

  while (*(&v776 + 1))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v776);
  }

  if (v776 && (v777 & 1) == 0)
  {
    (*(*v776 + 40))();
  }

  v660 = v791;
  if (v791)
  {
    v661 = 0;
    do
    {
      re::BucketArray<re::USDImportContextPhysicsColliderData,8ul>::operator[](&v786, v661++);
    }

    while (v660 != v661);
  }

  while (v787)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v786);
  }

  result = v786;
  if (v786)
  {
    if ((v788 & 1) == 0)
    {
      return (*(*v786 + 40))();
    }
  }

  return result;
}

uint64_t re::addPhysicsFromImportContext(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v109 = *MEMORY[0x1E69E9840];
  if (!*(result + 664))
  {
    goto LABEL_63;
  }

  v6 = 0;
  v7 = -1;
  do
  {
    v8 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v5 + 624, v6);
    result = re::StringID::operator==((v8 + 8), (a3 + 8));
    if (result)
    {
      v7 = v6;
    }

    ++v6;
  }

  while (v6 < *(v5 + 83));
  if (v7 == -1)
  {
    goto LABEL_63;
  }

  v9 = re::BucketArray<re::USDImportContext::NodeStackItem,32ul>::operator[](v5 + 624, v7);
  v99 = 0;
  PhysicsColliderData = re::USDImportContext::getPhysicsColliderData(v5, v7);
  v12 = re::cloneCollisionShapeData(PhysicsColliderData, v11);
  CollidesWithEnvironment = re::USDImportContext::getCollidesWithEnvironment(v5, v7);
  if (v12)
  {
    v14 = CollidesWithEnvironment;
    v15 = re::globalAllocators(CollidesWithEnvironment);
    v16 = *(v12 + 8);
    v90 = v14;
    if (v16 == 7)
    {
      v18 = re::convertCompoundToCollisionShape(v12, v5, a2, v7);
      v12 = v18;
      v99 = v19;
      goto LABEL_33;
    }

    v17 = v15[2];
    if (v16 == 6)
    {
      v18 = re::convertFromSerializable(v12, &v99, v17, v17, 1);
LABEL_33:
      v40 = re::globalAllocators(v18);
      v41 = (*(*v40[2] + 32))(v40[2], 16, 8);
      v42 = v99;
      *v41 = v12;
      v41[1] = v42;
      v43 = *(a2 + 104);
      v44 = *(v9 + 16);
      v45 = strlen(v44);
      v46 = re::CollisionShapeAsset::assetType(v45);
      v47 = re::ImportAssetTable::addAsset(v43, v44, v45, v41, v46);
      memset(v101, 0, 24);
      if (*(v47 + 8))
      {
        v48 = *(v47 + 16);
      }

      else
      {
        v48 = (v47 + 9);
      }

      v50 = (a3 + 32);
      if (!*(a3 + 32))
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
        ++*(a3 + 56);
      }

      v51 = (*(**(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 168, 0);
      *v51 = 0u;
      *(v51 + 16) = 0u;
      *(v51 + 48) = 0u;
      *(v51 + 64) = 0u;
      *(v51 + 80) = 0u;
      *(v51 + 96) = 0u;
      *(v51 + 112) = 0u;
      *(v51 + 128) = 0u;
      *(v51 + 144) = 0u;
      *(v51 + 160) = 0;
      *(v51 + 32) = 0u;
      ArcSharedObject::ArcSharedObject(v51, 0);
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *v52 = &unk_1F5CD1300;
      *(v51 + 32) = 0;
      *(v52 + 40) = 0;
      *(v52 + 48) = 0;
      *(v52 + 56) = 0;
      *(v52 + 60) = 0x100000000;
      *(v52 + 68) = -1;
      *(v52 + 152) = 0;
      *(v52 + 72) = 0u;
      *(v52 + 88) = 0u;
      *(v52 + 104) = 0u;
      *(v52 + 120) = 0;
      objc_initWeak((v51 + 160), 0);
      v104.n128_u64[0] = *((*(*v51 + 40))(v51) + 24) >> 1;
      v104.n128_u64[1] = v51;
      LOBYTE(v105) = 1;
      re::DynamicArray<re::BufferView>::add((a3 + 32), &v104);
      re::AssetHandle::operator=(v51 + 32, v101);
      if ((v90 & 1) == 0)
      {
        *(v51 + 64) = 0x100000001;
      }

      v53 = re::ecs2::EntityAssetData::addComponent<re::ecs2::RigidBodyComponent>(a3);
      *(v53 + 120) = 0;
      re::AssetHandle::operator=(v53 + 96, (v9 + 848));
      if ((*(*v99 + 24))(v99) == 6)
      {
        isTaggedAsSceneGroundPlane = re::USDImportContext::isTaggedAsSceneGroundPlane(v5, v7);
        if (isTaggedAsSceneGroundPlane)
        {
          if (!*v50)
          {
            re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
            ++*(a3 + 56);
          }

          re::ecs2::ComponentImpl<re::ecs2::GroundPlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::create(&v95);
          v55 = v95;
          v56 = *((*(*v95 + 40))(v95) + 24) >> 1;
          v57 = v95;
          v95 = 0;
          v104.n128_u64[0] = v56;
          v104.n128_u64[1] = v57;
          LOBYTE(v105) = 1;
          re::DynamicArray<re::BufferView>::add((a3 + 32), &v104);
          if (v95)
          {
          }

          *(v55 + 25) = v90;
          if (!*v50)
          {
            re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 32), 0);
            ++*(a3 + 56);
          }

          re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::create(&v95);
          v59 = *((*(*v95 + 40))(v95) + 24) >> 1;
          v60 = v95;
          v95 = 0;
          v104.n128_u64[0] = v59;
          v104.n128_u64[1] = v60;
          LOBYTE(v105) = 1;
          re::DynamicArray<re::BufferView>::add((a3 + 32), &v104);
          if (v95)
          {
          }
        }
      }

      re::AssetHandle::~AssetHandle(v101);
      goto LABEL_51;
    }

    v98 = 0;
    v20 = re::convertFromSerializable(v12, &v98, v17, v17, 1);
    v21 = re::globalAllocators(v20);
    v22 = (*(*v21[2] + 32))(v21[2], 16, 8);
    v23 = v98;
    *v22 = v12;
    v22[1] = v23;
    v89 = v9;
    v25 = re::DynamicString::format(&v95, "%s_primitive", v24, *(v9 + 16));
    v26 = *(a2 + 104);
    if (v96)
    {
      v27 = *&v97[7];
    }

    else
    {
      v27 = v97;
    }

    v104.n128_u64[0] = 0;
    v104.n128_u64[1] = &str_67;
    v28 = v104.n128_i64[1];
    v29 = strlen(v104.n128_u64[1]);
    v30 = re::CollisionShapeAsset::assetType(v29);
    v31 = re::ImportAssetTable::addAsset(v26, v28, v29, v22, v30);
    v32 = v31;
    if (v104.n128_u8[0])
    {
      if (v104.n128_u8[0])
      {
      }
    }

    memset(v94, 0, sizeof(v94));
    if (*(v32 + 8))
    {
      v33 = *(v32 + 2);
    }

    else
    {
      v33 = (v32 + 9);
    }

    v9 = v89;
    v35 = re::globalAllocators(v34);
    v12 = (*(*v35[2] + 32))(v35[2], 72, 8);
    *(v12 + 8) = 7;
    *v12 = &unk_1F5CC94A0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 48) = 0;
    if (*(v12 + 24))
    {
      re::AssetHandle::operator=(*(v12 + 32) + 48, v94);
      if (*(v12 + 24))
      {
        v36 = *(v12 + 32);
        v36[2] = 0;
        v36[3] = 0;
        v36[4] = 0;
        v36[5] = 0x3F80000000000000;
        PhysicsColliderPose = re::USDImportContext::getPhysicsColliderPose(v5, v7);
        if (PhysicsColliderPose)
        {
          if (!*(v12 + 24))
          {
            goto LABEL_79;
          }

          v38 = *(v12 + 32);
          v39 = PhysicsColliderPose[1];
          *(v38 + 16) = *PhysicsColliderPose;
          *(v38 + 32) = v39;
        }

        *(v12 + 40) = 1;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        re::FixedArray<unsigned long>::init<>(&v91, v17, 1uLL);
        if (v92)
        {
          *v93 = v98;
          v99 = re::convertToCompoundPrimitiveCollisionShape(v12, &v91, v17, v17);
          if (v91 && v92)
          {
            (*(*v91 + 40))();
          }

          re::AssetHandle::~AssetHandle(v94);
          v18 = v95;
          if (v95 && (v96 & 1) != 0)
          {
            v18 = (*(*v95 + 40))();
          }

          goto LABEL_33;
        }

LABEL_75:
        v100 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v101 = 136315906;
        *&v101[4] = "operator[]";
        *&v101[12] = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        *&v101[14] = 468;
        *&v101[18] = 2048;
        *&v101[20] = 0;
        v102 = 2048;
        v103 = 0;
        _os_log_send_and_compose_impl(v84, &v100, &v104, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v88, v89);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v91 = 0;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v104 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v101 = 136315906;
        *&v101[4] = "operator[]";
        *&v101[12] = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        *&v101[14] = 468;
        *&v101[18] = 2048;
        *&v101[20] = 0;
        v102 = 2048;
        v103 = 0;
        _os_log_send_and_compose_impl(v87, &v91, &v104, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v88, v89);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      v91 = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v101 = 136315906;
      *&v101[4] = "operator[]";
      *&v101[12] = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      *&v101[14] = 468;
      *&v101[18] = 2048;
      *&v101[20] = 0;
      v102 = 2048;
      v103 = 0;
      _os_log_send_and_compose_impl(v78, &v91, &v104, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v88, v89);
      _os_crash_msg();
      __break(1u);
    }

    v91 = 0;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v101 = 136315906;
    *&v101[4] = "operator[]";
    *&v101[12] = 1024;
    if (v80)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    *&v101[14] = 468;
    *&v101[18] = 2048;
    *&v101[20] = 0;
    v102 = 2048;
    v103 = 0;
    _os_log_send_and_compose_impl(v81, &v91, &v104, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v101, 38, v88, v89);
    _os_crash_msg();
    __break(1u);
    goto LABEL_75;
  }

LABEL_51:
  result = re::USDImportContext::getPhysicsRigidBodyProperties(v5, v7);
  if (result)
  {
    v62 = result;
    if (!*(a3 + 32))
    {
      goto LABEL_59;
    }

    v63 = *(a3 + 48);
    if (!v63)
    {
      goto LABEL_59;
    }

    v64 = (*(a3 + 64) + 8);
    v65 = 24 * v63;
    while (*(v64 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
    {
      v64 += 3;
      v65 -= 24;
      if (!v65)
      {
        goto LABEL_59;
      }
    }

    v66 = *v64;
    if (!*v64)
    {
LABEL_59:
      v66 = re::ecs2::EntityAssetData::addComponent<re::ecs2::RigidBodyComponent>(a3);
    }

    v67 = *v62;
    v68 = *(v62 + 16);
    v69 = *(v62 + 32);
    *(v66 + 80) = *(v62 + 48);
    *(v66 + 48) = v68;
    *(v66 + 64) = v69;
    *(v66 + 32) = v67;
    result = v99;
    if (v99)
    {
      result = re::MassFrame::makeFromShapeAndMass(&v104, v99, v61, *(v62 + 48));
      v70 = v107;
      v72 = v105;
      v71 = v106;
      *(v66 + 32) = v104;
      *(v66 + 48) = v72;
      *(v66 + 64) = v71;
      *(v66 + 80) = v70;
    }

    *(v66 + 120) = 2;
  }

LABEL_63:
  v73 = *(a3 + 88);
  if (v73)
  {
    v74 = *(a3 + 104);
    v75 = 112 * v73;
    do
    {
      result = re::addPhysicsFromImportContext(v5, a2, v74);
      v74 += 112;
      v75 -= 112;
    }

    while (v75);
  }

  return result;
}

unint64_t re::BucketArray<unsigned long,32ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 8 * (a2 & 0x1F);
}

uint64_t re::BucketArray<re::TimelineGroupBuilder *,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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
  return v5 + 8 * (v2 & 7);
}

_anonymous_namespace_ *re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 8 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

__n128 re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::add(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 8 * v5)
  {
    re::BucketArray<re::createEntityFromImportContext(re::USDImportContext &,re::SceneImportOperation &,unsigned long,re::BucketArray<re::TimelineGroupBuilder *,8ul> &,re::AnimationSceneEntityData &,re::FixedArray<BOOL> &,re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false> *,BOOL)::TransformedMeshItem,8ul>::setBucketsCapacity(a1, (v4 + 8) >> 3);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 3)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v13 = MEMORY[0x1E69E9C10];
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

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 3;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 80 * (v4 & 7));
  v9 = *(a2 + 64);
  v11 = *(a2 + 16);
  v10 = *(a2 + 32);
  v8[3] = *(a2 + 48);
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  result = *a2;
  *v8 = *a2;
  return result;
}

void re::anonymous namespace::wireupPrimitiveShapeHelper(_anonymous_namespace_ *a1, re::Allocator **a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v187 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (v7 <= 1)
  {
    if (!*a3)
    {
      v162 = 1;
      v165 = 0;
      v164 = 0;
      v166 = 0;
      v170 = 0;
      v167 = 0u;
      v168 = 0u;
      v169 = 0;
      v161 = "PrimitiveShape";
      v159 = 0;
      v160 = 0xD2B975F2D13A2E34;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v163, 0);
      ++v166;
      v46 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 144, 0);
      *v46 = 0u;
      v46[1] = 0u;
      v46[2] = 0u;
      v46[3] = 0u;
      v46[4] = 0u;
      v46[5] = 0u;
      v46[6] = 0u;
      v46[7] = 0u;
      v46[8] = 0u;
      ArcSharedObject::ArcSharedObject(v46, 0);
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 28) = 0x1000100010001;
      *(v47 + 36) = xmmword_1E305B4C0;
      *(v47 + 52) = 257;
      *(v47 + 54) = 0;
      *(v47 + 56) = 0;
      *(v47 + 58) = 1;
      *(v47 + 64) = 0u;
      *(v47 + 80) = 0u;
      *(v47 + 96) = 0u;
      *(v47 + 112) = 0x1000100010001;
      *(v47 + 120) = xmmword_1E305B4C0;
      *(v47 + 136) = 257;
      *(v47 + 138) = 0;
      *(v47 + 140) = 1;
      *v47 = &unk_1F5CD08C8;
      v119.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
      v119.n128_u64[1] = v47;
      v120 = 1;
      re::DynamicArray<re::BufferView>::add(&v163, &v119);
      v48 = *(a3 + 4);
      *(v46 + 39) = *(a3 + 15);
      *(v46 + 28) = v48;
      v49 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v159);
      if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
      {
        *(v49 + 3) = *(a3 + 2);
      }

      v148 = 0;
      v147 = 0u;
      v150 = 0u;
      v151 = 0u;
      v149 = 0;
      v152 = 0;
      v153 = 0u;
      v154 = 0u;
      v155 = 0;
      v156 = 0u;
      memset(v157, 0, sizeof(v157));
      v158 = 0x7FFFFFFFLL;
      re::GeomModelWithLods::GeomModelWithLods(&v134);
      re::GeomModel::GeomModel(&v121);
      re::GeomMesh::GeomMesh(&v119, 0);
      re::internal::buildBoxHelper(&v119, &v171, a3 + 2);
      re::DynamicArray<re::GeomMesh>::add(v123, &v119);
      re::DynamicArray<re::GeomModel>::add(v136, &v121);
      re::DynamicArray<re::GeomModelWithLods>::add(&v147, &v134);
      v171 = xmmword_1E3047670;
      v172 = xmmword_1E3047680;
      *v173 = xmmword_1E30476A0;
      *&v173[16] = xmmword_1E30474D0;
      *&v173[32] = 0;
      re::DynamicArray<re::GeomInstance>::add((&v150 + 8), &v171);
      v111 = 16842752;
      v112 = 1;
      v113 = 0;
      v114 = 0;
      v115 = 65793;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      DWORD1(v118) = 0x7FFFFFFF;
      re::makeMeshAssetDataFromGeomScene(&v147, &v111, &v171);
      v51 = re::globalAllocators(v50);
      v52 = (*(*v51[2] + 32))(v51[2], 1272, 8);
      v53 = v52;
      if (v171 == 1)
      {
        *&v101[0] = *(&v171 + 1);
        *(&v171 + 1) = 0;
        *(v101 + 8) = v172;
        v172 = 0u;
        DWORD2(v101[1]) = 1;
        v54 = *&v173[8];
        memset(&v173[8], 0, 32);
        v102 = v54;
        v103 = *&v173[24];
        ++*v173;
        ++v174;
        LODWORD(v104[0]) = 1;
        *(v104 + 8) = v175;
        *(&v104[1] + 8) = v176;
        v175 = 0u;
        v176 = 0u;
        *(&v107 + 1) = v181;
        DWORD2(v104[2]) = 1;
        v55 = v178;
        v178 = 0u;
        v105 = v55;
        v106 = v179;
        v179 = 0u;
        ++v177;
        ++v180;
        LODWORD(v107) = 1;
        LODWORD(v108) = v182;
        *(&v108 + 1) = v183;
        v181 = 0;
        v183 = 0;
        v109 = v184;
        v184 = 0u;
        *(&v110 + 1) = v186;
        v186 = 0;
        ++v185;
        LODWORD(v110) = 1;
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        memset(v104, 0, sizeof(v104));
        v102 = 0u;
        memset(v101, 0, sizeof(v101));
      }

      re::MeshAsset::MeshAsset(v52, v101);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v108 + 8);
      if (*(&v105 + 1))
      {
        if (*(&v107 + 1))
        {
          (*(**(&v105 + 1) + 40))();
        }

        *(&v107 + 1) = 0;
        v106 = 0uLL;
        *(&v105 + 1) = 0;
        LODWORD(v107) = v107 + 1;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v104[1]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v102 + 8);
      re::DynamicArray<re::MeshAssetModel>::deinit(v101);
      v56 = *(a4 + 8);
      v57 = a2[13];
      v58 = strlen(v56);
      v59 = re::MeshAsset::assetType(v58);
      v60 = re::ImportAssetTable::addAsset(v57, v56, v58, v53, v59);
      v99 = 0;
      v100 = 0;
      v98 = 0;
      if (*(v60 + 8))
      {
        v61 = *(v60 + 16);
      }

      else
      {
        v61 = (v60 + 9);
      }

      re::AssetHandle::setSerializationString(&v98, v61, *a2);
      v62 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v159);
      re::AssetHandle::operator=((v62 + 4), &v98);
      if (*(a5 + 16))
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v63 = re::AssetHandle::serializationString(*(a5 + 32), v101);
        if (BYTE8(v101[0]))
        {
          v64 = *&v101[1];
        }

        else
        {
          v64 = (v101 + 9);
        }

        if (*&v101[0] && (BYTE8(v101[0]) & 1) != 0)
        {
          (*(**&v101[0] + 40))();
        }

        re::DynamicArray<re::AssetHandle>::add((v62 + 7), &v95);
        re::AssetHandle::~AssetHandle(&v95);
      }

      re::DynamicArray<re::ecs2::EntityAssetData>::add(a1 + 72, &v159);
      re::AssetHandle::~AssetHandle(&v98);
      re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v171, v65);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v116);
      re::GeomMesh::~GeomMesh(&v119);
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v133);
      if (v131 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v132);
      }

      if (v129 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v130);
      }

      if (v124)
      {
        if (v128)
        {
          (*(*v124 + 40))();
        }

        v128 = 0;
        v125 = 0;
        v126 = 0;
        v124 = 0;
        ++v127;
      }

      re::DynamicArray<re::GeomMesh>::deinit(v123);
      if (v121 && (v122 & 1) != 0)
      {
        (*(*v121 + 40))();
      }

      if (v142)
      {
        if (v146)
        {
          (*(*v142 + 40))();
        }

        v146 = 0;
        v143 = 0;
        v144 = 0;
        v142 = 0;
        ++v145;
      }

      if (v137)
      {
        if (v141)
        {
          (*(*v137 + 40))();
        }

        v141 = 0;
        v138 = 0;
        v139 = 0;
        v137 = 0;
        ++v140;
      }

      goto LABEL_144;
    }

    if (v7 != 1)
    {
      return;
    }

    v90 = a5;
    v93 = a1;
    v18 = a4;
    v162 = 1;
    v165 = 0;
    v164 = 0;
    v166 = 0;
    v170 = 0;
    v167 = 0u;
    v168 = 0u;
    v169 = 0;
    v161 = "PrimitiveShape";
    v159 = 0;
    v160 = 0xD2B975F2D13A2E34;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v163, 0);
    ++v166;
    v19 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 120, 0);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0;
    ArcSharedObject::ArcSharedObject(v19, 0);
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 28) = 65544;
    *(v20 + 32) = 0x3F0000003F800000;
    *(v20 + 40) = 65793;
    *(v20 + 44) = 0;
    *(v20 + 46) = 1;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 65544;
    *(v20 + 100) = 0x3F0000003F800000;
    *(v20 + 108) = 65793;
    *(v20 + 112) = 1;
    *v20 = &unk_1F5CD0AB8;
    v119.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveConeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
    v119.n128_u64[1] = v20;
    v120 = 1;
    re::DynamicArray<re::BufferView>::add(&v163, &v119);
    *(v19 + 28) = *(a3 + 4);
    v21 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v159);
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
    {
      *(v21 + 3) = *(a3 + 2);
    }

    v148 = 0;
    v147 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0;
    v152 = 0;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    v156 = 0u;
    memset(v157, 0, sizeof(v157));
    v158 = 0x7FFFFFFFLL;
    re::GeomModelWithLods::GeomModelWithLods(&v134);
    re::GeomModel::GeomModel(&v121);
    re::GeomMesh::GeomMesh(&v119, 0);
    re::buildCone(&v119, a3 + 2);
    re::DynamicArray<re::GeomMesh>::add(v123, &v119);
    re::DynamicArray<re::GeomModel>::add(v136, &v121);
    re::DynamicArray<re::GeomModelWithLods>::add(&v147, &v134);
    v171 = xmmword_1E3047670;
    v172 = xmmword_1E3047680;
    *v173 = xmmword_1E30476A0;
    *&v173[16] = xmmword_1E30474D0;
    *&v173[32] = 0;
    re::DynamicArray<re::GeomInstance>::add((&v150 + 8), &v171);
    v111 = 16842752;
    v112 = 1;
    v113 = 0;
    v114 = 0;
    v115 = 65793;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    DWORD1(v118) = 0x7FFFFFFF;
    re::makeMeshAssetDataFromGeomScene(&v147, &v111, &v171);
    v23 = re::globalAllocators(v22);
    v24 = (*(*v23[2] + 32))(v23[2], 1272, 8);
    if (v171 == 1)
    {
      *&v101[0] = *(&v171 + 1);
      *(&v171 + 1) = 0;
      *(v101 + 8) = v172;
      v172 = 0u;
      DWORD2(v101[1]) = 1;
      v25 = *&v173[8];
      memset(&v173[8], 0, 32);
      v102 = v25;
      v103 = *&v173[24];
      ++*v173;
      ++v174;
      LODWORD(v104[0]) = 1;
      *(v104 + 8) = v175;
      *(&v104[1] + 8) = v176;
      v175 = 0u;
      v176 = 0u;
      *(&v107 + 1) = v181;
      DWORD2(v104[2]) = 1;
      v26 = v178;
      v178 = 0u;
      v105 = v26;
      v106 = v179;
      v179 = 0u;
      ++v177;
      ++v180;
      LODWORD(v107) = 1;
      LODWORD(v108) = v182;
      *(&v108 + 1) = v183;
      v181 = 0;
      v183 = 0;
      v109 = v184;
      v184 = 0u;
      *(&v110 + 1) = v186;
      v186 = 0;
      ++v185;
      LODWORD(v110) = 1;
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      memset(v104, 0, sizeof(v104));
      v102 = 0u;
      memset(v101, 0, sizeof(v101));
    }

LABEL_110:
    re::MeshAsset::MeshAsset(v24, v101);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v108 + 8);
    if (*(&v105 + 1))
    {
      if (*(&v107 + 1))
      {
        (*(**(&v105 + 1) + 40))();
      }

      *(&v107 + 1) = 0;
      v106 = 0uLL;
      *(&v105 + 1) = 0;
      LODWORD(v107) = v107 + 1;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v104[1]);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v102 + 8);
    re::DynamicArray<re::MeshAssetModel>::deinit(v101);
    v76 = *(v18 + 8);
    v77 = a2[13];
    v78 = strlen(v76);
    v79 = re::MeshAsset::assetType(v78);
    v80 = re::ImportAssetTable::addAsset(v77, v76, v78, v24, v79);
    v99 = 0;
    v100 = 0;
    v98 = 0;
    if (*(v80 + 8))
    {
      v81 = *(v80 + 16);
    }

    else
    {
      v81 = (v80 + 9);
    }

    re::AssetHandle::setSerializationString(&v98, v81, *a2);
    v82 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v159);
    re::AssetHandle::operator=((v82 + 4), &v98);
    if (*(v90 + 16))
    {
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v83 = re::AssetHandle::serializationString(*(v90 + 32), v101);
      if (BYTE8(v101[0]))
      {
        v84 = *&v101[1];
      }

      else
      {
        v84 = (v101 + 9);
      }

      if (*&v101[0] && (BYTE8(v101[0]) & 1) != 0)
      {
        (*(**&v101[0] + 40))();
      }

      re::DynamicArray<re::AssetHandle>::add((v82 + 7), &v95);
      re::AssetHandle::~AssetHandle(&v95);
    }

    re::DynamicArray<re::ecs2::EntityAssetData>::add(v93 + 72, &v159);
    re::AssetHandle::~AssetHandle(&v98);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v171, v85);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v116);
    re::GeomMesh::~GeomMesh(&v119);
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v133);
    if (v131 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v132);
    }

    if (v129 == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit(v130);
    }

    if (v124)
    {
      if (v128)
      {
        (*(*v124 + 40))();
      }

      v128 = 0;
      v125 = 0;
      v126 = 0;
      v124 = 0;
      ++v127;
    }

    re::DynamicArray<re::GeomMesh>::deinit(v123);
    if (v121 && (v122 & 1) != 0)
    {
      (*(*v121 + 40))();
    }

    if (v142)
    {
      if (v146)
      {
        (*(*v142 + 40))();
      }

      v146 = 0;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      ++v145;
    }

    if (v137)
    {
      if (v141)
      {
        (*(*v137 + 40))();
      }

      v141 = 0;
      v138 = 0;
      v139 = 0;
      v137 = 0;
      ++v140;
    }

LABEL_144:
    re::DynamicArray<re::GeomModel>::deinit(v136);
    if (v134 && (v135 & 1) != 0)
    {
      (*(*v134 + 40))();
    }

    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v156 + 1);
    re::DynamicArray<re::GeomSkeleton>::deinit(&v153 + 8);
    if (!*(&v150 + 1))
    {
      goto LABEL_152;
    }

    if (v153)
    {
      (*(**(&v150 + 1) + 40))();
    }

    *&v153 = 0;
    v151 = 0uLL;
    *(&v150 + 1) = 0;
    goto LABEL_151;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return;
      }

      v89 = a5;
      v92 = a1;
      v8 = a4;
      v162 = 1;
      v165 = 0;
      v164 = 0;
      v166 = 0;
      v170 = 0;
      v167 = 0u;
      v168 = 0u;
      v169 = 0;
      v161 = "PrimitiveShape";
      v159 = 0;
      v160 = 0xD2B975F2D13A2E34;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v163, 0);
      ++v166;
      v9 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 128, 0);
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      ArcSharedObject::ArcSharedObject(v9, 0);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 28) = 65544;
      *(v10 + 32) = 4;
      *(v10 + 36) = 0x400000003F000000;
      *(v10 + 44) = 257;
      *(v10 + 46) = 0;
      *(v10 + 48) = 0;
      *(v10 + 50) = 1;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 65544;
      *(v10 + 108) = 4;
      *(v10 + 112) = 0x400000003F000000;
      *(v10 + 120) = 257;
      *(v10 + 122) = 0;
      *(v10 + 124) = 1;
      *v10 = &unk_1F5CD0CA8;
      v119.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCapsuleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
      v119.n128_u64[1] = v10;
      v120 = 1;
      re::DynamicArray<re::BufferView>::add(&v163, &v119);
      v11 = *(a3 + 4);
      *(v9 + 43) = *(a3 + 19);
      *(v9 + 28) = v11;
      v12 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v159);
      if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
      {
        *(v12 + 3) = *(a3 + 2);
      }

      v148 = 0;
      v147 = 0u;
      v150 = 0u;
      v151 = 0u;
      v149 = 0;
      v152 = 0;
      v153 = 0u;
      v154 = 0u;
      v155 = 0;
      v156 = 0u;
      memset(v157, 0, sizeof(v157));
      v158 = 0x7FFFFFFFLL;
      re::GeomModelWithLods::GeomModelWithLods(&v134);
      re::GeomModel::GeomModel(&v121);
      re::GeomMesh::GeomMesh(&v119, 0);
      re::buildCapsule(&v119, a3 + 2);
      re::DynamicArray<re::GeomMesh>::add(v123, &v119);
      re::DynamicArray<re::GeomModel>::add(v136, &v121);
      re::DynamicArray<re::GeomModelWithLods>::add(&v147, &v134);
      v171 = xmmword_1E3047670;
      v172 = xmmword_1E3047680;
      *v173 = xmmword_1E30476A0;
      *&v173[16] = xmmword_1E30474D0;
      *&v173[32] = 0;
      re::DynamicArray<re::GeomInstance>::add((&v150 + 8), &v171);
      v111 = 16842752;
      v112 = 1;
      v113 = 0;
      v114 = 0;
      v115 = 65793;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      DWORD1(v118) = 0x7FFFFFFF;
      re::makeMeshAssetDataFromGeomScene(&v147, &v111, &v171);
      v14 = re::globalAllocators(v13);
      v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
      if (v171 == 1)
      {
        *&v101[0] = *(&v171 + 1);
        *(&v171 + 1) = 0;
        *(v101 + 8) = v172;
        v172 = 0u;
        DWORD2(v101[1]) = 1;
        v16 = *&v173[8];
        memset(&v173[8], 0, 32);
        v102 = v16;
        v103 = *&v173[24];
        ++*v173;
        ++v174;
        LODWORD(v104[0]) = 1;
        *(v104 + 8) = v175;
        *(&v104[1] + 8) = v176;
        v175 = 0u;
        v176 = 0u;
        *(&v107 + 1) = v181;
        DWORD2(v104[2]) = 1;
        v17 = v178;
        v178 = 0u;
        v105 = v17;
        v106 = v179;
        v179 = 0u;
        ++v177;
        ++v180;
        LODWORD(v107) = 1;
        LODWORD(v108) = v182;
        *(&v108 + 1) = v183;
        v181 = 0;
        v183 = 0;
        v109 = v184;
        v184 = 0u;
        *(&v110 + 1) = v186;
        v186 = 0;
        ++v185;
        LODWORD(v110) = 1;
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        memset(v104, 0, sizeof(v104));
        v102 = 0u;
        memset(v101, 0, sizeof(v101));
      }

      goto LABEL_68;
    }

    v90 = a5;
    v93 = a1;
    v162 = 1;
    v165 = 0;
    v164 = 0;
    v166 = 0;
    v170 = 0;
    v167 = 0u;
    v168 = 0u;
    v169 = 0;
    v161 = "PrimitiveShape";
    v159 = 0;
    v160 = 0xD2B975F2D13A2E34;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v163, 0);
    ++v166;
    v35 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 112, 0);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
    *(v35 + 80) = 0u;
    *(v35 + 96) = 0u;
    ArcSharedObject::ArcSharedObject(v35, 0);
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 28) = 8;
    *(v36 + 32) = 1056964608;
    *(v36 + 36) = 257;
    *(v36 + 38) = 0;
    *(v36 + 40) = 0;
    *(v36 + 42) = 1;
    *(v36 + 48) = 0u;
    *(v36 + 64) = 0u;
    *(v36 + 80) = 0u;
    *(v36 + 96) = 8;
    *(v36 + 100) = 1056964608;
    *(v36 + 104) = 257;
    *(v36 + 106) = 0;
    *(v36 + 108) = 1;
    *v36 = &unk_1F5CD0BB0;
    v119.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveSphereComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
    v119.n128_u64[1] = v36;
    v120 = 1;
    re::DynamicArray<re::BufferView>::add(&v163, &v119);
    v38 = (a3 + 4);
    v37 = *(a3 + 4);
    *(v35 + 35) = *(a3 + 11);
    *(v35 + 28) = v37;
    v39 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v159);
    v41 = *(a3 + 2);
    v40 = a3 + 32;
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v41, xmmword_1E30474D0))) & 0x80000000) != 0)
    {
      *(v39 + 3) = *v40;
    }

    v148 = 0;
    v147 = 0u;
    v150 = 0u;
    v151 = 0u;
    v149 = 0;
    v152 = 0;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    v156 = 0u;
    memset(v157, 0, sizeof(v157));
    v158 = 0x7FFFFFFFLL;
    re::GeomModelWithLods::GeomModelWithLods(&v134);
    re::GeomModel::GeomModel(&v121);
    re::GeomMesh::GeomMesh(&v119, 0);
    re::buildSphere(&v119, v38);
    re::DynamicArray<re::GeomMesh>::add(v123, &v119);
    re::DynamicArray<re::GeomModel>::add(v136, &v121);
    re::DynamicArray<re::GeomModelWithLods>::add(&v147, &v134);
    v171 = xmmword_1E3047670;
    v172 = xmmword_1E3047680;
    *v173 = xmmword_1E30476A0;
    *&v173[16] = xmmword_1E30474D0;
    *&v173[32] = 0;
    re::DynamicArray<re::GeomInstance>::add((&v150 + 8), &v171);
    v111 = 16842752;
    v112 = 1;
    v113 = 0;
    v114 = 0;
    v115 = 65793;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    DWORD1(v118) = 0x7FFFFFFF;
    re::makeMeshAssetDataFromGeomScene(&v147, &v111, &v171);
    v43 = re::globalAllocators(v42);
    v24 = (*(*v43[2] + 32))(v43[2], 1272, 8);
    if (v171 == 1)
    {
      *&v101[0] = *(&v171 + 1);
      *(&v171 + 1) = 0;
      *(v101 + 8) = v172;
      v172 = 0u;
      DWORD2(v101[1]) = 1;
      v44 = *&v173[8];
      memset(&v173[8], 0, 32);
      v102 = v44;
      v103 = *&v173[24];
      ++*v173;
      ++v174;
      LODWORD(v104[0]) = 1;
      *(v104 + 8) = v175;
      *(&v104[1] + 8) = v176;
      v175 = 0u;
      v176 = 0u;
      *(&v107 + 1) = v181;
      DWORD2(v104[2]) = 1;
      v45 = v178;
      v178 = 0u;
      v105 = v45;
      v106 = v179;
      v179 = 0u;
      ++v177;
      ++v180;
      LODWORD(v107) = 1;
      LODWORD(v108) = v182;
      *(&v108 + 1) = v183;
      v181 = 0;
      v183 = 0;
      v109 = v184;
      v184 = 0u;
      *(&v110 + 1) = v186;
      v186 = 0;
      ++v185;
      LODWORD(v110) = 1;
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      memset(v104, 0, sizeof(v104));
      v102 = 0u;
      memset(v101, 0, sizeof(v101));
    }

    v18 = a4;
    goto LABEL_110;
  }

  v89 = a5;
  v92 = a1;
  v162 = 1;
  v165 = 0;
  v164 = 0;
  v166 = 0;
  v170 = 0;
  v167 = 0u;
  v168 = 0u;
  v169 = 0;
  v161 = "PrimitiveShape";
  v159 = 0;
  v160 = 0xD2B975F2D13A2E34;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v163, 0);
  ++v166;
  v27 = (*(**(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 136, 0);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0;
  ArcSharedObject::ArcSharedObject(v27, 0);
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 28) = 65544;
  *(v28 + 32) = 0x3F0000003F800000;
  *(v28 + 40) = 0x10101013F000000;
  *(v28 + 48) = 0;
  *(v28 + 52) = 0;
  *(v28 + 54) = 1;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0u;
  *(v28 + 104) = 65544;
  *(v28 + 108) = 0x3F0000003F800000;
  *(v28 + 116) = 0x10101013F000000;
  *(v28 + 124) = 0;
  *(v28 + 128) = 1;
  *v28 = &unk_1F5CD09C0;
  v119.n128_u64[0] = *(re::ecs2::ComponentImpl<re::ecs2::PrimitiveCylinderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 3) >> 1;
  v119.n128_u64[1] = v28;
  v120 = 1;
  re::DynamicArray<re::BufferView>::add(&v163, &v119);
  v29 = *(a3 + 4);
  *(v27 + 41) = *(a3 + 17);
  *(v27 + 28) = v29;
  v30 = re::ecs2::EntityAssetData::addComponent<re::ecs2::TransformComponent>(&v159);
  if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*(a3 + 2), xmmword_1E30474D0))) & 0x80000000) != 0)
  {
    *(v30 + 3) = *(a3 + 2);
  }

  v148 = 0;
  v147 = 0u;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v152 = 0;
  v153 = 0u;
  v154 = 0u;
  v155 = 0;
  v156 = 0u;
  memset(v157, 0, sizeof(v157));
  v158 = 0x7FFFFFFFLL;
  re::GeomModelWithLods::GeomModelWithLods(&v134);
  re::GeomModel::GeomModel(&v121);
  re::GeomMesh::GeomMesh(&v119, 0);
  re::buildCylinder(&v119, a3 + 2);
  re::DynamicArray<re::GeomMesh>::add(v123, &v119);
  re::DynamicArray<re::GeomModel>::add(v136, &v121);
  re::DynamicArray<re::GeomModelWithLods>::add(&v147, &v134);
  v171 = xmmword_1E3047670;
  v172 = xmmword_1E3047680;
  *v173 = xmmword_1E30476A0;
  *&v173[16] = xmmword_1E30474D0;
  *&v173[32] = 0;
  re::DynamicArray<re::GeomInstance>::add((&v150 + 8), &v171);
  v111 = 16842752;
  v112 = 1;
  v113 = 0;
  v114 = 0;
  v115 = 65793;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  DWORD1(v118) = 0x7FFFFFFF;
  re::makeMeshAssetDataFromGeomScene(&v147, &v111, &v171);
  v32 = re::globalAllocators(v31);
  v15 = (*(*v32[2] + 32))(v32[2], 1272, 8);
  if (v171 == 1)
  {
    *&v101[0] = *(&v171 + 1);
    *(&v171 + 1) = 0;
    *(v101 + 8) = v172;
    v172 = 0u;
    DWORD2(v101[1]) = 1;
    v33 = *&v173[8];
    memset(&v173[8], 0, 32);
    v102 = v33;
    v103 = *&v173[24];
    ++*v173;
    ++v174;
    LODWORD(v104[0]) = 1;
    *(v104 + 8) = v175;
    *(&v104[1] + 8) = v176;
    v175 = 0u;
    v176 = 0u;
    *(&v107 + 1) = v181;
    DWORD2(v104[2]) = 1;
    v34 = v178;
    v178 = 0u;
    v105 = v34;
    v106 = v179;
    v179 = 0u;
    ++v177;
    ++v180;
    LODWORD(v107) = 1;
    LODWORD(v108) = v182;
    *(&v108 + 1) = v183;
    v181 = 0;
    v183 = 0;
    v109 = v184;
    v184 = 0u;
    *(&v110 + 1) = v186;
    v186 = 0;
    ++v185;
    LODWORD(v110) = 1;
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    memset(v104, 0, sizeof(v104));
    v102 = 0u;
    memset(v101, 0, sizeof(v101));
  }

  v8 = a4;
LABEL_68:
  re::MeshAsset::MeshAsset(v15, v101);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v108 + 8);
  if (*(&v105 + 1))
  {
    if (*(&v107 + 1))
    {
      (*(**(&v105 + 1) + 40))();
    }

    *(&v107 + 1) = 0;
    v106 = 0uLL;
    *(&v105 + 1) = 0;
    LODWORD(v107) = v107 + 1;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v104[1]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v102 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v101);
  v66 = *(v8 + 8);
  v67 = a2[13];
  v68 = strlen(v66);
  v69 = re::MeshAsset::assetType(v68);
  v70 = re::ImportAssetTable::addAsset(v67, v66, v68, v15, v69);
  v99 = 0;
  v100 = 0;
  v98 = 0;
  if (*(v70 + 8))
  {
    v71 = *(v70 + 16);
  }

  else
  {
    v71 = (v70 + 9);
  }

  re::AssetHandle::setSerializationString(&v98, v71, *a2);
  v72 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshComponent>(&v159);
  re::AssetHandle::operator=((v72 + 4), &v98);
  if (*(v89 + 16))
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v73 = re::AssetHandle::serializationString(*(v89 + 32), v101);
    if (BYTE8(v101[0]))
    {
      v74 = *&v101[1];
    }

    else
    {
      v74 = (v101 + 9);
    }

    if (*&v101[0] && (BYTE8(v101[0]) & 1) != 0)
    {
      (*(**&v101[0] + 40))();
    }

    re::DynamicArray<re::AssetHandle>::add((v72 + 7), &v95);
    re::AssetHandle::~AssetHandle(&v95);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::add(v92 + 72, &v159);
  re::AssetHandle::~AssetHandle(&v98);
  re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v171, v75);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v116);
  re::GeomMesh::~GeomMesh(&v119);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v133);
  if (v131 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v132);
  }

  if (v129 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v130);
  }

  if (v124)
  {
    if (v128)
    {
      (*(*v124 + 40))();
    }

    v128 = 0;
    v125 = 0;
    v126 = 0;
    v124 = 0;
    ++v127;
  }

  re::DynamicArray<re::GeomMesh>::deinit(v123);
  if (v121 && (v122 & 1) != 0)
  {
    (*(*v121 + 40))();
  }

  if (v142)
  {
    if (v146)
    {
      (*(*v142 + 40))();
    }

    v146 = 0;
    v143 = 0;
    v144 = 0;
    v142 = 0;
    ++v145;
  }

  if (v137)
  {
    if (v141)
    {
      (*(*v137 + 40))();
    }

    v141 = 0;
    v138 = 0;
    v139 = 0;
    v137 = 0;
    ++v140;
  }

  re::DynamicArray<re::GeomModel>::deinit(v136);
  if (v134 && (v135 & 1) != 0)
  {
    (*(*v134 + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v156 + 1);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v153 + 8);
  if (!*(&v150 + 1))
  {
    goto LABEL_152;
  }

  if (v153)
  {
    (*(**(&v150 + 1) + 40))();
  }

  *&v153 = 0;
  v151 = 0uLL;
  *(&v150 + 1) = 0;
LABEL_151:
  ++v152;
LABEL_152:
  re::DynamicArray<re::GeomModelWithLods>::deinit(&v147);
  re::ecs2::EntityAssetData::~EntityAssetData(&v159);
}

double re::DynamicArray<re::ModelWithLodsDescriptor>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ModelWithLodsDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 152 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  v14 = *(a2 + 80);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 80) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  v16 = *(v5 + 104);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 104) = v16;
  ++*(a2 + 96);
  ++*(v5 + 96);
  *(v5 + 144) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 112) = 0;
  *(v5 + 136) = 0;
  v17 = *(a2 + 120);
  *(v5 + 112) = *(a2 + 112);
  *(v5 + 120) = v17;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v18 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 128) = v18;
  v19 = *(v5 + 144);
  *(v5 + 144) = *(a2 + 144);
  *(a2 + 144) = v19;
  ++*(a2 + 136);
  ++*(v5 + 136);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t *re::DynamicArray<re::anonymous namespace::SkeletonAndAnimationInfoPerLodLevel>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 72 * v4;
        v6 = v3 + 24;
        do
        {
          re::AssetHandle::~AssetHandle((v6 + 24));
          re::AssetHandle::~AssetHandle(v6);
          v6 += 72;
          v5 -= 72;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

uint64_t re::DynamicArray<re::MeshAssetModel>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
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
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + (a3 << 9);
}

unint64_t re::BucketArray<re::FixedArray<unsigned short>,16ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 4;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 24 * (a2 & 0xF);
}

uint64_t *re::anonymous namespace::wireupDeformers(re *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = buf;
  v435[4] = *MEMORY[0x1E69E9840];
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 80, 8);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  buf[0].n128_u64[0] = &unk_1F5CD0E30;
  buf[1].n128_u64[1] = buf;
  v435[3] = v435;
  v434 = v12;
  v435[0] = &unk_1F5CD0E30;
  v13 = std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100](buf);
  v14 = v434;
  v395 = 0;
  v393 = 0u;
  v394 = 0u;
  v396 = 0x7FFFFFFFLL;
  v362 = a4;
  if (!a4[7])
  {
    goto LABEL_560;
  }

  v352 = a2;
  v16 = 0;
  v17 = 0;
  a2 = v428;
  v356 = a5 + 24;
  v355 = a5;
  while (1)
  {
    v18 = a4[9] + 96 * v16;
    v19 = *(v18 + 80);
    v365 = (v18 + 80);
    v20 = *(a5 + 40);
    if (v20 <= v19)
    {
      goto LABEL_615;
    }

    v10 = v19 >> 3;
    v6 = *(a5 + 8);
    if (v6 <= v19 >> 3)
    {
      goto LABEL_616;
    }

    v357 = v17;
    v361 = v16;
    v21 = *(a5 + 32);
    if (*(a5 + 16))
    {
      v21 = v356;
    }

    v360 = *(v21 + 8 * v10) + 40 * (v19 & 7);
    v22 = a1;
    if (*(v360 + 16))
    {
      v10 = a4[2];
      if (v10 <= v19)
      {
        goto LABEL_636;
      }

      v23 = a4[4] + (v19 << 9);
      if (*(v23 + 208))
      {
        break;
      }
    }

LABEL_519:
    v16 = (v357 + 1);
    v17 = v357 + 1;
    a5 = v355;
    if (a4[7] <= v16)
    {
      a2 = v352;
      if (HIDWORD(v394))
      {
        LODWORD(v23) = v395;
        if (!v395)
        {
          goto LABEL_538;
        }

        v239 = 0;
        v240 = v394;
        while (1)
        {
          v241 = *v240;
          v240 += 14;
          if (v241 < 0)
          {
            goto LABEL_539;
          }

          if (v395 == ++v239)
          {
            LODWORD(v239) = v395;
            goto LABEL_539;
          }
        }
      }

      goto LABEL_560;
    }
  }

  v24 = 0;
  v364 = 0;
  while (1)
  {
    v363 = v24;
    v392 = 0;
    v390 = 0;
    v388 = 0;
    v389 = 0;
    v391 = 0;
    v25 = *(v360 + 16);
    if (v25)
    {
      break;
    }

LABEL_509:
    re::DynamicArray<re::DeformationStackDefinition>::add(v434, &v388);
    v234 = v434;
    __dst[0] = 1;
    v19 = a4[7];
    v235 = v361;
    if (v19 <= v361)
    {
      goto LABEL_595;
    }

    re::StringID::StringID(&__dst[8], (a4[9] + 96 * v361));
    v19 = *v365;
    v10 = a4[2];
    if (v10 <= v19)
    {
      goto LABEL_599;
    }

    v236 = a4[4] + (v19 << 9);
    v19 = *(v236 + 208);
    v237 = v363;
    if (v19 <= v363)
    {
      goto LABEL_603;
    }

    re::StringID::StringID(&__dst[24], (*(v236 + 224) + (v363 << 8) + 72));
    *&__dst[40] = *(v434 + 2) - 1;
    v238 = re::DynamicArray<re::MeshDeformationIndex>::add((v234 + 40), __dst);
    if (__dst[24])
    {
      if (__dst[24])
      {
      }
    }

    *&__dst[32] = &str_67;
    *&__dst[24] = 0;
    if (__dst[8])
    {
      if (__dst[8])
      {
      }
    }

    re::DynamicArray<re::DeformationDefinition>::deinit(&v388);
    v24 = ++v364;
    if (*(v23 + 208) <= v364)
    {
      goto LABEL_519;
    }
  }

  v6 = *(v360 + 32);
  v366 = &v6[28 * v25];
  while (1)
  {
    v26 = *(v6 + 3);
    v27 = strcmp(v26, "BlendShape");
    if (!v27)
    {
LABEL_19:
      v428[4] = 0;
      *v428 = 0;
      buf[0].n128_u64[0] = 0x1954B86F1FEF5A4;
      buf[0].n128_u64[1] = "Blend Shape";
      *__dst = v428;
      *&__dst[8] = 5;
      *&v413 = 0;
      buf[1] = 0uLL;
      re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
      re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
      v30 = buf[1].n128_u64[0];
      if (buf[1].n128_u64[0])
      {
        if (buf[1].n128_u64[1])
        {
          v30 = (*(*buf[1].n128_u64[0] + 40))();
          buf[1].n128_u64[1] = 0;
          *&v413 = 0;
        }

        buf[1].n128_u64[0] = 0;
      }

      if (buf[0].n128_u8[0])
      {
        if (buf[0].n128_u8[0])
        {
        }
      }

      if (!*(v22 + 4))
      {
        goto LABEL_56;
      }

      v31 = *(v22 + 6);
      if (!v31)
      {
        goto LABEL_56;
      }

      v32 = (*(v22 + 8) + 8);
      v33 = 24 * v31;
      while (*(v32 - 1) != *(re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
      {
        v32 += 3;
        v33 -= 24;
        if (!v33)
        {
          goto LABEL_56;
        }
      }

      if (!*v32)
      {
LABEL_56:
        re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(v22);
      }

      goto LABEL_57;
    }

    v28 = *(v6 + 2) >> 1;
    if (v28 == 0xCAA5C378FF7AD2)
    {
      if (v26 == "Blend Shape")
      {
        goto LABEL_19;
      }

      v27 = strcmp(v26, "Blend Shape");
      if (!v27)
      {
        goto LABEL_19;
      }

      v29 = strcmp(v26, "Skinning");
      if (!v29)
      {
LABEL_37:
        *v428 = 0;
        v35 = *(v6 + 6);
        if (v35)
        {
          v36 = *(v6 + 8);
          v37 = 40 * v35;
          do
          {
            v29 = strcmp(*(v36 + 16), "deformUserTangentsAndNormals");
            if (!v29)
            {
              if (*(v36 + 24) == 1)
              {
                v428[1] = *(v36 + 32) != 0;
              }

              else
              {
              }
            }

            v36 += 40;
            v37 -= 40;
          }

          while (v37);
        }

        buf[0].n128_u64[0] = 0x4550755B7A2;
        buf[0].n128_u64[1] = "Skinning";
        *__dst = v428;
        *&__dst[8] = 2;
        *&v413 = 0;
        buf[1] = 0uLL;
        re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
        re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
        v38 = buf[1].n128_u64[0];
        if (buf[1].n128_u64[0])
        {
          if (buf[1].n128_u64[1])
          {
            v38 = (*(*buf[1].n128_u64[0] + 40))();
            buf[1].n128_u64[1] = 0;
            *&v413 = 0;
          }

          buf[1].n128_u64[0] = 0;
        }

        if (buf[0].n128_u8[0])
        {
          if (buf[0].n128_u8[0])
          {
          }
        }

        if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::SkeletalPoseComponent>(v22))
        {
          re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(v22);
        }

        if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::RigComponent>(v22))
        {
          re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(v22);
        }

        goto LABEL_57;
      }

LABEL_35:
      v34 = strcmp(v26, "SmoothDeformer");
      if (!v34)
      {
        goto LABEL_69;
      }

LABEL_64:
      v39 = strcmp(v26, "WrapDeformer");
      if (!v39)
      {
        goto LABEL_109;
      }

      if (v28 == 0x2002D25A84007EBCLL)
      {
        if (v26 != "WrapDeformer")
        {
          goto LABEL_67;
        }

LABEL_109:
        v387 = 0;
        *&v383.var0 = 0;
        v383.var1 = &str_67;
        v385 = 0;
        v386 = 0;
        v384 = 0;
        if (*(v6 + 11))
        {
          v61 = *(v6 + 13);
          *v428 = 0;
          *&v428[8] = &str_67;
          *&v428[16] = 0;
          *&v428[24] = &str_67;
          *&v428[32] = 0u;
          v429 = 0u;
          v430 = 0u;
          v431 = 0u;
          v432 = 0;
          v433 = v364;
          v62 = *(v61 + 16);
          if (v62)
          {
            v63 = *(v61 + 32);
            v64 = v63 + 40 * v62;
            do
            {
              v65 = *(v63 + 16);
              if (!strcmp(v65, "faceIndices"))
              {
                if (*(v63 + 24) != 2)
                {
                  v108 = v63;
                  v109 = 2;
LABEL_188:
                  goto LABEL_189;
                }

                v97 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 7), *(v63 + 32));
                v98 = *(v97 + 2);
                v99 = *v63;
                memcpy(v429, v98, 4 * v99);
              }

              else
              {
                if (!strcmp(v65, "faceCoordinates"))
                {
                  if (*(v63 + 24) == 4)
                  {
                    v100 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v63 + 32));
                    v101 = *(v100 + 2);
                    v102 = *v63;
                    if (v102)
                    {
                      v103 = (*(&v430 + 1) + 8);
                      v104 = (v101 + 8);
                      v105 = 1;
                      do
                      {
                        *(v103 - 2) = *(v104 - 2);
                        *(v103 - 1) = *(v104 - 1);
                        v106 = *v104;
                        v104 += 3;
                        *v103 = v106;
                        v103 += 4;
                        v107 = v102 > v105++;
                      }

                      while (v107);
                    }

                    goto LABEL_189;
                  }

LABEL_187:
                  v108 = v63;
                  v109 = 4;
                  goto LABEL_188;
                }

                if (!strcmp(v65, "offsets"))
                {
                  if (*(v63 + 24) == 4)
                  {
                    v110 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v63 + 32));
                    v111 = *(v110 + 2);
                    v112 = *v63;
                    if (v112)
                    {
                      v113 = (v432 + 8);
                      v114 = (v111 + 8);
                      v115 = 1;
                      do
                      {
                        *(v113 - 2) = *(v114 - 2);
                        *(v113 - 1) = *(v114 - 1);
                        v116 = *v114;
                        v114 += 3;
                        *v113 = v116;
                        v113 += 4;
                        v107 = v112 > v115++;
                      }

                      while (v107);
                    }

                    goto LABEL_189;
                  }

                  goto LABEL_187;
                }

                if (!strcmp(v65, "target"))
                {
                  if (*(v63 + 24) == 5)
                  {
                    v66 = re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::operator[](v6 + 280, *(v63 + 32));
                    LOBYTE(v380) = 1;
                    re::StringID::StringID(&v381, v66);
                    re::StringID::StringID(&v382, v66 + 1);
                    if (v380)
                    {
                      re::StringID::StringID(&v377, &v381);
                      re::StringID::StringID(&v379, &v382);
                      v68 = re::DynamicString::format(buf, "%s-0", v67, v378);
                      if (buf[0].n128_u8[8])
                      {
                        v69 = buf[1].n128_u64[0];
                      }

                      else
                      {
                        v69 = &buf[0].n128_i8[9];
                      }

                      *__dst = 0;
                      *&__dst[8] = &str_67;
                      v72 = *__dst;
                      v73 = *&__dst[8];
                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      v74 = v428[0];
                      *v428 = v72;
                      *&v428[8] = v73;
                      if (v74)
                      {
                        if (__dst[0])
                        {
                          if (__dst[0])
                          {
                          }
                        }
                      }

                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      v76 = a6;
                      if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                      {
                        (*(*buf[0].n128_u64[0] + 40))();
                      }

                      re::DynamicString::format(&v374, "%s", v71, *&v428[8]);
                      if (v375 >= 0x100 && (v375 & 1) != 0)
                      {
                        re::DynamicString::DynamicString(__dst, &v374);
                        re::DynamicString::substr(buf, &v374, 0, 0x7FuLL);
                        re::DynamicString::operator=(&v374, buf);
                        v78 = buf[0].n128_u64[0];
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          v78 = (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v79 = *re::pipelineLogObjects(v78);
                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                        {
                          v80 = *&__dst[16];
                          if ((__dst[8] & 1) == 0)
                          {
                            v80 = &__dst[9];
                          }

                          v81 = __dst[8] >> 1;
                          if (__dst[8])
                          {
                            v81 = *&__dst[8] >> 1;
                          }

                          v82 = &v375 + 1;
                          if (v375)
                          {
                            v82 = v376;
                          }

                          buf[0].n128_u32[0] = 136315906;
                          *(buf[0].n128_u64 + 4) = v80;
                          buf[0].n128_u16[6] = 2048;
                          *(&buf[0].n128_u64[1] + 6) = v81;
                          buf[1].n128_u16[3] = 2048;
                          buf[1].n128_u64[1] = 127;
                          LOWORD(v413) = 2080;
                          *(&v413 + 2) = v82;
                          _os_log_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_DEFAULT, "Name '%s' was too long (%zu characters, max %zu), shortened into '%s' for wait fence ID name. This may cause conflicts.", buf, 0x2Au);
                        }

                        if (*__dst && (__dst[8] & 1) != 0)
                        {
                          (*(**__dst + 40))();
                        }
                      }

                      v83 = re::DynamicString::format(&v371, "%s-0", v77, *(v23 + 8));
                      if (v372 >= 0x100 && (v372 & 1) != 0)
                      {
                        v84 = *(v23 + 8);
                        re::DynamicString::substr(__dst, buf, 0, 0x7DuLL);
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v86 = &__dst[9];
                        if (__dst[8])
                        {
                          v86 = *&__dst[16];
                        }

                        re::DynamicString::format(buf, "%s-0", v85, v86);
                        re::DynamicString::operator=(&v371, buf);
                        v87 = buf[0].n128_u64[0];
                        if (buf[0].n128_u64[0] && (buf[0].n128_u8[8] & 1) != 0)
                        {
                          v87 = (*(*buf[0].n128_u64[0] + 40))();
                        }

                        v88 = *re::pipelineLogObjects(v87);
                        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                        {
                          v89 = v88;
                          v90 = *(v23 + 8);
                          v91 = strlen(v90);
                          v92 = &__dst[9];
                          if (__dst[8])
                          {
                            v92 = *&__dst[16];
                          }

                          buf[0].n128_u32[0] = 136315906;
                          *(buf[0].n128_u64 + 4) = v90;
                          buf[0].n128_u16[6] = 2048;
                          *(&buf[0].n128_u64[1] + 6) = v91;
                          buf[1].n128_u16[3] = 2048;
                          buf[1].n128_u64[1] = 125;
                          LOWORD(v413) = 2080;
                          *(&v413 + 2) = v92;
                          _os_log_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_DEFAULT, "Name '%s' was too long (%zu characters, max %zu), shortened into '%s' for fence ID name. This may cause conflicts.", buf, 0x2Au);
                        }

                        if (*__dst && (__dst[8] & 1) != 0)
                        {
                          (*(**__dst + 40))();
                        }
                      }

                      v425 = 0u;
                      v426 = 0u;
                      v423 = 0u;
                      v424 = 0u;
                      v421 = 0u;
                      v422 = 0u;
                      v419 = 0u;
                      v420 = 0u;
                      v417 = 0u;
                      v418 = 0u;
                      v415 = 0u;
                      v416 = 0u;
                      v413 = 0u;
                      v414 = 0u;
                      memset(buf, 0, sizeof(buf));
                      if (v375)
                      {
                        v93 = v376;
                      }

                      else
                      {
                        v93 = &v375 + 1;
                      }

                      v427 = -1;
                      v94 = strlcpy(&v419, v93, 0x80uLL);
                      v427 = 13;
                      *__dst = 0x4425D6C2BB3546C6;
                      *&__dst[8] = "FenceDeformer";
                      v368 = buf;
                      v369 = 257;
                      memset(&__dst[16], 0, 24);
                      re::FixedArray<unsigned char>::copy(&__dst[16], &v368);
                      re::DynamicArray<re::DeformationDefinition>::add(&v388, __dst);
                      v95 = *&__dst[16];
                      if (*&__dst[16])
                      {
                        if (*&__dst[24])
                        {
                          v95 = (*(**&__dst[16] + 40))();
                          *&__dst[24] = 0;
                          *&__dst[32] = 0;
                        }

                        *&__dst[16] = 0;
                      }

                      if (__dst[0])
                      {
                        if (__dst[0])
                        {
                        }
                      }

                      if (*&v379.var0 >= 0xFFFFFFFFFFFFFFFELL && (*&v379.var0 & 1) == 0)
                      {
                        var1 = v379.var1;
                        goto LABEL_202;
                      }

                      if (*&v379.var0 <= 1uLL && (var1 = v379.var1) != 0)
                      {
LABEL_202:
                        if (*var1)
                        {
                          goto LABEL_203;
                        }
                      }

                      else
                      {
LABEL_203:
                        v409 = 0u;
                        v410 = 0u;
                        v407 = 0u;
                        v408 = 0u;
                        v405 = 0u;
                        v406 = 0u;
                        v403 = 0u;
                        v404 = 0u;
                        v401 = 0u;
                        v402 = 0u;
                        v399 = 0u;
                        v400 = 0u;
                        v398 = 0u;
                        memset(__dst, 0, sizeof(__dst));
                        if (v372)
                        {
                          v118 = v373;
                        }

                        else
                        {
                          v118 = &v372 + 1;
                        }

                        v411 = -1;
                        v119 = strlcpy(__dst, v118, 0x80uLL);
                        if (*&v383.var0)
                        {
                          if (*&v383.var0)
                          {
                          }
                        }

                        *&v383.var0 = 0x4425D6C2BB3546C6;
                        v383.var1 = "FenceDeformer";
                        v367[0] = __dst;
                        v367[1] = 257;
                        v368 = 0;
                        v369 = 0;
                        v370 = 0;
                        re::FixedArray<unsigned char>::copy(&v368, v367);
                        re::FixedArray<float>::operator=(&v384, &v368);
                        v95 = v368;
                        if (v368 && v369)
                        {
                          v95 = (*(v368->n128_u64[0] + 40))();
                        }
                      }

                      if (v372)
                      {
                        v120 = v373;
                      }

                      else
                      {
                        v120 = &v372 + 1;
                      }

                      v368 = 0;
                      v369 = &str_67;
                      *__dst = v368;
                      *&__dst[8] = v369;
                      v368 = 0;
                      v369 = &str_67;
                      re::StringID::StringID(&__dst[16], &v379);
                      v121 = *v428;
                      v122 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v121 >> 31) ^ (v121 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v121 >> 31) ^ (v121 >> 1))) >> 27));
                      v123 = v122 ^ (v122 >> 31);
                      if (*a6)
                      {
                        v124 = v123 % *(a6 + 24);
                        v125 = *(*(a6 + 8) + 4 * v124);
                        if (v125 != 0x7FFFFFFF)
                        {
                          v354 = v123 % *(a6 + 24);
                          v126 = *(a6 + 16);
                          v127 = v126 + 56 * v125;
                          v129 = *(v127 + 8);
                          v128 = v127 + 8;
                          if ((v129 ^ *v428) <= 1)
                          {
                            v130 = *(v128 + 8);
                            if (v130 == *&v428[8])
                            {
                              goto LABEL_229;
                            }

                            v130 = strcmp(v130, *&v428[8]);
                            if (!v130)
                            {
                              goto LABEL_229;
                            }
                          }

                          v131 = *(v126 + 56 * v125) & 0x7FFFFFFF;
                          if (v131 != 0x7FFFFFFF)
                          {
                            v132 = *&v428[8];
                            while (1)
                            {
                              v133 = v126 + 56 * v131;
                              v135 = *(v133 + 8);
                              v134 = v133 + 8;
                              if ((v135 ^ v121) <= 1)
                              {
                                v130 = *(v134 + 8);
                                if (v130 == v132)
                                {
                                  break;
                                }

                                v130 = strcmp(v130, v132);
                                if (!v130)
                                {
                                  break;
                                }
                              }

                              v131 = *(v126 + 56 * v131) & 0x7FFFFFFF;
                              if (v131 == 0x7FFFFFFF)
                              {
                                goto LABEL_226;
                              }
                            }

LABEL_229:
                            if (__dst[16])
                            {
                              if (__dst[16])
                              {
                              }
                            }

                            *&__dst[24] = &str_67;
                            *&__dst[16] = 0;
                            a2 = v428;
                            v22 = a1;
                            if (__dst[0])
                            {
                              if (__dst[0])
                              {
                              }
                            }

                            *&__dst[8] = &str_67;
                            *__dst = 0;
                            if (v368)
                            {
                              if (v368)
                              {
                              }
                            }

                            if (v371 && (v372 & 1) != 0)
                            {
                              (*(*v371 + 40))();
                            }

                            v117 = v374;
                            if (v374 && (v375 & 1) != 0)
                            {
                              v117 = (*(*v374 + 40))();
                            }

                            if (*&v379.var0)
                            {
                              if (*&v379.var0)
                              {
                              }
                            }

                            *&v379.var0 = 0;
                            v379.var1 = &str_67;
                            if (v377)
                            {
                              if (v377)
                              {
                              }
                            }

LABEL_193:
                            if (v380 == 1)
                            {
                              if (*&v382.var0)
                              {
                                if (*&v382.var0)
                                {
                                }
                              }

                              *&v382.var0 = 0;
                              v382.var1 = &str_67;
                              if (*&v381.var0)
                              {
                                if (*&v381.var0)
                                {
                                }
                              }
                            }

                            goto LABEL_189;
                          }

LABEL_226:
                          v76 = a6;
                          LODWORD(v124) = v354;
                        }
                      }

                      else
                      {
                        LODWORD(v124) = 0;
                      }

                      v136 = re::HashTable<re::StringID,re::Pair<re::StringID,re::StringID,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v76, v124, v123);
                      v130 = re::StringID::StringID((v136 + 8), v428);
                      *(v136 + 24) = *__dst;
                      *(v136 + 32) = *&__dst[8];
                      *&__dst[8] = &str_67;
                      *__dst = 0;
                      *(v136 + 48) = *&__dst[24];
                      *&__dst[24] = &str_67;
                      *&__dst[16] = 0;
                      ++*(v76 + 40);
                      goto LABEL_229;
                    }
                  }

                  else
                  {
                    LOBYTE(v380) = 0;
                  }

                  goto LABEL_193;
                }
              }

LABEL_189:
              v63 += 40;
            }

            while (v63 != v64);
          }

          v137 = *(v6 + 6);
          a4 = v362;
          if (v137)
          {
            v138 = *(v6 + 8);
            v139 = 40 * v137;
            while (strcmp(*(v138 + 16), "envelopeVarName"))
            {
LABEL_262:
              v138 += 40;
              v139 -= 40;
              if (!v139)
              {
                goto LABEL_263;
              }
            }

            if (*(v138 + 24) == 6)
            {
              v140 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v138 + 32));
              buf[0].n128_u8[0] = 1;
              re::StringID::StringID(&buf[0].n128_i8[8], v140);
              if (buf[0].n128_u8[0])
              {
                v141 = re::StringID::operator=(&v428[16], &buf[0].n128_i64[1]);
LABEL_258:
                if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
                {
                  if (buf[0].n128_u8[8])
                  {
                  }
                }

                goto LABEL_262;
              }
            }

            else
            {
              buf[0].n128_u8[0] = 0;
            }

            goto LABEL_258;
          }

LABEL_263:
          v19 = *v365;
          v10 = v362[2];
          if (v10 <= v19)
          {
            goto LABEL_607;
          }

          re::DynamicArray<re::MeshAssetWrapDeformerData>::add((v362[4] + (v19 << 9) + 392), v428);
          if (v431)
          {
            if (*(&v431 + 1))
            {
              (*(*v431 + 40))(v431, v432);
              *(&v431 + 1) = 0;
              v432 = 0;
            }

            *&v431 = 0;
          }

          if (*(&v429 + 1))
          {
            if (v430)
            {
              (*(**(&v429 + 1) + 40))(*(&v429 + 1), *(&v430 + 1));
              v430 = 0uLL;
            }

            *(&v429 + 1) = 0;
          }

          v39 = *&v428[32];
          if (*&v428[32])
          {
            if (*&v428[40])
            {
              v39 = (*(**&v428[32] + 40))(*&v428[32], v429);
              *&v428[40] = 0;
              *&v429 = 0;
            }

            *&v428[32] = 0;
          }

          if (v428[16])
          {
            if (v428[16])
            {
            }
          }

          *&v428[16] = 0;
          *&v428[24] = &str_67;
          if (v428[0])
          {
            if (v428[0])
            {
            }
          }
        }

        buf[0].n128_u64[0] = 0x4005A4B50800FD78;
        buf[0].n128_u64[1] = "WrapDeformer";
        *__dst = &v387;
        *&__dst[8] = 1;
        *&v413 = 0;
        buf[1] = 0uLL;
        re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
        re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
        v142 = buf[1].n128_u64[0];
        if (buf[1].n128_u64[0])
        {
          if (buf[1].n128_u64[1])
          {
            v142 = (*(*buf[1].n128_u64[0] + 40))();
            buf[1].n128_u64[1] = 0;
            *&v413 = 0;
          }

          buf[1].n128_u64[0] = 0;
        }

        if (buf[0].n128_u8[0])
        {
          if (buf[0].n128_u8[0])
          {
          }
        }

        if (*&v383.var0 > 1uLL || !v383.var1 || *v383.var1)
        {
          v143 = v390;
          if (v390 >= v389)
          {
            re::DynamicArray<re::DeformationDefinition>::growCapacity(&v388, v390 + 1);
            v143 = v390;
          }

          v144 = re::StringID::StringID((v392 + 40 * v143), &v383);
          re::FixedArray<unsigned char>::FixedArray(v144 + 2, &v384);
          ++v390;
          ++v391;
        }

        v145 = v384;
        if (v384)
        {
          if (v385)
          {
            v145 = (*(*v384 + 40))();
            v385 = 0;
            v386 = 0;
          }

          v384 = 0;
        }

        goto LABEL_310;
      }

      v40 = strcmp(v26, "ContactDeformer");
      if (!v40)
      {
        goto LABEL_323;
      }

      if (v28 == 0x1179C3D2A9790052)
      {
        if (v26 == "ContactDeformer")
        {
          goto LABEL_323;
        }

        v150 = strcmp(v26, "Renormalization");
        if (v150)
        {
          goto LABEL_321;
        }

        goto LABEL_373;
      }

LABEL_318:
      v150 = strcmp(v26, "Renormalization");
      if (v150)
      {
        if (v28 != 0x55E7643F91509A2ALL)
        {
          v151 = strcmp(v26, "OffsetsDeformer");
          if (!v151)
          {
            goto LABEL_386;
          }

          if (v28 == 0x3875EE4E6B5AEA72)
          {
            if (v26 == "OffsetsDeformer")
            {
              goto LABEL_386;
            }

            v171 = v26;
            v172 = "TensionDeformer";
LABEL_382:
            v150 = strcmp(v171, v172);
            if (v150)
            {
              v173 = v26;
              v174 = "BoundingBoxCalculation";
LABEL_384:
              v150 = strcmp(v173, v174);
              if (v150)
              {
                goto LABEL_464;
              }

              goto LABEL_455;
            }

LABEL_433:
            v428[0] = 0;
            buf[0].n128_u64[0] = 0x241C51C064;
            v204 = "Tension";
LABEL_456:
            buf[0].n128_u64[1] = v204;
LABEL_457:
            *__dst = v428;
            *&__dst[8] = 1;
            *&v413 = 0;
            buf[1] = 0uLL;
            re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
            re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
            v220 = buf[1].n128_u64[0];
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                v220 = (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v413 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            if ((buf[0].n128_u8[0] & 1) == 0)
            {
              goto LABEL_57;
            }

            if ((buf[0].n128_u8[0] & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_312;
          }

          goto LABEL_378;
        }

        if (v26 != "Renormalization")
        {
LABEL_321:
          v151 = strcmp(v26, "OffsetsDeformer");
          if (!v151)
          {
LABEL_386:
            LOBYTE(v377) = 0;
            buf[0].n128_u64[0] = 0x70EBDC9CD6B5D4E4;
            buf[0].n128_u64[1] = "OffsetsDeformer";
            *__dst = &v377;
            *&__dst[8] = 1;
            *&v413 = 0;
            buf[1] = 0uLL;
            re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
            re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
            v175 = buf[1].n128_u64[0];
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                v175 = (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v413 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            if (buf[0].n128_u8[0])
            {
              if (buf[0].n128_u8[0])
              {
              }
            }

            if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(v22))
            {
              if (!*(v22 + 4))
              {
                re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v22 + 4, 0);
                ++*(v22 + 14);
              }

              v176 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 216, 0);
              *v176 = 0u;
              *(v176 + 16) = 0u;
              *(v176 + 32) = 0u;
              *(v176 + 48) = 0u;
              *(v176 + 64) = 0u;
              *(v176 + 80) = 0u;
              *(v176 + 96) = 0u;
              *(v176 + 112) = 0u;
              *(v176 + 128) = 0u;
              *(v176 + 144) = 0u;
              *(v176 + 176) = 0u;
              *(v176 + 192) = 0u;
              *(v176 + 208) = 0;
              *(v176 + 160) = 0u;
              ArcSharedObject::ArcSharedObject(v176, 0);
              *(v177 + 16) = 0;
              *(v177 + 24) = 0;
              *v177 = &unk_1F5CD1030;
              *(v177 + 40) = 0;
              *(v177 + 48) = 0;
              *(v177 + 32) = 0;
              *(v177 + 56) = 0;
              *(v177 + 64) = 0u;
              *(v177 + 80) = 0u;
              *(v177 + 96) = 0;
              *(v177 + 104) = -1;
              *(v177 + 112) = 0u;
              *(v177 + 128) = 0u;
              *(v177 + 144) = 0u;
              inited = objc_initWeak((v176 + 160), 0);
              *(v176 + 168) = 0;
              *(v176 + 200) = re::globalAllocators(inited)[2];
              *(v176 + 208) = 0;
              buf[0].n128_u64[0] = *((*(*v176 + 40))(v176) + 24) >> 1;
              buf[0].n128_u64[1] = v176;
              buf[1].n128_u8[0] = 1;
              re::DynamicArray<re::BufferView>::add((v22 + 32), buf);
              v428[0] = 9;
              v180 = re::globalAllocators(v179);
              v181 = (*(*v180[2] + 32))(v180[2], 40, 8);
              *v181 = 0u;
              *(v181 + 16) = 0u;
              *(v181 + 32) = 0;
              *__dst = &unk_1F5CD1110;
              *&__dst[24] = __dst;
              buf[0].n128_u64[0] = v181;
              *&v413 = &buf[0].n128_u64[1];
              buf[0].n128_u64[1] = &unk_1F5CD1110;
              re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::add(&v393, v428, buf);
              std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100](buf);
              std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](__dst);
              a4 = v362;
            }

            *&v383.var0 = 0;
            v383.var1 = &str_67;
            LOWORD(v384) = v364;
            v182 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(v22);
            if (*(v6 + 6))
            {
              *&v413 = 0;
              memset(buf, 0, 28);
              v414 = xmmword_1E3047670;
              v415 = xmmword_1E3047680;
              v416 = xmmword_1E30476A0;
              v417 = xmmword_1E30474D0;
              v418 = xmmword_1E3047670;
              v419 = xmmword_1E3047680;
              v420 = xmmword_1E30476A0;
              v421 = xmmword_1E30474D0;
              LODWORD(v422) = 0;
              v19 = *v365;
              v10 = a4[2];
              v183 = v363;
              if (v10 <= v19)
              {
                goto LABEL_640;
              }

              v184 = a4[4] + (v19 << 9);
              v19 = *(v184 + 208);
              if (v19 <= v363)
              {
                goto LABEL_644;
              }

              v185 = v182;
              re::DynamicArray<float>::resize(buf, (3 * *(*(v184 + 224) + (v363 << 8) + 48)));
              v186 = *(v6 + 6);
              if (v186)
              {
                v187 = *(v6 + 8);
                for (i = 40 * v186; i; i -= 40)
                {
                  v189 = *(v187 + 16);
                  if (!strcmp(v189, "preTransform"))
                  {
                    if (*(v187 + 24) != 7)
                    {
                      goto LABEL_415;
                    }

                    v192 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6 + 392, *(v187 + 32));
                    v193 = v192[3];
                    v195 = *v192;
                    v194 = v192[1];
                    v416 = v192[2];
                    v417 = v193;
                    v414 = v195;
                    v415 = v194;
                  }

                  else if (!strcmp(v189, "postTransform"))
                  {
                    if (*(v187 + 24) != 7)
                    {
LABEL_415:
                      v200 = v187;
                      v201 = 7;
LABEL_416:
                      goto LABEL_417;
                    }

                    v196 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6 + 392, *(v187 + 32));
                    v197 = v196[3];
                    v199 = *v196;
                    v198 = v196[1];
                    v420 = v196[2];
                    v421 = v197;
                    v418 = v199;
                    v419 = v198;
                  }

                  else
                  {
                    if (!strcmp(v189, "blendingMode"))
                    {
                      if (*(v187 + 24) == 1)
                      {
                        LODWORD(v422) = *(v187 + 32);
                        goto LABEL_417;
                      }

                      v200 = v187;
                      v201 = 1;
                      goto LABEL_416;
                    }

                    if (!strcmp(v189, "envelopeVarName"))
                    {
                      if (*(v187 + 24) == 6)
                      {
                        v202 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v187 + 32));
                        __dst[0] = 1;
                        re::StringID::StringID(&__dst[8], v202);
                        if (__dst[0])
                        {
                          v203 = re::StringID::operator=(&v383, &__dst[8]);
LABEL_427:
                          if (__dst[0] == 1 && (__dst[8] & 1) != 0)
                          {
                            if (__dst[8])
                            {
                            }
                          }

                          goto LABEL_417;
                        }
                      }

                      else
                      {
                        __dst[0] = 0;
                      }

                      goto LABEL_427;
                    }

                    if (!strcmp(v189, "offsets"))
                    {
                      if (*(v187 + 24) == 4)
                      {
                        v190 = re::BucketArray<re::FixedArray<int>,8ul>::operator[]((v6 + 14), *(v187 + 32));
                        if (3 * *v187 <= buf[1].n128_u64[0])
                        {
                          memcpy(v413, v190[2], 12 * *v187);
                        }

                        else
                        {
                          v191 = *re::pipelineLogObjects(v190);
                          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                          {
                            *__dst = 0;
                            _os_log_impl(&dword_1E1C61000, v191, OS_LOG_TYPE_DEFAULT, "Invalid number of offsets specified.", __dst, 2u);
                          }
                        }

                        goto LABEL_417;
                      }

                      v200 = v187;
                      v201 = 4;
                      goto LABEL_416;
                    }
                  }

LABEL_417:
                  v187 += 40;
                }
              }

              v205 = *(v185 + 48);
              if (v205 >= *(v185 + 40))
              {
                re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::growCapacity((v185 + 32), v205 + 1);
                v205 = *(v185 + 48);
              }

              v206 = re::DynamicArray<float>::DynamicArray(*(v185 + 64) + 192 * v205, buf);
              *(v206 + 48) = v414;
              v207 = v415;
              v208 = v416;
              v209 = v418;
              *(v206 + 96) = v417;
              *(v206 + 112) = v209;
              *(v206 + 64) = v207;
              *(v206 + 80) = v208;
              v210 = v419;
              v211 = v420;
              v212 = v421;
              *(v206 + 176) = v422;
              *(v206 + 144) = v211;
              *(v206 + 160) = v212;
              *(v206 + 128) = v210;
              ++*(v185 + 48);
              ++*(v185 + 56);
              a4 = v362;
              if (buf[0].n128_u64[0] && v413)
              {
                (*(*buf[0].n128_u64[0] + 40))();
              }
            }

            v213 = *v365;
            v10 = a4[2];
            if (v10 <= v213)
            {
              goto LABEL_620;
            }

            re::DynamicArray<re::MeshAssetSmoothDeformerData>::add((a4[4] + (v213 << 9) + 432), &v383);
            if (v393)
            {
              v214 = v394;
              v215 = *(*(&v393 + 1) + 4 * (0x826C6ABF7FDD5AD7 % DWORD2(v394)));
              v216 = v361;
              if (v215 == 0x7FFFFFFF)
              {
LABEL_444:
                v215 = 0x7FFFFFFFLL;
              }

              else
              {
                while (*(v394 + 56 * v215 + 4) != 9)
                {
                  v215 = *(v394 + 56 * v215) & 0x7FFFFFFF;
                  if (v215 == 0x7FFFFFFF)
                  {
                    goto LABEL_444;
                  }
                }
              }
            }

            else
            {
              v214 = v394;
              v215 = 0x7FFFFFFFLL;
              v216 = v361;
            }

            v146 = *(v214 + 56 * v215 + 8);
            __dst[0] = 1;
            v10 = a4[7];
            if (v10 <= v216)
            {
              goto LABEL_624;
            }

            re::StringID::StringID(&__dst[8], (a4[9] + 96 * v216));
            v10 = *v365;
            v217 = a4;
            a4 = a4[2];
            if (a4 <= v10)
            {
              goto LABEL_628;
            }

            v218 = v217[4] + (v10 << 9);
            v10 = *(v218 + 208);
            v219 = v363;
            if (v10 <= v363)
            {
              goto LABEL_632;
            }

            a4 = v217;
            v149 = *(v218 + 224) + (v363 << 8);
            goto LABEL_304;
          }

LABEL_378:
          v150 = strcmp(v26, "TensionDeformer");
          if (!v150)
          {
            goto LABEL_433;
          }

          if (v28 == 0x120E28E032)
          {
            if (v26 == "Tension")
            {
              goto LABEL_433;
            }

            v171 = v26;
            v172 = "Tension";
            goto LABEL_382;
          }

          v150 = strcmp(v26, "BoundingBoxCalculation");
          if (!v150)
          {
LABEL_455:
            v428[0] = 0;
            buf[0].n128_u64[0] = 0x32458CCC0A585AB0;
            v204 = "Bounding Box Calculation";
            goto LABEL_456;
          }

          if (v28 != 0x535C1C60DF8DDA89)
          {
            if (v28 != 0x1922C666052C2D58)
            {
              goto LABEL_464;
            }

            if (v26 == "Bounding Box Calculation")
            {
              goto LABEL_455;
            }

            v173 = v26;
            v174 = "Bounding Box Calculation";
            goto LABEL_384;
          }

          if (v26 == "OpenSubdivViewIndependentComputeStep" || !strcmp(v26, "OpenSubdivViewIndependentComputeStep"))
          {
            goto LABEL_502;
          }

LABEL_464:
          buf[0].n128_u64[0] = 0x637BDBD40E8681E4;
          buf[0].n128_u64[1] = "OpenSubdivViewDependentComputeStep";
          if (re::StringID::operator==(v6 + 2, buf) || (*__dst = 0x10444A02DC81C1ELL, *&__dst[8] = "VertexCache", re::StringID::operator==(v6 + 2, __dst)))
          {
LABEL_502:
            re::StringID::StringID(buf, v6 + 1);
            buf[1] = 0uLL;
            *&v413 = 0;
            re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
            if (buf[1].n128_u64[0])
            {
              if (buf[1].n128_u64[1])
              {
                (*(*buf[1].n128_u64[0] + 40))();
                buf[1].n128_u64[1] = 0;
                *&v413 = 0;
              }

              buf[1].n128_u64[0] = 0;
            }

            goto LABEL_506;
          }

          if (strcmp(v26, "JiggleDeformer"))
          {
            buf[0].n128_u64[0] = 0x150A9604D758308ALL;
            buf[0].n128_u64[1] = "JiggleDeformer";
            v221 = re::StringID::operator==(v6 + 2, buf);
            if (!v221)
            {
              v231 = *re::pipelineLogObjects(v221);
              if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
              {
                v232 = v231;
                v233 = *(v6 + 3);
                buf[0].n128_u32[0] = 136315138;
                *(buf[0].n128_u64 + 4) = v233;
                _os_log_impl(&dword_1E1C61000, v232, OS_LOG_TYPE_DEFAULT, "Unsupported deformer type: %s", buf, 0xCu);
              }

              goto LABEL_57;
            }
          }

          buf[0].n128_u64[0] = 0x2A152C09AEB06114;
          buf[0].n128_u64[1] = "JiggleDeformer";
          *&v413 = 0;
          buf[1] = 0uLL;
          re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
          if (buf[1].n128_u64[0])
          {
            if (buf[1].n128_u64[1])
            {
              (*(*buf[1].n128_u64[0] + 40))();
              buf[1].n128_u64[1] = 0;
              *&v413 = 0;
            }

            buf[1].n128_u64[0] = 0;
          }

          re::StringID::destroyString(buf);
          buf[0].n128_u64[0] = 0;
          buf[0].n128_u64[1] = &str_67;
          buf[1].n128_u64[0] = 0;
          buf[1].n128_u64[1] = &str_67;
          WORD4(v413) = v364;
          v222 = *(v6 + 6);
          if (!v222)
          {
LABEL_501:
            v230 = re::DynamicArray<re::MeshAssetModel>::operator[](a4[2], a4[4], *v365);
            re::DynamicArray<re::MeshAssetJiggleDeformerData>::add((v230 + 472), buf);
            re::StringID::destroyString(&buf[1]);
LABEL_506:
            re::StringID::destroyString(buf);
            goto LABEL_57;
          }

          v223 = *(v6 + 8);
          v224 = 40 * v222;
          while (1)
          {
            v225 = *(v223 + 16);
            if (!strcmp(v225, "envelopeVarName"))
            {
              break;
            }

            if (!strcmp(v225, "massVarName"))
            {
              if (*(v223 + 24) == 6)
              {
                v229 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v223 + 32));
                __dst[0] = 1;
                re::StringID::StringID(&__dst[8], v229);
                a4 = v362;
                if (__dst[0])
                {
                  v228 = buf;
LABEL_486:
                  re::StringID::operator=(v228->n128_u64, &__dst[8]);
LABEL_489:
                  if (__dst[0] == 1)
                  {
                    re::StringID::destroyString(&__dst[8]);
                  }

                  goto LABEL_495;
                }

LABEL_488:
                goto LABEL_489;
              }

LABEL_487:
              __dst[0] = 0;
              a4 = v362;
              goto LABEL_488;
            }

            if (!strcmp(v225, "stiffness"))
            {
              if (*(v223 + 24))
              {
              }

              else
              {
                LODWORD(v413) = *(v223 + 32);
              }

              a4 = v362;
            }

            else
            {
              v226 = strcmp(v225, "damping");
              a4 = v362;
              if (!v226)
              {
                if (*(v223 + 24))
                {
                }

                else
                {
                  DWORD1(v413) = *(v223 + 32);
                }
              }
            }

LABEL_495:
            v223 += 40;
            v224 -= 40;
            if (!v224)
            {
              goto LABEL_501;
            }
          }

          if (*(v223 + 24) == 6)
          {
            v227 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v223 + 32));
            __dst[0] = 1;
            re::StringID::StringID(&__dst[8], v227);
            a4 = v362;
            if (__dst[0])
            {
              v228 = &buf[1];
              goto LABEL_486;
            }

            goto LABEL_488;
          }

          goto LABEL_487;
        }
      }

LABEL_373:
      v428[0] = 0;
      buf[0].n128_u64[0] = 0xABCEC87F22A13454;
      buf[0].n128_u64[1] = "Renormalization";
      goto LABEL_457;
    }

    v29 = strcmp(v26, "Skinning");
    if (!v29)
    {
      goto LABEL_37;
    }

    if (v28 == 0x22A83AADBD1)
    {
      if (v26 == "Skinning")
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v34 = strcmp(v26, "SmoothDeformer");
    if (!v34)
    {
      goto LABEL_69;
    }

    if (v28 != 0x2D6F1CB4C5FBF820)
    {
      goto LABEL_64;
    }

    if (v26 == "SmoothDeformer")
    {
LABEL_69:
      LOBYTE(v377) = 0;
      buf[0].n128_u64[0] = 0x5ADE39698BF7F040;
      buf[0].n128_u64[1] = "SmoothDeformer";
      *__dst = &v377;
      *&__dst[8] = 1;
      *&v413 = 0;
      buf[1] = 0uLL;
      re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
      re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
      v41 = buf[1].n128_u64[0];
      if (buf[1].n128_u64[0])
      {
        if (buf[1].n128_u64[1])
        {
          v41 = (*(*buf[1].n128_u64[0] + 40))();
          buf[1].n128_u64[1] = 0;
          *&v413 = 0;
        }

        buf[1].n128_u64[0] = 0;
      }

      if (buf[0].n128_u8[0])
      {
        if (buf[0].n128_u8[0])
        {
        }
      }

      if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(v22))
      {
        if (!*(v22 + 4))
        {
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v22 + 4, 0);
          ++*(v22 + 14);
        }

        v42 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 336, 0);
        *v42 = 0u;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0u;
        *(v42 + 48) = 0u;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0u;
        *(v42 + 112) = 0u;
        *(v42 + 128) = 0u;
        *(v42 + 144) = 0u;
        *(v42 + 160) = 0u;
        *(v42 + 176) = 0u;
        *(v42 + 192) = 0u;
        *(v42 + 208) = 0u;
        *(v42 + 224) = 0u;
        *(v42 + 240) = 0u;
        *(v42 + 256) = 0u;
        *(v42 + 272) = 0u;
        *(v42 + 288) = 0u;
        *(v42 + 304) = 0u;
        *(v42 + 320) = 0u;
        ArcSharedObject::ArcSharedObject(v42, 0);
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *v43 = &unk_1F5CD0EC0;
        *(v43 + 40) = 0;
        *(v43 + 48) = 0;
        *(v43 + 32) = 0;
        *(v43 + 56) = 0;
        *(v43 + 64) = 0u;
        *(v43 + 80) = 0u;
        *(v43 + 96) = 0;
        *(v43 + 104) = 0u;
        *(v43 + 120) = 0u;
        v44 = objc_initWeak((v43 + 136), 0);
        *(v42 + 144) = 0;
        *(v42 + 176) = re::globalAllocators(v44)[2];
        *(v42 + 256) = 0;
        *(v42 + 224) = 0u;
        *(v42 + 240) = 0u;
        *(v42 + 216) = 0;
        *(v42 + 200) = 0u;
        *(v42 + 184) = 0u;
        *(v42 + 264) = 0;
        *(v42 + 272) = 0;
        *(v42 + 280) = -1;
        *(v42 + 304) = 0u;
        *(v42 + 320) = 0u;
        *(v42 + 288) = 0u;
        buf[0].n128_u64[0] = *((*(*v42 + 40))(v42) + 24) >> 1;
        buf[0].n128_u64[1] = v42;
        buf[1].n128_u8[0] = 1;
        re::DynamicArray<re::BufferView>::add((v22 + 32), buf);
        v428[0] = 10;
        v46 = re::globalAllocators(v45);
        v47 = (*(*v46[2] + 32))(v46[2], 40, 8);
        *v47 = 0u;
        *(v47 + 16) = 0u;
        *(v47 + 32) = 0;
        *__dst = &unk_1F5CD0FA0;
        *&__dst[24] = __dst;
        buf[0].n128_u64[0] = v47;
        *&v413 = &buf[0].n128_u64[1];
        buf[0].n128_u64[1] = &unk_1F5CD0FA0;
        re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::add(&v393, v428, buf);
        std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>::~unique_ptr[abi:nn200100](buf);
        std::__function::__value_func<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension> *)>::~__value_func[abi:nn200100](__dst);
      }

      *&v383.var0 = 0;
      v383.var1 = &str_67;
      LOWORD(v384) = v364;
      v48 = *(v6 + 6);
      if (v48)
      {
        v49 = *(v6 + 8);
        a4 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(v22);
        for (j = 40 * v48; j; j -= 40)
        {
          v51 = *(v49 + 16);
          if (!strcmp(v51, "lambda"))
          {
            if (*(v49 + 24))
            {
              buf[0].n128_u8[0] = 0;
              v54 = v49;
              v55 = 0;
LABEL_94:
              goto LABEL_95;
            }

            buf[0].n128_u32[1] = *(v49 + 32);
            buf[0].n128_u8[0] = 1;
            re::DynamicArray<float>::add((a4 + 9), &buf[0].n128_f32[1]);
          }

          else if (!strcmp(v51, "iterations"))
          {
            if (*(v49 + 24) != 1)
            {
              v54 = v49;
              v55 = 1;
              goto LABEL_94;
            }

            buf[0].n128_u32[0] = *(v49 + 32);
            re::DynamicArray<int>::add((a4 + 4), buf);
          }

          else if (!strcmp(v51, "envelopeVarName"))
          {
            if (*(v49 + 24) == 6)
            {
              v52 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v49 + 32));
              buf[0].n128_u8[0] = 1;
              re::StringID::StringID(&buf[0].n128_i8[8], v52);
              if (buf[0].n128_u8[0])
              {
                v53 = re::StringID::operator=(&v383, &buf[0].n128_i64[1]);
LABEL_99:
                if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
                {
                  if (buf[0].n128_u8[8])
                  {
                  }
                }

                goto LABEL_95;
              }
            }

            else
            {
              buf[0].n128_u8[0] = 0;
            }

            goto LABEL_99;
          }

LABEL_95:
          v49 += 40;
        }
      }

      v56 = *v365;
      v57 = v362[2];
      if (v57 <= v56)
      {
        *v428 = 0;
        v6 = &v393;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v294 = MEMORY[0x1E69E9C10];
        v295 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        if (v295)
        {
          v296 = 3;
        }

        else
        {
          v296 = 2;
        }

        *&__dst[18] = 2048;
        *&__dst[20] = v56;
        *&__dst[28] = 2048;
        *&__dst[30] = v57;
        _os_log_send_and_compose_impl(v296, v428, buf, 80, &dword_1E1C61000, v294, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_583:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v297 = MEMORY[0x1E69E9C10];
        v298 = v60;
        v299 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v299)
        {
          v300 = 3;
        }

        else
        {
          v300 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v298;
        *&v428[28] = 2048;
        *&v428[30] = v57;
        _os_log_send_and_compose_impl(v300, &v380, buf, 80, &dword_1E1C61000, v297, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_587:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v301 = MEMORY[0x1E69E9C10];
        v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v302)
        {
          v303 = 3;
        }

        else
        {
          v303 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v57;
        *&v428[28] = 2048;
        *&v428[30] = a4;
        _os_log_send_and_compose_impl(v303, &v380, buf, 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_591:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v304 = MEMORY[0x1E69E9C10];
        v19 = v148;
        v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v305)
        {
          v306 = 3;
        }

        else
        {
          v306 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v19;
        *&v428[28] = 2048;
        *&v428[30] = v57;
        _os_log_send_and_compose_impl(v306, &v380, buf, 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_595:
        *&v383.var0 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v307 = MEMORY[0x1E69E9C10];
        v10 = v235;
        v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v308)
        {
          v309 = 3;
        }

        else
        {
          v309 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v10;
        *&v428[28] = 2048;
        *&v428[30] = v19;
        _os_log_send_and_compose_impl(v309, &v383, buf, 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_599:
        *&v383.var0 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v310 = MEMORY[0x1E69E9C10];
        v311 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v311)
        {
          v312 = 3;
        }

        else
        {
          v312 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v19;
        *&v428[28] = 2048;
        *&v428[30] = v10;
        _os_log_send_and_compose_impl(v312, &v383, buf, 80, &dword_1E1C61000, v310, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_603:
        *&v383.var0 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v313 = MEMORY[0x1E69E9C10];
        v10 = v237;
        v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v314)
        {
          v315 = 3;
        }

        else
        {
          v315 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v10;
        *&v428[28] = 2048;
        *&v428[30] = v19;
        _os_log_send_and_compose_impl(v315, &v383, buf, 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_607:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v316 = MEMORY[0x1E69E9C10];
        v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        if (v317)
        {
          v318 = 3;
        }

        else
        {
          v318 = 2;
        }

        *&__dst[18] = 2048;
        *&__dst[20] = v19;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl(v318, &v380, buf, 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_611:
        *&v383.var0 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v319 = MEMORY[0x1E69E9C10];
        v320 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        *&v428[14] = 789;
        if (v320)
        {
          v321 = 3;
        }

        else
        {
          v321 = 2;
        }

        *&v428[18] = 2048;
        *&v428[20] = v19;
        *&v428[28] = 2048;
        *&v428[30] = v10;
        _os_log_send_and_compose_impl(v321, &v383, buf, 80, &dword_1E1C61000, v319, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_615:
        re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, v19, v20);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v348, v349);
        __break(1u);
LABEL_616:
        *v428 = 0;
        v213 = &v393;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v322 = MEMORY[0x1E69E9C10];
        v323 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 866;
        if (v323)
        {
          v324 = 3;
        }

        else
        {
          v324 = 2;
        }

        *&__dst[18] = 2048;
        *&__dst[20] = v10;
        *&__dst[28] = 2048;
        *&__dst[30] = v6;
        _os_log_send_and_compose_impl(v324, v428, buf, 80, &dword_1E1C61000, v322, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_620:
        *v428 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v325 = MEMORY[0x1E69E9C10];
        v326 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        if (v326)
        {
          v327 = 3;
        }

        else
        {
          v327 = 2;
        }

        *&__dst[18] = 2048;
        *&__dst[20] = v213;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl(v327, v428, buf, 80, &dword_1E1C61000, v325, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_624:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v328 = MEMORY[0x1E69E9C10];
        v329 = v216;
        v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v428[12] = 1024;
        *(a2 + 14) = 789;
        if (v330)
        {
          v331 = 3;
        }

        else
        {
          v331 = 2;
        }

        *&v428[18] = 2048;
        *(a2 + 20) = v329;
        *&v428[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl(v331, &v380, buf, 80, &dword_1E1C61000, v328, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_628:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v332 = MEMORY[0x1E69E9C10];
        v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v428[12] = 1024;
        *(a2 + 14) = 789;
        if (v333)
        {
          v334 = 3;
        }

        else
        {
          v334 = 2;
        }

        *&v428[18] = 2048;
        *(a2 + 20) = v10;
        *&v428[28] = 2048;
        *(a2 + 30) = a4;
        _os_log_send_and_compose_impl(v334, &v380, buf, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_632:
        v380 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v335 = MEMORY[0x1E69E9C10];
        v19 = v219;
        v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v428[12] = 1024;
        *(a2 + 14) = 789;
        if (v336)
        {
          v337 = 3;
        }

        else
        {
          v337 = 2;
        }

        *&v428[18] = 2048;
        *(a2 + 20) = v19;
        *&v428[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl(v337, &v380, buf, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_636:
        *v428 = 0;
        v414 = 0u;
        v415 = 0u;
        v413 = 0u;
        memset(buf, 0, sizeof(buf));
        v338 = MEMORY[0x1E69E9C10];
        v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *__dst = 136315906;
        *&__dst[4] = "operator[]";
        *&__dst[12] = 1024;
        *&__dst[14] = 789;
        if (v339)
        {
          v340 = 3;
        }

        else
        {
          v340 = 2;
        }

        *&__dst[18] = 2048;
        *&__dst[20] = v19;
        *&__dst[28] = 2048;
        *&__dst[30] = v10;
        _os_log_send_and_compose_impl(v340, v428, buf, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __dst, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_640:
        v380 = 0;
        v398 = 0u;
        v399 = 0u;
        memset(__dst, 0, sizeof(__dst));
        v341 = MEMORY[0x1E69E9C10];
        v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v428[12] = 1024;
        *(a2 + 14) = 789;
        if (v342)
        {
          v343 = 3;
        }

        else
        {
          v343 = 2;
        }

        *&v428[18] = 2048;
        *(a2 + 20) = v19;
        *&v428[28] = 2048;
        *(a2 + 30) = v10;
        _os_log_send_and_compose_impl(v343, &v380, __dst, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
LABEL_644:
        v380 = 0;
        v398 = 0u;
        v399 = 0u;
        memset(__dst, 0, sizeof(__dst));
        v344 = MEMORY[0x1E69E9C10];
        v345 = v183;
        v346 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *(a2 + 4) = "operator[]";
        *&v428[12] = 1024;
        *(a2 + 14) = 789;
        if (v346)
        {
          v347 = 3;
        }

        else
        {
          v347 = 2;
        }

        *&v428[18] = 2048;
        *(a2 + 20) = v345;
        *&v428[28] = 2048;
        *(a2 + 30) = v19;
        _os_log_send_and_compose_impl(v347, &v380, __dst, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
        _os_crash_msg();
        __break(1u);
      }

      re::DynamicArray<re::MeshAssetSmoothDeformerData>::add((v362[4] + (v56 << 9) + 352), &v383);
      if (v393)
      {
        v58 = v394;
        v59 = *(*(&v393 + 1) + 4 * (0x75C8519A9320579uLL % DWORD2(v394)));
        v60 = v361;
        if (v59 == 0x7FFFFFFF)
        {
LABEL_108:
          v59 = 0x7FFFFFFFLL;
        }

        else
        {
          while (*(v394 + 56 * v59 + 4) != 10)
          {
            v59 = *(v394 + 56 * v59) & 0x7FFFFFFF;
            if (v59 == 0x7FFFFFFF)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else
      {
        v58 = v394;
        v59 = 0x7FFFFFFFLL;
        v60 = v361;
      }

      v146 = *(v58 + 56 * v59 + 8);
      __dst[0] = 1;
      v57 = v362[7];
      if (v57 <= v60)
      {
        goto LABEL_583;
      }

      re::StringID::StringID(&__dst[8], (v362[9] + 96 * v60));
      v57 = *v365;
      a4 = v362[2];
      if (a4 <= v57)
      {
        goto LABEL_587;
      }

      v147 = v362[4] + (v57 << 9);
      v57 = *(v147 + 208);
      v148 = v363;
      if (v57 <= v363)
      {
        goto LABEL_591;
      }

      a4 = v362;
      v149 = *(v147 + 224) + (v363 << 8);
LABEL_304:
      re::StringID::StringID(&__dst[24], (v149 + 72));
      v145 = re::DynamicArray<re::MeshIdentifierAsset>::add(v146, __dst);
      if (__dst[24])
      {
        if (__dst[24])
        {
        }
      }

      *&__dst[32] = &str_67;
      *&__dst[24] = 0;
      if (__dst[8])
      {
        if (__dst[8])
        {
        }
      }

LABEL_310:
      if ((*&v383.var0 & 1) == 0)
      {
        goto LABEL_57;
      }

      if ((*&v383.var0 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_312:
      goto LABEL_57;
    }

    v39 = strcmp(v26, "WrapDeformer");
    if (!v39)
    {
      goto LABEL_109;
    }

LABEL_67:
    v40 = strcmp(v26, "ContactDeformer");
    if (v40)
    {
      goto LABEL_318;
    }

LABEL_323:
    LOBYTE(v377) = 0;
    buf[0].n128_u64[0] = 0x22F387A552F200A4;
    buf[0].n128_u64[1] = "ContactDeformer";
    *__dst = &v377;
    *&__dst[8] = 1;
    *&v413 = 0;
    buf[1] = 0uLL;
    re::FixedArray<unsigned char>::copy(buf[1].n128_u64, __dst);
    re::DynamicArray<re::DeformationDefinition>::add(&v388, buf);
    v152 = buf[1].n128_u64[0];
    if (buf[1].n128_u64[0])
    {
      if (buf[1].n128_u64[1])
      {
        v152 = (*(*buf[1].n128_u64[0] + 40))();
        buf[1].n128_u64[1] = 0;
        *&v413 = 0;
      }

      buf[1].n128_u64[0] = 0;
    }

    if (buf[0].n128_u8[0])
    {
      if (buf[0].n128_u8[0])
      {
      }
    }

    *__dst = 0;
    *&__dst[8] = &str_67;
    memset(&__dst[16], 0, 24);
    *&__dst[40] = v364;
    v153 = *(v6 + 11);
    v154 = *(v6 + 6);
    if (v154)
    {
      v155 = *(v6 + 8);
      v156 = 40 * v154;
      while (strcmp(*(v155 + 16), "offsetsVarName"))
      {
LABEL_342:
        v155 += 40;
        v156 -= 40;
        if (!v156)
        {
          goto LABEL_343;
        }
      }

      if (*(v155 + 24) == 6)
      {
        v157 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 21), *(v155 + 32));
        buf[0].n128_u8[0] = 1;
        re::StringID::StringID(&buf[0].n128_i8[8], v157);
        if (buf[0].n128_u8[0])
        {
          v158 = re::StringID::operator=(__dst, &buf[0].n128_i64[1]);
LABEL_338:
          if (buf[0].n128_u8[0] == 1 && (buf[0].n128_u8[8] & 1) != 0)
          {
            if (buf[0].n128_u8[8])
            {
            }
          }

          goto LABEL_342;
        }
      }

      else
      {
        buf[0].n128_u8[0] = 0;
      }

      goto LABEL_338;
    }

LABEL_343:
    v159 = *(v6 + 11);
    if (v159)
    {
      break;
    }

LABEL_365:
    v19 = *v365;
    a4 = v362;
    v10 = v362[2];
    if (v10 <= v19)
    {
      goto LABEL_611;
    }

    re::DynamicArray<re::MeshAssetContactDeformerData>::add((v362[4] + (v19 << 9) + 312), __dst);
    v22 = a1;
    a2 = v428;
    if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::SkeletalPoseComponent>(a1))
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(a1);
    }

    if (!re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::RigComponent>(a1))
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a1);
    }

    v170 = re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(&__dst[16]);
    if (__dst[0])
    {
      if (__dst[0])
      {
        goto LABEL_312;
      }
    }

LABEL_57:
    v6 += 28;
    if (v6 == v366)
    {
      goto LABEL_509;
    }
  }

  v160 = 0;
  v161 = *(v6 + 13);
  a2 = (v161 + 40 * v159);
  while (1)
  {
    v162 = *(v161 + 16);
    if (v162)
    {
      break;
    }

LABEL_364:
    ++v160;
    v161 += 40;
    if (v161 == a2)
    {
      goto LABEL_365;
    }
  }

  v163 = *(v161 + 32);
  v164 = 40 * v162;
  while (2)
  {
    v165 = *(v163 + 16);
    if (strcmp(v165, "jointIndex"))
    {
      if (!strcmp(v165, "radius"))
      {
        if (!*(v163 + 24))
        {
          a4 = *&__dst[24];
          if (*&__dst[24] <= v160)
          {
            goto LABEL_530;
          }

          *(*&__dst[32] + 32 * v160 + 4) = *(v163 + 32);
LABEL_363:
          v163 += 40;
          v164 -= 40;
          if (!v164)
          {
            goto LABEL_364;
          }

          continue;
        }

        v168 = v163;
        v169 = 0;
      }

      else
      {
        if (strcmp(v165, "heightMap"))
        {
          goto LABEL_363;
        }

        if (*(v163 + 24) == 3)
        {
          v166 = re::BucketArray<re::FixedArray<int>,8ul>::operator[](v6 + 168, *(v163 + 32));
          v167 = *v163;
          v383.var1 = *(v166 + 16);
          v384 = v167;
          *&v383.var0 = 1;
          a4 = *&__dst[24];
          if (*&__dst[24] <= v160)
          {
            goto LABEL_534;
          }

          re::FixedArray<int>::operator=((*&__dst[32] + 32 * v160 + 8), &v383.var1);
          goto LABEL_363;
        }

        *&v383.var0 = 0;
        v168 = v163;
        v169 = 3;
      }

LABEL_362:
      goto LABEL_363;
    }

    break;
  }

  if (*(v163 + 24) != 1)
  {
    v168 = v163;
    v169 = 1;
    goto LABEL_362;
  }

  a4 = *&__dst[24];
  if (*&__dst[24] > v160)
  {
    *(*&__dst[32] + 32 * v160) = *(v163 + 32);
    goto LABEL_363;
  }

  *&v383.var0 = 0;
  v414 = 0u;
  v415 = 0u;
  v413 = 0u;
  memset(buf, 0, sizeof(buf));
  v242 = MEMORY[0x1E69E9C10];
  v243 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v428 = 136315906;
  *&v428[4] = "operator[]";
  *&v428[12] = 1024;
  *&v428[14] = 468;
  if (v243)
  {
    v244 = 3;
  }

  else
  {
    v244 = 2;
  }

  *&v428[18] = 2048;
  *&v428[20] = v160;
  *&v428[28] = 2048;
  *&v428[30] = a4;
  _os_log_send_and_compose_impl(v244, &v383, buf, 80, &dword_1E1C61000, v242, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
  _os_crash_msg();
  __break(1u);
LABEL_530:
  *&v383.var0 = 0;
  v414 = 0u;
  v415 = 0u;
  v413 = 0u;
  memset(buf, 0, sizeof(buf));
  v245 = MEMORY[0x1E69E9C10];
  v246 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v428 = 136315906;
  *&v428[4] = "operator[]";
  *&v428[12] = 1024;
  *&v428[14] = 468;
  if (v246)
  {
    v247 = 3;
  }

  else
  {
    v247 = 2;
  }

  *&v428[18] = 2048;
  *&v428[20] = v160;
  *&v428[28] = 2048;
  *&v428[30] = a4;
  _os_log_send_and_compose_impl(v247, &v383, buf, 80, &dword_1E1C61000, v245, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
  _os_crash_msg();
  __break(1u);
LABEL_534:
  v380 = 0;
  v414 = 0u;
  v415 = 0u;
  v413 = 0u;
  memset(buf, 0, sizeof(buf));
  v248 = MEMORY[0x1E69E9C10];
  v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  *v428 = 136315906;
  *&v428[4] = "operator[]";
  *&v428[12] = 1024;
  *&v428[14] = 468;
  if (v249)
  {
    v250 = 3;
  }

  else
  {
    v250 = 2;
  }

  *&v428[18] = 2048;
  *&v428[20] = v160;
  *&v428[28] = 2048;
  *&v428[30] = a4;
  _os_log_send_and_compose_impl(v250, &v380, buf, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v350, v351);
  _os_crash_msg();
  __break(1u);
LABEL_538:
  LODWORD(v239) = 0;
LABEL_539:
  if (v239 != v23)
  {
    v251 = v394;
    while (1)
    {
      v252 = v251 + 56 * v239;
      v253 = *(v252 + 4);
      if (v253 == 9)
      {
        break;
      }

      if (v253 == 10)
      {
        v254 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshSmoothComponent>(a1);
        v255 = *(a3 + 104);
        v256 = *a2;
        v257 = *(a2 + 1);
        v258 = *(v252 + 8);
        *(v252 + 8) = 0;
        v259 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
        v260 = re::ImportAssetTable::addAsset(v255, v256, v257, v258, v259);
        if (*(v260 + 8))
        {
          v261 = *(v260 + 16);
        }

        else
        {
          v261 = (v260 + 9);
        }

        v269 = (v254 + 112);
LABEL_551:
        a4 = v362;
        a2 = v352;
      }

      if (v23 <= v239 + 1)
      {
        v270 = v239 + 1;
      }

      else
      {
        v270 = v23;
      }

      while (v270 - 1 != v239)
      {
        LODWORD(v239) = v239 + 1;
        if ((*(v251 + 56 * v239) & 0x80000000) != 0)
        {
          goto LABEL_559;
        }
      }

      LODWORD(v239) = v270;
LABEL_559:
      if (v239 == v23)
      {
        goto LABEL_560;
      }
    }

    v262 = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MeshOffsetsComponent>(a1);
    v263 = *(a3 + 104);
    v264 = *a2;
    v265 = *(a2 + 1);
    v266 = *(v252 + 8);
    *(v252 + 8) = 0;
    v267 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
    v268 = re::ImportAssetTable::addAsset(v263, v264, v265, v266, v267);
    if (*(v268 + 8))
    {
      v261 = *(v268 + 16);
    }

    else
    {
      v261 = (v268 + 9);
    }

    v269 = (v262 + 72);
    goto LABEL_551;
  }

LABEL_560:
  v271 = v434;
  if (*(v434 + 7))
  {
    v272 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a1);
    v273 = *(a3 + 104);
    v274 = *a2;
    v275 = *(a2 + 1);
    v276 = v434;
    v434 = 0;
    v277 = re::MeshDeformationAsset::assetType(v272);
    v278 = re::ImportAssetTable::addAsset(v273, v274, v275, v276, v277);
    if (*(v278 + 8))
    {
      v279 = *(v278 + 16);
    }

    else
    {
      v279 = (v278 + 9);
    }
  }

  else
  {
    re::DynamicArray<re::DeformationStackDefinition>::deinit(v434);
    v280 = re::DynamicArray<re::MeshDeformationIndex>::deinit(v271 + 40);
    v281 = v434;
    if (*(v434 + 7))
    {
      v282 = re::ecs2::EntityAssetData::addComponent<re::ecs2::MeshDeformationComponent>(a1);
      v283 = *(a3 + 104);
      v284 = *a2;
      v285 = *(a2 + 1);
      v286 = v434;
      v434 = 0;
      v287 = re::MeshDeformationAsset::assetType(v282);
      v288 = re::ImportAssetTable::addAsset(v283, v284, v285, v286, v287);
      if (*(v288 + 8))
      {
        v289 = *(v288 + 16);
      }

      else
      {
        v289 = (v288 + 9);
      }

      a4 = v362;
    }

    if (a4[12])
    {
      re::ecs2::EntityAssetData::addComponent<re::ecs2::SkeletalPoseComponent>(a1);
      re::ecs2::EntityAssetData::addComponent<re::ecs2::RigComponent>(a1);
    }

    v291 = a4[2];
    if (v291)
    {
      v292 = (a4[4] + 128);
      v293 = v291 << 9;
      while (!*v292)
      {
        v292 += 64;
        v293 -= 512;
        if (!v293)
        {
          goto LABEL_568;
        }
      }

      re::ecs2::EntityAssetData::addComponent<re::ecs2::BlendShapeWeightsComponent>(a1);
    }
  }

LABEL_568:
  re::HashTable<unsigned char,std::unique_ptr<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>,std::function<void ()(re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>*)>>,re::Hash<unsigned char>,re::EqualTo<unsigned char>,true,false>::deinit(&v393);
  return std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](&v434);
}