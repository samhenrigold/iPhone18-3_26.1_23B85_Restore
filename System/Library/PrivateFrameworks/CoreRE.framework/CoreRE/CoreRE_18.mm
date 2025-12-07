uint64_t *std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::internal::RigIKCallbackData *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

void re::FixedArray<re::internal::RigIKCall>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x1E1E1E1E1E1E1E2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 136, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 136 * a3;
  v6 = (*(*a2 + 32))(a2, 136 * a3, 8);
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
    bzero(v6, v5 - 136);
    v8 += v5 - 136;
  }

  *(v8 + 16) = 0;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *v8 = 0u;
  *(v8 + 1) = 0u;
}

uint64_t *re::anonymous namespace::rigIKCallbackFunction(re::_anonymous_namespace_ *this, re::EvaluationContext *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::Matrix4x4<float>>::operator=(this + 39, this + 12);
  if (*(a2 + 1))
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a2 + 2) + 136 * v7;
      v9 = *(v8 + 80);
      if (v9)
      {
        break;
      }

      v13 = *(v8 + 64);
      if (v13)
      {
        v11 = 0;
        while (1)
        {
          v12 = *(v8 + 64);
          if (v12 <= v11)
          {
            break;
          }

          v12 = *(*(v8 + 72) + 8 * v11);
          v3 = *(this + 40);
          if (v3 <= v12)
          {
            goto LABEL_29;
          }

          v3 = *(v8 + 104);
          if (v3 <= v11)
          {
            goto LABEL_33;
          }

          *(*(v8 + 112) + 16 * v11++) = *(*(this + 41) + (v12 << 6) + 48);
          if (v13 == v11)
          {
            goto LABEL_15;
          }
        }

LABEL_25:
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

        v33 = 468;
        v34 = 2048;
        v35 = v11;
        v36 = 2048;
        v37 = v12;
        _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
LABEL_29:
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
        v35 = v12;
        v36 = 2048;
        v37 = v3;
        _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
LABEL_33:
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
        v35 = v11;
        v36 = 2048;
        v37 = v3;
        _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      v28 = *(v8 + 120);
      result = (*v8)(*(this + 41), *(this + 40), *(a2 + 5), *(a2 + 4), *(v8 + 24), *(v8 + 16), *(v8 + 48), *(v8 + 40), *(v8 + 112), *(v8 + 104));
      if (++v7 >= *(a2 + 1))
      {
        return result;
      }
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v11 + *(v8 + 88);
      v3 = *(this + 22);
      if (v3 <= v12)
      {
        break;
      }

      v3 = *(v8 + 104);
      if (v3 <= v11)
      {
        goto LABEL_21;
      }

      *(*(v8 + 112) + v10) = *(*(this + 23) + 16 * v12);
      ++v11;
      v10 += 16;
      if (v9 == v11)
      {
        goto LABEL_15;
      }
    }

    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v33 = 468;
    v34 = 2048;
    v35 = v12;
    v36 = 2048;
    v37 = v3;
    _os_log_send_and_compose_impl(v15, &v29, &v38, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
LABEL_21:
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

    v33 = 468;
    v34 = 2048;
    v35 = v11;
    v36 = 2048;
    v37 = v3;
    _os_log_send_and_compose_impl(v18, &v29, &v38, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t re::anonymous namespace::calculateWeightedConstraint<re::EvaluationRegisterId<re::Vector3<float>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v10 = a3;
  v11 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v13 = *(a4 + 16);
  if (v13 == 2)
  {
    v17 = *(a5 + 16);
    if (!v17)
    {
      goto LABEL_13;
    }

    if (v17 == 1)
    {
      goto LABEL_39;
    }

    v18 = **(a5 + 32) + *(*(a5 + 32) + 4);
    if (v18 == 1.0 || vabds_f32(1.0, v18) < (((fabsf(v18) + 1.0) + 1.0) * 0.00001))
    {
LABEL_13:
      v19 = a6(a1, **(a4 + 32), a2, a3, a7);
      v20 = *(a4 + 16);
      if (v20 <= 1)
      {
LABEL_35:
        v62 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v63 = 136315906;
        *&v63[4] = "operator[]";
        *&v63[12] = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        *&v63[14] = 797;
        v64 = 2048;
        v65 = 1;
        v66 = 2048;
        v67 = v20;
        _os_log_send_and_compose_impl(v51, &v62, &v68, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v55, v57);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v62 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v63 = 136315906;
        *&v63[4] = "operator[]";
        *&v63[12] = 1024;
        if (v53)
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        *&v63[14] = 797;
        v64 = 2048;
        v65 = 1;
        v66 = 2048;
        v67 = 1;
        _os_log_send_and_compose_impl(v54, &v62, &v68, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v55, v57);
        _os_crash_msg();
        __break(1u);
      }

      v21 = v19;
      v22 = a6(a1, *(*(a4 + 32) + 8), v11, v10, v7);
      if (*(v8 + 16))
      {
        v23 = **(v8 + 32);
      }

      else
      {
        v23 = 0.5;
      }

      *v63 = v23;
      LODWORD(v68) = 2;
      v69 = 0uLL;
      *(&v68 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 218), &v68);
      *&v68 = a1[220] - 1;
      re::DynamicArray<unsigned long>::add((a1 + 11), &v68);
      re::DynamicArray<float>::add((a1 + 51), v63);
      v41 = *(a1[15] + 8 * a1[13] - 8);
      LODWORD(v68) = 11;
      v69 = 0uLL;
      *(&v68 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v68);
      v25 = a1[245] - 1;
      v42 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
      v42[1] = v21;
      v42[2] = v22;
      v42[3] = v41;
      return v25;
    }

LABEL_16:
    *v63 = 0;
    *&v63[8] = 0;
    LODWORD(v68) = 7;
    v69 = 0uLL;
    *(&v68 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v68);
    *&v68 = a1[245] - 1;
    re::DynamicArray<unsigned long>::add((a1 + 36), &v68);
    re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v63);
    v24 = a1[40] + 8 * a1[38];
    v25 = *(v24 - 8);
    v26 = *(a4 + 16);
    if (v26)
    {
      v58 = *(v24 - 8);
      v27 = 0;
      v28 = 1.0 / v26;
      v20 = v58;
      v56 = *(a4 + 16);
      while (1)
      {
        v29 = *(a4 + 16);
        if (v29 <= v27)
        {
          break;
        }

        v30 = a6(a1, *(*(a4 + 32) + 8 * v27), v11, v10, v7);
        v25 = *(v8 + 16);
        v31 = v28;
        if (v25)
        {
          if (v25 <= v27)
          {
            goto LABEL_31;
          }

          v31 = *(*(v8 + 32) + 4 * v27);
        }

        *v63 = v31;
        LODWORD(v68) = 2;
        v69 = 0uLL;
        *(&v68 + 1) = 0;
        v61 = v20;
        v32 = v30;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 218), &v68);
        *&v68 = a1[220] - 1;
        re::DynamicArray<unsigned long>::add((a1 + 11), &v68);
        re::DynamicArray<float>::add((a1 + 51), v63);
        v33 = *(a1[15] + 8 * a1[13] - 8);
        LODWORD(v68) = 11;
        v69 = 0uLL;
        *(&v68 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v68);
        v34 = v11;
        v35 = v8;
        v36 = v10;
        v37 = v7;
        v38 = a1[245] - 1;
        v39 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v38);
        v39[1] = v58;
        v39[2] = v32;
        v39[3] = v33;
        LODWORD(v68) = 8;
        v69 = 0uLL;
        *(&v68 + 1) = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v68);
        v25 = a1[245] - 1;
        v40 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v25);
        *(v40 + 8) = v61;
        *(v40 + 16) = v38;
        v7 = v37;
        v10 = v36;
        v8 = v35;
        v11 = v34;
        ++v27;
        v20 = v25;
        if (v56 == v27)
        {
          return v25;
        }
      }

      v62 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v63 = 136315906;
      *&v63[4] = "operator[]";
      *&v63[12] = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      *&v63[14] = 797;
      v64 = 2048;
      v65 = v27;
      v66 = 2048;
      v67 = v29;
      _os_log_send_and_compose_impl(v45, &v62, &v68, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v62 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v63 = 136315906;
      *&v63[4] = "operator[]";
      *&v63[12] = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *&v63[14] = 797;
      v64 = 2048;
      v65 = v27;
      v66 = 2048;
      v67 = v25;
      _os_log_send_and_compose_impl(v48, &v62, &v68, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v56, v58);
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

    return v25;
  }

  if (v13 != 1)
  {
    goto LABEL_16;
  }

  if (*(a5 + 16))
  {
    v14 = **(a5 + 32);
    if (v14 != 1.0 && vabds_f32(1.0, v14) >= (((fabsf(v14) + 1.0) + 1.0) * 0.00001))
    {
      goto LABEL_16;
    }
  }

  v15 = **(a4 + 32);

  return a6(a1, v15, v11, a3, a7);
}

unint64_t re::anonymous namespace::calculatePointConstraint(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  if (v6 <= a2)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 476;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v6;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 476;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v4;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v9 = *(*(a3 + 16) + 8 * a2);
  LODWORD(v31) = 37;
  v32 = 0uLL;
  *(&v31 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v31);
  v10 = *(a1 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v10) + 8) = v9;
  v4 = *(a4 + 8);
  if (v4 <= a2)
  {
    goto LABEL_8;
  }

  v11 = *(*(a4 + 16) + 8 * a2);
  LODWORD(v31) = 37;
  v32 = 0uLL;
  *(&v31 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v31);
  v12 = *(a1 + 1960) - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v12) + 8) = v11;
  LODWORD(v31) = 31;
  v32 = 0uLL;
  *(&v31 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 1944), &v31);
  v13 = *(a1 + 1960) - 1;
  v14 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>(a1 + 1664, v13);
  *(v14 + 8) = v12;
  *(v14 + 16) = v10;
  return v13;
}

unint64_t re::anonymous namespace::calculateOrientConstraint(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3 <= a2)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v27 = 476;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v5;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  Rotation = re::EvaluationTree::extractRotation(a1, *(a4 + 8 * a2));
  v5 = *(a5 + 8);
  if (v5 <= a2)
  {
    goto LABEL_8;
  }

  v10 = Rotation;
  v11 = re::EvaluationTree::extractRotation(a1, *(*(a5 + 16) + 8 * a2));
  LODWORD(v32) = 21;
  v33 = 0uLL;
  *(&v32 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v32);
  v12 = a1[235] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v12) + 8) = v10;
  LODWORD(v32) = 24;
  v33 = 0uLL;
  *(&v32 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a1 + 233), &v32);
  v13 = a1[235] - 1;
  v14 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a1 + 208), v13);
  *(v14 + 8) = v11;
  *(v14 + 16) = v12;
  return v13;
}

uint64_t re::anonymous namespace::rigNodeRotationOrder(void *a1, char a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    v4 = a1[115];
    if (v4 > a3)
    {
      v5 = (a1[117] + 96 * a3 + 80);
      return *v5;
    }

LABEL_11:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v4 = a1[110];
  if (v4 <= a3)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
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

    v17 = 797;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v5 = (a1[112] + (a3 << 6) + 48);
  return *v5;
}

unint64_t re::anonymous namespace::calculateParentConstraintSRT(unint64_t *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4 <= a3)
  {
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 476;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = a4;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 476;
    v30 = 2048;
    v31 = a3;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v7 = a6;
  if (a6 <= a3)
  {
    goto LABEL_8;
  }

  v11 = *(a5 + 8 * a3);
  v12 = *(a7 + 8 * a3);
  LODWORD(v34) = 20;
  v35 = 0uLL;
  *(&v34 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v34);
  v13 = a2[230] - 1;
  *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v13) + 8) = v11;
  LODWORD(v34) = 28;
  v35 = 0uLL;
  *(&v34 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 228), &v34);
  v14 = a2[230] - 1;
  v15 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a2 + 208), v14);
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *a1 = re::EvaluationTree::extractScale(a2, v14);
  a1[1] = re::EvaluationTree::extractRotation(a2, v14);
  LODWORD(v34) = 37;
  v35 = 0uLL;
  *(&v34 + 1) = 0;
  re::DynamicArray<re::EvaluationRegister>::add((a2 + 243), &v34);
  v16 = a2[245] - 1;
  result = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a2 + 208), v16);
  *(result + 8) = v14;
  a1[2] = v16;
  return result;
}

unint64_t re::anonymous namespace::calculateAimForwardDirection(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = *(a5[1] + 3);
  if (v7 == 2)
  {
    *v27 = 0;
    *&v27[8] = 1065353216;
    LODWORD(v32) = 7;
    v33 = 0uLL;
    *(&v32 + 1) = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v32);
    *&v32 = a1[245] - 1;
    re::DynamicArray<unsigned long>::add((a1 + 36), &v32);
    re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v27);
    return *(a1[40] + 8 * a1[38] - 8);
  }

  if (v7 == 1)
  {
    v14 = *(a4 + 8);
    if (v14 > a2)
    {
      v11 = *(*(a4 + 16) + 8 * a2);
      *v27 = 0;
      *&v27[8] = 1065353216;
      LODWORD(v32) = 7;
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v32);
      *&v32 = a1[245] - 1;
      re::DynamicArray<unsigned long>::add((a1 + 36), &v32);
      re::DynamicArray<re::Vector3<float>>::add((a1 + 76), v27);
      v12 = *(a1[40] + 8 * a1[38] - 8);
      v13 = 42;
      goto LABEL_8;
    }

    v26 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    *&v27[14] = 476;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v14;
    _os_log_send_and_compose_impl(v20, &v26, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v26 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    *&v27[12] = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    *&v27[14] = 476;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v5;
    _os_log_send_and_compose_impl(v23, &v26, &v32, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a5[1] + 3))
  {
    v5 = *(a4 + 8);
    if (v5 > a2)
    {
      v10 = *(*(a4 + 16) + 8 * a2);
      LODWORD(v32) = 37;
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v32);
      v11 = a1[245] - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v11) + 8) = v10;
      v12 = *a5;
      v13 = 31;
LABEL_8:
      LODWORD(v32) = v13;
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v32);
      v15 = a1[245] - 1;
      v16 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v15);
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      LODWORD(v32) = 29;
      v33 = 0uLL;
      *(&v32 + 1) = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a1 + 243), &v32);
      v17 = a1[245] - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a1 + 208), v17) + 8) = v15;
      return v17;
    }

    goto LABEL_15;
  }

  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Unexpected aim constraint forward axis type.", "!Unreachable code", "calculateAimForwardDirection", 233);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected aim constraint forward axis type.");
  __break(1u);
  return result;
}

void re::FixedArray<re::FixedArray<float>>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
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
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

void re::FixedArray<re::TwoBoneIKOptions>::init<>(void *a1, uint64_t a2, unint64_t a3)
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

void *re::FixedArray<re::FABRIKOptions>::init<>(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 8 * a3, 4);
  v4[2] = result;
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
      *result++ = 0x203DCCCCCDLL;
      --v6;
    }

    while (v6);
  }

  *result = 0x203DCCCCCDLL;
  return result;
}

uint64_t re::FixedArray<re::SplineIKOptions>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x333333333333334)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 80, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 80 * a3, 16);
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
      *result = 1008981770;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0;
      result += 80;
      --v6;
    }

    while (v6);
  }

  *result = 1008981770;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::RigComponentConstraint>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::RigComponentConstraint>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::RigComponentConstraint>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigComponentConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(*(a2 + 32), *(a2 + 32) + 88 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = a1[4];
      v12 = 88 * v9;
      v13 = 88 * v4;
      do
      {
        v14 = v11 + v12;
        v15 = *(v10 + v12);
        *(v14 + 2) = *(v10 + v12 + 2);
        *v14 = v15;
        re::DynamicArray<unsigned long>::DynamicArray(v11 + v12 + 8, (v10 + v12 + 8));
        result = re::DynamicArray<float>::DynamicArray(v11 + v12 + 48, (v10 + v12 + 48));
        v13 -= 88;
        v10 += 88;
        v11 += 88;
      }

      while (v12 != v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(*(a2 + 32), *(a2 + 32) + 88 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = -88 * v4 + 88 * v6;
      v8 = 88 * v4 + a1[4] + 48;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8);
        result = re::DynamicArray<unsigned long>::deinit(v8 - 40);
        v8 += 88;
        v7 -= 88;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigComponentConstraint *,re::RigComponentConstraint *,re::RigComponentConstraint *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 2) = *(v5 + 2);
      *a3 = v6;
      re::DynamicArray<unsigned long>::operator=(a3 + 8, (v5 + 8));
      result = re::DynamicArray<float>::operator=(a3 + 48, (v5 + 48));
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigBasicConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigBasicConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(*(a2 + 32), (*(a2 + 32) + 80 * a1[2]), a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = 5 * v9;
      v11 = (*(a2 + 32) + 16 * v10);
      v12 = a1[4] + 16 * v10;
      v13 = 80 * v4 - 16 * v10;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v12, v11);
        result = re::DynamicArray<float>::DynamicArray(v12 + 40, v11 + 5);
        v11 += 10;
        v12 += 80;
        v13 -= 80;
      }

      while (v13);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(*(a2 + 32), (*(a2 + 32) + 80 * v4), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4] + 80 * v4;
      v8 = 80 * v6 - 80 * v4;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v7);
        v7 += 80;
        v8 -= 80;
      }

      while (v8);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigBasicConstraint *,re::RigBasicConstraint *,re::RigBasicConstraint *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      result = re::DynamicArray<float>::operator=(a3 + 40, v5 + 5);
      v5 += 10;
      a3 += 80;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigAimConstraint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigAimConstraint>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(*(a2 + 32), *(a2 + 32) + 144 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 144 * v4;
      v12 = a1[4];
      v13 = 144 * v9;
      do
      {
        v14 = v10 + v13;
        v15 = v12 + v13;
        v16 = *(v10 + v13);
        v17 = *(v10 + v13 + 32);
        *(v15 + 16) = *(v10 + v13 + 16);
        *(v15 + 32) = v17;
        *v15 = v16;
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 48, (v10 + v13 + 48));
        result = re::DynamicArray<float>::DynamicArray(v12 + v13 + 88, (v10 + v13 + 88));
        *(v15 + 128) = *(v10 + v13 + 128);
        v10 += 144;
        v12 += 144;
      }

      while (v14 + 144 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(*(a2 + 32), *(a2 + 32) + 144 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = 144 * v6 - 144 * v4;
      v8 = a1[4] + 144 * v4 + 48;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v8);
        v8 += 144;
        v7 -= 144;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::RigAimConstraint *,re::RigAimConstraint *,re::RigAimConstraint *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 32);
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = v7;
      *a3 = v6;
      re::DynamicArray<unsigned long>::operator=(a3 + 48, (v5 + 48));
      result = re::DynamicArray<float>::operator=(a3 + 88, (v5 + 88));
      *(a3 + 128) = *(v5 + 128);
      v5 += 144;
      a3 += 144;
    }

    while (v5 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigNodeChannel>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::Vector3<float>>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::Quaternion<float>>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Quaternion<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void **re::DynamicArray<re::Matrix3x3<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 48 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 48 * v5, (*(a2 + 32) + 48 * v5), 48 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 48 * v4);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::Matrix4x4<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Matrix4x4<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), v5 << 6);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), v4 << 6);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::Quaternion<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Quaternion<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::RigExpression>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 24 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 24 * v5, (*(a2 + 32) + 24 * v5), 24 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 24 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::RigTwoBoneIKHandles>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(*(a2 + 32), (*(a2 + 32) + 240 * a1[2]), a1[4]);
    v10 = a1[2];
    if (v10 != v4)
    {
      v11 = *(a2 + 32);
      v12 = a1[4];
      v13 = 240 * v10;
      v14 = 240 * v4;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13, (v11 + v13));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 40, (v11 + v13 + 40));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 80, (v11 + v13 + 80));
        re::DynamicArray<unsigned long>::DynamicArray(v12 + v13 + 120, (v11 + v13 + 120));
        re::DynamicArray<float>::DynamicArray(v12 + v13 + 160, (v11 + v13 + 160));
        result = re::DynamicArray<float>::DynamicArray(v12 + v13 + 200, (v11 + v13 + 200));
        v14 -= 240;
        v11 += 240;
        v12 += 240;
      }

      while (v13 != v14);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(*(a2 + 32), (*(a2 + 32) + 240 * v4), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = a1[4];
      v8 = 240 * v4;
      v9 = 240 * v6;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 200);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 160);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 120);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 80);
        re::DynamicArray<unsigned long>::deinit(v7 + v8 + 40);
        result = re::DynamicArray<unsigned long>::deinit(v7 + v8);
        v9 -= 240;
        v7 += 240;
      }

      while (v8 != v9);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *,re::RigTwoBoneIKHandles *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<unsigned long>::operator=(a3 + 40, v5 + 5);
      re::DynamicArray<unsigned long>::operator=(a3 + 80, v5 + 10);
      re::DynamicArray<unsigned long>::operator=(a3 + 120, v5 + 15);
      re::DynamicArray<float>::operator=(a3 + 160, v5 + 20);
      result = re::DynamicArray<float>::operator=(a3 + 200, v5 + 25);
      v5 += 30;
      a3 += 240;
    }

    while (v5 != a2);
  }

  return result;
}

void re::DynamicArray<re::RigSingleChainIKHandles>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(*(a2 + 32), *(a2 + 32) + (a1[2] << 7), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = v8 << 7;
      v12 = v4 << 7;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11, (v9 + v11));
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11 + 40, (v9 + v11 + 40));
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11 + 80, (v9 + v11 + 80));
        *(v10 + v11 + 120) = *(v9 + v11 + 120);
        v12 -= 128;
        v9 += 128;
        v10 += 128;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(*(a2 + 32), *(a2 + 32) + (v4 << 7), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + (v4 << 7);
      v7 = (v5 << 7) - (v4 << 7);
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 80);
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        re::DynamicArray<unsigned long>::deinit(v6);
        v6 += 128;
        v7 -= 128;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

float std::__copy_impl::operator()[abi:nn200100]<re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *,re::RigSingleChainIKHandles *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<unsigned long>::operator=(a3 + 40, (v5 + 40));
      re::DynamicArray<unsigned long>::operator=(a3 + 80, (v5 + 80));
      result = *(v5 + 120);
      *(a3 + 120) = result;
      v5 += 128;
      a3 += 128;
    }

    while (v5 != a2);
  }

  return result;
}

void re::DynamicArray<re::RigSplineIKHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigSplineIKHandle>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(*(a2 + 32), *(a2 + 32) + 240 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 240 * v8;
      v12 = 240 * v4;
      do
      {
        v13 = v10 + v11;
        v14 = v9 + v11;
        *v13 = *(v9 + v11);
        *(v10 + v11 + 8) = 0;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        v15 = *(v9 + v11 + 8);
        *(v13 + 40) = 0;
        if (v15)
        {
          v16 = *(v14 + 24);
          *(v10 + v11 + 8) = v15;
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity((v10 + v11 + 8), v16);
          ++*(v13 + 32);
          re::DynamicArray<re::RigSplineIKJoint>::copy((v10 + v11 + 8), v9 + v11 + 8);
        }

        *(v13 + 48) = 0;
        v17 = v13 + 48;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        v20 = *(v14 + 48);
        v19 = v14 + 48;
        v18 = v20;
        *(v17 + 32) = 0;
        if (v20)
        {
          v21 = *(v9 + v11 + 64);
          *v17 = v18;
          re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(v17, v21);
          ++*(v10 + v11 + 72);
          re::DynamicArray<re::RigSplineIKControlPoint>::copy(v17, v19);
        }

        v22 = v10 + v11;
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 88, (v9 + v11 + 88));
        v23 = *(v9 + v11 + 128);
        v24 = *(v9 + v11 + 160);
        *(v22 + 144) = *(v9 + v11 + 144);
        *(v22 + 160) = v24;
        *(v22 + 128) = v23;
        v25 = *(v9 + v11 + 176);
        v26 = *(v9 + v11 + 192);
        v27 = *(v9 + v11 + 208);
        *(v22 + 224) = *(v9 + v11 + 224);
        *(v22 + 192) = v26;
        *(v22 + 208) = v27;
        *(v22 + 176) = v25;
        v9 += 240;
        v10 += 240;
        v12 -= 240;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(*(a2 + 32), *(a2 + 32) + 240 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -240 * v4 + 240 * v5;
      v7 = 240 * v4 + a1[4] + 88;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v7);
        re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v7 - 40);
        re::DynamicArray<unsigned long>::deinit(v7 - 80);
        v7 += 240;
        v6 -= 240;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKHandle *,re::RigSplineIKHandle *,re::RigSplineIKHandle *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *(a3 + v6) = *(a1 + v6);
      v9 = (a3 + v6 + 8);
      if (a3 != a1)
      {
        v10 = *(a1 + v6 + 8);
        if (*v9)
        {
          if (v10)
          {
            re::DynamicArray<re::RigSplineIKJoint>::copy((a3 + v6 + 8), a1 + v6 + 8);
            v11 = a3 + v6;
          }

          else
          {
            v11 = a3 + v6;
            *(a3 + v6 + 24) = 0;
          }

          ++*(v11 + 32);
        }

        else if (v10)
        {
          v12 = *(a1 + v6 + 24);
          *v9 = v10;
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity((a3 + v6 + 8), v12);
          ++*(a3 + v6 + 32);
          re::DynamicArray<re::RigSplineIKJoint>::copy((a3 + v6 + 8), a1 + v6 + 8);
        }

        v13 = *(a1 + v6 + 48);
        if (*(a3 + v6 + 48))
        {
          v14 = (a3 + v6 + 48);
          if (v13)
          {
            re::DynamicArray<re::RigSplineIKControlPoint>::copy(v14, a1 + v6 + 48);
            ++*(a3 + v6 + 72);
          }

          else
          {
            re::DynamicArray<re::RigSplineIKControlPoint>::clear(v14);
          }
        }

        else if (v13)
        {
          v15 = *(a1 + v6 + 64);
          *(a3 + v6 + 48) = v13;
          re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity((a3 + v6 + 48), v15);
          ++*(a3 + v6 + 72);
          re::DynamicArray<re::RigSplineIKControlPoint>::copy((a3 + v6 + 48), a1 + v6 + 48);
        }
      }

      re::DynamicArray<float>::operator=(v8 + 88, (v7 + 88));
      v17 = *(v7 + 144);
      v16 = *(v7 + 160);
      *(v8 + 128) = *(v7 + 128);
      *(v8 + 144) = v17;
      *(v8 + 160) = v16;
      v19 = *(v7 + 192);
      result = *(v7 + 208);
      v20 = *(v7 + 176);
      *(v8 + 224) = *(v7 + 224);
      *(v8 + 192) = v19;
      *(v8 + 208) = result;
      *(v8 + 176) = v20;
      v6 += 240;
    }

    while (v7 + 240 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigSplineIKJoint>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigSplineIKJoint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 80 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 80 * v5, (*(a2 + 32) + 80 * v5), 80 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 80 * v4);
  }

  v3[2] = v4;
  return result;
}

void re::DynamicArray<re::RigSplineIKControlPoint>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::RigSplineIKControlPoint>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(*(a2 + 32), (*(a2 + 32) + 96 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = a1[4];
      v11 = 96 * v8;
      v12 = 96 * v4;
      do
      {
        re::DynamicArray<unsigned long>::DynamicArray(v10 + v11, (v9 + v11));
        re::DynamicArray<float>::DynamicArray(v10 + v11 + 40, (v9 + v11 + 40));
        *(v10 + v11 + 80) = *(v9 + v11 + 80);
        v12 -= 96;
        v9 += 96;
        v10 += 96;
      }

      while (v11 != v12);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(*(a2 + 32), (*(a2 + 32) + 96 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = a1[4] + 96 * v4;
      v7 = 96 * v5 - 96 * v4;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v6 + 40);
        re::DynamicArray<unsigned long>::deinit(v6);
        v6 += 96;
        v7 -= 96;
      }

      while (v7);
    }
  }

  a1[2] = v4;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *,re::RigSplineIKControlPoint *>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::DynamicArray<unsigned long>::operator=(a3, v5);
      re::DynamicArray<float>::operator=(&a3[2].n128_i64[1], &v5[2].n128_i64[1]);
      result = v5[5];
      a3[5] = result;
      v5 += 6;
      a3 += 6;
    }

    while (v5 != a2);
  }

  return result;
}

void **re::DynamicArray<re::RigTransform>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), (v5 << 6) - 15);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), (v4 << 6) - 15);
  }

  v3[2] = v4;
  return result;
}

void **re::DynamicArray<re::RigJoint>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigJoint>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 96 * v5 - 15);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 96 * v5, (*(a2 + 32) + 96 * v5), 96 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 96 * v4 - 15);
  }

  v3[2] = v4;
  return result;
}

void re::DynamicArray<re::RigNode>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::RigNode>::setCapacity(a1, *(a2 + 16));
    v14 = *(a2 + 32);
    v15 = a1[2];
    v16 = a1[4];
    if (v15)
    {
      v17 = 56 * v15;
      do
      {
        v18 = re::StringID::operator=(v16, v14);
        v19 = *(v14 + 16);
        v20 = *(v14 + 32);
        v18[6] = *(v14 + 48);
        *(v18 + 1) = v19;
        *(v18 + 2) = v20;
        v14 += 56;
        v16 = v18 + 7;
        v17 -= 56;
      }

      while (v17);
      v16 = a1[4];
      v15 = a1[2];
      v14 = *(a2 + 32);
    }

    if (v15 != v4)
    {
      v21 = 56 * v15;
      v22 = v14 + v21;
      v23 = &v16[v21 / 8];
      v24 = 56 * v4 - v21;
      do
      {
        v25 = re::StringID::StringID(v23, v22);
        v26 = *(v22 + 16);
        v27 = *(v22 + 32);
        *(v25 + 6) = *(v22 + 48);
        *(v25 + 1) = v26;
        *(v25 + 2) = v27;
        v22 += 56;
        v23 = (v25 + 56);
        v24 -= 56;
      }

      while (v24);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 56 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        v10 = *(v7 + 16);
        v11 = *(v7 + 32);
        v9[6] = *(v7 + 48);
        *(v9 + 1) = v10;
        *(v9 + 2) = v11;
        v7 += 56;
        v6 = v9 + 7;
        v8 -= 56;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v12 = &v6[7 * v4];
      v13 = -56 * v4 + 56 * v5;
      do
      {
        re::StringID::destroyString(v12);
        v12 = (v12 + 56);
        v13 -= 56;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::RigPose>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::RigPose>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 32 * v13;
      do
      {
        v16 = re::StringID::operator=(v14, v12);
        *(v16 + 1) = *(v12 + 16);
        v12 += 32;
        v14 = v16 + 4;
        v15 -= 32;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = v12 + 32 * v13;
      v18 = &v14[4 * v13];
      v19 = 32 * v4 - 32 * v13;
      do
      {
        v20 = re::StringID::StringID(v18, v17);
        *(v20 + 1) = *(v17 + 16);
        v17 += 32;
        v18 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 32 * v4;
      do
      {
        v9 = re::StringID::operator=(v6, v7);
        *(v9 + 1) = *(v7 + 16);
        v7 += 32;
        v6 = v9 + 4;
        v8 -= 32;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[4 * v4];
      v11 = 32 * v5 - 32 * v4;
      do
      {
        re::StringID::destroyString(v10);
        v10 = (v10 + 32);
        v11 -= 32;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

uint64_t re::DynamicArray<re::RigComponentConstraint>::operator=(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = a2[1];
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = *(result + 16);
      *(result + 16) = a2[2];
      a2[2] = v10;
      v11 = *(result + 32);
      *(result + 32) = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t *re::FixedArray<re::FixedArray<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::FixedArray<float>>::init<>(a1, v4, a2[1]);
  }

  v5 = a2[1];
  if (a1[1] == v5)
  {
    if (v5)
    {
      v6 = a2[2];
      v7 = a1[2];
      v8 = 24 * v5;
      do
      {
        re::FixedArray<float>::operator=(v7, v6);
        v6 += 3;
        v7 += 3;
        v8 -= 24;
      }

      while (v8);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::TwoBoneIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::TwoBoneIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 32 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::FABRIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::FABRIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 8 * v5);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t re::FixedArray<re::SplineIKOptions>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::SplineIKOptions>::init<>(a1, v4, *(a2 + 8));
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8) == v5)
  {
    if (v5)
    {
      memmove(*(a1 + 16), *(a2 + 16), 80 * v5 - 12);
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t *re::FixedArray<unsigned long>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<unsigned long>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<unsigned long>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::Vector3<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::Vector3<float>>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::Vector3<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Vector3<float>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 16 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::Matrix4x4<float>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::Matrix4x4<float>>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::Matrix4x4<float>>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Matrix4x4<float>>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, v4 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<unsigned long>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::EvaluationContextManager::bindOutputHandle<re::Matrix4x4<float>>(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a3[3])
  {
    return 0;
  }

  v7 = *a3;
  v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v18 = a2;
    v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    a2 = v18;
    if (v17)
    {
      re::introspect<re::Matrix4x4<float>>(BOOL)::info = re::introspect_Matrix4x4F(0);
      v8 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      a2 = v18;
    }
  }

  if (v7 != *(v8 + 131))
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v22 = v10;
  if (v10 >= a1[248])
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::resize(a1 + 246, v10 + 1);
  }

  else if (*(a1[250] + 56 * v10 + 24))
  {
    return 0;
  }

  re::DynamicArray<unsigned long>::add((a1 + 291), &v22);
  v19 = *a3;
  re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(v20, a3 + 1);
  v21 = a4;
  v11 = v22;
  v12 = a1[248];
  if (v12 <= v22)
  {
    v23 = 0;
    memset(v32, 0, sizeof(v32));
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v11;
    v30 = 2048;
    v31 = v12;
    _os_log_send_and_compose_impl(v16, &v23, v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = a1[250] + 56 * v22;
  *v13 = v19;
  re::DynamicArray<re::RigDataValue>::operator=(v13 + 8, v20);
  *(v13 + 48) = v21;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v20);
  return 1;
}

void *re::DynamicArray<re::internal::RigIKCall>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::RigIKCall>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v25, v27);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v26, v28);
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
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v12 = (v8 + 8);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v13 = v11[3];
          v14 = *(v8 + 24);
          v11[2] = *(v8 + 16);
          v11[3] = v14;
          *(v8 + 16) = 0;
          *(v8 + 24) = v13;
          v11[4] = 0;
          v11[5] = 0;
          v11[6] = 0;
          v15 = (v8 + 32);
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v16 = v11[6];
          v17 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v17;
          *(v8 + 40) = 0;
          *(v8 + 48) = v16;
          v11[7] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v18 = (v8 + 56);
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v19 = v11[9];
          v20 = *(v8 + 72);
          v11[8] = *(v8 + 64);
          v11[9] = v20;
          *(v8 + 64) = 0;
          *(v8 + 72) = v19;
          *(v11 + 5) = *(v8 + 80);
          v11[13] = 0;
          v11[14] = 0;
          v11[12] = 0;
          v22 = *(v8 + 96);
          v21 = v8 + 96;
          v11[12] = v22;
          *v21 = 0;
          v23 = v11[14];
          v24 = *(v21 + 16);
          v11[13] = *(v21 + 8);
          v11[14] = v24;
          *(v21 + 8) = 0;
          *(v21 + 16) = v23;
          *(v11 + 15) = *(v21 + 24);
          re::FixedArray<CoreIKTransform>::deinit(v21);
          re::FixedArray<CoreIKTransform>::deinit(v18);
          re::FixedArray<CoreIKTransform>::deinit(v15);
          re::FixedArray<CoreIKTransform>::deinit(v12);
          v11 += 17;
          v8 = v21 + 40;
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

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v9 = *(result + 16);
  v10 = *a2;
  result = strcmp(*(v9 + 32 * v8 + 8), *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_11;
  }

  v11 = *(v9 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = strcmp(*(v9 + 32 * v11 + 8), v10);
      if (!result)
      {
        break;
      }

      v11 = *(v9 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_12;
      }
    }

    v6 = v12;
  }

LABEL_12:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

void re::FixedArray<char const*>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
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
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::internal::RigIKCallbackData *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::function<void ()(re::internal::RigIKCallbackData *)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v8);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    re::convertIntrinsicEulersToQuaternions<float>(v3, v4, v5, v6, v7);
  }
}

void re::convertIntrinsicEulersToQuaternions<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a2)
      {
        v43 = 0;
        v44 = (a1 + 8);
        v45 = (a4 + 8);
        while (a5 != v43)
        {
          v46 = __sincosf_stret(*(v44 - 2) * 0.5);
          v47 = __sincosf_stret(*(v44 - 1) * 0.5);
          v48 = *v44;
          v44 += 4;
          v49 = __sincosf_stret(v48 * 0.5);
          *(v45 - 2) = ((v46.__sinval * v47.__cosval) * v49.__cosval) - ((v46.__cosval * v47.__sinval) * v49.__sinval);
          *(v45 - 1) = ((v46.__cosval * v47.__sinval) * v49.__cosval) - ((v46.__sinval * v47.__cosval) * v49.__sinval);
          *v45 = ((v46.__sinval * v47.__sinval) * v49.__cosval) + ((v46.__cosval * v47.__cosval) * v49.__sinval);
          v45[1] = ((v46.__sinval * v47.__sinval) * v49.__sinval) + ((v46.__cosval * v47.__cosval) * v49.__cosval);
          v45 += 4;
          if (a2 == ++v43)
          {
            return;
          }
        }

        goto LABEL_43;
      }

      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (a2)
        {
          v14 = 0;
          v15 = (a1 + 8);
          v16 = (a4 + 8);
          while (a5 != v14)
          {
            v17 = __sincosf_stret(*(v15 - 2) * 0.5);
            v18 = __sincosf_stret(*(v15 - 1) * 0.5);
            v19 = *v15;
            v15 += 4;
            v20 = __sincosf_stret(v19 * 0.5);
            *(v16 - 2) = ((v17.__sinval * v18.__cosval) * v20.__cosval) - ((v17.__cosval * v18.__sinval) * v20.__sinval);
            *(v16 - 1) = ((v17.__sinval * v18.__cosval) * v20.__sinval) + ((v17.__cosval * v18.__sinval) * v20.__cosval);
            *v16 = ((v17.__cosval * v18.__cosval) * v20.__sinval) - ((v17.__sinval * v18.__sinval) * v20.__cosval);
            v16[1] = ((v17.__sinval * v18.__sinval) * v20.__sinval) + ((v17.__cosval * v18.__cosval) * v20.__cosval);
            v16 += 4;
            if (a2 == ++v14)
            {
              return;
            }
          }

          goto LABEL_41;
        }

        return;
      }

LABEL_44:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown rotation order", "!Unreachable code", "convertIntrinsicEulersToQuaternions", 554);
      _os_crash("assertion failure: (!Unreachable code) Unknown rotation order");
      __break(1u);
      return;
    }

    if (!a2)
    {
      return;
    }

    v29 = 0;
    v30 = (a1 + 8);
    v31 = (a4 + 8);
    while (a5 != v29)
    {
      v32 = __sincosf_stret(*(v30 - 2) * 0.5);
      v33 = __sincosf_stret(*(v30 - 1) * 0.5);
      v34 = *v30;
      v30 += 4;
      v35 = __sincosf_stret(v34 * 0.5);
      *(v31 - 2) = ((v32.__cosval * v33.__sinval) * v35.__sinval) + ((v32.__sinval * v33.__cosval) * v35.__cosval);
      *(v31 - 1) = ((v32.__cosval * v33.__sinval) * v35.__cosval) - ((v32.__sinval * v33.__cosval) * v35.__sinval);
      *v31 = ((v32.__cosval * v33.__cosval) * v35.__sinval) - ((v32.__sinval * v33.__sinval) * v35.__cosval);
      v31[1] = ((v32.__sinval * v33.__sinval) * v35.__sinval) + ((v32.__cosval * v33.__cosval) * v35.__cosval);
      v31 += 4;
      if (a2 == ++v29)
      {
        return;
      }
    }

LABEL_39:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v57);
    __break(1u);
LABEL_40:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v58);
    __break(1u);
LABEL_41:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v59);
    __break(1u);
LABEL_42:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v60);
    __break(1u);
LABEL_43:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v55, v61);
    __break(1u);
    goto LABEL_44;
  }

  if (!a3)
  {
    if (a2)
    {
      v36 = 0;
      v37 = (a1 + 8);
      v38 = (a4 + 8);
      while (a5 != v36)
      {
        v39 = __sincosf_stret(*(v37 - 2) * 0.5);
        v40 = __sincosf_stret(*(v37 - 1) * 0.5);
        v41 = *v37;
        v37 += 4;
        v42 = __sincosf_stret(v41 * 0.5);
        *(v38 - 2) = ((v39.__cosval * v40.__sinval) * v42.__sinval) + ((v39.__sinval * v40.__cosval) * v42.__cosval);
        *(v38 - 1) = ((v39.__cosval * v40.__sinval) * v42.__cosval) - ((v39.__sinval * v40.__cosval) * v42.__sinval);
        *v38 = ((v39.__sinval * v40.__sinval) * v42.__cosval) + ((v39.__cosval * v40.__cosval) * v42.__sinval);
        v38[1] = ((v39.__cosval * v40.__cosval) * v42.__cosval) - ((v39.__sinval * v40.__sinval) * v42.__sinval);
        v38 += 4;
        if (a2 == ++v36)
        {
          return;
        }
      }

      goto LABEL_42;
    }

    return;
  }

  if (a3 == 1)
  {
    if (!a2)
    {
      return;
    }

    v21 = 0;
    v22 = (a1 + 8);
    v23 = (a4 + 8);
    while (a5 != v21)
    {
      v24 = __sincosf_stret(*(v22 - 2) * 0.5);
      v25 = __sincosf_stret(*(v22 - 1) * 0.5);
      v26 = *v22;
      v22 += 4;
      v27 = __sincosf_stret(v26 * 0.5);
      *(v23 - 2) = ((v24.__cosval * v25.__sinval) * v27.__sinval) + ((v24.__sinval * v25.__cosval) * v27.__cosval);
      *(v23 - 1) = ((v24.__sinval * v25.__cosval) * v27.__sinval) + ((v24.__cosval * v25.__sinval) * v27.__cosval);
      v28 = -(v24.__sinval * v25.__sinval);
      *v23 = (v27.__cosval * v28) + ((v24.__cosval * v25.__cosval) * v27.__sinval);
      v23[1] = (v27.__sinval * v28) + ((v24.__cosval * v25.__cosval) * v27.__cosval);
      v23 += 4;
      if (a2 == ++v21)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v56);
    __break(1u);
    goto LABEL_39;
  }

  if (a3 != 2)
  {
    goto LABEL_44;
  }

  if (a2)
  {
    v7 = 0;
    v8 = (a1 + 8);
    v9 = (a4 + 8);
    while (a5 != v7)
    {
      v10 = __sincosf_stret(*(v8 - 2) * 0.5);
      v11 = __sincosf_stret(*(v8 - 1) * 0.5);
      v12 = *v8;
      v8 += 4;
      v13 = __sincosf_stret(v12 * 0.5);
      *(v9 - 2) = ((v10.__sinval * v11.__cosval) * v13.__cosval) - ((v10.__cosval * v11.__sinval) * v13.__sinval);
      *(v9 - 1) = ((v10.__sinval * v11.__cosval) * v13.__sinval) + ((v10.__cosval * v11.__sinval) * v13.__cosval);
      *v9 = ((v10.__sinval * v11.__sinval) * v13.__cosval) + ((v10.__cosval * v11.__cosval) * v13.__sinval);
      v9[1] = ((v10.__cosval * v11.__cosval) * v13.__cosval) - ((v10.__sinval * v11.__sinval) * v13.__sinval);
      v9 += 4;
      if (a2 == ++v7)
      {
        return;
      }
    }

    goto LABEL_40;
  }
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB1AF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::operator()(uint64_t result, uint64_t **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 15);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 12);
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(v2 + 9);
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(v2 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    re::FixedArray<re::internal::RigIKCall>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0,std::allocator<re::RigEvaluation::constructEvaluationCommands(re::Slice<char const*>,re::EvaluationTree *)::$_0>,void ()(re::internal::RigIKCallbackData *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](a1);
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

uint64_t std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::operator=[abi:nn200100](uint64_t a1)
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

void *re::FixedArray<unsigned long>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

double re::makeSkeletalPoseJointBindNode@<D0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, const re::BindPoint *a3@<X1>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    goto LABEL_7;
  }

  v6 = *this;
  v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v14)
    {
      re::introspect<re::SkeletalPose>(BOOL)::info = re::internal::getOrCreateInfo("SkeletalPose", re::allocInfo_SkeletalPose, re::initInfo_SkeletalPose, &re::internal::introspectionInfoStorage<re::SkeletalPose>, 0);
      v7 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  if (v6 == *(v7 + 95) && (v8 = re::BindPoint::valueUntyped(this), *(v8 + 24) > a3))
  {
    {
      if (v8)
      {
        re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
      }
    }

    *a1 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
    a1[5] = 0;
    a1[2] = 0;
    a1[3] = 0;
    *(a1 + 8) = 0;
    a1[1] = 0;
    memset(v15, 0, sizeof(v15));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v15);
    v9 = re::BindPoint::BindPointData::deinit(v15);
    v10 = a1[5] + 32 * a1[3];
    *(v10 - 32) = 0;
    v12 = *this;
    *v11 = &unk_1F5CB1BD0;
    v11[1] = v12;
    re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v11 + 2), this + 1);
    v11[7] = a3;
    *(v10 - 16) = v11;
  }

  else
  {
LABEL_7:
    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

__n128 re::EvaluationSkeletalPoseInputHandle::set(re::EvaluationSkeletalPoseInputHandle *this, const re::SkeletalPose *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 3);
      if (v6 <= v5)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v23 = 476;
        v24 = 2048;
        v25 = v5;
        v26 = 2048;
        v27 = v6;
        _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 468;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v2;
        _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v7 = (*(this + 2) + v4);
      v8 = *v7;
      v6 = v7[1];
      v2 = *(*v7 + 2736);
      if (v2 <= v6)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 4) + v3;
      v10 = *(v8 + 2744) + 48 * v6;
      result = *v9;
      v12 = *(v9 + 32);
      *(v10 + 16) = *(v9 + 16);
      *(v10 + 32) = v12;
      *v10 = result;
      ++v5;
      v4 += 16;
      v3 += 48;
    }

    while (v5 < *(this + 1));
  }

  return result;
}

__n128 re::EvaluationSkeletalPoseOutputHandle::get(re::EvaluationSkeletalPoseOutputHandle *this, re::SkeletalPose *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 3);
      if (v6 <= v5)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v23 = 468;
        v24 = 2048;
        v25 = v5;
        v26 = 2048;
        v27 = v6;
        _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 476;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v2;
        _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v7 = (*(this + 2) + v4);
      v8 = *v7;
      v6 = v7[1];
      v2 = *(*v7 + 2952);
      if (v2 <= v6)
      {
        goto LABEL_11;
      }

      v9 = *(a2 + 4) + v3;
      v10 = *(v8 + 2960) + 48 * v6;
      result = *v10;
      v12 = *(v10 + 32);
      *(v9 + 16) = *(v10 + 16);
      *(v9 + 32) = v12;
      *v9 = result;
      ++v5;
      v4 += 16;
      v3 += 48;
    }

    while (v5 < *(this + 1));
  }

  return result;
}

ArcSharedObject *re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(ArcSharedObject *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v8 + 16) = a2;
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *v8 = &unk_1F5CB1B88;
  *(v8 + 32) = &str_67;
  *(v8 + 40) = 0u;
  v10 = (v8 + 40);
  *(v8 + 180) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 196) = 0x7FFFFFFFLL;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 252) = 0u;
  *(v8 + 208) = 0u;
  v11 = (v8 + 208);
  *(v8 + 268) = 0x7FFFFFFFLL;
  re::FixedArray<re::StringID>::init<>((v8 + 208), a2, *(a3 + 8));
  re::FixedArray<re::StringID>::operator=(v11, a3);
  re::SkeletalPoseJointDefinition::buildJointNameMap(a1);
  if (a4 && a4[2])
  {
    re::StringID::operator=(v9, a4);
    re::FixedArray<re::StringID>::operator=(v10, a4 + 2);
    re::FixedArray<unsigned int>::operator=(a1 + 8, a4 + 5);
    re::FixedArray<re::FixedArray<unsigned int>>::operator=(a1 + 11, a4 + 8);
    re::FixedArray<re::GenericSRT<float>>::operator=(a1 + 14, a4 + 11);
    re::FixedArray<re::Matrix4x4<float>>::operator=(a1 + 17, a4 + 14);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((a1 + 160), (a4 + 17));
  }

  return a1;
}

uint64_t re::SkeletalPoseJointDefinition::SkeletalPoseJointDefinition(uint64_t a1, void *a2, const StringID *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB1B88;
  re::StringID::StringID((a1 + 24), a3);
  re::FixedArray<re::StringID>::FixedArray((a1 + 40), &a3[1]);
  re::FixedArray<unsigned int>::FixedArray((a1 + 64), &a3[2].var1);
  re::FixedArray<re::FixedArray<unsigned int>>::FixedArray((a1 + 88), &a3[4]);
  re::FixedArray<re::GenericSRT<float>>::FixedArray((a1 + 112), &a3[5].var1);
  re::FixedArray<re::Matrix4x4<float>>::FixedArray((a1 + 136), &a3[7]);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(a1 + 160, &a3[8].var1);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  v6 = a2[1];
  *(a1 + 208) = *a2;
  *(a1 + 216) = v6;
  *a2 = 0;
  a2[1] = 0;
  v7 = *(a1 + 224);
  *(a1 + 224) = a2[2];
  a2[2] = v7;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 268) = 0x7FFFFFFFLL;
  re::SkeletalPoseJointDefinition::buildJointNameMap(a1);
  return a1;
}

void re::SkeletalPoseJointDefinition::buildJointNameMap(re::SkeletalPoseJointDefinition *this)
{
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 232, *(this + 26), 2 * *(this + 54));
  v8 = 0;
  if (*(this + 27))
  {
    v2 = 0;
    do
    {
      re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 232, (*(this + 28) + 16 * v2), &v8);
      v2 = v8 + 1;
      v8 = v2;
      v3 = *(this + 27);
    }

    while (v2 < v3);
    v10 = 0;
    if (v3)
    {
      for (i = 0; i < v3; v10 = i)
      {
        v5 = strrchr(*(*(this + 28) + 16 * i + 8), 47);
        if (v5)
        {
          v6 = v5;
          v8 = 0;
          v9 = &str_67;
          v7 = re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 232, &v8, &v10);
          if (v8)
          {
            if (v8)
            {
            }
          }

          i = v10;
          v3 = *(this + 27);
        }

        ++i;
      }
    }
  }
}

void re::EvaluationSkeletalPose::createInputHandle(uint64_t *__return_ptr a1@<X8>, re::EvaluationSkeletalPose *this@<X0>, re::EvaluationContextManager *a3@<X1>)
{
  v36 = *MEMORY[0x1E69E9840];
  a1[2] = 0;
  v6 = *(this + 1);
  a1[1] = v6;
  if (v6)
  {
    if (v6 >> 60)
    {
LABEL_17:
      re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v6);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v21, v22);
      __break(1u);
LABEL_18:
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v8 = 2 * v6;
    a1[2] = v9;
    if (!v9)
    {
      goto LABEL_18;
    }

    v11 = v9;
    v12 = v9;
    if (v6 != 1)
    {
      bzero(v9, v8 * 8 - 16);
      v12 = &v11[v8 - 2];
    }

    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 1))
  {
    v13 = 0;
    v14 = 0;
    for (i = v11 + 1; ; i += 2)
    {
      v16 = *(this + 2);
      v25[0] = 0x3F8000003F800000;
      v25[1] = 1065353216;
      v25[2] = 0;
      v25[3] = 0x3F80000000000000;
      v25[4] = 0;
      v25[5] = 0;
      re::DynamicArray<re::EvaluationSRT>::add((a3 + 328), (v16 + v13));
      re::DynamicArray<re::Matrix3x3<float>>::add((a3 + 688), v25);
      if (v6 == v14)
      {
        break;
      }

      v17 = *(a3 + 43) - 1;
      *(i - 1) = a3;
      *i = v17;
      ++v14;
      v13 += 24;
      if (v14 >= *(this + 1))
      {
        return;
      }
    }

    v26 = 0;
    memset(v35, 0, sizeof(v35));
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v30 = 468;
    v31 = 2048;
    v32 = v6;
    v33 = 2048;
    v34 = v6;
    _os_log_send_and_compose_impl(v20, &v26, v35, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v23, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }
}

void re::EvaluationSkeletalPose::createOutputHandle(uint64_t *__return_ptr a1@<X8>, re::EvaluationSkeletalPose *this@<X0>, re::EvaluationContextManager *a3@<X1>)
{
  v26 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *(this + 1);
  if (*(this + 1))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      re::DynamicArray<re::EvaluationSRT>::add((a3 + 1768), (*(this + 2) + v7));
      v10 = a1[1];
      if (v10 <= v9)
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

        v20 = 468;
        v21 = 2048;
        v22 = v9;
        v23 = 2048;
        v24 = v10;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v11 = *(a3 + 223) - 1;
      v12 = (a1[2] + v8);
      *v12 = a3;
      v12[1] = v11;
      ++v9;
      v8 += 16;
      v7 += 24;
    }

    while (v9 < *(this + 1));
  }
}

uint64_t re::SkeletalPose::SkeletalPose(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  re::FixedArray<re::GenericSRT<float>>::init<>((a1 + 16), a2, *(*a3 + 216));
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 80), *a3);
  return a1;
}

void re::SkeletalPose::init(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 10, v4);
}

void re::SkeletalPose::deinit(re::SkeletalPose *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }
}

void re::SkeletalPose::reset(uint64_t *a1, uint64_t *a2)
{
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1 + 10, *a2);
  if (a1[3] != *(a1[10] + 216))
  {
    v4 = a1[2];
    if (!v4)
    {
    }

    re::FixedArray<CoreIKTransform>::deinit(a1 + 2);
    v5 = *(a1[10] + 216);

    re::FixedArray<re::GenericSRT<float>>::init<>(a1 + 2, v4, v5);
  }
}

void *re::allocInfo_SkeletalPose(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE190958, "SkeletalPose");
    __cxa_guard_release(&_MergedGlobals_20);
  }

  return &unk_1EE190958;
}

void re::initInfo_SkeletalPose(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x3D0B75488F9EC5D4;
  v20[1] = "SkeletalPose";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE190938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE190938))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "jointTransforms";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1000000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE190940 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "poseMask";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE190948 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "name";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE190950 = v18;
    __cxa_guard_release(&qword_1EE190938);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE190940;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPose>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPose>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPose>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPose>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

uint64_t *re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionDynamicArray<BOOL>::IntrospectionDynamicArray();
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_BOOL(1, a2);
  if ((re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info, 0);
    qword_1EE186908 = 0x2800000003;
    dword_1EE186910 = v8;
    word_1EE186914 = 0;
    *&xmmword_1EE186918 = 0;
    *(&xmmword_1EE186918 + 1) = 0xFFFFFFFFLL;
    qword_1EE186928 = v7;
    qword_1EE186930 = 0;
    re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CB1CA8;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info);
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
    xmmword_1EE186918 = v14;
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

  return &re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::SkeletalPose>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::SkeletalPose>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t *re::AnimationValueTraits<re::SkeletalPose>::copy(uint64_t *result, void *a2)
{
  v4 = result;
  v41 = *MEMORY[0x1E69E9840];
  v5 = result[10];
  if (v5 == a2[10])
  {

    return re::FixedArray<re::GenericSRT<float>>::operator=(a2 + 2, result + 2);
  }

  else
  {
    v6 = *(v5 + 216);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = v4[10];
        v11 = *(v10 + 216);
        if (v11 <= v9)
        {
          break;
        }

        v12 = *(v10 + 224);
        v2 = a2[10];
        v13 = 0xBF58476D1CE4E5B9 * ((*(v12 + v7) >> 31) ^ (*(v12 + v7) >> 1));
        result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v2 + 232, (v12 + v7), (0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) ^ ((0x94D049BB133111EBLL * (v13 ^ (v13 >> 27))) >> 31), &v36);
        if (HIDWORD(v36) != 0x7FFFFFFF)
        {
          v11 = v4[3];
          if (v11 <= v9)
          {
            goto LABEL_18;
          }

          v2 = *(*(v2 + 248) + 32 * HIDWORD(v36) + 24);
          v11 = a2[3];
          if (v11 <= v2)
          {
            goto LABEL_22;
          }

          v14 = (v4[4] + v8);
          v15 = (a2[4] + 48 * v2);
          v16 = *v14;
          v17 = v14[2];
          v15[1] = v14[1];
          v15[2] = v17;
          *v15 = v16;
        }

        ++v9;
        v8 += 48;
        v7 += 16;
        if (v6 == v9)
        {
          return result;
        }
      }

      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v31 = 476;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v11;
      _os_log_send_and_compose_impl(v19, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v31 = 476;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v11;
      _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
LABEL_22:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v31 = 468;
      v32 = 2048;
      v33 = v2;
      v34 = 2048;
      v35 = v11;
      _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

float32x4_t re::AnimationValueTraits<re::SkeletalPose>::combine(_anonymous_namespace_ *a1, void *a2, void *a3)
{
  v8 = a1;
  v162 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 10);
  if (v9 == a2[10])
  {
    v16 = *(v9 + 216);
    if (v9 == a3[10])
    {
      if (v16)
      {
        v71 = 0;
        v3 = 0;
        while (1)
        {
          v14 = *(a1 + 3);
          if (v14 <= v3)
          {
            break;
          }

          v14 = a2[3];
          if (v14 <= v3)
          {
            goto LABEL_100;
          }

          v14 = a3[3];
          if (v14 <= v3)
          {
            goto LABEL_104;
          }

          v72 = a2[4] + v71;
          v73 = (a3[4] + v71);
          v74 = *(a1 + 4) + v71;
          _Q1 = *(v72 + 16);
          _Q3 = *(v74 + 16);
          v77 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v78 = vnegq_f32(_Q1);
          v79 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v78), _Q3, v77);
          _S7 = _Q3.i32[3];
          v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v81.i32[3] = _Q3.i32[0];
          v82 = *(v74 + 32);
          v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), v78), v82, v77);
          v84 = vaddq_f32(v83, v83);
          v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
          v86 = vaddq_f32(v82, vmulq_laneq_f32(v85, _Q1, 3));
          v87 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), v78), v85, v77);
          result = vaddq_f32(*(v72 + 32), vmulq_f32(*v72, vaddq_f32(v86, vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL))));
          *v73 = vmulq_f32(*v72, *v74);
          v73[1] = v81;
          v73[2] = result;
          ++v3;
          v71 += 48;
          if (v16 == v3)
          {
            return result;
          }
        }

LABEL_96:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v124 = MEMORY[0x1E69E9C10];
        v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v125)
        {
          v126 = 3;
        }

        else
        {
          v126 = 2;
        }

        v152 = 476;
        v153 = 2048;
        v154 = v3;
        v155 = 2048;
        v156 = v14;
        _os_log_send_and_compose_impl(v126, &v145, &v157, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v127 = MEMORY[0x1E69E9C10];
        v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v128)
        {
          v129 = 3;
        }

        else
        {
          v129 = 2;
        }

        v152 = 476;
        v153 = 2048;
        v154 = v3;
        v155 = 2048;
        v156 = v14;
        _os_log_send_and_compose_impl(v129, &v145, &v157, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
LABEL_104:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v130 = MEMORY[0x1E69E9C10];
        v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v131)
        {
          v132 = 3;
        }

        else
        {
          v132 = 2;
        }

        v152 = 468;
        v153 = 2048;
        v154 = v3;
        v155 = 2048;
        v156 = v14;
        _os_log_send_and_compose_impl(v132, &v145, &v157, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
LABEL_108:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v133 = MEMORY[0x1E69E9C10];
        v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v134)
        {
          v135 = 3;
        }

        else
        {
          v135 = 2;
        }

        v152 = 476;
        v153 = 2048;
        v154 = v3;
        v155 = 2048;
        v156 = v4;
        _os_log_send_and_compose_impl(v135, &v145, &v157, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
LABEL_112:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v136 = MEMORY[0x1E69E9C10];
        v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v137)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        v152 = 476;
        v153 = 2048;
        v154 = v3;
        v155 = 2048;
        v156 = v4;
        _os_log_send_and_compose_impl(v138, &v145, &v157, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
LABEL_116:
        v145 = 0;
        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v157 = 0u;
        v139 = MEMORY[0x1E69E9C10];
        v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v149 = 136315906;
        v150 = "operator[]";
        v151 = 1024;
        if (v140)
        {
          v141 = 3;
        }

        else
        {
          v141 = 2;
        }

        v152 = 468;
        v153 = 2048;
        v154 = v4;
        v155 = 2048;
        v156 = v5;
        _os_log_send_and_compose_impl(v141, &v145, &v157, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
        _os_crash_msg();
        __break(1u);
      }
    }

    else if (v16)
    {
      v14 = 0;
      v51 = 0;
      v3 = 0;
      v10 = 0x7FFFFFFFLL;
      while (1)
      {
        v52 = *(v8 + 10);
        v4 = *(v52 + 216);
        if (v4 <= v3)
        {
          goto LABEL_60;
        }

        v53 = *(v52 + 224);
        v5 = a3[10];
        v54 = 0xBF58476D1CE4E5B9 * ((*(v53 + v14) >> 31) ^ (*(v53 + v14) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 232, (v53 + v14), (0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) ^ ((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) >> 31), &v157);
        if (HIDWORD(v157) != 0x7FFFFFFF)
        {
          v4 = *(v8 + 3);
          if (v4 <= v3)
          {
            goto LABEL_108;
          }

          v4 = a2[3];
          if (v4 <= v3)
          {
            goto LABEL_112;
          }

          v4 = *(*(v5 + 248) + 32 * HIDWORD(v157) + 24);
          v5 = a3[3];
          if (v5 <= v4)
          {
            goto LABEL_116;
          }

          v55 = a2[4] + v51;
          v56 = a3[4] + 48 * v4;
          v57 = *(v8 + 4) + v51;
          _Q1 = *(v55 + 16);
          _Q3 = *(v57 + 16);
          v60 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
          v61 = vnegq_f32(_Q1);
          v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v61), _Q3, v60);
          _S7 = _Q3.i32[3];
          v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
          __asm { FMLA            S3, S7, V1.S[3] }

          v64.i32[3] = _Q3.i32[0];
          v65 = *(v57 + 32);
          v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v61), v65, v60);
          v67 = vaddq_f32(v66, v66);
          v68 = vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL);
          v69 = vaddq_f32(v65, vmulq_laneq_f32(v68, _Q1, 3));
          v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), v61), v68, v60);
          result = vaddq_f32(*(v55 + 32), vmulq_f32(*v55, vaddq_f32(v69, vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL))));
          *v56 = vmulq_f32(*v55, *v57);
          *(v56 + 16) = v64;
          *(v56 + 32) = result;
        }

        ++v3;
        v51 += 48;
        v14 += 16;
        if (v16 == v3)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v10 = 0xBF58476D1CE4E5B9;
    v144 = a2;
    v145 = 0;
    v11 = *(a2[10] + 216);
    v146 = 0;
    v147 = 0;
    v13 = *(*(v8 + 10) + 216);
    if (v13)
    {
      v4 = 0;
      v5 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *(v8 + 10);
        v16 = *(v15 + 216);
        if (v16 <= v14)
        {
          break;
        }

        v17 = *(v15 + 224);
        v3 = a3[10];
        v18 = ((*(v17 + v4) >> 31) ^ (*(v17 + v4) >> 1)) * v10;
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 232, (v17 + v4), (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v157);
        if (HIDWORD(v157) != 0x7FFFFFFF)
        {
          v3 = *(*(v3 + 248) + 32 * HIDWORD(v157) + 24);
          v19 = v10;
          v10 = v144[10];
          v20 = v19;
          v21 = ((*(v17 + v4) >> 31) ^ (*(v17 + v4) >> 1)) * v19;
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v10 + 232, (v17 + v4), (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), &v157);
          if (HIDWORD(v157) == 0x7FFFFFFF)
          {
            v16 = *(v8 + 3);
            if (v16 <= v14)
            {
              goto LABEL_68;
            }

            v16 = a3[3];
            if (v16 <= v3)
            {
              goto LABEL_72;
            }

            v22 = *(v8 + 4) + v5;
            v23 = a3[4] + 48 * v3;
            result = *v22;
            v24 = *(v22 + 32);
            *(v23 + 16) = *(v22 + 16);
            *(v23 + 32) = v24;
            *v23 = result;
          }

          else
          {
            v16 = *(v8 + 3);
            if (v16 <= v14)
            {
              goto LABEL_64;
            }

            v16 = *(*(v10 + 248) + 32 * HIDWORD(v157) + 24);
            v10 = v144[3];
            if (v10 <= v16)
            {
              goto LABEL_76;
            }

            v10 = a3[3];
            if (v10 <= v3)
            {
              goto LABEL_80;
            }

            v25 = v144[4] + 48 * v16;
            v26 = a3[4] + 48 * v3;
            v27 = *(v8 + 4) + v5;
            _Q1 = *(v25 + 16);
            _Q3 = *(v27 + 16);
            v30 = vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL);
            v31 = vnegq_f32(_Q1);
            v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v31), _Q3, v30);
            _S7 = _Q3.i32[3];
            v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), _Q3, _Q1, 3), _Q1, _Q3, 3);
            __asm { FMLA            S3, S7, V1.S[3] }

            v34.i32[3] = _Q3.i32[0];
            v39 = *(v27 + 32);
            v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v31), v39, v30);
            v41 = vaddq_f32(v40, v40);
            v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
            v43 = vaddq_f32(v39, vmulq_laneq_f32(v42, _Q1, 3));
            v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v31), v42, v30);
            result = vaddq_f32(*(v25 + 32), vmulq_f32(*v25, vaddq_f32(v43, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL))));
            *v26 = vmulq_f32(*v25, *v27);
            *(v26 + 16) = v34;
            *(v26 + 32) = result;
            v3 = v146;
            if (v146 <= v16)
            {
              goto LABEL_84;
            }

            *(v147 + v16) = 1;
          }

          v10 = v20;
        }

        ++v14;
        v5 += 48;
        v4 += 16;
        if (v13 == v14)
        {
          goto LABEL_17;
        }
      }

      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v14;
      v155 = 2048;
      v156 = v16;
      _os_log_send_and_compose_impl(v90, &v148, &v157, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

LABEL_17:
    v16 = *(v144[10] + 216);
    if (v16)
    {
      v3 = 0;
      v8 = 0;
      v14 = 0x7FFFFFFFLL;
      while (1)
      {
        v4 = v146;
        if (v146 <= v8)
        {
          break;
        }

        if ((*(v8 + v147) & 1) == 0)
        {
          v45 = v144[10];
          v4 = *(v45 + 216);
          if (v4 <= v8)
          {
            goto LABEL_56;
          }

          v46 = *(v45 + 224);
          v5 = a3[10];
          v47 = ((*(v46 + v3) >> 31) ^ (*(v46 + v3) >> 1)) * v10;
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 232, (v46 + v3), (0x94D049BB133111EBLL * (v47 ^ (v47 >> 27))) ^ ((0x94D049BB133111EBLL * (v47 ^ (v47 >> 27))) >> 31), &v157);
          if (HIDWORD(v157) != 0x7FFFFFFF)
          {
            v4 = v144[3];
            if (v4 <= v16)
            {
              goto LABEL_88;
            }

            v4 = *(*(v5 + 248) + 32 * HIDWORD(v157) + 24);
            v5 = a3[3];
            if (v5 <= v4)
            {
              goto LABEL_92;
            }

            v48 = v144[4] + 48 * v16;
            v49 = a3[4] + 48 * v4;
            result = *v48;
            v50 = *(v48 + 32);
            *(v49 + 16) = *(v48 + 16);
            *(v49 + 32) = v50;
            *v49 = result;
          }
        }

        v8 = (v8 + 1);
        v3 += 16;
        if (v16 == v8)
        {
          goto LABEL_27;
        }
      }

LABEL_52:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      v152 = 468;
      v153 = 2048;
      v154 = v8;
      v155 = 2048;
      v156 = v4;
      _os_log_send_and_compose_impl(v93, &v148, &v157, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v8;
      v155 = 2048;
      v156 = v4;
      _os_log_send_and_compose_impl(v96, &v148, &v157, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v145 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v3;
      v155 = 2048;
      v156 = v4;
      _os_log_send_and_compose_impl(v99, &v145, &v157, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v143);
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v100 = MEMORY[0x1E69E9C10];
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v14;
      v155 = 2048;
      v156 = v16;
      _os_log_send_and_compose_impl(v102, &v148, &v157, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v14;
      v155 = 2048;
      v156 = v16;
      _os_log_send_and_compose_impl(v105, &v148, &v157, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_72:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      v152 = 468;
      v153 = 2048;
      v154 = v3;
      v155 = 2048;
      v156 = v16;
      _os_log_send_and_compose_impl(v108, &v148, &v157, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_76:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v16;
      v155 = 2048;
      v156 = v10;
      _os_log_send_and_compose_impl(v111, &v148, &v157, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_80:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      v152 = 468;
      v153 = 2048;
      v154 = v3;
      v155 = 2048;
      v156 = v10;
      _os_log_send_and_compose_impl(v114, &v148, &v157, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_84:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      v152 = 468;
      v153 = 2048;
      v154 = v16;
      v155 = 2048;
      v156 = v3;
      _os_log_send_and_compose_impl(v117, &v148, &v157, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_88:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      v152 = 476;
      v153 = 2048;
      v154 = v16;
      v155 = 2048;
      v156 = v4;
      _os_log_send_and_compose_impl(v120, &v148, &v157, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v148 = 0;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v157 = 0u;
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v149 = 136315906;
      v150 = "operator[]";
      v151 = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      v152 = 468;
      v153 = 2048;
      v154 = v4;
      v155 = 2048;
      v156 = v5;
      _os_log_send_and_compose_impl(v123, &v148, &v157, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v142, v144);
      _os_crash_msg();
      __break(1u);
      goto LABEL_96;
    }

LABEL_27:
    if (v145)
    {
      if (v146)
      {
        (*(*v145 + 40))();
      }
    }
  }

  return result;
}

void *re::AnimationValueTraits<re::SkeletalPose>::invert(void *result, void *a2)
{
  v5 = result;
  v76 = *MEMORY[0x1E69E9840];
  v6 = result[10];
  v7 = *(v6 + 216);
  if (v6 == a2[10])
  {
    if (v7)
    {
      v31 = 0;
      v10 = 0;
      __asm { FMOV            V0.4S, #1.0 }

      while (1)
      {
        v8 = result[3];
        if (v8 <= v10)
        {
          break;
        }

        v8 = a2[3];
        if (v8 <= v10)
        {
          goto LABEL_25;
        }

        v33 = result[4] + v31;
        v34 = a2[4] + v31;
        v35 = *(v33 + 16);
        v36 = *(v33 + 32);
        v37 = vdivq_f32(_Q0, *v33);
        v38 = vnegq_f32(v35);
        v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
        v38.i32[3] = v35.i32[3];
        v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v35), v36, v39);
        v41 = vaddq_f32(v40, v40);
        v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
        v43 = vaddq_f32(v36, vmulq_laneq_f32(v42, v35, 3));
        v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v35), v42, v39);
        *v34 = v37;
        *(v34 + 16) = v38;
        *(v34 + 32) = vmulq_f32(vaddq_f32(v43, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL)), vnegq_f32(v37));
        ++v10;
        v31 += 48;
        if (v7 == v10)
        {
          return result;
        }
      }

LABEL_21:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      v66 = 476;
      v67 = 2048;
      v68 = v10;
      v69 = 2048;
      v70 = v8;
      _os_log_send_and_compose_impl(v49, &v62, &v71, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v59, v61);
      _os_crash_msg();
      __break(1u);
LABEL_25:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v66 = 468;
      v67 = 2048;
      v68 = v10;
      v69 = 2048;
      v70 = v8;
      _os_log_send_and_compose_impl(v52, &v62, &v71, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v59, v61);
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v66 = 476;
      v67 = 2048;
      v68 = v10;
      v69 = 2048;
      v70 = v2;
      _os_log_send_and_compose_impl(v55, &v62, &v71, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60.u64[0], v60.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v62 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v63 = 136315906;
      v64 = "operator[]";
      v65 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v66 = 468;
      v67 = 2048;
      v68 = v3;
      v69 = 2048;
      v70 = v2;
      _os_log_send_and_compose_impl(v58, &v62, &v71, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60.u64[0], v60.u64[1]);
      _os_crash_msg();
      __break(1u);
    }
  }

  else if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v60 = _Q0;
    while (1)
    {
      v16 = v5[10];
      v2 = *(v16 + 216);
      if (v2 <= v10)
      {
        break;
      }

      v17 = *(v16 + 224);
      v3 = a2[10];
      v18 = 0xBF58476D1CE4E5B9 * ((*(v17 + v8) >> 31) ^ (*(v17 + v8) >> 1));
      result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v3 + 232, (v17 + v8), (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v71);
      if (HIDWORD(v71) != 0x7FFFFFFF)
      {
        v2 = v5[3];
        if (v2 <= v10)
        {
          goto LABEL_29;
        }

        v3 = *(*(v3 + 248) + 32 * HIDWORD(v71) + 24);
        v2 = a2[3];
        if (v2 <= v3)
        {
          goto LABEL_33;
        }

        v19 = v5[4] + v9;
        v20 = a2[4] + 48 * v3;
        v21 = *(v19 + 16);
        v22 = *(v19 + 32);
        v23 = vdivq_f32(v60, *v19);
        v24 = vnegq_f32(v21);
        v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v24.i32[3] = v21.i32[3];
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21), v22, v25);
        v27 = vaddq_f32(v26, v26);
        v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
        v29 = vaddq_f32(v22, vmulq_laneq_f32(v28, v21, 3));
        v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v21), v28, v25);
        *v20 = v23;
        *(v20 + 16) = v24;
        *(v20 + 32) = vmulq_f32(vaddq_f32(v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL)), vnegq_f32(v23));
      }

      ++v10;
      v9 += 48;
      v8 += 16;
      if (v7 == v10)
      {
        return result;
      }
    }

    v62 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v66 = 476;
    v67 = 2048;
    v68 = v10;
    v69 = 2048;
    v70 = v2;
    _os_log_send_and_compose_impl(v46, &v62, &v71, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void re::AnimationValueTraits<re::SkeletalPose>::interpolate(_anonymous_namespace_ *result, void *a2, void *a3, float a4)
{
  v11 = result;
  v121 = *MEMORY[0x1E69E9840];
  v12 = *(result + 10);
  if (v12 == a2[10])
  {
    v4 = *(v12 + 216);
    if (v12 == a3[10])
    {
      if (v4)
      {
        v42 = 0;
        v18 = 0;
        while (1)
        {
          v16 = *(v11 + 3);
          if (v16 <= v18)
          {
            break;
          }

          v16 = a2[3];
          if (v16 <= v18)
          {
            goto LABEL_99;
          }

          v16 = a3[3];
          if (v16 <= v18)
          {
            goto LABEL_103;
          }

          v43 = (a3[4] + v42);
          re::lerp<float>((*(v11 + 4) + v42), a2[4] + v42, &v116, a4);
          v44 = v116;
          v45 = v118;
          v43[1] = v117;
          v43[2] = v45;
          *v43 = v44;
          ++v18;
          v42 += 48;
          if (v4 == v18)
          {
            return;
          }
        }

LABEL_95:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        *&v107[14] = 476;
        *&v107[18] = 2048;
        *&v107[20] = v18;
        *&v107[28] = 2048;
        *&v107[30] = v16;
        _os_log_send_and_compose_impl(v84, v109, &v116, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
LABEL_99:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        *&v107[14] = 476;
        *&v107[18] = 2048;
        *&v107[20] = v18;
        *&v107[28] = 2048;
        *&v107[30] = v16;
        _os_log_send_and_compose_impl(v87, v109, &v116, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
LABEL_103:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *&v107[14] = 468;
        *&v107[18] = 2048;
        *&v107[20] = v18;
        *&v107[28] = 2048;
        *&v107[30] = v16;
        _os_log_send_and_compose_impl(v90, v109, &v116, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
LABEL_107:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *&v107[14] = 476;
        *&v107[18] = 2048;
        *&v107[20] = v18;
        *&v107[28] = 2048;
        *&v107[30] = v5;
        _os_log_send_and_compose_impl(v93, v109, &v116, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
LABEL_111:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        *&v107[14] = 476;
        *&v107[18] = 2048;
        *&v107[20] = v18;
        *&v107[28] = 2048;
        *&v107[30] = v5;
        _os_log_send_and_compose_impl(v96, v109, &v116, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
LABEL_115:
        *v109 = 0;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        *&v107[12] = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        *&v107[14] = 468;
        *&v107[18] = 2048;
        *&v107[20] = v5;
        *&v107[28] = 2048;
        *&v107[30] = v6;
        _os_log_send_and_compose_impl(v99, v109, &v116, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
        _os_crash_msg();
        __break(1u);
      }
    }

    else if (v4)
    {
      v15 = 0;
      v16 = 0;
      v18 = 0;
      v7 = 0x7FFFFFFFLL;
      while (1)
      {
        v36 = *(v11 + 10);
        v5 = *(v36 + 216);
        if (v5 <= v18)
        {
          goto LABEL_59;
        }

        v37 = *(v36 + 224);
        v6 = a3[10];
        v38 = 0xBF58476D1CE4E5B9 * ((*(v37 + v15) >> 31) ^ (*(v37 + v15) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v6 + 232, (v37 + v15), (0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31), &v116);
        if (v116.i32[3] != 0x7FFFFFFF)
        {
          v5 = *(v11 + 3);
          if (v5 <= v18)
          {
            goto LABEL_107;
          }

          v5 = a2[3];
          if (v5 <= v18)
          {
            goto LABEL_111;
          }

          v5 = *(*(v6 + 248) + 32 * v116.u32[3] + 24);
          v6 = a3[3];
          if (v6 <= v5)
          {
            goto LABEL_115;
          }

          v39 = (a3[4] + 48 * v5);
          re::lerp<float>((*(v11 + 4) + v16), a2[4] + v16, &v116, a4);
          v40 = v116;
          v41 = v118;
          v39[1] = v117;
          v39[2] = v41;
          *v39 = v40;
        }

        ++v18;
        v16 += 48;
        v15 += 16;
        if (v4 == v18)
        {
          return;
        }
      }
    }
  }

  else
  {
    v102 = a2;
    v103 = 0;
    v13 = *(a2[10] + 216);
    v104 = 0;
    v105 = 0;
    v14 = *(*(v11 + 10) + 216);
    if (v14)
    {
      v5 = 0;
      v6 = 0;
      v15 = 0;
      v16 = 48;
      while (1)
      {
        v17 = *(v11 + 10);
        v18 = *(v17 + 216);
        if (v18 <= v15)
        {
          break;
        }

        v4 = *(v17 + 224);
        v19 = a3[10];
        v20 = 0xBF58476D1CE4E5B9 * ((*(v4 + v5) >> 31) ^ (*(v4 + v5) >> 1));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v19 + 232, (v4 + v5), (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31), &v116);
        if (v116.i32[3] != 0x7FFFFFFF)
        {
          v18 = *(*(v19 + 248) + 32 * v116.u32[3] + 24);
          v7 = v102[10];
          v21 = 0xBF58476D1CE4E5B9 * ((*(v4 + v5) >> 31) ^ (*(v4 + v5) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v7 + 232, (v4 + v5), (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) ^ ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31), &v116);
          if (v116.i32[3] == 0x7FFFFFFF)
          {
            v4 = *(v11 + 3);
            if (v4 <= v15)
            {
              goto LABEL_67;
            }

            v22 = *(v11 + 4);
            *&v107[8] = 1065353216;
            *&v107[16] = 0;
            *v107 = 0x3F8000003F800000;
            *&v107[24] = 0x3F80000000000000;
            *&v107[32] = 0;
            v108 = 0;
            v4 = a3[3];
            if (v4 <= v18)
            {
              goto LABEL_71;
            }

            v23 = (a3[4] + 48 * v18);
            re::lerp<float>((v22 + v6), v107, &v116, a4);
            v24 = v116;
            v25 = v118;
            v23[1] = v117;
            v23[2] = v25;
            *v23 = v24;
          }

          else
          {
            v4 = *(v11 + 3);
            if (v4 <= v15)
            {
              goto LABEL_63;
            }

            v4 = *(*(v7 + 248) + 32 * v116.u32[3] + 24);
            v7 = v102[3];
            if (v7 <= v4)
            {
              goto LABEL_75;
            }

            v7 = a3[3];
            if (v7 <= v18)
            {
              goto LABEL_79;
            }

            v16 = 48;
            v26 = (a3[4] + 48 * v18);
            re::lerp<float>((*(v11 + 4) + v6), v102[4] + 48 * v4, &v116, a4);
            v27 = v116;
            v28 = v118;
            v26[1] = v117;
            v26[2] = v28;
            *v26 = v27;
            v18 = v104;
            if (v104 <= v4)
            {
              goto LABEL_83;
            }

            *(v105 + v4) = 1;
          }
        }

        ++v15;
        v6 += 48;
        v5 += 16;
        if (v14 == v15)
        {
          goto LABEL_16;
        }
      }

      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v15;
      *&v107[28] = 2048;
      *&v107[30] = v18;
      _os_log_send_and_compose_impl(v48, v109, &v116, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

LABEL_16:
    v18 = *(v102[10] + 216);
    if (v18)
    {
      v15 = 0;
      v16 = 0;
      v11 = 0;
      v4 = 0x7FFFFFFFLL;
      v5 = 48;
      while (1)
      {
        v6 = v104;
        if (v104 <= v11)
        {
          break;
        }

        if ((*(v11 + v105) & 1) == 0)
        {
          v29 = v102[10];
          v6 = *(v29 + 216);
          if (v6 <= v11)
          {
            goto LABEL_55;
          }

          v30 = *(v29 + 224);
          v31 = a3[10];
          v32 = 0xBF58476D1CE4E5B9 * ((*(v30 + v15) >> 31) ^ (*(v30 + v15) >> 1));
          re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v31 + 232, (v30 + v15), (0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) ^ ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) >> 31), &v116);
          if (v116.i32[3] != 0x7FFFFFFF)
          {
            v6 = *(*(v31 + 248) + 32 * v116.u32[3] + 24);
            *&v107[8] = 1065353216;
            *&v107[16] = 0;
            *v107 = 0x3F8000003F800000;
            *&v107[24] = 0x3F80000000000000;
            *&v107[32] = 0;
            v108 = 0;
            v7 = v102[3];
            if (v7 <= v11)
            {
              goto LABEL_87;
            }

            v7 = a3[3];
            if (v7 <= v6)
            {
              goto LABEL_91;
            }

            v33 = (a3[4] + 48 * v6);
            re::lerp<float>(v107, v102[4] + v16, &v116, a4);
            v34 = v116;
            v35 = v118;
            v33[1] = v117;
            v33[2] = v35;
            *v33 = v34;
          }
        }

        v11 = (v11 + 1);
        v16 += 48;
        v15 += 16;
        if (v18 == v11)
        {
          goto LABEL_26;
        }
      }

LABEL_51:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      *&v107[14] = 468;
      *&v107[18] = 2048;
      *&v107[20] = v11;
      *&v107[28] = 2048;
      *&v107[30] = v6;
      _os_log_send_and_compose_impl(v51, v109, &v116, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v11;
      *&v107[28] = 2048;
      *&v107[30] = v6;
      _os_log_send_and_compose_impl(v54, v109, &v116, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v18;
      *&v107[28] = 2048;
      *&v107[30] = v5;
      _os_log_send_and_compose_impl(v57, v109, &v116, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v101);
      _os_crash_msg();
      __break(1u);
LABEL_63:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v15;
      *&v107[28] = 2048;
      *&v107[30] = v4;
      _os_log_send_and_compose_impl(v60, v109, &v116, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_67:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v61 = MEMORY[0x1E69E9C10];
      v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v62)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v15;
      *&v107[28] = 2048;
      *&v107[30] = v4;
      _os_log_send_and_compose_impl(v63, v109, &v116, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v106 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      v110 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v111 = 468;
      v112 = 2048;
      v113 = v18;
      v114 = 2048;
      v115 = v4;
      _os_log_send_and_compose_impl(v66, &v106, &v116, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v109, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_75:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v67 = MEMORY[0x1E69E9C10];
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      *&v107[14] = 476;
      *&v107[18] = 2048;
      *&v107[20] = v4;
      *&v107[28] = 2048;
      *&v107[30] = v7;
      _os_log_send_and_compose_impl(v69, v109, &v116, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_79:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v71)
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      *&v107[14] = 468;
      *&v107[18] = 2048;
      *&v107[20] = v18;
      *&v107[28] = 2048;
      *&v107[30] = v7;
      _os_log_send_and_compose_impl(v72, v109, &v116, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_83:
      *v109 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v107 = 136315906;
      *&v107[4] = "operator[]";
      *&v107[12] = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *&v107[14] = 468;
      *&v107[18] = 2048;
      *&v107[20] = v4;
      *&v107[28] = 2048;
      *&v107[30] = v18;
      _os_log_send_and_compose_impl(v75, v109, &v116, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_87:
      v106 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      v110 = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      v111 = 476;
      v112 = 2048;
      v113 = v11;
      v114 = 2048;
      v115 = v7;
      _os_log_send_and_compose_impl(v78, &v106, &v116, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v109, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v106 = 0;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v109 = 136315906;
      *&v109[4] = "operator[]";
      v110 = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      v111 = 468;
      v112 = 2048;
      v113 = v6;
      v114 = 2048;
      v115 = v7;
      _os_log_send_and_compose_impl(v81, &v106, &v116, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v109, 38, v100, v102);
      _os_crash_msg();
      __break(1u);
      goto LABEL_95;
    }

LABEL_26:
    if (v103)
    {
      if (v104)
      {
        (*(*v103 + 40))();
      }
    }
  }
}

unint64_t re::FixedArray<re::GenericSRT<float>>::slice(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v17 = 0;
    memset(v23, 0, sizeof(v23));
    v7 = MEMORY[0x1E69E9C10];
    *v18 = 136315906;
    *&v18[4] = "slice";
    *&v18[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *&v18[14] = 502;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v8, &v17, v23, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v18, 38, v13, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (__CFADD__(a2, a3))
  {
LABEL_9:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, a2, a3, v4, v17, *v18);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", v9, v11, v14);
    __break(1u);
LABEL_10:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, a2, a3, v4);
    _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v10, v12, v15);
    __break(1u);
  }

  if (a2 + a3 > v4)
  {
    goto LABEL_10;
  }

  return *(a1 + 16) + 48 * a2;
}

void re::SkeletalPoseJointDefinition::~SkeletalPoseJointDefinition(re::SkeletalPoseJointDefinition *this)
{
  *this = &unk_1F5CB1B88;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 29);
  re::FixedArray<re::StringID>::deinit(this + 26);
  re::Skeleton::~Skeleton(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB1B88;
  v2 = (this + 24);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 29);
  re::FixedArray<re::StringID>::deinit(this + 26);
  re::Skeleton::~Skeleton(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

unint64_t *re::FixedArray<re::StringID>::FixedArray(unint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::StringID>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::StringID>::copy(a1, a2);
  }

  return a1;
}

unint64_t *re::FixedArray<re::StringID>::copy(unint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      result = result[2];
      v4 = 16 * v2;
      do
      {
        v5 = re::StringID::operator=(result, v3);
        v3 += 2;
        result = v5 + 2;
        v4 -= 16;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

void *re::FixedArray<unsigned int>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<int>::init<>(a1, v4, a2[1]);
    re::FixedArray<unsigned int>::copy(a1, a2);
  }

  return a1;
}

void *re::FixedArray<unsigned int>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 4 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<re::FixedArray<unsigned int>>::FixedArray(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::FixedArray<unsigned int>>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::FixedArray<re::FixedArray<unsigned int>>::copy(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        result = re::FixedArray<unsigned int>::operator=(v4, v3);
        v3 += 3;
        v4 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

uint64_t *re::FixedArray<unsigned int>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<int>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<unsigned int>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<re::Matrix4x4<float>>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::Matrix4x4<float>>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::Matrix4x4<float>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v10 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        v7 = *(a2 + 16);
        *(v10 + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

unint64_t *re::FixedArray<re::StringID>::operator=(unint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::StringID>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::StringID>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::FixedArray<unsigned int>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::FixedArray<unsigned int>>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::FixedArray<unsigned int>>::copy(a1, a2);
    }
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::StringID *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

void re::anonymous namespace::SkeletalPoseJointBindPointImpl::~SkeletalPoseJointBindPointImpl(re::_anonymous_namespace_::SkeletalPoseJointBindPointImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::copyInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CB1BD0;
  a2[1] = v4;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), a1 + 2);
  a2[7] = a1[7];
  return result;
}

uint64_t re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::moveInto(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = &unk_1F5CB1BD0;
  a2[1] = v4;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), a1 + 2);
  a2[7] = a1[7];
  return result;
}

BOOL re::internal::BindPointImpl<re::anonymous namespace::SkeletalPoseJointBindPointImpl>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != "@")
  {
    return 0;
  }

  result = re::BindPoint::operator==((a1 + 8), (a2 + 1));
  if (result)
  {
    return *(a1 + 56) == a2[7];
  }

  return result;
}

unint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::hash(void *a1)
{
  if (a1[4])
  {
    v2 = re::BindPoint::baseValueUntyped((a1 + 1));
  }

  else
  {
    v2 = 0;
  }

  return (a1[7] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
}

unint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::targetIdentifier(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::baseValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    v4 = *(result + 24);
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

    return *(result + 32) + 48 * v3;
  }

  return result;
}

unint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::baseValueUntyped(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::baseValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    v4 = *(result + 24);
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

    return *(result + 32) + 48 * v3;
  }

  return result;
}

unint64_t re::anonymous namespace::SkeletalPoseJointBindPointImpl::overrideValueUntyped(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = re::BindPoint::overrideValueUntyped((a1 + 8));
  if (result)
  {
    v3 = *(a1 + 56);
    v4 = *(result + 24);
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

    return *(result + 32) + 48 * v3;
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

uint64_t re::IntrospectionDynamicArray<BOOL>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info, 0);
  *(&qword_1EE186908 + 6) = 0;
  qword_1EE186908 = 0;
  *&xmmword_1EE186918 = 0;
  *(&xmmword_1EE186918 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CADA48;
  qword_1EE186930 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE186928);
  re::IntrospectionInfo<re::DynamicArray<BOOL>>::get(BOOL)::info = &unk_1F5CB1CA8;
  return result;
}

void *re::IntrospectionDynamicArray<BOOL>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<BOOL>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<BOOL>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<BOOL>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<BOOL>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<BOOL>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<BOOL>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<BOOL>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<BOOL>::add(this, &v10);
  v8 = (*(this + 4) + *(this + 2) - 1);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<BOOL>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + a3;
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

  return *(a2 + 32) + a3;
}

void re::DynamicArray<BOOL>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<BOOL>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

_anonymous_namespace_ *re::DynamicArray<BOOL>::add(_anonymous_namespace_ *this, _BYTE *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<BOOL>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<BOOL>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<BOOL>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<BOOL>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<BOOL>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<BOOL>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<BOOL>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v12);
    re::TypeInfo::TypeInfo(v11, &v13);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      do
      {
        re::TypeInfo::destruct(v11, v10, a3, 0);
        re::TypeInfo::construct(v11, v10++, a3, 0);
        --v9;
      }

      while (v9);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::FixedArray<re::GenericSRT<float>>::copy(void *result, uint64_t a2, const void *a3, uint64_t a4)
{
  if (__CFADD__(a2, a4))
  {
    re::internal::assertLog(7, a2, a3, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 362, result[1], a2, a4);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v5, v6, v7);
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 + a4) > result[1])
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363);
    result = _os_crash("assertion failure: (requiredSize <= m_size) Too much data to copy.");
    __break(1u);
    return result;
  }

  if (a4)
  {
    v4 = (result[2] + 48 * a2);

    return memmove(v4, a3, 48 * a4);
  }

  return result;
}

void re::registerIKinemaAnimNodes(re *this, re::RigEnvironment *a2)
{
  v3 = 0;
  v4 = *this;
  do
  {
    v5 = strlen((&re::registerIKinemaAnimNodes(re::RigEnvironment *)::kCustomStructs)[v3]);
    v30[0] = (&re::registerIKinemaAnimNodes(re::RigEnvironment *)::kCustomStructs)[v3];
    v30[1] = v5;
    re::RigDataTypeClass::rigDataTypeParser(v4, v30, v33);
    re::StringID::StringID(v29, &v35);
    re::RigEnvironment::insertRigDataType(this, v29, &v34, v30);
    if (v29[0])
    {
      if (v29[0])
      {
      }
    }

    if (v30[0] & 1) == 0 && v31 && (v32)
    {
      (*(*v31 + 40))();
    }

    re::Result<re::RigDataTypeClass,re::DetailedError>::~Result(v33);
    ++v3;
  }

  while (v3 != 7);
  re::internal::registerMakeIKTask(this, v7);
  re::internal::registerMakeIKLookAtTask(this, v8);
  re::internal::registerMakeIKPenetrationCorrectionTask(this, v9);
  re::internal::registerMakeIKRigJointSettings(this, v10);
  re::internal::registerMakeIKRigTaskSettings(this, v11);
  re::internal::registerMakeIKRigSolverSettings(this, v12);
  re::internal::registerMakeIKRetargetingOffset(this, v13);
  re::internal::registerGenericSolverNode(this, v14);
  re::internal::registerGenericSolverNoLookAtNode(this, v15);
  re::internal::registerGenericSolverWithRigSettingsDebug(this, v16);
  re::internal::registerIKParametersComponentNode(this, v17);
  re::internal::registerFootPlacementSolverNoLookAtNode(this, v18);
  re::internal::registerFootPlacementSolverNode(this, v19);
  re::internal::registerFootPlacementSolverDebugNode(this, v20);
  re::internal::registerRetargetingSolverNode(this, v21);
  re::internal::registerPenetrationCorrectionSolverNode(this, v22);
  re::internal::registerArvinoToArvinoRetargetNode(this, v23);
  re::internal::registerBipedToBipedRetargetNode(this, v24);
  re::internal::registerBipedToBipedRetargetWithOffsetNode(this, v25);
  re::internal::registerFeetSlidingSolverNode(this, v26);
  re::internal::registerFilterSolverNode(this, v27);
  re::internal::registerFloorLevelSolverNode(this, v28);
}

double re::AnimationClip<float>::totalDuration(uint64_t a1)
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

float re::AnimationClip<float>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<float>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB1D40;
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

uint64_t re::AnimationClip<float>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v49 = a2;
  v50 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v49, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v48 = 0;
    if (v36[0] == 1 && v37 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v38 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 2;
      v36[0] = 3;
      v39 = 1;
      v40 = v14;
      v46 = 0;
      v42 = 1065353216;
      v26 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 2;
      v25[0] = 3;
      v27 = 1;
      v28 = v15;
      v34 = 0;
      v30 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v48;
      }

      else
      {
        v19 = &v48 + 4;
      }

      if (*(v8 + 128))
      {
        v20 = &v48 + 4;
      }

      else
      {
        v20 = &v48;
      }

      (*(*v9 + 112))(v9, v36, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v25, 1, a4, a5, v20);
      *(&v48 + 1) = (*&v48 - *(&v48 + 1)) * floorf(*(a2 + 64));
      v21 = re::Slice<re::AnimationClock>::range(&v49, 1uLL, v50);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = *a6 + *(&v48 + 1);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v24);
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
  __break(1u);
  return result;
}

double re::AnimationClip<double>::totalDuration(uint64_t a1)
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

float re::AnimationClip<double>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<double>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB1DD8;
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

uint64_t re::AnimationClip<double>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, double *a4, uint64_t a5, double *a6)
{
  v50 = a2;
  v51 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v48 = 0.0;
    v49 = 0.0;
    if (v36[0] == 1 && v37 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v38 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 2;
      v36[0] = 3;
      v39 = 1;
      v40 = v14;
      v46 = 0;
      v42 = 1065353216;
      v26 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 2;
      v25[0] = 3;
      v27 = 1;
      v28 = v15;
      v34 = 0;
      v30 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v48;
      }

      else
      {
        v19 = &v49;
      }

      if (*(v8 + 128))
      {
        v20 = &v49;
      }

      else
      {
        v20 = &v48;
      }

      (*(*v9 + 112))(v9, v36, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v25, 1, a4, a5, v20);
      v49 = (v48 - v49) * vcvtms_s32_f32(*(a2 + 64));
      v21 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, v51);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = *a6 + v49;
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v24);
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
  __break(1u);
  return result;
}

double re::AnimationClip<re::Vector2<float>>::totalDuration(uint64_t a1)
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

float re::AnimationClip<re::Vector2<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<re::Vector2<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB1E70;
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

uint64_t re::AnimationClip<re::Vector2<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x2_t *a4, uint64_t a5, float32x2_t *a6)
{
  v49 = a2;
  v50 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v23);
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(result + 80);
  if (!v9)
  {
    *a6 = *a4;
    return result;
  }

  if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v49, 1uLL, a3);
    return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
  }

  v47 = 0;
  v48 = 0;
  if (v35[0] != 1 || v36 != 1)
  {
    goto LABEL_23;
  }

  v13 = *(v8 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(v8 + 88) == 1)
    {
      v14 = *(v8 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(v8 + 104) == 1)
    {
      v15 = *(v8 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v37 = 0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v46 = 2;
  v35[0] = 3;
  v38 = 1;
  v39 = v14;
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
  v27 = v15;
  v33 = 0;
  v29 = 1065353216;
  if (*(v8 + 128))
  {
    v18 = &v47;
  }

  else
  {
    v18 = &v48;
  }

  if (*(v8 + 128))
  {
    v19 = &v48;
  }

  else
  {
    v19 = &v47;
  }

  (*(*v9 + 112))(v9, v35, 1, a4, a5, v18);
  (*(*v9 + 112))(v9, v24, 1, a4, a5, v19);
  v48 = vmul_n_f32(vsub_f32(v47, v48), floorf(*(a2 + 64)));
  v20 = re::Slice<re::AnimationClock>::range(&v49, 1uLL, v50);
  result = (*(*v9 + 112))(v9, v20, v21, a4, a5, a6);
  *a6 = vadd_f32(*a6, v48);
  return result;
}

double re::AnimationClip<re::Vector3<float>>::totalDuration(uint64_t a1)
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

float re::AnimationClip<re::Vector3<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<re::Vector3<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB1F08;
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

uint64_t re::AnimationClip<re::Vector3<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v50 = a2;
  v51 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v48 = 0u;
    v49 = 0u;
    if (v36[0] == 1 && v37 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v38 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 2;
      v36[0] = 3;
      v39 = 1;
      v40 = v14;
      v46 = 0;
      v42 = 1065353216;
      v26 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 2;
      v25[0] = 3;
      v27 = 1;
      v28 = v15;
      v34 = 0;
      v30 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v48;
      }

      else
      {
        v19 = &v49;
      }

      if (*(v8 + 128))
      {
        v20 = &v49;
      }

      else
      {
        v20 = &v48;
      }

      (*(*v9 + 112))(v9, v36, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v25, 1, a4, a5, v20);
      v49 = vmulq_n_f32(vsubq_f32(v48, v49), floorf(*(a2 + 64)));
      v21 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, v51);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = vaddq_f32(*a6, v49);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v24);
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
  __break(1u);
  return result;
}

double re::AnimationClip<re::Vector4<float>>::totalDuration(uint64_t a1)
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

float re::AnimationClip<re::Vector4<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<re::Vector4<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB1FA0;
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

uint64_t re::AnimationClip<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v50 = a2;
  v51 = a3;
  if (a3)
  {
    v8 = result;
    v9 = *(result + 80);
    if (!v9)
    {
      v18 = *a4;
LABEL_22:
      *a6 = v18;
      return result;
    }

    if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
    {
      v16 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, a3);
      return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    }

    v48 = 0u;
    v49 = 0u;
    if (v36[0] == 1 && v37 == 1)
    {
      v13 = *(v8 + 80);
      if (v13)
      {
        v14 = 0;
        if (*(v8 + 88) == 1)
        {
          v14 = *(v8 + 96);
        }

        (*(*v13 + 40))(v13);
        if (*(v8 + 104) == 1)
        {
          v15 = *(v8 + 112);
        }
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v38 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v47 = 2;
      v36[0] = 3;
      v39 = 1;
      v40 = v14;
      v46 = 0;
      v42 = 1065353216;
      v26 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v35 = 2;
      v25[0] = 3;
      v27 = 1;
      v28 = v15;
      v34 = 0;
      v30 = 1065353216;
      if (*(v8 + 128))
      {
        v19 = &v48;
      }

      else
      {
        v19 = &v49;
      }

      if (*(v8 + 128))
      {
        v20 = &v49;
      }

      else
      {
        v20 = &v48;
      }

      (*(*v9 + 112))(v9, v36, 1, a4, a5, v19);
      (*(*v9 + 112))(v9, v25, 1, a4, a5, v20);
      v49 = vmulq_n_f32(vsubq_f32(v48, v49), floorf(*(a2 + 64)));
      v21 = re::Slice<re::AnimationClock>::range(&v50, 1uLL, v51);
      result = (*(*v9 + 112))(v9, v21, v22, a4, a5, a6);
      v18 = vaddq_f32(*a6, v49);
      goto LABEL_22;
    }
  }

  else
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v24);
    __break(1u);
  }

  re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
  result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
  __break(1u);
  return result;
}

double re::AnimationClip<re::Quaternion<float>>::totalDuration(uint64_t a1)
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

float re::AnimationClip<re::Quaternion<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<re::Quaternion<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB2038;
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

uint64_t re::AnimationClip<re::Quaternion<float>>::evaluateCore(uint64_t result, uint64_t a2, unint64_t a3, int32x4_t *a4, uint64_t a5, int32x4_t *a6)
{
  v81 = a2;
  v82 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v51);
    __break(1u);
LABEL_31:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    result = _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(result + 80);
  if (!v9)
  {
    *a6 = *a4;
    return result;
  }

  if (*(result + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v81, 1uLL, a3);
    return (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
  }

  v79 = xmmword_1E30474D0;
  v80 = xmmword_1E30474D0;
  if (v67[0] != 1 || v68 != 1)
  {
    goto LABEL_31;
  }

  v13 = *(v8 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(v8 + 88) == 1)
    {
      v14 = *(v8 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(v8 + 104) == 1)
    {
      v15 = *(v8 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v69 = 0;
  v72 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v78 = 2;
  v67[0] = 3;
  v70 = 1;
  v71 = v14;
  v77 = 0;
  v73 = 1065353216;
  v57 = 0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v66 = 2;
  v56[0] = 3;
  v58 = 1;
  v59 = v15;
  v65 = 0;
  v61 = 1065353216;
  if (*(v8 + 128))
  {
    v18 = &v79;
  }

  else
  {
    v18 = &v80;
  }

  if (*(v8 + 128))
  {
    v19 = &v80;
  }

  else
  {
    v19 = &v79;
  }

  (*(*v9 + 112))(v9, v67, 1, a4, a5, v18);
  (*(*v9 + 112))(v9, v56, 1, a4, a5, v19);
  _V2.S[3] = HIDWORD(v79);
  v21 = vnegq_f32(v80);
  _S4 = HIDWORD(v80);
  __asm { FMLA            S0, S4, V2.S[3] }

  v28 = floorf(*(a2 + 64));
  v29 = fabsf(_S0);
  if (v29 > 1.0 && fabsf(v29 + -1.0) >= (((v29 + 1.0) + 1.0) * 0.00001))
  {
    v37.i64[0] = 0x3F0000003FLL;
    v37.i64[1] = 0x3F0000003FLL;
    v32 = vnegq_f32(v37);
  }

  else
  {
    v30 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v79)), vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v80);
    v31 = vmlaq_laneq_f32(vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v80, v79, 3), v79, v80, 3);
    v32 = v31;
    v32.f32[3] = _S0;
    v33 = vmulq_f32(v32, v32);
    v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    if (fabsf(v34) >= 0.00001)
    {
      v52 = v31;
      v54 = v28;
      v35 = atanf(v34 / _S0);
      v28 = v54;
      v36 = v35 / v34;
      *v32.f32 = vmul_n_f32(*v52.f32, v36);
      v32.i32[2] = vmuls_lane_f32(v36, v52, 2);
    }

    v32.i32[3] = 0;
  }

  v38 = vmulq_n_f32(v32, v28);
  v39 = vmulq_f32(v38, v38);
  v40 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
  v53 = v38.f32[2];
  v55 = *v38.f32;
  if (v40 > 0.00001)
  {
    v41 = sinf(v40) / v40;
    v55 = vmul_n_f32(v55, v41);
    v53 = v53 * v41;
  }

  v42 = cosf(v40);
  *&v80 = v55;
  *(&v80 + 2) = v53;
  *(&v80 + 3) = v42;
  v43 = re::Slice<re::AnimationClock>::range(&v81, 1uLL, v82);
  result = (*(*v9 + 112))(v9, v43, v44, a4, a5, a6);
  _Q0 = v80;
  _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a6, *a6), *a6, 0xCuLL), vnegq_f32(v80)), *a6, vextq_s8(vuzp1q_s32(_Q0, _Q0), v80, 0xCuLL));
  v47 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), *a6, v80, 3);
  _Q3.i32[0] = HIDWORD(*a6);
  v48 = vmlaq_laneq_f32(v47, v80, *a6, 3);
  __asm { FMLA            S1, S3, V0.S[3] }

  v48.i32[3] = _S1;
  *a6 = v48;
  return result;
}

double re::AnimationClip<re::GenericSRT<float>>::totalDuration(uint64_t a1)
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

float re::AnimationClip<re::GenericSRT<float>>::timelineDesc@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::AnimationClip<re::GenericSRT<float>>::createInstance(uint64_t a1, uint64_t a2, uint64_t a3, re::internal::TimelineTree *a4, uint64_t a5)
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
  *v10 = &unk_1F5CB20D0;
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

void re::AnimationClip<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v80 = a2;
  v81 = a3;
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v49, v50);
    __break(1u);
LABEL_23:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.", "internal::countTimelines(*source) == 1", "evaluateCore", 292);
    _os_crash("assertion failure: (internal::countTimelines(*source) == 1) Not yet implemented. Cycle-offset computation currently does not yet support nested animations.");
    __break(1u);
    return;
  }

  v9 = *(a1 + 80);
  if (!v9)
  {
    v18 = *a4;
    v19 = a4[2];
    *(a6 + 16) = a4[1];
    *(a6 + 32) = v19;
    *a6 = v18;
    return;
  }

  if (*(a1 + 164) != 2 || !vcvtms_s32_f32(*(a2 + 64)))
  {
    v16 = re::Slice<re::AnimationClock>::range(&v80, 1uLL, a3);
    (*(*v9 + 112))(v9, v16, v17, a4, a5, a6);
    return;
  }

  v77.i64[0] = 0x3F8000003F800000;
  v77.i64[1] = 1065353216;
  v78.i64[0] = 0;
  v78.i64[1] = 0x3F80000000000000;
  v79 = 0uLL;
  v74.i64[0] = 0x3F8000003F800000;
  v74.i64[1] = 1065353216;
  v75.i64[0] = 0;
  v75.i64[1] = 0x3F80000000000000;
  v76 = 0uLL;
  if (v62[0] != 1 || v63 != 1)
  {
    goto LABEL_23;
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    if (*(a1 + 88) == 1)
    {
      v14 = *(a1 + 96);
    }

    (*(*v13 + 40))(v13);
    if (*(a1 + 104) == 1)
    {
      v15 = *(a1 + 112);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v64 = 0;
  v67 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v73 = 2;
  v62[0] = 3;
  v65 = 1;
  v66 = v14;
  v72 = 0;
  v68 = 1065353216;
  v52 = 0;
  v55 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v61 = 2;
  v51[0] = 3;
  v53 = 1;
  v54 = v15;
  v60 = 0;
  v56 = 1065353216;
  if (*(a1 + 128))
  {
    v20 = &v74;
  }

  else
  {
    v20 = &v77;
  }

  if (*(a1 + 128))
  {
    v21 = &v77;
  }

  else
  {
    v21 = &v74;
  }

  (*(*v9 + 112))(v9, v62, 1, a4, a5, v20);
  (*(*v9 + 112))(v9, v51, 1, a4, a5, v21);
  __asm { FMOV            V3.4S, #1.0 }

  v27 = vdivq_f32(_Q3, v77);
  v28 = vnegq_f32(v78);
  v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v78), v79, v29);
  v31 = vaddq_f32(v30, v30);
  v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  _S7 = v78.i32[3];
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v78), v32, v29);
  v35 = vmulq_f32(vaddq_f32(vaddq_f32(v79, vmulq_laneq_f32(v32, v78, 3)), vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL)), vnegq_f32(v27));
  _Q6 = v75;
  v37 = vmulq_f32(v27, v74);
  v38 = vextq_s8(vuzp1q_s32(_Q6, _Q6), v75, 0xCuLL);
  v39 = vnegq_f32(v75);
  v40 = vmlsq_f32(vmulq_f32(v29, v39), v38, v78);
  v41 = vmlaq_laneq_f32(vmlsq_laneq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v78, v75, 3), v75, v78, 3);
  __asm { FMLA            S1, S7, V6.S[3] }

  v41.i32[3] = _S1;
  v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v39), v35, v38);
  v44 = vaddq_f32(v43, v43);
  v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), v39), v45, v38);
  v77 = v37;
  v78 = v41;
  v79 = vaddq_f32(v76, vmulq_f32(v74, vaddq_f32(vaddq_f32(v35, vmulq_laneq_f32(v45, v75, 3)), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL))));
  v37.i32[0] = *(a2 + 64);
  re::AnimationValueTraits<re::GenericSRT<float>>::repeat(&v77, vcvtms_s32_f32(v37.f32[0]), &v77, v37);
  v47 = re::Slice<re::AnimationClock>::range(&v80, 1uLL, v81);
  (*(*v9 + 112))(v9, v47, v48, a4, a5, a6);
  re::AnimationValueTraits<re::GenericSRT<float>>::combine(a6, &v77, a6);
}

float32x4_t re::AnimationValueTraits<re::GenericSRT<float>>::repeat(uint64_t a1, unsigned int a2, uint64_t a3, float32x4_t result)
{
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      __asm { FMOV            V3.4S, #1.0 }

      v13 = vdivq_f32(_Q3, *a1);
      v14 = vnegq_f32(v6);
      v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
      v14.i32[3] = v6.i32[3];
      v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v6), v7, v15);
      v17 = vaddq_f32(v16, v16);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vaddq_f32(v7, vmulq_laneq_f32(v18, v6, 3));
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v6), v18, v15);
      *a3 = v13;
      *(a3 + 16) = v14;
      *(a3 + 32) = vmulq_f32(vaddq_f32(v19, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL)), vnegq_f32(v13));
      a2 = -a2;
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 32);
      *(a3 + 16) = *(a1 + 16);
      *(a3 + 32) = v5;
      *a3 = v4;
    }

    v21 = *a3;
    if (a2 <= 1)
    {
      v23 = xmmword_1E30474D0;
      v22 = xmmword_1E304F3C0;
      _Q3 = *(a3 + 16);
      v24 = *(a3 + 32);
      v26 = 0uLL;
    }

    else
    {
      v22 = xmmword_1E304F3C0;
      v23 = xmmword_1E30474D0;
      _Q3 = *(a3 + 16);
      v24 = *(a3 + 32);
      v26 = 0uLL;
      v27 = *a3;
      do
      {
        v21 = vmulq_f32(v27, v27);
        v28 = vuzp1q_s32(_Q3, _Q3);
        v29 = vnegq_f32(_Q3);
        _S17 = _Q3.i32[3];
        v31 = vuzp1q_s32(v24, v24);
        if (a2)
        {
          v22 = vmulq_f32(v22, v27);
          v40 = vextq_s8(v28, _Q3, 0xCuLL);
          v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v29), v23, v40);
          _S20 = v23.i32[3];
          v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v23, _Q3, 3), _Q3, v23, 3);
          __asm { FMLA            S5, S20, V3.S[3] }

          v43.i32[3] = _S5;
          v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v29), v26, v40);
          v46 = vaddq_f32(v45, v45);
          v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          _Q20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), v29), v47, v40);
          v26 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v26, vmulq_laneq_f32(v47, _Q3, 3)), vextq_s8(vuzp1q_s32(_Q20, _Q20), _Q20, 0xCuLL))));
          v49 = vmlaq_f32(vmulq_f32(v40, v29), _Q3, v40);
          v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), _Q3, _Q3, 3), _Q3, _Q3, 3);
          __asm { FMLA            S20, S17, V3.S[3] }

          v50.i32[3] = _Q20.i32[0];
          v51 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), v29), v24, v40);
          v52 = vaddq_f32(v51, v51);
          v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
          v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), v29), v53, v40);
          v24 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v53, _Q3, 3)), vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL))));
          --a2;
          _Q3 = v50;
          v23 = v43;
        }

        else
        {
          v32 = vextq_s8(v28, _Q3, 0xCuLL);
          v33 = vmlaq_f32(vmulq_f32(v32, v29), _Q3, v32);
          v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), _Q3, _Q3, 3), _Q3, _Q3, 3);
          __asm { FMLA            S20, S17, V3.S[3] }

          v34.i32[3] = _S20;
          v36 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v24, 0xCuLL), v29), v24, v32);
          v37 = vaddq_f32(v36, v36);
          v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
          v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v29), v38, v32);
          v24 = vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(vaddq_f32(v24, vmulq_laneq_f32(v38, _Q3, 3)), vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL))));
          _Q3 = v34;
        }

        v27 = v21;
        v55 = a2 > 2;
        a2 >>= 1;
      }

      while (v55);
    }

    v56 = vmulq_f32(v21, v22);
    v57 = vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL);
    v58 = vnegq_f32(_Q3);
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v58), v23, v57);
    _S17 = v23.i32[3];
    v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v23, _Q3, 3), _Q3, v23, 3);
    __asm { FMLA            S5, S17, V3.S[3] }

    v61.i32[3] = _S5;
    v63 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v58), v26, v57);
    v64 = vaddq_f32(v63, v63);
    v65 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
    v66 = vaddq_f32(v26, vmulq_laneq_f32(v65, _Q3, 3));
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), v58), v65, v57);
    result = vaddq_f32(v24, vmulq_f32(v21, vaddq_f32(v66, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL))));
    *a3 = v56;
    *(a3 + 16) = v61;
    *(a3 + 32) = result;
  }

  else
  {
    *a3 = 0x3F8000003F800000;
    *(a3 + 8) = 1065353216;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0x3F80000000000000;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  return result;
}