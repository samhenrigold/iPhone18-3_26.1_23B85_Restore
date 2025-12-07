uint64_t *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  *a2 = v2;
  a2[1] = v3;
  v5 = result[4];
  result[4] = a2[4];
  a2[4] = v5;
  *(a2 + 4) = a2[2] & 0xFFFFFFFE | result[2] & 1;
  *(result + 4) &= ~1u;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  *(a2 + 4) += 2;
  *(result + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 8 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::FixedArray<re::BindPoint>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 48 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 40) = 0;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0;
      result += 48;
      --v6;
    }

    while (v6);
  }

  *(result + 40) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  return result;
}

void re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<double>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[41];
}

float re::AnimationImpl<double>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<double>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 136, 8);
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
  *v2 = &unk_1F5CACC88;
  *(v2 + 112) = 0;
  return result;
}

BOOL re::AnimationImpl<double>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v5);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[41] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<double>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<double>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<double>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, double a7)
{
  v113 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v15 = *(a1 + 80);
  if (v15[36])
  {
    v16 = 0;
    v17 = *(a1 + 400);
    do
    {
      if (v17 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v17 + 1);
        v17 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v17++) = &v87 + v16;
      *(a1 + 400) = v17;
      ++*(a1 + 408);
      v16 += 8;
    }

    while (v16 != 24);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<double>::evaluateBlend(a1, 0, 0, 0.0);
    v18 = *(a1 + 360);
    if (v18)
    {
      v19 = *(*(a1 + 376) + 16 * v18 - 16);
      if (v19 != a6)
      {
        *a6 = *v19;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v81 = *(a1 + 312);
  v85[0] = a2;
  v85[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v82, v15 + 44);
  v22 = v15[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v22; ++i)
    {
      *&v87 = 0;
      re::DynamicArray<double>::add((v20 + 40), &v87);
      v22 = v15[39];
    }
  }

  if (v22)
  {
    for (j = 0; j < v22; ++j)
    {
      v25 = v83;
      if (v83 <= j)
      {
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v108 = 476;
        v109 = 2048;
        v110 = j;
        v111 = 2048;
        v112 = v25;
        _os_log_send_and_compose_impl(v53, &v86, &v87, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v108 = 476;
        v109 = 2048;
        v110 = v25;
        v111 = 2048;
        v112 = v8;
        _os_log_send_and_compose_impl(v56, &v86, &v87, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v108 = 476;
        v109 = 2048;
        v110 = v7;
        v111 = 2048;
        v112 = v8;
        _os_log_send_and_compose_impl(v59, &v86, &v87, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v108 = 476;
        v109 = 2048;
        v110 = v25;
        v111 = 2048;
        v112 = v22;
        _os_log_send_and_compose_impl(v62, &v86, &v87, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v108 = 789;
        v109 = 2048;
        v110 = j;
        v111 = 2048;
        v112 = v25;
        _os_log_send_and_compose_impl(v65, &v86, &v87, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_95:
        re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v77);
        __break(1u);
LABEL_96:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v108 = 789;
        v109 = 2048;
        v110 = j;
        v111 = 2048;
        v112 = v22;
        _os_log_send_and_compose_impl(v68, &v86, &v87, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v108 = 789;
        v109 = 2048;
        v110 = j;
        v111 = 2048;
        v112 = v22;
        _os_log_send_and_compose_impl(v71, &v86, &v87, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_104:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, j, v35);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v76, v78);
        __break(1u);
LABEL_105:
        v86 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v87 = 0u;
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v105 = 136315906;
        v106 = "operator[]";
        v107 = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        v108 = 789;
        v109 = 2048;
        v110 = j;
        v111 = 2048;
        v112 = v22;
        _os_log_send_and_compose_impl(v74, &v86, &v87, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v105, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
      }

      v25 = *(v84 + 8 * j);
      v8 = v15[42];
      if (v8 <= v25)
      {
        goto LABEL_79;
      }

      v7 = v25 + 1;
      if (v8 <= v25 + 1)
      {
        goto LABEL_83;
      }

      if (v22 <= v25)
      {
        goto LABEL_87;
      }

      v22 = *(v15[40] + 8 * v25);
      v26 = re::Slice<re::AnimationClock>::range(v85, *(v15[43] + 8 * v25), *(v15[43] + 8 * v7));
      v25 = *(v20 + 56);
      if (v25 <= j)
      {
        goto LABEL_91;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_95;
      }

      v29 = (*(v20 + 72) + 8 * j);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*v29 = *a4, v22[2] == 49))
      {
        (*(*v22 + 120))(v22, v26, v27, a4, a5, v29);
      }

      v22 = *(v20 + 16);
      if (v22 <= j)
      {
        goto LABEL_96;
      }

      v22 = *(v20 + 56);
      if (v22 <= j)
      {
        goto LABEL_100;
      }

      v22 = v15[39];
    }
  }

LABEL_34:
  if (v81)
  {
    v31 = 0;
    v32 = 0;
    j = 0;
    do
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_68;
      }

      v33 = re::BindPoint::valueUntyped(v21);
      v35 = *(v20 + 232);
      if (v35 <= j)
      {
        goto LABEL_104;
      }

      v36 = v33;
      v37 = *(v20 + 248);
      v22 = (v37 + v31);
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 != 6)
          {
            if (v38 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34);
        }

        else
        {
          if (v38 != 8)
          {
            if (v38 == 10)
            {
              v22 = *(v20 + 96);
              if (v22 <= j)
              {
                goto LABEL_105;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v20 + 112) + v32), v33);
            }

            else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
            {
              v43 = *(v37 + v31 + 48);
              if (v43 == "SRT" || !strcmp(v43, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v22, v36);
              }
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34);
        }

        *v46 = *v36;
      }

      else
      {
        if (*(v37 + v31 + 32) > 2u)
        {
          switch(v38)
          {
            case 3u:
              v47 = *v33;
              *re::RigDataValue::getRuntimeValue<float>(v37 + v31, v34) = v47;
              break;
            case 4u:
              v48 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
              v50 = *(v36 + 1);
              v49 = *(v36 + 2);
              *v48 = *v36;
              v48[1] = v50;
              v48[2] = v49;
              break;
            case 5u:
              v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
              v40 = *(v36 + 3);
              v42 = *v36;
              v41 = *(v36 + 1);
              v39[2] = *(v36 + 2);
              v39[3] = v40;
              *v39 = v42;
              v39[1] = v41;
              break;
          }

          goto LABEL_68;
        }

        if (v38 == 1)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
          goto LABEL_60;
        }

        if (v38 == 2)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
          *Runtime = v44;
        }
      }

LABEL_68:
      ++j;
      v32 += 24;
      v31 += 288;
      v21 = (v21 + 48);
    }

    while (v81 != j);
  }

  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  re::EvaluationContextSlices::init(&v87, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &v87);
  if (v82 && v83)
  {
    (*(*v82 + 40))();
  }
}

void re::AnimationImpl<double>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD428;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<double>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v46, &v74, &v86, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v49, &v74, &v86, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v77 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v18;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v6;
    v84 = 2048;
    v85 = v51;
    _os_log_send_and_compose_impl(v53, &v77, &v86, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<double>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v74, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v75;
    if (v75 > v6)
    {
      v6 = *(v76 + 8 * v6);
      if (v74)
      {
        (*(*v74 + 40))(v74);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v26[16] != 1 || *v26 == 2;
              if (!v30 || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v86.n128_u64[0] = v4;
              v86.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v71);
            __break(1u);
          }

LABEL_78:
          v74 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = v22;
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v78 = 136315906;
          v79 = "operator[]";
          v80 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v81 = 476;
          v82 = 2048;
          v83 = v6;
          v84 = 2048;
          v85 = v67;
          _os_log_send_and_compose_impl(v69, &v74, &v86, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v74 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v20;
        v63 = v21;
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v81 = 476;
        v82 = 2048;
        v83 = v63;
        v84 = 2048;
        v85 = v62;
        _os_log_send_and_compose_impl(v65, &v74, &v86, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v74 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = v20;
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v78 = 136315906;
      v79 = "operator[]";
      v80 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v81 = 476;
      v82 = 2048;
      v83 = v6;
      v84 = 2048;
      v85 = v58;
      _os_log_send_and_compose_impl(v60, &v74, &v86, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v81 = 468;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v56, &v74, &v86, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v86.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v86.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  v41 = *v37;
  if (*(v10 + 7))
  {
    v42 = v41 + *v34;
  }

  else
  {
    v42 = *v34 * (v11 / a4) + v41 * (1.0 - (v11 / a4));
  }

  *v39 = v42;
  v86.n128_u64[0] = v39;
  v86.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  if (v38)
  {
    v43 = *(a1 + 400);
    if (v43 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v43 + 1);
      v43 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v43) = v38;
    *(a1 + 400) = v43 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

double re::DynamicArray<double>::add(_anonymous_namespace_ *this, double *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 8 * v4) = *a2;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector2<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[48];
}

float re::AnimationImpl<re::Vector2<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::Vector2<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 136, 8);
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
  *v2 = &unk_1F5CACCE0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0;
  return result;
}

BOOL re::AnimationImpl<re::Vector2<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[48] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector2<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Vector2<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, void *a6, double a7)
{
  v115 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v89 = 0uLL;
    *&v90 = 0;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v89 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 8;
    }

    while (v15 != 24);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(a1, 0, 0, 0.0);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v82 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v83 = *(a1 + 312);
  v87[0] = a2;
  v87[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v84, v14 + 44);
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      *&v89 = 0;
      re::DynamicArray<unsigned long>::add((v19 + 40), &v89);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    a3 = 0;
    while (1)
    {
      v23 = v85;
      if (v85 <= a3)
      {
        break;
      }

      v23 = *(v86 + 8 * a3);
      v24 = v14[42];
      if (v24 <= v23)
      {
        goto LABEL_80;
      }

      v7 = v23 + 1;
      if (v24 <= v23 + 1)
      {
        goto LABEL_84;
      }

      if (v21 <= v23)
      {
        goto LABEL_88;
      }

      v21 = *(v14[40] + 8 * v23);
      v25 = re::Slice<re::AnimationClock>::range(v87, *(v14[43] + 8 * v23), *(v14[43] + 8 * v7));
      v23 = *(v19 + 56);
      if (v23 <= a3)
      {
        goto LABEL_92;
      }

      v27 = v26;
      if (!v26)
      {
        goto LABEL_96;
      }

      v28 = (*(v19 + 72) + 8 * a3);
      v29 = v25[16] != 1 || *v25 == 2;
      if (!v29 || (*v28 = *a4, v21[2] == 49))
      {
        (*(*v21 + 120))(v21, v25, v26, a4, a5, v28);
      }

      v21 = *(v19 + 16);
      if (v21 <= a3)
      {
        goto LABEL_97;
      }

      v21 = *(v19 + 56);
      if (v21 <= a3)
      {
        goto LABEL_101;
      }

      re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(v19, *(*(v19 + 32) + 8 * a3), (*(v19 + 72) + 8 * a3));
      ++a3;
      v21 = v14[39];
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v23;
    _os_log_send_and_compose_impl(v52, &v88, &v89, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v23;
    v113 = 2048;
    v114 = v24;
    _os_log_send_and_compose_impl(v55, &v88, &v89, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_84:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = v24;
    _os_log_send_and_compose_impl(v58, &v88, &v89, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v23;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v61, &v88, &v89, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v23;
    _os_log_send_and_compose_impl(v64, &v88, &v89, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    re::internal::assertLog(6, v26, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v77);
    __break(1u);
LABEL_97:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v67, &v88, &v89, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v70, &v88, &v89, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
LABEL_105:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v78);
    __break(1u);
LABEL_106:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v76, v79);
    __break(1u);
LABEL_107:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a5;
    v113 = 2048;
    v114 = a3;
    _os_log_send_and_compose_impl(v73, &v88, &v89, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v81);
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v83)
  {
    v30 = 0;
    v31 = 0;
    a5 = 0;
    do
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_68;
      }

      v32 = re::BindPoint::valueUntyped(v20);
      v34 = *(v19 + 232);
      if (v34 <= a5)
      {
        goto LABEL_105;
      }

      v35 = v32;
      v36 = *(v19 + 248);
      a3 = v36 + v30;
      v37 = *(v36 + v30 + 32);
      if (v37 > 5)
      {
        if (*(v36 + v30 + 32) <= 7u)
        {
          if (v37 != 6)
          {
            if (v37 == 7)
            {
              re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(v19, a5, v32);
            }

            goto LABEL_68;
          }

          v45 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v36 + v30, v33);
        }

        else
        {
          if (v37 != 8)
          {
            if (v37 == 10)
            {
              a3 = *(v19 + 96);
              if (a3 <= a5)
              {
                goto LABEL_107;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v31), v32);
            }

            else if (v37 == 13 && *(v36 + v30 + 40) >> 1 == 82389)
            {
              v42 = *(v36 + v30 + 48);
              if (v42 == "SRT" || !strcmp(v42, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v35);
              }
            }

            goto LABEL_68;
          }

          v45 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v36 + v30, v33);
        }

        *v45 = *v35;
      }

      else
      {
        if (*(v36 + v30 + 32) > 2u)
        {
          switch(v37)
          {
            case 3u:
              v46 = *v32;
              *re::RigDataValue::getRuntimeValue<float>(v36 + v30, v33) = v46;
              break;
            case 4u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v36 + v30, v33);
              v49 = v35[1];
              v48 = v35[2];
              *v47 = *v35;
              v47[1] = v49;
              v47[2] = v48;
              break;
            case 5u:
              v38 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v36 + v30, v33);
              v39 = v35[3];
              v41 = *v35;
              v40 = v35[1];
              v38[2] = v35[2];
              v38[3] = v39;
              *v38 = v41;
              v38[1] = v40;
              break;
          }

          goto LABEL_68;
        }

        if (v37 == 1)
        {
          v43 = *v32;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v36 + v30, v33);
          goto LABEL_60;
        }

        if (v37 == 2)
        {
          v43 = *v32;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v36 + v30, v33);
LABEL_60:
          *Runtime = v43;
        }
      }

LABEL_68:
      ++a5;
      v31 += 24;
      v30 += 288;
      v20 = (v20 + 48);
    }

    while (v83 != a5);
  }

  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  re::EvaluationContextSlices::init(&v89, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v89);
  if (!*(v19 + 272))
  {
    goto LABEL_106;
  }

  *v82 = *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*(v19 + 288), v50);
  if (v84 && v85)
  {
    (*(*v84 + 40))();
  }
}

void re::AnimationImpl<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD508;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v46, &v74, &v86, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v49, &v74, &v86, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v77 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v18;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v6;
    v84 = 2048;
    v85 = v51;
    _os_log_send_and_compose_impl(v53, &v77, &v86, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v74, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v75;
    if (v75 > v6)
    {
      v6 = *(v76 + 8 * v6);
      if (v74)
      {
        (*(*v74 + 40))(v74);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v26[16] != 1 || *v26 == 2;
              if (!v30 || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v86.n128_u64[0] = v4;
              v86.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v71);
            __break(1u);
          }

LABEL_78:
          v74 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = v22;
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v78 = 136315906;
          v79 = "operator[]";
          v80 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v81 = 476;
          v82 = 2048;
          v83 = v6;
          v84 = 2048;
          v85 = v67;
          _os_log_send_and_compose_impl(v69, &v74, &v86, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v74 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v20;
        v63 = v21;
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v81 = 476;
        v82 = 2048;
        v83 = v63;
        v84 = 2048;
        v85 = v62;
        _os_log_send_and_compose_impl(v65, &v74, &v86, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v74 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = v20;
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v78 = 136315906;
      v79 = "operator[]";
      v80 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v81 = 476;
      v82 = 2048;
      v83 = v6;
      v84 = 2048;
      v85 = v58;
      _os_log_send_and_compose_impl(v60, &v74, &v86, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v81 = 468;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v56, &v74, &v86, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v86.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v86.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  v41 = *v37;
  if (*(v10 + 7))
  {
    v42 = *v34;
  }

  else
  {
    v41 = vmul_n_f32(v41, 1.0 - (v11 / a4));
    v42 = vmul_n_f32(*v34, v11 / a4);
  }

  *v39 = vadd_f32(v41, v42);
  v86.n128_u64[0] = v39;
  v86.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  if (v38)
  {
    v43 = *(a1 + 400);
    if (v43 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v43 + 1);
      v43 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v43) = v38;
    *(a1 + 400) = v43 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

void *re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector3<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[47];
}

float re::AnimationImpl<re::Vector3<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::Vector3<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
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
  *v2 = &unk_1F5CACD38;
  *(v2 + 112) = 0;
  *(v2 + 144) = 0u;
  return result;
}

BOOL re::AnimationImpl<re::Vector3<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[47] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector3<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Vector3<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v115 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v89 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 16;
    }

    while (v15 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(a1, 0, 0, 0.0);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v81 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v83 = *(a1 + 312);
  v87[0] = a2;
  v87[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v84, v14 + 44);
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      v89 = 0u;
      re::DynamicArray<re::Vector3<float>>::add((v19 + 40), &v89);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    v23 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v85;
      if (v85 <= a3)
      {
        break;
      }

      v24 = *(v86 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v24)
      {
        goto LABEL_79;
      }

      v7 = v24 + 1;
      if (v8 <= v24 + 1)
      {
        goto LABEL_83;
      }

      if (v21 <= v24)
      {
        goto LABEL_87;
      }

      v25 = *(v14[40] + 8 * v24);
      v26 = re::Slice<re::AnimationClock>::range(v87, *(v14[43] + 8 * v24), *(v14[43] + 8 * v7));
      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_91;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_95;
      }

      v29 = *(v19 + 72);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*(v29 + v23) = *a4, v25[2] == 49))
      {
        (*(*v25 + 120))(v25, v26, v27, a4, a5, v29 + v23);
      }

      v7 = *(v19 + 16);
      if (v7 <= a3)
      {
        goto LABEL_96;
      }

      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_100;
      }

      re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(v19, *(*(v19 + 32) + 8 * a3++), (*(v19 + 72) + v23));
      v21 = v14[39];
      v23 += 16;
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v52, &v88, &v89, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v55, &v88, &v89, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v57, &v88, &v89, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v60, &v88, &v89, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v63, &v88, &v89, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_95:
    re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v76);
    __break(1u);
LABEL_96:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v66, &v88, &v89, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v69, &v88, &v89, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v77);
    __break(1u);
LABEL_105:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v78);
    __break(1u);
LABEL_106:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = a3;
    _os_log_send_and_compose_impl(v72, &v88, &v89, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v83)
  {
    v31 = 0;
    v32 = 0;
    v7 = 0;
    while (1)
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_67;
      }

      v33 = re::BindPoint::valueUntyped(v20);
      v35 = *(v19 + 232);
      if (v35 <= v7)
      {
        goto LABEL_104;
      }

      v36 = v33;
      v37 = *(v19 + 248);
      a3 = v37 + v31;
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 == 6)
          {
            *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34) = *v33;
          }

          else if (v38 == 7)
          {
            *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
          }
        }

        else if (v38 == 8)
        {
          re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(v19, v7, v33);
        }

        else if (v38 == 10)
        {
          a3 = *(v19 + 96);
          if (a3 <= v7)
          {
            goto LABEL_106;
          }

          re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v32), v33);
        }

        else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
        {
          v43 = *(v37 + v31 + 48);
          if (v43 == "SRT" || !strcmp(v43, "SRT"))
          {
            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v36);
          }
        }

        goto LABEL_67;
      }

      if (*(v37 + v31 + 32) > 2u)
      {
        switch(v38)
        {
          case 3u:
            v46 = *v33;
            *re::RigDataValue::getRuntimeValue<float>(v37 + v31, v34) = v46;
            break;
          case 4u:
            v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
            v49 = v36[1];
            v48 = v36[2];
            *v47 = *v36;
            v47[1] = v49;
            v47[2] = v48;
            break;
          case 5u:
            v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
            v40 = v36[3];
            v42 = *v36;
            v41 = v36[1];
            v39[2] = v36[2];
            v39[3] = v40;
            *v39 = v42;
            v39[1] = v41;
            break;
        }

        goto LABEL_67;
      }

      if (v38 == 1)
      {
        break;
      }

      if (v38 == 2)
      {
        v44 = *v33;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
        *Runtime = v44;
      }

LABEL_67:
      ++v7;
      v32 += 24;
      v31 += 288;
      v20 = (v20 + 48);
      if (v83 == v7)
      {
        goto LABEL_68;
      }
    }

    v44 = *v33;
    Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
    goto LABEL_60;
  }

LABEL_68:
  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  re::EvaluationContextSlices::init(&v89, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v89);
  if (!*(v19 + 272))
  {
    goto LABEL_105;
  }

  *v81 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(v19 + 288), v50);
  if (v84 && v85)
  {
    (*(*v84 + 40))();
  }
}

void re::AnimationImpl<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD5E8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v46, &v74, &v86, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v49, &v74, &v86, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v77 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v18;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v6;
    v84 = 2048;
    v85 = v51;
    _os_log_send_and_compose_impl(v53, &v77, &v86, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v74, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v75;
    if (v75 > v6)
    {
      v6 = *(v76 + 8 * v6);
      if (v74)
      {
        (*(*v74 + 40))(v74);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v26[16] != 1 || *v26 == 2;
              if (!v30 || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v86.n128_u64[0] = v4;
              v86.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v71);
            __break(1u);
          }

LABEL_78:
          v74 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = v22;
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v78 = 136315906;
          v79 = "operator[]";
          v80 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v81 = 476;
          v82 = 2048;
          v83 = v6;
          v84 = 2048;
          v85 = v67;
          _os_log_send_and_compose_impl(v69, &v74, &v86, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v74 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v20;
        v63 = v21;
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v81 = 476;
        v82 = 2048;
        v83 = v63;
        v84 = 2048;
        v85 = v62;
        _os_log_send_and_compose_impl(v65, &v74, &v86, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v74 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = v20;
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v78 = 136315906;
      v79 = "operator[]";
      v80 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v81 = 476;
      v82 = 2048;
      v83 = v6;
      v84 = 2048;
      v85 = v58;
      _os_log_send_and_compose_impl(v60, &v74, &v86, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v81 = 468;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v56, &v74, &v86, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v86.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v86.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  v41 = *v37;
  if (*(v10 + 7))
  {
    v42 = vaddq_f32(v41, *v34);
  }

  else
  {
    v42 = vmlaq_n_f32(vmulq_n_f32(*v34, v11 / a4), v41, 1.0 - (v11 / a4));
  }

  *v39 = v42;
  v86.n128_u64[0] = v39;
  v86.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  if (v38)
  {
    v43 = *(a1 + 400);
    if (v43 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v43 + 1);
      v43 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v43) = v38;
    *(a1 + 400) = v43 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

_OWORD *re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector4<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[46];
}

float re::AnimationImpl<re::Vector4<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::Vector4<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
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
  *v2 = &unk_1F5CACD90;
  *(v2 + 112) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  return result;
}

BOOL re::AnimationImpl<re::Vector4<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[46] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector4<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Vector4<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v114 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v88 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 16;
    }

    while (v15 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(a1, 0, 0, 0.0);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v82 = *(a1 + 312);
  v86[0] = a2;
  v86[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v83, v14 + 44);
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      v88 = 0uLL;
      re::DynamicArray<re::Vector4<float>>::add((v19 + 40), &v88);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    v23 = 0;
    for (j = 0; j < v21; ++j)
    {
      v25 = v84;
      if (v84 <= j)
      {
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v109 = 476;
        v110 = 2048;
        v111 = j;
        v112 = 2048;
        v113 = v25;
        _os_log_send_and_compose_impl(v53, &v87, &v88, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v109 = 476;
        v110 = 2048;
        v111 = v8;
        v112 = 2048;
        v113 = v7;
        _os_log_send_and_compose_impl(v56, &v87, &v88, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v109 = 476;
        v110 = 2048;
        v111 = v25;
        v112 = 2048;
        v113 = v7;
        _os_log_send_and_compose_impl(v59, &v87, &v88, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v109 = 476;
        v110 = 2048;
        v111 = v8;
        v112 = 2048;
        v113 = v21;
        _os_log_send_and_compose_impl(v62, &v87, &v88, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = j;
        v112 = 2048;
        v113 = v25;
        _os_log_send_and_compose_impl(v65, &v87, &v88, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_95:
        re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v77);
        __break(1u);
LABEL_96:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = j;
        v112 = 2048;
        v113 = v25;
        _os_log_send_and_compose_impl(v68, &v87, &v88, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = j;
        v112 = 2048;
        v113 = v25;
        _os_log_send_and_compose_impl(v71, &v87, &v88, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
LABEL_104:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, j, v35);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v76, v78);
        __break(1u);
LABEL_105:
        v87 = 0;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v88 = 0u;
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v106 = 136315906;
        v107 = "operator[]";
        v108 = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = j;
        v112 = 2048;
        v113 = v21;
        _os_log_send_and_compose_impl(v74, &v87, &v88, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v106, 38, v79, v80);
        _os_crash_msg();
        __break(1u);
      }

      v8 = *(v85 + 8 * j);
      v7 = v14[42];
      if (v7 <= v8)
      {
        goto LABEL_79;
      }

      v25 = v8 + 1;
      if (v7 <= v8 + 1)
      {
        goto LABEL_83;
      }

      if (v21 <= v8)
      {
        goto LABEL_87;
      }

      v21 = *(v14[40] + 8 * v8);
      v26 = re::Slice<re::AnimationClock>::range(v86, *(v14[43] + 8 * v8), *(v14[43] + 8 * v25));
      v25 = *(v19 + 56);
      if (v25 <= j)
      {
        goto LABEL_91;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_95;
      }

      v29 = *(v19 + 72);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*(v29 + v23) = *a4, v21[2] == 49))
      {
        (*(*v21 + 120))(v21, v26, v27, a4, a5, v29 + v23);
      }

      v25 = *(v19 + 16);
      if (v25 <= j)
      {
        goto LABEL_96;
      }

      v25 = *(v19 + 56);
      if (v25 <= j)
      {
        goto LABEL_100;
      }

      v21 = v14[39];
      v23 += 16;
    }
  }

LABEL_34:
  if (v82)
  {
    v31 = 0;
    v32 = 0;
    j = 0;
    do
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_68;
      }

      v33 = re::BindPoint::valueUntyped(v20);
      v35 = *(v19 + 232);
      if (v35 <= j)
      {
        goto LABEL_104;
      }

      v36 = v33;
      v37 = *(v19 + 248);
      v21 = (v37 + v31);
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 != 6)
          {
            if (v38 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34);
        }

        else
        {
          if (v38 != 8)
          {
            if (v38 == 10)
            {
              v21 = *(v19 + 96);
              if (v21 <= j)
              {
                goto LABEL_105;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v32), v33);
            }

            else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
            {
              v43 = *(v37 + v31 + 48);
              if (v43 == "SRT" || !strcmp(v43, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v21, v36);
              }
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34);
        }

        *v46 = *v36;
      }

      else
      {
        if (*(v37 + v31 + 32) > 2u)
        {
          switch(v38)
          {
            case 3u:
              v47 = *v33;
              *re::RigDataValue::getRuntimeValue<float>(v37 + v31, v34) = v47;
              break;
            case 4u:
              v48 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
              v50 = *(v36 + 1);
              v49 = *(v36 + 2);
              *v48 = *v36;
              v48[1] = v50;
              v48[2] = v49;
              break;
            case 5u:
              v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
              v40 = *(v36 + 3);
              v42 = *v36;
              v41 = *(v36 + 1);
              v39[2] = *(v36 + 2);
              v39[3] = v40;
              *v39 = v42;
              v39[1] = v41;
              break;
          }

          goto LABEL_68;
        }

        if (v38 == 1)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
          goto LABEL_60;
        }

        if (v38 == 2)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
          *Runtime = v44;
        }
      }

LABEL_68:
      ++j;
      v32 += 24;
      v31 += 288;
      v20 = (v20 + 48);
    }

    while (v82 != j);
  }

  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  re::EvaluationContextSlices::init(&v88, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v88);
  if (v83 && v84)
  {
    (*(*v83 + 40))();
  }
}

void re::AnimationImpl<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector4<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD6C8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v46, &v74, &v86, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v49, &v74, &v86, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v77 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = v18;
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v81 = 476;
    v82 = 2048;
    v83 = v6;
    v84 = 2048;
    v85 = v51;
    _os_log_send_and_compose_impl(v53, &v77, &v86, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<re::Vector4<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v74, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v75;
    if (v75 > v6)
    {
      v6 = *(v76 + 8 * v6);
      if (v74)
      {
        (*(*v74 + 40))(v74);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v26[16] != 1 || *v26 == 2;
              if (!v30 || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v86.n128_u64[0] = v4;
              v86.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v70, v71);
            __break(1u);
          }

LABEL_78:
          v74 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v86 = 0u;
          v66 = MEMORY[0x1E69E9C10];
          v67 = v22;
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v78 = 136315906;
          v79 = "operator[]";
          v80 = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          v81 = 476;
          v82 = 2048;
          v83 = v6;
          v84 = 2048;
          v85 = v67;
          _os_log_send_and_compose_impl(v69, &v74, &v86, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v74 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = v20;
        v63 = v21;
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v81 = 476;
        v82 = 2048;
        v83 = v63;
        v84 = 2048;
        v85 = v62;
        _os_log_send_and_compose_impl(v65, &v74, &v86, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v74 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = v20;
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v78 = 136315906;
      v79 = "operator[]";
      v80 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v81 = 476;
      v82 = 2048;
      v83 = v6;
      v84 = 2048;
      v85 = v58;
      _os_log_send_and_compose_impl(v60, &v74, &v86, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v74 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v81 = 468;
    v82 = 2048;
    v83 = v4;
    v84 = 2048;
    v85 = v6;
    _os_log_send_and_compose_impl(v56, &v74, &v86, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v78, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v86.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v86.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  v41 = *v37;
  if (*(v10 + 7))
  {
    v42 = *v34;
  }

  else
  {
    v41 = vmulq_n_f32(v41, 1.0 - (v11 / a4));
    v42 = vmulq_n_f32(*v34, v11 / a4);
  }

  *v39 = vaddq_f32(v41, v42);
  v86.n128_u64[0] = v39;
  v86.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v86);
  if (v38)
  {
    v43 = *(a1 + 400);
    if (v43 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v43 + 1);
      v43 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v43) = v38;
    *(a1 + 400) = v43 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

__n128 re::DynamicArray<re::Vector4<float>>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Vector4<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Vector4<float>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Vector4<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Vector4<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Vector4<float>>::setCapacity(void *result, unint64_t a2)
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
          result = (*(*result + 32))(result, 16 * a2, 16);
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
        result = re::DynamicArray<re::Vector4<float>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Quaternion<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[245];
}

float re::AnimationImpl<re::Quaternion<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::Quaternion<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACDE8;
  *(v2 + 112) = 0;
  result = 0.0;
  *(v2 + 144) = xmmword_1E30474D0;
  return result;
}

BOOL re::AnimationImpl<re::Quaternion<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[245] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Quaternion<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Quaternion<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v115 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    memset_pattern16(&__b, &xmmword_1E30474D0, 0x30uLL);
    v15 = 0;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &__b + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 16;
    }

    while (v15 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(a1, 0, 0, 0.0);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v81 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v83 = *(a1 + 312);
  v87[0] = a2;
  v87[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v84, v14 + 44);
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      __b = xmmword_1E30474D0;
      re::DynamicArray<re::Vector3<float>>::add((v19 + 40), &__b);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    v23 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v85;
      if (v85 <= a3)
      {
        break;
      }

      v24 = *(v86 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v24)
      {
        goto LABEL_79;
      }

      v7 = v24 + 1;
      if (v8 <= v24 + 1)
      {
        goto LABEL_83;
      }

      if (v21 <= v24)
      {
        goto LABEL_87;
      }

      v25 = *(v14[40] + 8 * v24);
      v26 = re::Slice<re::AnimationClock>::range(v87, *(v14[43] + 8 * v24), *(v14[43] + 8 * v7));
      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_91;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_95;
      }

      v29 = *(v19 + 72);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*(v29 + v23) = *a4, v25[2] == 49))
      {
        (*(*v25 + 120))(v25, v26, v27, a4, a5, v29 + v23);
      }

      v7 = *(v19 + 16);
      if (v7 <= a3)
      {
        goto LABEL_96;
      }

      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_100;
      }

      re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(v19, *(*(v19 + 32) + 8 * a3++), (*(v19 + 72) + v23));
      v21 = v14[39];
      v23 += 16;
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v52, &v88, &__b, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v55, &v88, &__b, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = v8;
    _os_log_send_and_compose_impl(v57, &v88, &__b, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v110 = 476;
    v111 = 2048;
    v112 = v24;
    v113 = 2048;
    v114 = v21;
    _os_log_send_and_compose_impl(v60, &v88, &__b, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v63, &v88, &__b, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_95:
    re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v73, v76);
    __break(1u);
LABEL_96:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v66, &v88, &__b, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = a3;
    v113 = 2048;
    v114 = v7;
    _os_log_send_and_compose_impl(v69, &v88, &__b, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v35);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v77);
    __break(1u);
LABEL_105:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v78);
    __break(1u);
LABEL_106:
    v88 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    __b = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v107 = 136315906;
    v108 = "operator[]";
    v109 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v110 = 789;
    v111 = 2048;
    v112 = v7;
    v113 = 2048;
    v114 = a3;
    _os_log_send_and_compose_impl(v72, &v88, &__b, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v79, v80);
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v83)
  {
    v31 = 0;
    v32 = 0;
    v7 = 0;
    while (1)
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_67;
      }

      v33 = re::BindPoint::valueUntyped(v20);
      v35 = *(v19 + 232);
      if (v35 <= v7)
      {
        goto LABEL_104;
      }

      v36 = v33;
      v37 = *(v19 + 248);
      a3 = v37 + v31;
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 == 6)
          {
            re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(v19, v7, v33);
          }

          else if (v38 == 7)
          {
            *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
          }
        }

        else if (v38 == 8)
        {
          *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34) = *v33;
        }

        else if (v38 == 10)
        {
          a3 = *(v19 + 96);
          if (a3 <= v7)
          {
            goto LABEL_106;
          }

          re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v32), v33);
        }

        else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
        {
          v43 = *(v37 + v31 + 48);
          if (v43 == "SRT" || !strcmp(v43, "SRT"))
          {
            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v36);
          }
        }

        goto LABEL_67;
      }

      if (*(v37 + v31 + 32) > 2u)
      {
        switch(v38)
        {
          case 3u:
            v46 = *v33;
            *re::RigDataValue::getRuntimeValue<float>(v37 + v31, v34) = v46;
            break;
          case 4u:
            v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
            v49 = v36[1];
            v48 = v36[2];
            *v47 = *v36;
            v47[1] = v49;
            v47[2] = v48;
            break;
          case 5u:
            v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
            v40 = v36[3];
            v42 = *v36;
            v41 = v36[1];
            v39[2] = v36[2];
            v39[3] = v40;
            *v39 = v42;
            v39[1] = v41;
            break;
        }

        goto LABEL_67;
      }

      if (v38 == 1)
      {
        break;
      }

      if (v38 == 2)
      {
        v44 = *v33;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
        *Runtime = v44;
      }

LABEL_67:
      ++v7;
      v32 += 24;
      v31 += 288;
      v20 = (v20 + 48);
      if (v83 == v7)
      {
        goto LABEL_68;
      }
    }

    v44 = *v33;
    Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
    goto LABEL_60;
  }

LABEL_68:
  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  __b = 0u;
  v90 = 0u;
  re::EvaluationContextSlices::init(&__b, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &__b);
  if (!*(v19 + 272))
  {
    goto LABEL_105;
  }

  *v81 = *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*(v19 + 288), v50);
  if (v84 && v85)
  {
    (*(*v84 + 40))();
  }
}

void re::AnimationImpl<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Quaternion<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD7A8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v133 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v116 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v82 = MEMORY[0x1E69E9C10];
    v120 = 136315906;
    v121 = "operator[]";
    v122 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v6;
    _os_log_send_and_compose_impl(v83, &v116, &v128, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_66:
    v116 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v120 = 136315906;
    v121 = "operator[]";
    v122 = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v6;
    _os_log_send_and_compose_impl(v86, &v116, &v128, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    v119 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = v18;
    v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v120 = 136315906;
    v121 = "operator[]";
    v122 = 1024;
    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v123 = 476;
    v124 = 2048;
    v125 = v6;
    v126 = 2048;
    v127 = v88;
    _os_log_send_and_compose_impl(v90, &v119, &v128, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
    goto LABEL_74;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<re::Quaternion<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v116, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v117;
    if (v117 > v6)
    {
      v6 = *(v118 + 8 * v6);
      if (v116)
      {
        (*(*v116 + 40))(v116);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              _ZF = v26[16] != 1 || *v26 == 2;
              if (!_ZF || (*v4 = *v28, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v128.n128_u64[0] = v4;
              v128.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_90:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v107, v108);
            __break(1u);
          }

LABEL_86:
          v116 = 0;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v128 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v104 = v22;
          v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v120 = 136315906;
          v121 = "operator[]";
          v122 = 1024;
          if (v105)
          {
            v106 = 3;
          }

          else
          {
            v106 = 2;
          }

          v123 = 476;
          v124 = 2048;
          v125 = v6;
          v126 = 2048;
          v127 = v104;
          _os_log_send_and_compose_impl(v106, &v116, &v128, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
          goto LABEL_90;
        }

LABEL_82:
        v116 = 0;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        v98 = MEMORY[0x1E69E9C10];
        v99 = v20;
        v100 = v21;
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v120 = 136315906;
        v121 = "operator[]";
        v122 = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        v123 = 476;
        v124 = 2048;
        v125 = v100;
        v126 = 2048;
        v127 = v99;
        _os_log_send_and_compose_impl(v102, &v116, &v128, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
        _os_crash_msg();
        __break(1u);
        goto LABEL_86;
      }

LABEL_78:
      v116 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = v20;
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v120 = 136315906;
      v121 = "operator[]";
      v122 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v123 = 476;
      v124 = 2048;
      v125 = v6;
      v126 = 2048;
      v127 = v95;
      _os_log_send_and_compose_impl(v97, &v116, &v128, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
      _os_crash_msg();
      __break(1u);
      goto LABEL_82;
    }

    goto LABEL_70;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_74:
    v116 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v120 = 136315906;
    v121 = "operator[]";
    v122 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v123 = 468;
    v124 = 2048;
    v125 = v4;
    v126 = 2048;
    v127 = v6;
    _os_log_send_and_compose_impl(v93, &v116, &v128, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v120, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

  v31 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v128.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v128.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v128);
  }

LABEL_37:
  a4 = v11 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if (v33)
  {
    v38 = 0;
    v39 = v34;
    if (v35)
    {
LABEL_45:
      v40 = *(a1 + 400);
      v39 = *(*(a1 + 416) + 8 * v40 - 8);
      *(a1 + 400) = v40 - 1;
      ++*(a1 + 408);
      goto LABEL_46;
    }
  }

  else
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
  }

  if (!v39)
  {
    goto LABEL_45;
  }

LABEL_46:
  v41 = *v34;
  if (*(v10 + 7))
  {
    _Q1 = *v37;
    _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(*v37)), v41, vextq_s8(vuzp1q_s32(_Q1, _Q1), *v37, 0xCuLL));
    v70 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v41, *v37, 3);
    _Q3.i32[0] = HIDWORD(*v34);
    v71 = vmlaq_laneq_f32(v70, *v37, v41, 3);
    __asm { FMLA            S0, S3, V1.S[3] }

    v71.i32[3] = _S0;
    v67 = v71.i64[1];
    v66 = v71.i64[0];
  }

  else
  {
    v42 = v11 / a4;
    v43 = vmulq_f32(v41, *v37);
    v44 = vextq_s8(v43, v43, 8uLL);
    *v43.i8 = vadd_f32(*v43.i8, *v44.f32);
    *v43.i32 = vaddv_f32(*v43.i8);
    v44.i64[0] = 0;
    v45 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v43, v44)), 0), vnegq_f32(v41), v41);
    v46 = 1.0;
    v47 = 1.0 - (v11 / a4);
    v48 = vsubq_f32(*v37, v45);
    v49 = vmulq_f32(v48, v48);
    v114 = v45;
    v115 = *v37;
    v50 = vaddq_f32(*v37, v45);
    v51 = vmulq_f32(v50, v50);
    v52 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL)))));
    v53 = v52 + v52;
    _ZF = (v52 + v52) == 0.0;
    v54 = 1.0;
    if (!_ZF)
    {
      v54 = sinf(v53) / v53;
    }

    v55 = v54;
    v56 = vrecpe_f32(LODWORD(v54));
    v57 = vmul_f32(v56, vrecps_f32(LODWORD(v55), v56));
    LODWORD(v58) = vmul_f32(v57, vrecps_f32(LODWORD(v55), v57)).u32[0];
    if ((v47 * v53) != 0.0)
    {
      v112 = v58;
      *v57.i32 = sinf(v47 * v53);
      v58 = v112;
      v46 = *v57.i32 / (v47 * v53);
    }

    *v57.i32 = v47 * (v58 * v46);
    v59 = vdupq_lane_s32(v57, 0);
    v60 = v42 * v53;
    v61 = 1.0;
    if (v60 != 0.0)
    {
      v111 = v59;
      v113 = v58;
      v62 = sinf(v60);
      v59 = v111;
      v58 = v113;
      v61 = v62 / v60;
    }

    v63 = vmlaq_f32(vmulq_n_f32(v114, v42 * (v58 * v61)), v115, v59);
    v64 = vmulq_f32(v63, v63);
    v65 = vadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
    if (vaddv_f32(v65) == 0.0)
    {
      v66 = 0;
      v67 = 0x3F80000000000000;
    }

    else
    {
      v76 = vadd_f32(v65, vdup_lane_s32(v65, 1)).u32[0];
      v77 = vrsqrte_f32(v76);
      v78 = vmul_f32(v77, vrsqrts_f32(v76, vmul_f32(v77, v77)));
      v79 = vmulq_n_f32(v63, vmul_f32(v78, vrsqrts_f32(v76, vmul_f32(v78, v78))).f32[0]);
      v67 = v79.i64[1];
      v66 = v79.i64[0];
    }
  }

  *v39 = v66;
  v39[1] = v67;
  v128.n128_u64[0] = v39;
  v128.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v128);
  if (v38)
  {
    v80 = *(a1 + 400);
    if (v80 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v80 + 1);
      v80 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v80) = v38;
    *(a1 + 400) = v80 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

_OWORD *re::AnimationBlendTreeRigContext<re::Quaternion<float>>::setRigDataValue<re::Quaternion<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::GenericSRT<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[248];
}

float re::AnimationImpl<re::GenericSRT<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::GenericSRT<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 224, 16);
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
  *v2 = &unk_1F5CACE40;
  *(v2 + 112) = 0;
  *(v2 + 176) = 0x3F8000003F800000;
  *(v2 + 184) = 1065353216;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0x3F80000000000000;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  return result;
}

BOOL re::AnimationImpl<re::GenericSRT<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[248] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::GenericSRT<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::GenericSRT<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (v9 = *a4, v10 = a4[2], a6[1] = a4[1], a6[2] = v10, *a6 = v9, result[2] == 49))
    {
      v11 = *(*result + 120);

      return v11();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v12, v13);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, double a7)
{
  v146 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    for (i = 0; i != 144; i += 48)
    {
      v16 = (&v124 + i);
      *v16 = 0x3F8000003F800000;
      v16[1] = 1065353216;
      v16[2] = 0;
      v16[3] = 0x3F80000000000000;
      v16[4] = 0;
      v16[5] = 0;
    }

    v17 = 0;
    v18 = *(a1 + 400);
    do
    {
      if (v18 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v18 + 1);
        v18 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v18++) = &v124 + v17;
      *(a1 + 400) = v18;
      ++*(a1 + 408);
      v17 += 48;
    }

    while (v17 != 144);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(a1, 0, 0, 0.0);
    v19 = *(a1 + 360);
    if (v19)
    {
      v20 = *(*(a1 + 376) + 16 * v19 - 16);
      if (v20 != a6)
      {
        v21 = *v20;
        v22 = v20[2];
        a6[1] = v20[1];
        a6[2] = v22;
        *a6 = v21;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v111 = a6;
  v23 = *(a1 + 440);
  v24 = *(a1 + 320);
  v113 = *(a1 + 312);
  v117[0] = a2;
  v117[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v114, v14 + 44);
  v25 = v14[39];
  if (v25 != *(v23 + 56))
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    v26 = 0;
    v7 = 0x3F8000003F800000;
    do
    {
      *&v124 = 0x3F8000003F800000;
      *(&v124 + 1) = 1065353216;
      *&v125 = 0;
      *(&v125 + 1) = 0x3F80000000000000;
      v126 = 0uLL;
      re::DynamicArray<re::Matrix3x3<float>>::add((v23 + 40), &v124);
      ++v26;
      v25 = v14[39];
    }

    while (v26 < v25);
  }

  if (v25)
  {
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v7 = v115;
      if (v115 <= v28)
      {
        break;
      }

      v29 = *(v116 + 8 * v28);
      v8 = v14[42];
      if (v8 <= v29)
      {
        goto LABEL_96;
      }

      v7 = v29 + 1;
      if (v8 <= v29 + 1)
      {
        goto LABEL_100;
      }

      if (v25 <= v29)
      {
        goto LABEL_104;
      }

      v30 = *(v14[40] + 8 * v29);
      v31 = re::Slice<re::AnimationClock>::range(v117, *(v14[43] + 8 * v29), *(v14[43] + 8 * v7));
      v7 = *(v23 + 56);
      if (v7 <= v28)
      {
        goto LABEL_108;
      }

      v33 = v32;
      if (!v32)
      {
        goto LABEL_112;
      }

      v34 = (*(v23 + 72) + v27);
      v35 = v31[16] != 1 || *v31 == 2;
      if (!v35 || (v36 = *a4, v37 = a4[2], v34[1] = a4[1], v34[2] = v37, *v34 = v36, v30[2] == 49))
      {
        (*(*v30 + 120))(v30, v31, v32, a4, a5, v34);
      }

      v7 = *(v23 + 16);
      if (v7 <= v28)
      {
        goto LABEL_113;
      }

      v7 = *(v23 + 56);
      if (v7 <= v28)
      {
        goto LABEL_117;
      }

      re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(v23, *(*(v23 + 32) + 8 * v28++), (*(v23 + 72) + v27));
      v25 = v14[39];
      v27 += 48;
      if (v28 >= v25)
      {
        goto LABEL_36;
      }
    }

    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *&v143[10] = 476;
    v144 = 2048;
    *v145 = v28;
    *&v145[8] = 2048;
    *&v145[10] = v7;
    _os_log_send_and_compose_impl(v78, v119, &v124, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v80)
    {
      v81 = 3;
    }

    else
    {
      v81 = 2;
    }

    *&v143[10] = 476;
    v144 = 2048;
    *v145 = v29;
    *&v145[8] = 2048;
    *&v145[10] = v8;
    _os_log_send_and_compose_impl(v81, v119, &v124, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *&v143[10] = 476;
    v144 = 2048;
    *v145 = v7;
    *&v145[8] = 2048;
    *&v145[10] = v8;
    _os_log_send_and_compose_impl(v83, v119, &v124, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    *&v143[10] = 476;
    v144 = 2048;
    *v145 = v29;
    *&v145[8] = 2048;
    *&v145[10] = v25;
    _os_log_send_and_compose_impl(v86, v119, &v124, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_108:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    *&v143[10] = 789;
    v144 = 2048;
    *v145 = v28;
    *&v145[8] = 2048;
    *&v145[10] = v7;
    _os_log_send_and_compose_impl(v89, v119, &v124, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_112:
    re::internal::assertLog(6, v32, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v99, v104);
    __break(1u);
LABEL_113:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    *&v143[10] = 789;
    v144 = 2048;
    *v145 = v28;
    *&v145[8] = 2048;
    *&v145[10] = v7;
    _os_log_send_and_compose_impl(v92, v119, &v124, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    *&v143[10] = 789;
    v144 = 2048;
    *v145 = v28;
    *&v145[8] = 2048;
    *&v145[10] = v7;
    _os_log_send_and_compose_impl(v95, v119, &v124, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v42);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v100, v105);
    __break(1u);
    goto LABEL_122;
  }

LABEL_36:
  if (v113)
  {
    v38 = 0;
    v39 = 0;
    v7 = 0;
    do
    {
      if (!*(v24 + 3) || !re::BindPoint::isAlive(v24))
      {
        goto LABEL_70;
      }

      v40 = re::BindPoint::valueUntyped(v24);
      v42 = *(v23 + 232);
      if (v42 <= v7)
      {
        goto LABEL_121;
      }

      v43 = v40;
      v44 = *(v23 + 248);
      v45 = v44 + v38;
      v46 = *(v44 + v38 + 32);
      if (v46 > 5)
      {
        if (*(v44 + v38 + 32) <= 7u)
        {
          if (v46 != 6)
          {
            if (v46 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v45, v41) = *v43;
            }

            goto LABEL_70;
          }

          v54 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v45, v41);
        }

        else
        {
          if (v46 != 8)
          {
            if (v46 == 10)
            {
              v8 = *(v23 + 96);
              if (v8 <= v7)
              {
                goto LABEL_125;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v23 + 112) + v39), v43);
            }

            else if (v46 == 13 && *(v44 + v38 + 40) >> 1 == 82389)
            {
              v51 = *(v44 + v38 + 48);
              if (v51 == "SRT" || !strcmp(v51, "SRT"))
              {
                re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(v23, v7, v43);
              }
            }

            goto LABEL_70;
          }

          v54 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v45, v41);
        }

        *v54 = *v43;
      }

      else
      {
        if (*(v44 + v38 + 32) > 2u)
        {
          switch(v46)
          {
            case 3u:
              v55 = *v43;
              *re::RigDataValue::getRuntimeValue<float>(v45, v41) = v55;
              break;
            case 4u:
              v56 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v45, v41);
              v58 = *(v43 + 1);
              v57 = *(v43 + 2);
              *v56 = *v43;
              v56[1] = v58;
              v56[2] = v57;
              break;
            case 5u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v45, v41);
              v48 = *(v43 + 3);
              v50 = *v43;
              v49 = *(v43 + 1);
              v47[2] = *(v43 + 2);
              v47[3] = v48;
              *v47 = v50;
              v47[1] = v49;
              break;
          }

          goto LABEL_70;
        }

        if (v46 == 1)
        {
          v52 = *v43;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v45, v41);
          goto LABEL_62;
        }

        if (v46 == 2)
        {
          v52 = *v43;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v45, v41);
LABEL_62:
          *Runtime = v52;
        }
      }

LABEL_70:
      ++v7;
      v39 += 24;
      v38 += 288;
      v24 = (v24 + 48);
    }

    while (v113 != v7);
  }

  if ((*(v23 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v23 + 2360));
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  re::EvaluationContextSlices::init(&v124, (v23 + 4896));
  (*(*(v23 + 5600) + 16))(v23 + 5600, &v124);
  if (!*(v23 + 272))
  {
LABEL_122:
    re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v101, v106);
    __break(1u);
    goto LABEL_123;
  }

  v60 = *(v23 + 288);
  v123[0] = "scale";
  v123[1] = 5;
  re::RigDataValue::attributeValue(v60, v123, &v124);
  v62 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(&v124 + 1), v61);
  if (!*(v23 + 272))
  {
LABEL_123:
    re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v102, v107);
    __break(1u);
    goto LABEL_124;
  }

  v65 = *v62;
  v64 = v62[1];
  v66 = *(v23 + 288);
  v122[0] = "rotation";
  v122[1] = 8;
  re::RigDataValue::attributeValue(v66, v122, &v142);
  v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v143[4], v67);
  if (!*(v23 + 272))
  {
LABEL_124:
    re::internal::assertLog(6, v69, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v103, v108);
    __break(1u);
LABEL_125:
    v119[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v142 = 136315906;
    *v143 = "operator[]";
    *&v143[8] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *&v143[10] = 789;
    v144 = 2048;
    *v145 = v7;
    *&v145[8] = 2048;
    *&v145[10] = v8;
    _os_log_send_and_compose_impl(v98, v119, &v124, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v109, v110);
    _os_crash_msg();
    __break(1u);
  }

  v71 = *v68;
  v70 = v68[1];
  v72 = *(v23 + 288);
  v118[0] = "translation";
  v118[1] = 11;
  re::RigDataValue::attributeValue(v72, v118, v119);
  v74 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v119[1], v73);
  v76 = *v74;
  v75 = v74[1];
  *v111 = v65;
  *(v111 + 1) = v64;
  *(v111 + 2) = v71;
  *(v111 + 3) = v70;
  *(v111 + 4) = v76;
  *(v111 + 5) = v75;
  if (v119[0] & 1) == 0 && v120 && (v121)
  {
    (*(*v120 + 40))();
  }

  if (v142 & 1) == 0 && *&v145[4] && (v145[12])
  {
    (*(**&v145[4] + 40))();
  }

  if (v124 & 1) == 0 && *(&v125 + 1) && (v126)
  {
    (*(**(&v125 + 1) + 40))();
  }

  if (v114 && v115)
  {
    (*(*v114 + 40))();
  }
}

void re::AnimationImpl<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::GenericSRT<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD888;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v4 = a2;
  v110 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v93 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v4;
    v103 = 2048;
    v104 = v6;
    _os_log_send_and_compose_impl(v65, &v93, &v105, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_58:
    v93 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v4;
    v103 = 2048;
    v104 = v6;
    _os_log_send_and_compose_impl(v68, &v93, &v105, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v96 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = v18;
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v100 = 476;
    v101 = 2048;
    v102 = v6;
    v103 = 2048;
    v104 = v70;
    _os_log_send_and_compose_impl(v72, &v96, &v105, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return a4;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    v16 = 0.0;
    do
    {
      v16 = re::AnimationBlendTreeInstance<re::GenericSRT<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, v16);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v17 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v17 - 8);
    *(a1 + 400) = v17 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v93, (*(a1 + 80) + 352));
    v6 = *(v10 + 4);
    v18 = v94;
    if (v94 > v6)
    {
      v6 = *(v95 + 8 * v6);
      if (v93)
      {
        (*(*v93 + 40))(v93);
      }

      v19 = *(a1 + 80);
      v20 = v19[42];
      if (v20 > v6)
      {
        v21 = v6 + 1;
        if (v20 > v6 + 1)
        {
          v22 = v19[39];
          if (v22 > v6)
          {
            v23 = v19[43];
            v24 = *(v23 + 8 * v6);
            v25 = *(v19[40] + 8 * v6);
            v26 = re::Slice<re::AnimationClock>::range((a1 + 328), v24, *(v23 + 8 * v21));
            if (v27)
            {
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              _ZF = v26[16] != 1 || *v26 == 2;
              if (!_ZF || (v31 = *v28, v32 = v28[2], *(v4 + 16) = v28[1], *(v4 + 32) = v32, *v4 = v31, v25[2] == 49))
              {
                (*(*v25 + 120))(v25, v26, v27, v28, v29, v4);
              }

              v105.n128_u64[0] = v4;
              v105.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v89, v90);
            __break(1u);
          }

LABEL_78:
          v93 = 0;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          v85 = MEMORY[0x1E69E9C10];
          v86 = v22;
          v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v97 = 136315906;
          v98 = "operator[]";
          v99 = 1024;
          if (v87)
          {
            v88 = 3;
          }

          else
          {
            v88 = 2;
          }

          v100 = 476;
          v101 = 2048;
          v102 = v6;
          v103 = 2048;
          v104 = v86;
          _os_log_send_and_compose_impl(v88, &v93, &v105, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v93 = 0;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v105 = 0u;
        v80 = MEMORY[0x1E69E9C10];
        v81 = v20;
        v82 = v21;
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v97 = 136315906;
        v98 = "operator[]";
        v99 = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        v100 = 476;
        v101 = 2048;
        v102 = v82;
        v103 = 2048;
        v104 = v81;
        _os_log_send_and_compose_impl(v84, &v93, &v105, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v93 = 0;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = v20;
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v97 = 136315906;
      v98 = "operator[]";
      v99 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v100 = 476;
      v101 = 2048;
      v102 = v6;
      v103 = 2048;
      v104 = v77;
      _os_log_send_and_compose_impl(v79, &v93, &v105, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_66:
    v93 = 0;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v105 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97 = 136315906;
    v98 = "operator[]";
    v99 = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v100 = 468;
    v101 = 2048;
    v102 = v4;
    v103 = 2048;
    v104 = v6;
    _os_log_send_and_compose_impl(v75, &v93, &v105, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v91, v92);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v33 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v33 + 3) && re::BindPoint::isAlive(v33))
  {
    v105.n128_u64[0] = re::BindPoint::valueUntyped(v33);
    v105.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v105);
  }

LABEL_37:
  a4 = v11 + a4;
  v34 = *(a1 + 360);
  if (v34 != a3 + 2)
  {
    return a4;
  }

  v35 = *(a1 + 376) + 16 * v34;
  v36 = *(v35 - 16);
  v37 = *(v35 - 8);
  v38 = *(a1 + 368);
  v39 = *(v35 - 32);
  LODWORD(v35) = *(v35 - 24);
  *(a1 + 360) = v34 - 2;
  *(a1 + 368) = v38 + 2;
  if ((v35 & 1) == 0)
  {
    if (v37)
    {
      v40 = 0;
    }

    else
    {
      v40 = v36;
    }

    v41 = v39;
LABEL_44:
    if (v41)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v40 = 0;
  v41 = v36;
  if ((v37 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v42 = *(a1 + 400);
  v41 = *(*(a1 + 416) + 8 * v42 - 8);
  *(a1 + 400) = v42 - 1;
  ++*(a1 + 408);
LABEL_46:
  if (*(v10 + 7))
  {
    _Q1 = *(v39 + 16);
    _Q3 = *(v36 + 16);
    v47 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
    v48 = vnegq_f32(_Q1);
    v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v48), _Q3, v47);
    _S7 = _Q3.i32[3];
    v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
    __asm { FMLA            S3, S7, V1.S[3] }

    v51.i32[3] = _Q3.i32[0];
    v55 = *(v36 + 32);
    v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v48), v55, v47);
    v57 = vaddq_f32(v56, v56);
    v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
    v59 = vaddq_f32(v55, vmulq_laneq_f32(v58, _Q1, 3));
    v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL), v48), v58, v47);
    v61 = vaddq_f32(*(v39 + 32), vmulq_f32(*v39, vaddq_f32(v59, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL))));
    *v41 = vmulq_f32(*v39, *v36);
    *(v41 + 16) = v51;
    *(v41 + 32) = v61;
  }

  else
  {
    re::lerp<float>(v39, v36, &v105, v11 / a4);
    v43 = v105;
    v44 = v107;
    *(v41 + 16) = v106;
    *(v41 + 32) = v44;
    *v41 = v43;
  }

  v105.n128_u64[0] = v41;
  v105.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v105);
  if (v40)
  {
    v62 = *(a1 + 400);
    if (v62 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v62 + 1);
      v62 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v62) = v40;
    *(a1 + 400) = v62 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

_OWORD *re::AnimationBlendTreeRigContext<re::GenericSRT<float>>::setRigDataValue<re::GenericSRT<float>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 232);
  if (v5 <= a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v5, v3, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v9);
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 248) + 288 * a2;

    return re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v6, a3);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::SkeletalPose>::animationValueType()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v3, v4, v5, v6, v7);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 95);
}

float re::AnimationImpl<re::SkeletalPose>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
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

double re::AnimationImpl<re::SkeletalPose>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 296, 8);
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
  *v2 = &unk_1F5CACE98;
  *(v2 + 112) = 0;
  *(v2 + 208) = 0;
  *(v2 + 216) = &str_67;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  return result;
}

uint64_t re::AnimationImpl<re::SkeletalPose>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v9 = this;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    this = v9;
    if (v4)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v9, v5, v6, v7, v8);
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      this = v9;
    }
  }

  if (*(v2 + 95) != *this)
  {
    return 0;
  }

  result = re::BindPoint::valueUntyped(this);
  if (result)
  {
    return *(result + 80) != 0;
  }

  return result;
}

void re::Animation<re::SkeletalPose>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

uint64_t *re::AnimationImpl<re::SkeletalPose>::evaluate(_DWORD *a1, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v12 = a2[16] != 1 || *a2 == 2;
    if (!v12 || (result = re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6), a1[2] == 49))
    {
      v14 = *(*a1 + 120);

      return v14(a1, a2, a3, a4, a5, a6);
    }
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v15, v16);
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateCore(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, re::SkeletalPose *a6, double a7)
{
  v114 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v11 = *(a1 + 80);
  if (v11[36])
  {
    for (i = 0; i != 264; i += 88)
    {
      v13 = &v96 + i;
      *v13 = 0;
      *(v13 + 1) = &str_67;
      *(v13 + 1) = 0uLL;
      *(v13 + 2) = 0uLL;
      *(v13 + 3) = 0uLL;
      *(v13 + 16) = 0;
      *(v13 + 9) = 0;
      *(v13 + 10) = 0;
    }

    for (j = 0; j != 264; j += 88)
    {
      v15 = *(a1 + 400);
      if (v15 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v15 + 1);
        v15 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v15) = &v96 + j;
      *(a1 + 400) = v15 + 1;
      ++*(a1 + 408);
      re::AnimationValueTraits<re::SkeletalPose>::init((&v96 + j), a6);
    }

    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(a1, 0, 0, 0.0);
    v16 = *(a1 + 360);
    if (v16)
    {
      v17 = *(*(a1 + 376) + 16 * v16 - 16);
      if (v17 != a6)
      {
        re::AnimationValueTraits<re::SkeletalPose>::copy(v17, a6);
      }
    }

    for (k = 0; k != 264; k += 88)
    {
      re::SkeletalPose::deinit((&v96 + k));
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    for (m = 176; m != -88; m -= 88)
    {
      re::SkeletalPose::~SkeletalPose((&v96 + m));
    }

    return;
  }

  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v80 = *(a1 + 312);
  v86[0] = a2;
  v86[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v83, v11 + 44);
  v22 = v11[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_40;
    }

    v23 = 0;
    a3 = 88;
    a2 = &str_67;
    do
    {
      v100 = 0uLL;
      *&v96.var0 = 0;
      v96.var1 = &str_67;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      *&v101 = 0;
      re::DynamicArray<re::SkeletalPose>::add((v20 + 40), &v96);
      re::SkeletalPose::~SkeletalPose(&v96);
      re::AnimationValueTraits<re::SkeletalPose>::init((*(v20 + 72) + 88 * *(v20 + 56) - 88), a6);
      ++v23;
      v22 = v11[39];
    }

    while (v23 < v22);
  }

  if (v22)
  {
    ii = 0;
    for (n = 0; n < v22; ++n)
    {
      v26 = v84;
      if (v84 <= n)
      {
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v53 = MEMORY[0x1E69E9C10];
        v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v54)
        {
          v55 = 3;
        }

        else
        {
          v55 = 2;
        }

        v91 = 476;
        v92 = 2048;
        v93 = n;
        v94 = 2048;
        v95 = v26;
        _os_log_send_and_compose_impl(v55, &v87, &v96, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_84:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        v91 = 476;
        v92 = 2048;
        v93 = a3;
        v94 = 2048;
        v95 = a2;
        _os_log_send_and_compose_impl(v58, &v87, &v96, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_88:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v91 = 476;
        v92 = 2048;
        v93 = v26;
        v94 = 2048;
        v95 = a2;
        _os_log_send_and_compose_impl(v61, &v87, &v96, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_92:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v91 = 476;
        v92 = 2048;
        v93 = a3;
        v94 = 2048;
        v95 = v22;
        _os_log_send_and_compose_impl(v64, &v87, &v96, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_96:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v65 = MEMORY[0x1E69E9C10];
        v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v66)
        {
          v67 = 3;
        }

        else
        {
          v67 = 2;
        }

        v91 = 789;
        v92 = 2048;
        v93 = n;
        v94 = 2048;
        v95 = v26;
        _os_log_send_and_compose_impl(v67, &v87, &v96, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v74, v76);
        __break(1u);
LABEL_101:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        v91 = 789;
        v92 = 2048;
        v93 = n;
        v94 = 2048;
        v95 = v26;
        _os_log_send_and_compose_impl(v70, &v87, &v96, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v87 = 0;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v96 = 0;
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v88 = 136315906;
        v89 = "operator[]";
        v90 = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        v91 = 789;
        v92 = 2048;
        v93 = n;
        v94 = 2048;
        v95 = v26;
        _os_log_send_and_compose_impl(v73, &v87, &v96, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v88, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_109:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, ii, v35);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v75, v77);
        __break(1u);
      }

      a3 = *(v85 + 8 * n);
      a2 = v11[42];
      if (a2 <= a3)
      {
        goto LABEL_84;
      }

      v26 = a3 + 1;
      if (a2 <= a3 + 1)
      {
        goto LABEL_88;
      }

      if (v22 <= a3)
      {
        goto LABEL_92;
      }

      v27 = *(v11[40] + 8 * a3);
      v28 = re::Slice<re::AnimationClock>::range(v86, *(v11[43] + 8 * a3), *(v11[43] + 8 * v26));
      v26 = *(v20 + 56);
      if (v26 <= n)
      {
        goto LABEL_96;
      }

      a3 = v29;
      if (!v29)
      {
        goto LABEL_100;
      }

      a2 = v28;
      v30 = *(v20 + 72);
      v31 = v28[16] != 1 || *v28 == 2;
      if (!v31 || (re::AnimationValueTraits<re::SkeletalPose>::copy(a4, (v30 + ii)), v27[2] == 49))
      {
        (*(*v27 + 120))(v27, a2, a3, a4, a5, v30 + ii);
      }

      v26 = *(v20 + 16);
      if (v26 <= n)
      {
        goto LABEL_101;
      }

      v26 = *(v20 + 56);
      if (v26 <= n)
      {
        goto LABEL_105;
      }

      re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(v20, *(*(v20 + 32) + 8 * n), (*(v20 + 72) + ii));
      v22 = v11[39];
      ii += 88;
    }
  }

LABEL_40:
  if (v80)
  {
    v32 = 0;
    for (ii = 0; ii != v80; ++ii)
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_73;
      }

      v33 = re::BindPoint::valueUntyped(v21);
      v35 = *(v20 + 232);
      if (v35 <= ii)
      {
        goto LABEL_109;
      }

      v36 = v33;
      v37 = *(v20 + 248);
      v38 = v37 + v32;
      v39 = *(v37 + v32 + 32);
      if (v39 > 5)
      {
        if (*(v37 + v32 + 32) <= 7u)
        {
          if (v39 != 6)
          {
            if (v39 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v32, v34) = *v33;
            }

            goto LABEL_73;
          }

          v47 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v32, v34);
        }

        else
        {
          if (v39 != 8)
          {
            if (v39 == 10)
            {
              re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(v20, ii, v33);
            }

            else if (v39 == 13 && *(v37 + v32 + 40) >> 1 == 82389)
            {
              v44 = *(v37 + v32 + 48);
              if (v44 == "SRT" || !strcmp(v44, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v38, v36);
              }
            }

            goto LABEL_73;
          }

          v47 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v32, v34);
        }

        *v47 = *v36;
      }

      else
      {
        if (*(v37 + v32 + 32) > 2u)
        {
          switch(v39)
          {
            case 3u:
              v48 = *v33;
              *re::RigDataValue::getRuntimeValue<float>(v37 + v32, v34) = v48;
              break;
            case 4u:
              v49 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v32, v34);
              v51 = *(v36 + 1);
              v50 = *(v36 + 2);
              *v49 = *v36;
              v49[1] = v51;
              v49[2] = v50;
              break;
            case 5u:
              v40 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v32, v34);
              v41 = *(v36 + 3);
              v43 = *v36;
              v42 = *(v36 + 1);
              v40[2] = *(v36 + 2);
              v40[3] = v41;
              *v40 = v43;
              v40[1] = v42;
              break;
          }

          goto LABEL_73;
        }

        if (v39 == 1)
        {
          v45 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v32, v34);
          goto LABEL_66;
        }

        if (v39 == 2)
        {
          v45 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v32, v34);
LABEL_66:
          *Runtime = v45;
        }
      }

LABEL_73:
      v32 += 288;
      v21 = (v21 + 48);
    }
  }

  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0;
  v97 = 0u;
  re::EvaluationContextSlices::init(&v96, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &v96);
  v52 = re::EvaluationSkeletalPoseOutputHandle::get((v20 + 6384), a6);
  if (v83 && v84)
  {
    (*(*v83 + 40))(v52);
  }
}

void re::AnimationImpl<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash("assertion failure: (!Unreachable code) At least one overloaded version of evaluteCore must be overridden.");
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::SkeletalPose>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD968;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<re::SkeletalPose>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

uint64_t re::DynamicArray<re::SkeletalPose>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        do
        {
          re::SkeletalPose::~SkeletalPose(v3);
          v3 = (v3 + 88);
          v5 -= 88;
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

float re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, float a4)
{
  v6 = a2;
  v84 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 80);
  v8 = *(v7 + 288);
  if (v8 <= a2)
  {
    v67 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v74 = 476;
    v75 = 2048;
    v76 = v6;
    v77 = 2048;
    v78 = v8;
    _os_log_send_and_compose_impl(v44, &v67, &v79, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v12 = *(v7 + 296) + 8 * a2;
  v13 = *v12;
  if (a2 && *(a1 + 96))
  {
    v6 = a2 - 1;
    v8 = *(a1 + 264);
    if (v8 > a2 - 1)
    {
      v14 = (*(a1 + 272) + 4 * v6);
LABEL_6:
      v13 = *v14;
      goto LABEL_11;
    }

LABEL_58:
    v67 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v74 = 476;
    v75 = 2048;
    v76 = v6;
    v77 = 2048;
    v78 = v8;
    _os_log_send_and_compose_impl(v47, &v67, &v79, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v74 = 476;
    v75 = 2048;
    v76 = v8;
    v77 = 2048;
    v78 = v4;
    _os_log_send_and_compose_impl(v50, &v70, &v79, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (*(a1 + 288) > a2)
  {
    v15 = (*(a1 + 296) + 48 * a2);
    if (*(v15 + 3))
    {
      if (re::BindPoint::isAlive(v15))
      {
        v14 = re::BindPoint::valueUntyped(v15);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v13 <= 0.001)
  {
    return a4;
  }

  if (*(v12 + 6))
  {
    v16 = 0;
    v17 = *(a1 + 360);
    v18 = 0.0;
    do
    {
      v18 = re::AnimationBlendTreeInstance<re::SkeletalPose>::evaluateBlend(a1, v16 + *(v12 + 4), v17, v18);
      ++v16;
    }

    while (v16 < *(v12 + 6));
    goto LABEL_37;
  }

  if ((*(v12 + 7) & 2) == 0)
  {
    v19 = *(a1 + 400);
    v6 = *(*(a1 + 416) + 8 * v19 - 8);
    *(a1 + 400) = v19 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v67, (*(a1 + 80) + 352));
    v8 = *(v12 + 4);
    v4 = v68;
    if (v68 > v8)
    {
      v8 = *(v69 + 8 * v8);
      if (v67)
      {
        (*(*v67 + 40))(v67);
      }

      v20 = *(a1 + 80);
      v4 = v20[42];
      if (v4 > v8)
      {
        v5 = v8 + 1;
        if (v4 > v8 + 1)
        {
          v4 = v20[39];
          if (v4 > v8)
          {
            v21 = v20[43];
            v22 = *(v21 + 8 * v8);
            v23 = *(v20[40] + 8 * v8);
            v24 = re::Slice<re::AnimationClock>::range((a1 + 328), v22, *(v21 + 8 * v5));
            if (v25)
            {
              v26 = v24;
              v27 = v25;
              v28 = *(a1 + 424);
              v29 = *(a1 + 432);
              v30 = v24[16] != 1 || *v24 == 2;
              if (!v30 || (re::AnimationValueTraits<re::SkeletalPose>::copy(*(a1 + 424), v6), v23[2] == 49))
              {
                (*(*v23 + 120))(v23, v26, v27, v28, v29, v6);
              }

              v79.n128_u64[0] = v6;
              v79.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_82:
            re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v63, v64);
            __break(1u);
          }

LABEL_78:
          v67 = 0;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
          v60 = MEMORY[0x1E69E9C10];
          v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v71 = 136315906;
          v72 = "operator[]";
          v73 = 1024;
          if (v61)
          {
            v62 = 3;
          }

          else
          {
            v62 = 2;
          }

          v74 = 476;
          v75 = 2048;
          v76 = v8;
          v77 = 2048;
          v78 = v4;
          _os_log_send_and_compose_impl(v62, &v67, &v79, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
          _os_crash_msg();
          __break(1u);
          goto LABEL_82;
        }

LABEL_74:
        v67 = 0;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v79 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v71 = 136315906;
        v72 = "operator[]";
        v73 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v74 = 476;
        v75 = 2048;
        v76 = v5;
        v77 = 2048;
        v78 = v4;
        _os_log_send_and_compose_impl(v59, &v67, &v79, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
        _os_crash_msg();
        __break(1u);
        goto LABEL_78;
      }

LABEL_70:
      v67 = 0;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v71 = 136315906;
      v72 = "operator[]";
      v73 = 1024;
      if (v55)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      v74 = 476;
      v75 = 2048;
      v76 = v8;
      v77 = 2048;
      v78 = v4;
      _os_log_send_and_compose_impl(v56, &v67, &v79, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
      _os_crash_msg();
      __break(1u);
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v6 = *(v12 + 4);
  v8 = *(a1 + 312);
  if (v8 <= v6)
  {
LABEL_66:
    v67 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v6;
    v77 = 2048;
    v78 = v8;
    _os_log_send_and_compose_impl(v53, &v67, &v79, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v65, v66);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v31 = (*(a1 + 320) + 48 * *(v12 + 4));
  if (*(v31 + 3) && re::BindPoint::isAlive(v31))
  {
    v79.n128_u64[0] = re::BindPoint::valueUntyped(v31);
    v79.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v79);
  }

LABEL_37:
  a4 = v13 + a4;
  v32 = *(a1 + 360);
  if (v32 != a3 + 2)
  {
    return a4;
  }

  v33 = *(a1 + 376) + 16 * v32;
  v34 = *(v33 - 16);
  v35 = *(v33 - 8);
  v36 = *(a1 + 368);
  v37 = *(v33 - 32);
  LODWORD(v33) = *(v33 - 24);
  *(a1 + 360) = v32 - 2;
  *(a1 + 368) = v36 + 2;
  if ((v33 & 1) == 0)
  {
    if (v35)
    {
      v38 = 0;
    }

    else
    {
      v38 = v34;
    }

    v39 = v37;
LABEL_44:
    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v38 = 0;
  v39 = v34;
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v40 = *(a1 + 400);
  v39 = *(*(a1 + 416) + 8 * v40 - 8);
  *(a1 + 400) = v40 - 1;
  ++*(a1 + 408);
LABEL_46:
  if (*(v12 + 7))
  {
    re::AnimationValueTraits<re::SkeletalPose>::combine(v34, v37, v39);
  }

  else
  {
    re::AnimationValueTraits<re::SkeletalPose>::interpolate(v37, v34, v39, v13 / a4);
  }

  v79.n128_u64[0] = v39;
  v79.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v79);
  if (v38)
  {
    v41 = *(a1 + 400);
    if (v41 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v41 + 1);
      v41 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v41) = v38;
    *(a1 + 400) = v41 + 1;
    ++*(a1 + 408);
  }

  return a4;
}

id re::DynamicArray<re::SkeletalPose>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SkeletalPose>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 88 * v4);
  re::StringID::StringID(v5, a2);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v5 + 2, &a2[1]);
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 40, &a2[2].var1);
  v7 = *&a2[5].var0;
  *(v5 + 10) = v7;
  if (v7)
  {
    result = (v7 + 8);
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::AnimationBlendTreeRigContext<re::SkeletalPose>::setRigDataValue<re::SkeletalPose>(uint64_t a1, unint64_t a2, re::SkeletalPose *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  if (v4 <= a2)
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

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a1 + 112) + 24 * a2);

  *&result = re::EvaluationSkeletalPoseInputHandle::set(v5, a3).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SkeletalPose>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SkeletalPose>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SkeletalPose>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SkeletalPose>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SkeletalPose>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 88 * v9;
        do
        {
          re::StringID::StringID(&v7[v10 / 8], (v8 + v10));
          re::FixedArray<re::GenericSRT<float>>::FixedArray(&v7[v10 / 8 + 2], (v8 + v10 + 16));
          re::DynamicArray<BOOL>::DynamicArray(&v7[v10 / 8 + 5], (v8 + v10 + 40));
          v12 = *(v8 + v10 + 80);
          v7[v10 / 8 + 10] = v12;
          if (v12)
          {
            v13 = (v12 + 8);
          }

          re::SkeletalPose::~SkeletalPose((v8 + v10));
          v10 += 88;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

unint64_t re::RigHierarchyJointTransform::init(void *a1, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  v67 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((a2 + 116), &v62);
  a1[1] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 106), &v62);
  a1[2] = v8[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 116), &v62);
  a1[3] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 116), &v62);
  a1[4] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 106), &v62);
  a1[5] = v8[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 116), &v62);
  a1[6] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  v10 = a1[5];
  LODWORD(v62) = 21;
  v63 = 0uLL;
  *(&v62 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 233), &v62);
  v11 = v8[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((v8 + 208), v11) + 8) = v10;
  a1[7] = v11;
  v12 = a1[4];
  v13 = a1[5];
  LODWORD(v62) = 39;
  v63 = 0uLL;
  *(&v62 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v62);
  v14 = v8[225] - 1;
  v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((v8 + 208), v14);
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  a1[8] = v14;
  LODWORD(v62) = 19;
  v63 = 0uLL;
  *(&v62 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 223), &v62);
  v16 = v8[225] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((v8 + 208), v16) + 8) = v14;
  a1[9] = v16;
  v17 = a1[8];
  v18 = a1[6];
  LODWORD(v62) = 40;
  v63 = 0uLL;
  *(&v62 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v62);
  v19 = v8[230] - 1;
  v20 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((v8 + 208), v19);
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  a1[10] = v19;
  LODWORD(v62) = 20;
  v63 = 0uLL;
  *(&v62 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v8 + 228), &v62);
  v21 = v8[230] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((v8 + 208), v21) + 8) = v19;
  a1[11] = v21;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 116), &v62);
  a1[12] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 106), &v62);
  a1[13] = v8[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 116), &v62);
  a1[14] = v8[118] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 106), &v62);
  a1[15] = v8[108] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 96), &v62);
  a1[16] = v8[98] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 96), &v62);
  a1[17] = v8[98] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 101), &v62);
  a1[18] = v8[103] + 0x7FFFFFFFFFFFFFFELL;
  *&v62 = -1;
  re::DynamicArray<unsigned long>::add((v8 + 101), &v62);
  a1[19] = v8[103] + 0x7FFFFFFFFFFFFFFELL;
  v22 = a1[12] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[118];
  if (v23 <= v22)
  {
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v30, &v53, &v62, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v24 = v8[120];
  *(v24 + 8 * v22) = *a3;
  v22 = a1[13] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[108];
  if (v23 <= v22)
  {
LABEL_14:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v33, &v53, &v62, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v25 = v8[110];
  *(v25 + 8 * v22) = a3[1];
  v22 = a1[14] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[118];
  if (v23 <= v22)
  {
LABEL_18:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v36, &v53, &v62, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  *(v24 + 8 * v22) = a3[2];
  v22 = a1[15] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[108];
  if (v23 <= v22)
  {
LABEL_22:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v39, &v53, &v62, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  *(v25 + 8 * v22) = a3[1];
  v22 = a1[16] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[98];
  if (v23 <= v22)
  {
LABEL_26:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v42, &v53, &v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  v26 = v8[100];
  *(v26 + 8 * v22) = a4;
  v22 = a1[17] - 0x7FFFFFFFFFFFFFFFLL;
  v23 = v8[98];
  if (v23 <= v22)
  {
LABEL_30:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = v22;
    v60 = 2048;
    v61 = v23;
    _os_log_send_and_compose_impl(v45, &v53, &v62, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  *(v26 + 8 * v22) = a4;
  a4 = a1[18] - 0x7FFFFFFFFFFFFFFFLL;
  v22 = v8[103];
  if (v22 <= a4)
  {
LABEL_34:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = a4;
    v60 = 2048;
    v61 = v22;
    _os_log_send_and_compose_impl(v48, &v53, &v62, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    v53 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v57 = 789;
    v58 = 2048;
    v59 = a4;
    v60 = 2048;
    v61 = v8;
    _os_log_send_and_compose_impl(v51, &v53, &v62, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v52);
    _os_crash_msg();
    __break(1u);
  }

  v27 = v8[105];
  *(v27 + 8 * a4) = a5;
  a4 = a1[19] - 0x7FFFFFFFFFFFFFFFLL;
  v8 = v8[103];
  if (v8 <= a4)
  {
    goto LABEL_38;
  }

  *(v27 + 8 * a4) = a5;
  re::RigHierarchyJointTransform::setLocalSpaceJointScale(a1, *a3);
  re::RigHierarchyJointTransform::setLocalSpaceJointRotation(a1, a3[1]);
  return re::RigHierarchyJointTransform::setLocalSpaceJointTranslation(a1, a3[2]);
}

unint64_t re::RigHierarchyJointTransform::setLocalSpaceJointScale(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 944);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[120] + 8 * v3) = a2;
  v5 = a1[4];
  v6 = a1[12];
  v7 = a1[1];
  LODWORD(v25) = 25;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 243), &v25);
  v8 = v2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[118];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[120] + 8 * v3) = v8;
  return result;
}

unint64_t re::RigHierarchyJointTransform::setLocalSpaceJointRotation(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[2] - 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(*a1 + 864);
  if (v4 <= v3)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = v3;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  *(v2[110] + 8 * v3) = a2;
  v5 = a1[5];
  v6 = a1[13];
  v7 = a1[2];
  LODWORD(v25) = 24;
  v26 = 0uLL;
  *(&v25 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((v2 + 233), &v25);
  v8 = v2[235] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((v2 + 208), v8);
  *(result + 8) = v6;
  *(result + 16) = v7;
  v3 = v5 - 0x7FFFFFFFFFFFFFFFLL;
  v4 = v2[108];
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  *(v2[110] + 8 * v3) = v8;
  return result;
}