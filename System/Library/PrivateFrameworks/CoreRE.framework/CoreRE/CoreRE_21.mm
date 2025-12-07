uint64_t re::EvaluationModelSingleThread::setupEvaluationModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0;
  v24 = 0;
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  re::EvaluationTree::resolveAliasRegisters(a3, a2, a4, &v27, &v24, &v12, &v9, v8);
  (*(*a1 + 24))(a1);
  re::EvaluationModelSingleThread::init(a5);
  if (v9 && v10)
  {
    (*(*v9 + 40))();
  }

  if (*(&v22 + 1))
  {
    if (v23)
    {
      (*(**(&v22 + 1) + 40))();
      v23 = 0uLL;
    }

    *(&v22 + 1) = 0;
  }

  if (v21)
  {
    if (*(&v21 + 1))
    {
      (*(*v21 + 40))();
      *(&v21 + 1) = 0;
      *&v22 = 0;
    }

    *&v21 = 0;
  }

  if (*(&v19 + 1))
  {
    if (v20)
    {
      (*(**(&v19 + 1) + 40))();
      v20 = 0uLL;
    }

    *(&v19 + 1) = 0;
  }

  if (v18)
  {
    if (*(&v18 + 1))
    {
      (*(*v18 + 40))();
      *(&v18 + 1) = 0;
      *&v19 = 0;
    }

    *&v18 = 0;
  }

  if (*(&v16 + 1))
  {
    if (v17)
    {
      (*(**(&v16 + 1) + 40))();
      v17 = 0uLL;
    }

    *(&v16 + 1) = 0;
  }

  if (v15)
  {
    if (*(&v15 + 1))
    {
      (*(*v15 + 40))();
      *(&v15 + 1) = 0;
      *&v16 = 0;
    }

    *&v15 = 0;
  }

  if (*(&v13 + 1))
  {
    if (v14)
    {
      (*(**(&v13 + 1) + 40))();
      v14 = 0uLL;
    }

    *(&v13 + 1) = 0;
  }

  if (v12 && *(&v12 + 1))
  {
    (*(*v12 + 40))();
  }

  if (v24 && v25)
  {
    (*(*v24 + 40))();
  }

  if (*(&v37 + 1))
  {
    if (v38)
    {
      (*(**(&v37 + 1) + 40))(*(&v37 + 1), *(&v38 + 1));
      v38 = 0uLL;
    }

    *(&v37 + 1) = 0;
  }

  if (v36)
  {
    if (*(&v36 + 1))
    {
      (*(*v36 + 40))();
      *(&v36 + 1) = 0;
      *&v37 = 0;
    }

    *&v36 = 0;
  }

  if (*(&v34 + 1))
  {
    if (v35)
    {
      (*(**(&v34 + 1) + 40))();
      v35 = 0uLL;
    }

    *(&v34 + 1) = 0;
  }

  if (v33)
  {
    if (*(&v33 + 1))
    {
      (*(*v33 + 40))();
      *(&v33 + 1) = 0;
      *&v34 = 0;
    }

    *&v33 = 0;
  }

  if (*(&v31 + 1))
  {
    if (v32)
    {
      (*(**(&v31 + 1) + 40))();
      v32 = 0uLL;
    }

    *(&v31 + 1) = 0;
  }

  if (v30)
  {
    if (*(&v30 + 1))
    {
      (*(*v30 + 40))();
      *(&v30 + 1) = 0;
      *&v31 = 0;
    }

    *&v30 = 0;
  }

  if (*(&v28 + 1))
  {
    if (v29)
    {
      (*(**(&v28 + 1) + 40))();
      v29 = 0uLL;
    }

    *(&v28 + 1) = 0;
  }

  result = v27;
  if (v27)
  {
    if (*(&v27 + 1))
    {
      return (*(*v27 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::EvaluationCommand>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 4, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          result = (*(*result + 32))(result, 4 * a2, 4);
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
            memcpy(v7, v5[4], 4 * v5[2]);
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
        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::finishRegisterProcessing(char *result, unsigned int a2, unint64_t a3, char a4)
{
  v4 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v5 = result + 16;
  v6 = &result[24 * a2 + 16];
  v7 = *(v6 + 8);
  if (v7 <= a3)
  {
LABEL_14:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
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

    v30 = 468;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v7;
    _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_18:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v30 = 476;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v7;
    _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
  }

  v8 = result;
  *(*(v6 + 16) + (a3 << 6) + 40) = a4;
  v9 = &result[24 * a2];
  v7 = *(v9 + 57);
  if (v7 <= a3)
  {
    goto LABEL_18;
  }

  v10 = (*(v9 + 58) + 16 * a3);
  v7 = v10[1];
  if (v7)
  {
    for (i = (*v10 + 8); ; i += 2)
    {
      v12 = *(i - 8);
      v13 = &v5[24 * *(i - 8)];
      v4 = *i;
      v14 = *(v13 + 1);
      if (v14 <= *i)
      {
        break;
      }

      v15 = *(v13 + 2) + (v4 << 6);
      v16 = *(v15 + 32) - 1;
      *(v15 + 32) = v16;
      if (!v16)
      {
      }

      if (!--v7)
      {
        return result;
      }
    }

    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 468;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v14;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

char *re::anonymous namespace::RegisterMapping::processRegister<int>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v210 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  if (v5 <= a2)
  {
    goto LABEL_117;
  }

  v6 = this;
  v7 = *(this + 4);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v186) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[5];
      v14 = v10[3];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[5];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[5];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[43];
        if (v5 <= v39)
        {
LABEL_185:
          v201[0] = 0;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v187 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v202 = 136315906;
          v203 = "operator[]";
          v204 = 1024;
          if (v171)
          {
            v172 = 3;
          }

          else
          {
            v172 = 2;
          }

          v205 = 797;
          v206 = 2048;
          v207 = v39;
          v208 = 2048;
          v209 = v5;
          _os_log_send_and_compose_impl(v172, v201, &v187, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
          _os_crash_msg();
          __break(1u);
          goto LABEL_189;
        }

        LODWORD(v186) = *(v10[45] + 4 * v39);
      }
    }

    v5 = v10[83];
    while (v5 > v12)
    {
      v11 = *(v10[85] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    v205 = 797;
    v206 = 2048;
    v207 = v12;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v89, v201, &v187, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v4;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v92, v201, &v187, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = v69;
    v95 = v70;
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v94;
    v208 = 2048;
    v209 = v95;
    _os_log_send_and_compose_impl(v97, v201, &v187, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v98 = MEMORY[0x1E69E9C10];
    v99 = v73;
    v100 = v74;
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v99;
    v208 = 2048;
    v209 = v100;
    _os_log_send_and_compose_impl(v102, v201, &v187, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = v53;
    v105 = v54;
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v104;
    v208 = 2048;
    v209 = v105;
    _os_log_send_and_compose_impl(v107, v201, &v187, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = v57;
    v110 = v58;
    v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v111)
    {
      v112 = 3;
    }

    else
    {
      v112 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v109;
    v208 = 2048;
    v209 = v110;
    _os_log_send_and_compose_impl(v112, v201, &v187, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v113 = MEMORY[0x1E69E9C10];
    v114 = v61;
    v115 = v62;
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v114;
    v208 = 2048;
    v209 = v115;
    _os_log_send_and_compose_impl(v117, v201, &v187, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = v65;
    v120 = v66;
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v119;
    v208 = 2048;
    v209 = v120;
    _os_log_send_and_compose_impl(v122, v201, &v187, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = v49;
    v125 = v50;
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v124;
    v208 = 2048;
    v209 = v125;
    _os_log_send_and_compose_impl(v127, v201, &v187, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = v43;
    v130 = v44;
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v129;
    v208 = 2048;
    v209 = v130;
    _os_log_send_and_compose_impl(v132, v201, &v187, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = v28;
    v135 = v38;
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v134;
    v208 = 2048;
    v209 = v135;
    _os_log_send_and_compose_impl(v137, &v186, &v187, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = v34;
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v139;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v141, &v186, &v187, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = v28;
    v144 = v37;
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v143;
    v208 = 2048;
    v209 = v144;
    _os_log_send_and_compose_impl(v146, &v186, &v187, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = v28;
    v149 = v32;
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v148;
    v208 = 2048;
    v209 = v149;
    _os_log_send_and_compose_impl(v151, &v186, &v187, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = v28;
    v154 = v29;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v153;
    v208 = 2048;
    v209 = v154;
    _os_log_send_and_compose_impl(v156, &v186, &v187, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = v28;
    v159 = v33;
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v158;
    v208 = 2048;
    v209 = v159;
    _os_log_send_and_compose_impl(v161, &v186, &v187, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v162 = MEMORY[0x1E69E9C10];
    v163 = v28;
    v164 = v36;
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v163;
    v208 = 2048;
    v209 = v164;
    _os_log_send_and_compose_impl(v166, &v186, &v187, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = v28;
    v39 = v31;
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v168;
    v208 = 2048;
    v209 = v39;
    _os_log_send_and_compose_impl(v170, &v186, &v187, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v201, 0, sizeof(v201));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v202 = 0;
    v201[v3] = *(v8 + 6);
    v81 = *(v6 + 481);
    *&v187 = *(v6 + 483);
    *(&v187 + 1) = v81;
    v82 = *(v6 + 486);
    *&v188 = *(v6 + 488);
    *(&v188 + 1) = v82;
    v83 = *(v6 + 491);
    *&v189 = *(v6 + 493);
    *(&v189 + 1) = v83;
    v84 = *(v6 + 496);
    *&v190 = *(v6 + 498);
    *(&v190 + 1) = v84;
    v85 = *(v6 + 501);
    *&v191 = *(v6 + 503);
    *(&v191 + 1) = v85;
    v86 = *(v6 + 506);
    v192 = *(v6 + 508);
    v193 = v86;
    v87 = *(v6 + 511);
    v194 = *(v6 + 513);
    v195 = v87;
    v88 = *(v6 + 516);
    v196 = *(v6 + 518);
    v197 = v88;
    v199 = 0;
    v200 = 0;
    v198 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] > 1u)
    {
      if (v27 == 2)
      {
        v28 = *&v26[2 * v24];
        v36 = *(this + 9);
        if (v36 <= v28)
        {
          goto LABEL_177;
        }

        v30 = *(this + 10);
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_202;
        }

        v28 = *&v26[2 * v24];
        v32 = *(this + 12);
        if (v32 <= v28)
        {
          goto LABEL_165;
        }

        v30 = *(this + 13);
      }

      goto LABEL_49;
    }

    if (v25[v24])
    {
      v28 = *&v26[2 * v24];
      v31 = *(this + 6);
      if (v31 <= v28)
      {
        goto LABEL_181;
      }

      v30 = *(this + 7);
      goto LABEL_49;
    }

    v34 = *&v26[2 * v24];
    if (v5 <= v34)
    {
      goto LABEL_157;
    }

    v35 = v7 + (v34 << 6);
LABEL_50:
    if (!v35 || *(v35 + 40) != 3)
    {
      goto LABEL_110;
    }

    v201[v24++] = *(v35 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_153;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_202;
      }

      v28 = *&v26[2 * v24];
      v33 = *(this + 18);
      if (v33 <= v28)
      {
        goto LABEL_173;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_161;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_169;
    }

    v30 = *(this + 25);
LABEL_49:
    v35 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_202;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_197;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_193:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v176 = MEMORY[0x1E69E9C10];
    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v177)
    {
      v178 = 3;
    }

    else
    {
      v178 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v5;
    v208 = 2048;
    v209 = v3;
    _os_log_send_and_compose_impl(v178, v201, &v187, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v179 = MEMORY[0x1E69E9C10];
    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v180)
    {
      v181 = 3;
    }

    else
    {
      v181 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v5;
    v208 = 2048;
    v209 = v3;
    _os_log_send_and_compose_impl(v181, v201, &v187, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v40 = (v8 + 2);
  while (2)
  {
    v42 = *v5++;
    v41 = v42;
    if (v42 > 3)
    {
      if (v41 <= 5)
      {
        if (v41 == 4)
        {
          v65 = *v40;
          v66 = *(v6 + 15);
          if (v66 <= *v40)
          {
            goto LABEL_141;
          }

          v67 = *(v6 + 16) + (v65 << 6);
          v68 = *(v67 + 56);
          v47 = (v67 + 56);
          v46 = v68;
          if (v68 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 523);
          *(v6 + 523) = v46 + 1;
        }

        else
        {
          if (v41 != 5)
          {
            goto LABEL_201;
          }

          v49 = *v40;
          v50 = *(v6 + 18);
          if (v50 <= *v40)
          {
            goto LABEL_145;
          }

          v51 = *(v6 + 19) + (v49 << 6);
          v52 = *(v51 + 56);
          v47 = (v51 + 56);
          v46 = v52;
          if (v52 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 524);
          *(v6 + 524) = v46 + 1;
        }

        goto LABEL_101;
      }

      if (v41 == 6)
      {
        v73 = *v40;
        v74 = *(v6 + 21);
        if (v74 <= *v40)
        {
          goto LABEL_125;
        }

        v75 = *(v6 + 22) + (v73 << 6);
        v76 = *(v75 + 56);
        v47 = (v75 + 56);
        v46 = v76;
        if (v76 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 525);
        *(v6 + 525) = v46 + 1;
        goto LABEL_101;
      }

      if (v41 == 7)
      {
        v57 = *v40;
        v58 = *(v6 + 24);
        if (v58 <= *v40)
        {
          goto LABEL_133;
        }

        v59 = *(v6 + 25) + (v57 << 6);
        v60 = *(v59 + 56);
        v47 = (v59 + 56);
        v46 = v60;
        if (v60 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 526);
        *(v6 + 526) = v46 + 1;
        goto LABEL_101;
      }

LABEL_201:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v41);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v182);
      __break(1u);
LABEL_202:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v183);
      __break(1u);
      return this;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v69 = *v40;
        v70 = *(v6 + 9);
        if (v70 <= *v40)
        {
          goto LABEL_121;
        }

        v71 = *(v6 + 10) + (v69 << 6);
        v72 = *(v71 + 56);
        v47 = (v71 + 56);
        v46 = v72;
        if (v72 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 521);
        *(v6 + 521) = v46 + 1;
      }

      else
      {
        if (v41 != 3)
        {
          goto LABEL_201;
        }

        v53 = *v40;
        v54 = *(v6 + 12);
        if (v54 <= *v40)
        {
          goto LABEL_129;
        }

        v55 = *(v6 + 13) + (v53 << 6);
        v56 = *(v55 + 56);
        v47 = (v55 + 56);
        v46 = v56;
        if (v56 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 522);
        *(v6 + 522) = v46 + 1;
      }

LABEL_101:
      *v47 = v46;
      goto LABEL_102;
    }

    if (!v41)
    {
      v61 = *v40;
      v62 = *(v6 + 3);
      if (v62 <= *v40)
      {
        goto LABEL_137;
      }

      v63 = *(v6 + 4) + (v61 << 6);
      v64 = *(v63 + 56);
      v47 = (v63 + 56);
      v46 = v64;
      if (v64 != -1)
      {
        goto LABEL_102;
      }

      v46 = *(v6 + 519);
      *(v6 + 519) = v46 + 1;
      goto LABEL_101;
    }

    if (v41 != 1)
    {
      goto LABEL_201;
    }

    v43 = *v40;
    v44 = *(v6 + 6);
    if (v44 <= *v40)
    {
      goto LABEL_149;
    }

    v45 = *(v6 + 7) + (v43 << 6);
    v48 = *(v45 + 56);
    v47 = (v45 + 56);
    v46 = v48;
    if (v48 == -1)
    {
      v46 = *(v6 + 520);
      *(v6 + 520) = v46 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v187 = v46;
    re::DynamicArray<unsigned long>::add(a3, &v187);
    ++v40;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 3);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_189:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v173 = MEMORY[0x1E69E9C10];
    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v174)
    {
      v175 = 3;
    }

    else
    {
      v175 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v4;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v175, v201, &v187, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v77 = *(v6 + 4) + (v4 << 6);
  v80 = *(v77 + 56);
  v79 = (v77 + 56);
  v78 = v80;
  if (v80 == -1)
  {
    v78 = *(v6 + 519);
    *(v6 + 519) = v78 + 1;
    *v79 = v78;
  }

  *&v187 = v78;
  re::DynamicArray<unsigned long>::add(a3, &v187);
}

char *re::anonymous namespace::RegisterMapping::processRegister<unsigned int>(char *this, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v209 = *MEMORY[0x1E69E9840];
  v5 = *(this + 6);
  if (v5 <= a2)
  {
    goto LABEL_117;
  }

  v6 = this;
  v7 = *(this + 7);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v185) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[10];
      v14 = v10[8];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[10];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[10];
      }

      if (v16 != v15 && *v16 == v11)
      {
        a3 = (v16 - v13) >> 3;
        v5 = v10[48];
        if (v5 <= a3)
        {
LABEL_185:
          v200[0] = 0;
          v189 = 0u;
          v190 = 0u;
          v187 = 0u;
          v188 = 0u;
          v186 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v201 = 136315906;
          v202 = "operator[]";
          v203 = 1024;
          if (v170)
          {
            v171 = 3;
          }

          else
          {
            v171 = 2;
          }

          v204 = 797;
          v205 = 2048;
          v206 = a3;
          v207 = 2048;
          v208 = v5;
          _os_log_send_and_compose_impl(v171, v200, &v186, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
          _os_crash_msg();
          __break(1u);
          goto LABEL_189;
        }

        LODWORD(v185) = *(v10[50] + 4 * a3);
      }
    }

    v5 = v10[88];
    while (v5 > v12)
    {
      v11 = *(v10[90] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v204 = 797;
    v205 = 2048;
    v206 = v12;
    v207 = 2048;
    v208 = v5;
    _os_log_send_and_compose_impl(v88, v200, &v186, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v4;
    v207 = 2048;
    v208 = v5;
    _os_log_send_and_compose_impl(v91, v200, &v186, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v92 = MEMORY[0x1E69E9C10];
    v93 = v68;
    v94 = v69;
    v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v95)
    {
      v96 = 3;
    }

    else
    {
      v96 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v93;
    v207 = 2048;
    v208 = v94;
    _os_log_send_and_compose_impl(v96, v200, &v186, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v97 = MEMORY[0x1E69E9C10];
    v98 = v72;
    v99 = v73;
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v98;
    v207 = 2048;
    v208 = v99;
    _os_log_send_and_compose_impl(v101, v200, &v186, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v102 = MEMORY[0x1E69E9C10];
    v103 = v52;
    v104 = v53;
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v103;
    v207 = 2048;
    v208 = v104;
    _os_log_send_and_compose_impl(v106, v200, &v186, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v107 = MEMORY[0x1E69E9C10];
    v108 = v56;
    v109 = v57;
    v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v110)
    {
      v111 = 3;
    }

    else
    {
      v111 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v108;
    v207 = 2048;
    v208 = v109;
    _os_log_send_and_compose_impl(v111, v200, &v186, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v112 = MEMORY[0x1E69E9C10];
    v113 = v60;
    v114 = v61;
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v113;
    v207 = 2048;
    v208 = v114;
    _os_log_send_and_compose_impl(v116, v200, &v186, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = v64;
    v119 = v65;
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v118;
    v207 = 2048;
    v208 = v119;
    _os_log_send_and_compose_impl(v121, v200, &v186, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v122 = MEMORY[0x1E69E9C10];
    v123 = v48;
    v124 = v49;
    v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v125)
    {
      v126 = 3;
    }

    else
    {
      v126 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v123;
    v207 = 2048;
    v208 = v124;
    _os_log_send_and_compose_impl(v126, v200, &v186, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v127 = MEMORY[0x1E69E9C10];
    v128 = v42;
    v129 = v43;
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v128;
    v207 = 2048;
    v208 = v129;
    _os_log_send_and_compose_impl(v131, v200, &v186, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = v28;
    v134 = v38;
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v133;
    v207 = 2048;
    v208 = v134;
    _os_log_send_and_compose_impl(v136, &v185, &v186, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = v28;
    v139 = v35;
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v138;
    v207 = 2048;
    v208 = v139;
    _os_log_send_and_compose_impl(v141, &v185, &v186, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = v28;
    v144 = v37;
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v143;
    v207 = 2048;
    v208 = v144;
    _os_log_send_and_compose_impl(v146, &v185, &v186, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = v28;
    v149 = v33;
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v148;
    v207 = 2048;
    v208 = v149;
    _os_log_send_and_compose_impl(v151, &v185, &v186, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = v28;
    v154 = v29;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v153;
    v207 = 2048;
    v208 = v154;
    _os_log_send_and_compose_impl(v156, &v185, &v186, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = v28;
    v159 = v34;
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v158;
    v207 = 2048;
    v208 = v159;
    _os_log_send_and_compose_impl(v161, &v185, &v186, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v162 = MEMORY[0x1E69E9C10];
    v163 = v28;
    a3 = v36;
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v163;
    v207 = 2048;
    v208 = a3;
    _os_log_send_and_compose_impl(v165, &v185, &v186, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v185 = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v166 = MEMORY[0x1E69E9C10];
    v167 = v31;
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v167;
    v207 = 2048;
    v208 = v5;
    _os_log_send_and_compose_impl(v169, &v185, &v186, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v200, 0, sizeof(v200));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v201 = 0;
    v200[v3] = *(v8 + 6);
    v80 = *(v6 + 481);
    *&v186 = *(v6 + 483);
    *(&v186 + 1) = v80;
    v81 = *(v6 + 486);
    *&v187 = *(v6 + 488);
    *(&v187 + 1) = v81;
    v82 = *(v6 + 491);
    *&v188 = *(v6 + 493);
    *(&v188 + 1) = v82;
    v83 = *(v6 + 496);
    *&v189 = *(v6 + 498);
    *(&v189 + 1) = v83;
    v84 = *(v6 + 501);
    *&v190 = *(v6 + 503);
    *(&v190 + 1) = v84;
    v85 = *(v6 + 506);
    v191 = *(v6 + 508);
    v192 = v85;
    v86 = *(v6 + 511);
    v193 = *(v6 + 513);
    v194 = v86;
    v87 = *(v6 + 516);
    v195 = *(v6 + 518);
    v196 = v87;
    v198 = 0;
    v199 = 0;
    v197 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] > 1u)
    {
      if (v27 == 2)
      {
        v28 = *&v26[2 * v24];
        v36 = *(this + 9);
        if (v36 <= v28)
        {
          goto LABEL_177;
        }

        v30 = *(this + 10);
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_202;
        }

        v28 = *&v26[2 * v24];
        v33 = *(this + 12);
        if (v33 <= v28)
        {
          goto LABEL_165;
        }

        v30 = *(this + 13);
      }

      goto LABEL_49;
    }

    if (!v25[v24])
    {
      v28 = *&v26[2 * v24];
      v35 = *(this + 3);
      if (v35 <= v28)
      {
        goto LABEL_157;
      }

      v30 = *(this + 4);
      goto LABEL_49;
    }

    v31 = *&v26[2 * v24];
    if (v5 <= v31)
    {
      goto LABEL_181;
    }

    v32 = v7 + (v31 << 6);
LABEL_50:
    if (!v32 || *(v32 + 40) != 3)
    {
      goto LABEL_110;
    }

    v200[v24++] = *(v32 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_153;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_202;
      }

      v28 = *&v26[2 * v24];
      v34 = *(this + 18);
      if (v34 <= v28)
      {
        goto LABEL_173;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_161;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_169;
    }

    v30 = *(this + 25);
LABEL_49:
    v32 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_202;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_197;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_193:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v175 = MEMORY[0x1E69E9C10];
    v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v176)
    {
      v177 = 3;
    }

    else
    {
      v177 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v5;
    v207 = 2048;
    v208 = v3;
    _os_log_send_and_compose_impl(v177, v200, &v186, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v178 = MEMORY[0x1E69E9C10];
    v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v179)
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v5;
    v207 = 2048;
    v208 = v3;
    _os_log_send_and_compose_impl(v180, v200, &v186, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v39 = (v8 + 2);
  while (2)
  {
    v41 = *v5++;
    v40 = v41;
    if (v41 > 3)
    {
      if (v40 <= 5)
      {
        if (v40 == 4)
        {
          v64 = *v39;
          v65 = *(v6 + 15);
          if (v65 <= *v39)
          {
            goto LABEL_141;
          }

          v66 = *(v6 + 16) + (v64 << 6);
          v67 = *(v66 + 56);
          v46 = (v66 + 56);
          v45 = v67;
          if (v67 != -1)
          {
            goto LABEL_102;
          }

          v45 = *(v6 + 523);
          *(v6 + 523) = v45 + 1;
        }

        else
        {
          if (v40 != 5)
          {
            goto LABEL_201;
          }

          v48 = *v39;
          v49 = *(v6 + 18);
          if (v49 <= *v39)
          {
            goto LABEL_145;
          }

          v50 = *(v6 + 19) + (v48 << 6);
          v51 = *(v50 + 56);
          v46 = (v50 + 56);
          v45 = v51;
          if (v51 != -1)
          {
            goto LABEL_102;
          }

          v45 = *(v6 + 524);
          *(v6 + 524) = v45 + 1;
        }

        goto LABEL_101;
      }

      if (v40 == 6)
      {
        v72 = *v39;
        v73 = *(v6 + 21);
        if (v73 <= *v39)
        {
          goto LABEL_125;
        }

        v74 = *(v6 + 22) + (v72 << 6);
        v75 = *(v74 + 56);
        v46 = (v74 + 56);
        v45 = v75;
        if (v75 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 525);
        *(v6 + 525) = v45 + 1;
        goto LABEL_101;
      }

      if (v40 == 7)
      {
        v56 = *v39;
        v57 = *(v6 + 24);
        if (v57 <= *v39)
        {
          goto LABEL_133;
        }

        v58 = *(v6 + 25) + (v56 << 6);
        v59 = *(v58 + 56);
        v46 = (v58 + 56);
        v45 = v59;
        if (v59 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 526);
        *(v6 + 526) = v45 + 1;
        goto LABEL_101;
      }

LABEL_201:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v40);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v181);
      __break(1u);
LABEL_202:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v182);
      __break(1u);
      return this;
    }

    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v68 = *v39;
        v69 = *(v6 + 9);
        if (v69 <= *v39)
        {
          goto LABEL_121;
        }

        v70 = *(v6 + 10) + (v68 << 6);
        v71 = *(v70 + 56);
        v46 = (v70 + 56);
        v45 = v71;
        if (v71 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 521);
        *(v6 + 521) = v45 + 1;
      }

      else
      {
        if (v40 != 3)
        {
          goto LABEL_201;
        }

        v52 = *v39;
        v53 = *(v6 + 12);
        if (v53 <= *v39)
        {
          goto LABEL_129;
        }

        v54 = *(v6 + 13) + (v52 << 6);
        v55 = *(v54 + 56);
        v46 = (v54 + 56);
        v45 = v55;
        if (v55 != -1)
        {
          goto LABEL_102;
        }

        v45 = *(v6 + 522);
        *(v6 + 522) = v45 + 1;
      }

LABEL_101:
      *v46 = v45;
      goto LABEL_102;
    }

    if (!v40)
    {
      v60 = *v39;
      v61 = *(v6 + 3);
      if (v61 <= *v39)
      {
        goto LABEL_137;
      }

      v62 = *(v6 + 4) + (v60 << 6);
      v63 = *(v62 + 56);
      v46 = (v62 + 56);
      v45 = v63;
      if (v63 != -1)
      {
        goto LABEL_102;
      }

      v45 = *(v6 + 519);
      *(v6 + 519) = v45 + 1;
      goto LABEL_101;
    }

    if (v40 != 1)
    {
      goto LABEL_201;
    }

    v42 = *v39;
    v43 = *(v6 + 6);
    if (v43 <= *v39)
    {
      goto LABEL_149;
    }

    v44 = *(v6 + 7) + (v42 << 6);
    v47 = *(v44 + 56);
    v46 = (v44 + 56);
    v45 = v47;
    if (v47 == -1)
    {
      v45 = *(v6 + 520);
      *(v6 + 520) = v45 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v186 = v45;
    re::DynamicArray<unsigned long>::add(a3, &v186);
    ++v39;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 6);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_189:
    v200[0] = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v186 = 0u;
    v172 = MEMORY[0x1E69E9C10];
    v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v201 = 136315906;
    v202 = "operator[]";
    v203 = 1024;
    if (v173)
    {
      v174 = 3;
    }

    else
    {
      v174 = 2;
    }

    v204 = 468;
    v205 = 2048;
    v206 = v4;
    v207 = 2048;
    v208 = v5;
    _os_log_send_and_compose_impl(v174, v200, &v186, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v201, 38, v183, v184);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v76 = *(v6 + 7) + (v4 << 6);
  v79 = *(v76 + 56);
  v78 = (v76 + 56);
  v77 = v79;
  if (v79 == -1)
  {
    v77 = *(v6 + 520);
    *(v6 + 520) = v77 + 1;
    *v78 = v77;
  }

  *&v186 = v77;
  re::DynamicArray<unsigned long>::add(a3, &v186);
}

char *re::anonymous namespace::RegisterMapping::processRegister<float>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v210 = *MEMORY[0x1E69E9840];
  v5 = *(this + 9);
  if (v5 <= a2)
  {
    goto LABEL_117;
  }

  v6 = this;
  v7 = *(this + 10);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    LODWORD(v186) = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[15];
      v14 = v10[13];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[15];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[15];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[53];
        if (v5 <= v39)
        {
LABEL_185:
          v201[0] = 0;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v187 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v202 = 136315906;
          v203 = "operator[]";
          v204 = 1024;
          if (v171)
          {
            v172 = 3;
          }

          else
          {
            v172 = 2;
          }

          v205 = 797;
          v206 = 2048;
          v207 = v39;
          v208 = 2048;
          v209 = v5;
          _os_log_send_and_compose_impl(v172, v201, &v187, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
          _os_crash_msg();
          __break(1u);
          goto LABEL_189;
        }

        LODWORD(v186) = *(v10[55] + 4 * v39);
      }
    }

    v5 = v10[93];
    while (v5 > v12)
    {
      v11 = *(v10[95] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    v205 = 797;
    v206 = 2048;
    v207 = v12;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v89, v201, &v187, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v4;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v92, v201, &v187, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = v69;
    v95 = v70;
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v94;
    v208 = 2048;
    v209 = v95;
    _os_log_send_and_compose_impl(v97, v201, &v187, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v98 = MEMORY[0x1E69E9C10];
    v99 = v73;
    v100 = v74;
    v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v101)
    {
      v102 = 3;
    }

    else
    {
      v102 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v99;
    v208 = 2048;
    v209 = v100;
    _os_log_send_and_compose_impl(v102, v201, &v187, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v103 = MEMORY[0x1E69E9C10];
    v104 = v53;
    v105 = v54;
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v104;
    v208 = 2048;
    v209 = v105;
    _os_log_send_and_compose_impl(v107, v201, &v187, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = v57;
    v110 = v58;
    v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v111)
    {
      v112 = 3;
    }

    else
    {
      v112 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v109;
    v208 = 2048;
    v209 = v110;
    _os_log_send_and_compose_impl(v112, v201, &v187, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v113 = MEMORY[0x1E69E9C10];
    v114 = v61;
    v115 = v62;
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v114;
    v208 = 2048;
    v209 = v115;
    _os_log_send_and_compose_impl(v117, v201, &v187, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = v65;
    v120 = v66;
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v119;
    v208 = 2048;
    v209 = v120;
    _os_log_send_and_compose_impl(v122, v201, &v187, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = v49;
    v125 = v50;
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v124;
    v208 = 2048;
    v209 = v125;
    _os_log_send_and_compose_impl(v127, v201, &v187, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = v43;
    v130 = v44;
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v129;
    v208 = 2048;
    v209 = v130;
    _os_log_send_and_compose_impl(v132, v201, &v187, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = v28;
    v135 = v38;
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v134;
    v208 = 2048;
    v209 = v135;
    _os_log_send_and_compose_impl(v137, &v186, &v187, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = v28;
    v140 = v34;
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v139;
    v208 = 2048;
    v209 = v140;
    _os_log_send_and_compose_impl(v142, &v186, &v187, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = v28;
    v145 = v37;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v144;
    v208 = 2048;
    v209 = v145;
    _os_log_send_and_compose_impl(v147, &v186, &v187, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v28;
    v150 = v32;
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v149;
    v208 = 2048;
    v209 = v150;
    _os_log_send_and_compose_impl(v152, &v186, &v187, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = v28;
    v155 = v29;
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v154;
    v208 = 2048;
    v209 = v155;
    _os_log_send_and_compose_impl(v157, &v186, &v187, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = v28;
    v160 = v33;
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v159;
    v208 = 2048;
    v209 = v160;
    _os_log_send_and_compose_impl(v162, &v186, &v187, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = v35;
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v164;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v166, &v186, &v187, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v186 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = v28;
    v39 = v31;
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v168;
    v208 = 2048;
    v209 = v39;
    _os_log_send_and_compose_impl(v170, &v186, &v187, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v201, 0, sizeof(v201));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    v202 = 0;
    v201[v3] = *(v8 + 6);
    v81 = *(v6 + 481);
    *&v187 = *(v6 + 483);
    *(&v187 + 1) = v81;
    v82 = *(v6 + 486);
    *&v188 = *(v6 + 488);
    *(&v188 + 1) = v82;
    v83 = *(v6 + 491);
    *&v189 = *(v6 + 493);
    *(&v189 + 1) = v83;
    v84 = *(v6 + 496);
    *&v190 = *(v6 + 498);
    *(&v190 + 1) = v84;
    v85 = *(v6 + 501);
    *&v191 = *(v6 + 503);
    *(&v191 + 1) = v85;
    v86 = *(v6 + 506);
    v192 = *(v6 + 508);
    v193 = v86;
    v87 = *(v6 + 511);
    v194 = *(v6 + 513);
    v195 = v87;
    v88 = *(v6 + 516);
    v196 = *(v6 + 518);
    v197 = v88;
    v199 = 0;
    v200 = 0;
    v198 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] <= 1u)
    {
      if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_181;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v34 = *(this + 3);
        if (v34 <= v28)
        {
          goto LABEL_157;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v27 != 2)
    {
      if (v27 != 3)
      {
        goto LABEL_202;
      }

      v28 = *&v26[2 * v24];
      v32 = *(this + 12);
      if (v32 <= v28)
      {
        goto LABEL_165;
      }

      v30 = *(this + 13);
      goto LABEL_49;
    }

    v35 = *&v26[2 * v24];
    if (v5 <= v35)
    {
      goto LABEL_177;
    }

    v36 = v7 + (v35 << 6);
LABEL_50:
    if (!v36 || *(v36 + 40) != 3)
    {
      goto LABEL_110;
    }

    v201[v24++] = *(v36 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_153;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_202;
      }

      v28 = *&v26[2 * v24];
      v33 = *(this + 18);
      if (v33 <= v28)
      {
        goto LABEL_173;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_161;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_169;
    }

    v30 = *(this + 25);
LABEL_49:
    v36 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_202;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_197;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_193:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v176 = MEMORY[0x1E69E9C10];
    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v177)
    {
      v178 = 3;
    }

    else
    {
      v178 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v5;
    v208 = 2048;
    v209 = v3;
    _os_log_send_and_compose_impl(v178, v201, &v187, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v179 = MEMORY[0x1E69E9C10];
    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v180)
    {
      v181 = 3;
    }

    else
    {
      v181 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v5;
    v208 = 2048;
    v209 = v3;
    _os_log_send_and_compose_impl(v181, v201, &v187, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v40 = (v8 + 2);
  while (2)
  {
    v42 = *v5++;
    v41 = v42;
    if (v42 > 3)
    {
      if (v41 <= 5)
      {
        if (v41 == 4)
        {
          v65 = *v40;
          v66 = *(v6 + 15);
          if (v66 <= *v40)
          {
            goto LABEL_141;
          }

          v67 = *(v6 + 16) + (v65 << 6);
          v68 = *(v67 + 56);
          v47 = (v67 + 56);
          v46 = v68;
          if (v68 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 523);
          *(v6 + 523) = v46 + 1;
        }

        else
        {
          if (v41 != 5)
          {
            goto LABEL_201;
          }

          v49 = *v40;
          v50 = *(v6 + 18);
          if (v50 <= *v40)
          {
            goto LABEL_145;
          }

          v51 = *(v6 + 19) + (v49 << 6);
          v52 = *(v51 + 56);
          v47 = (v51 + 56);
          v46 = v52;
          if (v52 != -1)
          {
            goto LABEL_102;
          }

          v46 = *(v6 + 524);
          *(v6 + 524) = v46 + 1;
        }

        goto LABEL_101;
      }

      if (v41 == 6)
      {
        v73 = *v40;
        v74 = *(v6 + 21);
        if (v74 <= *v40)
        {
          goto LABEL_125;
        }

        v75 = *(v6 + 22) + (v73 << 6);
        v76 = *(v75 + 56);
        v47 = (v75 + 56);
        v46 = v76;
        if (v76 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 525);
        *(v6 + 525) = v46 + 1;
        goto LABEL_101;
      }

      if (v41 == 7)
      {
        v57 = *v40;
        v58 = *(v6 + 24);
        if (v58 <= *v40)
        {
          goto LABEL_133;
        }

        v59 = *(v6 + 25) + (v57 << 6);
        v60 = *(v59 + 56);
        v47 = (v59 + 56);
        v46 = v60;
        if (v60 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 526);
        *(v6 + 526) = v46 + 1;
        goto LABEL_101;
      }

LABEL_201:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v41);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v182);
      __break(1u);
LABEL_202:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v183);
      __break(1u);
      return this;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v69 = *v40;
        v70 = *(v6 + 9);
        if (v70 <= *v40)
        {
          goto LABEL_121;
        }

        v71 = *(v6 + 10) + (v69 << 6);
        v72 = *(v71 + 56);
        v47 = (v71 + 56);
        v46 = v72;
        if (v72 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 521);
        *(v6 + 521) = v46 + 1;
      }

      else
      {
        if (v41 != 3)
        {
          goto LABEL_201;
        }

        v53 = *v40;
        v54 = *(v6 + 12);
        if (v54 <= *v40)
        {
          goto LABEL_129;
        }

        v55 = *(v6 + 13) + (v53 << 6);
        v56 = *(v55 + 56);
        v47 = (v55 + 56);
        v46 = v56;
        if (v56 != -1)
        {
          goto LABEL_102;
        }

        v46 = *(v6 + 522);
        *(v6 + 522) = v46 + 1;
      }

LABEL_101:
      *v47 = v46;
      goto LABEL_102;
    }

    if (!v41)
    {
      v61 = *v40;
      v62 = *(v6 + 3);
      if (v62 <= *v40)
      {
        goto LABEL_137;
      }

      v63 = *(v6 + 4) + (v61 << 6);
      v64 = *(v63 + 56);
      v47 = (v63 + 56);
      v46 = v64;
      if (v64 != -1)
      {
        goto LABEL_102;
      }

      v46 = *(v6 + 519);
      *(v6 + 519) = v46 + 1;
      goto LABEL_101;
    }

    if (v41 != 1)
    {
      goto LABEL_201;
    }

    v43 = *v40;
    v44 = *(v6 + 6);
    if (v44 <= *v40)
    {
      goto LABEL_149;
    }

    v45 = *(v6 + 7) + (v43 << 6);
    v48 = *(v45 + 56);
    v47 = (v45 + 56);
    v46 = v48;
    if (v48 == -1)
    {
      v46 = *(v6 + 520);
      *(v6 + 520) = v46 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v187 = v46;
    re::DynamicArray<unsigned long>::add(a3, &v187);
    ++v40;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 9);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_189:
    v201[0] = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
    v173 = MEMORY[0x1E69E9C10];
    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v202 = 136315906;
    v203 = "operator[]";
    v204 = 1024;
    if (v174)
    {
      v175 = 3;
    }

    else
    {
      v175 = 2;
    }

    v205 = 468;
    v206 = 2048;
    v207 = v4;
    v208 = 2048;
    v209 = v5;
    _os_log_send_and_compose_impl(v175, v201, &v187, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v202, 38, v184, v185);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v77 = *(v6 + 10) + (v4 << 6);
  v80 = *(v77 + 56);
  v79 = (v77 + 56);
  v78 = v80;
  if (v80 == -1)
  {
    v78 = *(v6 + 521);
    *(v6 + 521) = v78 + 1;
    *v79 = v78;
  }

  *&v187 = v78;
  re::DynamicArray<unsigned long>::add(a3, &v187);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Matrix3x3<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v205[5] = *MEMORY[0x1E69E9840];
  v5 = *(this + 12);
  if (v5 <= a2)
  {
    goto LABEL_117;
  }

  v6 = this;
  v7 = *(this + 13);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    memset(v204, 0, sizeof(v204));
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[20];
      v14 = v10[18];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[20];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[20];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = (v16 - v13) >> 3;
        v5 = v10[58];
        if (v5 <= v39)
        {
LABEL_185:
          v189 = 0;
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          v190 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v205[0]) = 136315906;
          *(v205 + 4) = "operator[]";
          WORD2(v205[1]) = 1024;
          if (v174)
          {
            v175 = 3;
          }

          else
          {
            v175 = 2;
          }

          *(&v205[1] + 6) = 797;
          WORD1(v205[2]) = 2048;
          *(&v205[2] + 4) = v39;
          WORD2(v205[3]) = 2048;
          *(&v205[3] + 6) = v5;
          _os_log_send_and_compose_impl(v175, &v189, &v190, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v187, v188);
          _os_crash_msg();
          __break(1u);
          goto LABEL_189;
        }

        v40 = (v10[60] + 48 * v39);
        v42 = v40[1];
        v41 = v40[2];
        v204[0] = *v40;
        v204[1] = v42;
        v204[2] = v41;
      }
    }

    v5 = v10[98];
    while (v5 > v12)
    {
      v11 = *(v10[100] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    LODWORD(v205[0]) = 136315906;
    *(v205 + 4) = "operator[]";
    WORD2(v205[1]) = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    *(&v205[1] + 6) = 797;
    WORD1(v205[2]) = 2048;
    *(&v205[2] + 4) = v12;
    WORD2(v205[3]) = 2048;
    *(&v205[3] + 6) = v5;
    _os_log_send_and_compose_impl(v92, &v189, &v190, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v205, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v4;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v5;
    _os_log_send_and_compose_impl(v95, v205, &v190, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = v72;
    v98 = v73;
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v99)
    {
      v100 = 3;
    }

    else
    {
      v100 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v97;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v98;
    _os_log_send_and_compose_impl(v100, v205, &v190, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v101 = MEMORY[0x1E69E9C10];
    v102 = v76;
    v103 = v77;
    v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v104)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v102;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v103;
    _os_log_send_and_compose_impl(v105, v205, &v190, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v106 = MEMORY[0x1E69E9C10];
    v107 = v56;
    v108 = v57;
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v107;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v108;
    _os_log_send_and_compose_impl(v110, v205, &v190, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = v60;
    v113 = v61;
    v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v114)
    {
      v115 = 3;
    }

    else
    {
      v115 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v112;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v113;
    _os_log_send_and_compose_impl(v115, v205, &v190, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v116 = MEMORY[0x1E69E9C10];
    v117 = v64;
    v118 = v65;
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v117;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v118;
    _os_log_send_and_compose_impl(v120, v205, &v190, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v121 = MEMORY[0x1E69E9C10];
    v122 = v68;
    v123 = v69;
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v122;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v123;
    _os_log_send_and_compose_impl(v125, v205, &v190, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = v52;
    v128 = v53;
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v127;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v128;
    _os_log_send_and_compose_impl(v130, v205, &v190, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = v46;
    v133 = v47;
    v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v134)
    {
      v135 = 3;
    }

    else
    {
      v135 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v132;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v133;
    _os_log_send_and_compose_impl(v135, v205, &v190, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v136 = MEMORY[0x1E69E9C10];
    v137 = v28;
    v138 = v38;
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v137;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v138;
    _os_log_send_and_compose_impl(v140, &v189, &v190, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = v28;
    v143 = v35;
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v142;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v143;
    _os_log_send_and_compose_impl(v145, &v189, &v190, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = v28;
    v148 = v37;
    v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v149)
    {
      v150 = 3;
    }

    else
    {
      v150 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v147;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v148;
    _os_log_send_and_compose_impl(v150, &v189, &v190, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v151 = MEMORY[0x1E69E9C10];
    v152 = v32;
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v152;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v5;
    _os_log_send_and_compose_impl(v154, &v189, &v190, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = v28;
    v157 = v29;
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v156;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v157;
    _os_log_send_and_compose_impl(v159, &v189, &v190, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = v28;
    v162 = v34;
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v161;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v162;
    _os_log_send_and_compose_impl(v164, &v189, &v190, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v165 = MEMORY[0x1E69E9C10];
    v166 = v28;
    v167 = v36;
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v166;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v167;
    _os_log_send_and_compose_impl(v169, &v189, &v190, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v189 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v170 = MEMORY[0x1E69E9C10];
    v171 = v28;
    v39 = v31;
    v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v172)
    {
      v173 = 3;
    }

    else
    {
      v173 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v171;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v39;
    _os_log_send_and_compose_impl(v173, &v189, &v190, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v205, 0, 32);
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    memset(v204, 0, sizeof(v204));
    v205[v3] = *(v8 + 6);
    v84 = *(v6 + 481);
    *&v190 = *(v6 + 483);
    *(&v190 + 1) = v84;
    v85 = *(v6 + 486);
    *&v191 = *(v6 + 488);
    *(&v191 + 1) = v85;
    v86 = *(v6 + 491);
    *&v192 = *(v6 + 493);
    *(&v192 + 1) = v86;
    v87 = *(v6 + 496);
    *&v193 = *(v6 + 498);
    *(&v193 + 1) = v87;
    v88 = *(v6 + 501);
    *&v194 = *(v6 + 503);
    *(&v194 + 1) = v88;
    v89 = *(v6 + 506);
    v195 = *(v6 + 508);
    v196 = v89;
    v90 = *(v6 + 511);
    v197 = *(v6 + 513);
    v198 = v90;
    v91 = *(v6 + 516);
    v199 = *(v6 + 518);
    v200 = v91;
    v202 = 0;
    v203 = 0;
    v201 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] > 3u)
    {
      break;
    }

    if (v25[v24] <= 1u)
    {
      if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_181;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v35 = *(this + 3);
        if (v35 <= v28)
        {
          goto LABEL_157;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v27 == 2)
    {
      v28 = *&v26[2 * v24];
      v36 = *(this + 9);
      if (v36 <= v28)
      {
        goto LABEL_177;
      }

      v30 = *(this + 10);
      goto LABEL_49;
    }

    if (v27 != 3)
    {
      goto LABEL_202;
    }

    v32 = *&v26[2 * v24];
    if (v5 <= v32)
    {
      goto LABEL_165;
    }

    v33 = v7 + (v32 << 6);
LABEL_50:
    if (!v33 || *(v33 + 40) != 3)
    {
      goto LABEL_110;
    }

    v205[v24++] = *(v33 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v25[v24] <= 5u)
  {
    if (v27 == 4)
    {
      v28 = *&v26[2 * v24];
      v38 = *(this + 15);
      if (v38 <= v28)
      {
        goto LABEL_153;
      }

      v30 = *(this + 16);
    }

    else
    {
      if (v27 != 5)
      {
        goto LABEL_202;
      }

      v28 = *&v26[2 * v24];
      v34 = *(this + 18);
      if (v34 <= v28)
      {
        goto LABEL_173;
      }

      v30 = *(this + 19);
    }

    goto LABEL_49;
  }

  if (v27 == 6)
  {
    v28 = *&v26[2 * v24];
    v37 = *(this + 21);
    if (v37 <= v28)
    {
      goto LABEL_161;
    }

    v30 = *(this + 22);
    goto LABEL_49;
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_169;
    }

    v30 = *(this + 25);
LABEL_49:
    v33 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_202;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_197;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_193:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v179 = MEMORY[0x1E69E9C10];
    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v180)
    {
      v181 = 3;
    }

    else
    {
      v181 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v5;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v3;
    _os_log_send_and_compose_impl(v181, v205, &v190, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v182 = MEMORY[0x1E69E9C10];
    v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v183)
    {
      v184 = 3;
    }

    else
    {
      v184 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v5;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v3;
    _os_log_send_and_compose_impl(v184, v205, &v190, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v43 = (v8 + 2);
  while (2)
  {
    v45 = *v5++;
    v44 = v45;
    if (v45 > 3)
    {
      if (v44 <= 5)
      {
        if (v44 == 4)
        {
          v68 = *v43;
          v69 = *(v6 + 15);
          if (v69 <= *v43)
          {
            goto LABEL_141;
          }

          v70 = *(v6 + 16) + (v68 << 6);
          v71 = *(v70 + 56);
          v50 = (v70 + 56);
          v49 = v71;
          if (v71 != -1)
          {
            goto LABEL_102;
          }

          v49 = *(v6 + 523);
          *(v6 + 523) = v49 + 1;
        }

        else
        {
          if (v44 != 5)
          {
            goto LABEL_201;
          }

          v52 = *v43;
          v53 = *(v6 + 18);
          if (v53 <= *v43)
          {
            goto LABEL_145;
          }

          v54 = *(v6 + 19) + (v52 << 6);
          v55 = *(v54 + 56);
          v50 = (v54 + 56);
          v49 = v55;
          if (v55 != -1)
          {
            goto LABEL_102;
          }

          v49 = *(v6 + 524);
          *(v6 + 524) = v49 + 1;
        }

        goto LABEL_101;
      }

      if (v44 == 6)
      {
        v76 = *v43;
        v77 = *(v6 + 21);
        if (v77 <= *v43)
        {
          goto LABEL_125;
        }

        v78 = *(v6 + 22) + (v76 << 6);
        v79 = *(v78 + 56);
        v50 = (v78 + 56);
        v49 = v79;
        if (v79 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 525);
        *(v6 + 525) = v49 + 1;
        goto LABEL_101;
      }

      if (v44 == 7)
      {
        v60 = *v43;
        v61 = *(v6 + 24);
        if (v61 <= *v43)
        {
          goto LABEL_133;
        }

        v62 = *(v6 + 25) + (v60 << 6);
        v63 = *(v62 + 56);
        v50 = (v62 + 56);
        v49 = v63;
        if (v63 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 526);
        *(v6 + 526) = v49 + 1;
        goto LABEL_101;
      }

LABEL_201:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v44);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v185);
      __break(1u);
LABEL_202:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v186);
      __break(1u);
      return this;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v72 = *v43;
        v73 = *(v6 + 9);
        if (v73 <= *v43)
        {
          goto LABEL_121;
        }

        v74 = *(v6 + 10) + (v72 << 6);
        v75 = *(v74 + 56);
        v50 = (v74 + 56);
        v49 = v75;
        if (v75 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 521);
        *(v6 + 521) = v49 + 1;
      }

      else
      {
        if (v44 != 3)
        {
          goto LABEL_201;
        }

        v56 = *v43;
        v57 = *(v6 + 12);
        if (v57 <= *v43)
        {
          goto LABEL_129;
        }

        v58 = *(v6 + 13) + (v56 << 6);
        v59 = *(v58 + 56);
        v50 = (v58 + 56);
        v49 = v59;
        if (v59 != -1)
        {
          goto LABEL_102;
        }

        v49 = *(v6 + 522);
        *(v6 + 522) = v49 + 1;
      }

LABEL_101:
      *v50 = v49;
      goto LABEL_102;
    }

    if (!v44)
    {
      v64 = *v43;
      v65 = *(v6 + 3);
      if (v65 <= *v43)
      {
        goto LABEL_137;
      }

      v66 = *(v6 + 4) + (v64 << 6);
      v67 = *(v66 + 56);
      v50 = (v66 + 56);
      v49 = v67;
      if (v67 != -1)
      {
        goto LABEL_102;
      }

      v49 = *(v6 + 519);
      *(v6 + 519) = v49 + 1;
      goto LABEL_101;
    }

    if (v44 != 1)
    {
      goto LABEL_201;
    }

    v46 = *v43;
    v47 = *(v6 + 6);
    if (v47 <= *v43)
    {
      goto LABEL_149;
    }

    v48 = *(v6 + 7) + (v46 << 6);
    v51 = *(v48 + 56);
    v50 = (v48 + 56);
    v49 = v51;
    if (v51 == -1)
    {
      v49 = *(v6 + 520);
      *(v6 + 520) = v49 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v190 = v49;
    re::DynamicArray<unsigned long>::add(a3, &v190);
    ++v43;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 12);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_189:
    v205[0] = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    v176 = MEMORY[0x1E69E9C10];
    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v204[0]) = 136315906;
    *(v204 + 4) = "operator[]";
    WORD6(v204[0]) = 1024;
    if (v177)
    {
      v178 = 3;
    }

    else
    {
      v178 = 2;
    }

    *(v204 + 14) = 468;
    WORD1(v204[1]) = 2048;
    *(&v204[1] + 4) = v4;
    WORD6(v204[1]) = 2048;
    *(&v204[1] + 14) = v5;
    _os_log_send_and_compose_impl(v178, v205, &v190, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v187, v188);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v80 = *(v6 + 13) + (v4 << 6);
  v83 = *(v80 + 56);
  v82 = (v80 + 56);
  v81 = v83;
  if (v83 == -1)
  {
    v81 = *(v6 + 522);
    *(v6 + 522) = v81 + 1;
    *v82 = v81;
  }

  *&v190 = v81;
  re::DynamicArray<unsigned long>::add(a3, &v190);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Matrix4x4<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v187[5] = *MEMORY[0x1E69E9840];
  v5 = *(this + 15);
  if (v5 <= a2)
  {
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v4;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v5;
    _os_log_send_and_compose_impl(v78, v187, &v171, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = v57;
    v81 = v58;
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v80;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v81;
    _os_log_send_and_compose_impl(v83, v187, &v171, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = v61;
    v86 = v62;
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v85;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v86;
    _os_log_send_and_compose_impl(v88, v187, &v171, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = v41;
    v91 = v42;
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v90;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v91;
    _os_log_send_and_compose_impl(v93, v187, &v171, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = v45;
    v96 = v46;
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v95;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v96;
    _os_log_send_and_compose_impl(v98, v187, &v171, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = v49;
    v101 = v50;
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v100;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v101;
    _os_log_send_and_compose_impl(v103, v187, &v171, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = v53;
    v106 = v54;
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v105;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v106;
    _os_log_send_and_compose_impl(v108, v187, &v171, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = v37;
    v111 = v38;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v110;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v111;
    _os_log_send_and_compose_impl(v113, v187, &v171, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = v31;
    v116 = v32;
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v115;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v116;
    _os_log_send_and_compose_impl(v118, v187, &v171, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = v27;
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v120;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v5;
    _os_log_send_and_compose_impl(v122, &v170, &v171, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = v17;
    v125 = v23;
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v124;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v125;
    _os_log_send_and_compose_impl(v127, &v170, &v171, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = v17;
    v130 = v25;
    v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v131)
    {
      v132 = 3;
    }

    else
    {
      v132 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v129;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v130;
    _os_log_send_and_compose_impl(v132, &v170, &v171, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = v17;
    v135 = v21;
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v134;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v135;
    _os_log_send_and_compose_impl(v137, &v170, &v171, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = v17;
    v140 = v18;
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v139;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v140;
    _os_log_send_and_compose_impl(v142, &v170, &v171, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = v17;
    v145 = v22;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v144;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v145;
    _os_log_send_and_compose_impl(v147, &v170, &v171, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v17;
    v150 = v24;
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v149;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v150;
    _os_log_send_and_compose_impl(v152, &v170, &v171, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v153 = v17;
    v154 = v20;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v153;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v154;
    _os_log_send_and_compose_impl(v156, &v170, &v171, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_165;
  }

  v6 = this;
  v7 = *(this + 16);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    re::EvaluationTree::getInputValue<re::Matrix4x4<float>>(*(this + 1), a2, &v171);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v187, 0, 32);
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    v186 = 0uLL;
    memset(v185, 0, sizeof(v185));
    v187[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    *&v171 = *(v6 + 483);
    *(&v171 + 1) = v69;
    v70 = *(v6 + 486);
    *&v172 = *(v6 + 488);
    *(&v172 + 1) = v70;
    v71 = *(v6 + 491);
    *&v173 = *(v6 + 493);
    *(&v173 + 1) = v71;
    v72 = *(v6 + 496);
    *&v174 = *(v6 + 498);
    *(&v174 + 1) = v72;
    v73 = *(v6 + 501);
    *&v175 = *(v6 + 503);
    *(&v175 + 1) = v73;
    v74 = *(v6 + 506);
    v176 = *(v6 + 508);
    v177 = v74;
    v75 = *(v6 + 511);
    v178 = *(v6 + 513);
    v179 = v75;
    v76 = *(v6 + 516);
    v180 = *(v6 + 518);
    v181 = v76;
    v183 = 0;
    v184 = 0;
    v182 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v17 = *&v15[2 * v13];
          v24 = *(this + 9);
          if (v24 <= v17)
          {
            goto LABEL_157;
          }

          v19 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_178;
          }

          v17 = *&v15[2 * v13];
          v21 = *(this + 12);
          if (v21 <= v17)
          {
            goto LABEL_145;
          }

          v19 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v17 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v17)
        {
          goto LABEL_161;
        }

        v19 = *(this + 7);
      }

      else
      {
        v17 = *&v15[2 * v13];
        v23 = *(this + 3);
        if (v23 <= v17)
        {
          goto LABEL_137;
        }

        v19 = *(this + 4);
      }

      goto LABEL_37;
    }

    if (v14[v13] > 5u)
    {
      break;
    }

    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_178;
      }

      v17 = *&v15[2 * v13];
      v22 = *(this + 18);
      if (v22 <= v17)
      {
        goto LABEL_153;
      }

      v19 = *(this + 19);
      goto LABEL_37;
    }

    v27 = *&v15[2 * v13];
    if (v5 <= v27)
    {
      goto LABEL_133;
    }

    v26 = v7 + (v27 << 6);
    if (!v26)
    {
      goto LABEL_94;
    }

LABEL_38:
    if (*(v26 + 40) != 3)
    {
      goto LABEL_94;
    }

    v187[v13++] = *(v26 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if (v16 == 6)
  {
    v17 = *&v15[2 * v13];
    v25 = *(this + 21);
    if (v25 <= v17)
    {
      goto LABEL_141;
    }

    v19 = *(this + 22);
LABEL_37:
    v26 = v19 + (v17 << 6);
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_38;
  }

  if (v16 == 7)
  {
    v17 = *&v15[2 * v13];
    v18 = *(this + 24);
    if (v18 <= v17)
    {
      goto LABEL_149;
    }

    v19 = *(this + 25);
    goto LABEL_37;
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_178;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_173;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_169:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v5;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v3;
    _os_log_send_and_compose_impl(v162, v187, &v171, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v5;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v3;
    _os_log_send_and_compose_impl(v165, v187, &v171, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_121;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_177;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_125;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_105;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_113;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_177:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v166);
      __break(1u);
LABEL_178:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v167);
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_101;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_177;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_109;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_117;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_177;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_129;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    *&v171 = v34;
    re::DynamicArray<unsigned long>::add(a3, &v171);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 15);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_165:
    v187[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v185[0] = 136315906;
    *&v185[1] = "operator[]";
    LOWORD(v185[3]) = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    *(&v185[3] + 2) = 468;
    HIWORD(v185[4]) = 2048;
    *&v185[5] = v4;
    LOWORD(v185[7]) = 2048;
    *(&v185[7] + 2) = v5;
    _os_log_send_and_compose_impl(v159, v187, &v171, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  v65 = *(v6 + 16) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 523);
    *(v6 + 523) = v66 + 1;
    *v67 = v66;
  }

  *&v171 = v66;
  re::DynamicArray<unsigned long>::add(a3, &v171);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Quaternion<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v191 = *MEMORY[0x1E69E9840];
  v5 = *(this + 18);
  if (v5 <= a2)
  {
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v4;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v78, v185, &v171, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = v57;
    v81 = v58;
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v80;
    v189 = 2048;
    v190 = v81;
    _os_log_send_and_compose_impl(v83, v185, &v171, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = v61;
    v86 = v62;
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v85;
    v189 = 2048;
    v190 = v86;
    _os_log_send_and_compose_impl(v88, v185, &v171, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = v41;
    v91 = v42;
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v90;
    v189 = 2048;
    v190 = v91;
    _os_log_send_and_compose_impl(v93, v185, &v171, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = v45;
    v96 = v46;
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v95;
    v189 = 2048;
    v190 = v96;
    _os_log_send_and_compose_impl(v98, v185, &v171, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = v49;
    v101 = v50;
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v100;
    v189 = 2048;
    v190 = v101;
    _os_log_send_and_compose_impl(v103, v185, &v171, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = v53;
    v106 = v54;
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v105;
    v189 = 2048;
    v190 = v106;
    _os_log_send_and_compose_impl(v108, v185, &v171, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = v37;
    v111 = v38;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v110;
    v189 = 2048;
    v190 = v111;
    _os_log_send_and_compose_impl(v113, v185, &v171, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = v31;
    v116 = v32;
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v115;
    v189 = 2048;
    v190 = v116;
    _os_log_send_and_compose_impl(v118, v185, &v171, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = v17;
    v121 = v27;
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v120;
    v189 = 2048;
    v190 = v121;
    _os_log_send_and_compose_impl(v123, &v170, &v171, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = v17;
    v126 = v24;
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v125;
    v189 = 2048;
    v190 = v126;
    _os_log_send_and_compose_impl(v128, &v170, &v171, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = v17;
    v131 = v26;
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v130;
    v189 = 2048;
    v190 = v131;
    _os_log_send_and_compose_impl(v133, &v170, &v171, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = v17;
    v136 = v21;
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v135;
    v189 = 2048;
    v190 = v136;
    _os_log_send_and_compose_impl(v138, &v170, &v171, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = v17;
    v141 = v18;
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v140;
    v189 = 2048;
    v190 = v141;
    _os_log_send_and_compose_impl(v143, &v170, &v171, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = v22;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v145;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v147, &v170, &v171, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v17;
    v150 = v25;
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v149;
    v189 = 2048;
    v190 = v150;
    _os_log_send_and_compose_impl(v152, &v170, &v171, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v153 = v17;
    v154 = v20;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v153;
    v189 = 2048;
    v190 = v154;
    _os_log_send_and_compose_impl(v156, &v170, &v171, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_165;
  }

  v6 = this;
  v7 = *(this + 19);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v171 = xmmword_1E30474D0;
    re::EvaluationTree::getInputValue<re::Quaternion<float>>(*(this + 1), a2, &v171);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v185, 0, sizeof(v185));
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    *v186 = xmmword_1E30474D0;
    v185[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    *&v171 = *(v6 + 483);
    *(&v171 + 1) = v69;
    v70 = *(v6 + 486);
    *&v172 = *(v6 + 488);
    *(&v172 + 1) = v70;
    v71 = *(v6 + 491);
    *&v173 = *(v6 + 493);
    *(&v173 + 1) = v71;
    v72 = *(v6 + 496);
    *&v174 = *(v6 + 498);
    *(&v174 + 1) = v72;
    v73 = *(v6 + 501);
    *&v175 = *(v6 + 503);
    *(&v175 + 1) = v73;
    v74 = *(v6 + 506);
    v176 = *(v6 + 508);
    v177 = v74;
    v75 = *(v6 + 511);
    v178 = *(v6 + 513);
    v179 = v75;
    v76 = *(v6 + 516);
    v180 = *(v6 + 518);
    v181 = v76;
    v183 = 0;
    v184 = 0;
    v182 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v17 = *&v15[2 * v13];
          v25 = *(this + 9);
          if (v25 <= v17)
          {
            goto LABEL_157;
          }

          v19 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_178;
          }

          v17 = *&v15[2 * v13];
          v21 = *(this + 12);
          if (v21 <= v17)
          {
            goto LABEL_145;
          }

          v19 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v17 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v17)
        {
          goto LABEL_161;
        }

        v19 = *(this + 7);
      }

      else
      {
        v17 = *&v15[2 * v13];
        v24 = *(this + 3);
        if (v24 <= v17)
        {
          goto LABEL_137;
        }

        v19 = *(this + 4);
      }

      goto LABEL_39;
    }

    if (v14[v13] > 5u)
    {
      break;
    }

    if (v16 == 4)
    {
      v17 = *&v15[2 * v13];
      v27 = *(this + 15);
      if (v27 <= v17)
      {
        goto LABEL_133;
      }

      v19 = *(this + 16);
      goto LABEL_39;
    }

    if (v16 != 5)
    {
      goto LABEL_178;
    }

    v22 = *&v15[2 * v13];
    if (v5 <= v22)
    {
      goto LABEL_153;
    }

    v23 = v7 + (v22 << 6);
LABEL_40:
    if (!v23 || *(v23 + 40) != 3)
    {
      goto LABEL_94;
    }

    v185[v13++] = *(v23 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if (v16 == 6)
  {
    v17 = *&v15[2 * v13];
    v26 = *(this + 21);
    if (v26 <= v17)
    {
      goto LABEL_141;
    }

    v19 = *(this + 22);
    goto LABEL_39;
  }

  if (v16 == 7)
  {
    v17 = *&v15[2 * v13];
    v18 = *(this + 24);
    if (v18 <= v17)
    {
      goto LABEL_149;
    }

    v19 = *(this + 25);
LABEL_39:
    v23 = v19 + (v17 << 6);
    goto LABEL_40;
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_178;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_173;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_169:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v5;
    v189 = 2048;
    v190 = v3;
    _os_log_send_and_compose_impl(v162, v185, &v171, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v5;
    v189 = 2048;
    v190 = v3;
    _os_log_send_and_compose_impl(v165, v185, &v171, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_121;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_177;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_125;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_105;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_113;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_177:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v166);
      __break(1u);
LABEL_178:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v167);
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_101;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_177;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_109;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_117;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_177;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_129;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    *&v171 = v34;
    re::DynamicArray<unsigned long>::add(a3, &v171);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 18);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_165:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v4;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v159, v185, &v171, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  v65 = *(v6 + 19) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 524);
    *(v6 + 524) = v66 + 1;
    *v67 = v66;
  }

  *&v171 = v66;
  re::DynamicArray<unsigned long>::add(a3, &v171);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Vector2<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v211 = *MEMORY[0x1E69E9840];
  v5 = *(this + 21);
  if (v5 <= a2)
  {
    goto LABEL_117;
  }

  v6 = this;
  v7 = *(this + 22);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v188 = 0;
    v10 = *(this + 1);
    v11 = a2;
    v12 = a2 - 0x7FFFFFFFFFFFFFFFLL;
    if ((a2 - 0x7FFFFFFFFFFFFFFFLL) < 0)
    {
LABEL_8:
      v13 = v10[35];
      v14 = v10[33];
      v15 = (v13 + 8 * v14);
      if (v14)
      {
        v16 = v10[35];
        do
        {
          v17 = v14 >> 1;
          v18 = &v16[v14 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v14 += ~(v14 >> 1);
          if (v20 < v11)
          {
            v16 = v19;
          }

          else
          {
            v14 = v17;
          }
        }

        while (v14);
      }

      else
      {
        v16 = v10[35];
      }

      if (v16 != v15 && *v16 == v11)
      {
        v39 = v16 - v13;
        v40 = v10[73];
        if (v40 <= (v16 - v13) >> 3)
        {
LABEL_185:
          v172 = v39 >> 3;
          v203[0] = 0;
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v189 = 0u;
          v4 = MEMORY[0x1E69E9C10];
          v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v204 = 136315906;
          *&v204[4] = "operator[]";
          v205 = 1024;
          if (v173)
          {
            v174 = 3;
          }

          else
          {
            v174 = 2;
          }

          v206 = 797;
          v207 = 2048;
          v208 = v172;
          v209 = 2048;
          v210 = v40;
          _os_log_send_and_compose_impl(v174, v203, &v189, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
          _os_crash_msg();
          __break(1u);
          goto LABEL_189;
        }

        v188 = *(v10[75] + v39);
      }
    }

    v5 = v10[113];
    while (v5 > v12)
    {
      v11 = *(v10[115] + 8 * v12);
      v12 = v11 - 0x7FFFFFFFFFFFFFFFLL;
      if ((v11 - 0x7FFFFFFFFFFFFFFFLL) < 0)
      {
        goto LABEL_8;
      }
    }

    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v206 = 797;
    v207 = 2048;
    v208 = v12;
    v209 = 2048;
    v210 = v5;
    _os_log_send_and_compose_impl(v90, v203, &v189, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v4;
    v209 = 2048;
    v210 = v5;
    _os_log_send_and_compose_impl(v93, v203, &v189, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = v70;
    v96 = v71;
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v95;
    v209 = 2048;
    v210 = v96;
    _os_log_send_and_compose_impl(v98, v203, &v189, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = v74;
    v101 = v75;
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v100;
    v209 = 2048;
    v210 = v101;
    _os_log_send_and_compose_impl(v103, v203, &v189, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = v54;
    v106 = v55;
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v105;
    v209 = 2048;
    v210 = v106;
    _os_log_send_and_compose_impl(v108, v203, &v189, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = v58;
    v111 = v59;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v110;
    v209 = 2048;
    v210 = v111;
    _os_log_send_and_compose_impl(v113, v203, &v189, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = v62;
    v116 = v63;
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v115;
    v209 = 2048;
    v210 = v116;
    _os_log_send_and_compose_impl(v118, v203, &v189, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = v66;
    v121 = v67;
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v120;
    v209 = 2048;
    v210 = v121;
    _os_log_send_and_compose_impl(v123, v203, &v189, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = v50;
    v126 = v51;
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v125;
    v209 = 2048;
    v210 = v126;
    _os_log_send_and_compose_impl(v128, v203, &v189, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = v44;
    v131 = v45;
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v130;
    v209 = 2048;
    v210 = v131;
    _os_log_send_and_compose_impl(v133, v203, &v189, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = v28;
    v136 = v38;
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v135;
    v209 = 2048;
    v210 = v136;
    _os_log_send_and_compose_impl(v138, &v188, &v189, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = v28;
    v141 = v34;
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v140;
    v209 = 2048;
    v210 = v141;
    _os_log_send_and_compose_impl(v143, &v188, &v189, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = v36;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v145;
    v209 = 2048;
    v210 = v5;
    _os_log_send_and_compose_impl(v147, &v188, &v189, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v28;
    v150 = v32;
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v149;
    v209 = 2048;
    v210 = v150;
    _os_log_send_and_compose_impl(v152, &v188, &v189, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = v28;
    v155 = v29;
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v154;
    v209 = 2048;
    v210 = v155;
    _os_log_send_and_compose_impl(v157, &v188, &v189, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = v28;
    v160 = v33;
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v159;
    v209 = 2048;
    v210 = v160;
    _os_log_send_and_compose_impl(v162, &v188, &v189, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = v28;
    v165 = v35;
    v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v166)
    {
      v167 = 3;
    }

    else
    {
      v167 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v164;
    v209 = 2048;
    v210 = v165;
    _os_log_send_and_compose_impl(v167, &v188, &v189, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v188 = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v168 = MEMORY[0x1E69E9C10];
    v169 = v28;
    v40 = v31;
    v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v170)
    {
      v171 = 3;
    }

    else
    {
      v171 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v169;
    v209 = 2048;
    v210 = v40;
    _os_log_send_and_compose_impl(v171, &v188, &v189, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
    goto LABEL_185;
  }

  v22 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(v203, 0, sizeof(v203));
  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
LABEL_111:
    *v204 = 0;
    v203[v3] = *(v8 + 6);
    v82 = *(v6 + 481);
    *&v189 = *(v6 + 483);
    *(&v189 + 1) = v82;
    v83 = *(v6 + 486);
    *&v190 = *(v6 + 488);
    *(&v190 + 1) = v83;
    v84 = *(v6 + 491);
    *&v191 = *(v6 + 493);
    *(&v191 + 1) = v84;
    v85 = *(v6 + 496);
    *&v192 = *(v6 + 498);
    *(&v192 + 1) = v85;
    v86 = *(v6 + 501);
    *&v193 = *(v6 + 503);
    *(&v193 + 1) = v86;
    v87 = *(v6 + 506);
    v194 = *(v6 + 508);
    v195 = v87;
    v88 = *(v6 + 511);
    v196 = *(v6 + 513);
    v197 = v88;
    v89 = *(v6 + 516);
    v198 = *(v6 + 518);
    v199 = v89;
    v201 = 0;
    v202 = 0;
    v200 = 0;
  }

  v24 = 0;
  v25 = v22 + 10;
  v26 = v8 + 2;
  while (1)
  {
    v27 = v25[v24];
    if (v25[v24] <= 3u)
    {
      if (v25[v24] > 1u)
      {
        if (v27 == 2)
        {
          v28 = *&v26[2 * v24];
          v35 = *(this + 9);
          if (v35 <= v28)
          {
            goto LABEL_177;
          }

          v30 = *(this + 10);
        }

        else
        {
          if (v27 != 3)
          {
            goto LABEL_202;
          }

          v28 = *&v26[2 * v24];
          v32 = *(this + 12);
          if (v32 <= v28)
          {
            goto LABEL_165;
          }

          v30 = *(this + 13);
        }
      }

      else if (v25[v24])
      {
        v28 = *&v26[2 * v24];
        v31 = *(this + 6);
        if (v31 <= v28)
        {
          goto LABEL_181;
        }

        v30 = *(this + 7);
      }

      else
      {
        v28 = *&v26[2 * v24];
        v34 = *(this + 3);
        if (v34 <= v28)
        {
          goto LABEL_157;
        }

        v30 = *(this + 4);
      }

      goto LABEL_49;
    }

    if (v25[v24] <= 5u)
    {
      if (v27 == 4)
      {
        v28 = *&v26[2 * v24];
        v38 = *(this + 15);
        if (v38 <= v28)
        {
          goto LABEL_153;
        }

        v30 = *(this + 16);
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_202;
        }

        v28 = *&v26[2 * v24];
        v33 = *(this + 18);
        if (v33 <= v28)
        {
          goto LABEL_173;
        }

        v30 = *(this + 19);
      }

      goto LABEL_49;
    }

    if (v27 != 6)
    {
      break;
    }

    v36 = *&v26[2 * v24];
    if (v5 <= v36)
    {
      goto LABEL_161;
    }

    v37 = v7 + (v36 << 6);
LABEL_50:
    if (!v37 || *(v37 + 40) != 3)
    {
      goto LABEL_110;
    }

    v203[v24++] = *(v37 + 48);
    if (v3 == v24)
    {
      goto LABEL_111;
    }
  }

  if (v27 == 7)
  {
    v28 = *&v26[2 * v24];
    v29 = *(this + 24);
    if (v29 <= v28)
    {
      goto LABEL_169;
    }

    v30 = *(this + 25);
LABEL_49:
    v37 = v30 + (v28 << 6);
    goto LABEL_50;
  }

  if ((v27 - 253) >= 2)
  {
    goto LABEL_202;
  }

LABEL_110:
  if (v3 == v24)
  {
    goto LABEL_111;
  }

LABEL_16:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v23 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_63;
    }

    goto LABEL_197;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v23 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_63:
      re::DynamicArray<unsigned long>::add(a3, v23);
    }

LABEL_193:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v178 = MEMORY[0x1E69E9C10];
    v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v179)
    {
      v180 = 3;
    }

    else
    {
      v180 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v5;
    v209 = 2048;
    v210 = v3;
    _os_log_send_and_compose_impl(v180, v203, &v189, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
LABEL_197:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v181 = MEMORY[0x1E69E9C10];
    v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v182)
    {
      v183 = 3;
    }

    else
    {
      v183 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v5;
    v209 = 2048;
    v210 = v3;
    _os_log_send_and_compose_impl(v183, v203, &v189, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v22 + 9);
  if (!*(v22 + 9))
  {
    goto LABEL_104;
  }

  v5 = v22 + 10;
  v41 = (v8 + 2);
  while (2)
  {
    v43 = *v5++;
    v42 = v43;
    if (v43 > 3)
    {
      if (v42 <= 5)
      {
        if (v42 == 4)
        {
          v66 = *v41;
          v67 = *(v6 + 15);
          if (v67 <= *v41)
          {
            goto LABEL_141;
          }

          v68 = *(v6 + 16) + (v66 << 6);
          v69 = *(v68 + 56);
          v48 = (v68 + 56);
          v47 = v69;
          if (v69 != -1)
          {
            goto LABEL_102;
          }

          v47 = *(v6 + 523);
          *(v6 + 523) = v47 + 1;
        }

        else
        {
          if (v42 != 5)
          {
            goto LABEL_201;
          }

          v50 = *v41;
          v51 = *(v6 + 18);
          if (v51 <= *v41)
          {
            goto LABEL_145;
          }

          v52 = *(v6 + 19) + (v50 << 6);
          v53 = *(v52 + 56);
          v48 = (v52 + 56);
          v47 = v53;
          if (v53 != -1)
          {
            goto LABEL_102;
          }

          v47 = *(v6 + 524);
          *(v6 + 524) = v47 + 1;
        }

        goto LABEL_101;
      }

      if (v42 == 6)
      {
        v74 = *v41;
        v75 = *(v6 + 21);
        if (v75 <= *v41)
        {
          goto LABEL_125;
        }

        v76 = *(v6 + 22) + (v74 << 6);
        v77 = *(v76 + 56);
        v48 = (v76 + 56);
        v47 = v77;
        if (v77 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 525);
        *(v6 + 525) = v47 + 1;
        goto LABEL_101;
      }

      if (v42 == 7)
      {
        v58 = *v41;
        v59 = *(v6 + 24);
        if (v59 <= *v41)
        {
          goto LABEL_133;
        }

        v60 = *(v6 + 25) + (v58 << 6);
        v61 = *(v60 + 56);
        v48 = (v60 + 56);
        v47 = v61;
        if (v61 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 526);
        *(v6 + 526) = v47 + 1;
        goto LABEL_101;
      }

LABEL_201:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v42);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v184);
      __break(1u);
LABEL_202:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v27);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v185);
      __break(1u);
      return this;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v70 = *v41;
        v71 = *(v6 + 9);
        if (v71 <= *v41)
        {
          goto LABEL_121;
        }

        v72 = *(v6 + 10) + (v70 << 6);
        v73 = *(v72 + 56);
        v48 = (v72 + 56);
        v47 = v73;
        if (v73 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 521);
        *(v6 + 521) = v47 + 1;
      }

      else
      {
        if (v42 != 3)
        {
          goto LABEL_201;
        }

        v54 = *v41;
        v55 = *(v6 + 12);
        if (v55 <= *v41)
        {
          goto LABEL_129;
        }

        v56 = *(v6 + 13) + (v54 << 6);
        v57 = *(v56 + 56);
        v48 = (v56 + 56);
        v47 = v57;
        if (v57 != -1)
        {
          goto LABEL_102;
        }

        v47 = *(v6 + 522);
        *(v6 + 522) = v47 + 1;
      }

LABEL_101:
      *v48 = v47;
      goto LABEL_102;
    }

    if (!v42)
    {
      v62 = *v41;
      v63 = *(v6 + 3);
      if (v63 <= *v41)
      {
        goto LABEL_137;
      }

      v64 = *(v6 + 4) + (v62 << 6);
      v65 = *(v64 + 56);
      v48 = (v64 + 56);
      v47 = v65;
      if (v65 != -1)
      {
        goto LABEL_102;
      }

      v47 = *(v6 + 519);
      *(v6 + 519) = v47 + 1;
      goto LABEL_101;
    }

    if (v42 != 1)
    {
      goto LABEL_201;
    }

    v44 = *v41;
    v45 = *(v6 + 6);
    if (v45 <= *v41)
    {
      goto LABEL_149;
    }

    v46 = *(v6 + 7) + (v44 << 6);
    v49 = *(v46 + 56);
    v48 = (v46 + 56);
    v47 = v49;
    if (v49 == -1)
    {
      v47 = *(v6 + 520);
      *(v6 + 520) = v47 + 1;
      goto LABEL_101;
    }

LABEL_102:
    *&v189 = v47;
    re::DynamicArray<unsigned long>::add(a3, &v189);
    ++v41;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 21);
LABEL_104:
  if (v5 <= v4)
  {
LABEL_189:
    v203[0] = 0;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v189 = 0u;
    v175 = MEMORY[0x1E69E9C10];
    v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v204 = 136315906;
    *&v204[4] = "operator[]";
    v205 = 1024;
    if (v176)
    {
      v177 = 3;
    }

    else
    {
      v177 = 2;
    }

    v206 = 468;
    v207 = 2048;
    v208 = v4;
    v209 = 2048;
    v210 = v5;
    _os_log_send_and_compose_impl(v177, v203, &v189, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v204, 38, v186, v187);
    _os_crash_msg();
    __break(1u);
    goto LABEL_193;
  }

  v78 = *(v6 + 22) + (v4 << 6);
  v81 = *(v78 + 56);
  v80 = (v78 + 56);
  v79 = v81;
  if (v81 == -1)
  {
    v79 = *(v6 + 525);
    *(v6 + 525) = v79 + 1;
    *v80 = v79;
  }

  *&v189 = v79;
  re::DynamicArray<unsigned long>::add(a3, &v189);
}

char *re::anonymous namespace::RegisterMapping::processRegister<re::Vector3<float>>(char *this, unint64_t a2, _anonymous_namespace_ *a3)
{
  v4 = a2;
  v191 = *MEMORY[0x1E69E9840];
  v5 = *(this + 24);
  if (v5 <= a2)
  {
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v77 = MEMORY[0x1E69E9C10];
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v4;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v78, v185, &v171, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v79 = MEMORY[0x1E69E9C10];
    v80 = v57;
    v81 = v58;
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v80;
    v189 = 2048;
    v190 = v81;
    _os_log_send_and_compose_impl(v83, v185, &v171, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_105:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = v61;
    v86 = v62;
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v85;
    v189 = 2048;
    v190 = v86;
    _os_log_send_and_compose_impl(v88, v185, &v171, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_109:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = v41;
    v91 = v42;
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v90;
    v189 = 2048;
    v190 = v91;
    _os_log_send_and_compose_impl(v93, v185, &v171, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_113:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v94 = MEMORY[0x1E69E9C10];
    v95 = v45;
    v96 = v46;
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v95;
    v189 = 2048;
    v190 = v96;
    _os_log_send_and_compose_impl(v98, v185, &v171, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_117:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = v49;
    v101 = v50;
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v100;
    v189 = 2048;
    v190 = v101;
    _os_log_send_and_compose_impl(v103, v185, &v171, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_121:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = v53;
    v106 = v54;
    v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v107)
    {
      v108 = 3;
    }

    else
    {
      v108 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v105;
    v189 = 2048;
    v190 = v106;
    _os_log_send_and_compose_impl(v108, v185, &v171, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_125:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v109 = MEMORY[0x1E69E9C10];
    v110 = v37;
    v111 = v38;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v110;
    v189 = 2048;
    v190 = v111;
    _os_log_send_and_compose_impl(v113, v185, &v171, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_129:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = v31;
    v116 = v32;
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v115;
    v189 = 2048;
    v190 = v116;
    _os_log_send_and_compose_impl(v118, v185, &v171, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_133:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = v19;
    v121 = v27;
    v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v122)
    {
      v123 = 3;
    }

    else
    {
      v123 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v120;
    v189 = 2048;
    v190 = v121;
    _os_log_send_and_compose_impl(v123, &v170, &v171, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v124 = MEMORY[0x1E69E9C10];
    v125 = v19;
    v126 = v24;
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v125;
    v189 = 2048;
    v190 = v126;
    _os_log_send_and_compose_impl(v128, &v170, &v171, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_141:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = v19;
    v131 = v26;
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v130;
    v189 = 2048;
    v190 = v131;
    _os_log_send_and_compose_impl(v133, &v170, &v171, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_145:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = v19;
    v136 = v22;
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v135;
    v189 = 2048;
    v190 = v136;
    _os_log_send_and_compose_impl(v138, &v170, &v171, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = v17;
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v140;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v142, &v170, &v171, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = v19;
    v145 = v23;
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v144;
    v189 = 2048;
    v190 = v145;
    _os_log_send_and_compose_impl(v147, &v170, &v171, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = v19;
    v150 = v25;
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v149;
    v189 = 2048;
    v190 = v150;
    _os_log_send_and_compose_impl(v152, &v170, &v171, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v170 = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v153 = v19;
    v154 = v20;
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v153;
    v189 = 2048;
    v190 = v154;
    _os_log_send_and_compose_impl(v156, &v170, &v171, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_165;
  }

  v6 = this;
  v7 = *(this + 25);
  v8 = (v7 + (a2 << 6));
  if (*(v8 + 40) == 2)
  {
    return this;
  }

  v9 = *v8;
  if (v9 <= 7)
  {
    v171 = 0u;
    re::EvaluationTree::getInputValue<re::Vector3<float>>(*(this + 1), a2, &v171);
  }

  v11 = &(&re::kEvaluationCommandDescriptions)[2 * v9];
  if ((this[3824] & 1) == 0)
  {
    goto LABEL_6;
  }

  memset(v185, 0, sizeof(v185));
  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
LABEL_95:
    *v186 = 0uLL;
    v185[v3] = *(v8 + 6);
    v69 = *(v6 + 481);
    v171.n128_u64[0] = *(v6 + 483);
    v171.n128_u64[1] = v69;
    v70 = *(v6 + 486);
    *&v172 = *(v6 + 488);
    *(&v172 + 1) = v70;
    v71 = *(v6 + 491);
    *&v173 = *(v6 + 493);
    *(&v173 + 1) = v71;
    v72 = *(v6 + 496);
    *&v174 = *(v6 + 498);
    *(&v174 + 1) = v72;
    v73 = *(v6 + 501);
    *&v175 = *(v6 + 503);
    *(&v175 + 1) = v73;
    v74 = *(v6 + 506);
    v176 = *(v6 + 508);
    v177 = v74;
    v75 = *(v6 + 511);
    v178 = *(v6 + 513);
    v179 = v75;
    v76 = *(v6 + 516);
    v180 = *(v6 + 518);
    v181 = v76;
    v183 = 0;
    v184 = 0;
    v182 = 0;
  }

  v13 = 0;
  v14 = v11 + 10;
  v15 = v8 + 2;
  while (1)
  {
    v16 = v14[v13];
    if (v14[v13] <= 3u)
    {
      if (v14[v13] > 1u)
      {
        if (v16 == 2)
        {
          v19 = *&v15[2 * v13];
          v25 = *(this + 9);
          if (v25 <= v19)
          {
            goto LABEL_157;
          }

          v21 = *(this + 10);
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_178;
          }

          v19 = *&v15[2 * v13];
          v22 = *(this + 12);
          if (v22 <= v19)
          {
            goto LABEL_145;
          }

          v21 = *(this + 13);
        }
      }

      else if (v14[v13])
      {
        v19 = *&v15[2 * v13];
        v20 = *(this + 6);
        if (v20 <= v19)
        {
          goto LABEL_161;
        }

        v21 = *(this + 7);
      }

      else
      {
        v19 = *&v15[2 * v13];
        v24 = *(this + 3);
        if (v24 <= v19)
        {
          goto LABEL_137;
        }

        v21 = *(this + 4);
      }

      goto LABEL_39;
    }

    if (v14[v13] <= 5u)
    {
      if (v16 == 4)
      {
        v19 = *&v15[2 * v13];
        v27 = *(this + 15);
        if (v27 <= v19)
        {
          goto LABEL_133;
        }

        v21 = *(this + 16);
      }

      else
      {
        if (v16 != 5)
        {
          goto LABEL_178;
        }

        v19 = *&v15[2 * v13];
        v23 = *(this + 18);
        if (v23 <= v19)
        {
          goto LABEL_153;
        }

        v21 = *(this + 19);
      }

      goto LABEL_39;
    }

    if (v16 == 6)
    {
      v19 = *&v15[2 * v13];
      v26 = *(this + 21);
      if (v26 <= v19)
      {
        goto LABEL_141;
      }

      v21 = *(this + 22);
LABEL_39:
      v18 = v21 + (v19 << 6);
      goto LABEL_40;
    }

    if (v16 != 7)
    {
      break;
    }

    v17 = *&v15[2 * v13];
    if (v5 <= v17)
    {
      goto LABEL_149;
    }

    v18 = v7 + (v17 << 6);
LABEL_40:
    if (!v18 || *(v18 + 40) != 3)
    {
      goto LABEL_94;
    }

    v185[v13++] = *(v18 + 48);
    if (v3 == v13)
    {
      goto LABEL_95;
    }
  }

  if ((v16 - 253) >= 2)
  {
    goto LABEL_178;
  }

LABEL_94:
  if (v3 == v13)
  {
    goto LABEL_95;
  }

LABEL_6:
  if (v9 == 76)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 27);
    if (v3 > v5)
    {
      v12 = (*(v6 + 28) + 904 * v5 + 896);
      goto LABEL_47;
    }

    goto LABEL_173;
  }

  if (v9 == 77)
  {
    {
    }

    v5 = *(v8 + 1);
    v3 = *(v6 + 30);
    if (v3 > v5)
    {
      v12 = (*(v6 + 31) + 248 * v5 + 240);
LABEL_47:
      re::DynamicArray<unsigned long>::add(a3, v12);
    }

LABEL_169:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v160 = MEMORY[0x1E69E9C10];
    v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v161)
    {
      v162 = 3;
    }

    else
    {
      v162 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v5;
    v189 = 2048;
    v190 = v3;
    _os_log_send_and_compose_impl(v162, v185, &v171, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v163 = MEMORY[0x1E69E9C10];
    v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v164)
    {
      v165 = 3;
    }

    else
    {
      v165 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v5;
    v189 = 2048;
    v190 = v3;
    _os_log_send_and_compose_impl(v165, v185, &v171, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v11 + 9);
  if (!*(v11 + 9))
  {
    goto LABEL_88;
  }

  v5 = v11 + 10;
  v28 = (v8 + 2);
  while (2)
  {
    v30 = *v5++;
    v29 = v30;
    if (v30 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v53 = *v28;
          v54 = *(v6 + 15);
          if (v54 <= *v28)
          {
            goto LABEL_121;
          }

          v55 = *(v6 + 16) + (v53 << 6);
          v56 = *(v55 + 56);
          v35 = (v55 + 56);
          v34 = v56;
          if (v56 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 523);
          *(v6 + 523) = v34 + 1;
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_177;
          }

          v37 = *v28;
          v38 = *(v6 + 18);
          if (v38 <= *v28)
          {
            goto LABEL_125;
          }

          v39 = *(v6 + 19) + (v37 << 6);
          v40 = *(v39 + 56);
          v35 = (v39 + 56);
          v34 = v40;
          if (v40 != -1)
          {
            goto LABEL_86;
          }

          v34 = *(v6 + 524);
          *(v6 + 524) = v34 + 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v61 = *v28;
        v62 = *(v6 + 21);
        if (v62 <= *v28)
        {
          goto LABEL_105;
        }

        v63 = *(v6 + 22) + (v61 << 6);
        v64 = *(v63 + 56);
        v35 = (v63 + 56);
        v34 = v64;
        if (v64 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 525);
        *(v6 + 525) = v34 + 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v45 = *v28;
        v46 = *(v6 + 24);
        if (v46 <= *v28)
        {
          goto LABEL_113;
        }

        v47 = *(v6 + 25) + (v45 << 6);
        v48 = *(v47 + 56);
        v35 = (v47 + 56);
        v34 = v48;
        if (v48 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 526);
        *(v6 + 526) = v34 + 1;
        goto LABEL_85;
      }

LABEL_177:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1823, v29);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v166);
      __break(1u);
LABEL_178:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processRegister", 1778, v16);
      this = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v167);
      __break(1u);
      return this;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v57 = *v28;
        v58 = *(v6 + 9);
        if (v58 <= *v28)
        {
          goto LABEL_101;
        }

        v59 = *(v6 + 10) + (v57 << 6);
        v60 = *(v59 + 56);
        v35 = (v59 + 56);
        v34 = v60;
        if (v60 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 521);
        *(v6 + 521) = v34 + 1;
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_177;
        }

        v41 = *v28;
        v42 = *(v6 + 12);
        if (v42 <= *v28)
        {
          goto LABEL_109;
        }

        v43 = *(v6 + 13) + (v41 << 6);
        v44 = *(v43 + 56);
        v35 = (v43 + 56);
        v34 = v44;
        if (v44 != -1)
        {
          goto LABEL_86;
        }

        v34 = *(v6 + 522);
        *(v6 + 522) = v34 + 1;
      }

LABEL_85:
      *v35 = v34;
      goto LABEL_86;
    }

    if (!v29)
    {
      v49 = *v28;
      v50 = *(v6 + 3);
      if (v50 <= *v28)
      {
        goto LABEL_117;
      }

      v51 = *(v6 + 4) + (v49 << 6);
      v52 = *(v51 + 56);
      v35 = (v51 + 56);
      v34 = v52;
      if (v52 != -1)
      {
        goto LABEL_86;
      }

      v34 = *(v6 + 519);
      *(v6 + 519) = v34 + 1;
      goto LABEL_85;
    }

    if (v29 != 1)
    {
      goto LABEL_177;
    }

    v31 = *v28;
    v32 = *(v6 + 6);
    if (v32 <= *v28)
    {
      goto LABEL_129;
    }

    v33 = *(v6 + 7) + (v31 << 6);
    v36 = *(v33 + 56);
    v35 = (v33 + 56);
    v34 = v36;
    if (v36 == -1)
    {
      v34 = *(v6 + 520);
      *(v6 + 520) = v34 + 1;
      goto LABEL_85;
    }

LABEL_86:
    v171.n128_u64[0] = v34;
    re::DynamicArray<unsigned long>::add(a3, &v171);
    ++v28;
    if (--v3)
    {
      continue;
    }

    break;
  }

  v5 = *(v6 + 24);
LABEL_88:
  if (v5 <= v4)
  {
LABEL_165:
    v185[0] = 0;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    v157 = MEMORY[0x1E69E9C10];
    v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v186 = 136315906;
    *&v186[4] = "operator[]";
    *&v186[12] = 1024;
    if (v158)
    {
      v159 = 3;
    }

    else
    {
      v159 = 2;
    }

    *&v186[14] = 468;
    v187 = 2048;
    v188 = v4;
    v189 = 2048;
    v190 = v5;
    _os_log_send_and_compose_impl(v159, v185, &v171, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v186, 38, v168, v169);
    _os_crash_msg();
    __break(1u);
    goto LABEL_169;
  }

  v65 = *(v6 + 25) + (v4 << 6);
  v68 = *(v65 + 56);
  v67 = (v65 + 56);
  v66 = v68;
  if (v68 == -1)
  {
    v66 = *(v6 + 526);
    *(v6 + 526) = v66 + 1;
    *v67 = v66;
  }

  v171.n128_u64[0] = v66;
  re::DynamicArray<unsigned long>::add(a3, &v171);
}