uint64_t re::LessEqualCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
    __break(1u);
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 218), &v26);
    v26 = v10[220] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 11), &v26);
    re::DynamicArray<float>::add((v10 + 51), (v9 + 112));
    v11 = (v10[15] + 8 * v10[13] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_13;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v26) = 2;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v26);
    v26 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v26);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  v16 = *v15;
  LODWORD(v26) = 64;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1704), &v26);
  v17 = *(v8 + 1720) - 1;
  v18 = re::DynamicEvaluationRegisterTable::evaluationRegister<unsigned int>(v8 + 1664, v17);
  *(v18 + 8) = v12;
  *(v18 + 16) = v16;
  *(v7 + 96) = 2;
  *(v7 + 176) = v17;
  return 1;
}

uint64_t re::SelectFloatCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    return result;
  }

  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = *a2;
  if (*(*a2 + 96) == 1)
  {
    v10 = *(v9 + 16);
    LODWORD(v32) = 1;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v10 + 213), &v32);
    v32 = v10[215] - 1;
    re::DynamicArray<unsigned long>::add((v10 + 6), &v32);
    re::DynamicArray<int>::add((v10 + 46), (v9 + 112));
    v11 = (v10[10] + 8 * v10[8] - 8);
  }

  else
  {
    v11 = (v9 + 176);
  }

  if (a3 == 1)
  {
    goto LABEL_17;
  }

  v12 = *v11;
  v13 = a2[1];
  if (*(v13 + 96) == 1)
  {
    v14 = *(v13 + 16);
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v14 + 218), &v32);
    v32 = v14[220] - 1;
    re::DynamicArray<unsigned long>::add((v14 + 11), &v32);
    re::DynamicArray<float>::add((v14 + 51), (v13 + 112));
    v15 = (v14[15] + 8 * v14[13] - 8);
  }

  else
  {
    v15 = (v13 + 176);
  }

  if (a3 <= 2)
  {
    goto LABEL_18;
  }

  v16 = *v15;
  v17 = a2[2];
  if (*(v17 + 96) == 1)
  {
    v18 = *(v17 + 16);
    LODWORD(v32) = 2;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    re::DynamicArray<re::EvaluationRegister>::add((v18 + 218), &v32);
    v32 = v18[220] - 1;
    re::DynamicArray<unsigned long>::add((v18 + 11), &v32);
    re::DynamicArray<float>::add((v18 + 51), (v17 + 112));
    v19 = (v18[15] + 8 * v18[13] - 8);
  }

  else
  {
    v19 = (v17 + 176);
  }

  v20 = *v19;
  LODWORD(v32) = 60;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 1744), &v32);
  v21 = *(v8 + 1760) - 1;
  v22 = re::DynamicEvaluationRegisterTable::evaluationRegister<float>(v8 + 1664, v21);
  v22[1] = v12;
  v22[2] = v16;
  v22[3] = v20;
  *(v7 + 96) = 2;
  *(v7 + 176) = v21;
  return 1;
}

uint64_t re::BlendRigHierarchyCompile(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
LABEL_64:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v36);
    __break(1u);
    goto LABEL_65;
  }

  if (a3 == 1)
  {
LABEL_65:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v37);
    __break(1u);
    goto LABEL_66;
  }

  v8 = *(*a2 + 184);
  v9 = *(a2[1] + 184);
  re::RigHierarchy::getBindPoseHierarchy(v8, a2, &v78);
  if (*(v8 + 27))
  {
    v11 = 0;
    while (1)
    {
      v12 = re::RigHierarchy::jointName(v8, v11);
      v13 = strlen(*(v12 + 8));
      v70 = *(v12 + 8);
      v71 = v13;
      re::RigHierarchy::getLocalSpaceJointScale(v8, &v70, v74);
      v14 = strlen(*(v12 + 8));
      v66 = *(v12 + 8);
      v67 = v14;
      re::RigHierarchy::getLocalSpaceJointRotation(v8, &v66, &v70);
      v15 = strlen(*(v12 + 8));
      v61 = *(v12 + 8);
      v62 = v15;
      re::RigHierarchy::getLocalSpaceJointTranslation(v8, &v61, &v66);
      v65[0] = v75;
      v65[1] = v71;
      v65[2] = v67;
      v16 = strlen(*(v12 + 8));
      v57 = *(v12 + 8);
      v58 = v16;
      re::RigHierarchy::getLocalSpaceJointScale(v9, &v57, &v61);
      v17 = strlen(*(v12 + 8));
      v53 = *(v12 + 8);
      v54 = v17;
      re::RigHierarchy::getLocalSpaceJointRotation(v9, &v53, &v57);
      v18 = strlen(*(v12 + 8));
      v94 = *(v12 + 8);
      v95 = v18;
      re::RigHierarchy::getLocalSpaceJointTranslation(v9, &v94, &v53);
      v52[0] = v62;
      v52[1] = v58;
      v52[2] = v54;
      if (a3 <= 2)
      {
        break;
      }

      v20 = *(a1 + 8);
      v21 = a2[2];
      if (*(v21 + 96) == 1)
      {
        v22 = *(v21 + 16);
        LODWORD(v94) = 2;
        v96 = 0;
        v97 = 0;
        v95 = 0;
        re::DynamicArray<re::EvaluationRegister>::add((v22 + 218), &v94);
        v94 = v22[220] - 1;
        re::DynamicArray<unsigned long>::add((v22 + 11), &v94);
        re::DynamicArray<float>::add((v22 + 51), (v21 + 112));
        v23 = (v22[15] + 8 * v22[13] - 8);
      }

      else
      {
        v23 = (v21 + 176);
      }

      re::EvaluationTree::lerp(v20, v65, v52, *v23, &v94);
      v24 = strlen(*(v12 + 8));
      v47 = *(v12 + 8);
      v48 = v24;
      re::RigHierarchy::setLocalSpaceJointScale(&v78, &v47, v94, v49);
      if ((v49[0] & 1) == 0 && v50)
      {
        if (BYTE8(v50))
        {
          (*(*v50 + 40))();
        }

        v51 = 0u;
        v50 = 0u;
      }

      v25 = strlen(*(v12 + 8));
      v47 = *(v12 + 8);
      v48 = v25;
      re::RigHierarchy::setLocalSpaceJointRotation(&v78, &v47, v95, v44);
      if ((v44[0] & 1) == 0 && v45)
      {
        if (BYTE8(v45))
        {
          (*(*v45 + 40))();
        }

        v46 = 0u;
        v45 = 0u;
      }

      v26 = *(v12 + 8);
      v27 = strlen(v26);
      v47 = v26;
      v48 = v27;
      re::RigHierarchy::setLocalSpaceJointTranslation(&v78, &v47, v96, v41);
      if ((v41[0] & 1) == 0 && v42)
      {
        if (BYTE8(v42))
        {
          (*(*v42 + 40))();
        }

        v43 = 0u;
        v42 = 0u;
      }

      if (v53 & 1) == 0 && v55 && (v56)
      {
        (*(*v55 + 40))();
      }

      if (v57 & 1) == 0 && v59 && (v60)
      {
        (*(*v59 + 40))();
      }

      if (v61 & 1) == 0 && v63 && (v64)
      {
        (*(*v63 + 40))();
      }

      if (v66 & 1) == 0 && v68 && (v69)
      {
        (*(*v68 + 40))();
      }

      if (v70 & 1) == 0 && v72 && (v73)
      {
        (*(*v72 + 40))();
      }

      if (v74[0] & 1) == 0 && v76 && (v77)
      {
        (*(*v76 + 40))();
      }

      if (++v11 >= *(v8 + 27))
      {
        goto LABEL_49;
      }
    }

    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v35);
    __break(1u);
    goto LABEL_64;
  }

LABEL_49:
  if (!a5)
  {
LABEL_66:
    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v34, v38);
    __break(1u);
    return result;
  }

  v28 = *(*a4 + 184);
  v29 = v78;
  *(v28 + 16) = v79;
  *v28 = v29;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v28 + 24), v80);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v28 + 72), v81);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v28 + 120, v82);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v28 + 160, v83);
  re::DynamicArray<re::StringID>::operator=(v28 + 200, v84);
  re::DynamicArray<unsigned long>::operator=(v28 + 240, v85);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v28 + 280, v88);
  re::DynamicArray<unsigned long>::operator=(v28 + 320, v91);
  if (v91[0])
  {
    if (v93)
    {
      (*(*v91[0] + 40))();
    }

    v93 = 0;
    memset(v91, 0, sizeof(v91));
    ++v92;
  }

  if (v88[0])
  {
    if (v90)
    {
      (*(*v88[0] + 40))();
    }

    v90 = 0;
    memset(v88, 0, sizeof(v88));
    ++v89;
  }

  if (v85[0])
  {
    if (v87)
    {
      (*(*v85[0] + 40))();
    }

    v87 = 0;
    memset(v85, 0, sizeof(v85));
    ++v86;
  }

  re::DynamicArray<re::StringID>::deinit(v84);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v83);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v82);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v81);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
  return 1;
}

uint64_t re::BlendAdditiveRigHierarchyCompile(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v28);
    __break(1u);
    goto LABEL_60;
  }

  if (a3 == 1)
  {
LABEL_60:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v29);
    __break(1u);
LABEL_61:
    re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v30);
    __break(1u);
    return result;
  }

  v7 = *(*a2 + 184);
  v8 = *(a2[1] + 184);
  re::RigHierarchy::getBindPoseHierarchy(v7, a2, &v72);
  if (*(v7 + 27))
  {
    v10 = 0;
    do
    {
      v11 = re::RigHierarchy::jointName(v7, v10);
      v12 = strlen(*(v11 + 8));
      v64 = *(v11 + 8);
      v65 = v12;
      re::RigHierarchy::getLocalSpaceJointScale(v7, &v64, v68);
      v13 = strlen(*(v11 + 8));
      v60 = *(v11 + 8);
      v61 = v13;
      re::RigHierarchy::getLocalSpaceJointRotation(v7, &v60, &v64);
      v14 = strlen(*(v11 + 8));
      v55 = *(v11 + 8);
      v56 = v14;
      re::RigHierarchy::getLocalSpaceJointTranslation(v7, &v55, &v60);
      v59[0] = v69;
      v59[1] = v65;
      v59[2] = v61;
      v15 = strlen(*(v11 + 8));
      v51 = *(v11 + 8);
      v52 = v15;
      re::RigHierarchy::getLocalSpaceJointScale(v8, &v51, &v55);
      v16 = strlen(*(v11 + 8));
      v47 = *(v11 + 8);
      v48 = v16;
      re::RigHierarchy::getLocalSpaceJointRotation(v8, &v47, &v51);
      v17 = strlen(*(v11 + 8));
      v44 = *(v11 + 8);
      v45 = v17;
      re::RigHierarchy::getLocalSpaceJointTranslation(v8, &v44, &v47);
      v44 = v56;
      v45 = v52;
      v46 = v48;
      re::EvaluationTree::additiveBlend(*(a1 + 8), v59, &v44, v43);
      v18 = strlen(*(v11 + 8));
      v38 = *(v11 + 8);
      v39 = v18;
      re::RigHierarchy::setLocalSpaceJointScale(&v72, &v38, v43[0], v40);
      if ((v40[0] & 1) == 0 && v41)
      {
        if (BYTE8(v41))
        {
          (*(*v41 + 40))();
        }

        v42 = 0u;
        v41 = 0u;
      }

      v19 = strlen(*(v11 + 8));
      v38 = *(v11 + 8);
      v39 = v19;
      re::RigHierarchy::setLocalSpaceJointRotation(&v72, &v38, v43[1], v35);
      if ((v35[0] & 1) == 0 && v36)
      {
        if (BYTE8(v36))
        {
          (*(*v36 + 40))();
        }

        v37 = 0u;
        v36 = 0u;
      }

      v20 = *(v11 + 8);
      v21 = strlen(v20);
      v38 = v20;
      v39 = v21;
      re::RigHierarchy::setLocalSpaceJointTranslation(&v72, &v38, v43[2], v32);
      if ((v32[0] & 1) == 0 && v33)
      {
        if (BYTE8(v33))
        {
          (*(*v33 + 40))();
        }

        v34 = 0u;
        v33 = 0u;
      }

      if (v47 & 1) == 0 && v49 && (v50)
      {
        (*(*v49 + 40))();
      }

      if (v51 & 1) == 0 && v53 && (v54)
      {
        (*(*v53 + 40))();
      }

      if (v55 & 1) == 0 && v57 && (v58)
      {
        (*(*v57 + 40))();
      }

      if (v60 & 1) == 0 && v62 && (v63)
      {
        (*(*v62 + 40))();
      }

      if (v64 & 1) == 0 && v66 && (v67)
      {
        (*(*v66 + 40))();
      }

      if (v68[0] & 1) == 0 && v70 && (v71)
      {
        (*(*v70 + 40))();
      }

      ++v10;
    }

    while (v10 < *(v7 + 27));
  }

  if (!a5)
  {
    goto LABEL_61;
  }

  v22 = *(*a4 + 184);
  v23 = v72;
  *(v22 + 16) = v73;
  *v22 = v23;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v22 + 24), v74);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v22 + 72), v75);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::operator=(v22 + 120, v76);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::operator=(v22 + 160, v77);
  re::DynamicArray<re::StringID>::operator=(v22 + 200, v78);
  re::DynamicArray<unsigned long>::operator=(v22 + 240, v79);
  re::DynamicArray<re::RigHierarchyJointTransform>::operator=(v22 + 280, v82);
  re::DynamicArray<unsigned long>::operator=(v22 + 320, v85);
  if (v85[0])
  {
    if (v87)
    {
      (*(*v85[0] + 40))();
    }

    v87 = 0;
    memset(v85, 0, sizeof(v85));
    ++v86;
  }

  if (v82[0])
  {
    if (v84)
    {
      (*(*v82[0] + 40))();
    }

    v84 = 0;
    memset(v82, 0, sizeof(v82));
    ++v83;
  }

  if (v79[0])
  {
    if (v81)
    {
      (*(*v79[0] + 40))();
    }

    v81 = 0;
    memset(v79, 0, sizeof(v79));
    ++v80;
  }

  re::DynamicArray<re::StringID>::deinit(v78);
  re::DynamicArray<re::DynamicArray<re::RigDataValue>>::deinit(v77);
  re::DynamicArray<re::Pair<re::DynamicString,re::RigDataTypeClass,true>>::deinit(v76);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v75);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v74);
  return 1;
}

void re::RigGraphOperatorDefinition::registerBuiltIns(re::RigGraphOperatorDefinition *this, re::RigEnvironment *a2)
{
  v197 = *MEMORY[0x1E69E9840];
  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185B8;
  v194 = *&off_1E87185C8;
  v3 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConjugateQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185F8;
  v194 = *&off_1E8718608;
  v5 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v6 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718598;
  v194 = *&off_1E87185A8;
  v7 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v8 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185B8;
  v194 = *&off_1E87185C8;
  v9 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::InvertQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v10 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185D8;
  v194 = *&off_1E87185E8;
  v11 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::NormalizeVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v12 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87185F8;
  v194 = *&off_1E8718608;
  v13 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::TransposeMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v14 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718618;
  v194 = *&off_1E8718628;
  v15 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::PassthroughRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v16 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718618;
  v194 = *&off_1E8718628;
  v17 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::GetBindPoseRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v18 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718638;
  v194 = *&off_1E8718648;
  v19 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractMinorMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v20 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718658;
  v194 = *&off_1E8718668;
  v21 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractRotationMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v22 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718678;
  v194 = *&off_1E8718688;
  v23 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractRotationMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v24 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718698;
  v194 = *&off_1E87186A8;
  v25 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractScaleMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v26 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718698;
  v194 = *&off_1E87186A8;
  v27 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ExtractTranslationMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v28 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186B8;
  v194 = *&off_1E87186C8;
  v29 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConstructMatrix4x4FromSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v30 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186D8;
  v194 = *&off_1E87186E8;
  v31 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::ConstructSRTFromMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v32 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v33 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v34 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186F8;
  v194 = *&off_1E8718708;
  v195 = xmmword_1E8718718;
  v35 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v36 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v37 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v38 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v39 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v40 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87186F8;
  v194 = *&off_1E8718708;
  v195 = xmmword_1E8718718;
  v41 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v42 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v43 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::SubtractFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v44 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A08;
  v194 = *&off_1E8718A18;
  v195 = xmmword_1E8718A28;
  v45 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DivideQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v46 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v47 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DivideFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v48 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v49 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v50 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718728;
  v194 = *&off_1E8718738;
  v195 = xmmword_1E8718748;
  v51 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::RotateVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v52 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718758;
  v194 = *&off_1E8718768;
  v195 = xmmword_1E8718778;
  v53 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ScaleVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v54 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718788;
  v194 = *&off_1E8718798;
  v195 = xmmword_1E87187A8;
  v55 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v56 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87187B8;
  v194 = *&off_1E87187C8;
  v195 = xmmword_1E87187D8;
  v57 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructMatrix4x4FromMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v58 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87187E8;
  v194 = *&off_1E87187F8;
  v195 = xmmword_1E8718808;
  v59 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformDirectionByMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v60 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718818;
  v194 = *&off_1E8718828;
  v195 = xmmword_1E8718838;
  v61 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformDirectionByMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v62 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718818;
  v194 = *&off_1E8718828;
  v195 = xmmword_1E8718838;
  v63 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::TransformPositionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v64 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718908;
  v194 = *&off_1E8718918;
  v195 = xmmword_1E8718928;
  v65 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DotVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v66 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718938;
  v194 = *&off_1E8718948;
  v195 = xmmword_1E8718958;
  v67 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::DotVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v68 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v69 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::CrossVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v70 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718848;
  v194 = *&off_1E8718858;
  v195 = xmmword_1E8718868;
  v71 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConvertIntrinsicEulerToQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v72 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718878;
  v194 = *&off_1E8718888;
  v195 = xmmword_1E8718898;
  v73 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConvertQuaternionToIntrinsicEulerCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v74 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87188A8;
  v194 = *&off_1E87188B8;
  v195 = xmmword_1E87188C8;
  v75 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ExtractTwistFromQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v76 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87188D8;
  v194 = *&off_1E87188E8;
  v195 = xmmword_1E87188F8;
  v77 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v78 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718908;
  v194 = *&off_1E8718918;
  v195 = xmmword_1E8718928;
  v79 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GetVector3ComponentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v80 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718938;
  v194 = *&off_1E8718948;
  v195 = xmmword_1E8718958;
  v81 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GetVector2ComponentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v82 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718968;
  v194 = *&off_1E8718978;
  v195 = xmmword_1E8718988;
  v83 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ConstructVector2Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v84 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718998;
  v194 = *&off_1E87189A8;
  v195 = xmmword_1E87189B8;
  v196 = *&off_1E87189C8;
  v85 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v86 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E87189D8;
  v194 = *&off_1E87189E8;
  v195 = xmmword_1E87189F8;
  v87 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AdditiveBlendSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v88 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A08;
  v194 = *&off_1E8718A18;
  v195 = xmmword_1E8718A28;
  v89 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyQuaternionCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v90 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A38;
  v194 = *&off_1E8718A48;
  v195 = xmmword_1E8718A58;
  v91 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v92 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A68;
  v194 = *&off_1E8718A78;
  v195 = xmmword_1E8718A88;
  v93 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyMatrix3x3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v94 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718A98;
  v194 = *&off_1E8718AA8;
  v195 = xmmword_1E8718AB8;
  v95 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::MultiplyMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v96 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718AC8;
  v194 = *&off_1E8718AD8;
  v195 = xmmword_1E8718AE8;
  v196 = *&off_1E8718AF8;
  v97 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructMatrix3x3FromVector3sCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v98 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B08;
  v194 = *&off_1E8718B18;
  v195 = xmmword_1E8718B28;
  v196 = *&off_1E8718B38;
  v99 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ConstructMatrix4x4Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v100 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B48;
  v194 = *&off_1E8718B58;
  v195 = xmmword_1E8718B68;
  v196 = *&off_1E8718B78;
  v101 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ComponentLerpVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v102 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718B88;
  v194 = *&off_1E8718B98;
  v195 = xmmword_1E8718BA8;
  v196 = *&off_1E8718BB8;
  v103 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v104 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718BC8;
  v194 = *&off_1E8718BD8;
  v195 = xmmword_1E8718BE8;
  v196 = *&off_1E8718BF8;
  v105 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpSRTCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v106 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C08;
  v194 = *&off_1E8718C18;
  v195 = xmmword_1E8718C28;
  v196 = *&off_1E8718C38;
  v107 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SlerpCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v108 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C48;
  v194 = *&off_1E8718C58;
  v195 = xmmword_1E8718C68;
  v196 = *&off_1E8718C78;
  v109 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ClampCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v110 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718C88;
  v194 = *&off_1E8718C98;
  v195 = xmmword_1E8718CA8;
  v196 = *&off_1E8718CB8;
  v111 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::ClampVector3Compile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v112 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v113 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v114 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CC8;
  v194 = *&off_1E8718CD8;
  v195 = xmmword_1E8718CE8;
  v115 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v116 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v117 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v118 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D28;
  v194 = *&off_1E8718D38;
  v195 = xmmword_1E8718D48;
  v119 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LocalSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v120 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v121 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v122 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CC8;
  v194 = *&off_1E8718CD8;
  v195 = xmmword_1E8718CE8;
  v123 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v124 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718CF8;
  v194 = *&off_1E8718D08;
  v195 = xmmword_1E8718D18;
  v125 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v126 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D28;
  v194 = *&off_1E8718D38;
  v195 = xmmword_1E8718D48;
  v127 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ModelSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v128 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v129 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v130 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D58;
  v194 = *&off_1E8718D68;
  v195 = xmmword_1E8718D78;
  v196 = *&off_1E8718D88;
  v131 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v132 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v133 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v134 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718DD8;
  v194 = *&off_1E8718DE8;
  v195 = xmmword_1E8718DF8;
  v196 = *&off_1E8718E08;
  v135 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetLocalSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v136 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v137 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointScaleCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v138 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D58;
  v194 = *&off_1E8718D68;
  v195 = xmmword_1E8718D78;
  v196 = *&off_1E8718D88;
  v139 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointRotationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v140 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718D98;
  v194 = *&off_1E8718DA8;
  v195 = xmmword_1E8718DB8;
  v196 = *&off_1E8718DC8;
  v141 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointTranslationCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v142 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718DD8;
  v194 = *&off_1E8718DE8;
  v195 = xmmword_1E8718DF8;
  v196 = *&off_1E8718E08;
  v143 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetModelSpaceJointTransformCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v144 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E18;
  v194 = *&off_1E8718E28;
  v195 = xmmword_1E8718E38;
  v145 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::JointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v146 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E48;
  v194 = *&off_1E8718E58;
  v195 = xmmword_1E8718E68;
  v196 = *&off_1E8718E78;
  v147 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SetJointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v148 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v149 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::ClearJointParentCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v150 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v151 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::AddJointCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v152 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718E88;
  v194 = *&off_1E8718E98;
  v195 = xmmword_1E8718EA8;
  v153 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::RemoveJointCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v154 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v155 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::SinFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v156 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v157 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::CosFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v158 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v159 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::TanFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v160 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v161 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AsinFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v162 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v163 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AcosFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v164 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718EB8;
  v194 = *&off_1E8718EC8;
  v165 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 1uLL, 1uLL, re::AtanFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v166 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718ED8;
  v194 = *&off_1E8718EE8;
  v195 = xmmword_1E8718EF8;
  v167 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::Atan2FloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v168 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v169 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GreaterCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v170 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v171 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::GreaterEqualCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v172 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v173 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LessCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v174 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F08;
  v194 = *&off_1E8718F18;
  v195 = xmmword_1E8718F28;
  v175 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::LessEqualCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v176 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F38;
  v194 = *&off_1E8718F48;
  v195 = xmmword_1E8718F58;
  v196 = *&off_1E8718F68;
  v177 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::SelectFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v178 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718F78;
  v194 = *&off_1E8718F88;
  v195 = xmmword_1E8718F98;
  v196 = *&off_1E8718FA8;
  v179 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::LerpFloatCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v180 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718FB8;
  v194 = *&off_1E8718FC8;
  v195 = xmmword_1E8718FD8;
  v196 = *&off_1E8718FE8;
  v181 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 3uLL, 1uLL, re::BlendRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v182 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }

  v192 = 0;
  v190 = 0u;
  v191 = 0u;
  v187 = 0;
  v189 = 0u;
  v188 = &str_67;
  v185 = 0;
  v186 = &str_67;
  v193 = xmmword_1E8718FF8;
  v194 = *&off_1E8719008;
  v195 = xmmword_1E8719018;
  v183 = re::RigGraphOperatorDefinition::init(&v187, this, &v185, 2uLL, 1uLL, re::BlendAdditiveRigHierarchyCompile, &v193);
  if (v185)
  {
    if (v185)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v190 + 1);
  v184 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v189);
  if (v187)
  {
    if (v187)
    {
    }
  }
}

float *re::ClampCompile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, a7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v26);
    __break(1u);
    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v27);
    __break(1u);
    goto LABEL_13;
  }

  Runtime = re::RigDataValue::getRuntimeValue<float>(a3, a2);
  if (a4 == 1)
  {
LABEL_13:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v24, v28);
    __break(1u);
    goto LABEL_14;
  }

  v13 = Runtime;
  v14 = re::RigDataValue::getRuntimeValue<float>(a3 + 288, v12);
  if (a4 <= 2)
  {
LABEL_14:
    re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v29);
    __break(1u);
    return result;
  }

  v16 = v14;
  v17 = re::RigDataValue::getRuntimeValue<float>(a3 + 576, v15);
  v19 = *v13;
  if (*v13 > *v17)
  {
    v19 = *v17;
  }

  if (v19 >= *v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = *v16;
  }

  result = re::RigDataValue::getRuntimeValue<float>(a7, v18);
  *result = v20;
  return result;
}

_OWORD *re::ClampVector3Compile(re::RigGraphSystem &,re::Slice<re::RigDataValue const*>,re::Slice<re::RigDataValue*>)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    re::internal::assertLog(6, a2, a3, 0, a5, a6, a7, a8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v26, v30);
    __break(1u);
    goto LABEL_11;
  }

  v12 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3, a2);
  if (a4 == 1)
  {
LABEL_11:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v27, v31);
    __break(1u);
    goto LABEL_12;
  }

  v14 = *v12;
  v15 = *(v12 + 8);
  v16 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3 + 288, v13);
  if (a4 <= 2)
  {
LABEL_12:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v28, v32);
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(v16 + 8);
  v19 = *v16;
  v20 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a3 + 576, v17);
  if (!a8)
  {
LABEL_13:
    re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v33);
    __break(1u);
    return result;
  }

  v23 = vbsl_s8(vcgt_f32(v14, *v20), *v20, v14);
  *&v22 = vbsl_s8(vcgt_f32(v19, v23), v19, v23);
  v24 = v20[1].f32[0];
  if (v15 <= v24)
  {
    v24 = v15;
  }

  if (v24 < v18)
  {
    v24 = v18;
  }

  *(&v22 + 2) = v24;
  v34 = v22;
  result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(a7, v21);
  *result = v34;
  return result;
}

void re::SharedCoreIKRig::~SharedCoreIKRig(re::SharedCoreIKRig *this)
{
  *this = &unk_1F5CAEB38;
  if (*(this + 3))
  {
    MEMORY[0x1E69037D0]();
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CAEB38;
  if (*(this + 3))
  {
    MEMORY[0x1E69037D0]();
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

BOOL re::AnimationHelper::makeAdditiveForValues<float>(re *a1, float **a2, float *a3, float *a4)
{
  if (*(a1 + 1) != a4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v23 = 0;
    v20 = "Cannot make additive values, output values expected to match input values size.";
    v21 = &v23;
    goto LABEL_17;
  }

  v4 = a2[1];
  if (!v4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v22 = 0;
    v20 = "Cannot make additive values, base values array size must not be zero.";
    v21 = &v22;
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    return 0;
  }

  if (a4 < v4)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *a1;
    v8 = a3;
    v9 = v4;
    do
    {
      v10 = *v6++;
      v11 = v10;
      v12 = *v7++;
      *v8++ = v12 - v11;
      v9 = (v9 - 1);
    }

    while (v9);
    if (a4 > v4)
    {
      v13 = v4;
      v14 = a4 - v4;
      v15 = &a3[v13];
      v16 = (v5 + 4 * v13);
      do
      {
        v17 = *v16++;
        *v15++ = v17 - v11;
        --v14;
      }

      while (v14);
    }
  }

  return 1;
}

uint64_t re::SampledAnimation<float>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v31);
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 4 * v6 - 4);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        v15 = v14 - 1;
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = ((v11 - (v13 + -1.0)) * *(*(result + 104) + 4 * v14)) + (*(*(result + 104) + 4 * v15) * (1.0 - (v11 - (v13 + -1.0))));
            goto LABEL_10;
          }

LABEL_29:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = v6;
          v27 = v14;
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

          v38 = 476;
          v39 = 2048;
          v40 = v27;
          v41 = 2048;
          v42 = v26;
          _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
          _os_crash_msg();
          __break(1u);
        }

LABEL_25:
        v34 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v6;
        v22 = v15;
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v38 = 476;
        v39 = 2048;
        v40 = v22;
        v41 = 2048;
        v42 = v21;
        _os_log_send_and_compose_impl(v24, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
        goto LABEL_29;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 4 * v7);
        goto LABEL_10;
      }

LABEL_21:
      v34 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = v6;
      v18 = v7;
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v38 = 476;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v17;
      _os_log_send_and_compose_impl(v19, &v34, &v43, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

BOOL re::AnimationHelper::makeAdditiveForValues<double>(re *a1, uint64_t a2, double *a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v23 = 0;
    v20 = "Cannot make additive values, output values expected to match input values size.";
    v21 = &v23;
    goto LABEL_17;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    v19 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v22 = 0;
    v20 = "Cannot make additive values, base values array size must not be zero.";
    v21 = &v22;
LABEL_17:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, v21, 2u);
    return 0;
  }

  if (a4 < v4)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *a1;
    v8 = a3;
    v9 = v4;
    do
    {
      v10 = *v6++;
      v11 = v10;
      v12 = *v7++;
      *v8++ = v12 - v11;
      --v9;
    }

    while (v9);
    if (a4 > v4)
    {
      v13 = v4;
      v14 = a4 - v4;
      v15 = &a3[v13];
      v16 = (v5 + 8 * v13);
      do
      {
        v17 = *v16++;
        *v15++ = v17 - v11;
        --v14;
      }

      while (v14);
    }
  }

  return 1;
}

uint64_t re::SampledAnimation<double>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v31);
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 8 * v6 - 8);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        v15 = v14 - 1;
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = *(*(result + 104) + 8 * v14) * (v11 - (v13 + -1.0)) + *(*(result + 104) + 8 * v15) * (1.0 - (v11 - (v13 + -1.0)));
            goto LABEL_10;
          }

LABEL_29:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = v6;
          v27 = v14;
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

          v38 = 476;
          v39 = 2048;
          v40 = v27;
          v41 = 2048;
          v42 = v26;
          _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
          _os_crash_msg();
          __break(1u);
        }

LABEL_25:
        v34 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v6;
        v22 = v15;
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v38 = 476;
        v39 = 2048;
        v40 = v22;
        v41 = 2048;
        v42 = v21;
        _os_log_send_and_compose_impl(v24, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
        goto LABEL_29;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 8 * v7);
        goto LABEL_10;
      }

LABEL_21:
      v34 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = v6;
      v18 = v7;
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v38 = 476;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v17;
      _os_log_send_and_compose_impl(v19, &v34, &v43, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Vector2<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v19 = 0;
    v12 = "Cannot make additive values, output values expected to match input values size.";
    v13 = &v19;
    goto LABEL_25;
  }

  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Cannot make additive values, base values array size must not be zero.";
    v13 = buf;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(*a2 + 8 * v4);
    *(a3 + 8 * v4) = vsub_f32(*(*a1 + 8 * v4), v5);
    ++v4;
    v6 = *(a1 + 1);
  }

  while (v6 > v4 && a2[1] > v4);
  if (v6 <= v4)
  {
    return 1;
  }

  v8 = v4;
  if (a4 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v8)
  {
    *(a3 + 8 * v8) = vsub_f32(*(*a1 + 8 * v8), v5);
    if (*(a1 + 1) <= ++v8)
    {
      return 1;
    }
  }

LABEL_27:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

float32x2_t re::SampledAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t *a4, float32x2_t result, uint64_t a6, double *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a6, a7, *&result, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v30);
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a1 + 96);
  v8 = v7 - 1;
  if (v7 == 1)
  {
LABEL_9:
    v9 = **(a1 + 104);
    goto LABEL_10;
  }

  if (v7)
  {
    result = a2[3];
    result.f32[0] = *&result;
    v10 = *(a1 + 80);
    if (v10 < result.f32[0])
    {
      if (*(a1 + 84) <= result.f32[0] || (result.f32[0] = (result.f32[0] - v10) / *(a1 + 76), v11 = floorf(result.f32[0]), v12 = v11 + ceilf(result.f32[0] - v11), v13 = (v12 + 0.5), v7 < v13))
      {
        v9 = *(*(a1 + 104) + 8 * v7 - 8);
        goto LABEL_10;
      }

      if (v7 != v13 && (*(a1 + 73) & 1) != 0)
      {
        v14 = v13 - 1;
        if (v7 > v13 - 1)
        {
          if (v7 > v13)
          {
            result = vadd_f32(vmul_n_f32(*(*(a1 + 104) + 8 * v14), 1.0 - (result.f32[0] - (v12 + -1.0))), vmul_n_f32(*(*(a1 + 104) + 8 * v13), result.f32[0] - (v12 + -1.0)));
            *a7 = *&result;
            return result;
          }

LABEL_30:
          v33 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v24 = MEMORY[0x1E69E9C10];
          v25 = v7;
          v26 = v13;
          v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v34 = 136315906;
          v35 = "operator[]";
          v36 = 1024;
          if (v27)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v37 = 476;
          v38 = 2048;
          v39 = v26;
          v40 = 2048;
          v41 = v25;
          _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
        }

LABEL_26:
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = v7;
        v21 = v14;
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v37 = 476;
        v38 = 2048;
        v39 = v21;
        v40 = 2048;
        v41 = v20;
        _os_log_send_and_compose_impl(v23, &v33, &v42, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
        _os_crash_msg();
        __break(1u);
        goto LABEL_30;
      }

      if (v7 > v13)
      {
        v8 = (v12 + 0.5);
      }

      if (v7 > v8)
      {
        v9 = *(*(a1 + 104) + 8 * v8);
        goto LABEL_10;
      }

LABEL_22:
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = v7;
      v17 = v8;
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v37 = 476;
      v38 = 2048;
      v39 = v17;
      v40 = 2048;
      v41 = v16;
      _os_log_send_and_compose_impl(v18, &v33, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v9 = *a4;
LABEL_10:
  *a7 = v9;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Vector3<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v19 = 0;
    v12 = "Cannot make additive values, output values expected to match input values size.";
    v13 = &v19;
    goto LABEL_25;
  }

  if (!a2[1])
  {
    v11 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Cannot make additive values, base values array size must not be zero.";
    v13 = buf;
LABEL_25:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v16);
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(*a2 + 16 * v4);
    *(a3 + 16 * v4) = vsubq_f32(*(*a1 + 16 * v4), v5);
    ++v4;
    v6 = *(a1 + 1);
  }

  while (v6 > v4 && a2[1] > v4);
  if (v6 <= v4)
  {
    return 1;
  }

  v8 = v4;
  if (a4 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v8)
  {
    *(a3 + 16 * v8) = vsubq_f32(*(*a1 + 16 * v8), v5);
    if (*(a1 + 1) <= ++v8)
    {
      return 1;
    }
  }

LABEL_27:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, a4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v17);
  __break(1u);
  return result;
}

uint64_t re::SampledAnimation<re::Vector3<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v31);
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  v7 = v6 - 1;
  if (v6 == 1)
  {
LABEL_9:
    v8 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = *(result + 80);
    if (v10 < v9)
    {
      if (*(result + 84) <= v9 || (v11 = (v9 - v10) / *(result + 76), v12 = floorf(v11), v13 = v12 + ceilf(v11 - v12), v14 = (v13 + 0.5), v6 < v14))
      {
        v8 = *(*(result + 104) + 16 * v6 - 16);
        goto LABEL_10;
      }

      if (v6 != v14 && (*(result + 73) & 1) != 0)
      {
        v15 = v14 - 1;
        if (v6 > v14 - 1)
        {
          if (v6 > v14)
          {
            v8 = vmlaq_n_f32(vmulq_n_f32(*(*(result + 104) + 16 * v14), v11 - (v13 + -1.0)), *(*(result + 104) + 16 * v15), 1.0 - (v11 - (v13 + -1.0)));
            goto LABEL_10;
          }

LABEL_29:
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = v6;
          v27 = v14;
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

          v38 = 476;
          v39 = 2048;
          v40 = v27;
          v41 = 2048;
          v42 = v26;
          _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
          _os_crash_msg();
          __break(1u);
        }

LABEL_25:
        v34 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = v6;
        v22 = v15;
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v35 = 136315906;
        v36 = "operator[]";
        v37 = 1024;
        if (v23)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v38 = 476;
        v39 = 2048;
        v40 = v22;
        v41 = 2048;
        v42 = v21;
        _os_log_send_and_compose_impl(v24, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
        _os_crash_msg();
        __break(1u);
        goto LABEL_29;
      }

      if (v6 > v14)
      {
        v7 = (v13 + 0.5);
      }

      if (v6 > v7)
      {
        v8 = *(*(result + 104) + 16 * v7);
        goto LABEL_10;
      }

LABEL_21:
      v34 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = v6;
      v18 = v7;
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v38 = 476;
      v39 = 2048;
      v40 = v18;
      v41 = 2048;
      v42 = v17;
      _os_log_send_and_compose_impl(v19, &v34, &v43, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v8 = *a4;
LABEL_10:
  *a6 = v8;
  return result;
}

uint64_t re::SampledAnimation<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v30);
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(result + 96);
  if (v6 == 1)
  {
LABEL_9:
    v7 = **(result + 104);
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = *(a2 + 24);
    v9 = *(result + 80);
    if (v9 < v8)
    {
      if (*(result + 84) <= v8 || (v10 = (v8 - v9) / *(result + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
      {
        v7 = *(*(result + 104) + 16 * v6 - 16);
        goto LABEL_10;
      }

      if (v6 != v13 && (*(result + 73) & 1) != 0)
      {
        v14 = v13 - 1;
        if (v6 > v13 - 1)
        {
          if (v6 > v13)
          {
            v7 = vaddq_f32(vmulq_n_f32(*(*(result + 104) + 16 * v14), 1.0 - (v10 - (v12 + -1.0))), vmulq_n_f32(*(*(result + 104) + 16 * v13), v10 - (v12 + -1.0)));
            goto LABEL_10;
          }

LABEL_29:
          v33 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          v24 = MEMORY[0x1E69E9C10];
          v25 = v6;
          v26 = v13;
          v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v34 = 136315906;
          v35 = "operator[]";
          v36 = 1024;
          if (v27)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v37 = 476;
          v38 = 2048;
          v39 = v26;
          v40 = 2048;
          v41 = v25;
          _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
        }

LABEL_25:
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = v6;
        v21 = v14;
        v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v37 = 476;
        v38 = 2048;
        v39 = v21;
        v40 = 2048;
        v41 = v20;
        _os_log_send_and_compose_impl(v23, &v33, &v42, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
        _os_crash_msg();
        __break(1u);
        goto LABEL_29;
      }

      if (v6 <= v13)
      {
        v13 = v6 - 1;
      }

      if (v6 > v13)
      {
        v7 = *(*(result + 104) + 16 * v13);
        goto LABEL_10;
      }

LABEL_21:
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = v6;
      v17 = v13;
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v37 = 476;
      v38 = 2048;
      v39 = v17;
      v40 = 2048;
      v41 = v16;
      _os_log_send_and_compose_impl(v18, &v33, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
      _os_crash_msg();
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v7 = *a4;
LABEL_10:
  *a6 = v7;
  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::Quaternion<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v26 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v34 = 0;
    v27 = "Cannot make additive values, output values expected to match input values size.";
    v28 = &v34;
    goto LABEL_23;
  }

  if (!a2[1])
  {
    v26 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v27 = "Cannot make additive values, base values array size must not be zero.";
    v28 = buf;
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, v27, v28, 2u);
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (a4 == v4)
    {
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v31);
      __break(1u);
      goto LABEL_25;
    }

    _Q0 = *(*a2 + 16 * v4);
    v6 = vnegq_f32(_Q0);
    _Q3 = *(*a1 + 16 * v4);
    v8 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q0), _Q3, v8);
    _S5 = _Q3.i32[3];
    v11 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), _Q3, _Q0, 3), _Q0, _Q3, 3);
    __asm { FMLA            S3, S5, V0.S[3] }

    v11.i32[3] = _Q3.i32[0];
    *(a3 + 16 * v4++) = v11;
    v16 = *(a1 + 1);
  }

  while (v16 > v4 && a2[1] > v4);
  if (v16 <= v4)
  {
    return 1;
  }

  _S4 = _Q0.i32[3];
  v18 = vdupq_laneq_s32(_Q0, 3);
  v19 = v4;
  if (a4 <= v4)
  {
    v20 = v4;
  }

  else
  {
    v20 = a4;
  }

  if (a4 <= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = a4;
  }

  while (v4 != v19)
  {
    _Q6 = *(*a1 + 16 * v19);
    v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), _Q6, 0xCuLL), _Q0), _Q6, v8);
    v23 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), _Q6, v18), v6, _Q6, 3);
    __asm { FMLA            S16, S4, V6.S[3] }

    v23.i32[3] = _S16;
    *(a3 + 16 * v19++) = v23;
    if (*(a1 + 1) <= v19)
    {
      return 1;
    }
  }

LABEL_25:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v20, a4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v32);
  __break(1u);
  return result;
}

void re::SampledAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v65, v66);
    __break(1u);
LABEL_30:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = v7;
    v53 = v8;
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v78 = 476;
    v79 = 2048;
    v80 = v53;
    v81 = 2048;
    v82 = v52;
    _os_log_send_and_compose_impl(v54, &v74, &v83, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v7 = *(a1 + 96);
  v8 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v9 = *a4;
LABEL_10:
    *a6 = v9;
    return;
  }

  v10 = *(a2 + 24);
  v11 = *(a1 + 80);
  if (v11 >= v10)
  {
LABEL_9:
    v9 = **(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v10 || (v12 = (v10 - v11) / *(a1 + 76), v13 = floorf(v12), v14 = v13 + ceilf(v12 - v13), v15 = (v14 + 0.5), v7 < v15))
  {
    v9 = *(*(a1 + 104) + 16 * v7 - 16);
    goto LABEL_10;
  }

  if (v7 == v15 || (*(a1 + 73) & 1) == 0)
  {
    if (v7 > v15)
    {
      v8 = (v14 + 0.5);
    }

    if (v7 > v8)
    {
      v9 = *(*(a1 + 104) + 16 * v8);
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v16 = v15 - 1;
  if (v7 <= v15 - 1)
  {
LABEL_34:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = v7;
    v57 = v16;
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v78 = 476;
    v79 = 2048;
    v80 = v57;
    v81 = 2048;
    v82 = v56;
    _os_log_send_and_compose_impl(v59, &v74, &v83, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = v7;
    v62 = v15;
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v78 = 476;
    v79 = 2048;
    v80 = v62;
    v81 = 2048;
    v82 = v61;
    _os_log_send_and_compose_impl(v64, &v74, &v83, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
  }

  if (v7 <= v15)
  {
    goto LABEL_38;
  }

  v17 = v12 - (v14 + -1.0);
  v18 = *(a1 + 104);
  v19 = *(v18 + 16 * v16);
  v20 = *(v18 + 16 * v15);
  v21 = vmulq_f32(v19, v20);
  v22 = vextq_s8(v21, v21, 8uLL);
  *v21.i8 = vadd_f32(*v21.i8, *v22.f32);
  *v21.i32 = vaddv_f32(*v21.i8);
  v22.i64[0] = 0;
  v23 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v21, v22)), 0), vnegq_f32(v20), v20);
  v24 = 1.0;
  v25 = 1.0 - v17;
  v26 = vsubq_f32(v19, v23);
  v27 = vmulq_f32(v26, v26);
  v72 = v23;
  v73 = v19;
  v28 = vaddq_f32(v19, v23);
  v29 = vmulq_f32(v28, v28);
  v30 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))));
  v31 = v30 + v30;
  v32 = (v30 + v30) == 0.0;
  v33 = 1.0;
  if (!v32)
  {
    v33 = sinf(v31) / v31;
  }

  v34 = v33;
  v35 = vrecpe_f32(LODWORD(v33));
  v36 = vmul_f32(v35, vrecps_f32(LODWORD(v34), v35));
  LODWORD(v37) = vmul_f32(v36, vrecps_f32(LODWORD(v34), v36)).u32[0];
  if ((v25 * v31) != 0.0)
  {
    v70 = v37;
    *v36.i32 = sinf(v25 * v31);
    v37 = v70;
    v24 = *v36.i32 / (v25 * v31);
  }

  *v36.i32 = v25 * (v37 * v24);
  v38 = vdupq_lane_s32(v36, 0);
  v39 = v17 * v31;
  v40 = 1.0;
  if (v39 != 0.0)
  {
    v69 = v38;
    v71 = v37;
    v41 = sinf(v39);
    v38 = v69;
    v37 = v71;
    v40 = v41 / v39;
  }

  v42 = vmlaq_f32(vmulq_n_f32(v72, v17 * (v37 * v40)), v73, v38);
  v43 = vmulq_f32(v42, v42);
  v44 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  if (vaddv_f32(v44) == 0.0)
  {
    v45 = 0;
    v46 = 0x3F80000000000000;
  }

  else
  {
    v47 = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
    v48 = vrsqrte_f32(v47);
    v49 = vmul_f32(v48, vrsqrts_f32(v47, vmul_f32(v48, v48)));
    v50 = vmulq_n_f32(v42, vmul_f32(v49, vrsqrts_f32(v47, vmul_f32(v49, v49))).f32[0]);
    v46 = v50.i64[1];
    v45 = v50.i64[0];
  }

  *a6 = v45;
  *(a6 + 8) = v46;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::GenericSRT<float>>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v29 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v30 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_23;
  }

  v4 = a2;
  if (!a2[1])
  {
    v29 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v30 = "Cannot make additive values, base values array size must not be zero.";
LABEL_23:
    _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    return 0;
  }

  *buf = 0x3F8000003F800000;
  *&buf[8] = 1065353216;
  v37.i64[0] = 0;
  v37.i64[1] = 0x3F80000000000000;
  v38 = 0uLL;
  if (!a4)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v35 = _Q0;
  do
  {
    v15 = *v4 + v8;
    v16 = *(v15 + 16);
    v17 = *(v15 + 32);
    v18 = vnegq_f32(v16);
    v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v18.i32[3] = v16.i32[3];
    v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v16), v17, v19);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vaddq_f32(v17, vmulq_laneq_f32(v22, v16, 3));
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v16), v22, v19);
    *buf = vdivq_f32(v35, *v15);
    v37 = v18;
    v38 = vmulq_f32(vaddq_f32(v23, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL)), vnegq_f32(*buf));
    if (a4 == v9)
    {
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v33);
      __break(1u);
      goto LABEL_25;
    }

    re::AnimationValueTraits<re::GenericSRT<float>>::combine((*a1 + v8), buf, (a3 + v8));
    ++v9;
    v25 = *(a1 + 1);
    if (v25 <= v9)
    {
      break;
    }

    v8 += 48;
  }

  while (*(v4 + 8) > v9);
  if (v25 <= v9)
  {
    return 1;
  }

  v26 = v9;
  if (a4 <= v9)
  {
    v4 = v9;
  }

  else
  {
    v4 = a4;
  }

  v27 = 48 * v9;
  if (a4 <= v9)
  {
    v9 = v9;
  }

  else
  {
    v9 = a4;
  }

  while (v9 != v26)
  {
    re::AnimationValueTraits<re::GenericSRT<float>>::combine((*a1 + v27), buf, (a3 + v27));
    ++v26;
    v27 += 48;
    if (*(a1 + 1) <= v26)
    {
      return 1;
    }
  }

LABEL_25:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v34);
  __break(1u);
  return result;
}

double re::SampledAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v37);
    __break(1u);
    goto LABEL_23;
  }

  v7 = *(a1 + 96);
  if (v7 == 1)
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
LABEL_11:
    a6[1] = v9;
    a6[2] = v10;
    *a6 = v8;
    return *&v8;
  }

  v11 = *(a2 + 24);
  v12 = *(a1 + 80);
  if (v12 >= v11)
  {
LABEL_9:
    v18 = *(a1 + 104);
LABEL_10:
    v8 = *v18;
    v9 = v18[1];
    v10 = v18[2];
    goto LABEL_11;
  }

  if (*(a1 + 84) <= v11 || (v13 = (v11 - v12) / *(a1 + 76), v14 = floorf(v13), v15 = v14 + ceilf(v13 - v14), v16 = (v15 + 0.5), v7 < v16))
  {
    v17 = *(a1 + 104) + 48 * v7;
    v8 = *(v17 - 48);
    v9 = *(v17 - 32);
    v10 = *(v17 - 16);
    goto LABEL_11;
  }

  if (v7 == v16 || (*(a1 + 73) & 1) == 0)
  {
    if (v7 <= v16)
    {
      v16 = v7 - 1;
    }

    if (v7 > v16)
    {
      v18 = (*(a1 + 104) + 48 * v16);
      goto LABEL_10;
    }

LABEL_23:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = v7;
    v23 = v16;
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v44 = 476;
    v45 = 2048;
    v46 = v23;
    v47 = 2048;
    v48 = v22;
    _os_log_send_and_compose_impl(v24, &v40, &v49, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v19 = v16 - 1;
  if (v7 <= v16 - 1)
  {
LABEL_27:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = v7;
    v27 = v19;
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v44 = 476;
    v45 = 2048;
    v46 = v27;
    v47 = 2048;
    v48 = v26;
    _os_log_send_and_compose_impl(v29, &v40, &v49, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = v7;
    v32 = v16;
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v44 = 476;
    v45 = 2048;
    v46 = v32;
    v47 = 2048;
    v48 = v31;
    _os_log_send_and_compose_impl(v34, &v40, &v49, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
  }

  if (v7 <= v16)
  {
    goto LABEL_31;
  }

  re::lerp<float>((*(a1 + 104) + 48 * v19), *(a1 + 104) + 48 * v16, &v49, v13 - (v15 + -1.0));
  v20 = v50;
  *a6 = v49;
  a6[1] = v20;
  *&v8 = v51;
  a6[2] = v51;
  return *&v8;
}

uint64_t re::AnimationHelper::makeAdditiveForValues<re::SkeletalPose>(re *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 1) != a4)
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, output values expected to match input values size.";
    goto LABEL_24;
  }

  v4 = a2;
  if (!a2[1])
  {
    v16 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v17 = "Cannot make additive values, base values array size must not be zero.";
LABEL_24:
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    return 0;
  }

  *buf = 0;
  v25 = &str_67;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  re::AnimationValueTraits<re::SkeletalPose>::init(buf, *a2);
  v9 = 0;
  v10 = *(a1 + 1);
  if (v10 && v4[1])
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      re::AnimationValueTraits<re::SkeletalPose>::invert((*v4 + v11), buf);
      v13 = *(a1 + 1);
      if (v13 <= v9)
      {
        break;
      }

      if (a4 == v9)
      {
        goto LABEL_27;
      }

      re::AnimationValueTraits<re::SkeletalPose>::combine((*a1 + v11), buf, (a3 + v11));
      ++v9;
      v10 = *(a1 + 1);
      if (v10 > v9)
      {
        v11 += 88;
        if (v4[1] > v9)
        {
          continue;
        }
      }

      v9 = v9;
      goto LABEL_11;
    }

    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v18, v21);
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v10 <= v9)
    {
LABEL_18:
      re::SkeletalPose::deinit(buf);
      re::SkeletalPose::~SkeletalPose(buf);
      return 1;
    }

    if (a4 <= v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = a4;
    }

    v14 = 88 * v9;
    while (v4 != v9)
    {
      re::AnimationValueTraits<re::SkeletalPose>::combine((*a1 + v14), buf, (a3 + v14));
      ++v9;
      v14 += 88;
      if (*(a1 + 1) <= v9)
      {
        goto LABEL_18;
      }
    }
  }

  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, a4);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v22);
  __break(1u);
LABEL_27:
  re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v23);
  __break(1u);
  return result;
}

void re::SampledAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v32);
    __break(1u);
LABEL_25:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = v6;
    v19 = v13;
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v39 = 476;
    v40 = 2048;
    v41 = v19;
    v42 = 2048;
    v43 = v18;
    _os_log_send_and_compose_impl(v20, &v35, &v44, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = a4;
LABEL_10:

    re::AnimationValueTraits<re::SkeletalPose>::copy(v7, a6);
    return;
  }

  v8 = *(a2 + 24);
  v9 = *(a1 + 80);
  if (v9 >= v8)
  {
LABEL_9:
    v7 = *(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v8 || (v10 = (v8 - v9) / *(a1 + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
  {
    v7 = (*(a1 + 104) + 88 * v6 - 88);
    goto LABEL_10;
  }

  if (v6 == v13 || (*(a1 + 73) & 1) == 0)
  {
    if (v6 <= v13)
    {
      v13 = v6 - 1;
    }

    if (v6 > v13)
    {
      v7 = (*(a1 + 104) + 88 * v13);
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v14 = v13 - 1;
  if (v6 <= v13 - 1)
  {
LABEL_29:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = v6;
    v23 = v14;
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

    v39 = 476;
    v40 = 2048;
    v41 = v23;
    v42 = 2048;
    v43 = v22;
    _os_log_send_and_compose_impl(v25, &v35, &v44, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = v6;
    v28 = v13;
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v39 = 476;
    v40 = 2048;
    v41 = v28;
    v42 = 2048;
    v43 = v27;
    _os_log_send_and_compose_impl(v30, &v35, &v44, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
  }

  if (v6 <= v13)
  {
    goto LABEL_33;
  }

  v15 = *(a1 + 104);
  v16 = v10 - (v12 + -1.0);

  re::AnimationValueTraits<re::SkeletalPose>::interpolate((v15 + 88 * v14), (v15 + 88 * v13), a6, v16);
}

uint64_t *re::SampledAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v33);
    __break(1u);
LABEL_25:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = v6;
    v20 = v13;
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v40 = 476;
    v41 = 2048;
    v42 = v20;
    v43 = 2048;
    v44 = v19;
    _os_log_send_and_compose_impl(v21, &v36, &v45, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = a4;
LABEL_10:

    return re::AnimationValueTraits<re::BlendShapeWeights>::copy(v7, a6);
  }

  v8 = *(a2 + 24);
  v9 = *(a1 + 80);
  if (v9 >= v8)
  {
LABEL_9:
    v7 = *(a1 + 104);
    goto LABEL_10;
  }

  if (*(a1 + 84) <= v8 || (v10 = (v8 - v9) / *(a1 + 76), v11 = floorf(v10), v12 = v11 + ceilf(v10 - v11), v13 = (v12 + 0.5), v6 < v13))
  {
    v7 = (*(a1 + 104) + 32 * v6 - 32);
    goto LABEL_10;
  }

  if (v6 == v13 || (*(a1 + 73) & 1) == 0)
  {
    if (v6 <= v13)
    {
      v13 = v6 - 1;
    }

    if (v6 > v13)
    {
      v7 = (*(a1 + 104) + 32 * v13);
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v15 = v13 - 1;
  if (v6 <= v13 - 1)
  {
LABEL_29:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = v6;
    v24 = v15;
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v40 = 476;
    v41 = 2048;
    v42 = v24;
    v43 = 2048;
    v44 = v23;
    _os_log_send_and_compose_impl(v26, &v36, &v45, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = v6;
    v29 = v13;
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v40 = 476;
    v41 = 2048;
    v42 = v29;
    v43 = 2048;
    v44 = v28;
    _os_log_send_and_compose_impl(v31, &v36, &v45, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
  }

  if (v6 <= v13)
  {
    goto LABEL_33;
  }

  v16 = *(a1 + 104);
  v17 = v10 - (v12 + -1.0);

  return re::AnimationValueTraits<re::BlendShapeWeights>::interpolate((v16 + 32 * v15), (v16 + 32 * v13), a6, v17);
}

void re::SkeletalPoseSampledAnimation::evaluateCore(re::SkeletalPoseSampledAnimation *this, uint64_t a2, uint64_t a3, re::SkeletalPose *a4, uint64_t a5, re::SkeletalPose *a6)
{
  v247 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v216, v217);
    __break(1u);
LABEL_129:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    v237 = 476;
    v238 = 2048;
    v239 = i;
    v240 = 2048;
    v241 = v10;
    _os_log_send_and_compose_impl(v110, &v233, &v242, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v237 = 468;
    v238 = 2048;
    v239 = i;
    v240 = 2048;
    v241 = v10;
    _os_log_send_and_compose_impl(v113, &v233, &v242, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
    _os_crash_msg();
    __break(1u);
    goto LABEL_137;
  }

  v6 = a4;
  v7 = this;
  v8 = *(this + 12);
  v16 = a4;
  if (!v8)
  {
LABEL_23:

    re::SkeletalPoseSampledAnimation::copyPose(this, a4, v16, a6);
    return;
  }

  if (v8 == 1 || (v17.i64[0] = *(a2 + 24), v17.f32[0] = *v17.i64, v18 = *(this + 20), v18 >= v17.f32[0]))
  {
    v16 = *(this + 13);
    goto LABEL_23;
  }

  if (*(this + 21) <= v17.f32[0])
  {
    v16 = (*(this + 13) + 88 * v8 - 88);
    goto LABEL_23;
  }

  v19 = (v17.f32[0] - v18) / *(this + 19);
  v20 = floorf(v19);
  v21 = v20 + ceilf(v19 - v20);
  v10 = (v21 + 0.5);
  if (*(this + 73) != 1 || v8 == v10)
  {
    if (v8 <= v10)
    {
      v9 = v8 - 1;
    }

    else
    {
      v9 = (v21 + 0.5);
    }

    if (v8 <= v9)
    {
LABEL_261:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v207 = MEMORY[0x1E69E9C10];
      v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v208)
      {
        v209 = 3;
      }

      else
      {
        v209 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = v9;
      v240 = 2048;
      v241 = v8;
      _os_log_send_and_compose_impl(v209, &v233, &v242, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_265;
    }

    v16 = (*(this + 13) + 88 * v9);
    goto LABEL_23;
  }

  v9 = v10 - 1;
  if (v8 <= v10 - 1)
  {
LABEL_265:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v210 = MEMORY[0x1E69E9C10];
    v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v211)
    {
      v212 = 3;
    }

    else
    {
      v212 = 2;
    }

    v237 = 476;
    v238 = 2048;
    v239 = v9;
    v240 = 2048;
    v241 = v8;
    _os_log_send_and_compose_impl(v212, &v233, &v242, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
    _os_crash_msg();
    __break(1u);
LABEL_269:
    v233 = 0;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    v213 = MEMORY[0x1E69E9C10];
    v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v234 = 136315906;
    v235 = "operator[]";
    v236 = 1024;
    if (v214)
    {
      v215 = 3;
    }

    else
    {
      v215 = 2;
    }

    v237 = 476;
    v238 = 2048;
    v239 = v10;
    v240 = 2048;
    v241 = v8;
    _os_log_send_and_compose_impl(v215, &v233, &v242, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
    _os_crash_msg();
    __break(1u);
  }

  if (v8 <= v10)
  {
    goto LABEL_269;
  }

  v22 = v19 - (v21 + -1.0);
  v23 = *(this + 13);
  v9 = v23 + 88 * v9;
  v10 = v23 + 88 * v10;
  v24 = *(a4 + 10);
  v8 = *(v24 + 216);
  v232 = v22;
  v231 = v10;
  if (*(v9 + 80) == v24)
  {
    if (*(this + 112))
    {
      if (v8)
      {
        v28 = 0;
        i = 0;
        v17.f32[0] = 1.0 - v22;
        v17 = vdupq_lane_s32(*v17.f32, 0);
        while (1)
        {
          v12 = *(v9 + 24);
          if (v12 <= i)
          {
            break;
          }

          v12 = *(v10 + 24);
          if (v12 <= i)
          {
            goto LABEL_177;
          }

          v12 = *(a6 + 3);
          if (v12 <= i)
          {
            goto LABEL_181;
          }

          *(*(a6 + 4) + v28) = vmlaq_f32(vmulq_n_f32(*(*(v10 + 32) + v28), v22), v17, *(*(v9 + 32) + v28));
          ++i;
          v28 += 48;
          if (v8 == i)
          {
            goto LABEL_92;
          }
        }

LABEL_173:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v141 = MEMORY[0x1E69E9C10];
        v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v142)
        {
          v143 = 3;
        }

        else
        {
          v143 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v12;
        _os_log_send_and_compose_impl(v143, &v233, &v242, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_177:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v144 = MEMORY[0x1E69E9C10];
        v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v145)
        {
          v146 = 3;
        }

        else
        {
          v146 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v12;
        _os_log_send_and_compose_impl(v146, &v233, &v242, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_181:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v147 = MEMORY[0x1E69E9C10];
        v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v148)
        {
          v149 = 3;
        }

        else
        {
          v149 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v12;
        _os_log_send_and_compose_impl(v149, &v233, &v242, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
        goto LABEL_185;
      }
    }

    else if (v8)
    {
      v72 = 0;
      for (i = 0; i != v8; ++i)
      {
        v12 = *(a4 + 3);
        if (v12 <= i)
        {
          goto LABEL_165;
        }

        v12 = *(a6 + 3);
        if (v12 <= i)
        {
          goto LABEL_169;
        }

        v17 = *(*(a4 + 4) + v72);
        *(*(a6 + 4) + v72) = v17;
        v72 += 48;
      }
    }

LABEL_92:
    if (*(this + 113))
    {
      if (v8)
      {
        i = 0;
        v73 = 1.0 - v22;
        v74 = 16;
        while (1)
        {
          v13 = *(v9 + 24);
          if (v13 <= i)
          {
            break;
          }

          v13 = *(v10 + 24);
          if (v13 <= i)
          {
            goto LABEL_197;
          }

          v75 = *(*(v9 + 32) + v74);
          v76 = *(*(v10 + 32) + v74);
          v77 = vmulq_f32(v75, v76);
          v78 = vextq_s8(v77, v77, 8uLL);
          *v77.i8 = vadd_f32(*v77.i8, *v78.f32);
          *v77.i32 = vaddv_f32(*v77.i8);
          v78.i64[0] = 0;
          v79 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v77, v78)), 0), vnegq_f32(v76), v76);
          v80 = vsubq_f32(v75, v79);
          v81 = vmulq_f32(v80, v80);
          v226 = v79;
          v230 = v75;
          v82 = vaddq_f32(v75, v79);
          v83 = vmulq_f32(v82, v82);
          v84 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v81.i8, *&vextq_s8(v81, v81, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v83.i8, *&vextq_s8(v83, v83, 8uLL)))));
          v85 = v84 + v84;
          v86 = 1.0;
          v87 = 1.0;
          if ((v84 + v84) != 0.0)
          {
            v87 = sinf(v84 + v84) / v85;
          }

          if ((v73 * v85) != 0.0)
          {
            v222 = v87;
            v88 = sinf(v73 * v85);
            v87 = v222;
            v86 = v88 / (v73 * v85);
          }

          v89 = v232;
          v90 = v232 * v85;
          v91 = 1.0;
          if (v90 != 0.0)
          {
            v223 = v87;
            v92 = sinf(v90);
            v89 = v232;
            v87 = v223;
            v91 = v92 / v90;
          }

          v93 = v87;
          v94 = vrecpe_f32(LODWORD(v87));
          v95 = vmul_f32(v94, vrecps_f32(LODWORD(v93), v94));
          v96 = vmul_f32(v95, vrecps_f32(LODWORD(v93), v95)).f32[0];
          *v95.i32 = v73 * (v96 * v86);
          v17 = vmlaq_f32(vmulq_n_f32(v226, v89 * (v96 * v91)), v230, vdupq_lane_s32(v95, 0));
          v97 = vmulq_f32(v17, v17);
          v98 = vadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
          if (vaddv_f32(v98) == 0.0)
          {
            v99 = 0;
            v100 = 0x3F80000000000000;
          }

          else
          {
            v101 = vadd_f32(v98, vdup_lane_s32(v98, 1)).u32[0];
            v102 = vrsqrte_f32(v101);
            v103 = vmul_f32(v102, vrsqrts_f32(v101, vmul_f32(v102, v102)));
            v17 = vmulq_n_f32(v17, vmul_f32(v103, vrsqrts_f32(v101, vmul_f32(v103, v103))).f32[0]);
            v100 = v17.i64[1];
            v99 = v17.i64[0];
          }

          v13 = *(a6 + 3);
          if (v13 <= i)
          {
            goto LABEL_201;
          }

          v104 = (*(a6 + 4) + v74);
          *v104 = v99;
          v104[1] = v100;
          ++i;
          v74 += 48;
          if (v8 == i)
          {
            goto LABEL_114;
          }
        }

LABEL_193:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v156 = MEMORY[0x1E69E9C10];
        v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v157)
        {
          v158 = 3;
        }

        else
        {
          v158 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v13;
        _os_log_send_and_compose_impl(v158, &v233, &v242, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_197:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v159 = MEMORY[0x1E69E9C10];
        v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v160)
        {
          v161 = 3;
        }

        else
        {
          v161 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v13;
        _os_log_send_and_compose_impl(v161, &v233, &v242, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_201:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v162 = MEMORY[0x1E69E9C10];
        v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v163)
        {
          v164 = 3;
        }

        else
        {
          v164 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v13;
        _os_log_send_and_compose_impl(v164, &v233, &v242, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
        goto LABEL_205;
      }
    }

    else if (v8)
    {
      i = 0;
      v105 = 16;
      while (1)
      {
        v12 = *(a4 + 3);
        if (v12 <= i)
        {
          break;
        }

        v12 = *(a6 + 3);
        if (v12 <= i)
        {
          goto LABEL_189;
        }

        v17 = *(*(a4 + 4) + v105);
        *(*(a6 + 4) + v105) = v17;
        ++i;
        v105 += 48;
        if (v8 == i)
        {
          goto LABEL_114;
        }
      }

LABEL_185:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v150 = MEMORY[0x1E69E9C10];
      v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v151)
      {
        v152 = 3;
      }

      else
      {
        v152 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v12;
      _os_log_send_and_compose_impl(v152, &v233, &v242, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_189:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v153 = MEMORY[0x1E69E9C10];
      v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v154)
      {
        v155 = 3;
      }

      else
      {
        v155 = 2;
      }

      v237 = 468;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v12;
      _os_log_send_and_compose_impl(v155, &v233, &v242, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_193;
    }

LABEL_114:
    if (*(v7 + 114))
    {
      if (v8)
      {
        v6 = 0;
        v17.f32[0] = 1.0 - v232;
        v106 = vdupq_lane_s32(*v17.f32, 0);
        for (j = 32; ; j += 48)
        {
          v7 = *(v9 + 24);
          if (v7 <= v6)
          {
            break;
          }

          v7 = *(v10 + 24);
          if (v7 <= v6)
          {
            goto LABEL_217;
          }

          v7 = *(a6 + 3);
          if (v7 <= v6)
          {
            goto LABEL_221;
          }

          *(*(a6 + 4) + j) = vmlaq_f32(vmulq_n_f32(*(*(v10 + 32) + j), v232), v106, *(*(v9 + 32) + j));
          v6 = (v6 + 1);
          if (v8 == v6)
          {
            return;
          }
        }

LABEL_213:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v171 = MEMORY[0x1E69E9C10];
        v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v172)
        {
          v173 = 3;
        }

        else
        {
          v173 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v6;
        v240 = 2048;
        v241 = v7;
        _os_log_send_and_compose_impl(v173, &v233, &v242, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_217:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v174 = MEMORY[0x1E69E9C10];
        v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v175)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v6;
        v240 = 2048;
        v241 = v7;
        _os_log_send_and_compose_impl(v176, &v233, &v242, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_221:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v177 = MEMORY[0x1E69E9C10];
        v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v178)
        {
          v179 = 3;
        }

        else
        {
          v179 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = v6;
        v240 = 2048;
        v241 = v7;
        _os_log_send_and_compose_impl(v179, &v233, &v242, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_225:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v180 = MEMORY[0x1E69E9C10];
        v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v181)
        {
          v182 = 3;
        }

        else
        {
          v182 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v182, &v233, &v242, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_229:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v183 = MEMORY[0x1E69E9C10];
        v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v184)
        {
          v185 = 3;
        }

        else
        {
          v185 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v185, &v233, &v242, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_233:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v186 = MEMORY[0x1E69E9C10];
        v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v187)
        {
          v188 = 3;
        }

        else
        {
          v188 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v188, &v233, &v242, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_237:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v189 = MEMORY[0x1E69E9C10];
        v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v190)
        {
          v191 = 3;
        }

        else
        {
          v191 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v191, &v233, &v242, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_241:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v192 = MEMORY[0x1E69E9C10];
        v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v193)
        {
          v194 = 3;
        }

        else
        {
          v194 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v194, &v233, &v242, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_245:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v195 = MEMORY[0x1E69E9C10];
        v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v196)
        {
          v197 = 3;
        }

        else
        {
          v197 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = i;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v197, &v233, &v242, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_249:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v198 = MEMORY[0x1E69E9C10];
        v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v199)
        {
          v200 = 3;
        }

        else
        {
          v200 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v200, &v233, &v242, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_253:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v201 = MEMORY[0x1E69E9C10];
        v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v202)
        {
          v203 = 3;
        }

        else
        {
          v203 = 2;
        }

        v237 = 476;
        v238 = 2048;
        v239 = v14;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v203, &v233, &v242, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
LABEL_257:
        v233 = 0;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v242 = 0u;
        v204 = MEMORY[0x1E69E9C10];
        v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v234 = 136315906;
        v235 = "operator[]";
        v236 = 1024;
        if (v205)
        {
          v206 = 3;
        }

        else
        {
          v206 = 2;
        }

        v237 = 468;
        v238 = 2048;
        v239 = v7;
        v240 = 2048;
        v241 = v10;
        _os_log_send_and_compose_impl(v206, &v233, &v242, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
        _os_crash_msg();
        __break(1u);
        goto LABEL_261;
      }
    }

    else if (v8)
    {
      v7 = 0;
      for (k = 32; ; k += 48)
      {
        v9 = *(v6 + 3);
        if (v9 <= v7)
        {
          break;
        }

        v9 = *(a6 + 3);
        if (v9 <= v7)
        {
          goto LABEL_209;
        }

        *(*(a6 + 4) + k) = *(*(v6 + 4) + k);
        v7 = (v7 + 1);
        if (v8 == v7)
        {
          return;
        }
      }

LABEL_205:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v165 = MEMORY[0x1E69E9C10];
      v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v166)
      {
        v167 = 3;
      }

      else
      {
        v167 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = v7;
      v240 = 2048;
      v241 = v9;
      _os_log_send_and_compose_impl(v167, &v233, &v242, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_209:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v168 = MEMORY[0x1E69E9C10];
      v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v169)
      {
        v170 = 3;
      }

      else
      {
        v170 = 2;
      }

      v237 = 468;
      v238 = 2048;
      v239 = v7;
      v240 = 2048;
      v241 = v9;
      _os_log_send_and_compose_impl(v170, &v233, &v242, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_213;
    }

    return;
  }

  if (*(this + 112))
  {
    if (v8)
    {
      v12 = 0;
      v13 = 0;
      i = 0;
      v17.f32[0] = 1.0 - v22;
      v227 = vdupq_lane_s32(*v17.f32, 0);
      while (1)
      {
        v25 = *(v6 + 10);
        v14 = *(v25 + 216);
        if (v14 <= i)
        {
          break;
        }

        v26 = *(v25 + 224);
        v10 = *(v9 + 80);
        v27 = 0xBF58476D1CE4E5B9 * ((*(v26 + v12) >> 31) ^ (*(v26 + v12) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v10 + 232, (v26 + v12), (0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) ^ ((0x94D049BB133111EBLL * (v27 ^ (v27 >> 27))) >> 31), &v242);
        if (HIDWORD(v242) != 0x7FFFFFFF)
        {
          v14 = *(*(v10 + 248) + 32 * HIDWORD(v242) + 24);
          v10 = *(v9 + 24);
          if (v10 <= v14)
          {
            goto LABEL_225;
          }

          v10 = *(v231 + 24);
          if (v10 <= v14)
          {
            goto LABEL_229;
          }

          v10 = *(a6 + 3);
          if (v10 <= i)
          {
            goto LABEL_233;
          }

          v17 = *(*(v9 + 32) + 48 * v14);
          *(*(a6 + 4) + v13) = vmlaq_f32(vmulq_n_f32(*(*(v231 + 32) + 48 * v14), v232), v227, v17);
        }

        ++i;
        v13 += 48;
        v12 += 16;
        if (v8 == i)
        {
          goto LABEL_45;
        }
      }

LABEL_137:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v114 = MEMORY[0x1E69E9C10];
      v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v115)
      {
        v116 = 3;
      }

      else
      {
        v116 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v14;
      _os_log_send_and_compose_impl(v116, &v233, &v242, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_141:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v117 = MEMORY[0x1E69E9C10];
      v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v118)
      {
        v119 = 3;
      }

      else
      {
        v119 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v10;
      _os_log_send_and_compose_impl(v119, &v233, &v242, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_145:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v120 = MEMORY[0x1E69E9C10];
      v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v121)
      {
        v122 = 3;
      }

      else
      {
        v122 = 2;
      }

      v237 = 468;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v10;
      _os_log_send_and_compose_impl(v122, &v233, &v242, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_149;
    }

    goto LABEL_45;
  }

  if (v8)
  {
    v29 = 0;
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a4 + 3);
      if (v10 <= i)
      {
        goto LABEL_129;
      }

      v10 = *(a6 + 3);
      if (v10 <= i)
      {
        goto LABEL_133;
      }

      v17 = *(*(a4 + 4) + v29);
      *(*(a6 + 4) + v29) = v17;
      v29 += 48;
    }
  }

LABEL_45:
  if (*(v7 + 113))
  {
    if (v8)
    {
      v12 = 0;
      i = 0;
      v14 = 0xBF58476D1CE4E5B9;
      v30 = 1.0 - v232;
      v13 = 16;
      v224 = v9;
      while (1)
      {
        v31 = *(v6 + 10);
        v10 = *(v31 + 216);
        if (v10 <= i)
        {
          break;
        }

        v32 = *(v31 + 224);
        v10 = *(v9 + 80);
        v33 = ((*(v32 + v12) >> 31) ^ (*(v32 + v12) >> 1)) * v14;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v10 + 232, (v32 + v12), (0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) ^ ((0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) >> 31), &v242);
        if (HIDWORD(v242) != 0x7FFFFFFF)
        {
          v34 = v9;
          v9 = v8;
          v8 = v14;
          v14 = *(*(v10 + 248) + 32 * HIDWORD(v242) + 24);
          v10 = *(v34 + 24);
          if (v10 <= v14)
          {
            goto LABEL_237;
          }

          v10 = *(v231 + 24);
          if (v10 <= v14)
          {
            goto LABEL_241;
          }

          v35 = *(*(v224 + 32) + 48 * v14 + 16);
          v36 = *(*(v231 + 32) + 48 * v14 + 16);
          v37 = vmulq_f32(v35, v36);
          v38 = vextq_s8(v37, v37, 8uLL);
          *v37.i8 = vadd_f32(*v37.i8, *v38.f32);
          *v37.i32 = vaddv_f32(*v37.i8);
          v38.i64[0] = 0;
          v39 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v37, v38)), 0), vnegq_f32(v36), v36);
          v40 = vsubq_f32(v35, v39);
          v41 = vmulq_f32(v40, v40);
          v225 = v39;
          v228 = v35;
          v42 = vaddq_f32(v35, v39);
          v43 = vmulq_f32(v42, v42);
          v44 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)))));
          v45 = v44 + v44;
          v46 = 1.0;
          v47 = 1.0;
          if ((v44 + v44) != 0.0)
          {
            v47 = sinf(v44 + v44) / v45;
          }

          v14 = v8;
          if ((v30 * v45) != 0.0)
          {
            v220 = v47;
            v48 = sinf(v30 * v45);
            v47 = v220;
            v46 = v48 / (v30 * v45);
          }

          v49 = v232;
          v50 = v232 * v45;
          v51 = 1.0;
          v8 = v9;
          if (v50 != 0.0)
          {
            v221 = v47;
            v52 = sinf(v50);
            v49 = v232;
            v47 = v221;
            v51 = v52 / v50;
          }

          v53 = v47;
          v54 = vrecpe_f32(LODWORD(v47));
          v55 = vmul_f32(v54, vrecps_f32(LODWORD(v53), v54));
          v56 = vmul_f32(v55, vrecps_f32(LODWORD(v53), v55)).f32[0];
          *v55.i32 = v30 * (v56 * v46);
          v17 = vmlaq_f32(vmulq_n_f32(v225, v49 * (v56 * v51)), v228, vdupq_lane_s32(v55, 0));
          v57 = vmulq_f32(v17, v17);
          v58 = vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
          v9 = v224;
          if (vaddv_f32(v58) == 0.0)
          {
            v59 = 0;
            v60 = 0x3F80000000000000;
          }

          else
          {
            v61 = vadd_f32(v58, vdup_lane_s32(v58, 1)).u32[0];
            v62 = vrsqrte_f32(v61);
            v63 = vmul_f32(v62, vrsqrts_f32(v61, vmul_f32(v62, v62)));
            v17 = vmulq_n_f32(v17, vmul_f32(v63, vrsqrts_f32(v61, vmul_f32(v63, v63))).f32[0]);
            v60 = v17.i64[1];
            v59 = v17.i64[0];
          }

          v10 = *(a6 + 3);
          if (v10 <= i)
          {
            goto LABEL_245;
          }

          v64 = (*(a6 + 4) + v13);
          *v64 = v59;
          v64[1] = v60;
        }

        ++i;
        v13 += 48;
        v12 += 16;
        if (v8 == i)
        {
          goto LABEL_70;
        }
      }

LABEL_149:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v123 = MEMORY[0x1E69E9C10];
      v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v124)
      {
        v125 = 3;
      }

      else
      {
        v125 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v10;
      _os_log_send_and_compose_impl(v125, &v233, &v242, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_153:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v126 = MEMORY[0x1E69E9C10];
      v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v127)
      {
        v128 = 3;
      }

      else
      {
        v128 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = v7;
      v240 = 2048;
      v241 = v9;
      _os_log_send_and_compose_impl(v128, &v233, &v242, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_157:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v129 = MEMORY[0x1E69E9C10];
      v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v130)
      {
        v131 = 3;
      }

      else
      {
        v131 = 2;
      }

      v237 = 468;
      v238 = 2048;
      v239 = v7;
      v240 = 2048;
      v241 = v9;
      _os_log_send_and_compose_impl(v131, &v233, &v242, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_161;
    }
  }

  else if (v8)
  {
    i = 0;
    v65 = 16;
    do
    {
      v10 = *(v6 + 3);
      if (v10 <= i)
      {
        goto LABEL_141;
      }

      v10 = *(a6 + 3);
      if (v10 <= i)
      {
        goto LABEL_145;
      }

      v17 = *(*(v6 + 4) + v65);
      *(*(a6 + 4) + v65) = v17;
      ++i;
      v65 += 48;
    }

    while (v8 != i);
  }

LABEL_70:
  if (*(v7 + 114))
  {
    if (v8)
    {
      i = 0;
      v7 = 0;
      v14 = 0xBF58476D1CE4E5B9;
      v17.f32[0] = 1.0 - v232;
      v229 = vdupq_lane_s32(*v17.f32, 0);
      v12 = 32;
      v13 = 0x7FFFFFFFLL;
      while (1)
      {
        v66 = *(v6 + 10);
        v10 = *(v66 + 216);
        if (v10 <= v7)
        {
          break;
        }

        v67 = *(v66 + 224);
        v68 = *(v9 + 80);
        v69 = ((*(v67 + i) >> 31) ^ (*(v67 + i) >> 1)) * v14;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v68 + 232, (v67 + i), (0x94D049BB133111EBLL * (v69 ^ (v69 >> 27))) ^ ((0x94D049BB133111EBLL * (v69 ^ (v69 >> 27))) >> 31), &v242);
        if (HIDWORD(v242) != 0x7FFFFFFF)
        {
          v70 = v14;
          v14 = *(*(v68 + 248) + 32 * HIDWORD(v242) + 24);
          v10 = *(v9 + 24);
          if (v10 <= v14)
          {
            goto LABEL_249;
          }

          v10 = *(v231 + 24);
          if (v10 <= v14)
          {
            goto LABEL_253;
          }

          v10 = *(a6 + 3);
          if (v10 <= v7)
          {
            goto LABEL_257;
          }

          *(*(a6 + 4) + v12) = vmlaq_f32(vmulq_n_f32(*(*(v231 + 32) + 48 * v14 + 32), v232), v229, *(*(v9 + 32) + 48 * v14 + 32));
          v14 = v70;
        }

        v7 = (v7 + 1);
        v12 += 48;
        i += 16;
        if (v8 == v7)
        {
          return;
        }
      }

LABEL_161:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v132 = MEMORY[0x1E69E9C10];
      v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v133)
      {
        v134 = 3;
      }

      else
      {
        v134 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = v7;
      v240 = 2048;
      v241 = v10;
      _os_log_send_and_compose_impl(v134, &v233, &v242, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_165:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v135 = MEMORY[0x1E69E9C10];
      v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 2;
      }

      v237 = 476;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v12;
      _os_log_send_and_compose_impl(v137, &v233, &v242, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
LABEL_169:
      v233 = 0;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v242 = 0u;
      v138 = MEMORY[0x1E69E9C10];
      v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v234 = 136315906;
      v235 = "operator[]";
      v236 = 1024;
      if (v139)
      {
        v140 = 3;
      }

      else
      {
        v140 = 2;
      }

      v237 = 468;
      v238 = 2048;
      v239 = i;
      v240 = 2048;
      v241 = v12;
      _os_log_send_and_compose_impl(v140, &v233, &v242, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v234, 38, v218, v219);
      _os_crash_msg();
      __break(1u);
      goto LABEL_173;
    }
  }

  else if (v8)
  {
    v7 = 0;
    for (m = 32; ; m += 48)
    {
      v9 = *(v6 + 3);
      if (v9 <= v7)
      {
        break;
      }

      v9 = *(a6 + 3);
      if (v9 <= v7)
      {
        goto LABEL_157;
      }

      *(*(a6 + 4) + m) = *(*(v6 + 4) + m);
      v7 = (v7 + 1);
      if (v8 == v7)
      {
        return;
      }
    }

    goto LABEL_153;
  }
}

__n128 re::SkeletalPoseSampledAnimation::copyPose(re::SkeletalPoseSampledAnimation *this, const re::SkeletalPose *a2, const re::SkeletalPose *a3, re::SkeletalPose *a4)
{
  v225 = *MEMORY[0x1E69E9840];
  v13 = *(a4 + 10);
  v14 = *(v13 + 216);
  v15 = *(a3 + 10);
  if (v15 == v13)
  {
    if (*(this + 112) != 1 || v14 == 0)
    {
LABEL_53:
      if (*(this + 113) != 1 || v14 == 0)
      {
LABEL_61:
        if (*(this + 114) != 1 || v14 == 0)
        {
          return result;
        }

        v4 = 0;
        for (i = 32; ; i += 48)
        {
          v5 = *(a3 + 3);
          if (v5 <= v4)
          {
            break;
          }

          v5 = *(a4 + 3);
          if (v5 <= v4)
          {
            goto LABEL_155;
          }

          result = *(*(a3 + 4) + i);
          *(*(a4 + 4) + i) = result;
          if (v14 == ++v4)
          {
            return result;
          }
        }

        goto LABEL_151;
      }

      v4 = 0;
      v41 = 16;
      while (1)
      {
        v5 = *(a3 + 3);
        if (v5 <= v4)
        {
          break;
        }

        v5 = *(a4 + 3);
        if (v5 <= v4)
        {
          goto LABEL_147;
        }

        result = *(*(a3 + 4) + v41);
        *(*(a4 + 4) + v41) = result;
        ++v4;
        v41 += 48;
        if (v14 == v4)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v39 = 0;
      v4 = 0;
      while (1)
      {
        v5 = *(a3 + 3);
        if (v5 <= v4)
        {
          break;
        }

        v5 = *(a4 + 3);
        if (v5 <= v4)
        {
          goto LABEL_139;
        }

        result = *(*(a3 + 4) + v39);
        *(*(a4 + 4) + v39) = result;
        ++v4;
        v39 += 48;
        if (v14 == v4)
        {
          goto LABEL_53;
        }
      }

      v211 = 0;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v212 = 136315906;
      v213 = "operator[]";
      v214 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v74 = 3;
      }

      else
      {
        v74 = 2;
      }

      v215 = 476;
      v216 = 2048;
      v217 = v4;
      v218 = 2048;
      v219 = v5;
      _os_log_send_and_compose_impl(v74, &v211, &v220, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      v211 = 0;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v75 = MEMORY[0x1E69E9C10];
      v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v212 = 136315906;
      v213 = "operator[]";
      v214 = 1024;
      if (v76)
      {
        v77 = 3;
      }

      else
      {
        v77 = 2;
      }

      v215 = 468;
      v216 = 2048;
      v217 = v4;
      v218 = 2048;
      v219 = v5;
      _os_log_send_and_compose_impl(v77, &v211, &v220, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
      _os_crash_msg();
      __break(1u);
    }

    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v4;
    v218 = 2048;
    v219 = v5;
    _os_log_send_and_compose_impl(v80, &v211, &v220, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
    _os_crash_msg();
    __break(1u);
LABEL_147:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v215 = 468;
    v216 = 2048;
    v217 = v4;
    v218 = 2048;
    v219 = v5;
    _os_log_send_and_compose_impl(v83, &v211, &v220, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
    _os_crash_msg();
    __break(1u);
LABEL_151:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v4;
    v218 = 2048;
    v219 = v5;
    _os_log_send_and_compose_impl(v86, &v211, &v220, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
    _os_crash_msg();
    __break(1u);
LABEL_155:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    v215 = 468;
    v216 = 2048;
    v217 = v4;
    v218 = 2048;
    v219 = v5;
    _os_log_send_and_compose_impl(v89, &v211, &v220, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v208);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v8;
    v218 = 2048;
    v219 = v6;
    _os_log_send_and_compose_impl(v92, &v211, &v220, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
    _os_crash_msg();
    __break(1u);
LABEL_163:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v8;
    v218 = 2048;
    v219 = v6;
    _os_log_send_and_compose_impl(v95, &v211, &v220, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
    _os_crash_msg();
    __break(1u);
    goto LABEL_167;
  }

  v10 = 0xBF58476D1CE4E5B9;
  v16 = 0x94D049BB133111EBLL;
  v209 = this;
  v17 = *(a2 + 10);
  if (v15 == v17)
  {
    if (*(this + 112) != 1 || v14 == 0)
    {
LABEL_81:
      if (*(v209 + 113) != 1 || v14 == 0)
      {
LABEL_92:
        if (*(v209 + 114) != 1 || !v14)
        {
          return result;
        }

        v5 = 0;
        v4 = 0;
        v6 = 32;
        v8 = 0x7FFFFFFFLL;
        v9 = 48;
        while (1)
        {
          v54 = *(a4 + 10);
          v7 = *(v54 + 216);
          if (v7 <= v4)
          {
            goto LABEL_179;
          }

          v55 = *(v54 + 224);
          v56 = *(a3 + 10);
          v57 = 0xBF58476D1CE4E5B9 * ((*(v55 + v5) >> 31) ^ (*(v55 + v5) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v56 + 232, (v55 + v5), (0x94D049BB133111EBLL * (v57 ^ (v57 >> 27))) ^ ((0x94D049BB133111EBLL * (v57 ^ (v57 >> 27))) >> 31), &v220);
          if (HIDWORD(v220) != 0x7FFFFFFF)
          {
            v10 = *(*(v56 + 248) + 32 * HIDWORD(v220) + 24);
            v7 = *(a3 + 3);
            if (v7 <= v10)
            {
              goto LABEL_235;
            }

            v7 = *(a4 + 3);
            if (v7 <= v4)
            {
              goto LABEL_239;
            }

            result = *(*(a3 + 4) + 48 * v10 + 32);
            *(*(a4 + 4) + v6) = result;
          }

          ++v4;
          v6 += 48;
          v5 += 16;
          if (v14 == v4)
          {
            return result;
          }
        }
      }

      v4 = 0;
      v5 = 0;
      v6 = 16;
      v8 = 0x7FFFFFFFLL;
      v9 = 48;
      while (1)
      {
        v50 = *(a4 + 10);
        v7 = *(v50 + 216);
        if (v7 <= v5)
        {
          break;
        }

        v51 = *(v50 + 224);
        v52 = *(a3 + 10);
        v53 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v51 + v4) >> 31) ^ (*(v51 + v4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v51 + v4) >> 31) ^ (*(v51 + v4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v52 + 232, (v51 + v4), v53 ^ (v53 >> 31), &v220);
        if (HIDWORD(v220) != 0x7FFFFFFF)
        {
          v10 = *(*(v52 + 248) + 32 * HIDWORD(v220) + 24);
          v7 = *(a3 + 3);
          if (v7 <= v10)
          {
            goto LABEL_227;
          }

          v7 = *(a4 + 3);
          if (v7 <= v5)
          {
            goto LABEL_231;
          }

          result = *(*(a3 + 4) + 48 * v10 + 16);
          *(*(a4 + 4) + v6) = result;
          v10 = 0xBF58476D1CE4E5B9;
        }

        ++v5;
        v6 += 48;
        v4 += 16;
        if (v14 == v5)
        {
          goto LABEL_92;
        }
      }

LABEL_175:
      v211 = 0;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v102 = MEMORY[0x1E69E9C10];
      v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v212 = 136315906;
      v213 = "operator[]";
      v214 = 1024;
      if (v103)
      {
        v104 = 3;
      }

      else
      {
        v104 = 2;
      }

      v215 = 476;
      v216 = 2048;
      v217 = v5;
      v218 = 2048;
      v219 = v7;
      _os_log_send_and_compose_impl(v104, &v211, &v220, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
LABEL_179:
      v211 = 0;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v105 = MEMORY[0x1E69E9C10];
      v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v212 = 136315906;
      v213 = "operator[]";
      v214 = 1024;
      if (v106)
      {
        v107 = 3;
      }

      else
      {
        v107 = 2;
      }

      v215 = 476;
      v216 = 2048;
      v217 = v4;
      v218 = 2048;
      v219 = v7;
      _os_log_send_and_compose_impl(v107, &v211, &v220, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
      goto LABEL_183;
    }

    v4 = 0;
    v6 = 0;
    v5 = 0;
    v8 = 0x7FFFFFFFLL;
    v9 = 48;
    while (1)
    {
      v45 = *(a4 + 10);
      v7 = *(v45 + 216);
      if (v7 <= v5)
      {
        break;
      }

      v46 = *(v45 + 224);
      v47 = *(a3 + 10);
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v46 + v4) >> 31) ^ (*(v46 + v4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v46 + v4) >> 31) ^ (*(v46 + v4) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v47 + 232, (v46 + v4), v48 ^ (v48 >> 31), &v220);
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        v10 = *(*(v47 + 248) + 32 * HIDWORD(v220) + 24);
        v7 = *(a3 + 3);
        if (v7 <= v10)
        {
          goto LABEL_211;
        }

        v7 = *(a4 + 3);
        if (v7 <= v5)
        {
          goto LABEL_215;
        }

        result = *(*(a3 + 4) + 48 * v10);
        *(*(a4 + 4) + v6) = result;
        v10 = 0xBF58476D1CE4E5B9;
      }

      ++v5;
      v6 += 48;
      v4 += 16;
      if (v14 == v5)
      {
        goto LABEL_81;
      }
    }

LABEL_167:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v5;
    v218 = 2048;
    v219 = v7;
    _os_log_send_and_compose_impl(v98, &v211, &v220, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
    _os_crash_msg();
    __break(1u);
LABEL_171:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v4;
    v218 = 2048;
    v219 = v6;
    _os_log_send_and_compose_impl(v101, &v211, &v220, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
    _os_crash_msg();
    __break(1u);
    goto LABEL_175;
  }

  v18 = *(this + 112);
  if (!v14)
  {
    v18 = 0;
  }

  if (v13 == v17)
  {
    if (!v18)
    {
LABEL_112:
      if (*(v209 + 113) != 1 || !v14)
      {
LABEL_123:
        if (*(v209 + 114) != 1 || !v14)
        {
          return result;
        }

        v6 = 0;
        v9 = 0;
        v8 = 32;
        v5 = 0x7FFFFFFFLL;
        v7 = 48;
        while (1)
        {
          v68 = *(a4 + 10);
          v4 = *(v68 + 216);
          if (v4 <= v9)
          {
            break;
          }

          v69 = *(v68 + 224);
          v70 = *(a3 + 10);
          v71 = 0xBF58476D1CE4E5B9 * ((*(v69 + v6) >> 31) ^ (*(v69 + v6) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v70 + 232, (v69 + v6), (0x94D049BB133111EBLL * (v71 ^ (v71 >> 27))) ^ ((0x94D049BB133111EBLL * (v71 ^ (v71 >> 27))) >> 31), &v220);
          if (HIDWORD(v220) == 0x7FFFFFFF)
          {
            v72 = a2;
            v4 = *(a2 + 3);
            if (v4 <= v9)
            {
              goto LABEL_279;
            }

            v10 = *(a4 + 3);
            v4 = v9;
            if (v10 <= v9)
            {
              goto LABEL_283;
            }
          }

          else
          {
            v4 = *(*(v70 + 248) + 32 * HIDWORD(v220) + 24);
            v7 = *(a3 + 3);
            if (v7 <= v4)
            {
              goto LABEL_275;
            }

            v10 = *(a4 + 3);
            v72 = a3;
            v7 = 48;
            if (v10 <= v9)
            {
              goto LABEL_287;
            }
          }

          result = *(*(v72 + 4) + 48 * v4 + 32);
          *(*(a4 + 4) + v8) = result;
          ++v9;
          v6 += 16;
          v8 += 48;
          if (v14 == v9)
          {
            return result;
          }
        }

LABEL_191:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v114 = MEMORY[0x1E69E9C10];
        v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v115)
        {
          v116 = 3;
        }

        else
        {
          v116 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v116, &v211, &v220, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_195:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v119, &v211, &v220, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_199:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v120 = MEMORY[0x1E69E9C10];
        v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v121)
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v122, &v211, &v220, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_203:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v123 = MEMORY[0x1E69E9C10];
        v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v124)
        {
          v125 = 3;
        }

        else
        {
          v125 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v125, &v211, &v220, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_207:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v126 = MEMORY[0x1E69E9C10];
        v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v127)
        {
          v128 = 3;
        }

        else
        {
          v128 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v128, &v211, &v220, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_211:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v129 = MEMORY[0x1E69E9C10];
        v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v130)
        {
          v131 = 3;
        }

        else
        {
          v131 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v10;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v131, &v211, &v220, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_215:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v132 = MEMORY[0x1E69E9C10];
        v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v133)
        {
          v134 = 3;
        }

        else
        {
          v134 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v5;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v134, &v211, &v220, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_219:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v136)
        {
          v137 = 3;
        }

        else
        {
          v137 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v137, &v211, &v220, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_223:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v138 = MEMORY[0x1E69E9C10];
        v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v139)
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v4;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v140, &v211, &v220, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_227:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v141 = MEMORY[0x1E69E9C10];
        v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v142)
        {
          v143 = 3;
        }

        else
        {
          v143 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v10;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v143, &v211, &v220, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_231:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v144 = MEMORY[0x1E69E9C10];
        v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v145)
        {
          v146 = 3;
        }

        else
        {
          v146 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v5;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v146, &v211, &v220, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_235:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v147 = MEMORY[0x1E69E9C10];
        v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v148)
        {
          v149 = 3;
        }

        else
        {
          v149 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v10;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v149, &v211, &v220, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_239:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v150 = MEMORY[0x1E69E9C10];
        v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v151)
        {
          v152 = 3;
        }

        else
        {
          v152 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v4;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v152, &v211, &v220, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_243:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v153 = MEMORY[0x1E69E9C10];
        v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v154)
        {
          v155 = 3;
        }

        else
        {
          v155 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v155, &v211, &v220, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_247:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v156 = MEMORY[0x1E69E9C10];
        v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v157)
        {
          v158 = 3;
        }

        else
        {
          v158 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v158, &v211, &v220, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_251:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v159 = MEMORY[0x1E69E9C10];
        v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v160)
        {
          v161 = 3;
        }

        else
        {
          v161 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v161, &v211, &v220, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_255:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v162 = MEMORY[0x1E69E9C10];
        v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v163)
        {
          v164 = 3;
        }

        else
        {
          v164 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v164, &v211, &v220, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_259:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v165 = MEMORY[0x1E69E9C10];
        v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v166)
        {
          v167 = 3;
        }

        else
        {
          v167 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v167, &v211, &v220, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_263:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v168 = MEMORY[0x1E69E9C10];
        v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v169)
        {
          v170 = 3;
        }

        else
        {
          v170 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v170, &v211, &v220, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_267:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v171 = MEMORY[0x1E69E9C10];
        v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v172)
        {
          v173 = 3;
        }

        else
        {
          v173 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v173, &v211, &v220, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_271:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v174 = MEMORY[0x1E69E9C10];
        v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v175)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v176, &v211, &v220, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_275:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v177 = MEMORY[0x1E69E9C10];
        v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v178)
        {
          v179 = 3;
        }

        else
        {
          v179 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v4;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v179, &v211, &v220, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_279:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v180 = MEMORY[0x1E69E9C10];
        v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v181)
        {
          v182 = 3;
        }

        else
        {
          v182 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v4;
        _os_log_send_and_compose_impl(v182, &v211, &v220, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_283:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v183 = MEMORY[0x1E69E9C10];
        v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v184)
        {
          v185 = 3;
        }

        else
        {
          v185 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v185, &v211, &v220, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_287:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v186 = MEMORY[0x1E69E9C10];
        v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v187)
        {
          v188 = 3;
        }

        else
        {
          v188 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v9;
        v218 = 2048;
        v219 = v10;
        _os_log_send_and_compose_impl(v188, &v211, &v220, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_291:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v189 = MEMORY[0x1E69E9C10];
        v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v190)
        {
          v191 = 3;
        }

        else
        {
          v191 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v191, &v211, &v220, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_295:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v192 = MEMORY[0x1E69E9C10];
        v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v193)
        {
          v194 = 3;
        }

        else
        {
          v194 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v194, &v211, &v220, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_299:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v195 = MEMORY[0x1E69E9C10];
        v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v196)
        {
          v197 = 3;
        }

        else
        {
          v197 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v197, &v211, &v220, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_303:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v198 = MEMORY[0x1E69E9C10];
        v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v199)
        {
          v200 = 3;
        }

        else
        {
          v200 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v8;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v200, &v211, &v220, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_307:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v201 = MEMORY[0x1E69E9C10];
        v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v202)
        {
          v203 = 3;
        }

        else
        {
          v203 = 2;
        }

        v215 = 476;
        v216 = 2048;
        v217 = v6;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v203, &v211, &v220, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
LABEL_311:
        v211 = 0;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v204 = MEMORY[0x1E69E9C10];
        v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v212 = 136315906;
        v213 = "operator[]";
        v214 = 1024;
        if (v205)
        {
          v206 = 3;
        }

        else
        {
          v206 = 2;
        }

        v215 = 468;
        v216 = 2048;
        v217 = v4;
        v218 = 2048;
        v219 = v7;
        _os_log_send_and_compose_impl(v206, &v211, &v220, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
        _os_crash_msg();
        __break(1u);
      }

      v4 = 0;
      v9 = 0;
      v6 = 16;
      v5 = 0x7FFFFFFFLL;
      while (1)
      {
        v63 = *(a4 + 10);
        v7 = *(v63 + 216);
        if (v7 <= v9)
        {
          break;
        }

        v64 = *(v63 + 224);
        v65 = *(a3 + 10);
        v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v64 + v4) >> 31) ^ (*(v64 + v4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v64 + v4) >> 31) ^ (*(v64 + v4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v65 + 232, (v64 + v4), v66 ^ (v66 >> 31), &v220);
        if (HIDWORD(v220) == 0x7FFFFFFF)
        {
          v67 = a2;
          v7 = *(a2 + 3);
          if (v7 <= v9)
          {
            goto LABEL_263;
          }

          v10 = *(a4 + 3);
          v8 = v9;
          if (v10 <= v9)
          {
            goto LABEL_267;
          }
        }

        else
        {
          v8 = *(*(v65 + 248) + 32 * HIDWORD(v220) + 24);
          v7 = *(a3 + 3);
          if (v7 <= v8)
          {
            goto LABEL_259;
          }

          v10 = *(a4 + 3);
          v67 = a3;
          if (v10 <= v9)
          {
            goto LABEL_271;
          }
        }

        result = *(*(v67 + 4) + 48 * v8 + 16);
        *(*(a4 + 4) + v6) = result;
        ++v9;
        v4 += 16;
        v6 += 48;
        v10 = 0xBF58476D1CE4E5B9;
        if (v14 == v9)
        {
          goto LABEL_123;
        }
      }

LABEL_187:
      v211 = 0;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v111 = MEMORY[0x1E69E9C10];
      v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v212 = 136315906;
      v213 = "operator[]";
      v214 = 1024;
      if (v112)
      {
        v113 = 3;
      }

      else
      {
        v113 = 2;
      }

      v215 = 476;
      v216 = 2048;
      v217 = v9;
      v218 = 2048;
      v219 = v7;
      _os_log_send_and_compose_impl(v113, &v211, &v220, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
      goto LABEL_191;
    }

    v4 = 0;
    v6 = 0;
    v9 = 0;
    v5 = 0x7FFFFFFFLL;
    while (1)
    {
      v58 = *(a4 + 10);
      v7 = *(v58 + 216);
      if (v7 <= v9)
      {
        break;
      }

      v59 = *(v58 + 224);
      v60 = *(a3 + 10);
      v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v59 + v6) >> 31) ^ (*(v59 + v6) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v59 + v6) >> 31) ^ (*(v59 + v6) >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v60 + 232, (v59 + v6), v61 ^ (v61 >> 31), &v220);
      if (HIDWORD(v220) == 0x7FFFFFFF)
      {
        v62 = a2;
        v7 = *(a2 + 3);
        if (v7 <= v9)
        {
          goto LABEL_247;
        }

        v10 = *(a4 + 3);
        v8 = v9;
        if (v10 <= v9)
        {
          goto LABEL_251;
        }
      }

      else
      {
        v8 = *(*(v60 + 248) + 32 * HIDWORD(v220) + 24);
        v7 = *(a3 + 3);
        if (v7 <= v8)
        {
          goto LABEL_243;
        }

        v10 = *(a4 + 3);
        v62 = a3;
        if (v10 <= v9)
        {
          goto LABEL_255;
        }
      }

      result = *(*(v62 + 4) + 48 * v8);
      *(*(a4 + 4) + v4) = result;
      ++v9;
      v6 += 16;
      v4 += 48;
      v10 = 0xBF58476D1CE4E5B9;
      if (v14 == v9)
      {
        goto LABEL_112;
      }
    }

LABEL_183:
    v211 = 0;
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v212 = 136315906;
    v213 = "operator[]";
    v214 = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    v215 = 476;
    v216 = 2048;
    v217 = v9;
    v218 = 2048;
    v219 = v7;
    _os_log_send_and_compose_impl(v110, &v211, &v220, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v212, 38, v207, v209);
    _os_crash_msg();
    __break(1u);
    goto LABEL_187;
  }

  if (v18)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    while (1)
    {
      v19 = *(a4 + 10);
      v6 = *(v19 + 216);
      if (v6 <= v8)
      {
        goto LABEL_159;
      }

      v20 = *(v19 + 224);
      v21 = *(a3 + 10);
      v4 = 0xBF58476D1CE4E5B9;
      v22 = ((0xBF58476D1CE4E5B9 * ((*(v20 + v10) >> 31) ^ (*(v20 + v10) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v20 + v10) >> 31) ^ (*(v20 + v10) >> 1))) >> 27)) * v16;
      v5 = v16;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v21 + 232, (v20 + v10), v22 ^ (v22 >> 31), &v220);
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        break;
      }

      v7 = *(a2 + 10);
      v23 = ((0xBF58476D1CE4E5B9 * ((*(v20 + v10) >> 31) ^ (*(v20 + v10) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v20 + v10) >> 31) ^ (*(v20 + v10) >> 1))) >> 27)) * v5;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 232, (v20 + v10), v23 ^ (v23 >> 31), &v220);
      v16 = v5;
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        v6 = *(*(v7 + 248) + 32 * HIDWORD(v220) + 24);
        v25 = a2;
        v7 = *(a2 + 3);
        if (v7 <= v6)
        {
          goto LABEL_291;
        }

        v7 = *(a4 + 3);
        if (v7 <= v8)
        {
          goto LABEL_295;
        }

LABEL_16:
        result = *(*(v25 + 4) + 48 * v6);
        *(*(a4 + 4) + v9) = result;
      }

      ++v8;
      v10 += 16;
      v9 += 48;
      if (v14 == v8)
      {
        goto LABEL_18;
      }
    }

    v6 = *(*(v21 + 248) + 32 * HIDWORD(v220) + 24);
    v7 = *(a3 + 3);
    if (v7 <= v6)
    {
      goto LABEL_195;
    }

    v7 = *(a4 + 3);
    v25 = a3;
    v16 = 0x94D049BB133111EBLL;
    if (v7 <= v8)
    {
      goto LABEL_199;
    }

    goto LABEL_16;
  }

LABEL_18:
  if (*(v209 + 113) == 1 && v14)
  {
    v9 = 0;
    v8 = 0;
    v10 = 16;
    while (1)
    {
      v26 = *(a4 + 10);
      v6 = *(v26 + 216);
      if (v6 <= v8)
      {
        goto LABEL_163;
      }

      v27 = *(v26 + 224);
      v28 = *(a3 + 10);
      v4 = 0xBF58476D1CE4E5B9;
      v29 = ((0xBF58476D1CE4E5B9 * ((*(v27 + v9) >> 31) ^ (*(v27 + v9) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v27 + v9) >> 31) ^ (*(v27 + v9) >> 1))) >> 27)) * v16;
      v5 = v16;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v28 + 232, (v27 + v9), v29 ^ (v29 >> 31), &v220);
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        break;
      }

      v7 = *(a2 + 10);
      v30 = ((0xBF58476D1CE4E5B9 * ((*(v27 + v9) >> 31) ^ (*(v27 + v9) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v27 + v9) >> 31) ^ (*(v27 + v9) >> 1))) >> 27)) * v5;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 232, (v27 + v9), v30 ^ (v30 >> 31), &v220);
      v16 = v5;
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        v6 = *(*(v7 + 248) + 32 * HIDWORD(v220) + 24);
        v31 = a2;
        v7 = *(a2 + 3);
        if (v7 <= v6)
        {
          goto LABEL_299;
        }

        v7 = *(a4 + 3);
        if (v7 <= v8)
        {
          goto LABEL_303;
        }

LABEL_29:
        result = *(*(v31 + 4) + 48 * v6 + 16);
        *(*(a4 + 4) + v10) = result;
      }

      ++v8;
      v9 += 16;
      v10 += 48;
      if (v14 == v8)
      {
        goto LABEL_31;
      }
    }

    v6 = *(*(v28 + 248) + 32 * HIDWORD(v220) + 24);
    v7 = *(a3 + 3);
    if (v7 <= v6)
    {
      goto LABEL_203;
    }

    v7 = *(a4 + 3);
    v31 = a3;
    v16 = 0x94D049BB133111EBLL;
    if (v7 <= v8)
    {
      goto LABEL_207;
    }

    goto LABEL_29;
  }

LABEL_31:
  if (*(v209 + 114) == 1 && v14)
  {
    v8 = 0;
    v4 = 0;
    v9 = 32;
    v10 = 0xBF58476D1CE4E5B9;
    while (1)
    {
      v32 = *(a4 + 10);
      v6 = *(v32 + 216);
      if (v6 <= v4)
      {
        goto LABEL_171;
      }

      v33 = *(v32 + 224);
      v34 = *(a3 + 10);
      v35 = ((0xBF58476D1CE4E5B9 * ((*(v33 + v8) >> 31) ^ (*(v33 + v8) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v33 + v8) >> 31) ^ (*(v33 + v8) >> 1))) >> 27)) * v16;
      v5 = v16;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v34 + 232, (v33 + v8), v35 ^ (v35 >> 31), &v220);
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        break;
      }

      v7 = *(a2 + 10);
      v36 = ((0xBF58476D1CE4E5B9 * ((*(v33 + v8) >> 31) ^ (*(v33 + v8) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v33 + v8) >> 31) ^ (*(v33 + v8) >> 1))) >> 27)) * v5;
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 232, (v33 + v8), v36 ^ (v36 >> 31), &v220);
      v16 = v5;
      if (HIDWORD(v220) != 0x7FFFFFFF)
      {
        v6 = *(*(v7 + 248) + 32 * HIDWORD(v220) + 24);
        v37 = a2;
        v7 = *(a2 + 3);
        if (v7 <= v6)
        {
          goto LABEL_307;
        }

        v7 = *(a4 + 3);
        if (v7 <= v4)
        {
          goto LABEL_311;
        }

LABEL_42:
        result = *(*(v37 + 4) + 48 * v6 + 32);
        *(*(a4 + 4) + v9) = result;
      }

      ++v4;
      v8 += 16;
      v9 += 48;
      if (v14 == v4)
      {
        return result;
      }
    }

    v6 = *(*(v34 + 248) + 32 * HIDWORD(v220) + 24);
    v7 = *(a3 + 3);
    if (v7 <= v6)
    {
      goto LABEL_219;
    }

    v7 = *(a4 + 3);
    v37 = a3;
    v16 = 0x94D049BB133111EBLL;
    if (v7 <= v4)
    {
      goto LABEL_223;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t *re::SampledAnimation<float>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEB80;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<float>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEB80;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<double>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEC18;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<double>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEC18;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector2<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAECB0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector2<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAECB0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector3<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAED48;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector3<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAED48;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Vector4<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEDE0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Vector4<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEDE0;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::Quaternion<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEE78;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::Quaternion<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEE78;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::SampledAnimation<re::GenericSRT<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEF10;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::GenericSRT<float>>::~SampledAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CAEF10;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void *re::SampledAnimation<re::SkeletalPose>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAEFA8;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::SkeletalPose>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAEFA8;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void re::SkeletalPoseSampledAnimation::~SkeletalPoseSampledAnimation(re::SkeletalPoseSampledAnimation *this)
{
  *this = &unk_1F5CAEFA8;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAEFA8;
  v2 = (this + 40);
  re::FixedArray<re::SkeletalPose>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void *re::SampledAnimation<re::BlendShapeWeights>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAF040;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::SampledAnimation<re::BlendShapeWeights>::~SampledAnimation(void *a1)
{
  *a1 = &unk_1F5CAF040;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 11);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::BlendShapeWeights>::animationValueType()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0, v3, v4, v5, v6, v7);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 109);
}

float re::AnimationImpl<re::BlendShapeWeights>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::BlendShapeWeights>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 184, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACEF0;
  *(v2 + 112) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  return result;
}