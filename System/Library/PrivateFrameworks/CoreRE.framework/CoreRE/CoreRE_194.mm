BOOL assertTextureType(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BA4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4D0))
  {
    re::Defaults::BOOLValue(&v16, "enableShaderDebugLogs", v14);
    if (v16)
    {
      v15 = BYTE1(v16);
    }

    else
    {
      v15 = 0;
    }

    _MergedGlobals_469 = v15;
    __cxa_guard_release(&qword_1EE1BA4D0);
  }

  (*(**(a1 + 8 * a3[1]) + 24))(&v16);
  v6 = [v16 textureType];
  v7 = v16;
  if (v16)
  {
  }

  v8 = *(a2 + 18);
  if (v6 != v8 && _MergedGlobals_469 == 1)
  {
    v9 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 18);
      v12 = *a3;
      LODWORD(v16) = 67109890;
      HIDWORD(v16) = v6;
      v17 = 2080;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Mismatch between bound texture type %d and shader param(%s) type %d at slot %d.\n", &v16, 0x1Eu);
    }
  }

  return v6 == v8;
}

unint64_t re::MaterialTechniqueVariant::fillTextureTableLayerLists(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a4 = 0;
  ++*(a4 + 2);
  v7 = *(a3 + 72);
  v8 = v7[8];
  if (v8)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(0, a2);
    v9 = *a4;
    v10 = &a4[3 * *a4];
    v10[2] = v8 + 680;
    v10[3] = v8 + 552;
    v10[4] = 7;
    v11 = v9 + 1;
    *a4 = v9 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[9];
  if (v12)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v13 = *a4;
    v14 = &a4[3 * *a4];
    v14[2] = v12 + 680;
    v14[3] = v12 + 552;
    v14[4] = 8;
    v11 = v13 + 1;
    *a4 = v13 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  v15 = v7[11];
  if (v15)
  {
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v16 = *a4;
    v17 = &a4[3 * *a4];
    v17[2] = v15 + 680;
    v17[3] = v15 + 552;
    v17[4] = 10;
    v11 = v16 + 1;
    *a4 = v16 + 1;
    ++*(a4 + 2);
    v7 = *(a3 + 72);
  }

  v18 = v7[10];
  if (v18)
  {
    v19 = *(v18 + 8);
    re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
    v20 = *a4;
    v21 = &a4[3 * *a4];
    v21[2] = v19;
    v21[3] = 0;
    v21[4] = 11;
    v11 = v20 + 1;
    *a4 = v20 + 1;
    ++*(a4 + 2);
  }

  v22 = *(*a1 + 8);
  re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v11, a2);
  v23 = *a4;
  v24 = &a4[3 * *a4 + 2];
  *v24 = v22 + 984;
  v24[1] = v22 + 856;
  *(v24 + 4) = 5;
  *a4 = v23 + 1;
  ++*(a4 + 2);
  v25 = *(*(*a1 + 8) + 16);
  result = re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(v23 + 1, v26);
  v28 = *a4;
  v29 = &a4[3 * *a4 + 2];
  *v29 = v25 + 928;
  v29[1] = v25 + 800;
  *(v29 + 4) = 6;
  *a4 = v28 + 1;
  ++*(a4 + 2);
  return result;
}

void re::MaterialTechniqueVariant::resolveTextureArgument(int a1, StringID *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4[1];
  if (!v10)
  {
LABEL_28:
    *a5 = a2[1].var0;
    *(a5 + 2) = 0;
    if (*(&a2[1].var0 + 1) - 3 > 4)
    {
      v26 = 113101865;
    }

    else
    {
      v26 = qword_1E30DAAD0[(*(&a2[1].var0 + 1) - 3)];
    }

    v28 = *a3;
    v37 = v26;
    (*(*v28 + 32))(&v36);
    *(a5 + 4) = BYTE1(v36);
    return;
  }

  v12 = *a4;
  v13 = &(*a4)[3 * v10];
  while (1)
  {
    re::StringID::StringID(&v36, a2);
    if (*(a7 + 192))
    {
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) >> 27));
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a7 + 144, &v36, v14 ^ (v14 >> 31), &v37);
      if (v38 != 0x7FFFFFFF)
      {
        v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v36 >> 31) ^ (v36 >> 1))) >> 27));
        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a7 + 144, &v36, v15 ^ (v15 >> 31), &v37);
        re::StringID::operator=(&v36, (*(a7 + 160) + 40 * v38 + 24));
      }
    }

    v16 = *v12;
    v37 = (v36 >> 1);
    v17 = (*(*v16 + 32))(&v34);
    if (v34 != 1)
    {
      v21 = *(v12 + 8);
      if (v21)
      {
        v37 = (v36 >> 1);
        v17 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v21, &v37);
        if (v17 != -1)
        {
          v22 = 0;
          v23 = *(v21[1] + 40 * v17 + 24);
          v24 = &re::s_textureTableConstantMembers;
          while (1)
          {
            v25 = *v24;
            v24 += 16;
            if (v23 == v25)
            {
              v17 = a3[v22];
              if (v17)
              {
                break;
              }
            }

            if (!v23)
            {
              *a5 = a2[1].var0;
              *(a5 + 2) = -1;
              *(a5 + 6) = 1;
              if (v36)
              {
                if (v36)
                {
                }
              }

              goto LABEL_33;
            }

            if (++v22 == 12)
            {
              goto LABEL_24;
            }
          }

          v17 = (*(*v17 + 32))(v33);
          if (v33[0] == 1)
          {
            (*(*a3[v22] + 24))(&v37);
            v17 = v37;
            if (v37)
            {

              *a5 = a2[1].var0;
              *(a5 + 2) = v22;
              v18 = v33[1];
              goto LABEL_8;
            }
          }
        }
      }

LABEL_24:
      if (v36)
      {
        if (v36)
        {
        }
      }

      goto LABEL_27;
    }

    v18 = v35;
    *a5 = a2[1].var0;
    *(a5 + 2) = *(v12 + 16);
LABEL_8:
    *(a5 + 4) = v18;
    v19 = assertTextureType(a3, a2, a5);
    v20 = v19;
    if (v36)
    {
      if (v36)
      {
      }
    }

    if (v20)
    {
      break;
    }

LABEL_27:
    v12 += 24;
    if (v12 == v13)
    {
      goto LABEL_28;
    }
  }

LABEL_33:
  if ((*(a5 + 6) & 1) == 0)
  {
    (*(*a3[*(a5 + 2)] + 24))(&v37);
    v27 = a6;
    if (([v37 protectionOptions] & ~a6) != 0)
    {
      *a5 = a2[1].var0;
      *(a5 + 2) = 0;
      v29 = [v37 textureType];
      if ((v29 - 1) > 7)
      {
        v30 = 93818879;
      }

      else
      {
        v30 = qword_1E30DAAF8[(v29 - 1)];
      }

      v31 = *a3;
      v36 = v30;
      (*(*v31 + 32))(&v34);
      *(a5 + 4) = v35;
      v27 = a6;
    }

    if ((a2[1].var1 - 1) <= 1 && (v27 & ~[v37 protectionOptions]) != 0)
    {
      *(a5 + 6) = 1;
    }

    if (v37)
    {
    }
  }
}

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v16 = 0;
  v17 = 0;
  result = re::MaterialTechniqueVariant::fillTextureTableLayerLists(a1, a2, a4, &v16);
  v11 = *(a3 + 120);
  if (v11)
  {
    v12 = *(a3 + 128);
    v13 = 32 * v11;
    do
    {
      v14[0] = &v18;
      v14[1] = v16;
      v15 = 0;
      re::MaterialTechniqueVariant::resolveTextureArgument(result, v12, a2, v14, &v15, a6, a3);
      result = re::DynamicArray<re::TextureResolution>::add(a5, &v15);
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TextureResolution>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::TextureResolution>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

uint64_t re::MaterialTechniqueVariant::resolveBufferArgument(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = memcpy(__dst, a2, sizeof(__dst));
  if (a4)
  {
    v10 = a3 + 24 * a4;
    while (1)
    {
      v11 = *a3;
      *buf = *a1 >> 1;
      v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v11, buf);
      if (v12 != -1)
      {
        v13 = v11[1] + 16 * v12;
        v15 = *(v13 + 8);
        v14 = (v13 + 8);
        LODWORD(v16) = *(a3 + 16);
        if (*(&__dst[3 * v16] + 1) > v15)
        {
          break;
        }
      }

      v17 = *(a3 + 8);
      *buf = *a1 >> 1;
      v9 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v17, buf);
      if (v9 != -1)
      {
        v16 = 0;
        v18 = v17[1] + 40 * v9;
        v19 = v18 + 8;
        v20 = *(v18 + 24);
        v21 = __dst;
        v22 = &re::s_bufferTableConstantMembers;
        while (1)
        {
          v23 = *v22;
          v22 += 16;
          if (v20 == v23)
          {
            v24 = v21[1];
            if (v24)
            {
              break;
            }
          }

          ++v16;
          v21 += 6;
          if (v16 == 13)
          {
            goto LABEL_14;
          }
        }

        v25 = v21[5];
        v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v25, (v19 + 24));
        if (v9 != -1)
        {
          v27 = v25[1] + 16 * v9;
          v29 = *(v27 + 8);
          v14 = (v27 + 8);
          v28 = v29;
          if (v24 <= v29)
          {
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v24);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v35, v36);
            __break(1u);
          }

          if (*(*v21 + 24 * v28))
          {
            break;
          }
        }
      }

LABEL_14:
      a3 += 24;
      if (a3 == v10)
      {
        goto LABEL_15;
      }
    }

    v32 = a5;
    *(a5 + 2) = v16;
    v33 = *v14;
    result = 1;
  }

  else
  {
LABEL_15:
    if (!a6)
    {
      return 0;
    }

    v30 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v34 = a1[1];
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to find reflection for buffer %s", buf, 0xCu);
    }

    if (a2[1])
    {
      return 0;
    }

    result = 0;
    v32 = a5;
    *(a5 + 2) = 11;
    v33 = 12;
  }

  *(v32 + 4) = v33;
  return result;
}

void *re::MaterialTechniqueVariant::completeResolution(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, _anonymous_namespace_ *a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v8 = (a3 + 296);
  v9 = a2;
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 && !v10[8]);
  v62 = 0x2B3FAC222C23CAEDLL;
  v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v10 + 5, &v62);
  if (v11 == -1)
  {
    v57 = 0;
  }

  else
  {
    v57 = *(v10[6] + 16 * v11 + 8);
  }

  v12 = *(a3 + 272);
  v62 = 0;
  v63 = 0;
  v13 = a4;
  v14 = a1;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, v13, &v62);
  v58 = v62;
  v17 = vmvnq_s8(v8[1]);
  v61[0] = vmvnq_s8(*v8);
  v61[1] = v17;
  v55 = v12;
  if (v12)
  {
    v18 = 0;
    v19 = &v64[3 * v62];
    v20 = -1;
    do
    {
      v21 = v20 + 1;
      if (v20 + 1 > 0xFF)
      {
        goto LABEL_56;
      }

      v22 = v21 >> 6;
      if ((v21 & 0x3F) != 0)
      {
        v23 = *(v61 + v22) & (-1 << (v21 & 0x3F));
        if (v23)
        {
          v20 = __clz(__rbit64(v23)) + (v21 & 0xC0);
          goto LABEL_21;
        }

        if (v21 > 0xBF)
        {
          goto LABEL_56;
        }

        ++v22;
      }

      v24 = 8 * v22;
      v25 = -64 * v22;
      while (1)
      {
        v26 = *(v61 + v24);
        if (v26)
        {
          break;
        }

        v25 -= 64;
        v24 += 8;
        if (v24 == 32)
        {
          goto LABEL_56;
        }
      }

      v27 = __clz(__rbit64(v26));
      if (v27 + 1 == v25)
      {
        goto LABEL_56;
      }

      v20 = v27 - v25;
LABEL_21:
      v60 = 0;
      v59 = 0;
      v28 = *(a3 + 272);
      if (v28 <= v18)
      {
        v65 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v66 = 136315906;
        v67 = "operator[]";
        v68 = 1024;
        if (v47)
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v69 = 476;
        v70 = 2048;
        v71 = v18;
        v72 = 2048;
        v73 = v28;
        _os_log_send_and_compose_impl(v48, &v65, &v74, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v52, v53);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v65 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v66 = 136315906;
        v67 = "operator[]";
        v68 = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v69 = 476;
        v70 = 2048;
        v71 = v14;
        v72 = 2048;
        v73 = v28;
        _os_log_send_and_compose_impl(v51, &v65, &v74, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v52, v53);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) ", "nextAvailableSlot != ~0", "completeResolution", 743);
        _os_crash("assertion failure: (nextAvailableSlot != ~0) ");
        __break(1u);
      }

      v29 = *(a3 + 280) + 24 * v18;
      LOWORD(v59) = v20;
      WORD1(v59) = *(v29 + 16);
      if (*(v29 + 18) == 6)
      {
        LOBYTE(v60) = 1;
      }

      WORD2(v59) = v57;
      v30 = v58;
      if (v58)
      {
        v31 = v64;
        while (1)
        {
          v32 = v31[1];
          *&v74 = *v29 >> 1;
          v33 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v32, &v74);
          if (v33 != -1)
          {
            v34 = v32[1] + 40 * v33;
            if (*(v34 + 24) == 17)
            {
              v35 = v34 + 8;
              v36 = a2;
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36 && !v37[8]);
              v38 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v37 + 5, (v35 + 24));
              if (v38 != -1)
              {
                break;
              }
            }
          }

          v31 += 3;
          if (v31 == v19)
          {
            v30 = 0;
            v39 = 0;
            goto LABEL_42;
          }
        }

        v40 = v37[6] + 16 * v38;
        LOBYTE(v60) = 0;
        v42 = *(v40 + 8);
        v41 = (v40 + 8);
        WORD2(v59) = v42;
        v43 = a2;
        do
        {
          v44 = v43;
          v43 = *v43;
          v28 = v44[3];
          if (v43)
          {
            v45 = v28 == 0;
          }

          else
          {
            v45 = 0;
          }
        }

        while (v45);
        v14 = *v41;
        if (v28 <= v14)
        {
          goto LABEL_52;
        }

        v39 = (*(v44[4] + 16 * v14 + 12) & 0xFC) != 28;
        v30 = 1;
LABEL_42:
        v14 = a1;
      }

      else
      {
        v39 = 0;
      }

      if (*(v14 + 16) == 1 && !v39 && (*(**v14 + 2844) & 1) != 0)
      {
        HIWORD(v59) = *(v29 + 18);
      }

      HIBYTE(v60) = v30;
      result = re::DynamicArray<re::AttributeResolution>::add(a5, &v59);
      ++v18;
    }

    while (v18 != v55);
  }

  return result;
}

unint64_t re::MaterialTechniqueVariant::fillBufferTableLayerLists(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = *(a2 + 72);
  v7 = v6[8];
  v8 = *a3;
  if (v7)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v9 = *a3;
    v10 = &a3[3 * *a3];
    v10[2] = v7 + 264;
    v10[3] = v7 + 88;
    *(v10 + 8) = 7;
    v8 = v9 + 1;
    *a3 = v9 + 1;
    ++*(a3 + 2);
    v6 = *(a2 + 72);
  }

  v11 = v6[9];
  if (v11)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v12 = *a3;
    v13 = &a3[3 * *a3];
    v13[2] = v11 + 264;
    v13[3] = v11 + 88;
    *(v13 + 8) = 8;
    v8 = v12 + 1;
    *a3 = v12 + 1;
    ++*(a3 + 2);
    v6 = *(a2 + 72);
  }

  v14 = v6[11];
  if (v14)
  {
    re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
    v15 = *a3;
    v16 = &a3[3 * *a3];
    v16[2] = v14 + 264;
    v16[3] = v14 + 88;
    *(v16 + 8) = 12;
    v8 = v15 + 1;
    *a3 = v15 + 1;
    ++*(a3 + 2);
  }

  v17 = *(*a1 + 8);
  re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v8, a2);
  v18 = *a3;
  v19 = &a3[3 * *a3 + 2];
  *v19 = v17 + 568;
  v19[1] = v17 + 392;
  *(v19 + 4) = 5;
  *a3 = v18 + 1;
  ++*(a3 + 2);
  v20 = *(*(*a1 + 8) + 16);
  result = re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(v18 + 1, v21);
  v23 = *a3;
  v24 = &a3[3 * *a3 + 2];
  *v24 = v20 + 512;
  v24[1] = v20 + 336;
  *(v24 + 4) = 6;
  *a3 = v23 + 1;
  ++*(a3 + 2);
  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v19 = 0;
  v20 = 0;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, a4, &v19);
  v10 = *(a3 + 32);
  if (v10)
  {
    v11 = *(a3 + 40);
    v12 = 112 * v10;
    do
    {
      v13 = *(v11 + 16);
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), v13, *a3);
      if ((result & 1) == 0)
      {
        v18 = v13;
        result = re::MaterialTechniqueVariant::resolveBufferArgument(v11, a2, v21, v19, &v18, 0);
        if (result)
        {
          result = re::DynamicArray<re::BufferResolution>::add(a5, &v18);
        }
      }

      v11 += 112;
      v12 -= 112;
    }

    while (v12);
  }

  v14 = *(a3 + 240);
  if (v14)
  {
    v15 = *(a3 + 248);
    v16 = 24 * v14;
    do
    {
      v17 = *(v15 + 16);
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), v17, *a3);
      if ((result & 1) == 0)
      {
        v18 = v17;
        re::MaterialTechniqueVariant::resolveBufferArgument(v15, a2, v21, v19, &v18, 1);
        result = re::DynamicArray<re::BufferResolution>::add(a5, &v18);
      }

      v15 += 24;
      v16 -= 24;
    }

    while (v16);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BufferResolution>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
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

        result = re::DynamicArray<re::TextureResolution>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::TextureResolution>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

unint64_t re::MaterialTechniqueVariant::fillConstantTableLayerLists(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a4 = 0;
  ++*(a4 + 8);
  *a5 = 0;
  ++*(a5 + 8);
  v10 = *(a3 + 72);
  v11 = v10[8];
  if (v11)
  {
    v12 = v11 + 152;
    v13 = v11 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v14 = *a4;
    v15 = (a4 + 24 * *a4);
    v15[2] = v12;
    v15[3] = v13;
    v15[4] = 8;
    *a4 = v14 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v16);
    v17 = *a5;
    v18 = (a5 + 24 * *a5);
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = 8;
    v19 = v17 + 1;
    *a5 = v17 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  else
  {
    v19 = 0;
  }

  v20 = v10[12];
  if (v20)
  {
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v19, a2);
    v21 = *a5;
    v22 = (a5 + 24 * *a5);
    v22[2] = v20 + 152;
    v22[3] = v20 + 24;
    v22[4] = 11;
    *a5 = v21 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v23 = v10[9];
  if (v23)
  {
    v24 = v23 + 152;
    v25 = v23 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v26 = *a4;
    v27 = (a4 + 24 * *a4);
    v27[2] = v24;
    v27[3] = v25;
    v27[4] = 9;
    *a4 = v26 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v28);
    v29 = *a5;
    v30 = (a5 + 24 * *a5);
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = 9;
    *a5 = v29 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v31 = v10[11];
  if (v31)
  {
    v32 = v31 + 152;
    v33 = v31 + 24;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v34 = *a4;
    v35 = (a4 + 24 * *a4);
    v35[2] = v32;
    v35[3] = v33;
    v35[4] = 10;
    *a4 = v34 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v36);
    v37 = *a5;
    v38 = (a5 + 24 * *a5);
    v38[2] = v32;
    v38[3] = v33;
    v38[4] = 10;
    *a5 = v37 + 1;
    ++*(a5 + 8);
    v10 = *(a3 + 72);
  }

  v39 = v10[10];
  if (v39)
  {
    v40 = *v39;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
    v41 = *a4;
    v42 = (a4 + 24 * *a4);
    v42[2] = v40;
    v42[3] = 0;
    v42[4] = 13;
    *a4 = v41 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v43);
    v44 = *a5;
    v45 = (a5 + 24 * *a5);
    v45[2] = v40;
    v45[3] = 0;
    v45[4] = 13;
    *a5 = v44 + 1;
    ++*(a5 + 8);
  }

  v46 = (*a1)[1];
  v47 = v46 + 456;
  v48 = v46 + 328;
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, a2);
  v49 = a4 + 16;
  v50 = *a4;
  v51 = (a4 + 16 + 24 * *a4);
  *v51 = v47;
  v51[1] = v48;
  v51[2] = 6;
  *a4 = v50 + 1;
  ++*(a4 + 8);
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v52);
  v54 = a5 + 16;
  v55 = *a5;
  v56 = (a5 + 16 + 24 * *a5);
  *v56 = v47;
  v56[1] = v48;
  v56[2] = 6;
  *a5 = v55 + 1;
  ++*(a5 + 8);
  if (*a2 == 1)
  {
    v57 = 4;
    v58 = 192;
    v59 = 320;
    goto LABEL_16;
  }

  if (*a2 == 2)
  {
    v57 = 5;
    v58 = 1320;
    v59 = 1448;
LABEL_16:
    v60 = **a1;
    v61 = v60 + v59;
    v62 = v60 + v58;
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, v53);
    v63 = *a4;
    v64 = v49 + 24 * *a4;
    *v64 = v61;
    *(v64 + 8) = v62;
    *(v64 + 16) = v57;
    *(v64 + 20) = 0;
    *a4 = v63 + 1;
    ++*(a4 + 8);
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v65);
    v66 = *a5;
    v67 = v54 + 24 * *a5;
    *v67 = v61;
    *(v67 + 8) = v62;
    *(v67 + 16) = v57;
    *(v67 + 20) = 0;
    *a5 = v66 + 1;
    ++*(a5 + 8);
  }

  v68 = *((*a1)[1] + 16);
  v69 = v68 + 400;
  v70 = v68 + 272;
  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a4, v53);
  v71 = *a4;
  v72 = (v49 + 24 * *a4);
  *v72 = v69;
  v72[1] = v70;
  v72[2] = 7;
  *a4 = v71 + 1;
  ++*(a4 + 8);
  result = re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(*a5, v73);
  v75 = *a5;
  v76 = (v54 + 24 * *a5);
  *v76 = v69;
  v76[1] = v70;
  v76[2] = 7;
  *a5 = v75 + 1;
  ++*(a5 + 8);
  return result;
}

uint64_t re::MaterialTechniqueVariant::resolveConstantArgument(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7, __n128 a8)
{
  v101[3] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1BA4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4D8))
  {
    re::Defaults::BOOLValue(buf, "enableShaderDebugLogs", v80);
    if (buf[0])
    {
      v81 = buf[1];
    }

    else
    {
      v81 = 0;
    }

    byte_1EE1BA4C9 = v81;
    __cxa_guard_release(&qword_1EE1BA4D8);
  }

  v94 = a3;
  if (a7)
  {
    goto LABEL_13;
  }

  v15 = *a1;
  v16 = (*a1)[1];
  v86[0] = *a2 >> 1;
  re::MaterialParameterTable::handle((v16 + 304), v86, &v90);
  v86[0] = 0;
  if ((BYTE4(v91) & 7) != 0)
  {
    *buf = 1;
    *&buf[8] = v90;
    *&buf[16] = v91;
    v17 = v92;
  }

  else
  {
    v18 = *(v15[1] + 16);
    *v95 = *a2 >> 1;
    re::MaterialParameterTable::handle((v18 + 248), v95, buf);
    v19 = *buf;
    v91 = *&buf[8];
    LOBYTE(v92) = buf[24];
    *v95 = 0;
    if ((buf[12] & 7) == 0)
    {
      *buf = 0;
      *&buf[24] = 0;
      LOBYTE(v99) = 0;
      *&buf[8] = 0;
      *&buf[13] = 0;
      goto LABEL_8;
    }

    *buf = 2;
    *&buf[8] = v19;
    *&buf[16] = v91;
    v17 = v92;
  }

  LOBYTE(v99) = v17;
LABEL_8:
  v20 = re::StringID::StringID(v100, a2);
  v21 = buf[20] & 7;
  if (v100[0])
  {
    if (v100[0])
    {
    }
  }

  if (v21)
  {
    return 0;
  }

LABEL_13:
  v23 = **a1;
  v24 = *(v23 + 2712);
  v25 = *(v23 + 2704);
  if (v25)
  {
    v26 = 8 * v25;
    v27 = v24;
    while (*v27 != *a2 >> 1)
    {
      ++v27;
      v26 -= 8;
      if (!v26)
      {
        v28 = 0;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v27 = v24;
  }

  v29 = &v24[v25];
  v28 = v27 != v29;
  if (v27 != v29)
  {
    a4 = a5;
  }

LABEL_21:
  v30 = *a4;
  v31 = a4[1];
  v93 = 0;
  v91 = 0uLL;
  v89 = 0;
  v90 = 0;
  v92 = 0;
  v86[1] = 0;
  v87 = 0;
  v86[0] = 0;
  v88 = 0;
  if (a7)
  {
    v32 = *(a2 + 72);
    if (!v32)
    {
      v85 = 0;
      v33 = *(a2 + 28);
      v84.n128_u32[2] = 0;
      v84.n128_u32[3] = v33;
      v34 = re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(a2 + 24, v30, v31, &v94, &v84);
      if (v34)
      {
        if (v85)
        {
          v35 = v86;
        }

        else
        {
          v35 = &v90;
        }

        a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(v35, &v84);
        goto LABEL_105;
      }

      if (*(a3 + 96))
      {
        *buf = *(a2 + 24);
        *&buf[8] = *(a2 + 32);
        re::StringID::StringID(&buf[16], (a2 + 40));
        LODWORD(v99) = *(a2 + 56);
        WORD2(v99) = *(a2 + 60);
        re::FixedArray<re::MetalTypeInfo>::FixedArray(v100, (a2 + 64));
        v101[0] = *(a2 + 88);
        *(v101 + 6) = *(a2 + 94);
        v69 = *(a3 + 96);
        *v95 = *&buf[16] >> 1;
        v70 = (**v69)();
        if (v70)
        {
          v71 = v70;
          v72 = *v70;
          v84.n128_u32[0] = 12;
          v84.n128_u32[1] = v72;
          v73 = v84.n128_u32[3];
          if (v84.n128_u32[3] != v70[2])
          {
            v74 = *re::graphicsLogObjects(v70);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v71[2];
              *v95 = 136315650;
              *&v95[4] = *&buf[24];
              *&v95[12] = 1024;
              *&v95[14] = v73;
              v96 = 1024;
              v97 = v75;
              _os_log_impl(&dword_1E1C61000, v74, OS_LOG_TYPE_DEFAULT, "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes.", v95, 0x18u);
            }
          }

          re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(&v90, &v84);
          v76 = re::FixedArray<re::MetalTypeInfo>::deinit(v100);
          if (buf[16])
          {
            if (buf[16])
            {
            }
          }

          goto LABEL_105;
        }

        re::FixedArray<re::MetalTypeInfo>::deinit(v100);
        re::StringID::destroyString(&buf[16]);
      }

      if (byte_1EE1BA4C9 == 1)
      {
        v77 = *re::graphicsLogObjects(v34);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = *(a2 + 48);
          v79 = *(a2 + 8);
          *buf = 136315394;
          *&buf[4] = v78;
          *&buf[12] = 2080;
          *&buf[14] = v79;
          _os_log_error_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_ERROR, "Found no parameter definition for shader constant '%s::%s'", buf, 0x16u);
        }
      }

LABEL_105:
      v54 = *(&v91 + 1);
      if (!(*(&v91 + 1) | v87))
      {
        goto LABEL_47;
      }

LABEL_61:
      v55 = 0;
      if (v54)
      {
        v56 = v93;
        v57 = 16 * v54;
        do
        {
          v58 = v56->n128_u32[0];
          ++v56;
          v55 |= 1 << v58;
          v57 -= 16;
        }

        while (v57);
      }

      if (v87)
      {
        v59 = v89;
        v60 = 16 * v87;
        do
        {
          v61 = v59->n128_u32[0];
          ++v59;
          v55 |= 1 << v61;
          v60 -= 16;
        }

        while (v60);
      }

      *(a6 + 100) = *(a2 + 28);
      *(a6 + 98) = *(a2 + 32);
      v62 = __clz(__rbit64(v55));
      if (v62 > 0xF)
      {
        LOBYTE(v62) = -1;
      }

      if ((v55 ^ (v55 - 1)) <= (v55 - 1))
      {
        v63 = -1;
      }

      else
      {
        v63 = v62;
      }

      *(a6 + 96) = *(a2 + 16);
      *(a6 + 106) = v63;
      *(a6 + 104) = v55;
      *(a6 + 107) = v28;
      re::DynamicArray<re::FillCommand>::operator=((a6 + 8), &v90);
      v64 = *(a6 + 24);
      if (v64)
      {
        if (16 * v64)
        {
          MurmurHash3_x64_128(*(a6 + 40), 16 * v64, 0, buf);
          v65 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
        }

        else
        {
          v65 = 0;
        }

        *a6 = v65;
      }

      re::DynamicArray<re::FillCommand>::operator=((a6 + 56), v86);
      v66 = *(a6 + 72);
      if (v66)
      {
        if (16 * v66)
        {
          MurmurHash3_x64_128(*(a6 + 88), 16 * v66, 0, buf);
          v67 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
        }

        else
        {
          v67 = 0;
        }

        *(a6 + 48) = v67;
      }

      v22 = 1;
      goto LABEL_83;
    }
  }

  else
  {
    v32 = *(a2 + 72);
    if (!v32)
    {
      v48 = 1;
      goto LABEL_46;
    }
  }

  v82 = v28;
  v83 = a6;
  v36 = *(a2 + 80);
  v37 = &v36[10 * v32];
  do
  {
    v95[16] = 0;
    *&v95[8] = *v36;
    if (re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(v36, v30, v31, &v94, v95))
    {
      if (v95[16])
      {
        v38 = v86;
      }

      else
      {
        v38 = &v90;
      }

      a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(v38, v95);
    }

    else
    {
      v39 = *(a3 + 96);
      if (v39 && (*buf = v36[2] >> 1, (v39 = (**v39)(v39, buf)) != 0))
      {
        v40 = v39;
        *v95 = 12;
        *&v95[4] = *v39;
        v41 = *&v95[12];
        if (*&v95[12] != v39[2])
        {
          v42 = *re::graphicsLogObjects(v39);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v36[3];
            v44 = v40[2];
            *buf = 136315650;
            *&buf[4] = v43;
            *&buf[12] = 1024;
            *&buf[14] = v41;
            *&buf[18] = 1024;
            *&buf[20] = v44;
            _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes.", buf, 0x18u);
          }
        }

        a8 = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(&v90, v95);
      }

      else if (byte_1EE1BA4C9 == 1)
      {
        v45 = *re::graphicsLogObjects(v39);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a2 + 48);
          v47 = v36[3];
          *buf = 136315394;
          *&buf[4] = v46;
          *&buf[12] = 2080;
          *&buf[14] = v47;
          _os_log_error_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_ERROR, "Found no parameter definition for shader constant '%s::%s'", buf, 0x16u);
        }
      }
    }

    v36 += 10;
  }

  while (v36 != v37);
  v32 = *(&v91 + 1);
  v48 = v87 == 0;
  a6 = v83;
  v28 = v82;
  if (*(&v91 + 1))
  {
    goto LABEL_48;
  }

LABEL_46:
  if (!v48)
  {
LABEL_48:
    v49 = 126 - 2 * __clz(v32);
    if (v32)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(v93, &v93[v32], v50, 1, a8);
    v52 = 126 - 2 * __clz(v87);
    if (v87)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(v89, &v89[v87], v53, 1, v51);
    re::DynamicArray<re::FillCommand>::operator=(&v90, buf);
    if (*buf && v99)
    {
      (*(**buf + 40))(*buf);
    }

    re::DynamicArray<re::FillCommand>::operator=(v86, buf);
    if (*buf && v99)
    {
      (*(**buf + 40))(*buf);
    }

    v54 = *(&v91 + 1);
    goto LABEL_61;
  }

LABEL_47:
  v22 = 0;
LABEL_83:
  if (v86[0] && v89)
  {
    (*(*v86[0] + 40))(a8);
  }

  if (v90 && v93)
  {
    (*(*v90 + 40))(a8);
  }

  return v22;
}

uint64_t re::scanUntil<re::MetalTypeInfo,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::ResolvedFillCommand,re::ConstantLayer,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_0 &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v8 = (a2 + 24 * a3);
  for (i = (a2 + 16); ; i += 6)
  {
    v11 = i - 4;
    v10 = *(i - 2);
    *buf = *(a1 + 16) >> 1;
    v12 = (**v10)(v10, buf);
    if (v12)
    {
      break;
    }

    v13 = *(i - 1);
    if (v13)
    {
      *buf = *(a1 + 16) >> 1;
      v14 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v13, buf);
      if (v14 != -1)
      {
        v15 = v13[1] + 40 * v14;
        v16 = *(v15 + 24);
        v17 = *a4;
        if (*(*a4 + 160) > v16)
        {
          v18 = *(*(v17 + 152) + v16);
          if (v18 <= 0x14)
          {
            v19 = v15 + 8;
            v20 = (***(v17 + 8 * v18))(*(v17 + 8 * v18), v15 + 32);
            if (v20)
            {
              v40 = *(*a4 + 160);
              if (v40 <= v16)
              {
                re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v40);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v48, v49);
                __break(1u);
              }

              v41 = v20;
              *a5 = *(*(*a4 + 152) + v16);
              *(a5 + 4) = *v20;
              if (*(a5 + 12) != v20[2])
              {
                v42 = *re::graphicsLogObjects(v20);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = *(a1 + 24);
                  v44 = *(a5 + 12);
                  v45 = re::s_materialTableIDMappings[*(v19 + 16)];
                  v46 = re::WeakStringID::debugStr((v19 + 24));
                  v47 = v41[2];
                  *buf = 136316162;
                  *&buf[4] = v43;
                  v51 = 1024;
                  *v52 = v44;
                  *&v52[4] = 2080;
                  *&v52[6] = v45;
                  *&v52[14] = 2080;
                  *&v52[16] = v46;
                  v53 = 1024;
                  v54 = v47;
                  v37 = "Shader constant '%s' expects %d bytes, but the shader binding with struct '%s' and member hash '%s' provides %d bytes.";
                  v38 = v42;
                  v39 = 44;
LABEL_44:
                  _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
                }
              }

              return 1;
            }

            v22 = *re::graphicsLogObjects(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = re::s_materialTableIDMappings[*(v19 + 16)];
              v24 = *(v19 + 24);
              if (v24 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v25 = 0;
              }

              else if (v24)
              {
                snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *(v19 + 24));
                v25 = re::WeakStringID::debugStr(void)const::msg;
              }

              else
              {
                v25 = &str_67;
              }

              v26 = *(a1 + 24);
              *buf = 136315650;
              *&buf[4] = v23;
              v51 = 2080;
              *v52 = v25;
              *&v52[8] = 2080;
              *&v52[10] = v26;
              _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Invalid binding: '%s.%s' for shader constant '%s'", buf, 0x20u);
            }
          }
        }
      }
    }

    if (v11 + 6 == v8)
    {
      return 0;
    }
  }

  v28 = v12;
  *a5 = *i;
  *(a5 + 4) = *v12;
  if (*(a5 + 12) == v12[2])
  {
    return 1;
  }

  v29 = v12[3];
  v30 = *(a1 + 36);
  if (v29 > 0x20)
  {
    if (v29 != 33)
    {
      if (v29 != 34 || v30 != 19)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    if (v30 == 18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v29 != 1)
    {
      if (v29 != 32 || v30 != 17)
      {
        goto LABEL_33;
      }

LABEL_27:
      result = 1;
      *(a5 + 16) = 1;
      return result;
    }

    if (v30 == 16)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  if (byte_1EE1BA4C9 == 1)
  {
    v33 = *re::graphicsLogObjects(v12);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 24);
      v35 = *(a5 + 12);
      v36 = v28[2];
      *buf = 136315650;
      *&buf[4] = v34;
      v51 = 1024;
      *v52 = v35;
      *&v52[4] = 1024;
      *&v52[6] = v36;
      v37 = "Shader constant '%s' expects %d bytes, but the material parameter provides %d bytes and cannot be downcast";
      v38 = v33;
      v39 = 24;
      goto LABEL_44;
    }
  }

  return 1;
}

double anonymous namespace::combineFillCommands(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 32);
    v8 = *v5;
    if (v2 != 1)
    {
      v6 = v5 + 1;
      do
      {
        if (v8.n128_u32[0] == v6->n128_u32[0] && __PAIR64__(v8.n128_u32[2] + v8.n128_u32[3], v8.n128_u32[3] + v8.n128_u32[1]) == *(v6->n128_u64 + 4))
        {
          v8.n128_u32[3] += v6->n128_u32[3];
        }

        else
        {
          re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(a1, &v8);
          v8 = *v6;
          v5 = *(a2 + 32);
          v2 = *(a2 + 16);
        }

        ++v6;
      }

      while (v6 != &v5[v2]);
    }

    *&result = re::DynamicArray<re::ecs2::BlendShapeMeshWeightRange>::add(a1, &v8).n128_u64[0];
  }

  return result;
}

uint64_t *re::DynamicArray<re::FillCommand>::operator=(uint64_t *result, uint64_t *a2)
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
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
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

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  re::DynamicArray<re::ConstantResolution>::clear(a5);
  v27 = 0;
  v28 = 0;
  v24 = 0;
  v25 = 0;
  result = re::MaterialTechniqueVariant::fillConstantTableLayerLists(a1, a3, a4, &v27, &v24);
  v11 = *(a3 + 32);
  if (v11)
  {
    v12 = *(a3 + 40);
    v13 = 112 * v11;
    do
    {
      result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), *(v12 + 16), *a3);
      if ((result & 1) == 0)
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        v18 = 0u;
        memset(v19, 0, 28);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 255;
        v15[0] = &v29;
        v15[1] = v27;
        v14[0] = &v26;
        v14[1] = v24;
        if (re::MaterialTechniqueVariant::resolveConstantArgument(a1, v12, a2, v15, v14, v16, 0, 0))
        {
          re::DynamicArray<re::ConstantResolution>::add(a5, v16);
        }

        if (v19[0])
        {
          if (v20)
          {
            (*(*v19[0] + 40))();
          }

          v20 = 0;
          memset(v19, 0, 24);
          ++LODWORD(v19[3]);
        }

        result = *(&v16[0] + 1);
        if (*(&v16[0] + 1))
        {
          if (v18)
          {
            result = (*(**(&v16[0] + 1) + 40))();
          }
        }
      }

      v12 += 112;
      v13 -= 112;
    }

    while (v13);
  }

  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 112 * v2;
    v4 = *(result + 32) + 56;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v4);
      result = re::DynamicArray<unsigned long>::deinit(v4 - 48);
      v4 += 112;
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::ConstantResolution>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ConstantResolution>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 112 * v5;
  *v11 = *a2;
  re::DynamicArray<re::GeomCell4>::DynamicArray(v11 + 8, (a2 + 8));
  *(v11 + 48) = *(a2 + 48);
  result = re::DynamicArray<re::GeomCell4>::DynamicArray(v11 + 56, (a2 + 56));
  v13 = *(a2 + 96);
  *(v11 + 104) = *(a2 + 104);
  *(v11 + 96) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

unint64_t createSamplerLayerList(const re::MaterialTechnique *a1, const re::DrawCall *a2, uint64_t a3)
{
  v6 = *(a3 + 72);
  v7 = v6[8];
  if (v7)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(0, a2);
    *(a1 + 2) = v7 + 792;
    *(a1 + 3) = v7 + 616;
    *(a1 + 4) = v7 + 904;
    *(a1 + 5) = v7 + 968;
    *(a1 + 6) = 3;
    v8 = 1;
    *a1 = 1;
    v6 = *(a3 + 72);
    v7 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6[9];
  if (v9)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
    v10 = (a1 + 40 * v7);
    v10[2] = v9 + 792;
    v10[3] = v9 + 616;
    v10[4] = v9 + 904;
    v10[5] = v9 + 968;
    v10[6] = 4;
    ++v7;
    ++v8;
    v6 = *(a3 + 72);
  }

  v11 = v6[11];
  if (v11)
  {
    re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
    v12 = (a1 + 40 * v7);
    v12[2] = v11 + 792;
    v12[3] = v11 + 616;
    v12[4] = v11 + 904;
    v12[5] = v11 + 968;
    v12[6] = 5;
    ++v7;
    ++v8;
  }

  v13 = *(a2 + 1);
  re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7, a2);
  v14 = v13 + 1272;
  v15 = v13 + 1208;
  v16 = v13 + 920;
  v17 = v13 + 1096;
  v18 = a1 + 40 * v7;
  *(v18 + 2) = v17;
  *(v18 + 3) = v16;
  *(v18 + 4) = v15;
  *(v18 + 5) = v14;
  *(v18 + 12) = 1;
  v19 = *(*(a2 + 1) + 16);
  result = re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(v7 + 1, v20);
  *(v18 + 7) = v19 + 1040;
  *(v18 + 8) = v19 + 864;
  *(v18 + 9) = v19 + 1152;
  *(v18 + 10) = v19 + 1216;
  *(v18 + 22) = 2;
  *a1 = v7 + 2;
  *(a1 + 2) = v8 + 2;
  return result;
}

double re::MaterialTechniqueVariant::completeResolution(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v83 = 0x7FFFFFFFLL;
  createSamplerLayerList(&v78, *a1, a4);
  v75 = v78;
  v73 = a1;
  v7 = *(a1 + 8);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v9)
  {
    LODWORD(v9) = *(v9 + 332);
  }

  if (!(*(v8 + 332) | v9) || (v10 = a3[15]) == 0)
  {
    v71 = 0;
    goto LABEL_54;
  }

  v11 = 0;
  v12 = a3[16];
  v70 = &v12[2 * v10];
  v13 = &v79[5 * v78];
  do
  {
    v14 = *(v73 + 8);
    v15 = *(v14 + 24);
    if (v15)
    {
      LODWORD(v15) = *(v15 + 332);
    }

    v16 = *(*(v14 + 16) + 332);
    if (v16 <= v15)
    {
      v16 = v15;
    }

    if (v16 <= v11)
    {
      break;
    }

    v77 = 0;
    if (!v75)
    {
      goto LABEL_35;
    }

    v17 = v11;
    v18 = v79;
    while (1)
    {
      re::StringID::StringID(v84, v12);
      if (a3[24])
      {
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v84[0] >> 31) ^ (v84[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v84[0] >> 31) ^ (v84[0] >> 1))) >> 27));
        re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), v84, v19 ^ (v19 >> 31), buf);
        if (v86 != 0x7FFFFFFF)
        {
          v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v84[0] >> 31) ^ (v84[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v84[0] >> 31) ^ (v84[0] >> 1))) >> 27));
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), v84, v20 ^ (v20 >> 31), buf);
          re::StringID::operator=(v84, (a3[20] + 40 * v86 + 24));
        }
      }

      v21 = v18[2];
      *buf = v84[0] >> 1;
      v22 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v21, buf);
      if (v22 == -1)
      {
        goto LABEL_24;
      }

      v23 = v21[1] + 16 * v22;
      v26 = *(v23 + 8);
      v25 = (v23 + 8);
      v24 = v26;
      if (DWORD2(v81))
      {
        v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) >> 27));
        v28 = *(*(&v80 + 1) + 4 * ((v27 ^ (v27 >> 31)) % DWORD2(v81)));
        if (v28 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_21:
      v29 = *v18;
      v22 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*v18, v25);
      if (v22 != -1)
      {
        v32 = v29[1] + 16 * v22;
        v31 = (v17 + 1);
        WORD2(v77) = *(v32 + 8);
        WORD1(v77) = *(v18 + 32);
        v33 = *(v73 + 8);
        v34 = 24;
        if (!*(v33 + 24))
        {
          v34 = 16;
        }

        LOWORD(v77) = *(*(v33 + v34) + 330) + v17;
        v35 = 0xBF58476D1CE4E5B9 * (*v25 ^ (*v25 >> 30));
        v36 = (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31);
        if (DWORD2(v81))
        {
          v37 = v36 % DWORD2(v81);
          v38 = *(*(&v80 + 1) + 4 * v37);
          if (v38 != 0x7FFFFFFF)
          {
            v11 = v17;
            while (*(v81 + 16 * v38 + 8) != *v25)
            {
              v38 = *(v81 + 16 * v38) & 0x7FFFFFFF;
              if (v38 == 0x7FFFFFFF)
              {
                goto LABEL_46;
              }
            }

            goto LABEL_30;
          }
        }

        else
        {
          v37 = 0;
        }

LABEL_46:
        v39 = v83;
        if (v83 == 0x7FFFFFFF)
        {
          v39 = v82;
          v40 = v82;
          if (v82 == DWORD2(v81))
          {
            v69 = v36;
            re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(&v80, (2 * HIDWORD(v81)));
            v40 = v82;
            v37 = v69 % DWORD2(v81);
          }

          v82 = v40 + 1;
          v41 = v81;
          v42 = *(v81 + 16 * v39);
        }

        else
        {
          v41 = v81;
          v42 = *(v81 + 16 * v83);
          LODWORD(v83) = v42 & 0x7FFFFFFF;
        }

        v43 = 16 * v39;
        *(v41 + v43) = v42 | 0x80000000;
        v44 = *(&v80 + 1);
        *(v81 + v43) = *(v81 + 16 * v39) & 0x80000000 | *(*(&v80 + 1) + 4 * v37);
        *(v81 + 16 * v39 + 8) = *v25;
        *(v44 + 4 * v37) = v39;
        ++HIDWORD(v81);
        ++HIDWORD(v83);
        v11 = v17;
        goto LABEL_30;
      }

      v30 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
      v22 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        *buf = 136315138;
        *&buf[4] = v84[1];
        _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Texture '%s' is attempting to use a non-existent sampler via a texture block.", buf, 0xCu);
      }

LABEL_24:
      if (v84[0])
      {
        if (v84[0])
        {
        }
      }

      v18 += 5;
      if (v18 == v13)
      {
        v11 = v17;
        goto LABEL_35;
      }
    }

    while (*(v81 + 16 * v28 + 8) != v24)
    {
      v28 = *(v81 + 16 * v28) & 0x7FFFFFFF;
      if (v28 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    v11 = v17;
    v31 = v17;
LABEL_30:
    if (v84[0])
    {
      if (v84[0])
      {
      }
    }

    if (v11 != v31)
    {
      re::DynamicArray<re::BufferResolution>::add(a5, &v77);
      v11 = v31;
    }

LABEL_35:
    v12 += 2;
  }

  while (v12 != v70);
  v71 = v11;
LABEL_54:
  v45 = a3[26];
  if (v45)
  {
    v46 = a3[27];
    v74 = v46 + 24 * v45;
    do
    {
      v84[0] = 0;
      if (*(v46 + 18) != 1)
      {
        goto LABEL_60;
      }

      v47 = *(v73 + 8);
      v48 = 16;
      if (*(v47 + 24))
      {
        v48 = 24;
      }

      if (*(v46 + 16) - *(*(v47 + v48) + 330) >= v71)
      {
LABEL_60:
        if (v75)
        {
          v49 = v79;
          while (1)
          {
            v50 = *v49;
            *buf = *v46 >> 1;
            v51 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v50, buf);
            if (v51 != -1)
            {
              LODWORD(v52) = *(v49 + 8);
              v53 = *(v50[1] + 16 * v51 + 8);
              if (*(a2 + 24 * v52 + 8) > v53)
              {
                break;
              }
            }

            v54 = v49[1];
            *buf = *v46 >> 1;
            v55 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(v54, buf);
            if (v55 != -1)
            {
              v52 = 0;
              v56 = v54[1] + 40 * v55;
              v57 = v56 + 8;
              v58 = *(v56 + 24);
              v59 = &re::s_samplerTableConstantMembers;
              v60 = (a2 + 8);
              while (1)
              {
                v61 = *v59;
                v59 += 16;
                if (v58 == v61)
                {
                  if (*v60)
                  {
                    break;
                  }
                }

                ++v52;
                v60 += 3;
                if (v52 == 6)
                {
                  goto LABEL_73;
                }
              }

              v62 = v60[1];
              v63 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v62, (v57 + 24));
              if (v63 != -1)
              {
                v53 = *(v62[1] + 16 * v63 + 8);
                if (*v60 <= v53)
                {
                  re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v62[1] + 16 * v63 + 8), *v60);
                  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v67, v68);
                  __break(1u);
                }

                if (*(*(v60 - 1) + 8 * v53))
                {
                  break;
                }
              }
            }

LABEL_73:
            v49 += 5;
            if (v49 == &v79[5 * v75])
            {
              goto LABEL_74;
            }
          }

          WORD1(v84[0]) = v52;
          WORD2(v84[0]) = v53;
          LOWORD(v84[0]) = *(v46 + 16);
        }

        else
        {
LABEL_74:
          LODWORD(v84[0]) = *(v46 + 16);
          *buf = 0x5CEBE1FD2490;
          v65 = *(a2 + 16);
          WORD2(v84[0]) = *(v65[1] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v65, buf) + 8);
        }

        re::DynamicArray<re::BufferResolution>::add(a5, v84);
      }

      v46 += 24;
    }

    while (v46 != v74);
  }

  return re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v80);
}

{
  *(a5 + 16) = 0;
  ++*(a5 + 24);
  SamplerLayerList = createSamplerLayerList(v75, *a1, a4);
  v63 = v75[0];
  v9 = v75[0] + 1;
  v10 = 4;
  do
  {
    if (!--v9)
    {
      break;
    }

    v11 = v75[v10];
    v10 += 5;
  }

  while (!*(v11 + 24));
  v12 = *(a1 + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v14)
  {
    LODWORD(v14) = *(v14 + 332);
  }

  if (v9)
  {
    v15 = (*(v13 + 332) | v14) == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  v68 = v16;
  v17 = v75[0] + 1;
  v18 = 5;
  while (--v17)
  {
    v19 = v75[v18];
    v18 += 5;
    if (*(v19 + 24))
    {
      goto LABEL_17;
    }
  }

  if (v68)
  {
LABEL_17:
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v74 = 0x7FFFFFFFLL;
    v20 = a3[15];
    if (v20)
    {
      v64 = 0;
      v21 = a3[16];
      v67 = v21 + 32 * v20;
      if (v75[0])
      {
        v22 = v17 == 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = !v22;
      v65 = v23;
      v66 = a5;
      do
      {
        v24 = *(a1 + 8);
        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v26)
        {
          v27 = *(v26 + 332);
          v28 = *(v25 + 332);
          if (v28 <= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v28;
          }

          v30 = v29 - 1;
          if (!v68)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v28 = *(v25 + 332);
          v30 = v28 - 1;
          if ((v68 & 1) == 0)
          {
            goto LABEL_48;
          }

          v27 = 0;
        }

        if (v28 <= v27)
        {
          v28 = v27;
        }

        if (v28 > v64)
        {
          if (!v63)
          {
            goto LABEL_85;
          }

          v70 = v30;
          v31 = &v76;
          v32 = 40 * v63;
          while (1)
          {
            re::StringID::StringID(&v78, v21);
            if (a3[24])
            {
              v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v33 ^ (v33 >> 31), &v79);
              if (v80 != 0x7FFFFFFF)
              {
                v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
                re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v34 ^ (v34 >> 31), &v79);
                re::StringID::operator=(&v78, (a3[20] + 40 * v80 + 24));
              }
            }

            v35 = *v31;
            v79 = v78 >> 1;
            SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v35, &v79);
            if (SamplerLayerList != -1)
            {
              v36 = v35[1] + 16 * SamplerLayerList;
              SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*(v31 - 2), (v36 + 8));
              if (SamplerLayerList != -1)
              {
                break;
              }
            }

            if (v78)
            {
              if (v78)
              {
              }
            }

            v31 += 5;
            v32 -= 40;
            if (!v32)
            {
              LOBYTE(v37) = 0;
              v38 = 0;
              goto LABEL_49;
            }
          }

          v51 = *(v36 + 8);
          v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
          v53 = v52 ^ (v52 >> 31);
          if (v71)
          {
            v54 = v53 % DWORD2(v72);
            v55 = *(*(&v71 + 1) + 4 * v54);
            if (v55 != 0x7FFFFFFF)
            {
              v56 = *(v72 + 24 * v55 + 8);
              if (v56 == v51)
              {
                v57 = *(*(&v71 + 1) + 4 * v54);
LABEL_78:
                v58 = v72 + 24 * v57;
                v59 = *(v58 + 18);
                LOBYTE(v37) = *(v58 + 20);
                goto LABEL_95;
              }

              while (1)
              {
                v60 = *(v72 + 24 * *(*(&v71 + 1) + 4 * v54)) & 0x7FFFFFFF;
                if (v60 == 0x7FFFFFFF)
                {
                  break;
                }

                if (*(v72 + 24 * v60 + 8) == v51)
                {
                  while (1)
                  {
                    v57 = v55;
                    if (v56 == v51)
                    {
                      break;
                    }

                    v55 = *(v72 + 24 * v55) & 0x7FFFFFFF;
                    v57 = 0x7FFFFFFF;
                    if (v55 == 0x7FFFFFFF)
                    {
                      break;
                    }

                    v56 = *(v72 + 24 * v55 + 8);
                  }

                  goto LABEL_78;
                }
              }

              v62 = v64 + 1;
              v59 = v64;
              while (*(v72 + 24 * v55 + 8) != v51)
              {
                LODWORD(v55) = *(v72 + 24 * v55) & 0x7FFFFFFF;
                if (v55 == 0x7FFFFFFF)
                {
                  goto LABEL_93;
                }
              }

              LOBYTE(v37) = 0;
LABEL_94:
              v64 = v62;
LABEL_95:
              v38 = *(v21 + 16);
              if (v78)
              {
                if (v78)
                {
                }
              }

              v70 = v59;
              LODWORD(v32) = 1;
              goto LABEL_49;
            }
          }

          else
          {
            LODWORD(v54) = 0;
          }

          v62 = v64 + 1;
          v59 = v64;
LABEL_93:
          SamplerLayerList = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(&v71, v54, v53);
          LOBYTE(v37) = 0;
          *(SamplerLayerList + 8) = *(v36 + 8);
          *(SamplerLayerList + 16) = 0;
          *(SamplerLayerList + 18) = v59;
          *(SamplerLayerList + 20) = 0;
          ++HIDWORD(v74);
          goto LABEL_94;
        }

LABEL_48:
        v70 = v30;
        LOBYTE(v37) = 0;
        v38 = 0;
        LODWORD(v32) = 0;
LABEL_49:
        if (v65)
        {
          v39 = &v77;
          v40 = 40 * v63;
          while (1)
          {
            re::StringID::StringID(&v78, v21);
            if (a3[24])
            {
              v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v41 ^ (v41 >> 31), &v79);
              if (v80 != 0x7FFFFFFF)
              {
                v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v78 >> 31) ^ (v78 >> 1))) >> 27));
                re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a3 + 18), &v78, v42 ^ (v42 >> 31), &v79);
                re::StringID::operator=(&v78, (a3[20] + 40 * v80 + 24));
              }
            }

            v43 = *v39;
            v79 = v78 >> 1;
            SamplerLayerList = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v43, &v79);
            if (SamplerLayerList != -1)
            {
              break;
            }

            if (v78)
            {
              if (v78)
              {
              }
            }

            v39 += 5;
            v40 -= 40;
            if (!v40)
            {
              goto LABEL_59;
            }
          }

          v37 = *(v43[1] + 16 * SamplerLayerList + 8);
          v38 = *(v21 + 16);
          if (v78)
          {
            if (v78)
            {
            }
          }

          v44 = v66;
LABEL_65:
          v45 = *(v44 + 8);
          v46 = *(v44 + 16);
          if (v46 >= v45)
          {
            v47 = v46 + 1;
            if (v45 < v46 + 1)
            {
              if (*v44)
              {
                v48 = 2 * v45;
                v15 = v45 == 0;
                v49 = 8;
                if (!v15)
                {
                  v49 = v48;
                }

                if (v49 <= v47)
                {
                  v50 = v47;
                }

                else
                {
                  v50 = v49;
                }

                SamplerLayerList = re::DynamicArray<re::internal::Voxel>::setCapacity(v44, v50);
              }

              else
              {
                SamplerLayerList = re::DynamicArray<re::internal::Voxel>::setCapacity(v44, v47);
                ++*(v44 + 24);
              }
            }

            v46 = *(v44 + 16);
          }

          v61 = *(v44 + 32) + 6 * v46;
          *v61 = v38;
          *(v61 + 2) = v70;
          *(v61 + 4) = v37;
          ++*(v44 + 16);
          ++*(v44 + 24);
          goto LABEL_85;
        }

LABEL_59:
        v44 = v66;
        if (v32)
        {
          goto LABEL_65;
        }

LABEL_85:
        v21 += 32;
      }

      while (v21 != v67);
    }

    return re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(&v71);
  }

  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v135 = *MEMORY[0x1E69E9840];
  v8 = *(a5 + 16);
  *(a5 + 16) = 0;
  if (v8)
  {
    v9 = 144 * v8;
    v10 = *(a5 + 32) + 80;
    do
    {
      v11 = *(v10 + 40);
      if (v11)
      {

        *(v10 + 40) = 0;
      }

      re::DynamicArray<re::ConstantResolution>::deinit(v10);
      re::DynamicArray<unsigned long>::deinit(v10 - 40);
      re::DynamicArray<unsigned long>::deinit(v10 - 80);
      v10 += 144;
      v9 -= 144;
    }

    while (v9);
  }

  ++*(a5 + 24);
  v114 = 0;
  v115 = 0;
  re::MaterialTechniqueVariant::fillTextureTableLayerLists(a1, a2, a4, &v114);
  v111 = 0;
  v112 = 0;
  v108 = 0;
  v109 = 0;
  re::MaterialTechniqueVariant::fillConstantTableLayerLists(a1, a3, a4, &v111, &v108);
  v105 = 0;
  v106 = 0;
  result = re::MaterialTechniqueVariant::fillBufferTableLayerLists(a1, a4, &v105);
  v14 = *(a3 + 64);
  if (!v14)
  {
    return result;
  }

  v15 = 0;
  *&v13 = 136315394;
  v72 = v13;
  v77 = a3;
  do
  {
    v16 = *(a3 + 72) + 112 * v15;
    result = re::MaterialParameterTableLayers::containsDirectBuffer(*(a4 + 72), *(v16 + 16), *a3);
    if (result)
    {
      goto LABEL_97;
    }

    v17 = *(a3 + 88);
    if (v17 <= v15)
    {
      v81 = 0;
      v127 = 0u;
      *v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v70)
      {
        v71 = 3;
      }

      else
      {
        v71 = 2;
      }

      *&buf[14] = 476;
      *&buf[18] = 2048;
      *&buf[20] = v15;
      *&buf[28] = 2048;
      *&buf[30] = v17;
      _os_log_send_and_compose_impl(v71, &v81, &v124, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v72, *(&v72 + 1));
      _os_crash_msg();
      __break(1u);
    }

    v18 = *(a3 + 96);
    v124 = 0uLL;
    DWORD2(v125) = 0;
    *&v125 = 0;
    v126 = 0u;
    v127 = 0u;
    *v128 = 0;
    *&v128[8] = 0u;
    v129 = 0u;
    v130 = 0;
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v134 = 0;
    v134 = *(v16 + 16);
    v104 = 0;
    v101[1] = 0;
    v102 = 0;
    v100 = 0;
    v101[0] = 0;
    v103 = 0;
    v97[1] = 0;
    v98 = 0;
    v96 = 0;
    v97[0] = 0;
    v99 = 0;
    v93[1] = 0;
    v94 = 0;
    v93[0] = 0;
    v95 = 0;
    v19 = *(v16 + 72);
    if (!v19)
    {
      v133 = 0;
      v54 = a5;
      goto LABEL_51;
    }

    v73 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *(v16 + 80);
    v23 = 80 * v19;
    do
    {
      v24 = (v22 + v20);
      v25 = *(v22 + v20 + 36);
      if (v25 > 0x3A)
      {
        if (v25 != 59)
        {
          if (v25 == 60)
          {
            *buf = 0;
            *buf = *(v22 + v20 + 72);
            re::MaterialTechniqueVariant::resolveBufferArgument((v22 + v20 + 16), *(a2 + 16), &v107, v105, buf, 1);
            v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *&buf[2]) ^ ((0xBF58476D1CE4E5B9 * *&buf[2]) >> 27));
            v33 = ((v21 << 6) - 0x61C8864680B583E9 + (v21 >> 2) + (v32 ^ (v32 >> 31))) ^ v21;
            v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *&buf[4]) ^ ((0xBF58476D1CE4E5B9 * *&buf[4]) >> 27));
            v21 = ((v34 ^ (v34 >> 31)) - 0x61C8864680B583E9 + (v33 << 6) + (v33 >> 2)) ^ v33;
            result = re::DynamicArray<re::BufferResolution>::add(v97, buf);
            goto LABEL_39;
          }

          goto LABEL_22;
        }

        v51 = *re::graphicsLogObjects(result);
        result = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_39;
        }

        v52 = *(v22 + v20 + 24);
        v53 = *(v16 + 8);
        *buf = v72;
        *&buf[4] = v52;
        *&buf[12] = 2080;
        *&buf[14] = v53;
        v49 = v51;
        v50 = "Found sampler member (%s) in Bindless Argument (%s). This is not supported.";
LABEL_42:
        _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, v50, buf, 0x16u);
        goto LABEL_39;
      }

      if (v25 == 1)
      {
        v46 = *re::graphicsLogObjects(result);
        result = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_39;
        }

        v47 = *(v22 + v20 + 24);
        v48 = *(v16 + 8);
        *buf = v72;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = v48;
        v49 = v46;
        v50 = "Found struct member (%s) in Bindless Argument (%s). This is not supported.";
        goto LABEL_42;
      }

      if (v25 == 58)
      {
        v80[0] = 0;
        *buf = 0;
        *&buf[8] = &str_67;
        *&buf[24] = 0;
        *&buf[16] = 0;
        *&buf[19] = 0;
        v26 = re::StringID::operator=(buf, (v22 + v20 + 16));
        *&buf[18] = *(v22 + v20 + 64);
        buf[22] = *(v22 + v20 + 68);
        v27 = *(a2 + 8);
        v81 = &v116;
        v82 = v114;
        re::MaterialTechniqueVariant::resolveTextureArgument(v26, buf, v27, &v81, v80, a6, v77);
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        LOWORD(v80[0]) = *(v22 + v20 + 72);
        v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * WORD1(v80[0])) ^ ((0xBF58476D1CE4E5B9 * WORD1(v80[0])) >> 27));
        v30 = ((v21 << 6) - 0x61C8864680B583E9 + (v21 >> 2) + (v29 ^ (v29 >> 31))) ^ v21;
        v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * WORD2(v80[0])) ^ ((0xBF58476D1CE4E5B9 * WORD2(v80[0])) >> 27));
        v21 = ((v31 ^ (v31 >> 31)) - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
        result = re::DynamicArray<re::TextureResolution>::add(v101, v80);
        goto LABEL_39;
      }

LABEL_22:
      memset(buf, 0, 36);
      v118 = 0u;
      memset(v119, 0, 28);
      v122 = 0;
      v120 = 0;
      v121 = 0;
      v123 = 255;
      LOWORD(v121) = *(v22 + v20 + 72);
      v81 = 0;
      v82 = &str_67;
      v83 = 0;
      v84 = 0;
      v85 = 1;
      v86 = 0;
      v87 = &str_67;
      v88 = 0;
      v89 = 0;
      *&v91[16] = 0;
      *&v91[20] = 256;
      v90[1] = 0;
      *v91 = 0;
      v90[0] = 0;
      *&v91[5] = 0;
      v92 = 0;
      re::StringID::operator=(&v81, (v22 + v20 + 16));
      v35 = *v24;
      v85 = *(v24 + 2);
      v84 = v35;
      re::StringID::operator=(&v86, (v22 + v20 + 16));
      v36 = *(v22 + v20 + 32);
      v89 = *(v22 + v20 + 36);
      v88 = v36;
      re::FixedArray<re::MetalTypeInfo>::operator=(v90, (v22 + v20 + 40));
      v37 = *(v22 + v20 + 70);
      *&v91[8] = *(v22 + v20 + 64);
      *&v91[14] = v37;
      v38 = *a2;
      v80[0] = &v113;
      v80[1] = v111;
      v79[0] = &v110;
      v79[1] = v108;
      re::MaterialTechniqueVariant::resolveConstantArgument(a1, &v81, v38, v80, v79, buf, 1, v39);
      v40 = re::FixedArray<re::MetalTypeInfo>::deinit(v90);
      if (v86)
      {
        if (v86)
        {
        }
      }

      v86 = 0;
      v87 = &str_67;
      if (v81)
      {
        if (v81)
        {
        }
      }

      LOWORD(v121) = *(v22 + v20 + 72);
      v41 = *buf;
      v42 = *(&v118 + 1);
      re::DynamicArray<re::ConstantResolution>::add(v93, buf);
      if (v119[0])
      {
        if (v120)
        {
          (*(*v119[0] + 40))();
        }

        v120 = 0;
        memset(v119, 0, 24);
        ++LODWORD(v119[3]);
      }

      result = *&buf[8];
      if (*&buf[8] && v118)
      {
        result = (*(**&buf[8] + 40))();
      }

      v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
      v44 = ((v21 << 6) - 0x61C8864680B583E9 + (v21 >> 2) + (v43 ^ (v43 >> 31))) ^ v21;
      v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) >> 27));
      v21 = ((v45 ^ (v45 >> 31)) - 0x61C8864680B583E9 + (v44 << 6) + (v44 >> 2)) ^ v44;
LABEL_39:
      v20 += 80;
    }

    while (v23 != v20);
    v133 = v21;
    v54 = a5;
    if (v124)
    {
      v18 = v73;
      if (v101[0])
      {
        re::DynamicArray<re::TextureResolution>::copy(&v124, v101);
      }

      else
      {
        *&v125 = 0;
      }

      ++DWORD2(v125);
    }

    else
    {
      v18 = v73;
      if (v101[0])
      {
        *&v124 = v101[0];
        re::DynamicArray<re::TextureResolution>::setCapacity(&v124, v102);
        ++DWORD2(v125);
        re::DynamicArray<re::TextureResolution>::copy(&v124, v101);
      }
    }

LABEL_51:
    v55 = v97[0];
    if (*(&v126 + 1))
    {
      if (v97[0])
      {
        re::DynamicArray<re::TextureResolution>::copy(&v126 + 1, v97);
      }

      else
      {
        *(&v127 + 1) = 0;
      }

      ++*v128;
    }

    else if (v97[0])
    {
      *(&v126 + 1) = v97[0];
      re::DynamicArray<re::TextureResolution>::setCapacity(&v126 + 1, v98);
      ++*v128;
      re::DynamicArray<re::TextureResolution>::copy(&v126 + 1, v97);
    }

    if (*&v128[16])
    {
      if (v93[0])
      {
        re::DynamicArray<re::ConstantResolution>::copy(&v128[16], v93);
        ++v130;
      }

      else
      {
        re::DynamicArray<re::ConstantResolution>::clear(&v128[16]);
      }
    }

    else if (v93[0])
    {
      *&v128[16] = v93[0];
      re::DynamicArray<re::ConstantResolution>::setCapacity(&v128[16], v94);
      ++v130;
      re::DynamicArray<re::ConstantResolution>::copy(&v128[16], v93);
    }

    v56 = NS::SharedPtr<MTL::Buffer>::operator=(&v132, (v18 + 8 * v15));
    v57 = *(v54 + 8);
    v58 = *(v54 + 16);
    if (v58 >= v57)
    {
      v59 = v58 + 1;
      if (v57 < v58 + 1)
      {
        if (*v54)
        {
          v60 = 2 * v57;
          v61 = v57 == 0;
          v62 = 8;
          if (!v61)
          {
            v62 = v60;
          }

          if (v62 <= v59)
          {
            v63 = v59;
          }

          else
          {
            v63 = v62;
          }

          re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v54, v63);
        }

        else
        {
          re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v54, v59);
          ++*(v54 + 24);
        }
      }

      v58 = *(v54 + 16);
    }

    v64 = *(v54 + 32) + 144 * v58;
    *(v64 + 32) = 0;
    *(v64 + 8) = 0;
    *(v64 + 16) = 0;
    *v64 = 0;
    *(v64 + 24) = 0;
    if (v124)
    {
      v65 = v125;
      *v64 = v124;
      re::DynamicArray<re::TextureResolution>::setCapacity(v64, v65);
      ++*(v64 + 24);
      re::DynamicArray<re::TextureResolution>::copy(v64, &v124);
    }

    *(v64 + 40) = 0;
    *(v64 + 72) = 0;
    *(v64 + 48) = 0;
    *(v64 + 56) = 0;
    *(v64 + 64) = 0;
    if (*(&v126 + 1))
    {
      v66 = *(&v127 + 1);
      *(v64 + 40) = *(&v126 + 1);
      re::DynamicArray<re::TextureResolution>::setCapacity((v64 + 40), v66);
      ++*(v64 + 64);
      re::DynamicArray<re::TextureResolution>::copy((v64 + 40), &v126 + 8);
    }

    *(v64 + 80) = 0;
    *(v64 + 112) = 0;
    *(v64 + 88) = 0;
    *(v64 + 96) = 0;
    *(v64 + 104) = 0;
    if (*&v128[16])
    {
      v67 = *(&v129 + 1);
      *(v64 + 80) = *&v128[16];
      re::DynamicArray<re::ConstantResolution>::setCapacity((v64 + 80), v67);
      ++*(v64 + 104);
      re::DynamicArray<re::ConstantResolution>::copy((v64 + 80), &v128[16]);
    }

    *(v64 + 120) = v132;
    v68 = v134;
    *(v64 + 128) = v133;
    *(v64 + 136) = v68;
    ++*(v54 + 16);
    ++*(v54 + 24);
    re::DynamicArray<re::ConstantResolution>::deinit(v93);
    if (v55 && v100)
    {
      (*(*v55 + 40))(v55);
    }

    a3 = v77;
    if (v101[0] && v104)
    {
      (*(*v101[0] + 40))();
    }

    if (v132)
    {

      v132 = 0;
    }

    re::DynamicArray<re::ConstantResolution>::deinit(&v128[16]);
    if (*(&v126 + 1))
    {
      if (*&v128[8])
      {
        (*(**(&v126 + 1) + 40))();
      }

      *&v128[8] = 0;
      v127 = 0uLL;
      *(&v126 + 1) = 0;
      ++*v128;
    }

    result = v124;
    if (v124)
    {
      if (v126)
      {
        result = (*(*v124 + 40))();
      }
    }

    v14 = *(v77 + 64);
LABEL_97:
    ++v15;
  }

  while (v15 < v14);
  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::AttributeResolution,re::AttributeTable>(re *a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v15 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v14 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v15, &v14);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, (*v11 + 8));
  return v12;
}

uint64_t re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::BufferResolution,re::BufferTableCollection>(re *a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::TextureResolution,re::TextureTableCollection>(re *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v18 = a5;
  v10 = *a2;
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 88, 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  v17 = v12;
  v13 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v10, &v18, &v17);
  v14 = *v13;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v13 + 8, a6);
  v15 = *(*(a1 + 1) + 24);
  if (v15)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v15, a4, v14 + 48, a6);
  }

  return v14;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::ConstantResolution,re::ConstantTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::SamplerResolution,re::SamplerTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v8 = *a2;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 88, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  v15 = v10;
  v11 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v8, &v16, &v15);
  v12 = *v11;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v11 + 8);
  v13 = *(*(a1 + 1) + 24);
  if (v13)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v13, a4, v12 + 48);
  }

  return v12;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::TextureBlockResolution,re::SamplerTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = a5;
  v7 = *a2;
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 88, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0;
  v16 = v9;
  v10 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v7, &v17, &v16);
  v11 = *v10;
  re::MaterialTechniqueVariant::completeResolution(a1, v12, *(*(a1 + 1) + 16), a4, *v10 + 8);
  v14 = *(*(a1 + 1) + 24);
  if (v14)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, v13, v14, a4, v11 + 48);
  }

  return v11;
}

uint64_t re::MaterialTechniqueVariant::completeResolution<re::ArgumentBufferResolution,re::ArgumentBufferTableCollection>(re *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v18 = a5;
  v10 = *a2;
  v11 = re::globalAllocators(a1);
  v12 = (*(*v11[2] + 32))(v11[2], 88, 8);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  v17 = v12;
  v13 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v10, &v18, &v17);
  v14 = *v13;
  re::MaterialTechniqueVariant::completeResolution(a1, a3, *(*(a1 + 1) + 16), a4, *v13 + 8, a6);
  v15 = *(*(a1 + 1) + 24);
  if (v15)
  {
    re::MaterialTechniqueVariant::completeResolution(a1, a3, v15, a4, v14 + 48, a6);
  }

  return v14;
}

uint64_t re::MaterialTechniqueVariant::shouldCompileSynchronously(re::MaterialTechniqueVariant *this)
{
  {
    v5 = this;
    this = v5;
    if (v4)
    {
      re::Defaults::BOOLValue(&re::MaterialTechniqueVariant::shouldCompileSynchronously(void)const::_compilePipelinesSynchronously, "compilePipelinesSynchronously", v3);
      this = v5;
    }
  }

  if (re::MaterialTechniqueVariant::shouldCompileSynchronously(void)const::_compilePipelinesSynchronously == 1)
  {
    v1 = byte_1ECF1CC91;
  }

  else if (*(this + 16))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(**this + 2845) ^ 1;
  }

  return v1 & 1;
}

void *re::introspect_ShaderAPIFlagsValues(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "None";
    re::introspect_ShaderAPIFlagsValues(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "SurfaceShader";
    qword_1EE1C6450 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "SurfaceShaderPrivate";
    qword_1EE1C6458 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 4;
    *(v16 + 16) = "GeometryModifier";
    qword_1EE1C6460 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 8;
    *(v18 + 16) = "GeometryModifierPrivate";
    qword_1EE1C6468 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ShaderAPIFlagsValues(BOOL)::info, "ShaderAPIFlagsValues", 4, 4, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::introspect_ShaderAPIFlagsValues(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized)
    {
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
    }
  }

  re::introspect_ShaderAPIFlagsValues(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ShaderAPIFlagsValues(BOOL)::info, a2);
  v20[0] = 0xDB7D46A3AA816EE8;
  v20[1] = "ShaderAPIFlagsValues";
  xmmword_1EE1C6420 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_ShaderAPIFlagsValues(BOOL)::info;
}

uint64_t re::internal::MoveOnlyCallable<re::MaterialTechniqueVariant::releasePipelineStates(re::RenderManager *,re::DrawingManager *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D092E0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  return a2;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_8;
  }

  v6 = v4 % v5;
  v7 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_8:
    v10 = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(a1, v6, v4, a2, a2);
    ++*(a1 + 40);
    v9 = *(a1 + 16) + 16 * v10;
    return v9 + 8;
  }

  v8 = *(a1 + 16);
  while (*(v8 + 16 * v7 + 8) != v4)
  {
    v7 = *(v8 + 16 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v9 = v8 + 16 * v7;
  return v9 + 8;
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 16 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  v13 = *(a1 + 8);
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 16 * v7) & 0x80000000 | *(v13 + 4 * a2);
  *(*(a1 + 16) + 16 * v7 + 8) = *a5;
  *(v13 + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v13, v4, a2);
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
          if ((*(*&v13[16] + v10) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addAsCopy(a1, *(*&v13[16] + v10 + 8) % *(a1 + 24), *(*&v13[16] + v10 + 8), *&v13[16] + v10 + 8, (*&v13[16] + v10 + 8));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v13);
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

unint64_t re::DynamicInlineArray<re::TextureLayer,10ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TextureResolution>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::TextureResolution>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TextureResolution>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TextureResolution>::setCapacity(void *result, unint64_t a2)
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
          result = (*(*result + 32))(result, 8 * a2, 2);
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
        result = re::DynamicArray<re::TextureResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

unint64_t re::DynamicInlineArray<re::BufferLayer,5ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(__n128 *result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = result;
  while (1)
  {
    result = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v132 = a2[-1].n128_u32[0];
        v131 = &a2[-1];
        v133 = v132 == v12->n128_u32[0];
        v134 = v132 < v12->n128_u32[0];
        if (v133)
        {
          v134 = *(v131 + 2) < v12->n128_u32[2];
        }

        if (v134)
        {
          v239 = *v12;
          *v12 = *v131;
          *v131 = v239;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(v12, v12 + 1, v12 + 2, a2 - 1, a5);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a5);
      v117 = a2[-1].n128_u32[0];
      v116 = &a2[-1];
      v118 = v12[3].n128_u32[0];
      v119 = v117 < v118;
      if (v117 == v118)
      {
        v119 = *(v116 + 2) < v12[3].n128_u32[2];
      }

      if (v119)
      {
        v120 = v12[3];
        v12[3] = *v116;
        *v116 = v120;
        v121 = v12[3].n128_u32[0];
        v122 = v12[2].n128_u32[0];
        v133 = v121 == v122;
        v123 = v121 < v122;
        if (v133)
        {
          v123 = v12[3].n128_u32[2] < v12[2].n128_u32[2];
        }

        if (v123)
        {
          v124 = v12[2];
          v12[2] = v12[3];
          v12[3] = v124;
          v125 = v12[2].n128_u32[0];
          v126 = v12[1].n128_u32[0];
          v133 = v125 == v126;
          v127 = v125 < v126;
          if (v133)
          {
            v127 = v12[2].n128_u32[2] < v12[1].n128_u32[2];
          }

          if (v127)
          {
            v128 = v12[1];
            v12[1] = v12[2];
            v12[2] = v128;
            v129 = v12[1].n128_u32[0];
            v133 = v129 == v12->n128_u32[0];
            v130 = v129 < v12->n128_u32[0];
            if (v133)
            {
              v130 = v12[1].n128_u32[2] < v12->n128_u32[2];
            }

            if (v130)
            {
              v238 = *v12;
              *v12 = v12[1];
              v12[1] = v238;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v144 = v12 + 1;
      v146 = v12 == a2 || v144 == a2;
      if (a4)
      {
        if (!v146)
        {
          v147 = 0;
          v148 = v12;
          do
          {
            v149 = v144;
            v150 = v148[1].n128_u32[0];
            v151 = v148[1].n128_u32[2];
            v152 = v150 < v148->n128_u32[0];
            if (v150 == v148->n128_u32[0])
            {
              v152 = v151 < v148->n128_u32[2];
            }

            if (v152)
            {
              v153 = v148[1].n128_u32[1];
              v154 = v148[1].n128_u32[3];
              v155 = v147;
              while (1)
              {
                v156 = v12 + v155;
                *(v12 + v155 + 16) = *(v12 + v155);
                if (!v155)
                {
                  break;
                }

                v157 = *(v156 - 4);
                v158 = v151 < *(v156 - 2);
                v133 = v150 == v157;
                v159 = v150 < v157;
                if (!v133)
                {
                  v158 = v159;
                }

                v155 -= 16;
                if (!v158)
                {
                  v160 = (v12 + v155 + 16);
                  goto LABEL_211;
                }
              }

              v160 = v12;
LABEL_211:
              v160->n128_u32[0] = v150;
              v160->n128_u32[1] = v153;
              v160->n128_u32[2] = v151;
              v160->n128_u32[3] = v154;
            }

            v144 = v149 + 1;
            v147 += 16;
            v148 = v149;
          }

          while (&v149[1] != a2);
        }
      }

      else if (!v146)
      {
        do
        {
          v205 = v144;
          v206 = result[1].n128_u32[0];
          v207 = result[1].n128_u32[2];
          v208 = v206 < result->n128_u32[0];
          if (v206 == result->n128_u32[0])
          {
            v208 = v207 < result->n128_u32[2];
          }

          if (v208)
          {
            v209 = result[1].n128_u32[1];
            v210 = result[1].n128_u32[3];
            v211 = v205;
            do
            {
              *v211 = v211[-1];
              v212 = v211[-2].n128_u32[0];
              v213 = v211[-2].n128_u32[2];
              --v211;
              v214 = v207 < v213;
              v133 = v206 == v212;
              v215 = v206 < v212;
              if (v133)
              {
                v215 = v214;
              }
            }

            while (v215);
            v211->n128_u32[0] = v206;
            v211->n128_u32[1] = v209;
            v211->n128_u32[2] = v207;
            v211->n128_u32[3] = v210;
          }

          v144 = v205 + 1;
          result = v205;
        }

        while (&v205[1] != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v161 = (v13 - 2) >> 1;
        v162 = v161;
        do
        {
          v163 = v162;
          if (v161 >= v162)
          {
            v164 = (2 * v162) | 1;
            v165 = &v12[v164];
            if (2 * v163 + 2 >= v13)
            {
              v167 = v165->n128_u32[0];
            }

            else
            {
              v166 = v165[1].n128_u32[0];
              v167 = v165->n128_u32[0];
              v168 = v165->n128_u32[2] < v165[1].n128_u32[2];
              if (v165->n128_u32[0] != v166)
              {
                v168 = v165->n128_u32[0] < v166;
              }

              if (v168)
              {
                v167 = v165[1].n128_u32[0];
                ++v165;
                v164 = 2 * v163 + 2;
              }
            }

            v169 = &v12[v163];
            v170 = v169->n128_u32[0];
            v171 = v169->n128_u32[2];
            v133 = v167 == v169->n128_u32[0];
            v172 = v167 < v169->n128_u32[0];
            if (v133)
            {
              v172 = v165->n128_u32[2] < v171;
            }

            if (!v172)
            {
              v173 = v169->n128_u32[1];
              v174 = v169->n128_u32[3];
              do
              {
                v175 = v169;
                v169 = v165;
                *v175 = *v165;
                if (v161 < v164)
                {
                  break;
                }

                v176 = (2 * v164) | 1;
                v165 = &v12[v176];
                v164 = 2 * v164 + 2;
                if (v164 >= v13)
                {
                  v177 = v165->n128_u32[0];
                  v164 = v176;
                }

                else
                {
                  v177 = v165[1].n128_u32[0];
                  v178 = v165->n128_u32[2] < v165[1].n128_u32[2];
                  if (v165->n128_u32[0] != v177)
                  {
                    v178 = v165->n128_u32[0] < v177;
                  }

                  if (v178)
                  {
                    ++v165;
                  }

                  else
                  {
                    v177 = v165->n128_u32[0];
                    v164 = v176;
                  }
                }

                v133 = v177 == v170;
                v179 = v177 < v170;
                v180 = v133 ? v165->n128_u32[2] < v171 : v179;
              }

              while (v180 != 1);
              v169->n128_u32[0] = v170;
              v169->n128_u32[1] = v173;
              v169->n128_u32[2] = v171;
              v169->n128_u32[3] = v174;
            }
          }

          v162 = v163 - 1;
        }

        while (v163);
        do
        {
          v181 = 0;
          v241 = *v12;
          v182 = v12;
          do
          {
            v183 = &v182[v181];
            v184 = v183 + 1;
            v185 = (2 * v181) | 1;
            v181 = 2 * v181 + 2;
            if (v181 >= v13)
            {
              v181 = v185;
            }

            else
            {
              v187 = v183[2].n128_u32[0];
              v186 = v183 + 2;
              v188 = v186[-1].n128_u32[0];
              v189 = v188 < v187;
              if (v188 == v187)
              {
                v189 = v186[-1].n128_u32[2] < v186->n128_u32[2];
              }

              if (v189)
              {
                v184 = v186;
              }

              else
              {
                v181 = v185;
              }
            }

            *v182 = *v184;
            v182 = v184;
          }

          while (v181 <= ((v13 - 2) >> 1));
          if (v184 == --a2)
          {
            *v184 = v241;
          }

          else
          {
            *v184 = *a2;
            *a2 = v241;
            v190 = (v184 - v12 + 16) >> 4;
            v191 = v190 < 2;
            v192 = v190 - 2;
            if (!v191)
            {
              v193 = v192 >> 1;
              v194 = &v12[v193];
              v195 = v184->n128_u32[0];
              v196 = v184->n128_u32[2];
              v197 = v194->n128_u32[0] < v184->n128_u32[0];
              if (v194->n128_u32[0] == v184->n128_u32[0])
              {
                v197 = v194->n128_u32[2] < v196;
              }

              if (v197)
              {
                v198 = v184->n128_i32[1];
                v199 = v184->n128_i32[3];
                do
                {
                  v200 = v184;
                  v184 = v194;
                  *v200 = *v194;
                  if (!v193)
                  {
                    break;
                  }

                  v193 = (v193 - 1) >> 1;
                  v194 = &v12[v193];
                  v201 = v194->n128_u32[0] < v195;
                  if (v194->n128_u32[0] == v195)
                  {
                    v201 = v194->n128_u32[2] < v196;
                  }
                }

                while (v201);
                v184->n128_u32[0] = v195;
                v184->n128_u32[1] = v198;
                v184->n128_u32[2] = v196;
                v184->n128_u32[3] = v199;
              }
            }
          }

          v191 = v13-- <= 2;
        }

        while (!v191);
      }

      return;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_u32[0];
    v16 = a2[-1].n128_u32[2];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u32[0];
      v18 = v14->n128_u32[2];
      v19 = v14->n128_u32[0] < v12->n128_u32[0];
      if (v14->n128_u32[0] == v12->n128_u32[0])
      {
        v19 = v18 < v12->n128_u32[2];
      }

      v20 = v16 < v18;
      v133 = v15 == v17;
      v21 = v15 < v17;
      if (v133)
      {
        v21 = v20;
      }

      if (v19)
      {
        if (v21)
        {
          v219 = *v12;
          *v12 = *v9;
          goto LABEL_40;
        }

        v225 = *v12;
        *v12 = *v14;
        *v14 = v225;
        v29 = a2[-1].n128_u32[0];
        v133 = v29 == v14->n128_u32[0];
        v30 = v29 < v14->n128_u32[0];
        if (v133)
        {
          v30 = a2[-1].n128_u32[2] < v14->n128_u32[2];
        }

        if (v30)
        {
          v219 = *v14;
          *v14 = *v9;
LABEL_40:
          *v9 = v219;
        }
      }

      else if (v21)
      {
        v221 = *v14;
        *v14 = *v9;
        *v9 = v221;
        v27 = v14->n128_u32[0] < v12->n128_u32[0];
        if (v14->n128_u32[0] == v12->n128_u32[0])
        {
          v27 = v14->n128_u32[2] < v12->n128_u32[2];
        }

        if (v27)
        {
          v222 = *v12;
          *v12 = *v14;
          *v14 = v222;
        }
      }

      v31 = v12 + 1;
      v32 = v12[1].n128_u32[0];
      v33 = v14 - 1;
      v34 = v14[-1].n128_u32[0];
      v35 = v14[-1].n128_u32[2];
      v36 = v35 < v12[1].n128_u32[2];
      v133 = v34 == v32;
      v37 = v34 < v32;
      if (!v133)
      {
        v36 = v37;
      }

      v38 = a2[-2].n128_u32[0];
      v39 = a2[-2].n128_u32[2] < v35;
      v133 = v38 == v34;
      v40 = v38 < v34;
      if (v133)
      {
        v40 = v39;
      }

      if (v36)
      {
        if (v40)
        {
          v41 = *v31;
          *v31 = *v10;
          goto LABEL_62;
        }

        v47 = *v31;
        *v31 = *v33;
        *v33 = v47;
        v48 = a2[-2].n128_u32[0];
        v133 = v48 == v33->n128_u32[0];
        v49 = v48 < v33->n128_u32[0];
        if (v133)
        {
          v49 = a2[-2].n128_u32[2] < v14[-1].n128_u32[2];
        }

        if (v49)
        {
          v228 = *v33;
          *v33 = *v10;
          v41 = v228;
LABEL_62:
          *v10 = v41;
        }
      }

      else if (v40)
      {
        v226 = *v33;
        *v33 = *v10;
        *v10 = v226;
        v42 = v12[1].n128_u32[0];
        v43 = v33->n128_u32[0] < v42;
        if (v33->n128_u32[0] == v42)
        {
          v43 = v14[-1].n128_u32[2] < v12[1].n128_u32[2];
        }

        if (v43)
        {
          v44 = *v31;
          *v31 = *v33;
          *v33 = v44;
        }
      }

      v50 = v12 + 2;
      v51 = v12[2].n128_u32[0];
      v52 = v14 + 1;
      v53 = v14[1].n128_u32[0];
      v54 = v14[1].n128_u32[2];
      v55 = v54 < v12[2].n128_u32[2];
      v133 = v53 == v51;
      v56 = v53 < v51;
      if (!v133)
      {
        v55 = v56;
      }

      v57 = a2[-3].n128_u32[0];
      v58 = a2[-3].n128_u32[2] < v54;
      v133 = v57 == v53;
      v59 = v57 < v53;
      if (v133)
      {
        v59 = v58;
      }

      if (v55)
      {
        if (v59)
        {
          v60 = *v50;
          *v50 = *v11;
          goto LABEL_79;
        }

        v64 = *v50;
        *v50 = *v52;
        *v52 = v64;
        v65 = a2[-3].n128_u32[0];
        v133 = v65 == v52->n128_u32[0];
        v66 = v65 < v52->n128_u32[0];
        if (v133)
        {
          v66 = a2[-3].n128_u32[2] < v14[1].n128_u32[2];
        }

        if (v66)
        {
          v230 = *v52;
          *v52 = *v11;
          v60 = v230;
LABEL_79:
          *v11 = v60;
        }
      }

      else if (v59)
      {
        v229 = *v52;
        *v52 = *v11;
        *v11 = v229;
        v61 = v12[2].n128_u32[0];
        v62 = v52->n128_u32[0] < v61;
        if (v52->n128_u32[0] == v61)
        {
          v62 = v14[1].n128_u32[2] < v12[2].n128_u32[2];
        }

        if (v62)
        {
          v63 = *v50;
          *v50 = *v52;
          *v52 = v63;
        }
      }

      v67 = v14->n128_u32[0];
      v68 = v14->n128_u32[2];
      v69 = v14->n128_u32[0] < v33->n128_u32[0];
      if (v14->n128_u32[0] == v33->n128_u32[0])
      {
        v69 = v68 < v14[-1].n128_u32[2];
      }

      v70 = v14[1].n128_u32[2] < v68;
      v133 = v52->n128_u32[0] == v67;
      v71 = v52->n128_u32[0] < v67;
      if (v133)
      {
        v71 = v70;
      }

      if (v69)
      {
        if (v71)
        {
          v231 = *v33;
          *v33 = *v52;
          goto LABEL_96;
        }

        v234 = *v33;
        *v33 = *v14;
        *v14 = v234;
        v73 = v52->n128_u32[0] < v14->n128_u32[0];
        if (v52->n128_u32[0] == v14->n128_u32[0])
        {
          v73 = v14[1].n128_u32[2] < v14->n128_u32[2];
        }

        if (v73)
        {
          v231 = *v14;
          *v14 = *v52;
LABEL_96:
          *v52 = v231;
        }
      }

      else if (v71)
      {
        v232 = *v14;
        *v14 = *v52;
        *v52 = v232;
        v72 = v14->n128_u32[0] < v33->n128_u32[0];
        if (v14->n128_u32[0] == v33->n128_u32[0])
        {
          v72 = v14->n128_u32[2] < v14[-1].n128_u32[2];
        }

        if (v72)
        {
          v233 = *v33;
          *v33 = *v14;
          *v14 = v233;
        }
      }

      v235 = *v12;
      *v12 = *v14;
      a5 = v235;
      *v14 = v235;
      goto LABEL_98;
    }

    v22 = v12->n128_u32[0];
    v23 = v12->n128_u32[2];
    v24 = v12->n128_u32[0] < v14->n128_u32[0];
    if (v12->n128_u32[0] == v14->n128_u32[0])
    {
      v24 = v23 < v14->n128_u32[2];
    }

    v25 = v16 < v23;
    v133 = v15 == v22;
    v26 = v15 < v22;
    if (v133)
    {
      v26 = v25;
    }

    if (v24)
    {
      if (v26)
      {
        v220 = *v14;
        *v14 = *v9;
LABEL_57:
        a5 = v220;
        *v9 = v220;
        goto LABEL_98;
      }

      v227 = *v14;
      *v14 = *v12;
      a5 = v227;
      *v12 = v227;
      v45 = a2[-1].n128_u32[0];
      v133 = v45 == v12->n128_u32[0];
      v46 = v45 < v12->n128_u32[0];
      if (v133)
      {
        v46 = a2[-1].n128_u32[2] < v12->n128_u32[2];
      }

      if (v46)
      {
        v220 = *v12;
        *v12 = *v9;
        goto LABEL_57;
      }
    }

    else if (v26)
    {
      v223 = *v12;
      *v12 = *v9;
      a5 = v223;
      *v9 = v223;
      v28 = v12->n128_u32[0] < v14->n128_u32[0];
      if (v12->n128_u32[0] == v14->n128_u32[0])
      {
        v28 = v12->n128_u32[2] < v14->n128_u32[2];
      }

      if (v28)
      {
        v224 = *v14;
        *v14 = *v12;
        a5 = v224;
        *v12 = v224;
      }
    }

LABEL_98:
    --a3;
    v74 = v12->n128_u32[0];
    if (a4)
    {
      v75 = v12->n128_u32[2];
      goto LABEL_103;
    }

    v76 = v12[-1].n128_u32[0];
    v75 = v12->n128_u32[2];
    v133 = v76 == v74;
    v77 = v76 < v74;
    if (v133)
    {
      v77 = v12[-1].n128_u32[2] < v75;
    }

    if (v77)
    {
LABEL_103:
      v78 = 0;
      v79 = v12->n128_u32[1];
      v80 = v12->n128_u32[3];
      do
      {
        v81 = v12[v78 + 1].n128_u32[0];
        v82 = v12[v78 + 1].n128_u32[2] < v75;
        v133 = v81 == v74;
        v83 = v81 < v74;
        if (!v133)
        {
          v82 = v83;
        }

        ++v78;
      }

      while (v82);
      v84 = &v12[v78];
      v85 = a2;
      if (v78 == 1)
      {
        v85 = a2;
        do
        {
          if (v84 >= v85)
          {
            break;
          }

          v88 = v85[-1].n128_u32[0];
          --v85;
          v89 = v88 < v74;
          if (v88 == v74)
          {
            v89 = v85->n128_u32[2] < v75;
          }
        }

        while (!v89);
      }

      else
      {
        do
        {
          v86 = v85[-1].n128_u32[0];
          --v85;
          v87 = v86 < v74;
          if (v86 == v74)
          {
            v87 = v85->n128_u32[2] < v75;
          }
        }

        while (!v87);
      }

      v12 = v84;
      if (v84 < v85)
      {
        v90 = v85;
        do
        {
          v236 = *v12;
          *v12 = *v90;
          a5 = v236;
          *v90 = v236;
          do
          {
            v91 = v12[1].n128_u32[0];
            ++v12;
            v92 = v91 < v74;
            if (v91 == v74)
            {
              v92 = v12->n128_u32[2] < v75;
            }
          }

          while (v92);
          do
          {
            v93 = v90[-1].n128_u32[0];
            --v90;
            v94 = v93 < v74;
            if (v93 == v74)
            {
              v94 = v90->n128_u32[2] < v75;
            }
          }

          while (!v94);
        }

        while (v12 < v90);
      }

      v95 = v12 - 1;
      if (&v12[-1] != result)
      {
        a5 = *v95;
        *result = *v95;
      }

      v12[-1].n128_u32[0] = v74;
      v12[-1].n128_u32[1] = v79;
      v12[-1].n128_u32[2] = v75;
      v12[-1].n128_u32[3] = v80;
      if (v84 < v85)
      {
        goto LABEL_132;
      }

      v96 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(result, v12 - 1, a5);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(v12, a2, v97))
      {
        a2 = v12 - 1;
        if (!v96)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v96)
      {
LABEL_132:
        std::__introsort<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,false>(result, &v12[-1], a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      v98 = a2[-1].n128_u32[0];
      v133 = v74 == v98;
      v99 = v74 < v98;
      if (v133)
      {
        v99 = v75 < a2[-1].n128_u32[2];
      }

      if (v99)
      {
        do
        {
          v100 = v12[1].n128_u32[0];
          ++v12;
          v101 = v74 < v100;
          if (v74 == v100)
          {
            v101 = v75 < v12->n128_u32[2];
          }
        }

        while (!v101);
      }

      else
      {
        v102 = v12 + 1;
        do
        {
          v12 = v102;
          if (v102 >= a2)
          {
            break;
          }

          v103 = v102->n128_u32[0];
          v104 = v75 < v12->n128_u32[2];
          v133 = v74 == v103;
          v105 = v74 < v103;
          if (!v133)
          {
            v104 = v105;
          }

          v102 = v12 + 1;
        }

        while (!v104);
      }

      v106 = a2;
      if (v12 < a2)
      {
        v106 = a2;
        do
        {
          v107 = v106[-1].n128_u32[0];
          --v106;
          v108 = v74 < v107;
          if (v74 == v107)
          {
            v108 = v75 < v106->n128_u32[2];
          }
        }

        while (v108);
      }

      v109 = result->n128_u32[1];
      v110 = result->n128_u32[3];
      while (v12 < v106)
      {
        v237 = *v12;
        *v12 = *v106;
        a5 = v237;
        *v106 = v237;
        do
        {
          v111 = v12[1].n128_u32[0];
          ++v12;
          v112 = v74 < v111;
          if (v74 == v111)
          {
            v112 = v75 < v12->n128_u32[2];
          }
        }

        while (!v112);
        do
        {
          v113 = v106[-1].n128_u32[0];
          --v106;
          v114 = v74 < v113;
          if (v74 == v113)
          {
            v114 = v75 < v106->n128_u32[2];
          }
        }

        while (v114);
      }

      v115 = v12 - 1;
      if (&v12[-1] != result)
      {
        a5 = *v115;
        *result = *v115;
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v74;
      v12[-1].n128_u32[1] = v109;
      v12[-1].n128_u32[2] = v75;
      v12[-1].n128_u32[3] = v110;
    }
  }

  v135 = v12 + 1;
  v136 = v12[1].n128_u32[0];
  v137 = &a2[-1];
  v138 = a2[-1].n128_u32[0];
  v139 = v12[1].n128_u32[2];
  v140 = v136 < v12->n128_u32[0];
  if (v136 == v12->n128_u32[0])
  {
    v140 = v139 < v12->n128_u32[2];
  }

  v141 = a2[-1].n128_u32[2] < v139;
  v133 = v138 == v136;
  v142 = v138 < v136;
  if (v133)
  {
    v142 = v141;
  }

  if (v140)
  {
    if (v142)
    {
      v240 = *v12;
      *v12 = *v137;
      v143 = v240;
    }

    else
    {
      v243 = *v12;
      *v12 = *v135;
      *v135 = v243;
      v216 = a2[-1].n128_u32[0];
      v217 = v12[1].n128_u32[0];
      v133 = v216 == v217;
      v218 = v216 < v217;
      if (v133)
      {
        v218 = a2[-1].n128_u32[2] < v12[1].n128_u32[2];
      }

      if (!v218)
      {
        return;
      }

      v143 = *v135;
      *v135 = *v137;
    }

    *v137 = v143;
    return;
  }

  if (v142)
  {
    v202 = *v135;
    *v135 = *v137;
    *v137 = v202;
    v203 = v12[1].n128_u32[0];
    v133 = v203 == v12->n128_u32[0];
    v204 = v203 < v12->n128_u32[0];
    if (v133)
    {
      v204 = v12[1].n128_u32[2] < v12->n128_u32[2];
    }

    if (v204)
    {
      v242 = *v12;
      *v12 = *v135;
      *v135 = v242;
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u32[0];
  v6 = a2->n128_u32[2];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  if (a2->n128_u32[0] == a1->n128_u32[0])
  {
    v7 = v6 < a1->n128_u32[2];
  }

  v8 = a3->n128_u32[2] < v6;
  v9 = a3->n128_u32[0] == v5;
  v10 = a3->n128_u32[0] < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v12 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v12 = a3->n128_u32[2] < a2->n128_u32[2];
    }

    if (v12)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v11 = a2->n128_u32[0] < a1->n128_u32[0];
    if (a2->n128_u32[0] == a1->n128_u32[0])
    {
      v11 = a2->n128_u32[2] < a1->n128_u32[2];
    }

    if (v11)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v13 = a4->n128_u32[0] < a3->n128_u32[0];
  if (a4->n128_u32[0] == a3->n128_u32[0])
  {
    v13 = a4->n128_u32[2] < a3->n128_u32[2];
  }

  if (v13)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v14 = a3->n128_u32[2] < a2->n128_u32[2];
    }

    if (v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v15 = a2->n128_u32[0] < a1->n128_u32[0];
      if (a2->n128_u32[0] == a1->n128_u32[0])
      {
        v15 = a2->n128_u32[2] < a1->n128_u32[2];
      }

      if (v15)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v27 = a1 + 1;
        v28 = a1[1].n128_u32[0];
        v29 = a2 - 1;
        v30 = a2[-1].n128_u32[0];
        v31 = a1[1].n128_u32[2];
        v32 = v28 < a1->n128_u32[0];
        if (v28 == a1->n128_u32[0])
        {
          v32 = v31 < a1->n128_u32[2];
        }

        v33 = a2[-1].n128_u32[2] < v31;
        v8 = v30 == v28;
        v34 = v30 < v28;
        if (v8)
        {
          v34 = v33;
        }

        if (!v32)
        {
          if (v34)
          {
            v48 = *v27;
            *v27 = *v29;
            *v29 = v48;
            v49 = a1[1].n128_u32[0];
            v8 = v49 == a1->n128_u32[0];
            v50 = v49 < a1->n128_u32[0];
            if (v8)
            {
              v50 = a1[1].n128_u32[2] < a1->n128_u32[2];
            }

            if (v50)
            {
              v51 = *a1;
              *a1 = *v27;
              *v27 = v51;
            }
          }

          return 1;
        }

        if (v34)
        {
          v35 = *a1;
          *a1 = *v29;
        }

        else
        {
          v57 = *a1;
          *a1 = *v27;
          *v27 = v57;
          v58 = a2[-1].n128_u32[0];
          v59 = a1[1].n128_u32[0];
          v8 = v58 == v59;
          v60 = v58 < v59;
          if (v8)
          {
            v60 = a2[-1].n128_u32[2] < a1[1].n128_u32[2];
          }

          if (!v60)
          {
            return 1;
          }

          v35 = *v27;
          *v27 = *v29;
        }

        *v29 = v35;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::MaterialTechniqueVariant::resolveConstantArgument(re::TypedArgument const&,re::ConstantTableCollection const&,re::Slice<re::ConstantLayer> const&,re::Slice<re::ConstantLayer> const&,re::ConstantResolution &,BOOL,unsigned long long)::$_1 &,re::FillCommand *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v12 = a2[-1].n128_u32[0];
        v11 = a2 - 1;
        v13 = a1[3].n128_u32[0];
        v14 = v12 < v13;
        if (v12 == v13)
        {
          v14 = v11->n128_u32[2] < a1[3].n128_u32[2];
        }

        if (v14)
        {
          v15 = a1[3];
          a1[3] = *v11;
          *v11 = v15;
          v16 = a1[3].n128_u32[0];
          v17 = a1[2].n128_u32[0];
          v8 = v16 == v17;
          v18 = v16 < v17;
          if (v8)
          {
            v18 = a1[3].n128_u32[2] < a1[2].n128_u32[2];
          }

          if (v18)
          {
            v19 = a1[2];
            a1[2] = a1[3];
            a1[3] = v19;
            v20 = a1[2].n128_u32[0];
            v21 = a1[1].n128_u32[0];
            v8 = v20 == v21;
            v22 = v20 < v21;
            if (v8)
            {
              v22 = a1[2].n128_u32[2] < a1[1].n128_u32[2];
            }

            if (v22)
            {
              v23 = a1[1];
              a1[1] = a1[2];
              a1[2] = v23;
              v24 = a1[1].n128_u32[0];
              v8 = v24 == a1->n128_u32[0];
              v25 = v24 < a1->n128_u32[0];
              if (v8)
              {
                v25 = a1[1].n128_u32[2] < a1->n128_u32[2];
              }

              if (v25)
              {
                v26 = *a1;
                *a1 = a1[1];
                a1[1] = v26;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v7 = a2 - 1;
    v6 = a2[-1].n128_u32[0];
    v8 = v6 == a1->n128_u32[0];
    v9 = v6 < a1->n128_u32[0];
    if (v8)
    {
      v9 = a2[-1].n128_u32[2] < a1->n128_u32[2];
    }

    if (v9)
    {
      v10 = *a1;
      *a1 = *v7;
      *v7 = v10;
    }

    return 1;
  }

LABEL_31:
  v36 = a1 + 2;
  v37 = a1[2].n128_u32[0];
  v38 = a1 + 1;
  v39 = a1[1].n128_u32[0];
  v40 = a1->n128_u32[0];
  v41 = a1[1].n128_u32[2];
  v42 = a1->n128_u32[2];
  v43 = v39 < a1->n128_u32[0];
  if (v39 == a1->n128_u32[0])
  {
    v43 = v41 < v42;
  }

  v44 = a1[2].n128_u32[2];
  v45 = v44 < v41;
  v8 = v37 == v39;
  v46 = v37 < v39;
  if (v8)
  {
    v46 = v45;
  }

  if (v43)
  {
    if (v46)
    {
      v47 = *a1;
      *a1 = *v36;
LABEL_58:
      *v36 = v47;
      goto LABEL_59;
    }

    v61 = *a1;
    *a1 = *v38;
    *v38 = v61;
    v62 = a1[1].n128_u32[0];
    v8 = v37 == v62;
    v63 = v37 < v62;
    if (v8)
    {
      v63 = v44 < a1[1].n128_u32[2];
    }

    if (v63)
    {
      v47 = *v38;
      *v38 = *v36;
      goto LABEL_58;
    }
  }

  else if (v46)
  {
    v52 = *v38;
    *v38 = *v36;
    *v36 = v52;
    v53 = a1[1].n128_u32[0];
    v54 = a1[1].n128_u32[2] < v42;
    v8 = v53 == v40;
    v55 = v53 < v40;
    if (v8)
    {
      v55 = v54;
    }

    if (v55)
    {
      v56 = *a1;
      *a1 = *v38;
      *v38 = v56;
    }
  }

LABEL_59:
  v64 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v65 = 0;
  v66 = 0;
  while (1)
  {
    v67 = v64->n128_u32[0];
    v68 = v36->n128_u32[0];
    v69 = v64->n128_u32[2];
    v70 = v69 < v36->n128_u32[2];
    v8 = v64->n128_u32[0] == v68;
    v71 = v64->n128_u32[0] < v68;
    if (!v8)
    {
      v70 = v71;
    }

    if (v70)
    {
      v72 = v64->n128_u32[1];
      v73 = v64->n128_u32[3];
      v74 = v65;
      while (1)
      {
        v75 = a1 + v74;
        *(a1 + v74 + 48) = *(a1 + v74 + 32);
        if (v74 == -32)
        {
          break;
        }

        v76 = *(v75 + 4);
        v77 = v69 < *(v75 + 6);
        v8 = v67 == v76;
        v78 = v67 < v76;
        if (!v8)
        {
          v77 = v78;
        }

        v74 -= 16;
        if (!v77)
        {
          v79 = (a1 + v74 + 48);
          goto LABEL_71;
        }
      }

      v79 = a1;
LABEL_71:
      v79->n128_u32[0] = v67;
      v79->n128_u32[1] = v72;
      v79->n128_u32[2] = v69;
      v79->n128_u32[3] = v73;
      if (++v66 == 8)
      {
        return &v64[1] == a2;
      }
    }

    v36 = v64;
    v65 += 16;
    if (++v64 == a2)
    {
      return 1;
    }
  }
}

void *re::DynamicArray<re::ConstantResolution>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ConstantResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v24, v26);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v25, v27);
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
        v10 = v8 + 112 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8 + 8;
          v14 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v14;
          *(v8 + 16) = 0;
          v15 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v15;
          v16 = v11[5];
          v17 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v16;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[11] = 0;
          v11[8] = 0;
          v11[9] = 0;
          v11[7] = 0;
          *(v11 + 20) = 0;
          v19 = *(v8 + 56);
          v18 = v8 + 56;
          v11[6] = v17;
          v20 = *(v18 + 8);
          v11[7] = v19;
          v11[8] = v20;
          *v18 = 0;
          *(v18 + 8) = 0;
          v21 = v11[9];
          v11[9] = *(v18 + 16);
          *(v18 + 16) = v21;
          v22 = v11[11];
          v11[11] = *(v18 + 32);
          *(v18 + 32) = v22;
          ++*(v18 + 24);
          ++*(v11 + 20);
          v23 = *(v18 + 40);
          *(v11 + 26) = *(v18 + 48);
          v11[12] = v23;
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v13);
          v11 += 14;
          v8 = v18 + 56;
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

unint64_t re::DynamicInlineArray<re::SamplerLayer,12ul>::ensureCapacity(unint64_t result, uint64_t a2)
{
  if (result > 0xB)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  return result;
}

double re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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

        v4 += 24;
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

uint64_t re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                *(v20 + 8) = *v17;
                v21 = *(v17 + 8);
                *(v20 + 20) = *(v17 + 12);
                *(v20 + 16) = v21;
              }

              v17 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::WeakStringID,re::TextureBlockResolution,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 24 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 24 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 24 * v4;
}

void **re::DynamicArray<re::TextureResolution>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::TextureResolution>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::ConstantResolution>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::ConstantResolution>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(*(a2 + 32), *(a2 + 32) + 112 * a1[2], a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + 112 * v4;
      v12 = a1[4];
      v13 = 112 * v9;
      do
      {
        v14 = v10 + v13;
        v15 = v12 + v13;
        *(v12 + v13) = *(v10 + v13);
        re::DynamicArray<re::GeomCell4>::DynamicArray(v12 + v13 + 8, (v10 + v13 + 8));
        *(v15 + 48) = *(v10 + v13 + 48);
        result = re::DynamicArray<re::GeomCell4>::DynamicArray(v12 + v13 + 56, (v10 + v13 + 56));
        v16 = *(v10 + v13 + 96);
        *(v15 + 104) = *(v10 + v13 + 104);
        *(v15 + 96) = v16;
        v10 += 112;
        v12 += 112;
      }

      while (v14 + 112 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(*(a2 + 32), *(a2 + 32) + 112 * v4, a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = -112 * v4 + 112 * v6;
      v8 = 112 * v4 + a1[4] + 56;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v8);
        result = re::DynamicArray<unsigned long>::deinit(v8 - 48);
        v8 += 112;
        v7 -= 112;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::ConstantResolution *,re::ConstantResolution *,re::ConstantResolution *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 56;
    v5 = result + 56;
    do
    {
      *(v4 - 56) = *(v5 - 56);
      re::DynamicArray<re::GeomCell4>::operator=(v4 - 48, (v5 - 48));
      *(v4 - 8) = *(v5 - 8);
      result = re::DynamicArray<re::GeomCell4>::operator=(v4, v5);
      v6 = *(v5 + 40);
      *(v4 + 48) = *(v5 + 48);
      *(v4 + 40) = v6;
      v4 += 112;
      v7 = v5 + 56;
      v5 += 112;
    }

    while (v7 != a2);
  }

  return result;
}

void *re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ArgumentBufferResolution>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v11 = 144 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v12[4] = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 0;
          *(v12 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v12 = *(v8 + v10);
          v12[1] = v14;
          *v13 = 0;
          *(v13 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v12[2] = *(v8 + v10 + 16);
          *(v13 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v12[4] = *(v8 + v10 + 32);
          *(v13 + 32) = v16;
          *(v13 + 24) = *(v8 + v10 + 24) + 1;
          *(v12 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v17 = *(v8 + v10 + 48);
          v12[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v12[6] = v17;
          *(v13 + 48) = 0;
          v18 = v7[v10 / 8 + 7];
          v12[7] = *(v8 + v10 + 56);
          *(v13 + 56) = v18;
          v19 = v7[v10 / 8 + 9];
          v12[9] = *(v8 + v10 + 72);
          *(v13 + 72) = v19;
          *(v13 + 64) = *(v8 + v10 + 64) + 1;
          *(v12 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          v12[14] = 0;
          v12[11] = 0;
          v12[12] = 0;
          v12[10] = 0;
          *(v12 + 26) = 0;
          v20 = *(v8 + v10 + 88);
          v12[10] = *(v8 + v10 + 80);
          *(v8 + v10 + 80) = 0;
          v12[11] = v20;
          *(v13 + 88) = 0;
          v21 = v7[v10 / 8 + 12];
          v12[12] = *(v8 + v10 + 96);
          *(v13 + 96) = v21;
          v22 = v7[v10 / 8 + 14];
          v12[14] = *(v8 + v10 + 112);
          *(v13 + 112) = v22;
          *(v13 + 104) = *(v8 + v10 + 104) + 1;
          *(v12 + 26) = LODWORD(v7[v10 / 8 + 13]) + 1;
          v12[15] = *(v8 + v10 + 120);
          *(v13 + 120) = 0;
          v23 = *(v8 + v10 + 128);
          *(v12 + 68) = *(v8 + v10 + 136);
          v12[16] = v23;
          v24 = *(v8 + v10 + 120);
          if (v24)
          {

            *(v13 + 120) = 0;
          }

          re::DynamicArray<re::ConstantResolution>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 144;
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

uint64_t re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v27, v9, v8);
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
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::TechniqueResolutions<re::AttributeResolution> *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *v18 % *(a1 + 24), *v18);
                v20 = v18[1];
                *(v19 + 8) = *v18;
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v27);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 24 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 24 * v4;
}

void *re::allocInfo_MeshPartFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA520))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA960, "MeshPartFlags");
    __cxa_guard_release(&qword_1EE1BA520);
  }

  return &unk_1EE1BA960;
}

void re::initInfo_MeshPartFlags(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0xDD4C8A65E2975D8ELL;
  v18[1] = "MeshPartFlags";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1BA528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA528))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "doubleSided";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA608 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::WindingOrder>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "windingOrder";
    *(v13 + 16) = &qword_1EE1BA660;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x200000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1BA610 = v13;
    v14 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::OccupancyBehavior>>::get(v14, v15);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "occupancyBehavior";
    *(v16 + 16) = &qword_1EE1BA6A0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x400000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BA618 = v16;
    __cxa_guard_release(&qword_1EE1BA528);
  }

  *(this + 2) = 0x600000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BA608;
  *(this + 9) = re::internal::defaultConstruct<re::MeshPartFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshPartFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshPartFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshPartFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void re::IntrospectionInfo<re::Optional<re::WindingOrder>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA598, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E4 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4F0))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "CW";
      qword_1EE1BA5C0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "CCW";
      qword_1EE1BA5C8 = v37;
      __cxa_guard_release(&qword_1EE1BA4F0);
    }

    if ((atomic_load_explicit(&qword_1EE1BA4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA4F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA7A0, "WindingOrder", 1, 1, 1, 1);
      qword_1EE1BA7A0 = &unk_1F5D0C658;
      qword_1EE1BA7E0 = &re::introspect_WindingOrder(BOOL)::enumTable;
      dword_1EE1BA7B0 = 9;
      __cxa_guard_release(&qword_1EE1BA4F8);
    }

    if (_MergedGlobals_470)
    {
      goto LABEL_43;
    }

    _MergedGlobals_470 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA7A0, a2);
    *&v42 = 0x3FD39B1D38223168;
    *(&v42 + 1) = "WindingOrder";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v43;
    v5 = v44[0];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA7E0;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(&v43, &v42, 1, 1, &v45);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v43, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v43, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v43, v26);
      xmmword_1EE1BA7C0 = v47;
      if (v42)
      {
        if (v42)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E4 & 1) == 0)
      {
        byte_1EE1BA4E4 = 1;
        v28 = dword_1EE1BA7B8;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA660, 0);
        qword_1EE1BA670 = 0x20000000DLL;
        dword_1EE1BA678 = v28;
        word_1EE1BA67C = 0;
        *&xmmword_1EE1BA680 = 0;
        *(&xmmword_1EE1BA680 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA690 = &qword_1EE1BA7A0;
        unk_1EE1BA698 = 0;
        qword_1EE1BA660 = &unk_1F5D09330;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&v43, &qword_1EE1BA660);
        if (v44[0])
        {
          v31 = v44[1];
        }

        else
        {
          v31 = v44 + 1;
        }

        if (v43 && (v44[0] & 1) != 0)
        {
          (*(*v43 + 40))();
        }

        v40 = xmmword_1EE1BA7C0;
        if (*&v47.var0)
        {
          v39 = v47;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v45);
          re::TypeBuilder::TypeBuilder(&v43, &v45);
          v42 = v40;
          re::TypeBuilder::beginOptionalType(&v43, &v41, 2uLL, 1uLL, &v42);
          re::TypeBuilder::setOptionalAccessors(&v43, re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v43, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v45);
        }

        xmmword_1EE1BA680 = v39;
        if (v41)
        {
          if (v41)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v42 + 1));
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v38);
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA598))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA660);
      qword_1EE1BA660 = &unk_1F5D09330;
      __cxa_guard_release(&qword_1EE1BA598);
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::OccupancyBehavior>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E5 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA588, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA588))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Default";
      qword_1EE1BA620 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 2;
      *(v37 + 16) = "OptIn";
      qword_1EE1BA628 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 1;
      *(v39 + 16) = "OptOut";
      qword_1EE1BA630 = v39;
      __cxa_guard_release(&qword_1EE1BA588);
    }

    if ((atomic_load_explicit(&qword_1EE1BA590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA590))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA878, "OccupancyBehavior", 1, 1, 1, 1);
      qword_1EE1BA878 = &unk_1F5D0C658;
      qword_1EE1BA8B8 = &re::introspect_OccupancyBehavior(BOOL)::enumTable;
      dword_1EE1BA888 = 9;
      __cxa_guard_release(&qword_1EE1BA590);
    }

    if (byte_1EE1BA4E3)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E3 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA878, a2);
    *&v44 = 0x8C097A668536533ELL;
    *(&v44 + 1) = "OccupancyBehavior";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v45;
    v5 = v46[0];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA8B8;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(&v45, &v44, 1, 1, &v47);
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
            *&v49.var0 = 2 * v11;
            v49.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v45, v15, &v49);
            if (*&v49.var0)
            {
              if (*&v49.var0)
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
              *&v49.var0 = 2 * v20;
              v49.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v45, v24, &v49);
              if (*&v49.var0)
              {
                if (*&v49.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v45, v26);
      xmmword_1EE1BA898 = v49;
      if (v44)
      {
        if (v44)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E5 & 1) == 0)
      {
        byte_1EE1BA4E5 = 1;
        v28 = dword_1EE1BA890;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA6A0, 0);
        qword_1EE1BA6B0 = 0x20000000DLL;
        dword_1EE1BA6B8 = v28;
        word_1EE1BA6BC = 0;
        *&xmmword_1EE1BA6C0 = 0;
        *(&xmmword_1EE1BA6C0 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA6D0 = &qword_1EE1BA878;
        unk_1EE1BA6D8 = 0;
        qword_1EE1BA6A0 = &unk_1F5D093B0;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&v45, &qword_1EE1BA6A0);
        if (v46[0])
        {
          v31 = v46[1];
        }

        else
        {
          v31 = v46 + 1;
        }

        if (v45 && (v46[0] & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v42 = xmmword_1EE1BA898;
        if (*&v49.var0)
        {
          v41 = v49;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v47);
          re::TypeBuilder::TypeBuilder(&v45, &v47);
          v44 = v42;
          re::TypeBuilder::beginOptionalType(&v45, &v43, 2uLL, 1uLL, &v44);
          re::TypeBuilder::setOptionalAccessors(&v45, re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v45, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v47);
        }

        xmmword_1EE1BA6C0 = v41;
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v44 + 1));
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5A0))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA6A0);
      qword_1EE1BA6A0 = &unk_1F5D093B0;
      __cxa_guard_release(&qword_1EE1BA5A0);
    }
  }
}

void re::internal::defaultConstruct<re::MeshPartFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MeshPartFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  return result;
}

void *re::allocInfo_OverrideMeshPartFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA538))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA9F0, "OverrideMeshPartFlags");
    __cxa_guard_release(&qword_1EE1BA538);
  }

  return &unk_1EE1BA9F0;
}

void re::initInfo_OverrideMeshPartFlags(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x12E7D947D9ECDCB6;
  v19[1] = "OverrideMeshPartFlags";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1BA540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA540))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE1BA530;
    if (!qword_1EE1BA530)
    {
      v9 = re::allocInfo_MeshPartFlags(v7);
      qword_1EE1BA530 = v9;
      re::initInfo_MeshPartFlags(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "MeshPartFlags";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1BA5E0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "overrideWindingOrderToReverse";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x600000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1BA5E8 = v17;
    __cxa_guard_release(&qword_1EE1BA540);
  }

  *(this + 2) = 0x700000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BA5E0;
  *(this + 9) = re::internal::defaultConstruct<re::OverrideMeshPartFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::OverrideMeshPartFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::OverrideMeshPartFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::OverrideMeshPartFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::internal::defaultConstruct<re::OverrideMeshPartFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::OverrideMeshPartFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  return result;
}

void *re::allocInfo_MeshRuntimeFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA550))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAA80, "MeshRuntimeFlags");
    __cxa_guard_release(&qword_1EE1BA550);
  }

  return &unk_1EE1BAA80;
}

void re::initInfo_MeshRuntimeFlags(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xCFFA554448271078;
  v27[1] = "MeshRuntimeFlags";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1BA558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA558))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "enableRendering";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA638 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "enableCulling";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BA640 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "castsShadows";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BA648 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "enablePortalCrossing";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x600000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BA650 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<short>>::get(v23, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "techniqueQualityLevelBias";
    *(v25 + 16) = &qword_1EE1BA6E0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x800000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1BA658 = v25;
    __cxa_guard_release(&qword_1EE1BA558);
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 2;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BA638;
  *(this + 9) = re::internal::defaultConstruct<re::MeshRuntimeFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshRuntimeFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshRuntimeFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshRuntimeFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void re::IntrospectionInfo<re::Optional<short>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA5A8))
  {
    re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA6E0);
    qword_1EE1BA6E0 = &unk_1F5D09430;
    __cxa_guard_release(&qword_1EE1BA5A8);
  }

  if ((byte_1EE1BA4E6 & 1) == 0)
  {
    v2 = re::introspect_short(1, a2);
    if ((byte_1EE1BA4E6 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1BA4E6 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1BA6E0, 0);
      qword_1EE1BA6F0 = 0x40000000DLL;
      dword_1EE1BA6F8 = v4;
      word_1EE1BA6FC = 0;
      *&xmmword_1EE1BA700 = 0;
      *(&xmmword_1EE1BA700 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BA710 = v3;
      qword_1EE1BA718 = 0;
      qword_1EE1BA6E0 = &unk_1F5D09430;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1BA6E0);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginOptionalType(&v14, &v12, 4uLL, 2uLL, &v13);
        re::TypeBuilder::setOptionalAccessors(&v14, re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1BA700 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshRuntimeFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
  a3[8] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MeshRuntimeFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  result[8] = 0;
  return result;
}

void *re::allocInfo_MaterialRenderFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA568))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BAB10, "MaterialRenderFlags");
    __cxa_guard_release(&qword_1EE1BA568);
  }

  return &unk_1EE1BAB10;
}

void re::initInfo_MaterialRenderFlags(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0xB194D3BA54A4CD94;
  v46[1] = "MaterialRenderFlags";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1BA570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA570))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "doubleSided";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA8C0 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::CullingMode>>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "cullMode";
    *(v13 + 16) = &qword_1EE1BA720;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x200000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1BA8C8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "visibleCamera0";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x600000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1BA8D0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "visibleCamera1";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1BA8D8 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::Optional<re::TriangleFillModeInternal>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "triangleFillMode";
    *(v24 + 16) = &qword_1EE1BA760;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x400000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BA8E0 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "writesDepth";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0xA00000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BA8E8 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "readsDepth";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0xC00000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BA8F0 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "needsPassthroughBlur";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0xE00000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1BA8F8 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "needsVCABlur";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1000000009;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1BA900 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "needsVisualDepthTexture";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x120000000ALL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1BA908 = v44;
    __cxa_guard_release(&qword_1EE1BA570);
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 1;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BA8C0;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialRenderFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialRenderFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialRenderFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialRenderFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v45 = v47;
}

void re::IntrospectionInfo<re::Optional<re::CullingMode>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5B0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E7 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA500))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "None";
      qword_1EE1BA5F0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Front";
      qword_1EE1BA5F8 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 2;
      *(v39 + 16) = "Back";
      qword_1EE1BA600 = v39;
      __cxa_guard_release(&qword_1EE1BA500);
    }

    if ((atomic_load_explicit(&qword_1EE1BA508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA508))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA7E8, "CullingMode", 1, 1, 1, 1);
      qword_1EE1BA7E8 = &unk_1F5D0C658;
      qword_1EE1BA828 = &re::introspect_CullingMode(BOOL)::enumTable;
      dword_1EE1BA7F8 = 9;
      __cxa_guard_release(&qword_1EE1BA508);
    }

    if (byte_1EE1BA4E1)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA7E8, a2);
    *&v44 = 0x19CDA08E27985A6;
    *(&v44 + 1) = "CullingMode";
    v47 = 0x31CD534126;
    v48 = "uint8_t";
    v4 = v45;
    v5 = v46[0];
    if (v47)
    {
      if (v47)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA828;
      v47 = v4;
      v48 = v5;
      re::TypeBuilder::beginEnumType(&v45, &v44, 1, 1, &v47);
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
            *&v49.var0 = 2 * v11;
            v49.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v45, v15, &v49);
            if (*&v49.var0)
            {
              if (*&v49.var0)
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
              *&v49.var0 = 2 * v20;
              v49.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v45, v24, &v49);
              if (*&v49.var0)
              {
                if (*&v49.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v45, v26);
      xmmword_1EE1BA808 = v49;
      if (v44)
      {
        if (v44)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E7 & 1) == 0)
      {
        byte_1EE1BA4E7 = 1;
        v28 = dword_1EE1BA800;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA720, 0);
        qword_1EE1BA730 = 0x20000000DLL;
        dword_1EE1BA738 = v28;
        word_1EE1BA73C = 0;
        *&xmmword_1EE1BA740 = 0;
        *(&xmmword_1EE1BA740 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA750 = &qword_1EE1BA7E8;
        qword_1EE1BA758 = 0;
        qword_1EE1BA720 = &unk_1F5D094B0;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&v45, &qword_1EE1BA720);
        if (v46[0])
        {
          v31 = v46[1];
        }

        else
        {
          v31 = v46 + 1;
        }

        if (v45 && (v46[0] & 1) != 0)
        {
          (*(*v45 + 40))();
        }

        v42 = xmmword_1EE1BA808;
        if (*&v49.var0)
        {
          v41 = v49;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v47);
          re::TypeBuilder::TypeBuilder(&v45, &v47);
          v44 = v42;
          re::TypeBuilder::beginOptionalType(&v45, &v43, 2uLL, 1uLL, &v44);
          re::TypeBuilder::setOptionalAccessors(&v45, re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v45, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v47);
        }

        xmmword_1EE1BA740 = v41;
        if (v43)
        {
          if (v43)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v44 + 1));
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5B0))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA720);
      qword_1EE1BA720 = &unk_1F5D094B0;
      __cxa_guard_release(&qword_1EE1BA5B0);
    }
  }
}

void re::IntrospectionInfo<re::Optional<re::TriangleFillModeInternal>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA5B8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_58;
  }

  while ((byte_1EE1BA4E8 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BA510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA510))
    {
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 0;
      *(v35 + 16) = "Fill";
      qword_1EE1BA5D0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 1;
      *(v37 + 16) = "Line";
      qword_1EE1BA5D8 = v37;
      __cxa_guard_release(&qword_1EE1BA510);
    }

    if ((atomic_load_explicit(&qword_1EE1BA518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA518))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA830, "TriangleFillModeInternal", 1, 1, 1, 1);
      qword_1EE1BA830 = &unk_1F5D0C658;
      qword_1EE1BA870 = &re::introspect_TriangleFillModeInternal(BOOL)::enumTable;
      dword_1EE1BA840 = 9;
      __cxa_guard_release(&qword_1EE1BA518);
    }

    if (byte_1EE1BA4E2)
    {
      goto LABEL_43;
    }

    byte_1EE1BA4E2 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA830, a2);
    *&v42 = 0xF8D525F22FD521D6;
    *(&v42 + 1) = "TriangleFillModeInternal";
    v45 = 0x31CD534126;
    v46 = "uint8_t";
    v4 = v43;
    v5 = v44[0];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA870;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(&v43, &v42, 1, 1, &v45);
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
            *&v47.var0 = 2 * v11;
            v47.var1 = v10;
            re::TypeBuilder::addEnumConstant(&v43, v15, &v47);
            if (*&v47.var0)
            {
              if (*&v47.var0)
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
              *&v47.var0 = 2 * v20;
              v47.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(&v43, v24, &v47);
              if (*&v47.var0)
              {
                if (*&v47.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(&v43, v26);
      xmmword_1EE1BA850 = v47;
      if (v42)
      {
        if (v42)
        {
        }
      }

LABEL_43:
      if ((byte_1EE1BA4E8 & 1) == 0)
      {
        byte_1EE1BA4E8 = 1;
        v28 = dword_1EE1BA848;
        ArcSharedObject::ArcSharedObject(&qword_1EE1BA760, 0);
        qword_1EE1BA770 = 0x20000000DLL;
        dword_1EE1BA778 = v28;
        word_1EE1BA77C = 0;
        *&xmmword_1EE1BA780 = 0;
        *(&xmmword_1EE1BA780 + 1) = 0xFFFFFFFFLL;
        qword_1EE1BA790 = &qword_1EE1BA830;
        qword_1EE1BA798 = 0;
        qword_1EE1BA760 = &unk_1F5D09530;
        re::IntrospectionRegistry::add(v29, v30);
        re::getPrettyTypeName(&v43, &qword_1EE1BA760);
        if (v44[0])
        {
          v31 = v44[1];
        }

        else
        {
          v31 = v44 + 1;
        }

        if (v43 && (v44[0] & 1) != 0)
        {
          (*(*v43 + 40))();
        }

        v40 = xmmword_1EE1BA850;
        if (*&v47.var0)
        {
          v39 = v47;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(&v45);
          re::TypeBuilder::TypeBuilder(&v43, &v45);
          v42 = v40;
          re::TypeBuilder::beginOptionalType(&v43, &v41, 2uLL, 1uLL, &v42);
          re::TypeBuilder::setOptionalAccessors(&v43, re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v43, v33);
          re::StackScratchAllocator::~StackScratchAllocator(&v45);
        }

        xmmword_1EE1BA780 = v39;
        if (v41)
        {
          if (v41)
          {
          }
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, *(&v42 + 1));
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v38);
    __break(1u);
LABEL_58:
    if (__cxa_guard_acquire(&qword_1EE1BA5B8))
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1BA760);
      qword_1EE1BA760 = &unk_1F5D09530;
      __cxa_guard_release(&qword_1EE1BA5B8);
    }
  }
}

void re::internal::defaultConstruct<re::MaterialRenderFlags>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  a3[2] = 0;
  a3[4] = 0;
  a3[6] = 0;
  a3[8] = 0;
  a3[10] = 0;
  a3[12] = 0;
  a3[14] = 0;
  a3[16] = 0;
  a3[18] = 0;
}

_BYTE *re::internal::defaultConstructV2<re::MaterialRenderFlags>(_BYTE *result)
{
  *result = 0;
  result[2] = 0;
  result[4] = 0;
  result[6] = 0;
  result[8] = 0;
  result[10] = 0;
  result[12] = 0;
  result[14] = 0;
  result[16] = 0;
  result[18] = 0;
  return result;
}

void *re::allocInfo_HierarchicalMeshOverrideFlags(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA578))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BABA0, "HierarchicalMeshOverrideFlags");
    __cxa_guard_release(&qword_1EE1BA578);
  }

  return &unk_1EE1BABA0;
}

void re::initInfo_HierarchicalMeshOverrideFlags(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v54[0] = 0x16E61A863D3CB10ALL;
  v54[1] = "HierarchicalMeshOverrideFlags";
  if (v54[0])
  {
    if (v54[0])
    {
    }
  }

  *(this + 2) = v55;
  if ((atomic_load_explicit(&qword_1EE1BA580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA580))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE1BA548;
    if (!qword_1EE1BA548)
    {
      v9 = re::allocInfo_OverrideMeshPartFlags(v7);
      qword_1EE1BA548 = v9;
      re::initInfo_OverrideMeshPartFlags(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "meshPartFlags";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1BA910 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "doubleSidedIsInherited";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x700000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1BA918 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_BOOL(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "windingOrderIsInherited";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x800000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1BA920 = v21;
    v22 = re::introspectionAllocator();
    v23 = v22;
    v24 = qword_1EE1BA560;
    if (!qword_1EE1BA560)
    {
      v24 = re::allocInfo_MeshRuntimeFlags(v22);
      qword_1EE1BA560 = v24;
      re::initInfo_MeshRuntimeFlags(v24, v25, v26, v27);
    }

    v28 = (*(*v23 + 32))(v23, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "runtimeFlags";
    *(v28 + 16) = v24;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0xA00000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BA928 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "enableRenderingIsInherited";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x1600000005;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BA930 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_BOOL(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "enableCullingIsInherited";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x1700000006;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1BA938 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::introspect_BOOL(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "castsShadowsIsInherited";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1800000007;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1BA940 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::introspect_BOOL(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "enablePortalCrossingIsInherited";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1900000008;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1BA948 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_BOOL(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "techniqueQualityLevelBiasIsInherited";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x1A00000009;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1BA950 = v48;
    v49 = re::introspectionAllocator();
    v51 = re::introspect_BOOL(1, v50);
    v52 = (*(*v49 + 32))(v49, 72, 8);
    *v52 = 1;
    *(v52 + 8) = "occupancyBehaviorIsInherited";
    *(v52 + 16) = v51;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0x90000000DLL;
    *(v52 + 40) = 0;
    *(v52 + 48) = 0;
    *(v52 + 56) = 0;
    *(v52 + 64) = 0;
    qword_1EE1BA958 = v52;
    __cxa_guard_release(&qword_1EE1BA580);
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 2;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BA910;
  *(this + 9) = re::internal::defaultConstruct<re::HierarchicalMeshOverrideFlags>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::HierarchicalMeshOverrideFlags>;
  *(this + 13) = re::internal::defaultConstructV2<re::HierarchicalMeshOverrideFlags>;
  *(this + 14) = re::internal::defaultDestructV2<re::HierarchicalMeshOverrideFlags>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v53 = v55;
}

void re::internal::defaultConstruct<re::HierarchicalMeshOverrideFlags>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 14) = 0;
  *(a3 + 16) = 0;
  *(a3 + 18) = 0;
  *(a3 + 6) = 0;
  *(a3 + 10) = 0;
  *(a3 + 22) = 0;
  *(a3 + 26) = 0;
}

uint64_t re::internal::defaultConstructV2<re::HierarchicalMeshOverrideFlags>(uint64_t result)
{
  *result = 0;
  *(result + 2) = 0;
  *(result + 4) = 0;
  *(result + 12) = 0;
  *(result + 14) = 0;
  *(result + 16) = 0;
  *(result + 18) = 0;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 22) = 0;
  *(result + 26) = 0;
  return result;
}

void *re::IntrospectionOptional<re::WindingOrder>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::WindingOrder>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::WindingOrder>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::WindingOrder>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::WindingOrder>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::OccupancyBehavior>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::OccupancyBehavior>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::OccupancyBehavior>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::OccupancyBehavior>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::OccupancyBehavior>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<short>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<short>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<short>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 2) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<short>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 2;
}

{
  return a2 + 2;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 2;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int16 *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 2) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::CullingMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::CullingMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::CullingMode>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::CullingMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::CullingMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::TriangleFillModeInternal>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::TriangleFillModeInternal>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::TriangleFillModeInternal>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<re::TriangleFillModeInternal>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<re::TriangleFillModeInternal>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

re::MeshShadowGenerationQueue *re::MeshShadowGenerationQueue::MeshShadowGenerationQueue(re::MeshShadowGenerationQueue *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog((this + 48));
  return this;
}

unint64_t re::MeshShadowGenerationQueue::enqueue(uint64_t a1, __int128 *a2, int a3)
{
  if (a3)
  {

    return re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a1, a2);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *a2;
    v7 = *(a2 + 2);
    return re::MeshShadowGenerationBacklog::pushBack(a1 + 48, &v6);
  }
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(uint64_t a1, __int128 *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v14, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_10;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_10:
    v13 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 40 * v13 + 16;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = v9 + 40 * v8;
    v12 = *(v10 + 16);
    result = v10 + 16;
    if (v12 == *a2 && *(result + 8) == *(a2 + 1) && *(result + 16) == *(a2 + 2))
    {
      return result;
    }

    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }
}

void re::MeshShadowGenerationQueue::getEnqueued(re::MeshShadowGenerationQueue *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 36) = 0x7FFFFFFFLL;

  re::HashSet<re::ShadowPair,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::unionSet(this, this + 96, a2);
}

void re::HashSet<re::ShadowPair,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::unionSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::clear(a3);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = *(a1 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, (v10 + 40 * v7 + 16));
      v11 = *(a1 + 32);
      v10 = *(a1 + 16);
      if (v11 <= v7 + 1)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = *(a1 + 32);
      }

      while (v12 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(v10 + 40 * v7 + 8) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v12;
LABEL_16:
      ;
    }

    while (v7 != v11);
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = 0;
    v15 = (*(a2 + 16) + 8);
    while (1)
    {
      v16 = *v15;
      v15 += 10;
      if (v16 < 0)
      {
        break;
      }

      if (v13 == ++v14)
      {
        LODWORD(v14) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 != v13)
  {
    v17 = *(a2 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, (v17 + 40 * v14 + 16));
      v18 = *(a2 + 32);
      v17 = *(a2 + 16);
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = *(a2 + 32);
      }

      while (v19 - 1 != v14)
      {
        LODWORD(v14) = v14 + 1;
        if ((*(v17 + 40 * v14 + 8) & 0x80000000) != 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v14) = v19;
LABEL_32:
      ;
    }

    while (v14 != v18);
  }
}

void re::MeshShadowGenerationQueue::dequeue(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 36) = 0x7FFFFFFFLL;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v39 = 0x7FFFFFFFLL;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = 0;
    v13 = (*(a1 + 16) + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 10;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  while (v12 != v11)
  {
    v15 = *(a1 + 16) + 40 * v12;
    if ((re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, (v15 + 16)) & 1) == 0)
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a5, (v15 + 16));
    }

    v16 = *(a1 + 32);
    if (v16 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    while (v16 - 1 != v12)
    {
      LODWORD(v12) = v12 + 1;
      if ((*(*(a1 + 16) + 40 * v12 + 8) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v12) = v16;
LABEL_16:
    ;
  }

  v17 = *(a5 + 32);
  if (v17)
  {
    v18 = 0;
    v19 = (*(a5 + 16) + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 10;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(a5 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != v17)
  {
    v21 = *(a5 + 16);
    do
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(a1, (v21 + 40 * v18 + 16));
      v22 = *(a5 + 32);
      v21 = *(a5 + 16);
      if (v22 <= v18 + 1)
      {
        v22 = v18 + 1;
      }

      while (v22 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(v21 + 40 * v18 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v18) = v22;
LABEL_31:
      ;
    }

    while (v18 != v17);
  }

  v23 = *(a1 + 128);
  if (v23)
  {
    v24 = 0;
    v25 = (*(a1 + 112) + 8);
    while (1)
    {
      v26 = *v25;
      v25 += 10;
      if (v26 < 0)
      {
        break;
      }

      if (v23 == ++v24)
      {
        LODWORD(v24) = *(a1 + 128);
        break;
      }
    }
  }

  else
  {
    LODWORD(v24) = 0;
  }

  if (v24 == v23)
  {
    v27 = 0;
  }

  else
  {
    LODWORD(v27) = 0;
    do
    {
      v27 = v27 + (re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, (*(a1 + 112) + 40 * v24 + 16)) ^ 1);
      v28 = *(a1 + 128);
      if (v28 <= v24 + 1)
      {
        v28 = v24 + 1;
      }

      while (v28 - 1 != v24)
      {
        LODWORD(v24) = v24 + 1;
        if ((*(*(a1 + 112) + 40 * v24 + 8) & 0x80000000) != 0)
        {
          goto LABEL_47;
        }
      }

      LODWORD(v24) = v28;
LABEL_47:
      ;
    }

    while (v24 != v23);
  }

  re::MeshShadowGenerationBacklog::MeshShadowGenerationBacklog(v35);
  if (a2 <= v27 / a3 + 1)
  {
    a2 = v27 / a3 + 1;
  }

  while (a2 > *(a5 + 28))
  {
    if (!*(a1 + 124))
    {
      break;
    }

    re::MeshShadowGenerationBacklog::popFront(&v32, (a1 + 48), v29);
    if (v32 == 1)
    {
      if (re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(a4, &v33))
      {
        v30 = v33;
        v31 = v34;
        re::MeshShadowGenerationBacklog::pushBack(v35, &v30);
      }

      else
      {
        re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a5, &v33);
      }
    }
  }

  while (v36)
  {
    re::MeshShadowGenerationBacklog::popFront(&v32, v35, v29);
    if (v32 == 1)
    {
      v30 = v33;
      v31 = v34;
      re::MeshShadowGenerationBacklog::pushBack(a1 + 48, &v30);
    }
  }

  re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog(v35);
  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v37);
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::contains(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v12, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  while (1)
  {
    v8 = v7 + 40 * v6;
    v10 = *(v8 + 16);
    v9 = v8 + 16;
    if (v10 == *a2 && *(v9 + 8) == a2[1] && *(v9 + 16) == a2[2])
    {
      break;
    }

    v6 = *(v7 + 40 * v6 + 8) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::ShadowPair>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v4 % v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * (v4 % v5));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = 0x7FFFFFFFLL;
  while (1)
  {
    v11 = v9 + 40 * v8;
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    if (v13 == *a2 && *(v12 + 8) == a2[1] && *(v12 + 16) == a2[2])
    {
      break;
    }

    v10 = v8;
    v8 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v15 = *(v9 + 40 * v8 + 8) & 0x7FFFFFFF;
  if (v10 == 0x7FFFFFFF)
  {
    *(v7 + 4 * v6) = v15;
  }

  else
  {
    *(v9 + 40 * v10 + 8) = *(v9 + 40 * v10 + 8) & 0x80000000 | v15;
  }

  v16 = *(a1 + 16);
  v17 = v16 + 40 * v8;
  v20 = *(v17 + 8);
  v19 = (v17 + 8);
  v18 = v20;
  if (v20 < 0)
  {
    *v19 = v18 & 0x7FFFFFFF;
    v16 = *(a1 + 16);
    v18 = *(v16 + 40 * v8 + 8);
  }

  v21 = *(a1 + 40);
  *(v16 + 40 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v21 + 1;
  return 1;
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_20, 4 * v10);
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

uint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 40 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 40 * v8 + 8) = *(*(a1 + 16) + 40 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 40 * v8) = a3;
  v12 = *(a1 + 16) + 40 * v8;
  v13 = *a5;
  *(v12 + 32) = *(a5 + 2);
  *(v12 + 16) = v13;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 40;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v13);
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

void re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_20, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::DeformationManager::DeformationManager(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  *a1 = &unk_1F5D095B0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  do
  {
    v4 = a1 + v3;
    *(v4 + 48) = 0;
    *(v4 + 80) = 0;
    v3 += 40;
  }

  while (v3 != 720);
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0x7FFFFFFF00000000;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0x1FFFFFFFFLL;
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return a1;
}

void re::DeformationManager::deinitInternal(re::DeformationManager *this)
{
  v2 = this + 56;
  v3 = 720;
  do
  {
    v4 = *(v2 - 1);
    *(v2 - 1) = 0;
    if (v4)
    {
      std::function<void ()(re::Deformer *)>::operator()(v2, v4);
    }

    v2 += 40;
    v3 -= 40;
  }

  while (v3);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 96);
  if (*(this + 215))
  {

    re::DataArray<re::DeformationStack>::deinit(this + 816);
  }
}

uint64_t re::DataArray<re::DeformationStack>::deinit(uint64_t result)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v25 = result;
  if (*(result + 40))
  {
    LODWORD(v26) = 0;
    if (!*(result + 16))
    {
      goto LABEL_41;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
    }
  }

  else
  {
    LODWORD(v26) = -1;
    v3 = result;
  }

  v25 = v3;
  if (v3 != v2 || v26 != 0xFFFFFFFFLL)
  {
    v4 = v26;
    v5 = WORD1(v26);
    do
    {
      v6 = *(v3 + 16);
      if (v6 <= v5)
      {
        goto LABEL_37;
      }

      re::DataArray<re::DeformationStack>::destroy(v2, ((*(*(*(v3 + 32) + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
      v4 = v26;
      v5 = WORD1(v26);
    }

    while (v25 != v2 || v26 != 0xFFFFLL || WORD1(v26) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_26;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v7;
      _os_log_send_and_compose_impl(v14, &v25, &v36, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "removeAt";
      v30 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v31 = 931;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v1;
      _os_log_send_and_compose_impl(v17, &v25, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
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
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v20, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = 0;
      v34 = 2048;
      v35 = 0;
      _os_log_send_and_compose_impl(v23, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_33;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v25 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = 0;
    v34 = 2048;
    v35 = 0;
    _os_log_send_and_compose_impl(v10, &v25, &v36, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v11 = v2[4];
  (*(**v2 + 40))(*v2, *v11);
  (*(**v2 + 40))(*v2, v11[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DeformationManagerGPU::DeformationManagerGPU(uint64_t a1, __int128 *a2)
{
  v3 = re::DeformationManager::DeformationManager(a1, a2);
  v4 = 0;
  *v3 = &unk_1F5D09640;
  v3[110] = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 888) = 0xFFFFFFFFFFFFFFFLL;
    *(v5 + 896) = 0uLL;
    *(v5 + 912) = 1;
    *(v5 + 920) = 0;
    *(v5 + 936) = 0;
    *(v5 + 928) = 0;
    v4 += 64;
    *(v5 + 944) = 0;
  }

  while (v4 != 512);
  *(a1 + 1416) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1424) = 1;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 1;
  *(a1 + 1488) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  re::DeformationFencePool::init((a1 + 880), (*(a1 + 24) + 208));
  return a1;
}

_anonymous_namespace_ *re::DeformationManagerGPU::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v5 = (*(a1 + 24) + 208);

  return re::DeformationFencePool::init((a1 + 880), v5);
}

void re::DeformationManagerGPU::~DeformationManagerGPU(re::DeformationManagerGPU *this)
{
  re::DeformationFencePool::deinit((this + 880));
  *(this + 8) = -1;
  *(this + 9) = 0u;
  *(this + 25) = 0u;
  *(this + 5) = 0;
  re::DeformationFencePool::~DeformationFencePool((this + 880));
  *this = &unk_1F5D095B0;
  re::DeformationManager::deinitInternal(this);
  re::DataArray<re::DeformationStack>::deinit(this + 816);
  re::DynamicArray<unsigned long>::deinit(this + 816);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 96);
  for (i = 728; i != 8; i -= 40)
  {
    std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100]((this + i));
  }
}

{
  re::DeformationManagerGPU::~DeformationManagerGPU(this);

  JUMPOUT(0x1E6906520);
}

void re::DeformationManagerGPU::deinit(re::DeformationManagerGPU *this)
{
  re::DeformationFencePool::deinit((this + 880));
  *(this + 8) = -1;
  *(this + 9) = 0u;
  *(this + 25) = 0u;
  *(this + 5) = 0;

  re::DeformationManager::deinitInternal(this);
}

unint64_t re::DeformationManager::addDeformationStack(uint64_t a1, unint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6 >= 0xA)
  {
LABEL_93:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) The maximum deformation stack (%zu) has been exceeded: %zu.", "stackDefinition.deformationStack.size() < kMaxDeformationStackCount", "addDeformationStack", 211, 10, v6);
    _os_crash("assertion failure: (stackDefinition.deformationStack.size() < kMaxDeformationStackCount) The maximum deformation stack (%zu) has been exceeded: %zu.", v79, v82);
    __break(1u);
    goto LABEL_94;
  }

  v2 = a2;
  if (!*(a1 + 860))
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 816), 0);
    ++*(a1 + 840);
    *(a1 + 860) = 32;
    re::DataArray<re::DeformationStack>::allocBlock((a1 + 816));
  }

  re::StackScratchAllocator::StackScratchAllocator(v102);
  v8 = 0;
  LOBYTE(v97) = 0;
  do
  {
    v9 = &v98[v8 - 1];
    *(v9 + 12) = -1;
    *(v9 + 60) = 0;
    *(v9 + 52) = 0;
    *(v9 + 17) = 0;
    *(v9 + 72) = -1;
    *(v9 + 10) = -1;
    *(v9 + 11) = 0;
    v8 += 4;
    *(v9 + 12) = 0;
    *(v9 + 13) = 0;
  }

  while (v8 != 40);
  memset(v101, 0, sizeof(v101));
  v100 = 0u;
  v3 = *(v2 + 16);
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v5 = v102;
  v92 = v102;
  re::DynamicArray<float *>::setCapacity(&v92, v3);
  v4 = ++v95;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v87 = v102;
  re::DynamicArray<re::DeformationDescription>::setCapacity(&v87, v3);
  v10 = ++v90;
  if (v3)
  {
    v85 = v10;
    v11 = 0;
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v5 = *(v2 + 16);
      if (v5 <= v11)
      {
        break;
      }

      v14 = *(v2 + 32);
      v5 = v14 + v13;
      v15 = 0xBF58476D1CE4E5B9 * ((*(v14 + v13 - 32) >> 31) ^ (*(v14 + v13 - 32) >> 1));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 768, (v14 + v13 - 32), (0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) ^ ((0x94D049BB133111EBLL * (v15 ^ (v15 >> 27))) >> 31), &v107);
      if (HIDWORD(v107) == 0x7FFFFFFF)
      {
        goto LABEL_103;
      }

      v17 = *(a1 + 784) + 32 * HIDWORD(v107);
      v19 = *(v17 + 24);
      v18 = (v17 + 24);
      v5 = *(a1 + 48 + 40 * v19);
      v20 = (*(*v5 + 24))(&v107, v5, *(v14 + v13), a1 + 8);
      switch(BYTE8(v108))
      {
        case 2u:
          v22 = v94;
          if (v94 >= v93)
          {
            v23 = v94 + 1;
            if (v93 < v94 + 1)
            {
              if (v92)
              {
                v24 = 2 * v93;
                if (!v93)
                {
                  v24 = 8;
                }

                if (v24 <= v23)
                {
                  v25 = v94 + 1;
                }

                else
                {
                  v25 = v24;
                }

                v20 = re::DynamicArray<float *>::setCapacity(&v92, v25);
                LODWORD(v4) = v95;
              }

              else
              {
                v20 = re::DynamicArray<float *>::setCapacity(&v92, v23);
                LODWORD(v4) = v95 + 1;
              }
            }

            v22 = v94;
          }

          *(v96 + 8 * v22) = v5;
          v94 = v22 + 1;
          v4 = (v4 + 1);
          v95 = v4;
          v31 = v89;
          if (v89 >= v88)
          {
            v5 = v89 + 1;
            if (v88 < v89 + 1)
            {
              if (v87)
              {
                v32 = 2 * v88;
                if (!v88)
                {
                  v32 = 8;
                }

                if (v32 <= v5)
                {
                  v33 = v89 + 1;
                }

                else
                {
                  v33 = v32;
                }

                re::DynamicArray<re::DeformationDescription>::setCapacity(&v87, v33);
                v34 = v90;
              }

              else
              {
                re::DynamicArray<re::DeformationDescription>::setCapacity(&v87, v5);
                v34 = v90 + 1;
              }

              v85 = v34;
            }

            v31 = v89;
          }

          v35 = v91 + (v31 << 6);
          v36 = v109;
          v37 = v108;
          *v35 = v107;
          *(v35 + 16) = v37;
          *(v35 + 48) = 0;
          *(v35 + 56) = 0;
          *(v35 + 32) = v36;
          *(v35 + 40) = 0;
          *(v35 + 40) = *(&v109 + 1);
          *(&v109 + 1) = 0;
          *(v35 + 48) = v110;
          *&v110 = 0;
          v38 = *(v35 + 56);
          *(v35 + 56) = *(&v110 + 1);
          *(&v110 + 1) = v38;
          v89 = v31 + 1;
          v90 = ++v85;
          break;
        case 3u:
          *buf = -1;
          memset(&buf[4], 0, 20);
          *&buf[24] = 255;
          *&buf[32] = -1;
          v105 = 0;
          v106 = 0;
          v104 = 0;
          *&v109 = -1;
          v107 = *buf;
          v108 = *&buf[16];
          re::FixedArray<float>::operator=(&v109 + 1, &v104);
          if (v104 && v105)
          {
            (*(*v104 + 40))();
          }

          break;
        case 0xFFu:
          v5 = *re::graphicsLogObjects(v20);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v14 + v13 - 24);
            *buf = 136315138;
            *&buf[4] = v21;
            _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[DeformerLogging] Invalid deformation stack definition for deformer: %s", buf, 0xCu);
          }

          break;
        default:
          if (v94)
          {
            v86[0] = v96;
            v86[1] = v94;
            v86[2] = v91;
            v86[3] = v89;
            v26 = *(a1 + 728);
            (*(*v26 + 16))(v26, a1 + 8);
            (*(*v26 + 24))(buf, v26, v86, a1 + 8);
            v27 = &v98[4 * v12 + 2];
            v28 = *&buf[16];
            *v27 = *buf;
            v27[1] = v28;
            *(v27 + 4) = *&buf[32];
            re::FixedArray<float>::operator=(v27 + 5, &v104);
            v94 = 0;
            v4 = (v4 + 1);
            v95 = v4;
            *(&v97 + v12 + 1) = 17;
            if (v104 && v105)
            {
              (*(*v104 + 40))();
            }

            ++v12;
          }

          v5 = v12;
          v29 = &v98[4 * v12 + 2];
          v30 = v108;
          *v29 = v107;
          v29[1] = v30;
          *(v29 + 4) = v109;
          re::FixedArray<float>::operator=(v29 + 5, &v109 + 1);
          *(&v97 + v12++ + 1) = *v18;
          break;
      }

      if (*(&v109 + 1) && v110)
      {
        (*(**(&v109 + 1) + 40))();
      }

      ++v11;
      v13 += 40;
      if (v3 == v11)
      {
        goto LABEL_54;
      }
    }

    v86[0] = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    *&buf[14] = 797;
    *&buf[18] = 2048;
    *&buf[20] = v11;
    *&buf[28] = 2048;
    *&buf[30] = v5;
    _os_log_send_and_compose_impl(v72, v86, &v107, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v83, v84);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  LOBYTE(v12) = 0;
LABEL_54:
  if (v94)
  {
    *buf = v96;
    *&buf[8] = v94;
    *&buf[16] = v91;
    *&buf[24] = v89;
    (*(**(a1 + 728) + 24))(&v107);
    v39 = &v98[4 * v12 - 1];
    v40 = v108;
    v39[3] = v107;
    v39[4] = v40;
    *(v39 + 10) = v109;
    re::FixedArray<float>::operator=(v39 + 11, &v109 + 1);
    *(&v98[-1] + v12 + 1) = 17;
    LOBYTE(v12) = v12 + 1;
    if (*(&v109 + 1))
    {
      if (v110)
      {
        (*(**(&v109 + 1) + 40))();
      }
    }
  }

  LOBYTE(v97) = v12;
  re::DeformationStack::buildCachedData(&v97);
  v42 = *(a1 + 872);
  if ((v42 + 1) >> 24)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42 + 1;
  }

  *(a1 + 872) = v43;
  v3 = *(a1 + 868);
  v2 = *(a1 + 870);
  if (v3 == 0xFFFF && v2 == 0xFFFF)
  {
    if (*(a1 + 864) >= *(a1 + 860))
    {
      re::DataArray<re::DeformationStack>::allocBlock((a1 + 816));
    }

    v3 = *(a1 + 832);
    v44 = v3 - 1;
    v2 = (v3 - 1);
    if (v3 <= v2)
    {
      goto LABEL_98;
    }

    v3 = *(a1 + 864);
    if (v3 >= 0x10000)
    {
LABEL_102:
      re::internal::assertLog(5, v41, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v3);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v80);
      __break(1u);
LABEL_103:
      re::internal::assertLog(5, v16, "assertion failure: '%s' (%s:line %i) Unknown deformation service name: %s.", "deformerIndex", "addDeformationStack", 229, *(v5 - 24));
      _os_crash("assertion failure: (deformerIndex) Unknown deformation service name: %s.", v81);
      __break(1u);
    }

    v45 = (*(a1 + 848) + 16 * v2);
    *(a1 + 864) = v3 + 1;
    *(v45[1] + 4 * v3) = *(a1 + 872);
    v46 = *v45 + 1032 * v3;
    LOWORD(v2) = v44;
  }

  else
  {
    v4 = *(a1 + 832);
    if (v4 <= v2)
    {
LABEL_94:
      v86[0] = 0;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      *&buf[28] = 2048;
      *&buf[30] = v4;
      _os_log_send_and_compose_impl(v75, v86, &v107, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v86[0] = 0;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      *&buf[14] = 789;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      *&buf[28] = 2048;
      *&buf[30] = v3;
      _os_log_send_and_compose_impl(v78, v86, &v107, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
      goto LABEL_102;
    }

    v47 = (*(a1 + 848) + 16 * v2);
    *(v47[1] + 4 * v3) = v43;
    v46 = *v47 + 1032 * v3;
    *(a1 + 868) = *v46;
  }

  v48 = 0;
  ++*(a1 + 856);
  v49 = v97;
  v50 = v98[0];
  *(v46 + 28) = *(v98 + 12);
  *v46 = v49;
  *(v46 + 16) = v50;
  do
  {
    v51 = v46 + v48 * 16;
    v52 = &v98[v48 - 1];
    v53 = v98[v48 + 3];
    v54 = *&v98[v48 + 4];
    *(v51 + 48) = v98[v48 + 2];
    *(v51 + 64) = v53;
    *(v51 + 80) = v54;
    *(v51 + 88) = 0;
    *(v51 + 96) = 0;
    *(v51 + 104) = 0;
    *(v51 + 88) = *(&v98[v48 + 4] + 1);
    v52[11] = 0;
    *(v51 + 96) = *&v98[v48 + 5];
    v52[12] = 0;
    *(v51 + 104) = *(&v98[v48 + 5] + 1);
    v52[13] = 0;
    v48 += 4;
  }

  while (v48 != 40);
  v55 = 0;
  v56 = v98[42];
  v57 = v98[44];
  *(v46 + 704) = v98[43];
  *(v46 + 720) = v57;
  *(v46 + 688) = v56;
  v58 = v98[45];
  v59 = v98[46];
  v60 = v98[47];
  *(v46 + 784) = v99;
  *(v46 + 752) = v59;
  *(v46 + 768) = v60;
  *(v46 + 736) = v58;
  do
  {
    v61 = (v46 + v55);
    v62 = (&v98[-1] + v55);
    v61[101] = 0;
    *(v46 + v55 + 792) = 0uLL;
    v61[99] = *(&v101[-1] + v55);
    v62[99] = 0;
    v61[100] = *(&v100 + v55 + 8);
    v62[100] = 0;
    v61[101] = *(v101 + v55);
    v62[101] = 0;
    v55 += 24;
  }

  while (v55 != 240);
  v63 = *(a1 + 872);
  v64 = v87;
  if (v87 && v91)
  {
    if (v89)
    {
      v65 = v89 << 6;
      v66 = (v91 + 40);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v66);
        v66 += 8;
        v65 -= 64;
      }

      while (v65);
      v64 = v87;
    }

    (*(*v64 + 40))(v64);
  }

  if (v92 && v96)
  {
    (*(*v92 + 40))();
  }

  for (i = 1008; i != 768; i -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v98[-1] + i));
  }

  for (j = 664; j != 24; j -= 64)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v98[-1] + j));
  }

  re::StackScratchAllocator::~StackScratchAllocator(v102);
  return (v2 << 16) | ((v63 & 0xFFFFFF) << 32) | v3;
}