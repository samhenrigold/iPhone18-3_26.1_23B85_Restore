id re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(uint64_t a1, char *a2, id *a3)
{
  v11 = 0;
  v12 = a2;
  v9 = 0;
  v10 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  result = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v12, v5, &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v10, v9);
    v8 = v12;
    result = *a3;
    v7[5] = result;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = [a1 parentNode];
  v5 = [v4 property:@"inputs:file"];
  v6 = [v5 stringValue];

  v7 = [v3 parentNode];
  v8 = [v7 property:@"inputs:file"];
  v9 = [v8 stringValue];

  LODWORD(v7) = [v6 isEqualToString:v9];
  v10 = [v3 name];

  v11 = [v10 stringValue];
  v12 = [v11 isEqualToString:@"outputs:a"];

  v13 = v7 & v12;
  return v13;
}

uint64_t re::isMaterialTransparent(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (*(a2 + 80) != 1 || !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor"))
  {
    if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity") && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureOpacity"))
    {
      goto LABEL_8;
    }

LABEL_9:
    goto LABEL_10;
  }

  v6 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, "textureBaseColor");
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *v6;
  if (!v8)
  {
LABEL_8:
    HaveAlpha = 1;
    goto LABEL_10;
  }

  HaveAlpha = re::TextureProvider::canHaveAlpha(v8, v7);
LABEL_10:

  return HaveAlpha;
}

uint64_t re::isMaterialAlphaCutout(re *this, NSDictionary *a2, uint64_t a3, float *a4)
{
  LODWORD(var4) = 0;
  LODWORD(result) = re::getConstantFloat(this, @"inputs:opacityThreshold", &var4, a4);
  if (*&var4 > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__n128 re::getPropertyValueWithOutputProperty(void *a1, void *a2, __n128 a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = [a1 parentNode];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 property:v4];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 data];

        if (v9)
        {
          [v8 float4Value];
          a3 = v10;
        }
      }
    }
  }

  return a3;
}

id re::getDataComponentWithPropertyOutput(uint64_t a1, __n128 a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  v3 = *v2;
  if (v3 > 0x66)
  {
    if (v3 == 103)
    {
      if (!v2[1])
      {
        v4 = objc_alloc(MEMORY[0x1E69DED58]);
        HIDWORD(v5) = a2.n128_u32[1];
        LODWORD(v5) = a2.n128_u32[1];
        goto LABEL_20;
      }
    }

    else if (v3 == 114 && !v2[1])
    {
      v4 = objc_alloc(MEMORY[0x1E69DED58]);
      v5 = a2.n128_u64[0];
      goto LABEL_20;
    }
  }

  else if (v3 == 97)
  {
    if (!v2[1])
    {
      v4 = objc_alloc(MEMORY[0x1E69DED58]);
      v5 = __PAIR64__(a2.n128_u32[1], a2.n128_u32[3]);
      goto LABEL_20;
    }
  }

  else if (v3 == 98 && !v2[1])
  {
    v4 = objc_alloc(MEMORY[0x1E69DED58]);
    v5 = __PAIR64__(a2.n128_u32[1], a2.n128_u32[2]);
LABEL_20:
    v8 = [v4 initWithFloat:{*&v5, *&a2}];
    goto LABEL_21;
  }

  v6 = strcmp(v2, "rgb");
  v7 = objc_alloc(MEMORY[0x1E69DED58]);
  if (v6)
  {
    v8 = [v7 initWithFloat4:a2.n128_f64[0]];
  }

  else
  {
    v8 = [v7 initWithFloat3:a2.n128_f64[0]];
  }

LABEL_21:

  return v8;
}

uint64_t re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v32[16];
                v25 = *(*&v32[16] + v17 + 40);
                *(*&v32[16] + v17 + 40) = 0;
                *(v20 + 40) = v25;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 56 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 56 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 48) = a3;
  ++*(a1 + 28);
  return v26 + 56 * v5;
}

void **re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(re::internal *this, const re::GeomMesh *a2, MeshAssetPart *a3)
{
  v6 = this;
  v210 = *MEMORY[0x1E69E9840];
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), "osdSubdivisionScheme");
  if (result)
  {
    if (!result[5])
    {
      goto LABEL_171;
    }

    if (*result[7] == 1)
    {
      v179 = 0;
      v177 = 0;
      v176[0] = 0;
      v176[1] = 0;
      v178 = 0;
      v8 = *(v6 + 200);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          result = re::internal::GeomAttributeContainer::attributeByIndex((v6 + 176), i);
          if (*(result + 17) == 6)
          {
            v189[0] = result[1];
            result = re::DynamicArray<re::TransitionCondition *>::add(v176, v189);
          }
        }
      }

      v4 = v189;
      v10 = *(v6 + 424);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = re::internal::GeomAttributeContainer::attributeByIndex((v6 + 400), j);
          result = re::internal::accessFaceVaryingAttributeSubmesh(v12, v13);
          if (*(result + 6) == *(v6 + 40) && *(v12 + 17) == 6)
          {
            v189[0] = *(v12 + 8);
            result = re::DynamicArray<re::TransitionCondition *>::add(v176, v189);
          }
        }
      }

      v167 = v179;
      v5 = v177;
      v191 = 0u;
      memset(&__src[8], 0, 64);
      v165 = (v6 + 16);
      v14 = *(v6 + 40);
      LODWORD(v189[0]) = *(v6 + 16);
      HIDWORD(v189[0]) = v14;
      v184 = 0;
      v183 = 0;
      v185 = 0;
      if (v14 >= 1)
      {
        v16 = 0;
        LODWORD(v17) = 0;
        v18 = *(v6 + 40);
        v3 = v184;
        v19 = v185;
        v20 = v14 & 0x7FFFFFFF;
        if ((v14 & 0x7FFFFFFE) == 0)
        {
          v20 = 1;
        }

        v21 = (*(v6 + 56) + 12);
        while (1)
        {
          if (v18 == v16)
          {
            goto LABEL_110;
          }

          if (v3 == v16)
          {
            break;
          }

          v22 = *v21;
          v21 += 4;
          if (v22 == -1)
          {
            v23 = 3;
          }

          else
          {
            v23 = 4;
          }

          v19[v16] = v23;
          v17 = (v23 + v17);
          v16 = v16 + 1;
          if (v20 == v16)
          {
            goto LABEL_27;
          }
        }

LABEL_114:
        v180 = 0;
        v208 = 0u;
        v209 = 0u;
        memset(v207, 0, sizeof(v207));
        v100 = MEMORY[0x1E69E9C10];
        v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v192 = 136315906;
        *(v4 + 196) = "operator[]";
        v193 = 1024;
        if (v101)
        {
          v102 = 3;
        }

        else
        {
          v102 = 2;
        }

        *(v4 + 206) = 468;
        v195 = 2048;
        *(v4 + 212) = v3;
        v197 = 2048;
        *(v4 + 222) = v3;
        _os_log_send_and_compose_impl(v102, &v180, v207, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *&v187 = 0;
        v208 = 0u;
        v209 = 0u;
        memset(v207, 0, sizeof(v207));
        v103 = MEMORY[0x1E69E9C10];
        v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v192 = 136315906;
        *(v4 + 196) = "operator[]";
        v193 = 1024;
        if (v104)
        {
          v105 = 3;
        }

        else
        {
          v105 = 2;
        }

        *(v4 + 206) = 797;
        v195 = 2048;
        *(v4 + 212) = v18;
        v197 = 2048;
        *(v4 + 222) = v18;
        _os_log_send_and_compose_impl(v105, &v187, v207, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
        _os_crash_msg();
        __break(1u);
        *v192 = 0;
        memset(__src, 0, 64);
        *v189 = 0u;
        v106 = MEMORY[0x1E69E9C10];
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v207[0]) = 136315906;
        *(v207 + 4) = "operator[]";
        WORD6(v207[0]) = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        *(v207 + 14) = 468;
        WORD1(v207[1]) = 2048;
        *(&v207[1] + 4) = v3;
        WORD6(v207[1]) = 2048;
        *(&v207[1] + 14) = v3;
        _os_log_send_and_compose_impl(v108, v192, v189, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v207, 38, v156, v161);
        _os_crash_msg();
        __break(1u);
        v183 = 0;
        v208 = 0u;
        v209 = 0u;
        memset(v207, 0, sizeof(v207));
        v109 = MEMORY[0x1E69E9C10];
        v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v192 = 136315906;
        *&v192[4] = "operator[]";
        v193 = 1024;
        if (v110)
        {
          v111 = 3;
        }

        else
        {
          v111 = 2;
        }

        v194 = 789;
        v195 = 2048;
        v196 = v18;
        v197 = 2048;
        v198 = v3;
        _os_log_send_and_compose_impl(v111, &v183, v207, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v157, v162);
        _os_crash_msg();
        __break(1u);
        v186 = 0;
        v208 = 0u;
        v209 = 0u;
        memset(v207, 0, sizeof(v207));
        v112 = MEMORY[0x1E69E9C10];
        v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v199 = 136315906;
        v200 = "operator[]";
        v201 = 1024;
        if (v113)
        {
          v114 = 3;
        }

        else
        {
          v114 = 2;
        }

        v202 = 797;
        v203 = 2048;
        v204 = 0;
        v205 = 2048;
        v206 = 0;
        _os_log_send_and_compose_impl(v114, &v186, v207, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v199, 38, v158, v163);
        _os_crash_msg();
        __break(1u);
        goto LABEL_131;
      }

      v17 = 0;
LABEL_27:
      v181 = 0;
      v180 = 0;
      v182 = 0;
      if (!v14)
      {
        v29 = v182;
        goto LABEL_39;
      }

      v25 = 0;
      v26 = 0;
      v18 = *(v6 + 40);
      v27 = *(v6 + 56);
      v28 = v181;
      do
      {
        if (v25 == v18)
        {
          goto LABEL_118;
        }

        v187 = *(v27 + 16 * v25);
        v29 = v182;
        if (HIDWORD(v187) == -1)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v31 = &v187;
        do
        {
          v3 = v26;
          if (v28 <= v26)
          {
            *&v174 = 0;
            v208 = 0u;
            v209 = 0u;
            memset(v207, 0, sizeof(v207));
            v55 = MEMORY[0x1E69E9C10];
            v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v192 = 136315906;
            *&v192[4] = "operator[]";
            v193 = 1024;
            if (v56)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            v194 = 468;
            v195 = 2048;
            v196 = v3;
            v197 = 2048;
            v198 = v28;
            _os_log_send_and_compose_impl(v57, &v174, v207, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
            v58 = _os_crash_msg();
            __break(1u);
            v4 = v18;
            v3 = 0;
            v14 = 0;
LABEL_67:
            v18 = 0;
            DWORD1(v191) = v5;
            *(&v191 + 1) = v3;
            while (1)
            {
              if (v18 == v5)
              {
                goto LABEL_175;
              }

              v62 = v3;
              v63 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), *(v167 + v18));
              v65 = v165;
              if (*(v63 + 16) == 3)
              {
                v63 = re::internal::accessFaceVaryingAttributeSubmesh(v63, v64);
                v65 = v63;
              }

              if (v18 == v4)
              {
                goto LABEL_176;
              }

              v5 = (v14 + 24 * v18);
              v66 = 4 * (*(v65 + 3) & 0x3FFFFFFFLL);
              v67 = HIDWORD(v189[0]);
              if (!HIDWORD(v189[0]))
              {
                v74 = v5[2];
                goto LABEL_84;
              }

              v68 = 0;
              v69 = 0;
              v6 = *(v65 + 3);
              do
              {
                if (v68 == v6)
                {
                  *&v187 = 0;
                  v208 = 0u;
                  v209 = 0u;
                  memset(v207, 0, sizeof(v207));
                  v94 = MEMORY[0x1E69E9C10];
                  v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v192 = 136315906;
                  *&v192[4] = "operator[]";
                  v193 = 1024;
                  if (v95)
                  {
                    v96 = 3;
                  }

                  else
                  {
                    v96 = 2;
                  }

                  v194 = 797;
                  v195 = 2048;
                  v196 = v6;
                  v197 = 2048;
                  v198 = v6;
                  _os_log_send_and_compose_impl(v96, &v187, v207, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
                  _os_crash_msg();
                  __break(1u);
LABEL_110:
                  v180 = 0;
                  v208 = 0u;
                  v209 = 0u;
                  memset(v207, 0, sizeof(v207));
                  v97 = MEMORY[0x1E69E9C10];
                  v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v192 = 136315906;
                  *(v4 + 196) = "operator[]";
                  v193 = 1024;
                  if (v98)
                  {
                    v99 = 3;
                  }

                  else
                  {
                    v99 = 2;
                  }

                  *(v4 + 206) = 797;
                  v195 = 2048;
                  *(v4 + 212) = v18;
                  v197 = 2048;
                  *(v4 + 222) = v18;
                  _os_log_send_and_compose_impl(v99, &v180, v207, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_114;
                }

                v187 = *(*(v65 + 5) + 16 * v68);
                v3 = v5[1];
                if (HIDWORD(v187) == -1)
                {
                  v70 = 3;
                }

                else
                {
                  v70 = 4;
                }

                v71 = &v187;
                do
                {
                  v72 = v69;
                  if (v3 <= v69)
                  {
                    *&v174 = 0;
                    v208 = 0u;
                    v209 = 0u;
                    memset(v207, 0, sizeof(v207));
                    v76 = MEMORY[0x1E69E9C10];
                    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v192 = 136315906;
                    *&v192[4] = "operator[]";
                    v193 = 1024;
                    if (v77)
                    {
                      v78 = 3;
                    }

                    else
                    {
                      v78 = 2;
                    }

                    v194 = 468;
                    v195 = 2048;
                    v196 = v72;
                    v197 = 2048;
                    v198 = v3;
                    _os_log_send_and_compose_impl(v78, &v174, v207, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_90;
                  }

                  v73 = *v71++;
                  v74 = v5[2];
                  *(v74 + 4 * v69++) = v73;
                  --v70;
                }

                while (v70);
                v68 = (v68 + 1);
              }

              while (v68 != v67);
LABEL_84:
              v3 = v62;
              v75 = v62 + 16 * v18;
              *v75 = *v65;
              *(v75 + 8) = v74;
              ++v18;
              v6 = v168;
              v5 = v166;
              if (v18 == v4)
              {
                goto LABEL_46;
              }
            }
          }

          v32 = *v31++;
          *(v29 + 4 * v26++) = v32;
          --v30;
        }

        while (v30);
        v25 = v25 + 1;
      }

      while (v25 != v14);
LABEL_39:
      v189[1] = v185;
      *__src = v29;
      v168 = v6;
      v166 = v5;
      if (v5)
      {
        if (v33)
        {
          v3 = v33;
          v35 = v5 - 1;
          if (v5 == 1)
          {
            *v33 = 0;
            v36 = (v33 + 8);
          }

          else
          {
            v36 = (v33 + 8);
            do
            {
              *(v36 - 2) = 0;
              *v36 = 0;
              v36 += 2;
              --v35;
            }

            while (v35);
            *(v36 - 2) = 0;
          }

          *v36 = 0;
          if (v60)
          {
            v14 = v60;
            v61 = v60;
            v4 = v5;
            if (v5 != 1)
            {
              bzero(v60, 24 * v5 - 24);
              v61 = (v14 + 24 * v5 - 24);
            }

            *v61 = 0;
            v61[1] = 0;
            v61[2] = 0;
            goto LABEL_67;
          }

LABEL_184:
          re::internal::assertLog(4, v59, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
        }

LABEL_183:
        re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_184;
      }

      v4 = 0;
      v3 = 0;
LABEL_46:
      v37 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "osdEdgeCreaseIndices");
      v38 = re::internal::GeomAttributeManager::attributeByName((v6 + 64), "osdEdgeCreaseWeights");
      v187 = 0uLL;
      *&v188 = 0;
      v174 = 0uLL;
      *&v175 = 0;
      if (v38 && v37)
      {
        v39 = v38;
        v40 = (*(*v38 + 16))(v38);
        v41 = v40;
        *&__src[8] = v40;
        v42 = v40;
        v5 = re::GeomAttribute::accessValues<int>(v37);
        v45 = v44;
        v46 = re::GeomAttribute::accessValues<int>(v39);
        v48 = v175;
        if (v41)
        {
          v49 = 0;
          v18 = 0;
          v14 = *(&v174 + 1);
          v50 = *(&v187 + 1);
          v51 = v188;
          v52 = v45;
          v6 = v47;
          v53 = (v175 + 4);
          v54 = v5 + 1;
          while ((v45 + 1) >> 1 != v49)
          {
            if (v14 <= v18)
            {
              goto LABEL_147;
            }

            *(v53 - 1) = *(v54 - 1);
            v3 = v18 + 1;
            if (v45 >> 1 == v49)
            {
              goto LABEL_155;
            }

            if (v14 <= v3)
            {
              goto LABEL_159;
            }

            *v53 = *v54;
            if (v47 == v49)
            {
              goto LABEL_163;
            }

            if (v50 == v49)
            {
              goto LABEL_167;
            }

            *(v51 + 4 * v49) = *(v46 + 4 * v49);
            ++v49;
            v18 += 2;
            v53 += 2;
            v54 += 2;
            if (v41 == v49)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_139;
        }

LABEL_90:
        v51 = v188;
LABEL_91:
        *&__src[24] = v51;
        *&__src[16] = v48;
      }

      v79 = re::internal::GeomAttributeManager::attributeByName((v168 + 64), "osdVertexCreaseIndices");
      v80 = re::internal::GeomAttributeManager::attributeByName((v168 + 64), "osdVertexCreaseWeights");
      v172 = 0uLL;
      *&v173 = 0;
      v170 = 0uLL;
      *&v171 = 0;
      if (v80 && v79)
      {
        v6 = v80;
        v81 = (*(*v80 + 16))(v80);
        v82 = v81;
        *&__src[32] = v81;
        v83 = v81;
        v85 = re::GeomAttribute::accessValues<int>(v79);
        v87 = v86;
        v88 = re::GeomAttribute::accessValues<int>(v6);
        v90 = v171;
        if (v82)
        {
          v91 = 0;
          v3 = *(&v170 + 1);
          v18 = v87;
          v14 = v89;
          v92 = v82;
          v5 = *(&v172 + 1);
          v93 = v173;
          while (v87 != v91)
          {
            if (v3 == v91)
            {
              goto LABEL_135;
            }

            *(v90 + 4 * v91) = *(v85 + 4 * v91);
            if (v89 == v91)
            {
              goto LABEL_143;
            }

            if (v5 == v91)
            {
              goto LABEL_151;
            }

            *(v93 + 4 * v91) = *(v88 + 4 * v91);
            v91 = (v91 + 1);
            if (v92 == v91)
            {
              goto LABEL_103;
            }
          }

LABEL_131:
          *&v169 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v115 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          v194 = 613;
          v195 = 2048;
          v196 = v18;
          v197 = 2048;
          v198 = v18;
          _os_log_send_and_compose_impl(v117, &v169, v207, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_135:
          *&v169 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v118 = MEMORY[0x1E69E9C10];
          v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v119)
          {
            v120 = 3;
          }

          else
          {
            v120 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = v3;
          v197 = 2048;
          v198 = v3;
          _os_log_send_and_compose_impl(v120, &v169, v207, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_139:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v121 = MEMORY[0x1E69E9C10];
          v3 = v52;
          v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v122)
          {
            v123 = 3;
          }

          else
          {
            v123 = 2;
          }

          v194 = 613;
          v195 = 2048;
          v196 = v18;
          v197 = 2048;
          v198 = v3;
          _os_log_send_and_compose_impl(v123, &v172, v207, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_143:
          *&v169 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v124 = MEMORY[0x1E69E9C10];
          v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v125)
          {
            v126 = 3;
          }

          else
          {
            v126 = 2;
          }

          v194 = 613;
          v195 = 2048;
          v196 = v14;
          v197 = 2048;
          v198 = v14;
          _os_log_send_and_compose_impl(v126, &v169, v207, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_147:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v127 = MEMORY[0x1E69E9C10];
          v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v128)
          {
            v129 = 3;
          }

          else
          {
            v129 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = v18;
          v197 = 2048;
          v198 = v14;
          _os_log_send_and_compose_impl(v129, &v172, v207, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_151:
          *&v169 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v130 = MEMORY[0x1E69E9C10];
          v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v131)
          {
            v132 = 3;
          }

          else
          {
            v132 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = v5;
          v197 = 2048;
          v198 = v5;
          _os_log_send_and_compose_impl(v132, &v169, v207, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_155:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v133 = MEMORY[0x1E69E9C10];
          v18 = v52;
          v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v134)
          {
            v135 = 3;
          }

          else
          {
            v135 = 2;
          }

          v194 = 613;
          v195 = 2048;
          v196 = v3;
          v197 = 2048;
          v198 = v18;
          _os_log_send_and_compose_impl(v135, &v172, v207, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_159:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v136 = MEMORY[0x1E69E9C10];
          v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v137)
          {
            v138 = 3;
          }

          else
          {
            v138 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = (v18 + 1);
          v197 = 2048;
          v198 = v14;
          _os_log_send_and_compose_impl(v138, &v172, v207, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_163:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v50 = MEMORY[0x1E69E9C10];
          v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v139)
          {
            v140 = 3;
          }

          else
          {
            v140 = 2;
          }

          v194 = 613;
          v195 = 2048;
          v196 = v6;
          v197 = 2048;
          v198 = v6;
          _os_log_send_and_compose_impl(v140, &v172, v207, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_167:
          *&v172 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v141 = MEMORY[0x1E69E9C10];
          v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v142)
          {
            v143 = 3;
          }

          else
          {
            v143 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = v50;
          v197 = 2048;
          v198 = v50;
          _os_log_send_and_compose_impl(v143, &v172, v207, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_171:
          *v192 = 0;
          memset(__src, 0, 64);
          *v189 = 0u;
          v144 = MEMORY[0x1E69E9C10];
          v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v207[0]) = 136315906;
          *(v207 + 4) = "operator[]";
          WORD6(v207[0]) = 1024;
          if (v145)
          {
            v146 = 3;
          }

          else
          {
            v146 = 2;
          }

          *(v207 + 14) = 797;
          WORD1(v207[1]) = 2048;
          *(&v207[1] + 4) = 0;
          WORD6(v207[1]) = 2048;
          *(&v207[1] + 14) = 0;
          _os_log_send_and_compose_impl(v146, v192, v189, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v207, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
LABEL_175:
          re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v5);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v153, v154);
          __break(1u);
LABEL_176:
          *&v187 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v147 = MEMORY[0x1E69E9C10];
          v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v148)
          {
            v149 = 3;
          }

          else
          {
            v149 = 2;
          }

          v194 = 468;
          v195 = 2048;
          v196 = v4;
          v197 = 2048;
          v198 = v4;
          _os_log_send_and_compose_impl(v149, &v187, v207, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v155, v160);
          _os_crash_msg();
          __break(1u);
          v183 = 0;
          v208 = 0u;
          v209 = 0u;
          memset(v207, 0, sizeof(v207));
          v150 = MEMORY[0x1E69E9C10];
          v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v192 = 136315906;
          *&v192[4] = "operator[]";
          v193 = 1024;
          if (v151)
          {
            v152 = 3;
          }

          else
          {
            v152 = 2;
          }

          v194 = 789;
          v195 = 2048;
          v196 = 0;
          v197 = 2048;
          v198 = 0;
          _os_log_send_and_compose_impl(v152, &v183, v207, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v192, 38, v159, v164);
          _os_crash_msg();
          __break(1u);
          goto LABEL_183;
        }

        v93 = v173;
LABEL_103:
        *&__src[48] = v93;
        *&__src[40] = v90;
      }

      operator new();
    }
  }

  return result;
}

void re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPart(int8x16_t **this, const re::GeomMesh *a2, MeshAssetPart *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!re::internal::GeomAttributeManager::attributeByName((this + 8), "vertexUV"))
  {
    v27 = 0;
    v28 = 0;
    bzero(v29, 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh(v29);
    v29[89] = 0;
    re::GeomMesh::copy(this, &v27);
    v7 = re::addVertexUVs(&v27, v6);
    v8 = re::GeomMesh::accessVertexPositions(this);
    v10 = v9;
    if ((*(*v7 + 16))(v7))
    {
      if (!*(v7 + 5))
      {
        goto LABEL_23;
      }

      v12 = *(v7 + 7);
      v13 = (*(*v7 + 16))(v7);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = *(this + 4);
    if (!v14)
    {
LABEL_14:
      re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(&v27, a2, v11);
      re::GeomMesh::~GeomMesh(&v27);
      return;
    }

    v15 = 0;
    while (v10 != v15)
    {
      if (v13 == v15)
      {
        goto LABEL_19;
      }

      v16 = *v8;
      v8 += 2;
      *(v12 + 8 * v15++) = v16;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v34 = 613;
    v35 = 2048;
    v36 = v10;
    v37 = 2048;
    v38 = v10;
    _os_log_send_and_compose_impl(v19, &v30, &v39, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v26, v27);
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v34 = 621;
    v35 = 2048;
    v36 = v13;
    v37 = 2048;
    v38 = v13;
    _os_log_send_and_compose_impl(v22, &v30, &v39, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v26, v27);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = 0;
    v37 = 2048;
    v38 = 0;
    _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v26, v27);
    _os_crash_msg();
    __break(1u);
  }

  re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPartInternal(this, a2, v5);
}

re::DynamicString *re::ASTCCompressor::initializeContext@<X0>(re::DynamicString *result@<X0>, float *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v7 = result;
  v9 = (result + 32);
  if (*(result + 4))
  {
    if (*a2 != *(result + 4) || *(a2 + 1) != *(result + 5) || *(a2 + 8) != *(result + 24) || a2[3] != *(result + 7) || *result != __PAIR64__(a4, a3))
    {
      v10 = "ASTCCompressor::initializeContext cannot be called with different options";
LABEL_8:
      v11 = v26;
      v13 = *(&v27 + 1);
      v12 = v27;
LABEL_9:
      *a5 = 0;
      *(a5 + 8) = v11;
      *(a5 + 24) = v12;
      *(a5 + 32) = v13;
      return result;
    }

    goto LABEL_41;
  }

  if (!a3)
  {
    v10 = "Invalid input ASTC pixel format";
    goto LABEL_8;
  }

  if (!*(a2 + 1))
  {
    v10 = "Invalid ASTC mode";
    goto LABEL_8;
  }

  if (!*a2)
  {
    v10 = "Invalid ASTC block size";
    goto LABEL_8;
  }

  *result = a3;
  *(result + 1) = a4;
  *(result + 1) = *a2;
  v14 = *(a2 + 1);
  switch(v14)
  {
    case 1u:
LABEL_17:
      if ((a3 - 6) > 4)
      {
        v15 = 0;
        goto LABEL_28;
      }

      goto LABEL_24;
    case 3u:
      if ((a3 - 6) >= 5)
      {
        v15 = 0;
        v14 = 3;
LABEL_28:
        if (a4 - 3 >= 2)
        {
          v16 = v15;
        }

        else
        {
          v16 = v15 | 8;
        }

        v17 = re::blockToSize(*a2);
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v18 = astcenc_config_init(v14, SLODWORD(v17), SHIDWORD(v17), 1u, v16, &v26, a2[3]);
        DWORD1(v27) = 1065353216;
        v20 = 1.0;
        if (isSingleChannel)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = 1.0;
        }

        *(&v27 + 2) = v21;
        *(&v27 + 3) = v21;
        if (v5 - 6 >= 5)
        {
          v20 = 0.0;
        }

        *&v28 = v20;
        if (v18)
        {
          LODWORD(result) = v18;
        }

        else
        {
          result = astcenc_context_alloc(&v26, *(v7 + 2), v9);
          if (!result)
          {
LABEL_41:
            *a5 = 1;
            return result;
          }

          *v9 = 0;
        }

        error_string = astcenc_get_error_string(result);
        v11 = v23;
        v12 = v24;
        v13 = v25;
        goto LABEL_9;
      }

      v14 = 2;
LABEL_24:
      if (a2[2])
      {
        v15 = 0;
      }

      else
      {
        v15 = 4;
      }

      goto LABEL_28;
    case 2u:
      v14 = 0;
      goto LABEL_17;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "initializeContext", 204);
  result = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
  return result;
}

double re::blockToSize(int a1)
{
  *&result = 0x400000004;
  switch(a1)
  {
    case 0:
      result = 0.0;
      break;
    case 2:
      *&result = 0x400000005;
      break;
    case 3:
      *&result = 0x500000005;
      break;
    case 4:
      *&result = 0x500000006;
      break;
    case 5:
      *&result = 0x600000006;
      break;
    case 6:
      *&result = 0x500000008;
      break;
    case 7:
      *&result = 0x600000008;
      break;
    case 8:
      *&result = 0x800000008;
      break;
    case 9:
      *&result = 0x50000000ALL;
      break;
    case 10:
      *&result = 0x60000000ALL;
      break;
    case 11:
      *&result = 0x80000000ALL;
      break;
    case 12:
      *&result = 0xA0000000ALL;
      break;
    case 13:
      *&result = 0xA0000000CLL;
      break;
    case 14:
      *&result = 0xC0000000CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t re::ASTCCompressor::compress@<X0>(re::ASTCCompressor *this@<X0>, const vImage_Buffer *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *this;
  if (*this <= 8)
  {
    if (v8 == 2 || v8 == 5)
    {
      v11 = isSingleChannel ^ 1;
      if (isSingleChannel)
      {
        v12 = 0;
      }

      else
      {
        v12 = 2;
      }

      v13 = 1;
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    v11 = v18 ^ 1;
    if (v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v14 = 3;
    if (v8 - 6 < 2)
    {
      v15 = 0;
      goto LABEL_24;
    }

    if (v8 == 8)
    {
LABEL_23:
      v15 = v12;
      v12 = 0;
      goto LABEL_24;
    }

LABEL_11:
    v14 = 5;
    if (((v8 - 4) & 0xFFFFFFFB) != 0)
    {
      v15 = 0;
LABEL_24:
      v43 = v13;
      if (v8 != 10 && v8 != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v8 != 10)
  {
    if (v8 == 9)
    {
      p_width = &a2->width;
      width = a2->width;
      v40 = 0;
      v41 = 3;
      v11 = 1;
      v42 = 2;
      v43 = 1;
LABEL_31:
      v21 = 8;
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  v15 = 0;
  v14 = 3;
  v43 = 1;
  v12 = 2;
  v11 = 1;
LABEL_26:
  v19 = v11;
  v20 = v12;
  v12 = v14;
  v11 = v20;
  v14 = v15;
  v15 = v19;
LABEL_27:
  p_width = &a2->width;
  width = a2->width;
  v21 = 1;
  v41 = v14;
  v42 = v12;
  v40 = v15;
  if (v8 > 0xA)
  {
    goto LABEL_34;
  }

  if (((1 << v8) & 0x1D8) != 0)
  {
    v21 = 4;
    goto LABEL_36;
  }

  if (((1 << v8) & 0x620) != 0)
  {
    goto LABEL_31;
  }

  if (v8 == 2)
  {
    v21 = 2;
  }

  else
  {
LABEL_34:
    if (!v8)
    {
      v21 = 0;
    }
  }

LABEL_36:
  v22 = v21 * width;
  v64 = 0;
  v63 = 0;
  data = a2->data;
  height = a2->height;
  v61 = a2->data;
  memset(v62, 0, sizeof(v62));
  if (a2->rowBytes != v21 * width)
  {
    re::DynamicArray<BOOL>::resize(v62, height * v22);
    v25 = v64;
    if (a2->height)
    {
      v39 = v11;
      v26 = a3;
      v27 = a4;
      v28 = 0;
      do
      {
        memcpy(v25, data, v22);
        v25 += v22;
        data += a2->rowBytes;
        ++v28;
        height = a2->height;
      }

      while (v28 < height);
      v25 = v64;
      a4 = v27;
      a3 = v26;
      v11 = v39;
    }

    else
    {
      height = 0;
    }

    v61 = v25;
    width = *p_width;
  }

  v29 = re::blockToSize(*(this + 4));
  v60 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = &v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN2re14ASTCCompressor8compressERK13vImage_BufferPh_block_invoke;
  aBlock[3] = &unk_1E87214C8;
  v48 = width;
  v49 = height;
  v50 = 1;
  v51 = v43;
  v55 = v40;
  v56 = v11;
  v57 = v42;
  v58 = v41;
  v52 = &v61;
  v53 = a3;
  v54 = 16 * (width + LODWORD(v29) - 1) / LODWORD(v29) * ((height + HIDWORD(v29) - 1) / HIDWORD(v29));
  aBlock[4] = v59;
  aBlock[5] = this;
  v30 = _Block_copy(aBlock);
  v31 = *(this + 1);
  if (v31 < 2)
  {
    v30[2](v30, 0);
  }

  else
  {
    dispatch_apply(v31, *(this + 5), v30);
  }

  astcenc_compress_reset(*(this + 4));
  if (atomic_load(&v60))
  {
    v33 = atomic_load(&v60);
    error_string = astcenc_get_error_string(v33);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    *a4 = 0;
    *(a4 + 8) = v35;
    *(a4 + 24) = v36;
    *(a4 + 32) = v37;
  }

  else
  {
    *a4 = 1;
  }

  _Block_object_dispose(v59, 8);
  result = v62[0];
  if (v62[0])
  {
    if (v64)
    {
      return (*(*v62[0] + 40))(v62[0]);
    }
  }

  return result;
}

uint64_t ___ZN2re14ASTCCompressor8compressERK13vImage_BufferPh_block_invoke(void *a1, uint64_t a2)
{
  result = astcenc_compress_image(*(a1[5] + 32));
  if (result)
  {
    atomic_store(result, *(*(a1[4] + 8) + 24));
  }

  return result;
}

uint64_t re::getASTCBlockSize(int a1)
{
  if ((a1 - 186) > 0x32)
  {
    return 0;
  }

  else
  {
    return dword_1E30FF998[a1 - 186];
  }
}

uint64_t re::getASTCDefaultMode(int a1)
{
  if (re::isHDR(a1))
  {
    return 3;
  }

  MTLPixelFormatGetInfoForDevice();
  return 1;
}

uint64_t re::getMTLPixelFormat(int a1, int a2)
{
  if (a2 == 3)
  {
    if (a1 <= 0xE)
    {
      v2 = &unk_1E30FFADC;
      return v2[a1];
    }
  }

  else if (a2 == 2)
  {
    if (a1 < 0xF)
    {
      v2 = &unk_1E30FFAA0;
      return v2[a1];
    }
  }

  else if (a2 == 1 && a1 < 0xF)
  {
    v2 = &unk_1E30FFA64;
    return v2[a1];
  }

  return 0;
}

uint64_t re::MTLToASTCPixelFormat(int a1, int a2)
{
  if (a1 <= 69)
  {
    if ((a1 - 10) < 2)
    {
      return 1;
    }

    if (a1 == 25)
    {
      return 2;
    }

    return 0;
  }

  if ((a1 - 70) >= 2)
  {
    if (a1 != 115)
    {
      return 0;
    }

    v3 = a2 == 0;
    v4 = 5;
    v5 = 9;
  }

  else
  {
    v3 = a2 == 0;
    v4 = 3;
    v5 = 6;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void re::internalLogTextureCompressionInfo(re *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a7 != 7)
  {
    a5 = a4;
  }

  if (a7 == 5)
  {
    v15 = 6;
  }

  else
  {
    v15 = a5;
  }

  v16 = *re::pipelineLogObjects(a1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (a8 > 69)
    {
      if ((a8 - 70) < 2)
      {
        v17 = "rgba8";
        goto LABEL_18;
      }

      if (a8 == 115)
      {
        v17 = "rgbaFloat16";
        goto LABEL_18;
      }
    }

    else
    {
      if ((a8 - 10) < 2)
      {
        v17 = "r8";
LABEL_18:
        v18 = *(a9 + 8);
        v19 = *a9;
        if (v19 > 0xE)
        {
          v20 = "4x4";
        }

        else
        {
          v20 = off_1E87214E8[v19];
        }

        v21 = 136316930;
        v22 = a1;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = v15;
        v29 = 1024;
        v30 = a6;
        v31 = 2080;
        v32 = v17;
        v33 = 1024;
        v34 = v18;
        v35 = 2080;
        v36 = v20;
        _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "%s - Texture compression requested on texture import:\nInput: %ux%ux%u. mips: %u, texel format: %s, premult if alpha: %d, block format: %s", &v21, 0x3Eu);
        return;
      }

      if (a8 == 25)
      {
        v17 = "rFloat16";
        goto LABEL_18;
      }
    }

    v17 = "Invalid";
    goto LABEL_18;
  }
}

void re::logTextureCompressionInfo(re *a1, re::TextureData *this, unsigned int *a3)
{
  v6 = re::TextureData::width(this);
  v7 = re::TextureData::height(this);
  v8 = re::TextureData::arrayLength(this);
  v9 = re::TextureData::depth(this);
  re::TextureData::mipmapLevelCount(this);
  v11 = v10;
  v12 = re::TextureData::textureType(this);
  re::TextureData::pixelFormat(this);
  re::internalLogTextureCompressionInfo(a1, v6, v7, v8, v9, v11, v12, v13, a3);
}

uint64_t *re::parseAnimationBVH@<X0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v160 = *MEMORY[0x1E69E9840];
  v137 = 0.0;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v150 = this;
  v151[64] = v151;
  v151[65] = v151;
  v136 = 0;
  v133[1] = 0;
  v134 = 0;
  v133[0] = 0;
  v135 = 0;
  v5 = 0;
  v6 = v4 - NextToken;
  if (v4 != NextToken)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 - NextToken;
    }

    while (v7 != 9)
    {
      if (aHierarchy[v7] != *(NextToken + v7))
      {
        goto LABEL_41;
      }

      if (v5 == ++v7)
      {
        goto LABEL_10;
      }
    }

    v5 = 9;
  }

LABEL_10:
  if (v5 != v6)
  {
    goto LABEL_41;
  }

  if (!NextToken)
  {
    goto LABEL_41;
  }

  __endptr[0].n128_u64[0] = 0;
  memset(&__endptr[1], 0, 32);
  __endptr[0].n128_u64[1] = &str_67;
  *v147 = 0;
  *&v147[8] = 0xFFFFFFFFLL;
  v9 = __endptr[2].n128_u64[0];
  if (__endptr[2].n128_u64[0] && __endptr[2].n128_u64[1])
  {
    v9 = (*(*__endptr[2].n128_u64[0] + 40))(v8);
  }

  if (__endptr[0].n128_u8[0])
  {
  }

  v10 = v136;
  v11 = v134;
  v13 = v12 - NextToken;
  if (v12 == NextToken)
  {
    v14 = 0;
  }

  else
  {
    v15 = 0;
    v14 = v13 <= 1 ? 1 : v12 - NextToken;
    while (v15 != 4)
    {
      if (aRoot_1[v15] != *(NextToken + v15))
      {
        goto LABEL_41;
      }

      if (v14 == ++v15)
      {
        goto LABEL_27;
      }
    }

    v14 = 4;
  }

LABEL_27:
  {
LABEL_41:
    v33 = "Unable to parse hierarchy.";
LABEL_42:
    v34 = __endptr[0];
    v35 = __endptr[1];
    *a1 = 0;
    a1[1] = 100;
    a1[2] = re::AssetErrorCategory(void)::instance;
    *(a1 + 3) = v34;
    *(a1 + 5) = v35;
LABEL_43:
    v36 = v133[0];
    if (v133[0])
    {
      v37 = v136;
      if (v136)
      {
        if (v134)
        {
          v38 = v134 << 6;
          v39 = v136;
          do
          {
            v40 = *(v39 + 4);
            if (v40)
            {
              if (*(v39 + 5))
              {
                (*(*v40 + 40))(v40, *(v39 + 6));
                *(v39 + 5) = 0;
                *(v39 + 6) = 0;
              }

              *(v39 + 4) = 0;
            }

            re::StringID::destroyString(v39);
            v39 = (v39 + 64);
            v38 -= 64;
          }

          while (v38);
        }

        (*(*v36 + 40))(v36, v37);
      }
    }

    re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v142 + 1);
    if (v141)
    {
      if (*(&v141 + 1))
      {
        (*(*v141 + 40))();
        *(&v141 + 1) = 0;
        *&v142 = 0;
      }

      *&v141 = 0;
    }

    if (*(&v139 + 1))
    {
      if (v140)
      {
        (*(**(&v139 + 1) + 40))();
        v140 = 0uLL;
      }

      *(&v139 + 1) = 0;
    }

    return re::FixedArray<re::StringID>::deinit(&v138);
  }

  v20 = 0;
  v21 = 0;
  v22 = v136;
  v23 = v136;
  do
  {
    v24 = *(&v138 + 1);
    if (*(&v138 + 1) <= v21)
    {
      v144.i64[0] = 0;
      memset(v147, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v152 = 136315906;
      v153 = "operator[]";
      v154 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v155 = 468;
      v156 = 2048;
      v157 = v21;
      v158 = 2048;
      v159 = v24;
      _os_log_send_and_compose_impl(v54, &v144, __endptr, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
      _os_crash_msg();
      __break(1u);
LABEL_92:
      v144.i64[0] = 0;
      memset(v147, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v152 = 136315906;
      v153 = "operator[]";
      v154 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v155 = 468;
      v156 = 2048;
      v157 = v21;
      v158 = 2048;
      v159 = v24;
      _os_log_send_and_compose_impl(v57, &v144, __endptr, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
      _os_crash_msg();
      __break(1u);
LABEL_96:
      v144.i64[0] = 0;
      memset(v147, 0, 32);
      memset(__endptr, 0, sizeof(__endptr));
      a1 = MEMORY[0x1E69E9C10];
      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v152 = 136315906;
      v153 = "operator[]";
      v154 = 1024;
      if (v58)
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      v155 = 468;
      v156 = 2048;
      v157 = v23;
      v158 = 2048;
      v159 = v21;
      _os_log_send_and_compose_impl(v59, &v144, __endptr, 80, &dword_1E1C61000, a1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
      v29 = _os_crash_msg();
      __break(1u);
      goto LABEL_100;
    }

    v25 = re::StringID::operator=((v139 + v20), v23);
    v24 = v140;
    if (v140 <= v21)
    {
      goto LABEL_92;
    }

    *(*(&v140 + 1) + 4 * v21++) = *(v23 + 14);
    v23 = (v23 + 64);
    v20 += 16;
  }

  while (v18 != v21);
  v24 = &v137;
  v23 = 0;
  v26 = (v22 + 16);
  v27 = 32;
  do
  {
    v21 = *(&v141 + 1);
    if (*(&v141 + 1) <= v23)
    {
      goto LABEL_96;
    }

    v28 = *v26;
    v26 += 4;
    *(v142 + v27) = v28;
    v23 = (v23 + 1);
    v27 += 48;
  }

  while (v18 != v23);
  v31 = v30 - v29;
  if (v30 == v29)
  {
    v32 = 0;
  }

  else
  {
    v42 = 0;
    if (v31 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30 - v29;
    }

    while (v42 != 6)
    {
      if (aMotion[v42] != *(v29 + v42))
      {
        goto LABEL_175;
      }

      if (v32 == ++v42)
      {
        goto LABEL_70;
      }
    }

    v32 = 6;
  }

LABEL_70:
  if (v32 != v31)
  {
    goto LABEL_175;
  }

  if (!v29)
  {
    goto LABEL_175;
  }

  v44 = v43 - v29;
  if (v43 == v29)
  {
    v45 = 0;
  }

  else
  {
    v46 = 0;
    v45 = v44 <= 1 ? 1 : v43 - v29;
    while (v46 != 7)
    {
      if (aFrames[v46] != *(v29 + v46))
      {
        goto LABEL_175;
      }

      if (v45 == ++v46)
      {
        goto LABEL_82;
      }
    }

    v45 = 7;
  }

LABEL_82:
  if (v45 != v44)
  {
    goto LABEL_175;
  }

  if (v47 == v29)
  {
    goto LABEL_175;
  }

  v48 = v47;
  __endptr[0].n128_u64[0] = 0;
  v29 = strtol(v29, __endptr, 10);
  if (__endptr[0].n128_u64[0] != v48)
  {
    goto LABEL_175;
  }

  LODWORD(v23) = v29;
  if (!v29)
  {
    goto LABEL_175;
  }

  v50 = v49 - v29;
  if (v49 == v29)
  {
    v51 = 0;
    goto LABEL_108;
  }

LABEL_100:
  v60 = 0;
  v51 = v50 <= 1 ? 1 : v50;
  while (v60 != 5)
  {
    if (aFrame[v60] != *(v29 + v60))
    {
      goto LABEL_175;
    }

    if (v51 == ++v60)
    {
      goto LABEL_108;
    }
  }

  v51 = 5;
LABEL_108:
  if (v51 != v50)
  {
    goto LABEL_175;
  }

  v62 = v61 - v29;
  if (v61 == v29)
  {
    v63 = 0;
  }

  else
  {
    v64 = 0;
    v63 = v62 <= 1 ? 1 : v61 - v29;
    while (v64 != 5)
    {
      if (aTime_0[v64] != *(v29 + v64))
      {
        goto LABEL_175;
      }

      if (v63 == ++v64)
      {
        goto LABEL_119;
      }
    }

    v63 = 5;
  }

LABEL_119:
  {
LABEL_175:
    v33 = "Unable to parse motion frames.";
    goto LABEL_42;
  }

  if (v23 < 1)
  {
LABEL_166:
    __endptr[0].n128_f32[0] = v137;
    re::FixedArray<re::StringID>::FixedArray(&__endptr[0].n128_u64[1], &v138);
    re::FixedArray<unsigned int>::FixedArray(__endptr[2].n128_u64, &v139 + 1);
    re::FixedArray<re::GenericSRT<float>>::FixedArray(&v147[8], v24 + 7);
    re::FixedArray<re::FixedArray<re::GenericSRT<float>>>::FixedArray(&v147[32], &v142 + 1);
    *a1 = 1;
    *(a1 + 2) = __endptr[0].n128_u32[0];
    v89 = __endptr[1].n128_i64[0];
    a1[2] = __endptr[0].n128_i64[1];
    a1[3] = v89;
    *(a1 + 2) = *(&__endptr[1] + 8);
    memset(&__endptr[0].n128_i8[8], 0, 32);
    a1[6] = __endptr[2].n128_i64[1];
    __endptr[2].n128_u64[1] = 0;
    *(a1 + 7) = *v147;
    *v147 = 0u;
    a1[9] = *&v147[16];
    *(a1 + 5) = *&v147[24];
    memset(&v147[16], 0, 24);
    v90 = v149;
    a1[12] = v148;
    a1[13] = v90;
    v148 = 0;
    v149 = 0;
    re::FixedArray<re::FixedArray<unsigned int>>::deinit(&v147[32]);
    if (*&v147[8])
    {
      if (*&v147[16])
      {
        (*(**&v147[8] + 40))();
        *&v147[16] = 0;
        *&v147[24] = 0;
      }

      *&v147[8] = 0;
    }

    if (__endptr[2].n128_u64[0])
    {
      if (__endptr[2].n128_u64[1])
      {
        (*(*__endptr[2].n128_u64[0] + 40))();
        __endptr[2].n128_u64[1] = 0;
        *v147 = 0;
      }

      __endptr[2].n128_u64[0] = 0;
    }

    re::FixedArray<re::StringID>::deinit(&__endptr[0].n128_u64[1]);
    goto LABEL_43;
  }

  v128 = 0;
  v126 = v23 & 0x7FFFFFFF;
  v127 = vdupq_n_s32(0x3C8EFA35u);
  v67 = v18;
  while (1)
  {
    i = v143;
    if (v143 <= v128)
    {
      goto LABEL_188;
    }

    v69 = (*(&v143 + 1) + 24 * v128);
    v131 = v69;
    if (v67)
    {
      break;
    }

LABEL_164:
    if ((v29 & 1) == 0)
    {
      goto LABEL_175;
    }

    if (++v128 == v126)
    {
      goto LABEL_166;
    }
  }

  v132 = 0;
  while (1)
  {
    i = v131[1];
    if (i <= v132)
    {
      break;
    }

    v70 = v22 + 64 * v132;
    *(v131[2] + 48 * v132 + 32) = *(v70 + 1);
    if (v132 == v18)
    {
      goto LABEL_184;
    }

    if (*(v70 + 5))
    {
      for (i = 0; i < *(v70 + 5); ++i)
      {
        if (v71 == v29)
        {
          goto LABEL_175;
        }

        v72 = v71;
        __endptr[0].n128_u64[0] = 0;
        v73.f32[0] = strtof(v29, __endptr);
        v130 = v73;
        if (__endptr[0].n128_u64[0] != v72)
        {
          goto LABEL_175;
        }

        if (v74 == v29)
        {
          goto LABEL_175;
        }

        v75 = v74;
        __endptr[0].n128_u64[0] = 0;
        v76.f32[0] = strtof(v29, __endptr);
        v129 = v76;
        if (__endptr[0].n128_u64[0] != v75)
        {
          goto LABEL_175;
        }

        if (v77 == v29)
        {
          goto LABEL_175;
        }

        v78 = v77;
        __endptr[0].n128_u64[0] = 0;
        v80.f32[0] = strtof(v29, __endptr);
        if (__endptr[0].n128_u64[0] != v78)
        {
          goto LABEL_175;
        }

        v67 = *(v70 + 5);
        if (v67 <= i)
        {
          v144.i64[0] = 0;
          memset(v147, 0, 32);
          memset(__endptr, 0, sizeof(__endptr));
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v152 = 136315906;
          v153 = "operator[]";
          v154 = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          v155 = 476;
          v156 = 2048;
          v157 = i;
          v158 = 2048;
          v159 = v67;
          _os_log_send_and_compose_impl(v93, &v144, __endptr, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
          _os_crash_msg();
          __break(1u);
          goto LABEL_180;
        }

        v81 = *(*(v70 + 6) + 4 * i);
        if (v81 <= 2)
        {
          switch(v81)
          {
            case 0:
              v67 = v131[1];
              if (v67 <= v132)
              {
                goto LABEL_200;
              }

              v83 = v130;
              v83.i32[1] = v129.i32[0];
              v83.i32[2] = v80.i32[0];
              *(v131[2] + 48 * v132 + 32) = v83;
              continue;
            case 1:
              v84 = v130;
              v84.i32[1] = v129.i32[0];
              v84.i32[2] = v80.i32[0];
              v144 = vmulq_f32(v84, v127);
              __endptr[0] = xmmword_1E30474D0;
              re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 0, __endptr, 1);
              v67 = v131[1];
              if (v67 <= v132)
              {
                goto LABEL_204;
              }

              break;
            case 2:
              v80.i32[1] = v130.i32[0];
              v80.i32[2] = v129.i32[0];
              v144 = vmulq_f32(v80, v127);
              __endptr[0] = xmmword_1E30474D0;
              re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 1, __endptr, 1);
              v67 = v131[1];
              if (v67 <= v132)
              {
                goto LABEL_196;
              }

              break;
            default:
              goto LABEL_220;
          }
        }

        else if (v81 > 4)
        {
          if (v81 == 5)
          {
            v86 = v129;
            v86.i32[1] = v130.i32[0];
            v86.i32[2] = v80.i32[0];
            v144 = vmulq_f32(v86, v127);
            __endptr[0] = xmmword_1E30474D0;
            re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 4, __endptr, 1);
            v67 = v131[1];
            if (v67 <= v132)
            {
              goto LABEL_216;
            }
          }

          else
          {
            if (v81 != 6)
            {
              goto LABEL_220;
            }

            v80.i32[1] = v129.i32[0];
            v80.i32[2] = v130.i32[0];
            v144 = vmulq_f32(v80, v127);
            __endptr[0] = xmmword_1E30474D0;
            re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 5, __endptr, 1);
            v67 = v131[1];
            if (v67 <= v132)
            {
              goto LABEL_208;
            }
          }
        }

        else if (v81 == 3)
        {
          v85 = v129;
          v85.i32[1] = v80.i32[0];
          v85.i32[2] = v130.i32[0];
          v144 = vmulq_f32(v85, v127);
          __endptr[0] = xmmword_1E30474D0;
          re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 2, __endptr, 1);
          v67 = v131[1];
          if (v67 <= v132)
          {
            goto LABEL_212;
          }
        }

        else
        {
          v82 = v130;
          v82.i32[1] = v129.i32[0];
          v82.i32[2] = v80.i32[0];
          v144 = vmulq_f32(v82, v127);
          __endptr[0] = xmmword_1E30474D0;
          re::convertIntrinsicEulersToQuaternions<float>(&v144, 1, 3, __endptr, 1);
          v67 = v131[1];
          if (v67 <= v132)
          {
            goto LABEL_192;
          }
        }

        v87 = __endptr[0].n128_u64[1];
        v88 = v131[2] + 48 * v132;
        *(v88 + 16) = __endptr[0].n128_u64[0];
        *(v88 + 24) = v87;
      }
    }

    if (++v132 == v18)
    {
      v67 = v18;
      goto LABEL_164;
    }
  }

LABEL_180:
  v144.i64[0] = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v94 = MEMORY[0x1E69E9C10];
  v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v95)
  {
    v96 = 3;
  }

  else
  {
    v96 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = i;
  _os_log_send_and_compose_impl(v96, &v144, __endptr, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_184:
  v144.i64[0] = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v97 = MEMORY[0x1E69E9C10];
  v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v98)
  {
    v99 = 3;
  }

  else
  {
    v99 = 2;
  }

  v155 = 797;
  v156 = 2048;
  v157 = v18;
  v158 = 2048;
  v159 = v18;
  _os_log_send_and_compose_impl(v99, &v144, __endptr, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_188:
  v144.i64[0] = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v100 = MEMORY[0x1E69E9C10];
  v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v101)
  {
    v102 = 3;
  }

  else
  {
    v102 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v128;
  v158 = 2048;
  v159 = i;
  _os_log_send_and_compose_impl(v102, &v144, __endptr, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_192:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v103 = MEMORY[0x1E69E9C10];
  v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v104)
  {
    v105 = 3;
  }

  else
  {
    v105 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v105, &v145, __endptr, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_196:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v106 = MEMORY[0x1E69E9C10];
  v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v107)
  {
    v108 = 3;
  }

  else
  {
    v108 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v108, &v145, __endptr, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_200:
  v144.i64[0] = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v109 = MEMORY[0x1E69E9C10];
  v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v110)
  {
    v111 = 3;
  }

  else
  {
    v111 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v111, &v144, __endptr, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_204:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v112 = MEMORY[0x1E69E9C10];
  v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v113)
  {
    v114 = 3;
  }

  else
  {
    v114 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v114, &v145, __endptr, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_208:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v115 = MEMORY[0x1E69E9C10];
  v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v116)
  {
    v117 = 3;
  }

  else
  {
    v117 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v117, &v145, __endptr, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_212:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v118 = MEMORY[0x1E69E9C10];
  v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v119)
  {
    v120 = 3;
  }

  else
  {
    v120 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v120, &v145, __endptr, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_216:
  v145 = 0;
  memset(v147, 0, 32);
  memset(__endptr, 0, sizeof(__endptr));
  v121 = MEMORY[0x1E69E9C10];
  v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v152 = 136315906;
  v153 = "operator[]";
  v154 = 1024;
  if (v122)
  {
    v123 = 3;
  }

  else
  {
    v123 = 2;
  }

  v155 = 468;
  v156 = 2048;
  v157 = v132;
  v158 = 2048;
  v159 = v67;
  _os_log_send_and_compose_impl(v123, &v145, __endptr, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v152, 38, v124, v125);
  _os_crash_msg();
  __break(1u);
LABEL_220:
  re::internal::assertLog(4, v79, "assertion failure: '%s' (%s:line %i) Invalid Joint Channel value.", "!Unreachable code", "parseFrameNumbersLine", 507);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid Joint Channel value.");
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::anonymous namespace::BVHJointData>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v13 = 2 * v4;
      v14 = v4 == 0;
      v15 = 8;
      if (!v14)
      {
        v15 = v13;
      }

      if (v15 <= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = (*(a1 + 32) + (*(a1 + 16) << 6));
  v9 = a2->n128_u64[0];
  v8->n128_u64[0] = v8->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v8->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v8->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  result = a2[1];
  v8[1] = result;
  v8[2].n128_u64[1] = 0;
  v8[3].n128_u64[0] = 0;
  v8[2].n128_u64[0] = 0;
  v11 = a2[2].n128_u64[1];
  v8[2].n128_u64[0] = a2[2].n128_u64[0];
  v8[2].n128_u64[1] = v11;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  v12 = v8[3].n128_u64[0];
  v8[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v12;
  v8[3].n128_u32[2] = a2[3].n128_u32[2];
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::anonymous namespace::parseJointDescription(re::_anonymous_namespace_::TokenStream *a1, int a2, uint64_t a3)
{
  v98 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v7 = *(a3 + 32);
  v8 = *(a3 + 16);
  v11 = v10 - NextToken;
  if (v10 == NextToken)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    v12 = v11 <= 1 ? 1 : v10 - NextToken;
    while (v13 != 8)
    {
      if (aChannels[v13] != NextToken[v13])
      {
        return 0;
      }

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }

    v12 = 8;
  }

LABEL_13:
  if (v12 != v11)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 0;
  }

  v17 = v15;
  __endptr[0].n128_u64[0] = 0;
  v18 = strtol(v14, __endptr, 10);
  if (__endptr[0].n128_u64[0] != v17)
  {
    return 0;
  }

  v19 = v18;
  if (v18 < 1)
  {
    return 0;
  }

  v20 = v18 / 3uLL;
  if (v18 % 3)
  {
    return 0;
  }

  v21 = v7 + (v8 << 6);
  *(v21 - 24) = v20;
  if (v19 > 2)
  {
    v37 = 4 * v20;
    *(v21 - 16) = v38;
    if (v38)
    {
      v40 = v38;
      if (v19 - 3 >= 3)
      {
        bzero(v38, v37 - 4);
        v40 = (v40 + v37 - 4);
      }

      v3 = 0;
      *v40 = 0;
      if (v20 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v20;
      }

      while (1)
      {
        v44 = v43 - v42;
        if ((v43 - v42 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(__endptr, v42, v44);
        __endptr[0].n128_u8[v44] = 0;
        v47 = v46 - v45;
        if ((v46 - v45 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(&v81, v45, v47);
        *(&v81 + v47) = 0;
        v50 = v49 - v48;
        if ((v49 - v48 + 1) > 0x20)
        {
          return 0;
        }

        memcpy(v84, v48, v50);
        v84[v50] = 0;
        v51 = *(v21 - 24);
        if (v51 <= v3)
        {
          break;
        }

        v52 = 0;
        *(*(v21 - 16) + 4 * v3) = -1;
        v20 = off_1E8721570;
        while (strcmp(__endptr, *(v20 - 16)) || strcmp(&v81, *(v20 - 8)) || strcmp(v84, *v20))
        {
          ++v52;
          v20 += 24;
          if (v52 == 7)
          {
            goto LABEL_66;
          }
        }

        v20 = *(v21 - 24);
        if (v20 <= v3)
        {
          goto LABEL_121;
        }

        *(*(v21 - 16) + 4 * v3) = v52;
LABEL_66:
        v51 = *(v21 - 24);
        if (v51 <= v3)
        {
          goto LABEL_116;
        }

        if (*(*(v21 - 16) + 4 * v3) == -1)
        {
          return 0;
        }

        if (++v3 == v41)
        {
          goto LABEL_20;
        }
      }

      v79 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v85 = 136315906;
      v86 = "operator[]";
      v87 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v88 = 468;
      v89 = 2048;
      v90 = v3;
      v91 = 2048;
      v92 = v51;
      _os_log_send_and_compose_impl(v70, &v79, &v93, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v85, 38, v77, v78);
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v79 = 0;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v85 = 136315906;
      v86 = "operator[]";
      v87 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v88 = 468;
      v89 = 2048;
      v90 = v3;
      v91 = 2048;
      v92 = v51;
      _os_log_send_and_compose_impl(v73, &v79, &v93, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v85, 38, v77, v78);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_121:
    v79 = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v85 = 136315906;
    v86 = "operator[]";
    v87 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v88 = 468;
    v89 = 2048;
    v90 = v3;
    v91 = 2048;
    v92 = v20;
    _os_log_send_and_compose_impl(v76, &v79, &v93, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v85, 38, v77, v78);
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  {
    return 0;
  }

  while (1)
  {
    v24 = v23 - v22;
    if (v23 == v22)
    {
      v25 = 0;
    }

    else
    {
      v26 = 0;
      v25 = v24 <= 1 ? 1 : v23 - v22;
      while (v26 != 5)
      {
        if (aJoint_0[v26] != v22[v26])
        {
          goto LABEL_72;
        }

        if (v25 == ++v26)
        {
          goto LABEL_31;
        }
      }

      v25 = 5;
    }

LABEL_31:
    if (v25 != v24)
    {
      break;
    }

    __endptr[0].n128_u64[0] = 0;
    __endptr[0].n128_u64[1] = &str_67;
    __endptr[1] = 0u;
    v81 = 0u;
    v82 = 0;
    v83 = a2;
    if (v81)
    {
      if (*(&v81 + 1))
      {
        (*(*v81 + 40))(v27);
        *(&v81 + 1) = 0;
        v82 = 0;
      }

      *&v81 = 0;
    }

    re::StringID::destroyString(__endptr);
    v28 = *(a3 + 32);
    v29 = *(a3 + 16);
    v32 = v31 - v30;
    if (v31 == v30)
    {
      v33 = 0;
    }

    else
    {
      v34 = 0;
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v31 - v30;
      }

      while (v34 != 5)
      {
        if (aJoint_0[v34] != v30[v34])
        {
          return 0;
        }

        if (v33 == ++v34)
        {
          goto LABEL_46;
        }
      }

      v33 = 5;
    }

LABEL_46:
    if (v33 == v32)
    {
      {
        {
          continue;
        }
      }
    }

    return 0;
  }

LABEL_72:
  v55 = v54 - v53;
  if (v54 == v53)
  {
    v56 = 0;
  }

  else
  {
    v57 = 0;
    v56 = v55 <= 1 ? 1 : v54 - v53;
    while (v57 != 3)
    {
      if (aEnd_0[v57] != v53[v57])
      {
        goto LABEL_109;
      }

      if (v56 == ++v57)
      {
        goto LABEL_82;
      }
    }

    v56 = 3;
  }

LABEL_82:
  if (v56 == v55)
  {
    v60 = v59 - v58;
    if (v59 == v58)
    {
      v61 = 0;
    }

    else
    {
      v62 = 0;
      v61 = v60 <= 1 ? 1 : v59 - v58;
      while (v62 != 3)
      {
        if (aEnd_0[v62] != v58[v62])
        {
          return 0;
        }

        if (v61 == ++v62)
        {
          goto LABEL_93;
        }
      }

      v61 = 3;
    }

LABEL_93:
    if (v61 != v60)
    {
      return 0;
    }

    v65 = v64 - v63;
    if (v64 == v63)
    {
      v66 = 0;
    }

    else
    {
      v67 = 0;
      v66 = v65 <= 1 ? 1 : v64 - v63;
      while (v67 != 4)
      {
        if (aSite[v67] != v63[v67])
        {
          return 0;
        }

        if (v66 == ++v67)
        {
          goto LABEL_104;
        }
      }

      v66 = 4;
    }

LABEL_104:
    {
      return 0;
    }
  }

LABEL_109:
}

char *re::anonymous namespace::TokenStream::getNextToken(re::_anonymous_namespace_::TokenStream *this, char a2)
{
  v4 = *(this + 65);
  v5 = *(this + 66);
  if (v4 < v5)
  {
    v6 = MEMORY[0x1E69E9830];
    do
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = __maskrune(v7, 0x4000uLL);
        v5 = *(this + 66);
        if (!v8)
        {
          break;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v4;
    }

    while (v4 < v5);
  }

  if (v4 >= v5)
  {
    v10 = v4;
  }

  else
  {
    v9 = MEMORY[0x1E69E9830];
    v10 = v4;
    do
    {
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x4000uLL);
        v5 = *(this + 66);
        if (v12)
        {
          break;
        }
      }

      else if ((*(v9 + 4 * v11 + 60) & 0x4000) != 0)
      {
        break;
      }

      ++v10;
    }

    while (v10 < v5);
  }

  if (v10 == v5)
  {
    v4 = *(this + 65);
    v13 = *(this + 66);
    v14 = MEMORY[0x1E69E9830];
    while (v4 < v13)
    {
      v15 = *v4;
      if ((v15 & 0x80000000) != 0)
      {
        v16 = __maskrune(v15, 0x4000uLL);
        v13 = *(this + 66);
        if (!v16)
        {
          break;
        }
      }

      else if ((*(v14 + 4 * v15 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v4;
    }

    v10 = v4;
    if (v4 < v13)
    {
      do
      {
        v17 = *v10;
        if ((v17 & 0x80000000) != 0)
        {
          if (__maskrune(v17, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v14 + 4 * v17 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *(this + 66));
    }
  }

  if ((a2 & 1) == 0)
  {
    *(this + 65) = v10;
  }

  return v4;
}

uint64_t re::anonymous namespace::TokenStream::endLine(re::_anonymous_namespace_::TokenStream *this)
{
  v2 = *(this + 65);
  v3 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v4 = *(this + 66);
      if (v2 >= v4)
      {
        break;
      }

      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        v7 = __maskrune(v5, 0x4000uLL);
        v2 = *(this + 65);
        if (v7)
        {
          goto LABEL_5;
        }

LABEL_8:
        v4 = *(this + 66);
        break;
      }

      if ((*(v3 + 4 * v5 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

LABEL_5:
      v6 = *v2++;
      *(this + 65) = v2;
      if (v6 == 10)
      {
        return 1;
      }
    }

    if (v2 != v4)
    {
      break;
    }

    v2 = *(this + 65);
  }

  while (v2 < *(this + 66));
  return 0;
}

uint64_t re::anonymous namespace::TokenStream::readFromStream(re::_anonymous_namespace_::TokenStream *this)
{
  v2 = *(this + 66);
  v3 = *(this + 65);
  v4 = v2 - v3;
  v5 = this + 8;
  if (v3 != this + 8)
  {
    memmove(this + 8, v3, v2 - v3);
    *(this + 65) = v5;
    *(this + 66) = &v5[v4];
  }

  result = (*(**this + 16))(*this, &v5[v4], 512 - v4);
  *(this + 66) += result;
  return result;
}

void *re::DynamicArray<re::anonymous namespace::BVHJointData>::setCapacity(void *result, unint64_t a2)
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
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
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

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 1) = *(v8 + 1);
          v11[5] = 0;
          v11[6] = 0;
          v11[4] = 0;
          v13 = v8[5];
          v11[4] = v8[4];
          v11[5] = v13;
          v8[4] = 0;
          v8[5] = 0;
          v14 = v11[6];
          v11[6] = v8[6];
          v8[6] = v14;
          *(v11 + 14) = *(v8 + 14);
          if (v8[4])
          {
            v8[4] = 0;
          }

          re::StringID::destroyString(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::anonymous namespace::Token::getSID(re::_anonymous_namespace_::Token *this, re::StringID *a2, _anonymous_namespace_ *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2 - this;
  if (a2 == this)
  {
    return a2 != this;
  }

  if (v5 + 1 < 0x81)
  {
    v7 = memcpy(__dst, this, v5);
    __dst[v5] = 0;
    v11 = 0;
    v12 = &str_67;
    v8 = strlen(__dst);
    v9 = re::StringID::operator=(a3, &v11);
    if (v11)
    {
      if (v11)
      {
      }
    }

    return a2 != this;
  }

  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "getString(buffer, sizeof(buffer))", "getSID", 156);
  result = _os_crash("assertion failure: (getString(buffer, sizeof(buffer))) ");
  __break(1u);
  return result;
}

uint64_t re::anonymous namespace::parseLeftBraceLine(re::_anonymous_namespace_::TokenStream *a1)
{
  if (v3 == NextToken)
  {
    v4 = 0;
  }

  else
  {
    if (*NextToken != 123)
    {
      return 0;
    }

    v4 = 1;
  }

  if (v4 != v3 - NextToken)
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::parseOffsetLine(re::_anonymous_namespace_::TokenStream *a1, float *a2)
{
  v6 = v5 - NextToken;
  if (v5 == NextToken)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 - NextToken;
    }

    while (v8 != 6)
    {
      if (aOffset_0[v8] != NextToken[v8])
      {
        return 0;
      }

      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    v7 = 6;
  }

LABEL_11:
  {
  }

  else
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::parseRightBraceLine(re::_anonymous_namespace_::TokenStream *a1)
{
  if (v3 == NextToken)
  {
    v4 = 0;
  }

  else
  {
    if (*NextToken != 125)
    {
      return 0;
    }

    v4 = 1;
  }

  if (v4 != v3 - NextToken)
  {
    return 0;
  }
}

uint64_t re::fillStreamFP16(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = (a2 + a4);
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v55 = re::GeomAttribute::accessValues<int>(this);
      v25 = v56;
      if (v56)
      {
        _S1 = *v55;
        __asm
        {
          FCVT            H0, S1
          FCVT            S2, H0
        }

        v60 = vabds_f32(*v55, _S2);
        if (*v55 == _S2 || v60 <= a5)
        {
          v31 = 0;
          while (1)
          {
            *v7 = _H0;
            if (v56 - 1 == v31)
            {
              goto LABEL_54;
            }

            v7 = (v7 + v6);
            _S1 = v55[v31 + 1];
            __asm
            {
              FCVT            H0, S1
              FCVT            S2, H0
            }

            v64 = vabds_f32(_S1, _S2);
            ++v31;
            if (_S1 != _S2 && v64 > a5)
            {
              return v31 >= v25;
            }
          }
        }

        return 0;
      }
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_57;
      }

      v23 = re::GeomAttribute::accessValues<int>(this);
      v25 = v24;
      if (v24)
      {
        _D1 = *v23;
        __asm { FCVT            H0, D1 }

        *&_D1 = *v23;
        __asm { FCVT            S2, H0 }

        v29 = vabds_f32(*&_D1, _S2);
        if (*&_D1 == _S2 || v29 <= a5)
        {
          v31 = 0;
          while (1)
          {
            *v7 = _H0;
            if (v24 - 1 == v31)
            {
              break;
            }

            v7 = (v7 + v6);
            _D1 = v23[v31 + 1];
            __asm { FCVT            H0, D1 }

            *&_D1 = _D1;
            __asm { FCVT            S2, H0 }

            v34 = vabds_f32(*&_D1, _S2);
            ++v31;
            if (*&_D1 != _S2 && v34 > a5)
            {
              return v31 >= v25;
            }
          }

LABEL_54:
          v31 = v25;
          return v31 >= v25;
        }

        return 0;
      }
    }

    return 1;
  }

  switch(v8)
  {
    case 6u:
      v38 = re::GeomAttribute::accessValues<int>(this);
      if (v39)
      {
        v12 = 0;
        v41 = (a2 + a4 + 2);
        v42 = 1;
        v43 = v39;
        do
        {
          _D1.i32[0] = v38->i32[0];
          __asm { FCVT            H1, S1 }

          *(v41 - 1) = _D1.i16[0];
          _S2 = v38->i32[1];
          __asm { FCVT            H2, S2 }

          *v41 = _S2;
          _D1.i16[1] = _S2;
          v45 = vsub_f32(*v38, *&vcvtq_f32_f16(_D1));
          _D1 = vmul_f32(v45, v45);
          if (vaddv_f32(_D1) > (a5 * a5))
          {
            break;
          }

          v12 = v42++ >= v39;
          ++v38;
          v41 = (v41 + v6);
          --v43;
        }

        while (v43);
        return v12;
      }

      return 1;
    case 7u:
      v46 = re::GeomAttribute::accessValues<int>(this);
      if (v47)
      {
        v48 = 0;
        v12 = 0;
        v49 = v46;
        do
        {
          v50 = 0;
          v67 = 0uLL;
          do
          {
            _S2 = *(v49 + 4 * v50);
            __asm
            {
              FCVT            H2, S2
              FCVT            S3, H2
            }

            v67.i32[v50] = _S3;
            v7[v50++] = _S2;
          }

          while (v50 != 3);
          v53 = vsubq_f32(*(v46 + 16 * v48), v67);
          v54 = vmulq_f32(v53, v53);
          if ((v54.f32[2] + vaddv_f32(*v54.f32)) > (a5 * a5))
          {
            break;
          }

          ++v48;
          v7 = (v7 + v6);
          v49 += 16;
          v12 = v48 >= v47;
        }

        while (v48 != v47);
        return v12;
      }

      return 1;
    case 8u:
      v9 = re::GeomAttribute::accessValues<int>(this);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v9;
        do
        {
          v14 = 0;
          v67 = 0uLL;
          do
          {
            _S1 = *(v13 + 4 * v14);
            __asm
            {
              FCVT            H1, S1
              FCVT            S2, H1
            }

            v67.i32[v14] = _S2;
            v7[v14++] = _S1;
          }

          while (v14 != 4);
          v21 = vsubq_f32(*(v9 + 16 * v11), v67);
          v22 = vmulq_f32(v21, v21);
          if (vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))) > (a5 * a5))
          {
            break;
          }

          ++v11;
          v7 = (v7 + v6);
          v13 += 16;
          v12 = v11 >= v10;
        }

        while (v11 != v10);
        return v12;
      }

      return 1;
  }

LABEL_57:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into a half-float stream.", "!Unreachable code", "fillStreamFP16", 215);
  result = _os_crash("assertion failure: (!Unreachable code) Attempt to convert a non-numeric type into a half-float stream.");
  __break(1u);
  return result;
}

uint64_t re::fillStreamUN8(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = a2 + a4;
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v49 = re::GeomAttribute::accessValues<int>(this);
      if (v50)
      {
        v12 = 0;
        v51 = 1;
        v52 = v50;
        do
        {
          v53 = *v49;
          if (*v49 > 1.0)
          {
            v53 = 1.0;
          }

          if (v53 < 0.0)
          {
            v53 = 0.0;
          }

          v54 = llroundf(v53 * 255.0);
          *v7 = v54;
          v55 = v54 / 255.0;
          v56 = vabds_f32(*v49, v55);
          if (*v49 != v55 && v56 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v51++ >= v50;
          ++v49;
          --v52;
        }

        while (v52);
        return v12;
      }

      return 1;
    }

    if (v8 == 5)
    {
      v19 = re::GeomAttribute::accessValues<int>(this);
      if (v20)
      {
        v12 = 0;
        v21 = 1;
        v22 = v20;
        do
        {
          v23 = *v19;
          if (*v19 > 1.0)
          {
            v23 = 1.0;
          }

          if (v23 < 0.0)
          {
            v23 = 0.0;
          }

          v24 = llround(v23 * 255.0);
          *v7 = v24;
          v25 = *v19;
          v26 = v24 / 255.0;
          v27 = vabds_f32(v25, v26);
          if (v25 != v26 && v27 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v21++ >= v20;
          ++v19;
          --v22;
        }

        while (v22);
        return v12;
      }

      return 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 6u:
        v29 = re::GeomAttribute::accessValues<int>(this);
        if (v30)
        {
          v31 = 0;
          v12 = 0;
          do
          {
            v32 = 0;
            v59.i64[0] = 0;
            v33 = &v59;
            v34 = 1;
            v35 = (v29 + 8 * v31);
            do
            {
              v36 = v35->f32[v32];
              if (v36 > 1.0)
              {
                v36 = 1.0;
              }

              if (v36 < 0.0)
              {
                v36 = 0.0;
              }

              v37 = llroundf(v36 * 255.0);
              v7[v32] = v37;
              v38 = v37;
              LOBYTE(v37) = v34;
              v33->f32[0] = v38 / 255.0;
              v33 = &v59.i32[1];
              v32 = 1;
              v34 = 0;
            }

            while ((v37 & 1) != 0);
            v39 = vsub_f32(*v35, *v59.f32);
            if (vaddv_f32(vmul_f32(v39, v39)) > (a5 * a5))
            {
              break;
            }

            ++v31;
            v7 += v6;
            v12 = v31 >= v30;
          }

          while (v31 != v30);
          return v12;
        }

        return 1;
      case 7u:
        v40 = re::GeomAttribute::accessValues<int>(this);
        if (v41)
        {
          v42 = 0;
          v12 = 0;
          v43 = v40;
          do
          {
            v44 = 0;
            v59 = 0uLL;
            do
            {
              v45 = *(v43 + 4 * v44);
              if (v45 > 1.0)
              {
                v45 = 1.0;
              }

              if (v45 < 0.0)
              {
                v45 = 0.0;
              }

              v46 = llroundf(v45 * 255.0);
              v7[v44] = v46;
              v59.f32[v44++] = v46 / 255.0;
            }

            while (v44 != 3);
            v47 = vsubq_f32(*(v40 + 16 * v42), v59);
            v48 = vmulq_f32(v47, v47);
            if ((v48.f32[2] + vaddv_f32(*v48.f32)) > (a5 * a5))
            {
              break;
            }

            ++v42;
            v7 += v6;
            v43 += 16;
            v12 = v42 >= v41;
          }

          while (v42 != v41);
          return v12;
        }

        return 1;
      case 8u:
        v9 = re::GeomAttribute::accessValues<int>(this);
        if (v10)
        {
          v11 = 0;
          v12 = 0;
          v13 = v9;
          do
          {
            v14 = 0;
            v59 = 0uLL;
            do
            {
              v15 = *(v13 + 4 * v14);
              if (v15 > 1.0)
              {
                v15 = 1.0;
              }

              if (v15 < 0.0)
              {
                v15 = 0.0;
              }

              v16 = llroundf(v15 * 255.0);
              v7[v14] = v16;
              v59.f32[v14++] = v16 / 255.0;
            }

            while (v14 != 4);
            v17 = vsubq_f32(*(v9 + 16 * v11), v59);
            v18 = vmulq_f32(v17, v17);
            if (vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL))) > (a5 * a5))
            {
              break;
            }

            ++v11;
            v7 += v6;
            v13 += 16;
            v12 = v11 >= v10;
          }

          while (v11 != v10);
          return v12;
        }

        return 1;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into a uint8 stream.", "!Unreachable code", "fillStreamUN8", 247);
  result = _os_crash("assertion failure: (!Unreachable code) Attempt to convert a non-numeric type into a uint8 stream.");
  __break(1u);
  return result;
}

uint64_t re::fillStreamSN8(re *this, const re::GeomAttribute *a2, char *a3, uint64_t a4, float a5)
{
  v6 = a3;
  v7 = a2 + a4;
  v8 = *(this + 17);
  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      v54 = re::GeomAttribute::accessValues<int>(this);
      if (v55)
      {
        v12 = 0;
        v56 = 1;
        v57 = v55;
        do
        {
          v58 = *v54;
          if (*v54 > 1.0)
          {
            v58 = 1.0;
          }

          if (v58 < -1.0)
          {
            v58 = -1.0;
          }

          v59 = llroundf(v58 * 127.0);
          *v7 = v59;
          v60 = *v54;
          v61 = v59 / 127.0;
          if (v61 < -1.0)
          {
            v61 = -1.0;
          }

          v62 = vabds_f32(v60, v61);
          if (v60 != v61 && v62 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v56++ >= v55;
          ++v54;
          --v57;
        }

        while (v57);
        return v12;
      }

      return 1;
    }

    if (v8 == 5)
    {
      v20 = re::GeomAttribute::accessValues<int>(this);
      if (v21)
      {
        v12 = 0;
        v22 = 1;
        v23 = v21;
        do
        {
          v24 = *v20;
          if (*v20 > 1.0)
          {
            v24 = 1.0;
          }

          if (v24 < -1.0)
          {
            v24 = -1.0;
          }

          v25 = llround(v24 * 127.0);
          *v7 = v25;
          v26 = *v20;
          v27 = v25 / 127.0;
          if (v27 < -1.0)
          {
            v27 = -1.0;
          }

          v28 = v27;
          v29 = vabds_f32(v26, v28);
          if (v26 != v28 && v29 > a5)
          {
            break;
          }

          v7 += v6;
          v12 = v22++ >= v21;
          ++v20;
          --v23;
        }

        while (v23);
        return v12;
      }

      return 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 6u:
        v31 = re::GeomAttribute::accessValues<int>(this);
        v33 = v32;
        if (v32)
        {
          v34 = 0;
          v12 = 0;
          do
          {
            v35 = 0;
            v65.i64[0] = 0;
            v36 = &v65;
            v37 = 1;
            v38 = (v31 + 8 * v34);
            do
            {
              v39 = v38->f32[v35];
              if (v39 > 1.0)
              {
                v39 = 1.0;
              }

              if (v39 < -1.0)
              {
                v39 = -1.0;
              }

              v40 = llroundf(v39 * 127.0);
              v41 = v37;
              v7[v35] = v40;
              v42 = v40 / 127.0;
              if (v42 < -1.0)
              {
                v42 = -1.0;
              }

              v36->f32[0] = v42;
              v36 = &v65.i32[1];
              v35 = 1;
              v37 = 0;
            }

            while ((v41 & 1) != 0);
            v43 = vsub_f32(*v38, *v65.f32);
            if (vaddv_f32(vmul_f32(v43, v43)) > (a5 * a5))
            {
              break;
            }

            ++v34;
            v7 += v6;
            v12 = v34 >= v33;
          }

          while (v34 != v33);
          return v12;
        }

        return 1;
      case 7u:
        v44 = re::GeomAttribute::accessValues<int>(this);
        if (v45)
        {
          v46 = 0;
          v12 = 0;
          v47 = v44;
          do
          {
            v48 = 0;
            v65 = 0uLL;
            do
            {
              v49 = *(v47 + 4 * v48);
              if (v49 > 1.0)
              {
                v49 = 1.0;
              }

              if (v49 < -1.0)
              {
                v49 = -1.0;
              }

              v50 = llroundf(v49 * 127.0);
              v7[v48] = v50;
              v51 = v50 / 127.0;
              if (v51 < -1.0)
              {
                v51 = -1.0;
              }

              v65.f32[v48++] = v51;
            }

            while (v48 != 3);
            v52 = vsubq_f32(*(v44 + 16 * v46), v65);
            v53 = vmulq_f32(v52, v52);
            if ((v53.f32[2] + vaddv_f32(*v53.f32)) > (a5 * a5))
            {
              break;
            }

            ++v46;
            v7 += v6;
            v47 += 16;
            v12 = v46 >= v45;
          }

          while (v46 != v45);
          return v12;
        }

        return 1;
      case 8u:
        v9 = re::GeomAttribute::accessValues<int>(this);
        if (v10)
        {
          v11 = 0;
          v12 = 0;
          v13 = v9;
          do
          {
            v14 = 0;
            v65 = 0uLL;
            do
            {
              v15 = *(v13 + 4 * v14);
              if (v15 > 1.0)
              {
                v15 = 1.0;
              }

              if (v15 < -1.0)
              {
                v15 = -1.0;
              }

              v16 = llroundf(v15 * 127.0);
              v7[v14] = v16;
              v17 = v16 / 127.0;
              if (v17 < -1.0)
              {
                v17 = -1.0;
              }

              v65.f32[v14++] = v17;
            }

            while (v14 != 4);
            v18 = vsubq_f32(*(v9 + 16 * v11), v65);
            v19 = vmulq_f32(v18, v18);
            if (vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL))) > (a5 * a5))
            {
              break;
            }

            ++v11;
            v7 += v6;
            v13 += 16;
            v12 = v11 >= v10;
          }

          while (v11 != v10);
          return v12;
        }

        return 1;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempt to convert a non-numeric type into an int8 stream.", "!Unreachable code", "fillStreamSN8", 279);
  result = _os_crash("assertion failure: (!Unreachable code) Attempt to convert a non-numeric type into an int8 stream.");
  __break(1u);
  return result;
}

void re::ImportGraphicsResources::init(id *this, const re::ColorManager *a2, id *a3, int a4)
{
  *(this + 19) = a4;
  this[3] = a2;
  if (a3 && a3[26])
  {
    v5 = this;
    v6 = re::ObjCObject::operator=(this, a3 + 26);
    this = re::ObjCObject::operator=(v6 + 1, a3[6] + 45);
    v7 = *(a3 + 168);
    *(v5 + 18) = *(a3 + 338);
    *(v5 + 8) = v7;
    if ((*(v5 + 19) & 1) == 0)
    {
      return;
    }
  }

  else if (!a4)
  {
    return;
  }

  v8 = *re::pipelineLogObjects(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ImportGraphicsResources: initializing with allowOutOfProcessImageDecode: can cause slower image loading and robustness issues. This setting should only be set by specific processes.", v9, 2u);
  }
}

void **re::ImportGraphicsResources::deinit(re::ImportGraphicsResources *this)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(this + 136);
  *(this + 3) = 0;
  re::ObjCObject::operator=(this, 0);

  return re::ObjCObject::operator=(this + 1, 0);
}

void re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_24, 4 * v2);
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;

          v3 = *(a1 + 32);
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

void re::ImportGraphicsResources::~ImportGraphicsResources(id *this)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 17);
}

void re::ImportGraphicsResources::getOrCreateCommandQueue(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  os_unfair_lock_lock(a1 + 32);
  v11 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(&a1[34], &v11);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    re::ImportGraphicsResources::createCommandQueue(&v11, a1, *(a2 + 8), a3);
    v10 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
    re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(&a1[34], &v10, &v11);
    v9 = v11;
    v11 = 0;
  }

  *a4 = v9;
  os_unfair_lock_unlock(a1 + 32);
}

void re::ImportGraphicsResources::createCommandQueue(id *__return_ptr a1@<X8>, id *this@<X0>, const re::mtl::Device *a3@<X1>, const char *a4@<X2>)
{
  if (*this)
  {
    v5 = a4;
    v8 = [objc_msgSend(MEMORY[0x1E6974018] alloc)];
    v9 = v8;
    if (v5)
    {
      [v8 setCommitSynchronously_];
    }

    re::mtl::Device::makeCommandQueue(this, v9, a1);
    if (a3)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      [*a1 setLabel:v10];
    }

    if (v9)
    {
    }
  }

  else
  {
    *a1 = 0;
  }
}

void *re::allocInfo_ImportGraphicsResources(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_484, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_484))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC108, "ImportGraphicsResources");
    __cxa_guard_release(&_MergedGlobals_484);
  }

  return &unk_1EE1BC108;
}

void re::initInfo_ImportGraphicsResources(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x136231223051452ALL;
  v8[1] = "ImportGraphicsResources";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x18000000008;
  *(this + 6) = 128;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ImportGraphicsResources(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ImportGraphicsResources>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ImportGraphicsResources>;
  *(this + 13) = re::internal::defaultConstructV2<re::ImportGraphicsResources>;
  *(this + 14) = re::internal::defaultDestructV2<re::ImportGraphicsResources>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ImportGraphicsResources>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 257;
  *(a3 + 18) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 172) = 0x7FFFFFFFLL;
  *(a3 + 256) = 0;
  return result;
}

void re::internal::defaultDestruct<re::ImportGraphicsResources>(uint64_t a1, uint64_t a2, void **a3)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(a3 + 17);

  v4 = *a3;
}

double re::internal::defaultConstructV2<re::ImportGraphicsResources>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 257;
  *(a1 + 18) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 256) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::ImportGraphicsResources>(void **a1)
{
  re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(a1 + 17);

  v2 = *a1;
}

uint64_t re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, void *a2, id *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  v8 = v7 + 16;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = a1[2];
          *&v29[16] = v13;
          a1[2] = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 3);
          v14 = *&v29[32];
          *(a1 + 3) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = 0xBF58476D1CE4E5B9 * (*(v18 - 1) ^ (*(v18 - 1) >> 30));
                v20 = (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31);
                v21 = re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v20 % *(a1 + 6), v20);
                *(v21 + 8) = *(v18 - 1);
                v22 = *v18;
                *v18 = 0;
                *(v21 + 16) = v22;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v23 = a1[2];
    v24 = *(v23 + 24 * v4);
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 24 * v4);
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = 24 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = a1[1];
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v23 + 24 * v4;
}

void re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_24, 4 * v10);
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

double re::HashTable<re::WeakStringID,re::mtl::CommandQueue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
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
          *(v8 + 8) = 0;

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

uint64_t re::DynamicArray<re::GeomDeformer>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomDeformer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::GeomDeformer::GeomDeformer(*(this + 4) + 448 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::GeomDeformer>::deinit(uint64_t a1)
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
        v5 = 448 * v4;
        do
        {
          re::ObjectHelper::destroy<re::GeomDeformer>(v3);
          v3 += 448;
          v5 -= 448;
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

void re::ObjectHelper::destroy<re::GeomDeformer>(uint64_t a1)
{
  re::BucketArray<re::Matrix4x4<float>,8ul>::deinit(a1 + 392);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 392);
  re::BucketArray<re::StringID,8ul>::deinit(a1 + 336);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 336);
  re::BucketArray<re::GeomDeformer::MeshTarget,8ul>::deinit(a1 + 280);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 280);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 224);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 224);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 168);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 168);
  re::BucketArray<re::FixedArray<re::PackedFloat3>,8ul>::deinit(a1 + 112);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 112);
  re::DynamicArray<re::GeomDeformer::Affector>::deinit(a1 + 72);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(a1 + 32);
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

_anonymous_namespace_ *re::DynamicArray<re::GeomDeformer>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::GeomDeformer>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::GeomDeformer>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void generateInfluenceData(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _anonymous_namespace_ *a6, _anonymous_namespace_ *a7, _anonymous_namespace_ *a8)
{
  v137 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v17 = a4;
  if (*(a6 + 2))
  {
    re::DynamicString::format(&v132, "Size of Weights = %ld", v16, *(a6 + 2));
    v18 = v132;
    v20 = *(&v133 + 1);
    v19 = v133;
    *a1 = 0;
    v21 = 1015;
LABEL_7:
    *(a1 + 8) = v21;
    *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 24) = v18;
    *(a1 + 40) = v19;
    *(a1 + 48) = v20;
    goto LABEL_8;
  }

  if (*(a7 + 2))
  {
    re::DynamicString::format(&v132, "Size of JointIndices = %ld", v16, *(a7 + 2));
    v18 = v132;
    v20 = *(&v133 + 1);
    v19 = v133;
    *a1 = 0;
    v21 = 1016;
    goto LABEL_7;
  }

  if (*(a8 + 2))
  {
    re::DynamicString::format(&v132, "Size of InfluenceEndIndices = %ld", v16, *(a8 + 2));
    v18 = v132;
    v20 = *(&v133 + 1);
    v19 = v133;
    *a1 = 0;
    v21 = 1017;
    goto LABEL_7;
  }

  v112 = a5;
  v22 = [v15 dataStart];
  if (!v22)
  {
    v32 = [v15 stride];
    v33 = [v15 format];
    re::DynamicString::format(&v132, "Weight Attribute stride = %ld, format = %ld", v34, v32, v33);
    v18 = v132;
    v20 = *(&v133 + 1);
    v19 = v133;
    *a1 = 0;
    v21 = 1021;
    goto LABEL_7;
  }

  v23 = v22;
  if (![v17 dataStart])
  {
    v35 = [v17 stride];
    v36 = [v17 format];
    re::DynamicString::format(&v132, "Joint Indexes Attribute stride = %ld, format = %ld", v37, v35, v36);
    v18 = v132;
    v20 = *(&v133 + 1);
    v19 = v133;
    *a1 = 0;
    v21 = 1009;
    goto LABEL_7;
  }

  v111 = a8;
  v24 = [v15 format];
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v25 = v17;
  v26 = [v25 format];
  v27 = v26 * a2;
  v113 = v24;
  if ((~[v25 format] & 0xA0000) != 0)
  {
    if ((~[v25 format] & 0x90000) != 0)
    {
      if ((~[v25 format] & 0x60000) != 0)
      {
        if ((~[v25 format] & 0x50000) != 0)
        {
          if (([v25 format] & 0x20000) != 0)
          {
            v50 = [v25 dataStart];
            if (v27)
            {
              v51 = 0;
              v31 = v121;
              v52 = v122;
              while (v31 != v51)
              {
                *(v52 + 4 * v51) = *(v50 + v51);
                if (v27 == ++v51)
                {
                  goto LABEL_49;
                }
              }

              goto LABEL_113;
            }
          }

          else
          {
            if (([v25 format] & 0x10000) == 0)
            {
              v47 = [v25 format];
              re::DynamicString::format(&v132, "Format = %ld", v48, v47);
              v114 = v132;
              v49 = v133;

              *a1 = 0;
              *(a1 + 8) = 1011;
              *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
              *(a1 + 24) = v114;
              *(a1 + 40) = v49;
              goto LABEL_82;
            }

            v53 = [v25 dataStart];
            if (v27)
            {
              v54 = 0;
              v31 = v121;
              v55 = v122;
              while (v31 != v54)
              {
                *(v55 + 4 * v54) = *(v53 + v54);
                if (v27 == ++v54)
                {
                  goto LABEL_49;
                }
              }

LABEL_117:
              v117 = 0;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v132 = 0u;
              v133 = 0u;
              v100 = MEMORY[0x1E69E9C10];
              v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v124 = 136315906;
              v125 = "operator[]";
              v126 = 1024;
              if (v101)
              {
                v102 = 3;
              }

              else
              {
                v102 = 2;
              }

              v127 = 468;
              v128 = 2048;
              v129 = v31;
              v130 = 2048;
              v131 = v31;
              _os_log_send_and_compose_impl(v102, &v117, &v132, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
              _os_crash_msg();
              __break(1u);
            }
          }
        }

        else
        {
          v44 = [v25 dataStart];
          if (v27)
          {
            v45 = 0;
            v31 = v121;
            v46 = v122;
            while (v31 != v45)
            {
              *(v46 + 4 * v45) = *(v44 + 2 * v45);
              if (v27 == ++v45)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_109;
          }
        }
      }

      else
      {
        v41 = [v25 dataStart];
        if (v27)
        {
          v42 = 0;
          v31 = v121;
          v43 = v122;
          while (v31 != v42)
          {
            *(v43 + 4 * v42) = *(v41 + 2 * v42);
            if (v27 == ++v42)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_105;
        }
      }
    }

    else
    {
      v38 = [v25 dataStart];
      if (v27)
      {
        v39 = 0;
        v31 = v121;
        v40 = v122;
        while (v31 != v39)
        {
          *(v40 + 4 * v39) = *(v38 + 4 * v39);
          if (v27 == ++v39)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_97;
      }
    }
  }

  else
  {
    v28 = [v25 dataStart];
    if (v27)
    {
      v29 = 0;
      v31 = v121;
      v30 = v122;
      while (v31 != v29)
      {
        *(v30 + 4 * v29) = *(v28 + 4 * v29);
        if (v27 == ++v29)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_93;
    }
  }

LABEL_49:
  v106 = v17;
  v107 = v15;
  v56 = v113;
  v104 = a2;

  v117 = 0;
  v118 = 0;
  v119 = 0;
  v110 = v113 * a2;
  if (!v110)
  {
LABEL_71:
    if (*(v111 + 2) != v104)
    {
      re::DynamicString::format(&v132, "InfluenceEndIndices size = %ld, vertexCount = %ld", v58, *(v111 + 2), v104);
      v74 = v132;
      v76 = *(&v133 + 1);
      v75 = v133;
      *a1 = 0;
      v77 = 1020;
      goto LABEL_78;
    }

    *a1 = 1;
    goto LABEL_79;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  v108 = v113 - 1;
  v109 = 4 * v113;
LABEL_51:
  if (!v56)
  {
    v61 = 0;
    goto LABEL_75;
  }

  v62 = 0;
  v63 = 0.0;
  v31 = v118;
  v64 = v119;
  do
  {
    if (v31 == v62)
    {
      v123 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v79, &v123, &v132, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v104, v106);
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v123 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v68;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v82, &v123, &v132, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v104, v106);
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v117 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v85, &v117, &v132, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v117 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v86)
      {
        v87 = 3;
      }

      else
      {
        v87 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v87, &v117, &v132, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v123 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v70;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v90, &v123, &v132, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v104, v106);
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v117 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v93, &v117, &v132, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
      _os_crash_msg();
      __break(1u);
LABEL_109:
      v117 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v96, &v117, &v132, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v117 = 0;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      v132 = 0u;
      v133 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v124 = 136315906;
      v125 = "operator[]";
      v126 = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      v127 = 468;
      v128 = 2048;
      v129 = v31;
      v130 = 2048;
      v131 = v31;
      _os_log_send_and_compose_impl(v99, &v117, &v132, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v124, 38, v103, v105);
      _os_crash_msg();
      __break(1u);
      goto LABEL_117;
    }

    v65 = *(v23 + 4 * v62);
    *(v64 + 4 * v62) = v65;
    v63 = v63 + v65;
    ++v62;
  }

  while (v56 != v62);
  if (fabsf(v63) < 0.00001)
  {
LABEL_75:
    re::DynamicString::format(&v132, "Vertex Index = %ld", v58, v61);
    v74 = v132;
    v76 = *(&v133 + 1);
    v75 = v133;
    *a1 = 0;
    v77 = 1010;
    goto LABEL_78;
  }

  v115 = v61;
  v66 = 0;
  v67 = 1;
LABEL_57:
  v31 = v118;
  if (v66 <= v118)
  {
    v68 = v118;
  }

  else
  {
    v68 = v66;
  }

  do
  {
    if (v68 == v66)
    {
      goto LABEL_89;
    }

    v116 = *(v119 + 4 * v66) / v63;
    if (v116 > 0.0)
    {
      re::DynamicArray<float>::add(a6, &v116);
      v70 = v60 + v66;
      v31 = v121;
      if (v121 <= v60 + v66)
      {
        goto LABEL_101;
      }

      v71 = *(v122 + v59 + 4 * v66);
      v72 = *(v112 + 16);
      if (v72 <= v71)
      {
        re::DynamicString::format(&v132, "Invalid Joint Index (%d), number of joints: %zu", v69, *(v122 + v59 + 4 * v66), v72);
        v74 = v132;
        v76 = *(&v133 + 1);
        v75 = v133;
        *a1 = 0;
        v77 = 1018;
        goto LABEL_78;
      }

      LODWORD(v132) = *(*(v112 + 32) + 8 * v71);
      re::DynamicArray<int>::add(a7, &v132);
      v67 = 0;
      if (v108 == v66++)
      {
LABEL_70:
        LODWORD(v132) = *(a6 + 2);
        re::DynamicArray<int>::add(v111, &v132);
        v60 += v56;
        v61 = v115 + 1;
        v23 += v109;
        v59 += v109;
        if (v60 >= v110)
        {
          goto LABEL_71;
        }

        goto LABEL_51;
      }

      goto LABEL_57;
    }

    ++v66;
  }

  while (v56 != v66);
  if ((v67 & 1) == 0)
  {
    goto LABEL_70;
  }

  re::DynamicString::format(&v132, "Vertex Index = %ld", v58, v115);
  v74 = v132;
  v76 = *(&v133 + 1);
  v75 = v133;
  *a1 = 0;
  v77 = 1019;
LABEL_78:
  *(a1 + 8) = v77;
  *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a1 + 24) = v74;
  *(a1 + 40) = v75;
  *(a1 + 48) = v76;
LABEL_79:
  v17 = v106;
  v15 = v107;
  if (v117 && v118)
  {
    (*(*v117 + 40))();
  }

LABEL_82:
  if (v120 && v121)
  {
    (*(*v120 + 40))();
  }

LABEL_8:
}

void processForMeshData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v314 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v263 = [v8 vertexCount];
  v287 = 0u;
  v288 = 0u;
  v289 = 0u;
  v290 = 0u;
  v9 = [v8 components];
  v10 = [v9 countByEnumeratingWithState:&v287 objects:v306 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v288;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v288 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v287 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v287 objects:v306 count:16];
        if (!v11)
        {
          goto LABEL_9;
        }

        goto LABEL_3;
      }
    }

    v262 = a4;
    v15 = v14;

    if (v15)
    {
      v16 = [v15 skeleton];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 jointPaths];
        v19 = [v18 count];

        if (v19)
        {
          v286 = -1;
          v20 = a5[40];
          v21 = a3;
          v260 = a1;
          v254 = a5;
          if (v20)
          {
            v22 = 0;
            v23 = 1;
            while (*(a5[42] + 8 * v22) != v17)
            {
              v22 = v23;
              v24 = v20 > v23++;
              if (!v24)
              {
                goto LABEL_17;
              }
            }

            v44 = v23 - 1;
            v286 = v23 - 1;
            v285 = 0;
            v282 = 0;
            v283 = 0;
            v281 = 0;
            v284 = 0;
            if (v23)
            {
              goto LABEL_36;
            }
          }

          else
          {
LABEL_17:
            v285 = 0;
            v282 = 0;
            v283 = 0;
            v281 = 0;
            v284 = 0;
          }

          *buf = v17;
          v25 = re::DynamicArray<unsigned long>::add((a5 + 38), buf);
          v26 = 0uLL;
          *buf = 0;
          memset(v294, 0, sizeof(v294));
          *&buf[8] = &str_67;
          v295 = 0u;
          memset(v296, 0, sizeof(v296));
          v297 = 0u;
          v298 = 0x7FFFFFFF00000000uLL;
          v28 = *(a3 + 8);
          v27 = *(a3 + 16);
          if (v27 >= v28)
          {
            v37 = v27 + 1;
            if (v28 < v27 + 1)
            {
              if (*a3)
              {
                v38 = 2 * v28;
                if (!v28)
                {
                  v38 = 8;
                }

                if (v38 <= v37)
                {
                  v39 = v37;
                }

                else
                {
                  v39 = v38;
                }

                re::DynamicArray<re::ModelIOSkeleton>::setCapacity(a3, v39);
              }

              else
              {
                re::DynamicArray<re::ModelIOSkeleton>::setCapacity(a3, v37);
                ++*(a3 + 24);
              }

              v26 = 0uLL;
            }

            v27 = *(a3 + 16);
            v29 = buf[0] & 1;
          }

          else
          {
            v29 = 0;
          }

          v61 = *(a3 + 32) + 168 * v27;
          *v61 = *v61 & 0xFFFFFFFFFFFFFFFELL | v29;
          *v61 = *buf & 0xFFFFFFFFFFFFFFFELL | v29;
          *(v61 + 8) = *&buf[8];
          *&buf[8] = &str_67;
          *buf = 0;
          *(v61 + 16) = *v294;
          *(v61 + 32) = 0;
          *(v61 + 40) = 0;
          *(v61 + 24) = 0;
          *(v61 + 24) = *&v294[8];
          *&v294[8] = 0;
          *(v61 + 32) = *&v294[16];
          *&v294[16] = 0;
          v62 = *(v61 + 40);
          *(v61 + 40) = *&v294[24];
          *&v294[24] = v62;
          *(v61 + 56) = 0;
          *(v61 + 64) = 0;
          *(v61 + 48) = 0;
          *(v61 + 48) = *&v294[32];
          *&v294[32] = 0;
          *(v61 + 56) = *&v294[40];
          *&v294[40] = 0;
          v63 = *(v61 + 64);
          *(v61 + 64) = *&v294[48];
          *&v294[48] = v63;
          *(v61 + 72) = 0;
          *(v61 + 80) = 0;
          *(v61 + 88) = 0;
          *(v61 + 72) = *&v294[56];
          *&v294[56] = 0;
          *(v61 + 80) = *&v294[64];
          *&v294[64] = 0;
          v64 = *(v61 + 88);
          *(v61 + 88) = v295;
          *&v295 = v64;
          *(v61 + 96) = 0;
          *(v61 + 104) = 0;
          *(v61 + 112) = 0;
          *(v61 + 96) = *(&v295 + 1);
          *(&v295 + 1) = 0;
          *(v61 + 104) = v296[0];
          v296[0] = 0;
          v65 = *(v61 + 112);
          *(v61 + 112) = v296[1];
          v296[1] = v65;
          *(v61 + 152) = 0;
          *(v61 + 136) = v26;
          *(v61 + 120) = v26;
          *(v61 + 156) = 0x7FFFFFFFLL;
          *(v61 + 120) = v296[2];
          v296[2] = 0;
          v66 = *(v61 + 128);
          *(v61 + 128) = v296[3];
          v296[3] = v66;
          v67 = *(v61 + 136);
          *(v61 + 136) = v297;
          *&v297 = v67;
          *(v61 + 144) = DWORD2(v297);
          DWORD2(v297) = 0;
          LODWORD(v67) = *(v61 + 148);
          *(v61 + 148) = HIDWORD(v297);
          HIDWORD(v297) = v67;
          LODWORD(v67) = *(v61 + 152);
          *(v61 + 152) = v298;
          LODWORD(v298) = v67;
          LODWORD(v67) = *(v61 + 156);
          *(v61 + 156) = DWORD1(v298);
          DWORD1(v298) = v67;
          ++*(v61 + 160);
          ++*(a3 + 16);
          ++*(a3 + 24);
          v68 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v296[2]);
          if (*(&v295 + 1))
          {
            if (v296[0])
            {
              (*(**(&v295 + 1) + 40))(v68);
              v296[0] = 0;
              v296[1] = 0;
            }

            *(&v295 + 1) = 0;
          }

          re::FixedArray<re::StringID>::deinit(&v294[56]);
          if (*&v294[32])
          {
            if (*&v294[40])
            {
              (*(**&v294[32] + 40))();
              *&v294[40] = 0;
              *&v294[48] = 0;
            }

            *&v294[32] = 0;
          }

          v69 = *&v294[8];
          if (*&v294[8])
          {
            if (*&v294[16])
            {
              v69 = (*(**&v294[8] + 40))();
              *&v294[16] = 0uLL;
            }

            *&v294[8] = 0;
          }

          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v70 = *(a3 + 32) + 168 * *(a3 + 16);
          v71 = [v17 name];
          v72 = v71;
          if (v71)
          {
            v71 = [v71 UTF8String];
            v73 = v71;
          }

          else
          {
            v73 = "(unnamed)";
          }

          *buf = 0;
          *&buf[8] = &str_67;
          v74 = re::StringID::operator=((v70 - 168), buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          *&buf[8] = &str_67;
          *buf = 0;

          v75 = [v17 jointPaths];
          if (!v75)
          {
            v118 = [v8 name];
            v120 = v118;
            if (v118)
            {
              v121 = [v118 UTF8String];
            }

            else
            {
              v121 = "(unnamed)";
            }

            re::DynamicString::format(buf, "Processing mesh %s", v119, v121);
            v129 = *buf;
            v130 = *v294;
            *a1 = 0;
            *(a1 + 8) = 1003;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v129;
            *(a1 + 40) = v130;

LABEL_233:
            if (v281)
            {
              if (v285)
              {
                (*(*v281 + 40))();
              }

              v285 = 0;
            }

            goto LABEL_237;
          }

          v257 = v17;
          v259 = v15;
          v255 = v8;
          v267 = v75;
          v76 = [v75 count];
          if (v76)
          {
            v78 = 0;
            v79 = 0;
            v80 = v70 - 48;
            v261 = 136315138;
            while (1)
            {
              v81 = [v267 objectAtIndexedSubscript:v79];
              v17 = [v81 UTF8String];
              *v268 = 0;
              *&v268[8] = &str_67;

              v82 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v268 >> 31) ^ (*v268 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v268 >> 31) ^ (*v268 >> 1))) >> 27));
              v83 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v70 - 48, v268, v82 ^ (v82 >> 31), buf);
              if (*&buf[12] == 0x7FFFFFFF)
              {
                *buf = v79;
                re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v70 - 48, v268, buf);
              }

              else
              {
                v84 = *re::pipelineLogObjects(v83);
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = v84;
                  *buf = 136315138;
                  *&buf[4] = *&v268[8];
                  _os_log_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_DEFAULT, "Duplicate joint name found in skeleton: '%s'\n", buf, 0xCu);
                }
              }

              v45 = *(v70 - 88);
              if (v45 <= v79)
              {
                break;
              }

              v77 = re::StringID::operator=((*(v70 - 80) + v78), v268);
              if (v268[0])
              {
                if (v268[0])
                {
                }
              }

              v79 = (v79 + 1);
              v78 += 16;
              if (v76 == v79)
              {
                goto LABEL_88;
              }
            }

            *v303 = 0;
            memset(v294, 0, 64);
            *buf = 0u;
            v210 = MEMORY[0x1E69E9C10];
            v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v292.columns[0].f64[0]) = 136315906;
            *(v292.columns[0].f64 + 4) = "operator[]";
            WORD2(v292.columns[0].f64[1]) = 1024;
            if (v211)
            {
              v212 = 3;
            }

            else
            {
              v212 = 2;
            }

            *(&v292.columns[0].f64[1] + 6) = 468;
            WORD1(v292.columns[0].f64[2]) = 2048;
            *(&v292.columns[0].f64[2] + 4) = v79;
            WORD2(v292.columns[0].f64[3]) = 2048;
            *(&v292.columns[0].f64[3] + 6) = v45;
            _os_log_send_and_compose_impl(v212, v303, buf, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
            _os_crash_msg();
            __break(1u);
            goto LABEL_243;
          }

LABEL_88:
          v45 = *(v70 - 88);
          if (v45)
          {
            v17 = 0;
            v87 = 8;
            v80 = 0xFFFFFFFFLL;
            while (v45 > v17)
            {
              v88 = *(*(v70 - 80) + v87);
              re::DynamicString::rfind(&v276, v268, 47);
              if (v276 == 1 && v277)
              {
                v89 = re::DynamicString::substr(v303, v268, 0, v277);
                if (v303[8])
                {
                  v90 = *&v303[16];
                }

                else
                {
                  v90 = &v303[9];
                }

                v271 = 0;
                v272 = &str_67;
                v91 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v271 >> 31) ^ (v271 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v271 >> 31) ^ (v271 >> 1))) >> 27));
                v92 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v70 - 48, &v271, v91 ^ (v91 >> 31), buf);
                v45 = *(v70 - 64);
                if (*&buf[12] == 0x7FFFFFFF)
                {
                  if (v45 <= v17)
                  {
                    goto LABEL_251;
                  }

                  v93 = -1;
                }

                else
                {
                  if (v45 <= v17)
                  {
                    goto LABEL_255;
                  }

                  v93 = *(*(v70 - 32) + 32 * *&buf[12] + 24);
                }

                *(*(v70 - 56) + 4 * v17) = v93;
                if (v271)
                {
                  if (v271)
                  {
                  }
                }

                if (*v303 && (v303[8] & 1) != 0)
                {
                  (*(**v303 + 40))();
                }
              }

              else
              {
                v45 = *(v70 - 64);
                if (v45 <= v17)
                {
                  goto LABEL_247;
                }

                *(*(v70 - 56) + 4 * v17) = -1;
              }

              v86 = *v268;
              if (*v268 && (v268[8] & 1) != 0)
              {
                v86 = (*(**v268 + 40))();
              }

              ++v17;
              v45 = *(v70 - 88);
              v87 += 16;
              if (v17 >= v45)
              {
                goto LABEL_114;
              }
            }

LABEL_243:
            *v268 = 0;
            memset(v294, 0, 64);
            *buf = 0u;
            v213 = MEMORY[0x1E69E9C10];
            v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v292.columns[0].f64[0]) = 136315906;
            *(v292.columns[0].f64 + 4) = "operator[]";
            WORD2(v292.columns[0].f64[1]) = 1024;
            if (v214)
            {
              v215 = 3;
            }

            else
            {
              v215 = 2;
            }

            *(&v292.columns[0].f64[1] + 6) = 468;
            WORD1(v292.columns[0].f64[2]) = 2048;
            *(&v292.columns[0].f64[2] + 4) = v17;
            WORD2(v292.columns[0].f64[3]) = 2048;
            *(&v292.columns[0].f64[3] + 6) = v45;
            _os_log_send_and_compose_impl(v215, v268, buf, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
            _os_crash_msg();
            __break(1u);
LABEL_247:
            *v303 = 0;
            memset(v294, 0, 64);
            *buf = 0u;
            v216 = MEMORY[0x1E69E9C10];
            v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v292.columns[0].f64[0]) = 136315906;
            *(v292.columns[0].f64 + 4) = "operator[]";
            WORD2(v292.columns[0].f64[1]) = 1024;
            if (v217)
            {
              v218 = 3;
            }

            else
            {
              v218 = 2;
            }

            *(&v292.columns[0].f64[1] + 6) = 468;
            WORD1(v292.columns[0].f64[2]) = 2048;
            *(&v292.columns[0].f64[2] + 4) = v17;
            WORD2(v292.columns[0].f64[3]) = 2048;
            *(&v292.columns[0].f64[3] + 6) = v45;
            _os_log_send_and_compose_impl(v218, v303, buf, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
            _os_crash_msg();
            __break(1u);
LABEL_251:
            *v307 = 0;
            memset(v294, 0, 64);
            *buf = 0u;
            v219 = MEMORY[0x1E69E9C10];
            v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v292.columns[0].f64[0]) = 136315906;
            *(v292.columns[0].f64 + 4) = "operator[]";
            WORD2(v292.columns[0].f64[1]) = 1024;
            if (v220)
            {
              v221 = 3;
            }

            else
            {
              v221 = 2;
            }

            *(&v292.columns[0].f64[1] + 6) = 468;
            WORD1(v292.columns[0].f64[2]) = 2048;
            *(&v292.columns[0].f64[2] + 4) = v17;
            WORD2(v292.columns[0].f64[3]) = 2048;
            *(&v292.columns[0].f64[3] + 6) = v45;
            _os_log_send_and_compose_impl(v221, v307, buf, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
            _os_crash_msg();
            __break(1u);
LABEL_255:
            *v307 = 0;
            memset(v294, 0, 64);
            *buf = 0u;
            v222 = MEMORY[0x1E69E9C10];
            v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v292.columns[0].f64[0]) = 136315906;
            *(v292.columns[0].f64 + 4) = "operator[]";
            WORD2(v292.columns[0].f64[1]) = 1024;
            if (v223)
            {
              v224 = 3;
            }

            else
            {
              v224 = 2;
            }

            *(&v292.columns[0].f64[1] + 6) = 468;
            WORD1(v292.columns[0].f64[2]) = 2048;
            *(&v292.columns[0].f64[2] + 4) = v17;
            WORD2(v292.columns[0].f64[3]) = 2048;
            *(&v292.columns[0].f64[3] + 6) = v45;
            _os_log_send_and_compose_impl(v224, v307, buf, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
            _os_crash_msg();
            __break(1u);
            goto LABEL_259;
          }

LABEL_114:
          *(v70 - 152) = v76;
          v17 = v257;
          v94 = [v257 jointBindTransforms];
          v80 = v94;
          if (v94)
          {
            v95 = [v94 elementCount];
            v8 = v255;
            if (v95)
            {
              v96 = v95;
              v97 = [v257 jointRestTransforms];
              if (v97)
              {
                v98 = v97;
                v276 = 0;
                v277 = 0;
                v278 = 0;
                v99 = v278;
                v100 = [v80 getDouble4x4Array:v278 maxCount:v96];
                if (v100 == v96)
                {
                  v271 = 0;
                  v272 = 0;
                  v273 = 0;
                  v251 = v273;
                  v101 = [_anonymous_namespace_ getDouble4x4Array:v98 maxCount:"getDouble4x4Array:maxCount:"];
                  v252 = v99;
                  v253 = v101;
                  if (v101 == v96)
                  {
                    v249 = v98;
                    v250 = v80;
                    if (*(v70 - 64))
                    {
                      v103 = 0;
                      v104 = 0;
                      v17 = 0;
                      v261 = v272;
                      v105 = v277;
                      v45 = v252;
                      v106 = v251 + 4;
                      while (v261 != v17)
                      {
                        v108 = v106[-4];
                        v107 = v106[-3];
                        v110 = v106[-2];
                        v109 = v106[-1];
                        v112 = *v106;
                        v111 = v106[1];
                        v114 = v106[2];
                        v113 = v106[3];
                        *&v268[8] = 1065353216;
                        *&v268[16] = 0;
                        *v268 = 0x3F8000003F800000;
                        *&v268[24] = 0x3F80000000000000;
                        v269 = 0uLL;
                        *buf = vcvt_hight_f32_f64(vcvt_f32_f64(v108), v107);
                        *v294 = vcvt_hight_f32_f64(vcvt_f32_f64(v110), v109);
                        *&v294[16] = vcvt_hight_f32_f64(vcvt_f32_f64(v112), v111);
                        *&v294[32] = vcvt_hight_f32_f64(vcvt_f32_f64(v114), v113);
                        re::decomposeScaleRotationTranslation<float>(buf, v268, &v268[16], &v269);
                        v80 = *(v70 - 112);
                        if (v80 <= v17)
                        {
                          goto LABEL_263;
                        }

                        v115 = (*(v70 - 104) + v103);
                        v116 = *v268;
                        v117 = v269;
                        v115[1] = *&v268[16];
                        v115[2] = v117;
                        *v115 = v116;
                        if (v105 == v17)
                        {
                          goto LABEL_267;
                        }

                        v315.columns[2] = *v292.columns[1].f64;
                        v315.columns[3] = *&v292.columns[1].f64[2];
                        v315.columns[0] = *v292.columns[0].f64;
                        v315.columns[1] = *&v292.columns[0].f64[2];
                        v316 = __invert_f4(v315);
                        v80 = *(v70 - 136);
                        if (v80 <= v17)
                        {
                          goto LABEL_271;
                        }

                        *(*(v70 - 128) + v104) = v316;
                        ++v17;
                        v104 += 64;
                        ++v45;
                        v103 += 48;
                        v106 += 8;
                        if (v17 >= *(v70 - 64))
                        {
                          goto LABEL_126;
                        }
                      }

LABEL_259:
                      *v268 = 0;
                      memset(v294, 0, 64);
                      *buf = 0u;
                      v225 = MEMORY[0x1E69E9C10];
                      v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v292.columns[0].f64[0]) = 136315906;
                      *(v292.columns[0].f64 + 4) = "operator[]";
                      WORD2(v292.columns[0].f64[1]) = 1024;
                      if (v226)
                      {
                        v227 = 3;
                      }

                      else
                      {
                        v227 = 2;
                      }

                      *(&v292.columns[0].f64[1] + 6) = 468;
                      WORD1(v292.columns[0].f64[2]) = 2048;
                      v105 = v261;
                      *(&v292.columns[0].f64[2] + 4) = v261;
                      WORD2(v292.columns[0].f64[3]) = 2048;
                      *(&v292.columns[0].f64[3] + 6) = v261;
                      _os_log_send_and_compose_impl(v227, v268, buf, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
                      _os_crash_msg();
                      __break(1u);
LABEL_263:
                      *v303 = 0;
                      memset(v294, 0, 64);
                      *buf = 0u;
                      v228 = MEMORY[0x1E69E9C10];
                      v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v292.columns[0].f64[0]) = 136315906;
                      *(v292.columns[0].f64 + 4) = "operator[]";
                      WORD2(v292.columns[0].f64[1]) = 1024;
                      if (v229)
                      {
                        v230 = 3;
                      }

                      else
                      {
                        v230 = 2;
                      }

                      *(&v292.columns[0].f64[1] + 6) = 468;
                      WORD1(v292.columns[0].f64[2]) = 2048;
                      *(&v292.columns[0].f64[2] + 4) = v17;
                      WORD2(v292.columns[0].f64[3]) = 2048;
                      *(&v292.columns[0].f64[3] + 6) = v80;
                      _os_log_send_and_compose_impl(v230, v303, buf, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
                      _os_crash_msg();
                      __break(1u);
LABEL_267:
                      *v303 = 0;
                      memset(v294, 0, 64);
                      *buf = 0u;
                      v231 = MEMORY[0x1E69E9C10];
                      v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      LODWORD(v292.columns[0].f64[0]) = 136315906;
                      *(v292.columns[0].f64 + 4) = "operator[]";
                      WORD2(v292.columns[0].f64[1]) = 1024;
                      if (v232)
                      {
                        v233 = 3;
                      }

                      else
                      {
                        v233 = 2;
                      }

                      *(&v292.columns[0].f64[1] + 6) = 468;
                      WORD1(v292.columns[0].f64[2]) = 2048;
                      *(&v292.columns[0].f64[2] + 4) = v105;
                      WORD2(v292.columns[0].f64[3]) = 2048;
                      *(&v292.columns[0].f64[3] + 6) = v105;
                      _os_log_send_and_compose_impl(v233, v303, buf, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
                      _os_crash_msg();
                      __break(1u);
LABEL_271:
                      *v307 = 0;
                      memset(v294, 0, 64);
                      *buf = 0u;
                      v234 = MEMORY[0x1E69E9C10];
                      v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v303 = 136315906;
                      *&v303[4] = "operator[]";
                      *&v303[12] = 1024;
                      if (v235)
                      {
                        v236 = 3;
                      }

                      else
                      {
                        v236 = 2;
                      }

                      *&v303[14] = 468;
                      *&v303[18] = 2048;
                      *&v303[20] = v17;
                      v304 = 2048;
                      *v305 = v80;
                      _os_log_send_and_compose_impl(v236, v307, buf, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v303, 38, v249, v250);
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_275;
                    }

LABEL_126:
                    v21 = a3;
                    v44 = *(a3 + 16) - 1;
                    v286 = v44;
                    v8 = v255;
                    v17 = v257;
                    v98 = v249;
                    v80 = v250;
                  }

                  else
                  {
                    v177 = [v255 name];
                    v179 = v177;
                    if (v177)
                    {
                      v180 = [v177 UTF8String];
                    }

                    else
                    {
                      v180 = "(unnamed)";
                    }

                    v21 = a3;
                    re::DynamicString::format(buf, "Incorrect number of rest transforms for %s.", v178, v180);
                    v195 = *buf;
                    v196 = *v294;
                    *a1 = 0;
                    *(a1 + 8) = 1029;
                    *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
                    *(a1 + 24) = v195;
                    *(a1 + 40) = v196;

                    v44 = -1;
                  }

                  if (v271 && v272)
                  {
                    (*(*v271 + 40))();
                  }

                  if (v276 && v277)
                  {
                    (*(*v276 + 40))();
                  }

                  v197 = v253 == v96;
                  v15 = v259;
                  if (!v197)
                  {
                    goto LABEL_233;
                  }

LABEL_36:
                  v256 = v17;
                  v45 = v44;
                  v17 = *(v21 + 16);
                  v265 = v44;
                  if (v17 <= v44)
                  {
                    goto LABEL_287;
                  }

                  v46 = *(v21 + 32) + 168 * v44;
                  v258 = v15;
                  v266 = v15;
                  v47 = [v266 jointPaths];
                  v48 = [v47 count];

                  v49 = v48;
                  if (v48)
                  {
                    v50 = 0;
                    while (1)
                    {
                      v51 = [v266 jointPaths];
                      v52 = [v51 objectAtIndexedSubscript:v50];
                      v53 = [v52 UTF8String];
                      v292.columns[0].f64[0] = 0.0;
                      *&v292.columns[0].f64[1] = &str_67;

                      v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v292.columns[0].f64[0] >> 31) ^ (*&v292.columns[0].f64[0] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v292.columns[0].f64[0] >> 31) ^ (*&v292.columns[0].f64[0] >> 1))) >> 27));
                      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v46 + 120, &v292, v54 ^ (v54 >> 31), buf);
                      if (*&buf[12] == 0x7FFFFFFF)
                      {
                        break;
                      }

                      *buf = *(*(v46 + 136) + 32 * *&buf[12] + 24);
                      v56 = re::DynamicArray<unsigned long>::add(&v281, buf);
                      if (LOBYTE(v292.columns[0].f64[0]))
                      {
                        if (LOBYTE(v292.columns[0].f64[0]))
                        {
                        }
                      }

                      if (v49 == ++v50)
                      {
                        goto LABEL_51;
                      }
                    }

                    v131 = re::DynamicString::format(buf, "Joint %s missing from skeleton while remapping joints.", v55, *&v292.columns[0].f64[1]);
                    v132 = *buf;
                    v133 = *v294;
                    v59 = v260;
                    *v260 = 0;
                    *(v260 + 8) = 1000;
                    *(v260 + 16) = &re::AnimationErrorCategory(void)::instance;
                    *(v260 + 24) = v132;
                    *(v260 + 40) = v133;
                    v17 = v256;
                    v60 = v254;
                    if (LOBYTE(v292.columns[0].f64[0]))
                    {
                      if (LOBYTE(v292.columns[0].f64[0]))
                      {
                      }
                    }
                  }

                  else
                  {
                    if (*(v46 + 80))
                    {
                      v57 = 0;
                      v58 = 1;
                      do
                      {
                        *buf = v57;
                        re::DynamicArray<unsigned long>::add(&v281, buf);
                        v57 = v58;
                        v24 = *(v46 + 80) > v58++;
                      }

                      while (v24);
                    }

LABEL_51:
                    v59 = v260;
                    *v260 = 1;
                    v17 = v256;
                    v60 = v254;
                  }

                  if (*v59 != 1)
                  {
                    goto LABEL_233;
                  }

                  v134 = [v8 vertexAttributeDataForAttributeNamed:*MEMORY[0x1E6974B08]];
                  v135 = v134;
                  if (v134)
                  {
                    if (([v134 format] & 0xC0000) != 0)
                    {
                      v136 = [v8 vertexAttributeDataForAttributeNamed:*MEMORY[0x1E6974B00]];
                      if (!v136)
                      {
                        v186 = [v8 name];
                        v188 = v186;
                        if (v186)
                        {
                          v189 = [v186 UTF8String];
                        }

                        else
                        {
                          v189 = "(unnamed)";
                        }

                        re::DynamicString::format(buf, "Processing mesh %s", v187, v189);
                        v198 = *buf;
                        v199 = *v294;
                        *v260 = 0;
                        *(v260 + 8) = 1008;
                        *(v260 + 16) = &re::AnimationErrorCategory(void)::instance;
                        *(v260 + 24) = v198;
                        *(v260 + 40) = v199;

LABEL_231:
                        v15 = v258;
                        goto LABEL_232;
                      }

                      *&v305[2] = 0;
                      memset(v303, 0, sizeof(v303));
                      v280 = 0;
                      v277 = 0;
                      v278 = 0;
                      v275 = 0;
                      v276 = 0;
                      v279 = 0;
                      v272 = 0;
                      v273 = 0;
                      v271 = 0;
                      v274 = 0;
                      generateInfluenceData(v268, v263, v135, v136, &v281, v303, &v276, &v271);
                      if (v268[0] == 1)
                      {
                        *buf = 0u;
                        memset(v294, 0, 48);
                        v137 = re::DynamicString::DynamicString(&v294[56]);
                        v302 = 0;
                        v301 = 0u;
                        v300 = 0u;
                        v299 = 0u;
                        v298 = 0u;
                        v297 = 0u;
                        memset(v296, 0, sizeof(v296));
                        v138 = v273;
                        v140 = v273;
                        if (v273)
                        {
                          v141 = 0;
                          v142 = v275;
                          v45 = *(&v298 + 1);
                          v143 = v299;
                          while (v45 != v141)
                          {
                            *(v143 + 4 * v141) = *(v142 + 4 * v141);
                            v141 = (v141 + 1);
                            if (v140 == v141)
                            {
                              goto LABEL_147;
                            }
                          }

LABEL_275:
                          v291 = 0;
                          memset(&v292, 0, 80);
                          v237 = MEMORY[0x1E69E9C10];
                          v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v307 = 136315906;
                          *&v307[4] = "operator[]";
                          v308 = 1024;
                          if (v238)
                          {
                            v239 = 3;
                          }

                          else
                          {
                            v239 = 2;
                          }

                          v309 = 468;
                          v310 = 2048;
                          v311 = v45;
                          v312 = 2048;
                          v313 = v45;
                          _os_log_send_and_compose_impl(v239, &v291, &v292, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v307, 38, v249, v250);
                          _os_crash_msg();
                          __break(1u);
LABEL_279:
                          v291 = 0;
                          memset(&v292, 0, 80);
                          v240 = MEMORY[0x1E69E9C10];
                          v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v307 = 136315906;
                          *&v307[4] = "operator[]";
                          v308 = 1024;
                          if (v241)
                          {
                            v242 = 3;
                          }

                          else
                          {
                            v242 = 2;
                          }

                          v309 = 468;
                          v310 = 2048;
                          v311 = v45;
                          v312 = 2048;
                          v313 = v45;
                          _os_log_send_and_compose_impl(v242, &v291, &v292, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v307, 38, v249, v250);
                          _os_crash_msg();
                          __break(1u);
LABEL_283:
                          v291 = 0;
                          memset(&v292, 0, 80);
                          v243 = MEMORY[0x1E69E9C10];
                          v244 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v307 = 136315906;
                          *&v307[4] = "operator[]";
                          v308 = 1024;
                          if (v244)
                          {
                            v245 = 3;
                          }

                          else
                          {
                            v245 = 2;
                          }

                          v309 = 468;
                          v310 = 2048;
                          v311 = v17;
                          v312 = 2048;
                          v313 = v17;
                          _os_log_send_and_compose_impl(v245, &v291, &v292, 80, &dword_1E1C61000, v243, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v307, 38, v249, v250);
                          _os_crash_msg();
                          __break(1u);
LABEL_287:
                          *v268 = 0;
                          memset(v294, 0, 64);
                          *buf = 0u;
                          v246 = MEMORY[0x1E69E9C10];
                          v247 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          LODWORD(v292.columns[0].f64[0]) = 136315906;
                          *(v292.columns[0].f64 + 4) = "operator[]";
                          WORD2(v292.columns[0].f64[1]) = 1024;
                          if (v247)
                          {
                            v248 = 3;
                          }

                          else
                          {
                            v248 = 2;
                          }

                          *(&v292.columns[0].f64[1] + 6) = 789;
                          WORD1(v292.columns[0].f64[2]) = 2048;
                          *(&v292.columns[0].f64[2] + 4) = v45;
                          WORD2(v292.columns[0].f64[3]) = 2048;
                          *(&v292.columns[0].f64[3] + 6) = v17;
                          _os_log_send_and_compose_impl(v248, v268, buf, 80, &dword_1E1C61000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v292, 38, v249, v250);
                          _os_crash_msg();
                          __break(1u);
                        }

LABEL_147:
                        v144 = *&v303[16];
                        v146 = *&v303[16];
                        if (*&v303[16])
                        {
                          v147 = 0;
                          v148 = *&v305[2];
                          v149 = v296[2];
                          v45 = v296[1];
                          while (v45 != v147)
                          {
                            *(v149 + 4 * v147) = *(v148 + 4 * v147);
                            v147 = (v147 + 1);
                            if (v146 == v147)
                            {
                              goto LABEL_151;
                            }
                          }

                          goto LABEL_279;
                        }

LABEL_151:
                        v150 = v278;
                        v152 = v278;
                        if (v278)
                        {
                          v153 = 0;
                          v154 = v280;
                          v155 = *(&v297 + 1);
                          v17 = v297;
                          while (v17 != v153)
                          {
                            *(v155 + 4 * v153) = *(v154 + 4 * v153);
                            if (v152 == ++v153)
                            {
                              goto LABEL_155;
                            }
                          }

                          goto LABEL_283;
                        }

LABEL_155:
                        *(&v301 + 1) = 0;
                        objc_msgSend_geometryBindTransform(v266);
                        *&v294[48] = v265;
                        v157 = [v8 name];
                        v158 = v157;
                        if (v157)
                        {
                          v159 = [v157 UTF8String];
                        }

                        else
                        {
                          v159 = "(unnamed)";
                        }

                        v17 = v256;
                        re::DynamicString::operator=(&v294[56], v159);

                        v200 = [v8 name];
                        v201 = v200;
                        if (v200)
                        {
                          v200 = [v200 UTF8String];
                          v202 = v200;
                        }

                        else
                        {
                          v202 = "(unnamed)";
                        }

                        v203 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((v60 + 20), &v292, &v286);
                        if (*&v292.columns[0].f64[0])
                        {
                          if (LOBYTE(v292.columns[0].f64[1]))
                          {
                            (*(**&v292.columns[0].f64[0] + 40))(v203);
                          }

                          memset(&v292, 0, 32);
                        }

                        v204 = [v256 name];
                        v205 = v204;
                        if (v204)
                        {
                          v204 = [v204 UTF8String];
                          v206 = v204;
                        }

                        else
                        {
                          v206 = "(unnamed)";
                        }

                        v207 = re::DynamicArray<re::DynamicString>::add((v60 + 10), &v292);
                        if (*&v292.columns[0].f64[0])
                        {
                          if (LOBYTE(v292.columns[0].f64[1]))
                          {
                            (*(**&v292.columns[0].f64[0] + 40))(v207);
                          }

                          memset(&v292, 0, 32);
                        }

                        v208 = [v266 jointAnimation];
                        v209 = v208;
                        if (v208)
                        {
                          *&v292.columns[0].f64[0] = v208;
                          re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add((v60 + 26), &v292, &v286);
                        }

                        *v260 = 1;

                        re::ModelIOSkinningData::~ModelIOSkinningData(buf);
                        if (v268[0])
                        {
                          goto LABEL_222;
                        }
                      }

                      else
                      {
                        *v260 = v268[0];
                        *(v260 + 8) = *&v268[8];
                        *(v260 + 24) = *&v268[24];
                        *(v260 + 48) = v270;
                        *(v260 + 32) = v269;
                        v270 = 0;
                        *&v268[24] = 0;
                        v269 = 0uLL;
                      }

                      if (*&v268[24] && (v269 & 1) != 0)
                      {
                        (*(**&v268[24] + 40))();
                      }

LABEL_222:
                      if (v271 && v275)
                      {
                        (*(*v271 + 40))();
                      }

                      if (v276 && v280)
                      {
                        (*(*v276 + 40))();
                      }

                      if (*v303 && *&v305[2])
                      {
                        (*(**v303 + 40))();
                      }

                      goto LABEL_231;
                    }

                    v181 = [v8 name];
                    v175 = v181;
                    if (v181)
                    {
                      v183 = [v181 UTF8String];
                    }

                    else
                    {
                      v183 = "(unnamed)";
                    }

                    re::DynamicString::format(buf, "Processing mesh %s", v182, v183);
                    v190 = *buf;
                    v192 = *&v294[8];
                    v191 = *v294;
                    v193 = v260;
                    *v260 = 0;
                    v194 = 1007;
                  }

                  else
                  {
                    v173 = [v8 name];
                    v175 = v173;
                    if (v173)
                    {
                      v176 = [v173 UTF8String];
                    }

                    else
                    {
                      v176 = "(unnamed)";
                    }

                    re::DynamicString::format(buf, "Processing mesh %s", v174, v176);
                    v190 = *buf;
                    v192 = *&v294[8];
                    v191 = *v294;
                    v193 = v260;
                    *v260 = 0;
                    v194 = 1006;
                  }

                  *(v193 + 8) = v194;
                  *(v193 + 16) = &re::AnimationErrorCategory(void)::instance;
                  *(v193 + 24) = v190;
                  *(v193 + 40) = v191;
                  *(v193 + 48) = v192;

LABEL_232:
                  goto LABEL_233;
                }

                v165 = [v255 name];
                v167 = v165;
                v15 = v259;
                if (v165)
                {
                  v168 = [v165 UTF8String];
                }

                else
                {
                  v168 = "(unnamed)";
                }

                re::DynamicString::format(buf, "Incorrect number of bind transforms for %s.", v166, v168);
                v184 = *buf;
                v185 = *v294;
                *a1 = 0;
                *(a1 + 8) = 1005;
                *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
                *(a1 + 24) = v184;
                *(a1 + 40) = v185;

                if (v276 && v277)
                {
                  (*(*v276 + 40))();
                }

LABEL_173:
                goto LABEL_233;
              }

              v160 = [v255 name];
              v124 = v160;
              if (v160)
              {
                v162 = [v160 UTF8String];
              }

              else
              {
                v162 = "(unnamed)";
              }

              v15 = v259;
              re::DynamicString::format(buf, "Processing mesh %s", v161, v162);
              v169 = *buf;
              v171 = *&v294[8];
              v170 = *v294;
              *a1 = 0;
              v172 = 1028;
            }

            else
            {
              v126 = [v255 name];
              v124 = v126;
              v15 = v259;
              if (v126)
              {
                v128 = [v126 UTF8String];
              }

              else
              {
                v128 = "(unnamed)";
              }

              re::DynamicString::format(buf, "Processing mesh %s", v127, v128);
              v169 = *buf;
              v171 = *&v294[8];
              v170 = *v294;
              *a1 = 0;
              v172 = 1004;
            }

            *(a1 + 8) = v172;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v169;
            *(a1 + 40) = v170;
            *(a1 + 48) = v171;
          }

          else
          {
            v8 = v255;
            v122 = [v255 name];
            v124 = v122;
            if (v122)
            {
              v125 = [v122 UTF8String];
            }

            else
            {
              v125 = "(unnamed)";
            }

            v15 = v259;
            re::DynamicString::format(buf, "Processing mesh %s", v123, v125);
            v163 = *buf;
            v164 = *v294;
            *a1 = 0;
            *(a1 + 8) = 1004;
            *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a1 + 24) = v163;
            *(a1 + 40) = v164;
          }

          goto LABEL_173;
        }

        v34 = [v8 name];
        v32 = v34;
        if (v34)
        {
          v36 = [v34 UTF8String];
        }

        else
        {
          v36 = "(unnamed)";
        }

        re::DynamicString::format(buf, "Processing mesh %s", v35, v36);
        v40 = *buf;
        v42 = *&v294[8];
        v41 = *v294;
        *a1 = 0;
        v43 = 1003;
      }

      else
      {
        v30 = [v8 name];
        v32 = v30;
        if (v30)
        {
          v33 = [v30 UTF8String];
        }

        else
        {
          v33 = "(unnamed)";
        }

        re::DynamicString::format(buf, "Processing mesh %s", v31, v33);
        v40 = *buf;
        v42 = *&v294[8];
        v41 = *v294;
        *a1 = 0;
        v43 = 1002;
      }

      *(a1 + 8) = v43;
      *(a1 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a1 + 24) = v40;
      *(a1 + 40) = v41;
      *(a1 + 48) = v42;

LABEL_237:
      goto LABEL_238;
    }
  }

  else
  {
LABEL_9:
  }

  *a1 = 1;
LABEL_238:
}

float64x2_t anonymous namespace::convertToRE(float32x4_t *this, const simd_double4x4 *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[1].f64), *&a2->columns[1].f64[2]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[2].f64), *&a2->columns[2].f64[2]);
  result = *&a2->columns[3].f64[2];
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[3].f64), result);
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[0].f64), *&a2->columns[0].f64[2]);
  this[1] = v2;
  this[2] = v3;
  this[3] = v5;
  return result;
}

double re::DynamicArray<re::ModelIOSkinningData>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::ModelIOSkinningData>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ModelIOSkinningData>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 224 * v5;
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 64);
  *(v11 + 32) = v13;
  *(v11 + 48) = v14;
  *(v11 + 16) = v12;
  *v11 = *a2;
  result = 0.0;
  *(v11 + 88) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 96) = *(a2 + 96);
  v16 = *(a2 + 80);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v17 = *(a2 + 88);
  *(a2 + 96) = 0;
  v19 = *(v11 + 80);
  v18 = *(v11 + 88);
  *(v11 + 80) = v16;
  *(v11 + 88) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v18;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0;
  v20 = *(a2 + 112);
  *(v11 + 104) = *(a2 + 104);
  *(v11 + 112) = v20;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v21 = *(v11 + 120);
  *(v11 + 120) = *(a2 + 120);
  *(a2 + 120) = v21;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;
  v22 = *(a2 + 136);
  *(v11 + 128) = *(a2 + 128);
  *(v11 + 136) = v22;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v23 = *(v11 + 144);
  *(v11 + 144) = *(a2 + 144);
  *(a2 + 144) = v23;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  v24 = *(a2 + 160);
  *(v11 + 152) = *(a2 + 152);
  *(v11 + 160) = v24;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v25 = *(v11 + 168);
  *(v11 + 168) = *(a2 + 168);
  *(a2 + 168) = v25;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  v26 = *(a2 + 184);
  *(v11 + 176) = *(a2 + 176);
  *(v11 + 184) = v26;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v27 = *(v11 + 192);
  *(v11 + 192) = *(a2 + 192);
  *(a2 + 192) = v27;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 0;
  v28 = *(a2 + 208);
  *(v11 + 200) = *(a2 + 200);
  *(v11 + 208) = v28;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v29 = *(v11 + 216);
  *(v11 + 216) = *(a2 + 216);
  *(a2 + 216) = v29;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v13, a2);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v14, v13);
    result = 0.0;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 32) = a2[3];
    v9 = a2[1];
    *(v8 + 8) = *a2;
    *a2 = 0;
    v10 = a2[2];
    a2[3] = 0;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    a2[1] = v12;
    a2[2] = v11;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::importSkeleton(void *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = a1;
  *v122 = 0;
  *&v122[8] = &str_67;
  memset(&v122[16], 0, 132);
  *&v122[148] = 0x7FFFFFFFLL;
  v5 = [v4 property:@"joints"];
  v6 = v5;
  if (v5 && ([(_anonymous_namespace_ *)v5 data], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(_anonymous_namespace_ *)v6 stringArray];
    v115 = v8;
    if (v8)
    {
      v112 = a2;
      v113 = v6;
      v9 = [v8 count];
      v114 = v4;
      v10 = [v4 path];
      v11 = [v10 stringValue];
      v12 = [v11 UTF8String];
      *&buf = 0;
      *(&buf + 1) = &str_67;
      *v122 = buf;
      *&buf = 0;
      *(&buf + 1) = &str_67;

      v13 = v9;
      v16 = v122;
      LODWORD(v116) = 0;
      if (v9)
      {
        v18 = 0;
        p_buf = "Duplicate joint name found in skeleton: '%s'\n";
        v20 = v115;
        while (1)
        {
          v21 = [v115 objectAtIndexedSubscript:v18];
          v22 = [v21 UTF8String];
          v133 = 0;
          v134 = &str_67;
          v23 = v116;
          v2 = *&v122[24];
          if (*&v122[24] <= v116)
          {
            break;
          }

          v24 = re::StringID::operator=((*&v122[32] + 16 * v116), &v133);
          if (v133)
          {
            if (v133)
            {
            }
          }

          v133 = 0;
          v134 = &str_67;

          v23 = v116;
          v2 = *&v122[24];
          if (*&v122[24] <= v116)
          {
            goto LABEL_98;
          }

          v25 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v122[112], (*&v122[32] + 16 * v116), &v116);
          v26 = *v25;
          if (*v25 != v116)
          {
            v27 = *re::pipelineLogObjects(v25);
            v25 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              v28 = v116;
              v29 = v27;
              v30 = [v115 objectAtIndexedSubscript:v28];
              v31 = [v30 UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v31;
              _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Duplicate joint name found in skeleton: '%s'\n", &buf, 0xCu);
            }

            v26 = v116;
          }

          v18 = v26 + 1;
          LODWORD(v116) = v18;
          if (v18 >= v9)
          {
            v20 = 0;
            v2 = 0xBF58476D1CE4E5B9;
            while (1)
            {
              v23 = *&v122[48];
              if (*&v122[48] <= v20)
              {
                goto LABEL_102;
              }

              *(*&v122[56] + 4 * v20) = -1;
              v23 = *&v122[24];
              if (*&v122[24] <= v20)
              {
                goto LABEL_106;
              }

              v32 = *(*&v122[32] + 16 * v20 + 8);
              v33 = strrchr(v32, 47);
              if (v33)
              {
                v34 = v33;
                p_buf = v32;
                while (1)
                {
                  v133 = 0;
                  v134 = &str_67;
                  v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v133 >> 31) ^ (v133 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v133 >> 31) ^ (v133 >> 1))) >> 27));
                  v36 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v122[112], &v133, v35 ^ (v35 >> 31), &buf);
                  if (HIDWORD(buf) != 0x7FFFFFFF)
                  {
                    break;
                  }

                  p_buf = v134;
                  v34 = strrchr(v134, 47);
                  v37 = *re::pipelineLogObjects(v34);
                  v33 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
                  if (v33)
                  {
                    v38 = v37;
                    LODWORD(buf) = 136315138;
                    *(&buf + 4) = v134;
                    _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Expected joint parent do not exist: %s, looking for its ancester", &buf, 0xCu);
                  }

                  if (v133)
                  {
                    if (v133)
                    {
                    }
                  }

                  if (!v34)
                  {
                    goto LABEL_33;
                  }
                }

                v23 = *&v122[48];
                if (*&v122[48] <= v20)
                {
                  goto LABEL_110;
                }

                *(*&v122[56] + 4 * v20) = *(*&v122[128] + 32 * HIDWORD(buf) + 24);
                if (v133)
                {
                  if (v133)
                  {
                  }
                }
              }

LABEL_33:
              ++v20;
              v13 = v9;
              if (v20 == v9)
              {
                goto LABEL_38;
              }
            }
          }
        }

        v119 = 0;
        memset(v127, 0, sizeof(v127));
        v126 = 0u;
        v125 = 0u;
        buf = 0u;
        v84 = MEMORY[0x1E69E9C10];
        v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v132.columns[0].i32[0] = 136315906;
        *(v132.columns[0].i64 + 4) = "operator[]";
        v132.columns[0].i16[6] = 1024;
        if (v85)
        {
          v86 = 3;
        }

        else
        {
          v86 = 2;
        }

        *(&v132.columns[0].i32[3] + 2) = 468;
        v132.columns[1].i16[1] = 2048;
        *(v132.columns[1].i64 + 4) = v23;
        v132.columns[1].i16[6] = 2048;
        *(&v132.columns[1].i64[1] + 6) = v2;
        _os_log_send_and_compose_impl(v86, &v119, &buf, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
LABEL_98:
        v133 = 0;
        memset(v127, 0, sizeof(v127));
        v126 = 0u;
        v125 = 0u;
        buf = 0u;
        v87 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v132.columns[0].i32[0] = 136315906;
        *(v132.columns[0].i64 + 4) = "operator[]";
        v132.columns[0].i16[6] = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        *(&v132.columns[0].i32[3] + 2) = 468;
        v132.columns[1].i16[1] = 2048;
        *(v132.columns[1].i64 + 4) = v23;
        v132.columns[1].i16[6] = 2048;
        *(&v132.columns[1].i64[1] + 6) = v2;
        _os_log_send_and_compose_impl(v89, &v133, &buf, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
LABEL_102:
        v133 = 0;
        memset(v127, 0, sizeof(v127));
        v126 = 0u;
        v125 = 0u;
        buf = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v132.columns[0].i32[0] = 136315906;
        *(v132.columns[0].i64 + 4) = "operator[]";
        v132.columns[0].i16[6] = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        *(&v132.columns[0].i32[3] + 2) = 468;
        v132.columns[1].i16[1] = 2048;
        *(v132.columns[1].i64 + 4) = v20;
        v132.columns[1].i16[6] = 2048;
        *(&v132.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl(v92, &v133, &buf, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
LABEL_106:
        v133 = 0;
        memset(v127, 0, sizeof(v127));
        v126 = 0u;
        v125 = 0u;
        buf = 0u;
        v93 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v132.columns[0].i32[0] = 136315906;
        *(v132.columns[0].i64 + 4) = "operator[]";
        v132.columns[0].i16[6] = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        *(&v132.columns[0].i32[3] + 2) = 468;
        v132.columns[1].i16[1] = 2048;
        *(v132.columns[1].i64 + 4) = v20;
        v132.columns[1].i16[6] = 2048;
        *(&v132.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl(v95, &v133, &buf, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
LABEL_110:
        v119 = 0;
        memset(v127, 0, sizeof(v127));
        v126 = 0u;
        v125 = 0u;
        buf = 0u;
        v96 = MEMORY[0x1E69E9C10];
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v132.columns[0].i32[0] = 136315906;
        *(v132.columns[0].i64 + 4) = "operator[]";
        v132.columns[0].i16[6] = 1024;
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        *(&v132.columns[0].i32[3] + 2) = 468;
        v132.columns[1].i16[1] = 2048;
        *(v132.columns[1].i64 + 4) = v20;
        v132.columns[1].i16[6] = 2048;
        *(&v132.columns[1].i64[1] + 6) = v23;
        _os_log_send_and_compose_impl(v98, &v119, &buf, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
        _os_crash_msg();
        __break(1u);
        goto LABEL_114;
      }

LABEL_38:
      v4 = v114;
      v43 = [v114 property:@"restTransforms"];
      v119 = 0;
      v120 = 0;
      v121 = 0;
      if (v43 && ([(_anonymous_namespace_ *)v43 data], (v44 = objc_claimAutoreleasedReturnValue()) != 0) && (v45 = v44, v46 = v121, v47 = [(_anonymous_namespace_ *)v43 double4x4Array:v121 maxCount:v13], v45, v47 == v13))
      {
        p_buf = &buf;
        if (v13)
        {
          v23 = 0;
          v16 = v120;
          v49 = 32;
          while (v16 != v23)
          {
            v2 = *&v122[72];
            if (*&v122[72] <= v23)
            {
              goto LABEL_118;
            }

            re::decomposeScaleRotationTranslation<float>(&v132, (*&v122[80] + v49 - 32), (*&v122[80] + v49 - 16), (*&v122[80] + v49));
            ++v23;
            v49 += 48;
            ++v46;
            if (v13 == v23)
            {
              goto LABEL_46;
            }
          }

LABEL_114:
          v133 = 0;
          memset(v127, 0, sizeof(v127));
          v126 = 0u;
          v125 = 0u;
          buf = 0u;
          v99 = MEMORY[0x1E69E9C10];
          v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132.columns[0].i32[0] = 136315906;
          *(p_buf + 164) = "operator[]";
          v132.columns[0].i16[6] = 1024;
          if (v100)
          {
            v101 = 3;
          }

          else
          {
            v101 = 2;
          }

          *(p_buf + 174) = 468;
          v132.columns[1].i16[1] = 2048;
          *(p_buf + 180) = v16;
          v132.columns[1].i16[6] = 2048;
          *(p_buf + 190) = v16;
          _os_log_send_and_compose_impl(v101, &v133, &buf, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
          _os_crash_msg();
          __break(1u);
LABEL_118:
          v116 = 0;
          memset(v127, 0, sizeof(v127));
          v126 = 0u;
          v125 = 0u;
          buf = 0u;
          v102 = MEMORY[0x1E69E9C10];
          v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v133) = 136315906;
          *(p_buf + 228) = "operator[]";
          WORD2(v134) = 1024;
          if (v103)
          {
            v104 = 3;
          }

          else
          {
            v104 = 2;
          }

          *(p_buf + 238) = 468;
          v135 = 2048;
          *(p_buf + 244) = v23;
          v136 = 2048;
          *(p_buf + 254) = v2;
          _os_log_send_and_compose_impl(v104, &v116, &buf, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v133, 38, v111, v112);
          _os_crash_msg();
          __break(1u);
LABEL_122:
          v133 = 0;
          *(p_buf + 3) = 0u;
          *(p_buf + 4) = 0u;
          *(p_buf + 1) = 0u;
          *(p_buf + 2) = 0u;
          *p_buf = 0u;
          v105 = MEMORY[0x1E69E9C10];
          v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132.columns[0].i32[0] = 136315906;
          *(p_buf + 164) = "operator[]";
          v132.columns[0].i16[6] = 1024;
          if (v106)
          {
            v107 = 3;
          }

          else
          {
            v107 = 2;
          }

          *(p_buf + 174) = 468;
          v132.columns[1].i16[1] = 2048;
          *(p_buf + 180) = v16;
          v132.columns[1].i16[6] = 2048;
          *(p_buf + 190) = v16;
          _os_log_send_and_compose_impl(v107, &v133, &buf, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v111, v112);
          _os_crash_msg();
          __break(1u);
LABEL_126:
          v123 = 0;
          *(p_buf + 3) = 0u;
          *(p_buf + 4) = 0u;
          *(p_buf + 1) = 0u;
          *(p_buf + 2) = 0u;
          *p_buf = 0u;
          v108 = MEMORY[0x1E69E9C10];
          v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v133) = 136315906;
          *(p_buf + 228) = "operator[]";
          WORD2(v134) = 1024;
          if (v109)
          {
            v110 = 3;
          }

          else
          {
            v110 = 2;
          }

          *(p_buf + 238) = 468;
          v135 = 2048;
          *(p_buf + 244) = v23;
          v136 = 2048;
          *(p_buf + 254) = v2;
          _os_log_send_and_compose_impl(v110, &v123, &buf, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v133, 38, v111, v112);
          _os_crash_msg();
          __break(1u);
        }

LABEL_46:
        v50 = [v114 property:@"bindTransforms"];
        v116 = 0;
        v117 = 0;
        v118 = 0;
        if (v50 && ([(_anonymous_namespace_ *)v50 data], (v51 = objc_claimAutoreleasedReturnValue()) != 0) && (v52 = v51, v53 = v118, v54 = [(_anonymous_namespace_ *)v50 double4x4Array:v118 maxCount:v13], v52, v54 == v13))
        {
          if (v13)
          {
            v23 = 0;
            v16 = v117;
            v56 = 32;
            while (v16 != v23)
            {
              v138 = __invert_f4(v132);
              v2 = *&v122[96];
              if (*&v122[96] <= v23)
              {
                goto LABEL_126;
              }

              *(*&v122[104] + v56 - 32) = v138;
              ++v23;
              v56 += 64;
              ++v53;
              if (v13 == v23)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_122;
          }

LABEL_54:
          v57 = *v122;
          v58 = *&v122[24];
          v59 = *&v122[48];
          *&v122[48] = 0;
          v60 = *&v122[72];
          *&v122[72] = 0;
          v61 = *&v122[96];
          *&v122[96] = 0;
          v131 = 1;
          *v112 = 1;
          *(v112 + 8) = v57;
          *&buf = 0;
          *(&buf + 1) = &str_67;
          v62 = *&v122[8];
          *v122 = 0;
          *&v122[8] = &str_67;
          *(v112 + 16) = v62;
          *(v112 + 32) = v58;
          v125 = 0uLL;
          v63 = *&v122[32];
          memset(&v122[16], 0, 32);
          *(v112 + 40) = v63;
          v126 = 0u;
          *(v112 + 56) = v59;
          v64 = *&v122[56];
          *&v122[56] = 0u;
          *(v112 + 64) = v64;
          *&v127[1] = 0u;
          *(v112 + 80) = v60;
          v127[0] = 0;
          v127[3] = 0;
          v65 = *&v122[80];
          *&v122[80] = 0u;
          *(v112 + 88) = v65;
          v128 = 0u;
          *(v112 + 104) = v61;
          v129 = 0;
          v66 = *&v122[104];
          memset(&v122[104], 0, 32);
          v130[0] = 0u;
          v67 = *&v122[120];
          *(v112 + 112) = v66;
          *(v112 + 128) = v67;
          v130[1] = 0u;
          v68 = *&v122[136];
          *&v122[136] = xmmword_1E3058120;
          *(v112 + 144) = v68;
          v130[2] = xmmword_1E3058120;
          *(v112 + 160) = 1;
          v69.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v130 + 1);
          v6 = v113;
          if (*(&v128 + 1))
          {
            if (v129)
            {
              (*(**(&v128 + 1) + 40))(v69.n128_f64[0]);
              v129 = 0;
              *&v130[0] = 0;
            }

            *(&v128 + 1) = 0;
          }

          if (v127[2])
          {
            if (v127[3])
            {
              (*(*v127[2] + 40))(v69);
              v127[3] = 0;
              *&v128 = 0;
            }

            v127[2] = 0;
          }

          if (*(&v126 + 1))
          {
            if (v127[0])
            {
              (*(**(&v126 + 1) + 40))(v69);
              v127[0] = 0;
              v127[1] = 0;
            }

            *(&v126 + 1) = 0;
          }

          re::FixedArray<re::StringID>::deinit(&v125);
          re::StringID::destroyString(&buf);
        }

        else
        {
          v78 = [v114 path];
          v79 = [v78 stringValue];
          v80 = [v79 UTF8String];
          re::DynamicString::format(&buf, "Skeleton %s does not have bind transforms.", v81, v80);
          v82 = buf;
          v83 = v125;
          *v112 = 0;
          *(v112 + 8) = 1004;
          *(v112 + 16) = &re::AnimationErrorCategory(void)::instance;
          *(v112 + 24) = v82;
          *(v112 + 40) = v83;

          v6 = v113;
        }

        if (v116 && v117)
        {
          (*(*v116 + 40))();
        }
      }

      else
      {
        v70 = [v114 path];
        v71 = [v70 stringValue];
        v72 = [v71 UTF8String];
        re::DynamicString::format(&buf, "Skeleton %s does not have rest transforms.", v73, v72);
        v74 = buf;
        v75 = v125;
        *v112 = 0;
        *(v112 + 8) = 1028;
        *(v112 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(v112 + 24) = v74;
        *(v112 + 40) = v75;

        v6 = v113;
      }

      if (v119 && v120)
      {
        (*(*v119 + 40))();
      }
    }

    else
    {
      v41 = buf;
      v42 = v125;
      *a2 = 0;
      *(a2 + 8) = 1003;
      *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a2 + 24) = v41;
      *(a2 + 40) = v42;
    }
  }

  else
  {
    v39 = buf;
    v40 = v125;
    *a2 = 0;
    *(a2 + 8) = 1003;
    *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a2 + 24) = v39;
    *(a2 + 40) = v40;
  }

  v76.n128_f64[0] = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v122[112]);
  if (*&v122[88])
  {
    if (*&v122[96])
    {
      (*(**&v122[88] + 40))(v76.n128_f64[0]);
      *&v122[96] = 0uLL;
    }

    *&v122[88] = 0;
  }

  if (*&v122[64])
  {
    if (*&v122[72])
    {
      (*(**&v122[64] + 40))(v76);
      *&v122[72] = 0;
      *&v122[80] = 0;
    }

    *&v122[64] = 0;
  }

  if (*&v122[40])
  {
    if (*&v122[48])
    {
      (*(**&v122[40] + 40))(v76);
      *&v122[48] = 0uLL;
    }

    *&v122[40] = 0;
  }

  v77 = re::FixedArray<re::StringID>::deinit(&v122[16]);
  if (v122[0])
  {
    if (v122[0])
    {
    }
  }
}

void re::importSkeletalAnimation(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v179 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = [v6 type];
  v8 = *MEMORY[0x1E69DEE78];

  if (v7 != v8)
  {
    v9 = [v6 path];
    v10 = [v9 stringValue];
    v11 = [v10 UTF8String];
    v12 = [v6 type];
    v13 = [v12 UTF8String];
    re::DynamicString::format(&v149, "Node %s has unknown animation type: %s.", v14, v11, v13);
    v15 = v149;
    v16 = v150;
    v17 = v151;
    *a3 = 0;
    *(a3 + 8) = 1018;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v15;
    *(a3 + 40) = v16;
    *(a3 + 48) = v17;

    goto LABEL_47;
  }

  re::TimelineAssetData::TimelineAssetData(&v149, 34);
  v154 = 256;
  v159 = 0;
  v156 = 0u;
  v157 = 0u;
  v155 = 1023969417;
  v158 = 0;
  *&v149 = &unk_1F5CC0838;
  v162 = 0;
  memset(v160, 0, sizeof(v160));
  v161 = 0;
  v163 = 257;
  v164 = 1;
  v18 = [v6 property:@"rotations"];
  v19 = [v6 property:@"translations"];
  v20 = [v6 property:@"scales"];
  v21 = v20;
  if (v18 && v19 && v20)
  {
    if ([v18 isAnimated])
    {
      v136 = [v18 timeSamples];
      v22 = [v136 arraySize];
    }

    else
    {
      v22 = 0;
      v136 = 0;
    }

    if ([v19 isAnimated])
    {
      v135 = [v19 timeSamples];
      v29 = [v135 arraySize];
    }

    else
    {
      v29 = 0;
      v135 = 0;
    }

    if ([v21 isAnimated])
    {
      v134 = [v21 timeSamples];
      v132 = [v134 arraySize];
    }

    else
    {
      v132 = 0;
      v134 = 0;
    }

    v137 = [v6 property:@"joints"];
    if (!v137 || ([v137 data], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
    {
      v38 = [v6 path];
      v39 = [v38 stringValue];
      v40 = [v39 UTF8String];
      re::DynamicString::format(&v166, "Animation node %s do not specify valid joint names.", v41, v40);
      v42 = v166;
      v43 = v167;
      *a3 = 0;
      *(a3 + 8) = 1018;
      *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
      *(a3 + 24) = v42;
      *(a3 + 40) = v43;

LABEL_39:
      goto LABEL_40;
    }

    v138 = [v137 stringArray];
    v31 = [v138 count];
    v32 = v31;
    if (v22)
    {
      if (v31 != [v18 arraySizeAtTime:1.79769313e308])
      {
        goto LABEL_37;
      }

      [v136 dataNoCopy];
      v129 = v21;
      v34 = v33 = v19;
      v35 = [v34 bytes];
      v36 = fmin(*v35, 1.79769313e308);
      v37 = fmax(v35[v22 - 1], -1.79769313e308);

      v19 = v33;
      v21 = v129;
    }

    else
    {
      v36 = 1.79769313e308;
      v37 = -1.79769313e308;
    }

    if (v29)
    {
      if (v32 != [v19 arraySizeAtTime:v36])
      {
        goto LABEL_37;
      }

      [v135 dataNoCopy];
      v130 = v21;
      v45 = v44 = v19;
      v46 = [v45 bytes];
      if (v36 > *v46)
      {
        v36 = *v46;
      }

      v47 = &v46[v29];
      if (v37 < *(v47 - 1))
      {
        v37 = *(v47 - 1);
      }

      v19 = v44;
      v21 = v130;
    }

    if (!v132)
    {
      v52 = 0.0;
      if (v29 | v22)
      {
        v52 = v36;
      }

      else
      {
        v37 = 0.0;
      }

LABEL_51:
      v131 = v21;
      v133 = v19;
      v128 = v52;
      if (v52 < v37)
      {
        v52 = v37;
      }

      v126 = v52;
      v60 = a4;
      v155 = LODWORD(v60);
      if (v60 <= 0.0016667 || fabsf(v60 + -0.0016667) < (((fabsf(v60) + 0.0016667) + 1.0) * 0.00001) || (a2 & 1) == 0)
      {
        HIBYTE(v154) = 0;
      }

      v62 = re::DynamicArray<re::StringID>::setCapacity(&v160[1] + 1, v32);
      ++v161;
      if (v32)
      {
        for (i = 0; i != v32; ++i)
        {
          v64 = [v138 objectAtIndexedSubscript:i];
          v65 = [v64 UTF8String];
          *&v166 = 0;
          *(&v166 + 1) = &str_67;
          v66 = re::DynamicArray<re::StringID>::add((&v160[1] + 8), &v166);
          if (v166)
          {
            if (v166)
            {
            }
          }

          *&v166 = 0;
          *(&v166 + 1) = &str_67;
        }
      }

      v67.f64[0] = v128;
      v67.f64[1] = v126;
      *&v156 = vcvt_f32_f64(vmulq_n_f64(v67, a4));
      LODWORD(v61) = vcvtpd_u64_f64(v126 - v128 + 1.0);
      v146 = 0;
      v147 = 0;
      v148 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      re::DynamicArray<re::SkeletalPoseAssetData>::resize(&v156 + 1, v61);
      v70 = v128;
      v19 = v133;
      if (*(&v157 + 1))
      {
        v71 = 0;
        while (1)
        {
          v72 = v70 + v71;
          v73 = [v21 arraySizeAtTime:v72];
          v74 = [v18 arraySizeAtTime:v72];
          v75 = [v19 arraySizeAtTime:v72];
          v76 = v73 > v32 || v74 > v32;
          if (v76 || v75 > v32)
          {
            break;
          }

          v78 = [v21 float3Array:v145 maxCount:v32 atTime:v72];
          v79 = [v18 quatfArray:v148 maxCount:v32 atTime:v72];
          v80 = [v19 float3Array:v142 maxCount:v32 atTime:v72];
          v81 = v80;
          if (v78 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v78;
          }

          if (v82 <= v80)
          {
            v83 = v80;
          }

          else
          {
            v83 = v82;
          }

          if (v78)
          {
            v84 = v78 == v83;
          }

          else
          {
            v84 = 1;
          }

          if (!v84 || (v79 ? (v85 = v79 == v83) : (v85 = 1), !v85 || (v80 ? (v86 = v80 >= v82) : (v86 = 1), !v86)))
          {
            v98 = [v6 path];
            v99 = [v98 stringValue];
            v100 = [v99 UTF8String];
            re::DynamicString::format(&v166, "Sample %ld in node %s has: Total Scales = %ld, Total Rotations = %ld, Total Translations = %ld", v101, v71, v100, v78, v79, v81);
            v102 = v166;
            v103 = v167;
            *a3 = 0;
            *(a3 + 8) = 1027;
            *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
            *(a3 + 24) = v102;
            *(a3 + 40) = v103;

            v19 = v133;
            goto LABEL_106;
          }

          LOBYTE(v163) = v78 != 0;
          HIBYTE(v163) = v79 != 0;
          v164 = v80 != 0;
          v87 = *(&v157 + 1);
          if (*(&v157 + 1) <= v71)
          {
            goto LABEL_135;
          }

          v88 = (v159 + 24 * v71);
          v19 = v133;
          v70 = v128;
          if (v32)
          {
            v89 = 0;
            v90 = 0;
            while (1)
            {
              v87 = v144;
              if (v144 <= v90)
              {
                break;
              }

              v87 = v147;
              if (v147 <= v90)
              {
                goto LABEL_119;
              }

              v87 = v141;
              if (v141 <= v90)
              {
                goto LABEL_123;
              }

              v87 = *(&v157 + 1);
              if (*(&v157 + 1) <= v71)
              {
                goto LABEL_127;
              }

              v91 = v159 + 24 * v71;
              v87 = *(v91 + 8);
              if (v87 <= v90)
              {
                goto LABEL_131;
              }

              v92 = *(v145 + 16 * v90 + 8);
              v93 = *(v148 + 16 * v90);
              v94 = *(v148 + 16 * v90 + 8);
              v95 = *(v142 + 16 * v90);
              v96 = *(v142 + 16 * v90 + 8);
              v97 = (*(v91 + 16) + v89);
              *v97 = *(v145 + 16 * v90);
              v97[1] = v92;
              v97[2] = v93;
              v97[3] = v94;
              v97[4] = v95;
              v97[5] = v96;
              ++v90;
              v89 += 48;
              if (v32 == v90)
              {
                goto LABEL_102;
              }
            }

            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v106 = MEMORY[0x1E69E9C10];
            v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v107)
            {
              v108 = 3;
            }

            else
            {
              v108 = 2;
            }

            v174 = 468;
            v175 = 2048;
            v176 = v90;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v108, &v165, &v166, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
LABEL_119:
            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v109 = MEMORY[0x1E69E9C10];
            v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v110)
            {
              v111 = 3;
            }

            else
            {
              v111 = 2;
            }

            v174 = 468;
            v175 = 2048;
            v176 = v90;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v111, &v165, &v166, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
LABEL_123:
            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v112 = MEMORY[0x1E69E9C10];
            v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v113)
            {
              v114 = 3;
            }

            else
            {
              v114 = 2;
            }

            v174 = 468;
            v175 = 2048;
            v176 = v90;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v114, &v165, &v166, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
LABEL_127:
            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v115 = MEMORY[0x1E69E9C10];
            v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v116)
            {
              v117 = 3;
            }

            else
            {
              v117 = 2;
            }

            v174 = 789;
            v175 = 2048;
            v176 = v71;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v117, &v165, &v166, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
LABEL_131:
            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v118 = MEMORY[0x1E69E9C10];
            v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v119)
            {
              v120 = 3;
            }

            else
            {
              v120 = 2;
            }

            v174 = 468;
            v175 = 2048;
            v176 = v90;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v120, &v165, &v166, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
LABEL_135:
            v165 = 0;
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v166 = 0u;
            v121 = MEMORY[0x1E69E9C10];
            v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v171 = 136315906;
            v172 = "operator[]";
            v173 = 1024;
            if (v122)
            {
              v123 = 3;
            }

            else
            {
              v123 = 2;
            }

            v174 = 789;
            v175 = 2048;
            v176 = v71;
            v177 = 2048;
            v178 = v87;
            _os_log_send_and_compose_impl(v123, &v165, &v166, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v171, 38, v124, v125);
            _os_crash_msg();
            __break(1u);
          }

LABEL_102:
          if (++v71 >= *(&v157 + 1))
          {
            goto LABEL_103;
          }
        }

        v104 = v166;
        v105 = v167;
        *a3 = 0;
        *(a3 + 8) = 1027;
        *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a3 + 24) = v104;
        *(a3 + 40) = v105;
      }

      else
      {
LABEL_103:
        re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(&v166, &v149);
        *a3 = 1;
        re::SkeletalPoseSampledAnimationAssetData::SkeletalPoseSampledAnimationAssetData(a3 + 8, &v166);
        re::types::Ok<re::SkeletalPoseSampledAnimationAssetData>::~Ok(&v166);
      }

LABEL_106:
      v21 = v131;
      if (v140 && v141)
      {
        (*(*v140 + 40))();
      }

      if (v143 && v144)
      {
        (*(*v143 + 40))();
      }

      if (v146 && v147)
      {
        (*(*v146 + 40))();
      }

      goto LABEL_38;
    }

    if (v32 == [v21 arraySizeAtTime:v36])
    {
      v48 = [v134 dataNoCopy];
      v49 = [v48 bytes];
      v50 = *v49;
      if (v36 <= *v49)
      {
        v50 = v36;
      }

      v127 = v50;
      v51 = &v49[v132];
      if (v37 < *(v51 - 1))
      {
        v37 = *(v51 - 1);
      }

      v52 = v127;
      goto LABEL_51;
    }

LABEL_37:
    v53 = [v6 path];
    v54 = [v53 stringValue];
    v55 = [v54 UTF8String];
    re::DynamicString::format(&v166, "Processing animation %s", v56, v55);
    v57 = v166;
    v58 = v167;
    *a3 = 0;
    *(a3 + 8) = 1018;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v57;
    *(a3 + 40) = v58;

LABEL_38:
    goto LABEL_39;
  }

  v23 = [v6 path];
  v24 = [v23 stringValue];
  v25 = [v24 UTF8String];
  re::DynamicString::format(&v166, "Processing animation %s", v26, v25);
  v27 = v166;
  v28 = v167;
  *a3 = 0;
  *(a3 + 8) = 1018;
  *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a3 + 24) = v27;
  *(a3 + 40) = v28;

LABEL_40:
  re::DynamicArray<re::StringID>::deinit(&v160[1] + 8);
  re::AssetHandle::~AssetHandle(v160);
  *&v149 = &unk_1F5CC08A8;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(&v156 + 8);
  *&v149 = &unk_1F5CC3608;
  v59 = v152;
  if (v152)
  {
    if (BYTE8(v152))
    {
      v59 = (*(*v152 + 40))();
    }

    v153 = 0u;
    v152 = 0u;
  }

  if (v151)
  {
    if (v151)
    {
    }
  }

LABEL_47:
}

void re::importSkinningAndSkeletalAnimations(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, unsigned __int8 *a6@<X8>)
{
  v263 = *MEMORY[0x1E69E9840];
  v218 = a1;
  v10 = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v10)
  {
    v11 = 0;
    v12 = *(a2 + 32);
    v13 = 168 * v10;
    do
    {
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v12 + v11 + 120));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 96));
      re::FixedArray<re::StringID>::deinit((v12 + v11 + 72));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 48));
      re::FixedArray<CoreIKTransform>::deinit((v12 + v11 + 24));
      re::StringID::destroyString((v12 + v11));
      v11 += 168;
    }

    while (v13 != v11);
  }

  ++*(a2 + 24);
  v14 = *(a3 + 16);
  *(a3 + 16) = 0;
  if (v14)
  {
    v15 = 0;
    v16 = *(a3 + 32);
    v17 = 224 * v14;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 200));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 176));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 152));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 128));
      re::FixedArray<CoreIKTransform>::deinit((v16 + v15 + 104));
      re::DynamicString::deinit((v16 + v15 + 72));
      v15 += 224;
    }

    while (v17 != v15);
  }

  ++*(a3 + 24);
  v18 = *(a4 + 16);
  *(a4 + 16) = 0;
  if (v18)
  {
    v19 = *(a4 + 32);
    v20 = &v19[15 * v18];
    v21 = v19;
    do
    {
      *v21 = &unk_1F5CAEFA8;
      re::FixedArray<re::SkeletalPose>::deinit(v21 + 11);
      *v21 = &unk_1F5CAD3A8;
      re::DynamicString::deinit((v21 + 5));
      re::StringID::destroyString((v21 + 3));
      v19 += 15;
      v21 += 15;
    }

    while (v21 != v20);
  }

  v213 = a4;
  ++*(a4 + 24);
  re::DynamicArray<unsigned long>::deinit((a5 + 5));
  re::DynamicArray<re::DynamicString>::deinit(a5);
  re::DynamicArray<re::DynamicString>::deinit((a5 + 10));
  re::DynamicArray<re::DynamicString>::deinit((a5 + 15));
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a5 + 20);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a5 + 26);
  re::DynamicArray<unsigned long>::deinit((a5 + 38));
  [v218 frameInterval];
  a5[43] = v22;
  v23 = [v218 count];
  v24 = v218;
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v26 = [v218 objectAtIndexedSubscript:i];
      skinnedMeshTraverseNode(a6, v26, a2, a3, a5);
      v27 = *a6;

      v24 = v218;
      if (v27 != 1)
      {
        goto LABEL_121;
      }
    }
  }

  [v24 frameInterval];
  if (v28 <= 0.0 || ([v218 animations], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, !v30))
  {
LABEL_119:
    *a6 = 1;
    goto LABEL_120;
  }

  v31 = 0;
  v208 = a6;
  while (1)
  {
    v32 = [v218 animations];
    v33 = [v32 objects];
    v34 = [v33 objectAtIndexedSubscript:v31];
    if (!v34)
    {
      v164 = v243;
      v165 = v244;
      *a6 = 0;
      *(a6 + 1) = 1012;
      *(a6 + 2) = &re::AnimationErrorCategory(void)::instance;
      *(a6 + 24) = v164;
      *(a6 + 40) = v165;
      goto LABEL_154;
    }

    v214 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_117;
    }

    v211 = v33;
    v212 = v32;
    v210 = v34;
    v35 = v34;
    v36 = [v35 rotations];
    v37 = [v36 keyTimes];
    v38 = [v37 count];

    v39 = [v35 translations];
    v40 = [v39 keyTimes];
    v41 = [v40 count];

    v42 = [v35 scales];
    v43 = [v42 keyTimes];
    v44 = [v43 count];

    if (v38 != v41 || v41 != v44)
    {
      goto LABEL_147;
    }

    v232[0] = v35;
    v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((a5 + 26), v232, v45 ^ (v45 >> 31), &v243);
    if (HIDWORD(v243) == 0x7FFFFFFF || *(a5[28] + 32 * HIDWORD(v243) + 16) == -1)
    {
      v166 = [v35 name];
      v168 = v166;
      if (v166)
      {
        v169 = [v166 UTF8String];
      }

      else
      {
        v169 = "(unnamed)";
      }

      v186 = v208;
      v33 = v211;
      v32 = v212;
      v34 = v210;
      re::DynamicString::format(&v243, "Skeleton not found for node %s", v167, v169);
      v187 = v243;
      v189 = *(&v244 + 1);
      v188 = v244;
      *v208 = 0;
      v190 = 1026;
      goto LABEL_153;
    }

    v209 = *(a5[28] + 32 * HIDWORD(v243) + 16);
    v46 = [v35 jointPaths];
    v47 = [v46 count];

    v48 = [v35 rotations];
    [v48 minimumTime];
    v50 = v49;

    v51 = [v35 rotations];
    [v51 maximumTime];
    v53 = v52;

    v54 = [v35 translations];
    [v54 minimumTime];
    v56 = v55;
    if (v50 > v56)
    {
      v50 = v56;
    }

    v57 = [v35 scales];
    [v57 minimumTime];
    v59 = v58;
    if (v50 > v59)
    {
      v50 = v59;
    }

    v60 = [v35 translations];
    [v60 maximumTime];
    v62 = v61;
    if (v53 < v62)
    {
      v53 = v62;
    }

    v63 = [v35 scales];
    [v63 maximumTime];
    v65 = v64;
    if (v53 < v65)
    {
      v53 = v65;
    }

    v66 = re::Timeline::Timeline(v232, 34);
    v236 = 256;
    v238 = 0u;
    v239 = 0u;
    v232[0] = &unk_1F5CAF198;
    v240 = 257;
    v241 = 1;
    v67 = *(a5 + 43);
    v237 = v67;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    if (v47)
    {
      v68 = 0;
      v69 = 0;
      while (1)
      {
        v70 = [v35 jointPaths];
        v71 = [v70 objectAtIndexedSubscript:v69];
        v72 = [v71 UTF8String];
        v225 = 0;
        v226 = &str_67;
        j = v230;
        if (v230 <= v69)
        {
          break;
        }

        v74 = re::StringID::operator=((v231 + v68), &v225);
        if (v225)
        {
          if (v225)
          {
          }
        }

        v225 = 0;
        v226 = &str_67;

        ++v69;
        v68 += 16;
        if (v47 == v69)
        {
          goto LABEL_38;
        }
      }

      v222 = 0;
      v132 = &v243;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v191 = MEMORY[0x1E69E9C10];
      v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      if (v192)
      {
        v193 = 3;
      }

      else
      {
        v193 = 2;
      }

      v258 = 468;
      v259 = 2048;
      v260 = v69;
      v261 = 2048;
      v262 = j;
      _os_log_send_and_compose_impl(v193, &v222, &v243, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
      _os_crash_msg();
      __break(1u);
LABEL_159:
      v242 = 0;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v194 = MEMORY[0x1E69E9C10];
      v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      if (v195)
      {
        v196 = 3;
      }

      else
      {
        v196 = 2;
      }

      v258 = 468;
      v259 = 2048;
      v260 = j;
      v261 = 2048;
      v262 = v132;
      _os_log_send_and_compose_impl(v196, &v242, &v243, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
      _os_crash_msg();
      __break(1u);
LABEL_163:
      v242 = 0;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v197 = MEMORY[0x1E69E9C10];
      v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      if (v198)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      v258 = 468;
      v259 = 2048;
      v260 = j;
      v261 = 2048;
      v262 = v132;
      _os_log_send_and_compose_impl(v199, &v242, &v243, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
      _os_crash_msg();
      __break(1u);
LABEL_167:
      v242 = 0;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v200 = MEMORY[0x1E69E9C10];
      v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      if (v201)
      {
        v202 = 3;
      }

      else
      {
        v202 = 2;
      }

      v258 = 468;
      v259 = 2048;
      v260 = j;
      v261 = 2048;
      v262 = v132;
      _os_log_send_and_compose_impl(v202, &v242, &v243, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
      _os_crash_msg();
      __break(1u);
LABEL_171:
      v206 = "last";
      v207 = 454;
      re::internal::assertLog(4, v130, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0");
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
LABEL_172:
      v242 = 0;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v203 = MEMORY[0x1E69E9C10];
      v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      if (v204)
      {
        v205 = 3;
      }

      else
      {
        v205 = 2;
      }

      v258 = 468;
      v259 = 2048;
      v260 = j;
      v261 = 2048;
      v262 = v132;
      _os_log_send_and_compose_impl(v205, &v242, &v243, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
      _os_crash_msg();
      __break(1u);
    }

LABEL_38:
    v254 = 0;
    *&v243 = 0;
    *(&v243 + 1) = &str_67;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    memset(v252, 0, sizeof(v252));
    v253 = 0x7FFFFFFF;
    re::make::shared::object<re::SkeletalPoseJointDefinition,re::FixedArray<re::StringID>,re::Skeleton>(&v229, &v243, &v228);
    re::Skeleton::~Skeleton(&v243);
    v75 = fmaxf(0.0 - v50, 0.0);
    *&v238 = v50 + v75;
    *(&v238 + 1) = v75 + v53;
    v76 = *(a5 + 43);
    v77 = ((v75 + v53) - (v50 + v75)) / v76;
    v78 = vcvtmd_u64_f64(v77);
    v79 = v77 - floor(v77);
    v80 = re::FixedArray<re::SkeletalPose>::deinit(&v238 + 1);
    v216 = v78;
    if (v79 <= v76 * 0.01)
    {
      v81 = v78 + 1;
    }

    else
    {
      v81 = v78 + 2;
    }

    if (v239)
    {
      v83 = *(&v239 + 1);
      v84 = 88 * v239;
      do
      {
        re::SkeletalPose::init(v83, &v228);
        v83 += 11;
        v84 -= 88;
      }

      while (v84);
    }

    v85 = [v35 rotations];
    v86 = [v85 elementCount];
    v226 = 0;
    v227 = 0;
    v225 = 0;

    v88 = [v35 scales];
    v89 = [v88 elementCount];
    v223 = 0;
    v224 = 0;
    v222 = 0;

    v91 = [v35 translations];
    v92 = [v91 elementCount];
    v220 = 0;
    v221 = 0;
    v219 = 0;

    v215 = v78 + 1;
    if (v78 != -1)
    {
      break;
    }

LABEL_64:
    if (v79 > v76 * 0.01)
    {
      v121 = [v35 scales];
      v122 = v224;
      v123 = [v35 scales];
      [v121 getFloat3Array:v122 maxCount:objc_msgSend(v123 atTime:{"elementCount"), v53}];

      v124 = [v35 rotations];
      v125 = v227;
      v126 = [v35 rotations];
      [v124 getFloatQuaternionArray:v125 maxCount:objc_msgSend(v126 atTime:{"elementCount"), v53}];

      v127 = [v35 translations];
      v128 = v221;
      v129 = [v35 translations];
      [v127 getFloat3Array:v128 maxCount:objc_msgSend(v129 atTime:{"elementCount"), v53}];

      if (v47)
      {
        v131 = 0;
        for (j = 0; j != v47; ++j)
        {
          v132 = v223;
          if (v223 <= j)
          {
            goto LABEL_159;
          }

          v132 = v226;
          if (v226 <= j)
          {
            goto LABEL_163;
          }

          v132 = v220;
          if (v220 <= j)
          {
            goto LABEL_167;
          }

          if (!v239)
          {
            goto LABEL_171;
          }

          v133 = *(&v239 + 1) + 88 * v239;
          v132 = *(v133 - 64);
          if (v132 <= j)
          {
            goto LABEL_172;
          }

          v134 = *(v224 + 16 * j + 8);
          v135 = *(v227 + 16 * j);
          v136 = *(v227 + 16 * j + 8);
          v137 = *(v221 + 16 * j);
          v138 = *(v221 + 16 * j + 8);
          v139 = (*(v133 - 56) + v131);
          *v139 = *(v224 + 16 * j);
          v139[1] = v134;
          v139[2] = v135;
          v139[3] = v136;
          v139[4] = v137;
          v139[5] = v138;
          v131 += 48;
        }
      }
    }

    v32 = v212;
    v140 = v213;
    v141 = *(v213 + 8);
    v142 = *(v213 + 16);
    if (v142 >= v141)
    {
      v143 = v142 + 1;
      if (v141 < v142 + 1)
      {
        if (*v213)
        {
          v144 = 2 * v141;
          v109 = v141 == 0;
          v145 = 8;
          if (!v109)
          {
            v145 = v144;
          }

          if (v145 <= v143)
          {
            v146 = v143;
          }

          else
          {
            v146 = v145;
          }

          re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v213, v146);
        }

        else
        {
          re::DynamicArray<re::SkeletalPoseSampledAnimation>::setCapacity(v213, v143);
          ++*(v213 + 24);
        }
      }

      v140 = v213;
      v142 = *(v213 + 16);
    }

    v153 = re::SampledAnimation<re::SkeletalPose>::SampledAnimation(*(v140 + 32) + 120 * v142, v232);
    *v154 = &unk_1F5CAF198;
    v155 = v240;
    *(v154 + 114) = v241;
    *(v154 + 112) = v155;
    ++*(v140 + 16);
    ++*(v140 + 24);
    v156 = [v35 name];
    v157 = v156;
    if (v156)
    {
      v156 = [v156 UTF8String];
      v158 = v156;
    }

    else
    {
      v158 = "(unnamed)";
    }

    v159 = re::DynamicArray<re::DynamicString>::add((a5 + 15), &v243);
    v34 = v210;
    if (v243)
    {
      if (BYTE8(v243))
      {
        (*(*v243 + 40))(v159);
      }

      v243 = 0u;
      v244 = 0u;
    }

    *&v243 = v209;
    re::DynamicArray<unsigned long>::add((a5 + 5), &v243);
    v96 = 0;
LABEL_96:
    v33 = v211;
    if (v219 && v220)
    {
      (*(*v219 + 40))();
    }

    a6 = v208;
    if (v222 && v223)
    {
      (*(*v222 + 40))();
    }

    if (v225 && v226)
    {
      (*(*v225 + 40))();
    }

    if (v228)
    {
    }

    re::FixedArray<re::StringID>::deinit(&v229);
    v232[0] = &unk_1F5CAEFA8;
    re::FixedArray<re::SkeletalPose>::deinit(&v238 + 1);
    v232[0] = &unk_1F5CAD3A8;
    v160 = v234;
    if (v234)
    {
      if (BYTE8(v234))
      {
        v160 = (*(*v234 + 40))();
      }

      v235 = 0u;
      v234 = 0u;
    }

    if (v233)
    {
      if (v233)
      {
      }
    }

    if (v96)
    {
      v161 = *v208;

      v24 = v218;
      if ((v161 & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_118;
    }

LABEL_117:
    *a6 = 1;

    v24 = v218;
LABEL_118:
    v31 = v214 + 1;
    v162 = [v24 animations];
    v163 = [v162 count];

    if (v214 + 1 >= v163)
    {
      goto LABEL_119;
    }
  }

  v94 = 0;
  v95 = v50;
  v96 = 1;
  while (1)
  {
    v97 = [v35 scales];
    v98 = v224;
    v99 = [v35 scales];
    v100 = [v97 getFloat3Array:v98 maxCount:objc_msgSend(v99 atTime:{"elementCount"), v95 + v94 * v76}];

    v101 = [v35 rotations];
    v102 = v227;
    v103 = [v35 rotations];
    v104 = [v101 getFloatQuaternionArray:v102 maxCount:objc_msgSend(v103 atTime:{"elementCount"), v95 + v94 * v76}];

    v105 = [v35 translations];
    v106 = v221;
    v107 = [v35 translations];
    v108 = [v105 getFloat3Array:v106 maxCount:objc_msgSend(v107 atTime:{"elementCount"), v95 + v94 * v76}];

    if (v100)
    {
      v109 = v100 == v104;
    }

    else
    {
      v109 = 0;
    }

    if (!v109 || v104 != v108)
    {
      v147 = [v35 name];
      v149 = v147;
      v32 = v212;
      if (v147)
      {
        v150 = [v147 UTF8String];
      }

      else
      {
        v150 = "(unnamed)";
      }

      v207 = v104;
      v206 = v100;
      re::DynamicString::format(&v243, "Sample %ld in node %s has: Total Scales = %ld, Total Rotations = %ld, Total Translations = %ld", v148, v94, v150);
      v151 = v243;
      v152 = v244;
      *v208 = 0;
      *(v208 + 1) = 1027;
      *(v208 + 2) = &re::AnimationErrorCategory(void)::instance;
      *(v208 + 24) = v151;
      *(v208 + 40) = v152;

      v34 = v210;
      goto LABEL_96;
    }

    if (v47)
    {
      break;
    }

LABEL_62:
    v96 = v94 + 1 < v215;
    v109 = v94++ == v216;
    if (v109)
    {
      goto LABEL_64;
    }
  }

  v111 = 0;
  v112 = 0;
  while (1)
  {
    v113 = v223;
    if (v223 <= v112)
    {
      break;
    }

    v113 = v226;
    if (v226 <= v112)
    {
      goto LABEL_131;
    }

    v113 = v220;
    if (v220 <= v112)
    {
      goto LABEL_135;
    }

    v113 = v239;
    if (v239 <= v94)
    {
      goto LABEL_139;
    }

    v114 = *(&v239 + 1) + 88 * v94;
    v113 = *(v114 + 24);
    if (v113 <= v112)
    {
      goto LABEL_143;
    }

    v115 = *(v224 + 16 * v112 + 8);
    v116 = *(v227 + 16 * v112);
    v117 = *(v227 + 16 * v112 + 8);
    v118 = *(v221 + 16 * v112);
    v119 = *(v221 + 16 * v112 + 8);
    v120 = (*(v114 + 32) + v111);
    *v120 = *(v224 + 16 * v112);
    v120[1] = v115;
    v120[2] = v116;
    v120[3] = v117;
    v120[4] = v118;
    v120[5] = v119;
    ++v112;
    v111 += 48;
    if (v47 == v112)
    {
      goto LABEL_62;
    }
  }

  v242 = 0;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v170 = MEMORY[0x1E69E9C10];
  v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v255 = 136315906;
  v256 = "operator[]";
  v257 = 1024;
  if (v171)
  {
    v172 = 3;
  }

  else
  {
    v172 = 2;
  }

  v258 = 468;
  v259 = 2048;
  v260 = v112;
  v261 = 2048;
  v262 = v113;
  _os_log_send_and_compose_impl(v172, &v242, &v243, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
  _os_crash_msg();
  __break(1u);
LABEL_131:
  v242 = 0;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v173 = MEMORY[0x1E69E9C10];
  v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v255 = 136315906;
  v256 = "operator[]";
  v257 = 1024;
  if (v174)
  {
    v175 = 3;
  }

  else
  {
    v175 = 2;
  }

  v258 = 468;
  v259 = 2048;
  v260 = v112;
  v261 = 2048;
  v262 = v113;
  _os_log_send_and_compose_impl(v175, &v242, &v243, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
  _os_crash_msg();
  __break(1u);
LABEL_135:
  v242 = 0;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v94 = MEMORY[0x1E69E9C10];
  v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v255 = 136315906;
  v256 = "operator[]";
  v257 = 1024;
  if (v176)
  {
    v177 = 3;
  }

  else
  {
    v177 = 2;
  }

  v258 = 468;
  v259 = 2048;
  v260 = v112;
  v261 = 2048;
  v262 = v113;
  _os_log_send_and_compose_impl(v177, &v242, &v243, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
  _os_crash_msg();
  __break(1u);
LABEL_139:
  v242 = 0;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v112 = MEMORY[0x1E69E9C10];
  v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v255 = 136315906;
  v256 = "operator[]";
  v257 = 1024;
  if (v178)
  {
    v179 = 3;
  }

  else
  {
    v179 = 2;
  }

  v258 = 468;
  v259 = 2048;
  v260 = v94;
  v261 = 2048;
  v262 = v113;
  _os_log_send_and_compose_impl(v179, &v242, &v243, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
  _os_crash_msg();
  __break(1u);
LABEL_143:
  v242 = 0;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v243 = 0u;
  v180 = MEMORY[0x1E69E9C10];
  v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v255 = 136315906;
  v256 = "operator[]";
  v257 = 1024;
  if (v181)
  {
    v182 = 3;
  }

  else
  {
    v182 = 2;
  }

  v258 = 468;
  v259 = 2048;
  v260 = v112;
  v261 = 2048;
  v262 = v113;
  _os_log_send_and_compose_impl(v182, &v242, &v243, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v255, 38, v206, v207);
  _os_crash_msg();
  __break(1u);
LABEL_147:
  v183 = [v35 name];
  v168 = v183;
  if (v183)
  {
    v185 = [v183 UTF8String];
  }

  else
  {
    v185 = "(unnamed)";
  }

  v186 = v208;
  v33 = v211;
  v32 = v212;
  v34 = v210;
  re::DynamicString::format(&v243, "Processing node %s", v184, v185);
  v187 = v243;
  v189 = *(&v244 + 1);
  v188 = v244;
  *v208 = 0;
  v190 = 1025;
LABEL_153:
  *(v186 + 1) = v190;
  *(v186 + 2) = &re::AnimationErrorCategory(void)::instance;
  *(v186 + 24) = v187;
  *(v186 + 5) = v188;
  *(v186 + 6) = v189;

LABEL_154:
LABEL_120:
  v24 = v218;
LABEL_121:
}