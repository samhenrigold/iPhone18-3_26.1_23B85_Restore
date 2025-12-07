uint64_t re::KeyValueStore::addOrReplaceValue<re::DynamicArray<float>>(re::KeyValueStore *a1, StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<re::DynamicArray<float>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 584, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v13);
    }
  }

  v17 = re::introspect<re::DynamicArray<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 584, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<re::DynamicArray<re::Vector3<float>>>(re::KeyValueStore *a1, StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info)
    {
      return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 632, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0, v13);
    }
  }

  v17 = re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 632, a2, a3);
}

void *re::KeyValueStore::addOrReplaceValue<re::BlendShapeWeights>(uint64_t a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v29);
  if (HIDWORD(v30) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 24) + 32 * HIDWORD(v30);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v28 = v8;
    v8 = v28;
    if (v22)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v23, v24, v25, v26, v27);
      v8 = v28;
    }
  }

  if (v8 != re::introspect<re::BlendShapeWeights>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v29);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v29);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v17, v18, v19, v20, v21);
    }

    v29 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v29);
    return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 728, a2, a3);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v29, a1 + 728, a2);
  v15 = HIDWORD(v30);
  if (HIDWORD(v30) != 0x7FFFFFFF)
  {
    ++*(a1 + 768);
    v16 = *(a1 + 744) + 56 * v15;
    v13 = v16 + 24;
    re::FixedArray<float>::operator=((v16 + 24), a3);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v16 + 48), a3[3]);
    return v13;
  }

  return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(a1 + 728, v29, v30, a2, a3);
}

uint64_t re::KeyValueStore::addOrReplaceValue<unsigned char>(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v21);
  if (HIDWORD(v22) != 0x7FFFFFFF)
  {
    v7 = *(a1 + 24) + 32 * HIDWORD(v22);
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v20 = v8;
      v8 = v20;
      if (v18)
      {
        re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v19);
        v8 = v20;
      }
    }

    if (v8 == re::introspect<unsigned char>(BOOL)::info)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v21, a1 + 776, a2);
      v14 = HIDWORD(v22);
      if (HIDWORD(v22) == 0x7FFFFFFF)
      {
        v15 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 776, v22, v21);
        re::StringID::StringID((v15 + 8), a2);
        *(v15 + 24) = *a3;
        v12 = v15 + 24;
        ++*(a1 + 816);
      }

      else
      {
        ++*(a1 + 816);
        v16 = *(a1 + 792) + 32 * v14;
        *(v16 + 24) = *a3;
        return v16 + 24;
      }

      return v12;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v21);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v21);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v17);
  }

  v21 = re::introspect<unsigned char>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v21);
  return re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 776, a2, a3);
}

uint64_t re::KeyValueStore::addAndSwapValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v5 = this;
    v8 = &unk_1EE187000;
    {
      goto LABEL_3;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "swapValue", "addAndSwapValue", 67);
    _os_crash("assertion failure: (swapValue) ");
    __break(1u);
  }

  {
    *(v8 + 42) = re::introspect_BOOL(0, v74);
  }

LABEL_3:
  if (*(v8 + 42) == v7)
  {
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v12 ^ (v12 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v13 = *(v5 + 3) + 32 * v101;
      v16 = *(v13 + 24);
      v15 = (v13 + 24);
      v14 = v16;
      if ((atomic_load_explicit(v9, memory_order_acquire) & 1) == 0)
      {
        v93 = v14;
        v14 = v93;
        if (v80)
        {
          *(v8 + 42) = re::introspect_BOOL(0, v81);
          v14 = v93;
        }
      }

      if (v14 == *(v8 + 42))
      {
        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 56, v6, v36 ^ (v36 >> 31), &v100);
        v37 = *(v5 + 9) + 32 * v101;
        v38 = *(v37 + 24);
        *(v37 + 24) = *v4;
        *v4 = v38;
        return 1;
      }

      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v17 ^ (v17 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v15, v6);
    }

    {
      *(v8 + 42) = re::introspect_BOOL(0, v77);
    }

    v100 = *(v8 + 42);
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 56, v6, v4);
    return 0;
  }

  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v75);
  }

  if (re::introspect<float>(BOOL)::info == v7)
  {
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v18 ^ (v18 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v19 = *(v5 + 3) + 32 * v101;
      v22 = *(v19 + 24);
      v21 = (v19 + 24);
      v20 = v22;
      {
        v94 = v20;
        v20 = v94;
        if (v83)
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v84);
          v20 = v94;
        }
      }

      if (v20 == re::introspect<float>(BOOL)::info)
      {
        v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 104, v6, v45 ^ (v45 >> 31), &v100);
        v46 = *(v5 + 15) + 32 * v101;
        v47 = *(v46 + 24);
        *(v46 + 24) = *v4;
        *v4 = v47;
        return 1;
      }

      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v23 ^ (v23 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v21, v6);
    }

    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v79);
    }

    v100 = re::introspect<float>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 104, v6, v4);
    return 0;
  }

  {
    re::introspect<double>(BOOL)::info = re::introspect_double(0, v76);
  }

  if (re::introspect<double>(BOOL)::info == v7)
  {
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v24 ^ (v24 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v25 = *(v5 + 3) + 32 * v101;
      v28 = *(v25 + 24);
      v27 = (v25 + 24);
      v26 = v28;
      {
        v95 = v26;
        v26 = v95;
        if (v86)
        {
          re::introspect<double>(BOOL)::info = re::introspect_double(0, v87);
          v26 = v95;
        }
      }

      if (v26 == re::introspect<double>(BOOL)::info)
      {
        v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 152, v6, v54 ^ (v54 >> 31), &v100);
        v55 = *(v5 + 21) + 32 * v101;
        v56 = *(v55 + 24);
        *(v55 + 24) = *v4;
LABEL_82:
        *v4 = v56;
        return 1;
      }

      v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v29 ^ (v29 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v27, v6);
    }

    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v82);
    }

    v100 = re::introspect<double>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 152, v6, v4);
    return 0;
  }

  {
    re::introspect<int>(BOOL)::info = re::introspect_int(0, v78);
  }

  if (re::introspect<int>(BOOL)::info == v7)
  {
    v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v30 ^ (v30 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    v31 = *(v5 + 3) + 32 * v101;
    v34 = *(v31 + 24);
    v33 = (v31 + 24);
    v32 = v34;
    {
      v96 = v32;
      v32 = v96;
      if (v88)
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v89);
        v32 = v96;
      }
    }

    if (v32 != re::introspect<int>(BOOL)::info)
    {
      v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v35 ^ (v35 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v33, v6);
LABEL_52:
      {
        re::introspect<int>(BOOL)::info = re::introspect_int(0, v85);
      }

      v100 = re::introspect<int>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 200, v6, v4);
      return 0;
    }

    v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v6, v63 ^ (v63 >> 31), &v100);
    v64 = *(v5 + 27) + 32 * v101;
    v65 = *(v64 + 24);
    *(v64 + 24) = *v4;
    *v4 = v65;
    return 1;
  }

  {
    re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
  }

  if (re::introspect<re::Vector2<float>>(BOOL)::info == v7)
  {
    v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v39 ^ (v39 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_59;
    }

    v40 = *(v5 + 3) + 32 * v101;
    v43 = *(v40 + 24);
    v42 = (v40 + 24);
    v41 = v43;
    {
      v97 = v41;
      v41 = v97;
      if (v90)
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
        v41 = v97;
      }
    }

    if (v41 != re::introspect<re::Vector2<float>>(BOOL)::info)
    {
      v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v44 ^ (v44 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v42, v6);
LABEL_59:
      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      }

      v100 = re::introspect<re::Vector2<float>>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 248, v6, v4);
      return 0;
    }

    v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 248, v6, v66 ^ (v66 >> 31), &v100);
    v67 = *(v5 + 33) + 32 * v101;
    v56 = *(v67 + 24);
    *(v67 + 24) = *v4;
    goto LABEL_82;
  }

  {
    re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
  }

  if (re::introspect<re::Vector3<float>>(BOOL)::info == v7)
  {
    v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v48 ^ (v48 >> 31), &v100);
    if (v101 != 0x7FFFFFFF)
    {
      v49 = *(v5 + 3) + 32 * v101;
      v52 = *(v49 + 24);
      v51 = (v49 + 24);
      v50 = v52;
      {
        v98 = v50;
        v50 = v98;
        if (v91)
        {
          re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
          v50 = v98;
        }
      }

      if (v50 == re::introspect<re::Vector3<float>>(BOOL)::info)
      {
        v68 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
        re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 296, v6, v68 ^ (v68 >> 31), &v100);
        v69 = v101;
        v70 = *(v5 + 39);
LABEL_91:
        v72 = v70 + 48 * v69;
        v73 = *(v72 + 32);
        *(v72 + 32) = *v4;
        *v4 = v73;
        return 1;
      }

      v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v53 ^ (v53 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v51, v6);
    }

    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v100 = re::introspect<re::Vector3<float>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 296, v6, v4);
    return 0;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (re::introspect<re::Vector4<float>>(BOOL)::info == v7)
  {
    v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v57 ^ (v57 >> 31), &v100);
    if (v101 == 0x7FFFFFFF)
    {
      goto LABEL_73;
    }

    v58 = *(v5 + 3) + 32 * v101;
    v61 = *(v58 + 24);
    v60 = (v58 + 24);
    v59 = v61;
    {
      v99 = v59;
      v59 = v99;
      if (v92)
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
        v59 = v99;
      }
    }

    if (v59 != re::introspect<re::Vector4<float>>(BOOL)::info)
    {
      v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 8, v6, v62 ^ (v62 >> 31), &v100);
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v5 + 8, &v100);
      re::KeyValueStore::removeValue(v5, *v60, v6);
LABEL_73:
      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      }

      v100 = re::introspect<re::Vector4<float>>(BOOL)::info;
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 8, v6, &v100);
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v5 + 344, v6, v4);
      return 0;
    }

    v71 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v6 >> 31) ^ (*v6 >> 1))) >> 27));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 344, v6, v71 ^ (v71 >> 31), &v100);
    v69 = v101;
    v70 = *(v5 + 45);
    goto LABEL_91;
  }

  {
    re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
  }

  if (re::introspect<re::Quaternion<float>>(BOOL)::info == v7)
  {

    return re::KeyValueStore::addAndSwapValue<re::Quaternion<float>>(v5, v6, v4);
  }

  else
  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    if (re::introspect<re::GenericSRT<float>>(BOOL)::info == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::GenericSRT<float>>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicString>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicString>(v5, v6, v4);
    }

    else if (re::introspect<re::SkeletalPose>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::SkeletalPose>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicArray<float>>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicArray<float>>(v5, v6, v4);
    }

    else if (re::introspect<re::DynamicArray<re::Vector3<float>>>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::DynamicArray<re::Vector3<float>>>(v5, v6, v4);
    }

    else if (re::introspect<long long>(0) == v7)
    {

      return re::KeyValueStore::addAndSwapValue<long long>(v5, v6, v4);
    }

    else if (re::introspect<re::BlendShapeWeights>() == v7)
    {

      return re::KeyValueStore::addAndSwapValue<re::BlendShapeWeights>(v5, v6, v4);
    }

    else
    {
      v10 = re::introspect<unsigned char>(0);
      result = 0;
      if (v10 == v7)
      {

        return re::KeyValueStore::addAndSwapValue<unsigned char>(v5, v6, v4);
      }
    }
  }

  return result;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::Quaternion<float>>(re::KeyValueStore *a1, const re::StringID *a2, _OWORD *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v18);
  if (v19 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v19;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v17 = v8;
      v8 = v17;
      if (v16)
      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
        v8 = v17;
      }
    }

    if (v8 == re::introspect<re::Quaternion<float>>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 392, a2, v13 ^ (v13 >> 31), &v18);
      v14 = *(a1 + 51) + 48 * v19;
      v15 = *(v14 + 32);
      *(v14 + 32) = *a3;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v18);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v18);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }
  }

  v18 = re::introspect<re::Quaternion<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v18);
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 392, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::GenericSRT<float>>(re::KeyValueStore *a1, const re::StringID *a2, __int128 *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v22);
  if (v23 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v23;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v21 = v8;
      v8 = v21;
      if (v20)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v8 = v21;
      }
    }

    if (v8 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 440, a2, v13 ^ (v13 >> 31), &v22);
      v14 = (*(a1 + 57) + 80 * v23);
      v15 = v14[2];
      v16 = v14[3];
      v17 = v14[4];
      v19 = a3[1];
      v18 = a3[2];
      v14[2] = *a3;
      v14[3] = v19;
      v14[4] = v18;
      a3[1] = v16;
      a3[2] = v17;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v22);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v22);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }
  }

  v22 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v22);
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 440, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicString>(re::KeyValueStore *a1, const re::StringID *a2, re::DynamicString *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v21);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v19 = v8;
    v8 = v19;
    if (v17)
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v18);
      v8 = v19;
    }
  }

  if (v8 != re::introspect<re::DynamicString>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v16);
      }
    }

    v20 = re::introspect<re::DynamicString>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 488, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 488, a2, v13 ^ (v13 >> 31), &v20);
  v14 = (*(a1 + 63) + 56 * HIDWORD(v21));
  v15 = *(v14 + 3);
  v14 = (v14 + 24);
  v20 = v15;
  *v14 = 0;
  v22 = *(v14 + 2);
  *(v14 + 2) = 0;
  v23 = *(v14 + 3);
  *(v14 + 3) = 0;
  v21 = *(v14 + 1);
  *(v14 + 1) = 0;
  re::DynamicString::operator=(v14, a3);
  re::DynamicString::operator=(a3, &v20);
  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::SkeletalPose>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v28);
  if (v29 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * v29;
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v27 = v8;
    v8 = v27;
    if (v21)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v22, v23, v24, v25, v26);
      v8 = v27;
    }
  }

  if (v8 != re::introspect<re::SkeletalPose>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v28);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v28);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v16, v17, v18, v19, v20);
      }
    }

    v28 = re::introspect<re::SkeletalPose>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v28);
    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 536, a2, a3);
    return 0;
  }

  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v28, a1 + 536, a2);
  v13 = *(a1 + 69) + 112 * v29;
  re::StringID::StringID(&v28, (v13 + 24));
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v30, (v13 + 40));
  re::DynamicArray<BOOL>::DynamicArray(v31, (v13 + 64));
  v14 = *(v13 + 104);
  v32 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
  }

  re::StringID::operator=((v13 + 24), a3);
  re::FixedArray<re::GenericSRT<float>>::operator=((v13 + 40), a3 + 2);
  re::DynamicArray<BOOL>::operator=(v13 + 64, a3 + 5);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 104), a3[10]);
  re::StringID::operator=(a3, &v28);
  re::FixedArray<re::GenericSRT<float>>::operator=(a3 + 2, v30);
  re::DynamicArray<BOOL>::operator=((a3 + 5), v31);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a3 + 10, v32);
  re::SkeletalPose::~SkeletalPose(&v28);
  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicArray<float>>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v21);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v19 = v8;
    v8 = v19;
    if (v17)
    {
      re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v18);
      v8 = v19;
    }
  }

  if (v8 != re::introspect<re::DynamicArray<float>>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicArray<float>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<float>>::get(0, v16);
      }
    }

    v20 = re::introspect<re::DynamicArray<float>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 584, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 584, a2, v13 ^ (v13 >> 31), &v20);
  v14 = (*(a1 + 75) + (HIDWORD(v21) << 6));
  v15 = v14[3];
  v14 += 3;
  v20 = v15;
  *v14 = 0;
  v21 = v14[1];
  v14[1] = 0;
  v22 = v14[2];
  v14[2] = 0;
  v24 = v14[4];
  v14[4] = 0;
  ++*(v14 + 6);
  v23 = 1;
  re::DynamicArray<re::RigComponentConstraint>::operator=(v14, a3);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v20);
  if (v20 && v24)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::DynamicArray<re::Vector3<float>>>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * HIDWORD(v21);
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v19 = v8;
    v8 = v19;
    if (v17)
    {
      re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0, v18);
      v8 = v19;
    }
  }

  if (v8 != re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(0, v16);
      }
    }

    v20 = re::introspect<re::DynamicArray<re::Vector3<float>>>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
    re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 632, a2, a3);
    return 0;
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 632, a2, v13 ^ (v13 >> 31), &v20);
  v14 = (*(a1 + 81) + (HIDWORD(v21) << 6));
  v15 = v14[3];
  v14 += 3;
  v20 = v15;
  *v14 = 0;
  v21 = v14[1];
  v14[1] = 0;
  v22 = v14[2];
  v14[2] = 0;
  v24 = v14[4];
  v14[4] = 0;
  ++*(v14 + 6);
  v23 = 1;
  re::DynamicArray<re::RigComponentConstraint>::operator=(v14, a3);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a3, &v20);
  if (v20 && v24)
  {
    (*(*v20 + 40))();
  }

  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<long long>(re::KeyValueStore *a1, const re::StringID *a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v20);
  if (v21 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v21;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v19 = v8;
      v8 = v19;
      if (v17)
      {
        re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v18);
        v8 = v19;
      }
    }

    if (v8 == re::introspect<long long>(BOOL)::info)
    {
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 680, a2, v13 ^ (v13 >> 31), &v20);
      v14 = *(a1 + 87) + 32 * v21;
      v15 = *(v14 + 24);
      *(v14 + 24) = *a3;
      *a3 = v15;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v20);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v20);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v16);
    }
  }

  v20 = re::introspect<long long>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v20);
  re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 680, a2, a3);
  return 0;
}

uint64_t re::KeyValueStore::addAndSwapValue<re::BlendShapeWeights>(re::KeyValueStore *a1, const re::StringID *a2, uint64_t *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v28);
  if (v29 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 3) + 32 * v29;
  v10 = *(v7 + 24);
  v9 = (v7 + 24);
  v8 = v10;
  {
    v27 = v8;
    v8 = v27;
    if (v21)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v22, v23, v24, v25, v26);
      v8 = v27;
    }
  }

  if (v8 != re::introspect<re::BlendShapeWeights>(BOOL)::info)
  {
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v28);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v28);
    re::KeyValueStore::removeValue(a1, *v9, a2);
LABEL_5:
    {
      {
        re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v16, v17, v18, v19, v20);
      }
    }

    v28 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v28);
    re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 728, a2, a3);
    return 0;
  }

  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v28, a1 + 728, a2);
  v13 = *(a1 + 93) + 56 * v29;
  re::FixedArray<float>::FixedArray(&v28, (v13 + 24));
  v14 = *(v13 + 48);
  v30 = v14;
  if (v14)
  {
    v15 = (v14 + 8);
  }

  re::FixedArray<float>::operator=((v13 + 24), a3);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v13 + 48), a3[3]);
  re::FixedArray<float>::operator=(a3, &v28);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a3 + 3, v30);
  re::BlendShapeWeights::~BlendShapeWeights(&v28);
  return 1;
}

uint64_t re::KeyValueStore::addAndSwapValue<unsigned char>(re::KeyValueStore *a1, const re::StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v19);
  if (v20 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v20;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v18 = v8;
      v8 = v18;
      if (v16)
      {
        re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v17);
        v8 = v18;
      }
    }

    if (v8 == re::introspect<unsigned char>(BOOL)::info)
    {
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v19, a1 + 776, a2);
      v13 = *(a1 + 99) + 32 * v20;
      v14 = *(v13 + 24);
      *(v13 + 24) = *a3;
      *a3 = v14;
      return 1;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v19);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v19);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v15);
    }
  }

  v19 = re::introspect<unsigned char>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v19);
  re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 776, a2, a3);
  return 0;
}

unint64_t re::KeyValueStore::getValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3)
{
  v4 = a2;
  if (!a2)
  {
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a3, v6 ^ (v6 >> 31), &v41);
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v4 = *(*(this + 3) + 32 * v42 + 24);
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v31)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v32);
      v7 = &unk_1EE187000;
    }
  }

  if (v4 == v7[42])
  {
    v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, v15 ^ (v15 >> 31), &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 9);
      goto LABEL_41;
    }

    return 0;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v33)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v34);
      v8 = &unk_1EE187000;
    }
  }

  if (v4 == v8[40])
  {
    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a3, v16 ^ (v16 >> 31), &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 15);
      goto LABEL_41;
    }

    return 0;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v35)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v36);
      v9 = &unk_1EE187000;
    }
  }

  if (v4 == v9[41])
  {
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a3, v17 ^ (v17 >> 31), &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 21);
      goto LABEL_41;
    }

    return 0;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v37)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v38);
      v10 = &unk_1EE187000;
    }
  }

  if (v4 == v10[38])
  {
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, v18 ^ (v18 >> 31), &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 27);
      goto LABEL_41;
    }

    return 0;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v39)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v11 = &unk_1EE187000;
    }
  }

  if (v4 == v11[48])
  {
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 248, a3, v19 ^ (v19 >> 31), &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 33);
      goto LABEL_41;
    }

    return 0;
  }

  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v40)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v12 = &unk_1EE187000;
    }
  }

  if (v4 == v12[47])
  {
    v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1))) >> 27));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 296, a3, v22 ^ (v22 >> 31), &v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 39);
    goto LABEL_49;
  }

  {
    re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
  }

  if (v4 == re::introspect<re::Vector4<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 344, a3, &v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 45);
    goto LABEL_49;
  }

  {
    re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
  }

  if (v4 == re::introspect<re::Quaternion<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 392, a3, &v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 51);
LABEL_49:
    v25 = 48;
    return v24 + v23 * v25 + 32;
  }

  {
    re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
  }

  if (v4 == re::introspect<re::GenericSRT<float>>(BOOL)::info)
  {
    re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 440, a3, &v41);
    v23 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v24 = *(this + 57);
    v25 = 80;
    return v24 + v23 * v25 + 32;
  }

  if (v4 == re::introspect<re::DynamicString>())
  {
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 488, a3, &v41);
    v26 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v27 = *(this + 63);
    goto LABEL_55;
  }

  if (v4 == re::introspect<re::SkeletalPose>())
  {
    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v41, this + 536, a3);
    v26 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v27 = *(this + 69);
    v28 = 112;
LABEL_58:
    v20 = v27 + v26 * v28;
    return v20 + 24;
  }

  if (v4 == re::introspect<re::DynamicArray<float>>())
  {
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 584, a3, &v41);
    v29 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v30 = *(this + 75);
LABEL_63:
    v20 = v30 + (v29 << 6);
    return v20 + 24;
  }

  if (v4 == re::introspect<re::DynamicArray<re::Vector3<float>>>())
  {
    re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 632, a3, &v41);
    v29 = v42;
    if (v42 == 0x7FFFFFFF)
    {
      return 0;
    }

    v30 = *(this + 81);
    goto LABEL_63;
  }

  if (v4 == re::introspect<long long>(0))
  {
    re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 680, a3, &v41);
    v13 = v42;
    if (v42 != 0x7FFFFFFF)
    {
      v14 = *(this + 87);
      goto LABEL_41;
    }

    return 0;
  }

  if (v4 != re::introspect<re::BlendShapeWeights>())
  {
    if (v4 == re::introspect<unsigned char>(0))
    {
      re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v41, this + 776, a3);
      v13 = v42;
      if (v42 != 0x7FFFFFFF)
      {
        v14 = *(this + 99);
LABEL_41:
        v20 = v14 + 32 * v13;
        return v20 + 24;
      }
    }

    return 0;
  }

  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v41, this + 728, a3);
  v26 = v42;
  if (v42 != 0x7FFFFFFF)
  {
    v27 = *(this + 93);
LABEL_55:
    v28 = 56;
    goto LABEL_58;
  }

  return 0;
}

uint64_t re::KeyValueStore::typeInfo(re::KeyValueStore *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 8, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 32 * v6 + 24);
  }
}

void re::KeyValueStore::removeValue(re::KeyValueStore *this, const re::IntrospectionBase *a2, const re::StringID *a3)
{
  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v24)
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v25);
      v6 = &unk_1EE187000;
    }
  }

  if (v6[42] == a2)
  {
    v15 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 56, a3, (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 56, v37);
    return;
  }

  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v26)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v27);
      v7 = &unk_1EE187000;
    }
  }

  if (v7[40] == a2)
  {
    v16 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 104, a3, (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 104, v37);
    return;
  }

  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v28)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v29);
      v8 = &unk_1EE187000;
    }
  }

  if (v8[41] == a2)
  {
    v17 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a3, (0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v37);
    return;
  }

  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v30)
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v31);
      v9 = &unk_1EE187000;
    }
  }

  if (v9[38] == a2)
  {
    v18 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a3, (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 200, v37);
    return;
  }

  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v32)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v10 = &unk_1EE187000;
    }
  }

  if (v10[48] == a2)
  {
    v19 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 248, a3, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 248, v37);
    return;
  }

  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v33)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v11 = &unk_1EE187000;
    }
  }

  if (v11[47] == a2)
  {
    v20 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 296, a3, (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 296, v37);
    return;
  }

  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v34)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v12 = &unk_1EE187000;
    }
  }

  if (v12[46] == a2)
  {
    v21 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 344, a3, (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), v37);
    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 344, v37);
    return;
  }

  v13 = &unk_1EE187000;
  {
    v13 = &unk_1EE187000;
    if (v35)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v13 = &unk_1EE187000;
    }
  }

  if (v13[245] == a2)
  {

    re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 392, a3);
  }

  else
  {
    v14 = &unk_1EE187000;
    {
      v14 = &unk_1EE187000;
      if (v36)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        v14 = &unk_1EE187000;
      }
    }

    if (v14[248] == a2)
    {

      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 440, a3);
    }

    else if (re::introspect<re::DynamicString>() == a2)
    {

      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 488, a3);
    }

    else
    {
      if (re::introspect<re::SkeletalPose>() != a2)
      {
        if (re::introspect<re::DynamicArray<float>>() == a2)
        {
          v22 = this + 584;
          v23 = a3;
        }

        else
        {
          if (re::introspect<re::DynamicArray<re::Vector3<float>>>() != a2)
          {
            if (re::introspect<long long>(0) == a2)
            {

              re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 680, a3);
            }

            else if (re::introspect<re::BlendShapeWeights>() == a2)
            {

              re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 728, a3);
            }

            else if (re::introspect<unsigned char>(0) == a2)
            {

              re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 776, a3);
            }

            return;
          }

          v22 = this + 632;
          v23 = a3;
        }

        re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(v22, v23);
        return;
      }

      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 536, a3);
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D80))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9E08);
    qword_1EE1A9E08 = &unk_1F5CF1DD0;
    __cxa_guard_release(&qword_1EE1A9D80);
  }

  if ((_MergedGlobals_283 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_BOOL(1, v3);
    if ((_MergedGlobals_283 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_283 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9E08, 0);
      qword_1EE1A9E18 = 0x3000000007;
      dword_1EE1A9E20 = v6;
      word_1EE1A9E24 = 0;
      *&xmmword_1EE1A9E28 = 0;
      *(&xmmword_1EE1A9E28 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9E38 = v2;
      unk_1EE1A9E40 = 0;
      qword_1EE1A9E48 = v5;
      unk_1EE1A9E50 = 0;
      qword_1EE1A9E08 = &unk_1F5CF1DD0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A9E08);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9E28 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D88))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9E58);
    qword_1EE1A9E58 = &unk_1F5CF1E70;
    __cxa_guard_release(&qword_1EE1A9D88);
  }

  if ((byte_1EE1A9D49 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_float(1, v3);
    if ((byte_1EE1A9D49 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D49 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9E58, 0);
      qword_1EE1A9E68 = 0x3000000007;
      dword_1EE1A9E70 = v6;
      word_1EE1A9E74 = 0;
      *&xmmword_1EE1A9E78 = 0;
      *(&xmmword_1EE1A9E78 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9E88 = v2;
      unk_1EE1A9E90 = 0;
      qword_1EE1A9E98 = v5;
      unk_1EE1A9EA0 = 0;
      qword_1EE1A9E58 = &unk_1F5CF1E70;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A9E58);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9E78 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D90))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9EA8);
    qword_1EE1A9EA8 = &unk_1F5CF1F10;
    __cxa_guard_release(&qword_1EE1A9D90);
  }

  if ((byte_1EE1A9D4A & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_double(1, v3);
    if ((byte_1EE1A9D4A & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D4A = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9EA8, 0);
      qword_1EE1A9EB8 = 0x3000000007;
      dword_1EE1A9EC0 = v6;
      word_1EE1A9EC4 = 0;
      *&xmmword_1EE1A9EC8 = 0;
      *(&xmmword_1EE1A9EC8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9ED8 = v2;
      unk_1EE1A9EE0 = 0;
      qword_1EE1A9EE8 = v5;
      unk_1EE1A9EF0 = 0;
      qword_1EE1A9EA8 = &unk_1F5CF1F10;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A9EA8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9EC8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D98))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9EF8);
    qword_1EE1A9EF8 = &unk_1F5CF1FB0;
    __cxa_guard_release(&qword_1EE1A9D98);
  }

  if ((byte_1EE1A9D4B & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_int(1, v3);
    if ((byte_1EE1A9D4B & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D4B = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9EF8, 0);
      qword_1EE1A9F08 = 0x3000000007;
      dword_1EE1A9F10 = v6;
      word_1EE1A9F14 = 0;
      *&xmmword_1EE1A9F18 = 0;
      *(&xmmword_1EE1A9F18 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9F28 = v2;
      unk_1EE1A9F30 = 0;
      qword_1EE1A9F38 = v5;
      unk_1EE1A9F40 = 0;
      qword_1EE1A9EF8 = &unk_1F5CF1FB0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1A9EF8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9F18 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DA0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9F48);
    qword_1EE1A9F48 = &unk_1F5CF2050;
    __cxa_guard_release(&qword_1EE1A9DA0);
  }

  if ((byte_1EE1A9D4C & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector2F(1);
    if ((byte_1EE1A9D4C & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4C = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9F48, 0);
      qword_1EE1A9F58 = 0x3000000007;
      dword_1EE1A9F60 = v5;
      word_1EE1A9F64 = 0;
      *&xmmword_1EE1A9F68 = 0;
      *(&xmmword_1EE1A9F68 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9F78 = v2;
      qword_1EE1A9F80 = 0;
      qword_1EE1A9F88 = v4;
      qword_1EE1A9F90 = 0;
      qword_1EE1A9F48 = &unk_1F5CF2050;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, &qword_1EE1A9F48);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A9F68 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DA8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9F98);
    qword_1EE1A9F98 = &unk_1F5CF20F0;
    __cxa_guard_release(&qword_1EE1A9DA8);
  }

  if ((byte_1EE1A9D4D & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector3F(1);
    if ((byte_1EE1A9D4D & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4D = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9F98, 0);
      qword_1EE1A9FA8 = 0x3000000007;
      dword_1EE1A9FB0 = v5;
      word_1EE1A9FB4 = 0;
      *&xmmword_1EE1A9FB8 = 0;
      *(&xmmword_1EE1A9FB8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A9FC8 = v2;
      qword_1EE1A9FD0 = 0;
      qword_1EE1A9FD8 = v4;
      qword_1EE1A9FE0 = 0;
      qword_1EE1A9F98 = &unk_1F5CF20F0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, &qword_1EE1A9F98);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1A9FB8 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DB0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9FE8);
    qword_1EE1A9FE8 = &unk_1F5CF2190;
    __cxa_guard_release(&qword_1EE1A9DB0);
  }

  if ((byte_1EE1A9D4E & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_Vector4F(1);
    if ((byte_1EE1A9D4E & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4E = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9FE8, 0);
      qword_1EE1A9FF8 = 0x3000000007;
      dword_1EE1AA000 = v5;
      word_1EE1AA004 = 0;
      *&xmmword_1EE1AA008 = 0;
      *(&xmmword_1EE1AA008 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA018 = v2;
      qword_1EE1AA020 = 0;
      qword_1EE1AA028 = v4;
      qword_1EE1AA030 = 0;
      qword_1EE1A9FE8 = &unk_1F5CF2190;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, &qword_1EE1A9FE8);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA008 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DB8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA038);
    qword_1EE1AA038 = &unk_1F5CF2230;
    __cxa_guard_release(&qword_1EE1A9DB8);
  }

  if ((byte_1EE1A9D4F & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_QuaternionF(1);
    if ((byte_1EE1A9D4F & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D4F = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA038, 0);
      qword_1EE1AA048 = 0x3000000007;
      dword_1EE1AA050 = v5;
      word_1EE1AA054 = 0;
      *&xmmword_1EE1AA058 = 0;
      *(&xmmword_1EE1AA058 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA068 = v2;
      qword_1EE1AA070 = 0;
      qword_1EE1AA078 = v4;
      qword_1EE1AA080 = 0;
      qword_1EE1AA038 = &unk_1F5CF2230;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, &qword_1EE1AA038);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA058 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DC0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA088);
    qword_1EE1AA088 = &unk_1F5CF22D0;
    __cxa_guard_release(&qword_1EE1A9DC0);
  }

  if ((byte_1EE1A9D50 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = re::introspect_SRT(1);
    if ((byte_1EE1A9D50 & 1) == 0)
    {
      v4 = v3;
      byte_1EE1A9D50 = 1;
      v5 = *(v3 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA088, 0);
      qword_1EE1AA098 = 0x3000000007;
      dword_1EE1AA0A0 = v5;
      word_1EE1AA0A4 = 0;
      *&xmmword_1EE1AA0A8 = 0;
      *(&xmmword_1EE1AA0A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA0B8 = v2;
      qword_1EE1AA0C0 = 0;
      qword_1EE1AA0C8 = v4;
      qword_1EE1AA0D0 = 0;
      qword_1EE1AA088 = &unk_1F5CF22D0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v22, &qword_1EE1AA088);
      if (BYTE8(v22))
      {
        v8 = v23;
      }

      else
      {
        v8 = &v22 + 9;
      }

      if (v22 && (BYTE8(v22) & 1) != 0)
      {
        (*(*v22 + 40))();
      }

      v9 = v2[2];
      v17 = *(v4 + 32);
      v18 = v9;
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        *&v22 = 0x449AD97C4B77BED4;
        *(&v22 + 1) = "_CompareFunc";
        if (v22)
        {
          if (v22)
          {
          }
        }

        if (!v28)
        {
          v24[0] = 0x449AD97C4B77BED4;
          v24[1] = "_CompareFunc";
          v28 = v22;
          if (v24[0])
          {
            if (v24[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v27, &v22 + 8);
        if (!v28 || (v13 = *v27[2], *&v22 = *(&v28 + 1), *(&v22 + 1) = v13, LODWORD(v23) = -1, (v14 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v27[0] + 768, &v22)) == 0) || !*v14)
        {
          v25 = v28;
          v26 = v18;
        }

        re::StackScratchAllocator::StackScratchAllocator(v24);
        re::TypeBuilder::TypeBuilder(&v22, v24);
        v20 = v17;
        v21 = v18;
        re::TypeBuilder::beginDictionaryType(&v22, &v19, 1, 0x30uLL, 8uLL, &v21, &v20);
        re::TypeBuilder::setConstructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v22, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v22, v15);
        re::StackScratchAllocator::~StackScratchAllocator(v24);
      }

      xmmword_1EE1AA0A8 = v16;
      if (v19)
      {
        if (v19)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DC8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA0D8);
    qword_1EE1AA0D8 = &unk_1F5CF2370;
    __cxa_guard_release(&qword_1EE1A9DC8);
  }

  if ((byte_1EE1A9D51 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v8 = re::introspect_SkeletalPose(1, v3, v4, v5, v6, v7);
    if ((byte_1EE1A9D51 & 1) == 0)
    {
      v9 = v8;
      byte_1EE1A9D51 = 1;
      v10 = *(v8 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA0D8, 0);
      qword_1EE1AA0E8 = 0x3000000007;
      dword_1EE1AA0F0 = v10;
      word_1EE1AA0F4 = 0;
      *&xmmword_1EE1AA0F8 = 0;
      *(&xmmword_1EE1AA0F8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA108 = v2;
      qword_1EE1AA110 = 0;
      qword_1EE1AA118 = v9;
      qword_1EE1AA120 = 0;
      qword_1EE1AA0D8 = &unk_1F5CF2370;
      re::IntrospectionRegistry::add(v11, v12);
      re::getPrettyTypeName(&v27, &qword_1EE1AA0D8);
      if (BYTE8(v27))
      {
        v13 = v28;
      }

      else
      {
        v13 = &v27 + 9;
      }

      if (v27 && (BYTE8(v27) & 1) != 0)
      {
        (*(*v27 + 40))();
      }

      v14 = v2[2];
      v22 = *(v9 + 32);
      v23 = v14;
      if (v34)
      {
        v21 = v34;
      }

      else
      {
        *&v27 = 0x449AD97C4B77BED4;
        *(&v27 + 1) = "_CompareFunc";
        if (v27)
        {
          if (v27)
          {
          }
        }

        if (!v33)
        {
          v29[0] = 0x449AD97C4B77BED4;
          v29[1] = "_CompareFunc";
          v33 = v27;
          if (v29[0])
          {
            if (v29[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v32, &v27 + 8);
        if (!v33 || (v18 = *v32[2], *&v27 = *(&v33 + 1), *(&v27 + 1) = v18, LODWORD(v28) = -1, (v19 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v32[0] + 768, &v27)) == 0) || !*v19)
        {
          v30 = v33;
          v31 = v23;
        }

        re::StackScratchAllocator::StackScratchAllocator(v29);
        re::TypeBuilder::TypeBuilder(&v27, v29);
        v25 = v22;
        v26 = v23;
        re::TypeBuilder::beginDictionaryType(&v27, &v24, 1, 0x30uLL, 8uLL, &v26, &v25);
        re::TypeBuilder::setConstructor(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v27, v20);
        re::StackScratchAllocator::~StackScratchAllocator(v29);
      }

      xmmword_1EE1AA0F8 = v21;
      if (v24)
      {
        if (v24)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DD0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA128);
    qword_1EE1AA128 = &unk_1F5CF2410;
    __cxa_guard_release(&qword_1EE1A9DD0);
  }

  if ((byte_1EE1A9D52 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v3);
    if ((byte_1EE1A9D52 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D52 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA128, 0);
      qword_1EE1AA138 = 0x3000000007;
      dword_1EE1AA140 = v6;
      word_1EE1AA144 = 0;
      *&xmmword_1EE1AA148 = 0;
      *(&xmmword_1EE1AA148 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA158 = v2;
      qword_1EE1AA160 = 0;
      qword_1EE1AA168 = v5;
      qword_1EE1AA170 = 0;
      qword_1EE1AA128 = &unk_1F5CF2410;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1AA128);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA148 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DD8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA178);
    qword_1EE1AA178 = &unk_1F5CF24B0;
    __cxa_guard_release(&qword_1EE1A9DD8);
  }

  if ((byte_1EE1A9D53 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::IntrospectionInfo<re::DynamicArray<re::Vector3<float>>>::get(1, v3);
    if ((byte_1EE1A9D53 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D53 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA178, 0);
      qword_1EE1AA188 = 0x3000000007;
      dword_1EE1AA190 = v6;
      word_1EE1AA194 = 0;
      *&xmmword_1EE1AA198 = 0;
      *(&xmmword_1EE1AA198 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA1A8 = v2;
      qword_1EE1AA1B0 = 0;
      qword_1EE1AA1B8 = v5;
      qword_1EE1AA1C0 = 0;
      qword_1EE1AA178 = &unk_1F5CF24B0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1AA178);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA198 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DE0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA1C8);
    qword_1EE1AA1C8 = &unk_1F5CF2550;
    __cxa_guard_release(&qword_1EE1A9DE0);
  }

  if ((byte_1EE1A9D54 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_int64_t(1, v3);
    if ((byte_1EE1A9D54 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D54 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA1C8, 0);
      qword_1EE1AA1D8 = 0x3000000007;
      dword_1EE1AA1E0 = v6;
      word_1EE1AA1E4 = 0;
      *&xmmword_1EE1AA1E8 = 0;
      *(&xmmword_1EE1AA1E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA1F8 = v2;
      qword_1EE1AA200 = 0;
      qword_1EE1AA208 = v5;
      qword_1EE1AA210 = 0;
      qword_1EE1AA1C8 = &unk_1F5CF2550;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1AA1C8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA1E8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DE8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA218);
    qword_1EE1AA218 = &unk_1F5CF25F0;
    __cxa_guard_release(&qword_1EE1A9DE8);
  }

  if ((byte_1EE1A9D55 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v8 = re::introspect_BlendShapeWeights(1, v3, v4, v5, v6, v7);
    if ((byte_1EE1A9D55 & 1) == 0)
    {
      v9 = v8;
      byte_1EE1A9D55 = 1;
      v10 = *(v8 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA218, 0);
      qword_1EE1AA228 = 0x3000000007;
      dword_1EE1AA230 = v10;
      word_1EE1AA234 = 0;
      *&xmmword_1EE1AA238 = 0;
      *(&xmmword_1EE1AA238 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA248 = v2;
      qword_1EE1AA250 = 0;
      qword_1EE1AA258 = v9;
      qword_1EE1AA260 = 0;
      qword_1EE1AA218 = &unk_1F5CF25F0;
      re::IntrospectionRegistry::add(v11, v12);
      re::getPrettyTypeName(&v27, &qword_1EE1AA218);
      if (BYTE8(v27))
      {
        v13 = v28;
      }

      else
      {
        v13 = &v27 + 9;
      }

      if (v27 && (BYTE8(v27) & 1) != 0)
      {
        (*(*v27 + 40))();
      }

      v14 = v2[2];
      v22 = *(v9 + 32);
      v23 = v14;
      if (v34)
      {
        v21 = v34;
      }

      else
      {
        *&v27 = 0x449AD97C4B77BED4;
        *(&v27 + 1) = "_CompareFunc";
        if (v27)
        {
          if (v27)
          {
          }
        }

        if (!v33)
        {
          v29[0] = 0x449AD97C4B77BED4;
          v29[1] = "_CompareFunc";
          v33 = v27;
          if (v29[0])
          {
            if (v29[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v32, &v27 + 8);
        if (!v33 || (v18 = *v32[2], *&v27 = *(&v33 + 1), *(&v27 + 1) = v18, LODWORD(v28) = -1, (v19 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v32[0] + 768, &v27)) == 0) || !*v19)
        {
          v30 = v33;
          v31 = v23;
        }

        re::StackScratchAllocator::StackScratchAllocator(v29);
        re::TypeBuilder::TypeBuilder(&v27, v29);
        v25 = v22;
        v26 = v23;
        re::TypeBuilder::beginDictionaryType(&v27, &v24, 1, 0x30uLL, 8uLL, &v26, &v25);
        re::TypeBuilder::setConstructor(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v27, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v27, v20);
        re::StackScratchAllocator::~StackScratchAllocator(v29);
      }

      xmmword_1EE1AA238 = v21;
      if (v24)
      {
        if (v24)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9DF0))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AA268);
    qword_1EE1AA268 = &unk_1F5CF2690;
    __cxa_guard_release(&qword_1EE1A9DF0);
  }

  if ((byte_1EE1A9D56 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_uint8_t(1, v3);
    if ((byte_1EE1A9D56 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1A9D56 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1AA268, 0);
      qword_1EE1AA278 = 0x3000000007;
      dword_1EE1AA280 = v6;
      word_1EE1AA284 = 0;
      *&xmmword_1EE1AA288 = 0;
      *(&xmmword_1EE1AA288 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AA298 = v2;
      qword_1EE1AA2A0 = 0;
      qword_1EE1AA2A8 = v5;
      qword_1EE1AA2B0 = 0;
      qword_1EE1AA268 = &unk_1F5CF2690;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1AA268);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AA288 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void *re::allocInfo_KeyValueStore(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA340, "KeyValueStore");
    __cxa_guard_release(&qword_1EE1A9D60);
  }

  return &unk_1EE1AA340;
}

void re::initInfo_KeyValueStore(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v65[0] = 0xB1B2D880730A6B1ELL;
  v65[1] = "KeyValueStore";
  if (v65[0])
  {
    if (v65[0])
    {
    }
  }

  *(this + 2) = v66;
  if ((atomic_load_explicit(&qword_1EE1A9D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D58))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_KeyValueStoreInterface(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "KeyValueStoreInterface";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1AA2B8 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "BOOLValues";
    *(v17 + 16) = &qword_1EE1A9E08;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x3800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AA2C0 = v17;
    v18 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v18, v19);
    v20 = (*(*v18 + 32))(v18, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "floatValues";
    *(v20 + 16) = &qword_1EE1A9E58;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x6800000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1AA2C8 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v21, v22);
    v23 = (*(*v21 + 32))(v21, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "doubleValues";
    *(v23 + 16) = &qword_1EE1A9EA8;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x9800000003;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1AA2D0 = v23;
    v24 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v24, v25);
    v26 = (*(*v24 + 32))(v24, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "intValues";
    *(v26 + 16) = &qword_1EE1A9EF8;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC800000004;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1AA2D8 = v26;
    v27 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v27, v28);
    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "Vector2FValues";
    *(v29 + 16) = &qword_1EE1A9F48;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0xF800000005;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1AA2E0 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v30, v31);
    v32 = (*(*v30 + 32))(v30, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "Vector3FValues";
    *(v32 + 16) = &qword_1EE1A9F98;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x12800000006;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1AA2E8 = v32;
    v33 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v33, v34);
    v35 = (*(*v33 + 32))(v33, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "Vector4FValues";
    *(v35 + 16) = &qword_1EE1A9FE8;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x15800000007;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1AA2F0 = v35;
    v36 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v36, v37);
    v38 = (*(*v36 + 32))(v36, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "QuaternionFValues";
    *(v38 + 16) = &qword_1EE1AA038;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x18800000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1AA2F8 = v38;
    v39 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v39, v40);
    v41 = (*(*v39 + 32))(v39, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "SRTValues";
    *(v41 + 16) = &qword_1EE1AA088;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x1B800000009;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1AA300 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "DynamicStringValues";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0x1E80000000ALL;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE1AA308 = v45;
    v46 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v46, v47);
    v48 = (*(*v46 + 32))(v46, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "SkeletalPoseValues";
    *(v48 + 16) = &qword_1EE1AA0D8;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x2180000000BLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1AA310 = v48;
    v49 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v49, v50);
    v51 = (*(*v49 + 32))(v49, 72, 8);
    *v51 = 1;
    *(v51 + 8) = "FloatArrayValues";
    *(v51 + 16) = &qword_1EE1AA128;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0x2480000000CLL;
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 0;
    *(v51 + 64) = 0;
    qword_1EE1AA318 = v51;
    v52 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v52, v53);
    v54 = (*(*v52 + 32))(v52, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "Vector3ArrayValues";
    *(v54 + 16) = &qword_1EE1AA178;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x2780000000DLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE1AA320 = v54;
    v55 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v55, v56);
    v57 = (*(*v55 + 32))(v55, 72, 8);
    *v57 = 1;
    *(v57 + 8) = "int64Values";
    *(v57 + 16) = &qword_1EE1AA1C8;
    *(v57 + 24) = 0;
    *(v57 + 32) = 0x2A80000000ELL;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    qword_1EE1AA328 = v57;
    v58 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v58, v59);
    v60 = (*(*v58 + 32))(v58, 72, 8);
    *v60 = 1;
    *(v60 + 8) = "BlendShapeWeightsValues";
    *(v60 + 16) = &qword_1EE1AA218;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0x2D80000000FLL;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0;
    qword_1EE1AA330 = v60;
    v61 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v61, v62);
    v63 = (*(*v61 + 32))(v61, 72, 8);
    *v63 = 1;
    *(v63 + 8) = "uint8Values";
    *(v63 + 16) = &qword_1EE1AA268;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0x30800000010;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 56) = 0;
    *(v63 + 64) = 0;
    qword_1EE1AA338 = v63;
    __cxa_guard_release(&qword_1EE1A9D58);
  }

  *(this + 2) = 0x33800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 17;
  *(this + 8) = &qword_1EE1AA2B8;
  *(this + 9) = re::internal::defaultConstruct<re::KeyValueStore>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::KeyValueStore>;
  *(this + 13) = re::internal::defaultConstructV2<re::KeyValueStore>;
  *(this + 14) = re::internal::defaultDestructV2<re::KeyValueStore>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v64 = v66;
}

double re::internal::defaultConstruct<re::KeyValueStore>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF1D78;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 44) = 0x7FFFFFFFLL;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 92) = 0x7FFFFFFFLL;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 140) = 0x7FFFFFFFLL;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 188) = 0x7FFFFFFFLL;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 248) = 0u;
  v4 = a3 + 248;
  *(v4 + 192) = 0u;
  v4 += 192;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 84) = 0x7FFFFFFFLL;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 132) = 0x7FFFFFFFLL;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 240) = 0u;
  v4 += 240;
  *(v4 + 144) = 0u;
  v4 += 144;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 48) = 0u;
  v4 -= 48;
  *(v4 - 108) = 0x7FFFFFFFLL;
  *(v4 - 64) = 0;
  *(v4 - 96) = 0u;
  *(v4 - 80) = 0u;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 84) = 0x7FFFFFFFLL;
  *(v4 + 128) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 192) = 0u;
  v4 += 192;
  *(v4 - 60) = 0x7FFFFFFFLL;
  *(v4 - 16) = 0;
  *(v4 - 48) = 0u;
  *(v4 - 32) = 0u;
  *(v4 - 12) = 0x7FFFFFFFLL;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 36) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::KeyValueStore>(uint64_t a1)
{
  *a1 = &unk_1F5CF1D78;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0u;
  v1 = a1 + 248;
  *(v1 + 192) = 0u;
  v1 += 192;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 16) = 0;
  *(v1 - 32) = 0u;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 132) = 0x7FFFFFFFLL;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 240) = 0u;
  v1 += 240;
  *(v1 + 144) = 0u;
  v1 += 144;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 48) = 0u;
  v1 -= 48;
  *(v1 - 108) = 0x7FFFFFFFLL;
  *(v1 - 64) = 0;
  *(v1 - 96) = 0u;
  *(v1 - 80) = 0u;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 16) = 0;
  *(v1 - 32) = 0u;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 192) = 0u;
  result = v1 + 192;
  *(result - 60) = 0x7FFFFFFFLL;
  *(result - 16) = 0;
  *(result - 48) = 0u;
  *(result - 32) = 0u;
  *(result - 12) = 0x7FFFFFFFLL;
  *(result + 32) = 0;
  *(result + 16) = 0u;
  *(result + 36) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_KeyValueComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA3D0, "KeyValueComponent");
    __cxa_guard_release(&qword_1EE1A9D70);
  }

  return &unk_1EE1AA3D0;
}

void re::ecs2::initInfo_KeyValueComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x7398D48E533EA556;
  v23[1] = "KeyValueComponent";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1A9D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9D78))
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
    qword_1EE1A9DF8 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1A9D68;
    if (!qword_1EE1A9D68)
    {
      v17 = re::allocInfo_KeyValueStore(v15);
      qword_1EE1A9D68 = v17;
      re::initInfo_KeyValueStore(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "keyValueStore";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000001;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A9E00 = v21;
    __cxa_guard_release(&qword_1EE1A9D78);
  }

  *(this + 2) = 0x35800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A9DF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::KeyValueComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::KeyValueComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::KeyValueComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::KeyValueComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217KeyValueComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v22 = v24;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        result[3] = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

__n128 re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID(&v8->n128_i8[8], a2);
    result = *a3;
    v8[2] = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID(&v8->n128_i8[8], a2);
    result = *a3;
    v8[2] = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 48 * HIDWORD(v10) + 32;
  }

  v7 = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 32;
  *(v7 + 32) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14, v13);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    v10 = *(a3 + 32);
    *(v8 + 48) = *(a3 + 16);
    *(v8 + 64) = v10;
    *(v8 + 32) = result;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 80 * v7;
    result = *a3;
    v12 = *(a3 + 32);
    *(v11 + 48) = *(a3 + 16);
    *(v11 + 64) = v12;
    *(v11 + 32) = result;
  }

  return result;
}

_OWORD *re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, __int128 *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 80 * HIDWORD(v12) + 32);
  }

  v7 = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v12, v11);
  re::StringID::StringID((v7 + 8), a2);
  result = v7 + 2;
  v9 = *a3;
  v10 = a3[2];
  v7[3] = a3[1];
  v7[4] = v10;
  v7[2] = v9;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 80 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 80 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 80 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 80 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 80 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 80 * v4;
}

void re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v12 = (*(a2 + 16) + v5);
        v13 = v12[2];
        v14 = v12[4];
        *(result + 48) = v12[3];
        *(result + 64) = v14;
        *(result + 32) = v13;
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void *re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 112 * HIDWORD(v10) + 24);
  }

  v6 = v9;
  v7 = v10;

  return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(a1, v6, v7, a2, a3);
}

BOOL re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 112 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 112 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 112 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 112 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 112 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

void *re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::SkeletalPose const&>(uint64_t a1, unint64_t a2, uint64_t a3, const StringID *a4, uint64_t a5)
{
  v8 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  re::StringID::StringID((v8 + 1), a4);
  re::StringID::StringID((v8 + 3), a5);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v8 + 5, (a5 + 16));
  re::DynamicArray<BOOL>::DynamicArray((v8 + 8), (a5 + 40));
  v9 = *(a5 + 80);
  v8[13] = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v8 + 3;
}

uint64_t re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 112 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 112 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 112 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 112 * v4;
}

void re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v21, 0, 36);
      *&v21[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v21, v4, a2);
      v5 = *v21;
      *v21 = *a1;
      *a1 = v5;
      v6 = *&v21[16];
      v7 = *(a1 + 16);
      *&v21[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v21[24];
      *&v21[24] = *(a1 + 24);
      v8 = *&v21[32];
      *(a1 + 24) = v9;
      ++*&v21[40];
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = 0xBF58476D1CE4E5B9 * ((*(v12 + 8) >> 31) ^ (*(v12 + 8) >> 1));
            v14 = (0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31);
            v15 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14 % *(a1 + 24), v14);
            v16 = *(v12 + 8);
            v15[1] = v15[1] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            v15[1] = *(v12 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            v15[2] = *(v12 + 16);
            *(v12 + 8) = 0;
            *(v12 + 16) = &str_67;
            v7 = *&v21[16];
            v17 = (*&v21[16] + v10);
            re::StringID::StringID((v15 + 3), (*&v21[16] + v10 + 24));
            re::FixedArray<re::GenericSRT<float>>::FixedArray(v15 + 5, v17 + 5);
            re::DynamicArray<BOOL>::DynamicArray((v15 + 8), v17 + 8);
            v18 = v17[13];
            v15[13] = v18;
            if (v18)
            {
              v19 = (v18 + 8);
            }
          }

          ++v11;
          v10 += 112;
        }

        while (v11 < *&v21[32]);
      }

      re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
    }
  }

  else
  {
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicArray<float>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 24;
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<float> const&>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::DynamicArray<float>::DynamicArray(v7 + 24, a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v4 << 6;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + (v4 << 6);
}

void re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 56) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 - 48) >> 31) ^ (*(v7 - 48) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v6;
        v11 = *(v10 - 48);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 - 48) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 - 40);
        *(v10 - 48) = 0;
        *(v10 - 40) = &str_67;
        v12 = (*(a2 + 16) + v6);
        *(result + 56) = 0;
        *(result + 48) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        v13 = *(v12 - 3);
        *(result + 24) = *(v12 - 4);
        *(result + 32) = v13;
        *(v12 - 4) = 0;
        *(v12 - 3) = 0;
        v14 = *(result + 40);
        *(result + 40) = *(v12 - 2);
        *(v12 - 2) = v14;
        v15 = *(result + 56);
        *(result + 56) = *v12;
        *v12 = v15;
        ++*(v12 - 2);
        ++*(result + 48);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 64;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicArray<re::Vector3<float>>::operator=(*(a1 + 16) + (v7 << 6) + 24, a3);
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 24;
  }
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::DynamicArray<re::Vector3<float>> const&>(uint64_t a1, uint64_t a2, const StringID *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::StringID::StringID((v7 + 8), a3);
  re::DynamicArray<re::Vector3<float>>::DynamicArray(v7 + 24, a4);
  ++*(a1 + 40);
  return v7 + 24;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v4 << 6;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + (v4 << 6);
}

void re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 56;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 56) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 - 48) >> 31) ^ (*(v7 - 48) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v6;
        v11 = *(v10 - 48);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 - 48) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 - 40);
        *(v10 - 48) = 0;
        *(v10 - 40) = &str_67;
        v12 = (*(a2 + 16) + v6);
        *(result + 56) = 0;
        *(result + 48) = 0;
        *(result + 32) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        v13 = *(v12 - 3);
        *(result + 24) = *(v12 - 4);
        *(result + 32) = v13;
        *(v12 - 4) = 0;
        *(v12 - 3) = 0;
        v14 = *(result + 40);
        *(result + 40) = *(v12 - 2);
        *(v12 - 2) = v14;
        v15 = *(result + 56);
        *(result + 56) = *v12;
        *v12 = v15;
        ++*(v12 - 2);
        ++*(result + 48);
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 64;
    }

    while (v5 < v2);
  }

  return result;
}

void *re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 56 * HIDWORD(v10) + 24);
  }

  v6 = v9;
  v7 = v10;

  return re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(a1, v6, v7, a2, a3);
}

BOOL re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 56 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 56 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 56 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        v8 = v12;
        v13 = *(v10 + 56 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 56 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

void *re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::BlendShapeWeights const&>(uint64_t a1, unint64_t a2, uint64_t a3, const StringID *a4, uint64_t *a5)
{
  v8 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, a3, a2);
  re::StringID::StringID((v8 + 1), a4);
  re::FixedArray<float>::FixedArray(v8 + 3, a5);
  v9 = a5[3];
  v8[6] = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v8 + 3;
}

uint64_t re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 56 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 56 * v4;
}

void re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v21, 0, 36);
      *&v21[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v21, v4, a2);
      v5 = *v21;
      *v21 = *a1;
      *a1 = v5;
      v6 = *&v21[16];
      v7 = *(a1 + 16);
      *&v21[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v21[24];
      *&v21[24] = *(a1 + 24);
      v8 = *&v21[32];
      *(a1 + 24) = v9;
      ++*&v21[40];
      if (v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(v7 + v10) & 0x80000000) != 0)
          {
            v12 = v7 + v10;
            v13 = 0xBF58476D1CE4E5B9 * ((*(v12 + 8) >> 31) ^ (*(v12 + 8) >> 1));
            v14 = (0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31);
            v15 = re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14 % *(a1 + 24), v14);
            v16 = *(v12 + 8);
            v15[1] = v15[1] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            v15[1] = *(v12 + 8) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
            v15[2] = *(v12 + 16);
            *(v12 + 8) = 0;
            *(v12 + 16) = &str_67;
            v7 = *&v21[16];
            v17 = *&v21[16] + v10;
            re::FixedArray<float>::FixedArray(v15 + 3, (*&v21[16] + v10 + 24));
            v18 = *(v17 + 48);
            v15[6] = v18;
            if (v18)
            {
              v19 = (v18 + 8);
            }
          }

          ++v11;
          v10 += 56;
        }

        while (v11 < *&v21[32]);
      }

      re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v21);
    }
  }

  else
  {
    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v9, a1, a2);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 24;
  }

  v6 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
  re::StringID::StringID((v6 + 8), a2);
  *(v6 + 24) = *a3;
  v7 = v6 + 24;
  ++*(a1 + 40);
  return v7;
}

uint64_t re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v19, 0, 36);
      *&v19[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v19, v4, a2);
      v5 = *v19;
      *v19 = *a1;
      *a1 = v5;
      v6 = *&v19[16];
      v7 = *(a1 + 16);
      *&v19[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v19[24];
      *&v19[24] = *(a1 + 24);
      v8 = *&v19[32];
      *(a1 + 24) = v9;
      ++*&v19[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((*(v7 + v11) & 0x80000000) != 0)
          {
            v13 = v7 + v11;
            v14 = 0xBF58476D1CE4E5B9 * ((*(v7 + v11 + 8) >> 31) ^ (*(v7 + v11 + 8) >> 1));
            v15 = (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31);
            v16 = re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v15 % *(a1 + 24), v15);
            v17 = *(v13 + 8);
            *(v16 + 8) = *(v16 + 8) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
            *(v16 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
            *(v16 + 16) = *(v13 + 16);
            *(v13 + 8) = 0;
            *(v13 + 16) = &str_67;
            v7 = *&v19[16];
            *(v16 + 24) = *(*&v19[16] + v11 + 24);
            v10 = *&v19[32];
          }

          ++v12;
          v11 += 32;
        }

        while (v12 < v10);
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v19);
    }
  }

  else
  {
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 3;
    }
  }
}

BOOL re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 48 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 48 * v5) = *(v6 + 48 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 48 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 48 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 48 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 80 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::StringID::destroyString((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 80 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 80 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

void re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v8, a1, a2);
  v3 = v10;
  if (v10 != 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    v5 = (v4 + 112 * v10);
    v6 = *v5 & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v9) = v6;
    }

    else
    {
      *(v4 + 112 * v11) = *(v4 + 112 * v11) & 0x80000000 | v6;
    }

    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v5);
    v7 = *(a1 + 40);
    *(*(a1 + 16) + 112 * v3) = *(*(a1 + 16) + 112 * v3) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v3;
    *(a1 + 40) = v7 + 1;
  }
}

BOOL re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + (v8 << 6)));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + (v9 << 6)) = *(*(a1 + 16) + (v9 << 6)) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::StringID,long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1, v5);
}

void re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v8, a1, a2);
  v3 = v10;
  if (v10 != 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    v5 = (v4 + 56 * v10);
    v6 = *v5 & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v9) = v6;
    }

    else
    {
      *(v4 + 56 * v11) = *(v4 + 56 * v11) & 0x80000000 | v6;
    }

    re::HashTable<re::StringID,re::BlendShapeWeights,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(v5);
    v7 = *(a1 + 40);
    *(*(a1 + 16) + 56 * v3) = *(*(a1 + 16) + 56 * v3) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v3;
    *(a1 + 40) = v7 + 1;
  }
}

void re::HashTable<re::StringID,unsigned char,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v9, a1, a2);
  v3 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    v5 = (v4 + 32 * v11);
    v6 = *v5 & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v6;
    }

    else
    {
      *(v4 + 32 * v12) = *(v4 + 32 * v12) & 0x80000000 | v6;
    }

    v7 = *v5;
    if (*v5 < 0)
    {
      *v5 = v7 & 0x7FFFFFFF;
      re::StringID::destroyString((v5 + 2));
      v4 = *(a1 + 16);
      v7 = *(v4 + 32 * v3);
    }

    v8 = *(a1 + 40);
    *(v4 + 32 * v3) = *(a1 + 36) | v7 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v3;
    *(a1 + 40) = v8 + 1;
  }
}

void *re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,float,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,double,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 32 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 8;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 32 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector2<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11 = 0u;
  re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 12;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 48 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 32);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 48 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 48;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 32;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 48 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 12;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 32;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11 = 0uLL;
  re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 12;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 48 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 32);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 48 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 32;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 48 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 12;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 32;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Vector4<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11 = xmmword_1E30474D0;
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 12;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 48 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 32);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 48 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 32;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 48 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 12;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 32;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::Quaternion<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v11[0] = 0x3F8000003F800000;
  v11[1] = 1065353216;
  v11[2] = 0;
  v11[3] = 0x3F80000000000000;
  v11[4] = 0;
  v11[5] = 0;
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 20;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 80 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 32);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 80 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
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
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 80;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v6 + 32;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 80 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 20;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 80 * *(a1 + 32) + 32;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::GenericSRT<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v14 = 0;
  v15 = 0;
  v12 = 0u;
  v13 = 0u;
  v10[0] = 0;
  v11 = 0u;
  v10[1] = &str_67;
  v16 = 0;
  v8 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::SkeletalPose::~SkeletalPose(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 28;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 112 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 112 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 112;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void *re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v13, a1, a2);
  v6 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v14, v13);
    re::StringID::StringID((v7 + 1), a2);
    v8 = v7 + 3;
    re::StringID::StringID((v7 + 3), a3);
    re::FixedArray<re::GenericSRT<float>>::FixedArray(v7 + 5, (a3 + 16));
    re::DynamicArray<BOOL>::DynamicArray((v7 + 8), (a3 + 40));
    v9 = *(a3 + 80);
    v7[13] = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 112 * v6;
    v8 = (v11 + 24);
    re::StringID::operator=((v11 + 24), a3);
    re::FixedArray<re::GenericSRT<float>>::operator=((v11 + 40), (a3 + 16));
    re::DynamicArray<BOOL>::operator=(v11 + 64, (a3 + 40));
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v11 + 104), *(a3 + 80));
  }

  return v8;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

void *re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  re::HashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4, a1, a2);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 112 * v5 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 112 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 28;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 112 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 112 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::SkeletalPose,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void *re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DynamicArray<re::Vector3<float>>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = re::HashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::DynamicArray<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + (v6 << 6);
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}