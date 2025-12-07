void re::DynamicArray<re::GeomIndexMap>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v8 = 80 * a2;
      v9 = a2;
      while (1)
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + v8 + 12);
        if (v11 == 2)
        {
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v10 + v8 + 16);
        }

        else if (v11 == 1)
        {
          re::DynamicArray<unsigned long>::deinit(v10 + v8 + 16);
        }

        else
        {
          if (*(v10 + v8 + 12))
          {
            re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
            return;
          }

          *(v10 + v8 + 16) = 0;
        }

        ++v9;
        v8 += 80;
        if (v9 >= *(a1 + 16))
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::GeomIndexMap>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0xFFFFFFFF00000000;
        *(v7 + 8) = -1;
        *(v7 + 12) = 0;
        *(v7 + 16) = 0;
        v6 += 80;
        --v5;
      }

      while (v5);
    }

LABEL_17:
    *(a1 + 16) = a2;
    ++*(a1 + 24);
  }
}

double re::Ok<re::GeomModel,re::GeomModel>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 24) = 0u;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0u;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0u;
  ++*(a2 + 56);
  *(a1 + 56) = 1;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  ++*(a2 + 96);
  *(a1 + 96) = 1;
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 112, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 160, (a2 + 160));
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  *(a1 + 216) = *(a2 + 216);
  result = 0.0;
  *(a2 + 216) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  ++*(a2 + 232);
  *(a1 + 232) = 1;
  return result;
}

uint64_t re::Result<re::GeomModel,re::DetailedError>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 24);
  v4 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *a2 = 0;
  v5 = *(a2 + 16);
  *(a2 + 24) = 0;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a1 + 72) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v8 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v8;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 64);
  *(a2 + 64) = v10;
  ++*(a2 + 56);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = v11;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v12 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 88);
  *(a2 + 88) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 104);
  *(a2 + 104) = v13;
  ++*(a2 + 96);
  ++*(a1 + 104);
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 120, (a2 + 112));
  re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 168, (a2 + 160));
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  v14 = *(a2 + 216);
  *(a1 + 216) = *(a2 + 208);
  *(a1 + 224) = v14;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v15 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 224);
  *(a2 + 224) = v15;
  v16 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 240);
  *(a2 + 240) = v16;
  ++*(a2 + 232);
  ++*(a1 + 240);
  return a1;
}

_BYTE *re::Result<re::GeomModel,re::DetailedError>::~Result(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit((a1 + 216));
    if (a1[168] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit((a1 + 176));
    }

    v2 = (a1 + 8);
    if (a1[120] == 1)
    {
      re::DynamicArray<re::GeomIndexMap>::deinit((a1 + 128));
    }

    re::DynamicArray<unsigned long>::deinit((a1 + 80));
    re::DynamicArray<re::GeomMesh>::deinit((a1 + 40));
  }

  else
  {
    v2 = (a1 + 24);
  }

  re::DynamicString::deinit(v2);
  return a1;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<unsigned int>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v136 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v131;
      v15 = v132;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v120 = 0uLL;
      v121 = 0;
      v6 = *(a1 + 40);
      v52 = *(v3 + 48);
      v53 = *(v3 + 24) + *(v3 + 56);
      v54 = v52 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v54)
        {
          v55 = 0;
          v56 = 0;
          v3 = v120.n128_u64[1];
          v57 = v121;
          while (v3 != v55)
          {
            *(v57 + 4 * v55) = *(v53 + v56);
            v56 += v52;
            ++v55;
            if (v56 >= v54)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_158;
        }
      }

      else if (v54)
      {
        v6 = 0;
        v70 = 0;
        while (1)
        {
          v2 = v120.n128_u64[1];
          if (v120.n128_u64[1] <= v6)
          {
            break;
          }

          *(v121 + 4 * v6) = *(v53 + v70);
          v70 += *(v3 + 48);
          ++v6;
          if (v70 >= v54)
          {
            goto LABEL_101;
          }
        }

LABEL_162:
        v122 = 0;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v123 = 136315906;
        v124 = "operator[]";
        v125 = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        v126 = 468;
        v127 = 2048;
        v128 = v6;
        v129 = 2048;
        v130 = v2;
        _os_log_send_and_compose_impl(v119, &v122, &v131, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v120 = 0uLL;
      v121 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v120.n128_u64[1];
          v27 = v121;
          while (v3 != v25)
          {
            *(v27 + 4 * v25) = *(v23 + v26);
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_150;
        }
      }

      else if (v24)
      {
        v68 = 0;
        v6 = 0;
        v69 = 0;
        do
        {
          v2 = v120.n128_u64[1];
          if (v120.n128_u64[1] <= v6)
          {
            goto LABEL_154;
          }

          *(v121 + v68) = *(v23 + v69);
          v69 += *(v3 + 48);
          ++v6;
          v68 += 4;
        }

        while (v69 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v120 = 0uLL;
          v121 = 0;
          v6 = *(a1 + 40);
          v40 = *(v3 + 48);
          v41 = *(v3 + 24) + *(v3 + 56);
          v42 = v40 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v42)
            {
              v43 = 0;
              v44 = 0;
              v3 = v120.n128_u64[1];
              v45 = v121;
              while (v3 != v43)
              {
                *(v45 + 4 * v43) = *(v41 + v44);
                v44 += v40;
                ++v43;
                if (v44 >= v42)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_134;
            }
          }

          else if (v42)
          {
            v65 = 0;
            v6 = 0;
            v66 = 0;
            while (1)
            {
              v2 = v120.n128_u64[1];
              if (v120.n128_u64[1] <= v6)
              {
                goto LABEL_142;
              }

              *(v121 + v65) = *(v41 + v66);
              v66 += *(v3 + 48);
              ++v6;
              v65 += 4;
              if (v66 >= v42)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v120 = 0uLL;
          v121 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v120.n128_u64[1];
              v12 = v121;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v72 = MEMORY[0x1E69E9C10];
              v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v73)
              {
                v74 = 3;
              }

              else
              {
                v74 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v74, &v122, &v131, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v75 = MEMORY[0x1E69E9C10];
              v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v76)
              {
                v77 = 3;
              }

              else
              {
                v77 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v77, &v122, &v131, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v78 = MEMORY[0x1E69E9C10];
              v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v79)
              {
                v80 = 3;
              }

              else
              {
                v80 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v80, &v122, &v131, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v81 = MEMORY[0x1E69E9C10];
              v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v82)
              {
                v83 = 3;
              }

              else
              {
                v83 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v83, &v122, &v131, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v84 = MEMORY[0x1E69E9C10];
              v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v85)
              {
                v86 = 3;
              }

              else
              {
                v86 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v86, &v122, &v131, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_122:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v87 = MEMORY[0x1E69E9C10];
              v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v88)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v89, &v122, &v131, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_126:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v90 = MEMORY[0x1E69E9C10];
              v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v91)
              {
                v92 = 3;
              }

              else
              {
                v92 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v92, &v122, &v131, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v93 = MEMORY[0x1E69E9C10];
              v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v94)
              {
                v95 = 3;
              }

              else
              {
                v95 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v95, &v122, &v131, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_134:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v96 = MEMORY[0x1E69E9C10];
              v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v97)
              {
                v98 = 3;
              }

              else
              {
                v98 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v98, &v122, &v131, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_138:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v99 = MEMORY[0x1E69E9C10];
              v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v100)
              {
                v101 = 3;
              }

              else
              {
                v101 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v101, &v122, &v131, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v102 = MEMORY[0x1E69E9C10];
              v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v103)
              {
                v104 = 3;
              }

              else
              {
                v104 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v104, &v122, &v131, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_146:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v105 = MEMORY[0x1E69E9C10];
              v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v106)
              {
                v107 = 3;
              }

              else
              {
                v107 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v107, &v122, &v131, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_150:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v108 = MEMORY[0x1E69E9C10];
              v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v109)
              {
                v110 = 3;
              }

              else
              {
                v110 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v110, &v122, &v131, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_154:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v111 = MEMORY[0x1E69E9C10];
              v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v112)
              {
                v113 = 3;
              }

              else
              {
                v113 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v113, &v122, &v131, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_158:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v114 = MEMORY[0x1E69E9C10];
              v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v115)
              {
                v116 = 3;
              }

              else
              {
                v116 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v116, &v122, &v131, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
              goto LABEL_162;
            }
          }

          else if (v9)
          {
            v58 = 0;
            v6 = 0;
            v59 = 0;
            while (1)
            {
              v2 = v120.n128_u64[1];
              if (v120.n128_u64[1] <= v6)
              {
                goto LABEL_110;
              }

              *(v121 + v58) = *(v8 + v59);
              v59 += *(v3 + 48);
              ++v6;
              v58 += 4;
              if (v59 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = v120.n128_u64[1];
            v33 = v121;
            while (v3 != v31)
            {
              *(v33 + 4 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_118;
          }
        }

        else if (v30)
        {
          v61 = 0;
          v6 = 0;
          v62 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_126;
            }

            *(v121 + v61) = *(v29 + v62);
            v62 += *(v3 + 48);
            ++v6;
            v61 += 4;
            if (v62 >= v30)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v34 = *(v3 + 48);
        v35 = *(v3 + 24) + *(v3 + 56);
        v36 = v34 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            v3 = v120.n128_u64[1];
            v39 = v121;
            while (v3 != v37)
            {
              *(v39 + 4 * v37) = *(v35 + v38);
              v38 += v34;
              ++v37;
              if (v38 >= v36)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_122;
          }
        }

        else if (v36)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_130;
            }

            *(v121 + v63) = *(v35 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 4;
            if (v64 >= v36)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v46 = *(v3 + 48);
        v47 = *(v3 + 24) + *(v3 + 56);
        v48 = v46 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            v3 = v120.n128_u64[1];
            v51 = v121;
            while (v3 != v49)
            {
              *(v51 + 4 * v49) = *(v47 + v50);
              v50 += v46;
              ++v49;
              if (v50 >= v48)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_138;
          }
        }

        else if (v48)
        {
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_146;
            }

            *(v121 + 4 * v6) = *(v47 + v67);
            v67 += *(v3 + 48);
            ++v6;
            if (v67 >= v48)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v120.n128_u64[1];
            v21 = v121;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v60 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_114;
            }

            *(v121 + 4 * v6) = *(v17 + v60);
            v60 += *(v3 + 48);
            ++v6;
            if (v60 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v120;
  v71 = v121;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v71;
  return result;
}

_DWORD *re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  result = re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, *a2);
  if (result == -1)
  {

    return re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

__n128 re::internal::DataPayload::computeConvertedValues<re::PackedFloat3>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 33) | 2) == 0xB)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v25 = 0uLL;
    v26 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = v25.n128_u64[1];
        v9 = (v26 + 8);
        v10 = v25.n128_u64[1] + 1;
        while (--v10)
        {
          v11 = *(v4 + v7 + 8);
          *(v9 - 1) = *(v4 + v7);
          *v9 = v11;
          v9 += 3;
          v7 += *(a1 + 48);
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v31 = 468;
        v32 = 2048;
        v33 = v8;
        v34 = 2048;
        v35 = v8;
        _os_log_send_and_compose_impl(v21, &v27, &v36, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25.n128_u64[0], v25.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_19;
      }
    }

    else if (v6)
    {
      v14 = 0;
      v8 = v25.n128_u64[1];
      v15 = (v26 + 8);
      v16 = v25.n128_u64[1] + 1;
      while (--v16)
      {
        v17 = *(v4 + v14 + 8);
        *(v15 - 1) = *(v4 + v14);
        *v15 = v17;
        v15 += 3;
        v14 += *(a1 + 48);
        if (v14 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v27 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v31 = 468;
      v32 = 2048;
      v33 = v8;
      v34 = 2048;
      v35 = v8;
      _os_log_send_and_compose_impl(v24, &v27, &v36, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25.n128_u64[0], v25.n128_u64[1]);
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v25;
    v18 = v26;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v18;
  }

  else
  {
    result = v36;
    v13 = v37;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v13;
  }

  return result;
}

uint64_t re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(void *a1, unsigned int a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 96 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

_DWORD *re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(a1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 3 * (v13 + 16 * v11);
  v17 = a1[1] + 96 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 8) = 0;
  v18 = *(a3 + 8);
  *(v17 + 8) = *a3;
  *(v17 + 16) = v18;
  *a3 = 0;
  *(a3 + 8) = 0;
  v19 = *(v17 + 24);
  *(v17 + 24) = *(a3 + 16);
  *(a3 + 16) = v19;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 32) = 0;
  v20 = *(a3 + 32);
  *(v17 + 32) = *(a3 + 24);
  *(v17 + 40) = v20;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v21 = *(v17 + 48);
  *(v17 + 48) = *(a3 + 40);
  *(a3 + 40) = v21;
  *(v17 + 88) = 0;
  *(v17 + 80) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 56) = 0;
  v22 = *(a3 + 56);
  *(v17 + 56) = *(a3 + 48);
  *(v17 + 64) = v22;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v23 = *(v17 + 72);
  *(v17 + 72) = *(a3 + 64);
  *(a3 + 64) = v23;
  v24 = *(v17 + 88);
  *(v17 + 88) = *(a3 + 80);
  *(a3 + 80) = v24;
  ++*(a3 + 72);
  ++*(v17 + 80);
  if (v15 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v26);
  v27 = (a1[1] + 32 * v16);
  v29 = *v27;
  result = v27 + 2;
  v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
  a1[5] ^= (v30 >> 31) ^ v30;
  return result;
}

double re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 96 * v15), *(v23[0] + 8) + 96 * v15 + 8);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<unsigned int,re::GeomMeshWithNGons::NGonToTriangleInfo,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::deinit(v25);
}

void re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = *(v3 + 33);
    if (v5 >= 6)
    {
      v6 = v5 == 5;
    }

    else
    {
      v6 = 0x30u >> v5;
    }

    if (v6 & 1) != 0 && (*(v3 + 32))
    {
      v7 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v8 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<unsigned int>(v3, v11);
      if (v11[0] == 1)
      {
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 40) = v9;
        v10 = v14;
        *(a2 + 48) = v14;
        *a2 = v10;
        *(a2 + 8) = 4;
        *(a2 + 16) = v9;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v14)
        {
          if (v15)
          {
            (*(*v14 + 40))();
          }
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::GeomModelDescriptor::makeConvertedValues<signed char>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 33);
    if (v4 >= 6)
    {
      v5 = *(v3 + 33) == 0;
    }

    else
    {
      v5 = 3u >> v4;
    }

    if (v5 & 1) != 0 && (*(v3 + 32))
    {
      v6 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v7 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<signed char>(*a1, v10);
      if (v10[0] == 1)
      {
        v8 = v12;
        *(a2 + 32) = v11;
        *(a2 + 40) = v8;
        v9 = v13;
        *(a2 + 48) = v13;
        *a2 = v9;
        *(a2 + 8) = 1;
        *(a2 + 16) = v8;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::internal::DataPayload::computePoDConversionHelper<signed char>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 33);
  if (v4 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v4 == 1)
        {
          v78 = 0uLL;
          v79 = 0;
          v26 = *(a1 + 40);
          v27 = *(a1 + 24) + *(a1 + 56);
          v28 = *(a1 + 48) * *(a1 + 40);
          if (*(a1 + 32))
          {
            if (v28)
            {
              v8 = 0;
              v29 = 0;
              while (1)
              {
                v10 = *(&v78 + 1);
                if (*(&v78 + 1) <= v8)
                {
                  goto LABEL_116;
                }

                *(v79 + v8) = *(v27 + v29);
                v29 += *(a1 + 48);
                ++v8;
                if (v29 >= v28)
                {
                  goto LABEL_82;
                }
              }
            }
          }

          else if (v28)
          {
            v8 = 0;
            v40 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_124;
              }

              *(v79 + v8) = *(v27 + v40);
              v40 += *(a1 + 48);
              ++v8;
              if (v40 >= v28)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v78 = 0uLL;
          v79 = 0;
          v5 = *(a1 + 40);
          v6 = *(a1 + 24) + *(a1 + 56);
          v7 = *(a1 + 48) * *(a1 + 40);
          if (*(a1 + 32))
          {
            if (v7)
            {
              v8 = 0;
              v9 = 0;
              while (1)
              {
                v10 = *(&v78 + 1);
                if (*(&v78 + 1) <= v8)
                {
                  break;
                }

                *(v79 + v8) = *(v6 + v9);
                v9 += *(a1 + 48);
                ++v8;
                if (v9 >= v7)
                {
                  goto LABEL_82;
                }
              }

              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v42 = MEMORY[0x1E69E9C10];
              v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v43)
              {
                v44 = 3;
              }

              else
              {
                v44 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v44, &v80, &v89, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v45 = MEMORY[0x1E69E9C10];
              v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v46)
              {
                v47 = 3;
              }

              else
              {
                v47 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v47, &v80, &v89, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v48 = MEMORY[0x1E69E9C10];
              v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v49)
              {
                v50 = 3;
              }

              else
              {
                v50 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v50, &v80, &v89, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_96:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v51 = MEMORY[0x1E69E9C10];
              v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v52)
              {
                v53 = 3;
              }

              else
              {
                v53 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v53, &v80, &v89, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_100:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v54 = MEMORY[0x1E69E9C10];
              v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v55)
              {
                v56 = 3;
              }

              else
              {
                v56 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v56, &v80, &v89, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v57 = MEMORY[0x1E69E9C10];
              v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v58)
              {
                v59 = 3;
              }

              else
              {
                v59 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v59, &v80, &v89, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v60 = MEMORY[0x1E69E9C10];
              v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v61)
              {
                v62 = 3;
              }

              else
              {
                v62 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v62, &v80, &v89, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v63 = MEMORY[0x1E69E9C10];
              v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v64)
              {
                v65 = 3;
              }

              else
              {
                v65 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v65, &v80, &v89, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v66 = MEMORY[0x1E69E9C10];
              v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v67)
              {
                v68 = 3;
              }

              else
              {
                v68 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v68, &v80, &v89, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_120:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v69 = MEMORY[0x1E69E9C10];
              v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v70)
              {
                v71 = 3;
              }

              else
              {
                v71 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v71, &v80, &v89, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_124:
              v80 = 0;
              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v89 = 0u;
              v72 = MEMORY[0x1E69E9C10];
              v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v81 = 136315906;
              v82 = "operator[]";
              v83 = 1024;
              if (v73)
              {
                v74 = 3;
              }

              else
              {
                v74 = 2;
              }

              v84 = 468;
              v85 = 2048;
              v86 = v8;
              v87 = 2048;
              v88 = v10;
              _os_log_send_and_compose_impl(v74, &v80, &v89, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
              _os_crash_msg();
              __break(1u);
              goto LABEL_128;
            }
          }

          else if (v7)
          {
            v8 = 0;
            v36 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_92;
              }

              *(v79 + v8) = *(v6 + v36);
              v36 += *(a1 + 48);
              ++v8;
              if (v36 >= v7)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v78 = 0uLL;
        v79 = 0;
        v18 = *(a1 + 40);
        v19 = *(a1 + 24) + *(a1 + 56);
        v20 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v20)
          {
            v8 = 0;
            v21 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_100;
              }

              *(v79 + v8) = *(v19 + v21);
              v21 += *(a1 + 48);
              ++v8;
              if (v21 >= v20)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v20)
        {
          v8 = 0;
          v38 = 0;
          while (1)
          {
            v10 = *(&v78 + 1);
            if (*(&v78 + 1) <= v8)
            {
              goto LABEL_108;
            }

            *(v79 + v8) = *(v19 + v38);
            v38 += *(a1 + 48);
            ++v8;
            if (v38 >= v20)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v4)
    {
      case 3u:
        v78 = 0uLL;
        v79 = 0;
        v22 = *(a1 + 40);
        v23 = *(a1 + 24) + *(a1 + 56);
        v24 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v24)
          {
            v8 = 0;
            v25 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_104;
              }

              *(v79 + v8) = *(v23 + v25);
              v25 += *(a1 + 48);
              ++v8;
              if (v25 >= v24)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v24)
        {
          v8 = 0;
          v39 = 0;
          while (1)
          {
            v10 = *(&v78 + 1);
            if (*(&v78 + 1) <= v8)
            {
              goto LABEL_112;
            }

            *(v79 + v8) = *(v23 + v39);
            v39 += *(a1 + 48);
            ++v8;
            if (v39 >= v24)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v78 = 0uLL;
        v79 = 0;
        v30 = *(a1 + 40);
        v31 = *(a1 + 24) + *(a1 + 56);
        v32 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v32)
          {
            v8 = 0;
            v33 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_120;
              }

              *(v79 + v8) = *(v31 + v33);
              v33 += *(a1 + 48);
              ++v8;
              if (v33 >= v32)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v32)
        {
          v8 = 0;
          v41 = 0;
          while (1)
          {
            v10 = *(&v78 + 1);
            if (*(&v78 + 1) <= v8)
            {
              break;
            }

            *(v79 + v8) = *(v31 + v41);
            v41 += *(a1 + 48);
            ++v8;
            if (v41 >= v32)
            {
              goto LABEL_82;
            }
          }

LABEL_128:
          v80 = 0;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
          v75 = MEMORY[0x1E69E9C10];
          v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v81 = 136315906;
          v82 = "operator[]";
          v83 = 1024;
          if (v76)
          {
            v77 = 3;
          }

          else
          {
            v77 = 2;
          }

          v84 = 468;
          v85 = 2048;
          v86 = v8;
          v87 = 2048;
          v88 = v10;
          _os_log_send_and_compose_impl(v77, &v80, &v89, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v78, *(&v78 + 1));
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v78 = 0uLL;
        v79 = 0;
        v14 = *(a1 + 40);
        v15 = *(a1 + 24) + *(a1 + 56);
        v16 = *(a1 + 48) * *(a1 + 40);
        if (*(a1 + 32))
        {
          if (v16)
          {
            v8 = 0;
            v17 = 0;
            while (1)
            {
              v10 = *(&v78 + 1);
              if (*(&v78 + 1) <= v8)
              {
                goto LABEL_88;
              }

              *(v79 + v8) = *(v15 + v17);
              v17 += *(a1 + 48);
              ++v8;
              if (v17 >= v16)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v16)
        {
          v8 = 0;
          v37 = 0;
          while (1)
          {
            v10 = *(&v78 + 1);
            if (*(&v78 + 1) <= v8)
            {
              goto LABEL_96;
            }

            *(v79 + v8) = *(v15 + v37);
            v37 += *(a1 + 48);
            ++v8;
            if (v37 >= v16)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v34 = v78;
    v35 = v79;
    goto LABEL_83;
  }

  if (v4 - 8 < 4)
  {
    v11 = "Could not convert values to specified output type.";
LABEL_13:
    v12 = v89;
    v13 = v90;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v12;
    *(a2 + 40) = v13;
    return;
  }

  if (v4 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<signed char,float>(a1, &v89);
  }

  else
  {
    if (v4 != 7)
    {
LABEL_52:
      v11 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<signed char,double>(a1, &v89);
  }

  v34 = v89;
  v35 = v90;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v34;
  *(a2 + 24) = v35;
}

void re::internal::DataPayload::computeConvertedValuesInternal<signed char,float>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24) + *(a1 + 56);
  v6 = *(a1 + 48) * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = a2[1];
        if (v9 <= v7)
        {
          break;
        }

        *(a2[2] + v7) = *(v5 + v8);
        v8 += *(a1 + 48);
        ++v7;
        if (v8 >= v6)
        {
          return;
        }
      }

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

      v21 = 468;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v9;
      _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v9 = a2[1];
      if (v9 <= v7)
      {
        break;
      }

      *(a2[2] + v7) = *(v5 + v10);
      v10 += *(a1 + 48);
      ++v7;
      if (v10 >= v6)
      {
        return;
      }
    }

LABEL_16:
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

    v21 = 468;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v9;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<signed char,double>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24) + *(a1 + 56);
  v6 = *(a1 + 48) * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = a2[1];
        if (v9 <= v7)
        {
          break;
        }

        *(a2[2] + v7) = *(v5 + v8);
        v8 += *(a1 + 48);
        ++v7;
        if (v8 >= v6)
        {
          return;
        }
      }

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

      v21 = 468;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v9;
      _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v9 = a2[1];
      if (v9 <= v7)
      {
        break;
      }

      *(a2[2] + v7) = *(v5 + v10);
      v10 += *(a1 + 48);
      ++v7;
      if (v10 >= v6)
      {
        return;
      }
    }

LABEL_16:
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

    v21 = 468;
    v22 = 2048;
    v23 = v7;
    v24 = 2048;
    v25 = v9;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }
}

void re::GeomModelDescriptor::makeConvertedValues<unsigned char>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 33);
    if (v4 >= 6)
    {
      v5 = v4 == 1;
    }

    else
    {
      v5 = 3u >> v4;
    }

    if (v5 & 1) != 0 && (*(v3 + 32))
    {
      v6 = (v3 + 8);
      *a2 = *(v3 + 24) + *(v3 + 56);
      *(a2 + 8) = vextq_s8(*(v3 + 40), *(v3 + 40), 8uLL);
      *(a2 + 24) = v3;
      v7 = (v3 + 8);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      re::internal::DataPayload::computePoDConversionHelper<signed char>(*a1, v10);
      if (v10[0] == 1)
      {
        v8 = v12;
        *(a2 + 32) = v11;
        *(a2 + 40) = v8;
        v9 = v13;
        *(a2 + 48) = v13;
        *a2 = v9;
        *(a2 + 8) = 1;
        *(a2 + 16) = v8;
        *(a2 + 24) = 0;
      }

      else
      {
        *(a2 + 48) = 0;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }
      }
    }
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

void re::internal::DataPayload::computePoDConversionHelper<short>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v110 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v94 = 0uLL;
          v95 = 0;
          v6 = *(a1 + 40);
          v34 = *(v3 + 48);
          v35 = *(v3 + 24) + *(v3 + 56);
          v36 = v34 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v36)
            {
              v37 = 0;
              v38 = 0;
              v3 = *(&v94 + 1);
              v39 = v95;
              while (v3 != v37)
              {
                *(v39 + 2 * v37) = *(v35 + v38);
                v38 += v34;
                ++v37;
                if (v38 >= v36)
                {
                  goto LABEL_82;
                }
              }

              goto LABEL_116;
            }
          }

          else if (v36)
          {
            v54 = 0;
            v6 = 0;
            v55 = 0;
            while (1)
            {
              v2 = *(&v94 + 1);
              if (*(&v94 + 1) <= v6)
              {
                goto LABEL_124;
              }

              *(v95 + v54) = *(v35 + v55);
              v55 += *(v3 + 48);
              ++v6;
              v54 += 2;
              if (v55 >= v36)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v94 = 0uLL;
          v95 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = *(&v94 + 1);
              v12 = v95;
              while (v3 != v10)
              {
                *(v12 + 2 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_82;
                }
              }

              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v58 = MEMORY[0x1E69E9C10];
              v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v59)
              {
                v60 = 3;
              }

              else
              {
                v60 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v60, &v96, &v105, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v61 = MEMORY[0x1E69E9C10];
              v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v62)
              {
                v63 = 3;
              }

              else
              {
                v63 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v63, &v96, &v105, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v64 = MEMORY[0x1E69E9C10];
              v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v65)
              {
                v66 = 3;
              }

              else
              {
                v66 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v66, &v96, &v105, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_96:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v67 = MEMORY[0x1E69E9C10];
              v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v68)
              {
                v69 = 3;
              }

              else
              {
                v69 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v69, &v96, &v105, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_100:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v70 = MEMORY[0x1E69E9C10];
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

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v72, &v96, &v105, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v96 = 0;
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
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v75, &v96, &v105, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v76 = MEMORY[0x1E69E9C10];
              v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v77)
              {
                v78 = 3;
              }

              else
              {
                v78 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v78, &v96, &v105, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v79 = MEMORY[0x1E69E9C10];
              v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v80)
              {
                v81 = 3;
              }

              else
              {
                v81 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v81, &v96, &v105, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v82 = MEMORY[0x1E69E9C10];
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

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v84, &v96, &v105, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_120:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v85 = MEMORY[0x1E69E9C10];
              v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v86)
              {
                v87 = 3;
              }

              else
              {
                v87 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v87, &v96, &v105, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_124:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v88 = MEMORY[0x1E69E9C10];
              v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v89)
              {
                v90 = 3;
              }

              else
              {
                v90 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v90, &v96, &v105, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
              goto LABEL_128;
            }
          }

          else if (v9)
          {
            v6 = 0;
            v48 = 0;
            while (1)
            {
              v2 = *(&v94 + 1);
              if (*(&v94 + 1) <= v6)
              {
                goto LABEL_92;
              }

              *(v95 + 2 * v6) = *(v8 + v48);
              v48 += *(v3 + 48);
              ++v6;
              if (v48 >= v9)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v22 = *(v3 + 48);
        v23 = *(v3 + 24) + *(v3 + 56);
        v24 = v22 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v3 = *(&v94 + 1);
            v27 = v95;
            while (v3 != v25)
            {
              *(v27 + 2 * v25) = *(v23 + v26);
              v26 += v22;
              ++v25;
              if (v26 >= v24)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_100;
          }
        }

        else if (v24)
        {
          v51 = 0;
          v6 = 0;
          v52 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_108;
            }

            *(v95 + v51) = *(v23 + v52);
            v52 += *(v3 + 48);
            ++v6;
            v51 += 2;
            if (v52 >= v24)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v5)
    {
      case 3u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = *(&v94 + 1);
            v33 = v95;
            while (v3 != v31)
            {
              *(v33 + 2 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_104;
          }
        }

        else if (v30)
        {
          v6 = 0;
          v53 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_112;
            }

            *(v95 + 2 * v6) = *(v29 + v53);
            v53 += *(v3 + 48);
            ++v6;
            if (v53 >= v30)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v40 = *(v3 + 48);
        v41 = *(v3 + 24) + *(v3 + 56);
        v42 = v40 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v42)
          {
            v43 = 0;
            v44 = 0;
            v3 = *(&v94 + 1);
            v45 = v95;
            while (v3 != v43)
            {
              *(v45 + 2 * v43) = *(v41 + v44);
              v44 += v40;
              ++v43;
              if (v44 >= v42)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_120;
          }
        }

        else if (v42)
        {
          v56 = 0;
          v6 = 0;
          v57 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              break;
            }

            *(v95 + v56) = *(v41 + v57);
            v57 += *(v3 + 48);
            ++v6;
            v56 += 2;
            if (v57 >= v42)
            {
              goto LABEL_82;
            }
          }

LABEL_128:
          v96 = 0;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v97 = 136315906;
          v98 = "operator[]";
          v99 = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          v100 = 468;
          v101 = 2048;
          v102 = v6;
          v103 = 2048;
          v104 = v2;
          _os_log_send_and_compose_impl(v93, &v96, &v105, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = *(&v94 + 1);
            v21 = v95;
            while (v3 != v19)
            {
              *(v21 + 2 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_88;
          }
        }

        else if (v18)
        {
          v49 = 0;
          v6 = 0;
          v50 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_96;
            }

            *(v95 + v49) = *(v17 + v50);
            v50 += *(v3 + 48);
            ++v6;
            v49 += 2;
            if (v50 >= v18)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v46 = v94;
    v47 = v95;
    goto LABEL_83;
  }

  if (v5 - 8 < 4)
  {
    v13 = "Could not convert values to specified output type.";
LABEL_13:
    v14 = v105;
    v15 = v106;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v14;
    *(a2 + 40) = v15;
    return;
  }

  if (v5 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<short,float>(a1, &v105);
  }

  else
  {
    if (v5 != 7)
    {
LABEL_52:
      v13 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<short,double>(a1, &v105);
  }

  v46 = v105;
  v47 = v106;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v46;
  *(a2 + 24) = v47;
}

void re::internal::DataPayload::computeConvertedValuesInternal<short,float>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 24) + *(a1 + 56);
  v8 = v6 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v12 = a2[1];
      v11 = a2[2];
      while (v12 != v9)
      {
        *(v11 + 2 * v9) = *(v7 + v10);
        v10 += v6;
        ++v9;
        if (v10 >= v8)
        {
          return;
        }
      }

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

      v25 = 468;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v12;
      _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    v13 = 0;
    v5 = 0;
    v14 = 0;
    while (1)
    {
      v2 = a2[1];
      if (v2 <= v5)
      {
        break;
      }

      *(a2[2] + v13) = *(v7 + v14);
      v14 += *(a1 + 48);
      ++v5;
      v13 += 2;
      if (v14 >= v8)
      {
        return;
      }
    }

LABEL_16:
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

    v25 = 468;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<short,double>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 24) + *(a1 + 56);
  v8 = v6 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v12 = a2[1];
      v11 = a2[2];
      while (v12 != v9)
      {
        *(v11 + 2 * v9) = *(v7 + v10);
        v10 += v6;
        ++v9;
        if (v10 >= v8)
        {
          return;
        }
      }

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

      v25 = 468;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v12;
      _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    v13 = 0;
    v5 = 0;
    v14 = 0;
    while (1)
    {
      v2 = a2[1];
      if (v2 <= v5)
      {
        break;
      }

      *(a2[2] + v13) = *(v7 + v14);
      v14 += *(a1 + 48);
      ++v5;
      v13 += 2;
      if (v14 >= v8)
      {
        return;
      }
    }

LABEL_16:
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

    v25 = 468;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computePoDConversionHelper<unsigned short>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v110 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 <= 5)
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v94 = 0uLL;
          v95 = 0;
          v6 = *(a1 + 40);
          v34 = *(v3 + 48);
          v35 = *(v3 + 24) + *(v3 + 56);
          v36 = v34 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v36)
            {
              v37 = 0;
              v38 = 0;
              v3 = *(&v94 + 1);
              v39 = v95;
              while (v3 != v37)
              {
                *(v39 + 2 * v37) = *(v35 + v38);
                v38 += v34;
                ++v37;
                if (v38 >= v36)
                {
                  goto LABEL_82;
                }
              }

              goto LABEL_116;
            }
          }

          else if (v36)
          {
            v54 = 0;
            v6 = 0;
            v55 = 0;
            while (1)
            {
              v2 = *(&v94 + 1);
              if (*(&v94 + 1) <= v6)
              {
                goto LABEL_124;
              }

              *(v95 + v54) = *(v35 + v55);
              v55 += *(v3 + 48);
              ++v6;
              v54 += 2;
              if (v55 >= v36)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else
        {
          v94 = 0uLL;
          v95 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = *(&v94 + 1);
              v12 = v95;
              while (v3 != v10)
              {
                *(v12 + 2 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_82;
                }
              }

              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v58 = MEMORY[0x1E69E9C10];
              v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v59)
              {
                v60 = 3;
              }

              else
              {
                v60 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v60, &v96, &v105, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v61 = MEMORY[0x1E69E9C10];
              v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v62)
              {
                v63 = 3;
              }

              else
              {
                v63 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v63, &v96, &v105, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v64 = MEMORY[0x1E69E9C10];
              v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v65)
              {
                v66 = 3;
              }

              else
              {
                v66 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v66, &v96, &v105, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_96:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v67 = MEMORY[0x1E69E9C10];
              v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v68)
              {
                v69 = 3;
              }

              else
              {
                v69 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v69, &v96, &v105, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_100:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v70 = MEMORY[0x1E69E9C10];
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

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v72, &v96, &v105, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_104:
              v96 = 0;
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
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v75, &v96, &v105, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_108:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v76 = MEMORY[0x1E69E9C10];
              v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v77)
              {
                v78 = 3;
              }

              else
              {
                v78 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v78, &v96, &v105, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_112:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v79 = MEMORY[0x1E69E9C10];
              v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v80)
              {
                v81 = 3;
              }

              else
              {
                v81 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v81, &v96, &v105, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v82 = MEMORY[0x1E69E9C10];
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

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v84, &v96, &v105, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_120:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v85 = MEMORY[0x1E69E9C10];
              v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v86)
              {
                v87 = 3;
              }

              else
              {
                v87 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v3;
              v103 = 2048;
              v104 = v3;
              _os_log_send_and_compose_impl(v87, &v96, &v105, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_124:
              v96 = 0;
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v105 = 0u;
              v88 = MEMORY[0x1E69E9C10];
              v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v97 = 136315906;
              v98 = "operator[]";
              v99 = 1024;
              if (v89)
              {
                v90 = 3;
              }

              else
              {
                v90 = 2;
              }

              v100 = 468;
              v101 = 2048;
              v102 = v6;
              v103 = 2048;
              v104 = v2;
              _os_log_send_and_compose_impl(v90, &v96, &v105, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
              _os_crash_msg();
              __break(1u);
              goto LABEL_128;
            }
          }

          else if (v9)
          {
            v6 = 0;
            v48 = 0;
            while (1)
            {
              v2 = *(&v94 + 1);
              if (*(&v94 + 1) <= v6)
              {
                goto LABEL_92;
              }

              *(v95 + 2 * v6) = *(v8 + v48);
              v48 += *(v3 + 48);
              ++v6;
              if (v48 >= v9)
              {
                goto LABEL_82;
              }
            }
          }
        }
      }

      else
      {
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v22 = *(v3 + 48);
        v23 = *(v3 + 24) + *(v3 + 56);
        v24 = v22 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v3 = *(&v94 + 1);
            v27 = v95;
            while (v3 != v25)
            {
              *(v27 + 2 * v25) = *(v23 + v26);
              v26 += v22;
              ++v25;
              if (v26 >= v24)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_100;
          }
        }

        else if (v24)
        {
          v51 = 0;
          v6 = 0;
          v52 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_108;
            }

            *(v95 + v51) = *(v23 + v52);
            v52 += *(v3 + 48);
            ++v6;
            v51 += 2;
            if (v52 >= v24)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_82;
    }

    switch(v5)
    {
      case 3u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = *(&v94 + 1);
            v33 = v95;
            while (v3 != v31)
            {
              *(v33 + 2 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_104;
          }
        }

        else if (v30)
        {
          v6 = 0;
          v53 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_112;
            }

            *(v95 + 2 * v6) = *(v29 + v53);
            v53 += *(v3 + 48);
            ++v6;
            if (v53 >= v30)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      case 4u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v40 = *(v3 + 48);
        v41 = *(v3 + 24) + *(v3 + 56);
        v42 = v40 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v42)
          {
            v43 = 0;
            v44 = 0;
            v3 = *(&v94 + 1);
            v45 = v95;
            while (v3 != v43)
            {
              *(v45 + 2 * v43) = *(v41 + v44);
              v44 += v40;
              ++v43;
              if (v44 >= v42)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_120;
          }
        }

        else if (v42)
        {
          v56 = 0;
          v6 = 0;
          v57 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              break;
            }

            *(v95 + v56) = *(v41 + v57);
            v57 += *(v3 + 48);
            ++v6;
            v56 += 2;
            if (v57 >= v42)
            {
              goto LABEL_82;
            }
          }

LABEL_128:
          v96 = 0;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v97 = 136315906;
          v98 = "operator[]";
          v99 = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          v100 = 468;
          v101 = 2048;
          v102 = v6;
          v103 = 2048;
          v104 = v2;
          _os_log_send_and_compose_impl(v93, &v96, &v105, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v97, 38, v94, *(&v94 + 1));
          _os_crash_msg();
          __break(1u);
        }

        break;
      case 5u:
        v94 = 0uLL;
        v95 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = *(&v94 + 1);
            v21 = v95;
            while (v3 != v19)
            {
              *(v21 + 2 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_88;
          }
        }

        else if (v18)
        {
          v49 = 0;
          v6 = 0;
          v50 = 0;
          while (1)
          {
            v2 = *(&v94 + 1);
            if (*(&v94 + 1) <= v6)
            {
              goto LABEL_96;
            }

            *(v95 + v49) = *(v17 + v50);
            v50 += *(v3 + 48);
            ++v6;
            v49 += 2;
            if (v50 >= v18)
            {
              goto LABEL_82;
            }
          }
        }

        break;
      default:
        goto LABEL_52;
    }

LABEL_82:
    v46 = v94;
    v47 = v95;
    goto LABEL_83;
  }

  if (v5 - 8 < 4)
  {
    v13 = "Could not convert values to specified output type.";
LABEL_13:
    v14 = v105;
    v15 = v106;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = v14;
    *(a2 + 40) = v15;
    return;
  }

  if (v5 == 6)
  {
    re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,float>(a1, &v105);
  }

  else
  {
    if (v5 != 7)
    {
LABEL_52:
      v13 = "Unrecognized/Unsupported type.";
      goto LABEL_13;
    }

    re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,double>(a1, &v105);
  }

  v46 = v105;
  v47 = v106;
LABEL_83:
  *a2 = 1;
  *(a2 + 8) = v46;
  *(a2 + 24) = v47;
}

void re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,float>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 24) + *(a1 + 56);
  v8 = v6 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v12 = a2[1];
      v11 = a2[2];
      while (v12 != v9)
      {
        *(v11 + 2 * v9) = *(v7 + v10);
        v10 += v6;
        ++v9;
        if (v10 >= v8)
        {
          return;
        }
      }

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

      v25 = 468;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v12;
      _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    v13 = 0;
    v5 = 0;
    v14 = 0;
    while (1)
    {
      v2 = a2[1];
      if (v2 <= v5)
      {
        break;
      }

      *(a2[2] + v13) = *(v7 + v14);
      v14 += *(a1 + 48);
      ++v5;
      v13 += 2;
      if (v14 >= v8)
      {
        return;
      }
    }

LABEL_16:
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

    v25 = 468;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }
}

void re::internal::DataPayload::computeConvertedValuesInternal<unsigned short,double>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 24) + *(a1 + 56);
  v8 = v6 * *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v12 = a2[1];
      v11 = a2[2];
      while (v12 != v9)
      {
        *(v11 + 2 * v9) = *(v7 + v10);
        v10 += v6;
        ++v9;
        if (v10 >= v8)
        {
          return;
        }
      }

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

      v25 = 468;
      v26 = 2048;
      v27 = v12;
      v28 = 2048;
      v29 = v12;
      _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
      _os_crash_msg();
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v8)
  {
    v13 = 0;
    v5 = 0;
    v14 = 0;
    while (1)
    {
      v2 = a2[1];
      if (v2 <= v5)
      {
        break;
      }

      *(a2[2] + v13) = *(v7 + v14);
      v14 += *(a1 + 48);
      ++v5;
      v13 += 2;
      if (v14 >= v8)
      {
        return;
      }
    }

LABEL_16:
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

    v25 = 468;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v2;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }
}

__n128 re::internal::DataPayload::computePoDConversionHelper<int>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v136 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v131;
      v15 = v132;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v120 = 0uLL;
      v121 = 0;
      v6 = *(a1 + 40);
      v52 = *(v3 + 48);
      v53 = *(v3 + 24) + *(v3 + 56);
      v54 = v52 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v54)
        {
          v55 = 0;
          v56 = 0;
          v3 = v120.n128_u64[1];
          v57 = v121;
          while (v3 != v55)
          {
            *(v57 + 4 * v55) = *(v53 + v56);
            v56 += v52;
            ++v55;
            if (v56 >= v54)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_158;
        }
      }

      else if (v54)
      {
        v6 = 0;
        v70 = 0;
        while (1)
        {
          v2 = v120.n128_u64[1];
          if (v120.n128_u64[1] <= v6)
          {
            break;
          }

          *(v121 + 4 * v6) = *(v53 + v70);
          v70 += *(v3 + 48);
          ++v6;
          if (v70 >= v54)
          {
            goto LABEL_101;
          }
        }

LABEL_162:
        v122 = 0;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v131 = 0u;
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v123 = 136315906;
        v124 = "operator[]";
        v125 = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        v126 = 468;
        v127 = 2048;
        v128 = v6;
        v129 = 2048;
        v130 = v2;
        _os_log_send_and_compose_impl(v119, &v122, &v131, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v120 = 0uLL;
      v121 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v120.n128_u64[1];
          v27 = v121;
          while (v3 != v25)
          {
            *(v27 + 4 * v25) = *(v23 + v26);
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_150;
        }
      }

      else if (v24)
      {
        v68 = 0;
        v6 = 0;
        v69 = 0;
        do
        {
          v2 = v120.n128_u64[1];
          if (v120.n128_u64[1] <= v6)
          {
            goto LABEL_154;
          }

          *(v121 + v68) = *(v23 + v69);
          v69 += *(v3 + 48);
          ++v6;
          v68 += 4;
        }

        while (v69 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v120 = 0uLL;
          v121 = 0;
          v6 = *(a1 + 40);
          v40 = *(v3 + 48);
          v41 = *(v3 + 24) + *(v3 + 56);
          v42 = v40 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v42)
            {
              v43 = 0;
              v44 = 0;
              v3 = v120.n128_u64[1];
              v45 = v121;
              while (v3 != v43)
              {
                *(v45 + 4 * v43) = *(v41 + v44);
                v44 += v40;
                ++v43;
                if (v44 >= v42)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_134;
            }
          }

          else if (v42)
          {
            v65 = 0;
            v6 = 0;
            v66 = 0;
            while (1)
            {
              v2 = v120.n128_u64[1];
              if (v120.n128_u64[1] <= v6)
              {
                goto LABEL_142;
              }

              *(v121 + v65) = *(v41 + v66);
              v66 += *(v3 + 48);
              ++v6;
              v65 += 4;
              if (v66 >= v42)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v120 = 0uLL;
          v121 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v120.n128_u64[1];
              v12 = v121;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v72 = MEMORY[0x1E69E9C10];
              v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v73)
              {
                v74 = 3;
              }

              else
              {
                v74 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v74, &v122, &v131, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v75 = MEMORY[0x1E69E9C10];
              v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v76)
              {
                v77 = 3;
              }

              else
              {
                v77 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v77, &v122, &v131, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v78 = MEMORY[0x1E69E9C10];
              v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v79)
              {
                v80 = 3;
              }

              else
              {
                v80 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v80, &v122, &v131, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v81 = MEMORY[0x1E69E9C10];
              v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v82)
              {
                v83 = 3;
              }

              else
              {
                v83 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v83, &v122, &v131, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v84 = MEMORY[0x1E69E9C10];
              v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v85)
              {
                v86 = 3;
              }

              else
              {
                v86 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v86, &v122, &v131, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_122:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v87 = MEMORY[0x1E69E9C10];
              v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v88)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v89, &v122, &v131, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_126:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v90 = MEMORY[0x1E69E9C10];
              v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v91)
              {
                v92 = 3;
              }

              else
              {
                v92 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v92, &v122, &v131, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v93 = MEMORY[0x1E69E9C10];
              v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v94)
              {
                v95 = 3;
              }

              else
              {
                v95 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v95, &v122, &v131, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_134:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v96 = MEMORY[0x1E69E9C10];
              v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v97)
              {
                v98 = 3;
              }

              else
              {
                v98 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v98, &v122, &v131, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_138:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v99 = MEMORY[0x1E69E9C10];
              v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v100)
              {
                v101 = 3;
              }

              else
              {
                v101 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v101, &v122, &v131, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v102 = MEMORY[0x1E69E9C10];
              v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v103)
              {
                v104 = 3;
              }

              else
              {
                v104 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v104, &v122, &v131, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_146:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v105 = MEMORY[0x1E69E9C10];
              v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v106)
              {
                v107 = 3;
              }

              else
              {
                v107 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v107, &v122, &v131, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_150:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v108 = MEMORY[0x1E69E9C10];
              v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v109)
              {
                v110 = 3;
              }

              else
              {
                v110 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v110, &v122, &v131, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_154:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v111 = MEMORY[0x1E69E9C10];
              v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v112)
              {
                v113 = 3;
              }

              else
              {
                v113 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v6;
              v129 = 2048;
              v130 = v2;
              _os_log_send_and_compose_impl(v113, &v122, &v131, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_158:
              v122 = 0;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v114 = MEMORY[0x1E69E9C10];
              v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v123 = 136315906;
              v124 = "operator[]";
              v125 = 1024;
              if (v115)
              {
                v116 = 3;
              }

              else
              {
                v116 = 2;
              }

              v126 = 468;
              v127 = 2048;
              v128 = v3;
              v129 = 2048;
              v130 = v3;
              _os_log_send_and_compose_impl(v116, &v122, &v131, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v123, 38, v120.n128_u64[0], v120.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
              goto LABEL_162;
            }
          }

          else if (v9)
          {
            v58 = 0;
            v6 = 0;
            v59 = 0;
            while (1)
            {
              v2 = v120.n128_u64[1];
              if (v120.n128_u64[1] <= v6)
              {
                goto LABEL_110;
              }

              *(v121 + v58) = *(v8 + v59);
              v59 += *(v3 + 48);
              ++v6;
              v58 += 4;
              if (v59 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v28 = *(v3 + 48);
        v29 = *(v3 + 24) + *(v3 + 56);
        v30 = v28 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v30)
          {
            v31 = 0;
            v32 = 0;
            v3 = v120.n128_u64[1];
            v33 = v121;
            while (v3 != v31)
            {
              *(v33 + 4 * v31) = *(v29 + v32);
              v32 += v28;
              ++v31;
              if (v32 >= v30)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_118;
          }
        }

        else if (v30)
        {
          v61 = 0;
          v6 = 0;
          v62 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_126;
            }

            *(v121 + v61) = *(v29 + v62);
            v62 += *(v3 + 48);
            ++v6;
            v61 += 4;
            if (v62 >= v30)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v34 = *(v3 + 48);
        v35 = *(v3 + 24) + *(v3 + 56);
        v36 = v34 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v36)
          {
            v37 = 0;
            v38 = 0;
            v3 = v120.n128_u64[1];
            v39 = v121;
            while (v3 != v37)
            {
              *(v39 + 4 * v37) = *(v35 + v38);
              v38 += v34;
              ++v37;
              if (v38 >= v36)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_122;
          }
        }

        else if (v36)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_130;
            }

            *(v121 + v63) = *(v35 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 4;
            if (v64 >= v36)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v46 = *(v3 + 48);
        v47 = *(v3 + 24) + *(v3 + 56);
        v48 = v46 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            v3 = v120.n128_u64[1];
            v51 = v121;
            while (v3 != v49)
            {
              *(v51 + 4 * v49) = *(v47 + v50);
              v50 += v46;
              ++v49;
              if (v50 >= v48)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_138;
          }
        }

        else if (v48)
        {
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_146;
            }

            *(v121 + 4 * v6) = *(v47 + v67);
            v67 += *(v3 + 48);
            ++v6;
            if (v67 >= v48)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v120 = 0uLL;
        v121 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v120.n128_u64[1];
            v21 = v121;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v60 = 0;
          while (1)
          {
            v2 = v120.n128_u64[1];
            if (v120.n128_u64[1] <= v6)
            {
              goto LABEL_114;
            }

            *(v121 + 4 * v6) = *(v17 + v60);
            v60 += *(v3 + 48);
            ++v6;
            if (v60 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v120;
  v71 = v121;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v71;
  return result;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<float>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v139 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v134;
      v15 = v135;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v123 = 0uLL;
      v124 = 0;
      v6 = *(a1 + 40);
      v55 = *(v3 + 48);
      v56 = *(v3 + 24) + *(v3 + 56);
      v57 = v55 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v3 = v123.n128_u64[1];
          v60 = v124;
          while (v3 != v58)
          {
            *(v60 + 4 * v58) = *(v56 + v59);
            v59 += v55;
            ++v58;
            if (v59 >= v57)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_158;
        }
      }

      else if (v57)
      {
        v6 = 0;
        v73 = 0;
        while (1)
        {
          v2 = v123.n128_u64[1];
          if (v123.n128_u64[1] <= v6)
          {
            break;
          }

          *(v124 + 4 * v6) = *(v56 + v73);
          v73 += *(v3 + 48);
          ++v6;
          if (v73 >= v57)
          {
            goto LABEL_101;
          }
        }

LABEL_162:
        v125 = 0;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v134 = 0u;
        v120 = MEMORY[0x1E69E9C10];
        v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        if (v121)
        {
          v122 = 3;
        }

        else
        {
          v122 = 2;
        }

        v129 = 468;
        v130 = 2048;
        v131 = v6;
        v132 = 2048;
        v133 = v2;
        _os_log_send_and_compose_impl(v122, &v125, &v134, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v123 = 0uLL;
      v124 = 0;
      v6 = *(a1 + 40);
      v22 = *(v3 + 48);
      v23 = *(v3 + 24) + *(v3 + 56);
      v24 = v22 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v3 = v123.n128_u64[1];
          v27 = v124;
          while (v3 != v25)
          {
            v28 = *(v23 + v26);
            *(v27 + 4 * v25) = v28;
            v26 += v22;
            ++v25;
            if (v26 >= v24)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_150;
        }
      }

      else if (v24)
      {
        v71 = 0;
        v6 = 0;
        v72 = 0;
        do
        {
          v2 = v123.n128_u64[1];
          if (v123.n128_u64[1] <= v6)
          {
            goto LABEL_154;
          }

          *(v124 + v71) = *(v23 + v72);
          v72 += *(v3 + 48);
          ++v6;
          v71 += 4;
        }

        while (v72 < v24);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v123 = 0uLL;
          v124 = 0;
          v6 = *(a1 + 40);
          v43 = *(v3 + 48);
          v44 = *(v3 + 24) + *(v3 + 56);
          v45 = v43 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v45)
            {
              v46 = 0;
              v47 = 0;
              v3 = v123.n128_u64[1];
              v48 = v124;
              while (v3 != v46)
              {
                LOBYTE(v42) = *(v44 + v47);
                v42 = LODWORD(v42);
                *(v48 + 4 * v46) = v42;
                v47 += v43;
                ++v46;
                if (v47 >= v45)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_134;
            }
          }

          else if (v45)
          {
            v68 = 0;
            v6 = 0;
            v69 = 0;
            while (1)
            {
              v2 = v123.n128_u64[1];
              if (v123.n128_u64[1] <= v6)
              {
                goto LABEL_142;
              }

              *(v124 + v68) = *(v44 + v69);
              v69 += *(v3 + 48);
              ++v6;
              v68 += 4;
              if (v69 >= v45)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v123 = 0uLL;
          v124 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v123.n128_u64[1];
              v12 = v124;
              while (v3 != v10)
              {
                *(v12 + 4 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v75 = MEMORY[0x1E69E9C10];
              v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v76)
              {
                v77 = 3;
              }

              else
              {
                v77 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v77, &v125, &v134, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v78 = MEMORY[0x1E69E9C10];
              v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v79)
              {
                v80 = 3;
              }

              else
              {
                v80 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v80, &v125, &v134, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v81 = MEMORY[0x1E69E9C10];
              v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v82)
              {
                v83 = 3;
              }

              else
              {
                v83 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v83, &v125, &v134, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v84 = MEMORY[0x1E69E9C10];
              v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v85)
              {
                v86 = 3;
              }

              else
              {
                v86 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v86, &v125, &v134, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v87 = MEMORY[0x1E69E9C10];
              v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v88)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v89, &v125, &v134, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_122:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v90 = MEMORY[0x1E69E9C10];
              v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v91)
              {
                v92 = 3;
              }

              else
              {
                v92 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v92, &v125, &v134, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_126:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v93 = MEMORY[0x1E69E9C10];
              v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v94)
              {
                v95 = 3;
              }

              else
              {
                v95 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v95, &v125, &v134, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v96 = MEMORY[0x1E69E9C10];
              v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v97)
              {
                v98 = 3;
              }

              else
              {
                v98 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v98, &v125, &v134, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_134:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v99 = MEMORY[0x1E69E9C10];
              v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v100)
              {
                v101 = 3;
              }

              else
              {
                v101 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v101, &v125, &v134, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_138:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v102 = MEMORY[0x1E69E9C10];
              v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v103)
              {
                v104 = 3;
              }

              else
              {
                v104 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v104, &v125, &v134, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v105 = MEMORY[0x1E69E9C10];
              v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v106)
              {
                v107 = 3;
              }

              else
              {
                v107 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v107, &v125, &v134, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_146:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v108 = MEMORY[0x1E69E9C10];
              v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v109)
              {
                v110 = 3;
              }

              else
              {
                v110 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v110, &v125, &v134, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_150:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v111 = MEMORY[0x1E69E9C10];
              v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v112)
              {
                v113 = 3;
              }

              else
              {
                v113 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v113, &v125, &v134, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_154:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v114 = MEMORY[0x1E69E9C10];
              v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v115)
              {
                v116 = 3;
              }

              else
              {
                v116 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v6;
              v132 = 2048;
              v133 = v2;
              _os_log_send_and_compose_impl(v116, &v125, &v134, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_158:
              v125 = 0;
              v137 = 0u;
              v138 = 0u;
              v135 = 0u;
              v136 = 0u;
              v134 = 0u;
              v117 = MEMORY[0x1E69E9C10];
              v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v126 = 136315906;
              v127 = "operator[]";
              v128 = 1024;
              if (v118)
              {
                v119 = 3;
              }

              else
              {
                v119 = 2;
              }

              v129 = 468;
              v130 = 2048;
              v131 = v3;
              v132 = 2048;
              v133 = v3;
              _os_log_send_and_compose_impl(v119, &v125, &v134, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v126, 38, v123.n128_u64[0], v123.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
              goto LABEL_162;
            }
          }

          else if (v9)
          {
            v61 = 0;
            v6 = 0;
            v62 = 0;
            while (1)
            {
              v2 = v123.n128_u64[1];
              if (v123.n128_u64[1] <= v6)
              {
                goto LABEL_110;
              }

              *(v124 + v61) = *(v8 + v62);
              v62 += *(v3 + 48);
              ++v6;
              v61 += 4;
              if (v62 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v123 = 0uLL;
        v124 = 0;
        v6 = *(a1 + 40);
        v29 = *(v3 + 48);
        v30 = *(v3 + 24) + *(v3 + 56);
        v31 = v29 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v31)
          {
            v32 = 0;
            v33 = 0;
            v3 = v123.n128_u64[1];
            v34 = v124;
            while (v3 != v32)
            {
              *(v34 + 4 * v32) = *(v30 + v33);
              v33 += v29;
              ++v32;
              if (v33 >= v31)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_118;
          }
        }

        else if (v31)
        {
          v64 = 0;
          v6 = 0;
          v65 = 0;
          while (1)
          {
            v2 = v123.n128_u64[1];
            if (v123.n128_u64[1] <= v6)
            {
              goto LABEL_126;
            }

            *(v124 + v64) = *(v30 + v65);
            v65 += *(v3 + 48);
            ++v6;
            v64 += 4;
            if (v65 >= v31)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v123 = 0uLL;
        v124 = 0;
        v6 = *(a1 + 40);
        v36 = *(v3 + 48);
        v37 = *(v3 + 24) + *(v3 + 56);
        v38 = v36 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v38)
          {
            v39 = 0;
            v40 = 0;
            v3 = v123.n128_u64[1];
            v41 = v124;
            while (v3 != v39)
            {
              LOWORD(v35) = *(v37 + v40);
              v35 = LODWORD(v35);
              *(v41 + 4 * v39) = v35;
              v40 += v36;
              ++v39;
              if (v40 >= v38)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_122;
          }
        }

        else if (v38)
        {
          v66 = 0;
          v6 = 0;
          v67 = 0;
          while (1)
          {
            v2 = v123.n128_u64[1];
            if (v123.n128_u64[1] <= v6)
            {
              goto LABEL_130;
            }

            *(v124 + v66) = *(v37 + v67);
            v67 += *(v3 + 48);
            ++v6;
            v66 += 4;
            if (v67 >= v38)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v123 = 0uLL;
        v124 = 0;
        v6 = *(a1 + 40);
        v49 = *(v3 + 48);
        v50 = *(v3 + 24) + *(v3 + 56);
        v51 = v49 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v51)
          {
            v52 = 0;
            v53 = 0;
            v3 = v123.n128_u64[1];
            v54 = v124;
            while (v3 != v52)
            {
              *(v54 + 4 * v52) = *(v50 + v53);
              v53 += v49;
              ++v52;
              if (v53 >= v51)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_138;
          }
        }

        else if (v51)
        {
          v6 = 0;
          v70 = 0;
          while (1)
          {
            v2 = v123.n128_u64[1];
            if (v123.n128_u64[1] <= v6)
            {
              goto LABEL_146;
            }

            *(v124 + 4 * v6) = *(v50 + v70);
            v70 += *(v3 + 48);
            ++v6;
            if (v70 >= v51)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v123 = 0uLL;
        v124 = 0;
        v6 = *(a1 + 40);
        v16 = *(v3 + 48);
        v17 = *(v3 + 24) + *(v3 + 56);
        v18 = v16 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v3 = v123.n128_u64[1];
            v21 = v124;
            while (v3 != v19)
            {
              *(v21 + 4 * v19) = *(v17 + v20);
              v20 += v16;
              ++v19;
              if (v20 >= v18)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v18)
        {
          v6 = 0;
          v63 = 0;
          while (1)
          {
            v2 = v123.n128_u64[1];
            if (v123.n128_u64[1] <= v6)
            {
              goto LABEL_114;
            }

            *(v124 + 4 * v6) = *(v17 + v63);
            v63 += *(v3 + 48);
            ++v6;
            if (v63 >= v18)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v123;
  v74 = v124;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v74;
  return result;
}

__n128 re::internal::DataPayload::computePoDConversionHelper<double>@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v141 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 33);
  if (v5 > 5)
  {
    if (v5 - 8 < 4)
    {
      v13 = "Could not convert values to specified output type.";
LABEL_13:
      result = v136;
      v15 = v137;
      *a2 = 0;
      *(a2 + 8) = 100;
      *(a2 + 16) = re::AssetErrorCategory(void)::instance;
      *(a2 + 24) = result;
      *(a2 + 40) = v15;
      return result;
    }

    if (v5 == 6)
    {
      v125 = 0uLL;
      v126 = 0;
      v6 = *(a1 + 40);
      v55 = *(v3 + 48);
      v56 = *(v3 + 24) + *(v3 + 56);
      v57 = v55 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v57)
        {
          v58 = 0;
          v59 = 0;
          v3 = v125.n128_u64[1];
          v60 = v126;
          while (v3 != v58)
          {
            *(v60 + 8 * v58) = *(v56 + v59);
            v59 += v55;
            ++v58;
            if (v59 >= v57)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_158;
        }
      }

      else if (v57)
      {
        v74 = 0;
        v6 = 0;
        v75 = 0;
        while (1)
        {
          v2 = v125.n128_u64[1];
          if (v125.n128_u64[1] <= v6)
          {
            break;
          }

          *(v126 + v74) = *(v56 + v75);
          v75 += *(v3 + 48);
          ++v6;
          v74 += 8;
          if (v75 >= v57)
          {
            goto LABEL_101;
          }
        }

LABEL_162:
        v127 = 0;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v136 = 0u;
        v122 = MEMORY[0x1E69E9C10];
        v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v128 = 136315906;
        v129 = "operator[]";
        v130 = 1024;
        if (v123)
        {
          v124 = 3;
        }

        else
        {
          v124 = 2;
        }

        v131 = 468;
        v132 = 2048;
        v133 = v6;
        v134 = 2048;
        v135 = v2;
        _os_log_send_and_compose_impl(v124, &v127, &v136, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      if (v5 != 7)
      {
LABEL_61:
        v13 = "Unrecognized/Unsupported type.";
        goto LABEL_13;
      }

      v125 = 0uLL;
      v126 = 0;
      v6 = *(a1 + 40);
      v23 = *(v3 + 48);
      v24 = *(v3 + 24) + *(v3 + 56);
      v25 = v23 * *(v3 + 40);
      if (*(v3 + 32))
      {
        if (v25)
        {
          v26 = 0;
          v27 = 0;
          v3 = v125.n128_u64[1];
          v28 = v126;
          while (v3 != v26)
          {
            *(v28 + 8 * v26) = *(v24 + v27);
            v27 += v23;
            ++v26;
            if (v27 >= v25)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_150;
        }
      }

      else if (v25)
      {
        v6 = 0;
        v73 = 0;
        do
        {
          v2 = v125.n128_u64[1];
          if (v125.n128_u64[1] <= v6)
          {
            goto LABEL_154;
          }

          *(v126 + 8 * v6) = *(v24 + v73);
          v73 += *(v3 + 48);
          ++v6;
        }

        while (v73 < v25);
      }
    }
  }

  else
  {
    if (*(a1 + 33) <= 2u)
    {
      if (*(a1 + 33))
      {
        if (v5 == 1)
        {
          v125 = 0uLL;
          v126 = 0;
          v6 = *(a1 + 40);
          v43 = *(v3 + 48);
          v44 = *(v3 + 24) + *(v3 + 56);
          v45 = v43 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v45)
            {
              v46 = 0;
              v47 = 0;
              v3 = v125.n128_u64[1];
              v48 = v126;
              while (v3 != v46)
              {
                LOBYTE(v42) = *(v44 + v47);
                v42 = *&v42;
                *(v48 + 8 * v46) = v42;
                v47 += v43;
                ++v46;
                if (v47 >= v45)
                {
                  goto LABEL_101;
                }
              }

              goto LABEL_134;
            }
          }

          else if (v45)
          {
            v69 = 0;
            v6 = 0;
            v70 = 0;
            while (1)
            {
              v2 = v125.n128_u64[1];
              if (v125.n128_u64[1] <= v6)
              {
                goto LABEL_142;
              }

              *(v126 + v69) = *(v44 + v70);
              v70 += *(v3 + 48);
              ++v6;
              v69 += 8;
              if (v70 >= v45)
              {
                goto LABEL_101;
              }
            }
          }
        }

        else
        {
          v125 = 0uLL;
          v126 = 0;
          v6 = *(a1 + 40);
          v7 = *(v3 + 48);
          v8 = *(v3 + 24) + *(v3 + 56);
          v9 = v7 * *(v3 + 40);
          if (*(v3 + 32))
          {
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v3 = v125.n128_u64[1];
              v12 = v126;
              while (v3 != v10)
              {
                *(v12 + 8 * v10) = *(v8 + v11);
                v11 += v7;
                ++v10;
                if (v11 >= v9)
                {
                  goto LABEL_101;
                }
              }

              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v77 = MEMORY[0x1E69E9C10];
              v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v78)
              {
                v79 = 3;
              }

              else
              {
                v79 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v79, &v127, &v136, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_106:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v80 = MEMORY[0x1E69E9C10];
              v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v81)
              {
                v82 = 3;
              }

              else
              {
                v82 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v82, &v127, &v136, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_110:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v83 = MEMORY[0x1E69E9C10];
              v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v84)
              {
                v85 = 3;
              }

              else
              {
                v85 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v85, &v127, &v136, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_114:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v86 = MEMORY[0x1E69E9C10];
              v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v87)
              {
                v88 = 3;
              }

              else
              {
                v88 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v88, &v127, &v136, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v89 = MEMORY[0x1E69E9C10];
              v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v90)
              {
                v91 = 3;
              }

              else
              {
                v91 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v91, &v127, &v136, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_122:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v92 = MEMORY[0x1E69E9C10];
              v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v93)
              {
                v94 = 3;
              }

              else
              {
                v94 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v94, &v127, &v136, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_126:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v95 = MEMORY[0x1E69E9C10];
              v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v96)
              {
                v97 = 3;
              }

              else
              {
                v97 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v97, &v127, &v136, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_130:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v98 = MEMORY[0x1E69E9C10];
              v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v99)
              {
                v100 = 3;
              }

              else
              {
                v100 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v100, &v127, &v136, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_134:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v101 = MEMORY[0x1E69E9C10];
              v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v102)
              {
                v103 = 3;
              }

              else
              {
                v103 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v103, &v127, &v136, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_138:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v104 = MEMORY[0x1E69E9C10];
              v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v105)
              {
                v106 = 3;
              }

              else
              {
                v106 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v106, &v127, &v136, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_142:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v107 = MEMORY[0x1E69E9C10];
              v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v108)
              {
                v109 = 3;
              }

              else
              {
                v109 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v109, &v127, &v136, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_146:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v110 = MEMORY[0x1E69E9C10];
              v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v111)
              {
                v112 = 3;
              }

              else
              {
                v112 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v112, &v127, &v136, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_150:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v113 = MEMORY[0x1E69E9C10];
              v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v114)
              {
                v115 = 3;
              }

              else
              {
                v115 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v115, &v127, &v136, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_154:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v116 = MEMORY[0x1E69E9C10];
              v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v117)
              {
                v118 = 3;
              }

              else
              {
                v118 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v6;
              v134 = 2048;
              v135 = v2;
              _os_log_send_and_compose_impl(v118, &v127, &v136, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
LABEL_158:
              v127 = 0;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v136 = 0u;
              v119 = MEMORY[0x1E69E9C10];
              v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v128 = 136315906;
              v129 = "operator[]";
              v130 = 1024;
              if (v120)
              {
                v121 = 3;
              }

              else
              {
                v121 = 2;
              }

              v131 = 468;
              v132 = 2048;
              v133 = v3;
              v134 = 2048;
              v135 = v3;
              _os_log_send_and_compose_impl(v121, &v127, &v136, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v128, 38, v125.n128_u64[0], v125.n128_u64[1]);
              _os_crash_msg();
              __break(1u);
              goto LABEL_162;
            }
          }

          else if (v9)
          {
            v61 = 0;
            v6 = 0;
            v62 = 0;
            while (1)
            {
              v2 = v125.n128_u64[1];
              if (v125.n128_u64[1] <= v6)
              {
                goto LABEL_110;
              }

              *(v126 + v61) = *(v8 + v62);
              v62 += *(v3 + 48);
              ++v6;
              v61 += 8;
              if (v62 >= v9)
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v125 = 0uLL;
        v126 = 0;
        v6 = *(a1 + 40);
        v29 = *(v3 + 48);
        v30 = *(v3 + 24) + *(v3 + 56);
        v31 = v29 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v31)
          {
            v32 = 0;
            v33 = 0;
            v3 = v125.n128_u64[1];
            v34 = v126;
            while (v3 != v32)
            {
              *(v34 + 8 * v32) = *(v30 + v33);
              v33 += v29;
              ++v32;
              if (v33 >= v31)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_118;
          }
        }

        else if (v31)
        {
          v65 = 0;
          v6 = 0;
          v66 = 0;
          while (1)
          {
            v2 = v125.n128_u64[1];
            if (v125.n128_u64[1] <= v6)
            {
              goto LABEL_126;
            }

            *(v126 + v65) = *(v30 + v66);
            v66 += *(v3 + 48);
            ++v6;
            v65 += 8;
            if (v66 >= v31)
            {
              goto LABEL_101;
            }
          }
        }
      }

      goto LABEL_101;
    }

    switch(v5)
    {
      case 3u:
        v125 = 0uLL;
        v126 = 0;
        v6 = *(a1 + 40);
        v36 = *(v3 + 48);
        v37 = *(v3 + 24) + *(v3 + 56);
        v38 = v36 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v38)
          {
            v39 = 0;
            v40 = 0;
            v3 = v125.n128_u64[1];
            v41 = v126;
            while (v3 != v39)
            {
              LOWORD(v35) = *(v37 + v40);
              v35 = *&v35;
              *(v41 + 8 * v39) = v35;
              v40 += v36;
              ++v39;
              if (v40 >= v38)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_122;
          }
        }

        else if (v38)
        {
          v67 = 0;
          v6 = 0;
          v68 = 0;
          while (1)
          {
            v2 = v125.n128_u64[1];
            if (v125.n128_u64[1] <= v6)
            {
              goto LABEL_130;
            }

            *(v126 + v67) = *(v37 + v68);
            v68 += *(v3 + 48);
            ++v6;
            v67 += 8;
            if (v68 >= v38)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 4u:
        v125 = 0uLL;
        v126 = 0;
        v6 = *(a1 + 40);
        v49 = *(v3 + 48);
        v50 = *(v3 + 24) + *(v3 + 56);
        v51 = v49 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v51)
          {
            v52 = 0;
            v53 = 0;
            v3 = v125.n128_u64[1];
            v54 = v126;
            while (v3 != v52)
            {
              *(v54 + 8 * v52) = *(v50 + v53);
              v53 += v49;
              ++v52;
              if (v53 >= v51)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_138;
          }
        }

        else if (v51)
        {
          v71 = 0;
          v6 = 0;
          v72 = 0;
          while (1)
          {
            v2 = v125.n128_u64[1];
            if (v125.n128_u64[1] <= v6)
            {
              goto LABEL_146;
            }

            *(v126 + v71) = *(v50 + v72);
            v72 += *(v3 + 48);
            ++v6;
            v71 += 8;
            if (v72 >= v51)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      case 5u:
        v125 = 0uLL;
        v126 = 0;
        v6 = *(a1 + 40);
        v17 = *(v3 + 48);
        v18 = *(v3 + 24) + *(v3 + 56);
        v19 = v17 * *(v3 + 40);
        if (*(v3 + 32))
        {
          if (v19)
          {
            v20 = 0;
            v21 = 0;
            v3 = v125.n128_u64[1];
            v22 = v126;
            while (v3 != v20)
            {
              LODWORD(v16) = *(v18 + v21);
              v16 = *&v16;
              *(v22 + 8 * v20) = v16;
              v21 += v17;
              ++v20;
              if (v21 >= v19)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_106;
          }
        }

        else if (v19)
        {
          v63 = 0;
          v6 = 0;
          v64 = 0;
          while (1)
          {
            v2 = v125.n128_u64[1];
            if (v125.n128_u64[1] <= v6)
            {
              goto LABEL_114;
            }

            *(v126 + v63) = *(v18 + v64);
            v64 += *(v3 + 48);
            ++v6;
            v63 += 8;
            if (v64 >= v19)
            {
              goto LABEL_101;
            }
          }
        }

        break;
      default:
        goto LABEL_61;
    }
  }

LABEL_101:
  result = v125;
  v76 = v126;
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v76;
  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv2_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 8)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v20 = 0uLL;
    v21 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = v20.n128_u64[1];
          if (v20.n128_u64[1] <= v8)
          {
            break;
          }

          *(v21 + 8 * v8) = *(v4 + v7);
          v7 += *(a1 + 48);
          ++v8;
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v22 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v26 = 468;
        v27 = 2048;
        v28 = v8;
        v29 = 2048;
        v30 = v9;
        _os_log_send_and_compose_impl(v16, &v22, &v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20.n128_u64[0], v20.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_19;
      }
    }

    else if (v6)
    {
      v8 = 0;
      v12 = 0;
      while (1)
      {
        v9 = v20.n128_u64[1];
        if (v20.n128_u64[1] <= v8)
        {
          break;
        }

        *(v21 + 8 * v8) = *(v4 + v12);
        v12 += *(a1 + 48);
        ++v8;
        if (v12 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v26 = 468;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      _os_log_send_and_compose_impl(v19, &v22, &v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20.n128_u64[0], v20.n128_u64[1]);
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v20;
    v13 = v21;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v13;
  }

  else
  {
    result = v31;
    v11 = v32;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v11;
  }

  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv3_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 33) | 2) == 0xB)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v21 = 0uLL;
    v22 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = v21.n128_u64[1];
          if (v21.n128_u64[1] <= v9)
          {
            break;
          }

          *&v7 = *(v4 + v8);
          DWORD2(v7) = *(v4 + v8 + 8);
          *(v22 + 16 * v9) = v7;
          v8 += *(a1 + 48);
          ++v9;
          if (v8 >= v6)
          {
            goto LABEL_13;
          }
        }

        v23 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v27 = 468;
        v28 = 2048;
        v29 = v9;
        v30 = 2048;
        v31 = v10;
        _os_log_send_and_compose_impl(v17, &v23, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21.n128_u64[0], v21.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_19;
      }
    }

    else if (v6)
    {
      v13 = 0;
      v9 = 0;
      while (1)
      {
        v10 = v21.n128_u64[1];
        if (v21.n128_u64[1] <= v9)
        {
          break;
        }

        *&v7 = *(v4 + v13);
        DWORD2(v7) = *(v4 + v13 + 8);
        *(v22 + 16 * v9) = v7;
        v13 += *(a1 + 48);
        ++v9;
        if (v13 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v23 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v27 = 468;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      _os_log_send_and_compose_impl(v20, &v23, &v32, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21.n128_u64[0], v21.n128_u64[1]);
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v21;
    v14 = v22;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v14;
  }

  else
  {
    result = v32;
    v12 = v33;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v12;
  }

  return result;
}

__n128 _ZNK2re8internal11DataPayload22computeConvertedValuesIDv4_fEENS_6ResultINS_10FixedArrayIT_EENS_13DetailedErrorEEEv@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 10)
  {
    v4 = *(a1 + 24) + *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48) * v5;
    v20 = 0uLL;
    v21 = 0;
    if (*(a1 + 32))
    {
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = v20.n128_u64[1];
          if (v20.n128_u64[1] <= v8)
          {
            break;
          }

          *(v21 + 16 * v8) = *(v4 + v7);
          v7 += *(a1 + 48);
          ++v8;
          if (v7 >= v6)
          {
            goto LABEL_13;
          }
        }

        v22 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v26 = 468;
        v27 = 2048;
        v28 = v8;
        v29 = 2048;
        v30 = v9;
        _os_log_send_and_compose_impl(v16, &v22, &v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20.n128_u64[0], v20.n128_u64[1]);
        _os_crash_msg();
        __break(1u);
        goto LABEL_19;
      }
    }

    else if (v6)
    {
      v12 = 0;
      v8 = 0;
      while (1)
      {
        v9 = v20.n128_u64[1];
        if (v20.n128_u64[1] <= v8)
        {
          break;
        }

        *(v21 + 16 * v8) = *(v4 + v12);
        v12 += *(a1 + 48);
        ++v8;
        if (v12 >= v6)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v26 = 468;
      v27 = 2048;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      _os_log_send_and_compose_impl(v19, &v22, &v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20.n128_u64[0], v20.n128_u64[1]);
      _os_crash_msg();
      __break(1u);
    }

LABEL_13:
    result = v20;
    v13 = v21;
    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 24) = v13;
  }

  else
  {
    result = v31;
    v11 = v32;
    *a2 = 0;
    *(a2 + 8) = 100;
    *(a2 + 16) = re::AssetErrorCategory(void)::instance;
    *(a2 + 24) = result;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::add(uint64_t a1, _DWORD *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v9, a1, v6, v7 ^ (v7 >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v10, v9);
    *(result + 4) = *a2;
    *(result + 8) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *a2;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v12, a1, v6, v7 ^ (v7 >> 31));
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v13, v12);
    *(result + 4) = *a2;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    v9 = *(a3 + 8);
    *(result + 8) = *a3;
    *(result + 16) = v9;
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = *(result + 24);
    *(result + 24) = *(a3 + 16);
    *(a3 + 16) = v10;
    v11 = *(result + 40);
    *(result + 40) = *(a3 + 32);
    *(a3 + 32) = v11;
    ++*(a3 + 24);
    ++*(result + 32);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 8;
  }
}

void re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::resize(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return;
    }

    v9 = 48 * a2;
    v10 = a2;
    do
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((*(a1 + 32) + v9));
      ++v10;
      v9 += 48;
    }

    while (v10 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::setCapacity(a1, a2);
      v5 = *(a1 + 16);
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 48 * v5;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(*(a1 + 32) + v8, a3);
        v8 += 48;
        --v7;
      }

      while (v7);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
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
  if (*(v7 + 24 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,unsigned long,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
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
  if (*(v7 + 56 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v28, v9, v8);
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
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::DynamicArray<unsigned int>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24), *(v17 + 24));
                *(v18 + 4) = *(v17 - 20);
                *(v18 + 40) = 0;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 8) = 0;
                v19 = *(v17 - 8);
                *(v18 + 8) = *(v17 - 16);
                *(v18 + 16) = v19;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v20 = *(v18 + 24);
                *(v18 + 24) = *v17;
                *v17 = v20;
                v21 = *(v18 + 40);
                *(v18 + 40) = *(v17 + 16);
                *(v17 + 16) = v21;
                ++*(v17 + 8);
                ++*(v18 + 32);
              }

              v17 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<int,re::DynamicArray<re::RenderGraphProviderBase const*>,re::Hash<int>,re::EqualTo<int>,true,false>::deinit(v28);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 56 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 56 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 48) = a3;
  ++*(a1 + 28);
  return v22 + 56 * v5;
}

uint64_t re::Result<re::GeomModel,re::DetailedError>::Result(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 32) = *(a2 + 4);
    v5 = *(a2 + 2);
    *(a1 + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
    v6 = *(a2 + 3);
    *(a2 + 4) = 0;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a2 + 2) = v8;
    *(a2 + 3) = v7;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 6);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = v9;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v10 = *(a1 + 56);
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(a1 + 72);
    *(a1 + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    ++*(a2 + 16);
    ++*(a1 + 64);
    *(a1 + 112) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    v12 = *(a2 + 11);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = v12;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    v13 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(a1 + 112);
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 14) = v14;
    ++*(a2 + 26);
    ++*(a1 + 104);
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 120, a2 + 120);
    re::Optional<re::DynamicArray<re::GeomIndexMap>>::Optional(a1 + 168, a2 + 168);
    *(a1 + 248) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 216) = 0;
    v15 = *(a2 + 28);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 224) = v15;
    *(a2 + 27) = 0;
    *(a2 + 28) = 0;
    v16 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 29);
    *(a2 + 29) = v16;
    v17 = *(a1 + 248);
    *(a1 + 248) = *(a2 + 31);
    *(a2 + 31) = v17;
    ++*(a2 + 60);
    ++*(a1 + 240);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 48) = *(a2 + 6);
    v18 = *(a2 + 4);
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 3) = 0;
    v19 = *(a2 + 5);
    *(a2 + 6) = 0;
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    *(a2 + 4) = v21;
    *(a2 + 5) = v20;
  }

  return a1;
}

BOOL re::hasTransformAnimation(re *this, const MDLObject *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = [(re *)this transform];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 keyTimes];
    v5 = [v4 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void re::importSRTSampledAnimation(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, MDLObject *a3@<X1>, float a4@<S0>)
{
  v7 = this;
  if (!re::hasTransformAnimation(v7, v8))
  {
    v10 = [(re *)v7 name];
    v20 = [v10 UTF8String];
    re::DynamicString::format(&v69, "Processing node %s", v21, v20);
    v22 = v69;
    v23 = v70;
    v24 = v71;
    *a1 = 0;
    v25 = 2000;
LABEL_9:
    a1[1] = v25;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = v22;
    a1[5] = v23;
    a1[6] = v24;
    goto LABEL_10;
  }

  if (a4 <= 0.0 || ((a4 + 1.0) * 0.00001) > a4)
  {
    v10 = [(re *)v7 name];
    v26 = [v10 UTF8String];
    re::DynamicString::format(&v69, "Sample Rate = %f. Processing node %s", v27, a4, v26);
    v22 = v69;
    v23 = v70;
    v24 = v71;
    *a1 = 0;
    v25 = 2001;
    goto LABEL_9;
  }

  v9 = [(re *)v7 transform];
  v10 = v9;
  if (!v9)
  {
    v13 = [(re *)v7 name];
    v28 = [v13 UTF8String];
    re::DynamicString::format(&v69, "Processing node %s", v29, v28);
    v16 = v69;
    v17 = v70;
    v18 = v71;
    *a1 = 0;
    v19 = 2002;
    goto LABEL_14;
  }

  v11 = [v9 keyTimes];
  v12 = [v11 count];

  if (v12 <= 1)
  {
    v13 = [(re *)v7 name];
    v14 = [v13 UTF8String];
    re::DynamicString::format(&v69, "Processing node %s", v15, v14);
    v16 = v69;
    v17 = v70;
    v18 = v71;
    *a1 = 0;
    v19 = 2003;
LABEL_14:
    a1[1] = v19;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = v16;
    a1[5] = v17;
    a1[6] = v18;

    goto LABEL_10;
  }

  [v10 minimumTime];
  v31 = v30;
  [v10 maximumTime];
  if (v31 > v32)
  {
    [v10 minimumTime];
    v34 = v33;
    [v10 maximumTime];
    v36 = v35;
    v13 = [(re *)v7 name];
    v37 = [v13 UTF8String];
    re::DynamicString::format(&v69, "MinTime = %lf, MaxTime = %lf, Processing node %s", v38, v34, v36, v37);
    v16 = v69;
    v17 = v70;
    v18 = v71;
    *a1 = 0;
    v19 = 2004;
    goto LABEL_14;
  }

  [v10 minimumTime];
  v40 = v39;
  v41 = [v10 maximumTime];
  v43 = v42;
  v75 = 0;
  v72[1] = 0;
  v73 = 0;
  v74 = 0;
  v44 = vcvtps_s32_f32(v40 / a4);
  v45 = vcvtms_s32_f32(v43 / a4);
  v46 = v45 - v44 + 3;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v72, v46);
  ++v74;
  v47 = ceilf(v40 / a4) * a4;
  *&v48 = vabds_f32(v40, v47);
  v49 = v47 >= v40 || v47 == v40;
  if (!v49 && *&v48 > 0.00001)
  {
    v63 = v47;
    v56 = [(re *)v7 name];
    v64 = [v56 UTF8String];
    re::DynamicString::format(&v69, "Start time = %f. Calculated start time = %f, Processing node %s", v65, v40, *&v63, v64);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    *a1 = 0;
    v62 = 2005;
    goto LABEL_41;
  }

  v50 = v45 * a4;
  v51 = v50 <= v43 || v50 == v43;
  if (!v51 && vabds_f32(v50, v43) > 0.00001)
  {
    v66 = v50;
    v56 = [(re *)v7 name];
    v67 = [v56 UTF8String];
    re::DynamicString::format(&v69, "End time = %f. Calculated end time = %f, Processing node %s", v68, v43, *&v66, v67);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    *a1 = 0;
    v62 = 2006;
    goto LABEL_41;
  }

  if (v47 != v40 && *&v48 >= (((fabsf(v40) + fabsf(v47)) + 1.0) * 0.00001))
  {
    re::DynamicArray<re::Matrix3x3<float>>::add(v72, &v69);
  }

  v52 = 0.0;
  if (v45 >= v44)
  {
    v53 = v45 + 1;
    do
    {
      v52 = (v44 * a4);
      re::DynamicArray<re::Matrix3x3<float>>::add(v72, &v69);
      ++v44;
    }

    while (v53 != v44);
  }

  v54 = v43;
  if (v52 != v43 && vabdd_f64(v54, v52) >= (fabs(v54) + fabs(v52) + 1.0) * 1.0e-12)
  {
    *&v54 = re::DynamicArray<re::Matrix3x3<float>>::add(v72, &v69).n128_u64[0];
  }

  v55 = v73;
  if (v73 > v46)
  {
    v56 = [(re *)v7 name];
    v57 = [v56 UTF8String];
    re::DynamicString::format(&v69, "Frame count = %ld. Max sample count = %ld, Processing node %s", v58, v55, v46, v57);
    v59 = v69;
    v60 = v70;
    v61 = v71;
    *a1 = 0;
    v62 = 2008;
LABEL_41:
    a1[1] = v62;
    a1[2] = &re::AnimationErrorCategory(void)::instance;
    *(a1 + 3) = v59;
    a1[5] = v60;
    a1[6] = v61;

    goto LABEL_42;
  }

  re::DynamicArray<re::AssetHandle>::operator=(&a3[11], v72);
  *&a3[10].super.isa = v40;
  *(&a3[10].super.isa + 1) = v43;
  *(&a3[9].super.isa + 1) = a4;
  *a1 = 1;
LABEL_42:
  if (v72[0] && v75)
  {
    (*(*v72[0] + 40))();
  }

LABEL_10:
}

uint64_t anonymous namespace::sampleTransform(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  [v5 localTransformAtTime:a3];
  v13 = v7;
  v14 = v6;
  v11 = v9;
  v12 = v8;

  v15[0] = v14;
  v15[1] = v13;
  v15[2] = v12;
  v15[3] = v11;
  *a1 = 0x3F8000003F800000;
  *(a1 + 8) = 1065353216;
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return re::decomposeScaleRotationTranslation<float>(v15, a1, (a1 + 16), (a1 + 32));
}

void re::importSRTSampledAnimationFromUSKNode(void *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = [MEMORY[0x1E69DED88] transformKeyTimesWithNode:v5];
  v7 = v6;
  if (!v6)
  {
    v8 = [v5 path];
    v9 = [v8 stringValue];
    v16 = [v9 UTF8String];
    re::DynamicString::format(&v40, "Processing node %s", v17, v16);
    v12 = v40;
    v14 = *(&v41 + 1);
    v13 = v41;
    *a3 = 0;
    v15 = 2000;
    goto LABEL_10;
  }

  if ([v6 arraySize] <= 1)
  {
    v8 = [v5 path];
    v9 = [v8 stringValue];
    v10 = [v9 UTF8String];
    re::DynamicString::format(&v40, "Processing node %s", v11, v10);
    v12 = v40;
    v14 = *(&v41 + 1);
    v13 = v41;
    *a3 = 0;
    v15 = 2003;
LABEL_10:
    *(a3 + 8) = v15;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v12;
    *(a3 + 40) = v13;
    *(a3 + 48) = v14;
    goto LABEL_11;
  }

  v18 = a2[19];
  if (v18 <= 0.0 || v18 < ((v18 + 1.0) * 0.00001))
  {
    v28 = v18;
    v8 = [v5 path];
    v9 = [v8 stringValue];
    v29 = [v9 UTF8String];
    re::DynamicString::format(&v40, "Sample Rate = %f. Processing node %s", v30, *&v28, v29);
    v12 = v40;
    v14 = *(&v41 + 1);
    v13 = v41;
    *a3 = 0;
    v15 = 2001;
    goto LABEL_10;
  }

  v8 = [v7 dataNoCopy];
  v19 = [v8 bytes];
  v20 = [v7 arraySize];
  v21 = *v19;
  v22 = v19[v20 - 1];
  if (v21 > v22)
  {
    v9 = [v5 name];
    v23 = [v9 stringValue];
    v24 = [v23 UTF8String];
    re::DynamicString::format(&v40, "MinTime = %lf, MaxTime = %lf, Processing node %s", v25, v21, v22, v24);
    v26 = v40;
    v27 = v41;
    *a3 = 0;
    *(a3 + 8) = 2004;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v26;
    *(a3 + 40) = v27;

LABEL_11:
    goto LABEL_12;
  }

  v46 = 0;
  v44[1] = 0;
  v44[2] = 0;
  v45 = 0;
  re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v44, ((v22 - v21) + 1.0));
  ++v45;
  if (v21 <= v22)
  {
    v31 = v21;
    do
    {
      [MEMORY[0x1E69DED88] localTransformWithNode:v5 time:v31];
      v40 = v32;
      v41 = v33;
      v42 = v34;
      v43 = v35;
      v37.i64[0] = 0x3F8000003F800000;
      v37.i64[1] = 1065353216;
      v38[0] = 0;
      v38[1] = 0x3F80000000000000;
      v39 = 0uLL;
      re::decomposeScaleRotationTranslation<float>(&v40, &v37, v38, &v39);
      re::DynamicArray<re::Matrix3x3<float>>::add(v44, &v37);
      ++v31;
    }

    while (v31 <= v22);
  }

  re::DynamicArray<re::AssetHandle>::operator=(a2 + 11, v44);
  v36 = a2[19];
  a2[20] = v36 * v21;
  a2[21] = v36 * v22;
  *a3 = 1;
  if (v44[0] && v46)
  {
    (*(*v44[0] + 40))();
  }

LABEL_12:
}

void *re::findMaterialPropertyString(re *this, MDLMaterial *a2, MDLMaterialSemantic a3)
{
  v4 = this;
  v6 = re::findMaterialPropertyType(v4, a2, MDLMaterialSemanticSubsurface, v5);
  v7 = [v6 stringValue];
  v9 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v6 = re::findMaterialPropertyType(v4, a2, MDLMaterialSemanticMetallic, v8);
  v11 = [v6 URLValue];
  v12 = [v11 absoluteString];

  v9 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ([v9 length])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  v13 = v10;

  return v10;
}

void re::gatherMaterialConstants(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = re::findMaterialPropertyType(v3, 0, MDLMaterialSemanticAnisotropic, v4);
  if (v5)
  {
  }

  else
  {
    v9 = re::findMaterialPropertyType(v3, 0xF, MDLMaterialSemanticSpecularTint, v6);

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  __asm { FMOV            V0.4S, #1.0 }

  MaterialPropertyFloat3 = re::getMaterialPropertyFloat3(v3, 0, _Q0, v7, v8);
  MaterialPropertyFloat = re::getMaterialPropertyFloat(v3, 0xF, v15, 1.0, v16);
  re::DynamicString::appendf(&v87, "[%f, %f, %f, %f]", MaterialPropertyFloat3.n128_f32[0], MaterialPropertyFloat3.n128_f32[1], MaterialPropertyFloat3.n128_f32[2], MaterialPropertyFloat);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "baseColorTint", &v87);
  if (*v87.__x_ && (v87.__x_[2] & 1) != 0)
  {
    (*(**v87.__x_ + 40))();
  }

LABEL_7:
  v19 = [(re *)v3 name];
  v20 = [v19 hash];
  v87.__x_[0] = v20;
  for (i = 1; i != 624; ++i)
  {
    v20 = i + 1812433253 * (v20 ^ (v20 >> 30));
    v87.__x_[i] = v20;
  }

  v87.__i_ = 0;

  v23 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87), 0x20uLL) + 0.0);
  v24 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87), 0x20uLL) + 0.0);
  v25 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v87);
  re::DynamicString::appendf(&v85, "[%f, %f, %f]", v23, v24, (vcvts_n_f32_u32(v25, 0x20uLL) + 0.0));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "partDebugColor", &v85);
  v27 = re::findMaterialPropertyType(v3, 0xD, MDLMaterialSemanticAnisotropic, v26);

  if (v27)
  {
    v78 = re::getMaterialPropertyFloat3(v3, 0xD, 0, v28, v29);
    re::DynamicString::appendf(&v83, "[%f, %f, %f]", v78.n128_f32[0], v78.n128_f32[1], v78.n128_f32[2]);
    v31 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveColor", &v83);
    re::DynamicString::appendf(&v81, "%f", 1.0);
    v32 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveScale", &v81);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1, "emissiveScaleRGBA", &v79);
    if (v79 && (v80 & 1) != 0)
    {
      (*(*v79 + 40))();
    }

    if (v81 && (v82 & 1) != 0)
    {
      (*(*v81 + 40))();
    }

    if (v83 && (v84 & 1) != 0)
    {
      (*(*v83 + 40))();
    }
  }

  v33 = re::findMaterialPropertyString(v3, 2, v28);
  if (v33)
  {

LABEL_22:
    v38 = 1.0;
    goto LABEL_23;
  }

  v37 = re::findMaterialPropertyType(v3, 2, MDLMaterialSemanticSpecular, v34);

  if (v37)
  {
    goto LABEL_22;
  }

  v38 = 0.0;
LABEL_23:
  v39 = re::getMaterialPropertyFloat(v3, 2, v35, v38, v36);
  v41 = re::findMaterialPropertyType(v3, 2, MDLMaterialSemanticSpecularTint, v40);

  if (v41 || v39 != 0.0)
  {
    re::DynamicString::appendf(&v83, "%f", v39);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "metallicScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v44 = re::findMaterialPropertyType(v3, 6, MDLMaterialSemanticSpecularTint, v43);

  if (v44)
  {
    v47 = re::getMaterialPropertyFloat(v3, 6, v45, 1.0, v46);
    re::DynamicString::appendf(&v83, "%f", v47);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "roughnessScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v49 = re::findMaterialPropertyType(v3, 0xB, MDLMaterialSemanticSpecularTint, v46);

  if (v49)
  {
    v52 = re::getMaterialPropertyFloat(v3, 0xB, v50, 0.0, v51);
    re::DynamicString::appendf(&v83, "%f", v52);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v54 = re::findMaterialPropertyString(v3, 0x8000, v50);
  if (v54)
  {

LABEL_39:
    v59 = 1.0;
    goto LABEL_40;
  }

  v58 = re::findMaterialPropertyType(v3, 0x8000, MDLMaterialSemanticSpecular, v55);

  if (v58)
  {
    goto LABEL_39;
  }

  v59 = 0.01;
LABEL_40:
  v60 = re::getMaterialPropertyFloat(v3, 0x8000, v56, v59, v57);
  v62 = re::findMaterialPropertyType(v3, 0x8000, MDLMaterialSemanticSpecularTint, v61);

  if (v62 || v60 != 0.01)
  {
    re::DynamicString::appendf(&v83, "%f", v60);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatRoughnessScale", &v83);
    if (v83)
    {
      if (v84)
      {
        (*(*v83 + 40))();
      }
    }
  }

  v65 = re::findMaterialPropertyType(v3, 0x10, MDLMaterialSemanticSpecularTint, v64);

  if (v65)
  {
    v68 = re::getMaterialPropertyFloat(v3, 0x10, v66, 1.0, v67);
  }

  else
  {
    v68 = 1.0;
  }

  v69 = re::findMaterialPropertyType(v3, 0x11, MDLMaterialSemanticSpecularTint, v67);

  v73 = 1.5;
  if (v69)
  {
    v73 = re::getMaterialPropertyFloat(v3, 0x11, v71, 1.5, v72);
  }

  if (v68 <= 2.4)
  {
    v74 = v68;
  }

  else
  {
    v74 = 2.4;
  }

  if (v74 < 1.0)
  {
    v74 = 1.0;
  }

  if (v73 > 2.4)
  {
    v73 = 2.4;
  }

  if (v73 < 1.0)
  {
    v73 = 1.0;
  }

  v75 = (((v74 - v73) / (v74 + v73)) * ((v74 - v73) / (v74 + v73))) / 0.08;
  if (v75 <= 1.0)
  {
    v76 = v75;
  }

  else
  {
    v76 = 1.0;
  }

  re::DynamicString::appendf(&v83, "%f", v76);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "specularScale", &v83);
  if (v83 && (v84 & 1) != 0)
  {
    (*(*v83 + 40))();
  }

  if (v85 && (v86 & 1) != 0)
  {
    (*(*v85 + 40))();
  }
}

__n128 re::getMaterialPropertyFloat3(re *a1, MDLMaterial *a2, __n128 a3, uint64_t a4, MDLMaterialPropertyType a5)
{
  v5 = re::findMaterialPropertyType(a1, a2, MDLMaterialSemanticAnisotropic, a5);
  v6 = v5;
  if (v5 && ![v5 isDefaultValue])
  {
    [v6 float3Value];
    a3 = v7;
  }

  return a3;
}

float re::getMaterialPropertyFloat(re *this, MDLMaterial *a2, MDLMaterialSemantic a3, float a4, MDLMaterialPropertyType a5)
{
  v6 = re::findMaterialPropertyType(this, a2, MDLMaterialSemanticSpecularTint, a5);
  v7 = v6;
  if (v6 && ([v6 isDefaultValue] & 1) == 0)
  {
    [v7 floatValue];
    a4 = v8;
  }

  return a4;
}

uint64_t re::isMaterialTransparent(re *this, MDLMaterial *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(re *)this propertiesWithSemantic:15, 0];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if ([v7 type] == 3 || objc_msgSend(v7, "type") == 1)
      {
        v7 = 1;
        goto LABEL_16;
      }

      if ([v7 type] == 5)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v7 = 0;
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    if (!v7)
    {
      goto LABEL_16;
    }

    if (([v7 isDefaultValue] & 1) == 0)
    {
      [v7 floatValue];
      v7 = v9 < 0.99;
      goto LABEL_16;
    }
  }

  v7 = 0;
LABEL_16:

  return v7;
}

id re::findMaterialPropertyType(re *this, MDLMaterial *a2, MDLMaterialSemantic a3, MDLMaterialPropertyType a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(re *)this propertiesWithSemantic:a2, a4, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

id re::createMDLMeshFromGeomMesh(re *this, const re::GeomMesh *a2, const char *a3)
{
  v162 = *MEMORY[0x1E69E9840];
  v126 = objc_alloc_init(MEMORY[0x1E6974B90]);
  v6 = [objc_alloc(MEMORY[0x1E6974B78]) initWithBufferAllocator:v126];
  [v6 setVertexCount:*(this + 4)];
  v7 = v6;
  v8 = [v7 allocator];
  v9 = [v8 newBuffer:12 * *(this + 4) type:1];

  v10 = re::GeomMesh::accessVertexPositions(this);
  v12 = v11;
  v130 = v9;
  v13 = [v9 map];
  v14 = [v13 bytes];
  v15 = *(this + 4);
  if (v15)
  {
    v16 = v12;
    v17 = (v14 + 4);
    v18 = v12;
    while (v18)
    {
      v20 = *v10;
      v19 = v10[1];
      v10 += 2;
      *(&v21 + 1) = v19;
      *&v21 = v20;
      v17[-1].i32[1] = v20;
      *v17 = vzip1_s32((v21 >> 32), v19);
      v17 = (v17 + 12);
      --v18;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_115;
  }

LABEL_5:

  v22 = objc_alloc(MEMORY[0x1E6974BF8]);
  v23 = [v22 initWithName:*MEMORY[0x1E6974B28] format:786435 offset:0 bufferIndex:0];
  v24 = objc_alloc_init(MEMORY[0x1E6974C08]);
  v25 = [v24 layouts];
  v122 = [objc_alloc(MEMORY[0x1E6974C00]) initWithStride:12];
  v123 = v25;
  [v25 replaceObjectAtIndex:0 withObject:v122];
  v125 = v23;
  [v24 addOrReplaceAttribute:v23];
  v124 = v24;
  [v7 setVertexDescriptor:v24];
  v16 = v149;
  v152 = v130;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
  [v7 setVertexBuffers:v26];

  v145 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v144 = 0;
  v27 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v139 = this;
  if (v27 && (v28 = v27, v27[16] == 2) && (*(*v27 + 16))(v27) == *(this + 10))
  {
    v29 = (*(*v28 + 16))(v28);
    if (v29)
    {
      if (!v28[5])
      {
        goto LABEL_143;
      }

      v30 = v28[7];
      v29 = (*(*v28 + 16))(v28);
      LODWORD(this) = v29;
    }

    else
    {
      LODWORD(this) = 0;
      v30 = 0;
    }

    v140 = 0;
    if (*(v139 + 10))
    {
      v37 = 0;
      LODWORD(v40) = 0;
      while (!v37)
      {
        v44 = 0;
        v3 = 0;
LABEL_35:
        LODWORD(__src) = v40;
        *&v151[2] = 0;
        memset(v149, 0, sizeof(v149));
        re::DynamicArray<int>::setCapacity(v149, 1uLL);
        ++*&v149[24];
        re::DynamicArray<float>::copy(v149, 0, &__src, 1);
        v40 = v140;
        if (this <= v140)
        {
          goto LABEL_127;
        }

        *v147 = *(v30 + 4 * v140);
        re::DynamicArray<float>::DynamicArray(&v147[8], v149);
        v45 = v44;
        v46 = v44 + 1;
        if (v46 <= v3)
        {
          goto LABEL_131;
        }

        if (v45 >= v142)
        {
          re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(&v141, v46);
          v45 = v143;
        }

        v47 = v145;
        v48 = v145 + 48 * v45;
        if (v45 <= v3)
        {
          *v48 = *v147;
          *(v48 + 40) = 0;
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 8) = 0;
          *(v48 + 32) = 0;
          *(v48 + 8) = *&v147[8];
          *&v147[8] = 0;
          *(v48 + 16) = *&v147[16];
          *&v147[16] = 0;
          v53 = *(v48 + 24);
          *(v48 + 24) = *&v147[24];
          *&v147[24] = v53;
          v54 = *(v48 + 40);
          *(v48 + 40) = v148;
          v148 = v54;
          ++*&v147[32];
          ++*(v48 + 32);
        }

        else
        {
          *v48 = *(v48 - 48);
          *(v48 + 8) = *(v48 - 40);
          *(v48 + 16) = *(v48 - 32);
          *(v48 - 40) = 0;
          *(v48 - 32) = 0;
          *(v48 - 24) = 0;
          *(v48 + 40) = *(v48 - 8);
          v49 = *(v48 - 16) + 1;
          *(v48 - 8) = 0;
          *(v48 - 16) = v49;
          *(v48 + 32) = 1;
          if (v48 - 48 != v47 + 48 * v3)
          {
            v50 = v47 + 48 * v45 - 96;
            v51 = 48 * v3 - 48 * v45 + 48;
            do
            {
              *(v50 + 48) = *v50;
              re::DynamicArray<re::RigComponentConstraint>::operator=(v50 + 56, (v50 + 8));
              v50 -= 48;
              v51 += 48;
            }

            while (v51);
            v47 = v145;
          }

          v52 = (v47 + 48 * v3);
          *v52 = *v147;
          re::DynamicArray<re::RigComponentConstraint>::operator=((v52 + 2), &v147[8]);
          v45 = v143;
        }

        v37 = v45 + 1;
        v143 = v37;
        ++v144;
        if (*&v147[8] && v148)
        {
          v55 = v37;
          (*(**&v147[8] + 40))();
          v37 = v55;
        }

        v29 = *v149;
        if (*v149 && *&v151[2])
        {
          v43 = v37;
          v29 = (*(**v149 + 40))();
LABEL_52:
          v37 = v43;
        }

        LODWORD(v40) = v140 + 1;
        v140 = v40;
        if (v40 >= *(v139 + 10))
        {
          goto LABEL_56;
        }
      }

      if (this <= v40)
      {
        goto LABEL_135;
      }

      v3 = 0;
      v41 = *(v30 + 4 * v40);
      v29 = (v145 + 8);
      while (1)
      {
        v42 = *(v29 - 2);
        if (v42 == v41)
        {
          break;
        }

        if (v42 > v41)
        {
          v44 = v37;
          goto LABEL_35;
        }

        ++v3;
        v29 = (v29 + 48);
        if (v37 == v3)
        {
          v44 = v37;
          v3 = v37;
          goto LABEL_35;
        }
      }

      v43 = v37;
      v29 = re::DynamicArray<int>::add(v29, &v140);
      goto LABEL_52;
    }

    v37 = 0;
LABEL_56:
    this = v139;
  }

  else
  {
    *&v147[32] = 0;
    memset(v147, 0, 28);
    LODWORD(__src) = 1;
    re::DynamicArray<float>::DynamicArray(&__src + 8, v147);
    re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(&v141, 1uLL);
    v31 = v145;
    v32 = v144;
    v33 = v143;
    v34 = v145 + 48 * v143;
    *v34 = __src;
    *(v34 + 40) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 8) = 0;
    *(v34 + 8) = *(&__src + 1);
    *(&__src + 1) = 0;
    *(v34 + 16) = v158;
    *&v158 = 0;
    v35 = *(v34 + 24);
    *(v34 + 24) = *(&v158 + 1);
    *(&v158 + 1) = v35;
    v36 = *(v34 + 40);
    *(v34 + 40) = *(&v159 + 1);
    *(&v159 + 1) = v36;
    LODWORD(v159) = v159 + 1;
    ++*(v34 + 32);
    v37 = v33 + 1;
    v143 = v33 + 1;
    v144 = v32 + 1;
    if (*(&__src + 1))
    {
      if (v36)
      {
        v38 = v33 + 1;
        (*(**(&__src + 1) + 40))(*(&__src + 1));
        v37 = v38;
      }

      *(&v159 + 1) = 0;
      v158 = 0uLL;
      *(&__src + 1) = 0;
      LODWORD(v159) = v159 + 1;
    }

    if (*v147 && *&v147[32])
    {
      v39 = v37;
      (*(**v147 + 40))();
      v37 = v39;
    }

    LODWORD(v153) = 0;
    if (*(this + 10))
    {
      if (!v37)
      {
LABEL_139:
        *v149 = 0;
        *(v16 + 144) = 0u;
        *(v16 + 160) = 0u;
        *(v16 + 112) = 0u;
        *(v16 + 128) = 0u;
        *(v16 + 96) = 0u;
        v114 = MEMORY[0x1E69E9C10];
        v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v147 = 136315906;
        *&v147[4] = "operator[]";
        *&v147[12] = 1024;
        if (v115)
        {
          v116 = 3;
        }

        else
        {
          v116 = 2;
        }

        *&v147[14] = 789;
        *&v147[18] = 2048;
        *&v147[20] = 0;
        *&v147[28] = 2048;
        *&v147[30] = 0;
        _os_log_send_and_compose_impl(v116, v149, &__src, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_143:
        *v149 = 0;
        *(v16 + 144) = 0u;
        *(v16 + 160) = 0u;
        *(v16 + 112) = 0u;
        *(v16 + 128) = 0u;
        *(v16 + 96) = 0u;
        v117 = MEMORY[0x1E69E9C10];
        v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v147 = 136315906;
        *&v147[4] = "operator[]";
        *&v147[12] = 1024;
        if (v118)
        {
          v119 = 3;
        }

        else
        {
          v119 = 2;
        }

        *&v147[14] = 797;
        *&v147[18] = 2048;
        *&v147[20] = 0;
        *&v147[28] = 2048;
        *&v147[30] = 0;
        _os_log_send_and_compose_impl(v119, v149, &__src, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
      }

      do
      {
        re::DynamicArray<int>::add((v31 + 8), &v153);
        LODWORD(v153) = v153 + 1;
      }

      while (v153 < *(this + 10));
      v37 = v143;
    }
  }

  v127 = v37;
  if (!v37)
  {
    goto LABEL_93;
  }

  v56 = v145;
  v128 = v145 + 48 * v37;
  v129 = v7;
  do
  {
    v57 = v7;
    v58 = v57;
    v59 = *(v56 + 24);
    if (v59)
    {
      v3 = 0;
      v60 = *(v56 + 40);
      v13 = *(this + 5);
      v61 = 4 * v59;
      while (1)
      {
        v62 = *v60;
        if (v13 <= v62)
        {
          goto LABEL_111;
        }

        if (*(*(this + 7) + 16 * v62 + 12) == -1)
        {
          v63 = 3;
        }

        else
        {
          v63 = 4;
        }

        v3 += v63;
        ++v60;
        v61 -= 4;
        if (!v61)
        {
          goto LABEL_68;
        }
      }
    }

    v3 = 0;
LABEL_68:
    v64 = [v57 allocator];
    v65 = [v64 newBuffer:4 * v3 type:2];

    v136 = v58;
    v66 = [v58 allocator];
    v132 = v59;
    v67 = [v66 newBuffer:v59 type:2];

    v135 = v65;
    v133 = [v65 map];
    v68 = [v133 bytes];
    v134 = v67;
    v131 = [v67 map];
    v137 = v56;
    v138 = [v131 bytes];
    v69 = *(v56 + 24);
    if (!v69)
    {
      goto LABEL_87;
    }

    v70 = 0;
    v71 = 0;
    v72 = *(v137 + 40);
    v62 = &v72[v69];
    do
    {
      v16 = *v72;
      *&v147[32] = 0;
      memset(v147, 0, 28);
      v13 = *(this + 5);
      if (v13 <= v16)
      {
        goto LABEL_119;
      }

      v73 = *(this + 7) + 16 * v16;
      if (*(v73 + 12) == -1)
      {
        v74 = 3;
      }

      else
      {
        v74 = 4;
      }

      re::DynamicArray<float>::resize(v147, v74);
      v75 = 0;
      this = *&v147[16];
      v76 = *&v147[32];
      do
      {
        if (this == v75)
        {
          v153 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          __src = 0u;
          v88 = MEMORY[0x1E69E9C10];
          v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          *&v149[12] = 1024;
          if (v89)
          {
            v90 = 3;
          }

          else
          {
            v90 = 2;
          }

          *&v149[14] = 789;
          *&v149[18] = 2048;
          *&v149[20] = this;
          v150 = 2048;
          *v151 = this;
          _os_log_send_and_compose_impl(v90, &v153, &__src, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_107:
          v13 = v149;
          v153 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          __src = 0u;
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          *&v149[12] = 1024;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          *&v149[14] = 789;
          *&v149[18] = 2048;
          *&v149[20] = this;
          v150 = 2048;
          *v151 = this;
          _os_log_send_and_compose_impl(v93, &v153, &__src, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_111:
          *v149 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          v94 = MEMORY[0x1E69E9C10];
          v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v147 = 136315906;
          *&v147[4] = "operator[]";
          *&v147[12] = 1024;
          if (v95)
          {
            v96 = 3;
          }

          else
          {
            v96 = 2;
          }

          *&v147[14] = 797;
          *&v147[18] = 2048;
          *&v147[20] = v62;
          *&v147[28] = 2048;
          *&v147[30] = v13;
          _os_log_send_and_compose_impl(v96, v149, &__src, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_115:
          v141 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          __src = 0u;
          v97 = MEMORY[0x1E69E9C10];
          v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v147 = 136315906;
          *&v147[4] = "operator[]";
          *&v147[12] = 1024;
          if (v98)
          {
            v99 = 3;
          }

          else
          {
            v99 = 2;
          }

          *&v147[14] = 613;
          *&v147[18] = 2048;
          *&v147[20] = v16;
          *&v147[28] = 2048;
          *&v147[30] = v16;
          _os_log_send_and_compose_impl(v99, &v141, &__src, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v120, v121);
          _os_crash_msg();
          __break(1u);
LABEL_119:
          v153 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          __src = 0u;
          v100 = MEMORY[0x1E69E9C10];
          v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          *&v149[12] = 1024;
          if (v101)
          {
            v102 = 3;
          }

          else
          {
            v102 = 2;
          }

          *&v149[14] = 797;
          *&v149[18] = 2048;
          *&v149[20] = v16;
          v150 = 2048;
          *v151 = v13;
          _os_log_send_and_compose_impl(v102, &v153, &__src, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_123:
          v40 = v149;
          v153 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          __src = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v149 = 136315906;
          *&v149[4] = "operator[]";
          *&v149[12] = 1024;
          if (v104)
          {
            v105 = 3;
          }

          else
          {
            v105 = 2;
          }

          *&v149[14] = 797;
          *&v149[18] = 2048;
          *&v149[20] = v16;
          v150 = 2048;
          *v151 = v13;
          _os_log_send_and_compose_impl(v105, &v153, &__src, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v149, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_127:
          v146 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          v46 = MEMORY[0x1E69E9C10];
          v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v153) = 136315906;
          *(v16 + 52) = "operator[]";
          if (v106)
          {
            v107 = 3;
          }

          else
          {
            v107 = 2;
          }

          v154 = 1024;
          *(v16 + 62) = 613;
          v155 = 2048;
          *(v16 + 68) = v40;
          v156 = 2048;
          *(v16 + 78) = this;
          _os_log_send_and_compose_impl(v107, &v146, &__src, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_131:
          v146 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          v108 = MEMORY[0x1E69E9C10];
          v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v153) = 136315906;
          *(v16 + 52) = "insert";
          v154 = 1024;
          if (v109)
          {
            v110 = 3;
          }

          else
          {
            v110 = 2;
          }

          *(v16 + 62) = 887;
          v155 = 2048;
          *(v16 + 68) = v3;
          v156 = 2048;
          *(v16 + 78) = v46;
          _os_log_send_and_compose_impl(v110, &v146, &__src, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
LABEL_135:
          *v149 = 0;
          *(v16 + 144) = 0u;
          *(v16 + 160) = 0u;
          *(v16 + 112) = 0u;
          *(v16 + 128) = 0u;
          *(v16 + 96) = 0u;
          v111 = MEMORY[0x1E69E9C10];
          v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v147 = 136315906;
          *&v147[4] = "operator[]";
          if (v112)
          {
            v113 = 3;
          }

          else
          {
            v113 = 2;
          }

          *&v147[12] = 1024;
          *&v147[14] = 613;
          *&v147[18] = 2048;
          *&v147[20] = v40;
          *&v147[28] = 2048;
          *&v147[30] = this;
          _os_log_send_and_compose_impl(v113, v149, &__src, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v120, v122);
          _os_crash_msg();
          __break(1u);
          goto LABEL_139;
        }

        *(v76 + 4 * v75) = *(v73 + 4 * v75);
        v75 = (v75 + 1);
      }

      while (v74 != v75);
      v13 = *(v139 + 5);
      if (v13 <= v16)
      {
        goto LABEL_123;
      }

      v77 = 0;
      if (*(*(v139 + 7) + 16 * v16 + 12) == -1)
      {
        v78 = 3;
      }

      else
      {
        v78 = 4;
      }

      v16 = v71 + 1;
      *(v138 + v71) = v78;
      v79 = *&v147[32];
      do
      {
        if (this == v77)
        {
          goto LABEL_107;
        }

        *(v68 + 4 * (v70 + v77)) = *(v79 + 4 * v77);
        v77 = (v77 + 1);
      }

      while (v74 != v77);
      if (*v147)
      {
        (*(**v147 + 40))(*v147);
      }

      ++v72;
      v70 += v77;
      ++v71;
      this = v139;
    }

    while (v72 != v62);
LABEL_87:
    v80 = objc_alloc_init(MEMORY[0x1E6974BD0]);
    [v80 setFaceCount:v132];
    [v80 setFaceTopology:v134];
    if (*this)
    {
      v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    }

    else
    {
      v81 = &stru_1F5D319D0;
    }

    v82 = [objc_alloc(MEMORY[0x1E6974BC8]) initWithName:v81 indexBuffer:v135 indexCount:v3 indexType:32 geometryType:5 material:0 topology:v80];
    if (v82)
    {
      v83 = [v136 submeshes];
      [v83 addObject:v82];
      [v136 setSubmeshes:v83];
    }

    v56 = v137 + 48;
    v7 = v129;
    v16 = v149;
  }

  while (v137 + 48 != v128);
LABEL_93:
  v84 = v141;
  if (v141 && v145)
  {
    if (v127)
    {
      v85 = 48 * v127;
      v86 = v145 + 8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v86);
        v86 += 48;
        v85 -= 48;
      }

      while (v85);
      v84 = v141;
    }

    (*(*v84 + 40))(v84);
  }

  return v7;
}