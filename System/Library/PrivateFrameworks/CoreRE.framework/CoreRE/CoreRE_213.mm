uint64_t re::TypeInfo::enumConstants(re::TypeInfo *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!*(v1 + 92))
  {
    return 0;
  }

  v2 = *(v1 + 88);
  v3 = *(*this + 344);
  if (v3 <= v2)
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

  return *(*this + 360) + 24 * v2;
}

uint64_t re::Slice<re::EnumConstant>::first(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232, v2, v3);
    result = _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeInfo::copy(re::TypeInfo *this, void **a2, char **a3, re::Allocator *a4, void *a5)
{
  v10 = *(this + 12);
  if (v10 <= 5)
  {
    if (*(this + 12) <= 3u)
    {
      if (v10 - 1 >= 2)
      {
        if (v10 == 3)
        {
          re::TypeInfo::TypeInfo(&v46, this);
          if ((*(v49 + 88))(a3))
          {
            re::TypeInfo::TypeInfo(&v46, this);
            re::TypeInfo::TypeInfo(&v42, this);
            v20 = (*(v44 + 88))(a3);
            (*(v49 + 96))(a2, v20);
          }

          else
          {
            re::TypeInfo::TypeInfo(&v46, this);
            (*(v49 + 96))(a2, 0);
          }
        }
      }

      else
      {
        memcpy(a2, a3, *(*(this + 2) + 8));
      }

      return 1;
    }

    if (v10 == 4)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v31 = re::ArrayAccessor::size(&v42, a3);
      v32 = re::ArrayAccessor::size(&v42, a3);
      re::ArrayAccessor::reset(&v42, a2, a4, v32);
      if (v31)
      {
        v33 = 0;
        while (1)
        {
          v34 = re::ArrayAccessor::elementAt(&v42, a2, v33);
          v35 = re::ArrayAccessor::elementAt(&v42, a3, v33);
          if ((re::TypeInfo::copy(v40, v34, v35, a4, a5) & 1) == 0)
          {
            break;
          }

          if (v31 == ++v33)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else if (v10 == 5)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v15 = (*(v44 + 88))(a3);
      v16 = *(v44 + 96);
      re::TypeInfo::TypeInfo(&v46, &v42);
      v16(a2, &v46, a4, v15);
      if (v15)
      {
        v17 = 0;
        while (1)
        {
          v18 = (*(v44 + 104))(a2, v17);
          v19 = (*(v44 + 104))(a3, v17);
          if ((re::TypeInfo::copy(v40, v18, v19, a4, a5) & 1) == 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    return 1;
  }

  if (*(this + 12) <= 7u)
  {
    if (v10 == 6)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 88), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v21 = (*(v44 + 120))(a3, a4);
      while ((*(v44 + 128))(v21))
      {
        v22 = (*(v44 + 136))(v21);
        v23 = (*(v44 + 112))(a2, &v42, a4, v22);
        if (v23)
        {
          v24 = v23;
          v25 = (*(v44 + 144))(v21);
          if (re::TypeInfo::copy(v40, v24, v25, a4, a5))
          {
            continue;
          }
        }

        return 0;
      }
    }

    else if (v10 == 7)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::UnionAccessor::activeMemberType(&v46, &v42, a3);
      if (v46)
      {
        Tag = re::UnionAccessor::readTag(&v42, a3);
        re::UnionAccessor::reset(&v42, a2, Tag, a4);
        return re::TypeInfo::copy(v47, a2, a3, a4, a5);
      }
    }

    return 1;
  }

  if (v10 != 8)
  {
    if (v10 != 9)
    {
      return 1;
    }

    v13 = *a3;
    v14 = *a2;
    if (!*a3)
    {
      if (v14)
      {
        re::TypeInfo::releaseInstance(this, v14, a4, 0);
      }

      *a2 = 0;
      return 1;
    }

    if (!v14 || (re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46), re::TypeInfo::TypeInfo(&v42, v47), v43 != 8) || *(v44 + 88) < 2u || (re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), v40), re::TypeInfo::getActualTypeFromPointer(&v46, v40, a2), re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), v39), re::TypeInfo::getActualType(&v36, v39, v13), v46 == v36) && v47[0] == v37 && v47[1] == HIWORD(v37) && ((v48 ^ v38) & 0xFFFFFF) == 0)
    {
      if (*a2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), &v46);
      re::TypeInfo::releaseInstance(&v46, *a2, a4, 0);
      *a2 = 0;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
    re::TypeInfo::TypeInfo(&v42, v47);
    *a2 = re::TypeInfo::createInstance(&v42, a4, 0);
LABEL_64:
    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
    re::TypeInfo::TypeInfo(&v42, v47);
    return (re::TypeInfo::copy(&v42, *a2, v13, a4, a5) & 1) != 0;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
  if (v46 != 1 || (re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46), re::TypeInfo::TypeInfo(&v42, v47), !*(v44 + 96)) && (re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46), v46 != 1) || (result = re::TypeInfo::copy(&v42, a2, a3, a4, a5), result))
  {
    re::TypeMemberCollection::TypeMemberCollection(&v42, *this, *(this + 2));
    if (!v45)
    {
LABEL_46:
      v27 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      if (!v27)
      {
      }

      if (*v27 >> 1 == 0x134375A94D9F7110 && ((v28 = v27[1], v28 == "DynamicString") || !strcmp(v28, "DynamicString")))
      {
        re::DynamicString::operator=(a2, a3);
      }

      else
      {
        v29 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
        if (!v29)
        {
        }

        if (*v29 >> 1 == 0x22C6ED80D0CLL)
        {
          v30 = v29[1];
          if (v30 == "StringID" || !strcmp(v30, "StringID"))
          {
            re::StringID::operator=(a2, a3);
          }
        }
      }

      return 1;
    }

    v26 = 0;
    while (1)
    {
      re::TypeMemberCollection::operator[](&v42, v26, v40);
      if (*(v41 + 28) == 1)
      {
        re::TypeRegistry::typeInfo(v40[0], *v41, &v46);
        re::TypeInfo::TypeInfo(v39, v47);
        result = re::TypeInfo::copy(v39, (a2 + *(v41 + 24)), (a3 + *(v41 + 24)), a4, a5);
        if (!result)
        {
          break;
        }
      }

      if (++v26 >= v45)
      {
        if (v45)
        {
          return 1;
        }

        goto LABEL_46;
      }
    }
  }

  return result;
}

uint64_t *re::TypeInfo::getActualTypeFromPointer@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, char *a3@<X1>)
{
  v32[11] = *MEMORY[0x1E69E9840];
  v4 = this[2];
  if ((*(v4 + 100) & 0xFFFFFF) != 0 && *(v4 + 104) && (v6 = this, re::TypeRegistry::typeInfo(*this, *(v4 + 96), v32), re::TypeInfo::TypeInfo(v22, &v32[1]), Unsigned = re::internal::readUnsigned(&a3[*(v6[2] + 104)], v22, v7), re::TypeRegistry::typeInfo(*v6, *(v6[2] + 80), v32), re::TypeInfo::TypeInfo(&v24, &v32[1]), re::TypeInfo::rootClass(&v20, &v24), this = re::DataArray<re::internal::TypeInfoIndex>::get(*v6 + 32, *v21), v9 = *(v21 + 88), v9))
  {
    v10 = *this & 0xFFFFFF;
    v11 = *v6;
    v12 = *(*v6 + 624);
    while (1)
    {
      v13 = v10;
      if (v12 <= v10)
      {
        v23 = 0;
        memset(v32, 0, 80);
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

        v27 = 797;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v12;
        _os_log_send_and_compose_impl(v18, &v23, v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v19, v20);
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(v11 + 640) + 176 * v10;
      if (*(v14 + 128) == 1 && *(v14 + 136) == Unsigned)
      {
        break;
      }

      v10 = v13 + 1;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v15 = *v14;
    *a1 = v11;
    a1[1] = v15;
  }

  else
  {
LABEL_9:
    *a1 = 0;
    a1[1] = 0xFFFFFFFFLL;
  }

  return this;
}

uint64_t *re::TypeInfo::getActualType@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>, char *a3@<X1>)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 2) + 152);
  if (v6)
  {

    return v6(a3, this);
  }

  else
  {
    re::TypeInfo::rootClass(v24, this);
    result = re::TypeInfo::customClassIDMember(v22, v24);
    if (LOBYTE(v22[0]) == 1 && (v8 = v23, re::TypeRegistry::typeInfo(v22[1], *v23, v35), re::TypeInfo::TypeInfo(v21, v35 + 8), Unsigned = re::internal::readUnsigned(&a3[*(v8 + 6)], v21, v9), result = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, *v25), v11 = *(v25 + 88), v11))
    {
      v12 = *result & 0xFFFFFF;
      v13 = *this;
      v14 = *(*this + 624);
      while (1)
      {
        v15 = v12;
        if (v14 <= v12)
        {
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

          v30 = 797;
          v31 = 2048;
          v32 = v15;
          v33 = 2048;
          v34 = v14;
          _os_log_send_and_compose_impl(v20, &v26, v35, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v21[0], v21[1]);
          _os_crash_msg();
          __break(1u);
        }

        v16 = *(v13 + 640) + 176 * v12;
        if (*(v16 + 128) == 1 && *(v16 + 136) == Unsigned)
        {
          break;
        }

        v12 = v15 + 1;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      v17 = *v16;
      *a1 = v13;
      a1[1] = v17;
    }

    else
    {
LABEL_12:
      *a1 = 0;
      a1[1] = 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t re::TypeInfo::isInteger(re::TypeInfo *this)
{
  v3 = *(this + 12);
  if (v3 == 2)
  {
    v7[6] = v1;
    v7[7] = v2;
    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v6);
    re::TypeInfo::TypeInfo(v5, v7);
    return re::TypeInfo::isInteger(v5);
  }

  else
  {
    return v3 == 1 && *(*(this + 2) + 80) == 1;
  }
}

uint64_t re::TypeInfo::renamedEnumConstants(re::TypeInfo *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!v1[24])
  {
    return 0;
  }

  v2 = (v1[23] + v1[22]);
  v3 = *(*this + 344);
  if (v3 <= v2)
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

  return *(*this + 360) + 24 * v2;
}

uint64_t *re::TypeInfo::unionMember@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>, uint64_t a3@<X1>)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = *(*(this + 2) + 92) + a3;
  v7 = v5[73];
  if (v7 <= v6)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  re::TypeRegistry::typeInfo(v5, *(v5[75] + 8 * v6), v21);
  return re::TypeInfo::TypeInfo(a1, v21 + 8);
}

BOOL re::TypeInfo::isSubClassOf(void **a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    return 0;
  }

  v4 = *re::DataArray<re::internal::TypeInfoIndex>::get((*a1 + 4), *a1[2]);
  v5 = *re::DataArray<re::internal::TypeInfoIndex>::get((*a1 + 4), a2[1]) & 0xFFFFFF;
  v6 = (*a1)[78];
  if (v6 <= v5)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v6;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  return v5 < (v4 & 0xFFFFFFu) && (v4 & 0xFFFFFFu) < *((*a1)[80] + 176 * v5 + 88) + v5;
}

uint64_t *re::TypeInfo::rootClass@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  for (i = *this; (*(v4 + 84) & 0xFFFFFF) != 0; v4 = i[80] + 176 * v6)
  {
    v6 = *re::DataArray<re::internal::TypeInfoIndex>::get((i + 4), *(v4 + 80)) & 0xFFFFFFLL;
    i = *this;
    v7 = *(*this + 624);
    if (v7 <= v6)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 797;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }
  }

  re::TypeRegistry::typeInfo(i, *v4, v21);
  return re::TypeInfo::TypeInfo(a1, v21 + 8);
}

uint64_t re::TypeInfo::subClassCount(re::TypeInfo *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v3 = *(*(this + 2) + 88);
  if (v3 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *v2 & 0xFFFFFF;
  v6 = v3 - 1;
  v7 = v5 + 1;
  v8 = 176 * v5 + 256;
  do
  {
    v9 = *(*this + 624);
    if (v9 <= v7)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v11 = MEMORY[0x1E69E9C10];
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v18 = 797;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v9;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    if ((*re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, *(*(*this + 640) + v8)) & 0xFFFFFF) == v5)
    {
      ++v4;
    }

    ++v7;
    v8 += 176;
    --v6;
  }

  while (v6);
  return v4;
}

uint64_t re::TypeInfo::subClass@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v10 = *(*(this + 2) + 88);
  if (v10 >= 2)
  {
    v11 = *v8 & 0xFFFFFF;
    v12 = v10 - 1;
    v13 = v11 + 1;
    v3 = 176 * v11;
    v14 = a2;
    do
    {
      v15 = *this;
      v16 = *(*this + 624);
      if (v16 <= v13)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        v18 = MEMORY[0x1E69E9C10];
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v27 = 797;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v16;
        _os_log_send_and_compose_impl(v19, &v23, v32, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
        _os_crash_msg();
        __break(1u);
      }

      v4 = v15[80];
      if ((*re::DataArray<re::internal::TypeInfoIndex>::get((v15 + 4), *(v4 + v3 + 256)) & 0xFFFFFF) == v11)
      {
        if (!v14)
        {
          goto LABEL_9;
        }

        --v14;
      }

      ++v13;
      v3 += 176;
      --v12;
    }

    while (v12);
  }

  re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Index out of range. Index: %zu", "!Unreachable code", "subClass", 985, a2);
  _os_crash("assertion failure: (!Unreachable code) Index out of range. Index: %zu", v20);
  __break(1u);
LABEL_9:
  re::TypeRegistry::typeInfo(*this, *(v4 + v3 + 176), v32);
  return re::TypeInfo::TypeInfo(a3, v32 + 8);
}

uint64_t *re::TypeInfo::derivedClass@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>, uint64_t a3@<X1>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = (*re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2)) & 0xFFFFFF) + a3;
  v6 = *this;
  v7 = v5 + 1;
  v8 = *(*this + 624);
  if (v8 <= v5 + 1)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::TypeRegistry::typeInfo(v6, *(v6[80] + 176 * v7), v22);
  return re::TypeInfo::TypeInfo(a1, v22 + 8);
}

uint64_t re::TypeInfo::renamedObjectMembers(re::TypeInfo *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!*(v1 + 104))
  {
    return 0;
  }

  v2 = *(v1 + 100);
  v3 = *(*this + 704);
  if (v3 <= v2)
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

  return *(*this + 720) + 24 * v2;
}

uint64_t *re::TypeInfo::customClassIDMember@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = this[2];
  v3 = *(v2 + 144);
  if ((v3 & 0x80000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v4 = *this;
    v5 = *(*this + 664);
    if (v5 <= v3)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 797;
      v17 = 2048;
      v18 = v3;
      v19 = 2048;
      v20 = v5;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(v4 + 680) + 40 * v3;
    a1[1] = v4;
    a1[2] = v2;
    a1[3] = v6;
    v7 = *(v4 + 24);
    *(a1 + 8) = -1;
    *(a1 + 9) = v7;
    v8 = 1;
  }

  *a1 = v8;
  return this;
}

uint64_t *re::TypeInfo::polymorphicObjectName(re::TypeInfo *this)
{
  v2 = *(this + 2);
  result = (v2 + 112);
  if (*(v2 + 112) >= 0xFFFFFFFFFFFFFFFELL && (*(v2 + 112) & 1) == 0 && !**(v2 + 120))
  {
    result = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, *v2);
    if (!result)
    {
    }
  }

  return result;
}

uint64_t *re::TypeInfo::typeIDForCustomClassID@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>, uint64_t a3@<X1>)
{
  v29 = *MEMORY[0x1E69E9840];
  result = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v7 = *(*(this + 2) + 88);
  if (v7)
  {
    v8 = *result & 0xFFFFFF;
    v9 = *this;
    v10 = *(*this + 624);
    if (v10 <= v8)
    {
      v11 = *result & 0xFFFFFF;
    }

    else
    {
      v11 = v10;
    }

    v12 = v11 - v8;
    v13 = 176 * v8;
    while (1)
    {
      if (!v12)
      {
        v19 = 0;
        memset(v28, 0, sizeof(v28));
        v16 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 797;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v10;
        _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v14 = v9[80];
      if (*(v14 + v13 + 128) == 1 && *(v14 + v13 + 136) == a3)
      {
        break;
      }

      v13 += 176;
      --v12;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v15 = *(v14 + v13);
    *a1 = v9;
    a1[1] = v15;
  }

  else
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0xFFFFFFFFLL;
  }

  return result;
}

BOOL re::TypeInfo::isPointerToPolymorphicType(re::TypeInfo *this)
{
  if (*(this + 12) != 9)
  {
    return 0;
  }

  v7[6] = v1;
  v7[7] = v2;
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v6);
  re::TypeInfo::TypeInfo(v4, v7);
  return v4[12] == 8 && *(v5 + 88) > 1u;
}

void re::TypeInfo::setActualTypeForPointer(void *result, uint64_t a2, re **a3)
{
  if (*a3)
  {
    if (*(result + 12) == 9)
    {
      v4 = result[2];
      if ((*(v4 + 100) & 0xFFFFFF) != 0)
      {
        if (*(v4 + 104))
        {
          re::TypeRegistry::typeInfo(*result, a3, v8);
          if (LOBYTE(v8[0]) == 1 && *(v9 + 128) == 1)
          {
            v6 = *(v9 + 136);
            re::TypeRegistry::typeInfo(*result, *(result[2] + 96), &v10);
            re::TypeInfo::TypeInfo(v7, &v11);
            re::internal::writeUnsigned((a2 + *(result[2] + 104)), v7, v6);
          }
        }
      }
    }
  }
}

uint64_t re::TypeInfo::isDependentOn(unint64_t *a1, void *a2, uint64_t a3, double a4)
{
  if (!*a2)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *a1[2];
  if (*a1 == *a2)
  {
    v9 = a2[1];
    if (*a1[2] == v9)
    {
      v11 = WORD1(v8) == WORD1(v9);
      v10 = (v9 ^ v8) & 0xFFFFFF00000000;
      v11 = v11 && v10 == 0;
      if (v11)
      {
        return 1;
      }
    }
  }

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v14 = ((v13 ^ (v13 >> 31)) + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v12 ^ (v12 >> 31);
  v15 = *(a3 + 24);
  if (v15)
  {
    v16 = v14 % v15;
    v17 = *(*(a3 + 8) + 4 * (v14 % v15));
    if (v17 != 0x7FFFFFFF)
    {
      v18 = *a1[2];
      v19 = v17;
      while (1)
      {
        v20 = *(a3 + 16) + 32 * v19;
        if (*(v20 + 16) == v7 && __PAIR64__(*(v20 + 26), *(v20 + 24)) == __PAIR64__(WORD1(v8), v18) && ((*(v20 + 28) ^ HIDWORD(v8)) & 0xFFFFFF) == 0)
        {
          return 0;
        }

        v19 = *(v20 + 8) & 0x7FFFFFFF;
        if (v19 == 0x7FFFFFFF)
        {
          v49[0].n128_u64[0] = *a1;
          v49[0].n128_u64[1] = v8;
          while (1)
          {
            v21 = *(a3 + 16) + 32 * v17;
            if (*(v21 + 16) == v7 && __PAIR64__(*(v21 + 26), *(v21 + 24)) == __PAIR64__(WORD1(v8), v18) && ((*(v21 + 28) ^ HIDWORD(v8)) & 0xFFFFFF) == 0)
            {
              goto LABEL_24;
            }

            v17 = *(v21 + 8) & 0x7FFFFFFF;
            if (v17 == 0x7FFFFFFF)
            {
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v49[0].n128_u64[0] = *a1;
  v49[0].n128_u64[1] = v8;
LABEL_23:
  *&a4 = re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(a3, v16, v14, v49).n128_u64[0];
  ++*(a3 + 40);
LABEL_24:
  result = 0;
  v23 = *(a1 + 12);
  if (v23 > 5)
  {
    if (*(a1 + 12) > 7u)
    {
      if (v23 != 8)
      {
        if (v23 != 9)
        {
          return result;
        }

        re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
        v24 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
        v30 = *a2;
        v25 = &v30;
        return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), &v45);
      if (v45 == 1)
      {
        v37 = *a2;
        if (re::TypeInfo::isDependentOn(v46, &v37, a3))
        {
          return 1;
        }
      }

      re::TypeMemberCollection::TypeMemberCollection(v35, *a1, a1[2]);
      if (v36)
      {
        v29 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v35, v29, v33);
          re::TypeRegistry::typeInfo(v33[0], *v33[2], v49);
          re::TypeInfo::TypeInfo(v34, &v49[0].n128_i64[1]);
          v32 = *a2;
          if (re::TypeInfo::isDependentOn(v34, &v32, a3))
          {
            return 1;
          }
        }

        while (++v29 < v36);
      }

      re::TypeInfo::customClassIDMember(v49, a1);
      if (v49[0].n128_u8[0] == 1)
      {
        re::TypeMemberInfo::memberType(v34, &v49[0].n128_i8[8]);
        v31 = *a2;
        v24 = v34;
        v25 = &v31;
        return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
      }
    }

    else
    {
      if (v23 == 6)
      {
        re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
        v28 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
        v41 = *a2;
        if ((re::TypeInfo::isDependentOn(v28, &v41, a3) & 1) == 0)
        {
          re::TypeRegistry::typeInfoChecked(*a1, *(a1[2] + 88), v49);
          v40 = *a2;
          v24 = v49;
          v25 = &v40;
          return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
        }

        return 1;
      }

      if (v23 != 7)
      {
        return result;
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
      v26 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
      v39 = *a2;
      if (re::TypeInfo::isDependentOn(v26, &v39, a3))
      {
        return 1;
      }

      if (*(a1[2] + 96))
      {
        v27 = 0;
        do
        {
          re::TypeInfo::unionMember(v49, a1, v27);
          v38 = *a2;
          result = re::TypeInfo::isDependentOn(v49[0].n128_u64, &v38, a3);
          if (result)
          {
            break;
          }

          ++v27;
        }

        while (v27 < *(a1[2] + 96));
        return result;
      }
    }

    return 0;
  }

  if (*(a1 + 12) > 3u)
  {
    if (v23 != 4)
    {
      if (v23 != 5)
      {
        return result;
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
      v24 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
      v42 = *a2;
      v25 = &v42;
      return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
    }

    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 88), &v45);
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    re::TypeInfo::TypeInfo(v35, &v49[0].n128_i64[1]);
    v44 = *a2;
    if (re::TypeInfo::isDependentOn(v35, &v44, a3))
    {
      return 1;
    }

    if (v45 == 1)
    {
      v43 = *a2;
      v24 = v46;
      v25 = &v43;
      return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
    }

    return 0;
  }

  if (v23 == 2)
  {
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    v24 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
    v48 = *a2;
    v25 = &v48;
    return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
  }

  if (v23 == 3)
  {
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    v24 = re::TypeInfo::TypeInfo(&v45, &v49[0].n128_i64[1]);
    v47 = *a2;
    v25 = &v47;
    return re::TypeInfo::isDependentOn(v24->n128_u64, v25, a3);
  }

  if (!*(a1 + 12))
  {
    re::internal::assertLog(4, v16, a4, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "isDependentOn", 1304);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
    __break(1u);
  }

  return result;
}

BOOL re::areSameTranslatedVersion(re *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  v4 = *(*a2 + 856);
  if (v4)
  {
    v5 = **(a2 + 2);
    v11[0] = *a2;
    v11[1] = v5;
    re::internal::TypeTranslationTable::translateType(v4, v11, &v9);
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  if (v6 == *this && (v7 = **(this + 2), v10 == v7) && WORD1(v10) == WORD1(v7))
  {
    return ((HIDWORD(v10) ^ HIDWORD(v7)) & 0xFFFFFF) == 0;
  }

  else
  {
    return 0;
  }
}

__n128 re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v24, v11, v10);
          v13 = *v24;
          *v24 = *a1;
          *a1 = v13;
          v14 = *&v24[16];
          *&v24[16] = *(a1 + 16);
          *(a1 + 16) = v14;
          v16 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v15 = *&v24[32];
          *(a1 + 24) = v16;
          v17 = v15;
          if (v15)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              if ((*(*&v24[16] + v18 + 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(a1, *(*&v24[16] + v18) % *(a1 + 24), *(*&v24[16] + v18), (*&v24[16] + v18 + 16));
                v17 = *&v24[32];
              }

              ++v19;
              v18 += 32;
            }

            while (v19 < v17);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 32 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  result = *a4;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return result;
}

uint64_t re::TypeMemberCollection::TypeMemberCollection(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *result = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *(result + 8) = *(a2 + 24);
  v3 = *(a3 + 96);
  if (v3)
  {
    v4 = *(a3 + 92);
    v5 = *(a2 + 664);
    if (v5 <= v4)
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
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(a2 + 680) + 40 * v4;
  }

  else
  {
    v6 = 0;
    v3 = 0;
  }

  *(result + 24) = v6;
  *(result + 32) = v3;
  return result;
}

uint64_t *re::TypeMemberCollection::operator[]@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result[4];
  if (v5 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v5, v3, v4);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  else
  {
    v6 = *result;
    v7 = result[2];
    v8 = result[3] + 40 * a2;
    *a3 = *result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    LODWORD(v6) = *(v6 + 24);
    *(a3 + 24) = a2;
    *(a3 + 28) = v6;
  }

  return result;
}

void re::internal::TypeTranslationTable::buildTables(re::internal::TypeTranslationTable *this)
{
  v1 = this;
  v207 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(this + 1);
  *(this + 4) = *(*this + 24);
  *(this + 5) = *(v3 + 24);
  v4 = *(v2 + 16);
  v182 = 0xFFFFFFFFLL;
  v5 = *(v2 + 264);
  re::FixedArray<unsigned long>::init<unsigned long const&>(this + 3, v4, v5, &v182);
  v6 = *(*v1 + 304);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 6, v4, v6, &v182);
  v7 = *(*v1 + 344);
  LODWORD(v202) = -1;
  re::FixedArray<unsigned int>::init<unsigned int>(v1 + 9, v4, v7, &v202);
  v165 = *(*v1 + 384);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 12, v4, v165, &v182);
  v164 = *(*v1 + 424);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 15, v4, v164, &v182);
  v160 = *(*v1 + 464);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 18, v4, v160, &v182);
  v161 = *(*v1 + 504);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 21, v4, v161, &v182);
  v162 = *(*v1 + 544);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 24, v4, v162, &v182);
  v158 = *(*v1 + 624);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 27, v4, v158, &v182);
  v8 = *(*v1 + 664);
  LODWORD(v202) = -1;
  re::FixedArray<unsigned int>::init<unsigned int>(v1 + 30, v4, v8, &v202);
  v9 = *(*v1 + 744);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 33, v4, v9, &v182);
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(*v1 + 264);
      if (v12 <= v11)
      {
        goto LABEL_142;
      }

      MatchingType = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 280) + v10));
      v12 = v1[4];
      if (v12 <= v11)
      {
        break;
      }

      *(v1[5] + 8 * v11++) = MatchingType;
      v10 += 88;
      if (v5 == v11)
      {
        goto LABEL_6;
      }
    }

LABEL_146:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v105 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v11;
    *&v194[8] = 2048;
    *&v194[10] = v12;
    _os_log_send_and_compose_impl(v107, v184, &v202, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v156, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_150;
  }

LABEL_6:
  v14 = v161;
  v12 = v162;
  v15 = v160;
  if (v6)
  {
    v16 = 0;
    v5 = 0;
    while (1)
    {
      v11 = *(*v1 + 304);
      if (v11 <= v5)
      {
        break;
      }

      v17 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 320) + v16));
      v11 = v1[7];
      if (v11 <= v5)
      {
        goto LABEL_154;
      }

      *(v1[8] + 8 * v5++) = v17;
      v16 += 104;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

LABEL_150:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v5;
    *&v194[8] = 2048;
    *&v194[10] = v11;
    _os_log_send_and_compose_impl(v110, v184, &v202, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v156, v158);
    _os_crash_msg();
    __break(1u);
LABEL_154:
    *v184 = 0;
    v57 = v184;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v5;
    *&v194[8] = 2048;
    *&v194[10] = v11;
    _os_log_send_and_compose_impl(v113, v184, &v202, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v156, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_158;
  }

LABEL_11:
  v18 = *(*v1 + 304);
  v169 = v1;
  v157 = v9;
  if (v18)
  {
    v19 = *(*v1 + 320);
    v20 = &v19[13 * v18];
    v159 = v20;
    do
    {
      re::TypeRegistry::typeInfo(*v1, *v19, &v202);
      re::TypeInfo::TypeInfo(v173, &v202 + 8);
      v21 = *v174;
      v181[0] = v173[0];
      v181[1] = v21;
      re::internal::TypeTranslationTable::translateType(v1, v181, v195);
      if (!*v195)
      {
        v22 = v1[1];
        v23 = re::TypeInfo::name(v173);
        re::TypeRegistry::typeInfo(&v191, v22, v23);
        if (v191 == 1)
        {
          v24 = re::DataArray<re::TextureAtlasTile>::tryGet(v173[0] + 96, *v174);
          v25 = v24 ? *(v24 + 16) : -1;
          re::TypeInfo::atVersion(&v202, &v192[4], v25);
          re::Optional<re::TypeInfo>::operator=(&v191, &v202);
          if (v191 == 1)
          {
            v168 = re::TypeInfo::enumConstants(v173);
            v27 = v26;
            v28 = re::TypeInfo::enumConstants(&v192[4]);
            v167 = v27;
            if (v27)
            {
              v30 = v29;
              v31 = 0;
              v32 = -v29;
              v171 = (v28 + 8);
              v163 = v28;
              v166 = v19;
              do
              {
                v170 = v31;
                if (!v30)
                {
                  goto LABEL_27;
                }

                v33 = 0;
                v34 = v171;
                while (!re::StringID::operator==(v34, (v168 + 24 * v31 + 8)))
                {
                  --v33;
                  v34 += 3;
                  if (v32 == v33)
                  {
                    goto LABEL_27;
                  }
                }

                if (v33 != 1)
                {
                  v40 = -v33;
                }

                else
                {
LABEL_27:
                  v35 = re::TypeInfo::renamedEnumConstants(&v192[4]);
                  if (!v36)
                  {
                    goto LABEL_40;
                  }

                  v37 = v35;
                  v38 = v36;
                  v39 = 0;
                  LODWORD(v40) = -1;
                  do
                  {
                    v41 = (v37 + 24 * v39);
                    if (re::StringID::operator==(v41 + 1, (v168 + 24 * v170 + 8)) && v30 != 0)
                    {
                      v43 = 0;
                      v44 = v163;
                      while (1)
                      {
                        v45 = *v44;
                        v44 += 3;
                        if (v45 == *v41)
                        {
                          break;
                        }

                        if (v30 == ++v43)
                        {
                          goto LABEL_38;
                        }
                      }

                      LODWORD(v40) = v43;
                    }

LABEL_38:
                    ++v39;
                  }

                  while (v39 != v38);
                  if (v40 == -1)
                  {
LABEL_40:
                    v46 = re::TypeInfo::renamedEnumConstants(v173);
                    if (v47)
                    {
                      v48 = v46;
                      v49 = v47;
                      v50 = 0;
                      v51 = *(v168 + 24 * v170);
                      LODWORD(v40) = -1;
                      do
                      {
                        if (v30)
                        {
                          v52 = (v48 + 24 * v50);
                          if (*v52 == v51)
                          {
                            v53 = 0;
                            v54 = v171;
                            while (!re::StringID::operator==(v54, v52 + 1))
                            {
                              ++v53;
                              v54 += 3;
                              if (v30 == v53)
                              {
                                goto LABEL_49;
                              }
                            }

                            LODWORD(v40) = v53;
                          }
                        }

LABEL_49:
                        ++v50;
                      }

                      while (v50 != v49);
                    }

                    else
                    {
                      LODWORD(v40) = -1;
                    }
                  }
                }

                v19 = v166;
                v1 = v169;
                v12 = v170;
                v55 = v170 + *(v166 + 22);
                v11 = v169[10];
                if (v11 <= v55)
                {
                  v179[0] = 0;
                  v5 = v184;
                  v205 = 0u;
                  v206 = 0u;
                  v203 = 0u;
                  v204 = 0u;
                  v202 = 0u;
                  v96 = MEMORY[0x1E69E9C10];
                  v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v184 = 136315906;
                  *&v184[4] = "operator[]";
                  v185 = 1024;
                  if (v97)
                  {
                    v98 = 3;
                  }

                  else
                  {
                    v98 = 2;
                  }

                  v186 = 468;
                  v187 = 2048;
                  v188 = v55;
                  v189 = 2048;
                  *v190 = v11;
                  _os_log_send_and_compose_impl(v98, v179, &v202, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v184, 38, v157, v158);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_138;
                }

                *(v169[11] + 4 * v55) = v40;
                v31 = v170 + 1;
              }

              while (v170 + 1 != v167);
            }
          }
        }

        v14 = v161;
        v12 = v162;
        v20 = v159;
        v15 = v160;
      }

      v19 += 13;
    }

    while (v19 != v20);
  }

  if (v165)
  {
    v56 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 384);
      if (v5 <= v57)
      {
        break;
      }

      v58 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 400) + v56));
      v5 = v1[13];
      if (v5 <= v57)
      {
        goto LABEL_162;
      }

      *(v1[14] + 8 * v57++) = v58;
      v56 += 104;
      if (v165 == v57)
      {
        goto LABEL_62;
      }
    }

LABEL_158:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v116, v184, &v202, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_162:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v119, v184, &v202, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_166;
  }

LABEL_62:
  if (v164)
  {
    v59 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 424);
      if (v5 <= v57)
      {
        break;
      }

      v60 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 440) + v59));
      v5 = v1[16];
      if (v5 <= v57)
      {
        goto LABEL_170;
      }

      *(v1[17] + 8 * v57++) = v60;
      v59 += 104;
      if (v164 == v57)
      {
        goto LABEL_67;
      }
    }

LABEL_166:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v122, v184, &v202, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_170:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v125, v184, &v202, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_174;
  }

LABEL_67:
  if (v15)
  {
    v61 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 464);
      if (v5 <= v57)
      {
        break;
      }

      v62 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 480) + v61));
      v5 = v1[19];
      if (v5 <= v57)
      {
        goto LABEL_178;
      }

      *(v1[20] + 8 * v57++) = v62;
      v61 += 136;
      if (v15 == v57)
      {
        goto LABEL_72;
      }
    }

LABEL_174:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v128, v184, &v202, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_178:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v131, v184, &v202, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_182;
  }

LABEL_72:
  if (v14)
  {
    v63 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 504);
      if (v5 <= v57)
      {
        break;
      }

      v64 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 520) + v63));
      v5 = v1[22];
      if (v5 <= v57)
      {
        goto LABEL_186;
      }

      *(v1[23] + 8 * v57++) = v64;
      v63 += 168;
      if (v14 == v57)
      {
        goto LABEL_77;
      }
    }

LABEL_182:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v134, v184, &v202, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_186:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v135 = MEMORY[0x1E69E9C10];
    v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v136)
    {
      v137 = 3;
    }

    else
    {
      v137 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v137, v184, &v202, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_190;
  }

LABEL_77:
  if (v12)
  {
    v65 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 544);
      if (v5 <= v57)
      {
        break;
      }

      v66 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 560) + v65));
      v5 = v1[25];
      if (v5 <= v57)
      {
        goto LABEL_194;
      }

      *(v1[26] + 8 * v57++) = v66;
      v65 += 104;
      if (v12 == v57)
      {
        goto LABEL_82;
      }
    }

LABEL_190:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v140, v184, &v202, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v143, v184, &v202, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
    goto LABEL_198;
  }

LABEL_82:
  if (v158)
  {
    v67 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v1 + 624);
      if (v5 <= v57)
      {
        break;
      }

      v68 = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 640) + v67));
      v5 = v1[28];
      if (v5 <= v57)
      {
        goto LABEL_202;
      }

      *(v1[29] + 8 * v57++) = v68;
      v67 += 176;
      if (v158 == v57)
      {
        goto LABEL_87;
      }
    }

LABEL_198:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v146, v184, &v202, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_202:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v149, v184, &v202, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_206:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v192[10] = 797;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v152, v184, &v202, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
LABEL_210:
    *v184 = 0;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v202 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v191 = 136315906;
    *v192 = "operator[]";
    *&v192[8] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v192[10] = 468;
    v193 = 2048;
    *v194 = v57;
    *&v194[8] = 2048;
    *&v194[10] = v5;
    _os_log_send_and_compose_impl(v155, v184, &v202, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v157, v158);
    _os_crash_msg();
    __break(1u);
  }

LABEL_87:
  v69 = *(*v1 + 624);
  if (v69)
  {
    v70 = *(*v1 + 640);
    v71 = v70 + 176 * v69;
    v172 = v71;
    do
    {
      re::TypeRegistry::typeInfo(*v169, *v70, &v202);
      re::TypeInfo::TypeInfo(v179, &v202 + 8);
      v72 = *v180;
      v177[0] = v179[0];
      v177[1] = v72;
      re::internal::TypeTranslationTable::translateType(v169, v177, &v178);
      if (!v178)
      {
        v73 = v169[1];
        v74 = re::TypeInfo::name(v179);
        re::TypeRegistry::typeInfo(&v191, v73, v74);
        if (v191 == 1)
        {
          v75 = re::DataArray<re::TextureAtlasTile>::tryGet(v179[0] + 96, *v180);
          v76 = v75 ? *(v75 + 16) : -1;
          re::TypeInfo::atVersion(&v202, &v192[4], v76);
          re::Optional<re::TypeInfo>::operator=(&v191, &v202);
          if (v191 == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(v184, v179[0], v180);
            re::TypeMemberCollection::TypeMemberCollection(v173, *&v192[4], *&v194[4]);
            v77 = *&v190[2];
            if (*&v190[2])
            {
              v78 = 0;
              while (1)
              {
                re::TypeMemberCollection::operator[](v184, v78, &v202);
                if (!v176)
                {
                  goto LABEL_216;
                }

                v79 = 0;
                v80 = v203;
                v81 = (v175 + 8);
                v12 = -v176;
                while (!re::StringID::operator==(v81, (v80 + 8)))
                {
                  --v79;
                  v81 += 5;
                  if (v12 == v79)
                  {
                    goto LABEL_103;
                  }
                }

                if (v79 != 1)
                {
                  v86 = -v79;
                }

                else
                {
LABEL_216:
                {
LABEL_103:
                  v82 = re::TypeInfo::renamedObjectMembers(&v192[4]);
                  if (!v83)
                  {
                    goto LABEL_109;
                  }

                  v84 = v82;
                  v85 = v83;
                  while (1)
                  {
                    re::TypeMemberCollection::operator[](v184, v78, &v202);
                    if (re::StringID::operator==(v84, (v203 + 8)))
                    {
                      break;
                    }

                    v84 += 24;
                    if (!--v85)
                    {
                      goto LABEL_109;
                    }
                  }

                  LODWORD(v86) = *(v84 + 16);
                  if (v86 == -1)
                  {
LABEL_109:
                    v87 = re::TypeInfo::renamedObjectMembers(v179);
                    if (v88)
                    {
                      v89 = v87;
                      v90 = v88;
                      v91 = 0;
                      LODWORD(v86) = -1;
                      do
                      {
                        v12 = v89 + 24 * v91;
                        if (v78 == *(v12 + 16) && v176 != 0)
                        {
                          v93 = 0;
                          while (1)
                          {
                            re::TypeMemberCollection::operator[](v173, v93, &v202);
                            if (re::StringID::operator==((v203 + 8), (v89 + 24 * v91)))
                            {
                              break;
                            }

                            if (++v93 >= v176)
                            {
                              goto LABEL_120;
                            }
                          }

                          LODWORD(v86) = v93;
                        }

LABEL_120:
                        ++v91;
                      }

                      while (v91 != v90);
                    }

                    else
                    {
                      LODWORD(v86) = -1;
                    }
                  }
                }
                }

                v5 = v78 + *(v70 + 92);
                v11 = v169[31];
                if (v11 <= v5)
                {
                  break;
                }

                *(v169[32] + 4 * v5) = v86;
                if (++v78 == v77)
                {
                  goto LABEL_126;
                }
              }

LABEL_138:
              v183 = 0;
              v205 = 0u;
              v206 = 0u;
              v203 = 0u;
              v204 = 0u;
              v202 = 0u;
              v99 = MEMORY[0x1E69E9C10];
              v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v195 = 136315906;
              *&v195[4] = "operator[]";
              v196 = 1024;
              if (v100)
              {
                v101 = 3;
              }

              else
              {
                v101 = 2;
              }

              v197 = 468;
              v198 = 2048;
              v199 = v5;
              v200 = 2048;
              v201 = v11;
              _os_log_send_and_compose_impl(v101, &v183, &v202, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v195, 38, v157, v158);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              *v184 = 0;
              v205 = 0u;
              v206 = 0u;
              v203 = 0u;
              v204 = 0u;
              v202 = 0u;
              v102 = MEMORY[0x1E69E9C10];
              v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v191 = 136315906;
              *v192 = "operator[]";
              *&v192[8] = 1024;
              if (v103)
              {
                v104 = 3;
              }

              else
              {
                v104 = 2;
              }

              *&v192[10] = 797;
              v193 = 2048;
              *v194 = v11;
              *&v194[8] = 2048;
              *&v194[10] = v12;
              _os_log_send_and_compose_impl(v104, v184, &v202, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v191, 38, v156, v158);
              _os_crash_msg();
              __break(1u);
              goto LABEL_146;
            }

LABEL_126:
            v71 = v172;
          }
        }
      }

      v70 += 176;
    }

    while (v70 != v71);
  }

  if (v157)
  {
    v94 = 0;
    v57 = 0;
    while (1)
    {
      v5 = *(*v169 + 744);
      if (v5 <= v57)
      {
        goto LABEL_206;
      }

      v95 = re::internal::TypeTranslationTable::findMatchingType(v169, *(*(*v169 + 760) + v94));
      v5 = v169[34];
      if (v5 <= v57)
      {
        goto LABEL_210;
      }

      *(v169[35] + 8 * v57++) = v95;
      v94 += 112;
      if (v157 == v57)
      {
        return;
      }
    }
  }
}

void re::internal::TypeTranslationTable::rebuildIfNecessary(uint64_t this)
{
  if (*(*this + 24) != *(this + 16) || *(*(this + 8) + 24) != *(this + 20))
  {
    v2 = *re::foundationIntrospectionLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Type registry was modified. Rebuilding type translation table.", v3, 2u);
    }

    re::FixedArray<CoreIKTransform>::deinit((this + 24));
    re::FixedArray<CoreIKTransform>::deinit((this + 48));
    re::FixedArray<CoreIKTransform>::deinit((this + 72));
    re::FixedArray<CoreIKTransform>::deinit((this + 96));
    re::FixedArray<CoreIKTransform>::deinit((this + 120));
    re::FixedArray<CoreIKTransform>::deinit((this + 144));
    re::FixedArray<CoreIKTransform>::deinit((this + 168));
    re::FixedArray<CoreIKTransform>::deinit((this + 192));
    re::FixedArray<CoreIKTransform>::deinit((this + 216));
    re::FixedArray<CoreIKTransform>::deinit((this + 240));
    re::FixedArray<CoreIKTransform>::deinit((this + 264));
    re::internal::TypeTranslationTable::buildTables(this);
  }
}

double re::internal::TypeTranslationTable::translateType@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::internal::TypeTranslationTable::rebuildIfNecessary(a1);
  v6 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(*a1 + 32, *(a2 + 8));
  if (v6)
  {
    v7 = *v6;

    return re::internal::TypeTranslationTable::translateType(a1, v7, a3);
  }

  else
  {
    *a3 = 0;
    *&result = 0xFFFFFFFFLL;
    a3[1] = 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 4 * a2;
  }

  else
  {
    return 0;
  }
}

double re::internal::TypeTranslationTable::translateType@<D0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *&a2 & 0xFFFFFFLL;
  if ((*&a2 & 0xFFFFFFLL) == 0xFFFFFF)
  {
    goto LABEL_34;
  }

  if (HIBYTE(a2) <= 4u)
  {
    if (HIBYTE(a2) > 2u)
    {
      if (HIBYTE(a2) == 3)
      {
        v10 = a1[13];
        if (v10 > v3)
        {
          v5 = 14;
          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (HIBYTE(a2) != 4)
      {
        goto LABEL_34;
      }

      v7 = a1[16];
      if (v7 > v3)
      {
        v5 = 17;
        goto LABEL_32;
      }
    }

    else
    {
      if (HIBYTE(a2) == 1)
      {
        v9 = a1[4];
        if (v9 > v3)
        {
          v5 = 5;
          goto LABEL_32;
        }

        goto LABEL_48;
      }

      if (HIBYTE(a2) != 2)
      {
        goto LABEL_34;
      }

      v6 = a1[7];
      if (v6 > v3)
      {
        v5 = 8;
        goto LABEL_32;
      }

      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v16 = MEMORY[0x1E69E9C10];
      v17 = v6;
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v56 = 468;
      v57 = 2048;
      v58 = v3;
      v59 = 2048;
      v60 = v17;
      _os_log_send_and_compose_impl(v18, &v52, &v61, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
      _os_crash_msg();
      __break(1u);
    }

    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = v7;
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v3;
    v59 = 2048;
    v60 = v20;
    _os_log_send_and_compose_impl(v22, &v52, &v61, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = v8;
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v3;
    v59 = 2048;
    v60 = v24;
    _os_log_send_and_compose_impl(v26, &v52, &v61, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = v9;
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v3;
    v59 = 2048;
    v60 = v28;
    _os_log_send_and_compose_impl(v30, &v52, &v61, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = v10;
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v3;
    v59 = 2048;
    v60 = v32;
    _os_log_send_and_compose_impl(v34, &v52, &v61, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = v11;
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v3;
    v59 = 2048;
    v60 = v36;
    _os_log_send_and_compose_impl(v38, &v52, &v61, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
    _os_crash_msg();
    __break(1u);
    goto LABEL_60;
  }

  if (HIBYTE(a2) <= 6u)
  {
    if (HIBYTE(a2) == 5)
    {
      v12 = a1[19];
      if (v12 > v3)
      {
        v5 = 20;
        goto LABEL_32;
      }

LABEL_60:
      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = v12;
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v56 = 468;
      v57 = 2048;
      v58 = v3;
      v59 = 2048;
      v60 = v40;
      _os_log_send_and_compose_impl(v42, &v52, &v61, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
      _os_crash_msg();
      __break(1u);
LABEL_64:
      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = v4;
      v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      if (v45)
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v56 = 468;
      v57 = 2048;
      v58 = v3;
      v59 = 2048;
      v60 = v44;
      _os_log_send_and_compose_impl(v46, &v52, &v61, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v52 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v47 = MEMORY[0x1E69E9C10];
      v48 = v13;
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v56 = 468;
      v57 = 2048;
      v58 = v3;
      v59 = 2048;
      v60 = v48;
      _os_log_send_and_compose_impl(v50, &v52, &v61, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v51);
      _os_crash_msg();
      __break(1u);
    }

    if (HIBYTE(a2) != 6)
    {
      goto LABEL_34;
    }

    v8 = a1[22];
    if (v8 > v3)
    {
      v5 = 23;
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  if (HIBYTE(a2) == 7)
  {
    v11 = a1[25];
    if (v11 > v3)
    {
      v5 = 26;
      goto LABEL_32;
    }

    goto LABEL_56;
  }

  if (HIBYTE(a2) != 8)
  {
    if (HIBYTE(a2) != 9)
    {
      goto LABEL_34;
    }

    v4 = a1[34];
    if (v4 > v3)
    {
      v5 = 35;
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  v13 = a1[28];
  if (v13 <= v3)
  {
    goto LABEL_68;
  }

  v5 = 29;
LABEL_32:
  v14 = *(a1[v5] + 8 * v3);
  if ((v14 & 0xFFFFFF00000000) != 0)
  {
    *a3 = a1[1];
    a3[1] = v14;
    return result;
  }

LABEL_34:
  *a3 = 0;
  *&result = 0xFFFFFFFFLL;
  a3[1] = 0xFFFFFFFFLL;
  return result;
}

unint64_t re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 8 * a2;
}

uint64_t re::internal::TypeTranslationTable::translateMember(re::internal::TypeTranslationTable *this, const re::TypeMemberInfo *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v4 = (*(a2 + 6) + *(*(a2 + 1) + 92));
  v5 = *(this + 31);
  if (v5 <= v4)
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

    v14 = 468;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 32) + 4 * v4);
}

uint64_t re::internal::TypeTranslationTable::translateSerializedEnum(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, int a3, const re::TypeInfo *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v8 = re::TypeInfo::name(a2);
  v9 = re::TypeInfo::name(a4);
  v10 = re::StringID::operator==(v8, v9);
  if (v10)
  {
    v11 = (*(*(a2 + 2) + 88) + a3);
    v12 = *(this + 10);
    if (v12 <= v11)
    {
      v25 = 0;
      memset(buf, 0, sizeof(buf));
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

      v29 = 468;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v12;
      _os_log_send_and_compose_impl(v20, &v25, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v23, v24);
      _os_crash_msg();
      __break(1u);
      goto LABEL_13;
    }

    v11 = *(*(this + 11) + 4 * v11);
    if ((v11 & 0x80000000) == 0)
    {
      v13 = re::TypeInfo::enumConstants(a4);
      if (v14 > v11)
      {
        return v13 + 24 * v11;
      }

LABEL_13:
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v14);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v22);
      __break(1u);
    }
  }

  else
  {
    v16 = *re::foundationIntrospectionLogObjects(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = re::TypeInfo::name(a2)[1];
      v18 = re::TypeInfo::name(a4)[1];
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = v17;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v18;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to translate enum value. Enum names don't match. Serialized type %s, runtime type %s.", buf, 0x16u);
    }
  }

  return 0;
}

uint64_t re::internal::TypeTranslationTable::translateRuntimeEnum(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, int a3, const re::TypeInfo *a4)
{
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v7 = re::FixedArray<unsigned int>::slice(this + 72, *(*(a4 + 2) + 88), *(*(a4 + 2) + 92));
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (*(v7 + 4 * v10) != a3)
  {
    ++v10;
    v9 -= 24;
    if (v8 == v10)
    {
      return 0;
    }
  }

  v12 = re::TypeInfo::enumConstants(a4);
  if (v13 > v10)
  {
    return v12 - v9;
  }

  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v13);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v14, v15);
  __break(1u);
  return result;
}

uint64_t re::internal::TypeTranslationTable::findMatchingType(re::TypeRegistry **a1, uint64_t a2)
{
  re::TypeRegistry::typeInfo(*a1, a2, &v9);
  re::TypeInfo::TypeInfo(v11, v10);
  v4 = re::DataArray<re::TextureAtlasTile>::tryGet(*a1 + 96, a2);
  if (!v4)
  {
  }

  re::TypeRegistry::typeInfo(&v9, a1[1], v4);
  if (v9 == 1 && ((v5 = re::DataArray<re::TextureAtlasTile>::tryGet(v11[0] + 96, *v11[2])) == 0 ? (v6 = -1) : (v6 = *(v5 + 16)), (re::TypeInfo::atVersion(v8, v10, v6), re::Optional<re::TypeInfo>::operator=(&v9, v8), v9 == 1) && re::internal::TypeTranslationTable::areEquivalent(a1, v11, v10)))
  {
    return *v10[2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t re::internal::TypeTranslationTable::areEquivalent(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = WORD1(**(a2 + 2));
  v5 = *(*this + 48);
  if (v5 <= v4)
  {
    a3 = v55;
    v47 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    memset(v60, 0, sizeof(v60));
    v7 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v55 = 136315906;
    *&v55[4] = "operator[]";
    *&v55[12] = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    *&v55[14] = 797;
    v56 = 2048;
    v57 = v4;
    v58 = 2048;
    *v59 = v5;
    _os_log_send_and_compose_impl(v42, &v47, v60, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v55, 38, v43, v44);
    _os_crash_msg();
    __break(1u);
    goto LABEL_85;
  }

  v3 = a2;
  v7 = this;
  v8 = *(*(*(*this + 64) + 16 * WORD1(**(a2 + 2))) + 4 * **(a2 + 2));
  re::internal::TypeTranslationTable::translateType(this, v8, &v51);
  if (v51)
  {
    if (v51 == *a3)
    {
      v9 = **(a3 + 2);
      if (v52 == v9 && v53 == WORD1(v9))
      {
        v10 = ((v54 ^ HIDWORD(v9)) & 0xFFFFFF) == 0;
        goto LABEL_7;
      }
    }

    goto LABEL_77;
  }

  if (*(v3 + 12) != *(a3 + 12))
  {
    goto LABEL_77;
  }

  v12 = re::DataArray<re::TextureAtlasTile>::tryGet(*v3 + 96, **(v3 + 2));
  v13 = v12 ? *(v12 + 16) : -1;
  v11 = re::DataArray<re::TextureAtlasTile>::tryGet(*a3 + 96, **(a3 + 2));
  v15 = v11 ? *(v11 + 16) : -1;
  if (v13 != v15)
  {
    goto LABEL_77;
  }

  v16 = *(v3 + 2);
  if ((*(v16 + 48) & 0x80) != 0)
  {
    goto LABEL_77;
  }

  v17 = *(v3 + 12);
  if (v17 <= 4)
  {
    if (*(v3 + 12) <= 2u)
    {
      if (v17 == 1)
      {
        v36 = *(a3 + 2);
        if (*(v16 + 8) == *(v36 + 8) && *(v16 + 12) == *(v36 + 12))
        {
          v10 = *(v16 + 80) == *(v36 + 80);
LABEL_7:
          LOBYTE(v11) = v10;
          return v11 & 1;
        }

LABEL_77:
        LOBYTE(v11) = 0;
        return v11 & 1;
      }

      if (v17 == 2)
      {
        if (*(v16 + 8) != *(*(a3 + 2) + 8))
        {
          goto LABEL_77;
        }

        v18 = re::TypeInfo::enumConstants(v3);
        v20 = v19;
        *&v60[0] = v18;
        *(&v60[0] + 1) = v19;
        *v55 = re::TypeInfo::enumConstants(a3);
        *&v55[8] = v21;
        if (v20 != v21)
        {
          goto LABEL_77;
        }

        if (v20)
        {
          v22 = 0;
          while (1)
          {
            v23 = re::Slice<re::EnumConstant>::operator[](v60, v22);
            v24 = re::Slice<re::EnumConstant>::operator[](v55, v22);
            if (*v23 != *v24 || !re::StringID::operator==(v23 + 1, v24 + 1))
            {
              goto LABEL_77;
            }

            if (++v22 >= *(&v60[0] + 1))
            {
              goto LABEL_80;
            }
          }
        }
      }

      else
      {
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "areEquivalent", 573);
        _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
        __break(1u);
      }

      goto LABEL_80;
    }

    if (v17 != 3)
    {
      if (v17 != 4)
      {
        return v11 & 1;
      }

      v27 = *(a3 + 2);
      v28 = *(v16 + 92) & 0xFFFFFF;
      if ((*(v27 + 92) & 0xFFFFFF) != 0)
      {
        if (!v28)
        {
          goto LABEL_77;
        }
      }

      else if (v28 || *(v27 + 96) != *(v16 + 96))
      {
        goto LABEL_77;
      }
    }

LABEL_73:
    re::TypeInfo::referencedType(v3, v60);
    re::TypeInfo::referencedType(a3, v55);
    v25 = v60;
    v26 = v55;
    goto LABEL_74;
  }

  if (*(v3 + 12) > 6u)
  {
    if (v17 != 7)
    {
      if (v17 != 8)
      {
        if (v17 != 9)
        {
          return v11 & 1;
        }

        if (*(v16 + 88) != *(*(a3 + 2) + 88))
        {
          goto LABEL_77;
        }

        goto LABEL_73;
      }

      v4 = re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::operator[](v7 + 216, *&v8 & 0xFFFFFFLL);
      *v4 = **(a3 + 2);
      v29 = *(v3 + 2);
      if (((*(v29 + 84) & 0xFFFFFF) != 0) != ((*(*(a3 + 2) + 84) & 0xFFFFFF) != 0))
      {
        goto LABEL_90;
      }

      if ((*(v29 + 84) & 0xFFFFFF) != 0)
      {
        re::TypeRegistry::typeInfo(*v3, *(v29 + 80), v60);
        re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v55);
        LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, (v60 + 8), &v55[8]);
        if (!v11)
        {
          goto LABEL_91;
        }

        v29 = *(v3 + 2);
      }

      re::TypeMemberCollection::TypeMemberCollection(v60, *v3, v29);
      re::TypeMemberCollection::TypeMemberCollection(v55, *a3, *(a3 + 2));
      if (v61 != *&v59[2])
      {
        goto LABEL_90;
      }

      if (v61)
      {
        v30 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v60, v30, &v47);
          re::TypeMemberCollection::operator[](v55, v30, &v45);
          if (!re::StringID::operator==((v48[1] + 8), (v46[1] + 8)))
          {
            goto LABEL_90;
          }

          re::TypeMemberInfo::memberType(v50, &v47);
          re::TypeMemberInfo::memberType(v49, &v45);
          if ((re::internal::TypeTranslationTable::areEquivalent(v7, v50, v49) & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        while (++v30 < v61);
      }

      v31 = re::TypeInfo::polymorphicObjectName(v3);
      v32 = re::TypeInfo::polymorphicObjectName(a3);
      LODWORD(v11) = re::StringID::operator==(v31, v32);
      if (v11)
      {
        v33 = *(v3 + 2);
        v34 = *(a3 + 2);
        v35 = *(v34 + 128);
        if (*(v33 + 128) == 1)
        {
          if ((*(v34 + 128) & 1) == 0 || *(v33 + 136) != *(v34 + 136))
          {
            goto LABEL_90;
          }

LABEL_86:
          re::TypeInfo::customClassIDMember(&v47, v3);
          re::TypeInfo::customClassIDMember(&v45, a3);
          if (v47 == v45)
          {
            if (!v47 || (re::TypeMemberInfo::memberType(v50, v48), re::TypeMemberInfo::memberType(v49, v46), (re::internal::TypeTranslationTable::areEquivalent(v7, v50, v49) & 1) != 0))
            {
              LOBYTE(v11) = 1;
              goto LABEL_91;
            }
          }

LABEL_90:
          LOBYTE(v11) = 0;
          goto LABEL_91;
        }

LABEL_85:
        if (v35)
        {
          goto LABEL_90;
        }

        goto LABEL_86;
      }

LABEL_91:
      *v4 = 0xFFFFFFFFLL;
      return v11 & 1;
    }

    re::TypeInfo::referencedType(v3, v60);
    re::TypeInfo::referencedType(a3, v55);
    LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v60, v55);
    if (!v11)
    {
      return v11 & 1;
    }

    v37 = *(*(v3 + 2) + 96);
    if (v37 != *(*(a3 + 2) + 96))
    {
      goto LABEL_77;
    }

    if (v37)
    {
      v38 = 0;
      v39 = v37 - 1;
      do
      {
        re::TypeInfo::unionMember(v60, v3, v38);
        re::TypeInfo::unionMember(v55, a3, v38);
        LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v60, v55);
        if (!v11)
        {
          break;
        }

        v10 = v39 == v38++;
      }

      while (!v10);
      return v11 & 1;
    }

LABEL_80:
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  if (v17 == 5)
  {
    goto LABEL_73;
  }

  if (v17 == 6)
  {
    re::TypeInfo::referencedType(v3, v60);
    re::TypeInfo::referencedType(a3, v55);
    LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v60, v55);
    if (v11)
    {
      re::TypeInfo::dictionaryValueType(v3, &v47);
      re::TypeInfo::dictionaryValueType(a3, &v45);
      v25 = &v47;
      v26 = &v45;
LABEL_74:
      LOBYTE(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v25, v26);
    }
  }

  return v11 & 1;
}

BOOL re::IntrospectionRegistry::contains(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v5 = this;
  v3 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(&unk_1EE1C7B70, &v5);
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v3;
}

void globalIntrospectionTable(void)
{
  {
  }
}

BOOL re::IntrospectionRegistry::add(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v13 = 0;
  v14 = 0;
  v11 = re::introspectionAllocator();
  v12 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  re::appendPrettyTypeName(this, &v11, v3);
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v4 = re::Hash<re::DynamicString>::operator()(&v15, &v11);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, v4, &v15, &v11);
  v5 = v16;
  if (v16 != 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v15 = this;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(&globalIntrospectionTable(void)::table, &v11, &v15);
  v15 = this;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (!dword_1EE1C7B88)
  {
    LODWORD(v8) = 0;
    goto LABEL_9;
  }

  v8 = v7 % dword_1EE1C7B88;
  v9 = *(qword_1EE1C7B78 + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(&unk_1EE1C7B70, v8, v7, &v15, &v15);
    ++dword_1EE1C7B98;
    goto LABEL_10;
  }

  while (*(qword_1EE1C7B80 + 24 * v9 + 16) != this)
  {
    LODWORD(v9) = *(qword_1EE1C7B80 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  return v5 == 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t *re::IntrospectionRegistry::remove(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, 0);
  v4 = ++v52;
  v47 = 0;
  *__b = 0u;
  v46 = 0u;
  v48 = 0x7FFFFFFFLL;
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v6 = dword_1EE1C7B60;
  if (dword_1EE1C7B60)
  {
    v7 = 0;
    v8 = qword_1EE1C7B50;
    while (1)
    {
      v9 = *v8;
      v8 += 14;
      if (v9 < 0)
      {
        break;
      }

      if (dword_1EE1C7B60 == ++v7)
      {
        LODWORD(v7) = dword_1EE1C7B60;
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != dword_1EE1C7B60)
  {
    v31 = qword_1EE1C7B50;
    do
    {
      if (HIDWORD(v46))
      {
        if (DWORD2(v46))
        {
          memset_pattern16(__b[1], &unk_1E304C660, 4 * DWORD2(v46));
        }

        v32 = v47;
        if (v47)
        {
          v33 = 8;
          do
          {
            v34 = *(v46 + v33);
            if (v34 < 0)
            {
              *(v46 + v33) = v34 & 0x7FFFFFFF;
            }

            v33 += 24;
            --v32;
          }

          while (v32);
        }

        HIDWORD(v46) = 0;
        v47 = 0;
        v48 = __PAIR64__(HIDWORD(v48), 0x7FFFFFFF) + 0x100000000;
      }

      v35 = v31 + 56 * v7;
      v36 = *(v35 + 40);
      if (v36 != this)
      {
        v5 = re::IntrospectionBase::references(*(v35 + 40), this, __b);
        if (!v5)
        {
          goto LABEL_51;
        }

        v36 = *(v35 + 40);
      }

      v37 = v51 + 1;
      if (v51 >= v50 && v50 < v37)
      {
        if (v49)
        {
          v42 = 8;
          if (v50)
          {
            v42 = 2 * v50;
          }

          if (v42 <= v37)
          {
            v43 = v51 + 1;
          }

          else
          {
            v43 = v42;
          }

          v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v43);
          v4 = v52;
        }

        else
        {
          v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v37);
          v4 = v52 + 1;
        }
      }

      v39 = v51;
      v40 = &v53[2 * v51];
      *v40 = v36;
      v40[1] = (v35 + 8);
      v51 = v39 + 1;
      v52 = ++v4;
LABEL_51:
      if (dword_1EE1C7B60 <= (v7 + 1))
      {
        v41 = v7 + 1;
      }

      else
      {
        v41 = dword_1EE1C7B60;
      }

      v31 = qword_1EE1C7B50;
      while (v41 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(qword_1EE1C7B50 + 56 * v7) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v7) = v41;
LABEL_59:
      ;
    }

    while (v7 != v6);
  }

  v44 = v53;
  if (v51)
  {
    v10 = v53;
    v11 = &v53[2 * v51];
    do
    {
      v12 = v10[1];
      v13 = re::Hash<re::DynamicString>::operator()(v54, v12);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, v13, v54, v12);
      v14 = v56;
      if (v56 != 0x7FFFFFFF)
      {
        v15 = qword_1EE1C7B50;
        v16 = *(qword_1EE1C7B50 + 56 * v56) & 0x7FFFFFFF;
        if (v57 == 0x7FFFFFFF)
        {
          *(qword_1EE1C7B48 + 4 * v55) = v16;
          v14 = v56;
        }

        else
        {
          *(qword_1EE1C7B50 + 56 * v57) = *(qword_1EE1C7B50 + 56 * v57) & 0x80000000 | v16;
        }

        v17 = (v15 + 56 * v14);
        v18 = *v17;
        if (*v17 < 0)
        {
          *v17 = v18 & 0x7FFFFFFF;
          re::DynamicString::deinit((v17 + 2));
          v14 = v56;
          v15 = qword_1EE1C7B50;
          v18 = *(qword_1EE1C7B50 + 56 * v56);
        }

        *(v15 + 56 * v14) = dword_1EE1C7B64 | v18 & 0x80000000;
        --dword_1EE1C7B5C;
        dword_1EE1C7B64 = v14;
        ++dword_1EE1C7B68;
      }

      if (dword_1EE1C7B88)
      {
        v19 = *v10;
        v20 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
        v21 = ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % dword_1EE1C7B88;
        v22 = *(qword_1EE1C7B78 + 4 * v21);
        if (v22 != 0x7FFFFFFF)
        {
          if (*(qword_1EE1C7B80 + 24 * v22 + 16) == v19)
          {
            *(qword_1EE1C7B78 + 4 * v21) = *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
LABEL_24:
            v24 = qword_1EE1C7B80;
            v25 = qword_1EE1C7B80 + 24 * v22;
            v28 = *(v25 + 8);
            v27 = (v25 + 8);
            v26 = v28;
            if (v28 < 0)
            {
              *v27 = v26 & 0x7FFFFFFF;
              v24 = qword_1EE1C7B80;
              v26 = *(qword_1EE1C7B80 + 24 * v22 + 8);
            }

            *(v24 + 24 * v22 + 8) = dword_1EE1C7B94 | v26 & 0x80000000;
            --dword_1EE1C7B8C;
            dword_1EE1C7B94 = v22;
            ++dword_1EE1C7B98;
          }

          else
          {
            while (1)
            {
              v23 = v22;
              v22 = *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
              if (v22 == 0x7FFFFFFF)
              {
                break;
              }

              if (*(qword_1EE1C7B80 + 24 * v22 + 16) == v19)
              {
                *(qword_1EE1C7B80 + 24 * v23 + 8) = *(qword_1EE1C7B80 + 24 * v23 + 8) & 0x80000000 | *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
                goto LABEL_24;
              }
            }
          }
        }
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  v29 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(__b);
  result = v49;
  if (v49)
  {
    if (v44)
    {
      return (*(*v49 + 40))(v29);
    }
  }

  return result;
}

uint64_t re::IntrospectionRegistry::lookupType(re::IntrospectionRegistry *this, const char *a2)
{
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v3 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&globalIntrospectionTable(void)::table, this);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v4;
}

uint64_t re::IntrospectionRegistry::query(uint64_t a1, _anonymous_namespace_ *a2)
{
  v4 = *(a2 + 2);
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v5 = dword_1EE1C7B60;
  if (dword_1EE1C7B60)
  {
    v6 = 0;
    v7 = qword_1EE1C7B50;
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (dword_1EE1C7B60 == ++v6)
      {
        LODWORD(v6) = dword_1EE1C7B60;
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != dword_1EE1C7B60)
  {
    v9 = qword_1EE1C7B50;
    do
    {
      v13 = *(v9 + 56 * v6 + 40);
      v14 = v13;
      if ((*(**(a1 + 32) + 16))(*(a1 + 32), &v14))
      {
        re::DynamicArray<re::TransitionCondition *>::add(a2, &v13);
      }

      if (dword_1EE1C7B60 <= (v6 + 1))
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = dword_1EE1C7B60;
      }

      v9 = qword_1EE1C7B50;
      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(qword_1EE1C7B50 + 56 * v6) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v6) = v10;
LABEL_19:
      ;
    }

    while (v6 != v5);
  }

  v11 = *(a2 + 2) - v4;
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v11;
}

void anonymous namespace::IntrospectionRegistryTable::IntrospectionRegistryTable()
{
  v2 = re::introspectionAllocator();
  globalIntrospectionTable(void)::table = 0u;
  *&qword_1EE1C7B50 = 0u;
  dword_1EE1C7B60 = 0;
  *&dword_1EE1C7B64 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&globalIntrospectionTable(void)::table, v2, 3);
  v3 = re::introspectionAllocator();
  unk_1EE1C7B70 = 0u;
  *&qword_1EE1C7B80 = 0u;
  dword_1EE1C7B90 = 0;
  *&dword_1EE1C7B94 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&unk_1EE1C7B70, v3, 3);
  dword_1EE1C7BA0 = 0;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

BOOL re::IntrospectionBase::references(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 32))(a1);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a1 + 40))(a1, 0);
    if (v8 != a2)
    {
      v9 = v8;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v19 = v9;
        if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v19))
        {
          break;
        }

LABEL_14:
        v11 = ++v10 < v7;
        if (v10 != v7)
        {
          v9 = (*(*a1 + 40))(a1, v10);
          if (v9 != a2)
          {
            continue;
          }
        }

        return v11;
      }

      v19 = v9;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v13 = v12 ^ (v12 >> 31);
      v14 = *(a3 + 24);
      if (v14)
      {
        v15 = v13 % v14;
        v16 = *(*(a3 + 8) + 4 * (v13 % v14));
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(a3 + 16);
          while (*(v17 + 24 * v16 + 16) != v9)
          {
            LODWORD(v16) = *(v17 + 24 * v16 + 8) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_12;
            }
          }

LABEL_13:
          if (re::IntrospectionBase::references(v9, a2, a3))
          {
            return v11;
          }

          goto LABEL_14;
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

LABEL_12:
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a3, v15, v13, &v19, &v19);
      ++*(a3 + 40);
      goto LABEL_13;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

re::IntrospectionBasic *re::IntrospectionBasic::IntrospectionBasic(re::IntrospectionBasic *this, const char *a2, int a3, int a4, char a5, char a6)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v12 + 16) = 0;
  *(v12 + 20) = a3;
  *(v12 + 24) = a4;
  *(v12 + 28) = a5;
  *(v12 + 29) = a5 & a6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xFFFFFFFFLL;
  *v12 = &unk_1F5D0C558;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  if (!strcmp(a2, "BOOL"))
  {
    v14 = 1;
    goto LABEL_26;
  }

  if (!strcmp(a2, "char"))
  {
    v14 = 2;
    goto LABEL_26;
  }

  if (!strcmp(a2, "short"))
  {
    v14 = 3;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int"))
  {
    v14 = 4;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int64_t"))
  {
    v14 = 5;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint8_t"))
  {
    v14 = 6;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint16_t"))
  {
    v14 = 7;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint32_t"))
  {
    v14 = 8;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint64_t"))
  {
    v14 = 9;
    goto LABEL_26;
  }

  if (!strcmp(a2, "float"))
  {
    v14 = 10;
    goto LABEL_26;
  }

  if (!strcmp(a2, "double"))
  {
    v14 = 11;
    goto LABEL_26;
  }

  v13 = a3 - 1;
  if (a3 - 1) <= 7 && ((0x8Bu >> v13))
  {
    v14 = dword_1E3100704[v13];
LABEL_26:
    *(this + 14) = v14;
  }

  return this;
}

void re::IntrospectionCStyleArray::IntrospectionCStyleArray(re::IntrospectionCStyleArray *this, const re::IntrospectionBase *a2, uint64_t a3)
{
  v4 = *(a2 + 5);
  if ((v4 & 0x80000000) != 0)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid array element size.", "elementSize >= 0", "checkedArraySize", 20);
    _os_crash("assertion failure: (elementSize >= 0) Invalid array element size.");
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  if ((a3 & 0x80000000) != 0)
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid array element count.", "elementCount >= 0", "checkedArraySize", 21);
    _os_crash("assertion failure: (elementCount >= 0) Invalid array element count.");
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4 * a3;
  if (v5 == v5)
  {
    v7 = *(a2 + 6);
    ArcSharedObject::ArcSharedObject(this, 0);
    *(v8 + 16) = 2;
    *(v8 + 20) = v5;
    *(v8 + 24) = v7;
    *(v8 + 28) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xFFFFFFFFLL;
    *v8 = &unk_1F5CB0038;
    *(v8 + 48) = a2;
    *(v8 + 56) = 0;
    *(v8 + 64) = v3;
    return;
  }

LABEL_7:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in array. Element size = %d bytes, count = %d", "!overflow", "checkedArraySize", 27, v4, v3);
  _os_crash("assertion failure: (!overflow) Size overflow in array. Element size = %d bytes, count = %d", v9, v10);
  __break(1u);
}

double re::IntrospectionDynamicString::IntrospectionDynamicString(re::IntrospectionDynamicString *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0x2000000006;
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C618;
  return result;
}

void *re::IntrospectionDynamicString::childInfo(re::IntrospectionDynamicString *this, uint64_t a2)
{
  if (a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 321);
    result = _os_crash("assertion failure: (index == 0) Index out of range.");
    __break(1u);
  }

  else
  {
    re::introspect_char(1, 0);
    return &re::introspect_char(BOOL)::info;
  }

  return result;
}

double re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this, const re::IntrospectionBase *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0x800000001;
  *(v3 + 24) = 8;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CBD2C0;
  *(v3 + 48) = a2;
  *(v3 + 56) = 0;
  return result;
}

double re::IntrospectionStringID::IntrospectionStringID(re::IntrospectionStringID *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C6D8;
  *(v1 + 16) = 0x100000000ALL;
  return result;
}

uint64_t re::IntrospectionStructure::childInfoCount(re::IntrospectionStructure *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 8);
  do
  {
    v5 = *v4++;
    if (*v5 == 1)
    {
      ++result;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t re::IntrospectionStructure::childInfo(re::IntrospectionStructure *this, uint64_t a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = *v4;
      if (**v4 == 1)
      {
        if (v3 == a2)
        {
          return *(v5 + 2);
        }

        ++v3;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "!Unreachable code", "childInfo", 506);
  _os_crash("assertion failure: (!Unreachable code) Index out of range.");
  __break(1u);
  return *(v5 + 2);
}

void *re::introspect_BOOL(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_BOOL(BOOL)::info, "BOOL", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_BOOL(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  re::introspect_BOOL(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_BOOL(BOOL)::info, a2);
  v7[0] = 6059476;
  v7[1] = "BOOL";
  xmmword_1EE1C7020 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_BOOL(BOOL)::info;
}

std::__shared_mutex_base *re::introspectionSharedMutex(re *this)
{
  {
    std::__shared_mutex_base::__shared_mutex_base(&re::introspectionSharedMutex(void)::mutex);
  }

  return &re::introspectionSharedMutex(void)::mutex;
}

void re::TypeBuilderHelper::registerBasic<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x100000001uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_char(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_char(BOOL)::info, "char", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_char(BOOL)::isInitialized)
    {
      return &re::introspect_char(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_char(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_char(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_char(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_char(BOOL)::info;
    }
  }

  re::introspect_char(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_char(BOOL)::info, a2);
  v7[0] = 6104748;
  v7[1] = "char";
  xmmword_1EE1C6FD8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_char(BOOL)::info;
}

void *re::introspect_float(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_float(BOOL)::info, "float", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_float(BOOL)::isInitialized)
    {
      return &re::introspect_float(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_float(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_float(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_float(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_float(BOOL)::info;
    }
  }

  re::introspect_float(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_float(BOOL)::info, a2);
  v7[0] = 195052728;
  v7[1] = "float";
  xmmword_1EE1C6EA0 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_float(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_double(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_double(BOOL)::info, "double", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_double(BOOL)::isInitialized)
    {
      return &re::introspect_double(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_double(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_double(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_double(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_double(BOOL)::info;
    }
  }

  re::introspect_double(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_double(BOOL)::info, a2);
  v7[0] = 0x161EEF7A2;
  v7[1] = "double";
  xmmword_1EE1C6DD8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_double(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_short(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_short(BOOL)::info, "short", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_short(BOOL)::isInitialized)
    {
      return &re::introspect_short(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_short(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_short(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_short(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_short(BOOL)::info;
    }
  }

  re::introspect_short(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_short(BOOL)::info, a2);
  v7[0] = 218827000;
  v7[1] = "short";
  xmmword_1EE1C6E58 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_short(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<short>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x200000002uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_int(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int(BOOL)::info, "int", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int(BOOL)::isInitialized)
    {
      return &re::introspect_int(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_int(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_int(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int(BOOL)::info;
    }
  }

  re::introspect_int(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int(BOOL)::info, a2);
  v7[0] = 208862;
  v7[1] = "int";
  xmmword_1EE1C7090 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_long(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_long(BOOL)::info, "long", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_long(BOOL)::isInitialized)
    {
      return &re::introspect_long(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_long(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_long(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_long(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_long(BOOL)::info;
    }
  }

  re::introspect_long(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_long(BOOL)::info, a2);
  v7[0] = 6655224;
  v7[1] = "long";
  xmmword_1EE1C6F90 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_long(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(a3, v7, a1);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_size_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_size_t(BOOL)::info, "size_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_size_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_size_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  re::introspect_size_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_size_t(BOOL)::info, a2);
  v7[0] = 0x1947BDF6CLL;
  v7[1] = "size_t";
  xmmword_1EE1C6D90 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_size_t(BOOL)::info;
}

void *re::introspect_int64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int64_t(BOOL)::info, "int64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_int64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  re::introspect_int64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int64_t(BOOL)::info, a2);
  v7[0] = 0x2CE93EC744;
  v7[1] = "int64_t";
  xmmword_1EE1C6CF8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int64_t(BOOL)::info;
}

void *re::introspect_uint8_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint8_t(BOOL)::info, "uint8_t", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_uint8_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  re::introspect_uint8_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint8_t(BOOL)::info, a2);
  v7[0] = 0x31CD534126;
  v7[1] = "uint8_t";
  xmmword_1EE1C6CB0 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint8_t(BOOL)::info;
}

void *re::introspect_uint16_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint16_t(BOOL)::info, "uint16_t", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_uint16_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  re::introspect_uint16_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint16_t(BOOL)::info, a2);
  v7[0] = 0x607DD0D4E68;
  v7[1] = "uint16_t";
  xmmword_1EE1C6AE0 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint16_t(BOOL)::info;
}

void *re::introspect_uint32_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint32_t(BOOL)::info, "uint32_t", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_uint32_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  re::introspect_uint32_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint32_t(BOOL)::info, a2);
  v7[0] = 0x607DD0F01DCLL;
  v7[1] = "uint32_t";
  xmmword_1EE1C6A98 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint32_t(BOOL)::info;
}

void *re::introspect_uint64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint64_t(BOOL)::info, "uint64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_uint64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  re::introspect_uint64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint64_t(BOOL)::info, a2);
  v7[0] = 0x607DD11CB1ALL;
  v7[1] = "uint64_t";
  xmmword_1EE1C6A50 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint64_t(BOOL)::info;
}

void *re::appendPrettyTypeName(re *this, const re::IntrospectionBase *a2, re::DynamicString *a3)
{
  switch(*(this + 4))
  {
    case 0:
    case 8:
    case 9:
    case 0xB:
      v5 = *(this + 6);
      v6 = strlen(v5);
      v7 = a2;
      v8 = v5;
      goto LABEL_15;
    case 1:
      re::appendPrettyTypeName(*(this + 6), a2, a3);
      v8 = "*";
      goto LABEL_14;
    case 2:
      re::appendPrettyTypeName(*(this + 6), a2, a3);
      return re::DynamicString::appendf(a2, "[%d]", *(this + 16));
    case 3:
      v9 = "DynamicArray<";
      v10 = a2;
      v11 = 13;
      goto LABEL_12;
    case 4:
      v9 = "FixedArray<";
      v10 = a2;
      v11 = 11;
      goto LABEL_12;
    case 5:
      v9 = "DataArray<";
      v10 = a2;
      v11 = 10;
      goto LABEL_12;
    case 6:
      v8 = "DynamicString";
      v7 = a2;
      v6 = 13;
      goto LABEL_15;
    case 7:
      re::DynamicString::append(a2, "HashTable<", 0xAuLL);
      re::appendPrettyTypeName(*(this + 6), a2, v12);
      re::DynamicString::append(a2, ",", 1uLL);
      v14 = *(this + 8);
      goto LABEL_13;
    case 0xA:
      v8 = "StringID";
      v7 = a2;
      v6 = 8;
      goto LABEL_15;
    case 0xD:
      v9 = "Optional<";
      v10 = a2;
      v11 = 9;
LABEL_12:
      re::DynamicString::append(v10, v9, v11);
      v14 = *(this + 6);
LABEL_13:
      re::appendPrettyTypeName(v14, a2, v13);
      v8 = ">";
LABEL_14:
      v7 = a2;
      v6 = 1;
LABEL_15:

      result = re::DynamicString::append(v7, v8, v6);
      break;
    default:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "appendPrettyTypeName", 618);
      result = _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
      break;
  }

  return result;
}

uint64_t *re::getPrettyTypeName@<X0>(const re::IntrospectionBase *__return_ptr a1@<X8>, re *this@<X0>)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  re::DynamicString::setCapacity(a1, 0);

  return re::appendPrettyTypeName(this, a1, v4);
}

const char **re::getIntrospectionPolymorphicTypeByName(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); strcmp(*i, __s2); i += 5)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

uint64_t re::getIntrospectionPolymorphicTypeByPrettyType(_anonymous_namespace_ *a1, const char *a2)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(*(v3 + 1) + v4 + 8);
    v13 = 0u;
    v14 = 0u;
    re::DynamicString::setCapacity(&v13, 0);
    re::appendPrettyTypeName(v6, &v13, v7);
    v8 = BYTE8(v13) & 1;
    v9 = (BYTE8(v13) & 1) != 0 ? v14 : &v13 + 9;
    v10 = strcmp(v9, a2);
    v11 = *(v3 + 1);
    a1 = v13;
    if (v13)
    {
      if (v8)
      {
        a1 = (*(*v13 + 40))();
      }
    }

    if (!v10)
    {
      break;
    }

    ++v5;
    v4 += 40;
    if (v5 >= *v3)
    {
      return 0;
    }
  }

  return v11 + v4;
}

const char **re::getIntrospectionEnumValueByName(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v5 = *i;
    if (**i == 1 && !strcmp(v5[2], __s2))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

const char **re::getIntrospectionEnumValueRename(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v5 = *i;
    if (**i == 2 && !strcmp(v5[2], __s2))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

const char **re::getIntrospectionEnumValueWithVersioning@<X0>(unsigned int *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::getIntrospectionEnumValueRename(a1, a2);
  if (result || (result = re::getIntrospectionEnumValueByName(a1, a2)) != 0)
  {
    *a3 = 1;
    *(a3 + 8) = result[1];
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *re::makePrettyMemberName@<X0>(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  v4 = strlen(this);
  if (v4 < 3)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *this;
  }

  else
  {
    v5 = *this;
    if (v5 == 109)
    {
      if (*(this + 1) == 95)
      {
        v6 = strlen(this + 2);
        v7 = this + 2;
LABEL_9:
        v8 = a2;
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (v5 == 95)
  {
    v6 = strlen(this + 1);
    v7 = this + 1;
    goto LABEL_9;
  }

LABEL_10:
  v6 = strlen(this);
  v8 = a2;
  v7 = this;
LABEL_11:

  return re::DynamicString::append(v8, v7, v6);
}

BOOL re::introspectionPrettyNameCompare(const char *a1, const char *a2, size_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = *v5;
  v8 = v6 - 2;
  if (v6 >= 2 && v7 == 109)
  {
    v9 = *(v5 + 1);
    v10 = v9 == 95;
    if (v9 == 95)
    {
      v5 += 2;
    }
  }

  else
  {
    v8 = v6 - 1;
    v10 = v7 == 95;
    if (v7 == 95)
    {
      ++v5;
    }
  }

  if (!v10)
  {
    v8 = v6;
  }

  result = 0;
  if (v8 && v8 == a3)
  {
    return !strncmp(v5, a2, a3) || __toupper(*v5) == *a2 && !strncmp(v5 + 1, a2 + 1, a3 - 1);
  }

  return result;
}

uint64_t re::getIntrospectionMemberByNameRecursive(re *this, const re::IntrospectionStructure *a2, const char *a3, int *a4)
{
  if (!*(this + 14))
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(*(this + 8) + 8 * v7);
    if (*v8 != 1)
    {
      break;
    }

    if (*(v8 + 40) == 3)
    {
      v10 = *(v8 + 16);
      *a3 = 0;
      IntrospectionMemberByNameRecursive = re::getIntrospectionMemberByNameRecursive(v10, a2, a3, a4);
      if (IntrospectionMemberByNameRecursive)
      {
        *a3 += *(v8 + 36);
        return IntrospectionMemberByNameRecursive;
      }
    }

    else
    {
      v12 = strlen(a2);
      if (re::introspectionPrettyNameCompare(*(v8 + 8), a2, v12))
      {
        return v8;
      }
    }

LABEL_11:
    if (++v7 >= *(this + 14))
    {
      return 0;
    }
  }

  if (*v8 != 5)
  {
    goto LABEL_11;
  }

  v9 = strlen(a2);
  if (!re::introspectionPrettyNameCompare(*(v8 + 8), a2, v9))
  {
    goto LABEL_11;
  }

  re::makePrettyMemberName(*(v8 + 16), &v16);
  if (v17)
  {
    v15 = *&v18[7];
  }

  else
  {
    v15 = v18;
  }

  *a3 = 0;
  v8 = re::getIntrospectionMemberByNameRecursive(this, v15, a3, v14);
  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  return v8;
}

re::IntrospectionBase *re::introspectionAllocPointer(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3)
{
  v6 = *(a3 + 5);
  v7 = *(a3 + 6);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = (*(*a1 + 32))(a1, v6, v7);
  re::introspectionCallConstructor(a2, a3, v8);
  re::introspectionInitElement(a1, v9, a3, v8);
  return v8;
}

void re::introspectionDestroyAllocatedMemory(re::DynamicString **a1, uint64_t a2, void *a3, re::PolymorphicData *a4)
{
  v7 = *(a4 + 4);
  if (v7 <= 4)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v13 = *a1;
        if (*a1)
        {
          v14 = *(a4 + 6);

          re::introspectionReleasePointer(v13, a2, a3, v14);
        }
      }

      else if (v7 == 2 && *(a4 + 16) >= 1)
      {
        v9 = 0;
        do
        {
          re::introspectionDestroyAllocatedMemory((a1 + *(*(a4 + 6) + 20) * v9++), a2, a3, *(a4 + 6));
        }

        while (v9 < *(a4 + 16));
      }

      return;
    }

    if (v7 == 3)
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

    else
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

LABEL_36:
    v10(v11, v12);
    return;
  }

  if (v7 <= 6)
  {
    if (v7 != 5)
    {

      re::DynamicString::deinit(a1);
      return;
    }

    v10 = *(*a4 + 56);
    v11 = a4;
    v12 = a1;

    goto LABEL_36;
  }

  switch(v7)
  {
    case 7:
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;

      goto LABEL_36;
    case 8:
      v15 = *(a4 + 12);
      if (v15)
      {

        v15();
      }

      else
      {
        re::PolymorphicData::makeWithPointer(&__src, a4, a1);
        v16 = v24;
        v17 = a4;
        if (v24)
        {
          v17 = a4;
          if (v23)
          {
            v17 = a4;
            if (__src)
            {
              v21 = 0;
              memcpy(&v21, __src, *(v23 + 20));
              v18 = *v16;
              v17 = a4;
              if (v18)
              {
                v19 = (*(v16 + 1) + 24);
                while (*v19 != v21)
                {
                  v19 += 5;
                  if (!--v18)
                  {
                    v17 = a4;
                    goto LABEL_50;
                  }
                }

                v17 = *(v19 - 2);
              }
            }
          }
        }

LABEL_50:
        v20 = *(v17 + 10);
        if (v20)
        {
          v20(a4, a3, a1);
        }
      }

      break;
    case 10:

      re::StringID::destroyString(a1);
      break;
  }
}

uint64_t *re::PolymorphicData::makeWithPointer@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const re::IntrospectionBase *a3@<X1>)
{
  if (*(this + 4) != 8)
  {
    goto LABEL_19;
  }

  v3 = *(this + 14);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = this[8];
  v5 = *(this + 14);
  v6 = v4;
  do
  {
    v7 = *v6;
    if (**v6 == 2)
    {
      goto LABEL_7;
    }

    ++v6;
    --v5;
  }

  while (v5);
  v7 = 0;
LABEL_7:
  while (1)
  {
    v8 = *v4;
    if (**v4 == 3)
    {
      break;
    }

    ++v4;
    if (!--v3)
    {
      v8 = 0;
      break;
    }
  }

  if (v7 && ((v9 = *(v7 + 1), v8) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (v11 = *(v8 + 1)) != 0))
  {
    *a1 = 0;
    if (a3)
    {
      *a1 = a3 + v8[6];
    }

    a1[1] = v11;
    a1[2] = v9;
  }

  else
  {
LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return this;
}

void re::introspectionReleasePointer(re::DynamicString **a1, uint64_t a2, void *a3, uint64_t a4)
{
  re::introspectionDestroyAllocatedMemory(a1, a2, a3, a4);
  if (*(a4 + 16) != 8 || !*(a4 + 96))
  {
    v7 = *(*a2 + 40);

    v7(a2, a1);
  }
}

re *re::introspectionInitMember(re *this, re::Allocator *a2, const re::IntrospectionBase *a3, void *a4)
{
  v5 = this;
  v6 = *(a2 + 4);
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    else
    {
      if (v6 != 5)
      {
        return this;
      }

      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    return v7(v8, v9, v10);
  }

  else
  {
    switch(v6)
    {
      case 6:
        re::DynamicString::deinit(a3);
        *a3 = v5;

        return re::DynamicString::setCapacity(a3, 0);
      case 7:
        v11 = *(*a2 + 64);

        return v11(a2, a3, this, 3);
      case 8:

        return re::introspectionInitStructure(this, a2, a3, a4);
    }
  }

  return this;
}

re *re::introspectionInitStructure(re *this, re::Allocator *a2, const re::IntrospectionStructure *a3, void *a4)
{
  v4 = *(a2 + 14);
  if (v4)
  {
    v7 = this;
    for (i = 0; i < v4; ++i)
    {
      v9 = *(*(a2 + 8) + 8 * i);
      if (*v9 == 1)
      {
        this = re::introspectionInitMember(v7, *(v9 + 16), (a3 + *(v9 + 36)), a4);
        v4 = *(a2 + 14);
      }
    }
  }

  return this;
}

void re::introspectionCallConstructor(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 <= 5)
  {
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }

      else
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }
    }

    else
    {
      if (v6 == 2)
      {
        if (*(a2 + 64) >= 1)
        {
          v11 = 0;
          do
          {
            re::introspectionCallConstructor(a1, *(a2 + 48), a3 + *(*(a2 + 48) + 20) * v11++);
          }

          while (v11 < *(a2 + 64));
        }

        return;
      }

      if (v6 != 3)
      {
        return;
      }

      v8 = *(*a2 + 48);
      v9 = a2;
      v10 = a3;
    }

LABEL_28:
    v8(v9, v10);
    return;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;

      re::DynamicString::setCapacity(a3, 0);
      return;
    }

    v8 = *(*a2 + 48);
    v9 = a2;
    v10 = a3;

    goto LABEL_28;
  }

  switch(v6)
  {
    case 8:
      v7 = *(a2 + 72);
      if (!v7)
      {
        v12 = *(a2 + 20);

        bzero(a3, v12);
        return;
      }

LABEL_30:

      v7(a2, a1);
      return;
    case 10:
      *a3 = 0;
      *(a3 + 8) = &str_67;
      return;
    case 11:
      v7 = *(a2 + 64);
      if (v7)
      {
        goto LABEL_30;
      }

      break;
  }
}

re *re::introspectionInitElement(re *this, int a2, re::Allocator *a3, re::IntrospectionBase *a4)
{
  v7 = *(a3 + 4);
  if (v7 == 2)
  {
    if (*(*(a3 + 6) + 16) == 1)
    {
      bzero(a4, *(a3 + 5));
    }
  }

  else if (v7 == 1)
  {
    *a4 = 0;
  }

  return re::introspectionInitMember(this, a3, a4, a4);
}

re::DynamicString **re::introspectionDeepCopy(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3, uint64_t *a4)
{
  v8 = re::introspectionAllocPointer(a1, a2, a3);
  if ((re::introspectionDoDeepCopy(a1, a2, a3, a4, v8) & 1) == 0)
  {
    re::introspectionReleasePointer(v8, a1, a2, a3);
    return 0;
  }

  return v8;
}

uint64_t re::introspectionDoDeepCopy(re *a1, _anonymous_namespace_ *a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  v67[3] = *MEMORY[0x1E69E9840];
  v6 = a5;
  switch(a3[4])
  {
    case 0:
    case 9:
      goto LABEL_2;
    case 1:
      v29 = *(a3 + 6);
      if (*(v29 + 16) != 8 || !*(v29 + 88))
      {
        v61 = *a4;
        if (*a4)
        {
          result = re::introspectionDeepCopy(a1, a2, *(a3 + 6), v61);
          __dst = result;
          if (!result)
          {
            return result;
          }

          v10 = a3[5];
          p_dst = &__dst;
          v11 = v6;
        }

        else
        {
LABEL_2:
          v10 = a3[5];
          v11 = a5;
          p_dst = a4;
        }

        memcpy(v11, p_dst, v10);
        return 1;
      }

      memcpy(a5, a4, a3[5]);
      (*(v29 + 88))(*v6);
      return 1;
    case 2:
      if (*(*(a3 + 6) + 28))
      {
        goto LABEL_2;
      }

      if (a3[16] < 1)
      {
        return 1;
      }

      v27 = 0;
      while (1)
      {
        v28 = (*(*a3 + 40))(a3, 0);
        if ((re::introspectionDoDeepCopy(a1, a2, v28, (a4 + *(*(a3 + 6) + 20) * v27), (v6 + *(*(a3 + 6) + 20) * v27)) & 1) == 0)
        {
          break;
        }

        if (++v27 >= a3[16])
        {
          return 1;
        }
      }

      return 0;
    case 3:
      v13 = (*(*a3 + 88))(a3, a4);
      (*(*a3 + 72))(a3, a1, a2, v6, v13);
      if (!v13)
      {
        return 1;
      }

      v14 = 0;
      while (1)
      {
        v15 = (*(*a3 + 40))(a3, 0);
        v16 = (*(*a3 + 104))(a3, a4, v14);
        v17 = (*(*a3 + 96))(a3, v6, v14);
        if ((re::introspectionDoDeepCopy(a1, a2, v15, v16, v17) & 1) == 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          return 1;
        }
      }

      return 0;
    case 4:
      v22 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 64))(a3, v6, a1, a2, v22);
      if (!v22)
      {
        return 1;
      }

      v23 = 0;
      while (1)
      {
        v24 = (*(*a3 + 40))(a3, 0);
        v25 = (*(*a3 + 104))(a3, a4, v23);
        v26 = (*(*a3 + 96))(a3, v6, v23);
        if ((re::introspectionDoDeepCopy(a1, a2, v24, v25, v26) & 1) == 0)
        {
          break;
        }

        if (v22 == ++v23)
        {
          return 1;
        }
      }

      return 0;
    case 5:
      v30 = (*(*a3 + 96))(a3, a4);
      v32 = v31;
      __dst = (*(*a3 + 88))(a3, a4);
      LODWORD(v67[0]) = v33;
      v34 = v32;
      v35 = HIWORD(v32);
      if (__dst == v30 && v33 == v32 && HIWORD(v33) == HIWORD(v32))
      {
        return 1;
      }

      while (1)
      {
        v38 = (*(*a3 + 40))(a3, 0);
        v39 = (*(*a3 + 104))(a3, &__dst);
        v40 = (*(*a3 + 72))(a3, a1, a2, v6);
        result = re::introspectionDoDeepCopy(a1, a2, v38, v39, v40);
        if (!result)
        {
          break;
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&__dst);
        if (__dst == v30 && LOWORD(v67[0]) == v34 && WORD1(v67[0]) == v35)
        {
          return 1;
        }
      }

      return result;
    case 6:
      re::DynamicString::operator=(a5, a4);
      return 1;
    case 7:
      v60 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 72))(a3, v6, v60);
      operator new();
    case 8:
      if (!a3[14])
      {
        return 1;
      }

      v47 = 0;
      while (2)
      {
        v48 = *(*(a3 + 8) + 8 * v47);
        if (*v48 != 1)
        {
          goto LABEL_74;
        }

        v49 = *(v48 + 40);
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            memcpy(v6 + *(v48 + 36), a4 + *(v48 + 36), *(*(v48 + 16) + 20));
            memcpy(v6 + *(v48 + 64), a4 + *(v48 + 64), *(*(v48 + 48) + 20));
            v57 = *(*(v48 + 16) + 48);
            if (v57)
            {
              if (*(v57 + 16) == 8)
              {
                v58 = *(v57 + 88);
                if (v58)
                {
                  v58(v6 + *(v48 + 36));
                }
              }
            }

LABEL_74:
            if (++v47 >= a3[14])
            {
              return 1;
            }

            continue;
          }

          if (v49 != 3)
          {
            goto LABEL_74;
          }
        }

        else if (v49)
        {
          if (v49 != 1)
          {
            goto LABEL_74;
          }

          v50 = *(v48 + 64);
          v51 = *(v48 + 48);
          __dst = 0;
          memcpy(&__dst, a4 + v50, *(v51 + 20));
          v52 = __dst;
          v53 = (*(*a1 + 32))(a1, __dst * *(*(v48 + 16) + 20), 0);
          if (v53)
          {
            v54 = v53;
            *(v6 + *(v48 + 36)) = v53;
            v55 = *(a4 + *(v48 + 36));
            v56 = *(a3 + 6);
            if (*(v56 + 28))
            {
              memcpy(v53, *(a4 + *(v48 + 36)), v52 * *(v56 + 20));
LABEL_73:
              v6 = a5;
              memcpy(a5 + *(v48 + 64), &__dst, *(*(v48 + 48) + 20));
              goto LABEL_74;
            }

            v59 = v52 - v47;
            if (v52 <= v47)
            {
              goto LABEL_73;
            }

            while (re::introspectionDoDeepCopy(a1, a2, v56, v55, v54))
            {
              if (!--v59)
              {
                v47 = v52;
                goto LABEL_73;
              }
            }
          }

          return 0;
        }

        break;
      }

      if (re::introspectionDoDeepCopy(a1, a2, *(v48 + 16), (a4 + *(v48 + 36)), (v6 + *(v48 + 36))))
      {
        goto LABEL_74;
      }

      return 0;
    case 0xA:
      re::StringID::operator=(a5, a4);
      return 1;
    case 0xB:
      (*(a3 + 11))(a1, a2, a3, a4, a5);
      return 1;
    case 0xD:
      v18 = (*(*a3 + 56))(a3, a4);
      (*(*a3 + 64))(a3, v6, v18);
      if ((*(*a3 + 56))(a3, a4))
      {
        v19 = (*(*a3 + 40))(a3, 0);
        v20 = (*(*a3 + 80))(a3, a4);
        v21 = (*(*a3 + 72))(a3, v6);
        re::introspectionDoDeepCopy(a1, a2, v19, v20, v21);
      }

      return 1;
    default:
      v44 = *re::foundationIntrospectionLogObjects(a1);
      result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      re::DynamicString::DynamicString(&__dst);
      re::appendPrettyTypeName(a3, &__dst, v45);
      if (v67[0])
      {
        v46 = v67[1];
      }

      else
      {
        v46 = v67 + 1;
      }

      *buf = 136315138;
      v65 = v46;
      _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "introspectionDeepCopy cannot copy '%s'", buf, 0xCu);
      if (__dst && (v67[0] & 1) != 0)
      {
        (*(*__dst + 40))();
      }

      return 0;
  }
}

unint64_t re::introspectionFindStructureVersion(re *this, const re::IntrospectionStructure *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 1;
  }

  v3 = *(this + 8);
  result = 1;
  v5 = 1;
  do
  {
    v6 = *v3;
    if (**v3 == 6 && (v6[10] & 1) == 0)
    {
      v7 = *(v6 + 1);
      if (v7 > v5)
      {
        result = v7;
        v5 = v7;
      }
    }

    ++v3;
    --v2;
  }

  while (v2);
  return result;
}

re *re::introspectionFindForVersion(uint64_t **this, const re::IntrospectionStructure *a2)
{
  v10 = 1;
  v11 = this;
  v9 = 0;
  v3 = *(this + 14);
  if (v3)
  {
    v4 = 0;
    v5 = this[8];
    v6 = 1;
    do
    {
      v7 = *v5;
      if (**v5 == 6 && (v7[10] & 1) == 0 && *(v7 + 1) > v6)
      {
        v4 = *v5;
        v6 = *(v7 + 1);
      }

      ++v5;
      --v3;
    }

    while (v3);
    v9 = v4;
    v10 = v6;
  }

  while (v10 != a2)
  {
    {
      return 0;
    }
  }

  return v11;
}

BOOL anonymous namespace::findPreviousVersion(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  if (a1 != 1)
  {
    *a3 = *(a2 + 16);
    *a4 = 1;
    *a5 = 0;
    v5 = *a3;
    if (*(*a3 + 56))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = *(*(v5 + 64) + 8 * v6);
        if (*v8 == 6 && (*(v8 + 40) & 1) == 0)
        {
          v9 = *(v8 + 8);
          if (v9 < a1 && v9 > v7)
          {
            *a4 = v9;
            *a5 = v8;
            v5 = *a3;
            v7 = v9;
          }
        }

        ++v6;
      }

      while (v6 < *(v5 + 56));
    }
  }

  return a1 != 1;
}

uint64_t re::introspectionRunComplexVersion(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3, unint64_t a4, re::DynamicString **a5, uint64_t a6, unint64_t a7, re::IntrospectionBase *a8)
{
  v13 = *(a6 + 56);
  if (v13)
  {
    v14 = *(a6 + 64);
    do
    {
      v15 = *v14;
      if (**v14 == 6 && (v15[10] & 1) == 0 && *(v15 + 1) == a7)
      {
        goto LABEL_8;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
LABEL_8:
  while (1)
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
    {
      break;
    }

    v16 = v27;
    v17 = v15;
    v18 = a7;
    v19 = a6;
    while (v16 != a4)
    {
      v18 = v16;
      v19 = v28;
      v17 = v26;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      {
        goto LABEL_18;
      }

      v16 = v27;
    }

    v20 = *(v17 + 32);
    if (!v20)
    {
      break;
    }

    v21 = a8;
    if (v18 != a7)
    {
      v21 = re::introspectionAllocPointer(a1, a2, v19);
      v20 = *(v17 + 32);
    }

    v20(a2, a5, v21);
    re::introspectionReleasePointer(a5, a1, a2, a3);
    a4 = v18;
    a5 = v21;
    a3 = v19;
    if (v18 >= a7)
    {
      return 1;
    }
  }

LABEL_18:
  re::introspectionReleasePointer(a5, a1, a2, a3);
  return 0;
}

void re::getDowngradeFunctions(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v4 = *(a1 + 56);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 64) + 8 * i);
      if (*v6 == 6 && *(v6 + 40) == 1 && *(v6 + 56) >= a2)
      {
        LODWORD(v11) = *(v6 + 56);
        *(&v11 + 1) = *(v6 + 48);
        std::__tree<std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>,std::__map_value_compare<re::DowngradeCode,std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>,std::greater<re::DowngradeCode>,true>,std::allocator<std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>>>::__emplace_multi<std::pair<re::DowngradeCode const,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>>(&v12, &v11);
      }
    }

    v7 = v12;
    if (v12 != v13)
    {
      do
      {
        re::DynamicArray<re::TransitionCondition *>::add(a3, v7 + 5);
        v8 = v7[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != v13);
    }
  }

  std::__tree<unsigned long long>::destroy(&v12, v13[0]);
}

_DWORD *re::introspectionFirstStructureMember(re *this, const re::IntrospectionStructure *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 8);
    while (1)
    {
      result = *v3;
      if (**v3 == 1 && result[10] != 3)
      {
        break;
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) No member found in type info.", "!Unreachable code", "introspectionFirstStructureMember", 1434);
    result = _os_crash("assertion failure: (!Unreachable code) No member found in type info.");
    __break(1u);
  }

  return result;
}

uint64_t *re::introspectionAllocator()
{
  {
    byte_1EE1C6860 = 0;
    re::introspectionAllocator(void)::baseAllocator = &unk_1F5CCF7F8;
    *algn_1EE1C6858 = "Introspection allocator";
  }

  {
    re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(&re::introspectionAllocator(void)::autoFreeAllocator, "Introspection allocator", &re::introspectionAllocator(void)::baseAllocator);
  }

  return &re::introspectionAllocator(void)::autoFreeAllocator;
}

uint64_t re::CustomPolymorphicTable::addType(re::CustomPolymorphicTable *this, const char *__s, const re::IntrospectionBase *a3, uint64_t a4, int a5)
{
  v10 = strlen(__s);
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], v10 + 1, 0);
  memcpy(v12, __s, v10 + 1);
  v14 = v12;
  v15[0] = a3;
  v15[1] = 0;
  v15[2] = a4;
  v16 = a5;
  re::DynamicArray<re::IntrospectionPolymorphicType>::add(this, &v14);
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(v15);
  *(this + 10) = *(this + 2);
  *(this + 6) = *(this + 4);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::IntrospectionPolymorphicType>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::IntrospectionPolymorphicType>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *v5 = *a2;
  *(v5 + 16) = 0;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(v5 + 8);
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(a2 + 24);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 24) = v7;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

re *re::CustomPolymorphicTable::removeType(re *this, const re::IntrospectionBase *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    v4 = 0;
    for (i = (*(this + 4) + 8); *i != a2; i += 5)
    {
      if (v2 == ++v4)
      {
        return this;
      }
    }

    v6 = *(i - 1);
    if (v6)
    {
      v7 = re::globalAllocators(this);
      (*(*v7[2] + 40))(v7[2], v6);
    }

    this = re::DynamicArray<re::IntrospectionPolymorphicType>::removeStableAt(v3, v4);
    *(v3 + 10) = *(v3 + 2);
    *(v3 + 6) = *(v3 + 4);
  }

  return this;
}

uint64_t re::DynamicArray<re::IntrospectionPolymorphicType>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v13 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "removeStableAt";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 969;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v3;
    _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 40 * a2 + 40;
    if (v6 != v5 + 40 * v3)
    {
      v7 = 40 * v3 - 40 * a2 - 40;
      do
      {
        v8 = *(v6 - 32);
        v9 = *(v6 - 24);
        *(v6 - 40) = *v6;
        v10 = *(v6 + 16);
        v11 = *(v6 + 24);
        *(v6 + 8) = v8;
        *(v6 + 16) = v9;
        *(v6 - 24) = v10;
        *(v6 - 16) = v11;
        *(v6 - 8) = *(v6 + 32);
        v6 += 40;
        v7 -= 40;
      }

      while (v7);
      v3 = *(a1 + 16);
    }
  }

  result = re::SerializedReference<re::IntrospectionBase const*>::reset(*(a1 + 32) + 40 * v3 - 32);
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::CustomPolymorphicTable::clear(uint64_t this)
{
  v1 = this;
  v23 = *MEMORY[0x1E69E9840];
  *(*(this + 56) + 8) = 0;
  *(this + 48) = 0;
  *(this + 40) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(this + 32);
    do
    {
      v6 = *(v5 + v3);
      if (v6)
      {
        v7 = re::globalAllocators(this);
        this = (*(*v7[2] + 40))(v7[2], v6);
        v2 = *(v1 + 16);
      }

      if (v2 <= v4)
      {
        v13 = 0;
        memset(v22, 0, sizeof(v22));
        v10 = MEMORY[0x1E69E9C10];
        v14 = 136315906;
        v15 = "operator[]";
        v16 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v17 = 789;
        v18 = 2048;
        v19 = v4;
        v20 = 2048;
        v21 = v2;
        _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
        _os_crash_msg();
        __break(1u);
      }

      v5 = *(v1 + 32);
      *(v5 + v3) = 0;
      ++v4;
      v3 += 40;
    }

    while (v2 > v4);
    *(v1 + 16) = 0;
    v8 = 40 * v2;
    v9 = v5 + 8;
    do
    {
      this = re::SerializedReference<re::IntrospectionBase const*>::reset(v9);
      v9 += 40;
      v8 -= 40;
    }

    while (v8);
  }

  ++*(v1 + 24);
  *(v1 + 56) = 0;
  return this;
}

uint64_t re::internal::getOrCreateInfo(re::internal *this, uint64_t (*a2)(re::internal *), re::IntrospectionBase *(*a3)(void), void (*a4)(re::IntrospectionBase *), re::IntrospectionBase **a5)
{
  v5 = a5;
  if (a5)
  {
    v9 = *a4;
    if (*a4)
    {
      return v9;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
    v9 = *a4;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
    if (v9)
    {
      return v9;
    }

    re::introspectionSharedMutex(v10);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    v9 = *a4;
    if (*a4)
    {
LABEL_7:
      re::introspectionSharedMutex(this);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return v9;
    }
  }

  v9 = a2(this);
  *a4 = v9;
  this = a3();
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  return v9;
}

double re::internal::declareType@<D0>(uint64_t *__return_ptr a1@<X8>, re::StringID *a2@<X2>, re::TypeRegistry *a3@<X0>, int a4@<W1>, uint64_t a5@<X3>)
{
  v5 = a5;
  re::TypeRegistry::typeID(a1, a3, a2, a5);
  if (*a1)
  {
    if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a3 + 32, a1[1]) + 3) == a4)
    {
      return result;
    }

    re::internal::assertLog(5, v10, "assertion failure: '%s' (%s:line %i) Type %s has already been declared with different type category.", "registry->typeCategory(typeID) == typeCategory", "declareType", 1680, *(a2 + 1));
    _os_crash("assertion failure: (registry->typeCategory(typeID) == typeCategory) Type %s has already been declared with different type category.", v12);
    __break(1u);
  }

  re::TypeRegistry::declareType(&v13, a2, a3, a4, v5, 0);
  result = *&v13;
  *a1 = v13;
  return result;
}

void re::internal::registerCallbackSerializerType(uint64_t *__return_ptr a1@<X8>, re::internal *this@<X0>, re::TypeRegistry *a3@<X1>, const re::IntrospectionBase *a4@<X2>, const re::StringID *a5@<X3>, void (*a6)(void *, const re::TypeInfo *, re::Allocator *, void *)@<X4>)
{
  v19[0] = 0x258C98EAAF29A10ALL;
  v19[1] = "CallbackSerializerAttribute";
  v12 = re::TypeRegistry::typeID(&v21, this, v19);
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  v13 = (*(**(this + 2) + 32))(*(this + 2), 8, 8);
  *v13 = a3;
  re::StackScratchAllocator::StackScratchAllocator(v20);
  re::TypeBuilder::TypeBuilder(v19, v20);
  v14 = *(a3 + 5);
  v15 = *(a3 + 6);
  v18[0] = 0;
  v18[1] = 0xFFFFFFFFLL;
  re::TypeBuilder::beginObjectType(v19, a4, 1, 1, v14, v15, v18);
  re::TypeBuilder::setConstructor(v19, a5);
  re::TypeBuilder::setDestructor(v19, a6);
  re::TypeBuilder::setIsCallbackSerializer(v19, 1);
  v17 = v21;
  re::TypeBuilder::addAttribute(v19, &v17, v13, 0xFFFFFFFFLL, 1);
  re::TypeBuilder::commitTo(a1, v19, this);
  re::TypeBuilder::~TypeBuilder(v19, v16);
  re::StackScratchAllocator::~StackScratchAllocator(v20);
}

void re::internal::registerStructureType(re::TypeRegistry *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v212 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a1, a2, v197);
  if (v197[0])
  {
    return;
  }

  v162 = re::TypeRegistry::typeName(a1, a2);
  if (*a2)
  {
    v8 = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, *(a2 + 1));
    if (v8)
    {
      v9 = *(v8 + 16);
      if (!a3)
      {
        goto LABEL_5;
      }

LABEL_7:
      v11 = 0;
      v10 = 0;
      v12 = a3;
      while (!v11 || !v10)
      {
        v13 = *(v12 + 56);
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = *(v12 + 64);
        v12 = 0;
        do
        {
          v15 = *v14;
          v16 = **v14;
          if (v16 == 3)
          {
            v10 = *v14;
          }

          else if (v16 == 2)
          {
            v11 = *(v15 + 1);
          }

          else if (v16 == 1 && v15[10] == 3)
          {
            v12 = *(v15 + 2);
          }

          ++v14;
          --v13;
        }

        while (v13);
        if (!v12)
        {
LABEL_23:
          if (!v11)
          {
            v158 = a2;
            v155 = 0;
            goto LABEL_30;
          }

          break;
        }

        if (!*(v12 + 16))
        {
          return;
        }
      }

      v158 = a2;
      v17 = *v11;
      v155 = v11;
      if (v17)
      {
        v18 = (*(v11 + 1) + 24);
        while (*(v18 - 2) != a3)
        {
          v18 += 5;
          if (!--v17)
          {
            goto LABEL_28;
          }
        }

        v157 = 0;
        v154 = *v18;
        v19 = 1;
      }

      else
      {
LABEL_28:
        v157 = 0;
        v19 = 0;
      }

      goto LABEL_31;
    }
  }

  v9 = 0xFFFFFFFFLL;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v158 = a2;
  v155 = 0;
  v10 = 0;
LABEL_30:
  v19 = 0;
  v157 = 1;
LABEL_31:
  v20 = *(a3 + 56);
  v21 = *(a3 + 64);
  v159 = a4;
  if (v20)
  {
    v156 = v9;
    v22 = 0;
    v23 = 0xFFFFFFFFLL;
    v24 = *(a3 + 64);
    v25 = *(a3 + 56);
    do
    {
      v26 = *v24;
      if (**v24 == 1 && v26[10] == 3)
      {
        v27 = *(v26 + 2);
        v22 = *(v27 + 32);
        v23 = *(v27 + 40);
      }

      ++v24;
      --v25;
    }

    while (v25);
    v28 = 0;
    v160 = 0;
    *&v201 = 0;
    *(&v201 + 1) = 0xFFFFFFFFLL;
    v161 = v156 - 1;
    while (1)
    {
      v29 = *(v21 + 8 * v28);
      if (*v29 != 6 || (*(v29 + 40) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (*(v29 + 8) == v156)
      {
        v160 = *(v29 + 32);
        v30 = *(v29 + 16);
        if (v30 == a3)
        {
          v31 = *(v30 + 48);
          if (v31)
          {
            v32 = *v31;
            if (*v31)
            {
              v33 = v31[1];
              if (v33)
              {
                v34 = (v31 + 2);
                do
                {
                  v32 = 31 * v32 + v33;
                  v35 = *v34++;
                  v33 = v35;
                }

                while (v35);
              }
            }
          }

          else
          {
            v32 = 0;
          }

          v184 = 2 * v32;
          v185 = v31;
          re::TypeRegistry::typeID(v197, a1, &v184, v161);
          v201 = *v197;
          if (v184)
          {
            if (v184)
            {
            }
          }

          if (v201)
          {
            goto LABEL_70;
          }

          re::TypeRegistry::declareType(v197, v162, a1, 8, v161, 1);
          v201 = *v197;
          v200 = *v197;
          v44 = &v200;
          goto LABEL_69;
        }
      }

      else
      {
        v30 = *(v29 + 16);
        if (v30 == a3)
        {
          goto LABEL_70;
        }
      }

      v201 = *(v30 + 32);
      re::TypeRegistry::typeInfo(a1, &v201, v197);
      if ((v197[0] & 1) == 0)
      {
        if (!v201)
        {
          StructureVersion = re::introspectionFindStructureVersion(v30, v36);
          v38 = *(v30 + 48);
          if (v38)
          {
            v39 = *v38;
            if (*v38)
            {
              v40 = v38[1];
              if (v40)
              {
                v41 = (v38 + 2);
                do
                {
                  v39 = 31 * v39 + v40;
                  v42 = *v41++;
                  v40 = v42;
                }

                while (v42);
              }
            }
          }

          else
          {
            v39 = 0;
          }

          v184 = 2 * v39;
          v185 = v38;
          re::TypeRegistry::declareType(v197, &v184, a1, 8, StructureVersion, 0);
          v201 = *v197;
          if (v184)
          {
            if (v184)
            {
            }
          }

          *(v30 + 32) = v201;
        }

        v199 = v201;
        v44 = &v199;
LABEL_69:
        re::internal::registerStructureType(a1, v44, v30, v159);
      }

LABEL_70:
      if (++v28 == v20)
      {
        a4 = v159;
        v9 = v156;
        goto LABEL_73;
      }
    }
  }

  v22 = 0;
  v160 = 0;
  *&v201 = 0;
  v23 = 0xFFFFFFFFLL;
  *(&v201 + 1) = 0xFFFFFFFFLL;
LABEL_73:
  re::StackScratchAllocator::StackScratchAllocator(v198);
  re::TypeBuilder::TypeBuilder(v197, v198);
  re::TypeBuilder::TypeBuilder(&v184, v198);
  v46 = *(a3 + 20);
  v47 = *(a3 + 24);
  v183[0] = v22;
  v183[1] = v23;
  re::TypeBuilder::beginObjectType(v197, v162, v9, a4, v46, v47, v183);
  re::TypeBuilder::setIntroducedVersion(v197, *(a3 + 136));
  re::TypeBuilder::setConstructor(v197, *(a3 + 104));
  re::TypeBuilder::setDestructor(v197, *(a3 + 112));
  re::TypeBuilder::setRetain(v197, *(a3 + 88));
  re::TypeBuilder::setRelease(v197, *(a3 + 96));
  re::TypeBuilder::setEncoder(v197, *(a3 + 120));
  re::TypeBuilder::setDecoder(v197, *(a3 + 128));
  if (v201)
  {
    v182 = v201;
    re::TypeBuilder::setPreviousVersion(v197, &v182);
  }

  if (v19)
  {
    re::TypeBuilder::addCustomClassID(v197, v154);
  }

  if (!v22)
  {
    if (v10)
    {
      v181 = *(*(v10 + 1) + 32);
      *&v207 = 0xC98E91CCDF0B5FC4;
      *(&v207 + 1) = "customClassID";
      re::TypeBuilder::addObjectMemberCustomClassID(v197, &v181, &v207, v10[6]);
      if (v207)
      {
        if (v207)
        {
        }
      }
    }
  }

  if (!v20)
  {
    v97 = 0;
    v82 = v160;
    goto LABEL_174;
  }

  for (i = 0; i != v20; ++i)
  {
    v51 = *(v21 + 8 * i);
    if (*v51 != 1)
    {
      continue;
    }

    v52 = *(v51 + 40);
    if (v52 > 1)
    {
      if (v52 == 2)
      {
        *v202 = *(*(v51 + 48) + 32);
        v22 = *(*(*(v51 + 16) + 48) + 40);
        v68 = *(v162 + 1);
        re::makePrettyMemberName(*(v51 + 8), &v164);
        v70 = &v165 + 1;
        if (v165)
        {
          v70 = v166;
        }

        re::DynamicString::format(&v207, "%s::%s", v69, v68, v70);
        if (v164 && (v165 & 1) != 0)
        {
          (*(*v164 + 40))();
        }

        if (BYTE8(v207))
        {
          v71 = v208;
        }

        else
        {
          v71 = &v207 + 9;
        }

        re::TypeRegistry::makeStringID(&v164, a1, v71);
        v187 = -1;
        memset(v188, 0, sizeof(v188));
        v189 = 0u;
        v190 = 0xFFFFFFFFLL;
        v191 = 1;
        v192 = 0;
        v193 = 0xFFFFFFFFLL;
        v194 = 1;
        v195 = 0xFFFFFFFFLL;
        v196 = 0;
        LOBYTE(v184) = 9;
        re::StringID::operator=(&v185, &v164);
        v186 = 1;
        *&v188[1] = 0x800000008;
        *(&v189 + 4) = 0;
        *&v188[3] = 0;
        *&v188[5] = 0;
        v191 = -1;
        v193 = v22;
        v194 = 1;
        v172 = *v202;
        re::TypeBuilder::addCustomClassIDForPointer(&v184, &v172, (*(v51 + 64) - *(v51 + 36)));
        re::TypeBuilder::commitTo(&v179, &v184, a1);
        v72 = *(v51 + 32);
        v171 = v179;
        v73 = *(v51 + 8);
        if (v73)
        {
          v74 = *v73;
          if (*v73)
          {
            v75 = v73[1];
            if (v75)
            {
              v76 = (v73 + 2);
              do
              {
                v74 = 31 * v74 + v75;
                v77 = *v76++;
                v75 = v77;
              }

              while (v77);
            }
          }
        }

        else
        {
          v74 = 0;
        }

        *&v176 = 2 * v74;
        *(&v176 + 1) = v73;
        v79 = re::TypeBuilder::addObjectMember(v197, v72, &v171, &v176, *(v51 + 36));
        if ((v176 & 1) == 0)
        {
          goto LABEL_138;
        }

        if ((v176 & 1) == 0)
        {
          goto LABEL_138;
        }

        v80 = *(&v176 + 1);
LABEL_137:
LABEL_138:
        if (v164)
        {
          if (v164)
          {
          }
        }

        if (v207 && (BYTE8(v207) & 1) != 0)
        {
          (*(*v207 + 40))(v207, v208);
        }

        continue;
      }

      if (v52 != 3)
      {
        goto LABEL_283;
      }
    }

    else
    {
      if (v52)
      {
        if (v52 != 1)
        {
          goto LABEL_283;
        }

        *v202 = *(*(*(v51 + 16) + 48) + 32);
        v179 = *(*(v51 + 48) + 32);
        v22 = *(v162 + 1);
        re::makePrettyMemberName(*(v51 + 8), &v164);
        v54 = &v165 + 1;
        if (v165)
        {
          v54 = v166;
        }

        re::DynamicString::format(&v207, "%s::%s", v53, v22, v54);
        if (v164 && (v165 & 1) != 0)
        {
          (*(*v164 + 40))();
        }

        if (BYTE8(v207))
        {
          v55 = v208;
        }

        else
        {
          v55 = &v207 + 9;
        }

        re::TypeRegistry::makeStringID(&v164, a1, v55);
        v177 = v179;
        v178 = *v202;
        re::TypeBuilder::beginArrayType(&v184, &v164, &v178, &v177, *(v51 + 64) - *(v51 + 36));
        re::TypeBuilder::commitTo(&v176, &v184, a1);
        v56 = *(v51 + 32);
        v175 = v176;
        v57 = *(v51 + 8);
        if (v57)
        {
          v58 = *v57;
          if (*v57)
          {
            v59 = v57[1];
            if (v59)
            {
              v60 = (v57 + 2);
              do
              {
                v58 = 31 * v58 + v59;
                v61 = *v60++;
                v59 = v61;
              }

              while (v61);
            }
          }
        }

        else
        {
          v58 = 0;
        }

        v173 = 2 * v58;
        v174 = v57;
        v79 = re::TypeBuilder::addObjectMember(v197, v56, &v175, &v173, *(v51 + 36));
        if ((v173 & 1) == 0)
        {
          goto LABEL_138;
        }

        if ((v173 & 1) == 0)
        {
          goto LABEL_138;
        }

        v80 = v174;
        goto LABEL_137;
      }

      v62 = *(v51 + 32);
      v63 = *(v51 + 8);
      v180 = *(*(v51 + 16) + 32);
      if (v63)
      {
        v64 = *v63;
        if (*v63)
        {
          v65 = v63[1];
          if (v65)
          {
            v66 = (v63 + 2);
            do
            {
              v64 = 31 * v64 + v65;
              v67 = *v66++;
              v65 = v67;
            }

            while (v67);
          }
        }
      }

      else
      {
        v64 = 0;
      }

      *&v207 = 2 * v64;
      *(&v207 + 1) = v63;
      v78 = re::TypeBuilder::addObjectMember(v197, v62, &v180, &v207, *(v51 + 36));
      if (v207)
      {
        if (v207)
        {
        }
      }
    }
  }

  v81 = 0;
  a4 = v159;
  v82 = v160;
  do
  {
    v83 = *(v21 + 8 * v81);
    if (*v83 == 5)
    {
      v84 = *(v83 + 16);
      if (v84)
      {
        v85 = *v84;
        if (*v84)
        {
          v86 = v84[1];
          if (v86)
          {
            v87 = (v84 + 2);
            do
            {
              v85 = 31 * v85 + v86;
              v88 = *v87++;
              v86 = v88;
            }

            while (v88);
          }
        }
      }

      else
      {
        v85 = 0;
      }

      *&v207 = 2 * v85;
      *(&v207 + 1) = v84;
      v89 = *(v83 + 8);
      if (v89)
      {
        v90 = *v89;
        if (*v89)
        {
          v91 = v89[1];
          if (v91)
          {
            v92 = (v89 + 2);
            do
            {
              v90 = 31 * v90 + v91;
              v93 = *v92++;
              v91 = v93;
            }

            while (v93);
          }
        }
      }

      else
      {
        v90 = 0;
      }

      v164 = 2 * v90;
      v165 = v89;
      re::TypeBuilder::addObjectMemberRenaming(v197, &v207, &v164);
      if (v164)
      {
        if (v164)
        {
        }
      }

      if (v207)
      {
        if (v207)
        {
        }
      }
    }

    ++v81;
  }

  while (v81 != v20);
  v95 = 1;
  v96 = v20;
  v97 = 1;
  do
  {
    if (**v21 == 4 && *(*v21 + 4) == 1)
    {
      break;
    }

    v97 = v95++ < v20;
    v21 += 8;
    --v96;
  }

  while (v96);
LABEL_174:
  re::TypeBuilder::setHideObjectWithOneMember(v197, v97);
  if (v82)
  {
    v164 = 0xAE8345F9D646D604;
    v165 = "ComplexVersioningAttribute";
    v98 = re::TypeRegistry::typeID(&v207, a1, &v164);
    if (v164)
    {
      if (v164)
      {
      }
    }

    v99 = (*(**(a1 + 2) + 32))(*(a1 + 2), 8, 8);
    *v99 = v82;
    v170 = v207;
    re::TypeBuilder::addAttribute(v197, &v170, v99, 0xFFFFFFFFLL, 1);
  }

  v169 = *v158;
  re::TypeBuilder::commitTo(v197, &v169);
  if (v157)
  {
    goto LABEL_261;
  }

  v168 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v164 = v198;
  re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(&v164, 0);
  ++v167;
  v101 = v155;
  v102 = *v155;
  if (v102)
  {
    v103 = 0;
    v104 = 40;
    do
    {
      v105 = *(v155 + 1) + 40 * v103;
      if (*(v105 + 32))
      {
        goto LABEL_270;
      }

      v106 = *(v105 + 8);
      *&v207 = v106;
      if (v166)
      {
        v107 = 8 * v166;
        v108 = v168;
        while (*v108 != v106)
        {
          ++v108;
          v107 -= 8;
          if (!v107)
          {
            goto LABEL_190;
          }
        }
      }

      else
      {
        v108 = v168;
      }

      if (v108 == &v168[v166])
      {
LABEL_190:
        re::DynamicArray<re::IntrospectionStructure const*>::add(&v164, &v207);
        v102 = *v155;
      }
    }

    while (++v103 < v102);
  }

  v22 = v202;
  v109 = v166;
  v104 = v166 - 1;
  if ((v166 - 1) >= 0)
  {
    do
    {
      v101 = v166;
      if (v166 <= v104)
      {
        goto LABEL_271;
      }

      v100 = v168;
      v110 = v168[v104];
      if (!*(v110 + 16))
      {
        v138 = v164;
        if (v164)
        {
          goto LABEL_260;
        }

        goto LABEL_261;
      }

      v179 = *(v110 + 32);
      re::TypeRegistry::typeInfo(a1, &v179, &v207);
      if (v207 == 1)
      {
        v101 = v166;
        if (v166 <= v104)
        {
          goto LABEL_275;
        }

        v111 = v166 - 1;
        if (v166 - 1 > v104)
        {
          v112 = &v168[v104];
          v100 = (v112 + 8);
          v113 = &v168[v166];
          if (v112 + 8 != v113)
          {
            memmove(v112, v100, &v113[-v100]);
            v111 = v166 - 1;
          }
        }

        v166 = v111;
        ++v167;
      }
    }

    while (v104-- > 0);
    v109 = v166;
  }

  if (!v109)
  {
    goto LABEL_258;
  }

  v104 = 0;
  v115 = v168;
  do
  {
    if (v109 <= v104)
    {
LABEL_266:
      *&v179 = 0;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v140 = MEMORY[0x1E69E9C10];
      v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v202 = 136315906;
      *&v202[4] = "operator[]";
      *&v202[12] = 1024;
      if (v141)
      {
        v142 = 3;
      }

      else
      {
        v142 = 2;
      }

      *&v202[14] = 789;
      v203 = 2048;
      v204 = v104;
      v205 = 2048;
      v206 = v109;
      _os_log_send_and_compose_impl(v142, &v179, &v207, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v202, 38, v152, v153);
      _os_crash_msg();
      __break(1u);
LABEL_270:
      re::internal::assertLog(4, v100, "assertion failure: '%s' (%s:line %i) ", "polymorphicType.basePointerOffset == 0", "addPolymorphicLeaveTypes", 1743);
      _os_crash("assertion failure: (polymorphicType.basePointerOffset == 0) ");
      __break(1u);
LABEL_271:
      *&v179 = 0;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v143 = MEMORY[0x1E69E9C10];
      v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v202 = 136315906;
      *(v22 + 4) = "operator[]";
      *&v202[12] = 1024;
      if (v144)
      {
        v145 = 3;
      }

      else
      {
        v145 = 2;
      }

      *(v22 + 14) = 789;
      v203 = 2048;
      *(v22 + 20) = v104;
      v205 = 2048;
      *(v22 + 30) = v101;
      _os_log_send_and_compose_impl(v145, &v179, &v207, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v202, 38, v152, v153);
      _os_crash_msg();
      __break(1u);
LABEL_275:
      *&v176 = 0;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v146 = MEMORY[0x1E69E9C10];
      v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v202 = 136315906;
      *(v22 + 4) = "removeStableAt";
      *&v202[12] = 1024;
      if (v147)
      {
        v148 = 3;
      }

      else
      {
        v148 = 2;
      }

      *(v22 + 14) = 969;
      v203 = 2048;
      *(v22 + 20) = v104;
      v205 = 2048;
      *(v22 + 30) = v101;
      _os_log_send_and_compose_impl(v148, &v176, &v207, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v202, 38, v152, v153);
      _os_crash_msg();
      __break(1u);
LABEL_279:
      *&v179 = 0;
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v207 = 0u;
      v149 = MEMORY[0x1E69E9C10];
      v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v202 = 136315906;
      *(v22 + 4) = "insert";
      *&v202[12] = 1024;
      if (v150)
      {
        v151 = 3;
      }

      else
      {
        v151 = 2;
      }

      *(v22 + 14) = 855;
      v203 = 2048;
      *(v22 + 20) = v104;
      v205 = 2048;
      *(v22 + 30) = v101;
      _os_log_send_and_compose_impl(v151, &v179, &v207, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v202, 38, v152, v153);
      _os_crash_msg();
      __break(1u);
LABEL_283:
      re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Unexpected IntrospectionMemberType.", "!Unreachable code", "registerStructureType", 2036);
      _os_crash("assertion failure: (!Unreachable code) Unexpected IntrospectionMemberType.");
      __break(1u);
    }

    v116 = v115[v104];
    while (1)
    {
      v115 = v168;
      v117 = v168[v104];
      v118 = *(v117 + 56);
      v119 = 8 * v109;
      if (!v118)
      {
        break;
      }

      v120 = *(v117 + 64);
      while (1)
      {
        v121 = *v120;
        if (**v120 == 1 && v121[10] == 3)
        {
          break;
        }

        ++v120;
        if (!--v118)
        {
          goto LABEL_234;
        }
      }

      v122 = *(v121 + 2);
      if (!v122)
      {
        break;
      }

      v123 = 0;
      while (v168[v123 / 8] != v122)
      {
        v123 += 8;
        if (v119 == v123)
        {
          goto LABEL_220;
        }
      }

      if (v123 != 8 * v109)
      {
        break;
      }

LABEL_220:
      v124 = 0;
      while (v168[v124 / 8] != v122)
      {
        v124 += 8;
        if (v119 == v124)
        {
          goto LABEL_225;
        }
      }

      if (v124 != 8 * v109)
      {
        break;
      }

LABEL_225:
      v101 = (v109 + 1);
      if (v109 + 1 <= v104)
      {
        goto LABEL_279;
      }

      if (v109 >= v165)
      {
        re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(&v164, v109 + 1);
        v109 = v166;
        v115 = v168;
      }

      v125 = &v115[v109];
      if (v109 > v104)
      {
        *v125 = *(v125 - 1);
        v126 = v168;
        v100 = &v168[v104];
        v127 = &v168[v109 - 1];
        if (v127 != v100)
        {
          memmove((v100 + 8), v100, v127 - v100);
          v126 = v168;
          v109 = v166;
        }

        v125 = &v126[v104];
      }

      *v125 = v122;
      v166 = ++v109;
      ++v167;
      if (v109 <= v104)
      {
        goto LABEL_266;
      }
    }

LABEL_234:
    v128 = 0;
    v129 = &v168[v109];
    while (v168[v128 / 8] != v116)
    {
      v128 += 8;
      if (v119 == v128)
      {
        goto LABEL_240;
      }
    }

    if (v128 != 8 * v109)
    {
      v21 = v128 >> 3;
    }

LABEL_240:
    v104 = v21 + 1;
  }

  while (v21 + 1 < v109);
  do
  {
    v137 = *v115;
    if (!*(*v115 + 16))
    {
      break;
    }

    *v202 = *(v137 + 32);
    re::TypeRegistry::typeInfo(a1, v202, &v207);
    if ((v207 & 1) == 0)
    {
      if (!*v202)
      {
        v130 = re::introspectionFindStructureVersion(v137, v100);
        v131 = *(v137 + 48);
        if (v131)
        {
          v132 = *v131;
          if (*v131)
          {
            v133 = v131[1];
            if (v133)
            {
              v134 = (v131 + 2);
              do
              {
                v132 = 31 * v132 + v133;
                v135 = *v134++;
                v133 = v135;
              }

              while (v135);
            }
          }
        }

        else
        {
          v132 = 0;
        }

        *&v179 = 2 * v132;
        *(&v179 + 1) = v131;
        re::TypeRegistry::declareType(&v207, &v179, a1, 8, v130, 0);
        *v202 = v207;
        if (v179)
        {
          if (v179)
          {
          }
        }

        *(v137 + 32) = *v202;
      }

      v163 = *v202;
      re::internal::registerStructureType(a1, &v163, v137, a4);
    }

    ++v115;
  }

  while (v115 != v129);
LABEL_258:
  v138 = v164;
  if (v164)
  {
    v100 = v168;
    if (v168)
    {
LABEL_260:
      (*(*v138 + 40))(v138);
    }
  }

LABEL_261:
  re::TypeBuilder::~TypeBuilder(&v184, v100);
  re::TypeBuilder::~TypeBuilder(v197, v139);
  re::StackScratchAllocator::~StackScratchAllocator(v198);
}

BOOL re::internal::prepare(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  if (*(this + 4) == 8)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = *(this + 8);
      do
      {
        if (**v3 == 4)
        {
          *(this + 15) |= *(*v3 + 4);
        }

        v3 += 8;
        --v2;
      }

      while (v2);
    }
  }

  return re::IntrospectionRegistry::add(this, a2);
}

void re::IntrospectionStructure::~IntrospectionStructure(re::IntrospectionStructure *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicString::~IntrospectionDynamicString(re::IntrospectionDynamicString *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionBasic::~IntrospectionBasic(re::IntrospectionBasic *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionBasic::childInfo(re::IntrospectionBasic *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 438);
  _os_crash("assertion failure: (!Unreachable code) Type does not have nested types.");
  __break(1u);
}

void re::IntrospectionDataArrayBase::~IntrospectionDataArrayBase(re::IntrospectionDataArrayBase *this)
{
  *this = &unk_1F5D0C598;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0C598;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionDataArrayBase::childInfo(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 706, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

void re::IntrospectionDataArrayBase::init(re::IntrospectionDataArrayBase *this, uint64_t a2, re::Allocator *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "init", 695);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDataArrayBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 696);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDataArrayBase::size(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 697);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDataArrayBase::begin(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDataArrayBase::end(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "end", 700);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionDataArrayBase::elementAt(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 701);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionEnum::~IntrospectionEnum(re::IntrospectionEnum *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionCallbackSerializer::~IntrospectionCallbackSerializer(re::IntrospectionCallbackSerializer *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionCallbackSerializer::childInfo(re::IntrospectionCallbackSerializer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 1085);
  _os_crash("assertion failure: (!Unreachable code) Type does not have nested types.");
  __break(1u);
}

void re::IntrospectionStringID::~IntrospectionStringID(re::IntrospectionStringID *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionStringID::childInfo(re::IntrospectionStringID *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 1097);
  _os_crash("assertion failure: (!Unreachable code) Type does not have nested types.");
  __break(1u);
}

__n128 std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::operator()(void **a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a1[1];
  v7 = *a1[2];
  v8 = (*(*a1[3] + 40))(a1[3], 1);
  v9 = (*(*a1[3] + 96))(a1[3], *a1[1], *a1[2], *a1[4], v4);

  return re::introspectionDoDeepCopy(v6, v7, v8, v5, v9);
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::IntrospectionStructure const*>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::IntrospectionPolymorphicType>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[2] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v12 = v11[1];
          v14 = v8[1];
          v13 = (v8 + 1);
          v11[1] = v14;
          *v13 = v12;
          v15 = *(v13 + 16);
          *(v11 + 8) = *(v13 + 24);
          v11[3] = v15;
          re::SerializedReference<re::IntrospectionBase const*>::reset(v13);
          v11 += 5;
          v8 = (v13 + 32);
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

re::TypeRegistry *re::TypeRegistry::TypeRegistry(re::TypeRegistry *this, re::Allocator *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = a2;
  *v4 = &unk_1F5D0C880;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0x1FFFFFFFFLL;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 96) = 0;
  v5 = (v4 + 96);
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 148) = 0x1FFFFFFFFLL;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 160) = 0u;
  v6 = (v4 + 160);
  *(v4 + 220) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 236) = 0x7FFFFFFFLL;
  *(v4 + 272) = 0;
  *(v4 + 264) = 0;
  *(v4 + 248) = 0u;
  v7 = (v4 + 248);
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0;
  *(v4 + 352) = 0;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 392) = 0;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 432) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 0u;
  *(v4 + 472) = 0;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 512) = 0;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 552) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 592) = 0;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 632) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 672) = 0;
  *(v4 + 640) = 0u;
  *(v4 + 656) = 0u;
  *(v4 + 712) = 0;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 752) = 0;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 0u;
  *(v4 + 788) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 804) = 0x7FFFFFFFLL;
  *(v4 + 840) = 0;
  *(v4 + 832) = 0;
  *(v4 + 816) = 0u;
  *(v4 + 848) = 0u;
  *(v4 + 32) = a2;
  v8 = (v4 + 32);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((v4 + 32), 0);
  ++*(this + 14);
  *(this + 19) = 1024;
  re::DataArray<re::internal::TypeInfoIndex>::allocBlock(v8);
  *v5 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v5, 0);
  ++*(this + 30);
  *(this + 35) = 1024;
  re::DataArray<MetalHeap::TextureEntry>::allocBlock(v5);
  *v6 = a2;
  re::DynamicArray<re::StringID>::setCapacity(v6, 0);
  ++*(this + 46);
  *v7 = a2;
  re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v7, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 46, 0);
  ++*(this + 98);
  *(this + 51) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 51, 0);
  ++*(this + 108);
  *(this + 56) = a2;
  re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(this + 56, 0);
  ++*(this + 118);
  *(this + 61) = a2;
  re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(this + 61, 0);
  ++*(this + 128);
  *(this + 66) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 66, 0);
  ++*(this + 138);
  *(this + 71) = a2;
  re::DynamicArray<float *>::setCapacity(this + 71, 0);
  ++*(this + 148);
  *(this + 76) = a2;
  re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this + 76, 0);
  ++*(this + 158);
  *(this + 81) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 81, 0);
  ++*(this + 168);
  *(this + 86) = a2;
  re::DynamicArray<re::BlendParameterInputNode>::setCapacity(this + 86, 0);
  ++*(this + 178);
  *(this + 91) = a2;
  re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(this + 91, 0);
  ++*(this + 188);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 200, a2, 3);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 768, a2, 3);
  *(this + 102) = a2;
  re::DynamicArray<float *>::setCapacity(this + 102, 0);
  ++*(this + 210);
  return this;
}

void re::TypeRegistry::~TypeRegistry(re::TypeRegistry *this)
{
  v2 = *(this + 200);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 98);
    while (1)
    {
      v5 = *v4;
      v4 += 14;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 200);
    do
    {
      v7 = *(this + 98);
      v8 = v7 + 56 * v3;
      if (*(v8 + 40))
      {
        re::TypeRegistry::typeInfo(this, *(v7 + 56 * v3 + 8), &v17);
        re::TypeInfo::releaseInstance(&v18, *(v8 + 32), *(this + 2), 0);
        v6 = *(this + 200);
      }

      if (v6 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v6;
      }

      while (v9 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 98) + 56 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v9;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }

  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 648);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 688);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  v10.n128_f64[0] = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 96);
  v11 = *(this + 104);
  if (v11)
  {
    v12 = *(this + 106);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      (*(**(this + 2) + 40))(*(this + 2), v14, v10);
      v13 -= 8;
    }

    while (v13);
  }

  re::DynamicArray<unsigned long>::deinit(this + 816);
  v15 = *(this + 107);
  if (v15)
  {
    v16 = *(this + 2);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 33);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 30);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 27);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 24);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 21);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 15);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 12);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 9);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 3);
    (*(*v16 + 40))(v16, v15);
  }

  re::DynamicArray<unsigned long>::deinit(this + 816);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 688);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 648);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TypeRegistry::~TypeRegistry(this);

  JUMPOUT(0x1E6906520);
}

unsigned int *re::TypeRegistry::typeInfo@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  result = re::DataArray<re::internal::TypeInfoIndex>::tryGet((a1 + 4), a2);
  if (!result || (v7 = *result, v8 = *result & 0xFFFFFF, (*result & 0xFFFFFF) == 0xFFFFFF))
  {
    *a3 = 0;
    return result;
  }

  v9 = HIBYTE(v7);
  if (HIBYTE(v7) > 4u)
  {
    if (HIBYTE(v7) > 6u)
    {
      if (v9 != 7)
      {
        if (v9 != 8)
        {
          if (v9 == 9)
          {
            v10 = v8;
            v11 = a1[93];
            if (v11 > v8)
            {
              v12 = a1[95];
              v13 = 112;
LABEL_33:
              v18 = v12 + v10 * v13;
              goto LABEL_34;
            }

LABEL_70:
            v69 = 0;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            v62 = MEMORY[0x1E69E9C10];
            v63 = v10;
            v64 = v11;
            v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v70 = 136315906;
            v71 = "operator[]";
            v72 = 1024;
            if (v65)
            {
              v66 = 3;
            }

            else
            {
              v66 = 2;
            }

            v73 = 797;
            v74 = 2048;
            v75 = v63;
            v76 = 2048;
            v77 = v64;
            _os_log_send_and_compose_impl(v66, &v69, &v78, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
            _os_crash_msg();
            __break(1u);
          }

LABEL_74:
          re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "typeInfo", 310);
          result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
          __break(1u);
          return result;
        }

        v10 = v8;
        v22 = a1[78];
        if (v22 > v8)
        {
          v12 = a1[80];
          v13 = 176;
          goto LABEL_33;
        }

LABEL_66:
        v69 = 0;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v78 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = v10;
        v59 = v22;
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v70 = 136315906;
        v71 = "operator[]";
        v72 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v73 = 797;
        v74 = 2048;
        v75 = v58;
        v76 = 2048;
        v77 = v59;
        _os_log_send_and_compose_impl(v61, &v69, &v78, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
        _os_crash_msg();
        __break(1u);
        goto LABEL_70;
      }

      v10 = v8;
      v21 = a1[68];
      if (v21 > v8)
      {
        v12 = a1[70];
        goto LABEL_32;
      }

      goto LABEL_58;
    }

    if (v9 != 5)
    {
      if (v9 != 6)
      {
        goto LABEL_74;
      }

      v10 = v8;
      v16 = a1[63];
      if (v16 > v8)
      {
        v12 = a1[65];
        v13 = 168;
        goto LABEL_33;
      }

      goto LABEL_62;
    }

    v10 = v8;
    v20 = a1[58];
    if (v20 > v8)
    {
      v12 = a1[60];
      v13 = 136;
      goto LABEL_33;
    }

LABEL_54:
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v43 = v10;
    v44 = v20;
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v43;
    v76 = 2048;
    v77 = v44;
    _os_log_send_and_compose_impl(v46, &v69, &v78, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = v10;
    v49 = v21;
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v48;
    v76 = 2048;
    v77 = v49;
    _os_log_send_and_compose_impl(v51, &v69, &v78, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = v10;
    v54 = v16;
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v53;
    v76 = 2048;
    v77 = v54;
    _os_log_send_and_compose_impl(v56, &v69, &v78, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  if (HIBYTE(v7) > 2u)
  {
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        goto LABEL_74;
      }

      v10 = v8;
      v15 = a1[53];
      if (v15 > v8)
      {
        v12 = a1[55];
        goto LABEL_32;
      }

LABEL_50:
      v69 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = v10;
      v39 = v15;
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v70 = 136315906;
      v71 = "operator[]";
      v72 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v73 = 797;
      v74 = 2048;
      v75 = v38;
      v76 = 2048;
      v77 = v39;
      _os_log_send_and_compose_impl(v41, &v69, &v78, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    }

    v10 = v8;
    v19 = a1[48];
    if (v19 > v8)
    {
      v12 = a1[50];
      goto LABEL_32;
    }

    goto LABEL_42;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_74;
    }

    v10 = v8;
    v14 = a1[38];
    if (v14 > v8)
    {
      v12 = a1[40];
LABEL_32:
      v13 = 104;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  v17 = a1[33];
  if (v17 <= v8)
  {
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = v8;
    v25 = v17;
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v24;
    v76 = 2048;
    v77 = v25;
    _os_log_send_and_compose_impl(v26, &v69, &v78, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = v10;
    v29 = v19;
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v28;
    v76 = 2048;
    v77 = v29;
    _os_log_send_and_compose_impl(v31, &v69, &v78, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v69 = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = v10;
    v34 = v14;
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v70 = 136315906;
    v71 = "operator[]";
    v72 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v73 = 797;
    v74 = 2048;
    v75 = v33;
    v76 = 2048;
    v77 = v34;
    _os_log_send_and_compose_impl(v36, &v69, &v78, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v70, 38, v67, v68);
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  v18 = a1[35] + 88 * v8;
LABEL_34:
  re::TypeInfo::TypeInfo(&v78, a1, v9, v18);
  *a3 = 1;
  return re::TypeInfo::TypeInfo((a3 + 8), &v78);
}