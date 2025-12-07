re::RenderGraphEncoderSplitLogBuffer *re::RenderGraphEncoderSplitLogBuffer::RenderGraphEncoderSplitLogBuffer(re::RenderGraphEncoderSplitLogBuffer *this, const char *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  re::Defaults::intValue(v9, "encoderSplitLogging", a2);
  v3 = LOBYTE(v9[0]);
  v4 = DWORD1(v9[0]);
  *(this + 10) = 0;
  if (v3 == 1 && v4 != 0)
  {
    v6 = re::DynamicArray<re::DynamicString>::setCapacity(this, 0xAuLL);
    if (*(this + 1))
    {
      v7 = 0;
      do
      {
        memset(v9, 0, sizeof(v9));
        re::DynamicString::setCapacity(v9, 0);
        re::DynamicString::setCapacity(v9, 0x400uLL);
        re::DynamicArray<re::DynamicString>::add(this, v9);
        v6 = *&v9[0];
        if (*&v9[0] && (BYTE8(v9[0]) & 1) != 0)
        {
          v6 = (*(**&v9[0] + 40))();
        }

        ++v7;
      }

      while (*(this + 1) > v7);
    }
  }

  return this;
}

_anonymous_namespace_ *re::ShadowTileManager::releaseTile(_anonymous_namespace_ *a1, _WORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a1 + 7);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  LOWORD(v17[0]) = *a2;
  return re::DynamicArray<unsigned short>::add(a1, v17);
}

void *re::ShadowTileManager::acquireTile@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v35 = *MEMORY[0x1E69E9840];
  v4 = this[2];
  if (v4)
  {
    v5 = *(this[4] + 2 * v4 - 2);
    this[2] = v4 - 1;
    ++*(this + 6);
    v6 = this[7];
    if (v6 <= v5)
    {
      v25 = 0;
      memset(__src, 0, 80);
      v22 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v5;
      v33 = 2048;
      v34 = v6;
      _os_log_send_and_compose_impl(v23, &v25, __src, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v24);
      _os_crash_msg();
      __break(1u);
    }

    v7 = this[9] + 1840 * v5;
    v8 = (*(v7 + 1824))++ + 1;
    *a2 = 1;
    *(a2 + 2) = v5 | (v8 << 16);
  }

  else
  {
    v9 = this[7];
    if (v9 - 2041 > 0xFFFFFFFFFFFFF805)
    {
      bzero(&__src[17], 0x394uLL);
      v11 = 0;
      memset(__src, 0, 20);
      memset(&__src[2], 0, 34);
      *(&__src[4] + 12) = 0;
      *(&__src[4] + 4) = 0;
      memset(&__src[6], 0, 164);
      do
      {
        v12 = &__src[v11];
        v12[24] = 0uLL;
        v12[25] = 0uLL;
        v12[22] = 0uLL;
        v12[23] = 0uLL;
        v12[20] = 0uLL;
        v12[21] = 0uLL;
        v12[27] = 0uLL;
        v12[28] = 0uLL;
        v11 += 14;
        v12[29] = 0uLL;
        v12[30] = 0uLL;
      }

      while (v11 != 56);
      memset(&__src[75], 0, 72);
      memset(&__src[80], 0, 97);
      v13.i64[0] = 0x7F0000007FLL;
      v13.i64[1] = 0x7F0000007FLL;
      __src[87] = vnegq_f32(v13);
      __src[88] = v13;
      DWORD2(__src[113]) = 0;
      LOWORD(__src[114]) = 0;
      memset(&__src[89], 0, 292);
      memset(&__src[108], 0, 86);
      v14 = v9;
      v15 = v2[6];
      if (v9 >= v15)
      {
        if (v15 < v9 + 1)
        {
          if (v2[5])
          {
            v16 = 2 * v15;
            v17 = v15 == 0;
            v18 = 8;
            if (!v17)
            {
              v18 = v16;
            }

            if (v18 <= v9 + 1)
            {
              v19 = v9 + 1;
            }

            else
            {
              v19 = v18;
            }

            re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v2 + 5, v19);
          }

          else
          {
            re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v2 + 5, v9 + 1);
            ++*(v2 + 16);
          }
        }

        v14 = v2[7];
      }

      this = memcpy((v2[9] + 1840 * v14), __src, 0x730uLL);
      v20 = v2[7];
      v2[7] = v20 + 1;
      ++*(v2 + 16);
      v21 = v2[9];
      *a2 = 1;
      *(a2 + 2) = v9 | (*(v21 + 1840 * v20 + 1824) << 16);
    }

    else
    {
      *a2 = 0;
    }
  }

  return this;
}

void *re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x730uLL))
        {
          v2 = 1840 * a2;
          result = (*(*result + 32))(result, 1840 * a2, 16);
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
            memcpy(v7, v5[4], 1840 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 1840, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ShadowTileManager::TileData>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::logAttributeIndexExceedsLimit(uint64_t **a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = a1[5];
    if (v7[306])
    {
      v8 = v7[307];
    }

    else
    {
      v8 = v7 + 2449;
    }

    v9 = *v7;
    if (v7[310])
    {
      v10 = v7[311];
    }

    else
    {
      v10 = v7 + 2481;
    }

    if (*(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12[0] = 67110402;
    v12[1] = 30;
    v13 = 1024;
    v14 = a3;
    v15 = 2080;
    v16 = v9;
    v17 = 2080;
    v18 = v8;
    v19 = 2080;
    v20 = v10;
    v21 = 2080;
    v22 = v11;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attribute index exceeds limit. Maximum allowed index is %d but received index is %d. technique=%s vs=%s fs=%s fc=%s", v12, 0x36u);
  }
}

void re::makeAPIFunctionAsync(uint64_t a1, char *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a11)
{
  v17 = a4;
  re::APIFunctionCache::getOrCreateAPIFunction(a1 + 256, a2, a1, a9, a11, a3, &v17, a5, a6, a7, a8);
}

void re::makeMetalPrivateLinkedFunctionsAsync(uint64_t a1, void *a2, uint64_t a3, void *a4, dispatch_group_t *a5, uint64_t a6, uint64_t a7, void *a8, unint64_t *a9, unint64_t a10)
{
  v190 = *MEMORY[0x1E69E9840];
  v16 = *a2;
  v17 = 56;
  if (a3 == 1)
  {
    v17 = 32;
  }

  v18 = v16 + v17;
  v19 = *(v16 + v17 + 8);
  if (v19)
  {
    v20 = 0;
    v21 = (*(v18 + 16) + 56);
    v22 = v19;
    do
    {
      v23 = *v21;
      v21 += 50;
      v20 |= v23;
      --v22;
    }

    while (v22);
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v19 += 76;
  }

  if ((v20 & 2) != 0)
  {
    v19 += 78;
  }

  if ((v20 & 0x20) != 0)
  {
    v19 += 22;
  }

  if ((v20 & 4) != 0)
  {
    v19 += 69;
  }

  if ((v20 & 8) != 0)
  {
    v19 += 61;
  }

  if ((v20 & 0x10) != 0)
  {
    v24 = v19 + 13;
  }

  else
  {
    v24 = v19;
  }

  a8[1] = v24;
  v165 = a4;
  if (v24)
  {
    if (v24 >> 61)
    {
      goto LABEL_100;
    }

    v26 = a7;
    a8[2] = v27;
    if (!v27)
    {
LABEL_101:
      re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v29 = v27;
    if (v24 != 1)
    {
      bzero(v27, 8 * v24 - 8);
      v29 += v24 - 1;
    }

    *v29 = 0;
    a7 = v26;
  }

  v159 = v20;
  v167 = a2;
  v168 = a7;
  v163 = a8;
  v164 = a5;
  v166 = a6;
  v30 = 0;
  if (*(v18 + 8))
  {
    v24 = a10;
    v160 = v18;
    do
    {
      v31 = (*(v18 + 16) + 200 * v30);
      v32 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
      v33 = v31[9];
      if (v33)
      {
        v34 = 104 * v33;
        v35 = v31[10] + 36;
        do
        {
          [v32 setConstantValue:v35 type:*(v35 - 4) atIndex:*(v35 - 2)];
          v35 += 104;
          v34 -= 104;
        }

        while (v34);
      }

      re::ShaderManager::makeFunctionDescriptor(&v172, *(a1 + 48));
      [v172 setName_];
      if (!re::StringID::operator==(v31 + 3, v31 + 1))
      {
        [v172 setSpecializedName_];
      }

      [v172 setConstantValues_];
      location = 0;
      if (v31[6])
      {
        v36 = *(v24 + 8);
        if (v36 <= v30)
        {
          v173 = 0;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v185 = 0u;
          v149 = MEMORY[0x1E69E9C10];
          v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v177 = 136315906;
          v178 = "operator[]";
          v179 = 1024;
          if (v150)
          {
            v151 = 3;
          }

          else
          {
            v151 = 2;
          }

          v180 = 468;
          v181 = 2048;
          v182 = v30;
          v183 = 2048;
          v184 = v36;
          _os_log_send_and_compose_impl(v151, &v173, &v185, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v177, 38, v157, v158);
          _os_crash_msg();
          __break(1u);
LABEL_96:
          v173 = 0;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v185 = 0u;
          v152 = MEMORY[0x1E69E9C10];
          v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v177 = 136315906;
          v178 = "operator[]";
          v179 = 1024;
          if (v153)
          {
            v154 = 3;
          }

          else
          {
            v154 = 2;
          }

          v180 = 468;
          v181 = 2048;
          v182 = v30;
          v183 = 2048;
          v184 = v36;
          _os_log_send_and_compose_impl(v154, &v173, &v185, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v177, 38, v157, v158);
          _os_crash_msg();
          __break(1u);
LABEL_100:
          re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v24);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v155, v156);
          __break(1u);
          goto LABEL_101;
        }

        *(*(v24 + 16) + 8 * v30) = 0;
        CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(**(a1 + 160));
      }

      else
      {
        v38 = *(a1 + 48);
        *&v185 = v31[5];
        v39 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v38 + 376, &v185);
        if (v39)
        {
          v40 = (v39 + 8);
        }

        else
        {
          v40 = 0;
        }

        re::ObjCObject::operator=(&location, v40);
        v41 = *a9;
        *a9 = ((v41 << 6) + (v41 >> 2) + [location hash] - 0x61C8864680B583E9) ^ v41;
        v36 = *(v24 + 8);
        if (v36 <= v30)
        {
          goto LABEL_96;
        }

        CGColorSpaceFromWorkingColorGamut = 0;
        *(*(v24 + 16) + 8 * v30) = v31[5];
      }

      dispatch_group_enter(*v164);
      v161 = *(a1 + 48);
      re::StringID::StringID(&v170, (v31 + 3));
      v42 = *(a1 + 208);
      v43 = location;
      v44 = v172;
      v45 = *v164;
      v46 = v45;
      v47 = *v167;
      if (*v167)
      {
        v45 = (v47 + 8);
      }

      v175 = re::globalAllocators(v45)[2];
      v176 = 0;
      v48 = (*(*v175 + 32))(v175, 96, 0);
      *v48 = &unk_1F5D040B0;
      *(v48 + 8) = v42;
      *(v48 + 16) = CGColorSpaceFromWorkingColorGamut;
      *(v48 + 24) = v43;
      *(v48 + 32) = v44;
      *(v48 + 40) = v46;
      *(v48 + 48) = v30;
      *(v48 + 56) = v168;
      a6 = v166;
      *(v48 + 64) = v166;
      *(v48 + 72) = v31;
      *(v48 + 80) = a8;
      *(v48 + 88) = v47;
      v176 = v48;
      re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v161, v166, v168, 4, &v170, v174);
      v49 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v174);
      if (*&v170.var0)
      {
        if (*&v170.var0)
        {
        }
      }

      *&v170.var0 = 0;
      v170.var1 = &str_67;

      v24 = a10;
      if (v172)
      {
      }

      if (v32)
      {
      }

      ++v30;
      v18 = v160;
    }

    while (v30 < *(v160 + 8));
  }

  v50 = *(a1 + 48);
  *v162 = v50;
  if (v159)
  {
    v53 = 0;
    v52 = v163;
    v54 = v164;
    do
    {
      v55 = v30;
      v56 = a6;
      v57 = realitykit_shader_api::textureFunctions[v53];
      v58 = v54;
      v59 = *v54;
      v60 = *(v50 + 360);
      ++v30;
      v61 = v57;
      a6 = v56;
      re::makeAPIFunctionAsync(*(a1 + 48), v61, v165, v59, v56, v168, v163, v55, *(*v167 + 144), *(*v167 + 136));

      v50 = *v162;
      v54 = v58;
      ++v53;
    }

    while (v53 != 12);
    for (i = 0; i != 9; ++i)
    {
      v63 = v30;
      v64 = realitykit_shader_api::materialFunctions[i];
      v65 = *v54;
      v66 = *(*v162 + 360);
      ++v30;
      re::makeAPIFunctionAsync(*(a1 + 48), v64, v165, v65, v56, v168, v163, v63, *(*v167 + 144), *(*v167 + 136));

      v54 = v58;
    }

    v67 = 0;
    v68 = v168;
    do
    {
      v69 = v68;
      v70 = realitykit_shader_api::surfaceFunctions[v67];
      v71 = *v54;
      v72 = *(*v162 + 360);
      v51 = v30 + 1;
      v73 = v70;
      v68 = v69;
      re::makeAPIFunctionAsync(*(a1 + 48), v73, v165, v71, v166, v69, v163, v30, *(*v167 + 144), *(*v167 + 136));

      v54 = v58;
      ++v67;
      ++v30;
    }

    while (v67 != 55);
  }

  else
  {
    v51 = v30;
    v52 = a8;
  }

  if ((v159 & 2) != 0)
  {
    for (j = 0; j != 74; ++j)
    {
      v76 = v51;
      v77 = realitykit_shader_api::surface_privateFunctions[j];
      v78 = *v164;
      v79 = *(*v162 + 360);
      ++v51;
      re::makeAPIFunctionAsync(*(a1 + 48), v77, v165, v78, v166, v168, v52, v76, *(*v167 + 144), *(*v167 + 136));
    }

    for (k = 0; k != 2; ++k)
    {
      v81 = v51;
      v82 = realitykit_shader_api::texture_privateFunctions[k];
      v83 = *v164;
      v84 = *(*v162 + 360);
      ++v51;
      re::makeAPIFunctionAsync(*(a1 + 48), v82, v165, v83, v166, v168, v52, v81, *(*v167 + 144), *(*v167 + 136));
    }

    v85 = 0;
    v86 = v52;
    do
    {
      v87 = realitykit_shader_api::material_privateFunctions[v85];
      v88 = *v164;
      v89 = *(*v162 + 360);
      v74 = v51 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v87, v165, v88, v166, v168, v86, v51, *(*v167 + 144), *(*v167 + 136));

      ++v85;
      ++v51;
    }

    while (v85 != 2);
  }

  else
  {
    v74 = v51;
  }

  if ((v159 & 0x20) != 0)
  {
    for (m = 0; m != 22; ++m)
    {
      v92 = realitykit_shader_api::uisurface_privateFunctions[m];
      v93 = *v164;
      v94 = *(*v162 + 360);
      v90 = v74 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v92, v165, v93, v166, v168, v163, v74, *(*v167 + 144), *(*v167 + 136));

      ++v74;
    }
  }

  else
  {
    v90 = v74;
  }

  if ((v159 & 4) != 0)
  {
    v97 = 0;
    v98 = v164;
    do
    {
      v99 = v90;
      v100 = realitykit_shader_api::textureFunctions[v97];
      v101 = v98;
      v102 = *v98;
      v103 = *(*v162 + 360);
      ++v90;
      re::makeAPIFunctionAsync(*(a1 + 48), v100, v165, v102, v166, v168, v163, v99, *(*v167 + 144), *(*v167 + 136));

      v98 = v101;
      ++v97;
    }

    while (v97 != 12);
    for (n = 0; n != 9; ++n)
    {
      v105 = v90;
      v106 = realitykit_shader_api::materialFunctions[n];
      v107 = *v98;
      v108 = *(*v162 + 360);
      ++v90;
      re::makeAPIFunctionAsync(*(a1 + 48), v106, v165, v107, v166, v168, v163, v105, *(*v167 + 144), *(*v167 + 136));

      v98 = v101;
    }

    v109 = 0;
    v96 = v163;
    do
    {
      v110 = realitykit_shader_api::geometry_modifierFunctions[v109];
      v111 = *v98;
      v112 = *(*v162 + 360);
      v95 = v90 + 1;
      re::makeAPIFunctionAsync(*(a1 + 48), v110, v165, v111, v166, v168, v163, v90, *(*v167 + 144), *(*v167 + 136));

      v98 = v101;
      ++v109;
      ++v90;
    }

    while (v109 != 48);
  }

  else
  {
    v95 = v90;
    v96 = v163;
  }

  if ((v159 & 8) != 0)
  {
    v118 = v96;
    v119 = 0;
    v120 = v166;
    v121 = *v162;
    do
    {
      v122 = v95;
      v123 = v120;
      v124 = realitykit_shader_api::geometry_modifier_privateFunctions[v119];
      v125 = *v164;
      v126 = v121;
      v127 = *(v121 + 360);
      ++v95;
      v128 = v124;
      v120 = v123;
      re::makeAPIFunctionAsync(*(a1 + 48), v128, v165, v125, v123, v168, v118, v122, *(*v167 + 144), *(*v167 + 136));

      v121 = v126;
      ++v119;
    }

    while (v119 != 57);
    for (ii = 0; ii != 2; ++ii)
    {
      v130 = v95;
      v131 = realitykit_shader_api::texture_privateFunctions[ii];
      v132 = *v164;
      v133 = *(*v162 + 360);
      ++v95;
      re::makeAPIFunctionAsync(*(a1 + 48), v131, v165, v132, v123, v168, v118, v130, *(*v167 + 144), *(*v167 + 136));
    }

    v134 = 0;
    v115 = v164;
    v116 = v165;
    v114 = v123;
    v117 = *v162;
    do
    {
      v135 = v114;
      v136 = realitykit_shader_api::material_privateFunctions[v134];
      v137 = v115;
      v138 = *v115;
      v139 = v117;
      v140 = *(v117 + 360);
      v113 = v95 + 1;
      v141 = v136;
      v114 = v135;
      re::makeAPIFunctionAsync(*(a1 + 48), v141, v165, v138, v135, v168, v163, v95, *(*v167 + 144), *(*v167 + 136));

      v117 = v139;
      v115 = v137;
      ++v134;
      ++v95;
    }

    while (v134 != 2);
  }

  else
  {
    v113 = v95;
    v114 = v166;
    v115 = v164;
    v116 = v165;
    v117 = *v162;
  }

  if ((v159 & 0x10) != 0)
  {
    for (jj = 0; jj != 13; ++jj)
    {
      v143 = v114;
      v144 = realitykit_shader_api::ui_geometry_modifier_privateFunctions[jj];
      v145 = *v115;
      v146 = v117;
      v147 = *(v117 + 360);
      v148 = v144;
      v114 = v143;
      re::makeAPIFunctionAsync(*(a1 + 48), v148, v116, v145, v143, v168, v163, v113, *(*v167 + 144), *(*v167 + 136));

      v117 = v146;
      v115 = v164;
      ++v113;
    }
  }
}

BOOL re::validateCachedPipelineState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v25 = *(*a2 + 120);
  v5 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4 + 376, &v25);
  v6 = *(a1 + 48);
  v25 = *(*a2 + 128);
  v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 376, &v25);
  v8 = *a2;
  v9 = *(*a2 + 160);
  if (v9)
  {
    v10 = 0;
    v11 = v8[21];
    v12 = 8 * v9;
    do
    {
      v13 = *(a1 + 48);
      v25 = *v11;
      v14 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v13 + 376, &v25);
      if (v14)
      {
        v10 ^= (v10 << 6) - 0x61C8864680B583E9 + (v10 >> 2) + [*(v14 + 8) hash];
      }

      ++v11;
      v12 -= 8;
    }

    while (v12);
    v8 = *a2;
  }

  else
  {
    v10 = 0;
  }

  v15 = v8[23];
  if (!v15)
  {
    v16 = 0;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_17:
    v21 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  v17 = v8[24];
  v18 = 8 * v15;
  do
  {
    v19 = *(a1 + 48);
    v25 = *v17;
    v20 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v19 + 376, &v25);
    if (v20)
    {
      v16 ^= (v16 << 6) - 0x61C8864680B583E9 + (v16 >> 2) + [*(v20 + 8) hash];
    }

    ++v17;
    v18 -= 8;
  }

  while (v18);
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_14:
  v21 = [*(v5 + 8) hash];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_15:
  v22 = [*(v7 + 8) hash];
LABEL_19:
  v23 = *a2;
  return v22 == *(*a2 + 112) && v21 == v23[13] && v16 == v23[18] && v10 == v23[17];
}

uint64_t *re::compileCachedPipelineStateAsync@<X0>(re *a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LOBYTE(v4) = a3;
  v5 = a1;
  v354 = *MEMORY[0x1E69E9840];
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 224, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  ArcSharedObject::ArcSharedObject(v8, 0);
  *v9 = &unk_1F5D04260;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 89) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 61) = 0;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0;
  *a4 = v9;
  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = kdebug_trace();
  }

  atomic_store(1u, (v8 + 208));
  ++*(*v5 + 48);
  v289 = *(v5 + 1);
  v286 = *(v5 + 3);
  v11 = *(v5 + 8);
  LODWORD(v297) = *(v5 + 88);
  v12 = *(v5 + 5);
  if ((atomic_load_explicit(&qword_1EE1B87E8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_357;
  }

  while (2)
  {
    v308 = 0;
    v309 = 0;
    v307 = 0;
    re::DynamicString::setCapacity(&v306, 0x200uLL);
    v13 = *(v5 + 10);
    if (v13)
    {
      v14 = *(v5 + 9);
      v15 = v14 + 10 * v13;
      while (1)
      {
        v16 = v11;
        do
        {
          v17 = v16;
          v16 = *v16;
          v18 = v17[3];
          if (v16)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 0;
          }
        }

        while (v19);
        v20 = *(v14 + 2);
        if (v18 <= v20)
        {
          break;
        }

        v21 = (v17[4] + 16 * v20);
        if (*(v14 + 3))
        {
          VertexFormatFromDataType = re::getVertexFormatFromDataType(*(v14 + 3));
          v23 = -1;
          v24 = 1;
          v25 = 1;
        }

        else
        {
          v23 = *v21;
          VertexFormatFromDataType = *(v21 + 12);
          v24 = v21[1];
          v25 = *(v21 + 5);
          if (*(v14 + 8))
          {
            v24 = 0;
            v25 = 0;
          }
        }

        v26 = *(v14 + 1);
        v27 = *v14;
        v14 = (v14 + 10);
        re::DynamicString::appendf(&v306, "(att=%d fmt=%d off=%d lyt=%d str=%d sf=%d sr=%d) ", v26, VertexFormatFromDataType, *(v21 + 2), v27, v23, v25, v24);
        if (v14 == v15)
        {
          goto LABEL_17;
        }
      }

      v351[0] = 0;
      memset(v321, 0, sizeof(v321));
      memset(buf, 0, sizeof(buf));
      v234 = MEMORY[0x1E69E9C10];
      v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v353 = 136315906;
      *&v353[4] = "operator[]";
      *&v353[12] = 1024;
      if (v235)
      {
        v236 = 3;
      }

      else
      {
        v236 = 2;
      }

      *&v353[14] = 476;
      *&v353[18] = 2048;
      *&v353[20] = v20;
      *&v353[28] = 2048;
      *&v353[30] = v18;
      _os_log_send_and_compose_impl(v236, v351, buf, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
      _os_crash_msg();
      __break(1u);
      goto LABEL_314;
    }

LABEL_17:
    WeakRetained = objc_loadWeakRetained((*(v5 + 5) + 2736));
    v29 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v29 = 0;
    }

    v30 = *(v29 + 178);
    v288 = *v286;
    v283 = v286[9];
    v278 = v286[10];
    v32 = *(v5 + 15);
    v31 = *(v5 + 16);
    v33 = *(v5 + 14);
    *v300 = v286 + 1;
    v34 = *(v286 + 5);
    v346 = *(v286 + 1);
    v347 = v34;
    if (!v30)
    {
      v30 = "NULL";
    }

    __s = v30;
    v295 = v12;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = "NULL";
    }

    v277 = v35;
    if (v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = "NULL";
    }

    if (v32)
    {
      v37 = v32;
    }

    else
    {
      v37 = "NULL";
    }

    v275 = v37;
    v276 = v36;
    v285 = (v12 + 72);
    v290 = v11;
    v279 = v4;
    v281 = a4;
    if (*(v12 + 144))
    {
      v38 = *(v12 + 160);
      v39 = (v38 + 4);
      v40 = (v38 + 8);
      v41 = (v38 + 12);
      v42 = (v38 + 16);
      v43 = (v38 + 20);
      v44 = (v38 + 24);
    }

    else
    {
      v39 = (v12 + 84);
      v40 = (v12 + 88);
      v41 = (v12 + 92);
      v42 = (v12 + 96);
      v43 = (v12 + 100);
      v44 = (v12 + 104);
      v38 = (v12 + 72);
    }

    v280 = WeakRetained;
    v45 = *v38;
    v46 = *v43;
    v47 = *v41;
    v48 = *v39;
    v49 = *v40;
    v50 = *v42;
    v51 = *v44;
    *v302 = v5;
    if (*(v5 + 56) == 1 && *(v5 + 57) != 1 || *(*(v5 + 5) + 2845) != 1 || _MergedGlobals_436 == 1)
    {
      v52 = *re::graphicsLogObjects(WeakRetained);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        v54 = *(v5 + 13);
        v55 = *(v5 + 4);
        v56 = **(v5 + 5);
        v57 = v55[3];
        v58 = *(v55[2] + 8);
        if (v57)
        {
          v59 = *(v57 + 8);
        }

        else
        {
          v59 = "NONE";
        }

        v60 = *(v5 + 57);
        v61 = v55[21];
        if (v307)
        {
          v62 = v308;
        }

        else
        {
          v62 = &v307 + 1;
        }

        *buf = 134223874;
        *&buf[4] = v54;
        *&buf[12] = 2082;
        *&buf[14] = __s;
        *&buf[22] = 2082;
        *&buf[24] = v56;
        LOWORD(v321[0]) = 2082;
        *(v321 + 2) = v58;
        WORD5(v321[0]) = 2082;
        *(v321 + 12) = v59;
        WORD2(v321[1]) = 1024;
        *(&v321[1] + 6) = v60;
        WORD5(v321[1]) = 2048;
        *(&v321[1] + 12) = v61;
        WORD2(v321[2]) = 1024;
        *(&v321[2] + 6) = v283;
        WORD5(v321[2]) = 1024;
        HIDWORD(v321[2]) = v278;
        *v322 = 1024;
        *&v322[2] = v288;
        *&v322[6] = 1024;
        *&v322[8] = v297;
        *&v322[12] = 1024;
        *&v322[14] = a2;
        *&v322[18] = 1024;
        v323 = v346;
        v324 = 1024;
        v325 = DWORD1(v346);
        v326 = 1024;
        v327 = DWORD2(v346);
        v328 = 1024;
        v329 = HIDWORD(v346);
        v330 = 1024;
        v331 = v347;
        v332 = 1024;
        v333 = DWORD1(v347);
        v334 = 1024;
        v335 = DWORD2(v347);
        v336 = 1024;
        v337 = HIDWORD(v347);
        v338 = 2082;
        v339 = v62;
        v340 = 2082;
        v341 = v277;
        v342 = 2082;
        v343 = v275;
        v344 = 2082;
        v345 = v276;
        _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu name=%{public}s tech=%{public}s vtx=%{public}s frag=%{public}s ciar=%d fc=%zu dFmt=%d sFmt=%d sc=%d pt=%d sof=%d pxFmt=%d %d %d %d %d %d %d %d vd=%{public}snode=%{public}s type=%{public}s graph=%{public}s ", buf, 0xBAu);
      }

      v63 = *re::graphicsLogObjects(v53);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      if (v64)
      {
        v65 = 0;
        v66 = *(v295 + 75);
        if (*(v295 + 76))
        {
          v67 = *(v295 + 75);
        }

        else
        {
          v67 = 0;
        }

        if (v45)
        {
          v68 = v48;
        }

        else
        {
          v68 = 0;
        }

        if (v45)
        {
          v69 = v49;
        }

        else
        {
          v69 = 0;
        }

        v70 = *(v5 + 13);
        if (v45)
        {
          v71 = v47;
        }

        else
        {
          v71 = 0;
        }

        if (v45)
        {
          v72 = v50;
        }

        else
        {
          v72 = 0;
        }

        if (v45)
        {
          v73 = v46;
        }

        else
        {
          v73 = 0;
        }

        if (v45)
        {
          v74 = v51;
        }

        else
        {
          v74 = 0;
        }

        if ((a2 & 2) == 0)
        {
          v65 = *(v295 + 108);
        }

        *buf = 134220544;
        *&buf[4] = v70;
        *&buf[12] = 1024;
        *&buf[14] = v66;
        *&buf[18] = 1024;
        *&buf[20] = v67;
        *&buf[24] = 1024;
        *&buf[26] = v45;
        *&buf[30] = 1024;
        LODWORD(v321[0]) = v68;
        WORD2(v321[0]) = 1024;
        *(v321 + 6) = v69;
        WORD5(v321[0]) = 1024;
        HIDWORD(v321[0]) = v71;
        LOWORD(v321[1]) = 1024;
        *(&v321[1] + 2) = v72;
        WORD3(v321[1]) = 1024;
        DWORD2(v321[1]) = v73;
        WORD6(v321[1]) = 1024;
        *(&v321[1] + 14) = v74;
        WORD1(v321[2]) = 1024;
        DWORD1(v321[2]) = v65;
        _os_log_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu a2c=%d a21=%d be=%d rgbS=%d rgbD=%d rgbB=%d aS=%d aD=%d aB=%d wm=%d ", buf, 0x48u);
      }

      memset(&buf[8], 0, 24);
      v75 = re::DynamicString::setCapacity(buf, 0x200uLL);
      v76 = *(v5 + 4);
      v77 = *(v76 + 136);
      if (v77)
      {
        v78 = 0;
        v79 = (*(v76 + 144) + 36);
        v80 = 104 * v77;
        do
        {
          if (*(v79 - 28))
          {
            v81 = *(v79 - 20);
          }

          else
          {
            v81 = v79 - 27;
          }

          v75 = re::DynamicString::appendf(buf, "%s=%llu ", v81, *v79);
          if (++v78 == 20)
          {
            v82 = *re::graphicsLogObjects(v75);
            v75 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
            if (v75)
            {
              v83 = *(v5 + 13);
              v84 = *(*(v5 + 4) + 168);
              if (buf[8])
              {
                v85 = *&buf[16];
              }

              else
              {
                v85 = &buf[9];
              }

              *v353 = 134218498;
              *&v353[4] = v83;
              *&v353[12] = 2048;
              *&v353[14] = v84;
              *&v353[22] = 2082;
              *&v353[24] = v85;
              _os_log_impl(&dword_1E1C61000, v82, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu fc=%zu %{public}s", v353, 0x20u);
            }

            if (buf[8])
            {
              *&buf[8] = 1;
              v86 = *&buf[16];
            }

            else
            {
              buf[8] = 0;
              v86 = &buf[9];
            }

            v78 = 0;
            *v86 = 0;
          }

          v79 += 13;
          v80 -= 104;
        }

        while (v80);
      }

      if (buf[8])
      {
        v87 = *&buf[8] >> 1;
      }

      else
      {
        v87 = buf[8] >> 1;
      }

      if (v87)
      {
        v88 = *re::graphicsLogObjects(v75);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = *(v5 + 13);
          v90 = *(*(v5 + 4) + 168);
          if (buf[8])
          {
            v91 = *&buf[16];
          }

          else
          {
            v91 = &buf[9];
          }

          *v353 = 134218498;
          *&v353[4] = v89;
          *&v353[12] = 2048;
          *&v353[14] = v90;
          *&v353[22] = 2082;
          *&v353[24] = v91;
          _os_log_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_DEFAULT, "Compiling PSO psk=%zu fc=%zu %{public}s", v353, 0x20u);
        }
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }
    }

    LOBYTE(v4) = a2;
    v11 = v295;
    v12 = v289;
    if (re::mtl::Device::isPhysicalHardware((*(v5 + 1) + 208)))
    {
      v92 = 0x9E3779B97F4A7C17;
      v93 = strlen(__s);
      v94 = 0x9E3779B97F4A7C17;
      if (v93)
      {
        MurmurHash3_x64_128(__s, v93, 0, buf);
        v94 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
      }

      v95 = strlen(**(v5 + 5));
      if (v95)
      {
        MurmurHash3_x64_128(**(v5 + 5), v95, 0, buf);
        v4 = (*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf;
      }

      else
      {
        v4 = 0;
      }

      if (v307)
      {
        v96 = v308;
      }

      else
      {
        v96 = &v307 + 1;
      }

      v97 = strlen(v96);
      if (v97)
      {
        MurmurHash3_x64_128(v96, v97, 0, buf);
        v92 = ((*&buf[8] - 0x61C8864680B583E9 + (*buf << 6) + (*buf >> 2)) ^ *buf) - 0x61C8864680B583E9;
      }

      v98 = ((v94 << 6) - 0x61C8864680B583E9 + (v94 >> 2) + (((v4 >> 2) + (v4 << 6) + v92) ^ v4)) ^ v94;
      v99 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v283 ^ (v283 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v283 ^ (v283 >> 30))) >> 27));
      v100 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v278 ^ (v278 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v278 ^ (v278 >> 30))) >> 27));
      v101 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v288 ^ (v288 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v288 ^ (v288 >> 30))) >> 27));
      LOBYTE(v4) = a2;
      v102 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
      v103 = ((v99 ^ (v99 >> 31)) - 0x61C8864680B583E9 + (v98 << 6) + (v98 >> 2)) ^ v98;
      v104 = ((v101 ^ (v101 >> 31)) - 0x61C8864680B583E9 + ((v100 ^ (v100 >> 31)) << 6) + ((v100 ^ (v100 >> 31)) >> 2)) ^ v100 ^ (v100 >> 31);
      v105 = ((((v102 ^ (v102 >> 31)) - 0x61C8864680B583E9 + (v104 << 6) + (v104 >> 2)) ^ v104) - 0x61C8864680B583E9 + (v103 << 6) + (v103 >> 2)) ^ v103;
      v106 = 0xBF58476D1CE4E5B9 * (v346 ^ (v346 >> 30));
      v107 = 0xBF58476D1CE4E5B9 * (DWORD1(v346) ^ (DWORD1(v346) >> 30));
      v108 = (0x94D049BB133111EBLL * (v107 ^ (v107 >> 27))) ^ ((0x94D049BB133111EBLL * (v107 ^ (v107 >> 27))) >> 31);
      v109 = 0xBF58476D1CE4E5B9 * (DWORD2(v346) ^ (DWORD2(v346) >> 30));
      v110 = 0xBF58476D1CE4E5B9 * (HIDWORD(v346) ^ (HIDWORD(v346) >> 30));
      v111 = (((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) ^ ((0x94D049BB133111EBLL * (v106 ^ (v106 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v105 << 6) + (v105 >> 2)) ^ v105;
      v112 = (((0x94D049BB133111EBLL * (v109 ^ (v109 >> 27))) ^ ((0x94D049BB133111EBLL * (v109 ^ (v109 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v108 << 6) + (v108 >> 2)) ^ v108;
      v113 = ((v111 << 6) - 0x61C8864680B583E9 + (v111 >> 2) + ((((0x94D049BB133111EBLL * (v110 ^ (v110 >> 27))) ^ ((0x94D049BB133111EBLL * (v110 ^ (v110 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v112 << 6) + (v112 >> 2)) ^ v112)) ^ v111;
      v114 = 0xBF58476D1CE4E5B9 * (v347 ^ (v347 >> 30));
      v115 = 0xBF58476D1CE4E5B9 * (DWORD1(v347) ^ (DWORD1(v347) >> 30));
      v116 = (0x94D049BB133111EBLL * (v115 ^ (v115 >> 27))) ^ ((0x94D049BB133111EBLL * (v115 ^ (v115 >> 27))) >> 31);
      v117 = 0xBF58476D1CE4E5B9 * (DWORD2(v347) ^ (DWORD2(v347) >> 30));
      v118 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (HIDWORD(v347) ^ (HIDWORD(v347) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (HIDWORD(v347) ^ (HIDWORD(v347) >> 30))) >> 27));
      v119 = (((0x94D049BB133111EBLL * (v114 ^ (v114 >> 27))) ^ ((0x94D049BB133111EBLL * (v114 ^ (v114 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v113 << 6) + (v113 >> 2)) ^ v113;
      v120 = (((0x94D049BB133111EBLL * (v117 ^ (v117 >> 27))) ^ ((0x94D049BB133111EBLL * (v117 ^ (v117 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v116 << 6) + (v116 >> 2)) ^ v116;
      v121 = ((((v118 ^ (v118 >> 31)) - 0x61C8864680B583E9 + (v120 << 6) + (v120 >> 2)) ^ v120) - 0x61C8864680B583E9 + (v119 << 6) + (v119 >> 2)) ^ v119;
      if (v307)
      {
        v122 = v308;
      }

      else
      {
        v122 = &v307 + 1;
      }

      LOBYTE(v273) = *(v5 + 57);
      re::REAnalyticsEventShaderCompilationRequest(__s, **(v5 + 5), v277, v276, v275, v288, &v346, v283, v278, a2, v122, v273, v121, *(v5 + 56));
    }

    re::ShaderManager::makeRenderPipelineDescriptor(&v305, *(v289 + 6));
    v123 = *(v5 + 6);
    if (v123)
    {
      v124 = [MEMORY[0x1E696AEC0] stringWithCString:v123 encoding:4];
      if (!v124)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v124 = @"MeshPartRenderPipeline";
    }

    [v305 setLabel_];
LABEL_118:
    [v305 setRasterSampleCount_];
    [v305 setAlphaToCoverageEnabled_];
    if (*(v295 + 76) == 1)
    {
      v125 = *(v295 + 75);
    }

    else
    {
      v125 = 0;
    }

    [v305 setAlphaToOneEnabled_];
    if ((v297 - 1) > 3u)
    {
      v126 = 1;
    }

    else
    {
      v126 = qword_1E30A3260[(v297 - 1)];
    }

    [v305 setInputPrimitiveTopology_];
    v127 = *(v5 + 4);
    if (v127)
    {
      v128 = v127 + 8;
    }

    v14 = &unk_1E8723000;
    a4 = [objc_msgSend(MEMORY[0x1E6974060] alloc)];
    v287 = v127;
    v129 = *(v127 + 17);
    if (v129)
    {
      v130 = 104 * v129;
      v131 = *(v127 + 18) + 36;
      do
      {
        [a4 setConstantValue:v131 type:*(v131 - 4) atIndex:*(v131 - 2)];
        v131 += 104;
        v130 -= 104;
      }

      while (v130);
    }

    if (!v297)
    {
      buf[0] = 1;
      [a4 setConstantValue:buf type:53 withName:@"IsPointPrimitive"];
    }

    v132 = v287;
    if (*(v289 + 366) == 1)
    {
      [v305 setMaxVertexAmplificationCount_];
    }

    v133 = &selRef_isLimitedRenderAsset;
    v282 = a4;
    if (*(v5 + 56) != 1 || (*(*(v5 + 5) + 2849) & 1) == 0)
    {
      v134 = [objc_msgSend(MEMORY[0x1E69741E0] alloc)];
      __sa = v134;
      v135 = *(v5 + 10);
      if (v135)
      {
        v136 = *(v5 + 9);
        v289 = &v136[5 * v135];
        v4 = buf;
        v15 = &buf[9];
        while (1)
        {
          v137 = v290;
          do
          {
            v138 = v137;
            v137 = *v137;
            v18 = v138[3];
            if (v137)
            {
              v139 = v18 == 0;
            }

            else
            {
              v139 = 0;
            }
          }

          while (v139);
          v5 = v136[2];
          if (v18 <= v5)
          {
            break;
          }

          v140 = v138[4];
          if (*v136 >= 0x1Fu)
          {
            memset(&v353[8], 0, 24);
            re::DynamicString::setCapacity(v353, 0x200uLL);
            v141 = *(*v302 + 32);
            v142 = *(v141 + 136);
            if (v142)
            {
              v143 = 0;
              v144 = *(v141 + 144);
              v145 = v144 + 104 * v142;
              do
              {
                re::DynamicString::DynamicString(buf, v144);
                v321[0] = *(v144 + 32);
                v146 = *(v144 + 48);
                v147 = *(v144 + 64);
                v148 = *(v144 + 80);
                *&v322[16] = *(v144 + 96);
                v321[2] = v147;
                *v322 = v148;
                v321[1] = v146;
                if (buf[8])
                {
                  v149 = *&buf[16];
                }

                else
                {
                  v149 = &buf[9];
                }

                re::DynamicString::appendf(v353, "%s=%llu ", v149, *(v321 + 4));
                if (++v143 == 20)
                {
                  re::logAttributeIndexExceedsLimit(*v302, v353, *v136);
                  if (v353[8])
                  {
                    *&v353[8] = 1;
                    v150 = *&v353[16];
                  }

                  else
                  {
                    v353[8] = 0;
                    v150 = &v353[9];
                  }

                  v143 = 0;
                  *v150 = 0;
                }

                if (*buf && (buf[8] & 1) != 0)
                {
                  (*(**buf + 40))();
                }

                v144 += 104;
              }

              while (v144 != v145);
            }

            if (v353[8])
            {
              v151 = *&v353[8] >> 1;
            }

            else
            {
              v151 = v353[8] >> 1;
            }

            if (v151)
            {
              re::logAttributeIndexExceedsLimit(*v302, v353, *v136);
            }

            if (*v353 && (v353[8] & 1) != 0)
            {
              (*(**v353 + 40))();
            }
          }

          v152 = (v140 + 16 * v5);
          if (v136[3])
          {
            v153 = re::getVertexFormatFromDataType(v136[3]);
            v12 = -1;
            v297 = 1;
            a4 = 1;
          }

          else
          {
            v12 = *v152;
            v153 = *(v152 + 12);
            if (*(v136 + 8))
            {
              a4 = 0;
            }

            else
            {
              a4 = *(v152 + 5);
            }

            if (*(v136 + 8))
            {
              v154 = 0;
            }

            else
            {
              v154 = v152[1];
            }

            v297 = v154;
          }

          v133 = &selRef_isLimitedRenderAsset;
          [objc_msgSend(objc_msgSend(__sa attributes)];
          [objc_msgSend(objc_msgSend(__sa attributes)];
          [objc_msgSend(objc_msgSend(__sa attributes)];
          v14 = &selRef_isLimitedRenderAsset;
          [objc_msgSend(objc_msgSend(__sa layouts)];
          [objc_msgSend(objc_msgSend(__sa layouts)];
          v155 = [__sa layouts];
          v156 = *v136;
          v136 += 5;
          v134 = [objc_msgSend(v155 objectAtIndexedSubscript_];
          v11 = v295;
          if (v136 == v289)
          {
            goto LABEL_176;
          }
        }

LABEL_314:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v237 = MEMORY[0x1E69E9C10];
        v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v238)
        {
          v239 = 3;
        }

        else
        {
          v239 = 2;
        }

        *&v353[14] = 476;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v18;
        _os_log_send_and_compose_impl(v239, v351, buf, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_318:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v240 = MEMORY[0x1E69E9C10];
        v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v241)
        {
          v242 = 3;
        }

        else
        {
          v242 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v242, v351, buf, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_322:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v243 = MEMORY[0x1E69E9C10];
        v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v244)
        {
          v245 = 3;
        }

        else
        {
          v245 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v245, v351, buf, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_326:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v246 = MEMORY[0x1E69E9C10];
        v247 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v247)
        {
          v248 = 3;
        }

        else
        {
          v248 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v248, v351, buf, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_330:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v249 = MEMORY[0x1E69E9C10];
        v250 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v250)
        {
          v251 = 3;
        }

        else
        {
          v251 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v251, v351, buf, 80, &dword_1E1C61000, v249, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_334:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v252 = MEMORY[0x1E69E9C10];
        v253 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v253)
        {
          v254 = 3;
        }

        else
        {
          v254 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v254, v351, buf, 80, &dword_1E1C61000, v252, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_338:
        v351[0] = 0;
        memset(v321, 0, sizeof(v321));
        memset(buf, 0, sizeof(buf));
        v255 = MEMORY[0x1E69E9C10];
        v256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v353 = 136315906;
        *&v353[4] = "operator[]";
        *&v353[12] = 1024;
        if (v256)
        {
          v257 = 3;
        }

        else
        {
          v257 = 2;
        }

        *&v353[14] = 797;
        *&v353[18] = 2048;
        *&v353[20] = v5;
        *&v353[28] = 2048;
        *&v353[30] = v15;
        _os_log_send_and_compose_impl(v257, v351, buf, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
        _os_crash_msg();
        __break(1u);
LABEL_342:
        dispatch_once(&qword_1EE1B87F0, &__block_literal_global_38);
        goto LABEL_223;
      }

LABEL_176:
      if (*(v287 + 23))
      {
        v258 = [__sa layouts];
        v259 = *(*v302 + 80);
        if (v259)
        {
          v260 = v258;
          v261 = *(*v302 + 72);
          v262 = 10 * v259;
          do
          {
            v263 = [v260 v133[160]];
            if ([v263 stepFunction] == 1)
            {
              [v263 setStepFunction_];
              [v263 setStepRate_];
            }

            v261 += 5;
            v262 -= 10;
            v133 = &selRef_isLimitedRenderAsset;
          }

          while (v262);
        }
      }

      [v305 setVertexDescriptor_];
      LOBYTE(v4) = a2;
      v132 = v287;
      if (__sa)
      {
      }
    }

    if (*(v132 + 23))
    {
      [v305 setTessellationFactorScaleEnabled_];
      [v305 setTessellationFactorFormat_];
      [v305 setTessellationFactorStepFunction_];
      [v305 setTessellationControlPointIndexType_];
      [v305 setTessellationOutputWindingOrder_];
      [v305 setTessellationPartitionMode_];
      [v305 setMaxTessellationFactor_];
    }

    v5 = 0;
    v157 = -256;
    v14 = &selRef_childNodes;
    v18 = &selRef_setOwnerWithIdentity_;
    a4 = &selRef_isLimitedRenderAsset;
    v12 = &selRef_setOwnerWithIdentity_;
    v158 = v285;
    do
    {
      if (!*(*v300 + 4 * v5))
      {
        goto LABEL_211;
      }

      [objc_msgSend(objc_msgSend(v305 colorAttachments)];
      v159 = *(v11 + 144);
      if (v159)
      {
        if (v159 <= v5)
        {
          [objc_msgSend(objc_msgSend(v305 colorAttachments)];
          [objc_msgSend(objc_msgSend(v305 colorAttachments)];
          goto LABEL_211;
        }

        v160 = *(v11 + 160) + v157;
        if (*(v160 + 257) == 1 && (v161 = *(*v302 + 8), v161[371] == 1) && *v161 == 1)
        {
          [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        }

        else if (*(v160 + 256) == 1)
        {
          [objc_msgSend(objc_msgSend(v305 colorAttachments)];
          v165 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_318;
          }

          [v165 setSourceRGBBlendFactor_];
          v166 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_322;
          }

          [v166 setDestinationRGBBlendFactor_];
          v167 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_326;
          }

          [v167 setRgbBlendOperation_];
          v168 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_330;
          }

          [v168 setSourceAlphaBlendFactor_];
          v169 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_334;
          }

          [v169 setDestinationAlphaBlendFactor_];
          v170 = [objc_msgSend(v305 colorAttachments)];
          v15 = *(v11 + 144);
          if (v15 <= v5)
          {
            goto LABEL_338;
          }

          [v170 setAlphaBlendOperation_];
          v158 = v285;
        }

        v163 = [objc_msgSend(v305 colorAttachments)];
        if ((v4 & 2) == 0)
        {
          if (*(v11 + 144) <= v5)
          {
            v164 = 15;
          }

          else
          {
            v164 = *(*(v11 + 160) + v157 + 284);
          }

          goto LABEL_210;
        }

LABEL_209:
        v164 = 0;
        goto LABEL_210;
      }

      if (*(v11 + 73) == 1 && (v162 = *(*v302 + 8), v162[371] == 1) && *v162 == 1)
      {
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
      }

      else if (*v158 == 1)
      {
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
        [objc_msgSend(objc_msgSend(v305 colorAttachments)];
      }

      v163 = [objc_msgSend(v305 colorAttachments)];
      if ((v4 & 2) != 0)
      {
        goto LABEL_209;
      }

      v164 = *(v11 + 108);
LABEL_210:
      [v163 setWriteMask_];
LABEL_211:
      v5 = (v5 + 1);
      v157 += 32;
    }

    while (v157);
    v171 = v286[9];
    if (v171 - 250 <= 0xA && ((1 << (v171 + 6)) & 0x425) != 0)
    {
      [v305 setDepthAttachmentPixelFormat_];
    }

    v14 = *v302;
    v15 = v281;
    v18 = v282;
    if (v286[10] - 253 <= 9 && ((1 << (*(v286 + 40) + 3)) & 0x385) != 0)
    {
      [v305 setStencilAttachmentPixelFormat_];
    }

    if (qword_1EE1B87F0 != -1)
    {
      goto LABEL_342;
    }

LABEL_223:
    if (byte_1EE1B87E4 == 1)
    {
      v173 = v14[4];
      if (*(v173 + 8))
      {
        if (*(v173 + 5))
        {
          v174 = *re::graphicsLogObjects([v305 setShaderValidation_]);
          if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
          {
            v175 = v14[4];
            if (*(v175 + 8))
            {
              if (*(v175 + 5))
              {
                v176 = *(*(v175 + 9) + 32);
                v177 = *(*(v175 + 6) + 32);
                *buf = 136315394;
                *&buf[4] = v176;
                *&buf[12] = 2080;
                *&buf[14] = v177;
                _os_log_impl(&dword_1E1C61000, v174, OS_LOG_TYPE_DEFAULT, "Shader Validation Enabled for custom shader using SurfaceShader = %s and GeometryModifier = %s", buf, 0x16u);
                break;
              }
            }

            else
            {
              v351[0] = 0;
              memset(v321, 0, sizeof(v321));
              memset(buf, 0, sizeof(buf));
              v264 = MEMORY[0x1E69E9C10];
              v265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v353 = 136315906;
              *&v353[4] = "operator[]";
              *&v353[12] = 1024;
              if (v265)
              {
                v266 = 3;
              }

              else
              {
                v266 = 2;
              }

              *&v353[14] = 476;
              *&v353[18] = 2048;
              *&v353[20] = 0;
              *&v353[28] = 2048;
              *&v353[30] = 0;
              _os_log_send_and_compose_impl(v266, v351, buf, 80, &dword_1E1C61000, v264, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
              _os_crash_msg();
              __break(1u);
            }

            v351[0] = 0;
            memset(v321, 0, sizeof(v321));
            memset(buf, 0, sizeof(buf));
            v267 = MEMORY[0x1E69E9C10];
            v268 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v353 = 136315906;
            *&v353[4] = "operator[]";
            *&v353[12] = 1024;
            if (v268)
            {
              v269 = 3;
            }

            else
            {
              v269 = 2;
            }

            *&v353[14] = 476;
            *&v353[18] = 2048;
            *&v353[20] = 0;
            *&v353[28] = 2048;
            *&v353[30] = 0;
            _os_log_send_and_compose_impl(v269, v351, buf, 80, &dword_1E1C61000, v267, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v353, 38, v273, *v274);
            _os_crash_msg();
            __break(1u);
LABEL_357:
            v10 = __cxa_guard_acquire(&qword_1EE1B87E8);
            if (v10)
            {
              re::Defaults::BOOLValue(buf, "enableShaderDebugLogs", v270);
              if (buf[0])
              {
                v271 = buf[1];
              }

              else
              {
                v271 = 0;
              }

              _MergedGlobals_436 = v271;
              __cxa_guard_release(&qword_1EE1B87E8);
            }

            continue;
          }
        }
      }
    }

    break;
  }

  v178 = v14[1];
  if (v287)
  {
    v179 = v287 + 8;
  }

  v180 = v305;
  v304 = v18;
  v181 = *v15;
  if (*v15)
  {
    v182 = v181 + 1;
  }

  v183 = v14[5];
  v301 = *(v14 + 56);
  v184 = v14[12];
  v185 = *(v14 + 136);
  __sb = v14[18];
  v186 = objc_loadWeakRetained(v183 + 342);
  v187 = v186 - 8;
  v298 = v186;
  if (!v186)
  {
    v187 = 0;
  }

  v291 = v187;
  v188 = dispatch_group_create();

  dispatch_group_enter(v188);
  v190 = re::globalAllocators(v189);
  v191 = (*(*v190[2] + 32))(v190[2], 24, 8);
  *(v191 + 1) = 0;
  *(v191 + 2) = 0;
  *v191 = 0;
  v192 = re::globalAllocators(v191);
  v193 = (*(*v192[2] + 32))(v192[2], 24, 8);
  v193[1] = 0;
  v193[2] = 0;
  *v193 = 0;
  v296 = v193;
  v299 = v178;
  v303 = *(v178 + 6);
  v194 = *v183;
  if ((atomic_load_explicit(&qword_1EE1B87F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87F8))
  {
    re::Defaults::BOOLValue(&byte_1EE1B87E5, "failIfNotPrecompiled", v272);
    __cxa_guard_release(&qword_1EE1B87F8);
  }

  if (byte_1EE1B87E5 == 1)
  {
    if ((byte_1EE1B87E6 & 1) == 0)
    {
      LOBYTE(v185) = 0;
      goto LABEL_242;
    }

LABEL_241:
    LOBYTE(v185) = v183[2848];
  }

  else if (v185)
  {
    goto LABEL_241;
  }

LABEL_242:
  v195 = v188;
  *&v318.var0 = 0;
  v318.var1 = &str_67;
  v319 = v195;
  v196 = v180;
  if (v181)
  {
    v197 = v181 + 1;
  }

  v198 = v180;
  if (v287)
  {
    v199 = v287 + 8;
  }

  v200 = v185 & 1;
  v201 = v298;
  if (v298)
  {
    v201 = v298;
  }

  v202 = re::globalAllocators(v201)[2];
  *&v353[24] = v202;
  *&v353[32] = 0;
  if (v202)
  {
    v203 = (*(*v202 + 32))(v202, 112, 0);
  }

  else
  {
    v203 = 0;
  }

  *v203 = &unk_1F5D04108;
  *(v203 + 8) = v191;
  *(v203 + 16) = v296;
  *(v203 + 24) = v196;
  *(v203 + 32) = v181;
  *(v203 + 40) = v183;
  *(v203 + 48) = v194;
  *(v203 + 56) = v287;
  *(v203 + 64) = v301;
  *(v203 + 72) = v184;
  *(v203 + 80) = v299;
  *(v203 + 88) = v291;
  *(v203 + 96) = v200;
  *(v203 + 97) = v279;
  *(v203 + 104) = __sb;
  *&v353[32] = v203;
  re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(v303, v301, v184, &v319, 1, &v318, v353);
  v204 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v353);
  if (v196)
  {
  }

  if (*&v318.var0)
  {
    if (*&v318.var0)
    {
    }
  }

  *&v318.var0 = 0;
  v318.var1 = &str_67;

  dispatch_group_enter(v195);
  v205 = *(v299 + 48);
  *buf = *(*(v287 + 2) + 16);
  v206 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v205 + 376, buf);
  if (v206)
  {
    v207 = (v206 + 8);
  }

  else
  {
    v207 = 0;
  }

  v181[13] = [*v207 hash];
  v208 = *(v287 + 2);
  v209 = *(v208 + 16);
  v181[15] = v209;
  re::ShaderManager::makeFunctionDescriptor(*(v299 + 48), *(v208 + 8), &v304, v207, v209, &v317);
  v210 = *(*(v287 + 2) + 8);
  *&v316.var0 = 0;
  v316.var1 = &str_67;
  *buf = v317;
  *&buf[8] = v198;
  *&buf[16] = v287;
  v212 = v287 + 8;
  buf[24] = v301;
  v213 = v195;
  *&v321[0] = v213;
  *(&v321[0] + 1) = v184;
  *&v321[1] = *v207;
  v214 = re::globalAllocators(*&v321[1])[2];
  v351[3] = v214;
  v352 = 0;
  if (v214)
  {
    v214 = (*(*v214 + 32))(v214, 64, 0);
  }

  v352 = re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::Callable(v214, buf);
  re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v303, v301, v184, 0, &v316, v351);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v351);

  if (*&buf[16])
  {
  }

  if (*&buf[8])
  {
  }

  v215 = *buf;
  if (*buf)
  {
  }

  if (*&v316.var0)
  {
    if (*&v316.var0)
    {
    }
  }

  *&v316.var0 = 0;
  v316.var1 = &str_67;
  v181[17] = 0;
  v216 = *(v287 + 5);
  if (v216)
  {
    *buf = 0;
    v315 = v287;
    v217 = v287 + 8;
    v218 = v213;
    v314 = v218;
    re::makeMetalPrivateLinkedFunctionsAsync(v299, &v315, 1, &v304, &v314, v301, v184, v191, buf, (v181 + 19));

    v181[17] = *buf;
  }

  if (*(v287 + 3))
  {
    dispatch_group_enter(v213);
    v219 = *(v299 + 48);
    *buf = *(*(v287 + 3) + 16);
    v220 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v219 + 376, buf);
    if (v220)
    {
      v221 = (v220 + 8);
    }

    else
    {
      v221 = 0;
    }

    v181[14] = [*v221 hash];
    v222 = *(v287 + 3);
    v223 = *(v222 + 16);
    v181[16] = v223;
    re::ShaderManager::makeFunctionDescriptor(*(v299 + 48), *(v222 + 8), &v304, v221, v223, &v313);
    v224 = *(*(v287 + 3) + 8);
    *&v312.var0 = 0;
    v312.var1 = &str_67;
    *buf = v313;
    *&buf[8] = v198;
    *&buf[16] = v287;
    v226 = v287 + 8;
    buf[24] = v301;
    v227 = v213;
    *&v321[0] = v227;
    *(&v321[0] + 1) = v184;
    *&v321[1] = *v221;
    v228 = re::globalAllocators(*&v321[1])[2];
    v349 = v228;
    if (v228)
    {
      v228 = (*(*v228 + 32))(v228, 64, 0);
    }

    v350 = re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::Callable(v228, buf);
    re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(v303, v301, v184, 0, &v312, v348);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v348);

    if (*&buf[16])
    {
    }

    if (*&buf[8])
    {
    }

    v229 = *buf;
    if (*buf)
    {
    }

    if (*&v312.var0)
    {
      if (*&v312.var0)
      {
      }
    }

    *&v312.var0 = 0;
    v312.var1 = &str_67;
    v230 = *(v287 + 8);
    if (v230)
    {
      *buf = 0;
      v311 = v287;
      v231 = v287 + 8;
      v232 = v227;
      v310 = v232;
      re::makeMetalPrivateLinkedFunctionsAsync(v299, &v311, 2, &v304, &v310, v301, v184, v296, buf, (v181 + 22));

      v181[18] = *buf;
    }

    if (v313)
    {
    }
  }

  else
  {
    v181[14] = 0;
    v181[18] = 0;
  }

  dispatch_group_leave(v213);
  if (v317)
  {
  }

  if (v298)
  {
  }

  if (v304)
  {

    v304 = 0;
  }

  if (v198)
  {
  }

  if (v282)
  {
  }

  if (v305)
  {
  }

  if (v280)
  {
  }

  result = v306;
  if (v306)
  {
    if (v307)
    {
      return (*(*v306 + 40))();
    }
  }

  return result;
}

uint64_t ___ZN2re31compileCachedPipelineStateAsyncERNS_25PipelineStateCacheContextEhb_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::stringValue(&v9, "shaderValidationMaterialFilter", a2);
  if (v9)
  {
    v3 = &v10;
  }

  else
  {
    v3 = &v7;
  }

  re::DynamicString::DynamicString(&v12, v3);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  if (v9 == 1 && v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  byte_1EE1B87E4 = 0;
  v4 = v13;
  if (v13)
  {
    v5 = *&v14[7];
  }

  else
  {
    v5 = v14;
  }

  if (!strcmp(v5, "custom"))
  {
    byte_1EE1B87E4 = 1;
  }

  result = v12;
  if (v12)
  {
    if (v4)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

void re::makePipelineStateCacheKey(unint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  if (*(a1 + 56) == 1)
  {
    v7 = 0x9E3779B97F4A7C17;
    if (*(*(a1 + 40) + 2849))
    {
      goto LABEL_18;
    }
  }

  v8 = *(a1 + 64);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 && !v9[3]);
  if (v9[2])
  {
    v10 = *(a1 + 80);
    v7 = 0x9E3779B97F4A7C17;
    if (v10)
    {
      v49 = a3;
      v11 = 0;
      v12 = (*(a1 + 72) + 4);
      v13 = 10 * v10;
      while (1)
      {
        v14 = *v12;
        if (v9[3] <= v14)
        {
          v42 = *re::graphicsLogObjects(a1);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v44 = *(v4 + 48);
            v45 = v9[3];
            v46 = *(v12 - 2);
            v47 = *v12;
            *buf = 136315906;
            *&buf[4] = v44;
            *&buf[12] = 2048;
            *&buf[14] = v45;
            *&buf[22] = 1024;
            *&buf[24] = v46;
            *&buf[28] = 1024;
            *&buf[30] = v47;
            _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Context %s attribute has %lu attribute formats but resolution with slotIndex %d has bufferIndex %d", buf, 0x22u);
          }

          *v49 = 0;
          return;
        }

        v15 = v9[4] + 16 * v14;
        if (v12[1])
        {
          break;
        }

        if (*(v12 + 4) != 1)
        {
          v17 = 0;
          v18 = 0;
          VertexFormatFromDataType = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        VertexFormatFromDataType = *(v15 + 12);
        v17 = 1;
LABEL_16:
        v21 = *(v12 - 1);
        v22 = *(v12 - 2) | (v21 << 16);
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v21 >> 14))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v21 >> 14))) >> 27));
        v24 = v23 ^ (v23 >> 31);
        a1 = re::VertexBufferFormat::hash(v15, v17, v18, VertexFormatFromDataType, v19, v20);
        v11 ^= (v11 << 6) - 0x61C8864680B583E9 + (v11 >> 2) + ((a1 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24);
        v12 += 5;
        v13 -= 10;
        if (!v13)
        {
          v7 = v11 - 0x61C8864680B583E9;
          v6 = 0x9E3779B97F4A7C17;
          a3 = v49;
          v3 = a2;
          goto LABEL_18;
        }
      }

      VertexFormatFromDataType = re::getVertexFormatFromDataType(v12[1]);
      v17 = 1;
      v18 = -1;
      v19 = 1;
LABEL_15:
      v20 = 1;
      goto LABEL_16;
    }

LABEL_18:
    v25 = *(v4 + 32);
    if (v25)
    {
      v26 = v25 + 1;
    }

    v27 = *(v4 + 8);
    v28 = *(v27 + 48);
    *buf = *(v25[2] + 16);
    v29 = [*(re::HashTable<unsigned long long re:re::Hash<unsigned long long> :re::EqualTo<unsigned long long> FrameAnalysisManager:true :{false>::tryGet(v28 + 376, buf) + 8), "hash"}RenderState];
    v30 = v25[3];
    if (v30)
    {
      v31 = *(v27 + 48);
      *buf = *(v30 + 16);
      v6 = [*(re::HashTable<unsigned long long re:re::Hash<unsigned long long> :re::EqualTo<unsigned long long> FrameAnalysisManager:true :{false>::tryGet(v31 + 376, buf) + 8), "hash"}RenderState] - 0x61C8864680B583E9;
    }

    v32 = *(v4 + 24);
    *buf = *v32;
    *&buf[16] = *(v32 + 16);
    *&buf[32] = *(v32 + 32);
    v33 = *(v32 + 48);
    v34 = re::TechniqueState::hashForPSO((*(v4 + 40) + 72), v3);
    v35 = *&buf[16];
    *(a3 + 8) = *buf;
    v36 = ((v34 << 6) - 0x61C8864680B583E9 + (v34 >> 2) + ((v7 + (v25[19] << 6) + (v25[19] >> 2)) ^ v25[19])) ^ v34;
    v37 = ((((v29 >> 2) + (v29 << 6) + v6) ^ v29) - 0x61C8864680B583E9 + (v36 << 6) + (v36 >> 2)) ^ v36;
    v38 = *(v4 + 88);
    if (v38 >= 5)
    {
      v39 = 1;
    }

    else
    {
      v39 = 0x303020201uLL >> (8 * v38);
    }

    v40 = *(v4 + 136);
    *a3 = 1;
    *(a3 + 24) = v35;
    *(a3 + 40) = *&buf[32];
    *(a3 + 14) = v33;
    *(a3 + 8) = v37;
    a3[72] = v39;
    a3[73] = v40;

    return;
  }

  v41 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v43 = *(v4 + 48);
    *buf = 136315138;
    *&buf[4] = v43;
    _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Context %s attribute table formats not initialized!", buf, 0xCu);
  }

  *a3 = 0;
}

unint64_t re::VertexBufferFormat::hash(unsigned __int16 *a1, char a2, unint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    a3 = *a1;
    a4 = *(a1 + 12);
    a5 = a1[1];
    a6 = *(a1 + 5);
  }

  v6 = (a5 << 16) | (*(a1 + 4) << 32) | (a6 << 40) | (a4 << 48) | (*(a1 + 2) << 56);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  return (((v8 ^ (v8 >> 31)) << 6) + ((v8 ^ (v8 >> 31)) >> 2) - 0x61C8864680B583E9 + (v7 ^ (v7 >> 31))) ^ v8 ^ (v8 >> 31);
}

unint64_t re::TechniqueState::hashForPSO(re::TechniqueState *this, char a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 2) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 9) << 51;
  }

  v3 = *this;
  v4 = *(this + 3);
  v5 = *(this + 4);
  v6 = *(this + 7);
  v7 = *(this + 8);
  v8 = *(this + 12);
  v9 = 0x9E3779B97F4A7C17;
  v10 = *(this + 1);
  v11 = *(this + 9);
  if (v11 && 32 * v11)
  {
    v18 = *(this + 12);
    MurmurHash3_x64_128(*(this + 11), 32 * v11, 0, v19);
    v8 = v18;
    v9 = ((v19[1] - 0x61C8864680B583E9 + (v19[0] << 6) + (v19[0] >> 2)) ^ v19[0]) - 0x61C8864680B583E9;
  }

  v12.i64[0] = v8;
  v12.i64[1] = SDWORD1(v8);
  v13 = v12;
  v12.i64[0] = SDWORD2(v8);
  v12.i64[1] = SHIDWORD(v8);
  v14 = vorrq_s8(vshlq_u64(v13, xmmword_1E30A2A50), vshlq_u64(v12, xmmword_1E30497C0));
  v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | (v6 << 35) | (v7 << 43) | (v10 << 52) | v2 | v3 | (2 * v4) | (4 * v5);
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  return (((v16 ^ (v16 >> 31)) >> 2) + ((v16 ^ (v16 >> 31)) << 6) + v9) ^ v16 ^ (v16 >> 31);
}

void re::getOrCreatePipelineState(re *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  re::makePipelineStateCacheKey(a1, a2, v14);
  if (v14[0])
  {
    v6 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(*(a1 + 2) + 48, v15);
    if (v6 && (v7 = *v6, *a3 = *v6, v7))
    {
      v8 = (v7 + 8);
    }

    else
    {
      *(a1 + 13) = re::Hash<re::PipelineStateCacheKey>::operator()(&v13, v15);
      re::compileCachedPipelineStateAsync(a1, a2, 0, &v13);
      v9 = v13;
      *a3 = v13;
      v10 = v16;
      v11 = v15[3];
      v12 = v15[2];
      *(v9 + 40) = v15[1];
      *(v9 + 56) = v12;
      *(v9 + 72) = v11;
      *(v9 + 88) = v10;
      *(v9 + 24) = v15[0];
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(*a1, v15, a3);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(uint64_t a1, int *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::PipelineStateCacheKey>::operator()(&v11, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v6, &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addInternal<re::PipelineStateCacheKey const&,re::SharedPtr<re::CachedPipelineState> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 96 * HIDWORD(v9) + 80;
  }
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D040B0;
  v2 = *(a1 + 88);
  if (v2)
  {

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    *(a1 + 32) = 0;
  }

  return a1;
}

void re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D040B0;
  v2 = *(a1 + 88);
  if (v2)
  {

    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    *(a1 + 32) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v18 = v2;
  if (*(*(a1 + 72) + 48))
  {
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    re::sg::CachedCompilationMaterial::getVariation(*(*(a1 + 72) + 48), *(*(a1 + 88) + 144), *(*(a1 + 88) + 136), buf);
    v4 = *buf;
    if (*buf)
    {
      v17 = *(a1 + 8);
      re::sg::CachedCompilationMaterial::compileMetalLibrary(v4, &v17, *(a1 + 16), v20);
    }

    else
    {
      v5 = *re::graphicsLogObjects(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "sg::CachedCompilationMaterial missing. Fallback to ShaderGraph failure material.", v20, 2u);
      }

      v17 = *(a1 + 8);
      re::sg::compileShaderGraphFailureMetalLibrary(&v17, *(a1 + 16), v20);
    }

    v6 = *v20;
    *v20 = 0;
    v18 = v6;

    v2 = v6;
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    if (*buf)
    {
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor(&v18, *(a1 + 32), &v16);
  v7 = re::internal::enableSignposts(0, 0);
  if (v7)
  {
    v7 = kdebug_trace();
  }

  if (v16)
  {
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(v8 + 8);
    if (v10 <= v9)
    {
      v19 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *buf = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      v21 = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v22 = 468;
      v23 = 2048;
      v24 = v9;
      v25 = 2048;
      v26 = v10;
      _os_log_send_and_compose_impl(v15, &v19, buf, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v20, 38, v16, v17);
      _os_crash_msg();
      __break(1u);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((*(v8 + 16) + 8 * v9), &v16);
  }

  else
  {
    v11 = *re::graphicsLogObjects(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 72) + 32);
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Unable to create linked function %s", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  if (v16)
  {
  }
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D040B0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  v7 = *(a1 + 88);
  *(a2 + 88) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::makeMetalPrivateLinkedFunctionsAsync(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,MTL::FunctionType,NS::SharedPtr<MTL::FunctionConstantValues> const&,re::dispatch::Group,BOOL,unsigned long long,re::FixedArray<NS::SharedPtr<MTL::Function>> &,unsigned long &,re::FixedArray<unsigned long long> &)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D040B0;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a2 + 8) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a2 + 24) = v3;
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  return a2;
}

void *re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04108;
  v2 = a1[11];
  if (v2)
  {

    a1[11] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  v5 = a1[3];
  if (v5)
  {

    a1[3] = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D04108;
  v2 = a1[11];
  if (v2)
  {

    a1[11] = 0;
  }

  v3 = a1[7];
  if (v3)
  {

    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {

    a1[4] = 0;
  }

  v5 = a1[3];
  if (v5)
  {

    a1[3] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6974100];
  v3 = [objc_msgSend(MEMORY[0x1E6974100] alloc)];
  v4 = [objc_msgSend(v2 alloc)];
  v49 = 0;
  *v50 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  NS::SharedPtr<MTL::Texture>::operator=(&v49, v50);
  if (*v50)
  {
  }

  v48 = 0;
  *v50 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
  NS::SharedPtr<MTL::Texture>::operator=(&v48, v50);
  if (*v50)
  {
  }

  re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(*(a1 + 8));
  re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(*(a1 + 16));
  if (*(a1 + 64) == 1 && *(*(a1 + 40) + 2849) == 1)
  {
    [v3 setFunctions_];
  }

  [v3 setPrivateFunctions_];
  [v4 setPrivateFunctions_];
  [*(a1 + 24) setVertexLinkedFunctions_];
  [*(a1 + 24) setFragmentLinkedFunctions_];
  *(*(a1 + 32) + 216) = mach_absolute_time();
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v47 = 0;
  if (*(a1 + 97) != 1)
  {
    re::mtl::Device::makeRenderPipelineState((*(a1 + 80) + 208), *(a1 + 24), *(a1 + 96), v50);
    NS::SharedPtr<MTL::Texture>::operator=(&v47, v50);
    v6 = *v50;
    if (!*v50)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *v50 = 0;
  v54[0] = 0;
  v5 = *(a1 + 104);
  if (v5)
  {
    [v5 addRenderPipelineFunctionsWithDescriptor:*(a1 + 24) error:0];
  }

  v46 = [*(*(a1 + 80) + 208) newRenderPipelineStateWithDescriptor:*(a1 + 24) options:0x40000 reflection:v54 error:v50];
  NS::SharedPtr<MTL::Texture>::operator=(&v47, &v46);
  if (v46)
  {
  }

  v46 = v54[0];
  NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 32) + 200), &v46);
  v6 = v46;
  if (v46)
  {
LABEL_18:
  }

LABEL_19:
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v7 = NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 32) + 16), &v47);
  if (*(*(a1 + 32) + 16))
  {
    v8 = mach_absolute_time();
    v9 = v8;
    v10 = *(*(a1 + 32) + 216);
    v11 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v8 = mach_timebase_info(v50);
      if (v8)
      {
        v14 = NAN;
        goto LABEL_29;
      }

      LODWORD(v13) = *&v50[4];
      LODWORD(v12) = *v50;
      v11 = v12 / v13;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v11;
    }

    v14 = v11 * (v9 - v10);
LABEL_29:
    v17 = *(a1 + 56);
    v18 = *(v17 + 16);
    v19 = "";
    if (v18)
    {
      v20 = *(v18 + 8);
      if (v20)
      {
        v19 = v20;
      }
    }

    v21 = *(v17 + 24);
    v22 = "";
    if (v21)
    {
      v23 = *(v21 + 8);
      if (v23)
      {
        v22 = v23;
      }
    }

    v24 = *re::graphicsLogObjects(v8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 64);
      v26 = *(a1 + 48);
      *v50 = 136447234;
      v27 = v25 == 0;
      v28 = "fallback";
      if (v27)
      {
        v28 = "specialized";
      }

      *&v50[4] = v28;
      *&v50[12] = 2082;
      *&v50[14] = v26;
      *&v50[22] = 2082;
      *&v50[24] = v19;
      LOWORD(v51) = 2082;
      *(&v51 + 2) = v22;
      WORD5(v51) = 1024;
      HIDWORD(v51) = (v14 / 1000000.0);
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "PSO compilation completed for %{public}s technique %{public}s with vertex shader %{public}s and fragment shader %{public}s in %d", v50, 0x30u);
    }

    goto LABEL_40;
  }

  v15 = *re::graphicsLogObjects(v7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 48);
    *v50 = 136315138;
    *&v50[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Pipeline for technique %s failed compilation!", v50, 0xCu);
  }

LABEL_40:
  v29 = re::internal::enableSignposts(0, 0);
  if (v29)
  {
    v29 = kdebug_trace();
  }

  if (*(a1 + 64) == 1 && *(*(a1 + 40) + 2849) == 1)
  {
    v44 = v4;
    v45 = v3;
    v30 = *(*(*(a1 + 80) + 32) + 144);
    v31 = [objc_msgSend(MEMORY[0x1E69741E8] alloc)];
    [v31 setFunctionCount_];
    v32 = [v47 newVisibleFunctionTableWithDescriptor:v31 stage:1];
    *v50 = v32;
    if ([v30 count])
    {
      v33 = 0;
      do
      {
        v34 = [v30 objectAtIndex_];
        v35 = [v47 functionHandleWithFunction:v34 stage:1];
        [v32 setFunction:v35 atIndex:v33];
        if (v35)
        {
        }

        if (v34)
        {
        }

        ++v33;
      }

      while ([v30 count] > v33);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((*(a1 + 32) + 96), v50);
    if (*v50)
    {
    }

    v4 = v44;
    v3 = v45;
    v29 = v31;
    if (v31)
    {
    }

    if (v30)
    {
    }
  }

  v36 = *(a1 + 32);
  v37 = *(a1 + 80);
  v38 = *(v37 + 144);
  v39 = *(v36 + 56);
  *&v50[16] = *(v36 + 40);
  v51 = v39;
  v52 = *(v36 + 72);
  v53 = *(v36 + 88);
  *v50 = *(v36 + 24);
  v40 = *(a1 + 56);
  if (v40)
  {
    v29 = (v40 + 8);
  }

  v41 = *(a1 + 88);
  if (v41)
  {
    v29 = (v41 + 8);
  }

  v55 = re::globalAllocators(v29)[2];
  v42 = (*(*v55 + 32))(v55, 104, 0);
  *v42 = &unk_1F5D04160;
  *(v42 + 8) = v37;
  v43 = *&v50[16];
  *(v42 + 16) = *v50;
  *(v42 + 32) = v43;
  *(v42 + 48) = v51;
  *(v42 + 64) = v52;
  *(v42 + 80) = v53;
  *(v42 + 88) = v40;
  *(v42 + 96) = v41;
  v56 = v42;
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v54);
  atomic_store(2 * (*(*(a1 + 32) + 16) == 0), (*(a1 + 32) + 208));
  __ulock_wake();
  if (v47)
  {
  }

  if (v48)
  {
  }

  if (v49)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04108;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 56) = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v9;
  v10 = *(a1 + 88);
  *(a2 + 88) = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  *(a2 + 96) = *(a1 + 96);
  return a2;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04108;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a1 + 32) = 0;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = 0;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a2 + 96) = *(a1 + 96);
  return a2;
}

re *re::internal::destroyPersistent<re::FixedArray<NS::SharedPtr<MTL::Function>>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    if (*v1)
    {
      v3 = *(v1 + 1);
      if (v3)
      {
        v4 = *(v1 + 2);
        v5 = 8 * v3;
        do
        {
          if (*v4)
          {

            *v4 = 0;
          }

          ++v4;
          v5 -= 8;
        }

        while (v5);
        (*(**v1 + 40))(*v1, *(v1 + 2));
        *(v1 + 1) = 0;
        *(v1 + 2) = 0;
      }

      *v1 = 0;
    }

    v6 = *(*v2 + 40);

    return v6(v2, v1);
  }

  return result;
}

void *re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D04160;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[11];
  if (v3)
  {

    a1[11] = 0;
  }

  return a1;
}

void re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D04160;
  v2 = a1[12];
  if (v2)
  {

    a1[12] = 0;
  }

  v3 = a1[11];
  if (v3)
  {

    a1[11] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::operator()(uint64_t a1)
{
  result = re::DrawingManager::releasePipelineState(*(*(a1 + 8) + 112), (a1 + 16));
  --*(*(*(a1 + 8) + 112) + 96);
  return result;
}

uint64_t re::internal::MoveOnlyCallable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_0::operator() const(void)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04160;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 66) = *(a1 + 66);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = v2;
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a2;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D041B0;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = 0;
  *(a1 + 32) = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = v8;
  return a1;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D041B0;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D041B0;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 56), *(a1 + 8), &v7);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::constructFunctionLabel(&v4, *(a1 + 24) + 32);
  v2 = v7;
  if (v5)
  {
    v3 = *&v6[7];
  }

  else
  {
    v3 = v6;
  }

  [v7 setLabel_];
  [*(a1 + 16) setVertexFunction_];
  dispatch_group_leave(*(a1 + 40));
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_1,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D041B0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v7;
  return a2;
}

void *re::constructFunctionLabel(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a2 + 16) + 32);
    v7 = 200 * v4;
    do
    {
      v8 = *v6;
      v6 += 25;
      a1 = strlen(v8);
      v5 += a1 + 1;
      v7 -= 200;
    }

    while (v7);
    v9 = v5 + 10;
  }

  else
  {
    v9 = 1;
  }

  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  result = re::DynamicString::setCapacity(v3, v9);
  if (*(a2 + 8))
  {
    result = re::DynamicString::append(v3, "Linked: ", 8uLL);
    v11 = *(a2 + 8);
    if (v11)
    {
      v12 = (*(a2 + 16) + 32);
      v13 = 200 * v11;
      do
      {
        v14 = *v12;
        v12 += 25;
        result = re::DynamicString::appendf(v3, "%s ", v14);
        v13 -= 200;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::Callable(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5D04208;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = 0;
  *(a1 + 32) = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 56) = v8;
  return a1;
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D04208;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D04208;

  v2 = *(a1 + 24);
  if (v2)
  {

    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::operator()(uint64_t a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::mtl::Library::makeFunctionWithDescriptor((a1 + 56), *(a1 + 8), &v7);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::constructFunctionLabel(&v4, *(a1 + 24) + 56);
  v2 = v7;
  if (v5)
  {
    v3 = *&v6[7];
  }

  else
  {
    v3 = v6;
  }

  [v7 setLabel_];
  [*(a1 + 16) setFragmentFunction_];
  dispatch_group_leave(*(a1 + 40));
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  if (v2)
  {
  }
}

uint64_t re::internal::Callable<re::dispatchRenderPipelineStateCompilation(re::RenderManager const&,re::SharedPtr<re::MaterialPipelineData const>,re::PipelineStateCache *,NS::SharedPtr<MTL::RenderPipelineDescriptor>,NS::SharedPtr<MTL::FunctionConstantValues>,re::SharedPtr<re::CachedPipelineState>,re::MaterialTechniqueDefinition const*,BOOL,re::AttributeTable const&,re::Slice<re::AttributeResolution> const&,unsigned long long,BOOL,BOOL,MTL::BinaryArchive *)::$_2,void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D04208;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v7;
  return a2;
}

uint64_t re::Hash<re::PipelineStateCacheKey>::operator()(int a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(a2, 0x2CuLL, 0, v10);
  v3 = (v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2[7] ^ (a2[7] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2[7] ^ (a2[7] >> 30))) >> 27));
  v5 = ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (v4 ^ (v4 >> 31))) ^ v3;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 64)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 64)) >> 27));
  v7 = ((v6 ^ (v6 >> 31)) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a2 + 65)) ^ ((0xBF58476D1CE4E5B9 * *(a2 + 65)) >> 27));
  return ((v8 ^ (v8 >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
}

void re::CachedPipelineState::~CachedPipelineState(re::CachedPipelineState *this)
{
  *this = &unk_1F5D04260;
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  v3 = *(this + 12);
  if (v3)
  {

    *(this + 12) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D04260;
  v2 = *(this + 25);
  if (v2)
  {

    *(this + 25) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  v3 = *(this + 12);
  if (v3)
  {

    *(this + 12) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {

    *(this + 2) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(uint64_t a1, int *a2)
{
  v4 = re::Hash<re::PipelineStateCacheKey>::operator()(&v6, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v4, &v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 80;
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>@<X0>(uint64_t result@<X0>, int *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result)
  {
    v4 = a3 % *(result + 24);
    v6 = *(*(result + 8) + 4 * v4);
    if (v6 == 0x7FFFFFFF)
    {
      v7 = 0x7FFFFFFF;
    }

    else
    {
      v8 = *(result + 16);
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      v12 = a2[3];
      v13 = a2[4];
      v14 = a2[5];
      result = a2[6];
      v15 = a2[7];
      v16 = a2[8];
      v17 = a2[9];
      v18 = a2[10];
      v19 = *(a2 + 7);
      v20 = *(a2 + 64);
      v5 = 0x7FFFFFFF;
      v7 = 0x7FFFFFFF;
      v21 = *(a2 + 65);
      while (1)
      {
        v22 = v6;
        v23 = v8 + 96 * v6;
        v25 = *(v23 + 8);
        v24 = v23 + 8;
        if (v25 == v9 && *(v24 + 4) == v10 && *(v24 + 8) == v11 && *(v24 + 12) == v12 && *(v24 + 16) == v13 && *(v24 + 20) == v14 && *(v24 + 24) == result && *(v24 + 28) == v15 && *(v24 + 32) == v16 && *(v24 + 36) == v17 && *(v24 + 40) == v18 && *(v24 + 56) == v19 && *(v24 + 64) == v20 && *(v24 + 65) == v21)
        {
          break;
        }

        v6 = *(v8 + 96 * v22) & 0x7FFFFFFF;
        v7 = v22;
        if (v6 == 0x7FFFFFFF)
        {
          v7 = v22;
          goto LABEL_22;
        }
      }

      v5 = v22;
    }
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_22:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addInternal<re::PipelineStateCacheKey const&,re::SharedPtr<re::CachedPipelineState> const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  v9 = *(a3 + 32);
  v8 = *(a3 + 48);
  v10 = *(a3 + 64);
  *(v7 + 24) = *(a3 + 16);
  *(v7 + 72) = v10;
  *(v7 + 56) = v8;
  *(v7 + 40) = v9;
  v11 = *a4;
  *(v7 + 80) = *a4;
  v12 = v7 + 80;
  if (v11)
  {
    v13 = (v11 + 8);
  }

  ++*(a1 + 40);
  return v12;
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::move(a1, v9);
      re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24), *(v7 + v5 + 88));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 56);
        v10 = *(v8 + 40);
        v11 = *(v8 + 72);
        *(result + 24) = *(v8 + 24);
        *(result + 72) = v11;
        *(result + 40) = v10;
        *(result + 56) = v9;
        *(result + 8) = *(v8 + 8);
        v7 = *(a2 + 16);
        *(result + 80) = *(v7 + v5 + 80);
        *(v7 + v5 + 80) = 0;
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 96;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_16, 4 * v10);
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

__IOSurface *re::DeformationVertexBufferState::LockedSurfaces::ensureIOSurfaceLocked(re::DeformationVertexBufferState::LockedSurfaces *this, Buffer *a2)
{
  v11 = a2;
  result = [(Buffer *)a2 iosurface];
  if (result)
  {
    v4 = result;
    if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(this, &v11))
    {
      return IOSurfaceGetBaseAddress(v4);
    }

    IOSurfaceLock(v4, 1u, 0);
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(this + 6);
    if (v7)
    {
      v8 = v6 % v7;
      v9 = *(*(this + 1) + 4 * (v6 % v7));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(this + 2);
        if (*(v10 + 24 * v9 + 16) != v11)
        {
          while (1)
          {
            LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
            if (v9 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v10 + 24 * v9 + 16) == v11)
            {
              return IOSurfaceGetBaseAddress(v4);
            }
          }

          goto LABEL_10;
        }

        return IOSurfaceGetBaseAddress(v4);
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

LABEL_10:
    re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::addAsCopy(this, v8, v6, &v11, &v11);
    ++*(this + 10);
    return IOSurfaceGetBaseAddress(v4);
  }

  return result;
}

void re::DeformationVertexBufferState::LockedSurfaces::unlockAll(re::DeformationVertexBufferState::LockedSurfaces *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 2) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    IOSurfaceUnlock([*(*(this + 2) + 24 * v3 + 16) iosurface], 1u, 0);
    v6 = *(this + 8);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 2) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::clear(this);
}

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_46_0, 4 * v2);
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

        v4 += 24;
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

void *re::DeformationStack::buildCachedData(re::DeformationStack *this)
{
  v2 = *this;
  if (!*this)
  {
LABEL_14:
    result = memset(this + 10 * v2 + 688, 255, 10 * (9 - v2) + 10);
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v27 = 0;
    if (v2)
    {
      goto LABEL_17;
    }

    return result;
  }

  v3 = 0;
  v4 = this + 48;
  v5 = this + 688;
  do
  {
    if (!v3)
    {
      v7 = 0;
LABEL_11:
      memset(&v5[10 * v3 + v7], 255, (10 - v7));
      goto LABEL_12;
    }

    v6 = 0;
    v7 = 0;
    v8 = *&v4[64 * v3 + 8];
    do
    {
      v9 = &v4[64 * (~v6 + v3)];
      v11 = *(v9 + 2);
      v10 = v9 + 16;
      if ((v11 & v8) != 0)
      {
        v12 = v7++;
        v5[10 * v3 + v12] = ~v6 + v3;
        v8 &= ~*v10;
      }

      ++v6;
    }

    while (v3 != v6);
    if (v7 <= 9u)
    {
      goto LABEL_11;
    }

LABEL_12:
    ++v3;
  }

  while (v3 != v2);
  if (v2 < 0xA)
  {
    goto LABEL_14;
  }

  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
LABEL_17:
  v14 = 0;
  v15 = this + 48;
  v16 = this + 4;
  v17 = this + 792;
  do
  {
    v18 = (v2 + ~v14);
    v19 = *&v15[64 * v18 + 32];
    v20 = v26;
    if (v19 != -1)
    {
      v21 = *&v16[4 * v18];
      if (v26 >= v25)
      {
        re::DynamicArray<re::RigNodeConstraint>::growCapacity(&v24, v26 + 1);
        v20 = v26;
      }

      v22 = v28 + 16 * v20;
      *v22 = v21;
      *(v22 + 8) = v19;
      v20 = ++v26;
      ++v27;
    }

    v23[0] = v28;
    v23[1] = v20;
    re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::operator=(&v17[24 * (v2 + ~v14++)], v23);
  }

  while (v2 != v14);
  result = v24;
  if (v24)
  {
    if (v28)
    {
      return (*(*v24 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v23, 0, 36);
      *&v23[36] = 0x7FFFFFFFLL;
      re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::init(v23, v4, v2);
      v5 = *a1;
      *a1 = *v23;
      v6 = a1[2];
      v7 = *&v23[8];
      *v23 = v5;
      *&v23[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v23[24];
      *&v23[24] = *(a1 + 3);
      v8 = *&v23[32];
      *(a1 + 3) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 1) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 6);
            v17 = v15 % v16;
            v18 = *(a1 + 9);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 8);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 6);
                v19 = *(a1 + 8);
                v13 = a1[1];
              }

              *(a1 + 8) = v19 + 1;
              v20 = a1[2];
              v21 = *(v20 + 24 * v18 + 8);
            }

            else
            {
              v20 = a1[2];
              v21 = *(v20 + 24 * v18 + 8);
              *(a1 + 9) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 24 * v18 + 8) = v21 | 0x80000000;
            *(a1[2] + 24 * v18 + 8) = *(a1[2] + 24 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(a1[2] + 24 * v18) = v15;
            *(a1[2] + 24 * v18 + 16) = *v14;
            v13 = a1[1];
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 7) + 1;
            *(a1 + 7) = v12;
          }

          ++v11;
          v14 += 3;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v23);
    }
  }

  else
  {
    if (v2)
    {
      v22 = v2;
    }

    else
    {
      v22 = 3;
    }
  }
}

void re::HashSetBase<MTL::Buffer *,MTL::Buffer *,re::internal::ValueAsKey<MTL::Buffer *>,re::Hash<MTL::Buffer *>,re::EqualTo<MTL::Buffer *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_46_0, 4 * v10);
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

uint64_t *re::FixedArray<re::Pair<re::DeformerType,unsigned long long,true>>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 8);
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
      *result = 0;
      result[1] = 0;
      result += 2;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = 0;
  return result;
}

_anonymous_namespace_ *re::SkinnedMeshBoundsEstimator::init<re::SkinningInfluence>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int **a5, unsigned int a6, double a7, double a8)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  if (a6)
  {
    v16 = a4[1];
    if (v16 >= a6)
    {
      v17 = 0;
      v18 = 0;
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 1.0;
      do
      {
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*a4 + 8 * v18 + 4);
        v21 = 0.0;
        v22 = (v18 + a6);
        do
        {
          if (v19 == v18)
          {
            re::internal::assertLog(6, a2, _D0, a8, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v16);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v53);
            __break(1u);
            goto LABEL_40;
          }

          v23 = *v20;
          v20 += 2;
          *&v21 = *&v21 + fabsf(v23);
          ++v18;
        }

        while (v22 != v18);
        if (*&v21 > 0.0)
        {
          if (*&a8 > *&v21)
          {
            *&a8 = *&v21;
          }

          if (*&_D0 < *&v21)
          {
            *&_D0 = *&v21;
          }

          *(a1 + 48) = LODWORD(_D0);
          *(a1 + 52) = LODWORD(a8);
        }

        ++v17;
      }

      while (v17 != v16 / a6);
    }
  }

  else
  {
    v24 = a5[1];
    if (v24)
    {
      v25 = 0;
      v26 = *a5;
      v27 = &(*a5)[v24];
      v28 = a4[1];
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 1.0;
      do
      {
        v29 = *v26;
        if (v25 < *v26)
        {
          v30 = v25;
          if (v28 > v25)
          {
            v30 = v28;
          }

          v31 = (*a4 + 8 * v25 + 4);
          v32 = v29 - v25;
          v33 = v30 - v25;
          v34 = 0.0;
          do
          {
            if (!v33)
            {
LABEL_40:
              re::internal::assertLog(6, a2, _D0, a8, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v30, v28);
              result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v54);
              __break(1u);
              return result;
            }

            v35 = *v31;
            v31 += 2;
            *&v34 = *&v34 + fabsf(v35);
            --v33;
            --v32;
          }

          while (v32);
          if (*&v34 > 0.0)
          {
            if (*&a8 > *&v34)
            {
              *&a8 = *&v34;
            }

            if (*&_D0 < *&v34)
            {
              *&_D0 = *&v34;
            }

            *(a1 + 48) = LODWORD(_D0);
            *(a1 + 52) = LODWORD(a8);
          }
        }

        ++v26;
        v25 = v29;
      }

      while (v26 != v27);
    }
  }

  re::FixedArray<re::AABB>::operator=(a1, a2);
  re::FixedArray<re::AABB>::operator=((a1 + 24), a2);
  result = re::FixedArray<re::Matrix4x4<float>>::operator=((a1 + 56), a3);
  v37 = *(a1 + 64);
  if (v37)
  {
    DWORD1(v38) = 0;
    *(&v38 + 1) = 0;
    *&v38 = 1.0 / *(a1 + 52);
    *&v40 = 0;
    HIDWORD(v40) = 0;
    LODWORD(v39) = 0;
    *(&v39 + 1) = 0;
    *(&v39 + 1) = *&v38;
    *(&v40 + 2) = *&v38;
    v41 = *(a1 + 72);
    v42 = &v41[4 * v37];
    do
    {
      v43 = 0;
      v44 = *v41;
      v45 = v41[1];
      v46 = v41[2];
      v47 = v41[3];
      v55[0] = v38;
      v55[1] = v39;
      v55[2] = v40;
      v55[3] = xmmword_1E30474D0;
      do
      {
        v56[v43] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(v55[v43])), v45, *&v55[v43], 1), v46, v55[v43], 2), v47, v55[v43], 3);
        ++v43;
      }

      while (v43 != 4);
      v48 = v56[1];
      v49 = v56[2];
      v50 = v56[3];
      *v41 = v56[0];
      v41[1] = v48;
      v41[2] = v49;
      v41[3] = v50;
      v41 += 4;
    }

    while (v41 != v42);
  }

  return result;
}

_anonymous_namespace_ *re::SkinnedMeshBoundsEstimator::init<re::PackedSkinningInfluence>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int **a5, unsigned int a6, double a7, double a8, double a9)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  if (a6)
  {
    v17 = a4[1];
    if (v17 >= a6)
    {
      v18 = 0;
      v19 = 0;
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 880803842;
      LODWORD(a9) = 1.0;
      do
      {
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = 0.0;
        v22 = (v19 + a6);
        do
        {
          if (v20 == v19)
          {
            re::internal::assertLog(6, a2, _D0, a8, a9, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v17);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v52);
            __break(1u);
            goto LABEL_40;
          }

          *&v21 = *&v21 + ((*(*a4 + 4 * v19++) & 0x3FFFFF) * 0.00000023842);
        }

        while (v22 != v19);
        if (*&v21 > 0.0)
        {
          if (*&a9 > *&v21)
          {
            *&a9 = *&v21;
          }

          if (*&_D0 < *&v21)
          {
            *&_D0 = *&v21;
          }

          *(a1 + 48) = LODWORD(_D0);
          *(a1 + 52) = LODWORD(a9);
        }

        ++v18;
      }

      while (v18 != v17 / a6);
    }
  }

  else
  {
    v23 = a5[1];
    if (v23)
    {
      v24 = 0;
      v25 = *a5;
      v26 = &(*a5)[v23];
      v27 = a4[1];
      LODWORD(_D0) = 1.0;
      LODWORD(a8) = 880803842;
      LODWORD(a9) = 1.0;
      do
      {
        v28 = *v25;
        if (v24 < *v25)
        {
          v29 = v24;
          if (v27 > v24)
          {
            v29 = v27;
          }

          v30 = (*a4 + 4 * v24);
          v31 = v28 - v24;
          v32 = v29 - v24;
          v33 = 0.0;
          do
          {
            if (!v32)
            {
LABEL_40:
              re::internal::assertLog(6, a2, _D0, a8, a9, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v27);
              result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v53);
              __break(1u);
              return result;
            }

            v34 = *v30++;
            *&v33 = *&v33 + ((v34 & 0x3FFFFF) * 0.00000023842);
            --v32;
            --v31;
          }

          while (v31);
          if (*&v33 > 0.0)
          {
            if (*&a9 > *&v33)
            {
              *&a9 = *&v33;
            }

            if (*&_D0 < *&v33)
            {
              *&_D0 = *&v33;
            }

            *(a1 + 48) = LODWORD(_D0);
            *(a1 + 52) = LODWORD(a9);
          }
        }

        ++v25;
        v24 = v28;
      }

      while (v25 != v26);
    }
  }

  re::FixedArray<re::AABB>::operator=(a1, a2);
  re::FixedArray<re::AABB>::operator=((a1 + 24), a2);
  result = re::FixedArray<re::Matrix4x4<float>>::operator=((a1 + 56), a3);
  v36 = *(a1 + 64);
  if (v36)
  {
    DWORD1(v37) = 0;
    *(&v37 + 1) = 0;
    *&v37 = 1.0 / *(a1 + 52);
    *&v39 = 0;
    HIDWORD(v39) = 0;
    LODWORD(v38) = 0;
    *(&v38 + 1) = 0;
    *(&v38 + 1) = *&v37;
    *(&v39 + 2) = *&v37;
    v40 = *(a1 + 72);
    v41 = &v40[4 * v36];
    do
    {
      v42 = 0;
      v43 = *v40;
      v44 = v40[1];
      v45 = v40[2];
      v46 = v40[3];
      v54[0] = v37;
      v54[1] = v38;
      v54[2] = v39;
      v54[3] = xmmword_1E30474D0;
      do
      {
        v55[v42] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(v54[v42])), v44, *&v54[v42], 1), v45, v54[v42], 2), v46, v54[v42], 3);
        ++v42;
      }

      while (v42 != 4);
      v47 = v55[1];
      v48 = v55[2];
      v49 = v55[3];
      *v40 = v55[0];
      v40[1] = v47;
      v40[2] = v48;
      v40[3] = v49;
      v40 += 4;
    }

    while (v40 != v41);
  }

  return result;
}

uint64_t re::SkinnedMeshBoundsEstimator::deinit(re::SkinnedMeshBoundsEstimator *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this);
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 6) = _D0;

  return re::FixedArray<CoreIKTransform>::deinit(this + 7);
}

void re::SkinnedMeshBoundsEstimator::updateKnownBoundingBoxes(_anonymous_namespace_ *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::AABB>::operator=(a1, a2);
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = a3[1];
      if (v10 <= i)
      {
        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v10);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v13, v14);
        __break(1u);
LABEL_8:
        v17 = 0;
        memset(v26, 0, sizeof(v26));
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

        v21 = 468;
        v22 = 2048;
        v23 = i;
        v24 = 2048;
        v25 = v3;
        _os_log_send_and_compose_impl(v12, &v17, v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
        _os_crash_msg();
        __break(1u);
      }

      v28 = __invert_f4(*(*a3 + v8));
      v3 = *(a1 + 8);
      if (v3 <= i)
      {
        goto LABEL_8;
      }

      *(*(a1 + 9) + v8) = v28;
      v8 += 64;
    }
  }
}

float32x4_t re::SkinnedMeshBoundsEstimator::updateEstimatedBoundingBoxes(uint64_t a1, void *a2, float32x4_t result)
{
  v6 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v70 = *(a1 + 64);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 8);
      if (v10 <= i)
      {
        goto LABEL_34;
      }

      v10 = *(a1 + 32);
      if (v10 <= i)
      {
        goto LABEL_38;
      }

      v11 = *(a1 + 16) + v9;
      v12 = (*(a1 + 40) + v9);
      result = *v11;
      v13 = *(v11 + 16);
      *v12 = *v11;
      v12[1] = v13;
      v9 += 32;
    }
  }

  if (v70)
  {
    i = 0;
    v14.i64[0] = 0;
    v15.i32[0] = 0;
    v15.i32[3] = 0;
    *(v15.i64 + 4) = *(a1 + 52);
    v14.i64[1] = *(v15.i64 + 4);
    v10 = v73;
    v16 = xmmword_1E30474D0;
    v68 = *(a1 + 52);
    v69 = v14;
    v71 = v15;
    while (1)
    {
      v17 = v6[1];
      if (v17 <= i)
      {
        goto LABEL_50;
      }

      v18 = 0;
      v19 = (*v6 + (i << 6));
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      *v73 = *v19;
      *&v73[16] = v20;
      *&v73[32] = v21;
      v74 = v22;
      do
      {
        *(&v82 + v18) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, COERCE_FLOAT(*&v73[v18])), v15, *&v73[v18], 1), v69, *&v73[v18], 2), v16, *&v73[v18], 3);
        v18 += 16;
      }

      while (v18 != 64);
      v5 = *(a1 + 64);
      if (v5 <= i)
      {
        goto LABEL_51;
      }

      v23 = 0;
      v24 = (*(a1 + 72) + (i << 6));
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      v28 = v82;
      v29 = v83;
      v30 = v84;
      v31 = v85;
      *v73 = *v24;
      *&v73[16] = v25;
      *&v73[32] = v26;
      v74 = v27;
      do
      {
        *(&v82 + v23) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v73[v23])), v29, *&v73[v23], 1), v30, *&v73[v23], 2), v31, *&v73[v23], 3);
        v23 += 16;
      }

      while (v23 != 64);
      result = v82;
      *v73 = v82;
      *&v73[16] = v83;
      *&v73[32] = v84;
      v74 = v85;
      if (v8)
      {
        break;
      }

LABEL_19:
      if (++i == v70)
      {
        goto LABEL_20;
      }
    }

    v32 = 0;
    v5 = 0;
    while (1)
    {
      v3 = *(a1 + 8);
      if (v3 <= v5)
      {
        break;
      }

      v3 = *(a1 + 32);
      if (v3 <= v5)
      {
        goto LABEL_30;
      }

      v33 = (*(a1 + 40) + v32);
      re::AABB::transform(*(a1 + 16) + v32, v73, &v82);
      v16 = xmmword_1E30474D0;
      v15 = v71;
      v34 = v82;
      v35 = *v33;
      v36 = v33[1];
      v35.i32[3] = 0;
      v34.i32[3] = 0;
      *v33 = vminnmq_f32(v35, v34);
      v37 = v83;
      v36.i32[3] = 0;
      v37.i32[3] = 0;
      result = vmaxnmq_f32(v36, v37);
      v33[1] = result;
      v5 = (v5 + 1);
      v32 += 32;
      if (v8 == v5)
      {
        goto LABEL_19;
      }
    }

    v72 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v75 = 136315906;
    *&v75[4] = "operator[]";
    v76 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v77 = 468;
    v78 = 2048;
    v79 = v5;
    v80 = 2048;
    v81 = v3;
    _os_log_send_and_compose_impl(v45, &v72, &v82, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v75, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v72 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v75 = 136315906;
    *&v75[4] = "operator[]";
    v76 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v77 = 468;
    v78 = 2048;
    v79 = v5;
    v80 = 2048;
    v81 = v3;
    _os_log_send_and_compose_impl(v48, &v72, &v82, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v75, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    *v75 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    *&v73[12] = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    *&v73[14] = 468;
    *&v73[18] = 2048;
    *&v73[20] = i;
    *&v73[28] = 2048;
    *&v73[30] = v10;
    _os_log_send_and_compose_impl(v51, v75, &v82, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_38:
    *v75 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    *&v73[12] = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    *&v73[14] = 468;
    *&v73[18] = 2048;
    *&v73[20] = i;
    *&v73[28] = 2048;
    *&v73[30] = v10;
    _os_log_send_and_compose_impl(v54, v75, &v82, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_42:
    *v75 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    *&v73[12] = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    *&v73[14] = 468;
    *&v73[18] = 2048;
    *&v73[20] = v6;
    *&v73[28] = 2048;
    *&v73[30] = v3;
    _os_log_send_and_compose_impl(v57, v75, &v82, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_46:
    *v75 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    *&v73[12] = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    *&v73[14] = 468;
    *&v73[18] = 2048;
    *&v73[20] = v6;
    *&v73[28] = 2048;
    *&v73[30] = v3;
    _os_log_send_and_compose_impl(v60, v75, &v82, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v17);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v65);
    __break(1u);
LABEL_51:
    *v75 = 0;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v73 = 136315906;
    *&v73[4] = "operator[]";
    *&v73[12] = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *&v73[14] = 468;
    *&v73[18] = 2048;
    *&v73[20] = i;
    *&v73[28] = 2048;
    *&v73[30] = v5;
    _os_log_send_and_compose_impl(v63, v75, &v82, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v73, 38, v66, v67);
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  if (v8)
  {
    v38 = 0;
    v6 = 0;
    while (1)
    {
      v3 = *(a1 + 8);
      if (v3 <= v6)
      {
        goto LABEL_42;
      }

      v3 = *(a1 + 32);
      if (v3 <= v6)
      {
        goto LABEL_46;
      }

      v39 = (*(a1 + 16) + v38);
      v40 = (*(a1 + 40) + v38);
      v41 = *(a1 + 48);
      result = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(*v40, *v39), v41));
      v42 = vaddq_f32(v39[1], vmulq_n_f32(vsubq_f32(v40[1], v39[1]), v41));
      *v40 = result;
      v40[1] = v42;
      v6 = (v6 + 1);
      v38 += 32;
      if (v8 == v6)
      {
        return result;
      }
    }
  }

  return result;
}

re::DynamicString *re::renderGraphResourceOperationTypeToString@<X0>(_anonymous_namespace_ *a1@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = *a1;
  v4 = off_1E871F2C0[v3];
}

void *re::renderGraphResourceSetupToString@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X8>)
{
  v11 = a7;
  v162 = *MEMORY[0x1E69E9840];
  a7[1] = 0;
  v12 = a7 + 1;
  a7[2] = 0;
  a7[3] = 0;
  re::DynamicString::setCapacity(v11, 0);
  if (*v12)
  {
    *v12 = 1;
    v13 = *(v11 + 2);
  }

  else
  {
    *v12 = 0;
    v13 = v11 + 9;
  }

  *v13 = 0;
  re::DynamicString::setCapacity(v11, 0x400uLL);
  v14 = *(a1 + 1);
  if (v14)
  {
    v15 = *(a1 + 2);
  }

  else
  {
    v15 = a1 + 9;
  }

  v16 = v14 >> 1;
  v17 = v14 >> 1;
  if (*(a1 + 1))
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  re::DynamicString::append(v11, v15, v18);
  if (*a4 == 1)
  {
    re::DynamicString::format(&v157, "\tNodes: %zu\n", v19, *(a3 + 16));
    v20 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v21 = v158;
    }

    else
    {
      v21 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v22 = *(&v157 + 1) >> 1;
    }

    else
    {
      v22 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v21, v22);
    if (v157 && v20)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 16))
    {
      v23 = 0;
      do
      {
        re::DynamicString::format(&v157, "\t\t%s\n", v19, *(*(*(a3 + 32) + 8 * v23) + 16));
        v24 = BYTE8(v157) & 1;
        if (BYTE8(v157))
        {
          v25 = v158;
        }

        else
        {
          v25 = &v157 + 9;
        }

        if (BYTE8(v157))
        {
          v26 = *(&v157 + 1) >> 1;
        }

        else
        {
          v26 = BYTE8(v157) >> 1;
        }

        re::DynamicString::append(v11, v25, v26);
        if (v157)
        {
          v27 = v24 == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          (*(*v157 + 40))();
        }

        ++v23;
      }

      while (*(a3 + 16) > v23);
    }
  }

  v28 = a2;
  if (*a5 == 1)
  {
    re::DynamicString::format(&v157, "\tSteps: %zu\n", v19, *(a3 + 56));
    v29 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v30 = v158;
    }

    else
    {
      v30 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v31 = *(&v157 + 1) >> 1;
    }

    else
    {
      v31 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v30, v31);
    v32 = v157;
    if (v157 && v29)
    {
      v32 = (*(*v157 + 40))();
    }

    if (*(a3 + 56))
    {
      *(&v145 + 1) = 0;
      v146 = 0uLL;
      re::DynamicString::setCapacity(&v145, 0);
      if (BYTE8(v145))
      {
        *(&v145 + 1) = 1;
        v33 = v146;
      }

      else
      {
        BYTE8(v145) = 0;
        v33 = &v145 + 9;
      }

      *v33 = 0;
      re::DynamicString::setCapacity(&v145, 0x80uLL);
      re::DynamicString::format(&v157, "\t\t%-9s%-11s%-11s%-11s%-12s%-26s%-20s%-14s%s\n", v34, "Resource", "Attachment", "ForceClear", "IsOptional", "RenderStage", "StepType", "ResourceDescription", "EnableNoClear", "Name");
      re::DynamicString::operator=(&v145, &v157);
      if (v157 && (BYTE8(v157) & 1) != 0)
      {
        (*(*v157 + 40))();
      }

      re::DynamicString::trimExcess(&v145);
      if (BYTE8(v145))
      {
        v35 = v146;
      }

      else
      {
        v35 = &v145 + 9;
      }

      if (BYTE8(v145))
      {
        v36 = *(&v145 + 1) >> 1;
      }

      else
      {
        v36 = BYTE8(v145) >> 1;
      }

      re::DynamicString::append(v11, v35, v36);
      v37 = v145;
      if (v145 && (BYTE8(v145) & 1) != 0)
      {
        v37 = (*(*v145 + 40))();
      }

      if (*(a3 + 56))
      {
        v38 = 0;
        v39 = 0;
        v130 = a3;
        v131 = v11;
        do
        {
          v40 = (*(a3 + 72) + v38);
          v145 = *v40;
          v146 = v40[1];
          v147 = v40[2];
          v148 = v40[3];
          v135 = 0;
          v136 = 0;
          v137 = 0;
          re::DynamicString::setCapacity(&v134, 0);
          if (v135)
          {
            v135 = 1;
            v41 = v136;
          }

          else
          {
            LOBYTE(v135) = 0;
            v41 = &v135 + 1;
          }

          *v41 = 0;
          re::DynamicString::setCapacity(&v134, 0x80uLL);
          v133 = v145;
          v42 = v147;
          v43 = BYTE1(v147);
          v44 = DWORD1(v148);
          v45 = re::renderGraphResourceOperationTypeToString((&v145 + 4), &v142);
          v139 = 0;
          v140 = 0;
          v141 = 0;
          re::DynamicString::setCapacity(&v138, 0);
          re::DynamicString::setCapacity(&v138, 0x20uLL);
          if (v139)
          {
            v139 = 1;
            v46 = v140;
          }

          else
          {
            LOBYTE(v139) = 0;
            v46 = &v139 + 1;
          }

          *v46 = 0;
          v47 = *(v28 + 296);
          v48 = *(v47 + 16);
          if (v48 <= v44)
          {
            v144 = 0;
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

            v152 = 789;
            v153 = 2048;
            v154 = v44;
            v155 = 2048;
            v156 = v48;
            _os_log_send_and_compose_impl(v117, &v144, &v157, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v127, v128);
            _os_crash_msg();
            __break(1u);
LABEL_243:
            v144 = 0;
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

            v152 = 789;
            v153 = 2048;
            v154 = v44;
            v155 = 2048;
            v156 = v28;
            _os_log_send_and_compose_impl(v120, &v144, &v157, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v127, v128);
            _os_crash_msg();
            __break(1u);
LABEL_247:
            v144 = 0;
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

            v152 = 789;
            v153 = 2048;
            v154 = v44;
            v155 = 2048;
            v156 = v48;
            _os_log_send_and_compose_impl(v123, &v144, &v157, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v127, v128);
            _os_crash_msg();
            __break(1u);
LABEL_251:
            v144 = 0;
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

            v152 = 789;
            v153 = 2048;
            v154 = v48;
            v155 = 2048;
            v156 = v28;
            _os_log_send_and_compose_impl(v126, &v144, &v157, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v149, 38, v127, v128);
            _os_crash_msg();
            __break(1u);
          }

          if (*(*(v47 + 32) + 48 * v44))
          {
            re::DynamicString::append(&v138, "Buffer", 6uLL);
          }

          else
          {
            re::DynamicString::append(&v138, "Target", 6uLL);
            if (DWORD1(v145) <= 8 && ((1 << SBYTE4(v145)) & 0x1EE) != 0)
            {
              v49 = *(v28 + 296);
              v48 = *(v49 + 16);
              if (v48 <= v44)
              {
                goto LABEL_247;
              }

              v48 = *(*(v49 + 32) + 48 * v44 + 28);
              v50 = *(v28 + 304);
              v28 = *(v50 + 16);
              if (v28 <= v48)
              {
                goto LABEL_251;
              }

              v51 = *(*(v50 + 32) + 112 * v48 + 60);
              re::DynamicString::append(&v138, " ", 1uLL);
              v52 = "DontCare";
              if (v51 == 1)
              {
                v52 = "Load";
              }

              if (v51 == 2)
              {
                v48 = "Clear";
              }

              else
              {
                v48 = v52;
              }

              v53 = strlen(v48);
              re::DynamicString::append(&v138, v48, v53);
              v28 = a2;
            }
          }

          re::DynamicString::resize(&v138, 0x13uLL, 0);
          v54 = *(v28 + 296);
          v28 = *(v54 + 16);
          if (v28 <= v44)
          {
            goto LABEL_243;
          }

          if (v43)
          {
            v55 = "True";
          }

          else
          {
            v55 = "False";
          }

          if (v42)
          {
            v56 = "True";
          }

          else
          {
            v56 = "False";
          }

          re::StringID::StringID(&v149, (*(v54 + 32) + 48 * v44 + 8));
          v128 = v55;
          v127 = v56;
          re::DynamicString::format(&v157, "\t\t%-9d%-11d%-11s%-11s%-12s%-26s%-20s%-14s%s\n", v57, v44, v133);
          re::DynamicString::operator=(&v134, &v157);
          v58 = v157;
          a3 = v130;
          v11 = v131;
          v28 = a2;
          if (v157)
          {
            if (BYTE8(v157))
            {
              v58 = (*(*v157 + 40))();
            }

            v157 = 0u;
            v158 = 0u;
          }

          if (v149)
          {
            if (v149)
            {
            }
          }

          if (v138 && (v139 & 1) != 0)
          {
            (*(*v138 + 40))();
          }

          if (v142 && (v143 & 1) != 0)
          {
            (*(*v142 + 40))();
          }

          re::DynamicString::trimExcess(&v134);
          if (v135)
          {
            v59 = v136;
          }

          else
          {
            v59 = &v135 + 1;
          }

          if (v135)
          {
            v60 = v135 >> 1;
          }

          else
          {
            v60 = v135 >> 1;
          }

          re::DynamicString::append(v131, v59, v60);
          v37 = v134;
          if (v134 && (v135 & 1) != 0)
          {
            v37 = (*(*v134 + 40))();
          }

          ++v39;
          v38 += 64;
        }

        while (*(v130 + 56) > v39);
      }
    }
  }

  if (*a6 == 1)
  {
    re::DynamicString::format(&v157, "\tProperties:\n", v19);
    v61 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v62 = v158;
    }

    else
    {
      v62 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v63 = *(&v157 + 1) >> 1;
    }

    else
    {
      v63 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v62, v63);
    if (v157 && v61)
    {
      (*(*v157 + 40))();
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v64, "Key", "Value");
    v65 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v66 = v158;
    }

    else
    {
      v66 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v67 = *(&v157 + 1) >> 1;
    }

    else
    {
      v67 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v66, v67);
    if (v157 && v65)
    {
      (*(*v157 + 40))();
    }

    re::DynamicString::format(&v157, "\t\t%-35s%llu\n", v68, "WriteProtectionOptions", *(a3 + 160));
    v69 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v70 = v158;
    }

    else
    {
      v70 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v71 = *(&v157 + 1) >> 1;
    }

    else
    {
      v71 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v70, v71);
    if (v157 && v69)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 168))
    {
      v73 = "True";
    }

    else
    {
      v73 = "False";
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v72, "HasSideEffect", v73);
    v74 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v75 = v158;
    }

    else
    {
      v75 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v76 = *(&v157 + 1) >> 1;
    }

    else
    {
      v76 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v75, v76);
    if (v157 && v74)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 169))
    {
      v78 = "True";
    }

    else
    {
      v78 = "False";
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v77, "HasCustomEncoders", v78);
    v79 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v80 = v158;
    }

    else
    {
      v80 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v81 = *(&v157 + 1) >> 1;
    }

    else
    {
      v81 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v80, v81);
    if (v157 && v79)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 170))
    {
      v83 = "True";
    }

    else
    {
      v83 = "False";
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v82, "IsParallel", v83);
    v84 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v85 = v158;
    }

    else
    {
      v85 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v86 = *(&v157 + 1) >> 1;
    }

    else
    {
      v86 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v85, v86);
    if (v157 && v84)
    {
      (*(*v157 + 40))();
    }

    re::DynamicString::format(&v157, "\t\t%-35s%zu\n", v87, "ThreadgroupMemoryLength", *(a3 + 176));
    v88 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v89 = v158;
    }

    else
    {
      v89 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v90 = *(&v157 + 1) >> 1;
    }

    else
    {
      v90 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v89, v90);
    if (v157 && v88)
    {
      (*(*v157 + 40))();
    }

    re::DynamicString::format(&v157, "\t\t%-35s%zu\n", v91, "ImageblockSampleLength", *(a3 + 184));
    v92 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v93 = v158;
    }

    else
    {
      v93 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v94 = *(&v157 + 1) >> 1;
    }

    else
    {
      v94 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v93, v94);
    if (v157 && v92)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 192) - 1 > 2)
    {
      v96 = "Automatic";
    }

    else
    {
      v96 = off_1E871F328[(*(a3 + 192) - 1)];
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v95, "TileSizeOverride", v96);
    v97 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v98 = v158;
    }

    else
    {
      v98 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v99 = *(&v157 + 1) >> 1;
    }

    else
    {
      v99 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v98, v99);
    if (v157 && v97)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 171))
    {
      v101 = "True";
    }

    else
    {
      v101 = "False";
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v100, "EnableVRR", v101);
    v102 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v103 = v158;
    }

    else
    {
      v103 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v104 = *(&v157 + 1) >> 1;
    }

    else
    {
      v104 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v103, v104);
    if (v157 && v102)
    {
      (*(*v157 + 40))();
    }

    re::DynamicString::format(&v157, "\t\t%-35s%hhu\n", v105, "ProgrammableBlendingAttachmentMask", *(a3 + 193));
    v106 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v107 = v158;
    }

    else
    {
      v107 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v108 = *(&v157 + 1) >> 1;
    }

    else
    {
      v108 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v107, v108);
    if (v157 && v106)
    {
      (*(*v157 + 40))();
    }

    if (*(a3 + 194))
    {
      v110 = "True";
    }

    else
    {
      v110 = "False";
    }

    re::DynamicString::format(&v157, "\t\t%-35s%s\n", v109, "EnableNoClearOptimization", v110);
    v111 = BYTE8(v157) & 1;
    if (BYTE8(v157))
    {
      v112 = v158;
    }

    else
    {
      v112 = &v157 + 9;
    }

    if (BYTE8(v157))
    {
      v113 = *(&v157 + 1) >> 1;
    }

    else
    {
      v113 = BYTE8(v157) >> 1;
    }

    re::DynamicString::append(v11, v112, v113);
    if (v157 && v111)
    {
      (*(*v157 + 40))();
    }
  }

  return re::DynamicString::trimExcess(v11);
}

uint64_t re::DynamicArray<re::RenderGraphResourceOperation>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigTransform>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::RenderGraphResourceOperation>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::RenderGraphResourceOperation>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::RigTransform>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), (v5 << 6) - 8);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 64 * v5, (*(a2 + 32) + (v5 << 6)), (v4 - v5) << 6);
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), (v4 << 6) - 8);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v7, "DeformerSkinningAssignLogging", v6);
      re::DeformerFeatureFlags::isSkinningAssignLoggingEnabled(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1768];
}

uint64_t re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v7, "CustomDeformerLogging", v6);
      re::DeformerFeatureFlags::isCustomDeformerLoggingEnabled(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1784];
}

uint64_t re::anonymous namespace::openSubDivTessellationMode(re::_anonymous_namespace_ *this)
{
  v3 = &re::introspect_BOOL(BOOL)::info;
  {
    v8[1] = v1;
    v8[2] = v2;
    v3 = &re::introspect_BOOL(BOOL)::info;
    if (v5)
    {
      re::Defaults::intValue(v8, "OpenSubDivTessellationMode", v6);
      v7 = HIDWORD(v8[0]);
      if (!LOBYTE(v8[0]))
      {
        v7 = 2;
      }

      v3 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  return v3[96];
}

uint64_t re::DeformerFeatureFlags::enableAppDeformation(re::DeformerFeatureFlags *this)
{
  v3 = &unk_1EE1C6000;
  {
    v8 = v1;
    v9 = v2;
    v3 = &unk_1EE1C6000;
    if (v5)
    {
      re::Defaults::BOOLValue(v7, "EnableAppDeformation", v6);
      re::DeformerFeatureFlags::enableAppDeformation(void)::enabled = v7[0] & v7[1];
      v3 = &unk_1EE1C6000;
    }
  }

  return v3[2600];
}

uint64_t re::DeformerFeatureFlags::enableLowLevelMeshDeformations(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    *&v8[9] = v1;
    *&v8[13] = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      if (re::DeformerFeatureFlags::enableAppDeformation(v5))
      {
        v7 = 1;
      }

      else
      {
        re::Defaults::BOOLValue(v8, "enableLowLevelMeshDeformations", v6);
        v7 = v8[0] & HIBYTE(v8[0]);
      }

      re::DeformerFeatureFlags::enableLowLevelMeshDeformations(void)::enabled = v7 & 1;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1800];
}

uint64_t re::DeformerFeatureFlags::enableStitchableDeformation(re::DeformerFeatureFlags *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v8 = v1;
    v9 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v7, "EnableStitchableMeshDeformation", v6);
      re::DeformerFeatureFlags::enableStitchableDeformation(void)::enabled = v7[0] & v7[1];
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[1808];
}

void re::MaterialTextureParam::setString(re::MaterialTextureParam *this, const re::DynamicString *a2)
{
  v4 = (a2 + 9);
  if (*(a2 + 1))
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v5 = (a2 + 9);
  }

  if (re::materialTextureParamIsAsset(v5, a2))
  {
    v10 = 0uLL;
    v11 = 0;
    if (*(a2 + 1))
    {
      v6 = *(a2 + 2);
    }

    else
    {
      v6 = v4;
    }

    re::AssetHandle::setSerializationString(&v10, v6, *a2);
    v7 = *(this + 8);
    if (v7 != -1)
    {
      __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v7](&v9, this);
    }

    *this = v10;
    v10 = 0uLL;
    *(this + 2) = v11;
    v11 = 0;
    *(this + 8) = 1;
    re::AssetHandle::~AssetHandle(&v10);
  }

  else
  {
    v8 = *(a2 + 2);
    if ((*(a2 + 1) & 1) == 0)
    {
      v8 = v4;
    }

    v9 = *a2;
    *&v10 = v8;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(this, &v10, &v9);
  }
}

re::MaterialTextureParam *re::MaterialTextureParam::MaterialTextureParam(re::MaterialTextureParam *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  *(this + 8) = 0;
  re::MaterialTextureParam::setString(this, a2);
  return this;
}

char *re::MaterialTextureParam::serializationString(re::MaterialTextureParam *this, uint64_t a2)
{
  if (!this)
  {
    goto LABEL_20;
  }

  v2 = *(this + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(this + 2);
      if (v3)
      {
        if (*(v3 + 8))
        {
          v4 = *(v3 + 16);
          if (!v4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v4 = (v3 + 9);
        }
      }

      else
      {
        v4 = &str_1_16;
      }

      if (*v4)
      {
LABEL_16:
        if (v4)
        {
          return v4;
        }

        else
        {
          return &str_25_10;
        }
      }

LABEL_13:
      v6 = re::AssetHandle::legacy_assetPath(this);
      if (v6[48])
      {
        v4 = *(v6 + 7);
      }

      else
      {
        v4 = v6 + 49;
      }

      goto LABEL_16;
    }

LABEL_20:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "serializationString", 104);
    result = _os_crash("assertion failure: (false) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString");
    __break(1u);
    return result;
  }

  if (*(this + 8))
  {
    return *(this + 2);
  }

  else
  {
    return this + 9;
  }
}

uint64_t re::MaterialTextureParam::introspectionSerialize(re::DynamicString *a1, uint64_t a2, uint64_t a3, re::DynamicString *this)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    re::DynamicString::operator=(this, a1);
    return 1;
  }

  if (v4 == 1)
  {

    return re::AssetHandle::introspectionSerialize(a2, a3, a1, this);
  }

  else
  {
LABEL_8:
    re::internal::assertLog(4, a2, a3, this, "assertion failure: '%s' (%s:line %i) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString", "false", "introspectionSerialize", 120);
    result = _os_crash("assertion failure: (false) Unexpected; MaterialTextureParam should be an AssetHandle or a DynamicString");
    __break(1u);
  }

  return result;
}

uint64_t re::MaterialTextureParam::introspectionDeserialize(uint64_t a1, re::Allocator *a2, void *a3, int a4, re *this)
{
  v15 = this;
  v16 = a2;
  if (re::materialTextureParamIsAsset(this, a2))
  {
    v13 = 0uLL;
    v14 = 0;
    v10 = re::AssetHandle::introspectionDeserialize(a2, a3, a4, &v13, this);
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v11](&v17, a1);
    }

    *a1 = v13;
    v13 = 0uLL;
    *(a1 + 16) = v14;
    v14 = 0;
    *(a1 + 32) = 1;
    re::AssetHandle::~AssetHandle(&v13);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(a1, &v15, &v16);
    return 1;
  }

  return v10;
}

uint64_t re::MaterialTechniqueGroupData::deinit(const re::DynamicString **this)
{
  re::DynamicString::deinit(this);
  v2 = this[6];
  if (v2)
  {
    v3 = this[8];
    v4 = 32 * v2;
    do
    {
      re::DynamicString::DynamicString(&v6, v3);
      if (v6 && (v7 & 1) != 0)
      {
        (*(*v6 + 40))();
      }

      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  return re::DynamicArray<re::DynamicString>::deinit((this + 4));
}

uint64_t re::MaterialTechniqueQualityLevelSetData::deinit(const re::DynamicString **this)
{
  re::DynamicString::deinit(this);
  v2 = this[10];
  if (v2)
  {
    v3 = this[12];
    v4 = 32 * v2;
    do
    {
      re::DynamicString::DynamicString(&v6, v3);
      if (v6 && (v7 & 1) != 0)
      {
        (*(*v6 + 40))();
      }

      v3 = (v3 + 32);
      v4 -= 32;
    }

    while (v4);
  }

  return re::DynamicArray<re::DynamicString>::deinit((this + 8));
}

double re::MaterialDefinitionFile::deinit(re::MaterialDefinitionFile *this)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 24);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 18);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 30);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 36);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 42);
  re::DynamicArray<re::MaterialTechniqueData>::deinit(this + 384);
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(this + 424);
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(this + 648);
  v2 = *(this + 124);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 60);
    while (1)
    {
      v5 = *v4;
      v4 += 20;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 124);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::DynamicString::deinit((*(this + 60) + 80 * v3 + 40));
    v6 = *(this + 124);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 60) + 80 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  v7 = *(this + 72);
  if (v7)
  {
    v8 = *(this + 74);
    v9 = 80 * v7;
    do
    {
      re::DynamicString::DynamicString(v12, v8);
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v13, v8 + 32);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
      v10 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
      if (*&v12[0] && (BYTE8(v12[0]) & 1) != 0)
      {
        (*(**&v12[0] + 40))(v10);
      }

      v8 = (v8 + 80);
      v9 -= 80;
    }

    while (v9);
  }

  re::DynamicString::deinit(this);
  return re::DynamicString::deinit((this + 32));
}

uint64_t *re::MaterialSamplerData::makeDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, re::MaterialSamplerData *this@<X0>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 1) != 5)
  {
    if (*(this + 2) != 5)
    {
      if (*(this + 3) != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v4 = re::DynamicString::append(&v11, "ClampToBorderColor (R Address Mode)", 0x23uLL);
  if (*(this + 2) == 5)
  {
    re::DynamicString::append(&v11, ", ", 2uLL);
LABEL_5:
    v4 = re::DynamicString::append(&v11, "ClampToBorderColor (S Address Mode)", 0x23uLL);
  }

  if (*(this + 3) != 5)
  {
    goto LABEL_10;
  }

  re::DynamicString::append(&v11, ", ", 2uLL);
LABEL_9:
  v4 = re::DynamicString::append(&v11, "ClampToBorderColor (T Address Mode)", 0x23uLL);
LABEL_10:
  v5 = *re::graphicsLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v6 = *&v13[7];
    }

    else
    {
      v6 = v13;
    }

    *buf = 136315138;
    v15 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_15:
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  v7 = [objc_msgSend(MEMORY[0x1E6974170] alloc)];
  *a1 = v7;
  [v7 setNormalizedCoordinates_];
  [v7 setRAddressMode_];
  [v7 setSAddressMode_];
  [v7 setTAddressMode_];
  [v7 setBorderColor_];
  [v7 setMinFilter_];
  [v7 setMagFilter_];
  [v7 setMipFilter_];
  LODWORD(v8) = *(this + 9);
  [v7 setLodMinClamp_];
  LODWORD(v9) = *(this + 10);
  [v7 setLodMaxClamp_];
  [v7 setLodAverage_];
  [v7 setMaxAnisotropy_];
  return [v7 setCompareFunction_];
}

unint64_t re::MaterialSamplerData::hash(re::MaterialSamplerData *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = 0xBF58476D1CE4E5B9 * (*(this + 1) ^ (*(this + 1) >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0xBF58476D1CE4E5B9 * (*(this + 2) ^ (*(this + 2) >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = 0xBF58476D1CE4E5B9 * (*(this + 3) ^ (*(this + 3) >> 30));
  v13 = (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31);
  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(this + 4) ^ (*(this + 4) >> 30))) >> 27));
  v15 = v14 ^ (v14 >> 31);
  v16 = 0xBF58476D1CE4E5B9 * (*(this + 5) ^ (*(this + 5) >> 30));
  v17 = re::hashCombine(*this, v9, v11, v13, v15, (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31));
  v18 = 0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30));
  v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
  v20 = 0xBF58476D1CE4E5B9 * (*(this + 7) ^ (*(this + 7) >> 30));
  v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
  LODWORD(v20) = 73244475 * (*(this + 9) ^ HIWORD(*(this + 9)));
  v22 = (73244475 * (v20 ^ WORD1(v20))) ^ ((73244475 * (v20 ^ WORD1(v20))) >> 16);
  LODWORD(v20) = 73244475 * ((73244475 * (*(this + 10) ^ HIWORD(*(this + 10)))) ^ ((73244475 * (*(this + 10) ^ HIWORD(*(this + 10)))) >> 16));
  v23 = v20 ^ WORD1(v20);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 1)) ^ ((0xBF58476D1CE4E5B9 * *(this + 1)) >> 27));
  v25 = v24 ^ (v24 >> 31);
  v26 = 0xBF58476D1CE4E5B9 * (*(this + 6) ^ (*(this + 6) >> 30));
  v27 = re::hashCombine(v19, v21, v22, v23, v25, (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31));
  v28 = 0xBF58476D1CE4E5B9 * (*(this + 8) ^ (*(this + 8) >> 30));
  return ((v17 << 6) + (v17 >> 2) - 0x61C8864680B583E9 + (((v27 << 6) + (v27 >> 2) + ((0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) ^ ((0x94D049BB133111EBLL * (v28 ^ (v28 >> 27))) >> 31)) - 0x61C8864680B583E9) ^ v27)) ^ v17;
}

unint64_t re::hashCombine(unint64_t this, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a2 + (this << 6) + (this >> 2) - 0x61C8864680B583E9) ^ this;
  v7 = (a4 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3;
  return ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v7 << 6) + (v7 >> 2) + ((a6 + (a5 << 6) + (a5 >> 2) - 0x61C8864680B583E9) ^ a5) - 0x61C8864680B583E9) ^ v7)) ^ v6;
}

void re::OptionalMaterialSamplerData::makeSamplerData(uint64_t *__return_ptr a1@<X8>, re::OptionalMaterialSamplerData *this@<X0>)
{
  v4 = *this;
  v5 = a1 + 1;
  v6 = a1 + 4;
  if (v4 > 4)
  {
    if (*this <= 6u)
    {
      if (v4 != 5)
      {
        if (v4 == 6)
        {
          v7 = 1;
          *a1 = 1;
          *v6 = 0;
          *(a1 + 12) = 0;
LABEL_28:
          *(a1 + 20) = 0x100000001;
          *(a1 + 7) = 2;
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v7 = 1;
      *a1 = 1;
      *v6 = 0;
      *(a1 + 12) = 0;
      goto LABEL_24;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        if (v4 == 9)
        {
          v7 = 1;
          *a1 = 1;
          v8 = xmmword_1E30A32A0;
LABEL_27:
          *(a1 + 4) = v8;
          goto LABEL_28;
        }

LABEL_26:
        v7 = 1;
        *a1 = 1;
        v8 = xmmword_1E30A32B0;
        goto LABEL_27;
      }

      v7 = 1;
      *a1 = 1;
      v9 = xmmword_1E30A32A0;
      goto LABEL_23;
    }

    v7 = 1;
    *a1 = 1;
    v10 = xmmword_1E30A32A0;
LABEL_20:
    *(a1 + 4) = v10;
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    goto LABEL_25;
  }

  if (*this <= 2u)
  {
    if (*this)
    {
      if (v4 != 1)
      {
        goto LABEL_26;
      }

      v7 = 1;
      *a1 = 1;
      v9 = xmmword_1E30A32B0;
LABEL_23:
      *(a1 + 4) = v9;
LABEL_24:
      *(a1 + 20) = 0x100000001;
      goto LABEL_25;
    }

    v7 = 1;
    *a1 = 1;
    v10 = xmmword_1E30A32B0;
    goto LABEL_20;
  }

  if (v4 == 3)
  {
    *a1 = 1;
    *(a1 + 4) = xmmword_1E30A32B0;
    *(a1 + 20) = 0x100000001;
    *(a1 + 7) = 2;
    *(a1 + 36) = 0x7F80000000000000;
    v7 = 4;
    goto LABEL_30;
  }

  if (v4 != 4)
  {
    goto LABEL_26;
  }

  v7 = 1;
  *a1 = 1;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0;
  *v6 = 0;
LABEL_25:
  *(a1 + 7) = 1;
LABEL_29:
  *(a1 + 36) = 0x7F80000000000000;
LABEL_30:
  a1[6] = v7;
  v37[2] = v2;
  v37[3] = v3;
  *(a1 + 8) = 0;
  v11 = a1 + 4;
  if (*(this + 1))
  {
    v12 = (this + 2);
  }

  else
  {
    v12 = a1;
  }

  *a1 = *v12;
  if (*(this + 8))
  {
    v6 = this + 12;
  }

  v13 = *v6;
  v14 = a1 + 1;
  if (*(this + 16))
  {
    v14 = (this + 20);
  }

  v15 = *v14;
  *(a1 + 1) = v13;
  *(a1 + 2) = v15;
  v16 = a1 + 12;
  if (*(this + 24))
  {
    v16 = this + 28;
  }

  v17 = *v16;
  v18 = a1 + 2;
  if (*(this + 32))
  {
    v18 = (this + 36);
  }

  v19 = *v18;
  *(a1 + 3) = v17;
  *(a1 + 4) = v19;
  v20 = a1 + 20;
  if (*(this + 40))
  {
    v20 = this + 44;
  }

  v21 = *v20;
  v22 = a1 + 3;
  if (*(this + 48))
  {
    v22 = (this + 52);
  }

  v23 = *v22;
  *(a1 + 5) = v21;
  *(a1 + 6) = v23;
  v24 = a1 + 28;
  if (*(this + 56))
  {
    v24 = this + 60;
  }

  *(a1 + 7) = *v24;
  v25 = a1 + 36;
  if (*(this + 72))
  {
    v25 = this + 76;
  }

  v26 = *v25;
  v27 = a1 + 5;
  if (*(this + 80))
  {
    v27 = (this + 84);
  }

  v28 = *v27;
  *(a1 + 9) = v26;
  *(a1 + 10) = v28;
  if (*(this + 3))
  {
    v5 = this + 4;
  }

  *(a1 + 1) = *v5;
  v29 = a1 + 6;
  if (*(this + 88))
  {
    v30 = (this + 96);
  }

  else
  {
    v30 = a1 + 6;
  }

  a1[6] = *v30;
  if (*(this + 64))
  {
    v31 = (this + 68);
  }

  else
  {
    v31 = a1 + 4;
  }

  *v11 = *v31;
  if ((atomic_load_explicit(&qword_1EE1B8808, memory_order_acquire) & 1) == 0)
  {
    v36 = v29;
    v33 = __cxa_guard_acquire(&qword_1EE1B8808);
    v29 = v36;
    if (v33)
    {
      re::Defaults::uint64Value(v37, "materialSamplerMaxAnisotropy", v34);
      if (LOBYTE(v37[0]))
      {
        v35 = v37[1];
      }

      else
      {
        v35 = 0;
      }

      _MergedGlobals_437 = v35;
      __cxa_guard_release(&qword_1EE1B8808);
      v29 = v36;
    }
  }

  v32 = _MergedGlobals_437;
  if (_MergedGlobals_437)
  {
    if (_MergedGlobals_437 >= 0x10)
    {
      v32 = 16;
    }

    *v29 = v32;
  }
}

float re::OptionalMaterialSamplerData::OptionalMaterialSamplerData(uint64_t a1, uint64_t a2)
{
  *a1 = 266;
  *(a1 + 2) = *a2;
  *(a1 + 3) = 1;
  *(a1 + 4) = *(a2 + 1);
  *(a1 + 8) = 1;
  *(a1 + 12) = *(a2 + 4);
  *(a1 + 16) = 1;
  *(a1 + 20) = *(a2 + 8);
  *(a1 + 24) = 1;
  *(a1 + 28) = *(a2 + 12);
  *(a1 + 32) = 1;
  *(a1 + 36) = *(a2 + 16);
  *(a1 + 40) = 1;
  *(a1 + 44) = *(a2 + 20);
  *(a1 + 48) = 1;
  *(a1 + 52) = *(a2 + 24);
  *(a1 + 56) = 1;
  *(a1 + 60) = *(a2 + 28);
  *(a1 + 64) = 1;
  *(a1 + 68) = *(a2 + 32);
  *(a1 + 72) = 1;
  *(a1 + 76) = *(a2 + 36);
  *(a1 + 80) = 1;
  result = *(a2 + 40);
  *(a1 + 84) = result;
  *(a1 + 88) = 1;
  *(a1 + 96) = *(a2 + 48);
  return result;
}

id re::MaterialSamplerData::fromDescriptor@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [*a1 normalizedCoordinates];
  *(a2 + 4) = [*a1 rAddressMode];
  *(a2 + 8) = [*a1 sAddressMode];
  *(a2 + 12) = [*a1 tAddressMode];
  *(a2 + 16) = [*a1 borderColor];
  *(a2 + 20) = [*a1 minFilter];
  *(a2 + 24) = [*a1 magFilter];
  *(a2 + 28) = [*a1 mipFilter];
  [*a1 lodMinClamp];
  *(a2 + 36) = v4;
  [*a1 lodMaxClamp];
  *(a2 + 40) = v5;
  *(a2 + 1) = [*a1 lodAverage];
  *(a2 + 48) = [*a1 maxAnisotropy];
  result = [*a1 compareFunction];
  *(a2 + 32) = result;
  return result;
}

_anonymous_namespace_ *re::FunctionLink::appendFunctionConstant(uint64_t a1, const re::DynamicString *a2, char *a3, unsigned __int16 a4)
{
  Size = MTLDataTypeGetSize();
  v9 = *(a1 + 248);
  v10 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 184, a2);
  if (v10)
  {
    v11 = *v10;

    return re::DynamicArray<REFrameAnalysisBottleneck>::copy((a1 + 232), v11, a3, Size);
  }

  else
  {
    re::DynamicArray<REFrameAnalysisBottleneck>::copy((a1 + 232), v9, a3, Size);
    *&v13 = v9;
    *(&v13 + 1) = a4;
    return re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 184, a2, &v13);
  }
}

unint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v6, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, &v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v7 << 6) + 40;
  }
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v10) << 6) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
  re::DynamicString::DynamicString((v7 + 8), a2);
  result = v7 + 40;
  *(v7 + 40) = *a3;
  ++*(a1 + 40);
  return result;
}

re::DynamicString *std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__emplace[abi:nn200100]<0ul,char const*,re::Allocator *>(re::DynamicString *this, const char **a2, re::Allocator **a3)
{
  v6 = *(this + 8);
  if (v6 != -1)
  {
    __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix_0[v6](&v8, this);
  }

  *(this + 8) = -1;
  result = re::DynamicString::DynamicString(this, *a2, *a3);
  *(this + 8) = 0;
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + (v8 << 6) + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + (v8 << 6)) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + (v11 << 6) + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + (v12 << 6)) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
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

uint64_t re::generatePatchPlane@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = 0;
  v77 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v69[1] = 0;
  v70 = 0;
  v69[0] = 0;
  v71 = 0;
  v7 = *a2;
  v8 = 1.0;
  do
  {
    v9 = 0;
    do
    {
      v10.n128_f32[0] = (v9 / v7) + -0.5;
      v11 = (v6 / *(a2 + 8)) + -0.5;
      if (*(a2 + 16))
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v10.n128_u32[1] = 0;
      v10.n128_u32[2] = 0;
      v10.n128_f32[3] = v8;
      v50 = v10;
      *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3))) = v11;
      v62 = v50;
      *&v13 = re::DynamicArray<re::Vector4<float>>::add(v69, &v62).n128_u64[0];
      v8 = 1.0;
      ++v9;
      v7 = *a2;
    }

    while (v9 <= *a2);
    ++v6;
    v14 = *(a2 + 8);
  }

  while (v6 <= v14);
  v68 = 0;
  v65[1] = 0;
  v66 = 0;
  v65[0] = 0;
  v67 = 0;
  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = v15 + 1;
      if (v7)
      {
        v17 = 0;
        do
        {
          if (*(a2 + 16))
          {
            v18 = v17 + 1;
            v19 = v7 + 1;
            v20 = (v7 + 1) * v15;
            v21 = v20 + v17 + 1;
            v22 = v19 * v16;
            v23 = v19 * v16 + v17;
          }

          else
          {
            v24 = v7 + 1;
            v22 = (v7 + 1) * v15;
            v21 = v22 + v17;
            v20 = v24 * v16;
            v18 = v17 + 1;
            v23 = v20 + v17 + 1;
          }

          v62.n128_u64[0] = v21 | ((v22 + v18) << 48) | ((v20 + v17) << 16) | (v23 << 32);
          re::DynamicArray<unsigned short>::add(v65, &v62);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[3]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[1]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[3]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[2]);
          re::DynamicArray<unsigned short>::add(v65, &v62.n128_u16[1]);
          v7 = *a2;
          v17 = v18;
        }

        while (v18 < *a2);
        v14 = *(a2 + 8);
      }

      ++v15;
    }

    while (v16 < v14);
  }

  v62.n128_u64[0] = 0;
  v62.n128_u32[2] = 0;
  v25 = [*(a1 + 208) newBufferWithBytes:v72 length:16 * v70 options:{0, v13}];
  LOWORD(v57[0]) = 287;
  *(&v57[0] + 1) = v25;
  v58 = 0;
  v59 = 0;
  v60 = [(_anonymous_namespace_ *)v25 length];
  v61 = 0xFFFFFFFF00000000;
  re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(&v62, v56);
  if (v58 != -1)
  {
    (off_1F5D042D0[v58])(&v75, v57 + 8);
  }

  v58 = -1;
  if (*v56 && (v56[8] & 1) != 0)
  {
    (*(**v56 + 40))();
  }

  if (v25)
  {
  }

  v26 = [*(a1 + 208) newBufferWithBytes:v68 length:2 * v66 options:0];
  LOWORD(v57[0]) = 49;
  *(&v57[0] + 1) = v26;
  v58 = 0;
  v59 = 0;
  v60 = [(_anonymous_namespace_ *)v26 length];
  v61 = 0xFFFFFFFF00000000;
  re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(&v62, v56);
  if (v58 != -1)
  {
    (off_1F5D042D0[v58])(&v75, v57 + 8);
  }

  v58 = -1;
  if (*v56 && (v56[8] & 1) != 0)
  {
    (*(**v56 + 40))();
  }

  if (v26)
  {
  }

  v27.i32[0] = 0;
  v28.i32[0] = *(a2 + 16);
  v29 = vdupq_lane_s32(*&vceqq_s32(v28, v27), 0);
  v55[0] = vbslq_s8(v29, xmmword_1E30A32E0, xmmword_1E30A32D0);
  v55[1] = vbslq_s8(v29, xmmword_1E309E550, xmmword_1E30A32C0);
  std::to_string(&v52, *a2);
  v30 = std::string::insert(&v52, 0, "PlanePatch-");
  v31 = v30->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v75, "x");
  v33 = v32->__r_.__value_.__r.__words[2];
  *v56 = *&v32->__r_.__value_.__l.__data_;
  *&v56[16] = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v51, *(a2 + 8));
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v51;
  }

  else
  {
    v34 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(v56, v34, size);
  v37 = v36->__r_.__value_.__r.__words[2];
  *__p = *&v36->__r_.__value_.__l.__data_;
  v54 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if ((v56[23] & 0x80000000) != 0)
  {
    operator delete(*v56);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = &str_67;
  v39 = v66;
  v40 = v70;
  v42 = re::globalAllocators(v41);
  v43 = (*(*v42[2] + 32))(v42[2], 544, 16);
  *&v52.__r_.__value_.__l.__data_ = *&v51.__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = &str_67;
  *v56 = xmmword_1E3047670;
  *&v56[16] = xmmword_1E3047680;
  v57[0] = xmmword_1E30476A0;
  v57[1] = xmmword_1E30474D0;
  v74 = 0;
  v73 = 0;
  v44 = re::MeshPart::MeshPart(v43, &v52, 0, &v63, v62.n128_u64[0], v39, v40, 1, v55, 0, v56, &v73, -1, 0);
  v75.__r_.__value_.__r.__words[0] = &unk_1F5D042F0;
  v76 = &v75;
  a3[4] = (a3 + 1);
  *a3 = v44;
  a3[1] = &unk_1F5D042F0;
  v45 = std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100](&v75);
  if (v52.__r_.__value_.__s.__data_[0])
  {
    if (v52.__r_.__value_.__s.__data_[0])
    {
    }
  }

  if (v51.__r_.__value_.__s.__data_[0])
  {
    if (v51.__r_.__value_.__s.__data_[0])
    {
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (v62.n128_u64[0])
  {
    v46 = 88 * v62.n128_u64[0];
    v47 = &v64;
    do
    {
      v48 = *(v47 + 6);
      if (v48 != -1)
      {
        (off_1F5D042D0[v48])(v56, v47);
      }

      *(v47 + 6) = -1;
      re::DynamicString::deinit((v47 - 5));
      v47 += 11;
      v46 -= 88;
    }

    while (v46);
  }

  if (v65[0] && v68)
  {
    (*(*v65[0] + 40))();
  }

  result = v69[0];
  if (v69[0])
  {
    if (v72)
    {
      return (*(*v69[0] + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::NamedVertexBuffer,2ul>::add(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
  }

  else
  {
    v4 = a1 + 88 * *a1;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 40) = *(a2 + 24);
    v5 = *(a2 + 8);
    *(v4 + 16) = *a2;
    *a2 = 0;
    v6 = *(a2 + 16);
    *(a2 + 24) = 0;
    v8 = *(v4 + 24);
    v7 = *(v4 + 32);
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v7;
    LOWORD(v6) = *(a2 + 32);
    *(v4 + 56) = 0;
    v4 += 56;
    *(v4 - 8) = v6;
    *(v4 + 24) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v4, a2 + 40);
    *(v4 + 32) = *(a2 + 72);
    *(v4 + 40) = *(a2 + 80);
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

re *std::__function::__func<std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>> re::makeDefaultUniquePtr<re::MeshPart,re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int>(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)::{lambda(re::MeshPart*)#1},std::allocator<re::MeshPart*>,void ()(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)>::operator()(re *result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::StringID::destroyString((v2 + 61));
    re::FixedArray<re::StringID>::deinit(v2 + 41);
    re::AttributeTable::~AttributeTable(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>> re::makeDefaultUniquePtr<re::MeshPart,re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int>(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)::{lambda(re::MeshPart*)#1},std::allocator<re::MeshPart*>,void ()(re::StringID,int,re::DynamicInlineArray<re::NamedVertexBuffer,2ul> &,int,int,int,re::AABB const&,int &&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t re::SelectionMeshVisitor::visitMeshScene(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a2 + 472) != 0.0 && (*(a2 + 716) & 1) == 0)
  {
    *(a1 + 16) = *(a2 + 208);
    *(a1 + 32) = *(a2 + 224);
    *(a1 + 48) = *(a2 + 240);
    *(a1 + 64) = *(a2 + 256);
    *(a1 + 80) = *(a2 + 272);
    *(a1 + 88) = *(a2 + 192);
    *(a1 + 104) = *(a2 + 296);
    *(a1 + 120) = *(a2 + 280);
    *(a1 + 136) = *(a2 + 328);
    *(a1 + 152) = *(a2 + 312);
    *(a1 + 168) = *(a2 + 344);
    return (*(a2 + 472) != 0.0) & (*(a2 + 716) ^ 1u);
  }

  return v2;
}

uint64_t re::SelectionMeshVisitor::visitMeshInstance(uint64_t a1, uint64_t a2)
{
  result = re::MeshVisitor::visitMeshInstance(a1, a2);
  if (result)
  {
    *(a1 + 176) = *(a2 + 112);
  }

  return result;
}

uint64_t re::SelectionMeshVisitor::visitMeshPart(re::MeshVisitor *a1, uint64_t a2)
{
  v3 = a1;
  v146 = *MEMORY[0x1E69E9840];
  result = re::MeshVisitor::findLevelIndex(a1, *(a2 + 24));
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a2 + 72);
    v7 = *(v3 + 12);
    if (v7 <= v6)
    {
      goto LABEL_110;
    }

    v8 = *(*(v3 + 11) + 8 * v6);
    if (*(v8 + 256))
    {
      v9 = 0;
      v10 = *(a2 + 48);
      v11 = *(v10 + 528);
    }

    else
    {
      v12 = *(v8 + 280);
      v10 = *(a2 + 48);
      v11 = *(v10 + 528);
      if (v12)
      {
        v9 = 0;
      }

      else
      {
        v11 = (v11 ^ *(*(v3 + 39) + 296)) & ~*(*(v3 + 39) + 300) | *(*(v3 + 39) + 300) & *(*(v3 + 39) + 296);
        v9 = 1;
      }
    }

    v78[0] = *a2;
    v78[1] = 0;
    v78[2] = *(a2 + 40);
    v78[3] = v10;
    v78[4] = 0;
    v79 = 0;
    v80 = *(a2 + 32);
    v81 = 0xFFFF010000000000;
    v82 = 0xFFFFFFFFLL;
    v73 = a2;
    v13 = *(a2 + 56);
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[1];
    v83 = *v13;
    v84 = v16;
    v85 = v14;
    v86 = v15;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v89 = 0;
    v88 = 0u;
    v87 = 0;
    v94 = v11;
    v95 = -NAN;
    v96 = 0;
    v97 = 0xFFFFFFFFLL;
    v98 = 0;
    v99 = 0;
    re::globalAllocators(result);
    v17 = *(*(v3 + 40) + 32);
    v18 = (*(*v17 + 32))(v17, 336, 16);
    v19 = *(*(v3 + 40) + 32);
    *(v18 + 48) = 0;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *v18 = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0u;
    *(v18 + 120) = 0;
    *(v18 + 192) = 0;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
    *(v18 + 224) = 0;
    *(v18 + 128) = 0u;
    *(v18 + 144) = 0u;
    *(v18 + 160) = 0u;
    *(v18 + 176) = 0;
    *(v18 + 184) = v19;
    *(v18 + 232) = xmmword_1E304F3C0;
    *(v18 + 248) = 0;
    *(v18 + 252) = 10854;
    __asm { FMOV            V0.2S, #1.0 }

    *(v18 + 256) = _D0;
    *(v18 + 264) = 0;
    *(v18 + 272) = 0;
    *(v18 + 320) = 0;
    *(&v110 + 1) = re::globalAllocators(v18)[2];
    *&v109 = &unk_1F5D043C8;
    *&v111 = &v109;
    v25 = (*(*v17 + 16))(v17, v18, &v109);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v109);
    v26 = *(v3 + 12);
    if ((v9 & 1) != 0 || v26 <= v6)
    {
      v27 = (v3 + 312);
    }

    else
    {
      v27 = (*(v3 + 11) + 8 * v6);
    }

    *(v25 + 56) = *v27;
    if (*(v3 + 3) > v6)
    {
      if (v26 > v6)
      {
        v28 = *(v3 + 2) + 24 * v6;
      }

      else
      {
        v28 = 0;
      }

      *v25 = v28;
    }

    if (*(v3 + 5) > v6)
    {
      if (v26 > v6)
      {
        v29 = *(v3 + 4) + 24 * v6;
      }

      else
      {
        v29 = 0;
      }

      *(v25 + 8) = v29;
    }

    *(v25 + 16) = *(v3 + 3);
    *(v25 + 32) = *(v3 + 4);
    *(v25 + 48) = *(v3 + 80);
    if (*(v3 + 16) <= v6)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(*(v3 + 15) + 8 * v6);
    }

    *(v25 + 72) = v30;
    if (*(v3 + 18) <= v6)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(*(v3 + 17) + 8 * v6);
    }

    *(v25 + 80) = v31;
    if (*(v3 + 14) <= v6)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(*(v3 + 13) + 8 * v6);
    }

    *(v25 + 64) = v32;
    v33 = *(v3 + 22);
    if (v33 < *(v3 + 20))
    {
      v34 = (*(v3 + 19) + 16 * v33);
      if (v34[1] <= v6)
      {
        v35 = 0;
      }

      else
      {
        v35 = *(*v34 + 8 * v6);
      }

      *(v25 + 96) = v35;
    }

    v79 = v25;
    v76 = *(*(v3 + 38) + 16);
    v36 = *(*(v3 + 40) + 32);
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v107 = 0x7FFFFFFFLL;
    v75 = v36;
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(&v104, v36, 10);
    v37 = 0;
    v130 = vextq_s8(*(v25 + 64), *(v25 + 64), 8uLL);
    v38 = *(v25 + 56) + 304;
    v131 = *(v25 + 88);
    v132 = v38;
    v77 = v3;
    while (1)
    {
      v74 = v37;
      v39 = *(v130.i64 + v37);
      if (v39)
      {
        if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
        {
          dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
        }

        v40 = re::MaterialParameterTable::passTechniqueHashTable(v39, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash, 1);
        v41 = v40;
        v42 = *(v40 + 8);
        if (v42)
        {
          v43 = 0;
          v44 = v40[2];
          while (1)
          {
            v45 = *v44;
            v44 += 6;
            if (v45 < 0)
            {
              break;
            }

            if (v42 == ++v43)
            {
              LODWORD(v43) = *(v40 + 8);
              break;
            }
          }
        }

        else
        {
          LODWORD(v43) = 0;
        }

        if (v43 != v42)
        {
          break;
        }
      }

LABEL_103:
      v37 = v74 + 8;
      if (v74 == 24)
      {
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v104);
        return re::DynamicArray<re::TransitionCondition *>::add(*(v3 + 38), v73);
      }
    }

    v46 = v40[2];
    while (1)
    {
      v47 = v46 + 24 * v43;
      if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v104, (v47 + 8)))
      {
        goto LABEL_94;
      }

      v48 = *(v3 + 37);
      re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v109, v48, *(v47 + 8), *(v47 + 8));
      if (HIDWORD(v109) == 0x7FFFFFFF)
      {
        re::DrawTable::DrawTable(&v109, v75, 1uLL);
        v141 = 0uLL;
        *&v142 = 0;
        re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(&v141, v48, *(v47 + 8), *(v47 + 8));
        if (HIDWORD(v141) == 0x7FFFFFFF)
        {
          v49 = re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v48, DWORD2(v141), v141);
          *(v49 + 8) = *(v47 + 8);
          *(v49 + 16) = 0;
          v50 = v49 + 16;
          *(v49 + 24) = 0;
          *(v49 + 32) = 1;
          *(v49 + 64) = 0;
          *(v49 + 48) = 0;
          *(v49 + 56) = 0;
          *(v49 + 40) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 16, &v109);
          *(v49 + 72) = 0;
          *(v49 + 80) = 0;
          *(v49 + 88) = 1;
          *(v49 + 104) = 0;
          *(v49 + 112) = 0;
          *(v49 + 96) = 0;
          *(v49 + 120) = 0;
          re::BucketArray<re::FixedArray<int>,8ul>::swap(v49 + 72, &v114);
          *(v49 + 128) = 0;
          *(v49 + 136) = 0;
          *(v49 + 144) = 1;
          *(v49 + 160) = 0;
          *(v49 + 168) = 0;
          *(v49 + 152) = 0;
          *(v49 + 176) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 128, &v116 + 8);
          *(v49 + 184) = 0;
          *(v49 + 192) = 0;
          *(v49 + 200) = 1;
          *(v49 + 216) = 0;
          *(v49 + 224) = 0;
          *(v49 + 208) = 0;
          *(v49 + 232) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49 + 184, &v124);
          *(v49 + 240) = 0;
          *(v49 + 248) = 0;
          v49 += 240;
          *(v49 + 16) = 1;
          *(v49 + 32) = 0;
          *(v49 + 40) = 0;
          *(v49 + 24) = 0;
          *(v49 + 48) = 0;
          re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v49, &v128);
          *(v49 + 96) = 1;
          v51 = (v49 + 56);
          v3 = v77;
          re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(v51, v129);
          ++*(v48 + 40);
        }

        else
        {
          v50 = *(v48 + 16) + 344 * HIDWORD(v141) + 16;
        }

        re::DrawTable::~DrawTable(&v109);
      }

      else
      {
        v50 = *(v48 + 16) + 344 * HIDWORD(v109) + 16;
      }

      v52 = *(v25 + 56);
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v52 + 24, (v47 + 16), *(v47 + 16), &v109);
      if (HIDWORD(v109) != 0x7FFFFFFF)
      {
        break;
      }

      v53 = *(v3 + 40);
      memset(v100, 0, sizeof(v100));
      v101 = 0;
      v54 = re::addDrawCall(v50, v78, v53, 0, v100);
      *(v54 + 44) = -1;
      *v54 = *v54 & 0xFFCF | 0x10;
      *(v54 + 12) = v76;
      re::BucketArray<re::DrawCall,128ul>::add(v50, v54);
LABEL_87:
      v61 = *(v47 + 8);
      v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27));
      v63 = v62 ^ (v62 >> 31);
      if (DWORD2(v105))
      {
        v64 = v63 % DWORD2(v105);
        v65 = *(*(&v104 + 1) + 4 * v64);
        if (v65 != 0x7FFFFFFF)
        {
          while (*(v105 + 24 * v65 + 16) != v61)
          {
            LODWORD(v65) = *(v105 + 24 * v65 + 8) & 0x7FFFFFFF;
            if (v65 == 0x7FFFFFFF)
            {
              goto LABEL_93;
            }
          }

          goto LABEL_94;
        }
      }

      else
      {
        LODWORD(v64) = 0;
      }

LABEL_93:
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(&v104, v64, v63, v47 + 8, (v47 + 8));
      ++HIDWORD(v107);
LABEL_94:
      if (*(v41 + 8) <= (v43 + 1))
      {
        v66 = v43 + 1;
      }

      else
      {
        v66 = *(v41 + 8);
      }

      v46 = v41[2];
      while (v66 - 1 != v43)
      {
        LODWORD(v43) = v43 + 1;
        if ((*(v46 + 24 * v43) & 0x80000000) != 0)
        {
          goto LABEL_102;
        }
      }

      LODWORD(v43) = v66;
LABEL_102:
      if (v43 == v42)
      {
        goto LABEL_103;
      }
    }

    v55 = *(v52 + 40);
    LOWORD(v109) = 263;
    v56 = v55 + 48 * HIDWORD(v109);
    *(&v109 + 2) = 0x1000000;
    *(&v109 + 6) = 0xFFFF0000FFFFLL;
    *&v111 = 0;
    v110 = 0uLL;
    *(&v111 + 1) = 0xFFFFFFFF00000000;
    v112 = 0;
    *&v114 = 0;
    *v115 = 0;
    v115[8] = 0;
    DWORD2(v116) = 0;
    v118 = 0;
    memset(&v115[12], 0, 18);
    v117 = 0uLL;
    v120 = 0xFF00000007FFFFFFLL;
    v121 = 0;
    v123 = 0;
    v125 = 0;
    if (!*(v56 + 24))
    {
LABEL_86:
      v3 = v77;
      goto LABEL_87;
    }

    v57 = v77[40];
    memset(v102, 0, sizeof(v102));
    v103 = 0;
    v58 = re::addDrawCall(v50, v78, v57, 0, v102);
    *v58 = *v58 & 0xFFCF | 0x10;
    *(v58 + 12) = v76;
    v59 = *(v56 + 24);
    if (!v59)
    {
      v108 = 0;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v141 = 0u;
      v6 = MEMORY[0x1E69E9C10];
      v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v133 = 136315906;
      v134 = "operator[]";
      v135 = 1024;
      if (v67)
      {
        v68 = 3;
      }

      else
      {
        v68 = 2;
      }

      v136 = 476;
      v137 = 2048;
      v138 = 0;
      v139 = 2048;
      v140 = 0;
      _os_log_send_and_compose_impl(v68, &v108, &v141, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v133, 38, v71, v72);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v7, v73);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v69, v70);
      __break(1u);
    }

    *(v58 + 44) = **(v56 + 32);
    v109 = *v58;
    v110 = *(v58 + 16);
    v111 = *(v58 + 32);
    if (v112)
    {
      if ((*(v58 + 48) & 1) == 0)
      {
        v112 = 0;
        goto LABEL_65;
      }
    }

    else
    {
      if ((*(v58 + 48) & 1) == 0)
      {
        goto LABEL_65;
      }

      v112 = 1;
    }

    v113 = *(v58 + 52);
LABEL_65:
    *v115 = *(v58 + 72);
    *&v115[16] = *(v58 + 88);
    v116 = *(v58 + 104);
    v117 = *(v58 + 120);
    v114 = *(v58 + 56);
    LOBYTE(v118) = *(v58 + 144);
    if ((v118 & 0x100) != 0)
    {
      if ((*(v58 + 145) & 1) == 0)
      {
        HIBYTE(v118) = 0;
        goto LABEL_71;
      }
    }

    else
    {
      if ((*(v58 + 145) & 1) == 0)
      {
        goto LABEL_71;
      }

      HIBYTE(v118) = 1;
    }

    v119 = *(v58 + 146);
LABEL_71:
    v120 = *(v58 + 147);
    if (v121)
    {
      if ((*(v58 + 156) & 1) == 0)
      {
        v121 = 0;
        goto LABEL_77;
      }
    }

    else
    {
      if ((*(v58 + 156) & 1) == 0)
      {
        goto LABEL_77;
      }

      v121 = 1;
    }

    v122 = *(v58 + 160);
LABEL_77:
    v123 = *(v58 + 164);
    if (v125)
    {
      if ((*(v58 + 176) & 1) == 0)
      {
        v125 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      if ((*(v58 + 176) & 1) == 0)
      {
        goto LABEL_83;
      }

      v125 = 1;
    }

    v126 = *(v58 + 192);
    v127 = *(v58 + 208);
LABEL_83:
    if (v59 != 1)
    {
      v60 = 1;
      do
      {
        HIDWORD(v111) = *(*(v56 + 32) + 4 * v60);
        re::BucketArray<re::DrawCall,128ul>::add(v50, &v109);
        ++v60;
      }

      while (v60 < *(v56 + 24));
    }

    goto LABEL_86;
  }

  return result;
}

__n128 re::BucketArray<re::DrawCall,128ul>::add(uint64_t a1, __int128 *a2)
{
  v3 = re::BucketArray<re::DrawCall,128ul>::addUninitialized(a1);
  v4 = a2[2];
  v5 = *a2;
  *(v3 + 16) = a2[1];
  *(v3 + 32) = v4;
  *v3 = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = v6;
  if (v6 == 1)
  {
    *(v3 + 52) = *(a2 + 13);
  }

  *(v3 + 56) = *(a2 + 56);
  result = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(v3 + 120) = *(a2 + 120);
  *(v3 + 104) = v9;
  *(v3 + 88) = v8;
  *(v3 + 72) = result;
  *(v3 + 144) = *(a2 + 144);
  v10 = *(a2 + 145);
  *(v3 + 145) = v10;
  if (v10 == 1)
  {
    *(v3 + 146) = *(a2 + 146);
  }

  *(v3 + 147) = *(a2 + 147);
  v11 = *(a2 + 156);
  *(v3 + 156) = v11;
  if (v11 == 1)
  {
    *(v3 + 160) = *(a2 + 40);
  }

  result.n128_u32[0] = *(a2 + 41);
  *(v3 + 164) = result.n128_u32[0];
  v12 = *(a2 + 176);
  *(v3 + 176) = v12;
  if (v12 == 1)
  {
    result = a2[12];
    v13 = a2[13];
    *(v3 + 192) = result;
    *(v3 + 208) = v13;
  }

  return result;
}

void *re::internal::Callable<re::SelectionMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D043C8;
  return result;
}

void *re::internal::Callable<re::SelectionMeshVisitor::visitMeshPart(re::MeshPartVisitorContext const&)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D043C8;
  return result;
}

re::DrawTable *re::DrawTable::DrawTable(re::DrawTable *this, re::Allocator *a2, unint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  re::BucketArray<re::DrawCall,128ul>::init(this, a2, a3);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 26) = 0;
  re::BucketArray<re::Matrix4x4<float>,128ul>::init(this + 56, a2, a3);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 1;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  re::BucketArray<re::ConstantTable const*,128ul>::init(this + 112, a2, a3);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  re::BucketArray<float,128ul>::init(this + 168, a2, a3);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 68) = 0;
  re::BucketArray<unsigned int,128ul>::init(this + 224, a2, a3);
  *(this + 320) = 1;
  return this;
}

uint64_t *re::BucketArray<re::DrawCall,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::DrawCall,128ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 28672, 0);
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

_anonymous_namespace_ *re::BucketArray<re::Matrix4x4<float>,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::Matrix4x4<float>,128ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 0x2000, 0);
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

_anonymous_namespace_ *re::BucketArray<re::ConstantTable const*,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ConstantTable const*,128ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 1024, 0);
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

_anonymous_namespace_ *re::BucketArray<float,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<float,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<float,128ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

_anonymous_namespace_ *re::BucketArray<unsigned int,128ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned int,128ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<unsigned int,128ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < a2 << 7)
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
        v5 = (*(**v3 + 32))(*v3, 512, 0);
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

void re::DrawTable::~DrawTable(void (***this)(void))
{
  if ((this[40] & 1) == 0)
  {
    (*this[35])();
    *(this + 320) = 1;
  }

  re::BucketArray<unsigned int,128ul>::deinit((this + 28));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 28));
  re::BucketArray<unsigned int,128ul>::deinit((this + 21));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 21));
  re::BucketArray<re::ConstantTable const*,128ul>::deinit((this + 14));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 14));
  re::BucketArray<re::Matrix4x4<float>,128ul>::deinit((this + 7));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((this + 7));
  re::BucketArray<re::DrawCall,128ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<unsigned int,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned int,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<unsigned int,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + 4 * (a2 & 0x7F);
}

uint64_t re::BucketArray<re::ConstantTable const*,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ConstantTable const*,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::ConstantTable const*,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + 8 * (a2 & 0x7F);
}

uint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + ((a2 & 0x7F) << 6);
}

uint64_t re::BucketArray<re::DrawCall,128ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::DrawCall,128ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::DrawCall,128ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 7;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 7)
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

  return *(v5 + 8 * v2) + 224 * (a2 & 0x7F);
}

uint64_t re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 344 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 344 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 344 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 344 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 9);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    v5 = v4;
    if (v4 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          *&v26[16] = a1[2];
          a1[2] = v12;
          v14 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v13 = *&v26[32];
          *(a1 + 3) = v14;
          ++*&v26[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 296;
            do
            {
              if ((*(*&v26[16] + v17 - 296) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(*&v26[16] + v17 - 288) % *(a1 + 6), *(*&v26[16] + v17 - 288));
                v19 = (*&v26[16] + v17);
                *(v18 + 8) = *(*&v26[16] + v17 - 288);
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 1;
                *(v18 + 64) = 0;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 16, (v19 - 280));
                *(v18 + 72) = 0;
                *(v18 + 80) = 0;
                *(v18 + 88) = 1;
                *(v18 + 104) = 0;
                *(v18 + 112) = 0;
                *(v18 + 96) = 0;
                *(v18 + 120) = 0;
                re::BucketArray<re::FixedArray<int>,8ul>::swap(v18 + 72, (v19 - 224));
                *(v18 + 128) = 0;
                *(v18 + 136) = 0;
                *(v18 + 144) = 1;
                *(v18 + 160) = 0;
                *(v18 + 168) = 0;
                *(v18 + 152) = 0;
                *(v18 + 176) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 128, (v19 - 168));
                *(v18 + 184) = 0;
                *(v18 + 192) = 0;
                *(v18 + 200) = 1;
                *(v18 + 216) = 0;
                *(v18 + 224) = 0;
                *(v18 + 208) = 0;
                *(v18 + 232) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18 + 184, (v19 - 112));
                *(v18 + 240) = 0;
                *(v18 + 248) = 0;
                v18 += 240;
                *(v18 + 16) = 1;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 48) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v18, (v19 - 56));
                *(v18 + 96) = 1;
                re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=((v18 + 56), v19);
                v15 = *&v26[32];
              }

              ++v16;
              v17 += 344;
            }

            while (v16 < v15);
          }

          re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v20 = a1[2];
    v21 = *(v20 + 344 * v4);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 344 * v4);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = 344 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = a1[1];
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v20 + 344 * v4;
}

void re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 344 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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