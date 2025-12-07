void re::Vector3FAnimationBlendTree::~Vector3FAnimationBlendTree(re::Vector3FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector3<float>>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector3<float>>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
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

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(re::Vector3FAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector3<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2BA8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::Vector4FAnimationBlendTree::~Vector4FAnimationBlendTree(re::Vector4FAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Vector4<float>>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Vector4<float>>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
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

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(re::Vector4FAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Vector4<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2D08;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "MultiplyQuaternion";
    }

    else
    {
      v14 = "Slerp";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::Quaternion<float>>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

  result = v90;
  if (v90)
  {
    if (v91)
    {
      return (*(*v90 + 40))();
    }
  }

  return result;
}

void re::QuaternionFAnimationBlendTree::~QuaternionFAnimationBlendTree(re::QuaternionFAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::Quaternion<float>>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::Quaternion<float>>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
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

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(re::QuaternionFAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::Quaternion<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2E68;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "AdditiveBlendSRT";
    }

    else
    {
      v14 = "LerpSRT";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::GenericSRT<float>>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

  result = v90;
  if (v90)
  {
    if (v91)
    {
      return (*(*v90 + 40))();
    }
  }

  return result;
}

void re::SRTAnimationBlendTree::~SRTAnimationBlendTree(re::SRTAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::GenericSRT<float>>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::GenericSRT<float>>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
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

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(re::SRTAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::GenericSRT<float>>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC2FC8;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

uint64_t re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(_anonymous_namespace_ *a1, const char **a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v6 = __str;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  if (v7 <= a4)
  {
    goto LABEL_141;
  }

  v9 = a2[50];
  v7 = *(v9 + 2);
  if (v7 <= a4)
  {
LABEL_145:
    v90 = 0;
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 3) = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    *(v6 + 4) = "operator[]";
    v97 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v6 + 14) = 797;
    v99 = 2048;
    *(v6 + 20) = v5;
    v101 = 2048;
    *(v6 + 30) = v7;
    _os_log_send_and_compose_impl(v66, &v90, &v103, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v67, v69);
    _os_crash_msg();
    __break(1u);
  }

  v68 = a1;
  v6 = a2[5];
  v12 = *(v9 + 4) + 88 * a4;
  v13 = *(v12 + 8);
  if (re::AnimationBlendTreeNodeDescription::isBlend(v12))
  {
    if (re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
    {
      v14 = "BlendAdditiveRigHierarchy";
    }

    else
    {
      v14 = "BlendRigHierarchy";
    }

    re::RigGraphDefinitionBuilder::addNode((a2 + 39), v14, *(v12 + 8), v87);
    if ((v87[0] & 1) == 0)
    {
      v15 = v88;
      if (v88)
      {
        v16 = &v88;
        if ((v89 & 1) == 0)
        {
LABEL_12:
          *v16 = 0u;
          *(v16 + 1) = 0u;
          goto LABEL_19;
        }

        v17 = v87;
LABEL_11:
        (*(*v15 + 40))(v15, *(v17 + 5));
        goto LABEL_12;
      }
    }
  }

  else if (!re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kClip) && !re::StringID::operator==((v12 + 16), re::AnimationBlendTreeNodeDescription::kInput))
  {
    re::RigGraphDefinitionBuilder::addNode((a2 + 39), *(v12 + 24), *(v12 + 8), v84);
    if ((v84[0] & 1) == 0)
    {
      v15 = v85;
      if (v85)
      {
        v16 = &v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_12;
        }

        v17 = v84;
        goto LABEL_11;
      }
    }
  }

LABEL_19:
  v18 = &v6[80 * v5];
  if (*(v18 + 3))
  {
    v19 = 0;
    v71 = a5;
    v70 = v5;
    while (1)
    {
      re::AnimationBlendTreeBuilder<re::SkeletalPose>::buildRig(v81, a2, a3, *(*(v18 + 5) + 8 * v19), a5);
      if ((v81[0] & 1) == 0 && v82)
      {
        if (BYTE8(v82))
        {
          (*(*v82 + 40))();
        }

        v83 = 0u;
        v82 = 0u;
      }

      v20 = *(v18 + 3);
      if (v20 <= v19)
      {
        break;
      }

      v20 = *(*(v18 + 5) + 8 * v19);
      v6 = a2[3];
      if (v6 <= v20)
      {
        goto LABEL_117;
      }

      v21 = a2[50];
      v6 = *(v21 + 2);
      if (v6 <= v20)
      {
        goto LABEL_121;
      }

      if (v6 <= v5)
      {
        goto LABEL_125;
      }

      v22 = &a2[5][80 * v20];
      v23 = *(v21 + 4);
      v6 = (v23 + 88 * v20);
      v24 = *(v22 + 9);
      v25 = *(v22 + 7);
      if (re::AnimationBlendTreeNodeDescription::isBlend((v23 + 88 * v5)))
      {
        if (v19)
        {
          v26 = a2[50];
          v7 = *(v26 + 2);
          if (v7 <= v5)
          {
            goto LABEL_137;
          }

          v25 = "input2";
          if (!re::StringID::operator==((*(v26 + 4) + 88 * v5 + 16), re::AnimationBlendTreeNodeDescription::kBlendAdditive))
          {
            snprintf(__str, 0x18uLL, "%f", *(v6 + 20));
            if (v91)
            {
              v27 = v93;
            }

            else
            {
              v27 = v92;
            }

            re::DynamicString::operator+(&v103, &v90, "input3");
            if (v103.var1)
            {
              v28 = v104;
            }

            else
            {
              v28 = &v103.var1 + 1;
            }

            re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v27, "input3", v28, __str, 1, v78);
            if ((v78[0] & 1) == 0 && v79)
            {
              if (BYTE8(v79))
              {
                (*(*v79 + 40))();
              }

              v80 = 0u;
              v79 = 0u;
            }

            if (*&v103.var0 && (v103.var1 & 1) != 0)
            {
              (*(**&v103.var0 + 40))();
            }

            v5 = v70;
            if (*(v6 + 8) <= 1uLL && (v29 = *(v6 + 9)) != 0 && !*v29)
            {
              re::AnimationBlendTreeBuilder<float>::weightPathFromName(&v103, *(v6 + 1));
            }

            else
            {
              re::StringID::StringID(&v103, v6 + 4);
            }

            v30 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
            if (*&v103.var0)
            {
              if (*&v103.var0)
              {
              }
            }

            v25 = "input2";
          }
        }

        else
        {
          v25 = "input1";
        }
      }

      if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kClip))
      {
        if (v91)
        {
          v31 = v93;
        }

        else
        {
          v31 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v32 = v104;
        }

        else
        {
          v32 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v31, v25, v32, "", 1, v75);
        a5 = v71;
        if ((v75[0] & 1) == 0 && v76)
        {
          if (BYTE8(v76))
          {
            (*(*v76 + 40))();
          }

          v77 = 0u;
          v76 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        *&v103.var0 = 0;
        v103.var1 = "";
        v33 = re::DynamicArray<re::StringID>::add((a3 + 52), &v103);
        if (*&v103.var0)
        {
          if (*&v103.var0)
          {
          }
        }

        v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v6 + 4) >> 31) ^ (*(v6 + 4) >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a2 + 51), v6 + 4, v34 ^ (v34 >> 31), &v103);
        v7 = *v71;
        v6 = a3[45];
        if (v6 <= *v71)
        {
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v5 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v98 = 468;
          v99 = 2048;
          v100 = v7;
          v101 = 2048;
          v102 = v6;
          _os_log_send_and_compose_impl(v57, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_137:
          v94 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v103 = 0;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          v96 = "operator[]";
          v97 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v98 = 797;
          v99 = 2048;
          v100 = v5;
          v101 = 2048;
          v102 = v7;
          _os_log_send_and_compose_impl(v60, &v94, &v103, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
          _os_crash_msg();
          __break(1u);
LABEL_141:
          v90 = 0;
          *(v6 + 6) = 0u;
          *(v6 + 7) = 0u;
          *(v6 + 4) = 0u;
          *(v6 + 5) = 0u;
          *(v6 + 3) = 0u;
          v61 = MEMORY[0x1E69E9C10];
          v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *__str = 136315906;
          *(v6 + 4) = "operator[]";
          v97 = 1024;
          if (v62)
          {
            v63 = 3;
          }

          else
          {
            v63 = 2;
          }

          *(v6 + 14) = 789;
          v99 = 2048;
          *(v6 + 20) = v5;
          v101 = 2048;
          *(v6 + 30) = v7;
          _os_log_send_and_compose_impl(v63, &v90, &v103, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v6, 38, v67, v69);
          _os_crash_msg();
          __break(1u);
          goto LABEL_145;
        }

        *(a3[46] + 8 * v7) = *&a2[53][32 * HIDWORD(v103.var1) + 24];
        ++*v71;
      }

      else if (re::StringID::operator==(v6 + 2, re::AnimationBlendTreeNodeDescription::kInput))
      {
        if (v91)
        {
          v35 = v93;
        }

        else
        {
          v35 = v92;
        }

        re::DynamicString::operator+(&v103, &v90, v25);
        if (v103.var1)
        {
          v36 = v104;
        }

        else
        {
          v36 = &v103.var1 + 1;
        }

        re::RigGraphDefinitionBuilder::promoteParameter(a2 + 39, v35, v25, v36, *(v6 + 7), 1, v72);
        a5 = v71;
        if ((v72[0] & 1) == 0 && v73)
        {
          if (BYTE8(v73))
          {
            (*(*v73 + 40))();
          }

          v74 = 0u;
          v73 = 0u;
        }

        if (*&v103.var0 && (v103.var1 & 1) != 0)
        {
          (*(**&v103.var0 + 40))();
        }

        re::DynamicArray<re::StringID>::add((a3 + 52), v6 + 2);
      }

      else
      {
        if (re::AnimationBlendTreeNodeDescription::isBlend(v6) && *(v22 + 8) <= 1uLL)
        {
          v37 = *(v22 + 9);
          if (v37)
          {
            if (!*v37)
            {
              v24 = "output";
            }
          }
        }

        if (v91)
        {
          v38 = v93;
        }

        else
        {
          v38 = v92;
        }

        re::RigGraphDefinitionBuilder::addConnection((a2 + 39), *(v6 + 1), v24, v38, v25, 0, 0, &v103);
        if ((*&v103.var0 & 1) == 0)
        {
          v5 = *re::animationLogObjects(v39);
          v41 = __str;
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          goto LABEL_129;
        }

        a5 = v71;
      }

      if (*(v18 + 3) <= ++v19)
      {
        goto LABEL_106;
      }
    }

    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v19;
    v101 = 2048;
    v102 = v20;
    _os_log_send_and_compose_impl(v47, &v94, &v103, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v98 = 789;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v50, &v94, &v103, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v5 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v20;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v52, &v94, &v103, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v94 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0;
    v41 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *__str = 136315906;
    v96 = "operator[]";
    v97 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v98 = 797;
    v99 = 2048;
    v100 = v5;
    v101 = 2048;
    v102 = v6;
    _os_log_send_and_compose_impl(v54, &v94, &v103, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v68, v70);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    if (v105)
    {
      v55 = *(&v105 + 1);
    }

    else
    {
      v55 = &v105 + 1;
    }

    *__str = 136315138;
    *(v41 + 4) = v55;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Add connection failed - %s", __str, 0xCu);
LABEL_112:
    v42 = *(v41 + 72);
    v43 = *(&v105 + 1);
    v44 = v106;
    *v68 = 0;
    *(v68 + 8) = *(v41 + 56);
    *(v68 + 24) = v42;
    *(v68 + 5) = v43;
    *(v68 + 6) = v44;
  }

  else
  {
LABEL_106:
    *v68 = 1;
  }

  result = v90;
  if (v90)
  {
    if (v91)
    {
      return (*(*v90 + 40))();
    }
  }

  return result;
}

void re::SkeletalPoseAnimationBlendTree::~SkeletalPoseAnimationBlendTree(re::SkeletalPoseAnimationBlendTree *this)
{
  re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationBlendTree<re::SkeletalPose>::child(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 312);
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

    v12 = 476;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 320) + 8 * a2);
}

void re::AnimationBlendTree<re::SkeletalPose>::totalDuration(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 312);
  if (v1)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = *(*(a1 + 320) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 40))(v5);
        v1 = *(a1 + 312);
        if (v6 > v4)
        {
          if (v1 <= v3)
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

            v15 = 476;
            v16 = 2048;
            v17 = v3;
            v18 = 2048;
            v19 = v1;
            _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
            _os_crash_msg();
            __break(1u);
          }

          v7 = *(*(a1 + 320) + 8 * v3);
          v4 = (*(*v7 + 40))(v7);
          v1 = *(a1 + 312);
        }
      }

      ++v3;
    }

    while (v3 < v1);
  }
}

void re::AnimationBlendTree<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires AnimationBlendTreeInstance", "!Unreachable code", "evaluateCore", 110);
  _os_crash("assertion failure: (!Unreachable code) Requires AnimationBlendTreeInstance");
  __break(1u);
}

void re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(re::SkeletalPoseAnimationBlendTree *a1)
{
  re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AnimationBlendTree<re::SkeletalPose>::~AnimationBlendTree(uint64_t *a1)
{
  *a1 = &unk_1F5CC3128;
  v2 = (a1 + 5);
  re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit((a1 + 73));
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 68));
  re::DynamicArray<re::RigGraphConnection>::deinit(a1 + 62);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit((a1 + 57));
  re::DynamicArray<re::StringID>::deinit((a1 + 52));
  re::DynamicArray<re::StringID>::deinit((a1 + 47));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 44);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 41);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit((a1 + 30));
  re::DynamicArray<re::StringID>::deinit((a1 + 25));
  re::DynamicArray<re::RigGraphNodeChild>::deinit((a1 + 20));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 15));
  re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((a1 + 10));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::BlendShapeWeightsAnimation::~BlendShapeWeightsAnimation(re::BlendShapeWeightsAnimation *this)
{
  *this = &unk_1F5CB18D8;
  if (*(this + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB18D8;
  if (*(this + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((this + 96));
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::AnimationImpl<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

ArcSharedObject *re::make::shared::object<re::BlendShapeWeightsDefinition,re::DynamicArray<re::StringID> const&>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 104, 8);
  v6 = *(a2 + 16);
  v8[0] = *(a2 + 32);
  v8[1] = v6;
  *a1 = v5;
  return result;
}

void re::BlendShapeWeightsSampledAnimation::~BlendShapeWeightsSampledAnimation(re::BlendShapeWeightsSampledAnimation *this)
{
  *this = &unk_1F5CAF040;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CAF040;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 11);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

void re::FixedArray<re::BlendShapeWeights>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

void re::BlendShapeWeightsAnimationClip::~BlendShapeWeightsAnimationClip(re::BlendShapeWeightsAnimationClip *this)
{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);
}

{
  *this = &unk_1F5CAD3A8;
  v1 = (this + 24);
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

double re::AnimationClip<re::BlendShapeWeights>::totalDuration(uint64_t a1)
{
  if (dyld_program_sdk_at_least() && *(a1 + 164))
  {
    v2 = INFINITY;
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0.0;
      if (*(a1 + 88) == 1)
      {
        v4 = *(a1 + 96);
      }

      (*(*v3 + 40))(v3);
      if (*(a1 + 104) == 1)
      {
        v5 = *(a1 + 112);
      }

      v2 = v5 - v4;
    }

    else
    {
      v2 = 0.0;
    }
  }

  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
  }

  return *(a1 + 136) + v2 / fabsf(*(a1 + 160));
}

float re::AnimationClip<re::BlendShapeWeights>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = 0.0;
    if (*(a1 + 88) == 1)
    {
      v5 = *(a1 + 96);
    }

    (*(*v4 + 40))(v4);
    if (*(a1 + 104) == 1)
    {
      v7 = *(a1 + 112);
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  if (*(a1 + 144) != 1 || (v8 = *(a1 + 152), v8 == 0.0))
  {
    if (dyld_program_sdk_at_least() && *(a1 + 164))
    {
      v8 = INFINITY;
    }

    else
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = 0.0;
        if (*(a1 + 88) == 1)
        {
          v10 = *(a1 + 96);
        }

        (*(*v9 + 40))(v9);
        if (*(a1 + 104) == 1)
        {
          v11 = *(a1 + 112);
        }

        v8 = v11 - v10;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  v12 = v8;
  v13 = *(a1 + 136);
  *a2 = v13;
  *(a2 + 4) = v12;
  v14 = *(a1 + 160);
  if (*(a1 + 128))
  {
    v14 = -v14;
  }

  v15 = v5;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15;
  result = v7;
  v17 = *(a1 + 120);
  *(a2 + 16) = result;
  *(a2 + 20) = v17;
  *(a2 + 24) = *(a1 + 164);
  *(a2 + 25) = *(a1 + 16);
  return result;
}

uint64_t re::AnimationClip<re::BlendShapeWeights>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
{
  if ((*(*a1 + 24))(a1, a2, a3) != 1)
  {
    return a1;
  }

  v9 = re::internal::TimelineTree::source(a4, a5 + 1);
  if (!(*(*v9 + 88))(v9))
  {
    return a1;
  }

  v10 = (*(*a2 + 32))(a2, 168, 8);
  *v10 = &unk_1F5CAD3A8;
  v11 = *(a1 + 16);
  *(v10 + 8) = *(a1 + 8);
  *(v10 + 16) = v11;
  re::StringID::StringID((v10 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v10 + 40), (a1 + 40));
  *(v10 + 72) = *(a1 + 72);
  *v10 = &unk_1F5CC33E8;
  *(v10 + 80) = *(a1 + 80);
  v12 = *(a1 + 88);
  *(v10 + 88) = v12;
  if (v12 == 1)
  {
    *(v10 + 96) = *(a1 + 96);
  }

  v13 = *(a1 + 104);
  *(v10 + 104) = v13;
  if (v13 == 1)
  {
    *(v10 + 112) = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  *(v10 + 136) = *(a1 + 136);
  *(v10 + 120) = v14;
  v15 = *(a1 + 144);
  *(v10 + 144) = v15;
  if (v15 == 1)
  {
    *(v10 + 152) = *(a1 + 152);
  }

  v16 = *(a1 + 160);
  *(v10 + 164) = *(a1 + 164);
  *(v10 + 160) = v16;
  *(v10 + 80) = re::internal::TimelineTree::source(a4, a5 + 1);
  *(v10 + 165) = 1;
  return v10;
}

uint64_t *re::AnimationClip<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v49[0] = a2;
  v49[1] = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    a1 = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v23);
    __break(1u);
LABEL_10:
    v13 = a1;
    memset(v48, 0, sizeof(v48));
    memset(v47, 0, sizeof(v47));
    re::BlendShapeWeights::init(v48, v7 + 3);
    re::BlendShapeWeights::init(v47, v7 + 3);
    if (v35[0] == 1 && v36 == 1)
    {
      v16 = *(v13 + 80);
      v15.n128_u64[0] = 0;
      v17 = 0;
      if (v16)
      {
        if (*(v13 + 88) == 1)
        {
          v17 = *(v13 + 96);
        }

        (*(*v16 + 40))(v16, v15);
        if (*(v13 + 104) == 1)
        {
          v15.n128_u64[0] = *(v13 + 112);
        }
      }

      v37 = 0;
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v46 = 2;
      v35[0] = 3;
      v38 = 1;
      v39 = v17;
      v45 = 0;
      v41 = 1065353216;
      v25 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v34 = 2;
      v24[0] = 3;
      v26 = 1;
      v27 = v15.n128_u64[0];
      v33 = 0;
      v29 = 1065353216;
      if (*(v13 + 128))
      {
        v18 = v47;
      }

      else
      {
        v18 = v48;
      }

      if (*(v13 + 128))
      {
        v19 = v48;
      }

      else
      {
        v19 = v47;
      }

      (*(*v8 + 112))(v8, v35, 1, v7, v6, v18);
      (*(*v8 + 112))(v8, v24, 1, v7, v6, v19);
      re::AnimationValueTraits<re::BlendShapeWeights>::invert(v48, v48);
      *&v20 = re::AnimationValueTraits<re::BlendShapeWeights>::combine(v48, v47, v48);
      re::internal::assertLog(4, v21, v20, "assertion failure: '%s' (%s:line %i) Not yet implemented.", "!Unreachable code", "repeat", 160);
      _os_crash("assertion failure: (!Unreachable code) Not yet implemented.");
      __break(1u);
    }

    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = *(a1 + 80);
  if (v8)
  {
    v6 = a5;
    if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v10 = re::Slice<re::AnimationClock>::range(v49, 1uLL, a3);
      return (*(*v8 + 112))(v8, v10, v11, v7, v6, a6);
    }

    goto LABEL_10;
  }

  return re::AnimationValueTraits<re::BlendShapeWeights>::copy(a4, a6);
}

void *re::AnimationClip<re::BlendShapeWeights>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::AnimationClip<re::BlendShapeWeights>::~AnimationClip(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::BlendShapeWeightsKeyframeAnimation::~BlendShapeWeightsKeyframeAnimation(re::BlendShapeWeightsKeyframeAnimation *this)
{
  *this = &unk_1F5CB0FC0;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB0FC0;
  v2 = (this + 40);
  re::FixedArray<re::BlendShapeWeights>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::MaterialAsset::assetType(re::MaterialAsset *this)
{
  {
    re::MaterialAsset::assetType(void)::type = "Material";
    qword_1EE1C7178 = 0;
    re::AssetType::generateCompiledExtension(&re::MaterialAsset::assetType(void)::type);
  }

  return &re::MaterialAsset::assetType(void)::type;
}

uint64_t re::AssetHandle::loadedAsset<re::MaterialAsset>(re::MaterialAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::MaterialAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::MaterialAsset::assetType(void)::type, 1);
}

void re::MaterialAsset::setInstance(uint64_t a1, _anonymous_namespace_ *a2, uint64_t *a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *(a1 + 1776);
    if (v5)
    {
      v7 = re::globalAllocators((v5 + 8))[2];
      v8[0] = &unk_1F5CC37C0;
      v8[1] = v5;
      v8[3] = v7;
      v8[4] = v8;
      re::RenderManager::addDelayedDestructorToRenderThread(a2, v8);
      re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v8);
    }
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1776), *a3);
}

uint64_t re::MaterialAsset::getOriginalConstantParameterType(re::MaterialAsset *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v7);
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t *re::MaterialAsset::tryGetOriginalColorGamut3FParameterValue@<X0>(re::MaterialAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v12);
  if (result && *(result + 20) == 20)
  {
    v9 = *result;
    v10 = *(result + 2);
    v11 = *(result + 16);
    *a3 = 1;
    *(a3 + 4) = v9;
    *(a3 + 16) = v11;
    *(a3 + 12) = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialAsset::tryGetOriginalColorGamut4FParameterValue@<X0>(re::MaterialAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 1792, &v9);
  if (result && *(result + 20) == 21)
  {
    *a3 = 1;
    *(a3 + 4) = *result;
    *(a3 + 20) = *(result + 16);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL re::MaterialAsset::isColorTextureParameter(re::MaterialAsset *this, const re::StringID *a2)
{
  if (re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureBaseColor) || re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureBaseColorDetail) || re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureSheenColor))
  {
    return 1;
  }

  return re::StringID::operator==(this, re::MaterialAsset::isColorTextureParameter(re::StringID const&)::textureEmissive);
}

void re::MaterialAsset::makeMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, const char *a4, uint64_t a5)
{
  v12[0] = 0;
  v12[2] = 0;
  v12[4] = 0;
  v12[6] = 0;
  v12[8] = 0;
  v12[10] = 0;
  v12[12] = 0;
  v12[14] = 0;
  v12[16] = 0;
  v12[18] = 0;
  re::AssetHandle::AssetHandle(v11, a3);
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  re::MaterialAsset::makeMaterialMemoryAssetWithFunctionConstants(a1, a2, v11, v9, v12, a4, a5);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::AssetHandle::~AssetHandle(v11);
}

uint64_t re::MaterialAsset::makeMaterialMemoryAssetWithFunctionConstants(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6, uint64_t a7)
{
  v13 = re::AssetHandle::AssetHandle(v17, a3);
  MaterialAssetWithFunctionConstants = re::MaterialAsset::makeMaterialAssetWithFunctionConstants(v13, a2, v17, a4, a5, a6);
  re::AssetHandle::~AssetHandle(v17);
  if (a6 && *a6)
  {
    return re::AssetService::createNamedMemoryAsset<re::MaterialAsset>(a1, MaterialAssetWithFunctionConstants, a6, a7);
  }

  re::MaterialAsset::assetType(v15);
  return (*(*a1 + 424))(a1, MaterialAssetWithFunctionConstants, &re::MaterialAsset::assetType(void)::type, 0, a7, 0);
}

void re::MaterialAsset::makeMutableMaterialMemoryAsset(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, const char *a4, uint64_t a5)
{
  v12[0] = 0;
  v12[2] = 0;
  v12[4] = 0;
  v12[6] = 0;
  v12[8] = 0;
  v12[10] = 0;
  v12[12] = 0;
  v12[14] = 0;
  v12[16] = 0;
  v12[18] = 0;
  re::AssetHandle::AssetHandle(v11, a3);
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  re::MaterialAsset::makeMutableMaterialMemoryAssetWithFunctionConstants(a1, a2, v11, v9, v12, a4, a5);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::AssetHandle::~AssetHandle(v11);
}

uint64_t re::MaterialAsset::makeMutableMaterialMemoryAssetWithFunctionConstants(re::MaterialAsset *a1, _anonymous_namespace_ *a2, re::AssetHandle *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6, uint64_t a7)
{
  v13 = re::AssetHandle::AssetHandle(v17, a3);
  MaterialAssetWithFunctionConstants = re::MaterialAsset::makeMaterialAssetWithFunctionConstants(v13, a2, v17, a4, a5, a6);
  re::AssetHandle::~AssetHandle(v17);
  if (a6 && *a6)
  {
    return re::AssetService::createMutableNamedMemoryAsset<re::MaterialAsset>(a1, MaterialAssetWithFunctionConstants, a6, a7);
  }

  re::MaterialAsset::assetType(v15);
  return (*(*a1 + 424))(a1, MaterialAssetWithFunctionConstants, &re::MaterialAsset::assetType(void)::type, 1, a7, 0);
}

uint64_t *re::MaterialAsset::makeMaterialAssetWithFunctionConstants(re *a1, _anonymous_namespace_ *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, const char *a6)
{
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 1992, 8);
  bzero(v12, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v12);
  v79[0] = re::AssetHandle::operator=((v12 + 5), a3);
  re::DynamicArray<re::TransitionCondition *>::add((v12 + 241), v79);
  v13 = *(re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(a3) + 744);
  v78 = v13;
  if (v13)
  {
    v14 = (v13 + 8);
  }

  bzero(v47, 0x210uLL);
  v47[16] = &unk_1F5CC38C8;
  memset(&v47[17], 0, 24);
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v48 = 0;
  v59 = 0;
  v66 = 1;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  v28[0] = *a5;
  if (v28[0] == 1)
  {
    v28[1] = a5[1];
  }

  v29 = a5[2];
  if (v29 == 1)
  {
    v30 = a5[3];
  }

  v31 = a5[4];
  if (v31 == 1)
  {
    v32 = a5[5];
  }

  v33 = a5[6];
  if (v33 == 1)
  {
    v34 = a5[7];
  }

  v35 = a5[8];
  if (v35 == 1)
  {
    v36 = a5[9];
  }

  v37 = a5[10];
  if (v37 == 1)
  {
    v38 = a5[11];
  }

  v39 = a5[12];
  if (v39 == 1)
  {
    v40 = a5[13];
  }

  v41 = a5[14];
  if (v41 == 1)
  {
    v42 = a5[15];
  }

  v43 = a5[16];
  if (v43 == 1)
  {
    v44 = a5[17];
  }

  v45 = a5[18];
  if (v45 == 1)
  {
    v46 = a5[19];
  }

  memset(v27, 0, sizeof(v27));
  if (!a6)
  {
    a6 = "";
  }

  re::MaterialBuilder::MaterialBuilder(v79, &v78, v47, a4, v28, v27, &v25, 0, 0);
  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  re::FixedArray<re::LinkedFunction>::deinit(&v27[3]);
  re::FixedArray<re::LinkedFunction>::deinit(v27);
  re::ShaderParameterTable::~ShaderParameterTable(v47);
  if (v13)
  {
  }

  v80 = 7;
  v16 = *(a2 + 3);
  re::MaterialBuilder::MaterialBuilder(v24, v79);
  re::MaterialManager::createMaterial(v16, v24, v27);
  re::MaterialBuilder::~MaterialBuilder(v24);
  v47[0] = a2;
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(v47, &v25);
  v17 = v27[0];
  v23 = v27[0];
  if (v27[0])
  {
    v18 = (v27[0] + 8);
    re::MaterialAsset::setInstance(v12, a2, &v23);
  }

  else
  {
    re::MaterialAsset::setInstance(v12, a2, &v23);
  }

  v19 = v25;
  if (v25)
  {
    v20 = v25 + 8;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v12 + 223, v19);
  }

  else
  {
    v21 = v12[223];
    if (v21)
    {

      v12[223] = 0;
    }
  }

  if (v25)
  {
  }

  if (v27[0])
  {
  }

  re::MaterialBuilder::~MaterialBuilder(v79);
  return v12;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(re::MaterialDefinitionAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::MaterialDefinitionAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

uint64_t re::AssetService::createNamedMemoryAsset<re::MaterialAsset>(re::MaterialAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::MaterialAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, &re::MaterialAsset::assetType(void)::type, &v10, 0, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetService::createMutableNamedMemoryAsset<re::MaterialAsset>(re::MaterialAsset *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = re::MaterialAsset::assetType(a1);
  (*(*a1 + 432))(a1, a2, &re::MaterialAsset::assetType(void)::type, &v10, 1, a4, 0);
  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::MaterialAssetLoader::preloadAssets(re::MaterialAssetLoader *this)
{
  (*(**(this + 2) + 8))(v20);
  v2 = *(this + 2);
  *(this + 2) = *v20;
  *v20 = v2;
  v3 = *(this + 6);
  *(this + 6) = *&v20[16];
  *&v20[16] = v3;
  re::AssetHandle::~AssetHandle(v20);
  (*(**(this + 2) + 8))(v20);
  v4 = *(this + 56);
  *(this + 56) = *v20;
  *v20 = v4;
  v5 = *(this + 9);
  *(this + 9) = *&v20[16];
  *&v20[16] = v5;
  re::AssetHandle::~AssetHandle(v20);
  if ((*(**(this + 2) + 360))())
  {
    re::AssetHandle::loadAsync((this + 32));
    re::AssetHandle::loadAsync((this + 56));
  }

  re::Bundle::application(v19);
  re::Bundle::ID(v20, v19);

  if (v20[8])
  {
    v8 = *&v20[16];
    if (strcmp(*&v20[16], "com.disney.whatif"))
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (*&v20[9] == 0x6E7369642E6D6F63 && *&v20[17] == 0x69746168772E7965 && v21 == 102)
  {
    goto LABEL_14;
  }

  v8 = &v20[9];
LABEL_13:
  v9 = strcmp(v8, "com.lucasfilm.phantom") != 0;
LABEL_15:
  v10 = *(this + 2);
  if (v10 && *(this + 3) != 0 && !v9)
  {
    (*(*v10 + 8))(v19);
    v11 = *(this + 2);
    v12 = *(this + 3);
    re::AssetHandle::AssetHandle(v16, v19);
    re::MaterialAsset::makeMaterialMemoryAsset(v11, v12, v16, 0, 0);
    v13 = *(this + 5);
    *(this + 5) = v17;
    v17 = v13;
    v14 = *(this + 12);
    *(this + 12) = v18;
    v18 = v14;
    re::AssetHandle::~AssetHandle(&v17);
    re::AssetHandle::~AssetHandle(v16);
    re::AssetHandle::~AssetHandle(v19);
  }

  re::ShaderGraphLoadHelper::init(this + 128, *(this + 1));
  *(this + 80) = re::ServiceLocator::serviceOrNull<re::AssetService>(*(this + 1));
  result = *v20;
  if (*v20)
  {
    if (v20[8])
    {
      return (*(**v20 + 40))();
    }
  }

  return result;
}

uint64_t re::MaterialAssetLoader::introspectionType(re::MaterialAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialAsset>(BOOL)::info = re::internal::getOrCreateInfo("MaterialAsset", re::allocInfo_MaterialAsset, re::initInfo_MaterialAsset, &re::internal::introspectionInfoStorage<re::MaterialAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[229];
}

uint64_t re::MaterialAssetLoader::allocateSampleAsset(re::MaterialAssetLoader *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 1992, 8);
  bzero(v3, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v3);
  (*(**(this + 2) + 8))(&v7);
  v4 = *(v3 + 40);
  *(v3 + 40) = v7;
  v7 = v4;
  v5 = *(v3 + 56);
  *(v3 + 56) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  *&v7 = v3 + 40;
  re::DynamicArray<re::TransitionCondition *>::add((v3 + 1928), &v7);
  return v3;
}

uint64_t re::MaterialAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a4, "client");
    if (v5)
    {
      if (*(v5 + 32) == 2)
      {
        *(a2 + 1984) = *v5;
      }
    }
  }

  return 1;
}

uint64_t re::MaterialAssetLoader::registerAsset(re::MaterialAssetLoader *this, uint64_t a2, const re::ExistingAssetInformation *a3)
{
  v3 = *(this + 3);
  if (!v3 || !*(v3 + 208) || ((*(**(this + 2) + 416))(*(this + 2)) & 1) != 0)
  {
    return 0;
  }

  if (*(a3 + 10) == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 10);
  }

  re::AssetManager::fromPeerID(*(this + 2), v9, &v33);
  v10 = *(this + 2);
  if (*(a3 + 10) == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a3 + 10);
  }

  os_unfair_lock_lock((v10 + 128));
  re::AssetManager::lookupExistingAsset_assetTablesLocked(&v30, v10, v11);
  os_unfair_lock_unlock((v10 + 128));
  v25[0] = 0;
  if ((v30 & 1) == 0)
  {
    v13 = 0;
    if (v33)
    {
      v14 = v34;
    }

    else
    {
      v14 = 0;
    }

    v17[0] = 0;
LABEL_30:
    v15 = 1;
    goto LABEL_31;
  }

  if (v32 && (v12 = *(v32 + 24)) != 0)
  {
    re::AssetManager::deviceAssetPath(v12, &v31, 0, 15, v22);
  }

  else
  {
    v22[0] = 0;
  }

  re::Optional<re::DynamicString>::operator=(v25, v22);
  if (v22[0] == 1 && v23 && (v24 & 1) != 0)
  {
    (*(*v23 + 40))();
  }

  if (v33)
  {
    v14 = v34;
  }

  else
  {
    v14 = 0;
  }

  v13 = v25[0];
  v17[0] = v25[0];
  if ((v25[0] & 1) == 0)
  {
    goto LABEL_30;
  }

  v10 = v28;
  v20 = v28;
  v21 = v29;
  v11 = v26;
  v18 = v26;
  v19 = v27;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v15 = (v19 & 1) == 0;
  v13 = 1;
LABEL_31:
  if (*(a3 + 17))
  {
    v16 = *(a3 + 18);
  }

  else
  {
    v16 = (a3 + 137);
  }

  v7 = re::MaterialAssetLoader::doRegisterAsset(this, a2, v14, v17, v16);
  if ((v13 & 1) != 0 && v11 && !v15)
  {
    (*(*v11 + 40))(v11, v10);
  }

  if (v25[0] == 1 && v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  if (v30 == 1)
  {
    re::AssetHandle::~AssetHandle(&v31);
  }

  return v7;
}

uint64_t re::MaterialAssetLoader::doRegisterAsset(re::ShaderGraphAsset *a1, uint64_t a2, uint64_t a3, char *a4, NSObject *a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1776);
  if (v6)
  {
    v7 = 0;
    *(v6 + 1440) = a3;
    return v7;
  }

  v11 = a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = *(a2 + 1944);
  if (v14)
  {
    goto LABEL_9;
  }

  (*(*a1 + 176))(v81, a1, a2);
  a1 = v81[0];
  if (v81[0])
  {
    if (v83)
    {
      a1 = (*(*v81[0] + 40))();
    }

    v83 = 0;
    memset(v81, 0, sizeof(v81));
    ++v82;
  }

  v14 = *(a2 + 1944);
  if (v14)
  {
LABEL_9:
    v15 = *(a2 + 1960);
    v16 = v15;
    do
    {
      if (!*(*v16 + 1))
      {
        return 2;
      }

      ++v16;
    }

    while (v16 != &v15[v14]);
    log = a5;
    v68 = v12;
    v17 = v13;
    v18 = 0;
    v19 = 0;
    v20 = 8 * v14;
    do
    {
      v21 = *v15;
      v22 = *(*v15 + 1);
      if (v22)
      {
        v23 = atomic_load((v22 + 896));
        if (v23 != 2)
        {
          if (v23 == 3)
          {
            return 2;
          }

          re::AssetHandle::loadAsync(*v15);
          v25 = *(v21 + 1);
          if (v25)
          {
            v26 = *(v25 + 280);
          }

          else
          {
            v26 = 0;
          }

          a1 = re::TextureAsset::assetType(v24);
          if (v26 == a1)
          {
            v19 = 1;
          }

          else
          {
            v18 = 1;
          }
        }
      }

      ++v15;
      v20 -= 8;
    }

    while (v20);
    v27 = v19 == 0;
    if (v18)
    {
      return 1;
    }

    v13 = v17;
    a5 = log;
  }

  else
  {
    v68 = v12;
    v27 = 1;
  }

  if (*(a2 + 1976))
  {
    goto LABEL_44;
  }

  v28 = v27;
  v29 = *(a2 + 392);
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = *(a2 + 408) + 184;
  v31 = 272 * v29;
  while (1)
  {
    v32 = *(v30 - 104);
    if (!v32)
    {
      a1 = re::ShaderGraphAsset::assetType(a1);
      goto LABEL_33;
    }

    v33 = *(v32 + 280);
    a1 = re::ShaderGraphAsset::assetType(a1);
    if (v33 == a1)
    {
      break;
    }

LABEL_33:
    v30 += 272;
    v31 -= 272;
    if (!v31)
    {
      goto LABEL_39;
    }
  }

  v34 = re::ShaderGraphAsset::assetType(a1);
  v35 = re::AssetHandle::assetWithType((v30 - 112), v34, 0);
  v36 = v35;
  if (!v35)
  {
    loga = *re::assetsLogObjects(0);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
    {
      v64 = re::AssetHandle::assetInfo((v30 - 112));
      if (v64[17])
      {
        v65 = v64[18];
      }

      else
      {
        v65 = v64 + 137;
      }

      *v87 = 136315138;
      *&v87[4] = v65;
      _os_log_error_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", v87, 0xCu);
    }
  }

  re::ShaderGraphLoadHelper::decodeAndSpecializeShaderGraph(v11 + 128, v36, v30, (v30 + 48), *(a2 + 1984), a3, v87);
  if (v87[0] != 1)
  {
    re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(v87);
    return 2;
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 1968), *&v87[8]);
  re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(v87);
LABEL_39:
  v37 = *(a2 + 1968);
  v27 = v28;
  if (v37)
  {
    re::sg::CachedCompilationMaterial::getMaterialDefinitionPath(v37);
    (*(*v68 + 8))(v87);
    v38 = *(a2 + 40);
    *(a2 + 40) = *v87;
    *v87 = v38;
    v39 = *(a2 + 56);
    *(a2 + 56) = *&v87[16];
    *&v87[16] = v39;
    re::AssetHandle::~AssetHandle(v87);
    HasBackgroundBlur = re::sg::CachedCompilationMaterial::getHasBackgroundBlur(*(a2 + 1968));
    if ((*(a2 + 368) & 1) == 0)
    {
      *(a2 + 368) = 1;
    }

    *(a2 + 369) = HasBackgroundBlur;
  }

  *(a2 + 1976) = 1;
LABEL_44:
  if (*(a2 + 1968))
  {
    v41 = *(a2 + 48);
    if (v41)
    {
      v42 = atomic_load((v41 + 896));
      if (v42 == 1)
      {
        return 1;
      }
    }
  }

  if (re::PbrEmulationLoadHelper::isWaitingForAssetDependencies(v11 + 640, a2 + 8))
  {
    return 1;
  }

  v43 = (a2 + 1968);
  if (*(a2 + 1624) == 8)
  {
    re::parseShaderParameterData(v13, a5, a2 + 64, &v75);
    v73[0] = *a4;
    if (v73[0] == 1)
    {
      re::DynamicString::DynamicString(v74, (a4 + 8));
    }

    re::makeMaterialBuilder(v13, v68, a2 + 8, (a2 + 1968), v73, a3, &v75, v87, (a2 + 1840));
    if (v73[0] == 1)
    {
      v44 = v74[0];
      if (v74[0])
      {
        if (v74[1])
        {
          v44 = (*(*v74[0] + 40))();
        }

        memset(v74, 0, sizeof(v74));
      }
    }

    v45 = v87[0];
    if (v87[0])
    {
      re::MaterialBuilder::operator=((a2 + 424), &v87[8]);
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(a2 + 1792, v79);
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a2 + 1880, v80);
      v46 = *(a2 + 1968);
      if (v46)
      {
        re::sg::CachedCompilationMaterial::createDynamicFunctionConstantEnumerator(buf, v46);
        re::MaterialBuilder::setShaderGraphDynamicFunctionConstantEnumerator(a2 + 424, buf);
        re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(buf);
      }
    }

    else
    {
      v47 = *re::assetTypesLogObjects(v44);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        if (v87[16])
        {
          v63 = v88;
        }

        else
        {
          v63 = &v87[17];
        }

        *buf = 136315394;
        *&buf[4] = a5;
        v85 = 2080;
        v86 = v63;
        _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "Failed to prepare material builder '%s': %s.", buf, 0x16u);
      }
    }

    if (v87[0] == 1)
    {
      re::MaterialBuilder::~MaterialBuilder(&v87[8]);
    }

    else if (*&v87[8] && (v87[16] & 1) != 0)
    {
      (*(**&v87[8] + 40))();
    }

    re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v80);
    re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v79);
    re::ShaderParameterTable::~ShaderParameterTable(&v75);
    if (!v45)
    {
      return 2;
    }
  }

  re::MaterialBuilder::tickBuilder(&v75, (a2 + 424), v13);
  if (v75 == 1)
  {
    if (v76 != 0 && v27)
    {
      re::parseTextureParameterData(v13, a2 + 64, v87);
      re::TextureParameterTable::operator=(a2 + 1096, v87);
      v49 = *(v13 + 24);
      re::MaterialBuilder::MaterialBuilder(v71, a2 + 424);
      re::MaterialManager::createMaterial(v49, v71, &v72);
      re::MaterialBuilder::~MaterialBuilder(v71);
      if (v72)
      {
        v51 = v91;
        if (v91)
        {
          v52 = 0;
          v53 = v90;
          while (1)
          {
            v54 = *v53;
            v53 += 22;
            if (v54 < 0)
            {
              break;
            }

            if (v91 == ++v52)
            {
              LODWORD(v52) = v91;
              break;
            }
          }
        }

        else
        {
          LODWORD(v52) = 0;
        }

        if (v52 != v91)
        {
          v58 = v90;
          do
          {
            re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a2 + 1880, &v58[22 * v52 + 2], &v58[22 * v52 + 10]);
            if (v91 <= v52 + 1)
            {
              v59 = v52 + 1;
            }

            else
            {
              v59 = v91;
            }

            v58 = v90;
            while (v59 - 1 != v52)
            {
              LODWORD(v52) = v52 + 1;
              if (v90[22 * v52] < 0)
              {
                goto LABEL_95;
              }
            }

            LODWORD(v52) = v59;
LABEL_95:
            ;
          }

          while (v52 != v51);
        }

        if (*v43)
        {
          re::sg::CachedCompilationMaterial::getDynamicFunctionConstants(buf, *v43);
          re::FixedArray<float>::operator=(v72 + 21, buf);
          re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(buf);
        }

        v60 = v72;
        v70 = v72;
        if (v72)
        {
          v61 = v72 + 1;
          re::MaterialAsset::setInstance(a2, v13, &v70);
        }

        else
        {
          re::MaterialAsset::setInstance(a2, v13, &v70);
        }

        *buf = v13;
        re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(buf, &v69);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a2 + 1784), v69);
        if (v69)
        {

          v69 = 0;
        }

        if (*(a2 + 1842) == 6)
        {
          re::copyCustomParamFlattenedNames(v72 + 31, (a2 + 1848), (a2 + 1856), (a2 + 1864), (a2 + 1872));
        }

        v7 = 0;
      }

      else
      {
        v57 = *re::assetTypesLogObjects(v50);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = a5;
          _os_log_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_DEFAULT, "failed to create material '%s'.", buf, 0xCu);
        }

        v7 = 2;
      }

      if (v72)
      {
      }

      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v89);
      re::TextureParameterTable::~TextureParameterTable(v87);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v55 = *re::graphicsLogObjects(v48);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      if (v77)
      {
        v62 = *&v78[7];
      }

      else
      {
        v62 = v78;
      }

      *v87 = 136315394;
      *&v87[4] = a5;
      *&v87[12] = 2080;
      *&v87[14] = v62;
      _os_log_error_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_ERROR, "Failed to create material '%s': %s", v87, 0x16u);
    }

    v7 = 2;
  }

  if (v75 & 1) == 0 && v76 && (v77)
  {
    (*(*v76 + 40))();
  }

  return v7;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void *re::MaterialBuilder::setShaderGraphDynamicFunctionConstantEnumerator(uint64_t a1, __int128 *a2)
{
  v4[0] = 1;
  v5 = *a2;
  v2 = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v6 = v2;
  v7 = *(a2 + 24);
  result = re::Optional<re::FunctionConstantsEnumerator>::operator=(a1 + 1288, v4);
  if (v4[0] == 1)
  {
    return re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v5);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v8, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::ParameterBinding const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 88 * HIDWORD(v9) + 40;
  }
}

void re::MaterialAssetLoader::unregisterAsset(re::MaterialAssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  if (a2[222])
  {
    v4 = *(this + 3);
    v5 = 0;
    re::MaterialAsset::setInstance(a2, v4, &v5);
  }

  re::MaterialBuilder::destroy((a2 + 53));
  a2[243] = 0;
  ++*(a2 + 488);
}

re *re::internal::destroyPersistent<re::MaterialAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::MaterialAssetLoader::findDependencies@<X0>(re::MaterialAssetLoader *this@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2[243])
  {
    (*(*this + 176))(v11);
    this = v11[0];
    if (v11[0])
    {
      if (v13)
      {
        this = (*(*v11[0] + 40))();
      }

      v13 = 0;
      memset(v11, 0, sizeof(v11));
      ++v12;
    }
  }

  v5 = a2[243];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a3, v5);
  ++*(a3 + 24);
  v7 = a2[243];
  if (v7)
  {
    v8 = a2[245];
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      result = re::DynamicArray<re::AssetHandle>::add(a3, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void *re::MaterialAssetLoader::internalFindAssetHandleFields@<X0>(re::MaterialAssetLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[243];
  if (!v5)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v9);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 241), v9);
    this = v9[0];
    if (v9[0] && v9[4])
    {
      this = (*(*v9[0] + 40))();
    }

    v5 = a2[243];
  }

  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<float *>::setCapacity(a3, v5);
  ++*(a3 + 24);
  if (a2[243])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = re::DynamicArray<re::TransitionCondition *>::add(a3, (a2[245] + v7));
      ++v8;
      v7 += 8;
    }

    while (a2[243] > v8);
  }

  return result;
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  re::FixedArray<unsigned long>::init<>(a4, a1, a2[1]);
  re::FixedArray<unsigned long>::init<>(a5, a1, a2[1]);
  if (!a2[1])
  {
    return;
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = (*a2 + 24 * v10);
    v13 = *(v12 + 1);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = atomic_load((v13 + 896));
    if (v14 != 2)
    {
      goto LABEL_12;
    }

    v15 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v12);
    v16 = a4[1];
    if (v16 <= v10)
    {
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v33 = 468;
      v34 = 2048;
      v35 = v10;
      v36 = 2048;
      v37 = v16;
      _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
      _os_crash_msg();
      __break(1u);
LABEL_24:
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

      v33 = 468;
      v34 = 2048;
      v35 = v10;
      v36 = 2048;
      v37 = v16;
      _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
      _os_crash_msg();
      __break(1u);
    }

    *(a4[2] + 8 * v10) = *(v15 + 1776);
    if (a3[1] <= v10 || (v17 = *(*a3 + 8 * v10)) == 0 || re::MaterialParameterBlock::isEmpty(*(*a3 + 8 * v10)))
    {
      v16 = a5[1];
      if (v16 <= v10)
      {
        goto LABEL_24;
      }

      v18 = 0;
      goto LABEL_11;
    }

    v18 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v17, a1);
    v20 = a5[1];
    if (v20 <= v10)
    {
      break;
    }

LABEL_11:
    *(a5[2] + 8 * v10) = v18;
LABEL_12:
    v10 = v11;
    if (a2[1] <= v11++)
    {
      return;
    }
  }

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

  v33 = 468;
  v34 = 2048;
  v35 = v10;
  v36 = 2048;
  v37 = v20;
  _os_log_send_and_compose_impl(v22, &v29, &v38, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
  _os_crash_msg();
  __break(1u);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(re::MaterialAsset *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  re::MaterialAsset::assetType(a1);
  v2 = re::AssetHandle::assetWithType(a1, &re::MaterialAsset::assetType(void)::type, 0);
  if (!v2)
  {
    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = re::AssetHandle::assetInfo(a1);
      if (v5[17])
      {
        v6 = v5[18];
      }

      else
      {
        v6 = v5 + 137;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v7, 0xCu);
    }
  }

  return v2;
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(_anonymous_namespace_ *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1);
  v11 = *(a1 + 1);
  if (*(a1 + 1))
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = (*a1 + 24 * v13);
      v16 = *(v15 + 1);
      if (v16)
      {
        v17 = atomic_load((v16 + 896));
        if (v17 == 2)
        {
          v18 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v15);
          v19 = a3[1];
          if (v19 <= v13)
          {
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v23 = MEMORY[0x1E69E9C10];
            v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v34 = 136315906;
            v35 = "operator[]";
            v36 = 1024;
            if (v24)
            {
              v25 = 3;
            }

            else
            {
              v25 = 2;
            }

            v37 = 468;
            v38 = 2048;
            v39 = v13;
            v40 = 2048;
            v41 = v19;
            _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
            _os_crash_msg();
            __break(1u);
LABEL_20:
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v26 = MEMORY[0x1E69E9C10];
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

            v37 = 468;
            v38 = 2048;
            v39 = v13;
            v40 = 2048;
            v41 = v19;
            _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
            _os_crash_msg();
            __break(1u);
LABEL_24:
            v33 = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v42 = 0u;
            v29 = MEMORY[0x1E69E9C10];
            v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v34 = 136315906;
            v35 = "operator[]";
            v36 = 1024;
            if (v30)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v37 = 468;
            v38 = 2048;
            v39 = v13;
            v40 = 2048;
            v41 = v19;
            _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
            _os_crash_msg();
            __break(1u);
          }

          *(a3[2] + 8 * v13) = *(v18 + 1776);
          if (a2[1] > v13 && (v20 = *(*a2 + 8 * v13)) != 0 && !re::MaterialParameterBlock::isEmpty(*(*a2 + 8 * v13)))
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v32, v20);
            v19 = a4[1];
            if (v19 <= v13)
            {
              goto LABEL_24;
            }

            v22 = v32;
            *(a4[2] + 8 * v13) = v32;
            *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a5) = v22;
          }

          else
          {
            v19 = a4[1];
            if (v19 <= v13)
            {
              goto LABEL_20;
            }

            *(a4[2] + 8 * v13) = 0;
          }
        }
      }

      v13 = v14;
    }

    while (*(a1 + 1) > v14++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*a4)
  {
    re::FixedArray<unsigned long>::init<>(a4, a1, a2[1]);
  }

  if (!*a5)
  {
    re::FixedArray<unsigned long>::init<>(a5, a1, a2[1]);
  }

  if (a2[1])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = (*a2 + 24 * v10);
      v13 = *(v12 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        if (v14 == 2)
        {
          v15 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v12);
          v16 = a4[1];
          if (v16 <= v10)
          {
            v29 = 0;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v38 = 0u;
            v20 = MEMORY[0x1E69E9C10];
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v21 = 3;
            }

            else
            {
              v21 = 2;
            }

            v33 = 468;
            v34 = 2048;
            v35 = v10;
            v36 = 2048;
            v37 = v16;
            _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
            _os_crash_msg();
            __break(1u);
LABEL_22:
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

            v33 = 468;
            v34 = 2048;
            v35 = v10;
            v36 = 2048;
            v37 = v16;
            _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
            _os_crash_msg();
            __break(1u);
LABEL_26:
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

            v33 = 468;
            v34 = 2048;
            v35 = v10;
            v36 = 2048;
            v37 = v16;
            _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
            _os_crash_msg();
            __break(1u);
          }

          *(a4[2] + 8 * v10) = *(v15 + 1776);
          if ((a3 & 1) != 0 || (v17 = *(v15 + 1784), re::MaterialParameterBlock::isEmpty(v17)))
          {
            v16 = a5[1];
            if (v16 <= v10)
            {
              goto LABEL_22;
            }

            v18 = 0;
          }

          else
          {
            v18 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v17, a1);
            v16 = a5[1];
            if (v16 <= v10)
            {
              goto LABEL_26;
            }
          }

          *(a5[2] + 8 * v10) = v18;
        }
      }

      v10 = v11;
    }

    while (a2[1] > v11++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(_anonymous_namespace_ *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    v10 = *(a1 + 1);
  }

  if (!*a4)
  {
    v11 = *(a1 + 1);
  }

  if (*(a1 + 1))
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = (*a1 + 24 * v12);
      v15 = *(v14 + 1);
      if (v15)
      {
        v16 = atomic_load((v15 + 896));
        if (v16 == 2)
        {
          v17 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v14);
          v18 = a3[1];
          if (v18 <= v12)
          {
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v22 = MEMORY[0x1E69E9C10];
            v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v23)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            v36 = 468;
            v37 = 2048;
            v38 = v12;
            v39 = 2048;
            v40 = v18;
            _os_log_send_and_compose_impl(v24, &v32, &v41, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v25 = MEMORY[0x1E69E9C10];
            v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v26)
            {
              v27 = 3;
            }

            else
            {
              v27 = 2;
            }

            v36 = 468;
            v37 = 2048;
            v38 = v12;
            v39 = 2048;
            v40 = v18;
            _os_log_send_and_compose_impl(v27, &v32, &v41, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v32 = 0;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            v28 = MEMORY[0x1E69E9C10];
            v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v33 = 136315906;
            v34 = "operator[]";
            v35 = 1024;
            if (v29)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            v36 = 468;
            v37 = 2048;
            v38 = v12;
            v39 = 2048;
            v40 = v18;
            _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
            _os_crash_msg();
            __break(1u);
          }

          *(a3[2] + 8 * v12) = *(v17 + 1776);
          if ((a2 & 1) != 0 || (v19 = *(v17 + 1784), re::MaterialParameterBlock::isEmpty(v19)))
          {
            v18 = a4[1];
            if (v18 <= v12)
            {
              goto LABEL_22;
            }

            *(a4[2] + 8 * v12) = 0;
          }

          else
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v31, v19);
            v18 = a4[1];
            if (v18 <= v12)
            {
              goto LABEL_26;
            }

            v20 = v31;
            *(a4[2] + 8 * v12) = v31;
            *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a5) = v20;
          }
        }
      }

      v12 = v13;
    }

    while (*(a1 + 1) > v13++);
  }
}

void re::MaterialAssetHelper::extractMaterialDataFromMeshInstanceParameterBlocks(_anonymous_namespace_ *a1, void *a2, void *a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1);
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (a2[1] > v10 && (v12 = *(*a2 + 8 * v10)) != 0 && !re::MaterialParameterBlock::isEmpty(*(*a2 + 8 * v10)))
      {
        re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v22, v12);
        v13 = a3[1];
        if (v13 <= v10)
        {
          goto LABEL_17;
        }

        v15 = v22;
        *(a3[2] + 8 * v10) = v22;
        *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a4) = v15;
        v9 = *(a1 + 1);
      }

      else
      {
        v13 = a3[1];
        if (v13 <= v10)
        {
          v23 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v24 = 136315906;
          v25 = "operator[]";
          v26 = 1024;
          if (v17)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          v27 = 468;
          v28 = 2048;
          v29 = v10;
          v30 = 2048;
          v31 = v13;
          _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
          _os_crash_msg();
          __break(1u);
LABEL_17:
          v23 = 0;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v19 = MEMORY[0x1E69E9C10];
          v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v24 = 136315906;
          v25 = "operator[]";
          v26 = 1024;
          if (v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          v27 = 468;
          v28 = 2048;
          v29 = v10;
          v30 = 2048;
          v31 = v13;
          _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
          _os_crash_msg();
          __break(1u);
        }

        *(a3[2] + 8 * v10) = 0;
      }

      v10 = v11;
    }

    while (v9 > v11++);
  }
}

void *re::allocInfo_MaterialAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195C38, "MaterialAsset");
    __cxa_guard_release(&_MergedGlobals_70);
  }

  return &unk_1EE195C38;
}

void re::initInfo_MaterialAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0xDA7FDB21D2F3CBD2;
  v18[1] = "MaterialAsset";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE195C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195C20))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_MaterialFile(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "materialFile";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000001;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE195C28 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 64, 8);
    *v16 = 6;
    *(v16 + 8) = 1;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 1;
    *(v16 + 48) = re::downgradeMaterialAssetFromFall2023;
    *(v16 + 56) = 2;
    qword_1EE195C30 = v16;
    __cxa_guard_release(&qword_1EE195C20);
  }

  *(this + 2) = 0x7C800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195C28;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void re::MaterialAssetLoader::~MaterialAssetLoader(re::MaterialAssetLoader *this)
{
  *this = &unk_1F5CC3648;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 776);
  re::DynamicArray<re::AssetHandle>::deinit(this + 392);
  std::recursive_mutex::~recursive_mutex((this + 184));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 17);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle(v2);
}

{
  *this = &unk_1F5CC3648;
  v2 = (this + 32);
  re::DynamicArray<re::AssetHandle>::deinit(this + 776);
  re::DynamicArray<re::AssetHandle>::deinit(this + 392);
  std::recursive_mutex::~recursive_mutex((this + 184));
  re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 17);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle(v2);

  JUMPOUT(0x1E6906510);
}

void *re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5CC37C0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5CC37C0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *re::internal::MoveOnlyCallable<re::MaterialAsset::setInstance(re::RenderManager *,re::SharedPtr<re::MaterialInstance>)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CC37C0;
  a2[1] = v2;
  *(a1 + 8) = 0;
  return a2;
}

uint64_t (***re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

re::MaterialAsset *re::MaterialAsset::MaterialAsset(re::MaterialAsset *this)
{
  *this = &unk_1F5CC3820;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = (this + 8);
  re::DynamicString::setCapacity(v2, 0);
  *(this + 84) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 352) = 0;
  *(this + 354) = 0;
  *(this + 356) = 0;
  *(this + 358) = 0;
  *(this + 360) = 0;
  *(this + 362) = 0;
  *(this + 364) = 0;
  *(this + 366) = 0;
  *(this + 368) = 0;
  *(this + 370) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 100) = 0;
  *(this + 376) = 0u;
  *(this + 416) = 0;
  re::MaterialBuilder::MaterialBuilder((this + 424));
  *(this + 1768) = 0;
  *(this + 111) = 0u;
  *(this + 112) = 0u;
  *(this + 113) = 0u;
  *(this + 456) = 0;
  *(this + 1828) = 0x7FFFFFFFLL;
  *(this + 1848) = 0u;
  *(this + 1864) = 0u;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  *(this + 478) = 0;
  *(this + 1916) = 0x7FFFFFFFLL;
  *(this + 241) = 0;
  *(this + 121) = 0u;
  *(this + 488) = 0;
  *(this + 248) = 0;
  *(this + 1960) = 0u;
  *(this + 1976) = 0;
  return this;
}

void re::MaterialAsset::~MaterialAsset(re::MaterialAsset *this)
{
  re::MaterialAsset::~MaterialAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CC3820;
  v2 = *(this + 246);
  if (v2)
  {

    *(this + 246) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 1928);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 235);
  v3 = *(this + 234);
  if (v3)
  {

    *(this + 234) = 0;
  }

  v4 = *(this + 233);
  if (v4)
  {

    *(this + 233) = 0;
  }

  v5 = *(this + 232);
  if (v5)
  {

    *(this + 232) = 0;
  }

  v6 = *(this + 231);
  if (v6)
  {

    *(this + 231) = 0;
  }

  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 224);
  v7 = *(this + 223);
  if (v7)
  {

    *(this + 223) = 0;
  }

  v8 = *(this + 222);
  if (v8)
  {

    *(this + 222) = 0;
  }

  re::MaterialBuilder::~MaterialBuilder((this + 424));
  re::DynamicArray<re::FunctionLink>::deinit(this + 376);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 38);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 32);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 26);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 20);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  re::AssetHandle::~AssetHandle((this + 40));
  re::DynamicString::deinit((this + 8));
}

double re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    re::DynamicString::deinit((result + 2));
    re::StringID::destroyString((result + 16));
    *(result + 6) = 0;
  }
}

double re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *(v4 + 8) = 0;
        }

        v4 += 40;
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

uint64_t re::DynamicArray<re::FunctionLink>::deinit(uint64_t a1)
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
        v6 = 272 * v4;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 232);
          re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 184));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v3 + v5 + 136));
          re::DynamicArray<unsigned long>::deinit(v3 + v5 + 96);
          re::AssetHandle::~AssetHandle((v3 + v5 + 72));
          re::DynamicString::deinit((v3 + v5 + 40));
          re::DynamicString::deinit((v3 + v5 + 8));
          v5 += 272;
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

double re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

double re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 152;
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

double re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 160;
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

void re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(unsigned int *result)
{
  v3 = *result;
  if ((*result & 0x80000000) != 0)
  {
    v8 = v1;
    v9 = v2;
    *result = v3 & 0x7FFFFFFF;
    re::DynamicString::deinit((result + 2));
    re::DynamicString::deinit((result + 28));
    v5 = re::DynamicString::deinit((result + 20));
    v6 = result[18];
    if (v6 != -1)
    {
      (off_1F5CC3800[v6])(&v7, result + 10, v5);
    }

    result[18] = -1;
  }
}

double re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(int *result)
{
  v3 = *result;
  if (*result < 0)
  {
    v8 = v1;
    v9 = v2;
    *result = v3 & 0x7FFFFFFF;
    v5 = re::DynamicString::deinit((result + 2));
    v6 = result[18];
    if (v6 != -1)
    {
      (off_1F5CC3800[v6])(&v7, result + 10, v5);
    }

    result[18] = -1;
  }
}

uint64_t re::ConstantTable::lookup(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 48), a2);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 56) + 16 * v3 + 8;
  }
}

void *re::FixedArray<re::LinkedFunction>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 200 * v2;
      do
      {
        v7 = (v5 + v4);
        re::DynamicArray<unsigned long>::deinit(v5 + v4 + 160);
        re::DynamicArray<unsigned long>::deinit(v5 + v4 + 120);
        re::FixedArray<re::TypedArgument>::deinit((v5 + v4 + 96));
        re::FixedArray<re::TechniqueFunctionConstant>::deinit((v5 + v4 + 64));
        v8 = *(v5 + v4 + 48);
        if (v8)
        {

          v7[6] = 0;
        }

        re::StringID::destroyString((v7 + 3));
        re::StringID::destroyString((v7 + 1));
        v4 += 200;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::TypedArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 112 * v2;
      do
      {
        re::FixedArray<re::MetalTypeInfo>::deinit(v4 + 8);
        re::StringID::destroyString((v4 + 5));
        re::StringID::destroyString(v4);
        v4 += 14;
        v5 -= 112;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::MetalTypeInfo>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 80 * v2;
      v5 = (result[2] + 40);
      do
      {
        re::FixedArray<re::MetalTypeInfo>::deinit(v5);
        re::StringID::destroyString((v5 - 3));
        v5 += 10;
        v4 -= 80;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::TechniqueFunctionConstant>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 104 * v2;
      do
      {
        v6 = re::DynamicString::deinit(v4);
        v4 = (v4 + 104);
        v5 -= 104;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::ShaderParameterTable::~ShaderParameterTable(re::ShaderParameterTable *this)
{
  re::ShaderParameterTable::deinit(this);
  re::BufferTable::~BufferTable((this + 240));
  re::ConstantTable::~ConstantTable((this + 128));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
}

void re::ConstantTable::~ConstantTable(re::ConstantTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 8);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 48);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

double re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = (*(a1 + 8) + 40 * v8);
            v9[4] = 0;
            v9[2] = 0;
            *v9 = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
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
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
          *(v4 + 8) = 0;
        }

        v4 += 40;
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

void re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, v9);
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        *(result + 8) = *(v10 + 8);
        v11 = *(v10 + 16);
        *(result + 32) = *(v10 + 32);
        *(result + 16) = v11;
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 40 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 40 * v4;
}

uint64_t re::Optional<re::FunctionConstantsEnumerator>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = (a1 + 8);
    if ((*a2 & 1) == 0)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v4);
      *a1 = 0;
      return a1;
    }

    re::FixedArray<float>::operator=(v4, (a2 + 8));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v5 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
LABEL_6:
    *(a1 + 32) = *(a2 + 32);
  }

  return a1;
}

void *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 88 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
        v6 = re::DynamicString::deinit(v4);
        v4 += 11;
        v5 -= 88;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::TextureParameterTable::~TextureParameterTable(re::TextureParameterTable *this)
{
  re::TextureParameterTable::deinit(this);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 416);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 352);
  re::SamplerTable::~SamplerTable((this + 240));
  re::TextureTableImpl<re::TextureHandle>::~TextureTableImpl(this + 16);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this);
}

double re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = (*(a1 + 8) + 16 * v8);
            *v9 = 0;
            v9[1] = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void re::SamplerTable::~SamplerTable(re::SamplerTable *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
  *(this + 13) = 0;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this);
}

uint64_t re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(uint64_t a1)
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
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          ++v3;
          v5 -= 8;
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

void *re::TextureTableImpl<re::TextureHandle>::~TextureTableImpl(void *a1)
{
  *a1 = &unk_1F5CC3888;
  v2 = a1 + 1;
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit((a1 + 9));
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v2);
  return a1;
}

uint64_t re::TextureTableImpl<re::TextureHandle>::lookup@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 8), a2);
  if (result == -1)
  {
    v6 = 0;
  }

  else
  {
    *(a3 + 1) = *(*(a1 + 16) + 16 * result + 8);
    v6 = 1;
  }

  *a3 = v6;
  return result;
}

void *re::TextureSource::lookupIndex@<X0>(void *(***a1)(uint64_t *__return_ptr)@<X0>, char *a2@<X8>)
{
  result = (**a1)(&v5);
  if (v5 == 1)
  {
    a2[1] = BYTE2(v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *re::TextureSource::lookupProtectionOptions@<X0>(void *(***a1)(uint64_t *__return_ptr)@<X0>, char *a2@<X8>)
{
  result = (**a1)(&v5);
  if (v5 == 1)
  {
    a2[1] = BYTE1(v5);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t re::DynamicArray<re::TextureViews<re::TextureHandle>>::deinit(uint64_t a1)
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
          if (*(v3 + 16) == 1)
          {
            v6 = *(v3 + 24);
            if (v6)
            {

              *(v3 + 24) = 0;
            }
          }

          re::TextureHandle::invalidate(v3);
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

double re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 32;
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

double re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 152;
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

uint64_t re::Result<re::SharedPtr<re::sg::CachedCompilationMaterial>,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 88;
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

void re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 40;
    do
    {
      v7 = *(a2 + 16) + v6;
      if ((*(v7 - 40) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + 40) % *(v4 + 24), *(v7 + 40));
        v8 = *(a2 + 16) + v6;
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = *(v8 - 8);
        v9 = *(v8 - 24);
        *(result + 8) = *(v8 - 32);
        *(v8 - 32) = 0;
        v10 = *(v8 - 16);
        *(v8 - 8) = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        *(v8 - 24) = v12;
        *(v8 - 16) = v11;
        v13 = *(a2 + 16) + v6;
        *(result + 40) = *v13;
        *(result + 48) = *(v13 + 8);
        *(result + 56) = *(v13 + 16);
        v14 = *(v13 + 24);
        *(result + 64) = *(result + 64) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
        *(result + 64) = *(v13 + 24) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
        *(result + 72) = *(v13 + 32);
        *(v13 + 24) = 0;
        *(v13 + 32) = &str_67;
        v2 = *(a2 + 32);
      }

      ++v5;
      v6 += 88;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

uint64_t re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::ParameterBinding const&>(uint64_t a1, uint64_t a2, const re::DynamicString *a3, uint64_t a4)
{
  v7 = re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  re::DynamicString::DynamicString((v7 + 8), a3);
  *(v7 + 40) = *a4;
  v7 += 40;
  *(v7 + 8) = *(a4 + 8);
  *(v7 + 16) = *(a4 + 16);
  re::StringID::StringID((v7 + 24), (a4 + 24));
  ++*(a1 + 40);
  return v7;
}

void *re::FixedArray<re::sg::ShaderGraphDynamicFunctionConstant>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        v6 = re::DynamicString::deinit(v4);
        v4 = (v4 + 40);
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2], v6);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
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

uint64_t *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 64, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BlendShapeWeightsDefinitionAsset::assetType(re::BlendShapeWeightsDefinitionAsset *this)
{
  {
    re::BlendShapeWeightsDefinitionAsset::assetType(void)::type = "BlendFactor";
    qword_1EE1C63F8 = 0;
    re::AssetType::generateCompiledExtension(&re::BlendShapeWeightsDefinitionAsset::assetType(void)::type);
  }

  return &re::BlendShapeWeightsDefinitionAsset::assetType(void)::type;
}

void *re::BlendShapeWeightsDefinitionAsset::init(re::BlendShapeWeightsDefinitionAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this, 0);
  *(this + 5) = v2;
  v4 = this + 40;
  ++*(v4 - 4);
  result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v4, 0);
  ++*(v4 + 6);
  return result;
}

void re::BlendShapeWeightsDefinitionAsset::init(_anonymous_namespace_ *a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = a4;
  v206 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
  }

  v156 = a2[79];
  if (v156)
  {
    v152 = a1;
    v9 = a2[76];
    if (v9)
    {
      v10 = (2 * v9);
    }

    else
    {
      v10 = 1;
    }

    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v171 = 0x7FFFFFFFLL;
    if (v9)
    {
      LODWORD(v12) = 0;
      v13 = 0;
      v10 = 0x7FFFFFFFLL;
      do
      {
        v14 = a2[76];
        if (v14 <= v13)
        {
          goto LABEL_191;
        }

        v15 = *(a2[78] + 8 * v13);
        v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
        v17 = v16 ^ (v16 >> 31);
        if (v168)
        {
          v11 = v17 % DWORD2(v169);
          v18 = *(*(&v168 + 1) + 4 * v11);
          if (v18 != 0x7FFFFFFF)
          {
            while (*(v169 + 32 * v18 + 8) != v15)
            {
              v18 = *(v169 + 32 * v18) & 0x7FFFFFFF;
              if (v18 == 0x7FFFFFFF)
              {
                goto LABEL_16;
              }
            }

            goto LABEL_17;
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

LABEL_16:
        v19 = re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v168, v11, v17);
        *(v19 + 8) = v15;
        *(v19 + 16) = v12;
        ++HIDWORD(v171);
LABEL_17:
        v12 = (v12 + 1);
        v13 = v12;
      }

      while (v9 > v12);
    }

    v13 = a3[1];
    v151 = v13;
    if (v13)
    {
      v14 = 0;
      v20 = 0;
      v21 = v152;
      while (1)
      {
        v22 = a3[1];
        if (v22 <= v20)
        {
          goto LABEL_195;
        }

        v10 = v156;
        v23 = re::DataArray<re::MeshInstance>::get(v156 + 72, *(*a3 + 8 * v20));
        v24 = *(re::DataArray<re::MeshModel>::get(v156 + 8, *(v23 + 16)) + 144);
        if (v24)
        {
          LODWORD(v24) = *(v24 + 64);
        }

        v14 = (v24 + v14);
        if (v13 == ++v20)
        {
          goto LABEL_26;
        }
      }
    }

    v14 = 0;
    v21 = v152;
LABEL_26:
    *v21 = v5;
    re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v21, v14);
    ++*(v21 + 6);
    *(v21 + 5) = v5;
    v154 = (v21 + 40);
    re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v21 + 5, v14);
    *(v21 + 10) = v5;
    v25 = v21 + 80;
    ++*(v25 - 4);
    re::DynamicArray<re::StringID>::setCapacity(v25, v14);
    ++*(v25 + 6);
    v13 = 0xBF58476D1CE4E5B9;
    if (v151)
    {
      v27 = 0;
      v149 = a2;
      v150 = a3;
      while (1)
      {
        v28 = a3[1];
        if (v28 <= v27)
        {
          goto LABEL_220;
        }

        v29 = re::DataArray<re::MeshInstance>::get(v156 + 72, *(*a3 + 8 * v27));
        if (!v168)
        {
          goto LABEL_234;
        }

        v31 = *(v29 + 16);
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
        v33 = *(*(&v168 + 1) + 4 * ((v32 ^ (v32 >> 31)) % DWORD2(v169)));
        if (v33 == 0x7FFFFFFF)
        {
          goto LABEL_234;
        }

        while (*(v169 + 32 * v33 + 8) != v31)
        {
          v33 = *(v169 + 32 * v33) & 0x7FFFFFFF;
          if (v33 == 0x7FFFFFFF)
          {
            goto LABEL_234;
          }
        }

        v34 = a3[1];
        if (v34 <= v27)
        {
          goto LABEL_221;
        }

        v4 = *(v169 + 32 * v33 + 16);
        v153 = v27;
        v161 = a2[79];
        v155 = re::DataArray<re::MeshInstance>::get(v161 + 72, *(*a3 + 8 * v27));
        v10 = a2[76];
        v184 = 0;
        v185 = 0;
        v186 = 0;
        if (v10)
        {
          break;
        }

        v36 = 0;
        v13 = v185;
LABEL_44:
        if (v13 <= v10)
        {
          goto LABEL_222;
        }

        *(v186 + 4 * v10) = v36;
        v180[1] = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v40 = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v180, v36);
        ++v182;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v41 = re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v175, v36);
        v13 = ++v178;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v10 = a2[76];
        if (v10 <= v4)
        {
          goto LABEL_226;
        }

        v159 = v13;
        v42 = re::DataArray<re::MeshModel>::get(v161 + 8, *(a2[78] + 8 * v4));
        v44 = (v42 + 18);
        v43 = v42[18];
        if (v43)
        {
          v158 = *(v43 + 64);
          if (v158)
          {
            v45 = 0;
            v166 = (v42 + 18);
            v157 = v4;
            while (1)
            {
              v46 = re::BlendShapeModelUtil::blendShapeTargetCountForGroup(v44, v45);
              memset(v192, 0, 36);
              *&v192[36] = 0x7FFFFFFFLL;
              v167 = v45;
              v160 = v46;
              if (v46)
              {
                break;
              }

LABEL_66:
              v58 = v177;
              v163 = v177;
              if (v177)
              {
                v14 = 0;
                v165 = v179;
                v164 = *&v192[28];
                v4 = *&v192[32];
                v10 = *&v192[16];
                v162 = v177;
                do
                {
                  if (v14 == v58)
                  {
                    goto LABEL_171;
                  }

                  v59 = v165 + 48 * v14;
                  if (*(v59 + 28) == v164)
                  {
                    if (!v4)
                    {
LABEL_92:
                      v4 = v157;
                      v44 = v166;
                      LODWORD(v45) = v167;
                      goto LABEL_104;
                    }

                    v60 = 0;
                    while (1)
                    {
                      if ((*(v10 + 24 * v60) & 0x80000000) != 0)
                      {
                        v61 = *(v59 + 24);
                        if (!v61)
                        {
                          break;
                        }

                        v13 = v10 + 24 * v60;
                        v62 = 0xBF58476D1CE4E5B9 * ((*(v13 + 8) >> 31) ^ (*(v13 + 8) >> 1));
                        v63 = *(*(v59 + 8) + 4 * (((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) ^ ((0x94D049BB133111EBLL * (v62 ^ (v62 >> 27))) >> 31)) % v61));
                        if (v63 == 0x7FFFFFFF)
                        {
                          break;
                        }

                        v64 = *(v59 + 16);
                        while (1)
                        {
                          v65 = v64 + 24 * v63;
                          v47 = re::StringID::operator==((v65 + 8), (v13 + 8));
                          if (v47)
                          {
                            break;
                          }

                          v63 = *(v64 + 24 * v63) & 0x7FFFFFFF;
                          if (v63 == 0x7FFFFFFF)
                          {
                            goto LABEL_82;
                          }
                        }

                        v47 = re::StringID::operator==((v65 + 8), (v13 + 8));
                        if (!v47)
                        {
                          break;
                        }
                      }

                      if (++v60 == v4)
                      {
                        goto LABEL_92;
                      }
                    }
                  }

LABEL_82:
                  ++v14;
                  v58 = v162;
                  v44 = v166;
                  v45 = v167;
                }

                while (v14 != v163);
              }

              v188 = 0;
              v189 = 0;
              v190 = 0;
              if (v160)
              {
                v10 = 0;
                v14 = 0;
                while (1)
                {
                  re::BlendShapeModelUtil::blendShapeTargetName(&v187, v44, v45, v14);
                  v13 = v189;
                  if (v189 <= v14)
                  {
                    break;
                  }

                  v66 = re::StringID::operator=((v190 + v10), &v187);
                  if (v187)
                  {
                    if (v187)
                    {
                    }
                  }

                  ++v14;
                  v10 += 16;
                  if (v160 == v14)
                  {
                    goto LABEL_90;
                  }
                }

                v191 = 0;
                v204 = 0u;
                v205 = 0u;
                v202 = 0u;
                v203 = 0u;
                v201 = 0u;
                v95 = MEMORY[0x1E69E9C10];
                v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v194 = 136315906;
                *&v194[4] = "operator[]";
                v195 = 1024;
                if (v96)
                {
                  v97 = 3;
                }

                else
                {
                  v97 = 2;
                }

                v196 = 468;
                v197 = 2048;
                v198 = v14;
                v199 = 2048;
                v200 = v13;
                _os_log_send_and_compose_impl(v97, &v191, &v201, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v147, v148);
                _os_crash_msg();
                __break(1u);
LABEL_171:
                v188 = 0;
                v204 = 0u;
                v205 = 0u;
                v202 = 0u;
                v203 = 0u;
                v201 = 0u;
                v98 = MEMORY[0x1E69E9C10];
                v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v194 = 136315906;
                *&v194[4] = "operator[]";
                v195 = 1024;
                if (v99)
                {
                  v100 = 3;
                }

                else
                {
                  v100 = 2;
                }

                v196 = 789;
                v197 = 2048;
                v198 = v58;
                v199 = 2048;
                v200 = v58;
                _os_log_send_and_compose_impl(v100, &v188, &v201, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v147, v148);
                _os_crash_msg();
                __break(1u);
LABEL_175:
                v180[0] = 0;
                v204 = 0u;
                v205 = 0u;
                v202 = 0u;
                v203 = 0u;
                v201 = 0u;
                v101 = MEMORY[0x1E69E9C10];
                v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v192 = 136315906;
                *&v192[4] = "operator[]";
                *&v192[12] = 1024;
                if (v102)
                {
                  v103 = 3;
                }

                else
                {
                  v103 = 2;
                }

                *&v192[14] = 797;
                *&v192[18] = 2048;
                *&v192[20] = v14;
                *&v192[28] = 2048;
                *&v192[30] = v13;
                _os_log_send_and_compose_impl(v103, v180, &v201, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
                _os_crash_msg();
                __break(1u);
                goto LABEL_179;
              }

LABEL_90:
              v67 = re::DynamicArray<re::FixedArray<re::StringID>>::add(v180, &v188);
              if (v58 >= v176)
              {
                v4 = v157;
                v68 = v159;
                if (v176 < v58 + 1)
                {
                  if (v175)
                  {
                    v69 = 8;
                    if (v176)
                    {
                      v69 = 2 * v176;
                    }

                    if (v69 <= v58 + 1)
                    {
                      v70 = v58 + 1;
                    }

                    else
                    {
                      v70 = v69;
                    }

                    re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v175, v70);
                    v68 = v178;
                  }

                  else
                  {
                    re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(&v175, v58 + 1);
                    v68 = v178 + 1;
                  }
                }

                v58 = v177;
              }

              else
              {
                v4 = v157;
                v68 = v159;
              }

              v71 = v179 + 48 * v58;
              *v71 = 0u;
              *(v71 + 16) = 0u;
              *(v71 + 32) = 0;
              *(v71 + 36) = 0x7FFFFFFFLL;
              *v71 = *v192;
              *v192 = 0;
              v72 = *(v71 + 8);
              *(v71 + 8) = *&v192[8];
              *&v192[8] = v72;
              v73 = *(v71 + 16);
              *(v71 + 16) = *&v192[16];
              *&v192[16] = v73;
              LODWORD(v73) = *(v71 + 24);
              *(v71 + 24) = *&v192[24];
              *&v192[24] = v73;
              LODWORD(v73) = *(v71 + 28);
              *(v71 + 28) = *&v192[28];
              *&v192[28] = v73;
              LODWORD(v73) = *(v71 + 32);
              *(v71 + 32) = *&v192[32];
              *&v192[32] = v73;
              LODWORD(v73) = *(v71 + 36);
              *(v71 + 36) = *&v192[36];
              *&v192[36] = v73;
              v177 = v58 + 1;
              v159 = v68 + 1;
              v178 = v68 + 1;
              v14 = (v181 - 1);
              re::FixedArray<re::StringID>::deinit(&v188);
LABEL_104:
              v10 = v185;
              if (v185 <= v4)
              {
                goto LABEL_183;
              }

              v10 = (*(v186 + 4 * v4) + v45);
              v13 = v173;
              if (v173 <= v10)
              {
                goto LABEL_187;
              }

              *(v174 + 4 * v10) = v14;
              re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v192);
              v45 = (v45 + 1);
              if (v158 <= v45)
              {
                goto LABEL_107;
              }
            }

            v48 = 0;
            v13 = v46;
            while (2)
            {
              re::BlendShapeModelUtil::blendShapeTargetName(&v201, v44, v45, v48);
              v4 = v201;
              v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v4 >> 31) ^ (v4 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v4 >> 31) ^ (v4 >> 1))) >> 27));
              v50 = v49 ^ (v49 >> 31);
              if (*&v192[24])
              {
                v51 = v50 % *&v192[24];
                v52 = *(*&v192[8] + 4 * v51);
                if (v52 != 0x7FFFFFFF)
                {
                  v53 = *&v192[16];
                  v54 = *(&v201 + 1);
                  while (1)
                  {
                    v55 = v53 + 24 * v52;
                    v57 = *(v55 + 8);
                    v56 = v55 + 8;
                    if ((v57 ^ v4) <= 1)
                    {
                      v47 = *(v56 + 8);
                      if (v47 == v54)
                      {
                        break;
                      }

                      v47 = strcmp(v47, v54);
                      if (!v47)
                      {
                        break;
                      }
                    }

                    v52 = *(v53 + 24 * v52) & 0x7FFFFFFF;
                    if (v52 == 0x7FFFFFFF)
                    {
                      v44 = v166;
                      goto LABEL_59;
                    }
                  }

                  v44 = v166;
                  v45 = v167;
                  if ((v4 & 1) == 0)
                  {
LABEL_65:
                    if (++v48 == v160)
                    {
                      goto LABEL_66;
                    }

                    continue;
                  }

LABEL_62:
                  if (v201)
                  {
                  }

                  goto LABEL_65;
                }

LABEL_59:
                v45 = v167;
              }

              else
              {
                LODWORD(v51) = 0;
              }

              break;
            }

            v47 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(v192, v51, v50, &v201, &v201);
            ++*&v192[40];
            v4 = v201;
            if ((v201 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_62;
          }
        }

LABEL_107:
        v189 = 0;
        v190 = 0;
        v188 = 0;
        v10 = v185;
        if (v185 <= v4)
        {
          goto LABEL_230;
        }

        v74 = *(v186 + 4 * v4);
        v75 = re::DataArray<re::MeshModel>::get(v161 + 8, *&v155[1].var0);
        v76 = *(v75 + 56);
        if (v76)
        {
          v77 = v75;
          v14 = 0;
          v4 = 488;
          do
          {
            v78 = v77[18];
            if (v78)
            {
              if (*(v78 + 40) > v14)
              {
                v79 = *(*(v78 + 48) + 4 * v14);
                if (v79 != -1)
                {
                  v10 = v79 + v74;
                  v13 = v173;
                  if (v173 <= v79 + v74)
                  {
                    goto LABEL_196;
                  }

                  v10 = *(v174 + 4 * v10);
                  v13 = v189;
                  if (v189 <= v10)
                  {
                    goto LABEL_200;
                  }

                  v80 = *(v190 + 4 * v10);
                  if (v80 == -1)
                  {
                    v13 = v181;
                    if (v181 <= v10)
                    {
                      goto LABEL_212;
                    }

                    v81 = v183;
                    v82 = *(v152 + 2);
                    if (v82 >= *(v152 + 1))
                    {
                      re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(v152, v82 + 1);
                      v82 = *(v152 + 2);
                    }

                    re::FixedArray<re::StringID>::FixedArray((*(v152 + 4) + 24 * v82), (v81 + 24 * v10));
                    v83 = *(v152 + 2) + 1;
                    *(v152 + 2) = v83;
                    ++*(v152 + 6);
                    v13 = v189;
                    if (v189 <= v10)
                    {
                      goto LABEL_216;
                    }

                    v80 = v83 - 1;
                    *(v190 + 4 * v10) = v83 - 1;
                  }

                  v192[0] = 1;
                  v13 = v192;
                  re::StringID::StringID(&v192[8], v155);
                  v10 = v77[7];
                  if (v10 <= v14)
                  {
                    goto LABEL_204;
                  }

                  re::StringID::StringID(&v192[24], (v77[8] + v4));
                  *&v192[40] = v80;
                  v193 = 0;
                  v84 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(v154, v192);
                  if (v192[24])
                  {
                    if (v192[24])
                    {
                    }
                  }

                  *&v192[24] = 0;
                  *&v192[32] = &str_67;
                  if (v192[8])
                  {
                    if (v192[8])
                    {
                    }
                  }

                  v10 = v77[7];
                  if (v10 <= v14)
                  {
                    goto LABEL_208;
                  }

                  v86 = (v77[8] + v4);
                  v87 = v86[1];
                  if (*v86 <= 1uLL && v87 && !*v87)
                  {
                    v88 = re::DynamicString::format(&v201, "%s/%lu", v85, v77[1], v14);
                  }

                  else
                  {
                    v147 = v14;
                    v88 = re::DynamicString::format(&v201, "%s/%s-%lu", v85, v77[1], v87);
                  }

                  if (BYTE8(v201))
                  {
                    v10 = v202;
                  }

                  else
                  {
                    v10 = &v201 + 9;
                  }

                  *v192 = 0;
                  *&v192[8] = &str_67;
                  v89 = re::DynamicArray<re::StringID>::add(v25, v192);
                  if (v192[0])
                  {
                    if (v192[0])
                    {
                    }
                  }

                  if (v201 && (BYTE8(v201) & 1) != 0)
                  {
                    (*(*v201 + 40))();
                  }
                }
              }
            }

            ++v14;
            v4 += 544;
          }

          while (v76 != v14);
        }

        if (v188)
        {
          v90 = v189 == 0;
        }

        else
        {
          v90 = 1;
        }

        if (!v90)
        {
          (*(*v188 + 40))();
        }

        v13 = 0xBF58476D1CE4E5B9;
        if (v172 && v173)
        {
          (*(*v172 + 40))();
        }

        v91 = v175;
        a2 = v149;
        if (v175)
        {
          v92 = v179;
          if (v179)
          {
            if (v177)
            {
              v93 = 48 * v177;
              v10 = v179;
              do
              {
                re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v10);
                v10 += 48;
                v93 -= 48;
              }

              while (v93);
            }

            (*(*v91 + 40))(v91, v92);
          }
        }

        re::DynamicArray<re::FixedArray<re::StringID>>::deinit(v180);
        if (v184)
        {
          v94 = v185 == 0;
        }

        else
        {
          v94 = 1;
        }

        if (!v94)
        {
          (*(*v184 + 40))();
        }

        v27 = v153 + 1;
        a3 = v150;
        if (v153 + 1 == v151)
        {
          goto LABEL_165;
        }
      }

      v14 = 0;
      v36 = 0;
      v37 = 1;
      while (1)
      {
        v13 = a2[76];
        if (v13 <= v14)
        {
          goto LABEL_175;
        }

        v35 = re::DataArray<re::MeshModel>::get(v161 + 8, *(a2[78] + 8 * v14));
        v13 = v185;
        if (v185 <= v14)
        {
          break;
        }

        *(v186 + 4 * v14) = v36;
        v38 = *(v35 + 18);
        if (v38)
        {
          LODWORD(v38) = *(v38 + 64);
        }

        v36 += v38;
        v14 = v37;
        if (v10 <= v37++)
        {
          goto LABEL_44;
        }
      }

LABEL_179:
      v180[0] = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v14;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v106, v180, &v201, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_183:
      v188 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v194 = 136315906;
      *&v194[4] = "operator[]";
      v195 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v196 = 468;
      v197 = 2048;
      v198 = v4;
      v199 = 2048;
      v200 = v10;
      _os_log_send_and_compose_impl(v109, &v188, &v201, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_187:
      v188 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v194 = 136315906;
      *&v194[4] = "operator[]";
      v195 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v196 = 468;
      v197 = 2048;
      v198 = v10;
      v199 = 2048;
      v200 = v13;
      _os_log_send_and_compose_impl(v112, &v188, &v201, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_191:
      v180[0] = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      *&v192[14] = 797;
      *&v192[18] = 2048;
      *&v192[20] = v13;
      *&v192[28] = 2048;
      *&v192[30] = v14;
      _os_log_send_and_compose_impl(v114, v180, &v201, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_195:
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v22);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v141, v144);
      __break(1u);
LABEL_196:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *&v192[14] = 476;
      *&v192[18] = 2048;
      *&v192[20] = v10;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v117, v194, &v201, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_200:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v10;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v120, v194, &v201, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_204:
      v187 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v194 = 136315906;
      *&v194[4] = "operator[]";
      v195 = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      v196 = 476;
      v197 = 2048;
      v198 = v14;
      v199 = 2048;
      v200 = v10;
      _os_log_send_and_compose_impl(v123, &v187, &v201, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_208:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *&v192[14] = 476;
      *&v192[18] = 2048;
      *&v192[20] = v14;
      *&v192[28] = 2048;
      *&v192[30] = v10;
      _os_log_send_and_compose_impl(v126, v194, &v201, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_212:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v192[14] = 797;
      *&v192[18] = 2048;
      *&v192[20] = v10;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v129, v194, &v201, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v130)
      {
        v131 = 3;
      }

      else
      {
        v131 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v10;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v131, v194, &v201, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_220:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v28);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v142, v145);
      __break(1u);
LABEL_221:
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v34);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v143, v146);
      __break(1u);
LABEL_222:
      v180[0] = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v132 = MEMORY[0x1E69E9C10];
      v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v133)
      {
        v134 = 3;
      }

      else
      {
        v134 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v10;
      *&v192[28] = 2048;
      *&v192[30] = v13;
      _os_log_send_and_compose_impl(v134, v180, &v201, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_226:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v135 = MEMORY[0x1E69E9C10];
      v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 2;
      }

      *&v192[14] = 797;
      *&v192[18] = 2048;
      *&v192[20] = v4;
      *&v192[28] = 2048;
      *&v192[30] = v10;
      _os_log_send_and_compose_impl(v137, v194, &v201, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_230:
      *v194 = 0;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v138 = MEMORY[0x1E69E9C10];
      v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v192 = 136315906;
      *&v192[4] = "operator[]";
      *&v192[12] = 1024;
      if (v139)
      {
        v140 = 3;
      }

      else
      {
        v140 = 2;
      }

      *&v192[14] = 468;
      *&v192[18] = 2048;
      *&v192[20] = v4;
      *&v192[28] = 2048;
      *&v192[30] = v10;
      _os_log_send_and_compose_impl(v140, v194, &v201, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v147, v148);
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) ", "modelIndex != nullptr", "init", 231);
      _os_crash("assertion failure: (modelIndex != nullptr) ");
      __break(1u);
    }

LABEL_165:
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v168);
  }
}

uint64_t re::DynamicArray<re::FixedArray<re::StringID>>::deinit(uint64_t a1)
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
        v5 = 24 * v4;
        do
        {
          re::FixedArray<re::StringID>::deinit(v3);
          v3 += 3;
          v5 -= 24;
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

void *re::DynamicArray<re::DynamicArray<float>>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 40;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v7 + 24) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::BlendShapeWeightsDefinitionAsset::constructBlendShapeWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = (*(a1 + 32) + 8);
    v8 = (*(a3 + 32) + 8);
    while (1)
    {
      v10 = *v8;
      v8 += 4;
      v9 = v10;
      v11 = *v7;
      v7 += 3;
      if (v9 != v11)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    re::DynamicArray<re::BlendShapeWeights>::resize(a3, v6);
    v12 = 1;
    if (v6)
    {
      goto LABEL_9;
    }

    return;
  }

LABEL_6:
  v12 = 0;
  if (v6)
  {
LABEL_9:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(a1 + 16);
      if (v16 <= v15)
      {
        break;
      }

      re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>((*(a1 + 32) + v13), &v30);
      v16 = *(a3 + 16);
      if (v12)
      {
        if (v16 <= v15)
        {
          goto LABEL_26;
        }

        re::FixedArray<CoreIKTransform>::deinit((*(a3 + 32) + v14));
        v16 = *(a3 + 16);
        if (v16 <= v15)
        {
          goto LABEL_34;
        }

        re::BlendShapeWeights::init((*(a3 + 32) + v14), &v30);
      }

      else
      {
        if (v16 <= v15)
        {
          goto LABEL_30;
        }

        v17 = (*(a3 + 32) + v14);
        if (!v17[3])
        {
          re::BlendShapeWeights::reset(v17, &v30);
        }
      }

      if (v30)
      {
      }

      ++v15;
      v14 += 32;
      v13 += 24;
      if (v6 == v15)
      {
        return;
      }
    }

    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v35 = 797;
    v36 = 2048;
    v37 = v15;
    v38 = 2048;
    v39 = v16;
    _os_log_send_and_compose_impl(v20, &v31, &v40, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v35 = 789;
    v36 = 2048;
    v37 = v15;
    v38 = 2048;
    v39 = v16;
    _os_log_send_and_compose_impl(v23, &v31, &v40, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
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
    v37 = v15;
    v38 = 2048;
    v39 = v16;
    _os_log_send_and_compose_impl(v26, &v31, &v40, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v35 = 789;
    v36 = 2048;
    v37 = v15;
    v38 = 2048;
    v39 = v16;
    _os_log_send_and_compose_impl(v29, &v31, &v40, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
  }
}

void re::DynamicArray<re::BlendShapeWeights>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      re::BlendShapeWeights::~BlendShapeWeights((*(a1 + 32) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0uLL;
        v7[1] = 0uLL;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re *re::BlendShapeWeightsDefinitionAssetLoader::unloadAsset(re *this, uint64_t a2)
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    re::DynamicArray<re::StringID>::deinit(a2 + 80);
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a2 + 40);
    re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

uint64_t re::BlendShapeWeightsDefinitionAssetLoader::introspectionType(re::BlendShapeWeightsDefinitionAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE195D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195D08))
  {
    qword_1EE195D00 = re::internal::getOrCreateInfo("BlendShapeWeightsDefinitionAsset", re::allocInfo_BlendShapeWeightsDefinitionAsset, re::initInfo_BlendShapeWeightsDefinitionAsset, &unk_1EE195CF8, 0);
    __cxa_guard_release(&qword_1EE195D08);
  }

  return qword_1EE195D00;
}

void *re::allocInfo_BlendShapeWeightsMeshMap(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CD0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195D80, "BlendShapeWeightsMeshMap");
    __cxa_guard_release(&qword_1EE195CD0);
  }

  return &unk_1EE195D80;
}

void re::initInfo_BlendShapeWeightsMeshMap(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xF3E33F2C32AF1988;
  v20[1] = "BlendShapeWeightsMeshMap";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE195CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CD8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_MeshIdentifierAsset(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "meshIdentifier";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE195D18 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "blendShapeWeightsIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE195D20 = v18;
    __cxa_guard_release(&qword_1EE195CD8);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195D18;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsMeshMap>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsMeshMap>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsMeshMap>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsMeshMap>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::BlendShapeWeightsMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::BlendShapeWeightsMeshMap>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::BlendShapeWeightsMeshMap>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeWeightsMeshMap>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void *re::allocInfo_BlendShapeWeightsDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE195CE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE195E10, "BlendShapeWeightsDefinitionAsset");
    __cxa_guard_release(&qword_1EE195CE8);
  }

  return &unk_1EE195E10;
}

void re::initInfo_BlendShapeWeightsDefinitionAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0x4D45F6BDEA9529E4;
  v18[1] = "BlendShapeWeightsDefinitionAsset";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE195CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE195CF0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "blendShapeWeightNames";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195D28 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsMeshMap>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "blendShapeWeightsMeshMapping";
    *(v12 + 16) = &qword_1EE195D40;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x2800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE195D30 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<re::DynamicArray<re::StringID>>::get(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "blendShapeNames";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x5000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE195D38 = v16;
    __cxa_guard_release(&qword_1EE195CF0);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE195D28;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsDefinitionAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info) = &unk_1F5CC3A90;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info, 0);
    qword_1ECEF5878 = 0x2800000003;
    dword_1ECEF5880 = v8;
    word_1ECEF5884 = 0;
    *&xmmword_1ECEF5888 = 0;
    *(&xmmword_1ECEF5888 + 1) = 0xFFFFFFFFLL;
    qword_1ECEF5898 = v7;
    unk_1ECEF58A0 = 0;
    re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info = &unk_1F5CC3A90;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1ECEF5888 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::DynamicArray<re::FixedArray<re::StringID>>>::get(BOOL)::info;
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeightsMeshMap>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE195D10, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE195D10);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE195D40);
      qword_1EE195D40 = &unk_1F5CC3B28;
      __cxa_guard_release(&qword_1EE195D10);
    }
  }

  if ((_MergedGlobals_71 & 1) == 0)
  {
    v1 = qword_1EE195CE0;
    if (qword_1EE195CE0 || (v1 = re::allocInfo_BlendShapeWeightsMeshMap(a1), qword_1EE195CE0 = v1, re::initInfo_BlendShapeWeightsMeshMap(v1, v2, v3, v4), (_MergedGlobals_71 & 1) == 0))
    {
      _MergedGlobals_71 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE195D40, 0);
      qword_1EE195D50 = 0x2800000003;
      dword_1EE195D58 = v5;
      word_1EE195D5C = 0;
      *&xmmword_1EE195D60 = 0;
      *(&xmmword_1EE195D60 + 1) = 0xFFFFFFFFLL;
      qword_1EE195D70 = v1;
      unk_1EE195D78 = 0;
      qword_1EE195D40 = &unk_1F5CC3B28;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE195D40);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeightsMeshMap>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE195D60 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = a3;
  *(a3 + 128) = a3 + 40;
  return result;
}

uint64_t re::internal::defaultDestruct<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::StringID>::deinit(a3 + 80);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a3);
}

double re::internal::defaultConstructV2<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1;
  *(a1 + 128) = a1 + 40;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::BlendShapeWeightsDefinitionAsset>(uint64_t a1)
{
  re::DynamicArray<re::StringID>::deinit(a1 + 80);
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::FixedArray<re::StringID>>::deinit(a1);
}

_anonymous_namespace_ *re::DynamicArray<re::FixedArray<re::StringID>>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 24 * v4);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  *a2 = 0;
  a2[1] = 0;
  v7 = v5[2];
  v5[2] = a2[2];
  a2[2] = v7;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_5, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 24 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 24 * v7) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  v13 = *(a1 + 16) + 24 * v7;
  v14 = *a5;
  *(v13 + 8) = *(v13 + 8) & 0xFFFFFFFFFFFFFFFELL | *a5 & 1;
  *(v13 + 8) = *a5 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v13 + 16) = a5[1];
  *a5 = 0;
  a5[1] = &str_67;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v15, 0, 36);
      *&v15[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v15, v4, a2);
      v5 = *v15;
      *v15 = *a1;
      *a1 = v5;
      v6 = *&v15[16];
      *&v15[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v15[24];
      *&v15[24] = *(a1 + 24);
      v7 = *&v15[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v15[16] + v10) & 0x80000000) != 0)
          {
            v12 = 0xBF58476D1CE4E5B9 * ((*(*&v15[16] + v10 + 8) >> 31) ^ (*(*&v15[16] + v10 + 8) >> 1));
            v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
            re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a1, v13 % *(a1 + 24), v13, *&v15[16] + v10 + 8, (*&v15[16] + v10 + 8));
            v9 = *&v15[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v15);
    }
  }

  else
  {
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 3;
    }
  }
}

double re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
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

_anonymous_namespace_ *re::DynamicArray<re::FixedArray<re::StringID>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<re::StringID>::deinit(v8);
          v8 += 3;
          v11 += 3;
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

void *re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::HashSet<re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = 48 * v9;
        v11 = v7;
        do
        {
          *(v11 + 8) = 0;
          *v11 = 0u;
          *(v11 + 1) = 0u;
          *(v11 + 36) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11, v8);
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v8);
          v8 += 6;
          v11 += 6;
          v10 -= 48;
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

_anonymous_namespace_ *re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::BlendShapeWeightsMeshMap>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  *(v5 + 40) = *(a2 + 40);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::BlendShapeWeightsMeshMap>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          v11[5] = *(v14 + 2);
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = (v14 + 24);
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

void *re::FixedArray<unsigned int>::init<unsigned int const&>(void *result, uint64_t a2, unint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 4 * a3, 4);
  v6[2] = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    v9 = *a4;
    do
    {
      *result = v9;
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

void re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_5, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,unsigned int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}