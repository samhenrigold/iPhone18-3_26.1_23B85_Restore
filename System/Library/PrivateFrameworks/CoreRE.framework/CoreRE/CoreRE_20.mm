void re::convertQuaternionsToIntrinsicEulers<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a2)
      {
        v105 = 0;
        v106 = (a1 + 8);
        v107 = (a4 + 8);
        v108 = 1.0;
        while (a5 != v105)
        {
          v109 = *(v106 - 2);
          v110 = *(v106 - 1);
          v111 = v109 + v109;
          v112 = v110 + v110;
          v113 = *v106;
          v114 = v106[1];
          v115 = v113 + v113;
          v116 = v110 * (v110 + v110);
          v147 = (v110 + v110) * *v106;
          v153 = v109 * (v109 + v109);
          v141 = (v109 + v109) * v114;
          v117 = (v109 + v109) * v110;
          v118 = (v113 + v113) * v114;
          v119 = v117 - v118;
          if ((v117 - v118) > v108)
          {
            v119 = v108;
          }

          if (v119 >= -1.0)
          {
            v120 = -v119;
          }

          else
          {
            v120 = v108;
          }

          *v107 = asinf(v120);
          if (vabds_f32(v117, v118) >= 0.9999)
          {
            v125 = atan2f(-(v147 - v141), 1.0 - (v153 + v116));
            v126 = 0.0;
          }

          else
          {
            v121 = v112 * v114;
            v122 = 1.0 - (v116 + (v113 * v115));
            v123 = 1.0 - (v153 + (v113 * v115));
            v124 = (v111 * v113) + v121;
            v125 = atan2f(v147 + v141, v123);
            v126 = atan2f(v124, v122);
          }

          *(v107 - 2) = v125;
          *(v107 - 1) = v126;
          ++v105;
          v106 += 4;
          v107 += 4;
          v108 = 1.0;
          if (a2 == v105)
          {
            return;
          }
        }

        goto LABEL_91;
      }

      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        if (a2)
        {
          v28 = 0;
          v29 = (a1 + 8);
          v30 = (a4 + 4);
          v31 = 1.0;
          while (a5 != v28)
          {
            v32 = *(v29 - 2);
            v33 = *(v29 - 1);
            v34 = v32 + v32;
            v35 = v33 + v33;
            v37 = *v29;
            v36 = v29[1];
            v143 = v37 * (v37 + v37);
            v149 = v32 * (v32 + v32);
            v139 = (v32 + v32) * v33;
            v38 = (v37 + v37) * v36;
            v39 = (v32 + v32) * *v29;
            v40 = (v33 + v33) * v36;
            v41 = v39 - v40;
            if ((v39 - v40) > v31)
            {
              v41 = v31;
            }

            if (v41 >= -1.0)
            {
              v42 = -v41;
            }

            else
            {
              v42 = v31;
            }

            *v30 = asinf(v42);
            if (vabds_f32(v39, v40) >= 0.9999)
            {
              v44 = atan2f(-(v139 - v38), 1.0 - (v149 + v143));
              v43 = 0.0;
            }

            else
            {
              v43 = atan2f((v35 * v37) + (v34 * v36), 1.0 - (v149 + (v33 * v35)));
              v44 = atan2f(v139 + v38, 1.0 - ((v33 * v35) + v143));
            }

            *(v30 - 1) = v43;
            v30[1] = v44;
            ++v28;
            v29 += 4;
            v30 += 4;
            v31 = 1.0;
            if (a2 == v28)
            {
              return;
            }
          }

          goto LABEL_89;
        }

        return;
      }

LABEL_92:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown rotation order", "!Unreachable code", "convertQuaternionsToIntrinsicEulers", 505);
      _os_crash("assertion failure: (!Unreachable code) Unknown rotation order");
      __break(1u);
      return;
    }

    if (!a2)
    {
      return;
    }

    v64 = 0;
    v65 = (a1 + 8);
    v66 = (a4 + 8);
    v67 = 1.0;
    while (a5 != v64)
    {
      v68 = *(v65 - 2);
      v69 = *(v65 - 1);
      v70 = v68 + v68;
      v71 = *v65;
      v72 = v65[1];
      v73 = v71 + v71;
      v74 = v71 * (v71 + v71);
      v145 = (v68 + v68) * *v65;
      v151 = v69 * (v69 + v69);
      v140 = (v69 + v69) * v72;
      v75 = (v69 + v69) * *v65;
      v76 = (v68 + v68) * v72;
      if ((v75 - v76) >= -1.0)
      {
        v77 = -(v75 - v76);
      }

      else
      {
        v77 = v67;
      }

      if (v77 < -1.0)
      {
        v77 = -1.0;
      }

      *(v66 - 2) = asinf(v77);
      if (vabds_f32(v75, v76) >= 0.9999)
      {
        v81 = atan2f(-(v145 - v140), 1.0 - (v151 + v74));
        v82 = 0.0;
      }

      else
      {
        v78 = v68 * v70;
        v79 = (v70 * v69) + (v73 * v72);
        v80 = 1.0 - ((v68 * v70) + v74);
        v81 = atan2f(v145 + v140, 1.0 - (v78 + v151));
        v82 = atan2f(v79, v80);
      }

      *(v66 - 1) = v81;
      *v66 = v82;
      ++v64;
      v65 += 4;
      v66 += 4;
      v67 = 1.0;
      if (a2 == v64)
      {
        return;
      }
    }

LABEL_87:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v128, v134);
    __break(1u);
LABEL_88:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v129, v135);
    __break(1u);
LABEL_89:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v130, v136);
    __break(1u);
LABEL_90:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v131, v137);
    __break(1u);
LABEL_91:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v132, v138);
    __break(1u);
    goto LABEL_92;
  }

  if (!a3)
  {
    if (a2)
    {
      v83 = 0;
      v84 = (a1 + 8);
      v85 = (a4 + 4);
      v86 = 1.0;
      while (a5 != v83)
      {
        v87 = *(v84 - 2);
        v88 = *(v84 - 1);
        v89 = v87 + v87;
        v90 = v88 + v88;
        v91 = *v84;
        v92 = v84[1];
        v93 = v91 + v91;
        v94 = v91 * (v91 + v91);
        v146 = (v88 + v88) * *v84;
        v152 = v87 * (v87 + v87);
        v95 = (v87 + v87) * v92;
        v96 = (v87 + v87) * *v84;
        v97 = (v88 + v88) * v92;
        v98 = v96 + v97;
        if ((v96 + v97) <= v86)
        {
          v99 = v96 + v97;
        }

        else
        {
          v99 = v86;
        }

        if (v99 < -1.0)
        {
          v99 = -1.0;
        }

        *v85 = asinf(v99);
        if (fabsf(v98) >= 0.9999)
        {
          v103 = atan2f(v146 + v95, 1.0 - (v152 + v94));
          v104 = 0.0;
        }

        else
        {
          v100 = v89 * v88;
          v101 = 1.0 - ((v88 * v90) + v94);
          v102 = v100 - (v93 * v92);
          v103 = atan2f(-(v146 - v95), 1.0 - (v152 + (v88 * v90)));
          v104 = atan2f(-v102, v101);
        }

        *(v85 - 1) = v103;
        v85[1] = v104;
        ++v83;
        v84 += 4;
        v85 += 4;
        v86 = 1.0;
        if (a2 == v83)
        {
          return;
        }
      }

      goto LABEL_90;
    }

    return;
  }

  if (a3 == 1)
  {
    if (!a2)
    {
      return;
    }

    v45 = 0;
    v46 = (a1 + 8);
    v47 = (a4 + 8);
    v48 = 1.0;
    while (a5 != v45)
    {
      v49 = *(v46 - 2);
      v50 = *(v46 - 1);
      v51 = v49 + v49;
      v52 = v50 + v50;
      v54 = *v46;
      v53 = v46[1];
      v55 = v54 + v54;
      v56 = v50 * (v50 + v50);
      v144 = (v49 + v49) * *v46;
      v150 = v49 * (v49 + v49);
      v57 = (v50 + v50) * v53;
      v58 = (v49 + v49) * v50;
      v59 = (v54 + v54) * v53;
      v60 = v58 + v59;
      if ((v58 + v59) <= v48)
      {
        v61 = v58 + v59;
      }

      else
      {
        v61 = v48;
      }

      if (v61 < -1.0)
      {
        v61 = -1.0;
      }

      *v47 = asinf(v61);
      if (fabsf(v60) >= 0.9999)
      {
        v63 = atan2f(v144 + v57, 1.0 - (v150 + v56));
        v62 = 0.0;
      }

      else
      {
        v62 = atan2f(-((v52 * v54) - (v51 * v53)), 1.0 - (v150 + (v54 * v55)));
        v63 = atan2f(-(v144 - v57), 1.0 - (v56 + (v54 * v55)));
      }

      *(v47 - 2) = v62;
      *(v47 - 1) = v63;
      ++v45;
      v46 += 4;
      v47 += 4;
      v48 = 1.0;
      if (a2 == v45)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, a5);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v127, v133);
    __break(1u);
    goto LABEL_87;
  }

  if (a3 != 2)
  {
    goto LABEL_92;
  }

  if (a2)
  {
    v7 = 0;
    v8 = (a1 + 8);
    v9 = (a4 + 8);
    v10 = 1.0;
    while (a5 != v7)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = v12 + v12;
      v14 = v11 + v11;
      v16 = *v8;
      v15 = v8[1];
      v142 = v16 * (v16 + v16);
      v148 = v11 * (v11 + v11);
      v17 = (v12 + v12) * v11;
      v18 = (v16 + v16) * v15;
      v19 = (v11 + v11) * *v8;
      v20 = (v12 + v12) * v15;
      v21 = v19 + v20;
      if ((v19 + v20) <= v10)
      {
        v22 = v19 + v20;
      }

      else
      {
        v22 = v10;
      }

      if (v22 < -1.0)
      {
        v22 = -1.0;
      }

      *(v9 - 2) = asinf(v22);
      if (fabsf(v21) >= 0.9999)
      {
        v27 = atan2f(v17 + v18, 1.0 - (v148 + v142));
        v26 = 0.0;
      }

      else
      {
        v23 = v12 * v13;
        v24 = (v13 * v16) - (v14 * v15);
        v25 = 1.0 - ((v12 * v13) + v142);
        v26 = atan2f(-v24, 1.0 - (v23 + v148));
        v27 = atan2f(-(v17 - v18), v25);
      }

      *(v9 - 1) = v26;
      *v9 = v27;
      ++v7;
      v8 += 4;
      v9 += 4;
      v10 = 1.0;
      if (a2 == v7)
      {
        return;
      }
    }

    goto LABEL_88;
  }
}

float re::BlendSpace::init(uint64_t a1, uint64_t a2, unint64_t *a3, re::BindNode **a4)
{
  v6 = a3;
  v7 = a2;
  v81 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 16) = a3[8];
  v9 = a3[5];
  v10 = a3[3];
  *(&v76 + 1) = v10;
  *&v77 = 0;
  *&v76 = a2;
  if (v10)
  {
    if (v10 >= 0x555555555555556)
    {
LABEL_64:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, v10);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v52, v53);
      __break(1u);
      goto LABEL_65;
    }

    v4 = 48 * v10;
    v11 = (*(*a2 + 32))(a2, 48 * v10, 8);
    *&v77 = v11;
    if (!v11)
    {
LABEL_65:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_66;
    }

    v13 = v10 - 1;
    if (v10 != 1)
    {
      do
      {
        *v11 = 0;
        v11[1] = &str_67;
        v11[2] = 0;
        v11[3] = &str_67;
        v11[4] = 0;
        v11[5] = 0;
        v11 += 6;
        --v13;
      }

      while (v13);
    }

    *v11 = 0;
    v11[1] = &str_67;
    v11[2] = 0;
    v11[3] = &str_67;
    v11[4] = 0;
    v11[5] = 0;
    if (*(&v76 + 1) != v10)
    {
LABEL_63:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
      __break(1u);
      goto LABEL_64;
    }

    v14 = 0;
    v15 = v77;
    do
    {
      v5 = v9 + v14;
      re::StringID::operator=((v15 + v14), (v9 + v14));
      re::StringID::operator=((v15 + v14 + 16), (v9 + v14 + 16));
      *(v15 + v14 + 32) = *(v9 + v14 + 32);
      v14 += 48;
    }

    while (v4 != v14);
  }

  else
  {
    v15 = 0;
  }

  if ((a1 + 72) != &v76)
  {
    v16 = *(a1 + 72);
    if (v16 && v16 != v76)
    {
LABEL_66:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
      _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }

    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    *(a1 + 72) = v76;
    *(a1 + 80) = v10;
    *&v76 = v16;
    *(&v76 + 1) = v17;
    *(a1 + 88) = v15;
    *&v77 = v18;
  }

  v56 = v7;
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit(&v76);
  re::FixedArray<re::BindPoint>::init<>(a1 + 96, *a1, v6[3]);
  re::FixedArray<int>::init<>((a1 + 120), *a1, v6[3]);
  re::FixedArray<int>::init<>((a1 + 144), *a1, *(a1 + 16));
  re::FixedArray<int>::init<>((a1 + 168), *a1, *(a1 + 16));
  v20 = v6[3];
  if (v20)
  {
    v21 = 0;
    v7 = 0;
    do
    {
      v5 = v6[3];
      if (v5 <= v7)
      {
        goto LABEL_47;
      }

      v5 = *(a1 + 128);
      if (v5 <= v7)
      {
        goto LABEL_51;
      }

      v22 = v6[5] + v21;
      *(*(a1 + 136) + 4 * v7) = *(v22 + 40);
      re::StringID::StringID(&v59, (v22 + 16));
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v26);
      }

      v10 = __s;
      v23 = strlen(__s);
      *&v58 = __s;
      *(&v58 + 1) = v23;
      re::BindNode::bindPointWithOverride(v62, a4, re::introspect<float>(BOOL)::info, &v58);
      v5 = *(a1 + 104);
      if (v5 <= v7)
      {
        goto LABEL_55;
      }

      v24 = (*(a1 + 112) + v21);
      *v24 = *v62;
      re::DynamicArray<re::RigDataValue>::operator=((v24 + 1), &v62[8]);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62[8]);
      v25 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v62[8]);
      if (v59)
      {
        if (v59)
        {
        }
      }

      ++v7;
      v21 += 48;
    }

    while (v20 != v7);
  }

  if ((*(a1 + 8) & 0xFFFFFFFD) != 1)
  {
    re::FixedArray<int>::init<>((a1 + 24), v56, v6[8]);
    re::FixedArray<int>::init<>((a1 + 48), v56, v6[3] * v6[8]);
    v27 = v6[8];
    if (v27)
    {
      v28 = 0;
      v21 = 0;
      v29 = v6[10];
      v30 = v6[3];
      while (1)
      {
        v31 = v29 + (v21 << 6);
        if (v30)
        {
          break;
        }

LABEL_36:
        v6 = *(a1 + 32);
        if (v6 <= v21)
        {
          goto LABEL_59;
        }

        result = *(v31 + 16);
        *(*(a1 + 40) + 4 * v21++) = result;
        v28 += v30;
        if (v21 == v27)
        {
          return result;
        }
      }

      v32 = 0;
      v6 = *(v31 + 40);
      v33 = v28;
      while (v6 != v32)
      {
        v4 = *(a1 + 56);
        if (v4 <= v33)
        {
          goto LABEL_43;
        }

        *(*(a1 + 64) + 4 * v33) = *(*(v31 + 56) + 4 * v32);
        v32 = (v32 + 1);
        ++v33;
        if (v30 == v32)
        {
          goto LABEL_36;
        }
      }

      *v69 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *&v62[4] = "operator[]";
      v63 = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v64 = 797;
      v65 = 2048;
      v66 = v6;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v36, v69, &v76, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      *v69 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *&v62[4] = "operator[]";
      v63 = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v64 = 468;
      v65 = 2048;
      v66 = v33;
      v67 = 2048;
      v68 = v4;
      _os_log_send_and_compose_impl(v39, v69, &v76, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      *v69 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *&v62[4] = "operator[]";
      v63 = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      v64 = 797;
      v65 = 2048;
      v66 = v7;
      v67 = 2048;
      v68 = v5;
      _os_log_send_and_compose_impl(v42, v69, &v76, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      *v69 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *&v62[4] = "operator[]";
      v63 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v64 = 468;
      v65 = 2048;
      v66 = v7;
      v67 = 2048;
      v68 = v5;
      _os_log_send_and_compose_impl(v45, v69, &v76, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v61 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v69 = 136315906;
      *&v69[4] = "operator[]";
      v70 = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v71 = 468;
      v72 = 2048;
      v73 = v7;
      v74 = 2048;
      v75 = v5;
      _os_log_send_and_compose_impl(v48, &v61, &v76, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      *v69 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *&v62[4] = "operator[]";
      v63 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v64 = 468;
      v65 = 2048;
      v66 = v21;
      v67 = 2048;
      v68 = v6;
      _os_log_send_and_compose_impl(v51, v69, &v76, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v62, 38, v54, v55);
      _os_crash_msg();
      __break(1u);
      goto LABEL_63;
    }
  }

  return result;
}

uint64_t re::BlendSpace::samplePosition(re::BlendSpace *this, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10) * a2;
  v3 = *(this + 7);
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

    v12 = 476;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 8) + 4 * v2;
}

void re::BlendSpace::computeWeights(re::BlendSpace *this, double a2)
{
  v116 = *MEMORY[0x1E69E9840];
  if (*(this + 13))
  {
    v3 = 0;
    v4 = 24;
    do
    {
      v7 = (*(this + 14) + v4);
      v8 = *v7;
      i = (v7 - 3);
      if (v8 && re::BindPoint::isAlive(i))
      {
        v9 = re::BindPoint::valueUntyped(i);
        i = *(this + 16);
        if (i <= v3)
        {
          goto LABEL_78;
        }

        *(*(this + 17) + 4 * v3) = *v9;
      }

      ++v3;
      v4 += 48;
    }

    while (v3 < *(this + 13));
  }

  v10 = *(this + 2);
  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      if (*(this + 10))
      {
        if (*(this + 16))
        {
          v29 = *(this + 11);
          LODWORD(a2) = **(this + 17);
          v30 = *(this + 23);
          v31 = *(v29 + 11);
          v32 = v29[8];
          v33 = v29[9];

          return;
        }

        goto LABEL_114;
      }

      goto LABEL_106;
    }

    if (v10 != 2)
    {
      return;
    }

    if (*(this + 16))
    {
      v11 = *(this + 17);
      v12 = re::BlendSpace::samplePosition(this, 0);
      v13 = re::BlendSpace::samplePosition(this, *(this + 2) - 1);
      v14 = *v11;
      if (*v11 > *v13)
      {
        v14 = *v13;
      }

      if (v14 >= *v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = *v12;
      }

      v16 = *(this + 22);
      if (v16)
      {
        bzero(*(this + 23), 4 * v16);
      }

      if (*(this + 2) < 2uLL)
      {
        return;
      }

      for (i = 0; ; ++i)
      {
        v3 = i + 1;
        if (v15 <= *re::BlendSpace::samplePosition(this, i + 1))
        {
          break;
        }

        v17 = i + 2;
        if (v17 >= *(this + 2))
        {
          return;
        }
      }

      v44 = *re::BlendSpace::samplePosition(this, i);
      v45 = *re::BlendSpace::samplePosition(this, i + 1);
      v46 = 0.0;
      if (vabds_f32(v45, v44) >= 0.00001)
      {
        v46 = (v15 - v44) / (v45 - v44);
      }

      v4 = *(this + 22);
      if (v4 > v3)
      {
        v47 = *(this + 23);
        *(v47 + 4 * i + 4) = v46;
        if (v4 > i)
        {
          *(v47 + 4 * i) = 1.0 - v46;
          return;
        }

LABEL_138:
        v102 = 0;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v98 = MEMORY[0x1E69E9C10];
        v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v103 = 136315906;
        v104 = "operator[]";
        v105 = 1024;
        if (v99)
        {
          v100 = 3;
        }

        else
        {
          v100 = 2;
        }

        v106 = 468;
        v107 = 2048;
        v108 = i;
        v109 = 2048;
        v110 = v4;
        _os_log_send_and_compose_impl(v100, &v102, &v111, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
        _os_crash_msg();
        __break(1u);
      }

LABEL_134:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v3;
      v109 = 2048;
      v110 = v4;
      _os_log_send_and_compose_impl(v97, &v102, &v111, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_138;
    }

LABEL_102:
    v102 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103 = 136315906;
    v104 = "operator[]";
    v105 = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    v106 = 468;
    v107 = 2048;
    v108 = 0;
    v109 = 2048;
    v110 = 0;
    _os_log_send_and_compose_impl(v73, &v102, &v111, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
    _os_crash_msg();
    __break(1u);
LABEL_106:
    v102 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v103 = 136315906;
    v104 = "operator[]";
    v105 = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    v106 = 468;
    v107 = 2048;
    v108 = 0;
    v109 = 2048;
    v110 = 0;
    _os_log_send_and_compose_impl(v76, &v102, &v111, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
    _os_crash_msg();
    __break(1u);
    goto LABEL_110;
  }

  if (v10 == 3)
  {
    v34 = *(this + 10);
    if (!v34)
    {
LABEL_110:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 0;
      v109 = 2048;
      v110 = 0;
      _os_log_send_and_compose_impl(v79, &v102, &v111, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 0;
      v109 = 2048;
      v110 = 0;
      _os_log_send_and_compose_impl(v82, &v102, &v111, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_118;
    }

    if (v34 == 1)
    {
LABEL_118:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 1;
      v109 = 2048;
      v110 = 1;
      _os_log_send_and_compose_impl(v85, &v102, &v111, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    if (!*(this + 16))
    {
LABEL_122:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 0;
      v109 = 2048;
      v110 = 0;
      _os_log_send_and_compose_impl(v88, &v102, &v111, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_126;
    }

    v35 = *(this + 11);
    i = *(v35 + 44);
    v3 = *(v35 + 92);
    v4 = *(this + 20);
    LODWORD(a2) = **(this + 17);
    v5 = *(this + 16);
    if (v5 <= 1)
    {
LABEL_126:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 1;
      v109 = 2048;
      v110 = v5;
      _os_log_send_and_compose_impl(v91, &v102, &v111, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_130;
    }

    v5 = *(this + 10);
    if (v5 <= 1)
    {
LABEL_130:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = 1;
      v109 = 2048;
      v110 = v5;
      _os_log_send_and_compose_impl(v94, &v102, &v111, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_134;
    }

    v5 = (v4 + 4 * i);
    LODWORD(v36) = *(*(this + 17) + 4);
    if (!v3)
    {
      return;
    }

    v37 = 0;
    v38 = 0;
    while (!i)
    {
LABEL_62:
      ++v38;
      v37 += i;
      if (v38 == v3)
      {
        return;
      }
    }

    v39 = *(this + 22);
    v40 = v37;
    v41 = v4;
    v42 = i;
    while (v39 > v40)
    {
      v43 = *v41++;
      *(*(this + 23) + 4 * v40++) = *(v5 + v38) * v43;
      if (!--v42)
      {
        goto LABEL_62;
      }
    }

    v102 = 0;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v103 = 136315906;
    v104 = "operator[]";
    v105 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v106 = 468;
    v107 = 2048;
    v108 = v40;
    v109 = 2048;
    v110 = v39;
    _os_log_send_and_compose_impl(v49, &v102, &v111, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
    _os_crash_msg();
    __break(1u);
    goto LABEL_74;
  }

  if (v10 != 4 || !*(this + 2))
  {
    return;
  }

  i = 0;
  v4 = *(this + 10);
  do
  {
    v18 = re::BlendSpace::samplePosition(this, i);
    if (v4)
    {
      v19 = 0;
      v3 = *(this + 16);
      v20 = 0.0;
      while (v3 != v19)
      {
        v21 = *(v18 + 4 * v19) - *(*(this + 17) + 4 * v19);
        v20 = v20 + (v21 * v21);
        if (v4 == ++v19)
        {
          goto LABEL_34;
        }
      }

LABEL_74:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v3;
      v109 = 2048;
      v110 = v3;
      _os_log_send_and_compose_impl(v52, &v102, &v111, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_78:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v3;
      v109 = 2048;
      v110 = i;
      _os_log_send_and_compose_impl(v55, &v102, &v111, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_82:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = i;
      v109 = 2048;
      v110 = v3;
      _os_log_send_and_compose_impl(v58, &v102, &v111, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_86:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v5;
      v109 = 2048;
      v110 = v5;
      _os_log_send_and_compose_impl(v61, &v102, &v111, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_90:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v4;
      v109 = 2048;
      v110 = v3;
      _os_log_send_and_compose_impl(v64, &v102, &v111, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_94:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = v4;
      v109 = 2048;
      v110 = i;
      _os_log_send_and_compose_impl(v67, &v102, &v111, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v102 = 0;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v111 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v103 = 136315906;
      v104 = "operator[]";
      v105 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v106 = 468;
      v107 = 2048;
      v108 = i;
      v109 = 2048;
      v110 = i;
      _os_log_send_and_compose_impl(v70, &v102, &v111, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v103, 38, v101);
      _os_crash_msg();
      __break(1u);
      goto LABEL_102;
    }

    v20 = 0.0;
LABEL_34:
    v3 = *(this + 19);
    if (v3 <= i)
    {
      goto LABEL_82;
    }

    v22 = *(this + 20);
    *(v22 + 4 * i++) = v20;
    v23 = *(this + 2);
  }

  while (i < v23);
  if (v23)
  {
    v4 = 0;
    v5 = *(this + 4);
    v24 = 0.0;
    do
    {
      if (v5 == v4)
      {
        goto LABEL_86;
      }

      if (v3 <= v4)
      {
        goto LABEL_90;
      }

      i = *(this + 22);
      if (i <= v4)
      {
        goto LABEL_94;
      }

      v25 = *(*(this + 5) + 4 * v4) * *(*(this + 5) + 4 * v4);
      v26 = expf(-*(v22 + 4 * v4) / (v25 + v25));
      v27 = *(this + 23);
      *(v27 + 4 * v4) = v26;
      v24 = v24 + v26;
      ++v4;
    }

    while (v23 != v4);
    v28 = 0;
    while (i != v28)
    {
      *(v27 + 4 * v28) = *(v27 + 4 * v28) / v24;
      if (v23 == ++v28)
      {
        return;
      }
    }

    goto LABEL_98;
  }
}

void anonymous namespace::computeWeightsForUniformAxis(void *a1, unint64_t a2, double a3, float a4, float a5)
{
  if (a5 < *&a3)
  {
    *&a3 = a5;
  }

  if (*&a3 < a4)
  {
    *&a3 = a4;
  }

  v7 = ((*&a3 - a4) / (a5 - a4)) * (a2 - 1);
  v8 = floorf(v7);
  v9 = (v8 + 1.0);
  if (a2)
  {
    bzero(a1, 4 * a2);
  }

  *&a3 = v7 - v8;
  if (a2 > v9)
  {
    *(a1 + v9) = LODWORD(a3);
  }

  v10 = v9 - 1;
  if (a2 <= v10)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v11, v12);
    __break(1u);
  }

  else
  {
    *(a1 + v10) = 1.0 - *&a3;
  }
}

uint64_t re::BlendSpaceBuilder::addAxis(re::BlendSpaceBuilder *this, const re::StringID *a2, int a3, float a4, float a5)
{
  if (re::BlendSpaceBuilder::axisIndex(this, a2) != -1)
  {
    return -1;
  }

  v12 = *(this + 1);
  if ((*v12 & 0xFFFFFFFD) != 1 || (v10 = -1, a3) && (a5 - a4) > 0.0)
  {
    v10 = *(v12 + 24);
    re::StringID::StringID(&v14, a2);
    v15 = 0;
    v16 = &str_8;
    v17 = a4;
    v18 = a5;
    v19 = 0;
    v20 = a3;
    re::DynamicArray<re::BlendSpaceAxisDefinition>::add((v12 + 8), &v14);
    if (v15)
    {
      if (v15)
      {
      }
    }

    v15 = 0;
    v16 = &str_67;
    if (v14.n128_u8[0])
    {
      if (v14.n128_u8[0])
      {
      }
    }
  }

  return v10;
}

uint64_t re::BlendSpaceBuilder::axisIndex(re::BlendSpaceBuilder *this, const re::StringID *a2)
{
  v2 = *(this + 1);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return -1;
  }

  v5 = 0;
  for (i = *(v2 + 40); !re::StringID::operator==(i, a2); i += 6)
  {
    if (v3 == ++v5)
    {
      return -1;
    }
  }

  return v5;
}

uint64_t re::BlendSpaceBuilder::setDefaultControlValueForAxis(uint64_t this, unint64_t a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  v5 = *(v4 + 24);
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

    v13 = 789;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v5;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  *(*(v4 + 40) + 48 * a2 + 40) = a3;
  return this;
}

unint64_t *re::BlendSpaceBuilder::setControlValueBindPath(re::BlendSpaceBuilder *this, unint64_t a2, const re::StringID *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(v4 + 24);
  if (v5 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 789;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(v4 + 40) + 48 * a2 + 16);

  return re::StringID::operator=(v6, a3);
}

uint64_t re::BlendSpaceBuilder::addSample(re::BlendSpaceBuilder *this, StringID *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = *(v3 + 80);
    v6 = -v4;
    v7 = 1;
    while (!re::StringID::operator==(v5, a2))
    {
      ++v7;
      v5 += 8;
      if (v6 + v7 == 1)
      {
        goto LABEL_7;
      }
    }

    if (v7)
    {
      return -1;
    }
  }

LABEL_7:
  if ((*v3 & 0xFFFFFFFD) == 1)
  {
    return -1;
  }

  re::StringID::StringID(v11, a2);
  v11[4] = 0.0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  v9 = re::DynamicArray<re::BlendSpaceSampleDefinition>::add((v3 + 48), v11);
  v10 = v12;
  if (v12)
  {
    if (v16)
    {
      v10 = (*(*v12 + 40))(v9);
    }

    v16 = 0;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    ++v15;
  }

  if (LOBYTE(v11[0]))
  {
    if (LOBYTE(v11[0]))
    {
    }
  }

  return *(v3 + 64) - 1;
}

uint64_t re::BlendSpaceBuilder::setSamplePosition(uint64_t a1, unint64_t a2, float *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (a4 != *(v4 + 24) || (*v4 & 0xFFFFFFFD) == 1)
  {
    return 0;
  }

  v6 = *(v4 + 64);
  if (v6 <= a2)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v10 = MEMORY[0x1E69E9C10];
    v12 = v6;
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 789;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v12;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = a4;
  if (a4)
  {
    v9 = *(v4 + 80) + (a2 << 6);
    do
    {
      re::DynamicArray<float>::add((v9 + 24), a3++);
      --v7;
    }

    while (v7);
  }

  return 1;
}

uint64_t re::BlendSpaceBuilder::setSampleFalloff(uint64_t this, unint64_t a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  v5 = *(v4 + 64);
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

    v13 = 789;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v5;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  *(*(v4 + 80) + (a2 << 6) + 16) = a3;
  return this;
}

unint64_t re::BlendSpaceBuilder::addSampleUniform(re::BlendSpaceBuilder *this, StringID *a2, int a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  if ((*v5 & 0xFFFFFFFD) != 1)
  {
    return -1;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    *v34 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v15 = MEMORY[0x1E69E9C10];
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

    *v29 = 789;
    *&v29[4] = 2048;
    *v30 = 0;
    *&v30[8] = 2048;
    *&v30[10] = 0;
    _os_log_send_and_compose_impl(v20, v34, &v41, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v11 = *(v5 + 40);
  if (v6 != 1)
  {
    LODWORD(v6) = *(v11 + 92);
  }

  v12 = *(v11 + 44);
  if (!*(v5 + 64))
  {
    v13 = (v6 * v12);
    *(v5 + 48) = *this;
    v14 = v5 + 48;
    re::DynamicArray<re::BlendSpaceSampleDefinition>::setCapacity(v14, v13);
    ++*(v14 + 24);
    re::DynamicArray<re::BlendSpaceSampleDefinition>::resize((*(this + 1) + 48), v13);
  }

  v15 = (a4 + v12 * a3);
  re::StringID::StringID(&v26, a2);
  *&v29[2] = 0;
  v33 = 0;
  *&v30[12] = 0;
  v31 = 0;
  *&v30[4] = 0;
  v32 = 0;
  v16 = *(this + 1);
  v4 = *(v16 + 64);
  if (v4 <= v15)
  {
LABEL_21:
    v25 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *&v34[4] = "operator[]";
    v35 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v4;
    _os_log_send_and_compose_impl(v23, &v25, &v41, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v34, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v17 = re::StringID::operator=((*(v16 + 80) + (v15 << 6)), &v26);
  *(v17 + 4) = *&v29[2];
  re::DynamicArray<re::RigComponentConstraint>::operator=(v17 + 24, &v30[4]);
  v18 = *&v30[4];
  if (*&v30[4])
  {
    if (v33)
    {
      v18 = (*(**&v30[4] + 40))();
    }

    v33 = 0;
    *&v30[12] = 0;
    v31 = 0;
    *&v30[4] = 0;
    ++v32;
  }

  if (v26)
  {
    if (v26)
    {
    }
  }

  return v15;
}

void re::BlendSpaceBuilder::build(_anonymous_namespace_ *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  v6 = *(v5 + 64);
  if (v6 <= 1)
  {
    v7 = v35;
    v8 = v36;
    v9 = v37;
    *a3 = 0;
    v10 = 8000;
LABEL_39:
    *(a3 + 8) = v10;
    *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
    *(a3 + 24) = v7;
    *(a3 + 40) = v8;
    *(a3 + 48) = v9;
    return;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    v7 = v35;
    v8 = v36;
    v9 = v37;
    *a3 = 0;
    v10 = 8003;
    goto LABEL_39;
  }

  v13 = *v5;
  if ((*v5 & 0xFFFFFFFD) == 1)
  {
    v14 = *(v5 + 40);
    v15 = v14 + 48 * v11;
    do
    {
      re::StringID::StringID(&v35, v14);
      v16 = re::StringID::StringID(&v36, (v14 + 16));
      v38 = *(v14 + 32);
      if (*(&v38 + 1) <= *&v38)
      {
        v28 = re::DynamicString::format(&v32, "Axis range for uniform blend space not defined for axis %s.", v17, *(&v35 + 1));
        v29 = v32;
        v30 = v33;
        v31 = v34;
        *a3 = 0;
        *(a3 + 8) = 8001;
        *(a3 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a3 + 24) = v29;
        *(a3 + 40) = v30;
        *(a3 + 48) = v31;
        if (v36)
        {
          if (v36)
          {
          }
        }

        v36 = 0;
        v37 = &str_67;
        if (v35)
        {
          if (v35)
          {
          }
        }

        return;
      }

      if (v36)
      {
        if (v36)
        {
        }
      }

      v36 = 0;
      v37 = &str_67;
      if (v35)
      {
        if (v35)
        {
        }
      }

      v14 += 48;
    }

    while (v14 != v15);
    v18 = *(v5 + 64);
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = v18 << 6;
    v20 = (*(v5 + 80) + 8);
    while (*(v20 - 1) > 1uLL || !*v20 || **v20)
    {
      v20 += 8;
      v19 -= 64;
      if (!v19)
      {
        goto LABEL_25;
      }
    }

LABEL_38:
    v7 = v35;
    v8 = v36;
    v9 = v37;
    *a3 = 0;
    v10 = 8002;
    goto LABEL_39;
  }

  v21 = (*(v5 + 80) + 40);
  v22 = v6 << 6;
  do
  {
    if (*v21 != v11)
    {
      re::DynamicString::format(&v35, "Blend space sample %s has an invalid position.", a2, *(v21 - 4));
      goto LABEL_38;
    }

    v21 += 8;
    v22 -= 64;
  }

  while (v22);
LABEL_25:
  v23 = *(this + 1);
  if (v13 == 2)
  {
    v24 = *(v23 + 80);
    v25 = *(v23 + 64);
    v26 = 126 - 2 * __clz(v25);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(v24, (v24 + 64 * v25), v27, 1);
    v23 = *(this + 1);
  }

  *a3 = 1;
  *(a3 + 8) = v23;
}

void std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(_anonymous_namespace_ *result, _anonymous_namespace_ *a2, uint64_t a3, char a4)
{
LABEL_1:
  v102 = a2 - 64;
  v8 = result;
  while (1)
  {
    result = v8;
    v9 = (a2 - v8) >> 6;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 3), *(a2 - 1), *(result + 5), *(result + 7)))
        {
          v47 = result;
          v48 = a2 - 64;
LABEL_75:
          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v47, v48);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result, result + 64, v102);
      return;
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result, result + 64, result + 128, result + 192, v102);
      return;
    }

LABEL_9:
    if (v9 <= 23)
    {
      if (a4)
      {
        if (result != a2)
        {
          v49 = result + 64;
          if ((result + 64) != a2)
          {
            v50 = 0;
            v51 = result;
            do
            {
              v52 = v49;
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v49 + 5), *(v49 + 7), *(v51 + 5), *(v51 + 7)))
              {
                v53 = *v52;
                v54 = *(v52 + 1);
                v110 = *v52 & 1;
                v110 = *v52 & 0xFFFFFFFFFFFFFFFELL | v53 & 1;
                v111 = v54;
                *v52 = 0;
                *(v52 + 1) = &str_67;
                v112 = *(v51 + 20);
                v113 = *(v51 + 11);
                v114 = *(v51 + 6);
                *(v51 + 12) = 0;
                *(v51 + 13) = 0;
                *(v51 + 11) = 0;
                v116 = *(v51 + 15);
                *(v51 + 15) = 0;
                ++*(v51 + 28);
                v115 = 1;
                v55 = v50;
                while (1)
                {
                  v56 = result + v55;
                  re::StringID::operator=((result + v55 + 64), (result + v55));
                  *(v56 + 20) = *(v56 + 4);
                  re::DynamicArray<re::RigComponentConstraint>::operator=((v56 + 88), v56 + 3);
                  if (!v55)
                  {
                    break;
                  }

                  v55 -= 64;
                  if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v56 - 3), *(v56 - 1)))
                  {
                    v57 = (result + v55 + 64);
                    goto LABEL_91;
                  }
                }

                v57 = result;
LABEL_91:
                v58 = re::StringID::operator=(v57, &v110);
                *(v58 + 4) = v112;
                re::DynamicArray<re::RigComponentConstraint>::operator=((v56 + 24), &v113);
                v59 = v113;
                if (v113)
                {
                  if (v116)
                  {
                    v59 = (*(*v113 + 40))();
                  }

                  v116 = 0;
                  v114 = 0uLL;
                  v113 = 0;
                  ++v115;
                }

                if (v110)
                {
                  if (v110)
                  {
                  }
                }
              }

              v49 = v52 + 64;
              v50 += 64;
              v51 = v52;
            }

            while (v52 + 64 != a2);
          }
        }
      }

      else if (result != a2)
      {
        v95 = result + 64;
        if ((result + 64) != a2)
        {
          do
          {
            v96 = v95;
            if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v95 + 5), *(v95 + 7), *(result + 5), *(result + 7)))
            {
              v97 = *v96;
              v98 = *(v96 + 1);
              v110 = *v96 & 1;
              v110 = *v96 & 0xFFFFFFFFFFFFFFFELL | v97 & 1;
              v111 = v98;
              *v96 = 0;
              *(v96 + 1) = &str_67;
              v112 = *(result + 20);
              v113 = *(result + 11);
              v114 = *(result + 6);
              *(result + 12) = 0;
              *(result + 13) = 0;
              *(result + 11) = 0;
              v116 = *(result + 15);
              *(result + 15) = 0;
              ++*(result + 28);
              v115 = 1;
              v99 = v96;
              do
              {
                v100 = v99;
                v99 -= 64;
                re::StringID::operator=(v100, v99);
                *(v100 + 4) = *(v100 - 12);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v100 + 24, v100 - 5);
              }

              while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v100 - 11), *(v100 - 9)));
              re::StringID::operator=(v99, &v110);
              *(v99 + 4) = v112;
              re::DynamicArray<re::RigComponentConstraint>::operator=((v99 + 24), &v113);
              v101 = v113;
              if (v113)
              {
                if (v116)
                {
                  v101 = (*(*v113 + 40))();
                }

                v116 = 0;
                v114 = 0uLL;
                v113 = 0;
                ++v115;
              }

              if (v110)
              {
                if (v110)
                {
                }
              }
            }

            v95 = v96 + 64;
            result = v96;
          }

          while (v96 + 64 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (result != a2)
      {
        v60 = v10 >> 1;
        v61 = v10 >> 1;
        do
        {
          v62 = v61;
          if (v60 >= v61)
          {
            v63 = (2 * v61) | 1;
            v64 = result + 64 * v63;
            if (2 * v61 + 2 < v9)
            {
              v65 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 5), *(v64 + 7), *(v64 + 13), *(v64 + 15));
              v66 = 64;
              if (!v65)
              {
                v66 = 0;
              }

              v64 += v66;
              if (v65)
              {
                v63 = 2 * v62 + 2;
              }
            }

            v67 = (result + 64 * v62);
            if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 5), *(v64 + 7), *(v67 + 5), *(v67 + 7)))
            {
              v68 = *v67;
              v110 = *v67 & 1;
              v110 = *v67 & 0xFFFFFFFFFFFFFFFELL | v68 & 1;
              v111 = *(v67 + 1);
              *v67 = 0;
              *(v67 + 1) = &str_67;
              v112 = *(v67 + 4);
              v113 = *(v67 + 3);
              *(v67 + 3) = 0;
              *&v114 = *(v67 + 4);
              *(v67 + 4) = 0;
              *(&v114 + 1) = *(v67 + 5);
              *(v67 + 5) = 0;
              v116 = *(v67 + 7);
              *(v67 + 7) = 0;
              ++*(v67 + 12);
              v115 = 1;
              do
              {
                v69 = v64;
                re::StringID::operator=(v67, v64);
                *(v67 + 4) = *(v64 + 4);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v67 + 24, v64 + 3);
                if (v60 < v63)
                {
                  break;
                }

                v70 = (2 * v63) | 1;
                v64 = result + 64 * v70;
                if (2 * v63 + 2 < v9)
                {
                  v71 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 5), *(v64 + 7), *(v64 + 13), *(v64 + 15));
                  v72 = 64;
                  if (!v71)
                  {
                    v72 = 0;
                  }

                  v64 += v72;
                  if (v71)
                  {
                    v70 = 2 * v63 + 2;
                  }
                }

                v67 = v69;
                v63 = v70;
              }

              while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v64 + 5), *(v64 + 7), *(&v114 + 1), v116));
              re::StringID::operator=(v69, &v110);
              *(v69 + 4) = v112;
              re::DynamicArray<re::RigComponentConstraint>::operator=(v69 + 24, &v113);
              v73 = v113;
              if (v113)
              {
                if (v116)
                {
                  v73 = (*(*v113 + 40))();
                }

                v116 = 0;
                v114 = 0uLL;
                v113 = 0;
                ++v115;
              }

              if (v110)
              {
                if (v110)
                {
                }
              }
            }
          }

          v61 = v62 - 1;
        }

        while (v62);
        do
        {
          v74 = 0;
          v75 = *result;
          v76 = *(result + 1);
          v103[0] = *result & 1;
          v77 = a2;
          v103[0] = *result & 0xFFFFFFFFFFFFFFFELL | v75 & 1;
          v103[1] = v76;
          *result = 0;
          *(result + 1) = &str_67;
          v104 = *(result + 4);
          v78 = *(result + 4);
          v105 = *(result + 3);
          *(result + 3) = 0;
          v106 = v78;
          *(result + 4) = 0;
          v107 = *(result + 5);
          *(result + 5) = 0;
          v109 = *(result + 7);
          *(result + 7) = 0;
          ++*(result + 12);
          v108 = 1;
          v79 = result;
          do
          {
            v80 = v79 + 64 * v74;
            v81 = (v80 + 64);
            v82 = (2 * v74) | 1;
            v74 = 2 * v74 + 2;
            if (v74 >= v9)
            {
              v74 = v82;
            }

            else
            {
              v83 = v80 + 128;
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v80 + 13), *(v80 + 15), *(v80 + 21), *(v80 + 23)))
              {
                v81 = v83;
              }

              else
              {
                v74 = v82;
              }
            }

            re::StringID::operator=(v79, v81);
            *(v79 + 4) = *(v81 + 4);
            re::DynamicArray<re::RigComponentConstraint>::operator=(v79 + 24, v81 + 3);
            v79 = v81;
          }

          while (v74 <= ((v9 - 2) >> 1));
          a2 = (v77 - 64);
          if (v81 == (v77 - 64))
          {
            re::StringID::operator=(v81, v103);
            *(v81 + 4) = v104;
            re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, &v105);
          }

          else
          {
            re::StringID::operator=(v81, v77 - 8);
            *(v81 + 4) = *(v77 - 12);
            re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, v77 - 5);
            re::StringID::operator=((v77 - 64), v103);
            *(v77 - 12) = v104;
            re::DynamicArray<re::RigComponentConstraint>::operator=(v77 - 40, &v105);
            v84 = (v81 - result + 64) >> 6;
            v85 = v84 < 2;
            v86 = v84 - 2;
            if (!v85)
            {
              v87 = v86 >> 1;
              v88 = result + 64 * (v86 >> 1);
              if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v88 + 5), *(v88 + 7), *(v81 + 5), *(v81 + 7)))
              {
                v89 = *v81;
                v90 = *(v81 + 1);
                v110 = *v81 & 1;
                v110 = *v81 & 0xFFFFFFFFFFFFFFFELL | v89 & 1;
                v111 = v90;
                *v81 = 0;
                *(v81 + 1) = &str_67;
                v112 = *(v81 + 4);
                v91 = *(v81 + 4);
                v113 = *(v81 + 3);
                *(v81 + 3) = 0;
                *&v114 = v91;
                *(v81 + 4) = 0;
                *(&v114 + 1) = *(v81 + 5);
                *(v81 + 5) = 0;
                v116 = *(v81 + 7);
                *(v81 + 7) = 0;
                ++*(v81 + 12);
                v115 = 1;
                do
                {
                  v92 = v88;
                  re::StringID::operator=(v81, v88);
                  *(v81 + 4) = *(v88 + 4);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v81 + 24, v88 + 3);
                  if (!v87)
                  {
                    break;
                  }

                  v87 = (v87 - 1) >> 1;
                  v88 = result + 64 * v87;
                  v81 = v92;
                }

                while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v88 + 5), *(v88 + 7), *(&v114 + 1), v116));
                re::StringID::operator=(v92, &v110);
                *(v92 + 4) = v112;
                re::DynamicArray<re::RigComponentConstraint>::operator=(v92 + 24, &v113);
                v93 = v113;
                if (v113)
                {
                  if (v116)
                  {
                    v93 = (*(*v113 + 40))();
                  }

                  v116 = 0;
                  v114 = 0uLL;
                  v113 = 0;
                  ++v115;
                }

                if (v110)
                {
                  if (v110)
                  {
                  }
                }
              }
            }
          }

          v94 = v105;
          if (v105)
          {
            if (v109)
            {
              v94 = (*(*v105 + 40))();
            }

            v109 = 0;
            v106 = 0;
            v107 = 0;
            v105 = 0;
            ++v108;
          }

          if (v103[0])
          {
            if (v103[0])
            {
            }
          }

          v85 = v9-- <= 2;
        }

        while (!v85);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = result + 64 * (v9 >> 1);
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result + 64 * (v9 >> 1), result, v102);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result, result + 64 * (v9 >> 1), v102);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result + 64, (v12 - 64), a2 - 128);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result + 128, result + 64 * v11 + 64, a2 - 192);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>((v12 - 64), result + 64 * (v9 >> 1), result + 64 * v11 + 64);
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(result, result + 64 * (v9 >> 1));
    }

    --a3;
    if ((a4 & 1) != 0 || re::BlendSpaceBuilder::build(void)::$_0::operator()(*(result - 3), *(result - 1), *(result + 5), *(result + 7)))
    {
      v13 = 0;
      v14 = *result;
      v15 = *(result + 1);
      v110 = *result & 1;
      v110 = *result & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
      v111 = v15;
      *result = 0;
      *(result + 1) = &str_67;
      v16 = *(result + 4);
      v113 = *(result + 3);
      *(result + 3) = 0;
      v17 = *(result + 5);
      *&v114 = *(result + 4);
      *(result + 4) = 0;
      *(&v114 + 1) = v17;
      *(result + 5) = 0;
      v116 = *(result + 7);
      ++*(result + 12);
      v112 = v16;
      *(result + 7) = 0;
      v115 = 1;
      do
      {
        v18 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(result + v13 + 104), *(result + v13 + 120), *(&v114 + 1), v116);
        v13 += 64;
      }

      while (v18);
      v19 = result + v13;
      v20 = a2;
      if (v13 == 64)
      {
        v23 = a2;
        while (v19 < v23)
        {
          v21 = (v23 - 64);
          v24 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v23 - 3), *(v23 - 1), *(&v114 + 1), v116);
          v23 = v21;
          if (v24)
          {
            goto LABEL_26;
          }
        }

        v21 = v23;
      }

      else
      {
        do
        {
          v21 = (v20 - 64);
          v22 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v20 - 3), *(v20 - 1), *(&v114 + 1), v116);
          v20 = v21;
        }

        while (!v22);
      }

LABEL_26:
      v8 = (result + v13);
      if (v19 < v21)
      {
        v25 = v21;
        do
        {
          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v25);
          do
          {
            v26 = *(v8 + 13);
            v27 = *(v8 + 15);
            v8 = (v8 + 64);
          }

          while (re::BlendSpaceBuilder::build(void)::$_0::operator()(v26, v27, *(&v114 + 1), v116));
          do
          {
            v28 = *(v25 - 24);
            v29 = *(v25 - 8);
            v25 -= 64;
          }

          while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(v28, v29, *(&v114 + 1), v116));
        }

        while (v8 < v25);
      }

      if ((v8 - 64) != result)
      {
        re::StringID::operator=(result, v8 - 8);
        *(result + 4) = *(v8 - 12);
        re::DynamicArray<re::RigComponentConstraint>::operator=(result + 24, v8 - 5);
      }

      re::StringID::operator=((v8 - 64), &v110);
      *(v8 - 12) = v112;
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 40, &v113);
      v30 = v113;
      if (v113)
      {
        if (v116)
        {
          v30 = (*(*v113 + 40))();
        }

        v116 = 0;
        v114 = 0uLL;
        v113 = 0;
        ++v115;
      }

      if (v110)
      {
        if (v110)
        {
        }
      }

      if (v19 < v21)
      {
        goto LABEL_44;
      }

      v31 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(result, v8 - 64);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(v8, a2))
      {
        a2 = (v8 - 64);
        if (!v31)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v31)
      {
LABEL_44:
        std::__introsort<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,false>(result, (v8 - 64), a3, a4 & 1);
        goto LABEL_45;
      }
    }

    else
    {
      v32 = *result;
      v33 = *(result + 1);
      v110 = *result & 1;
      v110 = *result & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
      v111 = v33;
      *result = 0;
      *(result + 1) = &str_67;
      v112 = *(result + 4);
      v113 = *(result + 3);
      *(result + 3) = 0;
      *&v114 = *(result + 4);
      *(result + 4) = 0;
      *(&v114 + 1) = *(result + 5);
      *(result + 5) = 0;
      v116 = *(result + 7);
      *(result + 7) = 0;
      ++*(result + 12);
      v115 = 1;
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(a2 - 3), *(a2 - 1)))
      {
        v34 = result;
        do
        {
          v8 = (v34 + 64);
          v35 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v34 + 13), *(v34 + 15));
          v34 = v8;
        }

        while (!v35);
      }

      else
      {
        v36 = result + 64;
        do
        {
          v8 = v36;
          if (v36 >= a2)
          {
            break;
          }

          v37 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v36 + 5), *(v36 + 7));
          v36 = v8 + 64;
        }

        while (!v37);
      }

      v38 = a2;
      if (v8 < a2)
      {
        v39 = a2;
        do
        {
          v38 = (v39 - 64);
          v40 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, *(v39 - 3), *(v39 - 1));
          v39 = v38;
        }

        while (v40);
      }

      while (v8 < v38)
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v38);
        do
        {
          v41 = *(v8 + 13);
          v42 = *(v8 + 15);
          v8 = (v8 + 64);
        }

        while (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, v41, v42));
        do
        {
          v43 = *(v38 - 3);
          v44 = *(v38 - 1);
          v38 = (v38 - 64);
        }

        while (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v114 + 1), v116, v43, v44));
      }

      if ((v8 - 64) != result)
      {
        re::StringID::operator=(result, v8 - 8);
        *(result + 4) = *(v8 - 12);
        re::DynamicArray<re::RigComponentConstraint>::operator=(result + 24, v8 - 5);
      }

      re::StringID::operator=((v8 - 64), &v110);
      *(v8 - 12) = v112;
      re::DynamicArray<re::RigComponentConstraint>::operator=(v8 - 40, &v113);
      v45 = v113;
      if (v113)
      {
        if (v116)
        {
          v45 = (*(*v113 + 40))();
        }

        v116 = 0;
        v114 = 0uLL;
        v113 = 0;
        ++v115;
      }

      if (v110)
      {
        if (v110)
        {
        }
      }

LABEL_45:
      a4 = 0;
    }
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(result, result + 64, result + 128);
  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 3), *(a2 - 1), *(result + 21), *(result + 23)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(result + 128, v102);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(result + 21), *(result + 23), *(result + 13), *(result + 15)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(result + 64, result + 128);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(result + 13), *(result + 15), *(result + 5), *(result + 7)))
      {
        v48 = result + 64;
        v47 = result;
        goto LABEL_75;
      }
    }
  }
}

BOOL re::BlendSpaceBuilder::build(void)::$_0::operator()(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = 0;
    v18 = 2048;
    v19 = 0;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = 0;
    v18 = 2048;
    v19 = 0;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  return *a2 < *a4;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56));
  v7 = re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56));
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
      if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
    if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(v8, v9);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a2, a3);
  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a4 + 40), *(a4 + 56), *(a3 + 40), *(a3 + 56)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a3, a4);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
      }
    }
  }

  if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a5 + 40), *(a5 + 56), *(a4 + 40), *(a4 + 56)))
  {
    std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a4, a5);
    if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a4 + 40), *(a4 + 56), *(a3 + 40), *(a3 + 56)))
    {
      std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a3, a4);
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a3 + 40), *(a3 + 56), *(a2 + 40), *(a2 + 56)))
      {
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a2, a3);
        if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 + 40), *(a2 + 56), *(a1 + 40), *(a1 + 56)))
        {

          std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a2 - 64);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 168), *(a1 + 184)))
        {
          return 1;
        }

        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 128, a2 - 64);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 168), *(a1 + 184), *(a1 + 104), *(a1 + 120)))
        {
          return 1;
        }

        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1 + 64, a1 + 128);
        if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a1 + 104), *(a1 + 120), *(a1 + 40), *(a1 + 56)))
        {
          return 1;
        }

        v5 = a1 + 64;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128, a1 + 192, a2 - 64);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(a2 - 24), *(a2 - 8), *(a1 + 40), *(a1 + 56)))
      {
        v5 = a2 - 64;
LABEL_6:
        std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(a1, v5);
      }

      return 1;
    }
  }

  v6 = a1 + 128;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::BlendSpaceBuilder::build(void)::$_0 &,re::BlendSpaceSampleDefinition *,0>(a1, a1 + 64, a1 + 128);
  v7 = a1 + 192;
  v8 = 1;
  if (a1 + 192 != a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (re::BlendSpaceBuilder::build(void)::$_0::operator()(*(v7 + 40), *(v7 + 56), *(v6 + 40), *(v6 + 56)))
      {
        v11 = *(v7 + 8);
        v18[0] = *v7;
        v18[1] = v11;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        v19 = *(v7 + 16);
        v20 = *(v7 + 24);
        v21 = *(v7 + 32);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        v23 = *(v7 + 56);
        *(v7 + 56) = 0;
        ++*(v7 + 48);
        v12 = v9;
        v22 = 1;
        while (1)
        {
          v13 = a1 + v12;
          re::StringID::operator=((a1 + v12 + 192), (a1 + v12 + 128));
          *(v13 + 208) = *(v13 + 144);
          re::DynamicArray<re::RigComponentConstraint>::operator=(v13 + 216, (v13 + 152));
          if (v12 == -128)
          {
            break;
          }

          v12 -= 64;
          if (!re::BlendSpaceBuilder::build(void)::$_0::operator()(*(&v21 + 1), v23, *(v13 + 104), *(v13 + 120)))
          {
            v14 = (a1 + v12 + 192);
            goto LABEL_20;
          }
        }

        v14 = a1;
LABEL_20:
        v15 = re::StringID::operator=(v14, v18);
        *(v15 + 4) = v19;
        re::DynamicArray<re::RigComponentConstraint>::operator=(v13 + 152, &v20);
        v16 = v20;
        if (v20)
        {
          if (v23)
          {
            v16 = (*(*v20 + 40))();
          }

          v23 = 0;
          v21 = 0uLL;
          v20 = 0;
          ++v22;
        }

        if (v18[0])
        {
          if (v18[0])
          {
          }
        }

        if (++v10 == 8)
        {
          return v7 + 64 == a2;
        }
      }

      v6 = v7;
      v9 += 64;
      v7 += 64;
      if (v7 == a2)
      {
        return 1;
      }
    }
  }

  return v8;
}

void std::swap[abi:nn200100]<re::BlendSpaceSampleDefinition>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v6[0] = *a1;
  v6[1] = v3;
  *a1 = 0;
  *(a1 + 8) = &str_67;
  v7 = *(a1 + 16);
  v4 = a1 + 24;
  v8 = *(a1 + 24);
  *(a1 + 24) = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = *(a1 + 56);
  *(a1 + 56) = 0;
  ++*(a1 + 48);
  v10 = 1;
  *(re::StringID::operator=(a1, a2) + 4) = *(a2 + 16);
  re::DynamicArray<re::RigComponentConstraint>::operator=(v4, (a2 + 24));
  re::StringID::operator=(a2, v6);
  *(a2 + 16) = v7;
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 24, &v8);
  v5 = v8;
  if (v8)
  {
    if (v11)
    {
      v5 = (*(*v8 + 40))();
    }

    v11 = 0;
    v9 = 0uLL;
    v8 = 0;
    ++v10;
  }

  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

uint64_t *re::internal::penetrationCorrectionCallback(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, re::RigDataValue *a7, uint64_t a8, void *a9)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_19:
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v50, v56);
    __break(1u);
    goto LABEL_20;
  }

  v9 = a4;
  if (a4 == 1)
  {
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v51, v57);
    __break(1u);
    goto LABEL_21;
  }

  if (a4 <= 2)
  {
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, v9);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v52, v58);
    __break(1u);
    goto LABEL_22;
  }

  if (a4 == 3)
  {
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v53, v59);
    __break(1u);
    goto LABEL_23;
  }

  re::internal::getSRTFromRDV(&v72, (a3 + 108));
  if (v9 <= 4)
  {
LABEL_23:
    re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 4, 4);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v54, v60);
    __break(1u);
LABEL_24:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v55, v61);
    __break(1u);
  }

  re::internal::getSRTFromRDV(&v70, (a3 + 144));
  if (!a8)
  {
    goto LABEL_24;
  }

  _Q7 = v73;
  _S3 = HIDWORD(v71);
  __asm { FMLA            S4, S3, V7.S[3] }

  v68 = vextq_s8(vuzp1q_s32(_Q7, _Q7), v73, 0xCuLL);
  v69 = v73;
  v67 = vnegq_f32(v73);
  v64 = v74;
  v65 = v72;
  __asm { FMOV            V1.4S, #-1.0 }

  CoreIKGenericSolverSetWorldToSolverTransform();
  v23 = a3[68];
  if (v23)
  {
    v24 = 0;
    _S8 = v69.i32[3];
    while (1)
    {
      v26 = re::RigDataValue::attributeValue((a3 + 36), v24);
      v76 = 0;
      v77 = &str_67;
      v78 = 0u;
      v27 = re::RigDataValue::attributeValue(v26, 0);
      re::StringID::operator=(&v76, (v27 + 224));
      v28 = re::RigDataValue::attributeValue(v26, 1uLL);
      v78 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v28, v29);
      v30 = re::RigDataValue::attributeValue(v26, 2uLL);
      v79 = *re::RigDataValue::getRuntimeValue<float>(v30, v31);
      v32 = re::RigDataValue::attributeValue((a3 + 72), v24);
      re::internal::getSRTFromRDV(v80, v32);
      v66 = HIDWORD(v81);
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), v67), v82, v68);
      v34 = vaddq_f32(v33, v33);
      v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v67), v35, v68);
      v37 = vaddq_f32(v64, vmulq_f32(v65, vaddq_f32(vaddq_f32(v82, vmulq_laneq_f32(v35, v69, 3)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL))));
      v38 = vmulq_f32(v78, v78);
      *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
      *v38.f32 = vrsqrte_f32(v39);
      *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
      v40 = vmulq_n_f32(v78, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
      v91 = vsubq_f32(v37, vmulq_n_f32(v40, v79 * 0.5));
      v92 = v40;
      *&v93 = v79;
      re::internal::RayCaster::cast(a9 + 6, &v91, v80);
      v41 = a9[22];
      if (v41 <= v24)
      {
        break;
      }

      _V2.S[3] = v66;
      __asm { FMLA            S0, S8, V2.S[3] }

      MEMORY[0x1E6903A00](*a9, *(a9[24] + 8 * v24));
      v44 = CoreIKGenericConstraintSetTargetParameters();
      if (v76)
      {
        if (v76)
        {
        }
      }

      if (v23 == ++v24)
      {
        goto LABEL_14;
      }
    }

    v75 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v83 = 136315906;
    v84 = "operator[]";
    v85 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v86 = 789;
    v87 = 2048;
    v88 = v24;
    v89 = 2048;
    v90 = v41;
    _os_log_send_and_compose_impl(v49, &v75, &v91, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v83, 38, v62, v63);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  re::internal::transferPose(a3, (a9 + 2));
  v45 = CoreIKGenericSolverSolve();
  return re::internal::updateOutputBasedOnSolveResult(v45, a3, a9 + 1, a7);
}

uint64_t re::internal::penetrationCorrectionCompile(re::Allocator **a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, 0, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v42, v47);
    __break(1u);
    goto LABEL_48;
  }

  if (a3 == 1)
  {
LABEL_48:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 1, 1);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v43, v48);
    __break(1u);
    goto LABEL_49;
  }

  if (a3 <= 2)
  {
LABEL_49:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 2, 2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v44, v49);
    __break(1u);
    goto LABEL_50;
  }

  if (a3 == 3)
  {
LABEL_50:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 3, 3);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v50);
    __break(1u);
    goto LABEL_51;
  }

  if (!a5)
  {
LABEL_51:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v46, v51);
    __break(1u);
LABEL_52:
    *&v70.var0 = 0;
    memset(v59, 0, 80);
    v10 = MEMORY[0x1E69E9C10];
    *v56 = 136315906;
    *&v56[4] = "operator[]";
    *&v56[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *&v56[14] = 797;
    *&v56[18] = 2048;
    *&v56[20] = 0;
    *&v56[28] = 2048;
    *&v56[30] = 0;
    _os_log_send_and_compose_impl(v36, &v70, v59, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v52, v53);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    if (__cxa_guard_acquire(&qword_1EE191600))
    {
      _MergedGlobals_26 = re::introspect_CollisionWorld(0, v37, v38, v39, v40, v41);
      __cxa_guard_release(&qword_1EE191600);
    }

    goto LABEL_36;
  }

  v10 = a1;
  v11 = a2[1];
  v5 = *(*a2 + 184);
  v7 = a2[2];
  v9 = a2[3];
  v55 = *a4;
  v61 = 158357486;
  v62 = "SRT[]";
  re::internal::makeRigDataValue(a1, &v61, v65);
  if (v61)
  {
    if (v61)
    {
    }
  }

  v13 = *(v7 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = re::RigDataValue::attributeValue(v7, i);
      v60[0] = "jointName";
      v60[1] = 9;
      re::RigDataValue::attributeValue(v15, v60, &v61);
      v16 = v62;
      if (v61 & 1) == 0 && v63 && (v64)
      {
        (*(*v63 + 40))();
      }

      re::internal::makeModelSpaceJointPoseRDV(v10, v5, *(v16 + 29), &v61);
      re::DynamicArray<re::RigDataValue>::add(&v66, &v61);
      re::RigDataValue::~RigDataValue(&v61);
    }
  }

  v8 = *(v11 + 232);
  v17 = strlen(v8);
  v6 = MEMORY[0x1E6903780](v8, v17);
  re::internal::makePoseFromRig(v10, v5, v6, &v61);
  v18 = MEMORY[0x1E6903C40](v6);
  re::internal::makePose(v10, v18, v60);
  if (!*(v5 + 216))
  {
    goto LABEL_52;
  }

  re::internal::makeLocalSpaceJointPoseRDV(v10, v5, *(*(v5 + 232) + 8), v59);
  v58 = 0;
  memset(v56, 0, 36);
  memset(&v56[40], 0, 32);
  v57 = 0;
  v8 = *v10;
  re::RigGraphCallbackBuilder::init(v56, *v10);
  *&v70.var0 = 0x76F1BA5D1EB6;
  v70.var1 = "InputPose";
  re::RigGraphCallbackBuilder::addInputParam(v56, &v70, &v61);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  *&v70.var0 = 0x3D8860E9FFCEA9D0;
  v70.var1 = "TaskSettings";
  re::RigGraphCallbackBuilder::addInputParam(v56, &v70, v7);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  *&v70.var0 = 0xC55D73256F227AE8;
  v70.var1 = "ModelSpaceJointTransforms";
  re::RigGraphCallbackBuilder::addInputParam(v56, &v70, v65);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  *&v70.var0 = 0xB88303615935B0FCLL;
  v70.var1 = "ModelToWorldTransform";
  re::RigGraphCallbackBuilder::addInputParam(v56, &v70, v9);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  *&v70.var0 = 0xF2EC5C4DD6027FE2;
  v70.var1 = "SolverToModelTransform";
  re::RigGraphCallbackBuilder::addInputParam(v56, &v70, v59);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  *&v70.var0 = 0x10498EC9357CACLL;
  v70.var1 = "SolvedPose";
  re::RigGraphCallbackBuilder::addOutputParam(v56, &v70, v60);
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  v9 = *(v10[2] + 12);
  if ((atomic_load_explicit(&qword_1EE191600, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_36:
  v25 = _MergedGlobals_26;
  re::StringID::invalid(&v70);
  v26 = (*(*v9 + 16))(v9, v25, &v70);
  v27 = v26;
  if (*&v70.var0)
  {
    if (*&v70.var0)
    {
    }
  }

  v28 = (*(*v8 + 32))(v8, 208, 16);
  *v28 = CoreIKGenericSolverCreate();
  *(v28 + 8) = v8;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 48) = v27;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 68) = 0xFFFFFFFF00000001;
  *(v28 + 108) = 0u;
  *(v28 + 136) = 0u;
  *(v28 + 124) = 0u;
  *(v28 + 92) = 0u;
  *(v28 + 76) = 0u;
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 144) = 0;
  *(v28 + 192) = 0;
  *(v28 + 160) = 0;
  *(v28 + 184) = 0;
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;
  JointCount = CoreIKGenericSolverGetJointCount();
  v54 = v8;
  re::FixedArray<CoreIKTransform>::init<>((v28 + 16), v8, JointCount);
  *(v28 + 176) = 0;
  ++*(v28 + 184);
  v30 = *(v7 + 32);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      v32 = re::RigDataValue::attributeValue(v7, j);
      v67 = "jointName";
      v68 = 9;
      re::RigDataValue::attributeValue(v32, &v67, &v70);
      v33 = *(v70.var1 + 29);
      if (*&v70.var0 & 1) == 0 && v72 && (p_var1)
      {
        (*(*v72 + 40))();
      }

      strlen(v33);
      *&v70.var0 = CoreIKGenericSolverGetConstraintIndex();
      re::DynamicArray<unsigned long>::add((v28 + 160), &v70);
    }
  }

  v67 = &unk_1F5CB2BA0;
  v68 = v54;
  v69 = &v67;
  *&v70.var0 = v28;
  p_var1 = &v70.var1;
  v70.var1 = &unk_1F5CB2BA0;
  v71 = v54;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v67);
  re::RigGraphCallbackBuilder::buildCallbackData(v56, v10, re::internal::penetrationCorrectionCallback, &v70);
  v34 = re::internal::bindCallbackOutputToNodeOutputPose(v5, v60, v6, v10, v55);
  MEMORY[0x1E69037D0](v6, v34);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v70);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v56[48]);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v56[8]);
  re::RigDataValue::~RigDataValue(v59);
  re::RigDataValue::~RigDataValue(v60);
  re::RigDataValue::~RigDataValue(&v61);
  re::RigDataValue::~RigDataValue(v65);
  return 1;
}

void re::internal::registerPenetrationCorrectionSolverNode(re::internal *this, re::RigEnvironment *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = &str_67;
  v5 = 0;
  v6 = &str_67;
  v11[2] = xmmword_1E871A470;
  v11[3] = *&off_1E871A480;
  v11[4] = xmmword_1E871A490;
  v11[0] = xmmword_1E871A450;
  v11[1] = *&off_1E871A460;
  v3 = re::RigGraphOperatorDefinition::init(&v7, this, &v5, 4uLL, 1uLL, re::internal::penetrationCorrectionCompile, v11);
  if (v5)
  {
    if (v5)
    {
    }
  }

  re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(&v9[1] + 1);
  v4 = re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v9);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EE7__cloneEPNS0_6__baseISO_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CB2BA0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EEclEOSK_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    CoreIKGenericSolverDestroy();
    re::DynamicArray<unsigned long>::deinit(v2 + 160);
    re::BucketArray<re::CollisionCastHit,10ul>::deinit(v2 + 96);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 96);
    re::FixedArray<CoreIKTransform>::deinit((v2 + 16));
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re8internal14makeNodeUniqueINS3_43CoreIKPenetrationCorrectionSolverNodeHelperENS2_9AllocatorEJP9CoreIKRigNS_17reference_wrapperINS2_14CollisionWorldEEEPKNS2_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_NS_9allocatorISL_EEFvSK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZN2re8internal14makeNodeUniqueINS0_43CoreIKPenetrationCorrectionSolverNodeHelperENS_9AllocatorEJP9CoreIKRigNSt3__117reference_wrapperINS_14CollisionWorldEEEPKNS_12RigDataValueEEEEDaPT0_DpT1_EUlPvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::EvaluationModelSingleThread::init(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v233 = v9;
  v367 = *MEMORY[0x1E69E9840];
  v10 = *(v7 + 8);
  *&v327 = v5;
  v256 = v5;
  v257 = v11;
  bzero(&v258, 0x288uLL);
  for (i = 0; i != 3120; i += 40)
  {
    v13 = &v256 + i;
    *(v13 + 87) = 0;
    *(v13 + 83) = 0;
    *(v13 + 85) = 0;
    *(v13 + 84) = 0;
    *(v13 + 172) = 0;
  }

  v14 = 0;
  v289 = 0;
  v285 = 0;
  v287 = 0;
  v286 = 0;
  v288 = 0;
  v290 = v10;
  v291 = 0;
  v293 = 0;
  v292 = 0;
  v294 = 0;
  v295 = 0u;
  v296 = 0u;
  v297 = 0;
  v298 = 0u;
  v299 = 0u;
  v300 = 0;
  v301 = 0u;
  v302 = 0u;
  v303 = 0;
  v306 = 0;
  v305 = 0u;
  v304 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0;
  v312 = 0;
  v311 = 0u;
  v310 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0;
  v321 = 0;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  do
  {
    v15 = &v256 + v14 * 8;
    v284[v14 + 2] = v6;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v284[v14 + 2], 0);
    ++LODWORD(v284[v14 + 5]);
    v14 += 5;
  }

  while (v14 != 390);
  v285 = v6;
  re::DynamicArray<re::EvaluationCommand>::setCapacity(&v285, 0);
  ++v288;
  re::DynamicRegisterTable::initArrays<re::Allocator *&>(&v291, &v327);
  __src = 0;
  v252[1] = 0;
  v253 = 0;
  v254 = 0;
  v252[0] = v6;
  re::DynamicArray<re::EvaluationCommand>::setCapacity(v252, 0);
  ++v254;
  v251 = 0;
  v248[1] = 0;
  v249 = 0;
  v250 = 0;
  v248[0] = v6;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v248, 0);
  ++v250;
  v247 = 0;
  v244[1] = 0;
  v245 = 0;
  v246 = 0;
  v244[0] = v6;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v244, 0);
  ++v246;
  if (v239[0] != 1)
  {
    *v233 = v239[0];
    *(v233 + 8) = v240;
    *(v233 + 24) = v241;
    *(v233 + 48) = v243;
    *(v233 + 32) = v242;
    v243 = 0;
    v241 = 0;
    v242 = 0uLL;
LABEL_88:
    if (v241 && (v242 & 1) != 0)
    {
      (*(*v241 + 40))();
    }

    goto LABEL_171;
  }

  v16 = v253;
  re::FixedArray<re::EvaluationCommand>::init<>((v8 + 712), v6, v253);
  v19 = __src;
  if (!*(v8 + 712))
  {
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (*(v8 + 720) != v16)
  {
    goto LABEL_372;
  }

  if (v16)
  {
    memmove(*(v8 + 728), v19, 4 * v16);
  }

LABEL_12:
  re::FixedArray<unsigned long>::init<>((v8 + 760), v6, v249);
  *&v327 = v251;
  *(&v327 + 1) = v249;
  re::FixedArray<unsigned long>::operator=((v8 + 760), &v327);
  re::FixedArray<unsigned long>::init<>((v8 + 736), v6, v245);
  *&v327 = v247;
  *(&v327 + 1) = v245;
  re::FixedArray<unsigned long>::operator=((v8 + 736), &v327);
  re::FixedArray<int>::init<>((v8 + 16), v256, *(&v316 + 1));
  v20 = v259;
  if (v259)
  {
    v22 = *(v8 + 24);
    v21 = *(v8 + 32);
    v15 = v293;
    v23 = v295;
    v24 = (v260 + 56);
    do
    {
      if (*(v24 - 16) == 3)
      {
        v1 = *v24;
        if (*v24 != -1)
        {
          v25 = *(v24 - 1);
          if (v15 <= v25)
          {
            goto LABEL_304;
          }

          if (v22 <= v1)
          {
LABEL_308:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v176 = MEMORY[0x1E69E9C10];
            v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v177)
            {
              v178 = 3;
            }

            else
            {
              v178 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v1;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v22;
            _os_log_send_and_compose_impl(v178, v325, &v327, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_312:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v179 = MEMORY[0x1E69E9C10];
            v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v180)
            {
              v181 = 3;
            }

            else
            {
              v181 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v25;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v15;
            _os_log_send_and_compose_impl(v181, v325, &v327, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_316:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v182 = MEMORY[0x1E69E9C10];
            v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v183)
            {
              v184 = 3;
            }

            else
            {
              v184 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v1;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v22;
            _os_log_send_and_compose_impl(v184, v325, &v327, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_320:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v185 = MEMORY[0x1E69E9C10];
            v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v186)
            {
              v187 = 3;
            }

            else
            {
              v187 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v25;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v15;
            _os_log_send_and_compose_impl(v187, v325, &v327, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_324:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v188 = MEMORY[0x1E69E9C10];
            v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v189)
            {
              v190 = 3;
            }

            else
            {
              v190 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v1;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v22;
            _os_log_send_and_compose_impl(v190, v325, &v327, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_328:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v191 = MEMORY[0x1E69E9C10];
            v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v192)
            {
              v193 = 3;
            }

            else
            {
              v193 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v15;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v193, v325, &v327, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_332:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v194 = MEMORY[0x1E69E9C10];
            v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v195)
            {
              v196 = 3;
            }

            else
            {
              v196 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v22;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v196, v325, &v327, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_336:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v197 = MEMORY[0x1E69E9C10];
            v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v198)
            {
              v199 = 3;
            }

            else
            {
              v199 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v15;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v199, v325, &v327, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_340:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v200 = MEMORY[0x1E69E9C10];
            v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v201)
            {
              v202 = 3;
            }

            else
            {
              v202 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v22;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v202, v325, &v327, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_344:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v203 = MEMORY[0x1E69E9C10];
            v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v204)
            {
              v205 = 3;
            }

            else
            {
              v205 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v15;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v205, v325, &v327, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_348:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v206 = MEMORY[0x1E69E9C10];
            v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v207)
            {
              v208 = 3;
            }

            else
            {
              v208 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v22;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v208, v325, &v327, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_352:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v209 = MEMORY[0x1E69E9C10];
            v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v210)
            {
              v211 = 3;
            }

            else
            {
              v211 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v15;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v211, v325, &v327, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_356:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v212 = MEMORY[0x1E69E9C10];
            v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v213)
            {
              v214 = 3;
            }

            else
            {
              v214 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v22;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v214, v325, &v327, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_360:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v215 = MEMORY[0x1E69E9C10];
            v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v216)
            {
              v217 = 3;
            }

            else
            {
              v217 = 2;
            }

            *(&v348[1] + 6) = 797;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v15;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v217, v325, &v327, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
LABEL_364:
            v325[0] = 0;
            v330 = 0u;
            v331 = 0u;
            v328 = 0u;
            v329 = 0u;
            v327 = 0u;
            v218 = MEMORY[0x1E69E9C10];
            v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v348[0]) = 136315906;
            *(v348 + 4) = "operator[]";
            WORD2(v348[1]) = 1024;
            if (v219)
            {
              v220 = 3;
            }

            else
            {
              v220 = 2;
            }

            *(&v348[1] + 6) = 468;
            WORD1(v348[2]) = 2048;
            *(&v348[2] + 4) = v22;
            WORD2(v348[3]) = 2048;
            *(&v348[3] + 6) = v1;
            _os_log_send_and_compose_impl(v220, v325, &v327, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
            _os_crash_msg();
            __break(1u);
            goto LABEL_368;
          }

          *(v21 + 4 * v1) = *(v23 + 4 * v25);
        }
      }

      v24 += 8;
      --v20;
    }

    while (v20);
  }

  re::FixedArray<int>::init<>((v8 + 40), v256, v317);
  v26 = v261;
  if (v261)
  {
    v22 = *(v8 + 48);
    v27 = *(v8 + 56);
    v15 = *(&v296 + 1);
    v28 = v298;
    v29 = (v262 + 56);
    do
    {
      if (*(v29 - 16) == 3)
      {
        v1 = *v29;
        if (*v29 != -1)
        {
          v25 = *(v29 - 1);
          if (v15 <= v25)
          {
            goto LABEL_312;
          }

          if (v22 <= v1)
          {
            goto LABEL_316;
          }

          *(v27 + 4 * v1) = *(v28 + 4 * v25);
        }
      }

      v29 += 8;
      --v26;
    }

    while (v26);
  }

  re::FixedArray<int>::init<>((v8 + 64), v256, *(&v317 + 1));
  v30 = v263;
  if (v263)
  {
    v22 = *(v8 + 72);
    v31 = *(v8 + 80);
    v15 = *(&v299 + 1);
    v32 = v301;
    v33 = (v264 + 56);
    do
    {
      if (*(v33 - 16) == 3)
      {
        v1 = *v33;
        if (*v33 != -1)
        {
          v25 = *(v33 - 1);
          if (v15 <= v25)
          {
            goto LABEL_320;
          }

          if (v22 <= v1)
          {
            goto LABEL_324;
          }

          *(v31 + 4 * v1) = *(v32 + 4 * v25);
        }
      }

      v33 += 8;
      --v30;
    }

    while (v30);
  }

  re::FixedArray<re::Matrix3x3<float>>::init<>((v8 + 88), v256, v318);
  v34 = v265;
  if (v265)
  {
    v35 = 0;
    for (j = 0; j < v34; ++j)
    {
      if (*(v266 + v35 + 40) == 3)
      {
        v22 = *(v266 + v35 + 56);
        if (v22 != -1)
        {
          v15 = *(v266 + v35 + 48);
          v1 = *(&v302 + 1);
          if (*(&v302 + 1) <= v15)
          {
            goto LABEL_328;
          }

          v1 = *(v8 + 96);
          if (v1 <= v22)
          {
            goto LABEL_332;
          }

          v37 = (v304 + 48 * v15);
          v38 = (*(v8 + 104) + 48 * v22);
          v39 = *v37;
          v40 = v37[2];
          v38[1] = v37[1];
          v38[2] = v40;
          *v38 = v39;
          v34 = v265;
        }
      }

      v35 += 64;
    }
  }

  re::FixedArray<re::Matrix4x4<float>>::init<>((v8 + 112), v256, *(&v318 + 1));
  v41 = v267;
  if (v267)
  {
    v42 = 0;
    for (k = 0; k < v41; ++k)
    {
      if (*(v268 + v42 + 40) == 3)
      {
        v22 = *(v268 + v42 + 56);
        if (v22 != -1)
        {
          v15 = *(v268 + v42 + 48);
          v1 = *(&v305 + 1);
          if (*(&v305 + 1) <= v15)
          {
            goto LABEL_336;
          }

          v1 = *(v8 + 120);
          if (v1 <= v22)
          {
            goto LABEL_340;
          }

          v44 = (v307 + (v15 << 6));
          v45 = (*(v8 + 128) + (v22 << 6));
          v46 = *v44;
          v47 = v44[1];
          v48 = v44[3];
          v45[2] = v44[2];
          v45[3] = v48;
          *v45 = v46;
          v45[1] = v47;
          v41 = v267;
        }
      }

      v42 += 64;
    }
  }

  re::FixedArray<re::Quaternion<float>>::init<>((v8 + 136), v256, v319);
  v49 = v269;
  if (v269)
  {
    v50 = 0;
    for (m = 0; m < v49; ++m)
    {
      if (*(v270 + v50 + 40) == 3)
      {
        v22 = *(v270 + v50 + 56);
        if (v22 != -1)
        {
          v15 = *(v270 + v50 + 48);
          v1 = *(&v308 + 1);
          if (*(&v308 + 1) <= v15)
          {
            goto LABEL_344;
          }

          v1 = *(v8 + 144);
          if (v1 <= v22)
          {
            goto LABEL_348;
          }

          *(*(v8 + 152) + 16 * v22) = *(v310 + 16 * v15);
          v49 = v269;
        }
      }

      v50 += 64;
    }
  }

  re::FixedArray<re::Vector2<float>>::init<>((v8 + 160), v256, *(&v319 + 1));
  v52 = v271;
  if (v271)
  {
    v53 = 0;
    for (n = 0; n < v52; ++n)
    {
      if (*(v272 + v53 + 40) == 3)
      {
        v22 = *(v272 + v53 + 56);
        if (v22 != -1)
        {
          v15 = *(v272 + v53 + 48);
          v1 = *(&v311 + 1);
          if (*(&v311 + 1) <= v15)
          {
            goto LABEL_352;
          }

          v1 = *(v8 + 168);
          if (v1 <= v22)
          {
            goto LABEL_356;
          }

          *(*(v8 + 176) + 8 * v22) = *(v313 + 8 * v15);
          v52 = v271;
        }
      }

      v53 += 64;
    }
  }

  re::FixedArray<re::Vector3<float>>::init<>((v8 + 184), v256, v320);
  v56 = v274;
  if (v274)
  {
    v57 = 0;
    for (ii = 0; ii < v56; ++ii)
    {
      if (*(v275 + v57 + 40) == 3)
      {
        v22 = *(v275 + v57 + 56);
        if (v22 != -1)
        {
          v15 = *(v275 + v57 + 48);
          v1 = *(&v314 + 1);
          if (*(&v314 + 1) <= v15)
          {
            goto LABEL_360;
          }

          v1 = *(v8 + 192);
          if (v1 <= v22)
          {
            goto LABEL_364;
          }

          *(*(v8 + 200) + 16 * v22) = *(v316 + 16 * v15);
          v56 = v274;
        }
      }

      v57 += 64;
    }
  }

  v59 = v256;
  v15 = *(&v320 + 1);
  *(v8 + 208) = v256;
  *(v8 + 216) = v15;
  if (v15)
  {
    if (v15 >= 0x92492492492493)
    {
      goto LABEL_373;
    }

    v60 = (*(*v59 + 32))(v59, 448 * v15, 8);
    *(v8 + 224) = v60;
    if (!v60)
    {
LABEL_374:
      re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_375;
    }

    v61 = v60;
    if (v15 != 1)
    {
      bzero(v60, 448 * v15 - 448);
      v61 += 28 * v15 - 28;
    }

    v61[26] = 0u;
    v61[27] = 0u;
    v61[24] = 0u;
    v61[25] = 0u;
    v61[22] = 0u;
    v61[23] = 0u;
    v61[20] = 0u;
    v61[21] = 0u;
    v61[18] = 0u;
    v61[19] = 0u;
    v61[16] = 0u;
    v61[17] = 0u;
    v61[14] = 0u;
    v61[15] = 0u;
    v61[12] = 0u;
    v61[13] = 0u;
    v61[10] = 0u;
    v61[11] = 0u;
    v61[8] = 0u;
    v61[9] = 0u;
    v61[6] = 0u;
    v61[7] = 0u;
    v61[4] = 0u;
    v61[5] = 0u;
    v61[2] = 0u;
    v61[3] = 0u;
    *v61 = 0u;
    v61[1] = 0u;
    v15 = *(&v320 + 1);
    v62 = v256;
    *(v8 + 232) = v256;
    *(v8 + 240) = v15;
    if (v15)
    {
      if (v15 >= 0x97B425ED097B43)
      {
LABEL_377:
        re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 432, v15);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v225, v230);
        __break(1u);
LABEL_378:
        re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
      }

      v63 = (*(*v62 + 32))(v62, 432 * v15, 8);
      *(v8 + 248) = v63;
      if (!v63)
      {
        goto LABEL_378;
      }

      v64 = v63;
      if (v15 != 1)
      {
        bzero(v63, 432 * v15 - 432);
        v64 += 27 * v15 - 27;
      }

      v64[25] = 0u;
      v64[26] = 0u;
      v64[23] = 0u;
      v64[24] = 0u;
      v64[21] = 0u;
      v64[22] = 0u;
      v64[19] = 0u;
      v64[20] = 0u;
      v64[17] = 0u;
      v64[18] = 0u;
      v64[15] = 0u;
      v64[16] = 0u;
      v64[13] = 0u;
      v64[14] = 0u;
      v64[11] = 0u;
      v64[12] = 0u;
      v64[9] = 0u;
      v64[10] = 0u;
      v64[7] = 0u;
      v64[8] = 0u;
      v64[5] = 0u;
      v64[6] = 0u;
      v64[3] = 0u;
      v64[4] = 0u;
      v64[1] = 0u;
      v64[2] = 0u;
      *v64 = 0u;
    }
  }

  else
  {
    *(v8 + 232) = v59;
    *(v8 + 240) = 0;
  }

  v65 = v277;
  if (v277)
  {
    v66 = 0;
    v15 = 0;
    v1 = 448;
    v25 = 432;
    do
    {
      v67 = v278;
      v22 = *(v278 + v66 + 896);
      if (v22 != -1)
      {
        v68 = *(v8 + 216);
        if (v68 <= v22)
        {
          goto LABEL_276;
        }

        v68 = (v278 + v66);
        v69 = (*(v8 + 224) + 448 * v22);
        *v69 = *(v278 + v66 + 448);
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 1), v67 + v66 + 456);
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 4), (v68 + 60));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 7), (v68 + 63));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 10), (v68 + 66));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 13), (v68 + 69));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 16), (v68 + 72));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 19), (v68 + 75));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 22), (v68 + 78));
        re::FixedArray<re::EvaluationSRT>::operator=((v69 + 25), (v68 + 81));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 28), (v68 + 84));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 31), (v68 + 87));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 34), (v68 + 90));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 37), (v68 + 93));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 40), (v68 + 96));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 43), (v68 + 99));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 46), (v68 + 102));
        re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v69 + 49), (v68 + 105));
        re::FixedArray<re::EvaluationSRT>::operator=((v69 + 52), (v68 + 108));
        v69[55] = v68[111];
        v2 = *(v8 + 240);
        if (v2 <= v22)
        {
LABEL_280:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v155 = MEMORY[0x1E69E9C10];
          v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v156)
          {
            v157 = 3;
          }

          else
          {
            v157 = 2;
          }

          *(&v348[1] + 6) = 468;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v22;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v2;
          _os_log_send_and_compose_impl(v157, v325, &v327, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_284:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v158 = MEMORY[0x1E69E9C10];
          v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v159)
          {
            v160 = 3;
          }

          else
          {
            v160 = 2;
          }

          *(&v348[1] + 6) = 468;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v22;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v2;
          _os_log_send_and_compose_impl(v160, v325, &v327, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_288:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v161 = MEMORY[0x1E69E9C10];
          v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v162)
          {
            v163 = 3;
          }

          else
          {
            v163 = 2;
          }

          *(&v348[1] + 6) = 468;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v22;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v2;
          _os_log_send_and_compose_impl(v163, v325, &v327, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_292:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v164 = MEMORY[0x1E69E9C10];
          v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v165)
          {
            v166 = 3;
          }

          else
          {
            v166 = 2;
          }

          *(&v348[1] + 6) = 468;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v22;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v68;
          _os_log_send_and_compose_impl(v166, v325, &v327, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_296:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v167 = MEMORY[0x1E69E9C10];
          v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v168)
          {
            v169 = 3;
          }

          else
          {
            v169 = 2;
          }

          *(&v348[1] + 6) = 476;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v25;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v22;
          _os_log_send_and_compose_impl(v169, v325, &v327, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_300:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v170 = MEMORY[0x1E69E9C10];
          v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v171)
          {
            v172 = 3;
          }

          else
          {
            v172 = 2;
          }

          *(&v348[1] + 6) = 468;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v22;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v15;
          _os_log_send_and_compose_impl(v172, v325, &v327, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
LABEL_304:
          v325[0] = 0;
          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v327 = 0u;
          v173 = MEMORY[0x1E69E9C10];
          v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v348[0]) = 136315906;
          *(v348 + 4) = "operator[]";
          WORD2(v348[1]) = 1024;
          if (v174)
          {
            v175 = 3;
          }

          else
          {
            v175 = 2;
          }

          *(&v348[1] + 6) = 797;
          WORD1(v348[2]) = 2048;
          *(&v348[2] + 4) = v25;
          WORD2(v348[3]) = 2048;
          *(&v348[3] + 6) = v15;
          _os_log_send_and_compose_impl(v175, v325, &v327, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
          _os_crash_msg();
          __break(1u);
          goto LABEL_308;
        }

        re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>((*(v8 + 248) + 432 * v22), v256, v68 + 57);
        v2 = *(v8 + 240);
        if (v2 <= v22)
        {
          goto LABEL_284;
        }

        re::FixedArray<re::GenericSRT<float>>::init<>((*(v8 + 248) + 432 * v22 + 192), v256, *(v67 + v66 + 656));
        v2 = *(v8 + 240);
        if (v2 <= v22)
        {
          goto LABEL_288;
        }

        re::FixedRegisterTable::initSize<re::FixedRegisterIdTable>((*(v8 + 248) + 432 * v22 + 216), v256, v68 + 84);
        v68 = *(v8 + 240);
        if (v68 <= v22)
        {
          goto LABEL_292;
        }

        re::FixedArray<re::GenericSRT<float>>::init<>((*(v8 + 248) + 432 * v22 + 408), v256, *(v67 + v66 + 872));
        v65 = v277;
      }

      ++v15;
      v66 += 904;
    }

    while (v15 < v65);
  }

  v70 = v256;
  v15 = v321;
  *(v8 + 256) = v256;
  *(v8 + 264) = v15;
  if (v15)
  {
    if (v15 < 0x8FB823EE08FB83)
    {
      v71 = (*(*v70 + 32))(v70, 456 * v15, 8);
      *(v8 + 272) = v71;
      if (v71)
      {
        v73 = v71;
        if (v15 != 1)
        {
          bzero(v71, 456 * v15 - 456);
          v73 += 456 * v15 - 456;
        }

        *(v73 + 56) = 0;
        *(v73 + 26) = 0u;
        *(v73 + 27) = 0u;
        *(v73 + 24) = 0u;
        *(v73 + 25) = 0u;
        *(v73 + 22) = 0u;
        *(v73 + 23) = 0u;
        *(v73 + 20) = 0u;
        *(v73 + 21) = 0u;
        *(v73 + 18) = 0u;
        *(v73 + 19) = 0u;
        *(v73 + 16) = 0u;
        *(v73 + 17) = 0u;
        *(v73 + 14) = 0u;
        *(v73 + 15) = 0u;
        *(v73 + 12) = 0u;
        *(v73 + 13) = 0u;
        *(v73 + 10) = 0u;
        *(v73 + 11) = 0u;
        *(v73 + 8) = 0u;
        *(v73 + 9) = 0u;
        *(v73 + 6) = 0u;
        *(v73 + 7) = 0u;
        *(v73 + 4) = 0u;
        *(v73 + 5) = 0u;
        *(v73 + 2) = 0u;
        *(v73 + 3) = 0u;
        *v73 = 0u;
        *(v73 + 1) = 0u;
        goto LABEL_108;
      }

      goto LABEL_376;
    }

LABEL_375:
    re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 456, v15);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v224, v229);
    __break(1u);
LABEL_376:
    re::internal::assertLog(4, v72, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    goto LABEL_377;
  }

LABEL_108:
  v235 = v280;
  if (!v280)
  {
    *v233 = 1;
    goto LABEL_171;
  }

  v25 = 0;
  v234 = v8;
  do
  {
    v22 = v280;
    if (v280 <= v25)
    {
      goto LABEL_296;
    }

    v74 = &v281[31 * v25];
    v237 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](v257 + 1608, v25);
    v22 = v74[30];
    if (v22 != -1)
    {
      v15 = *(v8 + 264);
      if (v15 <= v22)
      {
        goto LABEL_300;
      }

      v75 = (*(v8 + 272) + 456 * v22);
      v2 = v74[4];
      re::FixedArray<unsigned long>::init<>(v75, v256, v2);
      v77 = v256;
      v75[3] = v256;
      v75[4] = v2;
      v238 = v75;
      v236 = v25;
      if (v2)
      {
        if (v2 < 0x155555555555556)
        {
          v78 = (*(*v77 + 32))(v77, 192 * v2, 8);
          v75[5] = v78;
          if (v78)
          {
            v80 = v78;
            if (v2 == 1)
            {
              v78[10] = 0u;
              v78[11] = 0u;
              v78[8] = 0u;
              v78[9] = 0u;
              v78[6] = 0u;
              v78[7] = 0u;
              v78[4] = 0u;
              v78[5] = 0u;
              v78[2] = 0u;
              v78[3] = 0u;
              *v78 = 0u;
              v78[1] = 0u;
              v81 = v256;
              v82 = v238;
              v238[6] = v256;
              v238[7] = 1;
              goto LABEL_120;
            }

            bzero(v78, 192 * v2 - 192);
            v84 = &v80[12 * v2 - 12];
            v84[10] = 0u;
            v84[11] = 0u;
            v84[8] = 0u;
            v84[9] = 0u;
            v84[6] = 0u;
            v84[7] = 0u;
            v84[4] = 0u;
            v84[5] = 0u;
            v84[2] = 0u;
            v84[3] = 0u;
            *v84 = 0u;
            v84[1] = 0u;
            v81 = v256;
            v82 = v238;
            v238[6] = v256;
            v238[7] = v2;
            if (v2 < 0x5397829CBC14E6)
            {
LABEL_120:
              v85 = (*(*v81 + 32))(v81, 784 * v2, 8);
              v82[8] = v85;
              if (v85)
              {
                v87 = v85;
                v88 = v2 - 1;
                if (v2 != 1)
                {
                  v15 = v85;
                  do
                  {
                    *v87 = &unk_1F5CB2E90;
                    *(v87 + 8) = -1;
                    bzero((v87 + 16), 0x300uLL);
                    v87 += 784;
                    v15 += 784;
                    --v88;
                  }

                  while (v88);
                }

                *v87 = &unk_1F5CB2E90;
                *(v87 + 8) = -1;
                bzero((v87 + 16), 0x300uLL);
                v68 = 0;
                v90 = 0;
                v25 = 176;
                v91 = 168;
                while (1)
                {
                  v22 = v74[4];
                  if (v22 <= v90)
                  {
                    break;
                  }

                  v1 = v74;
                  v74 = v74[5];
                  v92 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v237, v90);
                  v15 = v238[1];
                  if (v15 <= v90)
                  {
                    goto LABEL_264;
                  }

                  v22 = v92;
                  v93 = *v92;
                  v15 = v74 + v25;
                  *(v238[2] + 8 * v90) = *(v74 + v25 - 176);
                  v74 = v238[4];
                  if (v74 <= v90)
                  {
                    goto LABEL_268;
                  }

                  v94 = v238[5] + v91;
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 168, v15 - 168);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 144, v15 - 144);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 120, v15 - 120);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 96, v15 - 96);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 72, v15 - 72);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 48, v15 - 48);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94 - 24, v15 - 24);
                  re::FixedArray<re::EvaluationRegisterId<int>>::operator=(v94, v15);
                  v95 = *(v22 + 64);
                  v325[0] = *(v22 + 80);
                  v325[1] = v95;
                  v96 = *(v22 + 104);
                  v325[2] = *(v22 + 120);
                  v325[3] = v96;
                  v97 = *(v22 + 144);
                  v325[4] = *(v22 + 160);
                  v325[5] = v97;
                  v98 = *(v22 + 184);
                  v325[6] = *(v22 + 200);
                  v325[7] = v98;
                  v99 = *(v22 + 224);
                  v325[8] = *(v22 + 240);
                  v325[9] = v99;
                  v100 = *(v22 + 264);
                  v325[10] = *(v22 + 280);
                  v325[11] = v100;
                  v101 = *(v22 + 304);
                  v325[12] = *(v22 + 320);
                  v325[13] = v101;
                  v102 = *(v22 + 344);
                  v325[14] = *(v22 + 360);
                  v325[15] = v102;
                  v356 = 0u;
                  v357 = 0u;
                  v354 = 0u;
                  v355 = 0u;
                  v352 = 0u;
                  v353 = 0u;
                  v350 = 0u;
                  v351 = 0u;
                  v349 = 0u;
                  memset(v348, 0, sizeof(v348));
                  v103 = 0uLL;
                  v346 = 0u;
                  v347 = 0u;
                  v344 = 0u;
                  v345 = 0u;
                  v342 = 0u;
                  v343 = 0u;
                  v340 = 0u;
                  v341 = 0u;
                  v338 = 0u;
                  v339 = 0u;
                  v104 = v93[123];
                  *&v327 = v93[125];
                  *(&v327 + 1) = v104;
                  v105 = v93[128];
                  *&v328 = v93[130];
                  *(&v328 + 1) = v105;
                  v106 = v93[133];
                  *&v329 = v93[135];
                  *(&v329 + 1) = v106;
                  v107 = v93[138];
                  *&v330 = v93[140];
                  *(&v330 + 1) = v107;
                  v108 = v93[143];
                  *&v331 = v93[145];
                  *(&v331 + 1) = v108;
                  v109 = v93[148];
                  v332 = v93[150];
                  v333 = v109;
                  v110 = v93[153];
                  v334 = v93[155];
                  v335 = v110;
                  v111 = v93[158];
                  v336 = v93[160];
                  v337 = v111;
                  *&v339 = v348[2];
                  *(&v339 + 1) = v348[1];
                  *&v340 = v348[5];
                  *(&v340 + 1) = v348[4];
                  *&v341 = v350;
                  *(&v341 + 1) = *(&v349 + 1);
                  *&v342 = *(&v351 + 1);
                  *(&v342 + 1) = v351;
                  *&v343 = v353;
                  *(&v343 + 1) = *(&v352 + 1);
                  *&v344 = *(&v354 + 1);
                  *(&v344 + 1) = v354;
                  *&v345 = v356;
                  *(&v345 + 1) = *(&v355 + 1);
                  *&v346 = *(&v357 + 1);
                  *(&v346 + 1) = v357;
                  v22 = v238[7];
                  if (v22 <= v90)
                  {
                    goto LABEL_272;
                  }

                  *(v68 + v238[8] + 8) = v290;
                  re::EvaluationModelSingleThread::init(v322);
                  v74 = v1;
                  if ((v322[0] & 1) == 0 && v323)
                  {
                    if (BYTE8(v323))
                    {
                      (*(*v323 + 40))();
                    }

                    v324 = 0u;
                    v323 = 0u;
                  }

                  if (*(&v356 + 1))
                  {
                    if (v357)
                    {
                      (*(**(&v356 + 1) + 40))();
                      v357 = 0uLL;
                    }

                    *(&v356 + 1) = 0;
                  }

                  if (v355)
                  {
                    if (*(&v355 + 1))
                    {
                      (*(*v355 + 40))();
                      *(&v355 + 1) = 0;
                      *&v356 = 0;
                    }

                    *&v355 = 0;
                  }

                  if (*(&v353 + 1))
                  {
                    if (v354)
                    {
                      (*(**(&v353 + 1) + 40))();
                      v354 = 0uLL;
                    }

                    *(&v353 + 1) = 0;
                  }

                  if (v352)
                  {
                    if (*(&v352 + 1))
                    {
                      (*(*v352 + 40))();
                      *(&v352 + 1) = 0;
                      *&v353 = 0;
                    }

                    *&v352 = 0;
                  }

                  if (*(&v350 + 1))
                  {
                    if (v351)
                    {
                      (*(**(&v350 + 1) + 40))();
                      v351 = 0uLL;
                    }

                    *(&v350 + 1) = 0;
                  }

                  if (v349)
                  {
                    if (*(&v349 + 1))
                    {
                      (*(*v349 + 40))();
                      *(&v349 + 1) = 0;
                      *&v350 = 0;
                    }

                    *&v349 = 0;
                  }

                  if (v348[3])
                  {
                    if (v348[4])
                    {
                      (*(*v348[3] + 40))();
                      v348[4] = 0;
                      v348[5] = 0;
                    }

                    v348[3] = 0;
                  }

                  if (v348[0] && v348[1])
                  {
                    (*(*v348[0] + 40))();
                  }

                  ++v90;
                  v68 += 98;
                  v91 += 192;
                  v25 += 200;
                  if (v2 == v90)
                  {
                    goto LABEL_166;
                  }
                }

                v325[0] = 0;
                v330 = 0u;
                v331 = 0u;
                v328 = 0u;
                v329 = 0u;
                v327 = 0u;
                v140 = MEMORY[0x1E69E9C10];
                v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v348[0]) = 136315906;
                *(v348 + 4) = "operator[]";
                WORD2(v348[1]) = 1024;
                if (v141)
                {
                  v142 = 3;
                }

                else
                {
                  v142 = 2;
                }

                *(&v348[1] + 6) = 476;
                WORD1(v348[2]) = 2048;
                *(&v348[2] + 4) = v90;
                WORD2(v348[3]) = 2048;
                *(&v348[3] + 6) = v22;
                _os_log_send_and_compose_impl(v142, v325, &v327, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
                _os_crash_msg();
                __break(1u);
LABEL_264:
                v325[0] = 0;
                v330 = 0u;
                v331 = 0u;
                v328 = 0u;
                v329 = 0u;
                v327 = 0u;
                v143 = MEMORY[0x1E69E9C10];
                v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v348[0]) = 136315906;
                *(v348 + 4) = "operator[]";
                WORD2(v348[1]) = 1024;
                if (v144)
                {
                  v145 = 3;
                }

                else
                {
                  v145 = 2;
                }

                *(&v348[1] + 6) = 468;
                WORD1(v348[2]) = 2048;
                *(&v348[2] + 4) = v90;
                WORD2(v348[3]) = 2048;
                *(&v348[3] + 6) = v15;
                _os_log_send_and_compose_impl(v145, v325, &v327, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
                _os_crash_msg();
                __break(1u);
LABEL_268:
                v325[0] = 0;
                v330 = 0u;
                v331 = 0u;
                v328 = 0u;
                v329 = 0u;
                v327 = 0u;
                v146 = MEMORY[0x1E69E9C10];
                v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v348[0]) = 136315906;
                *(v348 + 4) = "operator[]";
                WORD2(v348[1]) = 1024;
                if (v147)
                {
                  v148 = 3;
                }

                else
                {
                  v148 = 2;
                }

                *(&v348[1] + 6) = 468;
                WORD1(v348[2]) = 2048;
                *(&v348[2] + 4) = v90;
                WORD2(v348[3]) = 2048;
                *(&v348[3] + 6) = v74;
                _os_log_send_and_compose_impl(v148, v325, &v327, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
                _os_crash_msg();
                __break(1u);
LABEL_272:
                v326 = 0;
                v15 = v348;
                v366[3] = v103;
                v366[4] = v103;
                v366[1] = v103;
                v366[2] = v103;
                v366[0] = v103;
                v149 = MEMORY[0x1E69E9C10];
                v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v358 = 136315906;
                v359 = "operator[]";
                v360 = 1024;
                if (v150)
                {
                  v151 = 3;
                }

                else
                {
                  v151 = 2;
                }

                v361 = 468;
                v362 = 2048;
                v363 = v90;
                v364 = 2048;
                v365 = v22;
                _os_log_send_and_compose_impl(v151, &v326, v366, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v358, 38, v231, v232);
                _os_crash_msg();
                __break(1u);
LABEL_276:
                v325[0] = 0;
                v330 = 0u;
                v331 = 0u;
                v328 = 0u;
                v329 = 0u;
                v327 = 0u;
                v152 = MEMORY[0x1E69E9C10];
                v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v348[0]) = 136315906;
                *(v348 + 4) = "operator[]";
                WORD2(v348[1]) = 1024;
                if (v153)
                {
                  v154 = 3;
                }

                else
                {
                  v154 = 2;
                }

                *(&v348[1] + 6) = 468;
                WORD1(v348[2]) = 2048;
                *(&v348[2] + 4) = v22;
                WORD2(v348[3]) = 2048;
                *(&v348[3] + 6) = v68;
                _os_log_send_and_compose_impl(v154, v325, &v327, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v348, 38, v231, v232);
                _os_crash_msg();
                __break(1u);
                goto LABEL_280;
              }

LABEL_371:
              re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash("assertion failure: (m_data) Out of memory.");
              __break(1u);
LABEL_372:
              re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
              _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
              __break(1u);
LABEL_373:
              re::internal::assertLog(6, v55, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 448, v15);
              _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v223, v228);
              __break(1u);
              goto LABEL_374;
            }

LABEL_370:
            re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 784, v2);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v222, v227);
            __break(1u);
            goto LABEL_371;
          }

LABEL_369:
          re::internal::assertLog(4, v79, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
          goto LABEL_370;
        }

LABEL_368:
        re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 192, v2);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v221, v226);
        __break(1u);
        goto LABEL_369;
      }

      v75[6] = v77;
      v75[7] = 0;
LABEL_166:
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 9), (v74 + 6));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 12), (v74 + 9));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 15), (v74 + 12));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 18), (v74 + 15));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 21), (v74 + 18));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 24), (v74 + 21));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 27), (v74 + 24));
      re::FixedArray<re::EvaluationRegisterId<int>>::operator=((v238 + 30), (v74 + 27));
      v112 = v237[49];
      *&v327 = v237[51];
      *(&v327 + 1) = v112;
      re::FixedArray<int>::operator=((v238 + 33), &v327);
      v113 = v237[54];
      *&v327 = v237[56];
      *(&v327 + 1) = v113;
      re::FixedArray<int>::operator=((v238 + 36), &v327);
      v114 = v237[59];
      *&v327 = v237[61];
      *(&v327 + 1) = v114;
      re::FixedArray<int>::operator=((v238 + 39), &v327);
      v115 = v237[64];
      *&v327 = v237[66];
      *(&v327 + 1) = v115;
      re::FixedArray<re::Matrix3x3<float>>::operator=((v238 + 42), &v327);
      v116 = v237[69];
      *&v327 = v237[71];
      *(&v327 + 1) = v116;
      re::FixedArray<re::Matrix4x4<float>>::operator=((v238 + 45), &v327);
      v117 = v237[74];
      *&v327 = v237[76];
      *(&v327 + 1) = v117;
      re::FixedArray<re::Quaternion<float>>::operator=((v238 + 48), &v327);
      v118 = v237[79];
      *&v327 = v237[81];
      *(&v327 + 1) = v118;
      re::FixedArray<re::Vector2<float>>::operator=((v238 + 51), &v327);
      v119 = v237[84];
      *&v327 = v237[86];
      *(&v327 + 1) = v119;
      re::FixedArray<re::Vector3<float>>::operator=((v238 + 54), &v327);
      v8 = v234;
      v25 = v236;
    }

    ++v25;
  }

  while (v25 != v235);
  v120 = v239[0];
  *v233 = 1;
  if ((v120 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_171:
  if (v244[0] && v247)
  {
    (*(*v244[0] + 40))();
  }

  if (v248[0] && v251)
  {
    (*(*v248[0] + 40))();
  }

  if (v252[0] && __src)
  {
    (*(*v252[0] + 40))();
  }

  if (*(&v313 + 1))
  {
    if (v316)
    {
      (*(**(&v313 + 1) + 40))();
    }

    *&v316 = 0;
    v314 = 0uLL;
    *(&v313 + 1) = 0;
    ++v315;
  }

  if (*(&v310 + 1))
  {
    if (v313)
    {
      (*(**(&v310 + 1) + 40))();
    }

    *&v313 = 0;
    v311 = 0uLL;
    *(&v310 + 1) = 0;
    ++v312;
  }

  if (*(&v307 + 1))
  {
    if (v310)
    {
      (*(**(&v307 + 1) + 40))();
    }

    *&v310 = 0;
    v308 = 0uLL;
    *(&v307 + 1) = 0;
    ++v309;
  }

  if (*(&v304 + 1))
  {
    if (v307)
    {
      (*(**(&v304 + 1) + 40))();
    }

    *&v307 = 0;
    v305 = 0uLL;
    *(&v304 + 1) = 0;
    ++v306;
  }

  if (*(&v301 + 1))
  {
    if (v304)
    {
      (*(**(&v301 + 1) + 40))();
    }

    *&v304 = 0;
    v302 = 0uLL;
    *(&v301 + 1) = 0;
    ++v303;
  }

  if (*(&v298 + 1))
  {
    if (v301)
    {
      (*(**(&v298 + 1) + 40))();
    }

    *&v301 = 0;
    v299 = 0uLL;
    *(&v298 + 1) = 0;
    ++v300;
  }

  if (*(&v295 + 1))
  {
    if (v298)
    {
      (*(**(&v295 + 1) + 40))();
    }

    *&v298 = 0;
    v296 = 0uLL;
    *(&v295 + 1) = 0;
    ++v297;
  }

  if (v291)
  {
    if (v295)
    {
      (*(*v291 + 40))();
    }

    *&v295 = 0;
    v292 = 0;
    v293 = 0;
    v291 = 0;
    ++v294;
  }

  if (v285)
  {
    if (v289)
    {
      (*(*v285 + 40))();
    }

    v289 = 0;
    v286 = 0;
    v287 = 0;
    v285 = 0;
    ++v288;
  }

  v121 = 3120;
  do
  {
    v122 = (&v256 + v121);
    v123 = *&v282[v121];
    if (v123)
    {
      if (v122[82])
      {
        (*(*v123 + 40))(v123);
      }

      v122[82] = 0;
      v122[79] = 0;
      v122[80] = 0;
      v122[78] = 0;
      ++LODWORD(v284[v121 / 8]);
    }

    v121 -= 40;
  }

  while (v121);
  if (v283)
  {
    if (v284[0])
    {
      (*(*v283 + 40))();
      v284[0] = 0;
      v284[1] = 0;
    }

    v283 = 0;
  }

  for (jj = 616; jj != 424; jj -= 24)
  {
    re::FixedArray<CoreIKTransform>::deinit((&v256 + jj));
  }

  do
  {
    re::FixedArray<CoreIKTransform>::deinit((&v256 + jj));
    jj -= 24;
  }

  while (jj != 232);
  if (v279)
  {
    if (v280)
    {
      v125 = v281;
      v126 = &v281[31 * v280];
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v125 + 27);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 24);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 21);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 18);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 15);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 12);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 9);
        re::FixedArray<CoreIKTransform>::deinit(v125 + 6);
        if (v125[3])
        {
          v127 = v125[4];
          if (v127)
          {
            v128 = 0;
            v129 = v125[5];
            v130 = 200 * v127;
            do
            {
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 176));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 152));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 128));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 104));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 80));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 56));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 32));
              re::FixedArray<CoreIKTransform>::deinit((v129 + v128 + 8));
              v128 += 200;
            }

            while (v130 != v128);
            (*(*v125[3] + 40))(v125[3], v125[5]);
            v125[4] = 0;
            v125[5] = 0;
          }

          v125[3] = 0;
        }

        if (*v125)
        {
          v131 = v125[1];
          if (v131)
          {
            v132 = 0;
            v133 = v125[2];
            v134 = 200 * v131;
            do
            {
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 176));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 152));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 128));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 104));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 80));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 56));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 32));
              re::FixedArray<CoreIKTransform>::deinit((v133 + v132 + 8));
              v132 += 200;
            }

            while (v134 != v132);
            (*(**v125 + 40))(*v125, v125[2]);
            v125[1] = 0;
            v125[2] = 0;
          }

          *v125 = 0;
        }

        v125 += 31;
      }

      while (v125 != v126);
      (*(*v279 + 40))(v279, v281);
      v280 = 0;
      v281 = 0;
    }

    v279 = 0;
  }

  if (v276)
  {
    if (v277)
    {
      v135 = v278;
      v136 = 904 * v277;
      do
      {
        re::EvaluationCallbackData::~EvaluationCallbackData((v135 + 448));
        re::EvaluationCallbackData::~EvaluationCallbackData(v135);
        v135 += 904;
        v136 -= 904;
      }

      while (v136);
      (*(*v276 + 40))(v276, v278);
      v277 = 0;
      v278 = 0;
    }

    v276 = 0;
  }

  for (kk = 0; kk != -192; kk -= 24)
  {
    v138 = (&v256 + kk);
    result = *&v273[kk];
    if (result)
    {
      if (v138[24])
      {
        result = (*(*result + 40))(result, *(&v275 + kk));
        v138[24] = 0;
        v138[25] = 0;
      }

      v138[23] = 0;
    }
  }

  return result;
}

uint64_t re::anonymous namespace::RegisterMapping::processEvaluationTree(uint64_t a1, uint64_t *a2, uint64_t *a3, _anonymous_namespace_ *a4, _anonymous_namespace_ *a5, unint64_t a6)
{
  v511 = *MEMORY[0x1E69E9840];
  re::EvaluationDependencyMap::init(a2 + 32, *a2, a2[1], a3, (a2[478] & 3) == 0, v486);
  if (v486[0] != 1)
  {
    *a1 = v486[0];
    *(a1 + 8) = v487;
    *(a1 + 24) = v488;
    *(a1 + 48) = v490;
    *(a1 + 32) = v489;
    v490 = 0;
    v488 = 0;
    v489 = 0uLL;
LABEL_24:
    result = v488;
    if (v488)
    {
      if (v489)
      {
        return (*(*v488 + 40))();
      }
    }

    return result;
  }

  v481 = a6;
  v482 = a3;
  v480 = a1;
  v11 = *(a2[1] + 1680);
  v12 = &re::kEvaluationCommandDescriptions;
  if (v11)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 0, v6))
      {
        v13 = a2[3];
        if (v13 <= v6)
        {
          goto LABEL_386;
        }

        v14 = a2[1];
        v15 = (a2[4] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<int>(v14, v6, &v492);
        v16 = v493;
        *v15 = v492;
        *(v15 + 1) = v16;
        v17 = *v15;
        if (v17 == 77)
        {
          v28 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v15 + 1));
          v29 = *(v28 + 40);
          if (!v29)
          {
            if (*(v15 + 4))
            {
              goto LABEL_19;
            }

LABEL_18:
            goto LABEL_19;
          }

          v30 = v28;
          for (i = 0; i != v29; ++i)
          {
            v32 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v30, i);
            v33 = *(v15 + 4);
            if (v32[5] != -1)
            {
              ++v33;
            }

            v34 = *v32;
            v35 = v33 + *(*v32 + 984);
            *(v15 + 4) = v35;
            v36 = v34[128] + v35;
            *(v15 + 4) = v36;
            v37 = v34[133] + v36;
            *(v15 + 4) = v37;
            v38 = v34[138] + v37;
            *(v15 + 4) = v38;
            v39 = v34[143] + v38;
            *(v15 + 4) = v39;
            v40 = v34[148] + v39;
            *(v15 + 4) = v40;
            v41 = v34[153] + v40;
            *(v15 + 4) = v41;
            v27 = v34[158] + v41;
            *(v15 + 4) = v27;
          }
        }

        else
        {
          if (v17 == 76)
          {
            CallbackData = re::EvaluationTree::getCallbackData(a2[1], *(v15 + 1));
            v19 = *(v15 + 4) + CallbackData[2];
            *(v15 + 4) = v19;
            v20 = CallbackData[5] + v19;
            *(v15 + 4) = v20;
            v21 = CallbackData[8] + v20;
            *(v15 + 4) = v21;
            v22 = CallbackData[11] + v21;
            *(v15 + 4) = v22;
            v23 = CallbackData[14] + v22;
            *(v15 + 4) = v23;
            v24 = CallbackData[17] + v23;
            *(v15 + 4) = v24;
            v25 = CallbackData[20] + v24;
            *(v15 + 4) = v25;
            v26 = CallbackData[23] + v25;
            *(v15 + 4) = v26;
            v27 = 3 * CallbackData[26] + v26;
          }

          else
          {
            v27 = *(&re::kEvaluationCommandDescriptions + 16 * v17 + 9);
          }

          *(v15 + 4) = v27;
        }

        if (!v27)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      ++v6;
    }

    while (v6 != v11);
  }

  v43 = *(a2[1] + 1720);
  if (v43)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 1u, v6))
      {
        v13 = a2[6];
        if (v13 <= v6)
        {
          goto LABEL_390;
        }

        v44 = a2[1];
        v45 = (a2[7] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<unsigned int>(v44, v6, &v492);
        v46 = v493;
        *v45 = v492;
        *(v45 + 1) = v46;
        v47 = *v45;
        if (v47 == 77)
        {
          v58 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v45 + 1));
          v59 = *(v58 + 40);
          if (!v59)
          {
            if (*(v45 + 4))
            {
              goto LABEL_44;
            }

LABEL_43:
            goto LABEL_44;
          }

          v60 = v58;
          for (j = 0; j != v59; ++j)
          {
            v62 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v60, j);
            v63 = *(v45 + 4);
            if (v62[5] != -1)
            {
              ++v63;
            }

            v64 = *v62;
            v65 = v63 + *(*v62 + 984);
            *(v45 + 4) = v65;
            v66 = v64[128] + v65;
            *(v45 + 4) = v66;
            v67 = v64[133] + v66;
            *(v45 + 4) = v67;
            v68 = v64[138] + v67;
            *(v45 + 4) = v68;
            v69 = v64[143] + v68;
            *(v45 + 4) = v69;
            v70 = v64[148] + v69;
            *(v45 + 4) = v70;
            v71 = v64[153] + v70;
            *(v45 + 4) = v71;
            v57 = v64[158] + v71;
            *(v45 + 4) = v57;
          }
        }

        else
        {
          if (v47 == 76)
          {
            v48 = re::EvaluationTree::getCallbackData(a2[1], *(v45 + 1));
            v49 = *(v45 + 4) + v48[2];
            *(v45 + 4) = v49;
            v50 = v48[5] + v49;
            *(v45 + 4) = v50;
            v51 = v48[8] + v50;
            *(v45 + 4) = v51;
            v52 = v48[11] + v51;
            *(v45 + 4) = v52;
            v53 = v48[14] + v52;
            *(v45 + 4) = v53;
            v54 = v48[17] + v53;
            *(v45 + 4) = v54;
            v55 = v48[20] + v54;
            *(v45 + 4) = v55;
            v56 = v48[23] + v55;
            *(v45 + 4) = v56;
            v57 = 3 * v48[26] + v56;
          }

          else
          {
            v57 = *(&re::kEvaluationCommandDescriptions + 16 * v47 + 9);
          }

          *(v45 + 4) = v57;
        }

        if (!v57)
        {
          goto LABEL_43;
        }
      }

LABEL_44:
      ++v6;
    }

    while (v6 != v43);
  }

  v72 = *(a2[1] + 1760);
  if (v72)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 2u, v6))
      {
        v13 = a2[9];
        if (v13 <= v6)
        {
          goto LABEL_394;
        }

        v73 = a2[1];
        v74 = (a2[10] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<float>(v73, v6, &v492);
        v75 = v493;
        *v74 = v492;
        *(v74 + 1) = v75;
        v76 = *v74;
        if (v76 == 77)
        {
          v87 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v74 + 1));
          v88 = *(v87 + 40);
          if (!v88)
          {
            if (*(v74 + 4))
            {
              goto LABEL_65;
            }

LABEL_64:
            goto LABEL_65;
          }

          v89 = v87;
          for (k = 0; k != v88; ++k)
          {
            v91 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v89, k);
            v92 = *(v74 + 4);
            if (v91[5] != -1)
            {
              ++v92;
            }

            v93 = *v91;
            v94 = v92 + *(*v91 + 984);
            *(v74 + 4) = v94;
            v95 = v93[128] + v94;
            *(v74 + 4) = v95;
            v96 = v93[133] + v95;
            *(v74 + 4) = v96;
            v97 = v93[138] + v96;
            *(v74 + 4) = v97;
            v98 = v93[143] + v97;
            *(v74 + 4) = v98;
            v99 = v93[148] + v98;
            *(v74 + 4) = v99;
            v100 = v93[153] + v99;
            *(v74 + 4) = v100;
            v86 = v93[158] + v100;
            *(v74 + 4) = v86;
          }
        }

        else
        {
          if (v76 == 76)
          {
            v77 = re::EvaluationTree::getCallbackData(a2[1], *(v74 + 1));
            v78 = *(v74 + 4) + v77[2];
            *(v74 + 4) = v78;
            v79 = v77[5] + v78;
            *(v74 + 4) = v79;
            v80 = v77[8] + v79;
            *(v74 + 4) = v80;
            v81 = v77[11] + v80;
            *(v74 + 4) = v81;
            v82 = v77[14] + v81;
            *(v74 + 4) = v82;
            v83 = v77[17] + v82;
            *(v74 + 4) = v83;
            v84 = v77[20] + v83;
            *(v74 + 4) = v84;
            v85 = v77[23] + v84;
            *(v74 + 4) = v85;
            v86 = 3 * v77[26] + v85;
          }

          else
          {
            v86 = *(&re::kEvaluationCommandDescriptions + 16 * v76 + 9);
          }

          *(v74 + 4) = v86;
        }

        if (!v86)
        {
          goto LABEL_64;
        }
      }

LABEL_65:
      ++v6;
    }

    while (v6 != v72);
  }

  v101 = *(a2[1] + 1800);
  if (v101)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 3u, v6))
      {
        v13 = a2[12];
        if (v13 <= v6)
        {
          goto LABEL_398;
        }

        v102 = a2[1];
        v103 = (a2[13] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<re::Matrix3x3<float>>(v102, v6, &v492);
        v104 = v493;
        *v103 = v492;
        *(v103 + 1) = v104;
        v105 = *v103;
        if (v105 == 77)
        {
          v116 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v103 + 1));
          v117 = *(v116 + 40);
          if (!v117)
          {
            if (*(v103 + 4))
            {
              goto LABEL_86;
            }

LABEL_85:
            goto LABEL_86;
          }

          v118 = v116;
          for (m = 0; m != v117; ++m)
          {
            v120 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v118, m);
            v121 = *(v103 + 4);
            if (v120[5] != -1)
            {
              ++v121;
            }

            v122 = *v120;
            v123 = v121 + *(*v120 + 984);
            *(v103 + 4) = v123;
            v124 = v122[128] + v123;
            *(v103 + 4) = v124;
            v125 = v122[133] + v124;
            *(v103 + 4) = v125;
            v126 = v122[138] + v125;
            *(v103 + 4) = v126;
            v127 = v122[143] + v126;
            *(v103 + 4) = v127;
            v128 = v122[148] + v127;
            *(v103 + 4) = v128;
            v129 = v122[153] + v128;
            *(v103 + 4) = v129;
            v115 = v122[158] + v129;
            *(v103 + 4) = v115;
          }
        }

        else
        {
          if (v105 == 76)
          {
            v106 = re::EvaluationTree::getCallbackData(a2[1], *(v103 + 1));
            v107 = *(v103 + 4) + v106[2];
            *(v103 + 4) = v107;
            v108 = v106[5] + v107;
            *(v103 + 4) = v108;
            v109 = v106[8] + v108;
            *(v103 + 4) = v109;
            v110 = v106[11] + v109;
            *(v103 + 4) = v110;
            v111 = v106[14] + v110;
            *(v103 + 4) = v111;
            v112 = v106[17] + v111;
            *(v103 + 4) = v112;
            v113 = v106[20] + v112;
            *(v103 + 4) = v113;
            v114 = v106[23] + v113;
            *(v103 + 4) = v114;
            v115 = 3 * v106[26] + v114;
          }

          else
          {
            v115 = *(&re::kEvaluationCommandDescriptions + 16 * v105 + 9);
          }

          *(v103 + 4) = v115;
        }

        if (!v115)
        {
          goto LABEL_85;
        }
      }

LABEL_86:
      ++v6;
    }

    while (v6 != v101);
  }

  v130 = *(a2[1] + 1840);
  if (v130)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 4u, v6))
      {
        v13 = a2[15];
        if (v13 <= v6)
        {
          goto LABEL_402;
        }

        v131 = a2[1];
        v132 = (a2[16] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<re::Matrix4x4<float>>(v131, v6, &v492);
        v133 = v493;
        *v132 = v492;
        *(v132 + 1) = v133;
        v134 = *v132;
        if (v134 == 77)
        {
          v145 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v132 + 1));
          v146 = *(v145 + 40);
          if (!v146)
          {
            if (*(v132 + 4))
            {
              goto LABEL_107;
            }

LABEL_106:
            goto LABEL_107;
          }

          v147 = v145;
          for (n = 0; n != v146; ++n)
          {
            v149 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v147, n);
            v150 = *(v132 + 4);
            if (v149[5] != -1)
            {
              ++v150;
            }

            v151 = *v149;
            v152 = v150 + *(*v149 + 984);
            *(v132 + 4) = v152;
            v153 = v151[128] + v152;
            *(v132 + 4) = v153;
            v154 = v151[133] + v153;
            *(v132 + 4) = v154;
            v155 = v151[138] + v154;
            *(v132 + 4) = v155;
            v156 = v151[143] + v155;
            *(v132 + 4) = v156;
            v157 = v151[148] + v156;
            *(v132 + 4) = v157;
            v158 = v151[153] + v157;
            *(v132 + 4) = v158;
            v144 = v151[158] + v158;
            *(v132 + 4) = v144;
          }
        }

        else
        {
          if (v134 == 76)
          {
            v135 = re::EvaluationTree::getCallbackData(a2[1], *(v132 + 1));
            v136 = *(v132 + 4) + v135[2];
            *(v132 + 4) = v136;
            v137 = v135[5] + v136;
            *(v132 + 4) = v137;
            v138 = v135[8] + v137;
            *(v132 + 4) = v138;
            v139 = v135[11] + v138;
            *(v132 + 4) = v139;
            v140 = v135[14] + v139;
            *(v132 + 4) = v140;
            v141 = v135[17] + v140;
            *(v132 + 4) = v141;
            v142 = v135[20] + v141;
            *(v132 + 4) = v142;
            v143 = v135[23] + v142;
            *(v132 + 4) = v143;
            v144 = 3 * v135[26] + v143;
          }

          else
          {
            v144 = *(&re::kEvaluationCommandDescriptions + 16 * v134 + 9);
          }

          *(v132 + 4) = v144;
        }

        if (!v144)
        {
          goto LABEL_106;
        }
      }

LABEL_107:
      ++v6;
    }

    while (v6 != v130);
  }

  v159 = *(a2[1] + 1880);
  if (v159)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 5u, v6))
      {
        v13 = a2[18];
        if (v13 <= v6)
        {
          goto LABEL_406;
        }

        v160 = a2[1];
        v161 = (a2[19] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<re::Quaternion<float>>(v160, v6, &v492);
        v162 = v493;
        *v161 = v492;
        *(v161 + 1) = v162;
        v163 = *v161;
        if (v163 == 77)
        {
          v174 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v161 + 1));
          v175 = *(v174 + 40);
          if (!v175)
          {
            if (*(v161 + 4))
            {
              goto LABEL_128;
            }

LABEL_127:
            goto LABEL_128;
          }

          v176 = v174;
          for (ii = 0; ii != v175; ++ii)
          {
            v178 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v176, ii);
            v179 = *(v161 + 4);
            if (v178[5] != -1)
            {
              ++v179;
            }

            v180 = *v178;
            v181 = v179 + *(*v178 + 984);
            *(v161 + 4) = v181;
            v182 = v180[128] + v181;
            *(v161 + 4) = v182;
            v183 = v180[133] + v182;
            *(v161 + 4) = v183;
            v184 = v180[138] + v183;
            *(v161 + 4) = v184;
            v185 = v180[143] + v184;
            *(v161 + 4) = v185;
            v186 = v180[148] + v185;
            *(v161 + 4) = v186;
            v187 = v180[153] + v186;
            *(v161 + 4) = v187;
            v173 = v180[158] + v187;
            *(v161 + 4) = v173;
          }
        }

        else
        {
          if (v163 == 76)
          {
            v164 = re::EvaluationTree::getCallbackData(a2[1], *(v161 + 1));
            v165 = *(v161 + 4) + v164[2];
            *(v161 + 4) = v165;
            v166 = v164[5] + v165;
            *(v161 + 4) = v166;
            v167 = v164[8] + v166;
            *(v161 + 4) = v167;
            v168 = v164[11] + v167;
            *(v161 + 4) = v168;
            v169 = v164[14] + v168;
            *(v161 + 4) = v169;
            v170 = v164[17] + v169;
            *(v161 + 4) = v170;
            v171 = v164[20] + v170;
            *(v161 + 4) = v171;
            v172 = v164[23] + v171;
            *(v161 + 4) = v172;
            v173 = 3 * v164[26] + v172;
          }

          else
          {
            v173 = *(&re::kEvaluationCommandDescriptions + 16 * v163 + 9);
          }

          *(v161 + 4) = v173;
        }

        if (!v173)
        {
          goto LABEL_127;
        }
      }

LABEL_128:
      ++v6;
    }

    while (v6 != v159);
  }

  v188 = *(a2[1] + 1920);
  if (v188)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 6u, v6))
      {
        v13 = a2[21];
        if (v13 <= v6)
        {
          goto LABEL_410;
        }

        v189 = a2[1];
        v190 = (a2[22] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<re::Vector2<float>>(v189, v6, &v492);
        v191 = v493;
        *v190 = v492;
        *(v190 + 1) = v191;
        v192 = *v190;
        if (v192 == 77)
        {
          v203 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v190 + 1));
          v204 = *(v203 + 40);
          if (!v204)
          {
            if (*(v190 + 4))
            {
              goto LABEL_149;
            }

LABEL_148:
            goto LABEL_149;
          }

          v205 = v203;
          for (jj = 0; jj != v204; ++jj)
          {
            v207 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v205, jj);
            v208 = *(v190 + 4);
            if (v207[5] != -1)
            {
              ++v208;
            }

            v209 = *v207;
            v210 = v208 + *(*v207 + 984);
            *(v190 + 4) = v210;
            v211 = v209[128] + v210;
            *(v190 + 4) = v211;
            v212 = v209[133] + v211;
            *(v190 + 4) = v212;
            v213 = v209[138] + v212;
            *(v190 + 4) = v213;
            v214 = v209[143] + v213;
            *(v190 + 4) = v214;
            v215 = v209[148] + v214;
            *(v190 + 4) = v215;
            v216 = v209[153] + v215;
            *(v190 + 4) = v216;
            v202 = v209[158] + v216;
            *(v190 + 4) = v202;
          }
        }

        else
        {
          if (v192 == 76)
          {
            v193 = re::EvaluationTree::getCallbackData(a2[1], *(v190 + 1));
            v194 = *(v190 + 4) + v193[2];
            *(v190 + 4) = v194;
            v195 = v193[5] + v194;
            *(v190 + 4) = v195;
            v196 = v193[8] + v195;
            *(v190 + 4) = v196;
            v197 = v193[11] + v196;
            *(v190 + 4) = v197;
            v198 = v193[14] + v197;
            *(v190 + 4) = v198;
            v199 = v193[17] + v198;
            *(v190 + 4) = v199;
            v200 = v193[20] + v199;
            *(v190 + 4) = v200;
            v201 = v193[23] + v200;
            *(v190 + 4) = v201;
            v202 = 3 * v193[26] + v201;
          }

          else
          {
            v202 = *(&re::kEvaluationCommandDescriptions + 16 * v192 + 9);
          }

          *(v190 + 4) = v202;
        }

        if (!v202)
        {
          goto LABEL_148;
        }
      }

LABEL_149:
      ++v6;
    }

    while (v6 != v188);
  }

  v217 = *(a2[1] + 1960);
  if (v217)
  {
    v6 = 0;
    a6 = 0xFFFFFFFFLL;
    do
    {
      if (re::EvaluationDependencyMap::isRegisterUsed((a2 + 32), 7u, v6))
      {
        v13 = a2[24];
        if (v13 <= v6)
        {
          goto LABEL_414;
        }

        v219 = a2[1];
        v220 = (a2[25] + (v6 << 6));
        LODWORD(v492) = -1;
        v493 = 0uLL;
        *(&v492 + 1) = 0;
        re::EvaluationTree::getRegister<re::Vector3<float>>(v219, v6, &v492);
        v221 = v493;
        *v220 = v492;
        *(v220 + 1) = v221;
        v222 = *v220;
        if (v222 == 77)
        {
          v233 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, *(v220 + 1));
          v234 = *(v233 + 40);
          if (!v234)
          {
            if (*(v220 + 4))
            {
              goto LABEL_170;
            }

LABEL_169:
            goto LABEL_170;
          }

          v235 = v233;
          for (kk = 0; kk != v234; ++kk)
          {
            v237 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v235, kk);
            v238 = *(v220 + 4);
            if (v237[5] != -1)
            {
              ++v238;
            }

            v239 = *v237;
            v240 = v238 + *(*v237 + 984);
            *(v220 + 4) = v240;
            v241 = v239[128] + v240;
            *(v220 + 4) = v241;
            v242 = v239[133] + v241;
            *(v220 + 4) = v242;
            v243 = v239[138] + v242;
            *(v220 + 4) = v243;
            v244 = v239[143] + v243;
            *(v220 + 4) = v244;
            v245 = v239[148] + v244;
            *(v220 + 4) = v245;
            v246 = v239[153] + v245;
            *(v220 + 4) = v246;
            v232 = v239[158] + v246;
            *(v220 + 4) = v232;
          }
        }

        else
        {
          if (v222 == 76)
          {
            v223 = re::EvaluationTree::getCallbackData(a2[1], *(v220 + 1));
            v224 = *(v220 + 4) + v223[2];
            *(v220 + 4) = v224;
            v225 = v223[5] + v224;
            *(v220 + 4) = v225;
            v226 = v223[8] + v225;
            *(v220 + 4) = v226;
            v227 = v223[11] + v226;
            *(v220 + 4) = v227;
            v228 = v223[14] + v227;
            *(v220 + 4) = v228;
            v229 = v223[17] + v228;
            *(v220 + 4) = v229;
            v230 = v223[20] + v229;
            *(v220 + 4) = v230;
            v231 = v223[23] + v230;
            *(v220 + 4) = v231;
            v232 = 3 * v223[26] + v231;
          }

          else
          {
            v232 = *(&re::kEvaluationCommandDescriptions + 16 * v222 + 9);
          }

          *(v220 + 4) = v232;
        }

        if (!v232)
        {
          goto LABEL_169;
        }
      }

LABEL_170:
      ++v6;
    }

    while (v6 != v217);
  }

  result = *a2;
  v247 = a2[1];
  v248 = *(v247 + 2000);
  a2[26] = *a2;
  a2[27] = v248;
  if (v248)
  {
    if (v248 >= 0x487EDE0487EDE1)
    {
LABEL_516:
      re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 904, v248);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v467, v476);
      __break(1u);
      goto LABEL_517;
    }

    v249 = (*(*result + 32))(result, 904 * v248, 8);
    a2[28] = v249;
    if (!v249)
    {
LABEL_517:
      re::internal::assertLog(4, v250, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_518:
      re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 248, a6);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v468, v477);
      __break(1u);
      goto LABEL_519;
    }

    v251 = v249;
    v252 = v248 - 1;
    if (v248 != 1)
    {
      do
      {
        bzero(v251, 0x380uLL);
        v251[112] = -1;
        v251 += 113;
        --v252;
      }

      while (v252);
    }

    v253 = v251 + 112;
    bzero(v251, 0x380uLL);
    v13 = 0;
    v6 = 0;
    *v253 = -1;
    do
    {
      v254 = re::EvaluationTree::getCallbackData(a2[1], v6);
      a6 = a2[27];
      if (a6 <= v6)
      {
        goto LABEL_382;
      }

      re::EvaluationTree::resolveAliasRegisters(a2[1], *a2, v254, (a2[28] + v13));
      ++v6;
      v13 += 904;
    }

    while (v248 != v6);
    result = *a2;
    v247 = a2[1];
  }

  a6 = *(v247 + 1648);
  a2[29] = result;
  a2[30] = a6;
  if (!a6)
  {
LABEL_208:
    if (!v482[1])
    {
LABEL_212:
      if (!v482[3])
      {
LABEL_216:
        if (!v482[5])
        {
LABEL_220:
          if (!v482[7])
          {
LABEL_224:
            if (!v482[9])
            {
LABEL_228:
              if (!v482[11])
              {
LABEL_232:
                if (!v482[13])
                {
LABEL_236:
                  if (!v482[15])
                  {
LABEL_240:
                    if (!v482[17])
                    {
LABEL_248:
                      v294 = a2[475];
                      if (v294)
                      {
                        v12 = (a2 + 83);
                        v6 = 40;
                        while (1)
                        {
                          v503 = *(a2[477] + 4 * v294 - 4);
                          v295 = v503;
                          a2[475] = v294 - 1;
                          ++*(a2 + 952);
                          v296 = v12 + 40 * v295;
                          v297 = *(v296 + 16);
                          if (v297)
                          {
                            v298 = *(v481 + 2);
                            if (v295 - 78 >= 0xFFFFFFFE)
                            {
                              do
                              {
                                v301 = *(v296 + 32) + 16 * v297;
                                v302 = *(v301 - 16);
                                v303 = *(v301 - 8);
                                *(v296 + 16) = v297 - 1;
                                ++*(v296 + 24);
                                if (v302 > 3)
                                {
                                  if (v302 > 5)
                                  {
                                    if (v302 == 6)
                                    {
                                    }

                                    else
                                    {
                                      if (v302 != 7)
                                      {
                                        goto LABEL_520;
                                      }
                                    }
                                  }

                                  else if (v302 == 4)
                                  {
                                  }

                                  else
                                  {
                                  }
                                }

                                else if (v302 > 1)
                                {
                                  if (v302 == 2)
                                  {
                                  }

                                  else
                                  {
                                  }
                                }

                                else if (v302)
                                {
                                }

                                else
                                {
                                }

                                v297 = *(v296 + 16);
                              }

                              while (v297);
                            }

                            else
                            {
                              v299 = *(*(v296 + 32) + 16 * v297 - 16);
                              if (v299 > 3)
                              {
                                if (*(*(v296 + 32) + 16 * v297 - 16) > 5u)
                                {
                                  if (v299 == 6)
                                  {
                                    do
                                    {
                                      v312 = *(*(v296 + 32) + 16 * v297 - 8);
                                      *(v296 + 16) = v297 - 1;
                                      ++*(v296 + 24);
                                      v297 = *(v296 + 16);
                                    }

                                    while (v297);
                                  }

                                  else
                                  {
                                    if (v299 != 7)
                                    {
LABEL_521:
                                      re::internal::assertLog(5, v218, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processEvaluationTree", 1088, *(*(v296 + 32) + 16 * v297 - 16));
                                      result = _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v470);
                                      __break(1u);
                                      return result;
                                    }

                                    do
                                    {
                                      v311 = *(*(v296 + 32) + 16 * v297 - 8);
                                      *(v296 + 16) = v297 - 1;
                                      ++*(v296 + 24);
                                      v297 = *(v296 + 16);
                                    }

                                    while (v297);
                                  }
                                }

                                else if (v299 == 4)
                                {
                                  do
                                  {
                                    v308 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }

                                else
                                {
                                  if (v299 != 5)
                                  {
                                    goto LABEL_521;
                                  }

                                  do
                                  {
                                    v307 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }
                              }

                              else if (*(*(v296 + 32) + 16 * v297 - 16) > 1u)
                              {
                                if (v299 == 2)
                                {
                                  do
                                  {
                                    v310 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }

                                else
                                {
                                  if (v299 != 3)
                                  {
                                    goto LABEL_521;
                                  }

                                  do
                                  {
                                    v309 = *(*(v296 + 32) + 16 * v297 - 8);
                                    *(v296 + 16) = v297 - 1;
                                    ++*(v296 + 24);
                                    v297 = *(v296 + 16);
                                  }

                                  while (v297);
                                }
                              }

                              else if (*(*(v296 + 32) + 16 * v297 - 16))
                              {
                                do
                                {
                                  v300 = *(*(v296 + 32) + 16 * v297 - 8);
                                  *(v296 + 16) = v297 - 1;
                                  ++*(v296 + 24);
                                  v297 = *(v296 + 16);
                                }

                                while (v297);
                              }

                              else
                              {
                                do
                                {
                                  v306 = *(*(v296 + 32) + 16 * v297 - 8);
                                  *(v296 + 16) = v297 - 1;
                                  ++*(v296 + 24);
                                  v297 = *(v296 + 16);
                                }

                                while (v297);
                              }
                            }

                            v304 = *(v481 + 2);
                            v305 = v304 - v298;
                            if (v304 != v298)
                            {
                              re::DynamicArray<re::EvaluationCommand>::add(a4, &v503);
                              *&v492 = v305;
                              result = re::DynamicArray<unsigned long>::add(a5, &v492);
                            }
                          }

                          v294 = a2[475];
                          if (!v294)
                          {
                            goto LABEL_303;
                          }
                        }
                      }

                      goto LABEL_303;
                    }

                    a6 = 0;
                    v289 = 0;
                    v12 = 1;
                    while (1)
                    {
                      v6 = *(v482[16] + a6);
                      v13 = a2[24];
                      if (v13 <= v6)
                      {
                        goto LABEL_458;
                      }

                      *(a2[25] + (v6 << 6) + 40) = 1;
                      v291 = v482[17];
                      if (v291 <= v289)
                      {
                        goto LABEL_462;
                      }

                      v6 = *(v482[16] + a6 + 8);
                      v13 = a2[18];
                      if (v13 <= v6)
                      {
                        goto LABEL_463;
                      }

                      *(a2[19] + (v6 << 6) + 40) = 1;
                      v293 = v482[17];
                      if (v293 <= v289)
                      {
                        goto LABEL_467;
                      }

                      v6 = *(v482[16] + a6 + 16);
                      v13 = a2[24];
                      if (v13 <= v6)
                      {
                        goto LABEL_468;
                      }

                      *(a2[25] + (v6 << 6) + 40) = 1;
                      ++v289;
                      a6 += 24;
                      if (v289 >= v482[17])
                      {
                        goto LABEL_248;
                      }
                    }
                  }

                  v288 = 0;
                  a6 = 1;
                  while (1)
                  {
                    v6 = *(v482[14] + 8 * v288);
                    v13 = a2[24];
                    if (v13 <= v6)
                    {
                      break;
                    }

                    *(a2[25] + (v6 << 6) + 40) = 1;
                    if (++v288 >= v482[15])
                    {
                      goto LABEL_240;
                    }
                  }

LABEL_446:
                  v491 = 0;
                  v495 = 0u;
                  v496 = 0u;
                  v493 = 0u;
                  v494 = 0u;
                  v492 = 0u;
                  v417 = MEMORY[0x1E69E9C10];
                  v418 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v503 = 136315906;
                  v504 = "operator[]";
                  v505 = 1024;
                  if (v418)
                  {
                    v419 = 3;
                  }

                  else
                  {
                    v419 = 2;
                  }

                  v506 = 468;
                  v507 = 2048;
                  v508 = v6;
                  v509 = 2048;
                  v510 = v13;
                  _os_log_send_and_compose_impl(v419, &v491, &v492, 80, &dword_1E1C61000, v417, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_450;
                }

                v287 = 0;
                a6 = 1;
                while (1)
                {
                  v6 = *(v482[12] + 8 * v287);
                  v13 = a2[21];
                  if (v13 <= v6)
                  {
                    break;
                  }

                  *(a2[22] + (v6 << 6) + 40) = 1;
                  if (++v287 >= v482[13])
                  {
                    goto LABEL_236;
                  }
                }

LABEL_442:
                v491 = 0;
                v495 = 0u;
                v496 = 0u;
                v493 = 0u;
                v494 = 0u;
                v492 = 0u;
                v414 = MEMORY[0x1E69E9C10];
                v415 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v503 = 136315906;
                v504 = "operator[]";
                v505 = 1024;
                if (v415)
                {
                  v416 = 3;
                }

                else
                {
                  v416 = 2;
                }

                v506 = 468;
                v507 = 2048;
                v508 = v6;
                v509 = 2048;
                v510 = v13;
                _os_log_send_and_compose_impl(v416, &v491, &v492, 80, &dword_1E1C61000, v414, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
                _os_crash_msg();
                __break(1u);
                goto LABEL_446;
              }

              v286 = 0;
              a6 = 1;
              while (1)
              {
                v6 = *(v482[10] + 8 * v286);
                v13 = a2[18];
                if (v13 <= v6)
                {
                  break;
                }

                *(a2[19] + (v6 << 6) + 40) = 1;
                if (++v286 >= v482[11])
                {
                  goto LABEL_232;
                }
              }

LABEL_438:
              v491 = 0;
              v495 = 0u;
              v496 = 0u;
              v493 = 0u;
              v494 = 0u;
              v492 = 0u;
              v411 = MEMORY[0x1E69E9C10];
              v412 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v503 = 136315906;
              v504 = "operator[]";
              v505 = 1024;
              if (v412)
              {
                v413 = 3;
              }

              else
              {
                v413 = 2;
              }

              v506 = 468;
              v507 = 2048;
              v508 = v6;
              v509 = 2048;
              v510 = v13;
              _os_log_send_and_compose_impl(v413, &v491, &v492, 80, &dword_1E1C61000, v411, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
              _os_crash_msg();
              __break(1u);
              goto LABEL_442;
            }

            v285 = 0;
            a6 = 1;
            while (1)
            {
              v6 = *(v482[8] + 8 * v285);
              v13 = a2[15];
              if (v13 <= v6)
              {
                break;
              }

              *(a2[16] + (v6 << 6) + 40) = 1;
              if (++v285 >= v482[9])
              {
                goto LABEL_228;
              }
            }

LABEL_434:
            v491 = 0;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v492 = 0u;
            v408 = MEMORY[0x1E69E9C10];
            v409 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v503 = 136315906;
            v504 = "operator[]";
            v505 = 1024;
            if (v409)
            {
              v410 = 3;
            }

            else
            {
              v410 = 2;
            }

            v506 = 468;
            v507 = 2048;
            v508 = v6;
            v509 = 2048;
            v510 = v13;
            _os_log_send_and_compose_impl(v410, &v491, &v492, 80, &dword_1E1C61000, v408, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
            _os_crash_msg();
            __break(1u);
            goto LABEL_438;
          }

          v284 = 0;
          a6 = 1;
          while (1)
          {
            v6 = *(v482[6] + 8 * v284);
            v13 = a2[12];
            if (v13 <= v6)
            {
              break;
            }

            *(a2[13] + (v6 << 6) + 40) = 1;
            if (++v284 >= v482[7])
            {
              goto LABEL_224;
            }
          }

LABEL_430:
          v491 = 0;
          v495 = 0u;
          v496 = 0u;
          v493 = 0u;
          v494 = 0u;
          v492 = 0u;
          v405 = MEMORY[0x1E69E9C10];
          v406 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v503 = 136315906;
          v504 = "operator[]";
          v505 = 1024;
          if (v406)
          {
            v407 = 3;
          }

          else
          {
            v407 = 2;
          }

          v506 = 468;
          v507 = 2048;
          v508 = v6;
          v509 = 2048;
          v510 = v13;
          _os_log_send_and_compose_impl(v407, &v491, &v492, 80, &dword_1E1C61000, v405, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
          _os_crash_msg();
          __break(1u);
          goto LABEL_434;
        }

        v283 = 0;
        a6 = 1;
        while (1)
        {
          v6 = *(v482[4] + 8 * v283);
          v13 = a2[9];
          if (v13 <= v6)
          {
            break;
          }

          *(a2[10] + (v6 << 6) + 40) = 1;
          if (++v283 >= v482[5])
          {
            goto LABEL_220;
          }
        }

LABEL_426:
        v491 = 0;
        v495 = 0u;
        v496 = 0u;
        v493 = 0u;
        v494 = 0u;
        v492 = 0u;
        v402 = MEMORY[0x1E69E9C10];
        v403 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v503 = 136315906;
        v504 = "operator[]";
        v505 = 1024;
        if (v403)
        {
          v404 = 3;
        }

        else
        {
          v404 = 2;
        }

        v506 = 468;
        v507 = 2048;
        v508 = v6;
        v509 = 2048;
        v510 = v13;
        _os_log_send_and_compose_impl(v404, &v491, &v492, 80, &dword_1E1C61000, v402, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
        _os_crash_msg();
        __break(1u);
        goto LABEL_430;
      }

      v282 = 0;
      a6 = 1;
      while (1)
      {
        v6 = *(v482[2] + 8 * v282);
        v13 = a2[6];
        if (v13 <= v6)
        {
          break;
        }

        *(a2[7] + (v6 << 6) + 40) = 1;
        if (++v282 >= v482[3])
        {
          goto LABEL_216;
        }
      }

LABEL_422:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v399 = MEMORY[0x1E69E9C10];
      v400 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v400)
      {
        v401 = 3;
      }

      else
      {
        v401 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v401, &v491, &v492, 80, &dword_1E1C61000, v399, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
      goto LABEL_426;
    }

    v281 = 0;
    a6 = 1;
    while (1)
    {
      v6 = *(*v482 + 8 * v281);
      v13 = a2[3];
      if (v13 <= v6)
      {
        break;
      }

      *(a2[4] + (v6 << 6) + 40) = 1;
      if (++v281 >= v482[1])
      {
        goto LABEL_212;
      }
    }

LABEL_418:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v396 = MEMORY[0x1E69E9C10];
    v397 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v397)
    {
      v398 = 3;
    }

    else
    {
      v398 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v6;
    v509 = 2048;
    v510 = v13;
    _os_log_send_and_compose_impl(v398, &v491, &v492, 80, &dword_1E1C61000, v396, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
    goto LABEL_422;
  }

  if (a6 >= 0x108421084210843)
  {
    goto LABEL_518;
  }

  v255 = (*(*result + 32))(result, 248 * a6, 8);
  a2[31] = v255;
  if (!v255)
  {
LABEL_519:
    re::internal::assertLog(4, v256, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_520:
    re::internal::assertLog(5, v303, "assertion failure: '%s' (%s:line %i) Invalid Register Type: %u", "!Unreachable code", "processEvaluationTree", 1097, v302);
    _os_crash("assertion failure: (!Unreachable code) Invalid Register Type: %u", v469);
    __break(1u);
  }

  v257 = a6 - 1;
  if (a6 != 1)
  {
    do
    {
      *(v255 + 208) = 0uLL;
      *(v255 + 224) = 0uLL;
      *(v255 + 176) = 0uLL;
      *(v255 + 192) = 0uLL;
      *(v255 + 144) = 0uLL;
      *(v255 + 160) = 0uLL;
      *(v255 + 112) = 0uLL;
      *(v255 + 128) = 0uLL;
      *(v255 + 80) = 0uLL;
      *(v255 + 96) = 0uLL;
      *(v255 + 48) = 0uLL;
      *(v255 + 64) = 0uLL;
      *(v255 + 16) = 0uLL;
      *(v255 + 32) = 0uLL;
      *v255 = 0uLL;
      *(v255 + 240) = -1;
      v255 += 248;
      --v257;
    }

    while (v257);
  }

  v6 = 0;
  *(v255 + 208) = 0u;
  *(v255 + 224) = 0u;
  *(v255 + 176) = 0u;
  *(v255 + 192) = 0u;
  *(v255 + 144) = 0u;
  *(v255 + 160) = 0u;
  *(v255 + 112) = 0u;
  *(v255 + 128) = 0u;
  *(v255 + 80) = 0u;
  *(v255 + 96) = 0u;
  *(v255 + 48) = 0u;
  *(v255 + 64) = 0u;
  *(v255 + 16) = 0u;
  *(v255 + 32) = 0u;
  *v255 = 0u;
  v248 = 200;
  *(v255 + 240) = -1;
  v484 = a6;
  while (1)
  {
    v258 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a2[1] + 1608, v6);
    v13 = a2[30];
    if (v13 <= v6)
    {
      goto LABEL_510;
    }

    v259 = v258;
    a6 = a2[31] + 248 * v6;
    v12 = *(v258 + 40);
    result = *a2;
    *a6 = *a2;
    *(a6 + 8) = v12;
    if (v12)
    {
      break;
    }

LABEL_207:
    ++v6;
    a6 = v484;
    if (v6 == v484)
    {
      goto LABEL_208;
    }
  }

  if (v12 >= 0x147AE147AE147AFLL)
  {
    goto LABEL_514;
  }

  v260 = (*(*result + 32))(result, 200 * v12, 8);
  *(a6 + 16) = v260;
  if (!v260)
  {
LABEL_515:
    re::internal::assertLog(4, v261, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    goto LABEL_516;
  }

  v262 = v12 - 1;
  if (v12 == 1)
  {
    *v260 = -1;
    v263 = v260 + 1;
  }

  else
  {
    v263 = v260 + 1;
    do
    {
      *(v263 - 1) = -1;
      *v263 = 0uLL;
      v263[1] = 0uLL;
      v263[2] = 0uLL;
      v263[3] = 0uLL;
      v263[4] = 0uLL;
      v263[5] = 0uLL;
      v263[6] = 0uLL;
      v263[7] = 0uLL;
      v263[8] = 0uLL;
      v263[9] = 0uLL;
      v263[10] = 0uLL;
      v263[11] = 0uLL;
      v263 = (v263 + 200);
      --v262;
    }

    while (v262);
    *(v263 - 1) = -1;
  }

  v264 = 0;
  v263[10] = 0uLL;
  v263[11] = 0uLL;
  v263[8] = 0uLL;
  v263[9] = 0uLL;
  v263[6] = 0uLL;
  v263[7] = 0uLL;
  v263[4] = 0uLL;
  v263[5] = 0uLL;
  v263[2] = 0uLL;
  v263[3] = 0uLL;
  *v263 = 0uLL;
  v263[1] = 0uLL;
  while (1)
  {
    v265 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](v259, v264);
    v13 = *(a6 + 8);
    if (v13 <= v264)
    {
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v366 = MEMORY[0x1E69E9C10];
      v367 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v367)
      {
        v368 = 3;
      }

      else
      {
        v368 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v264;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v368, &v491, &v492, 80, &dword_1E1C61000, v366, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_382:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v369 = MEMORY[0x1E69E9C10];
      v370 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v370)
      {
        v371 = 3;
      }

      else
      {
        v371 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = a6;
      _os_log_send_and_compose_impl(v371, &v491, &v492, 80, &dword_1E1C61000, v369, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_386:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v372 = MEMORY[0x1E69E9C10];
      v373 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v373)
      {
        v374 = 3;
      }

      else
      {
        v374 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v374, &v491, &v492, 80, &dword_1E1C61000, v372, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_390:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v375 = MEMORY[0x1E69E9C10];
      v376 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v376)
      {
        v377 = 3;
      }

      else
      {
        v377 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v377, &v491, &v492, 80, &dword_1E1C61000, v375, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_394:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v378 = MEMORY[0x1E69E9C10];
      v379 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v379)
      {
        v380 = 3;
      }

      else
      {
        v380 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v380, &v491, &v492, 80, &dword_1E1C61000, v378, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_398:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v381 = MEMORY[0x1E69E9C10];
      v382 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v382)
      {
        v383 = 3;
      }

      else
      {
        v383 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v383, &v491, &v492, 80, &dword_1E1C61000, v381, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_402:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v384 = MEMORY[0x1E69E9C10];
      v385 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v385)
      {
        v386 = 3;
      }

      else
      {
        v386 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v386, &v491, &v492, 80, &dword_1E1C61000, v384, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_406:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v387 = MEMORY[0x1E69E9C10];
      v388 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v388)
      {
        v389 = 3;
      }

      else
      {
        v389 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v389, &v491, &v492, 80, &dword_1E1C61000, v387, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_410:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v390 = MEMORY[0x1E69E9C10];
      v391 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v391)
      {
        v392 = 3;
      }

      else
      {
        v392 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v392, &v491, &v492, 80, &dword_1E1C61000, v390, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
LABEL_414:
      v491 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v492 = 0u;
      v393 = MEMORY[0x1E69E9C10];
      v394 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v503 = 136315906;
      v504 = "operator[]";
      v505 = 1024;
      if (v394)
      {
        v395 = 3;
      }

      else
      {
        v395 = 2;
      }

      v506 = 468;
      v507 = 2048;
      v508 = v6;
      v509 = 2048;
      v510 = v13;
      _os_log_send_and_compose_impl(v395, &v491, &v492, 80, &dword_1E1C61000, v393, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
      _os_crash_msg();
      __break(1u);
      goto LABEL_418;
    }

    v266 = (*(a6 + 16) + 200 * v264);
    v267 = v265[5];
    if (v267 != -1)
    {
      break;
    }

LABEL_206:
    v271 = *v265;
    v272 = *(*v265 + 1304);
    *&v492 = *(*v265 + 1320);
    *(&v492 + 1) = v272;
    v273 = v271[168];
    *&v493 = v271[170];
    *(&v493 + 1) = v273;
    v274 = v271[173];
    *&v494 = v271[175];
    *(&v494 + 1) = v274;
    v275 = v271[178];
    *&v495 = v271[180];
    *(&v495 + 1) = v275;
    v276 = v271[183];
    *&v496 = v271[185];
    *(&v496 + 1) = v276;
    v277 = v271[188];
    v497 = v271[190];
    v498 = v277;
    v278 = v271[193];
    v499 = v271[195];
    v500 = v278;
    v279 = v271[200];
    v280 = v271[198];
    v501 = v279;
    v502 = v280;
    result = re::EvaluationTree::resolveAliasRegisters(a2[1], *a2, &v492, v266 + 1);
    if (++v264 == v12)
    {
      goto LABEL_207;
    }
  }

  v268 = v267 - 0x7FFFFFFFFFFFFFFFLL;
  if (v267 - 0x7FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_205:
    *v266 = v267;
    goto LABEL_206;
  }

  v269 = a2[1];
  v270 = *(v269 + 704);
  while (v270 > v268)
  {
    v267 = *(*(v269 + 720) + 8 * v268);
    v268 = v267 - 0x7FFFFFFFFFFFFFFFLL;
    if (v267 - 0x7FFFFFFFFFFFFFFFLL < 0)
    {
      goto LABEL_205;
    }
  }

  v491 = 0;
  v495 = 0u;
  v496 = 0u;
  v493 = 0u;
  v494 = 0u;
  v492 = 0u;
  v313 = MEMORY[0x1E69E9C10];
  v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v503 = 136315906;
  v504 = "operator[]";
  v505 = 1024;
  if (v314)
  {
    v315 = 3;
  }

  else
  {
    v315 = 2;
  }

  v506 = 797;
  v507 = 2048;
  v508 = v268;
  v509 = 2048;
  v510 = v270;
  _os_log_send_and_compose_impl(v315, &v491, &v492, 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
  result = _os_crash_msg();
  __break(1u);
LABEL_303:
  v316 = v482[19];
  if (v316)
  {
    v317 = 0;
    v318 = v482[18];
    a6 = a2[3];
    while (1)
    {
      v13 = *(v318 + 8 * v317);
      if (a6 <= v13)
      {
        break;
      }

      v319 = a2[4] + (v13 << 6);
      if ((*(v319 + 40) & 0xFE) == 2 && *(v319 + 56) == -1)
      {
        v320 = a2[519];
        a2[519] = v320 + 1;
        *(v319 + 56) = v320;
        v316 = v482[19];
      }

      if (++v317 >= v316)
      {
        goto LABEL_310;
      }
    }

LABEL_450:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v420 = MEMORY[0x1E69E9C10];
    v421 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v421)
    {
      v422 = 3;
    }

    else
    {
      v422 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v422, &v491, &v492, 80, &dword_1E1C61000, v420, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_454:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v423 = MEMORY[0x1E69E9C10];
    v424 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v424)
    {
      v425 = 3;
    }

    else
    {
      v425 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v425, &v491, &v492, 80, &dword_1E1C61000, v423, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_458:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v289 = MEMORY[0x1E69E9C10];
    v426 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v426)
    {
      v427 = 3;
    }

    else
    {
      v427 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v6;
    v509 = 2048;
    v510 = v13;
    _os_log_send_and_compose_impl(v427, &v491, &v492, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_462:
    re::internal::assertLog(6, v290, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v289, v291);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v462, v471);
    __break(1u);
LABEL_463:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v289 = MEMORY[0x1E69E9C10];
    v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v428)
    {
      v429 = 3;
    }

    else
    {
      v429 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v6;
    v509 = 2048;
    v510 = v13;
    _os_log_send_and_compose_impl(v429, &v491, &v492, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_467:
    re::internal::assertLog(6, v292, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v289, v293);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v463, v472);
    __break(1u);
LABEL_468:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v430 = MEMORY[0x1E69E9C10];
    v431 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v431)
    {
      v432 = 3;
    }

    else
    {
      v432 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v6;
    v509 = 2048;
    v510 = v13;
    _os_log_send_and_compose_impl(v432, &v491, &v492, 80, &dword_1E1C61000, v430, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_472:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v433 = MEMORY[0x1E69E9C10];
    v434 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v434)
    {
      v435 = 3;
    }

    else
    {
      v435 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v435, &v491, &v492, 80, &dword_1E1C61000, v433, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_476:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v436 = MEMORY[0x1E69E9C10];
    v437 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v437)
    {
      v438 = 3;
    }

    else
    {
      v438 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v438, &v491, &v492, 80, &dword_1E1C61000, v436, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_480:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v439 = MEMORY[0x1E69E9C10];
    v440 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v440)
    {
      v441 = 3;
    }

    else
    {
      v441 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v441, &v491, &v492, 80, &dword_1E1C61000, v439, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_484:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v442 = MEMORY[0x1E69E9C10];
    v443 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v443)
    {
      v444 = 3;
    }

    else
    {
      v444 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v444, &v491, &v492, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_488:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v445 = MEMORY[0x1E69E9C10];
    v446 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v446)
    {
      v447 = 3;
    }

    else
    {
      v447 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v447, &v491, &v492, 80, &dword_1E1C61000, v445, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_492:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v448 = MEMORY[0x1E69E9C10];
    v449 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v449)
    {
      v450 = 3;
    }

    else
    {
      v450 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v450, &v491, &v492, 80, &dword_1E1C61000, v448, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_496:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v451 = MEMORY[0x1E69E9C10];
    v452 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v452)
    {
      v453 = 3;
    }

    else
    {
      v453 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v453, &v491, &v492, 80, &dword_1E1C61000, v451, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_500:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v357, v356);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v464, v473);
    __break(1u);
LABEL_501:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v454 = MEMORY[0x1E69E9C10];
    v455 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v455)
    {
      v456 = 3;
    }

    else
    {
      v456 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = v12;
    _os_log_send_and_compose_impl(v456, &v491, &v492, 80, &dword_1E1C61000, v454, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_505:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v357, v356);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v465, v474);
    __break(1u);
LABEL_506:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v457 = MEMORY[0x1E69E9C10];
    v458 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v458)
    {
      v459 = 3;
    }

    else
    {
      v459 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v13;
    v509 = 2048;
    v510 = a6;
    _os_log_send_and_compose_impl(v459, &v491, &v492, 80, &dword_1E1C61000, v457, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_510:
    v491 = 0;
    v495 = 0u;
    v496 = 0u;
    v493 = 0u;
    v494 = 0u;
    v492 = 0u;
    v248 = MEMORY[0x1E69E9C10];
    v460 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v503 = 136315906;
    v504 = "operator[]";
    v505 = 1024;
    if (v460)
    {
      v461 = 3;
    }

    else
    {
      v461 = 2;
    }

    v506 = 468;
    v507 = 2048;
    v508 = v6;
    v509 = 2048;
    v510 = v13;
    _os_log_send_and_compose_impl(v461, &v491, &v492, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v503, 38, v478, v479);
    _os_crash_msg();
    __break(1u);
LABEL_514:
    re::internal::assertLog(6, v218, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 200, v12);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v466, v475);
    __break(1u);
    goto LABEL_515;
  }

LABEL_310:
  v321 = v482[21];
  if (v321)
  {
    v322 = 0;
    v323 = v482[20];
    a6 = a2[6];
    do
    {
      v13 = *(v323 + 8 * v322);
      if (a6 <= v13)
      {
        goto LABEL_454;
      }

      v324 = a2[7] + (v13 << 6);
      if ((*(v324 + 40) & 0xFE) == 2 && *(v324 + 56) == -1)
      {
        v325 = a2[520];
        a2[520] = v325 + 1;
        *(v324 + 56) = v325;
        v321 = v482[21];
      }
    }

    while (++v322 < v321);
  }

  v326 = v482[23];
  if (v326)
  {
    v327 = 0;
    v328 = v482[22];
    a6 = a2[9];
    do
    {
      v13 = *(v328 + 8 * v327);
      if (a6 <= v13)
      {
        goto LABEL_472;
      }

      v329 = a2[10] + (v13 << 6);
      if ((*(v329 + 40) & 0xFE) == 2 && *(v329 + 56) == -1)
      {
        v330 = a2[521];
        a2[521] = v330 + 1;
        *(v329 + 56) = v330;
        v326 = v482[23];
      }
    }

    while (++v327 < v326);
  }

  v331 = v482[25];
  if (v331)
  {
    v332 = 0;
    v333 = v482[24];
    a6 = a2[12];
    do
    {
      v13 = *(v333 + 8 * v332);
      if (a6 <= v13)
      {
        goto LABEL_476;
      }

      v334 = a2[13] + (v13 << 6);
      if ((*(v334 + 40) & 0xFE) == 2 && *(v334 + 56) == -1)
      {
        v335 = a2[522];
        a2[522] = v335 + 1;
        *(v334 + 56) = v335;
        v331 = v482[25];
      }
    }

    while (++v332 < v331);
  }

  v336 = v482[27];
  if (v336)
  {
    v337 = 0;
    v338 = v482[26];
    a6 = a2[15];
    do
    {
      v13 = *(v338 + 8 * v337);
      if (a6 <= v13)
      {
        goto LABEL_480;
      }

      v339 = a2[16] + (v13 << 6);
      if ((*(v339 + 40) & 0xFE) == 2 && *(v339 + 56) == -1)
      {
        v340 = a2[523];
        a2[523] = v340 + 1;
        *(v339 + 56) = v340;
        v336 = v482[27];
      }
    }

    while (++v337 < v336);
  }

  v341 = v482[29];
  if (v341)
  {
    v342 = 0;
    v343 = v482[28];
    a6 = a2[18];
    do
    {
      v13 = *(v343 + 8 * v342);
      if (a6 <= v13)
      {
        goto LABEL_484;
      }

      v344 = a2[19] + (v13 << 6);
      if ((*(v344 + 40) & 0xFE) == 2 && *(v344 + 56) == -1)
      {
        v345 = a2[524];
        a2[524] = v345 + 1;
        *(v344 + 56) = v345;
        v341 = v482[29];
      }
    }

    while (++v342 < v341);
  }

  v346 = v482[31];
  if (v346)
  {
    v347 = 0;
    v348 = v482[30];
    a6 = a2[21];
    do
    {
      v13 = *(v348 + 8 * v347);
      if (a6 <= v13)
      {
        goto LABEL_488;
      }

      v349 = a2[22] + (v13 << 6);
      if ((*(v349 + 40) & 0xFE) == 2 && *(v349 + 56) == -1)
      {
        v350 = a2[525];
        a2[525] = v350 + 1;
        *(v349 + 56) = v350;
        v346 = v482[31];
      }
    }

    while (++v347 < v346);
  }

  v351 = v482[33];
  if (v351)
  {
    v352 = 0;
    v353 = v482[32];
    a6 = a2[24];
    do
    {
      v13 = *(v353 + 8 * v352);
      if (a6 <= v13)
      {
        goto LABEL_492;
      }

      v354 = a2[25] + (v13 << 6);
      if ((*(v354 + 40) & 0xFE) == 2 && *(v354 + 56) == -1)
      {
        v355 = a2[526];
        a2[526] = v355 + 1;
        *(v354 + 56) = v355;
        v351 = v482[33];
      }
    }

    while (++v352 < v351);
  }

  v356 = v482[35];
  if (v356)
  {
    v357 = 0;
    a6 = a2[24];
    v358 = (v482[34] + 16);
    do
    {
      v13 = *(v358 - 2);
      if (a6 <= v13)
      {
        goto LABEL_496;
      }

      v359 = a2[25];
      v360 = v359 + (v13 << 6);
      if ((*(v360 + 40) & 0xFE) == 2 && *(v360 + 56) == -1)
      {
        v361 = a2[526];
        a2[526] = v361 + 1;
        *(v360 + 56) = v361;
        v356 = v482[35];
      }

      if (v356 <= v357)
      {
        goto LABEL_500;
      }

      v13 = *(v358 - 1);
      v12 = a2[18];
      if (v12 <= v13)
      {
        goto LABEL_501;
      }

      v362 = a2[19] + (v13 << 6);
      if ((*(v362 + 40) & 0xFE) == 2 && *(v362 + 56) == -1)
      {
        v363 = a2[524];
        a2[524] = v363 + 1;
        *(v362 + 56) = v363;
        v356 = v482[35];
      }

      if (v356 <= v357)
      {
        goto LABEL_505;
      }

      v13 = *v358;
      if (a6 <= *v358)
      {
        goto LABEL_506;
      }

      v364 = v359 + (v13 << 6);
      if ((*(v364 + 40) & 0xFE) == 2 && *(v364 + 56) == -1)
      {
        v365 = a2[526];
        a2[526] = v365 + 1;
        *(v364 + 56) = v365;
        v356 = v482[35];
      }

      ++v357;
      v358 += 3;
    }

    while (v357 < v356);
  }

  *v480 = 1;
  if ((v486[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

void re::FixedArray<re::EvaluationCommand>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 4 * a3;
  v6 = (*(*a2 + 32))(a2, 4 * a3, 4);
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
    bzero(v6, v5 - 4);
    v8 = (v8 + v5 - 4);
  }

  *v8 = 0;
}

_anonymous_namespace_ *re::FixedArray<unsigned long>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::EvaluationModelSingleThread::deinit(re::EvaluationModelSingleThread *this)
{
  re::FixedRegisterTable::deinit((this + 16));
  re::FixedArray<re::EvaluationCallbackData>::deinit(this + 26);
  re::FixedArray<re::EvaluationContext>::deinit(this + 29);
  re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(this + 32);
  re::FixedRegisterTable::deinit((this + 280));
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::FixedRegisterTable::deinit((this + 496));
  re::FixedArray<CoreIKTransform>::deinit(this + 86);
  re::FixedArray<CoreIKTransform>::deinit(this + 89);
  re::FixedArray<CoreIKTransform>::deinit(this + 95);

  return re::FixedArray<CoreIKTransform>::deinit(this + 92);
}

uint64_t re::EvaluationModelSingleThread::evaluate(re::EvaluationModelSingleThread *this, re::EvaluationContextSlices *a2)
{
  v279 = *MEMORY[0x1E69E9840];
  v7 = *(this + 3);
  v6 = *(this + 4);
  v246 = v6;
  v247 = v7;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v248 = v8;
  v249 = v9;
  i = *(this + 9);
  v10 = *(this + 10);
  v250 = v10;
  v251 = i;
  v252 = *(this + 13);
  v253 = *(this + 12);
  v254 = *(this + 16);
  v255 = *(this + 15);
  v256 = *(this + 19);
  v257 = *(this + 18);
  v258 = *(this + 22);
  v259 = *(this + 21);
  v260 = *(this + 25);
  v261 = *(this + 24);
  v262 = *(this + 28);
  v263 = *(this + 31);
  v264 = *(this + 34);
  v12 = *(a2 + 1);
  if (v12)
  {
    v13 = 0;
    v2 = *(this + 36);
    v14 = *a2;
    while (v2 != v13)
    {
      v3 = *(*(this + 37) + 8 * v13);
      if (v3 != -1)
      {
        if (v7 <= v3)
        {
          goto LABEL_249;
        }

        *(v6 + 4 * v3) = *(v14 + 4 * v13);
      }

      if (v12 == ++v13)
      {
        goto LABEL_8;
      }
    }

    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v85 = 3;
    }

    else
    {
      v85 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v2;
    v272 = 2048;
    v273 = v2;
    _os_log_send_and_compose_impl(v85, &v265, &v274, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
    goto LABEL_145;
  }

LABEL_8:
  v15 = *(a2 + 3);
  if (v15)
  {
    v16 = 0;
    v7 = *(this + 39);
    v17 = *(a2 + 2);
    while (v7 != v16)
    {
      v2 = *(*(this + 40) + 8 * v16);
      if (v2 != -1)
      {
        if (v9 <= v2)
        {
          goto LABEL_253;
        }

        *(v8 + 4 * v2) = *(v17 + 4 * v16);
      }

      v16 = (v16 + 1);
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }

LABEL_145:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v86 = MEMORY[0x1E69E9C10];
    v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v87)
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v7;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v88, &v265, &v274, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_149:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v89 = MEMORY[0x1E69E9C10];
    v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v90)
    {
      v91 = 3;
    }

    else
    {
      v91 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v91, &v265, &v274, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_153:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v92 = MEMORY[0x1E69E9C10];
    v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v93)
    {
      v94 = 3;
    }

    else
    {
      v94 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v94, &v265, &v274, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_157:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v95 = MEMORY[0x1E69E9C10];
    v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v96)
    {
      v97 = 3;
    }

    else
    {
      v97 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v97, &v265, &v274, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v98 = MEMORY[0x1E69E9C10];
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v99)
    {
      v100 = 3;
    }

    else
    {
      v100 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v100, &v265, &v274, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v101 = MEMORY[0x1E69E9C10];
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v103, &v265, &v274, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v106, &v265, &v274, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v107 = MEMORY[0x1E69E9C10];
    v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v108)
    {
      v109 = 3;
    }

    else
    {
      v109 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v2;
    _os_log_send_and_compose_impl(v109, &v265, &v274, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v110 = MEMORY[0x1E69E9C10];
    v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v111)
    {
      v112 = 3;
    }

    else
    {
      v112 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v2;
    _os_log_send_and_compose_impl(v112, &v265, &v274, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v113 = MEMORY[0x1E69E9C10];
    v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v114)
    {
      v115 = 3;
    }

    else
    {
      v115 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v115, &v265, &v274, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_185:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v116 = MEMORY[0x1E69E9C10];
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v118, &v265, &v274, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
    goto LABEL_189;
  }

LABEL_15:
  v18 = *(a2 + 5);
  if (v18)
  {
    v19 = 0;
    v9 = *(this + 42);
    v20 = *(a2 + 4);
    while (v9 != v19)
    {
      v7 = *(*(this + 43) + 8 * v19);
      if (v7 != -1)
      {
        if (i <= v7)
        {
          goto LABEL_257;
        }

        *(v10 + 4 * v7) = *(v20 + 4 * v19);
      }

      if (v18 == ++v19)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_149;
  }

LABEL_22:
  v21 = *(a2 + 7);
  if (v21)
  {
    v22 = 0;
    for (i = 0; i < v21; ++i)
    {
      v9 = *(this + 45);
      if (v9 <= i)
      {
        goto LABEL_153;
      }

      v9 = *(*(this + 46) + 8 * i);
      if (v9 != -1)
      {
        if (v21 <= i)
        {
          goto LABEL_266;
        }

        v7 = *(this + 12);
        if (v7 <= v9)
        {
          goto LABEL_271;
        }

        v23 = (*(a2 + 6) + v22);
        v24 = (*(this + 13) + 48 * v9);
        v25 = *v23;
        v26 = v23[2];
        v24[1] = v23[1];
        v24[2] = v26;
        *v24 = v25;
        v21 = *(a2 + 7);
      }

      v22 += 48;
    }
  }

  v27 = *(a2 + 9);
  if (v27)
  {
    v28 = 0;
    for (i = 0; i < v27; ++i)
    {
      v9 = *(this + 48);
      if (v9 <= i)
      {
        goto LABEL_157;
      }

      v9 = *(*(this + 49) + 8 * i);
      if (v9 != -1)
      {
        if (v27 <= i)
        {
          goto LABEL_289;
        }

        v7 = *(this + 15);
        if (v7 <= v9)
        {
          goto LABEL_290;
        }

        v29 = (*(a2 + 8) + v28);
        v30 = (*(this + 16) + (v9 << 6));
        v31 = *v29;
        v32 = v29[1];
        v33 = v29[3];
        v30[2] = v29[2];
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v27 = *(a2 + 9);
      }

      v28 += 64;
    }
  }

  v34 = *(a2 + 11);
  if (v34)
  {
    v35 = 0;
    for (i = 0; i < v34; ++i)
    {
      v9 = *(this + 51);
      if (v9 <= i)
      {
        goto LABEL_161;
      }

      v9 = *(*(this + 52) + 8 * i);
      if (v9 != -1)
      {
        if (v34 <= i)
        {
          goto LABEL_294;
        }

        v7 = *(this + 18);
        if (v7 <= v9)
        {
          goto LABEL_295;
        }

        *(*(this + 19) + 16 * v9) = *(*(a2 + 10) + v35);
        v34 = *(a2 + 11);
      }

      v35 += 16;
    }
  }

  v36 = *(a2 + 13);
  if (v36)
  {
    i = 0;
    do
    {
      v9 = *(this + 54);
      if (v9 <= i)
      {
        goto LABEL_165;
      }

      v9 = *(*(this + 55) + 8 * i);
      if (v9 != -1)
      {
        if (v36 <= i)
        {
          goto LABEL_299;
        }

        v7 = *(this + 21);
        if (v7 <= v9)
        {
          goto LABEL_300;
        }

        *(*(this + 22) + 8 * v9) = *(*(a2 + 12) + 8 * i);
        v36 = *(a2 + 13);
      }
    }

    while (++i < v36);
  }

  v37 = *(a2 + 15);
  if (v37)
  {
    v38 = 0;
    for (i = 0; i < v37; ++i)
    {
      v9 = *(this + 57);
      if (v9 <= i)
      {
        goto LABEL_169;
      }

      v9 = *(*(this + 58) + 8 * i);
      if (v9 != -1)
      {
        if (v37 <= i)
        {
          goto LABEL_304;
        }

        v7 = *(this + 24);
        if (v7 <= v9)
        {
          goto LABEL_305;
        }

        *(*(this + 25) + 16 * v9) = *(*(a2 + 14) + v38);
        v37 = *(a2 + 15);
      }

      v38 += 16;
    }
  }

  v9 = *(this + 60);
  if (v9)
  {
    v39 = 0;
    v40 = 0;
    for (i = 0; i < v9; ++i)
    {
      v7 = *(*(this + 61) + v39);
      if (v7 != -1)
      {
        v41 = *(a2 + 17);
        if (v41 <= i)
        {
          goto LABEL_309;
        }

        v9 = *(this + 24);
        if (v9 <= v7)
        {
          goto LABEL_310;
        }

        *(*(this + 25) + 16 * v7) = *(*(a2 + 16) + v40);
        v9 = *(this + 60);
      }

      if (v9 <= i)
      {
        goto LABEL_181;
      }

      v7 = *(*(this + 61) + v39 + 8);
      if (v7 != -1)
      {
        v42 = *(a2 + 17);
        if (v42 <= i)
        {
          goto LABEL_314;
        }

        v9 = *(this + 18);
        if (v9 <= v7)
        {
          goto LABEL_315;
        }

        *(*(this + 19) + 16 * v7) = *(*(a2 + 16) + v40 + 16);
        v9 = *(this + 60);
      }

      if (v9 <= i)
      {
        goto LABEL_185;
      }

      v7 = *(*(this + 61) + v39 + 16);
      if (v7 != -1)
      {
        v43 = *(a2 + 17);
        if (v43 <= i)
        {
          goto LABEL_319;
        }

        v9 = *(this + 24);
        if (v9 <= v7)
        {
          goto LABEL_320;
        }

        *(*(this + 25) + 16 * v7) = *(*(a2 + 16) + v40 + 32);
        v9 = *(this + 60);
      }

      v40 += 48;
      v39 += 24;
    }
  }

  v9 = *(this + 90);
  if (v9)
  {
    v44 = 0;
    i = 0;
    do
    {
      v2 = *(this + 96);
      if (v2 <= i)
      {
        goto LABEL_173;
      }

      v2 = *(this + 90);
      if (v2 <= i)
      {
        goto LABEL_177;
      }

      v2 = *(*(this + 97) + 8 * i) + v44;
      v44 = v2;
    }

    while (v9 != i);
  }

  v45 = *(this + 63);
  if (v45)
  {
    v46 = 0;
    v48 = *(a2 + 18);
    v47 = *(a2 + 19);
    v49 = *(this + 64);
    i = *(this + 3);
    while (1)
    {
      v9 = *(v49 + 8 * v46);
      if (i <= v9)
      {
        break;
      }

      if (v47 == v46)
      {
        goto LABEL_193;
      }

      *(v48 + 4 * v46++) = *(*(this + 4) + 4 * v9);
      if (v45 == v46)
      {
        goto LABEL_89;
      }
    }

LABEL_189:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v119 = MEMORY[0x1E69E9C10];
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = i;
    _os_log_send_and_compose_impl(v121, &v265, &v274, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_193:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v47, v47, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v206, v225);
    __break(1u);
    goto LABEL_194;
  }

LABEL_89:
  v50 = *(this + 66);
  if (v50)
  {
    v51 = 0;
    v53 = *(a2 + 20);
    v52 = *(a2 + 21);
    v54 = *(this + 67);
    i = *(this + 6);
    while (1)
    {
      v9 = *(v54 + 8 * v51);
      if (i <= v9)
      {
        break;
      }

      if (v52 == v51)
      {
        goto LABEL_198;
      }

      *(v53 + 4 * v51++) = *(*(this + 7) + 4 * v9);
      if (v50 == v51)
      {
        goto LABEL_94;
      }
    }

LABEL_194:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v122 = MEMORY[0x1E69E9C10];
    v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v123)
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = i;
    _os_log_send_and_compose_impl(v124, &v265, &v274, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_198:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v52, v52);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v207, v226);
    __break(1u);
    goto LABEL_199;
  }

LABEL_94:
  v55 = *(this + 69);
  if (v55)
  {
    v56 = 0;
    v58 = *(a2 + 22);
    v57 = *(a2 + 23);
    v59 = *(this + 70);
    i = *(this + 9);
    while (1)
    {
      v9 = *(v59 + 8 * v56);
      if (i <= v9)
      {
        break;
      }

      if (v57 == v56)
      {
        goto LABEL_203;
      }

      *(v58 + 4 * v56++) = *(*(this + 10) + 4 * v9);
      if (v55 == v56)
      {
        goto LABEL_99;
      }
    }

LABEL_199:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v125 = MEMORY[0x1E69E9C10];
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = i;
    _os_log_send_and_compose_impl(v127, &v265, &v274, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_203:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v57, v57);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v208, v227);
    __break(1u);
    goto LABEL_204;
  }

LABEL_99:
  v9 = *(this + 72);
  if (v9)
  {
    v60 = 0;
    i = 0;
    while (v9 > i)
    {
      v9 = *(*(this + 73) + 8 * i);
      v7 = *(this + 12);
      if (v7 <= v9)
      {
        goto LABEL_208;
      }

      v61 = *(a2 + 25);
      if (v61 <= i)
      {
        goto LABEL_212;
      }

      v62 = (*(this + 13) + 48 * v9);
      v63 = (*(a2 + 24) + v60);
      v64 = *v62;
      v65 = v62[2];
      v63[1] = v62[1];
      v63[2] = v65;
      *v63 = v64;
      ++i;
      v9 = *(this + 72);
      v60 += 48;
      if (i >= v9)
      {
        goto LABEL_105;
      }
    }

LABEL_204:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v130, &v265, &v274, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_208:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v131 = MEMORY[0x1E69E9C10];
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v133, &v265, &v274, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_212:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v61);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v209, v228);
    __break(1u);
    goto LABEL_213;
  }

LABEL_105:
  v9 = *(this + 75);
  if (v9)
  {
    v66 = 0;
    i = 0;
    while (v9 > i)
    {
      v9 = *(*(this + 76) + 8 * i);
      v7 = *(this + 15);
      if (v7 <= v9)
      {
        goto LABEL_217;
      }

      v67 = *(a2 + 27);
      if (v67 <= i)
      {
        goto LABEL_221;
      }

      v68 = (*(this + 16) + (v9 << 6));
      v69 = (*(a2 + 26) + v66);
      v70 = *v68;
      v71 = v68[1];
      v72 = v68[3];
      v69[2] = v68[2];
      v69[3] = v72;
      *v69 = v70;
      v69[1] = v71;
      ++i;
      v9 = *(this + 75);
      v66 += 64;
      if (i >= v9)
      {
        goto LABEL_111;
      }
    }

LABEL_213:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v134 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v136, &v265, &v274, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_217:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v138)
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v139, &v265, &v274, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_221:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v67);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v210, v229);
    __break(1u);
    goto LABEL_222;
  }

LABEL_111:
  v9 = *(this + 78);
  if (v9)
  {
    v73 = 0;
    i = 0;
    while (v9 > i)
    {
      v9 = *(*(this + 79) + 8 * i);
      v7 = *(this + 18);
      if (v7 <= v9)
      {
        goto LABEL_226;
      }

      v74 = *(a2 + 29);
      if (v74 <= i)
      {
        goto LABEL_230;
      }

      *(*(a2 + 28) + v73) = *(*(this + 19) + 16 * v9);
      ++i;
      v9 = *(this + 78);
      v73 += 16;
      if (i >= v9)
      {
        goto LABEL_117;
      }
    }

LABEL_222:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v140 = MEMORY[0x1E69E9C10];
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v142, &v265, &v274, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_226:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v145, &v265, &v274, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_230:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v74);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v211, v230);
    __break(1u);
    goto LABEL_231;
  }

LABEL_117:
  v9 = *(this + 81);
  if (v9)
  {
    i = 0;
    while (v9 > i)
    {
      v9 = *(*(this + 82) + 8 * i);
      v7 = *(this + 21);
      if (v7 <= v9)
      {
        goto LABEL_235;
      }

      v75 = *(a2 + 31);
      if (v75 <= i)
      {
        goto LABEL_239;
      }

      *(*(a2 + 30) + 8 * i++) = *(*(this + 22) + 8 * v9);
      v9 = *(this + 81);
      if (i >= v9)
      {
        goto LABEL_123;
      }
    }

LABEL_231:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v148, &v265, &v274, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_235:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v149 = MEMORY[0x1E69E9C10];
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v151, &v265, &v274, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_239:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v75);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v212, v231);
    __break(1u);
LABEL_240:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v152 = MEMORY[0x1E69E9C10];
    v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v153)
    {
      v154 = 3;
    }

    else
    {
      v154 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v154, &v265, &v274, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_244:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v155 = MEMORY[0x1E69E9C10];
    v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v156)
    {
      v157 = 3;
    }

    else
    {
      v157 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v157, &v265, &v274, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v77);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v213, v232);
    __break(1u);
LABEL_249:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v158 = MEMORY[0x1E69E9C10];
    v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v159)
    {
      v160 = 3;
    }

    else
    {
      v160 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v3;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v160, &v265, &v274, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_253:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v161 = MEMORY[0x1E69E9C10];
    v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v162)
    {
      v163 = 3;
    }

    else
    {
      v163 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v2;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v163, &v265, &v274, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_257:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v164 = MEMORY[0x1E69E9C10];
    v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v165)
    {
      v166 = 3;
    }

    else
    {
      v166 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v7;
    v272 = 2048;
    v273 = i;
    _os_log_send_and_compose_impl(v166, &v265, &v274, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_261:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v167 = MEMORY[0x1E69E9C10];
    v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v168)
    {
      v169 = 3;
    }

    else
    {
      v169 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v169, &v265, &v274, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_265:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v80);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v214, v233);
    __break(1u);
LABEL_266:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v21);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v215, v234);
    __break(1u);
LABEL_267:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v170 = MEMORY[0x1E69E9C10];
    v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v171)
    {
      v172 = 3;
    }

    else
    {
      v172 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v172, &v265, &v274, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_271:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v173 = MEMORY[0x1E69E9C10];
    v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v174)
    {
      v175 = 3;
    }

    else
    {
      v175 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v175, &v265, &v274, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_275:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v176 = MEMORY[0x1E69E9C10];
    v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v177)
    {
      v178 = 3;
    }

    else
    {
      v178 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v178, &v265, &v274, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_279:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v81);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v216, v235);
    __break(1u);
LABEL_280:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v179 = MEMORY[0x1E69E9C10];
    v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v180)
    {
      v181 = 3;
    }

    else
    {
      v181 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = i;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v181, &v265, &v274, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_284:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v182 = MEMORY[0x1E69E9C10];
    v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v183)
    {
      v184 = 3;
    }

    else
    {
      v184 = 2;
    }

    v269 = 476;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v184, &v265, &v274, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_288:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, i, v82);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v217, v236);
    __break(1u);
LABEL_289:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v27);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v218, v237);
    __break(1u);
LABEL_290:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v185 = MEMORY[0x1E69E9C10];
    v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v186)
    {
      v187 = 3;
    }

    else
    {
      v187 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v187, &v265, &v274, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_294:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v34);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v219, v238);
    __break(1u);
LABEL_295:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v188 = MEMORY[0x1E69E9C10];
    v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v189)
    {
      v190 = 3;
    }

    else
    {
      v190 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v190, &v265, &v274, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_299:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v36);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v220, v239);
    __break(1u);
LABEL_300:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v191 = MEMORY[0x1E69E9C10];
    v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v192)
    {
      v193 = 3;
    }

    else
    {
      v193 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v193, &v265, &v274, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_304:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v37);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v221, v240);
    __break(1u);
LABEL_305:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v194 = MEMORY[0x1E69E9C10];
    v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v195)
    {
      v196 = 3;
    }

    else
    {
      v196 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v9;
    v272 = 2048;
    v273 = v7;
    _os_log_send_and_compose_impl(v196, &v265, &v274, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_309:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v41);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v222, v241);
    __break(1u);
LABEL_310:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v197 = MEMORY[0x1E69E9C10];
    v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v198)
    {
      v199 = 3;
    }

    else
    {
      v199 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v7;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v199, &v265, &v274, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_314:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v42);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v223, v242);
    __break(1u);
LABEL_315:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v200 = MEMORY[0x1E69E9C10];
    v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v201)
    {
      v202 = 3;
    }

    else
    {
      v202 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v7;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v202, &v265, &v274, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
LABEL_319:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, v43);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v224, v243);
    __break(1u);
LABEL_320:
    v265 = 0;
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v274 = 0u;
    v203 = MEMORY[0x1E69E9C10];
    v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v266 = 136315906;
    v267 = "operator[]";
    v268 = 1024;
    if (v204)
    {
      v205 = 3;
    }

    else
    {
      v205 = 2;
    }

    v269 = 468;
    v270 = 2048;
    v271 = v7;
    v272 = 2048;
    v273 = v9;
    _os_log_send_and_compose_impl(v205, &v265, &v274, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v266, 38, v244, v245);
    _os_crash_msg();
    __break(1u);
  }

LABEL_123:
  v9 = *(this + 84);
  if (v9)
  {
    v76 = 0;
    i = 0;
    while (v9 > i)
    {
      v9 = *(*(this + 85) + 8 * i);
      v7 = *(this + 24);
      if (v7 <= v9)
      {
        goto LABEL_244;
      }

      v77 = *(a2 + 33);
      if (v77 <= i)
      {
        goto LABEL_248;
      }

      *(*(a2 + 32) + v76) = *(*(this + 25) + 16 * v9);
      ++i;
      v9 = *(this + 84);
      v76 += 16;
      if (i >= v9)
      {
        goto LABEL_129;
      }
    }

    goto LABEL_240;
  }

LABEL_129:
  if (*(this + 87))
  {
    v78 = 0;
    v79 = 0;
    i = 0;
    while (1)
    {
      v9 = *(*(this + 88) + v78);
      v7 = *(this + 24);
      if (v7 <= v9)
      {
        goto LABEL_261;
      }

      v80 = *(a2 + 35);
      if (v80 <= i)
      {
        goto LABEL_265;
      }

      *(*(a2 + 34) + v79) = *(*(this + 25) + 16 * v9);
      v9 = *(this + 87);
      if (v9 <= i)
      {
        goto LABEL_267;
      }

      v9 = *(*(this + 88) + v78 + 8);
      v7 = *(this + 18);
      if (v7 <= v9)
      {
        goto LABEL_275;
      }

      v81 = *(a2 + 35);
      if (v81 <= i)
      {
        goto LABEL_279;
      }

      *(*(a2 + 34) + v79 + 16) = *(*(this + 19) + 16 * v9);
      v9 = *(this + 87);
      if (v9 <= i)
      {
        goto LABEL_280;
      }

      v9 = *(*(this + 88) + v78 + 16);
      v7 = *(this + 24);
      if (v7 <= v9)
      {
        goto LABEL_284;
      }

      v82 = *(a2 + 35);
      if (v82 <= i)
      {
        goto LABEL_288;
      }

      *(*(a2 + 34) + v79 + 32) = *(*(this + 25) + 16 * v9);
      ++i;
      v79 += 48;
      v78 += 24;
      if (i >= *(this + 87))
      {
        return 1;
      }
    }
  }

  return 1;
}