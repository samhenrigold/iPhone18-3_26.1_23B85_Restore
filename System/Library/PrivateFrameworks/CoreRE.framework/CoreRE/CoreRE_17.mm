void *re::RigEvaluation::init@<X0>(re::RigEvaluation *this@<X0>, re::Allocator *a2@<X1>, const re::RigDefinition *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEvaluation::initRigDefinitionData(&v9, this, a2, a3);
  if (v9)
  {
    *this = a2;
    re::RigDefinition::operator=(this + 8, a3);
    re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 1224, a2, 3);
    *(this + 186) = a2;
    result = re::DynamicArray<re::internal::RigIKCall>::setCapacity(this + 186, 0);
    ++*(this + 378);
    *a4 = 1;
  }

  else
  {
    *a4 = v9;
    *(a4 + 8) = v10;
    result = re::DynamicString::DynamicString((a4 + 24), &v11);
  }

  if ((v9 & 1) == 0)
  {
    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  return result;
}

uint64_t *re::RigEvaluation::initRigDefinitionData@<X0>(uint64_t *__return_ptr a1@<X8>, re::RigEvaluation *this@<X0>, re::Allocator *a3@<X1>, const re::RigDefinition *a4@<X2>)
{
  v6 = a4;
  v7 = a3;
  v193 = *MEMORY[0x1E69E9840];
  re::validateRigDefinitionData(a3, a4, a4, v174);
  if (v174[0])
  {
    v164 = a1;
    re::FixedArray<re::FixedArray<float>>::init<>(this + 168, v7, v6[95]);
    re::FixedArray<re::FixedArray<float>>::init<>(this + 171, v7, v6[95]);
    re::FixedArray<re::TwoBoneIKOptions>::init<>(this + 174, v7, v6[95]);
    re::FixedArray<re::FABRIKOptions>::init<>(this + 177, v7, v6[100]);
    re::FixedArray<re::SplineIKOptions>::init<>(this + 1440, v7, v6[105]);
    re::FixedArray<re::internal::RigIKCall>::init<>(this + 165, v7, v6[125]);
    v11 = v6[125];
    *(this + 183) = v7;
    *(this + 184) = v11;
    v166 = v7;
    if (v11)
    {
      if (v11 >> 60)
      {
        goto LABEL_249;
      }

      v12 = (*(*v7 + 32))(v7, 16 * v11, 8);
      *(this + 185) = v12;
      if (!v12)
      {
LABEL_250:
        re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
LABEL_251:
        re::internal::assertLog(5, v13, "assertion failure: '%s' (%s:line %i) Unexpected Rig IK Handle Type: %u.", "!Unreachable code", "initRigDefinitionData", 1748, v18);
        _os_crash("assertion failure: (!Unreachable code) Unexpected Rig IK Handle Type: %u.", v160);
        __break(1u);
      }

      v14 = v11 - 1;
      if (v11 != 1)
      {
        do
        {
          *v12 = 0;
          *(v12 + 8) = -1;
          v12 += 16;
          --v14;
        }

        while (v14);
      }

      *v12 = 0;
      *(v12 + 8) = -1;
      if (v6[125])
      {
        v15 = 0;
        v16 = 136;
        v167 = v6;
        while (1)
        {
          v17 = (v6[127] + 16 * v15);
          v18 = *v17;
          if (v18 == 3)
          {
            break;
          }

          if (v18 == 2)
          {
            v5 = *(v17 + 1);
            v19 = v167[100];
            if (v19 <= v5)
            {
              goto LABEL_165;
            }

            v19 = *(this + 178);
            if (v19 <= v5)
            {
              goto LABEL_173;
            }

            v38 = v167[102] + (v5 << 7);
            v4 = *(v38 + 96);
            *(*(this + 179) + 8 * v5) = *(v38 + 120);
            *&v179 = re::solverFABRIK;
            v172 = 0uLL;
            v39 = *(v38 + 16);
            *&v172 = *(v38 + 32);
            *(&v172 + 1) = v39;
            v180 = 0uLL;
            *(&v179 + 1) = 0;
            re::FixedArray<unsigned long>::init<>(&v179 + 1, v7, v39);
            re::FixedArray<unsigned long>::copy(&v179 + 1, &v172);
            v170 = 0;
            v171 = 0;
            v40 = *(v38 + 56);
            v170 = *(v38 + 72);
            v171 = v40;
            v182[0] = 0;
            v181 = 0uLL;
            re::FixedArray<unsigned long>::init<>(&v181, v7, v40);
            re::FixedArray<unsigned long>::copy(&v181, &v170);
            v168 = 0;
            v169 = 0;
            v41 = *(v38 + 96);
            v168 = *(v38 + 112);
            v169 = v41;
            memset(&v182[1], 0, 24);
            re::FixedArray<unsigned long>::init<>(&v182[1], v7, v41);
            re::FixedArray<unsigned long>::copy(&v182[1], &v168);
            memset(v183, 0, sizeof(v183));
            re::FixedArray<re::Vector3<float>>::init<>(&v183[16], v7, v4);
            v184 = 0uLL;
            v19 = *(this + 166);
            if (v19 <= v15)
            {
              goto LABEL_177;
            }

            v42 = *(this + 167) + 136 * v15;
            *v42 = v179;
            re::FixedArray<unsigned long>::operator=((v42 + 8), &v179 + 1);
            re::FixedArray<unsigned long>::operator=((v42 + 32), &v181);
            re::FixedArray<unsigned long>::operator=((v42 + 56), &v182[1]);
            *(v42 + 80) = *v183;
            re::FixedArray<float>::operator=((v42 + 96), &v183[16]);
            *(v42 + 120) = v184;
            if (*&v183[16])
            {
              if (*&v183[24])
              {
                (*(**&v183[16] + 40))();
                *&v183[24] = 0;
                *&v183[32] = 0;
              }

              *&v183[16] = 0;
            }

            if (v182[1])
            {
              if (v182[2])
              {
                (*(*v182[1] + 40))();
                v182[2] = 0;
                v182[3] = 0;
              }

              v182[1] = 0;
            }

            if (v181)
            {
              if (*(&v181 + 1))
              {
                (*(*v181 + 40))();
                *(&v181 + 1) = 0;
                v182[0] = 0;
              }

              *&v181 = 0;
            }

            if (*(&v179 + 1) && v180)
            {
              (*(**(&v179 + 1) + 40))();
            }

            v19 = *(this + 184);
            if (v19 <= v15)
            {
              goto LABEL_185;
            }

            v43 = *(v17 + 1);
            v44 = *(this + 185) + 16 * v15;
            v45 = 2;
LABEL_102:
            *v44 = v45;
            *(v44 + 8) = v43;
            goto LABEL_103;
          }

          if (v18 != 1)
          {
            goto LABEL_251;
          }

          v4 = *(v17 + 1);
          v19 = v167[95];
          if (v19 <= v4)
          {
            goto LABEL_161;
          }

          v20 = (v167[97] + 240 * v4);
          v16 = v20[12];
          v172 = 0uLL;
          v173 = 0;
          v165 = 2 * v16;
          re::FixedArray<unsigned long>::init<>(&v172, v7, 2 * v16);
          if (v16)
          {
            v5 = 0;
            v21 = (v173 + 8);
            v4 = 1;
            while (1)
            {
              v22 = v20[12];
              if (v22 <= v5)
              {
                break;
              }

              v7 = (v4 - 1);
              v22 = *(&v172 + 1);
              if (*(&v172 + 1) <= v4 - 1)
              {
                goto LABEL_133;
              }

              *(v21 - 1) = *(v20[14] + 8 * v5);
              v22 = v20[17];
              if (v22 <= v5)
              {
                goto LABEL_137;
              }

              v22 = *(&v172 + 1);
              if (*(&v172 + 1) <= v4)
              {
                goto LABEL_141;
              }

              *v21 = *(v20[19] + 8 * v5);
              v21 += 2;
              ++v5;
              v4 += 2;
              if (v16 == v5)
              {
                goto LABEL_20;
              }
            }

            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v70 = MEMORY[0x1E69E9C10];
            v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v71)
            {
              v72 = 3;
            }

            else
            {
              v72 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v22;
            _os_log_send_and_compose_impl(v72, v185, &v179, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_133:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v73 = MEMORY[0x1E69E9C10];
            v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v74)
            {
              v75 = 3;
            }

            else
            {
              v75 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v7;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v22;
            _os_log_send_and_compose_impl(v75, v185, &v179, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_137:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v76 = MEMORY[0x1E69E9C10];
            v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v77)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v22;
            _os_log_send_and_compose_impl(v78, v185, &v179, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_141:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v79 = MEMORY[0x1E69E9C10];
            v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v80)
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v22;
            _os_log_send_and_compose_impl(v81, v185, &v179, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
            goto LABEL_145;
          }

LABEL_20:
          v4 = *(v17 + 1);
          v23 = *(this + 169);
          if (v23 <= v4)
          {
            goto LABEL_213;
          }

          v5 = v20[22];
          re::FixedArray<int>::init<>((*(this + 170) + 24 * v4), v166, v5);
          if (v5)
          {
            v16 = 0;
            v4 = v20[22];
            while (v4 != v16)
            {
              v19 = *(v17 + 1);
              v7 = *(this + 169);
              if (v7 <= v19)
              {
                goto LABEL_149;
              }

              v24 = *(this + 170) + 24 * v19;
              v19 = *(v24 + 8);
              if (v19 <= v16)
              {
                goto LABEL_153;
              }

              *(*(v24 + 16) + 4 * v16) = *(v20[24] + 4 * v16) * 0.017453;
              if (v5 == ++v16)
              {
                goto LABEL_27;
              }
            }

LABEL_145:
            *v185 = 0;
            v19 = &v179;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v4;
            _os_log_send_and_compose_impl(v84, v185, &v179, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_149:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v85 = MEMORY[0x1E69E9C10];
            v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v86)
            {
              v87 = 3;
            }

            else
            {
              v87 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v19;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v7;
            _os_log_send_and_compose_impl(v87, v185, &v179, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_153:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v88 = MEMORY[0x1E69E9C10];
            v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v89)
            {
              v90 = 3;
            }

            else
            {
              v90 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v16;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v90, v185, &v179, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_157:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v91 = MEMORY[0x1E69E9C10];
            v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v92)
            {
              v93 = 3;
            }

            else
            {
              v93 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v93, v185, &v179, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_161:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v94 = MEMORY[0x1E69E9C10];
            v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v95)
            {
              v96 = 3;
            }

            else
            {
              v96 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v96, v185, &v179, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_165:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v97 = MEMORY[0x1E69E9C10];
            v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v98)
            {
              v99 = 3;
            }

            else
            {
              v99 = 2;
            }

            *(&v190[1] + 6) = 797;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v99, v185, &v179, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_169:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v100 = MEMORY[0x1E69E9C10];
            v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v101)
            {
              v102 = 3;
            }

            else
            {
              v102 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v102, v185, &v179, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_173:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v103 = MEMORY[0x1E69E9C10];
            v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v104)
            {
              v105 = 3;
            }

            else
            {
              v105 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v105, v185, &v179, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_177:
            v178 = 0;
            v191 = 0u;
            v192 = 0u;
            memset(v190, 0, sizeof(v190));
            v106 = MEMORY[0x1E69E9C10];
            v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v185 = 136315906;
            *&v185[4] = "operator[]";
            *&v185[12] = 1024;
            if (v107)
            {
              v108 = 3;
            }

            else
            {
              v108 = 2;
            }

            *&v185[14] = 468;
            v186 = 2048;
            v187 = v15;
            v188 = 2048;
            v189 = v19;
            _os_log_send_and_compose_impl(v108, &v178, v190, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_181:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v109 = MEMORY[0x1E69E9C10];
            v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v110)
            {
              v111 = 3;
            }

            else
            {
              v111 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v111, v185, &v179, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_185:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v112 = MEMORY[0x1E69E9C10];
            v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v113)
            {
              v114 = 3;
            }

            else
            {
              v114 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v15;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v114, v185, &v179, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_189:
            *&v172 = 0;
            v191 = 0u;
            v192 = 0u;
            memset(v190, 0, sizeof(v190));
            v115 = MEMORY[0x1E69E9C10];
            v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v185 = 136315906;
            *&v185[4] = "operator[]";
            *&v185[12] = 1024;
            if (v116)
            {
              v117 = 3;
            }

            else
            {
              v117 = 2;
            }

            *&v185[14] = 468;
            v186 = 2048;
            v187 = v15;
            v188 = 2048;
            v189 = v19;
            _os_log_send_and_compose_impl(v117, &v172, v190, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_193:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v118 = MEMORY[0x1E69E9C10];
            v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v119)
            {
              v120 = 3;
            }

            else
            {
              v120 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v15;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v19;
            _os_log_send_and_compose_impl(v120, v185, &v179, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_197:
            *v185 = 0;
            v52 = &v179;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v121 = MEMORY[0x1E69E9C10];
            v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v122)
            {
              v123 = 3;
            }

            else
            {
              v123 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = 0;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = 0;
            _os_log_send_and_compose_impl(v123, v185, &v179, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_201:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v124 = MEMORY[0x1E69E9C10];
            v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v125)
            {
              v126 = 3;
            }

            else
            {
              v126 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v15;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v52;
            _os_log_send_and_compose_impl(v126, v185, &v179, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_205:
            *v185 = 0;
            v23 = &v179;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v127 = MEMORY[0x1E69E9C10];
            v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v128)
            {
              v129 = 3;
            }

            else
            {
              v129 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = 0;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = 0;
            _os_log_send_and_compose_impl(v129, v185, &v179, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_209:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v130 = MEMORY[0x1E69E9C10];
            v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v131)
            {
              v132 = 3;
            }

            else
            {
              v132 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v15;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v132, v185, &v179, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_213:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v133 = MEMORY[0x1E69E9C10];
            v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v134)
            {
              v135 = 3;
            }

            else
            {
              v135 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v4;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v135, v185, &v179, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_217:
            v170 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v136 = MEMORY[0x1E69E9C10];
            v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v137)
            {
              v138 = 3;
            }

            else
            {
              v138 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v23;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v4;
            _os_log_send_and_compose_impl(v138, &v170, &v179, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_221:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v139 = MEMORY[0x1E69E9C10];
            v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v140)
            {
              v141 = 3;
            }

            else
            {
              v141 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v141, v185, &v179, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_225:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v142 = MEMORY[0x1E69E9C10];
            v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v143)
            {
              v144 = 3;
            }

            else
            {
              v144 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v144, v185, &v179, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_229:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v145 = MEMORY[0x1E69E9C10];
            v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v146)
            {
              v147 = 3;
            }

            else
            {
              v147 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v147, v185, &v179, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_233:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v148 = MEMORY[0x1E69E9C10];
            v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v149)
            {
              v150 = 3;
            }

            else
            {
              v150 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v5;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v150, v185, &v179, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_237:
            v178 = 0;
            v191 = 0u;
            v192 = 0u;
            memset(v190, 0, sizeof(v190));
            v151 = MEMORY[0x1E69E9C10];
            v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v185 = 136315906;
            *&v185[4] = "operator[]";
            *&v185[12] = 1024;
            if (v152)
            {
              v153 = 3;
            }

            else
            {
              v153 = 2;
            }

            *&v185[14] = 468;
            v186 = 2048;
            v187 = v15;
            v188 = 2048;
            v189 = v23;
            _os_log_send_and_compose_impl(v153, &v178, v190, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v185, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_241:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v154 = MEMORY[0x1E69E9C10];
            v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v155)
            {
              v156 = 3;
            }

            else
            {
              v156 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v15;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v156, v185, &v179, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_245:
            *v185 = 0;
            memset(v182, 0, sizeof(v182));
            v180 = 0u;
            v181 = 0u;
            v179 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v190[0]) = 136315906;
            *(v190 + 4) = "operator[]";
            WORD2(v190[1]) = 1024;
            if (v157)
            {
              v158 = 3;
            }

            else
            {
              v158 = 2;
            }

            *(&v190[1] + 6) = 468;
            WORD1(v190[2]) = 2048;
            *(&v190[2] + 4) = v16;
            WORD2(v190[3]) = 2048;
            *(&v190[3] + 6) = v23;
            _os_log_send_and_compose_impl(v158, v185, &v179, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v162, v163);
            _os_crash_msg();
            __break(1u);
LABEL_249:
            re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v11);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v159, v161);
            __break(1u);
            goto LABEL_250;
          }

LABEL_27:
          *v185 = 0;
          *&v185[8] = 0;
          v25 = v20[27];
          *v185 = v20[29];
          *&v185[8] = v25;
          v23 = *(v17 + 1);
          v4 = *(this + 172);
          if (v4 <= v23)
          {
            goto LABEL_217;
          }

          re::FixedArray<int>::operator=((*(this + 173) + 24 * v23), v185);
          v5 = *(v17 + 1);
          v23 = *(this + 169);
          if (v23 <= v5)
          {
            goto LABEL_221;
          }

          v23 = *(this + 175);
          if (v23 <= v5)
          {
            goto LABEL_225;
          }

          v26 = *(this + 170) + 24 * v5;
          v27 = *(v26 + 8);
          v28 = *(this + 176) + 32 * v5;
          *(v28 + 16) = *(v26 + 16);
          *(v28 + 24) = v27;
          v5 = *(v17 + 1);
          v23 = *(this + 172);
          if (v23 <= v5)
          {
            goto LABEL_229;
          }

          v23 = *(this + 175);
          if (v23 <= v5)
          {
            goto LABEL_233;
          }

          v29 = *(this + 173) + 24 * v5;
          v30 = *(v29 + 8);
          v31 = (*(this + 176) + 32 * v5);
          *v31 = *(v29 + 16);
          v31[1] = v30;
          *&v179 = re::solverTwoBoneIK;
          v170 = 0;
          v171 = 0;
          v32 = v20[2];
          v170 = v20[4];
          v171 = v32;
          v180 = 0uLL;
          *(&v179 + 1) = 0;
          v7 = v166;
          re::FixedArray<unsigned long>::init<>(&v179 + 1, v166, v32);
          re::FixedArray<unsigned long>::copy(&v179 + 1, &v170);
          v168 = 0;
          v169 = 0;
          v33 = v20[7];
          v168 = v20[9];
          v169 = v33;
          v182[0] = 0;
          v181 = 0uLL;
          re::FixedArray<unsigned long>::init<>(&v181, v166, v33);
          re::FixedArray<unsigned long>::copy(&v181, &v168);
          *&v182[1] = v172;
          v34 = v173;
          v173 = 0;
          v172 = 0uLL;
          v182[3] = v34;
          memset(v183, 0, sizeof(v183));
          re::FixedArray<re::Vector3<float>>::init<>(&v183[16], v166, v165);
          v184 = 0uLL;
          v23 = *(this + 166);
          if (v23 <= v15)
          {
            goto LABEL_237;
          }

          v16 = 136;
          v35 = *(this + 167) + 136 * v15;
          *v35 = v179;
          re::FixedArray<unsigned long>::operator=((v35 + 8), &v179 + 1);
          re::FixedArray<unsigned long>::operator=((v35 + 32), &v181);
          re::FixedArray<unsigned long>::operator=((v35 + 56), &v182[1]);
          *(v35 + 80) = *v183;
          re::FixedArray<float>::operator=((v35 + 96), &v183[16]);
          *(v35 + 120) = v184;
          if (*&v183[16])
          {
            if (*&v183[24])
            {
              (*(**&v183[16] + 40))();
              *&v183[24] = 0;
              *&v183[32] = 0;
            }

            *&v183[16] = 0;
          }

          if (v182[1])
          {
            if (v182[2])
            {
              (*(*v182[1] + 40))();
              v182[2] = 0;
              v182[3] = 0;
            }

            v182[1] = 0;
          }

          if (v181)
          {
            if (*(&v181 + 1))
            {
              (*(*v181 + 40))();
              *(&v181 + 1) = 0;
              v182[0] = 0;
            }

            *&v181 = 0;
          }

          if (*(&v179 + 1) && v180)
          {
            (*(**(&v179 + 1) + 40))();
          }

          v23 = *(this + 184);
          if (v23 <= v15)
          {
            goto LABEL_241;
          }

          v36 = *(v17 + 1);
          v37 = *(this + 185) + 16 * v15;
          *v37 = 1;
          *(v37 + 8) = v36;
          if (v172 && *(&v172 + 1))
          {
            (*(*v172 + 40))();
          }

LABEL_103:
          v6 = v167;
          if (++v15 >= v167[125])
          {
            goto LABEL_104;
          }
        }

        v4 = *(v17 + 1);
        v19 = v167[105];
        if (v19 <= v4)
        {
          goto LABEL_157;
        }

        v19 = *(this + 181);
        if (v19 <= v4)
        {
          goto LABEL_169;
        }

        v5 = v167[107] + 240 * v4;
        v46 = *(this + 182) + 80 * v4;
        *v46 = *v5 * *v5;
        v47 = *(v5 + 104);
        *(v46 + 8) = *(v5 + 120);
        *(v46 + 16) = v47;
        v4 = *(v17 + 1);
        v19 = *(this + 181);
        if (v19 <= v4)
        {
          goto LABEL_181;
        }

        v48 = *(this + 182) + 80 * v4;
        *(v48 + 64) = *(v5 + 224);
        v4 = *(v5 + 64);
        if (*(v5 + 160) != -1)
        {
          ++v4;
          *(v48 + 24) = 1;
          *(v48 + 32) = *(v5 + 176);
        }

        if (*(v5 + 168) != -1)
        {
          v16 = *(v17 + 1);
          v23 = *(this + 181);
          if (v23 <= v16)
          {
            goto LABEL_245;
          }

          ++v4;
          v49 = *(this + 182) + 80 * v16;
          *(v49 + 25) = 1;
          *(v49 + 48) = *(v5 + 192);
          v16 = 136;
        }

        *&v179 = re::solverSplineIK;
        v180 = 0uLL;
        *(&v179 + 1) = 0;
        v7 = v166;
        re::FixedArray<unsigned long>::init<>(&v179 + 1, v166, 1uLL);
        v181 = 0uLL;
        v182[0] = 0;
        re::FixedArray<unsigned long>::init<>(&v181, v166, 1uLL);
        memset(&v182[1], 0, 24);
        *v183 = v4;
        memset(&v183[8], 0, 32);
        re::FixedArray<re::Vector3<float>>::init<>(&v183[16], v166, v4);
        *&v184 = 0;
        *(&v184 + 1) = v15;
        v19 = *(this + 166);
        if (v19 <= v15)
        {
          goto LABEL_189;
        }

        v50 = *(this + 167) + 136 * v15;
        *v50 = v179;
        re::FixedArray<unsigned long>::operator=((v50 + 8), &v179 + 1);
        re::FixedArray<unsigned long>::operator=((v50 + 32), &v181);
        re::FixedArray<unsigned long>::operator=((v50 + 56), &v182[1]);
        *(v50 + 80) = *v183;
        re::FixedArray<float>::operator=((v50 + 96), &v183[16]);
        *(v50 + 120) = v184;
        if (*&v183[16])
        {
          if (*&v183[24])
          {
            (*(**&v183[16] + 40))();
            *&v183[24] = 0;
            *&v183[32] = 0;
          }

          *&v183[16] = 0;
        }

        if (v182[1])
        {
          if (v182[2])
          {
            (*(*v182[1] + 40))();
            v182[2] = 0;
            v182[3] = 0;
          }

          v182[1] = 0;
        }

        if (v181)
        {
          if (*(&v181 + 1))
          {
            (*(*v181 + 40))();
            *(&v181 + 1) = 0;
            v182[0] = 0;
          }

          *&v181 = 0;
        }

        if (*(&v179 + 1) && v180)
        {
          (*(**(&v179 + 1) + 40))();
        }

        v19 = *(this + 166);
        if (v19 <= v15)
        {
          goto LABEL_193;
        }

        v51 = *(this + 167) + 136 * v15;
        if (!*(v51 + 16))
        {
          goto LABEL_197;
        }

        **(v51 + 24) = *(v5 + 128);
        v52 = *(this + 166);
        if (v52 <= v15)
        {
          goto LABEL_201;
        }

        if (!*(v51 + 40))
        {
          goto LABEL_205;
        }

        **(v51 + 48) = *(v5 + 136);
        v23 = *(this + 184);
        if (v23 <= v15)
        {
          goto LABEL_209;
        }

        v43 = *(v17 + 1);
        v44 = *(this + 185) + 16 * v15;
        v45 = 3;
        goto LABEL_102;
      }
    }

LABEL_104:
    v53 = v6[130];
    if (v53)
    {
      re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 1176, v7, 4 * v53);
      v53 = v6[130];
    }

    if (v53)
    {
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = v6[132];
        v190[0] = *(v56 + v55);
        v57 = re::Hash<re::DynamicString>::operator()(&v179, v190[0]);
        re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v190, v57, &v179);
        if (HIDWORD(v179) != 0x7FFFFFFF)
        {
          result = re::DynamicString::format(&v179, v166, "Rig contains multiple nodes named '%s'", v58, *(v56 + v55));
          v68 = v179;
          v69 = v180;
          *v164 = 0;
          v164[1] = 3000;
          v164[2] = &re::AnimationErrorCategory(void)::instance;
          *(v164 + 3) = v68;
          *(v164 + 5) = v69;
          goto LABEL_124;
        }

        v190[0] = *(v56 + v55);
        v179 = 0uLL;
        *&v180 = 0;
        v59 = re::Hash<re::DynamicString>::operator()(v185, v190[0]);
        re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v190, v59, &v179);
        if (HIDWORD(v179) == 0x7FFFFFFF)
        {
          v60 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(this + 1176, DWORD2(v179), v179);
          *(v60 + 8) = v190[0];
          *(v60 + 16) = v54;
          ++*(this + 304);
        }

        ++v54;
        v61 = v6[130];
        v55 += 56;
      }

      while (v54 < v61);
      if (v61)
      {
        v62 = 0;
        v63 = 8;
        do
        {
          v64 = strrchr(*(v6[132] + v63), 47);
          if (v64)
          {
            v190[0] = v64 + 1;
            v179 = 0uLL;
            *&v180 = 0;
            v65 = re::Hash<re::DynamicString>::operator()(v185, v64 + 1);
            re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(this + 1176, v190, v65, &v179);
            if (HIDWORD(v179) == 0x7FFFFFFF)
            {
              v66 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::allocEntry(this + 1176, DWORD2(v179), v179);
              *(v66 + 8) = v190[0];
              *(v66 + 16) = v62;
              ++*(this + 304);
            }

            v61 = v6[130];
          }

          ++v62;
          v63 += 56;
        }

        while (v62 < v61);
      }
    }

    else
    {
      v61 = 0;
    }

    re::FixedArray<re::EvaluationSRT>::init<>(this + 159, v166, v61);
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(this + 162, v166, v6[130]);
    result = re::FixedArray<unsigned long>::init<unsigned long const&>(this + 144, v166, v6[130], &re::RigPose::kInvalidIndex);
    *v164 = 1;
  }

  else
  {
    *a1 = v174[0];
    *(a1 + 1) = v175;
    result = re::DynamicString::DynamicString((a1 + 3), &v176);
  }

LABEL_124:
  if ((v174[0] & 1) == 0)
  {
    result = v176;
    if (v176)
    {
      if (v177)
      {
        return (*(*v176 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::RigDefinition::operator=(uint64_t a1, uint64_t a2)
{
  v4 = re::DynamicArray<re::RigComponentConstraint>::operator=(a1, a2);
  re::DynamicArray<re::RigComponentConstraint>::operator=(v4 + 40, (a2 + 40));
  if (a1 != a2)
  {
    v5 = *(a2 + 80);
    if (*(a1 + 80))
    {
      v6 = (a1 + 80);
      if (v5)
      {
        re::DynamicArray<re::RigBasicConstraint>::copy(v6, a2 + 80);
        ++*(a1 + 104);
      }

      else
      {
        re::DynamicArray<re::RigBasicConstraint>::clear(v6);
      }
    }

    else if (v5)
    {
      v7 = *(a2 + 96);
      *(a1 + 80) = v5;
      re::DynamicArray<re::RigBasicConstraint>::setCapacity((a1 + 80), v7);
      ++*(a1 + 104);
      re::DynamicArray<re::RigBasicConstraint>::copy((a1 + 80), a2 + 80);
    }

    v8 = *(a2 + 120);
    if (*(a1 + 120))
    {
      v9 = (a1 + 120);
      if (v8)
      {
        re::DynamicArray<re::RigAimConstraint>::copy(v9, a2 + 120);
        ++*(a1 + 144);
      }

      else
      {
        re::DynamicArray<re::RigAimConstraint>::clear(v9);
      }
    }

    else if (v8)
    {
      v10 = *(a2 + 136);
      *(a1 + 120) = v8;
      re::DynamicArray<re::RigAimConstraint>::setCapacity((a1 + 120), v10);
      ++*(a1 + 144);
      re::DynamicArray<re::RigAimConstraint>::copy((a1 + 120), a2 + 120);
    }

    v11 = *(a2 + 160);
    if (*(a1 + 160))
    {
      if (v11)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 160), a2 + 160);
      }

      else
      {
        *(a1 + 176) = 0;
      }

      ++*(a1 + 184);
    }

    else if (v11)
    {
      v12 = *(a2 + 176);
      *(a1 + 160) = v11;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 160), v12);
      ++*(a1 + 184);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 160), a2 + 160);
    }
  }

  re::DynamicArray<float>::operator=(a1 + 200, (a2 + 200));
  re::DynamicArray<float>::operator=(a1 + 240, (a2 + 240));
  re::DynamicArray<float>::operator=(a1 + 280, (a2 + 280));
  if (a1 == a2)
  {
    re::DynamicArray<re::Vector3<float>>::operator=(a1 + 480, (a2 + 480));
    v14 = *(a2 + 608);
    v16 = *(a2 + 560);
    v15 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v14;
    *(a1 + 560) = v16;
    *(a1 + 576) = v15;
  }

  else
  {
    v13 = *(a2 + 320);
    if (*(a1 + 320))
    {
      if (v13)
      {
        re::DynamicArray<re::Matrix3x3<float>>::copy((a1 + 320), a2 + 320);
      }

      else
      {
        *(a1 + 336) = 0;
      }

      ++*(a1 + 344);
    }

    else if (v13)
    {
      v17 = *(a2 + 336);
      *(a1 + 320) = v13;
      re::DynamicArray<re::Matrix3x3<float>>::setCapacity((a1 + 320), v17);
      ++*(a1 + 344);
      re::DynamicArray<re::Matrix3x3<float>>::copy((a1 + 320), a2 + 320);
    }

    v18 = *(a2 + 360);
    if (*(a1 + 360))
    {
      if (v18)
      {
        re::DynamicArray<re::Matrix4x4<float>>::copy((a1 + 360), a2 + 360);
      }

      else
      {
        *(a1 + 376) = 0;
      }

      ++*(a1 + 384);
    }

    else if (v18)
    {
      v19 = *(a2 + 376);
      *(a1 + 360) = v18;
      re::DynamicArray<re::Matrix4x4<float>>::setCapacity((a1 + 360), v19);
      ++*(a1 + 384);
      re::DynamicArray<re::Matrix4x4<float>>::copy((a1 + 360), a2 + 360);
    }

    v20 = *(a2 + 400);
    if (*(a1 + 400))
    {
      if (v20)
      {
        re::DynamicArray<re::Quaternion<float>>::copy((a1 + 400), a2 + 400);
      }

      else
      {
        *(a1 + 416) = 0;
      }

      ++*(a1 + 424);
    }

    else if (v20)
    {
      v21 = *(a2 + 416);
      *(a1 + 400) = v20;
      re::DynamicArray<re::Quaternion<float>>::setCapacity((a1 + 400), v21);
      ++*(a1 + 424);
      re::DynamicArray<re::Quaternion<float>>::copy((a1 + 400), a2 + 400);
    }

    v22 = *(a2 + 440);
    if (*(a1 + 440))
    {
      if (v22)
      {
        re::DynamicArray<unsigned long>::copy((a1 + 440), a2 + 440);
      }

      else
      {
        *(a1 + 456) = 0;
      }

      ++*(a1 + 464);
    }

    else if (v22)
    {
      v23 = *(a2 + 456);
      *(a1 + 440) = v22;
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((a1 + 440), v23);
      ++*(a1 + 464);
      re::DynamicArray<unsigned long>::copy((a1 + 440), a2 + 440);
    }

    re::DynamicArray<re::Vector3<float>>::operator=(a1 + 480, (a2 + 480));
    v24 = *(a2 + 520);
    if (*(a1 + 520))
    {
      if (v24)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 520), a2 + 520);
      }

      else
      {
        *(a1 + 536) = 0;
      }

      ++*(a1 + 544);
    }

    else if (v24)
    {
      v25 = *(a2 + 536);
      *(a1 + 520) = v24;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 520), v25);
      ++*(a1 + 544);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 520), a2 + 520);
    }

    v26 = *(a2 + 560);
    v27 = *(a2 + 576);
    v28 = *(a2 + 608);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v28;
    *(a1 + 560) = v26;
    *(a1 + 576) = v27;
    v29 = *(a2 + 624);
    if (*(a1 + 624))
    {
      if (v29)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 624), a2 + 624);
      }

      else
      {
        *(a1 + 640) = 0;
      }

      ++*(a1 + 648);
    }

    else if (v29)
    {
      v30 = *(a2 + 640);
      *(a1 + 624) = v29;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 624), v30);
      ++*(a1 + 648);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 624), a2 + 624);
    }

    v31 = *(a2 + 664);
    if (*(a1 + 664))
    {
      if (v31)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 664), a2 + 664);
      }

      else
      {
        *(a1 + 680) = 0;
      }

      ++*(a1 + 688);
    }

    else if (v31)
    {
      v32 = *(a2 + 680);
      *(a1 + 664) = v31;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 664), v32);
      ++*(a1 + 688);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 664), a2 + 664);
    }

    v33 = *(a2 + 704);
    if (*(a1 + 704))
    {
      if (v33)
      {
        re::DynamicArray<re::RigExpression>::copy((a1 + 704), a2 + 704);
      }

      else
      {
        *(a1 + 720) = 0;
      }

      ++*(a1 + 728);
    }

    else if (v33)
    {
      v34 = *(a2 + 720);
      *(a1 + 704) = v33;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 704), v34);
      ++*(a1 + 728);
      re::DynamicArray<re::RigExpression>::copy((a1 + 704), a2 + 704);
    }

    v35 = *(a2 + 744);
    if (*(a1 + 744))
    {
      if (v35)
      {
        re::DynamicArray<re::RigTwoBoneIKHandles>::copy((a1 + 744), a2 + 744);
      }

      else
      {
        v37 = *(a1 + 760);
        *(a1 + 760) = 0;
        if (v37)
        {
          v38 = 0;
          v39 = *(a1 + 776);
          v40 = 240 * v37;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 200);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 160);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 120);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 80);
            re::DynamicArray<unsigned long>::deinit(v39 + v38 + 40);
            re::DynamicArray<unsigned long>::deinit(v39 + v38);
            v38 += 240;
          }

          while (v40 != v38);
        }
      }

      ++*(a1 + 768);
    }

    else if (v35)
    {
      v36 = *(a2 + 760);
      *(a1 + 744) = v35;
      re::DynamicArray<re::RigTwoBoneIKHandles>::setCapacity((a1 + 744), v36);
      ++*(a1 + 768);
      re::DynamicArray<re::RigTwoBoneIKHandles>::copy((a1 + 744), a2 + 744);
    }

    v41 = *(a2 + 784);
    if (*(a1 + 784))
    {
      if (v41)
      {
        re::DynamicArray<re::RigSingleChainIKHandles>::copy((a1 + 784), a2 + 784);
      }

      else
      {
        v43 = *(a1 + 800);
        *(a1 + 800) = 0;
        if (v43)
        {
          v44 = *(a1 + 816);
          v45 = v43 << 7;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v44 + 80);
            re::DynamicArray<unsigned long>::deinit(v44 + 40);
            re::DynamicArray<unsigned long>::deinit(v44);
            v44 += 128;
            v45 -= 128;
          }

          while (v45);
        }
      }

      ++*(a1 + 808);
    }

    else if (v41)
    {
      v42 = *(a2 + 800);
      *(a1 + 784) = v41;
      re::DynamicArray<re::RigSingleChainIKHandles>::setCapacity((a1 + 784), v42);
      ++*(a1 + 808);
      re::DynamicArray<re::RigSingleChainIKHandles>::copy((a1 + 784), a2 + 784);
    }

    v46 = *(a2 + 824);
    if (*(a1 + 824))
    {
      if (v46)
      {
        re::DynamicArray<re::RigSplineIKHandle>::copy((a1 + 824), a2 + 824);
      }

      else
      {
        v48 = *(a1 + 840);
        *(a1 + 840) = 0;
        if (v48)
        {
          v49 = 240 * v48;
          v50 = *(a1 + 856) + 88;
          do
          {
            re::DynamicArray<unsigned long>::deinit(v50);
            re::DynamicArray<re::RigSplineIKControlPoint>::deinit(v50 - 40);
            re::DynamicArray<unsigned long>::deinit(v50 - 80);
            v50 += 240;
            v49 -= 240;
          }

          while (v49);
        }
      }

      ++*(a1 + 848);
    }

    else if (v46)
    {
      v47 = *(a2 + 840);
      *(a1 + 824) = v46;
      re::DynamicArray<re::RigSplineIKHandle>::setCapacity((a1 + 824), v47);
      ++*(a1 + 848);
      re::DynamicArray<re::RigSplineIKHandle>::copy((a1 + 824), a2 + 824);
    }

    v51 = *(a2 + 864);
    if (*(a1 + 864))
    {
      if (v51)
      {
        re::DynamicArray<re::RigTransform>::copy((a1 + 864), a2 + 864);
      }

      else
      {
        *(a1 + 880) = 0;
      }

      ++*(a1 + 888);
    }

    else if (v51)
    {
      v52 = *(a2 + 880);
      *(a1 + 864) = v51;
      re::DynamicArray<re::RigTransform>::setCapacity((a1 + 864), v52);
      ++*(a1 + 888);
      re::DynamicArray<re::RigTransform>::copy((a1 + 864), a2 + 864);
    }

    v53 = *(a2 + 904);
    if (*(a1 + 904))
    {
      if (v53)
      {
        re::DynamicArray<re::RigJoint>::copy((a1 + 904), a2 + 904);
      }

      else
      {
        *(a1 + 920) = 0;
      }

      ++*(a1 + 928);
    }

    else if (v53)
    {
      v54 = *(a2 + 920);
      *(a1 + 904) = v53;
      re::DynamicArray<re::RigJoint>::setCapacity((a1 + 904), v54);
      ++*(a1 + 928);
      re::DynamicArray<re::RigJoint>::copy((a1 + 904), a2 + 904);
    }

    v55 = *(a2 + 944);
    if (*(a1 + 944))
    {
      if (v55)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 944), a2 + 944);
      }

      else
      {
        *(a1 + 960) = 0;
      }

      ++*(a1 + 968);
    }

    else if (v55)
    {
      v56 = *(a2 + 960);
      *(a1 + 944) = v55;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 944), v56);
      ++*(a1 + 968);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 944), a2 + 944);
    }

    v57 = *(a2 + 984);
    if (*(a1 + 984))
    {
      if (v57)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 984), a2 + 984);
      }

      else
      {
        *(a1 + 1000) = 0;
      }

      ++*(a1 + 1008);
    }

    else if (v57)
    {
      v58 = *(a2 + 1000);
      *(a1 + 984) = v57;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 984), v58);
      ++*(a1 + 1008);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 984), a2 + 984);
    }

    v59 = *(a2 + 1024);
    if (*(a1 + 1024))
    {
      v60 = (a1 + 1024);
      if (v59)
      {
        re::DynamicArray<re::RigNode>::copy(v60, a2 + 1024);
        ++*(a1 + 1048);
      }

      else
      {
        re::DynamicArray<re::RigNode>::clear(v60);
      }
    }

    else if (v59)
    {
      v61 = *(a2 + 1040);
      *(a1 + 1024) = v59;
      re::DynamicArray<re::RigNode>::setCapacity((a1 + 1024), v61);
      ++*(a1 + 1048);
      re::DynamicArray<re::RigNode>::copy((a1 + 1024), a2 + 1024);
    }

    v62 = *(a2 + 1064);
    if (*(a1 + 1064))
    {
      if (v62)
      {
        re::DynamicArray<re::RigExpression>::copy((a1 + 1064), a2 + 1064);
      }

      else
      {
        *(a1 + 1080) = 0;
      }

      ++*(a1 + 1088);
    }

    else if (v62)
    {
      v63 = *(a2 + 1080);
      *(a1 + 1064) = v62;
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 1064), v63);
      ++*(a1 + 1088);
      re::DynamicArray<re::RigExpression>::copy((a1 + 1064), a2 + 1064);
    }

    v64 = *(a2 + 1104);
    if (*(a1 + 1104))
    {
      v65 = (a1 + 1104);
      if (v64)
      {
        re::DynamicArray<re::RigPose>::copy(v65, a2 + 1104);
        ++*(a1 + 1128);
      }

      else
      {
        re::DynamicArray<re::RigPose>::clear(v65);
      }
    }

    else if (v64)
    {
      v66 = *(a2 + 1120);
      *(a1 + 1104) = v64;
      re::DynamicArray<re::RigPose>::setCapacity((a1 + 1104), v66);
      ++*(a1 + 1128);
      re::DynamicArray<re::RigPose>::copy((a1 + 1104), a2 + 1104);
    }
  }

  return a1;
}

void re::HashTable<re::StringID,BOOL (*)(re::MutableSlice<re::Matrix4x4<float>>,re::Slice<unsigned int>,re::Slice<unsigned long>,re::Slice<unsigned long>,re::Slice<re::Vector3<float>>,void *),re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_261, 4 * v10);
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

void *re::RigEvaluation::init@<X0>(re::RigEvaluation *a1@<X0>, re::Allocator *a2@<X1>, const re::RigDefinition *a3@<X2>, uint64_t a4@<X8>)
{
  re::RigEvaluation::initRigDefinitionData(&v9, a1, a2, a3);
  if (v9)
  {
    *a1 = a2;
    result = re::RigDefinition::operator=(a1 + 8, a3);
    *a4 = 1;
  }

  else
  {
    *a4 = v9;
    *(a4 + 8) = v10;
    result = re::DynamicString::DynamicString((a4 + 24), &v11);
  }

  if ((v9 & 1) == 0)
  {
    result = v11;
    if (v11)
    {
      if (v12)
      {
        return (*(*v11 + 40))();
      }
    }
  }

  return result;
}

char *re::RigDefinition::operator=(char *a1, char *a2)
{
  re::DynamicArray<re::RigComponentConstraint>::operator=(a1, a2);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 40), a2 + 5);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 80), a2 + 10);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 120), a2 + 15);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 160), a2 + 20);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 200), a2 + 25);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 240), a2 + 30);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 280), a2 + 35);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 320), a2 + 40);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 360), a2 + 45);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 400), a2 + 50);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 440), a2 + 55);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 480), a2 + 60);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 520), a2 + 65);
  v4 = *(a2 + 38);
  v6 = *(a2 + 35);
  v5 = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = v4;
  *(a1 + 35) = v6;
  *(a1 + 36) = v5;
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 624), a2 + 78);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 664), a2 + 83);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 704), a2 + 88);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 744), a2 + 93);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 784), a2 + 98);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 824), a2 + 103);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 864), a2 + 108);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 904), a2 + 113);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 944), a2 + 118);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 984), a2 + 123);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 1024), a2 + 128);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 1064), a2 + 133);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 1104), a2 + 138);
  return a1;
}

uint64_t re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(uint64_t a1, char **a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v6, *a2);
  re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::findEntry<char const*>(a1, a2, v4, &v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v7 + 16;
  }
}

uint64_t re::RigDefinition::deinit(re::RigDefinition *this)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 40);
  re::DynamicArray<re::RigBasicConstraint>::deinit(this + 80);
  re::DynamicArray<re::RigAimConstraint>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicRegisterIdTable::deinit((this + 200));
  re::DynamicArray<unsigned long>::deinit(this + 520);
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  re::DynamicArray<unsigned long>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 664);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::DynamicArray<re::RigTwoBoneIKHandles>::deinit(this + 744);
  re::DynamicArray<re::RigSingleChainIKHandles>::deinit(this + 784);
  re::DynamicArray<unsigned long>::deinit(this + 864);
  re::DynamicArray<unsigned long>::deinit(this + 904);
  re::DynamicArray<unsigned long>::deinit(this + 944);
  re::DynamicArray<unsigned long>::deinit(this + 984);
  re::DynamicArray<re::RigNode>::deinit(this + 1024);
  re::DynamicArray<unsigned long>::deinit(this + 1064);

  return re::DynamicArray<re::RigPose>::deinit(this + 1104);
}

void *re::FixedArray<re::internal::RigIKCall>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 136 * v2;
      v5 = (result[2] + 96);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 5);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 8);
        re::FixedArray<CoreIKTransform>::deinit(v5 - 11);
        v5 += 17;
        v4 -= 136;
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

uint64_t re::DynamicArray<re::internal::RigIKCall>::deinit(uint64_t a1)
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
        v5 = 136 * v4;
        v6 = (v3 + 96);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 5);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 8);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 11);
          v6 += 17;
          v5 -= 136;
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

uint64_t re::RigEvaluation::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 1280);
  if (v2 >= 1)
  {
    this = memset(*(this + 1288), 255, 24 * v2);
  }

  v3 = *(v1 + 1304);
  if (v3 >= 1)
  {
    this = memset(*(v1 + 1312), 255, 8 * v3);
  }

  v4 = *(v1 + 1160);
  if (v4 >= 1)
  {
    this = memset(*(v1 + 1168), 255, 8 * v4);
  }

  v5 = *(v1 + 1504);
  *(v1 + 1504) = 0;
  if (v5)
  {
    v6 = 136 * v5;
    v7 = (*(v1 + 1520) + 96);
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v7);
      re::FixedArray<CoreIKTransform>::deinit(v7 - 5);
      re::FixedArray<CoreIKTransform>::deinit(v7 - 8);
      this = re::FixedArray<CoreIKTransform>::deinit(v7 - 11);
      v7 += 17;
      v6 -= 136;
    }

    while (v6);
  }

  ++*(v1 + 1512);
  return this;
}

BOOL re::RigEvaluation::bindLocalSpaceJointInput(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v5 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(a1 + 1176, &v14);
  if (v5)
  {
    v6 = *v5;
    v7 = *(a1 + 1280);
    if (v7 <= *v5)
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v11 = MEMORY[0x1E69E9C10];
      v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 468;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(a1 + 1288) + 24 * v6;
    v9 = *a3;
    *(v8 + 16) = *(a3 + 2);
    *v8 = v9;
  }

  return v5 != 0;
}

BOOL re::RigEvaluation::bindModelSpaceJointInput(uint64_t a1, char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v5 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(a1 + 1176, &v12);
  if (v5)
  {
    v6 = *v5;
    v7 = *(a1 + 1304);
    if (v7 <= *v5)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
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

      v17 = 468;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    *(*(a1 + 1312) + 8 * v6) = a3;
  }

  return v5 != 0;
}

BOOL re::RigEvaluation::setDefaultPose(re::RigEvaluation *this, unint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(this + 146);
  v6 = *(this + 145);
  if (v6 >= 1)
  {
    memset(*(this + 146), 255, 8 * v6);
  }

  v7 = *(this + 141);
  if (v7 > a2)
  {
    v8 = *(this + 143) + 32 * a2;
    if (*(v8 + 16))
    {
      v9 = 0;
      do
      {
        v10 = v9 + *(v8 + 24);
        v11 = *(this + 136);
        if (v11 <= v10)
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

          v23 = 789;
          v24 = 2048;
          v25 = v10;
          v26 = 2048;
          v27 = v11;
          _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
LABEL_14:
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
          v25 = v11;
          v26 = 2048;
          v27 = v2;
          _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v11 = *(*(this + 138) + 24 * v10 + 16);
        v2 = *(this + 145);
        if (v2 <= v11)
        {
          goto LABEL_14;
        }

        *(v5 + 8 * v11) = v10;
        ++v9;
      }

      while (v9 < *(v8 + 16));
    }
  }

  return v7 > a2;
}

void re::RigEvaluation::constructEvaluationCommands(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21[0] = &unk_1F5CCF7F8;
  v21[1] = "Scratch Pad";
  v18 = 0;
  v19 = 0;
  v20 = 0;
  re::FixedArray<char const*>::init<>(&v18, v21, a3);
  if (a3)
  {
    v10 = 0;
    v11 = v19;
    v12 = (a2 + 8);
    do
    {
      if (v11 == v10)
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

        v27 = 468;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v11;
        _os_log_send_and_compose_impl(v16, &v23, v32, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v17, v18);
        _os_crash_msg();
        __break(1u);
      }

      v13 = *v12;
      v12 += 2;
      *(v20 + 8 * v10++) = v13;
    }

    while (a3 != v10);
  }

  else
  {
    v11 = v19;
  }

  re::RigEvaluation::constructEvaluationCommands(a1, v20, v11, a4, a5);
  if (v18 && v19)
  {
    (*(*v18 + 40))();
  }

  re::Allocator::~Allocator(v21);
}

{
  v1167 = *MEMORY[0x1E69E9840];
  v1105[1] = "Scratch Pad";
  v1106 = 0;
  v1105[0] = &unk_1F5CCF7F8;
  v1144 = 0;
  v9 = v1088;
  v1146 = 0u;
  v1147 = 0u;
  v1148 = 0u;
  v1149 = 0u;
  v1150 = 0;
  v1151 = 1;
  v1154 = 0;
  v1152 = 0;
  v1153 = 0;
  v1155 = 0;
  v1158 = 0;
  v1156 = 0;
  v1157 = 0;
  v1159 = 0;
  v1163 = 0;
  v1160 = 0u;
  v1161 = 0u;
  v1162 = 0;
  i = a1[131];
  v1103 = 0;
  v1102 = 0;
  v1104 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1102, v1105, i);
  v1100 = 0;
  v1099 = 0;
  v1101 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1099, v1105, i);
  v1097 = 0;
  v1096 = 0;
  v1098 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1096, v1105, i);
  v1094 = 0;
  v1093 = 0;
  v1095 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1093, v1105, i);
  v1091 = 0;
  v1090 = 0;
  v1092 = 0;
  re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1090, v1105, i);
  v1066 = i;
  if (!i)
  {
    v6 = 0;
    *v1089 = v1105;
    *&v1089[8] = 0u;
    v1088[0].n128_u64[0] = v1105;
    *(v1088 + 8) = 0u;
    goto LABEL_52;
  }

  v11 = 0;
  Rotation = 0x7FFFFFFFFFFFFFFELL;
  v9 = 0x8000000000000001;
  do
  {
    v1118.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add((a4 + 808), &v1118);
    v12 = v1100;
    if (v1100 <= v11)
    {
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v423 = MEMORY[0x1E69E9C10];
      v424 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v424)
      {
        v425 = 3;
      }

      else
      {
        v425 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v425, &v1067, &v1118, 80, &dword_1E1C61000, v423, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_663:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v426 = MEMORY[0x1E69E9C10];
      v427 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v427)
      {
        v428 = 3;
      }

      else
      {
        v428 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v428, &v1067, &v1118, 80, &dword_1E1C61000, v426, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_667:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v429 = MEMORY[0x1E69E9C10];
      v430 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v430)
      {
        v431 = 3;
      }

      else
      {
        v431 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v431, &v1067, &v1118, 80, &dword_1E1C61000, v429, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_671:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v432 = MEMORY[0x1E69E9C10];
      v433 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v433)
      {
        v434 = 3;
      }

      else
      {
        v434 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v434, &v1067, &v1118, 80, &dword_1E1C61000, v432, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_675:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v435 = MEMORY[0x1E69E9C10];
      v436 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v436)
      {
        v437 = 3;
      }

      else
      {
        v437 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v437, &v1067, &v1118, 80, &dword_1E1C61000, v435, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_679:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v438 = MEMORY[0x1E69E9C10];
      v439 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v439)
      {
        v440 = 3;
      }

      else
      {
        v440 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v440, &v1067, &v1118, 80, &dword_1E1C61000, v438, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_683:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v441 = MEMORY[0x1E69E9C10];
      v442 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v442)
      {
        v443 = 3;
      }

      else
      {
        v443 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v6;
      _os_log_send_and_compose_impl(v443, &v1067, &v1118, 80, &dword_1E1C61000, v441, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_687:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v444 = MEMORY[0x1E69E9C10];
      v445 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v445)
      {
        v446 = 3;
      }

      else
      {
        v446 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v446, &v1067, &v1118, 80, &dword_1E1C61000, v444, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_691:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v447 = MEMORY[0x1E69E9C10];
      v448 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v448)
      {
        v449 = 3;
      }

      else
      {
        v449 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v449, &v1067, &v1118, 80, &dword_1E1C61000, v447, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_695:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v450 = MEMORY[0x1E69E9C10];
      v451 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v451)
      {
        v452 = 3;
      }

      else
      {
        v452 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v6;
      _os_log_send_and_compose_impl(v452, &v1067, &v1118, 80, &dword_1E1C61000, v450, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_699:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v453 = MEMORY[0x1E69E9C10];
      v454 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v9 + 212) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v454)
      {
        v455 = 3;
      }

      else
      {
        v455 = 2;
      }

      *(v9 + 222) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v9 + 228) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(v9 + 238) = Rotation;
      _os_log_send_and_compose_impl(v455, v1137, &v1118, 80, &dword_1E1C61000, v453, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_703:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v456 = MEMORY[0x1E69E9C10];
      v457 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v457)
      {
        v458 = 3;
      }

      else
      {
        v458 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v458, &v1067, &v1118, 80, &dword_1E1C61000, v456, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_707:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v459 = MEMORY[0x1E69E9C10];
      v460 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v460)
      {
        v461 = 3;
      }

      else
      {
        v461 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v461, &v1067, &v1118, 80, &dword_1E1C61000, v459, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_711:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v462 = MEMORY[0x1E69E9C10];
      v463 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v463)
      {
        v464 = 3;
      }

      else
      {
        v464 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v464, &v1067, &v1118, 80, &dword_1E1C61000, v462, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_715:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v465 = MEMORY[0x1E69E9C10];
      v466 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v466)
      {
        v467 = 3;
      }

      else
      {
        v467 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v467, &v1067, &v1118, 80, &dword_1E1C61000, v465, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
      goto LABEL_719;
    }

    *(v1101 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v1118.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add((a4 + 808), &v1118);
    v12 = v1097;
    if (v1097 <= v11)
    {
      goto LABEL_663;
    }

    *(v1098 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v1118.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add((a4 + 808), &v1118);
    v12 = v1094;
    if (v1094 <= v11)
    {
      goto LABEL_667;
    }

    *(v1095 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v1118.n128_u64[0] = -1;
    re::DynamicArray<unsigned long>::add((a4 + 808), &v1118);
    v12 = v1091;
    if (v1091 <= v11)
    {
      goto LABEL_671;
    }

    v14 = v1092;
    *(v1092 + 8 * v11) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    v12 = v1094;
    if (v1094 <= v11)
    {
      goto LABEL_675;
    }

    v12 = v1100;
    if (v1100 <= v11)
    {
      goto LABEL_679;
    }

    v15 = v1095;
    v12 = *(v1095 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(a4 + 103);
    if (v6 <= v12)
    {
      goto LABEL_683;
    }

    v16 = *(a4 + 105);
    *(v16 + 8 * v12) = *(v1101 + 8 * v11);
    v12 = v1091;
    if (v1091 <= v11)
    {
      goto LABEL_687;
    }

    v12 = v1094;
    if (v1094 <= v11)
    {
      goto LABEL_691;
    }

    v12 = *(v14 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(a4 + 103);
    if (v6 <= v12)
    {
      goto LABEL_695;
    }

    *(v16 + 8 * v12) = *(v15 + 8 * v11++);
  }

  while (i != v11);
  v6 = 0;
  v9 = 0;
  v7 = 32;
  v12 = a1;
  do
  {
    v11 = *(v12 + 1048);
    if (v11 <= v9)
    {
      goto LABEL_703;
    }

    v11 = *(v12 + 1160);
    if (v11 <= v9)
    {
      goto LABEL_707;
    }

    v17 = *(v12 + 1064);
    v18 = *(*(v12 + 1168) + 8 * v9);
    if (v18 == -1)
    {
      v20 = (v17 + v7 - 8);
      v19 = (v17 + v7 - 16);
    }

    else
    {
      Rotation = *(v12 + 1088);
      if (Rotation <= v18)
      {
        goto LABEL_789;
      }

      v19 = (*(v12 + 1104) + 24 * v18);
      v20 = (v19 + 8);
    }

    v21 = *v19;
    v11 = *v20;
    if (v21 == 2)
    {
      Rotation = *(v12 + 928);
      if (Rotation <= v11)
      {
        goto LABEL_829;
      }

      v29 = *(v12 + 944) + 96 * v11;
      v30 = *(v29 + 80);
      v1118 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v29 + 32, 1, v30, &v1118, 1);
      _Q1 = *(v29 + 16);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v1118, v1118), v1118, 0xCuLL), vnegq_f32(_Q1)), v1118, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
      v33 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), v1118, _Q1, 3);
      _Q3.i32[0] = v1118.n128_i32[3];
      _Q2 = vmlaq_laneq_f32(v33, _Q1, v1118, 3);
      __asm { FMLA            S0, S3, V1.S[3] }

      _Q1 = *(v29 + 48);
      v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), vnegq_f32(_Q2)), _Q1, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
      v42 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), _Q1, _S0), _Q2, _Q1, 3);
      __asm { FMLA            S2, S0, V1.S[3] }

      v42.i32[3] = _Q2.i32[0];
      v43 = *(v29 + 72);
      v28 = *v29;
      v27 = *(v29 + 8);
      v1118.n128_u64[0] = *(v29 + 64);
      v1118.n128_u64[1] = v43;
      v1119 = v42;
    }

    else
    {
      if (v21 != 1)
      {
        goto LABEL_1477;
      }

      Rotation = *(v12 + 888);
      if (Rotation <= v11)
      {
        goto LABEL_825;
      }

      v22 = *(v12 + 904) + (v11 << 6);
      Rotation = *(v22 + 32);
      v23 = *(v22 + 40);
      v24 = *(v22 + 48);
      v1118 = xmmword_1E30474D0;
      re::convertIntrinsicEulersToQuaternions<float>(v22 + 16, 1, v24, &v1118, 1);
      v25 = v1118.n128_u64[1];
      v26 = v1118.n128_u64[0];
      v28 = *v22;
      v27 = *(v22 + 8);
      v1118.n128_u64[0] = Rotation;
      v1118.n128_u64[1] = v23;
      v1119.i64[0] = v26;
      v1119.i64[1] = v25;
    }

    *&v1120 = v28;
    *(&v1120 + 1) = v27;
    re::EvaluationTree::createInputRegister(a4, &v1118, v1108);
    v44 = re::EvaluationTree::constructMatrix4x4(a4, v1108[0].n128_i64[0], v1108[0].n128_i64[1], v1108[1].n128_i64[0]);
    v11 = *(v12 + 1280);
    if (v11 <= v9)
    {
      goto LABEL_711;
    }

    v45 = v44;
    v46 = (*(v12 + 1288) + v6);
    v13 = *v46;
    v11 = v44;
    if (*v46 != -1)
    {
      v47 = v46[1];
      v11 = v44;
      if (v47 != -1)
      {
        v48 = v46[2];
        v11 = v44;
        if (v48 != -1)
        {
          v11 = re::EvaluationTree::constructMatrix4x4(a4, v13, v47, v48);
        }
      }
    }

    Rotation = v1103;
    if (v1103 <= v9)
    {
      goto LABEL_715;
    }

    *(v1104 + 8 * v9) = v45;
    v12 = *(v17 + v7);
    Rotation = v1097;
    if (v12 == -1)
    {
      if (v1097 <= v9)
      {
        goto LABEL_857;
      }

      Rotation = *(v1098 + 8 * v9) - 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(a4 + 103);
      if (v12 <= Rotation)
      {
        goto LABEL_861;
      }

      v55 = *(a4 + 105);
      *(v55 + 8 * Rotation) = v45;
      Rotation = v1100;
      if (v1100 <= v9)
      {
        goto LABEL_865;
      }

      Rotation = *(v1101 + 8 * v9) - 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(a4 + 103);
      if (v12 <= Rotation)
      {
        goto LABEL_869;
      }

      *(v55 + 8 * Rotation) = v11;
    }

    else
    {
      if (v1097 <= v9)
      {
        goto LABEL_793;
      }

      if (v1097 <= v12)
      {
        goto LABEL_797;
      }

      i = *(v1098 + 8 * v9);
      v49 = *(v1098 + 8 * v12);
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      Rotation = *(a4 + 230) - 1;
      v50 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), Rotation);
      *(v50 + 8) = v49;
      *(v50 + 16) = v45;
      v12 = i - 0x7FFFFFFFFFFFFFFFLL;
      v51 = *(a4 + 103);
      if (v51 <= i - 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_801;
      }

      *(*(a4 + 105) + 8 * v12) = Rotation;
      Rotation = v1100;
      if (v1100 <= v9)
      {
        goto LABEL_805;
      }

      Rotation = *(v17 + v7);
      v12 = v1091;
      if (v1091 <= Rotation)
      {
        goto LABEL_809;
      }

      v12 = *(v1101 + 8 * v9);
      v52 = *(v1092 + 8 * Rotation);
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v53 = *(a4 + 230) - 1;
      v54 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v53);
      *(v54 + 8) = v52;
      *(v54 + 16) = v11;
      v11 = v12 - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v12 - 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_813;
      }

      *(*(a4 + 105) + 8 * v11) = v53;
      i = v1066;
    }

    ++v9;
    v6 += 24;
    v7 += 56;
    v12 = a1;
  }

  while (i != v9);
  memset(v1089, 0, sizeof(v1089));
  v11 = v1105;
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1089, v1105, i, &re::RigNode::kInvalidIndex);
  memset(v1088, 0, 24);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1088, v1105, i, &re::RigNode::kInvalidIndex);
  v56 = (*(v1105[0] + 32))(v1105, i, 1);
  if (!v56)
  {
    goto LABEL_1199;
  }

  v6 = v56;
  v58 = v56;
  if (i != 1)
  {
    bzero(v56, i - 1);
    v58 = (v6 + i - 1);
  }

  *v58 = 0;
  v9 = v1088;
LABEL_52:
  *&v1069 = 0;
  *&v1068 = 0;
  DWORD2(v1068) = 0;
  v1067 = v1105;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v1067, i);
  ++DWORD2(v1068);
  v1085 = 0;
  v1086 = 0;
  v1087 = 0;
  v59 = re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1085, v1105, i);
  if (i)
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v1118.n128_u64[0] = -1;
      v59 = re::DynamicArray<unsigned long>::add((a4 + 808), &v1118);
      Rotation = v1086;
      if (v1086 <= v11)
      {
        goto LABEL_699;
      }

      *(v1087 + 8 * v11++) = *(a4 + 103) + 0x7FFFFFFFFFFFFFFELL;
    }

    while (i != v11);
  }

  v60 = 0;
  v12 = a1;
  v61 = a1[166];
  v1140 = a1[167];
  v1141 = v61;
  v62 = a1[188];
  v1142 = a1[190];
  v1143 = v62;
  while (1)
  {
    v1059 = v60;
    v9 = *(&v1140 + v60 + 8);
    if (v9)
    {
      break;
    }

LABEL_112:
    v60 = v1059 + 16;
    if (v1059 == 16)
    {
      if (!v1068)
      {
        goto LABEL_918;
      }

      v79 = *v12;
      v80 = (*(**v12 + 32))(*v12, 168, 8);
      *v80 = 0u;
      *(v80 + 16) = 0u;
      *(v80 + 32) = 0u;
      *(v80 + 48) = 0u;
      *(v80 + 64) = 0u;
      *(v80 + 80) = 0u;
      *(v80 + 96) = 0u;
      *(v80 + 112) = 0u;
      *(v80 + 128) = 0u;
      *(v80 + 144) = 0u;
      *(v80 + 160) = 0;
      v1108[0].n128_u64[0] = &unk_1F5CB1AF8;
      v1108[0].n128_u64[1] = v79;
      v1108[1].n128_u64[1] = v1108;
      v9 = &v1118.n128_u64[1];
      v1118.n128_u64[0] = v80;
      *&v1120 = &v1118.n128_u64[1];
      v1118.n128_u64[1] = &unk_1F5CB1AF8;
      v1119.i64[0] = v79;
      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::operator=[abi:nn200100](&v1144, &v1118);
      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v1118);
      std::__function::__value_func<void ()(re::internal::RigIKCallbackData *)>::~__value_func[abi:nn200100](v1108);
      re::FixedArray<re::internal::RigIKCall>::init<>(v1144, *v12, *(v12 + 1504) + *(v12 + 1328));
      v81 = v1144;
      re::FixedArray<re::FixedArray<float>>::operator=(v1144 + 6, (v12 + 1344));
      re::FixedArray<re::FixedArray<float>>::operator=(v81 + 9, (v12 + 1368));
      re::FixedArray<re::TwoBoneIKOptions>::operator=((v81 + 12), v12 + 1392);
      re::FixedArray<re::FABRIKOptions>::operator=((v81 + 15), v12 + 1416);
      re::FixedArray<re::SplineIKOptions>::operator=((v81 + 18), v12 + 1440);
      *&v1139[2] = 0;
      memset(v1137, 0, sizeof(v1137));
      if (!*(v12 + 1328))
      {
        goto LABEL_743;
      }

      Rotation = 0;
      while (1)
      {
        v11 = v1144[1];
        if (v11 <= Rotation)
        {
          goto LABEL_1420;
        }

        v82 = *(v12 + 1336) + 136 * Rotation;
        v83 = v1144[2] + 136 * Rotation;
        *v83 = *v82;
        re::FixedArray<unsigned long>::operator=((v83 + 8), (v82 + 8));
        re::FixedArray<unsigned long>::operator=((v83 + 32), (v82 + 32));
        re::FixedArray<unsigned long>::operator=((v83 + 56), (v82 + 56));
        *(v83 + 80) = *(v82 + 80);
        re::FixedArray<re::Vector3<float>>::operator=((v83 + 96), (v82 + 96));
        *(v83 + 120) = *(v82 + 120);
        v11 = *(v12 + 1472);
        if (v11 <= Rotation)
        {
          break;
        }

        v85 = (*(v12 + 1480) + 16 * Rotation);
        v86 = *(v85 + 1);
        v87 = *v85;
        if (v87 == 3)
        {
          v11 = *(v12 + 1328);
          if (v11 <= Rotation)
          {
            goto LABEL_1457;
          }

          v1046 = v86;
          v1049 = Rotation;
          v11 = *(*(v12 + 1336) + 136 * Rotation + 128);
          Rotation = *(v12 + 848);
          if (Rotation <= v11)
          {
            goto LABEL_1473;
          }

          v90 = (*(v12 + 864) + 240 * v11);
          v91 = v90[1].n128_u64[1];
          memset(v1164, 0, 24);
          re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v1164, v1105, v91);
          Rotation = v90[1].n128_u64[1];
          v1060 = v90;
          if (Rotation)
          {
            v12 = 0;
            v11 = 0;
            while (1)
            {
              i = v90[1].n128_u64[1];
              if (i <= v11)
              {
                goto LABEL_1296;
              }

              v92 = (v90[2].n128_u64[1] + v12);
              v1118.n128_u32[0] = 4;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
              v1118.n128_u64[0] = *(a4 + 230) - 1;
              re::DynamicArray<unsigned long>::add((a4 + 168), &v1118);
              re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 488), (v92 + 2));
              i = *v92;
              v7 = v1094;
              if (v1094 <= *v92)
              {
                break;
              }

              v7 = *(*(a4 + 25) + 8 * *(a4 + 23) - 8);
              v93 = *(v1095 + 8 * i);
              v1118.n128_u32[0] = 28;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
              v94 = *(a4 + 230) - 1;
              v95 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v94);
              *(v95 + 8) = v93;
              *(v95 + 16) = v7;
              i = *&v1164[8];
              if (*&v1164[8] <= v11)
              {
                goto LABEL_1304;
              }

              *(*&v1164[16] + 8 * v11++) = v94;
              v12 += 80;
              v90 = v1060;
              if (Rotation == v11)
              {
                goto LABEL_138;
              }
            }

LABEL_1300:
            v1082 = 0;
            v1121 = 0u;
            v1122 = 0u;
            v1119 = 0u;
            v1120 = 0u;
            v1118 = 0u;
            v886 = MEMORY[0x1E69E9C10];
            v887 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v1108[0].n128_u32[0] = 136315906;
            *(v1108[0].n128_u64 + 4) = "operator[]";
            v1108[0].n128_u16[6] = 1024;
            if (v887)
            {
              v888 = 3;
            }

            else
            {
              v888 = 2;
            }

            *(&v1108[0].n128_u32[3] + 2) = 468;
            v1108[1].n128_u16[1] = 2048;
            *(v1108[1].n128_u64 + 4) = i;
            v1108[1].n128_u16[6] = 2048;
            *(&v1108[1].n128_u64[1] + 6) = v7;
            _os_log_send_and_compose_impl(v888, &v1082, &v1118, 80, &dword_1E1C61000, v886, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
            _os_crash_msg();
            __break(1u);
LABEL_1304:
            v1082 = 0;
            v1121 = 0u;
            v1122 = 0u;
            v1119 = 0u;
            v1120 = 0u;
            v1118 = 0u;
            v889 = MEMORY[0x1E69E9C10];
            v890 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v1108[0].n128_u32[0] = 136315906;
            *(v1108[0].n128_u64 + 4) = "operator[]";
            v1108[0].n128_u16[6] = 1024;
            if (v890)
            {
              v891 = 3;
            }

            else
            {
              v891 = 2;
            }

            *(&v1108[0].n128_u32[3] + 2) = 468;
            v1108[1].n128_u16[1] = 2048;
            *(v1108[1].n128_u64 + 4) = v11;
            v1108[1].n128_u16[6] = 2048;
            *(&v1108[1].n128_u64[1] + 6) = i;
            _os_log_send_and_compose_impl(v891, &v1082, &v1118, 80, &dword_1E1C61000, v889, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
            _os_crash_msg();
            __break(1u);
LABEL_1308:
            *v1137 = 0;
            v1121 = 0u;
            v1122 = 0u;
            v1119 = 0u;
            v1120 = 0u;
            v1118 = 0u;
            v892 = MEMORY[0x1E69E9C10];
            v893 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v1108[0].n128_u32[0] = 136315906;
            *(v1108[0].n128_u64 + 4) = "operator[]";
            v1108[0].n128_u16[6] = 1024;
            if (v893)
            {
              v894 = 3;
            }

            else
            {
              v894 = 2;
            }

            *(&v1108[0].n128_u32[3] + 2) = 468;
            v1108[1].n128_u16[1] = 2048;
            *(v1108[1].n128_u64 + 4) = Rotation;
            v1108[1].n128_u16[6] = 2048;
            *(&v1108[1].n128_u64[1] + 6) = v12;
            _os_log_send_and_compose_impl(v894, v1137, &v1118, 80, &dword_1E1C61000, v892, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
            _os_crash_msg();
            __break(1u);
            goto LABEL_1312;
          }

LABEL_138:
          v96 = v1144;
          v11 = v1144[1];
          Rotation = v1049;
          if (v11 <= v1049)
          {
            goto LABEL_1478;
          }

          *(v1144[2] + 136 * v1049 + 88) = *&v1137[16];
          v1053 = v90[4].n128_u64[0];
          if (v1053)
          {
            v12 = 0;
            do
            {
              v11 = v90[4].n128_u64[0];
              if (v11 <= v12)
              {
                goto LABEL_1340;
              }

              v97 = v90[5].n128_u64[0];
              v1118.n128_u32[0] = 7;
              v7 = v97 + 96 * v12;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
              v1118.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v7 + 80));
              v11 = v90[9].n128_u64[0];
              Rotation = v1094;
              if (v1094 <= v11)
              {
                goto LABEL_1344;
              }

              v1056 = v12;
              Rotation = v1097;
              if (v1097 <= v11)
              {
                goto LABEL_1348;
              }

              v12 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              i = *(v1095 + 8 * v11);
              v98 = *(v1098 + 8 * v11);
              v1118.n128_u32[0] = 20;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
              v99 = *(a4 + 230) - 1;
              *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v99) + 8) = v98;
              v1118.n128_u32[0] = 28;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
              Rotation = *(a4 + 230) - 1;
              v100 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), Rotation);
              *(v100 + 8) = i;
              *(v100 + 16) = v99;
              v1118.n128_u32[0] = 43;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
              v1063 = *(a4 + 245) - 1;
              v101 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v1063);
              *(v101 + 8) = Rotation;
              *(v101 + 16) = v12;
              v1108[0] = 0uLL;
              v1118.n128_u32[0] = 7;
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
              v1118.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1108);
              v1079 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              v102 = *(v7 + 16);
              if (v102)
              {
                for (i = 0; i != v102; ++i)
                {
                  Rotation = *(v7 + 56);
                  if (Rotation <= i)
                  {
                    goto LABEL_881;
                  }

                  v103 = (*(v7 + 72) + 4 * i);
                  v104 = vld1q_dup_f32(v103);
                  v1108[0] = v104;
                  v1118.n128_u32[0] = 7;
                  v1119 = 0uLL;
                  v1118.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
                  v1118.n128_u64[0] = *(a4 + 245) - 1;
                  re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
                  re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1108);
                  Rotation = *(v7 + 16);
                  if (Rotation <= i)
                  {
                    goto LABEL_885;
                  }

                  Rotation = *(*(v7 + 32) + 8 * i);
                  v12 = *&v1164[8];
                  if (*&v1164[8] <= Rotation)
                  {
                    goto LABEL_889;
                  }

                  v105 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
                  v12 = v1079;
                  v106 = *(*&v1164[16] + 8 * Rotation);
                  v1118.n128_u32[0] = 43;
                  v1119 = 0uLL;
                  v1118.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
                  v107 = *(a4 + 245) - 1;
                  v108 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v107);
                  *(v108 + 8) = v106;
                  *(v108 + 16) = v1063;
                  v1118.n128_u32[0] = 25;
                  v1119 = 0uLL;
                  v1118.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
                  Rotation = *(a4 + 245) - 1;
                  v109 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
                  *(v109 + 8) = v107;
                  *(v109 + 16) = v105;
                  v1118.n128_u32[0] = 8;
                  v1119 = 0uLL;
                  v1118.n128_u64[1] = 0;
                  re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
                  v110 = *(a4 + 245) - 1;
                  v111 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v110);
                  *(v111 + 8) = v12;
                  *(v111 + 16) = Rotation;
                  v1079 = v110;
                }
              }

              re::DynamicArray<unsigned long>::add(v1137, &v1079);
              v12 = v1056 + 1;
              v90 = v1060;
            }

            while (v1056 + 1 != v1053);
            v96 = v1144;
            Rotation = v1049;
          }

          v11 = v96[19];
          v112 = v1046;
          if (v11 <= v1046)
          {
            goto LABEL_1482;
          }

          v11 = v96[1];
          v12 = a1;
          if (v11 <= Rotation)
          {
            goto LABEL_1486;
          }

          *(v96[2] + 136 * Rotation + 120) = v96[20] + 80 * v1046;
          if (v90[10].n128_u64[0] != -1)
          {
            v1118.n128_u32[0] = 7;
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
            v1118.n128_u64[0] = *(a4 + 245) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v90 + 11);
            v11 = v90[10].n128_u64[0];
            Rotation = v1094;
            if (v1094 <= v11)
            {
              goto LABEL_1490;
            }

            v1118.n128_u64[0] = re::EvaluationTree::transformDirection(a4, *(v1095 + 8 * v11), *(*(a4 + 40) + 8 * *(a4 + 38) - 8));
            re::DynamicArray<unsigned long>::add(v1137, &v1118);
            Rotation = v1049;
          }

          if (v90[10].n128_u64[1] != -1)
          {
            v1118.n128_u32[0] = 7;
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
            v1118.n128_u64[0] = *(a4 + 245) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v90 + 12);
            v11 = v90[10].n128_u64[1];
            Rotation = v1094;
            if (v1094 <= v11)
            {
              goto LABEL_1494;
            }

            v1118.n128_u64[0] = re::EvaluationTree::transformDirection(a4, *(v1095 + 8 * v11), *(*(a4 + 40) + 8 * *(a4 + 38) - 8));
            re::DynamicArray<unsigned long>::add(v1137, &v1118);
            Rotation = v1049;
          }

          if (*v1164 && *&v1164[8])
          {
            (*(**v1164 + 40))();
          }
        }

        else
        {
          if (v87 == 2)
          {
            v88 = v1144;
            v11 = v1144[16];
            if (v11 <= v86)
            {
              goto LABEL_1461;
            }

            v11 = v1144[1];
            if (v11 <= Rotation)
            {
              goto LABEL_1469;
            }

            v89 = v1144[17] + 8 * v86;
          }

          else
          {
            if (v87 != 1)
            {
              goto LABEL_1508;
            }

            v88 = v1144;
            v11 = v1144[13];
            if (v11 <= v86)
            {
              goto LABEL_1453;
            }

            v11 = v1144[1];
            if (v11 <= Rotation)
            {
              goto LABEL_1465;
            }

            v89 = v1144[14] + 32 * v86;
          }

          *(v88[2] + 136 * Rotation + 120) = v89;
        }

        if (++Rotation >= *(v12 + 1328))
        {
          goto LABEL_743;
        }
      }

LABEL_1424:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v979 = MEMORY[0x1E69E9C10];
      v980 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v980)
      {
        v981 = 3;
      }

      else
      {
        v981 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v981, v1164, &v1118, 80, &dword_1E1C61000, v979, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1428:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v982 = MEMORY[0x1E69E9C10];
      v983 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v983)
      {
        v984 = 3;
      }

      else
      {
        v984 = 2;
      }

      *&v1164[14] = 468;
      *&v1164[18] = 2048;
      *&v1164[20] = v11;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v984, &v1107, v1108, 80, &dword_1E1C61000, v982, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1432:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v985 = MEMORY[0x1E69E9C10];
      v986 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v986)
      {
        v987 = 3;
      }

      else
      {
        v987 = 2;
      }

      *&v1164[14] = 468;
      *&v1164[18] = 2048;
      *&v1164[20] = v11;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v987, &v1107, v1108, 80, &dword_1E1C61000, v985, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1436:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v988 = MEMORY[0x1E69E9C10];
      v989 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v989)
      {
        v990 = 3;
      }

      else
      {
        v990 = 2;
      }

      *&v1164[14] = 468;
      *&v1164[18] = 2048;
      *&v1164[20] = Rotation;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v990, &v1107, v1108, 80, &dword_1E1C61000, v988, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1440:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v991 = MEMORY[0x1E69E9C10];
      v992 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v992)
      {
        v993 = 3;
      }

      else
      {
        v993 = 2;
      }

      *&v1164[14] = 468;
      *&v1164[18] = 2048;
      *&v1164[20] = Rotation;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v993, &v1107, v1108, 80, &dword_1E1C61000, v991, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1444:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v994 = MEMORY[0x1E69E9C10];
      v995 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v995)
      {
        v996 = 3;
      }

      else
      {
        v996 = 2;
      }

      *&v1164[14] = 789;
      *&v1164[18] = 2048;
      *&v1164[20] = v11;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v996, &v1107, v1108, 80, &dword_1E1C61000, v994, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1448:
      v1107 = 0;
      v1109 = 0u;
      v1110 = 0u;
      memset(v1108, 0, sizeof(v1108));
      v997 = MEMORY[0x1E69E9C10];
      v998 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1164 = 136315906;
      *&v1164[4] = "operator[]";
      *&v1164[12] = 1024;
      if (v998)
      {
        v999 = 3;
      }

      else
      {
        v999 = 2;
      }

      *&v1164[14] = 789;
      *&v1164[18] = 2048;
      *&v1164[20] = v11;
      v1165 = 2048;
      v1166 = v12;
      _os_log_send_and_compose_impl(v999, &v1107, v1108, 80, &dword_1E1C61000, v997, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1452:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Unexpected rig parameter type.", "!Unreachable code", "constructEvaluationCommands", 1456);
      _os_crash("assertion failure: (!Unreachable code) Unexpected rig parameter type.");
      __break(1u);
LABEL_1453:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1000 = MEMORY[0x1E69E9C10];
      v1001 = v86;
      v1002 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1002)
      {
        v1003 = 3;
      }

      else
      {
        v1003 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v1001;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1003, v1164, &v1118, 80, &dword_1E1C61000, v1000, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1457:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1004 = MEMORY[0x1E69E9C10];
      v1005 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1005)
      {
        v1006 = 3;
      }

      else
      {
        v1006 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1006, v1164, &v1118, 80, &dword_1E1C61000, v1004, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1461:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1007 = MEMORY[0x1E69E9C10];
      v1008 = v86;
      v1009 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1009)
      {
        v1010 = 3;
      }

      else
      {
        v1010 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v1008;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1010, v1164, &v1118, 80, &dword_1E1C61000, v1007, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1465:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1011 = MEMORY[0x1E69E9C10];
      v1012 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1012)
      {
        v1013 = 3;
      }

      else
      {
        v1013 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1013, v1164, &v1118, 80, &dword_1E1C61000, v1011, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1469:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1014 = MEMORY[0x1E69E9C10];
      v1015 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1015)
      {
        v1016 = 3;
      }

      else
      {
        v1016 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1016, v1164, &v1118, 80, &dword_1E1C61000, v1014, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1473:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1017 = MEMORY[0x1E69E9C10];
      v1018 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1018)
      {
        v1019 = 3;
      }

      else
      {
        v1019 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v1019, v1164, &v1118, 80, &dword_1E1C61000, v1017, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1477:
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Unexpected rig node type.", "!Unreachable code", "constructEvaluationCommands", 728);
      _os_crash("assertion failure: (!Unreachable code) Unexpected rig node type.");
      __break(1u);
LABEL_1478:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1020 = MEMORY[0x1E69E9C10];
      v1021 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1021)
      {
        v1022 = 3;
      }

      else
      {
        v1022 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1022, &v1082, &v1118, 80, &dword_1E1C61000, v1020, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1482:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1023 = MEMORY[0x1E69E9C10];
      v1024 = v112;
      v1025 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1025)
      {
        v1026 = 3;
      }

      else
      {
        v1026 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v1024;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1026, &v1082, &v1118, 80, &dword_1E1C61000, v1023, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1486:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1027 = MEMORY[0x1E69E9C10];
      v1028 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1028)
      {
        v1029 = 3;
      }

      else
      {
        v1029 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v1029, &v1082, &v1118, 80, &dword_1E1C61000, v1027, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1490:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1030 = MEMORY[0x1E69E9C10];
      v1031 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1031)
      {
        v1032 = 3;
      }

      else
      {
        v1032 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v1032, &v1082, &v1118, 80, &dword_1E1C61000, v1030, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1494:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v1033 = MEMORY[0x1E69E9C10];
      v1034 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v1034)
      {
        v1035 = 3;
      }

      else
      {
        v1035 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v1035, &v1082, &v1118, 80, &dword_1E1C61000, v1033, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1498:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Unexpected node channel type.", "!Unreachable code", "constructEvaluationCommands", 1433);
      _os_crash("assertion failure: (!Unreachable code) Unexpected node channel type.");
      __break(1u);
LABEL_1499:
      re::internal::assertLog(4, v123, "assertion failure: '%s' (%s:line %i) Invalid parameter rig node type.", "!Unreachable code", "constructEvaluationCommands", 1417);
      _os_crash("assertion failure: (!Unreachable code) Invalid parameter rig node type.");
      __break(1u);
LABEL_1500:
      re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected constraint type.", "!Unreachable code", "constructEvaluationCommands", 1574);
      _os_crash("assertion failure: (!Unreachable code) Unexpected constraint type.");
      __break(1u);
LABEL_1501:
      re::internal::assertLog(5, v123, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1443, v134);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v1036);
      __break(1u);
LABEL_1502:
      re::internal::assertLog(5, v123, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1451, v139);
      _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v1037);
      __break(1u);
LABEL_1503:
      re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected rig destination type.", "!Unreachable code", "constructEvaluationCommands", 1568);
      _os_crash("assertion failure: (!Unreachable code) Unexpected rig destination type.");
      __break(1u);
LABEL_1504:
      re::internal::assertLog(4, v192, "assertion failure: '%s' (%s:line %i) Unexpected aim constraint forward axis type.", "!Unreachable code", "constructEvaluationCommands", 1260);
      _os_crash("assertion failure: (!Unreachable code) Unexpected aim constraint forward axis type.");
      __break(1u);
    }
  }

  v63 = 0;
  v1062 = *(&v1140 + v60);
  do
  {
    v64 = v1062 + 136 * v63;
    v12 = *(v64 + 64);
    if (v12)
    {
      v65 = 0;
      while (v12 > v65)
      {
        v12 = *(*(v64 + 72) + 8 * v65);
        *v1164 = v12;
        v7 = *&v1089[8];
        if (*&v1089[8] <= v12)
        {
          goto LABEL_532;
        }

        if (*(*&v1089[16] + 8 * v12) == -1)
        {
          *(*&v1089[16] + 8 * v12) = v1068;
          v12 = *v1164;
          v7 = v1086;
          if (v1086 <= *v1164)
          {
            goto LABEL_536;
          }

          v7 = v1094;
          if (v1094 <= *v1164)
          {
            goto LABEL_540;
          }

          v7 = *(v1087 + 8 * *v1164) - 0x7FFFFFFFFFFFFFFFLL;
          Rotation = *(a4 + 103);
          if (Rotation <= v7)
          {
            goto LABEL_544;
          }

          *(*(a4 + 105) + 8 * v7) = *(v1095 + 8 * *v1164);
          v12 = *v1164;
          if (v1066 <= *v1164)
          {
            goto LABEL_548;
          }

          *(v6 + *v1164) = 0;
          v59 = re::DynamicArray<unsigned long>::add(&v1067, v1164);
        }

        ++v65;
        v12 = *(v64 + 64);
        if (v65 >= v12)
        {
          goto LABEL_70;
        }
      }

      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v391 = MEMORY[0x1E69E9C10];
      v392 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v392)
      {
        v393 = 3;
      }

      else
      {
        v393 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v65;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v393, v1137, &v1118, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_532:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v394 = MEMORY[0x1E69E9C10];
      v395 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v395)
      {
        v396 = 3;
      }

      else
      {
        v396 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl(v396, v1137, &v1118, 80, &dword_1E1C61000, v394, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_536:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v397 = MEMORY[0x1E69E9C10];
      v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v398)
      {
        v399 = 3;
      }

      else
      {
        v399 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl(v399, v1137, &v1118, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_540:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v400 = MEMORY[0x1E69E9C10];
      v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v401)
      {
        v402 = 3;
      }

      else
      {
        v402 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v7;
      _os_log_send_and_compose_impl(v402, v1137, &v1118, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_544:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v403 = MEMORY[0x1E69E9C10];
      v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v404)
      {
        v405 = 3;
      }

      else
      {
        v405 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v7;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v405, v1137, &v1118, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_548:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v406 = MEMORY[0x1E69E9C10];
      v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v407)
      {
        v408 = 3;
      }

      else
      {
        v408 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v1066;
      _os_log_send_and_compose_impl(v408, v1137, &v1118, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
      goto LABEL_552;
    }

LABEL_70:
    ++v63;
  }

  while (v63 != v9);
  v66 = 0;
  v12 = a1;
  i = v1066;
  while (1)
  {
    v1045 = v66;
    v67 = (v1062 + 136 * v66);
    v1052 = v67[5];
    if (v1052)
    {
      break;
    }

LABEL_111:
    v66 = v1045 + 1;
    if (v1045 + 1 == v9)
    {
      goto LABEL_112;
    }
  }

  v68 = 0;
  v1048 = (v1062 + 136 * v66);
  while (1)
  {
    v11 = v67[5];
    if (v11 <= v68)
    {
      goto LABEL_1079;
    }

    v11 = v67[2];
    if (v11 <= v68)
    {
LABEL_1083:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v727 = v68;
      v728 = MEMORY[0x1E69E9C10];
      v729 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v729)
      {
        v730 = 3;
      }

      else
      {
        v730 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 476;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v727;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v11;
      _os_log_send_and_compose_impl(v730, v1137, &v1118, 80, &dword_1E1C61000, v728, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1087;
    }

    v11 = *(v67[6] + 8 * v68);
    v1055 = v68;
    *v1164 = *(v67[3] + 8 * v68);
    v1082 = v11;
    v69 = v11;
    if (v11 != *v1164)
    {
      break;
    }

LABEL_93:
    Rotation = *&v1089[8];
    if (*&v1089[8] <= v69)
    {
      goto LABEL_1127;
    }

    if (*(*&v1089[16] + 8 * v69) == -1)
    {
      *(*&v1089[16] + 8 * v69) = v1068;
      Rotation = *v1164;
      v12 = v1066;
      if (v1066 <= *v1164)
      {
        goto LABEL_1308;
      }

      *(v6 + *v1164) = 2;
      v12 = *v1164;
      Rotation = v1086;
      if (v1086 <= *v1164)
      {
LABEL_1312:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v895 = MEMORY[0x1E69E9C10];
        v896 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v896)
        {
          v897 = 3;
        }

        else
        {
          v897 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v897, v1137, &v1118, 80, &dword_1E1C61000, v895, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1316:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v898 = MEMORY[0x1E69E9C10];
        v899 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v899)
        {
          v900 = 3;
        }

        else
        {
          v900 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v900, v1137, &v1118, 80, &dword_1E1C61000, v898, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1320:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v901 = MEMORY[0x1E69E9C10];
        v902 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v902)
        {
          v903 = 3;
        }

        else
        {
          v903 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 789;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = i;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v903, v1137, &v1118, 80, &dword_1E1C61000, v901, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1324:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v904 = MEMORY[0x1E69E9C10];
        v905 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v905)
        {
          v906 = 3;
        }

        else
        {
          v906 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v906, v1164, &v1118, 80, &dword_1E1C61000, v904, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1328:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v907 = MEMORY[0x1E69E9C10];
        v908 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v908)
        {
          v909 = 3;
        }

        else
        {
          v909 = 2;
        }

        *&v1137[14] = 789;
        *&v1137[18] = 2048;
        *&v1137[20] = Rotation;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v909, v1164, &v1118, 80, &dword_1E1C61000, v907, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1332:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v910 = MEMORY[0x1E69E9C10];
        v911 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v911)
        {
          v912 = 3;
        }

        else
        {
          v912 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = 1;
        v1138 = 2048;
        *v1139 = 1;
        _os_log_send_and_compose_impl(v912, v1164, &v1118, 80, &dword_1E1C61000, v910, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1336:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v913 = MEMORY[0x1E69E9C10];
        v914 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v914)
        {
          v915 = 3;
        }

        else
        {
          v915 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = 1;
        v1138 = 2048;
        *v1139 = 1;
        _os_log_send_and_compose_impl(v915, v1164, &v1118, 80, &dword_1E1C61000, v913, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1340:
        v1082 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v916 = MEMORY[0x1E69E9C10];
        v917 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v917)
        {
          v918 = 3;
        }

        else
        {
          v918 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 797;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v11;
        _os_log_send_and_compose_impl(v918, &v1082, &v1118, 80, &dword_1E1C61000, v916, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1344:
        v1082 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v919 = MEMORY[0x1E69E9C10];
        v920 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v920)
        {
          v921 = 3;
        }

        else
        {
          v921 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v921, &v1082, &v1118, 80, &dword_1E1C61000, v919, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1348:
        v1082 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v922 = MEMORY[0x1E69E9C10];
        v923 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v923)
        {
          v924 = 3;
        }

        else
        {
          v924 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v924, &v1082, &v1118, 80, &dword_1E1C61000, v922, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1352:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v925 = MEMORY[0x1E69E9C10];
        v926 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v926)
        {
          v927 = 3;
        }

        else
        {
          v927 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v927, &v1140, &v1118, 80, &dword_1E1C61000, v925, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1356:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v928 = MEMORY[0x1E69E9C10];
        v929 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v929)
        {
          v930 = 3;
        }

        else
        {
          v930 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v930, &v1140, &v1118, 80, &dword_1E1C61000, v928, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1360:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v931 = MEMORY[0x1E69E9C10];
        v932 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v932)
        {
          v933 = 3;
        }

        else
        {
          v933 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v9;
        _os_log_send_and_compose_impl(v933, v1164, &v1118, 80, &dword_1E1C61000, v931, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1364:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v934 = MEMORY[0x1E69E9C10];
        v935 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v935)
        {
          v936 = 3;
        }

        else
        {
          v936 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v936, &v1140, &v1118, 80, &dword_1E1C61000, v934, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1368:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v937 = MEMORY[0x1E69E9C10];
        v938 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v938)
        {
          v939 = 3;
        }

        else
        {
          v939 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v939, &v1140, &v1118, 80, &dword_1E1C61000, v937, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1372;
      }

      Rotation = v1094;
      if (v1094 <= *v1164)
      {
        goto LABEL_1316;
      }

      i = *(v1087 + 8 * *v1164) - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= i)
      {
        goto LABEL_1320;
      }

      *(*(a4 + 105) + 8 * i) = *(v1095 + 8 * *v1164);
      v59 = re::DynamicArray<unsigned long>::add(&v1067, v1164);
      v69 = *v1164;
      i = v1066;
    }

    else
    {
      i = v1066;
      if (v1066 <= v69)
      {
        goto LABEL_1204;
      }

      if (*(v6 + v69) != 2)
      {
        v411 = v1118;
        v412 = v1119;
        *a5 = 0;
        *(a5 + 8) = 3000;
        *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a5 + 24) = v411;
        *(a5 + 40) = v412;
        v12 = a1;
        goto LABEL_165;
      }
    }

    v67 = v1048;
    if (v11 != v69)
    {
      v74 = *&v1089[16];
      v75 = v1088[1].n128_u64[0];
      v12 = a1[131];
      do
      {
        if (v12 <= v11)
        {
          goto LABEL_723;
        }

        v76 = a1[133] + 56 * v11;
        v78 = *(v76 + 32);
        v77 = (v76 + 32);
        v12 = v78;
        Rotation = *&v1089[8];
        if (*&v1089[8] <= v78)
        {
          goto LABEL_727;
        }

        Rotation = v1088[0].n128_u64[1];
        if (v1088[0].n128_u64[1] <= v11)
        {
          goto LABEL_731;
        }

        *(v75 + 8 * v11) = *(v74 + 8 * v12);
        v12 = a1[131];
        if (v12 <= v11)
        {
          goto LABEL_735;
        }

        v11 = *v77;
      }

      while (*v77 != *v1164);
    }

    v68 = v1055 + 1;
    v12 = a1;
    if (v1055 + 1 == v1052)
    {
      goto LABEL_111;
    }
  }

  i = *(v12 + 1048);
  v69 = v11;
  while (1)
  {
    if (i <= v69)
    {
      goto LABEL_833;
    }

    v7 = *(*(v12 + 1064) + 56 * v69 + 32);
    if (v7 == -1)
    {
      break;
    }

    Rotation = *&v1089[8];
    if (*&v1089[8] <= v69)
    {
      goto LABEL_837;
    }

    if (*(*&v1089[16] + 8 * v69) == -1)
    {
      *(*&v1089[16] + 8 * v69) = v1068;
      Rotation = v1082;
      v12 = v1066;
      if (v1066 <= v1082)
      {
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v603 = MEMORY[0x1E69E9C10];
        v604 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v604)
        {
          v605 = 3;
        }

        else
        {
          v605 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = Rotation;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v1066;
        _os_log_send_and_compose_impl(v605, v1137, &v1118, 80, &dword_1E1C61000, v603, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_923:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v606 = MEMORY[0x1E69E9C10];
        v607 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v607)
        {
          v608 = 3;
        }

        else
        {
          v608 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl(v608, v1137, &v1118, 80, &dword_1E1C61000, v606, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_927:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v609 = MEMORY[0x1E69E9C10];
        v610 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v610)
        {
          v611 = 3;
        }

        else
        {
          v611 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v7;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl(v611, v1137, &v1118, 80, &dword_1E1C61000, v609, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_931:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v612 = MEMORY[0x1E69E9C10];
        v613 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v613)
        {
          v614 = 3;
        }

        else
        {
          v614 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v614, v1137, &v1118, 80, &dword_1E1C61000, v612, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_935:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v615 = MEMORY[0x1E69E9C10];
        v616 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v616)
        {
          v617 = 3;
        }

        else
        {
          v617 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 789;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v617, v1137, &v1118, 80, &dword_1E1C61000, v615, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_939:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v618 = MEMORY[0x1E69E9C10];
        v619 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v619)
        {
          v620 = 3;
        }

        else
        {
          v620 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v620, &v1140, &v1118, 80, &dword_1E1C61000, v618, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_943:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v621 = MEMORY[0x1E69E9C10];
        v622 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v622)
        {
          v623 = 3;
        }

        else
        {
          v623 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v623, &v1140, &v1118, 80, &dword_1E1C61000, v621, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_947:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v624 = MEMORY[0x1E69E9C10];
        v625 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v625)
        {
          v626 = 3;
        }

        else
        {
          v626 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v626, v1164, &v1118, 80, &dword_1E1C61000, v624, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_951:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v627 = MEMORY[0x1E69E9C10];
        v628 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v628)
        {
          v629 = 3;
        }

        else
        {
          v629 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v629, v1164, &v1118, 80, &dword_1E1C61000, v627, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_955:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v630 = MEMORY[0x1E69E9C10];
        v631 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v631)
        {
          v632 = 3;
        }

        else
        {
          v632 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v632, v1164, &v1118, 80, &dword_1E1C61000, v630, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_959:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v633 = MEMORY[0x1E69E9C10];
        v634 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v634)
        {
          v635 = 3;
        }

        else
        {
          v635 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v635, v1164, &v1118, 80, &dword_1E1C61000, v633, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_963:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v636 = MEMORY[0x1E69E9C10];
        v637 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v637)
        {
          v638 = 3;
        }

        else
        {
          v638 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v638, v1164, &v1118, 80, &dword_1E1C61000, v636, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_967:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v639 = MEMORY[0x1E69E9C10];
        v640 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v640)
        {
          v641 = 3;
        }

        else
        {
          v641 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v7;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v641, v1164, &v1118, 80, &dword_1E1C61000, v639, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_971:
        *v1089 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v642 = MEMORY[0x1E69E9C10];
        v643 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v643)
        {
          v644 = 3;
        }

        else
        {
          v644 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = i;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v644, v1089, &v1118, 80, &dword_1E1C61000, v642, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_975:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v645 = MEMORY[0x1E69E9C10];
        v646 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v646)
        {
          v647 = 3;
        }

        else
        {
          v647 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v12;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v647, v1164, &v1118, 80, &dword_1E1C61000, v645, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_979:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v648 = MEMORY[0x1E69E9C10];
        v649 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v649)
        {
          v650 = 3;
        }

        else
        {
          v650 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v650, &v1140, &v1118, 80, &dword_1E1C61000, v648, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_983:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v651 = MEMORY[0x1E69E9C10];
        v652 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v652)
        {
          v653 = 3;
        }

        else
        {
          v653 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v653, &v1140, &v1118, 80, &dword_1E1C61000, v651, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_987:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v654 = MEMORY[0x1E69E9C10];
        v655 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v655)
        {
          v656 = 3;
        }

        else
        {
          v656 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v656, &v1140, &v1118, 80, &dword_1E1C61000, v654, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_991:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v657 = MEMORY[0x1E69E9C10];
        v658 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v658)
        {
          v659 = 3;
        }

        else
        {
          v659 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v659, &v1140, &v1118, 80, &dword_1E1C61000, v657, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_995:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v660 = MEMORY[0x1E69E9C10];
        v661 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v661)
        {
          v662 = 3;
        }

        else
        {
          v662 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v662, &v1140, &v1118, 80, &dword_1E1C61000, v660, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_999:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v663 = MEMORY[0x1E69E9C10];
        v664 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v664)
        {
          v665 = 3;
        }

        else
        {
          v665 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v665, &v1140, &v1118, 80, &dword_1E1C61000, v663, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1003:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v666 = MEMORY[0x1E69E9C10];
        v667 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v667)
        {
          v668 = 3;
        }

        else
        {
          v668 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v668, &v1140, &v1118, 80, &dword_1E1C61000, v666, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1007:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v669 = MEMORY[0x1E69E9C10];
        v670 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v670)
        {
          v671 = 3;
        }

        else
        {
          v671 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v671, &v1140, &v1118, 80, &dword_1E1C61000, v669, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1011:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v672 = MEMORY[0x1E69E9C10];
        v673 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v673)
        {
          v674 = 3;
        }

        else
        {
          v674 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v674, &v1140, &v1118, 80, &dword_1E1C61000, v672, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1015:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v675 = MEMORY[0x1E69E9C10];
        v676 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v676)
        {
          v677 = 3;
        }

        else
        {
          v677 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v677, &v1140, &v1118, 80, &dword_1E1C61000, v675, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1019:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v678 = MEMORY[0x1E69E9C10];
        v679 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v679)
        {
          v680 = 3;
        }

        else
        {
          v680 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v680, &v1140, &v1118, 80, &dword_1E1C61000, v678, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1023:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v681 = MEMORY[0x1E69E9C10];
        v682 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v682)
        {
          v683 = 3;
        }

        else
        {
          v683 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v683, &v1140, &v1118, 80, &dword_1E1C61000, v681, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1027:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v684 = MEMORY[0x1E69E9C10];
        v685 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v685)
        {
          v686 = 3;
        }

        else
        {
          v686 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v686, &v1140, &v1118, 80, &dword_1E1C61000, v684, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1031:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v687 = MEMORY[0x1E69E9C10];
        v688 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v688)
        {
          v689 = 3;
        }

        else
        {
          v689 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v689, &v1140, &v1118, 80, &dword_1E1C61000, v687, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1035:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v690 = MEMORY[0x1E69E9C10];
        v691 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v691)
        {
          v692 = 3;
        }

        else
        {
          v692 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v692, &v1140, &v1118, 80, &dword_1E1C61000, v690, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1039:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v693 = MEMORY[0x1E69E9C10];
        v694 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v694)
        {
          v695 = 3;
        }

        else
        {
          v695 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v695, &v1140, &v1118, 80, &dword_1E1C61000, v693, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1043:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v696 = MEMORY[0x1E69E9C10];
        v697 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v697)
        {
          v698 = 3;
        }

        else
        {
          v698 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v698, &v1140, &v1118, 80, &dword_1E1C61000, v696, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1047:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v699 = MEMORY[0x1E69E9C10];
        v700 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v700)
        {
          v701 = 3;
        }

        else
        {
          v701 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v701, &v1140, &v1118, 80, &dword_1E1C61000, v699, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1051:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v702 = MEMORY[0x1E69E9C10];
        v703 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v703)
        {
          v704 = 3;
        }

        else
        {
          v704 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v704, &v1140, &v1118, 80, &dword_1E1C61000, v702, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1055:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v705 = MEMORY[0x1E69E9C10];
        v706 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v706)
        {
          v707 = 3;
        }

        else
        {
          v707 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v707, &v1140, &v1118, 80, &dword_1E1C61000, v705, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1059:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v708 = MEMORY[0x1E69E9C10];
        v709 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v709)
        {
          v710 = 3;
        }

        else
        {
          v710 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v710, &v1140, &v1118, 80, &dword_1E1C61000, v708, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1063:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v711 = MEMORY[0x1E69E9C10];
        v712 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v712)
        {
          v713 = 3;
        }

        else
        {
          v713 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v713, &v1140, &v1118, 80, &dword_1E1C61000, v711, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1067:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v714 = MEMORY[0x1E69E9C10];
        v715 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v715)
        {
          v716 = 3;
        }

        else
        {
          v716 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v716, &v1140, &v1118, 80, &dword_1E1C61000, v714, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1071:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v717 = MEMORY[0x1E69E9C10];
        v718 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v718)
        {
          v719 = 3;
        }

        else
        {
          v719 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v719, &v1140, &v1118, 80, &dword_1E1C61000, v717, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1075:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v720 = MEMORY[0x1E69E9C10];
        v721 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v721)
        {
          v722 = 3;
        }

        else
        {
          v722 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v722, &v1140, &v1118, 80, &dword_1E1C61000, v720, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1079:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v723 = v68;
        v724 = MEMORY[0x1E69E9C10];
        v725 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v725)
        {
          v726 = 3;
        }

        else
        {
          v726 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 476;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v723;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v11;
        _os_log_send_and_compose_impl(v726, v1137, &v1118, 80, &dword_1E1C61000, v724, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1083;
      }

      *(v6 + v1082) = 1;
      v12 = v1082;
      i = v1086;
      if (v1086 <= v1082)
      {
        goto LABEL_923;
      }

      if (v1086 <= v7)
      {
        goto LABEL_927;
      }

      Rotation = v1103;
      if (v1103 <= v1082)
      {
        goto LABEL_931;
      }

      v70 = *(v1087 + 8 * v1082);
      i = *(v1087 + 8 * v7);
      v71 = *(v1104 + 8 * v1082);
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v72 = *(a4 + 230) - 1;
      v73 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v72);
      *(v73 + 8) = i;
      *(v73 + 16) = v71;
      v12 = v70 - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v12)
      {
        goto LABEL_935;
      }

      *(*(a4 + 105) + 8 * v12) = v72;
      v59 = re::DynamicArray<unsigned long>::add(&v1067, &v1082);
      v69 = v1082;
      v12 = a1;
      i = a1[131];
    }

    else
    {
      if (v1066 <= v69)
      {
        goto LABEL_873;
      }

      if (*(v6 + v69) != 1)
      {
        v113 = "Effected IK node cannot be a target or root - circular dependency detected.";
        goto LABEL_164;
      }
    }

    if (i <= v69)
    {
      goto LABEL_841;
    }

    v69 = *(*(v12 + 1064) + 56 * v69 + 32);
    v1082 = v69;
    if (v69 == *v1164)
    {
      goto LABEL_93;
    }
  }

  v113 = "IK effector is not a valid chain to the root.";
LABEL_164:
  v114 = v1118;
  v115 = v1119;
  *a5 = 0;
  *(a5 + 8) = 3000;
  *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a5 + 24) = v114;
  *(a5 + 40) = v115;
  i = v1066;
LABEL_165:
  v116 = 0;
  while (2)
  {
    if (v1085 && v1086)
    {
      (*(*v1085 + 40))();
    }

    if (v1067 && v1069)
    {
      (*(*v1067 + 40))();
    }

    if (i)
    {
      (*(v1105[0] + 40))(v1105, v6);
    }

    if (v1088[0].n128_u64[0] && v1088[0].n128_u64[1])
    {
      (*(*v1088[0].n128_u64[0] + 40))();
    }

    if (*v1089 && *&v1089[8])
    {
      (*(**v1089 + 40))();
    }

    if (!v116)
    {
      goto LABEL_635;
    }

    v1116 = 0u;
    v1117 = 0u;
    v1114 = 0u;
    v1115 = 0u;
    v1112 = 0u;
    v1113 = 0u;
    v1110 = 0u;
    v1111 = 0u;
    v1109 = 0u;
    memset(v1108, 0, sizeof(v1108));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(v1108, v1105, *(v12 + 224));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1108[1].n128_u64[1], v1105, *(v12 + 264));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1109, v1105, *(v12 + 304));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1110 + 1, v1105, *(v12 + 344));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1112, v1105, *(v12 + 384));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1113 + 1, v1105, *(v12 + 424));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1115, v1105, *(v12 + 464));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1116 + 1, v1105, *(v12 + 504));
    v1077 = 0u;
    v1078 = 0u;
    v1075 = 0u;
    v1076 = 0u;
    v1073 = 0u;
    v1074 = 0u;
    v1071 = 0u;
    v1072 = 0u;
    v1069 = 0u;
    v1070 = 0u;
    v1067 = 0u;
    v1068 = 0u;
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1067, v1105, *(v12 + 568));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1068 + 1, v1105, *(v12 + 576));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1070, v1105, *(v12 + 584));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1071 + 1, v1105, *(v12 + 592));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1073, v1105, *(v12 + 600));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1074 + 1, v1105, *(v12 + 608));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1076, v1105, *(v12 + 616));
    re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1077 + 1, v1105, *(v12 + 624));
    if (!i)
    {
LABEL_514:
      re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1146 + 1, *v12, a3);
      re::FixedArray<re::EvaluationSRT>::init<>(&v1148, *v12, a3);
      if (a3)
      {
        i = 0;
        v7 = 0;
        v6 = 0;
        while (1)
        {
          v378 = re::HashTable<char const*,unsigned long,re::RigEvaluation::HashString,re::RigEvaluation::EqualString,true,false>::tryGet(v12 + 1176, (a2 + i));
          if (!v378)
          {
            break;
          }

          v11 = *v378;
          Rotation = v1091;
          if (v1091 <= *v378)
          {
            goto LABEL_1111;
          }

          Rotation = v1147;
          if (v1147 <= v6)
          {
            goto LABEL_1115;
          }

          v380 = v1092;
          v381 = *(v1092 + 8 * v11);
          *(*(&v1147 + 1) + 8 * v6) = v381;
          Rotation = *(v12 + 1048);
          if (Rotation <= v11)
          {
            goto LABEL_1119;
          }

          v11 = *(*(v12 + 1064) + 56 * v11 + 32);
          if (v11 != -1)
          {
            Rotation = v1091;
            if (v1091 <= v11)
            {
              goto LABEL_1195;
            }

            v382 = *(v380 + 8 * v11);
            v1118.n128_u32[0] = 20;
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
            v383 = *(a4 + 230) - 1;
            *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v383) + 8) = v382;
            v1118.n128_u32[0] = 28;
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
            v384 = *(a4 + 230) - 1;
            v385 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v384);
            *(v385 + 8) = v383;
            *(v385 + 16) = v381;
            v381 = v384;
          }

          Scale = re::EvaluationTree::extractScale(a4, v381);
          Rotation = re::EvaluationTree::extractRotation(a4, v381);
          v1118.n128_u32[0] = 37;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
          v9 = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v9) + 8) = v381;
          v12 = *(&v1148 + 1);
          if (*(&v1148 + 1) <= v6)
          {
            goto LABEL_1123;
          }

          v387 = (v1149 + v7);
          *v387 = Scale;
          v387[1] = Rotation;
          v387[2] = v9;
          ++v6;
          v7 += 24;
          i += 8;
          v12 = a1;
          if (a3 == v6)
          {
            goto LABEL_525;
          }
        }

LABEL_552:
        re::DynamicString::format(&v1118, *v12, "Output Joint '%s' does not exist.", v379, *(a2 + 8 * v6));
        v409 = v1118;
        v410 = v1119;
        *a5 = 0;
        *(a5 + 8) = 3002;
        *(a5 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a5 + 24) = v409;
        *(a5 + 40) = v410;
LABEL_573:
        if (*(&v1077 + 1))
        {
          if (v1078)
          {
            (*(**(&v1077 + 1) + 40))();
            v1078 = 0uLL;
          }

          *(&v1077 + 1) = 0;
        }

        if (v1076)
        {
          if (*(&v1076 + 1))
          {
            (*(*v1076 + 40))();
            *(&v1076 + 1) = 0;
            *&v1077 = 0;
          }

          *&v1076 = 0;
        }

        if (*(&v1074 + 1))
        {
          if (v1075)
          {
            (*(**(&v1074 + 1) + 40))();
            v1075 = 0uLL;
          }

          *(&v1074 + 1) = 0;
        }

        if (v1073)
        {
          if (*(&v1073 + 1))
          {
            (*(*v1073 + 40))();
            *(&v1073 + 1) = 0;
            *&v1074 = 0;
          }

          *&v1073 = 0;
        }

        if (*(&v1071 + 1))
        {
          if (v1072)
          {
            (*(**(&v1071 + 1) + 40))();
            v1072 = 0uLL;
          }

          *(&v1071 + 1) = 0;
        }

        if (v1070)
        {
          if (*(&v1070 + 1))
          {
            (*(*v1070 + 40))();
            *(&v1070 + 1) = 0;
            *&v1071 = 0;
          }

          *&v1070 = 0;
        }

        if (*(&v1068 + 1))
        {
          if (v1069)
          {
            (*(**(&v1068 + 1) + 40))();
            v1069 = 0uLL;
          }

          *(&v1068 + 1) = 0;
        }

        if (v1067 && *(&v1067 + 1))
        {
          (*(*v1067 + 40))();
        }

        if (*(&v1116 + 1))
        {
          if (v1117)
          {
            (*(**(&v1116 + 1) + 40))();
            v1117 = 0uLL;
          }

          *(&v1116 + 1) = 0;
        }

        if (v1115)
        {
          if (*(&v1115 + 1))
          {
            (*(*v1115 + 40))();
            *(&v1115 + 1) = 0;
            *&v1116 = 0;
          }

          *&v1115 = 0;
        }

        if (*(&v1113 + 1))
        {
          if (v1114)
          {
            (*(**(&v1113 + 1) + 40))();
            v1114 = 0uLL;
          }

          *(&v1113 + 1) = 0;
        }

        if (v1112)
        {
          if (*(&v1112 + 1))
          {
            (*(*v1112 + 40))();
            *(&v1112 + 1) = 0;
            *&v1113 = 0;
          }

          *&v1112 = 0;
        }

        if (*(&v1110 + 1))
        {
          if (v1111)
          {
            (*(**(&v1110 + 1) + 40))();
            v1111 = 0uLL;
          }

          *(&v1110 + 1) = 0;
        }

        if (v1109)
        {
          if (*(&v1109 + 1))
          {
            (*(*v1109 + 40))();
            *(&v1109 + 1) = 0;
            *&v1110 = 0;
          }

          *&v1109 = 0;
        }

        if (v1108[1].n128_u64[1])
        {
          if (v1108[2].n128_u64[0])
          {
            (*(*v1108[1].n128_u64[1] + 40))();
            v1108[2] = 0uLL;
          }

          v1108[1].n128_u64[1] = 0;
        }

        if (v1108[0].n128_u64[0] && v1108[0].n128_u64[1])
        {
          (*(*v1108[0].n128_u64[0] + 40))();
        }

LABEL_635:
        if (v1090 && v1091)
        {
          (*(*v1090 + 40))();
        }

        if (v1093 && v1094)
        {
          (*(*v1093 + 40))();
        }

        if (v1096 && v1097)
        {
          (*(*v1096 + 40))();
        }

        if (v1099 && v1100)
        {
          (*(*v1099 + 40))();
        }

        if (v1102 && v1103)
        {
          (*(*v1102 + 40))();
        }

        re::RigGraphCompilation::~RigGraphCompilation((&v1149 + 8));
        if (v1148)
        {
          if (*(&v1148 + 1))
          {
            (*(*v1148 + 40))();
            *(&v1148 + 1) = 0;
            *&v1149 = 0;
          }

          *&v1148 = 0;
        }

        if (*(&v1146 + 1))
        {
          if (v1147)
          {
            (*(**(&v1146 + 1) + 40))();
            v1147 = 0uLL;
          }

          *(&v1146 + 1) = 0;
        }

        std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v1144);
        re::Allocator::~Allocator(v1105);
        return;
      }

LABEL_525:
      v388 = v1144;
      v389 = v1146;
      v1144 = 0;
      v1118.n128_u64[0] = v388;
      v390 = &v1118.n128_u64[1];
      if (v1146)
      {
        a4 = v1137;
        Rotation = &v1118;
        if (v1146 == &v1145)
        {
LABEL_558:
          *&v1120 = v390;
          (*(*v389 + 24))(v389, v390);
          goto LABEL_559;
        }

        *&v1120 = v1146;
        *&v1146 = 0;
      }

      else
      {
        *&v1120 = 0;
        a4 = v1137;
        Rotation = &v1118;
      }

LABEL_559:
      v415 = *(&v1146 + 1);
      v416 = v1147;
      *(a4 + 120) = 0u;
      *(&v1120 + 1) = v415;
      *&v1121 = v416;
      *(Rotation + 56) = *(a4 + 136);
      *(&v1147 + 1) = 0;
      *&v1148 = 0;
      v417 = *(&v1148 + 1);
      v418 = v1149;
      *(a4 + 152) = 0u;
      *(&v1122 + 1) = v417;
      *&v1123[0] = v418;
      re::RigGraphCompilation::RigGraphCompilation(v1123 + 8, &v1149 + 8);
      *a5 = 1;
      v419 = v1118.n128_u64[0];
      v420 = v1120;
      v1118.n128_u64[0] = 0;
      *(a5 + 8) = v419;
      if (v420)
      {
        if (v420 == v390)
        {
          *(a5 + 40) = a5 + 16;
          (*(*v420 + 24))(v420);
        }

        else
        {
          *(a5 + 40) = v420;
          *&v1120 = 0;
        }
      }

      else
      {
        *(a5 + 40) = 0;
      }

      v421 = v1121;
      *(a5 + 48) = *(&v1120 + 1);
      *(a5 + 56) = v421;
      *(&v1120 + 1) = 0;
      *&v1121 = 0;
      *(a5 + 64) = *(Rotation + 56);
      *(&v1121 + 1) = 0;
      *&v1122 = 0;
      v422 = *&v1123[0];
      *(a5 + 80) = *(&v1122 + 1);
      *(a5 + 88) = v422;
      *(&v1122 + 1) = 0;
      *&v1123[0] = 0;
      re::RigGraphCompilation::RigGraphCompilation(a5 + 96, v1123 + 8);
      re::RigGraphCompilation::~RigGraphCompilation((v1123 + 8));
      if (v1122)
      {
        if (*(&v1122 + 1))
        {
          (*(*v1122 + 40))();
          *(&v1122 + 1) = 0;
          *&v1123[0] = 0;
        }

        *&v1122 = 0;
      }

      if (*(&v1120 + 1))
      {
        if (v1121)
        {
          (*(**(&v1120 + 1) + 40))();
          v1121 = 0uLL;
        }

        *(&v1120 + 1) = 0;
      }

      std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&v1118);
      goto LABEL_573;
    }

    Rotation = 0;
    v9 = &v1118;
    while (1)
    {
      v11 = *(v12 + 1048);
      if (v11 <= Rotation)
      {
        goto LABEL_1155;
      }

      v11 = v1100;
      if (v1100 <= Rotation)
      {
LABEL_1159:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v783 = MEMORY[0x1E69E9C10];
        v784 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v784)
        {
          v785 = 3;
        }

        else
        {
          v785 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = Rotation;
        v1138 = 2048;
        *v1139 = v11;
        _os_log_send_and_compose_impl(v785, v1164, &v1118, 80, &dword_1E1C61000, v783, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1163:
        *v1089 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v786 = MEMORY[0x1E69E9C10];
        v787 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v787)
        {
          v788 = 3;
        }

        else
        {
          v788 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v788, v1089, &v1118, 80, &dword_1E1C61000, v786, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1167:
        *v1089 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v789 = MEMORY[0x1E69E9C10];
        v790 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v790)
        {
          v791 = 3;
        }

        else
        {
          v791 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = Rotation;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v791, v1089, &v1118, 80, &dword_1E1C61000, v789, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1171:
        *v1089 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v792 = MEMORY[0x1E69E9C10];
        v793 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v793)
        {
          v794 = 3;
        }

        else
        {
          v794 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v12;
        v1138 = 2048;
        *v1139 = i;
        _os_log_send_and_compose_impl(v794, v1089, &v1118, 80, &dword_1E1C61000, v792, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1175:
        *v1089 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v795 = MEMORY[0x1E69E9C10];
        v796 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v796)
        {
          v797 = 3;
        }

        else
        {
          v797 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v12;
        v1138 = 2048;
        *v1139 = i;
        _os_log_send_and_compose_impl(v797, v1089, &v1118, 80, &dword_1E1C61000, v795, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1179:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v798 = MEMORY[0x1E69E9C10];
        v799 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v799)
        {
          v800 = 3;
        }

        else
        {
          v800 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = Rotation;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v800, v1164, &v1118, 80, &dword_1E1C61000, v798, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1183:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v801 = MEMORY[0x1E69E9C10];
        v802 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v802)
        {
          v803 = 3;
        }

        else
        {
          v803 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v803, v1164, &v1118, 80, &dword_1E1C61000, v801, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1187:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v804 = MEMORY[0x1E69E9C10];
        v805 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v805)
        {
          v806 = 3;
        }

        else
        {
          v806 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v806, v1164, &v1118, 80, &dword_1E1C61000, v804, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1191:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v807 = MEMORY[0x1E69E9C10];
        v808 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v808)
        {
          v809 = 3;
        }

        else
        {
          v809 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v809, v1164, &v1118, 80, &dword_1E1C61000, v807, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1195:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v810 = MEMORY[0x1E69E9C10];
        v811 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v811)
        {
          v812 = 3;
        }

        else
        {
          v812 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v812, v1164, &v1118, 80, &dword_1E1C61000, v810, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1199:
        re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
LABEL_1200:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v813 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v813)
        {
          v814 = 3;
        }

        else
        {
          v814 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = 1;
        v1138 = 2048;
        *v1139 = v11;
        _os_log_send_and_compose_impl(v814, v1164, &v1118, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1204:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v815 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v815)
        {
          v816 = 3;
        }

        else
        {
          v816 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v69;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl(v816, v1137, &v1118, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1208:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v817 = MEMORY[0x1E69E9C10];
        v818 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v818)
        {
          v819 = 3;
        }

        else
        {
          v819 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v819, &v1140, &v1118, 80, &dword_1E1C61000, v817, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1212:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v820 = MEMORY[0x1E69E9C10];
        v821 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v821)
        {
          v822 = 3;
        }

        else
        {
          v822 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v822, &v1140, &v1118, 80, &dword_1E1C61000, v820, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1216:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v823 = MEMORY[0x1E69E9C10];
        v824 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v824)
        {
          v825 = 3;
        }

        else
        {
          v825 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v825, &v1140, &v1118, 80, &dword_1E1C61000, v823, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1220:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v826 = MEMORY[0x1E69E9C10];
        v827 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v827)
        {
          v828 = 3;
        }

        else
        {
          v828 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v828, &v1140, &v1118, 80, &dword_1E1C61000, v826, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1224:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v829 = MEMORY[0x1E69E9C10];
        v830 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v830)
        {
          v831 = 3;
        }

        else
        {
          v831 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v831, &v1140, &v1118, 80, &dword_1E1C61000, v829, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1228:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v832 = MEMORY[0x1E69E9C10];
        v833 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v833)
        {
          v834 = 3;
        }

        else
        {
          v834 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v834, &v1140, &v1118, 80, &dword_1E1C61000, v832, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1232:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v835 = MEMORY[0x1E69E9C10];
        v836 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v836)
        {
          v837 = 3;
        }

        else
        {
          v837 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v837, &v1140, &v1118, 80, &dword_1E1C61000, v835, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1236:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v838 = MEMORY[0x1E69E9C10];
        v839 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v839)
        {
          v840 = 3;
        }

        else
        {
          v840 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v840, &v1140, &v1118, 80, &dword_1E1C61000, v838, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1240:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v841 = MEMORY[0x1E69E9C10];
        v842 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v842)
        {
          v843 = 3;
        }

        else
        {
          v843 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v843, &v1140, &v1118, 80, &dword_1E1C61000, v841, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1244:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v844 = MEMORY[0x1E69E9C10];
        v845 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v845)
        {
          v846 = 3;
        }

        else
        {
          v846 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v846, &v1140, &v1118, 80, &dword_1E1C61000, v844, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1248:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v847 = MEMORY[0x1E69E9C10];
        v848 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v848)
        {
          v849 = 3;
        }

        else
        {
          v849 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v849, &v1140, &v1118, 80, &dword_1E1C61000, v847, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1252:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v850 = MEMORY[0x1E69E9C10];
        v851 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v851)
        {
          v852 = 3;
        }

        else
        {
          v852 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v852, &v1140, &v1118, 80, &dword_1E1C61000, v850, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1256:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v853 = MEMORY[0x1E69E9C10];
        v854 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v854)
        {
          v855 = 3;
        }

        else
        {
          v855 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v855, &v1140, &v1118, 80, &dword_1E1C61000, v853, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1260:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v856 = MEMORY[0x1E69E9C10];
        v857 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v857)
        {
          v858 = 3;
        }

        else
        {
          v858 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v858, &v1140, &v1118, 80, &dword_1E1C61000, v856, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1264:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v859 = MEMORY[0x1E69E9C10];
        v860 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v860)
        {
          v861 = 3;
        }

        else
        {
          v861 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v861, &v1140, &v1118, 80, &dword_1E1C61000, v859, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1268:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v862 = MEMORY[0x1E69E9C10];
        v863 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v863)
        {
          v864 = 3;
        }

        else
        {
          v864 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v864, &v1140, &v1118, 80, &dword_1E1C61000, v862, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1272:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v865 = MEMORY[0x1E69E9C10];
        v866 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v866)
        {
          v867 = 3;
        }

        else
        {
          v867 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v867, &v1140, &v1118, 80, &dword_1E1C61000, v865, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1276:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v868 = MEMORY[0x1E69E9C10];
        v869 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v869)
        {
          v870 = 3;
        }

        else
        {
          v870 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v870, &v1140, &v1118, 80, &dword_1E1C61000, v868, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1280:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v871 = MEMORY[0x1E69E9C10];
        v872 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v872)
        {
          v873 = 3;
        }

        else
        {
          v873 = 2;
        }

        *&v1137[14] = 468;
        *&v1137[18] = 2048;
        *&v1137[20] = v6;
        v1138 = 2048;
        *v1139 = v11;
        _os_log_send_and_compose_impl(v873, v1164, &v1118, 80, &dword_1E1C61000, v871, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1284:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v874 = MEMORY[0x1E69E9C10];
        v875 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v875)
        {
          v876 = 3;
        }

        else
        {
          v876 = 2;
        }

        *&v1137[14] = 789;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v876, v1164, &v1118, 80, &dword_1E1C61000, v874, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1288:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v877 = MEMORY[0x1E69E9C10];
        v878 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v878)
        {
          v879 = 3;
        }

        else
        {
          v879 = 2;
        }

        *&v1137[14] = 476;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = Rotation;
        _os_log_send_and_compose_impl(v879, v1164, &v1118, 80, &dword_1E1C61000, v877, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1292:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v880 = MEMORY[0x1E69E9C10];
        v881 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v881)
        {
          v882 = 3;
        }

        else
        {
          v882 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = 1;
        v1138 = 2048;
        *v1139 = v11;
        _os_log_send_and_compose_impl(v882, &v1140, &v1118, 80, &dword_1E1C61000, v880, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_1296:
        v1082 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v883 = MEMORY[0x1E69E9C10];
        v884 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v884)
        {
          v885 = 3;
        }

        else
        {
          v885 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 797;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = i;
        _os_log_send_and_compose_impl(v885, &v1082, &v1118, 80, &dword_1E1C61000, v883, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1300;
      }

      v118 = (*(v12 + 1064) + 56 * Rotation);
      v119 = *(v1101 + 8 * Rotation);
      v1061 = Rotation;
      if (v118[5])
      {
        break;
      }

      v7 = *(v1101 + 8 * Rotation);
LABEL_504:
      v11 = v1094;
      v6 = v1061;
      if (v1094 <= v1061)
      {
        goto LABEL_1280;
      }

      v11 = *(v1095 + 8 * v1061) - 0x7FFFFFFFFFFFFFFFLL;
      Rotation = *(a4 + 103);
      if (Rotation <= v11)
      {
        goto LABEL_1284;
      }

      v375 = *(a4 + 105);
      *(v375 + 8 * v11) = v7;
      v6 = v1061 + 1;
      Rotation = v1061 + 1;
      if (v1061 + 1 == i)
      {
        v11 = 0;
        v376 = v1092;
        while (1)
        {
          Rotation = *(v12 + 1304);
          if (Rotation <= v11)
          {
            goto LABEL_1288;
          }

          v377 = *(*(v12 + 1312) + 8 * v11);
          if (v377 != -1)
          {
            Rotation = v1091;
            if (v1091 <= v11)
            {
              goto LABEL_1324;
            }

            Rotation = *(v376 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
            v12 = *(a4 + 103);
            if (v12 <= Rotation)
            {
              goto LABEL_1328;
            }

            *(v375 + 8 * Rotation) = v377;
            v12 = a1;
          }

          if (i == ++v11)
          {
            goto LABEL_514;
          }
        }
      }
    }

    v6 = 0;
    v1054 = *(v12 + 1064) + 56 * Rotation;
LABEL_187:
    v11 = v118[6] + v6;
    Rotation = *(v12 + 968);
    if (Rotation <= v11)
    {
      goto LABEL_817;
    }

    v120 = (*(v12 + 984) + 16 * v11);
    v11 = *(v120 + 1);
    v121 = *v120;
    if (v121 <= 2)
    {
      v7 = v1061;
      v1064 = v6;
      if (v121 == 1)
      {
        Rotation = *(v12 + 24);
        if (Rotation <= v11)
        {
          goto LABEL_963;
        }

        v6 = *(v12 + 40) + 88 * v11;
        if ((*(v6 + 1) & *v6 & *(v6 + 2)) == (*(v6 + 1) | *v6 | *(v6 + 2)))
        {
          Rotation = v1097;
          if (v1097 <= v1061)
          {
            goto LABEL_1103;
          }

          v203 = *(v1098 + 8 * v1061);
          v1118.n128_u32[0] = 37;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
          v204 = v118;
          v205 = *(a4 + 245) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v205) + 8) = v203;
          v1118.n128_u32[0] = 8;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
          Rotation = *(a4 + 245) - 1;
          v206 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
          *(v206 + 8) = v205;
          *(v206 + 16) = v11;
          v1118.n128_u32[0] = 34;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
          v207 = *(a4 + 225) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v207) + 8) = v119;
          v1118.n128_u32[0] = 40;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v7 = *(a4 + 230) - 1;
          v208 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
          *(v208 + 8) = v207;
          *(v208 + 16) = Rotation;
          v118 = v204;
          goto LABEL_460;
        }

        Rotation = v118[4];
        if (Rotation != -1)
        {
          v12 = v1094;
          if (v1094 <= Rotation)
          {
            goto LABEL_1179;
          }

          v212 = *(v1095 + 8 * Rotation);
          v1118.n128_u32[0] = 20;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v213 = *(a4 + 230) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v213) + 8) = v212;
          v1118.n128_u32[0] = 28;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v214 = *(a4 + 230) - 1;
          v215 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v214);
          *(v215 + 8) = v213;
          *(v215 + 16) = v119;
          v119 = v214;
        }

        Rotation = v1103;
        v12 = 37;
        if (v1103 <= v1061)
        {
          goto LABEL_1107;
        }

        v216 = *(v1104 + 8 * v1061);
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v217 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v217) + 8) = v216;
        v1118.n128_u32[0] = 8;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v218 = *(a4 + 245) - 1;
        v219 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v218);
        *(v219 + 8) = v217;
        *(v219 + 16) = v11;
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v220 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v220) + 8) = v119;
        if (*v6)
        {
          *&v221 = 1.0;
        }

        else
        {
          *&v221 = 0.0;
        }

        if (*(v6 + 1))
        {
          v222 = 1.0;
        }

        else
        {
          v222 = 0.0;
        }

        if (*(v6 + 2))
        {
          v223 = 1.0;
        }

        else
        {
          v223 = 0.0;
        }

        *(&v221 + 1) = v222;
        *(&v221 + 2) = v223;
        *v1137 = v221;
        v1118.n128_u32[0] = 7;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v1118.n128_u64[0] = *(a4 + 245) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
        re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
        v224 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
        v1118.n128_u32[0] = 10;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        Rotation = *(a4 + 245) - 1;
        v225 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
        v225[1] = v220;
        v225[2] = v218;
        v225[3] = v224;
        v1118.n128_u32[0] = 34;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
        v226 = *(a4 + 225) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v226) + 8) = v119;
        v1118.n128_u32[0] = 40;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v7 = *(a4 + 230) - 1;
        v227 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
        *(v227 + 8) = v226;
        *(v227 + 16) = Rotation;
        v118 = v1054;
        v11 = *(v1054 + 32);
        if (v11 == -1)
        {
          v12 = a1;
LABEL_460:
          v6 = v1064;
          goto LABEL_501;
        }

        Rotation = v1094;
        v12 = a1;
        v6 = v1064;
        if (v1094 <= v11)
        {
          goto LABEL_1183;
        }

        v228 = *(v1095 + 8 * v11);
        v1118.n128_u32[0] = 28;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v229 = *(a4 + 230) - 1;
        v230 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v229);
        *(v230 + 8) = v228;
        *(v230 + 16) = v7;
        v7 = v229;
LABEL_482:
        v118 = v1054;
        goto LABEL_501;
      }

      if (v121 != 2)
      {
        goto LABEL_1500;
      }

      Rotation = *(v12 + 64);
      if (Rotation <= v11)
      {
        goto LABEL_947;
      }

      v6 = *(v12 + 80) + 88 * v11;
      v176 = *(v6 + 24);
      v1058 = v119;
      if (v176 == 2)
      {
        v237 = *(v6 + 64);
        if (!v237)
        {
          goto LABEL_391;
        }

        if (v237 == 1)
        {
          goto LABEL_1332;
        }

        v238 = **(v6 + 80) + *(*(v6 + 80) + 4);
        if (v238 == 1.0 || vabds_f32(1.0, v238) < (((fabsf(v238) + 1.0) + 1.0) * 0.00001))
        {
LABEL_391:
          v11 = *(v6 + 24);
          if (v11 <= 1)
          {
            goto LABEL_1200;
          }

          v240 = v239;
          if (*(v6 + 64))
          {
            v242 = **(v6 + 80);
          }

          else
          {
            v242 = 0.5;
          }

          *v1137 = v242;
          v1118.n128_u32[0] = 2;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v1118);
          v1118.n128_u64[0] = *(a4 + 220) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 88), &v1118);
          re::DynamicArray<float>::add((a4 + 408), v1137);
          v326 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
          v1118.n128_u32[0] = 12;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v11 = *(a4 + 235) - 1;
          v327 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v11);
          v327[1] = v240;
          v327[2] = v241;
          v327[3] = v326;
          goto LABEL_456;
        }
      }

      else if (v176 == 1)
      {
        if (!*(v6 + 64) || (v177 = **(v6 + 80), v177 == 1.0) || vabds_f32(1.0, v177) < (((fabsf(v177) + 1.0) + 1.0) * 0.00001))
        {
          goto LABEL_456;
        }
      }

      *&v1137[8] = 0x3F80000000000000;
      *v1137 = 0;
      v1118.n128_u32[0] = 5;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
      v1118.n128_u64[0] = *(a4 + 235) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v1137);
      v243 = *(a4 + 30) + 8 * *(a4 + 28);
      v12 = *(v243 - 8);
      v244 = *(v6 + 24);
      if (v244)
      {
        i = 0;
        v7 = *(v243 - 8);
        while (1)
        {
          v11 = *(v6 + 24);
          if (v11 <= i)
          {
            break;
          }

          v11 = *(v6 + 64);
          v246 = 1.0 / v244;
          if (v11)
          {
            if (v11 <= i)
            {
              goto LABEL_821;
            }

            v246 = *(*(v6 + 80) + 4 * i);
          }

          *v1137 = v246;
          v1118.n128_u32[0] = 2;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v1118);
          v1118.n128_u64[0] = *(a4 + 220) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 88), &v1118);
          re::DynamicArray<float>::add((a4 + 408), v1137);
          v247 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
          v1118.n128_u32[0] = 12;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          Rotation = *(a4 + 235) - 1;
          v248 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), Rotation);
          v248[1] = v12;
          v248[2] = v245;
          v248[3] = v247;
          v1118.n128_u32[0] = 24;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v11 = *(a4 + 235) - 1;
          v249 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v11);
          *(v249 + 8) = v7;
          *(v249 + 16) = Rotation;
          ++i;
          v7 = v11;
          if (v244 == i)
          {
            goto LABEL_456;
          }
        }

LABEL_719:
        *v1164 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v468 = MEMORY[0x1E69E9C10];
        v469 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v469)
        {
          v470 = 3;
        }

        else
        {
          v470 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = i;
        v1138 = 2048;
        *v1139 = v11;
        _os_log_send_and_compose_impl(v470, v1164, &v1118, 80, &dword_1E1C61000, v468, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_723:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v471 = MEMORY[0x1E69E9C10];
        v472 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v472)
        {
          v473 = 3;
        }

        else
        {
          v473 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 797;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v12;
        _os_log_send_and_compose_impl(v473, v1137, &v1118, 80, &dword_1E1C61000, v471, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_727:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v474 = MEMORY[0x1E69E9C10];
        v475 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v475)
        {
          v476 = 3;
        }

        else
        {
          v476 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v12;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v476, v1137, &v1118, 80, &dword_1E1C61000, v474, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_731:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v477 = MEMORY[0x1E69E9C10];
        v478 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v478)
        {
          v479 = 3;
        }

        else
        {
          v479 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 468;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = Rotation;
        _os_log_send_and_compose_impl(v479, v1137, &v1118, 80, &dword_1E1C61000, v477, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_735:
        *v1137 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v480 = MEMORY[0x1E69E9C10];
        v481 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v1108[0].n128_u32[0] = 136315906;
        *(v1108[0].n128_u64 + 4) = "operator[]";
        v1108[0].n128_u16[6] = 1024;
        if (v481)
        {
          v482 = 3;
        }

        else
        {
          v482 = 2;
        }

        *(&v1108[0].n128_u32[3] + 2) = 797;
        v1108[1].n128_u16[1] = 2048;
        *(v1108[1].n128_u64 + 4) = v11;
        v1108[1].n128_u16[6] = 2048;
        *(&v1108[1].n128_u64[1] + 6) = v12;
        _os_log_send_and_compose_impl(v482, v1137, &v1118, 80, &dword_1E1C61000, v480, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_739:
        v1140 = 0;
        v1121 = 0u;
        v1122 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v483 = MEMORY[0x1E69E9C10];
        v484 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v1137 = 136315906;
        *&v1137[4] = "operator[]";
        *&v1137[12] = 1024;
        if (v484)
        {
          v485 = 3;
        }

        else
        {
          v485 = 2;
        }

        *&v1137[14] = 797;
        *&v1137[18] = 2048;
        *&v1137[20] = v11;
        v1138 = 2048;
        *v1139 = v12;
        _os_log_send_and_compose_impl(v485, &v1140, &v1118, 80, &dword_1E1C61000, v483, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
        _os_crash_msg();
        __break(1u);
LABEL_743:
        if (*(v12 + 1504))
        {
          v486 = 0;
          v11 = 0;
          Rotation = 136;
          do
          {
            i = v12;
            v12 = v11 + *(v12 + 1328);
            v9 = v1144[1];
            if (v9 <= v12)
            {
              goto LABEL_1360;
            }

            v487 = *(i + 1520) + v486;
            v488 = v1144[2] + 136 * v12;
            *v488 = *v487;
            re::FixedArray<unsigned long>::operator=((v488 + 8), (v487 + 8));
            re::FixedArray<unsigned long>::operator=((v488 + 32), (v487 + 32));
            re::FixedArray<unsigned long>::operator=((v488 + 56), (v487 + 56));
            *(v488 + 80) = *(v487 + 80);
            re::FixedArray<re::Vector3<float>>::operator=((v488 + 96), (v487 + 96));
            *(v488 + 120) = *(v487 + 120);
            ++v11;
            v486 += 136;
            v12 = i;
          }

          while (v11 < *(i + 1504));
        }

        v489 = v1144;
        v490 = v1144[1];
        v9 = v1088;
        if (v490)
        {
          v491 = v1144[2];
          v492 = &v491[17 * v490];
          while (1)
          {
            v493 = v491[2];
            if (v493)
            {
              break;
            }

LABEL_753:
            v497 = v491[5];
            if (v497)
            {
              v498 = v491[6];
              v499 = *&v1089[16];
              v500 = 8 * v497;
              do
              {
                v11 = *v498;
                Rotation = *&v1089[8];
                if (*&v1089[8] <= *v498)
                {
                  goto LABEL_1091;
                }

                *v498++ = *(v499 + 8 * v11);
                v500 -= 8;
              }

              while (v500);
            }

            v501 = v491[8];
            if (v501)
            {
              v502 = v491[9];
              v503 = *&v1089[16];
              v504 = 8 * v501;
              while (1)
              {
                v11 = *v502;
                Rotation = *&v1089[8];
                if (*&v1089[8] <= *v502)
                {
                  break;
                }

                *v502++ = *(v503 + 8 * v11);
                v504 -= 8;
                if (!v504)
                {
                  goto LABEL_761;
                }
              }

LABEL_1095:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v737 = MEMORY[0x1E69E9C10];
              v738 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v1108[0].n128_u32[0] = 136315906;
              *(v9 + 212) = "operator[]";
              v1108[0].n128_u16[6] = 1024;
              if (v738)
              {
                v739 = 3;
              }

              else
              {
                v739 = 2;
              }

              *(v9 + 222) = 468;
              v1108[1].n128_u16[1] = 2048;
              *(v9 + 228) = v11;
              v1108[1].n128_u16[6] = 2048;
              *(v9 + 238) = Rotation;
              _os_log_send_and_compose_impl(v739, v1164, &v1118, 80, &dword_1E1C61000, v737, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1099:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v740 = MEMORY[0x1E69E9C10];
              v741 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v741)
              {
                v742 = 3;
              }

              else
              {
                v742 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v7;
              v1138 = 2048;
              *v1139 = v11;
              _os_log_send_and_compose_impl(v742, v1164, &v1118, 80, &dword_1E1C61000, v740, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1103:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v743 = MEMORY[0x1E69E9C10];
              v744 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v744)
              {
                v745 = 3;
              }

              else
              {
                v745 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v7;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v745, v1164, &v1118, 80, &dword_1E1C61000, v743, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1107:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v746 = MEMORY[0x1E69E9C10];
              v747 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v747)
              {
                v748 = 3;
              }

              else
              {
                v748 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v7;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v748, v1164, &v1118, 80, &dword_1E1C61000, v746, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1111:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v749 = MEMORY[0x1E69E9C10];
              v750 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v750)
              {
                v751 = 3;
              }

              else
              {
                v751 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v751, v1164, &v1118, 80, &dword_1E1C61000, v749, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1115:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v752 = MEMORY[0x1E69E9C10];
              v753 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v753)
              {
                v754 = 3;
              }

              else
              {
                v754 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v6;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v754, v1164, &v1118, 80, &dword_1E1C61000, v752, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1119:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v755 = MEMORY[0x1E69E9C10];
              v756 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v756)
              {
                v757 = 3;
              }

              else
              {
                v757 = 2;
              }

              *&v1137[14] = 797;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v757, v1164, &v1118, 80, &dword_1E1C61000, v755, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1123:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v69 = MEMORY[0x1E69E9C10];
              v758 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v758)
              {
                v759 = 3;
              }

              else
              {
                v759 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v6;
              v1138 = 2048;
              *v1139 = v12;
              _os_log_send_and_compose_impl(v759, v1164, &v1118, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1127:
              *v1137 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v11 = MEMORY[0x1E69E9C10];
              v760 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v1108[0].n128_u32[0] = 136315906;
              *(v1108[0].n128_u64 + 4) = "operator[]";
              v1108[0].n128_u16[6] = 1024;
              if (v760)
              {
                v761 = 3;
              }

              else
              {
                v761 = 2;
              }

              *(&v1108[0].n128_u32[3] + 2) = 468;
              v1108[1].n128_u16[1] = 2048;
              *(v1108[1].n128_u64 + 4) = v69;
              v1108[1].n128_u16[6] = 2048;
              *(&v1108[1].n128_u64[1] + 6) = Rotation;
              _os_log_send_and_compose_impl(v761, v1137, &v1118, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1131:
              v1140 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v762 = MEMORY[0x1E69E9C10];
              v763 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v763)
              {
                v764 = 3;
              }

              else
              {
                v764 = 2;
              }

              *&v1137[14] = 797;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v764, &v1140, &v1118, 80, &dword_1E1C61000, v762, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1135:
              v1140 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v765 = MEMORY[0x1E69E9C10];
              v766 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v766)
              {
                v767 = 3;
              }

              else
              {
                v767 = 2;
              }

              *&v1137[14] = 797;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v767, &v1140, &v1118, 80, &dword_1E1C61000, v765, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1139:
              v1140 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v768 = MEMORY[0x1E69E9C10];
              v769 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v769)
              {
                v770 = 3;
              }

              else
              {
                v770 = 2;
              }

              *&v1137[14] = 797;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = v12;
              _os_log_send_and_compose_impl(v770, &v1140, &v1118, 80, &dword_1E1C61000, v768, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1143:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v771 = MEMORY[0x1E69E9C10];
              v772 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v772)
              {
                v773 = 3;
              }

              else
              {
                v773 = 2;
              }

              *&v1137[14] = 476;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v773, v1164, &v1118, 80, &dword_1E1C61000, v771, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1147:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v774 = MEMORY[0x1E69E9C10];
              v775 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v775)
              {
                v776 = 3;
              }

              else
              {
                v776 = 2;
              }

              *&v1137[14] = 476;
              *&v1137[18] = 2048;
              *&v1137[20] = v11;
              v1138 = 2048;
              *v1139 = Rotation;
              _os_log_send_and_compose_impl(v776, v1164, &v1118, 80, &dword_1E1C61000, v774, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1151:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v777 = MEMORY[0x1E69E9C10];
              v778 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v778)
              {
                v779 = 3;
              }

              else
              {
                v779 = 2;
              }

              *&v1137[14] = 468;
              *&v1137[18] = 2048;
              *&v1137[20] = v7;
              v1138 = 2048;
              *v1139 = v11;
              _os_log_send_and_compose_impl(v779, v1164, &v1118, 80, &dword_1E1C61000, v777, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
LABEL_1155:
              *v1164 = 0;
              v1121 = 0u;
              v1122 = 0u;
              v1119 = 0u;
              v1120 = 0u;
              v1118 = 0u;
              v780 = MEMORY[0x1E69E9C10];
              v781 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v1137 = 136315906;
              *&v1137[4] = "operator[]";
              *&v1137[12] = 1024;
              if (v781)
              {
                v782 = 3;
              }

              else
              {
                v782 = 2;
              }

              *&v1137[14] = 797;
              *&v1137[18] = 2048;
              *&v1137[20] = Rotation;
              v1138 = 2048;
              *v1139 = v11;
              _os_log_send_and_compose_impl(v782, v1164, &v1118, 80, &dword_1E1C61000, v780, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
              _os_crash_msg();
              __break(1u);
              goto LABEL_1159;
            }

LABEL_761:
            v491 += 17;
            if (v491 == v492)
            {
              goto LABEL_762;
            }
          }

          v494 = v491[3];
          v495 = *&v1089[16];
          v496 = 8 * v493;
          while (1)
          {
            v11 = *v494;
            Rotation = *&v1089[8];
            if (*&v1089[8] <= *v494)
            {
              break;
            }

            *v494++ = *(v495 + 8 * v11);
            v496 -= 8;
            if (!v496)
            {
              goto LABEL_753;
            }
          }

LABEL_1087:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v731 = MEMORY[0x1E69E9C10];
          v732 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v9 + 212) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v732)
          {
            v733 = 3;
          }

          else
          {
            v733 = 2;
          }

          *(v9 + 222) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v9 + 228) = v11;
          v1108[1].n128_u16[6] = 2048;
          *(v9 + 238) = Rotation;
          _os_log_send_and_compose_impl(v733, v1164, &v1118, 80, &dword_1E1C61000, v731, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1091:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v734 = MEMORY[0x1E69E9C10];
          v735 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v9 + 212) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v735)
          {
            v736 = 3;
          }

          else
          {
            v736 = 2;
          }

          *(v9 + 222) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v9 + 228) = v11;
          v1108[1].n128_u16[6] = 2048;
          *(v9 + 238) = Rotation;
          _os_log_send_and_compose_impl(v736, v1164, &v1118, 80, &dword_1E1C61000, v734, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1095;
        }

LABEL_762:
        re::FixedArray<int>::init<>(v489 + 3, *v12, v1068);
        v505 = v1068;
        i = v1066;
        if (v1068)
        {
          v11 = 0;
          v506 = v1069;
          v507 = v1144;
          Rotation = v1088[0].n128_u64[1];
          v508 = v1088[1].n128_u64[0];
          while (1)
          {
            v12 = *(v506 + 8 * v11);
            if (Rotation <= v12)
            {
              goto LABEL_1396;
            }

            v9 = v507[4];
            if (v9 <= v11)
            {
              break;
            }

            *(v507[5] + 4 * v11++) = *(v508 + 8 * v12);
            if (v505 == v11)
            {
              goto LABEL_767;
            }
          }

LABEL_1400:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v961 = MEMORY[0x1E69E9C10];
          v962 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v1108[0].n128_u64 + 4) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v962)
          {
            v963 = 3;
          }

          else
          {
            v963 = 2;
          }

          *(&v1108[0].n128_u32[3] + 2) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v1108[1].n128_u64 + 4) = v11;
          v1108[1].n128_u16[6] = 2048;
          *(&v1108[1].n128_u64[1] + 6) = v9;
          _os_log_send_and_compose_impl(v963, v1164, &v1118, 80, &dword_1E1C61000, v961, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1404:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v964 = MEMORY[0x1E69E9C10];
          v965 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v1108[0].n128_u64 + 4) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v965)
          {
            v966 = 3;
          }

          else
          {
            v966 = 2;
          }

          *(&v1108[0].n128_u32[3] + 2) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v1108[1].n128_u64 + 4) = Rotation;
          v1108[1].n128_u16[6] = 2048;
          *(&v1108[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl(v966, v1164, &v1118, 80, &dword_1E1C61000, v964, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1408:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v967 = MEMORY[0x1E69E9C10];
          v968 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v1108[0].n128_u64 + 4) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v968)
          {
            v969 = 3;
          }

          else
          {
            v969 = 2;
          }

          *(&v1108[0].n128_u32[3] + 2) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v1108[1].n128_u64 + 4) = v11;
          v1108[1].n128_u16[6] = 2048;
          *(&v1108[1].n128_u64[1] + 6) = v12;
          _os_log_send_and_compose_impl(v969, v1164, &v1118, 80, &dword_1E1C61000, v967, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1412:
          v1107 = 0;
          v1109 = 0u;
          v1110 = 0u;
          memset(v1108, 0, sizeof(v1108));
          v970 = MEMORY[0x1E69E9C10];
          v971 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v1164 = 136315906;
          *&v1164[4] = "operator[]";
          *&v1164[12] = 1024;
          if (v971)
          {
            v972 = 3;
          }

          else
          {
            v972 = 2;
          }

          *&v1164[14] = 468;
          *&v1164[18] = 2048;
          *&v1164[20] = v11;
          v1165 = 2048;
          v1166 = Rotation;
          _os_log_send_and_compose_impl(v972, &v1107, v1108, 80, &dword_1E1C61000, v970, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1416:
          v1107 = 0;
          v1109 = 0u;
          v1110 = 0u;
          memset(v1108, 0, sizeof(v1108));
          v973 = MEMORY[0x1E69E9C10];
          v974 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v1164 = 136315906;
          *&v1164[4] = "operator[]";
          *&v1164[12] = 1024;
          if (v974)
          {
            v975 = 3;
          }

          else
          {
            v975 = 2;
          }

          *&v1164[14] = 468;
          *&v1164[18] = 2048;
          *&v1164[20] = v11;
          v1165 = 2048;
          v1166 = i;
          _os_log_send_and_compose_impl(v975, &v1107, v1108, 80, &dword_1E1C61000, v973, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1164, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
LABEL_1420:
          *v1164 = 0;
          v1121 = 0u;
          v1122 = 0u;
          v1119 = 0u;
          v1120 = 0u;
          v1118 = 0u;
          v976 = MEMORY[0x1E69E9C10];
          v977 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v1108[0].n128_u32[0] = 136315906;
          *(v1108[0].n128_u64 + 4) = "operator[]";
          v1108[0].n128_u16[6] = 1024;
          if (v977)
          {
            v978 = 3;
          }

          else
          {
            v978 = 2;
          }

          *(&v1108[0].n128_u32[3] + 2) = 468;
          v1108[1].n128_u16[1] = 2048;
          *(v1108[1].n128_u64 + 4) = Rotation;
          v1108[1].n128_u16[6] = 2048;
          *(&v1108[1].n128_u64[1] + 6) = v11;
          _os_log_send_and_compose_impl(v978, v1164, &v1118, 80, &dword_1E1C61000, v976, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1424;
        }

LABEL_767:
        v1082 = 0;
        v1083 = 0;
        v1084 = 0;
        re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1082, v1105, v505);
        if (v1068)
        {
          v11 = 0;
          v509 = v1069;
          v510 = v1087;
          v511 = v1084;
          while (1)
          {
            Rotation = *(v509 + 8 * v11);
            v12 = v1086;
            if (v1086 <= Rotation)
            {
              goto LABEL_1404;
            }

            v12 = v1083;
            if (v1083 <= v11)
            {
              goto LABEL_1408;
            }

            *(v511 + 8 * v11++) = *(v510 + 8 * Rotation);
            v512 = v1068;
            if (v11 >= v1068)
            {
              goto LABEL_894;
            }
          }
        }

LABEL_893:
        v512 = 0;
LABEL_894:
        v1079 = 0;
        v1080 = 0;
        v1081 = 0;
        re::FixedArray<re::EvaluationRegisterId<int>>::init<>(&v1079, v1105, v512);
        v1136 = 0u;
        v1135 = 0u;
        v1134 = 0u;
        v1133 = 0u;
        v1130 = 0u;
        v1129 = 0u;
        v1127 = 0u;
        v1128 = 0u;
        v1126 = 0u;
        memset(v1123, 0, sizeof(v1123));
        v1121 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v1118 = 0u;
        v1124 = *&v1139[2];
        v1125 = *&v1137[16];
        *&v1122 = v1084;
        *(&v1122 + 1) = v1083;
        v1131 = v1081;
        v1132 = v1080;
        v12 = a1;
        if (!v1068)
        {
LABEL_909:
          if (v1079 && v1080)
          {
            (*(*v1079 + 40))();
          }

          if (v1082 && v1083)
          {
            (*(*v1082 + 40))();
          }

          if (*v1137 && *&v1139[2])
          {
            (*(**v1137 + 40))();
          }

LABEL_918:
          v116 = 1;
          continue;
        }

        v596 = v1069;
        v597 = *&v1089[16];
        v598 = v1101;
        v599 = v1081;
        v600 = 8 * v1068;
        v601 = v1092;
        while (1)
        {
          v11 = *v596;
          Rotation = *&v1089[8];
          if (*&v1089[8] <= *v596)
          {
            goto LABEL_1412;
          }

          if (i <= v11)
          {
            goto LABEL_1416;
          }

          Rotation = *(v597 + 8 * v11);
          v602 = *(v6 + v11);
          if (v602 == 2)
          {
            break;
          }

          if (v602 == 1)
          {
            v12 = v1100;
            if (v1100 <= v11)
            {
              goto LABEL_1428;
            }

            v12 = v1080;
            if (v1080 <= Rotation)
            {
              goto LABEL_1436;
            }

            v11 = *(v598 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
            v12 = *(a4 + 103);
            if (v12 <= v11)
            {
              goto LABEL_1448;
            }

LABEL_907:
            *(*(a4 + 105) + 8 * v11) = *(v599 + 8 * Rotation);
            v12 = a1;
          }

          ++v596;
          v600 -= 8;
          if (!v600)
          {
            goto LABEL_909;
          }
        }

        v12 = v1091;
        if (v1091 <= v11)
        {
          goto LABEL_1432;
        }

        v12 = v1080;
        if (v1080 <= Rotation)
        {
          goto LABEL_1440;
        }

        v11 = *(v601 + 8 * v11) - 0x7FFFFFFFFFFFFFFFLL;
        v12 = *(a4 + 103);
        if (v12 <= v11)
        {
          goto LABEL_1444;
        }

        goto LABEL_907;
      }

      v11 = *(v243 - 8);
LABEL_456:
      Rotation = v1097;
      v12 = v1061;
      if (v1097 <= v1061)
      {
        goto LABEL_975;
      }

      v328 = re::EvaluationTree::extractRotation(a4, *(v1098 + 8 * v1061));
      v329 = v1058;
      Rotation = re::EvaluationTree::extractScale(a4, v1058);
      v1118.n128_u32[0] = 24;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
      v330 = *(a4 + 235) - 1;
      v331 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v330);
      *(v331 + 8) = v11;
      *(v331 + 16) = v328;
      v1118.n128_u32[0] = 37;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v332 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v332) + 8) = v1058;
      v7 = re::EvaluationTree::constructMatrix4x4(a4, Rotation, v330, v332);
      if ((*(v6 + 1) & *v6 & *(v6 + 2)) != (*(v6 + 1) | *v6 | *(v6 + 2)))
      {
        v1118.n128_u32[0] = 1;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
        v1118.n128_u64[0] = *(a4 + 215) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
        re::DynamicArray<int>::add((a4 + 368), &v1140);
        i = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
        v11 = *(v1054 + 32);
        if (v11 != -1)
        {
          Rotation = v1094;
          v12 = 7;
          if (v1094 <= v11)
          {
            goto LABEL_1187;
          }

          v333 = *(v1095 + 8 * v11);
          v1118.n128_u32[0] = 20;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v334 = *(a4 + 230) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v334) + 8) = v333;
          v1118.n128_u32[0] = 28;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v335 = *(a4 + 230) - 1;
          v336 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v335);
          *(v336 + 8) = v334;
          *(v336 + 16) = v1058;
          v1118.n128_u32[0] = 28;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          v337 = *(a4 + 230) - 1;
          v338 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v337);
          *(v338 + 8) = v334;
          *(v338 + 16) = v7;
          v329 = v335;
          v7 = v337;
        }

        v339 = re::EvaluationTree::extractRotation(a4, v329);
        v1118.n128_u32[0] = 14;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v340 = *(a4 + 245) - 1;
        v341 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v340);
        *(v341 + 8) = v339;
        *(v341 + 16) = i;
        v342 = re::EvaluationTree::extractRotation(a4, v7);
        v1118.n128_u32[0] = 14;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v343 = *(a4 + 245) - 1;
        v344 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v343);
        *(v344 + 8) = v342;
        *(v344 + 16) = i;
        if (*v6)
        {
          *&v345 = 1.0;
        }

        else
        {
          *&v345 = 0.0;
        }

        if (*(v6 + 1))
        {
          v346 = 1.0;
        }

        else
        {
          v346 = 0.0;
        }

        if (*(v6 + 2))
        {
          v347 = 1.0;
        }

        else
        {
          v347 = 0.0;
        }

        *(&v345 + 1) = v346;
        *(&v345 + 2) = v347;
        *v1137 = v345;
        v1118.n128_u32[0] = 7;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v1118.n128_u64[0] = *(a4 + 245) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
        re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
        v348 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
        v1118.n128_u32[0] = 10;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v349 = *(a4 + 245) - 1;
        v350 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v349);
        v350[1] = v340;
        v350[2] = v343;
        v350[3] = v348;
        v1118.n128_u32[0] = 13;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
        v351 = *(a4 + 235) - 1;
        v352 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v351);
        *(v352 + 8) = v349;
        *(v352 + 16) = i;
        v12 = v329;
        v353 = re::EvaluationTree::extractScale(a4, v329);
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        Rotation = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation) + 8) = v329;
        v7 = re::EvaluationTree::constructMatrix4x4(a4, v353, v351, Rotation);
        v118 = v1054;
        v11 = *(v1054 + 32);
        if (v11 == -1)
        {
          i = v1066;
          v6 = v1064;
        }

        else
        {
          Rotation = v1094;
          i = v1066;
          v6 = v1064;
          if (v1094 <= v11)
          {
            goto LABEL_1191;
          }

          v354 = *(v1095 + 8 * v11);
          v1118.n128_u32[0] = 28;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
          Rotation = v1054;
          v355 = *(a4 + 230) - 1;
          v356 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v355);
          *(v356 + 8) = v354;
          *(v356 + 16) = v7;
          v7 = v355;
          v118 = v1054;
        }

        v12 = a1;
LABEL_501:
        ++v6;
        v119 = v7;
        if (v6 >= v118[5])
        {
          goto LABEL_504;
        }

        goto LABEL_187;
      }

      v12 = a1;
      i = v1066;
      goto LABEL_459;
    }

    break;
  }

  v7 = v1061;
  if (v121 == 3)
  {
    Rotation = *(v12 + 104);
    if (Rotation <= v11)
    {
      goto LABEL_959;
    }

    v178 = *(v12 + 120) + 80 * v11;
    v179 = *(v178 + 16);
    if (v179 == 1)
    {
      if (!*(v178 + 56) || (v180 = **(v178 + 72), v180 == 1.0) || vabds_f32(1.0, v180) < (((fabsf(v180) + 1.0) + 1.0) * 0.00001))
      {
        v181 = *(v178 + 32);
        v11 = *v181;
        Rotation = v1097;
        if (v1097 <= *v181)
        {
          goto LABEL_1143;
        }

        Rotation = v1094;
        if (v1094 <= v11)
        {
          goto LABEL_1147;
        }

        v182 = v6;
        v183 = *(v1098 + 8 * v11);
        Rotation = *(v1095 + 8 * v11);
        v1118.n128_u32[0] = 20;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v184 = *(a4 + 230) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v184) + 8) = v183;
        v6 = 28;
        v1118.n128_u32[0] = 28;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v185 = *(a4 + 230) - 1;
        v186 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v185);
        *(v186 + 8) = Rotation;
        *(v186 + 16) = v184;
        v11 = v1097;
        if (v1097 <= v1061)
        {
          goto LABEL_1151;
        }

        v187 = *(v1098 + 8 * v1061);
        v1118.n128_u32[0] = 28;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v7 = *(a4 + 230) - 1;
        v188 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
        *(v188 + 8) = v185;
        *(v188 + 16) = v187;
        v6 = v182;
        goto LABEL_482;
      }
    }

    else if (v179 == 2)
    {
      v209 = *(v178 + 56);
      if (!v209)
      {
        goto LABEL_363;
      }

      if (v209 == 1)
      {
        goto LABEL_1336;
      }

      v210 = **(v178 + 72) + *(*(v178 + 72) + 4);
      if (v210 == 1.0 || vabds_f32(1.0, v210) < (((fabsf(v210) + 1.0) + 1.0) * 0.00001))
      {
LABEL_363:
        v11 = *(v178 + 16);
        if (v11 <= 1)
        {
          goto LABEL_1292;
        }

        if (*(v178 + 56))
        {
          v211 = **(v178 + 72);
        }

        else
        {
          v211 = 0.5;
        }

        *&v1140 = v211;
        v1118.n128_u32[0] = 2;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v1118);
        v1118.n128_u64[0] = *(a4 + 220) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 88), &v1118);
        re::DynamicArray<float>::add((a4 + 408), &v1140);
        v357 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
        memset(v1089, 255, sizeof(v1089));
        re::EvaluationTree::lerp(a4, v1164, v1137, v357, v1089);
LABEL_480:
        v358 = re::EvaluationTree::constructMatrix4x4(a4, *v1089, *&v1089[8], *&v1089[16]);
        v11 = v1097;
        if (v1097 <= v1061)
        {
          goto LABEL_1099;
        }

        v359 = v358;
        v360 = *(v1098 + 8 * v1061);
        v1118.n128_u32[0] = 28;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
        v7 = *(a4 + 230) - 1;
        v361 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
        *(v361 + 8) = v359;
        *(v361 + 16) = v360;
        goto LABEL_482;
      }
    }

    memset(v1164, 255, 24);
    v1118.n128_u64[1] = 1065353216;
    v1118.n128_u64[0] = 0x3F8000003F800000;
    v1119.i64[1] = 0x3F80000000000000;
    v1119.i64[0] = 0;
    v1120 = 0uLL;
    re::EvaluationTree::createInputRegister(a4, &v1118, v1164);
    *v1089 = *v1164;
    *&v1089[16] = *&v1164[16];
    Rotation = *(v178 + 16);
    if (Rotation)
    {
      v11 = 0;
      do
      {
        v12 = *(v178 + 16);
        if (v12 <= v11)
        {
          goto LABEL_739;
        }

        v12 = *(v178 + 56);
        v312 = 1.0 / Rotation;
        if (v12)
        {
          if (v12 <= v11)
          {
            goto LABEL_845;
          }

          v312 = *(*(v178 + 72) + 4 * v11);
        }

        v1088[0].n128_f32[0] = v312;
        v1118.n128_u32[0] = 2;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v1118);
        v1118.n128_u64[0] = *(a4 + 220) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 88), &v1118);
        re::DynamicArray<float>::add((a4 + 408), v1088);
        re::EvaluationTree::lerp(a4, v1164, &v1140, *(*(a4 + 15) + 8 * *(a4 + 13) - 8), v1137);
        re::EvaluationTree::additiveBlend(a4, v1089, v1137, v1118.n128_u64);
        *v1089 = v1118;
        *&v1089[16] = v1119.i64[0];
      }

      while (Rotation != ++v11);
    }

    v12 = a1;
    goto LABEL_480;
  }

  v1064 = v6;
  v1057 = v119;
  if (v121 == 4)
  {
    Rotation = *(v12 + 144);
    if (Rotation <= v11)
    {
      goto LABEL_951;
    }

    v189 = *(v12 + 160);
    v12 = 37;
    v1118.n128_u32[0] = 37;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    i = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), i) + 8) = v119;
    Rotation = v1097;
    if (v1097 <= v1061)
    {
      goto LABEL_967;
    }

    v190 = *(v1098 + 8 * v1061);
    v6 = v189 + 144 * v11;
    v1118.n128_u32[0] = 37;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v11 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v11) + 8) = v190;
    *v1164 = i;
    *&v1164[8] = v6;
    v1140 = v11;
    v1141 = v6;
    if (*(v6 + 64) >= 2uLL)
    {
      v1118.n128_u32[0] = 29;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v193 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v193) + 8) = v191;
      v1118.n128_u32[0] = 29;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v194 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v194) + 8) = v7;
      v7 = v194;
      v191 = v193;
    }

    v12 = 7;
    v195 = *(v6 + 4);
    v1047 = i;
    v1051 = v7;
    if (v195 == 2)
    {
      *v1137 = 0x3F80000000000000uLL;
      v1118.n128_u32[0] = 7;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v1118.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
      Rotation = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v201 = Rotation;
    }

    else
    {
      if (v195 == 1)
      {
        v11 = *(v6 + 128);
        Rotation = v1094;
        v7 = 42;
        if (v1094 <= v11)
        {
          goto LABEL_1163;
        }

        v250 = *(v1095 + 8 * v11);
        *v1137 = 0x3F80000000000000uLL;
        v1118.n128_u32[0] = 7;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v1118.n128_u64[0] = *(a4 + 245) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
        re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
        v11 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
        v1118.n128_u32[0] = 42;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        Rotation = *(a4 + 245) - 1;
        v251 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
        *(v251 + 8) = v250;
        *(v251 + 16) = v11;
        v12 = *(v6 + 128);
        i = v1097;
        if (v1097 <= v12)
        {
          goto LABEL_1175;
        }

        v252 = *(v1098 + 8 * v12);
        v1118.n128_u32[0] = 42;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v201 = *(a4 + 245) - 1;
        v202 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v201);
        *(v202 + 8) = v252;
      }

      else
      {
        if (*(v6 + 4))
        {
          goto LABEL_1504;
        }

        Rotation = *(v6 + 128);
        v12 = v1094;
        if (v1094 <= Rotation)
        {
          goto LABEL_1167;
        }

        v196 = *(v1095 + 8 * Rotation);
        v7 = 37;
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v197 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v197) + 8) = v196;
        v1118.n128_u32[0] = 31;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        Rotation = *(a4 + 245) - 1;
        v198 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
        *(v198 + 8) = v197;
        *(v198 + 16) = i;
        v12 = *(v6 + 128);
        i = v1097;
        if (v1097 <= v12)
        {
          goto LABEL_1171;
        }

        v199 = *(v1098 + 8 * v12);
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v200 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v200) + 8) = v199;
        v1118.n128_u32[0] = 31;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v201 = *(a4 + 245) - 1;
        v202 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v201);
        *(v202 + 8) = v200;
      }

      *(v202 + 16) = v11;
    }

    v1118.n128_u32[0] = 15;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v253 = *(a4 + 245) - 1;
    v254 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v253);
    *(v254 + 8) = v191;
    *(v254 + 16) = Rotation;
    v1118.n128_u32[0] = 29;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v255 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v255) + 8) = v253;
    v1118.n128_u32[0] = 15;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v256 = *(a4 + 245) - 1;
    v257 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v256);
    *(v257 + 8) = v255;
    *(v257 + 16) = v191;
    v1118.n128_u32[0] = 38;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v11 = *(a4 + 225) - 1;
    v258 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v11);
    v258[1] = v191;
    v258[2] = v256;
    v258[3] = v255;
    v1118.n128_u32[0] = 15;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v259 = *(a4 + 245) - 1;
    v260 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v259);
    *(v260 + 8) = v1051;
    *(v260 + 16) = v201;
    v1118.n128_u32[0] = 29;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v261 = *(a4 + 245) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v261) + 8) = v259;
    v1118.n128_u32[0] = 15;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v262 = *(a4 + 245) - 1;
    v263 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v262);
    *(v263 + 8) = v261;
    *(v263 + 16) = v1051;
    v1118.n128_u32[0] = 38;
    v7 = 38;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v264 = *(a4 + 225) - 1;
    v265 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v264);
    v265[1] = v1051;
    v265[2] = v262;
    v265[3] = v261;
    v1118.n128_u32[0] = 7;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v1118.n128_u64[0] = *(a4 + 245) - 1;
    re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
    re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v6 + 16));
    v266 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
    v1118.n128_u32[0] = 7;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v1118.n128_u64[0] = *(a4 + 245) - 1;
    re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
    re::DynamicArray<re::Vector3<float>>::add((a4 + 608), (v6 + 32));
    v267 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
    v1118.n128_u32[0] = 15;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
    v268 = *(a4 + 245) - 1;
    v269 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v268);
    *(v269 + 8) = v266;
    *(v269 + 16) = v267;
    v1118.n128_u32[0] = 38;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v270 = *(a4 + 225) - 1;
    v271 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v270);
    v271[1] = v266;
    v271[2] = v267;
    v271[3] = v268;
    v1118.n128_u32[0] = 33;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    Rotation = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), Rotation) + 8) = v270;
    v12 = v1097;
    i = v1061;
    if (v1097 <= v1061)
    {
      goto LABEL_971;
    }

    v272 = *(v1098 + 8 * v1061);
    v1118.n128_u32[0] = 34;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v273 = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v273) + 8) = v272;
    v1118.n128_u32[0] = 27;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v274 = *(a4 + 225) - 1;
    v275 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v274);
    *(v275 + 8) = v264;
    *(v275 + 16) = Rotation;
    v1118.n128_u32[0] = 27;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v276 = *(a4 + 225) - 1;
    v277 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v276);
    *(v277 + 8) = v11;
    *(v277 + 16) = Rotation;
    v1118.n128_u32[0] = 19;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v278 = *(a4 + 225) - 1;
    *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v278) + 8) = v274;
    v1118.n128_u32[0] = 27;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v279 = *(a4 + 225) - 1;
    v280 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v279);
    *(v280 + 8) = v276;
    *(v280 + 16) = v278;
    v1118.n128_u32[0] = 27;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
    v281 = *(a4 + 225) - 1;
    v282 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v281);
    *(v282 + 8) = v279;
    *(v282 + 16) = v273;
    v283 = re::EvaluationTree::extractScale(a4, v1057);
    if ((*(v6 + 1) & *v6 & *(v6 + 2)) == (*(v6 + 1) | *v6 | *(v6 + 2)))
    {
      *v1137 = xmmword_1E3047670;
      v1118.n128_u32[0] = 7;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v1118.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
      v284 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v1118.n128_u32[0] = 25;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v285 = *(a4 + 245) - 1;
      v286 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v285);
      *(v286 + 8) = v284;
      *(v286 + 16) = v283;
      *v1089 = xmmword_1E3047680;
      v1118.n128_u32[0] = 7;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v1118.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1089);
      v287 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v1118.n128_u32[0] = 25;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v288 = *(a4 + 245) - 1;
      v289 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v288);
      *(v289 + 8) = v287;
      *(v289 + 16) = v283;
      v1088[0] = xmmword_1E30476A0;
      v1118.n128_u32[0] = 7;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v1118.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1088);
      v290 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v1118.n128_u32[0] = 25;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      Rotation = *(a4 + 245) - 1;
      v291 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
      *(v291 + 8) = v290;
      *(v291 + 16) = v283;
      v1118.n128_u32[0] = 38;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
      v292 = *(a4 + 225) - 1;
      v293 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v292);
      v293[1] = v285;
      v293[2] = v288;
      v293[3] = Rotation;
      v1118.n128_u32[0] = 27;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
      v294 = *(a4 + 225) - 1;
      v295 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v294);
      *(v295 + 8) = v281;
      *(v295 + 16) = v292;
    }

    else
    {
      v1118.n128_u32[0] = 1;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
      v1118.n128_u64[0] = *(a4 + 215) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
      re::DynamicArray<int>::add((a4 + 368), v1089);
      v296 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
      v297 = re::EvaluationTree::extractRotation(a4, v1057);
      v1118.n128_u32[0] = 35;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
      v298 = *(a4 + 235) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v298) + 8) = v281;
      v1118.n128_u32[0] = 14;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v299 = *(a4 + 245) - 1;
      v300 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v299);
      *(v300 + 8) = v297;
      *(v300 + 16) = v296;
      v1118.n128_u32[0] = 14;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v301 = *(a4 + 245) - 1;
      v302 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v301);
      *(v302 + 8) = v298;
      *(v302 + 16) = v296;
      if (*v6)
      {
        *&v303 = 1.0;
      }

      else
      {
        *&v303 = 0.0;
      }

      if (*(v6 + 1))
      {
        v304 = 1.0;
      }

      else
      {
        v304 = 0.0;
      }

      if (*(v6 + 2))
      {
        v305 = 1.0;
      }

      else
      {
        v305 = 0.0;
      }

      *(&v303 + 1) = v304;
      *(&v303 + 2) = v305;
      *v1137 = v303;
      v1118.n128_u32[0] = 7;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v1118.n128_u64[0] = *(a4 + 245) - 1;
      re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
      re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v1137);
      v306 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
      v1118.n128_u32[0] = 10;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      Rotation = *(a4 + 245) - 1;
      v307 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation);
      v307[1] = v299;
      v307[2] = v301;
      v307[3] = v306;
      v1118.n128_u32[0] = 13;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
      v308 = *(a4 + 235) - 1;
      v309 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v308);
      *(v309 + 8) = Rotation;
      *(v309 + 16) = v296;
      v1118.n128_u32[0] = 39;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
      v294 = *(a4 + 225) - 1;
      v310 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v294);
      *(v310 + 8) = v283;
      *(v310 + 16) = v308;
    }

    i = v1066;
    v1118.n128_u32[0] = 40;
    v1119 = 0uLL;
    v1118.n128_u64[1] = 0;
    re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
    v7 = *(a4 + 230) - 1;
    v311 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v7);
    *(v311 + 8) = v294;
    *(v311 + 16) = v1047;
    v12 = a1;
LABEL_459:
    v118 = v1054;
    goto LABEL_460;
  }

  if (v121 != 5)
  {
    goto LABEL_1500;
  }

  Rotation = *(v12 + 728);
  if (Rotation <= v11)
  {
    goto LABEL_955;
  }

  v122 = (*(v12 + 744) + 24 * v11);
  memset(v1164, 0, 24);
  v123 = *v122;
  v124 = &(&re::kEvaluationCommandDescriptions)[2 * v123];
  i = *(v124 + 9);
  if (!*(v124 + 9))
  {
    goto LABEL_317;
  }

  v6 = 0;
  while (2)
  {
    v11 = v6 + *(v122 + 1);
    Rotation = *(v12 + 688);
    if (Rotation <= v11)
    {
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v390 = MEMORY[0x1E69E9C10];
      v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v413)
      {
        v414 = 3;
      }

      else
      {
        v414 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v414, &v1140, &v1118, 80, &dword_1E1C61000, v390, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      v389 = _os_crash_msg();
      __break(1u);
      goto LABEL_558;
    }

    v125 = (*(v12 + 704) + 16 * v11);
    v126 = *v125;
    if (v126 == 3)
    {
      v18 = *(v125 + 1);
      Rotation = *(v12 + 648);
      if (Rotation > v18)
      {
        v138 = (*(v12 + 664) + 16 * v18);
        v139 = *v138;
        if (*v138 > 3u)
        {
          if (*v138 > 5u)
          {
            if (v139 == 6)
            {
              v11 = *(v138 + 1);
              Rotation = *(&v1076 + 1);
              if (*(&v1076 + 1) <= v11)
              {
                goto LABEL_987;
              }

              v140 = v1077;
            }

            else
            {
              if (v139 != 7)
              {
                goto LABEL_1502;
              }

              v11 = *(v138 + 1);
              Rotation = v1078;
              if (v1078 <= v11)
              {
                goto LABEL_983;
              }

              v140 = *(&v1078 + 1);
            }
          }

          else if (v139 == 4)
          {
            v11 = *(v138 + 1);
            Rotation = *(&v1073 + 1);
            if (*(&v1073 + 1) <= v11)
            {
              goto LABEL_1003;
            }

            v140 = v1074;
          }

          else
          {
            if (v139 != 5)
            {
              goto LABEL_1502;
            }

            v11 = *(v138 + 1);
            Rotation = v1075;
            if (v1075 <= v11)
            {
              goto LABEL_1023;
            }

            v140 = *(&v1075 + 1);
          }
        }

        else if (*v138 > 1u)
        {
          if (v139 == 2)
          {
            v11 = *(v138 + 1);
            Rotation = *(&v1070 + 1);
            if (*(&v1070 + 1) <= v11)
            {
              goto LABEL_1031;
            }

            v140 = v1071;
          }

          else
          {
            if (v139 != 3)
            {
              goto LABEL_1502;
            }

            v11 = *(v138 + 1);
            Rotation = v1072;
            if (v1072 <= v11)
            {
              goto LABEL_991;
            }

            v140 = *(&v1072 + 1);
          }
        }

        else if (*v138)
        {
          v11 = *(v138 + 1);
          Rotation = v1069;
          if (v1069 <= v11)
          {
            goto LABEL_1035;
          }

          v140 = *(&v1069 + 1);
        }

        else
        {
          v11 = *(v138 + 1);
          Rotation = *(&v1067 + 1);
          if (*(&v1067 + 1) <= v11)
          {
            goto LABEL_999;
          }

          v140 = v1068;
        }

        v135 = *(v140 + 8 * v11);
LABEL_314:
        *&v1164[8 * v6] = v135;
        goto LABEL_315;
      }

      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v513 = MEMORY[0x1E69E9C10];
      v514 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v514)
      {
        v515 = 3;
      }

      else
      {
        v515 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v18;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v515, &v1140, &v1118, 80, &dword_1E1C61000, v513, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_777:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v516 = MEMORY[0x1E69E9C10];
      v517 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v517)
      {
        v518 = 3;
      }

      else
      {
        v518 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v18;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v518, &v1140, &v1118, 80, &dword_1E1C61000, v516, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_781:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v519 = MEMORY[0x1E69E9C10];
      v520 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v520)
      {
        v521 = 3;
      }

      else
      {
        v521 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v18;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v521, &v1140, &v1118, 80, &dword_1E1C61000, v519, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_785:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v522 = MEMORY[0x1E69E9C10];
      v523 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v523)
      {
        v524 = 3;
      }

      else
      {
        v524 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v18;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v524, &v1140, &v1118, 80, &dword_1E1C61000, v522, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_789:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v525 = MEMORY[0x1E69E9C10];
      v526 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v526)
      {
        v527 = 3;
      }

      else
      {
        v527 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v18;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v527, &v1067, &v1118, 80, &dword_1E1C61000, v525, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_793:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v528 = MEMORY[0x1E69E9C10];
      v529 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v529)
      {
        v530 = 3;
      }

      else
      {
        v530 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v530, &v1067, &v1118, 80, &dword_1E1C61000, v528, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_797:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v531 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v531)
      {
        v532 = 3;
      }

      else
      {
        v532 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v532, &v1067, &v1118, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_801:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      v533 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v533)
      {
        v534 = 3;
      }

      else
      {
        v534 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v51;
      _os_log_send_and_compose_impl(v534, &v1067, &v1118, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_805:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v535 = MEMORY[0x1E69E9C10];
      v536 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v536)
      {
        v537 = 3;
      }

      else
      {
        v537 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v537, &v1067, &v1118, 80, &dword_1E1C61000, v535, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_809:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v538 = MEMORY[0x1E69E9C10];
      v539 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v539)
      {
        v540 = 3;
      }

      else
      {
        v540 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v540, &v1067, &v1118, 80, &dword_1E1C61000, v538, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_813:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v541 = MEMORY[0x1E69E9C10];
      v542 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v542)
      {
        v543 = 3;
      }

      else
      {
        v543 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v543, &v1067, &v1118, 80, &dword_1E1C61000, v541, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_817:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v544 = MEMORY[0x1E69E9C10];
      v545 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v545)
      {
        v546 = 3;
      }

      else
      {
        v546 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v546, v1164, &v1118, 80, &dword_1E1C61000, v544, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_821:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v547 = MEMORY[0x1E69E9C10];
      v548 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v548)
      {
        v549 = 3;
      }

      else
      {
        v549 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = i;
      v1138 = 2048;
      *v1139 = v11;
      _os_log_send_and_compose_impl(v549, v1164, &v1118, 80, &dword_1E1C61000, v547, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_825:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v550 = MEMORY[0x1E69E9C10];
      v551 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v551)
      {
        v552 = 3;
      }

      else
      {
        v552 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v552, &v1067, &v1118, 80, &dword_1E1C61000, v550, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_829:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      v553 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v553)
      {
        v554 = 3;
      }

      else
      {
        v554 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v11;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v554, &v1067, &v1118, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_833:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v555 = MEMORY[0x1E69E9C10];
      v556 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v556)
      {
        v557 = 3;
      }

      else
      {
        v557 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v69;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = i;
      _os_log_send_and_compose_impl(v557, v1137, &v1118, 80, &dword_1E1C61000, v555, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_837:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v558 = MEMORY[0x1E69E9C10];
      v559 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v559)
      {
        v560 = 3;
      }

      else
      {
        v560 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v69;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v560, v1137, &v1118, 80, &dword_1E1C61000, v558, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_841:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v11 = MEMORY[0x1E69E9C10];
      v561 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v561)
      {
        v562 = 3;
      }

      else
      {
        v562 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v69;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = i;
      _os_log_send_and_compose_impl(v562, v1137, &v1118, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_845:
      v1088[0].n128_u64[0] = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v128 = MEMORY[0x1E69E9C10];
      v563 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v563)
      {
        v564 = 3;
      }

      else
      {
        v564 = 2;
      }

      *&v1137[14] = 797;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = v12;
      _os_log_send_and_compose_impl(v564, v1088, &v1118, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_849:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v565 = MEMORY[0x1E69E9C10];
      v566 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v566)
      {
        v567 = 3;
      }

      else
      {
        v567 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v128;
      v1138 = 2048;
      *v1139 = v7;
      _os_log_send_and_compose_impl(v567, &v1140, &v1118, 80, &dword_1E1C61000, v565, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_853:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v568 = MEMORY[0x1E69E9C10];
      v569 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v569)
      {
        v570 = 3;
      }

      else
      {
        v570 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v7;
      v1138 = 2048;
      *v1139 = v128;
      _os_log_send_and_compose_impl(v570, &v1140, &v1118, 80, &dword_1E1C61000, v568, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_857:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v571 = MEMORY[0x1E69E9C10];
      v572 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v572)
      {
        v573 = 3;
      }

      else
      {
        v573 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v573, &v1067, &v1118, 80, &dword_1E1C61000, v571, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_861:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v574 = MEMORY[0x1E69E9C10];
      v575 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v575)
      {
        v576 = 3;
      }

      else
      {
        v576 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v576, &v1067, &v1118, 80, &dword_1E1C61000, v574, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_865:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v577 = MEMORY[0x1E69E9C10];
      v578 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v578)
      {
        v579 = 3;
      }

      else
      {
        v579 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v9;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v579, &v1067, &v1118, 80, &dword_1E1C61000, v577, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_869:
      *&v1067 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v69 = MEMORY[0x1E69E9C10];
      v580 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v580)
      {
        v581 = 3;
      }

      else
      {
        v581 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 789;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v581, &v1067, &v1118, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_873:
      *v1137 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v582 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v582)
      {
        v583 = 3;
      }

      else
      {
        v583 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v69;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v1066;
      _os_log_send_and_compose_impl(v583, v1137, &v1118, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_877:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v584 = MEMORY[0x1E69E9C10];
      v585 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v585)
      {
        v586 = 3;
      }

      else
      {
        v586 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v18;
      v1138 = 2048;
      *v1139 = v7;
      _os_log_send_and_compose_impl(v586, &v1140, &v1118, 80, &dword_1E1C61000, v584, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_881:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v587 = MEMORY[0x1E69E9C10];
      v588 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v588)
      {
        v589 = 3;
      }

      else
      {
        v589 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = i;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v589, &v1082, &v1118, 80, &dword_1E1C61000, v587, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_885:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v590 = MEMORY[0x1E69E9C10];
      v591 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v591)
      {
        v592 = 3;
      }

      else
      {
        v592 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 797;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = i;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v592, &v1082, &v1118, 80, &dword_1E1C61000, v590, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_889:
      v1082 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v593 = MEMORY[0x1E69E9C10];
      v594 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v594)
      {
        v595 = 3;
      }

      else
      {
        v595 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = Rotation;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = v12;
      _os_log_send_and_compose_impl(v595, &v1082, &v1118, 80, &dword_1E1C61000, v593, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
      goto LABEL_893;
    }

    if (v126 == 2)
    {
      v18 = *(v125 + 1);
      Rotation = *(v12 + 544);
      if (Rotation <= v18)
      {
        goto LABEL_777;
      }

      v133 = (*(v12 + 560) + 16 * v18);
      v134 = *v133;
      if (*v133 > 3u)
      {
        if (*v133 > 5u)
        {
          if (v134 == 6)
          {
            v11 = *(v133 + 1);
            Rotation = *(&v1115 + 1);
            if (*(&v1115 + 1) <= v11)
            {
              goto LABEL_1039;
            }

            v135 = *(v1116 + 8 * v11);
            if (v135 == -1)
            {
              Rotation = *(v12 + 464);
              if (Rotation <= v11)
              {
                goto LABEL_1228;
              }

              v167 = *(v12 + 480);
              v1118.n128_u32[0] = 6;
              v168 = (v167 + 8 * v11);
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1904), &v1118);
              v1118.n128_u64[0] = *(a4 + 240) - 1;
              re::DynamicArray<unsigned long>::add((a4 + 248), &v1118);
              re::DynamicArray<unsigned long>::add((a4 + 568), v168);
              Rotation = *(&v1115 + 1);
              if (*(&v1115 + 1) <= v11)
              {
                goto LABEL_1264;
              }

              v135 = *(*(a4 + 35) + 8 * *(a4 + 33) - 8);
              *(v1116 + 8 * v11) = v135;
              Rotation = *(&v1115 + 1);
            }

            if (Rotation <= v11)
            {
              goto LABEL_1051;
            }
          }

          else
          {
            if (v134 != 7)
            {
              goto LABEL_1501;
            }

            v11 = *(v133 + 1);
            Rotation = v1117;
            if (v1117 <= v11)
            {
              goto LABEL_1043;
            }

            v135 = *(*(&v1117 + 1) + 8 * v11);
            if (v135 == -1)
            {
              Rotation = *(v12 + 504);
              if (Rotation <= v11)
              {
                goto LABEL_1224;
              }

              v149 = *(v12 + 520);
              v1118.n128_u32[0] = 7;
              v150 = (v149 + 16 * v11);
              v1119 = 0uLL;
              v1118.n128_u64[1] = 0;
              re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
              v1118.n128_u64[0] = *(a4 + 245) - 1;
              re::DynamicArray<unsigned long>::add((a4 + 288), &v1118);
              re::DynamicArray<re::Vector3<float>>::add((a4 + 608), v150);
              Rotation = v1117;
              if (v1117 <= v11)
              {
                goto LABEL_1260;
              }

              v135 = *(*(a4 + 40) + 8 * *(a4 + 38) - 8);
              *(*(&v1117 + 1) + 8 * v11) = v135;
              Rotation = v1117;
            }

            if (Rotation <= v11)
            {
              goto LABEL_1063;
            }
          }
        }

        else if (v134 == 4)
        {
          v11 = *(v133 + 1);
          Rotation = *(&v1112 + 1);
          if (*(&v1112 + 1) <= v11)
          {
            goto LABEL_1015;
          }

          v135 = *(v1113 + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 384);
            if (Rotation <= v11)
            {
              goto LABEL_1216;
            }

            v163 = *(v12 + 400);
            v1118.n128_u32[0] = 4;
            v164 = v163 + (v11 << 6);
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
            v1118.n128_u64[0] = *(a4 + 230) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 168), &v1118);
            re::DynamicArray<re::Matrix4x4<float>>::add((a4 + 488), v164);
            Rotation = *(&v1112 + 1);
            if (*(&v1112 + 1) <= v11)
            {
              goto LABEL_1248;
            }

            v135 = *(*(a4 + 25) + 8 * *(a4 + 23) - 8);
            *(v1113 + 8 * v11) = v135;
            Rotation = *(&v1112 + 1);
          }

          if (Rotation <= v11)
          {
            goto LABEL_1071;
          }
        }

        else
        {
          if (v134 != 5)
          {
            goto LABEL_1501;
          }

          v11 = *(v133 + 1);
          Rotation = v1114;
          if (v1114 <= v11)
          {
            goto LABEL_1019;
          }

          v135 = *(*(&v1114 + 1) + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 424);
            if (Rotation <= v11)
            {
              goto LABEL_1220;
            }

            v141 = *(v12 + 440);
            v1118.n128_u32[0] = 5;
            v142 = (v141 + 16 * v11);
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
            v1118.n128_u64[0] = *(a4 + 235) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
            re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v142);
            Rotation = v1114;
            if (v1114 <= v11)
            {
              goto LABEL_1252;
            }

            v135 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
            *(*(&v1114 + 1) + 8 * v11) = v135;
            Rotation = v1114;
          }

          if (Rotation <= v11)
          {
            goto LABEL_1047;
          }
        }
      }

      else if (*v133 > 1u)
      {
        if (v134 == 2)
        {
          v11 = *(v133 + 1);
          Rotation = *(&v1109 + 1);
          if (*(&v1109 + 1) <= v11)
          {
            goto LABEL_995;
          }

          v135 = *(v1110 + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 304);
            if (Rotation <= v11)
            {
              goto LABEL_1240;
            }

            v165 = *(v12 + 320);
            v1118.n128_u32[0] = 2;
            v166 = (v165 + 4 * v11);
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1744), &v1118);
            v1118.n128_u64[0] = *(a4 + 220) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 88), &v1118);
            re::DynamicArray<float>::add((a4 + 408), v166);
            Rotation = *(&v1109 + 1);
            if (*(&v1109 + 1) <= v11)
            {
              goto LABEL_1272;
            }

            v135 = *(*(a4 + 15) + 8 * *(a4 + 13) - 8);
            *(v1110 + 8 * v11) = v135;
            Rotation = *(&v1109 + 1);
          }

          if (Rotation <= v11)
          {
            goto LABEL_1075;
          }
        }

        else
        {
          if (v134 != 3)
          {
            goto LABEL_1501;
          }

          v11 = *(v133 + 1);
          Rotation = v1111;
          if (v1111 <= v11)
          {
            goto LABEL_1007;
          }

          v135 = *(*(&v1111 + 1) + 8 * v11);
          if (v135 == -1)
          {
            Rotation = *(v12 + 344);
            if (Rotation <= v11)
            {
              goto LABEL_1232;
            }

            v147 = *(v12 + 360);
            v1118.n128_u32[0] = 3;
            v148 = v147 + 48 * v11;
            v1119 = 0uLL;
            v1118.n128_u64[1] = 0;
            re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
            v1118.n128_u64[0] = *(a4 + 225) - 1;
            re::DynamicArray<unsigned long>::add((a4 + 128), &v1118);
            re::DynamicArray<re::Matrix3x3<float>>::add((a4 + 448), v148);
            Rotation = v1111;
            if (v1111 <= v11)
            {
              goto LABEL_1276;
            }

            v135 = *(*(a4 + 20) + 8 * *(a4 + 18) - 8);
            *(*(&v1111 + 1) + 8 * v11) = v135;
            Rotation = v1111;
          }

          if (Rotation <= v11)
          {
            goto LABEL_1055;
          }
        }
      }

      else if (*v133)
      {
        v11 = *(v133 + 1);
        Rotation = v1108[2].n128_u64[0];
        if (v1108[2].n128_u64[0] <= v11)
        {
          goto LABEL_1011;
        }

        v135 = *(v1108[2].n128_u64[1] + 8 * v11);
        if (v135 == -1)
        {
          Rotation = *(v12 + 264);
          if (Rotation <= v11)
          {
            goto LABEL_1244;
          }

          v136 = *(v12 + 280);
          v1118.n128_u32[0] = 1;
          v137 = (v136 + 4 * v11);
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
          v1118.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
          re::DynamicArray<int>::add((a4 + 368), v137);
          Rotation = v1108[2].n128_u64[0];
          if (v1108[2].n128_u64[0] <= v11)
          {
            goto LABEL_1268;
          }

          v135 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          *(v1108[2].n128_u64[1] + 8 * v11) = v135;
          Rotation = v1108[2].n128_u64[0];
        }

        if (Rotation <= v11)
        {
          goto LABEL_1067;
        }
      }

      else
      {
        v11 = *(v133 + 1);
        Rotation = v1108[0].n128_u64[1];
        if (v1108[0].n128_u64[1] <= v11)
        {
          goto LABEL_1027;
        }

        v135 = *(v1108[1].n128_u64[0] + 8 * v11);
        if (v135 == -1)
        {
          Rotation = *(v12 + 224);
          if (Rotation <= v11)
          {
            goto LABEL_1236;
          }

          v161 = *(v12 + 240);
          v1118.n128_u32[0] = 0;
          v162 = (v161 + 4 * v11);
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1664), &v1118);
          v1118.n128_u64[0] = *(a4 + 210) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 8), &v1118);
          re::DynamicArray<int>::add((a4 + 328), v162);
          Rotation = v1108[0].n128_u64[1];
          if (v1108[0].n128_u64[1] <= v11)
          {
            goto LABEL_1256;
          }

          v135 = *(*(a4 + 5) + 8 * *(a4 + 3) - 8);
          *(v1108[1].n128_u64[0] + 8 * v11) = v135;
          Rotation = v1108[0].n128_u64[1];
        }

        if (Rotation <= v11)
        {
          goto LABEL_1059;
        }
      }

      goto LABEL_314;
    }

    if (v126 != 1)
    {
      goto LABEL_1452;
    }

    v18 = *(v125 + 1);
    Rotation = *(v12 + 184);
    if (Rotation <= v18)
    {
      goto LABEL_781;
    }

    v127 = v12;
    v12 = *(v12 + 200) + 16 * v18;
    v18 = *(v12 + 8);
    Rotation = *(v127 + 1048);
    if (Rotation <= v18)
    {
      goto LABEL_785;
    }

    Rotation = *(v127 + 1064) + 56 * v18;
    v128 = *(Rotation + 32);
    v7 = v1094;
    if (v128 == -1)
    {
      if (v1094 <= v18)
      {
        goto LABEL_877;
      }

      v131 = *(v1095 + 8 * v18);
    }

    else
    {
      if (v1094 <= v128)
      {
        goto LABEL_849;
      }

      v129 = *(v1095 + 8 * v128);
      v1118.n128_u32[0] = 20;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v130 = *(a4 + 230) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v130) + 8) = v129;
      v7 = *(v12 + 8);
      v128 = v1094;
      if (v1094 <= v7)
      {
        goto LABEL_853;
      }

      v7 = *(v1095 + 8 * v7);
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v131 = *(a4 + 230) - 1;
      v132 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v131);
      *(v132 + 8) = v130;
      *(v132 + 16) = v7;
    }

    v143 = *v12;
    if (v143 == 3)
    {
      v1118.n128_u32[0] = 37;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
      v146 = *(a4 + 245) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v146) + 8) = v131;
      *&v1164[8 * v6] = v146;
      v12 = a1;
    }

    else
    {
      v12 = a1;
      if (v143 == 2)
      {
        *&v1164[8 * v6] = re::EvaluationTree::extractScale(a4, v131);
      }

      else
      {
        if (v143 != 1)
        {
          goto LABEL_1498;
        }

        v144 = *(Rotation + 16);
        if (v144 == 2)
        {
          v11 = *(Rotation + 24);
          Rotation = a1[116];
          if (Rotation <= v11)
          {
            goto LABEL_939;
          }

          v151 = (a1[118] + 96 * v11);
          *v1137 = v151[5].n128_u8[0];
          v1050 = re::EvaluationTree::extractRotation(a4, v131);
          v1118.n128_u32[0] = 5;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v1118.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v151 + 1);
          v152 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v1118.n128_u32[0] = 18;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v153 = *(a4 + 235) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v153) + 8) = v152;
          v1118.n128_u32[0] = 5;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v1118.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v151 + 3);
          v154 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v1118.n128_u32[0] = 18;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v155 = *(a4 + 235) - 1;
          *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v155) + 8) = v154;
          v12 = a1;
          v1118.n128_u32[0] = 24;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v7 = *(a4 + 235) - 1;
          v156 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v7);
          *(v156 + 8) = v153;
          *(v156 + 16) = v1050;
          v1118.n128_u32[0] = 24;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v145 = *(a4 + 235) - 1;
          v157 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v145);
          *(v157 + 8) = v7;
          *(v157 + 16) = v155;
        }

        else
        {
          if (v144 != 1)
          {
            goto LABEL_1499;
          }

          v11 = *(Rotation + 24);
          Rotation = a1[111];
          if (Rotation <= v11)
          {
            goto LABEL_943;
          }

          *v1137 = *(a1[113] + (v11 << 6) + 48);
          v145 = re::EvaluationTree::extractRotation(a4, v131);
        }

        v1118.n128_u32[0] = 1;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
        v1118.n128_u64[0] = *(a4 + 215) - 1;
        re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
        re::DynamicArray<int>::add((a4 + 368), v1137);
        v158 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
        v1118.n128_u32[0] = 14;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v159 = *(a4 + 245) - 1;
        v160 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v159);
        *(v160 + 8) = v145;
        *(v160 + 16) = v158;
        *&v1164[8 * v6] = v159;
      }
    }

LABEL_315:
    if (i != ++v6)
    {
      continue;
    }

    break;
  }

  v123 = *v122;
  v6 = v1064;
LABEL_317:
  appended = re::EvaluationTree::appendEvaluationCommand(a4, v123, v1164, i);
  v11 = *(v122 + 2);
  Rotation = *(v12 + 688);
  if (Rotation <= v11)
  {
    goto LABEL_979;
  }

  i = appended;
  v170 = (*(v12 + 704) + 16 * v11);
  v171 = *v170;
  if (v171 == 1)
  {
    v11 = *(v170 + 1);
    Rotation = *(v12 + 184);
    v7 = v1054;
    v231 = v1057;
    if (Rotation <= v11)
    {
      goto LABEL_1135;
    }

    Rotation = *(v12 + 200) + 16 * v11;
    v11 = *(Rotation + 8);
    v232 = v12;
    v12 = *(v12 + 1048);
    if (v12 <= v11)
    {
      goto LABEL_1139;
    }

    v6 = *(v232 + 1064) + 56 * v11;
    v11 = *(v6 + 32);
    if (v11 == -1)
    {
      v12 = v232;
    }

    else
    {
      v12 = v1094;
      if (v1094 <= v11)
      {
        goto LABEL_1208;
      }

      v233 = *(v1095 + 8 * v11);
      v1118.n128_u32[0] = 20;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v234 = *(a4 + 230) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v234) + 8) = v233;
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v235 = *(a4 + 230) - 1;
      v236 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v235);
      *(v236 + 8) = v234;
      *(v236 + 16) = v1057;
      v231 = v235;
      v12 = a1;
    }

    v313 = *Rotation;
    if (v313 == 3)
    {
      v1118.n128_u32[0] = 34;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1784), &v1118);
      v324 = *(a4 + 225) - 1;
      *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix3x3<float>>((a4 + 1664), v324) + 8) = v231;
      v1118.n128_u32[0] = 40;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v172 = *(a4 + 230) - 1;
      v325 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v172);
      *(v325 + 8) = v324;
      *(v325 + 16) = i;
    }

    else
    {
      if (v313 == 2)
      {
        v318 = re::EvaluationTree::extractRotation(a4, v231);
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        v319 = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), v319) + 8) = v231;
        v320 = a4;
        v321 = i;
        v322 = v318;
        v323 = v319;
      }

      else
      {
        if (v313 != 1)
        {
          re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Unexpected node channel type.", "!Unreachable code", "constructEvaluationCommands", 1545);
          _os_crash("assertion failure: (!Unreachable code) Unexpected node channel type.");
          __break(1u);
LABEL_1506:
          re::internal::assertLog(4, v117, "assertion failure: '%s' (%s:line %i) Invalid parameter rig node type.", "!Unreachable code", "constructEvaluationCommands", 1522);
          _os_crash("assertion failure: (!Unreachable code) Invalid parameter rig node type.");
          __break(1u);
          goto LABEL_1507;
        }

        v314 = *(v6 + 16);
        if (v314 == 2)
        {
          v11 = *(v6 + 24);
          Rotation = *(v12 + 928);
          if (Rotation <= v11)
          {
            goto LABEL_1352;
          }

          v362 = (*(v12 + 944) + 96 * v11);
          *v1137 = v362[5].n128_u8[0];
          v1118.n128_u32[0] = 5;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v1118.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v362 + 1);
          v363 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v1118.n128_u32[0] = 5;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v1118.n128_u64[0] = *(a4 + 235) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 208), &v1118);
          re::DynamicArray<re::Vector3<float>>::add((a4 + 528), v362 + 3);
          v364 = *(*(a4 + 30) + 8 * *(a4 + 28) - 8);
          v1118.n128_u32[0] = 1;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
          v1118.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
          re::DynamicArray<int>::add((a4 + 368), v1137);
          v365 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          v1118.n128_u32[0] = 13;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v366 = *(a4 + 235) - 1;
          v367 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v366);
          *(v367 + 8) = i;
          *(v367 + 16) = v365;
          v1118.n128_u32[0] = 24;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v368 = *(a4 + 235) - 1;
          v369 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v368);
          *(v369 + 8) = v363;
          *(v369 + 16) = v366;
          v1118.n128_u32[0] = 24;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v316 = *(a4 + 235) - 1;
          v370 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v316);
          *(v370 + 8) = v368;
          *(v370 + 16) = v364;
          v12 = a1;
        }

        else
        {
          if (v314 != 1)
          {
            goto LABEL_1506;
          }

          v11 = *(v6 + 24);
          Rotation = *(v12 + 888);
          if (Rotation <= v11)
          {
            goto LABEL_1356;
          }

          *v1137 = *(*(v12 + 904) + (v11 << 6) + 48);
          v1118.n128_u32[0] = 1;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1704), &v1118);
          v1118.n128_u64[0] = *(a4 + 215) - 1;
          re::DynamicArray<unsigned long>::add((a4 + 48), &v1118);
          re::DynamicArray<int>::add((a4 + 368), v1137);
          v315 = *(*(a4 + 10) + 8 * *(a4 + 8) - 8);
          v1118.n128_u32[0] = 13;
          v1119 = 0uLL;
          v1118.n128_u64[1] = 0;
          re::DynamicArray<re::EvaluationRegister>::add((a4 + 1864), &v1118);
          v316 = *(a4 + 235) - 1;
          v317 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Quaternion<float>>((a4 + 1664), v316);
          *(v317 + 8) = i;
          *(v317 + 16) = v315;
        }

        v371 = re::EvaluationTree::extractScale(a4, v231);
        v1118.n128_u32[0] = 37;
        v1119 = 0uLL;
        v1118.n128_u64[1] = 0;
        re::DynamicArray<re::EvaluationRegister>::add((a4 + 1944), &v1118);
        Rotation = *(a4 + 245) - 1;
        *(re::DynamicEvaluationRegisterTable::evaluationRegister<re::Vector3<float>>((a4 + 1664), Rotation) + 8) = v231;
        v320 = a4;
        v321 = v371;
        v322 = v316;
        v323 = Rotation;
      }

      v172 = re::EvaluationTree::constructMatrix4x4(v320, v321, v322, v323);
    }

    i = v1066;
    v11 = *(v6 + 32);
    if (v11 == -1)
    {
      v118 = v1054;
      v6 = v1064;
    }

    else
    {
      Rotation = v1094;
      v6 = v1064;
      if (v1094 <= v11)
      {
        goto LABEL_1212;
      }

      v372 = *(v1095 + 8 * v11);
      v1118.n128_u32[0] = 28;
      v1119 = 0uLL;
      v1118.n128_u64[1] = 0;
      re::DynamicArray<re::EvaluationRegister>::add((a4 + 1824), &v1118);
      v373 = *(a4 + 230) - 1;
      v374 = re::DynamicEvaluationRegisterTable::evaluationRegister<re::Matrix4x4<float>>((a4 + 1664), v373);
      *(v374 + 8) = v372;
      *(v374 + 16) = v172;
      v172 = v373;
      v118 = v1054;
    }

    goto LABEL_500;
  }

  v118 = v1054;
  v172 = v1057;
  if (v171 != 3)
  {
    goto LABEL_1503;
  }

  v11 = *(v170 + 1);
  Rotation = *(v12 + 648);
  if (Rotation <= v11)
  {
    goto LABEL_1131;
  }

  v173 = (*(v12 + 664) + 16 * v11);
  v174 = *v173;
  if (*v173 > 3u)
  {
    if (*v173 > 5u)
    {
      if (v174 != 6)
      {
        if (v174 != 7)
        {
          goto LABEL_1507;
        }

        v11 = *(v173 + 1);
        Rotation = v1078;
        if (v1078 > v11)
        {
          v175 = *(&v1078 + 1);
          goto LABEL_499;
        }

        goto LABEL_1364;
      }

      v11 = *(v173 + 1);
      Rotation = *(&v1076 + 1);
      if (*(&v1076 + 1) <= v11)
      {
        goto LABEL_1368;
      }

      v175 = v1077;
    }

    else if (v174 == 4)
    {
      v11 = *(v173 + 1);
      Rotation = *(&v1073 + 1);
      if (*(&v1073 + 1) <= v11)
      {
        goto LABEL_1388;
      }

      v175 = v1074;
    }

    else
    {
      if (v174 != 5)
      {
        goto LABEL_1507;
      }

      v11 = *(v173 + 1);
      Rotation = v1075;
      if (v1075 <= v11)
      {
        goto LABEL_1392;
      }

      v175 = *(&v1075 + 1);
    }

    goto LABEL_499;
  }

  if (*v173 <= 1u)
  {
    if (*v173)
    {
      v11 = *(v173 + 1);
      Rotation = v1069;
      if (v1069 > v11)
      {
        v175 = *(&v1069 + 1);
        goto LABEL_499;
      }

LABEL_1384:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v949 = MEMORY[0x1E69E9C10];
      v950 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v950)
      {
        v951 = 3;
      }

      else
      {
        v951 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v951, &v1140, &v1118, 80, &dword_1E1C61000, v949, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1388:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v952 = MEMORY[0x1E69E9C10];
      v953 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v953)
      {
        v954 = 3;
      }

      else
      {
        v954 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v954, &v1140, &v1118, 80, &dword_1E1C61000, v952, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1392:
      v1140 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v955 = MEMORY[0x1E69E9C10];
      v956 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v1137 = 136315906;
      *&v1137[4] = "operator[]";
      *&v1137[12] = 1024;
      if (v956)
      {
        v957 = 3;
      }

      else
      {
        v957 = 2;
      }

      *&v1137[14] = 468;
      *&v1137[18] = 2048;
      *&v1137[20] = v11;
      v1138 = 2048;
      *v1139 = Rotation;
      _os_log_send_and_compose_impl(v957, &v1140, &v1118, 80, &dword_1E1C61000, v955, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
LABEL_1396:
      *v1164 = 0;
      v1121 = 0u;
      v1122 = 0u;
      v1119 = 0u;
      v1120 = 0u;
      v1118 = 0u;
      v958 = MEMORY[0x1E69E9C10];
      v959 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v1108[0].n128_u32[0] = 136315906;
      *(v1108[0].n128_u64 + 4) = "operator[]";
      v1108[0].n128_u16[6] = 1024;
      if (v959)
      {
        v960 = 3;
      }

      else
      {
        v960 = 2;
      }

      *(&v1108[0].n128_u32[3] + 2) = 468;
      v1108[1].n128_u16[1] = 2048;
      *(v1108[1].n128_u64 + 4) = v12;
      v1108[1].n128_u16[6] = 2048;
      *(&v1108[1].n128_u64[1] + 6) = Rotation;
      _os_log_send_and_compose_impl(v960, v1164, &v1118, 80, &dword_1E1C61000, v958, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1108, 38, v1040, v1041);
      _os_crash_msg();
      __break(1u);
      goto LABEL_1400;
    }

    v11 = *(v173 + 1);
    Rotation = *(&v1067 + 1);
    if (*(&v1067 + 1) > v11)
    {
      v175 = v1068;
      goto LABEL_499;
    }

LABEL_1372:
    v1140 = 0;
    v1121 = 0u;
    v1122 = 0u;
    v1119 = 0u;
    v1120 = 0u;
    v1118 = 0u;
    v940 = MEMORY[0x1E69E9C10];
    v941 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1137 = 136315906;
    *&v1137[4] = "operator[]";
    *&v1137[12] = 1024;
    if (v941)
    {
      v942 = 3;
    }

    else
    {
      v942 = 2;
    }

    *&v1137[14] = 468;
    *&v1137[18] = 2048;
    *&v1137[20] = v11;
    v1138 = 2048;
    *v1139 = Rotation;
    _os_log_send_and_compose_impl(v942, &v1140, &v1118, 80, &dword_1E1C61000, v940, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
    _os_crash_msg();
    __break(1u);
LABEL_1376:
    v1140 = 0;
    v1121 = 0u;
    v1122 = 0u;
    v1119 = 0u;
    v1120 = 0u;
    v1118 = 0u;
    v943 = MEMORY[0x1E69E9C10];
    v944 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1137 = 136315906;
    *&v1137[4] = "operator[]";
    *&v1137[12] = 1024;
    if (v944)
    {
      v945 = 3;
    }

    else
    {
      v945 = 2;
    }

    *&v1137[14] = 468;
    *&v1137[18] = 2048;
    *&v1137[20] = v11;
    v1138 = 2048;
    *v1139 = Rotation;
    _os_log_send_and_compose_impl(v945, &v1140, &v1118, 80, &dword_1E1C61000, v943, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
    _os_crash_msg();
    __break(1u);
LABEL_1380:
    v1140 = 0;
    v1121 = 0u;
    v1122 = 0u;
    v1119 = 0u;
    v1120 = 0u;
    v1118 = 0u;
    v946 = MEMORY[0x1E69E9C10];
    v947 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v1137 = 136315906;
    *&v1137[4] = "operator[]";
    *&v1137[12] = 1024;
    if (v947)
    {
      v948 = 3;
    }

    else
    {
      v948 = 2;
    }

    *&v1137[14] = 468;
    *&v1137[18] = 2048;
    *&v1137[20] = v11;
    v1138 = 2048;
    *v1139 = Rotation;
    _os_log_send_and_compose_impl(v948, &v1140, &v1118, 80, &dword_1E1C61000, v946, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v1137, 38, v1040, v1041);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1384;
  }

  if (v174 == 2)
  {
    v11 = *(v173 + 1);
    Rotation = *(&v1070 + 1);
    if (*(&v1070 + 1) <= v11)
    {
      goto LABEL_1380;
    }

    v175 = v1071;
LABEL_499:
    *(v175 + 8 * v11) = appended;
    i = v1066;
LABEL_500:
    v7 = v172;
    goto LABEL_501;
  }

  if (v174 == 3)
  {
    v11 = *(v173 + 1);
    Rotation = v1072;
    if (v1072 > v11)
    {
      v175 = *(&v1072 + 1);
      goto LABEL_499;
    }

    goto LABEL_1376;
  }

LABEL_1507:
  re::internal::assertLog(5, v117, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "constructEvaluationCommands", 1562, v174);
  _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v1038);
  __break(1u);
LABEL_1508:
  re::internal::assertLog(5, v84, "assertion failure: '%s' (%s:line %i) Unknown Rig IK handle type: %u.", "!Unreachable code", "constructEvaluationCommands", 936, v87);
  _os_crash("assertion failure: (!Unreachable code) Unknown Rig IK handle type: %u.", v1039);
  __break(1u);
}