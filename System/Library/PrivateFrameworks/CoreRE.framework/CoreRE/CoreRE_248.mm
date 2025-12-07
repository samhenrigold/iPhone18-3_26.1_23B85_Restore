void re::BezierSpline<float>::~BezierSpline(void *a1)
{
  re::Spline<float>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<float>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<float>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<float>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<int>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::Spline<float>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<float>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  v19 = *MEMORY[0x1E69E9840];
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else
  {
    v4 = a2;
    v5 = *(result + 64);
    if (v5 <= a2)
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
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BezierSpline<float>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v7);
  __break(1u);
  return result;
}

BOOL re::Spline<float>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<float>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<float>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<float>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
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

    v14 = 797;
    v15 = 2048;
    v16 = 0;
    v17 = 2048;
    v18 = 0;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<float>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4 <= a2)
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
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<float>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

float re::BezierSpline<float>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
      v11 = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
        v11 = 0x3F80000000000000;
      }

      else
      {
        v10 = ((a3 - v7) / (v9 - v7)) * v8;
        v8 = v10;
        v11 = COERCE_UNSIGNED_INT(v10 - v10) << 32;
      }
    }

    NonUniformSpan = v11 | v8;
  }

  else
  {
    v12 = *(a1 + 64) - 1;
    if (v12 >= 0x10000)
    {
      goto LABEL_31;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v14 = (3 * NonUniformSpan);
  v15 = *(a1 + 24);
  if (v15 <= v14)
  {
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v19, &v32, &v41, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v3 = (v14 + 1);
  if (v15 <= v3)
  {
LABEL_19:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v3;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v22, &v32, &v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v4 = (v14 + 2);
  if (v15 <= v4)
  {
LABEL_23:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v4;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v25, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v5 = (v14 + 3);
  if (v15 <= v5)
  {
LABEL_27:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v28, &v32, &v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v12);
    _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v29);
    __break(1u);
  }

  v16 = *(a1 + 40);
  return (((((((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1)) * *(v16 + 4 * v3)) + (*(v16 + 4 * v14) * ((1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))))) + (*(v16 + 4 * v4) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0)))) + (*(v16 + 4 * v5) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
}

float re::BezierSpline<float>::evaluateDerivativeAt(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v88 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v71);
      __break(1u);
      goto LABEL_32;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  result = 0.0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v29 = (3 * NonUniformSpan) + 2;
      v3 = *(a1 + 24);
      if (v3 > v29)
      {
        v30 = (3 * NonUniformSpan) + 3;
        if (v3 > v30)
        {
          v20 = (v12 * 6.0) * v12;
          v31 = *(a1 + 40);
          v21 = ((*(v31 + 4 * v13 + 4) + (*(v31 + 4 * v30) + (*(v31 + 4 * v29) * -2.0))) * *(&NonUniformSpan + 1)) + ((1.0 - *(&NonUniformSpan + 1)) * ((*(v31 + 4 * v29) + (*(v31 + 4 * v13 + 4) * -2.0)) + *(v31 + 4 * v13)));
          return v20 * v21;
        }

        goto LABEL_56;
      }

      goto LABEL_44;
    }

    if (v3 != 3)
    {
      return result;
    }

    v3 = (3 * NonUniformSpan) + 3;
    v22 = *(a1 + 24);
    if (v22 > v3)
    {
      v20 = ((v12 * 6.0) * v12) * v12;
      v21 = ((*(*(a1 + 40) + 4 * v3) + (*(*(a1 + 40) + 4 * (3 * NonUniformSpan) + 8) * -3.0)) + (*(*(a1 + 40) + 4 * (3 * NonUniformSpan) + 4) * 3.0)) - *(*(a1 + 40) + 4 * (3 * NonUniformSpan));
      return v20 * v21;
    }

    goto LABEL_36;
  }

  if (!v3)
  {
    v23 = (3 * NonUniformSpan);
    v3 = *(a1 + 24);
    if (v3 > v13)
    {
      v24 = (3 * NonUniformSpan);
      v25 = (v24 + 1);
      if (v3 > v25)
      {
        v26 = (v24 + 2);
        if (v3 > v26)
        {
          v27 = (v24 + 3);
          if (v3 > v27)
          {
            v28 = *(a1 + 40);
            return (((((((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1)) * *(v28 + 4 * v25)) + (*(v28 + 4 * v23) * ((1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))))) + (*(v28 + 4 * v26) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0)))) + (*(v28 + 4 * v27) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
          }

LABEL_68:
          v74 = 0;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v83 = 0u;
          v67 = MEMORY[0x1E69E9C10];
          v68 = v27;
          v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v75 = 136315906;
          v76 = "operator[]";
          v77 = 1024;
          if (v69)
          {
            v70 = 3;
          }

          else
          {
            v70 = 2;
          }

          v78 = 797;
          v79 = 2048;
          v80 = v68;
          v81 = 2048;
          v82 = v3;
          _os_log_send_and_compose_impl(v70, &v74, &v83, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
          _os_crash_msg();
          __break(1u);
        }

LABEL_64:
        v74 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = v26;
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        if (v65)
        {
          v66 = 3;
        }

        else
        {
          v66 = 2;
        }

        v78 = 797;
        v79 = 2048;
        v80 = v64;
        v81 = 2048;
        v82 = v3;
        _os_log_send_and_compose_impl(v66, &v74, &v83, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
        _os_crash_msg();
        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_52;
    }

    goto LABEL_40;
  }

  if (v3 != 1)
  {
    return result;
  }

  v15 = (3 * NonUniformSpan);
  v16 = (v15 + 1);
  v3 = *(a1 + 24);
  if (v3 <= v16)
  {
LABEL_32:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = v16;
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v33;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v34, &v74, &v83, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = v22;
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v3;
    v81 = 2048;
    v82 = v36;
    _os_log_send_and_compose_impl(v38, &v74, &v83, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = v23;
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v40;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v42, &v74, &v83, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = v29;
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v44;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v46, &v74, &v83, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  v17 = (v15 + 2);
  if (v3 <= v17)
  {
LABEL_48:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = v17;
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v48;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v50, &v74, &v83, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = v25;
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v52;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v54, &v74, &v83, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = v30;
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v56;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v58, &v74, &v83, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  v18 = (v15 + 3);
  if (v3 <= v18)
  {
LABEL_60:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = v18;
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v60;
    v81 = 2048;
    v82 = v3;
    _os_log_send_and_compose_impl(v62, &v74, &v83, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v72, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_64;
  }

  v19 = *(a1 + 40);
  v20 = v12 * 3.0;
  v21 = (((((1.0 - *(&NonUniformSpan + 1)) + (1.0 - *(&NonUniformSpan + 1))) * *(&NonUniformSpan + 1)) * (*(v19 + 4 * v17) - *(v19 + 4 * v16))) + ((*(v19 + 4 * v16) - *(v19 + 4 * (3 * NonUniformSpan))) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))))) + ((*(v19 + 4 * v18) - *(v19 + 4 * v17)) * (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
  return v20 * v21;
}

float re::BezierSpline<float>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
      }

      else
      {
        v8 = (((a3 - v7) / (v9 - v7)) * v8);
      }
    }

    NonUniformSpan = v8;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v22);
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    if (NonUniformSpan)
    {
      v4 = NonUniformSpan - 1;
      if (v3 > v4)
      {
        v11 = *(*(a1 + 120) + 4 * v4);
        goto LABEL_19;
      }

LABEL_23:
      v25 = 0;
      memset(v34, 0, sizeof(v34));
      v20 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v29 = 797;
      v30 = 2048;
      v31 = v4;
      v32 = 2048;
      v33 = v3;
      _os_log_send_and_compose_impl(v21, &v25, v34, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v23, v24);
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v17 = v17 + (*v16 * fabsf((*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)))));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<float>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, float *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = (3 * a2);
  v7 = *(a1 + 24);
  if (v7 <= v6)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v6;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl(v13, &v24, &v33, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v8 = (3 * a2);
  v9 = *(a1 + 40);
  v10 = *(v9 + 4 * v6);
  *a3 = v10;
  v3 = (v8 + 1);
  if (v7 <= v3)
  {
LABEL_10:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  a3[1] = (*(v9 + 4 * v3) - v10) * 3.0;
  v4 = (v8 + 2);
  if (v7 <= v4)
  {
LABEL_14:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_18:
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
    v27 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = ((*(v9 + 4 * v6) + (*(v9 + 4 * v3) * -2.0)) + *(v9 + 4 * v4)) * 3.0;
  v5 = (v8 + 3);
  if (v7 <= v5)
  {
    goto LABEL_18;
  }

  a3[3] = (*(v9 + 4 * v5) + ((*(v9 + 4 * v3) - *(v9 + 4 * v4)) * 3.0)) - *(v9 + 4 * v6);
  return 4;
}

float re::BezierSpline<float>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v9 = v9 + (*v8 * fabsf((*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)))));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

void *re::Spline<float>::~Spline(void *a1)
{
  *a1 = &unk_1F5D1A598;
  v2 = a1 + 1;
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

__n128 re::DynamicArray<re::SpatialCurveKey<re::Vector2<float>>>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  result = *a2;
  v13 = *(a2 + 16);
  *v11 = *a2;
  v11[1] = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::SpatialCurve<re::Vector2<float>>::addSpline(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v361 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = *(a1 + 144);
  if (v11 <= a2)
  {
LABEL_322:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v246 = MEMORY[0x1E69E9C10];
    v247 = v10;
    v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v248)
    {
      v249 = 3;
    }

    else
    {
      v249 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v247;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v249, &v347, &v356, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
    goto LABEL_326;
  }

  v3 = a2;
  v14 = *(*(a1 + 160) + 32 * a2);
  v344 = a2;
  v343 = a3;
  if (v14 <= 1)
  {
    if (!v14)
    {
      v32 = re::globalAllocators(a1);
      v16 = (*(*v32[2] + 32))(v32[2], 144, 8);
      *(v16 + 8) = 0u;
      *(v16 + 120) = 0u;
      *(v16 + 136) = 0;
      v7 = v16 & 0xFFFFFFFFFFFFLL | 0x2DCD000000000000;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0u;
      *(v16 + 72) = 0u;
      *(v16 + 88) = 0u;
      *(v16 + 104) = 0u;
      *(v16 + 132) = 1065353216;
      *(v16 + 136) = 1;
      *v16 = &unk_1F5D1A648;
      v4 = (a3 - v3);
      if (v4)
      {
        v33 = v4 + 1;
        re::DynamicArray<unsigned long>::resize(v16 + 8, v33);
        *(v16 + 138) = v4;
        if ((*(v16 + 136) & 1) == 0)
        {
          re::DynamicArray<float>::resize(v16 + 48, v4 + 1);
        }
      }

      else
      {
        *(v16 + 32) = 1;
        *(v16 + 138) = 0;
        v33 = 1;
      }

      re::DynamicArray<float>::resize(a1 + 88, v33);
      v37 = 0;
      while (1)
      {
        v3 = v344 + v37;
        v11 = *(a1 + 144);
        if (v11 <= v3)
        {
          goto LABEL_146;
        }

        v11 = v37;
        v5 = *(v16 + 24);
        if (v5 <= v37)
        {
          goto LABEL_150;
        }

        v38 = *(a1 + 160) + 32 * v3;
        *(*(v16 + 40) + 8 * v11) = *(v38 + 8);
        v3 = *(a1 + 104);
        if (v3 <= v11)
        {
          goto LABEL_154;
        }

        *(*(a1 + 120) + 4 * v11) = *(v38 + 4);
        v37 = v11 + 1;
        if ((v11 + 1) > v4)
        {
          goto LABEL_65;
        }
      }
    }

    if (v14 == 1)
    {
      v15 = re::globalAllocators(a1);
      v16 = (*(*v15[2] + 32))(v15[2], 144, 8);
      *(v16 + 8) = 0u;
      *(v16 + 120) = 0u;
      *(v16 + 136) = 0;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0u;
      *(v16 + 72) = 0u;
      *(v16 + 88) = 0u;
      *(v16 + 104) = 0u;
      *(v16 + 132) = 1065353216;
      *(v16 + 136) = 1;
      *v16 = &unk_1F5D1A7D0;
      v8 = a3;
      v17 = a3 - v3;
      if (a3 == v3)
      {
        *(v16 + 32) = 1;
        *(v16 + 138) = 0;
      }

      else
      {
        re::DynamicArray<unsigned long>::resize(v16 + 8, (3 * v17 + 1));
        *(v16 + 138) = v17;
        if ((*(v16 + 136) & 1) == 0)
        {
          re::DynamicArray<float>::resize(v16 + 48, (a3 - v3) + 1);
        }
      }

      v11 = (a3 - v3);
      re::DynamicArray<float>::resize(a1 + 88, v11 + 1);
      v4 = *(a1 + 144);
      v39 = v344;
      if (v4 <= v344)
      {
        goto LABEL_342;
      }

      if (!*(a1 + 104))
      {
LABEL_354:
        v347 = 0;
        v359 = 0u;
        v360 = 0u;
        v357 = 0u;
        v358 = 0u;
        v356 = 0u;
        v272 = MEMORY[0x1E69E9C10];
        v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v348 = 136315906;
        v349 = "operator[]";
        v350 = 1024;
        if (v273)
        {
          v274 = 3;
        }

        else
        {
          v274 = 2;
        }

        v351 = 789;
        v352 = 2048;
        v353 = 0;
        v354 = 2048;
        v355 = 0;
        _os_log_send_and_compose_impl(v274, &v347, &v356, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
        _os_crash_msg();
        __break(1u);
        goto LABEL_358;
      }

      **(a1 + 120) = *(*(a1 + 160) + 32 * v344 + 4);
      if (v8 == v3)
      {
        v11 = 0;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        __asm
        {
          FMOV            V0.2S, #3.0
          FMOV            V1.2S, #-3.0
        }

        do
        {
          v5 = (v40 + v3);
          v4 = *(a1 + 144);
          if (v4 <= v5)
          {
            goto LABEL_206;
          }

          v7 = v5 + 1;
          if (v4 <= v5 + 1)
          {
            goto LABEL_210;
          }

          v4 = v40 + 1;
          v6 = *(a1 + 104);
          if (v6 <= v40 + 1)
          {
            goto LABEL_214;
          }

          v48 = *(a1 + 160);
          v49 = (v48 + 32 * v7);
          v50 = v49->f32[1];
          v51 = (*(a1 + 120) + 4 * v40);
          v51[1] = v50;
          v52 = v50 - *v51;
          v7 = v41;
          v6 = *(v16 + 24);
          if (v6 <= v41)
          {
            goto LABEL_218;
          }

          v53 = (v48 + 32 * v5);
          v54 = v49[2];
          v55 = v53[1];
          v56 = v53[3];
          *(*(v16 + 40) + 8 * v41) = v55;
          v5 = (v41 + 1);
          v6 = *(v16 + 24);
          if (v6 <= v5)
          {
            goto LABEL_222;
          }

          *(*(v16 + 40) + 8 * v5) = vadd_f32(vdiv_f32(vmul_n_f32(v56, v52), _D0), v55);
          v5 = (v41 + 2);
          v6 = *(v16 + 24);
          if (v6 <= v5)
          {
            goto LABEL_226;
          }

          v41 += 3;
          *(*(v16 + 40) + 8 * v5) = vadd_f32(v49[1], vdiv_f32(vmul_n_f32(v54, v52), _D1));
          v40 = v4;
        }

        while (v11 != v4);
        v4 = *(a1 + 144);
        v11 = v41;
      }

      v3 = v8;
      if (v4 <= v8)
      {
        goto LABEL_422;
      }

      v4 = *(v16 + 24);
      if (v4 <= v11)
      {
LABEL_426:
        v347 = 0;
        v359 = 0u;
        v360 = 0u;
        v357 = 0u;
        v358 = 0u;
        v356 = 0u;
        v326 = MEMORY[0x1E69E9C10];
        v327 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v348 = 136315906;
        v349 = "operator[]";
        v350 = 1024;
        if (v327)
        {
          v328 = 3;
        }

        else
        {
          v328 = 2;
        }

        v351 = 789;
        v352 = 2048;
        v353 = v11;
        v354 = 2048;
        v355 = v4;
        _os_log_send_and_compose_impl(v328, &v347, &v356, 80, &dword_1E1C61000, v326, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
        _os_crash_msg();
        __break(1u);
LABEL_430:
        v347 = 0;
        v359 = 0u;
        v360 = 0u;
        v357 = 0u;
        v358 = 0u;
        v356 = 0u;
        v329 = MEMORY[0x1E69E9C10];
        v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v348 = 136315906;
        v349 = "operator[]";
        v350 = 1024;
        if (v330)
        {
          v331 = 3;
        }

        else
        {
          v331 = 2;
        }

        v351 = 797;
        v352 = 2048;
        v353 = v3;
        v354 = 2048;
        v355 = v4;
        _os_log_send_and_compose_impl(v331, &v347, &v356, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
        _os_crash_msg();
        __break(1u);
        goto LABEL_434;
      }

      v7 = v16 & 0xFFFFFFFFFFFFLL | 0x2DCD000000000000;
      *(*(v16 + 40) + 8 * v11) = *(*(a1 + 160) + 32 * v8 + 8);
LABEL_65:
      (*(*v16 + 96))(v16, a1 + 88);
      goto LABEL_121;
    }

LABEL_446:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unrecognized key type.", "!Unreachable code", "addSpline", 343);
    _os_crash("assertion failure: (!Unreachable code) Unrecognized key type.");
    __break(1u);
    return;
  }

  v18 = a1 + 128;
  if (v14 == 2)
  {
    v34 = re::globalAllocators(a1);
    v16 = (*(*v34[2] + 32))(v34[2], 144, 8);
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0;
    *(v16 + 104) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 132) = 1065353216;
    *(v16 + 136) = 1;
    *v16 = &unk_1F5D1A7D0;
    *(a1 + 564) = v3;
    *(a1 + 566) = a3;
    v4 = (a3 - v3);
    v5 = (v4 + 3);
    *(a1 + 568) = v18;
    re::DynamicArray<unsigned long>::resize(a1 + 360, (v4 + 3));
    re::DynamicArray<float>::resize(a1 + 520, (v4 + 3));
    v35 = *(a1 + 568);
    v7 = *(a1 + 564);
    v11 = *(v35 + 16);
    if (v11 <= v7)
    {
LABEL_338:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v260 = MEMORY[0x1E69E9C10];
      v261 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v261)
      {
        v262 = 3;
      }

      else
      {
        v262 = 2;
      }

      v351 = 797;
      v352 = 2048;
      v353 = v7;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v262, &v347, &v356, 80, &dword_1E1C61000, v260, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
LABEL_342:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v263 = MEMORY[0x1E69E9C10];
      v11 = v39;
      v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v264)
      {
        v265 = 3;
      }

      else
      {
        v265 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v11;
      v354 = 2048;
      v355 = v4;
      _os_log_send_and_compose_impl(v265, &v347, &v356, 80, &dword_1E1C61000, v263, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_346;
    }

    v8 = v7 + 1;
    if (v11 <= v7 + 1)
    {
LABEL_350:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v269 = MEMORY[0x1E69E9C10];
      v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v270)
      {
        v271 = 3;
      }

      else
      {
        v271 = 2;
      }

      v351 = 797;
      v352 = 2048;
      v353 = v8;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v271, &v347, &v356, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_354;
    }

    if (!*(a1 + 376))
    {
LABEL_362:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v278 = MEMORY[0x1E69E9C10];
      v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v279)
      {
        v280 = 3;
      }

      else
      {
        v280 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v280, &v347, &v356, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_366;
    }

    **(a1 + 392) = vsub_f32(vadd_f32(*(*(v35 + 32) + 32 * v7 + 8), *(*(v35 + 32) + 32 * v7 + 8)), *(*(v35 + 32) + 32 * v8 + 8));
    if (!*(a1 + 536))
    {
LABEL_370:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v284 = MEMORY[0x1E69E9C10];
      v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v285)
      {
        v286 = 3;
      }

      else
      {
        v286 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v286, &v347, &v356, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_374;
    }

    **(a1 + 552) = 0;
    v36 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, 0);
    v11 = *(a1 + 536);
    if (v11 <= 1)
    {
LABEL_378:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v290 = MEMORY[0x1E69E9C10];
      v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v291)
      {
        v292 = 3;
      }

      else
      {
        v292 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 1;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v292, &v347, &v356, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_382;
    }

    *(*(a1 + 552) + 4) = v36;
    if (v343 != v3)
    {
      v3 = 0;
      v7 = v4;
      while (1)
      {
        v57 = *(a1 + 568);
        v11 = *(a1 + 564);
        v58 = v3 + v11;
        v8 = *(v57 + 16);
        if (v8 <= v3 + v11)
        {
          goto LABEL_190;
        }

        v6 = v3 + 1;
        v11 = (v3 + 1);
        v8 = *(a1 + 376);
        if (v8 <= v11)
        {
          goto LABEL_194;
        }

        *(*(a1 + 392) + 8 * v11) = *(*(v57 + 32) + 32 * v58 + 8);
        v8 = *(a1 + 536);
        if (v8 <= v11)
        {
          goto LABEL_198;
        }

        v59 = *(*(a1 + 552) + 4 * v11);
        v60 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, v3);
        v11 = (v3 + 2);
        v3 = *(a1 + 536);
        if (v3 <= v11)
        {
          goto LABEL_202;
        }

        *(*(a1 + 552) + 4 * v11) = v59 + v60;
        v3 = v6;
        if (v4 == v6)
        {
          goto LABEL_72;
        }
      }
    }

    v7 = 0;
LABEL_72:
    v61 = *(a1 + 568);
    v11 = v7 + *(a1 + 564);
    v3 = *(v61 + 16);
    if (v3 <= v11)
    {
      goto LABEL_394;
    }

    v3 = (v4 + 3) - 2;
    v7 = *(a1 + 376);
    if (v7 <= v3)
    {
LABEL_398:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v305 = MEMORY[0x1E69E9C10];
      v306 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v306)
      {
        v307 = 3;
      }

      else
      {
        v307 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v3;
      v354 = 2048;
      v355 = v7;
      _os_log_send_and_compose_impl(v307, &v347, &v356, 80, &dword_1E1C61000, v305, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_402;
    }

    *(*(a1 + 392) + 8 * v3) = *(*(v61 + 32) + 32 * v11 + 8);
    v11 = *(a1 + 376);
    if (v11 <= v3)
    {
LABEL_402:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v308 = MEMORY[0x1E69E9C10];
      v309 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v309)
      {
        v310 = 3;
      }

      else
      {
        v310 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v3;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v310, &v347, &v356, 80, &dword_1E1C61000, v308, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_406;
    }

    v7 = (v4 + 3) - 3;
    if (v11 <= v7)
    {
LABEL_406:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v311 = MEMORY[0x1E69E9C10];
      v312 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v312)
      {
        v313 = 3;
      }

      else
      {
        v313 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v7;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v313, &v347, &v356, 80, &dword_1E1C61000, v311, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_410;
    }

    v5 = (v4 + 3) - 1;
    if (v11 <= v5)
    {
LABEL_410:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v314 = MEMORY[0x1E69E9C10];
      v315 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v315)
      {
        v316 = 3;
      }

      else
      {
        v316 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v5;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v316, &v347, &v356, 80, &dword_1E1C61000, v314, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_414;
    }

    *(*(a1 + 392) + 8 * v5) = vsub_f32(vadd_f32(*(*(a1 + 392) + 8 * v3), *(*(a1 + 392) + 8 * v3)), *(*(a1 + 392) + 8 * v7));
    v11 = *(a1 + 536);
    if (v11 <= v3)
    {
LABEL_414:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v317 = MEMORY[0x1E69E9C10];
      v318 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v318)
      {
        v319 = 3;
      }

      else
      {
        v319 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v3;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v319, &v347, &v356, 80, &dword_1E1C61000, v317, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_418;
    }

    v62 = *(*(a1 + 552) + 4 * v3);
    v63 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, (v4 - 1));
    v11 = *(a1 + 536);
    if (v11 <= v5)
    {
LABEL_418:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v320 = MEMORY[0x1E69E9C10];
      v321 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v321)
      {
        v322 = 3;
      }

      else
      {
        v322 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v5;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v322, &v347, &v356, 80, &dword_1E1C61000, v320, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
LABEL_422:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v323 = MEMORY[0x1E69E9C10];
      v324 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v324)
      {
        v325 = 3;
      }

      else
      {
        v325 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v3;
      v354 = 2048;
      v355 = v4;
      _os_log_send_and_compose_impl(v325, &v347, &v356, 80, &dword_1E1C61000, v323, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_426;
    }

    *(*(a1 + 552) + 4 * v5) = v62 + v63;
    v64 = *(a1 + 566);
    v65 = *(a1 + 564);
    (*(*v16 + 16))(v16, (v64 - v65));
    v66 = v64 - v65;
    if (v64 == v65)
    {
      v11 = 0;
      v8 = v66;
    }

    else
    {
      v7 = 0;
      v11 = 0;
      v8 = v66;
      __asm
      {
        FMOV            V9.2S, #3.0
        FMOV            V10.2S, #-3.0
      }

      do
      {
        v9 = v7 + 1;
        v3 = *(a1 + 536);
        if (v3 <= v7 + 1)
        {
          goto LABEL_266;
        }

        v5 = v7 + 2;
        if (v3 <= v7 + 2)
        {
          goto LABEL_270;
        }

        v4 = *(a1 + 376);
        if (v4 <= v9)
        {
          goto LABEL_274;
        }

        if (v4 <= v5)
        {
          goto LABEL_278;
        }

        v75 = *(a1 + 552);
        v76 = v75 + 4 * v7;
        v77 = *(v76 + 4);
        v78 = *(v76 + 8);
        v5 = *(a1 + 392);
        v345 = v78 - v77;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(v3, v75, v4, v5, v7, v77);
        v3 = v79;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(*(a1 + 536), *(a1 + 552), *(a1 + 376), *(a1 + 392), v7, v78);
        v4 = v11;
        v6 = *(v16 + 24);
        if (v6 <= v11)
        {
          goto LABEL_282;
        }

        v81 = (v5 + 8 * v7);
        v82 = v81[1];
        *(*(v16 + 40) + 8 * v11) = v82;
        v4 = (v11 + 1);
        v5 = *(v16 + 24);
        if (v5 <= v4)
        {
          goto LABEL_286;
        }

        *(*(v16 + 40) + 8 * v4) = vadd_f32(vdiv_f32(vmul_n_f32(v3, v345), _D9), v82);
        v3 = (v11 + 2);
        v4 = *(v16 + 24);
        if (v4 <= v3)
        {
          goto LABEL_290;
        }

        v11 = (v11 + 3);
        *(*(v16 + 40) + 8 * v3) = vadd_f32(v81[2], vdiv_f32(vmul_n_f32(v80, v345), _D10));
        ++v7;
      }

      while (v8 != v9);
      v11 = v11;
    }

    v83 = *(a1 + 568);
    v3 = v8 + *(a1 + 564);
    v4 = *(v83 + 16);
    if (v4 <= v3)
    {
      goto LABEL_430;
    }

    v4 = *(v16 + 24);
    if (v4 <= v11)
    {
LABEL_434:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v332 = MEMORY[0x1E69E9C10];
      v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v333)
      {
        v334 = 3;
      }

      else
      {
        v334 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v11;
      v354 = 2048;
      v355 = v4;
      _os_log_send_and_compose_impl(v334, &v347, &v356, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
LABEL_438:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v335 = MEMORY[0x1E69E9C10];
      v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v336)
      {
        v337 = 3;
      }

      else
      {
        v337 = 2;
      }

      v351 = 797;
      v352 = 2048;
      v353 = v3;
      v354 = 2048;
      v355 = v4;
      _os_log_send_and_compose_impl(v337, &v347, &v356, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
LABEL_442:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v338 = MEMORY[0x1E69E9C10];
      v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v339)
      {
        v340 = 3;
      }

      else
      {
        v340 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v11;
      v354 = 2048;
      v355 = v4;
      _os_log_send_and_compose_impl(v340, &v347, &v356, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
    }

    v7 = v16 & 0xFFFFFFFFFFFFLL | 0x2DCD000000000000;
    *(*(v16 + 40) + 8 * v11) = *(*(v83 + 32) + 32 * v3 + 8);
    re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(a1 + 360, a1 + 520);
  }

  else
  {
    if (v14 != 3)
    {
      goto LABEL_446;
    }

    v19 = re::globalAllocators(a1);
    v16 = (*(*v19[2] + 32))(v19[2], 144, 8);
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0;
    *(v16 + 88) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 8) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 132) = 1065353216;
    *(v16 + 136) = 1;
    *v16 = &unk_1F5D1A7D0;
    *(a1 + 564) = v3;
    *(a1 + 566) = a3;
    *(a1 + 568) = v18;
    re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(a1 + 360, a1 + 520);
    v3 = (*(a1 + 566) - *(a1 + 564) + 1);
    re::DynamicArray<unsigned long>::resize(a1 + 360, v3);
    re::DynamicArray<unsigned long>::resize(a1 + 400, v3);
    re::DynamicArray<unsigned long>::resize(a1 + 440, v3);
    re::DynamicArray<unsigned long>::resize(a1 + 480, v3);
    v4 = v3 - 1;
    v11 = *(a1 + 376);
    if (v11 <= v3 - 1)
    {
LABEL_334:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v257 = MEMORY[0x1E69E9C10];
      v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v258)
      {
        v259 = 3;
      }

      else
      {
        v259 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v4;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v259, &v347, &v356, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_338;
    }

    *(*(a1 + 392) + 8 * v4) = 0;
    if (!*(a1 + 376))
    {
LABEL_346:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v266 = MEMORY[0x1E69E9C10];
      v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v267)
      {
        v268 = 3;
      }

      else
      {
        v268 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v268, &v347, &v356, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_350;
    }

    **(a1 + 392) = 0;
    v11 = *(a1 + 496);
    if (v11 <= v4)
    {
LABEL_358:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v275 = MEMORY[0x1E69E9C10];
      v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v276)
      {
        v277 = 3;
      }

      else
      {
        v277 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v4;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v277, &v347, &v356, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_362;
    }

    *(*(a1 + 512) + 8 * v4) = 0x3F8000003F800000;
    if (!*(a1 + 496))
    {
LABEL_366:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v281 = MEMORY[0x1E69E9C10];
      v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v282)
      {
        v283 = 3;
      }

      else
      {
        v283 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v283, &v347, &v356, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_370;
    }

    **(a1 + 512) = 0x3F8000003F800000;
    v11 = *(a1 + 416);
    if (v11 <= v4)
    {
LABEL_374:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v287 = MEMORY[0x1E69E9C10];
      v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v288)
      {
        v289 = 3;
      }

      else
      {
        v289 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v4;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v289, &v347, &v356, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_378;
    }

    *(*(a1 + 432) + 8 * v4) = 0;
    if (!*(a1 + 416))
    {
LABEL_382:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v293 = MEMORY[0x1E69E9C10];
      v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v294)
      {
        v295 = 3;
      }

      else
      {
        v295 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v295, &v347, &v356, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_386;
    }

    **(a1 + 432) = 0;
    v11 = *(a1 + 456);
    if (v11 <= v4)
    {
LABEL_386:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v296 = MEMORY[0x1E69E9C10];
      v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v297)
      {
        v298 = 3;
      }

      else
      {
        v298 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = v4;
      v354 = 2048;
      v355 = v11;
      _os_log_send_and_compose_impl(v298, &v347, &v356, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_390;
    }

    *(*(a1 + 472) + 8 * v4) = 0;
    if (!*(a1 + 456))
    {
LABEL_390:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v299 = MEMORY[0x1E69E9C10];
      v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v300)
      {
        v301 = 3;
      }

      else
      {
        v301 = 2;
      }

      v351 = 789;
      v352 = 2048;
      v353 = 0;
      v354 = 2048;
      v355 = 0;
      _os_log_send_and_compose_impl(v301, &v347, &v356, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
LABEL_394:
      v347 = 0;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v356 = 0u;
      v302 = MEMORY[0x1E69E9C10];
      v303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v348 = 136315906;
      v349 = "operator[]";
      v350 = 1024;
      if (v303)
      {
        v304 = 3;
      }

      else
      {
        v304 = 2;
      }

      v351 = 797;
      v352 = 2048;
      v353 = v11;
      v354 = 2048;
      v355 = v3;
      _os_log_send_and_compose_impl(v304, &v347, &v356, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
      _os_crash_msg();
      __break(1u);
      goto LABEL_398;
    }

    **(a1 + 472) = 0;
    if (v4 >= 2)
    {
      v23 = 2 - v3;
      v3 = 1;
      v24 = 8;
      do
      {
        v11 = *(a1 + 536);
        if (v11 <= v3)
        {
          goto LABEL_230;
        }

        v5 = v3 + 1;
        if (v11 <= v3 + 1)
        {
          goto LABEL_234;
        }

        v11 = *(a1 + 376);
        if (v11 <= v3)
        {
          goto LABEL_238;
        }

        v25 = *(a1 + 552);
        v26 = *(v25 + 4 * v3);
        *v20.i32 = v26 - *(v25 + v24 - 8);
        v22.i32[0] = *(v25 + v24);
        *(*(a1 + 392) + 8 * v3) = vdup_lane_s32(v20, 0);
        v11 = *(a1 + 496);
        if (v11 <= v3)
        {
          goto LABEL_242;
        }

        *v21.i32 = *v22.i32 - v26;
        *v22.i32 = (*v20.i32 + *v21.i32) + (*v20.i32 + *v21.i32);
        *(*(a1 + 512) + 8 * v3) = vdup_lane_s32(v22, 0);
        v11 = *(a1 + 416);
        if (v11 <= v3)
        {
          goto LABEL_246;
        }

        *(*(a1 + 432) + 8 * v3) = vdup_lane_s32(v21, 0);
        v27 = *(a1 + 568);
        v28 = *(a1 + 564);
        v7 = v28 + v5;
        v11 = *(v27 + 16);
        if (v11 <= v7)
        {
          goto LABEL_250;
        }

        v8 = v28 + v3;
        if (v11 <= v8)
        {
          goto LABEL_254;
        }

        v9 = v28 + (v3 - 1);
        if (v11 <= v9)
        {
          goto LABEL_258;
        }

        v11 = *(a1 + 456);
        if (v11 <= v3)
        {
          goto LABEL_262;
        }

        v29 = *(v27 + 32);
        v30 = *(v29 + 32 * v8 + 8);
        v21 = vmul_n_f32(vsub_f32(*(v29 + 32 * v7 + 8), v30), 3.0 / *v21.i32);
        v22 = vsub_f32(v30, *(v29 + 32 * v9 + 8));
        v20 = vsub_f32(v21, vmul_n_f32(v22, 3.0 / *v20.i32));
        *(*(a1 + 472) + 8 * v3) = v20;
        v24 += 4;
        ++v3;
      }

      while (v23 + v5 != 1);
      v31.n128_u64[0] = re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(a1 + 360, a1 + 480, a1 + 400, a1 + 440);
      goto LABEL_82;
    }

    v31.n128_u64[0] = re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(a1 + 360, a1 + 480, a1 + 400, a1 + 440);
    if (v3 != 1)
    {
LABEL_82:
      v3 = 0;
      v67 = 4;
      v68 = 8;
      v31.n128_u32[0] = 1.0;
      do
      {
        v11 = v3 + 1;
        v5 = *(a1 + 536);
        if (v5 <= v3 + 1)
        {
          goto LABEL_158;
        }

        v69 = *(a1 + 568);
        v70 = *(a1 + 564);
        v7 = v70 + v11;
        v5 = *(v69 + 16);
        if (v5 <= v7)
        {
          goto LABEL_162;
        }

        v8 = v70 + v3;
        if (v5 <= v8)
        {
          goto LABEL_166;
        }

        v5 = *(a1 + 456);
        if (v5 <= v3)
        {
          goto LABEL_170;
        }

        if (v5 <= v11)
        {
          goto LABEL_174;
        }

        v5 = *(a1 + 416);
        if (v5 <= v3)
        {
          goto LABEL_178;
        }

        v71 = *(*(a1 + 552) + v67) - *(*(a1 + 552) + v67 - 4);
        *(*(a1 + 432) + 8 * v3) = vsub_f32(vmul_n_f32(vsub_f32(*(*(v69 + 32) + 32 * v7 + 8), *(*(v69 + 32) + 32 * v8 + 8)), 1.0 / v71), vmul_n_f32(vadd_f32(vadd_f32(*(*(a1 + 472) + v68 - 8), *(*(a1 + 472) + v68 - 8)), *(*(a1 + 472) + v68)), v71 / 3.0));
        v5 = *(a1 + 456);
        if (v5 <= v11)
        {
          goto LABEL_182;
        }

        v5 = *(a1 + 496);
        if (v5 <= v3)
        {
          goto LABEL_186;
        }

        *(*(a1 + 512) + 8 * v3) = vmul_n_f32(vsub_f32(*(*(a1 + 472) + v68), *(*(a1 + 472) + v68 - 8)), 1.0 / (v71 * 3.0));
        v67 += 4;
        v68 += 8;
        ++v3;
      }

      while (v4 != v11);
    }

    v11 = *(a1 + 566);
    v72 = *(a1 + 564);
    (*(*v16 + 16))(v16, (v11 - v72), v31);
    v5 = (v11 - v72);
    if (v11 == v72)
    {
      v11 = 0;
    }

    else
    {
      v4 = 0;
      v7 = 0;
      __asm
      {
        FMOV            V9.2S, #3.0
        FMOV            V10.2S, #-3.0
      }

      do
      {
        v3 = *(a1 + 536);
        if (v3 <= v4)
        {
          goto LABEL_294;
        }

        v8 = (v4 + 1);
        if (v3 <= v8)
        {
          goto LABEL_298;
        }

        v86 = *(a1 + 568);
        v9 = *(a1 + 564);
        v87 = v4 + v9;
        v11 = *(v86 + 16);
        if (v11 <= v4 + v9)
        {
          goto LABEL_302;
        }

        v9 += (v4 + 1);
        if (v11 <= v9)
        {
          goto LABEL_306;
        }

        v88 = *(a1 + 552);
        v89 = *(v88 + 4 * v4);
        v90 = *(v88 + 4 * v8);
        v91 = *(v86 + 32);
        v11 = *(v91 + 32 * v87 + 8);
        v92 = *(v91 + 32 * v9 + 8);
        v346 = v90 - v89;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(v3, v88, *(a1 + 416), *(a1 + 432), *(a1 + 456), *(a1 + 472), *(a1 + 496), *(a1 + 512), v89, v4);
        v3 = v93;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(*(a1 + 536), *(a1 + 552), *(a1 + 416), *(a1 + 432), *(a1 + 456), *(a1 + 472), *(a1 + 496), *(a1 + 512), v90, v4);
        v8 = v7;
        v6 = *(v16 + 24);
        if (v6 <= v7)
        {
          goto LABEL_310;
        }

        *(*(v16 + 40) + 8 * v7) = v11;
        v8 = (v7 + 1);
        v6 = *(v16 + 24);
        if (v6 <= v8)
        {
          goto LABEL_314;
        }

        *(*(v16 + 40) + 8 * v8) = vadd_f32(vdiv_f32(vmul_n_f32(v3, v346), _D9), v11);
        v11 = (v7 + 2);
        v3 = *(v16 + 24);
        if (v3 <= v11)
        {
          goto LABEL_318;
        }

        v7 = (v7 + 3);
        *(*(v16 + 40) + 8 * v11) = vadd_f32(v92, vdiv_f32(vmul_n_f32(v94, v346), _D10));
        ++v4;
      }

      while (v5 != v4);
      v11 = v7;
    }

    v95 = *(a1 + 568);
    v3 = *(a1 + 564) + v5;
    v4 = *(v95 + 16);
    if (v4 <= v3)
    {
      goto LABEL_438;
    }

    v4 = *(v16 + 24);
    if (v4 <= v11)
    {
      goto LABEL_442;
    }

    v7 = v16 & 0xFFFFFFFFFFFFLL | 0x2DCD000000000000;
    *(*(v16 + 40) + 8 * v11) = *(*(v95 + 32) + 32 * v3 + 8);
  }

  (*(*v16 + 96))(v16, a1 + 520);
LABEL_121:
  v3 = v16 + 88;
  v5 = (*(*v16 + 40))(v16);
  v4 = v5;
  re::DynamicArray<float>::resize(v16 + 88, v5);
  if (v5)
  {
    v3 = 0;
    v96 = 0.0;
    while (1)
    {
      (*(*v16 + 152))(v16, v3);
      v11 = *(v16 + 104);
      if (v11 <= v3)
      {
        break;
      }

      v96 = v96 + v97;
      *(*(v16 + 120) + 4 * v3++) = v96;
      if (v5 == v3)
      {
        goto LABEL_125;
      }
    }

    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v112 = MEMORY[0x1E69E9C10];
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v113, &v347, &v356, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_146:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v116, &v347, &v356, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_150:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v119, &v347, &v356, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_154:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v122, &v347, &v356, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_158:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v125, &v347, &v356, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_162:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v7;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v128, &v347, &v356, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_166:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v8;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v131, &v347, &v356, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_170:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v134, &v347, &v356, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_174:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3 + 1;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v137, &v347, &v356, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_178:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v140, &v347, &v356, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_182:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3 + 1;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v143, &v347, &v356, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_186:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v146, &v347, &v356, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_190:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v11 + v3;
    v354 = 2048;
    v355 = v8;
    _os_log_send_and_compose_impl(v149, &v347, &v356, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v8;
    _os_log_send_and_compose_impl(v152, &v347, &v356, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_198:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v8;
    _os_log_send_and_compose_impl(v155, &v347, &v356, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_202:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v158, &v347, &v356, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_206:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v5;
    v354 = 2048;
    v355 = v4;
    _os_log_send_and_compose_impl(v161, &v347, &v356, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_210:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v7;
    v354 = 2048;
    v355 = v4;
    _os_log_send_and_compose_impl(v164, &v347, &v356, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_214:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v165 = MEMORY[0x1E69E9C10];
    v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v166)
    {
      v167 = 3;
    }

    else
    {
      v167 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v4;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v167, &v347, &v356, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_218:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v168 = MEMORY[0x1E69E9C10];
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v7;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v170, &v347, &v356, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_222:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v171 = MEMORY[0x1E69E9C10];
    v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v172)
    {
      v173 = 3;
    }

    else
    {
      v173 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v5;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v173, &v347, &v356, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_226:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v174 = MEMORY[0x1E69E9C10];
    v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v175)
    {
      v176 = 3;
    }

    else
    {
      v176 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v5;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v176, &v347, &v356, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_230:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v177 = MEMORY[0x1E69E9C10];
    v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v178)
    {
      v179 = 3;
    }

    else
    {
      v179 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v179, &v347, &v356, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_234:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v180 = MEMORY[0x1E69E9C10];
    v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v181)
    {
      v182 = 3;
    }

    else
    {
      v182 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v5;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v182, &v347, &v356, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_238:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v183 = MEMORY[0x1E69E9C10];
    v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v184)
    {
      v185 = 3;
    }

    else
    {
      v185 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v185, &v347, &v356, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_242:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v186 = MEMORY[0x1E69E9C10];
    v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v187)
    {
      v188 = 3;
    }

    else
    {
      v188 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v188, &v347, &v356, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_246:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v189 = MEMORY[0x1E69E9C10];
    v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v190)
    {
      v191 = 3;
    }

    else
    {
      v191 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v191, &v347, &v356, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_250:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v192 = MEMORY[0x1E69E9C10];
    v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v193)
    {
      v194 = 3;
    }

    else
    {
      v194 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v7;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v194, &v347, &v356, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_254:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v195 = MEMORY[0x1E69E9C10];
    v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v196)
    {
      v197 = 3;
    }

    else
    {
      v197 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v8;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v197, &v347, &v356, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_258:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v198 = MEMORY[0x1E69E9C10];
    v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v199)
    {
      v200 = 3;
    }

    else
    {
      v200 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v9;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v200, &v347, &v356, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_262:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v201 = MEMORY[0x1E69E9C10];
    v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v202)
    {
      v203 = 3;
    }

    else
    {
      v203 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v203, &v347, &v356, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_266:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v204 = MEMORY[0x1E69E9C10];
    v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v205)
    {
      v206 = 3;
    }

    else
    {
      v206 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v9;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v206, &v347, &v356, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_270:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v207 = MEMORY[0x1E69E9C10];
    v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v208)
    {
      v209 = 3;
    }

    else
    {
      v209 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v5;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v209, &v347, &v356, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_274:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v210 = MEMORY[0x1E69E9C10];
    v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v211)
    {
      v212 = 3;
    }

    else
    {
      v212 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v7 + 1;
    v354 = 2048;
    v355 = v4;
    _os_log_send_and_compose_impl(v212, &v347, &v356, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_278:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v213 = MEMORY[0x1E69E9C10];
    v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v214)
    {
      v215 = 3;
    }

    else
    {
      v215 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v7 + 2;
    v354 = 2048;
    v355 = v4;
    _os_log_send_and_compose_impl(v215, &v347, &v356, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_282:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v216 = MEMORY[0x1E69E9C10];
    v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v217)
    {
      v218 = 3;
    }

    else
    {
      v218 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v4;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v218, &v347, &v356, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_286:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v219 = MEMORY[0x1E69E9C10];
    v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v220)
    {
      v221 = 3;
    }

    else
    {
      v221 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v4;
    v354 = 2048;
    v355 = v5;
    _os_log_send_and_compose_impl(v221, &v347, &v356, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_290:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v222 = MEMORY[0x1E69E9C10];
    v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v223)
    {
      v224 = 3;
    }

    else
    {
      v224 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v4;
    _os_log_send_and_compose_impl(v224, &v347, &v356, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_294:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v225 = MEMORY[0x1E69E9C10];
    v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v226)
    {
      v227 = 3;
    }

    else
    {
      v227 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v4;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v227, &v347, &v356, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_298:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v228 = MEMORY[0x1E69E9C10];
    v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v229)
    {
      v230 = 3;
    }

    else
    {
      v230 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v8;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v230, &v347, &v356, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_302:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v231 = MEMORY[0x1E69E9C10];
    v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v232)
    {
      v233 = 3;
    }

    else
    {
      v233 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v9 + v4;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v233, &v347, &v356, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_306:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v234 = MEMORY[0x1E69E9C10];
    v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v235)
    {
      v236 = 3;
    }

    else
    {
      v236 = 2;
    }

    v351 = 797;
    v352 = 2048;
    v353 = v9;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v236, &v347, &v356, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_310:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v237 = MEMORY[0x1E69E9C10];
    v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v238)
    {
      v239 = 3;
    }

    else
    {
      v239 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v8;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v239, &v347, &v356, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_314:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v240 = MEMORY[0x1E69E9C10];
    v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v241)
    {
      v242 = 3;
    }

    else
    {
      v242 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v8;
    v354 = 2048;
    v355 = v6;
    _os_log_send_and_compose_impl(v242, &v347, &v356, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
LABEL_318:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v243 = MEMORY[0x1E69E9C10];
    v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v244)
    {
      v245 = 3;
    }

    else
    {
      v245 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v11;
    v354 = 2048;
    v355 = v3;
    _os_log_send_and_compose_impl(v245, &v347, &v356, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
    goto LABEL_322;
  }

LABEL_125:
  v11 = *(a1 + 144);
  v98 = v344;
  if (v11 <= v344)
  {
LABEL_326:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v250 = MEMORY[0x1E69E9C10];
    v251 = v98;
    v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v252)
    {
      v253 = 3;
    }

    else
    {
      v253 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v251;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v253, &v347, &v356, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
    goto LABEL_330;
  }

  v3 = v343;
  if (v11 <= v343)
  {
LABEL_330:
    v347 = 0;
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v356 = 0u;
    v254 = MEMORY[0x1E69E9C10];
    v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v348 = 136315906;
    v349 = "operator[]";
    v350 = 1024;
    if (v255)
    {
      v256 = 3;
    }

    else
    {
      v256 = 2;
    }

    v351 = 789;
    v352 = 2048;
    v353 = v3;
    v354 = 2048;
    v355 = v11;
    _os_log_send_and_compose_impl(v256, &v347, &v356, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v348, 38, v341, v342);
    _os_crash_msg();
    __break(1u);
    goto LABEL_334;
  }

  v99 = *(a1 + 160);
  v100 = *(v99 + 32 * v344 + 4);
  v101 = *(v99 + 32 * v343 + 4);
  v102 = (*(*v16 + 48))(v16);
  (*(*v16 + 56))(v16, (v102 - 1));
  v104 = (*(*v16 + 136))(v16);
  v105 = *(a1 + 184);
  if (v105)
  {
    v106 = *(*(a1 + 200) + 24 * v105 - 8);
  }

  else
  {
    v106 = 0.0;
  }

  v107 = *(a1 + 176);
  if (v105 >= v107)
  {
    v108 = v105 + 1;
    if (v107 < v105 + 1)
    {
      if (*(a1 + 168))
      {
        v109 = 2 * v107;
        if (!v107)
        {
          v109 = 8;
        }

        if (v109 <= v108)
        {
          v110 = v108;
        }

        else
        {
          v110 = v109;
        }

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 168), v110);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 168), v108);
        ++*(a1 + 192);
      }
    }

    v105 = *(a1 + 184);
  }

  v111 = *(a1 + 200) + 24 * v105;
  *v111 = v16;
  *(v111 + 8) = v100;
  *(v111 + 12) = v101;
  *(v111 + 16) = v104 + v106;
  *(a1 + 184) = v105 + 1;
  ++*(a1 + 192);
}

re *re::internal::destroyPersistent<re::Spline<re::Vector2<float>>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::LinearSpline<re::Vector2<float>>::~LinearSpline(void *a1)
{
  re::Spline<re::Vector2<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::LinearSpline<re::Vector2<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a2;
    re::DynamicArray<unsigned long>::resize(a1 + 8, a2 + 1);
    *(a1 + 138) = v3;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, v4 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::LinearSpline<re::Vector2<float>>::reserveSpans(void *result, unsigned int a2)
{
  if (result[2] <= a2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 1, a2 + 1);
  }

  return result;
}

uint64_t re::Spline<re::Vector2<float>>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<re::Vector2<float>>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  v19 = *MEMORY[0x1E69E9840];
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else
  {
    v4 = a2;
    v5 = *(result + 64);
    if (v5 <= a2)
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
      v15 = v4;
      v16 = 2048;
      v17 = v5;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::LinearSpline<re::Vector2<float>>::findSpanIndex(uint64_t a1, float a2)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2 >= a2)
    {
      LOWORD(v3) = 0;
    }

    else
    {
      v3 = *(a1 + 138);
      v4 = *(a1 + 132);
      if (v4 <= a2)
      {
        LOWORD(v3) = v3 - 1;
      }

      else
      {
        v3 = (((a2 - v2) / (v4 - v2)) * v3);
      }
    }

    LOWORD(result) = v3;
  }

  else
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  return result;
}

BOOL re::Spline<re::Vector2<float>>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<re::Vector2<float>>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
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

    v14 = 797;
    v15 = 2048;
    v16 = 0;
    v17 = 2048;
    v18 = 0;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4 <= a2)
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
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

float32x2_t re::LinearSpline<re::Vector2<float>>::evaluateAt(uint64_t a1, float a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 128);
    if (v4 >= a2)
    {
      LOWORD(v5) = 0;
      v8 = 0;
    }

    else
    {
      v5 = *(a1 + 138);
      v6 = *(a1 + 132);
      if (v6 <= a2)
      {
        LOWORD(v5) = v5 - 1;
        v8 = 0x3F80000000000000;
      }

      else
      {
        v7 = ((a2 - v4) / (v6 - v4)) * v5;
        v5 = v7;
        v8 = COERCE_UNSIGNED_INT(v7 - v7) << 32;
      }
    }

    NonUniformSpan = v8 | v5;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  v10 = NonUniformSpan;
  v11 = *(a1 + 24);
  if (v11 <= NonUniformSpan)
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

    v23 = 797;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
LABEL_16:
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

    v23 = 797;
    v24 = 2048;
    v25 = v2;
    v26 = 2048;
    v27 = v11;
    _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v2 = NonUniformSpan + 1;
  if (v11 <= v2)
  {
    goto LABEL_16;
  }

  return vadd_f32(vmul_n_f32(*(*(a1 + 40) + 8 * NonUniformSpan), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(*(*(a1 + 40) + 8 * v2), *(&NonUniformSpan + 1)));
}

float32x2_t re::LinearSpline<re::Vector2<float>>::evaluateDerivativeAt(uint64_t a1, int a2, float a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v6 = *(a1 + 138);
    v7 = *(a1 + 128);
    v8 = *(a1 + 132);
    if (v7 >= a3)
    {
      LOWORD(v10) = 0;
      v11 = 0;
    }

    else if (v8 <= a3)
    {
      LOWORD(v10) = v6 - 1;
      v11 = 0x3F80000000000000;
    }

    else
    {
      v9 = ((a3 - v7) / (v8 - v7)) * v6;
      v10 = v9;
      v11 = COERCE_UNSIGNED_INT(v9 - v9) << 32;
    }

    v13 = v6 / (v8 - v7);
    NonUniformSpan = v11 | v10;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v14 = NonUniformSpan;
  v15 = *(a1 + 24);
  if (v15 <= NonUniformSpan)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_20:
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
    v27 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v3;
    v31 = 2048;
    v32 = v15;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v3 = NonUniformSpan + 1;
  if (v15 <= v3)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 40);
  if (a2 == 1)
  {
    return vmul_n_f32(vsub_f32(*(v16 + 8 * v3), *(v16 + 8 * NonUniformSpan)), v13);
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return vadd_f32(vmul_n_f32(*(v16 + 8 * NonUniformSpan), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(*(v16 + 8 * v3), *(&NonUniformSpan + 1)));
    }
  }

  return result;
}

float re::LinearSpline<re::Vector2<float>>::evaluateLengthAt(uint64_t a1, float a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a2)
    {
      LOWORD(v4) = 0;
      v7 = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a2)
      {
        LOWORD(v4) = v4 - 1;
        v7 = 0x3F80000000000000;
      }

      else
      {
        v6 = ((a2 - v3) / (v5 - v3)) * v4;
        v4 = v6;
        v7 = COERCE_UNSIGNED_INT(v6 - v6) << 32;
      }
    }

    NonUniformSpan = v7 | v4;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  v9 = *(a1 + 104);
  if (!v9)
  {
    if (NonUniformSpan)
    {
      v12 = 0;
      v11 = 0.0;
      do
      {
        v11 = v11 + (*(*a1 + 152))(a1, v12);
        v12 = (v12 + 1);
      }

      while (NonUniformSpan != v12);
      goto LABEL_18;
    }

LABEL_17:
    v11 = 0.0;
    goto LABEL_18;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_17;
  }

  v10 = NonUniformSpan - 1;
  if (v9 <= v10)
  {
    goto LABEL_24;
  }

  v11 = *(*(a1 + 120) + 4 * v10);
LABEL_18:
  v9 = NonUniformSpan + 1;
  v10 = *(a1 + 24);
  if (v10 <= v9)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = NonUniformSpan + 1;
    v28 = 2048;
    v29 = v10;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 797;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v13 = vsub_f32(*(*(a1 + 40) + 8 * NonUniformSpan), *(*(a1 + 40) + 8 * v9));
  return v11 + (*(&NonUniformSpan + 1) * sqrtf(vaddv_f32(vmul_f32(v13, v13))));
}

uint64_t re::LinearSpline<re::Vector2<float>>::calculateMonomialBasisForSpan(uint64_t a1, unsigned int a2, float32x2_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 24);
  if (v4 <= a2)
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
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(*(a1 + 40) + 8 * a2);
  *a3 = v5;
  v3 = a2 + 1;
  v4 = *(a1 + 24);
  if (v4 <= v3)
  {
    goto LABEL_8;
  }

  a3[1] = vsub_f32(*(*(a1 + 40) + 8 * v3), v5);
  a3[2] = 0;
  a3[3] = 0;
  return 2;
}

float re::LinearSpline<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 24);
  if (v4 <= a2)
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
    v19 = v3;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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
    v19 = v2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 + 1;
  if (v4 <= v2)
  {
    goto LABEL_8;
  }

  v5 = vsub_f32(*(*(a1 + 40) + 8 * v2), *(*(a1 + 40) + 8 * a2));
  return sqrtf(vaddv_f32(vmul_f32(v5, v5)));
}

void *re::Spline<re::Vector2<float>>::~Spline(void *a1)
{
  *a1 = &unk_1F5D1A720;
  v2 = a1 + 1;
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

void re::BezierSpline<re::Vector2<float>>::~BezierSpline(void *a1)
{
  re::Spline<re::Vector2<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<re::Vector2<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<unsigned long>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<re::Vector2<float>>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::BezierSpline<re::Vector2<float>>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v7);
  __break(1u);
  return result;
}

float32x2_t re::BezierSpline<re::Vector2<float>>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
      v11 = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
        v11 = 0x3F80000000000000;
      }

      else
      {
        v10 = ((a3 - v7) / (v9 - v7)) * v8;
        v8 = v10;
        v11 = COERCE_UNSIGNED_INT(v10 - v10) << 32;
      }
    }

    NonUniformSpan = v11 | v8;
  }

  else
  {
    v12 = *(a1 + 64) - 1;
    if (v12 >= 0x10000)
    {
      goto LABEL_31;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v14 = (3 * NonUniformSpan);
  v15 = *(a1 + 24);
  if (v15 <= v14)
  {
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v19, &v32, &v41, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v3 = (v14 + 1);
  if (v15 <= v3)
  {
LABEL_19:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v3;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v22, &v32, &v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  v4 = (v14 + 2);
  if (v15 <= v4)
  {
LABEL_23:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v4;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v25, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  v5 = (v14 + 3);
  if (v15 <= v5)
  {
LABEL_27:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v36 = 797;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v15;
    _os_log_send_and_compose_impl(v28, &v32, &v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v12);
    _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v29);
    __break(1u);
  }

  v16 = *(a1 + 40);
  return vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(v16 + 8 * v14), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmul_n_f32(*(v16 + 8 * v3), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmul_n_f32(*(v16 + 8 * v4), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmul_n_f32(*(v16 + 8 * v5), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
}

uint64_t re::BezierSpline<re::Vector2<float>>::evaluateDerivativeAt(uint64_t a1, unint64_t a2, float a3)
{
  v3 = a2;
  v96 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v79);
      __break(1u);
LABEL_32:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = v16;
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v41;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v42, &v82, &v91, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
      goto LABEL_36;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  v14 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v35 = (3 * NonUniformSpan) + 2;
      v3 = *(a1 + 24);
      if (v3 > v35)
      {
        v36 = (3 * NonUniformSpan) + 3;
        if (v3 > v36)
        {
          v37 = *(a1 + 40);
          v19 = (v12 * 6.0) * v12;
          v38 = (v37 + 8 * v13);
          v22 = vadd_f32(vmul_n_f32(vadd_f32(*v38, vsub_f32(*(v37 + 8 * v35), vadd_f32(v38[1], v38[1]))), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(vadd_f32(v38[1], vsub_f32(*(v37 + 8 * v36), vadd_f32(*(v37 + 8 * v35), *(v37 + 8 * v35)))), *(&NonUniformSpan + 1)));
          return vmul_n_f32(v22, v19);
        }

        goto LABEL_56;
      }

      goto LABEL_44;
    }

    if (v3 == 3)
    {
      v3 = (3 * NonUniformSpan) + 3;
      v23 = *(a1 + 24);
      if (v23 <= v3)
      {
LABEL_36:
        v82 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v91 = 0u;
        v43 = MEMORY[0x1E69E9C10];
        v44 = v23;
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v83 = 136315906;
        v84 = "operator[]";
        v85 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v86 = 797;
        v87 = 2048;
        v88 = v3;
        v89 = 2048;
        v90 = v44;
        _os_log_send_and_compose_impl(v46, &v82, &v91, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

      __asm { FMOV            V3.2S, #3.0 }

      return vmul_n_f32(vsub_f32(vadd_f32(vsub_f32(*(*(a1 + 40) + 8 * v3), vmul_f32(*(*(a1 + 40) + 8 * (3 * NonUniformSpan) + 16), _D3)), vmul_f32(*(*(a1 + 40) + 8 * (3 * NonUniformSpan) + 8), _D3)), *(*(a1 + 40) + 8 * (3 * NonUniformSpan))), ((v12 * 6.0) * v12) * v12);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v15 = (3 * NonUniformSpan);
      v16 = (v15 + 1);
      v3 = *(a1 + 24);
      if (v3 > v16)
      {
        v17 = (v15 + 2);
        if (v3 > v17)
        {
          v18 = (v15 + 3);
          if (v3 > v18)
          {
            v19 = v12 * 3.0;
            v20 = *(a1 + 40);
            v21 = 1.0 - *(&NonUniformSpan + 1);
            v22 = vadd_f32(vadd_f32(vmul_n_f32(vsub_f32(*(v20 + 8 * v16), *(v20 + 8 * (3 * NonUniformSpan))), v21 * v21), vmul_n_f32(vsub_f32(*(v20 + 8 * v17), *(v20 + 8 * v16)), (v21 + v21) * *(&NonUniformSpan + 1))), vmul_n_f32(vsub_f32(*(v20 + 8 * v18), *(v20 + 8 * v17)), *(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
            return vmul_n_f32(v22, v19);
          }

          goto LABEL_60;
        }

        goto LABEL_48;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v29 = (3 * NonUniformSpan);
    v3 = *(a1 + 24);
    if (v3 <= v13)
    {
LABEL_40:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = v29;
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v48;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v50, &v82, &v91, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
LABEL_44:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = v35;
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v52;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v54, &v82, &v91, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = v17;
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v56;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v58, &v82, &v91, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
      goto LABEL_52;
    }

    v30 = (3 * NonUniformSpan);
    v31 = (v30 + 1);
    if (v3 <= v31)
    {
LABEL_52:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = v31;
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v60;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v62, &v82, &v91, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v63 = MEMORY[0x1E69E9C10];
      v64 = v36;
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v64;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v66, &v82, &v91, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v67 = MEMORY[0x1E69E9C10];
      v68 = v18;
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v68;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v70, &v82, &v91, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
      goto LABEL_64;
    }

    v32 = (v30 + 2);
    if (v3 <= v32)
    {
LABEL_64:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = v32;
      v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v73)
      {
        v74 = 3;
      }

      else
      {
        v74 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v72;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v74, &v82, &v91, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v75 = MEMORY[0x1E69E9C10];
      v76 = v33;
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v83 = 136315906;
      v84 = "operator[]";
      v85 = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      v86 = 797;
      v87 = 2048;
      v88 = v76;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl(v78, &v82, &v91, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v80, v81);
      _os_crash_msg();
      __break(1u);
    }

    v33 = (v30 + 3);
    if (v3 <= v33)
    {
      goto LABEL_68;
    }

    v34 = *(a1 + 40);
    return vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(v34 + 8 * v29), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmul_n_f32(*(v34 + 8 * v31), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmul_n_f32(*(v34 + 8 * v32), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmul_n_f32(*(v34 + 8 * v33), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
  }

  return v14;
}

float re::BezierSpline<re::Vector2<float>>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 >= a3)
    {
      LOWORD(v8) = 0;
    }

    else
    {
      v8 = *(a1 + 138);
      v9 = *(a1 + 132);
      if (v9 <= a3)
      {
        LOWORD(v8) = v8 - 1;
      }

      else
      {
        v8 = (((a3 - v7) / (v9 - v7)) * v8);
      }
    }

    NonUniformSpan = v8;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash("assertion failure: (!overflow) m_knots.size() (%zu) too large for 16-bit integer", v24);
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    if (NonUniformSpan)
    {
      v4 = NonUniformSpan - 1;
      if (v3 > v4)
      {
        v11 = *(*(a1 + 120) + 4 * v4);
        goto LABEL_19;
      }

LABEL_23:
      v27 = 0;
      memset(v36, 0, sizeof(v36));
      v22 = MEMORY[0x1E69E9C10];
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v4;
      v34 = 2048;
      v35 = v3;
      _os_log_send_and_compose_impl(v23, &v27, v36, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25, v26);
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v19 = *v16;
    v20 = (*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)));
    v17 = v17 + (v19 * sqrtf(vaddv_f32(vmul_f32(v20, v20))));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<re::Vector2<float>>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, float32x2_t *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = (3 * a2);
  v7 = *(a1 + 24);
  if (v7 <= v6)
  {
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v16, &v33, &v42, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v8 = (3 * a2);
  *a3 = *(*(a1 + 40) + 8 * v6);
  v3 = (v8 + 1);
  v7 = *(a1 + 24);
  if (v7 <= v3)
  {
LABEL_12:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v3;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v19, &v33, &v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  __asm { FMOV            V0.2S, #3.0 }

  a3[1] = vmul_f32(vsub_f32(*(*(a1 + 40) + 8 * v3), *(*(a1 + 40) + 8 * v6)), _D0);
  v7 = *(a1 + 24);
  if (v7 <= v6)
  {
LABEL_16:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v37 = 797;
    v38 = 2048;
    v39 = v6;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v22, &v33, &v42, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  if (v7 <= v3)
  {
LABEL_20:
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

    v37 = 797;
    v38 = 2048;
    v39 = v3;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v4 = (v8 + 2);
  if (v7 <= v4)
  {
LABEL_24:
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

    v37 = 797;
    v38 = 2048;
    v39 = v4;
    v40 = 2048;
    v41 = v7;
    _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_28:
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

    v37 = 797;
    v38 = 2048;
    v39 = v7;
    v40 = 2048;
    v41 = v5;
    _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = vmul_f32(vadd_f32(*(*(a1 + 40) + 8 * v4), vsub_f32(*(*(a1 + 40) + 8 * v6), vadd_f32(*(*(a1 + 40) + 8 * v3), *(*(a1 + 40) + 8 * v3)))), _D0);
  v7 = (v8 + 3);
  v5 = *(a1 + 24);
  if (v5 <= v7)
  {
    goto LABEL_28;
  }

  a3[3] = vsub_f32(vadd_f32(*(*(a1 + 40) + 8 * v7), vmul_f32(vsub_f32(*(*(a1 + 40) + 8 * v3), *(*(a1 + 40) + 8 * v4)), _D0)), *(*(a1 + 40) + 8 * v6));
  return 4;
}

float re::BezierSpline<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v11 = *v8;
    v12 = (*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)));
    v9 = v9 + (v11 * sqrtf(vaddv_f32(vmul_f32(v12, v12))));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, float a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a5;
  if (a5 >= a1)
  {
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v10;
    v65 = 2048;
    v66 = a1;
    _os_log_send_and_compose_impl(v36, &v58, &v67, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v6 = a5 + 1;
  if (v6 >= a1)
  {
LABEL_14:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v6;
    v65 = 2048;
    v66 = a1;
    _os_log_send_and_compose_impl(v39, &v58, &v67, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v7 = a5 + 2;
  if (v7 >= a1)
  {
LABEL_18:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v7;
    v65 = 2048;
    v66 = a1;
    _os_log_send_and_compose_impl(v42, &v58, &v67, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = a5 + 3;
  if (v8 >= a1)
  {
LABEL_22:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = a1;
    _os_log_send_and_compose_impl(v44, &v58, &v67, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v11 = a3;
  if (a5 >= a3)
  {
LABEL_26:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v10;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v47, &v58, &v67, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_30;
  }

  if (v6 >= a3)
  {
LABEL_30:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v6;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v50, &v58, &v67, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  if (v7 >= a3)
  {
LABEL_34:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v7;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v53, &v58, &v67, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    v58 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v59 = 136315906;
    v60 = "operator[]";
    v61 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v62 = 797;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = v11;
    _os_log_send_and_compose_impl(v56, &v58, &v67, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v59, 38, v57);
    _os_crash_msg();
    __break(1u);
  }

  if (v8 >= a3)
  {
    goto LABEL_38;
  }

  v12 = *(a2 + 4 * a5);
  v13 = *(a2 + 4 * v6);
  v14 = *(a2 + 4 * v7);
  v15 = *(a2 + 4 * v8);
  v16 = *(a4 + 8 * a5);
  v17 = *(a4 + 8 * v6);
  v18 = *(a4 + 8 * v7);
  v19 = *(a4 + 8 * v8);
  v20 = v15 - a6;
  v21 = v14 - a6;
  v22 = v13 - a6;
  v23 = v12 - a6;
  v24 = 1.0 / (v15 - v14);
  v25 = 1.0 / (v15 - v13);
  v26 = 1.0 / (v14 - v13);
  v27 = 1.0 / (v14 - v12);
  v28 = 1.0 / (v13 - v12);
  v29 = vmul_n_f32(vsub_f32(vmul_n_f32(v16, v22), vmul_n_f32(v17, v23)), v28);
  v30 = vmul_n_f32(vsub_f32(vmul_n_f32(v17, v21), vmul_n_f32(v18, v22)), v26);
  v31 = vmul_n_f32(vsub_f32(vmul_n_f32(v18, v20), vmul_n_f32(v19, v21)), v24);
  v32 = vmul_n_f32(vsub_f32(v17, v16), v28);
  v33 = vmul_n_f32(vsub_f32(v18, v17), v26);
  return vmul_n_f32(vsub_f32(vadd_f32(vsub_f32(vmul_n_f32(vsub_f32(vmul_n_f32(v30, v20), vmul_n_f32(v31, v22)), v25), vmul_n_f32(vsub_f32(vmul_n_f32(v29, v21), vmul_n_f32(v30, v23)), v27)), vmul_n_f32(vmul_n_f32(vsub_f32(vadd_f32(vmul_n_f32(v32, v21), vsub_f32(v30, v29)), vmul_n_f32(v33, v23)), v27), v21)), vmul_n_f32(vmul_n_f32(vsub_f32(vadd_f32(vmul_n_f32(v33, v20), vsub_f32(v31, v30)), vmul_n_f32(vmul_n_f32(vsub_f32(v19, v18), v24), v22)), v25), v22)), v26);
}

float re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 204);
  v5 = *(a1 + 206) + 1;
  v6 = v5 - v4;
  re::DynamicArray<float>::resize(a2, (v5 - v4));
  if (v4 != v5)
  {
    v8 = *(a1 + 208);
    v9 = *(a1 + 204);
    v10 = *(v8 + 16);
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = v10 - v9;
    if (v10 < v9)
    {
      v13 = 0;
    }

    if ((v6 & 0xFFFE) != 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = 1;
    }

    v15 = (32 * v9) | 4;
    v16 = *(a2 + 16);
    do
    {
      if (!v13)
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

        v27 = 797;
        v28 = 2048;
        v29 = v9;
        v30 = 2048;
        v31 = v10;
        _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
        _os_crash_msg();
        __break(1u);
LABEL_16:
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

        v27 = 789;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v11;
        _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
        _os_crash_msg();
        __break(1u);
      }

      if (!v16)
      {
        goto LABEL_16;
      }

      result = *(*(v8 + 32) + v15);
      *v12++ = result;
      --v16;
      --v13;
      ++v9;
      v15 += 32;
      --v14;
    }

    while (v14);
  }

  return result;
}

float re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 208);
  v4 = *(a1 + 204);
  v5 = v4 + (a2 + 1);
  v6 = *(v3 + 16);
  if (v6 <= v5)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = v2;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  v2 = v4 + a2;
  if (v6 <= v2)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 200);
  v8 = vsub_f32(*(*(v3 + 32) + 32 * v5 + 8), *(*(v3 + 32) + 32 * v2 + 8));
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));

  return powf(v9, v7);
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, float a9, unsigned __int16 a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a10 >= a1)
  {
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v31 = 797;
    v32 = 2048;
    v33 = a10;
    v34 = 2048;
    v35 = a1;
    _os_log_send_and_compose_impl(v17, &v27, &v36, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v11 = a3;
  if (a10 >= a3)
  {
LABEL_10:
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v31 = 797;
    v32 = 2048;
    v33 = a10;
    v34 = 2048;
    v35 = v11;
    _os_log_send_and_compose_impl(v20, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v10 = a5;
  if (a10 >= a5)
  {
LABEL_14:
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v12 = MEMORY[0x1E69E9C10];
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

    v31 = 797;
    v32 = 2048;
    v33 = a10;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
LABEL_18:
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

    v31 = 797;
    v32 = 2048;
    v33 = a10;
    v34 = 2048;
    v35 = v12;
    _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
  }

  v12 = a7;
  if (a10 >= a7)
  {
    goto LABEL_18;
  }

  v13 = a9 - *(a2 + 4 * a10);
  return vadd_f32(*(a4 + 8 * a10), vmul_n_f32(vadd_f32(vadd_f32(*(a6 + 8 * a10), *(a6 + 8 * a10)), vmul_n_f32(*(a8 + 8 * a10), v13 * 3.0)), v13));
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_72:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = 0;
    v81 = 2048;
    v82 = 0;
    _os_log_send_and_compose_impl(v48, &v74, &v83, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_76;
  }

  if (!*(a3 + 16))
  {
LABEL_76:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = 0;
    v81 = 2048;
    v82 = 0;
    _os_log_send_and_compose_impl(v51, &v74, &v83, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_80;
  }

  **(a3 + 32) = vdiv_f32(**(a3 + 32), **(a2 + 32));
  if (!*(a2 + 16))
  {
LABEL_80:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = 0;
    v81 = 2048;
    v82 = 0;
    _os_log_send_and_compose_impl(v54, &v74, &v83, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_84;
  }

  if (!*(a4 + 16))
  {
LABEL_84:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = 0;
    v81 = 2048;
    v82 = 0;
    _os_log_send_and_compose_impl(v57, &v74, &v83, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_88;
  }

  v8 = (v7 - 1);
  **(a4 + 32) = vdiv_f32(**(a4 + 32), **(a2 + 32));
  if (v8 >= 2)
  {
    v4 = 1;
    do
    {
      v5 = *(a2 + 16);
      if (v5 <= v4)
      {
        goto LABEL_40;
      }

      v5 = *(a1 + 16);
      if (v5 <= v4)
      {
        goto LABEL_44;
      }

      v5 = v4 - 1;
      v6 = *(a3 + 16);
      if (v6 <= v4 - 1)
      {
        goto LABEL_48;
      }

      if (v6 <= v4)
      {
        goto LABEL_52;
      }

      *(*(a3 + 32) + 8 * v4) = vdiv_f32(*(*(a3 + 32) + 8 * v4), vsub_f32(*(*(a2 + 32) + 8 * v4), vmul_f32(*(*(a1 + 32) + 8 * v4), *(*(a3 + 32) + 8 * v5))));
      v6 = *(a4 + 16);
      if (v6 <= v4)
      {
        goto LABEL_56;
      }

      v6 = *(a1 + 16);
      if (v6 <= v4)
      {
        goto LABEL_60;
      }

      v6 = *(a2 + 16);
      if (v6 <= v4)
      {
        goto LABEL_64;
      }

      v6 = *(a3 + 16);
      if (v6 <= v5)
      {
        goto LABEL_68;
      }

      v9 = *(*(a1 + 32) + 8 * v4);
      *(*(a4 + 32) + 8 * v4) = vdiv_f32(vsub_f32(*(*(a4 + 32) + 8 * v4), vmul_f32(v9, *(*(a4 + 32) + 8 * v5))), vsub_f32(*(*(a2 + 32) + 8 * v4), vmul_f32(v9, *(*(a3 + 32) + 8 * v5))));
    }

    while (++v4 != v8);
  }

  v4 = v8;
  v6 = *(a4 + 16);
  if (v6 <= v8)
  {
LABEL_88:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v60, &v74, &v83, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_92;
  }

  v5 = *(a1 + 16);
  if (v5 <= v8)
  {
LABEL_92:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v63, &v74, &v83, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

  v5 = v7 - 2;
  if (v6 <= v5)
  {
LABEL_96:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v66, &v74, &v83, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  v6 = *(a2 + 16);
  if (v6 <= v8)
  {
LABEL_100:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v69, &v74, &v83, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v72, &v74, &v83, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(a3 + 16);
  if (v6 <= v5)
  {
    goto LABEL_104;
  }

  v10 = *(a4 + 32);
  v11 = *(*(a1 + 32) + 8 * v8);
  result = vdiv_f32(vsub_f32(*(v10 + 8 * v8), vmul_f32(v11, *(v10 + 8 * v5))), vsub_f32(*(*(a2 + 32) + 8 * v8), vmul_f32(v11, *(*(a3 + 32) + 8 * v5))));
  *(v10 + 8 * v8) = result;
  if (v8 >= 1)
  {
    v6 = v7;
    while (1)
    {
      v4 = (v6 - 2);
      v5 = *(a3 + 16);
      if (v5 <= v4)
      {
        break;
      }

      v6 = (v6 - 1);
      v5 = *(a4 + 16);
      if (v5 <= v6)
      {
        goto LABEL_32;
      }

      if (v5 <= v4)
      {
        goto LABEL_36;
      }

      v13 = *(a4 + 32);
      result = vsub_f32(*(v13 + 8 * v4), vmul_f32(*(*(a3 + 32) + 8 * v4), *(v13 + 8 * v6)));
      *(v13 + 8 * v4) = result;
      if (v6 <= 1)
      {
        return result;
      }
    }

    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = (v6 - 2);
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v15, &v74, &v83, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v6;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v18, &v74, &v83, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v21, &v74, &v83, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v24, &v74, &v83, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v27, &v74, &v83, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v30, &v74, &v83, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v33, &v74, &v83, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v36, &v74, &v83, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_60:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v39, &v74, &v83, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_64:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v4;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v42, &v74, &v83, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v78 = 789;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v45, &v74, &v83, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v73);
    _os_crash_msg();
    __break(1u);
    goto LABEL_72;
  }

  return result;
}

float re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(uint64_t a1, float a2, uint64_t a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(a1, a3, a2);
    v6 = *(a1 + 184);
    if (v6 <= SplineIndexForParameter)
    {
      v17 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v21 = 797;
      v22 = 2048;
      v23 = SplineIndexForParameter;
      v24 = 2048;
      v25 = v6;
      _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v7 = *(*(a1 + 200) + 24 * SplineIndexForParameter);
      (*(*v7 + 136))(v7, v3);
      if (!SplineIndexForParameter)
      {
        v9 = 0.0;
        return v8 + v9;
      }

      SplineIndexForParameter = (SplineIndexForParameter - 1);
      v6 = *(a1 + 184);
      if (v6 > SplineIndexForParameter)
      {
        v9 = *(*(a1 + 200) + 24 * SplineIndexForParameter + 16);
        return v8 + v9;
      }
    }

    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = SplineIndexForParameter;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  return v3;
}

uint64_t re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5, float32x4_t a6, float32x4_t a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11.i32[0] = *(a3 + 8);
  v13.i32[0] = *(a3 + 12);
  v12.i32[0] = *(a3 + 16);
  v10.n128_u32[0] = *(a3 + 20);
  v18 = *a3;
  v17 = *(a3 + 4);
  if (*(a1 + 8) != 1)
  {
    a9.n128_u64[0] = vmul_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(0x40000000C0A00000, v10.n128_f32[0]), 0xC0A0000040000000, *v11.i32), 0x41900000C1100000, v13.f32[0]), 0xC110000041900000, v12.f32[0]), vdup_n_s32(0x3E2AAAABu));
    v30 = *(a3 + 24);
    if (*(a1 + 1) <= v30)
    {
      v41 = *(a3 + 8);
      v40 = *(a3 + 20);
      goto LABEL_11;
    }

    v62 = a9;
    v63 = *(a3 + 8);
    v58 = v13;
    v59 = v12;
    v64 = *(a3 + 20);
    v60 = v11;
    v61 = v10;
LABEL_6:
    v31 = (v17 + (v18 * 5.0)) * 0.16667;
    v32 = (v18 + v17) * 0.5;
    v33 = (v18 + (v17 * 5.0)) * 0.16667;
    v34 = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, v31, a2);
    v36 = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, v32, v35);
    v38.n128_f32[0] = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, v33, v37);
    v11.i32[0] = v63;
    v10.n128_f32[0] = v64;
    v40 = v61.n128_f32[0];
    a9.n128_u64[0] = v62.n128_u64[0];
    v41 = *v60.i32;
    if (*a1 > v30)
    {
LABEL_7:
      v67 = v18;
      v68 = (v18 + v17) * 0.5;
      v69 = v63;
      v70 = v34;
      v71 = v58.i32[0];
      v72 = v36;
      v73 = v30 + 1;
      v65[0] = v68;
      v65[1] = v17;
      v65[2] = v36;
      v65[3] = v59.f32[0];
      v65[4] = v38.n128_f32[0];
      v65[5] = v64;
      v66 = v30 + 1;
      re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(a1, a2, &v67, a4, v38, v59, v58, v39, v62, v61);
      return re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(a1, a2, v65, a4, v42, v43, v44, v45, v46, v47);
    }

    v52 = vuzp1q_s32(v60, v62);
    v52.i32[1] = v62.n128_i32[1];
    v52.i32[3] = v61.n128_u32[0];
    v53 = vmulq_f32(v52, xmmword_1E310A1E0);
    v39 = vextq_s8(v53, v53, 8uLL);
    v39.n128_f32[0] = vaddv_f32(vadd_f32(*v53.i8, v39.n128_u64[0]));
    v54 = vmulq_f32(v52, xmmword_1E310A1F0);
    v55 = vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)));
    v56 = vmulq_f32(v52, xmmword_1E310A200);
    v57 = vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)));
    if (*(a1 + 8) == 1)
    {
      if (fabsf(v31) >= 0.00001)
      {
        v39.n128_f32[0] = fabsf((v31 - v39.n128_f32[0]) / v31);
        if (v39.n128_f32[0] > a1[1])
        {
          goto LABEL_7;
        }
      }

      else
      {
        v39.n128_f32[0] = fabsf(v39.n128_f32[0]);
        if (v39.n128_f32[0] >= 0.00001)
        {
          goto LABEL_7;
        }
      }

      v39.n128_f32[0] = fabsf(v32);
      if (v39.n128_f32[0] >= 0.00001)
      {
        v39.n128_f32[0] = a1[1];
        if (fabsf((v32 - v55) / v32) > v39.n128_f32[0])
        {
          goto LABEL_7;
        }
      }

      else if (fabsf(v55) >= 0.00001)
      {
        goto LABEL_7;
      }

      if (fabsf(v33) >= 0.00001)
      {
        if (fabsf((v33 - v57) / v33) > a1[1])
        {
          goto LABEL_7;
        }
      }

      else if (fabsf(v57) >= 0.00001)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    if (fabsf(v34) >= 0.00001)
    {
      v39.n128_f32[0] = fabsf((v34 - v39.n128_f32[0]) / v34);
      if (v39.n128_f32[0] > a1[1])
      {
        goto LABEL_7;
      }
    }

    else
    {
      v39.n128_f32[0] = fabsf(v39.n128_f32[0]);
      if (v39.n128_f32[0] >= 0.00001)
      {
        goto LABEL_7;
      }
    }

    v39.n128_f32[0] = fabsf(v36);
    if (v39.n128_f32[0] >= 0.00001)
    {
      v39.n128_f32[0] = a1[1];
      if (fabsf((v36 - v55) / v36) > v39.n128_f32[0])
      {
        goto LABEL_7;
      }
    }

    else if (fabsf(v55) >= 0.00001)
    {
      goto LABEL_7;
    }

    if (fabsf(v38.n128_f32[0]) >= 0.00001)
    {
      if (fabsf((v38.n128_f32[0] - v57) / v38.n128_f32[0]) > a1[1])
      {
        goto LABEL_7;
      }
    }

    else if (fabsf(v57) >= 0.00001)
    {
      goto LABEL_7;
    }

LABEL_11:
    v49 = a9.n128_f32[1];
    v50 = v18;
    v51 = v17;
    goto LABEL_12;
  }

  v19 = (v13.f32[0] - *v11.i32) / (v10.n128_f32[0] - *v11.i32);
  v20 = (v12.f32[0] - *v11.i32) / (v10.n128_f32[0] - *v11.i32);
  v21 = 1.0 - v19;
  v22 = 1.0 - v20;
  v23 = -(v19 * v19);
  v24.f32[0] = (((v17 + (v18 * 2.0)) * 0.33333) + (-((v21 * v21) * v21) * v18)) + ((v19 * v23) * v17);
  v24.f32[1] = (((v18 + (v17 * 2.0)) * 0.33333) + ((v22 * -(v22 * v22)) * v18)) + (-((v20 * v20) * v20) * v17);
  v25.f32[0] = (v20 * v20) * (1.0 - v20);
  v25.f32[1] = v23 * (1.0 - v19);
  v26.f32[0] = (1.0 - v20) * -(v20 * (1.0 - v20));
  v27 = v19 * (1.0 - v19);
  v26.f32[1] = (1.0 - v19) * v27;
  v28 = vmul_f32(v25, v24);
  v29 = vmul_f32(v26, v24);
  a5.n128_u64[0] = vadd_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
  a9.n128_u64[0] = vmul_n_f32(a5.n128_u64[0], 1.0 / (((v19 * 3.0) * v20) * ((v22 * -(v27 * v22)) + ((v20 * (v21 * v21)) * v22))));
  v30 = *(a3 + 24);
  if (*(a1 + 1) > v30)
  {
    v62 = a9;
    v63 = *(a3 + 8);
    v58 = v13;
    v59 = v12;
    v64 = *(a3 + 20);
    a5.n128_u32[0] = *a3;
    v60 = a5;
    a5.n128_u32[0] = *(a3 + 4);
    v61 = a5;
    goto LABEL_6;
  }

  v41 = *a3;
  v40 = *(a3 + 4);
LABEL_9:
  v49 = a9.n128_f32[1];
  v50 = *v11.i32;
  v51 = v10.n128_f32[0];
LABEL_12:

  return re::internal::FunctionFitter::addSpanToBezierSpline(a4, v50, v51, v41, v49, a9.n128_f32[0], v40);
}

uint64_t re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(uint64_t a1, uint64_t a2, float a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 184);
  if (v3 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) splineCount (%zu) is too large for 16-bit unsigned integer", "!overflow", "findSplineIndexForParameter", 481, v3);
    _os_crash("assertion failure: (!overflow) splineCount (%zu) is too large for 16-bit unsigned integer", v11);
    __break(1u);
  }

  if (v3 < 2 || *(a1 + 352) >= a3)
  {
    return 0;
  }

  v4 = v3 - 1;
  if (*(a1 + 356) > a3)
  {
    v5 = v4 >> 1;
    if (v3 > v5)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 200) + 24 * v5;
        if (*(v7 + 8) <= a3)
        {
          if (*(v7 + 12) > a3)
          {
            return v5;
          }

          v6 = v5 + 1;
        }

        else
        {
          v4 = v5 - 1;
        }

        v5 = (v4 + v6) >> 1;
      }

      while (v3 > v5);
    }

    v14 = 0;
    memset(v23, 0, sizeof(v23));
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

    v18 = 797;
    v19 = 2048;
    v20 = v5;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v9, &v14, v23, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
    return 0;
  }

  return v4;
}

uint64_t re::internal::FunctionFitter::addSpanToBezierSpline(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v17 = (*(*a1 + 40))(a1);
  if (v17 == 0xFFFF)
  {
    re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) spanCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "addSpanToBezierSpline", 120, 0x10000);
    _os_crash("assertion failure: (!overflow) spanCount (%u) is too large for a 16-bit unsigned integer", v37);
    __break(1u);
    goto LABEL_14;
  }

  v19 = (v17 + 1);
  v8 = 3 * (v17 + 1);
  (*(*a1 + 16))(a1, v19);
  if (v8 != 3)
  {
    if (v19 < 0x5556)
    {
      goto LABEL_7;
    }

    re::internal::assertLog(5, v20, "assertion failure: '%s' (%s:line %i) pointIndex (%u) is too large for a 16-bit unsigned integer", "pointIndex + 3 <= std::numeric_limits<uint16_t>::max()", "addSpanToBezierSpline", 130, (v8 - 3));
    _os_crash("assertion failure: (pointIndex + 3 <= std::numeric_limits<uint16_t>::max()) pointIndex (%u) is too large for a 16-bit unsigned integer", v36);
    __break(1u);
  }

  if (!*(a1 + 24))
  {
    goto LABEL_26;
  }

  **(a1 + 40) = a4;
  (*(*a1 + 104))(a1, 0, a2);
LABEL_7:
  v9 = (v8 - 2);
  v7 = *(a1 + 24);
  if (v7 <= v9)
  {
LABEL_14:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v44 = 789;
    v45 = 2048;
    v46 = v9;
    v47 = 2048;
    v48 = v7;
    _os_log_send_and_compose_impl(v26, &v40, &v49, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(a1 + 40);
  *(v22 + 4 * v9) = a5;
  v9 = (v8 - 1);
  if (v7 <= v9)
  {
LABEL_18:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v27 = MEMORY[0x1E69E9C10];
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

    v44 = 789;
    v45 = 2048;
    v46 = v9;
    v47 = 2048;
    v48 = v7;
    _os_log_send_and_compose_impl(v29, &v40, &v49, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  *(v22 + 4 * v9) = a6;
  v8 = v8;
  if (v7 <= v8)
  {
LABEL_22:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v44 = 789;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v7;
    _os_log_send_and_compose_impl(v32, &v40, &v49, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v40 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v41 = 136315906;
    v42 = "operator[]";
    v43 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v44 = 789;
    v45 = 2048;
    v46 = 0;
    v47 = 2048;
    v48 = 0;
    _os_log_send_and_compose_impl(v35, &v40, &v49, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v38, v39);
    _os_crash_msg();
    __break(1u);
  }

  *(v22 + 4 * v8) = a7;
  v23 = *(*a1 + 104);
  v21.n128_f32[0] = a3;

  return v23(a1, v19, v21);
}

void std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int *,unsigned int *>(uint64_t a1, char *__src, char *a3, _BYTE *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 - v8 >= 24)
  {
    v15 = v8 - __src;
    v16 = (v8 - __src) >> 2;
    if (v16 > 5)
    {
      v24 = __src + 24;
      v25 = v8 - 24;
      v26 = *(a1 + 8);
      while (v25 < v8)
      {
        v27 = *v25;
        v25 += 4;
        *v26++ = v27;
      }

      *(a1 + 8) = v26;
      if (v8 != v24)
      {
        memmove(__src + 24, __src, v8 - v24);
      }

      v28 = *a3;
      *(__src + 2) = *(a3 + 2);
      *__src = v28;
    }

    else
    {
      v18 = a4 - &a3[v15];
      if (a4 != &a3[v15])
      {
        memmove(*(a1 + 8), &a3[v15], a4 - &a3[v15]);
      }

      v19 = &v8[v18];
      *(a1 + 8) = &v8[v18];
      if (v16 >= 1)
      {
        v20 = __src + 24;
        v21 = &v8[v18];
        if (v19 - 24 < v8)
        {
          v22 = &a4[__src];
          v23 = &a4[__src - 24];
          do
          {
            *(v22 - a3) = *(v23 - a3);
            v23 += 4;
            v22 += 4;
          }

          while (v23 - a3 < v8);
          v21 = (v22 - a3);
        }

        *(a1 + 8) = v21;
        if (v19 != v20)
        {
          memmove(__src + 24, __src, v19 - v20);
        }

        if (v8 != __src)
        {

          memmove(__src, a3, v8 - __src);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = (&v8[-*a1] >> 2) + 6;
    if (v10 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = __src - v9;
    v12 = v7 - v9;
    v13 = v12 >> 1;
    if (v12 >> 1 <= v10)
    {
      v13 = (&v8[-*a1] >> 2) + 6;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v14);
    }

    v29 = 0;
    v30 = 4 * (v11 >> 2);
    do
    {
      *(v30 + v29) = *&a3[v29];
      v29 += 4;
    }

    while (v29 != 24);
    memcpy((v30 + 24), __src, *(a1 + 8) - __src);
    v31 = *a1;
    v32 = v30 + 24 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v33 = (__src - v31);
    v34 = (v30 - (__src - v31));
    memcpy(v34, v31, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = v32;
    *(a1 + 16) = 0;
    if (v35)
    {

      operator delete(v35);
    }
  }
}

void std::vector<re::Vector3<float>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::Vector3<float>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::Vector3<float>*>,std::__wrap_iter<re::Vector3<float>*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v6;
      v6 += 16;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = &v10[-16 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 16;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[v20];
    if (&v21[-16 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -16 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

uint64_t *std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 8);
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::pathprocessing::subdivideBezierOnSelfIntersection(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v92 = 0;
  v93 = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
  if (v10 != *a1)
  {
    if (v11 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(__p, v11, 0, &v92);
    v12 = __p[1] - (v93.n128_u64[0] - v92);
    memcpy(v12, v92, v93.n128_u64[0] - v92);
    v13 = v92;
    v14 = v93.n128_u64[1];
    v92 = v12;
    a5 = v90;
    v93 = v90;
    v90.n128_u64[0] = v13;
    v90.n128_u64[1] = v14;
    __p[0] = v13;
    __p[1] = v13;
    if (v13)
    {
      operator delete(v13);
    }

    v9 = *a1;
    v10 = a1[1];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
  }

  if (v10 != v9)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = (v9 + v15);
      __p[0] = v16;
      v18 = *v17;
      v19 = v17[1];
      v20 = vmul_f32(v19, 0);
      v21 = v17[2];
      v22 = vmul_f32(v21, 0);
      __p[1] = vadd_f32(vadd_f32(*v17, v20), v22);
      v90.n128_u64[0] = vadd_f32(vadd_f32(v19, v22), vmul_f32(__p[1], 0));
      *&v90.n128_i8[8] = vadd_f32(v21, vadd_f32(vmul_f32(v18, 0), v20));
      *(v91.n128_u64 + 4) = 0x3F80000000000000;
      v23 = vsub_f32(__p[1], v90.n128_u64[0]);
      v24 = vmul_f32(v23, v23);
      v24.i32[0] = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v25 = vrsqrte_f32(v24.u32[0]);
      v26 = vmul_f32(v25, vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)));
      v27 = vmul_n_f32(v23, vmul_f32(v26, vrsqrts_f32(v24.u32[0], vmul_f32(v26, v26))).f32[0]);
      v28 = vsub_f32(*&v90.n128_i8[8], v90.n128_u64[0]);
      v29 = vmul_f32(v28, v28);
      v29.i32[0] = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0];
      v30 = vrsqrte_f32(v29.u32[0]);
      v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)));
      v91.n128_f32[0] = (vaddv_f32(vmul_f32(v27, vmul_n_f32(v28, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]))) * 0.5) + 0.5;
      std::vector<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier>>::push_back[abi:nn200100](&v92, __p);
      ++v16;
      v9 = *a1;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      v15 += 24;
    }

    while (v16 < v11);
  }

  v81 = a2;
  v82 = a3;
  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v86 = 0;
  v87 = 0;
  v88 = 0;
  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  v33 = v92;
  for (i = v93.n128_u64[0]; v33 != v93.n128_u64[0]; i = v93.n128_u64[0])
  {
    std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(v33, i, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((i - v33) >> 4)), 1, a5);
    v33 = v92;
    v34 = (v93.n128_u64[0] - 48);
    v35 = *(v93.n128_u64[0] - 32);
    a5 = *(v93.n128_u64[0] - 16);
    *__p = *(v93.n128_u64[0] - 48);
    v90 = v35;
    v91 = a5;
    if ((v93.n128_u64[0] - 48) != v92)
    {
      v36 = (v93.n128_u64[0] - 48);
      v37 = (v93.n128_u64[0] - 48);
      while (1)
      {
        v38 = *(v37 - 6);
        v37 -= 48;
        if (__p[0] != v38 && re::pathprocessing::Bezier2::enclosingTriangleOverlaps(&__p[1], v36 - 5))
        {
          break;
        }

        v34 -= 48;
        v36 = v37;
        if (v37 == v33)
        {
          v34 = v33;
          break;
        }
      }

      v33 = v92;
    }

    if (v33 != v34)
    {
      v39 = *(v34 - 3);
      v40 = *(v34 - 1);
      v83[1] = *(v34 - 2);
      v83[2] = v40;
      *(&v83[0] + 1) = *(&v39 + 1);
      re::pathprocessing::Bezier2::removeOverlaps(&__p[1], (v83 + 8), &v86, v84);
    }

    v93.n128_u64[0] -= 48;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  std::vector<re::pathprocessing::Bezier2>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (a1[1] != *a1)
  {
    v41 = 0;
    do
    {
      std::__sort<std::__less<float,float> &,float *>();
      v43 = *(24 * v41);
      v42 = *(24 * v41 + 8);
      if (v43 != v42)
      {
        v44 = v43 + 1;
        while (v44 != v42)
        {
          v45 = *(v44 - 1);
          v46 = *v44++;
          if (v45 == v46)
          {
            v47 = v44 - 2;
            while (v44 != v42)
            {
              v48 = *v44;
              if (v45 != *v44)
              {
                v47[1] = v48;
                ++v47;
                v45 = v48;
              }

              ++v44;
            }

            if (v47 + 1 != v42)
            {
              v42 = v47 + 1;
              *(24 * v41 + 8) = v47 + 1;
            }

            break;
          }
        }
      }

      if (v42 != v43)
      {
        if (fabsf(*v43) < 0.0001)
        {
          v49 = v42 - (v43 + 1);
          if (v42 != v43 + 1)
          {
            memmove(v43, v43 + 1, v42 - (v43 + 1));
          }

          v42 = (v43 + v49);
          *(24 * v41 + 8) = v43 + v49;
        }

        v51 = *(v42 - 1);
        v50 = v42 - 1;
        v52 = v51;
        if (v51 == 1.0 || fabsf(v52 + -1.0) <= 0.0001)
        {
          *(24 * v41 + 8) = v50;
        }
      }

      re::pathprocessing::Bezier2::split((*a1 + 24 * v41), (24 * v41), __p);
      v53 = __p[0];
      v54 = __p[1] - __p[0];
      if (__p[1] - __p[0] >= 1)
      {
        v56 = *(a4 + 8);
        v55 = *(a4 + 16);
        if (v55 - v56 >= v54)
        {
          if (__p[0] != __p[1])
          {
            memmove(*(a4 + 8), __p[0], __p[1] - __p[0]);
          }

          *(a4 + 8) = &v56[v54];
        }

        else
        {
          v57 = 0xAAAAAAAAAAAAAAABLL * (&v56[-*a4] >> 3) - 0x5555555555555555 * (v54 >> 3);
          if (v57 > 0xAAAAAAAAAAAAAAALL)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *a4) >> 3);
          if (2 * v58 > v57)
          {
            v57 = 2 * v58;
          }

          if (v58 >= 0x555555555555555)
          {
            v59 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v59 = v57;
          }

          if (v59)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a4, v59);
          }

          v60 = 8 * (&v56[-*a4] >> 3);
          v61 = (v60 + v54);
          v62 = v60;
          do
          {
            v63 = *v53;
            *(v62 + 16) = v53[2];
            *v62 = v63;
            v62 += 24;
            v53 += 3;
            v54 -= 24;
          }

          while (v54);
          memcpy(v61, v56, *(a4 + 8) - v56);
          v64 = *a4;
          v65 = &v61[*(a4 + 8) - v56];
          *(a4 + 8) = v56;
          v66 = v56 - v64;
          v67 = (v60 - (v56 - v64));
          memcpy(v67, v64, v66);
          v68 = *a4;
          *a4 = v67;
          *(a4 + 8) = v65;
          *(a4 + 16) = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v41;
    }

    while (v41 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  if (v81)
  {
    v70 = *v81;
    v69 = v81[1];
    v71 = (v69 - *v81) >> 3;
    std::vector<unsigned long>::resize(v82, v71);
    if (v69 != v70)
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = *v81;
      v76 = (v81[1] - *v81) >> 3;
      if (v71 <= 1)
      {
        v77 = 1;
      }

      else
      {
        v77 = v71;
      }

      do
      {
        if (v72 == v76)
        {
          goto LABEL_82;
        }

        v78 = *(v75 + 8 * v72);
        v79 = v78 - v73;
        if (v78 > v73)
        {
          v80 = (24 * v73 + 8);
          do
          {
            v74 += ((*v80 - *(v80 - 1)) >> 2) + 1;
            v80 += 3;
            --v79;
          }

          while (v79);
        }

        if (v72 >= (v82[1] - *v82) >> 3)
        {
LABEL_82:
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(*v82 + 8 * v72++) = v74;
        v73 = v78;
      }

      while (v72 != v77);
    }
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v92)
  {
    v93.n128_u64[0] = v92;
    operator delete(v92);
  }
}

void std::vector<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier>>::push_back[abi:nn200100](char **a1, _OWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(&v22, v12, v9, a1);
    v13 = v24;
    v15 = a2[1];
    v14 = a2[2];
    *v24 = *a2;
    *(v13 + 16) = v15;
    *(v13 + 32) = v14;
    *&v24 = v13 + 48;
    v16 = a1[1] - *a1;
    v17 = &v23[-v16];
    memcpy(&v23[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    v19 = a1[2];
    v20 = v24;
    *(a1 + 1) = v24;
    *&v24 = v18;
    *(&v24 + 1) = v19;
    v22 = v18;
    v23 = v18;
    if (v18)
    {
      v21 = v20;
      operator delete(v18);
      v20 = v21;
    }

    v8 = v20;
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v5 + 1) = a2[1];
    *(v5 + 2) = v7;
    *v5 = v6;
    v8 = v5 + 48;
  }

  a1[1] = v8;
}

void re::pathprocessing::getBezierIslands(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v19, 0, sizeof(v19));
  re::pathprocessing::IndexedMesh::flatten(a1, &v20, &v19);
  re::pathprocessing::PathTopologyGenerator::getLoops(&v20, &v19, a2, v16);
  if (v16[0])
  {
    v6 = v17;
    if (v17 == *(&v17 + 1))
    {
LABEL_6:
      v8 = v18[0];
      v17 = 0uLL;
      v18[0] = 0;
      *a3 = 1;
      *(a3 + 8) = v6;
      *(a3 + 24) = v8;
      v13 = 0;
      v12 = 0uLL;
      v23 = &v12;
      std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v23);
    }

    else
    {
      v7 = v17;
      while (*v7 != v7[1])
      {
        v7 += 6;
        if (v7 == *(&v17 + 1))
        {
          goto LABEL_6;
        }
      }

      v9 = v12;
      v10 = v13;
      v11 = v14;
      *a3 = 0;
      *(a3 + 8) = 4;
      *(a3 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
      *(a3 + 24) = v9;
      *(a3 + 40) = v10;
      *(a3 + 48) = v11;
    }
  }

  else
  {
    v12 = v17;
    re::DynamicString::DynamicString(&v13, v18);
    *a3 = 0;
    *(a3 + 8) = v12;
    *(a3 + 24) = v13;
    *(a3 + 48) = v15;
    *(a3 + 32) = v14;
  }

  re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(v16);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

uint64_t *std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *a1 = 0;
  a1[1] = 48 * a3;
  a1[2] = 48 * a3;
  a1[3] = 0;
  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 4);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[0];
        if (result.n128_f32[0] < *(v12 + 32))
        {
          *v251 = *(v12 + 16);
          *&v251[16] = *(v12 + 32);
          v217 = *v12;
          v118 = a2[-3];
          v119 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v118;
          *(v12 + 16) = v119;
          result = v217;
          *(a2 - 20) = *&v251[12];
          a2[-3] = v217;
          a2[-2] = *v251;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v124 = *(v12 + 80);
      v125 = *(v12 + 128);
      if (v124 >= *(v12 + 32))
      {
        if (v125 < v124)
        {
          v174 = *(v12 + 48);
          *v258 = *(v12 + 64);
          *&v258[16] = *(v12 + 80);
          v175 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v175;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v174;
          *(v12 + 112) = *v258;
          result = *&v258[12];
          *(v12 + 124) = *&v258[12];
          if (*(v12 + 80) < *(v12 + 32))
          {
            *v259 = *(v12 + 16);
            *&v259[16] = *(v12 + 32);
            v223 = *v12;
            v176 = *(v12 + 64);
            *v12 = *(v12 + 48);
            *(v12 + 16) = v176;
            *(v12 + 28) = *(v12 + 76);
            *(v12 + 48) = v223;
            *(v12 + 64) = *v259;
            result = *&v259[12];
            *(v12 + 76) = *&v259[12];
          }
        }
      }

      else
      {
        if (v125 < v124)
        {
          *v253 = *(v12 + 16);
          *&v253[16] = *(v12 + 32);
          v219 = *v12;
          v126 = *(v12 + 112);
          *v12 = *(v12 + 96);
          *(v12 + 16) = v126;
          *(v12 + 28) = *(v12 + 124);
          *(v12 + 96) = v219;
          *(v12 + 112) = *v253;
          goto LABEL_184;
        }

        *v262 = *(v12 + 16);
        *&v262[16] = *(v12 + 32);
        v226 = *v12;
        v184 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v184;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v226;
        *(v12 + 64) = *v262;
        *(v12 + 76) = *&v262[12];
        if (v125 < *(v12 + 80))
        {
          v185 = *(v12 + 48);
          *v253 = *(v12 + 64);
          *&v253[16] = *(v12 + 80);
          v186 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v186;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v185;
          *(v12 + 112) = *v253;
LABEL_184:
          result = *&v253[12];
          *(v12 + 124) = *&v253[12];
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[0];
      if (result.n128_f32[0] >= *(v12 + 128))
      {
        return result;
      }

      *v263 = *(v12 + 112);
      *&v263[16] = *(v12 + 128);
      result = *(v12 + 96);
      v188 = *v9;
      v187 = a2[-2];
      *(v12 + 124) = *(a2 - 20);
      *(v12 + 96) = v188;
      *(v12 + 112) = v187;
      *(a2 - 20) = *&v263[12];
      *v9 = result;
      a2[-2] = *v263;
      result.n128_u32[0] = *(v12 + 128);
      if (result.n128_f32[0] >= *(v12 + 80))
      {
        return result;
      }

      v189 = *(v12 + 48);
      *v264 = *(v12 + 64);
      *&v264[16] = *(v12 + 80);
      v190 = *(v12 + 112);
      *(v12 + 48) = *(v12 + 96);
      *(v12 + 64) = v190;
      *(v12 + 76) = *(v12 + 124);
      *(v12 + 96) = v189;
      *(v12 + 112) = *v264;
      result = *&v264[12];
      *(v12 + 124) = *&v264[12];
LABEL_188:
      result.n128_u32[0] = *(v12 + 80);
      if (result.n128_f32[0] < *(v12 + 32))
      {
        *v265 = *(v12 + 16);
        *&v265[16] = *(v12 + 32);
        v227 = *v12;
        v191 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v191;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v227;
        *(v12 + 64) = *v265;
        result = *&v265[12];
        *(v12 + 76) = *&v265[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,0>(v12, (v12 + 48), (v12 + 96), (v12 + 144), &a2[-3]).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 1151)
    {
      v127 = (v12 + 48);
      v129 = v12 == a2 || v127 == a2;
      if (a4)
      {
        if (!v129)
        {
          v130 = 0;
          v131 = v12;
          do
          {
            v132 = v127;
            result.n128_u32[0] = *(v131 + 80);
            if (result.n128_f32[0] < *(v131 + 32))
            {
              v220 = *v127;
              v254 = v127[1];
              v133 = *(v131 + 84);
              v134 = v130;
              while (1)
              {
                v135 = (v12 + v134);
                v136 = *(v12 + v134 + 16);
                v135[3] = *(v12 + v134);
                v135[4] = v136;
                *(v135 + 76) = *(v12 + v134 + 28);
                if (!v134)
                {
                  break;
                }

                v134 -= 48;
                if (result.n128_f32[0] >= *(v135 - 4))
                {
                  v137 = v12 + v134 + 48;
                  goto LABEL_130;
                }
              }

              v137 = v12;
LABEL_130:
              *v137 = v220;
              *(v137 + 16) = v254;
              *(v137 + 32) = result.n128_u32[0];
              *(v137 + 36) = v133;
            }

            v127 = v132 + 3;
            v130 += 48;
            v131 = v132;
          }

          while (&v132[3] != a2);
        }
      }

      else if (!v129)
      {
        do
        {
          v177 = v127;
          result.n128_u32[0] = *(a1 + 80);
          if (result.n128_f32[0] < *(a1 + 32))
          {
            v224 = *v127;
            v260 = v127[1];
            v178 = *(a1 + 84);
            do
            {
              v179 = v127[-2];
              *v127 = v127[-3];
              v127[1] = v179;
              *(v127 + 28) = *(v127 - 20);
              v180 = v127[-4].n128_f32[0];
              v127 -= 3;
            }

            while (result.n128_f32[0] < v180);
            *v127 = v224;
            v127[1] = v260;
            v127[2].n128_u32[0] = result.n128_u32[0];
            *(v127[2].n128_u64 + 4) = v178;
          }

          v127 = v177 + 3;
          a1 = v177;
        }

        while (&v177[3] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v138 = (v14 - 2) >> 1;
        v139 = v138;
        do
        {
          v140 = v139;
          if (v138 >= v139)
          {
            v141 = (2 * v139) | 1;
            v142 = v12 + 48 * v141;
            if (2 * v140 + 2 < v14 && *(v142 + 32) < *(v142 + 80))
            {
              v142 += 48;
              v141 = 2 * v140 + 2;
            }

            v143 = v12 + 48 * v140;
            v144 = *(v143 + 32);
            if (*(v142 + 32) >= v144)
            {
              v221 = *v143;
              v255 = *(v143 + 16);
              v145 = *(v143 + 36);
              do
              {
                v146 = v143;
                v143 = v142;
                v147 = *v142;
                v148 = *(v142 + 16);
                *(v146 + 28) = *(v142 + 28);
                *v146 = v147;
                v146[1] = v148;
                if (v138 < v141)
                {
                  break;
                }

                v149 = 2 * v141;
                v141 = (2 * v141) | 1;
                v142 = v12 + 48 * v141;
                v150 = v149 + 2;
                if (v150 < v14 && *(v142 + 32) < *(v142 + 80))
                {
                  v142 += 48;
                  v141 = v150;
                }
              }

              while (*(v142 + 32) >= v144);
              *v143 = v221;
              *(v143 + 16) = v255;
              *(v143 + 32) = v144;
              *(v143 + 36) = v145;
            }
          }

          v139 = v140 - 1;
        }

        while (v140);
        v151 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        do
        {
          v152 = 0;
          *v256 = *(v12 + 16);
          *&v256[16] = *(v12 + 32);
          v222 = *v12;
          v153 = v12;
          do
          {
            v154 = &v153[3 * v152];
            v155 = (v154 + 12);
            v156 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v151)
            {
              v152 = v156;
            }

            else
            {
              v157 = v154[20];
              v158 = v154[32];
              v159 = (v154 + 24);
              if (v157 >= v158)
              {
                v152 = v156;
              }

              else
              {
                v155 = v159;
              }
            }

            v160 = *v155;
            v161 = v155[1];
            *(v153 + 28) = *(&v155[1] + 12);
            *v153 = v160;
            v153[1] = v161;
            v153 = v155;
          }

          while (v152 <= ((v151 - 2) >> 1));
          a2 -= 3;
          if (v155 == a2)
          {
            result = v222;
            *(v155 + 28) = *&v256[12];
            *v155 = v222;
            v155[1] = *v256;
          }

          else
          {
            v162 = *a2;
            v163 = a2[1];
            *(v155 + 28) = *(a2 + 28);
            *v155 = v162;
            v155[1] = v163;
            result = v222;
            *(a2 + 28) = *&v256[12];
            *a2 = v222;
            a2[1] = *v256;
            v164 = &v155[3] - v12;
            if (v164 >= 49)
            {
              v165 = (-2 - 0x5555555555555555 * (v164 >> 4)) >> 1;
              v166 = v12 + 48 * v165;
              result.n128_u32[0] = v155[2].n128_u32[0];
              if (*(v166 + 32) < result.n128_f32[0])
              {
                v194 = *v155;
                v197 = v155[1];
                v167 = *(v155[2].n128_u64 + 4);
                do
                {
                  v168 = v155;
                  v155 = v166;
                  v169 = *v166;
                  v170 = *(v166 + 16);
                  *(v168 + 28) = *(v166 + 28);
                  *v168 = v169;
                  v168[1] = v170;
                  if (!v165)
                  {
                    break;
                  }

                  v165 = (v165 - 1) >> 1;
                  v166 = v12 + 48 * v165;
                }

                while (*(v166 + 32) < result.n128_f32[0]);
                *v155 = v194;
                v155[1] = v197;
                v155[2].n128_u32[0] = result.n128_u32[0];
                *(v155[2].n128_u64 + 4) = v167;
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 48 * (v14 >> 1);
    v17 = a2[-1].n128_f32[0];
    if (v13 >= 0x1801)
    {
      v18 = *(v16 + 32);
      if (v18 >= *(v12 + 32))
      {
        if (v17 < v18)
        {
          *v230 = *(v16 + 16);
          *&v230[16] = *(v16 + 32);
          v200 = *v16;
          v24 = *v9;
          v25 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 20) = *&v230[12];
          *v9 = v200;
          a2[-2] = *v230;
          if (*(v16 + 32) < *(v12 + 32))
          {
            *v231 = *(v12 + 16);
            *&v231[16] = *(v12 + 32);
            v201 = *v12;
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 28) = *(v16 + 28);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 28) = *&v231[12];
            *v16 = v201;
            *(v16 + 16) = *v231;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          *v228 = *(v12 + 16);
          *&v228[16] = *(v12 + 32);
          v198 = *v12;
          v19 = *v9;
          v20 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        *v234 = *(v12 + 16);
        *&v234[16] = *(v12 + 32);
        v204 = *v12;
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 28) = *(v16 + 28);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 28) = *&v234[12];
        *v16 = v204;
        *(v16 + 16) = *v234;
        if (a2[-1].n128_f32[0] < *(v16 + 32))
        {
          *v228 = *(v16 + 16);
          *&v228[16] = *(v16 + 32);
          v198 = *v16;
          v34 = *v9;
          v35 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 20) = *&v228[12];
          *v9 = v198;
          a2[-2] = *v228;
        }
      }

      v36 = v12 + 48 * v15;
      v37 = (v36 - 48);
      v38 = *(v36 - 16);
      v39 = a2[-4].n128_f32[0];
      if (v38 >= *(v12 + 80))
      {
        if (v39 < v38)
        {
          *v236 = *(v36 - 32);
          *&v236[16] = *(v36 - 16);
          v205 = *v37;
          v44 = *v10;
          v45 = a2[-5];
          *(v36 - 20) = *(a2 - 68);
          *v37 = v44;
          *(v36 - 32) = v45;
          *(a2 - 68) = *&v236[12];
          *v10 = v205;
          a2[-5] = *v236;
          if (*(v36 - 16) < *(v12 + 80))
          {
            *v237 = *(v12 + 64);
            *&v237[16] = *(v12 + 80);
            v46 = *(v12 + 48);
            v48 = *v37;
            v47 = *(v36 - 32);
            *(v12 + 76) = *(v36 - 20);
            *(v12 + 48) = v48;
            *(v12 + 64) = v47;
            *(v36 - 20) = *&v237[12];
            *v37 = v46;
            *(v36 - 32) = *v237;
          }
        }
      }

      else
      {
        if (v39 < v38)
        {
          v40 = *(v12 + 64);
          *&v235[12] = v40.n128_u32[3];
          *&v235[16] = *(v12 + 80);
          v41 = *(v12 + 48);
          v43 = *v10;
          v42 = a2[-5];
          *(v12 + 76) = *(a2 - 68);
          *(v12 + 48) = v43;
          *(v12 + 64) = v42;
          goto LABEL_38;
        }

        *v239 = *(v12 + 64);
        *&v239[16] = *(v12 + 80);
        v53 = *(v12 + 48);
        v55 = *v37;
        v54 = *(v36 - 32);
        *(v12 + 76) = *(v36 - 20);
        *(v12 + 48) = v55;
        *(v12 + 64) = v54;
        *(v36 - 20) = *&v239[12];
        *v37 = v53;
        *(v36 - 32) = *v239;
        if (a2[-4].n128_f32[0] < *(v36 - 16))
        {
          *v235 = *(v36 - 32);
          *&v235[16] = *(v36 - 16);
          v207 = *v37;
          v56 = *v10;
          v57 = a2[-5];
          *(v36 - 20) = *(a2 - 68);
          *v37 = v56;
          *(v36 - 32) = v57;
          v41 = v207;
          v40 = *v235;
LABEL_38:
          *(a2 - 68) = *&v235[12];
          *v10 = v41;
          a2[-5] = v40;
        }
      }

      v58 = v12 + 48 * v15;
      v59 = (v58 + 48);
      v60 = *(v58 + 80);
      v61 = a2[-7].n128_f32[0];
      if (v60 >= *(v12 + 128))
      {
        if (v61 < v60)
        {
          *v241 = *(v58 + 64);
          *&v241[16] = *(v58 + 80);
          v208 = *v59;
          v66 = *v11;
          v67 = a2[-8];
          *(v58 + 76) = *(a2 - 116);
          *v59 = v66;
          *(v58 + 64) = v67;
          *(a2 - 116) = *&v241[12];
          *v11 = v208;
          a2[-8] = *v241;
          if (*(v58 + 80) < *(v12 + 128))
          {
            *v242 = *(v12 + 112);
            *&v242[16] = *(v12 + 128);
            v68 = *(v12 + 96);
            v70 = *v59;
            v69 = *(v58 + 64);
            *(v12 + 124) = *(v58 + 76);
            *(v12 + 96) = v70;
            *(v12 + 112) = v69;
            *(v58 + 76) = *&v242[12];
            *v59 = v68;
            *(v58 + 64) = *v242;
          }
        }
      }

      else
      {
        if (v61 < v60)
        {
          v62 = *(v12 + 112);
          *&v240[12] = v62.n128_u32[3];
          *&v240[16] = *(v12 + 128);
          v63 = *(v12 + 96);
          v65 = *v11;
          v64 = a2[-8];
          *(v12 + 124) = *(a2 - 116);
          *(v12 + 96) = v65;
          *(v12 + 112) = v64;
          goto LABEL_47;
        }

        *v243 = *(v12 + 112);
        *&v243[16] = *(v12 + 128);
        v71 = *(v12 + 96);
        v73 = *v59;
        v72 = *(v58 + 64);
        *(v12 + 124) = *(v58 + 76);
        *(v12 + 96) = v73;
        *(v12 + 112) = v72;
        *(v58 + 76) = *&v243[12];
        *v59 = v71;
        *(v58 + 64) = *v243;
        if (a2[-7].n128_f32[0] < *(v58 + 80))
        {
          *v240 = *(v58 + 64);
          *&v240[16] = *(v58 + 80);
          v209 = *v59;
          v74 = *v11;
          v75 = a2[-8];
          *(v58 + 76) = *(a2 - 116);
          *v59 = v74;
          *(v58 + 64) = v75;
          v63 = v209;
          v62 = *v240;
LABEL_47:
          *(a2 - 116) = *&v240[12];
          *v11 = v63;
          a2[-8] = v62;
        }
      }

      v76 = *(v16 + 32);
      v77 = *(v58 + 80);
      if (v76 >= v37[2].n128_f32[0])
      {
        if (v77 < v76)
        {
          *v245 = *(v16 + 16);
          *&v245[16] = *(v16 + 32);
          v211 = *v16;
          v79 = *(v58 + 64);
          *v16 = *v59;
          *(v16 + 16) = v79;
          *(v16 + 28) = *(v58 + 76);
          *(v58 + 76) = *&v245[12];
          *v59 = v211;
          *(v58 + 64) = *v245;
          if (*(v16 + 32) < v37[2].n128_f32[0])
          {
            *v246 = v37[1];
            *&v246[16] = v37[2];
            v212 = *v37;
            v80 = *(v16 + 16);
            *v37 = *v16;
            v37[1] = v80;
            *(v37 + 28) = *(v16 + 28);
            *(v16 + 28) = *&v246[12];
            *v16 = v212;
            *(v16 + 16) = *v246;
          }
        }
      }

      else
      {
        if (v77 < v76)
        {
          *v244 = v37[1];
          *&v244[16] = v37[2];
          v210 = *v37;
          v78 = *(v58 + 64);
          *v37 = *v59;
          v37[1] = v78;
          *(v37 + 28) = *(v58 + 76);
          goto LABEL_56;
        }

        *v247 = v37[1];
        *&v247[16] = v37[2];
        v213 = *v37;
        v81 = *(v16 + 16);
        *v37 = *v16;
        v37[1] = v81;
        *(v37 + 28) = *(v16 + 28);
        *(v16 + 28) = *&v247[12];
        *v16 = v213;
        *(v16 + 16) = *v247;
        if (*(v58 + 80) < *(v16 + 32))
        {
          *v244 = *(v16 + 16);
          *&v244[16] = *(v16 + 32);
          v210 = *v16;
          v82 = *(v58 + 64);
          *v16 = *v59;
          *(v16 + 16) = v82;
          *(v16 + 28) = *(v58 + 76);
LABEL_56:
          *(v58 + 76) = *&v244[12];
          *v59 = v210;
          *(v58 + 64) = *v244;
        }
      }

      *v248 = *(v12 + 16);
      *&v248[16] = *(v12 + 32);
      v214 = *v12;
      v83 = *v16;
      v84 = *(v16 + 16);
      *(v12 + 28) = *(v16 + 28);
      *v12 = v83;
      *(v12 + 16) = v84;
      result = v214;
      *(v16 + 28) = *&v248[12];
      *v16 = v214;
      *(v16 + 16) = *v248;
      goto LABEL_58;
    }

    v21 = *(v12 + 32);
    if (v21 >= *(v16 + 32))
    {
      if (v17 < v21)
      {
        *v232 = *(v12 + 16);
        *&v232[16] = *(v12 + 32);
        v202 = *v12;
        v28 = *v9;
        v29 = a2[-2];
        *(v12 + 28) = *(a2 - 20);
        *v12 = v28;
        *(v12 + 16) = v29;
        result = v202;
        *(a2 - 20) = *&v232[12];
        *v9 = v202;
        a2[-2] = *v232;
        if (*(v12 + 32) < *(v16 + 32))
        {
          *v233 = *(v16 + 16);
          *&v233[16] = *(v16 + 32);
          v203 = *v16;
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 28) = *(v12 + 28);
          *v16 = v30;
          *(v16 + 16) = v31;
          result = v203;
          *(v12 + 28) = *&v233[12];
          *v12 = v203;
          *(v12 + 16) = *v233;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v21)
    {
      *v229 = *(v16 + 16);
      *&v229[16] = *(v16 + 32);
      v199 = *v16;
      v22 = *v9;
      v23 = a2[-2];
      *(v16 + 28) = *(a2 - 20);
      *v16 = v22;
      *(v16 + 16) = v23;
LABEL_35:
      result = v199;
      *(a2 - 20) = *&v229[12];
      *v9 = v199;
      a2[-2] = *v229;
      goto LABEL_58;
    }

    *v238 = *(v16 + 16);
    *&v238[16] = *(v16 + 32);
    v206 = *v16;
    v49 = *v12;
    v50 = *(v12 + 16);
    *(v16 + 28) = *(v12 + 28);
    *v16 = v49;
    *(v16 + 16) = v50;
    result = v206;
    *(v12 + 28) = *&v238[12];
    *v12 = v206;
    *(v12 + 16) = *v238;
    if (a2[-1].n128_f32[0] < *(v12 + 32))
    {
      *v229 = *(v12 + 16);
      *&v229[16] = *(v12 + 32);
      v199 = *v12;
      v51 = *v9;
      v52 = a2[-2];
      *(v12 + 28) = *(a2 - 20);
      *v12 = v51;
      *(v12 + 16) = v52;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 32);
LABEL_61:
      v85 = 0;
      v192 = *v12;
      v195 = *(v12 + 16);
      v86 = *(v12 + 36);
      do
      {
        v87 = *(v12 + v85 + 80);
        v85 += 48;
      }

      while (v87 < result.n128_f32[0]);
      v88 = v12 + v85;
      v89 = a2;
      if (v85 == 48)
      {
        v92 = a2;
        while (v88 < v92)
        {
          v90 = v92 - 3;
          v93 = v92[-1].n128_f32[0];
          v92 -= 3;
          if (v93 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v90 = v92;
      }

      else
      {
        do
        {
          v90 = v89 - 3;
          v91 = v89[-1].n128_f32[0];
          v89 -= 3;
        }

        while (v91 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v88;
      if (v88 < v90)
      {
        v94 = v90;
        do
        {
          *v249 = *(v12 + 16);
          *&v249[16] = *(v12 + 32);
          v215 = *v12;
          v95 = *v94;
          v96 = v94[1];
          *(v12 + 28) = *(v94 + 28);
          *v12 = v95;
          *(v12 + 16) = v96;
          *(v94 + 28) = *&v249[12];
          *v94 = v215;
          v94[1] = *v249;
          do
          {
            v97 = *(v12 + 80);
            v12 += 48;
          }

          while (v97 < result.n128_f32[0]);
          do
          {
            v98 = *(v94 - 4);
            v94 -= 3;
          }

          while (v98 >= result.n128_f32[0]);
        }

        while (v12 < v94);
      }

      v99 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v100 = *v99;
        v101 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v100;
        *(a1 + 16) = v101;
      }

      *v99 = v192;
      *(v12 - 32) = v195;
      *(v12 - 16) = result.n128_u32[0];
      *(v12 - 12) = v86;
      if (v88 < v90)
      {
        goto LABEL_82;
      }

      v102 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *>(a1, (v12 - 48));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *>(v12, a2))
      {
        a2 = (v12 - 48);
        if (!v102)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v102)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(a1, (v12 - 48), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 32);
      if (*(v12 - 16) < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v193 = *v12;
      v196 = *(v12 + 16);
      if (result.n128_f32[0] >= a2[-1].n128_f32[0])
      {
        v105 = v12 + 48;
        do
        {
          v12 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v106 = *(v105 + 32);
          v105 += 48;
        }

        while (result.n128_f32[0] >= v106);
      }

      else
      {
        v103 = v12;
        do
        {
          v12 = v103 + 48;
          v104 = *(v103 + 80);
          v103 += 48;
        }

        while (result.n128_f32[0] >= v104);
      }

      v107 = a2;
      if (v12 < a2)
      {
        v108 = a2;
        do
        {
          v107 = v108 - 3;
          v109 = v108[-1].n128_f32[0];
          v108 -= 3;
        }

        while (result.n128_f32[0] < v109);
      }

      v110 = *(a1 + 36);
      while (v12 < v107)
      {
        *v250 = *(v12 + 16);
        *&v250[16] = *(v12 + 32);
        v216 = *v12;
        v111 = *v107;
        v112 = v107[1];
        *(v12 + 28) = *(v107 + 28);
        *v12 = v111;
        *(v12 + 16) = v112;
        *(v107 + 28) = *&v250[12];
        *v107 = v216;
        v107[1] = *v250;
        do
        {
          v113 = *(v12 + 80);
          v12 += 48;
        }

        while (result.n128_f32[0] >= v113);
        do
        {
          v114 = v107[-1].n128_f32[0];
          v107 -= 3;
        }

        while (result.n128_f32[0] < v114);
      }

      v115 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v116 = *v115;
        v117 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v116;
        *(a1 + 16) = v117;
      }

      a4 = 0;
      *v115 = v193;
      *(v12 - 32) = v196;
      *(v12 - 16) = result.n128_u32[0];
      *(v12 - 12) = v110;
    }
  }

  result.n128_u32[0] = *(v12 + 80);
  v120 = a2[-1].n128_f32[0];
  if (result.n128_f32[0] >= *(v12 + 32))
  {
    if (v120 >= result.n128_f32[0])
    {
      return result;
    }

    *v257 = *(v12 + 64);
    *&v257[16] = *(v12 + 80);
    result = *(v12 + 48);
    v173 = *v9;
    v172 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v173;
    *(v12 + 64) = v172;
    *(a2 - 20) = *&v257[12];
    *v9 = result;
    a2[-2] = *v257;
    goto LABEL_188;
  }

  if (v120 >= result.n128_f32[0])
  {
    *v261 = *(v12 + 16);
    *&v261[16] = *(v12 + 32);
    v225 = *v12;
    v181 = *(v12 + 64);
    *v12 = *(v12 + 48);
    *(v12 + 16) = v181;
    *(v12 + 28) = *(v12 + 76);
    *(v12 + 48) = v225;
    *(v12 + 64) = *v261;
    result = *&v261[12];
    *(v12 + 76) = *&v261[12];
    result.n128_u32[0] = a2[-1].n128_u32[0];
    if (result.n128_f32[0] >= *(v12 + 80))
    {
      return result;
    }

    v123 = *(v12 + 64);
    *&v252[12] = v123.n128_u32[3];
    *&v252[16] = *(v12 + 80);
    result = *(v12 + 48);
    v183 = *v9;
    v182 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v183;
    *(v12 + 64) = v182;
  }

  else
  {
    *v252 = *(v12 + 16);
    *&v252[16] = *(v12 + 32);
    v218 = *v12;
    v121 = *v9;
    v122 = a2[-2];
    *(v12 + 28) = *(a2 - 20);
    *v12 = v121;
    *(v12 + 16) = v122;
    result = v218;
    v123 = *v252;
  }

  *(a2 - 20) = *&v252[12];
  *v9 = result;
  a2[-2] = v123;
  return result;
}