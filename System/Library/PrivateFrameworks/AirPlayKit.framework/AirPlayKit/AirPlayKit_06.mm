uint64_t sub_23E8F1120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return sub_23E8F01A8(a1, a2);
}

void sub_23E8F11C8()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F13C4(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

void sub_23E8F1224()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F1338(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8F1280(uint64_t a1, uint64_t a2)
{
  result = sub_23E8F14AC(a1, v4);
  if (v5 < 2u)
  {
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v4);
    *(a2 + 144) = 1;
  }

  return result;
}

void sub_23E8F12DC()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F2F18(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8F1354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_23E8F13C4(uint64_t a1)
{
  sub_23E8F1408(a1);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 2;
  *(v1 + 144) = 0;
  return result;
}

unint64_t sub_23E8F14E4()
{
  result = qword_27E35F5A0;
  if (!qword_27E35F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F5A0);
  }

  return result;
}

uint64_t sub_23E8F1538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8F1580(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = sub_23E8F1654(v12, a2, a3);
  *a1 = v9;
  return result;
}

uint64_t sub_23E8F1654(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = sub_23E900DC4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v10 = sub_23E9009E4();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_23E8F1A34(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_23E8F17B0(0, v6, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_23E8F17B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = MEMORY[0x28223BE20](v12);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v33 - v20;
  v35 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v40 = -v23;
    v41 = v22;
    v25 = a1 - a3;
    v34 = v23;
    v26 = v22 + v23 * a3;
LABEL_6:
    v38 = v24;
    v39 = a3;
    v36 = v26;
    v37 = v25;
    v27 = v25;
    while (1)
    {
      sub_23E8891B4(v26, v21, a5, a6);
      sub_23E8891B4(v24, v17, a5, a6);
      if (*&v21[*(v12 + 40)] >= *&v17[*(v12 + 40)])
      {
        sub_23E87E458(v17, a5, a6);
        result = sub_23E87E458(v21, a5, a6);
LABEL_5:
        a3 = v39 + 1;
        v24 = v38 + v34;
        v25 = v37 - 1;
        v26 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v28 = *(v12 + 36);
      v29 = *&v21[v28];
      v30 = *&v17[v28];
      sub_23E87E458(v17, a5, a6);
      result = sub_23E87E458(v21, a5, a6);
      if (v29 >= v30)
      {
        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = v42;
      sub_23E87E3F0(v26, v42, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23E87E3F0(v31, v24, a5, a6);
      v24 += v40;
      v26 += v40;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8F1A34(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v121 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v132 = *(v139 - 8);
  v11 = MEMORY[0x28223BE20](v139);
  v126 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v129 = &v117 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v119 = &v117 - v21;
  result = MEMORY[0x28223BE20](v20);
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_101:
    v6 = *v121;
    if (!*v121)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v140 = v29;
      v110 = *(v29 + 16);
      if (v110 >= 2)
      {
        while (1)
        {
          v111 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v112 = a3;
          v113 = *(v29 + 16 * v110);
          a3 = v29;
          v114 = *(v29 + 16 * (v110 - 1) + 32);
          v29 = *(v29 + 16 * (v110 - 1) + 40);
          v115 = v134;
          sub_23E8F246C(v111 + *(v132 + 72) * v113, v111 + *(v132 + 72) * v114, v111 + *(v132 + 72) * v29, v6, a5, a6);
          v134 = v115;
          if (v115)
          {
          }

          if (v29 < v113)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_23E8F2A84(a3);
          }

          if (v110 - 2 >= a3[2])
          {
            goto LABEL_127;
          }

          v116 = &a3[2 * v110];
          *v116 = v113;
          v116[1] = v29;
          v140 = a3;
          result = sub_23E8F29F8(v110 - 1);
          v29 = v140;
          v110 = v140[2];
          a3 = v112;
          if (v110 <= 1)
          {
          }
        }
      }
    }

LABEL_133:
    result = sub_23E8F2A84(v29);
    v29 = result;
    goto LABEL_103;
  }

  v118 = &v117 - v23;
  v128 = v26;
  v138 = v25;
  v136 = v24;
  v117 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v122 = a3;
  while (1)
  {
    v30 = v28++;
    v123 = v30;
    if (v28 < v27)
    {
      v130 = v27;
      v31 = *a3;
      v6 = *(v132 + 72);
      v32 = v118;
      sub_23E8891B4(*a3 + v6 * v28, v118, a5, a6);
      v133 = v6;
      v33 = v31 + v6 * v30;
      v34 = v119;
      sub_23E8891B4(v33, v119, a5, a6);
      LODWORD(v131) = *(v32 + *(v139 + 40)) < *(v34 + *(v139 + 40)) && *(v32 + *(v139 + 36)) < *(v34 + *(v139 + 36));
      v120 = v29;
      sub_23E87E458(v34, a5, a6);
      result = sub_23E87E458(v32, a5, a6);
      v35 = v123 + 2;
      v36 = v133 * (v123 + 2);
      v37 = v31 + v36;
      v38 = (v133 * v28);
      v39 = v31 + v133 * v28;
      do
      {
        v40 = v35;
        v41 = v28;
        a3 = v38;
        v29 = v36;
        v135 = v35;
        if (v35 >= v130)
        {
          break;
        }

        v42 = v128;
        sub_23E8891B4(v37, v128, a5, a6);
        v43 = v129;
        sub_23E8891B4(v39, v129, a5, a6);
        v44 = v43;
        v6 = *(v42 + *(v139 + 40)) < *(v43 + *(v139 + 40)) && (*(v42 + *(v139 + 36)) < *(v43 + *(v139 + 36)));
        sub_23E87E458(v44, a5, a6);
        result = sub_23E87E458(v42, a5, a6);
        v40 = v135;
        v35 = v135 + 1;
        v37 += v133;
        v39 += v133;
        v28 = v41 + 1;
        v38 = (a3 + v133);
        v36 = v29 + v133;
      }

      while (v131 == v6);
      if (v131)
      {
        v30 = v123;
        if (v40 < v123)
        {
          goto LABEL_130;
        }

        if (v123 >= v40)
        {
          v28 = v40;
          a3 = v122;
          goto LABEL_30;
        }

        v45 = v123 * v133;
        do
        {
          if (v30 != v41)
          {
            v6 = *v122;
            if (!*v122)
            {
              goto LABEL_136;
            }

            sub_23E87E3F0(v6 + v45, v126, a5, a6);
            if (v45 < a3 || v6 + v45 >= (v6 + v29))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_23E87E3F0(v126, a3 + v6, a5, a6);
            v40 = v135;
          }

          ++v30;
          a3 = (a3 - v133);
          v29 -= v133;
          v45 += v133;
        }

        while (v30 < v41--);
      }

      v28 = v40;
      a3 = v122;
      v30 = v123;
LABEL_30:
      v29 = v120;
    }

    v47 = a3[1];
    if (v28 < v47)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_129;
      }

      if (v28 - v30 < v117)
      {
        break;
      }
    }

LABEL_50:
    if (v28 < v30)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v63 = *(v29 + 16);
    v62 = *(v29 + 24);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_23E88A1E0((v62 > 1), v63 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v64;
    v65 = (v29 + 16 * v63);
    v65[4] = v123;
    v65[5] = v28;
    v135 = *v121;
    if (!v135)
    {
      goto LABEL_138;
    }

    if (v63)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v29 + 32);
          v68 = *(v29 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_70:
          if (v70)
          {
            goto LABEL_117;
          }

          v83 = (v29 + 16 * v64);
          v85 = *v83;
          v84 = v83[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_120;
          }

          v89 = (v29 + 32 + 16 * v66);
          v91 = *v89;
          v90 = v89[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_124;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v93 = (v29 + 16 * v64);
        v95 = *v93;
        v94 = v93[1];
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_84:
        if (v88)
        {
          goto LABEL_119;
        }

        v96 = (v29 + 16 * v66);
        v98 = v96[4];
        v97 = v96[5];
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_122;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_91:
        v104 = v66 - 1;
        if (v66 - 1 >= v64)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v105 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v6 = a3;
        a3 = v29;
        v106 = *(v29 + 32 + 16 * v104);
        v107 = *(v29 + 32 + 16 * v66);
        v29 = *(v29 + 32 + 16 * v66 + 8);
        v108 = v134;
        sub_23E8F246C(v105 + *(v132 + 72) * v106, v105 + *(v132 + 72) * v107, v105 + *(v132 + 72) * v29, v135, a5, a6);
        v134 = v108;
        if (v108)
        {
        }

        if (v29 < v106)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_23E8F2A84(a3);
        }

        if (v104 >= a3[2])
        {
          goto LABEL_114;
        }

        v109 = &a3[2 * v104];
        v109[4] = v106;
        v109[5] = v29;
        v140 = a3;
        result = sub_23E8F29F8(v66);
        v29 = v140;
        v64 = v140[2];
        a3 = v6;
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = v29 + 32 + 16 * v64;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_115;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_116;
      }

      v78 = (v29 + 16 * v64);
      v80 = *v78;
      v79 = v78[1];
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_118;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_121;
      }

      if (v82 >= v74)
      {
        v100 = (v29 + 32 + 16 * v66);
        v102 = *v100;
        v101 = v100[1];
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_125;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v27 = a3[1];
    if (v28 >= v27)
    {
      goto LABEL_101;
    }
  }

  v48 = v30 + v117;
  if (__OFADD__(v30, v117))
  {
    goto LABEL_131;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v30)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v28 == v48)
  {
    goto LABEL_50;
  }

  v120 = v29;
  v49 = *a3;
  v50 = *(v132 + 72);
  v51 = *a3 + v50 * (v28 - 1);
  v52 = -v50;
  v53 = v30 - v28;
  v135 = v49;
  v124 = v50;
  v125 = v48;
  v54 = v49 + v28 * v50;
  v55 = v136;
LABEL_42:
  v133 = v28;
  v127 = v54;
  v130 = v53;
  v131 = v51;
  v56 = v139;
  while (1)
  {
    v6 = v138;
    sub_23E8891B4(v54, v138, a5, a6);
    sub_23E8891B4(v51, v55, a5, a6);
    if (*(v6 + *(v56 + 40)) >= *(v55 + *(v56 + 40)))
    {
      sub_23E87E458(v55, a5, a6);
      sub_23E87E458(v6, a5, a6);
LABEL_41:
      v28 = v133 + 1;
      v51 = v131 + v124;
      v53 = v130 - 1;
      v54 = v127 + v124;
      if (v133 + 1 == v125)
      {
        v28 = v125;
        a3 = v122;
        v30 = v123;
        v29 = v120;
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    v57 = *(v56 + 36);
    v58 = *(v6 + v57);
    v59 = *(v55 + v57);
    sub_23E87E458(v55, a5, a6);
    result = sub_23E87E458(v6, a5, a6);
    if (v58 >= v59)
    {
      goto LABEL_41;
    }

    if (!v135)
    {
      break;
    }

    v60 = v137;
    sub_23E87E3F0(v54, v137, a5, a6);
    v56 = v139;
    swift_arrayInitWithTakeFrontToBack();
    sub_23E87E3F0(v60, v51, a5, a6);
    v51 += v52;
    v54 += v52;
    v61 = __CFADD__(v53++, 1);
    v55 = v136;
    if (v61)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_23E8F246C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v61 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v57 = &v51 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v51 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v24 = v61 - a2;
  if (v61 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v25 = (a2 - a1) / v23;
  v64 = a1;
  v63 = a4;
  v60 = result;
  if (v25 >= v24 / v23)
  {
    v28 = v24 / v23 * v23;
    v56 = v19;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v28;
    if (v28 >= 1)
    {
      v36 = -v23;
      v37 = a4 + v28;
      v58 = v7;
      v59 = v6;
      v53 = a4;
      do
      {
        v51 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v54 = v38;
        v55 = v39;
        while (1)
        {
          v41 = v61;
          if (v38 <= a1)
          {
            v64 = v38;
            v62 = v51;
            goto LABEL_63;
          }

          v52 = v35;
          v42 = v36;
          v43 = v37 + v36;
          v44 = v57;
          sub_23E8891B4(v43, v57, v7, v6);
          v45 = v39;
          v46 = v56;
          sub_23E8891B4(v45, v56, v7, v6);
          v47 = v46;
          v48 = *(v44 + *(v60 + 40)) < *(v46 + *(v60 + 40)) && *(v44 + *(v60 + 36)) < *(v46 + *(v60 + 36));
          v61 = v41 + v42;
          v50 = v58;
          v49 = v59;
          sub_23E87E458(v47, v58, v59);
          sub_23E87E458(v44, v50, v49);
          if (v48)
          {
            break;
          }

          v35 = v43;
          if (v41 < v37 || v61 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v55;
          }

          else
          {
            v39 = v55;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v38 = v54;
          v40 = v43 > v53;
          v36 = v42;
          v7 = v58;
          v6 = v59;
          if (!v40)
          {
            a2 = v54;
            goto LABEL_62;
          }
        }

        if (v41 < v54 || v61 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v52;
          v36 = v42;
        }

        else
        {
          a2 = v55;
          v35 = v52;
          v36 = v42;
          if (v41 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v58;
        v6 = v59;
      }

      while (v37 > v53);
    }

LABEL_62:
    v64 = a2;
    v62 = v35;
  }

  else
  {
    v26 = a2;
    v27 = v25 * v23;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v27;
    v62 = a4 + v27;
    if (v27 >= 1 && v26 < v61)
    {
      v30 = v26;
      while (1)
      {
        sub_23E8891B4(v30, v21, v7, v6);
        sub_23E8891B4(a4, v17, v7, v6);
        if (*&v21[*(v60 + 40)] >= *&v17[*(v60 + 40)])
        {
          break;
        }

        v31 = *(v60 + 36);
        v32 = *&v21[v31];
        v33 = *&v17[v31];
        sub_23E87E458(v17, v7, v6);
        sub_23E87E458(v21, v7, v6);
        if (v32 >= v33)
        {
          goto LABEL_28;
        }

        v34 = v30;
        v30 += v23;
        if (a1 < v34 || a1 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v34)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_34:
        a1 += v23;
        v64 = a1;
        if (a4 >= v57 || v30 >= v61)
        {
          goto LABEL_63;
        }
      }

      sub_23E87E458(v17, v7, v6);
      sub_23E87E458(v21, v7, v6);
LABEL_28:
      if (a1 < a4 || a1 >= a4 + v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v63 = a4 + v23;
      a4 += v23;
      goto LABEL_34;
    }
  }

LABEL_63:
  sub_23E8F2AFC(&v64, &v63, &v62, v7, v6);
  return 1;
}

uint64_t sub_23E8F29F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E8F2A84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23E8F2AFC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23E8F2C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_23E881028(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_23E8F2D08(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_23E8811D8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23E8F2D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8F2D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E8F2DE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E8F2E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8F2E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E8EDF48();
}

uint64_t Anchor.hashValue.getter(float a1, float a2)
{
  sub_23E900EB4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900F14();
}

uint64_t sub_23E8F3050()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E900EB4();
  Anchor.hash(into:)(v1, v2);
  return sub_23E900F14();
}

uint64_t sub_23E8F30AC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_23E900EB4();
  Anchor.hash(into:)(v2, v3);
  return sub_23E900F14();
}

unint64_t sub_23E8F3100()
{
  result = qword_27E35F740;
  if (!qword_27E35F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F740);
  }

  return result;
}

unint64_t sub_23E8F3180(uint64_t a1)
{
  result = sub_23E8F31A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F31A8()
{
  result = qword_27E35F748;
  if (!qword_27E35F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Anchor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Anchor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_23E8F3254(uint64_t a1)
{
  result = sub_23E8F327C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F327C()
{
  result = qword_27E35F750;
  if (!qword_27E35F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F750);
  }

  return result;
}

unint64_t sub_23E8F32D0(uint64_t a1)
{
  result = sub_23E8A7FF8();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteInspectorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteInspectorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E8F344C()
{
  result = qword_27E35F7B8;
  if (!qword_27E35F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7B8);
  }

  return result;
}

unint64_t sub_23E8F34A0()
{
  if (!*(v0 + 16))
  {
    return sub_23E8B0C9C();
  }

  if (*(v0 + 16) == 1)
  {
    return sub_23E8815EC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  v3 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  sub_23E8D3054(inited + 32);
  return v3;
}

unint64_t sub_23E8F36CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8F34A0();
  *a1 = result;
  return result;
}

unint64_t sub_23E8F36F4(uint64_t a1)
{
  result = sub_23E8F371C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F371C()
{
  result = qword_27E35F7C0;
  if (!qword_27E35F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7C0);
  }

  return result;
}

unint64_t sub_23E8F3770(uint64_t a1)
{
  result = sub_23E8F3798();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F3798()
{
  result = qword_27E35F7C8;
  if (!qword_27E35F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7C8);
  }

  return result;
}

uint64_t sub_23E8F383C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E8F40C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4, v5);
}

uint64_t sub_23E8F38D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E8F409C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_23E8829CC(v3, v4);
  return sub_23E882A30(v8, v9);
}

uint64_t NullAirPlayConnection.onClose.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_23E8829CC(v1, *(v0 + 24));
  return v1;
}

uint64_t NullAirPlayConnection.onClose.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_23E882A30(v5, v6);
}

uint64_t sub_23E8F3A80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E8F406C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4, v5);
}

uint64_t sub_23E8F3B14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E8F4034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_23E8829CC(v3, v4);
  return sub_23E882A30(v8, v9);
}

uint64_t NullAirPlayConnection.onDataReceived.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_23E8829CC(v1, *(v0 + 40));
  return v1;
}

uint64_t NullAirPlayConnection.onDataReceived.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_23E882A30(v5, v6);
}

double NullAirPlayConnection.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

double NullAirPlayConnection.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t *NullAirPlayConnection.deinit()
{
  sub_23E882A30(v0[2], v0[3]);
  sub_23E882A30(v0[4], v0[5]);
  return v0;
}

uint64_t NullAirPlayConnection.__deallocating_deinit()
{
  sub_23E882A30(v0[2], v0[3]);
  sub_23E882A30(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t NullAirPlayConnection.send(_:)()
{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t sub_23E8F3D9C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_23E8829CC(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_23E8F3DEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_23E882A30(v5, v6);
}

uint64_t sub_23E8F3E90()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_23E8829CC(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_23E8F3EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_23E882A30(v5, v6);
}

uint64_t sub_23E8F3FFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E8F4034(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_23E8F40F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23E88CAE8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0688();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_23E9006D4();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_23E8FC1AC(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_23E9006D4();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double sub_23E8F4264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23E88C9D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0164();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = sub_23E9006D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 56 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = *(v12 + 48);
    sub_23E8FBB5C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_23E8F435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23E88C9D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D08F0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_23E9006D4();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_23E8FC35C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_23E9006D4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_23E8F44F4(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v163 = a1;
  v159 = a4;
  v157 = a3;
  v161 = a2;
  v162 = sub_23E9006D4();
  v165 = *(v162 - 8);
  v5 = MEMORY[0x28223BE20](v162);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v154 - v9;
  MEMORY[0x28223BE20](v8);
  v160 = &v154 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v154 - v13;
  v15 = type metadata accessor for RenderLayerAction(0);
  v16 = MEMORY[0x28223BE20](v15);
  v155 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v154 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v154 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v154 - v23;
  v25 = type metadata accessor for RenderLayerActionType(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v15;
  v28 = *(v15 + 20);
  v29 = v27;
  v192 = v4;
  sub_23E8F5C3C(v4 + v28, v27, type metadata accessor for RenderLayerActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = v161;
      v32 = v164;
      if (*(v161 + 16))
      {
        v33 = sub_23E88C9D8(v192);
        if (v34)
        {
          sub_23E8810DC(*(v31 + 56) + 40 * v33, &v174);
          sub_23E881028(&v174, &v170);
          __swift_project_boxed_opaque_existential_1(v163, v163[3]);
          sub_23E8F8DBC(&v170, &v174);
          if (v32)
          {
            __swift_destroy_boxed_opaque_existential_1(&v170);
LABEL_45:
            v106 = type metadata accessor for RenderLayerActionType;
            v107 = v29;
            goto LABEL_46;
          }

          sub_23E8A295C(&v174);
          __swift_destroy_boxed_opaque_existential_1(&v170);
          sub_23E8F5CA4(v29, type metadata accessor for RenderLayerActionType);
          v64 = v158;
          goto LABEL_89;
        }
      }

      if (qword_27E35E188 == -1)
      {
LABEL_31:
        v65 = sub_23E900764();
        __swift_project_value_buffer(v65, qword_27E367168);
        sub_23E8F5C3C(v192, v24, type metadata accessor for RenderLayerAction);
        v66 = sub_23E900744();
        v67 = sub_23E900B04();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = v29;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v174 = v70;
          *v69 = 136315138;
          sub_23E8DF634(&qword_27E35F5C8, MEMORY[0x277CC9628]);
          v71 = sub_23E900DD4();
          v73 = v72;
          sub_23E8F5CA4(v24, type metadata accessor for RenderLayerAction);
          v74 = sub_23E887B9C(v71, v73, &v174);

          *(v69 + 4) = v74;
          _os_log_impl(&dword_23E879000, v66, v67, "No node in registry for %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x23EF18560](v70, -1, -1);
          v75 = v69;
          v29 = v68;
          MEMORY[0x23EF18560](v75, -1, -1);
        }

        else
        {

          sub_23E8F5CA4(v24, type metadata accessor for RenderLayerAction);
        }

        goto LABEL_45;
      }

LABEL_95:
      swift_once();
      goto LABEL_31;
    }

    v160 = v29;
    v46 = v163;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v47 = v165;
    v48 = v162;
    (*(v165 + 16))(v14, v192, v162);
    (*(v47 + 56))(v14, 0, 1, v48);
    sub_23E8F9798(v14, &v170);
    sub_23E87E458(v14, &unk_27E35F820, &qword_23E9064A0);
    v49 = v164;
    v50 = v161;
    if (!*(&v172 + 1))
    {
      sub_23E87E458(&v170, &unk_27E35EB60, &unk_23E907DC0);
      v51 = v160;
      goto LABEL_42;
    }

    v174 = v170;
    v175 = v171;
    v176 = v172;
    v177 = v173;
    v51 = v160;
    if (!*(v161 + 16) || (v52 = sub_23E88C9D8(v192), (v53 & 1) == 0))
    {
LABEL_24:
      sub_23E8A295C(&v174);
LABEL_42:
      v106 = type metadata accessor for RenderLayerActionType;
      v107 = v51;
LABEL_46:
      sub_23E8F5CA4(v107, v106);
      return;
    }

    sub_23E8810DC(*(v50 + 56) + 40 * v52, &v170);
    sub_23E881028(&v170, v166);
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_23E8FA318(v166, &v170);
    if (v49)
    {
      __swift_destroy_boxed_opaque_existential_1(v166);
      goto LABEL_24;
    }

    v24 = 0;
    v110 = *(&v172 + 1);
    v111 = v173;
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    sub_23E8810DC(&v175, v167);
    v165 = v170;
    v29 = sub_23E8FEB0C(v167, v170, v110, v111);
    sub_23E87E458(v167, &unk_27E35F3E0, "t=");
    v112 = *(v29 + 2);
    if (v112)
    {
      v113 = 0;
      v114 = 32;
      v115 = v157;
      while (v113 < *(v29 + 2))
      {
        v116 = *&v29[v114];
        v117 = *&v29[v114 + 16];
        *(v185 + 9) = *&v29[v114 + 25];
        v184 = v116;
        v185[0] = v117;
        if (v115)
        {
          sub_23E8F5D04(&v184, v167);
          v115(&v184);
          sub_23E8F5D60(&v184);
        }

        ++v113;
        v114 += 48;
        if (v112 == v113)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v115 = v157;
LABEL_62:

    if (BYTE8(v174) == 1)
    {
      v118 = *(&v176 + 1);
      v119 = v177;
      __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
      v120 = (*(v119 + 56))(v118, v119);
      v121 = v120;
      LODWORD(v164) = DWORD1(v170);
      if ((BYTE8(v170) & 1) == 0)
      {
        v122 = v120 == 1 || v115 == 0;
        v64 = v158;
        if (!v122)
        {
          v123 = 0;
          v124 = 0x100000000;
          goto LABEL_76;
        }

LABEL_79:
        v130 = *(&v176 + 1);
        v131 = v177;
        __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
        v132 = (*(v131 + 40))(v130, v131);
        v134 = v133;
        v135 = *(&v172 + 1);
        v136 = v173;
        __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
        if (v132 == (*(v136 + 40))(v135, v136) && v134 == v137)
        {
        }

        else
        {
          v139 = sub_23E900E04();

          if ((v139 & 1) == 0 && v115)
          {
            v140 = *(&v172 + 1);
            v141 = v173;
            __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
            v142 = (*(v141 + 40))(v140, v141);
            v178[0] = v164;
            v178[1] = v142;
            v178[3] = 0;
            v178[4] = 0;
            v178[2] = v143;
            v179 = 5;
            v115(v178);
            __swift_destroy_boxed_opaque_existential_1(v166);

LABEL_88:
            v144 = v160;
            sub_23E8A295C(&v170);
            sub_23E8A295C(&v174);
            sub_23E8F5CA4(v144, type metadata accessor for RenderLayerActionType);
            goto LABEL_89;
          }
        }

LABEL_87:
        __swift_destroy_boxed_opaque_existential_1(v166);
        goto LABEL_88;
      }
    }

    else
    {
      LODWORD(v164) = DWORD1(v170);
      if ((BYTE8(v170) & 1) == 0)
      {
        v64 = v158;
        goto LABEL_79;
      }

      v121 = 1;
    }

    v64 = v158;
    v125 = *(&v172 + 1);
    v126 = v173;
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    if (v121 == (*(v126 + 56))(v125, v126) || v115 == 0)
    {
      goto LABEL_87;
    }

    v128 = *(&v172 + 1);
    v129 = v173;
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    v124 = (*(v129 + 56))(v128, v129) << 32;
    v123 = 1;
LABEL_76:
    v180 = v124 | v165;
    v181 = 0u;
    v182 = 0u;
    v183 = 2;
    v115(&v180);
    if (v123)
    {
      goto LABEL_87;
    }

    goto LABEL_79;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v54 = v163;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v55 = v165;
    v56 = v162;
    (*(v165 + 16))(v14, v192, v162);
    (*(v55 + 56))(v14, 0, 1, v56);
    sub_23E8F9798(v14, &v170);
    sub_23E87E458(v14, &unk_27E35F820, &qword_23E9064A0);
    if (*(&v172 + 1))
    {
      v174 = v170;
      v175 = v171;
      v176 = v172;
      v177 = v173;
      __swift_project_boxed_opaque_existential_1(v54, v54[3]);
      v57 = v174;
      LOBYTE(v166[0]) = 0;
      sub_23E8F9E38(v174, v167);
      if (*(&v168 + 1))
      {
        v170 = v167[0];
        v171 = v167[1];
        v172 = v168;
        v173 = v169;
        v58 = *__swift_project_boxed_opaque_existential_1(v54, v54[3]);
        swift_beginAccess();
        sub_23E8F40F8(v57, v14);
        swift_endAccess();
        sub_23E87E458(v14, &unk_27E35F820, &qword_23E9064A0);
        v59 = *(&v176 + 1);
        v60 = v177;
        __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
        (*(v60 + 24))(v59, v60);
        swift_beginAccess();
        sub_23E8F4264(v7, v167);
        swift_endAccess();
        (*(v165 + 8))(v7, v56);
        sub_23E87E458(v167, &unk_27E35EB60, &unk_23E907DC0);
        v61 = *(&v176 + 1);
        v62 = v177;
        __swift_project_boxed_opaque_existential_1(&v175, *(&v176 + 1));
        sub_23E8FEEDC(sub_23E8F5C34, v58, v61, v62);
        if (v157)
        {
          v188 = v57 | (v170 << 32);
          v189 = 0u;
          v190 = 0u;
          v191 = 1;
          v63 = v164;
          v157(&v188);
          v64 = v158;
          if (v63)
          {
            sub_23E8A295C(&v170);
            sub_23E8A295C(&v174);
            return;
          }
        }

        else
        {
          v64 = v158;
        }

        sub_23E8A295C(&v170);
        sub_23E8A295C(&v174);
        goto LABEL_89;
      }

      sub_23E8A295C(&v174);
      v108 = v167;
    }

    else
    {
      v108 = &v170;
    }

    sub_23E87E458(v108, &unk_27E35EB60, &unk_23E907DC0);
    return;
  }

  v154 = *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48)];
  v35 = v165;
  v36 = v29;
  v37 = v162;
  (*(v165 + 32))(v160, v36, v162);
  __swift_project_boxed_opaque_existential_1(v163, v163[3]);
  v38 = *(v35 + 16);
  v38(v14, v192, v37);
  (*(v35 + 56))(v14, 0, 1, v37);
  sub_23E8F9798(v14, &v170);
  sub_23E87E458(v14, &unk_27E35F820, &qword_23E9064A0);
  if (!*(&v172 + 1))
  {
    sub_23E87E458(&v170, &unk_27E35EB60, &unk_23E907DC0);
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v89 = sub_23E900764();
    __swift_project_value_buffer(v89, qword_27E367168);
    sub_23E8F5C3C(v192, v22, type metadata accessor for RenderLayerAction);
    sub_23E8810DC(v163, &v174);

    v90 = sub_23E900744();
    v91 = sub_23E900B14();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v167[0] = v192;
      *v92 = 136315650;
      sub_23E8DF634(&qword_27E35F5C8, MEMORY[0x277CC9628]);
      LODWORD(v163) = v91;
      v93 = v162;
      v94 = sub_23E900DD4();
      v96 = v95;
      sub_23E8F5CA4(v22, type metadata accessor for RenderLayerAction);
      v97 = sub_23E887B9C(v94, v96, v167);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E35ED70, &qword_23E905178);
      sub_23E8DF634(&qword_27E35E5B8, MEMORY[0x277CC9600]);
      v98 = sub_23E900804();
      v100 = sub_23E887B9C(v98, v99, v167);

      *(v92 + 14) = v100;
      *(v92 + 22) = 2048;
      v101 = __swift_project_boxed_opaque_existential_1(&v174, *(&v175 + 1));
      v102 = *v101;
      v103 = *(*v101 + 40);
      os_unfair_lock_lock(*(v103 + 16));
      swift_beginAccess();
      v104 = *(*(v102 + 32) + 16);
      os_unfair_lock_unlock(*(v103 + 16));
      __swift_destroy_boxed_opaque_existential_1(&v174);
      *(v92 + 24) = v104;
      _os_log_impl(&dword_23E879000, v90, v163, "No parent for %s in %s map has %ld nodes", v92, 0x20u);
      v105 = v192;
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v105, -1, -1);
      MEMORY[0x23EF18560](v92, -1, -1);

      (*(v165 + 8))(v160, v93);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v174);

      sub_23E8F5CA4(v22, type metadata accessor for RenderLayerAction);
      (*(v165 + 8))(v160, v162);
    }

    return;
  }

  v174 = v170;
  v175 = v171;
  v176 = v172;
  v177 = v173;
  v39 = v160;
  v40 = v161;
  if (!*(v161 + 16) || (v41 = sub_23E88C9D8(v160), (v42 & 1) == 0))
  {
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v76 = sub_23E900764();
    __swift_project_value_buffer(v76, qword_27E367168);
    v38(v10, v39, v37);

    v77 = sub_23E900744();
    v78 = sub_23E900B14();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v170 = v192;
      *v79 = 136315394;
      sub_23E8DF634(&qword_27E35F5C8, MEMORY[0x277CC9628]);
      LODWORD(v163) = v78;
      v80 = sub_23E900DD4();
      v82 = v81;
      v83 = *(v165 + 8);
      v83(v10, v37);
      v84 = sub_23E887B9C(v80, v82, &v170);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E35ED70, &qword_23E905178);
      sub_23E8DF634(&qword_27E35E5B8, MEMORY[0x277CC9600]);
      v85 = sub_23E900804();
      v87 = sub_23E887B9C(v85, v86, &v170);

      *(v79 + 14) = v87;
      _os_log_impl(&dword_23E879000, v77, v163, "Unexpected identifier %s in %s", v79, 0x16u);
      v88 = v192;
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v88, -1, -1);
      MEMORY[0x23EF18560](v79, -1, -1);

      sub_23E8A295C(&v174);
      v83(v160, v37);
    }

    else
    {

      v109 = *(v165 + 8);
      v109(v10, v37);
      sub_23E8A295C(&v174);
      v109(v39, v37);
    }

    return;
  }

  sub_23E8810DC(*(v40 + 56) + 40 * v41, &v170);
  sub_23E881028(&v170, v167);
  v43 = v163;
  __swift_project_boxed_opaque_existential_1(v163, v163[3]);
  v44 = v164;
  sub_23E8F8DBC(v167, &v170);
  if (v44)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v167);
    sub_23E8A295C(&v174);
    (*(v165 + 8))(v39, v37);
    return;
  }

  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_23E8FA5BC(&v170, &v174);
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v45 = sub_23E8FA998(v170, 3);
  if (!v45)
  {
    sub_23E8A295C(&v170);
    goto LABEL_18;
  }

  if (v157)
  {
    if (v154 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v154 <= 0x7FFFFFFF)
    {
      v186[0] = v45;
      v186[1] = v174 | (v154 << 32);
      memset(&v186[2], 0, 24);
      v187 = 0;
      v157(v186);
      goto LABEL_60;
    }

    __break(1u);
    return;
  }

LABEL_60:
  swift_unknownObjectRelease();
  sub_23E8A295C(&v170);
  __swift_destroy_boxed_opaque_existential_1(v167);
  sub_23E8A295C(&v174);
  (*(v165 + 8))(v39, v37);
  v64 = v158;
LABEL_89:
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v145 = sub_23E900764();
  __swift_project_value_buffer(v145, qword_27E367168);
  sub_23E8F5C3C(v192, v64, type metadata accessor for RenderLayerAction);
  v146 = sub_23E900744();
  v147 = sub_23E900B14();
  if (!os_log_type_enabled(v146, v147))
  {

    v106 = type metadata accessor for RenderLayerAction;
    v107 = v64;
    goto LABEL_46;
  }

  v148 = swift_slowAlloc();
  v149 = swift_slowAlloc();
  *&v174 = v149;
  *v148 = 136315138;
  sub_23E8F5C3C(v64, v155, type metadata accessor for RenderLayerAction);
  v150 = sub_23E9008D4();
  v152 = v151;
  sub_23E8F5CA4(v64, type metadata accessor for RenderLayerAction);
  v153 = sub_23E887B9C(v150, v152, &v174);

  *(v148 + 4) = v153;
  _os_log_impl(&dword_23E879000, v146, v147, "Action: %s", v148, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v149);
  MEMORY[0x23EF18560](v149, -1, -1);
  MEMORY[0x23EF18560](v148, -1, -1);
}

uint64_t sub_23E8F5C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8F5CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E8F5DB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  sub_23E900C64();
  v2 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_23E8F5FC8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8F5DB4(*v1 | (*(v1 + 4) << 32));
  *a1 = result;
  return result;
}

unint64_t sub_23E8F5FFC(uint64_t a1)
{
  result = sub_23E8F6024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F6024()
{
  result = qword_27E35F7D0;
  if (!qword_27E35F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7D0);
  }

  return result;
}

uint64_t sub_23E8F6078(uint64_t a1)
{
  sub_23E900F24();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_23E8810DC(v3, v5);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_23E900F04();
}

uint64_t sub_23E8F6110(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v7 = *&a2;
    v8 = *(&a1 + 1);
    v9 = *&a1;
    sub_23E900CB4();
    result = MEMORY[0x23EF17600](0x2861626772, 0xE500000000000000);
    v10 = v9 * 255.0;
    if (COERCE_INT(fabs(v9 * 255.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v10 > -9.2234e18)
    {
      if (v10 < 9.2234e18)
      {
        v11 = sub_23E900DD4();
        MEMORY[0x23EF17600](v11);

        result = MEMORY[0x23EF17600](44, 0xE100000000000000);
        v12 = v8 * 255.0;
        if (COERCE_INT(fabs(v8 * 255.0)) <= 2139095039)
        {
          if (v12 > -9.2234e18)
          {
            if (v12 < 9.2234e18)
            {
              v13 = sub_23E900DD4();
              MEMORY[0x23EF17600](v13);

              result = MEMORY[0x23EF17600](44, 0xE100000000000000);
              v14 = v7 * 255.0;
              if (COERCE_INT(fabs(v7 * 255.0)) <= 2139095039)
              {
                if (v14 > -9.2234e18)
                {
                  if (v14 < 9.2234e18)
                  {
                    v15 = sub_23E900DD4();
                    MEMORY[0x23EF17600](v15);

                    MEMORY[0x23EF17600](44, 0xE100000000000000);
                    sub_23E900AA4();
                    MEMORY[0x23EF17600](41, 0xE100000000000000);
                    return 0;
                  }

                  goto LABEL_30;
                }

LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                return result;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v3 = 0x694C6D756964654DLL;
  v4 = 0x67694C6172746C55;
  if (a1 != 2)
  {
    v4 = 0x7261446172746C55;
  }

  if (a1)
  {
    v3 = 0x61446D756964654DLL;
  }

  if (a1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return 0x302C302861626772;
  }
}

uint64_t sub_23E8F6440(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = a1;
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x6528726F68636E61, 0xED0000203A656764);
      v3 = 0xE700000000000000;
      v4 = 0x676E696461656CLL;
      v5 = 0xE400000000000000;
      v6 = 1952867692;
      if (v2 != 2)
      {
        v6 = 0x7468676972;
        v5 = 0xE500000000000000;
      }

      if (v2)
      {
        v4 = 0x676E696C69617274;
        v3 = 0xE800000000000000;
      }

      if (v2 <= 1u)
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      if (v2 <= 1u)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      MEMORY[0x23EF17600](v7, v8);

      v9 = 0x74657366666F202CLL;
      v10 = 0xEA0000000000203ALL;
    }

    else
    {
      v9 = 0x6E6F697463617266;
      v10 = 0xEB00000000286C61;
    }
  }

  else
  {
    v9 = 0x6574756C6F736261;
    v10 = 0xE900000000000028;
  }

  MEMORY[0x23EF17600](v9, v10);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F65F8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = a1;
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x6528726F68636E61, 0xED0000203A656764);
      if (v2)
      {
        v3 = 0x6D6F74746F62;
      }

      else
      {
        v3 = 7368564;
      }

      if (v2)
      {
        v4 = 0xE600000000000000;
      }

      else
      {
        v4 = 0xE300000000000000;
      }

      MEMORY[0x23EF17600](v3, v4);

      v5 = 0x74657366666F202CLL;
      v6 = 0xEA0000000000203ALL;
    }

    else
    {
      v5 = 0x6E6F697463617266;
      v6 = 0xEB00000000286C61;
    }
  }

  else
  {
    v5 = 0x6574756C6F736261;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x23EF17600](v5, v6);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F676C(uint64_t a1)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) != 2)
    {
      v1 = 0x7374694674616874;
      goto LABEL_8;
    }

    v1 = 0x6E6F697463617266;
    v2 = 0xEB00000000286C61;
  }

  else
  {
    if (!BYTE4(a1))
    {
      v1 = 0x6574756C6F736261;
LABEL_8:
      v2 = 0xE900000000000028;
      goto LABEL_9;
    }

    v1 = 0x2874657366666FLL;
    v2 = 0xE700000000000000;
  }

LABEL_9:
  MEMORY[0x23EF17600](v1, v2);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F6878()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 1.0 && v2 == 0.0 && v0[2] == 0.0 && v0[3] == 1.0 && v0[4] == 0.0 && v0[5] == 0.0)
  {
    return 0x797469746E656469;
  }

  if (v2 == 0.0 && v0[2] == 0.0)
  {
    if (v0[4] == 0.0 && v0[5] == 0.0)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x3A7828656C616373, 0xE900000000000020);
      sub_23E900AA4();
      MEMORY[0x23EF17600](0x203A79202CLL, 0xE500000000000000);
      goto LABEL_22;
    }

    if (v1 == 1.0 && v0[3] == 1.0)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x74616C736E617274, 0xEF203A78286E6F69);
      sub_23E900AA4();
      v7 = 0x203A79202CLL;
      v8 = 0xE500000000000000;
      goto LABEL_21;
    }
  }

  v4 = acosf(*v0);
  v5 = __sincosf_stret(v4);
  v6 = v5.__cosval == v1 && v5.__sinval == v2;
  if (!v6 || v0[2] != -v5.__sinval || v5.__cosval != v0[3] || v0[4] != 0.0 || v0[5] != 0.0)
  {
    sub_23E900CB4();
    MEMORY[0x23EF17600](540696872, 0xE400000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A62202CLL, 0xE500000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A63202CLL, 0xE500000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A64202CLL, 0xE500000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A7874202CLL, 0xE600000000000000);
    sub_23E900AA4();
    v7 = 0x203A7974202CLL;
    v8 = 0xE600000000000000;
LABEL_21:
    MEMORY[0x23EF17600](v7, v8);
    goto LABEL_22;
  }

  sub_23E900CB4();
  MEMORY[0x23EF17600](0xD000000000000012, 0x800000023E909800);
LABEL_22:
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

char *sub_23E8F6C48(uint64_t a1, void *a2)
{
  v118 = a2;
  v120 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F738, &unk_23E907A58);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v109 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v102 = (&v90 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v108 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v100 = &v90 - v10;
  MEMORY[0x28223BE20](v9);
  v101 = &v90 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v110 = *(v16 - 8);
  v111 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v106 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v90 - v20;
  MEMORY[0x28223BE20](v19);
  v92 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F720, &unk_23E907A40);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v105 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v99 = (&v90 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v114 = *(v26 - 8);
  v115 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v104 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v97 = &v90 - v30;
  MEMORY[0x28223BE20](v29);
  v98 = &v90 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F710, &qword_23E907A30);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v103 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v96 = (&v90 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v112 = *(v36 - 8);
  v113 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v94 = &v90 - v41;
  MEMORY[0x28223BE20](v40);
  v95 = &v90 - v42;
  v43 = type metadata accessor for ContainerContent.Child(0);
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v90 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v90 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v90 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v90 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F7D8, &unk_23E907D20);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v59 = &v90 - v58;
  v60 = &v90 + *(v57 + 56) - v58;
  sub_23E8891B4(v120, &v90 - v58, &qword_27E35F070, &qword_23E906130);
  sub_23E882004(v121, v60);
  if ((*(v44 + 48))(v59, 1, v43) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_23E882004(v59, v47);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v68 = &qword_27E35E438;
          v69 = &unk_23E907E20;
          v70 = v47;
          goto LABEL_27;
        }

        v71 = v101;
        sub_23E87E3F0(v47, v101, &qword_27E35E438, &unk_23E907E20);
        v72 = v100;
        sub_23E87E3F0(v60, v100, &qword_27E35E438, &unk_23E907E20);
        v73 = v102;
        sub_23E8891B4(v71, v102, &qword_27E35E438, &unk_23E907E20);
        (*(v116 + 56))(v73, 0, 1, v117);
        v74 = v119;
        v75 = sub_23E8EA874(v73, v118);
        if (!v74)
        {
          v60 = v75;
          sub_23E87E458(v73, &qword_27E35F738, &unk_23E907A58);
          v88 = &qword_27E35E438;
          v89 = &unk_23E907E20;
          goto LABEL_37;
        }

        sub_23E87E458(v73, &qword_27E35F738, &unk_23E907A58);
        v76 = &qword_27E35E438;
        v77 = &unk_23E907E20;
      }

      else
      {
        sub_23E882004(v59, v55);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v68 = &qword_27E35E430;
          v69 = &unk_23E902C80;
          v70 = v55;
          goto LABEL_27;
        }

        v71 = v95;
        sub_23E87E3F0(v55, v95, &qword_27E35E430, &unk_23E902C80);
        v72 = v94;
        sub_23E87E3F0(v60, v94, &qword_27E35E430, &unk_23E902C80);
        v81 = v96;
        sub_23E8891B4(v71, v96, &qword_27E35E430, &unk_23E902C80);
        (*(v112 + 56))(v81, 0, 1, v113);
        v82 = v119;
        v83 = sub_23E8E8934(v81, v118);
        if (!v82)
        {
          v60 = v83;
          sub_23E87E458(v81, &qword_27E35F710, &qword_23E907A30);
          v88 = &qword_27E35E430;
          v89 = &unk_23E902C80;
          goto LABEL_37;
        }

        sub_23E87E458(v81, &qword_27E35F710, &qword_23E907A30);
        v76 = &qword_27E35E430;
        v77 = &unk_23E902C80;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23E882004(v59, v50);
        if (swift_getEnumCaseMultiPayload())
        {
          v68 = &unk_27E35E630;
          v69 = &qword_23E903300;
          v70 = v50;
LABEL_27:
          sub_23E87E458(v70, v68, v69);
          sub_23E8F7ABC();
          swift_allocError();
          swift_willThrow();
          sub_23E8A2434(v59);
LABEL_31:
          sub_23E8A2434(v60);
          return v60;
        }

        v71 = v92;
        sub_23E87E3F0(v50, v92, &unk_27E35E630, &qword_23E903300);
        v72 = v91;
        sub_23E87E3F0(v60, v91, &unk_27E35E630, &qword_23E903300);
        v84 = v93;
        sub_23E8891B4(v71, v93, &unk_27E35E630, &qword_23E903300);
        (*(v110 + 56))(v84, 0, 1, v111);
        v85 = v119;
        v86 = sub_23E8E9EA4(v84, v118);
        if (v85)
        {
          sub_23E87E458(v84, &unk_27E35F3D0, &qword_23E905770);
          v76 = &unk_27E35E630;
          v77 = &qword_23E903300;
          goto LABEL_30;
        }

        v60 = v86;
        sub_23E87E458(v84, &unk_27E35F3D0, &qword_23E905770);
        v88 = &unk_27E35E630;
        v89 = &qword_23E903300;
LABEL_37:
        sub_23E87E458(v72, v88, v89);
        sub_23E87E458(v71, v88, v89);
        sub_23E8A2434(v59);
        return v60;
      }

      sub_23E882004(v59, v53);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v68 = &unk_27E35E440;
        v69 = &unk_23E902C90;
        v70 = v53;
        goto LABEL_27;
      }

      v71 = v98;
      sub_23E87E3F0(v53, v98, &unk_27E35E440, &unk_23E902C90);
      v72 = v97;
      sub_23E87E3F0(v60, v97, &unk_27E35E440, &unk_23E902C90);
      v78 = v99;
      sub_23E8891B4(v71, v99, &unk_27E35E440, &unk_23E902C90);
      (*(v114 + 56))(v78, 0, 1, v115);
      v79 = v119;
      v80 = sub_23E8E939C(v78, v118);
      if (!v79)
      {
        v60 = v80;
        sub_23E87E458(v78, &unk_27E35F720, &unk_23E907A40);
        v88 = &unk_27E35E440;
        v89 = &unk_23E902C90;
        goto LABEL_37;
      }

      sub_23E87E458(v78, &unk_27E35F720, &unk_23E907A40);
      v76 = &unk_27E35E440;
      v77 = &unk_23E902C90;
    }

LABEL_30:
    sub_23E87E458(v72, v76, v77);
    sub_23E87E458(v71, v76, v77);
    v60 = v59;
    goto LABEL_31;
  }

  v61 = swift_getEnumCaseMultiPayload();
  if (v61 > 1)
  {
    if (v61 == 2)
    {
      v62 = &qword_27E35E438;
      v63 = &unk_23E907E20;
      v39 = v108;
      sub_23E87E3F0(v60, v108, &qword_27E35E438, &unk_23E907E20);
      v64 = v109;
      (*(v116 + 56))(v109, 1, 1, v117);
      v60 = sub_23E8EA874(v64, v118);
      v65 = &qword_27E35F738;
      v66 = &unk_23E907A58;
    }

    else
    {
      v62 = &qword_27E35E430;
      v63 = &unk_23E902C80;
      sub_23E87E3F0(v60, v39, &qword_27E35E430, &unk_23E902C80);
      v64 = v103;
      (*(v112 + 56))(v103, 1, 1, v113);
      v60 = sub_23E8E8934(v64, v118);
      v65 = &qword_27E35F710;
      v66 = &qword_23E907A30;
    }
  }

  else if (v61)
  {
    v62 = &unk_27E35E440;
    v63 = &unk_23E902C90;
    v39 = v104;
    sub_23E87E3F0(v60, v104, &unk_27E35E440, &unk_23E902C90);
    v64 = v105;
    (*(v114 + 56))(v105, 1, 1, v115);
    v60 = sub_23E8E939C(v64, v118);
    v65 = &unk_27E35F720;
    v66 = &unk_23E907A40;
  }

  else
  {
    v62 = &unk_27E35E630;
    v63 = &qword_23E903300;
    v39 = v106;
    sub_23E87E3F0(v60, v106, &unk_27E35E630, &qword_23E903300);
    v64 = v107;
    (*(v110 + 56))(v107, 1, 1, v111);
    v60 = sub_23E8E9EA4(v64, v118);
    v65 = &unk_27E35F3D0;
    v66 = &qword_23E905770;
  }

  sub_23E87E458(v64, v65, v66);
  sub_23E87E458(v39, v62, v63);
  return v60;
}

unint64_t sub_23E8F7ABC()
{
  result = qword_27E35F7E0;
  if (!qword_27E35F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7E0);
  }

  return result;
}

uint64_t sub_23E8F7B10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v10[2] = *(a1 + 32);
    v11 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_23E8FC7FC(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_23E9006D4();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_23E87E458(a1, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8F4264(a2, v10);
    v8 = sub_23E9006D4();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_23E87E458(v10, &unk_27E35EB60, &unk_23E907DC0);
  }

  return result;
}

uint64_t sub_23E8F7C3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23E881028(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_23E8FC9CC(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_23E9006D4();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_23E87E458(a1, &unk_27E35F3E0, "t=");
    sub_23E8FB8B0(a2, v9);
    v7 = sub_23E9006D4();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_23E87E458(v9, &unk_27E35F3E0, "t=");
  }

  return result;
}

uint64_t sub_23E8F7D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F820, &qword_23E9064A0);
    v13 = sub_23E88CAE8(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23E8D0688();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_23E8FC1AC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_23E8FCBA8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_23E8F7FA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F820, &qword_23E9064A0);
    sub_23E8F435C(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_23E87E458(v7, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23E8FCD10(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_23E8F8198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v62 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F870, &unk_23E907E10);
  MEMORY[0x28223BE20](v76);
  v8 = (&v62 - v7);
  v79 = type metadata accessor for ContainerContent.Child(0);
  v75 = *(v79 - 8);
  v9 = MEMORY[0x28223BE20](v79);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v74 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v77 = sub_23E900734();
  v64 = *(v77 - 8);
  v18 = MEMORY[0x28223BE20](v77);
  v81 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v69 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - v27;
  v29 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_23E88F32C(MEMORY[0x277D84F90]);
  *(v2 + 24) = sub_23E88F508(v29);
  *(v2 + 32) = sub_23E88F714(v29);
  type metadata accessor for UnfairLock();
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v2 + 40) = v30;
  *(v2 + 48) = 10;
  v32 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  v33 = *(v5 + 56);
  v68 = v5 + 56;
  v67 = v33;
  v33(v2 + OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree, 1, 1, v4);
  swift_beginAccess();
  sub_23E8FD2CC(a1, v2 + v32);
  swift_endAccess();
  sub_23E8891B4(a1, v28, &unk_27E35F3D0, &qword_23E905770);
  v34 = *(v5 + 48);
  v71 = v4;
  if (v34(v28, 1, v4) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F3D0, &qword_23E905770);
    v35 = v28;
    v36 = &unk_27E35F3D0;
    v37 = &qword_23E905770;
LABEL_26:
    sub_23E87E458(v35, v36, v37);
    return v2;
  }

  sub_23E900714();
  sub_23E8891B4(v28, v17, &unk_27E35E630, &qword_23E903300);
  swift_storeEnumTagMultiPayload();
  sub_23E882004(v17, v74);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = v17;
  v73 = v23;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = &qword_27E35E438;
      v45 = &unk_23E907E20;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v46 = sub_23E8A25C4();
    }

    else
    {
      v44 = &qword_27E35E430;
      v45 = &unk_23E902C80;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v46 = sub_23E8A2490();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v83 = v71;
      v84 = sub_23E8A2828();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      v41 = &unk_27E35E630;
      v42 = &qword_23E903300;
      v43 = v74;
      goto LABEL_11;
    }

    v44 = &unk_27E35E440;
    v45 = &unk_23E902C90;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v46 = sub_23E8A26F8();
  }

  v84 = v46;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v43 = v74;
  v41 = v44;
  v42 = v45;
LABEL_11:
  sub_23E87E3F0(v43, boxed_opaque_existential_1, v41, v42);
  sub_23E8F8DBC(v82, v85);
  v74 = v2;
  v63 = a1;
  __swift_destroy_boxed_opaque_existential_1(v82);
  sub_23E8A295C(v85);
  sub_23E8A2434(v39);
  v47 = v78;
  v48 = *(v71 + 36);
  v66 = v28;
  v49 = *&v28[v48];
  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_25:
    sub_23E87E458(v63, &unk_27E35F3D0, &qword_23E905770);
    (*(v64 + 8))(v73, v77);
    v2 = v74;

    v36 = &unk_27E35E630;
    v37 = &qword_23E903300;
    v35 = v66;
    goto LABEL_26;
  }

  v51 = 0;
  v72 = (v64 + 8);
  v65 = v8;
  while (v51 < *(v49 + 16))
  {
    v52 = v49 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51;
    v23 = *(v76 + 48);
    *v8 = v51;
    sub_23E882004(v52, v8 + v23);
    sub_23E882004(v8 + v23, v13);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23E8A2434(v13);
      sub_23E900724();
      sub_23E882004(v8 + v23, v80);
      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 1)
      {
        if (v53 == 2)
        {
          v54 = &qword_27E35E438;
          v55 = &unk_23E907E20;
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
          v56 = sub_23E8A25C4();
        }

        else
        {
          v54 = &qword_27E35E430;
          v55 = &unk_23E902C80;
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
          v56 = sub_23E8A2490();
        }
      }

      else
      {
        v54 = &unk_27E35E630;
        v55 = &qword_23E903300;
        if (v53)
        {
          v54 = &unk_27E35E440;
          v55 = &unk_23E902C90;
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
          v56 = sub_23E8A26F8();
        }

        else
        {
          v83 = v71;
          v56 = sub_23E8A2828();
        }
      }

      v84 = v56;
      v60 = __swift_allocate_boxed_opaque_existential_1(v82);
      sub_23E87E3F0(v80, v60, v54, v55);
      sub_23E8F8DBC(v82, v85);
      sub_23E8A295C(v85);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v47 = v78;
      (*v72)(v81, v77);
    }

    else
    {
      v57 = v50;
      v23 = v70;
      sub_23E87E3F0(v13, v70, &unk_27E35E630, &qword_23E903300);
      v58 = v69;
      sub_23E8891B4(v66, v69, &unk_27E35E630, &qword_23E903300);
      v67(v58, 0, 1, v71);
      sub_23E900724();
      v47 = v78;
      v59 = v74;

      sub_23E89F4FC(v58, v47, v23, v59);
      (*v72)(v47, v77);
      sub_23E87E458(v58, &unk_27E35F3D0, &qword_23E905770);
      sub_23E87E458(v23, &unk_27E35E630, &qword_23E903300);
      v50 = v57;
      v8 = v65;
    }

    ++v51;
    sub_23E87E458(v8, &unk_27E35F870, &unk_23E907E10);
    if (v50 == v51)
    {
      goto LABEL_25;
    }
  }

  __break(1u);

  (*v72)(v47, v77);
  sub_23E87E458(v50, &unk_27E35F3D0, &qword_23E905770);
  sub_23E87E458(v23, &unk_27E35E630, &qword_23E903300);

  result = sub_23E87E458(v65, &unk_27E35F870, &unk_23E907E10);
  __break(1u);
  return result;
}

void sub_23E8F8C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(a3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = &qword_27E35E438;
      v10 = &unk_23E907E20;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v11 = sub_23E8A25C4();
    }

    else
    {
      v9 = &qword_27E35E430;
      v10 = &unk_23E902C80;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v11 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = &unk_27E35E440;
    v10 = &unk_23E902C90;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v11 = sub_23E8A26F8();
  }

  else
  {
    v9 = &unk_27E35E630;
    v10 = &qword_23E903300;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v11 = sub_23E8A2828();
  }

  v15 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_23E87E3F0(v7, boxed_opaque_existential_1, v9, v10);
  sub_23E8F8DBC(v13, v16);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_23E8A295C(v16);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_23E8F8DBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40[-v9];
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = *(v11 + 24);
  v14 = v11;
  v15 = v49;
  v13(v12, v14);
  v18 = *(v5 + 56);
  v16 = v5 + 56;
  v17 = v18;
  v18(v10, 0, 1, v4);
  sub_23E8F9798(v10, v46);
  result = sub_23E87E458(v10, &unk_27E35F820, &qword_23E9064A0);
  if (*(&v47 + 1))
  {
    v20 = v46[1];
    *a2 = v46[0];
    *(a2 + 16) = v20;
    *(a2 + 32) = v47;
    *(a2 + 48) = v48;
    return result;
  }

  v44 = v16;
  v45 = v4;
  v42 = v7;
  v43 = a2;
  result = sub_23E87E458(v46, &unk_27E35EB60, &unk_23E907DC0);
  v21 = *(v15 + 48);
  v22 = (v21 + 1);
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v15;
  *(v15 + 48) = v22;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 24))(v24, v25);
  v17(v10, 0, 1, v45);
  swift_beginAccess();
  sub_23E8F7D58(v10, v22);
  swift_endAccess();
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  result = (*(v27 + 32))(v26, v27);
  if (result == 3)
  {
    v41 = v22;
    v28 = *(v23 + 48);
    v29 = (v28 + 1);
    if (!__OFADD__(v28, 1))
    {
      *(v23 + 48) = v29;
      v30 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v30);
      (*(v22 + 24))(v30, v22);
      v17(v10, 0, 1, v45);
      swift_beginAccess();
      sub_23E8F7D58(v10, v29);
      swift_endAccess();
      LODWORD(v22) = v41;
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = (*(v32 + 32))(v31, v32);
  if (v33 == 3)
  {
    v34 = *(v23 + 48);
  }

  else
  {
    v34 = 0;
  }

  v36 = v42;
  v35 = v43;
  v37 = v33 != 3;
  sub_23E8810DC(a1, v43 + 16);
  *v35 = v22;
  *(v35 + 4) = v34;
  *(v35 + 8) = v37;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  (*(v39 + 24))(v38, v39);
  sub_23E88FE10(v35, v46);
  swift_beginAccess();
  sub_23E8F7B10(v46, v36);
  return swift_endAccess();
}

id sub_23E8F91D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v43 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  v14 = sub_23E8C8AC0();
  if ((*(a1 + 8) & 1) == 0)
  {
    if (a2 != 1)
    {
      v47 = sub_23E8C8ECC();
      *&v52[0] = MEMORY[0x277D84F90];
      if (v47)
      {
        v33 = swift_unknownObjectRetain();
        MEMORY[0x23EF17660](v33);
        if (*((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23E9009D4();
        }

        sub_23E9009F4();
      }

      sub_23E87E458(&v47, &unk_27E35F838, &unk_23E907DD8);
      goto LABEL_28;
    }

    return v14;
  }

  v44 = v7;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1((a1 + 16), v15);
  v17 = (*(v16 + 64))(v15, v16);
  if (!v17)
  {
    return v14;
  }

  v57 = MEMORY[0x277D84F90];
  v18 = *(v17 + 16);
  if (v18)
  {
    v38 = v14;
    v39 = v17;
    v19 = v17 + 32;
    v45 = (v5 + 56);
    v20 = (v5 + 48);
    v42 = (v5 + 32);
    v41 = (v5 + 8);
    v40 = MEMORY[0x277D84F90];
    v21 = &qword_23E9064A0;
    while (1)
    {
      sub_23E8810DC(v19, &v54);
      v22 = v21;
      v23 = v55;
      v24 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v55);
      v25 = v23;
      v21 = v22;
      (*(v24 + 24))(v25, v24);
      (*v45)(v13, 0, 1, v4);
      sub_23E8891B4(v13, v11, &unk_27E35F820, v22);
      if ((*v20)(v11, 1, v4) == 1)
      {
        sub_23E87E458(v13, &unk_27E35F820, v22);
        sub_23E87E458(v11, &unk_27E35F820, v22);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0;
      }

      else
      {
        v26 = v44;
        (*v42)(v44, v11, v4);
        v27 = v46;
        swift_beginAccess();
        v28 = *(v27 + 32);
        if (*(v28 + 16) && (v29 = sub_23E88C9D8(v26), (v30 & 1) != 0))
        {
          sub_23E88FE10(*(v28 + 56) + 56 * v29, &v48);
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
        }

        swift_endAccess();
        (*v41)(v26, v4);
        v21 = v22;
        sub_23E87E458(v13, &unk_27E35F820, v22);
        if (*(&v50 + 1))
        {
          v52[0] = v48;
          v52[1] = v49;
          v52[2] = v50;
          v53 = v51;
          v31 = sub_23E8F91D4(v52, v43);
          sub_23E8A295C(v52);
          v32 = __swift_destroy_boxed_opaque_existential_1(&v54);
          if (v31)
          {
            MEMORY[0x23EF17660](v32);
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_23E9009D4();
            }

            sub_23E9009F4();
            v40 = v57;
            v21 = v22;
          }

          goto LABEL_8;
        }
      }

      sub_23E87E458(&v48, &unk_27E35EB60, &unk_23E907DC0);
      __swift_destroy_boxed_opaque_existential_1(&v54);
LABEL_8:
      v19 += 40;
      if (!--v18)
      {

        v14 = v38;
        v34 = v40;
        if (!(v40 >> 62))
        {
          goto LABEL_27;
        }

LABEL_30:
        if (!sub_23E900D34())
        {
          goto LABEL_31;
        }

LABEL_28:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
        v35 = sub_23E9009A4();

        [v14 setChildren_];

        return v14;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_31:

  return v14;
}

uint64_t sub_23E8F9798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E8891B4(a1, v7, &unk_27E35F820, &qword_23E9064A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_23E87E458(v7, &unk_27E35F820, &qword_23E9064A0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    swift_beginAccess();
    v13 = *(v2 + 32);
    if (*(v13 + 16) && (v14 = sub_23E88C9D8(v11), (v15 & 1) != 0))
    {
      sub_23E88FE10(*(v13 + 56) + 56 * v14, a2);
    }

    else
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    swift_endAccess();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_23E8F99AC()
{

  sub_23E87E458(v0 + OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree, &unk_27E35F3D0, &qword_23E905770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteInspectorNodeRegistry(uint64_t a1)
{
  result = qword_27E35F800;
  if (!qword_27E35F800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E8F9A94(uint64_t a1)
{
  sub_23E8F0048(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23E8F9B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_9:
    result = sub_23E87E458(v10, &unk_27E35F820, &qword_23E9064A0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  swift_beginAccess();
  v15 = *(v2 + 16);
  if (*(v15 + 16))
  {
    v16 = sub_23E88CAE8(a1);
    if (v17)
    {
      (*(v12 + 16))(v10, *(v15 + 56) + *(v12 + 72) * v16, v11);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v12 + 56);
  v19(v10, v18, 1, v11);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  (*(v12 + 32))(v14, v10, v11);
  (*(v12 + 16))(v8, v14, v11);
  v19(v8, 0, 1, v11);
  sub_23E8F9798(v8, a2);
  sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
  return (*(v12 + 8))(v14, v11);
}

double sub_23E8F9E38@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_23E8F9B54(a1 | ((HIDWORD(a1) & 1) << 32), v12);
  if (*(&v13 + 1))
  {
    v15 = v12[0];
    v16[0] = v12[1];
    v16[1] = v13;
    v7 = v14;
    v17 = v14;
    v8 = *(&v13 + 1);
    __swift_project_boxed_opaque_existential_1(v16, *(&v13 + 1));
    (*(v7 + 24))(v8, v7);
    v9 = sub_23E9006D4();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_23E8F9FD4(v6, a2);
    sub_23E87E458(v6, &unk_27E35F820, &qword_23E9064A0);
    sub_23E8A295C(&v15);
  }

  else
  {
    sub_23E87E458(v12, &unk_27E35EB60, &unk_23E907DC0);
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_23E8F9FD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = sub_23E9006D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  sub_23E8891B4(a1, v9, &unk_27E35F820, &qword_23E9064A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23E87E458(v9, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    v28 = *(v11 + 32);
    v28(v19, v9, v10);
    swift_beginAccess();
    v20 = *(v2 + 24);
    if (*(v20 + 16))
    {
      v21 = sub_23E88C9D8(v19);
      if (v22)
      {
        v23 = *(v11 + 16);
        v23(v14, *(v20 + 56) + *(v11 + 72) * v21, v10);
        v28(v17, v14, v10);
        swift_endAccess();
        v24 = v29;
        v23(v29, v17, v10);
        (*(v11 + 56))(v24, 0, 1, v10);
        sub_23E8F9798(v24, a2);
        sub_23E87E458(v24, &unk_27E35F820, &qword_23E9064A0);
        v25 = *(v11 + 8);
        v25(v17, v10);
        v25(v19, v10);
        return result;
      }
    }

    swift_endAccess();
    (*(v11 + 8))(v19, v10);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_23E8FA318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  (*(v5 + 56))(v10, 0, 1, v4);
  sub_23E8F9798(v10, v21);
  sub_23E87E458(v10, &unk_27E35F820, &qword_23E9064A0);
  if (*(&v22 + 1))
  {
    v24[0] = v21[0];
    v24[1] = v21[1];
    v24[2] = v22;
    v25 = v23;
    v13 = v21[0];
    sub_23E8810DC(a1, a2 + 16);
    v14 = DWORD1(v24[0]);
    v15 = BYTE8(v24[0]);
    *a2 = v13;
    *(a2 + 4) = v14;
    *(a2 + 8) = v15;
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 24))(v16, v17);
    sub_23E88FE10(a2, v21);
    swift_beginAccess();
    sub_23E8F7B10(v21, v7);
    swift_endAccess();
    return sub_23E8A295C(v24);
  }

  else
  {
    sub_23E87E458(v21, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8A9420();
    swift_allocError();
    *v19 = 6;
    return swift_willThrow();
  }
}

uint64_t sub_23E8FA5BC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5 - 8];
  v7 = sub_23E9006D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *a1;
  v21[0] = 0;
  sub_23E8F9B54(v11, v21);
  v12 = v22;
  result = sub_23E87E458(v21, &unk_27E35EB60, &unk_23E907DC0);
  if (v12)
  {
    v14 = *a2;
    v21[0] = 0;
    sub_23E8F9B54(v14, v21);
    v15 = v22;
    result = sub_23E87E458(v21, &unk_27E35EB60, &unk_23E907DC0);
    if (v15)
    {
      v16 = a1[5];
      v17 = a1[6];
      __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
      (*(v17 + 24))(v16, v17);
      v18 = a2[5];
      v19 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v18);
      (*(v19 + 24))(v18, v19);
      (*(v8 + 56))(v6, 0, 1, v7);
      swift_beginAccess();
      sub_23E8F7FA8(v6, v10);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_23E8FA7F8(void *a1, uint64_t a2)
{
  v3 = sub_23E9006D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  swift_beginAccess();
  sub_23E8F435C(v6, v9);
  swift_endAccess();
  (*(v4 + 8))(v6, v3);
  return sub_23E87E458(v9, &unk_27E35F820, &qword_23E9064A0);
}

id sub_23E8FA998(uint64_t a1, uint64_t a2)
{
  LOBYTE(v17) = 0;
  sub_23E8F9B54(a1, v14);
  if (*(&v15 + 1))
  {
    v17 = v14[0];
    v18 = v14[1];
    v19 = v15;
    v20 = v16;
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367168);
    sub_23E882260(0xD000000000000065, 0x800000023E909890, 0xD00000000000001FLL, 0x800000023E909900);
    if ((BYTE8(v17) & 1) != 0 || DWORD1(v17) != a1)
    {
      v12 = sub_23E8F91D4(&v17, a2);
    }

    else
    {
      v5 = objc_opt_self();
      v6 = *(&v19 + 1);
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      (*(v7 + 48))(v6, v7);
      v8 = sub_23E900854();

      v9 = *(&v19 + 1);
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      (*(v10 + 40))(v9, v10);
      v11 = sub_23E900854();

      v12 = [v5 nodeWithIdentifier:a1 name:v8 type:3 value:v11];
    }

    sub_23E8A295C(&v17);
  }

  else
  {
    sub_23E87E458(v14, &unk_27E35EB60, &unk_23E907DC0);
    return 0;
  }

  return v12;
}

id sub_23E8FABC4()
{
  v1 = sub_23E9006D4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v31[-2] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31[-2] - v6;
  v8 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  if ((*(*(v9 - 8) + 48))(v0 + v8, 1, v9))
  {
    goto LABEL_12;
  }

  (*(v2 + 16))(v5, v0 + v8, v1);
  (*(v2 + 32))(v7, v5, v1);
  swift_beginAccess();
  v10 = *(v0 + 32);
  if (*(v10 + 16) && (v11 = sub_23E88C9D8(v7), (v12 & 1) != 0))
  {
    sub_23E88FE10(*(v10 + 56) + 56 * v11, v32);
    if (*(&v33 + 1))
    {
      sub_23E88FE10(v32, v31);
      sub_23E87E458(v32, &unk_27E35EB60, &unk_23E907DC0);
      swift_endAccess();
      v13 = v31[0];
      sub_23E8A295C(v31);
      v14 = sub_23E8FA998(v13, 3);
      if (v14)
      {
        v15 = v14;
        if (qword_27E35E188 != -1)
        {
          swift_once();
        }

        v16 = sub_23E900764();
        __swift_project_value_buffer(v16, qword_27E367168);
        sub_23E882260(0xD000000000000065, 0x800000023E909890, 0x75636F44656B616DLL, 0xEE002928746E656DLL);
        v17 = objc_opt_self();
        v18 = sub_23E900854();
        v19 = sub_23E900854();
        v20 = [v17 nodeWithIdentifier:0 name:v18 type:9 value:v19];

        [v20 setNodeType_];
        v21 = sub_23E900854();
        [v20 setDocumentURL_];

        v22 = sub_23E900854();
        [v20 setXmlVersion_];

        [v20 setChildNodeCount_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F848, &unk_23E907DE8);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_23E907D30;
        *(v23 + 32) = v15;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
        v24 = sub_23E9009A4();

        [v20 setChildren_];
        swift_unknownObjectRelease();

        (*(v2 + 8))(v7, v1);
        return v20;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = 0;
    v33 = 0u;
    memset(v32, 0, sizeof(v32));
  }

  sub_23E87E458(v32, &unk_27E35EB60, &unk_23E907DC0);
  swift_endAccess();
LABEL_11:
  (*(v2 + 8))(v7, v1);
LABEL_12:
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v26 = sub_23E900764();
  __swift_project_value_buffer(v26, qword_27E367168);
  v27 = sub_23E900744();
  v28 = sub_23E900B04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23E879000, v27, v28, "Failed to get root node", v29, 2u);
    MEMORY[0x23EF18560](v29, -1, -1);
  }

  return 0;
}

void sub_23E8FB110(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v52 = a3;
  v54 = a2;
  v6 = sub_23E900734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  v61[0] = sub_23E8901F8(MEMORY[0x277D84F90]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v17 = *(v16 - 8);
  v49 = *(v17 + 56);
  v48 = v17 + 56;
  v49(v15, 1, 1, v16);
  sub_23E900714();
  sub_23E89FC80(v15, v9, a1, v61);
  v18 = v9;
  v19 = v54;
  (*(v7 + 8))(v18, v6);
  v47 = v15;
  sub_23E87E458(v15, &unk_27E35F3D0, &qword_23E905770);
  v20 = v61[0];
  v21 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  sub_23E8891B4(v19 + v21, v13, &unk_27E35F3D0, &qword_23E905770);
  v22 = sub_23E8E9EA4(v13, a1);
  sub_23E87E458(v13, &unk_27E35F3D0, &qword_23E905770);
  if (v4)
  {
    goto LABEL_2;
  }

  v62 = v20;
  v51 = v16;
  v23 = v22[2];
  if (!v23)
  {

LABEL_2:

    return;
  }

  v24 = a1;
  v45 = v21;
  if (qword_27E35E188 != -1)
  {
LABEL_19:
    swift_once();
  }

  v25 = sub_23E900764();
  v26 = __swift_project_value_buffer(v25, qword_27E367168);

  v44[1] = v26;
  v27 = sub_23E900744();
  v28 = sub_23E900B14();
  v29 = os_log_type_enabled(v27, v28);
  v46 = v24;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v22[2];

    _os_log_impl(&dword_23E879000, v27, v28, "Merging %ld actions", v30, 0xCu);
    MEMORY[0x23EF18560](v30, -1, -1);
  }

  else
  {
  }

  v31 = v51;
  v32 = 0;
  v24 = &qword_27E35F5C0;
  v33 = (v22 + 4);
  v50 = v22;
  do
  {
    if (v32 >= v22[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_23E8810DC(v33, v61);
    sub_23E8810DC(v61, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F858, &qword_23E907DF8);
    if (swift_dynamicCast())
    {
      sub_23E881028(v55, v58);
      v35 = v59;
      v34 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v57[3] = type metadata accessor for RemoteInspectorNodeRegistry(0);
      v57[4] = &off_28511FF10;
      v57[0] = v54;
      v36 = *(v34 + 16);

      v36(v57, v62, v52, v53, v35, v34);
      __swift_destroy_boxed_opaque_existential_1(v61);
      __swift_destroy_boxed_opaque_existential_1(v57);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v22 = v50;
      v31 = v51;
    }

    else
    {
      v56 = 0;
      memset(v55, 0, sizeof(v55));
      __swift_destroy_boxed_opaque_existential_1(v61);
      sub_23E87E458(v55, &unk_27E35F860, &unk_23E907E00);
    }

    ++v32;
    v33 += 40;
  }

  while (v23 != v32);

  v37 = v47;
  sub_23E8891B4(v46, v47, &unk_27E35E630, &qword_23E903300);
  v49(v37, 0, 1, v31);
  v38 = v54;
  v39 = v45;
  swift_beginAccess();
  sub_23E8F1354(v37, v38 + v39);
  swift_endAccess();

  v40 = sub_23E900744();
  v41 = sub_23E900B14();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    v43 = v22[2];

    *(v42 + 4) = v43;

    _os_log_impl(&dword_23E879000, v40, v41, "Merged %ld actions", v42, 0xCu);
    MEMORY[0x23EF18560](v42, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

double sub_23E8FB7F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23E88CA70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8CFE28();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_23E8FB994(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_23E8FB8B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_23E88C9D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0400();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_23E9006D4();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_23E881028((*(v9 + 56) + 40 * v7), a2);
    sub_23E8FBE88(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

char *sub_23E8FB994(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E900C34() + 1) & ~v5;
    do
    {
      sub_23E900EB4();

      sub_23E900904();
      v9 = sub_23E900F14();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v15 + 72 || v3 != v6)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23E8FBB5C(int64_t a1, uint64_t a2)
{
  v43 = sub_23E9006D4();
  v4 = *(v43 - 8);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v44 = v6;
    v12 = sub_23E900C34();
    v13 = v43;
    v6 = v44;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v40 = (v12 + 1) & v11;
    v41 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    v39 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v42;
      v21 = v14;
      v22 = v15;
      v41(v42, *(v6 + 48) + v17 * v10, v13);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23E900814();
      result = (*v38)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v6 = v44;
          v27 = *(v44 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v44;
            v17 = v18;
            v14 = v21;
            v8 = v39;
          }

          else
          {
            v8 = v39;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v44;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 56 * a1;
          v30 = (v28 + 56 * v10);
          if (a1 != v10 || v29 >= v30 + 56)
          {
            v31 = *v30;
            v32 = v30[1];
            v33 = v30[2];
            *(v29 + 48) = *(v30 + 6);
            *(v29 + 16) = v32;
            *(v29 + 32) = v33;
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v39;
      v17 = v18;
      v6 = v44;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v6 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v36;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_23E8FBE88(int64_t a1, uint64_t a2)
{
  v42 = sub_23E9006D4();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_23E900C34();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23E900814();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_23E8FC1AC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E900C34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x23EF17B70](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_23E9006D4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23E8FC35C(int64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_23E900C34();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_23E900814();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23E8FC65C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23E88CA70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23E88D584(v16, a4 & 1);
      v11 = sub_23E88CA70(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23E900E44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E8CFE28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_23E8FD270(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_23E8FC7FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23E88C9D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23E8D0164();
      goto LABEL_7;
    }

    sub_23E88DB90(v17, a3 & 1);
    v23 = sub_23E88C9D8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23E8FCEF4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 56 * v14;

  return sub_23E8FCFC8(a1, v21);
}

uint64_t sub_23E8FC9CC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23E88C9D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23E8D0400();
      goto LABEL_7;
    }

    sub_23E88DF94(v17, a3 & 1);
    v23 = sub_23E88C9D8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23E8FD024(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_23E881028(a1, v21);
}

uint64_t sub_23E8FCBA8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23E88CAE8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23E8D0688();
      goto LABEL_7;
    }

    sub_23E88E378(v13, a3 & 1);
    v24 = sub_23E88CAE8(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23E9006D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23E8FD0E8(v10, a2, a1, v16);
}

uint64_t sub_23E8FCD10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_23E88C9D8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_23E8D08F0();
      goto LABEL_9;
    }

    sub_23E88E6C8(v16, a3 & 1);
    v19 = sub_23E88C9D8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_23E8FD194(v13, v10, a1, v21);
  }
}

uint64_t sub_23E8FCEF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23E8FD024(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23E881028(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23E8FD0E8(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = sub_23E9006D4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23E8FD194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_23E8FD2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8FD388()
{
  type metadata accessor for NullAirPlayConnection();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t dispatch thunk of AirPlayOverlayActionSending.sendAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E889AD8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AirPlayOverlayAdapting.connect()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return v7(a1, a2);
}

unint64_t sub_23E8FD780(uint64_t a1)
{
  result = sub_23E8FD7A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8FD7A8()
{
  result = qword_27E35EC50;
  if (!qword_27E35EC50)
  {
    type metadata accessor for ImageContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC50);
  }

  return result;
}

uint64_t sub_23E8FD840(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v21 = 0x6E6F6974636E7566;
  v22 = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x6E6F69746361;
  *(inited + 96) = 0xE600000000000000;
  v21 = a1;
  v22 = a2;

  sub_23E900C64();
  *(inited + 144) = 0x55557463656A626FLL;
  *(inited + 152) = 0xEA00000000004449;
  sub_23E8891B4(a3, v9, &unk_27E35F820, &qword_23E9064A0);
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_23E8FDB14(v9);
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
    *(inited + 192) = 0;
  }

  else
  {
    v13 = sub_23E9006A4();
    v15 = v14;
    (*(v12 + 8))(v9, v11);
    v21 = v13;
    v22 = v15;
    sub_23E900C64();
  }

  *(inited + 200) = 0x746E656D75677261;
  *(inited + 208) = 0xE900000000000073;
  sub_23E8891B4(v20, inited + 216, &qword_27E35E6C8, &unk_23E9039A0);
  v16 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v17 = sub_23E88B1F4(v16);

  return v17;
}

uint64_t sub_23E8FDB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Animatable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v33 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v35 = v6;
  v7 = type metadata accessor for Animatable(0, v5, v6, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v32 - v19;
  v21 = *(v18 + 48);
  v34 = v8;
  v22 = *(v8 + 16);
  v22(&v32 - v19, v38, v7);
  v22(&v20[v21], v39, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v33;
    v22(v16, v20, v7);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = v27;
      v30 = v37;
      (*(v27 + 32))(v4, &v20[v21], v37);
      v25 = sub_23E900844();
      v31 = *(v29 + 8);
      v31(v4, v30);
      v31(v16, v30);
      v26 = v34;
      goto LABEL_10;
    }

    (*(v27 + 8))(v16, v37);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22(v11, v20, v7);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v22(v14, v20, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:

LABEL_9:
    v25 = 0;
    v26 = v36;
    v7 = TupleTypeMetadata2;
    goto LABEL_10;
  }

LABEL_4:
  type metadata accessor for Animation(0, v37, v35, v24);
  swift_getWitnessTable();
  v25 = sub_23E900A24();

  v26 = v34;
LABEL_10:
  (*(v26 + 8))(v20, v7);
  return v25 & 1;
}

uint64_t Animatable.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    MEMORY[0x23EF17B90](v13);
    type metadata accessor for Animation(0, v3, *(a2 + 24), v15);
    swift_getWitnessTable();
    sub_23E900A14();
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x23EF17B90](0);
    sub_23E900824();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t Animatable.hashValue.getter(uint64_t a1)
{
  sub_23E900EB4();
  Animatable.hash(into:)(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8FE200(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  Animatable.hash(into:)(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8FE26C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Animation(255, result, *(a1 + 24), v3);
    result = sub_23E900A04();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E8FE2F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_23E8FE410(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_23E8FE5C8(unint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 0x6C6169726574616DLL;
    *(inited + 40) = 0xE800000000000000;
    sub_23E900C64();
    v5 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_23E903900;
    *(v4 + 32) = 114;
    *(v4 + 40) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 88) = 103;
    *(v4 + 96) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 144) = 98;
    *(v4 + 152) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 200) = 97;
    *(v4 + 208) = 0xE100000000000000;
    sub_23E900C64();
    v5 = sub_23E88F1F4(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
  }

  return v5;
}

unint64_t sub_23E8FE8F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8FE5C8(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_23E8FE924(uint64_t a1)
{
  result = sub_23E8FE94C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8FE94C()
{
  result = qword_27E35F958;
  if (!qword_27E35F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F958);
  }

  return result;
}

unint64_t sub_23E8FE9A0(uint64_t a1)
{
  result = sub_23E8FE9C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8FE9C8()
{
  result = qword_27E35F960;
  if (!qword_27E35F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F960);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8FEAA8()
{
  result = qword_27E35F968;
  if (!qword_27E35F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F968);
  }

  return result;
}

char *sub_23E8FEB0C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_23E8FEE6C(a1, v40);
  v7 = v42;
  if (v42)
  {
    v8 = v43;
    __swift_project_boxed_opaque_existential_1(v40, v42);
    v9 = (*(v8 + 72))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_23E87E458(v40, &unk_27E35F3E0, "t=");
    v9 = sub_23E88F1F4(MEMORY[0x277D84F90]);
  }

  v10 = (*(a4 + 72))(a3, a4);
  if (sub_23E8FEFB4(v9, v10))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = a2;

    v17 = 0;
    v11 = MEMORY[0x277D84F90];
    if (v14)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        do
        {
LABEL_13:
          v19 = __clz(__rbit64(v14)) | (v17 << 6);
          v20 = (*(v10 + 48) + 16 * v19);
          v22 = *v20;
          v21 = v20[1];
          sub_23E88FC10(*(v10 + 56) + 40 * v19, &v41);
          v40[0] = v22;
          v40[1] = v21;
          v23 = *(v9 + 16);

          if (v23)
          {
            v24 = sub_23E88CA70(v22, v21);
            if (v25)
            {
              sub_23E88FC10(*(v9 + 56) + 40 * v24, v36);
              v38[0] = v36[0];
              v38[1] = v36[1];
              v39 = v37;
              if (MEMORY[0x23EF17920](v38, &v41))
              {
                sub_23E8A2384(v38);
              }

              else
              {
                sub_23E88FC10(&v41, v36);
                if (swift_dynamicCast())
                {
                  v31 = v35;
                  v32 = v34;
                }

                else
                {

                  v26 = sub_23E900C44();
                  v31 = v27;
                  v32 = v26;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_23E88ABB4(0, *(v11 + 2) + 1, 1, v11);
                }

                v29 = *(v11 + 2);
                v28 = *(v11 + 3);
                if (v29 >= v28 >> 1)
                {
                  v11 = sub_23E88ABB4((v28 > 1), v29 + 1, 1, v11);
                }

                sub_23E8A2384(v38);
                *(v11 + 2) = v29 + 1;
                v30 = &v11[48 * v29];
                *(v30 + 4) = v33;
                *(v30 + 5) = v22;
                *(v30 + 6) = v21;
                *(v30 + 7) = v32;
                *(v30 + 8) = v31;
                v30[72] = 3;
              }
            }
          }

          v14 &= v14 - 1;
          result = sub_23E87E458(v40, &qword_27E35ED60, &qword_23E905168);
        }

        while (v14);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8FEE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3E0, "t=");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8FEEDC(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 64))(a3, a4);
  if (result)
  {
    v7 = *(result + 16);
    if (v7)
    {
      v8 = result + 32;
      do
      {
        sub_23E8810DC(v8, v11);
        a1(v11);
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_23E8FEEDC(a1, a2, v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_23E8FEFB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_23E88FC10(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_23E88CA70(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_23E8A2384(&v24);
      return 0;
    }

    sub_23E88FC10(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x23EF17920](v23, &v24);
    sub_23E8A2384(v23);
    result = sub_23E8A2384(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8FF150@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23E8FF15C()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 40))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FF304()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FF4A4()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 48))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FF64C()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 56))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FF7EC()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 64))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FF98C()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 72))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FFB2C()
{
  v1 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = &qword_27E35E438;
      v6 = &unk_23E907E20;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v7 = sub_23E8A25C4();
    }

    else
    {
      v5 = &qword_27E35E430;
      v6 = &unk_23E902C80;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v7 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v5 = &unk_27E35E440;
    v6 = &unk_23E902C90;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v7 = sub_23E8A26F8();
  }

  else
  {
    v5 = &unk_27E35E630;
    v6 = &qword_23E903300;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v7 = sub_23E8A2828();
  }

  v16 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_23E87E3F0(v3, boxed_opaque_existential_1, v5, v6);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = (*(v10 + 80))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t sub_23E8FFCE8(uint64_t a1)
{
  *(a1 + 8) = sub_23E8FFD6C(&qword_27E35F098, type metadata accessor for ContainerContent.Child, &protocol conformance descriptor for ContainerContent.Child);
  result = sub_23E8FFD6C(&qword_27E35F970, type metadata accessor for ContainerContent.Child, &protocol conformance descriptor for ContainerContent.Child);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23E8FFD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static Point.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v9 = a5;
  *(&v9 + 1) = a6;
  v6 = *(&v9 + 4);
  LOBYTE(v9) = a2;
  *(&v9 + 4) = __PAIR64__(a3, HIDWORD(a2));
  BYTE12(v9) = BYTE4(a3);
  v7 = v9;
  LOBYTE(v9) = a5;
  *(&v9 + 4) = v6;
  BYTE12(v9) = BYTE4(a6);
  return sub_23E9000A0(a1, v7, *(&v7 + 1), a4, v9, *(&v9 + 1));
}

uint64_t Point.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __PAIR64__(a4, HIDWORD(a3));
  v5 = HIDWORD(a4);
  HorizontalPosition.hash(into:)(a1, a2, a3);

  return VerticalPosition.hash(into:)(a1, v7, v5);
}

uint64_t Point.hashValue.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  *&v8[0] = a2;
  *(&v8[0] + 1) = a3;
  v5 = *(v8 + 4);
  v6 = HIDWORD(a3);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v8, a1, v3);
  VerticalPosition.hash(into:)(v8, v5, v6);
  return sub_23E900F14();
}

uint64_t sub_23E8FFF24()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v6, v1, v3);
  VerticalPosition.hash(into:)(v6, v2, v4);
  return sub_23E900F14();
}

uint64_t sub_23E8FFF94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 12);
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  HorizontalPosition.hash(into:)(a1, v3, v5);

  return VerticalPosition.hash(into:)(a1, v4, v6);
}

uint64_t sub_23E8FFFEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 20);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v7, v2, v4);
  VerticalPosition.hash(into:)(v7, v3, v5);
  return sub_23E900F14();
}

BOOL sub_23E900058(uint64_t a1, uint64_t a2)
{
  *(&v4 + 4) = *(a1 + 12);
  BYTE12(v4) = *(a1 + 20);
  v2 = v4;
  LOBYTE(v4) = *(a2 + 8);
  *(&v4 + 4) = *(a2 + 12);
  BYTE12(v4) = *(a2 + 20);
  return sub_23E9000A0(*a1, v2, *(&v2 + 1), *a2, v4, *(&v4 + 1));
}

BOOL sub_23E9000A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *&a1;
  v7 = __PAIR64__(a3, HIDWORD(a2));
  v29 = *(&a5 + 1);
  v30 = *&a6;
  if (!a2)
  {
    result = 0;
    if (a5)
    {
      return result;
    }

LABEL_14:
    if (v6 != *&a4)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a2 != 1)
  {
    result = 0;
    if (a5 != 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a5 != 1)
  {
    return 0;
  }

  v8 = HIDWORD(a1);
  v9 = 0x676E696461656CLL;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 1952867692;
    }

    else
    {
      v11 = 0x7468676972;
    }

    if (v10 == 2)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x676E696C69617274;
    }

    else
    {
      v11 = 0x676E696461656CLL;
    }

    if (v10)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  v18 = *&v8;
  v19 = *(&a4 + 1);
  v20 = 0xE700000000000000;
  v21 = 0xE400000000000000;
  v22 = 1952867692;
  if (a4 != 2)
  {
    v22 = 0x7468676972;
    v21 = 0xE500000000000000;
  }

  if (a4)
  {
    v9 = 0x676E696C69617274;
    v20 = 0xE800000000000000;
  }

  if (a4 <= 1u)
  {
    v23 = v9;
  }

  else
  {
    v23 = v22;
  }

  if (a4 <= 1u)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  v25 = BYTE4(a3);
  v26 = BYTE4(a6);
  if (v11 == v23 && v12 == v24)
  {

    BYTE4(a6) = v26;
    BYTE4(a3) = v25;
    if (v18 != v19)
    {
      return 0;
    }

LABEL_15:
    if (BYTE4(a3))
    {
      if (BYTE4(a3) == 1)
      {
        if (BYTE4(a6) == 1)
        {
          if (v7)
          {
            v14 = 0x6D6F74746F62;
          }

          else
          {
            v14 = 7368564;
          }

          if (v7)
          {
            v15 = 0xE600000000000000;
          }

          else
          {
            v15 = 0xE300000000000000;
          }

          if (LOBYTE(v29))
          {
            v16 = 0x6D6F74746F62;
          }

          else
          {
            v16 = 7368564;
          }

          if (LOBYTE(v29))
          {
            v17 = 0xE600000000000000;
          }

          else
          {
            v17 = 0xE300000000000000;
          }

          if (v14 == v16 && v15 == v17)
          {
          }

          else
          {
            v28 = sub_23E900E04();

            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          if (*(&v7 + 1) == v30)
          {
            return 1;
          }
        }

        return 0;
      }

      if (BYTE4(a6) != 2)
      {
        return 0;
      }
    }

    else if (BYTE4(a6))
    {
      return 0;
    }

    return *&v7 == v29;
  }

  v27 = sub_23E900E04();

  result = 0;
  if (v27)
  {
    BYTE4(a6) = v26;
    BYTE4(a3) = v25;
    if (v18 == v19)
    {
      goto LABEL_15;
    }
  }

  return result;
}

unint64_t sub_23E900380()
{
  result = qword_27E35F978;
  if (!qword_27E35F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F978);
  }

  return result;
}

unint64_t sub_23E9003D4(uint64_t a1)
{
  result = sub_23E9003FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E9003FC()
{
  result = qword_27E35F980;
  if (!qword_27E35F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F980);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Point(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Point(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}