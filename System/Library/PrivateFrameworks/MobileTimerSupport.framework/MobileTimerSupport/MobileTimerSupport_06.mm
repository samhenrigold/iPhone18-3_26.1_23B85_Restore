uint64_t sub_22D7F2574(int a1)
{
  v118 = a1;
  v1 = sub_22D81ABA8();
  v138 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v117 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v116 = &v109 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v125 = &v109 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v121 = &v109 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v137 = &v109 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v109 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v114 = &v109 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v109 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v109 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v124 = &v109 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v109 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v136 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v112 = &v109 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v119 = &v109 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v109 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v128 = &v109 - v38;
  MEMORY[0x28223BE20](v37);
  v127 = &v109 - v39;
  v40 = sub_22D81AB98();
  result = [objc_opt_self() mtSBUIIsSystemApertureEnabled];
  if (result)
  {
    goto LABEL_46;
  }

  v110 = v25;
  v126 = *(v40 + 16);
  if (!v126)
  {
    v50 = 0;
    v42 = 0;
    goto LABEL_38;
  }

  v113 = v36;
  v42 = 0;
  v43 = (v138 + 16);
  v134 = *MEMORY[0x277CB94E8];
  v132 = (v138 + 8);
  v133 = v138 + 104;
  v139 = v40;
  while (1)
  {
    if (v42 >= *(v40 + 16))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v44 = v138;
    v129 = ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v135 = *(v138 + 72);
    v45 = *(v138 + 16);
    v46 = v43;
    v45(v14, &v129[v40 + v135 * v42], v1);
    v131 = *(v44 + 104);
    v131(v137, v134, v1);
    v47 = sub_22D80383C(&qword_280CD28D8, 255, MEMORY[0x277CB9500], MEMORY[0x277CB9520]);
    sub_22D81B3D8();
    v130 = v47;
    sub_22D81B3D8();
    if (v140 == v144 && v141 == v145)
    {
      v48 = 1;
    }

    else
    {
      v48 = sub_22D81BB08();
    }

    v49 = *v132;
    (*v132)(v137, v1);
    v49(v14, v1);

    v50 = v42 + 1;
    if (v48)
    {
      break;
    }

    ++v42;
    v40 = v139;
    v43 = v46;
    if (v126 == v50)
    {
      v50 = *(v139 + 16);
      v42 = v50;
LABEL_14:
      v36 = v113;
      goto LABEL_38;
    }
  }

  v40 = v139;
  v51 = *(v139 + 16);
  if (v51 - 1 == v42)
  {
    goto LABEL_14;
  }

  v137 = (v138 + 40);
  v52 = &v129[v135 * v50];
  v53 = v121;
  v54 = v45;
  v123 = v46;
  v122 = v45;
  while (2)
  {
    if (v50 >= v51)
    {
      goto LABEL_138;
    }

    v54(v53, &v52[v139], v1);
    v55 = v125;
    v131(v125, v134, v1);
    sub_22D81B3D8();
    sub_22D81B3D8();
    if (v140 == v144 && v141 == v145)
    {
      v49(v55, v1);
      v49(v53, v1);

      goto LABEL_17;
    }

    v57 = sub_22D81BB08();
    v49(v55, v1);
    v49(v53, v1);

    if (v57)
    {
      v53 = v121;
LABEL_17:
      v54 = v122;
    }

    else
    {
      v54 = v122;
      if (v50 == v42)
      {
        v53 = v121;
      }

      else
      {
        if (v42 < 0)
        {
          goto LABEL_147;
        }

        v58 = v139;
        v59 = *(v139 + 16);
        if (v42 >= v59)
        {
          goto LABEL_148;
        }

        v60 = v42 * v135;
        result = (v122)(v116, &v129[v139 + v42 * v135], v1);
        if (v50 >= v59)
        {
          goto LABEL_149;
        }

        v54(v117, &v52[v58], v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_22D781BF4(v139);
        }

        v61 = v139;
        v62 = *v137;
        result = (*v137)(&v129[v139 + v60], v117, v1);
        if (v50 >= *(v61 + 16))
        {
          goto LABEL_150;
        }

        result = v62(&v52[v61], v116, v1);
        v53 = v121;
      }

      ++v42;
    }

    ++v50;
    v51 = *(v139 + 16);
    v52 += v135;
    if (v50 != v51)
    {
      continue;
    }

    break;
  }

  v36 = v113;
  if (v50 < v42)
  {
    goto LABEL_141;
  }

  v40 = v139;
  if (v42 < 0)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_38:
  if (__OFADD__(v50, v42 - v50))
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v146 = v40;
  if (!isUniquelyReferenced_nonNull_native || v42 > *(v40 + 24) >> 1)
  {
    if (v50 <= v42)
    {
      v64 = v42;
    }

    else
    {
      v64 = v50;
    }

    v40 = sub_22D7ED46C(isUniquelyReferenced_nonNull_native, v64, 1, v40);
    v146 = v40;
  }

  sub_22D80E058(v42, v50, 0);
  v25 = v110;
LABEL_46:
  v142 = &type metadata for MobileTimerFeatureFlags;
  v65 = sub_22D76B44C();
  v143 = v65;
  LOBYTE(v140) = 0;
  v66 = sub_22D81AC78();
  result = __swift_destroy_boxed_opaque_existential_0(&v140);
  if (v66)
  {
LABEL_90:
    if (v118)
    {
      return v40;
    }

    v142 = &type metadata for MobileTimerFeatureFlags;
    v143 = v65;
    LOBYTE(v140) = 2;
    v86 = sub_22D81AC78();
    result = __swift_destroy_boxed_opaque_existential_0(&v140);
    if (v86)
    {
      return v40;
    }

    v87 = *(v40 + 16);
    if (!v87)
    {
      v95 = 0;
      v88 = 0;
LABEL_126:
      if (__OFADD__(v95, v88 - v95))
      {
        goto LABEL_157;
      }

      v107 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v40;
      if (!v107 || v88 > *(v40 + 24) >> 1)
      {
        if (v95 <= v88)
        {
          v108 = v88;
        }

        else
        {
          v108 = v95;
        }

        v40 = sub_22D7ED46C(v107, v108, 1, v40);
        v146 = v40;
      }

      sub_22D80E058(v88, v95, 0);
      return v40;
    }

    v88 = 0;
    v134 = *MEMORY[0x277CB94F0];
    v132 = (v138 + 8);
    v133 = v138 + 104;
    v139 = v40;
    v137 = (v138 + 16);
    v89 = (v138 + 8);
    while (1)
    {
      if (v88 >= *(v40 + 16))
      {
        goto LABEL_137;
      }

      v90 = v138;
      v130 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v91 = (v40 + v130 + *(v138 + 72) * v88);
      v92 = *(v138 + 16);
      v135 = *(v138 + 72);
      v136 = v92;
      (v92)(v127, v91, v1);
      v131 = *(v90 + 104);
      v131(v128, v134, v1);
      sub_22D80383C(&qword_280CD28D8, 255, MEMORY[0x277CB9500], MEMORY[0x277CB9520]);
      sub_22D81B3D8();
      sub_22D81B3D8();
      if (v140 == v144 && v141 == v145)
      {
        v93 = 1;
      }

      else
      {
        v93 = sub_22D81BB08();
      }

      v94 = *v89;
      (*v89)(v128, v1);
      v94(v127, v1);

      v95 = v88 + 1;
      if (v93)
      {
        break;
      }

      ++v88;
      v40 = v139;
      if (v87 == v95)
      {
        v95 = *(v139 + 16);
        v88 = v95;
        goto LABEL_126;
      }
    }

    v96 = *(v139 + 16);
    if (v96 - 1 == v88)
    {
      v40 = v139;
      goto LABEL_126;
    }

    v97 = v136;
    v98 = v130 + v135 * v95;
    v113 = v36;
    v129 = (v138 + 40);
    while (1)
    {
      if (v95 >= v96)
      {
        goto LABEL_140;
      }

      (v97)(v36, v139 + v98, v1);
      v99 = v36;
      v100 = v119;
      v131(v119, v134, v1);
      sub_22D81B3D8();
      sub_22D81B3D8();
      if (v140 == v144 && v141 == v145)
      {
        v94(v100, v1);
        v94(v99, v1);

        v36 = v99;
      }

      else
      {
        LODWORD(v138) = sub_22D81BB08();
        v94(v100, v1);
        v94(v99, v1);

        v36 = v99;
        if ((v138 & 1) == 0)
        {
          v97 = v136;
          if (v95 != v88)
          {
            if (v88 < 0)
            {
              goto LABEL_158;
            }

            v102 = v139;
            v103 = *(v139 + 16);
            if (v88 >= v103)
            {
              goto LABEL_159;
            }

            v138 = v88 * v135;
            v104 = v136;
            result = (v136)(v112, v139 + v130 + v88 * v135, v1);
            if (v95 >= v103)
            {
              goto LABEL_160;
            }

            (v104)(v111, v102 + v98, v1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_22D781BF4(v139);
            }

            v36 = v113;
            v105 = v139;
            v106 = *v129;
            result = (*v129)(v139 + v130 + v138, v111, v1);
            if (v95 >= *(v105 + 2))
            {
              goto LABEL_161;
            }

            result = v106(&v105[v98], v112, v1);
            v97 = v136;
          }

          ++v88;
          goto LABEL_108;
        }
      }

      v97 = v136;
LABEL_108:
      ++v95;
      v96 = *(v139 + 16);
      v98 += v135;
      if (v95 == v96)
      {
        if (v95 < v88)
        {
          goto LABEL_155;
        }

        v40 = v139;
        if (v88 < 0)
        {
          goto LABEL_156;
        }

        goto LABEL_126;
      }
    }
  }

  v125 = v65;
  v67 = *(v40 + 16);
  if (!v67)
  {
    v73 = 0;
    v68 = 0;
    goto LABEL_82;
  }

  v113 = v36;
  v68 = 0;
  v137 = (v138 + 16);
  v134 = *MEMORY[0x277CB94D8];
  v132 = (v138 + 8);
  v133 = v138 + 104;
  while (1)
  {
    if (v68 >= *(v40 + 16))
    {
      goto LABEL_136;
    }

    v69 = v138;
    v126 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v135 = *(v138 + 72);
    v129 = *(v138 + 16);
    (v129)(v136, v40 + v126 + v135 * v68, v1);
    v131 = *(v69 + 104);
    v131(v25, v134, v1);
    v70 = sub_22D80383C(&qword_280CD28D8, 255, MEMORY[0x277CB9500], MEMORY[0x277CB9520]);
    sub_22D81B3D8();
    v130 = v70;
    sub_22D81B3D8();
    if (v140 == v144 && v141 == v145)
    {
      v71 = 1;
    }

    else
    {
      v71 = sub_22D81BB08();
    }

    v72 = *v132;
    (*v132)(v25, v1);
    v72(v136, v1);

    v73 = v68 + 1;
    if (v71)
    {
      break;
    }

    ++v68;
    if (v67 == v73)
    {
      v73 = *(v40 + 16);
      v68 = v73;
      goto LABEL_59;
    }
  }

  v74 = *(v40 + 16);
  if (v74 - 1 == v68)
  {
LABEL_59:
    v36 = v113;
    goto LABEL_82;
  }

  v123 = (v138 + 40);
  v75 = (v126 + v135 * v73);
  v76 = v120;
  v77 = v129;
  do
  {
    if (v73 >= v74)
    {
      goto LABEL_139;
    }

    v136 = v75;
    v78 = v124;
    (v77)(v124, &v75[v40], v1);
    v131(v76, v134, v1);
    sub_22D81B3D8();
    sub_22D81B3D8();
    if (v140 == v144 && v141 == v145)
    {
      v72(v76, v1);
      v72(v78, v1);
      v77 = v129;
    }

    else
    {
      v139 = v40;
      v80 = sub_22D81BB08();
      v72(v76, v1);
      v72(v78, v1);

      if (v80)
      {
        v40 = v139;
        v76 = v120;
      }

      else
      {
        if (v73 == v68)
        {
          v40 = v139;
        }

        else
        {
          v40 = v139;
          if (v68 < 0)
          {
            goto LABEL_151;
          }

          v81 = *(v139 + 16);
          if (v68 >= v81)
          {
            goto LABEL_152;
          }

          v82 = v68 * v135;
          result = (v77)(v115, v139 + v126 + v68 * v135, v1);
          if (v73 >= v81)
          {
            goto LABEL_153;
          }

          (v77)(v114, &v136[v40], v1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_22D781BF4(v40);
          }

          v83 = *v123;
          result = (*v123)((v40 + v126 + v82), v114, v1);
          if (v73 >= *(v40 + 16))
          {
            goto LABEL_154;
          }

          result = v83(&v136[v40], v115, v1);
        }

        v76 = v120;
        ++v68;
      }
    }

    ++v73;
    v74 = *(v40 + 16);
    v75 = &v136[v135];
  }

  while (v73 != v74);
  v36 = v113;
  if (v73 < v68)
  {
    goto LABEL_144;
  }

  if (v68 < 0)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

LABEL_82:
  if (!__OFADD__(v73, v68 - v73))
  {
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v40;
    if (!v84 || v68 > *(v40 + 24) >> 1)
    {
      if (v73 <= v68)
      {
        v85 = v68;
      }

      else
      {
        v85 = v73;
      }

      v40 = sub_22D7ED46C(v84, v85, 1, v40);
      v146 = v40;
    }

    sub_22D80E058(v68, v73, 0);
    v65 = v125;
    goto LABEL_90;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_22D7F3874(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  if ((a1[v5] & 1) == 0)
  {
    sub_22D7CA83C(a1);
  }

  v6 = objc_opt_self();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_22D81B838();
  v16 = v14;
  v17 = v15;
  MEMORY[0x2318D1A50](0xD00000000000001ELL, 0x800000022D82C400);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000011, 0x800000022D82C420);
  v7 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v8, v9);

  v10 = sub_22D81B2B8();

  [v6 logInfo_];

  v16 = a1;
  v11 = sub_22D81A8C8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  type metadata accessor for TimerContext(0);
  sub_22D80383C(&qword_280CD2DA8, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
  sub_22D80383C(&qword_280CD27B0, 255, type metadata accessor for TimerContext, &protocol conformance descriptor for TimerContext);
  sub_22D80383C(&qword_280CD27A8, 255, type metadata accessor for TimerContext, MEMORY[0x277D85378]);
  v12 = a1;
  return sub_22D81ABE8();
}

uint64_t sub_22D7F3B5C(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  if ((a1[v5] & 1) == 0)
  {
    sub_22D7CA4FC(a1);
  }

  v6 = objc_opt_self();
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_22D81B838();
  v16 = v14;
  v17 = v15;
  MEMORY[0x2318D1A50](0xD00000000000001ELL, 0x800000022D82C400);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000011, 0x800000022D82C420);
  v7 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v8, v9);

  v10 = sub_22D81B2B8();

  [v6 logInfo_];

  v16 = a1;
  v11 = sub_22D81A8C8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  type metadata accessor for AlarmContext(0);
  sub_22D80383C(&qword_280CD2C20, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
  sub_22D80383C(qword_280CD23E8, 255, type metadata accessor for AlarmContext, &protocol conformance descriptor for AlarmContext);
  sub_22D80383C(&qword_280CD23E0, 255, type metadata accessor for AlarmContext, MEMORY[0x277D85378]);
  v12 = a1;
  return sub_22D81ABE8();
}

uint64_t sub_22D7F3E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - v4;
  v26 = sub_22D81AFD8();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A918();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AF78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81AF88();
  v15 = (*(v12 + 88))(v14, v11);
  v16 = *MEMORY[0x277CB9A00];
  (*(v12 + 8))(v14, v11);
  if (v15 != v16)
  {
    sub_22D80243C(a1);
  }

  v17 = objc_opt_self();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001ELL, 0x800000022D82C400);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000011, 0x800000022D82C420);
  sub_22D81AF98();
  v18 = sub_22D81A8D8();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x2318D1A50](v18, v20);

  v21 = sub_22D81B2B8();

  [v17 logInfo_];

  (*(v5 + 16))(v25, a1, v26);
  v22 = sub_22D81A8C8();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  v23 = MEMORY[0x277CB9A20];
  sub_22D80383C(&qword_280CD1598, 255, MEMORY[0x277CB9A20], MEMORY[0x277CB9A38]);
  sub_22D80383C(&qword_280CD15A8, 255, v23, MEMORY[0x277CB9A28]);
  sub_22D80383C(&qword_280CD15A0, 255, v23, MEMORY[0x277CB9A30]);
  return sub_22D81ABE8();
}

uint64_t sub_22D7F42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F43B4, a5, 0);
}

uint64_t sub_22D7F43B4()
{
  sub_22D7F3E44(v0[4], v0[8]);
  v5 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22D7F4470;
  v2 = v0[8];
  v3 = v0[5];

  return v5(v2, v3);
}

uint64_t sub_22D7F4470()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22D7F45C8(uint64_t a1, uint64_t a2)
{
  result = sub_22D8020A8(a1, a2);
  if (!result)
  {
    sub_22D81B838();
    type metadata accessor for ActivityAttributesProvider();
    sub_22D81B908();
    MEMORY[0x2318D1A50](0xD00000000000002ALL, 0x800000022D82C3D0);
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    sub_22D81A398();
    MEMORY[0x2318D1A50](v6, v7);

    MEMORY[0x2318D1A50](0x203A646920, 0xE500000000000000);
    MEMORY[0x2318D1A50](a1, a2);
    v8 = objc_opt_self();
    sub_22D81A398();
    v9 = sub_22D81B2B8();

    [v8 logError_];

    sub_22D7CDE20(0, 0xE000000000000000);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22D7F4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22D81AB88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039A0, &unk_22D826830);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F482C, 0, 0);
}

uint64_t sub_22D7F482C(uint64_t a1)
{
  v2 = v1[6];
  sub_22D81AB08();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_22D81AB68();
  v8 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_22D7F4944;
  v5 = v1[5];
  v6 = v1[6];

  return v8(v6, v5);
}

uint64_t sub_22D7F4944()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_22D764440(v1, &qword_27DA039A0, &unk_22D826830);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22D7F4AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22D81AB88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03370, &unk_22D824C60);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F4BC8, 0, 0);
}

uint64_t sub_22D7F4BC8(uint64_t a1)
{
  v2 = v1[6];
  sub_22D81AB08();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_22D81AB68();
  v8 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_22D7F4CE0;
  v5 = v1[5];
  v6 = v1[6];

  return v8(v6, v5);
}

uint64_t sub_22D7F4CE0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_22D764440(v1, &qword_27DA03370, &unk_22D824C60);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22D7F4E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22D81AB88();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03360, &unk_22D826890);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F4F64, 0, 0);
}

uint64_t sub_22D7F4F64(uint64_t a1)
{
  v2 = v1[6];
  sub_22D81AB08();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_22D81AB68();
  v8 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_22D7F507C;
  v5 = v1[5];
  v6 = v1[6];

  return v8(v6, v5);
}

uint64_t sub_22D7F507C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  sub_22D764440(v1, &qword_27DA03360, &unk_22D826890);

  v5 = *(v7 + 8);

  return v5();
}

void sub_22D7F5208(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039C0, &unk_22D826870);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B8, &qword_22D826868);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v43 - v6;
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22D81A748();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_22D81B2A8();
  v12 = *(v49 - 8);
  v13 = MEMORY[0x28223BE20](v49);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = sub_22D81AFF8();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  v58 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D81A768();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v43 - v24;
  v26 = [a1 displayTitle];
  sub_22D81B2C8();

  v52 = v25;
  sub_22D81A738();
  sub_22D81B228();
  v27 = v49;
  v45 = *(v12 + 16);
  v45(v15, v17, v49);
  v28 = type metadata accessor for AKActivitiesProviderProxy();
  *v11 = v28;
  v29 = *(v9 + 104);
  v44 = *MEMORY[0x277CC9120];
  v48 = v9 + 104;
  v43 = v29;
  v29(v11);
  sub_22D81A948();
  v30 = v15;
  v31 = v27;
  v46 = v11;
  sub_22D81A778();
  v32 = *(v12 + 8);
  v32(v17, v31);
  sub_22D81AD78();
  v47 = v23;
  sub_22D81AFE8();
  if ([v59 allowsSnooze])
  {
    sub_22D81B228();
    v45(v30, v17, v31);
    v33 = v46;
    *v46 = v28;
    v43(v33, v44, v56);
    sub_22D81A948();
    sub_22D81A778();
    v32(v17, v31);
    sub_22D81AD78();
    v34 = v53;
    sub_22D81AFE8();
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v53;
  }

  (*(v50 + 56))(v34, v35, 1, v51);
  v36 = v59;
  v37 = [v59 allowsSnooze];
  v38 = v54;
  if (v37)
  {
    v39 = *MEMORY[0x277CB99B8];
    v40 = sub_22D81AE38();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v38, v39, v40);
    (*(v41 + 56))(v38, 0, 1, v40);
  }

  else
  {
    v42 = sub_22D81AE38();
    (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
  }

  sub_22D81AE48();
}

uint64_t sub_22D7F58B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B8, &qword_22D826868);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v26 - v4;
  v5 = sub_22D81A958();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_22D81A748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22D81B2A8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = sub_22D81A768();
  MEMORY[0x28223BE20](v17 - 8);
  v27 = a1;
  if ([a1 allowsSnooze])
  {
    sub_22D81B228();
    (*(v11 + 16))(v14, v16, v10);
    *v9 = type metadata accessor for AKActivitiesProviderProxy();
    (*(v7 + 104))(v9, *MEMORY[0x277CC9120], v6);
    sub_22D81A948();
    sub_22D81A778();
    (*(v11 + 8))(v16, v10);
    v18 = sub_22D81AFF8();
    (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
    v19 = v28;
    sub_22D81AE98();

    v20 = sub_22D81AEA8();
    return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {

    v22 = sub_22D81AEA8();
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = v28;

    return v23(v25, 1, 1, v24);
  }
}

uint64_t MTAlarmCustomContent.init(type:isSleepAlarm:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void sub_22D7F5CE0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039C0, &unk_22D826870);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v31[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B8, &qword_22D826868);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v31[-v6];
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_22D81A748();
  v48 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_22D81B2A8();
  v11 = *(v38 - 8);
  v12 = MEMORY[0x28223BE20](v38);
  v37 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v31[-v14];
  v43 = sub_22D81AFF8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22D81A768();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = &v31[-v19];
  v20 = [a1 displayTitle];
  sub_22D81B2C8();

  sub_22D81A738();
  sub_22D81B228();
  v36 = *(v11 + 16);
  v21 = v37;
  v22 = v38;
  v36(v37, v15, v38);
  v35 = type metadata accessor for AKActivitiesProviderProxy();
  *v10 = v35;
  v32 = *MEMORY[0x277CC9120];
  v23 = *(v48 + 104);
  v48 += 104;
  v34 = v23;
  v23(v10);
  sub_22D81A948();
  sub_22D81A778();
  v24 = *(v11 + 8);
  v24(v15, v22);
  sub_22D81AD78();
  sub_22D81AFE8();
  sub_22D81B228();
  v36(v21, v15, v22);
  v25 = v34;
  *v10 = v35;
  v25(v10, v32, v33);
  sub_22D81A948();
  sub_22D81A778();
  v24(v15, v22);
  sub_22D81AD78();
  v26 = v44;
  sub_22D81AFE8();
  (*(v41 + 56))(v26, 0, 1, v43);
  v27 = *MEMORY[0x277CB99B8];
  v28 = sub_22D81AE38();
  v29 = *(v28 - 8);
  v30 = v45;
  (*(v29 + 104))(v45, v27, v28);
  (*(v29 + 56))(v30, 0, 1, v28);
  sub_22D81AE48();
}

void sub_22D7F62F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v28 = a2;
  v3 = sub_22D81A958();
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A748();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22D81B2A8();
  v8 = *(v23 - 8);
  v9 = MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B8, &qword_22D826868);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_22D81A768();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  MEMORY[0x28223BE20](v18);
  v19 = [a1 displayTitle];
  sub_22D81B2C8();

  sub_22D81A738();
  sub_22D81B228();
  v20 = v23;
  (*(v8 + 16))(v11, v13, v23);
  *v7 = type metadata accessor for AKActivitiesProviderProxy();
  (*(v25 + 104))(v7, *MEMORY[0x277CC9120], v26);
  sub_22D81A948();
  sub_22D81A778();
  (*(v8 + 8))(v13, v20);
  sub_22D81AD78();
  sub_22D81AFE8();
  v21 = sub_22D81AFF8();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  sub_22D81AE98();
}

void sub_22D7F66D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v25 = a2;
  v3 = sub_22D81A958();
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A748();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22D81B2A8();
  v8 = *(v21 - 8);
  v9 = MEMORY[0x28223BE20](v21);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = sub_22D81AFF8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_22D81A768();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = [a1 displayTitle];
  sub_22D81B2C8();

  sub_22D81A738();
  sub_22D81B228();
  v18 = v21;
  (*(v8 + 16))(v11, v13, v21);
  *v7 = type metadata accessor for AKActivitiesProviderProxy();
  (*(v22 + 104))(v7, *MEMORY[0x277CC9120], v23);
  sub_22D81A948();
  sub_22D81A778();
  (*(v8 + 8))(v13, v18);
  sub_22D81AD78();
  sub_22D81AFE8();
  sub_22D81AE78();
}

id AKActivitiesProviderProxy.__allocating_init(activityResolver:)(uint64_t a1)
{
  v2 = v1;
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue;
  type metadata accessor for SerialTaskQueue(0);
  swift_allocObject();
  *&v3[v4] = SerialTaskQueue.init()();
  type metadata accessor for ActivityKitProvider();
  v5 = swift_allocObject();
  v6 = swift_unknownObjectRetain();
  *&v3[OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor] = sub_22D7FF078(v6, v5, 0, 1);
  v9.receiver = v3;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

id AKActivitiesProviderProxy.init(activityResolver:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue;
  type metadata accessor for SerialTaskQueue(0);
  swift_allocObject();
  *&v1[v3] = SerialTaskQueue.init()();
  type metadata accessor for ActivityKitProvider();
  v4 = swift_allocObject();
  v5 = swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor] = sub_22D7FF078(v5, v4, 0, 1);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AKActivitiesProviderProxy();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_22D7F6CB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = ObjectType;
  v14 = swift_allocObject();
  v14[2] = &unk_22D826140;
  v14[3] = v13;
  v14[4] = a2;
  v14[5] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_22D826150;
  *(v15 + 24) = v14;
  v19[0] = &unk_22D825430;
  v19[1] = v15;
  v16 = v4;
  v17 = a1;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7F6EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22D81AFD8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F6FCC, 0, 0);
}

uint64_t sub_22D7F6FCC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 88) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 96) = 0;
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_22D7F70CC, v2, 0);
}

uint64_t sub_22D7F70CC()
{
  v1 = v0[12];
  sub_22D7F184C(v0[10], v0[7]);
  v0[13] = v1;

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  if (v1)
  {
    (*(v7 + 8))(v0[7], v0[5]);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_22D7F7238, 0, 0);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7F7238()
{

  v1 = *(v0 + 8);

  return v1();
}

void AlarmPresentationState.init(_:)(void *a1)
{
  v3 = sub_22D81AF78();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 alarmID];
  sub_22D81A8F8();

  v11 = a1;
  sub_22D7FB158(v11, v5);
  if (v1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_22D81AFB8();
    sub_22D81AFC8();
    sub_22D81AED8();
    if (([v11 isSnoozed] & 1) == 0)
    {
      v12 = [v11 displayTitle];
      sub_22D81B2C8();
    }

    sub_22D81AEC8();
  }
}

{
  v3 = sub_22D81AF78();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 timerID];
  sub_22D81A8F8();

  v11 = a1;
  sub_22D7FB768(v11, v5);
  if (v1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_22D81AFB8();
    sub_22D81AFC8();
    sub_22D81AED8();
    v12 = [v11 displayTitle];
    sub_22D81B2C8();

    sub_22D81AEC8();
  }
}

uint64_t static AKActivitiesProviderProxy.attributes(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22D81AE58();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AEB8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = a1;
  sub_22D7F5208(v12, v10);
  v13 = v12;
  sub_22D7F58B0(v13, v7);
  v14 = sub_22D81AE88();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_22D81AE68();
  v15 = [v13 isSleepAlarm];
  v17 = 0;
  v18 = v15;
  sub_22D81AD88();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_22D81AE58();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AEB8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = a1;
  sub_22D7F5CE0(v12, v10);
  v13 = v12;
  sub_22D7F62F8(v13, v7);
  v14 = sub_22D81AEA8();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  sub_22D7F66D4(v13, v4);
  v15 = sub_22D81AE88();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  sub_22D81AE68();
  v17 = 1;
  v18 = 2;
  sub_22D81AD88();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

uint64_t sub_22D7F76F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = ObjectType;
  v14 = swift_allocObject();
  v14[2] = &unk_22D826160;
  v14[3] = v13;
  v14[4] = a2;
  v14[5] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_22D826168;
  *(v15 + 24) = v14;
  v19[0] = &unk_22D826170;
  v19[1] = v15;
  v16 = v4;
  v17 = a1;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7F78E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22D81AFD8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F7A44, 0, 0);
}

uint64_t sub_22D7F7A44()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 96) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 104) = 0;
  v3 = *(v0 + 40);
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));
  v4 = sub_22D81AC68();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  return MEMORY[0x2822009F8](sub_22D7F7B94, v2, 0);
}

uint64_t sub_22D7F7B94()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  sub_22D7EEC74(v2, v5, v8);
  v0[14] = v1;

  sub_22D764440(v8, &qword_27DA03368, &qword_22D824BF0);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7F7CF4, 0, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22D7F7CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7F7DAC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - v12;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = ObjectType;
  v15 = swift_allocObject();
  v15[2] = &unk_22D826180;
  v15[3] = v14;
  v15[4] = a3;
  v15[5] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_22D826188;
  *(v16 + 24) = v15;
  v23 = &unk_22D826190;
  v24 = v16;
  v17 = v5;
  v18 = a1;
  v19 = a2;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_22D7F7FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_22D81AFD8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F80D0, 0, 0);
}

uint64_t sub_22D7F80D0()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 96) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 104) = 0;
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_22D7F81D0, v2, 0);
}

uint64_t sub_22D7F81D0()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  sub_22D7EF688(v2, v5, v0[4]);
  v0[14] = v1;

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7F8308, 0, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7F8308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7F83AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = ObjectType;
  v14 = swift_allocObject();
  v14[2] = &unk_22D8261A0;
  v14[3] = v13;
  v14[4] = a2;
  v14[5] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_22D8261A8;
  *(v15 + 24) = v14;
  v19[0] = &unk_22D8261B0;
  v19[1] = v15;
  v16 = v4;
  v17 = a1;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7F859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22D81AFD8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F86C8, 0, 0);
}

uint64_t sub_22D7F86C8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 88) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 96) = 0;
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_22D7F87C8, v2, 0);
}

uint64_t sub_22D7F87C8()
{
  v1 = v0[12];
  sub_22D7F184C(v0[10], v0[7]);
  v0[13] = v1;

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  if (v1)
  {
    (*(v7 + 8))(v0[7], v0[5]);
    (*(v3 + 8))(v2, v4);

    return MEMORY[0x2822009F8](sub_22D8038A8, 0, 0);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7F8DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = ObjectType;
  v14 = swift_allocObject();
  v14[2] = &unk_22D8261C0;
  v14[3] = v13;
  v14[4] = a2;
  v14[5] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_22D8261C8;
  *(v15 + 24) = v14;
  v19[0] = &unk_22D8261D0;
  v19[1] = v15;
  v16 = v4;
  v17 = a1;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7F8F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22D81AFD8();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F90FC, 0, 0);
}

uint64_t sub_22D7F90FC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 96) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 104) = 0;
  v3 = *(v0 + 40);
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));
  v4 = sub_22D81AC68();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  return MEMORY[0x2822009F8](sub_22D7F924C, v2, 0);
}

uint64_t sub_22D7F924C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  sub_22D7EEC74(v2, v5, v8);
  v0[14] = v1;

  sub_22D764440(v8, &qword_27DA03368, &qword_22D824BF0);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D8038B0, 0, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22D7F93E0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_22D7F9488(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - v12;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = ObjectType;
  v15 = swift_allocObject();
  v15[2] = &unk_22D8261E0;
  v15[3] = v14;
  v15[4] = a3;
  v15[5] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_22D8261E8;
  *(v16 + 24) = v15;
  v23 = &unk_22D8261F0;
  v24 = v16;
  v17 = v5;
  v18 = a1;
  v19 = a2;
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_22D7F9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_22D81AFD8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7F97AC, 0, 0);
}

uint64_t sub_22D7F97AC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 96) = v2;
  sub_22D81A198();
  AlarmPresentationState.init(_:)(v1);
  *(v0 + 104) = 0;
  static AKActivitiesProviderProxy.attributes(for:)(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_22D7F98AC, v2, 0);
}

uint64_t sub_22D7F98AC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  sub_22D7EF688(v2, v5, v0[4]);
  v0[14] = v1;

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D8038AC, 0, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7F9A18(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v15, v16, a7, v14);
}

uint64_t sub_22D7F9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v14 = swift_allocObject();
  v14[2] = &unk_22D826200;
  v14[3] = v13;
  v14[4] = a3;
  v14[5] = a4;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_22D826208;
  *(v15 + 24) = v14;
  v18[0] = &unk_22D826210;
  v18[1] = v15;
  v16 = v4;
  sub_22D81A398();
  sub_22D81A198();
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7F9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7F9CE8, 0, 0);
}

uint64_t sub_22D7F9CE8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 40) = v1;
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D7F9D68, v1, 0);
}

uint64_t sub_22D7F9D68()
{
  sub_22D7EFBAC(v0[3], v0[4]);
  v0[6] = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_22D7F9E28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7F9F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_22D826220;
  *(v12 + 24) = v11;
  v15[0] = &unk_22D826228;
  v15[1] = v12;
  v13 = v3;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22D7FA0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7FA1B0, 0, 0);
}

uint64_t sub_22D7FA1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
  *(v0 + 112) = sub_22D81AAC8();

  return MEMORY[0x2822009F8](sub_22D7445A4, 0, 0);
}

uint64_t sub_22D7FA258(uint64_t a1)
{
  v2 = sub_22D81A918();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_22D81AFA8();
}

uint64_t sub_22D7FA508(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_22D826238;
  *(v14 + 24) = v13;
  v17[0] = &unk_22D826240;
  v17[1] = v14;
  v15 = v4;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22D7FA6B0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_22D7FA79C;

  return v7();
}

uint64_t sub_22D7FA79C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22D7FA918;
  }

  else
  {
    v2 = sub_22D7FA8B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7FA8B0()
{
  (*(v0 + 48))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7FA918()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_getErrorValue();
  v3 = sub_22D81BB78();
  v5 = sub_22D7CDE20(v3, v4);

  v2(v5);

  v6 = v0[1];

  return v6();
}

id AKActivitiesProviderProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AKActivitiesProviderProxy.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AKActivitiesProviderProxy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t AlarmPresentationState.id.getter()
{
  v0 = sub_22D81A918();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81AF98();
  v4 = sub_22D81A8D8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL sub_22D7FAC08(void *a1, void *a2, uint64_t a3)
{
  v32 = a2;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v31 = v29 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = *(a3 + 120);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D81A398();
  v18 = sub_22D81B2B8();

  v19 = [v17 fireDateForId:v18 isAlarm:{*(__swift_project_boxed_opaque_existential_0(a1, a1[3]) + 24)}];

  if (!v19)
  {
    return 1;
  }

  v29[1] = v3;
  sub_22D81A878();

  v20 = v14;
  v21 = *(v7 + 32);
  v21(v16, v20, v6);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  sub_22D81A398();
  v22 = sub_22D81B2B8();

  v23 = [v17 fireDateForId:v22 isAlarm:{*(__swift_project_boxed_opaque_existential_0(a1, a1[3]) + 24)}];

  if (v23)
  {
    v24 = v30;
    sub_22D81A878();

    v25 = v31;
    v21(v31, v24, v6);
    v26 = sub_22D81A898();
    v27 = *(v7 + 8);
    v27(v25, v6);
    v27(v16, v6);
    return v26 == 1;
  }

  else
  {
    (*(v7 + 8))(v16, v6);
    return 1;
  }
}

uint64_t sub_22D7FAEE8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7FAF40@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22D81A918();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81AF98();
  v6 = sub_22D81A8D8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

void (*AlarmPresentationState.id.modify(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_22D81A918();
  v3 = *(v2 - 8);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  v5 = v4;
  a1[2] = v4;
  sub_22D81AF98();
  v6 = sub_22D81A8D8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return sub_22D7FB120;
}

void sub_22D7FB120(uint64_t a1)
{
  v1 = *(a1 + 16);

  free(v1);
}

void sub_22D7FB158(char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_22D81ADD8();
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v39 - v9;
  v11 = sub_22D81A8C8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v39 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = sub_22D81AF78();
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isSnoozed])
  {
    if (([a1 isFiring] & 1) == 0)
    {
      v27 = [a1 dismissedDate];
      if (!v27)
      {
        (*(v12 + 56))(v8, 1, 1, v11);
        sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
        v32 = objc_opt_self();
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_22D81B838();

        v44 = 0xD00000000000002ELL;
        v45 = 0x800000022D82C6C0;
        v33 = [a1 description];
        v34 = sub_22D81B2C8();
        v36 = v35;

        MEMORY[0x2318D1A50](v34, v36);

        v37 = sub_22D81B2B8();

        [v32 logInfo_];

        sub_22D803240();
        swift_allocError();
        *v38 = 1;
        swift_willThrow();

        return;
      }

      v28 = v27;
      sub_22D81A878();

      (*(v12 + 56))(v8, 0, 1, v11);
      sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
    }

    if (([a1 hour] & 0x8000000000000000) == 0)
    {
      if (([a1 minute] & 0x8000000000000000) == 0)
      {
        sub_22D81ADC8();
        v29 = v43;
        sub_22D81AEE8();

        (*(v41 + 104))(v29, *MEMORY[0x277CB9A00], v42);
        return;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v22 = [a1 snoozeDuration];
  if (!is_mul_ok(v22, 0x3CuLL))
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = 60 * v22;
  sub_22D81A888();
  v24 = [a1 nextFireDate];
  if (v24)
  {
    v39[1] = v23;
    v25 = v24;
    sub_22D81A878();

    v40 = a1;
    v26 = *(v12 + 32);
    v26(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v26(v18, v10, v11);
    a1 = v40;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_22D81A7E8();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
    }
  }

  sub_22D81AF38();

  v31 = v41;
  v30 = v42;
  (*(v41 + 104))(v21, *MEMORY[0x277CB9A10], v42);
  (*(v31 + 32))(v43, v21, v30);
}

void sub_22D7FB768(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22D81ADD8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - v6;
  v7 = sub_22D81A8C8();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v36 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v38 = &v33 - v13;
  v14 = sub_22D81AF78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 duration];
  [a1 remainingTime];
  if ([a1 state] == 2)
  {
    [a1 duration];
    sub_22D81AEF8();

    (*(v15 + 104))(a2, *MEMORY[0x277CB9A08], v14);
  }

  else
  {
    v33 = v14;
    if ([a1 state] == 3)
    {
      [a1 duration];
      sub_22D81A888();
      v18 = [a1 fireDate];
      if (v18)
      {
        v19 = v18;
        sub_22D81A878();

        v20 = v34;
        v21 = *(v34 + 32);
        v22 = v37;
        v23 = v10;
        v24 = v35;
        v21(v37, v23, v35);
        (*(v20 + 56))(v22, 0, 1, v24);
        v21(v36, v22, v24);
        v25 = v33;
      }

      else
      {
        v27 = v34;
        v26 = v35;
        v28 = v37;
        (*(v34 + 56))(v37, 1, 1, v35);
        [a1 remainingTime];
        sub_22D81A888();
        sub_22D81A7D8();
        v29 = (*(v27 + 48))(v28, 1, v26);
        v25 = v33;
        if (v29 != 1)
        {
          sub_22D764440(v28, &qword_27DA02000, &qword_22D81F160);
        }
      }

      sub_22D81AF38();

      (*(v15 + 104))(v17, *MEMORY[0x277CB9A10], v25);
      (*(v15 + 32))(a2, v17, v25);
    }

    else if (([a1 isFiring] & 1) != 0 || objc_msgSend(a1, sel_state) == 1)
    {
      sub_22D81ADC8();
      sub_22D81AEE8();

      (*(v15 + 104))(a2, *MEMORY[0x277CB9A00], v33);
    }

    else
    {
      v30 = objc_opt_self();
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD000000000000024, 0x800000022D82C670);
      v39 = [a1 state];
      type metadata accessor for MTTimerState(0);
      sub_22D81B908();
      v31 = sub_22D81B2B8();

      [v30 logInfo_];

      sub_22D803240();
      swift_allocError();
      *v32 = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_22D7FBD38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22D81A918();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81AF98();
  v6 = sub_22D81A8D8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

BOOL sub_22D7FBE30(_DWORD *a1)
{
  v3 = sub_22D81AF78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3) == *a1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t AlarmPresentationState.Mode.totalDuration.getter()
{
  v1 = v0;
  v2 = sub_22D81AF28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81AF68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81AF78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277CB9A00])
  {
    return (*(v11 + 8))(v13, v10);
  }

  if (v14 == *MEMORY[0x277CB9A10])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    sub_22D81AF48();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (v14 != *MEMORY[0x277CB9A08])
    {
      return (*(v11 + 8))(v13, v10);
    }

    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    sub_22D81AF08();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t AlarmPresentationState.Mode.remainingTime.getter()
{
  v1 = v0;
  v2 = sub_22D81AF28();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A8C8();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81AF68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D81AF78();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277CB9A00])
  {
    return (*(v13 + 8))(v15, v12);
  }

  if (v16 == *MEMORY[0x277CB9A10])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    sub_22D81AF58();
    sub_22D81A848();
    (*(v23 + 8))(v7, v5);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (v16 != *MEMORY[0x277CB9A08])
    {
      return (*(v13 + 8))(v15, v12);
    }

    (*(v13 + 96))(v15, v12);
    v19 = v21;
    v18 = v22;
    (*(v21 + 32))(v4, v15, v22);
    sub_22D81AF08();
    sub_22D81AF18();
    return (*(v19 + 8))(v4, v18);
  }
}

uint64_t static MTAlarmCustomContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22D7FC6B0()
{
  if (*v0)
  {
    return 0x417065656C537369;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22D7FC6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_22D81BB08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x417065656C537369 && a2 == 0xEC0000006D72616CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22D7FC7CC(uint64_t a1)
{
  v2 = sub_22D7FF8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7FC808(uint64_t a1)
{
  v2 = sub_22D7FF8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTAlarmCustomContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03968, &qword_22D826248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7FF8BC();
  sub_22D81BC38();
  v13 = v8;
  v12 = 0;
  sub_22D7FF910();
  sub_22D81BAB8();
  if (!v2)
  {
    v11 = 1;
    sub_22D81BA48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MTAlarmCustomContent.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x2318D22E0](*v0);
  if (v1 != 2)
  {
    sub_22D81BBE8();
  }

  return sub_22D81BBE8();
}

uint64_t MTAlarmCustomContent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  if (v2 != 2)
  {
    sub_22D81BBE8();
  }

  sub_22D81BBE8();
  return sub_22D81BC18();
}

uint64_t MTAlarmCustomContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03970, &qword_22D826250);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7FF8BC();
  sub_22D81BC28();
  if (!v2)
  {
    v12[15] = 0;
    sub_22D7FF964();
    sub_22D81BA28();
    v9 = v13;
    v12[14] = 1;
    v10 = sub_22D81B9B8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22D7FCCA4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  if (v2 != 2)
  {
    sub_22D81BBE8();
  }

  sub_22D81BBE8();
  return sub_22D81BC18();
}

uint64_t sub_22D7FCD20()
{
  v1 = *(v0 + 8);
  MEMORY[0x2318D22E0](*v0);
  if (v1 != 2)
  {
    sub_22D81BBE8();
  }

  return sub_22D81BBE8();
}

uint64_t sub_22D7FCD70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v2);
  if (v3 != 2)
  {
    sub_22D81BBE8();
  }

  sub_22D81BBE8();
  return sub_22D81BC18();
}

uint64_t sub_22D7FCDE8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t AlarmType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_22D7FCE48@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_22D7FCF38(uint64_t a1, char a2, void *a3)
{
  v65 = a3;
  v6 = sub_22D81ABA8();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0);
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = &v57 - v10;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v57 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v61;
  v12 = v61 + *(v9 + 48);
  v13 = *(v62 + 80);
  v60 = a1;
  v14 = (v63 + 32);
  v58 = a1 + ((v13 + 32) & ~v13);
  sub_22D7640C4(v58, v61, &qword_27DA038B0, &qword_22D825CD0);
  v15 = *v14;
  v16 = v66;
  (*v14)(v66, v11, v64);
  v18 = *v12;
  v17 = *(v12 + 8);
  v19 = *(v12 + 16);
  v20 = *v65;
  v22 = sub_22D807C7C(v16);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v31 = v22;
      sub_22D80D924();
      v22 = v31;
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_22D80ABB8(v25, a2 & 1);
  v27 = sub_22D807C7C(v66);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = v66;
      v33 = *v65;
      v34 = v22;
      *(*v65 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v15(v33[6] + *(v63 + 72) * v22, v32, v64);
      v35 = v33[7] + 24 * v34;
      *v35 = v18;
      *(v35 + 8) = v17;
      *(v35 + 16) = v19;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v33[2] = v38;
      if (v59 != 1)
      {
        v39 = 1;
        while (v39 < *(v60 + 16))
        {
          v40 = v61;
          sub_22D7640C4(v58 + *(v62 + 72) * v39, v61, &qword_27DA038B0, &qword_22D825CD0);
          v41 = *v14;
          v42 = v66;
          (*v14)(v66, v40, v64);
          v18 = *v12;
          v17 = *(v12 + 8);
          v19 = *(v12 + 16);
          v43 = *v65;
          v44 = sub_22D807C7C(v42);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_22D80ABB8(v48, 1);
            v44 = sub_22D807C7C(v66);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v51 = v66;
          v52 = *v65;
          *(*v65 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = v44;
          v41(v52[6] + *(v63 + 72) * v44, v51, v64);
          v54 = v52[7] + 24 * v53;
          *v54 = v18;
          *(v54 + 8) = v17;
          *(v54 + 16) = v19;
          v55 = v52[2];
          v37 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v56;
          if (v59 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();

    v69 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22D803228(v18, v17, v19);
      (*(v63 + 8))(v66, v64);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22D81BB58();
  __break(1u);
LABEL_29:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001BLL, 0x800000022D829AE0);
  sub_22D81B908();
  MEMORY[0x2318D1A50](39, 0xE100000000000000);
  sub_22D81B918();
  __break(1u);
}

uint64_t sub_22D7FD4C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22D81BAC8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038A0, &qword_22D825CC0);
        v5 = sub_22D81B468();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22D7FD6F8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22D7FD5D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22D7FD5D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_22D75CCD8(v10, &v16);
      sub_22D75CCD8(v10 - 40, v15);
      v11 = *(__swift_project_boxed_opaque_existential_0(&v16, v17) + 2);
      v12 = *(__swift_project_boxed_opaque_existential_0(v15, v15[3]) + 2);
      __swift_destroy_boxed_opaque_existential_0(v15);
      result = __swift_destroy_boxed_opaque_existential_0(&v16);
      if (v11 >= v12)
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      sub_22D749DBC(v10, &v16);
      v13 = *(v10 - 24);
      *v10 = *(v10 - 40);
      *(v10 + 16) = v13;
      *(v10 + 32) = *(v10 - 8);
      result = sub_22D749DBC(&v16, v10 - 40);
      v10 -= 40;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D7FD6F8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v90 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_22D792DD4(v9);
      v9 = result;
    }

    v98 = v9;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*v6)
      {
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_22D7FDDE4((*v6 + 40 * v84), (*v6 + 40 * *&v9[16 * v83 + 16]), *v6 + 40 * v85, v5);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22D792DD4(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        v98 = v9;
        result = sub_22D792D48(v83 - 1);
        v9 = v98;
        v83 = *(v98 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if ((v8 + 1) >= v7)
    {
      v7 = (v8 + 1);
      goto LABEL_22;
    }

    v11 = *v6;
    sub_22D75CCD8(*v6 + 40 * (v8 + 1), &v96);
    v5 = v10;
    v12 = 40 * v10;
    v13 = v11 + v12;
    sub_22D75CCD8(v11 + v12, v94);
    v14 = *(__swift_project_boxed_opaque_existential_0(&v96, v97) + 2);
    v15 = *(__swift_project_boxed_opaque_existential_0(v94, v95) + 2);
    __swift_destroy_boxed_opaque_existential_0(v94);
    result = __swift_destroy_boxed_opaque_existential_0(&v96);
    v88 = v5;
    v16 = (v5 + 2);
    v17 = v13 + 80;
    while (v7 != v16)
    {
      v5 = v14 < v15;
      sub_22D75CCD8(v17, &v96);
      sub_22D75CCD8(v17 - 40, v94);
      v18 = *(__swift_project_boxed_opaque_existential_0(&v96, v97) + 2);
      v19 = *(__swift_project_boxed_opaque_existential_0(v94, v95) + 2);
      __swift_destroy_boxed_opaque_existential_0(v94);
      result = __swift_destroy_boxed_opaque_existential_0(&v96);
      ++v16;
      v17 += 40;
      if (v14 < v15 == v18 >= v19)
      {
        v7 = (v16 - 1);
        break;
      }
    }

    if (v14 < v15)
    {
      if (v7 < v88)
      {
        goto LABEL_121;
      }

      if (v88 >= v7)
      {
        v10 = v88;
        goto LABEL_22;
      }

      v91 = v6;
      v20 = 40 * v7 - 40;
      v5 = v7;
      v21 = v88;
      do
      {
        if (v21 != --v5)
        {
          v26 = *v91;
          if (!*v91)
          {
            goto LABEL_127;
          }

          v22 = v26 + v12;
          v23 = v26 + v20;
          sub_22D749DBC((v26 + v12), &v96);
          v24 = *(v23 + 32);
          v25 = *(v23 + 16);
          *v22 = *v23;
          *(v22 + 16) = v25;
          *(v22 + 32) = v24;
          result = sub_22D749DBC(&v96, v23);
        }

        ++v21;
        v20 -= 40;
        v12 += 40;
      }

      while (v21 < v5);
      v6 = v91;
    }

    v10 = v88;
LABEL_22:
    v27 = v6[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_122;
        }

        if (v10 + a4 >= v27)
        {
          v28 = v6[1];
        }

        else
        {
          v28 = v10 + a4;
        }

        if (v28 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

    v28 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22D792ECC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_22D792ECC((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v28;
    v33 = *v90;
    if (!*v90)
    {
      goto LABEL_129;
    }

    v92 = v28;
    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_51:
          if (v38)
          {
            goto LABEL_108;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_115;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_65:
        if (v56)
        {
          goto LABEL_110;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_72:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v5 = *&v9[16 * v72 + 32];
        v73 = *&v9[16 * v34 + 40];
        sub_22D7FDDE4((*v6 + 40 * v5), (*v6 + 40 * *&v9[16 * v34 + 32]), *v6 + 40 * v73, v33);
        if (v4)
        {
        }

        if (v73 < v5)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22D792DD4(v9);
        }

        if (v72 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v74 = &v9[16 * v72];
        *(v74 + 4) = v5;
        *(v74 + 5) = v73;
        v98 = v9;
        result = sub_22D792D48(v34);
        v9 = v98;
        v31 = *(v98 + 2);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_106;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_107;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_109;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_112;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_116;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v92;
    if (v92 >= v7)
    {
      goto LABEL_92;
    }
  }

  v93 = v6;
  v5 = *v6;
  v75 = *v6 + 40 * v7;
  v89 = v10;
  v76 = (v10 - v7);
LABEL_83:
  v77 = v76;
  v78 = v75;
  while (1)
  {
    sub_22D75CCD8(v78, &v96);
    sub_22D75CCD8(v78 - 40, v94);
    v79 = *(__swift_project_boxed_opaque_existential_0(&v96, v97) + 2);
    v80 = *(__swift_project_boxed_opaque_existential_0(v94, v95) + 2);
    __swift_destroy_boxed_opaque_existential_0(v94);
    result = __swift_destroy_boxed_opaque_existential_0(&v96);
    if (v79 >= v80)
    {
LABEL_82:
      ++v7;
      v75 += 40;
      --v76;
      if (v7 != v28)
      {
        goto LABEL_83;
      }

      v6 = v93;
      v10 = v89;
      if (v28 < v89)
      {
        goto LABEL_119;
      }

      goto LABEL_32;
    }

    if (!v5)
    {
      break;
    }

    sub_22D749DBC(v78, &v96);
    v81 = *(v78 - 24);
    *v78 = *(v78 - 40);
    *(v78 + 16) = v81;
    *(v78 + 32) = *(v78 - 8);
    sub_22D749DBC(&v96, v78 - 40);
    v78 -= 40;
    if (__CFADD__(v77++, 1))
    {
      goto LABEL_82;
    }
  }

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
  return result;
}

uint64_t sub_22D7FDDE4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[40 * v11] <= a4)
    {
      memmove(a4, __src, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
LABEL_32:
      v19 = v6;
    }

    else
    {
      do
      {
        v19 = v6 - 40;
        v20 = (v12 - 40);
        v5 -= 40;
        while (1)
        {
          v12 = (v20 + 40);
          v23 = (v5 + 40);
          sub_22D75CCD8(v20, v34);
          sub_22D75CCD8((v6 - 40), v32);
          v24 = *(__swift_project_boxed_opaque_existential_0(v34, v35) + 2);
          v25 = *(__swift_project_boxed_opaque_existential_0(v32, v33) + 2);
          __swift_destroy_boxed_opaque_existential_0(v32);
          __swift_destroy_boxed_opaque_existential_0(v34);
          if (v24 < v25)
          {
            break;
          }

          if (v23 != v12)
          {
            v26 = *v20;
            v27 = *(v20 + 16);
            *(v5 + 32) = *(v20 + 32);
            *v5 = v26;
            *(v5 + 16) = v27;
          }

          v21 = v20 - 40;
          v5 -= 40;
          v22 = v20 > v4;
          v20 -= 40;
          if (!v22)
          {
            v12 = (v21 + 40);
            goto LABEL_32;
          }
        }

        if (v23 != v6)
        {
          v28 = *v19;
          v29 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v28;
          *(v5 + 16) = v29;
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 40;
      }

      while (v19 > v7);
      v12 = (v20 + 40);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      while (1)
      {
        sub_22D75CCD8(v6, v34);
        sub_22D75CCD8(v4, v32);
        v13 = *(__swift_project_boxed_opaque_existential_0(v34, v35) + 2);
        v14 = *(__swift_project_boxed_opaque_existential_0(v32, v33) + 2);
        __swift_destroy_boxed_opaque_existential_0(v32);
        __swift_destroy_boxed_opaque_existential_0(v34);
        if (v13 >= v14)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 40;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 40;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 40;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 1);
      *(v7 + 4) = *(v15 + 4);
      *v7 = v17;
      *(v7 + 1) = v18;
      goto LABEL_13;
    }

LABEL_15:
    v19 = v7;
  }

  v30 = (v12 - v4) / 40;
  if (v19 != v4 || v19 >= &v4[40 * v30])
  {
    memmove(v19, v4, 40 * v30);
  }

  return 1;
}

uint64_t sub_22D7FE0C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - v14;
  (*(v13 + 16))(&v68 - v14, a4, v12);
  v74 = &type metadata for AlarmContextProxy;
  v75 = &off_2840DAB18;
  v16 = swift_allocObject();
  v73[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a6;
  *(v16 + 40) = a3;
  sub_22D81A398();
  sub_22D81AE28();
  if (v71 != 3 && (v71 & 1) != 0)
  {
    (*(v13 + 8))(v15, v12);
    v17 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0x746977206D657449, 0xED00002064692068);
    v18 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v19 = *v18;
    v20 = v18[1];
    sub_22D81A398();
    MEMORY[0x2318D1A50](v19, v20);

    v21 = 0xD000000000000033;
    v22 = 0x800000022D82C630;
LABEL_6:
    MEMORY[0x2318D1A50](v21, v22);
    v28 = sub_22D81B2B8();

    [v17 logInfo_];

LABEL_7:
    v29 = 1;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v73);
    return v29;
  }

  v23 = sub_22D802910();
  if (*(v23 + 16) < *(a5 + 112))
  {
    (*(v13 + 8))(v15, v12);

    v17 = objc_opt_self();
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_22D81B838();

    v70 = 0xD000000000000018;
    v71 = 0x800000022D82C610;
    *&v69[0] = *(a5 + 112);
    v24 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v24);

    MEMORY[0x2318D1A50](0x20726F6620, 0xE500000000000000);
    v25 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v26 = *v25;
    v27 = v25[1];
    sub_22D81A398();
    MEMORY[0x2318D1A50](v26, v27);

    v21 = 0x7270206E6163202CLL;
    v22 = 0xED0000646565636FLL;
    goto LABEL_6;
  }

  v31 = objc_opt_self();
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D82C4C0);
  *&v69[0] = *(a5 + 112);
  v32 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v32);

  MEMORY[0x2318D1A50](0x20726F6620, 0xE500000000000000);
  v33 = __swift_project_boxed_opaque_existential_0(v73, v74);
  v34 = *v33;
  v35 = v33[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v34, v35);

  MEMORY[0x2318D1A50](0xD000000000000015, 0x800000022D82C4E0);
  v36 = sub_22D81B2B8();

  [v31 logInfo_];

  *&v69[0] = v23;
  sub_22D81A398();
  v37 = sub_22D7EE0E0(v69);
  MEMORY[0x28223BE20](v37);
  *(&v68 - 2) = v73;
  v39 = sub_22D7EDE60(sub_22D8031D4, (&v68 - 4), v38);
  if (!*(v39 + 2))
  {

    if (__swift_project_boxed_opaque_existential_0(v73, v74)[3])
    {
      *&v69[0] = v23;
      sub_22D81A398();
      sub_22D81A198();
      sub_22D802004(v69, a5);

      (*(v13 + 8))(v15, v12);
      v50 = *(*&v69[0] + 16);
      if (v50)
      {
        sub_22D75CCD8(*&v69[0] + 40 * v50 - 8, v69);

        sub_22D749DBC(v69, &v70);
        *&v69[0] = 0;
        *(&v69[0] + 1) = 0xE000000000000000;
        sub_22D81B838();
        MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82C500);
        v51 = __swift_project_boxed_opaque_existential_0(v73, v74);
        v52 = *v51;
        v53 = v51[1];
        sub_22D81A398();
        MEMORY[0x2318D1A50](v52, v53);

        MEMORY[0x2318D1A50](0xD000000000000029, 0x800000022D82C5E0);
        v54 = __swift_project_boxed_opaque_existential_0(&v70, v72);
        v55 = *v54;
        v56 = v54[1];
        sub_22D81A398();
        MEMORY[0x2318D1A50](v55, v56);

        v57 = sub_22D81B2B8();

        [v31 logInfo_];

        v58 = __swift_project_boxed_opaque_existential_0(&v70, v72);
        v59 = *v58;
        v60 = v58[1];
        v61 = objc_opt_self();
        sub_22D81A398();
        if (([v61 isRunningUnitTest] & 1) == 0)
        {
          sub_22D7EFBAC(v59, v60);
        }

        v66 = *(a5 + 120);
        __swift_project_boxed_opaque_existential_0(&v70, v72);
        sub_22D81A398();
        v67 = sub_22D81B2B8();

        [v66 endAlertForIdentifier:v67 isAlarm:{*(__swift_project_boxed_opaque_existential_0(&v70, v72) + 24)}];

        goto LABEL_12;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82C5A0);
    v62 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v63 = *v62;
    v64 = v62[1];
    sub_22D81A398();
    MEMORY[0x2318D1A50](v63, v64);

    MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D82C5C0);
    v65 = sub_22D81B2B8();

    [v31 logInfo_];

    v29 = 0;
    goto LABEL_8;
  }

  (*(v13 + 8))(v15, v12);

  if (*(v39 + 2))
  {
    sub_22D75CCD8(v39 + 32, v69);

    sub_22D749DBC(v69, &v70);
    *&v69[0] = 0;
    *(&v69[0] + 1) = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D82C500);
    v40 = __swift_project_boxed_opaque_existential_0(v73, v74);
    v41 = *v40;
    v42 = v40[1];
    sub_22D81A398();
    MEMORY[0x2318D1A50](v41, v42);

    MEMORY[0x2318D1A50](0xD000000000000025, 0x800000022D82C520);
    v43 = __swift_project_boxed_opaque_existential_0(&v70, v72);
    v44 = *v43;
    v45 = v43[1];
    sub_22D81A398();
    MEMORY[0x2318D1A50](v44, v45);

    v46 = sub_22D81B2B8();

    [v31 logInfo_];

    v47 = __swift_project_boxed_opaque_existential_0(&v70, v72);
    v48 = *v47;
    v49 = v47[1];
    sub_22D81A398();
    sub_22D7EFBAC(v48, v49);

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(&v70);
    goto LABEL_7;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22D7FEBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a6;
  v7[7] = v11;
  v7[8] = v12;

  return MEMORY[0x2822009F8](sub_22D7FECCC, a5, 0);
}

uint64_t sub_22D7FECCC()
{
  sub_22D7F3B5C(*(v0 + 64));
  v5 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_22D7FED88;
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  return v5(v2, v3);
}

uint64_t sub_22D7FED88()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22D7FEEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a7;
  v7[2] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a6;
  v7[7] = v11;
  v7[8] = v12;

  return MEMORY[0x2822009F8](sub_22D7FEFBC, a5, 0);
}

uint64_t sub_22D7FEFBC()
{
  sub_22D7F3874(*(v0 + 64));
  v5 = (*MEMORY[0x277CB92A0] + MEMORY[0x277CB92A0]);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_22D8038B8;
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  return v5(v2, v3);
}

uint64_t sub_22D7FF078(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for ActivityKitProvider();
  v19[3] = v8;
  v19[4] = &off_2840DA658;
  v19[0] = a2;
  type metadata accessor for ActivityAttributesProvider();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v17 = v8;
  v18 = &off_2840DA658;
  *&v16 = v14;
  swift_defaultActor_initialize();
  strcpy((v9 + 168), "alarmkit-alarm");
  *(v9 + 183) = -18;
  *(v9 + 184) = 0xD000000000000014;
  *(v9 + 192) = 0x800000022D829320;
  *(v9 + 200) = 0xD000000000000016;
  *(v9 + 208) = 0x800000022D82B260;
  *(v9 + 112) = 20;
  *(v9 + 120) = a1;
  if ((a4 & 1) == 0)
  {
    *(v9 + 112) = a3;
  }

  sub_22D749DBC(&v16, v9 + 128);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v9;
}

uint64_t sub_22D7FF23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7F6EA0(v2, v3, v4);
}

uint64_t sub_22D7FF2E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22D744B08;

  return sub_22D7FA6B0(v2, v3, v5, v4);
}

uint64_t sub_22D7FF390()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7F78E0(v2, v3, v4);
}

uint64_t sub_22D7FF438()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22D744B08;

  return sub_22D7F7FA4(v2, v3, v5, v4);
}

uint64_t sub_22D7FF4E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7F859C(v2, v3, v4);
}

uint64_t sub_22D7FF58C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7F8F98(v2, v3, v4);
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D7FF67C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22D744B08;

  return sub_22D7F9680(v2, v3, v5, v4);
}

uint64_t sub_22D7FF728()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B0C;

  return sub_22D7F9CC4(v2, v3, v4);
}

uint64_t objectdestroy_3Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D7FF810()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22D744B08;

  return sub_22D7FA0E0(v2, v3, v5, v4);
}

unint64_t sub_22D7FF8BC()
{
  result = qword_280CD2BC8;
  if (!qword_280CD2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BC8);
  }

  return result;
}

unint64_t sub_22D7FF910()
{
  result = qword_280CD1650[0];
  if (!qword_280CD1650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD1650);
  }

  return result;
}

unint64_t sub_22D7FF964()
{
  result = qword_280CD29B0;
  if (!qword_280CD29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD29B0);
  }

  return result;
}

uint64_t sub_22D7FF9B8(uint64_t a1)
{
  result = sub_22D80383C(&qword_27DA03978, 255, MEMORY[0x277CB9A20], &protocol conformance descriptor for AlarmPresentationState);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7FFA18()
{
  result = qword_280CD2BA8;
  if (!qword_280CD2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BA8);
  }

  return result;
}

unint64_t sub_22D7FFA70()
{
  result = qword_280CD2BC0;
  if (!qword_280CD2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BC0);
  }

  return result;
}

unint64_t sub_22D7FFAC8()
{
  result = qword_280CD2BB8;
  if (!qword_280CD2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BB8);
  }

  return result;
}

unint64_t sub_22D7FFB20()
{
  result = qword_280CD2BB0;
  if (!qword_280CD2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BB0);
  }

  return result;
}

unint64_t sub_22D7FFB78()
{
  result = qword_27DA03980;
  if (!qword_27DA03980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MTAlarmCustomContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MTAlarmCustomContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_22D800058()
{
  result = qword_27DA03988;
  if (!qword_27DA03988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03988);
  }

  return result;
}

unint64_t sub_22D8000B0()
{
  result = qword_280CD15B0;
  if (!qword_280CD15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA03648, &qword_22D825560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD15B0);
  }

  return result;
}

uint64_t sub_22D800250(uint64_t a1, uint64_t a2)
{
  result = sub_22D80383C(qword_280CD1BA8, a2, type metadata accessor for ActivityAttributesProvider, &unk_22D8266EC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D8002AC()
{
  result = qword_280CD2BD0;
  if (!qword_280CD2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BD0);
  }

  return result;
}

unint64_t sub_22D800304()
{
  result = qword_280CD2BD8;
  if (!qword_280CD2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BD8);
  }

  return result;
}

uint64_t objectdestroy_81Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_22D8003C8()
{
  result = qword_280CD29B8[0];
  if (!qword_280CD29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD29B8);
  }

  return result;
}

uint64_t sub_22D80041C(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v98 = a5;
  v90 = sub_22D81A8C8();
  v9 = MEMORY[0x28223BE20](v90);
  v83 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v80[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v80[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v84 = &v80[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v80[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v88 = &v80[-v21];
  MEMORY[0x28223BE20](v20);
  v25 = a2 - a1;
  v26 = (a2 - a1) / 40;
  v27 = a3 - a2;
  v28 = (a3 - a2) / 40;
  if (v26 >= v28)
  {
    v87 = v23;
    v51 = a2;
    if (a4 != a2 || &a2[40 * v28] <= a4)
    {
      v52 = v24;
      memmove(a4, a2, 40 * v28);
      v24 = v52;
    }

    v31 = &a4[40 * v28];
    if (v27 < 40 || v51 <= a1)
    {
      v50 = v51;
    }

    else
    {
      v84 = (v24 + 8);
      v85 = a1;
      v92 = a4;
      v86 = (v24 + 32);
      do
      {
        v93 = v51;
        v53 = (v51 - 40);
        v54 = (v31 - 40);
        a3 -= 40;
        v88 = v51 - 40;
        v55 = &off_278771000;
        while (1)
        {
          sub_22D75CCD8(v54, v96);
          sub_22D75CCD8(v53, v94);
          v58 = *(v98 + 120);
          __swift_project_boxed_opaque_existential_0(v96, v97);
          sub_22D81A398();
          v59 = sub_22D81B2B8();

          v60 = [v58 v55[211]];

          if (v60)
          {
            v91 = a3;
            v61 = v55;
            v62 = v89;
            sub_22D81A878();

            v63 = v87;
            v64 = *v86;
            v65 = v62;
            v66 = v90;
            (*v86)(v87, v65, v90);
            __swift_project_boxed_opaque_existential_0(v94, v95);
            sub_22D81A398();
            v67 = sub_22D81B2B8();

            v68 = [v58 v61 + 2473];

            if (v68)
            {
              v69 = v83;
              sub_22D81A878();

              v70 = v82;
              (v64)(v82, v69, v66);
              v71 = sub_22D81A898();
              v72 = *v84;
              (*v84)(v70, v66);
              v72(v63, v66);
              v73 = v71 == 1;
            }

            else
            {
              (*v84)(v63, v66);
              v73 = 1;
            }

            a3 = v91;
            a4 = v92;
            v53 = v88;
            a1 = v85;
            v55 = &off_278771000;
          }

          else
          {
            v73 = 1;
          }

          __swift_destroy_boxed_opaque_existential_0(v94);
          __swift_destroy_boxed_opaque_existential_0(v96);
          if (v73)
          {
            break;
          }

          if (a3 + 40 != (v54 + 40))
          {
            v74 = *v54;
            v75 = *(v54 + 16);
            *(a3 + 4) = *(v54 + 32);
            *a3 = v74;
            *(a3 + 1) = v75;
          }

          v56 = v54 - 40;
          a3 -= 40;
          v57 = v54 > a4;
          v54 -= 40;
          if (!v57)
          {
            v31 = (v56 + 40);
            v50 = v93;
            goto LABEL_44;
          }
        }

        if (a3 + 40 != v93)
        {
          v76 = *v53;
          v77 = *(v53 + 16);
          *(a3 + 4) = *(v53 + 32);
          *a3 = v76;
          *(a3 + 1) = v77;
        }

        v31 = (v54 + 40);
        if (v54 + 40 <= a4)
        {
          break;
        }

        v51 = v88;
      }

      while (v88 > a1);
      v31 = (v54 + 40);
      v50 = v88;
    }
  }

  else
  {
    v89 = &v80[-v22];
    v29 = a2;
    if (a4 != a1 || &a1[40 * v26] <= a4)
    {
      v30 = v24;
      memmove(a4, a1, 40 * v26);
      v24 = v30;
    }

    v31 = &a4[40 * v26];
    v32 = v90;
    if (v25 >= 40 && v29 < a3)
    {
      v33 = v29;
      v34 = (v24 + 32);
      v86 = (v24 + 8);
      v87 = v31;
      while (1)
      {
        v93 = v33;
        sub_22D75CCD8(v33, v96);
        sub_22D75CCD8(a4, v94);
        v35 = *(v98 + 120);
        __swift_project_boxed_opaque_existential_0(v96, v97);
        sub_22D81A398();
        v36 = sub_22D81B2B8();

        v37 = [v35 fireDateForId:v36 isAlarm:{*(__swift_project_boxed_opaque_existential_0(v96, v97) + 24)}];

        if (!v37)
        {
          goto LABEL_14;
        }

        v92 = a4;
        v38 = v88;
        sub_22D81A878();

        v39 = v89;
        v91 = *v34;
        (v91)(v89, v38, v32);
        __swift_project_boxed_opaque_existential_0(v94, v95);
        sub_22D81A398();
        v40 = v32;
        v41 = sub_22D81B2B8();

        v42 = [v35 fireDateForId:v41 isAlarm:{*(__swift_project_boxed_opaque_existential_0(v96, v97) + 24)}];

        if (!v42)
        {
          break;
        }

        v43 = v84;
        sub_22D81A878();

        v44 = v81;
        (v91)(v81, v43, v40);
        v45 = sub_22D81A898();
        v46 = *v86;
        (*v86)(v44, v40);
        v46(v39, v40);
        __swift_destroy_boxed_opaque_existential_0(v94);
        __swift_destroy_boxed_opaque_existential_0(v96);
        a4 = v92;
        v32 = v40;
        v31 = v87;
        if (v45 == 1)
        {
          goto LABEL_15;
        }

        v47 = v92;
        a4 = v92 + 40;
        v33 = v93;
        if (a1 != v92)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 += 40;
        if (a4 >= v31 || v33 >= a3)
        {
          goto LABEL_19;
        }
      }

      (*v86)(v39, v40);
      a4 = v92;
      v32 = v40;
      v31 = v87;
LABEL_14:
      __swift_destroy_boxed_opaque_existential_0(v94);
      __swift_destroy_boxed_opaque_existential_0(v96);
LABEL_15:
      v47 = v93;
      v33 = (v93 + 40);
      if (a1 == v93)
      {
        goto LABEL_17;
      }

LABEL_16:
      v48 = *v47;
      v49 = *(v47 + 1);
      *(a1 + 4) = *(v47 + 4);
      *a1 = v48;
      *(a1 + 1) = v49;
      goto LABEL_17;
    }

LABEL_19:
    v50 = a1;
  }

LABEL_44:
  v78 = (v31 - a4) / 40;
  if (v50 != a4 || v50 >= &a4[40 * v78])
  {
    memmove(v50, a4, 40 * v78);
  }

  return 1;
}

uint64_t sub_22D800C40(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;
  sub_22D81A198();
  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_22D792DD4(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      v25 = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = (v10 + 40 * v14);
      sub_22D81A198();
      sub_22D80041C(v25, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_22D800DEC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v149 = a4;
  v148 = a1;
  v169 = sub_22D81A8C8();
  v7 = MEMORY[0x28223BE20](v169);
  v163 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v162 = &v146 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v165 = &v146 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v151 = &v146 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v150 = &v146 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v146 - v19;
  MEMORY[0x28223BE20](v18);
  v175 = MEMORY[0x277D84F90];
  v158 = a3;
  v23 = a3[1];
  if (v23 >= 1)
  {
    v153 = &v146 - v21;
    v164 = v22;
    v24 = (v20 + 32);
    v166 = (v20 + 8);
    swift_retain_n();
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
    v27 = &off_278771000;
    v161 = a5;
    v167 = v24;
    while (1)
    {
      v152 = v26;
      if (v25 + 1 >= v23)
      {
        v23 = v25 + 1;
        v47 = v149;
      }

      else
      {
        v28 = a5;
        v29 = *v158;
        sub_22D75CCD8(*v158 + 40 * (v25 + 1), &v173);
        sub_22D75CCD8(v29 + 40 * v25, v171);
        v30 = v160;
        LODWORD(v170) = sub_22D7FAC08(&v173, v171, v28);
        v160 = v30;
        if (v30)
        {
          __swift_destroy_boxed_opaque_existential_0(v171);
          __swift_destroy_boxed_opaque_existential_0(&v173);
          goto LABEL_106;
        }

        __swift_destroy_boxed_opaque_existential_0(v171);
        __swift_destroy_boxed_opaque_existential_0(&v173);
        v31 = v25 + 2;
        v147 = v25;
        v168 = 40 * v25;
        v32 = v29 + 40 * v25 + 80;
        v159 = v23;
        while (1)
        {
          a5 = v161;
          if (v23 == v31)
          {
            break;
          }

          sub_22D75CCD8(v32, &v173);
          sub_22D75CCD8(v32 - 40, v171);
          v34 = *(a5 + 120);
          __swift_project_boxed_opaque_existential_0(&v173, v174);
          sub_22D81A398();
          v35 = sub_22D81B2B8();

          v36 = [v34 fireDateForId:v35 isAlarm:{*(__swift_project_boxed_opaque_existential_0(&v173, v174) + 24)}];

          if (v36)
          {
            v37 = v154;
            sub_22D81A878();

            v38 = *v24;
            v39 = v153;
            (*v24)(v153, v37, v169);
            __swift_project_boxed_opaque_existential_0(v171, v172);
            sub_22D81A398();
            v40 = sub_22D81B2B8();

            v41 = [v34 fireDateForId:v40 isAlarm:{*(__swift_project_boxed_opaque_existential_0(&v173, v174) + 24)}];

            if (v41)
            {
              v42 = v151;
              sub_22D81A878();

              v43 = v150;
              v44 = v169;
              v38(v150, v42, v169);
              v45 = sub_22D81A898();
              v46 = *v166;
              (*v166)(v43, v44);
              v46(v39, v44);
              v33 = v45 == 1;
            }

            else
            {
              (*v166)(v39, v169);
              v33 = 1;
            }

            v23 = v159;
          }

          else
          {
            v33 = 1;
          }

          __swift_destroy_boxed_opaque_existential_0(v171);
          __swift_destroy_boxed_opaque_existential_0(&v173);
          ++v31;
          v32 += 40;
          if ((v170 & 1) != v33)
          {
            v23 = v31 - 1;
            a5 = v161;
            break;
          }
        }

        v47 = v149;
        v27 = &off_278771000;
        v25 = v147;
        if (v170)
        {
          if (v23 < v147)
          {
            goto LABEL_129;
          }

          if (v147 < v23)
          {
            v48 = 40 * v23 - 40;
            v49 = v147;
            v50 = v23;
            v51 = v168;
            do
            {
              if (v49 != --v50)
              {
                v57 = v51;
                v58 = *v158;
                if (!*v158)
                {
                  goto LABEL_132;
                }

                v52 = v57;
                v53 = v58 + v57;
                v54 = v58 + v48;
                sub_22D749DBC((v58 + v57), &v173);
                v55 = *(v54 + 32);
                v56 = *(v54 + 16);
                *v53 = *v54;
                *(v53 + 16) = v56;
                *(v53 + 32) = v55;
                sub_22D749DBC(&v173, v54);
                v51 = v52;
                a5 = v161;
                v47 = v149;
              }

              ++v49;
              v48 -= 40;
              v51 += 40;
            }

            while (v49 < v50);
            v27 = &off_278771000;
            v25 = v147;
          }
        }
      }

      v59 = v158[1];
      if (v23 >= v59)
      {
        goto LABEL_50;
      }

      if (__OFSUB__(v23, v25))
      {
        goto LABEL_126;
      }

      if (v23 - v25 >= v47)
      {
        goto LABEL_50;
      }

      if (__OFADD__(v25, v47))
      {
        goto LABEL_127;
      }

      if (v25 + v47 < v59)
      {
        v59 = v25 + v47;
      }

      if (v59 < v25)
      {
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:

        __break(1u);
LABEL_131:

        __break(1u);
LABEL_132:

        __break(1u);
LABEL_133:

        __break(1u);
LABEL_134:

        __break(1u);
        return result;
      }

      if (v23 == v59)
      {
        goto LABEL_50;
      }

      v155 = v59;
      v60 = *v158;
      v170 = *(a5 + 120);
      v168 = v60;
      v61 = v60 + 40 * v23;
      v147 = v25;
      v62 = v25 - v23;
      while (2)
      {
        v159 = v23;
        v156 = v62;
        v157 = v61;
        v63 = v61;
        do
        {
          sub_22D75CCD8(v63, &v173);
          sub_22D75CCD8(v63 - 40, v171);
          __swift_project_boxed_opaque_existential_0(&v173, v174);
          sub_22D81A398();
          v64 = sub_22D81B2B8();

          v65 = __swift_project_boxed_opaque_existential_0(&v173, v174);
          v66 = [v170 v27[211]];

          if (!v66)
          {
            goto LABEL_44;
          }

          v67 = v165;
          sub_22D81A878();

          v68 = *v167;
          v69 = v164;
          v70 = v67;
          v27 = &off_278771000;
          (*v167)(v164, v70, v169);
          __swift_project_boxed_opaque_existential_0(v171, v172);
          sub_22D81A398();
          v71 = sub_22D81B2B8();

          v72 = __swift_project_boxed_opaque_existential_0(&v173, v174);
          v73 = [v170 fireDateForId:v71 isAlarm:*(v72 + 24)];

          if (!v73)
          {
            (*v166)(v69, v169);
LABEL_44:
            __swift_destroy_boxed_opaque_existential_0(v171);
            __swift_destroy_boxed_opaque_existential_0(&v173);
            goto LABEL_45;
          }

          v74 = v163;
          sub_22D81A878();

          v75 = v169;
          v76 = v68;
          v77 = v162;
          v76(v162, v74, v169);
          v78 = sub_22D81A898();
          v79 = *v166;
          v80 = v77;
          v81 = v75;
          v27 = &off_278771000;
          (*v166)(v80, v81);
          v79(v69, v81);
          __swift_destroy_boxed_opaque_existential_0(v171);
          __swift_destroy_boxed_opaque_existential_0(&v173);
          if (v78 != 1)
          {
            break;
          }

LABEL_45:
          if (!v168)
          {
            goto LABEL_130;
          }

          sub_22D749DBC(v63, &v173);
          v82 = *(v63 - 24);
          *v63 = *(v63 - 40);
          *(v63 + 16) = v82;
          *(v63 + 32) = *(v63 - 8);
          sub_22D749DBC(&v173, v63 - 40);
          v63 -= 40;
        }

        while (!__CFADD__(v62++, 1));
        v23 = v159 + 1;
        v61 = v157 + 40;
        v62 = v156 - 1;
        if (v159 + 1 != v155)
        {
          continue;
        }

        break;
      }

      v24 = v167;
      v25 = v147;
      v23 = v155;
LABEL_50:
      if (v23 < v25)
      {
        goto LABEL_125;
      }

      v155 = v23;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v152;
      }

      else
      {
        v26 = sub_22D792ECC(0, *(v152 + 2) + 1, 1, v152);
      }

      v85 = *(v26 + 2);
      v84 = *(v26 + 3);
      v86 = v85 + 1;
      if (v85 >= v84 >> 1)
      {
        v26 = sub_22D792ECC((v84 > 1), v85 + 1, 1, v26);
      }

      *(v26 + 2) = v86;
      v87 = v26 + 32;
      v88 = &v26[16 * v85 + 32];
      v89 = v155;
      *v88 = v25;
      *(v88 + 1) = v89;
      v175 = v26;
      v170 = *v148;
      if (!v170)
      {
        goto LABEL_133;
      }

      if (v85)
      {
        v168 = (v26 + 32);
        while (1)
        {
          v90 = v86 - 1;
          if (v86 >= 4)
          {
            break;
          }

          if (v86 == 3)
          {
            v91 = *(v26 + 4);
            v92 = *(v26 + 5);
            v101 = __OFSUB__(v92, v91);
            v93 = v92 - v91;
            v94 = v101;
LABEL_71:
            if (v94)
            {
              goto LABEL_116;
            }

            v107 = &v26[16 * v86];
            v109 = *v107;
            v108 = *(v107 + 1);
            v110 = __OFSUB__(v108, v109);
            v111 = v108 - v109;
            v112 = v110;
            if (v110)
            {
              goto LABEL_119;
            }

            v113 = &v87[16 * v90];
            v115 = *v113;
            v114 = *(v113 + 1);
            v101 = __OFSUB__(v114, v115);
            v116 = v114 - v115;
            if (v101)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v111, v116))
            {
              goto LABEL_123;
            }

            if (v111 + v116 >= v93)
            {
              if (v93 < v116)
              {
                v90 = v86 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v117 = &v26[16 * v86];
          v119 = *v117;
          v118 = *(v117 + 1);
          v101 = __OFSUB__(v118, v119);
          v111 = v118 - v119;
          v112 = v101;
LABEL_85:
          if (v112)
          {
            goto LABEL_118;
          }

          v120 = &v87[16 * v90];
          v122 = *v120;
          v121 = *(v120 + 1);
          v101 = __OFSUB__(v121, v122);
          v123 = v121 - v122;
          if (v101)
          {
            goto LABEL_121;
          }

          if (v123 < v111)
          {
            goto LABEL_3;
          }

LABEL_92:
          if (v90 - 1 >= v86)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
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
            goto LABEL_128;
          }

          v128 = *v158;
          if (!*v158)
          {
            goto LABEL_131;
          }

          v129 = v26;
          v130 = &v87[16 * v90 - 16];
          v131 = *v130;
          v132 = v90;
          v133 = &v87[16 * v90];
          v134 = *(v133 + 1);
          v135 = (v128 + 40 * *v130);
          v136 = (v128 + 40 * *v133);
          v137 = (v128 + 40 * v134);
          v138 = v161;
          sub_22D81A198();
          v139 = v135;
          v140 = v160;
          sub_22D80041C(v139, v136, v137, v170, v138);
          v160 = v140;
          if (v140)
          {

            v175 = v129;
            goto LABEL_106;
          }

          if (v134 < v131)
          {
            goto LABEL_111;
          }

          v141 = *(v129 + 16);
          if (v132 > v141)
          {
            goto LABEL_112;
          }

          *v130 = v131;
          *(v130 + 1) = v134;
          if (v132 >= v141)
          {
            goto LABEL_113;
          }

          v86 = v141 - 1;
          memmove(v133, v133 + 16, 16 * (v141 - 1 - v132));
          v26 = v129;
          *(v129 + 16) = v141 - 1;
          v24 = v167;
          v87 = v168;
          v27 = &off_278771000;
          if (v141 <= 2)
          {
LABEL_3:
            v175 = v26;
            goto LABEL_4;
          }
        }

        v95 = &v87[16 * v86];
        v96 = *(v95 - 8);
        v97 = *(v95 - 7);
        v101 = __OFSUB__(v97, v96);
        v98 = v97 - v96;
        if (v101)
        {
          goto LABEL_114;
        }

        v100 = *(v95 - 6);
        v99 = *(v95 - 5);
        v101 = __OFSUB__(v99, v100);
        v93 = v99 - v100;
        v94 = v101;
        if (v101)
        {
          goto LABEL_115;
        }

        v102 = &v26[16 * v86];
        v104 = *v102;
        v103 = *(v102 + 1);
        v101 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v101)
        {
          goto LABEL_117;
        }

        v101 = __OFADD__(v93, v105);
        v106 = v93 + v105;
        if (v101)
        {
          goto LABEL_120;
        }

        if (v106 >= v98)
        {
          v124 = &v87[16 * v90];
          v126 = *v124;
          v125 = *(v124 + 1);
          v101 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v101)
          {
            goto LABEL_124;
          }

          if (v93 < v127)
          {
            v90 = v86 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_4:
      v23 = v158[1];
      v25 = v155;
      a5 = v161;
      if (v155 >= v23)
      {
        goto LABEL_103;
      }
    }
  }

  swift_retain_n();
LABEL_103:
  v142 = *v148;
  if (!*v148)
  {
    goto LABEL_134;
  }

  sub_22D81A198();
  v143 = v142;
  v144 = v160;
  sub_22D800C40(&v175, v143, v158, a5);
  if (v144)
  {

LABEL_106:
  }

  else
  {
  }
}

uint64_t sub_22D801AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_22D81A8C8();
  v11 = MEMORY[0x28223BE20](v10);
  v49 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v42[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v42[-v16];
  result = MEMORY[0x28223BE20](v15);
  v20 = &v42[-v19];
  v43 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v57 = *(a5 + 120);
    v52 = (v18 + 32);
    v50 = (v18 + 8);
    v22 = v21 + 40 * a3;
    v23 = a1 - a3;
    v47 = v21;
LABEL_5:
    v45 = v22;
    v46 = a3;
    v44 = v23;
    v24 = v22;
    v25 = v52;
    while (1)
    {
      sub_22D75CCD8(v24, &v55);
      sub_22D75CCD8(v24 - 40, v54);
      __swift_project_boxed_opaque_existential_0(&v55, v56);
      sub_22D81A398();
      v26 = sub_22D81B2B8();

      v27 = __swift_project_boxed_opaque_existential_0(&v55, v56);
      v28 = [v57 fireDateForId:v26 isAlarm:*(v27 + 24)];

      if (!v28)
      {
        goto LABEL_11;
      }

      v29 = v51;
      sub_22D81A878();

      v30 = *v25;
      v30(v20, v29, v10);
      __swift_project_boxed_opaque_existential_0(v54, v54[3]);
      sub_22D81A398();
      v31 = sub_22D81B2B8();

      v32 = __swift_project_boxed_opaque_existential_0(&v55, v56);
      v33 = [v57 fireDateForId:v31 isAlarm:*(v32 + 24)];

      if (!v33)
      {
        break;
      }

      v34 = v49;
      sub_22D81A878();

      v35 = v20;
      v36 = v48;
      v37 = v52;
      v30(v48, v34, v10);
      v53 = sub_22D81A898();
      v38 = *v50;
      v39 = v36;
      v20 = v35;
      v21 = v47;
      (*v50)(v39, v10);
      v38(v20, v10);
      __swift_destroy_boxed_opaque_existential_0(v54);
      result = __swift_destroy_boxed_opaque_existential_0(&v55);
      v25 = v37;
      if (v53 != 1)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (!v21)
      {
        __break(1u);
        return result;
      }

      sub_22D749DBC(v24, &v55);
      v40 = *(v24 - 24);
      *v24 = *(v24 - 40);
      *(v24 + 16) = v40;
      *(v24 + 32) = *(v24 - 8);
      result = sub_22D749DBC(&v55, v24 - 40);
      v24 -= 40;
      if (__CFADD__(v23++, 1))
      {
LABEL_4:
        a3 = v46 + 1;
        v22 = v45 + 40;
        v23 = v44 - 1;
        if (v46 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    (*v50)(v20, v10);
    v25 = v52;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v54);
    result = __swift_destroy_boxed_opaque_existential_0(&v55);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_22D801EAC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_22D81BAC8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038A0, &qword_22D825CC0);
        v8 = sub_22D81B468();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_22D81A198();
      sub_22D800DEC(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_22D81A198();
    sub_22D801AC4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_22D802004(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22D792FEC(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  sub_22D81A198();
  sub_22D801EAC(v7, a2);

  *a1 = v4;
}

uint64_t sub_22D8020A8(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v29 = sub_22D81A918();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D81AFD8();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
  v10 = sub_22D81AAC8();
  v11 = v10;
  if (v10 >> 62)
  {
LABEL_18:
    v12 = sub_22D81B938();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v24 = v11 & 0xFFFFFFFFFFFFFF8;
      v25 = v11 & 0xC000000000000001;
      v22 = (v2 + 8);
      v23 = (v7 + 8);
      v21 = (v4 + 8);
      do
      {
        if (v25)
        {
          v7 = MEMORY[0x2318D1F70](v13, v11);
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v7;
          }
        }

        else
        {
          if (v13 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v7 = *(v11 + 8 * v13 + 32);
          sub_22D81A198();
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_14;
          }
        }

        sub_22D81AB08();
        v14 = v26;
        sub_22D81ABF8();
        (*v23)(v9, v14);
        v15 = v28;
        sub_22D81AF98();
        v16 = sub_22D81A8D8();
        v18 = v17;
        (*v22)(v15, v29);
        (*v21)(v6, v27);
        if (v16 == v31 && v18 == v30)
        {
          goto LABEL_15;
        }

        v2 = sub_22D81BB08();

        if (v2)
        {

          return v7;
        }

        ++v13;
      }

      while (v4 != v12);
    }
  }

  return 0;
}

double sub_22D80243C(uint64_t a1)
{
  v2 = sub_22D81A918();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A8C8();
  v33 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_22D81AF68();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81AF78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_22D81AF88();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277CB9A00])
  {
    (*(v15 + 8))(v17, v14);
    v19 = 1.79769313e308;
  }

  else if (v18 == *MEMORY[0x277CB9A10])
  {
    (*(v15 + 96))(v17, v14);
    v20 = v32;
    (*(v32 + 32))(v13, v17, v11);
    sub_22D81A7E8();
    sub_22D81A858();
    v22 = v21;
    v23 = *(v33 + 8);
    v23(v10, v5);
    sub_22D81AF58();
    sub_22D81A858();
    v25 = v24;
    v23(v8, v5);
    (*(v20 + 8))(v13, v11);
    v19 = v22 - v25;
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v19 = 0.0;
  }

  v26 = objc_opt_self();
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D82B6F0);
  sub_22D81B5C8();
  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D82C440);
  sub_22D81AF98();
  sub_22D80383C(&unk_280CD28F0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v27 = v36;
  v28 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v28);

  (*(v35 + 8))(v4, v27);
  v29 = sub_22D81B2B8();

  [v26 logInfo_];

  return v19;
}

unint64_t sub_22D802910()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v0 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v42 - v1;
  v56 = sub_22D81A918();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22D81AFD8();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  v6 = *(v50 - 8);
  v7 = MEMORY[0x28223BE20](v50);
  v52 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v42 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
  result = sub_22D81AAC8();
  if (result >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v41)
  {
    v12 = result;
    v67 = MEMORY[0x277D84F90];
    result = sub_22D7E8AEC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v13 = 0;
    v14 = v12;
    v49 = v12 & 0xC000000000000001;
    v15 = v67;
    v42 = v12 & 0xFFFFFFFFFFFFFF8;
    v46 = (v6 + 8);
    v45 = (v2 + 1);
    v44 = (v4 + 1);
    p_Description = &v0->Description;
    v48 = v12;
    v47 = i;
    while (1)
    {
      v59 = v15;
      if (v49)
      {
        MEMORY[0x2318D1F70](v13, v14);
        goto LABEL_10;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v13 >= *(v42 + 16))
      {
        goto LABEL_18;
      }

      sub_22D81A198();
LABEL_10:
      v16 = v51;
      sub_22D81AB08();
      v17 = v53;
      v18 = v50;
      sub_22D81ABF8();
      v19 = *v46;
      (*v46)(v16, v18);
      v20 = v55;
      sub_22D81AF98();
      v21 = sub_22D81A8D8();
      v23 = v22;
      (*v45)(v20, v56);
      (*v44)(v17, v54);
      v24 = v52;
      sub_22D81AB08();
      sub_22D81ABD8();
      v26 = v25;
      v19(v24, v18);
      v27 = v57;
      sub_22D81AAD8();
      v28 = v58;
      sub_22D81AE28();
      (*p_Description)(v27, v28);
      v29 = v64 != 3 && v63 == 0;
      v15 = v59;
      v0 = &type metadata for AlarmActivityProxy;
      v2 = &off_2840DAAC0;
      v65 = &type metadata for AlarmActivityProxy;
      v66 = &off_2840DAAC0;
      v30 = swift_allocObject();
      v63 = v30;

      *(v30 + 16) = v21;
      *(v30 + 24) = v23;
      *(v30 + 32) = v26;
      *(v30 + 40) = v29;
      v67 = v15;
      v32 = *(v15 + 16);
      v31 = *(v15 + 24);
      v6 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_22D7E8AEC((v31 > 1), v32 + 1, 1);
        v15 = v67;
      }

      ++v13;
      v33 = __swift_mutable_project_boxed_opaque_existential_1(&v63, v65);
      v4 = &v42;
      MEMORY[0x28223BE20](v33);
      v35 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      v37 = *v35;
      v38 = *(v35 + 1);
      v39 = *(v35 + 2);
      LOBYTE(v35) = v35[24];
      v61 = &type metadata for AlarmActivityProxy;
      v62 = &off_2840DAAC0;
      v40 = swift_allocObject();
      *&v60 = v40;
      *(v40 + 16) = v37;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      *(v40 + 40) = v35;
      *(v15 + 16) = v6;
      sub_22D749DBC(&v60, v15 + 40 * v32 + 32);
      result = __swift_destroy_boxed_opaque_existential_0(&v63);
      v14 = v48;
      if (v47 == v13)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v41 = result;
    i = sub_22D81B938();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22D802FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7F4734(a1, v4, v5, v6);
}

uint64_t sub_22D803064(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22D81AFD8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_22D744B08;

  return sub_22D7F42E0(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

BOOL sub_22D8031D4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(__swift_project_boxed_opaque_existential_0(a1, a1[3]) + 2);
  return v3 < *(__swift_project_boxed_opaque_existential_0(v2, v2[3]) + 2);
}

uint64_t sub_22D80322C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_22D803240()
{
  result = qword_27DA039C8;
  if (!qword_27DA039C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA039C8);
  }

  return result;
}

uint64_t sub_22D803294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7F4E6C(a1, v4, v5, v6);
}

uint64_t sub_22D803348(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7FEEE0(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_22D803468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D8034C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D7F4AD0(a1, v4, v5, v6);
}

uint64_t objectdestroy_274Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_22D81AC68();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D8036B4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D7FEBF0(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_22D8037D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D80383C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D8038C4(uint64_t a1, unsigned __int8 a2)
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D8039D8(uint64_t a1, char a2)
{
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D826B58[a2]);
  return sub_22D81BC18();
}

void (*sub_22D803A28(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D803AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22D80BDE8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22D807780(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22D80CD58();
        v14 = v16;
      }

      result = sub_22D80BA94(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_22D803BB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02970, &qword_22D821D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02968, &qword_22D821D08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_22D764440(a1, &qword_27DA02970, &qword_22D821D10);
    sub_22D79D204(a2, v7);
    v12 = sub_22D81A918();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22D764440(v7, &qword_27DA02970, &qword_22D821D10);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D80C618(v11, a2, isUniquelyReferenced_nonNull_native, &qword_27DA02968, &qword_22D821D08, &qword_27DA03A38, &qword_22D826B40);
    v15 = sub_22D81A918();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_22D803E0C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02910, &unk_22D821C98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028D0, &qword_22D821C48);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_22D764440(a1, &qword_27DA02910, &unk_22D821C98);
    sub_22D79D240(a2, v7);
    v12 = sub_22D81A918();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22D764440(v7, &qword_27DA02910, &unk_22D821C98);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D80C618(v11, a2, isUniquelyReferenced_nonNull_native, &qword_27DA028D0, &qword_22D821C48, &qword_27DA03A28, &unk_22D826B20);
    v15 = sub_22D81A918();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_22D804060(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02908, &qword_22D821C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02900, &qword_22D821C88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_22D764440(a1, &qword_27DA02908, &qword_22D821C90);
    sub_22D79D27C(a2, v7);
    v12 = sub_22D81A918();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22D764440(v7, &qword_27DA02908, &qword_22D821C90);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D80C618(v11, a2, isUniquelyReferenced_nonNull_native, &qword_27DA02900, &qword_22D821C88, &qword_27DA03A10, &unk_22D826AF0);
    v15 = sub_22D81A918();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_22D8042B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22D764440(a1, &qword_27DA02000, &qword_22D81F160);
    v13 = sub_22D807A48(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22D80D34C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_22D80B8A8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22D80C4B0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_22D804504(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028C0, &unk_22D821C30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA028B0, &unk_22D821C18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_22D764440(a1, &qword_27DA028C0, &unk_22D821C30);
    sub_22D79D2B8(a2, v7);
    v12 = sub_22D81A918();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_22D764440(v7, &qword_27DA028C0, &unk_22D821C30);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_22D80C618(v11, a2, isUniquelyReferenced_nonNull_native, &qword_27DA028B0, &unk_22D821C18, &qword_27DA039E8, &unk_22D826AA0);
    v15 = sub_22D81A918();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_22D804758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22D80C83C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22D807780(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22D80DBDC(&qword_27DA039E0, &unk_22D826A90);
        v14 = v16;
      }

      result = sub_22D80BA94(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_22D804860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_22D80C9D8(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_22D7644A0(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_22D80773C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_22D80DD38();
        v12 = v14;
      }

      sub_22D7644A0(*(v12 + 48) + 40 * v10);

      sub_22D80BC44(v10, v12);
      result = sub_22D7644A0(a2);
      *v3 = v12;
    }

    else
    {

      return sub_22D7644A0(a2);
    }
  }

  return result;
}

uint64_t ObservableStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t ObservableStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

void sub_22D8049AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {
    sub_22D81A398();
    v8 = sub_22D80773C(a3);
    if (v9)
    {
      v36 = a3;
      v37 = v4;
      v10 = *(*(v7 + 56) + 8 * v8);
      sub_22D81A398();

      v11 = v10[2];
      sub_22D81A398();
      v38 = v11;
      if (v11)
      {
        v12 = 0;
        v13 = v10 + 5;
        while (v12 < v10[2])
        {
          if (*(v13 - 1))
          {
            v14 = *v13;
            ObjectType = swift_getObjectType();
            v16 = *(v14 + 8);
            v17 = a1;
            v18 = *(v16 + 8);
            swift_unknownObjectRetain();
            v19 = v18(ObjectType, v16);
            a1 = v17;
            v20 = v19;
            v22 = v21;
            v23 = swift_getObjectType();
            if (v20 == (*(*(a2 + 8) + 8))(v23) && v22 == v24)
            {

              swift_unknownObjectRelease();
LABEL_22:

              v34 = objc_opt_self();
              v35 = sub_22D81B2B8();
              [v34 logInfo_];

              return;
            }

            v26 = sub_22D81BB08();

            swift_unknownObjectRelease();

            if (v26)
            {
              goto LABEL_22;
            }
          }

          ++v12;
          v13 += 2;
          if (v38 == v12)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_16:

        swift_unknownObjectRetain();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_17:
          v32 = v10[2];
          v31 = v10[3];
          if (v32 >= v31 >> 1)
          {
            v10 = sub_22D7ED8F8((v31 > 1), v32 + 1, 1, v10);
          }

          v10[2] = v32 + 1;
          v33 = &v10[2 * v32];
          v33[4] = a1;
          v33[5] = a2;
          v4 = v37;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v37 + 16);
          *(v37 + 16) = 0x8000000000000000;
          v29 = v10;
          v30 = v36;
          goto LABEL_20;
        }
      }

      v10 = sub_22D7ED8F8(0, v10[2] + 1, 1, v10);
      goto LABEL_17;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03940, &unk_22D826110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22D81DF60;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  v29 = v27;
  v30 = a3;
LABEL_20:
  sub_22D80C9D8(v29, v30, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v40;
  swift_endAccess();
}

uint64_t sub_22D804D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = *(v3 + 16);
  if (!*(v9 + 16))
  {
    return result;
  }

  sub_22D81A398();
  v10 = sub_22D80773C(a3);
  if ((v11 & 1) == 0)
  {
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  sub_22D81A398();

  v20 = v12;
  swift_unknownObjectRetain();
  v13 = sub_22D80E1A0(&v20, a1, a2);
  result = swift_unknownObjectRelease();
  v14 = v20;
  v15 = v20[2];
  if (v13 > v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v15, v13 - v15))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v13 > v14[3] >> 1)
  {
    if (v15 <= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    v14 = sub_22D7ED8F8(isUniquelyReferenced_nonNull_native, v17, 1, v14);
    v20 = v14;
  }

  sub_22D80E410(v13, v15, 0);
  swift_beginAccess();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_22D80C9D8(v14, a3, v18);
  *(v4 + 16) = v19;
  return swift_endAccess();
}

uint64_t ObservableStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DataStore.id.getter()
{
  v0 = sub_22D80E4E0();
  sub_22D81A398();
  return v0;
}

uint64_t sub_22D804F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  sub_22D80E4E8(a3, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = v14[1];
  *(v8 + 40) = v14[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E544;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_15;
  v11 = _Block_copy(aBlock);
  sub_22D81A198();
  swift_unknownObjectRetain();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D8050E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 40);
  sub_22D80E4E8(a3, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = v14[1];
  *(v8 + 40) = v14[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E5DC;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);
  sub_22D81A198();
  swift_unknownObjectRetain();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D805274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_22D81A198();
  a5(a2, a3, a4);
}

uint64_t DataStore.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DataStore.init(identifier:)(a1, a2);
  return v4;
}

uint64_t *DataStore.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22D81B668();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v27 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81B628();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22D81B108();
  MEMORY[0x28223BE20](v10 - 8);
  v3[2] = sub_22D81B138();
  type metadata accessor for ObservableStore();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  v3[7] = v11;
  v3[3] = a1;
  v3[4] = a2;
  v26 = sub_22D7D281C();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_22D81B838();

  v30 = 0xD000000000000025;
  v31 = 0x800000022D82C710;
  v12 = v3[3];
  v13 = v3[4];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v12, v13);

  sub_22D81B0E8();
  v30 = MEMORY[0x277D84F90];
  v24 = sub_22D80EBD8(&unk_280CD2D70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FE0, &unk_22D81F120);
  v25 = sub_22D80EA34(&qword_280CD2D90, &qword_27DA02FE0, &unk_22D81F120);
  sub_22D81B788();
  v22 = *MEMORY[0x277D85260];
  v14 = v28;
  v15 = *(v29 + 104);
  v29 += 104;
  v21 = v15;
  v16 = v27;
  v15(v27);
  v3[5] = sub_22D81B6A8();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_22D81B838();

  v30 = 0xD000000000000029;
  v31 = 0x800000022D82C740;
  v17 = v3[3];
  v18 = v3[4];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v17, v18);

  sub_22D81B0E8();
  v30 = MEMORY[0x277D84F90];
  sub_22D81B788();
  v21(v16, v22, v14);
  v3[6] = sub_22D81B6A8();
  return v3;
}

uint64_t sub_22D805734(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = aBlock - v5;
  v7 = v1[5];
  (*(v4 + 16))(aBlock - v5);
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v3;
  *(v9 + 3) = *(v2 + 88);
  *(v9 + 4) = v1;
  (*(v4 + 32))(&v9[v8], v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E638;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_23;
  v11 = _Block_copy(aBlock);
  sub_22D81A198();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D805970(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_22D81B718();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_22D81B848();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22D81B988();
  v38 = *(v9 + 8);
  v38(v16, AssociatedTypeWitness);
  v17 = *(v4 - 8);
  (*(v17 + 16))(v7, a2, v4);
  (*(v17 + 56))(v7, 0, 1, v4);
  swift_beginAccess();
  sub_22D81B198();
  sub_22D81B1B8();
  swift_endAccess();
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_22D81B838();
  v39 = v42;
  v40 = v43;
  MEMORY[0x2318D1A50](0x20676E6961647075, 0xEE00207972746E65);
  sub_22D81BAF8();
  MEMORY[0x2318D1A50](0x76726573626F202CLL, 0xED0000203A737265);
  v36 = a1;
  v18 = a1[7];
  sub_22D81A198();
  sub_22D81B848();
  sub_22D81B988();
  v19 = AssociatedTypeWitness;
  v38(v14, AssociatedTypeWitness);
  swift_beginAccess();
  v20 = *(v18 + 16);
  sub_22D81A398();

  if (*(v20 + 16) && (v21 = sub_22D80773C(&v42), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    sub_22D81A398();
    sub_22D7644A0(&v42);
  }

  else
  {

    sub_22D7644A0(&v42);
    v23 = 0;
  }

  v24 = objc_opt_self();
  v41 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A00, &unk_22D826AC0);
  sub_22D81B908();

  v25 = sub_22D81B2B8();

  [v24 logInfo_];

  v26 = v36[7];
  sub_22D81A198();
  v27 = v35;
  sub_22D81B848();
  sub_22D81B988();
  v38(v27, v19);
  swift_beginAccess();
  v28 = *(v26 + 16);
  sub_22D81A398();

  if (*(v28 + 16) && (v29 = sub_22D80773C(&v42), (v30 & 1) != 0))
  {
    v31 = *(*(v28 + 56) + 8 * v29);
    sub_22D81A398();

    MEMORY[0x28223BE20](v32);
    *(&v34 - 2) = v36;
    *(&v34 - 1) = a2;
    sub_22D803A28(sub_22D80EA88, (&v34 - 4), v31);
  }

  else
  {
  }

  return sub_22D7644A0(&v42);
}

uint64_t sub_22D805EF8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v33 = a3;
  v5 = *a2;
  v6 = *a2;
  v7 = sub_22D81B0C8();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81B108();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = *(v5 + 80);
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v10);
  v17 = v30 - v16;
  v18 = *a1;
  if (*a1)
  {
    v31 = v7;
    v32 = result;
    v19 = v6;
    v20 = a1[1];
    v21 = a2[6];
    v30[0] = v15;
    v30[1] = v21;
    v22 = *(v12 + 16);
    v23 = v33;
    v33 = v14;
    v22(v17, v23, v11);
    v24 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v11;
    *(v25 + 3) = *(v19 + 88);
    *(v25 + 4) = v18;
    *(v25 + 5) = v20;
    (*(v12 + 32))(&v25[v24], v17, v11);
    aBlock[4] = sub_22D80EB60;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D776B08;
    aBlock[3] = &block_descriptor_50;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v27 = v30[0];
    sub_22D81B0E8();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_22D80EBD8(&qword_280CD29A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
    sub_22D80EA34(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28);
    v28 = v34;
    v29 = v31;
    sub_22D81B788();
    MEMORY[0x2318D1DA0](0, v27, v28, v26);
    _Block_release(v26);
    swift_unknownObjectRelease();
    (*(v35 + 8))(v28, v29);
    (*(v33 + 8))(v27, v32);
  }

  return result;
}

uint64_t sub_22D8062FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  (*(a2 + 16))(v12, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

void *sub_22D8063B4()
{
  v2 = objc_opt_self();
  sub_22D81B838();

  v3 = sub_22D81B7B8();
  MEMORY[0x2318D1A50](v3);

  v4 = sub_22D81B2B8();

  [v2 logInfo_];

  sub_22D81B718();
  return sub_22D81B688();
}

uint64_t sub_22D8064E0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22D81A398();
  sub_22D81B1A8();
}

uint64_t sub_22D806604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_22D81B718();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  swift_beginAccess();
  v12[5] = a1[2];
  sub_22D81B198();
  swift_getWitnessTable();
  sub_22D81B5E8();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v7 + 8))(v9, v6);
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 - 8);
    (*(v11 + 32))(a2, &v9[*(TupleTypeMetadata2 + 48)], v4);
    (*(v11 + 56))(a2, 0, 1, v4);
    return sub_22D7644A0(v9);
  }
}

uint64_t sub_22D806890(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_22D81B838();

  aBlock = 0xD000000000000014;
  v14 = 0x800000022D82C790;
  v5 = sub_22D81B7B8();
  MEMORY[0x2318D1A50](v5);

  v6 = sub_22D81B2B8();

  [v4 logInfo_];

  v7 = *(v1 + 40);
  sub_22D80E4E8(a1, v19);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = v19[1];
  *(v8 + 24) = v19[0];
  *(v8 + 40) = v9;
  *(v8 + 56) = v20;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22D80E6AC;
  *(v10 + 24) = v8;
  v17 = sub_22D7A9650;
  v18 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_22D75BA3C;
  v16 = &block_descriptor_33;
  v11 = _Block_copy(&aBlock);
  sub_22D81A198();
  sub_22D81A198();

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D806AA0(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_22D81B718();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  swift_beginAccess();
  sub_22D81A398();
  sub_22D81B1A8();

  sub_22D80E4E8(a2, v22);
  (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  swift_beginAccess();
  sub_22D81B198();
  sub_22D81B1B8();
  swift_endAccess();
  v12 = a1[7];
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (*(v13 + 16))
  {
    sub_22D81A398();
    v14 = sub_22D80773C(a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      sub_22D81A398();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  sub_22D80E4E8(a2, v22);
  swift_beginAccess();
  sub_22D81A198();
  sub_22D804860(0, v22);
  swift_endAccess();

  v17 = objc_opt_self();
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0x676E697261656C63, 0xEF207972746E6520);
  sub_22D81BAF8();
  MEMORY[0x2318D1A50](0x76726573626F202CLL, 0xED0000203A737265);
  v21[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A00, &unk_22D826AC0);
  sub_22D81B908();
  v18 = sub_22D81B2B8();

  [v17 logInfo_];

  if (v16)
  {
    MEMORY[0x28223BE20](v19);
    v21[-2] = v11;
    v21[-1] = a1;
    sub_22D803A28(sub_22D80EA00, &v21[-4], v16);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22D806E7C(uint64_t *a1, uint64_t a2, char *a3)
{
  v39 = *a3;
  v6 = v39;
  v7 = sub_22D81B0C8();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22D81B108();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a3;
  v10 = *(v6 + 80);
  v11 = sub_22D81B718();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v37 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v35 - v19;
  v21 = a1[1];
  v46 = *a1;
  v36 = v21;
  (*(v12 + 16))(v15, a2, v11);
  v22 = v16;
  v23 = v10;
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v25 = *(v16 + 32);
  v25(v20, v15, v10);
  if (!v46)
  {
    return (*(v22 + 8))(v20, v10);
  }

  v26 = v37;
  v35[1] = *(v38 + 6);
  (*(v22 + 16))(v37, v20, v23);
  v27 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v28 = swift_allocObject();
  v38 = v20;
  v29 = v28;
  v28[2] = v23;
  v30 = v46;
  v28[3] = *(v39 + 88);
  v28[4] = v30;
  v28[5] = v36;
  v25(v28 + v27, v26, v23);
  aBlock[4] = sub_22D80EA1C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = &block_descriptor_44;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  v32 = v40;
  sub_22D81B0E8();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_22D80EBD8(&qword_280CD29A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D80EA34(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28);
  v33 = v42;
  v34 = v45;
  sub_22D81B788();
  MEMORY[0x2318D1DA0](0, v32, v33, v31);
  _Block_release(v31);
  swift_unknownObjectRelease();
  (*(v44 + 8))(v33, v34);
  (*(v41 + 8))(v32, v43);
  (*(v22 + 8))(v38, v23);
}

uint64_t sub_22D8073F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  (*(a2 + 24))(v12, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_22D8074B0()
{
  v0 = objc_opt_self();
  v1 = sub_22D81B2B8();
  [v0 logInfo_];

  swift_beginAccess();
  sub_22D81B188();
  sub_22D81A398();
  swift_getWitnessTable();
  sub_22D81B3C8();
}

uint64_t DataStore.deinit()
{

  return v0;
}

uint64_t DataStore.__deallocating_deinit()
{
  DataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22D807644@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_22D80E4E0();
  a1[1] = v2;

  return sub_22D81A398();
}

unint64_t sub_22D807684(uint64_t a1)
{
  v1 = a1;
  sub_22D81BBC8();
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D807EA0(v1, v2);
}

unint64_t sub_22D80773C(uint64_t a1)
{
  v2 = sub_22D81B7C8();

  return sub_22D808010(a1, v2);
}

unint64_t sub_22D807780(uint64_t a1, uint64_t a2)
{
  sub_22D81BBC8();
  sub_22D81B328();
  v4 = sub_22D81BC18();

  return sub_22D8080D8(a1, a2, v4);
}

unint64_t sub_22D8077F8(uint64_t a1)
{
  v1 = a1;
  sub_22D81BBC8();
  sub_22D77DBD0(v1);
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D808190(v1, v2);
}

unint64_t sub_22D807880(uint64_t a1)
{
  v2 = a1;
  v3 = sub_22D8038C4(*(v1 + 40), a1);

  return sub_22D8087E4(v2, v3);
}

unint64_t sub_22D8078C4(uint64_t a1)
{
  sub_22D81A918();
  v2 = MEMORY[0x277CC95F0];
  sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22D81B1C8();
  return sub_22D808F24(a1, v3, MEMORY[0x277CC95F0], &qword_27DA02730, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_22D807998(char a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D808A48(a1 & 1, v2);
}

unint64_t sub_22D807A48(uint64_t a1)
{
  v1 = a1;
  sub_22D81BBC8();
  MEMORY[0x2318D2310](qword_22D826B58[v1]);
  v2 = sub_22D81BC18();

  return sub_22D808B8C(v1, v2);
}

unint64_t sub_22D807AC0(double *a1)
{
  sub_22D81BBC8();
  v2 = *a1;
  if (*a1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2318D2310](*&v2);
  type metadata accessor for TextClockDescriptor(0);
  sub_22D81AAB8();
  sub_22D80EBD8(&unk_27DA02BB0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_22D81B1D8();
  v3 = sub_22D81BC18();

  return sub_22D808C1C(a1, v3);
}

unint64_t sub_22D807B9C(uint64_t a1)
{
  v1 = a1;
  sub_22D81BBC8();
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D808D8C(v1, v2);
}

unint64_t sub_22D807C7C(uint64_t a1)
{
  sub_22D81ABA8();
  v2 = MEMORY[0x277CB9500];
  sub_22D80EBD8(&qword_280CD28E8, MEMORY[0x277CB9500], MEMORY[0x277CB9510]);
  v3 = sub_22D81B1C8();
  return sub_22D808F24(a1, v3, MEMORY[0x277CB9500], &qword_280CD28E0, v2, MEMORY[0x277CB9518]);
}

unint64_t sub_22D807D50(char a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D8090C4(a1 & 1, v2);
}

unint64_t sub_22D807E04(char a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  v2 = sub_22D81BC18();

  return sub_22D80921C(a1 & 1, v2);
}

unint64_t sub_22D807EA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x70696B736E75;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE400000000000000;
            if (v8 != 1885956979)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1885956979;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x70696B736E75;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_22D81BB08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808010(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22D80E4E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318D1EE0](v9, a1);
      sub_22D7644A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22D8080D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22D81BB08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22D808190(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x64496D72616C61;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x800000022D827FD0;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x800000022D827FF0;
          break;
        case 3:
          v7 = 0xE900000000000065;
          v8 = 0x7461446465726966;
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x800000022D828010;
          break;
        case 5:
          v8 = 0xD000000000000019;
          v7 = 0x800000022D828030;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x800000022D828050;
          break;
        case 7:
          v8 = 0x697463416576696CLL;
          v7 = 0xEE00644979746976;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x800000022D828080;
          break;
        case 9:
          v8 = 0xD000000000000017;
          v7 = 0x800000022D8280A0;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000022D8280C0;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x800000022D8280E0;
          break;
        case 0xC:
          v8 = 0xD000000000000015;
          v7 = 0x800000022D828100;
          break;
        case 0xD:
          v8 = 0x6E656449656E6F74;
          v7 = 0xEE00726569666974;
          break;
        case 0xE:
          v8 = 0x616C50646E756F73;
          v7 = 0xEF65746144646579;
          break;
        case 0xF:
          v8 = 0xD000000000000010;
          v7 = 0x800000022D828140;
          break;
        case 0x10:
          v8 = 0x657373696D736964;
          v7 = 0xED00006574614464;
          break;
        case 0x11:
          v8 = 0x7065656C537369;
          break;
        case 0x12:
          v7 = 0xEA00000000006564;
          v8 = 0x69727265764F7369;
          break;
        case 0x13:
          v7 = 0xE800000000000000;
          v8 = 0x746E656C69537369;
          break;
        case 0x14:
          v8 = 0x616964654D7369;
          break;
        case 0x15:
          v8 = 0x744164656B636F6CLL;
          v7 = 0xEC00000065726946;
          break;
        case 0x16:
          v7 = 0xE800000000000000;
          v8 = 0x736E7265636E6F63;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x64496D72616C61;
      switch(a1)
      {
        case 1:
          v9 = 0x800000022D827FD0;
          if (v8 == 0xD000000000000012)
          {
            goto LABEL_69;
          }

          goto LABEL_70;
        case 2:
          v9 = 0x800000022D827FF0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 3:
          v9 = 0xE900000000000065;
          if (v8 != 0x7461446465726966)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 4:
          v9 = 0x800000022D828010;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 5:
          v9 = 0x800000022D828030;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 6:
          v9 = 0x800000022D828050;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 7:
          v11 = 0x697463416576696CLL;
          v12 = 0x644979746976;
          goto LABEL_57;
        case 8:
          v9 = 0x800000022D828080;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 9:
          v9 = 0x800000022D8280A0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 10:
          v9 = 0x800000022D8280C0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 11:
          v9 = 0x800000022D8280E0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 12:
          v9 = 0x800000022D828100;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 13:
          v11 = 0x6E656449656E6F74;
          v12 = 0x726569666974;
LABEL_57:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 14:
          v9 = 0xEF65746144646579;
          if (v8 != 0x616C50646E756F73)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 15:
          v9 = 0x800000022D828140;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 16:
          v9 = 0xED00006574614464;
          if (v8 != 0x657373696D736964)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 17:
          if (v8 != 0x7065656C537369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 18:
          v9 = 0xEA00000000006564;
          if (v8 != 0x69727265764F7369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 19:
          v9 = 0xE800000000000000;
          if (v8 != 0x746E656C69537369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 20:
          if (v8 != 0x616964654D7369)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 21:
          v9 = 0xEC00000065726946;
          if (v8 != 0x744164656B636F6CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 22:
          v9 = 0xE800000000000000;
          v10 = 0x736E7265636E6F63;
          goto LABEL_68;
        default:
LABEL_68:
          if (v8 != v10)
          {
            goto LABEL_70;
          }

LABEL_69:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_70:
          v13 = sub_22D81BB08();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_22D8087E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7961646E6F6DLL;
          }

          else
          {
            v7 = 0x79616473657574;
          }

          if (v6 == 1)
          {
            v8 = 0xE600000000000000;
          }

          else
          {
            v8 = 0xE700000000000000;
          }
        }

        else
        {
          v7 = 0x7961646E7573;
          v8 = 0xE600000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v8 = 0xE600000000000000;
          v7 = 0x796164697266;
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x7961647275746173;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x616473656E646577;
        }

        else
        {
          v7 = 0x7961647372756874;
        }

        if (v6 == 3)
        {
          v8 = 0xE900000000000079;
        }

        else
        {
          v8 = 0xE800000000000000;
        }
      }

      v9 = 0x7961646E7573;
      v10 = 0x7961647275746173;
      if (v5 == 5)
      {
        v10 = 0x796164697266;
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x7961647372756874;
      if (v5 == 3)
      {
        v12 = 0x616473656E646577;
      }

      v13 = 0xE900000000000079;
      if (v5 != 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v5 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x79616473657574;
      if (v5 == 1)
      {
        v14 = 0x7961646E6F6DLL;
      }

      v15 = 0xE700000000000000;
      if (v5 == 1)
      {
        v15 = 0xE600000000000000;
      }

      if (v5)
      {
        v9 = v14;
        v16 = v15;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      v17 = v5 <= 2 ? v9 : v10;
      v18 = v5 <= 2 ? v16 : v11;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_22D81BB08();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808A48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4B72656874616577;
    }

    else
    {
      v6 = 0x6C616E7265746E69;
    }

    if (a1)
    {
      v7 = 0xEA00000000007469;
    }

    else
    {
      v7 = 0xEA00000000004955;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4B72656874616577 : 0x6C616E7265746E69;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007469 : 0xEA00000000004955;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808B8C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (a1)
      {
        if (a1 == 1)
        {
          if (v7 == 1)
          {
            return result;
          }
        }

        else if (v7 == 2)
        {
          return result;
        }
      }

      else if (!*(*(v2 + 48) + result))
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D808C1C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextClockDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_22D80E940(*(v2 + 48) + v13 * v10, v8);
      if (*v8 == v12)
      {
        v14 = MEMORY[0x2318D11A0](v8 + *(v5 + 20), a1 + *(v5 + 20), *v8);
        sub_22D80E9A4(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_22D80E9A4(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_22D808D8C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = v6 == 2 ? 0x63746177706F7473 : 0x72656D6974;
      v8 = v6 == 2 ? 0xE900000000000068 : 0xE500000000000000;
      v9 = *(*(v21 + 48) + v4) ? 0x6D72616C61 : 0x6B636F6C63;
      v10 = *(*(v21 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0xE500000000000000 : v8;
      v12 = v5 == 2 ? 0x63746177706F7473 : 0x72656D6974;
      v13 = v5 == 2 ? 0xE900000000000068 : 0xE500000000000000;
      v14 = v5 ? 0x6D72616C61 : 0x6B636F6C63;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE500000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = sub_22D81BB08();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D808F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_22D80EBD8(v23, v24, v25);
      v19 = sub_22D81B1F8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_22D8090C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6E696E69616D6572;
    }

    else
    {
      v6 = 0x6E6F697461727564;
    }

    if (a1)
    {
      v7 = 0xED0000656D695467;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6E696E69616D6572 : 0x6E6F697461727564;
      v9 = *(*(v2 + 48) + v4) ? 0xED0000656D695467 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22D80921C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656C67676F74;
    }

    else
    {
      v6 = 1852994932;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656C67676F74 : 1852994932;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_22D81BB08();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_22D809350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F8, &qword_22D826AB8);
  v34 = v4;
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_22D81A398();
        sub_22D81A198();
      }

      sub_22D81BBC8();
      sub_22D81B328();
      result = sub_22D81BC18();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22D80960C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A40, &unk_22D826B48);
  v31 = v4;
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22D809BAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A30, &unk_22D826B30);
  v31 = v4;
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22D809E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v12;
  v13 = sub_22D81A918();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v58 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v52 = v10;
  result = sub_22D81B968();
  v18 = result;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v48 = (v23 + 16);
    v49 = v23;
    v46 = v6;
    v47 = v11 + 16;
    v50 = v16;
    v51 = v11;
    v53 = (v11 + 32);
    v54 = (v23 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v55 = *(v23 + 72);
      v33 = v32 + v55 * v31;
      if (v52)
      {
        (*v54)(v58, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 32))(v56, v34 + v35 * v31, v57);
      }

      else
      {
        (*v48)(v58, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 16))(v56, v36 + v35 * v31, v57);
      }

      sub_22D80EBD8(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22D81B1C8();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v26 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v26 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v26 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v54)((*(v18 + 48) + v55 * v27), v58, v13);
      result = (*v53)(*(v18 + 56) + v35 * v27, v56, v57);
      ++*(v18 + 16);
      v23 = v49;
      v16 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_22D80A31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A18, &unk_22D826B00);
  v30 = v4;
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_22D81A198();
      }

      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v20]);
      result = sub_22D81BC18();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22D80A5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039F0, &qword_22D826AB0);
  v31 = v4;
  result = sub_22D81B968();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v20]);
      result = sub_22D81BC18();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22D80A84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_22D81A8C8();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A20, &unk_22D826B10);
  v39 = v4;
  result = sub_22D81B968();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    v38 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v5 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_22D81BBC8();
      MEMORY[0x2318D2310](qword_22D826B58[v24]);
      result = sub_22D81BC18();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v5 = v37;
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}